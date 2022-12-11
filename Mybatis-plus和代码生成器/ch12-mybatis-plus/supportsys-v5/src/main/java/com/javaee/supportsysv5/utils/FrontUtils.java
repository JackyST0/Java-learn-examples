package com.javaee.supportsysv5.utils;


import com.javaee.supportsysv5.biz.enums.TicketTypeEnum;
import lombok.Data;
import org.springframework.stereotype.Component;

/**
 * description:
 *  方便前端调用的方法
 * @author: hevean
 * @date: 2022/04/13
 */
@Component
@Data
public class FrontUtils {
    public String convertTicketType(Integer code){
        if (code == null) {
            return "";
        }
        return TicketTypeEnum.valueOf(code).getValue();
    }
}
