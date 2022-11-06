package com.javaee.thymeleafbasic.controller;


import com.javaee.thymeleafbasic.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/user")
public class UserController {

    /**
     * 查看用户信息
     */
    @GetMapping("/view")
    public String getUser(Model model){
        User user = User.builder().id(200100L).username("蒲东亮").password("12345").email("pudongliang@aliyun.com").enabled(true).phoneNumber("13549892020").createdTime(new Date()).build();
        List list = getUserList();
        //将模型数据传递到视图层
        model.addAttribute("user",user);
        model.addAttribute("userList",list);
        return "viewUser";
    }

    // 生成用户集合
    private List<User> getUserList() {
        List list = new ArrayList<User>();
        Random rand = new Random();
        for (int i=0;i<15;i++){
            // 随机生成true和false
            Boolean enabled = rand.nextBoolean();
            // 随机生成1-6的数字
            int avtarIndex = rand.nextInt(5)+1;
            User user = User.builder().id(200100L+i).username("李光泽"+i).password("12345").email("ligz"+i+"@aliyun.com").enabled(enabled).phoneNumber("13549892020"+i).createdTime(new Date()).avatarUrl("avatar"+avtarIndex+".png").build();
            list.add(user);
        }
        return list;
    }
}
