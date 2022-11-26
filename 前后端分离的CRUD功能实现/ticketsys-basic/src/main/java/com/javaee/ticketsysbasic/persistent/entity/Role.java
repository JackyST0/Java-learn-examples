package com.javaee.ticketsysbasic.persistent.entity;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Role {
    /**
     * 主键id
     */
    private Long id;
    /**
     * 角色标识-英文
     */
    private String role;

    Integer status;

    /**
     * 角色中文名称
     */
    private String roleName;
    /**
     * 角色描述
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
