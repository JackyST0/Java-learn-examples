package com.javaee.supportsysv6.web.controller;


import com.javaee.supportsysv6.biz.enums.TicketStatusEnum;
import com.javaee.supportsysv6.biz.enums.TicketTypeEnum;
import com.javaee.supportsysv6.persistence.dao.TicketDao;
import com.javaee.supportsysv6.persistence.entity.Ticket;
import com.javaee.supportsysv6.persistence.entity.UploadFile;
import com.javaee.supportsysv6.utils.FileUtils;
import com.javaee.supportsysv6.web.domain.bean.ResultBean;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

/**
 * 票据控制器
 */
@Controller
@RequestMapping("/ticket")
public class TicketController {
    private static final String prefix = "ticket/";
    @Autowired
    TicketDao ticketDao;

    @Autowired
    HttpServletRequest request;

    @GetMapping("")
    public String list(Model model) {
        model.addAttribute("ticketList", ticketDao.findAll());
        return prefix + "list";
    }

    /**
     * 查看详情
     */
    @GetMapping("/{id}")
    public String view(@PathVariable Long id, Model model) {
        Ticket ticket = ticketDao.findById(id);
        model.addAttribute("ticket", ticket);
        return prefix + "view";
    }

    /**
     * 跳转到编辑界面
     */
    @GetMapping("/edit/{id}")
    public String toEdit(@PathVariable Long id, Model model) {
        Ticket ticket = ticketDao.findById(id);
        model.addAttribute("ticket", ticket);
        // 传递枚举型数据
        model.addAttribute("ticketType", TicketTypeEnum.toList());
        return prefix + "edit";
    }

    /**
     * 跳转到添加界面
     */
    @GetMapping("/add")
    public String toAdd(Model model) {
        // 传递枚举型数据
        model.addAttribute("ticketType", TicketTypeEnum.toList());
        return prefix + "add";
    }

    /**
     * 新增
     */
    @PostMapping("/add")
    @ResponseBody
    public ResultBean add(@RequestBody TicketAddDto ticketAddDto) {
        System.out.println("" + ticketAddDto);
        Ticket ticket = ticketAddDto.getTicket();
        String operationType = ticketAddDto.getOperationType();

        ticket.setCreatedTime(new Date());
        ticket.setCreator("admin");
        if (ticketAddDto.getOperationType().equals("save")) {
            ticket.setStatus(TicketStatusEnum.EDIT.getCode());
        } else if (ticketAddDto.getOperationType().equals("submit")) {
            ticket.setStatus(TicketStatusEnum.SUBMITED.getCode());
        } else {
            return ResultBean.fail();
        }
        ticketDao.insert(ticket);
        return ResultBean.ok();
    }

    /**
     * 删除
     */
    @GetMapping("/delete/{id}")
    @ResponseBody
    public ResultBean delete(@PathVariable Long id) {
        ticketDao.deleteById(id);
        return ResultBean.ok();
    }

    @PostMapping("/edit")
    @ResponseBody
    public ResultBean update(@RequestBody TicketAddDto ticketAddDto) {
        Ticket ticket = ticketAddDto.getTicket();
        String operationType = ticketAddDto.getOperationType();
        //处理保存和提交操作
        if (ticketAddDto.getOperationType().equals("save")) {
            ticket.setStatus(TicketStatusEnum.EDIT.getCode());
        } else if (ticketAddDto.getOperationType().equals("submit")) {
            ticket.setStatus(TicketStatusEnum.SUBMITED.getCode());
        } else {
            return ResultBean.fail();
        }
        //
        System.out.println(ticket);
        ticketDao.updateByUUID(ticket);
        return ResultBean.ok();
    }

    /**
     * 票据附件上传
     *
     * @param file
     * @param ticketUUID
     * @return
     * @throws IOException
     */
    @PostMapping("/uploadAttachment")
    @ResponseBody
    public ResultBean uploadAttachment(MultipartFile file, @RequestParam(required = false) String ticketUUID)
            throws IOException {
        //如果没有ticketId，表示是第一个附件，此时需要新建一个Ticket对象
        Ticket ticket = null;
        if (ticketUUID == null || ticketUUID.equals("") || ticketUUID.length() == 0) {
            //创建一个新的票据
            ticket = new Ticket();
            ticket.setTicketUuid(UUID.randomUUID().toString());
            ticket.setAttachments(new ArrayList<UploadFile>());
            ticketDao.insert(ticket);
        } else {
            ticket = ticketDao.findByUUID(ticketUUID);
            System.out.println(ticket);
        }
        //上传文件
        String basePath = request.getServletContext().getRealPath("/");
        File savePath = new File(basePath + "/upload");
        //如果文件夹不存在,创建一个新的
        if (!savePath.exists()) {
            savePath.mkdirs();
        }
        String fileUUID = UUID.randomUUID().toString().replaceAll("-", "");
        String saveFileName = fileUUID + "_" + file.getOriginalFilename();
        File saveFile = new File(savePath, saveFileName);
        System.out.println(saveFile.getAbsolutePath());
        //保存文件
        file.transferTo(saveFile);
        UploadFile uploadFile = UploadFile.builder().fileUUID(fileUUID).originalFileName(file.getOriginalFilename())
                .saveFileName(saveFileName).fileType(file.getContentType()).fileSize(file.getSize())
                .fileUrl("/upload/" + saveFileName).build();
        //将uploadFile存入ticket对象
        ticket.getAttachments().add(uploadFile);
        // 返回当前票据的所有附件给前端
        return ResultBean.ok(ticket);
    }

    /**
     * 删除票据的附件
     *
     * @param ticketUUID
     * @param fileName
     * @return
     */
    @PostMapping("/attachment/delete/{ticketUUID}/{fileName}")
    @ResponseBody
    public ResultBean uploadAttachment(@PathVariable String ticketUUID, @PathVariable String fileName) {
        Ticket ticket = ticketDao.findByUUID(ticketUUID);
        String filePath = request.getServletContext().getRealPath("/upload") + "/" + fileName;
        System.out.println(filePath);
        FileUtils.deleteFile(filePath);
        ticket.getAttachments().removeIf(t -> t.getSaveFileName().equals(fileName));
        return ResultBean.ok(ticket);
    }
}

/**
 * 添加票据前端参数
 */
@Data
class TicketAddDto {
    Ticket ticket;
    String operationType;
}
