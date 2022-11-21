package com.javaee.mybatisbasic.web;

import com.javaee.mybatisbasic.entity.Teacher;
import com.javaee.mybatisbasic.mapper.TeacherMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author JianXin
 * @Date 2022/11/14 16:52
 * @Github https://github.com/JackyST0
 */

@RestController
public class TeacherController {

    @Autowired
    TeacherMapper teacherMapper;
    @GetMapping("teacher/{id}")
    public Teacher getByID(@PathVariable Long id){
        return teacherMapper.getById(id);
    }
}
