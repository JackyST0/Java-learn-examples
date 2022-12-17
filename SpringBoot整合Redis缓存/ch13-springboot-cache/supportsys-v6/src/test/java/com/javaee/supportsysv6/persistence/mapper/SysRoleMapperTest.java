package com.javaee.supportsysv6.persistence.mapper;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;


/**
 * description:
 *
 * @author: hevean
 * @date: 2022/05/13
 */
@SpringBootTest
class SysRoleMapperTest {
    @Autowired SysRoleMapper sysRoleMapper;

    @Test
    void getRolesByUserId() {
        sysRoleMapper.getRolesByUserId(107L).forEach(System.out ::println);
    }
}