package com.javaee.supportsysv6.biz.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.javaee.supportsysv6.biz.domain.PageResult;
import com.javaee.supportsysv6.persistence.entity.SysUser;
import com.javaee.supportsysv6.web.domain.dto.UserAddDto;
import com.javaee.supportsysv6.web.domain.dto.UserFindDto;
import com.javaee.supportsysv6.web.domain.dto.UserRegisterDto;
import com.javaee.supportsysv6.web.domain.dto.UserUpdateDto;
import com.javaee.supportsysv6.web.domain.vo.SysUserVo;

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

    public boolean register(UserRegisterDto userRegisterDto);

    public SysUserVo getSysUserVo(Long id);

    void updateById(UserUpdateDto userUpdateDto);
}
