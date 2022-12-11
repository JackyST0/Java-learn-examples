package com.javaee.supportsysv5.persistence.mapper;

import com.javaee.supportsysv5.persistence.entity.SysUser;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.javaee.supportsysv5.web.domain.dto.UserFindDto;
import org.apache.ibatis.annotations.Mapper;

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
