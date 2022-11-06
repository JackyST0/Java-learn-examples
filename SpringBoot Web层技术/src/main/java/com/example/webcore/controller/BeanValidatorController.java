package com.example.webcore.controller;


import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.HashMap;
import java.util.Map;

import static javax.swing.UIManager.put;

/**
 * 说明：校验POJO对象
 */
public class BeanValidatorController {

    /**
     * 使用@Valid或者@Validated 开启Java实体类属性校验
     */
    @PostMapping("book1")
    @ResponseBody
    public Book addBook1(@Valid Book book){
        return book;
    }

    /**
     * 使用@Valid或者@Validated,实现json对象校验
     */
    @PostMapping("book2")
    @ResponseBody
    public Book addBook2(@Valid @RequestBody Book book){
        return book;
    }


    /**
     * 获取校验的结果并返回json数据
     */
     @PostMapping("book3")
     @ResponseBody
     public Map addBook3(@Validated Book book, BindingResult bindingResult){
         Map<String,String> result = new HashMap();

        /*如果校验失败，处理错误信息*/
         if (bindingResult.hasErrors()){
             for (FieldError fieldError : bindingResult.getFieldErrors()){
                 result.put(fieldError.getField(),fieldError.getDefaultMessage());

             }
             return result;
         }
         result.put("res","success");
         return result;
      }

}

/**
 * 图书类,对字段进行校验
 */
@Data
class Book {
    @NotNull
    @Length(min = 5, message = "书名长度不能小于5")
    String bookname;

    @DecimalMin(value = "0.0", message = "价格不能小于0")
    Double price;

    @NotEmpty(message = "作者不能为空")
    // @NotEmpty(message = "{book.author.notempty.error}")
    String author;

    @Email(message = "email格式要符合规范")
    String email;

}


