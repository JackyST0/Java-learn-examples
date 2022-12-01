package com.javaee.ticketsysv2.web.bean;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.javaee.ticketsysv2.web.excption.GlobalCodeEnum;
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
public class ResultVo<T> implements Serializable {
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
    public static ResultVo<String> ok() {
        return new ResultVo(GlobalCodeEnum.SUCCESS_000, null);
    }

    /**
     * 返回成功的响应数据
     */
    public static <T> ResultVo<T> ok(T data) {
        return new ResultVo(GlobalCodeEnum.SUCCESS_000, data);
    }


    /**
     * 返回失败的消息
     */
    public static ResultVo<String> fail() {
        return new ResultVo(GlobalCodeEnum.INTERNAL_SERVER_ERROR, null);
    }

    /**
     * 返回失败的消息
     */
    public static <T> ResultVo<T> fail(T data) {
        return new ResultVo(GlobalCodeEnum.INTERNAL_SERVER_ERROR, data);
    }

    /**
     * 返回失败的消息
     */
    public static <T> ResultVo<T> fail(GlobalCodeEnum globalCodeEnum, T data) {
        return new ResultVo(globalCodeEnum, data);
    }

    /**
     * 构造函数
     */
    private ResultVo(GlobalCodeEnum globalCodeEnum, T data) {
        this.code = globalCodeEnum.getCode();
        this.message = globalCodeEnum.getDescription();
        this.data = data;
    }

    /**
     * 返回系统指定的异常错误
     */
    public static ResultVo<String> systemException(GlobalCodeEnum globalCodeEnum) {
        return new ResultVo<String>(globalCodeEnum, null);
    }

    /**
     * 返回系统指定的异常错误
     */
    public static <T> ResultVo<T> systemException(GlobalCodeEnum globalCodeEnum, T data) {
        return new ResultVo<>(globalCodeEnum, data);
    }
}
