package com.zsc.ticketsys.controller;

import com.zsc.ticketsys.bean.ResponseBean;
import com.zsc.ticketsys.enums.ResultCode;
import lombok.Data;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestApiTestController {
    //返回成功的消息
    @GetMapping("fail")
    public ResponseBean test() {
        return ResponseBean.fail();
    }

    //返回操作失败的消息
    @GetMapping("success")
    public ResponseBean success() {
        return ResponseBean.success();
    }

    //返回未授权消息
    @GetMapping("unauthorized")
    public ResponseBean authorize() {
        return ResponseBean.setStatus(ResultCode.UNAUTHORIZED);
    }

    @GetMapping("/test/book")
    public ResponseBean book() {
        Book book = new Book("Java EE开发技术", 20.0f);
        return ResponseBean.success(book);
    }
}

@Data
class Book {
    String bookname;
    Float price;

    public Book(String bookname, Float price) {
        this.bookname = bookname;
        this.price = price;
    }
}
