package com.javaee.supportsysv1.utils;


import com.javaee.supportsysv1.enums.TicketTypeEnum;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Objects;

/**
 * description:
 *  方便前端调用的方法
 * @author: hevean
 * @date: 2022/04/13
 */
@Component
@Data
public class FrontUtils {
    public String convertTicketType(int code){
        return Objects.requireNonNull(TicketTypeEnum.valueOf(code)).getValue();
    }
}
