package com.javaee.supportsysv6.web.domain.dto;


import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * description:用于添加用户
 *
 * @author: hevean
 * @date: 2022/04/30
 */

@Data
public class UserUpdateDto {

    @NotNull
    Long id;

    @NotBlank
    String phoneNumber;
    @NotBlank
    @Email
    String email;
    Integer status;
    String remark;
    List<Long> roles;
}
