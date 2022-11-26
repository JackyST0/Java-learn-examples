package com.javaee.ticketsysbasic.web.dto.user;


import lombok.Data;

@Data
public class UserFindDto {
    //此处可以添加数据校验
    String username;
    String phoneNumber;
    String email;
    Integer status;
    Integer currentPage=1;
    Integer pageSize=10;
}
