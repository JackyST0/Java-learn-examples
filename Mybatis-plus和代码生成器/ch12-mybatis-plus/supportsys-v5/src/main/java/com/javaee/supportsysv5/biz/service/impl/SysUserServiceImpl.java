package com.javaee.supportsysv5.biz.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.javaee.supportsysv5.biz.domain.PageResult;
import com.javaee.supportsysv5.biz.service.SysUserRoleService;
import com.javaee.supportsysv5.persistence.entity.SysUser;
import com.javaee.supportsysv5.persistence.entity.SysUserRole;
import com.javaee.supportsysv5.persistence.mapper.SysUserMapper;
import com.javaee.supportsysv5.biz.service.SysUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.javaee.supportsysv5.persistence.mapper.SysUserRoleMapper;
import com.javaee.supportsysv5.web.domain.dto.UserAddDto;
import com.javaee.supportsysv5.web.domain.dto.UserFindDto;
import com.javaee.supportsysv5.web.excption.ServiceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
}
