/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : db_hotel

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 18/06/2021 20:56:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `deptname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `createDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '股东会', '1楼', '2021-05-06 21:05:44', ' ');
INSERT INTO `sys_dept` VALUES (2, '销售部', '2楼', '2021-05-06 20:47:53', '一级');
INSERT INTO `sys_dept` VALUES (3, '行政部', '3楼', '2021-05-06 20:48:14', '一级');
INSERT INTO `sys_dept` VALUES (4, '综合部', '4楼', '2021-05-06 20:48:39', '瓦德瓦');
INSERT INTO `sys_dept` VALUES (5, '董事会', '5楼', NULL, 'ewqr');
INSERT INTO `sys_dept` VALUES (13, '测试', '测试', '2021-05-07 09:58:12', '从');
INSERT INTO `sys_dept` VALUES (14, '不知道什么部门', '不知道那一层楼', '2021-05-07 09:59:01', '随便吧');
INSERT INTO `sys_dept` VALUES (15, '营业', '2', '2021-05-07 11:09:43', '');
INSERT INTO `sys_dept` VALUES (16, '研发部', '10', '2021-05-07 14:28:00', '研发部的小哥哥小姐姐都好厉害！！！我电脑出问题了，都是他们帮忙解决的');
INSERT INTO `sys_dept` VALUES (17, 'aop', '4w', '2021-06-02 21:40:42', 'aop001');
INSERT INTO `sys_dept` VALUES (18, '管理部', '32楼', '2021-06-06 20:57:17', '管理员');

