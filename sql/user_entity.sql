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

 Date: 27/12/2024 08:34:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_entity
-- ----------------------------
DROP TABLE IF EXISTS `user_entity`;
CREATE TABLE `user_entity`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_entity
-- ----------------------------
INSERT INTO `user_entity` VALUES (2, '$2a$10$C3XnNLVE0vP9yNVH9tuC8.0R5DyasHjee2iGUwK0UDMelGTjdvpxW', 'ADMIN', 'admin');
INSERT INTO `user_entity` VALUES (3, '$2a$10$MKhG.UvL9jtp10TF9xe4YuTVb5VzXdxCJdccJscTPXsq.eVjS5V22', 'USER', 'user');
INSERT INTO `user_entity` VALUES (4, '$2a$10$bzPzAWKHeZKJkehyI.I0X.FyH2k34vxmhl4/j49BlLCUq.f5uPX/q', 'ADMIN', '333');
INSERT INTO `user_entity` VALUES (15, '$2a$10$8OFob5n.neZmNOIkPUkrluG.ZX2P0HgN7pLMDmLkaVcoJ996zYS2u', 'USER', '555');
INSERT INTO `user_entity` VALUES (16, '$2a$10$GbKr7KEzaDMMkr4MijOASub0hx21g5SoGb2hQtSFv5.TKkiQm7q5i', 'USER', '777');
INSERT INTO `user_entity` VALUES (17, '$2a$10$/amDjYIw29YP.j7C49Pp1OtJt5NVpA07LmBYK/C6dKc5n4B3DXCXC', 'ADMIN', '888');

SET FOREIGN_KEY_CHECKS = 1;
