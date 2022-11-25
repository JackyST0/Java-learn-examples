/*
 Navicat MySQL Data Transfer

 Source Server         : 大蚊仔丶
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : teaching_sys

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 25/11/2022 17:58:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `credit` int NULL DEFAULT NULL,
  `semester` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `teacher_id` bigint NULL DEFAULT NULL,
  `status` smallint UNSIGNED NULL DEFAULT NULL COMMENT '课程状态，1位激活，0为关闭',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'JAVA语言程序设计', 4, '2019-2020-2', 2, 1);
INSERT INTO `course` VALUES (2, '数字逻辑设计及应用', 4, '2019-2020-2', 5, 1);
INSERT INTO `course` VALUES (3, '思政课社会实践', 2, '2019-2020-2', 4, 1);
INSERT INTO `course` VALUES (4, '体育III', 2, '2019-2020-2', 3, 1);
INSERT INTO `course` VALUES (5, '创新创业实践', 1, '2019-2020-2', 1, 1);
INSERT INTO `course` VALUES (6, '数据结构', 4, '2019-2020-1', 7, 1);
INSERT INTO `course` VALUES (7, '电路与模拟电子技术', 3, '2019-2020-1', 2, 1);
INSERT INTO `course` VALUES (8, '数据库原理与应用', 4, '2019-2020-1', 9, 1);
INSERT INTO `course` VALUES (9, '计算机网络基础', 4, '2019-2020-1', 2, 1);
INSERT INTO `course` VALUES (10, '马克思主义基本原理', 3, '2019-2020-1', 6, 0);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_no` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `home_address` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `class_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` tinyint NULL DEFAULT NULL,
  `birthday` datetime(0) NULL DEFAULT NULL,
  `enroll_time` datetime(0) NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '20180301031', '魏延', '江苏省南京市', '云计算A班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (2, '20180301032', '陈芳', '广东中山市', '软件工程A', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (3, '20180301033', '何苗', '江苏省南京市', '软件工程B班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (4, '20180301034', '龙光传', '广东中山市', '计算机科学A班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (5, '20180301035', '赵明堂', '上海市', '软件工程A班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (6, '20180301035', '邓丽', '广东中山市', '软件工程A班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (7, '20180301036', '罗索', '广东深圳市', '人工智能A班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (8, '20180301037', '李丽芬', '江苏省南京市', '云计算A班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (9, '20180301038', '王玥', '广东深圳市', '人工智能A班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (10, '20180301039', '张强', '北京市西城区莲花路1号', '人工智能A班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (11, '20180301040', '李丹', '广东广州市', '人工智能A班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (12, '20180301041', '莫桑', '广东广州市', '云计算A班', 1, '1999-11-21 00:00:00', '2018-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (13, '20210202150', '张丹峰', '中山市石岐区学院路2号', '软件工程A班', 1, '1992-03-22 00:00:00', '2021-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES (17, '2021uom319vf', 'ksmnwe', 'nnhc2bpxvk20089r', 'oxglqz4w', 0, '2022-01-09 19:12:38', NULL, NULL);
INSERT INTO `student` VALUES (18, '2021l87w10gu', 'tifgg8', 'jsjwdqpq368d7zl7', 'mtz8ppzk', 0, '2021-12-29 18:12:38', NULL, NULL);
INSERT INTO `student` VALUES (19, '2021mxfhyt3y', 'uvxalr', 'i5um0i88ovrctc2o', '8x2cikim', 0, '2022-02-07 22:12:38', NULL, NULL);
INSERT INTO `student` VALUES (20, '20211p2z44u5', 'bgkjw4', 'zkh6uxohs1vph9fa', 'ovkg462b', 0, '2022-01-02 18:12:38', NULL, NULL);
INSERT INTO `student` VALUES (21, '202176b57eau', 'llzsha', '1gb6p0l083jfhqun', '4a4ze6rp', 0, '2022-02-03 07:12:38', NULL, NULL);

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint NULL DEFAULT NULL,
  `course_id` bigint NULL DEFAULT NULL,
  `score` decimal(10, 0) NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL,
  `credit_hour` tinyint NULL DEFAULT NULL COMMENT '学时',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES (1, 1, 2, 88, 1, 36);
INSERT INTO `student_course` VALUES (2, 1, 4, 67, 1, 48);
INSERT INTO `student_course` VALUES (3, 2, 10, 93, 1, 48);
INSERT INTO `student_course` VALUES (4, 2, 8, 96, 1, 64);
INSERT INTO `student_course` VALUES (5, 2, 5, 73, 1, 36);
INSERT INTO `student_course` VALUES (6, 3, 3, 88, 1, 64);
INSERT INTO `student_course` VALUES (7, 2, 7, 77, 1, 64);
INSERT INTO `student_course` VALUES (8, 4, 9, 59, 0, 48);
INSERT INTO `student_course` VALUES (9, 3, 6, 61, 1, 64);
INSERT INTO `student_course` VALUES (10, 20180403046, 1, 99, 1, 36);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `office` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `cellphone` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `title` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(3) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `staff_type` tinyint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '胡海冰', '厚德楼807', 43, '743674646@qq.com', '15820558632', '讲师', NULL, '2021-12-05 13:18:55', 000, 2);
INSERT INTO `teacher` VALUES (2, '董欣怡', '树德楼101', 36, '185767944@qq.com', '13564857485', '助教', NULL, NULL, 001, 1);
INSERT INTO `teacher` VALUES (3, '何剑锋', '厚德楼821', 55, 'hr95214827liaodao@163.com', '18643758675', '讲师', NULL, NULL, 000, 3);
INSERT INTO `teacher` VALUES (4, '林展成', '树德楼101', 37, '64858311@qq.com', '17945637455', '教授', NULL, NULL, 000, 2);
INSERT INTO `teacher` VALUES (5, '孙鹏', '树德楼201', 57, 'oko7190962ta@163.com', '15836475823', '教授', NULL, NULL, 000, 1);
INSERT INTO `teacher` VALUES (6, '蔡敏纯', '厚德楼506', 45, 'sojc9545341shansi@163.com', '16437584654', '副教授', NULL, NULL, 000, NULL);

SET FOREIGN_KEY_CHECKS = 1;
