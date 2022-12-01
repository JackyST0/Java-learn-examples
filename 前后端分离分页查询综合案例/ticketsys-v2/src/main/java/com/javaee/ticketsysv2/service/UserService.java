package com.javaee.ticketsysv2.service;


import com.github.pagehelper.PageInfo;
import com.javaee.ticketsysv2.persistent.entity.User;
import com.javaee.ticketsysv2.web.dto.user.LoginDto;
import com.javaee.ticketsysv2.web.dto.user.UserAddDto;
import com.javaee.ticketsysv2.web.dto.user.UserFindDto;
import com.javaee.ticketsysv2.web.dto.user.UserUpdateDto;

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

    /**分页查询*/
    public PageInfo page(UserFindDto userFindDto);

    public  User findByUsernameAndPwd(LoginDto loginDto);
}
