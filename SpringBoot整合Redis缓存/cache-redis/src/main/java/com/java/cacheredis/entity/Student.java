package com.java.cacheredis.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Student implements Serializable {

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String studentNo;

    private String name;

    private String homeAddress;

    private String classNo;

    private Integer sex;

    private Date birthday;

    private Date enrollTime;

    private Integer status;


}
