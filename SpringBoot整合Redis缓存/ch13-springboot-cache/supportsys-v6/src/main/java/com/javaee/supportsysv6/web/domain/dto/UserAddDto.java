package com.javaee.supportsysv6.web.domain.dto;


import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.util.List;

/**
 * description:用于添加用户和更新用户，也可以分为ADD和upadte两个DTO
 *
 * @author: hevean
 * @date: 2022/04/30
 */

@Data
public class UserAddDto {
    @NotBlank
    String username;

    String phoneNumber;
    @NotBlank
    String email;
    Integer status;
    String remark;
    List<Long> roles;
}
