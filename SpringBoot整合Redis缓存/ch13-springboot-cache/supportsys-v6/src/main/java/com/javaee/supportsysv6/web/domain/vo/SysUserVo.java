package com.javaee.supportsysv6.web.domain.vo;


import com.javaee.supportsysv6.persistence.entity.SysRole;
import com.javaee.supportsysv6.persistence.entity.SysUser;
import lombok.Data;

import java.util.List;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/05/13
 */
@Data
public class SysUserVo  extends SysUser {
    List<SysRole> roles;
}
