package com.java.cha09mybatisplus.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.java.cha09mybatisplus.entity.Teacher;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @Author JianXin
 * @Date 2022/11/27 8:23
 * @Github https://github.com/JackyST0
 */

@SpringBootTest
class TeacherServiceTest {

    @Autowired
    TeacherService teacherService;

    @Test
    void save(){
        Teacher teacher=Teacher.builder().name("陈").email("126.com").build();
        teacherService.save(teacher);
        System.out.println(teacher.getId());
    }

    @Test
    void savebatch(){
        List<Teacher> list=new ArrayList<>();
        for (int i=0;i<6;++i){
            Teacher teacher=Teacher.builder().name("周"+i).email("126.com").build();
            list.add(teacher);
        }
        teacherService.saveBatch(list);
    }

    @Test
    void testQueryLambda(){
        List list=teacherService.lambdaQuery().like(Teacher::getEmail,"126.com").like(Teacher::getName,"周").gt(Teacher::getAge,40).list();
        list.forEach(System.out::println);
    }

    @Test
    void testDeleteLambda(){
        LambdaQueryWrapper<Teacher> lambdaQueryWrapper=new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(Teacher::getId,112L);
        Boolean a=teacherService.remove(lambdaQueryWrapper);
        System.out.println(a);
    }

    @Test
    void testUpdateLambda(){
        LambdaUpdateWrapper<Teacher> lambdaQueryWrapper=new LambdaUpdateWrapper<>();
        lambdaQueryWrapper.set(Teacher::getName,"2324");
        lambdaQueryWrapper.eq(Teacher::getId,120L);
        Boolean b=teacherService.update(lambdaQueryWrapper);
        System.out.println(b);
    }

}