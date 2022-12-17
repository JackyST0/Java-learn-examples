package com.java.cacheredis.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author hevean
 * @since 2022-12-03
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Teacher implements Serializable {


    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String name;

    private String office;

    private Integer age;

    private String email;

    private String cellphone;

    private String title;

    private Date createdTime;

    private Date updatedTime;

    private Integer isDeleted;

    private Integer staffType;


}
