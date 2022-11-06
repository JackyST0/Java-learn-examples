package com.javaee.springbootex1.entity;

import lombok.Builder;
import lombok.Data;

import java.util.Date;

/**
 * 票据对象实体类
 */

@Data
@Builder
public class Ticket {
    /**
     * 票据id
     */
    Long id;
    /**
     * 票据创建者
     */
    String creator;
    /**
     * 公司名称
     */
    String company;

    /**
     * 票据金额
     */
    Double money;
    /**
     * 票据标题
     */
    String title;
    /**
     * 票据主体
     */
    String body;
    /**
     * 票据类型
     */
    String type;

    /**
     * 创建时间
     */
    Date createdTime;
}
