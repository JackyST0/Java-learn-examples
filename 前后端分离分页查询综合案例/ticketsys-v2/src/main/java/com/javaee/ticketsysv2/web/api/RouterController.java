package com.javaee.ticketsysv2.web.api;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/07
 */
@Controller
public class RouterController {

    final String prefix ="views/";
    /**
     * 跳转到指定页面
     */
    @GetMapping("/user")
    public String toUser() {
        return prefix+"user";
    }

    @GetMapping("/role")
    public String toRole() {
        return prefix+"role";
    }

    @GetMapping("/login")
    public String toTest() {
        return prefix+"login";
    }

    @GetMapping("/login1")
    public String toLogin() {
        return prefix+"login1";
    }


    @GetMapping("/logout")
    public String logout(HttpSession session) {
        // 清除session数据
        session.invalidate();
        // 跳转登录页面
        return prefix+"login";
    }

}
