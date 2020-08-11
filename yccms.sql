/*
 Navicat Premium Data Transfer

 Source Server         : This
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : yccms

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 27/07/2020 10:09:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ycyjxh_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_admin_menu`;
CREATE TABLE `ycyjxh_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父菜单id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `controller`(`controller`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_admin_menu
-- ----------------------------
INSERT INTO `ycyjxh_admin_menu` VALUES (1, 0, 0, 1, 20, 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心');
INSERT INTO `ycyjxh_admin_menu` VALUES (2, 1, 1, 1, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `ycyjxh_admin_menu` VALUES (5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `ycyjxh_admin_menu` VALUES (6, 0, 0, 1, 0, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `ycyjxh_admin_menu` VALUES (7, 6, 1, 1, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `ycyjxh_admin_menu` VALUES (9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `ycyjxh_admin_menu` VALUES (11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `ycyjxh_admin_menu` VALUES (13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `ycyjxh_admin_menu` VALUES (14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `ycyjxh_admin_menu` VALUES (15, 6, 1, 1, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `ycyjxh_admin_menu` VALUES (16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `ycyjxh_admin_menu` VALUES (18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `ycyjxh_admin_menu` VALUES (20, 6, 1, 0, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `ycyjxh_admin_menu` VALUES (22, 20, 1, 0, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `ycyjxh_admin_menu` VALUES (23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `ycyjxh_admin_menu` VALUES (25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `ycyjxh_admin_menu` VALUES (27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `ycyjxh_admin_menu` VALUES (28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `ycyjxh_admin_menu` VALUES (29, 6, 1, 1, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `ycyjxh_admin_menu` VALUES (31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `ycyjxh_admin_menu` VALUES (33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `ycyjxh_admin_menu` VALUES (35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `ycyjxh_admin_menu` VALUES (36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `ycyjxh_admin_menu` VALUES (37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `ycyjxh_admin_menu` VALUES (39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `ycyjxh_admin_menu` VALUES (41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `ycyjxh_admin_menu` VALUES (42, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `ycyjxh_admin_menu` VALUES (43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `ycyjxh_admin_menu` VALUES (44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `ycyjxh_admin_menu` VALUES (45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (46, 42, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `ycyjxh_admin_menu` VALUES (47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `ycyjxh_admin_menu` VALUES (48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `ycyjxh_admin_menu` VALUES (49, 110, 0, 1, 10000, 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `ycyjxh_admin_menu` VALUES (50, 49, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `ycyjxh_admin_menu` VALUES (52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `ycyjxh_admin_menu` VALUES (54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `ycyjxh_admin_menu` VALUES (56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `ycyjxh_admin_menu` VALUES (57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `ycyjxh_admin_menu` VALUES (59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `ycyjxh_admin_menu` VALUES (60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `ycyjxh_admin_menu` VALUES (61, 6, 1, 1, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (62, 61, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `ycyjxh_admin_menu` VALUES (63, 61, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (64, 61, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `ycyjxh_admin_menu` VALUES (65, 61, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (66, 61, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `ycyjxh_admin_menu` VALUES (67, 61, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `ycyjxh_admin_menu` VALUES (68, 61, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `ycyjxh_admin_menu` VALUES (69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `ycyjxh_admin_menu` VALUES (70, 61, 1, 0, 10000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `ycyjxh_admin_menu` VALUES (71, 6, 1, 1, 0, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `ycyjxh_admin_menu` VALUES (72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `ycyjxh_admin_menu` VALUES (74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (75, 6, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `ycyjxh_admin_menu` VALUES (76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `ycyjxh_admin_menu` VALUES (78, 121, 1, 1, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `ycyjxh_admin_menu` VALUES (80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `ycyjxh_admin_menu` VALUES (82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `ycyjxh_admin_menu` VALUES (84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `ycyjxh_admin_menu` VALUES (85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `ycyjxh_admin_menu` VALUES (86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `ycyjxh_admin_menu` VALUES (88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `ycyjxh_admin_menu` VALUES (90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `ycyjxh_admin_menu` VALUES (91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `ycyjxh_admin_menu` VALUES (92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `ycyjxh_admin_menu` VALUES (93, 6, 1, 1, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `ycyjxh_admin_menu` VALUES (94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (95, 6, 1, 1, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `ycyjxh_admin_menu` VALUES (97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `ycyjxh_admin_menu` VALUES (98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `ycyjxh_admin_menu` VALUES (99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `ycyjxh_admin_menu` VALUES (100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `ycyjxh_admin_menu` VALUES (101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `ycyjxh_admin_menu` VALUES (102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `ycyjxh_admin_menu` VALUES (103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `ycyjxh_admin_menu` VALUES (104, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `ycyjxh_admin_menu` VALUES (105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `ycyjxh_admin_menu` VALUES (107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `ycyjxh_admin_menu` VALUES (108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `ycyjxh_admin_menu` VALUES (109, 95, 1, 0, 10000, 'admin', 'Theme', 'design', '', '模板设计', '', '模板设计');
INSERT INTO `ycyjxh_admin_menu` VALUES (110, 0, 0, 1, 10, 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (111, 49, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (112, 111, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `ycyjxh_admin_menu` VALUES (113, 111, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (114, 111, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `ycyjxh_admin_menu` VALUES (115, 111, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (116, 111, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `ycyjxh_admin_menu` VALUES (117, 111, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (118, 111, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `ycyjxh_admin_menu` VALUES (119, 111, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `ycyjxh_admin_menu` VALUES (120, 111, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `ycyjxh_admin_menu` VALUES (121, 0, 0, 1, 30, 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (122, 121, 1, 1, 10000, 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `ycyjxh_admin_menu` VALUES (123, 122, 1, 0, 10000, 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `ycyjxh_admin_menu` VALUES (124, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (125, 122, 1, 0, 10000, 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `ycyjxh_admin_menu` VALUES (126, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (127, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `ycyjxh_admin_menu` VALUES (128, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `ycyjxh_admin_menu` VALUES (129, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `ycyjxh_admin_menu` VALUES (130, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `ycyjxh_admin_menu` VALUES (131, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `ycyjxh_admin_menu` VALUES (132, 121, 1, 1, 10000, 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `ycyjxh_admin_menu` VALUES (133, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `ycyjxh_admin_menu` VALUES (134, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (135, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `ycyjxh_admin_menu` VALUES (136, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (137, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `ycyjxh_admin_menu` VALUES (138, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `ycyjxh_admin_menu` VALUES (139, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `ycyjxh_admin_menu` VALUES (140, 121, 1, 1, 10000, 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (141, 140, 1, 0, 10000, 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `ycyjxh_admin_menu` VALUES (142, 140, 2, 0, 10000, 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (143, 140, 1, 0, 10000, 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `ycyjxh_admin_menu` VALUES (144, 140, 2, 0, 10000, 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (145, 140, 2, 0, 10000, 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `ycyjxh_admin_menu` VALUES (146, 121, 1, 1, 10000, 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `ycyjxh_admin_menu` VALUES (147, 146, 1, 0, 10000, 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `ycyjxh_admin_menu` VALUES (148, 146, 2, 0, 10000, 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (149, 146, 2, 0, 10000, 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `ycyjxh_admin_menu` VALUES (150, 146, 2, 0, 10000, 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `ycyjxh_admin_menu` VALUES (151, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `ycyjxh_admin_menu` VALUES (152, 151, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `ycyjxh_admin_menu` VALUES (153, 110, 0, 1, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `ycyjxh_admin_menu` VALUES (154, 153, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `ycyjxh_admin_menu` VALUES (155, 154, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `ycyjxh_admin_menu` VALUES (156, 154, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `ycyjxh_admin_menu` VALUES (157, 153, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `ycyjxh_admin_menu` VALUES (158, 157, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `ycyjxh_admin_menu` VALUES (159, 6, 1, 1, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `ycyjxh_admin_menu` VALUES (160, 159, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `ycyjxh_admin_menu` VALUES (161, 159, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `ycyjxh_admin_menu` VALUES (162, 159, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `ycyjxh_admin_menu` VALUES (163, 0, 2, 1, 10000, 'admin', 'Cert', 'default', '', '证书管理', '', '');
INSERT INTO `ycyjxh_admin_menu` VALUES (164, 163, 1, 1, 10000, 'admin', 'Cert', 'index', 'model=1', '证书管理', '', '');
INSERT INTO `ycyjxh_admin_menu` VALUES (165, 163, 1, 1, 10000, 'admin', 'Cert', 'index2', '', '监理数据-个人', '', '');
INSERT INTO `ycyjxh_admin_menu` VALUES (166, 163, 1, 1, 10000, 'admin', 'Cert', 'index3', '', '监理数据-公司', '', '');

-- ----------------------------
-- Table structure for ycyjxh_asset
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_asset`;
CREATE TABLE `ycyjxh_asset`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小,单位B',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上传时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `suffix` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资源表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_asset
-- ----------------------------
INSERT INTO `ycyjxh_asset` VALUES (1, 1, 21504, 1593657811, 1, 0, '0abab9ef993f302a1b096205306d53f7a0ca17250f73f333dc7e42fdaa2adf95', '工资表.xls', 'admin/20200702/978c51a345cb439cd7b439d37e58e61b.xls', '0abab9ef993f302a1b096205306d53f7', 'eae119e7cb65509dd9910b0bd94b437ad7202ff8', 'xls', NULL);
INSERT INTO `ycyjxh_asset` VALUES (2, 1, 23349, 1593657976, 1, 0, 'fbf2511f453972f83f5538955d2052b6722822a700454fc11e1fd0746011f2ce', '6164e50e8510810b5834c777977b702e.xlsx', 'admin/20200702/8d57f5955444214da380d6cdb42e7f93.xlsx', 'fbf2511f453972f83f5538955d2052b6', 'f94da124bbba67921120e16a8532b9e2cf1f509c', 'xlsx', NULL);
INSERT INTO `ycyjxh_asset` VALUES (3, 1, 23131, 1593658170, 1, 0, 'baa39418a914beeb34c93718aff5ebccc7faf3f04c5177200551a66a3be157c5', '6f9814d2363933113fa7265942ac5b05.xlsx', 'admin/20200702/c08d56f7eaa781c5d82960519154a48e.xlsx', 'baa39418a914beeb34c93718aff5ebcc', 'dfa535591454da7371428b83c9dacdf7d3e52725', 'xlsx', NULL);
INSERT INTO `ycyjxh_asset` VALUES (4, 1, 23552, 1593670589, 1, 0, 'cb8a49c35b8634c93a227fac7dd0c02e53189bee527ab8975f0bafdb80ed3b11', '工资表.xls', 'admin/20200702/2de62636a26577778408c56e51b9ce4d.xls', 'cb8a49c35b8634c93a227fac7dd0c02e', 'a44e5c188206d61bef9e657663f1cd586ac3b2d3', 'xls', NULL);
INSERT INTO `ycyjxh_asset` VALUES (5, 1, 38161, 1593674804, 1, 0, 'd52da1f8d7937170faee756baf13adad497752126e26c0159dd19cb76fed072e', '域名解析增加.pdf', 'default/20200702/aac0a550c9636b8b1e90247e0d6adbf6.pdf', 'd52da1f8d7937170faee756baf13adad', '3e94bb58c754ed235c636a52bd9d927285eee6e9', 'pdf', NULL);
INSERT INTO `ycyjxh_asset` VALUES (6, 1, 8764, 1593757081, 1, 0, '1cb1304297f0379163af6113a96d1d8690648d521ae38b6bd1a2d540f4dbcd18', 'logo.png', 'admin/20200703/f07ffccb7c328cf517029f260f56b9ca.png', '1cb1304297f0379163af6113a96d1d86', '393ba21fc841880247955d055d0c2277ceca8967', 'png', NULL);
INSERT INTO `ycyjxh_asset` VALUES (7, 1, 460, 1593761997, 1, 0, 'f7baddaaa2931a08e0cbaae823cbac3ecbc21f94c39f75a6dc23e1198bd654d8', '微信图片_20200703153932.png', 'portal/20200703/4b42810f0d384688c866b50f7b427c55.png', 'f7baddaaa2931a08e0cbaae823cbac3e', '5368b4aeee4d81d1e6abae3b74b862ceabbc3c44', 'png', NULL);
INSERT INTO `ycyjxh_asset` VALUES (8, 1, 515, 1594028429, 1, 0, '6692b070d345f466f96e40538a15b0d0477eafa6679ce8c39847fb0a27280bb3', '11111.png', 'portal/20200706/3efeec23e6830e5042f634aec306fbaa.png', '6692b070d345f466f96e40538a15b0d0', '0c7394fb7b2dc87ddcbe92ec9b49e5e742d596dc', 'png', NULL);
INSERT INTO `ycyjxh_asset` VALUES (9, 1, 78973, 1594207531, 1, 0, '5db44c3e29b7838c8c8977c591df3b1106a7b3ae8ca2171edc8010fe2bd1bc48', '宇易.xlsx', 'portal/20200708/6e2341826788968ebf76e072b5cda213.xlsx', '5db44c3e29b7838c8c8977c591df3b11', '6108cc7dafd4bcdbea8b52f31d40559841086b80', 'xlsx', NULL);
INSERT INTO `ycyjxh_asset` VALUES (10, 1, 12295, 1594207601, 1, 0, 'bc4953a28f599ec2b10fa9b6bcb88beb276d2b2e7991ff4f709706eb1b50de52', '3213213.docx', 'portal/20200708/44ab1d896ceda8b533267385bd2f1c44.docx', 'bc4953a28f599ec2b10fa9b6bcb88beb', '1d2c4d8c70c6b0470612b7a2e7b7dbaa79ceecac', 'docx', NULL);
INSERT INTO `ycyjxh_asset` VALUES (11, 1, 90479, 1594284609, 1, 0, '4e4764853a56f779f7baa7a5fae58438adb421a5eb7a37f65bb1d7ebb69cc00b', '欠薪.pdf', 'portal/20200709/4ecfcd068143e3b06df70b75d293ce1a.pdf', '4e4764853a56f779f7baa7a5fae58438', '42e0bafa68422c3d715083928778d14a14fdbab1', 'pdf', NULL);
INSERT INTO `ycyjxh_asset` VALUES (12, 1, 35661, 1594284886, 1, 0, '9bd91a7d07fa7cfd238f2477972061bc7ceb96f176627d5310065c3987a2ff05', '2020年3月9日搜索官网服务器续费.pdf', 'portal/20200709/1789ae55cba00d9a253a0da4536625b7.pdf', '9bd91a7d07fa7cfd238f2477972061bc', 'a11fc8efe6622cc007f302db6df26a7f096c905d', 'pdf', NULL);
INSERT INTO `ycyjxh_asset` VALUES (13, 1, 1960, 1594290422, 1, 0, '72c7357f40f46bac37a0b558c0d04a47645d5315c4c220764552829ed888f1fe', '维修模块.txt', 'portal/20200709/e4ff79547a825a6663df8e4c22c5be9f.txt', '72c7357f40f46bac37a0b558c0d04a47', '2f211acc43f810262589f5766a4031ffd99bd6e4', 'txt', NULL);
INSERT INTO `ycyjxh_asset` VALUES (14, 1, 42021, 1594361017, 1, 0, 'b173dae76edb4a83cd675fff090f8c45d76997fbca64ee766996ad8e2bf3b6c3', '111.jpg', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', 'b173dae76edb4a83cd675fff090f8c45', '925c0cc526f5a05026ed8c208ff69aa42e5284a3', 'jpg', NULL);
INSERT INTO `ycyjxh_asset` VALUES (15, 1, 214982, 1594460876, 1, 0, 'a2dd907e01feb05ecd77bae6b76fd64001e9568fd56df360a7a9c8e7a4046210', '3bde98f642f546be95b2d242994897aa_th.jpg', 'admin/20200711/191e2117ace1c46b1531f5e1593b5081.jpg', 'a2dd907e01feb05ecd77bae6b76fd640', 'a2043c1012720a2776cfd4196b81cfcb13adcbff', 'jpg', NULL);
INSERT INTO `ycyjxh_asset` VALUES (16, 1, 1116711, 1594479921, 1, 0, 'c5db0fc3c62c1d465ba9253e6ffd3ff5a7a3053dcbd320a007d4624a86f26b99', 'IMG_9908-min.jpg', 'admin/20200711/1e4d7c3b5f0bc6414ef11e1c88962d3c.jpg', 'c5db0fc3c62c1d465ba9253e6ffd3ff5', '3f06d10d551e9dcc8b831069bdbb47ae6ac2eb66', 'jpg', NULL);
INSERT INTO `ycyjxh_asset` VALUES (17, 1, 646267, 1594605763, 1, 0, '04cf63f1ef3a97d25bc1bd08248607c24f4574b070f2c1026c0728d9c7a49c47', '7092831_140036752037_2.jpg', 'portal/20200713/3bd072c9c3cba185de443b29cd841b9e.jpg', '04cf63f1ef3a97d25bc1bd08248607c2', 'bb05af214326d104c09826846f9ac717eb1bc4ee', 'jpg', NULL);
INSERT INTO `ycyjxh_asset` VALUES (18, 1, 268816, 1594605791, 1, 0, '707c129d2b1607bfdbab92288bcf54210e042b37b65e0d270c662c8d70a8bbde', '10603471_001846352106_2.jpg', 'portal/20200713/ff7f022b2277392bb440befc6c5b27b4.jpg', '707c129d2b1607bfdbab92288bcf5421', '43a267af91d12ba397aea8c73ad421815944f0b1', 'jpg', NULL);
INSERT INTO `ycyjxh_asset` VALUES (19, 1, 126928, 1594605829, 1, 0, 'b320d140f8c01d573e08d6af0412fd55dca39a10f846e23f8a79002df8f017ff', '4118657_131626000655_2.jpg', 'portal/20200713/3517e66cb1aa04cf72171075280d8296.jpg', 'b320d140f8c01d573e08d6af0412fd55', '9ad66bcf83a733183179e76a79665b431be6ef56', 'jpg', NULL);
INSERT INTO `ycyjxh_asset` VALUES (20, 1, 64930, 1594686106, 1, 0, '4edd884ab46986c060cf97b30bd7025aab6d63664d1d444be3038aaa3e738869', '微信图片_20200714082139.jpg', 'admin/20200714/ef30c9b27a3edd227807a8a6b864d365.jpg', '4edd884ab46986c060cf97b30bd7025a', '952410d0dcafaf9859c310db6a8086c7fe792a8a', 'jpg', NULL);
INSERT INTO `ycyjxh_asset` VALUES (21, 1, 11275, 1594686124, 1, 0, '779d3fca7ce81aa174a104d8915c2a859b540aee44e6cf39506172288f500588', '微信图片_20200714082159.png', 'admin/20200714/e2de675d44c505528f9c2eb65c5f417d.png', '779d3fca7ce81aa174a104d8915c2a85', '68dffe403ee5f90a83453a42ef98ac66f3623719', 'png', NULL);
INSERT INTO `ycyjxh_asset` VALUES (22, 1, 23552, 1594785293, 1, 0, '5f798918c5aa4c1d9141608528490f5cf1b6f5d39972e194ada0b9e09a8cccf8', '工资表.xls', 'admin/20200715/8071f85715ccb1c1e2bf737e5bb284a8.xls', '5f798918c5aa4c1d9141608528490f5c', '03c643dde7092537c381d1a23d3b25c798ea4ee2', 'xls', NULL);
INSERT INTO `ycyjxh_asset` VALUES (23, 1, 23040, 1594806766, 1, 0, '1b7fca2f6f94b2f731e874496a84f70346f4e128087ff945c3036e7deb75ded3', '工资表.xls', 'admin/20200715/91e388ed8789782f982a975210c4c61d.xls', '1b7fca2f6f94b2f731e874496a84f703', '88577de07eb2483a5dd2430d12c434b5350efc47', 'xls', NULL);
INSERT INTO `ycyjxh_asset` VALUES (24, 1, 23552, 1594807526, 1, 0, '8a7347f656fb94a948260fe60510fbd4bc0ed45f273a5e609834f031ed36c4f7', '工资表.xls', 'admin/20200715/b842c95301331baefa9e3087f784e258.xls', '8a7347f656fb94a948260fe60510fbd4', 'c249b95b72526b36363ef7dc6ac7d0b5a008cf7b', 'xls', NULL);
INSERT INTO `ycyjxh_asset` VALUES (25, 1, 5446, 1594955015, 1, 0, '5377b5b60a7a6eab0f9f0bc81d9b3f9b575e3d6a9d2777d6638e05d54346c876', '8c2254fa487b67d28a674f0f3def084.png', 'portal/20200717/e53835eadbccd710dc566a342cc38b0a.png', '5377b5b60a7a6eab0f9f0bc81d9b3f9b', '8d52e05095b05b81cb9a576c13111bf82dbf5527', 'png', NULL);
INSERT INTO `ycyjxh_asset` VALUES (26, 1, 12878, 1594967921, 1, 0, '892485d09c47f973c1cf8ac13997d7687ab41e46472ab2ca232e64c23cdfaba2', '面性电脑图标.png', 'portal/20200717/16f94b0a7ed957bd8d666bfb4489b329.png', '892485d09c47f973c1cf8ac13997d768', '57226ed863b1333598417a0c17886d00455c216f', 'png', NULL);
INSERT INTO `ycyjxh_asset` VALUES (27, 1, 23195, 1594969584, 1, 0, '539626a3b360d5769118a89e737c6435141b08c4ba6acdde56eb3bc4eb85cafa', '面性记录单图标.png', 'portal/20200717/5e148890d6a73933875216799e57e51a.png', '539626a3b360d5769118a89e737c6435', 'b9228bf42e1b8d97c8c9afcb5ecc97ddf956f478', 'png', NULL);

-- ----------------------------
-- Table structure for ycyjxh_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_auth_access`;
CREATE TABLE `ycyjxh_auth_access`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色',
  `rule_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限授权表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_auth_rule`;
CREATE TABLE `ycyjxh_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `module`(`app`, `status`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_auth_rule
-- ----------------------------
INSERT INTO `ycyjxh_auth_rule` VALUES (1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '插件中心', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (108, 1, 'admin', 'admin_url', 'admin/Theme/design', '', '模板设计', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (109, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (110, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (111, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (112, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (113, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (114, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (115, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (116, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (117, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (118, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (119, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (120, 1, 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (121, 1, 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (122, 1, 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (123, 1, 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (124, 1, 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (125, 1, 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (126, 1, 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (127, 1, 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (128, 1, 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (129, 1, 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (130, 1, 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (131, 1, 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (132, 1, 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (133, 1, 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (134, 1, 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (135, 1, 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (136, 1, 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (137, 1, 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (138, 1, 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (139, 1, 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (140, 1, 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (141, 1, 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (142, 1, 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (143, 1, 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (144, 1, 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (145, 1, 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (146, 1, 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (147, 1, 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (148, 1, 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (149, 1, 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (150, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (151, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (152, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (153, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (154, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (155, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (156, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (157, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (158, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (159, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (160, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (161, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (162, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (163, 1, 'admin', 'admin_url', 'admin/Cert/default', '', '证书管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (164, 1, 'admin', 'admin_url', 'admin/Cert/index', 'model=1', '证书管理', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (165, 1, 'admin', 'admin_url', 'admin/Cert/index2', '', '监理数据-个人', '');
INSERT INTO `ycyjxh_auth_rule` VALUES (166, 1, 'admin', 'admin_url', 'admin/Cert/index3', '', '监理数据-公司', '');

-- ----------------------------
-- Table structure for ycyjxh_cert
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_cert`;
CREATE TABLE `ycyjxh_cert`  (
  `id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `model` int(10) NOT NULL COMMENT '模型iD',
  `attr_0` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_6` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_7` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_8` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_9` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_10` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_11` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_12` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_13` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_14` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_15` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_16` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_17` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_18` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_19` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_20` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '证书数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_cert_structure
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_cert_structure`;
CREATE TABLE `ycyjxh_cert_structure`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model` int(2) NOT NULL COMMENT '模式ID',
  `key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'attr_num',
  `value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'attr_value ',
  `must` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否是必须',
  `show` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否在前端展示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 169 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '证书结构表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_cert_structure
-- ----------------------------
INSERT INTO `ycyjxh_cert_structure` VALUES (85, 1, 'attr_0', '证书编号', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (86, 1, 'attr_1', '姓名', 1, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (87, 1, 'attr_2', '身份证', 1, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (88, 1, 'attr_3', '性别', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (89, 1, 'attr_4', '出生日期', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (90, 1, 'attr_5', '学历', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (91, 1, 'attr_6', '联系电话', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (92, 1, 'attr_7', '工作单位', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (93, 1, 'attr_8', '技术专业', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (94, 1, 'attr_9', '申报时间', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (95, 1, 'attr_10', '批准时间', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (96, 1, 'attr_11', '申报等级', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (97, 1, 'attr_12', '评审结果', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (98, 1, 'attr_13', '评审组长', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (99, 1, 'attr_14', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (100, 1, 'attr_15', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (101, 1, 'attr_16', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (102, 1, 'attr_17', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (103, 1, 'attr_18', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (104, 1, 'attr_19', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (105, 1, 'attr_20', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (106, 0, 'attr_0', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (107, 0, 'attr_1', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (108, 0, 'attr_2', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (109, 0, 'attr_3', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (110, 0, 'attr_4', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (111, 0, 'attr_5', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (112, 0, 'attr_6', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (113, 0, 'attr_7', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (114, 0, 'attr_8', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (115, 0, 'attr_9', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (116, 0, 'attr_10', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (117, 0, 'attr_11', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (118, 0, 'attr_12', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (119, 0, 'attr_13', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (120, 0, 'attr_14', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (121, 0, 'attr_15', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (122, 0, 'attr_16', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (123, 0, 'attr_17', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (124, 0, 'attr_18', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (125, 0, 'attr_19', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (126, 0, 'attr_20', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (127, 2, 'attr_0', '姓名', 1, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (128, 2, 'attr_1', '身份证号', 1, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (129, 2, 'attr_2', '性别', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (130, 2, 'attr_3', '出生日期', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (131, 2, 'attr_4', '学历', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (132, 2, 'attr_5', '工作单位', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (133, 2, 'attr_6', '技术专业', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (134, 2, 'attr_7', '证书编号', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (135, 2, 'attr_8', '发证日期', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (136, 2, 'attr_9', '证书有效期', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (137, 2, 'attr_10', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (138, 2, 'attr_11', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (139, 2, 'attr_12', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (140, 2, 'attr_13', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (141, 2, 'attr_14', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (142, 2, 'attr_15', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (143, 2, 'attr_16', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (144, 2, 'attr_17', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (145, 2, 'attr_18', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (146, 2, 'attr_19', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (147, 2, 'attr_20', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (148, 3, 'attr_0', '单位名称', 1, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (149, 3, 'attr_1', '通信地址', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (150, 3, 'attr_2', '法人代表', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (151, 3, 'attr_3', '联系人', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (152, 3, 'attr_4', '联系电话', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (153, 3, 'attr_5', '资质等级', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (154, 3, 'attr_6', '发证日期', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (155, 3, 'attr_7', '换证日期', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (156, 3, 'attr_8', '证书有效期', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (157, 3, 'attr_9', '证书编号', 0, 1);
INSERT INTO `ycyjxh_cert_structure` VALUES (158, 3, 'attr_10', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (159, 3, 'attr_11', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (160, 3, 'attr_12', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (161, 3, 'attr_13', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (162, 3, 'attr_14', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (163, 3, 'attr_15', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (164, 3, 'attr_16', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (165, 3, 'attr_17', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (166, 3, 'attr_18', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (167, 3, 'attr_19', '', 0, 0);
INSERT INTO `ycyjxh_cert_structure` VALUES (168, 3, 'attr_20', '', 0, 0);

-- ----------------------------
-- Table structure for ycyjxh_comment
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_comment`;
CREATE TABLE `ycyjxh_comment`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被回复的评论id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发表评论的用户id',
  `to_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被评论的用户id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论内容 id',
  `like_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  `dislike_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '不喜欢数',
  `floor` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '楼层数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `table_id_status`(`table_name`, `object_id`, `status`) USING BTREE,
  INDEX `object_id`(`object_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_hook
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_hook`;
CREATE TABLE `ycyjxh_hook`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_hook
-- ----------------------------
INSERT INTO `ycyjxh_hook` VALUES (1, 1, 0, '应用初始化', 'app_init', 'cmf', '应用初始化');
INSERT INTO `ycyjxh_hook` VALUES (2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `ycyjxh_hook` VALUES (3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `ycyjxh_hook` VALUES (4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `ycyjxh_hook` VALUES (5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `ycyjxh_hook` VALUES (6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `ycyjxh_hook` VALUES (7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `ycyjxh_hook` VALUES (8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `ycyjxh_hook` VALUES (9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `ycyjxh_hook` VALUES (10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `ycyjxh_hook` VALUES (11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `ycyjxh_hook` VALUES (12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `ycyjxh_hook` VALUES (13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `ycyjxh_hook` VALUES (14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `ycyjxh_hook` VALUES (15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `ycyjxh_hook` VALUES (16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `ycyjxh_hook` VALUES (17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `ycyjxh_hook` VALUES (18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `ycyjxh_hook` VALUES (19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `ycyjxh_hook` VALUES (20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `ycyjxh_hook` VALUES (21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `ycyjxh_hook` VALUES (22, 3, 1, '评论区', 'comment', '', '评论区');
INSERT INTO `ycyjxh_hook` VALUES (23, 3, 1, '留言区', 'guestbook', '', '留言区');
INSERT INTO `ycyjxh_hook` VALUES (24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `ycyjxh_hook` VALUES (25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `ycyjxh_hook` VALUES (26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `ycyjxh_hook` VALUES (27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `ycyjxh_hook` VALUES (28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `ycyjxh_hook` VALUES (29, 3, 0, '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `ycyjxh_hook` VALUES (30, 2, 0, '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `ycyjxh_hook` VALUES (31, 2, 0, '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');
INSERT INTO `ycyjxh_hook` VALUES (32, 2, 1, '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `ycyjxh_hook` VALUES (33, 3, 0, '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `ycyjxh_hook` VALUES (34, 1, 0, '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `ycyjxh_hook` VALUES (35, 1, 1, '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');
INSERT INTO `ycyjxh_hook` VALUES (36, 1, 1, '验证码图片', 'captcha_image', 'cmf', '验证码图片');
INSERT INTO `ycyjxh_hook` VALUES (37, 2, 1, '后台模板设计界面', 'admin_theme_design_view', 'admin', '后台模板设计界面');
INSERT INTO `ycyjxh_hook` VALUES (38, 2, 1, '后台设置网站信息界面', 'admin_setting_site_view', 'admin', '后台设置网站信息界面');
INSERT INTO `ycyjxh_hook` VALUES (39, 2, 1, '后台清除缓存界面', 'admin_setting_clear_cache_view', 'admin', '后台清除缓存界面');
INSERT INTO `ycyjxh_hook` VALUES (40, 2, 1, '后台导航管理界面', 'admin_nav_index_view', 'admin', '后台导航管理界面');
INSERT INTO `ycyjxh_hook` VALUES (41, 2, 1, '后台友情链接管理界面', 'admin_link_index_view', 'admin', '后台友情链接管理界面');
INSERT INTO `ycyjxh_hook` VALUES (42, 2, 1, '后台幻灯片管理界面', 'admin_slide_index_view', 'admin', '后台幻灯片管理界面');
INSERT INTO `ycyjxh_hook` VALUES (43, 2, 1, '后台管理员列表界面', 'admin_user_index_view', 'admin', '后台管理员列表界面');
INSERT INTO `ycyjxh_hook` VALUES (44, 2, 1, '后台角色管理界面', 'admin_rbac_index_view', 'admin', '后台角色管理界面');
INSERT INTO `ycyjxh_hook` VALUES (45, 2, 1, '门户后台文章管理列表界面', 'portal_admin_article_index_view', 'portal', '门户后台文章管理列表界面');
INSERT INTO `ycyjxh_hook` VALUES (46, 2, 1, '门户后台文章分类管理列表界面', 'portal_admin_category_index_view', 'portal', '门户后台文章分类管理列表界面');
INSERT INTO `ycyjxh_hook` VALUES (47, 2, 1, '门户后台页面管理列表界面', 'portal_admin_page_index_view', 'portal', '门户后台页面管理列表界面');
INSERT INTO `ycyjxh_hook` VALUES (48, 2, 1, '门户后台文章标签管理列表界面', 'portal_admin_tag_index_view', 'portal', '门户后台文章标签管理列表界面');
INSERT INTO `ycyjxh_hook` VALUES (49, 2, 1, '用户管理本站用户列表界面', 'user_admin_index_view', 'user', '用户管理本站用户列表界面');
INSERT INTO `ycyjxh_hook` VALUES (50, 2, 1, '资源管理列表界面', 'user_admin_asset_index_view', 'user', '资源管理列表界面');
INSERT INTO `ycyjxh_hook` VALUES (51, 2, 1, '用户管理第三方用户列表界面', 'user_admin_oauth_index_view', 'user', '用户管理第三方用户列表界面');
INSERT INTO `ycyjxh_hook` VALUES (52, 2, 1, '后台首页界面', 'admin_index_index_view', 'admin', '后台首页界面');
INSERT INTO `ycyjxh_hook` VALUES (53, 2, 1, '后台回收站界面', 'admin_recycle_bin_index_view', 'admin', '后台回收站界面');
INSERT INTO `ycyjxh_hook` VALUES (54, 2, 1, '后台菜单管理界面', 'admin_menu_index_view', 'admin', '后台菜单管理界面');
INSERT INTO `ycyjxh_hook` VALUES (55, 2, 1, '后台自定义登录是否开启钩子', 'admin_custom_login_open', 'admin', '后台自定义登录是否开启钩子');
INSERT INTO `ycyjxh_hook` VALUES (56, 4, 0, '门户后台文章添加编辑界面右侧栏', 'portal_admin_article_edit_view_right_sidebar', 'portal', '门户后台文章添加编辑界面右侧栏');
INSERT INTO `ycyjxh_hook` VALUES (57, 4, 0, '门户后台文章添加编辑界面主要内容', 'portal_admin_article_edit_view_main', 'portal', '门户后台文章添加编辑界面主要内容');
INSERT INTO `ycyjxh_hook` VALUES (58, 2, 1, '门户后台文章添加界面', 'portal_admin_article_add_view', 'portal', '门户后台文章添加界面');
INSERT INTO `ycyjxh_hook` VALUES (59, 2, 1, '门户后台文章编辑界面', 'portal_admin_article_edit_view', 'portal', '门户后台文章编辑界面');
INSERT INTO `ycyjxh_hook` VALUES (60, 2, 1, '门户后台文章分类添加界面', 'portal_admin_category_add_view', 'portal', '门户后台文章分类添加界面');
INSERT INTO `ycyjxh_hook` VALUES (61, 2, 1, '门户后台文章分类编辑界面', 'portal_admin_category_edit_view', 'portal', '门户后台文章分类编辑界面');
INSERT INTO `ycyjxh_hook` VALUES (62, 2, 1, '门户后台页面添加界面', 'portal_admin_page_add_view', 'portal', '门户后台页面添加界面');
INSERT INTO `ycyjxh_hook` VALUES (63, 2, 1, '门户后台页面编辑界面', 'portal_admin_page_edit_view', 'portal', '门户后台页面编辑界面');
INSERT INTO `ycyjxh_hook` VALUES (64, 2, 1, '后台幻灯片页面列表界面', 'admin_slide_item_index_view', 'admin', '后台幻灯片页面列表界面');
INSERT INTO `ycyjxh_hook` VALUES (65, 2, 1, '后台幻灯片页面添加界面', 'admin_slide_item_add_view', 'admin', '后台幻灯片页面添加界面');
INSERT INTO `ycyjxh_hook` VALUES (66, 2, 1, '后台幻灯片页面编辑界面', 'admin_slide_item_edit_view', 'admin', '后台幻灯片页面编辑界面');
INSERT INTO `ycyjxh_hook` VALUES (67, 2, 1, '后台管理员添加界面', 'admin_user_add_view', 'admin', '后台管理员添加界面');
INSERT INTO `ycyjxh_hook` VALUES (68, 2, 1, '后台管理员编辑界面', 'admin_user_edit_view', 'admin', '后台管理员编辑界面');
INSERT INTO `ycyjxh_hook` VALUES (69, 2, 1, '后台角色添加界面', 'admin_rbac_role_add_view', 'admin', '后台角色添加界面');
INSERT INTO `ycyjxh_hook` VALUES (70, 2, 1, '后台角色编辑界面', 'admin_rbac_role_edit_view', 'admin', '后台角色编辑界面');
INSERT INTO `ycyjxh_hook` VALUES (71, 2, 1, '后台角色授权界面', 'admin_rbac_authorize_view', 'admin', '后台角色授权界面');
INSERT INTO `ycyjxh_hook` VALUES (72, 1, 0, '应用调度', 'app_dispatch', 'cmf', '应用调度');

-- ----------------------------
-- Table structure for ycyjxh_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_hook_plugin`;
CREATE TABLE `ycyjxh_hook_plugin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子插件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_hook_plugin
-- ----------------------------
INSERT INTO `ycyjxh_hook_plugin` VALUES (1, 10000, 1, 'after_content', 'Topdown');

-- ----------------------------
-- Table structure for ycyjxh_link
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_link`;
CREATE TABLE `ycyjxh_link`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT 0 COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_link
-- ----------------------------
INSERT INTO `ycyjxh_link` VALUES (2, 1, 0, 10000, '', 'www.baidu.com', '中华人民共和国农业部', '', '_blank', '');
INSERT INTO `ycyjxh_link` VALUES (3, 1, 0, 10000, '', 'www.baidu.com', '中国农业信息网', '', '_blank', '');
INSERT INTO `ycyjxh_link` VALUES (4, 1, 0, 10000, '', 'www.baidu.com', '山东省海洋与渔业厅', '', '_blank', '');
INSERT INTO `ycyjxh_link` VALUES (5, 1, 0, 10000, '', 'www.baidu.com', '广东渔船渔机渔具行业协会', '', '_blank', '');
INSERT INTO `ycyjxh_link` VALUES (6, 1, 0, 10000, '', 'www.baidu.com', '中华人民共和国渔业船舶检验局', '', '_blank', '');
INSERT INTO `ycyjxh_link` VALUES (7, 1, 0, 10000, '', '	www.baidu.com', '111', '', '_blank', '');
INSERT INTO `ycyjxh_link` VALUES (8, 1, 0, 10000, '', '	www.baidu.com', '22222', '', '_blank', '');
INSERT INTO `ycyjxh_link` VALUES (9, 1, 0, 10000, '', 'http://wxa.suuweb.cn/api.php?id=9', '中华人民共和国农业部', '', '_blank', '');
INSERT INTO `ycyjxh_link` VALUES (10, 0, 0, 10000, '', 'http://php-web-yuyi.oss-cn-zhangjiakou.aliyuncs.com/suu/Auto.js.apk?Expires=1572591394&amp;OSSAccessKeyId=TMP.hfQtJHFMA2P2qaT3Rb4z1wbRNfUpkZhPNpEVR6kcphvPzCYcJc3jWNeJVzKkpbFzSVw81wkdcpGe6F65NABz2aXeSAPWvG7MtZQMgRDWLZPjw8atwhEYVUiwNRcfL2.tmp&amp;Signature=', 'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '', '_blank', '');

-- ----------------------------
-- Table structure for ycyjxh_nav
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_nav`;
CREATE TABLE `ycyjxh_nav`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '前台导航位置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_nav
-- ----------------------------
INSERT INTO `ycyjxh_nav` VALUES (1, 1, '主导航', '主导航');
INSERT INTO `ycyjxh_nav` VALUES (2, 0, '底部导航', '');

-- ----------------------------
-- Table structure for ycyjxh_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_nav_menu`;
CREATE TABLE `ycyjxh_nav_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '前台导航菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_nav_menu
-- ----------------------------
INSERT INTO `ycyjxh_nav_menu` VALUES (1, 1, 0, 1, 0, '首页', '', 'home', '', '0-1');
INSERT INTO `ycyjxh_nav_menu` VALUES (2, 1, 0, 1, 10000, '协会概况', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":1}}', '', '');
INSERT INTO `ycyjxh_nav_menu` VALUES (3, 1, 0, 1, 10000, '新闻资讯', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":2}}', '', '');
INSERT INTO `ycyjxh_nav_menu` VALUES (4, 1, 0, 1, 10000, '技能鉴定', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":3}}', '', '');
INSERT INTO `ycyjxh_nav_menu` VALUES (6, 1, 0, 1, 10000, '会员之窗', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":4}}', '', '');
INSERT INTO `ycyjxh_nav_menu` VALUES (7, 1, 0, 1, 10000, '行业专家', '', 'http://yc.com/portal/article/index/id/21.html', '', '');
INSERT INTO `ycyjxh_nav_menu` VALUES (8, 1, 0, 1, 10000, '联系我们', '_blank', '{\"action\":\"portal\\/Page\\/index\",\"param\":{\"id\":1}}', '', '');
INSERT INTO `ycyjxh_nav_menu` VALUES (9, 1, 0, 1, 10000, '证书查询', '_blank', '/portal/Cert/index', '', '');
INSERT INTO `ycyjxh_nav_menu` VALUES (10, 1, 0, 0, 10000, '下载管理', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":28}}', '', '');

-- ----------------------------
-- Table structure for ycyjxh_option
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_option`;
CREATE TABLE `ycyjxh_option`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '全站配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_option
-- ----------------------------
INSERT INTO `ycyjxh_option` VALUES (1, 1, 'site_info', '{\"site_name\":\"\\u6e14\\u8239\\u6e14\\u5177\\u534f\\u4f1a\",\"site_seo_title\":\"\\u6e14\\u8239\\u6e14\\u5177\\u534f\\u4f1a\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"\",\"site_icp\":\"\\u9c81ICP-327866758324\",\"site_gwa\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\"}');
INSERT INTO `ycyjxh_option` VALUES (2, 1, 'cmf_settings', '{\"open_registration\":\"1\",\"banned_usernames\":\"\"}');
INSERT INTO `ycyjxh_option` VALUES (3, 1, 'cdn_settings', '{\"cdn_static_root\":\"\"}');
INSERT INTO `ycyjxh_option` VALUES (4, 1, 'admin_settings', '{\"admin_password\":\"\",\"admin_theme\":\"admin_simpleboot3\",\"admin_style\":\"simpleadmin\"}');

-- ----------------------------
-- Table structure for ycyjxh_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_plugin`;
CREATE TABLE `ycyjxh_plugin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '插件安装时间',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '插件描述',
  `config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '插件配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '插件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_plugin
-- ----------------------------
INSERT INTO `ycyjxh_plugin` VALUES (1, 1, 0, 1, 0, 'Topdown', '文章上一篇下一篇', 'http://demo.thinkcmf.com', '', 'dy', 'http://www.thinkcmf.com', '1.0', '文章上一篇下一篇', '[]');

-- ----------------------------
-- Table structure for ycyjxh_portal_category
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_portal_category`;
CREATE TABLE `ycyjxh_portal_category`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类父id',
  `post_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类文章数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `list_tpl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'portal应用 文章分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_portal_category
-- ----------------------------
INSERT INTO `ycyjxh_portal_category` VALUES (1, 0, 0, 1, 0, 10000, '协会概况', '', '0-1', '', '', '', 'survey', 'article_sur', '{\"thumbnail\":\"portal\\/20200703\\/4b42810f0d384688c866b50f7b427c55.png\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (2, 0, 0, 1, 0, 10000, '新闻资讯', '', '0-2', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20200703\\/4b42810f0d384688c866b50f7b427c55.png\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (3, 0, 0, 1, 0, 10000, '技能鉴定', '', '0-3', '', '', '', 'news', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (4, 0, 0, 1, 0, 10000, '会员之窗', '', '0-4', '', '', '', 'news', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (5, 0, 0, 1, 0, 10000, '行业专家', '', '0-5', '', '', '', 'expert_list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (6, 0, 0, 1, 1593673127, 10000, '联系我们', '', '0-6', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (7, 0, 0, 1, 1593673132, 10000, '证书查询', '', '0-7', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (8, 5, 0, 1, 0, 10000, '渔网具类', '', '0-5-8', '', '', '', 'expert_list', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (9, 5, 0, 1, 0, 10000, '渔机类', '', '0-5-9', '', '', '', 'expert_list', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (10, 5, 0, 1, 0, 10000, '渔船类', '', '0-5-10', '', '', '', 'expert_list', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (11, 4, 0, 1, 0, 10000, '理事长单位', '', '0-4-11', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (12, 4, 0, 1, 0, 10000, '副理事长单位', '', '0-4-12', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (13, 4, 0, 1, 0, 10000, '常务理事单位', '', '0-4-13', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (14, 4, 0, 1, 0, 10000, '理事单位', '', '0-4-14', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (15, 4, 0, 1, 0, 10000, '会员单位', '', '0-4-15', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (16, 4, 0, 1, 0, 10000, '产品名录', '', '0-4-16', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (17, 3, 0, 1, 0, 10000, '鉴定活动', '', '0-3-17', '', '', '', 'news', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (18, 3, 0, 1, 0, 10000, '鉴定资料', '', '0-3-18', '', '', '', 'news', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (19, 3, 0, 1, 0, 10000, '证书查询', '', '0-3-19', '', '', '', 'news', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (20, 1, 0, 1, 0, 10000, '协会简介', '', '0-1-20', '', '', '', 'survey', 'article_sur', '{\"thumbnail\":\"portal\\/20200717\\/16f94b0a7ed957bd8d666bfb4489b329.png\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (21, 1, 0, 1, 0, 10000, '组织机构', '', '0-1-21', '', '', '', 'survey', 'article_sur', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (22, 1, 0, 1, 0, 10000, '协会章程', '', '0-1-22', '', '', '', 'survey', 'article_sur', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (23, 2, 0, 1, 0, 10000, '协会动态', '', '0-2-23', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"portal\\/20200706\\/3efeec23e6830e5042f634aec306fbaa.png\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (24, 2, 0, 1, 0, 10000, '协会简报', '', '0-2-24', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (25, 2, 0, 1, 0, 10000, '节能减排', '', '0-2-25', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (26, 2, 0, 1, 0, 10000, '重大活动', '', '0-2-26', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (27, 2, 0, 1, 0, 10000, '对外交流', '', '0-2-27', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (28, 0, 0, 1, 0, 10000, '下载管理', '', '0-28', '', '', '', 'download_list', 'download', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (29, 0, 0, 1, 0, 10000, '冠名评审', '', '0-29', '', '', '', 'news', 'article_only', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (30, 0, 0, 1, 0, 10000, '推荐企业', '', '0-30', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (31, 0, 0, 1, 0, 10000, '渔船监理', '这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述', '0-31', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"portal\\/20200713\\/3bd072c9c3cba185de443b29cd841b9e.jpg\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (32, 0, 0, 1, 0, 10000, '信用评价', '这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述', '0-32', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"portal\\/20200713\\/ff7f022b2277392bb440befc6c5b27b4.jpg\"}');
INSERT INTO `ycyjxh_portal_category` VALUES (33, 0, 0, 1, 0, 10000, '职称评定', '这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述', '0-33', '', '', '', 'list', 'article_only', '{\"thumbnail\":\"portal\\/20200713\\/3517e66cb1aa04cf72171075280d8296.jpg\"}');

-- ----------------------------
-- Table structure for ycyjxh_portal_category_post
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_portal_category_post`;
CREATE TABLE `ycyjxh_portal_category_post`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id',
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `term_taxonomy_id`(`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'portal应用 分类文章对应表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_portal_category_post
-- ----------------------------
INSERT INTO `ycyjxh_portal_category_post` VALUES (1, 2, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (2, 3, 11, 10000, 0);
INSERT INTO `ycyjxh_portal_category_post` VALUES (3, 4, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (4, 4, 24, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (5, 4, 25, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (6, 4, 26, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (7, 4, 27, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (8, 5, 2, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (9, 6, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (10, 7, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (11, 8, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (12, 9, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (13, 10, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (14, 11, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (15, 12, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (16, 12, 24, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (17, 12, 25, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (18, 12, 26, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (19, 13, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (20, 14, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (21, 15, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (22, 16, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (23, 17, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (24, 18, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (25, 19, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (26, 20, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (27, 21, 11, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (28, 21, 12, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (29, 21, 13, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (30, 21, 14, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (31, 21, 15, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (32, 21, 16, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (33, 22, 11, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (34, 22, 12, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (35, 22, 13, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (36, 22, 14, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (37, 22, 15, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (38, 22, 16, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (39, 23, 11, 10000, 0);
INSERT INTO `ycyjxh_portal_category_post` VALUES (40, 24, 11, 10000, 0);
INSERT INTO `ycyjxh_portal_category_post` VALUES (41, 25, 11, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (42, 26, 17, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (43, 26, 18, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (44, 26, 19, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (45, 27, 26, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (47, 28, 18, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (48, 29, 19, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (49, 30, 17, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (50, 30, 18, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (51, 31, 28, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (52, 32, 28, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (53, 33, 28, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (54, 34, 28, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (55, 35, 20, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (56, 36, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (57, 37, 9, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (58, 38, 10, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (59, 39, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (60, 40, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (61, 41, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (62, 42, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (63, 43, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (64, 45, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (65, 46, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (66, 44, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (67, 47, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (68, 48, 8, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (69, 56, 30, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (70, 57, 30, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (71, 58, 30, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (72, 59, 23, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (73, 61, 21, 10000, 1);
INSERT INTO `ycyjxh_portal_category_post` VALUES (74, 62, 22, 10000, 1);

-- ----------------------------
-- Table structure for ycyjxh_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_portal_post`;
CREATE TABLE `ycyjxh_portal_post`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级id',
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发表者用户id',
  `post_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '查看数',
  `post_favorites` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '收藏数',
  `post_like` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  `comment_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `published_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发布时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `post_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章内容',
  `post_content_filtered` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '处理过的文章内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_status_date`(`post_type`, `post_status`, `create_time`, `id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'portal应用 文章表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_portal_post
-- ----------------------------
INSERT INTO `ycyjxh_portal_post` VALUES (1, 0, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1593673060, 1594970124, 1593672780, 0, '联系我们', '', '', '', '', '\n&lt;p&gt;1234325432143124傻的叫客服一度失控积分换就扣多少分就快得很付款就是多个付款就收到回复接收到附近还开发过塑封袋好狂欢节已的看法和鞍山的健康吧比我可能是淡季还能睡觉不对劲大明风华快点撒就好跨境拉开距离可使肌肤来看待加快速度结果反馈可撒点半付款就拿了开奖时间来开黑放哪里阿塞拜疆红烧豆腐不可断绝发红包看的撒发吧客户端说被罚款十八酒坊看加铝扣板开讲啦是国防科技阿十八酒坊卡哈萨克就发哈数据库不监控器为背景hi我饿天花板假的舒服三级，返回看丝黛芬妮开例会98213内容可以得很难看凤凰火尼1 yhenkfh982iobnf0那地方20你多少分代发货了卡上的回复2你买了，花生壳蜂鸟上的李开复和2纪念币弗兰克就和回复的接口发生离欧萨UI家第十八就卡了可是电脑莱卡是&lt;/p&gt;\n&lt;p&gt;奥斯卡就打开金饰打卡机拉花点击卡号第三十&lt;/p&gt;\n&lt;p&gt;框架还是大浩哥还是卡&lt;/p&gt;\n&lt;p&gt;急啊还是快递炬华科技温柔&lt;/p&gt;\n&lt;p&gt;拉可接受的看见啊还是得看进去玩1&lt;/p&gt;\n&lt;p&gt;阿经理可是打卡机好的框架 3人13 &lt;/p&gt;\n&lt;p&gt;啥近来可好的框架换个空间我等会&lt;/p&gt;\n&lt;p&gt;框架来和科技和刚点开就&lt;/p&gt;\n&lt;p&gt;✿┄┄┄┄┄┄┄♥♥♥♥♥♥♥♥♥♥♥♥┄┄┄┄┄┄┄✿&lt;/p&gt;\n&lt;p&gt;の ) - &lt;/p&gt;\n&lt;p&gt;︶╯ˋ ＭＭ活动“看了女神一百块都不给我”&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;✿.喜欢麦上宝贝的小伙伴可以刷出你们礼物来支持他们哟。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;✿.来选出你们心目中的女神吧！&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;✿.妹子需要你们的支持哟&lt;/p&gt;\n&lt;p&gt;✿┄┄┄┄┄┄┄♥♥♥♥♥♥♥♥♥♥♥♥┄┄┄┄┄┄┄✿&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;1框架和客家话让块级 好 &lt;/p&gt;\n&lt;p&gt;啥会计然后刚点开就 和3 &lt;/p&gt;\n&lt;p&gt;2客户卡1 &lt;/p&gt;\n&lt;p&gt;1 1接口离开看了和哪里看呢 &lt;/p&gt;\n&lt;p&gt;看了2很努力 看&lt;/p&gt;\n', NULL, '{\"thumbnail\":\"portal\\/20200717\\/5e148890d6a73933875216799e57e51a.png\",\"template\":\"contact\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (2, 0, 1, 1, 1, 1, 1, 0, 0, 54, 0, 0, 0, 1593673812, 1593673833, 1594087002, 0, '这是测试i', '', '', '', '', '&lt;p&gt;&lt;img src=&quot;http://www.yuchuan.org/upfile/2015/12/20151202110154_800.jpg&quot;&gt;&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (3, 0, 1, 1, 1, 1, 1, 0, 0, 9, 0, 0, 0, 1593674829, 1593674842, 1593674760, 1594954455, '测试', '', '', '', '', '\n&lt;p style=&quot;line-height: 16px;&quot;&gt;&lt;img style=&quot;vertical-align: middle; margin-right: 2px;&quot; src=&quot;/static/js/ueditor/dialogs/attachment/fileTypeImages/icon_pdf.gif&quot;&gt;&lt;a style=&quot;font-size:12px; color:#0066cc;&quot; href=&quot;default/20200702/aac0a550c9636b8b1e90247e0d6adbf6.pdf&quot; title=&quot;域名解析增加.pdf&quot;&gt;域名解析增加.pdf&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\",\"files\":[{\"url\":\"admin\\/20200702\\/2de62636a26577778408c56e51b9ce4d.xls\",\"name\":\"工资表.xls\"}]}');
INSERT INTO `ycyjxh_portal_post` VALUES (4, 0, 1, 1, 1, 1, 1, 0, 0, 16, 0, 0, 0, 1593742256, 1594572850, 1594086960, 0, '这是一个新闻', '这是一个新闻', '', '', '', '\n&lt;p style=&quot;box-sizing: border-box; font-family: 微软雅黑; margin-bottom: 10px; padding: 0px; font-size: 12px; white-space: normal; text-indent: 32px; line-height: 1.5em;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-family: 宋体; letter-spacing: 0px; font-size: 16px;&quot;&gt;6月11日，由山东宇易科技公司电商技术部项目开发团队研发的，e运河产业商务网专属“行业地图”2.0版，路线智慧规划功能成功上线！&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; font-family: 微软雅黑; margin-bottom: 10px; padding: 0px; font-size: 12px; white-space: normal; text-indent: 28px; line-height: 1.5em;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; letter-spacing: 0px; font-size: 14px;&quot;&gt; &lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; font-family: 微软雅黑; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 12px; white-space: normal; text-align: center;&quot;&gt;&lt;img src=&quot;http://www.yuyigufen.com/yuyigufen/Public/Ueditor/upload/image/20190611/1560233539576973.jpg&quot; title=&quot;1560233539576973.jpg&quot; alt=&quot;微信图片_20190611140842.jpg&quot; width=&quot;527&quot; height=&quot;295&quot; style=&quot;box-sizing: border-box; border: 0px; max-width: 100%;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-size: 14px; letter-spacing: 0px; text-indent: 28px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; font-family: 微软雅黑; margin-bottom: 10px; padding: 0px; font-size: 12px; white-space: normal; text-indent: 32px; line-height: 1.5em;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-family: 宋体; letter-spacing: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;在技术开发团队与运营策划团队、数据分析团队的共同努力下，&lt;/span&gt;e运河网行业地图“出行路线智慧规划”功能实现阶段性设计目标，成功上线！&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; font-family: 微软雅黑; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 12px; white-space: normal; text-align: center;&quot;&gt;&lt;img src=&quot;http://www.yuyigufen.com/yuyigufen/Public/Ueditor/upload/image/20190611/1560233556532601.jpg&quot; title=&quot;1560233556532601.jpg&quot; alt=&quot;微信图片_20190611140847.jpg&quot; width=&quot;529&quot; height=&quot;304&quot; style=&quot;box-sizing: border-box; border: 0px; max-width: 100%;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; font-family: 微软雅黑; margin-bottom: 10px; padding: 0px; font-size: 12px; white-space: normal; text-indent: 32px; line-height: 1.5em;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-family: 宋体; letter-spacing: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;路线智慧规划功能，是在&lt;/span&gt;e运河网行业地图的基础上，为用户提供智慧化出行路线优化的实用型功能。独创性的加入客车/货车/骑车等最佳适用路线推荐。为用户带来更加精准、高效的使用体验。路线智慧规划功能的实现，是e运河产业商务网在技术支持方面的重要突破。e运河网始终以技术创新为动力，为用户提供高效、实用的网络在线服务产品。用智慧技术不断优化用户体验。“行业地图”的更多智慧功能应用正在陆续研发中。e运河商务网的智慧服务功能将日益丰富。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; font-family: 微软雅黑; margin-bottom: 10px; padding: 0px; font-size: 12px; white-space: normal; text-indent: 32px; line-height: 1.5em;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-family: 宋体; letter-spacing: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;宇易科技，致力于在信息技术、智慧技术创新的道路上奋勇向前！&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"thumbnail\":\"\",\"template\":\"article_only\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (5, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1594033719, 1594033719, 1594033705, 0, '新闻测试', '', '', '', '', '&lt;p&gt;新闻测试新闻测试新闻测试新闻测试&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (6, 0, 1, 1, 1, 1, 1, 0, 0, 5, 0, 0, 0, 1594086728, 1594086777, 1594087002, 0, '测试2', '', '', '', '', '&lt;p&gt;123123123123&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (7, 0, 1, 1, 1, 1, 1, 0, 0, 10, 0, 0, 0, 1594086789, 1594573763, 1594086960, 0, '测试3', '', '', '', '', '&lt;p&gt;2132&lt;/p&gt;', NULL, '{\"thumbnail\":\"\",\"template\":\"article_only\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (8, 0, 1, 1, 1, 1, 1, 0, 0, 3, 0, 0, 0, 1594086799, 1594086799, 1594087002, 0, '测试3', '', '', '', '', '&lt;p&gt;33333&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (9, 0, 1, 1, 1, 1, 1, 0, 0, 2, 0, 0, 0, 1594086809, 1594086809, 1594087002, 0, '测试4', '', '', '', '', '&lt;p&gt;测试4&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (10, 0, 1, 1, 1, 1, 1, 0, 0, 3, 0, 0, 0, 1594086823, 1594086823, 1594087002, 0, '测试5', '', '', '', '', '&lt;p&gt;测测&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (11, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594086834, 1594086834, 1594086997, 0, '测6', '', '', '', '', '&lt;p&gt;6543&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (12, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594086855, 1594086855, 1594086997, 0, '测7', '', '', '', '', '&lt;p&gt;测试566&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (13, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594086867, 1594086867, 1594086997, 0, '测8', '', '', '', '', '&lt;p&gt;213的&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (14, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594086886, 1594086886, 1594086997, 0, '测9', '', '', '', '', '&lt;p&gt;11111&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (15, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594086896, 1594086896, 1594086997, 0, '测0', '', '', '', '', '&lt;p&gt;123&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (16, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594086906, 1594086906, 1594086997, 0, '测11', '', '', '', '', '&lt;p&gt;1111&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (17, 0, 1, 1, 1, 1, 1, 0, 0, 2, 0, 0, 0, 1594086915, 1594086915, 1594086997, 0, '测123', '', '', '', '', '&lt;p&gt;12321312&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (18, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594086925, 1594086925, 1594086997, 0, '测444', '', '', '', '', '&lt;p&gt;23211&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (19, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594086943, 1594086943, 1594086997, 0, '测555', '', '', '', '', '&lt;p&gt;343&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (20, 0, 1, 1, 1, 1, 1, 0, 0, 10, 0, 0, 0, 1594086964, 1594108958, 1594028700, 0, '这是一条正经的标题，哈哈哈哈', '', '', '', '', '&lt;p&gt;12312312&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (21, 0, 1, 1, 1, 1, 1, 0, 0, 10, 0, 0, 0, 1594173243, 1594173265, 1594173180, 0, '测试22222', '', '', '', '', '&lt;p&gt;测  &lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (22, 0, 1, 1, 1, 1, 1, 0, 0, 9, 0, 0, 0, 1594174836, 1594174841, 1594174800, 0, '萨达萨达是', '', '', '', '', '&lt;p&gt;123123123123123123&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (23, 0, 1, 1, 1, 1, 1, 0, 0, 16, 0, 0, 0, 1594175739, 1594175739, 1594175771, 1594954450, '测1', '', '', '', '', '&lt;p&gt;1213&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (24, 0, 1, 1, 1, 1, 1, 0, 0, 2, 0, 0, 0, 1594175749, 1594175749, 1594175771, 1594954446, '测23', '', '', '', '', '&lt;p&gt;23&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (25, 0, 1, 1, 1, 1, 1, 0, 0, 9, 0, 0, 0, 1594175761, 1594954462, 1594175760, 0, '测23', '', '', '', '', '&lt;p&gt;&lt;img src=&quot;http://test.eyunhe.net/upload/default/20200713/7a6375e5ed78c003bbaf14f3f50602d0.jpg&quot; title=&quot;农业.jpg&quot; alt=&quot;农业.jpg&quot; style=&quot;white-space: normal;&quot;&gt;&lt;/p&gt;', NULL, '{\"thumbnail\":\"\",\"template\":\"article_only\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (26, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1594179577, 1594179577, 1594179564, 0, '技能鉴定等等', '', '', '', '', '&lt;p&gt;123123123&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (27, 0, 1, 1, 1, 1, 1, 0, 0, 13, 0, 0, 0, 1594204343, 1594573301, 1594204320, 0, '哈哈哈哈哈哈哈哈哈哈', '', '', '', '', '&lt;p&gt;13&lt;/p&gt;', NULL, '{\"thumbnail\":\"\",\"template\":\"article_only\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (28, 0, 1, 1, 1, 1, 1, 0, 0, 2, 0, 0, 0, 1594206341, 1594206357, 1594206424, 0, '资料你', '', '', '', '', '&lt;p&gt;123123&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (29, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1594206377, 1594206377, 1594206424, 0, '证书查询', '', '', '', '', '&lt;p style=&quot;text-align: center;&quot;&gt;12312312&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (30, 0, 1, 1, 1, 1, 1, 0, 0, 2, 0, 0, 0, 1594206407, 1594206407, 1594206424, 0, '哈哈哈哈哈哈', '', '', '', '', '&lt;p style=&quot;text-align: center;&quot;&gt;123123213&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (31, 0, 1, 1, 1, 1, 1, 0, 0, 138, 0, 0, 0, 1594207661, 1594264638, 1594208460, 0, '资料1', '', '支持平台：Linux/Windows/Unix', '', '', '', NULL, '{\"thumbnail\":\"\",\"template\":\"download\",\"files\":[{\"url\":\"portal\\/20200708\\/6e2341826788968ebf76e072b5cda213.xlsx\",\"name\":\"宇易.xlsx\"},{\"url\":\"portal\\/20200708\\/44ab1d896ceda8b533267385bd2f1c44.docx\",\"name\":\"3213213.docx\"}]}');
INSERT INTO `ycyjxh_portal_post` VALUES (32, 0, 1, 1, 1, 1, 1, 0, 0, 13, 0, 0, 0, 1594290145, 1594291088, 1594290180, 0, '资料你', '', '', '', '', NULL, NULL, '{\"thumbnail\":\"\",\"template\":\"download\",\"files\":[{\"url\":\"portal\\/20200708\\/6e2341826788968ebf76e072b5cda213.xlsx\",\"name\":\"6e2341826788968ebf76e072b5cda213.xlsx\"}]}');
INSERT INTO `ycyjxh_portal_post` VALUES (33, 0, 1, 1, 1, 1, 1, 0, 0, 23, 0, 0, 0, 1594290425, 1594290730, 1594290600, 0, '顶顶顶顶', '', '', '', '', NULL, NULL, '{\"thumbnail\":\"\",\"template\":\"download\",\"files\":[{\"url\":\"portal\\/20200709\\/e4ff79547a825a6663df8e4c22c5be9f.txt\",\"name\":\"维修模块.txt\"}]}');
INSERT INTO `ycyjxh_portal_post` VALUES (34, 0, 1, 1, 1, 1, 1, 0, 0, 46, 0, 0, 0, 1594291895, 1594573620, 1594291860, 0, '23123123123', '', '333333', ' ', '', '&lt;p style=&quot;text-align: center;&quot;&gt;zhe e s &lt;/p&gt;', NULL, '{\"thumbnail\":\"\",\"template\":\"download\",\"files\":[{\"url\":\"portal\\/20200709\\/1789ae55cba00d9a253a0da4536625b7.pdf\",\"name\":\"2020年3月9日搜索官网服务器续费.pdf\",\"size\":\"78973\"}]}');
INSERT INTO `ycyjxh_portal_post` VALUES (35, 0, 1, 1, 1, 1, 1, 0, 0, 58, 0, 0, 0, 1594358983, 1595498086, 1594359060, 0, '协会简介', '', '', '', '', '&lt;p&gt;这是协会简介ca&lt;/p&gt;', NULL, '{\"thumbnail\":\"\",\"template\":\"article_sur\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (36, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594361030, 1594361030, 1594361353, 0, '张三', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', '&lt;p&gt;这里是这个人的介绍&lt;/p&gt;', NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (37, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1594361273, 1594361273, 1594361353, 0, '李四', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', '\n&lt;pre style=&quot;background-color:#272822;color:#f8f8f2;font-family:\'宋体\';font-size:12.0pt;&quot;&gt;行业专家页&lt;/pre&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (38, 0, 1, 1, 1, 1, 1, 0, 0, 4, 0, 0, 0, 1594361307, 1594361307, 1594361353, 0, '王五', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', '&lt;p&gt;啛啛喳喳&lt;/p&gt;', NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (39, 0, 1, 1, 1, 1, 1, 0, 0, 26, 0, 0, 0, 1594368442, 1594368442, 1594368452, 0, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (40, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594369144, 1594368420, 0, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (41, 0, 1, 1, 1, 1, 1, 0, 0, 5, 0, 0, 0, 1594368442, 1594369158, 1594368420, 0, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (42, 0, 1, 1, 1, 1, 1, 0, 0, 3, 0, 0, 0, 1594368442, 1594369168, 1594368420, 0, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (43, 0, 1, 1, 1, 1, 1, 0, 0, 2, 0, 0, 0, 1594368442, 1594369215, 1594368420, 0, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (44, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1594368442, 1594369265, 1594368420, 0, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (45, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594369238, 1594368420, 0, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (46, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594369246, 1594368420, 0, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (47, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594369275, 1594368420, 0, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (48, 0, 1, 1, 1, 1, 1, 0, 0, 46, 0, 0, 0, 1594368442, 1594955025, 1594368420, 0, '张思', '', '', '', 'portal/20200717/e53835eadbccd710dc566a342cc38b0a.png', '&lt;p&gt;12312312&lt;/p&gt;', NULL, '{\"thumbnail\":\"portal\\/20200717\\/e53835eadbccd710dc566a342cc38b0a.png\",\"template\":\"article_only\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (49, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594368442, 1594368452, 1594369305, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (50, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594368442, 1594368452, 1594369305, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (51, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594368442, 1594368452, 1594369305, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (52, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594368442, 1594368452, 1594369305, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (53, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594368442, 1594368452, 1594369305, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (54, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594368442, 1594368452, 1594369305, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (55, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594368442, 1594368442, 1594368452, 1594369305, '张思', '', '', '', 'portal/20200710/0bfa6495dc247ec7371ed0f1e443ccc1.jpg', NULL, NULL, '{\"thumbnail\":\"portal\\/20200710\\/0bfa6495dc247ec7371ed0f1e443ccc1.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (56, 0, 1, 1, 1, 1, 1, 0, 0, 3, 0, 0, 0, 1594552556, 1594552556, 1594552706, 0, '这是企业名称', '', '', 'http://www.baidu.com', 'admin/20200711/1e4d7c3b5f0bc6414ef11e1c88962d3c.jpg', NULL, NULL, '{\"thumbnail\":\"admin\\/20200711\\/1e4d7c3b5f0bc6414ef11e1c88962d3c.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (57, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594552594, 1594552594, 1594552706, 0, '这是企业名称', '', '这里是描述', 'http://www.baidu.com', 'admin/20200711/1e4d7c3b5f0bc6414ef11e1c88962d3c.jpg', NULL, NULL, '{\"thumbnail\":\"admin\\/20200711\\/1e4d7c3b5f0bc6414ef11e1c88962d3c.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (58, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1594552632, 1594552632, 1594552706, 0, '这是企业名称', '', '这是描述', 'http://www.baidu.com', 'admin/20200711/1e4d7c3b5f0bc6414ef11e1c88962d3c.jpg', NULL, NULL, '{\"thumbnail\":\"admin\\/20200711\\/1e4d7c3b5f0bc6414ef11e1c88962d3c.jpg\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (59, 0, 1, 1, 1, 1, 1, 0, 0, 6, 0, 0, 0, 1594705956, 1594705956, 1594705989, 0, '结婚的不能放开奖时间开发的胡库官方的', '', '', '', '', NULL, NULL, '{\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (60, 0, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1594884986, 1594969586, 1594884960, 0, '证书查询', '', '', '', '', NULL, NULL, '{\"thumbnail\":\"portal\\/20200717\\/5e148890d6a73933875216799e57e51a.png\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (61, 0, 1, 1, 1, 1, 1, 0, 0, 19, 0, 0, 0, 1595495790, 1595497018, 1595495760, 0, '11111', '', '', '', '', '&lt;p&gt;1111&lt;/p&gt;', NULL, '{\"thumbnail\":\"\",\"template\":\"article_sur\"}');
INSERT INTO `ycyjxh_portal_post` VALUES (62, 0, 1, 1, 1, 1, 1, 0, 0, 28, 0, 0, 0, 1595495801, 1595496109, 1595495760, 0, 'dddd1', '', '', '', '', '&lt;p&gt;1d1d1d1&lt;/p&gt;', NULL, '{\"thumbnail\":\"\",\"template\":\"article_sur\"}');

-- ----------------------------
-- Table structure for ycyjxh_portal_tag
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_portal_tag`;
CREATE TABLE `ycyjxh_portal_tag`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'portal应用 文章标签表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_portal_tag
-- ----------------------------
INSERT INTO `ycyjxh_portal_tag` VALUES (1, 1, 0, 0, '这是一个新闻');

-- ----------------------------
-- Table structure for ycyjxh_portal_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_portal_tag_post`;
CREATE TABLE `ycyjxh_portal_tag_post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '标签 id',
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `post_id`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'portal应用 标签文章对应表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_portal_tag_post
-- ----------------------------
INSERT INTO `ycyjxh_portal_tag_post` VALUES (1, 1, 4, 1);

-- ----------------------------
-- Table structure for ycyjxh_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_recycle_bin`;
CREATE TABLE `ycyjxh_recycle_bin`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NULL DEFAULT 0 COMMENT '删除内容 id',
  `create_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `table_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = ' 回收站' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_recycle_bin
-- ----------------------------
INSERT INTO `ycyjxh_recycle_bin` VALUES (1, 6, 1593673127, 'portal_category', '联系我们', 0);
INSERT INTO `ycyjxh_recycle_bin` VALUES (2, 7, 1593673132, 'portal_category', '证书查询', 0);
INSERT INTO `ycyjxh_recycle_bin` VALUES (3, 49, 1594369305, 'portal_post', '张思', 1);
INSERT INTO `ycyjxh_recycle_bin` VALUES (4, 50, 1594369305, 'portal_post', '张思', 1);
INSERT INTO `ycyjxh_recycle_bin` VALUES (5, 51, 1594369305, 'portal_post', '张思', 1);
INSERT INTO `ycyjxh_recycle_bin` VALUES (6, 52, 1594369305, 'portal_post', '张思', 1);
INSERT INTO `ycyjxh_recycle_bin` VALUES (7, 53, 1594369305, 'portal_post', '张思', 1);
INSERT INTO `ycyjxh_recycle_bin` VALUES (8, 54, 1594369305, 'portal_post', '张思', 1);
INSERT INTO `ycyjxh_recycle_bin` VALUES (9, 55, 1594369305, 'portal_post', '张思', 1);
INSERT INTO `ycyjxh_recycle_bin` VALUES (10, 24, 1594954446, 'portal_post', '测23', 1);
INSERT INTO `ycyjxh_recycle_bin` VALUES (11, 23, 1594954450, 'portal_post', '测1', 1);
INSERT INTO `ycyjxh_recycle_bin` VALUES (12, 3, 1594954455, 'portal_post', '测试', 1);

-- ----------------------------
-- Table structure for ycyjxh_role
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_role`;
CREATE TABLE `ycyjxh_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父角色ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT 0 COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_role
-- ----------------------------
INSERT INTO `ycyjxh_role` VALUES (1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `ycyjxh_role` VALUES (2, 0, 1, 1329633709, 1329633709, 0, '普通管理员', '权限由最高管理员分配！');

-- ----------------------------
-- Table structure for ycyjxh_role_user
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_role_user`;
CREATE TABLE `ycyjxh_role_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色对应表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_route
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_route`;
CREATE TABLE `ycyjxh_route`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'url路由表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_slide
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_slide`;
CREATE TABLE `ycyjxh_slide`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '幻灯片表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_slide
-- ----------------------------
INSERT INTO `ycyjxh_slide` VALUES (1, 1, 0, '首页幻灯片', '');

-- ----------------------------
-- Table structure for ycyjxh_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_slide_item`;
CREATE TABLE `ycyjxh_slide_item`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT 0 COMMENT '幻灯片id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '幻灯片内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `slide_id`(`slide_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '幻灯片子项表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_slide_item
-- ----------------------------
INSERT INTO `ycyjxh_slide_item` VALUES (1, 1, 1, 10000, '1', 'admin/20200711/191e2117ace1c46b1531f5e1593b5081.jpg', '', '', '', '', NULL);
INSERT INTO `ycyjxh_slide_item` VALUES (2, 1, 1, 10000, '测试2', 'admin/20200711/1e4d7c3b5f0bc6414ef11e1c88962d3c.jpg', '', '', '', '', NULL);
INSERT INTO `ycyjxh_slide_item` VALUES (3, 1, 1, 10000, '1', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1595396573750&amp;di=1a10ef69ef3959d00730c5c94fe00b5a&amp;imgtype=0&amp;src=http%3A%2F%2Fwx2.sinaimg.cn%2Flarge%2F006rm80mly1gdgn33ealbj30j60asjtt.jpg', '', '', '', '', NULL);

-- ----------------------------
-- Table structure for ycyjxh_theme
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_theme`;
CREATE TABLE `ycyjxh_theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '安装时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后升级时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为已编译模板',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_theme
-- ----------------------------
INSERT INTO `ycyjxh_theme` VALUES (1, 0, 0, 0, 0, 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');
INSERT INTO `ycyjxh_theme` VALUES (2, 0, 0, 0, 0, 'company', 'company', '1.0.0', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF快速入门演示模板');
INSERT INTO `ycyjxh_theme` VALUES (3, 0, 0, 0, 0, 'acms', 'acms', '1.0.0', 'https://www.crazys.pub', 'thumbnail.jpg', '惠达浪', 'https://www.qdcrazy.cc', 'zh-cn', '清爽风格,多行业', '响应式商务网站模版');

-- ----------------------------
-- Table structure for ycyjxh_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_theme_file`;
CREATE TABLE `ycyjxh_theme_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_theme_file
-- ----------------------------
INSERT INTO `ycyjxh_theme_file` VALUES (1, 0, 10, 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (2, 0, 10, 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (3, 0, 5, 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (4, 0, 10, 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (5, 0, 10, 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (6, 0, 10, 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (9, 1, 0, 'company', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":[]}', '{\"vars\":[]}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (10, 1, 1, 'company', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"\\u6e14\\u8239\\u6e14\\u5177\\u534f\\u4f1a\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (11, 0, 10, 'company', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (12, 0, 10, 'company', '联系我们页', 'portal/page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF&lt;br\\/&gt;&lt;span class=\'\'&gt;\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7&lt;\\/span&gt;\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"116.776545,39.868941\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\\u5c71\\u4e1c\\u5b87\\u6613\\u79d1\\u6280\\u80a1\\u4efd\\u6709\\u9650\\u516c\\u53f8\"},\"article\":{\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\\u9875\\u9762\\u6587\\u7ae0ID\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/page\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u8054\\u7cfb\\u6211\\u4eec\\u9875\\u9762ID\",\"rule\":{\"require\":true},\"valueText\":\"\\u8054\\u7cfb\\u6211\\u4eec\"}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"article\":{\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\\u9875\\u9762\\u6587\\u7ae0ID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/page\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u8054\\u7cfb\\u6211\\u4eec\\u9875\\u9762ID\",\"rule\":{\"require\":true}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (13, 0, 10, 'company', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":1,\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"1,20,21,22\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\\u534f\\u4f1a\\u6982\\u51b5,\\u534f\\u4f1a\\u7b80\\u4ecb,\\u7ec4\\u7ec7\\u673a\\u6784,\\u534f\\u4f1a\\u7ae0\\u7a0b\"}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":0,\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\"}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (14, 0, 10, 'company', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (15, 0, 10, 'company', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (22, 0, 10, 'company', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"tablist\":{\"title\":\"\\u5e7b\\u706f\\u7247\\u53f3\\u4fa7\\u90e8\\u5206\",\"display\":1,\"vars\":{\"category_id\":{\"title\":\"\\u7b2c\\u4e00\\u4e2a\\u9009\\u9879\\u5361\\u6240\\u663e\\u793a\\u7684\\u5185\\u5bb9\",\"value\":\"23\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true},\"valueText\":\"\\u534f\\u4f1a\\u52a8\\u6001\"},\"category_id_two\":{\"title\":\"\\u7b2c\\u4e8c\\u4e2a\\u9009\\u9879\\u5361\\u6240\\u663e\\u793a\\u7684\\u5185\\u5bb9\",\"value\":\"24\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true},\"valueText\":\"\\u534f\\u4f1a\\u7b80\\u62a5\"}}},\"first_section\":{\"title\":\"\\u7b2c\\u4e00\\u7248\\u5757\",\"display\":1,\"vars\":{\"category_id\":{\"title\":\"\\u5de6\\u4fa7\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"23\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true},\"valueText\":\"\\u534f\\u4f1a\\u52a8\\u6001\"},\"category_id_two\":{\"title\":\"\\u53f3\\u4fa7\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"24\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true},\"valueText\":\"\\u534f\\u4f1a\\u7b80\\u62a5\"}}},\"second_section\":{\"title\":\"\\u7b2c\\u4e8c\\u7248\\u5757\",\"display\":1,\"vars\":{\"category_id\":{\"title\":\"\\u7b2c\\u4e00\\u5217\\u6587\\u7ae0ID\",\"value\":\"23\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true},\"valueText\":\"\\u534f\\u4f1a\\u52a8\\u6001\"},\"category_id_two\":{\"title\":\"\\u7b2c\\u4e8c\\u5217\\u6587\\u7ae0ID\",\"value\":\"26\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true},\"valueText\":\"\\u91cd\\u5927\\u6d3b\\u52a8\"}}},\"third_section\":{\"title\":\"\\u7b2c\\u4e09\\u7248\\u5757\",\"display\":1,\"vars\":{\"company\":{\"title\":\"\\u63a8\\u8350\\u4f01\\u4e1aID\",\"value\":\"30\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true},\"valueText\":\"\\u63a8\\u8350\\u4f01\\u4e1a\"}}},\"fourth_section\":{\"title\":\"\\u7b2c\\u56db\\u7248\\u5757\",\"display\":1,\"vars\":{\"category_id\":{\"title\":\"\\u7b2c\\u4e00\\u5217\\u6587\\u7ae0ID\",\"value\":\"29\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true},\"valueText\":\"\\u51a0\\u540d\\u8bc4\\u5ba1\"},\"category_id_two\":{\"title\":\"\\u7b2c\\u4e8c\\u5217\\u6587\\u7ae0ID\",\"value\":\"32\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true},\"valueText\":\"\\u4fe1\\u7528\\u8bc4\\u4ef7\"},\"category_id_three\":{\"title\":\"\\u7b2c\\u4e09\\u5217\\u6587\\u7ae0ID\",\"value\":\"33\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true},\"valueText\":\"\\u804c\\u79f0\\u8bc4\\u5b9a\"}}},\"fifth_section\":{\"title\":\"\\u7b2c\\u4e94\\u7248\\u5757\",\"display\":1,\"vars\":{\"category_id\":{\"title\":\"\\u5206\\u7c7b\\u4fe1\\u606fID\\u96c6\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"tip\":\"\\u8bf7\\u9009\\u62e9\\u7236\\u7c7b\\u522b\\uff0c\\u7cfb\\u7edf\\u4f1a\\u81ea\\u52a8\\u83b7\\u53d6\\u4e0b\\u8fb9\\u7684\\u5b50\\u7c7b\\u5c55\\u793a\",\"valueText\":\"\"}}},\"sixth_section\":{\"title\":\"\\u53cb\\u60c5\\u94fe\\u63a5\",\"display\":1,\"vars\":{\"section_name\":{\"title\":\"\\u7248\\u5757\\u540d\\u79f0\",\"value\":\"\\u6211\\u4eec\\u7684\\u5ba2\\u6237\",\"type\":\"text\",\"tip\":\"\\u663e\\u793a\\u5728\\u53cb\\u60c5\\u94fe\\u63a5\\u5de6\\u4fa7\\u7684\\u540d\\u79f0\"},\"excerpt\":{\"title\":\"\\u4ecb\\u7ecd\\u6587\\u5b57\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u7248\\u5757\\u4ecb\\u7ecd\\u6587\\u5b57\"}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"tablist\":{\"title\":\"\\u7b2c\\u4e00\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u7b2c\\u4e00\\u4e2a\\u9009\\u9879\\u5361\\u6240\\u663e\\u793a\\u7684\\u5185\\u5bb9\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}},\"category_id_two\":{\"title\":\"\\u7b2c\\u4e8c\\u4e2a\\u9009\\u9879\\u5361\\u6240\\u663e\\u793a\\u7684\\u5185\\u5bb9\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}}}},\"first_section\":{\"title\":\"\\u7b2c\\u4e00\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u5de6\\u4fa7\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}},\"category_id_two\":{\"title\":\"\\u53f3\\u4fa7\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}}}},\"second_section\":{\"title\":\"\\u7b2c\\u4e8c\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u7b2c\\u4e00\\u5217\\u6587\\u7ae0ID\",\"value\":\"23\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}},\"category_id_two\":{\"title\":\"\\u7b2c\\u4e8c\\u5217\\u6587\\u7ae0ID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}}}},\"third_section\":{\"title\":\"\\u7b2c\\u4e09\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"company\":{\"title\":\"\\u63a8\\u8350\\u4f01\\u4e1aID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}}}},\"fourth_section\":{\"title\":\"\\u7b2c\\u56db\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u7b2c\\u4e00\\u5217\\u6587\\u7ae0ID\",\"value\":\"23\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}},\"category_id_two\":{\"title\":\"\\u7b2c\\u4e8c\\u5217\\u6587\\u7ae0ID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}},\"category_id_three\":{\"title\":\"\\u7b2c\\u4e09\\u5217\\u6587\\u7ae0ID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}}}},\"fifth_section\":{\"title\":\"\\u7b2c\\u4e94\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u5206\\u7c7b\\u4fe1\\u606fID\\u96c6\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"tip\":\"\\u8bf7\\u9009\\u62e9\\u7236\\u7c7b\\u522b\\uff0c\\u7cfb\\u7edf\\u4f1a\\u81ea\\u52a8\\u83b7\\u53d6\\u4e0b\\u8fb9\\u7684\\u5b50\\u7c7b\\u5c55\\u793a\"}}},\"sixth_section\":{\"title\":\"\\u53cb\\u60c5\\u94fe\\u63a5\",\"display\":\"1\",\"vars\":{\"section_name\":{\"title\":\"\\u7248\\u5757\\u540d\\u79f0\",\"value\":\"\\u6211\\u4eec\\u7684\\u5ba2\\u6237\",\"type\":\"text\",\"tip\":\"\\u663e\\u793a\\u5728\\u53cb\\u60c5\\u94fe\\u63a5\\u5de6\\u4fa7\\u7684\\u540d\\u79f0\"},\"excerpt\":{\"title\":\"\\u4ecb\\u7ecd\\u6587\\u5b57\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u7248\\u5757\\u4ecb\\u7ecd\\u6587\\u5b57\"}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (23, 0, 10, 'company', '会员之窗页', 'portal/List/index', 'portal/member', '会员之窗页', '{\"vars\":[],\"widgets\":[]}', '{\"vars\":[],\"widgets\":[]}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (24, 0, 10, 'company', '新闻列表页', 'portal/List/index', 'portal/news', '新闻列表页', '{\"vars\":{\"news_id\":{\"title\":\"\\u65b0\\u95fb\\u5206\\u7c7bID\",\"value\":2,\"type\":\"number\",\"tip\":\"\\u83b7\\u53d6\\u7684\\u65b0\\u95fb\\u5217\\u8868\"}},\"widgets\":[]}', '{\"vars\":{\"news_id\":{\"title\":\"\\u65b0\\u95fb\\u5206\\u7c7bID\",\"value\":2,\"type\":\"number\",\"tip\":\"\\u83b7\\u53d6\\u7684\\u65b0\\u95fb\\u5217\\u8868\"}},\"widgets\":[]}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (36, 1, 1, 'company', '头部信息', 'public/Header', 'public/header', '网站头部信息内容', '{\"vars\":{\"logo\":{\"title\":\"\\u7f51\\u7ad9LOGO\",\"value\":\"admin\\/20200703\\/f07ffccb7c328cf517029f260f56b9ca.png\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9LOGO\\u56fe\\u7247\\uff0c\\u5efa\\u8bae\\u56fe\\u7247\\u5e95\\u8272\\u4e3a\\u767d\\u8272(.jpg)\\u6216\\u900f\\u660e(.png)\\u3002\"},\"nav_color\":{\"title\":\"\\u5bfc\\u822a\\u680f\\u989c\\u8272\",\"value\":\"#2780E3\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u5bfc\\u822a\\u680f\\u989c\\u8272\"},\"card_color\":{\"title\":\"\\u5361\\u7247\\u989c\\u8272\",\"value\":\"#2780E3\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u5361\\u7247\\u989c\\u8272\"},\"site_name\":{\"title\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"value\":\"\\u6e14\\u8239\\u6e14\\u5177\\u534f\\u4f1a\",\"type\":\"text\",\"tip\":\"\\u540d\\u79f0\\u4e3a\\u53cc\\u8272\\u663e\\u793a\\uff0c\\u524d\\u90e8\\u4e3a\\u9ed1\\u8272\\uff0c\\u540e\\u90e8\\u4e3a\\u9752\\u8272\\uff0c\\u7528\\\"|\\\"\\u5206\\u5f00\\uff0c\\u5982\\uff1aM|icrosoft\\uff0c\\u67d0\\u67d0|\\u6709\\u9650\\u516c\\u53f8\\u3002\\u5355\\u72ec\\u663e\\u793a\\u9752\\u8272\\uff1a|\\u67d0\\u67d0\\u516c\\u53f8\"}}}', '{\"vars\":{\"logo\":{\"title\":\"\\u7f51\\u7ad9LOGO\",\"value\":\"\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9LOGO\\u56fe\\u7247\\uff0c\\u5efa\\u8bae\\u56fe\\u7247\\u5e95\\u8272\\u4e3a\\u767d\\u8272(.jpg)\\u6216\\u900f\\u660e(.png)\\u3002\"},\"nav_color\":{\"title\":\"\\u5bfc\\u822a\\u680f\\u989c\\u8272\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u5bfc\\u822a\\u680f\\u989c\\u8272\"},\"card_color\":{\"title\":\"\\u5361\\u7247\\u989c\\u8272\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u5361\\u7247\\u989c\\u8272\"},\"site_name\":{\"title\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"value\":\"ThinkCMF\\u6a21\\u677f\",\"type\":\"text\",\"tip\":\"\\u540d\\u79f0\\u4e3a\\u53cc\\u8272\\u663e\\u793a\\uff0c\\u524d\\u90e8\\u4e3a\\u9ed1\\u8272\\uff0c\\u540e\\u90e8\\u4e3a\\u9752\\u8272\\uff0c\\u7528\\\"|\\\"\\u5206\\u5f00\\uff0c\\u5982\\uff1aM|icrosoft\\uff0c\\u67d0\\u67d0|\\u6709\\u9650\\u516c\\u53f8\\u3002\\u5355\\u72ec\\u663e\\u793a\\u9752\\u8272\\uff1a|\\u67d0\\u67d0\\u516c\\u53f8\"}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (37, 1, 2, 'company', '底部信息', 'public/Footer', 'public/footer', '网站底部信息内容', '{\"vars\":{\"copyright\":{\"title\":\"\\u7248\\u6743\\u4fe1\\u606f\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}},\"widgets\":{\"contact\":{\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"display\":1,\"vars\":[]},\"tutor\":{\"title\":\"\\u63a8\\u8350\\u9605\\u8bfb\",\"display\":1,\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"tip\":\"\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"rule\":[],\"valueText\":\"\"},\"count\":{\"title\":\"\\u4fe1\\u606f\\u6570\\u91cf\",\"value\":\"3\",\"type\":\"number\",\"tip\":\"\\u663e\\u793a\\u6587\\u7ae0\\u6807\\u9898\\u7684\\u6570\\u91cf\"}}},\"bottom_nav\":{\"title\":\"\\u5e95\\u90e8\\u5bfc\\u822a\",\"display\":1,\"vars\":{\"nav_name\":{\"title\":\"\\u5bfc\\u822a\\u540d\\u79f0\",\"value\":\"\\u7f51\\u7ad9\\u5bfc\\u822a\",\"type\":\"text\",\"tip\":\"\\u5e95\\u90e8\\u5bfc\\u822a\\u663e\\u793a\\u540d\\u79f0\"},\"nav_cat\":{\"title\":\"\\u5bfc\\u822a\\u9009\\u62e9\",\"value\":\"2\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u5bfc\\u822a\",\"dataSource\":{\"api\":\"admin\\/Nav\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"message\":{\"require\":\"\\u4e0d\\u80fd\\u4e3a\\u7a7a\"},\"valueText\":\"\\u5e95\\u90e8\\u5bfc\\u822a\"}}},\"qrcode\":{\"title\":\"\\u4e8c\\u7ef4\\u7801\",\"display\":1,\"vars\":{\"image\":{\"title\":\"\\u56fe\\u7247\\u5185\\u5bb9\",\"value\":\"admin\\/20200714\\/ef30c9b27a3edd227807a8a6b864d365.jpg\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u56fe\\u7247\\uff0c\\u6ce8\\u610f\\u5c3a\\u5bf8\\u4e0d\\u8981\\u8fc7\\u5927\"}}},\"footer_logo\":{\"title\":\"\\u5e95\\u90e8Logo\",\"display\":1,\"vars\":{\"image\":{\"title\":\"\\u56fe\\u7247\\u5185\\u5bb9\",\"value\":\"admin\\/20200714\\/e2de675d44c505528f9c2eb65c5f417d.png\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u56fe\\u7247\\uff0c\\u6ce8\\u610f\\u5c3a\\u5bf8\\u4e0d\\u8981\\u8fc7\\u5927\"}}}}}', '{\"vars\":{\"copyright\":{\"title\":\"\\u7248\\u6743\\u4fe1\\u606f\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}},\"widgets\":{\"contact\":{\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"display\":\"1\",\"vars\":[]},\"tutor\":{\"title\":\"\\u63a8\\u8350\\u9605\\u8bfb\",\"display\":\"1\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"tip\":\"\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"rule\":[]},\"count\":{\"title\":\"\\u4fe1\\u606f\\u6570\\u91cf\",\"value\":\"3\",\"type\":\"number\",\"tip\":\"\\u663e\\u793a\\u6587\\u7ae0\\u6807\\u9898\\u7684\\u6570\\u91cf\"}}},\"bottom_nav\":{\"title\":\"\\u5e95\\u90e8\\u5bfc\\u822a\",\"display\":\"1\",\"vars\":{\"nav_name\":{\"title\":\"\\u5bfc\\u822a\\u540d\\u79f0\",\"value\":\"\\u7f51\\u7ad9\\u5bfc\\u822a\",\"type\":\"text\",\"tip\":\"\\u5e95\\u90e8\\u5bfc\\u822a\\u663e\\u793a\\u540d\\u79f0\"},\"nav_cat\":{\"title\":\"\\u5bfc\\u822a\\u9009\\u62e9\",\"value\":\"2\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u5bfc\\u822a\",\"dataSource\":{\"api\":\"admin\\/Nav\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"message\":{\"require\":\"\\u4e0d\\u80fd\\u4e3a\\u7a7a\"}}}},\"qrcode\":{\"title\":\"\\u4e8c\\u7ef4\\u7801\",\"display\":\"1\",\"vars\":{\"image\":{\"title\":\"\\u56fe\\u7247\\u5185\\u5bb9\",\"value\":\"\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u56fe\\u7247\\uff0c\\u6ce8\\u610f\\u5c3a\\u5bf8\\u4e0d\\u8981\\u8fc7\\u5927\"}}},\"footer_logo\":{\"title\":\"\\u5e95\\u90e8Logo\",\"display\":\"1\",\"vars\":{\"image\":{\"title\":\"\\u56fe\\u7247\\u5185\\u5bb9\",\"value\":\"\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u56fe\\u7247\\uff0c\\u6ce8\\u610f\\u5c3a\\u5bf8\\u4e0d\\u8981\\u8fc7\\u5927\"}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (38, 1, 3, 'company', '右边栏', 'portal/right_side', 'public/right_side', '右边栏模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":1,\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"2\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\\u65b0\\u95fb\\u8d44\\u8baf\"}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":1,\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"2\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\\u65b0\\u95fb\\u8d44\\u8baf\"}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (39, 0, 60, 'acms', '关于我们页', 'portal/Page/index', 'portal/about', '关于我们页面单页模板', '{\"widgets\":{\"second\":{\"title\":\"\\u7b2c\\u4e8c\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"section_name\":{\"title\":\"\\u680f\\u76ee\\u540d\\u79f0\",\"value\":\"\\u52a0\\u5165\\u6211\\u4eec\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u8be5\\u680f\\u76ee\\u540d\\u79f0\"},\"category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bid\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u8be5\\u680f\\u76ee\\u7c7b\\u522b\"},\"count\":{\"title\":\"\\u663e\\u793a\\u6570\\u91cf\",\"value\":4,\"type\":\"number\",\"tip\":\"\\u8be5\\u9875\\u9762\\u663e\\u793a\\u4fe1\\u606f\\u7684\\u6570\\u91cf\"}}},\"third\":{\"title\":\"\\u7b2c\\u4e09\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u5de6\\u4fa7\\u8f6e\\u64ad\\u663e\\u793a\\u4fe1\\u606f\\uff0c\\u6587\\u7ae0\\u5206\\u7c7bid\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u8be5\\u680f\\u76ee\\u7c7b\\u522b\"},\"section_name\":{\"title\":\"\\u680f\\u76ee\\u540d\\u79f0\",\"value\":\"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u8be5\\u680f\\u76ee\\u540d\\u79f0\"},\"skill_item\":{\"title\":\"\\u4f18\\u52bf\\u9879\\u5185\\u5bb9\",\"value\":[],\"type\":\"array\",\"item\":{\"skill_text\":{\"title\":\"\\u6587\\u5b57\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u663e\\u793a\\u5728\\u6e29\\u5ea6\\u8ba1\\u4e0a\\u7684\\u6587\\u5b57\"},\"skill_per\":{\"title\":\"\\u6570\\u5b57\",\"value\":\"50\",\"type\":\"number\",\"tip\":\"\\u56e0\\u4e3a\\u662f\\u6309\\u767e\\u5206\\u6bd4\\u663e\\u793a\\uff0c\\u56e0\\u6b64\\u6570\\u5b57\\u6700\\u5927\\u4e3a100\"}}}}},\"fourth\":{\"title\":\"\\u7b2c\\u56db\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bid\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u8be5\\u680f\\u76ee\\u7c7b\\u522b\"}}}}}', '{\"widgets\":{\"second\":{\"title\":\"\\u7b2c\\u4e8c\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"section_name\":{\"title\":\"\\u680f\\u76ee\\u540d\\u79f0\",\"value\":\"\\u52a0\\u5165\\u6211\\u4eec\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u8be5\\u680f\\u76ee\\u540d\\u79f0\"},\"category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bid\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u8be5\\u680f\\u76ee\\u7c7b\\u522b\"},\"count\":{\"title\":\"\\u663e\\u793a\\u6570\\u91cf\",\"value\":4,\"type\":\"number\",\"tip\":\"\\u8be5\\u9875\\u9762\\u663e\\u793a\\u4fe1\\u606f\\u7684\\u6570\\u91cf\"}}},\"third\":{\"title\":\"\\u7b2c\\u4e09\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u5de6\\u4fa7\\u8f6e\\u64ad\\u663e\\u793a\\u4fe1\\u606f\\uff0c\\u6587\\u7ae0\\u5206\\u7c7bid\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u8be5\\u680f\\u76ee\\u7c7b\\u522b\"},\"section_name\":{\"title\":\"\\u680f\\u76ee\\u540d\\u79f0\",\"value\":\"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u8be5\\u680f\\u76ee\\u540d\\u79f0\"},\"skill_item\":{\"title\":\"\\u4f18\\u52bf\\u9879\\u5185\\u5bb9\",\"value\":[],\"type\":\"array\",\"item\":{\"skill_text\":{\"title\":\"\\u6587\\u5b57\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u663e\\u793a\\u5728\\u6e29\\u5ea6\\u8ba1\\u4e0a\\u7684\\u6587\\u5b57\"},\"skill_per\":{\"title\":\"\\u6570\\u5b57\",\"value\":\"50\",\"type\":\"number\",\"tip\":\"\\u56e0\\u4e3a\\u662f\\u6309\\u767e\\u5206\\u6bd4\\u663e\\u793a\\uff0c\\u56e0\\u6b64\\u6570\\u5b57\\u6700\\u5927\\u4e3a100\"}}}}},\"fourth\":{\"title\":\"\\u7b2c\\u56db\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bid\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u8be5\\u680f\\u76ee\\u7c7b\\u522b\"}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (40, 0, 45, 'acms', '文章页', 'portal/Article/index', 'portal/article', '文章页面', '[]', '[]', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (41, 0, 50, 'acms', '简单文章页', 'portal/Article/index', 'portal/article_simple', '简单文章页面，无右侧推荐边栏', '[]', '[]', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (42, 0, 70, 'acms', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"bottom\":{\"title\":\"\\u5e95\\u90e8\\u8f6e\\u64ad\\u4fe1\\u606f\",\"display\":\"1\",\"vars\":{\"section_name\":{\"title\":\"\\u6a21\\u5757\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\"},\"category_id\":{\"title\":\"\\u4fe1\\u606f\\u5206\\u7c7bid\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false}}}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"bottom\":{\"title\":\"\\u5e95\\u90e8\\u8f6e\\u64ad\\u4fe1\\u606f\",\"display\":\"1\",\"vars\":{\"section_name\":{\"title\":\"\\u6a21\\u5757\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\"},\"category_id\":{\"title\":\"\\u4fe1\\u606f\\u5206\\u7c7bid\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false}}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (43, 0, 10, 'acms', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"first_section\":{\"title\":\"\\u7b2c\\u4e00\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}}}},\"second_section\":{\"title\":\"\\u7b2c\\u4e8c\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"page_id\":{\"title\":\"\\u5185\\u5bb9\\u5355\\u9762ID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Page\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9875\\u9762\",\"tip\":\"\\u8be5\\u7248\\u5757\\u4e3a\\u5355\\u9875\\u5185\\u5bb9\\uff0c\\u8bf7\\u9009\\u62e9\\u9875\\u9762\",\"rule\":{\"require\":true}},\"btn_display\":{\"title\":\"\\u662f\\u5426\\u663e\\u793a\\u4e0b\\u65b9\\u6309\\u94ae\",\"value\":\"1\",\"type\":\"select\",\"options\":{\"1\":\"\\u663e\\u793a\",\"2\":\"\\u9690\\u85cf\"},\"rule\":{\"require\":true}},\"btn_title\":{\"title\":\"\\u6309\\u94ae\\u6587\\u5b57\",\"value\":\"\\u4e86\\u89e3\\u8be6\\u60c5\",\"type\":\"text\",\"tip\":\"\\u8be5\\u6587\\u5b57\\u6700\\u7ec8\\u663e\\u793a\\u5728\\u6309\\u94ae\\u4e0a\\uff0c\\u56e0\\u6b64\\u5b57\\u6570\\u4e0d\\u5efa\\u8bae\\u8d85\\u8fc76\\u4e2a\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u6309\\u94ae\\u540d\\u79f0\"},\"btn_link\":{\"title\":\"\\u6309\\u94ae\\u94fe\\u63a5\",\"value\":\"javascript:;\",\"type\":\"text\",\"tip\":\"\\u70b9\\u51fb\\u6309\\u94ae\\u540e\\u7684\\u8df3\\u8f6c\\u94fe\\u63a5\\u5730\\u5740\\uff0c\\u6216javascript\\u64cd\\u4f5c\"}}},\"third_section\":{\"title\":\"\\u7b2c\\u4e09\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"news\":{\"title\":\"\\u65b0\\u95fb\\u7248\\u5757\",\"value\":[],\"type\":\"array\",\"item\":{\"category_id\":{\"title\":\"\\u6587\\u7ae0\\u7c7b\\u522bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"tip\":\"\\u8bf7\\u9009\\u62e9\\u65b0\\u95fb\\u7c7b\\u522b\"},\"count\":{\"title\":\"\\u6587\\u7ae0\\u663e\\u793a\\u6570\\u91cf\",\"value\":3,\"type\":\"number\",\"tip\":\"\\u6bcf\\u4e2a\\u680f\\u76ee\\u6587\\u7ae0\\u6570\\u91cf\"}}},\"slide\":{\"title\":\"\\u5c55\\u793a\\u7248\\u5757\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false}}}},\"fourth_section\":{\"title\":\"\\u7b2c\\u56db\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u6587\\u7ae0\\u7c7b\\u522bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"tip\":\"\\u8bf7\\u9009\\u62e9\\u65b0\\u95fb\\u7c7b\\u522b\"},\"count\":{\"title\":\"\\u6587\\u7ae0\\u663e\\u793a\\u6700\\u5927\\u6570\\u91cf\",\"value\":10,\"type\":\"number\",\"tip\":\"\\u663e\\u793a\\u6587\\u7ae0\\u6700\\u5927\\u6570\\u91cf\"}}},\"fifth_section\":{\"title\":\"\\u7b2c\\u4e94\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u5206\\u7c7b\\u4fe1\\u606fID\\u96c6\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"tip\":\"\\u8bf7\\u9009\\u62e9\\u7236\\u7c7b\\u522b\\uff0c\\u7cfb\\u7edf\\u4f1a\\u81ea\\u52a8\\u83b7\\u53d6\\u4e0b\\u8fb9\\u7684\\u5b50\\u7c7b\\u5c55\\u793a\"}}},\"sixth_section\":{\"title\":\"\\u53cb\\u60c5\\u94fe\\u63a5\",\"display\":\"1\",\"vars\":{\"section_name\":{\"title\":\"\\u7248\\u5757\\u540d\\u79f0\",\"value\":\"\\u6211\\u4eec\\u7684\\u5ba2\\u6237\",\"type\":\"text\",\"tip\":\"\\u663e\\u793a\\u5728\\u53cb\\u60c5\\u94fe\\u63a5\\u5de6\\u4fa7\\u7684\\u540d\\u79f0\"},\"excerpt\":{\"title\":\"\\u4ecb\\u7ecd\\u6587\\u5b57\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u7248\\u5757\\u4ecb\\u7ecd\\u6587\\u5b57\"}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"first_section\":{\"title\":\"\\u7b2c\\u4e00\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"rule\":{\"require\":true}}}},\"second_section\":{\"title\":\"\\u7b2c\\u4e8c\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"page_id\":{\"title\":\"\\u5185\\u5bb9\\u5355\\u9762ID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Page\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9875\\u9762\",\"tip\":\"\\u8be5\\u7248\\u5757\\u4e3a\\u5355\\u9875\\u5185\\u5bb9\\uff0c\\u8bf7\\u9009\\u62e9\\u9875\\u9762\",\"rule\":{\"require\":true}},\"btn_display\":{\"title\":\"\\u662f\\u5426\\u663e\\u793a\\u4e0b\\u65b9\\u6309\\u94ae\",\"value\":\"1\",\"type\":\"select\",\"options\":{\"1\":\"\\u663e\\u793a\",\"2\":\"\\u9690\\u85cf\"},\"rule\":{\"require\":true}},\"btn_title\":{\"title\":\"\\u6309\\u94ae\\u6587\\u5b57\",\"value\":\"\\u4e86\\u89e3\\u8be6\\u60c5\",\"type\":\"text\",\"tip\":\"\\u8be5\\u6587\\u5b57\\u6700\\u7ec8\\u663e\\u793a\\u5728\\u6309\\u94ae\\u4e0a\\uff0c\\u56e0\\u6b64\\u5b57\\u6570\\u4e0d\\u5efa\\u8bae\\u8d85\\u8fc76\\u4e2a\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u6309\\u94ae\\u540d\\u79f0\"},\"btn_link\":{\"title\":\"\\u6309\\u94ae\\u94fe\\u63a5\",\"value\":\"javascript:;\",\"type\":\"text\",\"tip\":\"\\u70b9\\u51fb\\u6309\\u94ae\\u540e\\u7684\\u8df3\\u8f6c\\u94fe\\u63a5\\u5730\\u5740\\uff0c\\u6216javascript\\u64cd\\u4f5c\"}}},\"third_section\":{\"title\":\"\\u7b2c\\u4e09\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"news\":{\"title\":\"\\u65b0\\u95fb\\u7248\\u5757\",\"value\":[],\"type\":\"array\",\"item\":{\"category_id\":{\"title\":\"\\u6587\\u7ae0\\u7c7b\\u522bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"tip\":\"\\u8bf7\\u9009\\u62e9\\u65b0\\u95fb\\u7c7b\\u522b\"},\"count\":{\"title\":\"\\u6587\\u7ae0\\u663e\\u793a\\u6570\\u91cf\",\"value\":3,\"type\":\"number\",\"tip\":\"\\u6bcf\\u4e2a\\u680f\\u76ee\\u6587\\u7ae0\\u6570\\u91cf\"}}},\"slide\":{\"title\":\"\\u5c55\\u793a\\u7248\\u5757\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false}}}},\"fourth_section\":{\"title\":\"\\u7b2c\\u56db\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u6587\\u7ae0\\u7c7b\\u522bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"tip\":\"\\u8bf7\\u9009\\u62e9\\u65b0\\u95fb\\u7c7b\\u522b\"},\"count\":{\"title\":\"\\u6587\\u7ae0\\u663e\\u793a\\u6700\\u5927\\u6570\\u91cf\",\"value\":10,\"type\":\"number\",\"tip\":\"\\u663e\\u793a\\u6587\\u7ae0\\u6700\\u5927\\u6570\\u91cf\"}}},\"fifth_section\":{\"title\":\"\\u7b2c\\u4e94\\u7248\\u5757\",\"display\":\"1\",\"vars\":{\"category_id\":{\"title\":\"\\u5206\\u7c7b\\u4fe1\\u606fID\\u96c6\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"tip\":\"\\u8bf7\\u9009\\u62e9\\u7236\\u7c7b\\u522b\\uff0c\\u7cfb\\u7edf\\u4f1a\\u81ea\\u52a8\\u83b7\\u53d6\\u4e0b\\u8fb9\\u7684\\u5b50\\u7c7b\\u5c55\\u793a\"}}},\"sixth_section\":{\"title\":\"\\u53cb\\u60c5\\u94fe\\u63a5\",\"display\":\"1\",\"vars\":{\"section_name\":{\"title\":\"\\u7248\\u5757\\u540d\\u79f0\",\"value\":\"\\u6211\\u4eec\\u7684\\u5ba2\\u6237\",\"type\":\"text\",\"tip\":\"\\u663e\\u793a\\u5728\\u53cb\\u60c5\\u94fe\\u63a5\\u5de6\\u4fa7\\u7684\\u540d\\u79f0\"},\"excerpt\":{\"title\":\"\\u4ecb\\u7ecd\\u6587\\u5b57\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u7248\\u5757\\u4ecb\\u7ecd\\u6587\\u5b57\"}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (44, 0, 20, 'acms', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":{\"page_count\":{\"title\":\"\\u6bcf\\u9875\\u6587\\u7ae0\\u6570\\u91cf\",\"value\":8,\"type\":\"number\",\"tip\":\"\\u5217\\u8868\\u9875\\u6bcf\\u9875\\u663e\\u793a\\u6587\\u7ae0\\u7684\\u6570\\u91cf\"}}}', '{\"vars\":{\"page_count\":{\"title\":\"\\u6bcf\\u9875\\u6587\\u7ae0\\u6570\\u91cf\",\"value\":8,\"type\":\"number\",\"tip\":\"\\u5217\\u8868\\u9875\\u6bcf\\u9875\\u663e\\u793a\\u6587\\u7ae0\\u7684\\u6570\\u91cf\"}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (45, 0, 25, 'acms', '文章列表页双列显示', 'portal/List/index', 'portal/listm', '文章列表双列模板文件', '{\"vars\":{\"page_count\":{\"title\":\"\\u6bcf\\u9875\\u6587\\u7ae0\\u6570\\u91cf\",\"value\":8,\"type\":\"number\",\"tip\":\"\\u5217\\u8868\\u9875\\u6bcf\\u9875\\u663e\\u793a\\u6587\\u7ae0\\u7684\\u6570\\u91cf\"}}}', '{\"vars\":{\"page_count\":{\"title\":\"\\u6bcf\\u9875\\u6587\\u7ae0\\u6570\\u91cf\",\"value\":8,\"type\":\"number\",\"tip\":\"\\u5217\\u8868\\u9875\\u6bcf\\u9875\\u663e\\u793a\\u6587\\u7ae0\\u7684\\u6570\\u91cf\"}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (46, 1, 0, 'acms', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"name\":\"ThinkCMF\",\"type\":\"select\",\"value\":1,\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"},\"gl_address\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u516c\\u53f8\\u5730\\u5740\",\"rule\":[]},\"gl_mobile\":{\"title\":\"\\u624b\\u673a\\u53f7\\u7801\",\"value\":[],\"type\":\"array\",\"item\":{\"mobile\":{\"title\":\"\\u624b\\u673a\\u53f7\\u7801\",\"type\":\"text\",\"value\":\"\"}},\"tip\":\"\\u8bf7\\u8f93\\u5165\\u8054\\u7cfb\\u624b\\u673a\\u53f7\\u7801\"},\"gl_tel\":{\"title\":\"\\u8054\\u7cfb\\u7535\\u8bdd\",\"value\":[],\"type\":\"array\",\"item\":{\"tel\":{\"title\":\"\\u7535\\u8bdd\\u53f7\\u7801\",\"type\":\"text\",\"value\":\"\"}},\"tip\":\"\\u8bf7\\u8f93\\u5165\\u56fa\\u5b9a\\u7535\\u8bdd\\u53f7\\u7801\",\"rule\":[]},\"gl_email\":{\"title\":\"\\u7535\\u5b50\\u90ae\\u7bb1\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u7535\\u5b50\\u90ae\\u7bb1\",\"rule\":[]},\"gl_qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":false}},\"gl_qrcode\":{\"title\":\"\\u4e8c\\u7ef4\\u7801\\u56fe\\u7247\",\"value\":\"\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u56fe\\u7247\\uff0c\\u6ce8\\u610f\\u5c3a\\u5bf8\\u4e0d\\u8981\\u8fc7\\u5927\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"name\":\"ThinkCMF\",\"type\":\"select\",\"value\":1,\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"},\"gl_address\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u516c\\u53f8\\u5730\\u5740\",\"rule\":[]},\"gl_mobile\":{\"title\":\"\\u624b\\u673a\\u53f7\\u7801\",\"value\":[],\"type\":\"array\",\"item\":{\"mobile\":{\"title\":\"\\u624b\\u673a\\u53f7\\u7801\",\"type\":\"text\",\"value\":\"\"}},\"tip\":\"\\u8bf7\\u8f93\\u5165\\u8054\\u7cfb\\u624b\\u673a\\u53f7\\u7801\"},\"gl_tel\":{\"title\":\"\\u8054\\u7cfb\\u7535\\u8bdd\",\"value\":[],\"type\":\"array\",\"item\":{\"tel\":{\"title\":\"\\u7535\\u8bdd\\u53f7\\u7801\",\"type\":\"text\",\"value\":\"\"}},\"tip\":\"\\u8bf7\\u8f93\\u5165\\u56fa\\u5b9a\\u7535\\u8bdd\\u53f7\\u7801\",\"rule\":[]},\"gl_email\":{\"title\":\"\\u7535\\u5b50\\u90ae\\u7bb1\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u7535\\u5b50\\u90ae\\u7bb1\",\"rule\":[]},\"gl_qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":false}},\"gl_qrcode\":{\"title\":\"\\u4e8c\\u7ef4\\u7801\\u56fe\\u7247\",\"value\":\"\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u56fe\\u7247\\uff0c\\u6ce8\\u610f\\u5c3a\\u5bf8\\u4e0d\\u8981\\u8fc7\\u5927\"}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (47, 1, 2, 'acms', '底部信息', 'public/Footer', 'public/footer', '网站底部信息内容', '{\"vars\":{\"copyright\":{\"title\":\"\\u7248\\u6743\\u4fe1\\u606f\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}},\"widgets\":{\"contact\":{\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"display\":\"1\",\"vars\":[]},\"tutor\":{\"title\":\"\\u63a8\\u8350\\u9605\\u8bfb\",\"display\":\"1\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"tip\":\"\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"rule\":[]},\"count\":{\"title\":\"\\u4fe1\\u606f\\u6570\\u91cf\",\"value\":\"3\",\"type\":\"number\",\"tip\":\"\\u663e\\u793a\\u6587\\u7ae0\\u6807\\u9898\\u7684\\u6570\\u91cf\"}}},\"bottom_nav\":{\"title\":\"\\u5e95\\u90e8\\u5bfc\\u822a\",\"display\":\"1\",\"vars\":{\"nav_name\":{\"title\":\"\\u5bfc\\u822a\\u540d\\u79f0\",\"value\":\"\\u7f51\\u7ad9\\u5bfc\\u822a\",\"type\":\"text\",\"tip\":\"\\u5e95\\u90e8\\u5bfc\\u822a\\u663e\\u793a\\u540d\\u79f0\"},\"nav_cat\":{\"title\":\"\\u5bfc\\u822a\\u9009\\u62e9\",\"value\":\"2\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u5bfc\\u822a\",\"dataSource\":{\"api\":\"admin\\/Nav\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"message\":{\"require\":\"\\u4e0d\\u80fd\\u4e3a\\u7a7a\"}}}},\"text_widget\":{\"title\":\"\\u56fe\\u6587\\u4ecb\\u7ecd\",\"display\":\"1\",\"vars\":{\"title\":{\"title\":\"\\u4fe1\\u606f\\u6807\\u9898\",\"value\":\"\\u5173\\u4e8e\\u6211\\u4eec\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u6807\\u9898\"},\"content\":{\"title\":\"\\u6587\\u5b57\\u5185\\u5bb9\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u6587\\u5b57\\u5185\\u5bb9\"},\"image\":{\"title\":\"\\u56fe\\u7247\\u5185\\u5bb9\",\"value\":\"\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u56fe\\u7247\\uff0c\\u6ce8\\u610f\\u5c3a\\u5bf8\\u4e0d\\u8981\\u8fc7\\u5927\"}}}}}', '{\"vars\":{\"copyright\":{\"title\":\"\\u7248\\u6743\\u4fe1\\u606f\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}},\"widgets\":{\"contact\":{\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"display\":\"1\",\"vars\":[]},\"tutor\":{\"title\":\"\\u63a8\\u8350\\u9605\\u8bfb\",\"display\":\"1\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"tip\":\"\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"rule\":[]},\"count\":{\"title\":\"\\u4fe1\\u606f\\u6570\\u91cf\",\"value\":\"3\",\"type\":\"number\",\"tip\":\"\\u663e\\u793a\\u6587\\u7ae0\\u6807\\u9898\\u7684\\u6570\\u91cf\"}}},\"bottom_nav\":{\"title\":\"\\u5e95\\u90e8\\u5bfc\\u822a\",\"display\":\"1\",\"vars\":{\"nav_name\":{\"title\":\"\\u5bfc\\u822a\\u540d\\u79f0\",\"value\":\"\\u7f51\\u7ad9\\u5bfc\\u822a\",\"type\":\"text\",\"tip\":\"\\u5e95\\u90e8\\u5bfc\\u822a\\u663e\\u793a\\u540d\\u79f0\"},\"nav_cat\":{\"title\":\"\\u5bfc\\u822a\\u9009\\u62e9\",\"value\":\"2\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u5bfc\\u822a\",\"dataSource\":{\"api\":\"admin\\/Nav\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"message\":{\"require\":\"\\u4e0d\\u80fd\\u4e3a\\u7a7a\"}}}},\"text_widget\":{\"title\":\"\\u56fe\\u6587\\u4ecb\\u7ecd\",\"display\":\"1\",\"vars\":{\"title\":{\"title\":\"\\u4fe1\\u606f\\u6807\\u9898\",\"value\":\"\\u5173\\u4e8e\\u6211\\u4eec\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u6807\\u9898\"},\"content\":{\"title\":\"\\u6587\\u5b57\\u5185\\u5bb9\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u6587\\u5b57\\u5185\\u5bb9\"},\"image\":{\"title\":\"\\u56fe\\u7247\\u5185\\u5bb9\",\"value\":\"\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u56fe\\u7247\\uff0c\\u6ce8\\u610f\\u5c3a\\u5bf8\\u4e0d\\u8981\\u8fc7\\u5927\"}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (48, 1, 1, 'acms', '头部信息', 'public/Header', 'public/header', '网站头部信息内容', '{\"vars\":{\"logo\":{\"title\":\"\\u7f51\\u7ad9LOGO\",\"value\":\"\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9LOGO\\u56fe\\u7247\\uff0c\\u5efa\\u8bae\\u56fe\\u7247\\u5e95\\u8272\\u4e3a\\u767d\\u8272(.jpg)\\u6216\\u900f\\u660e(.png)\\u3002\"},\"site_name\":{\"title\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"value\":\"ThinkCMF\\u6a21\\u677f\",\"type\":\"text\",\"tip\":\"\\u540d\\u79f0\\u4e3a\\u53cc\\u8272\\u663e\\u793a\\uff0c\\u524d\\u90e8\\u4e3a\\u9ed1\\u8272\\uff0c\\u540e\\u90e8\\u4e3a\\u9752\\u8272\\uff0c\\u7528\\\"|\\\"\\u5206\\u5f00\\uff0c\\u5982\\uff1aM|icrosoft\\uff0c\\u67d0\\u67d0|\\u6709\\u9650\\u516c\\u53f8\\u3002\\u5355\\u72ec\\u663e\\u793a\\u9752\\u8272\\uff1a|\\u67d0\\u67d0\\u516c\\u53f8\"}}}', '{\"vars\":{\"logo\":{\"title\":\"\\u7f51\\u7ad9LOGO\",\"value\":\"\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9LOGO\\u56fe\\u7247\\uff0c\\u5efa\\u8bae\\u56fe\\u7247\\u5e95\\u8272\\u4e3a\\u767d\\u8272(.jpg)\\u6216\\u900f\\u660e(.png)\\u3002\"},\"site_name\":{\"title\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"value\":\"ThinkCMF\\u6a21\\u677f\",\"type\":\"text\",\"tip\":\"\\u540d\\u79f0\\u4e3a\\u53cc\\u8272\\u663e\\u793a\\uff0c\\u524d\\u90e8\\u4e3a\\u9ed1\\u8272\\uff0c\\u540e\\u90e8\\u4e3a\\u9752\\u8272\\uff0c\\u7528\\\"|\\\"\\u5206\\u5f00\\uff0c\\u5982\\uff1aM|icrosoft\\uff0c\\u67d0\\u67d0|\\u6709\\u9650\\u516c\\u53f8\\u3002\\u5355\\u72ec\\u663e\\u793a\\u9752\\u8272\\uff1a|\\u67d0\\u67d0\\u516c\\u53f8\"}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (49, 1, 3, 'acms', '右边栏', 'portal/right_side', 'public/right_side', '右边栏模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (50, 0, 10, 'company', '文章页（只展示内容）', 'portal/Article/index', 'portal/article_only', '文章页模板文件（只展示内容）', '{\"vars\":[]}', '{\"vars\":[]}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (51, 0, 10, 'company', '下载内容页', 'portal/Article/index', 'portal/download', '下载内容页', '{\"vars\":[]}', '{\"vars\":[]}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (52, 0, 10, 'company', '下载列表页', 'portal/List/index', 'portal/download_list', '下载列表页', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (53, 0, 10, 'company', '行业专家页', 'portal/List/index', 'portal/expert', '行业专家页', '{\"vars\":{\"news_id\":{\"title\":\"\\u65b0\\u95fb\\u5206\\u7c7bID\",\"value\":2,\"type\":\"number\",\"tip\":\"\\u83b7\\u53d6\\u7684\\u65b0\\u95fb\\u5217\\u8868\"}},\"widgets\":[]}', '{\"vars\":{\"news_id\":{\"title\":\"\\u65b0\\u95fb\\u5206\\u7c7bID\",\"value\":2,\"type\":\"number\",\"tip\":\"\\u83b7\\u53d6\\u7684\\u65b0\\u95fb\\u5217\\u8868\"}},\"widgets\":[]}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (54, 0, 10, 'company', '行业专家列表页', 'portal/List/index', 'portal/expert_list', '行业专家列表页', '{\"vars\":[],\"widgets\":[]}', '{\"vars\":[],\"widgets\":[]}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (55, 0, 10, 'company', '协会列表页', 'portal/List/index', 'portal/survey', '协会列表页', '{\"vars\":[],\"widgets\":[]}', '{\"vars\":[],\"widgets\":[]}', NULL);
INSERT INTO `ycyjxh_theme_file` VALUES (56, 0, 10, 'company', '协会概况文章页', 'portal/Article/index', 'portal/article_sur', '协会概况文章页', '{\"vars\":[]}', '{\"vars\":[]}', NULL);

-- ----------------------------
-- Table structure for ycyjxh_third_party_user
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_third_party_user`;
CREATE TABLE `ycyjxh_third_party_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '本站用户id',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'access_token过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '绑定时间',
  `login_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录次数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_user
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_user`;
CREATE TABLE `ycyjxh_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT 0 COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT 0 COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '用户积分',
  `coin` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '金币',
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '注册时间',
  `user_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_login`(`user_login`) USING BTREE,
  INDEX `user_nickname`(`user_nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_user
-- ----------------------------
INSERT INTO `ycyjxh_user` VALUES (1, 1, 0, 0, 1595489213, 0, 0, 0.00, 1593573903, 1, 'admin', '###6e2206f409e5cbe43d61c51113ac1bc0', 'admin', 'a@a.a', '', '', '', '127.0.0.1', '', '', NULL);

-- ----------------------------
-- Table structure for ycyjxh_user_action
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_user_action`;
CREATE TABLE `ycyjxh_user_action`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT 0 COMMENT '奖励次数',
  `cycle_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周期时间值',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '执行操作的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_user_action
-- ----------------------------
INSERT INTO `ycyjxh_user_action` VALUES (1, 1, 1, 1, 2, 1, '用户登录', 'login', 'user', '');

-- ----------------------------
-- Table structure for ycyjxh_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_user_action_log`;
CREATE TABLE `ycyjxh_user_action_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '访问次数',
  `last_visit_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后访问时间',
  `object` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_object_action`(`user_id`, `object`, `action`) USING BTREE,
  INDEX `user_object_action_ip`(`user_id`, `object`, `action`, `ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '访问记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_user_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_user_balance_log`;
CREATE TABLE `ycyjxh_user_balance_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户 id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `change` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '更改余额',
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '更改后余额',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户余额变更日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_user_favorite`;
CREATE TABLE `ycyjxh_user_favorite`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '收藏内容原来的主键id',
  `create_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户收藏表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_user_like
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_user_like`;
CREATE TABLE `ycyjxh_user_like`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '内容原来的主键id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容的描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户点赞表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_user_login_attempt`;
CREATE TABLE `ycyjxh_user_login_attempt`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '尝试次数',
  `attempt_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '尝试登录时间',
  `locked_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '锁定时间',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户登录尝试表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_user_score_log`;
CREATE TABLE `ycyjxh_user_score_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作积分等奖励日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ycyjxh_user_token
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_user_token`;
CREATE TABLE `ycyjxh_user_token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT ' 过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户客户端登录 token 表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ycyjxh_user_token
-- ----------------------------
INSERT INTO `ycyjxh_user_token` VALUES (1, 1, 1609125922, 1593573922, '2bae464f67beb8056e5878366c9562b21ff71bb33b9375aba402692b5c1e2451', 'web');

-- ----------------------------
-- Table structure for ycyjxh_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `ycyjxh_verification_code`;
CREATE TABLE `ycyjxh_verification_code`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当天已经发送成功的次数',
  `send_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后发送成功时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '手机邮箱数字验证码表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
