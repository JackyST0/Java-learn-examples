package com.example.ajax.controller;

import com.example.ajax.entity.User;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author JianXin
 * @Date 2022/11/8 20:21
 * @Github https://github.com/JackyST0
 */

@RestController
@RequestMapping("/user")
public class UserController {
    /**
     * 查看用户信息
     */
    @GetMapping("/detail")
    public Map getUser(){
        User user=User.builder().id(200100L).username("蒲东亮").password("12345").email("pudongliang@aliyun.com").enable(true).phoneNumber("13549892020").createdTime(new Date()).build();
        Map result=new HashMap<String,Object>();
        result.put("code",200);
        result.put("data",user);
        return result;
    }

    /**
     * 查看用户信息
     */
    @PostMapping("/add_json")
    public Map addJsonUser(@RequestBody User user){
        user.setCreatedTime(new Date());
        user.setEnable(false);
        Map resultBean=new HashMap<String,Object>();
        resultBean.put("code",200);
        resultBean.put("data",user);
        return resultBean;
    }
}
