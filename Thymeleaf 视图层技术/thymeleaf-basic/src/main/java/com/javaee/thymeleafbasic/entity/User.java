package com.javaee.thymeleafbasic.entity;


import lombok.Builder;
import lombok.Data;

import java.util.Date;


@Data
@Builder
public class User {
    /**
     * 用户id
     */
    Long id;
    /**
     * 用户名
     */
    String username;
    String password;
    /**
     * 邮箱
     */
    String email;
    String phoneNumber;
    Boolean enabled;
    Date createdTime;
    /**
     * 头像地址
     */
    String avatarUrl;
}
