package com.javaee.ticketsysbasic.web.dto.role;


import lombok.Data;

@Data
public class RoleAddDto {
    //此处可以添加数据校验
    String role;
    String roleName;
    String description;
    Integer status;
}
