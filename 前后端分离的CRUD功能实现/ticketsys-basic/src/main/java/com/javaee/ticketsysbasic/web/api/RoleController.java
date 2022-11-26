 package com.javaee.ticketsysbasic.web.api;


 import com.javaee.ticketsysbasic.persistent.entity.Role;
 import com.javaee.ticketsysbasic.service.RoleService;
 import com.javaee.ticketsysbasic.web.bean.ResultVo;
 import com.javaee.ticketsysbasic.web.dto.role.RoleAddDto;
 import com.javaee.ticketsysbasic.web.dto.role.RoleFindDto;
 import com.javaee.ticketsysbasic.web.dto.role.RoleUpdateDto;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.web.bind.annotation.*;

 import java.util.List;

 /**
  * 角色控制器
  */
 @RestController
 @RequestMapping("/role")
 public class RoleController {

     @Autowired
     RoleService roleService;


     /**
      * 查看详情
      */
     @GetMapping("/list")
     public ResultVo list() {
         List<Role> roleList = roleService.findAll();
         return ResultVo.ok(roleList);
     }

     /**
      * 删除
      */
     @DeleteMapping("/{id}")
     public ResultVo delete(@PathVariable Long id) {
         roleService.deleteById(id);
         return ResultVo.ok();
     }

     /**
      * 查看详情
      */
     @GetMapping("/{id}")
     public ResultVo view(@PathVariable Long id) {
         Role role = roleService.findById(id);
         return ResultVo.ok(role);
     }

     /**
      * 新增
      */
     @PostMapping("")
     public ResultVo add(@RequestBody RoleAddDto roleAddDto) {
         roleService.add(roleAddDto);
         return ResultVo.ok();
     }

     /**
      * 更新用户
      */
     @PutMapping("")
     public ResultVo update(@RequestBody RoleUpdateDto roleUpdateDto) {
         System.out.println(roleUpdateDto);
         roleService.update(roleUpdateDto);
         return ResultVo.ok();
     }

     /**
      * 分页查询
      */
     @PostMapping("page")
     @ResponseBody
     public ResultVo pageQuery(@RequestBody RoleFindDto roleFindDto) {
         return ResultVo.ok(roleService.page(roleFindDto));
     }

 }
