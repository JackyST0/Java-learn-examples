package com.javaee.mybatisbasic.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Teacher {
    /** 主键id*/
    Long id;
    /** 姓名*/
    String name;
    /** 办公地址*/
    String office;
    /*** 年龄*/
    Integer age;
    /*** 手机号码     */
    String cellphone;
    /*** 职称*/
    String professionalTitle;
    /** Email地址*/
    String email;
    Date createdTime;
    Date updatedTime;
}
