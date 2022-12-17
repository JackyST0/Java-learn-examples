package com.javaee.supportsysv6.persistence.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.javaee.supportsysv6.persistence.entity.SysUser;
import com.javaee.supportsysv6.web.domain.dto.UserFindDto;

import java.util.List;

/**
 * <p>
 * 用户表 Mapper 接口
 * </p>
 *
 * @author hevean
 * @since 2022-05-07
 */
public interface SysUserMapper extends BaseMapper<SysUser> {
    /**
     * 根据条件查询用户列表
     */
    public List<SysUser> pageQuery(UserFindDto userFindDto);
}
