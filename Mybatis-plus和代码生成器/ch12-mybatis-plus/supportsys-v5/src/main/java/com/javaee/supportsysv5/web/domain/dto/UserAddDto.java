package com.javaee.supportsysv5.web.domain.dto;


import com.javaee.supportsysv5.web.domain.bean.BasePageReq;
import lombok.Data;

import java.util.List;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/30
 */

@Data
public class UserAddDto{
    String username;
    String phoneNumber;
    String email;
    Integer status;
    String remark;
    List<Long> roles;
}
