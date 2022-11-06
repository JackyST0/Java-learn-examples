package com.example.springbootex2.web;


import com.example.springbootex2.Controller.GlobalConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 * profile多环境配置
 */
@RestController
public class ProfileController {

   @Autowired
   GlobalConfig globalConfig;

   @GetMapping("/config")
   public GlobalConfig get(){
       return globalConfig;
   }
}
