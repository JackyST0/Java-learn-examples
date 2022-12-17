package com.javaee.supportsysv6.web.controller;


import com.javaee.supportsysv6.biz.domain.PageResult;
import com.javaee.supportsysv6.biz.service.SysRoleService;
import com.javaee.supportsysv6.biz.service.SysUserService;
import com.javaee.supportsysv6.persistence.entity.SysUser;
import com.javaee.supportsysv6.web.domain.bean.ResultBean;
import com.javaee.supportsysv6.web.domain.dto.UserAddDto;
import com.javaee.supportsysv6.web.domain.dto.UserFindDto;
import com.javaee.supportsysv6.web.domain.dto.UserUpdateDto;
import com.javaee.supportsysv6.web.domain.vo.SysUserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author hevean
 * @since 2022-05-07
 */
@Controller
@RequestMapping("/sysUser")
public class SysUserController {
    private static final String prefix = "sys_user/";
    @Autowired
    SysUserService sysUserService;

    @Autowired
    SysRoleService sysRoleService;

    @GetMapping("")
    public String list(Model model) {
        // model.addAttribute("sysUserList", sysUserService.findAll());
        return prefix + "list";
    }

    /**
     * 分页查询
     */
    @PostMapping("page")
    @ResponseBody
    public ResultBean<PageResult> queryUser(@RequestBody UserFindDto userFindDto){
        return ResultBean.ok(sysUserService.pageQuery(userFindDto));
    }

    /**
     * 查看详情
     */
    @GetMapping("/{id}")
    public String view(@PathVariable Long id, Model model) {
        SysUserVo user = sysUserService.getSysUserVo(id);
        model.addAttribute("userVo", user);
        return prefix + "view";
    }

    /**
     * 跳转到编辑界面
     */
    @GetMapping("/edit/{id}")
    public String toEdit(@PathVariable Long id, Model model) {
        SysUserVo user = sysUserService.getSysUserVo(id);
        model.addAttribute("userVo", user);
        model.addAttribute("roleList", sysRoleService.list());
        return prefix + "edit";
    }

    /**
     * 跳转到添加界面
     */
    @GetMapping("/add")
    public String toAdd(Model model) {
        // List<SysRole> roleList =  sysRoleService.list();

        model.addAttribute("roleList", sysRoleService.list());
        return prefix + "add";
    }

    /**
     * 新增
     */
    @PostMapping("/add")
    @ResponseBody
    public ResultBean add(@Valid @RequestBody UserAddDto userAddDto) {
        // 判断数据是否合法
        if (sysUserService.lambdaQuery().eq(SysUser::getUsername, userAddDto.getUsername()).list().size()>0){
            return  ResultBean.fail("用户名已经存在，不允许重复");
        }

        if (sysUserService.lambdaQuery().eq(SysUser::getEmail, userAddDto.getEmail()).list().size()>0){
            return  ResultBean.fail("email已经存在，不允许重复");
        }

        if (sysUserService.lambdaQuery().eq(SysUser::getPhoneNumber, userAddDto.getPhoneNumber()).list().size()>0){
            return  ResultBean.fail("手机号码已经存在，不允许重复");
        }

        sysUserService.save(userAddDto);
        return ResultBean.ok();
    }

    /**
     * 删除
     */
    @GetMapping("/delete/{id}")
    @ResponseBody
    public ResultBean delete(@PathVariable Long id) {
        sysUserService.removeById(id);
        return ResultBean.ok();
    }

    @PostMapping("/update")
    @ResponseBody
    public ResultBean update(@RequestBody UserUpdateDto userUpdateDto) {
        // System.out.println(sysUser);
        sysUserService.updateById(userUpdateDto);
        return ResultBean.ok();
    }

    @PostMapping("/changeStatus")
    @ResponseBody
    public ResultBean changeStatus(@RequestBody SysUser sysUser) {
        sysUserService.lambdaUpdate().eq(SysUser::getId, sysUser.getId())
                .set(SysUser ::getStatus, sysUser.getStatus())
                .update();
        return ResultBean.ok();
    }
}

