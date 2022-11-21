package com.javaee.mybatisbasic.mapper;

import com.javaee.mybatisbasic.entity.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StudentMapper {
    /**根据id查询对象*/
    public Student getById(long id);
    /**新增*/
   public int add(Student student);

    /**更新*/
    public  int update(Student student);
    /**删除*/
   public int deleteById(long id);

    /**查询所有*/
   public List<Student> listAll();

    /**根据姓名查询*/
   public  List<Student> findLikeName(String name);

    /**条件查找*/
    public List<Student> findByNameAndClassNo(@Param("name") String name,@Param("studentNo") String classNo);

    /**批量插入*/
    public int batchInsert(List<Student> list);

    /**批量删除*/
     public int batchDelete(List<Student> list);
}
