package com.javaee.ticketsysv2.persistent.entity;


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
    Integer status;
    String remark;


    /**
     * 头像地址
     */
    String avatarUrl;
    /**
     * 创建人
     */
    private String createdBy;
    /**
     * 创建时间
     */
    private Date createdTime;
    /**
     * 更新人
     */
    private String updatedBy;
    /**
     * 更新时间
     */
    private Date updatedTime;
}
