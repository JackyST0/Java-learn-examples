package com.example.webexception.web.excption;



public class ServiceException extends  RuntimeException {

    /**
     * 异常编码
     */
    private final  Integer code;

    public ServiceException(Integer code, String message) {
        super(message);
        this.code = code;
    }

    public  ServiceException(Integer code, String message, Throwable e){
        super(message, e);
        this.code = code;
    }

    public Integer getCode() {
        return  this.code;
    }
}
