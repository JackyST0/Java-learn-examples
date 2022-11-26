package com.javaee.ticketsysbasic.web.api;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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

    @GetMapping("/test")
    public String toTest() {
        return prefix+"test";
    }

}
