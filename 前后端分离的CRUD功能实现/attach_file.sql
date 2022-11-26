/*
 Navicat MySQL Data Transfer

 Source Server         : 大蚊仔丶
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : supportsys-v4

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 25/11/2022 13:09:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attach_file
-- ----------------------------
DROP TABLE IF EXISTS `attach_file`;
CREATE TABLE `attach_file`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '文件id 主键',
  `save_filename` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件名 文件名详细说明',
  `uuid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件UUID 返回给前端的文件UUID',
  `origin_filename` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上传时的文件名 原文件名',
  `filesize` bigint NULL DEFAULT NULL COMMENT '文件大小',
  `filetype` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `extend_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件扩展名',
  `ticket_id` bigint NULL DEFAULT NULL COMMENT '票据id 附件对应的票据id',
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `fileurl` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '票据附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attach_file
-- ----------------------------
INSERT INTO `attach_file` VALUES (1, 'c62643f7fb544412afcfe92e43f81c47_查新合同-v1.pdf', 'c62643f7fb544412afcfe92e43f81c47', '查新合同-v1.pdf', 331166, 'application/pdf', NULL, 281, NULL, '2022-05-20 10:02:43', NULL, '2022-05-20 10:02:43', '/upload/c62643f7fb544412afcfe92e43f81c47_查新合同-v1.pdf');
INSERT INTO `attach_file` VALUES (2, '5b91677b0b524795a6bbac312b516845_查新合同-v1.pdf', '5b91677b0b524795a6bbac312b516845', '查新合同-v1.pdf', 331166, 'application/pdf', NULL, 282, NULL, '2022-05-20 10:06:06', NULL, '2022-05-20 10:06:06', '/upload/5b91677b0b524795a6bbac312b516845_查新合同-v1.pdf');
INSERT INTO `attach_file` VALUES (3, 'b45c2d03d2d4419e94247120501cc6d2_安全风险自查表.pdf', 'b45c2d03d2d4419e94247120501cc6d2', '安全风险自查表.pdf', 498031, 'application/pdf', NULL, 283, NULL, '2022-05-20 10:12:20', NULL, '2022-05-20 10:12:20', '/upload/b45c2d03d2d4419e94247120501cc6d2_安全风险自查表.pdf');
INSERT INTO `attach_file` VALUES (4, '8ef61b375b1644dc9bc54e7931571c1c_查新要点.docx', '8ef61b375b1644dc9bc54e7931571c1c', '查新要点.docx', 15511, 'application/octet-stream', NULL, 284, NULL, '2022-05-20 10:16:54', NULL, '2022-05-20 10:16:54', '/upload/8ef61b375b1644dc9bc54e7931571c1c_查新要点.docx');
INSERT INTO `attach_file` VALUES (5, '5d6f332bfbff4c74a4f39e2c69638348_查新要点.docx', '5d6f332bfbff4c74a4f39e2c69638348', '查新要点.docx', 15511, 'application/octet-stream', NULL, 285, NULL, '2022-05-20 10:17:28', NULL, '2022-05-20 10:17:28', '/upload/5d6f332bfbff4c74a4f39e2c69638348_查新要点.docx');
INSERT INTO `attach_file` VALUES (6, 'fd291f67b0fb4407b6c968400f61cd33_查新要点.docx', 'fd291f67b0fb4407b6c968400f61cd33', '查新要点.docx', 15511, 'application/octet-stream', NULL, 286, NULL, '2022-05-20 10:18:42', NULL, '2022-05-20 10:18:42', '/upload/fd291f67b0fb4407b6c968400f61cd33_查新要点.docx');
INSERT INTO `attach_file` VALUES (7, 'fe22f18dce1441459e03c4fc56d2ce7f_查新要点-he.docx', 'fe22f18dce1441459e03c4fc56d2ce7f', '查新要点-he.docx', 16807, 'application/octet-stream', NULL, 287, NULL, '2022-05-20 10:25:57', NULL, '2022-05-20 10:25:57', '/upload/fe22f18dce1441459e03c4fc56d2ce7f_查新要点-he.docx');
INSERT INTO `attach_file` VALUES (8, 'dfcb9c800b0b44fab7cc6fc5fd8cb992_查新要点v1.docx', 'dfcb9c800b0b44fab7cc6fc5fd8cb992', '查新要点v1.docx', 17571, 'application/octet-stream', NULL, 287, NULL, '2022-05-20 10:26:04', NULL, '2022-05-20 10:26:04', '/upload/dfcb9c800b0b44fab7cc6fc5fd8cb992_查新要点v1.docx');
INSERT INTO `attach_file` VALUES (9, '9ac30437412148a0b332c9d68cc7679d_查新要点v1.docx', '9ac30437412148a0b332c9d68cc7679d', '查新要点v1.docx', 17571, 'application/octet-stream', NULL, 288, NULL, '2022-05-20 17:04:37', NULL, '2022-05-20 17:04:37', '/upload/9ac30437412148a0b332c9d68cc7679d_查新要点v1.docx');
INSERT INTO `attach_file` VALUES (10, '848f39e1bd9f494899c3a8e26e5f29fa_1广东省计算机学会科技成果评价准备材料0728.docx', '848f39e1bd9f494899c3a8e26e5f29fa', '1广东省计算机学会科技成果评价准备材料0728.docx', 14203, 'application/octet-stream', NULL, 294, NULL, '2022-06-12 23:35:07', NULL, '2022-06-12 23:35:07', '/upload/848f39e1bd9f494899c3a8e26e5f29fa_1广东省计算机学会科技成果评价准备材料0728.docx');

-- ----------------------------
-- Table structure for audit
-- ----------------------------
DROP TABLE IF EXISTS `audit`;
CREATE TABLE `audit`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '审核记录id 主键id',
  `ticket_id` bigint NULL DEFAULT NULL COMMENT '票据id 对应的票据id',
  `auditor_id` bigint NULL DEFAULT NULL COMMENT '审核员id 审核员id',
  `comment` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核意见',
  `result` tinyint NULL DEFAULT NULL COMMENT '审核结果 4:表示审核未通过；3:表示审核通过',
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '票据审核表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audit
-- ----------------------------
INSERT INTO `audit` VALUES (1, 23, 2, '34', 3, NULL, NULL, NULL, NULL);
INSERT INTO `audit` VALUES (2, 293, NULL, '通过', 3, NULL, NULL, NULL, NULL);
INSERT INTO `audit` VALUES (3, 292, NULL, '通过', 3, NULL, NULL, NULL, NULL);
INSERT INTO `audit` VALUES (4, 291, NULL, '通过', 4, NULL, NULL, NULL, NULL);
INSERT INTO `audit` VALUES (5, 295, NULL, '通过', 3, NULL, NULL, NULL, NULL);
INSERT INTO `audit` VALUES (6, 290, NULL, '通过', 4, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `pId` bigint NULL DEFAULT NULL COMMENT '父节点id',
  `perms_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单编码 权限标识编码',
  `node_type` tinyint NULL DEFAULT NULL COMMENT '节点类型 节点类型，1文件夹，2页面，3按钮',
  `sort` tinyint NULL DEFAULT NULL COMMENT '排序序号',
  `level` tinyint NULL DEFAULT NULL COMMENT '层级 菜单树的层次，以便于查询指定层级的菜单',
  `status` tinyint NULL DEFAULT NULL COMMENT '菜单状态 菜单状态（0正常 1停用）',
  `link_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面对应地址 如果是文件夹或者按钮类型，可以为空',
  `icon` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表 用于存储系统目录、菜单和按钮的权限,用于权限控制' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 'SystemMgr', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (2, '票据管理', 0, 'ticketMgr', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (3, '个人中心', 0, 'userCenter', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (4, '控制台', 0, 'Dashboard', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (5, '系统子菜单0', 1, 'system:admin:0', 2, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (6, '系统子菜单1', 1, 'system:admin:1', 2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (7, '系统子菜单2', 1, 'system:admin:2', 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (8, '票据子菜单0', 2, 'ticket:admin:0', 2, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (9, '票据子菜单1', 2, 'ticket:admin:1', 2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (10, '票据子菜单2', 2, 'test:view', 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_remember_me
-- ----------------------------
DROP TABLE IF EXISTS `sys_remember_me`;
CREATE TABLE `sys_remember_me`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `series` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '随机生成的序列号',
  `token` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户登录的token',
  `last_used` datetime(0) NULL DEFAULT NULL COMMENT '上一次使用时间',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '记住我信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_remember_me
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色标识-英文',
  `role_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色中文名称',
  `description` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 mysql自动生成',
  `updated_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间 mysql自动生成',
  `status` tinyint NULL DEFAULT NULL COMMENT '角色状态 角色状态（0正常 1停用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'ROLE_ADMIN', '管理员', '1', NULL, NULL, '2022-05-07 19:22:25', NULL, 1);
INSERT INTO `sys_role` VALUES (2, 'ROLE_COMMON', '普通用户', '普通用户', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (3, '', '普通用户_1', '', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (4, 'USER_2', '普通用户_2', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (5, 'USER_3', '普通用户_3', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (6, 'USER_4', '普通用户_4', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (7, 'USER_5', '普通用户_5', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (8, 'USER_6', '普通用户_6', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (9, 'USER_7', '普通用户_7', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (10, 'USER_8', '普通用户_8', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (13, 'abc', '周杰伦', '帅', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1, 1);
INSERT INTO `sys_role_menu` VALUES (2, 1, 2);
INSERT INTO `sys_role_menu` VALUES (3, 1, 3);
INSERT INTO `sys_role_menu` VALUES (4, 1, 4);
INSERT INTO `sys_role_menu` VALUES (5, 1, 5);
INSERT INTO `sys_role_menu` VALUES (6, 1, 7);
INSERT INTO `sys_role_menu` VALUES (7, 1, 9);
INSERT INTO `sys_role_menu` VALUES (8, 2, 1);
INSERT INTO `sys_role_menu` VALUES (9, 2, 2);
INSERT INTO `sys_role_menu` VALUES (10, 2, 9);
INSERT INTO `sys_role_menu` VALUES (11, 2, 10);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户主键id 自增主键',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名 用户名',
  `password` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `phone_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话号码 电话号码',
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人说明 个人信息说明',
  `avatar` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像 存放图像url地址',
  `status` tinyint NULL DEFAULT NULL COMMENT '用户状态 用户状态：0-未激活；1-已激活',
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (6, 'user681', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '64ir@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (7, 'user270', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'eabo@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (10, 'user058', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'em03@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (12, 'user795', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '7ftx@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (14, 'user445', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '6i4l@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (16, 'user731', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'vr69@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (18, 'user111', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'baqb@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (19, 'user204', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'eyd5@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (21, 'user860', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '6sec@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (22, 'user576', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'o5yo@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (23, 'user520', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'wm51@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (24, 'user541', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'q74p@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (25, 'user378', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '0097@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (26, 'user889', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'enus@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (28, 'user524', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'ub0o@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (29, 'user950', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'z8vc@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (30, 'user737', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'k3rh@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (31, 'user681', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'qv9q@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (32, 'user686', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 's48x@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (33, 'user042', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '03il@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (34, 'user722', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'pj9h@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (35, 'user622', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'cpqq@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (36, 'user826', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '4ymf@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (38, 'user733', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'mbsq@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (39, 'user907', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'x299@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (40, 'user701', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'xye6@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (41, 'user400', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'qstx@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (44, 'user690', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'v9jz@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (45, 'user602', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'vse6@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (46, 'user283', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'nguk@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (47, 'user590', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'ayt0@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (48, 'user924', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'q8b0@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (50, 'user112', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '3xiv@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (56, 'user274', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '1eu5@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (57, 'user519', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'ls84@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (61, 'user292', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'mp20@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (62, 'user542', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'y6sy@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (63, 'user970', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'zwwo@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (64, 'user192', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'a4r1@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (65, 'user838', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '6gcd@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (66, 'user477', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'kzoo@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (67, 'user898', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'lzio@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (68, 'user869', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'bpr0@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (69, 'user466', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'b07k@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (70, 'user568', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'flqf@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (71, 'user155', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'zs5q@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (72, 'user052', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '16oh@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (73, 'user573', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'l958@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (74, 'user610', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'hqh8@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (75, 'user367', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'yx7o@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (76, 'user655', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'qmri@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (77, 'user014', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'q5me@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (78, 'user842', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '6iop@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (79, 'user939', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'wh5v@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (80, 'user262', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'c4ns@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (81, 'user313', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'rwg1@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (82, 'user214', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'yv7e@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (83, 'user256', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'ulci@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (84, 'user497', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'lyy3@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (85, 'user463', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'zmcb@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (86, 'user279', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '69dt@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (87, 'user777', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '0wad@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (88, 'user971', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'pm50@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (89, 'user968', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'ld8n@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (90, 'user121', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'j8rc@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (91, 'user789', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '2tfa@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (92, 'user972', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'kw87@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (93, 'user679', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '9avd@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (94, 'user819', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'h8oo@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (95, 'user914', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '6q4u@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (96, 'user996', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'v9lh@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (97, 'user089', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'lrd9@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (98, 'user714', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '9hvx@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (99, 'user820', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '3ygf@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (100, 'user249', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'gzpt@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:44', NULL, '2021-12-26 16:20:44');
INSERT INTO `sys_user` VALUES (105, '44444', NULL, 'test@email.com', '13549898620', '个人信息描述', NULL, 1, NULL, '2022-05-07 21:46:23', NULL, '2022-05-07 21:46:23');
INSERT INTO `sys_user` VALUES (106, '3333', NULL, 'test@email.com', '13549898620', '个人信息描述', NULL, 1, NULL, '2022-05-07 21:52:39', NULL, '2022-05-07 21:52:39');
INSERT INTO `sys_user` VALUES (107, '', NULL, 'test@email.com', '13549898620', '个人信息描述', NULL, 1, NULL, '2022-05-08 23:19:19', NULL, '2022-05-08 23:19:19');
INSERT INTO `sys_user` VALUES (108, 'user54444', NULL, 'test@email.com', '13549898620', '个人信息描述', NULL, 1, NULL, '2022-05-09 15:35:41', NULL, '2022-05-09 15:35:41');
INSERT INTO `sys_user` VALUES (109, '2005022', NULL, 'test@email.com0', '13549898620', '个人信息描述', NULL, 1, NULL, '2022-05-09 15:51:18', NULL, '2022-05-09 15:51:18');
INSERT INTO `sys_user` VALUES (110, '20050228', NULL, 'test@email.com08', '13549898627', '个人信息描述', NULL, 1, NULL, '2022-05-09 15:54:56', NULL, '2022-05-09 15:54:56');
INSERT INTO `sys_user` VALUES (112, 'test12', 'test12', 'he_huai_wen@qq.com', NULL, NULL, NULL, 2, NULL, '2022-05-12 10:52:50', NULL, '2022-05-12 10:52:50');
INSERT INTO `sys_user` VALUES (115, 'user123', 'user123', '22222@qq.com', NULL, NULL, NULL, 2, NULL, '2022-05-12 11:03:39', NULL, '2022-05-12 11:03:39');
INSERT INTO `sys_user` VALUES (116, 'test123', 'test123', 'test@email.com01', NULL, NULL, NULL, 2, NULL, '2022-05-12 11:07:23', NULL, '2022-05-12 11:07:23');
INSERT INTO `sys_user` VALUES (121, 'user3333', NULL, 'test@email.com3', '135498986203', '个人信息描述', NULL, 1, NULL, '2022-05-12 17:59:48', NULL, '2022-05-12 17:59:48');
INSERT INTO `sys_user` VALUES (123, '33333', NULL, 't33est@email.com', '1354983398620', '个人信息描述', NULL, 0, NULL, '2022-05-13 10:57:24', NULL, '2022-05-13 16:06:45');
INSERT INTO `sys_user` VALUES (127, ' 432423', NULL, 'test@email.c4324om', '312321312', 'dfdsa3w432', NULL, 0, NULL, '2022-05-13 15:24:13', NULL, '2022-05-13 16:06:36');
INSERT INTO `sys_user` VALUES (128, '42134', NULL, 'test@email.com', '13549898620', '个人信息描述', NULL, 0, NULL, '2022-05-13 16:10:35', NULL, '2022-05-13 16:15:30');
INSERT INTO `sys_user` VALUES (129, 'test333', NULL, 'rtest@hotmail.com', '1231234452', NULL, NULL, 1, NULL, '2022-11-19 21:34:32', NULL, '2022-11-19 21:34:32');
INSERT INTO `sys_user` VALUES (130, 'test333', NULL, 'rtest@hotmail.com', '1231234452', NULL, NULL, 1, NULL, '2022-11-19 21:37:42', NULL, '2022-11-19 21:37:42');
INSERT INTO `sys_user` VALUES (131, 'w34235', NULL, 'esrtew@fa', '12342', '423423', NULL, 1, NULL, '2022-11-19 21:44:57', NULL, '2022-11-19 21:44:57');
INSERT INTO `sys_user` VALUES (132, '2342', NULL, 'r344', 'fdas', 'fdasfads', NULL, 1, NULL, '2022-11-19 21:53:31', NULL, '2022-11-19 21:53:31');
INSERT INTO `sys_user` VALUES (133, 'fdasf', NULL, 'fdasf', 'fadsf', 'fadsfds', NULL, 1, NULL, '2022-11-19 21:55:39', NULL, '2022-11-19 21:55:39');
INSERT INTO `sys_user` VALUES (134, 'fdasf', NULL, 'fdasf', 'fadsf', 'fadsfds', NULL, 1, NULL, '2022-11-19 21:55:42', NULL, '2022-11-19 21:55:42');
INSERT INTO `sys_user` VALUES (135, '3434', NULL, '35434', '34534', '34534', NULL, 1, NULL, '2022-11-19 22:01:12', NULL, '2022-11-19 22:01:12');
INSERT INTO `sys_user` VALUES (136, '3434', NULL, '35434', '34534', '34534', NULL, 1, NULL, '2022-11-19 22:02:06', NULL, '2022-11-19 22:02:06');
INSERT INTO `sys_user` VALUES (137, '242', NULL, '243', '4234', '423423', NULL, 1, NULL, '2022-11-19 22:02:28', NULL, '2022-11-19 22:02:28');
INSERT INTO `sys_user` VALUES (138, 'fads', NULL, 'fas', 'fads', 'fads', NULL, 1, NULL, '2022-11-19 22:02:41', NULL, '2022-11-19 22:02:41');
INSERT INTO `sys_user` VALUES (139, 'fda', NULL, 'fads', 'fads', 'fdasfas', NULL, 1, NULL, '2022-11-19 22:03:20', NULL, '2022-11-19 22:03:20');
INSERT INTO `sys_user` VALUES (142, 'rtestea234', NULL, 'asdfdsaf', '3512122', 'fadsfads中文测试用户添加', NULL, 1, NULL, '2022-11-20 12:26:36', NULL, '2022-11-20 12:26:36');
INSERT INTO `sys_user` VALUES (143, '如我', NULL, '发的3', '2323', '发发', NULL, 1, NULL, '2022-11-20 12:27:20', NULL, '2022-11-20 12:27:20');
INSERT INTO `sys_user` VALUES (144, '333', NULL, '2332', '23423', '423423', NULL, 1, NULL, '2022-11-20 12:28:13', NULL, '2022-11-20 12:28:13');
INSERT INTO `sys_user` VALUES (145, '333', NULL, '333', '33', '33333women', NULL, 1, NULL, '2022-11-20 12:34:42', NULL, '2022-11-20 17:13:45');
INSERT INTO `sys_user` VALUES (146, '33', NULL, '333', '3', '333330000', NULL, 1, NULL, '2022-11-20 15:23:17', NULL, '2022-11-20 17:13:53');
INSERT INTO `sys_user` VALUES (147, '33', NULL, '333', '3', '33333iii999z中文编辑', NULL, 1, NULL, '2022-11-20 16:34:06', NULL, '2022-11-20 17:07:20');
INSERT INTO `sys_user` VALUES (148, '233423', NULL, '4234', '2423', '4234234', NULL, 0, NULL, '2022-11-20 21:56:27', NULL, '2022-11-21 10:32:24');
INSERT INTO `sys_user` VALUES (150, '用户1', NULL, 'sda@user.com', '13549998950', '测试用户', NULL, 1, NULL, '2022-11-22 11:04:16', NULL, '2022-11-22 11:04:16');
INSERT INTO `sys_user` VALUES (151, '345', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-24 09:55:15', NULL, '2022-11-24 21:28:28');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (2, 117, 2);
INSERT INTO `sys_user_role` VALUES (3, 111, 1);
INSERT INTO `sys_user_role` VALUES (4, 113, 2);
INSERT INTO `sys_user_role` VALUES (5, 113, 3);
INSERT INTO `sys_user_role` VALUES (6, 112, 2);
INSERT INTO `sys_user_role` VALUES (7, 112, 3);
INSERT INTO `sys_user_role` VALUES (8, 148, 4);
INSERT INTO `sys_user_role` VALUES (9, 148, 5);
INSERT INTO `sys_user_role` VALUES (10, 140, 2);
INSERT INTO `sys_user_role` VALUES (11, 140, 3);
INSERT INTO `sys_user_role` VALUES (12, 120, 2);
INSERT INTO `sys_user_role` VALUES (13, 120, 8);
INSERT INTO `sys_user_role` VALUES (14, 261, 2);
INSERT INTO `sys_user_role` VALUES (15, 262, 2);
INSERT INTO `sys_user_role` VALUES (16, 262, 2);
INSERT INTO `sys_user_role` VALUES (17, 268, 2);
INSERT INTO `sys_user_role` VALUES (18, 123, 2);
INSERT INTO `sys_user_role` VALUES (19, 108, 1);
INSERT INTO `sys_user_role` VALUES (21, 1, 1);
INSERT INTO `sys_user_role` VALUES (22, 1, 3);

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '票据id 主键id',
  `uuid` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '票据uuid 提供给前端显示用',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id 票据创建者id',
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '票据标题',
  `body` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主体内容 票据详细内容',
  `money` decimal(32, 8) NULL DEFAULT NULL COMMENT '金额 票据金额',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态 0:未提交，草稿;1:未审核；2:审核通过；3:退回、审核未通过',
  `ticket_type` tinyint NULL DEFAULT NULL COMMENT '票据类型',
  `contact_email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系方式email邮箱',
  `company_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户公司名称 票据对应的企业名称',
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 296 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '票据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES (1, 'ca2d8e2f-61b5-4896-a793-0135325ead8c', NULL, '办公器材1', '2020年新购置办公设备、电脑设备1', 1000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (2, 'b2e6e7e0-4080-4bfc-8b37-3819e25a30d1', NULL, '办公器材2', '2020年新购置办公设备、电脑设备2', 2000.00000000, 3, 1, NULL, '中山领航科技公司', NULL, NULL, NULL, '2022-05-19 11:56:38');
INSERT INTO `ticket` VALUES (3, 'ce3a7151-27c9-4325-9932-4d05b7ea4db9', NULL, '办公器材3', '2020年新购置办公设备、电脑设备3', 3000.00000000, 1, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, '2022-05-19 11:56:49');
INSERT INTO `ticket` VALUES (4, 'bf7e8c2e-942c-4cbb-b293-3281c8316310', NULL, '办公器材4', '2020年新购置办公设备、电脑设备4', 4000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (5, 'f0431e1a-e5fc-4531-a5b0-7dad687a0dea', NULL, '办公器材5', '2020年新购置办公设备、电脑设备5', 5000.00000000, 4, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, '2022-05-19 11:56:52');
INSERT INTO `ticket` VALUES (6, '2189f56a-0b0d-4074-a59f-d1853d9a0dc4', NULL, '办公器材6', '2020年新购置办公设备、电脑设备6', 6000.00000000, 3, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, '2022-05-19 11:56:57');
INSERT INTO `ticket` VALUES (7, 'ea6281ad-b670-4943-a0ae-0e3f74888c8c', NULL, '办公器材7', '2020年新购置办公设备、电脑设备7', 7000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (8, '5870dc81-52fe-443f-a822-aecaf318f814', NULL, '办公器材8', '2020年新购置办公设备、电脑设备8', 8000.00000000, 3, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, '2022-05-19 11:57:02');
INSERT INTO `ticket` VALUES (9, '829645cc-17c3-4a4a-ba07-3bb8e59e19e3', NULL, '办公器材9', '2020年新购置办公设备、电脑设备9', 9000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (10, '887808dd-5e09-46eb-b7f7-e4230e37e9c0', NULL, '办公器材10', '2020年新购置办公设备、电脑设备10', 10000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (11, '59f6ce13-cba8-4215-848f-168a9faa2c56', NULL, '办公器材11', '2020年新购置办公设备、电脑设备11', 11000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (12, 'b01d97c4-7b80-4c9e-8592-53e5156dda94', NULL, '办公器材12', '2020年新购置办公设备、电脑设备12', 12000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (13, 'a72cc9e7-1606-4151-9645-47086ef78bd3', NULL, '办公器材13', '2020年新购置办公设备、电脑设备13', 13000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (14, '7e26445a-58af-41e0-8695-d16e390c1093', NULL, '办公器材14', '2020年新购置办公设备、电脑设备14', 14000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (15, '860f97be-1c2a-45bd-8db8-ea8aebadfcfc', NULL, '办公器材15', '2020年新购置办公设备、电脑设备15', 15000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (16, '16fc85e8-af8b-4a0a-b9e0-5469cbdc1681', NULL, '办公器材16', '2020年新购置办公设备、电脑设备16', 16000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (17, 'c35cb85b-8ccd-43ef-b31d-d489c9df708d', NULL, '办公器材17', '2020年新购置办公设备、电脑设备17', 17000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (18, '9b46e710-1459-4b62-86c4-7d964b4a21fe', NULL, '办公器材18', '2020年新购置办公设备、电脑设备18', 18000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (19, '9dbd892b-f71f-4a50-b077-a5edef0258e7', NULL, '办公器材19', '2020年新购置办公设备、电脑设备19', 19000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (20, '8a434d66-5bfd-499a-bda8-35aa39e4eecb', NULL, '办公器材20', '2020年新购置办公设备、电脑设备20', 20000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (21, '3695682b-48d4-4ad4-ab23-9abd4df1d41c', NULL, '办公器材21', '2020年新购置办公设备、电脑设备21', 21000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (22, 'b0035e72-76a4-4e3d-827e-abc9802570fc', NULL, '办公器材22', '2020年新购置办公设备、电脑设备22', 22000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (23, '01a6cec4-69bc-4dd2-ad5a-ecfe7e33e2d6', NULL, '办公器材23', '2020年新购置办公设备、电脑设备23', 23000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (24, '04b00ea3-b282-4797-b39c-379bd26071f0', NULL, '办公器材24', '2020年新购置办公设备、电脑设备24', 24000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (25, '71f52359-f705-416b-bbf3-3625248d86d4', NULL, '办公器材25', '2020年新购置办公设备、电脑设备25', 25000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (26, 'f14f6eda-87fa-4084-9cda-cc56fcce1445', NULL, '办公器材26', '2020年新购置办公设备、电脑设备26', 26000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (27, '0cf409a8-5e40-403d-82b0-41c1c8b1e49c', NULL, '办公器材27', '2020年新购置办公设备、电脑设备27', 27000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (28, '04d9dbd3-949c-4dde-b45f-8b90314d6691', NULL, '办公器材28', '2020年新购置办公设备、电脑设备28', 28000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (29, '08754bb3-b87c-41bd-87b9-f166fb2b6da6', NULL, '办公器材29', '2020年新购置办公设备、电脑设备29', 29000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (30, 'e93097aa-29a9-4e2e-9c4b-965b73129e23', NULL, '办公器材30', '2020年新购置办公设备、电脑设备30', 30000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (31, 'cedf43e0-8483-4e2c-bc48-a54e1261d958', NULL, '办公器材31', '2020年新购置办公设备、电脑设备31', 31000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (32, '2117de95-f848-403e-b3f4-6606153d06ce', NULL, '办公器材32', '2020年新购置办公设备、电脑设备32', 32000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (33, '7627b2d7-c93f-48e2-a42e-e6ddd92a07e0', NULL, '办公器材33', '2020年新购置办公设备、电脑设备33', 33000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (34, '013d5582-7880-4bf8-8be5-1bf15a961a9b', NULL, '办公器材34', '2020年新购置办公设备、电脑设备34', 34000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (35, '017012a7-67a5-4bf9-94df-e49583e0a873', NULL, '办公器材35', '2020年新购置办公设备、电脑设备35', 35000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (36, 'db7f8ba4-054d-4167-8725-8d544dc78103', NULL, '办公器材36', '2020年新购置办公设备、电脑设备36', 36000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (37, '2b50fbeb-9bb7-49d8-a4ae-644e5763fb88', NULL, '办公器材37', '2020年新购置办公设备、电脑设备37', 37000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (38, '224f23c8-0fd8-45b7-8e0b-602bae75acd3', NULL, '办公器材38', '2020年新购置办公设备、电脑设备38', 38000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (39, 'ff9cb798-3e14-43ff-922d-e6a9c61b1362', NULL, '办公器材39', '2020年新购置办公设备、电脑设备39', 39000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (40, '2d2043ff-e546-4494-a161-bf9aaeb469a5', NULL, '办公器材40', '2020年新购置办公设备、电脑设备40', 40000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (41, '91482bfb-701f-4567-bb8f-d2d92a85fe5c', NULL, '办公器材41', '2020年新购置办公设备、电脑设备41', 41000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (42, '150b3176-4160-45da-915a-0ffd5153f261', NULL, '办公器材42', '2020年新购置办公设备、电脑设备42', 42000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (43, 'f0c17cef-5134-4b2a-99f2-455f0b9eb9da', NULL, '办公器材43', '2020年新购置办公设备、电脑设备43', 43000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (44, '73c6e549-e4a6-4b63-ade3-97abe1104ec2', NULL, '办公器材44', '2020年新购置办公设备、电脑设备44', 44000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (45, '4d5c356f-4285-454f-a7c1-ae74eaa68110', NULL, '办公器材45', '2020年新购置办公设备、电脑设备45', 45000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (46, 'f5eac5f6-acf0-4cb3-b96b-064206dc246f', NULL, '办公器材46', '2020年新购置办公设备、电脑设备46', 46000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (47, '49e6b509-b0b2-4f9c-8bac-87db4c8f73ca', NULL, '办公器材47', '2020年新购置办公设备、电脑设备47', 47000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (48, '947a48d0-f76f-425c-9486-0e3d9489ae44', NULL, '办公器材48', '2020年新购置办公设备、电脑设备48', 48000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (49, '9225a890-b55d-458c-869b-24057050d0ee', NULL, '办公器材49', '2020年新购置办公设备、电脑设备49', 49000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (50, '3074dc85-365b-43bd-8deb-30bcddc0876b', NULL, '办公器材50', '2020年新购置办公设备、电脑设备50', 50000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (51, '33123edb-bfd5-472c-94a5-eae8827f7c16', NULL, '办公器材51', '2020年新购置办公设备、电脑设备51', 51000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (52, 'c21d1eda-dbb3-40cd-b2a6-2819aaf921cc', NULL, '办公器材52', '2020年新购置办公设备、电脑设备52', 52000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (53, '60270b62-9e75-4413-b541-e24766dda628', NULL, '办公器材53', '2020年新购置办公设备、电脑设备53', 53000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (54, 'fcb185e2-ac54-4505-8edb-34139f09a26c', NULL, '办公器材54', '2020年新购置办公设备、电脑设备54', 54000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (55, 'b898a333-775d-45f9-a8c5-7d126e448e3f', NULL, '办公器材55', '2020年新购置办公设备、电脑设备55', 55000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (56, '9469b111-6682-4f82-9b1b-71362c889be9', NULL, '办公器材56', '2020年新购置办公设备、电脑设备56', 56000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (57, 'ac6e89ec-234f-471a-9daf-5ae91c98df11', NULL, '办公器材57', '2020年新购置办公设备、电脑设备57', 57000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (58, 'd44bbdcb-f55b-41e3-8432-c7815412992c', NULL, '办公器材58', '2020年新购置办公设备、电脑设备58', 58000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (59, '2e519b03-d342-47a1-8010-307f247edaeb', NULL, '办公器材59', '2020年新购置办公设备、电脑设备59', 59000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (60, 'f459f53c-8864-46d1-8f77-194d55b3241e', NULL, '办公器材60', '2020年新购置办公设备、电脑设备60', 60000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (61, 'f80ecbb2-f7a5-4873-8b49-6cdabc552a94', NULL, '办公器材61', '2020年新购置办公设备、电脑设备61', 61000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (62, '37f44c46-42f1-4483-b296-1458342ea3da', NULL, '办公器材62', '2020年新购置办公设备、电脑设备62', 62000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (63, '707b1f25-51e9-4f2b-a4c0-eaa017fa7fc5', NULL, '办公器材63', '2020年新购置办公设备、电脑设备63', 63000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (64, 'beed752b-91a5-46fc-8def-7074c26eb6ea', NULL, '办公器材64', '2020年新购置办公设备、电脑设备64', 64000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (65, '40f16b89-2ab5-42f8-889d-6bdf5dd53e62', NULL, '办公器材65', '2020年新购置办公设备、电脑设备65', 65000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (66, '09b7d1c5-d7ed-4a23-acb9-53dcf9b46dda', NULL, '办公器材66', '2020年新购置办公设备、电脑设备66', 66000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (67, 'a0508b65-f90b-435c-bcd7-098732cf2eaa', NULL, '办公器材67', '2020年新购置办公设备、电脑设备67', 67000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (68, '559f1a73-8b13-444f-aa3c-ae908e114534', NULL, '办公器材68', '2020年新购置办公设备、电脑设备68', 68000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (69, 'dbb87519-b0b6-4708-92af-ad7dd5e3fc10', NULL, '办公器材69', '2020年新购置办公设备、电脑设备69', 69000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (70, '396b4b1c-7f43-4c5a-aa0d-10d90bbd55d7', NULL, '办公器材70', '2020年新购置办公设备、电脑设备70', 70000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (71, 'e221bb8a-583d-4bba-a0d3-6be08a0c3454', NULL, '办公器材1', '2020年新购置办公设备、电脑设备1', 1000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (72, '3bac031f-a028-497c-8ee7-7c91c85a0eb4', NULL, '办公器材2', '2020年新购置办公设备、电脑设备2', 2000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (73, '7b3d8e37-ffbd-49c7-bf1a-c63967310b9a', NULL, '办公器材3', '2020年新购置办公设备、电脑设备3', 3000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (74, '7c99fdf0-59b9-4468-a6ce-3316032fe480', NULL, '办公器材4', '2020年新购置办公设备、电脑设备4', 4000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (75, '1ed2eddf-e418-4467-a073-e639dd9425e3', NULL, '办公器材5', '2020年新购置办公设备、电脑设备5', 5000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (76, '7ebbace6-6cde-4a34-bbee-ce410a328841', NULL, '办公器材6', '2020年新购置办公设备、电脑设备6', 6000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (77, '9cb43813-bef3-425d-8e4e-dc5d3395e712', NULL, '办公器材7', '2020年新购置办公设备、电脑设备7', 7000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (78, '6e3f2d04-49be-48de-9bbf-2f1138f7aaac', NULL, '办公器材8', '2020年新购置办公设备、电脑设备8', 8000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (79, '18fb8331-8434-4796-996d-70b581e76696', NULL, '办公器材9', '2020年新购置办公设备、电脑设备9', 9000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (80, '7fe612ab-6a6e-498f-a8ed-9766575e9967', NULL, '办公器材10', '2020年新购置办公设备、电脑设备10', 10000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (81, '9afb3fcb-a855-4877-bcf5-3923b70d27e7', NULL, '办公器材11', '2020年新购置办公设备、电脑设备11', 11000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (82, 'fa857c0e-c648-4c64-aa63-ceb5add64894', NULL, '办公器材12', '2020年新购置办公设备、电脑设备12', 12000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (83, 'd0476b00-8166-4264-b444-91aa442dfacc', NULL, '办公器材13', '2020年新购置办公设备、电脑设备13', 13000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (84, '4e90f47a-d165-4234-ad9d-a60ea7cd40c2', NULL, '办公器材14', '2020年新购置办公设备、电脑设备14', 14000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (85, 'e11a201c-15d3-4919-b804-33ee53c852ad', NULL, '办公器材15', '2020年新购置办公设备、电脑设备15', 15000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (86, 'a5389ed2-1823-464e-8caa-45559369bc7e', NULL, '办公器材16', '2020年新购置办公设备、电脑设备16', 16000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (87, 'bf2e3300-523b-4e6b-b4ac-cb4c30edba8d', NULL, '办公器材17', '2020年新购置办公设备、电脑设备17', 17000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (88, '08394d70-6626-4a17-9818-141d52c97ddc', NULL, '办公器材18', '2020年新购置办公设备、电脑设备18', 18000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (89, '57c0b135-0093-4d5c-9623-d64603415d89', NULL, '办公器材19', '2020年新购置办公设备、电脑设备19', 19000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (90, '815847f8-6972-465f-b4b4-2177d62ef60e', NULL, '办公器材20', '2020年新购置办公设备、电脑设备20', 20000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (91, 'bf1803fa-3bf5-4f67-aed6-431e0e271355', NULL, '办公器材21', '2020年新购置办公设备、电脑设备21', 21000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (92, '3e252000-fd0b-4342-824b-850a32ee18e0', NULL, '办公器材22', '2020年新购置办公设备、电脑设备22', 22000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (93, '989ba383-07e2-45e6-8c81-24501fe472f9', NULL, '办公器材23', '2020年新购置办公设备、电脑设备23', 23000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (94, '5492db3d-4ce4-4618-8e91-d89de607c688', NULL, '办公器材24', '2020年新购置办公设备、电脑设备24', 24000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (95, '85c1c9dc-7733-42dc-98a6-6a07f9a022c6', NULL, '办公器材25', '2020年新购置办公设备、电脑设备25', 25000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (96, '8df5e733-947a-40e4-839e-2b316e280cd9', NULL, '办公器材26', '2020年新购置办公设备、电脑设备26', 26000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (97, '2dcdec99-aabf-4b64-81e9-bb00dc549e5d', NULL, '办公器材27', '2020年新购置办公设备、电脑设备27', 27000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (98, '888c548a-8fe2-4d4f-a422-56cc45d4c14c', NULL, '办公器材28', '2020年新购置办公设备、电脑设备28', 28000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (99, '03bc128b-c346-4e97-a646-3f85f34f2b97', NULL, '办公器材29', '2020年新购置办公设备、电脑设备29', 29000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (100, 'd7f8bbc0-08fb-4cef-b01a-9018c699005e', NULL, '办公器材30', '2020年新购置办公设备、电脑设备30', 30000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (101, '1d216a3f-865b-4fa4-abb4-b4b6daa3d73f', NULL, '办公器材31', '2020年新购置办公设备、电脑设备31', 31000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (102, '6356c74f-43a8-48c2-953c-3b2e5cd75b2b', NULL, '办公器材32', '2020年新购置办公设备、电脑设备32', 32000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (103, '5cd9e3e2-1e9b-4704-88e7-510726bac596', NULL, '办公器材33', '2020年新购置办公设备、电脑设备33', 33000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (104, 'c664d9cf-223d-4bd0-81b0-6c4655237e18', NULL, '办公器材34', '2020年新购置办公设备、电脑设备34', 34000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (105, '35095916-1375-4312-8010-1d5685918f5f', NULL, '办公器材35', '2020年新购置办公设备、电脑设备35', 35000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (106, 'bd5eed24-7595-4964-a654-2301a16027fd', NULL, '办公器材36', '2020年新购置办公设备、电脑设备36', 36000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (107, 'aa3f7115-2623-427e-8844-7f2b43e7dda4', NULL, '办公器材37', '2020年新购置办公设备、电脑设备37', 37000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (108, '4a0693d3-7ff1-41f4-80e2-c7106d65a7f0', NULL, '办公器材38', '2020年新购置办公设备、电脑设备38', 38000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (109, '99033a61-03ff-4a30-aea4-05ba32002b7c', NULL, '办公器材39', '2020年新购置办公设备、电脑设备39', 39000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (110, 'e22c9d38-3a15-4897-aade-4e0c3cb38f01', NULL, '办公器材40', '2020年新购置办公设备、电脑设备40', 40000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (111, '6d65c271-5243-45a9-86d6-a06b63f68b2c', NULL, '办公器材41', '2020年新购置办公设备、电脑设备41', 41000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (112, '2264cd0d-09f4-428b-a4c6-3b6fabde620a', NULL, '办公器材42', '2020年新购置办公设备、电脑设备42', 42000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (113, 'd86a2b6f-bd23-4398-85b2-d5b723dfd1e2', NULL, '办公器材43', '2020年新购置办公设备、电脑设备43', 43000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (114, '430e25ad-8737-435c-8b66-9aa4ac4014ae', NULL, '办公器材44', '2020年新购置办公设备、电脑设备44', 44000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (115, '30db67ca-58dd-4e71-9abd-fe9226b8f9ec', NULL, '办公器材45', '2020年新购置办公设备、电脑设备45', 45000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (116, '5e587682-691c-476e-96f3-e7c31ea9b644', NULL, '办公器材46', '2020年新购置办公设备、电脑设备46', 46000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (117, '69f0226d-0456-459d-bdb8-f57b8d14d06e', NULL, '办公器材47', '2020年新购置办公设备、电脑设备47', 47000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (118, '618df6e7-8e2a-48ea-8093-437442caf53b', NULL, '办公器材48', '2020年新购置办公设备、电脑设备48', 48000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (119, '6da4c233-4b53-49d1-be2e-17674facce7a', NULL, '办公器材49', '2020年新购置办公设备、电脑设备49', 49000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (120, '53f35838-8cdf-4dd6-b248-c8d289859155', NULL, '办公器材50', '2020年新购置办公设备、电脑设备50', 50000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (121, '0235e934-efd5-4d59-8ef8-47e2e1b634c7', NULL, '办公器材51', '2020年新购置办公设备、电脑设备51', 51000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (122, '8fb3e002-da67-492c-a4f6-e6982dcd9d0f', NULL, '办公器材52', '2020年新购置办公设备、电脑设备52', 52000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (123, 'aae679b3-d5a9-4f1d-9ce2-dcad36b0446a', NULL, '办公器材53', '2020年新购置办公设备、电脑设备53', 53000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (124, '09adbaf2-8b89-4f18-af27-cff91877f43d', NULL, '办公器材54', '2020年新购置办公设备、电脑设备54', 54000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (125, 'a4f2354e-2398-4da6-9a53-ee612d4b51d3', NULL, '办公器材55', '2020年新购置办公设备、电脑设备55', 55000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (126, 'aa37eb85-2cd0-47b2-ae43-790ab8c928ce', NULL, '办公器材56', '2020年新购置办公设备、电脑设备56', 56000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (127, 'f9f4a150-0134-4dc1-8dae-3943e72a919c', NULL, '办公器材57', '2020年新购置办公设备、电脑设备57', 57000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (128, 'edb51ea1-9e1d-4581-98b0-4d443d61618a', NULL, '办公器材58', '2020年新购置办公设备、电脑设备58', 58000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (129, '06842727-b302-433a-aced-07ad3f1a2278', NULL, '办公器材59', '2020年新购置办公设备、电脑设备59', 59000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (130, '33f5afa4-2795-4e94-a4ac-86e982fc1b09', NULL, '办公器材60', '2020年新购置办公设备、电脑设备60', 60000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (131, '7a6d5cfc-4c2a-466f-b368-12787401607e', NULL, '办公器材61', '2020年新购置办公设备、电脑设备61', 61000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (132, 'b9e5b1e8-3bb9-4b24-8fd9-16878121085d', NULL, '办公器材62', '2020年新购置办公设备、电脑设备62', 62000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (133, '1c88456f-0c45-422a-9ade-8103df92ac2f', NULL, '办公器材63', '2020年新购置办公设备、电脑设备63', 63000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (134, 'a3884476-970d-4b69-a75a-9c401c018d1b', NULL, '办公器材64', '2020年新购置办公设备、电脑设备64', 64000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (135, '6dbded60-2b08-411f-b9d2-2ef4f8ba7782', NULL, '办公器材65', '2020年新购置办公设备、电脑设备65', 65000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (136, 'c8d91037-c876-410c-9402-ff2cd7237555', NULL, '办公器材66', '2020年新购置办公设备、电脑设备66', 66000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (137, '421ec9cb-8ed0-4231-9bab-d94f74926d6e', NULL, '办公器材67', '2020年新购置办公设备、电脑设备67', 67000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (138, '0539a198-fe5f-4620-b328-b24a3aeffe4a', NULL, '办公器材68', '2020年新购置办公设备、电脑设备68', 68000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (139, 'cf9463d9-cb12-4894-afc2-0ed3ab59a81d', NULL, '办公器材69', '2020年新购置办公设备、电脑设备69', 69000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (140, '3e802264-9caf-4507-b0e1-f9e9443b9903', NULL, '办公器材70', '2020年新购置办公设备、电脑设备70', 70000.00000000, 2, 2, NULL, '中山领航科技公司', NULL, NULL, NULL, NULL);
INSERT INTO `ticket` VALUES (141, '46217d91-b57b-4935-8299-891dafa39056', NULL, '办公器材1', '2020年新购置办公设备、电脑设备1rg2jp', 1000.00000000, 0, 1, NULL, '中山领航科技公司1u95a', NULL, '2022-05-18 14:21:35', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (142, 'e36e36db-27b5-4e6e-97e4-1c7bdf6bbf71', NULL, '办公器材2', '2020年新购置办公设备、电脑设备2vi5co', 2000.00000000, 0, 2, NULL, '中山领航科技公司2y141', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (143, '0f5a1f12-9788-4330-bc2d-30a381a9f3e6', NULL, '办公器材3', '2020年新购置办公设备、电脑设备3jdi4m', 3000.00000000, 0, 1, NULL, '中山领航科技公司3i868', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (144, 'e29be752-b553-44de-bc65-918764ac884f', NULL, '办公器材4', '2020年新购置办公设备、电脑设备4rt1mi', 4000.00000000, 0, 2, NULL, '中山领航科技公司4or7t', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (145, 'd62b8c6d-8cb9-4453-aa97-1a6e5de542d8', NULL, '办公器材5', '2020年新购置办公设备、电脑设备5gm8je', 5000.00000000, 0, 2, NULL, '中山领航科技公司5bbw6', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (146, '49b32a81-804c-4472-aebf-6279f4937564', NULL, '办公器材6', '2020年新购置办公设备、电脑设备66kv01', 6000.00000000, 0, 2, NULL, '中山领航科技公司6k3zb', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (147, '8efacbe0-3240-4ed6-bd2b-c4129d48d549', NULL, '办公器材7', '2020年新购置办公设备、电脑设备7bcvt6', 7000.00000000, 0, 1, NULL, '中山领航科技公司7x0hd', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (148, '59414ba7-b72f-4603-80ed-1b2eeb397edc', NULL, '办公器材8', '2020年新购置办公设备、电脑设备80flxv', 8000.00000000, 0, 1, NULL, '中山领航科技公司8dpt0', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (149, 'aba582d0-8daa-40db-a609-d94b9329ed41', NULL, '办公器材9', '2020年新购置办公设备、电脑设备9knejc', 9000.00000000, 0, 3, NULL, '中山领航科技公司92tqb', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (150, '6d69c295-a536-43c6-9268-f3a2afc573d3', NULL, '办公器材10', '2020年新购置办公设备、电脑设备105t1tr', 10000.00000000, 0, 3, NULL, '中山领航科技公司10d1lo', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (151, '0e4161d0-7cb2-4a67-b0a7-2be98010b7b4', NULL, '办公器材11', '2020年新购置办公设备、电脑设备111xlms', 11000.00000000, 0, 1, NULL, '中山领航科技公司11kuzc', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (152, '74e4b024-853c-48b5-8b75-aa9d126af2cb', NULL, '办公器材12', '2020年新购置办公设备、电脑设备12y1vn8', 12000.00000000, 0, 2, NULL, '中山领航科技公司127p84', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (153, 'c937b64f-80f8-41c0-91dc-6a1613270e74', NULL, '办公器材13', '2020年新购置办公设备、电脑设备13bw9c4', 13000.00000000, 0, 3, NULL, '中山领航科技公司13wlwb', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (154, '02df0b56-1e01-4513-8c82-664eda75a756', NULL, '办公器材14', '2020年新购置办公设备、电脑设备14elkq6', 14000.00000000, 0, 3, NULL, '中山领航科技公司14ulkn', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (155, '5bd7f806-1ed2-4eca-b3ad-20d13ae10155', NULL, '办公器材15', '2020年新购置办公设备、电脑设备15mwr23', 15000.00000000, 0, 2, NULL, '中山领航科技公司15shrv', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (156, '576ae214-de3b-4520-aa6c-e1c4b437384d', NULL, '办公器材16', '2020年新购置办公设备、电脑设备169elat', 16000.00000000, 0, 2, NULL, '中山领航科技公司1683ll', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:35');
INSERT INTO `ticket` VALUES (157, 'ddb79787-7d8d-479f-8c76-94e587fc9f0c', NULL, '办公器材17', '2020年新购置办公设备、电脑设备1753m9u', 17000.00000000, 0, 2, NULL, '中山领航科技公司171t5j', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (158, '8809af40-2311-45b3-9330-366fcf546b78', NULL, '办公器材18', '2020年新购置办公设备、电脑设备18zvyly', 18000.00000000, 0, 1, NULL, '中山领航科技公司18gm2d', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (159, '91e46817-78ef-4150-a659-fab24e8822e5', NULL, '办公器材19', '2020年新购置办公设备、电脑设备19cbb27', 19000.00000000, 0, 3, NULL, '中山领航科技公司19nh9z', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (160, '2bbf6133-b4eb-465f-9bbe-2104f244020c', NULL, '办公器材20', '2020年新购置办公设备、电脑设备20vh15m', 20000.00000000, 0, 3, NULL, '中山领航科技公司20662y', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (161, '6752cca7-4a95-4765-962d-9d419b6d5721', NULL, '办公器材21', '2020年新购置办公设备、电脑设备21qdbkp', 21000.00000000, 0, 3, NULL, '中山领航科技公司217r4j', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (162, '22beffc0-8cfb-4df6-bf76-33cf1dcc593c', NULL, '办公器材22', '2020年新购置办公设备、电脑设备227cb7t', 22000.00000000, 0, 2, NULL, '中山领航科技公司22fpuj', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (163, '647e89b4-4c74-47f8-b48b-cd7139485ccc', NULL, '办公器材23', '2020年新购置办公设备、电脑设备2370mdc', 23000.00000000, 0, 3, NULL, '中山领航科技公司23joum', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (164, '636d4c2d-b15f-441a-81cd-4492e063a8a6', NULL, '办公器材24', '2020年新购置办公设备、电脑设备243ky3i', 24000.00000000, 0, 2, NULL, '中山领航科技公司2456bq', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (165, '773b343f-8af8-4dfd-82d7-4dd1a5942e5e', NULL, '办公器材25', '2020年新购置办公设备、电脑设备25or2hu', 25000.00000000, 0, 2, NULL, '中山领航科技公司25e92u', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (166, '4298a615-9d24-46ed-b9b4-e3e893b057a5', NULL, '办公器材26', '2020年新购置办公设备、电脑设备265rmr8', 26000.00000000, 0, 1, NULL, '中山领航科技公司26a98e', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (167, 'f85927a9-1bec-47df-9e4c-838732f6d160', NULL, '办公器材27', '2020年新购置办公设备、电脑设备27of5iq', 27000.00000000, 0, 3, NULL, '中山领航科技公司27j4ho', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (168, '117f3e65-57ca-4f18-912b-7e6682ae63d8', NULL, '办公器材28', '2020年新购置办公设备、电脑设备289wma2', 28000.00000000, 0, 1, NULL, '中山领航科技公司28yxcu', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (169, 'f0df6ed9-db06-4f0b-b1ea-6e10d753e1e1', NULL, '办公器材29', '2020年新购置办公设备、电脑设备29vea6v', 29000.00000000, 0, 1, NULL, '中山领航科技公司29jdfl', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (170, '7948a629-039e-43fb-a38d-9d86c6481d8a', NULL, '办公器材30', '2020年新购置办公设备、电脑设备30ol3bj', 30000.00000000, 0, 3, NULL, '中山领航科技公司30sboc', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (171, '3d8bcf42-6605-4dfe-9485-ae3b0db46e21', NULL, '办公器材31', '2020年新购置办公设备、电脑设备31x5ax4', 31000.00000000, 0, 1, NULL, '中山领航科技公司313aqm', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (172, '0c10b1cb-3fe2-45f6-9e5b-512064bdba57', NULL, '办公器材32', '2020年新购置办公设备、电脑设备326lbiv', 32000.00000000, 0, 1, NULL, '中山领航科技公司320gp2', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (173, '2e7247d7-1bf5-4e92-be8b-741702f393c1', NULL, '办公器材33', '2020年新购置办公设备、电脑设备33lvlf3', 33000.00000000, 0, 2, NULL, '中山领航科技公司33fgyy', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (174, '9c92f801-e2b9-4624-85dc-b8db18604b5a', NULL, '办公器材34', '2020年新购置办公设备、电脑设备34rp1rm', 34000.00000000, 0, 1, NULL, '中山领航科技公司3469kt', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (175, 'e0c97ac9-9113-4318-b3bd-706370145de5', NULL, '办公器材35', '2020年新购置办公设备、电脑设备35tdcr6', 35000.00000000, 0, 2, NULL, '中山领航科技公司35zwkj', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (176, 'f0e12cfc-5d79-4edf-9725-40314e5b1294', NULL, '办公器材36', '2020年新购置办公设备、电脑设备36vc5mz', 36000.00000000, 0, 1, NULL, '中山领航科技公司36ciq4', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (177, '638df300-77d1-42dc-9aa6-d4a5e32b3781', NULL, '办公器材37', '2020年新购置办公设备、电脑设备37kfzmd', 37000.00000000, 0, 1, NULL, '中山领航科技公司37qgyk', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (178, 'dd46d5f3-a45e-428e-9ae9-57f0ea516a79', NULL, '办公器材38', '2020年新购置办公设备、电脑设备388yoqm', 38000.00000000, 0, 1, NULL, '中山领航科技公司38syrc', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (179, '7fb12000-dd69-4b9a-bccc-12e9587e304b', NULL, '办公器材39', '2020年新购置办公设备、电脑设备39fja9f', 39000.00000000, 0, 3, NULL, '中山领航科技公司39poq5', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (180, 'bf6bcd20-ee8f-4488-b4d8-70ed08fd9004', NULL, '办公器材40', '2020年新购置办公设备、电脑设备40lt212', 40000.00000000, 0, 1, NULL, '中山领航科技公司40t6la', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (181, '052d95ab-c4c5-41d8-8d04-01f153da84d3', NULL, '办公器材41', '2020年新购置办公设备、电脑设备41h74d0', 41000.00000000, 0, 1, NULL, '中山领航科技公司41ufqf', NULL, '2022-05-18 14:21:36', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (182, '49af5bc7-8644-4116-a10e-42743a971752', NULL, '办公器材42', '2020年新购置办公设备、电脑设备421hhbo', 42000.00000000, 0, 2, NULL, '中山领航科技公司42ilxo', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (183, 'aa26d921-ae4c-4f7d-b7bd-b54db8e52b28', NULL, '办公器材43', '2020年新购置办公设备、电脑设备43kmamx', 43000.00000000, 0, 3, NULL, '中山领航科技公司43yg8t', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (184, '2ff751e6-a516-48c8-aac9-c32dcbf783cd', NULL, '办公器材44', '2020年新购置办公设备、电脑设备44q57sj', 44000.00000000, 0, 1, NULL, '中山领航科技公司448pnc', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (185, 'c4359227-9e42-4c8a-97ba-faf1e13605f1', NULL, '办公器材45', '2020年新购置办公设备、电脑设备45xvoar', 45000.00000000, 0, 1, NULL, '中山领航科技公司45zpz1', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (186, '8a2bccd6-f6a3-4c2b-b889-c4b7e117220c', NULL, '办公器材46', '2020年新购置办公设备、电脑设备469qz1t', 46000.00000000, 0, 1, NULL, '中山领航科技公司469rvv', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (187, 'c9fb3fa2-5d02-4f71-a6da-09f3ebf36659', NULL, '办公器材47', '2020年新购置办公设备、电脑设备47t2jq7', 47000.00000000, 0, 1, NULL, '中山领航科技公司47t7w6', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (188, '4d5cebbf-e9b9-4ba0-8771-8e61e2ed502c', NULL, '办公器材48', '2020年新购置办公设备、电脑设备48c793y', 48000.00000000, 0, 2, NULL, '中山领航科技公司48f7nf', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (189, 'e6cfb34c-67eb-4594-bc40-980727257fb8', NULL, '办公器材49', '2020年新购置办公设备、电脑设备490iuth', 49000.00000000, 0, 2, NULL, '中山领航科技公司49gsgf', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (190, '10550062-6d27-4a70-9140-c43c989df019', NULL, '办公器材50', '2020年新购置办公设备、电脑设备50q149t', 50000.00000000, 0, 3, NULL, '中山领航科技公司50lypl', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (191, '7a838307-f0ca-4fa1-a74e-cb8d92afb034', NULL, '办公器材51', '2020年新购置办公设备、电脑设备51229zg', 51000.00000000, 0, 1, NULL, '中山领航科技公司51slct', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (192, 'de1de110-51d5-4aa2-88ce-bb2eb0a20e66', NULL, '办公器材52', '2020年新购置办公设备、电脑设备5257rt6', 52000.00000000, 0, 2, NULL, '中山领航科技公司52n37v', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (193, '71e67eba-2422-44d7-98a8-0e2c79d115b2', NULL, '办公器材53', '2020年新购置办公设备、电脑设备53ifezm', 53000.00000000, 0, 1, NULL, '中山领航科技公司53faxn', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (194, 'ca684133-6dc5-48a2-9204-e63cdc10abc3', NULL, '办公器材54', '2020年新购置办公设备、电脑设备54i1bv5', 54000.00000000, 0, 3, NULL, '中山领航科技公司54viw2', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (195, '104c2fec-efa5-42dd-84c0-e65ef07dc024', NULL, '办公器材55', '2020年新购置办公设备、电脑设备558n4pb', 55000.00000000, 0, 3, NULL, '中山领航科技公司554qjp', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (196, 'e6ec1135-5509-4c69-9395-d6efe6c52619', NULL, '办公器材56', '2020年新购置办公设备、电脑设备56gmbow', 56000.00000000, 0, 1, NULL, '中山领航科技公司56zsxm', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (197, '4c16cbac-a95d-4ae7-9a71-7a8de86e2681', NULL, '办公器材57', '2020年新购置办公设备、电脑设备575yetp', 57000.00000000, 0, 3, NULL, '中山领航科技公司57ia84', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (198, '9de0b485-e531-4ad8-98f0-17a983c1fc50', NULL, '办公器材58', '2020年新购置办公设备、电脑设备581n5ay', 58000.00000000, 0, 1, NULL, '中山领航科技公司58qa13', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (199, 'b2a9e902-2cf8-458b-a890-bbea6da62503', NULL, '办公器材59', '2020年新购置办公设备、电脑设备5966ns3', 59000.00000000, 0, 2, NULL, '中山领航科技公司59mlto', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (200, 'a663d3cb-4670-4b65-8bf0-c897c85a701d', NULL, '办公器材60', '2020年新购置办公设备、电脑设备60edo8r', 60000.00000000, 0, 3, NULL, '中山领航科技公司60kmzh', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (201, 'e6fb356f-151f-40bc-991f-741f87b148a5', NULL, '办公器材61', '2020年新购置办公设备、电脑设备61d34ic', 61000.00000000, 0, 2, NULL, '中山领航科技公司61hvan', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (202, 'b1718d34-bc49-42a1-af91-56b72176733f', NULL, '办公器材62', '2020年新购置办公设备、电脑设备6202ley', 62000.00000000, 0, 3, NULL, '中山领航科技公司628cm4', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (203, '532e6d67-d40b-4e23-a9a7-f39b2709da9f', NULL, '办公器材63', '2020年新购置办公设备、电脑设备632b2t1', 63000.00000000, 0, 1, NULL, '中山领航科技公司63x77w', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (204, 'ece5ce7a-c9e4-41fc-afae-fc3b3e144643', NULL, '办公器材64', '2020年新购置办公设备、电脑设备64bp178', 64000.00000000, 0, 1, NULL, '中山领航科技公司649ax9', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (205, 'a1e47ab3-5145-42aa-83e2-34e1fa39e85e', NULL, '办公器材65', '2020年新购置办公设备、电脑设备65lqkr8', 65000.00000000, 0, 3, NULL, '中山领航科技公司65eo1n', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:36');
INSERT INTO `ticket` VALUES (206, '0f4f8997-81ff-4e04-b2b2-c328c93c30ac', NULL, '办公器材66', '2020年新购置办公设备、电脑设备66de07r', 66000.00000000, 0, 2, NULL, '中山领航科技公司66eznp', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:37');
INSERT INTO `ticket` VALUES (207, '2692bb03-5f41-4a8b-880e-ae05969a444b', NULL, '办公器材67', '2020年新购置办公设备、电脑设备67j7z2v', 67000.00000000, 0, 3, NULL, '中山领航科技公司6797q0', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:37');
INSERT INTO `ticket` VALUES (208, '6ddaea47-8d0b-44a5-9fe4-a2e123e143d5', NULL, '办公器材68', '2020年新购置办公设备、电脑设备68xsc36', 68000.00000000, 0, 3, NULL, '中山领航科技公司68mw32', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:37');
INSERT INTO `ticket` VALUES (209, '8c94e6b3-cbbe-4d28-a6e8-30acf19186ef', NULL, '办公器材69', '2020年新购置办公设备、电脑设备69p3i2n', 69000.00000000, 0, 2, NULL, '中山领航科技公司69l3y8', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:37');
INSERT INTO `ticket` VALUES (210, 'f772fd30-c7e8-4687-892a-715535e0d097', NULL, '办公器材70', '2020年新购置办公设备、电脑设备70p716y', 70000.00000000, 0, 1, NULL, '中山领航科技公司70v55f', NULL, '2022-05-18 14:21:37', NULL, '2022-05-18 14:21:37');
INSERT INTO `ticket` VALUES (211, 'b9510858-4b74-4bea-9170-44d025e2635e', NULL, '办公器材1', '2020年新购置办公设备、电脑设备1ffscb', 1000.00000000, 0, 1, NULL, '中山领航科技公司13sfg', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:26');
INSERT INTO `ticket` VALUES (212, '29f89f7e-3d18-468a-a53f-fd30d5aeb3b4', NULL, '办公器材2', '2020年新购置办公设备、电脑设备2x5yvh', 2000.00000000, 0, 1, NULL, '中山领航科技公司2sg8d', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (213, '81a01f82-a97d-463a-a468-4ec117719d11', NULL, '办公器材3', '2020年新购置办公设备、电脑设备3zkvi5', 3000.00000000, 0, 2, NULL, '中山领航科技公司3viyn', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (214, '5e0a842d-083f-430b-9c65-af5b22680991', NULL, '办公器材4', '2020年新购置办公设备、电脑设备4n8jfb', 4000.00000000, 0, 3, NULL, '中山领航科技公司44cqb', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (215, '8269ccc7-17d4-4b1d-9580-2bf91911f791', NULL, '办公器材5', '2020年新购置办公设备、电脑设备55uo47', 5000.00000000, 0, 2, NULL, '中山领航科技公司5ah6f', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (216, '8d324b70-f3a2-4623-944f-851790c029ef', NULL, '办公器材6', '2020年新购置办公设备、电脑设备64si04', 6000.00000000, 0, 2, NULL, '中山领航科技公司6az86', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (217, 'd8e39e8a-de8b-4834-a8b5-5b0f16955649', NULL, '办公器材7', '2020年新购置办公设备、电脑设备7xociw', 7000.00000000, 0, 3, NULL, '中山领航科技公司7brrs', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (218, 'a105aa7e-90c7-459e-9bfc-bf5eb17978a2', NULL, '办公器材8', '2020年新购置办公设备、电脑设备8h6hi5', 8000.00000000, 0, 1, NULL, '中山领航科技公司8iq28', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (219, '21f768f5-862a-4064-a37a-30d30038b492', NULL, '办公器材9', '2020年新购置办公设备、电脑设备966ou8', 9000.00000000, 0, 1, NULL, '中山领航科技公司9uymj', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (220, 'b82c3b4f-cffe-40e0-9359-8154f03d429a', NULL, '办公器材10', '2020年新购置办公设备、电脑设备105epmw', 10000.00000000, 0, 2, NULL, '中山领航科技公司10anwt', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (221, '0c2b22ce-ba46-48d5-9697-dcb3815a21e5', NULL, '办公器材11', '2020年新购置办公设备、电脑设备11ql2rt', 11000.00000000, 0, 1, NULL, '中山领航科技公司112df3', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (222, 'd5266309-37be-442e-8f8a-0b5ae70c5e01', NULL, '办公器材12', '2020年新购置办公设备、电脑设备12yz1nw', 12000.00000000, 0, 2, NULL, '中山领航科技公司12tj24', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (223, 'a88d0c04-4d16-4735-bb21-ed501deafca9', NULL, '办公器材13', '2020年新购置办公设备、电脑设备13kmk0l', 13000.00000000, 0, 1, NULL, '中山领航科技公司13w4m6', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (224, '934b0eb8-e597-42c1-94a9-bcea37addb7c', NULL, '办公器材14', '2020年新购置办公设备、电脑设备145m8rz', 14000.00000000, 0, 3, NULL, '中山领航科技公司141cif', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (225, '6658d85a-4ae7-4b9c-81dc-4fc1e94f0cef', NULL, '办公器材15', '2020年新购置办公设备、电脑设备153fdxh', 15000.00000000, 0, 3, NULL, '中山领航科技公司15adm0', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (226, '3aac958a-497b-49d4-bd53-18e6a4737fd7', NULL, '办公器材16', '2020年新购置办公设备、电脑设备16jk0z1', 16000.00000000, 0, 1, NULL, '中山领航科技公司16yw1y', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (227, '952debb0-8aa7-4e7a-84e8-13449b75e3ba', NULL, '办公器材17', '2020年新购置办公设备、电脑设备17rajse', 17000.00000000, 0, 3, NULL, '中山领航科技公司172c4m', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (228, 'cd063e57-8846-456f-b93e-e5ff23a6f6de', NULL, '办公器材18', '2020年新购置办公设备、电脑设备184baub', 18000.00000000, 0, 1, NULL, '中山领航科技公司18ku6j', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (229, '5a0ac86b-4f8c-464b-9968-fdffb1ca08d0', NULL, '办公器材19', '2020年新购置办公设备、电脑设备19a4jih', 19000.00000000, 0, 2, NULL, '中山领航科技公司19p3d8', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (230, '1d04ccb4-fd84-4a16-a569-97948ab17d67', NULL, '办公器材20', '2020年新购置办公设备、电脑设备20kqvx5', 20000.00000000, 0, 2, NULL, '中山领航科技公司20snpl', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (231, 'deff420c-e419-4791-9bb1-11e46656707a', NULL, '办公器材21', '2020年新购置办公设备、电脑设备21g16rc', 21000.00000000, 0, 1, NULL, '中山领航科技公司21vsae', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (232, 'c6b758a1-5341-40e2-857c-bcee1863e286', NULL, '办公器材22', '2020年新购置办公设备、电脑设备224iawi', 22000.00000000, 0, 2, NULL, '中山领航科技公司22n9lk', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (233, '28053e6d-d9ee-406b-b54c-6a4d71a69608', NULL, '办公器材23', '2020年新购置办公设备、电脑设备23thiec', 23000.00000000, 0, 2, NULL, '中山领航科技公司237br4', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (234, '1da520d6-79c9-4a11-abee-0b9951052554', NULL, '办公器材24', '2020年新购置办公设备、电脑设备243vjtv', 24000.00000000, 0, 1, NULL, '中山领航科技公司24fhuh', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (235, '5cf6d6d6-a036-41b2-b5b9-2d981c293594', NULL, '办公器材25', '2020年新购置办公设备、电脑设备25q4i47', 25000.00000000, 0, 1, NULL, '中山领航科技公司258dio', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (236, 'd6c09574-b510-4262-8ea0-e211bcb2275d', NULL, '办公器材26', '2020年新购置办公设备、电脑设备26dzez1', 26000.00000000, 0, 1, NULL, '中山领航科技公司26ssqp', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (237, 'e9b1d801-d0ea-4ad1-8fac-410111dfcf6f', NULL, '办公器材27', '2020年新购置办公设备、电脑设备272i8a8', 27000.00000000, 0, 1, NULL, '中山领航科技公司273kc7', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (238, '4e3be186-2d08-4f88-9172-ce062d99ca03', NULL, '办公器材28', '2020年新购置办公设备、电脑设备285ptp6', 28000.00000000, 0, 2, NULL, '中山领航科技公司287jvc', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (239, 'fc7cf339-91a8-426d-b7e7-998224df1ac5', NULL, '办公器材29', '2020年新购置办公设备、电脑设备29ac8nj', 29000.00000000, 0, 3, NULL, '中山领航科技公司29sl2h', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (240, '98d9530b-bd3d-4c6f-b102-3070c911329b', NULL, '办公器材30', '2020年新购置办公设备、电脑设备3004sqj', 30000.00000000, 0, 1, NULL, '中山领航科技公司30pqid', NULL, '2022-05-18 14:22:27', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (241, '09bf8026-2175-49ab-b42c-d09a2a25e6b7', NULL, '办公器材31', '2020年新购置办公设备、电脑设备313phzg', 31000.00000000, 0, 2, NULL, '中山领航科技公司31g3w9', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (242, '911f650b-290f-40e7-975a-a2f41ed24317', NULL, '办公器材32', '2020年新购置办公设备、电脑设备32m7776', 32000.00000000, 0, 1, NULL, '中山领航科技公司326nh0', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (243, '4e7ac569-ed8d-491b-8460-fbd4a641e713', NULL, '办公器材33', '2020年新购置办公设备、电脑设备33bvij2', 33000.00000000, 0, 1, NULL, '中山领航科技公司33vir3', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (244, 'b0f896ec-8a44-4070-ba8f-27cb6de246c9', NULL, '办公器材34', '2020年新购置办公设备、电脑设备347petb', 34000.00000000, 0, 3, NULL, '中山领航科技公司34jd1b', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (245, 'c095470f-2994-4d28-89eb-a45d620030a1', NULL, '办公器材35', '2020年新购置办公设备、电脑设备35d5u9t', 35000.00000000, 0, 2, NULL, '中山领航科技公司351pri', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (246, '33b1e73a-3c85-4b96-9cec-3aec38da8bfa', NULL, '办公器材36', '2020年新购置办公设备、电脑设备36t63f7', 36000.00000000, 0, 1, NULL, '中山领航科技公司362pgl', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (247, 'fffca2a8-c17d-4add-a199-9e110d994a1a', NULL, '办公器材37', '2020年新购置办公设备、电脑设备37o8j3o', 37000.00000000, 0, 2, NULL, '中山领航科技公司372mmj', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (248, 'ff92bdf2-c65e-420d-bd27-8d5e8f5d9194', NULL, '办公器材38', '2020年新购置办公设备、电脑设备38otw1v', 38000.00000000, 0, 3, NULL, '中山领航科技公司38us0j', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (249, '887f4d06-d991-4b3d-9cb4-cf1eedad0f68', NULL, '办公器材39', '2020年新购置办公设备、电脑设备393yk15', 39000.00000000, 0, 1, NULL, '中山领航科技公司39sl2w', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (250, '4ff74457-41c5-4722-9476-2ca6aa283114', NULL, '办公器材40', '2020年新购置办公设备、电脑设备40pj6md', 40000.00000000, 0, 1, NULL, '中山领航科技公司40atro', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (251, 'f104f1bd-4bcf-4a5e-b47e-95650a6fe2b3', NULL, '办公器材41', '2020年新购置办公设备、电脑设备41fx9j3', 41000.00000000, 0, 1, NULL, '中山领航科技公司41aojk', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (252, '48294a4d-cd8e-44ef-83d5-77ccfa886ffd', NULL, '办公器材42', '2020年新购置办公设备、电脑设备42f9r0p', 42000.00000000, 0, 2, NULL, '中山领航科技公司42jutg', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (253, '956ace3a-ec9d-46e7-a15e-a7f0bd8e06f1', NULL, '办公器材43', '2020年新购置办公设备、电脑设备437auqe', 43000.00000000, 0, 2, NULL, '中山领航科技公司43h8kf', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (254, '7071e4bd-6200-4ee6-9050-29c103e38aca', NULL, '办公器材44', '2020年新购置办公设备、电脑设备44xi7cz', 44000.00000000, 0, 1, NULL, '中山领航科技公司44j9ju', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (255, '7c906ebe-2f60-4c8b-9eaa-0fe0cd87823d', NULL, '办公器材45', '2020年新购置办公设备、电脑设备454xy31', 45000.00000000, 0, 2, NULL, '中山领航科技公司454xos', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (256, '28bc65ea-91d0-4c15-9384-1dc7844c42f6', NULL, '办公器材46', '2020年新购置办公设备、电脑设备46mt3cd', 46000.00000000, 0, 3, NULL, '中山领航科技公司4698jf', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (257, 'bf16e448-cb40-45ad-998b-3e8bacb374d2', NULL, '办公器材47', '2020年新购置办公设备、电脑设备47lxctv', 47000.00000000, 0, 1, NULL, '中山领航科技公司47lo8y', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (258, '57a693cd-d460-47af-a32b-4521ecb5e648', NULL, '办公器材48', '2020年新购置办公设备、电脑设备481kxph', 48000.00000000, 0, 2, NULL, '中山领航科技公司48q3fr', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (259, '756e15cb-44c8-429f-a505-611100d4bf98', NULL, '办公器材49', '2020年新购置办公设备、电脑设备49qiqg8', 49000.00000000, 0, 3, NULL, '中山领航科技公司49o57s', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (260, 'c5312981-96f5-4e44-a5ff-e9cd20cd4142', NULL, '办公器材50', '2020年新购置办公设备、电脑设备50sbd9k', 50000.00000000, 0, 3, NULL, '中山领航科技公司50kqaf', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (261, '03a07876-e5ce-405a-8461-e226f85dd691', NULL, '办公器材51', '2020年新购置办公设备、电脑设备51xnbc5', 51000.00000000, 0, 2, NULL, '中山领航科技公司512s39', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (262, 'd23f56cd-9c16-4631-86e2-cb23e15619fb', NULL, '办公器材52', '2020年新购置办公设备、电脑设备52kyaxa', 52000.00000000, 0, 3, NULL, '中山领航科技公司52rlxu', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (263, '4f0fd292-133e-4c39-b927-7c98fd1f9591', NULL, '办公器材53', '2020年新购置办公设备、电脑设备537cejj', 53000.00000000, 0, 1, NULL, '中山领航科技公司53ny90', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (264, '197055ab-c761-4867-a3a3-1ee29c5f37cc', NULL, '办公器材54', '2020年新购置办公设备、电脑设备54ads8o', 54000.00000000, 0, 3, NULL, '中山领航科技公司547zzs', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (265, 'b67b2c05-528f-4ca6-9587-39c0cdd1a5f7', NULL, '办公器材55', '2020年新购置办公设备、电脑设备55xwkv1', 55000.00000000, 0, 2, NULL, '中山领航科技公司553l2h', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (266, 'fdea9507-7527-47be-9a7a-f9ebf853ac3a', NULL, '办公器材56', '2020年新购置办公设备、电脑设备56f5tn0', 56000.00000000, 0, 1, NULL, '中山领航科技公司56d0sh', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (267, 'f0739044-ebb4-40e7-ae35-3ab5f6e3512a', NULL, '办公器材57', '2020年新购置办公设备、电脑设备57ej4p8', 57000.00000000, 0, 1, NULL, '中山领航科技公司572il9', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (268, '6141cc1e-9394-46c7-970e-fd3a83c989a7', NULL, '办公器材58', '2020年新购置办公设备、电脑设备581wzw3', 58000.00000000, 0, 1, NULL, '中山领航科技公司585kl2', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (269, 'e01248a8-ec6b-498a-ba2c-88997d231a72', NULL, '办公器材59', '2020年新购置办公设备、电脑设备59e12gg', 59000.00000000, 0, 3, NULL, '中山领航科技公司59l4hl', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (270, '73165a08-4dae-425f-995d-96f2db67ce2e', NULL, '办公器材60', '2020年新购置办公设备、电脑设备604rlui', 60000.00000000, 0, 3, NULL, '中山领航科技公司604eva', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (271, 'b187df88-e6e0-4267-8447-e4a831256c37', NULL, '办公器材61', '2020年新购置办公设备、电脑设备61hjv84', 61000.00000000, 0, 3, NULL, '中山领航科技公司61n1pw', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (272, '3a6f862e-2bfd-4d0d-aa01-56ae17056d2c', NULL, '办公器材62', '2020年新购置办公设备、电脑设备62uxylo', 62000.00000000, 0, 2, NULL, '中山领航科技公司62h83z', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (273, '544c066c-302a-46c1-96ba-987aac04c8ef', NULL, '办公器材63', '2020年新购置办公设备、电脑设备63hqmyl', 63000.00000000, 0, 3, NULL, '中山领航科技公司63p89t', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (274, '425af4a4-8b80-4da4-8af1-6f0c4ae411b6', NULL, '办公器材64', '2020年新购置办公设备、电脑设备643rtc2', 64000.00000000, 0, 1, NULL, '中山领航科技公司64g120', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (275, 'b12d1fc6-624a-4b88-8c49-c42b8639484f', NULL, '办公器材65', '2020年新购置办公设备、电脑设备65d5h55', 65000.00000000, 0, 3, NULL, '中山领航科技公司654lnh', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (276, '1abbbba4-24ed-456f-8653-245219a66d1a', NULL, '办公器材66', '2020年新购置办公设备、电脑设备66fiqm6', 66000.00000000, 0, 1, NULL, '中山领航科技公司669ksr', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (277, 'e5ba6ed0-4030-4e54-b1ba-0110d5cc2003', NULL, '办公器材67', '2020年新购置办公设备、电脑设备6714ef0', 67000.00000000, 0, 3, NULL, '中山领航科技公司671hwv', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (278, '8341684a-a879-4fdf-9251-7b388ef2c011', NULL, '办公器材68', '2020年新购置办公设备、电脑设备680chwf', 68000.00000000, 0, 3, NULL, '中山领航科技公司680zgt', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (279, '15867ef1-edd5-4046-b94a-038e0aa106f7', NULL, '办公器材69', '2020年新购置办公设备、电脑设备69g4nzl', 69000.00000000, 0, 1, NULL, '中山领航科技公司69bf6o', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (280, '86ec5ff3-299d-44e8-a77a-89aa92cecb20', NULL, '办公器材70', '2020年新购置办公设备、电脑设备7018axe', 70000.00000000, 0, 3, NULL, '中山领航科技公司707vom', NULL, '2022-05-18 14:22:28', NULL, '2022-05-18 14:22:27');
INSERT INTO `ticket` VALUES (281, '616fbfd68d174262af7715baa0d79419', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-05-20 10:02:43', NULL, '2022-05-20 10:02:43');
INSERT INTO `ticket` VALUES (282, 'a1be84e2b33a494e8f881dbc5724eb5a', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-05-20 10:06:06', NULL, '2022-05-20 10:06:06');
INSERT INTO `ticket` VALUES (283, '8aec9e472a204919832a9c58bd0da160', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-05-20 10:12:20', NULL, '2022-05-20 10:12:20');
INSERT INTO `ticket` VALUES (284, '9242b5b044ef4568bd62936f0d1f6d2a', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-05-20 10:16:54', NULL, '2022-05-20 10:16:54');
INSERT INTO `ticket` VALUES (285, '2efa122762be48758dad9da431c133ce', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-05-20 10:17:28', NULL, '2022-05-20 10:17:28');
INSERT INTO `ticket` VALUES (286, '5381f174c284467db7ee1b6f9b550774', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-05-20 10:18:42', NULL, '2022-05-20 10:18:42');
INSERT INTO `ticket` VALUES (287, 'd50059bae7d741a191fff90abe132297', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-05-20 10:25:57', NULL, '2022-05-20 10:25:57');
INSERT INTO `ticket` VALUES (288, 'a8f89d3e48144e26b6c1cbbee2a160a6', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-05-20 17:04:37', NULL, '2022-05-20 17:04:37');
INSERT INTO `ticket` VALUES (289, 'ba667266252549ebae0f8ec83afc24ec', NULL, '测试票据标题1', '默认测试内容;购买办公用品、办公椅、书柜书架1批，清单共20项..', 9999.00000000, 2, 1, 'test@company.com', '测试票据公司1', NULL, '2022-06-12 23:28:20', NULL, '2022-06-12 23:28:20');
INSERT INTO `ticket` VALUES (290, '3287d95e518442e58659bf2277b5f60f', NULL, '测试票据标题1', '默认测试内容;购买办公用品、办公椅、书柜书架1批，清单共20项..', 9999.00000000, 4, 1, 'test@company.com', '测试票据公司1', NULL, '2022-06-12 23:29:43', NULL, '2022-06-13 11:39:00');
INSERT INTO `ticket` VALUES (291, '26691137da574a388d79590c12b28cae', NULL, '测试票据标题1', '默认测试内容;购买办公用品、办公椅、书柜书架1批，清单共20项..', 9999.00000000, 4, 1, 'test@company.com', '测试票据公司1', NULL, '2022-06-12 23:31:01', NULL, '2022-06-13 00:05:29');
INSERT INTO `ticket` VALUES (292, 'fbc92dbf7245405ab6cfbfdadfef8a21', NULL, '测试票据标题12222', '默认测试内容;购买办公用品、办公椅、书柜书架1批，清单共20项..', 9999.00000000, 3, 1, 'test@company.com', '测试票据公司1', NULL, '2022-06-12 23:34:11', NULL, '2022-06-13 00:05:21');
INSERT INTO `ticket` VALUES (293, '326d4b6c47754fff871ac8c68ec1c103', NULL, '测试票据标题100-2022', '默认测试内容;购买办公用品、办公椅、书柜书架1批，清单共20项..', 9999.00000000, 3, 1, 'test@company.com', '432432432', NULL, '2022-06-12 23:34:51', NULL, '2022-06-13 00:04:43');
INSERT INTO `ticket` VALUES (294, '00161b50de994c54ab42823234375a77', NULL, '测试票据标题1', '默认测试内容;购买办公用品、办公椅、书柜书架1批，清单共20项..', 9999.00000000, 2, 1, 'test@company.com', '测试票据公司1', NULL, '2022-06-12 23:35:07', NULL, '2022-06-12 23:35:07');
INSERT INTO `ticket` VALUES (295, '0cf548e24a5f4d7fbd0155e617a313b4', NULL, '2022中山学院', '默认测试内容;购买办公用品、办公椅、书柜书架1批，清单共20项..', 9999.00000000, 3, 1, 'test@company.com', '测试票据公司1', NULL, '2022-06-13 11:37:54', NULL, '2022-06-13 11:38:30');

SET FOREIGN_KEY_CHECKS = 1;
