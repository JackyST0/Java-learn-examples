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
 * 用户角色关联表
 * </p>
 *
 * @author hevean
 * @since 2022-05-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysUserRole implements Serializable {


    /**
     * 主键id 自增主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 用户id 用户id
     */
    private Long userId;

    /**
     * 角色id 角色id
     */
    private Long roleId;

    /**
     * 创建人
     */
    private String createdTime;

    /**
     * 创建时间
     */
    private Date createdBy;

    /**
     * 更新人
     */
    private String updatedBy;

    /**
     * 更新时间
     */
    private Date updatedTime;


}
