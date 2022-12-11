package com.java.cha09mybatisplus.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @Author JianXin
 * @Date 2022/11/26 22:24
 * @Github https://github.com/JackyST0
 */

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Teacher {
    /** 主键id*/
    @TableId(type = IdType.AUTO)
    Long id;
    /** 姓名*/
    String name;
    /** 办公地址*/
    String office;
    /*** 年龄*/
    Integer age;
    /*** 手机号码     */
    String cellphone;
    /** Email地址*/
    String email;
    Date createdTime;
    Date updatedTime;
}
