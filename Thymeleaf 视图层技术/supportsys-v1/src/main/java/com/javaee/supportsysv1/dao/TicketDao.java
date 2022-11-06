package com.javaee.supportsysv1.dao;


import com.javaee.supportsysv1.entity.Ticket;
import com.javaee.supportsysv1.enums.TicketTypeEnum;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 票据操作类
 */
@Component
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
                Ticket ticket = Ticket.builder().creator("admin").company("中山领航科技公司").money(1000.0 * i)
                        .title("办公器材" + i).body("2020年新购置办公设备、电脑设备" + i)
                        .ticketType(TicketTypeEnum.COMMERCIAL_NOTES.getCode()).status(1).createdTime(new Date())
                        .build();
                this.insert(ticket);
            }
        }
    }

    /**
     * 根据id查找ticket对象 根据id找到第一个符合条件的票据对象，如果不存在则返回null
     */
    public Ticket findById(long id) {
        return ticketList.stream().filter(t -> t.getId() == id).findFirst().orElse(null);
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
                t.setTicketType(ticket.getTicketType());

                t.setCompany(ticket.getCompany());
                t.setTitle(ticket.getTitle());
                t.setMoney(ticket.getMoney());
                t.setBody(ticket.getBody());
                return;
            }
        }
    }
}
