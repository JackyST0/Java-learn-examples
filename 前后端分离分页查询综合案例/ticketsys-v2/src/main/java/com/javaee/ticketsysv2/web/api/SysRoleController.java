// package com.javaee.ticketsysbasic.web.api;
//
//
// import com.javaee.supportsysv4.persistence.dao.RoleService;
// import com.javaee.supportsysv4.persistence.entity.Role;
// import com.javaee.supportsysv4.web.domain.bean.ResultBean;
// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.stereotype.Controller;
// import org.springframework.ui.Model;
// import org.springframework.web.bind.annotation.*;
//
// /**
//  * 角色控制器
//  */
// @Controller
// @RequestMapping("/role")
// public class RoleController {
//     private static final String prefix = "sys_role/";
//     @Autowired
//     RoleService roleService;
//
//
//     @GetMapping("")
//     public String list(Model model) {
//         model.addAttribute("roleList", roleService.findAll());
//         return prefix + "list";
//     }
//
//     /**
//      * 查看详情
//      */
//     @GetMapping("/{id}")
//     public String view(@PathVariable Long id, Model model) {
//         Role role = roleService.findById(id);
//         model.addAttribute("role", role);
//         return prefix + "view";
//     }
//
//     /**
//      * 跳转到编辑界面
//      */
//     @GetMapping("/edit/{id}")
//     public String toEdit(@PathVariable Long id, Model model) {
//         Role role = roleService.findById(id);
//         model.addAttribute("role", role);
//
//         return prefix + "edit";
//     }
//
//     /**
//      * 跳转到添加界面
//      */
//     @GetMapping("/add")
//     public String toAdd(Model model) {
//         // 传递枚举型数据
//         return prefix + "add";
//     }
//
//     /**
//      * 新增
//      */
//     @PostMapping("/add")
//     @ResponseBody
//     public ResultBean add(@RequestBody Role role) {
//
//         roleService.insert(role);
//         return ResultBean.ok();
//     }
//
//     /**
//      * 删除
//      */
//     @GetMapping("/delete/{id}")
//     @ResponseBody
//     public ResultBean delete(@PathVariable Long id) {
//         roleService.deleteById(id);
//         return ResultBean.ok();
//     }
//
//     @PostMapping("/update")
//     @ResponseBody
//     public ResultBean update(@RequestBody Role role) {
//         System.out.println(role);
//         roleService.update(role);
//         return ResultBean.ok();
//     }
//
//     @PostMapping("/changeStatus")
//     @ResponseBody
//     public ResultBean changeStatus(@RequestBody Role role) {
//         System.out.println(role);
//         Role orignalRole = roleService.findById(role.getId());
//         //修改原来的状态
//         orignalRole.setStatus(role.getStatus());
//         roleService.update(orignalRole);
//         return ResultBean.ok();
//     }
// }
