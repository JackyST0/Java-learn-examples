package com.javaee.ticketsysbasic.web.dto.role;


import lombok.Data;

@Data
public class RoleUpdateDto {
    //此处可以添加数据校验
    Long id;
    String role;
    String roleName;
    String description;
    Integer status;
}
