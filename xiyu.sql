/*
 Navicat Premium Data Transfer

 Source Server         : localhiost
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : xiyu

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 26/04/2020 23:15:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
INSERT INTO `auth_group` VALUES (5, '后勤部');
INSERT INTO `auth_group` VALUES (6, '客户管理部');
INSERT INTO `auth_group` VALUES (1, '总经办');
INSERT INTO `auth_group` VALUES (3, '技师部——助浴');
INSERT INTO `auth_group` VALUES (2, '技师部——按摩');
INSERT INTO `auth_group` VALUES (7, '营销部');
INSERT INTO `auth_group` VALUES (4, '财务部');
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
INSERT INTO `auth_group_permissions` VALUES (78, 1, 1);
INSERT INTO `auth_group_permissions` VALUES (79, 1, 2);
INSERT INTO `auth_group_permissions` VALUES (80, 1, 3);
INSERT INTO `auth_group_permissions` VALUES (81, 1, 4);
INSERT INTO `auth_group_permissions` VALUES (82, 1, 5);
INSERT INTO `auth_group_permissions` VALUES (83, 1, 6);
INSERT INTO `auth_group_permissions` VALUES (84, 1, 7);
INSERT INTO `auth_group_permissions` VALUES (85, 1, 8);
INSERT INTO `auth_group_permissions` VALUES (86, 1, 9);
INSERT INTO `auth_group_permissions` VALUES (87, 1, 10);
INSERT INTO `auth_group_permissions` VALUES (88, 1, 11);
INSERT INTO `auth_group_permissions` VALUES (89, 1, 12);
INSERT INTO `auth_group_permissions` VALUES (90, 1, 13);
INSERT INTO `auth_group_permissions` VALUES (91, 1, 14);
INSERT INTO `auth_group_permissions` VALUES (92, 1, 15);
INSERT INTO `auth_group_permissions` VALUES (93, 1, 16);
INSERT INTO `auth_group_permissions` VALUES (94, 1, 17);
INSERT INTO `auth_group_permissions` VALUES (95, 1, 18);
INSERT INTO `auth_group_permissions` VALUES (96, 1, 19);
INSERT INTO `auth_group_permissions` VALUES (97, 1, 20);
INSERT INTO `auth_group_permissions` VALUES (98, 1, 21);
INSERT INTO `auth_group_permissions` VALUES (99, 1, 22);
INSERT INTO `auth_group_permissions` VALUES (100, 1, 23);
INSERT INTO `auth_group_permissions` VALUES (101, 1, 24);
INSERT INTO `auth_group_permissions` VALUES (102, 1, 25);
INSERT INTO `auth_group_permissions` VALUES (103, 1, 26);
INSERT INTO `auth_group_permissions` VALUES (104, 1, 27);
INSERT INTO `auth_group_permissions` VALUES (105, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (106, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (107, 1, 30);
INSERT INTO `auth_group_permissions` VALUES (108, 1, 31);
INSERT INTO `auth_group_permissions` VALUES (109, 1, 32);
INSERT INTO `auth_group_permissions` VALUES (110, 1, 33);
INSERT INTO `auth_group_permissions` VALUES (111, 1, 34);
INSERT INTO `auth_group_permissions` VALUES (112, 1, 35);
INSERT INTO `auth_group_permissions` VALUES (113, 1, 36);
INSERT INTO `auth_group_permissions` VALUES (114, 1, 37);
INSERT INTO `auth_group_permissions` VALUES (115, 1, 38);
INSERT INTO `auth_group_permissions` VALUES (116, 1, 39);
INSERT INTO `auth_group_permissions` VALUES (117, 1, 40);
INSERT INTO `auth_group_permissions` VALUES (118, 1, 41);
INSERT INTO `auth_group_permissions` VALUES (119, 1, 42);
INSERT INTO `auth_group_permissions` VALUES (120, 1, 43);
INSERT INTO `auth_group_permissions` VALUES (121, 1, 44);
INSERT INTO `auth_group_permissions` VALUES (122, 1, 45);
INSERT INTO `auth_group_permissions` VALUES (123, 1, 46);
INSERT INTO `auth_group_permissions` VALUES (124, 1, 47);
INSERT INTO `auth_group_permissions` VALUES (125, 1, 48);
INSERT INTO `auth_group_permissions` VALUES (126, 1, 49);
INSERT INTO `auth_group_permissions` VALUES (127, 1, 50);
INSERT INTO `auth_group_permissions` VALUES (128, 1, 51);
INSERT INTO `auth_group_permissions` VALUES (129, 1, 52);
INSERT INTO `auth_group_permissions` VALUES (130, 1, 53);
INSERT INTO `auth_group_permissions` VALUES (131, 1, 54);
INSERT INTO `auth_group_permissions` VALUES (132, 1, 55);
INSERT INTO `auth_group_permissions` VALUES (133, 1, 56);
INSERT INTO `auth_group_permissions` VALUES (134, 1, 57);
INSERT INTO `auth_group_permissions` VALUES (135, 1, 58);
INSERT INTO `auth_group_permissions` VALUES (136, 1, 59);
INSERT INTO `auth_group_permissions` VALUES (137, 1, 60);
INSERT INTO `auth_group_permissions` VALUES (138, 1, 61);
INSERT INTO `auth_group_permissions` VALUES (139, 1, 62);
INSERT INTO `auth_group_permissions` VALUES (140, 1, 63);
INSERT INTO `auth_group_permissions` VALUES (141, 1, 64);
INSERT INTO `auth_group_permissions` VALUES (142, 1, 65);
INSERT INTO `auth_group_permissions` VALUES (143, 1, 66);
INSERT INTO `auth_group_permissions` VALUES (144, 1, 67);
INSERT INTO `auth_group_permissions` VALUES (145, 1, 68);
INSERT INTO `auth_group_permissions` VALUES (146, 1, 69);
INSERT INTO `auth_group_permissions` VALUES (147, 1, 70);
INSERT INTO `auth_group_permissions` VALUES (148, 1, 71);
INSERT INTO `auth_group_permissions` VALUES (149, 1, 72);
INSERT INTO `auth_group_permissions` VALUES (150, 1, 73);
INSERT INTO `auth_group_permissions` VALUES (151, 1, 74);
INSERT INTO `auth_group_permissions` VALUES (152, 1, 75);
INSERT INTO `auth_group_permissions` VALUES (153, 1, 76);
INSERT INTO `auth_group_permissions` VALUES (154, 1, 77);
INSERT INTO `auth_group_permissions` VALUES (155, 1, 78);
INSERT INTO `auth_group_permissions` VALUES (156, 1, 79);
INSERT INTO `auth_group_permissions` VALUES (157, 1, 80);
INSERT INTO `auth_group_permissions` VALUES (158, 1, 81);
INSERT INTO `auth_group_permissions` VALUES (159, 1, 82);
INSERT INTO `auth_group_permissions` VALUES (160, 1, 83);
INSERT INTO `auth_group_permissions` VALUES (161, 1, 84);
INSERT INTO `auth_group_permissions` VALUES (162, 1, 85);
INSERT INTO `auth_group_permissions` VALUES (163, 1, 86);
INSERT INTO `auth_group_permissions` VALUES (164, 1, 87);
INSERT INTO `auth_group_permissions` VALUES (165, 1, 88);
INSERT INTO `auth_group_permissions` VALUES (166, 1, 89);
INSERT INTO `auth_group_permissions` VALUES (167, 1, 90);
INSERT INTO `auth_group_permissions` VALUES (168, 1, 91);
INSERT INTO `auth_group_permissions` VALUES (169, 1, 92);
INSERT INTO `auth_group_permissions` VALUES (170, 1, 93);
INSERT INTO `auth_group_permissions` VALUES (232, 2, 1);
INSERT INTO `auth_group_permissions` VALUES (233, 2, 2);
INSERT INTO `auth_group_permissions` VALUES (234, 2, 3);
INSERT INTO `auth_group_permissions` VALUES (235, 2, 4);
INSERT INTO `auth_group_permissions` VALUES (236, 2, 17);
INSERT INTO `auth_group_permissions` VALUES (237, 2, 18);
INSERT INTO `auth_group_permissions` VALUES (238, 2, 19);
INSERT INTO `auth_group_permissions` VALUES (239, 2, 20);
INSERT INTO `auth_group_permissions` VALUES (240, 2, 21);
INSERT INTO `auth_group_permissions` VALUES (241, 2, 22);
INSERT INTO `auth_group_permissions` VALUES (242, 2, 23);
INSERT INTO `auth_group_permissions` VALUES (243, 2, 24);
INSERT INTO `auth_group_permissions` VALUES (244, 2, 33);
INSERT INTO `auth_group_permissions` VALUES (245, 2, 34);
INSERT INTO `auth_group_permissions` VALUES (246, 2, 35);
INSERT INTO `auth_group_permissions` VALUES (247, 2, 36);
INSERT INTO `auth_group_permissions` VALUES (248, 2, 37);
INSERT INTO `auth_group_permissions` VALUES (249, 2, 42);
INSERT INTO `auth_group_permissions` VALUES (250, 2, 43);
INSERT INTO `auth_group_permissions` VALUES (252, 2, 45);
INSERT INTO `auth_group_permissions` VALUES (253, 2, 54);
INSERT INTO `auth_group_permissions` VALUES (254, 2, 55);
INSERT INTO `auth_group_permissions` VALUES (255, 2, 56);
INSERT INTO `auth_group_permissions` VALUES (256, 2, 57);
INSERT INTO `auth_group_permissions` VALUES (402, 2, 58);
INSERT INTO `auth_group_permissions` VALUES (403, 2, 59);
INSERT INTO `auth_group_permissions` VALUES (404, 2, 60);
INSERT INTO `auth_group_permissions` VALUES (260, 2, 61);
INSERT INTO `auth_group_permissions` VALUES (261, 2, 70);
INSERT INTO `auth_group_permissions` VALUES (262, 2, 71);
INSERT INTO `auth_group_permissions` VALUES (263, 2, 72);
INSERT INTO `auth_group_permissions` VALUES (264, 2, 73);
INSERT INTO `auth_group_permissions` VALUES (265, 2, 74);
INSERT INTO `auth_group_permissions` VALUES (266, 2, 75);
INSERT INTO `auth_group_permissions` VALUES (267, 2, 76);
INSERT INTO `auth_group_permissions` VALUES (268, 2, 77);
INSERT INTO `auth_group_permissions` VALUES (269, 2, 78);
INSERT INTO `auth_group_permissions` VALUES (270, 2, 79);
INSERT INTO `auth_group_permissions` VALUES (271, 2, 80);
INSERT INTO `auth_group_permissions` VALUES (272, 2, 81);
INSERT INTO `auth_group_permissions` VALUES (399, 2, 86);
INSERT INTO `auth_group_permissions` VALUES (400, 2, 87);
INSERT INTO `auth_group_permissions` VALUES (401, 2, 88);
INSERT INTO `auth_group_permissions` VALUES (276, 2, 89);
INSERT INTO `auth_group_permissions` VALUES (171, 3, 1);
INSERT INTO `auth_group_permissions` VALUES (172, 3, 2);
INSERT INTO `auth_group_permissions` VALUES (173, 3, 3);
INSERT INTO `auth_group_permissions` VALUES (174, 3, 4);
INSERT INTO `auth_group_permissions` VALUES (277, 3, 17);
INSERT INTO `auth_group_permissions` VALUES (278, 3, 18);
INSERT INTO `auth_group_permissions` VALUES (279, 3, 19);
INSERT INTO `auth_group_permissions` VALUES (280, 3, 20);
INSERT INTO `auth_group_permissions` VALUES (187, 3, 21);
INSERT INTO `auth_group_permissions` VALUES (188, 3, 22);
INSERT INTO `auth_group_permissions` VALUES (189, 3, 23);
INSERT INTO `auth_group_permissions` VALUES (190, 3, 24);
INSERT INTO `auth_group_permissions` VALUES (195, 3, 33);
INSERT INTO `auth_group_permissions` VALUES (196, 3, 34);
INSERT INTO `auth_group_permissions` VALUES (197, 3, 35);
INSERT INTO `auth_group_permissions` VALUES (198, 3, 36);
INSERT INTO `auth_group_permissions` VALUES (199, 3, 37);
INSERT INTO `auth_group_permissions` VALUES (200, 3, 42);
INSERT INTO `auth_group_permissions` VALUES (201, 3, 43);
INSERT INTO `auth_group_permissions` VALUES (203, 3, 45);
INSERT INTO `auth_group_permissions` VALUES (204, 3, 54);
INSERT INTO `auth_group_permissions` VALUES (205, 3, 55);
INSERT INTO `auth_group_permissions` VALUES (206, 3, 56);
INSERT INTO `auth_group_permissions` VALUES (207, 3, 57);
INSERT INTO `auth_group_permissions` VALUES (208, 3, 58);
INSERT INTO `auth_group_permissions` VALUES (209, 3, 59);
INSERT INTO `auth_group_permissions` VALUES (210, 3, 60);
INSERT INTO `auth_group_permissions` VALUES (211, 3, 61);
INSERT INTO `auth_group_permissions` VALUES (216, 3, 70);
INSERT INTO `auth_group_permissions` VALUES (217, 3, 71);
INSERT INTO `auth_group_permissions` VALUES (218, 3, 72);
INSERT INTO `auth_group_permissions` VALUES (219, 3, 73);
INSERT INTO `auth_group_permissions` VALUES (220, 3, 74);
INSERT INTO `auth_group_permissions` VALUES (221, 3, 75);
INSERT INTO `auth_group_permissions` VALUES (222, 3, 76);
INSERT INTO `auth_group_permissions` VALUES (223, 3, 77);
INSERT INTO `auth_group_permissions` VALUES (224, 3, 78);
INSERT INTO `auth_group_permissions` VALUES (225, 3, 79);
INSERT INTO `auth_group_permissions` VALUES (226, 3, 80);
INSERT INTO `auth_group_permissions` VALUES (227, 3, 81);
INSERT INTO `auth_group_permissions` VALUES (228, 3, 86);
INSERT INTO `auth_group_permissions` VALUES (229, 3, 87);
INSERT INTO `auth_group_permissions` VALUES (230, 3, 88);
INSERT INTO `auth_group_permissions` VALUES (231, 3, 89);
INSERT INTO `auth_group_permissions` VALUES (310, 4, 1);
INSERT INTO `auth_group_permissions` VALUES (311, 4, 2);
INSERT INTO `auth_group_permissions` VALUES (312, 4, 3);
INSERT INTO `auth_group_permissions` VALUES (313, 4, 4);
INSERT INTO `auth_group_permissions` VALUES (314, 4, 17);
INSERT INTO `auth_group_permissions` VALUES (315, 4, 18);
INSERT INTO `auth_group_permissions` VALUES (316, 4, 19);
INSERT INTO `auth_group_permissions` VALUES (317, 4, 20);
INSERT INTO `auth_group_permissions` VALUES (318, 4, 21);
INSERT INTO `auth_group_permissions` VALUES (319, 4, 22);
INSERT INTO `auth_group_permissions` VALUES (320, 4, 23);
INSERT INTO `auth_group_permissions` VALUES (321, 4, 24);
INSERT INTO `auth_group_permissions` VALUES (322, 4, 33);
INSERT INTO `auth_group_permissions` VALUES (323, 4, 34);
INSERT INTO `auth_group_permissions` VALUES (324, 4, 35);
INSERT INTO `auth_group_permissions` VALUES (325, 4, 36);
INSERT INTO `auth_group_permissions` VALUES (326, 4, 37);
INSERT INTO `auth_group_permissions` VALUES (327, 4, 38);
INSERT INTO `auth_group_permissions` VALUES (328, 4, 39);
INSERT INTO `auth_group_permissions` VALUES (329, 4, 40);
INSERT INTO `auth_group_permissions` VALUES (330, 4, 41);
INSERT INTO `auth_group_permissions` VALUES (331, 4, 42);
INSERT INTO `auth_group_permissions` VALUES (332, 4, 43);
INSERT INTO `auth_group_permissions` VALUES (333, 4, 44);
INSERT INTO `auth_group_permissions` VALUES (334, 4, 45);
INSERT INTO `auth_group_permissions` VALUES (335, 4, 46);
INSERT INTO `auth_group_permissions` VALUES (336, 4, 47);
INSERT INTO `auth_group_permissions` VALUES (337, 4, 48);
INSERT INTO `auth_group_permissions` VALUES (338, 4, 49);
INSERT INTO `auth_group_permissions` VALUES (339, 4, 58);
INSERT INTO `auth_group_permissions` VALUES (340, 4, 59);
INSERT INTO `auth_group_permissions` VALUES (341, 4, 60);
INSERT INTO `auth_group_permissions` VALUES (342, 4, 61);
INSERT INTO `auth_group_permissions` VALUES (343, 4, 62);
INSERT INTO `auth_group_permissions` VALUES (344, 4, 63);
INSERT INTO `auth_group_permissions` VALUES (345, 4, 64);
INSERT INTO `auth_group_permissions` VALUES (346, 4, 65);
INSERT INTO `auth_group_permissions` VALUES (347, 4, 66);
INSERT INTO `auth_group_permissions` VALUES (348, 4, 67);
INSERT INTO `auth_group_permissions` VALUES (349, 4, 68);
INSERT INTO `auth_group_permissions` VALUES (350, 4, 69);
INSERT INTO `auth_group_permissions` VALUES (351, 4, 74);
INSERT INTO `auth_group_permissions` VALUES (352, 4, 75);
INSERT INTO `auth_group_permissions` VALUES (353, 4, 76);
INSERT INTO `auth_group_permissions` VALUES (354, 4, 77);
INSERT INTO `auth_group_permissions` VALUES (355, 4, 82);
INSERT INTO `auth_group_permissions` VALUES (356, 4, 83);
INSERT INTO `auth_group_permissions` VALUES (357, 4, 84);
INSERT INTO `auth_group_permissions` VALUES (358, 4, 85);
INSERT INTO `auth_group_permissions` VALUES (359, 4, 86);
INSERT INTO `auth_group_permissions` VALUES (360, 4, 87);
INSERT INTO `auth_group_permissions` VALUES (361, 4, 88);
INSERT INTO `auth_group_permissions` VALUES (362, 4, 89);
INSERT INTO `auth_group_permissions` VALUES (363, 4, 90);
INSERT INTO `auth_group_permissions` VALUES (364, 4, 91);
INSERT INTO `auth_group_permissions` VALUES (365, 4, 92);
INSERT INTO `auth_group_permissions` VALUES (366, 4, 93);
INSERT INTO `auth_group_permissions` VALUES (415, 4, 94);
INSERT INTO `auth_group_permissions` VALUES (416, 4, 95);
INSERT INTO `auth_group_permissions` VALUES (413, 4, 96);
INSERT INTO `auth_group_permissions` VALUES (414, 4, 97);
INSERT INTO `auth_group_permissions` VALUES (33, 5, 1);
INSERT INTO `auth_group_permissions` VALUES (34, 5, 2);
INSERT INTO `auth_group_permissions` VALUES (35, 5, 3);
INSERT INTO `auth_group_permissions` VALUES (36, 5, 4);
INSERT INTO `auth_group_permissions` VALUES (37, 5, 5);
INSERT INTO `auth_group_permissions` VALUES (38, 5, 6);
INSERT INTO `auth_group_permissions` VALUES (39, 5, 7);
INSERT INTO `auth_group_permissions` VALUES (40, 5, 8);
INSERT INTO `auth_group_permissions` VALUES (41, 5, 9);
INSERT INTO `auth_group_permissions` VALUES (42, 5, 10);
INSERT INTO `auth_group_permissions` VALUES (43, 5, 11);
INSERT INTO `auth_group_permissions` VALUES (44, 5, 12);
INSERT INTO `auth_group_permissions` VALUES (45, 5, 13);
INSERT INTO `auth_group_permissions` VALUES (46, 5, 14);
INSERT INTO `auth_group_permissions` VALUES (47, 5, 15);
INSERT INTO `auth_group_permissions` VALUES (48, 5, 16);
INSERT INTO `auth_group_permissions` VALUES (49, 5, 17);
INSERT INTO `auth_group_permissions` VALUES (50, 5, 18);
INSERT INTO `auth_group_permissions` VALUES (51, 5, 19);
INSERT INTO `auth_group_permissions` VALUES (52, 5, 20);
INSERT INTO `auth_group_permissions` VALUES (375, 5, 21);
INSERT INTO `auth_group_permissions` VALUES (376, 5, 22);
INSERT INTO `auth_group_permissions` VALUES (377, 5, 23);
INSERT INTO `auth_group_permissions` VALUES (378, 5, 24);
INSERT INTO `auth_group_permissions` VALUES (406, 5, 34);
INSERT INTO `auth_group_permissions` VALUES (407, 5, 35);
INSERT INTO `auth_group_permissions` VALUES (408, 5, 36);
INSERT INTO `auth_group_permissions` VALUES (409, 5, 37);
INSERT INTO `auth_group_permissions` VALUES (367, 5, 42);
INSERT INTO `auth_group_permissions` VALUES (368, 5, 43);
INSERT INTO `auth_group_permissions` VALUES (369, 5, 44);
INSERT INTO `auth_group_permissions` VALUES (370, 5, 45);
INSERT INTO `auth_group_permissions` VALUES (371, 5, 50);
INSERT INTO `auth_group_permissions` VALUES (372, 5, 51);
INSERT INTO `auth_group_permissions` VALUES (373, 5, 52);
INSERT INTO `auth_group_permissions` VALUES (374, 5, 53);
INSERT INTO `auth_group_permissions` VALUES (410, 5, 75);
INSERT INTO `auth_group_permissions` VALUES (411, 5, 76);
INSERT INTO `auth_group_permissions` VALUES (412, 5, 77);
INSERT INTO `auth_group_permissions` VALUES (53, 6, 1);
INSERT INTO `auth_group_permissions` VALUES (54, 6, 2);
INSERT INTO `auth_group_permissions` VALUES (55, 6, 3);
INSERT INTO `auth_group_permissions` VALUES (56, 6, 4);
INSERT INTO `auth_group_permissions` VALUES (379, 6, 8);
INSERT INTO `auth_group_permissions` VALUES (380, 6, 12);
INSERT INTO `auth_group_permissions` VALUES (381, 6, 16);
INSERT INTO `auth_group_permissions` VALUES (382, 6, 17);
INSERT INTO `auth_group_permissions` VALUES (383, 6, 18);
INSERT INTO `auth_group_permissions` VALUES (384, 6, 19);
INSERT INTO `auth_group_permissions` VALUES (385, 6, 20);
INSERT INTO `auth_group_permissions` VALUES (57, 6, 21);
INSERT INTO `auth_group_permissions` VALUES (58, 6, 22);
INSERT INTO `auth_group_permissions` VALUES (59, 6, 23);
INSERT INTO `auth_group_permissions` VALUES (60, 6, 24);
INSERT INTO `auth_group_permissions` VALUES (61, 6, 25);
INSERT INTO `auth_group_permissions` VALUES (62, 6, 26);
INSERT INTO `auth_group_permissions` VALUES (63, 6, 27);
INSERT INTO `auth_group_permissions` VALUES (64, 6, 28);
INSERT INTO `auth_group_permissions` VALUES (386, 6, 32);
INSERT INTO `auth_group_permissions` VALUES (65, 6, 33);
INSERT INTO `auth_group_permissions` VALUES (387, 6, 37);
INSERT INTO `auth_group_permissions` VALUES (66, 6, 38);
INSERT INTO `auth_group_permissions` VALUES (67, 6, 39);
INSERT INTO `auth_group_permissions` VALUES (68, 6, 40);
INSERT INTO `auth_group_permissions` VALUES (69, 6, 41);
INSERT INTO `auth_group_permissions` VALUES (70, 6, 42);
INSERT INTO `auth_group_permissions` VALUES (71, 6, 43);
INSERT INTO `auth_group_permissions` VALUES (72, 6, 44);
INSERT INTO `auth_group_permissions` VALUES (73, 6, 45);
INSERT INTO `auth_group_permissions` VALUES (388, 6, 49);
INSERT INTO `auth_group_permissions` VALUES (389, 6, 53);
INSERT INTO `auth_group_permissions` VALUES (390, 6, 58);
INSERT INTO `auth_group_permissions` VALUES (391, 6, 61);
INSERT INTO `auth_group_permissions` VALUES (392, 6, 65);
INSERT INTO `auth_group_permissions` VALUES (74, 6, 66);
INSERT INTO `auth_group_permissions` VALUES (75, 6, 67);
INSERT INTO `auth_group_permissions` VALUES (76, 6, 68);
INSERT INTO `auth_group_permissions` VALUES (77, 6, 69);
INSERT INTO `auth_group_permissions` VALUES (393, 6, 73);
INSERT INTO `auth_group_permissions` VALUES (394, 6, 77);
INSERT INTO `auth_group_permissions` VALUES (395, 6, 81);
INSERT INTO `auth_group_permissions` VALUES (396, 6, 85);
INSERT INTO `auth_group_permissions` VALUES (397, 6, 89);
INSERT INTO `auth_group_permissions` VALUES (398, 6, 93);
INSERT INTO `auth_group_permissions` VALUES (405, 6, 97);
INSERT INTO `auth_group_permissions` VALUES (281, 7, 1);
INSERT INTO `auth_group_permissions` VALUES (282, 7, 2);
INSERT INTO `auth_group_permissions` VALUES (283, 7, 3);
INSERT INTO `auth_group_permissions` VALUES (284, 7, 4);
INSERT INTO `auth_group_permissions` VALUES (285, 7, 17);
INSERT INTO `auth_group_permissions` VALUES (286, 7, 18);
INSERT INTO `auth_group_permissions` VALUES (287, 7, 19);
INSERT INTO `auth_group_permissions` VALUES (288, 7, 20);
INSERT INTO `auth_group_permissions` VALUES (289, 7, 21);
INSERT INTO `auth_group_permissions` VALUES (290, 7, 22);
INSERT INTO `auth_group_permissions` VALUES (291, 7, 23);
INSERT INTO `auth_group_permissions` VALUES (292, 7, 24);
INSERT INTO `auth_group_permissions` VALUES (293, 7, 33);
INSERT INTO `auth_group_permissions` VALUES (419, 7, 37);
INSERT INTO `auth_group_permissions` VALUES (297, 7, 41);
INSERT INTO `auth_group_permissions` VALUES (298, 7, 42);
INSERT INTO `auth_group_permissions` VALUES (299, 7, 43);
INSERT INTO `auth_group_permissions` VALUES (301, 7, 45);
INSERT INTO `auth_group_permissions` VALUES (423, 7, 49);
INSERT INTO `auth_group_permissions` VALUES (426, 7, 53);
INSERT INTO `auth_group_permissions` VALUES (427, 7, 57);
INSERT INTO `auth_group_permissions` VALUES (305, 7, 61);
INSERT INTO `auth_group_permissions` VALUES (418, 7, 65);
INSERT INTO `auth_group_permissions` VALUES (420, 7, 69);
INSERT INTO `auth_group_permissions` VALUES (421, 7, 73);
INSERT INTO `auth_group_permissions` VALUES (422, 7, 77);
INSERT INTO `auth_group_permissions` VALUES (424, 7, 81);
INSERT INTO `auth_group_permissions` VALUES (425, 7, 85);
INSERT INTO `auth_group_permissions` VALUES (309, 7, 89);
INSERT INTO `auth_group_permissions` VALUES (428, 7, 93);
INSERT INTO `auth_group_permissions` VALUES (417, 7, 97);
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add yonghu', 7, 'add_yonghu');
INSERT INTO `auth_permission` VALUES (26, 'Can change yonghu', 7, 'change_yonghu');
INSERT INTO `auth_permission` VALUES (27, 'Can delete yonghu', 7, 'delete_yonghu');
INSERT INTO `auth_permission` VALUES (28, 'Can view yonghu', 7, 'view_yonghu');
INSERT INTO `auth_permission` VALUES (29, 'Can add yonghu', 13, 'add_yonghu');
INSERT INTO `auth_permission` VALUES (30, 'Can change yonghu', 13, 'change_yonghu');
INSERT INTO `auth_permission` VALUES (31, 'Can delete yonghu', 13, 'delete_yonghu');
INSERT INTO `auth_permission` VALUES (32, 'Can view yonghu', 13, 'view_yonghu');
INSERT INTO `auth_permission` VALUES (33, '洗浴投诉/建议', 14, '@admin.register(建议) class 建议Admin(admin.ModelAdmin):     # 设置显示的字段     list_display = [\'tianxieshiji');
INSERT INTO `auth_permission` VALUES (34, 'Can add fuwuyuyue', 20, 'add_fuwuyuyue');
INSERT INTO `auth_permission` VALUES (35, 'Can change fuwuyuyue', 20, 'change_fuwuyuyue');
INSERT INTO `auth_permission` VALUES (36, 'Can delete fuwuyuyue', 20, 'delete_fuwuyuyue');
INSERT INTO `auth_permission` VALUES (37, 'Can view fuwuyuyue', 20, 'view_fuwuyuyue');
INSERT INTO `auth_permission` VALUES (38, 'Can add 会员管理', 12, 'add_会员');
INSERT INTO `auth_permission` VALUES (39, 'Can change 会员管理', 12, 'change_会员');
INSERT INTO `auth_permission` VALUES (40, 'Can delete 会员管理', 12, 'delete_会员');
INSERT INTO `auth_permission` VALUES (41, 'Can view 会员管理', 12, 'view_会员');
INSERT INTO `auth_permission` VALUES (42, 'Can add 洗浴投诉/建议', 14, 'add_建议');
INSERT INTO `auth_permission` VALUES (43, 'Can change 洗浴投诉/建议', 14, 'change_建议');
INSERT INTO `auth_permission` VALUES (44, 'Can delete 洗浴投诉/建议', 14, 'delete_建议');
INSERT INTO `auth_permission` VALUES (45, 'Can view 洗浴投诉/建议', 14, 'view_建议');
INSERT INTO `auth_permission` VALUES (46, 'Can add 开牌', 18, 'add_开牌');
INSERT INTO `auth_permission` VALUES (47, 'Can change 开牌', 18, 'change_开牌');
INSERT INTO `auth_permission` VALUES (48, 'Can delete 开牌', 18, 'delete_开牌');
INSERT INTO `auth_permission` VALUES (49, 'Can view 开牌', 18, 'view_开牌');
INSERT INTO `auth_permission` VALUES (50, 'Can add 手牌管理', 21, 'add_手牌');
INSERT INTO `auth_permission` VALUES (51, 'Can change 手牌管理', 21, 'change_手牌');
INSERT INTO `auth_permission` VALUES (52, 'Can delete 手牌管理', 21, 'delete_手牌');
INSERT INTO `auth_permission` VALUES (53, 'Can view 手牌管理', 21, 'view_手牌');
INSERT INTO `auth_permission` VALUES (54, 'Can add 技师管理', 15, 'add_技师');
INSERT INTO `auth_permission` VALUES (55, 'Can change 技师管理', 15, 'change_技师');
INSERT INTO `auth_permission` VALUES (56, 'Can delete 技师管理', 15, 'delete_技师');
INSERT INTO `auth_permission` VALUES (57, 'Can view 技师管理', 15, 'view_技师');
INSERT INTO `auth_permission` VALUES (58, 'Can add 消费账单', 17, 'add_消费');
INSERT INTO `auth_permission` VALUES (59, 'Can change 消费账单', 17, 'change_消费');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 消费账单', 17, 'delete_消费');
INSERT INTO `auth_permission` VALUES (61, 'Can view 消费账单', 17, 'view_消费');
INSERT INTO `auth_permission` VALUES (62, 'Can add 结账', 22, 'add_结账');
INSERT INTO `auth_permission` VALUES (63, 'Can change 结账', 22, 'change_结账');
INSERT INTO `auth_permission` VALUES (64, 'Can delete 结账', 22, 'delete_结账');
INSERT INTO `auth_permission` VALUES (65, 'Can view 结账', 22, 'view_结账');
INSERT INTO `auth_permission` VALUES (66, 'Can add 评价管理', 16, 'add_评价');
INSERT INTO `auth_permission` VALUES (67, 'Can change 评价管理', 16, 'change_评价');
INSERT INTO `auth_permission` VALUES (68, 'Can delete 评价管理', 16, 'delete_评价');
INSERT INTO `auth_permission` VALUES (69, 'Can view 评价管理', 16, 'view_评价');
INSERT INTO `auth_permission` VALUES (70, 'Can add 项目管理', 11, 'add_项目');
INSERT INTO `auth_permission` VALUES (71, 'Can change 项目管理', 11, 'change_项目');
INSERT INTO `auth_permission` VALUES (72, 'Can delete 项目管理', 11, 'delete_项目');
INSERT INTO `auth_permission` VALUES (73, 'Can view 项目管理', 11, 'view_项目');
INSERT INTO `auth_permission` VALUES (74, 'Can add 服务预约', 19, 'add_预约');
INSERT INTO `auth_permission` VALUES (75, 'Can change 服务预约', 19, 'change_预约');
INSERT INTO `auth_permission` VALUES (76, 'Can delete 服务预约', 19, 'delete_预约');
INSERT INTO `auth_permission` VALUES (77, 'Can view 服务预约', 19, 'view_预约');
INSERT INTO `auth_permission` VALUES (78, 'Can add 项目管理', 23, 'add_金额');
INSERT INTO `auth_permission` VALUES (79, 'Can change 项目管理', 23, 'change_金额');
INSERT INTO `auth_permission` VALUES (80, 'Can delete 项目管理', 23, 'delete_金额');
INSERT INTO `auth_permission` VALUES (81, 'Can view 项目管理', 23, 'view_金额');
INSERT INTO `auth_permission` VALUES (82, 'Can add 会员开牌', 24, 'add_会员开牌');
INSERT INTO `auth_permission` VALUES (83, 'Can change 会员开牌', 24, 'change_会员开牌');
INSERT INTO `auth_permission` VALUES (84, 'Can delete 会员开牌', 24, 'delete_会员开牌');
INSERT INTO `auth_permission` VALUES (85, 'Can view 会员开牌', 24, 'view_会员开牌');
INSERT INTO `auth_permission` VALUES (86, 'Can add 会员消费账单', 25, 'add_会员消费');
INSERT INTO `auth_permission` VALUES (87, 'Can change 会员消费账单', 25, 'change_会员消费');
INSERT INTO `auth_permission` VALUES (88, 'Can delete 会员消费账单', 25, 'delete_会员消费');
INSERT INTO `auth_permission` VALUES (89, 'Can view 会员消费账单', 25, 'view_会员消费');
INSERT INTO `auth_permission` VALUES (90, 'Can add 会员结账', 26, 'add_会员结账');
INSERT INTO `auth_permission` VALUES (91, 'Can change 会员结账', 26, 'change_会员结账');
INSERT INTO `auth_permission` VALUES (92, 'Can delete 会员结账', 26, 'delete_会员结账');
INSERT INTO `auth_permission` VALUES (93, 'Can view 会员结账', 26, 'view_会员结账');
INSERT INTO `auth_permission` VALUES (94, 'Can add 会员评价管理', 27, 'add_会员评价');
INSERT INTO `auth_permission` VALUES (95, 'Can change 会员评价管理', 27, 'change_会员评价');
INSERT INTO `auth_permission` VALUES (96, 'Can delete 会员评价管理', 27, 'delete_会员评价');
INSERT INTO `auth_permission` VALUES (97, 'Can view 会员评价管理', 27, 'view_会员评价');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$120000$xQEfjfZ76296$tnEY9Hg0zfX8oSfqXOPWSPYmDfN4qCCAu2zXf+Eh/xA=', '2020-04-25 15:55:41.125940', 1, 'Maggie', 'Maggie', 'Pei', 'suibianxiede@abc.com', 1, 1, '2020-04-09 05:48:00.000000');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$120000$Fw5BLEtTp0ZR$d+XeLwNu1mLgBR3kuOc6KOVjWWvlqmC7Ljc2q9zr1c0=', '2020-04-10 11:45:12.143753', 1, 'Daniel', 'Daniel', 'Wu', 'dianziyoujian@abc.com', 1, 1, '2020-04-09 12:44:00.000000');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$120000$MuXY3rmdpvpO$ja79KHabsQQFpqTYs1MlwaF5erRcF4ov8xnENrjBJJE=', '2020-04-22 11:38:33.589045', 0, 'Linda', 'Linda', 'Wang', 'lindayouxiang@abc.com', 1, 1, '2020-04-09 13:10:00.000000');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$150000$xEEsC5hvDT3u$kuKZUglTywyqmCCpHUQHBQDtwxw4Cws0dafOSZ2QAUo=', NULL, 0, 'Bob', 'Bob', 'liu', 'bobyoujian@abc.com', 1, 1, '2020-04-09 13:11:00.000000');
INSERT INTO `auth_user` VALUES (5, 'pbkdf2_sha256$150000$J2ULjL4PBgPt$jlAsA6pbQA1Tlut7m+zhFxXjOxnrEuKVV2rqPejb1P4=', NULL, 0, 'Hurry', 'Hurry', 'Li', 'hurryyoujian@abc.com', 1, 1, '2020-04-09 13:16:00.000000');
INSERT INTO `auth_user` VALUES (6, 'pbkdf2_sha256$120000$uhxxf1FxX9i6$b7f+WV0PnAwuFQbszJEt51IYXOS+6z5qDy858lfB0rs=', '2020-04-10 11:51:00.000000', 0, 'Cindy', 'Cindy', 'Zhao', 'cindyyoujian@abc.com', 1, 1, '2020-04-09 13:20:00.000000');
INSERT INTO `auth_user` VALUES (7, 'pbkdf2_sha256$150000$83NOMUqunL52$fn0V1UV6NB5fQ9Rb1JaqsmMKL5LiO4hKEPgqbxTnCN0=', NULL, 0, 'Jerry', 'Jerry', 'Lin', 'jerryyoujian@abc.com', 1, 1, '2020-04-09 13:22:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
BEGIN;
INSERT INTO `auth_user_groups` VALUES (2, 1, 1);
INSERT INTO `auth_user_groups` VALUES (8, 2, 6);
INSERT INTO `auth_user_groups` VALUES (3, 3, 2);
INSERT INTO `auth_user_groups` VALUES (4, 4, 3);
INSERT INTO `auth_user_groups` VALUES (5, 5, 4);
INSERT INTO `auth_user_groups` VALUES (6, 6, 5);
INSERT INTO `auth_user_groups` VALUES (9, 7, 7);
COMMIT;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
BEGIN;
INSERT INTO `auth_user_user_permissions` VALUES (112, 3, 46);
INSERT INTO `auth_user_user_permissions` VALUES (113, 3, 47);
INSERT INTO `auth_user_user_permissions` VALUES (114, 3, 48);
INSERT INTO `auth_user_user_permissions` VALUES (115, 3, 49);
INSERT INTO `auth_user_user_permissions` VALUES (116, 3, 50);
INSERT INTO `auth_user_user_permissions` VALUES (117, 3, 51);
INSERT INTO `auth_user_user_permissions` VALUES (118, 3, 52);
INSERT INTO `auth_user_user_permissions` VALUES (119, 3, 53);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (1, '2020-04-09 12:44:05.530851', '2', 'Daniel', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (2, '2020-04-09 12:47:01.910018', '2', 'Daniel', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (3, '2020-04-09 12:50:38.384167', '1', '总经办', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (4, '2020-04-09 12:51:09.222993', '2', '技师部——按摩', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (5, '2020-04-09 12:51:23.215989', '3', '技师部——助浴', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (6, '2020-04-09 13:04:46.583834', '2', 'Daniel', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (7, '2020-04-09 13:08:43.269530', '1', 'Maggie', 2, '[{\"changed\": {\"fields\": [\"groups\", \"last_login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (8, '2020-04-09 13:08:52.428546', '2', 'Daniel', 2, '[{\"changed\": {\"fields\": [\"is_superuser\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (9, '2020-04-09 13:10:35.350151', '3', 'Linda', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (10, '2020-04-09 13:11:20.123037', '3', 'Linda', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\", \"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (11, '2020-04-09 13:11:58.431698', '4', 'Bob', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (12, '2020-04-09 13:12:33.730239', '4', 'Bob', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\", \"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (13, '2020-04-09 13:16:01.883026', '5', 'Hurry', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (14, '2020-04-09 13:19:03.518952', '4', '财务部', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (15, '2020-04-09 13:19:10.745594', '5', 'Hurry', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\", \"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (16, '2020-04-09 13:20:03.799256', '6', 'Cindy', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (17, '2020-04-09 13:21:00.526309', '5', '后勤部', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (18, '2020-04-09 13:21:03.951107', '6', 'Cindy', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\", \"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (19, '2020-04-09 13:22:02.029475', '7', 'Jerry', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (20, '2020-04-09 13:22:58.997811', '6', '客户管理部', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (21, '2020-04-09 13:23:01.828916', '7', 'Jerry', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\", \"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (22, '2020-04-09 13:26:07.115896', '7', '营销部', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (23, '2020-04-09 13:26:15.660812', '2', 'Daniel', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (24, '2020-04-09 13:26:29.708763', '7', 'Jerry', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (25, '2020-04-10 11:37:11.742723', '5', '后勤部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 2);
INSERT INTO `django_admin_log` VALUES (26, '2020-04-10 11:44:46.238485', '6', 'Cindy', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (27, '2020-04-10 11:45:46.921046', '5', '后勤部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (28, '2020-04-10 11:49:12.416864', '5', '后勤部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (29, '2020-04-10 11:50:33.068394', '6', 'Cindy', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (30, '2020-04-10 11:51:30.262953', '6', 'Cindy', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (31, '2020-04-11 00:20:07.183547', '易洋千玺', '会员 object (易洋千玺)', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (32, '2020-04-11 03:50:20.215030', '2020-04-11', '建议 object (2020-04-11)', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (33, '2020-04-11 03:50:51.507366', '2020-04-12', '建议 object (2020-04-12)', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (34, '2020-04-11 06:29:08.759048', '黄绿', '技师 object (黄绿)', 2, '[{\"changed\": {\"fields\": [\"shifoukongxian\", \"pingjunpingfen\", \"rijunfuwurenshu\", \"rijunfuwujine\"]}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (35, '2020-04-11 06:29:49.588450', '青橘', '技师 object (青橘)', 2, '[{\"changed\": {\"fields\": [\"shifoukongxian\", \"pingjunpingfen\", \"rijunfuwurenshu\", \"rijunfuwujine\"]}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (36, '2020-04-11 11:07:49.495907', '1', '开牌 object (1)', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (37, '2020-04-16 08:08:14.337195', '15', '预约 object (15)', 1, '[{\"added\": {}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (38, '2020-04-16 08:09:04.796244', '999', '预约 object (999)', 1, '[{\"added\": {}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (39, '2020-04-17 03:59:26.350574', '8', 'Andy', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (40, '2020-04-17 04:03:03.091461', '8', 'Andy', 3, '', 4, 1);
INSERT INTO `django_admin_log` VALUES (41, '2020-04-17 04:03:27.835323', '9', 'Andy', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (42, '2020-04-17 04:04:22.238144', '9', 'Andy', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\", \"Groups\", \"User permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (52, '2020-04-17 04:42:54.929075', '9', 'Andy', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\", \"User permissions\", \"Last login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (53, '2020-04-17 06:09:57.548956', '33', 'Manage | 洗浴投诉/建议 | 洗浴投诉/建议', 1, '[{\"added\": {}}]', 2, 1);
INSERT INTO `django_admin_log` VALUES (54, '2020-04-17 06:10:28.347587', '9', 'Andy', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (55, '2020-04-17 06:12:24.698035', '9', 'Andy', 3, '', 4, 1);
INSERT INTO `django_admin_log` VALUES (56, '2020-04-17 06:14:20.230773', '6', 'Cindy', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\", \"Last login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (57, '2020-04-17 06:14:31.036306', '6', 'Cindy', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (58, '2020-04-17 06:15:46.613751', '3', 'Linda', 2, '[{\"changed\": {\"fields\": [\"User permissions\", \"Last login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (59, '2020-04-17 06:56:57.489631', '3', '开牌 object (3)', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (60, '2020-04-22 11:35:05.672598', '5', '后勤部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (61, '2020-04-22 11:36:25.043962', '5', 'Hurry', 2, '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (62, '2020-04-22 11:37:39.403241', '5', 'Hurry', 2, '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (63, '2020-04-22 11:38:24.217935', '3', 'Linda', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (64, '2020-04-25 07:30:24.262666', '1', '会员开牌 object (1)', 1, '[{\"added\": {}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (65, '2020-04-25 11:39:35.774433', '4', 'Bob', 2, '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (66, '2020-04-25 11:48:51.025947', '5', '后勤部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (67, '2020-04-25 11:50:08.784989', '6', '客户管理部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (68, '2020-04-25 11:50:14.743821', '1', '总经办', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (69, '2020-04-25 11:52:45.881283', '3', '技师部——助浴', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (70, '2020-04-25 11:55:47.959131', '2', '技师部——按摩', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (71, '2020-04-25 11:57:40.644124', '3', '技师部——助浴', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (72, '2020-04-25 12:00:30.615689', '7', '营销部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (73, '2020-04-25 12:03:16.055475', '4', '财务部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (74, '2020-04-25 12:05:00.118937', '5', '后勤部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (75, '2020-04-25 12:07:00.161133', '7', '营销部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (76, '2020-04-25 12:08:23.749034', '2', '技师部——按摩', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (77, '2020-04-25 12:09:25.142081', '3', '技师部——助浴', 2, '[]', 3, 1);
INSERT INTO `django_admin_log` VALUES (78, '2020-04-25 12:10:25.288337', '3', '技师部——助浴', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (79, '2020-04-25 12:14:13.732233', '6', '客户管理部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (80, '2020-04-25 12:14:56.558557', '4', 'Bob', 2, '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (81, '2020-04-25 12:15:15.057806', '6', 'Cindy', 2, '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (82, '2020-04-25 13:52:11.920914', '5', '会员开牌 object (5)', 1, '[{\"added\": {}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (83, '2020-04-25 16:02:06.470579', '2', '技师部——按摩', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (84, '2020-04-25 16:02:33.470048', '6', '客户管理部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (85, '2020-04-25 16:04:25.227043', '5', '后勤部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (86, '2020-04-25 16:04:46.221413', '4', '财务部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (87, '2020-04-25 16:06:31.772892', '7', '营销部', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (20, 'Manage', 'fuwuyuyue');
INSERT INTO `django_content_type` VALUES (13, 'Manage', 'yonghu');
INSERT INTO `django_content_type` VALUES (12, 'manage', '会员');
INSERT INTO `django_content_type` VALUES (28, 'Manage', '会员充值');
INSERT INTO `django_content_type` VALUES (24, 'Manage', '会员开牌');
INSERT INTO `django_content_type` VALUES (25, 'Manage', '会员消费');
INSERT INTO `django_content_type` VALUES (26, 'Manage', '会员结账');
INSERT INTO `django_content_type` VALUES (27, 'Manage', '会员评价');
INSERT INTO `django_content_type` VALUES (14, 'Manage', '建议');
INSERT INTO `django_content_type` VALUES (18, 'Manage', '开牌');
INSERT INTO `django_content_type` VALUES (21, 'Manage', '手牌');
INSERT INTO `django_content_type` VALUES (15, 'Manage', '技师');
INSERT INTO `django_content_type` VALUES (17, 'Manage', '消费');
INSERT INTO `django_content_type` VALUES (22, 'Manage', '结账');
INSERT INTO `django_content_type` VALUES (16, 'Manage', '评价');
INSERT INTO `django_content_type` VALUES (23, 'Manage', '金额');
INSERT INTO `django_content_type` VALUES (11, 'manage', '项目');
INSERT INTO `django_content_type` VALUES (19, 'Manage', '预约');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'web1', 'huiyuan');
INSERT INTO `django_content_type` VALUES (7, 'web1', 'yonghu');
INSERT INTO `django_content_type` VALUES (9, '洗浴管理', '会员');
INSERT INTO `django_content_type` VALUES (10, '洗浴管理', '项目');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-04-08 03:52:56.555493');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-04-08 03:52:56.754312');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-04-08 03:52:57.140873');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-04-08 03:52:57.232652');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-08 03:52:57.246577');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-04-08 03:52:57.329763');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-04-08 03:52:57.374521');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-04-08 03:52:57.448045');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-04-08 03:52:57.457933');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-04-08 03:52:57.504235');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-04-08 03:52:57.507505');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-04-08 03:52:57.520091');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-04-08 03:52:57.577046');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-04-08 03:52:57.620337');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-04-08 03:52:57.656678');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-04-08 03:52:57.667196');
INSERT INTO `django_migrations` VALUES (17, 'sessions', '0001_initial', '2020-04-08 03:52:57.679436');
INSERT INTO `django_migrations` VALUES (18, 'web1', '0001_initial', '2020-04-08 05:21:30.874284');
INSERT INTO `django_migrations` VALUES (19, 'Manage', '0001_initial', '2020-04-11 00:43:33.989046');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('zhk7nj3eyd5w2f5u2ynb48c05a5h8g4f', 'YzVjYTQwMzcxYmYwMDc3Y2ZlZmJkODAxNThmZTZkZjM5ZWRhODNhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzU1MzJjYmZjZmNlMDgxMTg0MzYyZWU2ZjljZmQyOTczMGNhNzE2Iiwic2ltcGxldWlfMjAyMDA0MjUiOnRydWUsInNpbXBsZXVpXzIwMjAwNDI2Ijp0cnVlfQ==', '2020-05-10 03:04:17.378508');
COMMIT;

-- ----------------------------
-- Table structure for fuwuyuyue
-- ----------------------------
DROP TABLE IF EXISTS `fuwuyuyue`;
CREATE TABLE `fuwuyuyue` (
  `shoupaihao` int(5) NOT NULL,
  `fuwuquyu` varchar(2) DEFAULT NULL,
  `xingbie` varchar(2) DEFAULT NULL,
  `chuangweihao` int(3) DEFAULT NULL,
  `yuyueshijian` datetime DEFAULT NULL,
  `jishi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`shoupaihao`),
  KEY `querenjishi` (`jishi`),
  KEY `xiaofeixingbie` (`xingbie`),
  CONSTRAINT `querenjishi` FOREIGN KEY (`jishi`) REFERENCES `jishi` (`jishi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for huiyuan
-- ----------------------------
DROP TABLE IF EXISTS `huiyuan`;
CREATE TABLE `huiyuan` (
  `huiyuankahao` int(255) NOT NULL,
  `xingming` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dianhuahaoma` varchar(11) NOT NULL,
  `shenfenzhenghaoma` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xingbie` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nianling` int(5) DEFAULT NULL,
  `shengri` date DEFAULT NULL,
  `kaleixing` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `changzhuquyu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pingjunxiaofei` decimal(65,0) DEFAULT NULL,
  `huiyuanxiaofeizonge` decimal(65,0) DEFAULT NULL,
  `shangcixiaofeishijian` date DEFAULT NULL,
  `huiyuanchongzhi` decimal(65,0) DEFAULT NULL,
  `kaneishengyujine` decimal(65,0) DEFAULT NULL,
  `bankashijian` date NOT NULL,
  `huiyuanxiaofeicishu` int(255) DEFAULT NULL,
  PRIMARY KEY (`huiyuankahao`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huiyuan
-- ----------------------------
BEGIN;
INSERT INTO `huiyuan` VALUES (9374863, '小明', '18723973483', NULL, '男', 30, '2000-04-17', '黄金卡', '辽宁', NULL, NULL, NULL, 1, 1000, '2020-04-17', NULL);
INSERT INTO `huiyuan` VALUES (459386431, '易洋千玺', '', NULL, '男', 20, '2000-11-28', '钻石卡', '北京市', 500, NULL, '2020-04-11', 3, 18000, '2015-08-08', NULL);
COMMIT;

-- ----------------------------
-- Table structure for huiyuanchongzhi
-- ----------------------------
DROP TABLE IF EXISTS `huiyuanchongzhi`;
CREATE TABLE `huiyuanchongzhi` (
  `chongzhidanhao` int(255) NOT NULL AUTO_INCREMENT,
  `huiyuankahao` int(255) NOT NULL,
  `chongzhishijian` date NOT NULL,
  `chongzhijine` decimal(65,0) NOT NULL,
  PRIMARY KEY (`chongzhidanhao`) USING BTREE,
  KEY `huiyuankahao` (`huiyuankahao`),
  CONSTRAINT `huiyuanchongzhi_ibfk_1` FOREIGN KEY (`huiyuankahao`) REFERENCES `huiyuan` (`huiyuankahao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jianyi
-- ----------------------------
DROP TABLE IF EXISTS `jianyi`;
CREATE TABLE `jianyi` (
  `tianxieshijian` date NOT NULL,
  `tousu/jianyi` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`tianxieshijian`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jianyi
-- ----------------------------
BEGIN;
INSERT INTO `jianyi` VALUES ('2020-04-11', '卫生');
INSERT INTO `jianyi` VALUES ('2020-04-12', '服务');
INSERT INTO `jianyi` VALUES ('2020-04-17', '搓澡');
COMMIT;

-- ----------------------------
-- Table structure for jishi
-- ----------------------------
DROP TABLE IF EXISTS `jishi`;
CREATE TABLE `jishi` (
  `jishi_id` int(255) NOT NULL,
  `jishi` varchar(255) NOT NULL,
  `xingbie` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fuwuquyu` varchar(2) NOT NULL,
  `shifoukongxian` int(1) DEFAULT NULL,
  `nianling` int(3) DEFAULT NULL,
  `congyenianxian` int(3) DEFAULT NULL,
  `shanchangxiangmu` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`jishi`) USING BTREE,
  KEY `jishi` (`jishi`),
  KEY `jishi_id` (`jishi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jishi
-- ----------------------------
BEGIN;
INSERT INTO `jishi` VALUES (1, '01任北', '男', '按摩', NULL, 31, 2, '正骨');
INSERT INTO `jishi` VALUES (2, '02吴白', '女', '按摩', NULL, 27, 3, '火罐');
INSERT INTO `jishi` VALUES (3, '03周红', '女', '按摩', NULL, 28, 5, '头疗');
INSERT INTO `jishi` VALUES (4, '04孙七', '男', '助浴', NULL, 46, 15, '牛奶浴');
INSERT INTO `jishi` VALUES (5, '05张三', '男', '助浴', NULL, 32, 6, '扬州搓澡');
INSERT INTO `jishi` VALUES (6, '06易西', '男', '按摩', NULL, 26, 3, '针灸');
INSERT INTO `jishi` VALUES (7, '07李四', '男', '助浴', NULL, 30, 8, '芦荟美体');
INSERT INTO `jishi` VALUES (8, '08毕东', '男', '按摩', NULL, 21, 1, '泰式按摩');
INSERT INTO `jishi` VALUES (9, '09王五', '男', '助浴', NULL, 25, 2, '火山泥');
INSERT INTO `jishi` VALUES (10, '10白蓝', '女', '助浴', NULL, 35, 12, '玫瑰浴盐');
INSERT INTO `jishi` VALUES (11, '11紫灰', '女', '助浴', NULL, 24, 1, '全身SPA');
INSERT INTO `jishi` VALUES (12, '12肖南', '男', '按摩', NULL, 23, 1, '全身理疗');
INSERT INTO `jishi` VALUES (13, '13胡啦', '男', '按摩', NULL, 22, 2, '足疗');
INSERT INTO `jishi` VALUES (14, '14蓝粉', '女', '助浴', NULL, 54, 22, '精油开背');
INSERT INTO `jishi` VALUES (15, '15赵六', '男', '助浴', NULL, 35, 9, '姜汁头道');
INSERT INTO `jishi` VALUES (16, '16路紫', '女', '按摩', NULL, 29, 7, '艾灸');
INSERT INTO `jishi` VALUES (17, '17郑兰', '女', '按摩', NULL, 19, 1, '中医推拿');
INSERT INTO `jishi` VALUES (18, '18钟橙', '女', '按摩', NULL, 20, 1, '局部按摩');
INSERT INTO `jishi` VALUES (19, '19青橘', '女', '助浴', NULL, 31, 4, '泰式按摩');
INSERT INTO `jishi` VALUES (20, '20黄绿', '女', '助浴', NULL, 33, 13, '醋搓');
COMMIT;

-- ----------------------------
-- Table structure for shoupai
-- ----------------------------
DROP TABLE IF EXISTS `shoupai`;
CREATE TABLE `shoupai` (
  `shoupaihao` int(255) NOT NULL,
  `xingbie` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `shifoukaipai` int(1) DEFAULT NULL,
  PRIMARY KEY (`shoupaihao`),
  KEY `xingbie` (`xingbie`),
  KEY `shifoukaipai` (`shifoukaipai`),
  KEY `xingbie_2` (`xingbie`,`shoupaihao`,`shifoukaipai`),
  CONSTRAINT `kaipai` FOREIGN KEY (`shifoukaipai`) REFERENCES `zhangdan` (`kaipai`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoupai
-- ----------------------------
BEGIN;
INSERT INTO `shoupai` VALUES (1, '女', NULL);
INSERT INTO `shoupai` VALUES (2, '女', NULL);
INSERT INTO `shoupai` VALUES (3, '女', NULL);
INSERT INTO `shoupai` VALUES (4, '女', NULL);
INSERT INTO `shoupai` VALUES (5, '女', NULL);
INSERT INTO `shoupai` VALUES (6, '女', NULL);
INSERT INTO `shoupai` VALUES (7, '女', NULL);
INSERT INTO `shoupai` VALUES (8, '女', NULL);
INSERT INTO `shoupai` VALUES (9, '女', NULL);
INSERT INTO `shoupai` VALUES (10, '女', NULL);
INSERT INTO `shoupai` VALUES (11, '女', NULL);
INSERT INTO `shoupai` VALUES (12, '女', NULL);
INSERT INTO `shoupai` VALUES (13, '女', NULL);
INSERT INTO `shoupai` VALUES (14, '女', NULL);
INSERT INTO `shoupai` VALUES (15, '女', NULL);
INSERT INTO `shoupai` VALUES (16, '女', NULL);
INSERT INTO `shoupai` VALUES (17, '女', NULL);
INSERT INTO `shoupai` VALUES (18, '女', NULL);
INSERT INTO `shoupai` VALUES (19, '女', NULL);
INSERT INTO `shoupai` VALUES (20, '女', NULL);
INSERT INTO `shoupai` VALUES (21, '女', NULL);
INSERT INTO `shoupai` VALUES (22, '女', NULL);
INSERT INTO `shoupai` VALUES (23, '女', NULL);
INSERT INTO `shoupai` VALUES (24, '女', NULL);
INSERT INTO `shoupai` VALUES (25, '女', NULL);
INSERT INTO `shoupai` VALUES (26, '女', NULL);
INSERT INTO `shoupai` VALUES (27, '女', NULL);
INSERT INTO `shoupai` VALUES (28, '女', NULL);
INSERT INTO `shoupai` VALUES (29, '女', NULL);
INSERT INTO `shoupai` VALUES (30, '女', NULL);
INSERT INTO `shoupai` VALUES (31, '女', NULL);
INSERT INTO `shoupai` VALUES (32, '女', NULL);
INSERT INTO `shoupai` VALUES (33, '女', NULL);
INSERT INTO `shoupai` VALUES (34, '女', NULL);
INSERT INTO `shoupai` VALUES (35, '女', NULL);
INSERT INTO `shoupai` VALUES (36, '女', NULL);
INSERT INTO `shoupai` VALUES (37, '女', NULL);
INSERT INTO `shoupai` VALUES (38, '女', NULL);
INSERT INTO `shoupai` VALUES (39, '女', NULL);
INSERT INTO `shoupai` VALUES (40, '女', NULL);
INSERT INTO `shoupai` VALUES (41, '女', NULL);
INSERT INTO `shoupai` VALUES (42, '女', NULL);
INSERT INTO `shoupai` VALUES (43, '女', NULL);
INSERT INTO `shoupai` VALUES (44, '女', NULL);
INSERT INTO `shoupai` VALUES (45, '女', NULL);
INSERT INTO `shoupai` VALUES (46, '女', NULL);
INSERT INTO `shoupai` VALUES (47, '女', NULL);
INSERT INTO `shoupai` VALUES (48, '女', NULL);
INSERT INTO `shoupai` VALUES (49, '女', NULL);
INSERT INTO `shoupai` VALUES (50, '女', NULL);
INSERT INTO `shoupai` VALUES (51, '女', NULL);
INSERT INTO `shoupai` VALUES (52, '女', NULL);
INSERT INTO `shoupai` VALUES (53, '女', NULL);
INSERT INTO `shoupai` VALUES (54, '女', NULL);
INSERT INTO `shoupai` VALUES (55, '女', NULL);
INSERT INTO `shoupai` VALUES (56, '女', NULL);
INSERT INTO `shoupai` VALUES (57, '女', NULL);
INSERT INTO `shoupai` VALUES (58, '女', NULL);
INSERT INTO `shoupai` VALUES (59, '女', NULL);
INSERT INTO `shoupai` VALUES (60, '女', NULL);
INSERT INTO `shoupai` VALUES (61, '女', NULL);
INSERT INTO `shoupai` VALUES (62, '女', NULL);
INSERT INTO `shoupai` VALUES (63, '女', NULL);
INSERT INTO `shoupai` VALUES (64, '女', NULL);
INSERT INTO `shoupai` VALUES (65, '女', NULL);
INSERT INTO `shoupai` VALUES (66, '女', NULL);
INSERT INTO `shoupai` VALUES (67, '女', NULL);
INSERT INTO `shoupai` VALUES (68, '女', NULL);
INSERT INTO `shoupai` VALUES (69, '女', NULL);
INSERT INTO `shoupai` VALUES (70, '女', NULL);
INSERT INTO `shoupai` VALUES (71, '女', NULL);
INSERT INTO `shoupai` VALUES (72, '女', NULL);
INSERT INTO `shoupai` VALUES (73, '女', NULL);
INSERT INTO `shoupai` VALUES (74, '女', NULL);
INSERT INTO `shoupai` VALUES (75, '女', NULL);
INSERT INTO `shoupai` VALUES (76, '女', NULL);
INSERT INTO `shoupai` VALUES (77, '女', NULL);
INSERT INTO `shoupai` VALUES (78, '女', NULL);
INSERT INTO `shoupai` VALUES (79, '女', NULL);
INSERT INTO `shoupai` VALUES (80, '女', NULL);
INSERT INTO `shoupai` VALUES (81, '女', NULL);
INSERT INTO `shoupai` VALUES (82, '女', NULL);
INSERT INTO `shoupai` VALUES (83, '女', NULL);
INSERT INTO `shoupai` VALUES (84, '女', NULL);
INSERT INTO `shoupai` VALUES (85, '女', NULL);
INSERT INTO `shoupai` VALUES (86, '女', NULL);
INSERT INTO `shoupai` VALUES (87, '女', NULL);
INSERT INTO `shoupai` VALUES (88, '女', NULL);
INSERT INTO `shoupai` VALUES (89, '女', NULL);
INSERT INTO `shoupai` VALUES (90, '女', NULL);
INSERT INTO `shoupai` VALUES (91, '女', NULL);
INSERT INTO `shoupai` VALUES (92, '女', NULL);
INSERT INTO `shoupai` VALUES (93, '女', NULL);
INSERT INTO `shoupai` VALUES (94, '女', NULL);
INSERT INTO `shoupai` VALUES (95, '女', NULL);
INSERT INTO `shoupai` VALUES (96, '女', NULL);
INSERT INTO `shoupai` VALUES (97, '女', NULL);
INSERT INTO `shoupai` VALUES (98, '女', NULL);
INSERT INTO `shoupai` VALUES (99, '女', NULL);
INSERT INTO `shoupai` VALUES (100, '女', NULL);
INSERT INTO `shoupai` VALUES (101, '女', NULL);
INSERT INTO `shoupai` VALUES (102, '女', NULL);
INSERT INTO `shoupai` VALUES (103, '女', NULL);
INSERT INTO `shoupai` VALUES (104, '女', NULL);
INSERT INTO `shoupai` VALUES (105, '女', NULL);
INSERT INTO `shoupai` VALUES (106, '女', NULL);
INSERT INTO `shoupai` VALUES (107, '女', NULL);
INSERT INTO `shoupai` VALUES (108, '女', NULL);
INSERT INTO `shoupai` VALUES (109, '女', NULL);
INSERT INTO `shoupai` VALUES (110, '女', NULL);
INSERT INTO `shoupai` VALUES (111, '女', NULL);
INSERT INTO `shoupai` VALUES (112, '女', NULL);
INSERT INTO `shoupai` VALUES (113, '女', NULL);
INSERT INTO `shoupai` VALUES (114, '女', NULL);
INSERT INTO `shoupai` VALUES (115, '女', NULL);
INSERT INTO `shoupai` VALUES (116, '女', NULL);
INSERT INTO `shoupai` VALUES (117, '女', NULL);
INSERT INTO `shoupai` VALUES (118, '女', NULL);
INSERT INTO `shoupai` VALUES (119, '女', NULL);
INSERT INTO `shoupai` VALUES (120, '女', NULL);
INSERT INTO `shoupai` VALUES (121, '女', NULL);
INSERT INTO `shoupai` VALUES (122, '女', NULL);
INSERT INTO `shoupai` VALUES (123, '女', NULL);
INSERT INTO `shoupai` VALUES (124, '女', NULL);
INSERT INTO `shoupai` VALUES (125, '女', NULL);
INSERT INTO `shoupai` VALUES (126, '女', NULL);
INSERT INTO `shoupai` VALUES (127, '女', NULL);
INSERT INTO `shoupai` VALUES (128, '女', NULL);
INSERT INTO `shoupai` VALUES (129, '女', NULL);
INSERT INTO `shoupai` VALUES (130, '女', NULL);
INSERT INTO `shoupai` VALUES (131, '女', NULL);
INSERT INTO `shoupai` VALUES (132, '女', NULL);
INSERT INTO `shoupai` VALUES (133, '女', NULL);
INSERT INTO `shoupai` VALUES (134, '女', NULL);
INSERT INTO `shoupai` VALUES (135, '女', NULL);
INSERT INTO `shoupai` VALUES (136, '女', NULL);
INSERT INTO `shoupai` VALUES (137, '女', NULL);
INSERT INTO `shoupai` VALUES (138, '女', NULL);
INSERT INTO `shoupai` VALUES (139, '女', NULL);
INSERT INTO `shoupai` VALUES (140, '女', NULL);
INSERT INTO `shoupai` VALUES (141, '女', NULL);
INSERT INTO `shoupai` VALUES (142, '女', NULL);
INSERT INTO `shoupai` VALUES (143, '女', NULL);
INSERT INTO `shoupai` VALUES (144, '女', NULL);
INSERT INTO `shoupai` VALUES (145, '女', NULL);
INSERT INTO `shoupai` VALUES (146, '女', NULL);
INSERT INTO `shoupai` VALUES (147, '女', NULL);
INSERT INTO `shoupai` VALUES (148, '女', NULL);
INSERT INTO `shoupai` VALUES (149, '女', NULL);
INSERT INTO `shoupai` VALUES (150, '女', NULL);
INSERT INTO `shoupai` VALUES (151, '女', NULL);
INSERT INTO `shoupai` VALUES (152, '女', NULL);
INSERT INTO `shoupai` VALUES (153, '女', NULL);
INSERT INTO `shoupai` VALUES (154, '女', NULL);
INSERT INTO `shoupai` VALUES (155, '女', NULL);
INSERT INTO `shoupai` VALUES (156, '女', NULL);
INSERT INTO `shoupai` VALUES (157, '女', NULL);
INSERT INTO `shoupai` VALUES (158, '女', NULL);
INSERT INTO `shoupai` VALUES (159, '女', NULL);
INSERT INTO `shoupai` VALUES (160, '女', NULL);
INSERT INTO `shoupai` VALUES (161, '女', NULL);
INSERT INTO `shoupai` VALUES (162, '女', NULL);
INSERT INTO `shoupai` VALUES (163, '女', NULL);
INSERT INTO `shoupai` VALUES (164, '女', NULL);
INSERT INTO `shoupai` VALUES (165, '女', NULL);
INSERT INTO `shoupai` VALUES (166, '女', NULL);
INSERT INTO `shoupai` VALUES (167, '女', NULL);
INSERT INTO `shoupai` VALUES (168, '女', NULL);
INSERT INTO `shoupai` VALUES (169, '女', NULL);
INSERT INTO `shoupai` VALUES (170, '女', NULL);
INSERT INTO `shoupai` VALUES (171, '女', NULL);
INSERT INTO `shoupai` VALUES (172, '女', NULL);
INSERT INTO `shoupai` VALUES (173, '女', NULL);
INSERT INTO `shoupai` VALUES (174, '女', NULL);
INSERT INTO `shoupai` VALUES (175, '女', NULL);
INSERT INTO `shoupai` VALUES (176, '女', NULL);
INSERT INTO `shoupai` VALUES (177, '女', NULL);
INSERT INTO `shoupai` VALUES (178, '女', NULL);
INSERT INTO `shoupai` VALUES (179, '女', NULL);
INSERT INTO `shoupai` VALUES (180, '女', NULL);
INSERT INTO `shoupai` VALUES (181, '女', NULL);
INSERT INTO `shoupai` VALUES (182, '女', NULL);
INSERT INTO `shoupai` VALUES (183, '女', NULL);
INSERT INTO `shoupai` VALUES (184, '女', NULL);
INSERT INTO `shoupai` VALUES (185, '女', NULL);
INSERT INTO `shoupai` VALUES (186, '女', NULL);
INSERT INTO `shoupai` VALUES (187, '女', NULL);
INSERT INTO `shoupai` VALUES (188, '女', NULL);
INSERT INTO `shoupai` VALUES (189, '女', NULL);
INSERT INTO `shoupai` VALUES (190, '女', NULL);
INSERT INTO `shoupai` VALUES (191, '女', NULL);
INSERT INTO `shoupai` VALUES (192, '女', NULL);
INSERT INTO `shoupai` VALUES (193, '女', NULL);
INSERT INTO `shoupai` VALUES (194, '女', NULL);
INSERT INTO `shoupai` VALUES (195, '女', NULL);
INSERT INTO `shoupai` VALUES (196, '女', NULL);
INSERT INTO `shoupai` VALUES (197, '女', NULL);
INSERT INTO `shoupai` VALUES (198, '女', NULL);
INSERT INTO `shoupai` VALUES (199, '女', NULL);
INSERT INTO `shoupai` VALUES (200, '女', NULL);
INSERT INTO `shoupai` VALUES (201, '女', NULL);
INSERT INTO `shoupai` VALUES (202, '女', NULL);
INSERT INTO `shoupai` VALUES (203, '女', NULL);
INSERT INTO `shoupai` VALUES (204, '女', NULL);
INSERT INTO `shoupai` VALUES (205, '女', NULL);
INSERT INTO `shoupai` VALUES (206, '女', NULL);
INSERT INTO `shoupai` VALUES (207, '女', NULL);
INSERT INTO `shoupai` VALUES (208, '女', NULL);
INSERT INTO `shoupai` VALUES (209, '女', NULL);
INSERT INTO `shoupai` VALUES (210, '女', NULL);
INSERT INTO `shoupai` VALUES (211, '女', NULL);
INSERT INTO `shoupai` VALUES (212, '女', NULL);
INSERT INTO `shoupai` VALUES (213, '女', NULL);
INSERT INTO `shoupai` VALUES (214, '女', NULL);
INSERT INTO `shoupai` VALUES (215, '女', NULL);
INSERT INTO `shoupai` VALUES (216, '女', NULL);
INSERT INTO `shoupai` VALUES (217, '女', NULL);
INSERT INTO `shoupai` VALUES (218, '女', NULL);
INSERT INTO `shoupai` VALUES (219, '女', NULL);
INSERT INTO `shoupai` VALUES (220, '女', NULL);
INSERT INTO `shoupai` VALUES (221, '女', NULL);
INSERT INTO `shoupai` VALUES (222, '女', NULL);
INSERT INTO `shoupai` VALUES (223, '女', NULL);
INSERT INTO `shoupai` VALUES (224, '女', NULL);
INSERT INTO `shoupai` VALUES (225, '女', NULL);
INSERT INTO `shoupai` VALUES (226, '女', NULL);
INSERT INTO `shoupai` VALUES (227, '女', NULL);
INSERT INTO `shoupai` VALUES (228, '女', NULL);
INSERT INTO `shoupai` VALUES (229, '女', NULL);
INSERT INTO `shoupai` VALUES (230, '女', NULL);
INSERT INTO `shoupai` VALUES (231, '女', NULL);
INSERT INTO `shoupai` VALUES (232, '女', NULL);
INSERT INTO `shoupai` VALUES (233, '女', NULL);
INSERT INTO `shoupai` VALUES (234, '女', NULL);
INSERT INTO `shoupai` VALUES (235, '女', NULL);
INSERT INTO `shoupai` VALUES (236, '女', NULL);
INSERT INTO `shoupai` VALUES (237, '女', NULL);
INSERT INTO `shoupai` VALUES (238, '女', NULL);
INSERT INTO `shoupai` VALUES (239, '女', NULL);
INSERT INTO `shoupai` VALUES (240, '女', NULL);
INSERT INTO `shoupai` VALUES (241, '女', NULL);
INSERT INTO `shoupai` VALUES (242, '女', NULL);
INSERT INTO `shoupai` VALUES (243, '女', NULL);
INSERT INTO `shoupai` VALUES (244, '女', NULL);
INSERT INTO `shoupai` VALUES (245, '女', NULL);
INSERT INTO `shoupai` VALUES (246, '女', NULL);
INSERT INTO `shoupai` VALUES (247, '女', NULL);
INSERT INTO `shoupai` VALUES (248, '女', NULL);
INSERT INTO `shoupai` VALUES (249, '女', NULL);
INSERT INTO `shoupai` VALUES (250, '女', NULL);
INSERT INTO `shoupai` VALUES (251, '女', NULL);
INSERT INTO `shoupai` VALUES (252, '女', NULL);
INSERT INTO `shoupai` VALUES (253, '女', NULL);
INSERT INTO `shoupai` VALUES (254, '女', NULL);
INSERT INTO `shoupai` VALUES (255, '女', NULL);
INSERT INTO `shoupai` VALUES (256, '女', NULL);
INSERT INTO `shoupai` VALUES (257, '女', NULL);
INSERT INTO `shoupai` VALUES (258, '女', NULL);
INSERT INTO `shoupai` VALUES (259, '女', NULL);
INSERT INTO `shoupai` VALUES (260, '女', NULL);
INSERT INTO `shoupai` VALUES (261, '女', NULL);
INSERT INTO `shoupai` VALUES (262, '女', NULL);
INSERT INTO `shoupai` VALUES (263, '女', NULL);
INSERT INTO `shoupai` VALUES (264, '女', NULL);
INSERT INTO `shoupai` VALUES (265, '女', NULL);
INSERT INTO `shoupai` VALUES (266, '女', NULL);
INSERT INTO `shoupai` VALUES (267, '女', NULL);
INSERT INTO `shoupai` VALUES (268, '女', NULL);
INSERT INTO `shoupai` VALUES (269, '女', NULL);
INSERT INTO `shoupai` VALUES (270, '女', NULL);
INSERT INTO `shoupai` VALUES (271, '女', NULL);
INSERT INTO `shoupai` VALUES (272, '女', NULL);
INSERT INTO `shoupai` VALUES (273, '女', NULL);
INSERT INTO `shoupai` VALUES (274, '女', NULL);
INSERT INTO `shoupai` VALUES (275, '女', NULL);
INSERT INTO `shoupai` VALUES (276, '女', NULL);
INSERT INTO `shoupai` VALUES (277, '女', NULL);
INSERT INTO `shoupai` VALUES (278, '女', NULL);
INSERT INTO `shoupai` VALUES (279, '女', NULL);
INSERT INTO `shoupai` VALUES (280, '女', NULL);
INSERT INTO `shoupai` VALUES (281, '女', NULL);
INSERT INTO `shoupai` VALUES (282, '女', NULL);
INSERT INTO `shoupai` VALUES (283, '女', NULL);
INSERT INTO `shoupai` VALUES (284, '女', NULL);
INSERT INTO `shoupai` VALUES (285, '女', NULL);
INSERT INTO `shoupai` VALUES (286, '女', NULL);
INSERT INTO `shoupai` VALUES (287, '女', NULL);
INSERT INTO `shoupai` VALUES (288, '女', NULL);
INSERT INTO `shoupai` VALUES (289, '女', NULL);
INSERT INTO `shoupai` VALUES (290, '女', NULL);
INSERT INTO `shoupai` VALUES (291, '女', NULL);
INSERT INTO `shoupai` VALUES (292, '女', NULL);
INSERT INTO `shoupai` VALUES (293, '女', NULL);
INSERT INTO `shoupai` VALUES (294, '女', NULL);
INSERT INTO `shoupai` VALUES (295, '女', NULL);
INSERT INTO `shoupai` VALUES (296, '女', NULL);
INSERT INTO `shoupai` VALUES (297, '女', NULL);
INSERT INTO `shoupai` VALUES (298, '女', NULL);
INSERT INTO `shoupai` VALUES (299, '女', NULL);
INSERT INTO `shoupai` VALUES (300, '女', NULL);
INSERT INTO `shoupai` VALUES (301, '女', NULL);
INSERT INTO `shoupai` VALUES (302, '女', NULL);
INSERT INTO `shoupai` VALUES (303, '女', NULL);
INSERT INTO `shoupai` VALUES (304, '女', NULL);
INSERT INTO `shoupai` VALUES (305, '女', NULL);
INSERT INTO `shoupai` VALUES (306, '女', NULL);
INSERT INTO `shoupai` VALUES (307, '女', NULL);
INSERT INTO `shoupai` VALUES (308, '女', NULL);
INSERT INTO `shoupai` VALUES (309, '女', NULL);
INSERT INTO `shoupai` VALUES (310, '女', NULL);
INSERT INTO `shoupai` VALUES (311, '女', NULL);
INSERT INTO `shoupai` VALUES (312, '女', NULL);
INSERT INTO `shoupai` VALUES (313, '女', NULL);
INSERT INTO `shoupai` VALUES (314, '女', NULL);
INSERT INTO `shoupai` VALUES (315, '女', NULL);
INSERT INTO `shoupai` VALUES (316, '女', NULL);
INSERT INTO `shoupai` VALUES (317, '女', NULL);
INSERT INTO `shoupai` VALUES (318, '女', NULL);
INSERT INTO `shoupai` VALUES (319, '女', NULL);
INSERT INTO `shoupai` VALUES (320, '女', NULL);
INSERT INTO `shoupai` VALUES (321, '女', NULL);
INSERT INTO `shoupai` VALUES (322, '女', NULL);
INSERT INTO `shoupai` VALUES (323, '女', NULL);
INSERT INTO `shoupai` VALUES (324, '女', NULL);
INSERT INTO `shoupai` VALUES (325, '女', NULL);
INSERT INTO `shoupai` VALUES (326, '女', NULL);
INSERT INTO `shoupai` VALUES (327, '女', NULL);
INSERT INTO `shoupai` VALUES (328, '女', NULL);
INSERT INTO `shoupai` VALUES (329, '女', NULL);
INSERT INTO `shoupai` VALUES (330, '女', NULL);
INSERT INTO `shoupai` VALUES (331, '女', NULL);
INSERT INTO `shoupai` VALUES (332, '女', NULL);
INSERT INTO `shoupai` VALUES (333, '女', NULL);
INSERT INTO `shoupai` VALUES (334, '女', NULL);
INSERT INTO `shoupai` VALUES (335, '女', NULL);
INSERT INTO `shoupai` VALUES (336, '女', NULL);
INSERT INTO `shoupai` VALUES (337, '女', NULL);
INSERT INTO `shoupai` VALUES (338, '女', NULL);
INSERT INTO `shoupai` VALUES (339, '女', NULL);
INSERT INTO `shoupai` VALUES (340, '女', NULL);
INSERT INTO `shoupai` VALUES (341, '女', NULL);
INSERT INTO `shoupai` VALUES (342, '女', NULL);
INSERT INTO `shoupai` VALUES (343, '女', NULL);
INSERT INTO `shoupai` VALUES (344, '女', NULL);
INSERT INTO `shoupai` VALUES (345, '女', NULL);
INSERT INTO `shoupai` VALUES (346, '女', NULL);
INSERT INTO `shoupai` VALUES (347, '女', NULL);
INSERT INTO `shoupai` VALUES (348, '女', NULL);
INSERT INTO `shoupai` VALUES (349, '女', NULL);
INSERT INTO `shoupai` VALUES (350, '女', NULL);
INSERT INTO `shoupai` VALUES (351, '女', NULL);
INSERT INTO `shoupai` VALUES (352, '女', NULL);
INSERT INTO `shoupai` VALUES (353, '女', NULL);
INSERT INTO `shoupai` VALUES (354, '女', NULL);
INSERT INTO `shoupai` VALUES (355, '女', NULL);
INSERT INTO `shoupai` VALUES (356, '女', NULL);
INSERT INTO `shoupai` VALUES (357, '女', NULL);
INSERT INTO `shoupai` VALUES (358, '女', NULL);
INSERT INTO `shoupai` VALUES (359, '女', NULL);
INSERT INTO `shoupai` VALUES (360, '女', NULL);
INSERT INTO `shoupai` VALUES (361, '女', NULL);
INSERT INTO `shoupai` VALUES (362, '女', NULL);
INSERT INTO `shoupai` VALUES (363, '女', NULL);
INSERT INTO `shoupai` VALUES (364, '女', NULL);
INSERT INTO `shoupai` VALUES (365, '女', NULL);
INSERT INTO `shoupai` VALUES (366, '女', NULL);
INSERT INTO `shoupai` VALUES (367, '女', NULL);
INSERT INTO `shoupai` VALUES (368, '女', NULL);
INSERT INTO `shoupai` VALUES (369, '女', NULL);
INSERT INTO `shoupai` VALUES (370, '女', NULL);
INSERT INTO `shoupai` VALUES (371, '女', NULL);
INSERT INTO `shoupai` VALUES (372, '女', NULL);
INSERT INTO `shoupai` VALUES (373, '女', NULL);
INSERT INTO `shoupai` VALUES (374, '女', NULL);
INSERT INTO `shoupai` VALUES (375, '女', NULL);
INSERT INTO `shoupai` VALUES (376, '女', NULL);
INSERT INTO `shoupai` VALUES (377, '女', NULL);
INSERT INTO `shoupai` VALUES (378, '女', NULL);
INSERT INTO `shoupai` VALUES (379, '女', NULL);
INSERT INTO `shoupai` VALUES (380, '女', NULL);
INSERT INTO `shoupai` VALUES (381, '女', NULL);
INSERT INTO `shoupai` VALUES (382, '女', NULL);
INSERT INTO `shoupai` VALUES (383, '女', NULL);
INSERT INTO `shoupai` VALUES (384, '女', NULL);
INSERT INTO `shoupai` VALUES (385, '女', NULL);
INSERT INTO `shoupai` VALUES (386, '女', NULL);
INSERT INTO `shoupai` VALUES (387, '女', NULL);
INSERT INTO `shoupai` VALUES (388, '女', NULL);
INSERT INTO `shoupai` VALUES (389, '女', NULL);
INSERT INTO `shoupai` VALUES (390, '女', NULL);
INSERT INTO `shoupai` VALUES (391, '女', NULL);
INSERT INTO `shoupai` VALUES (392, '女', NULL);
INSERT INTO `shoupai` VALUES (393, '女', NULL);
INSERT INTO `shoupai` VALUES (394, '女', NULL);
INSERT INTO `shoupai` VALUES (395, '女', NULL);
INSERT INTO `shoupai` VALUES (396, '女', NULL);
INSERT INTO `shoupai` VALUES (397, '女', NULL);
INSERT INTO `shoupai` VALUES (398, '女', NULL);
INSERT INTO `shoupai` VALUES (399, '女', NULL);
INSERT INTO `shoupai` VALUES (400, '女', NULL);
INSERT INTO `shoupai` VALUES (401, '女', NULL);
INSERT INTO `shoupai` VALUES (402, '女', NULL);
INSERT INTO `shoupai` VALUES (403, '女', NULL);
INSERT INTO `shoupai` VALUES (404, '女', NULL);
INSERT INTO `shoupai` VALUES (405, '女', NULL);
INSERT INTO `shoupai` VALUES (406, '女', NULL);
INSERT INTO `shoupai` VALUES (407, '女', NULL);
INSERT INTO `shoupai` VALUES (408, '女', NULL);
INSERT INTO `shoupai` VALUES (409, '女', NULL);
INSERT INTO `shoupai` VALUES (410, '女', NULL);
INSERT INTO `shoupai` VALUES (411, '女', NULL);
INSERT INTO `shoupai` VALUES (412, '女', NULL);
INSERT INTO `shoupai` VALUES (413, '女', NULL);
INSERT INTO `shoupai` VALUES (414, '女', NULL);
INSERT INTO `shoupai` VALUES (415, '女', NULL);
INSERT INTO `shoupai` VALUES (416, '女', NULL);
INSERT INTO `shoupai` VALUES (417, '女', NULL);
INSERT INTO `shoupai` VALUES (418, '女', NULL);
INSERT INTO `shoupai` VALUES (419, '女', NULL);
INSERT INTO `shoupai` VALUES (420, '女', NULL);
INSERT INTO `shoupai` VALUES (421, '女', NULL);
INSERT INTO `shoupai` VALUES (422, '女', NULL);
INSERT INTO `shoupai` VALUES (423, '女', NULL);
INSERT INTO `shoupai` VALUES (424, '女', NULL);
INSERT INTO `shoupai` VALUES (425, '女', NULL);
INSERT INTO `shoupai` VALUES (426, '女', NULL);
INSERT INTO `shoupai` VALUES (427, '女', NULL);
INSERT INTO `shoupai` VALUES (428, '女', NULL);
INSERT INTO `shoupai` VALUES (429, '女', NULL);
INSERT INTO `shoupai` VALUES (430, '女', NULL);
INSERT INTO `shoupai` VALUES (431, '女', NULL);
INSERT INTO `shoupai` VALUES (432, '女', NULL);
INSERT INTO `shoupai` VALUES (433, '女', NULL);
INSERT INTO `shoupai` VALUES (434, '女', NULL);
INSERT INTO `shoupai` VALUES (435, '女', NULL);
INSERT INTO `shoupai` VALUES (436, '女', NULL);
INSERT INTO `shoupai` VALUES (437, '女', NULL);
INSERT INTO `shoupai` VALUES (438, '女', NULL);
INSERT INTO `shoupai` VALUES (439, '女', NULL);
INSERT INTO `shoupai` VALUES (440, '女', NULL);
INSERT INTO `shoupai` VALUES (441, '女', NULL);
INSERT INTO `shoupai` VALUES (442, '女', NULL);
INSERT INTO `shoupai` VALUES (443, '女', NULL);
INSERT INTO `shoupai` VALUES (444, '女', NULL);
INSERT INTO `shoupai` VALUES (445, '女', NULL);
INSERT INTO `shoupai` VALUES (446, '女', NULL);
INSERT INTO `shoupai` VALUES (447, '女', NULL);
INSERT INTO `shoupai` VALUES (448, '女', NULL);
INSERT INTO `shoupai` VALUES (449, '女', NULL);
INSERT INTO `shoupai` VALUES (450, '女', NULL);
INSERT INTO `shoupai` VALUES (451, '女', NULL);
INSERT INTO `shoupai` VALUES (452, '女', NULL);
INSERT INTO `shoupai` VALUES (453, '女', NULL);
INSERT INTO `shoupai` VALUES (454, '女', NULL);
INSERT INTO `shoupai` VALUES (455, '女', NULL);
INSERT INTO `shoupai` VALUES (456, '女', NULL);
INSERT INTO `shoupai` VALUES (457, '女', NULL);
INSERT INTO `shoupai` VALUES (458, '女', NULL);
INSERT INTO `shoupai` VALUES (459, '女', NULL);
INSERT INTO `shoupai` VALUES (460, '女', NULL);
INSERT INTO `shoupai` VALUES (461, '女', NULL);
INSERT INTO `shoupai` VALUES (462, '女', NULL);
INSERT INTO `shoupai` VALUES (463, '女', NULL);
INSERT INTO `shoupai` VALUES (464, '女', NULL);
INSERT INTO `shoupai` VALUES (465, '女', NULL);
INSERT INTO `shoupai` VALUES (466, '女', NULL);
INSERT INTO `shoupai` VALUES (467, '女', NULL);
INSERT INTO `shoupai` VALUES (468, '女', NULL);
INSERT INTO `shoupai` VALUES (469, '女', NULL);
INSERT INTO `shoupai` VALUES (470, '女', NULL);
INSERT INTO `shoupai` VALUES (471, '女', NULL);
INSERT INTO `shoupai` VALUES (472, '女', NULL);
INSERT INTO `shoupai` VALUES (473, '女', NULL);
INSERT INTO `shoupai` VALUES (474, '女', NULL);
INSERT INTO `shoupai` VALUES (475, '女', NULL);
INSERT INTO `shoupai` VALUES (476, '女', NULL);
INSERT INTO `shoupai` VALUES (477, '女', NULL);
INSERT INTO `shoupai` VALUES (478, '女', NULL);
INSERT INTO `shoupai` VALUES (479, '女', NULL);
INSERT INTO `shoupai` VALUES (480, '女', NULL);
INSERT INTO `shoupai` VALUES (481, '女', NULL);
INSERT INTO `shoupai` VALUES (482, '女', NULL);
INSERT INTO `shoupai` VALUES (483, '女', NULL);
INSERT INTO `shoupai` VALUES (484, '女', NULL);
INSERT INTO `shoupai` VALUES (485, '女', NULL);
INSERT INTO `shoupai` VALUES (486, '女', NULL);
INSERT INTO `shoupai` VALUES (487, '女', NULL);
INSERT INTO `shoupai` VALUES (488, '女', NULL);
INSERT INTO `shoupai` VALUES (489, '女', NULL);
INSERT INTO `shoupai` VALUES (490, '女', NULL);
INSERT INTO `shoupai` VALUES (491, '女', NULL);
INSERT INTO `shoupai` VALUES (492, '女', NULL);
INSERT INTO `shoupai` VALUES (493, '女', NULL);
INSERT INTO `shoupai` VALUES (494, '女', NULL);
INSERT INTO `shoupai` VALUES (495, '女', NULL);
INSERT INTO `shoupai` VALUES (496, '女', NULL);
INSERT INTO `shoupai` VALUES (497, '女', NULL);
INSERT INTO `shoupai` VALUES (498, '女', NULL);
INSERT INTO `shoupai` VALUES (499, '女', NULL);
INSERT INTO `shoupai` VALUES (500, '女', NULL);
INSERT INTO `shoupai` VALUES (501, '男', NULL);
INSERT INTO `shoupai` VALUES (502, '男', NULL);
INSERT INTO `shoupai` VALUES (503, '男', NULL);
INSERT INTO `shoupai` VALUES (504, '男', NULL);
INSERT INTO `shoupai` VALUES (505, '男', NULL);
INSERT INTO `shoupai` VALUES (506, '男', NULL);
INSERT INTO `shoupai` VALUES (507, '男', NULL);
INSERT INTO `shoupai` VALUES (508, '男', NULL);
INSERT INTO `shoupai` VALUES (509, '男', NULL);
INSERT INTO `shoupai` VALUES (510, '男', NULL);
INSERT INTO `shoupai` VALUES (511, '男', NULL);
INSERT INTO `shoupai` VALUES (512, '男', NULL);
INSERT INTO `shoupai` VALUES (513, '男', NULL);
INSERT INTO `shoupai` VALUES (514, '男', NULL);
INSERT INTO `shoupai` VALUES (515, '男', NULL);
INSERT INTO `shoupai` VALUES (516, '男', NULL);
INSERT INTO `shoupai` VALUES (517, '男', NULL);
INSERT INTO `shoupai` VALUES (518, '男', NULL);
INSERT INTO `shoupai` VALUES (519, '男', NULL);
INSERT INTO `shoupai` VALUES (520, '男', NULL);
INSERT INTO `shoupai` VALUES (521, '男', NULL);
INSERT INTO `shoupai` VALUES (522, '男', NULL);
INSERT INTO `shoupai` VALUES (523, '男', NULL);
INSERT INTO `shoupai` VALUES (524, '男', NULL);
INSERT INTO `shoupai` VALUES (525, '男', NULL);
INSERT INTO `shoupai` VALUES (526, '男', NULL);
INSERT INTO `shoupai` VALUES (527, '男', NULL);
INSERT INTO `shoupai` VALUES (528, '男', NULL);
INSERT INTO `shoupai` VALUES (529, '男', NULL);
INSERT INTO `shoupai` VALUES (530, '男', NULL);
INSERT INTO `shoupai` VALUES (531, '男', NULL);
INSERT INTO `shoupai` VALUES (532, '男', NULL);
INSERT INTO `shoupai` VALUES (533, '男', NULL);
INSERT INTO `shoupai` VALUES (534, '男', NULL);
INSERT INTO `shoupai` VALUES (535, '男', NULL);
INSERT INTO `shoupai` VALUES (536, '男', NULL);
INSERT INTO `shoupai` VALUES (537, '男', NULL);
INSERT INTO `shoupai` VALUES (538, '男', NULL);
INSERT INTO `shoupai` VALUES (539, '男', NULL);
INSERT INTO `shoupai` VALUES (540, '男', NULL);
INSERT INTO `shoupai` VALUES (541, '男', NULL);
INSERT INTO `shoupai` VALUES (542, '男', NULL);
INSERT INTO `shoupai` VALUES (543, '男', NULL);
INSERT INTO `shoupai` VALUES (544, '男', NULL);
INSERT INTO `shoupai` VALUES (545, '男', NULL);
INSERT INTO `shoupai` VALUES (546, '男', NULL);
INSERT INTO `shoupai` VALUES (547, '男', NULL);
INSERT INTO `shoupai` VALUES (548, '男', NULL);
INSERT INTO `shoupai` VALUES (549, '男', NULL);
INSERT INTO `shoupai` VALUES (550, '男', NULL);
INSERT INTO `shoupai` VALUES (551, '男', NULL);
INSERT INTO `shoupai` VALUES (552, '男', NULL);
INSERT INTO `shoupai` VALUES (553, '男', NULL);
INSERT INTO `shoupai` VALUES (554, '男', NULL);
INSERT INTO `shoupai` VALUES (555, '男', NULL);
INSERT INTO `shoupai` VALUES (556, '男', NULL);
INSERT INTO `shoupai` VALUES (557, '男', NULL);
INSERT INTO `shoupai` VALUES (558, '男', NULL);
INSERT INTO `shoupai` VALUES (559, '男', NULL);
INSERT INTO `shoupai` VALUES (560, '男', NULL);
INSERT INTO `shoupai` VALUES (561, '男', NULL);
INSERT INTO `shoupai` VALUES (562, '男', NULL);
INSERT INTO `shoupai` VALUES (563, '男', NULL);
INSERT INTO `shoupai` VALUES (564, '男', NULL);
INSERT INTO `shoupai` VALUES (565, '男', NULL);
INSERT INTO `shoupai` VALUES (566, '男', NULL);
INSERT INTO `shoupai` VALUES (567, '男', NULL);
INSERT INTO `shoupai` VALUES (568, '男', NULL);
INSERT INTO `shoupai` VALUES (569, '男', NULL);
INSERT INTO `shoupai` VALUES (570, '男', NULL);
INSERT INTO `shoupai` VALUES (571, '男', NULL);
INSERT INTO `shoupai` VALUES (572, '男', NULL);
INSERT INTO `shoupai` VALUES (573, '男', NULL);
INSERT INTO `shoupai` VALUES (574, '男', NULL);
INSERT INTO `shoupai` VALUES (575, '男', NULL);
INSERT INTO `shoupai` VALUES (576, '男', NULL);
INSERT INTO `shoupai` VALUES (577, '男', NULL);
INSERT INTO `shoupai` VALUES (578, '男', NULL);
INSERT INTO `shoupai` VALUES (579, '男', NULL);
INSERT INTO `shoupai` VALUES (580, '男', NULL);
INSERT INTO `shoupai` VALUES (581, '男', NULL);
INSERT INTO `shoupai` VALUES (582, '男', NULL);
INSERT INTO `shoupai` VALUES (583, '男', NULL);
INSERT INTO `shoupai` VALUES (584, '男', NULL);
INSERT INTO `shoupai` VALUES (585, '男', NULL);
INSERT INTO `shoupai` VALUES (586, '男', NULL);
INSERT INTO `shoupai` VALUES (587, '男', NULL);
INSERT INTO `shoupai` VALUES (588, '男', NULL);
INSERT INTO `shoupai` VALUES (589, '男', NULL);
INSERT INTO `shoupai` VALUES (590, '男', NULL);
INSERT INTO `shoupai` VALUES (591, '男', NULL);
INSERT INTO `shoupai` VALUES (592, '男', NULL);
INSERT INTO `shoupai` VALUES (593, '男', NULL);
INSERT INTO `shoupai` VALUES (594, '男', NULL);
INSERT INTO `shoupai` VALUES (595, '男', NULL);
INSERT INTO `shoupai` VALUES (596, '男', NULL);
INSERT INTO `shoupai` VALUES (597, '男', NULL);
INSERT INTO `shoupai` VALUES (598, '男', NULL);
INSERT INTO `shoupai` VALUES (599, '男', NULL);
INSERT INTO `shoupai` VALUES (600, '男', NULL);
INSERT INTO `shoupai` VALUES (601, '男', NULL);
INSERT INTO `shoupai` VALUES (602, '男', NULL);
INSERT INTO `shoupai` VALUES (603, '男', NULL);
INSERT INTO `shoupai` VALUES (604, '男', NULL);
INSERT INTO `shoupai` VALUES (605, '男', NULL);
INSERT INTO `shoupai` VALUES (606, '男', NULL);
INSERT INTO `shoupai` VALUES (607, '男', NULL);
INSERT INTO `shoupai` VALUES (608, '男', NULL);
INSERT INTO `shoupai` VALUES (609, '男', NULL);
INSERT INTO `shoupai` VALUES (610, '男', NULL);
INSERT INTO `shoupai` VALUES (611, '男', NULL);
INSERT INTO `shoupai` VALUES (612, '男', NULL);
INSERT INTO `shoupai` VALUES (613, '男', NULL);
INSERT INTO `shoupai` VALUES (614, '男', NULL);
INSERT INTO `shoupai` VALUES (615, '男', NULL);
INSERT INTO `shoupai` VALUES (616, '男', NULL);
INSERT INTO `shoupai` VALUES (617, '男', NULL);
INSERT INTO `shoupai` VALUES (618, '男', NULL);
INSERT INTO `shoupai` VALUES (619, '男', NULL);
INSERT INTO `shoupai` VALUES (620, '男', NULL);
INSERT INTO `shoupai` VALUES (621, '男', NULL);
INSERT INTO `shoupai` VALUES (622, '男', NULL);
INSERT INTO `shoupai` VALUES (623, '男', NULL);
INSERT INTO `shoupai` VALUES (624, '男', NULL);
INSERT INTO `shoupai` VALUES (625, '男', NULL);
INSERT INTO `shoupai` VALUES (626, '男', NULL);
INSERT INTO `shoupai` VALUES (627, '男', NULL);
INSERT INTO `shoupai` VALUES (628, '男', NULL);
INSERT INTO `shoupai` VALUES (629, '男', NULL);
INSERT INTO `shoupai` VALUES (630, '男', NULL);
INSERT INTO `shoupai` VALUES (631, '男', NULL);
INSERT INTO `shoupai` VALUES (632, '男', NULL);
INSERT INTO `shoupai` VALUES (633, '男', NULL);
INSERT INTO `shoupai` VALUES (634, '男', NULL);
INSERT INTO `shoupai` VALUES (635, '男', NULL);
INSERT INTO `shoupai` VALUES (636, '男', NULL);
INSERT INTO `shoupai` VALUES (637, '男', NULL);
INSERT INTO `shoupai` VALUES (638, '男', NULL);
INSERT INTO `shoupai` VALUES (639, '男', NULL);
INSERT INTO `shoupai` VALUES (640, '男', NULL);
INSERT INTO `shoupai` VALUES (641, '男', NULL);
INSERT INTO `shoupai` VALUES (642, '男', NULL);
INSERT INTO `shoupai` VALUES (643, '男', NULL);
INSERT INTO `shoupai` VALUES (644, '男', NULL);
INSERT INTO `shoupai` VALUES (645, '男', NULL);
INSERT INTO `shoupai` VALUES (646, '男', NULL);
INSERT INTO `shoupai` VALUES (647, '男', NULL);
INSERT INTO `shoupai` VALUES (648, '男', NULL);
INSERT INTO `shoupai` VALUES (649, '男', NULL);
INSERT INTO `shoupai` VALUES (650, '男', NULL);
INSERT INTO `shoupai` VALUES (651, '男', NULL);
INSERT INTO `shoupai` VALUES (652, '男', NULL);
INSERT INTO `shoupai` VALUES (653, '男', NULL);
INSERT INTO `shoupai` VALUES (654, '男', NULL);
INSERT INTO `shoupai` VALUES (655, '男', NULL);
INSERT INTO `shoupai` VALUES (656, '男', NULL);
INSERT INTO `shoupai` VALUES (657, '男', NULL);
INSERT INTO `shoupai` VALUES (658, '男', NULL);
INSERT INTO `shoupai` VALUES (659, '男', NULL);
INSERT INTO `shoupai` VALUES (660, '男', NULL);
INSERT INTO `shoupai` VALUES (661, '男', NULL);
INSERT INTO `shoupai` VALUES (662, '男', NULL);
INSERT INTO `shoupai` VALUES (663, '男', NULL);
INSERT INTO `shoupai` VALUES (664, '男', NULL);
INSERT INTO `shoupai` VALUES (665, '男', NULL);
INSERT INTO `shoupai` VALUES (666, '男', NULL);
INSERT INTO `shoupai` VALUES (667, '男', NULL);
INSERT INTO `shoupai` VALUES (668, '男', NULL);
INSERT INTO `shoupai` VALUES (669, '男', NULL);
INSERT INTO `shoupai` VALUES (670, '男', NULL);
INSERT INTO `shoupai` VALUES (671, '男', NULL);
INSERT INTO `shoupai` VALUES (672, '男', NULL);
INSERT INTO `shoupai` VALUES (673, '男', NULL);
INSERT INTO `shoupai` VALUES (674, '男', NULL);
INSERT INTO `shoupai` VALUES (675, '男', NULL);
INSERT INTO `shoupai` VALUES (676, '男', NULL);
INSERT INTO `shoupai` VALUES (677, '男', NULL);
INSERT INTO `shoupai` VALUES (678, '男', NULL);
INSERT INTO `shoupai` VALUES (679, '男', NULL);
INSERT INTO `shoupai` VALUES (680, '男', NULL);
INSERT INTO `shoupai` VALUES (681, '男', NULL);
INSERT INTO `shoupai` VALUES (682, '男', NULL);
INSERT INTO `shoupai` VALUES (683, '男', NULL);
INSERT INTO `shoupai` VALUES (684, '男', NULL);
INSERT INTO `shoupai` VALUES (685, '男', NULL);
INSERT INTO `shoupai` VALUES (686, '男', NULL);
INSERT INTO `shoupai` VALUES (687, '男', NULL);
INSERT INTO `shoupai` VALUES (688, '男', NULL);
INSERT INTO `shoupai` VALUES (689, '男', NULL);
INSERT INTO `shoupai` VALUES (690, '男', NULL);
INSERT INTO `shoupai` VALUES (691, '男', NULL);
INSERT INTO `shoupai` VALUES (692, '男', NULL);
INSERT INTO `shoupai` VALUES (693, '男', NULL);
INSERT INTO `shoupai` VALUES (694, '男', NULL);
INSERT INTO `shoupai` VALUES (695, '男', NULL);
INSERT INTO `shoupai` VALUES (696, '男', NULL);
INSERT INTO `shoupai` VALUES (697, '男', NULL);
INSERT INTO `shoupai` VALUES (698, '男', NULL);
INSERT INTO `shoupai` VALUES (699, '男', NULL);
INSERT INTO `shoupai` VALUES (700, '男', NULL);
INSERT INTO `shoupai` VALUES (701, '男', NULL);
INSERT INTO `shoupai` VALUES (702, '男', NULL);
INSERT INTO `shoupai` VALUES (703, '男', NULL);
INSERT INTO `shoupai` VALUES (704, '男', NULL);
INSERT INTO `shoupai` VALUES (705, '男', NULL);
INSERT INTO `shoupai` VALUES (706, '男', NULL);
INSERT INTO `shoupai` VALUES (707, '男', NULL);
INSERT INTO `shoupai` VALUES (708, '男', NULL);
INSERT INTO `shoupai` VALUES (709, '男', NULL);
INSERT INTO `shoupai` VALUES (710, '男', NULL);
INSERT INTO `shoupai` VALUES (711, '男', NULL);
INSERT INTO `shoupai` VALUES (712, '男', NULL);
INSERT INTO `shoupai` VALUES (713, '男', NULL);
INSERT INTO `shoupai` VALUES (714, '男', NULL);
INSERT INTO `shoupai` VALUES (715, '男', NULL);
INSERT INTO `shoupai` VALUES (716, '男', NULL);
INSERT INTO `shoupai` VALUES (717, '男', NULL);
INSERT INTO `shoupai` VALUES (718, '男', NULL);
INSERT INTO `shoupai` VALUES (719, '男', NULL);
INSERT INTO `shoupai` VALUES (720, '男', NULL);
INSERT INTO `shoupai` VALUES (721, '男', NULL);
INSERT INTO `shoupai` VALUES (722, '男', NULL);
INSERT INTO `shoupai` VALUES (723, '男', NULL);
INSERT INTO `shoupai` VALUES (724, '男', NULL);
INSERT INTO `shoupai` VALUES (725, '男', NULL);
INSERT INTO `shoupai` VALUES (726, '男', NULL);
INSERT INTO `shoupai` VALUES (727, '男', NULL);
INSERT INTO `shoupai` VALUES (728, '男', NULL);
INSERT INTO `shoupai` VALUES (729, '男', NULL);
INSERT INTO `shoupai` VALUES (730, '男', NULL);
INSERT INTO `shoupai` VALUES (731, '男', NULL);
INSERT INTO `shoupai` VALUES (732, '男', NULL);
INSERT INTO `shoupai` VALUES (733, '男', NULL);
INSERT INTO `shoupai` VALUES (734, '男', NULL);
INSERT INTO `shoupai` VALUES (735, '男', NULL);
INSERT INTO `shoupai` VALUES (736, '男', NULL);
INSERT INTO `shoupai` VALUES (737, '男', NULL);
INSERT INTO `shoupai` VALUES (738, '男', NULL);
INSERT INTO `shoupai` VALUES (739, '男', NULL);
INSERT INTO `shoupai` VALUES (740, '男', NULL);
INSERT INTO `shoupai` VALUES (741, '男', NULL);
INSERT INTO `shoupai` VALUES (742, '男', NULL);
INSERT INTO `shoupai` VALUES (743, '男', NULL);
INSERT INTO `shoupai` VALUES (744, '男', NULL);
INSERT INTO `shoupai` VALUES (745, '男', NULL);
INSERT INTO `shoupai` VALUES (746, '男', NULL);
INSERT INTO `shoupai` VALUES (747, '男', NULL);
INSERT INTO `shoupai` VALUES (748, '男', NULL);
INSERT INTO `shoupai` VALUES (749, '男', NULL);
INSERT INTO `shoupai` VALUES (750, '男', NULL);
INSERT INTO `shoupai` VALUES (751, '男', NULL);
INSERT INTO `shoupai` VALUES (752, '男', NULL);
INSERT INTO `shoupai` VALUES (753, '男', NULL);
INSERT INTO `shoupai` VALUES (754, '男', NULL);
INSERT INTO `shoupai` VALUES (755, '男', NULL);
INSERT INTO `shoupai` VALUES (756, '男', NULL);
INSERT INTO `shoupai` VALUES (757, '男', NULL);
INSERT INTO `shoupai` VALUES (758, '男', NULL);
INSERT INTO `shoupai` VALUES (759, '男', NULL);
INSERT INTO `shoupai` VALUES (760, '男', NULL);
INSERT INTO `shoupai` VALUES (761, '男', NULL);
INSERT INTO `shoupai` VALUES (762, '男', NULL);
INSERT INTO `shoupai` VALUES (763, '男', NULL);
INSERT INTO `shoupai` VALUES (764, '男', NULL);
INSERT INTO `shoupai` VALUES (765, '男', NULL);
INSERT INTO `shoupai` VALUES (766, '男', NULL);
INSERT INTO `shoupai` VALUES (767, '男', NULL);
INSERT INTO `shoupai` VALUES (768, '男', NULL);
INSERT INTO `shoupai` VALUES (769, '男', NULL);
INSERT INTO `shoupai` VALUES (770, '男', NULL);
INSERT INTO `shoupai` VALUES (771, '男', NULL);
INSERT INTO `shoupai` VALUES (772, '男', NULL);
INSERT INTO `shoupai` VALUES (773, '男', NULL);
INSERT INTO `shoupai` VALUES (774, '男', NULL);
INSERT INTO `shoupai` VALUES (775, '男', NULL);
INSERT INTO `shoupai` VALUES (776, '男', NULL);
INSERT INTO `shoupai` VALUES (777, '男', NULL);
INSERT INTO `shoupai` VALUES (778, '男', NULL);
INSERT INTO `shoupai` VALUES (779, '男', NULL);
INSERT INTO `shoupai` VALUES (780, '男', NULL);
INSERT INTO `shoupai` VALUES (781, '男', NULL);
INSERT INTO `shoupai` VALUES (782, '男', NULL);
INSERT INTO `shoupai` VALUES (783, '男', NULL);
INSERT INTO `shoupai` VALUES (784, '男', NULL);
INSERT INTO `shoupai` VALUES (785, '男', NULL);
INSERT INTO `shoupai` VALUES (786, '男', NULL);
INSERT INTO `shoupai` VALUES (787, '男', NULL);
INSERT INTO `shoupai` VALUES (788, '男', NULL);
INSERT INTO `shoupai` VALUES (789, '男', NULL);
INSERT INTO `shoupai` VALUES (790, '男', NULL);
INSERT INTO `shoupai` VALUES (791, '男', NULL);
INSERT INTO `shoupai` VALUES (792, '男', NULL);
INSERT INTO `shoupai` VALUES (793, '男', NULL);
INSERT INTO `shoupai` VALUES (794, '男', NULL);
INSERT INTO `shoupai` VALUES (795, '男', NULL);
INSERT INTO `shoupai` VALUES (796, '男', NULL);
INSERT INTO `shoupai` VALUES (797, '男', NULL);
INSERT INTO `shoupai` VALUES (798, '男', NULL);
INSERT INTO `shoupai` VALUES (799, '男', NULL);
INSERT INTO `shoupai` VALUES (800, '男', NULL);
INSERT INTO `shoupai` VALUES (801, '男', NULL);
INSERT INTO `shoupai` VALUES (802, '男', NULL);
INSERT INTO `shoupai` VALUES (803, '男', NULL);
INSERT INTO `shoupai` VALUES (804, '男', NULL);
INSERT INTO `shoupai` VALUES (805, '男', NULL);
INSERT INTO `shoupai` VALUES (806, '男', NULL);
INSERT INTO `shoupai` VALUES (807, '男', NULL);
INSERT INTO `shoupai` VALUES (808, '男', NULL);
INSERT INTO `shoupai` VALUES (809, '男', NULL);
INSERT INTO `shoupai` VALUES (810, '男', NULL);
INSERT INTO `shoupai` VALUES (811, '男', NULL);
INSERT INTO `shoupai` VALUES (812, '男', NULL);
INSERT INTO `shoupai` VALUES (813, '男', NULL);
INSERT INTO `shoupai` VALUES (814, '男', NULL);
INSERT INTO `shoupai` VALUES (815, '男', NULL);
INSERT INTO `shoupai` VALUES (816, '男', NULL);
INSERT INTO `shoupai` VALUES (817, '男', NULL);
INSERT INTO `shoupai` VALUES (818, '男', NULL);
INSERT INTO `shoupai` VALUES (819, '男', NULL);
INSERT INTO `shoupai` VALUES (820, '男', NULL);
INSERT INTO `shoupai` VALUES (821, '男', NULL);
INSERT INTO `shoupai` VALUES (822, '男', NULL);
INSERT INTO `shoupai` VALUES (823, '男', NULL);
INSERT INTO `shoupai` VALUES (824, '男', NULL);
INSERT INTO `shoupai` VALUES (825, '男', NULL);
INSERT INTO `shoupai` VALUES (826, '男', NULL);
INSERT INTO `shoupai` VALUES (827, '男', NULL);
INSERT INTO `shoupai` VALUES (828, '男', NULL);
INSERT INTO `shoupai` VALUES (829, '男', NULL);
INSERT INTO `shoupai` VALUES (830, '男', NULL);
INSERT INTO `shoupai` VALUES (831, '男', NULL);
INSERT INTO `shoupai` VALUES (832, '男', NULL);
INSERT INTO `shoupai` VALUES (833, '男', NULL);
INSERT INTO `shoupai` VALUES (834, '男', NULL);
INSERT INTO `shoupai` VALUES (835, '男', NULL);
INSERT INTO `shoupai` VALUES (836, '男', NULL);
INSERT INTO `shoupai` VALUES (837, '男', NULL);
INSERT INTO `shoupai` VALUES (838, '男', NULL);
INSERT INTO `shoupai` VALUES (839, '男', NULL);
INSERT INTO `shoupai` VALUES (840, '男', NULL);
INSERT INTO `shoupai` VALUES (841, '男', NULL);
INSERT INTO `shoupai` VALUES (842, '男', NULL);
INSERT INTO `shoupai` VALUES (843, '男', NULL);
INSERT INTO `shoupai` VALUES (844, '男', NULL);
INSERT INTO `shoupai` VALUES (845, '男', NULL);
INSERT INTO `shoupai` VALUES (846, '男', NULL);
INSERT INTO `shoupai` VALUES (847, '男', NULL);
INSERT INTO `shoupai` VALUES (848, '男', NULL);
INSERT INTO `shoupai` VALUES (849, '男', NULL);
INSERT INTO `shoupai` VALUES (850, '男', NULL);
INSERT INTO `shoupai` VALUES (851, '男', NULL);
INSERT INTO `shoupai` VALUES (852, '男', NULL);
INSERT INTO `shoupai` VALUES (853, '男', NULL);
INSERT INTO `shoupai` VALUES (854, '男', NULL);
INSERT INTO `shoupai` VALUES (855, '男', NULL);
INSERT INTO `shoupai` VALUES (856, '男', NULL);
INSERT INTO `shoupai` VALUES (857, '男', NULL);
INSERT INTO `shoupai` VALUES (858, '男', NULL);
INSERT INTO `shoupai` VALUES (859, '男', NULL);
INSERT INTO `shoupai` VALUES (860, '男', NULL);
INSERT INTO `shoupai` VALUES (861, '男', NULL);
INSERT INTO `shoupai` VALUES (862, '男', NULL);
INSERT INTO `shoupai` VALUES (863, '男', NULL);
INSERT INTO `shoupai` VALUES (864, '男', NULL);
INSERT INTO `shoupai` VALUES (865, '男', NULL);
INSERT INTO `shoupai` VALUES (866, '男', NULL);
INSERT INTO `shoupai` VALUES (867, '男', NULL);
INSERT INTO `shoupai` VALUES (868, '男', NULL);
INSERT INTO `shoupai` VALUES (869, '男', NULL);
INSERT INTO `shoupai` VALUES (870, '男', NULL);
INSERT INTO `shoupai` VALUES (871, '男', NULL);
INSERT INTO `shoupai` VALUES (872, '男', NULL);
INSERT INTO `shoupai` VALUES (873, '男', NULL);
INSERT INTO `shoupai` VALUES (874, '男', NULL);
INSERT INTO `shoupai` VALUES (875, '男', NULL);
INSERT INTO `shoupai` VALUES (876, '男', NULL);
INSERT INTO `shoupai` VALUES (877, '男', NULL);
INSERT INTO `shoupai` VALUES (878, '男', NULL);
INSERT INTO `shoupai` VALUES (879, '男', NULL);
INSERT INTO `shoupai` VALUES (880, '男', NULL);
INSERT INTO `shoupai` VALUES (881, '男', NULL);
INSERT INTO `shoupai` VALUES (882, '男', NULL);
INSERT INTO `shoupai` VALUES (883, '男', NULL);
INSERT INTO `shoupai` VALUES (884, '男', NULL);
INSERT INTO `shoupai` VALUES (885, '男', NULL);
INSERT INTO `shoupai` VALUES (886, '男', NULL);
INSERT INTO `shoupai` VALUES (887, '男', NULL);
INSERT INTO `shoupai` VALUES (888, '男', NULL);
INSERT INTO `shoupai` VALUES (889, '男', NULL);
INSERT INTO `shoupai` VALUES (890, '男', NULL);
INSERT INTO `shoupai` VALUES (891, '男', NULL);
INSERT INTO `shoupai` VALUES (892, '男', NULL);
INSERT INTO `shoupai` VALUES (893, '男', NULL);
INSERT INTO `shoupai` VALUES (894, '男', NULL);
INSERT INTO `shoupai` VALUES (895, '男', NULL);
INSERT INTO `shoupai` VALUES (896, '男', NULL);
INSERT INTO `shoupai` VALUES (897, '男', NULL);
INSERT INTO `shoupai` VALUES (898, '男', NULL);
INSERT INTO `shoupai` VALUES (899, '男', NULL);
INSERT INTO `shoupai` VALUES (900, '男', NULL);
INSERT INTO `shoupai` VALUES (901, '男', NULL);
INSERT INTO `shoupai` VALUES (902, '男', NULL);
INSERT INTO `shoupai` VALUES (903, '男', NULL);
INSERT INTO `shoupai` VALUES (904, '男', NULL);
INSERT INTO `shoupai` VALUES (905, '男', NULL);
INSERT INTO `shoupai` VALUES (906, '男', NULL);
INSERT INTO `shoupai` VALUES (907, '男', NULL);
INSERT INTO `shoupai` VALUES (908, '男', NULL);
INSERT INTO `shoupai` VALUES (909, '男', NULL);
INSERT INTO `shoupai` VALUES (910, '男', NULL);
INSERT INTO `shoupai` VALUES (911, '男', NULL);
INSERT INTO `shoupai` VALUES (912, '男', NULL);
INSERT INTO `shoupai` VALUES (913, '男', NULL);
INSERT INTO `shoupai` VALUES (914, '男', NULL);
INSERT INTO `shoupai` VALUES (915, '男', NULL);
INSERT INTO `shoupai` VALUES (916, '男', NULL);
INSERT INTO `shoupai` VALUES (917, '男', NULL);
INSERT INTO `shoupai` VALUES (918, '男', NULL);
INSERT INTO `shoupai` VALUES (919, '男', NULL);
INSERT INTO `shoupai` VALUES (920, '男', NULL);
INSERT INTO `shoupai` VALUES (921, '男', NULL);
INSERT INTO `shoupai` VALUES (922, '男', NULL);
INSERT INTO `shoupai` VALUES (923, '男', NULL);
INSERT INTO `shoupai` VALUES (924, '男', NULL);
INSERT INTO `shoupai` VALUES (925, '男', NULL);
INSERT INTO `shoupai` VALUES (926, '男', NULL);
INSERT INTO `shoupai` VALUES (927, '男', NULL);
INSERT INTO `shoupai` VALUES (928, '男', NULL);
INSERT INTO `shoupai` VALUES (929, '男', NULL);
INSERT INTO `shoupai` VALUES (930, '男', NULL);
INSERT INTO `shoupai` VALUES (931, '男', NULL);
INSERT INTO `shoupai` VALUES (932, '男', NULL);
INSERT INTO `shoupai` VALUES (933, '男', NULL);
INSERT INTO `shoupai` VALUES (934, '男', NULL);
INSERT INTO `shoupai` VALUES (935, '男', NULL);
INSERT INTO `shoupai` VALUES (936, '男', NULL);
INSERT INTO `shoupai` VALUES (937, '男', NULL);
INSERT INTO `shoupai` VALUES (938, '男', NULL);
INSERT INTO `shoupai` VALUES (939, '男', NULL);
INSERT INTO `shoupai` VALUES (940, '男', NULL);
INSERT INTO `shoupai` VALUES (941, '男', NULL);
INSERT INTO `shoupai` VALUES (942, '男', NULL);
INSERT INTO `shoupai` VALUES (943, '男', NULL);
INSERT INTO `shoupai` VALUES (944, '男', NULL);
INSERT INTO `shoupai` VALUES (945, '男', NULL);
INSERT INTO `shoupai` VALUES (946, '男', NULL);
INSERT INTO `shoupai` VALUES (947, '男', NULL);
INSERT INTO `shoupai` VALUES (948, '男', NULL);
INSERT INTO `shoupai` VALUES (949, '男', NULL);
INSERT INTO `shoupai` VALUES (950, '男', NULL);
INSERT INTO `shoupai` VALUES (951, '男', NULL);
INSERT INTO `shoupai` VALUES (952, '男', NULL);
INSERT INTO `shoupai` VALUES (953, '男', NULL);
INSERT INTO `shoupai` VALUES (954, '男', NULL);
INSERT INTO `shoupai` VALUES (955, '男', NULL);
INSERT INTO `shoupai` VALUES (956, '男', NULL);
INSERT INTO `shoupai` VALUES (957, '男', NULL);
INSERT INTO `shoupai` VALUES (958, '男', NULL);
INSERT INTO `shoupai` VALUES (959, '男', NULL);
INSERT INTO `shoupai` VALUES (960, '男', NULL);
INSERT INTO `shoupai` VALUES (961, '男', NULL);
INSERT INTO `shoupai` VALUES (962, '男', NULL);
INSERT INTO `shoupai` VALUES (963, '男', NULL);
INSERT INTO `shoupai` VALUES (964, '男', NULL);
INSERT INTO `shoupai` VALUES (965, '男', NULL);
INSERT INTO `shoupai` VALUES (966, '男', NULL);
INSERT INTO `shoupai` VALUES (967, '男', NULL);
INSERT INTO `shoupai` VALUES (968, '男', NULL);
INSERT INTO `shoupai` VALUES (969, '男', NULL);
INSERT INTO `shoupai` VALUES (970, '男', NULL);
INSERT INTO `shoupai` VALUES (971, '男', NULL);
INSERT INTO `shoupai` VALUES (972, '男', NULL);
INSERT INTO `shoupai` VALUES (973, '男', NULL);
INSERT INTO `shoupai` VALUES (974, '男', NULL);
INSERT INTO `shoupai` VALUES (975, '男', NULL);
INSERT INTO `shoupai` VALUES (976, '男', NULL);
INSERT INTO `shoupai` VALUES (977, '男', NULL);
INSERT INTO `shoupai` VALUES (978, '男', NULL);
INSERT INTO `shoupai` VALUES (979, '男', NULL);
INSERT INTO `shoupai` VALUES (980, '男', NULL);
INSERT INTO `shoupai` VALUES (981, '男', NULL);
INSERT INTO `shoupai` VALUES (982, '男', NULL);
INSERT INTO `shoupai` VALUES (983, '男', NULL);
INSERT INTO `shoupai` VALUES (984, '男', NULL);
INSERT INTO `shoupai` VALUES (985, '男', NULL);
INSERT INTO `shoupai` VALUES (986, '男', NULL);
INSERT INTO `shoupai` VALUES (987, '男', NULL);
INSERT INTO `shoupai` VALUES (988, '男', NULL);
INSERT INTO `shoupai` VALUES (989, '男', NULL);
INSERT INTO `shoupai` VALUES (990, '男', NULL);
INSERT INTO `shoupai` VALUES (991, '男', NULL);
INSERT INTO `shoupai` VALUES (992, '男', NULL);
INSERT INTO `shoupai` VALUES (993, '男', NULL);
INSERT INTO `shoupai` VALUES (994, '男', NULL);
INSERT INTO `shoupai` VALUES (995, '男', NULL);
INSERT INTO `shoupai` VALUES (996, '男', NULL);
INSERT INTO `shoupai` VALUES (997, '男', NULL);
INSERT INTO `shoupai` VALUES (998, '男', NULL);
INSERT INTO `shoupai` VALUES (999, '男', NULL);
INSERT INTO `shoupai` VALUES (1000, '男', NULL);
COMMIT;

-- ----------------------------
-- Table structure for xiangmu
-- ----------------------------
DROP TABLE IF EXISTS `xiangmu`;
CREATE TABLE `xiangmu` (
  `xiangmu_id` int(255) NOT NULL,
  `xiangmuming` varchar(255) NOT NULL,
  `xiangmujianjie` varchar(255) DEFAULT NULL,
  `xiangmujiage` decimal(65,0) NOT NULL,
  `shanchangjishi` varchar(255) DEFAULT NULL,
  `suoshufanwei` varchar(255) NOT NULL,
  PRIMARY KEY (`xiangmu_id`) USING BTREE,
  KEY `xiangmujiage` (`xiangmujiage`),
  KEY `xiangmuming` (`xiangmuming`),
  KEY `xiangmuming_2` (`xiangmuming`,`suoshufanwei`),
  KEY `xiangmuming_3` (`xiangmuming`,`xiangmujiage`),
  KEY `xiangmujianjie` (`xiangmujianjie`),
  KEY `xiangmujianjie_2` (`xiangmujianjie`,`xiangmuming`),
  KEY `xiangmujiage_2` (`xiangmujiage`,`xiangmu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xiangmu
-- ----------------------------
BEGIN;
INSERT INTO `xiangmu` VALUES (1, '中医推拿', NULL, 100, '郑兰', '按摩');
INSERT INTO `xiangmu` VALUES (2, '全身SPA', NULL, 200, '紫灰', '助浴');
INSERT INTO `xiangmu` VALUES (3, '全身理疗', NULL, 150, '肖南', '按摩');
INSERT INTO `xiangmu` VALUES (4, '头疗', NULL, 68, '周红', '按摩');
INSERT INTO `xiangmu` VALUES (5, '姜汁头道', NULL, 38, '赵六', '助浴');
INSERT INTO `xiangmu` VALUES (6, '局部按摩', NULL, 128, '钟橙', '按摩');
INSERT INTO `xiangmu` VALUES (7, '扬州搓澡', NULL, 35, '张三', '助浴');
INSERT INTO `xiangmu` VALUES (8, '正骨', NULL, 98, '任北', '按摩');
INSERT INTO `xiangmu` VALUES (9, '泰式按摩', NULL, 168, '毕东', '按摩');
INSERT INTO `xiangmu` VALUES (10, '海盐浴', NULL, 78, '青橘', '助浴');
INSERT INTO `xiangmu` VALUES (11, '火山泥', NULL, 56, '王五', '助浴');
INSERT INTO `xiangmu` VALUES (12, '火罐', NULL, 48, '吴白', '按摩');
INSERT INTO `xiangmu` VALUES (13, '牛奶浴', NULL, 52, '孙七', '助浴');
INSERT INTO `xiangmu` VALUES (14, '玫瑰浴盐', NULL, 88, '白蓝', '助浴');
INSERT INTO `xiangmu` VALUES (15, '精油开背', NULL, 32, '蓝粉', '助浴');
INSERT INTO `xiangmu` VALUES (16, '艾灸', NULL, 77, '路紫', '按摩');
INSERT INTO `xiangmu` VALUES (17, '芦荟美体', NULL, 118, '李四', '助浴');
INSERT INTO `xiangmu` VALUES (18, '足疗', NULL, 99, '胡啦', '按摩');
INSERT INTO `xiangmu` VALUES (19, '醋搓', NULL, 30, '黄绿', '助浴');
INSERT INTO `xiangmu` VALUES (20, '针灸', NULL, 280, '易西', '按摩');
COMMIT;

-- ----------------------------
-- Table structure for zhangdan
-- ----------------------------
DROP TABLE IF EXISTS `zhangdan`;
CREATE TABLE `zhangdan` (
  `bianhao` int(255) NOT NULL AUTO_INCREMENT,
  `shoupaihao` int(11) NOT NULL,
  `kaipai` int(1) DEFAULT NULL,
  `xingbie` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `kaipaishijian` datetime NOT NULL,
  `xiaofeianmoxiangmu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xiaofeianmojine` decimal(65,0) DEFAULT NULL,
  `xiaofeiqitaanmoxiangmu` varchar(255) DEFAULT NULL,
  `xiaofeiqitaanmoxiangmujine` int(65) DEFAULT NULL,
  `xiaofeianmojishi` varchar(5) DEFAULT NULL,
  `xiaofeizhuyuxiangmu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xiaofeizhuyujine` int(65) DEFAULT NULL,
  `xiaofeiqitazhuyuxiangmu` varchar(255) DEFAULT NULL,
  `xiaofeiqitazhuyujine` int(65) DEFAULT NULL,
  `shifouwanjie` int(1) DEFAULT NULL,
  `xiaofeizhuyujishi` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `weishengpingjia` int(1) DEFAULT NULL,
  `anmojishipingjia` int(1) DEFAULT NULL,
  `zhuyujishipingjia` int(1) DEFAULT NULL,
  `zhuyuxiangmupingjia` int(1) DEFAULT NULL,
  `anmoxiangmupingjia` int(1) DEFAULT NULL,
  `fuwupingjia` int(1) DEFAULT NULL,
  `lidianshijian` datetime DEFAULT NULL,
  `zhangdanzonge` int(65) DEFAULT NULL,
  `jiezhangfangshi` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`bianhao`) USING BTREE,
  KEY `kaipai` (`kaipai`),
  KEY `xingbie` (`xingbie`),
  KEY `xiangmu` (`xiaofeizhuyuxiangmu`,`xiaofeianmoxiangmu`),
  KEY `jine` (`xiaofeianmojine`,`xiaofeizhuyujine`) USING BTREE,
  KEY `shoupai` (`shoupaihao`),
  KEY `xiangmuanmo1` (`xiaofeianmoxiangmu`),
  KEY `xiangmuanmo2` (`xiaofeiqitaanmoxiangmu`),
  KEY `xiangmuzhuyu2` (`xiaofeiqitazhuyuxiangmu`),
  KEY `jineanmo2` (`xiaofeiqitaanmoxiangmujine`),
  KEY `jinezhuyu1` (`xiaofeizhuyujine`),
  KEY `jinezhuyu2` (`xiaofeiqitazhuyujine`),
  KEY `anmojishi` (`xiaofeianmojishi`),
  KEY `zhuyujishi` (`xiaofeizhuyujishi`),
  CONSTRAINT `anmojishi` FOREIGN KEY (`xiaofeianmojishi`) REFERENCES `jishi` (`jishi`),
  CONSTRAINT `shoupai` FOREIGN KEY (`shoupaihao`) REFERENCES `shoupai` (`shoupaihao`),
  CONSTRAINT `xiangmuanmo1` FOREIGN KEY (`xiaofeianmoxiangmu`) REFERENCES `xiangmu` (`xiangmuming`),
  CONSTRAINT `xiangmuanmo2` FOREIGN KEY (`xiaofeiqitaanmoxiangmu`) REFERENCES `xiangmu` (`xiangmuming`),
  CONSTRAINT `xiangmuzhuyu1` FOREIGN KEY (`xiaofeizhuyuxiangmu`) REFERENCES `xiangmu` (`xiangmuming`),
  CONSTRAINT `xiangmuzhuyu2` FOREIGN KEY (`xiaofeiqitazhuyuxiangmu`) REFERENCES `xiangmu` (`xiangmuming`),
  CONSTRAINT `zhuyujishi` FOREIGN KEY (`xiaofeizhuyujishi`) REFERENCES `jishi` (`jishi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhangdan
-- ----------------------------
BEGIN;
INSERT INTO `zhangdan` VALUES (3, 123, NULL, '女', '2020-04-17 06:56:00.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for zhangdan_huiyuan
-- ----------------------------
DROP TABLE IF EXISTS `zhangdan_huiyuan`;
CREATE TABLE `zhangdan_huiyuan` (
  `bianhao` int(255) NOT NULL AUTO_INCREMENT,
  `shoupaihao` int(11) NOT NULL,
  `kaipai` int(1) DEFAULT NULL,
  `menpiao` int(65) DEFAULT NULL,
  `xingbie` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `kaipaishijian` datetime NOT NULL,
  `huiyuankahao` int(255) DEFAULT NULL,
  `huiyuankaleixing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `huiyuankayue` int(65) DEFAULT NULL,
  `xiaofeianmoxiangmu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xiaofeianmojine` int(65) DEFAULT NULL,
  `xiaofeiqitaanmoxiangmu` varchar(255) DEFAULT NULL,
  `xiaofeiqitaanmoxiangmujine` int(65) DEFAULT NULL,
  `xiaofeianmojishi` varchar(5) DEFAULT NULL,
  `xiaofeizhuyuxiangmu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xiaofeizhuyujine` int(65) DEFAULT NULL,
  `xiaofeiqitazhuyuxiangmu` varchar(255) DEFAULT NULL,
  `xiaofeiqitazhuyujine` int(65) DEFAULT NULL,
  `xiaofeizhuyujishi` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `weishengpingjia` int(1) DEFAULT NULL,
  `anmojishipingjia` int(1) DEFAULT NULL,
  `zhuyujishipingjia` int(1) DEFAULT NULL,
  `zhuyuxiangmupingjia` int(1) DEFAULT NULL,
  `anmoxiangmupingjia` int(1) DEFAULT NULL,
  `fuwupingjia` int(1) DEFAULT NULL,
  `zhangdanzonge` decimal(65,0) DEFAULT NULL,
  `youhuijine` decimal(65,0) DEFAULT NULL,
  `qita` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lidianshijian` datetime DEFAULT NULL,
  PRIMARY KEY (`bianhao`) USING BTREE,
  KEY `kaipai` (`kaipai`),
  KEY `xingbie` (`xingbie`),
  KEY `xiangmu` (`xiaofeizhuyuxiangmu`,`xiaofeianmoxiangmu`),
  KEY `jine` (`xiaofeianmojine`,`xiaofeizhuyujine`) USING BTREE,
  KEY `shoupai` (`shoupaihao`),
  KEY `xiangmuanmo1` (`xiaofeianmoxiangmu`),
  KEY `xiangmuanmo2` (`xiaofeiqitaanmoxiangmu`),
  KEY `xiangmuzhuyu2` (`xiaofeiqitazhuyuxiangmu`),
  KEY `jineanmo2` (`xiaofeiqitaanmoxiangmujine`),
  KEY `jinezhuyu1` (`xiaofeizhuyujine`),
  KEY `jinezhuyu2` (`xiaofeiqitazhuyujine`),
  KEY `anmojishi` (`xiaofeianmojishi`),
  KEY `zhuyujishi` (`xiaofeizhuyujishi`),
  KEY `huiyuankahao` (`huiyuankahao`),
  CONSTRAINT `zhangdan_huiyuan_ibfk_1` FOREIGN KEY (`xiaofeianmojishi`) REFERENCES `jishi` (`jishi`),
  CONSTRAINT `zhangdan_huiyuan_ibfk_10` FOREIGN KEY (`xiaofeiqitazhuyuxiangmu`) REFERENCES `xiangmu` (`xiangmuming`),
  CONSTRAINT `zhangdan_huiyuan_ibfk_12` FOREIGN KEY (`xiaofeizhuyujishi`) REFERENCES `jishi` (`jishi`),
  CONSTRAINT `zhangdan_huiyuan_ibfk_13` FOREIGN KEY (`huiyuankahao`) REFERENCES `huiyuan` (`huiyuankahao`),
  CONSTRAINT `zhangdan_huiyuan_ibfk_6` FOREIGN KEY (`shoupaihao`) REFERENCES `shoupai` (`shoupaihao`),
  CONSTRAINT `zhangdan_huiyuan_ibfk_7` FOREIGN KEY (`xiaofeianmoxiangmu`) REFERENCES `xiangmu` (`xiangmuming`),
  CONSTRAINT `zhangdan_huiyuan_ibfk_8` FOREIGN KEY (`xiaofeiqitaanmoxiangmu`) REFERENCES `xiangmu` (`xiangmuming`),
  CONSTRAINT `zhangdan_huiyuan_ibfk_9` FOREIGN KEY (`xiaofeizhuyuxiangmu`) REFERENCES `xiangmu` (`xiangmuming`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhangdan_huiyuan
-- ----------------------------
BEGIN;
INSERT INTO `zhangdan_huiyuan` VALUES (1, 4, 1, NULL, '女', '2020-04-25 07:30:00.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `zhangdan_huiyuan` VALUES (5, 54, 1, NULL, '女', '2020-04-25 13:52:00.000000', NULL, '铂金卡', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
