package com.zsc.ticketsys.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zsc.ticketsys.domain.PageDomain;
import com.zsc.ticketsys.entity.Ticket;
import com.zsc.ticketsys.mapper.TicketMapper;
import com.zsc.ticketsys.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@CacheConfig(cacheNames = "ticket")
@Transactional
@Service
public class TicketServiceImpl implements TicketService {

    @Autowired
    TicketMapper ticketMapper;
    @Override
    @Cacheable(key = "#id", unless = "#result==null")
    public Ticket get(long id) {
        return ticketMapper.get(id);
    }

    @Override
    @CacheEvict(key = "#id")
    public int delete(long id) {
        return ticketMapper.delete(id);
    }

    @Override
    @Cacheable(key = "#ticket.id")
    public Ticket insert(Ticket ticket) {
         ticketMapper.insert(ticket);
         return  ticketMapper.get(ticket.getId());
    }

    @Override
    @CachePut(key = "#newTicket.id")
    public Ticket update(Ticket ticket) {
        ticketMapper.update(ticket);
        return ticketMapper.get(ticket.getId());
    }

    @Override
    public PageInfo<Ticket> page(PageDomain pageDomain) {
//        设置分页参数,当前页,每页大小,排序字段
        PageHelper.startPage(pageDomain.getPageNum(),
                pageDomain.getPageNum(), pageDomain.getOrderStr());
        PageInfo<Ticket> pageInfo = new PageInfo<>(ticketMapper.list());
        return pageInfo;
    }

}
