package com.zsc.ticketsys.service.impl;

import com.zsc.ticketsys.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest
@RunWith(SpringRunner.class)
public class UserServiceImplTest {

    @Autowired
    UserService userService;

    @Test
    public void pageUserList() {
        userService.pageUserList(2,10).getList().stream().forEach(System.out::println);
    }
}
