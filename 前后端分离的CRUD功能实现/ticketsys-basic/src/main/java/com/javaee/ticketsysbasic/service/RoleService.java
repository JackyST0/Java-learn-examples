package com.javaee.ticketsysbasic.service;

import com.github.pagehelper.PageInfo;
import com.javaee.ticketsysbasic.persistent.entity.Role;
import com.javaee.ticketsysbasic.web.dto.role.RoleAddDto;
import com.javaee.ticketsysbasic.web.dto.role.RoleFindDto;
import com.javaee.ticketsysbasic.web.dto.role.RoleUpdateDto;

import java.util.List;


public interface RoleService {

    public List<Role> findAll();

    public void add(RoleAddDto roleAddDto);

    public void deleteById(long id);

    public void update(RoleUpdateDto roleUpdateDto);

    public Role findById(Long id);

    public PageInfo page(RoleFindDto roleFindDto);
}
