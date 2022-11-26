package com.zsc.ticketsys.mapper;

import com.zsc.ticketsys.entity.Ticket;
import com.zsc.ticketsys.vo.TicketUserVo;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface TicketMapper {
    @Select("SELECT * FROM ticket where id=#{id}")
    public Ticket get(@Param("id") Long id);

    //添加票据
    public int insert(Ticket ticket);

    @Delete("DELETE * FROM ticket where id=#{id}")
    public int delete(Long id);

    @Select("SELECT * FROM ticket")
    public List<Ticket> list();

    //根据主题进行模糊查询
    @Select("select * from ticket where Subject like concat('%', #{subject}, '%')")
    public List<Ticket> listLikeSubject(String subject);

    //根据主体和类型进行查询
    public List<Ticket> listLikeSubjectAndType(String subject, String type);

    //查询票据及其附件
    public Ticket getTicketDetails(Long id);

    //联表查询
    @Select("select t.*, u.username from ticket as t, user as u where t.user_id = u.id")
    public List<TicketUserVo> listTicketUser();

    @Update("update user set password=#{password}, email=#{email}, status=#{status},role=#{role} where id=#{id}")
    public void update(Ticket ticket);
}
