package com.example.webcore.controller;


import org.hibernate.validator.constraints.Length;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.constraints.Min;

@Controller
@Validated
public class ParamsValidController {

    /**
     * 校验方法参数
     */
    @GetMapping("/valid/param")
    @ResponseBody
    public String validateParam(@Min(value = 10, message = "不能小于10") @RequestParam Integer age, @Length(min = 3, message = "姓名不能小于3个字符") @RequestParam String name) {
        return "输入正确，年龄为:" + age + ";姓名:" + name;
    }
}