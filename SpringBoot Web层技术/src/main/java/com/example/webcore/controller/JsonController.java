package com.example.webcore.controller;


import lombok.Data;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 演示获取JSON数据以及返回JSON数据格式给前端
 */


@RestController
@RequestMapping("/json")
public class JsonController {
        /**
         * 获取单个json参数,前端传递的参数格式为json字符串: {"id": 999999}
         * 如果只有一个参数，需要使用map的方式获取，并写明参数类型
         */
        @PostMapping("/item")
        public String getItem(@RequestBody Map<String, Long> map) {
            Long id = map.get("id");
            System.out.println("接收到的json数据为:"+id);
            return "查询的项目编号为:" + id;
        }


        /**
         * 获取json对象参数
         * {
         *     "itemName": "Mac笔记本2021",
         *     "amount": 4000,
         *     "price": 19600
         * }
         */
        @PostMapping("/item/add")
        public Item addItem(@RequestBody Item item){
            System.out.println("接收到的json数据为:" + item);
            return item;
        }


    /**
     * 获取复杂的json格式参数 例如:
     * {
     *     "brand": "苹果APPLE",
     *     "madeIn": "中国",
     *     "phone": "8004002000",
     *     "items": [
     *         {
     *             "itemName": "Mac笔记本2021",
     *             "amount": 4000,
     *             "price": 19600.0
     *         }
     *     ]
     * }
     */
    @PostMapping("/supplier/add")
    public Supplier addProduct(@RequestBody Supplier supplier) {
        System.out.println("供应商以及货品详细为:" + supplier);
        return supplier;
    }

}


@Data
class Supplier {
    String brand;   // 品牌名称
    String madeIn;   // 产地
    String phone;   // 联系方式
    List<Item> items;  // 产品列表
}

@Data
class Item {
    String itemName;
    Integer amount;
    Double price;
}
