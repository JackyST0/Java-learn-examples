package com.javaee.vuejs.demo.web;


import com.javaee.vuejs.demo.entity.User;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
// @RequestMapping("/user")
public class UserController {

    static List<User> userList = new ArrayList<>();

    //初始化userList
    static  {
        for (int i = 0; i <15; i++){
            Random random = new Random();
            User user  = User.builder().id(200100L+i).username("蒲东亮"+i)
                    .password("12345").email("pudongliang@aliyun.com")
                    .enabled(random.nextBoolean()).phoneNumber("13549892020")
                    .avatarUrl("/pic/avatar"+ (random.nextInt(6)+1)+".png")
                    .createdTime(new Date()).build();
            userList.add(user);
        }
    }

    /**
     * 查看用户信息
     */
    @GetMapping("/userInfo")
    public Map getUser() {
        Random random = new Random();
        User user  = User.builder().id(200100L).username("蒲东亮")
                .password("12345").email("pudongliang@aliyun.com")
                .enabled(true).phoneNumber("13549892020")
                .avatarUrl("/pic/avatar"+ (random.nextInt(6)+1)+".png")
                .createdTime(new Date()).build();
        Map result = new HashMap<String, Object>();
        result.put("code", 200);
        result.put("data", user);
        return result;
    }

    /**
     * 用户列表
     */
    @GetMapping("/users")
    public Map getUserList( ) {
        Map resultBean = new HashMap<String, Object>();
        resultBean.put("code", 200);
        resultBean.put("data", userList);
        return resultBean;
    }

    @GetMapping("/user/{id}")
    public Map getUser(@PathVariable Long id ) {
        User user = userList.stream().filter(t->t.getId().equals(id)).findFirst().orElse(null);
        Map resultBean = new HashMap<String, Object>();
        resultBean.put("code", 200);
        resultBean.put("data", user);
        return resultBean;
    }

    /**
     * 添加用户
     */
    @PostMapping("/add_json")
    public Map addJsonUser(@RequestBody User user) {
        user.setCreatedTime(new Date());
        user.setEnabled(false);
        Map resultBean = new HashMap<String, Object>();
        resultBean.put("code", 200);
        resultBean.put("data", user);
        return resultBean;
    }

}
