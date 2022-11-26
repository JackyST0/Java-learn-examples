package com.zsc.ticketsys.mapper;

import com.zsc.ticketsys.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@SuppressWarnings("ALL")
@Mapper
public interface UserMapper {
    //根据id获取用户对象,如果不存在返回null
    @Select("SELECT * FROM user WHERE id=#{id}")
    public User get(@Param("id") Long id);

    //添加用户
    @Insert("insert into user(username, password, email, create_time, register_ip, status, role)" +
            " values(#{username},#{password}, #{email}, #{createTime},#{registerIp}, #{status},#{role})")
    @Options(useGeneratedKeys = true, keyProperty = "id")  //返回自增主键，保存在id
    public int insert(User user);

    //校验是否存在该用户,不存在则返回null,存在则返回用户
    @Select("SELECT * FROM user as u WHERE u.username=#{username} and u.password=#{password}")
    public List<User> listByUsernameAndPwd(@Param("username") String username, @Param("password") String password);

    //使用@Param表示传递参数的名称
    //删除用户
    @Delete("DELETE * FROM user where id=#{id}")
    public int delete(@Param("id") Long id);

    //查询所有用户
    @Select("SELECT * FROM user")
    public List<User> list();

    //根据用户名查询用户
    @Select("SELECT * FROM user WHERE username=#{username}")
    public List<User> listByUsername(String username);

    //更新用户
    @Update("update user set password=#{password}, email=#{email}, status=#{status},role=#{role} where id=#{id}")
    public void update(User user);
}
