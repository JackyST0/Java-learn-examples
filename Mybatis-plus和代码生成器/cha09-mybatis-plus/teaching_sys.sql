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

 Date: 11/12/2022 21:33:55
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
INSERT INTO `student` VALUES (1, '20180301031', '魏延', '江苏省南京市', '云计算A班000', 0, '1999-11-21 00:00:00', '2018-09-01 00:00:00', 1);
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
) ENGINE = InnoDB AUTO_INCREMENT = 1523490195625725956 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '魏延', '厚德楼807', 43, '743674646@qq.com', '15820558632', '讲师', NULL, '2022-05-14 16:01:44', 000, 2);
INSERT INTO `teacher` VALUES (2, '董欣怡', '树德楼101', 36, '185767944@qq.com', '13564857485', '助教', NULL, NULL, 001, 1);
INSERT INTO `teacher` VALUES (3, '何剑锋', '厚德楼821', 55, 'hr95214827liaodao@163.com', '18643758675', '讲师', NULL, NULL, 000, 3);
INSERT INTO `teacher` VALUES (4, '林展成', '树德楼101', 37, '64858311@qq.com', '17945637455', '教授', NULL, NULL, 000, 2);
INSERT INTO `teacher` VALUES (5, '孙鹏', '树德楼201', 57, 'oko7190962ta@163.com', '15836475823', '教授', NULL, NULL, 000, 1);
INSERT INTO `teacher` VALUES (6, '蔡敏纯', '厚德楼506', 45, 'sojc9545341shansi@163.com', '16437584654', '副教授', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (7, '梁耀辉', '实验楼607', 44, 'zhangxindeailian4@163.com', '13234875698', '副教授', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (8, '罗江洪', '实验楼605', 47, '965310623@qq.com', '13646978034', '教授', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (9, '杨子风', '厚德楼809', 38, '10374565@163.com', '15623457486', '讲师', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (10, '徐育明', '明德楼708', 45, '4758375@qq.com', '13154678987', '讲师', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (12, '钱一飞', '厚德楼708', 40, '', '13549998800', '教授', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (13, '杨明2', '厚德楼708', 55, 'yangming@gmail.com', '13549998800', '副教授', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (14, '杨明3', '厚德楼708', 40, '', '13549998800', '讲师', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (15, '李莎', '明德楼502', 34, 'li@aliyun.com', '13549896090', '助教', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (16, '王飞', '明德楼502', 24, 'li@aliyun.com', '13549896050', '助教', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (17, '王一', '明德楼502', 28, 'li@aliyun.com', '13549896050', '助教', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (20, '李丽莎', '明德楼502', 34, 'li@aliyun.com', '13549896090', '讲师', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (22, '杨子玉', '明德楼808', 22, 'yangming@163.com', '13549800989', '副教授', NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (23, '杨桂宏', '明德楼808', 43, 'yangming@126.com', '13549800989', NULL, NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (24, '杨菲菲', '明德楼808', 33, 'yangming@126.com', '13549800989', NULL, NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (25, '罗明', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, 000, NULL);
INSERT INTO `teacher` VALUES (26, '陈敏', '明德楼808', 26, 'yangming@126.com', '13549800989', NULL, '2021-12-03 22:09:18', '2021-12-03 22:09:18', 000, NULL);
INSERT INTO `teacher` VALUES (27, '赵东', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2021-12-03 22:16:38', '2021-12-03 22:16:38', 000, NULL);
INSERT INTO `teacher` VALUES (31, '何雯雯', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2021-12-04 13:42:59', '2021-12-04 13:42:59', NULL, NULL);
INSERT INTO `teacher` VALUES (32, '李子梅', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2021-12-04 13:45:21', '2021-12-04 13:45:21', NULL, NULL);
INSERT INTO `teacher` VALUES (33, '范明华', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2021-12-04 13:47:59', '2021-12-04 13:47:59', NULL, 1);
INSERT INTO `teacher` VALUES (34, '王芳', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2021-12-04 13:49:15', '2021-12-04 13:49:15', NULL, 1);
INSERT INTO `teacher` VALUES (35, '孙浩然', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2021-12-04 13:51:33', '2021-12-04 13:51:33', 000, 1);
INSERT INTO `teacher` VALUES (36, '胡海冰', '厚德楼807', 43, '743674646@qq.com', '15820558632', NULL, '2021-12-04 13:56:52', '2021-12-04 13:56:52', 000, 3);
INSERT INTO `teacher` VALUES (37, '夏梅梅', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2021-12-04 18:46:19', '2021-12-04 18:46:19', 000, 1);
INSERT INTO `teacher` VALUES (38, '胡海冰', '厚德楼807', 43, '743674646@qq.com', '15820558632', NULL, '2021-12-04 19:01:56', '2021-12-04 19:01:56', 000, 3);
INSERT INTO `teacher` VALUES (59, '杨明', '明德楼808', 55, 'yangming@126.com', '13549800989', NULL, '2021-12-05 13:18:19', '2021-12-05 13:18:19', 000, NULL);
INSERT INTO `teacher` VALUES (60, '杨明', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (61, '杨明22', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 10:30:33', '2022-03-11 10:30:33', NULL, NULL);
INSERT INTO `teacher` VALUES (62, '杨明22', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 10:32:20', '2022-03-11 10:32:20', NULL, NULL);
INSERT INTO `teacher` VALUES (63, '杨明22', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 10:51:02', '2022-03-11 10:51:02', NULL, NULL);
INSERT INTO `teacher` VALUES (64, '杨32', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 10:51:28', '2022-03-11 10:51:28', NULL, NULL);
INSERT INTO `teacher` VALUES (65, '杨32', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 10:52:22', '2022-03-11 10:52:22', NULL, NULL);
INSERT INTO `teacher` VALUES (66, '杨32', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 10:56:17', '2022-03-11 10:56:17', NULL, NULL);
INSERT INTO `teacher` VALUES (67, '杨32', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 10:57:15', '2022-03-11 10:57:15', NULL, NULL);
INSERT INTO `teacher` VALUES (68, '662', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 10:57:36', '2022-03-11 10:57:36', NULL, NULL);
INSERT INTO `teacher` VALUES (69, '662', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 10:58:59', '2022-03-11 10:58:59', NULL, NULL);
INSERT INTO `teacher` VALUES (70, 'Ins0', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (71, 'Ins1', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (72, 'Ins2', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (73, 'Ins3', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (74, 'Ins4', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (75, 'Ins5', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (76, 'Ins6', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (77, 'Ins7', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (78, 'Ins8', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (79, 'Ins9', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (80, 'Ins0', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, '2022-03-11 12:48:29', NULL, NULL);
INSERT INTO `teacher` VALUES (81, 'Ins1', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, '2022-03-11 12:48:29', NULL, NULL);
INSERT INTO `teacher` VALUES (82, 'Ins2', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, '2022-03-11 12:48:29', NULL, NULL);
INSERT INTO `teacher` VALUES (83, 'Ins3', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, '2022-03-11 12:48:29', NULL, NULL);
INSERT INTO `teacher` VALUES (84, 'Ins4', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, '2022-03-11 12:48:29', NULL, NULL);
INSERT INTO `teacher` VALUES (85, 'Ins5', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, '2022-03-11 12:48:29', NULL, NULL);
INSERT INTO `teacher` VALUES (86, 'Ins6', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, '2022-03-11 12:48:29', NULL, NULL);
INSERT INTO `teacher` VALUES (87, 'Ins7', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, '2022-03-11 12:48:29', NULL, NULL);
INSERT INTO `teacher` VALUES (88, 'Ins8', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, '2022-03-11 12:48:29', NULL, NULL);
INSERT INTO `teacher` VALUES (89, 'Ins9', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, NULL, '2022-03-11 12:48:29', NULL, NULL);
INSERT INTO `teacher` VALUES (92, 'service2', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:54:51', '2022-03-11 18:54:50', NULL, NULL);
INSERT INTO `teacher` VALUES (93, 'service3', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:54:51', '2022-03-11 18:54:50', NULL, NULL);
INSERT INTO `teacher` VALUES (94, 'service4', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:54:51', '2022-03-11 18:54:50', NULL, NULL);
INSERT INTO `teacher` VALUES (95, 'service5', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:54:51', '2022-03-11 18:54:50', NULL, NULL);
INSERT INTO `teacher` VALUES (96, 'service6', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:54:51', '2022-03-11 18:54:50', NULL, NULL);
INSERT INTO `teacher` VALUES (97, 'service7', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:54:51', '2022-03-11 18:54:50', NULL, NULL);
INSERT INTO `teacher` VALUES (98, 'service8', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:54:51', '2022-03-11 18:54:50', NULL, NULL);
INSERT INTO `teacher` VALUES (99, 'service9', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:54:51', '2022-03-11 18:54:50', NULL, NULL);
INSERT INTO `teacher` VALUES (100, 'service-0', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:55:26', '2022-03-11 18:55:26', NULL, NULL);
INSERT INTO `teacher` VALUES (101, 'service-1', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:55:26', '2022-03-11 18:55:26', NULL, NULL);
INSERT INTO `teacher` VALUES (102, 'service-2', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:55:26', '2022-03-11 18:55:26', NULL, NULL);
INSERT INTO `teacher` VALUES (103, 'service-3', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:55:26', '2022-03-11 18:55:26', NULL, NULL);
INSERT INTO `teacher` VALUES (104, 'service-4', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:55:26', '2022-03-11 18:55:26', NULL, NULL);
INSERT INTO `teacher` VALUES (105, 'service-5', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:55:26', '2022-03-11 18:55:26', NULL, NULL);
INSERT INTO `teacher` VALUES (106, 'service-6', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:55:26', '2022-03-11 18:55:26', NULL, NULL);
INSERT INTO `teacher` VALUES (107, 'service-7', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:55:26', '2022-03-11 18:55:26', NULL, NULL);
INSERT INTO `teacher` VALUES (108, 'service-8', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:55:26', '2022-03-11 18:55:26', NULL, NULL);
INSERT INTO `teacher` VALUES (109, 'service-9', '明德楼808', 22, 'yangming@126.com', '13549800989', NULL, '2022-03-11 18:55:26', '2022-03-11 18:55:26', NULL, NULL);
INSERT INTO `teacher` VALUES (110, '杨', NULL, 8000, '126', NULL, NULL, '2022-05-08 20:12:23', '2022-05-09 10:39:55', NULL, NULL);
INSERT INTO `teacher` VALUES (111, '杨0', NULL, NULL, '126', NULL, NULL, '2022-05-08 20:15:11', '2022-05-08 20:15:11', NULL, NULL);
INSERT INTO `teacher` VALUES (112, '杨1', NULL, NULL, '126', NULL, NULL, '2022-05-08 20:15:11', '2022-05-08 20:15:11', NULL, NULL);
INSERT INTO `teacher` VALUES (113, '杨2', NULL, NULL, '126', NULL, NULL, '2022-05-08 20:15:11', '2022-05-08 20:15:11', NULL, NULL);
INSERT INTO `teacher` VALUES (114, '杨3', NULL, NULL, '126', NULL, NULL, '2022-05-08 20:15:11', '2022-05-08 20:15:11', NULL, NULL);
INSERT INTO `teacher` VALUES (115, '杨4', NULL, NULL, '126', NULL, NULL, '2022-05-08 20:15:11', '2022-05-08 20:15:11', NULL, NULL);
INSERT INTO `teacher` VALUES (116, '杨5', NULL, NULL, '126', NULL, NULL, '2022-05-08 20:15:11', '2022-05-08 20:15:11', NULL, NULL);
INSERT INTO `teacher` VALUES (1523490195625725954, 'AIbbc', NULL, 10000, 'ai@ai.com', '000999000', NULL, '2022-05-09 10:29:02', '2022-05-09 10:29:02', NULL, NULL);
INSERT INTO `teacher` VALUES (1523490195625725956, '杨', NULL, NULL, '126', NULL, NULL, '2022-05-09 11:22:31', '2022-05-09 11:22:31', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
