package com.javaee.mybatis.relations.mapper;

import com.javaee.mybatis.relations.domain.Teacher;
import com.javaee.mybatis.relations.domain.vo.TeacherVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface TeacherMapper {
    @Select("select * from  teacher")
    public List<Teacher> listAll();


    //根据教师id查询教师信息
    @Select("select * from teacher where id=#{id} ")
    public Teacher getById(Long id);

    //查询教师个人信息以及所上的课程信息
    public Teacher getTeacherDetailsById(Long id);



    @Select("select t.*, c.course_name, c.credit " +
            " from teacher t, course c where t.id=c.teacher_id " +
            " and t.id=#{id}")
    public List<TeacherVo> findCourses(Long id);


    public  Teacher findWithCourseById(Long teacherId);
}
