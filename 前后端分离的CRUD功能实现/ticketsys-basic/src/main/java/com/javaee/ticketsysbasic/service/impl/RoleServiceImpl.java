package com.javaee.ticketsysbasic.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.javaee.ticketsysbasic.persistent.entity.Role;
import com.javaee.ticketsysbasic.persistent.mapper.RoleMapper;
import com.javaee.ticketsysbasic.service.RoleService;
import com.javaee.ticketsysbasic.web.dto.role.RoleAddDto;
import com.javaee.ticketsysbasic.web.dto.role.RoleFindDto;
import com.javaee.ticketsysbasic.web.dto.role.RoleUpdateDto;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    RoleMapper roleMapper;


    @Override
    public List<Role> findAll() {
        return roleMapper.findAll();
    }


    /**
     * 添加
     */
    @Override
    public void add(RoleAddDto roleAddDto) {
        Role role = new Role();
        BeanUtils.copyProperties(roleAddDto, role);
        roleMapper.insert(role);
    }

    /**
     * 删除
     */
    @Override
    public void deleteById(long id) {
        roleMapper.deleteById(id);
    }


    /**
     * 更新
     */
    @Override
    public void update(RoleUpdateDto roleUpdateDto) {
        Role role = new Role();
        BeanUtils.copyProperties(roleUpdateDto, role);
        roleMapper.update(role);
    }

    @Override
    public Role findById(Long id) {
        return roleMapper.findById(id);
    }

    @Override
    public PageInfo page(RoleFindDto roleFindDto) {
        PageHelper.startPage(roleFindDto.getCurrentPage(), roleFindDto.getPageSize());

        return  new PageInfo<Role>(roleMapper.pageQuery(roleFindDto));
    }
}
