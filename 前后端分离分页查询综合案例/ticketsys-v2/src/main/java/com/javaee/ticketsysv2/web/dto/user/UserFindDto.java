package com.javaee.ticketsysv2.web.dto.user;


import lombok.Data;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/30
 */

@Data
public class UserFindDto {
    //此处可以添加数据校验
    String username;
    String phoneNumber;
    String email;
    Integer status;
    Integer currentPage;
    Integer pageSize;

}
