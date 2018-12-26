/*
 Navicat Premium Data Transfer

 Source Server         : wang
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : lems

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 26/12/2018 21:31:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buy
-- ----------------------------
DROP TABLE IF EXISTS `buy`;
CREATE TABLE `buy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expirationDate` datetime(0) NULL DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buy
-- ----------------------------
INSERT INTO `buy` VALUES (1, '联想电脑', '电脑', 'E75', '23寸', 3999.00, 3, '联想', '2022-01-08 00:00:00', '小明', '待购买');
INSERT INTO `buy` VALUES (2, '联想电脑', '电脑', 'E78', '28寸', 4999.00, 5, '联想', '2022-01-08 00:00:00', '小明', '已购买');
INSERT INTO `buy` VALUES (3, '华为电脑', '电脑', 'C57', '23寸', 6999.00, 6, '华为', '2022-05-01 00:00:00', '小李', '已购买');
INSERT INTO `buy` VALUES (4, '华为电脑', '电脑', 'B45', '28寸', 5999.00, 3, '华为', '2022-01-08 00:00:00', '小张', '已购买');
INSERT INTO `buy` VALUES (5, '联想电脑', '电脑', 'E75', '23寸', 3799.00, 2, '联想', '2022-10-08 00:00:00', '小明', '已购买');
INSERT INTO `buy` VALUES (6, '华为电脑', '华为', 'E75', '23寸', 4999.00, 5, '华为', '2018-12-17 08:00:00', '小明', '已购买');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expirationDate` datetime(0) NULL DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (1, '电脑', '联想电脑', 'B34', '23寸', 5999.00, '2018-12-05 09:47:37', '联想', '2022-08-13 09:47:55', '小李', '正常');
INSERT INTO `equipment` VALUES (2, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2018-12-05 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (3, '投影仪', '瑞士达投影仪', 'M2', '1080p', 300.00, '2018-12-03 09:52:02', '瑞士达', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (4, '电脑', '联想电脑', 'B34', '23寸', 5999.00, '2018-12-05 09:47:37', '联想', '2022-08-13 09:47:55', '小李', '正常');
INSERT INTO `equipment` VALUES (5, '电脑', '联想电脑', 'B34', '23寸', 5999.00, '2018-12-05 09:47:37', '联想', '2022-08-13 09:47:55', '小李', '正常');
INSERT INTO `equipment` VALUES (6, '电脑', '联想电脑', 'B34', '23寸', 5999.00, '2018-12-05 09:47:37', '联想', '2022-08-13 09:47:55', '小李', '正常');
INSERT INTO `equipment` VALUES (7, '电脑', '联想电脑', 'B34', '23寸', 5999.00, '2018-12-05 09:47:37', '联想', '2022-08-13 09:47:55', '小李', '正常');
INSERT INTO `equipment` VALUES (8, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2018-12-05 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (9, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2018-12-05 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (10, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2018-12-05 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (11, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2018-12-05 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (12, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2018-12-05 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (13, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2018-12-05 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (14, '投影仪', '瑞士达投影仪', 'M2', '1080p', 300.00, '2018-12-03 09:52:02', '瑞士达', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (15, '投影仪', '瑞士达投影仪', 'M2', '1080p', 300.00, '2018-12-03 09:52:02', '瑞士达', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (16, '投影仪', '瑞士达投影仪', 'M2', '1080p', 300.00, '2018-12-03 09:52:02', '瑞士达', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (17, '投影仪', '瑞士达投影仪', 'M2', '1080p', 300.00, '2018-12-03 09:52:02', '瑞士达', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (18, '投影仪', '光米投影仪', 'T5', '1080p', 900.00, '2018-12-03 09:52:02', '光米', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (19, '投影仪', '光米投影仪', 'T5', '1080p', 900.00, '2018-12-03 09:52:02', '光米', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (20, '投影仪', '光米投影仪', 'T5', '1080p', 900.00, '2018-12-03 09:52:02', '光米', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (21, '电脑', '华为电脑', 'C57', '23寸', 6999.00, '2017-10-05 09:47:37', '华为', '2021-08-13 09:47:55', '小李', '正常');
INSERT INTO `equipment` VALUES (22, '电脑', '华为电脑', 'C57', '23寸', 6999.00, '2017-10-05 09:47:37', '华为', '2021-08-13 09:47:55', '小李', '正常');
INSERT INTO `equipment` VALUES (23, '电脑', '华为电脑', 'C57', '23寸', 6999.00, '2015-10-05 09:47:37', '华为', '2021-08-13 09:47:55', '小李', '正常');
INSERT INTO `equipment` VALUES (24, '电脑', '华为电脑', 'C57', '23寸', 6999.00, '2017-10-05 09:47:37', '华为', '2021-08-13 09:47:55', '小李', '正常');
INSERT INTO `equipment` VALUES (25, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2017-10-28 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (26, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2017-10-28 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (27, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2015-10-28 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (28, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2017-10-28 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '正常');
INSERT INTO `equipment` VALUES (29, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2017-10-28 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '报修');
INSERT INTO `equipment` VALUES (30, '显示屏', '三星显示屏', 'A45', '28寸', 1299.00, '2014-10-28 09:49:41', '三星', '2024-01-19 09:49:50', '小张', '报废');
INSERT INTO `equipment` VALUES (31, '投影仪', '瑞士达投影仪', 'M2', '1080p', 300.00, '2017-10-27 09:52:02', '瑞士达', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (32, '投影仪', '瑞士达投影仪', 'M2', '1080p', 300.00, '2017-10-27 09:52:02', '瑞士达', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (33, '投影仪', '瑞士达投影仪', 'M2', '1080p', 300.00, '2017-10-27 09:52:02', '瑞士达', '2022-07-29 09:52:14', '小赵', '报修');
INSERT INTO `equipment` VALUES (34, '投影仪', '瑞士达投影仪', 'M2', '1080p', 300.00, '2017-10-27 09:52:02', '瑞士达', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (35, '投影仪', '光米投影仪', 'T5', '1080p', 900.00, '2016-10-27 09:52:02', '光米', '2022-07-29 09:52:14', '小赵', '正常');
INSERT INTO `equipment` VALUES (36, '投影仪', '光米投影仪', 'T5', '1080p', 900.00, '2016-10-27 09:52:02', '光米', '2022-07-29 09:52:14', '小赵', '报废');
INSERT INTO `equipment` VALUES (37, '投影仪', '光米投影仪', 'T5', '1080p', 900.00, '2016-10-27 09:52:02', '光米', '2022-07-29 09:52:14', '小赵', '报废');
INSERT INTO `equipment` VALUES (38, '电脑', '联想电脑', 'E75', '23寸', 3799.00, '2018-12-23 17:51:31', '联想', '2022-10-08 00:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (39, '电脑', '联想电脑', 'E75', '23寸', 3799.00, '2018-12-23 17:56:27', '联想', '2022-10-08 00:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (40, '电脑', '联想电脑', 'E78', '28寸', 4999.00, '2018-12-23 17:58:59', '联想', '2022-01-08 00:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (41, '电脑', '联想电脑', 'E78', '28寸', 4999.00, '2018-12-23 17:58:59', '联想', '2022-01-08 00:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (42, '电脑', '联想电脑', 'E78', '28寸', 4999.00, '2018-12-23 17:58:59', '联想', '2022-01-08 00:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (43, '电脑', '联想电脑', 'E78', '28寸', 4999.00, '2018-12-23 17:58:59', '联想', '2022-01-08 00:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (44, '电脑', '联想电脑', 'E78', '28寸', 4999.00, '2018-12-23 17:58:59', '联想', '2022-01-08 00:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (45, '电脑', '华为电脑', 'B45', '28寸', 5999.00, '2018-12-23 18:06:17', '华为', '2022-01-08 00:00:00', '小张', '正常');
INSERT INTO `equipment` VALUES (46, '电脑', '华为电脑', 'B45', '28寸', 5999.00, '2018-12-23 18:06:17', '华为', '2022-01-08 00:00:00', '小张', '正常');
INSERT INTO `equipment` VALUES (47, '电脑', '华为电脑', 'B45', '28寸', 5999.00, '2018-12-23 18:06:17', '华为', '2022-01-08 00:00:00', '小张', '正常');
INSERT INTO `equipment` VALUES (48, '电脑', '联想电脑', 'E75', '23寸', 3799.00, '2018-12-23 18:16:09', '联想', '2022-10-08 00:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (49, '电脑', '联想电脑', 'E75', '23寸', 3799.00, '2018-12-23 18:16:09', '联想', '2022-10-08 00:00:00', '小明', '报修');
INSERT INTO `equipment` VALUES (50, '电脑', '联想电脑', 'E75', '23寸', 3799.00, '2018-12-23 18:53:47', '联想', '2022-10-08 00:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (51, '电脑', '联想电脑', 'E75', '23寸', 3799.00, '2018-12-23 18:53:47', '联想', '2022-10-08 00:00:00', '小明', '报修');
INSERT INTO `equipment` VALUES (52, '华为', '华为电脑', 'E75', '23寸', 4999.00, '2018-12-25 15:57:27', '华为', '2018-12-17 08:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (53, '华为', '华为电脑', 'E75', '23寸', 4999.00, '2018-12-25 15:57:27', '华为', '2018-12-17 08:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (54, '华为', '华为电脑', 'E75', '23寸', 4999.00, '2018-12-25 15:57:27', '华为', '2018-12-17 08:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (55, '华为', '华为电脑', 'E75', '23寸', 4999.00, '2018-12-25 15:57:27', '华为', '2018-12-17 08:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (56, '华为', '华为电脑', 'E75', '23寸', 4999.00, '2018-12-25 15:57:27', '华为', '2018-12-17 08:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (57, '华为', '华为电脑', 'E75', '23寸', 4999.00, '2018-12-25 16:21:24', '华为', '2018-12-17 08:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (58, '华为', '华为电脑', 'E75', '23寸', 4999.00, '2018-12-25 16:21:24', '华为', '2018-12-17 08:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (59, '华为', '华为电脑', 'E75', '23寸', 4999.00, '2018-12-25 16:21:24', '华为', '2018-12-17 08:00:00', '小明', '正常');
INSERT INTO `equipment` VALUES (60, '华为', '华为电脑', 'E75', '23寸', 4999.00, '2018-12-25 16:21:24', '华为', '2018-12-17 08:00:00', '小明', '报修');
INSERT INTO `equipment` VALUES (61, '华为', '华为电脑', 'E75', '23寸', 4999.00, '2018-12-25 16:21:24', '华为', '2018-12-17 08:00:00', '小明', '报修');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `repairFactory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `responsible` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `equId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `equ_rep`(`equId`) USING BTREE,
  CONSTRAINT `equ_rep` FOREIGN KEY (`equId`) REFERENCES `equipment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES (1, '2018-12-13 10:16:18', '三星显示屏', '盛通', '300.00', '小刘', '没修好', 28);
INSERT INTO `repair` VALUES (2, '2018-12-03 10:21:28', '瑞士达投影仪', '盛通', '120.00', '小刘', '已修好', 32);
INSERT INTO `repair` VALUES (3, '2018-12-12 10:20:10', '瑞士达投影仪', '盛通', '260.00', '小刘', '已修好', 33);
INSERT INTO `repair` VALUES (4, '2018-12-23 19:47:21', '联想电脑', '盛通', '160', '小刘', '已修好', 51);
INSERT INTO `repair` VALUES (7, '2018-12-25 16:57:50', '华为电脑', '盛通', '110', '责任人--待处理', '已修好', 61);
INSERT INTO `repair` VALUES (8, '2018-12-25 16:59:05', '华为电脑', NULL, NULL, '责任人--待处理', '待修理', 60);
INSERT INTO `repair` VALUES (9, '2018-12-25 18:29:00', '华为电脑', NULL, NULL, '责任人--待处理', '待修理', 61);
INSERT INTO `repair` VALUES (10, '2018-12-25 18:30:33', '华为电脑', NULL, NULL, '责任人--待处理', '待修理', 60);

-- ----------------------------
-- Table structure for scrap
-- ----------------------------
DROP TABLE IF EXISTS `scrap`;
CREATE TABLE `scrap`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `responsible` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `equId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `equ_scr`(`equId`) USING BTREE,
  CONSTRAINT `equ_scr` FOREIGN KEY (`equId`) REFERENCES `equipment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scrap
-- ----------------------------
INSERT INTO `scrap` VALUES (1, '2018-10-11 10:24:45', '三星显示屏', 1299.00, '小张', '审批通过', 30);
INSERT INTO `scrap` VALUES (2, '2018-12-13 10:26:42', '光米投影仪', 900.00, '小张', '审批通过', 36);
INSERT INTO `scrap` VALUES (3, '2018-10-15 10:27:29', '光米投影仪', 900.00, '小张', '审批通过', 37);
INSERT INTO `scrap` VALUES (4, '2018-12-23 20:23:08', '联想电脑', 3799.00, '小刘', '待审批', 50);
INSERT INTO `scrap` VALUES (5, '2018-12-23 20:25:25', '联想电脑', 3799.00, '小刘', '审批通过', 49);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(11) NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'admin', 1, '超级管理员');
INSERT INTO `user` VALUES ('chen', '123456', 1, '陈');
INSERT INTO `user` VALUES ('chen1', '123456', 1, '爱可登噶开始高大上');
INSERT INTO `user` VALUES ('wu', 'wu', 2, '吴');
INSERT INTO `user` VALUES ('zhang', 'zhang', 2, '张');
INSERT INTO `user` VALUES ('奥术大师大多', 'as da d', 1, '洒水大所多');
INSERT INTO `user` VALUES ('撒打算大所大所', '', 1, '撒大大');

SET FOREIGN_KEY_CHECKS = 1;
