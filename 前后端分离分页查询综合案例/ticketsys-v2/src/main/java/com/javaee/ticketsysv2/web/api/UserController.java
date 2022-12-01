package com.javaee.ticketsysv2.web.api;


import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.github.pagehelper.PageInfo;
import com.javaee.ticketsysv2.persistent.entity.User;
import com.javaee.ticketsysv2.service.UserService;
import com.javaee.ticketsysv2.web.bean.ResultVo;
import com.javaee.ticketsysv2.web.dto.user.UserAddDto;
import com.javaee.ticketsysv2.web.dto.user.UserFindDto;
import com.javaee.ticketsysv2.web.dto.user.UserUpdateDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 角色控制器
 */
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    /**
     * 查看详情
     */
    @GetMapping("list")
    public ResultVo list() {
        List<User> userList = userService.findAll();
        return ResultVo.ok(userList);
    }

    /**
     * 查看详情
     */
    @GetMapping("/{id}")
    public ResultVo getById(@PathVariable Long id) {
        User user = userService.findById(id);
        return ResultVo.ok(user);
    }


    /**
     * 新增
     */
    @PostMapping("")
    public ResultVo add(@RequestBody UserAddDto userAddDto) {
        userService.add(userAddDto);
        return ResultVo.ok();
    }

    /**
     * 删除
     */
    @DeleteMapping("/{id}")
    public ResultVo delete(@PathVariable Long id) {
        userService.deleteById(id);
        return ResultVo.ok();
    }

    /**
     * 更新用户
     */
    @PutMapping("")
    public ResultVo update(@RequestBody UserUpdateDto userUpdateDto) {
        System.out.println(userUpdateDto);
        userService.update(userUpdateDto);
        return ResultVo.ok();
    }

    /**
     * 分页查询
     */
    @PostMapping("page")
    @ResponseBody
    public ResultVo pageQuery(@RequestBody UserFindDto userFindDto) {
        PageInfo pageInfo=userService.page(userFindDto);
        return ResultVo.ok(pageInfo);


    }

    // @PostMapping("/changeStatus")
    // public ResultVo changeStatus(@RequestBody User user) {
    //     System.out.println(user);
    //     User orignalRole = userService.findById(user.getId());
    //     //修改原来的状态
    //     orignalRole.setStatus(user.getStatus());
    //     userService.update(orignalRole);
    //     return ResultVo.ok();
    // }

    /**
     * 导出文件
     */
    @GetMapping("export/{fileType}")
    public void export(HttpServletResponse response, @PathVariable String fileType) throws IOException {
        System.out.println("fileType:" + fileType);
        switch (fileType) {
            case "xls":
                exportExcel(response);
                break;
            default:
                response.getWriter().print("error file type");
        }
        return;
    }

    // 导出excel文件
    private void exportExcel(HttpServletResponse response) throws IOException {
        // 通过工具类创建writer，默认创建xls格式
        ExcelWriter writer = ExcelUtil.getWriter();
        // writer.setSheet(1);
        // writer.setSheet("用户表");
        //自定义标题别名

        writer.clearHeaderAlias();
        writer.addHeaderAlias("username", "姓名");
        writer.addHeaderAlias("email", "邮件地址");
        writer.addHeaderAlias("phoneNumber", "手机号码");
        writer.addHeaderAlias("createdTime", "创建时间");
        writer.addHeaderAlias("updatedTime", "更新时间");
        List<User> rows = userService.findAll();
        // 默认的，未添加alias的属性也会写出，如果想只写出加了别名的字段，可以调用此方法排除之
        writer.setOnlyAlias(true);
        // 一次性写出内容，使用默认样式，强制输出标题
        writer.write(rows, true);

        //自动调整列宽
        writer.autoSizeColumnAll();
        // 单独设置某些列的列宽
        writer.setColumnWidth(3, 40);
        writer.setColumnWidth(4, 40);
        String fileName = DateUtil.format(new Date(), "yyyy-MM-dd") + "用户表.xls";
        //response为HttpServletResponse对象
        response.setContentType("application/octet-stream;charset=utf-8");
        //test.xls是弹出下载对话框的文件名，不能为中文，中文请自行编码
        response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "utf-8"));
        ServletOutputStream out = response.getOutputStream();
        writer.flush(out, true);
        // 关闭writer，释放内存
        writer.close();
        //此处记得关闭输出Servlet流
        IoUtil.close(out);
    }


    /**
     * 导入excel
     */
    @PostMapping("import")
    public ResultVo importExcel(MultipartFile file) throws IOException {
        if (file.isEmpty()) {
            ResultVo.fail("上传文件为空,请重新上传");
        }
        boolean result = false;

        try (ExcelReader reader = ExcelUtil.getReader(file.getInputStream())){
            // 忽略第一行中文标题
            List<List<Object>> list = reader.read(1);

            List<User> userList = new ArrayList<>();
            // list.forEach(r->{
            //     User user = User.builder().id(r.get(0).toString()).build()
            // });
        }catch (IOException e) {

        }
        return ResultVo.ok();
    }
}
