package com.javaee.supportsysv6.biz.enums;


import lombok.Getter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * description: 票据状态枚举
 *
 * @author: hevean
 * @date: 2022/04/13
 */

@Getter
public enum TicketStatusEnum {

    EDIT(1,"编辑"),SUBMITED(2,"提交"),APPROVED(2,"审核通过"),UNAPPROVED(4,"退回");

    private Integer code;
    private String value;

    TicketStatusEnum(Integer code, String value) {
        this.code = code;
        this.value = value;
    }

    /**
     * 根据code获取枚举类型
     */
    public static TicketStatusEnum valueOf(Integer code){
        for (TicketStatusEnum item : TicketStatusEnum.values()) {
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
        for (TicketStatusEnum item : TicketStatusEnum.values()) {
            map.put(item.code, item.value);
        }
        return map;
    }

    /**
     * 转换为list类型
     */
    public static List toList() {
        List list = new ArrayList<TicketStatusEnum>();
        for (TicketStatusEnum item : TicketStatusEnum.values()) {
            list.add(item);
        }
        return list;
    }
}

