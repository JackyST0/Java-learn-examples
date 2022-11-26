package com.javaee.ticketsysbasic.web.api;


import com.javaee.ticketsysbasic.persistent.entity.User;
import com.javaee.ticketsysbasic.service.UserService;
import com.javaee.ticketsysbasic.web.bean.ResultVo;
import com.javaee.ticketsysbasic.web.dto.user.UserAddDto;
import com.javaee.ticketsysbasic.web.dto.user.UserFindDto;
import com.javaee.ticketsysbasic.web.dto.user.UserUpdateDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 角色控制器
 */
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    /**
     * 查看详情
     */
    @GetMapping("/list")
    public ResultVo list() {
        List<User> userList = userService.findAll();
        return ResultVo.ok(userList);
    }

    /**
     * 查看详情
     */
    @GetMapping("/{id}")
    public ResultVo getById(@PathVariable Long id) {
        User user = userService.findById(id);
        return ResultVo.ok(user);
    }


    /**
     * 新增
     */
    @PostMapping("")
    public ResultVo add(@RequestBody UserAddDto userAddDto) {
        userService.add(userAddDto);
        return ResultVo.ok();
    }

    /**
     * 删除
     */
    @DeleteMapping("/{id}")
    public ResultVo delete(@PathVariable Long id) {
        userService.deleteById(id);
        return ResultVo.ok();
    }

    /**
     * 更新用户
     */
    @PutMapping("")
    public ResultVo update(@RequestBody UserUpdateDto userUpdateDto) {
        System.out.println(userUpdateDto);
        userService.update(userUpdateDto);
        return ResultVo.ok();
    }

    /**
     * 分页查询
     */
    @PostMapping("page")
    @ResponseBody
    public ResultVo pageQuery(@RequestBody UserFindDto userFindDto) {
        return ResultVo.ok(userService.page(userFindDto));
    }

}
