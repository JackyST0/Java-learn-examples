package com.javaee.springbootex1.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {


    /**
     * 跳转到resources/templates目录下的hello.html页面
     * 需要引入thymeleaf依赖
     */
    @GetMapping("/hello-html")
    public String hello(){
        System.out.println("跳转到hello.html页面");
        return "hello";
    }
}
