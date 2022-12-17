package com.javaee.supportsysv6.web.domain.bean;


import com.fasterxml.jackson.annotation.JsonInclude;
import com.javaee.supportsysv6.web.excption.GlobalCodeEnum;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * description: 统一封装后台响应接口,推荐使用泛型进行数据封装
 *
 * @author: hevean
 * @date: 2022/04/05
 */

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
public class ResultBean<T> implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 返回的响应编码
     */
    private Integer code;

    /**
     * 返回的响应消息
     */
    private String message;

    /**
     * 返回业务数据对象,如果数据为null，不进行序列化
     */
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private T data;


    /**
     * 返回成功的消息
     */
    public static ResultBean<String> ok() {
        return new ResultBean(GlobalCodeEnum.SUCCESS_000, null);
    }

    /**
     * 返回成功的响应数据
     */
    public static <T> ResultBean<T> ok(T data) {
        return new ResultBean(GlobalCodeEnum.SUCCESS_000, data);
    }


    /**
     * 返回失败的消息
     */
    public static ResultBean<String> fail() {
        return new ResultBean(GlobalCodeEnum.INTERNAL_SERVER_ERROR, null);
    }

    /**
     * 返回失败的消息
     */
    public static <T> ResultBean<T> fail(T data) {
        return new ResultBean(GlobalCodeEnum.INTERNAL_SERVER_ERROR, data);
    }


    /**
     * 构造函数
     */
    private ResultBean(GlobalCodeEnum globalCodeEnum, T data) {
        this.code = globalCodeEnum.getCode();
        this.message = globalCodeEnum.getDescription();
        this.data = data;
    }

    /**
     * 返回系统指定的异常错误
     */
    public static ResultBean<String> systemException(GlobalCodeEnum globalCodeEnum) {
        return new ResultBean<>(globalCodeEnum, null);
    }

    /**
     * 返回系统指定的异常错误
     */
    public static <T> ResultBean<T> systemException(GlobalCodeEnum globalCodeEnum, T data) {
        return new ResultBean<>(globalCodeEnum, data);
    }
}
