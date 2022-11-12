package com.example.ajax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @Author JianXin
 * @Date 2022/11/8 20:21
 * @Github https://github.com/JackyST0
 */

@Controller
public class RouterController {

    @GetMapping("/axios")
    public String axiosDemo(){
        return "axios1";
    }

}
