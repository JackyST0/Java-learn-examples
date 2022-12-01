package com.javaee.ticketsysv2.persistent.mapper;

import com.javaee.ticketsysv2.persistent.entity.User;
import com.javaee.ticketsysv2.web.dto.user.UserFindDto;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * 用户数据操作接口
 */
@Mapper
public interface UserMapper {

    @Select("select * from sys_user order by  created_time desc")
    public List<User> findAll();

    /**
     * 通过用户名查询
     */
    @Select("select *  from sys_user where username= #{username} limit 1")
    public User findByUsername(String username);

    /**
     * 通过用户ID查询
     */
    @Select("select * from sys_user where id = #{userId}")
    public User findById(Long userId);

    /**
     * 新增
     */
    @Insert("insert into sys_user(username,email,phone_number,status,remark) values(#{username},#{email}," +
            "#{phoneNumber},#{status}, #{remark})")
    @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
    public int insert(User user);

    /**
     * 更新
     */
    @Insert("update sys_user set username=#{username},phone_number=#{phoneNumber},email=#{email}, status=#{status}, " +
            "remark=#{remark} where id=#{id}")
    public int update(User user);


    /**
     * 重置用户密码
     */
    @Update("update sys_user set password = #{password} where user_name = #{username}")
    public int resetUserPwd(@Param("userName") String userName, @Param("password") String password);

    /**
     * 通过用户ID删除用户
     */
    @Delete("DELETE  FROM sys_user where id=#{id}")
    public int deleteById(Long id);


    /**
     * 校验用户名称是否唯一
     */
    @Select("select count(1) from sys_user where username = #{username}")
    public int isExistUsername(String username);

    /**
     * 校验手机号码是否唯一
     */
    @Select("select count(1) from sys_user where phone_number = #{phoneNumber}")
    public int isExistPhoneNumber(String phoneNumber);


    /**分页查询*/
    List<User> pageQuery(UserFindDto userFindDto);

    /**
     * 根据用户名和密码查询用户
     */
    @Select("select * from sys_user where username = #{username} and password=#{password}")
    public User findByUsernameAndPwd(@Param("username") String username, @Param("password") String password);

}