-- ----------------------------
-- Table structure for sys_employee
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee`;
CREATE TABLE `sys_employee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `loginpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别（1-男 2-女）',
  `deptId` int(11) NULL DEFAULT NULL COMMENT '部门编号',
  `hireDate` datetime(0) NULL DEFAULT NULL COMMENT '入职时间',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加密盐值',
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_employee
-- ----------------------------
INSERT INTO `sys_employee` VALUES (1, 'admin', '64369a07124fd7e9a9de7060885aea7b', '超级管理员', 1, 18, '2021-05-05 16:41:44', 'fa0fb4070d46466892c01d57ee14adda', '1', '2021-05-06 16:41:54', '1', '2021-06-07 11:34:59', '超级管理员权限');
INSERT INTO `sys_employee` VALUES (2, 'tom', '529cc9c698e00d8699422e4caff5085b', '汤姆', 1, 18, '2021-06-07 10:57:31', '40efe2c4d9d744029d616876ec1ebd97', '1', '2021-06-07 10:04:02', '1', '2021-06-07 11:43:42', '');
INSERT INTO `sys_employee` VALUES (3, 'com', '44a9c2a386d3cc192b5a41be8734ddb7', '吉米', 2, 2, '2021-06-07 10:57:36', '2636e5bf-f799-4571-941a-6ee35a604bfd', '1', '2021-06-07 10:54:41', '1', '2021-06-07 15:03:50', '');
INSERT INTO `sys_employee` VALUES (5, 'ss', '0ae64bcae2088a5fbea7a6495dc8e91e', '杰克', 1, 1, NULL, 'cb0741d1eebd462fb0f8b9eea60d71eb', '1', '2021-06-07 15:06:54', '1', '2021-06-07 17:32:58', '');
INSERT INTO `sys_employee` VALUES (9, 'wod', 'e48f55631fb09896e4603d826bd18d6b', '李子维', 1, 3, NULL, '0e8b4fe06f214c0a8c63190ba2239156', '1', '2021-06-07 17:37:47', '1', '2021-06-09 09:12:15', '');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `pid` int(11) NULL DEFAULT NULL COMMENT '所属父级菜单编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开链接地址',
  `spread` int(11) NULL DEFAULT NULL COMMENT '是否展开(0-否，1-是)',
  `target` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标样式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, 1, '_self', 'fa fa-assistive-listening-systems');
INSERT INTO `sys_menu` VALUES (2, 0, '客房管理', NULL, 1, '_self', 'fa fa-hotel');
INSERT INTO `sys_menu` VALUES (3, 1, '员工管理', '/admin/toEmployeeManager', 0, NULL, 'fa fa-sitemap');
INSERT INTO `sys_menu` VALUES (4, 1, '部门管理', '/admin/toDeptManager', 0, '', 'fa fa-codepen');
INSERT INTO `sys_menu` VALUES (5, 2, '房型管理', '/admin/toRoomTypeManager', 0, NULL, 'fa fa-users');
INSERT INTO `sys_menu` VALUES (6, 2, '房间管理', '/admin//toRoomManager', 0, NULL, 'fa fa-hotel');
INSERT INTO `sys_menu` VALUES (7, 1, '角色管理', '/admin/toRoleManager', 0, NULL, 'fa fa-apple');
INSERT INTO `sys_menu` VALUES (8, 1, '菜单管理', '/admin/toMenuManager', 0, NULL, 'fa fa-chrome');
INSERT INTO `sys_menu` VALUES (9, 0, '报表管理', '', 1, '_self', 'fa fa-area-chart');
INSERT INTO `sys_menu` VALUES (10, 0, '订单管理', '', 1, '_self', 'fa fa-first-order');
INSERT INTO `sys_menu` VALUES (12, 2, '楼层管理', '/admin/toFloorManager', 0, '_self', 'fa fa-stack-overflow');
INSERT INTO `sys_menu` VALUES (13, 10, '预订管理', '/admin/toOrdersManager', 0, '_self', 'fa fa-first-order');
INSERT INTO `sys_menu` VALUES (14, 10, '入住管理', '/admin/toCheckinManager', 0, '_self', 'fa fa-check');
INSERT INTO `sys_menu` VALUES (15, 9, '年营业额', '/admin/toYearTotalPriceManager', 0, '_self', 'fa fa-area-chart');
INSERT INTO `sys_menu` VALUES (16, 9, '月营业额', '/admin/toYearOfMonthCharts', 0, '_self', 'fa fa-bar-chart');
INSERT INTO `sys_menu` VALUES (17, 9, '季度营业额', '/admin/toQuarterTotalPriceCharts', 0, '_self', 'fa fa-bar-chart-o');
INSERT INTO `sys_menu` VALUES (18, 9, '房型预订报表', '/admin/toRoomTypePieCharts', 0, '_self', 'fa fa-pie-chart');
INSERT INTO `sys_menu` VALUES (19, 9, '当日开房报表', '/admin/toCurrentDateCheckinCharts', 0, '_self', 'fa fa-line-chart');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roledesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有所有操作权限');
INSERT INTO `sys_role` VALUES (2, '系统管理员', '拥有系统管理操作权限');
INSERT INTO `sys_role` VALUES (4, '资料管理员', '管理资料');
INSERT INTO `sys_role` VALUES (6, '测试21', '测试2333333333');

-- ----------------------------
-- Table structure for sys_role_employee
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_employee`;
CREATE TABLE `sys_role_employee`  (
  `eid` int(11) NOT NULL COMMENT '员工编号',
  `rid` int(11) NOT NULL COMMENT '角色编号'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_employee
-- ----------------------------
INSERT INTO `sys_role_employee` VALUES (3, 4);
INSERT INTO `sys_role_employee` VALUES (9, 1);
INSERT INTO `sys_role_employee` VALUES (9, 4);
INSERT INTO `sys_role_employee` VALUES (5, 4);
INSERT INTO `sys_role_employee` VALUES (1, 1);
INSERT INTO `sys_role_employee` VALUES (1, 2);
INSERT INTO `sys_role_employee` VALUES (1, 4);
INSERT INTO `sys_role_employee` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `mid` int(11) NOT NULL COMMENT '菜单编号',
  `rid` int(11) NOT NULL COMMENT '角色编号'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (3, 2);
INSERT INTO `sys_role_menu` VALUES (4, 2);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (5, 2);
INSERT INTO `sys_role_menu` VALUES (6, 2);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (5, 4);
INSERT INTO `sys_role_menu` VALUES (6, 4);
INSERT INTO `sys_role_menu` VALUES (12, 4);
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (7, 1);
INSERT INTO `sys_role_menu` VALUES (8, 1);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (5, 1);
INSERT INTO `sys_role_menu` VALUES (6, 1);
INSERT INTO `sys_role_menu` VALUES (12, 1);
INSERT INTO `sys_role_menu` VALUES (9, 1);
INSERT INTO `sys_role_menu` VALUES (15, 1);
INSERT INTO `sys_role_menu` VALUES (16, 1);
INSERT INTO `sys_role_menu` VALUES (17, 1);
INSERT INTO `sys_role_menu` VALUES (18, 1);
INSERT INTO `sys_role_menu` VALUES (19, 1);
INSERT INTO `sys_role_menu` VALUES (10, 1);
INSERT INTO `sys_role_menu` VALUES (13, 1);
INSERT INTO `sys_role_menu` VALUES (14, 1);

-- ----------------------------
-- Table structure for t_checkin
-- ----------------------------
DROP TABLE IF EXISTS `t_checkin`;
CREATE TABLE `t_checkin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `roomTypeId` int(11) NULL DEFAULT NULL COMMENT '所属房型',
  `roomId` bigint(20) NULL DEFAULT NULL COMMENT '所属房间',
  `customerName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '入住人姓名',
  `idCard` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '入住人身份证号',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '手机号',
  `arriveDate` date NULL DEFAULT NULL COMMENT '入住日期',
  `leaveDate` date NULL DEFAULT NULL COMMENT '离店日期',
  `payPrice` decimal(10, 2) NOT NULL COMMENT '实付金额',
  `ordersId` bigint(20) NULL DEFAULT NULL COMMENT '关联预订订单ID',
  `status` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '状态',
  `createDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `createdBy` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `modifyBy` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`, `payPrice`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_checkin
-- ----------------------------
INSERT INTO `t_checkin` VALUES (1, 2, 8, '张三', '135364646464', '13789034567', '2021-06-15', '2021-06-19', 800.00, 3, 2, '2021-06-17 16:25:33', 1, NULL, NULL, '得说');
INSERT INTO `t_checkin` VALUES (2, 2, 2, '李四', '14353643543', '18173226129', '2021-06-15', '2021-06-19', 800.00, 4, 2, '2021-06-18 09:23:02', NULL, NULL, NULL, '伟人');
INSERT INTO `t_checkin` VALUES (3, 3, 4, '达斯维德', 'sw123404781', '13789034567', '2021-06-17', '2021-06-26', 2700.00, 5, 2, '2021-06-18 09:23:12', NULL, NULL, NULL, '达斯维德');
INSERT INTO `t_checkin` VALUES (4, 2, 9, '达斯摩尔', '793037530158', '18173226129', '2021-06-17', '2021-06-19', 400.00, 6, 2, '2021-06-18 09:23:06', NULL, NULL, NULL, '天行者');
INSERT INTO `t_checkin` VALUES (5, 2, 10, '帕尔帕廷', '6328357385', '13789034567', '2021-06-18', '2021-06-26', 1600.00, 7, 2, '2021-06-16 09:23:19', NULL, NULL, NULL, '发送');
INSERT INTO `t_checkin` VALUES (6, 2, 11, '欧比旺', '876543', '13789034567', '2021-06-23', '2021-06-26', 600.00, 8, 2, '2021-06-18 09:23:15', NULL, NULL, NULL, '我是欧比王');
INSERT INTO `t_checkin` VALUES (7, 4, 5, '王思聪', '654372897', '13789034567', '2021-06-18', '2021-06-24', 1800.00, 9, 2, '2020-06-08 09:23:25', NULL, NULL, NULL, '今天我去输液了\n输的什么液\n想你的液');
INSERT INTO `t_checkin` VALUES (8, 5, 6, '拜登', 'us76859403', '13789034567', '2021-06-23', '2021-06-25', 800.00, 10, 2, '2022-06-15 09:23:28', NULL, NULL, NULL, '老男人');
INSERT INTO `t_checkin` VALUES (9, 6, 7, '尤达大师', 'yd5265', '18173226129', '2021-06-16', '2021-06-30', 70000.00, 11, 2, '2021-06-18 09:40:17', 1, NULL, NULL, '去感受原力');
INSERT INTO `t_checkin` VALUES (10, 2, 8, '帕德美', 'pademei14', '18173226129', '2021-06-18', '2021-06-26', 1600.00, 12, 2, '2021-06-18 09:46:08', 1, NULL, NULL, '测试');

-- ----------------------------
-- Table structure for t_checkout
-- ----------------------------
DROP TABLE IF EXISTS `t_checkout`;
CREATE TABLE `t_checkout`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `checkOutNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '退房记录编号',
  `checkInId` bigint(20) NULL DEFAULT NULL COMMENT '关联入住ID',
  `consumePrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '消费金额',
  `createDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `createdBy` int(11) NULL DEFAULT NULL COMMENT '操作人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_checkout
-- ----------------------------
INSERT INTO `t_checkout` VALUES (3, '20210617200356245452', 2, NULL, '2021-06-17 20:03:57', 1, NULL);
INSERT INTO `t_checkout` VALUES (4, '2c46848fc5274ded881c70564f626465', 1, NULL, '2021-06-17 20:12:58', 1, NULL);
INSERT INTO `t_checkout` VALUES (5, 'd684c295821b43b89ceb4ea22358851d', 3, NULL, '2021-06-17 20:22:58', 1, NULL);
INSERT INTO `t_checkout` VALUES (6, 'fc0d358cfe9a4792bcbc58841916d793', 4, NULL, '2021-06-17 20:24:32', 1, NULL);
INSERT INTO `t_checkout` VALUES (7, 'c5c460ae7f87458d83484a3ff46ea25d', 6, NULL, '2021-06-17 20:28:45', 1, NULL);
INSERT INTO `t_checkout` VALUES (8, '77514944e572464a9bc0ce9cd00af72d', 5, NULL, '2021-06-17 20:28:49', 1, NULL);
INSERT INTO `t_checkout` VALUES (9, '49e6664b453343e59553548d4d5dd2a7', 8, NULL, '2021-06-17 20:28:53', 1, NULL);
INSERT INTO `t_checkout` VALUES (10, 'f3235591b1914029a21d96b9e42f7fb9', 7, NULL, '2021-06-17 20:28:57', 1, NULL);
INSERT INTO `t_checkout` VALUES (11, '37fc7fc294d84db5813eec9c46cbaf8e', 9, NULL, '2021-06-18 09:40:34', 1, NULL);
INSERT INTO `t_checkout` VALUES (12, '709f1fe0da7141f0b6cac40350fcb2e3', 10, NULL, '2021-06-18 09:46:38', 1, NULL);

-- ----------------------------
-- Table structure for t_floor
-- ----------------------------
DROP TABLE IF EXISTS `t_floor`;
CREATE TABLE `t_floor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '楼层名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_floor
-- ----------------------------
INSERT INTO `t_floor` VALUES (1, '1楼', '酒店1楼');
INSERT INTO `t_floor` VALUES (3, '2楼', '酒店2楼');
INSERT INTO `t_floor` VALUES (4, '3楼', '酒店3楼');
INSERT INTO `t_floor` VALUES (5, '4楼', '酒店4楼');
INSERT INTO `t_floor` VALUES (6, '5楼', '酒店5楼');

-- ----------------------------
-- Table structure for t_orders
-- ----------------------------
DROP TABLE IF EXISTS `t_orders`;
CREATE TABLE `t_orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预订编号',
  `ordersNo` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '预订单号',
  `accountId` bigint(20) NULL DEFAULT NULL COMMENT '预订人账号ID',
  `roomTypeId` int(11) NULL DEFAULT NULL COMMENT '房型编号',
  `roomId` bigint(20) NULL DEFAULT NULL COMMENT '房间ID',
  `reservationName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '预订人姓名',
  `idCard` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '身份证号码',
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话号码',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态1-待确认  2-已确认',
  `reserveDate` datetime(0) NULL DEFAULT NULL COMMENT '预定时间',
  `arriveDate` date NULL DEFAULT NULL COMMENT '到店时间',
  `leaveDate` date NULL DEFAULT NULL COMMENT '离店时间',
  `reservePrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '预订价格',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_orders
-- ----------------------------
INSERT INTO `t_orders` VALUES (3, '20210615151407946514', 2, 2, 8, '张三', '135364646464', '13789034567', 4, '2021-06-15 15:14:07', '2021-06-15', '2021-06-19', 800.00, '得说');
INSERT INTO `t_orders` VALUES (4, '20210615151759451744', 2, 2, 2, '李四', '14353643543', '18173226129', 4, '2021-06-15 15:18:00', '2021-06-15', '2021-06-19', 800.00, '伟人');
INSERT INTO `t_orders` VALUES (5, '20210615151914168129', 2, 3, 4, '达斯维德', 'sw123404781', '13789034567', 4, '2021-06-15 15:19:14', '2021-06-17', '2021-06-26', 2700.00, '达斯维德');
INSERT INTO `t_orders` VALUES (6, '2021061621284336689', 2, 2, 9, '达斯摩尔', '793037530158', '18173226129', 4, '2021-06-16 21:28:43', '2021-06-17', '2021-06-19', 400.00, '天行者');
INSERT INTO `t_orders` VALUES (7, '20210616212947876711', 2, 2, 10, '帕尔帕廷', '6328357385', '13789034567', 4, '2021-06-16 21:29:47', '2021-06-18', '2021-06-26', 1600.00, '发送');
INSERT INTO `t_orders` VALUES (8, '20210616213020889673', 2, 2, 11, '欧比旺', '876543', '13789034567', 4, '2021-06-16 21:30:20', '2021-06-23', '2021-06-26', 600.00, '我是欧比王');
INSERT INTO `t_orders` VALUES (9, '20210616213134316224', 2, 4, 5, '王思聪', '654372897', '13789034567', 4, '2021-06-16 21:31:34', '2021-06-18', '2021-06-24', 1800.00, '今天我去输液了\n输的什么液\n想你的液');
INSERT INTO `t_orders` VALUES (10, '20210616213238686706', 2, 5, 6, '拜登', 'us76859403', '13789034567', 4, '2021-06-16 21:32:39', '2021-06-23', '2021-06-25', 800.00, '老男人');
INSERT INTO `t_orders` VALUES (11, '2021061621332034687', 2, 6, 7, '尤达大师', 'yd5265', '18173226129', 4, '2021-06-16 21:33:21', '2021-06-16', '2021-06-30', 70000.00, '去感受原力');
INSERT INTO `t_orders` VALUES (12, '20210618092752902032', 2, 2, 8, '帕德美', 'pademei14', '18173226129', 4, '2021-06-18 09:27:52', '2021-06-18', '2021-06-26', 1600.00, '测试');
INSERT INTO `t_orders` VALUES (13, '20210618160524329479', 2, 2, 2, '佳佳宾克斯', '太35323652', '143326532', 1, '2021-06-18 16:05:24', '2021-06-18', '2021-06-26', 1600.00, '天翻地覆');

-- ----------------------------
-- Table structure for t_room
-- ----------------------------
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '房间图片',
  `roomNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '房间编号',
  `roomTypeId` int(11) NULL DEFAULT NULL COMMENT '房型',
  `floorId` int(11) NULL DEFAULT NULL COMMENT '所属楼层',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `roomDesc` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '房间描述',
  `roomRequirement` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '要求',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_room
-- ----------------------------
INSERT INTO `t_room` VALUES (2, '20210611/616779a3e92b4f10a7c913aafdfebfad.jpg', '101', 2, 1, 1, '￥50/晚<img src=\"http://localhost:8080/statics/layui/lib/layui-v2.5.5/images/face/54.gif\" alt=\"[good]\"><img src=\"http://localhost:8080/statics/layui/lib/layui-v2.5.5/images/face/1.gif\" alt=\"[嘻嘻]\">', '无', '101');
INSERT INTO `t_room` VALUES (4, '20210611/c56fb4c8125f4a428594cc3338dd9a2b.jpg', '201', 3, 3, 3, '￥100/晚', '2张单人床', '双人间');
INSERT INTO `t_room` VALUES (5, '20210611/e635761b60b2493d8997cfcc927d53da.jpg', '301', 4, 4, 3, '￥175/晚', '两张床', '2张双人床');
INSERT INTO `t_room` VALUES (6, '20210611/5c22cc1bec2649fe865fc5a4043f3601.jpg', '401', 5, 5, 3, '你猜', 'の2 ', '1张双人床');
INSERT INTO `t_room` VALUES (7, '20210611/97b4739ab1b34362be8a716d355e8e63.jpg', '501', 6, 6, 3, '<img src=\"http://localhost:8080/statics/layui/lib/layui-v2.5.5/images/face/1.gif\" alt=\"[嘻嘻]\">', '总统套房~豪华', '总统套房');
INSERT INTO `t_room` VALUES (8, '20210613/bf26cdbc93e74e319aa6146ace6da3c2.jpg', '102', 2, 1, 3, '', '单人间标准配置', '单人间');
INSERT INTO `t_room` VALUES (9, '20210613/08e2c03ce9504d4f827c01741e9b05f1.jpg', '103', 2, 1, 3, '', '单人间', '');
INSERT INTO `t_room` VALUES (10, '20210613/2147822b84e04f7e9298d321cebd7621.jpg', '104', 2, 1, 3, '', '', '');
INSERT INTO `t_room` VALUES (11, '20210613/d2595670d2ae4242a5f100f882cc301e.jpg', '105', 2, 1, 3, '', '', '');

-- ----------------------------
-- Table structure for t_room_type
-- ----------------------------
DROP TABLE IF EXISTS `t_room_type`;
CREATE TABLE `t_room_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房型编号',
  `typeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '房型名称',
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '房型图片',
  `price` decimal(8, 2) NULL DEFAULT NULL COMMENT '参考价格',
  `liveNum` int(11) NULL DEFAULT NULL COMMENT '可入住人数',
  `bedNum` int(11) NULL DEFAULT NULL COMMENT '床位数',
  `roomNum` int(11) NULL DEFAULT NULL COMMENT '房间数量',
  `reservedNum` int(11) NULL DEFAULT NULL COMMENT '已预定数量',
  `avilableNum` int(11) NULL DEFAULT NULL COMMENT '可住房间数',
  `livedNum` int(11) NULL DEFAULT NULL COMMENT '已入住数量',
  `status` int(11) NULL DEFAULT NULL COMMENT '房型状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_room_type
-- ----------------------------
INSERT INTO `t_room_type` VALUES (2, '单人间', '20210611/d00cb952ab16490aaebc980f4da46aaf.jpg', 200.00, 1, 1, 20, 7, 19, 0, 1, '无');
INSERT INTO `t_room_type` VALUES (3, '双人间', '20210611/b9d08f60b44947b28b5c13240bc5a469.jpg', 300.00, 2, 2, 20, 1, 20, 0, 1, '无');
INSERT INTO `t_room_type` VALUES (4, '标准间', '20210611/2a1432678a24467bbb651eee77644679.jpg', 300.00, 2, 2, 20, 1, 20, 0, 1, '无');
INSERT INTO `t_room_type` VALUES (5, '商务间', '20210611/8e415a644777405b896c830f256f80d6.jpg', 400.00, 2, 1, 20, 1, 20, 0, 1, '无');
INSERT INTO `t_room_type` VALUES (6, '总统套房', '20210611/3728bbd6b49f47d7b25f3bb1ce0a78b6.jpg', 5000.00, 500, 2, 5, 1, 5, 0, 1, '无');
INSERT INTO `t_room_type` VALUES (7, '豪华间', '20210610/f1063b69415749baa515946c441e5172.JPG', 5000.00, 500, 2, 10, 0, 10, 0, 1, '无');
INSERT INTO `t_room_type` VALUES (8, '普通套房', '20210612/83814f1aeb124cee8058903411150b14.jpg', 200.00, 500, 2, 5, 0, 5, 0, 1, '普通');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `loginName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登录账号',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登录密码',
  `realName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '真实姓名',
  `idCard` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '身份证号码',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话号码',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态1-可用 0-异常',
  `createDate` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `salt` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '盐值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'wod', '2835ee6d8f3a182964ce3ce59708c374', NULL, NULL, '13111111111', NULL, NULL, NULL, 'e3ff630b9e244c76877ca09dad7d54e6');
INSERT INTO `t_user` VALUES (2, 'sa', 'f4ffc9dc1f8d39ddc7545f7156dee805', NULL, NULL, '18173226221', NULL, NULL, NULL, '3f8414f4030049d8a340b3b3dfa7079b');
INSERT INTO `t_user` VALUES (3, 'sa1', 'd069178d4cf001c1f117a1718b3cb50e', NULL, NULL, '12345677876', NULL, NULL, NULL, '804d1b4a5c1e4e08a859be21c14f5d7d');

SET FOREIGN_KEY_CHECKS = 1;
