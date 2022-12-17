package com.javaee.supportsysv6.utils;


import com.javaee.supportsysv6.biz.enums.TicketTypeEnum;
import com.javaee.supportsysv6.persistence.entity.SysRole;
import lombok.Data;
import org.springframework.stereotype.Component;

import java.util.List;

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

    /**
     * 判断用户列表中是否包含有指定的角色id,用于用户编辑界面的角色checkbox回显
     * @return
     */
    public boolean containRole(Long roleId, List<SysRole> roles){
        return  roles.stream().filter(t->t.getId().equals(roleId)).findFirst().isPresent();
    }
}
