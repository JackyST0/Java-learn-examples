package com.javaee.supportsysv6.web.domain.dto;


import com.javaee.supportsysv6.web.domain.bean.BasePageReq;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/30
 */

// @NoArgsConstructor
// @AllArgsConstructor
@Data
public class UserFindDto extends BasePageReq {
    String username;
    String phoneNumber;
    String email;
    Integer status;
}
