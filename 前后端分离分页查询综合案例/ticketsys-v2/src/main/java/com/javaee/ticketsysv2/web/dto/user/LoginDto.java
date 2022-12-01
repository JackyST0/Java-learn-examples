package com.javaee.ticketsysv2.web.dto.user;


import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/30
 */

@Data
public class LoginDto {
    @NotBlank @Length(min = 3)
    String username;

    @NotBlank @Length(min = 4)
    String password;
}
