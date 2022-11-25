package com.javaee.mybatis.relations.mapper;

import com.javaee.mybatis.relations.domain.Course;
import com.javaee.mybatis.relations.domain.vo.CourseVo;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class CourseMapperTest {

    @Autowired
    CourseMapper courseMapper;
    @Test
    void getDetailsById() {
        Course course = courseMapper.getDetailsById(1L);
        System.out.println("�γ�����:"+ course.getCourseName());
        System.out.println("��ʦ��Ϣ:"+ course.getTeacher());
    }

    @Test
    void getCourseVoById(){
        CourseVo coursVo = courseMapper.getCourseVoById(1L);
        System.out.println(coursVo);
        System.out.println("�γ�����:"+coursVo.getCourseName()+";��ʦ����:"+coursVo.getTeacherName());
    }

    @Test
    void getCourseWithTeacherById(){
        System.out.println(courseMapper.getCourseWithTeacherById(1L));
    }
}