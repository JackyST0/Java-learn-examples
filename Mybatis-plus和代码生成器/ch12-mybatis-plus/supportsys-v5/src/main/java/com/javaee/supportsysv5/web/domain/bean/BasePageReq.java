package com.javaee.supportsysv5.web.domain.bean;


import lombok.Data;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/30
 */
@Data
public class BasePageReq {
    /**
     * 最大分页记录
     */
    public final static int MAX_PAGESIZE = 200;
    /**
     * 默认分页记录
     */
    public final static int DEFAULT_PAGESIZE = 10;



    private int current = 1;

    @Max(value = 200, message = "每页显示不超过200条记录")
    @Min(value = 1, message = "每页显示不能小于1")
    private int pageSize = DEFAULT_PAGESIZE;

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

}
