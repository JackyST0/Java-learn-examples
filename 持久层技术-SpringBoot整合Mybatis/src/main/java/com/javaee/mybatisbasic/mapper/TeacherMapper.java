package com.javaee.mybatisbasic.mapper;

import com.javaee.mybatisbasic.entity.Teacher;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface TeacherMapper {
    /**
     * 根据id查询对象
     */
   @Select("select * from teacher where id = #{id}")
    public Teacher getById(long id);
    /**
     * 新增
     */
    @Insert("insert into teacher(name,office,age,email,cellphone,professional_title) values(#{name},#{office},"
            + "#{age},#{email},#{cellphone},#{professionalTitle})")
    @Options(useGeneratedKeys = true,keyColumn = "id",keyProperty = "id")
    public int add(Teacher teacher);
    /**
     * 查询所有
     */
    @Select("select * from teacher")
    public List<Teacher> listAll();
    /**
     * 根据姓名查询
     */
    @Select("select * from teacher where name=#{name}")
    public List<Teacher> findByName(String name);
    /**
     * 更新
     */
    @Insert("update teacher set name=#{name},office=#{office},age=#{age},email=#{email},"
            + "cellphone=#{cellphone"
            + "},professional_title=#{professionalTitle} where id=#{id}")
    public int update(Teacher teacher);
    /**
     * 删除
     */
    @Delete("delete from teacher where id=#{id}")
    public int deleteById(long id);
}
