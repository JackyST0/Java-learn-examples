package com.zsc.ticketsys.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * 用于页面跳转
 */
@Controller
public class RouterController {

    @GetMapping("/{cat}")
    public String toUser(@PathVariable String cat) {
        return cat+"/list";
    }
}
