package com.zsc.ticketsys.service;

import com.github.pagehelper.PageInfo;
import com.zsc.ticketsys.domain.PageDomain;
import com.zsc.ticketsys.entity.User;

public interface UserService {

    public User get(long id);
    public int delete(long id);
    public User update(User user);
    public User insert(User user);
    public PageInfo<User> page(PageDomain pageDomain);

    public PageInfo<User>  pageUserList(int pageNum, int size);
}
