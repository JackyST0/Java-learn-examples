package com.javaee.ticketsysbasic.service;


import com.github.pagehelper.PageInfo;
import com.javaee.ticketsysbasic.persistent.entity.User;
import com.javaee.ticketsysbasic.web.dto.user.UserAddDto;
import com.javaee.ticketsysbasic.web.dto.user.UserFindDto;
import com.javaee.ticketsysbasic.web.dto.user.UserUpdateDto;

import java.util.List;

public interface UserService {

    public List<User> findAll();

    /**
     * 添加
     */
    public void add(UserAddDto userAddDto);

    /**
     * 删除
     */
    public void deleteById(long id);

    /**
     * 更新
     */
    public void update(UserUpdateDto userUpdateDto);

    public User findById(Long id);

    public PageInfo page(UserFindDto userFindDto);
}
