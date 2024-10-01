/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : crowdfunding_db

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 28/09/2024 22:19:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fund_raiser
-- ----------------------------
DROP TABLE IF EXISTS `fund_raiser`;
CREATE TABLE `fund_raiser`  (
  `FUNDRAISER_ID` int NOT NULL,
  `TARGET_FUNDING` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `GURRENT_FUNDING` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CATEGORY_ID` int NULL DEFAULT NULL,
  `ORGANIZER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TITLE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ACTIVITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`FUNDRAISER_ID`) USING BTREE,
  INDEX `cheak`(`CATEGORY_ID` ASC) USING BTREE,
  CONSTRAINT `cheak` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `types` (`CATEGORY_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fund_raiser
-- ----------------------------
INSERT INTO `fund_raiser` VALUES (1, '800', '400', 'Beijing', 1, 'Aaron', 'Save wild animals', 'active');
INSERT INTO `fund_raiser` VALUES (2, '1000', '1000', 'Beijing', 2, 'Health', 'Rescue refugees', 'suspend');
INSERT INTO `fund_raiser` VALUES (3, '2800', '260', 'Zhengzhou', 3, 'Water and habitat', 'Provide refugee housing', 'active');
INSERT INTO `fund_raiser` VALUES (4, '620', '160', 'Hangzhou', 2, 'Reuniting families', 'Provide medical conditions', 'active');
INSERT INTO `fund_raiser` VALUES (5, '80', '10', 'Shenzhen', 2, 'Protecting civilians', 'Provide spiritual assistance', 'active');
INSERT INTO `fund_raiser` VALUES (6, '200', '58', 'Shenzhen', 1, 'Visiting detainees', 'Assisting homeless people', 'active');
INSERT INTO `fund_raiser` VALUES (7, '720', '70', 'Shenzhen', 1, 'Safeguarding health care', 'Rescue Monkey', 'active');
INSERT INTO `fund_raiser` VALUES (8, '840', '510', 'Shenzhen', 2, 'Ensuring econpmic security', 'Provide food for refugees', 'active');
INSERT INTO `fund_raiser` VALUES (9, '990', '800', 'Shenzhen', 3, 'Building respect for the law', 'Save wild plants', 'active');
INSERT INTO `fund_raiser` VALUES (10, '570', '400', 'Shenzhen', 2, 'Food and Agriculture', 'charities', 'active');

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `CATEGORY_ID` int NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (1, 'medical treatment');
INSERT INTO `types` VALUES (2, 'education');
INSERT INTO `types` VALUES (3, 'social influence ');

SET FOREIGN_KEY_CHECKS = 1;
