package com.javaee.supportsysv5.persistence.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 用户表
 * </p>
 *
 * @author hevean
 * @since 2022-11-27
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysUser implements Serializable {


    /**
     * 用户主键id 自增主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 用户名 用户名
     */
    private String username;

    /**
     * 登录密码
     */
    private String password;

    /**
     * 邮箱地址
     */
    private String email;

    /**
     * 电话号码 电话号码
     */
    private String phoneNumber;

    /**
     * 个人说明 个人信息说明
     */
    private String remark;

    /**
     * 用户头像 存放图像url地址
     */
    private String avatar;

    /**
     * 用户状态 用户状态：0-未激活；1-已激活
     */
    private Integer status;

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
