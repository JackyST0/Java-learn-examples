package com.javaee.ticketsysbasic.web.excption;


/**
 * description: 封装服务层的异常基类
 */
public class ServiceException extends  RuntimeException {

    /**
     * 异常编码
     */
    private Integer code;

    public ServiceException(Integer code, String message) {
        super(message);
        this.code = code;
    }

    public  ServiceException(Integer code, String message, Throwable e){
        super(message, e);
        this.code = code;
    }

    public ServiceException(String message) {
        super(message);
        this.code = GlobalCodeEnum.SERVICE_ERROR.getCode();
    }

    public Integer getCode() {
        return  this.code;
    }
}
