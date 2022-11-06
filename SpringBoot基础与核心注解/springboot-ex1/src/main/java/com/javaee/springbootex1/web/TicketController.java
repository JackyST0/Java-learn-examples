package com.javaee.springbootex1.web;


import com.javaee.springbootex1.dao.TicketDao;
import com.javaee.springbootex1.entity.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/ticket")
public class TicketController {

    @Autowired
    TicketDao ticketDao;

    @GetMapping("/")
    public Ticket get(){
        return Ticket.builder().id(1000L).company("中山青云云计算公司").creator("teny").money(2000000.0).title("办公材料").type("银行借票").createdTime(new Date()).body("购买电脑耗材一批").build();


    }

    @GetMapping("/list")
    public List<Ticket> list(){
        return ticketDao.findAll();
    }

}
