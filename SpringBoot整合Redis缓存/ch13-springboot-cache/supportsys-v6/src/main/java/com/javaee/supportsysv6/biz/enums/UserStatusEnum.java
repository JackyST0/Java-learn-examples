package com.javaee.supportsysv6.biz.enums;


import lombok.Getter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/13
 */

@Getter
public enum UserStatusEnum {

    USER_ACTIVE(1, "激活"), USER_DEACTIVE(2, "未激活");

    private Integer code;
    private String value;

    UserStatusEnum(Integer code, String value) {
        this.code = code;
        this.value = value;
    }

    /**
     * 根据code获取枚举类型
     */
    public static UserStatusEnum valueOf(Integer code){
        for (UserStatusEnum item : UserStatusEnum.values()) {
            if (item.code.equals(code)) {
                return item;
            }
        }
        return null;
    }

    /**
     * 转换为map类型
     */
    public static Map<Integer, String> toMap() {
        Map map = new HashMap<Integer, String>();
        for (UserStatusEnum item : UserStatusEnum.values()) {
            map.put(item.code, item.value);
        }
        return map;
    }

    /**
     * 转换为list类型
     */
    public static List toList() {
        List list = new ArrayList<UserStatusEnum>();
        for (UserStatusEnum item : UserStatusEnum.values()) {
            list.add(item);
        }
        return list;
    }
}
