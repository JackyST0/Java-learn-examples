package com.java.cacheredis.controller;


import com.java.cacheredis.entity.Student;
import com.java.cacheredis.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author hevean
 * @since 2022-12-03
 */
@RestController
@RequestMapping("/student")
public class StudentController {
    @Autowired
    StudentService studentService;

    /** 查看详情*/
    @GetMapping("/{id}")
    public Student view(@PathVariable Long id){
        return studentService.getById(id);
    }

    @DeleteMapping("/{id}")
    public String delete(@PathVariable Long id){
        studentService.removeById(id);
        return "success";
    }

    @PutMapping("/{id}")
    public String update(@RequestBody Student student){
        studentService.updateById(student);
        return "success";
    }


    @GetMapping("login")
    public String login(@RequestParam String studentNo,@RequestParam String smsCode){
        // 获取剩余时间
        if (studentService.loginBySmsCode(studentNo,smsCode)==true){
            return "验证码通过，登录成功";
        }else {
            return "验证码已经失效，登录失败";
        }
    }

    @GetMapping("smsCode")
    public String genmsCode(@RequestParam String studentNo){
        // 获取验证码
        String smsCode = studentService.genSmsCode(studentNo);
        if (smsCode==null){
            return "用户名不存在";
        }else {
            return smsCode;
        }
    }
}

