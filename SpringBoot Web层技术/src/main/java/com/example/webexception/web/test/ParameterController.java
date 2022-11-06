package com.example.webexception.web.test;


import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 说明：演示获取web前端的参数方式
 */
@RestController
@RequestMapping("/param")
public class ParameterController {
    /**
     * 1.获取普通参数
     */
    @GetMapping("query1")
    public String queryUser1(@RequestParam Long id, @RequestParam String name, @RequestParam Integer age) {
        return "客户端传递端参数为: id=" + id + ", name=" + name + ", age=" + age;
    }

    /**
     * 2.获取普通参数,允许为空,并且使用默认值
     */
    @GetMapping("query2")
    @ResponseBody
    public String queryUser2(@RequestParam(required = false, defaultValue = "1000") Long id, @RequestParam(required =
            false) String name, @RequestParam(required = false) Integer age) {
        return "客户端传递端参数为: id=" + id + ", name=" + name + ", age=" + age;
    }

    /**
     * 获取路径变量
     */
    @GetMapping("/user/{id}")
    public String getUser(@PathVariable Long id) {
        return "查询用户id为" + id;
    }
}
