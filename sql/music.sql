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

 Date: 27/12/2024 08:34:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `music_like` int(0) NULL DEFAULT NULL,
  `music_not_like` int(0) NULL DEFAULT NULL,
  `music_png` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `music_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES (1, '李白', 30, 19, 'http://localhost:8080/images/musicPng/123.png', 'http://localhost:8080/music/160.mp3');
INSERT INTO `music` VALUES (2, 'sugars', 5, 9, 'http://localhost:8080/images/musicPng/123.png', 'http://localhost:8080/music/160.mp3');
INSERT INTO `music` VALUES (7, '将进酒', 22, 20, 'http://localhost:8080/images/musicPng/123.png', 'http://localhost:8080/music/160.mp3');
INSERT INTO `music` VALUES (8, 'ABC', 11, 3, 'http://localhost:8080/images/musicPng/123.png', 'http://localhost:8080/music/160.mp3');
INSERT INTO `music` VALUES (9, '阳光彩虹小白马', 50, 4, 'http://localhost:8080/images/musicPng/123.png', 'http://localhost:8080/music/160.mp3');
INSERT INTO `music` VALUES (10, '将进酒', 16, 6, 'http://localhost:8080/images/musicPng/123.png', 'http://localhost:8080/music/160.mp3');
INSERT INTO `music` VALUES (21, '10', 5, 5, 'http://localhost:8080/images/musicPng/123.png', 'http://localhost:8080/music/160.mp3');
INSERT INTO `music` VALUES (22, '66', 6, 6, 'http://localhost:8080/images/musicPng/123.png', 'http://localhost:8080/music/161.mp3');
INSERT INTO `music` VALUES (23, '9999', 9, 9, 'http://localhost:8080/images/musicPng/abcd5.png?v=1735029718467', 'http://localhost:8080/music/1735029718467160.mp3?v=1735029718482');
INSERT INTO `music` VALUES (24, '20', 5, 5, 'http://localhost:8080/images/musicPng/1.png?v=1735093674738', 'http://localhost:8080/music/1610336364110.mp3?v=1735093674753');

SET FOREIGN_KEY_CHECKS = 1;
