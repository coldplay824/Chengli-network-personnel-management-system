/*
Navicat MySQL Data Transfer

Source Server         : MySQl
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : rsgl

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2021-01-08 17:17:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `number` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `manager` varchar(20) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('002', 'c', '2', '131313');
INSERT INTO `departments` VALUES ('1', 'java', '1', '123456789');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `eid` varchar(20) NOT NULL,
  `ename` varchar(20) NOT NULL,
  `eage` varchar(20) NOT NULL,
  `education` varchar(20) NOT NULL,
  `job` varchar(20) NOT NULL,
  `sendtime` date NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `title` varchar(50) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `text` text,
  `kind` varchar(50) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('11', '22', '33', '3', '/WEB-ROOT/upload/1.png');
INSERT INTO `news` VALUES ('12', '44', '55123', '2', '/WEB-ROOT/upload/3.png');
INSERT INTO `news` VALUES ('哈哈一号', '博文', '撒旦发射点发阿斯蒂芬阿斯蒂芬撒旦发射点发', '1', '/WEB-ROOT/upload/3.png');

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `account` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `paytime` date NOT NULL,
  `basewage` varchar(20) NOT NULL,
  `paywage` varchar(20) NOT NULL,
  `booleanpay` varchar(20) NOT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay
-- ----------------------------

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `title` varchar(50) NOT NULL,
  `p1` varchar(100) DEFAULT NULL,
  `p2` varchar(100) DEFAULT NULL,
  `p3` varchar(100) DEFAULT NULL,
  `p4` varchar(100) DEFAULT NULL,
  `p5` varchar(100) DEFAULT NULL,
  `p6` varchar(100) DEFAULT NULL,
  `p7` varchar(100) DEFAULT NULL,
  `p8` varchar(100) DEFAULT NULL,
  `p9` varchar(100) DEFAULT NULL,
  `p10` varchar(50) DEFAULT NULL,
  `p11` varchar(50) DEFAULT NULL,
  `p12` varchar(50) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('123214', '/WEB-ROOT/upload/19906b4c195146aaa9b8afcc92433d81.png', '/WEB-ROOT/upload/eb6e2824c4d346909be38131f367eaf8.png', null, null, null, null, null, null, null, null, null, null, '2134123123', '123123', '12512');
INSERT INTO `project` VALUES ('哈哈3号', '/WEB-ROOT/upload/428fcd47cec544e6a502c6fb2485a1c3.png', '/WEB-ROOT/upload/f0a801184344412794cf40e9aa69e4ea.png', null, null, null, null, null, null, null, null, null, null, '12312312', '3123123', '123');

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `tid` varchar(20) NOT NULL,
  `ttitle` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `purpose` varchar(20) NOT NULL,
  `time` date NOT NULL,
  `address` varchar(20) NOT NULL,
  `participants` varchar(20) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `account` varchar(16) NOT NULL COMMENT '账号也是员工编号',
  `password` varchar(16) NOT NULL COMMENT '密码',
  `authority` int(1) NOT NULL DEFAULT '0' COMMENT '权限',
  `username` varchar(25) NOT NULL COMMENT '姓名',
  `depNumber` varchar(20) NOT NULL COMMENT '部门编号',
  PRIMARY KEY (`account`),
  UNIQUE KEY `username` (`username`,`account`),
  KEY `FK_user_departments` (`depNumber`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`depNumber`) REFERENCES `departments` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('001', '123456', '1', 'qin', '002');
INSERT INTO `user` VALUES ('002', '123456', '1', 'yeyun', '002');
INSERT INTO `user` VALUES ('003', '123456', '1', 'li', '1');
INSERT INTO `user` VALUES ('123', '123456', '0', '一二三', '002');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `usernumber` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `card` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `nation` varchar(10) DEFAULT NULL,
  `wedding` varchar(10) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `worktime` date DEFAULT NULL,
  `depnumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`usernumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工信息表';

-- ----------------------------
-- Records of userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for wage
-- ----------------------------
DROP TABLE IF EXISTS `wage`;
CREATE TABLE `wage` (
  `account` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `departments` varchar(20) NOT NULL,
  `bsalary` varchar(20) NOT NULL,
  `premium` varchar(20) NOT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wage
-- ----------------------------
