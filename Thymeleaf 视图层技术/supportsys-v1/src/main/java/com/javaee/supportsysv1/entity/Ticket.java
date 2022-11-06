package com.javaee.supportsysv1.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
//import org.jetbrains.annotations.NotNull;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 票据对象实体类
 */

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Ticket {
    /**
     * 票据id
     */
    @NotNull
    Long id;
    /**
     * 票据创建者
     */
    String creator;
    /**
     * 公司名称
     */
    @NotEmpty
    String company;

    /**
     * 票据金额
     */
    Double money;
    /**
     * 票据标题
     */
    @NotEmpty
    String title;
    /**
     * 票据主体
     */
    String body;
    /**
     * 票据类型
     */
    Integer ticketType;

    /**
     * 当前状态,0-为提交; 1-待审核; 2-审核通过; 3-审核未通过
     */
    Integer status;

    /**
     * 创建时间
     */
    Date createdTime;
}
