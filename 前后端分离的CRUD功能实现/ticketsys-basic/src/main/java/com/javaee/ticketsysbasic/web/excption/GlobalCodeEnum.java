package com.javaee.ticketsysbasic.web.excption;


import lombok.Getter;

/**
 * description: 全局响应码枚举型
 */
@Getter
public enum  GlobalCodeEnum {

    /**
     * 全局响应码的定义
     */
    SUCCESS_000(200,"success"),
    FAIL_9996(996, "HTTP错误"),
    FAIL_9997(997, "参数校验错误"),
    CODE_FAIL(399, "校验码校验失败"),

    INTERNAL_SERVER_ERROR(500, "服务器内部异常"),
    UNAUTHORIZED(403, "没有相应权限，无法访问系统资源"),
    SERVICE_ERROR(503, "系统异常");

    /**
     * 编码
     */
    private Integer code;

    /**
     * 描述
     */
    private String description;

    GlobalCodeEnum(Integer code, String description) {
        this.code =code;
        this.description = description;
    }

    /**
     * 根据编码获取枚举类型的方法
     */
    public  static GlobalCodeEnum getByCode(Integer code){
        //判断编码是否为空
        if(code == null){
            return null;
        }
        //遍历枚举类
        GlobalCodeEnum[] values =  GlobalCodeEnum.values();
        for (GlobalCodeEnum value : values) {
            if (value.getCode().equals(code)) {
                return value;
            }
        }
        return null;
    }
}
