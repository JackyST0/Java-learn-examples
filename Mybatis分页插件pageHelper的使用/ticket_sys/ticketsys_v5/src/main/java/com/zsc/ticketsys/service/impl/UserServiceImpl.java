package com.zsc.ticketsys.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zsc.ticketsys.domain.PageDomain;
import com.zsc.ticketsys.entity.User;
import com.zsc.ticketsys.mapper.UserMapper;
import com.zsc.ticketsys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@CacheConfig(cacheNames = "user")
@Transactional
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    @Cacheable(key = "#id", unless = "#result==null")
    public User get(long id) {
        return userMapper.get(id);
    }

    @Override
    @CacheEvict(key = "#id")
    public int delete(long id) {
        return userMapper.delete(id);
    }

    @Override
    @Cacheable(key = "#user.id")
    public User insert(User user) {
        userMapper.insert(user);
        return  userMapper.get(user.getId());
    }

    @Override
    public PageInfo<User> page(PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPageNum(),pageDomain.getPageSize(),pageDomain.getOrderStr());

        return new PageInfo<>(userMapper.list());
    }

    @Override
    public PageInfo<User> pageUserList(int pageNum, int size) {
        String orderBy = "username desc";
        PageHelper.startPage(pageNum,size,orderBy);
        List<User> list=userMapper.list();
        PageInfo<User> pageInfo=new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    @CachePut(key = "#newTicket.id")
    public User update(User User) {
        userMapper.update(User);
        return userMapper.get(User.getId());
    }

  

 

}
