package com.javaee.ticketsysv2.persistent.mapper;

import com.javaee.ticketsysv2.persistent.entity.Role;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * 用户数据操作接口
 */
@Mapper
public interface RoleMapper {


    @Select("select * from sys_role")
    public List<Role> findAll();


    /**
     * 查询
     */
    @Select("select *  from sys_role where role= #{role}")
    public Role findByRoleName(String role);

    /**
     * 新增
     */
    @Insert("insert into sys_role(role, role_name, description,status) values(#{role}," + "#{roleName}," +
            "#{description},#{status}) ")
    @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
    public int insert(Role role);

    /**
     * 更新
     */
    @Insert("update sys_role set role_name=#{roleName},description=#{description},status=#{status} where id=#{id} ")
    public int update(Role role);

    /**
     * 删除
     */
    @Delete("DELETE  FROM sys_role where id=#{id}")
    public int deleteById(Long id);

    /**
     * 通过ID查询
     */
    @Select("select * from sys_role where id = #{id}")
    public Role findById(Long id);


}

