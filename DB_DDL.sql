/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : test1

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 28/02/2018 08:27:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for application_library
-- ----------------------------
DROP TABLE IF EXISTS `application_library`;
CREATE TABLE `application_library`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `vote` tinyint(4) DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of application_library
-- ----------------------------
INSERT INTO `application_library` VALUES (1, 'EthSample', 'Nick Dodson', 'A set of example dApps and apps using ethjs.', 'Application', 'Ethereum', 5, NULL, 'icon4.jpg');
INSERT INTO `application_library` VALUES (2, 'Sample16', 'Japan Labs', 'Overview Sample1 Sample1 SDample1 Sample1 Sample1', 'Application', 'HyperLedger', 1, NULL, 'icon3.jpg');
INSERT INTO `application_library` VALUES (3, 'EthSample6', 'Nick Dodson', 'A set of example dApps and apps using ethjs.', 'Application', 'Ethereum', 5, NULL, 'icon4.jpg');
INSERT INTO `application_library` VALUES (4, 'EthSample4', 'Nick Dodson', 'A set of example dApps and apps using ethjs.', 'Application', 'Ethereum', 5, NULL, 'icon4.jpg');
INSERT INTO `application_library` VALUES (5, 'Sample13', 'Japan Labs', 'Overview Sample1 Sample1 Sample1 Sample1 Sample1', 'Application', 'Hyperledger', 1, NULL, 'icon3.jpg');
INSERT INTO `application_library` VALUES (6, 'Sample12', 'Japan Labs', 'Overview Sample1 Sample1 Sample1 Sample1 Sample1', 'Application', 'Hyperledger', 1, NULL, 'icon3.jpg');
INSERT INTO `application_library` VALUES (7, 'Sample11', 'Japan Labs', 'Overview Sample1 Sample1 Sample1 Sample1 Sample1', 'Application', 'Hyperledger', 1, NULL, 'icon3.jpg');
INSERT INTO `application_library` VALUES (8, 'Sample32', 'Sample3', 'Overview', 'Developer Tool', 'Others', 1, NULL, 'icon5.jpg');
INSERT INTO `application_library` VALUES (9, 'Sample31', 'Sample3', 'Overview', 'Developer Tool', 'Others', 1, NULL, 'icon5.jpg');
INSERT INTO `application_library` VALUES (10, 'Sample4', 'Sample4', 'Overview', 'Developer Service', 'Multichain', 2, NULL, 'icon2.jpg');
INSERT INTO `application_library` VALUES (11, 'EthSample3', 'Nick Dodson', 'A set of example dApps and apps using ethjs.', 'Application', 'Ethereum', 5, NULL, 'icon4.jpg');
INSERT INTO `application_library` VALUES (12, 'EthSample2', 'Nick Dodson', 'A set of example dApps and Apps using ethjs.', 'Application', 'Ethereum', 5, NULL, 'icon4.jpg');
INSERT INTO `application_library` VALUES (13, 'Sample5', 'Sample5', 'Overview', 'Developer Service', 'Others', 3, NULL, 'icon2.jpg');
INSERT INTO `application_library` VALUES (14, 'Sample5', 'Sample5', 'Overview', 'Developer Service', 'Others', 3, NULL, 'icon2.jpg');
INSERT INTO `application_library` VALUES (15, 'Sample5', 'Sample5', 'Overview', 'Developer Service', 'Others', 3, NULL, 'icon2.jpg');
INSERT INTO `application_library` VALUES (16, 'Sample4', 'Sample4', 'Overview', 'Developer Service', 'Multichain', 2, NULL, 'icon1.jpg');
INSERT INTO `application_library` VALUES (17, 'Sample3', 'Sample3', 'Overview', 'Developer Tool', 'Others', 1, NULL, 'icon5.jpg');
INSERT INTO `application_library` VALUES (18, 'Sample1', 'Japan Labs', 'Overview Sample1 Sample1 Sample1 Sample1 Sample1', 'Application', 'Hyperledger', 1, NULL, 'icon3.jpg');
INSERT INTO `application_library` VALUES (19, 'Sample2', 'IBM A', 'Overview', 'Developer Tool', 'Ethereum', 2, NULL, 'icon6.jpg');

SET FOREIGN_KEY_CHECKS = 1;
