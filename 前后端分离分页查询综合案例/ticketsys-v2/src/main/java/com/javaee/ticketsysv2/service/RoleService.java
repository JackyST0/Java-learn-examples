package com.javaee.ticketsysv2.service;

import com.javaee.ticketsysv2.persistent.entity.Role;
import com.javaee.ticketsysv2.web.dto.role.RoleAddDto;
import com.javaee.ticketsysv2.web.dto.role.RoleUpdateDto;

import java.util.List;


public interface RoleService {

    public List<Role> findAll();

    public void add(RoleAddDto roleAddDto);

    public void deleteById(long id);

    public void update(RoleUpdateDto roleUpdateDto);

    public Role findById(Long id);
}
