package com.javaee.supportsysv6.web.controller;


import com.javaee.supportsysv6.biz.service.SysRoleService;
import com.javaee.supportsysv6.persistence.entity.SysRole;
import com.javaee.supportsysv6.web.domain.bean.ResultBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 角色表 前端控制器
 * </p>
 *
 * @author hevean
 * @since 2022-05-07
 */
@Controller
@RequestMapping("/sysRole")
public class SysRoleController {
    private static final String prefix = "sys_role/";
    @Autowired
    SysRoleService sysRoleService;


    @GetMapping("")
    public String list(Model model) {
        model.addAttribute("sysRoleList", sysRoleService.list());
        return prefix + "list";
    }

    /**
     * 查看详情
     */
    @GetMapping("/{id}")
    public String view(@PathVariable Long id, Model model) {
        SysRole sysRole = sysRoleService.getById(id);
        model.addAttribute("sysRole", sysRole);
        return prefix + "view";
    }

    /**
     * 跳转到编辑界面
     */
    @GetMapping("/edit/{id}")
    public String toEdit(@PathVariable Long id, Model model) {
        SysRole sysRole = sysRoleService.getById(id);
        model.addAttribute("sysRole", sysRole);
        return prefix + "edit";
    }

    /**
     * 跳转到添加界面
     */
    @GetMapping("/add")
    public String toAdd(Model model) {
        // 传递枚举型数据
        return prefix + "add";
    }

    /**
     * 新增
     */
    @PostMapping("/add")
    @ResponseBody
    public ResultBean add(@RequestBody SysRole sysRole) {

        sysRoleService.save(sysRole);
        return ResultBean.ok();
    }

    /**
     * 删除
     */
    @GetMapping("/delete/{id}")
    @ResponseBody
    public ResultBean delete(@PathVariable Long id) {
        sysRoleService.removeById(id);;
        return ResultBean.ok();
    }

    @PostMapping("/update")
    @ResponseBody
    public ResultBean update(@RequestBody SysRole sysRole) {
        System.out.println(sysRole);
        sysRoleService.updateById(sysRole);
        return ResultBean.ok();
    }

    @PostMapping("/changeStatus")
    @ResponseBody
    public ResultBean changeStatus(@RequestBody SysRole sysRole) {
        System.out.println(sysRole);
        sysRoleService.lambdaUpdate().eq(SysRole ::getId, sysRole.getId())
                .set(SysRole ::getStatus, sysRole.getStatus())
                .update();
        return ResultBean.ok();
    }
}

