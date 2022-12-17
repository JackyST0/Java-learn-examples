package com.javaee.supportsysv6.web.domain.dto;


import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;
import java.util.List;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/30
 */

@Data
public class UserLoginDto {
    @NotBlank @Length(min = 3) String username;
    @NotBlank @Length(min = 4)
    String password;
}
