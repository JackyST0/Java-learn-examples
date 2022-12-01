package com.javaee.ticketsysv2.web.bean;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/30
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class BasePageReq {
    /**
     * 最大分页记录
     */
    public final static int MAX_PAGESIZE = 200;
    /**
     * 默认分页记录
     */
    public final static int DEFAULT_PAGESIZE = 10;

    // 当前页
    private int current = 1;

    // 每页大小
    @Max(value = 200, message = "每页显示不超过200条记录")
    @Min(value = 1, message = "每页显示不能小于1")
    private int pageSize = DEFAULT_PAGESIZE;

    // 排序字段名, 驼峰格式
    String column;
    String order;


    /**如果当前页小于1，则取值为1*/
    public int getCurrent() {
        if (this.current <= 0) {
            this.current = 1;
        }
        return this.current;
    }

    public int getPageSize() {
        if (this.pageSize <= 0 || this.pageSize > MAX_PAGESIZE) {
            this.pageSize = DEFAULT_PAGESIZE;
        }
        return this.pageSize;
    }

    // public Page toPage() {
    //     Page page = new Page();
    //     page.setCurrent(this.current);
    //     page.setSize(this.pageSize);
    //
    //     // 如果存在排序字段,则进行构造排序对象
    //     if (StrUtil.isNotEmpty(this.column)) {
    //         OrderItem item = new OrderItem();
    //         item.setColumn(StrUtil.toUnderlineCase(this.column));
    //         item.setAsc("asc".equals(this.order));
    //         List<OrderItem> list = new ArrayList<>();
    //         list.add(item);
    //         page.setOrders(list);
    //     }
    //     return page;
    // }

}
