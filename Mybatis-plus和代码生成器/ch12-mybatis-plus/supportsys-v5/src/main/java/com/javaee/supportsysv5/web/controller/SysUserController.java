package com.javaee.supportsysv5.web.controller;


import com.javaee.supportsysv5.biz.domain.PageResult;
import com.javaee.supportsysv5.biz.service.SysRoleService;
import com.javaee.supportsysv5.biz.service.SysUserService;
import com.javaee.supportsysv5.persistence.entity.SysRole;
import com.javaee.supportsysv5.persistence.entity.SysUser;
import com.javaee.supportsysv5.web.domain.bean.ResultBean;
import com.javaee.supportsysv5.web.domain.dto.UserAddDto;
import com.javaee.supportsysv5.web.domain.dto.UserFindDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import java.util.List;

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
         model.addAttribute("sysUserList", sysUserService.list());
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
        SysUser sysUser = sysUserService.getById(id);
        model.addAttribute("sysUser", sysUser);
        return prefix + "view";
    }

    /**
     * 跳转到编辑界面
     */
    @GetMapping("/edit/{id}")
    public String toEdit(@PathVariable Long id, Model model) {
        SysUser sysUser = sysUserService.getById(id);
        model.addAttribute("sysUser", sysUser);

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
    public ResultBean add(@RequestBody UserAddDto userAddDto) {
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
    public ResultBean update(@RequestBody SysUser sysUser) {
        System.out.println(sysUser);
        sysUserService.updateById(sysUser);
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

