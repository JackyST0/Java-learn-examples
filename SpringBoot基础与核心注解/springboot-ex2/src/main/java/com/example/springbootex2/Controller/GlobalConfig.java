package com.example.springbootex2.Controller;


import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@Data
@ConfigurationProperties(prefix = "global-config")
public class GlobalConfig {
    String websiteName;
    String domain;
    String version;
}
