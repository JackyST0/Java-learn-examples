package com.javaee.vuejs.demo.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/07
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
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
    @JsonFormat(pattern = "yyyy年MM月dd日 hh:mm:ss")
    Date createdTime;
    /**
     * 头像地址
     */
    String avatarUrl;
}
