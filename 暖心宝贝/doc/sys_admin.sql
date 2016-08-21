/*
Navicat MySQL Data Transfer

Source Server         : cmcc-高配
Source Server Version : 50173
Source Host           : 182.92.97.181:3306
Source Database       : sys_admin

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-07-15 15:50:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `syonline`
-- ----------------------------
DROP TABLE IF EXISTS `syonline`;
CREATE TABLE `syonline` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `LOGINNAME` varchar(100) DEFAULT NULL,
  `TYPE` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syonline
-- ----------------------------
INSERT INTO `syonline` VALUES ('01163c93-e078-4360-bb2a-d92d9fdb7040', '2016-04-17 09:51:56', '本地', 'sys_admin', '1');
INSERT INTO `syonline` VALUES ('01fff90c-2dec-4140-b84d-a21eee788332', '2016-04-27 17:30:24', '127.0.0.1', 'admin', '0');
INSERT INTO `syonline` VALUES ('03bf43f8-37c3-42da-8f50-262f468b6c67', '2016-07-09 13:41:57', '175.13.238.144', 'admin', '1');
INSERT INTO `syonline` VALUES ('0cdbd08a-9681-4c58-89b2-0ae4d24f1811', '2016-05-25 11:23:49', '58.246.36.90', 'admin', '0');
INSERT INTO `syonline` VALUES ('0d2bf0a9-8aa7-430f-81f2-ecd7b3dcb30e', '2016-04-15 14:56:54', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('112d5623-f6b0-48fe-a8af-90e1a9bf01bc', '2016-04-15 14:11:02', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('114d173e-0b4d-41ce-abc9-87c5973e9c83', '2016-04-27 14:16:25', '127.0.0.1', 'sys_admin', '1');
INSERT INTO `syonline` VALUES ('11cffa0d-b729-45dd-957d-9ac129dcaaa2', '2016-05-25 15:09:18', '58.246.36.90', 'admin', '1');
INSERT INTO `syonline` VALUES ('19d1ab96-0e9b-4327-847e-5dc662e82a85', '2016-05-26 14:56:37', '58.246.36.90', 'admin', '1');
INSERT INTO `syonline` VALUES ('1db977f6-d72d-4c70-8fb2-c5d427bd926d', '2016-04-27 16:57:02', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('2168ed81-fb2f-4131-af1a-b82357a45979', '2016-04-15 16:13:19', '本地', 'admin', '0');
INSERT INTO `syonline` VALUES ('23e9e035-8583-44af-987d-6b2ddacae3b1', '2016-06-29 11:11:46', '210.22.130.114', 'admin', '1');
INSERT INTO `syonline` VALUES ('26d608c3-825b-4462-82ee-797d140e5d3b', '2016-06-29 11:14:01', '210.22.130.114', 'admin', '1');
INSERT INTO `syonline` VALUES ('2826c96e-c01f-451e-b43e-1b61b621c863', '2016-07-14 18:14:51', '101.68.87.242', 'admin', '1');
INSERT INTO `syonline` VALUES ('2a5cf3e4-6f27-4b84-b149-c1c3b18ec61c', '2016-07-09 12:02:42', '116.247.77.82', 'admin', '0');
INSERT INTO `syonline` VALUES ('2b054a0f-7ace-4298-8fe2-c0951b8b173d', '2016-07-14 18:30:45', '101.68.87.242', 'admin', '0');
INSERT INTO `syonline` VALUES ('2e408185-6c92-4f2d-bb39-51247a0c41ff', '2016-06-20 10:43:45', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('2f629471-6227-45b1-94a0-62fd98e579d8', '2016-04-27 16:20:14', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('30eb953d-333e-47b7-ada6-ca91ed144589', '2016-04-24 18:17:53', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('312a4659-63cc-4ef0-93ab-6b675da7d96c', '2016-04-15 14:50:05', '本地', 'admin', '0');
INSERT INTO `syonline` VALUES ('342f3335-90b1-4bfa-9fe6-0b48b1b77b17', '2016-06-20 09:42:10', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('38bf1f2b-719a-4a01-86ca-346130687848', '2016-05-20 17:00:28', '58.246.36.90', 'admin', '0');
INSERT INTO `syonline` VALUES ('4199cfac-7e7e-48d7-92ce-025bcfc48842', '2016-05-20 13:58:21', '58.246.36.90', 'admin', '1');
INSERT INTO `syonline` VALUES ('4ce25c8a-dc5b-4e7a-8c97-fb52462c9f28', '2016-05-25 14:33:02', '58.246.36.90', 'admin', '0');
INSERT INTO `syonline` VALUES ('4d3a8bcd-64b6-480d-b3f6-afc43c338f40', '2016-04-15 17:11:34', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('4e9cd737-8041-4032-b682-7c3796f28d94', '2016-05-26 15:12:37', '58.246.36.90', 'admin', '0');
INSERT INTO `syonline` VALUES ('51f3d518-2f8e-4efc-9fd8-74d61bf9cf99', '2016-04-24 16:34:51', '本地', 'admin', '0');
INSERT INTO `syonline` VALUES ('54fd378b-0df2-4656-8934-f5432c0a10de', '2016-04-27 17:12:36', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('5750c5d2-decd-427d-ac73-fdad57d4661d', '2016-06-20 10:21:39', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('5849f8fe-e8e8-4115-8ba7-785548887193', '2016-05-27 17:49:43', '58.246.36.90', 'admin', '1');
INSERT INTO `syonline` VALUES ('59cfcccd-846f-4121-ade3-ebc94ea9b0e6', '2016-05-25 15:33:58', '58.246.36.90', 'admin', '1');
INSERT INTO `syonline` VALUES ('60b91b14-6fb4-44d5-923a-d0ca78361f42', '2016-04-15 17:49:56', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('6261384b-e666-416a-b88f-b667b87a52fb', '2016-04-15 17:42:40', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('678b8478-c3bc-4d46-bf65-eddebf73dc65', '2016-04-18 12:06:08', '61.164.211.111', 'admin', '1');
INSERT INTO `syonline` VALUES ('6ae7bd50-1cce-4b6f-8e69-fff6eac5bb00', '2016-07-09 12:31:55', '116.247.77.82', 'admin', '1');
INSERT INTO `syonline` VALUES ('6b447a54-c434-4104-b82f-86c08a65ac7e', '2016-04-27 15:24:39', '127.0.0.1', 'sys_admin', '0');
INSERT INTO `syonline` VALUES ('6e0e31f4-8a2e-4cd8-9e87-a02f5ad7d914', '2016-06-29 11:22:30', '210.22.130.114', 'admin', '1');
INSERT INTO `syonline` VALUES ('71e1d664-fe4f-4ce5-8445-fd6a11674324', '2016-05-27 16:05:44', '58.246.36.90', 'admin', '1');
INSERT INTO `syonline` VALUES ('77127c1c-7b10-41c1-a743-83e2dc1005b4', '2016-04-28 10:50:59', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('7e672d0b-335e-4eaf-be1b-3f384f191c00', '2016-05-25 14:17:04', '58.246.36.90', 'admin', '1');
INSERT INTO `syonline` VALUES ('828a0162-47bf-4278-896f-b38ce330703f', '2016-04-15 14:22:40', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('870e6981-e019-4143-80a1-4cd381b91f48', '2016-06-20 10:42:18', '本地', 'admin', '0');
INSERT INTO `syonline` VALUES ('88de43f6-d4d0-4f66-a846-18fbf4b1835b', '2016-05-27 14:52:30', '58.246.36.90', 'admin', '1');
INSERT INTO `syonline` VALUES ('8c324197-7828-492a-a532-a54b5461d7b2', '2016-06-29 11:09:39', '210.22.130.114', 'admin', '1');
INSERT INTO `syonline` VALUES ('8d44ff5f-15bc-4ba0-8699-a1ef4ee1fdd4', '2016-05-20 14:30:51', '58.246.36.90', 'admin', '0');
INSERT INTO `syonline` VALUES ('8d56d225-e1a6-4037-9870-bf87f3753a85', '2016-04-18 12:04:29', '61.164.211.111', 'admin', '1');
INSERT INTO `syonline` VALUES ('8f578d59-ee66-4c68-9e78-7cbf02f3b6c3', '2016-07-09 12:47:44', '116.247.77.82', 'admin', '0');
INSERT INTO `syonline` VALUES ('8f80f12f-6893-48e8-a584-ed37e2fbccbf', '2016-04-25 07:18:22', '本地', 'sys_admin', '0');
INSERT INTO `syonline` VALUES ('93926052-5a83-412b-9e83-7f82a792ba58', '2016-04-18 12:03:36', '58.246.36.90', 'admin', '1');
INSERT INTO `syonline` VALUES ('94138295-01a8-43ff-a408-fe510e230148', '2016-04-27 17:01:50', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('950fd777-65e1-4084-9c25-5d32012b9730', '2016-06-20 10:20:18', '本地', 'admin', '0');
INSERT INTO `syonline` VALUES ('956a2a24-f67c-495f-8c26-f567b8b975a6', '2016-04-24 17:42:01', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('95a9fc6a-87d9-40bd-abb1-5b4c8b7d37a0', '2016-07-09 13:05:42', '116.247.77.82', 'admin', '0');
INSERT INTO `syonline` VALUES ('96d785d7-34b8-4d6b-a44a-465e0cba8c0b', '2016-04-15 17:42:37', '本地', 'admin', '0');
INSERT INTO `syonline` VALUES ('996dc4b6-ed9d-40a3-9ebb-ca4d28da75e0', '2016-04-24 15:11:24', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('9ea6fcc7-9033-4fd0-9f78-94af8e73c8ef', '2016-04-15 14:29:05', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('a5bbb132-769c-4b1d-85ab-8495206bc539', '2016-07-09 13:53:48', '175.13.238.144', 'admin', '0');
INSERT INTO `syonline` VALUES ('afed5d4b-6d9b-4d54-b4cd-fc8f7f6192f3', '2016-06-29 11:37:35', '210.22.130.114', 'admin', '0');
INSERT INTO `syonline` VALUES ('b34ac0be-17bf-494b-af43-5415f9afbcc6', '2016-06-29 11:27:34', '210.22.130.114', 'admin', '0');
INSERT INTO `syonline` VALUES ('be35b202-9223-4c49-a613-2a2c05f10437', '2016-04-15 14:24:31', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('bf4e2e97-4fc4-4847-adfa-911be50deb21', '2016-07-09 13:57:48', '175.13.238.144', 'admin', '0');
INSERT INTO `syonline` VALUES ('c89c7469-eb95-4372-b4df-650397d46be3', '2016-05-27 18:07:50', '119.98.144.188', 'admin', '0');
INSERT INTO `syonline` VALUES ('c9f67fba-1503-4b5a-afaa-92b9d6fdd27b', '2016-04-15 14:29:02', '本地', 'admin', '0');
INSERT INTO `syonline` VALUES ('cce80ec0-dc12-45d5-ac38-72b8c9f79f53', '2016-07-09 13:57:18', '220.248.52.24', 'admin', '1');
INSERT INTO `syonline` VALUES ('ce221835-257d-41c1-af5f-3b5e024f72e2', '2016-05-27 16:21:45', '58.246.36.90', 'admin', '0');
INSERT INTO `syonline` VALUES ('d2bb4471-6bbe-4ec0-9791-e242ac4861a9', '2016-04-27 16:14:57', '127.0.0.1', 'sys_admin', '0');
INSERT INTO `syonline` VALUES ('d78e308a-da87-47d1-92d3-5e0c986dd439', '2016-06-29 11:34:34', '210.22.130.114', 'admin', '0');
INSERT INTO `syonline` VALUES ('d7ba26ef-20c5-4c5d-86b9-524a04fe5ed4', '2016-07-09 13:38:02', '175.13.238.144', 'admin', '1');
INSERT INTO `syonline` VALUES ('dd23ef40-789b-4c34-89e8-0328e822dfa8', '2016-07-09 11:46:03', '116.247.77.82', 'admin', '1');
INSERT INTO `syonline` VALUES ('dd70abdf-40cc-478e-999e-8836dd66b340', '2016-05-25 15:50:02', '58.246.36.90', 'admin', '0');
INSERT INTO `syonline` VALUES ('e071f384-46d0-4d73-86a2-374a8c4166c3', '2016-05-27 17:52:22', '119.98.144.188', 'admin', '1');
INSERT INTO `syonline` VALUES ('e1b3bc63-42bb-4008-9203-c374b88ae785', '2016-04-27 16:09:33', '127.0.0.1', 'sys_admin', '1');
INSERT INTO `syonline` VALUES ('eaaa84bc-bb27-4f28-a545-410b870a558d', '2016-07-09 12:49:48', '116.247.77.82', 'admin', '1');
INSERT INTO `syonline` VALUES ('eb82097f-eb65-4d40-900b-f34930393bb3', '2016-04-25 06:40:47', '本地', 'sys_admin', '1');
INSERT INTO `syonline` VALUES ('ec9d276b-da8f-41b6-a4f3-80419ef6e542', '2016-04-27 16:59:10', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('ed3c8e53-4c7b-4500-b7c1-76cab3cbfc11', '2016-07-09 14:18:31', '220.248.52.24', 'admin', '0');
INSERT INTO `syonline` VALUES ('f069a572-12b6-4f60-a044-614537f3a63a', '2016-07-09 14:02:37', '220.248.52.24', 'admin', '1');
INSERT INTO `syonline` VALUES ('f2bd6fab-1033-4a74-9d9b-b712cc29f92d', '2016-04-15 14:24:29', '本地', 'admin', '0');
INSERT INTO `syonline` VALUES ('f67fac1d-c34c-4a4a-a167-410ea7615d9b', '2016-04-15 14:22:38', '本地', 'admin', '0');
INSERT INTO `syonline` VALUES ('f7576996-c7c1-4c19-abf8-1290560af234', '2016-05-25 15:24:44', '58.246.36.90', 'admin', '0');
INSERT INTO `syonline` VALUES ('f762ded1-fe40-436d-8749-056b468af396', '2016-04-15 16:15:34', '本地', 'admin', '1');
INSERT INTO `syonline` VALUES ('f803f2a4-3f05-4c5a-a0b7-f11d4200505c', '2016-05-27 18:05:38', '58.246.36.90', 'admin', '0');
INSERT INTO `syonline` VALUES ('f881b197-197e-45e0-92f4-d2f93f1d1cbc', '2016-04-27 16:15:06', '127.0.0.1', 'sys_admin', '1');
INSERT INTO `syonline` VALUES ('faac8358-4c09-46e8-be8f-c86ddbbdc6df', '2016-05-25 10:03:23', '58.246.36.90', 'admin', '1');
INSERT INTO `syonline` VALUES ('fd27fc83-f735-4bb7-96bb-13731f42aaf5', '2016-05-20 16:44:53', '58.246.36.90', 'admin', '1');

-- ----------------------------
-- Table structure for `syorganization`
-- ----------------------------
DROP TABLE IF EXISTS `syorganization`;
CREATE TABLE `syorganization` (
  `ID` varchar(36) NOT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  `CODE` varchar(200) DEFAULT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `ICONCLS` varchar(100) DEFAULT NULL,
  `NAME` varchar(200) DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `UPDATEDATETIME` datetime DEFAULT NULL,
  `SYORGANIZATION_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_acf7qlb04quthktalwx8c7q69` (`SYORGANIZATION_ID`) USING BTREE,
  CONSTRAINT `syorganization_ibfk_1` FOREIGN KEY (`SYORGANIZATION_ID`) REFERENCES `syorganization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syorganization
-- ----------------------------
INSERT INTO `syorganization` VALUES ('0', '机构地址', null, '2016-04-06 18:30:46', 'ext-icon-brick', '一级机构', '0', '2016-04-06 18:30:46', null);

-- ----------------------------
-- Table structure for `syorganization_syresource`
-- ----------------------------
DROP TABLE IF EXISTS `syorganization_syresource`;
CREATE TABLE `syorganization_syresource` (
  `SYRESOURCE_ID` varchar(36) NOT NULL,
  `SYORGANIZATION_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SYORGANIZATION_ID`,`SYRESOURCE_ID`),
  KEY `FK_acpjp8a7fjo0cnn02eb0ia6uf` (`SYORGANIZATION_ID`) USING BTREE,
  KEY `FK_m4mfglk7odi78d8pk9pif44vc` (`SYRESOURCE_ID`) USING BTREE,
  CONSTRAINT `syorganization_syresource_ibfk_1` FOREIGN KEY (`SYORGANIZATION_ID`) REFERENCES `syorganization` (`ID`),
  CONSTRAINT `syorganization_syresource_ibfk_2` FOREIGN KEY (`SYRESOURCE_ID`) REFERENCES `syresource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syorganization_syresource
-- ----------------------------
INSERT INTO `syorganization_syresource` VALUES ('jgck', '0');
INSERT INTO `syorganization_syresource` VALUES ('jggl', '0');
INSERT INTO `syorganization_syresource` VALUES ('jglb', '0');
INSERT INTO `syorganization_syresource` VALUES ('jsck', '0');
INSERT INTO `syorganization_syresource` VALUES ('jsgl', '0');
INSERT INTO `syorganization_syresource` VALUES ('jslb', '0');
INSERT INTO `syorganization_syresource` VALUES ('xtgl', '0');
INSERT INTO `syorganization_syresource` VALUES ('yhck', '0');
INSERT INTO `syorganization_syresource` VALUES ('yhgl', '0');
INSERT INTO `syorganization_syresource` VALUES ('yhlb', '0');
INSERT INTO `syorganization_syresource` VALUES ('zyck', '0');
INSERT INTO `syorganization_syresource` VALUES ('zygl', '0');
INSERT INTO `syorganization_syresource` VALUES ('zylb', '0');

-- ----------------------------
-- Table structure for `syresource`
-- ----------------------------
DROP TABLE IF EXISTS `syresource`;
CREATE TABLE `syresource` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `ICONCLS` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `TARGET` varchar(100) DEFAULT NULL,
  `UPDATEDATETIME` datetime DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `SYRESOURCE_ID` varchar(36) DEFAULT NULL,
  `SYRESOURCETYPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_n8kk2inhw4y4gax3nra2etfup` (`SYRESOURCE_ID`) USING BTREE,
  KEY `FK_93qfpiiuk3rwb32gc5mcmmlgh` (`SYRESOURCETYPE_ID`) USING BTREE,
  CONSTRAINT `syresource_ibfk_1` FOREIGN KEY (`SYRESOURCETYPE_ID`) REFERENCES `syresourcetype` (`ID`),
  CONSTRAINT `syresource_ibfk_2` FOREIGN KEY (`SYRESOURCE_ID`) REFERENCES `syresource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syresource
-- ----------------------------
INSERT INTO `syresource` VALUES ('', null, null, null, '', null, null, null, null, '', null);
INSERT INTO `syresource` VALUES ('aasd', null, null, null, '', null, null, null, null, null, null);
INSERT INTO `syresource` VALUES ('actionConfigBrowser', '2016-04-06 18:30:46', 'Action映射情况监控', 'ext-icon-monitor_lightning', 'Action映射监控', '3', '', '2016-04-06 18:30:46', '/config-browser/showConstants.sy', 'xtjk', '0');
INSERT INTO `syresource` VALUES ('animationbj', '2016-04-06 18:30:46', '编辑动画', 'ext-icon-bullet_wrench', '编辑动画', '2', null, '2016-06-20 10:22:21', '/cfg/animation!update', 'animationgl', '1');
INSERT INTO `syresource` VALUES ('animationck', '2016-04-06 18:30:46', '查看动画', 'ext-icon-bullet_wrench', '查看动画', '4', null, '2016-06-20 10:24:05', '/cfg/animation!getById', 'animationgl', '1');
INSERT INTO `syresource` VALUES ('animationgl', '2016-04-06 18:30:46', '动画管理', 'ext-icon-newspaper_link', '动画管理', '1', '', '2016-04-06 18:30:46', '/securityJsp/cfg/animation.jsp', 'cfggl', '0');
INSERT INTO `syresource` VALUES ('animationlb', '2016-04-06 18:30:46', '动画列表', 'ext-icon-bullet_wrench', '动画列表', '0', null, '2016-06-20 10:03:12', '/cfg/animation!grid', 'animationgl', '1');
INSERT INTO `syresource` VALUES ('animationsc', '2016-04-06 18:30:46', '删除动画', 'ext-icon-bullet_wrench', '删除动画', '3', null, '2016-06-20 10:23:09', '/cfg/animation!delete', 'animationgl', '1');
INSERT INTO `syresource` VALUES ('animationtj', '2016-04-06 18:30:46', '添加动画', 'ext-icon-bullet_wrench', '添加动画', '1', null, '2016-06-20 10:02:51', '/cfg/animation!save', 'animationgl', '1');
INSERT INTO `syresource` VALUES ('cfggl', '2016-04-15 14:20:58', '配置管理', 'ext-icon-user_suit', '配置管理', '5', null, '2016-04-25 06:41:23', '/welcome.jsp', null, '0');
INSERT INTO `syresource` VALUES ('dialogconfbj', '2016-04-06 18:30:46', '编辑对话', 'ext-icon-bullet_wrench', '编辑对话', '2', null, '2016-06-20 10:04:28', '/cfg/dialogconf!update', 'dialogconfgl', '1');
INSERT INTO `syresource` VALUES ('dialogconfck', '2016-04-06 18:30:46', '查看对话', 'ext-icon-bullet_wrench', '查看对话', '4', null, '2016-06-20 10:24:27', '/cfg/dialogconf!getById', 'dialogconfgl', '1');
INSERT INTO `syresource` VALUES ('dialogconfgl', '2016-04-06 18:30:46', '对话管理', 'ext-icon-newspaper_link', '对话管理', '2', null, '2016-04-25 07:02:38', '/securityJsp/cfg/dialogconf.jsp', 'cfggl', '0');
INSERT INTO `syresource` VALUES ('dialogconflb', '2016-04-06 18:30:46', '对话列表', 'ext-icon-bullet_wrench', '对话列表', '0', null, '2016-06-20 10:03:33', '/cfg/dialogconf!grid', 'dialogconfgl', '1');
INSERT INTO `syresource` VALUES ('dialogconfsc', '2016-04-06 18:30:46', '删除对话', 'ext-icon-bullet_wrench', '删除对话', '3', null, '2016-06-20 10:22:32', '/cfg/dialogconf!delete', 'dialogconfgl', '1');
INSERT INTO `syresource` VALUES ('dialogconftj', '2016-04-06 18:30:46', '添加对话', 'ext-icon-bullet_wrench', '添加对话', '1', null, '2016-06-20 10:04:03', '/cfg/dialogconf!save', 'dialogconfgl', '1');
INSERT INTO `syresource` VALUES ('druid', '2016-04-06 18:30:46', '监控数据源', 'ext-icon-monitor_link', '数据源监控', '2', '', '2016-04-06 18:30:46', '/druid', 'xtjk', '0');
INSERT INTO `syresource` VALUES ('growlogicbj', '2016-04-06 18:30:46', '编辑等级', 'ext-icon-bullet_wrench', '编辑等级', '2', null, '2016-06-20 10:04:41', '/cfg/growlogic!update', 'growlogicgl', '1');
INSERT INTO `syresource` VALUES ('growlogicck', '2016-04-06 18:30:46', '查看等级', 'ext-icon-bullet_wrench', '查看等级', '4', null, '2016-06-20 10:23:43', '/cfg/growlogic!getById', 'growlogicgl', '1');
INSERT INTO `syresource` VALUES ('growlogicgl', '2016-04-06 18:30:46', '等级管理', 'ext-icon-newspaper_link', '等级管理', '1', '', '2016-04-06 18:30:46', '/securityJsp/cfg/growlogic.jsp', 'cfggl', '0');
INSERT INTO `syresource` VALUES ('growlogiclb', '2016-04-06 18:30:46', '等级列表', 'ext-icon-bullet_wrench', '等级列表', '0', null, '2016-06-20 10:03:23', '/cfg/growlogic!grid', 'growlogicgl', '1');
INSERT INTO `syresource` VALUES ('growlogicsc', '2016-04-06 18:30:46', '删除等级', 'ext-icon-bullet_wrench', '删除等级', '3', null, '2016-06-20 10:22:51', '/cfg/growlogic!delete', 'growlogicgl', '1');
INSERT INTO `syresource` VALUES ('growlogictj', '2016-04-06 18:30:46', '添加等级', 'ext-icon-bullet_wrench', '添加等级', '1', null, '2016-06-20 10:02:21', '/cfg/growlogic!save', 'growlogicgl', '1');
INSERT INTO `syresource` VALUES ('informationbj', '2016-04-06 18:30:46', '编辑资讯', 'ext-icon-bullet_wrench', '编辑资讯', '2', null, '2016-06-20 10:21:57', '/cfg/information!update', 'informationgl', '1');
INSERT INTO `syresource` VALUES ('informationck', '2016-04-06 18:30:46', '查看资讯', 'ext-icon-bullet_wrench', '查看资讯', '4', null, '2016-06-20 10:24:38', '/cfg/information!getById', 'informationgl', '1');
INSERT INTO `syresource` VALUES ('informationgl', '2016-04-06 18:30:46', '资讯管理', 'ext-icon-newspaper_link', '资讯管理', '1', '', '2016-04-06 18:30:46', '/securityJsp/cfg/information.jsp', 'cfggl', '0');
INSERT INTO `syresource` VALUES ('informationlb', '2016-04-06 18:30:46', '资讯列表', 'ext-icon-bullet_wrench', '资讯列表', '0', null, '2016-06-20 10:03:52', '/cfg/information!grid', 'informationgl', '1');
INSERT INTO `syresource` VALUES ('informationsc', '2016-04-06 18:30:46', '删除资讯', 'ext-icon-bullet_wrench', '删除资讯', '3', null, '2016-06-20 10:22:42', '/cfg/information!delete', 'informationgl', '1');
INSERT INTO `syresource` VALUES ('informationtj', '2016-04-06 18:30:46', '添加资讯', 'ext-icon-bullet_wrench', '添加资讯', '1', null, '2016-06-20 10:02:38', '/cfg/information!save', 'informationgl', '1');
INSERT INTO `syresource` VALUES ('jgbj', '2016-04-06 18:30:46', '编辑机构', 'ext-icon-bullet_wrench', '编辑机构', '2', '', '2016-04-06 18:30:46', '/base/syorganization!update', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jgck', '2016-04-06 18:30:46', '查看机构', 'ext-icon-bullet_wrench', '查看机构', '4', '', '2016-04-06 18:30:46', '/base/syorganization!getById', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jggl', '2016-04-06 18:30:46', '管理系统中用户的机构', 'ext-icon-group_link', '机构管理', '3', '', '2016-04-06 18:30:46', '/securityJsp/base/Syorganization.jsp', 'xtgl', '0');
INSERT INTO `syresource` VALUES ('jglb', '2016-04-06 18:30:46', '查询机构列表', 'ext-icon-bullet_wrench', '机构列表', '0', '', '2016-04-06 18:30:46', '/base/syorganization!treeGrid', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jgsc', '2016-04-06 18:30:46', '删除机构', 'ext-icon-bullet_wrench', '删除机构', '3', '', '2016-04-06 18:30:46', '/base/syorganization!delete', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jgsq', '2016-04-06 18:30:46', '机构授权', 'ext-icon-bullet_wrench', '机构授权', '5', '', '2016-04-06 18:30:46', '/base/syorganization!grant', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jgtj', '2016-04-06 18:30:46', '添加机构', 'ext-icon-bullet_wrench', '添加机构', '1', '', '2016-04-06 18:30:46', '/base/syorganization!save', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jsbj', '2016-04-06 18:30:46', '编辑角色', 'ext-icon-bullet_wrench', '编辑角色', '2', '', '2016-04-06 18:30:46', '/base/syrole!update', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('jsck', '2016-04-06 18:30:46', '查看角色', 'ext-icon-bullet_wrench', '查看角色', '4', '', '2016-04-06 18:30:46', '/base/syrole!getById', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('jsgl', '2016-04-06 18:30:46', '管理系统中用户的角色', 'ext-icon-tux', '角色管理', '2', '', '2016-04-06 18:30:46', '/securityJsp/base/Syrole.jsp', 'xtgl', '0');
INSERT INTO `syresource` VALUES ('jslb', '2016-04-06 18:30:46', '查询角色列表', 'ext-icon-bullet_wrench', '角色列表', '0', '', '2016-04-06 18:30:46', '/base/syrole!grid', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('jssc', '2016-04-06 18:30:46', '删除角色', 'ext-icon-bullet_wrench', '删除角色', '3', '', '2016-04-06 18:30:46', '/base/syrole!delete', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('jssq', '2016-04-06 18:30:46', '角色授权', 'ext-icon-bullet_wrench', '角色授权', '5', '', '2016-04-06 18:30:46', '/base/syrole!grant', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('jstj', '2016-04-06 18:30:46', '添加角色', 'ext-icon-bullet_wrench', '添加角色', '1', '', '2016-04-06 18:30:46', '/base/syrole!save', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('monitoring', '2016-04-06 18:30:46', '监控项目', 'ext-icon-monitor_error', '项目监控', '1', '', '2016-04-06 18:30:46', '/monitoring', 'xtjk', '0');
INSERT INTO `syresource` VALUES ('online', '2016-04-06 18:30:46', '监控用户登录、注销', 'ext-icon-chart_line', '用户登录历史监控', '4', '', '2016-04-06 18:30:46', '/securityJsp/base/Syonline.jsp', 'xtjk', '0');
INSERT INTO `syresource` VALUES ('onlineGrid', '2016-04-06 18:30:46', '用户登录、注销历史记录列表', 'ext-icon-bullet_wrench', '用户登录历史列表', '0', '', '2016-04-06 18:30:46', '/base/syonline!grid', 'online', '1');
INSERT INTO `syresource` VALUES ('petuserbj', '2016-04-06 18:30:46', '编辑用户', 'ext-icon-bullet_wrench', '编辑用户', '2', '', '2016-04-06 18:30:46', '/pet/user!update', 'petusergl', '1');
INSERT INTO `syresource` VALUES ('petuserck', '2016-04-06 18:30:46', '查看用户', 'ext-icon-bullet_wrench', '查看用户', '4', '', '2016-04-06 18:30:46', '/pet/user!getById', 'petusergl', '1');
INSERT INTO `syresource` VALUES ('petusergl', '2016-04-06 18:30:46', '用户管理', 'ext-icon-newspaper_link', '用户管理', '1', '', '2016-04-06 18:30:46', '/securityJsp/pet/user.jsp', 'yunyinggl', '0');
INSERT INTO `syresource` VALUES ('petuserlb', '2016-04-06 18:30:46', '用户列表', 'ext-icon-bullet_wrench', '用户列表', '0', '', '2016-04-06 18:30:46', '/pet/user!grid', 'petusergl', '1');
INSERT INTO `syresource` VALUES ('petusersc', '2016-04-06 18:30:46', '删除用户', 'ext-icon-bullet_wrench', '删除用户', '3', '', '2016-04-06 18:30:46', '/pet/user!delete', 'petusergl', '1');
INSERT INTO `syresource` VALUES ('petusertj', '2016-04-06 18:30:46', '添加用户', 'ext-icon-bullet_wrench', '添加用户', '1', '', '2016-04-06 18:30:46', '/pet/user!save', 'petusergl', '1');
INSERT INTO `syresource` VALUES ('sencebj', '2016-04-06 18:30:46', '编辑场景', 'ext-icon-bullet_wrench', '编辑场景', '2', null, '2016-06-20 10:22:09', '/cfg/scene!update', 'sencegl', '1');
INSERT INTO `syresource` VALUES ('senceck', '2016-04-06 18:30:46', '查看场景', 'ext-icon-bullet_wrench', '查看场景', '4', null, '2016-06-20 10:24:15', '/cfg/scene!getById', 'sencegl', '1');
INSERT INTO `syresource` VALUES ('sencegl', '2016-04-06 18:30:46', '场景管理', 'ext-icon-newspaper_link', '场景管理', '1', '', '2016-04-06 18:30:46', '/securityJsp/cfg/scene.jsp', 'cfggl', '0');
INSERT INTO `syresource` VALUES ('sencelb', '2016-04-06 18:30:46', '场景列表', 'ext-icon-bullet_wrench', '场景列表', '3', null, '2016-06-20 10:23:29', '/cfg/scene!grid', 'sencegl', '1');
INSERT INTO `syresource` VALUES ('sencesc', '2016-04-06 18:30:46', '删除场景', 'ext-icon-bullet_wrench', '删除场景', '3', null, '2016-06-20 10:23:18', '/cfg/scene!delete', 'sencegl', '1');
INSERT INTO `syresource` VALUES ('sencetj', '2016-04-06 18:30:46', '添加场景', 'ext-icon-bullet_wrench', '添加场景', '1', null, '2016-06-20 10:01:41', '/cfg/scene!save', 'sencegl', '1');
INSERT INTO `syresource` VALUES ('taskbj', '2016-04-06 18:30:46', '编辑推送', 'ext-icon-bullet_wrench', '编辑推送', '2', null, '2016-06-20 10:05:00', '/cfg/task!update', 'taskgl', '1');
INSERT INTO `syresource` VALUES ('taskck', '2016-04-06 18:30:46', '查看推送', 'ext-icon-bullet_wrench', '查看推送', '4', null, '2016-06-20 10:23:53', '/cfg/task!getById', 'taskgl', '1');
INSERT INTO `syresource` VALUES ('taskgl', '2016-04-06 18:30:46', '推送管理', 'ext-icon-newspaper_link', '推送管理', '1', '', '2016-04-06 18:30:46', '/securityJsp/cfg/task.jsp', 'cfggl', '0');
INSERT INTO `syresource` VALUES ('tasklb', '2016-04-06 18:30:46', '推送列表', 'ext-icon-bullet_wrench', '推送列表', '0', null, '2016-06-20 10:03:43', '/cfg/task!grid', 'taskgl', '1');
INSERT INTO `syresource` VALUES ('tasksc', '2016-04-06 18:30:46', '删除推送', 'ext-icon-bullet_wrench', '删除推送', '3', null, '2016-06-20 10:23:01', '/cfg/task!delete', 'taskgl', '1');
INSERT INTO `syresource` VALUES ('tasktj', '2016-04-06 18:30:46', '添加推送', 'ext-icon-bullet_wrench', '添加推送', '1', null, '2016-06-20 10:04:13', '/cfg/task!save', 'taskgl', '1');
INSERT INTO `syresource` VALUES ('taskupdateStatus', '2016-04-06 18:30:46', '上/下线', 'ext-icon-bullet_wrench', '上/下线', '5', null, '2016-06-20 10:25:09', '/cfg/task!upOrDownStatus', 'taskgl', '1');
INSERT INTO `syresource` VALUES ('userCreateDatetimeChart', '2016-04-06 18:30:46', '用户注册时间分布报表', 'ext-icon-chart_bar', '注册时间分布', '1', '', '2016-04-06 18:30:46', '/securityJsp/base/chart/userCreateDatetimeChart.jsp', 'xtbb', '0');
INSERT INTO `syresource` VALUES ('userRoleChart', '2016-04-06 18:30:46', '用户角色分布', 'ext-icon-chart_pie', '用户角色分布', '2', '', '2016-04-06 18:30:46', '/securityJsp/base/chart/userRoleChart.jsp', 'xtbb', '0');
INSERT INTO `syresource` VALUES ('xtbb', '2016-04-06 18:30:46', '查看系统相关报表图标', 'ext-icon-chart_curve', '系统报表', '2', '', '2016-04-06 18:30:46', '/welcome.jsp', null, '0');
INSERT INTO `syresource` VALUES ('xtgl', '2016-04-06 18:30:46', '管理系统的资源、角色、机构、用户等信息', 'ext-icon-application_view_tile', '系统管理', '0', '', '2016-04-06 18:30:46', '/welcome.jsp', null, '0');
INSERT INTO `syresource` VALUES ('xtjk', '2016-04-06 18:30:46', '监控系统运行情况等信息', 'ext-icon-monitor', '系统监控', '1', '', '2016-04-06 18:30:46', '/welcome.jsp', null, '0');
INSERT INTO `syresource` VALUES ('yhbj', '2016-04-06 18:30:46', '编辑用户', 'ext-icon-bullet_wrench', '编辑用户', '2', '', '2016-04-06 18:30:46', '/base/syuser!update', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhck', '2016-04-06 18:30:46', '查看用户', 'ext-icon-bullet_wrench', '查看用户', '4', '', '2016-04-06 18:30:46', '/base/syuser!getById', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhgl', '2016-04-06 18:30:46', '管理系统中用户的用户', 'ext-icon-user_suit', '用户管理', '4', '', '2016-04-06 18:30:46', '/securityJsp/base/Syuser.jsp', 'xtgl', '0');
INSERT INTO `syresource` VALUES ('yhjg', '2016-04-06 18:30:46', '编辑用户机构', 'ext-icon-bullet_wrench', '用户机构', '6', '', '2016-04-06 18:30:46', '/base/syuser!grantOrganization', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhjs', '2016-04-06 18:30:46', '编辑用户角色', 'ext-icon-bullet_wrench', '用户角色', '5', '', '2016-04-06 18:30:46', '/base/syuser!grantRole', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhlb', '2016-04-06 18:30:46', '查询用户列表', 'ext-icon-bullet_wrench', '用户列表', '0', '', '2016-04-06 18:30:46', '/base/syuser!grid', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhsc', '2016-04-06 18:30:46', '删除用户', 'ext-icon-bullet_wrench', '删除用户', '3', '', '2016-04-06 18:30:46', '/base/syuser!delete', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhtj', '2016-04-06 18:30:46', '添加用户', 'ext-icon-bullet_wrench', '添加用户', '1', '', '2016-04-06 18:30:46', '/base/syuser!save', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yunyinggl', '2016-04-15 17:47:28', '运营管理', 'ext-icon-bullet_wrench', '运营管理', '3', null, '2016-04-25 06:42:55', '/welcome.jsp', null, '0');
INSERT INTO `syresource` VALUES ('zybj', '2016-04-06 18:30:46', '编辑资源', 'ext-icon-bullet_wrench', '编辑资源', '2', '', '2016-04-06 18:30:46', '/base/syresource!update', 'zygl', '1');
INSERT INTO `syresource` VALUES ('zyck', '2016-04-06 18:30:46', '查看资源', 'ext-icon-bullet_wrench', '查看资源', '4', '', '2016-04-06 18:30:46', '/base/syresource!getById', 'zygl', '1');
INSERT INTO `syresource` VALUES ('zygl', '2016-04-06 18:30:46', '管理系统的资源', 'ext-icon-newspaper_link', '资源管理', '1', '', '2016-04-06 18:30:46', '/securityJsp/base/Syresource.jsp', 'xtgl', '0');
INSERT INTO `syresource` VALUES ('zylb', '2016-04-06 18:30:46', '查询资源', 'ext-icon-bullet_wrench', '资源列表', '0', '', '2016-04-06 18:30:46', '/base/syresource!treeGrid', 'zygl', '1');
INSERT INTO `syresource` VALUES ('zysc', '2016-04-06 18:30:46', '删除资源', 'ext-icon-bullet_wrench', '删除资源', '3', '', '2016-04-06 18:30:46', '/base/syresource!delete', 'zygl', '1');
INSERT INTO `syresource` VALUES ('zytj', '2016-04-06 18:30:46', '添加资源', 'ext-icon-bullet_wrench', '添加资源', '1', '', '2016-04-06 18:30:46', '/base/syresource!save', 'zygl', '1');

-- ----------------------------
-- Table structure for `syresourcetype`
-- ----------------------------
DROP TABLE IF EXISTS `syresourcetype`;
CREATE TABLE `syresourcetype` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `UPDATEDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syresourcetype
-- ----------------------------
INSERT INTO `syresourcetype` VALUES ('0', '2016-04-06 18:30:46', '菜单类型会显示在系统首页左侧菜单中', '菜单', '2016-04-06 18:30:46');
INSERT INTO `syresourcetype` VALUES ('1', '2016-04-06 18:30:46', '功能类型不会显示在系统首页左侧菜单中', '功能', '2016-04-06 18:30:46');

-- ----------------------------
-- Table structure for `syrole`
-- ----------------------------
DROP TABLE IF EXISTS `syrole`;
CREATE TABLE `syrole` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `ICONCLS` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `UPDATEDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syrole
-- ----------------------------
INSERT INTO `syrole` VALUES ('0', '2016-04-06 18:30:46', '拥有系统所有权限', null, '超管', '0', '2016-04-12 15:36:42');

-- ----------------------------
-- Table structure for `syrole_syresource`
-- ----------------------------
DROP TABLE IF EXISTS `syrole_syresource`;
CREATE TABLE `syrole_syresource` (
  `SYROLE_ID` varchar(36) NOT NULL,
  `SYRESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SYRESOURCE_ID`,`SYROLE_ID`),
  KEY `FK_kkrartsovl2frhfvriqdi7jwl` (`SYRESOURCE_ID`) USING BTREE,
  KEY `FK_r139h669pg4ts6mbvn3ip5472` (`SYROLE_ID`) USING BTREE,
  CONSTRAINT `syrole_syresource_ibfk_1` FOREIGN KEY (`SYRESOURCE_ID`) REFERENCES `syresource` (`ID`),
  CONSTRAINT `syrole_syresource_ibfk_2` FOREIGN KEY (`SYROLE_ID`) REFERENCES `syrole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syrole_syresource
-- ----------------------------
INSERT INTO `syrole_syresource` VALUES ('0', 'actionConfigBrowser');
INSERT INTO `syrole_syresource` VALUES ('0', 'animationbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'animationck');
INSERT INTO `syrole_syresource` VALUES ('0', 'animationgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'animationlb');
INSERT INTO `syrole_syresource` VALUES ('0', 'animationsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'animationtj');
INSERT INTO `syrole_syresource` VALUES ('0', 'cfggl');
INSERT INTO `syrole_syresource` VALUES ('0', 'dialogconfbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'dialogconfck');
INSERT INTO `syrole_syresource` VALUES ('0', 'dialogconfgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'dialogconflb');
INSERT INTO `syrole_syresource` VALUES ('0', 'dialogconfsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'dialogconftj');
INSERT INTO `syrole_syresource` VALUES ('0', 'druid');
INSERT INTO `syrole_syresource` VALUES ('0', 'growlogicbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'growlogicck');
INSERT INTO `syrole_syresource` VALUES ('0', 'growlogicgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'growlogiclb');
INSERT INTO `syrole_syresource` VALUES ('0', 'growlogicsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'growlogictj');
INSERT INTO `syrole_syresource` VALUES ('0', 'informationbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'informationck');
INSERT INTO `syrole_syresource` VALUES ('0', 'informationgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'informationlb');
INSERT INTO `syrole_syresource` VALUES ('0', 'informationsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'informationtj');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgck');
INSERT INTO `syrole_syresource` VALUES ('0', 'jggl');
INSERT INTO `syrole_syresource` VALUES ('0', 'jglb');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgsq');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgtj');
INSERT INTO `syrole_syresource` VALUES ('0', 'jsbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'jsck');
INSERT INTO `syrole_syresource` VALUES ('0', 'jsgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'jslb');
INSERT INTO `syrole_syresource` VALUES ('0', 'jssc');
INSERT INTO `syrole_syresource` VALUES ('0', 'jssq');
INSERT INTO `syrole_syresource` VALUES ('0', 'jstj');
INSERT INTO `syrole_syresource` VALUES ('0', 'monitoring');
INSERT INTO `syrole_syresource` VALUES ('0', 'online');
INSERT INTO `syrole_syresource` VALUES ('0', 'onlineGrid');
INSERT INTO `syrole_syresource` VALUES ('0', 'petuserbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'petuserck');
INSERT INTO `syrole_syresource` VALUES ('0', 'petusergl');
INSERT INTO `syrole_syresource` VALUES ('0', 'petuserlb');
INSERT INTO `syrole_syresource` VALUES ('0', 'petusersc');
INSERT INTO `syrole_syresource` VALUES ('0', 'petusertj');
INSERT INTO `syrole_syresource` VALUES ('0', 'sencebj');
INSERT INTO `syrole_syresource` VALUES ('0', 'senceck');
INSERT INTO `syrole_syresource` VALUES ('0', 'sencegl');
INSERT INTO `syrole_syresource` VALUES ('0', 'sencelb');
INSERT INTO `syrole_syresource` VALUES ('0', 'sencesc');
INSERT INTO `syrole_syresource` VALUES ('0', 'sencetj');
INSERT INTO `syrole_syresource` VALUES ('0', 'taskbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'taskck');
INSERT INTO `syrole_syresource` VALUES ('0', 'taskgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'tasklb');
INSERT INTO `syrole_syresource` VALUES ('0', 'tasksc');
INSERT INTO `syrole_syresource` VALUES ('0', 'tasktj');
INSERT INTO `syrole_syresource` VALUES ('0', 'taskupdateStatus');
INSERT INTO `syrole_syresource` VALUES ('0', 'userCreateDatetimeChart');
INSERT INTO `syrole_syresource` VALUES ('0', 'userRoleChart');
INSERT INTO `syrole_syresource` VALUES ('0', 'xtbb');
INSERT INTO `syrole_syresource` VALUES ('0', 'xtgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'xtjk');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhck');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhjg');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhjs');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhlb');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhtj');
INSERT INTO `syrole_syresource` VALUES ('0', 'yunyinggl');
INSERT INTO `syrole_syresource` VALUES ('0', 'zybj');
INSERT INTO `syrole_syresource` VALUES ('0', 'zyck');
INSERT INTO `syrole_syresource` VALUES ('0', 'zygl');
INSERT INTO `syrole_syresource` VALUES ('0', 'zylb');
INSERT INTO `syrole_syresource` VALUES ('0', 'zysc');
INSERT INTO `syrole_syresource` VALUES ('0', 'zytj');

-- ----------------------------
-- Table structure for `syuser`
-- ----------------------------
DROP TABLE IF EXISTS `syuser`;
CREATE TABLE `syuser` (
  `ID` varchar(36) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `LOGINNAME` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `PHOTO` varchar(200) DEFAULT NULL,
  `PWD` varchar(100) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `UPDATEDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syuser
-- ----------------------------
INSERT INTO `syuser` VALUES ('0', '30', '2016-04-06 18:30:46', 'admin', '系统管理员', null, 'e10adc3949ba59abbe56e057f20f883e', '1', '2016-04-06 18:30:46');

-- ----------------------------
-- Table structure for `syuser_syorganization`
-- ----------------------------
DROP TABLE IF EXISTS `syuser_syorganization`;
CREATE TABLE `syuser_syorganization` (
  `SYUSER_ID` varchar(36) NOT NULL,
  `SYORGANIZATION_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SYORGANIZATION_ID`,`SYUSER_ID`),
  KEY `FK_14ewqc5wtscac0dd5rswrm5j2` (`SYORGANIZATION_ID`) USING BTREE,
  KEY `FK_63bdmtxwlk259id13rp4iryy` (`SYUSER_ID`) USING BTREE,
  CONSTRAINT `syuser_syorganization_ibfk_1` FOREIGN KEY (`SYORGANIZATION_ID`) REFERENCES `syorganization` (`ID`),
  CONSTRAINT `syuser_syorganization_ibfk_2` FOREIGN KEY (`SYUSER_ID`) REFERENCES `syuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syuser_syorganization
-- ----------------------------
INSERT INTO `syuser_syorganization` VALUES ('0', '0');

-- ----------------------------
-- Table structure for `syuser_syrole`
-- ----------------------------
DROP TABLE IF EXISTS `syuser_syrole`;
CREATE TABLE `syuser_syrole` (
  `SYUSER_ID` varchar(36) NOT NULL,
  `SYROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SYROLE_ID`,`SYUSER_ID`),
  KEY `FK_j7iwtgslc2esrjx0ptieleoko` (`SYROLE_ID`) USING BTREE,
  KEY `FK_1pi4p5h4y5ghbs5f4gdlgn620` (`SYUSER_ID`) USING BTREE,
  CONSTRAINT `syuser_syrole_ibfk_1` FOREIGN KEY (`SYUSER_ID`) REFERENCES `syuser` (`ID`),
  CONSTRAINT `syuser_syrole_ibfk_2` FOREIGN KEY (`SYROLE_ID`) REFERENCES `syrole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syuser_syrole
-- ----------------------------
INSERT INTO `syuser_syrole` VALUES ('0', '0');

-- ----------------------------
-- Table structure for `t_cfg_animation`
-- ----------------------------
DROP TABLE IF EXISTS `t_cfg_animation`;
CREATE TABLE `t_cfg_animation` (
  `ID` varchar(36) NOT NULL COMMENT '主键id',
  `NAME` varchar(50) DEFAULT NULL COMMENT '动画场景',
  `BEGIN_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `DURATION` int(5) DEFAULT NULL COMMENT '动画时长（单位s）',
  `FILE_URL` varchar(255) DEFAULT NULL COMMENT '文件上传路径',
  `FILE_PREFIXA` longtext COMMENT '文件前缀',
  `NUMBER` tinyint(4) DEFAULT NULL COMMENT '文件数量',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `CREATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `UPDATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `END_DATE` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `def1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `def2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `def3` varchar(255) DEFAULT NULL COMMENT '附加字段3',
  `DUTATION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_6qqd9xblyterxsqsfyyh6k3kr` (`CREATED_USER_CD`) USING BTREE,
  KEY `FK_3cfxahupq5w5jti81tolpy60r` (`UPDATED_USER_CD`) USING BTREE,
  CONSTRAINT `t_cfg_animation_ibfk_1` FOREIGN KEY (`UPDATED_USER_CD`) REFERENCES `syuser` (`ID`),
  CONSTRAINT `t_cfg_animation_ibfk_2` FOREIGN KEY (`CREATED_USER_CD`) REFERENCES `syuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动画配置';

-- ----------------------------
-- Records of t_cfg_animation
-- ----------------------------
INSERT INTO `t_cfg_animation` VALUES ('7a0638e8-a200-4573-b070-2bc38bafc134', 'daa', '2016-04-13 16:31:53', '2016-04-15 16:31:53', '1', null, '/sys_admin/jslib/ueditor1_2_6_1-utf8-jsp/jsp/upload/20160415/43391460709741188.jpg;/sys_admin/jslib/ueditor1_2_6_1-utf8-jsp/jsp/upload/20160415/43911460709628665.jpg;/sys_admin/jslib/ueditor1_2_6_1-utf8-jsp/jsp/upload/20160415/7621460709626309.jpg', null, '2016-04-15 16:32:06', '2016-04-24 15:56:52', '0', '0', null, null, null, null, '4');

-- ----------------------------
-- Table structure for `t_cfg_dialogconf`
-- ----------------------------
DROP TABLE IF EXISTS `t_cfg_dialogconf`;
CREATE TABLE `t_cfg_dialogconf` (
  `ID` varchar(36) NOT NULL COMMENT '主键id',
  `DIALOG_NAME` varchar(50) DEFAULT NULL COMMENT '对话名称',
  `DIALOG_CONTENT` longtext COMMENT '对话内容',
  `BEGIN_TIEM` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `CREATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `UPDATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `END_DATE` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `def1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `def2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `def3` varchar(255) DEFAULT NULL COMMENT '附加字段3',
  `BEGIN_TIME` datetime DEFAULT NULL,
  `SCENE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_h74yd5n1lok1g1ff60jojj028` (`CREATED_USER_CD`) USING BTREE,
  KEY `FK_knfkd1e6l2kpirb8phk7n8tgl` (`UPDATED_USER_CD`) USING BTREE,
  CONSTRAINT `t_cfg_dialogconf_ibfk_1` FOREIGN KEY (`CREATED_USER_CD`) REFERENCES `syuser` (`ID`),
  CONSTRAINT `t_cfg_dialogconf_ibfk_2` FOREIGN KEY (`UPDATED_USER_CD`) REFERENCES `syuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cfg_dialogconf
-- ----------------------------
INSERT INTO `t_cfg_dialogconf` VALUES ('74883138-6820-435d-900a-c05a247a78f7', 'qe', 'eqwedsadas', null, '2016-04-27 15:46:52', '2016-04-24 15:46:58', '2016-04-24 15:47:04', '0', '0', null, null, null, null, '2016-04-24 15:46:49', null);

-- ----------------------------
-- Table structure for `t_cfg_growlogic`
-- ----------------------------
DROP TABLE IF EXISTS `t_cfg_growlogic`;
CREATE TABLE `t_cfg_growlogic` (
  `ID` varchar(36) NOT NULL COMMENT '主键ID',
  `EXP` int(8) DEFAULT NULL COMMENT '经验值',
  `GRADE` varchar(30) DEFAULT NULL COMMENT '等级',
  `MEDAL` varchar(30) DEFAULT NULL COMMENT '勋章',
  `XW_VAL` int(11) DEFAULT NULL COMMENT '胸围',
  `YW_VAL` int(11) DEFAULT NULL COMMENT '腰围',
  `TW_VAL` int(11) DEFAULT NULL COMMENT '臀围',
  `TITLE_MALE` varchar(50) DEFAULT NULL COMMENT '称号男',
  `TITLE_FEMALE` varchar(50) DEFAULT NULL COMMENT '称号女',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `CREATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `UPDATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `END_DATE` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `def1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `def2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `def3` varchar(255) DEFAULT NULL COMMENT '附加字段3',
  PRIMARY KEY (`ID`),
  KEY `FK_q6eyswfvodfme7kdxuolvivs7` (`CREATED_USER_CD`) USING BTREE,
  KEY `FK_an6y9irorynuog3lldlachb4b` (`UPDATED_USER_CD`) USING BTREE,
  CONSTRAINT `t_cfg_growlogic_ibfk_1` FOREIGN KEY (`UPDATED_USER_CD`) REFERENCES `syuser` (`ID`),
  CONSTRAINT `t_cfg_growlogic_ibfk_2` FOREIGN KEY (`CREATED_USER_CD`) REFERENCES `syuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宠物成长逻辑';

-- ----------------------------
-- Records of t_cfg_growlogic
-- ----------------------------
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab269b', '50', '1', '勋章', '13', '1', '2', '襁褓1', '襁褓1', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab270b', '100', '2', '勋章', '14', '2', '3', '襁褓2', '襁褓2', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab271b', '150', '3', '勋章', '15', '3', '4', '襁褓3', '襁褓3', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab272b', '200', '4', '勋章', '16', '4', '5', '襁褓4', '襁褓4', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab273b', '250', '5', '勋章', '17', '5', '6', '襁褓5', '襁褓5', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab274b', '330', '6', '勋章', '18', '6', '7', '孩提1', '孩提1', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab275b', '410', '7', '勋章', '19', '7', '8', '孩提2', '孩提2', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab276b', '490', '8', '勋章', '20', '8', '9', '孩提3', '孩提3', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab277b', '570', '9', '勋章', '21', '9', '10', '孩提4', '孩提4', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab278b', '650', '10', '勋章', '22', '10', '11', '孩提5', '孩提5', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab279b', '750', '11', '勋章', '23', '11', '12', '龆年1', '髫年1', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab280b', '850', '12', '勋章', '24', '12', '13', '龆年2', '髫年2', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab281b', '950', '13', '勋章', '25', '13', '14', '龆年3', '髫年3', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab282b', '1050', '14', '勋章', '26', '14', '15', '龆年4', '髫年4', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab283b', '1150', '15', '勋章', '27', '15', '16', '龆年5', '髫年5', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab284b', '1250', '16', '勋章', '28', '16', '17', '龆年6', '髫年6', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab285b', '1350', '17', '勋章', '29', '17', '18', '龆年7', '髫年7', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab286b', '1450', '18', '勋章', '30', '18', '19', '龆年8', '髫年8', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab287b', '1550', '19', '勋章', '31', '19', '20', '舞勺1', '金钗1', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab288b', '1650', '20', '勋章', '32', '20', '21', '舞勺2', '金钗2', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab289b', '1800', '21', '勋章', '33', '21', '22', '舞勺3', '金钗3', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab290b', '1950', '22', '勋章', '34', '22', '23', '舞勺4', '金钗4', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab291b', '2100', '23', '勋章', '35', '23', '24', '舞勺5', '金钗5', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab292b', '2250', '24', '勋章', '36', '24', '25', '舞勺6', '豆蔻1', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab293b', '2400', '25', '勋章', '37', '25', '26', '舞勺7', '豆蔻2', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab294b', '2550', '26', '勋章', '38', '26', '27', '舞勺8', '豆蔻3', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab295b', '2700', '27', '勋章', '39', '27', '28', '舞象1', '豆蔻4', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab296b', '2850', '28', '勋章', '40', '28', '29', '舞象2', '豆蔻5', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab297b', '3000', '29', '勋章', '41', '29', '30', '舞象3', '及笄1', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab298b', '3150', '30', '勋章', '42', '30', '31', '舞象4', '及笄2', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab299b', '3350', '31', '勋章', '43', '31', '32', '舞象5', '及笄3', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab300b', '3550', '32', '勋章', '44', '32', '33', '舞象6', '及笄4', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab301b', '3750', '33', '勋章', '45', '33', '34', '舞象7', '及笄5', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab302b', '3950', '34', '勋章', '46', '34', '35', '舞象8', '破瓜1', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab303b', '4150', '35', '勋章', '47', '35', '36', '弱冠1', '破瓜2', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab304b', '4350', '36', '勋章', '48', '36', '37', '弱冠2', '破瓜3', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab305b', '4550', '37', '勋章', '49', '37', '38', '弱冠3', '破瓜4', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab306b', '4750', '38', '勋章', '50', '38', '39', '弱冠4', '破瓜5', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab307b', '4950', '39', '勋章', '51', '39', '40', '弱冠5', '桃李1', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab308b', '5150', '40', '勋章', '52', '40', '41', '弱冠6', '桃李2', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab309b', '5350', '41', '勋章', '53', '41', '42', '弱冠7', '桃李3', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab310b', '5550', '42', '勋章', '54', '42', '43', '弱冠8', '桃李4', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab311b', '5750', '43', '勋章', '55', '43', '44', '而立1', '桃李5', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab312b', '5950', '44', '勋章', '56', '44', '45', '而立2', '花信1', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab313b', '6150', '45', '勋章', '57', '45', '46', '而立3', '花信2', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab314b', '6350', '46', '勋章', '58', '46', '47', '而立4', '花信3', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab315b', '6550', '47', '勋章', '59', '47', '48', '而立5', '花信4', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab316b', '6750', '48', '勋章', '60', '48', '49', '而立6', '花信5', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab317b', '6950', '49', '勋章', '61', '49', '50', '而立7', '花信6', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);
INSERT INTO `t_cfg_growlogic` VALUES ('41b6ca9e-fbeb-435a-bbba-d74248ab318b', null, '50', '勋章', '62', '50', '51', '而立8', '花信7', '2016-05-02 12:12:12', '2016-05-02 12:12:12', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_cfg_information`
-- ----------------------------
DROP TABLE IF EXISTS `t_cfg_information`;
CREATE TABLE `t_cfg_information` (
  `ID` varchar(36) NOT NULL COMMENT '主键id',
  `TITLE` varchar(50) DEFAULT NULL COMMENT '标题',
  `INFODESC` text COMMENT '描述',
  `IMG_URL` varchar(255) DEFAULT NULL COMMENT '图片',
  `INFOTIME` timestamp NULL DEFAULT NULL COMMENT '资讯时间',
  `CONTENT` text COMMENT 'html文本信息',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `CREATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `UPDATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `END_DATE` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `def1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `def2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `def3` varchar(255) DEFAULT NULL COMMENT '附加字段3',
  PRIMARY KEY (`ID`),
  KEY `FK_43eq7s6girmsqfhwhm5bu3llj` (`CREATED_USER_CD`) USING BTREE,
  KEY `FK_pncnquxksxdoyjgoomhjagcmf` (`UPDATED_USER_CD`) USING BTREE,
  CONSTRAINT `t_cfg_information_ibfk_1` FOREIGN KEY (`CREATED_USER_CD`) REFERENCES `syuser` (`ID`),
  CONSTRAINT `t_cfg_information_ibfk_2` FOREIGN KEY (`UPDATED_USER_CD`) REFERENCES `syuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资讯配置';

-- ----------------------------
-- Records of t_cfg_information
-- ----------------------------
INSERT INTO `t_cfg_information` VALUES ('11111', '112', '12312', '/sys_admin/jslib/ueditor1_2_6_1-utf8-jsp/jsp/upload/20160415/7621460709626309.jpg', '2016-04-13 15:47:19', '&lt;p&gt;dasdasdasd&lt;br/&gt;&lt;/p&gt;', '2016-04-13 15:47:26', '2016-04-24 15:34:13', '0', '0', null, null, null, null);
INSERT INTO `t_cfg_information` VALUES ('76cbb441-6901-416e-9c4b-de1e300c4141', '1', '3dasdsad', '/sys_admin/jslib/ueditor1_2_6_1-utf8-jsp/jsp/upload/20160415/43391460709741188.jpg', '2016-04-13 17:08:18', '&lt;p&gt;dasdasd&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0015.gif&quot;/&gt;&lt;/p&gt;', '2016-04-13 17:08:23', '2016-04-24 16:05:34', '0', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `t_cfg_scene`
-- ----------------------------
DROP TABLE IF EXISTS `t_cfg_scene`;
CREATE TABLE `t_cfg_scene` (
  `ID` varchar(36) NOT NULL COMMENT '主键id',
  `SCENE_NAME` varchar(30) DEFAULT NULL COMMENT '场景名称',
  `BEGIN_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `ECONDITION` int(4) DEFAULT NULL COMMENT '有效条件',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `CREATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `UPDATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `END_DATE` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `def1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `def2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `def3` varchar(255) DEFAULT NULL COMMENT '附加字段3',
  PRIMARY KEY (`ID`),
  KEY `FK_4pd3ox5ujlpv7b5sn1en9ub7c` (`CREATED_USER_CD`) USING BTREE,
  KEY `FK_hksxi69wrbaq2h58glkjwb4in` (`UPDATED_USER_CD`) USING BTREE,
  CONSTRAINT `t_cfg_scene_ibfk_1` FOREIGN KEY (`CREATED_USER_CD`) REFERENCES `syuser` (`ID`),
  CONSTRAINT `t_cfg_scene_ibfk_2` FOREIGN KEY (`UPDATED_USER_CD`) REFERENCES `syuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cfg_scene
-- ----------------------------
INSERT INTO `t_cfg_scene` VALUES ('878a76ae-6727-44e6-be2b-21cb638f67c0', 'wqe', '2016-04-24 15:40:43', '2016-04-27 15:40:54', '5', '2016-04-24 15:40:58', '2016-04-24 15:40:58', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_cfg_task`
-- ----------------------------
DROP TABLE IF EXISTS `t_cfg_task`;
CREATE TABLE `t_cfg_task` (
  `ID` varchar(36) NOT NULL COMMENT '主键ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `CONTENT` longtext COMMENT '推送内容',
  `RATE` tinyint(2) DEFAULT NULL COMMENT '推送频率 1每天，2工作日，3每周，4单天 ',
  `BEGIN_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `TIME_SLOT` time DEFAULT NULL COMMENT '具体时间段',
  `STATUS` tinyint(2) DEFAULT '0' COMMENT '状态(0上线 1下线)',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `CREATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `UPDATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `END_DATE` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `def1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `def2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `def3` varchar(255) DEFAULT NULL COMMENT '附加字段3',
  PRIMARY KEY (`ID`),
  KEY `FK_cskpndge3yvs89g8rwb355dba` (`CREATED_USER_CD`) USING BTREE,
  KEY `FK_qkx7myt5xqveljyv6x5m26md8` (`UPDATED_USER_CD`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务配置';

-- ----------------------------
-- Records of t_cfg_task
-- ----------------------------
INSERT INTO `t_cfg_task` VALUES ('20005cd4-987a-4d4a-a682-007137b166d7', '312', '312', '1', '2016-04-27 16:43:32', '2016-04-27 16:43:34', '16:44:00', '0', '2016-04-27 16:43:39', '2016-04-27 16:43:39', '0', null, null, null, null, null);
INSERT INTO `t_cfg_task` VALUES ('b437155f-2fab-4f1f-a36c-8a7cc077d457', 'adad', 'asdasddd', '4', '2016-04-12 15:43:35', '2016-06-09 15:43:38', '15:44:00', '0', '2016-04-15 15:02:25', '2016-04-24 15:58:27', '0', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `t_info_equipment`
-- ----------------------------
DROP TABLE IF EXISTS `t_info_equipment`;
CREATE TABLE `t_info_equipment` (
  `ID` varchar(36) NOT NULL COMMENT '主键ID',
  `TYPE` tinyint(2) DEFAULT NULL COMMENT '操作类型（1，打开设备 2，关闭设备 3，进入页面 4，离开页面）',
  `TIME` timestamp NULL DEFAULT NULL COMMENT '时间',
  `IS_TAG` tinyint(2) DEFAULT NULL COMMENT '进入页面TAG 0进入  1未进入',
  `USER_ID` varchar(36) DEFAULT NULL COMMENT '用户ID',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `CREATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `UPDATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `END_DATE` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `DEF1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `DEF2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `DEF3` varchar(255) DEFAULT NULL COMMENT '附加字段3',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备交互统计接';

-- ----------------------------
-- Records of t_info_equipment
-- ----------------------------
INSERT INTO `t_info_equipment` VALUES ('03b43b3b-d706-4124-b1cf-996e9807f039', '1', '2016-12-12 12:12:12', null, null, '2016-05-04 11:06:23', '2016-05-04 11:06:23', null, null, null, null, null, null);
INSERT INTO `t_info_equipment` VALUES ('1bf54b4e-4658-4733-aa10-064a3d8870fd', '1', '2016-12-12 12:12:12', null, null, '2016-05-04 11:07:58', '2016-05-04 11:07:58', null, null, null, null, null, null);
INSERT INTO `t_info_equipment` VALUES ('51c753dc-90b9-4ed2-96f6-8f7df1680112', '1', '2016-12-12 00:12:12', null, null, '2016-05-04 10:57:00', '2016-05-04 10:57:00', null, null, null, null, null, null);
INSERT INTO `t_info_equipment` VALUES ('b743ac65-b230-463b-800f-26d996f31bff', '1', '2016-12-12 12:12:12', '0', '01b4e381-4908-4069-bfc4-6e25dede3b1e', '2016-05-04 11:28:58', '2016-05-04 11:28:58', null, null, null, null, null, null);
INSERT INTO `t_info_equipment` VALUES ('d0822698-c862-48c4-bbd0-9eda20c3d10c', '1', '2016-12-12 12:12:12', '0', '01b4e381-4908-4069-bfc4-6e25dede3b1e', '2016-05-04 11:27:30', '2016-05-04 11:27:30', null, null, null, null, null, null);
INSERT INTO `t_info_equipment` VALUES ('df21a19b-c601-42d2-a242-4950f103019f', '1', '2016-12-12 12:12:12', '0', '01b4e381-4908-4069-bfc4-6e25dede3b1e', '2016-07-10 15:21:23', '2016-07-10 15:21:23', null, null, null, null, null, null);
INSERT INTO `t_info_equipment` VALUES ('e0cfb01a-4cf0-4cbf-9133-e00155b5da5b', '1', '2016-12-12 12:12:12', null, '01b4e381-4908-4069-bfc4-6e25dede3b1e', '2016-05-04 11:27:15', '2016-05-04 11:27:15', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_info_hardware`
-- ----------------------------
DROP TABLE IF EXISTS `t_info_hardware`;
CREATE TABLE `t_info_hardware` (
  `ID` varchar(36) NOT NULL COMMENT '主键ID',
  `GAL` double(10,2) DEFAULT NULL COMMENT '加速度',
  `GRAVIVTY` double(10,2) DEFAULT NULL COMMENT '重力',
  `DIRECTION` varchar(10) DEFAULT NULL COMMENT '方向',
  `THREE` double(10,2) DEFAULT NULL COMMENT '三位螺旋仪',
  `HEART_RATE` double(10,2) DEFAULT NULL COMMENT '心率',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `CREATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `UPDATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `END_DATE` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `DEF1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `DEF2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `DEF3` varchar(255) DEFAULT NULL COMMENT '附加字段3',
  `USER_ID` varchar(36) DEFAULT NULL,
  `TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='硬件数据收集';

-- ----------------------------
-- Records of t_info_hardware
-- ----------------------------
INSERT INTO `t_info_hardware` VALUES ('0503f04a-8948-46c2-830a-97579c4ce04a', '10.22', '32.00', null, null, null, '2016-05-03 18:15:14', '2016-05-03 18:15:14', null, null, null, null, null, null, null, null);
INSERT INTO `t_info_hardware` VALUES ('1a1f89a3-53ea-4d53-96c8-6ae8ed2cc42d', '10.22', '32.00', '上', '11.20', '12.33', '2016-05-03 18:19:51', '2016-05-03 18:19:51', null, null, null, null, null, null, null, null);
INSERT INTO `t_info_hardware` VALUES ('af8c1338-598d-47ad-9b1e-2ee65af7d0af', '10.22', '32.00', '上', '11.20', '12.33', '2016-05-03 18:19:26', '2016-05-03 18:19:26', null, null, null, null, null, null, null, null);
INSERT INTO `t_info_hardware` VALUES ('cdc0c15e-db67-4715-83f5-da5a1721d767', '10.22', '32.00', '上', '11.20', '12.33', '2016-05-03 18:25:58', '2016-05-03 18:25:58', null, null, null, null, null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e', null);

-- ----------------------------
-- Table structure for `t_info_interactive`
-- ----------------------------
DROP TABLE IF EXISTS `t_info_interactive`;
CREATE TABLE `t_info_interactive` (
  `ID` varchar(36) NOT NULL COMMENT '主键ID',
  `TYPE` tinyint(2) DEFAULT NULL COMMENT '类型',
  `TIME` timestamp NULL DEFAULT NULL COMMENT '时间',
  `USER_ID` varchar(36) DEFAULT NULL COMMENT '操作用户ID',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `CREATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `UPDATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `END_DATE` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `DEF1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `DEF2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `DEF3` varchar(255) DEFAULT NULL COMMENT '附加字段3',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宠物交互数据统计';

-- ----------------------------
-- Records of t_info_interactive
-- ----------------------------
INSERT INTO `t_info_interactive` VALUES ('1dd55161-7351-4131-bb5b-a2eeac66a9c7', '1', '2016-12-12 12:12:12', '01b4e381-4908-4069-bfc4-6e25dede3b1e', '2016-05-04 11:38:11', '2016-05-04 11:38:11', null, null, null, null, null, null);
INSERT INTO `t_info_interactive` VALUES ('2d68101f-6698-4c81-9858-37e5b394e94a', '1', '2016-12-12 12:12:12', '01b4e381-4908-4069-bfc4-6e25dede3b1e', '2016-05-04 11:38:11', '2016-05-04 11:38:11', null, null, null, null, null, null);
INSERT INTO `t_info_interactive` VALUES ('76855bd2-7ca2-4b4e-ac74-f3920c97c141', '1', '2016-12-12 12:12:12', '01b4e381-4908-4069-bfc4-6e25dede3b1e', '2016-05-04 11:38:11', '2016-05-04 11:38:11', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_info_share`
-- ----------------------------
DROP TABLE IF EXISTS `t_info_share`;
CREATE TABLE `t_info_share` (
  `ID` varchar(36) NOT NULL COMMENT '主键ID',
  `TYPE` varchar(20) DEFAULT NULL COMMENT '分享类型',
  `TIME` timestamp NULL DEFAULT NULL COMMENT '分享时间',
  `USER_ID` varchar(36) DEFAULT NULL COMMENT '分享用户ID',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `CREATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `UPDATED_USER_CD` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `END_DATE` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `DEF1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `DEF2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `DEF3` varchar(255) DEFAULT NULL COMMENT '附加字段3',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分享统计';

-- ----------------------------
-- Records of t_info_share
-- ----------------------------
INSERT INTO `t_info_share` VALUES ('e7aeae11-236c-4a7d-8537-c864c9fcb360', '微信', '2016-12-12 12:12:12', '01b4e381-4908-4069-bfc4-6e25dede3b1e', '2016-05-04 11:20:00', '2016-05-04 11:20:00', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_pet_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `t_pet_feedback`;
CREATE TABLE `t_pet_feedback` (
  `ID` varchar(36) NOT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL,
  `CONTENT` longtext,
  `TIME` datetime DEFAULT NULL,
  `CREATED_USER_CD` varchar(36) DEFAULT NULL,
  `UPDATED_USER_CD` varchar(36) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pet_feedback
-- ----------------------------
INSERT INTO `t_pet_feedback` VALUES ('082cba37-54d6-43d6-a3e9-b5a92ab43b44', '2016-07-09 13:04:33', null, '2016-07-09 13:04:33', 'test%20string', null, null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');
INSERT INTO `t_pet_feedback` VALUES ('0a09f8d6-bd20-474b-98a3-e7b7a1bf87ea', '2016-07-09 12:30:39', null, '2016-07-09 12:30:39', '31231', '2016-12-12 12:12:12', null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');
INSERT INTO `t_pet_feedback` VALUES ('0c4241d2-e066-443f-851d-984869d62672', '2016-05-10 16:48:15', null, '2016-05-10 16:48:15', '31231', '2016-12-12 12:12:12', null, null, null);
INSERT INTO `t_pet_feedback` VALUES ('214bfcdb-1700-4603-9dbf-2f3adf6e7563', '2016-05-10 16:48:07', null, '2016-05-10 16:48:07', '31231', '2016-12-12 12:12:12', null, null, null);
INSERT INTO `t_pet_feedback` VALUES ('3162b8b8-4757-42d6-8eba-657bb6962052', '2016-07-09 13:05:55', null, '2016-07-09 13:05:55', 'test%20string', null, null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');
INSERT INTO `t_pet_feedback` VALUES ('3b1220a5-7da4-4af6-a5cd-ec9241e0d230', '2016-07-09 13:05:42', null, '2016-07-09 13:05:42', 'test%20string', null, null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');
INSERT INTO `t_pet_feedback` VALUES ('433a7aa0-07bd-4450-9cf6-cd6291fcb7e1', '2016-05-10 16:48:15', null, '2016-05-10 16:48:15', '31231', '2016-12-12 12:12:12', null, null, null);
INSERT INTO `t_pet_feedback` VALUES ('4a7bdb00-cdee-4a4b-95b4-a62e9cb06c24', '2016-05-10 16:42:06', null, '2016-05-10 16:42:06', '31231', '2016-12-12 12:12:12', null, null, null);
INSERT INTO `t_pet_feedback` VALUES ('4f95b585-9a78-4a8d-b3b8-304522d68ca4', '2016-07-09 12:49:26', null, '2016-07-09 12:49:26', '31231', '2016-12-12 12:12:12', null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');
INSERT INTO `t_pet_feedback` VALUES ('5cd9cb30-c56b-4e47-9bae-90ea306f60ed', '2016-07-09 11:50:43', null, '2016-07-09 11:50:43', '31231', '2016-12-12 12:12:12', null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');
INSERT INTO `t_pet_feedback` VALUES ('5e8fc934-5237-4b92-8ee0-c7b41a8cf23b', '2016-05-10 16:48:15', null, '2016-05-10 16:48:15', '31231', '2016-12-12 12:12:12', null, null, null);
INSERT INTO `t_pet_feedback` VALUES ('77abccb9-4593-4dbb-8fe2-ab3711250260', '2016-07-09 12:29:39', null, '2016-07-09 12:29:39', '31231', '2016-12-12 12:12:12', null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');
INSERT INTO `t_pet_feedback` VALUES ('9695ad84-e1b1-406d-b358-9d9ec6bf8dc8', '2016-07-09 13:09:40', null, '2016-07-09 13:09:40', 'test%20string', null, null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');
INSERT INTO `t_pet_feedback` VALUES ('9a039c56-4239-4d99-99df-6d1705bf420e', '2016-05-10 16:48:16', null, '2016-05-10 16:48:16', '31231', '2016-12-12 12:12:12', null, null, null);
INSERT INTO `t_pet_feedback` VALUES ('a27688eb-e27d-472e-b14e-1232c8378dac', '2016-07-09 12:31:49', null, '2016-07-09 12:31:49', '31231', '2016-12-12 12:12:12', null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');
INSERT INTO `t_pet_feedback` VALUES ('a97d7352-ec48-4b28-9c0b-c93f864a7665', '2016-05-10 16:54:59', null, '2016-05-10 16:54:59', '31231', '2016-12-12 12:12:12', null, null, null);
INSERT INTO `t_pet_feedback` VALUES ('c16b7384-f5af-45a7-841c-4688f1fa79b5', '2016-07-09 13:06:12', null, '2016-07-09 13:06:12', 'test%20string', null, null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');
INSERT INTO `t_pet_feedback` VALUES ('d8a658d4-4dae-4cb9-b616-c317983d0147', '2016-05-10 16:48:15', null, '2016-05-10 16:48:15', '31231', '2016-12-12 12:12:12', null, null, null);
INSERT INTO `t_pet_feedback` VALUES ('db75ccb1-8b90-4f72-92fc-7ec7fc919c33', '2016-05-04 13:02:17', null, '2016-05-04 13:02:17', '31231', '2016-12-12 12:12:12', null, null, null);
INSERT INTO `t_pet_feedback` VALUES ('df01b5ae-033a-41ae-b06a-113e10a456fd', '2016-07-09 12:42:35', null, '2016-07-09 12:42:35', '31231', '2016-12-12 12:12:12', null, null, '01b4e381-4908-4069-bfc4-6e25dede3b1e');

-- ----------------------------
-- Table structure for `t_pet_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_pet_user`;
CREATE TABLE `t_pet_user` (
  `ID` varchar(36) NOT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `EXP_LEVEL_UP` int(11) DEFAULT NULL,
  `EXP_NOW` int(11) DEFAULT NULL,
  `JOB` varchar(255) DEFAULT NULL,
  `LEVEL_NOW` int(11) DEFAULT NULL,
  `LOGIN_ID` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `NICK` varchar(50) DEFAULT NULL COMMENT '宠物昵称',
  `TEL_PHONE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `CREATED_USER_CD` varchar(36) DEFAULT NULL,
  `UPDATED_USER_CD` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pet_user
-- ----------------------------
INSERT INTO `t_pet_user` VALUES ('111-111-11', null, '1200', '200', null, '2', null, null, '1', '11', '17091951433', null, null, null, null, null);
