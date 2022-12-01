package com.javaee.ticketsysv2.web.dto.user;


import lombok.Data;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/30
 */

@Data
public class UserUpdateDto {
    //此处可以添加数据校验
    Long id;
    String username;
    String phoneNumber;
    String email;
    Integer status;
    String remark;
}
