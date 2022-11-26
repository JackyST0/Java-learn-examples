package com.zsc.ticketsys.service;

import com.github.pagehelper.PageInfo;
import com.zsc.ticketsys.domain.PageDomain;
import com.zsc.ticketsys.entity.Ticket;
import org.springframework.data.domain.PageRequest;

public interface TicketService {

    public Ticket get(long id);
    public int delete(long id);
    public Ticket insert(Ticket ticket);
    public Ticket update(Ticket newTicket);
    public PageInfo<Ticket> page(PageDomain PageDomain);
}
