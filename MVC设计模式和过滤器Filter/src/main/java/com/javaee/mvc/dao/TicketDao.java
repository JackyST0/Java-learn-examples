package com.javaee.mvc.dao;


import com.javaee.mvc.entity.Ticket;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 票据操作类
 */
public class TicketDao {
    //使用静态变量，只保存一份副本
    private static final List<Ticket> ticketList = new ArrayList<>();

    //静态变量， 票据ID号，全局唯一
    private static volatile long TICKET_ID = 1000;

    // 构造函数
    public TicketDao() {
        if (ticketList.size() == 0) {
            //初始化数据
            for (int i = 1; i <= 10; ++i) {
                Ticket ticket = new Ticket("admin", "中山领航科技公司", 1000.0 * i,
                        "办公器材" + i, "2020年新购置办公设备、电脑设备" + i, "银行汇票");
                ticket.setId(TICKET_ID);
                this.insert(ticket);
            }
        }
    }

    /**
     * 根据id查找ticket对象
     * 根据id找到第一个符合条件的票据对象，如果不存在则返回null
     */
    public Ticket findById(long id) {
        for (Ticket ticket : ticketList)
        {
            if (ticket.getId() == id)
                return ticket;
        }
        return null;
    }

    /**
     * 查找所有的ticket对象
     */
    public List findAll() {
        return ticketList;
    }

    /**
     * 添加票据,使用同步加锁
     */
    public synchronized void insert(Ticket ticket) {
        //生成票据id
        TICKET_ID++;
        ticket.setId(TICKET_ID);
        ticket.setCreatedTime(new Date());
        ticket.setUpdatedTime(new Date());
        ticketList.add(ticket);
    }

    /**
     * 删除票据，其中removeIf()方法需要jdk8以上支持
     */
    public void deleteById(long id) {
        /**removeIf使用函数式编程，如果s的id和参数id相同，则删除该元素*/
        ticketList.removeIf(s -> s.getId() == id);
    }

    /**
     * 更新票据数据，其中creator，createTime等字段不能更新
     */
    public void update(Ticket ticket) {
        //更新相应的字段
        for (Ticket t : ticketList) {
            /**注意:判断两个Long类型数值相等，不能直接用等号，可以用equals()或者.longValue()*/
            if (t.getId().equals(ticket.getId())) {
                t.setUpdatedTime(new Date());
                t.setType(ticket.getType());
                t.setCompany(ticket.getCompany());
                t.setTitle(ticket.getTitle());
                t.setMoney(ticket.getMoney());
                t.setBody(ticket.getBody());
                return;
            }
        }
    }
}
