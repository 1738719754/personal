/*
Navicat MySQL Data Transfer

Source Server         : 测试服
Source Server Version : 50720
Source Host           : mysql:3306
Source Database       : testcl

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2017-11-03 15:46:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_group`
-- ----------------------------
DROP TABLE IF EXISTS `base_group`;
CREATE TABLE `base_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(255) NOT NULL COMMENT '角色名称',
  `type_id` int(11) NOT NULL COMMENT '角色类型id',
  `g_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `g_status` int(11) DEFAULT '0' COMMENT '状态 0：启用 1不启用',
  `crt_time` int(255) DEFAULT NULL COMMENT '创建时间',
  `crt_uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `crt_host` varchar(255) DEFAULT NULL COMMENT '创建ip',
  `upd_time` int(255) DEFAULT NULL COMMENT '最后更新时间',
  `upd_uid` int(11) DEFAULT NULL COMMENT '最后更新人id',
  `upd_host` varchar(255) DEFAULT NULL COMMENT '最后更新ip',
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `un_group_name` (`g_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_group
-- ----------------------------
INSERT INTO `base_group` VALUES ('1', '管理员', '1', 'test', '1', null, null, null, '1', null, null, null, null, null);
INSERT INTO `base_group` VALUES ('2', '体验组', '1', '对对对', '1', null, null, null, '1', null, null, null, null, null);
INSERT INTO `base_group` VALUES ('3', '1', '1', null, '0', null, null, null, '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for `base_group_member`
-- ----------------------------
DROP TABLE IF EXISTS `base_group_member`;
CREATE TABLE `base_group_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(255) NOT NULL COMMENT '角色id',
  `user_id` int(255) NOT NULL COMMENT '用户id',
  `m_description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '描述',
  `m_type` int(11) DEFAULT '0' COMMENT '角色类型 0：成员 1：领导',
  `crt_time` int(255) DEFAULT NULL COMMENT '创建时间',
  `crt_uid` int(255) DEFAULT NULL COMMENT '创建人id',
  `crt_host` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建ip',
  `upd_time` int(255) DEFAULT NULL COMMENT '最后更新时间',
  `upd_uid` int(255) DEFAULT NULL COMMENT '最后更新人id',
  `upd_host` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '最后更新ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `un_member_uid_gid` (`group_id`,`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_group_member
-- ----------------------------
INSERT INTO `base_group_member` VALUES ('1', '1', '1', '点点滴滴', '0', null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('2', '2', '2', '对对对', '0', null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('3', '1', '2', '大大大', '0', null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('18', '1', '13', null, '0', null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('19', '2', '13', null, '0', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `base_group_resource`
-- ----------------------------
DROP TABLE IF EXISTS `base_group_resource`;
CREATE TABLE `base_group_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(255) NOT NULL COMMENT '角色id',
  `resource_id` int(255) NOT NULL COMMENT '资源id',
  `resource_type` int(255) DEFAULT '1' COMMENT '资源类型 0：菜单 1：资源',
  `crt_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `crt_uid` int(255) DEFAULT NULL COMMENT '创建人id',
  `crt_host` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建ip',
  `attr1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `attr2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `attr3` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=791 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_group_resource
-- ----------------------------
INSERT INTO `base_group_resource` VALUES ('285', '1', '3', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('286', '1', '4', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('287', '1', '5', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('288', '1', '9', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('289', '1', '10', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('290', '1', '11', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('291', '1', '12', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('292', '1', '3', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('293', '1', '4', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('294', '1', '5', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('295', '1', '9', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('296', '1', '10', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('297', '1', '11', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('298', '1', '12', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('299', '1', '9', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('300', '1', '12', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('301', '1', '10', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('302', '1', '11', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('303', '1', '13', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('304', '1', '14', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('305', '1', '15', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('306', '1', '10', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('307', '1', '11', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('308', '1', '12', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('309', '1', '13', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('310', '1', '14', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('311', '1', '9', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('312', '1', '15', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('313', '1', '16', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('314', '1', '17', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('315', '1', '18', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('316', '1', '19', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('317', '1', '20', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('318', '1', '21', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('319', '1', '22', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('371', '1', '23', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('372', '1', '24', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('373', '1', '27', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('374', '1', '28', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('375', '1', '23', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('376', '1', '3', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('377', '1', '4', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('378', '1', '5', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('379', '1', '9', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('380', '1', '11', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('381', '1', '14', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('382', '1', '13', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('383', '1', '15', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('384', '1', '12', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('385', '1', '24', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('386', '1', '10', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('387', '1', '27', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('388', '1', '16', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('389', '1', '18', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('390', '1', '17', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('391', '1', '19', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('392', '1', '20', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('393', '1', '28', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('394', '1', '22', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('395', '1', '21', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('396', '4', '23', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('398', '4', '27', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('399', '4', '24', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('400', '4', '28', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('401', '1', '30', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('402', '1', '30', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('403', '1', '31', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('421', '1', '31', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('422', '1', '30', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('423', '4', '31', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('424', '4', '30', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('436', '1', '32', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('437', '1', '33', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('438', '1', '34', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('439', '1', '35', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('440', '4', '32', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('464', '1', '30', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('465', '1', '31', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('466', '1', '30', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('467', '1', '31', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('468', '1', '30', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('469', '1', '31', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('470', '1', '30', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('471', '1', '31', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('472', '1', '40', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('492', '1', '30', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('493', '1', '31', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('494', '1', '40', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('516', '4', '41', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('517', '4', '30', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('518', '4', '31', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('519', '4', '40', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('611', '4', '42', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('612', '4', '36', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('666', '1', '41', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('689', '1', '43', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('690', '1', '42', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('691', '1', '44', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('692', '1', '45', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('710', '9', '42', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('711', '9', '43', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('712', '9', '44', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('713', '9', '45', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('714', '9', '14', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('715', '9', '20', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('716', '9', '17', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('717', '9', '18', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('718', '9', '42', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('719', '9', '44', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('720', '9', '45', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('721', '9', '43', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('722', '1', '3', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('723', '1', '5', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('724', '1', '4', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('725', '1', '23', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('726', '1', '11', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('727', '1', '10', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('728', '1', '9', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('729', '1', '14', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('730', '1', '12', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('731', '1', '13', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('732', '1', '24', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('733', '1', '15', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('734', '1', '27', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('735', '1', '16', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('736', '1', '19', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('737', '1', '21', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('738', '1', '20', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('739', '1', '18', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('740', '1', '17', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('741', '1', '22', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('742', '1', '28', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('758', '4', '13', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('759', '4', '5', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('760', '4', '1', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('761', '4', '6', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('762', '4', '7', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('763', '4', '8', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('764', '4', '27', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('766', '4', '24', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('767', '4', '22', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('768', '4', '23', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('769', '4', '14', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('770', '4', '20', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('771', '4', '17', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('772', '4', '18', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('773', '4', '9', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('774', '1', '13', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('775', '1', '5', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('776', '1', '1', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('777', '1', '6', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('778', '1', '7', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('779', '1', '8', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('780', '1', '27', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('781', '1', '9', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('782', '1', '10', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('783', '1', '11', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('784', '1', '24', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('785', '1', '22', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('786', '1', '23', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('787', '1', '14', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('788', '1', '20', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('789', '1', '17', '1', null, null, null, null, null, null);
INSERT INTO `base_group_resource` VALUES ('790', '1', '18', '1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `base_group_type`
-- ----------------------------
DROP TABLE IF EXISTS `base_group_type`;
CREATE TABLE `base_group_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `t_name` varchar(255) NOT NULL COMMENT '角色类型名称',
  `t_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `crt_time` int(255) DEFAULT NULL COMMENT '创建时间',
  `crt_uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `crt_host` varchar(255) DEFAULT NULL COMMENT '创建ip',
  `upd_time` int(255) DEFAULT NULL COMMENT '最后更新时间',
  `upd_uid` int(11) DEFAULT NULL COMMENT '最后更新人id',
  `upd_host` varchar(255) DEFAULT NULL COMMENT '最后更新ip',
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `un_group_type_name` (`t_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_group_type
-- ----------------------------
INSERT INTO `base_group_type` VALUES ('1', 'bumen ', '对对对', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('2', '岗位', '大大大', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('3', '��������', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('5', '��������1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('7', '测试类型3333', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('8', '��������4444', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('9', '测试类型5555', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `base_menu`
-- ----------------------------
DROP TABLE IF EXISTS `base_menu`;
CREATE TABLE `base_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) NOT NULL DEFAULT '-1' COMMENT '上级菜单',
  `href` varchar(255) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 NOT NULL,
  `crt_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `crt_uid` int(255) DEFAULT NULL COMMENT '创建人id',
  `crt_host` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建ip',
  `upd_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `upd_uid` int(255) DEFAULT NULL COMMENT '最后更新人id',
  `upd_host` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '最后更新ip',
  `attr1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `attr2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `attr3` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_menu
-- ----------------------------
INSERT INTO `base_menu` VALUES ('1', '用户管理', '5', '/admin/user', 'fa fa-user', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('5', '基础配置管理', '13', '', 'fa fa-cog fa-spin', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('6', '菜单管理', '5', '/admin/menu', 'fa fa-list', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('7', '角色组管理', '5', '/admin/group', 'fa fa-users', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('8', '角色类型管理', '5', '/admin/groupType', 'fa fa-address-card-o', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('9', '系统监控', '13', '', 'fa fa-area-chart', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('11', 'Hystrix监控', '9', 'http://localhost:8764/hystrix', 'fa fa-bar-chart', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('13', '权限管理系统', '-1', '', 'fa fa-terminal', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('14', '内容管理系统', '-1', '', 'fa-newspaper-o', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('18', '评论管理', '20', '', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('20', '文章评论管理', '14', '', 'fa fa-bookmark', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('21', '数据字典', '5', '', 'fa fa-book', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('22', '服务端api文档', '13', '', 'fa fa-folder', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('23', 'Admin Rest API', '22', '/back/swagger-ui.html', 'fa fa-file-code-o', null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('24', 'Admin Druid数据监控', '9', '/back/druid/datasource.html', 'fa fa-line-chart', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `base_resource`
-- ----------------------------
DROP TABLE IF EXISTS `base_resource`;
CREATE TABLE `base_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `menu_id` int(255) DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `crt_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `crt_uid` int(255) DEFAULT NULL COMMENT '创建人id',
  `crt_host` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建ip',
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_resource
-- ----------------------------
INSERT INTO `base_resource` VALUES ('3', 'userManager:btn_add', 'button', '新增', '/back/user', '1', 'POST', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('4', 'userManager:btn_edit', 'button', '编辑', '/back/user', '1', 'PUT', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('5', 'userManager:btn_del	', 'button', '删除', '/back/user', '1', 'DELETE', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('9', 'menuManager:element', 'uri', '按钮页面', '/admin/element', '6', 'GET', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('10', 'menuManager:btn_add', 'button', '新增', '/back/menu', '6', 'POST', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('13', 'menuManager:btn_element_add', 'button', '新增元素', '/back/element', '6', 'POST', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('14', 'menuManager:btn_element_edit', 'button', '编辑元素', '/back/element', '6', 'PUT', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('15', 'btn_element_del', 'button', '删除元素', '/back/element', '6', 'DELETE', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('16', 'groupManager:btn_add', 'button', '新增', '/back/group', '7', 'POST', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('17', 'groupManager:btn_edit', 'button', '编辑', '/back/group', '7', 'PUT', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('18', 'groupManager:btn_del', 'button', '删除', '/back/group', '7', 'DELETE', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('19', 'groupManager:btn_userManager', 'button', '分配用户', '/back/group/{*}/user', '7', 'PUT', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('20', 'groupManager:btn_resourceManager', 'button', '分配权限', '/back/group/{*}/authority', '7', 'GET', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('21', 'groupManager:menu', 'uri', '分配菜单', '/back/group/{*}/authority/menu', '7', 'POST', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('22', 'groupManager:element', 'uri', '分配资源', '/back/group/{*}/authority/element', '7', 'POST', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('27', 'menuManager:element_view', 'uri', '查看', '/back/element', '6', 'GET', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('28', 'groupManager:view', 'uri', '查看', '/back/group', '7', 'GET', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('30', 'adminAPI:view', 'uri', '查看', '/back/swagger', '23', 'GET', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('31', 'adminAPI:swagger', 'uri', '查看', '/back/v2', '23', 'GET', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('32', 'groupTypeManager:view', 'uri', '查看', '/back/groupType', '8', 'GET', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('33', 'groupTypeManager:btn_add', 'button', '新增', '/back/groupType', '8', 'POST', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('34', 'groupTypeManager:btn_edit', 'button', '编辑', '/back/groupType', '8', 'PUT', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('35', 'groupTypeManager:btn_del', 'button', '删除', '/back/groupType', '8', 'DELETE', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('40', 'adminAPI:swagger_resources', 'uri', '查看', '/back/swagger-resources', '23', 'GET', null, null, null, null, null, null);
INSERT INTO `base_resource` VALUES ('42', 'blogArticle:view', 'uri', '查看', '/blog/article', '17', 'GET', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `base_user`
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '账号',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `mobile_phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `wechat_number` varchar(255) DEFAULT NULL COMMENT '微信号',
  `tel_phone` varchar(255) DEFAULT NULL COMMENT '电话号码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `status` char(1) DEFAULT '1' COMMENT '是否启用(0:停用 1:启用)',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `crt_time` int(11) DEFAULT NULL,
  `crt_uid` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` int(11) DEFAULT NULL,
  `upd_uid` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL COMMENT '备用字段',
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of base_user
-- ----------------------------
INSERT INTO `base_user` VALUES ('1', 'admin', '$2a$12$S/yLlj9kzi5Dgsz97H4rAekxrPlk/10eXp1lUJcAVAx.2M9tOpWie', '管理员', '1509431435', 'dd', '789456123', '123456', '0', '123@qq.com', '男', '0', '对对对', '1509431435', '1', '127.0.0.1', '1509431435', '1', '127.0.0.1', null, null, null);
INSERT INTO `base_user` VALUES ('2', 'xiaozhi', '123456', '小智', '1509431435', 'ff', '789456123', '654123', '1', '456@qq.com', '男', '0', '对对对', '1509431435', '1', '127.0.0.1', '1509431435', '1', '127.0.0.1', null, null, null);
INSERT INTO `base_user` VALUES ('13', 'test-add', '123456', 'test-add', null, null, null, null, null, null, null, '0', null, '1509586035', null, null, '1509586035', null, null, null, null, null);

-- ----------------------------
-- Table structure for `gate_log`
-- ----------------------------
DROP TABLE IF EXISTS `gate_log`;
CREATE TABLE `gate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(255) DEFAULT NULL,
  `opt` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gate_log
-- ----------------------------
INSERT INTO `gate_log` VALUES ('12', '客户端管理', '新增', '/back/gateClient', '2017-07-02 16:54:22', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('13', '客户端管理', '新增', '/back/gateClient', '2017-07-02 22:31:47', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('14', '客户端管理', '新增', '/back/gateClient', '2017-07-02 22:32:08', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('15', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 13:35:45', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('16', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 13:35:57', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('17', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 05:38:12', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('18', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 05:38:23', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('19', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 05:38:42', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('20', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 05:39:14', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('21', '菜单管理', '新增', '/back/menu', '2017-07-03 12:43:01', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('22', '角色组管理', '新增', '/back/group', '2017-07-03 12:43:29', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('23', '菜单管理', '新增元素', '/back/element', '2017-07-03 13:39:43', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('24', '菜单管理', '新增元素', '/back/element', '2017-07-03 13:43:17', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('25', '菜单管理', '新增元素', '/back/element', '2017-07-03 13:49:11', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('26', '角色组管理', '新增', '/back/group', '2017-07-03 13:52:00', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('27', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 14:08:58', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('28', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 14:56:28', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('29', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 14:56:30', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('30', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:14:47', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('31', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:14:49', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('32', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:17:50', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('33', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:17:51', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('34', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:35:58', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('35', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:36:16', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('36', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:43:08', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('37', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:47:31', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('38', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:47:34', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('39', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:47:44', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('40', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:48:24', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('41', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:49:00', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('42', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:52:04', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('43', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:52:58', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('44', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:16:24', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('45', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:16:40', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('46', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:17:11', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('47', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:20:39', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('48', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:21:52', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('49', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:21:55', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('50', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:25:19', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('51', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:26:02', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('52', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:26:12', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('53', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:26:38', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('54', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:26:51', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('55', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:29:01', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('56', '客户端管理', '编辑', '/back/gateClient', '2017-07-05 05:25:31', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('57', '客户端管理', '编辑', '/back/gateClient', '2017-07-05 05:30:13', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('58', '菜单管理', '编辑元素', '/back/element', '2017-07-05 05:33:39', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('59', '菜单管理', '编辑元素', '/back/element', '2017-07-05 05:38:10', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('60', '客户端管理', '编辑', '/back/gateClient', '2017-07-05 05:38:48', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('61', '菜单管理', '新增元素', '/back/element', '2017-07-05 05:42:16', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('62', '菜单管理', '删除元素', '/back/element', '2017-07-05 05:45:47', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('63', '菜单管理', '新增元素', '/back/element', '2017-07-06 05:46:26', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('64', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 05:47:28', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('65', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:40:16', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('66', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:42:04', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('67', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:42:13', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('68', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:42:16', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('69', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:43:28', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('70', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:43:39', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('71', '客户端管理', '删除', '/back/gateClient', '2017-07-06 13:44:25', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('72', '菜单管理', '编辑元素', '/back/element', '2017-07-06 15:13:12', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('73', '菜单管理', '编辑元素', '/back/element', '2017-07-06 15:13:33', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('74', '菜单管理', '编辑元素', '/back/element', '2017-07-06 15:13:40', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('75', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 15:14:11', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('76', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:24', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('77', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:24', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('78', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:26', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('79', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:26', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('80', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:28', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('81', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:28', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('82', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:37:27', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('83', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:40:04', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('84', '客户端管理', '新增', '/gate/client', '2017-07-07 02:40:11', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('85', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:40:16', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('86', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:40:18', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('87', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:40:19', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('88', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:40:34', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('89', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:42:18', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('90', '客户端管理', '编辑', '/gate/client', '2017-07-07 03:26:47', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('91', '客户端管理', '编辑', '/gate/client', '2017-07-07 03:32:18', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('92', '客户端管理', '编辑', '/gate/client', '2017-07-07 03:32:23', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('93', '菜单管理', '新增元素', '/back/element', '2017-07-07 04:04:36', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('94', '菜单管理', '新增元素', '/back/element', '2017-07-07 04:06:20', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('95', '菜单管理', '新增元素', '/back/element', '2017-07-07 04:06:45', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('96', '菜单管理', '新增元素', '/back/element', '2017-07-07 04:07:07', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('97', '角色组管理', '新增', '/back/group', '2017-07-07 04:08:19', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('98', '角色组管理', '新增', '/back/group', '2017-07-07 04:08:19', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('99', '角色组管理', '新增', '/back/group', '2017-07-07 04:08:21', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('100', '服务注册', '编辑', '/gate/service', '2017-07-07 04:09:12', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('101', '服务注册', '编辑', '/gate/service', '2017-07-07 04:09:13', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('102', '服务注册', '编辑', '/gate/service', '2017-07-07 04:12:39', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('103', '角色组管理', '新增', '/back/group', '2017-07-07 04:13:04', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('104', '角色组管理', '新增', '/back/group', '2017-07-07 04:13:04', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('105', '客户端管理', '编辑', '/gate/client', '2017-07-07 05:48:42', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('106', '客户端管理', '编辑', '/gate/client', '2017-07-07 05:50:12', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('107', '客户端管理', '编辑', '/gate/client', '2017-07-07 05:51:27', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('108', '客户端管理', '编辑', '/gate/client', '2017-07-07 09:29:55', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('109', '客户端管理', '编辑', '/gate/client', '2017-07-07 09:30:01', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('110', '服务注册', '删除', '/gate/service', '2017-07-07 09:30:09', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('111', '服务注册', '删除', '/gate/service', '2017-07-07 09:30:15', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('112', '服务注册', '删除', '/gate/service', '2017-07-07 09:30:20', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('113', '服务注册', '删除', '/gate/service', '2017-07-07 09:30:27', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('114', '客户端管理', '编辑', '/gate/client', '2017-07-07 20:59:07', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('115', '客户端管理', '编辑', '/gate/client', '2017-07-07 20:59:10', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('116', '客户端管理', '编辑', '/gate/client', '2017-07-07 20:59:13', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('117', '角色组管理', '新增', '/back/group', '2017-07-07 21:11:40', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('118', '角色组管理', '新增', '/back/group', '2017-07-07 21:11:46', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('119', '角色组管理', '新增', '/back/group', '2017-07-07 21:11:48', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('120', '角色组管理', '新增', '/back/group', '2017-07-07 21:13:39', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('121', '客户端管理', '编辑', '/gate/client', '2017-07-07 21:51:24', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('122', '客户端管理', '编辑', '/gate/client', '2017-07-07 21:51:31', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('123', '服务注册', '编辑', '/gate/service', '2017-07-07 22:22:18', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('124', '服务注册', '删除', '/gate/service', '2017-07-07 22:22:28', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('125', '服务注册', '删除', '/gate/service', '2017-07-07 22:22:34', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('126', '服务注册', '删除', '/gate/service', '2017-07-07 22:22:39', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('127', '客户端管理', '编辑', '/gate/client', '2017-07-07 22:22:49', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('128', '用户管理', '新增', '/back/user', '2017-07-15 18:32:12', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('129', '角色组管理', '编辑', '/back/group', '2017-07-15 18:32:27', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('130', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:16', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('131', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:16', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('132', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:19', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('133', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:20', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('134', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:21', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('135', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:25', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('136', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:29', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('137', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:30', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('138', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:33', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('139', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:35', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('140', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:35', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('141', '角色组管理', '新增', '/back/group', '2017-07-15 18:36:37', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('142', '角色组管理', '新增', '/back/group', '2017-07-15 18:37:03', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('143', '角色组管理', '新增', '/back/group', '2017-07-15 18:37:03', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('144', '角色组管理', '新增', '/back/group', '2017-07-15 18:37:04', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('145', '角色组管理', '新增', '/back/group', '2017-07-15 18:37:09', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('146', '菜单管理', '删除元素', '/back/element', '2017-07-15 18:37:36', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('147', '菜单管理', '删除元素', '/back/element', '2017-07-15 18:37:42', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('148', '菜单管理', '删除元素', '/back/element', '2017-07-15 18:37:48', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('149', '菜单管理', '删除元素', '/back/element', '2017-07-15 18:37:53', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('150', '菜单管理', '删除元素', '/back/element', '2017-07-15 18:38:02', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('151', '菜单管理', '删除元素', '/back/element', '2017-07-15 18:38:07', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('152', '菜单管理', '删除元素', '/back/element', '2017-07-15 18:38:13', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('153', '菜单管理', '删除元素', '/back/element', '2017-07-15 18:38:20', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('154', '菜单管理', '删除', '/back/menu', '2017-07-15 18:38:28', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('155', '菜单管理', '删除', '/back/menu', '2017-07-15 18:38:33', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('156', '菜单管理', '删除', '/back/menu', '2017-07-15 18:38:39', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('157', '用户管理', '删除', '/back/user', '2017-07-15 19:15:00', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('158', '用户管理', '编辑', '/back/user', '2017-07-15 19:18:06', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('159', '角色组管理', '删除', '/back/group', '2017-07-15 19:22:38', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('160', '菜单管理', '编辑', '/back/menu', '2017-07-15 23:45:24', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('161', '菜单管理', '新增元素', '/back/element', '2017-07-15 23:51:07', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('162', '菜单管理', '新增元素', '/back/element', '2017-07-15 23:52:00', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('163', '菜单管理', '编辑元素', '/back/element', '2017-07-15 23:52:07', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('164', '菜单管理', '新增元素', '/back/element', '2017-07-15 23:52:37', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('165', '菜单管理', '新增元素', '/back/element', '2017-07-15 23:53:06', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('166', '角色组管理', '新增', '/back/group', '2017-07-15 23:53:20', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('167', '角色组管理', '新增', '/back/group', '2017-07-15 23:53:20', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('168', '角色组管理', '新增', '/back/group', '2017-07-15 23:53:21', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('169', '角色组管理', '新增', '/back/group', '2017-07-15 23:53:21', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('170', '角色组管理', '新增', '/back/group', '2017-07-15 23:53:22', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('171', '角色组管理', '新增', '/back/group', '2017-07-15 23:53:22', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('172', '角色组管理', '新增', '/back/group', '2017-07-15 23:53:29', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('173', '文章管理', '新增', '/blog/article', '2017-07-15 23:54:51', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('174', '文章管理', '编辑', '/blog/article', '2017-07-16 12:59:56', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('175', '文章管理', '编辑', '/blog/article', '2017-07-16 13:04:02', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('176', '文章管理', '编辑', '/blog/article', '2017-07-16 13:04:56', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('177', '文章管理', '编辑', '/blog/article', '2017-07-16 13:05:15', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('178', '文章管理', '编辑', '/blog/article', '2017-07-16 13:06:58', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('179', '文章管理', '编辑', '/blog/article', '2017-07-16 13:07:47', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('180', '用户管理', '编辑', '/back/user', '2017-07-16 13:09:03', '1', '管理员', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('181', '文章管理', '新增', '/blog/article', '2017-07-16 16:40:59', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('182', '文章管理', '编辑', '/blog/article', '2017-07-16 16:55:49', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('183', '文章管理', '编辑', '/blog/article', '2017-07-16 16:56:21', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('184', '文章管理', '删除', '/blog/article', '2017-07-16 16:57:24', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('185', '文章管理', '删除', '/blog/article', '2017-07-16 16:57:27', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('186', '用户管理', '新增', '/back/user', '2017-07-16 16:58:49', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('187', '角色组管理', '新增', '/back/group', '2017-07-16 16:59:30', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('188', '角色组管理', '新增', '/back/group', '2017-07-16 16:59:41', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('189', '角色组管理', '新增', '/back/group', '2017-07-16 16:59:41', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('190', '角色组管理', '新增', '/back/group', '2017-07-16 16:59:42', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('191', '角色组管理', '新增', '/back/group', '2017-07-16 16:59:42', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('192', '角色组管理', '新增', '/back/group', '2017-07-16 16:59:44', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('193', '角色组管理', '编辑', '/back/group', '2017-07-16 16:59:55', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('194', '角色组管理', '新增', '/back/group', '2017-07-16 17:00:23', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('195', '角色组管理', '新增', '/back/group', '2017-07-16 17:00:23', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('196', '角色组管理', '新增', '/back/group', '2017-07-16 17:00:23', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('197', '角色组管理', '新增', '/back/group', '2017-07-16 17:00:23', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('198', '角色组管理', '编辑', '/back/group', '2017-07-16 17:00:30', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('199', '文章管理', '新增', '/blog/article', '2017-07-16 17:11:28', '4', 'blog', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('200', '用户管理', '编辑', '/back/user', '2017-07-16 17:12:27', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('201', '文章管理', '新增', '/blog/article', '2017-07-17 08:29:19', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('202', '文章管理', '编辑', '/blog/article', '2017-07-17 08:52:01', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('203', '文章管理', '编辑', '/blog/article', '2017-07-17 09:02:49', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('204', '文章管理', '编辑', '/blog/article', '2017-07-17 09:03:20', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('205', '文章管理', '编辑', '/blog/article', '2017-07-17 09:03:55', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('206', '文章管理', '编辑', '/blog/article', '2017-07-17 09:04:59', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('207', '文章管理', '编辑', '/blog/article', '2017-07-17 09:05:05', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('208', '文章管理', '编辑', '/blog/article', '2017-07-17 09:05:56', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('209', '文章管理', '编辑', '/blog/article', '2017-07-17 09:06:52', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('210', '文章管理', '编辑', '/blog/article', '2017-07-17 12:02:25', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('211', '文章管理', '编辑', '/blog/article', '2017-07-17 12:08:03', '4', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('212', '用户管理', '编辑', '/back/user', '2017-07-19 15:34:14', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('213', '用户管理', '编辑', '/back/user', '2017-07-25 14:50:07', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('214', '用户管理', '编辑', '/back/user', '2017-07-25 14:54:20', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('215', '菜单管理', '编辑', '/back/menu', '2017-07-25 19:38:10', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('216', '用户管理', '新增', '/back/user', '2017-10-27 14:04:06', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('217', '用户管理', '新增', '/back/user', '2017-10-27 14:05:22', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('218', '角色类型管理', '编辑', '/back/groupType', '2017-10-27 14:12:51', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('219', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:05', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('220', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:05', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('221', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:05', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('222', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:05', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('223', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:09', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('224', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:09', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('225', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:09', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('226', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:09', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('227', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:09', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('228', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:09', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('229', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:09', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('230', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:09', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('231', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:09', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('232', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:37', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('233', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:37', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('234', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:37', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('235', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:37', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('236', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:37', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('237', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:37', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('238', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:37', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('239', '角色组管理', '新增', '/back/group', '2017-10-27 14:13:37', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('240', '角色类型管理', '删除', '/back/groupType', '2017-10-27 14:14:35', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('241', '角色类型管理', '新增', '/back/groupType', '2017-10-27 14:15:23', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('242', '角色组管理', '编辑', '/back/group', '2017-10-27 14:15:54', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('243', '角色组管理', '编辑', '/back/group', '2017-10-27 14:16:04', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('244', '角色组管理', '编辑', '/back/group', '2017-10-27 14:22:05', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('245', '角色组管理', '新增', '/back/group', '2017-10-27 14:26:22', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('246', '角色组管理', '新增', '/back/group', '2017-10-27 14:33:01', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('247', '角色组管理', '新增', '/back/group', '2017-10-27 14:35:11', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('248', '角色组管理', '新增', '/back/group', '2017-10-27 14:38:19', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('249', '角色组管理', '编辑', '/back/group', '2017-10-27 14:40:09', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('250', '角色组管理', '删除', '/back/group', '2017-10-27 14:43:24', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('251', '角色组管理', '新增', '/back/group', '2017-10-27 14:47:31', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('252', '角色组管理', '新增', '/back/group', '2017-10-27 14:47:53', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('253', '用户管理', '新增', '/back/user', '2017-10-27 15:18:28', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('254', '用户管理', '新增', '/back/user', '2017-10-27 15:19:42', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('255', '用户管理', '编辑', '/back/user', '2017-10-27 15:24:16', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('256', '用户管理', '编辑', '/back/user', '2017-10-27 15:25:25', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('257', '用户管理', '编辑', '/back/user', '2017-10-27 15:26:24', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('258', '菜单管理', '新增元素', '/back/element', '2017-10-27 15:27:39', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('259', '用户管理', '删除', '/back/user', '2017-10-27 15:29:15', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('260', '菜单管理', '删除元素', '/back/element', '2017-10-27 15:34:26', '1', 'Mr.AG', '0:0:0:0:0:0:0:1');
INSERT INTO `gate_log` VALUES ('261', '角色组管理', '新增', '/back/group', '2017-10-27 16:49:49', '1', 'Mr.AG', '192.168.0.55');
INSERT INTO `gate_log` VALUES ('262', '角色类型管理', '新增', '/back/groupType', '2017-10-30 14:25:01', '1', 'Mr.AG', '192.168.0.55');

-- ----------------------------
-- Table structure for `t_organization`
-- ----------------------------
DROP TABLE IF EXISTS `t_organization`;
CREATE TABLE `t_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '上级id',
  `org_name` varchar(20) DEFAULT NULL COMMENT '组织名',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `remarks` varchar(50) DEFAULT NULL COMMENT '备注',
  `upt_uid` int(11) DEFAULT NULL,
  `upt_time` int(11) DEFAULT NULL,
  `crt_uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `crt_time` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='组织表';

-- ----------------------------
-- Records of t_organization
-- ----------------------------
INSERT INTO `t_organization` VALUES ('1', '-1', '广告业务平台', '1', '根节点', '1', '1509431435', '1', '1509431435', null);
INSERT INTO `t_organization` VALUES ('2', '1', '系统后台', '1', '系统后台管理', '1', '1509431436', '1', '1509431436', null);
INSERT INTO `t_organization` VALUES ('3', '2', '系统管理部', '1', '系统管理部', '1', '1509431437', '1', '1509431437', null);
INSERT INTO `t_organization` VALUES ('4', '3', '高级管理员', '0', '岗位', '1', '1509431438', '1', '1509431438', null);
INSERT INTO `t_organization` VALUES ('5', '3', '部门权限管理员', '0', '岗位', '1', '1509431439', '1', '1509431439', null);
INSERT INTO `t_organization` VALUES ('6', '3', 'rename-test', '0', 'rename-test/岗位', null, null, null, null, null);
INSERT INTO `t_organization` VALUES ('11', '3', 'add-test', '0', 'add-test/岗位', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_organization_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_organization_user`;
CREATE TABLE `t_organization_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `org_id` int(11) NOT NULL COMMENT '组织id',
  `upd_uid` int(11) DEFAULT NULL COMMENT '更新人id',
  `upd_time` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='组织-用户表';

-- ----------------------------
-- Records of t_organization_user
-- ----------------------------
INSERT INTO `t_organization_user` VALUES ('1', '1', '4', '1', null, null);
INSERT INTO `t_organization_user` VALUES ('3', '1', '5', '1', null, null);
INSERT INTO `t_organization_user` VALUES ('4', '13', '4', null, null, null);
INSERT INTO `t_organization_user` VALUES ('5', '13', '5', null, null, null);
INSERT INTO `t_organization_user` VALUES ('7', '2', '5', null, null, null);
