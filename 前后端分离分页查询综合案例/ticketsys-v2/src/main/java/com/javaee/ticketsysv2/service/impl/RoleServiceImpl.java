package com.javaee.ticketsysv2.service.impl;


import com.javaee.ticketsysv2.persistent.entity.Role;
import com.javaee.ticketsysv2.persistent.mapper.RoleMapper;
import com.javaee.ticketsysv2.service.RoleService;
import com.javaee.ticketsysv2.web.dto.role.RoleAddDto;
import com.javaee.ticketsysv2.web.dto.role.RoleUpdateDto;
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
}
