package com.example.webexception.web.test;


import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 说明：校验POJO对象
 */
@Controller
@RequestMapping("valid")
public class ValidatorController {

    /**
     * 使用@Valid或者@Validated 开启Java实体类属性校验
     */
    

    /**
     * 使用@Valid或者@Validated,实现json对象校验
     */
     

}

/**
 * 图书类,对字段进行校验
 */
@Data
class Book {
    @NotNull @Length(min = 5, message = "书名长度不能小于5")
    String bookname;

    @DecimalMin(value = "0.0", message = "价格不能小于0")
    Double price;

    @NotEmpty(message = "作者不能为空")
    String author;

    @Email(message = "email格式要符合规范")
    String email;
}


