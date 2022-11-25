package com.javaee.mybatis.relations.mapper;

import com.javaee.mybatis.relations.domain.Teacher;
import com.javaee.mybatis.relations.domain.vo.TeacherVo;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class TeacherMapperTest {

    @Autowired
    TeacherMapper teacherMapper;
    @Test
    void getById() {
        System.out.println(teacherMapper.getById(2L));
    }

    @Test
    void getTeacherDetailsById() {
        Teacher teacher = teacherMapper.getTeacherDetailsById(2L);
        System.out.println("教师个人信息:"+ teacher);
        System.out.println("教师课程信息:");
        teacher.getCourseList().forEach(System.out::println);
    }

    @Test
    public void testFindWithCourseById(){
        Teacher teacher =teacherMapper.findWithCourseById(1L);
        System.out.println(teacher);
    }

    @Test  void findCourses(){
        List<TeacherVo> list =teacherMapper.findCourses(2L);
        list.stream().forEach(System.out::println);
    }

}