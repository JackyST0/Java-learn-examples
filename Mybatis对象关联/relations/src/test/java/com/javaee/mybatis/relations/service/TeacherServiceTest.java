package com.javaee.mybatis.relations.service;

import com.github.pagehelper.PageInfo;
import com.javaee.mybatis.relations.domain.Teacher;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class TeacherServiceTest {

    @Autowired
    TeacherService teacherService;

    @Test
    void page() {
        PageInfo<Teacher> pageInfo= teacherService.page(1,3);
        System.out.println(pageInfo);
    }
}