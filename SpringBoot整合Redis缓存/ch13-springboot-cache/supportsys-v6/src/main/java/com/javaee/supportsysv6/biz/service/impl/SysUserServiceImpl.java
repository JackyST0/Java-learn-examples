package com.javaee.supportsysv6.biz.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.javaee.supportsysv6.biz.domain.PageResult;
import com.javaee.supportsysv6.biz.domain.WebConstants;
import com.javaee.supportsysv6.biz.enums.UserStatusEnum;
import com.javaee.supportsysv6.biz.service.SysUserRoleService;
import com.javaee.supportsysv6.biz.service.SysUserService;
import com.javaee.supportsysv6.persistence.entity.SysUser;
import com.javaee.supportsysv6.persistence.entity.SysUserRole;
import com.javaee.supportsysv6.persistence.mapper.SysRoleMapper;
import com.javaee.supportsysv6.persistence.mapper.SysUserMapper;
import com.javaee.supportsysv6.web.domain.dto.UserAddDto;
import com.javaee.supportsysv6.web.domain.dto.UserFindDto;
import com.javaee.supportsysv6.web.domain.dto.UserRegisterDto;
import com.javaee.supportsysv6.web.domain.dto.UserUpdateDto;
import com.javaee.supportsysv6.web.domain.vo.SysUserVo;
import com.javaee.supportsysv6.web.excption.ServiceException;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author hevean
 * @since 2022-05-07
 */
@Service
@Transactional
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements SysUserService {

    @Autowired
    SysUserRoleService userRoleService;
    @Autowired
    SysRoleMapper sysRoleMapper;


    /**
     * 分页查询
     */
    @Override
    public PageResult<SysUser> pageQuery(UserFindDto userFindDto) {
        PageHelper.startPage(userFindDto.getCurrent(), userFindDto.getPageSize());
        PageInfo<SysUser> pageInfo = new PageInfo<SysUser>(baseMapper.pageQuery(userFindDto));
        //查询结果统一转换为pageResult格式
        PageResult<SysUser> pageResult = PageResult.fromPageInfo(pageInfo);
        return pageResult;
    }

    /**
     * 新增用户
     */
    @Override
    public void save(UserAddDto userAddDto) {
        SysUser user = new SysUser().setEmail(userAddDto.getEmail()).setUsername(userAddDto.getUsername())
                .setPhoneNumber(userAddDto.getPhoneNumber()).setStatus(userAddDto.getStatus())
                .setRemark(userAddDto.getRemark());
        if (this.save(user) == false) {
            throw new ServiceException("用户创建失败");
        }

        // 添加用户角色
        List<SysUserRole> list = userAddDto.getRoles().stream()
                .map(t -> new SysUserRole().setUserId(user.getId()).setRoleId(t)).collect(Collectors.toList());
        if (userRoleService.saveBatch(list) == false) {
            throw new ServiceException("用户创建失败");
        }
    }


    /**
     * 新增用户
     */
    @Override
    public boolean register(UserRegisterDto userRegisterDto) {
        SysUser user = new SysUser();
        BeanUtils.copyProperties(userRegisterDto, user);
        // 默认为未激活
        user.setStatus(UserStatusEnum.USER_DEACTIVE.getCode());
        if (this.save(user) == false) {
            throw new ServiceException("用户创建失败");
        }
        SysUserRole userRole = new SysUserRole().setUserId(user.getId()).setRoleId(WebConstants.ROLE_COMMON_USER);
        // 添加用户角色
        return userRoleService.save(userRole);
    }

    /**
     * 获取用户的视图对象，包含用户角色
     */
    @Override
    public SysUserVo getSysUserVo(Long id) {
        SysUser sysUser = this.getById(id);
        SysUserVo sysUserVo = new SysUserVo();
        BeanUtils.copyProperties(sysUser, sysUserVo);
        // 根据用户id获取用户角色列表
        sysUserVo.setRoles(sysRoleMapper.getRolesByUserId(id));
        return sysUserVo;
    }

    /**
     * 重写通用Service类的删除接口,删除用户并解除角色关联
     */
    @Override
    public boolean removeById(Serializable userId) {
        super.removeById(userId);
        // 解除角色关联
        List ids = userRoleService.lambdaQuery().eq(SysUserRole::getUserId, userId).list().stream().map(t -> t.getId())
                .collect(Collectors.toList());
        return userRoleService.removeByIds(ids);
        // return userRoleService.lambdaUpdate().eq(SysUserRole::getUserId, userId).remove();
    }

    /**
     * 更新用户
     */
    @Override
    public void updateById(UserUpdateDto userUpdateDto) {
        SysUser user = new SysUser();
        BeanUtils.copyProperties(userUpdateDto, user);
        if (this.updateById(user) == false) {
            throw new ServiceException("用户保存失败");
        }

        // 解除角色关联
        List ids = userRoleService.lambdaQuery().eq(SysUserRole::getUserId, userUpdateDto.getId()).list().stream()
                .map(t -> t.getId()).collect(Collectors.toList());
        userRoleService.removeByIds(ids);
        // 更新用户角色
        List<SysUserRole> list = userUpdateDto.getRoles().stream()
                .map(t -> new SysUserRole().setUserId(userUpdateDto.getId()).setRoleId(t)).collect(Collectors.toList());
        userRoleService.saveBatch(list);
    }
}
