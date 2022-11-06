package com.example.webexception.web;


import com.example.webexception.dao.TicketDao;
import com.example.webexception.entity.Ticket;
import com.example.webexception.web.bean.ResultBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * 封装统一响应结果，并采用Restful API格式进行设计
 * 此处尚未考虑业务层异常处理,例如删除一个不存在的用户，并不会返回异常数据
 */

 @RestController
 @RequestMapping("/ticket")
public class TicketController {

     @Autowired
     TicketDao ticketDao;

     @GetMapping("")
     public ResultBean<List> list(){
         return ResultBean.ok(ticketDao.findAll());
     }

    @PostMapping("")
    public ResultBean add(Ticket ticket){
         ticketDao.insert(ticket);
        return ResultBean.ok();
    }

    @DeleteMapping("")
    public ResultBean delete(@PathVariable Long id){
         ticketDao.deleteById(id);
        return ResultBean.ok();
    }

    @PutMapping("")
    public ResultBean update(Ticket ticket){
         ticketDao.update(ticket);
        return ResultBean.ok();
    }

    @GetMapping("/{id}")
    public ResultBean<Ticket> get(@PathVariable Long id){
         return ResultBean.ok(ticketDao.findById(id));
    }


}
