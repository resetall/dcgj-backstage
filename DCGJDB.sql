/*
 Navicat Premium Data Transfer

 Source Server         : dcgjht
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost
 Source Database       : DCGJDB

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : utf-8

 Date: 11/29/2016 21:31:44 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `brand_news`
-- ----------------------------
DROP TABLE IF EXISTS `brand_news`;
CREATE TABLE `brand_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(100) NOT NULL,
  `news_summary` varchar(200) DEFAULT NULL,
  `news_content` text,
  `publish_date` datetime NOT NULL,
  `isValid` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `brand_news`
-- ----------------------------
BEGIN;
INSERT INTO `brand_news` VALUES ('13', '111', '222', '3333', '2016-10-29 01:32:49', '1'), ('14', '1111', '222', '3333', '2016-10-29 01:50:10', '1'), ('15', '1111', '222', '333', '2016-10-29 01:51:37', '1'), ('16', '11111', '2222', '3333', '2016-10-29 01:52:49', '1'), ('17', '111', '222', '3333', '2016-10-29 02:26:31', '1'), ('18', '2222', '333', '44444', '2016-10-29 02:52:41', '1'), ('19', '2222222', '33', '4444', '2016-10-29 03:27:07', '1'), ('20', '11111', '222', '33333', '2016-10-29 03:29:55', '1'), ('21', '2222', '33333333333', '111', '2016-10-29 03:34:34', '1'), ('22', '试试事实上事实上事实上', '反反复复', '11萨科技大会上大号', '2016-10-29 03:35:25', '1'), ('23', '2222', '3333', '444444', '2016-10-29 03:42:55', '1'), ('24', '2222', '3333', '444444', '2016-10-29 03:43:03', '1'), ('25', 'ssss', 'ssss', 'eeeeee', '2016-10-29 03:44:18', '1'), ('26', 'aaaaaa', 'ssdadsasd', 'vsassa', '2016-10-29 03:46:50', '1'), ('27', 'wsssss', 'sadasdasd', 'sadasvssdfsdfs', '2016-10-29 04:01:41', '1'), ('28', 'ssss', 'ssssss', 'sssssssssssssssss', '2016-10-29 04:07:55', '1'), ('29', 'sdasda', 'sdasdafas', 'fasfasfasfaf', '2016-10-29 04:11:12', '1'), ('30', 'sadsa', 'sfdddddd', 'sfasfasf', '2016-10-29 04:14:32', '1'), ('31', 'dasdas', 'fsafasfa', 'asaaaaa', '2016-10-29 04:18:01', '1'), ('32', 's', 'n', 'm', '2016-10-29 04:21:22', '1'), ('33', 'ss', 'bg', 'jh', '2016-10-29 04:25:38', '1'), ('34', 'vvv', 'bbb', 'jjjj', '2016-10-29 04:26:28', '1'), ('35', '', '', '', '2016-10-29 04:26:37', '1');
COMMIT;

-- ----------------------------
--  Table structure for `decor_display`
-- ----------------------------
DROP TABLE IF EXISTS `decor_display`;
CREATE TABLE `decor_display` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `image_title` varchar(200) DEFAULT NULL,
  `image_description` varchar(500) DEFAULT NULL,
  `designer` varchar(50) NOT NULL,
  `collect_count` int(11) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `decor_display`
-- ----------------------------
BEGIN;
INSERT INTO `decor_display` VALUES ('1', '1001', 'abc', '测试title', '暂无', 'xav', '10', '12', '中式'), ('2', '1002', 'bcd', '测试2', '哈哈', 'cooper', '11', '19', '中式,红色');
COMMIT;

-- ----------------------------
--  Table structure for `designer`
-- ----------------------------
DROP TABLE IF EXISTS `designer`;
CREATE TABLE `designer` (
  `designer_id` int(11) NOT NULL,
  `designer_name` varchar(20) NOT NULL,
  `Instruction` varchar(2000) NOT NULL,
  `designer_avatar` varchar(2000) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `designer_works`
-- ----------------------------
DROP TABLE IF EXISTS `designer_works`;
CREATE TABLE `designer_works` (
  `works_id` int(11) NOT NULL,
  `works_desc` varchar(200) DEFAULT NULL,
  `works_thumbnail` varchar(200) DEFAULT NULL,
  `designer_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedback_content` varchar(500) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telephone` varchar(11) NOT NULL,
  `feedback_date` datetime NOT NULL,
  `isSolve` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `feedback`
-- ----------------------------
BEGIN;
INSERT INTO `feedback` VALUES ('content', '1', '123456', '2016-10-23 02:00:47', '0'), ('??Service', '2', '110120119', '2016-10-23 02:18:05', '0'), ('??Service', '3', '110120119', '2016-10-23 02:24:32', '0'), ('测试Service', '4', '110120119', '2016-10-23 02:27:30', '0'), ('测试Service', '5', '110120119', '2016-10-23 15:58:54', '0'), ('测试Service', '6', '110120119', '2016-10-23 16:07:18', '0'), ('测试Service', '7', '110120119', '2016-10-23 16:18:02', '0'), ('测试Service', '8', '110120119', '2016-10-23 16:19:58', '0');
COMMIT;

-- ----------------------------
--  Table structure for `index_focusPic`
-- ----------------------------
DROP TABLE IF EXISTS `index_focusPic`;
CREATE TABLE `index_focusPic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `isAlive` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `permission_name` varchar(32) DEFAULT NULL COMMENT '权限名',
  `permission_sign` varchar(128) DEFAULT NULL COMMENT '权限标识,程序中判断使用,如"user:create"',
  `description` varchar(256) DEFAULT NULL COMMENT '权限描述,UI界面显示使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='权限表';

-- ----------------------------
--  Records of `permission`
-- ----------------------------
BEGIN;
INSERT INTO `permission` VALUES ('1', '用户新增', 'user:create', null), ('2', '用户删除', 'user:delete', null), ('3', '页面管理', 'page:manage', null);
COMMIT;

-- ----------------------------
--  Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(32) DEFAULT NULL COMMENT '角色名',
  `role_sign` varchar(128) DEFAULT NULL COMMENT '角色标识,程序中判断使用,如"admin"',
  `description` varchar(256) DEFAULT NULL COMMENT '角色描述,UI界面显示使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
--  Records of `role`
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES ('1', 'superadmin', 'superadmin', '超级管理员'), ('2', 'pagemanager', 'pagemanager', '页面管理员');
COMMIT;

-- ----------------------------
--  Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `role_id` bigint(20) unsigned DEFAULT NULL COMMENT '角色id',
  `permission_id` bigint(20) unsigned DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='角色与权限关联表';

-- ----------------------------
--  Records of `role_permission`
-- ----------------------------
BEGIN;
INSERT INTO `role_permission` VALUES ('1', '1', '1'), ('2', '1', '2'), ('3', '1', '3'), ('4', '2', '3');
COMMIT;

-- ----------------------------
--  Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tagid` int(11) NOT NULL,
  `tagname` varchar(20) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tag_map`
-- ----------------------------
DROP TABLE IF EXISTS `tag_map`;
CREATE TABLE `tag_map` (
  `tagid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  PRIMARY KEY (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` char(64) DEFAULT NULL COMMENT '密码',
  `state` varchar(32) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'starzou', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', null, '2014-07-17 12:59:08'), ('2', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', null, '2016-07-23 14:00:49');
COMMIT;

-- ----------------------------
--  Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  `role_id` bigint(20) unsigned DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户与角色关联表';

-- ----------------------------
--  Records of `user_role`
-- ----------------------------
BEGIN;
INSERT INTO `user_role` VALUES ('1', '1', '1'), ('2', '2', '3');
COMMIT;

-- ----------------------------
--  Table structure for `vistor_info`
-- ----------------------------
DROP TABLE IF EXISTS `vistor_info`;
CREATE TABLE `vistor_info` (
  `id` int(11) NOT NULL,
  `vistorname` varchar(10) NOT NULL,
  `telephone` varchar(11) NOT NULL,
  `regist_date` datetime NOT NULL,
  `isReply` int(2) unsigned zerofill NOT NULL DEFAULT '00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
