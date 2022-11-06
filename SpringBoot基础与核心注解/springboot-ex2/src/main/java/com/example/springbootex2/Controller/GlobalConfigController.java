package com.example.springbootex2.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GlobalConfigController {
    /**
     * 注入GlobalConfig对象
     */
    @Autowired
    GlobalConfig globalConfig;

    /**
     * 使用@Value注入数据    
     */
    @Value("${global-config.website_name}")
    String websiteName;

    @Value("${global-config.version}")
    String version;

    @Value("${global-config.domain}")
    String domain;


    @GetMapping("/config1")
    public GlobalConfig getConfig1() {
        return globalConfig;
    }

    @GetMapping("/config2")
    public String getConfig2() {
        return "website:" + websiteName + ";domain:" + domain + ";version:" + version;
    }
}