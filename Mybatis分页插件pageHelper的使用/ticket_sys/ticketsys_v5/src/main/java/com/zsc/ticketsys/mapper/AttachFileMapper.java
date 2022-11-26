package com.zsc.ticketsys.mapper;

import com.zsc.ticketsys.entity.AttachFile;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface AttachFileMapper {

    @Delete("delete from attachfile where id=#{id}")
    public int delete(Long id);

    //根据ticketId查找附件
    @Select("select * from attachfile where ticket_id=#{ticketId}")
    public List<AttachFile> listByTicketId(Long ticketId);

    @Select("SELECT * FROM attachfile WHERE id=#{id}")
    public AttachFile get(Long id);

    @Insert("insert into attachfile(file_uuid, filename, file_size, create_time, file_type, ticket_id, original_filename)"+
            " value(#{file_uuid}, #{filename}, #{fileSize},#{createTime}, #{fileType}, #{ticketId} #{originalFilename})")
    @Options(useGeneratedKeys = true, keyProperty = "id")  //返回自增主键，保存在id
    public int insert(AttachFile attachfile);
}
