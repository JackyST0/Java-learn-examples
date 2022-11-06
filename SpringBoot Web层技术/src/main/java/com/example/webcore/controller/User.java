package com.example.webcore.controller;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class User {
    Long id;
    String username;
    Integer age;
    String email;
    String password;


    // 接收前端时间格式为yyyy-MM-dd
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    // 序列化为JSON数据式 （）
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    Date birthday;
}
