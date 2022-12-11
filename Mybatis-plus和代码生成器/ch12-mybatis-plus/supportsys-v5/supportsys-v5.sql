/*
 Navicat MySQL Data Transfer

 Source Server         : 大蚊仔丶
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : supportsys-v5

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/12/2022 21:34:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 主键id',
  `role` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色标识 角色标识符，形式为: ROLE_角色名称, 例如ROLE_ADMIN',
  `role_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色中文名称 角色中文名称',
  `status` tinyint NULL DEFAULT NULL COMMENT '角色状态 0-禁用；1-正常',
  `description` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述 角色的详细描述',
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'ADMIN', '管理员', 1, NULL, '2021-06-19 22:23:01', NULL, NULL, '2022-11-27 16:16:20');
INSERT INTO `sys_role` VALUES (7, 'COMMON', '普通管理员', 1, '......', NULL, '2022-05-07 19:17:50', NULL, '2022-05-07 21:54:48');
INSERT INTO `sys_role` VALUES (9, 'USER', '普通用户', 1, '普通用户', NULL, '2022-05-07 21:55:09', NULL, '2022-05-07 21:55:09');
INSERT INTO `sys_role` VALUES (10, 'AUDITOR', '系统审核员', 1, '系统审核员', NULL, '2022-05-07 21:55:28', NULL, '2022-05-07 21:55:28');
INSERT INTO `sys_role` VALUES (11, 'SUPER_ADMIN', '超级管理员', 1, '具有最高权限', NULL, '2022-05-07 21:55:56', NULL, '2022-05-07 21:55:56');

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
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'user660', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'tur9@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (2, 'user873', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '7i86@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (3, 'user494', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '6mcd@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (4, 'user265', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'fdzr@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (5, 'user240', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '7qsg@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (6, 'user681', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '64ir@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (7, 'user270', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'eabo@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (8, 'user694', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '3d6x@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (9, 'user544', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'jvhe@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (10, 'user058', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'em03@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (11, 'user053', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '1ith@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (12, 'user795', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '7ftx@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (13, 'user622', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '2t6t@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (14, 'user445', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '6i4l@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (15, 'user663', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'f122@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (16, 'user731', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'vr69@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (17, 'user660', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'nr2b@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (18, 'user111', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'baqb@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (19, 'user204', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'eyd5@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (20, 'user621', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'fzep@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (21, 'user860', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '6sec@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (22, 'user576', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'o5yo@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (23, 'user520', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'wm51@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (24, 'user541', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'q74p@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (25, 'user378', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '0097@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (26, 'user889', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'enus@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (27, 'user835', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'wq5z@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (28, 'user524', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'ub0o@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (29, 'user950', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'z8vc@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (30, 'user737', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'k3rh@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (31, 'user681', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'qv9q@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (32, 'user686', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 's48x@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (33, 'user042', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '03il@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (34, 'user722', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'pj9h@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (35, 'user622', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'cpqq@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (36, 'user826', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '4ymf@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (37, 'user742', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'habs@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (38, 'user733', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'mbsq@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (39, 'user907', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'x299@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (40, 'user701', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'xye6@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (41, 'user400', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'qstx@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (42, 'user790', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'm40y@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (43, 'user111', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'wpet@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:15:59', NULL, '2021-12-23 11:15:59');
INSERT INTO `sys_user` VALUES (44, 'user690', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'v9jz@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (45, 'user602', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'vse6@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (46, 'user283', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'nguk@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (47, 'user590', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'ayt0@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (48, 'user924', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'q8b0@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (49, 'user854', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', 'ea15@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (50, 'user112', '$2a$10$Z9npjoRWXrqW0cwn2I6jru7Dy4xVCUbyqwJRIUSmO/a.lz1bF1xlS', '3xiv@qq.com', '13549895080', 'Java爱好者', 'WildLion', 1, NULL, '2021-12-23 11:16:00', NULL, '2021-12-23 11:16:00');
INSERT INTO `sys_user` VALUES (51, 'user053', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'ma7w@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (52, 'user972', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'uca5@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (53, 'user663', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'nev9@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (54, 'user354', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'hm9e@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (55, 'user369', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '21bj@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (56, 'user274', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '1eu5@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (57, 'user519', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'ls84@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (58, 'user756', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'xosc@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (59, 'user861', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', '9p0h@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
INSERT INTO `sys_user` VALUES (60, 'user792', '$2a$10$IaBIt14Ij.9yrluSxiLqVuJnVPj6Do1VX2Tp9.GwCAt1BerB9F.ma', 'nrnv@qq.com', '13549895080', 'Java爱好者', 'WildLion', 0, NULL, '2021-12-26 16:20:43', NULL, '2021-12-26 16:20:43');
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
INSERT INTO `sys_user` VALUES (101, '', NULL, '', '', '个人信息描述', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (102, '', NULL, '', '', '个人信息描述', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (103, '', NULL, '', '', '个人信息描述', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (104, '', NULL, '', '', '个人信息描述', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (105, '44444', NULL, 'test@email.com', '13549898620', '个人信息描述', NULL, 1, NULL, '2022-05-07 21:46:23', NULL, '2022-05-07 21:46:23');
INSERT INTO `sys_user` VALUES (106, '3333', NULL, 'test@email.com', '13549898620', '个人信息描述', NULL, 1, NULL, '2022-05-07 21:52:39', NULL, '2022-05-07 21:52:39');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id 自增主键id',
  `user_id` bigint NOT NULL COMMENT '用户id 用户id',
  `role_id` bigint NOT NULL COMMENT '角色id 角色id',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建人',
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 105, 3, '2022-05-07 21:46:23', NULL, NULL, '2022-05-07 21:46:23');
INSERT INTO `sys_user_role` VALUES (2, 105, 6, '2022-05-07 21:46:23', NULL, NULL, '2022-05-07 21:46:23');
INSERT INTO `sys_user_role` VALUES (3, 105, 7, '2022-05-07 21:46:23', NULL, NULL, '2022-05-07 21:46:23');
INSERT INTO `sys_user_role` VALUES (4, 106, 3, '2022-05-07 21:52:39', NULL, NULL, '2022-05-07 21:52:39');

SET FOREIGN_KEY_CHECKS = 1;
