package com.example.webcore.controller;


import org.springframework.web.bind.annotation.*;

/**
 * 演示映射不同类型的HTTP请求
 */

@RestController
@RequestMapping("/http")
public class MethodMappingController {
    @GetMapping("/method")
    public String doGet(){
        return "处理Http Get请求";
    }

    @PostMapping("/method")
    public String doPost(){
        return "处理Http Post请求";
    }

    @PutMapping("/method")
    public String doPut(){
        return "处理Http Put请求";
    }

    @DeleteMapping("/method")
    public String doDelete(){
        return "处理Http Delete请求";
    }

    /**
     * 映射到多个URL地址
     */
    @GetMapping(value = {"url-1","url-2"})
    public String multiUrl(){
        return "演示映射到多个不同的url地址";
    }


}
