/*
 Navicat Premium Dump SQL

 Source Server         : LocalHosty_MySQL
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : sdoin_dts

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 09/03/2025 18:46:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for docs_location
-- ----------------------------
DROP TABLE IF EXISTS `docs_location`;
CREATE TABLE `docs_location`  (
  `dl_id` int NOT NULL AUTO_INCREMENT,
  `dl_tracking` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dl_unit` int NOT NULL,
  `dl_receivedby` int NULL DEFAULT 0,
  `dl_receiveddate` datetime NULL DEFAULT NULL,
  `dl_releaseddate` datetime NOT NULL DEFAULT current_timestamp,
  `dl_releasedby` int NOT NULL,
  `dl_releasedbyunit` int NOT NULL,
  `dl_forwarded` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`dl_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of docs_location
-- ----------------------------

-- ----------------------------
-- Table structure for doctypes
-- ----------------------------
DROP TABLE IF EXISTS `doctypes`;
CREATE TABLE `doctypes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `doc_id` int NOT NULL,
  `doc_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctypes
-- ----------------------------
INSERT INTO `doctypes` VALUES (1, 201, '042');
INSERT INTO `doctypes` VALUES (2, 202, 'Abstract of Quotation/PO-Contract/NOA');
INSERT INTO `doctypes` VALUES (3, 203, 'APP-PPMP');
INSERT INTO `doctypes` VALUES (4, 204, 'Application Letter');
INSERT INTO `doctypes` VALUES (5, 205, 'Audit Observation Memo/Notice of Disallowance');
INSERT INTO `doctypes` VALUES (6, 206, 'Authority to Travel');
INSERT INTO `doctypes` VALUES (7, 207, 'BAC Resolution');
INSERT INTO `doctypes` VALUES (8, 208, 'BAC Resolution/RFQ');
INSERT INTO `doctypes` VALUES (9, 209, 'Business Letter');
INSERT INTO `doctypes` VALUES (10, 210, 'Certificates/Diploma');
INSERT INTO `doctypes` VALUES (11, 211, 'Compensatory Time Off');
INSERT INTO `doctypes` VALUES (12, 212, 'CSC Form 33');
INSERT INTO `doctypes` VALUES (13, 213, 'CSC Form 6');
INSERT INTO `doctypes` VALUES (14, 214, 'CSC Form 9');
INSERT INTO `doctypes` VALUES (15, 215, 'DepEd Memorandum');
INSERT INTO `doctypes` VALUES (16, 216, 'DepEd Order');
INSERT INTO `doctypes` VALUES (17, 217, 'Designation of OIC');
INSERT INTO `doctypes` VALUES (18, 218, 'Division Advisory');
INSERT INTO `doctypes` VALUES (19, 219, 'Division Memorandum');
INSERT INTO `doctypes` VALUES (20, 220, 'Enhanced School Improvement Plan');
INSERT INTO `doctypes` VALUES (21, 221, 'Equivalent Record Form (ERF)');
INSERT INTO `doctypes` VALUES (22, 222, 'Itinerary of Travel');
INSERT INTO `doctypes` VALUES (23, 223, 'LAC Proposal');
INSERT INTO `doctypes` VALUES (24, 224, 'LAC Report');
INSERT INTO `doctypes` VALUES (25, 225, 'LOEGSI/NOSI');
INSERT INTO `doctypes` VALUES (26, 226, 'Mailed letters');
INSERT INTO `doctypes` VALUES (27, 227, 'MEMORANDUM');
INSERT INTO `doctypes` VALUES (28, 228, 'Notice of Cash Allocation (NCA)');
INSERT INTO `doctypes` VALUES (29, 229, 'Office Memorandum');
INSERT INTO `doctypes` VALUES (30, 230, 'Other');
INSERT INTO `doctypes` VALUES (31, 231, 'Petty Cash Voucher');
INSERT INTO `doctypes` VALUES (32, 232, 'Project Proposal');
INSERT INTO `doctypes` VALUES (33, 233, 'Purchase Order');
INSERT INTO `doctypes` VALUES (34, 234, 'Purchase Request');
INSERT INTO `doctypes` VALUES (35, 235, 'Regional Advisory');
INSERT INTO `doctypes` VALUES (36, 236, 'Regional Memorandum');
INSERT INTO `doctypes` VALUES (37, 237, 'Regional Order');
INSERT INTO `doctypes` VALUES (38, 238, 'Request for OIC');
INSERT INTO `doctypes` VALUES (39, 239, 'Retirement Papers');
INSERT INTO `doctypes` VALUES (40, 240, 'Sub-Allotment Release Order');
INSERT INTO `doctypes` VALUES (41, 241, 'Supervisory Plan');
INSERT INTO `doctypes` VALUES (42, 242, 'Training Proposal');
INSERT INTO `doctypes` VALUES (43, 243, 'Write Up R1AA');

-- ----------------------------
-- Table structure for documents
-- ----------------------------
DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `document_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `document_type` int NOT NULL,
  `document_purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `document_origin` int NOT NULL,
  `document_owner` int NOT NULL,
  `document_tracking` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp,
  `document_accomplished` int NOT NULL DEFAULT 0,
  `accomp_unit` int NULL DEFAULT NULL,
  `accomp_by` int NULL DEFAULT NULL,
  `accomp_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `document_origin`(`document_origin` ASC) USING BTREE,
  INDEX `document_owner`(`document_owner` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documents
-- ----------------------------

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS `units`;
CREATE TABLE `units`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_id` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `unit_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `unit_sector` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `unit_head` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1209 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of units
-- ----------------------------
INSERT INTO `units` VALUES (1, '101', 'Accounting', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (2, '102', 'Administrative', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (3, '103', 'ALS', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (4, '104', 'ASDS Office', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (5, '105', 'BAC Office', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (6, '106', 'Budget', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (7, '107', 'Cash Section', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (8, '108', 'CID Proper', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (9, '109', 'Dental Section', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (10, '110', 'DRRM', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (11, '111', 'Educational Facilities Development', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (12, '112', 'HRTD', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (13, '113', 'ICT', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (14, '114', 'Legal', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (15, '115', 'LRMDS', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (16, '116', 'Medical', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (17, '117', 'Office of the SDS', 'Division Office', 'Public', 1);
INSERT INTO `units` VALUES (18, '118', 'Payroll', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (19, '119', 'Personnel', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (20, '120', 'Planning & Research', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (21, '121', 'Receiving / Records', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (22, '122', 'SGOD Proper', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (23, '123', 'SME', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (24, '124', 'SocMob', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (25, '125', 'Supply', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (26, '126', 'Workplace Improvement Team', 'Division Office', 'Public', 0);
INSERT INTO `units` VALUES (435, '127', 'SGOD Chief', 'Division Office', 'Public', 1);
INSERT INTO `units` VALUES (436, '128', 'CID Chief', 'Division Office', 'Public', 1);
INSERT INTO `units` VALUES (824, '200', 'Abaca ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (825, '201', 'Abat ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (826, '202', 'Abatan PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (827, '203', 'Abian ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (828, '204', 'Abinganan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (829, '205', 'Abuyo Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (830, '206', 'Abuyo National High Schoo', 'School', 'Public', 0);
INSERT INTO `units` VALUES (831, '207', 'Acacia PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (832, '208', 'Aggub ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (833, '209', 'Alang Salacsac ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (834, '210', 'Alfonso Canstañeda NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (835, '211', 'Alfonso Castañeda Central School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (836, '212', 'Alfonso Castañeda CS Annex', 'School', 'Public', 0);
INSERT INTO `units` VALUES (837, '213', 'Aliaga ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (838, '214', 'Alimit Integrated School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (839, '215', 'Alloy ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (840, '216', 'Almaguer North ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (841, '217', 'Almaguer South ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (842, '218', 'Ambaguio CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (843, '219', 'Ambaguio High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (844, '220', 'Amballo North ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (845, '221', 'Amballo Resettlement ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (846, '222', 'Ammococan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (847, '223', 'Ammoweg ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (848, '224', 'Ampakleng Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (849, '225', 'Anayo ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (850, '226', 'Ansipsip ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (851, '227', 'Antutot E/S', 'School', 'Public', 0);
INSERT INTO `units` VALUES (852, '228', 'Aritao Central School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (853, '229', 'Aritao National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (854, '230', 'Arwas ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (855, '231', 'Atan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (856, '232', 'Atbu ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (857, '233', 'Aurora ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (858, '234', 'B.A.Bugayong Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (859, '235', 'Baan Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (860, '236', 'Baan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (861, '237', 'Babadi Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (862, '238', 'Babadi ES – Annex', 'School', 'Public', 0);
INSERT INTO `units` VALUES (863, '239', 'Bacneng ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (864, '240', 'Bagabag Central School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (865, '241', 'Bagabag NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (866, '242', 'Bagabag South ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (867, '243', 'Bagahabag ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (868, '244', 'Bagingey Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (869, '245', 'Baguingey ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (870, '246', 'Balangabang ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (871, '247', 'Balete ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (872, '248', 'Baliling ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (873, '249', 'Balintugon ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (874, '250', 'Balite ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (875, '251', 'Balong IS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (876, '252', 'Bambang CS SPED Center', 'School', 'Public', 0);
INSERT INTO `units` VALUES (877, '253', 'Bambang East ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (878, '254', 'Bambang NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (879, '255', 'Bambang North C/S', 'School', 'Public', 0);
INSERT INTO `units` VALUES (880, '256', 'Bambang West ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (881, '257', 'Banao ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (882, '258', 'Ban-et ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (883, '259', 'Bangaan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (884, '260', 'Banganan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (885, '261', 'Bangar Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (886, '262', 'Banila ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (887, '263', 'Bansing ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (888, '264', 'Bantinan Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (889, '265', 'Baracbac ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (890, '266', 'Barat ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (891, '267', 'Baresbes ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (892, '268', 'Baretbet ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (893, '269', 'Bascaran ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (894, '270', 'Bascaran NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (895, '271', 'Bayombong Central School/SPED Center', 'School', 'Public', 0);
INSERT INTO `units` VALUES (896, '272', 'Bayombong South ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (897, '273', 'Bayombong West ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (898, '274', 'Belance Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (899, '275', 'Belance HS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (900, '276', 'Besong ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (901, '277', 'Betawang ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (902, '278', 'Beti ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (903, '279', 'Bilet ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (904, '280', 'Binalian ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (905, '281', 'Binogawan IS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (906, '282', 'Bintawan NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (907, '283', 'Bintawan North Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (908, '284', 'Bintawan South Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (909, '285', 'Binuangan Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (910, '286', 'Bitnong ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (911, '287', 'Biyoy ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (912, '288', 'Bone North IS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (913, '289', 'Bone South Elementary School Annex', 'School', 'Public', 0);
INSERT INTO `units` VALUES (914, '290', 'Bone South ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (915, '291', 'Bonfal Annex ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (916, '292', 'Bonfal National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (917, '293', 'Bonfal Pilot CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (918, '294', 'Bonfal West ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (919, '295', 'Bonifacio Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (920, '296', 'Buenavista ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (921, '297', 'Bugkalot High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (922, '298', 'Bugkalot High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (923, '299', 'Bugnay ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (924, '300', 'Bulala Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (925, '301', 'Buliwao ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (926, '302', 'Bulo-Galsa PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (927, '303', 'Busat ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (928, '304', 'Busilac ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (929, '305', 'Butao Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (930, '306', 'Buyasyas ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (931, '307', 'Buyasyas PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (932, '308', 'Cabanglasan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (933, '309', 'Cabayo IS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (934, '310', 'Cabinnuangan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (935, '311', 'Cablahan Elementary Schoo', 'School', 'Public', 0);
INSERT INTO `units` VALUES (936, '312', 'Cabuaan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (937, '313', 'Calaoagan Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (938, '314', 'Calitlitan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (939, '315', 'Camamasi PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (940, '316', 'Canabay ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (941, '317', 'Canabuan Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (942, '318', 'Canabuan National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (943, '319', 'Canarem PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (944, '320', 'Capisaan E/S', 'School', 'Public', 0);
INSERT INTO `units` VALUES (945, '321', 'Careb ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (946, '322', 'Caritas Village Elementary school', 'School', 'Public', 0);
INSERT INTO `units` VALUES (947, '323', 'Carolotan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (948, '324', 'Carolotan High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (949, '325', 'Casat ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (950, '326', 'Casat NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (951, '327', 'Casecnan National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (952, '328', 'Casecnan PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (953, '329', 'Castillo Village ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (954, '330', 'Castro ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (955, '331', 'Catarawan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (956, '332', 'Cauco ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (957, '333', 'Cawacao Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (958, '334', 'Cawayan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (959, '335', 'Commonal ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (960, '336', 'Comon CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (961, '337', 'Concepcion ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (962, '338', 'Cordon Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (963, '339', 'Curifang ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (964, '340', 'Cutar ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (965, '341', 'Daclig ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (966, '342', 'Dadap ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (967, '343', 'Dagupan Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (968, '344', 'Darapidap ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (969, '345', 'Darubba ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (970, '346', 'Dayap ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (971, '347', 'Dempeg Elementary school', 'School', 'Public', 0);
INSERT INTO `units` VALUES (972, '348', 'Diadi CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (973, '349', 'Diadi NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (974, '350', 'Didipio ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (975, '351', 'Dine ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (976, '352', 'Dippog National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (977, '353', 'Domang ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (978, '354', 'Dr. Candido V. Rosario Sr. ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (979, '355', 'Dullao ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (980, '356', 'Dulli Integrated School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (981, '357', 'Dumaliguia ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (982, '358', 'Dupax CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (983, '359', 'Dupax del Norte CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (984, '360', 'DUPAX DEL NORTE NATIONAL HIGH SCHOOL', 'School', 'Public', 0);
INSERT INTO `units` VALUES (985, '361', 'Dupax del Sur NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (986, '362', 'Duruarog Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (987, '363', 'Eastern Nueva Vizcaya National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (988, '364', 'Ecameging ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (989, '365', 'Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (990, '366', 'Escoting ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (991, '367', 'Felix-Juana Brawner Community School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (992, '368', 'Gabut ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (993, '369', 'Galintuja ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (994, '370', 'Ganao Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (995, '371', 'Ganao National HS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (996, '372', 'Gasajas PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (997, '373', 'Genato ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (998, '374', 'Giayan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (999, '375', 'GK Aliaga ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1000, '376', 'Governor Alfonso Castañeda ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1001, '377', 'Goveror Juan Manzano Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1002, '378', 'Hamhamaan Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1003, '379', 'Hiket Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1004, '380', 'Hukhukyung Primary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1005, '381', 'Imugan Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1006, '382', 'Inaban Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1007, '383', 'Indiana ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1008, '384', 'Ineangan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1009, '385', 'Ipil-Cuneg ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1010, '386', 'JP Castillo E/S', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1011, '387', 'Kakiduguen Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1012, '388', 'Kakiduguen NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1013, '389', 'Kakilingan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1014, '390', 'Kapangan PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1015, '391', 'Kasibu Central School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1016, '392', 'Kasibu East CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1017, '393', 'Kasibu National Agricultural School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1018, '394', 'Kayapa CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1019, '395', 'Kayapa HS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1020, '396', 'Kayapa Proper ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1021, '397', 'Kinabuan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1022, '398', 'Kirang ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1023, '399', 'Kirang ES Annex', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1024, '400', 'Kongkong Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1025, '401', 'Kongkong Valley NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1026, '402', 'La Torre ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1027, '403', 'Labang ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1028, '404', 'Labbu ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1029, '405', 'Labeng PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1030, '406', 'Labni ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1031, '407', 'Lactawan Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1032, '408', 'Lamo ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1033, '409', 'LAMO NATIONAL HIGH SCHOOL', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1034, '410', 'Langka PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1035, '411', 'Lantap ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1036, '412', 'Latar ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1037, '413', 'Latbang ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1038, '414', 'Latbang ES-Annex', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1039, '415', 'Lawed ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1040, '416', 'Lawigan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1041, '417', 'Laya ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1042, '418', 'Laylaya PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1043, '419', 'Lihlit PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1044, '420', 'Lingay ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1045, '421', 'Lipuga ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1046, '422', 'Logpond-Sabungan PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1047, '423', 'Luclocos Integrated School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1048, '424', 'Luclocos Integrated School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1049, '425', 'Lukidnon ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1050, '426', 'Lupa ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1051, '427', 'Lurad ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1052, '428', 'Luyang ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1053, '429', 'M. V. Duque ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1054, '430', 'Maasin ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1055, '431', 'Mabasa ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1056, '432', 'Mabuslo ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1057, '433', 'Macabenga ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1058, '434', 'Macalong Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1059, '435', 'Macate ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1060, '436', 'Macdu ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1061, '437', 'Maddiangat ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1062, '438', 'Magapuy ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1063, '439', 'Magsaysay ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1064, '440', 'Magsaysay Hill ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1065, '441', 'Makiboy ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1066, '442', 'Malabing Valley NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1067, '443', 'Manamtam Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1068, '444', 'Mandunot ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1069, '445', 'Mangayang Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1070, '446', 'Mantatta ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1071, '447', 'Mapaina ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1072, '448', 'Mapayao ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1073, '449', 'Marikit East ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1074, '450', 'Martinez Cuyangan National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1075, '451', 'Masoc ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1076, '452', 'Mauan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1077, '453', 'Munguia Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1078, '454', 'MUNGUIA NATIONAL HIGH SCHOOL', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1079, '455', 'Murong ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1080, '456', 'Murong NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1081, '457', 'Muta ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1082, '458', 'Nagakay ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1083, '459', 'Nagbitin ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1084, '460', 'Nagcuartelan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1085, '461', 'Nagsabaran ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1086, '462', 'Nalubbunan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1087, '463', 'Namamparan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1088, '464', 'Nangalisan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1089, '465', 'Nangcalapan PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1090, '466', 'Nansiakan Elementary school', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1091, '467', 'Nansiakan NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1092, '468', 'Nantawakan PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1093, '469', 'Napo Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1094, '470', 'Napo-Tuyak ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1095, '471', 'Napo-Tuyak National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1096, '472', 'Naruron ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1097, '473', 'New Gumiad ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1098, '474', 'Nueva Vizcaya Gen. CHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1099, '475', 'Ocapon Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1100, '476', 'Oliweg E/S', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1101, '477', 'Oyao ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1102, '478', 'P.D. Galima E/S', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1103, '479', 'Pacdal ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1104, '480', 'PAIMA NATIONAL HIGH SCHOOL', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1105, '481', 'Paitan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1106, '482', 'Palabotan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1107, '483', 'Palayan Elementary Schoo', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1108, '484', 'Pallagao PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1109, '485', 'Pallas ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1110, '486', 'Pangawan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1111, '487', 'Paniki Elementary Schoo', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1112, '488', 'Paniki High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1113, '489', 'Pao Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1114, '490', 'Papalungan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1115, '491', 'Papaya ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1116, '492', 'Paquet IS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1117, '493', 'Parai ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1118, '494', 'Pawak ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1119, '495', 'Pelaway ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1120, '496', 'Pelaway ES Annex', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1121, '497', 'Philippine Science High School', 'School', 'Private', 0);
INSERT INTO `units` VALUES (1122, '498', 'Pihipi Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1123, '499', 'Pinayag National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1124, '500', 'Pingkian CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1125, '501', 'Pinya ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1126, '502', 'Pogonsino Annex Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1127, '503', 'Pogonsino ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1128, '504', 'Pudi PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1129, '505', 'Quezon CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1130, '506', 'Quezon NHS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1131, '507', 'Rosario Primary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1132, '508', 'Runruno Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1133, '509', 'Runruno National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1134, '510', 'Salicpan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1135, '511', 'Salinas Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1136, '512', 'Salinas High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1137, '513', 'Salingsingan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1138, '514', 'San Antonio North ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1139, '515', 'San Antonio South ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1140, '516', 'San Fabian ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1141, '517', 'San Fernando ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1142, '518', 'San Juan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1143, '519', 'San Juan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1144, '520', 'San Leonardo ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1145, '521', 'San Luis ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1146, '522', 'San Luis ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1147, '523', 'San Pablo ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1148, '524', 'Sanguit ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1149, '525', 'Santa Fe National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1150, '526', 'Sawmill ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1151, '527', 'Siguem ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1152, '528', 'Sinapaoan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1153, '529', 'Singian ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1154, '530', 'Solano East CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1155, '531', 'Solano East CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1156, '532', 'Solano High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1157, '533', 'Solano North Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1158, '534', 'Solano South CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1159, '535', 'Solano West Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1160, '536', 'Sta. Clara ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1161, '537', 'Sta. Clara HS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1162, '538', 'Sta. Cruz ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1163, '539', 'Sta. Cruz Pingkian High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1164, '540', 'Sta. Fe CS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1165, '541', 'Sta. Lucia Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1166, '542', 'Sta. Rosa ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1167, '543', 'Sto Niño PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1168, '544', 'Sto. Domingo IS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1169, '545', 'Tabban ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1170, '546', 'Tabueng Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1171, '547', 'Tactac ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1172, '548', 'Tadji ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1173, '549', 'Talbec ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1174, '550', 'Talicabcab ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1175, '551', 'Talmoy ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1176, '552', 'Tan Yan Kee ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1177, '553', 'Tiblac ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1178, '554', 'Tiblac National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1179, '555', 'Tidang Village ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1180, '556', 'Tuao HS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1181, '557', 'Tuao North ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1182, '558', 'Tuao South ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1183, '559', 'Tubongan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1184, '560', 'Tucal Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1185, '561', 'Tucanon ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1186, '562', 'Tukod ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1187, '563', 'Tuppan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1188, '564', 'Turod Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1189, '565', 'Tutong Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1190, '566', 'Uddiawan ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1191, '567', 'Uddiawan National High School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1192, '568', 'Ukaw ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1193, '569', 'Unib PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1194, '570', 'Upper Parai PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1195, '571', 'V. Coloma Memoria', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1196, '572', 'Villa Adriano PS', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1197, '573', 'Villa Aurora Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1198, '574', 'Villa Florentino ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1199, '575', 'Villa Par-Pale Elementary School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1200, '576', 'Villaros ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1201, '577', 'Villaverde Central School', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1202, '578', 'Villaverde CS Annex', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1203, '579', 'Vista Hills ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1204, '580', 'Wacal ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1205, '581', 'Wangal ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1206, '582', 'Watwat ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1207, '583', 'Yabbi ES', 'School', 'Public', 0);
INSERT INTO `units` VALUES (1208, '584', 'Yaway ES', 'School', 'Public', 0);

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `up_filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `up_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `up_dateadded` datetime NOT NULL DEFAULT current_timestamp,
  `up_action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `up_receivingunit` int NOT NULL,
  `up_by` int NOT NULL,
  `up_unit` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of uploads
-- ----------------------------

-- ----------------------------
-- Table structure for user_details
-- ----------------------------
DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ud_id` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ud_unit` int NOT NULL,
  `ud_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ud_unit`(`ud_unit` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_details
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` int NOT NULL DEFAULT 3,
  `reset` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
