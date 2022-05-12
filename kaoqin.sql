/*
Navicat MySQL Data Transfer

Source Server         : pc
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : kaoqin

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-05-12 14:55:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `apply_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL,
  `during_time` int(11) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `emp_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('18', '2022-05-11 16:00:00', '3', '12313', '5', '0', '10');
INSERT INTO `apply` VALUES ('19', '2022-05-12 16:00:00', '3', '123123', '5', '2', '10');
INSERT INTO `apply` VALUES ('20', '2022-05-20 16:00:00', '2', '有事', '0', '0', '10');
INSERT INTO `apply` VALUES ('21', '2022-05-17 16:00:00', '3', '要生了', '3', '2', '8');
INSERT INTO `apply` VALUES ('22', '2022-05-17 16:00:00', '1', '产检', '3', '2', '10');
INSERT INTO `apply` VALUES ('23', '2022-05-18 16:00:00', '1', '产检', '3', '2', '7');
INSERT INTO `apply` VALUES ('24', '2022-05-18 16:00:00', '2', '1341', '3', '2', '7');

-- ----------------------------
-- Table structure for apply_record
-- ----------------------------
DROP TABLE IF EXISTS `apply_record`;
CREATE TABLE `apply_record` (
  `apply_record_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `total_time` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`apply_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply_record
-- ----------------------------
INSERT INTO `apply_record` VALUES ('11', '6', '2', '3', '2');
INSERT INTO `apply_record` VALUES ('12', '10', '5', '3', '2');
INSERT INTO `apply_record` VALUES ('13', '10', '0', '2', '0');
INSERT INTO `apply_record` VALUES ('14', '8', '3', '3', '2');
INSERT INTO `apply_record` VALUES ('15', '10', '3', '1', '2');
INSERT INTO `apply_record` VALUES ('16', '7', '3', '1', '2');
INSERT INTO `apply_record` VALUES ('17', '7', '3', '2', '2');

-- ----------------------------
-- Table structure for check_record
-- ----------------------------
DROP TABLE IF EXISTS `check_record`;
CREATE TABLE `check_record` (
  `sign_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '0：上班打卡\n1：下班打卡\n2：外出打卡\n3：返回打卡',
  `emp_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of check_record
-- ----------------------------
INSERT INTO `check_record` VALUES ('26', '2022-05-11 19:41:04', '0', '6');
INSERT INTO `check_record` VALUES ('27', '2022-05-11 19:41:17', '1', '6');
INSERT INTO `check_record` VALUES ('28', '2022-05-11 19:43:00', '0', '6');
INSERT INTO `check_record` VALUES ('29', '2022-05-11 19:43:04', '3', '6');
INSERT INTO `check_record` VALUES ('30', '2022-05-11 19:43:11', '0', '6');
INSERT INTO `check_record` VALUES ('31', '2022-05-11 19:46:15', '0', '7');
INSERT INTO `check_record` VALUES ('32', '2022-05-11 19:46:16', '1', '7');
INSERT INTO `check_record` VALUES ('33', '2022-05-11 19:46:17', '3', '7');
INSERT INTO `check_record` VALUES ('34', '2022-05-11 19:46:19', '1', '7');
INSERT INTO `check_record` VALUES ('35', '2022-05-11 19:46:21', '3', '7');
INSERT INTO `check_record` VALUES ('36', '2022-05-11 19:59:42', '0', '10');
INSERT INTO `check_record` VALUES ('37', '2022-05-11 19:59:43', '1', '10');
INSERT INTO `check_record` VALUES ('38', '2022-05-11 19:59:44', '3', '10');
INSERT INTO `check_record` VALUES ('39', '2022-05-12 13:07:40', '0', '8');
INSERT INTO `check_record` VALUES ('40', '2022-05-12 13:07:41', '1', '8');
INSERT INTO `check_record` VALUES ('41', '2022-05-12 13:07:41', '3', '8');
INSERT INTO `check_record` VALUES ('42', '2022-05-12 13:24:48', '1', '10');
INSERT INTO `check_record` VALUES ('43', '2022-05-12 13:24:51', '0', '10');
INSERT INTO `check_record` VALUES ('44', '2022-05-12 13:49:46', '2', '7');
INSERT INTO `check_record` VALUES ('45', '2022-05-12 13:50:04', '0', '7');
INSERT INTO `check_record` VALUES ('46', '2022-05-12 13:58:18', '2', '7');
INSERT INTO `check_record` VALUES ('47', '2022-05-12 13:58:24', '0', '7');

-- ----------------------------
-- Table structure for employer
-- ----------------------------
DROP TABLE IF EXISTS `employer`;
CREATE TABLE `employer` (
  `emp_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL COMMENT '0：女\n1：男',
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employer
-- ----------------------------
INSERT INTO `employer` VALUES ('7', '1111', '打工人', '1', '02021229038', '123', '2021229038@tju.edu.cn', '2022-05-11 00:00:00', '0');
INSERT INTO `employer` VALUES ('8', '5555', '管钱的', '0', '13281183816', '123', '1711650232@alumni.tiangong.edu.cn', '2022-05-11 00:00:00', '5');
INSERT INTO `employer` VALUES ('9', '4444', '管人的', '1', '13869718541', '123', 'julietjobs6@163.com', '2022-05-11 00:00:00', '4');
INSERT INTO `employer` VALUES ('10', '0000', '头儿', '1', '123123123', '123', '87155075@qq.com', '2022-05-11 00:00:00', '1');
INSERT INTO `employer` VALUES ('11', '7777', 'test', '1', '1231234123', '123', '1234', '2022-05-12 00:00:00', '0');

-- ----------------------------
-- Table structure for emp_state
-- ----------------------------
DROP TABLE IF EXISTS `emp_state`;
CREATE TABLE `emp_state` (
  `state_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_id` bigint(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '0：未在班\n1：在班',
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_state
-- ----------------------------
INSERT INTO `emp_state` VALUES ('7', '7', '1');
INSERT INTO `emp_state` VALUES ('8', '8', '1');
INSERT INTO `emp_state` VALUES ('9', '9', '0');
INSERT INTO `emp_state` VALUES ('10', '10', '1');
INSERT INTO `emp_state` VALUES ('11', '11', '0');

-- ----------------------------
-- Table structure for left_vacation
-- ----------------------------
DROP TABLE IF EXISTS `left_vacation`;
CREATE TABLE `left_vacation` (
  `left_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_id` bigint(20) DEFAULT NULL,
  `left_year` int(11) DEFAULT NULL,
  `left_hun_jia` int(11) DEFAULT NULL,
  `left_chan_jian` int(11) DEFAULT NULL,
  `left_chan_jia` int(11) DEFAULT NULL,
  `left_bu_ru` int(11) DEFAULT NULL,
  `left_pei_chan` int(11) DEFAULT NULL,
  PRIMARY KEY (`left_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of left_vacation
-- ----------------------------
INSERT INTO `left_vacation` VALUES ('5', '7', '7', '3', '0', '20', '30', '5');
INSERT INTO `left_vacation` VALUES ('6', '8', '7', '3', '0', '20', '30', '5');
INSERT INTO `left_vacation` VALUES ('7', '9', '7', '3', '3', '20', '30', '5');
INSERT INTO `left_vacation` VALUES ('8', '10', '7', '3', '2', '20', '27', '5');
INSERT INTO `left_vacation` VALUES ('9', '2', '7', '3', '3', '20', '30', '5');
INSERT INTO `left_vacation` VALUES ('10', '11', '7', '3', '3', '20', '30', '5');
