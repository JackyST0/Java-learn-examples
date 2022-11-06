package com.javaee.supportsysv1.web;


import com.javaee.supportsysv1.dao.TicketDao;
import com.javaee.supportsysv1.entity.Ticket;
import com.javaee.supportsysv1.enums.TicketTypeEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * 票据控制器
 */
@Controller
@RequestMapping("/ticket")
public class TicketController {
    private static final String prefix="ticket/";
    @Autowired
    TicketDao ticketDao;

    @GetMapping("")
    public String list(Model model){
        model.addAttribute("ticketList",ticketDao.findAll());
        return prefix+"list";
    }
    /**
     * 查看详情
     */
    @GetMapping("/{id}")
    public String view(@PathVariable long id,Model model){
        Ticket ticket = ticketDao.findById(id);
        model.addAttribute("ticket",ticket);
        return prefix+"view";
    }
    /**
     * 跳转到添加界面
     */
    @GetMapping("/add")
    public String toAdd(Model model){
    model.addAttribute("ticketType",TicketTypeEnum.toList());
    return  prefix+"add";
    }

    /**
     * 新增
     */
    @PostMapping("/add")
    public String add(Ticket ticket){
         ticket.setCreatedTime(new Date());
         ticket.setCreator("admin");
         ticket.setStatus(0);
         ticketDao.insert(ticket);
         return "redirect:/ticket";
    }

    /**
     * 删除
     */
 @GetMapping("/delete/{id}")
 public String delete(@PathVariable Long id){
     ticketDao.deleteById(id);
     return "redirect:/ticket";
 }

    /**
     * 跳转到编辑界面
     */
    @GetMapping("/edit/{id}")
    public String toEdit(@PathVariable Long id, Model model){
     Ticket ticket = ticketDao.findById(id);
     model.addAttribute("ticket",ticket);
     model.addAttribute("ticketType",TicketTypeEnum.toList());
     return prefix+"edit";
    }

    @PostMapping("/edit")
    public String  update(Ticket ticket ){
        //票据类型暂时保存为字符串类型
        System.out.println(ticket);
        ticketDao.update(ticket);
        return "redirect:/ticket";
    }
}
