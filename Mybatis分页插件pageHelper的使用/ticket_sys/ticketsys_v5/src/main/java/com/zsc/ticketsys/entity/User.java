package com.zsc.ticketsys.entity;

import lombok.Data;

import java.util.Date;
//@Table(name = "user")
//@Builder
@Data
public class User{
    Long id;             //id
    String username;   //用户名
    String password;   //密码
    String email;      //电子邮件
    Date createTime;  //注册时间
    Date updateTime;  //更新时间
    String registerIp;  //注册ip
    Integer status;         //表示用户状态、status=0表示用户停用，status=1表示用户激活
    Integer role;           //用户角色、role=0表示管理员、role=1表示普通用户
}

