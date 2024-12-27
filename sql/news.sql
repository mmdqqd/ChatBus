/*
 Navicat Premium Data Transfer

 Source Server         : pjx
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : user_db

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 27/12/2024 08:34:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `neibie` enum('电影','音乐','建议') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user_entity` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (8, '555', NULL, '管理员留言内容。66', 'admin1@example.com', '0987654321', '2024-12-18 10:15:45', '2024-12-22 01:40:41', '音乐', NULL);
INSERT INTO `news` VALUES (9, 'admin', 'http://localhost:8080/images/moviePng/abc.png', '44444', 'user123@example.com', '1234567890', '2024-12-18 10:16:18', '2024-12-22 09:09:11', '电影', '电影');
INSERT INTO `news` VALUES (10, 'user', 'http://localhost:8080/images/moviePng/abc.png', '66。', 'admin1@example.com', '0987654321', '2024-12-18 10:16:18', '2024-12-19 10:33:27', '建议', '建议');
INSERT INTO `news` VALUES (11, '777', 'http://localhost:8080/images/moviePng/abc.png', '555', 'user123@example.com', '1234567890', '2024-12-18 10:16:25', '2024-12-22 09:09:11', '音乐', '音乐');
INSERT INTO `news` VALUES (13, '333', NULL, '什么意思111', '17821312@qq.com', '1235124111', '2024-12-17 19:24:23', '2024-12-22 01:11:39', '电影', NULL);
INSERT INTO `news` VALUES (19, '333', NULL, '测试3', '123456@11', '123456666666666666666', '2024-12-22 01:08:24', '2024-12-22 01:12:17', '电影', NULL);
INSERT INTO `news` VALUES (20, '333', NULL, '测试', '123456@11', '1111111111111', '2024-12-23 02:19:44', '2024-12-23 02:19:44', '建议', NULL);
INSERT INTO `news` VALUES (21, '333', NULL, '555555555', '55555555@qq', '55555555', '2024-12-26 09:21:19', '2024-12-26 09:21:19', '电影', NULL);

SET FOREIGN_KEY_CHECKS = 1;
