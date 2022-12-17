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
public enum TicketTypeEnum {

    COMMERCIAL_BILL(1, "商业汇票"), COMMERCIAL_NOTES(2, "商业本票"), BANK_NOTES(3, "银行本票"), TRANSFER_CHECK(4, "转帐支票");

    private Integer code;
    private String value;

    TicketTypeEnum(Integer code, String value) {
        this.code = code;
        this.value = value;
    }

    /**
     * 根据code获取枚举类型
     */
    public static TicketTypeEnum valueOf(Integer code){
        for (TicketTypeEnum item : TicketTypeEnum.values()) {
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
        for (TicketTypeEnum item : TicketTypeEnum.values()) {
            map.put(item.code, item.value);
        }
        return map;
    }

    /**
     * 转换为list类型
     */
    public static List toList() {
        List list = new ArrayList<TicketTypeEnum>();
        for (TicketTypeEnum item : TicketTypeEnum.values()) {
            list.add(item);
        }
        return list;
    }
}

// /**
//  * 测试类
//  */
// class Test {
//     public static void main(String[] args) {
//         System.out.println(TicketTypeEnum.toMap());
//         System.out.println(TicketTypeEnum.valueOf(1).getValue());
//     }
// }
