package com.javaee.supportsysv6.persistence.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 角色表
 * </p>
 *
 * @author hevean
 * @since 2022-05-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysRole implements Serializable {


    /**
     * 主键 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 角色标识 角色标识符，形式为: ROLE_角色名称, 例如ROLE_ADMIN
     */
    private String role;

    /**
     * 角色中文名称 角色中文名称
     */
    private String roleName;

    /**
     * 角色状态 0-禁用；1-正常
     */
    private Integer status;

    /**
     * 角色描述 角色的详细描述
     */
    private String description;

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
