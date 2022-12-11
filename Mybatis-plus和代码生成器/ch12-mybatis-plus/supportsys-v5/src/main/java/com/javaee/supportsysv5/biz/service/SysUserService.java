package com.javaee.supportsysv5.biz.service;

import com.javaee.supportsysv5.biz.domain.PageResult;
import com.javaee.supportsysv5.persistence.entity.SysUser;
import com.baomidou.mybatisplus.extension.service.IService;
import com.javaee.supportsysv5.web.domain.dto.UserAddDto;
import com.javaee.supportsysv5.web.domain.dto.UserFindDto;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author hevean
 * @since 2022-05-07
 */
public interface SysUserService extends IService<SysUser> {

    /**
     * 分页查询
     */
    public PageResult<SysUser> pageQuery(UserFindDto userFindDto);

    public void save(UserAddDto userAddDto);
}
