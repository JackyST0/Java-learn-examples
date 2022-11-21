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
public class Student {
    /*** 主键*/
    Long id;
    /*** 学号*/
    String studentNo;
    /*** 姓名*/
    String name;
    /*** 家庭住址*/
    String homeAddress;
    /** 班级*/
    String className;

    /**入学时间*/
    Date enrollTime;
    /** 出生日期*/
    Date birthday;
    /** 性别*/
    Integer sex;
    /** 状态*/
    Integer status;
    Date createdTime;
    Date updatedTime;
}