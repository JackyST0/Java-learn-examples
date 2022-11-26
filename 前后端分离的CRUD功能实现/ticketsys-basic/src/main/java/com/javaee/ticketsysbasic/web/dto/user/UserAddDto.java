package com.javaee.ticketsysbasic.web.dto.user;

import lombok.Data;

@Data
public class UserAddDto {
    //此处可以添加数据校验
    String username;
    String phoneNumber;
    String email;
    String remark;
}
