package com.javaee.ticketsysv2.enums;


import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/13
 */
@Getter
@AllArgsConstructor
public enum UserStatusEnum {

    USER_ACTIVE(1, "激活"), USER_DEACTIVE(0, "未激活");
    private Integer code;
    private String value;
}