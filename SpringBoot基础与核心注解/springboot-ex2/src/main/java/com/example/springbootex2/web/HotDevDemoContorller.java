package com.example.springbootex2.web;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HotDevDemoContorller {

    @GetMapping("/hotdev")
    public String index(){
        return  "使用热部署可以加快开发速度！";
    }
}
