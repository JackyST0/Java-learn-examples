package com.javaee.supportsysv5.web.domain.dto;


import com.javaee.supportsysv5.web.domain.bean.BasePageReq;
import lombok.Data;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/30
 */

@Data
public class UserFindDto extends BasePageReq {
    String username;
    String phoneNumber;
    String email;
    Integer status;
}
