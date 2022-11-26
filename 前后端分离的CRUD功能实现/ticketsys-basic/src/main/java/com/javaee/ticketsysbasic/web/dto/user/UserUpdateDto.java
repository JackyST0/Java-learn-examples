package com.javaee.ticketsysbasic.web.dto.user;


import lombok.Data;

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
