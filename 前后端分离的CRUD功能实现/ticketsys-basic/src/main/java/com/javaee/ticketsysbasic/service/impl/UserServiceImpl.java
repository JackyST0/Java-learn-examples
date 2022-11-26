package com.javaee.ticketsysbasic.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.javaee.ticketsysbasic.persistent.entity.User;
import com.javaee.ticketsysbasic.persistent.mapper.UserMapper;
import com.javaee.ticketsysbasic.service.UserService;
import com.javaee.ticketsysbasic.web.dto.user.UserAddDto;
import com.javaee.ticketsysbasic.web.dto.user.UserFindDto;
import com.javaee.ticketsysbasic.web.dto.user.UserUpdateDto;
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

    // /**
    //  * 分页查询
    //  */
    // public PageResult<User> pageUser(UserFindDto userQueryDto){
    //       PageHelper.startPage(userQueryDto.getCurrent(), userQueryDto.getPageSize());
    //       PageResult<User> pageResult = PageResult.fromPageInfo(new PageInfo<User>(userMapper.pageQuery
    //       (userQueryDto)));
    //     System.out.println(pageResult);
    //     return pageResult;
    // }
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
        user.setStatus(1);
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
        PageHelper.startPage(userFindDto.getCurrentPage(), userFindDto.getPageSize());

        return  new PageInfo<User>(userMapper.pageQuery(userFindDto));
    }
}
