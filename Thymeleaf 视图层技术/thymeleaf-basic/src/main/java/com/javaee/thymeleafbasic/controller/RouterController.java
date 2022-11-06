package com.javaee.thymeleafbasic.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/r")
public class RouterController {

    /**
     * 跳转到指定页面
     */
    @GetMapping("/p1")
    public String toDemo1(Model model){
        model.addAttribute("msg","Hello,Thymeleaf,使用String返回值跳转到指定页面");
        return "demo1";
    }

    @GetMapping("/p2")
    public ModelAndView toDemo2(){
        ModelAndView mv = new ModelAndView("demo1");
        mv.addObject("msg","Hello,Thymeleaf,返回ModelAndView视图");
        return mv;
    }
}
