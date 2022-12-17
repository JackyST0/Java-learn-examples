package com.javaee.supportsysv6.persistence.mapper;

import com.alibaba.druid.support.monitor.annotation.MTable;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.javaee.supportsysv6.persistence.entity.SysRole;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 * 角色表 Mapper 接口
 * </p>
 *
 * @author hevean
 * @since 2022-05-07
 */
// @Mapper
public interface SysRoleMapper extends BaseMapper<SysRole> {
    /**根据用户id获取角色列表*/
    public List<SysRole> getRolesByUserId(Long userId);

}
