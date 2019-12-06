/*
 Navicat Premium Data Transfer

 Source Server         : location
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : la6

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 29/11/2019 14:55:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 01:44:50', '2019-11-26 01:44:50');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 01:44:58', '2019-11-26 01:44:58');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 01:45:00', '2019-11-26 01:45:00');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 01:45:02', '2019-11-26 01:45:02');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 01:45:05', '2019-11-26 01:45:05');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 02:53:22', '2019-11-26 02:53:22');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 02:56:43', '2019-11-26 02:56:43');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 02:57:55', '2019-11-26 02:57:55');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 02:59:48', '2019-11-26 02:59:48');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:00:09', '2019-11-26 03:00:09');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-11-26 03:15:56', '2019-11-26 03:15:56');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:16:01', '2019-11-26 03:16:01');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '[]', '2019-11-26 03:16:33', '2019-11-26 03:16:33');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:16:51', '2019-11-26 03:16:51');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:16:56', '2019-11-26 03:16:56');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:16:59', '2019-11-26 03:16:59');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:17:08', '2019-11-26 03:17:08');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:17:11', '2019-11-26 03:17:11');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:17:17', '2019-11-26 03:17:17');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:17:23', '2019-11-26 03:17:23');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:17:32', '2019-11-26 03:17:32');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:17:37', '2019-11-26 03:17:37');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:17:40', '2019-11-26 03:17:40');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:17:44', '2019-11-26 03:17:44');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:17:49', '2019-11-26 03:17:49');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '[]', '2019-11-26 03:21:06', '2019-11-26 03:21:06');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:32:43', '2019-11-26 03:32:43');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:32:47', '2019-11-26 03:32:47');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:32:59', '2019-11-26 03:32:59');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:33:01', '2019-11-26 03:33:01');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 03:33:42', '2019-11-26 03:33:42');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 06:16:09', '2019-11-26 06:16:09');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 06:22:11', '2019-11-26 06:22:11');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 06:25:17', '2019-11-26 06:25:17');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 06:38:02', '2019-11-26 06:38:02');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-11-26 06:38:09', '2019-11-26 06:38:09');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-11-26 06:38:31', '2019-11-26 06:38:31');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 06:48:31', '2019-11-26 06:48:31');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 06:50:39', '2019-11-26 06:50:39');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-11-26 07:13:19', '2019-11-26 07:13:19');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 07:13:23', '2019-11-26 07:13:23');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 07:16:52', '2019-11-26 07:16:52');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 07:17:01', '2019-11-26 07:17:01');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 07:17:18', '2019-11-26 07:17:18');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2019-11-26 07:35:37', '2019-11-26 07:35:37');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2019-11-26 07:58:12', '2019-11-26 07:58:12');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 07:58:23', '2019-11-26 07:58:23');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 07:58:47', '2019-11-26 07:58:47');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 07:59:39', '2019-11-26 07:59:39');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:01:18', '2019-11-26 08:01:18');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:01:38', '2019-11-26 08:01:38');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:01:43', '2019-11-26 08:01:43');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"\\u5f00\\u53d1\\u90e8\",\"name\":\"php\",\"permissions\":[\"2\",null],\"_token\":\"0YzXFqFK51jMztI0HPzRqHmdBIcFMczBnUkRTf6k\",\"_previous_\":\"http:\\/\\/local.la6.com\\/admin\\/auth\\/roles\"}', '2019-11-26 08:02:42', '2019-11-26 08:02:42');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-11-26 08:02:43', '2019-11-26 08:02:43');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:02:51', '2019-11-26 08:02:51');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:02:54', '2019-11-26 08:02:54');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"0YzXFqFK51jMztI0HPzRqHmdBIcFMczBnUkRTf6k\",\"_previous_\":\"http:\\/\\/local.la6.com\\/admin\\/auth\\/users\"}', '2019-11-26 08:03:19', '2019-11-26 08:03:19');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-11-26 08:03:20', '2019-11-26 08:03:20');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"admin1\",\"name\":\"admin1\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"0YzXFqFK51jMztI0HPzRqHmdBIcFMczBnUkRTf6k\"}', '2019-11-26 08:04:28', '2019-11-26 08:04:28');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-11-26 08:04:29', '2019-11-26 08:04:29');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:04:42', '2019-11-26 08:04:42');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:05:03', '2019-11-26 08:05:03');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:05:34', '2019-11-26 08:05:34');
INSERT INTO `admin_operation_log` VALUES (64, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:05:51', '2019-11-26 08:05:51');
INSERT INTO `admin_operation_log` VALUES (65, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:05:58', '2019-11-26 08:05:58');
INSERT INTO `admin_operation_log` VALUES (66, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:06:02', '2019-11-26 08:06:02');
INSERT INTO `admin_operation_log` VALUES (67, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:06:14', '2019-11-26 08:06:14');
INSERT INTO `admin_operation_log` VALUES (68, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:06:22', '2019-11-26 08:06:22');
INSERT INTO `admin_operation_log` VALUES (69, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:06:38', '2019-11-26 08:06:38');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:07:17', '2019-11-26 08:07:17');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:07:31', '2019-11-26 08:07:31');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:08:32', '2019-11-26 08:08:32');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:08:35', '2019-11-26 08:08:35');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:08:45', '2019-11-26 08:08:45');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:09:01', '2019-11-26 08:09:01');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:09:11', '2019-11-26 08:09:11');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:10:28', '2019-11-26 08:10:28');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:11:27', '2019-11-26 08:11:27');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:13:44', '2019-11-26 08:13:44');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:13:51', '2019-11-26 08:13:51');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:13:53', '2019-11-26 08:13:53');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:14:19', '2019-11-26 08:14:19');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:14:47', '2019-11-26 08:14:47');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:16:52', '2019-11-26 08:16:52');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:16:57', '2019-11-26 08:16:57');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:17:22', '2019-11-26 08:17:22');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:17:37', '2019-11-26 08:17:37');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:17:54', '2019-11-26 08:17:54');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:17:58', '2019-11-26 08:17:58');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:18:15', '2019-11-26 08:18:15');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:19:06', '2019-11-26 08:19:06');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:19:15', '2019-11-26 08:19:15');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:20:29', '2019-11-26 08:20:29');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:20:33', '2019-11-26 08:20:33');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"\\u5f00\\u53d1\\u90e8\",\"name\":\"\\u524d\\u7aef\",\"permissions\":[\"5\",null],\"_token\":\"ydekILgxy2WeDLXbLSwxhYwuGEHrprNl6vbUE5uu\",\"_previous_\":\"http:\\/\\/local.la6.com\\/admin\\/auth\\/roles\"}', '2019-11-26 08:20:52', '2019-11-26 08:20:52');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2019-11-26 08:20:59', '2019-11-26 08:20:59');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"\\u5f00\\u53d1\\u90e81\",\"name\":\"\\u524d\\u7aef\",\"permissions\":[\"5\",null],\"_token\":\"ydekILgxy2WeDLXbLSwxhYwuGEHrprNl6vbUE5uu\"}', '2019-11-26 08:22:07', '2019-11-26 08:22:07');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-11-26 08:22:08', '2019-11-26 08:22:08');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:23:14', '2019-11-26 08:23:14');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:23:17', '2019-11-26 08:23:17');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"admin2\",\"name\":\"admin2\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",\"4\",null],\"permissions\":[null],\"_token\":\"ydekILgxy2WeDLXbLSwxhYwuGEHrprNl6vbUE5uu\",\"_previous_\":\"http:\\/\\/local.la6.com\\/admin\\/auth\\/users\"}', '2019-11-26 08:23:47', '2019-11-26 08:23:47');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-11-26 08:23:49', '2019-11-26 08:23:49');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:23:56', '2019-11-26 08:23:56');
INSERT INTO `admin_operation_log` VALUES (104, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:24:10', '2019-11-26 08:24:10');
INSERT INTO `admin_operation_log` VALUES (105, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:24:20', '2019-11-26 08:24:20');
INSERT INTO `admin_operation_log` VALUES (106, 3, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:24:24', '2019-11-26 08:24:24');
INSERT INTO `admin_operation_log` VALUES (107, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:24:29', '2019-11-26 08:24:29');
INSERT INTO `admin_operation_log` VALUES (108, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:24:33', '2019-11-26 08:24:33');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:24:44', '2019-11-26 08:24:44');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:24:51', '2019-11-26 08:24:51');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:24:57', '2019-11-26 08:24:57');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:25:07', '2019-11-26 08:25:07');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/auth/roles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:25:14', '2019-11-26 08:25:14');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:25:23', '2019-11-26 08:25:23');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:25:34', '2019-11-26 08:25:34');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:26:15', '2019-11-26 08:26:15');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:28:16', '2019-11-26 08:28:16');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:28:24', '2019-11-26 08:28:24');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:30:08', '2019-11-26 08:30:08');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:30:15', '2019-11-26 08:30:15');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:30:45', '2019-11-26 08:30:45');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:31:29', '2019-11-26 08:31:29');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:36:07', '2019-11-26 08:36:07');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:37:40', '2019-11-26 08:37:40');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-11-26 08:38:10', '2019-11-26 08:38:10');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:38:55', '2019-11-26 08:38:55');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:38:57', '2019-11-26 08:38:57');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-26 08:39:11', '2019-11-26 08:39:11');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-11-27 01:42:16', '2019-11-27 01:42:16');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-11-29 02:02:25', '2019-11-29 02:02:25');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 02:02:49', '2019-11-29 02:02:49');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-11-29 06:46:07', '2019-11-29 06:46:07');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-11-29 06:46:48', '2019-11-29 06:46:48');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-11-29 06:53:50', '2019-11-29 06:53:50');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-11-29 06:54:05', '2019-11-29 06:54:05');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (4, 5, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 3, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (4, 3, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-11-26 01:42:45', '2019-11-26 01:42:45');
INSERT INTO `admin_roles` VALUES (2, 'php', '开发部', '2019-11-26 08:02:42', '2019-11-26 08:02:42');
INSERT INTO `admin_roles` VALUES (4, '前端', '开发部1', '2019-11-26 08:22:07', '2019-11-26 08:22:07');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$J0LJ85EnmVlNtwHbAIKIluTo3K.gldvXrGMrvEZeaUStrJA0PxZ0K', 'Administrator', NULL, 'JhYqk40TlX9z99dqbGFQLoOw80pQVUZVQOoKzJp9IWXlcTO8dZDpwMsJp2W6', '2019-11-26 01:42:45', '2019-11-26 01:42:45');
INSERT INTO `admin_users` VALUES (2, 'admin1', '$2y$10$w0mQj41s/9EeOWKYQ/Dw1eFN38/pWNPy5AToW9oY1KJvwnTBjJdgu', 'admin1', NULL, 'tFKJYMyTG0g2p3OY1TmE3POzQiMSIgVntQMwhTrxuzDOtLGQM1U640tgj5U9', '2019-11-26 08:04:28', '2019-11-26 08:04:28');
INSERT INTO `admin_users` VALUES (3, 'admin2', '$2y$10$/IpQM/nzQluDARPT6cBhy.A38Lv4QhNInlW1yjqN23QDjqrmc2.3a', 'admin2', NULL, 't4WkX9en9Au7aXlPru7kjdynon1hFw8tBYIOyub9aEX2TyAMUlTD4E2gDhXy', '2019-11-26 08:23:48', '2019-11-26 08:23:48');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
