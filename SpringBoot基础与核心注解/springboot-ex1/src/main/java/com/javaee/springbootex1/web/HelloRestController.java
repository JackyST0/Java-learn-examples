package com.javaee.springbootex1.web;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
public class HelloRestController {

    /**
     * 映射Http GET请求
     * 等同于@RequestMapping(value = "/hello",method = RequestMethod.GET)
     */
    @GetMapping("/hello")
    public String hello1(){

        System.out.println(new Date() + "Http GET请求,访问/hello接口");
        return "hello world,Get 请求！";
    }


    /**
     * 映射Http POST请求
     * 等同于@RequestMapping(value = "/hello",method = RequestMethod.POST)
     */
    @PostMapping("/hello")
    public String hello2(){

        System.out.println(new Date() + "Http POST请求,访问/hello接口");
        return "hello world,Post 请求！";
    }


}
