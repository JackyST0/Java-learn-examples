package com.javaee.vuejs.demo.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RouterController {
    /**
     * 跳转到指定页面
     */

    @GetMapping("/vue0")
    public String vue0() {
        return "vue_0";
    }

    @GetMapping("/vue1")
    public String vue1() {
        return "vue_1";
    }

    @GetMapping("/vue2")
    public String vue2() {
        return "vue_2";
    }

    @GetMapping("/vue3")
    public String vue3() {
        return "vue_3";
    }
}
