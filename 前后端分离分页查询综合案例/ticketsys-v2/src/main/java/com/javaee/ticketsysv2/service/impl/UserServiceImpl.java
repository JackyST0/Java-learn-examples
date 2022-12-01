package com.javaee.ticketsysv2.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.javaee.ticketsysv2.config.SysConstants;
import com.javaee.ticketsysv2.enums.UserStatusEnum;
import com.javaee.ticketsysv2.persistent.entity.User;
import com.javaee.ticketsysv2.persistent.mapper.UserMapper;
import com.javaee.ticketsysv2.service.UserService;
import com.javaee.ticketsysv2.web.dto.user.LoginDto;
import com.javaee.ticketsysv2.web.dto.user.UserAddDto;
import com.javaee.ticketsysv2.web.dto.user.UserFindDto;
import com.javaee.ticketsysv2.web.dto.user.UserUpdateDto;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }

    /**
     * 添加
     */
    @Override
    public void add(UserAddDto userAddDto) {
        User user = new User();
        BeanUtils.copyProperties(userAddDto, user);
        // 设置默认状态和密码
        user.setStatus(UserStatusEnum.USER_ACTIVE.getCode());
        user.setPassword(SysConstants.DEFAULT_PASSWORD);
        userMapper.insert(user);
    }

    /**
     * 删除
     */
    @Override
    public void deleteById(long id) {
        userMapper.deleteById(id);
    }



    /**
     * 更新
     */
    @Override
    public void update(UserUpdateDto userUpdateDto) {
        User user = new User();
        BeanUtils.copyProperties(userUpdateDto, user);
        userMapper.update(user);
    }

    @Override
    public User findById(Long id) {
        return userMapper.findById(id);
    }

    @Override
    public PageInfo page(UserFindDto userFindDto) {
        PageHelper.startPage(userFindDto.getCurrentPage(),userFindDto.getPageSize());
        PageHelper.orderBy("created_time desc");
        PageInfo<User> pageInfo=new PageInfo<User>(userMapper.pageQuery(userFindDto));
        System.out.println(pageInfo);
        return pageInfo;
    }

    @Override
    public User findByUsernameAndPwd(LoginDto loginDto) {
        System.out.println(loginDto.getUsername()+";"+loginDto.getPassword());
        return userMapper.findByUsernameAndPwd(loginDto.getUsername(), loginDto.getPassword());
    }
}
