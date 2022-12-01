package com.javaee.ticketsysv2.service.impl;

import com.javaee.ticketsysv2.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


/**
 * description:
 *
 * @author: hevean
 * @date: 2022/11/18
 */
@SpringBootTest
class UserServiceImplTest {
@Autowired
UserService userService;

    @Test
    void findAll() {
        userService.findAll().forEach(System.out ::println);
    }

    @Test
    void add() {
    }

    @Test
    void deleteById() {
    }

    @Test
    void update() {
    }

    @Test
    void findById() {
    }
}