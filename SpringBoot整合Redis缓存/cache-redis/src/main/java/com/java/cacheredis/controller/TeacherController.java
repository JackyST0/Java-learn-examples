package com.java.cacheredis.controller;


import com.java.cacheredis.entity.Teacher;
import com.java.cacheredis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

@RestController
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    TeacherService teacherService;

    /**
     * 查看详情
     */
    @GetMapping("/{id}")
    public Teacher view(@PathVariable Long id){
        return teacherService.getById(id);
    }

    @DeleteMapping("/{id}")
    public String delete(@PathVariable Long id){
        teacherService.removeById(id);
        return "success";
    }

    @PutMapping("/{id}")
    public String update(@RequestBody Teacher teacher){
        teacherService.update(teacher);
        return "success";
    }

}

