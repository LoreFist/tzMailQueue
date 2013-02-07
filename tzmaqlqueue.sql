/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : tzmaqlqueue

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_email`
-- ----------------------------
DROP TABLE IF EXISTS `base_email`;
CREATE TABLE `base_email` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_email
-- ----------------------------
INSERT INTO `base_email` VALUES ('test_0', 'test_0@test.test', '6');
INSERT INTO `base_email` VALUES ('test_1', 'test_1@test.test', '7');
INSERT INTO `base_email` VALUES ('test_2', 'test_2@test.test', '8');
INSERT INTO `base_email` VALUES ('test_3', 'test_3@test.test', '9');
INSERT INTO `base_email` VALUES ('test_4', 'test_4@test.test', '10');
INSERT INTO `base_email` VALUES ('test_5', 'test_5@test.test', '11');
INSERT INTO `base_email` VALUES ('test_6', 'test_6@test.test', '12');
INSERT INTO `base_email` VALUES ('test_7', 'test_7@test.test', '13');
INSERT INTO `base_email` VALUES ('test_8', 'test_8@test.test', '14');
INSERT INTO `base_email` VALUES ('test_9', 'test_9@test.test', '15');
INSERT INTO `base_email` VALUES ('test_10', 'test_10@test.test', '16');
INSERT INTO `base_email` VALUES ('test_11', 'test_11@test.test', '17');
INSERT INTO `base_email` VALUES ('test_12', 'test_12@test.test', '18');
INSERT INTO `base_email` VALUES ('test_13', 'test_13@test.test', '19');
INSERT INTO `base_email` VALUES ('test_14', 'test_14@test.test', '20');
INSERT INTO `base_email` VALUES ('test_15', 'test_15@test.test', '21');
INSERT INTO `base_email` VALUES ('test_16', 'test_16@test.test', '22');
INSERT INTO `base_email` VALUES ('test_17', 'test_17@test.test', '23');
INSERT INTO `base_email` VALUES ('test_18', 'test_18@test.test', '24');
INSERT INTO `base_email` VALUES ('test_19', 'test_19@test.test', '25');
INSERT INTO `base_email` VALUES ('test_20', 'test_20@test.test', '26');
INSERT INTO `base_email` VALUES ('test_21', 'test_21@test.test', '27');
INSERT INTO `base_email` VALUES ('test_22', 'test_22@test.test', '28');
INSERT INTO `base_email` VALUES ('test_23', 'test_23@test.test', '29');
INSERT INTO `base_email` VALUES ('test_24', 'test_24@test.test', '30');
INSERT INTO `base_email` VALUES ('test_25', 'test_25@test.test', '31');
INSERT INTO `base_email` VALUES ('test_26', 'test_26@test.test', '32');
INSERT INTO `base_email` VALUES ('test_27', 'test_27@test.test', '33');
INSERT INTO `base_email` VALUES ('test_28', 'test_28@test.test', '34');
INSERT INTO `base_email` VALUES ('test_29', 'test_29@test.test', '35');
INSERT INTO `base_email` VALUES ('test_30', 'test_30@test.test', '36');
INSERT INTO `base_email` VALUES ('test_31', 'test_31@test.test', '37');
INSERT INTO `base_email` VALUES ('test_32', 'test_32@test.test', '38');
INSERT INTO `base_email` VALUES ('test_33', 'test_33@test.test', '39');
INSERT INTO `base_email` VALUES ('test_34', 'test_34@test.test', '40');
INSERT INTO `base_email` VALUES ('test_35', 'test_35@test.test', '41');
INSERT INTO `base_email` VALUES ('test_36', 'test_36@test.test', '42');
INSERT INTO `base_email` VALUES ('test_37', 'test_37@test.test', '43');
INSERT INTO `base_email` VALUES ('test_38', 'test_38@test.test', '44');
INSERT INTO `base_email` VALUES ('test_39', 'test_39@test.test', '45');
INSERT INTO `base_email` VALUES ('test_40', 'test_40@test.test', '46');
INSERT INTO `base_email` VALUES ('test_41', 'test_41@test.test', '47');
INSERT INTO `base_email` VALUES ('test_42', 'test_42@test.test', '48');
INSERT INTO `base_email` VALUES ('test_43', 'test_43@test.test', '49');
INSERT INTO `base_email` VALUES ('test_44', 'test_44@test.test', '50');
INSERT INTO `base_email` VALUES ('test_45', 'test_45@test.test', '51');
INSERT INTO `base_email` VALUES ('test_46', 'test_46@test.test', '52');
INSERT INTO `base_email` VALUES ('test_47', 'test_47@test.test', '53');
INSERT INTO `base_email` VALUES ('test_48', 'test_48@test.test', '54');
INSERT INTO `base_email` VALUES ('test_49', 'test_49@test.test', '55');
INSERT INTO `base_email` VALUES ('test_50', 'test_50@test.test', '56');

-- ----------------------------
-- Table structure for `email_mailer`
-- ----------------------------
DROP TABLE IF EXISTS `email_mailer`;
CREATE TABLE `email_mailer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_email` int(11) NOT NULL,
  `id_mail` int(11) NOT NULL,
  `status` varchar(255) DEFAULT 'Ожидает',
  `created_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_mail` (`id_email`),
  KEY `email_mailer_ibfk_1` (`id_mail`),
  CONSTRAINT `email_mailer_ibfk_1` FOREIGN KEY (`id_mail`) REFERENCES `mailer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_mail` FOREIGN KEY (`id_email`) REFERENCES `base_email` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email_mailer
-- ----------------------------
INSERT INTO `email_mailer` VALUES ('376', '6', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('377', '7', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('378', '8', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('379', '9', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('380', '10', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('381', '11', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('382', '12', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('383', '13', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('384', '14', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('385', '15', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('386', '16', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('387', '17', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('388', '18', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('389', '19', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('390', '20', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('391', '21', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('392', '22', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('393', '23', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('394', '24', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('395', '25', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('396', '26', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('397', '27', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('398', '28', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('399', '29', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('401', '31', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('402', '32', '36', 'Отправленно', '2013-02-05 14:20:10', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('403', '33', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('404', '34', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('405', '35', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('406', '36', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('407', '37', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('408', '38', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('409', '39', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('410', '40', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('411', '41', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('412', '42', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('413', '43', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('414', '44', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('415', '45', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('416', '46', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('417', '47', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('418', '48', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('419', '49', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('420', '50', '36', 'Отправленно', '2013-02-05 14:20:11', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('421', '51', '36', 'Отправленно', '2013-02-05 14:20:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('422', '52', '36', 'Отправленно', '2013-02-05 14:20:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('423', '53', '36', 'Отправленно', '2013-02-05 14:20:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('424', '54', '36', 'Отправленно', '2013-02-05 14:20:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('425', '55', '36', 'Отправленно', '2013-02-05 14:20:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('426', '56', '36', 'Отправленно', '2013-02-05 14:20:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('428', '6', '37', 'Отправленно', '2013-02-05 17:01:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('430', '6', '38', 'Отправленно', '2013-02-05 17:03:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('431', '7', '38', 'Отправленно', '2013-02-05 17:03:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('432', '8', '38', 'Отправленно', '2013-02-05 17:03:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('433', '9', '38', 'Отправленно', '2013-02-05 17:03:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('434', '10', '38', 'Отправленно', '2013-02-05 17:03:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('435', '11', '38', 'Отправленно', '2013-02-05 17:03:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('436', '12', '38', 'Отправленно', '2013-02-05 17:03:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('437', '13', '38', 'Отправленно', '2013-02-05 17:03:12', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('438', '14', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('439', '15', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('440', '16', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('441', '17', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('442', '18', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('443', '19', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('444', '20', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('445', '21', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('446', '22', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('447', '23', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('448', '24', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('449', '25', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('450', '26', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('451', '27', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('452', '28', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('453', '29', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('454', '30', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('455', '31', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('456', '32', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('457', '33', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('458', '34', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('459', '35', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('460', '36', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('461', '37', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('462', '38', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('463', '39', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('464', '40', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('465', '41', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('466', '42', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('467', '43', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('468', '44', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('469', '45', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('470', '46', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('471', '47', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('472', '48', '38', 'Отправленно', '2013-02-05 17:03:13', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('473', '49', '38', 'Отправленно', '2013-02-05 17:03:14', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('474', '50', '38', 'Отправленно', '2013-02-05 17:03:14', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('475', '51', '38', 'Отправленно', '2013-02-05 17:03:14', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('476', '52', '38', 'Отправленно', '2013-02-05 17:03:14', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('477', '53', '38', 'Отправленно', '2013-02-05 17:03:14', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('478', '54', '38', 'Отправленно', '2013-02-05 17:03:14', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('479', '55', '38', 'Отправленно', '2013-02-05 17:03:14', '2013-02-05 18:31:51');
INSERT INTO `email_mailer` VALUES ('480', '56', '38', 'Отправленно', '2013-02-05 17:03:14', '2013-02-05 18:31:51');

-- ----------------------------
-- Table structure for `mailer`
-- ----------------------------
DROP TABLE IF EXISTS `mailer`;
CREATE TABLE `mailer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `body` varchar(10240) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mailer
-- ----------------------------
INSERT INTO `mailer` VALUES ('29', 'fdg', 'dfg');
INSERT INTO `mailer` VALUES ('30', 'fdg', 'dfg');
INSERT INTO `mailer` VALUES ('31', 'fdg', 'dfg');
INSERT INTO `mailer` VALUES ('32', 'fdg', 'dfg');
INSERT INTO `mailer` VALUES ('33', 'fg', 'dfg');
INSERT INTO `mailer` VALUES ('34', 'test', 'test');
INSERT INTO `mailer` VALUES ('35', 'fdg', 'dfg');
INSERT INTO `mailer` VALUES ('36', 'dsf', 'sdf');
INSERT INTO `mailer` VALUES ('37', 'as', 'sa');
INSERT INTO `mailer` VALUES ('38', 'dfdd', 'ddd');
