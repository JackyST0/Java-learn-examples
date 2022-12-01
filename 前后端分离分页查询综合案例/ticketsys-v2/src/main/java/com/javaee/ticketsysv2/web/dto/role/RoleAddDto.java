package com.javaee.ticketsysv2.web.dto.role;


import lombok.Data;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/30
 */

@Data
public class RoleAddDto {
    //此处可以添加数据校验
    String username;
    String phoneNumber;
    String email;
    Integer status;
}
