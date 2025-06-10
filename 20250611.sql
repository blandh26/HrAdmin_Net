/*
 Navicat Premium Data Transfer

 Source Server         : yblistDb
 Source Server Type    : MySQL
 Source Server Version : 80200 (8.2.0)
 Source Host           : 39.106.149.60:3306
 Source Schema         : yblistdb

 Target Server Type    : MySQL
 Target Server Version : 80200 (8.2.0)
 File Encoding         : 65001

 Date: 11/06/2025 00:38:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `Cid` bigint NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `Title` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `CreateTime` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `UpdateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章内容',
  `AuthorName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '作者名',
  `UserId` bigint NOT NULL COMMENT '发布者用户id',
  `Status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章状态 1、发布 2、草稿3、定时发布',
  `editorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编辑器类型markdown,html',
  `Tags` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章标签',
  `Hits` int NULL DEFAULT 0 COMMENT '点击量',
  `category_Id` int NULL DEFAULT NULL COMMENT '目录id',
  `CoverUrl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '封面地址',
  `IsPublic` int NULL DEFAULT 0 COMMENT '是否公开 1、公开 0、不公开',
  `ArticleType` int NULL DEFAULT 0 COMMENT '内容类型0、文章 1、随笔 2、动态',
  `AbstractText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `CommentNum` int NULL DEFAULT NULL COMMENT '评论数',
  `PraiseNum` int NULL DEFAULT NULL COMMENT '点赞数',
  `UserIP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户IP',
  `Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地理位置',
  `TopicId` bigint NULL DEFAULT NULL COMMENT '话题ID',
  `CommentSwitch` int NULL DEFAULT NULL COMMENT '评论开关 0、所有人可评论 1、仅粉丝 2、仅自己',
  `AuditStatus` int NULL DEFAULT NULL COMMENT '审核状态 0、待审核 1、通过 2、拒绝',
  `EndTime` datetime NULL DEFAULT NULL COMMENT '截止时间',
  `Phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `WeChat` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信',
  `KaKao` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'kakao',
  `Email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮件',
  `Country` int NULL DEFAULT NULL COMMENT '国家',
  `Province` int NULL DEFAULT NULL COMMENT '省',
  `City` int NULL DEFAULT NULL COMMENT '市',
  `District` int NULL DEFAULT NULL COMMENT '区',
  `IsHot` int NULL DEFAULT 0 COMMENT '是否热点',
  `IsRecommend` int NULL DEFAULT 0 COMMENT '是否推荐',
  `IsTop` int NULL DEFAULT 0 COMMENT '是否置顶',
  `IsSlideshow` int NULL DEFAULT 0 COMMENT '是否幻灯片',
  `HotOrder` int NULL DEFAULT 0 COMMENT '热点序号',
  `RecommendOrder` int NULL DEFAULT 0 COMMENT '推荐序号',
  `TopOrder` int NULL DEFAULT 0 COMMENT '置顶序号',
  `SlideshowOrder` int NULL DEFAULT 0 COMMENT '幻灯片序号',
  PRIMARY KEY (`Cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内容管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '1', '2025-06-04 13:12:21', '2025-06-04 14:08:47', '1![](http://localhost:8888/2025/0604/22a933f7d0d95f27.jpg)\n', 'admin', 1, '1', 'markdown', '', 5, 0, NULL, 1, 0, '1', 0, 0, '127.0.0.1', '0-内网IP-内网IP', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (12, '12222', '2025-06-04 13:12:21', '2025-06-09 12:32:44', '1![](http://localhost:8888/2025/0604/22a933f7d0d95f27.jpg)\n', 'admin', 1, '1', 'markdown', '', 6, 0, NULL, 1, 0, '1333', 0, 0, '127.0.0.1', '0-内网IP-内网IP', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (13, '1', '2025-06-04 13:12:21', '2025-06-04 14:08:47', '1![](http://localhost:8888/2025/0604/22a933f7d0d95f27.jpg)\n', 'admin', 1, '1', 'markdown', '', 5, 0, NULL, 1, 0, '1', 0, 0, '127.0.0.1', '0-内网IP-内网IP', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (14, NULL, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `article` VALUES (17, '3123', '2025-06-09 14:43:25', NULL, '123123', 'admin', 1, '1', 'markdown', '', 0, 0, NULL, 1, 0, '123', 0, 0, '127.0.0.1', '0-内网IP-内网IP', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `article` VALUES (18, '3123123', '2025-06-09 14:43:56', '2025-06-09 14:47:01', '1231231231', 'admin', 1, '1', 'markdown', '', 0, 0, 'http://localhost:8888/2025/0609/3649ed1a5dd2e4a2.jpg', 1, 0, '2123', 0, 0, '127.0.0.1', '0-内网IP-内网IP', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `article` VALUES (19, '3123123123', '2025-06-09 15:15:50', '2025-06-09 18:21:12', '1212123123\n![](http://localhost:8888/2025/0609/771f4d79f81605e9.png)\n12\n1231233', 'admin', 1, '1', 'markdown', '123,11111,阿斯顿', 3, 1, 'http://localhost:8888/2025/0609/771f4d79f81605e9.png', 1, 0, '123123', 0, 0, '127.0.0.1', '0-内网IP-内网IP', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for article_attribute
-- ----------------------------
DROP TABLE IF EXISTS `article_attribute`;
CREATE TABLE `article_attribute`  (
  `article_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'articleid',
  `Attribute_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性名称',
  `Attribute_Value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性值',
  PRIMARY KEY (`article_id`, `Attribute_Name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章目录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_attribute
-- ----------------------------
INSERT INTO `article_attribute` VALUES (1, '', '');
INSERT INTO `article_attribute` VALUES (2, '', '');
INSERT INTO `article_attribute` VALUES (3, '', '');
INSERT INTO `article_attribute` VALUES (4, '', '');
INSERT INTO `article_attribute` VALUES (5, '', '');
INSERT INTO `article_attribute` VALUES (6, '', '');
INSERT INTO `article_attribute` VALUES (14, '', '');
INSERT INTO `article_attribute` VALUES (15, '', '');

-- ----------------------------
-- Table structure for article_browsing_log
-- ----------------------------
DROP TABLE IF EXISTS `article_browsing_log`;
CREATE TABLE `article_browsing_log`  (
  `LogId` bigint NOT NULL,
  `Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `UserIP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AddTime` datetime NULL DEFAULT NULL,
  `ArticleId` bigint NULL DEFAULT NULL COMMENT '文章ID',
  `UserId` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`LogId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内容浏览记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_browsing_log
-- ----------------------------
INSERT INTO `article_browsing_log` VALUES (1930130584571617280, '0-内网IP-内网IP', '127.0.0.1', '2025-06-04 13:12:46', 1, 1);
INSERT INTO `article_browsing_log` VALUES (1930144632717582336, '0-内网IP-内网IP', '127.0.0.1', '2025-06-04 14:08:35', 1, 1);
INSERT INTO `article_browsing_log` VALUES (1930867032727887872, '0-内网IP-内网IP', '127.0.0.1', '2025-06-06 13:59:09', 1, 1);
INSERT INTO `article_browsing_log` VALUES (1930891101464567808, '0-内网IP-内网IP', '127.0.0.1', '2025-06-06 15:34:47', 1, 1);
INSERT INTO `article_browsing_log` VALUES (1931709173289066496, '0-内网IP-内网IP', '127.0.0.1', '2025-06-08 21:45:31', 1, 1);
INSERT INTO `article_browsing_log` VALUES (1931932323394232320, '0-内网IP-内网IP', '127.0.0.1', '2025-06-09 12:32:14', 13, 1);
INSERT INTO `article_browsing_log` VALUES (1931966172765495296, '0-内网IP-内网IP', '127.0.0.1', '2025-06-09 14:46:44', 12, 1);
INSERT INTO `article_browsing_log` VALUES (1931973523140648960, '0-内网IP-内网IP', '127.0.0.1', '2025-06-09 15:15:57', 19, 1);
INSERT INTO `article_browsing_log` VALUES (1932019946632650752, '0-内网IP-内网IP', '127.0.0.1', '2025-06-09 18:20:25', 19, 1);
INSERT INTO `article_browsing_log` VALUES (1932024011873722368, '0-内网IP-内网IP', '127.0.0.1', '2025-06-09 18:36:34', 19, 1);

-- ----------------------------
-- Table structure for article_category
-- ----------------------------
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category`  (
  `category_id` int NOT NULL AUTO_INCREMENT COMMENT '目录id',
  `Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '目录名',
  `Icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `OrderNum` int NULL DEFAULT NULL COMMENT '排序id',
  `ParentId` int NULL DEFAULT NULL,
  `BgImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背景图',
  `Introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `CategoryType` int NULL DEFAULT NULL COMMENT '分类类型 0、文章  1、圈子',
  `ArticleNum` int NULL DEFAULT 0 COMMENT '文章数',
  `JoinNum` int NULL DEFAULT 0 COMMENT '加入人数',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `AttributeJson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '目录属性Json',
  `TemplatePath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '栏目模板路径',
  `AttributeTable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '栏目属性值表名',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章目录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_category
-- ----------------------------
INSERT INTO `article_category` VALUES (1, '前端', 'web', 0, 0, NULL, NULL, 0, 0, 0, '2025-06-04 13:03:43', NULL, NULL, NULL);
INSERT INTO `article_category` VALUES (2, '后端', 'monitor', 0, 0, NULL, NULL, 0, 0, 0, '2025-06-04 13:03:43', NULL, NULL, NULL);
INSERT INTO `article_category` VALUES (3, '开发工具', 'tool', 0, 0, NULL, NULL, 0, 0, 0, '2025-06-04 13:03:43', NULL, NULL, NULL);
INSERT INTO `article_category` VALUES (4, '其他', 'menu', 0, 0, NULL, NULL, 0, 0, 0, '2025-06-04 13:03:43', NULL, NULL, NULL);
INSERT INTO `article_category` VALUES (5, '官方圈子', NULL, 0, 0, NULL, NULL, 1, 0, 0, '2025-06-04 13:03:43', NULL, NULL, NULL);
INSERT INTO `article_category` VALUES (6, '23123123', 'pc', 0, 2, NULL, '123123', 0, 0, 0, '2025-06-06 11:49:49', NULL, NULL, NULL);
INSERT INTO `article_category` VALUES (14, '44', '', 0, 0, NULL, NULL, 0, 0, 0, '2025-06-06 21:32:33', '123,456', NULL, NULL);
INSERT INTO `article_category` VALUES (15, '12', '', 0, 0, NULL, '2222222222222222222222222222222222222222', 0, 0, 0, '2025-06-07 23:17:50', '123', '23', '3');

-- ----------------------------
-- Table structure for article_comment
-- ----------------------------
DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment`  (
  `CommentId` bigint NOT NULL COMMENT '评论ID',
  `UserId` bigint NULL DEFAULT NULL COMMENT '用户id',
  `Content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `ParentId` bigint NULL DEFAULT NULL COMMENT '最顶级留言id',
  `AddTime` datetime NULL DEFAULT NULL COMMENT '评论时间',
  `ReplyUserId` bigint NULL DEFAULT NULL COMMENT '回复用户id',
  `ReplyId` bigint NULL DEFAULT NULL COMMENT '回复留言id',
  `UserIP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ip',
  `Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地理位置',
  `PraiseNum` int NULL DEFAULT NULL COMMENT '喜欢次数',
  `ReplyNum` int NULL DEFAULT NULL COMMENT '评论次数',
  `AuditStatus` int NULL DEFAULT NULL COMMENT '审核状态 0、待审核 1、通过 -1、未通过',
  `IsDelete` int NULL DEFAULT NULL COMMENT '描述 :是否删除 1、删除 0、正常\n            空值 : true',
  `ChatImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '聊天图片',
  `ClassifyId` int NULL DEFAULT NULL COMMENT '分类id（可以对应表)',
  `TargetId` bigint NULL DEFAULT NULL COMMENT '目标id(内容id)',
  `Top` bigint NULL DEFAULT NULL COMMENT '是否置顶',
  `AuthorReply` int NULL DEFAULT NULL COMMENT '作者回复过',
  PRIMARY KEY (`CommentId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for article_praise
-- ----------------------------
DROP TABLE IF EXISTS `article_praise`;
CREATE TABLE `article_praise`  (
  `PId` bigint NOT NULL,
  `UserId` bigint NULL DEFAULT NULL,
  `ArticleId` bigint NULL DEFAULT NULL,
  `UserIP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ToUserId` bigint NULL DEFAULT NULL,
  `IsDelete` int NULL DEFAULT NULL,
  `AddTime` datetime NULL DEFAULT NULL,
  `Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '内容点赞记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_praise
-- ----------------------------

-- ----------------------------
-- Table structure for article_topic
-- ----------------------------
DROP TABLE IF EXISTS `article_topic`;
CREATE TABLE `article_topic`  (
  `TopicId` bigint NOT NULL AUTO_INCREMENT COMMENT '话题ID',
  `TopicName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '话题名',
  `TopicDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '话题描述',
  `JoinNum` int NULL DEFAULT NULL COMMENT '参与/发起次数',
  `ViewNum` int NULL DEFAULT NULL COMMENT '浏览次数',
  `AddTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `TopicType` int NULL DEFAULT NULL COMMENT '话题分类',
  PRIMARY KEY (`TopicId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章话题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_topic
-- ----------------------------
INSERT INTO `article_topic` VALUES (1, '美食', NULL, 0, 0, NULL, NULL);
INSERT INTO `article_topic` VALUES (2, '健身', NULL, 0, 0, NULL, NULL);
INSERT INTO `article_topic` VALUES (3, '吃什么', NULL, 0, 0, NULL, NULL);
INSERT INTO `article_topic` VALUES (4, '交友', NULL, 0, 0, NULL, NULL);
INSERT INTO `article_topic` VALUES (5, '宠物', NULL, 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for banner_config
-- ----------------------------
DROP TABLE IF EXISTS `banner_config`;
CREATE TABLE `banner_config`  (
  `Id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Title',
  `Content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `Link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接',
  `ImgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `JumpType` int NULL DEFAULT NULL COMMENT '跳转类型 0、不跳转 1、外链 2、内部跳转',
  `AddTime` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `ClicksNumber` int NULL DEFAULT NULL COMMENT '点击次数',
  `ShowStatus` int NULL DEFAULT NULL COMMENT '是否显示',
  `AdType` int NULL DEFAULT NULL COMMENT '广告类型',
  `BeginTime` datetime NULL DEFAULT NULL COMMENT 'BeginTime',
  `EndTime` datetime NULL DEFAULT NULL COMMENT 'EndTime',
  `SortId` int NULL DEFAULT NULL COMMENT '排序id',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '广告管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner_config
-- ----------------------------

-- ----------------------------
-- Table structure for email_log
-- ----------------------------
DROP TABLE IF EXISTS `email_log`;
CREATE TABLE `email_log`  (
  `Id` bigint NOT NULL,
  `FromName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发送人名称',
  `FromEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发送邮箱',
  `Subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮件主题',
  `ToEmails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '接收邮箱',
  `EmailContent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '邮件内容',
  `AddTime` datetime NULL DEFAULT NULL COMMENT '发送时间',
  `IsSend` int NULL DEFAULT NULL COMMENT '是否已发送',
  `SendResult` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发送结果',
  `FileUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附件地址',
  `SendTime` datetime NULL DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '邮件发送记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_log
-- ----------------------------

-- ----------------------------
-- Table structure for emailtpl
-- ----------------------------
DROP TABLE IF EXISTS `emailtpl`;
CREATE TABLE `emailtpl`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '模板内容',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '邮件发送模板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emailtpl
-- ----------------------------
INSERT INTO `emailtpl` VALUES (1, '23123123', '<p>大苏打</p>', 'admin', '2025-06-04 14:08:26', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `TableId` bigint NOT NULL AUTO_INCREMENT COMMENT '表id',
  `DbName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库名',
  `TableName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  `TableComment` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表描述',
  `SubTableName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联父表的表名',
  `SubTableFkName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '本表关联父表的外键名',
  `ClassName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'csharp类名',
  `TplCategory` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `BaseNameSpace` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基本命名空间前缀',
  `ModuleName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `BusinessName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `FunctionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `FunctionAuthor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成作者名',
  `GenType` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `GenPath` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '代码生成保存路径',
  `Options` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他生成选项',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`TableId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (4, 'yblistdb', 'sys_area', '行政区域/省区表', '', '', 'SysArea', 'tree', 'HR.', 'System', 'SysArea', '行政区域', 'admin', '0', '/', '{\"ParentMenuId\":1,\"SortType\":\"asc\",\"SortField\":\"Order\",\"TreeCode\":\"ParentId\",\"TreeName\":\"Name\",\"TreeParentCode\":\"Level\",\"PermissionPrefix\":\"area\",\"CheckedBtn\":[1,2,3,4],\"ColNum\":12,\"GenerateRepo\":0,\"GenerateMenu\":false,\"OperBtnStyle\":1,\"UseSnowflakeId\":false,\"EnableLog\":false,\"FrontTpl\":2}', 'admin', '2025-06-10 15:16:20', 'admin', '2025-06-10 22:29:59', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `ColumnId` bigint NOT NULL AUTO_INCREMENT COMMENT '列id',
  `ColumnName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '导入代码生成表列名 首字母转了小写',
  `TableId` bigint NULL DEFAULT NULL,
  `TableName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ColumnComment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ColumnType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库列类型',
  `CsharpType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'C#类型',
  `CsharpField` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'C# 字段名 首字母大写',
  `IsPk` tinyint(1) NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `IsRequired` tinyint(1) NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `IsIncrement` tinyint(1) NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `IsInsert` tinyint(1) NULL DEFAULT NULL COMMENT '是否插入（1是）',
  `IsEdit` tinyint(1) NULL DEFAULT NULL COMMENT '是否需要编辑（1是）',
  `IsList` tinyint(1) NULL DEFAULT NULL COMMENT '是否显示列表（1是）',
  `IsQuery` tinyint(1) NULL DEFAULT NULL COMMENT '是否查询（1是）',
  `IsSort` tinyint(1) NULL DEFAULT NULL COMMENT '是否排序（1是）',
  `IsExport` tinyint(1) NULL DEFAULT NULL COMMENT '是否导出（1是）',
  `HtmlType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `QueryType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询类型（等于、不等于、大于、小于、范围）',
  `Sort` int NULL DEFAULT NULL,
  `DictType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `AutoFillType` int NULL DEFAULT NULL COMMENT '自动填充类型 1、添加 2、编辑 3、添加编辑',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ColumnId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (47, 'id', 4, 'sys_area', '主键ID', 'int unsigned', 'string', 'Id', 1, 1, 1, 0, 0, 1, 0, 0, 1, 'input', 'EQ', 0, '', 0, 'admin', '2025-06-10 15:16:20', NULL, NULL, NULL);
INSERT INTO `gen_table_column` VALUES (48, 'country', 4, 'sys_area', '所属国家ID', 'int unsigned', 'string', 'Country', 0, 1, 0, 1, 1, 1, 0, 0, 1, 'input', 'EQ', 0, '', 0, 'admin', '2025-06-10 15:16:20', NULL, NULL, NULL);
INSERT INTO `gen_table_column` VALUES (49, 'parentId', 4, 'sys_area', '父级区域ID', 'int unsigned', 'string', 'ParentId', 0, 1, 0, 1, 1, 1, 0, 0, 1, 'input', 'EQ', 0, '', 0, 'admin', '2025-06-10 15:16:20', NULL, NULL, NULL);
INSERT INTO `gen_table_column` VALUES (50, 'level', 4, 'sys_area', '区域等级（如1=国家，2=省，3=市，4=区）', 'tinyint unsigned', 'string', 'Level', 0, 1, 0, 1, 1, 1, 0, 0, 1, 'input', 'EQ', 0, '', 0, 'admin', '2025-06-10 15:16:20', NULL, NULL, NULL);
INSERT INTO `gen_table_column` VALUES (51, 'name', 4, 'sys_area', '区域名称（如：北京）', 'varchar', 'string', 'Name', 0, 1, 0, 1, 1, 1, 0, 0, 1, 'input', 'EQ', 0, '', 0, 'admin', '2025-06-10 15:16:20', NULL, NULL, NULL);
INSERT INTO `gen_table_column` VALUES (52, 'wholeName', 4, 'sys_area', '完整名称（如：中国北京市朝阳区）', 'varchar', 'string', 'WholeName', 0, 0, 0, 1, 1, 1, 0, 0, 1, 'input', 'EQ', 0, '', 0, 'admin', '2025-06-10 15:16:20', NULL, NULL, NULL);
INSERT INTO `gen_table_column` VALUES (53, 'areaCode', 4, 'sys_area', '区号/行政区编码', 'int unsigned', 'string', 'AreaCode', 0, 0, 0, 1, 1, 1, 0, 0, 1, 'input', 'EQ', 0, '', 0, 'admin', '2025-06-10 15:16:20', NULL, NULL, NULL);
INSERT INTO `gen_table_column` VALUES (54, 'order', 4, 'sys_area', '排序值，越小越靠前', 'int unsigned', 'string', 'Order', 0, 0, 0, 1, 1, 1, 0, 0, 1, 'input', 'EQ', 0, '', 0, 'admin', '2025-06-10 15:16:20', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for smscode_log
-- ----------------------------
DROP TABLE IF EXISTS `smscode_log`;
CREATE TABLE `smscode_log`  (
  `Id` bigint NOT NULL,
  `SmsCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短信验证码',
  `Userid` bigint NULL DEFAULT NULL COMMENT '用户id',
  `PhoneNum` bigint NULL DEFAULT NULL COMMENT '手机号',
  `SmsContent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短信内容',
  `AddTime` datetime NULL DEFAULT NULL COMMENT '发送时间',
  `UserIP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户IP',
  `Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地理位置',
  `SendType` int NULL DEFAULT NULL COMMENT '1、登录 2、注册 3、找回密码',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '短信验证码记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smscode_log
-- ----------------------------

-- ----------------------------
-- Table structure for sqldifflog
-- ----------------------------
DROP TABLE IF EXISTS `sqldifflog`;
CREATE TABLE `sqldifflog`  (
  `PId` bigint NOT NULL COMMENT '主键',
  `TableName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  `BusinessData` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务数据内容',
  `DiffType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '差异类型insert，update，delete',
  `Sql` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '执行sql语句',
  `BeforeData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '变更前数据',
  `AfterData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '变更后数据',
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作用户名',
  `AddTime` datetime NULL DEFAULT NULL,
  `ConfigId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库配置id',
  PRIMARY KEY (`PId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据差异日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sqldifflog
-- ----------------------------

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area`  (
  `Id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `Country` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属国家ID',
  `ParentId` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级区域ID',
  `Level` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '区域等级（如1=国家，2=省，3=市，4=区）',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '区域名称（如：北京）',
  `WholeName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '完整名称（如：中国北京市朝阳区）',
  `AreaCode` int UNSIGNED NULL DEFAULT NULL COMMENT '区号/行政区编码',
  `Order` int UNSIGNED NULL DEFAULT 0 COMMENT '排序值，越小越靠前',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `idx_parent`(`ParentId` ASC) USING BTREE,
  INDEX `idx_country`(`Country` ASC) USING BTREE,
  INDEX `idx_level`(`Level` ASC) USING BTREE,
  INDEX `idx_area_code`(`AreaCode` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100000000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '行政区域/省区表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES (82, 0, 0, 0, '대한민국', '대한민국', 82, 2);
INSERT INTO `sys_area` VALUES (86, 0, 0, 0, '中国', '中国', 86, 1);
INSERT INTO `sys_area` VALUES (8200011, 82, 82, 1, '서울특별시', '서울특별시', 1000011, 3261);
INSERT INTO `sys_area` VALUES (8200026, 82, 82, 1, '부산광역시', '부산광역시', 1000026, 3262);
INSERT INTO `sys_area` VALUES (8200027, 82, 82, 1, '대구광역시', '대구광역시', 1000027, 3263);
INSERT INTO `sys_area` VALUES (8200028, 82, 82, 1, '인천광역시', '인천광역시', 1000028, 3264);
INSERT INTO `sys_area` VALUES (8200029, 82, 82, 1, '광주광역시', '광주광역시', 1000029, 3265);
INSERT INTO `sys_area` VALUES (8200030, 82, 82, 1, '대전광역시', '대전광역시', 1000030, 3266);
INSERT INTO `sys_area` VALUES (8200031, 82, 82, 1, '울산광역시', '울산광역시', 1000031, 3267);
INSERT INTO `sys_area` VALUES (8200036, 82, 82, 1, '세종특별자치시', '세종특별자치시', 1000036, 3268);
INSERT INTO `sys_area` VALUES (8200041, 82, 82, 1, '경기도', '경기도', 1000041, 3269);
INSERT INTO `sys_area` VALUES (8200043, 82, 82, 1, '충청남도', '충청남도', 1000044, 3271);
INSERT INTO `sys_area` VALUES (8200044, 82, 82, 1, '전라남도', '전라남도', 1000046, 3272);
INSERT INTO `sys_area` VALUES (8200046, 82, 82, 1, '경상북도', '경상북도', 1000047, 3273);
INSERT INTO `sys_area` VALUES (8200047, 82, 82, 1, '경상남도', '경상남도', 1000048, 3274);
INSERT INTO `sys_area` VALUES (8200048, 82, 82, 1, '제주특별자치도', '제주특별자치도', 1000050, 3275);
INSERT INTO `sys_area` VALUES (8200050, 82, 82, 1, '강원특별자치도', '강원특별자치도', 1000051, 3276);
INSERT INTO `sys_area` VALUES (8200051, 82, 82, 1, '충청북도', '충청북도', 1000043, 3270);
INSERT INTO `sys_area` VALUES (8200052, 82, 82, 1, '전북특별자치도', '전북특별자치도', 1000052, 3277);
INSERT INTO `sys_area` VALUES (8211110, 82, 8200011, 2, '종로구', '서울특별시,종로구', 11110, 3278);
INSERT INTO `sys_area` VALUES (8211140, 82, 8200011, 2, '중구', '서울특별시,중구', 11140, 3279);
INSERT INTO `sys_area` VALUES (8211170, 82, 8200011, 2, '용산구', '서울특별시,용산구', 11170, 3280);
INSERT INTO `sys_area` VALUES (8211200, 82, 8200011, 2, '성동구', '서울특별시,성동구', 11200, 3281);
INSERT INTO `sys_area` VALUES (8211215, 82, 8200011, 2, '광진구', '서울특별시,광진구', 11215, 3282);
INSERT INTO `sys_area` VALUES (8211230, 82, 8200011, 2, '동대문구', '서울특별시,동대문구', 11230, 3283);
INSERT INTO `sys_area` VALUES (8211260, 82, 8200011, 2, '중랑구', '서울특별시,중랑구', 11260, 3284);
INSERT INTO `sys_area` VALUES (8211290, 82, 8200011, 2, '성북구', '서울특별시,성북구', 11290, 3285);
INSERT INTO `sys_area` VALUES (8211305, 82, 8200011, 2, '강북구', '서울특별시,강북구', 11305, 3286);
INSERT INTO `sys_area` VALUES (8211320, 82, 8200011, 2, '도봉구', '서울특별시,도봉구', 11320, 3287);
INSERT INTO `sys_area` VALUES (8211350, 82, 8200011, 2, '노원구', '서울특별시,노원구', 11350, 3288);
INSERT INTO `sys_area` VALUES (8211380, 82, 8200011, 2, '은평구', '서울특별시,은평구', 11380, 3289);
INSERT INTO `sys_area` VALUES (8211410, 82, 8200011, 2, '서대문구', '서울특별시,서대문구', 11410, 3290);
INSERT INTO `sys_area` VALUES (8211440, 82, 8200011, 2, '마포구', '서울특별시,마포구', 11440, 3291);
INSERT INTO `sys_area` VALUES (8211470, 82, 8200011, 2, '양천구', '서울특별시,양천구', 11470, 3292);
INSERT INTO `sys_area` VALUES (8211500, 82, 8200011, 2, '강서구', '서울특별시,강서구', 11500, 3293);
INSERT INTO `sys_area` VALUES (8211530, 82, 8200011, 2, '구로구', '서울특별시,구로구', 11530, 3294);
INSERT INTO `sys_area` VALUES (8211545, 82, 8200011, 2, '금천구', '서울특별시,금천구', 11545, 3295);
INSERT INTO `sys_area` VALUES (8211560, 82, 8200011, 2, '영등포구', '서울특별시,영등포구', 11560, 3296);
INSERT INTO `sys_area` VALUES (8211590, 82, 8200011, 2, '동작구', '서울특별시,동작구', 11590, 3297);
INSERT INTO `sys_area` VALUES (8211620, 82, 8200011, 2, '관악구', '서울특별시,관악구', 11620, 3298);
INSERT INTO `sys_area` VALUES (8211650, 82, 8200011, 2, '서초구', '서울특별시,서초구', 11650, 3299);
INSERT INTO `sys_area` VALUES (8211680, 82, 8200011, 2, '강남구', '서울특별시,강남구', 11680, 3300);
INSERT INTO `sys_area` VALUES (8211710, 82, 8200011, 2, '송파구', '서울특별시,송파구', 11710, 3301);
INSERT INTO `sys_area` VALUES (8211740, 82, 8200011, 2, '강동구', '서울특별시,강동구', 11740, 3302);
INSERT INTO `sys_area` VALUES (8226110, 82, 8200026, 2, '중구', '부산광역시,중구', 26110, 3303);
INSERT INTO `sys_area` VALUES (8226140, 82, 8200026, 2, '서구', '부산광역시,서구', 26140, 3304);
INSERT INTO `sys_area` VALUES (8226170, 82, 8200026, 2, '동구', '부산광역시,동구', 26170, 3305);
INSERT INTO `sys_area` VALUES (8226200, 82, 8200026, 2, '영도구', '부산광역시,영도구', 26200, 3306);
INSERT INTO `sys_area` VALUES (8226230, 82, 8200026, 2, '부산진구', '부산광역시,부산진구', 26230, 3307);
INSERT INTO `sys_area` VALUES (8226260, 82, 8200026, 2, '동래구', '부산광역시,동래구', 26260, 3308);
INSERT INTO `sys_area` VALUES (8226290, 82, 8200026, 2, '남구', '부산광역시,남구', 26290, 3309);
INSERT INTO `sys_area` VALUES (8226320, 82, 8200026, 2, '북구', '부산광역시,북구', 26320, 3310);
INSERT INTO `sys_area` VALUES (8226350, 82, 8200026, 2, '해운대구', '부산광역시,해운대구', 26350, 3311);
INSERT INTO `sys_area` VALUES (8226380, 82, 8200026, 2, '사하구', '부산광역시,사하구', 26380, 3312);
INSERT INTO `sys_area` VALUES (8226410, 82, 8200026, 2, '금정구', '부산광역시,금정구', 26410, 3313);
INSERT INTO `sys_area` VALUES (8226440, 82, 8200026, 2, '강서구', '부산광역시,강서구', 26440, 3314);
INSERT INTO `sys_area` VALUES (8226470, 82, 8200026, 2, '연제구', '부산광역시,연제구', 26470, 3315);
INSERT INTO `sys_area` VALUES (8226500, 82, 8200026, 2, '수영구', '부산광역시,수영구', 26500, 3316);
INSERT INTO `sys_area` VALUES (8226530, 82, 8200026, 2, '사상구', '부산광역시,사상구', 26530, 3317);
INSERT INTO `sys_area` VALUES (8226710, 82, 8200026, 2, '기장군', '부산광역시,기장군', 26710, 3318);
INSERT INTO `sys_area` VALUES (8227110, 82, 8200027, 2, '중구', '대구광역시,중구', 27110, 3319);
INSERT INTO `sys_area` VALUES (8227140, 82, 8200027, 2, '동구', '대구광역시,동구', 27140, 3320);
INSERT INTO `sys_area` VALUES (8227170, 82, 8200027, 2, '서구', '대구광역시,서구', 27170, 3321);
INSERT INTO `sys_area` VALUES (8227200, 82, 8200027, 2, '남구', '대구광역시,남구', 27200, 3322);
INSERT INTO `sys_area` VALUES (8227230, 82, 8200027, 2, '북구', '대구광역시,북구', 27230, 3323);
INSERT INTO `sys_area` VALUES (8227260, 82, 8200027, 2, '수성구', '대구광역시,수성구', 27260, 3324);
INSERT INTO `sys_area` VALUES (8227290, 82, 8200027, 2, '달서구', '대구광역시,달서구', 27290, 3325);
INSERT INTO `sys_area` VALUES (8227710, 82, 8200027, 2, '달성군', '대구광역시,달성군', 27710, 3326);
INSERT INTO `sys_area` VALUES (8227720, 82, 8200048, 2, '창원시마산합포구', '경상남도,창원시마산합포구', 48125, 3475);
INSERT INTO `sys_area` VALUES (8228110, 82, 8200027, 2, '군위군', '대구광역시,군위군', 27720, 3327);
INSERT INTO `sys_area` VALUES (8228140, 82, 8200028, 2, '중구', '인천광역시,중구', 28110, 3328);
INSERT INTO `sys_area` VALUES (8228177, 82, 8200028, 2, '동구', '인천광역시,동구', 28140, 3329);
INSERT INTO `sys_area` VALUES (8228185, 82, 8200028, 2, '미추홀구', '인천광역시,미추홀구', 28177, 3330);
INSERT INTO `sys_area` VALUES (8228200, 82, 8200028, 2, '연수구', '인천광역시,연수구', 28185, 3331);
INSERT INTO `sys_area` VALUES (8228237, 82, 8200028, 2, '남동구', '인천광역시,남동구', 28200, 3332);
INSERT INTO `sys_area` VALUES (8228245, 82, 8200028, 2, '부평구', '인천광역시,부평구', 28237, 3333);
INSERT INTO `sys_area` VALUES (8228260, 82, 8200028, 2, '계양구', '인천광역시,계양구', 28245, 3334);
INSERT INTO `sys_area` VALUES (8228710, 82, 8200028, 2, '서구', '인천광역시,서구', 28260, 3335);
INSERT INTO `sys_area` VALUES (8228720, 82, 8200028, 2, '강화군', '인천광역시,강화군', 28710, 3336);
INSERT INTO `sys_area` VALUES (8229110, 82, 8200028, 2, '옹진군', '인천광역시,옹진군', 28720, 3337);
INSERT INTO `sys_area` VALUES (8229140, 82, 8200029, 2, '동구', '광주광역시,동구', 29110, 3338);
INSERT INTO `sys_area` VALUES (8229155, 82, 8200029, 2, '서구', '광주광역시,서구', 29140, 3339);
INSERT INTO `sys_area` VALUES (8229170, 82, 8200029, 2, '남구', '광주광역시,남구', 29155, 3340);
INSERT INTO `sys_area` VALUES (8229200, 82, 8200029, 2, '북구', '광주광역시,북구', 29170, 3341);
INSERT INTO `sys_area` VALUES (8230110, 82, 8200029, 2, '광산구', '광주광역시,광산구', 29200, 3342);
INSERT INTO `sys_area` VALUES (8230140, 82, 8200030, 2, '동구', '대전광역시,동구', 30110, 3343);
INSERT INTO `sys_area` VALUES (8230170, 82, 8200030, 2, '중구', '대전광역시,중구', 30140, 3344);
INSERT INTO `sys_area` VALUES (8230200, 82, 8200030, 2, '서구', '대전광역시,서구', 30170, 3345);
INSERT INTO `sys_area` VALUES (8230230, 82, 8200030, 2, '유성구', '대전광역시,유성구', 30200, 3346);
INSERT INTO `sys_area` VALUES (8231110, 82, 8200030, 2, '대덕구', '대전광역시,대덕구', 30230, 3347);
INSERT INTO `sys_area` VALUES (8231140, 82, 8200031, 2, '중구', '울산광역시,중구', 31110, 3348);
INSERT INTO `sys_area` VALUES (8231170, 82, 8200031, 2, '남구', '울산광역시,남구', 31140, 3349);
INSERT INTO `sys_area` VALUES (8231200, 82, 8200031, 2, '동구', '울산광역시,동구', 31170, 3350);
INSERT INTO `sys_area` VALUES (8231710, 82, 8200031, 2, '북구', '울산광역시,북구', 31200, 3351);
INSERT INTO `sys_area` VALUES (8236110, 82, 8200031, 2, '울주군', '울산광역시,울주군', 31710, 3352);
INSERT INTO `sys_area` VALUES (8241111, 82, 8200036, 2, '세종시', '세종특별자치시,세종시', 36110, 3353);
INSERT INTO `sys_area` VALUES (8241113, 82, 8200041, 2, '수원시장안구', '경기도,수원시장안구', 41111, 3354);
INSERT INTO `sys_area` VALUES (8241115, 82, 8200041, 2, '수원시권선구', '경기도,수원시권선구', 41113, 3355);
INSERT INTO `sys_area` VALUES (8241117, 82, 8200041, 2, '수원시팔달구', '경기도,수원시팔달구', 41115, 3356);
INSERT INTO `sys_area` VALUES (8241131, 82, 8200041, 2, '수원시영통구', '경기도,수원시영통구', 41117, 3357);
INSERT INTO `sys_area` VALUES (8241133, 82, 8200041, 2, '성남시수정구', '경기도,성남시수정구', 41131, 3358);
INSERT INTO `sys_area` VALUES (8241135, 82, 8200041, 2, '성남시중원구', '경기도,성남시중원구', 41133, 3359);
INSERT INTO `sys_area` VALUES (8241150, 82, 8200041, 2, '성남시분당구', '경기도,성남시분당구', 41135, 3360);
INSERT INTO `sys_area` VALUES (8241171, 82, 8200041, 2, '의정부시', '경기도,의정부시', 41150, 3361);
INSERT INTO `sys_area` VALUES (8241173, 82, 8200041, 2, '안양시만안구', '경기도,안양시만안구', 41171, 3362);
INSERT INTO `sys_area` VALUES (8241192, 82, 8200051, 2, '인제군', '강원특별자치도,인제군', 51810, 3512);
INSERT INTO `sys_area` VALUES (8241194, 82, 8200051, 2, '고성군', '강원특별자치도,고성군', 51820, 3513);
INSERT INTO `sys_area` VALUES (8241196, 82, 8200051, 2, '양양군', '강원특별자치도,양양군', 51830, 3514);
INSERT INTO `sys_area` VALUES (8241210, 82, 8200041, 2, '안양시동안구', '경기도,안양시동안구', 41173, 3363);
INSERT INTO `sys_area` VALUES (8241220, 82, 8200041, 2, '부천시원미구', '경기도,부천시원미구', 41192, 3364);
INSERT INTO `sys_area` VALUES (8241250, 82, 8200041, 2, '부천시소사구', '경기도,부천시소사구', 41194, 3365);
INSERT INTO `sys_area` VALUES (8241271, 82, 8200041, 2, '부천시오정구', '경기도,부천시오정구', 41196, 3366);
INSERT INTO `sys_area` VALUES (8241273, 82, 8200041, 2, '광명시', '경기도,광명시', 41210, 3367);
INSERT INTO `sys_area` VALUES (8241281, 82, 8200041, 2, '평택시', '경기도,평택시', 41220, 3368);
INSERT INTO `sys_area` VALUES (8241285, 82, 8200041, 2, '동두천시', '경기도,동두천시', 41250, 3369);
INSERT INTO `sys_area` VALUES (8241287, 82, 8200041, 2, '안산시상록구', '경기도,안산시상록구', 41271, 3370);
INSERT INTO `sys_area` VALUES (8241290, 82, 8200041, 2, '안산시단원구', '경기도,안산시단원구', 41273, 3371);
INSERT INTO `sys_area` VALUES (8241310, 82, 8200041, 2, '고양시덕양구', '경기도,고양시덕양구', 41281, 3372);
INSERT INTO `sys_area` VALUES (8241360, 82, 8200041, 2, '고양시일산동구', '경기도,고양시일산동구', 41285, 3373);
INSERT INTO `sys_area` VALUES (8241370, 82, 8200041, 2, '고양시일산서구', '경기도,고양시일산서구', 41287, 3374);
INSERT INTO `sys_area` VALUES (8241390, 82, 8200041, 2, '과천시', '경기도,과천시', 41290, 3375);
INSERT INTO `sys_area` VALUES (8241410, 82, 8200041, 2, '구리시', '경기도,구리시', 41310, 3376);
INSERT INTO `sys_area` VALUES (8241430, 82, 8200041, 2, '남양주시', '경기도,남양주시', 41360, 3377);
INSERT INTO `sys_area` VALUES (8241450, 82, 8200041, 2, '오산시', '경기도,오산시', 41370, 3378);
INSERT INTO `sys_area` VALUES (8241461, 82, 8200041, 2, '시흥시', '경기도,시흥시', 41390, 3379);
INSERT INTO `sys_area` VALUES (8241463, 82, 8200041, 2, '군포시', '경기도,군포시', 41410, 3380);
INSERT INTO `sys_area` VALUES (8241465, 82, 8200041, 2, '의왕시', '경기도,의왕시', 41430, 3381);
INSERT INTO `sys_area` VALUES (8241480, 82, 8200041, 2, '하남시', '경기도,하남시', 41450, 3382);
INSERT INTO `sys_area` VALUES (8241500, 82, 8200041, 2, '용인시처인구', '경기도,용인시처인구', 41461, 3383);
INSERT INTO `sys_area` VALUES (8241550, 82, 8200041, 2, '용인시기흥구', '경기도,용인시기흥구', 41463, 3384);
INSERT INTO `sys_area` VALUES (8241570, 82, 8200041, 2, '용인시수지구', '경기도,용인시수지구', 41465, 3385);
INSERT INTO `sys_area` VALUES (8241590, 82, 8200041, 2, '파주시', '경기도,파주시', 41480, 3386);
INSERT INTO `sys_area` VALUES (8241610, 82, 8200041, 2, '이천시', '경기도,이천시', 41500, 3387);
INSERT INTO `sys_area` VALUES (8241630, 82, 8200041, 2, '안성시', '경기도,안성시', 41550, 3388);
INSERT INTO `sys_area` VALUES (8241650, 82, 8200041, 2, '김포시', '경기도,김포시', 41570, 3389);
INSERT INTO `sys_area` VALUES (8241670, 82, 8200041, 2, '화성시', '경기도,화성시', 41590, 3390);
INSERT INTO `sys_area` VALUES (8241800, 82, 8200041, 2, '광주시', '경기도,광주시', 41610, 3391);
INSERT INTO `sys_area` VALUES (8241820, 82, 8200041, 2, '양주시', '경기도,양주시', 41630, 3392);
INSERT INTO `sys_area` VALUES (8241830, 82, 8200041, 2, '포천시', '경기도,포천시', 41650, 3393);
INSERT INTO `sys_area` VALUES (8243111, 82, 8200044, 2, '공주시', '충청남도,공주시', 44150, 3414);
INSERT INTO `sys_area` VALUES (8243112, 82, 8200044, 2, '보령시', '충청남도,보령시', 44180, 3415);
INSERT INTO `sys_area` VALUES (8243113, 82, 8200044, 2, '아산시', '충청남도,아산시', 44200, 3416);
INSERT INTO `sys_area` VALUES (8243114, 82, 8200044, 2, '서산시', '충청남도,서산시', 44210, 3417);
INSERT INTO `sys_area` VALUES (8243130, 82, 8200044, 2, '천안시동남구', '충청남도,천안시동남구', 44131, 3412);
INSERT INTO `sys_area` VALUES (8243150, 82, 8200044, 2, '천안시서북구', '충청남도,천안시서북구', 44133, 3413);
INSERT INTO `sys_area` VALUES (8243720, 82, 8200044, 2, '논산시', '충청남도,논산시', 44230, 3418);
INSERT INTO `sys_area` VALUES (8243730, 82, 8200044, 2, '계룡시', '충청남도,계룡시', 44250, 3419);
INSERT INTO `sys_area` VALUES (8243740, 82, 8200044, 2, '당진시', '충청남도,당진시', 44270, 3420);
INSERT INTO `sys_area` VALUES (8243745, 82, 8200044, 2, '홍성군', '충청남도,홍성군', 44800, 3425);
INSERT INTO `sys_area` VALUES (8243750, 82, 8200044, 2, '금산군', '충청남도,금산군', 44710, 3421);
INSERT INTO `sys_area` VALUES (8243760, 82, 8200044, 2, '부여군', '충청남도,부여군', 44760, 3422);
INSERT INTO `sys_area` VALUES (8243770, 82, 8200044, 2, '서천군', '충청남도,서천군', 44770, 3423);
INSERT INTO `sys_area` VALUES (8243800, 82, 8200044, 2, '청양군', '충청남도,청양군', 44790, 3424);
INSERT INTO `sys_area` VALUES (8244131, 82, 8200044, 2, '예산군', '충청남도,예산군', 44810, 3426);
INSERT INTO `sys_area` VALUES (8244133, 82, 8200044, 2, '태안군', '충청남도,태안군', 44825, 3427);
INSERT INTO `sys_area` VALUES (8244150, 82, 8200046, 2, '목포시', '전라남도,목포시', 46110, 3428);
INSERT INTO `sys_area` VALUES (8244180, 82, 8200046, 2, '여수시', '전라남도,여수시', 46130, 3429);
INSERT INTO `sys_area` VALUES (8244200, 82, 8200046, 2, '순천시', '전라남도,순천시', 46150, 3430);
INSERT INTO `sys_area` VALUES (8244210, 82, 8200046, 2, '나주시', '전라남도,나주시', 46170, 3431);
INSERT INTO `sys_area` VALUES (8244230, 82, 8200046, 2, '광양시', '전라남도,광양시', 46230, 3432);
INSERT INTO `sys_area` VALUES (8244250, 82, 8200046, 2, '담양군', '전라남도,담양군', 46710, 3433);
INSERT INTO `sys_area` VALUES (8244270, 82, 8200046, 2, '곡성군', '전라남도,곡성군', 46720, 3434);
INSERT INTO `sys_area` VALUES (8244710, 82, 8200046, 2, '구례군', '전라남도,구례군', 46730, 3435);
INSERT INTO `sys_area` VALUES (8244760, 82, 8200046, 2, '고흥군', '전라남도,고흥군', 46770, 3436);
INSERT INTO `sys_area` VALUES (8244770, 82, 8200046, 2, '보성군', '전라남도,보성군', 46780, 3437);
INSERT INTO `sys_area` VALUES (8244790, 82, 8200046, 2, '화순군', '전라남도,화순군', 46790, 3438);
INSERT INTO `sys_area` VALUES (8244800, 82, 8200046, 2, '장흥군', '전라남도,장흥군', 46800, 3439);
INSERT INTO `sys_area` VALUES (8244810, 82, 8200046, 2, '강진군', '전라남도,강진군', 46810, 3440);
INSERT INTO `sys_area` VALUES (8244825, 82, 8200046, 2, '해남군', '전라남도,해남군', 46820, 3441);
INSERT INTO `sys_area` VALUES (8246110, 82, 8200046, 2, '영암군', '전라남도,영암군', 46830, 3442);
INSERT INTO `sys_area` VALUES (8246130, 82, 8200046, 2, '무안군', '전라남도,무안군', 46840, 3443);
INSERT INTO `sys_area` VALUES (8246150, 82, 8200046, 2, '함평군', '전라남도,함평군', 46860, 3444);
INSERT INTO `sys_area` VALUES (8246170, 82, 8200046, 2, '영광군', '전라남도,영광군', 46870, 3445);
INSERT INTO `sys_area` VALUES (8246230, 82, 8200046, 2, '장성군', '전라남도,장성군', 46880, 3446);
INSERT INTO `sys_area` VALUES (8246710, 82, 8200046, 2, '완도군', '전라남도,완도군', 46890, 3447);
INSERT INTO `sys_area` VALUES (8246720, 82, 8200046, 2, '진도군', '전라남도,진도군', 46900, 3448);
INSERT INTO `sys_area` VALUES (8246730, 82, 8200046, 2, '신안군', '전라남도,신안군', 46910, 3449);
INSERT INTO `sys_area` VALUES (8246770, 82, 8200047, 2, '포항시남구', '경상북도,포항시남구', 47111, 3450);
INSERT INTO `sys_area` VALUES (8246780, 82, 8200047, 2, '포항시북구', '경상북도,포항시북구', 47113, 3451);
INSERT INTO `sys_area` VALUES (8246790, 82, 8200047, 2, '경주시', '경상북도,경주시', 47130, 3452);
INSERT INTO `sys_area` VALUES (8246800, 82, 8200047, 2, '김천시', '경상북도,김천시', 47150, 3453);
INSERT INTO `sys_area` VALUES (8246810, 82, 8200047, 2, '안동시', '경상북도,안동시', 47170, 3454);
INSERT INTO `sys_area` VALUES (8246820, 82, 8200047, 2, '구미시', '경상북도,구미시', 47190, 3455);
INSERT INTO `sys_area` VALUES (8246830, 82, 8200047, 2, '영주시', '경상북도,영주시', 47210, 3456);
INSERT INTO `sys_area` VALUES (8246840, 82, 8200047, 2, '영천시', '경상북도,영천시', 47230, 3457);
INSERT INTO `sys_area` VALUES (8246860, 82, 8200047, 2, '상주시', '경상북도,상주시', 47250, 3458);
INSERT INTO `sys_area` VALUES (8246870, 82, 8200047, 2, '문경시', '경상북도,문경시', 47280, 3459);
INSERT INTO `sys_area` VALUES (8246880, 82, 8200047, 2, '경산시', '경상북도,경산시', 47290, 3460);
INSERT INTO `sys_area` VALUES (8246890, 82, 8200047, 2, '의성군', '경상북도,의성군', 47730, 3461);
INSERT INTO `sys_area` VALUES (8246900, 82, 8200047, 2, '청송군', '경상북도,청송군', 47750, 3462);
INSERT INTO `sys_area` VALUES (8246910, 82, 8200047, 2, '영양군', '경상북도,영양군', 47760, 3463);
INSERT INTO `sys_area` VALUES (8247111, 82, 8200047, 2, '영덕군', '경상북도,영덕군', 47770, 3464);
INSERT INTO `sys_area` VALUES (8247113, 82, 8200047, 2, '청도군', '경상북도,청도군', 47820, 3465);
INSERT INTO `sys_area` VALUES (8247130, 82, 8200047, 2, '고령군', '경상북도,고령군', 47830, 3466);
INSERT INTO `sys_area` VALUES (8247150, 82, 8200047, 2, '성주군', '경상북도,성주군', 47840, 3467);
INSERT INTO `sys_area` VALUES (8247170, 82, 8200047, 2, '칠곡군', '경상북도,칠곡군', 47850, 3468);
INSERT INTO `sys_area` VALUES (8247190, 82, 8200047, 2, '예천군', '경상북도,예천군', 47900, 3469);
INSERT INTO `sys_area` VALUES (8247210, 82, 8200047, 2, '봉화군', '경상북도,봉화군', 47920, 3470);
INSERT INTO `sys_area` VALUES (8247230, 82, 8200047, 2, '울진군', '경상북도,울진군', 47930, 3471);
INSERT INTO `sys_area` VALUES (8247250, 82, 8200047, 2, '울릉군', '경상북도,울릉군', 47940, 3472);
INSERT INTO `sys_area` VALUES (8247280, 82, 8200048, 2, '창원시의창구', '경상남도,창원시의창구', 48121, 3473);
INSERT INTO `sys_area` VALUES (8247290, 82, 8200048, 2, '창원시성산구', '경상남도,창원시성산구', 48123, 3474);
INSERT INTO `sys_area` VALUES (8247730, 82, 8200048, 2, '창원시마산회원구', '경상남도,창원시마산회원구', 48127, 3476);
INSERT INTO `sys_area` VALUES (8247750, 82, 8200048, 2, '창원시진해구', '경상남도,창원시진해구', 48129, 3477);
INSERT INTO `sys_area` VALUES (8247760, 82, 8200048, 2, '진주시', '경상남도,진주시', 48170, 3478);
INSERT INTO `sys_area` VALUES (8247770, 82, 8200048, 2, '통영시', '경상남도,통영시', 48220, 3479);
INSERT INTO `sys_area` VALUES (8247820, 82, 8200048, 2, '사천시', '경상남도,사천시', 48240, 3480);
INSERT INTO `sys_area` VALUES (8247830, 82, 8200048, 2, '김해시', '경상남도,김해시', 48250, 3481);
INSERT INTO `sys_area` VALUES (8247840, 82, 8200048, 2, '밀양시', '경상남도,밀양시', 48270, 3482);
INSERT INTO `sys_area` VALUES (8247850, 82, 8200048, 2, '거제시', '경상남도,거제시', 48310, 3483);
INSERT INTO `sys_area` VALUES (8247900, 82, 8200048, 2, '양산시', '경상남도,양산시', 48330, 3484);
INSERT INTO `sys_area` VALUES (8247920, 82, 8200048, 2, '의령군', '경상남도,의령군', 48720, 3485);
INSERT INTO `sys_area` VALUES (8247930, 82, 8200048, 2, '함안군', '경상남도,함안군', 48730, 3486);
INSERT INTO `sys_area` VALUES (8247940, 82, 8200048, 2, '창녕군', '경상남도,창녕군', 48740, 3487);
INSERT INTO `sys_area` VALUES (8248121, 82, 8200050, 2, '제주시', '제주특별자치도,제주시', 50110, 3495);
INSERT INTO `sys_area` VALUES (8248123, 82, 8200050, 2, '서귀포시', '제주특별자치도,서귀포시', 50130, 3496);
INSERT INTO `sys_area` VALUES (8248125, 82, 8200051, 2, '춘천시', '강원특별자치도,춘천시', 51110, 3497);
INSERT INTO `sys_area` VALUES (8248127, 82, 8200051, 2, '원주시', '강원특별자치도,원주시', 51130, 3498);
INSERT INTO `sys_area` VALUES (8248129, 82, 8200051, 2, '강릉시', '강원특별자치도,강릉시', 51150, 3499);
INSERT INTO `sys_area` VALUES (8248170, 82, 8200048, 2, '고성군', '경상남도,고성군', 48820, 3488);
INSERT INTO `sys_area` VALUES (8248220, 82, 8200048, 2, '남해군', '경상남도,남해군', 48840, 3489);
INSERT INTO `sys_area` VALUES (8248240, 82, 8200048, 2, '하동군', '경상남도,하동군', 48850, 3490);
INSERT INTO `sys_area` VALUES (8248250, 82, 8200048, 2, '산청군', '경상남도,산청군', 48860, 3491);
INSERT INTO `sys_area` VALUES (8248270, 82, 8200048, 2, '함양군', '경상남도,함양군', 48870, 3492);
INSERT INTO `sys_area` VALUES (8248310, 82, 8200048, 2, '거창군', '경상남도,거창군', 48880, 3493);
INSERT INTO `sys_area` VALUES (8248330, 82, 8200048, 2, '합천군', '경상남도,합천군', 48890, 3494);
INSERT INTO `sys_area` VALUES (8248720, 82, 8200051, 2, '동해시', '강원특별자치도,동해시', 51170, 3500);
INSERT INTO `sys_area` VALUES (8248730, 82, 8200051, 2, '태백시', '강원특별자치도,태백시', 51190, 3501);
INSERT INTO `sys_area` VALUES (8248740, 82, 8200051, 2, '속초시', '강원특별자치도,속초시', 51210, 3502);
INSERT INTO `sys_area` VALUES (8248820, 82, 8200051, 2, '삼척시', '강원특별자치도,삼척시', 51230, 3503);
INSERT INTO `sys_area` VALUES (8248840, 82, 8200051, 2, '홍천군', '강원특별자치도,홍천군', 51720, 3504);
INSERT INTO `sys_area` VALUES (8248850, 82, 8200051, 2, '횡성군', '강원특별자치도,횡성군', 51730, 3505);
INSERT INTO `sys_area` VALUES (8248860, 82, 8200051, 2, '영월군', '강원특별자치도,영월군', 51750, 3506);
INSERT INTO `sys_area` VALUES (8248870, 82, 8200051, 2, '평창군', '강원특별자치도,평창군', 51760, 3507);
INSERT INTO `sys_area` VALUES (8248880, 82, 8200051, 2, '정선군', '강원특별자치도,정선군', 51770, 3508);
INSERT INTO `sys_area` VALUES (8248890, 82, 8200051, 2, '철원군', '강원특별자치도,철원군', 51780, 3509);
INSERT INTO `sys_area` VALUES (8250110, 82, 8200051, 2, '화천군', '강원특별자치도,화천군', 51790, 3510);
INSERT INTO `sys_area` VALUES (8250130, 82, 8200051, 2, '양구군', '강원특별자치도,양구군', 51800, 3511);
INSERT INTO `sys_area` VALUES (8251110, 82, 8200041, 2, '여주시', '경기도,여주시', 41670, 3394);
INSERT INTO `sys_area` VALUES (8251130, 82, 8200041, 2, '연천군', '경기도,연천군', 41800, 3395);
INSERT INTO `sys_area` VALUES (8251150, 82, 8200041, 2, '가평군', '경기도,가평군', 41820, 3396);
INSERT INTO `sys_area` VALUES (8251170, 82, 8200041, 2, '양평군', '경기도,양평군', 41830, 3397);
INSERT INTO `sys_area` VALUES (8251190, 82, 8200043, 2, '청주시상당구', '충청북도,청주시상당구', 43111, 3398);
INSERT INTO `sys_area` VALUES (8251210, 82, 8200043, 2, '청주시서원구', '충청북도,청주시서원구', 43112, 3399);
INSERT INTO `sys_area` VALUES (8251230, 82, 8200043, 2, '청주시흥덕구', '충청북도,청주시흥덕구', 43113, 3400);
INSERT INTO `sys_area` VALUES (8251720, 82, 8200043, 2, '청주시청원구', '충청북도,청주시청원구', 43114, 3401);
INSERT INTO `sys_area` VALUES (8251730, 82, 8200043, 2, '충주시', '충청북도,충주시', 43130, 3402);
INSERT INTO `sys_area` VALUES (8251750, 82, 8200043, 2, '제천시', '충청북도,제천시', 43150, 3403);
INSERT INTO `sys_area` VALUES (8251760, 82, 8200043, 2, '보은군', '충청북도,보은군', 43720, 3404);
INSERT INTO `sys_area` VALUES (8251770, 82, 8200043, 2, '옥천군', '충청북도,옥천군', 43730, 3405);
INSERT INTO `sys_area` VALUES (8251780, 82, 8200043, 2, '영동군', '충청북도,영동군', 43740, 3406);
INSERT INTO `sys_area` VALUES (8251790, 82, 8200043, 2, '증평군', '충청북도,증평군', 43745, 3407);
INSERT INTO `sys_area` VALUES (8251800, 82, 8200043, 2, '진천군', '충청북도,진천군', 43750, 3408);
INSERT INTO `sys_area` VALUES (8251810, 82, 8200043, 2, '괴산군', '충청북도,괴산군', 43760, 3409);
INSERT INTO `sys_area` VALUES (8251820, 82, 8200043, 2, '음성군', '충청북도,음성군', 43770, 3410);
INSERT INTO `sys_area` VALUES (8251830, 82, 8200043, 2, '단양군', '충청북도,단양군', 43800, 3411);
INSERT INTO `sys_area` VALUES (8252111, 82, 8200052, 2, '전주시완산구', '전북특별자치도,전주시완산구', 52111, 3515);
INSERT INTO `sys_area` VALUES (8252113, 82, 8200052, 2, '전주시덕진구', '전북특별자치도,전주시덕진구', 52113, 3516);
INSERT INTO `sys_area` VALUES (8252130, 82, 8200052, 2, '군산시', '전북특별자치도,군산시', 52130, 3517);
INSERT INTO `sys_area` VALUES (8252140, 82, 8200052, 2, '익산시', '전북특별자치도,익산시', 52140, 3518);
INSERT INTO `sys_area` VALUES (8252180, 82, 8200052, 2, '정읍시', '전북특별자치도,정읍시', 52180, 3519);
INSERT INTO `sys_area` VALUES (8252190, 82, 8200052, 2, '남원시', '전북특별자치도,남원시', 52190, 3520);
INSERT INTO `sys_area` VALUES (8252210, 82, 8200052, 2, '김제시', '전북특별자치도,김제시', 52210, 3521);
INSERT INTO `sys_area` VALUES (8252710, 82, 8200052, 2, '완주군', '전북특별자치도,완주군', 52710, 3522);
INSERT INTO `sys_area` VALUES (8252720, 82, 8200052, 2, '진안군', '전북특별자치도,진안군', 52720, 3523);
INSERT INTO `sys_area` VALUES (8252730, 82, 8200052, 2, '무주군', '전북특별자치도,무주군', 52730, 3524);
INSERT INTO `sys_area` VALUES (8252740, 82, 8200052, 2, '장수군', '전북특별자치도,장수군', 52740, 3525);
INSERT INTO `sys_area` VALUES (8252750, 82, 8200052, 2, '임실군', '전북특별자치도,임실군', 52750, 3526);
INSERT INTO `sys_area` VALUES (8252770, 82, 8200052, 2, '순창군', '전북특별자치도,순창군', 52770, 3527);
INSERT INTO `sys_area` VALUES (8252790, 82, 8200052, 2, '고창군', '전북특별자치도,고창군', 52790, 3528);
INSERT INTO `sys_area` VALUES (8252800, 82, 8200052, 2, '부안군', '전북특별자치도,부안군', 52800, 3529);
INSERT INTO `sys_area` VALUES (8600001, 86, 86, 1, '广东省', '广东省', 440000, 11);
INSERT INTO `sys_area` VALUES (8600002, 86, 86, 1, '河南省', '河南省', 410000, 12);
INSERT INTO `sys_area` VALUES (8600003, 86, 86, 1, '内蒙古自治区', '内蒙古自治区', 150000, 28);
INSERT INTO `sys_area` VALUES (8600004, 86, 86, 1, '黑龙江省', '黑龙江省', 230000, 2);
INSERT INTO `sys_area` VALUES (8600005, 86, 86, 1, '新疆维吾尔自治区', '新疆维吾尔自治区', 650000, 29);
INSERT INTO `sys_area` VALUES (8600006, 86, 86, 1, '湖北省', '湖北省', 420000, 13);
INSERT INTO `sys_area` VALUES (8600007, 86, 86, 1, '辽宁省', '辽宁省', 210000, 3);
INSERT INTO `sys_area` VALUES (8600008, 86, 86, 1, '山东省', '山东省', 370000, 7);
INSERT INTO `sys_area` VALUES (8600009, 86, 86, 1, '陕西省', '陕西省', 610000, 14);
INSERT INTO `sys_area` VALUES (8600010, 86, 86, 1, '上海市', '上海市', 310000, 4);
INSERT INTO `sys_area` VALUES (8600011, 86, 86, 1, '贵州省', '贵州省', 520000, 15);
INSERT INTO `sys_area` VALUES (8600012, 86, 86, 1, '重庆市', '重庆市', 500000, 16);
INSERT INTO `sys_area` VALUES (8600013, 86, 86, 1, '西藏自治区', '西藏自治区', 540000, 32);
INSERT INTO `sys_area` VALUES (8600014, 86, 86, 1, '安徽省', '安徽省', 340000, 17);
INSERT INTO `sys_area` VALUES (8600015, 86, 86, 1, '福建省', '福建省', 350000, 18);
INSERT INTO `sys_area` VALUES (8600016, 86, 86, 1, '湖南省', '湖南省', 430000, 19);
INSERT INTO `sys_area` VALUES (8600017, 86, 86, 1, '海南省', '海南省', 460000, 20);
INSERT INTO `sys_area` VALUES (8600018, 86, 86, 1, '江苏省', '江苏省', 320000, 8);
INSERT INTO `sys_area` VALUES (8600019, 86, 86, 1, '青海省', '青海省', 630000, 21);
INSERT INTO `sys_area` VALUES (8600020, 86, 86, 1, '广西壮族自治区', '广西壮族自治区', 450000, 30);
INSERT INTO `sys_area` VALUES (8600021, 86, 86, 1, '宁夏回族自治区', '宁夏回族自治区', 640000, 31);
INSERT INTO `sys_area` VALUES (8600022, 86, 86, 1, '江西省', '江西省', 360000, 22);
INSERT INTO `sys_area` VALUES (8600023, 86, 86, 1, '浙江省', '浙江省', 330000, 9);
INSERT INTO `sys_area` VALUES (8600024, 86, 86, 1, '河北省', '河北省', 130000, 10);
INSERT INTO `sys_area` VALUES (8600025, 86, 86, 1, '香港特别行政区', '香港特别行政区', 810000, 34);
INSERT INTO `sys_area` VALUES (8600026, 86, 86, 1, '山西省', '山西省', 140000, 23);
INSERT INTO `sys_area` VALUES (8600027, 86, 86, 1, '台湾省', '台湾省', 710000, 24);
INSERT INTO `sys_area` VALUES (8600028, 86, 86, 1, '澳门特别行政区', '澳门特别行政区', 820000, 33);
INSERT INTO `sys_area` VALUES (8600029, 86, 86, 1, '甘肃省', '甘肃省', 620000, 25);
INSERT INTO `sys_area` VALUES (8600030, 86, 86, 1, '四川省', '四川省', 510000, 26);
INSERT INTO `sys_area` VALUES (8600031, 86, 86, 1, '云南省', '云南省', 530000, 27);
INSERT INTO `sys_area` VALUES (8600032, 86, 86, 1, '北京市', '北京市', 110000, 5);
INSERT INTO `sys_area` VALUES (8600033, 86, 86, 1, '天津市', '天津市', 120000, 6);
INSERT INTO `sys_area` VALUES (8600034, 86, 86, 1, '吉林省', '吉林省', 220000, 1);
INSERT INTO `sys_area` VALUES (8600035, 86, 8600001, 2, '汕头市', '广东省，汕头市', 440500, 35);
INSERT INTO `sys_area` VALUES (8600036, 86, 8600001, 2, '佛山市', '广东省，佛山市', 440600, 36);
INSERT INTO `sys_area` VALUES (8600037, 86, 8600001, 2, '珠海市', '广东省，珠海市', 440400, 37);
INSERT INTO `sys_area` VALUES (8600038, 86, 8600001, 2, '江门市', '广东省，江门市', 440700, 38);
INSERT INTO `sys_area` VALUES (8600039, 86, 8600001, 2, '湛江市', '广东省，湛江市', 440800, 39);
INSERT INTO `sys_area` VALUES (8600040, 86, 8600001, 2, '惠州市', '广东省，惠州市', 441300, 40);
INSERT INTO `sys_area` VALUES (8600041, 86, 8600001, 2, '肇庆市', '广东省，肇庆市', 441200, 41);
INSERT INTO `sys_area` VALUES (8600042, 86, 8600001, 2, '汕尾市', '广东省，汕尾市', 441500, 42);
INSERT INTO `sys_area` VALUES (8600043, 86, 8600001, 2, '茂名市', '广东省，茂名市', 440900, 43);
INSERT INTO `sys_area` VALUES (8600044, 86, 8600001, 2, '深圳市', '广东省，深圳市', 440300, 44);
INSERT INTO `sys_area` VALUES (8600045, 86, 8600001, 2, '阳江市', '广东省，阳江市', 441700, 45);
INSERT INTO `sys_area` VALUES (8600046, 86, 8600001, 2, '潮州市', '广东省，潮州市', 445100, 46);
INSERT INTO `sys_area` VALUES (8600047, 86, 8600001, 2, '韶关市', '广东省，韶关市', 440200, 47);
INSERT INTO `sys_area` VALUES (8600048, 86, 8600001, 2, '梅州市', '广东省，梅州市', 441400, 48);
INSERT INTO `sys_area` VALUES (8600049, 86, 8600001, 2, '河源市', '广东省，河源市', 441600, 49);
INSERT INTO `sys_area` VALUES (8600050, 86, 8600001, 2, '清远市', '广东省，清远市', 441800, 50);
INSERT INTO `sys_area` VALUES (8600051, 86, 8600001, 2, '东莞市', '广东省，东莞市', 441900, 51);
INSERT INTO `sys_area` VALUES (8600052, 86, 8600001, 2, '云浮市', '广东省，云浮市', 445300, 52);
INSERT INTO `sys_area` VALUES (8600053, 86, 8600001, 2, '揭阳市', '广东省，揭阳市', 445200, 53);
INSERT INTO `sys_area` VALUES (8600054, 86, 8600001, 2, '广州市', '广东省，广州市', 440100, 54);
INSERT INTO `sys_area` VALUES (8600055, 86, 8600001, 2, '中山市', '广东省，中山市', 442000, 55);
INSERT INTO `sys_area` VALUES (8600056, 86, 8600001, 2, '东沙群岛', '广东省，东沙群岛', 442100, 56);
INSERT INTO `sys_area` VALUES (8600057, 86, 8600035, 3, '南澳县', '广东省，汕头市，南澳县', 440523, 57);
INSERT INTO `sys_area` VALUES (8600058, 86, 8600035, 3, '澄海区', '广东省，汕头市，澄海区', 440515, 58);
INSERT INTO `sys_area` VALUES (8600059, 86, 8600035, 3, '濠江区', '广东省，汕头市，濠江区', 440512, 59);
INSERT INTO `sys_area` VALUES (8600060, 86, 8600035, 3, '潮阳区', '广东省，汕头市，潮阳区', 440513, 60);
INSERT INTO `sys_area` VALUES (8600061, 86, 8600035, 3, '潮南区', '广东省，汕头市，潮南区', 440514, 61);
INSERT INTO `sys_area` VALUES (8600062, 86, 8600035, 3, '龙湖区', '广东省，汕头市，龙湖区', 440507, 62);
INSERT INTO `sys_area` VALUES (8600063, 86, 8600035, 3, '金平区', '广东省，汕头市，金平区', 440511, 63);
INSERT INTO `sys_area` VALUES (8600133, 86, 8600036, 3, '三水区', '广东省，佛山市，三水区', 440607, 64);
INSERT INTO `sys_area` VALUES (8600134, 86, 8600036, 3, '高明区', '广东省，佛山市，高明区', 440608, 65);
INSERT INTO `sys_area` VALUES (8600135, 86, 8600036, 3, '顺德区', '广东省，佛山市，顺德区', 440606, 66);
INSERT INTO `sys_area` VALUES (8600136, 86, 8600036, 3, '禅城区', '广东省，佛山市，禅城区', 440604, 67);
INSERT INTO `sys_area` VALUES (8600137, 86, 8600036, 3, '南海区', '广东省，佛山市，南海区', 440605, 68);
INSERT INTO `sys_area` VALUES (8600179, 86, 8600037, 3, '香洲区', '广东省，珠海市，香洲区', 440402, 69);
INSERT INTO `sys_area` VALUES (8600180, 86, 8600037, 3, '斗门区', '广东省，珠海市，斗门区', 440403, 70);
INSERT INTO `sys_area` VALUES (8600181, 86, 8600037, 3, '金湾区', '广东省，珠海市，金湾区', 440404, 71);
INSERT INTO `sys_area` VALUES (8600182, 86, 8600037, 3, '澳门大学横琴校区(由澳门管辖)', '广东省，珠海市，澳门大学横琴校区(由澳门管辖)', 440499, 72);
INSERT INTO `sys_area` VALUES (8600215, 86, 8600038, 3, '鹤山市', '广东省，江门市，鹤山市', 440784, 73);
INSERT INTO `sys_area` VALUES (8600216, 86, 8600038, 3, '江海区', '广东省，江门市，江海区', 440704, 74);
INSERT INTO `sys_area` VALUES (8600217, 86, 8600038, 3, '开平市', '广东省，江门市，开平市', 440783, 75);
INSERT INTO `sys_area` VALUES (8600218, 86, 8600038, 3, '台山市', '广东省，江门市，台山市', 440781, 76);
INSERT INTO `sys_area` VALUES (8600219, 86, 8600038, 3, '恩平市', '广东省，江门市，恩平市', 440785, 77);
INSERT INTO `sys_area` VALUES (8600220, 86, 8600038, 3, '新会区', '广东省，江门市，新会区', 440705, 78);
INSERT INTO `sys_area` VALUES (8600221, 86, 8600038, 3, '蓬江区', '广东省，江门市，蓬江区', 440703, 79);
INSERT INTO `sys_area` VALUES (8600302, 86, 8600039, 3, '吴川市', '广东省，湛江市，吴川市', 440883, 80);
INSERT INTO `sys_area` VALUES (8600303, 86, 8600039, 3, '廉江市', '广东省，湛江市，廉江市', 440881, 81);
INSERT INTO `sys_area` VALUES (8600304, 86, 8600039, 3, '雷州市', '广东省，湛江市，雷州市', 440882, 82);
INSERT INTO `sys_area` VALUES (8600305, 86, 8600039, 3, '徐闻县', '广东省，湛江市，徐闻县', 440825, 83);
INSERT INTO `sys_area` VALUES (8600306, 86, 8600039, 3, '霞山区', '广东省，湛江市，霞山区', 440803, 84);
INSERT INTO `sys_area` VALUES (8600307, 86, 8600039, 3, '麻章区', '广东省，湛江市，麻章区', 440811, 85);
INSERT INTO `sys_area` VALUES (8600308, 86, 8600039, 3, '坡头区', '广东省，湛江市，坡头区', 440804, 86);
INSERT INTO `sys_area` VALUES (8600309, 86, 8600039, 3, '赤坎区', '广东省，湛江市，赤坎区', 440802, 87);
INSERT INTO `sys_area` VALUES (8600310, 86, 8600039, 3, '遂溪县', '广东省，湛江市，遂溪县', 440823, 88);
INSERT INTO `sys_area` VALUES (8600448, 86, 8600040, 3, '龙门县', '广东省，惠州市，龙门县', 441324, 89);
INSERT INTO `sys_area` VALUES (8600449, 86, 8600040, 3, '博罗县', '广东省，惠州市，博罗县', 441322, 90);
INSERT INTO `sys_area` VALUES (8600450, 86, 8600040, 3, '惠东县', '广东省，惠州市，惠东县', 441323, 91);
INSERT INTO `sys_area` VALUES (8600451, 86, 8600040, 3, '惠阳区', '广东省，惠州市，惠阳区', 441303, 92);
INSERT INTO `sys_area` VALUES (8600452, 86, 8600040, 3, '惠城区', '广东省，惠州市，惠城区', 441302, 93);
INSERT INTO `sys_area` VALUES (8600535, 86, 8600041, 3, '怀集县', '广东省，肇庆市，怀集县', 441224, 94);
INSERT INTO `sys_area` VALUES (8600536, 86, 8600041, 3, '封开县', '广东省，肇庆市，封开县', 441225, 95);
INSERT INTO `sys_area` VALUES (8600537, 86, 8600041, 3, '广宁县', '广东省，肇庆市，广宁县', 441223, 96);
INSERT INTO `sys_area` VALUES (8600538, 86, 8600041, 3, '四会市', '广东省，肇庆市，四会市', 441284, 97);
INSERT INTO `sys_area` VALUES (8600539, 86, 8600041, 3, '德庆县', '广东省，肇庆市，德庆县', 441226, 98);
INSERT INTO `sys_area` VALUES (8600540, 86, 8600041, 3, '鼎湖区', '广东省，肇庆市，鼎湖区', 441203, 99);
INSERT INTO `sys_area` VALUES (8600541, 86, 8600041, 3, '端州区', '广东省，肇庆市，端州区', 441202, 100);
INSERT INTO `sys_area` VALUES (8600542, 86, 8600041, 3, '高要区', '广东省，肇庆市，高要区', 441204, 101);
INSERT INTO `sys_area` VALUES (8600650, 86, 8600042, 3, '陆河县', '广东省，汕尾市，陆河县', 441523, 102);
INSERT INTO `sys_area` VALUES (8600651, 86, 8600042, 3, '陆丰市', '广东省，汕尾市，陆丰市', 441581, 103);
INSERT INTO `sys_area` VALUES (8600652, 86, 8600042, 3, '海丰县', '广东省，汕尾市，海丰县', 441521, 104);
INSERT INTO `sys_area` VALUES (8600653, 86, 8600042, 3, '城区', '广东省，汕尾市，城区', 441502, 105);
INSERT INTO `sys_area` VALUES (8600718, 86, 8600043, 3, '信宜市', '广东省，茂名市，信宜市', 440983, 106);
INSERT INTO `sys_area` VALUES (8600719, 86, 8600043, 3, '化州市', '广东省，茂名市，化州市', 440982, 107);
INSERT INTO `sys_area` VALUES (8600720, 86, 8600043, 3, '高州市', '广东省，茂名市，高州市', 440981, 108);
INSERT INTO `sys_area` VALUES (8600721, 86, 8600043, 3, '电白区', '广东省，茂名市，电白区', 440904, 109);
INSERT INTO `sys_area` VALUES (8600722, 86, 8600043, 3, '茂南区', '广东省，茂名市，茂南区', 440902, 110);
INSERT INTO `sys_area` VALUES (8600848, 86, 8600044, 3, '宝安区', '广东省，深圳市，宝安区', 440306, 111);
INSERT INTO `sys_area` VALUES (8600849, 86, 8600044, 3, '南山区', '广东省，深圳市，南山区', 440305, 112);
INSERT INTO `sys_area` VALUES (8600850, 86, 8600044, 3, '福田区', '广东省，深圳市，福田区', 440304, 113);
INSERT INTO `sys_area` VALUES (8600851, 86, 8600044, 3, '盐田区', '广东省，深圳市，盐田区', 440308, 114);
INSERT INTO `sys_area` VALUES (8600852, 86, 8600044, 3, '罗湖区', '广东省，深圳市，罗湖区', 440303, 115);
INSERT INTO `sys_area` VALUES (8600853, 86, 8600044, 3, '龙华区', '广东省，深圳市，龙华区', 440309, 116);
INSERT INTO `sys_area` VALUES (8600854, 86, 8600044, 3, '龙岗区', '广东省，深圳市，龙岗区', 440307, 117);
INSERT INTO `sys_area` VALUES (8600855, 86, 8600044, 3, '坪山区', '广东省，深圳市，坪山区', 440310, 118);
INSERT INTO `sys_area` VALUES (8600917, 86, 8600045, 3, '阳春市', '广东省，阳江市，阳春市', 441781, 119);
INSERT INTO `sys_area` VALUES (8600918, 86, 8600045, 3, '江城区', '广东省，阳江市，江城区', 441702, 120);
INSERT INTO `sys_area` VALUES (8600919, 86, 8600045, 3, '阳西县', '广东省，阳江市，阳西县', 441721, 121);
INSERT INTO `sys_area` VALUES (8600920, 86, 8600045, 3, '阳东区', '广东省，阳江市，阳东区', 441704, 122);
INSERT INTO `sys_area` VALUES (8600992, 86, 8600046, 3, '饶平县', '广东省，潮州市，饶平县', 445122, 123);
INSERT INTO `sys_area` VALUES (8600993, 86, 8600046, 3, '湘桥区', '广东省，潮州市，湘桥区', 445102, 124);
INSERT INTO `sys_area` VALUES (8600994, 86, 8600046, 3, '潮安区', '广东省，潮州市，潮安区', 445103, 125);
INSERT INTO `sys_area` VALUES (8601052, 86, 8600047, 3, '仁化县', '广东省，韶关市，仁化县', 440224, 126);
INSERT INTO `sys_area` VALUES (8601053, 86, 8600047, 3, '南雄市', '广东省，韶关市，南雄市', 440282, 127);
INSERT INTO `sys_area` VALUES (8601054, 86, 8600047, 3, '曲江区', '广东省，韶关市，曲江区', 440205, 128);
INSERT INTO `sys_area` VALUES (8601055, 86, 8600047, 3, '浈江区', '广东省，韶关市，浈江区', 440204, 129);
INSERT INTO `sys_area` VALUES (8601056, 86, 8600047, 3, '始兴县', '广东省，韶关市，始兴县', 440222, 130);
INSERT INTO `sys_area` VALUES (8601057, 86, 8600047, 3, '乳源瑶族自治县', '广东省，韶关市，乳源瑶族自治县', 440232, 131);
INSERT INTO `sys_area` VALUES (8601058, 86, 8600047, 3, '武江区', '广东省，韶关市，武江区', 440203, 132);
INSERT INTO `sys_area` VALUES (8601059, 86, 8600047, 3, '翁源县', '广东省，韶关市，翁源县', 440229, 133);
INSERT INTO `sys_area` VALUES (8601060, 86, 8600047, 3, '新丰县', '广东省，韶关市，新丰县', 440233, 134);
INSERT INTO `sys_area` VALUES (8601061, 86, 8600047, 3, '乐昌市', '广东省，韶关市，乐昌市', 440281, 135);
INSERT INTO `sys_area` VALUES (8601178, 86, 8600048, 3, '平远县', '广东省，梅州市，平远县', 441426, 136);
INSERT INTO `sys_area` VALUES (8601179, 86, 8600048, 3, '蕉岭县', '广东省，梅州市，蕉岭县', 441427, 137);
INSERT INTO `sys_area` VALUES (8601180, 86, 8600048, 3, '兴宁市', '广东省，梅州市，兴宁市', 441481, 138);
INSERT INTO `sys_area` VALUES (8601181, 86, 8600048, 3, '五华县', '广东省，梅州市，五华县', 441424, 139);
INSERT INTO `sys_area` VALUES (8601182, 86, 8600048, 3, '梅县区', '广东省，梅州市，梅县区', 441403, 140);
INSERT INTO `sys_area` VALUES (8601183, 86, 8600048, 3, '丰顺县', '广东省，梅州市，丰顺县', 441423, 141);
INSERT INTO `sys_area` VALUES (8601184, 86, 8600048, 3, '大埔县', '广东省，梅州市，大埔县', 441422, 142);
INSERT INTO `sys_area` VALUES (8601185, 86, 8600048, 3, '梅江区', '广东省，梅州市，梅江区', 441402, 143);
INSERT INTO `sys_area` VALUES (8601304, 86, 8600049, 3, '龙川县', '广东省，河源市，龙川县', 441622, 144);
INSERT INTO `sys_area` VALUES (8601305, 86, 8600049, 3, '和平县', '广东省，河源市，和平县', 441624, 145);
INSERT INTO `sys_area` VALUES (8601306, 86, 8600049, 3, '连平县', '广东省，河源市，连平县', 441623, 146);
INSERT INTO `sys_area` VALUES (8601307, 86, 8600049, 3, '东源县', '广东省，河源市，东源县', 441625, 147);
INSERT INTO `sys_area` VALUES (8601308, 86, 8600049, 3, '源城区', '广东省，河源市，源城区', 441602, 148);
INSERT INTO `sys_area` VALUES (8601309, 86, 8600049, 3, '紫金县', '广东省，河源市，紫金县', 441621, 149);
INSERT INTO `sys_area` VALUES (8601410, 86, 8600050, 3, '连南瑶族自治县', '广东省，清远市，连南瑶族自治县', 441826, 150);
INSERT INTO `sys_area` VALUES (8601411, 86, 8600050, 3, '连州市', '广东省，清远市，连州市', 441882, 151);
INSERT INTO `sys_area` VALUES (8601412, 86, 8600050, 3, '连山壮族瑶族自治县', '广东省，清远市，连山壮族瑶族自治县', 441825, 152);
INSERT INTO `sys_area` VALUES (8601413, 86, 8600050, 3, '英德市', '广东省，清远市，英德市', 441881, 153);
INSERT INTO `sys_area` VALUES (8601414, 86, 8600050, 3, '佛冈县', '广东省，清远市，佛冈县', 441821, 154);
INSERT INTO `sys_area` VALUES (8601415, 86, 8600050, 3, '阳山县', '广东省，清远市，阳山县', 441823, 155);
INSERT INTO `sys_area` VALUES (8601416, 86, 8600050, 3, '清新区', '广东省，清远市，清新区', 441803, 156);
INSERT INTO `sys_area` VALUES (8601417, 86, 8600050, 3, '清城区', '广东省，清远市，清城区', 441802, 157);
INSERT INTO `sys_area` VALUES (8601543, 86, 8600052, 3, '罗定市', '广东省，云浮市，罗定市', 445381, 158);
INSERT INTO `sys_area` VALUES (8601544, 86, 8600052, 3, '郁南县', '广东省，云浮市，郁南县', 445322, 159);
INSERT INTO `sys_area` VALUES (8601545, 86, 8600052, 3, '新兴县', '广东省，云浮市，新兴县', 445321, 160);
INSERT INTO `sys_area` VALUES (8601546, 86, 8600052, 3, '云安区', '广东省，云浮市，云安区', 445303, 161);
INSERT INTO `sys_area` VALUES (8601547, 86, 8600052, 3, '云城区', '广东省，云浮市，云城区', 445302, 162);
INSERT INTO `sys_area` VALUES (8601620, 86, 8600053, 3, '揭西县', '广东省，揭阳市，揭西县', 445222, 163);
INSERT INTO `sys_area` VALUES (8601621, 86, 8600053, 3, '普宁市', '广东省，揭阳市，普宁市', 445281, 164);
INSERT INTO `sys_area` VALUES (8601622, 86, 8600053, 3, '惠来县', '广东省，揭阳市，惠来县', 445224, 165);
INSERT INTO `sys_area` VALUES (8601623, 86, 8600053, 3, '揭东区', '广东省，揭阳市，揭东区', 445203, 166);
INSERT INTO `sys_area` VALUES (8601624, 86, 8600053, 3, '榕城区', '广东省，揭阳市，榕城区', 445202, 167);
INSERT INTO `sys_area` VALUES (8601734, 86, 8600054, 3, '从化区', '广东省，广州市，从化区', 440117, 168);
INSERT INTO `sys_area` VALUES (8601735, 86, 8600054, 3, '增城区', '广东省，广州市，增城区', 440118, 169);
INSERT INTO `sys_area` VALUES (8601736, 86, 8600054, 3, '南沙区', '广东省，广州市，南沙区', 440115, 170);
INSERT INTO `sys_area` VALUES (8601737, 86, 8600054, 3, '花都区', '广东省，广州市，花都区', 440114, 171);
INSERT INTO `sys_area` VALUES (8601738, 86, 8600054, 3, '黄埔区', '广东省，广州市，黄埔区', 440112, 172);
INSERT INTO `sys_area` VALUES (8601739, 86, 8600054, 3, '白云区', '广东省，广州市，白云区', 440111, 173);
INSERT INTO `sys_area` VALUES (8601740, 86, 8600054, 3, '天河区', '广东省，广州市，天河区', 440106, 174);
INSERT INTO `sys_area` VALUES (8601741, 86, 8600054, 3, '海珠区', '广东省，广州市，海珠区', 440105, 175);
INSERT INTO `sys_area` VALUES (8601742, 86, 8600054, 3, '荔湾区', '广东省，广州市，荔湾区', 440103, 176);
INSERT INTO `sys_area` VALUES (8601743, 86, 8600054, 3, '越秀区', '广东省，广州市，越秀区', 440104, 177);
INSERT INTO `sys_area` VALUES (8601744, 86, 8600054, 3, '番禺区', '广东省，广州市，番禺区', 440113, 178);
INSERT INTO `sys_area` VALUES (8601941, 86, 8600002, 2, '濮阳市', '河南省，濮阳市', 410900, 179);
INSERT INTO `sys_area` VALUES (8601942, 86, 8600002, 2, '洛阳市', '河南省，洛阳市', 410300, 180);
INSERT INTO `sys_area` VALUES (8601943, 86, 8600002, 2, '三门峡市', '河南省，三门峡市', 411200, 181);
INSERT INTO `sys_area` VALUES (8601944, 86, 8600002, 2, '郑州市', '河南省，郑州市', 410100, 182);
INSERT INTO `sys_area` VALUES (8601945, 86, 8600002, 2, '许昌市', '河南省，许昌市', 411000, 183);
INSERT INTO `sys_area` VALUES (8601946, 86, 8600002, 2, '南阳市', '河南省，南阳市', 411300, 184);
INSERT INTO `sys_area` VALUES (8601947, 86, 8600002, 2, '漯河市', '河南省，漯河市', 411100, 185);
INSERT INTO `sys_area` VALUES (8601948, 86, 8600002, 2, '济源市', '河南省，济源市', 419001, 186);
INSERT INTO `sys_area` VALUES (8601949, 86, 8600002, 2, '平顶山市', '河南省，平顶山市', 410400, 187);
INSERT INTO `sys_area` VALUES (8601950, 86, 8600002, 2, '信阳市', '河南省，信阳市', 411500, 188);
INSERT INTO `sys_area` VALUES (8601951, 86, 8600002, 2, '焦作市', '河南省，焦作市', 410800, 189);
INSERT INTO `sys_area` VALUES (8601952, 86, 8600002, 2, '安阳市', '河南省，安阳市', 410500, 190);
INSERT INTO `sys_area` VALUES (8601953, 86, 8600002, 2, '驻马店市', '河南省，驻马店市', 411700, 191);
INSERT INTO `sys_area` VALUES (8601954, 86, 8600002, 2, '商丘市', '河南省，商丘市', 411400, 192);
INSERT INTO `sys_area` VALUES (8601955, 86, 8600002, 2, '新乡市', '河南省，新乡市', 410700, 193);
INSERT INTO `sys_area` VALUES (8601956, 86, 8600002, 2, '鹤壁市', '河南省，鹤壁市', 410600, 194);
INSERT INTO `sys_area` VALUES (8601957, 86, 8600002, 2, '周口市', '河南省，周口市', 411600, 195);
INSERT INTO `sys_area` VALUES (8601958, 86, 8600002, 2, '开封市', '河南省，开封市', 410200, 196);
INSERT INTO `sys_area` VALUES (8601959, 86, 8601941, 3, '清丰县', '河南省，濮阳市，清丰县', 410922, 197);
INSERT INTO `sys_area` VALUES (8601960, 86, 8601941, 3, '南乐县', '河南省，濮阳市，南乐县', 410923, 198);
INSERT INTO `sys_area` VALUES (8601961, 86, 8601941, 3, '台前县', '河南省，濮阳市，台前县', 410927, 199);
INSERT INTO `sys_area` VALUES (8601962, 86, 8601941, 3, '华龙区', '河南省，濮阳市，华龙区', 410902, 200);
INSERT INTO `sys_area` VALUES (8601963, 86, 8601941, 3, '范县', '河南省，濮阳市，范县', 410926, 201);
INSERT INTO `sys_area` VALUES (8601964, 86, 8601941, 3, '濮阳县', '河南省，濮阳市，濮阳县', 410928, 202);
INSERT INTO `sys_area` VALUES (8602054, 86, 8601942, 3, '新安县', '河南省，洛阳市，新安县', 410323, 203);
INSERT INTO `sys_area` VALUES (8602055, 86, 8601942, 3, '孟津县', '河南省，洛阳市，孟津县', 410322, 204);
INSERT INTO `sys_area` VALUES (8602056, 86, 8601942, 3, '嵩县', '河南省，洛阳市，嵩县', 410325, 205);
INSERT INTO `sys_area` VALUES (8602057, 86, 8601942, 3, '栾川县', '河南省，洛阳市，栾川县', 410324, 206);
INSERT INTO `sys_area` VALUES (8602058, 86, 8601942, 3, '汝阳县', '河南省，洛阳市，汝阳县', 410326, 207);
INSERT INTO `sys_area` VALUES (8602059, 86, 8601942, 3, '涧西区', '河南省，洛阳市，涧西区', 410305, 208);
INSERT INTO `sys_area` VALUES (8602060, 86, 8601942, 3, '伊川县', '河南省，洛阳市，伊川县', 410329, 209);
INSERT INTO `sys_area` VALUES (8602061, 86, 8601942, 3, '吉利区', '河南省，洛阳市，吉利区', 410306, 210);
INSERT INTO `sys_area` VALUES (8602062, 86, 8601942, 3, '宜阳县', '河南省，洛阳市，宜阳县', 410327, 211);
INSERT INTO `sys_area` VALUES (8602063, 86, 8601942, 3, '洛宁县', '河南省，洛阳市，洛宁县', 410328, 212);
INSERT INTO `sys_area` VALUES (8602064, 86, 8601942, 3, '偃师市', '河南省，洛阳市，偃师市', 410381, 213);
INSERT INTO `sys_area` VALUES (8602065, 86, 8601942, 3, '瀍河回族区', '河南省，洛阳市，瀍河回族区', 410304, 214);
INSERT INTO `sys_area` VALUES (8602066, 86, 8601942, 3, '洛龙区', '河南省，洛阳市，洛龙区', 410311, 215);
INSERT INTO `sys_area` VALUES (8602067, 86, 8601942, 3, '老城区', '河南省，洛阳市，老城区', 410302, 216);
INSERT INTO `sys_area` VALUES (8602068, 86, 8601942, 3, '西工区', '河南省，洛阳市，西工区', 410303, 217);
INSERT INTO `sys_area` VALUES (8602260, 86, 8601943, 3, '湖滨区', '河南省，三门峡市，湖滨区', 411202, 218);
INSERT INTO `sys_area` VALUES (8602261, 86, 8601943, 3, '义马市', '河南省，三门峡市，义马市', 411281, 219);
INSERT INTO `sys_area` VALUES (8602262, 86, 8601943, 3, '渑池县', '河南省，三门峡市，渑池县', 411221, 220);
INSERT INTO `sys_area` VALUES (8602263, 86, 8601943, 3, '卢氏县', '河南省，三门峡市，卢氏县', 411224, 221);
INSERT INTO `sys_area` VALUES (8602264, 86, 8601943, 3, '陕州区', '河南省，三门峡市，陕州区', 411203, 222);
INSERT INTO `sys_area` VALUES (8602265, 86, 8601943, 3, '灵宝市', '河南省，三门峡市，灵宝市', 411282, 223);
INSERT INTO `sys_area` VALUES (8602346, 86, 8601944, 3, '登封市', '河南省，郑州市，登封市', 410185, 224);
INSERT INTO `sys_area` VALUES (8602347, 86, 8601944, 3, '巩义市', '河南省，郑州市，巩义市', 410181, 225);
INSERT INTO `sys_area` VALUES (8602348, 86, 8601944, 3, '荥阳市', '河南省，郑州市，荥阳市', 410182, 226);
INSERT INTO `sys_area` VALUES (8602349, 86, 8601944, 3, '上街区', '河南省，郑州市，上街区', 410106, 227);
INSERT INTO `sys_area` VALUES (8602350, 86, 8601944, 3, '新郑市', '河南省，郑州市，新郑市', 410184, 228);
INSERT INTO `sys_area` VALUES (8602351, 86, 8601944, 3, '惠济区', '河南省，郑州市，惠济区', 410108, 229);
INSERT INTO `sys_area` VALUES (8602352, 86, 8601944, 3, '金水区', '河南省，郑州市，金水区', 410105, 230);
INSERT INTO `sys_area` VALUES (8602353, 86, 8601944, 3, '中原区', '河南省，郑州市，中原区', 410102, 231);
INSERT INTO `sys_area` VALUES (8602354, 86, 8601944, 3, '二七区', '河南省，郑州市，二七区', 410103, 232);
INSERT INTO `sys_area` VALUES (8602355, 86, 8601944, 3, '新密市', '河南省，郑州市，新密市', 410183, 233);
INSERT INTO `sys_area` VALUES (8602356, 86, 8601944, 3, '管城回族区', '河南省，郑州市，管城回族区', 410104, 234);
INSERT INTO `sys_area` VALUES (8602357, 86, 8601944, 3, '中牟县', '河南省，郑州市，中牟县', 410122, 235);
INSERT INTO `sys_area` VALUES (8602557, 86, 8601945, 3, '建安区', '河南省，许昌市，建安区', 411003, 236);
INSERT INTO `sys_area` VALUES (8602558, 86, 8601945, 3, '襄城县', '河南省，许昌市，襄城县', 411025, 237);
INSERT INTO `sys_area` VALUES (8602559, 86, 8601945, 3, '魏都区', '河南省，许昌市，魏都区', 411002, 238);
INSERT INTO `sys_area` VALUES (8602560, 86, 8601945, 3, '长葛市', '河南省，许昌市，长葛市', 411082, 239);
INSERT INTO `sys_area` VALUES (8602561, 86, 8601945, 3, '禹州市', '河南省，许昌市，禹州市', 411081, 240);
INSERT INTO `sys_area` VALUES (8602562, 86, 8601945, 3, '鄢陵县', '河南省，许昌市，鄢陵县', 411024, 241);
INSERT INTO `sys_area` VALUES (8602662, 86, 8601946, 3, '西峡县', '河南省，南阳市，西峡县', 411323, 242);
INSERT INTO `sys_area` VALUES (8602663, 86, 8601946, 3, '淅川县', '河南省，南阳市，淅川县', 411326, 243);
INSERT INTO `sys_area` VALUES (8602664, 86, 8601946, 3, '南召县', '河南省，南阳市，南召县', 411321, 244);
INSERT INTO `sys_area` VALUES (8602665, 86, 8601946, 3, '卧龙区', '河南省，南阳市，卧龙区', 411303, 245);
INSERT INTO `sys_area` VALUES (8602666, 86, 8601946, 3, '唐河县', '河南省，南阳市，唐河县', 411328, 246);
INSERT INTO `sys_area` VALUES (8602667, 86, 8601946, 3, '桐柏县', '河南省，南阳市，桐柏县', 411330, 247);
INSERT INTO `sys_area` VALUES (8602668, 86, 8601946, 3, '社旗县', '河南省，南阳市，社旗县', 411327, 248);
INSERT INTO `sys_area` VALUES (8602669, 86, 8601946, 3, '方城县', '河南省，南阳市，方城县', 411322, 249);
INSERT INTO `sys_area` VALUES (8602670, 86, 8601946, 3, '镇平县', '河南省，南阳市，镇平县', 411324, 250);
INSERT INTO `sys_area` VALUES (8602671, 86, 8601946, 3, '内乡县', '河南省，南阳市，内乡县', 411325, 251);
INSERT INTO `sys_area` VALUES (8602672, 86, 8601946, 3, '新野县', '河南省，南阳市，新野县', 411329, 252);
INSERT INTO `sys_area` VALUES (8602673, 86, 8601946, 3, '邓州市', '河南省，南阳市，邓州市', 411381, 253);
INSERT INTO `sys_area` VALUES (8602674, 86, 8601946, 3, '宛城区', '河南省，南阳市，宛城区', 411302, 254);
INSERT INTO `sys_area` VALUES (8602926, 86, 8601947, 3, '郾城区', '河南省，漯河市，郾城区', 411103, 255);
INSERT INTO `sys_area` VALUES (8602927, 86, 8601947, 3, '临颍县', '河南省，漯河市，临颍县', 411122, 256);
INSERT INTO `sys_area` VALUES (8602928, 86, 8601947, 3, '召陵区', '河南省，漯河市，召陵区', 411104, 257);
INSERT INTO `sys_area` VALUES (8602929, 86, 8601947, 3, '舞阳县', '河南省，漯河市，舞阳县', 411121, 258);
INSERT INTO `sys_area` VALUES (8602930, 86, 8601947, 3, '源汇区', '河南省，漯河市，源汇区', 411102, 259);
INSERT INTO `sys_area` VALUES (8603002, 86, 8601949, 3, '郏县', '河南省，平顶山市，郏县', 410425, 260);
INSERT INTO `sys_area` VALUES (8603003, 86, 8601949, 3, '宝丰县', '河南省，平顶山市，宝丰县', 410421, 261);
INSERT INTO `sys_area` VALUES (8603004, 86, 8601949, 3, '石龙区', '河南省，平顶山市，石龙区', 410404, 262);
INSERT INTO `sys_area` VALUES (8603005, 86, 8601949, 3, '卫东区', '河南省，平顶山市，卫东区', 410403, 263);
INSERT INTO `sys_area` VALUES (8603006, 86, 8601949, 3, '湛河区', '河南省，平顶山市，湛河区', 410411, 264);
INSERT INTO `sys_area` VALUES (8603007, 86, 8601949, 3, '鲁山县', '河南省，平顶山市，鲁山县', 410423, 265);
INSERT INTO `sys_area` VALUES (8603008, 86, 8601949, 3, '舞钢市', '河南省，平顶山市，舞钢市', 410481, 266);
INSERT INTO `sys_area` VALUES (8603009, 86, 8601949, 3, '叶县', '河南省，平顶山市，叶县', 410422, 267);
INSERT INTO `sys_area` VALUES (8603010, 86, 8601949, 3, '新华区', '河南省，平顶山市，新华区', 410402, 268);
INSERT INTO `sys_area` VALUES (8603011, 86, 8601949, 3, '汝州市', '河南省，平顶山市，汝州市', 410482, 269);
INSERT INTO `sys_area` VALUES (8603154, 86, 8601950, 3, '潢川县', '河南省，信阳市，潢川县', 411526, 270);
INSERT INTO `sys_area` VALUES (8603155, 86, 8601950, 3, '淮滨县', '河南省，信阳市，淮滨县', 411527, 271);
INSERT INTO `sys_area` VALUES (8603156, 86, 8601950, 3, '光山县', '河南省，信阳市，光山县', 411522, 272);
INSERT INTO `sys_area` VALUES (8603157, 86, 8601950, 3, '罗山县', '河南省，信阳市，罗山县', 411521, 273);
INSERT INTO `sys_area` VALUES (8603158, 86, 8601950, 3, '商城县', '河南省，信阳市，商城县', 411524, 274);
INSERT INTO `sys_area` VALUES (8603159, 86, 8601950, 3, '浉河区', '河南省，信阳市，浉河区', 411502, 275);
INSERT INTO `sys_area` VALUES (8603160, 86, 8601950, 3, '固始县', '河南省，信阳市，固始县', 411525, 276);
INSERT INTO `sys_area` VALUES (8603161, 86, 8601950, 3, '新县', '河南省，信阳市，新县', 411523, 277);
INSERT INTO `sys_area` VALUES (8603162, 86, 8601950, 3, '息县', '河南省，信阳市，息县', 411528, 278);
INSERT INTO `sys_area` VALUES (8603163, 86, 8601950, 3, '平桥区', '河南省，信阳市，平桥区', 411503, 279);
INSERT INTO `sys_area` VALUES (8603384, 86, 8601951, 3, '马村区', '河南省，焦作市，马村区', 410804, 280);
INSERT INTO `sys_area` VALUES (8603385, 86, 8601951, 3, '解放区', '河南省，焦作市，解放区', 410802, 281);
INSERT INTO `sys_area` VALUES (8603386, 86, 8601951, 3, '沁阳市', '河南省，焦作市，沁阳市', 410882, 282);
INSERT INTO `sys_area` VALUES (8603387, 86, 8601951, 3, '温县', '河南省，焦作市，温县', 410825, 283);
INSERT INTO `sys_area` VALUES (8603388, 86, 8601951, 3, '孟州市', '河南省，焦作市，孟州市', 410883, 284);
INSERT INTO `sys_area` VALUES (8603389, 86, 8601951, 3, '山阳区', '河南省，焦作市，山阳区', 410811, 285);
INSERT INTO `sys_area` VALUES (8603390, 86, 8601951, 3, '博爱县', '河南省，焦作市，博爱县', 410822, 286);
INSERT INTO `sys_area` VALUES (8603391, 86, 8601951, 3, '武陟县', '河南省，焦作市，武陟县', 410823, 287);
INSERT INTO `sys_area` VALUES (8603392, 86, 8601951, 3, '修武县', '河南省，焦作市，修武县', 410821, 288);
INSERT INTO `sys_area` VALUES (8603393, 86, 8601951, 3, '中站区', '河南省，焦作市，中站区', 410803, 289);
INSERT INTO `sys_area` VALUES (8603502, 86, 8601952, 3, '殷都区', '河南省，安阳市，殷都区', 410505, 290);
INSERT INTO `sys_area` VALUES (8603503, 86, 8601952, 3, '内黄县', '河南省，安阳市，内黄县', 410527, 291);
INSERT INTO `sys_area` VALUES (8603504, 86, 8601952, 3, '龙安区', '河南省，安阳市，龙安区', 410506, 292);
INSERT INTO `sys_area` VALUES (8603505, 86, 8601952, 3, '汤阴县', '河南省，安阳市，汤阴县', 410523, 293);
INSERT INTO `sys_area` VALUES (8603506, 86, 8601952, 3, '滑县', '河南省，安阳市，滑县', 410526, 294);
INSERT INTO `sys_area` VALUES (8603507, 86, 8601952, 3, '文峰区', '河南省，安阳市，文峰区', 410502, 295);
INSERT INTO `sys_area` VALUES (8603508, 86, 8601952, 3, '北关区', '河南省，安阳市，北关区', 410503, 296);
INSERT INTO `sys_area` VALUES (8603509, 86, 8601952, 3, '安阳县', '河南省，安阳市，安阳县', 410522, 297);
INSERT INTO `sys_area` VALUES (8603510, 86, 8601952, 3, '林州市', '河南省，安阳市，林州市', 410581, 298);
INSERT INTO `sys_area` VALUES (8603647, 86, 8601953, 3, '上蔡县', '河南省，驻马店市，上蔡县', 411722, 299);
INSERT INTO `sys_area` VALUES (8603648, 86, 8601953, 3, '西平县', '河南省，驻马店市，西平县', 411721, 300);
INSERT INTO `sys_area` VALUES (8603649, 86, 8601953, 3, '汝南县', '河南省，驻马店市，汝南县', 411727, 301);
INSERT INTO `sys_area` VALUES (8603650, 86, 8601953, 3, '平舆县', '河南省，驻马店市，平舆县', 411723, 302);
INSERT INTO `sys_area` VALUES (8603651, 86, 8601953, 3, '新蔡县', '河南省，驻马店市，新蔡县', 411729, 303);
INSERT INTO `sys_area` VALUES (8603652, 86, 8601953, 3, '泌阳县', '河南省，驻马店市，泌阳县', 411726, 304);
INSERT INTO `sys_area` VALUES (8603653, 86, 8601953, 3, '遂平县', '河南省，驻马店市，遂平县', 411728, 305);
INSERT INTO `sys_area` VALUES (8603654, 86, 8601953, 3, '驿城区', '河南省，驻马店市，驿城区', 411702, 306);
INSERT INTO `sys_area` VALUES (8603655, 86, 8601953, 3, '确山县', '河南省，驻马店市，确山县', 411725, 307);
INSERT INTO `sys_area` VALUES (8603656, 86, 8601953, 3, '正阳县', '河南省，驻马店市，正阳县', 411724, 308);
INSERT INTO `sys_area` VALUES (8603857, 86, 8601954, 3, '民权县', '河南省，商丘市，民权县', 411421, 309);
INSERT INTO `sys_area` VALUES (8603858, 86, 8601954, 3, '宁陵县', '河南省，商丘市，宁陵县', 411423, 310);
INSERT INTO `sys_area` VALUES (8603859, 86, 8601954, 3, '睢县', '河南省，商丘市，睢县', 411422, 311);
INSERT INTO `sys_area` VALUES (8603860, 86, 8601954, 3, '睢阳区', '河南省，商丘市，睢阳区', 411403, 312);
INSERT INTO `sys_area` VALUES (8603861, 86, 8601954, 3, '永城市', '河南省，商丘市，永城市', 411481, 313);
INSERT INTO `sys_area` VALUES (8603862, 86, 8601954, 3, '夏邑县', '河南省，商丘市，夏邑县', 411426, 314);
INSERT INTO `sys_area` VALUES (8603863, 86, 8601954, 3, '柘城县', '河南省，商丘市，柘城县', 411424, 315);
INSERT INTO `sys_area` VALUES (8603864, 86, 8601954, 3, '梁园区', '河南省，商丘市，梁园区', 411402, 316);
INSERT INTO `sys_area` VALUES (8603865, 86, 8601954, 3, '虞城县', '河南省，商丘市，虞城县', 411425, 317);
INSERT INTO `sys_area` VALUES (8604061, 86, 8601955, 3, '红旗区', '河南省，新乡市，红旗区', 410702, 318);
INSERT INTO `sys_area` VALUES (8604062, 86, 8601955, 3, '凤泉区', '河南省，新乡市，凤泉区', 410704, 319);
INSERT INTO `sys_area` VALUES (8604063, 86, 8601955, 3, '辉县市', '河南省，新乡市，辉县市', 410782, 320);
INSERT INTO `sys_area` VALUES (8604064, 86, 8601955, 3, '获嘉县', '河南省，新乡市，获嘉县', 410724, 321);
INSERT INTO `sys_area` VALUES (8604065, 86, 8601955, 3, '卫辉市', '河南省，新乡市，卫辉市', 410781, 322);
INSERT INTO `sys_area` VALUES (8604066, 86, 8601955, 3, '延津县', '河南省，新乡市，延津县', 410726, 323);
INSERT INTO `sys_area` VALUES (8604067, 86, 8601955, 3, '封丘县', '河南省，新乡市，封丘县', 410727, 324);
INSERT INTO `sys_area` VALUES (8604068, 86, 8601955, 3, '原阳县', '河南省，新乡市，原阳县', 410725, 325);
INSERT INTO `sys_area` VALUES (8604069, 86, 8601955, 3, '长垣县', '河南省，新乡市，长垣县', 410728, 326);
INSERT INTO `sys_area` VALUES (8604070, 86, 8601955, 3, '新乡县', '河南省，新乡市，新乡县', 410721, 327);
INSERT INTO `sys_area` VALUES (8604071, 86, 8601955, 3, '卫滨区', '河南省，新乡市，卫滨区', 410703, 328);
INSERT INTO `sys_area` VALUES (8604072, 86, 8601955, 3, '牧野区', '河南省，新乡市，牧野区', 410711, 329);
INSERT INTO `sys_area` VALUES (8604233, 86, 8601956, 3, '淇滨区', '河南省，鹤壁市，淇滨区', 410611, 330);
INSERT INTO `sys_area` VALUES (8604234, 86, 8601956, 3, '鹤山区', '河南省，鹤壁市，鹤山区', 410602, 331);
INSERT INTO `sys_area` VALUES (8604235, 86, 8601956, 3, '浚县', '河南省，鹤壁市，浚县', 410621, 332);
INSERT INTO `sys_area` VALUES (8604236, 86, 8601956, 3, '淇县', '河南省，鹤壁市，淇县', 410622, 333);
INSERT INTO `sys_area` VALUES (8604237, 86, 8601956, 3, '山城区', '河南省，鹤壁市，山城区', 410603, 334);
INSERT INTO `sys_area` VALUES (8604284, 86, 8601957, 3, '太康县', '河南省，周口市，太康县', 411627, 335);
INSERT INTO `sys_area` VALUES (8604285, 86, 8601957, 3, '鹿邑县', '河南省，周口市，鹿邑县', 411628, 336);
INSERT INTO `sys_area` VALUES (8604286, 86, 8601957, 3, '西华县', '河南省，周口市，西华县', 411622, 337);
INSERT INTO `sys_area` VALUES (8604287, 86, 8601957, 3, '郸城县', '河南省，周口市，郸城县', 411625, 338);
INSERT INTO `sys_area` VALUES (8604288, 86, 8601957, 3, '沈丘县', '河南省，周口市，沈丘县', 411624, 339);
INSERT INTO `sys_area` VALUES (8604289, 86, 8601957, 3, '项城市', '河南省，周口市，项城市', 411681, 340);
INSERT INTO `sys_area` VALUES (8604290, 86, 8601957, 3, '扶沟县', '河南省，周口市，扶沟县', 411621, 341);
INSERT INTO `sys_area` VALUES (8604291, 86, 8601957, 3, '淮阳县', '河南省，周口市，淮阳县', 411626, 342);
INSERT INTO `sys_area` VALUES (8604292, 86, 8601957, 3, '川汇区', '河南省，周口市，川汇区', 411602, 343);
INSERT INTO `sys_area` VALUES (8604293, 86, 8601957, 3, '商水县', '河南省，周口市，商水县', 411623, 344);
INSERT INTO `sys_area` VALUES (8604502, 86, 8601958, 3, '兰考县', '河南省，开封市，兰考县', 410225, 345);
INSERT INTO `sys_area` VALUES (8604503, 86, 8601958, 3, '祥符区', '河南省，开封市，祥符区', 410212, 346);
INSERT INTO `sys_area` VALUES (8604504, 86, 8601958, 3, '鼓楼区', '河南省，开封市，鼓楼区', 410204, 347);
INSERT INTO `sys_area` VALUES (8604505, 86, 8601958, 3, '顺河回族区', '河南省，开封市，顺河回族区', 410203, 348);
INSERT INTO `sys_area` VALUES (8604506, 86, 8601958, 3, '禹王台区', '河南省，开封市，禹王台区', 410205, 349);
INSERT INTO `sys_area` VALUES (8604507, 86, 8601958, 3, '杞县', '河南省，开封市，杞县', 410221, 350);
INSERT INTO `sys_area` VALUES (8604508, 86, 8601958, 3, '龙亭区', '河南省，开封市，龙亭区', 410202, 351);
INSERT INTO `sys_area` VALUES (8604509, 86, 8601958, 3, '尉氏县', '河南省，开封市，尉氏县', 410223, 352);
INSERT INTO `sys_area` VALUES (8604510, 86, 8601958, 3, '通许县', '河南省，开封市，通许县', 410222, 353);
INSERT INTO `sys_area` VALUES (8604628, 86, 8600003, 2, '乌海市', '内蒙古自治区，乌海市', 150300, 354);
INSERT INTO `sys_area` VALUES (8604629, 86, 8600003, 2, '巴彦淖尔市', '内蒙古自治区，巴彦淖尔市', 150800, 355);
INSERT INTO `sys_area` VALUES (8604630, 86, 8600003, 2, '呼伦贝尔市', '内蒙古自治区，呼伦贝尔市', 150700, 356);
INSERT INTO `sys_area` VALUES (8604631, 86, 8600003, 2, '鄂尔多斯市', '内蒙古自治区，鄂尔多斯市', 150600, 357);
INSERT INTO `sys_area` VALUES (8604632, 86, 8600003, 2, '包头市', '内蒙古自治区，包头市', 150200, 358);
INSERT INTO `sys_area` VALUES (8604633, 86, 8600003, 2, '呼和浩特市', '内蒙古自治区，呼和浩特市', 150100, 359);
INSERT INTO `sys_area` VALUES (8604634, 86, 8600003, 2, '通辽市', '内蒙古自治区，通辽市', 150500, 360);
INSERT INTO `sys_area` VALUES (8604635, 86, 8600003, 2, '赤峰市', '内蒙古自治区，赤峰市', 150400, 361);
INSERT INTO `sys_area` VALUES (8604636, 86, 8600003, 2, '阿拉善盟', '内蒙古自治区，阿拉善盟', 152900, 362);
INSERT INTO `sys_area` VALUES (8604637, 86, 8600003, 2, '兴安盟', '内蒙古自治区，兴安盟', 152200, 363);
INSERT INTO `sys_area` VALUES (8604638, 86, 8600003, 2, '锡林郭勒盟', '内蒙古自治区，锡林郭勒盟', 152500, 364);
INSERT INTO `sys_area` VALUES (8604639, 86, 8600003, 2, '乌兰察布市', '内蒙古自治区，乌兰察布市', 150900, 365);
INSERT INTO `sys_area` VALUES (8604640, 86, 8604628, 3, '乌达区', '内蒙古自治区，乌海市，乌达区', 150304, 366);
INSERT INTO `sys_area` VALUES (8604641, 86, 8604628, 3, '海勃湾区', '内蒙古自治区，乌海市，海勃湾区', 150302, 367);
INSERT INTO `sys_area` VALUES (8604642, 86, 8604628, 3, '海南区', '内蒙古自治区，乌海市，海南区', 150303, 368);
INSERT INTO `sys_area` VALUES (8604665, 86, 8604629, 3, '乌拉特中旗', '内蒙古自治区，巴彦淖尔市，乌拉特中旗', 150824, 369);
INSERT INTO `sys_area` VALUES (8604666, 86, 8604629, 3, '五原县', '内蒙古自治区，巴彦淖尔市，五原县', 150821, 370);
INSERT INTO `sys_area` VALUES (8604667, 86, 8604629, 3, '临河区', '内蒙古自治区，巴彦淖尔市，临河区', 150802, 371);
INSERT INTO `sys_area` VALUES (8604668, 86, 8604629, 3, '磴口县', '内蒙古自治区，巴彦淖尔市，磴口县', 150822, 372);
INSERT INTO `sys_area` VALUES (8604669, 86, 8604629, 3, '杭锦后旗', '内蒙古自治区，巴彦淖尔市，杭锦后旗', 150826, 373);
INSERT INTO `sys_area` VALUES (8604670, 86, 8604629, 3, '乌拉特后旗', '内蒙古自治区，巴彦淖尔市，乌拉特后旗', 150825, 374);
INSERT INTO `sys_area` VALUES (8604671, 86, 8604629, 3, '乌拉特前旗', '内蒙古自治区，巴彦淖尔市，乌拉特前旗', 150823, 375);
INSERT INTO `sys_area` VALUES (8604761, 86, 8604630, 3, '额尔古纳市', '内蒙古自治区，呼伦贝尔市，额尔古纳市', 150784, 376);
INSERT INTO `sys_area` VALUES (8604762, 86, 8604630, 3, '海拉尔区', '内蒙古自治区，呼伦贝尔市，海拉尔区', 150702, 377);
INSERT INTO `sys_area` VALUES (8604763, 86, 8604630, 3, '陈巴尔虎旗', '内蒙古自治区，呼伦贝尔市，陈巴尔虎旗', 150725, 378);
INSERT INTO `sys_area` VALUES (8604764, 86, 8604630, 3, '阿荣旗', '内蒙古自治区，呼伦贝尔市，阿荣旗', 150721, 379);
INSERT INTO `sys_area` VALUES (8604765, 86, 8604630, 3, '鄂温克族自治旗', '内蒙古自治区，呼伦贝尔市，鄂温克族自治旗', 150724, 380);
INSERT INTO `sys_area` VALUES (8604766, 86, 8604630, 3, '根河市', '内蒙古自治区，呼伦贝尔市，根河市', 150785, 381);
INSERT INTO `sys_area` VALUES (8604767, 86, 8604630, 3, '牙克石市', '内蒙古自治区，呼伦贝尔市，牙克石市', 150782, 382);
INSERT INTO `sys_area` VALUES (8604768, 86, 8604630, 3, '扎兰屯市', '内蒙古自治区，呼伦贝尔市，扎兰屯市', 150783, 383);
INSERT INTO `sys_area` VALUES (8604769, 86, 8604630, 3, '莫力达瓦达斡尔族自治旗', '内蒙古自治区，呼伦贝尔市，莫力达瓦达斡尔族自治旗', 150722, 384);
INSERT INTO `sys_area` VALUES (8604770, 86, 8604630, 3, '满洲里市', '内蒙古自治区，呼伦贝尔市，满洲里市', 150781, 385);
INSERT INTO `sys_area` VALUES (8604771, 86, 8604630, 3, '新巴尔虎左旗', '内蒙古自治区，呼伦贝尔市，新巴尔虎左旗', 150726, 386);
INSERT INTO `sys_area` VALUES (8604772, 86, 8604630, 3, '扎赉诺尔区', '内蒙古自治区，呼伦贝尔市，扎赉诺尔区', 150703, 387);
INSERT INTO `sys_area` VALUES (8604773, 86, 8604630, 3, '新巴尔虎右旗', '内蒙古自治区，呼伦贝尔市，新巴尔虎右旗', 150727, 388);
INSERT INTO `sys_area` VALUES (8604774, 86, 8604630, 3, '鄂伦春自治旗', '内蒙古自治区，呼伦贝尔市，鄂伦春自治旗', 150723, 389);
INSERT INTO `sys_area` VALUES (8604962, 86, 8604631, 3, '准格尔旗', '内蒙古自治区，鄂尔多斯市，准格尔旗', 150622, 390);
INSERT INTO `sys_area` VALUES (8604963, 86, 8604631, 3, '鄂托克旗', '内蒙古自治区，鄂尔多斯市，鄂托克旗', 150624, 391);
INSERT INTO `sys_area` VALUES (8604964, 86, 8604631, 3, '杭锦旗', '内蒙古自治区，鄂尔多斯市，杭锦旗', 150625, 392);
INSERT INTO `sys_area` VALUES (8604965, 86, 8604631, 3, '达拉特旗', '内蒙古自治区，鄂尔多斯市，达拉特旗', 150621, 393);
INSERT INTO `sys_area` VALUES (8604966, 86, 8604631, 3, '乌审旗', '内蒙古自治区，鄂尔多斯市，乌审旗', 150626, 394);
INSERT INTO `sys_area` VALUES (8604967, 86, 8604631, 3, '鄂托克前旗', '内蒙古自治区，鄂尔多斯市，鄂托克前旗', 150623, 395);
INSERT INTO `sys_area` VALUES (8604968, 86, 8604631, 3, '康巴什区', '内蒙古自治区，鄂尔多斯市，康巴什区', 150603, 396);
INSERT INTO `sys_area` VALUES (8604969, 86, 8604631, 3, '东胜区', '内蒙古自治区，鄂尔多斯市，东胜区', 150602, 397);
INSERT INTO `sys_area` VALUES (8604970, 86, 8604631, 3, '伊金霍洛旗', '内蒙古自治区，鄂尔多斯市，伊金霍洛旗', 150627, 398);
INSERT INTO `sys_area` VALUES (8605056, 86, 8604632, 3, '土默特右旗', '内蒙古自治区，包头市，土默特右旗', 150221, 399);
INSERT INTO `sys_area` VALUES (8605057, 86, 8604632, 3, '达尔罕茂明安联合旗', '内蒙古自治区，包头市，达尔罕茂明安联合旗', 150223, 400);
INSERT INTO `sys_area` VALUES (8605058, 86, 8604632, 3, '白云鄂博矿区', '内蒙古自治区，包头市，白云鄂博矿区', 150206, 401);
INSERT INTO `sys_area` VALUES (8605059, 86, 8604632, 3, '东河区', '内蒙古自治区，包头市，东河区', 150202, 402);
INSERT INTO `sys_area` VALUES (8605060, 86, 8604632, 3, '九原区', '内蒙古自治区，包头市，九原区', 150207, 403);
INSERT INTO `sys_area` VALUES (8605061, 86, 8604632, 3, '固阳县', '内蒙古自治区，包头市，固阳县', 150222, 404);
INSERT INTO `sys_area` VALUES (8605062, 86, 8604632, 3, '昆都仑区', '内蒙古自治区，包头市，昆都仑区', 150203, 405);
INSERT INTO `sys_area` VALUES (8605063, 86, 8604632, 3, '石拐区', '内蒙古自治区，包头市，石拐区', 150205, 406);
INSERT INTO `sys_area` VALUES (8605064, 86, 8604632, 3, '青山区', '内蒙古自治区，包头市，青山区', 150204, 407);
INSERT INTO `sys_area` VALUES (8605156, 86, 8604633, 3, '和林格尔县', '内蒙古自治区，呼和浩特市，和林格尔县', 150123, 408);
INSERT INTO `sys_area` VALUES (8605157, 86, 8604633, 3, '玉泉区', '内蒙古自治区，呼和浩特市，玉泉区', 150104, 409);
INSERT INTO `sys_area` VALUES (8605158, 86, 8604633, 3, '清水河县', '内蒙古自治区，呼和浩特市，清水河县', 150124, 410);
INSERT INTO `sys_area` VALUES (8605159, 86, 8604633, 3, '回民区', '内蒙古自治区，呼和浩特市，回民区', 150103, 411);
INSERT INTO `sys_area` VALUES (8605160, 86, 8604633, 3, '托克托县', '内蒙古自治区，呼和浩特市，托克托县', 150122, 412);
INSERT INTO `sys_area` VALUES (8605161, 86, 8604633, 3, '武川县', '内蒙古自治区，呼和浩特市，武川县', 150125, 413);
INSERT INTO `sys_area` VALUES (8605162, 86, 8604633, 3, '土默特左旗', '内蒙古自治区，呼和浩特市，土默特左旗', 150121, 414);
INSERT INTO `sys_area` VALUES (8605163, 86, 8604633, 3, '新城区', '内蒙古自治区，呼和浩特市，新城区', 150102, 415);
INSERT INTO `sys_area` VALUES (8605164, 86, 8604633, 3, '赛罕区', '内蒙古自治区，呼和浩特市，赛罕区', 150105, 416);
INSERT INTO `sys_area` VALUES (8605254, 86, 8604634, 3, '霍林郭勒市', '内蒙古自治区，通辽市，霍林郭勒市', 150581, 417);
INSERT INTO `sys_area` VALUES (8605255, 86, 8604634, 3, '扎鲁特旗', '内蒙古自治区，通辽市，扎鲁特旗', 150526, 418);
INSERT INTO `sys_area` VALUES (8605256, 86, 8604634, 3, '科尔沁左翼中旗', '内蒙古自治区，通辽市，科尔沁左翼中旗', 150521, 419);
INSERT INTO `sys_area` VALUES (8605257, 86, 8604634, 3, '科尔沁区', '内蒙古自治区，通辽市，科尔沁区', 150502, 420);
INSERT INTO `sys_area` VALUES (8605258, 86, 8604634, 3, '奈曼旗', '内蒙古自治区，通辽市，奈曼旗', 150525, 421);
INSERT INTO `sys_area` VALUES (8605259, 86, 8604634, 3, '开鲁县', '内蒙古自治区，通辽市，开鲁县', 150523, 422);
INSERT INTO `sys_area` VALUES (8605260, 86, 8604634, 3, '库伦旗', '内蒙古自治区，通辽市，库伦旗', 150524, 423);
INSERT INTO `sys_area` VALUES (8605261, 86, 8604634, 3, '科尔沁左翼后旗', '内蒙古自治区，通辽市，科尔沁左翼后旗', 150522, 424);
INSERT INTO `sys_area` VALUES (8605403, 86, 8604635, 3, '阿鲁科尔沁旗', '内蒙古自治区，赤峰市，阿鲁科尔沁旗', 150421, 425);
INSERT INTO `sys_area` VALUES (8605404, 86, 8604635, 3, '林西县', '内蒙古自治区，赤峰市，林西县', 150424, 426);
INSERT INTO `sys_area` VALUES (8605405, 86, 8604635, 3, '巴林左旗', '内蒙古自治区，赤峰市，巴林左旗', 150422, 427);
INSERT INTO `sys_area` VALUES (8605406, 86, 8604635, 3, '巴林右旗', '内蒙古自治区，赤峰市，巴林右旗', 150423, 428);
INSERT INTO `sys_area` VALUES (8605407, 86, 8604635, 3, '克什克腾旗', '内蒙古自治区，赤峰市，克什克腾旗', 150425, 429);
INSERT INTO `sys_area` VALUES (8605408, 86, 8604635, 3, '翁牛特旗', '内蒙古自治区，赤峰市，翁牛特旗', 150426, 430);
INSERT INTO `sys_area` VALUES (8605409, 86, 8604635, 3, '松山区', '内蒙古自治区，赤峰市，松山区', 150404, 431);
INSERT INTO `sys_area` VALUES (8605410, 86, 8604635, 3, '宁城县', '内蒙古自治区，赤峰市，宁城县', 150429, 432);
INSERT INTO `sys_area` VALUES (8605411, 86, 8604635, 3, '红山区', '内蒙古自治区，赤峰市，红山区', 150402, 433);
INSERT INTO `sys_area` VALUES (8605412, 86, 8604635, 3, '元宝山区', '内蒙古自治区，赤峰市，元宝山区', 150403, 434);
INSERT INTO `sys_area` VALUES (8605413, 86, 8604635, 3, '喀喇沁旗', '内蒙古自治区，赤峰市，喀喇沁旗', 150428, 435);
INSERT INTO `sys_area` VALUES (8605414, 86, 8604635, 3, '敖汉旗', '内蒙古自治区，赤峰市，敖汉旗', 150430, 436);
INSERT INTO `sys_area` VALUES (8605598, 86, 8604636, 3, '额济纳旗', '内蒙古自治区，阿拉善盟，额济纳旗', 152923, 437);
INSERT INTO `sys_area` VALUES (8605599, 86, 8604636, 3, '阿拉善右旗', '内蒙古自治区，阿拉善盟，阿拉善右旗', 152922, 438);
INSERT INTO `sys_area` VALUES (8605600, 86, 8604636, 3, '阿拉善左旗', '内蒙古自治区，阿拉善盟，阿拉善左旗', 152921, 439);
INSERT INTO `sys_area` VALUES (8605635, 86, 8604637, 3, '阿尔山市', '内蒙古自治区，兴安盟，阿尔山市', 152202, 440);
INSERT INTO `sys_area` VALUES (8605636, 86, 8604637, 3, '扎赉特旗', '内蒙古自治区，兴安盟，扎赉特旗', 152223, 441);
INSERT INTO `sys_area` VALUES (8605637, 86, 8604637, 3, '突泉县', '内蒙古自治区，兴安盟，突泉县', 152224, 442);
INSERT INTO `sys_area` VALUES (8605638, 86, 8604637, 3, '科尔沁右翼中旗', '内蒙古自治区，兴安盟，科尔沁右翼中旗', 152222, 443);
INSERT INTO `sys_area` VALUES (8605639, 86, 8604637, 3, '乌兰浩特市', '内蒙古自治区，兴安盟，乌兰浩特市', 152201, 444);
INSERT INTO `sys_area` VALUES (8605640, 86, 8604637, 3, '科尔沁右翼前旗', '内蒙古自治区，兴安盟，科尔沁右翼前旗', 152221, 445);
INSERT INTO `sys_area` VALUES (8605731, 86, 8604638, 3, '东乌珠穆沁旗', '内蒙古自治区，锡林郭勒盟，东乌珠穆沁旗', 152525, 446);
INSERT INTO `sys_area` VALUES (8605732, 86, 8604638, 3, '阿巴嘎旗', '内蒙古自治区，锡林郭勒盟，阿巴嘎旗', 152522, 447);
INSERT INTO `sys_area` VALUES (8605733, 86, 8604638, 3, '西乌珠穆沁旗', '内蒙古自治区，锡林郭勒盟，西乌珠穆沁旗', 152526, 448);
INSERT INTO `sys_area` VALUES (8605734, 86, 8604638, 3, '锡林浩特市', '内蒙古自治区，锡林郭勒盟，锡林浩特市', 152502, 449);
INSERT INTO `sys_area` VALUES (8605735, 86, 8604638, 3, '苏尼特左旗', '内蒙古自治区，锡林郭勒盟，苏尼特左旗', 152523, 450);
INSERT INTO `sys_area` VALUES (8605736, 86, 8604638, 3, '苏尼特右旗', '内蒙古自治区，锡林郭勒盟，苏尼特右旗', 152524, 451);
INSERT INTO `sys_area` VALUES (8605737, 86, 8604638, 3, '二连浩特市', '内蒙古自治区，锡林郭勒盟，二连浩特市', 152501, 452);
INSERT INTO `sys_area` VALUES (8605738, 86, 8604638, 3, '镶黄旗', '内蒙古自治区，锡林郭勒盟，镶黄旗', 152528, 453);
INSERT INTO `sys_area` VALUES (8605739, 86, 8604638, 3, '正蓝旗', '内蒙古自治区，锡林郭勒盟，正蓝旗', 152530, 454);
INSERT INTO `sys_area` VALUES (8605740, 86, 8604638, 3, '正镶白旗', '内蒙古自治区，锡林郭勒盟，正镶白旗', 152529, 455);
INSERT INTO `sys_area` VALUES (8605741, 86, 8604638, 3, '多伦县', '内蒙古自治区，锡林郭勒盟，多伦县', 152531, 456);
INSERT INTO `sys_area` VALUES (8605742, 86, 8604638, 3, '太仆寺旗', '内蒙古自治区，锡林郭勒盟，太仆寺旗', 152527, 457);
INSERT INTO `sys_area` VALUES (8605846, 86, 8604639, 3, '四子王旗', '内蒙古自治区，乌兰察布市，四子王旗', 150929, 458);
INSERT INTO `sys_area` VALUES (8605847, 86, 8604639, 3, '察哈尔右翼后旗', '内蒙古自治区，乌兰察布市，察哈尔右翼后旗', 150928, 459);
INSERT INTO `sys_area` VALUES (8605848, 86, 8604639, 3, '商都县', '内蒙古自治区，乌兰察布市，商都县', 150923, 460);
INSERT INTO `sys_area` VALUES (8605849, 86, 8604639, 3, '察哈尔右翼中旗', '内蒙古自治区，乌兰察布市，察哈尔右翼中旗', 150927, 461);
INSERT INTO `sys_area` VALUES (8605850, 86, 8604639, 3, '化德县', '内蒙古自治区，乌兰察布市，化德县', 150922, 462);
INSERT INTO `sys_area` VALUES (8605851, 86, 8604639, 3, '兴和县', '内蒙古自治区，乌兰察布市，兴和县', 150924, 463);
INSERT INTO `sys_area` VALUES (8605852, 86, 8604639, 3, '卓资县', '内蒙古自治区，乌兰察布市，卓资县', 150921, 464);
INSERT INTO `sys_area` VALUES (8605853, 86, 8604639, 3, '凉城县', '内蒙古自治区，乌兰察布市，凉城县', 150925, 465);
INSERT INTO `sys_area` VALUES (8605854, 86, 8604639, 3, '丰镇市', '内蒙古自治区，乌兰察布市，丰镇市', 150981, 466);
INSERT INTO `sys_area` VALUES (8605855, 86, 8604639, 3, '集宁区', '内蒙古自治区，乌兰察布市，集宁区', 150902, 467);
INSERT INTO `sys_area` VALUES (8605856, 86, 8604639, 3, '察哈尔右翼前旗', '内蒙古自治区，乌兰察布市，察哈尔右翼前旗', 150926, 468);
INSERT INTO `sys_area` VALUES (8605971, 86, 8600004, 2, '大兴安岭地区', '黑龙江省，大兴安岭地区', 232700, 469);
INSERT INTO `sys_area` VALUES (8605972, 86, 8600004, 2, '七台河市', '黑龙江省，七台河市', 230900, 470);
INSERT INTO `sys_area` VALUES (8605973, 86, 8600004, 2, '大庆市', '黑龙江省，大庆市', 230600, 471);
INSERT INTO `sys_area` VALUES (8605974, 86, 8600004, 2, '鹤岗市', '黑龙江省，鹤岗市', 230400, 472);
INSERT INTO `sys_area` VALUES (8605975, 86, 8600004, 2, '伊春市', '黑龙江省，伊春市', 230700, 473);
INSERT INTO `sys_area` VALUES (8605976, 86, 8600004, 2, '绥化市', '黑龙江省，绥化市', 231200, 474);
INSERT INTO `sys_area` VALUES (8605977, 86, 8600004, 2, '佳木斯市', '黑龙江省，佳木斯市', 230800, 475);
INSERT INTO `sys_area` VALUES (8605978, 86, 8600004, 2, '齐齐哈尔市', '黑龙江省，齐齐哈尔市', 230200, 476);
INSERT INTO `sys_area` VALUES (8605979, 86, 8600004, 2, '鸡西市', '黑龙江省，鸡西市', 230300, 477);
INSERT INTO `sys_area` VALUES (8605980, 86, 8600004, 2, '双鸭山市', '黑龙江省，双鸭山市', 230500, 478);
INSERT INTO `sys_area` VALUES (8605981, 86, 8600004, 2, '哈尔滨市', '黑龙江省，哈尔滨市', 230100, 479);
INSERT INTO `sys_area` VALUES (8605982, 86, 8600004, 2, '黑河市', '黑龙江省，黑河市', 231100, 480);
INSERT INTO `sys_area` VALUES (8605983, 86, 8600004, 2, '牡丹江市', '黑龙江省，牡丹江市', 231000, 481);
INSERT INTO `sys_area` VALUES (8605984, 86, 8605971, 3, '漠河县', '黑龙江省，大兴安岭地区，漠河县', 232723, 482);
INSERT INTO `sys_area` VALUES (8605985, 86, 8605971, 3, '呼玛县', '黑龙江省，大兴安岭地区，呼玛县', 232721, 483);
INSERT INTO `sys_area` VALUES (8605986, 86, 8605971, 3, '塔河县', '黑龙江省，大兴安岭地区，塔河县', 232722, 484);
INSERT INTO `sys_area` VALUES (8605987, 86, 8605971, 3, '加格达奇区', '黑龙江省，大兴安岭地区，加格达奇区', 232701, 485);
INSERT INTO `sys_area` VALUES (8606032, 86, 8605972, 3, '勃利县', '黑龙江省，七台河市，勃利县', 230921, 486);
INSERT INTO `sys_area` VALUES (8606033, 86, 8605972, 3, '茄子河区', '黑龙江省，七台河市，茄子河区', 230904, 487);
INSERT INTO `sys_area` VALUES (8606034, 86, 8605972, 3, '新兴区', '黑龙江省，七台河市，新兴区', 230902, 488);
INSERT INTO `sys_area` VALUES (8606035, 86, 8605972, 3, '桃山区', '黑龙江省，七台河市，桃山区', 230903, 489);
INSERT INTO `sys_area` VALUES (8606093, 86, 8605973, 3, '让胡路区', '黑龙江省，大庆市，让胡路区', 230604, 490);
INSERT INTO `sys_area` VALUES (8606094, 86, 8605973, 3, '红岗区', '黑龙江省，大庆市，红岗区', 230605, 491);
INSERT INTO `sys_area` VALUES (8606095, 86, 8605973, 3, '肇源县', '黑龙江省，大庆市，肇源县', 230622, 492);
INSERT INTO `sys_area` VALUES (8606096, 86, 8605973, 3, '大同区', '黑龙江省，大庆市，大同区', 230606, 493);
INSERT INTO `sys_area` VALUES (8606097, 86, 8605973, 3, '林甸县', '黑龙江省，大庆市，林甸县', 230623, 494);
INSERT INTO `sys_area` VALUES (8606098, 86, 8605973, 3, '杜尔伯特蒙古族自治县', '黑龙江省，大庆市，杜尔伯特蒙古族自治县', 230624, 495);
INSERT INTO `sys_area` VALUES (8606099, 86, 8605973, 3, '肇州县', '黑龙江省，大庆市，肇州县', 230621, 496);
INSERT INTO `sys_area` VALUES (8606100, 86, 8605973, 3, '龙凤区', '黑龙江省，大庆市，龙凤区', 230603, 497);
INSERT INTO `sys_area` VALUES (8606101, 86, 8605973, 3, '萨尔图区', '黑龙江省，大庆市，萨尔图区', 230602, 498);
INSERT INTO `sys_area` VALUES (8606213, 86, 8605974, 3, '萝北县', '黑龙江省，鹤岗市，萝北县', 230421, 499);
INSERT INTO `sys_area` VALUES (8606214, 86, 8605974, 3, '绥滨县', '黑龙江省，鹤岗市，绥滨县', 230422, 500);
INSERT INTO `sys_area` VALUES (8606215, 86, 8605974, 3, '工农区', '黑龙江省，鹤岗市，工农区', 230403, 501);
INSERT INTO `sys_area` VALUES (8606216, 86, 8605974, 3, '向阳区', '黑龙江省，鹤岗市，向阳区', 230402, 502);
INSERT INTO `sys_area` VALUES (8606217, 86, 8605974, 3, '东山区', '黑龙江省，鹤岗市，东山区', 230406, 503);
INSERT INTO `sys_area` VALUES (8606218, 86, 8605974, 3, '兴山区', '黑龙江省，鹤岗市，兴山区', 230407, 504);
INSERT INTO `sys_area` VALUES (8606219, 86, 8605974, 3, '南山区', '黑龙江省，鹤岗市，南山区', 230404, 505);
INSERT INTO `sys_area` VALUES (8606220, 86, 8605974, 3, '兴安区', '黑龙江省，鹤岗市，兴安区', 230405, 506);
INSERT INTO `sys_area` VALUES (8606293, 86, 8605975, 3, '乌伊岭区', '黑龙江省，伊春市，乌伊岭区', 230714, 507);
INSERT INTO `sys_area` VALUES (8606294, 86, 8605975, 3, '嘉荫县', '黑龙江省，伊春市，嘉荫县', 230722, 508);
INSERT INTO `sys_area` VALUES (8606295, 86, 8605975, 3, '友好区', '黑龙江省，伊春市，友好区', 230704, 509);
INSERT INTO `sys_area` VALUES (8606296, 86, 8605975, 3, '红星区', '黑龙江省，伊春市，红星区', 230715, 510);
INSERT INTO `sys_area` VALUES (8606297, 86, 8605975, 3, '五营区', '黑龙江省，伊春市，五营区', 230710, 511);
INSERT INTO `sys_area` VALUES (8606298, 86, 8605975, 3, '汤旺河区', '黑龙江省，伊春市，汤旺河区', 230712, 512);
INSERT INTO `sys_area` VALUES (8606299, 86, 8605975, 3, '新青区', '黑龙江省，伊春市，新青区', 230707, 513);
INSERT INTO `sys_area` VALUES (8606300, 86, 8605975, 3, '上甘岭区', '黑龙江省，伊春市，上甘岭区', 230716, 514);
INSERT INTO `sys_area` VALUES (8606301, 86, 8605975, 3, '翠峦区', '黑龙江省，伊春市，翠峦区', 230706, 515);
INSERT INTO `sys_area` VALUES (8606302, 86, 8605975, 3, '美溪区', '黑龙江省，伊春市，美溪区', 230708, 516);
INSERT INTO `sys_area` VALUES (8606303, 86, 8605975, 3, '乌马河区', '黑龙江省，伊春市，乌马河区', 230711, 517);
INSERT INTO `sys_area` VALUES (8606304, 86, 8605975, 3, '伊春区', '黑龙江省，伊春市，伊春区', 230702, 518);
INSERT INTO `sys_area` VALUES (8606305, 86, 8605975, 3, '金山屯区', '黑龙江省，伊春市，金山屯区', 230709, 519);
INSERT INTO `sys_area` VALUES (8606306, 86, 8605975, 3, '铁力市', '黑龙江省，伊春市，铁力市', 230781, 520);
INSERT INTO `sys_area` VALUES (8606307, 86, 8605975, 3, '西林区', '黑龙江省，伊春市，西林区', 230705, 521);
INSERT INTO `sys_area` VALUES (8606308, 86, 8605975, 3, '带岭区', '黑龙江省，伊春市，带岭区', 230713, 522);
INSERT INTO `sys_area` VALUES (8606309, 86, 8605975, 3, '南岔区', '黑龙江省，伊春市，南岔区', 230703, 523);
INSERT INTO `sys_area` VALUES (8606502, 86, 8605976, 3, '绥棱县', '黑龙江省，绥化市，绥棱县', 231226, 524);
INSERT INTO `sys_area` VALUES (8606503, 86, 8605976, 3, '海伦市', '黑龙江省，绥化市，海伦市', 231283, 525);
INSERT INTO `sys_area` VALUES (8606504, 86, 8605976, 3, '庆安县', '黑龙江省，绥化市，庆安县', 231224, 526);
INSERT INTO `sys_area` VALUES (8606505, 86, 8605976, 3, '北林区', '黑龙江省，绥化市，北林区', 231202, 527);
INSERT INTO `sys_area` VALUES (8606506, 86, 8605976, 3, '青冈县', '黑龙江省，绥化市，青冈县', 231223, 528);
INSERT INTO `sys_area` VALUES (8606507, 86, 8605976, 3, '望奎县', '黑龙江省，绥化市，望奎县', 231221, 529);
INSERT INTO `sys_area` VALUES (8606508, 86, 8605976, 3, '安达市', '黑龙江省，绥化市，安达市', 231281, 530);
INSERT INTO `sys_area` VALUES (8606509, 86, 8605976, 3, '明水县', '黑龙江省，绥化市，明水县', 231225, 531);
INSERT INTO `sys_area` VALUES (8606510, 86, 8605976, 3, '肇东市', '黑龙江省，绥化市，肇东市', 231282, 532);
INSERT INTO `sys_area` VALUES (8606511, 86, 8605976, 3, '兰西县', '黑龙江省，绥化市，兰西县', 231222, 533);
INSERT INTO `sys_area` VALUES (8606729, 86, 8605977, 3, '抚远市', '黑龙江省，佳木斯市，抚远市', 230883, 534);
INSERT INTO `sys_area` VALUES (8606730, 86, 8605977, 3, '同江市', '黑龙江省，佳木斯市，同江市', 230881, 535);
INSERT INTO `sys_area` VALUES (8606731, 86, 8605977, 3, '桦川县', '黑龙江省，佳木斯市，桦川县', 230826, 536);
INSERT INTO `sys_area` VALUES (8606732, 86, 8605977, 3, '桦南县', '黑龙江省，佳木斯市，桦南县', 230822, 537);
INSERT INTO `sys_area` VALUES (8606733, 86, 8605977, 3, '汤原县', '黑龙江省，佳木斯市，汤原县', 230828, 538);
INSERT INTO `sys_area` VALUES (8606734, 86, 8605977, 3, '富锦市', '黑龙江省，佳木斯市，富锦市', 230882, 539);
INSERT INTO `sys_area` VALUES (8606735, 86, 8605977, 3, '东风区', '黑龙江省，佳木斯市，东风区', 230805, 540);
INSERT INTO `sys_area` VALUES (8606736, 86, 8605977, 3, '向阳区', '黑龙江省，佳木斯市，向阳区', 230803, 541);
INSERT INTO `sys_area` VALUES (8606737, 86, 8605977, 3, '前进区', '黑龙江省，佳木斯市，前进区', 230804, 542);
INSERT INTO `sys_area` VALUES (8606738, 86, 8605977, 3, '郊区', '黑龙江省，佳木斯市，郊区', 230811, 543);
INSERT INTO `sys_area` VALUES (8606870, 86, 8605978, 3, '讷河市', '黑龙江省，齐齐哈尔市，讷河市', 230281, 544);
INSERT INTO `sys_area` VALUES (8606871, 86, 8605978, 3, '克山县', '黑龙江省，齐齐哈尔市，克山县', 230229, 545);
INSERT INTO `sys_area` VALUES (8606872, 86, 8605978, 3, '甘南县', '黑龙江省，齐齐哈尔市，甘南县', 230225, 546);
INSERT INTO `sys_area` VALUES (8606873, 86, 8605978, 3, '克东县', '黑龙江省，齐齐哈尔市，克东县', 230230, 547);
INSERT INTO `sys_area` VALUES (8606874, 86, 8605978, 3, '富裕县', '黑龙江省，齐齐哈尔市，富裕县', 230227, 548);
INSERT INTO `sys_area` VALUES (8606875, 86, 8605978, 3, '依安县', '黑龙江省，齐齐哈尔市，依安县', 230223, 549);
INSERT INTO `sys_area` VALUES (8606876, 86, 8605978, 3, '梅里斯达斡尔族区', '黑龙江省，齐齐哈尔市，梅里斯达斡尔族区', 230208, 550);
INSERT INTO `sys_area` VALUES (8606877, 86, 8605978, 3, '龙江县', '黑龙江省，齐齐哈尔市，龙江县', 230221, 551);
INSERT INTO `sys_area` VALUES (8606878, 86, 8605978, 3, '碾子山区', '黑龙江省，齐齐哈尔市，碾子山区', 230207, 552);
INSERT INTO `sys_area` VALUES (8606879, 86, 8605978, 3, '龙沙区', '黑龙江省，齐齐哈尔市，龙沙区', 230202, 553);
INSERT INTO `sys_area` VALUES (8606880, 86, 8605978, 3, '富拉尔基区', '黑龙江省，齐齐哈尔市，富拉尔基区', 230206, 554);
INSERT INTO `sys_area` VALUES (8606881, 86, 8605978, 3, '铁锋区', '黑龙江省，齐齐哈尔市，铁锋区', 230204, 555);
INSERT INTO `sys_area` VALUES (8606882, 86, 8605978, 3, '昂昂溪区', '黑龙江省，齐齐哈尔市，昂昂溪区', 230205, 556);
INSERT INTO `sys_area` VALUES (8606883, 86, 8605978, 3, '建华区', '黑龙江省，齐齐哈尔市，建华区', 230203, 557);
INSERT INTO `sys_area` VALUES (8606884, 86, 8605978, 3, '泰来县', '黑龙江省，齐齐哈尔市，泰来县', 230224, 558);
INSERT INTO `sys_area` VALUES (8606885, 86, 8605978, 3, '拜泉县', '黑龙江省，齐齐哈尔市，拜泉县', 230231, 559);
INSERT INTO `sys_area` VALUES (8607104, 86, 8605979, 3, '虎林市', '黑龙江省，鸡西市，虎林市', 230381, 560);
INSERT INTO `sys_area` VALUES (8607105, 86, 8605979, 3, '城子河区', '黑龙江省，鸡西市，城子河区', 230306, 561);
INSERT INTO `sys_area` VALUES (8607106, 86, 8605979, 3, '滴道区', '黑龙江省，鸡西市，滴道区', 230304, 562);
INSERT INTO `sys_area` VALUES (8607107, 86, 8605979, 3, '麻山区', '黑龙江省，鸡西市，麻山区', 230307, 563);
INSERT INTO `sys_area` VALUES (8607108, 86, 8605979, 3, '鸡冠区', '黑龙江省，鸡西市，鸡冠区', 230302, 564);
INSERT INTO `sys_area` VALUES (8607109, 86, 8605979, 3, '恒山区', '黑龙江省，鸡西市，恒山区', 230303, 565);
INSERT INTO `sys_area` VALUES (8607110, 86, 8605979, 3, '梨树区', '黑龙江省，鸡西市，梨树区', 230305, 566);
INSERT INTO `sys_area` VALUES (8607111, 86, 8605979, 3, '密山市', '黑龙江省，鸡西市，密山市', 230382, 567);
INSERT INTO `sys_area` VALUES (8607112, 86, 8605979, 3, '鸡东县', '黑龙江省，鸡西市，鸡东县', 230321, 568);
INSERT INTO `sys_area` VALUES (8607215, 86, 8605980, 3, '饶河县', '黑龙江省，双鸭山市，饶河县', 230524, 569);
INSERT INTO `sys_area` VALUES (8607216, 86, 8605980, 3, '四方台区', '黑龙江省，双鸭山市，四方台区', 230505, 570);
INSERT INTO `sys_area` VALUES (8607217, 86, 8605980, 3, '友谊县', '黑龙江省，双鸭山市，友谊县', 230522, 571);
INSERT INTO `sys_area` VALUES (8607218, 86, 8605980, 3, '尖山区', '黑龙江省，双鸭山市，尖山区', 230502, 572);
INSERT INTO `sys_area` VALUES (8607219, 86, 8605980, 3, '集贤县', '黑龙江省，双鸭山市，集贤县', 230521, 573);
INSERT INTO `sys_area` VALUES (8607220, 86, 8605980, 3, '岭东区', '黑龙江省，双鸭山市，岭东区', 230503, 574);
INSERT INTO `sys_area` VALUES (8607221, 86, 8605980, 3, '宝山区', '黑龙江省，双鸭山市，宝山区', 230506, 575);
INSERT INTO `sys_area` VALUES (8607222, 86, 8605980, 3, '宝清县', '黑龙江省，双鸭山市，宝清县', 230523, 576);
INSERT INTO `sys_area` VALUES (8607332, 86, 8605981, 3, '巴彦县', '黑龙江省，哈尔滨市，巴彦县', 230126, 577);
INSERT INTO `sys_area` VALUES (8607333, 86, 8605981, 3, '依兰县', '黑龙江省，哈尔滨市，依兰县', 230123, 578);
INSERT INTO `sys_area` VALUES (8607334, 86, 8605981, 3, '通河县', '黑龙江省，哈尔滨市，通河县', 230128, 579);
INSERT INTO `sys_area` VALUES (8607335, 86, 8605981, 3, '呼兰区', '黑龙江省，哈尔滨市，呼兰区', 230111, 580);
INSERT INTO `sys_area` VALUES (8607336, 86, 8605981, 3, '木兰县', '黑龙江省，哈尔滨市，木兰县', 230127, 581);
INSERT INTO `sys_area` VALUES (8607337, 86, 8605981, 3, '方正县', '黑龙江省，哈尔滨市，方正县', 230124, 582);
INSERT INTO `sys_area` VALUES (8607338, 86, 8605981, 3, '延寿县', '黑龙江省，哈尔滨市，延寿县', 230129, 583);
INSERT INTO `sys_area` VALUES (8607339, 86, 8605981, 3, '宾县', '黑龙江省，哈尔滨市，宾县', 230125, 584);
INSERT INTO `sys_area` VALUES (8607340, 86, 8605981, 3, '双城区', '黑龙江省，哈尔滨市，双城区', 230113, 585);
INSERT INTO `sys_area` VALUES (8607341, 86, 8605981, 3, '平房区', '黑龙江省，哈尔滨市，平房区', 230108, 586);
INSERT INTO `sys_area` VALUES (8607342, 86, 8605981, 3, '尚志市', '黑龙江省，哈尔滨市，尚志市', 230183, 587);
INSERT INTO `sys_area` VALUES (8607343, 86, 8605981, 3, '香坊区', '黑龙江省，哈尔滨市，香坊区', 230110, 588);
INSERT INTO `sys_area` VALUES (8607344, 86, 8605981, 3, '道里区', '黑龙江省，哈尔滨市，道里区', 230102, 589);
INSERT INTO `sys_area` VALUES (8607345, 86, 8605981, 3, '松北区', '黑龙江省，哈尔滨市，松北区', 230109, 590);
INSERT INTO `sys_area` VALUES (8607346, 86, 8605981, 3, '五常市', '黑龙江省，哈尔滨市，五常市', 230184, 591);
INSERT INTO `sys_area` VALUES (8607347, 86, 8605981, 3, '南岗区', '黑龙江省，哈尔滨市，南岗区', 230103, 592);
INSERT INTO `sys_area` VALUES (8607348, 86, 8605981, 3, '道外区', '黑龙江省，哈尔滨市，道外区', 230104, 593);
INSERT INTO `sys_area` VALUES (8607349, 86, 8605981, 3, '阿城区', '黑龙江省，哈尔滨市，阿城区', 230112, 594);
INSERT INTO `sys_area` VALUES (8607668, 86, 8605982, 3, '逊克县', '黑龙江省，黑河市，逊克县', 231123, 595);
INSERT INTO `sys_area` VALUES (8607669, 86, 8605982, 3, '孙吴县', '黑龙江省，黑河市，孙吴县', 231124, 596);
INSERT INTO `sys_area` VALUES (8607670, 86, 8605982, 3, '嫩江县', '黑龙江省，黑河市，嫩江县', 231121, 597);
INSERT INTO `sys_area` VALUES (8607671, 86, 8605982, 3, '爱辉区', '黑龙江省，黑河市，爱辉区', 231102, 598);
INSERT INTO `sys_area` VALUES (8607672, 86, 8605982, 3, '五大连池市', '黑龙江省，黑河市，五大连池市', 231182, 599);
INSERT INTO `sys_area` VALUES (8607673, 86, 8605982, 3, '北安市', '黑龙江省，黑河市，北安市', 231181, 600);
INSERT INTO `sys_area` VALUES (8607837, 86, 8605983, 3, '东安区', '黑龙江省，牡丹江市，东安区', 231002, 601);
INSERT INTO `sys_area` VALUES (8607838, 86, 8605983, 3, '爱民区', '黑龙江省，牡丹江市，爱民区', 231004, 602);
INSERT INTO `sys_area` VALUES (8607839, 86, 8605983, 3, '绥芬河市', '黑龙江省，牡丹江市，绥芬河市', 231081, 603);
INSERT INTO `sys_area` VALUES (8607840, 86, 8605983, 3, '东宁市', '黑龙江省，牡丹江市，东宁市', 231086, 604);
INSERT INTO `sys_area` VALUES (8607841, 86, 8605983, 3, '宁安市', '黑龙江省，牡丹江市，宁安市', 231084, 605);
INSERT INTO `sys_area` VALUES (8607842, 86, 8605983, 3, '穆棱市', '黑龙江省，牡丹江市，穆棱市', 231085, 606);
INSERT INTO `sys_area` VALUES (8607843, 86, 8605983, 3, '阳明区', '黑龙江省，牡丹江市，阳明区', 231003, 607);
INSERT INTO `sys_area` VALUES (8607844, 86, 8605983, 3, '林口县', '黑龙江省，牡丹江市，林口县', 231025, 608);
INSERT INTO `sys_area` VALUES (8607845, 86, 8605983, 3, '西安区', '黑龙江省，牡丹江市，西安区', 231005, 609);
INSERT INTO `sys_area` VALUES (8607846, 86, 8605983, 3, '海林市', '黑龙江省，牡丹江市，海林市', 231083, 610);
INSERT INTO `sys_area` VALUES (8607937, 86, 8600005, 3, '北屯市', '新疆维吾尔自治区，北屯市', 659005, 611);
INSERT INTO `sys_area` VALUES (8607938, 86, 8600005, 3, '双河市', '新疆维吾尔自治区，双河市', 659007, 612);
INSERT INTO `sys_area` VALUES (8607939, 86, 8600005, 3, '铁门关市', '新疆维吾尔自治区，铁门关市', 659006, 613);
INSERT INTO `sys_area` VALUES (8607940, 86, 8600005, 2, '博尔塔拉蒙古自治州', '新疆维吾尔自治区，博尔塔拉蒙古自治州', 652700, 614);
INSERT INTO `sys_area` VALUES (8607941, 86, 8600005, 2, '和田地区', '新疆维吾尔自治区，和田地区', 653200, 615);
INSERT INTO `sys_area` VALUES (8607942, 86, 8600005, 2, '塔城地区', '新疆维吾尔自治区，塔城地区', 654200, 616);
INSERT INTO `sys_area` VALUES (8607943, 86, 8600005, 3, '昆玉市', '新疆维吾尔自治区，昆玉市', 659009, 617);
INSERT INTO `sys_area` VALUES (8607944, 86, 8600005, 3, '可克达拉市', '新疆维吾尔自治区，可克达拉市', 659008, 618);
INSERT INTO `sys_area` VALUES (8607945, 86, 8600005, 3, '石河子市', '新疆维吾尔自治区，石河子市', 659001, 619);
INSERT INTO `sys_area` VALUES (8607946, 86, 8600005, 2, '阿勒泰地区', '新疆维吾尔自治区，阿勒泰地区', 654300, 620);
INSERT INTO `sys_area` VALUES (8607947, 86, 8600005, 2, '克拉玛依市', '新疆维吾尔自治区，克拉玛依市', 650200, 621);
INSERT INTO `sys_area` VALUES (8607948, 86, 8600005, 2, '昌吉回族自治州', '新疆维吾尔自治区，昌吉回族自治州', 652300, 622);
INSERT INTO `sys_area` VALUES (8607949, 86, 8600005, 3, '五家渠市', '新疆维吾尔自治区，五家渠市', 659004, 623);
INSERT INTO `sys_area` VALUES (8607950, 86, 8600005, 2, '巴音郭楞蒙古自治州', '新疆维吾尔自治区，巴音郭楞蒙古自治州', 652800, 624);
INSERT INTO `sys_area` VALUES (8607951, 86, 8600005, 3, '阿拉尔市', '新疆维吾尔自治区，阿拉尔市', 659002, 625);
INSERT INTO `sys_area` VALUES (8607952, 86, 8600005, 3, '图木舒克市', '新疆维吾尔自治区，图木舒克市', 659003, 626);
INSERT INTO `sys_area` VALUES (8607953, 86, 8600005, 2, '喀什地区', '新疆维吾尔自治区，喀什地区', 653100, 627);
INSERT INTO `sys_area` VALUES (8607954, 86, 8600005, 2, '伊犁哈萨克自治州', '新疆维吾尔自治区，伊犁哈萨克自治州', 654000, 628);
INSERT INTO `sys_area` VALUES (8607955, 86, 8600005, 2, '乌鲁木齐市', '新疆维吾尔自治区，乌鲁木齐市', 650100, 629);
INSERT INTO `sys_area` VALUES (8607956, 86, 8600005, 2, '阿克苏地区', '新疆维吾尔自治区，阿克苏地区', 652900, 630);
INSERT INTO `sys_area` VALUES (8607957, 86, 8600005, 2, '克孜勒苏柯尔克孜自治州', '新疆维吾尔自治区，克孜勒苏柯尔克孜自治州', 653000, 631);
INSERT INTO `sys_area` VALUES (8607958, 86, 8600005, 2, '哈密市', '新疆维吾尔自治区，哈密市', 650500, 632);
INSERT INTO `sys_area` VALUES (8607959, 86, 8600005, 2, '吐鲁番市', '新疆维吾尔自治区，吐鲁番市', 650400, 633);
INSERT INTO `sys_area` VALUES (8607971, 86, 8607940, 3, '温泉县', '新疆维吾尔自治区，博尔塔拉蒙古自治州，温泉县', 652723, 634);
INSERT INTO `sys_area` VALUES (8607972, 86, 8607940, 3, '阿拉山口市', '新疆维吾尔自治区，博尔塔拉蒙古自治州，阿拉山口市', 652702, 635);
INSERT INTO `sys_area` VALUES (8607973, 86, 8607940, 3, '博乐市', '新疆维吾尔自治区，博尔塔拉蒙古自治州，博乐市', 652701, 636);
INSERT INTO `sys_area` VALUES (8607974, 86, 8607940, 3, '精河县', '新疆维吾尔自治区，博尔塔拉蒙古自治州，精河县', 652722, 637);
INSERT INTO `sys_area` VALUES (8608008, 86, 8607941, 3, '民丰县', '新疆维吾尔自治区，和田地区，民丰县', 653227, 638);
INSERT INTO `sys_area` VALUES (8608009, 86, 8607941, 3, '于田县', '新疆维吾尔自治区，和田地区，于田县', 653226, 639);
INSERT INTO `sys_area` VALUES (8608010, 86, 8607941, 3, '和田市', '新疆维吾尔自治区，和田地区，和田市', 653201, 640);
INSERT INTO `sys_area` VALUES (8608011, 86, 8607941, 3, '洛浦县', '新疆维吾尔自治区，和田地区，洛浦县', 653224, 641);
INSERT INTO `sys_area` VALUES (8608012, 86, 8607941, 3, '皮山县', '新疆维吾尔自治区，和田地区，皮山县', 653223, 642);
INSERT INTO `sys_area` VALUES (8608013, 86, 8607941, 3, '和田县', '新疆维吾尔自治区，和田地区，和田县', 653221, 643);
INSERT INTO `sys_area` VALUES (8608014, 86, 8607941, 3, '墨玉县', '新疆维吾尔自治区，和田地区，墨玉县', 653222, 644);
INSERT INTO `sys_area` VALUES (8608015, 86, 8607941, 3, '策勒县', '新疆维吾尔自治区，和田地区，策勒县', 653225, 645);
INSERT INTO `sys_area` VALUES (8608124, 86, 8607942, 3, '塔城市', '新疆维吾尔自治区，塔城地区，塔城市', 654201, 646);
INSERT INTO `sys_area` VALUES (8608125, 86, 8607942, 3, '托里县', '新疆维吾尔自治区，塔城地区，托里县', 654224, 647);
INSERT INTO `sys_area` VALUES (8608126, 86, 8607942, 3, '和布克赛尔蒙古自治县', '新疆维吾尔自治区，塔城地区，和布克赛尔蒙古自治县', 654226, 648);
INSERT INTO `sys_area` VALUES (8608127, 86, 8607942, 3, '裕民县', '新疆维吾尔自治区，塔城地区，裕民县', 654225, 649);
INSERT INTO `sys_area` VALUES (8608128, 86, 8607942, 3, '额敏县', '新疆维吾尔自治区，塔城地区，额敏县', 654221, 650);
INSERT INTO `sys_area` VALUES (8608129, 86, 8607942, 3, '乌苏市', '新疆维吾尔自治区，塔城地区，乌苏市', 654202, 651);
INSERT INTO `sys_area` VALUES (8608130, 86, 8607942, 3, '沙湾县', '新疆维吾尔自治区，塔城地区，沙湾县', 654223, 652);
INSERT INTO `sys_area` VALUES (8608281, 86, 8607946, 3, '哈巴河县', '新疆维吾尔自治区，阿勒泰地区，哈巴河县', 654324, 653);
INSERT INTO `sys_area` VALUES (8608282, 86, 8607946, 3, '吉木乃县', '新疆维吾尔自治区，阿勒泰地区，吉木乃县', 654326, 654);
INSERT INTO `sys_area` VALUES (8608283, 86, 8607946, 3, '布尔津县', '新疆维吾尔自治区，阿勒泰地区，布尔津县', 654321, 655);
INSERT INTO `sys_area` VALUES (8608284, 86, 8607946, 3, '富蕴县', '新疆维吾尔自治区，阿勒泰地区，富蕴县', 654322, 656);
INSERT INTO `sys_area` VALUES (8608285, 86, 8607946, 3, '青河县', '新疆维吾尔自治区，阿勒泰地区，青河县', 654325, 657);
INSERT INTO `sys_area` VALUES (8608286, 86, 8607946, 3, '阿勒泰市', '新疆维吾尔自治区，阿勒泰地区，阿勒泰市', 654301, 658);
INSERT INTO `sys_area` VALUES (8608287, 86, 8607946, 3, '福海县', '新疆维吾尔自治区，阿勒泰地区，福海县', 654323, 659);
INSERT INTO `sys_area` VALUES (8608353, 86, 8607947, 3, '乌尔禾区', '新疆维吾尔自治区，克拉玛依市，乌尔禾区', 650205, 660);
INSERT INTO `sys_area` VALUES (8608354, 86, 8607947, 3, '克拉玛依区', '新疆维吾尔自治区，克拉玛依市，克拉玛依区', 650203, 661);
INSERT INTO `sys_area` VALUES (8608355, 86, 8607947, 3, '白碱滩区', '新疆维吾尔自治区，克拉玛依市，白碱滩区', 650204, 662);
INSERT INTO `sys_area` VALUES (8608356, 86, 8607947, 3, '独山子区', '新疆维吾尔自治区，克拉玛依市，独山子区', 650202, 663);
INSERT INTO `sys_area` VALUES (8608375, 86, 8607948, 3, '奇台县', '新疆维吾尔自治区，昌吉回族自治州，奇台县', 652325, 664);
INSERT INTO `sys_area` VALUES (8608376, 86, 8607948, 3, '木垒哈萨克自治县', '新疆维吾尔自治区，昌吉回族自治州，木垒哈萨克自治县', 652328, 665);
INSERT INTO `sys_area` VALUES (8608377, 86, 8607948, 3, '玛纳斯县', '新疆维吾尔自治区，昌吉回族自治州，玛纳斯县', 652324, 666);
INSERT INTO `sys_area` VALUES (8608378, 86, 8607948, 3, '呼图壁县', '新疆维吾尔自治区，昌吉回族自治州，呼图壁县', 652323, 667);
INSERT INTO `sys_area` VALUES (8608379, 86, 8607948, 3, '阜康市', '新疆维吾尔自治区，昌吉回族自治州，阜康市', 652302, 668);
INSERT INTO `sys_area` VALUES (8608380, 86, 8607948, 3, '昌吉市', '新疆维吾尔自治区，昌吉回族自治州，昌吉市', 652301, 669);
INSERT INTO `sys_area` VALUES (8608381, 86, 8607948, 3, '吉木萨尔县', '新疆维吾尔自治区，昌吉回族自治州，吉木萨尔县', 652327, 670);
INSERT INTO `sys_area` VALUES (8608495, 86, 8607950, 3, '和硕县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，和硕县', 652828, 671);
INSERT INTO `sys_area` VALUES (8608496, 86, 8607950, 3, '和静县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，和静县', 652827, 672);
INSERT INTO `sys_area` VALUES (8608497, 86, 8607950, 3, '尉犁县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，尉犁县', 652823, 673);
INSERT INTO `sys_area` VALUES (8608498, 86, 8607950, 3, '若羌县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，若羌县', 652824, 674);
INSERT INTO `sys_area` VALUES (8608499, 86, 8607950, 3, '博湖县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，博湖县', 652829, 675);
INSERT INTO `sys_area` VALUES (8608500, 86, 8607950, 3, '焉耆回族自治县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，焉耆回族自治县', 652826, 676);
INSERT INTO `sys_area` VALUES (8608501, 86, 8607950, 3, '且末县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，且末县', 652825, 677);
INSERT INTO `sys_area` VALUES (8608502, 86, 8607950, 3, '库尔勒市', '新疆维吾尔自治区，巴音郭楞蒙古自治州，库尔勒市', 652801, 678);
INSERT INTO `sys_area` VALUES (8608503, 86, 8607950, 3, '轮台县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，轮台县', 652822, 679);
INSERT INTO `sys_area` VALUES (8608651, 86, 8607953, 3, '疏勒县', '新疆维吾尔自治区，喀什地区，疏勒县', 653122, 680);
INSERT INTO `sys_area` VALUES (8608652, 86, 8607953, 3, '伽师县', '新疆维吾尔自治区，喀什地区，伽师县', 653129, 681);
INSERT INTO `sys_area` VALUES (8608653, 86, 8607953, 3, '麦盖提县', '新疆维吾尔自治区，喀什地区，麦盖提县', 653127, 682);
INSERT INTO `sys_area` VALUES (8608654, 86, 8607953, 3, '叶城县', '新疆维吾尔自治区，喀什地区，叶城县', 653126, 683);
INSERT INTO `sys_area` VALUES (8608655, 86, 8607953, 3, '塔什库尔干塔吉克自治县', '新疆维吾尔自治区，喀什地区，塔什库尔干塔吉克自治县', 653131, 684);
INSERT INTO `sys_area` VALUES (8608656, 86, 8607953, 3, '岳普湖县', '新疆维吾尔自治区，喀什地区，岳普湖县', 653128, 685);
INSERT INTO `sys_area` VALUES (8608657, 86, 8607953, 3, '泽普县', '新疆维吾尔自治区，喀什地区，泽普县', 653124, 686);
INSERT INTO `sys_area` VALUES (8608658, 86, 8607953, 3, '莎车县', '新疆维吾尔自治区，喀什地区，莎车县', 653125, 687);
INSERT INTO `sys_area` VALUES (8608659, 86, 8607953, 3, '巴楚县', '新疆维吾尔自治区，喀什地区，巴楚县', 653130, 688);
INSERT INTO `sys_area` VALUES (8608660, 86, 8607953, 3, '英吉沙县', '新疆维吾尔自治区，喀什地区，英吉沙县', 653123, 689);
INSERT INTO `sys_area` VALUES (8608661, 86, 8607953, 3, '疏附县', '新疆维吾尔自治区，喀什地区，疏附县', 653121, 690);
INSERT INTO `sys_area` VALUES (8608662, 86, 8607953, 3, '喀什市', '新疆维吾尔自治区，喀什地区，喀什市', 653101, 691);
INSERT INTO `sys_area` VALUES (8608884, 86, 8607954, 3, '奎屯市', '新疆维吾尔自治区，伊犁哈萨克自治州，奎屯市', 654003, 692);
INSERT INTO `sys_area` VALUES (8608885, 86, 8607954, 3, '尼勒克县', '新疆维吾尔自治区，伊犁哈萨克自治州，尼勒克县', 654028, 693);
INSERT INTO `sys_area` VALUES (8608886, 86, 8607954, 3, '巩留县', '新疆维吾尔自治区，伊犁哈萨克自治州，巩留县', 654024, 694);
INSERT INTO `sys_area` VALUES (8608887, 86, 8607954, 3, '伊宁县', '新疆维吾尔自治区，伊犁哈萨克自治州，伊宁县', 654021, 695);
INSERT INTO `sys_area` VALUES (8608888, 86, 8607954, 3, '特克斯县', '新疆维吾尔自治区，伊犁哈萨克自治州，特克斯县', 654027, 696);
INSERT INTO `sys_area` VALUES (8608889, 86, 8607954, 3, '新源县', '新疆维吾尔自治区，伊犁哈萨克自治州，新源县', 654025, 697);
INSERT INTO `sys_area` VALUES (8608890, 86, 8607954, 3, '昭苏县', '新疆维吾尔自治区，伊犁哈萨克自治州，昭苏县', 654026, 698);
INSERT INTO `sys_area` VALUES (8608891, 86, 8607954, 3, '察布查尔锡伯自治县', '新疆维吾尔自治区，伊犁哈萨克自治州，察布查尔锡伯自治县', 654022, 699);
INSERT INTO `sys_area` VALUES (8608892, 86, 8607954, 3, '伊宁市', '新疆维吾尔自治区，伊犁哈萨克自治州，伊宁市', 654002, 700);
INSERT INTO `sys_area` VALUES (8608893, 86, 8607954, 3, '霍城县', '新疆维吾尔自治区，伊犁哈萨克自治州，霍城县', 654023, 701);
INSERT INTO `sys_area` VALUES (8608894, 86, 8607954, 3, '霍尔果斯市', '新疆维吾尔自治区，伊犁哈萨克自治州，霍尔果斯市', 654004, 702);
INSERT INTO `sys_area` VALUES (8609057, 86, 8607955, 3, '乌鲁木齐县', '新疆维吾尔自治区，乌鲁木齐市，乌鲁木齐县', 650121, 703);
INSERT INTO `sys_area` VALUES (8609058, 86, 8607955, 3, '达坂城区', '新疆维吾尔自治区，乌鲁木齐市，达坂城区', 650107, 704);
INSERT INTO `sys_area` VALUES (8609059, 86, 8607955, 3, '天山区', '新疆维吾尔自治区，乌鲁木齐市，天山区', 650102, 705);
INSERT INTO `sys_area` VALUES (8609060, 86, 8607955, 3, '沙依巴克区', '新疆维吾尔自治区，乌鲁木齐市，沙依巴克区', 650103, 706);
INSERT INTO `sys_area` VALUES (8609061, 86, 8607955, 3, '头屯河区', '新疆维吾尔自治区，乌鲁木齐市，头屯河区', 650106, 707);
INSERT INTO `sys_area` VALUES (8609062, 86, 8607955, 3, '新市区', '新疆维吾尔自治区，乌鲁木齐市，新市区', 650104, 708);
INSERT INTO `sys_area` VALUES (8609063, 86, 8607955, 3, '米东区', '新疆维吾尔自治区，乌鲁木齐市，米东区', 650109, 709);
INSERT INTO `sys_area` VALUES (8609064, 86, 8607955, 3, '水磨沟区', '新疆维吾尔自治区，乌鲁木齐市，水磨沟区', 650105, 710);
INSERT INTO `sys_area` VALUES (8609162, 86, 8607956, 3, '沙雅县', '新疆维吾尔自治区，阿克苏地区，沙雅县', 652924, 711);
INSERT INTO `sys_area` VALUES (8609163, 86, 8607956, 3, '温宿县', '新疆维吾尔自治区，阿克苏地区，温宿县', 652922, 712);
INSERT INTO `sys_area` VALUES (8609164, 86, 8607956, 3, '拜城县', '新疆维吾尔自治区，阿克苏地区，拜城县', 652926, 713);
INSERT INTO `sys_area` VALUES (8609165, 86, 8607956, 3, '新和县', '新疆维吾尔自治区，阿克苏地区，新和县', 652925, 714);
INSERT INTO `sys_area` VALUES (8609166, 86, 8607956, 3, '库车县', '新疆维吾尔自治区，阿克苏地区，库车县', 652923, 715);
INSERT INTO `sys_area` VALUES (8609167, 86, 8607956, 3, '阿克苏市', '新疆维吾尔自治区，阿克苏地区，阿克苏市', 652901, 716);
INSERT INTO `sys_area` VALUES (8609168, 86, 8607956, 3, '柯坪县', '新疆维吾尔自治区，阿克苏地区，柯坪县', 652929, 717);
INSERT INTO `sys_area` VALUES (8609169, 86, 8607956, 3, '阿瓦提县', '新疆维吾尔自治区，阿克苏地区，阿瓦提县', 652928, 718);
INSERT INTO `sys_area` VALUES (8609170, 86, 8607956, 3, '乌什县', '新疆维吾尔自治区，阿克苏地区，乌什县', 652927, 719);
INSERT INTO `sys_area` VALUES (8609314, 86, 8607957, 3, '阿图什市', '新疆维吾尔自治区，克孜勒苏柯尔克孜自治州，阿图什市', 653001, 720);
INSERT INTO `sys_area` VALUES (8609315, 86, 8607957, 3, '乌恰县', '新疆维吾尔自治区，克孜勒苏柯尔克孜自治州，乌恰县', 653024, 721);
INSERT INTO `sys_area` VALUES (8609316, 86, 8607957, 3, '阿合奇县', '新疆维吾尔自治区，克孜勒苏柯尔克孜自治州，阿合奇县', 653023, 722);
INSERT INTO `sys_area` VALUES (8609317, 86, 8607957, 3, '阿克陶县', '新疆维吾尔自治区，克孜勒苏柯尔克孜自治州，阿克陶县', 653022, 723);
INSERT INTO `sys_area` VALUES (8609364, 86, 8607958, 3, '伊吾县', '新疆维吾尔自治区，哈密市，伊吾县', 650522, 724);
INSERT INTO `sys_area` VALUES (8609365, 86, 8607958, 3, '巴里坤哈萨克自治县', '新疆维吾尔自治区，哈密市，巴里坤哈萨克自治县', 650521, 725);
INSERT INTO `sys_area` VALUES (8609366, 86, 8607958, 3, '伊州区', '新疆维吾尔自治区，哈密市，伊州区', 650502, 726);
INSERT INTO `sys_area` VALUES (8609425, 86, 8607959, 3, '高昌区', '新疆维吾尔自治区，吐鲁番市，高昌区', 650402, 727);
INSERT INTO `sys_area` VALUES (8609426, 86, 8607959, 3, '鄯善县', '新疆维吾尔自治区，吐鲁番市，鄯善县', 650421, 728);
INSERT INTO `sys_area` VALUES (8609427, 86, 8607959, 3, '托克逊县', '新疆维吾尔自治区，吐鲁番市，托克逊县', 650422, 729);
INSERT INTO `sys_area` VALUES (8609463, 86, 8600006, 2, '十堰市', '湖北省，十堰市', 420300, 730);
INSERT INTO `sys_area` VALUES (8609464, 86, 8600006, 2, '宜昌市', '湖北省，宜昌市', 420500, 731);
INSERT INTO `sys_area` VALUES (8609465, 86, 8600006, 2, '孝感市', '湖北省，孝感市', 420900, 732);
INSERT INTO `sys_area` VALUES (8609466, 86, 8600006, 2, '武汉市', '湖北省，武汉市', 420100, 733);
INSERT INTO `sys_area` VALUES (8609467, 86, 8600006, 2, '恩施土家族苗族自治州', '湖北省，恩施土家族苗族自治州', 422800, 734);
INSERT INTO `sys_area` VALUES (8609468, 86, 8600006, 3, '天门市', '湖北省，天门市', 429006, 735);
INSERT INTO `sys_area` VALUES (8609469, 86, 8600006, 2, '黄冈市', '湖北省，黄冈市', 421100, 736);
INSERT INTO `sys_area` VALUES (8609470, 86, 8600006, 3, '潜江市', '湖北省，潜江市', 429005, 737);
INSERT INTO `sys_area` VALUES (8609471, 86, 8600006, 2, '襄阳市', '湖北省，襄阳市', 420600, 738);
INSERT INTO `sys_area` VALUES (8609472, 86, 8600006, 2, '荆门市', '湖北省，荆门市', 420800, 739);
INSERT INTO `sys_area` VALUES (8609473, 86, 8600006, 3, '仙桃市', '湖北省，仙桃市', 429004, 740);
INSERT INTO `sys_area` VALUES (8609474, 86, 8600006, 3, '神农架林区', '湖北省，神农架林区', 429021, 741);
INSERT INTO `sys_area` VALUES (8609475, 86, 8600006, 2, '随州市', '湖北省，随州市', 421300, 742);
INSERT INTO `sys_area` VALUES (8609476, 86, 8600006, 2, '荆州市', '湖北省，荆州市', 421000, 743);
INSERT INTO `sys_area` VALUES (8609477, 86, 8600006, 2, '咸宁市', '湖北省，咸宁市', 421200, 744);
INSERT INTO `sys_area` VALUES (8609478, 86, 8600006, 2, '黄石市', '湖北省，黄石市', 420200, 745);
INSERT INTO `sys_area` VALUES (8609479, 86, 8600006, 2, '鄂州市', '湖北省，鄂州市', 420700, 746);
INSERT INTO `sys_area` VALUES (8609480, 86, 8609463, 3, '郧阳区', '湖北省，十堰市，郧阳区', 420304, 747);
INSERT INTO `sys_area` VALUES (8609481, 86, 8609463, 3, '丹江口市', '湖北省，十堰市，丹江口市', 420381, 748);
INSERT INTO `sys_area` VALUES (8609482, 86, 8609463, 3, '张湾区', '湖北省，十堰市，张湾区', 420303, 749);
INSERT INTO `sys_area` VALUES (8609483, 86, 8609463, 3, '茅箭区', '湖北省，十堰市，茅箭区', 420302, 750);
INSERT INTO `sys_area` VALUES (8609484, 86, 8609463, 3, '竹溪县', '湖北省，十堰市，竹溪县', 420324, 751);
INSERT INTO `sys_area` VALUES (8609485, 86, 8609463, 3, '房县', '湖北省，十堰市，房县', 420325, 752);
INSERT INTO `sys_area` VALUES (8609486, 86, 8609463, 3, '竹山县', '湖北省，十堰市，竹山县', 420323, 753);
INSERT INTO `sys_area` VALUES (8609487, 86, 8609463, 3, '郧西县', '湖北省，十堰市，郧西县', 420322, 754);
INSERT INTO `sys_area` VALUES (8609644, 86, 8609464, 3, '兴山县', '湖北省，宜昌市，兴山县', 420526, 755);
INSERT INTO `sys_area` VALUES (8609645, 86, 8609464, 3, '远安县', '湖北省，宜昌市，远安县', 420525, 756);
INSERT INTO `sys_area` VALUES (8609646, 86, 8609464, 3, '夷陵区', '湖北省，宜昌市，夷陵区', 420506, 757);
INSERT INTO `sys_area` VALUES (8609647, 86, 8609464, 3, '当阳市', '湖北省，宜昌市，当阳市', 420582, 758);
INSERT INTO `sys_area` VALUES (8609648, 86, 8609464, 3, '秭归县', '湖北省，宜昌市，秭归县', 420527, 759);
INSERT INTO `sys_area` VALUES (8609649, 86, 8609464, 3, '西陵区', '湖北省，宜昌市，西陵区', 420502, 760);
INSERT INTO `sys_area` VALUES (8609650, 86, 8609464, 3, '长阳土家族自治县', '湖北省，宜昌市，长阳土家族自治县', 420528, 761);
INSERT INTO `sys_area` VALUES (8609651, 86, 8609464, 3, '点军区', '湖北省，宜昌市，点军区', 420504, 762);
INSERT INTO `sys_area` VALUES (8609652, 86, 8609464, 3, '猇亭区', '湖北省，宜昌市，猇亭区', 420505, 763);
INSERT INTO `sys_area` VALUES (8609653, 86, 8609464, 3, '枝江市', '湖北省，宜昌市，枝江市', 420583, 764);
INSERT INTO `sys_area` VALUES (8609654, 86, 8609464, 3, '伍家岗区', '湖北省，宜昌市，伍家岗区', 420503, 765);
INSERT INTO `sys_area` VALUES (8609655, 86, 8609464, 3, '宜都市', '湖北省，宜昌市，宜都市', 420581, 766);
INSERT INTO `sys_area` VALUES (8609656, 86, 8609464, 3, '五峰土家族自治县', '湖北省，宜昌市，五峰土家族自治县', 420529, 767);
INSERT INTO `sys_area` VALUES (8609772, 86, 8609465, 3, '大悟县', '湖北省，孝感市，大悟县', 420922, 768);
INSERT INTO `sys_area` VALUES (8609773, 86, 8609465, 3, '孝昌县', '湖北省，孝感市，孝昌县', 420921, 769);
INSERT INTO `sys_area` VALUES (8609774, 86, 8609465, 3, '安陆市', '湖北省，孝感市，安陆市', 420982, 770);
INSERT INTO `sys_area` VALUES (8609775, 86, 8609465, 3, '云梦县', '湖北省，孝感市，云梦县', 420923, 771);
INSERT INTO `sys_area` VALUES (8609776, 86, 8609465, 3, '应城市', '湖北省，孝感市，应城市', 420981, 772);
INSERT INTO `sys_area` VALUES (8609777, 86, 8609465, 3, '孝南区', '湖北省，孝感市，孝南区', 420902, 773);
INSERT INTO `sys_area` VALUES (8609778, 86, 8609465, 3, '汉川市', '湖北省，孝感市，汉川市', 420984, 774);
INSERT INTO `sys_area` VALUES (8609905, 86, 8609466, 3, '黄陂区', '湖北省，武汉市，黄陂区', 420116, 775);
INSERT INTO `sys_area` VALUES (8609906, 86, 8609466, 3, '新洲区', '湖北省，武汉市，新洲区', 420117, 776);
INSERT INTO `sys_area` VALUES (8609907, 86, 8609466, 3, '东西湖区', '湖北省，武汉市，东西湖区', 420112, 777);
INSERT INTO `sys_area` VALUES (8609908, 86, 8609466, 3, '江岸区', '湖北省，武汉市，江岸区', 420102, 778);
INSERT INTO `sys_area` VALUES (8609909, 86, 8609466, 3, '蔡甸区', '湖北省，武汉市，蔡甸区', 420114, 779);
INSERT INTO `sys_area` VALUES (8609910, 86, 8609466, 3, '汉南区', '湖北省，武汉市，汉南区', 420113, 780);
INSERT INTO `sys_area` VALUES (8609911, 86, 8609466, 3, '汉阳区', '湖北省，武汉市，汉阳区', 420105, 781);
INSERT INTO `sys_area` VALUES (8609912, 86, 8609466, 3, '硚口区', '湖北省，武汉市，硚口区', 420104, 782);
INSERT INTO `sys_area` VALUES (8609913, 86, 8609466, 3, '江汉区', '湖北省，武汉市，江汉区', 420103, 783);
INSERT INTO `sys_area` VALUES (8609914, 86, 8609466, 3, '江夏区', '湖北省，武汉市，江夏区', 420115, 784);
INSERT INTO `sys_area` VALUES (8609915, 86, 8609466, 3, '青山区', '湖北省，武汉市，青山区', 420107, 785);
INSERT INTO `sys_area` VALUES (8609916, 86, 8609466, 3, '洪山区', '湖北省，武汉市，洪山区', 420111, 786);
INSERT INTO `sys_area` VALUES (8609917, 86, 8609466, 3, '武昌区', '湖北省，武汉市，武昌区', 420106, 787);
INSERT INTO `sys_area` VALUES (8610116, 86, 8609467, 3, '建始县', '湖北省，恩施土家族苗族自治州，建始县', 422822, 788);
INSERT INTO `sys_area` VALUES (8610117, 86, 8609467, 3, '利川市', '湖北省，恩施土家族苗族自治州，利川市', 422802, 789);
INSERT INTO `sys_area` VALUES (8610118, 86, 8609467, 3, '恩施市', '湖北省，恩施土家族苗族自治州，恩施市', 422801, 790);
INSERT INTO `sys_area` VALUES (8610119, 86, 8609467, 3, '鹤峰县', '湖北省，恩施土家族苗族自治州，鹤峰县', 422828, 791);
INSERT INTO `sys_area` VALUES (8610120, 86, 8609467, 3, '来凤县', '湖北省，恩施土家族苗族自治州，来凤县', 422827, 792);
INSERT INTO `sys_area` VALUES (8610121, 86, 8609467, 3, '巴东县', '湖北省，恩施土家族苗族自治州，巴东县', 422823, 793);
INSERT INTO `sys_area` VALUES (8610122, 86, 8609467, 3, '宣恩县', '湖北省，恩施土家族苗族自治州，宣恩县', 422825, 794);
INSERT INTO `sys_area` VALUES (8610123, 86, 8609467, 3, '咸丰县', '湖北省，恩施土家族苗族自治州，咸丰县', 422826, 795);
INSERT INTO `sys_area` VALUES (8610243, 86, 8609469, 3, '红安县', '湖北省，黄冈市，红安县', 421122, 796);
INSERT INTO `sys_area` VALUES (8610244, 86, 8609469, 3, '英山县', '湖北省，黄冈市，英山县', 421124, 797);
INSERT INTO `sys_area` VALUES (8610245, 86, 8609469, 3, '罗田县', '湖北省，黄冈市，罗田县', 421123, 798);
INSERT INTO `sys_area` VALUES (8610246, 86, 8609469, 3, '团风县', '湖北省，黄冈市，团风县', 421121, 799);
INSERT INTO `sys_area` VALUES (8610247, 86, 8609469, 3, '浠水县', '湖北省，黄冈市，浠水县', 421125, 800);
INSERT INTO `sys_area` VALUES (8610248, 86, 8609469, 3, '麻城市', '湖北省，黄冈市，麻城市', 421181, 801);
INSERT INTO `sys_area` VALUES (8610249, 86, 8609469, 3, '蕲春县', '湖北省，黄冈市，蕲春县', 421126, 802);
INSERT INTO `sys_area` VALUES (8610250, 86, 8609469, 3, '黄州区', '湖北省，黄冈市，黄州区', 421102, 803);
INSERT INTO `sys_area` VALUES (8610251, 86, 8609469, 3, '黄梅县', '湖北省，黄冈市，黄梅县', 421127, 804);
INSERT INTO `sys_area` VALUES (8610252, 86, 8609469, 3, '武穴市', '湖北省，黄冈市，武穴市', 421182, 805);
INSERT INTO `sys_area` VALUES (8610445, 86, 8609471, 3, '老河口市', '湖北省，襄阳市，老河口市', 420682, 806);
INSERT INTO `sys_area` VALUES (8610446, 86, 8609471, 3, '谷城县', '湖北省，襄阳市，谷城县', 420625, 807);
INSERT INTO `sys_area` VALUES (8610447, 86, 8609471, 3, '枣阳市', '湖北省，襄阳市，枣阳市', 420683, 808);
INSERT INTO `sys_area` VALUES (8610448, 86, 8609471, 3, '南漳县', '湖北省，襄阳市，南漳县', 420624, 809);
INSERT INTO `sys_area` VALUES (8610449, 86, 8609471, 3, '宜城市', '湖北省，襄阳市，宜城市', 420684, 810);
INSERT INTO `sys_area` VALUES (8610450, 86, 8609471, 3, '襄州区', '湖北省，襄阳市，襄州区', 420607, 811);
INSERT INTO `sys_area` VALUES (8610451, 86, 8609471, 3, '保康县', '湖北省，襄阳市，保康县', 420626, 812);
INSERT INTO `sys_area` VALUES (8610452, 86, 8609471, 3, '樊城区', '湖北省，襄阳市，樊城区', 420606, 813);
INSERT INTO `sys_area` VALUES (8610453, 86, 8609471, 3, '襄城区', '湖北省，襄阳市，襄城区', 420602, 814);
INSERT INTO `sys_area` VALUES (8610580, 86, 8609472, 3, '京山县', '湖北省，荆门市，京山县', 420821, 815);
INSERT INTO `sys_area` VALUES (8610581, 86, 8609472, 3, '东宝区', '湖北省，荆门市，东宝区', 420802, 816);
INSERT INTO `sys_area` VALUES (8610582, 86, 8609472, 3, '钟祥市', '湖北省，荆门市，钟祥市', 420881, 817);
INSERT INTO `sys_area` VALUES (8610583, 86, 8609472, 3, '掇刀区', '湖北省，荆门市，掇刀区', 420804, 818);
INSERT INTO `sys_area` VALUES (8610584, 86, 8609472, 3, '沙洋县', '湖北省，荆门市，沙洋县', 420822, 819);
INSERT INTO `sys_area` VALUES (8610701, 86, 8609475, 3, '广水市', '湖北省，随州市，广水市', 421381, 820);
INSERT INTO `sys_area` VALUES (8610702, 86, 8609475, 3, '曾都区', '湖北省，随州市，曾都区', 421303, 821);
INSERT INTO `sys_area` VALUES (8610703, 86, 8609475, 3, '随县', '湖北省，随州市，随县', 421321, 822);
INSERT INTO `sys_area` VALUES (8610754, 86, 8609476, 3, '荆州区', '湖北省，荆州市，荆州区', 421003, 823);
INSERT INTO `sys_area` VALUES (8610755, 86, 8609476, 3, '江陵县', '湖北省，荆州市，江陵县', 421024, 824);
INSERT INTO `sys_area` VALUES (8610756, 86, 8609476, 3, '监利县', '湖北省，荆州市，监利县', 421023, 825);
INSERT INTO `sys_area` VALUES (8610757, 86, 8609476, 3, '石首市', '湖北省，荆州市，石首市', 421081, 826);
INSERT INTO `sys_area` VALUES (8610758, 86, 8609476, 3, '洪湖市', '湖北省，荆州市，洪湖市', 421083, 827);
INSERT INTO `sys_area` VALUES (8610759, 86, 8609476, 3, '沙市区', '湖北省，荆州市，沙市区', 421002, 828);
INSERT INTO `sys_area` VALUES (8610760, 86, 8609476, 3, '松滋市', '湖北省，荆州市，松滋市', 421087, 829);
INSERT INTO `sys_area` VALUES (8610761, 86, 8609476, 3, '公安县', '湖北省，荆州市，公安县', 421022, 830);
INSERT INTO `sys_area` VALUES (8610890, 86, 8609477, 3, '嘉鱼县', '湖北省，咸宁市，嘉鱼县', 421221, 831);
INSERT INTO `sys_area` VALUES (8610891, 86, 8609477, 3, '崇阳县', '湖北省，咸宁市，崇阳县', 421223, 832);
INSERT INTO `sys_area` VALUES (8610892, 86, 8609477, 3, '通山县', '湖北省，咸宁市，通山县', 421224, 833);
INSERT INTO `sys_area` VALUES (8610893, 86, 8609477, 3, '咸安区', '湖北省，咸宁市，咸安区', 421202, 834);
INSERT INTO `sys_area` VALUES (8610894, 86, 8609477, 3, '赤壁市', '湖北省，咸宁市，赤壁市', 421281, 835);
INSERT INTO `sys_area` VALUES (8610895, 86, 8609477, 3, '通城县', '湖北省，咸宁市，通城县', 421222, 836);
INSERT INTO `sys_area` VALUES (8610984, 86, 8609478, 3, '铁山区', '湖北省，黄石市，铁山区', 420205, 837);
INSERT INTO `sys_area` VALUES (8610985, 86, 8609478, 3, '西塞山区', '湖北省，黄石市，西塞山区', 420203, 838);
INSERT INTO `sys_area` VALUES (8610986, 86, 8609478, 3, '下陆区', '湖北省，黄石市，下陆区', 420204, 839);
INSERT INTO `sys_area` VALUES (8610987, 86, 8609478, 3, '阳新县', '湖北省，黄石市，阳新县', 420222, 840);
INSERT INTO `sys_area` VALUES (8610988, 86, 8609478, 3, '大冶市', '湖北省，黄石市，大冶市', 420281, 841);
INSERT INTO `sys_area` VALUES (8610989, 86, 8609478, 3, '黄石港区', '湖北省，黄石市，黄石港区', 420202, 842);
INSERT INTO `sys_area` VALUES (8611038, 86, 8609479, 3, '华容区', '湖北省，鄂州市，华容区', 420703, 843);
INSERT INTO `sys_area` VALUES (8611039, 86, 8609479, 3, '梁子湖区', '湖北省，鄂州市，梁子湖区', 420702, 844);
INSERT INTO `sys_area` VALUES (8611040, 86, 8609479, 3, '鄂城区', '湖北省，鄂州市，鄂城区', 420704, 845);
INSERT INTO `sys_area` VALUES (8611068, 86, 8600007, 2, '大连市', '辽宁省，大连市', 210200, 846);
INSERT INTO `sys_area` VALUES (8611069, 86, 8600007, 2, '葫芦岛市', '辽宁省，葫芦岛市', 211400, 847);
INSERT INTO `sys_area` VALUES (8611070, 86, 8600007, 2, '锦州市', '辽宁省，锦州市', 210700, 848);
INSERT INTO `sys_area` VALUES (8611071, 86, 8600007, 2, '丹东市', '辽宁省，丹东市', 210600, 849);
INSERT INTO `sys_area` VALUES (8611072, 86, 8600007, 2, '抚顺市', '辽宁省，抚顺市', 210400, 850);
INSERT INTO `sys_area` VALUES (8611073, 86, 8600007, 2, '沈阳市', '辽宁省，沈阳市', 210100, 851);
INSERT INTO `sys_area` VALUES (8611074, 86, 8600007, 2, '鞍山市', '辽宁省，鞍山市', 210300, 852);
INSERT INTO `sys_area` VALUES (8611075, 86, 8600007, 2, '铁岭市', '辽宁省，铁岭市', 211200, 853);
INSERT INTO `sys_area` VALUES (8611076, 86, 8600007, 2, '辽阳市', '辽宁省，辽阳市', 211000, 854);
INSERT INTO `sys_area` VALUES (8611077, 86, 8600007, 2, '盘锦市', '辽宁省，盘锦市', 211100, 855);
INSERT INTO `sys_area` VALUES (8611078, 86, 8600007, 2, '营口市', '辽宁省，营口市', 210800, 856);
INSERT INTO `sys_area` VALUES (8611079, 86, 8600007, 2, '朝阳市', '辽宁省，朝阳市', 211300, 857);
INSERT INTO `sys_area` VALUES (8611080, 86, 8600007, 2, '阜新市', '辽宁省，阜新市', 210900, 858);
INSERT INTO `sys_area` VALUES (8611081, 86, 8600007, 2, '本溪市', '辽宁省，本溪市', 210500, 859);
INSERT INTO `sys_area` VALUES (8611082, 86, 8611068, 3, '瓦房店市', '辽宁省，大连市，瓦房店市', 210281, 860);
INSERT INTO `sys_area` VALUES (8611083, 86, 8611068, 3, '普兰店区', '辽宁省，大连市，普兰店区', 210214, 861);
INSERT INTO `sys_area` VALUES (8611084, 86, 8611068, 3, '金州区', '辽宁省，大连市，金州区', 210213, 862);
INSERT INTO `sys_area` VALUES (8611085, 86, 8611068, 3, '长海县', '辽宁省，大连市，长海县', 210224, 863);
INSERT INTO `sys_area` VALUES (8611086, 86, 8611068, 3, '中山区', '辽宁省，大连市，中山区', 210202, 864);
INSERT INTO `sys_area` VALUES (8611087, 86, 8611068, 3, '甘井子区', '辽宁省，大连市，甘井子区', 210211, 865);
INSERT INTO `sys_area` VALUES (8611088, 86, 8611068, 3, '庄河市', '辽宁省，大连市，庄河市', 210283, 866);
INSERT INTO `sys_area` VALUES (8611089, 86, 8611068, 3, '旅顺口区', '辽宁省，大连市，旅顺口区', 210212, 867);
INSERT INTO `sys_area` VALUES (8611090, 86, 8611068, 3, '西岗区', '辽宁省，大连市，西岗区', 210203, 868);
INSERT INTO `sys_area` VALUES (8611091, 86, 8611068, 3, '沙河口区', '辽宁省，大连市，沙河口区', 210204, 869);
INSERT INTO `sys_area` VALUES (8611256, 86, 8611069, 3, '建昌县', '辽宁省，葫芦岛市，建昌县', 211422, 870);
INSERT INTO `sys_area` VALUES (8611257, 86, 8611069, 3, '兴城市', '辽宁省，葫芦岛市，兴城市', 211481, 871);
INSERT INTO `sys_area` VALUES (8611258, 86, 8611069, 3, '龙港区', '辽宁省，葫芦岛市，龙港区', 211403, 872);
INSERT INTO `sys_area` VALUES (8611259, 86, 8611069, 3, '绥中县', '辽宁省，葫芦岛市，绥中县', 211421, 873);
INSERT INTO `sys_area` VALUES (8611260, 86, 8611069, 3, '南票区', '辽宁省，葫芦岛市，南票区', 211404, 874);
INSERT INTO `sys_area` VALUES (8611261, 86, 8611069, 3, '连山区', '辽宁省，葫芦岛市，连山区', 211402, 875);
INSERT INTO `sys_area` VALUES (8611393, 86, 8611070, 3, '黑山县', '辽宁省，锦州市，黑山县', 210726, 876);
INSERT INTO `sys_area` VALUES (8611394, 86, 8611070, 3, '凌海市', '辽宁省，锦州市，凌海市', 210781, 877);
INSERT INTO `sys_area` VALUES (8611395, 86, 8611070, 3, '义县', '辽宁省，锦州市，义县', 210727, 878);
INSERT INTO `sys_area` VALUES (8611396, 86, 8611070, 3, '太和区', '辽宁省，锦州市，太和区', 210711, 879);
INSERT INTO `sys_area` VALUES (8611397, 86, 8611070, 3, '北镇市', '辽宁省，锦州市，北镇市', 210782, 880);
INSERT INTO `sys_area` VALUES (8611398, 86, 8611070, 3, '凌河区', '辽宁省，锦州市，凌河区', 210703, 881);
INSERT INTO `sys_area` VALUES (8611399, 86, 8611070, 3, '古塔区', '辽宁省，锦州市，古塔区', 210702, 882);
INSERT INTO `sys_area` VALUES (8611520, 86, 8611071, 3, '振安区', '辽宁省，丹东市，振安区', 210604, 883);
INSERT INTO `sys_area` VALUES (8611521, 86, 8611071, 3, '凤城市', '辽宁省，丹东市，凤城市', 210682, 884);
INSERT INTO `sys_area` VALUES (8611522, 86, 8611071, 3, '东港市', '辽宁省，丹东市，东港市', 210681, 885);
INSERT INTO `sys_area` VALUES (8611523, 86, 8611071, 3, '振兴区', '辽宁省，丹东市，振兴区', 210603, 886);
INSERT INTO `sys_area` VALUES (8611524, 86, 8611071, 3, '元宝区', '辽宁省，丹东市，元宝区', 210602, 887);
INSERT INTO `sys_area` VALUES (8611525, 86, 8611071, 3, '宽甸满族自治县', '辽宁省，丹东市，宽甸满族自治县', 210624, 888);
INSERT INTO `sys_area` VALUES (8611621, 86, 8611072, 3, '清原满族自治县', '辽宁省，抚顺市，清原满族自治县', 210423, 889);
INSERT INTO `sys_area` VALUES (8611622, 86, 8611072, 3, '新宾满族自治县', '辽宁省，抚顺市，新宾满族自治县', 210422, 890);
INSERT INTO `sys_area` VALUES (8611623, 86, 8611072, 3, '东洲区', '辽宁省，抚顺市，东洲区', 210403, 891);
INSERT INTO `sys_area` VALUES (8611624, 86, 8611072, 3, '望花区', '辽宁省，抚顺市，望花区', 210404, 892);
INSERT INTO `sys_area` VALUES (8611625, 86, 8611072, 3, '新抚区', '辽宁省，抚顺市，新抚区', 210402, 893);
INSERT INTO `sys_area` VALUES (8611626, 86, 8611072, 3, '抚顺县', '辽宁省，抚顺市，抚顺县', 210421, 894);
INSERT INTO `sys_area` VALUES (8611627, 86, 8611072, 3, '顺城区', '辽宁省，抚顺市，顺城区', 210411, 895);
INSERT INTO `sys_area` VALUES (8611712, 86, 8611073, 3, '新民市', '辽宁省，沈阳市，新民市', 210181, 896);
INSERT INTO `sys_area` VALUES (8611713, 86, 8611073, 3, '沈北新区', '辽宁省，沈阳市，沈北新区', 210113, 897);
INSERT INTO `sys_area` VALUES (8611714, 86, 8611073, 3, '浑南区', '辽宁省，沈阳市，浑南区', 210112, 898);
INSERT INTO `sys_area` VALUES (8611715, 86, 8611073, 3, '辽中区', '辽宁省，沈阳市，辽中区', 210115, 899);
INSERT INTO `sys_area` VALUES (8611716, 86, 8611073, 3, '于洪区', '辽宁省，沈阳市，于洪区', 210114, 900);
INSERT INTO `sys_area` VALUES (8611717, 86, 8611073, 3, '皇姑区', '辽宁省，沈阳市，皇姑区', 210105, 901);
INSERT INTO `sys_area` VALUES (8611718, 86, 8611073, 3, '和平区', '辽宁省，沈阳市，和平区', 210102, 902);
INSERT INTO `sys_area` VALUES (8611719, 86, 8611073, 3, '铁西区', '辽宁省，沈阳市，铁西区', 210106, 903);
INSERT INTO `sys_area` VALUES (8611720, 86, 8611073, 3, '苏家屯区', '辽宁省，沈阳市，苏家屯区', 210111, 904);
INSERT INTO `sys_area` VALUES (8611721, 86, 8611073, 3, '康平县', '辽宁省，沈阳市，康平县', 210123, 905);
INSERT INTO `sys_area` VALUES (8611722, 86, 8611073, 3, '法库县', '辽宁省，沈阳市，法库县', 210124, 906);
INSERT INTO `sys_area` VALUES (8611723, 86, 8611073, 3, '大东区', '辽宁省，沈阳市，大东区', 210104, 907);
INSERT INTO `sys_area` VALUES (8611724, 86, 8611073, 3, '沈河区', '辽宁省，沈阳市，沈河区', 210103, 908);
INSERT INTO `sys_area` VALUES (8611940, 86, 8611074, 3, '台安县', '辽宁省，鞍山市，台安县', 210321, 909);
INSERT INTO `sys_area` VALUES (8611941, 86, 8611074, 3, '岫岩满族自治县', '辽宁省，鞍山市，岫岩满族自治县', 210323, 910);
INSERT INTO `sys_area` VALUES (8611942, 86, 8611074, 3, '海城市', '辽宁省，鞍山市，海城市', 210381, 911);
INSERT INTO `sys_area` VALUES (8611943, 86, 8611074, 3, '铁东区', '辽宁省，鞍山市，铁东区', 210302, 912);
INSERT INTO `sys_area` VALUES (8611944, 86, 8611074, 3, '立山区', '辽宁省，鞍山市，立山区', 210304, 913);
INSERT INTO `sys_area` VALUES (8611945, 86, 8611074, 3, '铁西区', '辽宁省，鞍山市，铁西区', 210303, 914);
INSERT INTO `sys_area` VALUES (8611946, 86, 8611074, 3, '千山区', '辽宁省，鞍山市，千山区', 210311, 915);
INSERT INTO `sys_area` VALUES (8612068, 86, 8611075, 3, '调兵山市', '辽宁省，铁岭市，调兵山市', 211281, 916);
INSERT INTO `sys_area` VALUES (8612069, 86, 8611075, 3, '开原市', '辽宁省，铁岭市，开原市', 211282, 917);
INSERT INTO `sys_area` VALUES (8612070, 86, 8611075, 3, '清河区', '辽宁省，铁岭市，清河区', 211204, 918);
INSERT INTO `sys_area` VALUES (8612071, 86, 8611075, 3, '银州区', '辽宁省，铁岭市，银州区', 211202, 919);
INSERT INTO `sys_area` VALUES (8612072, 86, 8611075, 3, '西丰县', '辽宁省，铁岭市，西丰县', 211223, 920);
INSERT INTO `sys_area` VALUES (8612073, 86, 8611075, 3, '铁岭县', '辽宁省，铁岭市，铁岭县', 211221, 921);
INSERT INTO `sys_area` VALUES (8612074, 86, 8611075, 3, '昌图县', '辽宁省，铁岭市，昌图县', 211224, 922);
INSERT INTO `sys_area` VALUES (8612187, 86, 8611076, 3, '辽阳县', '辽宁省，辽阳市，辽阳县', 211021, 923);
INSERT INTO `sys_area` VALUES (8612188, 86, 8611076, 3, '白塔区', '辽宁省，辽阳市，白塔区', 211002, 924);
INSERT INTO `sys_area` VALUES (8612189, 86, 8611076, 3, '弓长岭区', '辽宁省，辽阳市，弓长岭区', 211005, 925);
INSERT INTO `sys_area` VALUES (8612190, 86, 8611076, 3, '文圣区', '辽宁省，辽阳市，文圣区', 211003, 926);
INSERT INTO `sys_area` VALUES (8612191, 86, 8611076, 3, '宏伟区', '辽宁省，辽阳市，宏伟区', 211004, 927);
INSERT INTO `sys_area` VALUES (8612192, 86, 8611076, 3, '太子河区', '辽宁省，辽阳市，太子河区', 211011, 928);
INSERT INTO `sys_area` VALUES (8612193, 86, 8611076, 3, '灯塔市', '辽宁省，辽阳市，灯塔市', 211081, 929);
INSERT INTO `sys_area` VALUES (8612255, 86, 8611077, 3, '兴隆台区', '辽宁省，盘锦市，兴隆台区', 211103, 930);
INSERT INTO `sys_area` VALUES (8612256, 86, 8611077, 3, '大洼区', '辽宁省，盘锦市，大洼区', 211104, 931);
INSERT INTO `sys_area` VALUES (8612257, 86, 8611077, 3, '盘山县', '辽宁省，盘锦市，盘山县', 211122, 932);
INSERT INTO `sys_area` VALUES (8612258, 86, 8611077, 3, '双台子区', '辽宁省，盘锦市，双台子区', 211102, 933);
INSERT INTO `sys_area` VALUES (8612318, 86, 8611078, 3, '鲅鱼圈区', '辽宁省，营口市，鲅鱼圈区', 210804, 934);
INSERT INTO `sys_area` VALUES (8612319, 86, 8611078, 3, '大石桥市', '辽宁省，营口市，大石桥市', 210882, 935);
INSERT INTO `sys_area` VALUES (8612320, 86, 8611078, 3, '西市区', '辽宁省，营口市，西市区', 210803, 936);
INSERT INTO `sys_area` VALUES (8612321, 86, 8611078, 3, '盖州市', '辽宁省，营口市，盖州市', 210881, 937);
INSERT INTO `sys_area` VALUES (8612322, 86, 8611078, 3, '站前区', '辽宁省，营口市，站前区', 210802, 938);
INSERT INTO `sys_area` VALUES (8612323, 86, 8611078, 3, '老边区', '辽宁省，营口市，老边区', 210811, 939);
INSERT INTO `sys_area` VALUES (8612399, 86, 8611079, 3, '建平县', '辽宁省，朝阳市，建平县', 211322, 940);
INSERT INTO `sys_area` VALUES (8612400, 86, 8611079, 3, '北票市', '辽宁省，朝阳市，北票市', 211381, 941);
INSERT INTO `sys_area` VALUES (8612401, 86, 8611079, 3, '朝阳县', '辽宁省，朝阳市，朝阳县', 211321, 942);
INSERT INTO `sys_area` VALUES (8612402, 86, 8611079, 3, '双塔区', '辽宁省，朝阳市，双塔区', 211302, 943);
INSERT INTO `sys_area` VALUES (8612403, 86, 8611079, 3, '龙城区', '辽宁省，朝阳市，龙城区', 211303, 944);
INSERT INTO `sys_area` VALUES (8612404, 86, 8611079, 3, '凌源市', '辽宁省，朝阳市，凌源市', 211382, 945);
INSERT INTO `sys_area` VALUES (8612405, 86, 8611079, 3, '喀喇沁左翼蒙古族自治县', '辽宁省，朝阳市，喀喇沁左翼蒙古族自治县', 211324, 946);
INSERT INTO `sys_area` VALUES (8612582, 86, 8611080, 3, '海州区', '辽宁省，阜新市，海州区', 210902, 947);
INSERT INTO `sys_area` VALUES (8612583, 86, 8611080, 3, '细河区', '辽宁省，阜新市，细河区', 210911, 948);
INSERT INTO `sys_area` VALUES (8612584, 86, 8611080, 3, '太平区', '辽宁省，阜新市，太平区', 210904, 949);
INSERT INTO `sys_area` VALUES (8612585, 86, 8611080, 3, '清河门区', '辽宁省，阜新市，清河门区', 210905, 950);
INSERT INTO `sys_area` VALUES (8612586, 86, 8611080, 3, '阜新蒙古族自治县', '辽宁省，阜新市，阜新蒙古族自治县', 210921, 951);
INSERT INTO `sys_area` VALUES (8612587, 86, 8611080, 3, '新邱区', '辽宁省，阜新市，新邱区', 210903, 952);
INSERT INTO `sys_area` VALUES (8612588, 86, 8611080, 3, '彰武县', '辽宁省，阜新市，彰武县', 210922, 953);
INSERT INTO `sys_area` VALUES (8612684, 86, 8611081, 3, '溪湖区', '辽宁省，本溪市，溪湖区', 210503, 954);
INSERT INTO `sys_area` VALUES (8612685, 86, 8611081, 3, '桓仁满族自治县', '辽宁省，本溪市，桓仁满族自治县', 210522, 955);
INSERT INTO `sys_area` VALUES (8612686, 86, 8611081, 3, '南芬区', '辽宁省，本溪市，南芬区', 210505, 956);
INSERT INTO `sys_area` VALUES (8612687, 86, 8611081, 3, '平山区', '辽宁省，本溪市，平山区', 210502, 957);
INSERT INTO `sys_area` VALUES (8612688, 86, 8611081, 3, '明山区', '辽宁省，本溪市，明山区', 210504, 958);
INSERT INTO `sys_area` VALUES (8612689, 86, 8611081, 3, '本溪满族自治县', '辽宁省，本溪市，本溪满族自治县', 210521, 959);
INSERT INTO `sys_area` VALUES (8612748, 86, 8600008, 2, '威海市', '山东省，威海市', 371000, 960);
INSERT INTO `sys_area` VALUES (8612749, 86, 8600008, 2, '烟台市', '山东省，烟台市', 370600, 961);
INSERT INTO `sys_area` VALUES (8612750, 86, 8600008, 2, '滨州市', '山东省，滨州市', 371600, 962);
INSERT INTO `sys_area` VALUES (8612751, 86, 8600008, 2, '临沂市', '山东省，临沂市', 371300, 963);
INSERT INTO `sys_area` VALUES (8612752, 86, 8600008, 2, '莱芜市', '山东省，莱芜市', 371200, 964);
INSERT INTO `sys_area` VALUES (8612753, 86, 8600008, 2, '淄博市', '山东省，淄博市', 370300, 965);
INSERT INTO `sys_area` VALUES (8612754, 86, 8600008, 2, '青岛市', '山东省，青岛市', 370200, 966);
INSERT INTO `sys_area` VALUES (8612755, 86, 8600008, 2, '聊城市', '山东省，聊城市', 371500, 967);
INSERT INTO `sys_area` VALUES (8612756, 86, 8600008, 2, '德州市', '山东省，德州市', 371400, 968);
INSERT INTO `sys_area` VALUES (8612757, 86, 8600008, 2, '日照市', '山东省，日照市', 371100, 969);
INSERT INTO `sys_area` VALUES (8612758, 86, 8600008, 2, '菏泽市', '山东省，菏泽市', 371700, 970);
INSERT INTO `sys_area` VALUES (8612759, 86, 8600008, 2, '潍坊市', '山东省，潍坊市', 370700, 971);
INSERT INTO `sys_area` VALUES (8612760, 86, 8600008, 2, '济南市', '山东省，济南市', 370100, 972);
INSERT INTO `sys_area` VALUES (8612761, 86, 8600008, 2, '泰安市', '山东省，泰安市', 370900, 973);
INSERT INTO `sys_area` VALUES (8612762, 86, 8600008, 2, '东营市', '山东省，东营市', 370500, 974);
INSERT INTO `sys_area` VALUES (8612763, 86, 8600008, 2, '济宁市', '山东省，济宁市', 370800, 975);
INSERT INTO `sys_area` VALUES (8612764, 86, 8600008, 2, '枣庄市', '山东省，枣庄市', 370400, 976);
INSERT INTO `sys_area` VALUES (8612765, 86, 8612748, 3, '环翠区', '山东省，威海市，环翠区', 371002, 977);
INSERT INTO `sys_area` VALUES (8612766, 86, 8612748, 3, '荣成市', '山东省，威海市，荣成市', 371082, 978);
INSERT INTO `sys_area` VALUES (8612767, 86, 8612748, 3, '文登区', '山东省，威海市，文登区', 371003, 979);
INSERT INTO `sys_area` VALUES (8612768, 86, 8612748, 3, '乳山市', '山东省，威海市，乳山市', 371083, 980);
INSERT INTO `sys_area` VALUES (8612842, 86, 8612749, 3, '龙口市', '山东省，烟台市，龙口市', 370681, 981);
INSERT INTO `sys_area` VALUES (8612843, 86, 8612749, 3, '长岛县', '山东省，烟台市，长岛县', 370634, 982);
INSERT INTO `sys_area` VALUES (8612844, 86, 8612749, 3, '福山区', '山东省，烟台市，福山区', 370611, 983);
INSERT INTO `sys_area` VALUES (8612845, 86, 8612749, 3, '芝罘区', '山东省，烟台市，芝罘区', 370602, 984);
INSERT INTO `sys_area` VALUES (8612846, 86, 8612749, 3, '招远市', '山东省，烟台市，招远市', 370685, 985);
INSERT INTO `sys_area` VALUES (8612847, 86, 8612749, 3, '栖霞市', '山东省，烟台市，栖霞市', 370686, 986);
INSERT INTO `sys_area` VALUES (8612848, 86, 8612749, 3, '莱州市', '山东省，烟台市，莱州市', 370683, 987);
INSERT INTO `sys_area` VALUES (8612849, 86, 8612749, 3, '海阳市', '山东省，烟台市，海阳市', 370687, 988);
INSERT INTO `sys_area` VALUES (8612850, 86, 8612749, 3, '牟平区', '山东省，烟台市，牟平区', 370612, 989);
INSERT INTO `sys_area` VALUES (8612851, 86, 8612749, 3, '莱山区', '山东省，烟台市，莱山区', 370613, 990);
INSERT INTO `sys_area` VALUES (8612852, 86, 8612749, 3, '莱阳市', '山东省，烟台市，莱阳市', 370682, 991);
INSERT INTO `sys_area` VALUES (8612853, 86, 8612749, 3, '蓬莱市', '山东省，烟台市，蓬莱市', 370684, 992);
INSERT INTO `sys_area` VALUES (8613010, 86, 8612750, 3, '沾化区', '山东省，滨州市，沾化区', 371603, 993);
INSERT INTO `sys_area` VALUES (8613011, 86, 8612750, 3, '滨城区', '山东省，滨州市，滨城区', 371602, 994);
INSERT INTO `sys_area` VALUES (8613012, 86, 8612750, 3, '邹平县', '山东省，滨州市，邹平县', 371626, 995);
INSERT INTO `sys_area` VALUES (8613013, 86, 8612750, 3, '博兴县', '山东省，滨州市，博兴县', 371625, 996);
INSERT INTO `sys_area` VALUES (8613014, 86, 8612750, 3, '无棣县', '山东省，滨州市，无棣县', 371623, 997);
INSERT INTO `sys_area` VALUES (8613015, 86, 8612750, 3, '阳信县', '山东省，滨州市，阳信县', 371622, 998);
INSERT INTO `sys_area` VALUES (8613016, 86, 8612750, 3, '惠民县', '山东省，滨州市，惠民县', 371621, 999);
INSERT INTO `sys_area` VALUES (8613108, 86, 8612751, 3, '蒙阴县', '山东省，临沂市，蒙阴县', 371328, 1000);
INSERT INTO `sys_area` VALUES (8613109, 86, 8612751, 3, '沂水县', '山东省，临沂市，沂水县', 371323, 1001);
INSERT INTO `sys_area` VALUES (8613110, 86, 8612751, 3, '平邑县', '山东省，临沂市，平邑县', 371326, 1002);
INSERT INTO `sys_area` VALUES (8613111, 86, 8612751, 3, '兰山区', '山东省，临沂市，兰山区', 371302, 1003);
INSERT INTO `sys_area` VALUES (8613112, 86, 8612751, 3, '沂南县', '山东省，临沂市，沂南县', 371321, 1004);
INSERT INTO `sys_area` VALUES (8613113, 86, 8612751, 3, '费县', '山东省，临沂市，费县', 371325, 1005);
INSERT INTO `sys_area` VALUES (8613114, 86, 8612751, 3, '郯城县', '山东省，临沂市，郯城县', 371322, 1006);
INSERT INTO `sys_area` VALUES (8613115, 86, 8612751, 3, '兰陵县', '山东省，临沂市，兰陵县', 371324, 1007);
INSERT INTO `sys_area` VALUES (8613116, 86, 8612751, 3, '莒南县', '山东省，临沂市，莒南县', 371327, 1008);
INSERT INTO `sys_area` VALUES (8613117, 86, 8612751, 3, '罗庄区', '山东省，临沂市，罗庄区', 371311, 1009);
INSERT INTO `sys_area` VALUES (8613118, 86, 8612751, 3, '临沭县', '山东省，临沂市，临沭县', 371329, 1010);
INSERT INTO `sys_area` VALUES (8613119, 86, 8612751, 3, '河东区', '山东省，临沂市，河东区', 371312, 1011);
INSERT INTO `sys_area` VALUES (8613277, 86, 8612752, 3, '莱城区', '山东省，莱芜市，莱城区', 371202, 1012);
INSERT INTO `sys_area` VALUES (8613278, 86, 8612752, 3, '钢城区', '山东省，莱芜市，钢城区', 371203, 1013);
INSERT INTO `sys_area` VALUES (8613299, 86, 8612753, 3, '高青县', '山东省，淄博市，高青县', 370322, 1014);
INSERT INTO `sys_area` VALUES (8613300, 86, 8612753, 3, '张店区', '山东省，淄博市，张店区', 370303, 1015);
INSERT INTO `sys_area` VALUES (8613301, 86, 8612753, 3, '桓台县', '山东省，淄博市，桓台县', 370321, 1016);
INSERT INTO `sys_area` VALUES (8613302, 86, 8612753, 3, '临淄区', '山东省，淄博市，临淄区', 370305, 1017);
INSERT INTO `sys_area` VALUES (8613303, 86, 8612753, 3, '周村区', '山东省，淄博市，周村区', 370306, 1018);
INSERT INTO `sys_area` VALUES (8613304, 86, 8612753, 3, '淄川区', '山东省，淄博市，淄川区', 370302, 1019);
INSERT INTO `sys_area` VALUES (8613305, 86, 8612753, 3, '沂源县', '山东省，淄博市，沂源县', 370323, 1020);
INSERT INTO `sys_area` VALUES (8613306, 86, 8612753, 3, '博山区', '山东省，淄博市，博山区', 370304, 1021);
INSERT INTO `sys_area` VALUES (8613395, 86, 8612754, 3, '莱西市', '山东省，青岛市，莱西市', 370285, 1022);
INSERT INTO `sys_area` VALUES (8613396, 86, 8612754, 3, '平度市', '山东省，青岛市，平度市', 370283, 1023);
INSERT INTO `sys_area` VALUES (8613397, 86, 8612754, 3, '即墨区', '山东省，青岛市，即墨区', 370215, 1024);
INSERT INTO `sys_area` VALUES (8613398, 86, 8612754, 3, '崂山区', '山东省，青岛市，崂山区', 370212, 1025);
INSERT INTO `sys_area` VALUES (8613399, 86, 8612754, 3, '城阳区', '山东省，青岛市，城阳区', 370214, 1026);
INSERT INTO `sys_area` VALUES (8613400, 86, 8612754, 3, '李沧区', '山东省，青岛市，李沧区', 370213, 1027);
INSERT INTO `sys_area` VALUES (8613401, 86, 8612754, 3, '黄岛区', '山东省，青岛市，黄岛区', 370211, 1028);
INSERT INTO `sys_area` VALUES (8613402, 86, 8612754, 3, '市南区', '山东省，青岛市，市南区', 370202, 1029);
INSERT INTO `sys_area` VALUES (8613403, 86, 8612754, 3, '胶州市', '山东省，青岛市，胶州市', 370281, 1030);
INSERT INTO `sys_area` VALUES (8613404, 86, 8612754, 3, '市北区', '山东省，青岛市，市北区', 370203, 1031);
INSERT INTO `sys_area` VALUES (8613539, 86, 8612755, 3, '临清市', '山东省，聊城市，临清市', 371581, 1032);
INSERT INTO `sys_area` VALUES (8613540, 86, 8612755, 3, '茌平县', '山东省，聊城市，茌平县', 371523, 1033);
INSERT INTO `sys_area` VALUES (8613541, 86, 8612755, 3, '冠县', '山东省，聊城市，冠县', 371525, 1034);
INSERT INTO `sys_area` VALUES (8613542, 86, 8612755, 3, '东昌府区', '山东省，聊城市，东昌府区', 371502, 1035);
INSERT INTO `sys_area` VALUES (8613543, 86, 8612755, 3, '东阿县', '山东省，聊城市，东阿县', 371524, 1036);
INSERT INTO `sys_area` VALUES (8613544, 86, 8612755, 3, '高唐县', '山东省，聊城市，高唐县', 371526, 1037);
INSERT INTO `sys_area` VALUES (8613545, 86, 8612755, 3, '莘县', '山东省，聊城市，莘县', 371522, 1038);
INSERT INTO `sys_area` VALUES (8613546, 86, 8612755, 3, '阳谷县', '山东省，聊城市，阳谷县', 371521, 1039);
INSERT INTO `sys_area` VALUES (8613683, 86, 8612756, 3, '宁津县', '山东省，德州市，宁津县', 371422, 1040);
INSERT INTO `sys_area` VALUES (8613684, 86, 8612756, 3, '陵城区', '山东省，德州市，陵城区', 371403, 1041);
INSERT INTO `sys_area` VALUES (8613685, 86, 8612756, 3, '乐陵市', '山东省，德州市，乐陵市', 371481, 1042);
INSERT INTO `sys_area` VALUES (8613686, 86, 8612756, 3, '庆云县', '山东省，德州市，庆云县', 371423, 1043);
INSERT INTO `sys_area` VALUES (8613687, 86, 8612756, 3, '德城区', '山东省，德州市，德城区', 371402, 1044);
INSERT INTO `sys_area` VALUES (8613688, 86, 8612756, 3, '临邑县', '山东省，德州市，临邑县', 371424, 1045);
INSERT INTO `sys_area` VALUES (8613689, 86, 8612756, 3, '武城县', '山东省，德州市，武城县', 371428, 1046);
INSERT INTO `sys_area` VALUES (8613690, 86, 8612756, 3, '禹城市', '山东省，德州市，禹城市', 371482, 1047);
INSERT INTO `sys_area` VALUES (8613691, 86, 8612756, 3, '平原县', '山东省，德州市，平原县', 371426, 1048);
INSERT INTO `sys_area` VALUES (8613692, 86, 8612756, 3, '夏津县', '山东省，德州市，夏津县', 371427, 1049);
INSERT INTO `sys_area` VALUES (8613693, 86, 8612756, 3, '齐河县', '山东省，德州市，齐河县', 371425, 1050);
INSERT INTO `sys_area` VALUES (8613828, 86, 8612757, 3, '五莲县', '山东省，日照市，五莲县', 371121, 1051);
INSERT INTO `sys_area` VALUES (8613829, 86, 8612757, 3, '岚山区', '山东省，日照市，岚山区', 371103, 1052);
INSERT INTO `sys_area` VALUES (8613830, 86, 8612757, 3, '莒县', '山东省，日照市，莒县', 371122, 1053);
INSERT INTO `sys_area` VALUES (8613831, 86, 8612757, 3, '东港区', '山东省，日照市，东港区', 371102, 1054);
INSERT INTO `sys_area` VALUES (8613888, 86, 8612758, 3, '牡丹区', '山东省，菏泽市，牡丹区', 371702, 1055);
INSERT INTO `sys_area` VALUES (8613889, 86, 8612758, 3, '鄄城县', '山东省，菏泽市，鄄城县', 371726, 1056);
INSERT INTO `sys_area` VALUES (8613890, 86, 8612758, 3, '定陶区', '山东省，菏泽市，定陶区', 371703, 1057);
INSERT INTO `sys_area` VALUES (8613891, 86, 8612758, 3, '东明县', '山东省，菏泽市，东明县', 371728, 1058);
INSERT INTO `sys_area` VALUES (8613892, 86, 8612758, 3, '曹县', '山东省，菏泽市，曹县', 371721, 1059);
INSERT INTO `sys_area` VALUES (8613893, 86, 8612758, 3, '成武县', '山东省，菏泽市，成武县', 371723, 1060);
INSERT INTO `sys_area` VALUES (8613894, 86, 8612758, 3, '单县', '山东省，菏泽市，单县', 371722, 1061);
INSERT INTO `sys_area` VALUES (8613895, 86, 8612758, 3, '巨野县', '山东省，菏泽市，巨野县', 371724, 1062);
INSERT INTO `sys_area` VALUES (8613896, 86, 8612758, 3, '郓城县', '山东省，菏泽市，郓城县', 371725, 1063);
INSERT INTO `sys_area` VALUES (8614065, 86, 8612759, 3, '青州市', '山东省，潍坊市，青州市', 370781, 1064);
INSERT INTO `sys_area` VALUES (8614066, 86, 8612759, 3, '奎文区', '山东省，潍坊市，奎文区', 370705, 1065);
INSERT INTO `sys_area` VALUES (8614067, 86, 8612759, 3, '潍城区', '山东省，潍坊市，潍城区', 370702, 1066);
INSERT INTO `sys_area` VALUES (8614068, 86, 8612759, 3, '昌乐县', '山东省，潍坊市，昌乐县', 370725, 1067);
INSERT INTO `sys_area` VALUES (8614069, 86, 8612759, 3, '坊子区', '山东省，潍坊市，坊子区', 370704, 1068);
INSERT INTO `sys_area` VALUES (8614070, 86, 8612759, 3, '临朐县', '山东省，潍坊市，临朐县', 370724, 1069);
INSERT INTO `sys_area` VALUES (8614071, 86, 8612759, 3, '高密市', '山东省，潍坊市，高密市', 370785, 1070);
INSERT INTO `sys_area` VALUES (8614072, 86, 8612759, 3, '安丘市', '山东省，潍坊市，安丘市', 370784, 1071);
INSERT INTO `sys_area` VALUES (8614073, 86, 8612759, 3, '诸城市', '山东省，潍坊市，诸城市', 370782, 1072);
INSERT INTO `sys_area` VALUES (8614074, 86, 8612759, 3, '寿光市', '山东省，潍坊市，寿光市', 370783, 1073);
INSERT INTO `sys_area` VALUES (8614075, 86, 8612759, 3, '寒亭区', '山东省，潍坊市，寒亭区', 370703, 1074);
INSERT INTO `sys_area` VALUES (8614076, 86, 8612759, 3, '昌邑市', '山东省，潍坊市，昌邑市', 370786, 1075);
INSERT INTO `sys_area` VALUES (8614200, 86, 8612760, 3, '商河县', '山东省，济南市，商河县', 370126, 1076);
INSERT INTO `sys_area` VALUES (8614201, 86, 8612760, 3, '济阳县', '山东省，济南市，济阳县', 370125, 1077);
INSERT INTO `sys_area` VALUES (8614202, 86, 8612760, 3, '章丘区', '山东省，济南市，章丘区', 370114, 1078);
INSERT INTO `sys_area` VALUES (8614203, 86, 8612760, 3, '长清区', '山东省，济南市，长清区', 370113, 1079);
INSERT INTO `sys_area` VALUES (8614204, 86, 8612760, 3, '市中区', '山东省，济南市，市中区', 370103, 1080);
INSERT INTO `sys_area` VALUES (8614205, 86, 8612760, 3, '天桥区', '山东省，济南市，天桥区', 370105, 1081);
INSERT INTO `sys_area` VALUES (8614206, 86, 8612760, 3, '槐荫区', '山东省，济南市，槐荫区', 370104, 1082);
INSERT INTO `sys_area` VALUES (8614207, 86, 8612760, 3, '平阴县', '山东省，济南市，平阴县', 370124, 1083);
INSERT INTO `sys_area` VALUES (8614208, 86, 8612760, 3, '历城区', '山东省，济南市，历城区', 370112, 1084);
INSERT INTO `sys_area` VALUES (8614209, 86, 8612760, 3, '历下区', '山东省，济南市，历下区', 370102, 1085);
INSERT INTO `sys_area` VALUES (8614353, 86, 8612761, 3, '岱岳区', '山东省，泰安市，岱岳区', 370911, 1086);
INSERT INTO `sys_area` VALUES (8614354, 86, 8612761, 3, '东平县', '山东省，泰安市，东平县', 370923, 1087);
INSERT INTO `sys_area` VALUES (8614355, 86, 8612761, 3, '新泰市', '山东省，泰安市，新泰市', 370982, 1088);
INSERT INTO `sys_area` VALUES (8614356, 86, 8612761, 3, '泰山区', '山东省，泰安市，泰山区', 370902, 1089);
INSERT INTO `sys_area` VALUES (8614357, 86, 8612761, 3, '肥城市', '山东省，泰安市，肥城市', 370983, 1090);
INSERT INTO `sys_area` VALUES (8614358, 86, 8612761, 3, '宁阳县', '山东省，泰安市，宁阳县', 370921, 1091);
INSERT INTO `sys_area` VALUES (8614446, 86, 8612762, 3, '利津县', '山东省，东营市，利津县', 370522, 1092);
INSERT INTO `sys_area` VALUES (8614447, 86, 8612762, 3, '广饶县', '山东省，东营市，广饶县', 370523, 1093);
INSERT INTO `sys_area` VALUES (8614448, 86, 8612762, 3, '东营区', '山东省，东营市，东营区', 370502, 1094);
INSERT INTO `sys_area` VALUES (8614449, 86, 8612762, 3, '垦利区', '山东省，东营市，垦利区', 370505, 1095);
INSERT INTO `sys_area` VALUES (8614450, 86, 8612762, 3, '河口区', '山东省，东营市，河口区', 370503, 1096);
INSERT INTO `sys_area` VALUES (8614502, 86, 8612763, 3, '梁山县', '山东省，济宁市，梁山县', 370832, 1097);
INSERT INTO `sys_area` VALUES (8614503, 86, 8612763, 3, '曲阜市', '山东省，济宁市，曲阜市', 370881, 1098);
INSERT INTO `sys_area` VALUES (8614504, 86, 8612763, 3, '兖州区', '山东省，济宁市，兖州区', 370812, 1099);
INSERT INTO `sys_area` VALUES (8614505, 86, 8612763, 3, '邹城市', '山东省，济宁市，邹城市', 370883, 1100);
INSERT INTO `sys_area` VALUES (8614506, 86, 8612763, 3, '汶上县', '山东省，济宁市，汶上县', 370830, 1101);
INSERT INTO `sys_area` VALUES (8614507, 86, 8612763, 3, '泗水县', '山东省，济宁市，泗水县', 370831, 1102);
INSERT INTO `sys_area` VALUES (8614508, 86, 8612763, 3, '鱼台县', '山东省，济宁市，鱼台县', 370827, 1103);
INSERT INTO `sys_area` VALUES (8614509, 86, 8612763, 3, '金乡县', '山东省，济宁市，金乡县', 370828, 1104);
INSERT INTO `sys_area` VALUES (8614510, 86, 8612763, 3, '任城区', '山东省，济宁市，任城区', 370811, 1105);
INSERT INTO `sys_area` VALUES (8614511, 86, 8612763, 3, '嘉祥县', '山东省，济宁市，嘉祥县', 370829, 1106);
INSERT INTO `sys_area` VALUES (8614512, 86, 8612763, 3, '微山县', '山东省，济宁市，微山县', 370826, 1107);
INSERT INTO `sys_area` VALUES (8614672, 86, 8612764, 3, '市中区', '山东省，枣庄市，市中区', 370402, 1108);
INSERT INTO `sys_area` VALUES (8614673, 86, 8612764, 3, '薛城区', '山东省，枣庄市，薛城区', 370403, 1109);
INSERT INTO `sys_area` VALUES (8614674, 86, 8612764, 3, '山亭区', '山东省，枣庄市，山亭区', 370406, 1110);
INSERT INTO `sys_area` VALUES (8614675, 86, 8612764, 3, '峄城区', '山东省，枣庄市，峄城区', 370404, 1111);
INSERT INTO `sys_area` VALUES (8614676, 86, 8612764, 3, '台儿庄区', '山东省，枣庄市，台儿庄区', 370405, 1112);
INSERT INTO `sys_area` VALUES (8614677, 86, 8612764, 3, '滕州市', '山东省，枣庄市，滕州市', 370481, 1113);
INSERT INTO `sys_area` VALUES (8614742, 86, 8600009, 2, '商洛市', '陕西省，商洛市', 611000, 1114);
INSERT INTO `sys_area` VALUES (8614743, 86, 8600009, 2, '西安市', '陕西省，西安市', 610100, 1115);
INSERT INTO `sys_area` VALUES (8614744, 86, 8600009, 2, '汉中市', '陕西省，汉中市', 610700, 1116);
INSERT INTO `sys_area` VALUES (8614745, 86, 8600009, 2, '安康市', '陕西省，安康市', 610900, 1117);
INSERT INTO `sys_area` VALUES (8614746, 86, 8600009, 2, '榆林市', '陕西省，榆林市', 610800, 1118);
INSERT INTO `sys_area` VALUES (8614747, 86, 8600009, 2, '铜川市', '陕西省，铜川市', 610200, 1119);
INSERT INTO `sys_area` VALUES (8614748, 86, 8600009, 2, '咸阳市', '陕西省，咸阳市', 610400, 1120);
INSERT INTO `sys_area` VALUES (8614749, 86, 8600009, 2, '宝鸡市', '陕西省，宝鸡市', 610300, 1121);
INSERT INTO `sys_area` VALUES (8614750, 86, 8600009, 2, '延安市', '陕西省，延安市', 610600, 1122);
INSERT INTO `sys_area` VALUES (8614751, 86, 8600009, 2, '渭南市', '陕西省，渭南市', 610500, 1123);
INSERT INTO `sys_area` VALUES (8614752, 86, 8614742, 3, '柞水县', '陕西省，商洛市，柞水县', 611026, 1124);
INSERT INTO `sys_area` VALUES (8614753, 86, 8614742, 3, '洛南县', '陕西省，商洛市，洛南县', 611021, 1125);
INSERT INTO `sys_area` VALUES (8614754, 86, 8614742, 3, '商州区', '陕西省，商洛市，商州区', 611002, 1126);
INSERT INTO `sys_area` VALUES (8614755, 86, 8614742, 3, '丹凤县', '陕西省，商洛市，丹凤县', 611022, 1127);
INSERT INTO `sys_area` VALUES (8614756, 86, 8614742, 3, '商南县', '陕西省，商洛市，商南县', 611023, 1128);
INSERT INTO `sys_area` VALUES (8614757, 86, 8614742, 3, '山阳县', '陕西省，商洛市，山阳县', 611024, 1129);
INSERT INTO `sys_area` VALUES (8614758, 86, 8614742, 3, '镇安县', '陕西省，商洛市，镇安县', 611025, 1130);
INSERT INTO `sys_area` VALUES (8614870, 86, 8614743, 3, '高陵区', '陕西省，西安市，高陵区', 610117, 1131);
INSERT INTO `sys_area` VALUES (8614871, 86, 8614743, 3, '临潼区', '陕西省，西安市，临潼区', 610115, 1132);
INSERT INTO `sys_area` VALUES (8614872, 86, 8614743, 3, '阎良区', '陕西省，西安市，阎良区', 610114, 1133);
INSERT INTO `sys_area` VALUES (8614873, 86, 8614743, 3, '长安区', '陕西省，西安市，长安区', 610116, 1134);
INSERT INTO `sys_area` VALUES (8614874, 86, 8614743, 3, '鄠邑区', '陕西省，西安市，鄠邑区', 610118, 1135);
INSERT INTO `sys_area` VALUES (8614875, 86, 8614743, 3, '蓝田县', '陕西省，西安市，蓝田县', 610122, 1136);
INSERT INTO `sys_area` VALUES (8614876, 86, 8614743, 3, '未央区', '陕西省，西安市，未央区', 610112, 1137);
INSERT INTO `sys_area` VALUES (8614877, 86, 8614743, 3, '碑林区', '陕西省，西安市，碑林区', 610103, 1138);
INSERT INTO `sys_area` VALUES (8614878, 86, 8614743, 3, '莲湖区', '陕西省，西安市，莲湖区', 610104, 1139);
INSERT INTO `sys_area` VALUES (8614879, 86, 8614743, 3, '雁塔区', '陕西省，西安市，雁塔区', 610113, 1140);
INSERT INTO `sys_area` VALUES (8614880, 86, 8614743, 3, '周至县', '陕西省，西安市，周至县', 610124, 1141);
INSERT INTO `sys_area` VALUES (8614881, 86, 8614743, 3, '新城区', '陕西省，西安市，新城区', 610102, 1142);
INSERT INTO `sys_area` VALUES (8614882, 86, 8614743, 3, '灞桥区', '陕西省，西安市，灞桥区', 610111, 1143);
INSERT INTO `sys_area` VALUES (8615052, 86, 8614744, 3, '留坝县', '陕西省，汉中市，留坝县', 610729, 1144);
INSERT INTO `sys_area` VALUES (8615053, 86, 8614744, 3, '汉台区', '陕西省，汉中市，汉台区', 610702, 1145);
INSERT INTO `sys_area` VALUES (8615054, 86, 8614744, 3, '洋县', '陕西省，汉中市，洋县', 610723, 1146);
INSERT INTO `sys_area` VALUES (8615055, 86, 8614744, 3, '城固县', '陕西省，汉中市，城固县', 610722, 1147);
INSERT INTO `sys_area` VALUES (8615056, 86, 8614744, 3, '佛坪县', '陕西省，汉中市，佛坪县', 610730, 1148);
INSERT INTO `sys_area` VALUES (8615057, 86, 8614744, 3, '勉县', '陕西省，汉中市，勉县', 610725, 1149);
INSERT INTO `sys_area` VALUES (8615058, 86, 8614744, 3, '略阳县', '陕西省，汉中市，略阳县', 610727, 1150);
INSERT INTO `sys_area` VALUES (8615059, 86, 8614744, 3, '南郑区', '陕西省，汉中市，南郑区', 610703, 1151);
INSERT INTO `sys_area` VALUES (8615060, 86, 8614744, 3, '西乡县', '陕西省，汉中市，西乡县', 610724, 1152);
INSERT INTO `sys_area` VALUES (8615061, 86, 8614744, 3, '镇巴县', '陕西省，汉中市，镇巴县', 610728, 1153);
INSERT INTO `sys_area` VALUES (8615062, 86, 8614744, 3, '宁强县', '陕西省，汉中市，宁强县', 610726, 1154);
INSERT INTO `sys_area` VALUES (8615240, 86, 8614745, 3, '宁陕县', '陕西省，安康市，宁陕县', 610923, 1155);
INSERT INTO `sys_area` VALUES (8615241, 86, 8614745, 3, '石泉县', '陕西省，安康市，石泉县', 610922, 1156);
INSERT INTO `sys_area` VALUES (8615242, 86, 8614745, 3, '旬阳县', '陕西省，安康市，旬阳县', 610928, 1157);
INSERT INTO `sys_area` VALUES (8615243, 86, 8614745, 3, '汉滨区', '陕西省，安康市，汉滨区', 610902, 1158);
INSERT INTO `sys_area` VALUES (8615244, 86, 8614745, 3, '汉阴县', '陕西省，安康市，汉阴县', 610921, 1159);
INSERT INTO `sys_area` VALUES (8615245, 86, 8614745, 3, '紫阳县', '陕西省，安康市，紫阳县', 610924, 1160);
INSERT INTO `sys_area` VALUES (8615246, 86, 8614745, 3, '白河县', '陕西省，安康市，白河县', 610929, 1161);
INSERT INTO `sys_area` VALUES (8615247, 86, 8614745, 3, '平利县', '陕西省，安康市，平利县', 610926, 1162);
INSERT INTO `sys_area` VALUES (8615248, 86, 8614745, 3, '镇坪县', '陕西省，安康市，镇坪县', 610927, 1163);
INSERT INTO `sys_area` VALUES (8615249, 86, 8614745, 3, '岚皋县', '陕西省，安康市，岚皋县', 610925, 1164);
INSERT INTO `sys_area` VALUES (8615390, 86, 8614746, 3, '神木市', '陕西省，榆林市，神木市', 610881, 1165);
INSERT INTO `sys_area` VALUES (8615391, 86, 8614746, 3, '榆阳区', '陕西省，榆林市，榆阳区', 610802, 1166);
INSERT INTO `sys_area` VALUES (8615392, 86, 8614746, 3, '府谷县', '陕西省，榆林市，府谷县', 610822, 1167);
INSERT INTO `sys_area` VALUES (8615393, 86, 8614746, 3, '子洲县', '陕西省，榆林市，子洲县', 610831, 1168);
INSERT INTO `sys_area` VALUES (8615394, 86, 8614746, 3, '横山区', '陕西省，榆林市，横山区', 610803, 1169);
INSERT INTO `sys_area` VALUES (8615395, 86, 8614746, 3, '佳县', '陕西省，榆林市，佳县', 610828, 1170);
INSERT INTO `sys_area` VALUES (8615396, 86, 8614746, 3, '靖边县', '陕西省，榆林市，靖边县', 610824, 1171);
INSERT INTO `sys_area` VALUES (8615397, 86, 8614746, 3, '清涧县', '陕西省，榆林市，清涧县', 610830, 1172);
INSERT INTO `sys_area` VALUES (8615398, 86, 8614746, 3, '绥德县', '陕西省，榆林市，绥德县', 610826, 1173);
INSERT INTO `sys_area` VALUES (8615399, 86, 8614746, 3, '吴堡县', '陕西省，榆林市，吴堡县', 610829, 1174);
INSERT INTO `sys_area` VALUES (8615400, 86, 8614746, 3, '米脂县', '陕西省，榆林市，米脂县', 610827, 1175);
INSERT INTO `sys_area` VALUES (8615401, 86, 8614746, 3, '定边县', '陕西省，榆林市，定边县', 610825, 1176);
INSERT INTO `sys_area` VALUES (8615573, 86, 8614747, 3, '耀州区', '陕西省，铜川市，耀州区', 610204, 1177);
INSERT INTO `sys_area` VALUES (8615574, 86, 8614747, 3, '宜君县', '陕西省，铜川市，宜君县', 610222, 1178);
INSERT INTO `sys_area` VALUES (8615575, 86, 8614747, 3, '印台区', '陕西省，铜川市，印台区', 610203, 1179);
INSERT INTO `sys_area` VALUES (8615576, 86, 8614747, 3, '王益区', '陕西省，铜川市，王益区', 610202, 1180);
INSERT INTO `sys_area` VALUES (8615615, 86, 8614748, 3, '旬邑县', '陕西省，咸阳市，旬邑县', 610429, 1181);
INSERT INTO `sys_area` VALUES (8615616, 86, 8614748, 3, '长武县', '陕西省，咸阳市，长武县', 610428, 1182);
INSERT INTO `sys_area` VALUES (8615617, 86, 8614748, 3, '彬县', '陕西省，咸阳市，彬县', 610427, 1183);
INSERT INTO `sys_area` VALUES (8615618, 86, 8614748, 3, '永寿县', '陕西省，咸阳市，永寿县', 610426, 1184);
INSERT INTO `sys_area` VALUES (8615619, 86, 8614748, 3, '淳化县', '陕西省，咸阳市，淳化县', 610430, 1185);
INSERT INTO `sys_area` VALUES (8615620, 86, 8614748, 3, '乾县', '陕西省，咸阳市，乾县', 610424, 1186);
INSERT INTO `sys_area` VALUES (8615621, 86, 8614748, 3, '礼泉县', '陕西省，咸阳市，礼泉县', 610425, 1187);
INSERT INTO `sys_area` VALUES (8615622, 86, 8614748, 3, '三原县', '陕西省，咸阳市，三原县', 610422, 1188);
INSERT INTO `sys_area` VALUES (8615623, 86, 8614748, 3, '秦都区', '陕西省，咸阳市，秦都区', 610402, 1189);
INSERT INTO `sys_area` VALUES (8615624, 86, 8614748, 3, '渭城区', '陕西省，咸阳市，渭城区', 610404, 1190);
INSERT INTO `sys_area` VALUES (8615625, 86, 8614748, 3, '兴平市', '陕西省，咸阳市，兴平市', 610481, 1191);
INSERT INTO `sys_area` VALUES (8615626, 86, 8614748, 3, '武功县', '陕西省，咸阳市，武功县', 610431, 1192);
INSERT INTO `sys_area` VALUES (8615627, 86, 8614748, 3, '杨陵区', '陕西省，咸阳市，杨陵区', 610403, 1193);
INSERT INTO `sys_area` VALUES (8615628, 86, 8614748, 3, '泾阳县', '陕西省，咸阳市，泾阳县', 610423, 1194);
INSERT INTO `sys_area` VALUES (8615770, 86, 8614749, 3, '陇县', '陕西省，宝鸡市，陇县', 610327, 1195);
INSERT INTO `sys_area` VALUES (8615771, 86, 8614749, 3, '麟游县', '陕西省，宝鸡市，麟游县', 610329, 1196);
INSERT INTO `sys_area` VALUES (8615772, 86, 8614749, 3, '千阳县', '陕西省，宝鸡市，千阳县', 610328, 1197);
INSERT INTO `sys_area` VALUES (8615773, 86, 8614749, 3, '渭滨区', '陕西省，宝鸡市，渭滨区', 610302, 1198);
INSERT INTO `sys_area` VALUES (8615774, 86, 8614749, 3, '金台区', '陕西省，宝鸡市，金台区', 610303, 1199);
INSERT INTO `sys_area` VALUES (8615775, 86, 8614749, 3, '岐山县', '陕西省，宝鸡市，岐山县', 610323, 1200);
INSERT INTO `sys_area` VALUES (8615776, 86, 8614749, 3, '凤县', '陕西省，宝鸡市，凤县', 610330, 1201);
INSERT INTO `sys_area` VALUES (8615777, 86, 8614749, 3, '眉县', '陕西省，宝鸡市，眉县', 610326, 1202);
INSERT INTO `sys_area` VALUES (8615778, 86, 8614749, 3, '扶风县', '陕西省，宝鸡市，扶风县', 610324, 1203);
INSERT INTO `sys_area` VALUES (8615779, 86, 8614749, 3, '太白县', '陕西省，宝鸡市，太白县', 610331, 1204);
INSERT INTO `sys_area` VALUES (8615780, 86, 8614749, 3, '陈仓区', '陕西省，宝鸡市，陈仓区', 610304, 1205);
INSERT INTO `sys_area` VALUES (8615781, 86, 8614749, 3, '凤翔县', '陕西省，宝鸡市，凤翔县', 610322, 1206);
INSERT INTO `sys_area` VALUES (8615900, 86, 8614750, 3, '吴起县', '陕西省，延安市，吴起县', 610626, 1207);
INSERT INTO `sys_area` VALUES (8615901, 86, 8614750, 3, '子长县', '陕西省，延安市，子长县', 610623, 1208);
INSERT INTO `sys_area` VALUES (8615902, 86, 8614750, 3, '延长县', '陕西省，延安市，延长县', 610621, 1209);
INSERT INTO `sys_area` VALUES (8615903, 86, 8614750, 3, '宝塔区', '陕西省，延安市，宝塔区', 610602, 1210);
INSERT INTO `sys_area` VALUES (8615904, 86, 8614750, 3, '安塞区', '陕西省，延安市，安塞区', 610603, 1211);
INSERT INTO `sys_area` VALUES (8615905, 86, 8614750, 3, '宜川县', '陕西省，延安市，宜川县', 610630, 1212);
INSERT INTO `sys_area` VALUES (8615906, 86, 8614750, 3, '延川县', '陕西省，延安市，延川县', 610622, 1213);
INSERT INTO `sys_area` VALUES (8615907, 86, 8614750, 3, '志丹县', '陕西省，延安市，志丹县', 610625, 1214);
INSERT INTO `sys_area` VALUES (8615908, 86, 8614750, 3, '甘泉县', '陕西省，延安市，甘泉县', 610627, 1215);
INSERT INTO `sys_area` VALUES (8615909, 86, 8614750, 3, '洛川县', '陕西省，延安市，洛川县', 610629, 1216);
INSERT INTO `sys_area` VALUES (8615910, 86, 8614750, 3, '富县', '陕西省，延安市，富县', 610628, 1217);
INSERT INTO `sys_area` VALUES (8615911, 86, 8614750, 3, '黄陵县', '陕西省，延安市，黄陵县', 610632, 1218);
INSERT INTO `sys_area` VALUES (8615912, 86, 8614750, 3, '黄龙县', '陕西省，延安市，黄龙县', 610631, 1219);
INSERT INTO `sys_area` VALUES (8616025, 86, 8614751, 3, '韩城市', '陕西省，渭南市，韩城市', 610581, 1220);
INSERT INTO `sys_area` VALUES (8616026, 86, 8614751, 3, '白水县', '陕西省，渭南市，白水县', 610527, 1221);
INSERT INTO `sys_area` VALUES (8616027, 86, 8614751, 3, '富平县', '陕西省，渭南市，富平县', 610528, 1222);
INSERT INTO `sys_area` VALUES (8616028, 86, 8614751, 3, '大荔县', '陕西省，渭南市，大荔县', 610523, 1223);
INSERT INTO `sys_area` VALUES (8616029, 86, 8614751, 3, '临渭区', '陕西省，渭南市，临渭区', 610502, 1224);
INSERT INTO `sys_area` VALUES (8616030, 86, 8614751, 3, '华州区', '陕西省，渭南市，华州区', 610503, 1225);
INSERT INTO `sys_area` VALUES (8616031, 86, 8614751, 3, '华阴市', '陕西省，渭南市，华阴市', 610582, 1226);
INSERT INTO `sys_area` VALUES (8616032, 86, 8614751, 3, '潼关县', '陕西省，渭南市，潼关县', 610522, 1227);
INSERT INTO `sys_area` VALUES (8616033, 86, 8614751, 3, '合阳县', '陕西省，渭南市，合阳县', 610524, 1228);
INSERT INTO `sys_area` VALUES (8616034, 86, 8614751, 3, '澄城县', '陕西省，渭南市，澄城县', 610525, 1229);
INSERT INTO `sys_area` VALUES (8616035, 86, 8614751, 3, '蒲城县', '陕西省，渭南市，蒲城县', 610526, 1230);
INSERT INTO `sys_area` VALUES (8616170, 86, 8610, 2, '上海城区', '上海市，上海城区', 310100, 1231);
INSERT INTO `sys_area` VALUES (8616171, 86, 8616170, 3, '崇明区', '上海市，上海城区，崇明区', 310151, 1232);
INSERT INTO `sys_area` VALUES (8616172, 86, 8616170, 3, '奉贤区', '上海市，上海城区，奉贤区', 310120, 1233);
INSERT INTO `sys_area` VALUES (8616173, 86, 8616170, 3, '浦东新区', '上海市，上海城区，浦东新区', 310115, 1234);
INSERT INTO `sys_area` VALUES (8616174, 86, 8616170, 3, '金山区', '上海市，上海城区，金山区', 310116, 1235);
INSERT INTO `sys_area` VALUES (8616175, 86, 8616170, 3, '宝山区', '上海市，上海城区，宝山区', 310113, 1236);
INSERT INTO `sys_area` VALUES (8616176, 86, 8616170, 3, '黄浦区', '上海市，上海城区，黄浦区', 310101, 1237);
INSERT INTO `sys_area` VALUES (8616177, 86, 8616170, 3, '嘉定区', '上海市，上海城区，嘉定区', 310114, 1238);
INSERT INTO `sys_area` VALUES (8616178, 86, 8616170, 3, '徐汇区', '上海市，上海城区，徐汇区', 310104, 1239);
INSERT INTO `sys_area` VALUES (8616179, 86, 8616170, 3, '普陀区', '上海市，上海城区，普陀区', 310107, 1240);
INSERT INTO `sys_area` VALUES (8616180, 86, 8616170, 3, '闵行区', '上海市，上海城区，闵行区', 310112, 1241);
INSERT INTO `sys_area` VALUES (8616181, 86, 8616170, 3, '杨浦区', '上海市，上海城区，杨浦区', 310110, 1242);
INSERT INTO `sys_area` VALUES (8616182, 86, 8616170, 3, '青浦区', '上海市，上海城区，青浦区', 310118, 1243);
INSERT INTO `sys_area` VALUES (8616183, 86, 8616170, 3, '松江区', '上海市，上海城区，松江区', 310117, 1244);
INSERT INTO `sys_area` VALUES (8616184, 86, 8616170, 3, '长宁区', '上海市，上海城区，长宁区', 310105, 1245);
INSERT INTO `sys_area` VALUES (8616185, 86, 8616170, 3, '虹口区', '上海市，上海城区，虹口区', 310109, 1246);
INSERT INTO `sys_area` VALUES (8616186, 86, 8616170, 3, '静安区', '上海市，上海城区，静安区', 310106, 1247);
INSERT INTO `sys_area` VALUES (8616416, 86, 8600011, 2, '铜仁市', '贵州省，铜仁市', 520600, 1248);
INSERT INTO `sys_area` VALUES (8616417, 86, 8600011, 2, '六盘水市', '贵州省，六盘水市', 520200, 1249);
INSERT INTO `sys_area` VALUES (8616418, 86, 8600011, 2, '黔东南苗族侗族自治州', '贵州省，黔东南苗族侗族自治州', 522600, 1250);
INSERT INTO `sys_area` VALUES (8616419, 86, 8600011, 2, '遵义市', '贵州省，遵义市', 520300, 1251);
INSERT INTO `sys_area` VALUES (8616420, 86, 8600011, 2, '黔南布依族苗族自治州', '贵州省，黔南布依族苗族自治州', 522700, 1252);
INSERT INTO `sys_area` VALUES (8616421, 86, 8600011, 2, '黔西南布依族苗族自治州', '贵州省，黔西南布依族苗族自治州', 522300, 1253);
INSERT INTO `sys_area` VALUES (8616422, 86, 8600011, 2, '安顺市', '贵州省，安顺市', 520400, 1254);
INSERT INTO `sys_area` VALUES (8616423, 86, 8600011, 2, '毕节市', '贵州省，毕节市', 520500, 1255);
INSERT INTO `sys_area` VALUES (8616424, 86, 8600011, 2, '贵阳市', '贵州省，贵阳市', 520100, 1256);
INSERT INTO `sys_area` VALUES (8616425, 86, 8616416, 3, '印江土家族苗族自治县', '贵州省，铜仁市，印江土家族苗族自治县', 520625, 1257);
INSERT INTO `sys_area` VALUES (8616426, 86, 8616416, 3, '玉屏侗族自治县', '贵州省，铜仁市，玉屏侗族自治县', 520622, 1258);
INSERT INTO `sys_area` VALUES (8616427, 86, 8616416, 3, '石阡县', '贵州省，铜仁市，石阡县', 520623, 1259);
INSERT INTO `sys_area` VALUES (8616428, 86, 8616416, 3, '碧江区', '贵州省，铜仁市，碧江区', 520602, 1260);
INSERT INTO `sys_area` VALUES (8616429, 86, 8616416, 3, '思南县', '贵州省，铜仁市，思南县', 520624, 1261);
INSERT INTO `sys_area` VALUES (8616430, 86, 8616416, 3, '德江县', '贵州省，铜仁市，德江县', 520626, 1262);
INSERT INTO `sys_area` VALUES (8616431, 86, 8616416, 3, '沿河土家族自治县', '贵州省，铜仁市，沿河土家族自治县', 520627, 1263);
INSERT INTO `sys_area` VALUES (8616432, 86, 8616416, 3, '江口县', '贵州省，铜仁市，江口县', 520621, 1264);
INSERT INTO `sys_area` VALUES (8616433, 86, 8616416, 3, '万山区', '贵州省，铜仁市，万山区', 520603, 1265);
INSERT INTO `sys_area` VALUES (8616434, 86, 8616416, 3, '松桃苗族自治县', '贵州省，铜仁市，松桃苗族自治县', 520628, 1266);
INSERT INTO `sys_area` VALUES (8616606, 86, 8616417, 3, '钟山区', '贵州省，六盘水市，钟山区', 520201, 1267);
INSERT INTO `sys_area` VALUES (8616607, 86, 8616417, 3, '六枝特区', '贵州省，六盘水市，六枝特区', 520203, 1268);
INSERT INTO `sys_area` VALUES (8616608, 86, 8616417, 3, '盘州市', '贵州省，六盘水市，盘州市', 520281, 1269);
INSERT INTO `sys_area` VALUES (8616609, 86, 8616417, 3, '水城县', '贵州省，六盘水市，水城县', 520221, 1270);
INSERT INTO `sys_area` VALUES (8616697, 86, 8616418, 3, '三穗县', '贵州省，黔东南苗族侗族自治州，三穗县', 522624, 1271);
INSERT INTO `sys_area` VALUES (8616698, 86, 8616418, 3, '锦屏县', '贵州省，黔东南苗族侗族自治州，锦屏县', 522628, 1272);
INSERT INTO `sys_area` VALUES (8616699, 86, 8616418, 3, '剑河县', '贵州省，黔东南苗族侗族自治州，剑河县', 522629, 1273);
INSERT INTO `sys_area` VALUES (8616700, 86, 8616418, 3, '天柱县', '贵州省，黔东南苗族侗族自治州，天柱县', 522627, 1274);
INSERT INTO `sys_area` VALUES (8616701, 86, 8616418, 3, '从江县', '贵州省，黔东南苗族侗族自治州，从江县', 522633, 1275);
INSERT INTO `sys_area` VALUES (8616702, 86, 8616418, 3, '雷山县', '贵州省，黔东南苗族侗族自治州，雷山县', 522634, 1276);
INSERT INTO `sys_area` VALUES (8616703, 86, 8616418, 3, '黎平县', '贵州省，黔东南苗族侗族自治州，黎平县', 522631, 1277);
INSERT INTO `sys_area` VALUES (8616704, 86, 8616418, 3, '榕江县', '贵州省，黔东南苗族侗族自治州，榕江县', 522632, 1278);
INSERT INTO `sys_area` VALUES (8616705, 86, 8616418, 3, '施秉县', '贵州省，黔东南苗族侗族自治州，施秉县', 522623, 1279);
INSERT INTO `sys_area` VALUES (8616706, 86, 8616418, 3, '镇远县', '贵州省，黔东南苗族侗族自治州，镇远县', 522625, 1280);
INSERT INTO `sys_area` VALUES (8616707, 86, 8616418, 3, '凯里市', '贵州省，黔东南苗族侗族自治州，凯里市', 522601, 1281);
INSERT INTO `sys_area` VALUES (8616708, 86, 8616418, 3, '丹寨县', '贵州省，黔东南苗族侗族自治州，丹寨县', 522636, 1282);
INSERT INTO `sys_area` VALUES (8616709, 86, 8616418, 3, '麻江县', '贵州省，黔东南苗族侗族自治州，麻江县', 522635, 1283);
INSERT INTO `sys_area` VALUES (8616710, 86, 8616418, 3, '黄平县', '贵州省，黔东南苗族侗族自治州，黄平县', 522622, 1284);
INSERT INTO `sys_area` VALUES (8616711, 86, 8616418, 3, '台江县', '贵州省，黔东南苗族侗族自治州，台江县', 522630, 1285);
INSERT INTO `sys_area` VALUES (8616712, 86, 8616418, 3, '岑巩县', '贵州省，黔东南苗族侗族自治州，岑巩县', 522626, 1286);
INSERT INTO `sys_area` VALUES (8616917, 86, 8616419, 3, '桐梓县', '贵州省，遵义市，桐梓县', 520322, 1287);
INSERT INTO `sys_area` VALUES (8616918, 86, 8616419, 3, '湄潭县', '贵州省，遵义市，湄潭县', 520328, 1288);
INSERT INTO `sys_area` VALUES (8616919, 86, 8616419, 3, '绥阳县', '贵州省，遵义市，绥阳县', 520323, 1289);
INSERT INTO `sys_area` VALUES (8616920, 86, 8616419, 3, '余庆县', '贵州省，遵义市，余庆县', 520329, 1290);
INSERT INTO `sys_area` VALUES (8616921, 86, 8616419, 3, '红花岗区', '贵州省，遵义市，红花岗区', 520302, 1291);
INSERT INTO `sys_area` VALUES (8616922, 86, 8616419, 3, '汇川区', '贵州省，遵义市，汇川区', 520303, 1292);
INSERT INTO `sys_area` VALUES (8616923, 86, 8616419, 3, '凤冈县', '贵州省，遵义市，凤冈县', 520327, 1293);
INSERT INTO `sys_area` VALUES (8616924, 86, 8616419, 3, '务川仡佬族苗族自治县', '贵州省，遵义市，务川仡佬族苗族自治县', 520326, 1294);
INSERT INTO `sys_area` VALUES (8616925, 86, 8616419, 3, '仁怀市', '贵州省，遵义市，仁怀市', 520382, 1295);
INSERT INTO `sys_area` VALUES (8616926, 86, 8616419, 3, '播州区', '贵州省，遵义市，播州区', 520304, 1296);
INSERT INTO `sys_area` VALUES (8616927, 86, 8616419, 3, '赤水市', '贵州省，遵义市，赤水市', 520381, 1297);
INSERT INTO `sys_area` VALUES (8616928, 86, 8616419, 3, '习水县', '贵州省，遵义市，习水县', 520330, 1298);
INSERT INTO `sys_area` VALUES (8616929, 86, 8616419, 3, '正安县', '贵州省，遵义市，正安县', 520324, 1299);
INSERT INTO `sys_area` VALUES (8616930, 86, 8616419, 3, '道真仡佬族苗族自治县', '贵州省，遵义市，道真仡佬族苗族自治县', 520325, 1300);
INSERT INTO `sys_area` VALUES (8617179, 86, 8616420, 3, '都匀市', '贵州省，黔南布依族苗族自治州，都匀市', 522701, 1301);
INSERT INTO `sys_area` VALUES (8617180, 86, 8616420, 3, '惠水县', '贵州省，黔南布依族苗族自治州，惠水县', 522731, 1302);
INSERT INTO `sys_area` VALUES (8617181, 86, 8616420, 3, '平塘县', '贵州省，黔南布依族苗族自治州，平塘县', 522727, 1303);
INSERT INTO `sys_area` VALUES (8617182, 86, 8616420, 3, '独山县', '贵州省，黔南布依族苗族自治州，独山县', 522726, 1304);
INSERT INTO `sys_area` VALUES (8617183, 86, 8616420, 3, '罗甸县', '贵州省，黔南布依族苗族自治州，罗甸县', 522728, 1305);
INSERT INTO `sys_area` VALUES (8617184, 86, 8616420, 3, '荔波县', '贵州省，黔南布依族苗族自治州，荔波县', 522722, 1306);
INSERT INTO `sys_area` VALUES (8617185, 86, 8616420, 3, '长顺县', '贵州省，黔南布依族苗族自治州，长顺县', 522729, 1307);
INSERT INTO `sys_area` VALUES (8617186, 86, 8616420, 3, '龙里县', '贵州省，黔南布依族苗族自治州，龙里县', 522730, 1308);
INSERT INTO `sys_area` VALUES (8617187, 86, 8616420, 3, '贵定县', '贵州省，黔南布依族苗族自治州，贵定县', 522723, 1309);
INSERT INTO `sys_area` VALUES (8617188, 86, 8616420, 3, '三都水族自治县', '贵州省，黔南布依族苗族自治州，三都水族自治县', 522732, 1310);
INSERT INTO `sys_area` VALUES (8617189, 86, 8616420, 3, '福泉市', '贵州省，黔南布依族苗族自治州，福泉市', 522702, 1311);
INSERT INTO `sys_area` VALUES (8617190, 86, 8616420, 3, '瓮安县', '贵州省，黔南布依族苗族自治州，瓮安县', 522725, 1312);
INSERT INTO `sys_area` VALUES (8617365, 86, 8616421, 3, '兴仁县', '贵州省，黔西南布依族苗族自治州，兴仁县', 522322, 1313);
INSERT INTO `sys_area` VALUES (8617366, 86, 8616421, 3, '兴义市', '贵州省，黔西南布依族苗族自治州，兴义市', 522301, 1314);
INSERT INTO `sys_area` VALUES (8617367, 86, 8616421, 3, '安龙县', '贵州省，黔西南布依族苗族自治州，安龙县', 522328, 1315);
INSERT INTO `sys_area` VALUES (8617368, 86, 8616421, 3, '册亨县', '贵州省，黔西南布依族苗族自治州，册亨县', 522327, 1316);
INSERT INTO `sys_area` VALUES (8617369, 86, 8616421, 3, '晴隆县', '贵州省，黔西南布依族苗族自治州，晴隆县', 522324, 1317);
INSERT INTO `sys_area` VALUES (8617370, 86, 8616421, 3, '普安县', '贵州省，黔西南布依族苗族自治州，普安县', 522323, 1318);
INSERT INTO `sys_area` VALUES (8617371, 86, 8616421, 3, '贞丰县', '贵州省，黔西南布依族苗族自治州，贞丰县', 522325, 1319);
INSERT INTO `sys_area` VALUES (8617372, 86, 8616421, 3, '望谟县', '贵州省，黔西南布依族苗族自治州，望谟县', 522326, 1320);
INSERT INTO `sys_area` VALUES (8617500, 86, 8616422, 3, '西秀区', '贵州省，安顺市，西秀区', 520402, 1321);
INSERT INTO `sys_area` VALUES (8617501, 86, 8616422, 3, '普定县', '贵州省，安顺市，普定县', 520422, 1322);
INSERT INTO `sys_area` VALUES (8617502, 86, 8616422, 3, '紫云苗族布依族自治县', '贵州省，安顺市，紫云苗族布依族自治县', 520425, 1323);
INSERT INTO `sys_area` VALUES (8617503, 86, 8616422, 3, '镇宁布依族苗族自治县', '贵州省，安顺市，镇宁布依族苗族自治县', 520423, 1324);
INSERT INTO `sys_area` VALUES (8617504, 86, 8616422, 3, '关岭布依族苗族自治县', '贵州省，安顺市，关岭布依族苗族自治县', 520424, 1325);
INSERT INTO `sys_area` VALUES (8617505, 86, 8616422, 3, '平坝区', '贵州省，安顺市，平坝区', 520403, 1326);
INSERT INTO `sys_area` VALUES (8617594, 86, 8616423, 3, '七星关区', '贵州省，毕节市，七星关区', 520502, 1327);
INSERT INTO `sys_area` VALUES (8617595, 86, 8616423, 3, '大方县', '贵州省，毕节市，大方县', 520521, 1328);
INSERT INTO `sys_area` VALUES (8617596, 86, 8616423, 3, '黔西县', '贵州省，毕节市，黔西县', 520522, 1329);
INSERT INTO `sys_area` VALUES (8617597, 86, 8616423, 3, '金沙县', '贵州省，毕节市，金沙县', 520523, 1330);
INSERT INTO `sys_area` VALUES (8617598, 86, 8616423, 3, '纳雍县', '贵州省，毕节市，纳雍县', 520525, 1331);
INSERT INTO `sys_area` VALUES (8617599, 86, 8616423, 3, '织金县', '贵州省，毕节市，织金县', 520524, 1332);
INSERT INTO `sys_area` VALUES (8617600, 86, 8616423, 3, '赫章县', '贵州省，毕节市，赫章县', 520527, 1333);
INSERT INTO `sys_area` VALUES (8617601, 86, 8616423, 3, '威宁彝族回族苗族自治县', '贵州省，毕节市，威宁彝族回族苗族自治县', 520526, 1334);
INSERT INTO `sys_area` VALUES (8617860, 86, 8616424, 3, '开阳县', '贵州省，贵阳市，开阳县', 520121, 1335);
INSERT INTO `sys_area` VALUES (8617861, 86, 8616424, 3, '白云区', '贵州省，贵阳市，白云区', 520113, 1336);
INSERT INTO `sys_area` VALUES (8617862, 86, 8616424, 3, '乌当区', '贵州省，贵阳市，乌当区', 520112, 1337);
INSERT INTO `sys_area` VALUES (8617863, 86, 8616424, 3, '观山湖区', '贵州省，贵阳市，观山湖区', 520115, 1338);
INSERT INTO `sys_area` VALUES (8617864, 86, 8616424, 3, '息烽县', '贵州省，贵阳市，息烽县', 520122, 1339);
INSERT INTO `sys_area` VALUES (8617865, 86, 8616424, 3, '修文县', '贵州省，贵阳市，修文县', 520123, 1340);
INSERT INTO `sys_area` VALUES (8617866, 86, 8616424, 3, '清镇市', '贵州省，贵阳市，清镇市', 520181, 1341);
INSERT INTO `sys_area` VALUES (8617867, 86, 8616424, 3, '花溪区', '贵州省，贵阳市，花溪区', 520111, 1342);
INSERT INTO `sys_area` VALUES (8617868, 86, 8616424, 3, '南明区', '贵州省，贵阳市，南明区', 520102, 1343);
INSERT INTO `sys_area` VALUES (8617869, 86, 8616424, 3, '云岩区', '贵州省，贵阳市，云岩区', 520103, 1344);
INSERT INTO `sys_area` VALUES (8618038, 86, 8612, 2, '重庆城区', '重庆市，重庆城区', 500100, 1345);
INSERT INTO `sys_area` VALUES (8618039, 86, 8612, 2, '重庆郊县', '重庆市，重庆郊县', 500200, 1346);
INSERT INTO `sys_area` VALUES (8618040, 86, 8618038, 3, '铜梁区', '重庆市，重庆城区，铜梁区', 500151, 1347);
INSERT INTO `sys_area` VALUES (8618041, 86, 8618038, 3, '潼南区', '重庆市，重庆城区，潼南区', 500152, 1348);
INSERT INTO `sys_area` VALUES (8618042, 86, 8618038, 3, '合川区', '重庆市，重庆城区，合川区', 500117, 1349);
INSERT INTO `sys_area` VALUES (8618043, 86, 8618038, 3, '璧山区', '重庆市，重庆城区，璧山区', 500120, 1350);
INSERT INTO `sys_area` VALUES (8618044, 86, 8618038, 3, '大足区', '重庆市，重庆城区，大足区', 500111, 1351);
INSERT INTO `sys_area` VALUES (8618045, 86, 8618038, 3, '长寿区', '重庆市，重庆城区，长寿区', 500115, 1352);
INSERT INTO `sys_area` VALUES (8618046, 86, 8618038, 3, '荣昌区', '重庆市，重庆城区，荣昌区', 500153, 1353);
INSERT INTO `sys_area` VALUES (8618047, 86, 8618038, 3, '永川区', '重庆市，重庆城区，永川区', 500118, 1354);
INSERT INTO `sys_area` VALUES (8618048, 86, 8618038, 3, '大渡口区', '重庆市，重庆城区，大渡口区', 500104, 1355);
INSERT INTO `sys_area` VALUES (8618049, 86, 8618038, 3, '武隆区', '重庆市，重庆城区，武隆区', 500156, 1356);
INSERT INTO `sys_area` VALUES (8618050, 86, 8618038, 3, '江北区', '重庆市，重庆城区，江北区', 500105, 1357);
INSERT INTO `sys_area` VALUES (8618051, 86, 8618038, 3, '渝中区', '重庆市，重庆城区，渝中区', 500103, 1358);
INSERT INTO `sys_area` VALUES (8618052, 86, 8618038, 3, '万州区', '重庆市，重庆城区，万州区', 500101, 1359);
INSERT INTO `sys_area` VALUES (8618053, 86, 8618038, 3, '涪陵区', '重庆市，重庆城区，涪陵区', 500102, 1360);
INSERT INTO `sys_area` VALUES (8618054, 86, 8618038, 3, '九龙坡区', '重庆市，重庆城区，九龙坡区', 500107, 1361);
INSERT INTO `sys_area` VALUES (8618055, 86, 8618038, 3, '渝北区', '重庆市，重庆城区，渝北区', 500112, 1362);
INSERT INTO `sys_area` VALUES (8618056, 86, 8618038, 3, '南川区', '重庆市，重庆城区，南川区', 500119, 1363);
INSERT INTO `sys_area` VALUES (8618057, 86, 8618038, 3, '綦江区', '重庆市，重庆城区，綦江区', 500110, 1364);
INSERT INTO `sys_area` VALUES (8618058, 86, 8618038, 3, '梁平区', '重庆市，重庆城区，梁平区', 500155, 1365);
INSERT INTO `sys_area` VALUES (8618059, 86, 8618038, 3, '开州区', '重庆市，重庆城区，开州区', 500154, 1366);
INSERT INTO `sys_area` VALUES (8618060, 86, 8618038, 3, '黔江区', '重庆市，重庆城区，黔江区', 500114, 1367);
INSERT INTO `sys_area` VALUES (8618061, 86, 8618038, 3, '江津区', '重庆市，重庆城区，江津区', 500116, 1368);
INSERT INTO `sys_area` VALUES (8618062, 86, 8618038, 3, '南岸区', '重庆市，重庆城区，南岸区', 500108, 1369);
INSERT INTO `sys_area` VALUES (8618063, 86, 8618038, 3, '巴南区', '重庆市，重庆城区，巴南区', 500113, 1370);
INSERT INTO `sys_area` VALUES (8618064, 86, 8618038, 3, '沙坪坝区', '重庆市，重庆城区，沙坪坝区', 500106, 1371);
INSERT INTO `sys_area` VALUES (8618065, 86, 8618038, 3, '北碚区', '重庆市，重庆城区，北碚区', 500109, 1372);
INSERT INTO `sys_area` VALUES (8618710, 86, 8618039, 3, '城口县', '重庆市，重庆郊县，城口县', 500229, 1373);
INSERT INTO `sys_area` VALUES (8618711, 86, 8618039, 3, '巫溪县', '重庆市，重庆郊县，巫溪县', 500238, 1374);
INSERT INTO `sys_area` VALUES (8618712, 86, 8618039, 3, '奉节县', '重庆市，重庆郊县，奉节县', 500236, 1375);
INSERT INTO `sys_area` VALUES (8618713, 86, 8618039, 3, '丰都县', '重庆市，重庆郊县，丰都县', 500230, 1376);
INSERT INTO `sys_area` VALUES (8618714, 86, 8618039, 3, '彭水苗族土家族自治县', '重庆市，重庆郊县，彭水苗族土家族自治县', 500243, 1377);
INSERT INTO `sys_area` VALUES (8618715, 86, 8618039, 3, '垫江县', '重庆市，重庆郊县，垫江县', 500231, 1378);
INSERT INTO `sys_area` VALUES (8618716, 86, 8618039, 3, '秀山土家族苗族自治县', '重庆市，重庆郊县，秀山土家族苗族自治县', 500241, 1379);
INSERT INTO `sys_area` VALUES (8618717, 86, 8618039, 3, '云阳县', '重庆市，重庆郊县，云阳县', 500235, 1380);
INSERT INTO `sys_area` VALUES (8618718, 86, 8618039, 3, '巫山县', '重庆市，重庆郊县，巫山县', 500237, 1381);
INSERT INTO `sys_area` VALUES (8618719, 86, 8618039, 3, '酉阳土家族苗族自治县', '重庆市，重庆郊县，酉阳土家族苗族自治县', 500242, 1382);
INSERT INTO `sys_area` VALUES (8618720, 86, 8618039, 3, '忠县', '重庆市，重庆郊县，忠县', 500233, 1383);
INSERT INTO `sys_area` VALUES (8618721, 86, 8618039, 3, '石柱土家族自治县', '重庆市，重庆郊县，石柱土家族自治县', 500240, 1384);
INSERT INTO `sys_area` VALUES (8619102, 86, 8600013, 2, '昌都市', '西藏自治区，昌都市', 540300, 1385);
INSERT INTO `sys_area` VALUES (8619103, 86, 8600013, 2, '拉萨市', '西藏自治区，拉萨市', 540100, 1386);
INSERT INTO `sys_area` VALUES (8619104, 86, 8600013, 2, '那曲市', '西藏自治区，那曲市', 540600, 1387);
INSERT INTO `sys_area` VALUES (8619105, 86, 8600013, 2, '日喀则市', '西藏自治区，日喀则市', 540200, 1388);
INSERT INTO `sys_area` VALUES (8619106, 86, 8600013, 2, '山南市', '西藏自治区，山南市', 540500, 1389);
INSERT INTO `sys_area` VALUES (8619107, 86, 8600013, 2, '林芝市', '西藏自治区，林芝市', 540400, 1390);
INSERT INTO `sys_area` VALUES (8619108, 86, 8600013, 2, '阿里地区', '西藏自治区，阿里地区', 542500, 1391);
INSERT INTO `sys_area` VALUES (8619109, 86, 8619102, 3, '江达县', '西藏自治区，昌都市，江达县', 540321, 1392);
INSERT INTO `sys_area` VALUES (8619110, 86, 8619102, 3, '卡若区', '西藏自治区，昌都市，卡若区', 540302, 1393);
INSERT INTO `sys_area` VALUES (8619111, 86, 8619102, 3, '丁青县', '西藏自治区，昌都市，丁青县', 540324, 1394);
INSERT INTO `sys_area` VALUES (8619112, 86, 8619102, 3, '类乌齐县', '西藏自治区，昌都市，类乌齐县', 540323, 1395);
INSERT INTO `sys_area` VALUES (8619113, 86, 8619102, 3, '边坝县', '西藏自治区，昌都市，边坝县', 540330, 1396);
INSERT INTO `sys_area` VALUES (8619114, 86, 8619102, 3, '洛隆县', '西藏自治区，昌都市，洛隆县', 540329, 1397);
INSERT INTO `sys_area` VALUES (8619115, 86, 8619102, 3, '八宿县', '西藏自治区，昌都市，八宿县', 540326, 1398);
INSERT INTO `sys_area` VALUES (8619116, 86, 8619102, 3, '贡觉县', '西藏自治区，昌都市，贡觉县', 540322, 1399);
INSERT INTO `sys_area` VALUES (8619117, 86, 8619102, 3, '察雅县', '西藏自治区，昌都市，察雅县', 540325, 1400);
INSERT INTO `sys_area` VALUES (8619118, 86, 8619102, 3, '芒康县', '西藏自治区，昌都市，芒康县', 540328, 1401);
INSERT INTO `sys_area` VALUES (8619119, 86, 8619102, 3, '左贡县', '西藏自治区，昌都市，左贡县', 540327, 1402);
INSERT INTO `sys_area` VALUES (8619258, 86, 8619103, 3, '当雄县', '西藏自治区，拉萨市，当雄县', 540122, 1403);
INSERT INTO `sys_area` VALUES (8619259, 86, 8619103, 3, '墨竹工卡县', '西藏自治区，拉萨市，墨竹工卡县', 540127, 1404);
INSERT INTO `sys_area` VALUES (8619260, 86, 8619103, 3, '林周县', '西藏自治区，拉萨市，林周县', 540121, 1405);
INSERT INTO `sys_area` VALUES (8619261, 86, 8619103, 3, '堆龙德庆区', '西藏自治区，拉萨市，堆龙德庆区', 540103, 1406);
INSERT INTO `sys_area` VALUES (8619262, 86, 8619103, 3, '城关区', '西藏自治区，拉萨市，城关区', 540102, 1407);
INSERT INTO `sys_area` VALUES (8619263, 86, 8619103, 3, '尼木县', '西藏自治区，拉萨市，尼木县', 540123, 1408);
INSERT INTO `sys_area` VALUES (8619264, 86, 8619103, 3, '达孜区', '西藏自治区，拉萨市，达孜区', 540104, 1409);
INSERT INTO `sys_area` VALUES (8619265, 86, 8619103, 3, '曲水县', '西藏自治区，拉萨市，曲水县', 540124, 1410);
INSERT INTO `sys_area` VALUES (8619331, 86, 8619104, 3, '聂荣县', '西藏自治区，那曲市，聂荣县', 540623, 1411);
INSERT INTO `sys_area` VALUES (8619332, 86, 8619104, 3, '巴青县', '西藏自治区，那曲市，巴青县', 540628, 1412);
INSERT INTO `sys_area` VALUES (8619333, 86, 8619104, 3, '安多县', '西藏自治区，那曲市，安多县', 540624, 1413);
INSERT INTO `sys_area` VALUES (8619334, 86, 8619104, 3, '班戈县', '西藏自治区，那曲市，班戈县', 540627, 1414);
INSERT INTO `sys_area` VALUES (8619335, 86, 8619104, 3, '比如县', '西藏自治区，那曲市，比如县', 540622, 1415);
INSERT INTO `sys_area` VALUES (8619336, 86, 8619104, 3, '申扎县', '西藏自治区，那曲市，申扎县', 540625, 1416);
INSERT INTO `sys_area` VALUES (8619337, 86, 8619104, 3, '索县', '西藏自治区，那曲市，索县', 540626, 1417);
INSERT INTO `sys_area` VALUES (8619338, 86, 8619104, 3, '色尼区', '西藏自治区，那曲市，色尼区', 540602, 1418);
INSERT INTO `sys_area` VALUES (8619339, 86, 8619104, 3, '嘉黎县', '西藏自治区，那曲市，嘉黎县', 540621, 1419);
INSERT INTO `sys_area` VALUES (8619340, 86, 8619104, 3, '尼玛县', '西藏自治区，那曲市，尼玛县', 540629, 1420);
INSERT INTO `sys_area` VALUES (8619341, 86, 8619104, 3, '双湖县', '西藏自治区，那曲市，双湖县', 540630, 1421);
INSERT INTO `sys_area` VALUES (8619452, 86, 8619105, 3, '仲巴县', '西藏自治区，日喀则市，仲巴县', 540232, 1422);
INSERT INTO `sys_area` VALUES (8619453, 86, 8619105, 3, '昂仁县', '西藏自治区，日喀则市，昂仁县', 540226, 1423);
INSERT INTO `sys_area` VALUES (8619454, 86, 8619105, 3, '谢通门县', '西藏自治区，日喀则市，谢通门县', 540227, 1424);
INSERT INTO `sys_area` VALUES (8619455, 86, 8619105, 3, '南木林县', '西藏自治区，日喀则市，南木林县', 540221, 1425);
INSERT INTO `sys_area` VALUES (8619456, 86, 8619105, 3, '萨嘎县', '西藏自治区，日喀则市，萨嘎县', 540236, 1426);
INSERT INTO `sys_area` VALUES (8619457, 86, 8619105, 3, '桑珠孜区', '西藏自治区，日喀则市，桑珠孜区', 540202, 1427);
INSERT INTO `sys_area` VALUES (8619458, 86, 8619105, 3, '拉孜县', '西藏自治区，日喀则市，拉孜县', 540225, 1428);
INSERT INTO `sys_area` VALUES (8619459, 86, 8619105, 3, '吉隆县', '西藏自治区，日喀则市，吉隆县', 540234, 1429);
INSERT INTO `sys_area` VALUES (8619460, 86, 8619105, 3, '仁布县', '西藏自治区，日喀则市，仁布县', 540229, 1430);
INSERT INTO `sys_area` VALUES (8619461, 86, 8619105, 3, '萨迦县', '西藏自治区，日喀则市，萨迦县', 540224, 1431);
INSERT INTO `sys_area` VALUES (8619462, 86, 8619105, 3, '白朗县', '西藏自治区，日喀则市，白朗县', 540228, 1432);
INSERT INTO `sys_area` VALUES (8619463, 86, 8619105, 3, '定日县', '西藏自治区，日喀则市，定日县', 540223, 1433);
INSERT INTO `sys_area` VALUES (8619464, 86, 8619105, 3, '江孜县', '西藏自治区，日喀则市，江孜县', 540222, 1434);
INSERT INTO `sys_area` VALUES (8619465, 86, 8619105, 3, '聂拉木县', '西藏自治区，日喀则市，聂拉木县', 540235, 1435);
INSERT INTO `sys_area` VALUES (8619466, 86, 8619105, 3, '康马县', '西藏自治区，日喀则市，康马县', 540230, 1436);
INSERT INTO `sys_area` VALUES (8619467, 86, 8619105, 3, '岗巴县', '西藏自治区，日喀则市，岗巴县', 540237, 1437);
INSERT INTO `sys_area` VALUES (8619468, 86, 8619105, 3, '定结县', '西藏自治区，日喀则市，定结县', 540231, 1438);
INSERT INTO `sys_area` VALUES (8619469, 86, 8619105, 3, '亚东县', '西藏自治区，日喀则市，亚东县', 540233, 1439);
INSERT INTO `sys_area` VALUES (8619673, 86, 8619106, 3, '桑日县', '西藏自治区，山南市，桑日县', 540523, 1440);
INSERT INTO `sys_area` VALUES (8619674, 86, 8619106, 3, '加查县', '西藏自治区，山南市，加查县', 540528, 1441);
INSERT INTO `sys_area` VALUES (8619675, 86, 8619106, 3, '乃东区', '西藏自治区，山南市，乃东区', 540502, 1442);
INSERT INTO `sys_area` VALUES (8619676, 86, 8619106, 3, '贡嘎县', '西藏自治区，山南市，贡嘎县', 540522, 1443);
INSERT INTO `sys_area` VALUES (8619677, 86, 8619106, 3, '扎囊县', '西藏自治区，山南市，扎囊县', 540521, 1444);
INSERT INTO `sys_area` VALUES (8619678, 86, 8619106, 3, '浪卡子县', '西藏自治区，山南市，浪卡子县', 540531, 1445);
INSERT INTO `sys_area` VALUES (8619679, 86, 8619106, 3, '隆子县', '西藏自治区，山南市，隆子县', 540529, 1446);
INSERT INTO `sys_area` VALUES (8619680, 86, 8619106, 3, '琼结县', '西藏自治区，山南市，琼结县', 540524, 1447);
INSERT INTO `sys_area` VALUES (8619681, 86, 8619106, 3, '曲松县', '西藏自治区，山南市，曲松县', 540525, 1448);
INSERT INTO `sys_area` VALUES (8619682, 86, 8619106, 3, '措美县', '西藏自治区，山南市，措美县', 540526, 1449);
INSERT INTO `sys_area` VALUES (8619683, 86, 8619106, 3, '洛扎县', '西藏自治区，山南市，洛扎县', 540527, 1450);
INSERT INTO `sys_area` VALUES (8619684, 86, 8619106, 3, '错那县', '西藏自治区，山南市，错那县', 540530, 1451);
INSERT INTO `sys_area` VALUES (8619767, 86, 8619107, 3, '波密县', '西藏自治区，林芝市，波密县', 540424, 1452);
INSERT INTO `sys_area` VALUES (8619768, 86, 8619107, 3, '工布江达县', '西藏自治区，林芝市，工布江达县', 540421, 1453);
INSERT INTO `sys_area` VALUES (8619769, 86, 8619107, 3, '巴宜区', '西藏自治区，林芝市，巴宜区', 540402, 1454);
INSERT INTO `sys_area` VALUES (8619770, 86, 8619107, 3, '墨脱县', '西藏自治区，林芝市，墨脱县', 540423, 1455);
INSERT INTO `sys_area` VALUES (8619771, 86, 8619107, 3, '米林县', '西藏自治区，林芝市，米林县', 540422, 1456);
INSERT INTO `sys_area` VALUES (8619772, 86, 8619107, 3, '察隅县', '西藏自治区，林芝市，察隅县', 540425, 1457);
INSERT INTO `sys_area` VALUES (8619773, 86, 8619107, 3, '朗县', '西藏自治区，林芝市，朗县', 540426, 1458);
INSERT INTO `sys_area` VALUES (8619828, 86, 8619108, 3, '札达县', '西藏自治区，阿里地区，札达县', 542522, 1459);
INSERT INTO `sys_area` VALUES (8619829, 86, 8619108, 3, '改则县', '西藏自治区，阿里地区，改则县', 542526, 1460);
INSERT INTO `sys_area` VALUES (8619830, 86, 8619108, 3, '措勤县', '西藏自治区，阿里地区，措勤县', 542527, 1461);
INSERT INTO `sys_area` VALUES (8619831, 86, 8619108, 3, '普兰县', '西藏自治区，阿里地区，普兰县', 542521, 1462);
INSERT INTO `sys_area` VALUES (8619832, 86, 8619108, 3, '噶尔县', '西藏自治区，阿里地区，噶尔县', 542523, 1463);
INSERT INTO `sys_area` VALUES (8619833, 86, 8619108, 3, '日土县', '西藏自治区，阿里地区，日土县', 542524, 1464);
INSERT INTO `sys_area` VALUES (8619834, 86, 8619108, 3, '革吉县', '西藏自治区，阿里地区，革吉县', 542525, 1465);
INSERT INTO `sys_area` VALUES (8619872, 86, 8600014, 2, '阜阳市', '安徽省，阜阳市', 341200, 1466);
INSERT INTO `sys_area` VALUES (8619873, 86, 8600014, 2, '淮北市', '安徽省，淮北市', 340600, 1467);
INSERT INTO `sys_area` VALUES (8619874, 86, 8600014, 2, '铜陵市', '安徽省，铜陵市', 340700, 1468);
INSERT INTO `sys_area` VALUES (8619875, 86, 8600014, 2, '蚌埠市', '安徽省，蚌埠市', 340300, 1469);
INSERT INTO `sys_area` VALUES (8619876, 86, 8600014, 2, '马鞍山市', '安徽省，马鞍山市', 340500, 1470);
INSERT INTO `sys_area` VALUES (8619877, 86, 8600014, 2, '池州市', '安徽省，池州市', 341700, 1471);
INSERT INTO `sys_area` VALUES (8619878, 86, 8600014, 2, '亳州市', '安徽省，亳州市', 341600, 1472);
INSERT INTO `sys_area` VALUES (8619879, 86, 8600014, 2, '滁州市', '安徽省，滁州市', 341100, 1473);
INSERT INTO `sys_area` VALUES (8619880, 86, 8600014, 2, '安庆市', '安徽省，安庆市', 340800, 1474);
INSERT INTO `sys_area` VALUES (8619881, 86, 8600014, 2, '黄山市', '安徽省，黄山市', 341000, 1475);
INSERT INTO `sys_area` VALUES (8619882, 86, 8600014, 2, '宣城市', '安徽省，宣城市', 341800, 1476);
INSERT INTO `sys_area` VALUES (8619883, 86, 8600014, 2, '芜湖市', '安徽省，芜湖市', 340200, 1477);
INSERT INTO `sys_area` VALUES (8619884, 86, 8600014, 2, '六安市', '安徽省，六安市', 341500, 1478);
INSERT INTO `sys_area` VALUES (8619885, 86, 8600014, 2, '淮南市', '安徽省，淮南市', 340400, 1479);
INSERT INTO `sys_area` VALUES (8619886, 86, 8600014, 2, '合肥市', '安徽省，合肥市', 340100, 1480);
INSERT INTO `sys_area` VALUES (8619887, 86, 8600014, 2, '宿州市', '安徽省，宿州市', 341300, 1481);
INSERT INTO `sys_area` VALUES (8619888, 86, 8619872, 3, '太和县', '安徽省，阜阳市，太和县', 341222, 1482);
INSERT INTO `sys_area` VALUES (8619889, 86, 8619872, 3, '临泉县', '安徽省，阜阳市，临泉县', 341221, 1483);
INSERT INTO `sys_area` VALUES (8619890, 86, 8619872, 3, '颍泉区', '安徽省，阜阳市，颍泉区', 341204, 1484);
INSERT INTO `sys_area` VALUES (8619891, 86, 8619872, 3, '颍东区', '安徽省，阜阳市，颍东区', 341203, 1485);
INSERT INTO `sys_area` VALUES (8619892, 86, 8619872, 3, '颍州区', '安徽省，阜阳市，颍州区', 341202, 1486);
INSERT INTO `sys_area` VALUES (8619893, 86, 8619872, 3, '阜南县', '安徽省，阜阳市，阜南县', 341225, 1487);
INSERT INTO `sys_area` VALUES (8619894, 86, 8619872, 3, '颍上县', '安徽省，阜阳市，颍上县', 341226, 1488);
INSERT INTO `sys_area` VALUES (8619895, 86, 8619872, 3, '界首市', '安徽省，阜阳市，界首市', 341282, 1489);
INSERT INTO `sys_area` VALUES (8620069, 86, 8619873, 3, '杜集区', '安徽省，淮北市，杜集区', 340602, 1490);
INSERT INTO `sys_area` VALUES (8620070, 86, 8619873, 3, '相山区', '安徽省，淮北市，相山区', 340603, 1491);
INSERT INTO `sys_area` VALUES (8620071, 86, 8619873, 3, '濉溪县', '安徽省，淮北市，濉溪县', 340621, 1492);
INSERT INTO `sys_area` VALUES (8620072, 86, 8619873, 3, '烈山区', '安徽省，淮北市，烈山区', 340604, 1493);
INSERT INTO `sys_area` VALUES (8620107, 86, 8619874, 3, '枞阳县', '安徽省，铜陵市，枞阳县', 340722, 1494);
INSERT INTO `sys_area` VALUES (8620108, 86, 8619874, 3, '郊区', '安徽省，铜陵市，郊区', 340711, 1495);
INSERT INTO `sys_area` VALUES (8620109, 86, 8619874, 3, '铜官区', '安徽省，铜陵市，铜官区', 340705, 1496);
INSERT INTO `sys_area` VALUES (8620110, 86, 8619874, 3, '义安区', '安徽省，铜陵市，义安区', 340706, 1497);
INSERT INTO `sys_area` VALUES (8620157, 86, 8619875, 3, '淮上区', '安徽省，蚌埠市，淮上区', 340311, 1498);
INSERT INTO `sys_area` VALUES (8620158, 86, 8619875, 3, '固镇县', '安徽省，蚌埠市，固镇县', 340323, 1499);
INSERT INTO `sys_area` VALUES (8620159, 86, 8619875, 3, '龙子湖区', '安徽省，蚌埠市，龙子湖区', 340302, 1500);
INSERT INTO `sys_area` VALUES (8620160, 86, 8619875, 3, '五河县', '安徽省，蚌埠市，五河县', 340322, 1501);
INSERT INTO `sys_area` VALUES (8620161, 86, 8619875, 3, '怀远县', '安徽省，蚌埠市，怀远县', 340321, 1502);
INSERT INTO `sys_area` VALUES (8620162, 86, 8619875, 3, '禹会区', '安徽省，蚌埠市，禹会区', 340304, 1503);
INSERT INTO `sys_area` VALUES (8620163, 86, 8619875, 3, '蚌山区', '安徽省，蚌埠市，蚌山区', 340303, 1504);
INSERT INTO `sys_area` VALUES (8620244, 86, 8619876, 3, '博望区', '安徽省，马鞍山市，博望区', 340506, 1505);
INSERT INTO `sys_area` VALUES (8620245, 86, 8619876, 3, '当涂县', '安徽省，马鞍山市，当涂县', 340521, 1506);
INSERT INTO `sys_area` VALUES (8620246, 86, 8619876, 3, '花山区', '安徽省，马鞍山市，花山区', 340503, 1507);
INSERT INTO `sys_area` VALUES (8620247, 86, 8619876, 3, '雨山区', '安徽省，马鞍山市，雨山区', 340504, 1508);
INSERT INTO `sys_area` VALUES (8620248, 86, 8619876, 3, '和县', '安徽省，马鞍山市，和县', 340523, 1509);
INSERT INTO `sys_area` VALUES (8620249, 86, 8619876, 3, '含山县', '安徽省，马鞍山市，含山县', 340522, 1510);
INSERT INTO `sys_area` VALUES (8620311, 86, 8619877, 3, '青阳县', '安徽省，池州市，青阳县', 341723, 1511);
INSERT INTO `sys_area` VALUES (8620312, 86, 8619877, 3, '东至县', '安徽省，池州市，东至县', 341721, 1512);
INSERT INTO `sys_area` VALUES (8620313, 86, 8619877, 3, '贵池区', '安徽省，池州市，贵池区', 341702, 1513);
INSERT INTO `sys_area` VALUES (8620314, 86, 8619877, 3, '石台县', '安徽省，池州市，石台县', 341722, 1514);
INSERT INTO `sys_area` VALUES (8620379, 86, 8619878, 3, '涡阳县', '安徽省，亳州市，涡阳县', 341621, 1515);
INSERT INTO `sys_area` VALUES (8620380, 86, 8619878, 3, '谯城区', '安徽省，亳州市，谯城区', 341602, 1516);
INSERT INTO `sys_area` VALUES (8620381, 86, 8619878, 3, '蒙城县', '安徽省，亳州市，蒙城县', 341622, 1517);
INSERT INTO `sys_area` VALUES (8620382, 86, 8619878, 3, '利辛县', '安徽省，亳州市，利辛县', 341623, 1518);
INSERT INTO `sys_area` VALUES (8620483, 86, 8619879, 3, '明光市', '安徽省，滁州市，明光市', 341182, 1519);
INSERT INTO `sys_area` VALUES (8620484, 86, 8619879, 3, '天长市', '安徽省，滁州市，天长市', 341181, 1520);
INSERT INTO `sys_area` VALUES (8620485, 86, 8619879, 3, '全椒县', '安徽省，滁州市，全椒县', 341124, 1521);
INSERT INTO `sys_area` VALUES (8620486, 86, 8619879, 3, '凤阳县', '安徽省，滁州市，凤阳县', 341126, 1522);
INSERT INTO `sys_area` VALUES (8620487, 86, 8619879, 3, '定远县', '安徽省，滁州市，定远县', 341125, 1523);
INSERT INTO `sys_area` VALUES (8620488, 86, 8619879, 3, '来安县', '安徽省，滁州市，来安县', 341122, 1524);
INSERT INTO `sys_area` VALUES (8620489, 86, 8619879, 3, '南谯区', '安徽省，滁州市，南谯区', 341103, 1525);
INSERT INTO `sys_area` VALUES (8620490, 86, 8619879, 3, '琅琊区', '安徽省，滁州市，琅琊区', 341102, 1526);
INSERT INTO `sys_area` VALUES (8620612, 86, 8619880, 3, '潜山县', '安徽省，安庆市，潜山县', 340824, 1527);
INSERT INTO `sys_area` VALUES (8620613, 86, 8619880, 3, '岳西县', '安徽省，安庆市，岳西县', 340828, 1528);
INSERT INTO `sys_area` VALUES (8620614, 86, 8619880, 3, '桐城市', '安徽省，安庆市，桐城市', 340881, 1529);
INSERT INTO `sys_area` VALUES (8620615, 86, 8619880, 3, '太湖县', '安徽省，安庆市，太湖县', 340825, 1530);
INSERT INTO `sys_area` VALUES (8620616, 86, 8619880, 3, '迎江区', '安徽省，安庆市，迎江区', 340802, 1531);
INSERT INTO `sys_area` VALUES (8620617, 86, 8619880, 3, '宜秀区', '安徽省，安庆市，宜秀区', 340811, 1532);
INSERT INTO `sys_area` VALUES (8620618, 86, 8619880, 3, '宿松县', '安徽省，安庆市，宿松县', 340826, 1533);
INSERT INTO `sys_area` VALUES (8620619, 86, 8619880, 3, '望江县', '安徽省，安庆市，望江县', 340827, 1534);
INSERT INTO `sys_area` VALUES (8620620, 86, 8619880, 3, '大观区', '安徽省，安庆市，大观区', 340803, 1535);
INSERT INTO `sys_area` VALUES (8620621, 86, 8619880, 3, '怀宁县', '安徽省，安庆市，怀宁县', 340822, 1536);
INSERT INTO `sys_area` VALUES (8620782, 86, 8619881, 3, '黄山区', '安徽省，黄山市，黄山区', 341003, 1537);
INSERT INTO `sys_area` VALUES (8620783, 86, 8619881, 3, '黟县', '安徽省，黄山市，黟县', 341023, 1538);
INSERT INTO `sys_area` VALUES (8620784, 86, 8619881, 3, '休宁县', '安徽省，黄山市，休宁县', 341022, 1539);
INSERT INTO `sys_area` VALUES (8620785, 86, 8619881, 3, '屯溪区', '安徽省，黄山市，屯溪区', 341002, 1540);
INSERT INTO `sys_area` VALUES (8620786, 86, 8619881, 3, '祁门县', '安徽省，黄山市，祁门县', 341024, 1541);
INSERT INTO `sys_area` VALUES (8620787, 86, 8619881, 3, '徽州区', '安徽省，黄山市，徽州区', 341004, 1542);
INSERT INTO `sys_area` VALUES (8620788, 86, 8619881, 3, '歙县', '安徽省，黄山市，歙县', 341021, 1543);
INSERT INTO `sys_area` VALUES (8620897, 86, 8619882, 3, '广德县', '安徽省，宣城市，广德县', 341822, 1544);
INSERT INTO `sys_area` VALUES (8620898, 86, 8619882, 3, '泾县', '安徽省，宣城市，泾县', 341823, 1545);
INSERT INTO `sys_area` VALUES (8620899, 86, 8619882, 3, '旌德县', '安徽省，宣城市，旌德县', 341825, 1546);
INSERT INTO `sys_area` VALUES (8620900, 86, 8619882, 3, '绩溪县', '安徽省，宣城市，绩溪县', 341824, 1547);
INSERT INTO `sys_area` VALUES (8620901, 86, 8619882, 3, '宣州区', '安徽省，宣城市，宣州区', 341802, 1548);
INSERT INTO `sys_area` VALUES (8620902, 86, 8619882, 3, '郎溪县', '安徽省，宣城市，郎溪县', 341821, 1549);
INSERT INTO `sys_area` VALUES (8620903, 86, 8619882, 3, '宁国市', '安徽省，宣城市，宁国市', 341881, 1550);
INSERT INTO `sys_area` VALUES (8621003, 86, 8619883, 3, '繁昌县', '安徽省，芜湖市，繁昌县', 340222, 1551);
INSERT INTO `sys_area` VALUES (8621004, 86, 8619883, 3, '无为县', '安徽省，芜湖市，无为县', 340225, 1552);
INSERT INTO `sys_area` VALUES (8621005, 86, 8619883, 3, '弋江区', '安徽省，芜湖市，弋江区', 340203, 1553);
INSERT INTO `sys_area` VALUES (8621006, 86, 8619883, 3, '镜湖区', '安徽省，芜湖市，镜湖区', 340202, 1554);
INSERT INTO `sys_area` VALUES (8621007, 86, 8619883, 3, '南陵县', '安徽省，芜湖市，南陵县', 340223, 1555);
INSERT INTO `sys_area` VALUES (8621008, 86, 8619883, 3, '鸠江区', '安徽省，芜湖市，鸠江区', 340207, 1556);
INSERT INTO `sys_area` VALUES (8621009, 86, 8619883, 3, '三山区', '安徽省，芜湖市，三山区', 340208, 1557);
INSERT INTO `sys_area` VALUES (8621010, 86, 8619883, 3, '芜湖县', '安徽省，芜湖市，芜湖县', 340221, 1558);
INSERT INTO `sys_area` VALUES (8621094, 86, 8619884, 3, '霍山县', '安徽省，六安市，霍山县', 341525, 1559);
INSERT INTO `sys_area` VALUES (8621095, 86, 8619884, 3, '裕安区', '安徽省，六安市，裕安区', 341503, 1560);
INSERT INTO `sys_area` VALUES (8621096, 86, 8619884, 3, '金寨县', '安徽省，六安市，金寨县', 341524, 1561);
INSERT INTO `sys_area` VALUES (8621097, 86, 8619884, 3, '舒城县', '安徽省，六安市，舒城县', 341523, 1562);
INSERT INTO `sys_area` VALUES (8621098, 86, 8619884, 3, '金安区', '安徽省，六安市，金安区', 341502, 1563);
INSERT INTO `sys_area` VALUES (8621099, 86, 8619884, 3, '叶集区', '安徽省，六安市，叶集区', 341504, 1564);
INSERT INTO `sys_area` VALUES (8621100, 86, 8619884, 3, '霍邱县', '安徽省，六安市，霍邱县', 341522, 1565);
INSERT INTO `sys_area` VALUES (8621248, 86, 8619885, 3, '八公山区', '安徽省，淮南市，八公山区', 340405, 1566);
INSERT INTO `sys_area` VALUES (8621249, 86, 8619885, 3, '潘集区', '安徽省，淮南市，潘集区', 340406, 1567);
INSERT INTO `sys_area` VALUES (8621250, 86, 8619885, 3, '谢家集区', '安徽省，淮南市，谢家集区', 340404, 1568);
INSERT INTO `sys_area` VALUES (8621251, 86, 8619885, 3, '凤台县', '安徽省，淮南市，凤台县', 340421, 1569);
INSERT INTO `sys_area` VALUES (8621252, 86, 8619885, 3, '大通区', '安徽省，淮南市，大通区', 340402, 1570);
INSERT INTO `sys_area` VALUES (8621253, 86, 8619885, 3, '田家庵区', '安徽省，淮南市，田家庵区', 340403, 1571);
INSERT INTO `sys_area` VALUES (8621254, 86, 8619885, 3, '寿县', '安徽省，淮南市，寿县', 340422, 1572);
INSERT INTO `sys_area` VALUES (8621350, 86, 8619886, 3, '庐阳区', '安徽省，合肥市，庐阳区', 340103, 1573);
INSERT INTO `sys_area` VALUES (8621351, 86, 8619886, 3, '肥东县', '安徽省，合肥市，肥东县', 340122, 1574);
INSERT INTO `sys_area` VALUES (8621352, 86, 8619886, 3, '庐江县', '安徽省，合肥市，庐江县', 340124, 1575);
INSERT INTO `sys_area` VALUES (8621353, 86, 8619886, 3, '瑶海区', '安徽省，合肥市，瑶海区', 340102, 1576);
INSERT INTO `sys_area` VALUES (8621354, 86, 8619886, 3, '长丰县', '安徽省，合肥市，长丰县', 340121, 1577);
INSERT INTO `sys_area` VALUES (8621355, 86, 8619886, 3, '肥西县', '安徽省，合肥市，肥西县', 340123, 1578);
INSERT INTO `sys_area` VALUES (8621356, 86, 8619886, 3, '蜀山区', '安徽省，合肥市，蜀山区', 340104, 1579);
INSERT INTO `sys_area` VALUES (8621357, 86, 8619886, 3, '包河区', '安徽省，合肥市，包河区', 340111, 1580);
INSERT INTO `sys_area` VALUES (8621358, 86, 8619886, 3, '巢湖市', '安徽省，合肥市，巢湖市', 340181, 1581);
INSERT INTO `sys_area` VALUES (8621502, 86, 8619887, 3, '砀山县', '安徽省，宿州市，砀山县', 341321, 1582);
INSERT INTO `sys_area` VALUES (8621503, 86, 8619887, 3, '埇桥区', '安徽省，宿州市，埇桥区', 341302, 1583);
INSERT INTO `sys_area` VALUES (8621504, 86, 8619887, 3, '泗县', '安徽省，宿州市，泗县', 341324, 1584);
INSERT INTO `sys_area` VALUES (8621505, 86, 8619887, 3, '灵璧县', '安徽省，宿州市，灵璧县', 341323, 1585);
INSERT INTO `sys_area` VALUES (8621506, 86, 8619887, 3, '萧县', '安徽省，宿州市，萧县', 341322, 1586);
INSERT INTO `sys_area` VALUES (8621625, 86, 8600015, 2, '宁德市', '福建省，宁德市', 350900, 1587);
INSERT INTO `sys_area` VALUES (8621626, 86, 8600015, 2, '福州市', '福建省，福州市', 350100, 1588);
INSERT INTO `sys_area` VALUES (8621627, 86, 8600015, 2, '龙岩市', '福建省，龙岩市', 350800, 1589);
INSERT INTO `sys_area` VALUES (8621628, 86, 8600015, 2, '莆田市', '福建省，莆田市', 350300, 1590);
INSERT INTO `sys_area` VALUES (8621629, 86, 8600015, 2, '泉州市', '福建省，泉州市', 350500, 1591);
INSERT INTO `sys_area` VALUES (8621630, 86, 8600015, 2, '三明市', '福建省，三明市', 350400, 1592);
INSERT INTO `sys_area` VALUES (8621631, 86, 8600015, 2, '厦门市', '福建省，厦门市', 350200, 1593);
INSERT INTO `sys_area` VALUES (8621632, 86, 8600015, 2, '漳州市', '福建省，漳州市', 350600, 1594);
INSERT INTO `sys_area` VALUES (8621633, 86, 8600015, 2, '南平市', '福建省，南平市', 350700, 1595);
INSERT INTO `sys_area` VALUES (8621634, 86, 8621625, 3, '寿宁县', '福建省，宁德市，寿宁县', 350924, 1596);
INSERT INTO `sys_area` VALUES (8621635, 86, 8621625, 3, '周宁县', '福建省，宁德市，周宁县', 350925, 1597);
INSERT INTO `sys_area` VALUES (8621636, 86, 8621625, 3, '柘荣县', '福建省，宁德市，柘荣县', 350926, 1598);
INSERT INTO `sys_area` VALUES (8621637, 86, 8621625, 3, '福安市', '福建省，宁德市，福安市', 350981, 1599);
INSERT INTO `sys_area` VALUES (8621638, 86, 8621625, 3, '霞浦县', '福建省，宁德市，霞浦县', 350921, 1600);
INSERT INTO `sys_area` VALUES (8621639, 86, 8621625, 3, '屏南县', '福建省，宁德市，屏南县', 350923, 1601);
INSERT INTO `sys_area` VALUES (8621640, 86, 8621625, 3, '蕉城区', '福建省，宁德市，蕉城区', 350902, 1602);
INSERT INTO `sys_area` VALUES (8621641, 86, 8621625, 3, '古田县', '福建省，宁德市，古田县', 350922, 1603);
INSERT INTO `sys_area` VALUES (8621642, 86, 8621625, 3, '福鼎市', '福建省，宁德市，福鼎市', 350982, 1604);
INSERT INTO `sys_area` VALUES (8621772, 86, 8621626, 3, '罗源县', '福建省，福州市，罗源县', 350123, 1605);
INSERT INTO `sys_area` VALUES (8621773, 86, 8621626, 3, '连江县', '福建省，福州市，连江县', 350122, 1606);
INSERT INTO `sys_area` VALUES (8621774, 86, 8621626, 3, '闽清县', '福建省，福州市，闽清县', 350124, 1607);
INSERT INTO `sys_area` VALUES (8621775, 86, 8621626, 3, '闽侯县', '福建省，福州市，闽侯县', 350121, 1608);
INSERT INTO `sys_area` VALUES (8621776, 86, 8621626, 3, '长乐区', '福建省，福州市，长乐区', 350112, 1609);
INSERT INTO `sys_area` VALUES (8621777, 86, 8621626, 3, '仓山区', '福建省，福州市，仓山区', 350104, 1610);
INSERT INTO `sys_area` VALUES (8621778, 86, 8621626, 3, '永泰县', '福建省，福州市，永泰县', 350125, 1611);
INSERT INTO `sys_area` VALUES (8621779, 86, 8621626, 3, '平潭县', '福建省，福州市，平潭县', 350128, 1612);
INSERT INTO `sys_area` VALUES (8621780, 86, 8621626, 3, '福清市', '福建省，福州市，福清市', 350181, 1613);
INSERT INTO `sys_area` VALUES (8621781, 86, 8621626, 3, '台江区', '福建省，福州市，台江区', 350103, 1614);
INSERT INTO `sys_area` VALUES (8621782, 86, 8621626, 3, '鼓楼区', '福建省，福州市，鼓楼区', 350102, 1615);
INSERT INTO `sys_area` VALUES (8621783, 86, 8621626, 3, '马尾区', '福建省，福州市，马尾区', 350105, 1616);
INSERT INTO `sys_area` VALUES (8621784, 86, 8621626, 3, '晋安区', '福建省，福州市，晋安区', 350111, 1617);
INSERT INTO `sys_area` VALUES (8621978, 86, 8621627, 3, '新罗区', '福建省，龙岩市，新罗区', 350802, 1618);
INSERT INTO `sys_area` VALUES (8621979, 86, 8621627, 3, '漳平市', '福建省，龙岩市，漳平市', 350881, 1619);
INSERT INTO `sys_area` VALUES (8621980, 86, 8621627, 3, '长汀县', '福建省，龙岩市，长汀县', 350821, 1620);
INSERT INTO `sys_area` VALUES (8621981, 86, 8621627, 3, '连城县', '福建省，龙岩市，连城县', 350825, 1621);
INSERT INTO `sys_area` VALUES (8621982, 86, 8621627, 3, '武平县', '福建省，龙岩市，武平县', 350824, 1622);
INSERT INTO `sys_area` VALUES (8621983, 86, 8621627, 3, '上杭县', '福建省，龙岩市，上杭县', 350823, 1623);
INSERT INTO `sys_area` VALUES (8621984, 86, 8621627, 3, '永定区', '福建省，龙岩市，永定区', 350803, 1624);
INSERT INTO `sys_area` VALUES (8622119, 86, 8621628, 3, '城厢区', '福建省，莆田市，城厢区', 350302, 1625);
INSERT INTO `sys_area` VALUES (8622120, 86, 8621628, 3, '仙游县', '福建省，莆田市，仙游县', 350322, 1626);
INSERT INTO `sys_area` VALUES (8622121, 86, 8621628, 3, '秀屿区', '福建省，莆田市，秀屿区', 350305, 1627);
INSERT INTO `sys_area` VALUES (8622122, 86, 8621628, 3, '荔城区', '福建省，莆田市，荔城区', 350304, 1628);
INSERT INTO `sys_area` VALUES (8622123, 86, 8621628, 3, '涵江区', '福建省，莆田市，涵江区', 350303, 1629);
INSERT INTO `sys_area` VALUES (8622181, 86, 8621629, 3, '德化县', '福建省，泉州市，德化县', 350526, 1630);
INSERT INTO `sys_area` VALUES (8622182, 86, 8621629, 3, '永春县', '福建省，泉州市，永春县', 350525, 1631);
INSERT INTO `sys_area` VALUES (8622183, 86, 8621629, 3, '南安市', '福建省，泉州市，南安市', 350583, 1632);
INSERT INTO `sys_area` VALUES (8622184, 86, 8621629, 3, '洛江区', '福建省，泉州市，洛江区', 350504, 1633);
INSERT INTO `sys_area` VALUES (8622185, 86, 8621629, 3, '安溪县', '福建省，泉州市，安溪县', 350524, 1634);
INSERT INTO `sys_area` VALUES (8622186, 86, 8621629, 3, '泉港区', '福建省，泉州市，泉港区', 350505, 1635);
INSERT INTO `sys_area` VALUES (8622187, 86, 8621629, 3, '丰泽区', '福建省，泉州市，丰泽区', 350503, 1636);
INSERT INTO `sys_area` VALUES (8622188, 86, 8621629, 3, '惠安县', '福建省，泉州市，惠安县', 350521, 1637);
INSERT INTO `sys_area` VALUES (8622189, 86, 8621629, 3, '晋江市', '福建省，泉州市，晋江市', 350582, 1638);
INSERT INTO `sys_area` VALUES (8622190, 86, 8621629, 3, '石狮市', '福建省，泉州市，石狮市', 350581, 1639);
INSERT INTO `sys_area` VALUES (8622191, 86, 8621629, 3, '金门县', '福建省，泉州市，金门县', 350527, 1640);
INSERT INTO `sys_area` VALUES (8622192, 86, 8621629, 3, '鲤城区', '福建省，泉州市，鲤城区', 350502, 1641);
INSERT INTO `sys_area` VALUES (8622363, 86, 8621630, 3, '宁化县', '福建省，三明市，宁化县', 350424, 1642);
INSERT INTO `sys_area` VALUES (8622364, 86, 8621630, 3, '泰宁县', '福建省，三明市，泰宁县', 350429, 1643);
INSERT INTO `sys_area` VALUES (8622365, 86, 8621630, 3, '大田县', '福建省，三明市，大田县', 350425, 1644);
INSERT INTO `sys_area` VALUES (8622366, 86, 8621630, 3, '梅列区', '福建省，三明市，梅列区', 350402, 1645);
INSERT INTO `sys_area` VALUES (8622367, 86, 8621630, 3, '永安市', '福建省，三明市，永安市', 350481, 1646);
INSERT INTO `sys_area` VALUES (8622368, 86, 8621630, 3, '三元区', '福建省，三明市，三元区', 350403, 1647);
INSERT INTO `sys_area` VALUES (8622369, 86, 8621630, 3, '清流县', '福建省，三明市，清流县', 350423, 1648);
INSERT INTO `sys_area` VALUES (8622370, 86, 8621630, 3, '沙县', '福建省，三明市，沙县', 350427, 1649);
INSERT INTO `sys_area` VALUES (8622371, 86, 8621630, 3, '建宁县', '福建省，三明市，建宁县', 350430, 1650);
INSERT INTO `sys_area` VALUES (8622372, 86, 8621630, 3, '尤溪县', '福建省，三明市，尤溪县', 350426, 1651);
INSERT INTO `sys_area` VALUES (8622373, 86, 8621630, 3, '将乐县', '福建省，三明市，将乐县', 350428, 1652);
INSERT INTO `sys_area` VALUES (8622374, 86, 8621630, 3, '明溪县', '福建省，三明市，明溪县', 350421, 1653);
INSERT INTO `sys_area` VALUES (8622524, 86, 8621631, 3, '同安区', '福建省，厦门市，同安区', 350212, 1654);
INSERT INTO `sys_area` VALUES (8622525, 86, 8621631, 3, '海沧区', '福建省，厦门市，海沧区', 350205, 1655);
INSERT INTO `sys_area` VALUES (8622526, 86, 8621631, 3, '集美区', '福建省，厦门市，集美区', 350211, 1656);
INSERT INTO `sys_area` VALUES (8622527, 86, 8621631, 3, '湖里区', '福建省，厦门市，湖里区', 350206, 1657);
INSERT INTO `sys_area` VALUES (8622528, 86, 8621631, 3, '思明区', '福建省，厦门市，思明区', 350203, 1658);
INSERT INTO `sys_area` VALUES (8622529, 86, 8621631, 3, '翔安区', '福建省，厦门市，翔安区', 350213, 1659);
INSERT INTO `sys_area` VALUES (8622581, 86, 8621632, 3, '华安县', '福建省，漳州市，华安县', 350629, 1660);
INSERT INTO `sys_area` VALUES (8622582, 86, 8621632, 3, '南靖县', '福建省，漳州市，南靖县', 350627, 1661);
INSERT INTO `sys_area` VALUES (8622583, 86, 8621632, 3, '长泰县', '福建省，漳州市，长泰县', 350625, 1662);
INSERT INTO `sys_area` VALUES (8622584, 86, 8621632, 3, '云霄县', '福建省，漳州市，云霄县', 350622, 1663);
INSERT INTO `sys_area` VALUES (8622585, 86, 8621632, 3, '平和县', '福建省，漳州市，平和县', 350628, 1664);
INSERT INTO `sys_area` VALUES (8622586, 86, 8621632, 3, '诏安县', '福建省，漳州市，诏安县', 350624, 1665);
INSERT INTO `sys_area` VALUES (8622587, 86, 8621632, 3, '漳浦县', '福建省，漳州市，漳浦县', 350623, 1666);
INSERT INTO `sys_area` VALUES (8622588, 86, 8621632, 3, '龙海市', '福建省，漳州市，龙海市', 350681, 1667);
INSERT INTO `sys_area` VALUES (8622589, 86, 8621632, 3, '东山县', '福建省，漳州市，东山县', 350626, 1668);
INSERT INTO `sys_area` VALUES (8622590, 86, 8621632, 3, '龙文区', '福建省，漳州市，龙文区', 350603, 1669);
INSERT INTO `sys_area` VALUES (8622591, 86, 8621632, 3, '芗城区', '福建省，漳州市，芗城区', 350602, 1670);
INSERT INTO `sys_area` VALUES (8622752, 86, 8621633, 3, '武夷山市', '福建省，南平市，武夷山市', 350782, 1671);
INSERT INTO `sys_area` VALUES (8622753, 86, 8621633, 3, '浦城县', '福建省，南平市，浦城县', 350722, 1672);
INSERT INTO `sys_area` VALUES (8622754, 86, 8621633, 3, '松溪县', '福建省，南平市，松溪县', 350724, 1673);
INSERT INTO `sys_area` VALUES (8622755, 86, 8621633, 3, '光泽县', '福建省，南平市，光泽县', 350723, 1674);
INSERT INTO `sys_area` VALUES (8622756, 86, 8621633, 3, '建阳区', '福建省，南平市，建阳区', 350703, 1675);
INSERT INTO `sys_area` VALUES (8622757, 86, 8621633, 3, '邵武市', '福建省，南平市，邵武市', 350781, 1676);
INSERT INTO `sys_area` VALUES (8622758, 86, 8621633, 3, '建瓯市', '福建省，南平市，建瓯市', 350783, 1677);
INSERT INTO `sys_area` VALUES (8622759, 86, 8621633, 3, '政和县', '福建省，南平市，政和县', 350725, 1678);
INSERT INTO `sys_area` VALUES (8622760, 86, 8621633, 3, '顺昌县', '福建省，南平市，顺昌县', 350721, 1679);
INSERT INTO `sys_area` VALUES (8622761, 86, 8621633, 3, '延平区', '福建省，南平市，延平区', 350702, 1680);
INSERT INTO `sys_area` VALUES (8622902, 86, 8600016, 2, '岳阳市', '湖南省，岳阳市', 430600, 1681);
INSERT INTO `sys_area` VALUES (8622903, 86, 8600016, 2, '衡阳市', '湖南省，衡阳市', 430400, 1682);
INSERT INTO `sys_area` VALUES (8622904, 86, 8600016, 2, '娄底市', '湖南省，娄底市', 431300, 1683);
INSERT INTO `sys_area` VALUES (8622905, 86, 8600016, 2, '湘潭市', '湖南省，湘潭市', 430300, 1684);
INSERT INTO `sys_area` VALUES (8622906, 86, 8600016, 2, '益阳市', '湖南省，益阳市', 430900, 1685);
INSERT INTO `sys_area` VALUES (8622907, 86, 8600016, 2, '长沙市', '湖南省，长沙市', 430100, 1686);
INSERT INTO `sys_area` VALUES (8622908, 86, 8600016, 2, '常德市', '湖南省，常德市', 430700, 1687);
INSERT INTO `sys_area` VALUES (8622909, 86, 8600016, 2, '怀化市', '湖南省，怀化市', 431200, 1688);
INSERT INTO `sys_area` VALUES (8622910, 86, 8600016, 2, '邵阳市', '湖南省，邵阳市', 430500, 1689);
INSERT INTO `sys_area` VALUES (8622911, 86, 8600016, 2, '张家界市', '湖南省，张家界市', 430800, 1690);
INSERT INTO `sys_area` VALUES (8622912, 86, 8600016, 2, '湘西土家族苗族自治州', '湖南省，湘西土家族苗族自治州', 433100, 1691);
INSERT INTO `sys_area` VALUES (8622913, 86, 8600016, 2, '株洲市', '湖南省，株洲市', 430200, 1692);
INSERT INTO `sys_area` VALUES (8622914, 86, 8600016, 2, '永州市', '湖南省，永州市', 431100, 1693);
INSERT INTO `sys_area` VALUES (8622915, 86, 8600016, 2, '郴州市', '湖南省，郴州市', 431000, 1694);
INSERT INTO `sys_area` VALUES (8622916, 86, 8622902, 3, '华容县', '湖南省，岳阳市，华容县', 430623, 1695);
INSERT INTO `sys_area` VALUES (8622917, 86, 8622902, 3, '岳阳楼区', '湖南省，岳阳市，岳阳楼区', 430602, 1696);
INSERT INTO `sys_area` VALUES (8622918, 86, 8622902, 3, '君山区', '湖南省，岳阳市，君山区', 430611, 1697);
INSERT INTO `sys_area` VALUES (8622919, 86, 8622902, 3, '云溪区', '湖南省，岳阳市，云溪区', 430603, 1698);
INSERT INTO `sys_area` VALUES (8622920, 86, 8622902, 3, '汨罗市', '湖南省，岳阳市，汨罗市', 430681, 1699);
INSERT INTO `sys_area` VALUES (8622921, 86, 8622902, 3, '湘阴县', '湖南省，岳阳市，湘阴县', 430624, 1700);
INSERT INTO `sys_area` VALUES (8622922, 86, 8622902, 3, '岳阳县', '湖南省，岳阳市，岳阳县', 430621, 1701);
INSERT INTO `sys_area` VALUES (8622923, 86, 8622902, 3, '临湘市', '湖南省，岳阳市，临湘市', 430682, 1702);
INSERT INTO `sys_area` VALUES (8622924, 86, 8622902, 3, '平江县', '湖南省，岳阳市，平江县', 430626, 1703);
INSERT INTO `sys_area` VALUES (8623067, 86, 8622903, 3, '衡山县', '湖南省，衡阳市，衡山县', 430423, 1704);
INSERT INTO `sys_area` VALUES (8623068, 86, 8622903, 3, '衡东县', '湖南省，衡阳市，衡东县', 430424, 1705);
INSERT INTO `sys_area` VALUES (8623069, 86, 8622903, 3, '南岳区', '湖南省，衡阳市，南岳区', 430412, 1706);
INSERT INTO `sys_area` VALUES (8623070, 86, 8622903, 3, '衡阳县', '湖南省，衡阳市，衡阳县', 430421, 1707);
INSERT INTO `sys_area` VALUES (8623071, 86, 8622903, 3, '雁峰区', '湖南省，衡阳市，雁峰区', 430406, 1708);
INSERT INTO `sys_area` VALUES (8623072, 86, 8622903, 3, '珠晖区', '湖南省，衡阳市，珠晖区', 430405, 1709);
INSERT INTO `sys_area` VALUES (8623073, 86, 8622903, 3, '石鼓区', '湖南省，衡阳市，石鼓区', 430407, 1710);
INSERT INTO `sys_area` VALUES (8623074, 86, 8622903, 3, '祁东县', '湖南省，衡阳市，祁东县', 430426, 1711);
INSERT INTO `sys_area` VALUES (8623075, 86, 8622903, 3, '衡南县', '湖南省，衡阳市，衡南县', 430422, 1712);
INSERT INTO `sys_area` VALUES (8623076, 86, 8622903, 3, '耒阳市', '湖南省，衡阳市，耒阳市', 430481, 1713);
INSERT INTO `sys_area` VALUES (8623077, 86, 8622903, 3, '蒸湘区', '湖南省，衡阳市，蒸湘区', 430408, 1714);
INSERT INTO `sys_area` VALUES (8623078, 86, 8622903, 3, '常宁市', '湖南省，衡阳市，常宁市', 430482, 1715);
INSERT INTO `sys_area` VALUES (8623271, 86, 8622904, 3, '冷水江市', '湖南省，娄底市，冷水江市', 431381, 1716);
INSERT INTO `sys_area` VALUES (8623272, 86, 8622904, 3, '新化县', '湖南省，娄底市，新化县', 431322, 1717);
INSERT INTO `sys_area` VALUES (8623273, 86, 8622904, 3, '双峰县', '湖南省，娄底市，双峰县', 431321, 1718);
INSERT INTO `sys_area` VALUES (8623274, 86, 8622904, 3, '娄星区', '湖南省，娄底市，娄星区', 431302, 1719);
INSERT INTO `sys_area` VALUES (8623275, 86, 8622904, 3, '涟源市', '湖南省，娄底市，涟源市', 431382, 1720);
INSERT INTO `sys_area` VALUES (8623368, 86, 8622905, 3, '岳塘区', '湖南省，湘潭市，岳塘区', 430304, 1721);
INSERT INTO `sys_area` VALUES (8623369, 86, 8622905, 3, '湘潭县', '湖南省，湘潭市，湘潭县', 430321, 1722);
INSERT INTO `sys_area` VALUES (8623370, 86, 8622905, 3, '雨湖区', '湖南省，湘潭市，雨湖区', 430302, 1723);
INSERT INTO `sys_area` VALUES (8623371, 86, 8622905, 3, '韶山市', '湖南省，湘潭市，韶山市', 430382, 1724);
INSERT INTO `sys_area` VALUES (8623372, 86, 8622905, 3, '湘乡市', '湖南省，湘潭市，湘乡市', 430381, 1725);
INSERT INTO `sys_area` VALUES (8623448, 86, 8622906, 3, '沅江市', '湖南省，益阳市，沅江市', 430981, 1726);
INSERT INTO `sys_area` VALUES (8623449, 86, 8622906, 3, '南县', '湖南省，益阳市，南县', 430921, 1727);
INSERT INTO `sys_area` VALUES (8623450, 86, 8622906, 3, '资阳区', '湖南省，益阳市，资阳区', 430902, 1728);
INSERT INTO `sys_area` VALUES (8623451, 86, 8622906, 3, '桃江县', '湖南省，益阳市，桃江县', 430922, 1729);
INSERT INTO `sys_area` VALUES (8623452, 86, 8622906, 3, '赫山区', '湖南省，益阳市，赫山区', 430903, 1730);
INSERT INTO `sys_area` VALUES (8623453, 86, 8622906, 3, '安化县', '湖南省，益阳市，安化县', 430923, 1731);
INSERT INTO `sys_area` VALUES (8623554, 86, 8622907, 3, '芙蓉区', '湖南省，长沙市，芙蓉区', 430102, 1732);
INSERT INTO `sys_area` VALUES (8623555, 86, 8622907, 3, '开福区', '湖南省，长沙市，开福区', 430105, 1733);
INSERT INTO `sys_area` VALUES (8623556, 86, 8622907, 3, '岳麓区', '湖南省，长沙市，岳麓区', 430104, 1734);
INSERT INTO `sys_area` VALUES (8623557, 86, 8622907, 3, '长沙县', '湖南省，长沙市，长沙县', 430121, 1735);
INSERT INTO `sys_area` VALUES (8623558, 86, 8622907, 3, '天心区', '湖南省，长沙市，天心区', 430103, 1736);
INSERT INTO `sys_area` VALUES (8623559, 86, 8622907, 3, '浏阳市', '湖南省，长沙市，浏阳市', 430181, 1737);
INSERT INTO `sys_area` VALUES (8623560, 86, 8622907, 3, '雨花区', '湖南省，长沙市，雨花区', 430111, 1738);
INSERT INTO `sys_area` VALUES (8623561, 86, 8622907, 3, '宁乡市', '湖南省，长沙市，宁乡市', 430182, 1739);
INSERT INTO `sys_area` VALUES (8623562, 86, 8622907, 3, '望城区', '湖南省，长沙市，望城区', 430112, 1740);
INSERT INTO `sys_area` VALUES (8623733, 86, 8622908, 3, '临澧县', '湖南省，常德市，临澧县', 430724, 1741);
INSERT INTO `sys_area` VALUES (8623734, 86, 8622908, 3, '石门县', '湖南省，常德市，石门县', 430726, 1742);
INSERT INTO `sys_area` VALUES (8623735, 86, 8622908, 3, '津市市', '湖南省，常德市，津市市', 430781, 1743);
INSERT INTO `sys_area` VALUES (8623736, 86, 8622908, 3, '澧县', '湖南省，常德市，澧县', 430723, 1744);
INSERT INTO `sys_area` VALUES (8623737, 86, 8622908, 3, '鼎城区', '湖南省，常德市，鼎城区', 430703, 1745);
INSERT INTO `sys_area` VALUES (8623738, 86, 8622908, 3, '武陵区', '湖南省，常德市，武陵区', 430702, 1746);
INSERT INTO `sys_area` VALUES (8623739, 86, 8622908, 3, '汉寿县', '湖南省，常德市，汉寿县', 430722, 1747);
INSERT INTO `sys_area` VALUES (8623740, 86, 8622908, 3, '桃源县', '湖南省，常德市，桃源县', 430725, 1748);
INSERT INTO `sys_area` VALUES (8623741, 86, 8622908, 3, '安乡县', '湖南省，常德市，安乡县', 430721, 1749);
INSERT INTO `sys_area` VALUES (8623929, 86, 8622909, 3, '芷江侗族自治县', '湖南省，怀化市，芷江侗族自治县', 431228, 1750);
INSERT INTO `sys_area` VALUES (8623930, 86, 8622909, 3, '洪江市', '湖南省，怀化市，洪江市', 431281, 1751);
INSERT INTO `sys_area` VALUES (8623931, 86, 8622909, 3, '通道侗族自治县', '湖南省，怀化市，通道侗族自治县', 431230, 1752);
INSERT INTO `sys_area` VALUES (8623932, 86, 8622909, 3, '沅陵县', '湖南省，怀化市，沅陵县', 431222, 1753);
INSERT INTO `sys_area` VALUES (8623933, 86, 8622909, 3, '溆浦县', '湖南省，怀化市，溆浦县', 431224, 1754);
INSERT INTO `sys_area` VALUES (8623934, 86, 8622909, 3, '辰溪县', '湖南省，怀化市，辰溪县', 431223, 1755);
INSERT INTO `sys_area` VALUES (8623935, 86, 8622909, 3, '靖州苗族侗族自治县', '湖南省，怀化市，靖州苗族侗族自治县', 431229, 1756);
INSERT INTO `sys_area` VALUES (8623936, 86, 8622909, 3, '麻阳苗族自治县', '湖南省，怀化市，麻阳苗族自治县', 431226, 1757);
INSERT INTO `sys_area` VALUES (8623937, 86, 8622909, 3, '会同县', '湖南省，怀化市，会同县', 431225, 1758);
INSERT INTO `sys_area` VALUES (8623938, 86, 8622909, 3, '新晃侗族自治县', '湖南省，怀化市，新晃侗族自治县', 431227, 1759);
INSERT INTO `sys_area` VALUES (8623939, 86, 8622909, 3, '鹤城区', '湖南省，怀化市，鹤城区', 431202, 1760);
INSERT INTO `sys_area` VALUES (8623940, 86, 8622909, 3, '中方县', '湖南省，怀化市，中方县', 431221, 1761);
INSERT INTO `sys_area` VALUES (8624162, 86, 8622910, 3, '隆回县', '湖南省，邵阳市，隆回县', 430524, 1762);
INSERT INTO `sys_area` VALUES (8624163, 86, 8622910, 3, '邵东县', '湖南省，邵阳市，邵东县', 430521, 1763);
INSERT INTO `sys_area` VALUES (8624164, 86, 8622910, 3, '大祥区', '湖南省，邵阳市，大祥区', 430503, 1764);
INSERT INTO `sys_area` VALUES (8624165, 86, 8622910, 3, '邵阳县', '湖南省，邵阳市，邵阳县', 430523, 1765);
INSERT INTO `sys_area` VALUES (8624166, 86, 8622910, 3, '北塔区', '湖南省，邵阳市，北塔区', 430511, 1766);
INSERT INTO `sys_area` VALUES (8624167, 86, 8622910, 3, '绥宁县', '湖南省，邵阳市，绥宁县', 430527, 1767);
INSERT INTO `sys_area` VALUES (8624168, 86, 8622910, 3, '双清区', '湖南省，邵阳市，双清区', 430502, 1768);
INSERT INTO `sys_area` VALUES (8624169, 86, 8622910, 3, '新宁县', '湖南省，邵阳市，新宁县', 430528, 1769);
INSERT INTO `sys_area` VALUES (8624170, 86, 8622910, 3, '城步苗族自治县', '湖南省，邵阳市，城步苗族自治县', 430529, 1770);
INSERT INTO `sys_area` VALUES (8624171, 86, 8622910, 3, '新邵县', '湖南省，邵阳市，新邵县', 430522, 1771);
INSERT INTO `sys_area` VALUES (8624172, 86, 8622910, 3, '武冈市', '湖南省，邵阳市，武冈市', 430581, 1772);
INSERT INTO `sys_area` VALUES (8624173, 86, 8622910, 3, '洞口县', '湖南省，邵阳市，洞口县', 430525, 1773);
INSERT INTO `sys_area` VALUES (8624388, 86, 8622911, 3, '武陵源区', '湖南省，张家界市，武陵源区', 430811, 1774);
INSERT INTO `sys_area` VALUES (8624389, 86, 8622911, 3, '慈利县', '湖南省，张家界市，慈利县', 430821, 1775);
INSERT INTO `sys_area` VALUES (8624390, 86, 8622911, 3, '桑植县', '湖南省，张家界市，桑植县', 430822, 1776);
INSERT INTO `sys_area` VALUES (8624391, 86, 8622911, 3, '永定区', '湖南省，张家界市，永定区', 430802, 1777);
INSERT INTO `sys_area` VALUES (8624476, 86, 8622912, 3, '永顺县', '湖南省，湘西土家族苗族自治州，永顺县', 433127, 1778);
INSERT INTO `sys_area` VALUES (8624477, 86, 8622912, 3, '花垣县', '湖南省，湘西土家族苗族自治州，花垣县', 433124, 1779);
INSERT INTO `sys_area` VALUES (8624478, 86, 8622912, 3, '保靖县', '湖南省，湘西土家族苗族自治州，保靖县', 433125, 1780);
INSERT INTO `sys_area` VALUES (8624479, 86, 8622912, 3, '吉首市', '湖南省，湘西土家族苗族自治州，吉首市', 433101, 1781);
INSERT INTO `sys_area` VALUES (8624480, 86, 8622912, 3, '古丈县', '湖南省，湘西土家族苗族自治州，古丈县', 433126, 1782);
INSERT INTO `sys_area` VALUES (8624481, 86, 8622912, 3, '泸溪县', '湖南省，湘西土家族苗族自治州，泸溪县', 433122, 1783);
INSERT INTO `sys_area` VALUES (8624482, 86, 8622912, 3, '龙山县', '湖南省，湘西土家族苗族自治州，龙山县', 433130, 1784);
INSERT INTO `sys_area` VALUES (8624483, 86, 8622912, 3, '凤凰县', '湖南省，湘西土家族苗族自治州，凤凰县', 433123, 1785);
INSERT INTO `sys_area` VALUES (8624608, 86, 8622913, 3, '荷塘区', '湖南省，株洲市，荷塘区', 430202, 1786);
INSERT INTO `sys_area` VALUES (8624609, 86, 8622913, 3, '茶陵县', '湖南省，株洲市，茶陵县', 430224, 1787);
INSERT INTO `sys_area` VALUES (8624610, 86, 8622913, 3, '攸县', '湖南省，株洲市，攸县', 430223, 1788);
INSERT INTO `sys_area` VALUES (8624611, 86, 8622913, 3, '炎陵县', '湖南省，株洲市，炎陵县', 430225, 1789);
INSERT INTO `sys_area` VALUES (8624612, 86, 8622913, 3, '天元区', '湖南省，株洲市，天元区', 430211, 1790);
INSERT INTO `sys_area` VALUES (8624613, 86, 8622913, 3, '芦淞区', '湖南省，株洲市，芦淞区', 430203, 1791);
INSERT INTO `sys_area` VALUES (8624614, 86, 8622913, 3, '株洲县', '湖南省，株洲市，株洲县', 430221, 1792);
INSERT INTO `sys_area` VALUES (8624615, 86, 8622913, 3, '石峰区', '湖南省，株洲市，石峰区', 430204, 1793);
INSERT INTO `sys_area` VALUES (8624616, 86, 8622913, 3, '醴陵市', '湖南省，株洲市，醴陵市', 430281, 1794);
INSERT INTO `sys_area` VALUES (8624734, 86, 8622914, 3, '冷水滩区', '湖南省，永州市，冷水滩区', 431103, 1795);
INSERT INTO `sys_area` VALUES (8624735, 86, 8622914, 3, '东安县', '湖南省，永州市，东安县', 431122, 1796);
INSERT INTO `sys_area` VALUES (8624736, 86, 8622914, 3, '祁阳县', '湖南省，永州市，祁阳县', 431121, 1797);
INSERT INTO `sys_area` VALUES (8624737, 86, 8622914, 3, '新田县', '湖南省，永州市，新田县', 431128, 1798);
INSERT INTO `sys_area` VALUES (8624738, 86, 8622914, 3, '零陵区', '湖南省，永州市，零陵区', 431102, 1799);
INSERT INTO `sys_area` VALUES (8624739, 86, 8622914, 3, '宁远县', '湖南省，永州市，宁远县', 431126, 1800);
INSERT INTO `sys_area` VALUES (8624740, 86, 8622914, 3, '道县', '湖南省，永州市，道县', 431124, 1801);
INSERT INTO `sys_area` VALUES (8624741, 86, 8622914, 3, '蓝山县', '湖南省，永州市，蓝山县', 431127, 1802);
INSERT INTO `sys_area` VALUES (8624742, 86, 8622914, 3, '江华瑶族自治县', '湖南省，永州市，江华瑶族自治县', 431129, 1803);
INSERT INTO `sys_area` VALUES (8624743, 86, 8622914, 3, '江永县', '湖南省，永州市，江永县', 431125, 1804);
INSERT INTO `sys_area` VALUES (8624744, 86, 8622914, 3, '双牌县', '湖南省，永州市，双牌县', 431123, 1805);
INSERT INTO `sys_area` VALUES (8624934, 86, 8622915, 3, '安仁县', '湖南省，郴州市，安仁县', 431028, 1806);
INSERT INTO `sys_area` VALUES (8624935, 86, 8622915, 3, '永兴县', '湖南省，郴州市，永兴县', 431023, 1807);
INSERT INTO `sys_area` VALUES (8624936, 86, 8622915, 3, '苏仙区', '湖南省，郴州市，苏仙区', 431003, 1808);
INSERT INTO `sys_area` VALUES (8624937, 86, 8622915, 3, '资兴市', '湖南省，郴州市，资兴市', 431081, 1809);
INSERT INTO `sys_area` VALUES (8624938, 86, 8622915, 3, '桂东县', '湖南省，郴州市，桂东县', 431027, 1810);
INSERT INTO `sys_area` VALUES (8624939, 86, 8622915, 3, '汝城县', '湖南省，郴州市，汝城县', 431026, 1811);
INSERT INTO `sys_area` VALUES (8624940, 86, 8622915, 3, '嘉禾县', '湖南省，郴州市，嘉禾县', 431024, 1812);
INSERT INTO `sys_area` VALUES (8624941, 86, 8622915, 3, '北湖区', '湖南省，郴州市，北湖区', 431002, 1813);
INSERT INTO `sys_area` VALUES (8624942, 86, 8622915, 3, '临武县', '湖南省，郴州市，临武县', 431025, 1814);
INSERT INTO `sys_area` VALUES (8624943, 86, 8622915, 3, '桂阳县', '湖南省，郴州市，桂阳县', 431021, 1815);
INSERT INTO `sys_area` VALUES (8624944, 86, 8622915, 3, '宜章县', '湖南省，郴州市，宜章县', 431022, 1816);
INSERT INTO `sys_area` VALUES (8625115, 86, 8600017, 3, '屯昌县', '海南省，屯昌县', 469022, 1817);
INSERT INTO `sys_area` VALUES (8625116, 86, 8600017, 3, '琼海市', '海南省，琼海市', 469002, 1818);
INSERT INTO `sys_area` VALUES (8625117, 86, 8600017, 3, '昌江黎族自治县', '海南省，昌江黎族自治县', 469026, 1819);
INSERT INTO `sys_area` VALUES (8625118, 86, 8600017, 3, '定安县', '海南省，定安县', 469021, 1820);
INSERT INTO `sys_area` VALUES (8625119, 86, 8600017, 3, '琼中黎族苗族自治县', '海南省，琼中黎族苗族自治县', 469030, 1821);
INSERT INTO `sys_area` VALUES (8625120, 86, 8600017, 3, '临高县', '海南省，临高县', 469024, 1822);
INSERT INTO `sys_area` VALUES (8625121, 86, 8600017, 3, '东方市', '海南省，东方市', 469007, 1823);
INSERT INTO `sys_area` VALUES (8625122, 86, 8600017, 3, '白沙黎族自治县', '海南省，白沙黎族自治县', 469025, 1824);
INSERT INTO `sys_area` VALUES (8625123, 86, 8600017, 3, '文昌市', '海南省，文昌市', 469005, 1825);
INSERT INTO `sys_area` VALUES (8625124, 86, 8600017, 3, '五指山市', '海南省，五指山市', 469001, 1826);
INSERT INTO `sys_area` VALUES (8625125, 86, 8600017, 3, '保亭黎族苗族自治县', '海南省，保亭黎族苗族自治县', 469029, 1827);
INSERT INTO `sys_area` VALUES (8625126, 86, 8600017, 3, '澄迈县', '海南省，澄迈县', 469023, 1828);
INSERT INTO `sys_area` VALUES (8625127, 86, 8600017, 2, '三沙市', '海南省，三沙市', 460300, 1829);
INSERT INTO `sys_area` VALUES (8625128, 86, 8600017, 3, '陵水黎族自治县', '海南省，陵水黎族自治县', 469028, 1830);
INSERT INTO `sys_area` VALUES (8625129, 86, 8600017, 2, '三亚市', '海南省，三亚市', 460200, 1831);
INSERT INTO `sys_area` VALUES (8625130, 86, 8600017, 3, '万宁市', '海南省，万宁市', 469006, 1832);
INSERT INTO `sys_area` VALUES (8625131, 86, 8600017, 3, '乐东黎族自治县', '海南省，乐东黎族自治县', 469027, 1833);
INSERT INTO `sys_area` VALUES (8625132, 86, 8600017, 2, '儋州市', '海南省，儋州市', 460400, 1834);
INSERT INTO `sys_area` VALUES (8625133, 86, 8600017, 2, '海口市', '海南省，海口市', 460100, 1835);
INSERT INTO `sys_area` VALUES (8625295, 86, 8625127, 3, '西沙群岛', '海南省，三沙市，西沙群岛', 460321, 1836);
INSERT INTO `sys_area` VALUES (8625296, 86, 8625127, 3, '南沙群岛', '海南省，三沙市，南沙群岛', 460322, 1837);
INSERT INTO `sys_area` VALUES (8625297, 86, 8625127, 3, '中沙群岛的岛礁及其海域', '海南省，三沙市，中沙群岛的岛礁及其海域', 460323, 1838);
INSERT INTO `sys_area` VALUES (8625313, 86, 8625129, 3, '崖州区', '海南省，三亚市，崖州区', 460205, 1839);
INSERT INTO `sys_area` VALUES (8625314, 86, 8625129, 3, '天涯区', '海南省，三亚市，天涯区', 460204, 1840);
INSERT INTO `sys_area` VALUES (8625315, 86, 8625129, 3, '海棠区', '海南省，三亚市，海棠区', 460202, 1841);
INSERT INTO `sys_area` VALUES (8625316, 86, 8625129, 3, '吉阳区', '海南省，三亚市，吉阳区', 460203, 1842);
INSERT INTO `sys_area` VALUES (8625385, 86, 8625133, 3, '龙华区', '海南省，海口市，龙华区', 460106, 1843);
INSERT INTO `sys_area` VALUES (8625386, 86, 8625133, 3, '美兰区', '海南省，海口市，美兰区', 460108, 1844);
INSERT INTO `sys_area` VALUES (8625387, 86, 8625133, 3, '琼山区', '海南省，海口市，琼山区', 460107, 1845);
INSERT INTO `sys_area` VALUES (8625388, 86, 8625133, 3, '秀英区', '海南省，海口市，秀英区', 460105, 1846);
INSERT INTO `sys_area` VALUES (8625439, 86, 8600018, 2, '宿迁市', '江苏省，宿迁市', 321300, 1847);
INSERT INTO `sys_area` VALUES (8625440, 86, 8600018, 2, '连云港市', '江苏省，连云港市', 320700, 1848);
INSERT INTO `sys_area` VALUES (8625441, 86, 8600018, 2, '扬州市', '江苏省，扬州市', 321000, 1849);
INSERT INTO `sys_area` VALUES (8625442, 86, 8600018, 2, '南京市', '江苏省，南京市', 320100, 1850);
INSERT INTO `sys_area` VALUES (8625443, 86, 8600018, 2, '南通市', '江苏省，南通市', 320600, 1851);
INSERT INTO `sys_area` VALUES (8625444, 86, 8600018, 2, '无锡市', '江苏省，无锡市', 320200, 1852);
INSERT INTO `sys_area` VALUES (8625445, 86, 8600018, 2, '镇江市', '江苏省，镇江市', 321100, 1853);
INSERT INTO `sys_area` VALUES (8625446, 86, 8600018, 2, '淮安市', '江苏省，淮安市', 320800, 1854);
INSERT INTO `sys_area` VALUES (8625447, 86, 8600018, 2, '泰州市', '江苏省，泰州市', 321200, 1855);
INSERT INTO `sys_area` VALUES (8625448, 86, 8600018, 2, '徐州市', '江苏省，徐州市', 320300, 1856);
INSERT INTO `sys_area` VALUES (8625449, 86, 8600018, 2, '苏州市', '江苏省，苏州市', 320500, 1857);
INSERT INTO `sys_area` VALUES (8625450, 86, 8600018, 2, '常州市', '江苏省，常州市', 320400, 1858);
INSERT INTO `sys_area` VALUES (8625451, 86, 8600018, 2, '盐城市', '江苏省，盐城市', 320900, 1859);
INSERT INTO `sys_area` VALUES (8625452, 86, 8625439, 3, '沭阳县', '江苏省，宿迁市，沭阳县', 321322, 1860);
INSERT INTO `sys_area` VALUES (8625453, 86, 8625439, 3, '泗阳县', '江苏省，宿迁市，泗阳县', 321323, 1861);
INSERT INTO `sys_area` VALUES (8625454, 86, 8625439, 3, '泗洪县', '江苏省，宿迁市，泗洪县', 321324, 1862);
INSERT INTO `sys_area` VALUES (8625455, 86, 8625439, 3, '宿城区', '江苏省，宿迁市，宿城区', 321302, 1863);
INSERT INTO `sys_area` VALUES (8625456, 86, 8625439, 3, '宿豫区', '江苏省，宿迁市，宿豫区', 321311, 1864);
INSERT INTO `sys_area` VALUES (8625586, 86, 8625440, 3, '东海县', '江苏省，连云港市，东海县', 320722, 1865);
INSERT INTO `sys_area` VALUES (8625587, 86, 8625440, 3, '连云区', '江苏省，连云港市，连云区', 320703, 1866);
INSERT INTO `sys_area` VALUES (8625588, 86, 8625440, 3, '灌云县', '江苏省，连云港市，灌云县', 320723, 1867);
INSERT INTO `sys_area` VALUES (8625589, 86, 8625440, 3, '灌南县', '江苏省，连云港市，灌南县', 320724, 1868);
INSERT INTO `sys_area` VALUES (8625590, 86, 8625440, 3, '赣榆区', '江苏省，连云港市，赣榆区', 320707, 1869);
INSERT INTO `sys_area` VALUES (8625591, 86, 8625440, 3, '海州区', '江苏省，连云港市，海州区', 320706, 1870);
INSERT INTO `sys_area` VALUES (8625696, 86, 8625441, 3, '宝应县', '江苏省，扬州市，宝应县', 321023, 1871);
INSERT INTO `sys_area` VALUES (8625697, 86, 8625441, 3, '江都区', '江苏省，扬州市，江都区', 321012, 1872);
INSERT INTO `sys_area` VALUES (8625698, 86, 8625441, 3, '广陵区', '江苏省，扬州市，广陵区', 321002, 1873);
INSERT INTO `sys_area` VALUES (8625699, 86, 8625441, 3, '邗江区', '江苏省，扬州市，邗江区', 321003, 1874);
INSERT INTO `sys_area` VALUES (8625700, 86, 8625441, 3, '高邮市', '江苏省，扬州市，高邮市', 321084, 1875);
INSERT INTO `sys_area` VALUES (8625701, 86, 8625441, 3, '仪征市', '江苏省，扬州市，仪征市', 321081, 1876);
INSERT INTO `sys_area` VALUES (8625801, 86, 8625442, 3, '浦口区', '江苏省，南京市，浦口区', 320111, 1877);
INSERT INTO `sys_area` VALUES (8625802, 86, 8625442, 3, '雨花台区', '江苏省，南京市，雨花台区', 320114, 1878);
INSERT INTO `sys_area` VALUES (8625803, 86, 8625442, 3, '溧水区', '江苏省，南京市，溧水区', 320117, 1879);
INSERT INTO `sys_area` VALUES (8625804, 86, 8625442, 3, '江宁区', '江苏省，南京市，江宁区', 320115, 1880);
INSERT INTO `sys_area` VALUES (8625805, 86, 8625442, 3, '玄武区', '江苏省，南京市，玄武区', 320102, 1881);
INSERT INTO `sys_area` VALUES (8625806, 86, 8625442, 3, '栖霞区', '江苏省，南京市，栖霞区', 320113, 1882);
INSERT INTO `sys_area` VALUES (8625807, 86, 8625442, 3, '秦淮区', '江苏省，南京市，秦淮区', 320104, 1883);
INSERT INTO `sys_area` VALUES (8625808, 86, 8625442, 3, '高淳区', '江苏省，南京市，高淳区', 320118, 1884);
INSERT INTO `sys_area` VALUES (8625809, 86, 8625442, 3, '六合区', '江苏省，南京市，六合区', 320116, 1885);
INSERT INTO `sys_area` VALUES (8625810, 86, 8625442, 3, '建邺区', '江苏省，南京市，建邺区', 320105, 1886);
INSERT INTO `sys_area` VALUES (8625811, 86, 8625442, 3, '鼓楼区', '江苏省，南京市，鼓楼区', 320106, 1887);
INSERT INTO `sys_area` VALUES (8625942, 86, 8625443, 3, '如皋市', '江苏省，南通市，如皋市', 320682, 1888);
INSERT INTO `sys_area` VALUES (8625943, 86, 8625443, 3, '海门市', '江苏省，南通市，海门市', 320684, 1889);
INSERT INTO `sys_area` VALUES (8625944, 86, 8625443, 3, '海安县', '江苏省，南通市，海安县', 320621, 1890);
INSERT INTO `sys_area` VALUES (8625945, 86, 8625443, 3, '启东市', '江苏省，南通市，启东市', 320681, 1891);
INSERT INTO `sys_area` VALUES (8625946, 86, 8625443, 3, '如东县', '江苏省，南通市，如东县', 320623, 1892);
INSERT INTO `sys_area` VALUES (8625947, 86, 8625443, 3, '通州区', '江苏省，南通市，通州区', 320612, 1893);
INSERT INTO `sys_area` VALUES (8625948, 86, 8625443, 3, '崇川区', '江苏省，南通市，崇川区', 320602, 1894);
INSERT INTO `sys_area` VALUES (8625949, 86, 8625443, 3, '港闸区', '江苏省，南通市，港闸区', 320611, 1895);
INSERT INTO `sys_area` VALUES (8626063, 86, 8625444, 3, '宜兴市', '江苏省，无锡市，宜兴市', 320282, 1896);
INSERT INTO `sys_area` VALUES (8626064, 86, 8625444, 3, '惠山区', '江苏省，无锡市，惠山区', 320206, 1897);
INSERT INTO `sys_area` VALUES (8626065, 86, 8625444, 3, '江阴市', '江苏省，无锡市，江阴市', 320281, 1898);
INSERT INTO `sys_area` VALUES (8626066, 86, 8625444, 3, '梁溪区', '江苏省，无锡市，梁溪区', 320213, 1899);
INSERT INTO `sys_area` VALUES (8626067, 86, 8625444, 3, '锡山区', '江苏省，无锡市，锡山区', 320205, 1900);
INSERT INTO `sys_area` VALUES (8626068, 86, 8625444, 3, '新吴区', '江苏省，无锡市，新吴区', 320214, 1901);
INSERT INTO `sys_area` VALUES (8626069, 86, 8625444, 3, '滨湖区', '江苏省，无锡市，滨湖区', 320211, 1902);
INSERT INTO `sys_area` VALUES (8626154, 86, 8625445, 3, '扬中市', '江苏省，镇江市，扬中市', 321182, 1903);
INSERT INTO `sys_area` VALUES (8626155, 86, 8625445, 3, '丹阳市', '江苏省，镇江市，丹阳市', 321181, 1904);
INSERT INTO `sys_area` VALUES (8626156, 86, 8625445, 3, '润州区', '江苏省，镇江市，润州区', 321111, 1905);
INSERT INTO `sys_area` VALUES (8626157, 86, 8625445, 3, '句容市', '江苏省，镇江市，句容市', 321183, 1906);
INSERT INTO `sys_area` VALUES (8626158, 86, 8625445, 3, '丹徒区', '江苏省，镇江市，丹徒区', 321112, 1907);
INSERT INTO `sys_area` VALUES (8626159, 86, 8625445, 3, '京口区', '江苏省，镇江市，京口区', 321102, 1908);
INSERT INTO `sys_area` VALUES (8626222, 86, 8625446, 3, '涟水县', '江苏省，淮安市，涟水县', 320826, 1909);
INSERT INTO `sys_area` VALUES (8626223, 86, 8625446, 3, '洪泽区', '江苏省，淮安市，洪泽区', 320813, 1910);
INSERT INTO `sys_area` VALUES (8626224, 86, 8625446, 3, '金湖县', '江苏省，淮安市，金湖县', 320831, 1911);
INSERT INTO `sys_area` VALUES (8626225, 86, 8625446, 3, '淮安区', '江苏省，淮安市，淮安区', 320803, 1912);
INSERT INTO `sys_area` VALUES (8626226, 86, 8625446, 3, '淮阴区', '江苏省，淮安市，淮阴区', 320804, 1913);
INSERT INTO `sys_area` VALUES (8626227, 86, 8625446, 3, '盱眙县', '江苏省，淮安市，盱眙县', 320830, 1914);
INSERT INTO `sys_area` VALUES (8626228, 86, 8625446, 3, '清江浦区', '江苏省，淮安市，清江浦区', 320812, 1915);
INSERT INTO `sys_area` VALUES (8626380, 86, 8625447, 3, '兴化市', '江苏省，泰州市，兴化市', 321281, 1916);
INSERT INTO `sys_area` VALUES (8626381, 86, 8625447, 3, '靖江市', '江苏省，泰州市，靖江市', 321282, 1917);
INSERT INTO `sys_area` VALUES (8626382, 86, 8625447, 3, '海陵区', '江苏省，泰州市，海陵区', 321202, 1918);
INSERT INTO `sys_area` VALUES (8626383, 86, 8625447, 3, '泰兴市', '江苏省，泰州市，泰兴市', 321283, 1919);
INSERT INTO `sys_area` VALUES (8626384, 86, 8625447, 3, '高港区', '江苏省，泰州市，高港区', 321203, 1920);
INSERT INTO `sys_area` VALUES (8626385, 86, 8625447, 3, '姜堰区', '江苏省，泰州市，姜堰区', 321204, 1921);
INSERT INTO `sys_area` VALUES (8626488, 86, 8625448, 3, '丰县', '江苏省，徐州市，丰县', 320321, 1922);
INSERT INTO `sys_area` VALUES (8626489, 86, 8625448, 3, '邳州市', '江苏省，徐州市，邳州市', 320382, 1923);
INSERT INTO `sys_area` VALUES (8626490, 86, 8625448, 3, '新沂市', '江苏省，徐州市，新沂市', 320381, 1924);
INSERT INTO `sys_area` VALUES (8626491, 86, 8625448, 3, '泉山区', '江苏省，徐州市，泉山区', 320311, 1925);
INSERT INTO `sys_area` VALUES (8626492, 86, 8625448, 3, '铜山区', '江苏省，徐州市，铜山区', 320312, 1926);
INSERT INTO `sys_area` VALUES (8626493, 86, 8625448, 3, '睢宁县', '江苏省，徐州市，睢宁县', 320324, 1927);
INSERT INTO `sys_area` VALUES (8626494, 86, 8625448, 3, '鼓楼区', '江苏省，徐州市，鼓楼区', 320302, 1928);
INSERT INTO `sys_area` VALUES (8626495, 86, 8625448, 3, '贾汪区', '江苏省，徐州市，贾汪区', 320305, 1929);
INSERT INTO `sys_area` VALUES (8626496, 86, 8625448, 3, '云龙区', '江苏省，徐州市，云龙区', 320303, 1930);
INSERT INTO `sys_area` VALUES (8626497, 86, 8625448, 3, '沛县', '江苏省，徐州市，沛县', 320322, 1931);
INSERT INTO `sys_area` VALUES (8626668, 86, 8625449, 3, '张家港市', '江苏省，苏州市，张家港市', 320582, 1932);
INSERT INTO `sys_area` VALUES (8626669, 86, 8625449, 3, '虎丘区', '江苏省，苏州市，虎丘区', 320505, 1933);
INSERT INTO `sys_area` VALUES (8626670, 86, 8625449, 3, '常熟市', '江苏省，苏州市，常熟市', 320581, 1934);
INSERT INTO `sys_area` VALUES (8626671, 86, 8625449, 3, '太仓市', '江苏省，苏州市，太仓市', 320585, 1935);
INSERT INTO `sys_area` VALUES (8626672, 86, 8625449, 3, '昆山市', '江苏省，苏州市，昆山市', 320583, 1936);
INSERT INTO `sys_area` VALUES (8626673, 86, 8625449, 3, '姑苏区', '江苏省，苏州市，姑苏区', 320508, 1937);
INSERT INTO `sys_area` VALUES (8626674, 86, 8625449, 3, '相城区', '江苏省，苏州市，相城区', 320507, 1938);
INSERT INTO `sys_area` VALUES (8626675, 86, 8625449, 3, '吴江区', '江苏省，苏州市，吴江区', 320509, 1939);
INSERT INTO `sys_area` VALUES (8626676, 86, 8625449, 3, '吴中区', '江苏省，苏州市，吴中区', 320506, 1940);
INSERT INTO `sys_area` VALUES (8626781, 86, 8625450, 3, '金坛区', '江苏省，常州市，金坛区', 320413, 1941);
INSERT INTO `sys_area` VALUES (8626782, 86, 8625450, 3, '武进区', '江苏省，常州市，武进区', 320412, 1942);
INSERT INTO `sys_area` VALUES (8626783, 86, 8625450, 3, '钟楼区', '江苏省，常州市，钟楼区', 320404, 1943);
INSERT INTO `sys_area` VALUES (8626784, 86, 8625450, 3, '天宁区', '江苏省，常州市，天宁区', 320402, 1944);
INSERT INTO `sys_area` VALUES (8626785, 86, 8625450, 3, '新北区', '江苏省，常州市，新北区', 320411, 1945);
INSERT INTO `sys_area` VALUES (8626786, 86, 8625450, 3, '溧阳市', '江苏省，常州市，溧阳市', 320481, 1946);
INSERT INTO `sys_area` VALUES (8626850, 86, 8625451, 3, '响水县', '江苏省，盐城市，响水县', 320921, 1947);
INSERT INTO `sys_area` VALUES (8626851, 86, 8625451, 3, '滨海县', '江苏省，盐城市，滨海县', 320922, 1948);
INSERT INTO `sys_area` VALUES (8626852, 86, 8625451, 3, '射阳县', '江苏省，盐城市，射阳县', 320924, 1949);
INSERT INTO `sys_area` VALUES (8626853, 86, 8625451, 3, '阜宁县', '江苏省，盐城市，阜宁县', 320923, 1950);
INSERT INTO `sys_area` VALUES (8626854, 86, 8625451, 3, '建湖县', '江苏省，盐城市，建湖县', 320925, 1951);
INSERT INTO `sys_area` VALUES (8626855, 86, 8625451, 3, '亭湖区', '江苏省，盐城市，亭湖区', 320902, 1952);
INSERT INTO `sys_area` VALUES (8626856, 86, 8625451, 3, '盐都区', '江苏省，盐城市，盐都区', 320903, 1953);
INSERT INTO `sys_area` VALUES (8626857, 86, 8625451, 3, '大丰区', '江苏省，盐城市，大丰区', 320904, 1954);
INSERT INTO `sys_area` VALUES (8626858, 86, 8625451, 3, '东台市', '江苏省，盐城市，东台市', 320981, 1955);
INSERT INTO `sys_area` VALUES (8627016, 86, 8600019, 2, '海东市', '青海省，海东市', 630200, 1956);
INSERT INTO `sys_area` VALUES (8627017, 86, 8600019, 2, '海南藏族自治州', '青海省，海南藏族自治州', 632500, 1957);
INSERT INTO `sys_area` VALUES (8627018, 86, 8600019, 2, '海西蒙古族藏族自治州', '青海省，海西蒙古族藏族自治州', 632800, 1958);
INSERT INTO `sys_area` VALUES (8627019, 86, 8600019, 2, '玉树藏族自治州', '青海省，玉树藏族自治州', 632700, 1959);
INSERT INTO `sys_area` VALUES (8627020, 86, 8600019, 2, '黄南藏族自治州', '青海省，黄南藏族自治州', 632300, 1960);
INSERT INTO `sys_area` VALUES (8627021, 86, 8600019, 2, '果洛藏族自治州', '青海省，果洛藏族自治州', 632600, 1961);
INSERT INTO `sys_area` VALUES (8627022, 86, 8600019, 2, '海北藏族自治州', '青海省，海北藏族自治州', 632200, 1962);
INSERT INTO `sys_area` VALUES (8627023, 86, 8600019, 2, '西宁市', '青海省，西宁市', 630100, 1963);
INSERT INTO `sys_area` VALUES (8627024, 86, 8627016, 3, '化隆回族自治县', '青海省，海东市，化隆回族自治县', 630224, 1964);
INSERT INTO `sys_area` VALUES (8627025, 86, 8627016, 3, '循化撒拉族自治县', '青海省，海东市，循化撒拉族自治县', 630225, 1965);
INSERT INTO `sys_area` VALUES (8627026, 86, 8627016, 3, '平安区', '青海省，海东市，平安区', 630203, 1966);
INSERT INTO `sys_area` VALUES (8627027, 86, 8627016, 3, '乐都区', '青海省，海东市，乐都区', 630202, 1967);
INSERT INTO `sys_area` VALUES (8627028, 86, 8627016, 3, '民和回族土族自治县', '青海省，海东市，民和回族土族自治县', 630222, 1968);
INSERT INTO `sys_area` VALUES (8627029, 86, 8627016, 3, '互助土族自治县', '青海省，海东市，互助土族自治县', 630223, 1969);
INSERT INTO `sys_area` VALUES (8627126, 86, 8627017, 3, '贵南县', '青海省，海南藏族自治州，贵南县', 632525, 1970);
INSERT INTO `sys_area` VALUES (8627127, 86, 8627017, 3, '同德县', '青海省，海南藏族自治州，同德县', 632522, 1971);
INSERT INTO `sys_area` VALUES (8627128, 86, 8627017, 3, '兴海县', '青海省，海南藏族自治州，兴海县', 632524, 1972);
INSERT INTO `sys_area` VALUES (8627129, 86, 8627017, 3, '贵德县', '青海省，海南藏族自治州，贵德县', 632523, 1973);
INSERT INTO `sys_area` VALUES (8627130, 86, 8627017, 3, '共和县', '青海省，海南藏族自治州，共和县', 632521, 1974);
INSERT INTO `sys_area` VALUES (8627174, 86, 8627018, 3, '德令哈市', '青海省，海西蒙古族藏族自治州，德令哈市', 632802, 1975);
INSERT INTO `sys_area` VALUES (8627175, 86, 8627018, 3, '格尔木市', '青海省，海西蒙古族藏族自治州，格尔木市', 632801, 1976);
INSERT INTO `sys_area` VALUES (8627176, 86, 8627018, 3, '天峻县', '青海省，海西蒙古族藏族自治州，天峻县', 632823, 1977);
INSERT INTO `sys_area` VALUES (8627177, 86, 8627018, 3, '海西蒙古族藏族自治州直辖', '青海省，海西蒙古族藏族自治州，海西蒙古族藏族自治州直辖', 632825, 1978);
INSERT INTO `sys_area` VALUES (8627178, 86, 8627018, 3, '都兰县', '青海省，海西蒙古族藏族自治州，都兰县', 632822, 1979);
INSERT INTO `sys_area` VALUES (8627179, 86, 8627018, 3, '乌兰县', '青海省，海西蒙古族藏族自治州，乌兰县', 632821, 1980);
INSERT INTO `sys_area` VALUES (8627226, 86, 8627019, 3, '曲麻莱县', '青海省，玉树藏族自治州，曲麻莱县', 632726, 1981);
INSERT INTO `sys_area` VALUES (8627227, 86, 8627019, 3, '治多县', '青海省，玉树藏族自治州，治多县', 632724, 1982);
INSERT INTO `sys_area` VALUES (8627228, 86, 8627019, 3, '称多县', '青海省，玉树藏族自治州，称多县', 632723, 1983);
INSERT INTO `sys_area` VALUES (8627229, 86, 8627019, 3, '玉树市', '青海省，玉树藏族自治州，玉树市', 632701, 1984);
INSERT INTO `sys_area` VALUES (8627230, 86, 8627019, 3, '杂多县', '青海省，玉树藏族自治州，杂多县', 632722, 1985);
INSERT INTO `sys_area` VALUES (8627231, 86, 8627019, 3, '囊谦县', '青海省，玉树藏族自治州，囊谦县', 632725, 1986);
INSERT INTO `sys_area` VALUES (8627278, 86, 8627020, 3, '尖扎县', '青海省，黄南藏族自治州，尖扎县', 632322, 1987);
INSERT INTO `sys_area` VALUES (8627279, 86, 8627020, 3, '泽库县', '青海省，黄南藏族自治州，泽库县', 632323, 1988);
INSERT INTO `sys_area` VALUES (8627280, 86, 8627020, 3, '同仁县', '青海省，黄南藏族自治州，同仁县', 632321, 1989);
INSERT INTO `sys_area` VALUES (8627281, 86, 8627020, 3, '河南蒙古族自治县', '青海省，黄南藏族自治州，河南蒙古族自治县', 632324, 1990);
INSERT INTO `sys_area` VALUES (8627314, 86, 8627021, 3, '达日县', '青海省，果洛藏族自治州，达日县', 632624, 1991);
INSERT INTO `sys_area` VALUES (8627315, 86, 8627021, 3, '久治县', '青海省，果洛藏族自治州，久治县', 632625, 1992);
INSERT INTO `sys_area` VALUES (8627316, 86, 8627021, 3, '甘德县', '青海省，果洛藏族自治州，甘德县', 632623, 1993);
INSERT INTO `sys_area` VALUES (8627317, 86, 8627021, 3, '玛沁县', '青海省，果洛藏族自治州，玛沁县', 632621, 1994);
INSERT INTO `sys_area` VALUES (8627318, 86, 8627021, 3, '班玛县', '青海省，果洛藏族自治州，班玛县', 632622, 1995);
INSERT INTO `sys_area` VALUES (8627319, 86, 8627021, 3, '玛多县', '青海省，果洛藏族自治州，玛多县', 632626, 1996);
INSERT INTO `sys_area` VALUES (8627364, 86, 8627022, 3, '海晏县', '青海省，海北藏族自治州，海晏县', 632223, 1997);
INSERT INTO `sys_area` VALUES (8627365, 86, 8627022, 3, '门源回族自治县', '青海省，海北藏族自治州，门源回族自治县', 632221, 1998);
INSERT INTO `sys_area` VALUES (8627366, 86, 8627022, 3, '祁连县', '青海省，海北藏族自治州，祁连县', 632222, 1999);
INSERT INTO `sys_area` VALUES (8627367, 86, 8627022, 3, '刚察县', '青海省，海北藏族自治州，刚察县', 632224, 2000);
INSERT INTO `sys_area` VALUES (8627402, 86, 8627023, 3, '大通回族土族自治县', '青海省，西宁市，大通回族土族自治县', 630121, 2001);
INSERT INTO `sys_area` VALUES (8627403, 86, 8627023, 3, '湟源县', '青海省，西宁市，湟源县', 630123, 2002);
INSERT INTO `sys_area` VALUES (8627404, 86, 8627023, 3, '城东区', '青海省，西宁市，城东区', 630102, 2003);
INSERT INTO `sys_area` VALUES (8627405, 86, 8627023, 3, '城西区', '青海省，西宁市，城西区', 630104, 2004);
INSERT INTO `sys_area` VALUES (8627406, 86, 8627023, 3, '城中区', '青海省，西宁市，城中区', 630103, 2005);
INSERT INTO `sys_area` VALUES (8627407, 86, 8627023, 3, '湟中县', '青海省，西宁市，湟中县', 630122, 2006);
INSERT INTO `sys_area` VALUES (8627408, 86, 8627023, 3, '城北区', '青海省，西宁市，城北区', 630105, 2007);
INSERT INTO `sys_area` VALUES (8627485, 86, 8600020, 2, '钦州市', '广西壮族自治区，钦州市', 450700, 2008);
INSERT INTO `sys_area` VALUES (8627486, 86, 8600020, 2, '桂林市', '广西壮族自治区，桂林市', 450300, 2009);
INSERT INTO `sys_area` VALUES (8627487, 86, 8600020, 2, '百色市', '广西壮族自治区，百色市', 451000, 2010);
INSERT INTO `sys_area` VALUES (8627488, 86, 8600020, 2, '北海市', '广西壮族自治区，北海市', 450500, 2011);
INSERT INTO `sys_area` VALUES (8627489, 86, 8600020, 2, '贵港市', '广西壮族自治区，贵港市', 450800, 2012);
INSERT INTO `sys_area` VALUES (8627490, 86, 8600020, 2, '河池市', '广西壮族自治区，河池市', 451200, 2013);
INSERT INTO `sys_area` VALUES (8627491, 86, 8600020, 2, '柳州市', '广西壮族自治区，柳州市', 450200, 2014);
INSERT INTO `sys_area` VALUES (8627492, 86, 8600020, 2, '南宁市', '广西壮族自治区，南宁市', 450100, 2015);
INSERT INTO `sys_area` VALUES (8627493, 86, 8600020, 2, '来宾市', '广西壮族自治区，来宾市', 451300, 2016);
INSERT INTO `sys_area` VALUES (8627494, 86, 8600020, 2, '崇左市', '广西壮族自治区，崇左市', 451400, 2017);
INSERT INTO `sys_area` VALUES (8627495, 86, 8600020, 2, '贺州市', '广西壮族自治区，贺州市', 451100, 2018);
INSERT INTO `sys_area` VALUES (8627496, 86, 8600020, 2, '防城港市', '广西壮族自治区，防城港市', 450600, 2019);
INSERT INTO `sys_area` VALUES (8627497, 86, 8600020, 2, '梧州市', '广西壮族自治区，梧州市', 450400, 2020);
INSERT INTO `sys_area` VALUES (8627498, 86, 8600020, 2, '玉林市', '广西壮族自治区，玉林市', 450900, 2021);
INSERT INTO `sys_area` VALUES (8627499, 86, 8627485, 3, '钦南区', '广西壮族自治区，钦州市，钦南区', 450702, 2022);
INSERT INTO `sys_area` VALUES (8627500, 86, 8627485, 3, '灵山县', '广西壮族自治区，钦州市，灵山县', 450721, 2023);
INSERT INTO `sys_area` VALUES (8627501, 86, 8627485, 3, '浦北县', '广西壮族自治区，钦州市，浦北县', 450722, 2024);
INSERT INTO `sys_area` VALUES (8627502, 86, 8627485, 3, '钦北区', '广西壮族自治区，钦州市，钦北区', 450703, 2025);
INSERT INTO `sys_area` VALUES (8627574, 86, 8627486, 3, '七星区', '广西壮族自治区，桂林市，七星区', 450305, 2026);
INSERT INTO `sys_area` VALUES (8627575, 86, 8627486, 3, '临桂区', '广西壮族自治区，桂林市，临桂区', 450312, 2027);
INSERT INTO `sys_area` VALUES (8627576, 86, 8627486, 3, '叠彩区', '广西壮族自治区，桂林市，叠彩区', 450303, 2028);
INSERT INTO `sys_area` VALUES (8627577, 86, 8627486, 3, '兴安县', '广西壮族自治区，桂林市，兴安县', 450325, 2029);
INSERT INTO `sys_area` VALUES (8627578, 86, 8627486, 3, '资源县', '广西壮族自治区，桂林市，资源县', 450329, 2030);
INSERT INTO `sys_area` VALUES (8627579, 86, 8627486, 3, '阳朔县', '广西壮族自治区，桂林市，阳朔县', 450321, 2031);
INSERT INTO `sys_area` VALUES (8627580, 86, 8627486, 3, '灵川县', '广西壮族自治区，桂林市，灵川县', 450323, 2032);
INSERT INTO `sys_area` VALUES (8627581, 86, 8627486, 3, '恭城瑶族自治县', '广西壮族自治区，桂林市，恭城瑶族自治县', 450332, 2033);
INSERT INTO `sys_area` VALUES (8627582, 86, 8627486, 3, '荔浦县', '广西壮族自治区，桂林市，荔浦县', 450331, 2034);
INSERT INTO `sys_area` VALUES (8627583, 86, 8627486, 3, '雁山区', '广西壮族自治区，桂林市，雁山区', 450311, 2035);
INSERT INTO `sys_area` VALUES (8627584, 86, 8627486, 3, '永福县', '广西壮族自治区，桂林市，永福县', 450326, 2036);
INSERT INTO `sys_area` VALUES (8627585, 86, 8627486, 3, '平乐县', '广西壮族自治区，桂林市，平乐县', 450330, 2037);
INSERT INTO `sys_area` VALUES (8627586, 86, 8627486, 3, '龙胜各族自治县', '广西壮族自治区，桂林市，龙胜各族自治县', 450328, 2038);
INSERT INTO `sys_area` VALUES (8627587, 86, 8627486, 3, '秀峰区', '广西壮族自治区，桂林市，秀峰区', 450302, 2039);
INSERT INTO `sys_area` VALUES (8627588, 86, 8627486, 3, '象山区', '广西壮族自治区，桂林市，象山区', 450304, 2040);
INSERT INTO `sys_area` VALUES (8627589, 86, 8627486, 3, '灌阳县', '广西壮族自治区，桂林市，灌阳县', 450327, 2041);
INSERT INTO `sys_area` VALUES (8627590, 86, 8627486, 3, '全州县', '广西壮族自治区，桂林市，全州县', 450324, 2042);
INSERT INTO `sys_area` VALUES (8627736, 86, 8627487, 3, '乐业县', '广西壮族自治区，百色市，乐业县', 451028, 2043);
INSERT INTO `sys_area` VALUES (8627737, 86, 8627487, 3, '隆林各族自治县', '广西壮族自治区，百色市，隆林各族自治县', 451031, 2044);
INSERT INTO `sys_area` VALUES (8627738, 86, 8627487, 3, '西林县', '广西壮族自治区，百色市，西林县', 451030, 2045);
INSERT INTO `sys_area` VALUES (8627739, 86, 8627487, 3, '凌云县', '广西壮族自治区，百色市，凌云县', 451027, 2046);
INSERT INTO `sys_area` VALUES (8627740, 86, 8627487, 3, '田东县', '广西壮族自治区，百色市，田东县', 451022, 2047);
INSERT INTO `sys_area` VALUES (8627741, 86, 8627487, 3, '平果县', '广西壮族自治区，百色市，平果县', 451023, 2048);
INSERT INTO `sys_area` VALUES (8627742, 86, 8627487, 3, '右江区', '广西壮族自治区，百色市，右江区', 451002, 2049);
INSERT INTO `sys_area` VALUES (8627743, 86, 8627487, 3, '德保县', '广西壮族自治区，百色市，德保县', 451024, 2050);
INSERT INTO `sys_area` VALUES (8627744, 86, 8627487, 3, '田阳县', '广西壮族自治区，百色市，田阳县', 451021, 2051);
INSERT INTO `sys_area` VALUES (8627745, 86, 8627487, 3, '靖西市', '广西壮族自治区，百色市，靖西市', 451081, 2052);
INSERT INTO `sys_area` VALUES (8627746, 86, 8627487, 3, '田林县', '广西壮族自治区，百色市，田林县', 451029, 2053);
INSERT INTO `sys_area` VALUES (8627747, 86, 8627487, 3, '那坡县', '广西壮族自治区，百色市，那坡县', 451026, 2054);
INSERT INTO `sys_area` VALUES (8627885, 86, 8627488, 3, '合浦县', '广西壮族自治区，北海市，合浦县', 450521, 2055);
INSERT INTO `sys_area` VALUES (8627886, 86, 8627488, 3, '海城区', '广西壮族自治区，北海市，海城区', 450502, 2056);
INSERT INTO `sys_area` VALUES (8627887, 86, 8627488, 3, '银海区', '广西壮族自治区，北海市，银海区', 450503, 2057);
INSERT INTO `sys_area` VALUES (8627888, 86, 8627488, 3, '铁山港区', '广西壮族自治区，北海市，铁山港区', 450512, 2058);
INSERT INTO `sys_area` VALUES (8627919, 86, 8627489, 3, '平南县', '广西壮族自治区，贵港市，平南县', 450821, 2059);
INSERT INTO `sys_area` VALUES (8627920, 86, 8627489, 3, '桂平市', '广西壮族自治区，贵港市，桂平市', 450881, 2060);
INSERT INTO `sys_area` VALUES (8627921, 86, 8627489, 3, '覃塘区', '广西壮族自治区，贵港市，覃塘区', 450804, 2061);
INSERT INTO `sys_area` VALUES (8627922, 86, 8627489, 3, '港南区', '广西壮族自治区，贵港市，港南区', 450803, 2062);
INSERT INTO `sys_area` VALUES (8627923, 86, 8627489, 3, '港北区', '广西壮族自治区，贵港市，港北区', 450802, 2063);
INSERT INTO `sys_area` VALUES (8627998, 86, 8627490, 3, '环江毛南族自治县', '广西壮族自治区，河池市，环江毛南族自治县', 451226, 2064);
INSERT INTO `sys_area` VALUES (8627999, 86, 8627490, 3, '金城江区', '广西壮族自治区，河池市，金城江区', 451202, 2065);
INSERT INTO `sys_area` VALUES (8628000, 86, 8627490, 3, '罗城仫佬族自治县', '广西壮族自治区，河池市，罗城仫佬族自治县', 451225, 2066);
INSERT INTO `sys_area` VALUES (8628001, 86, 8627490, 3, '天峨县', '广西壮族自治区，河池市，天峨县', 451222, 2067);
INSERT INTO `sys_area` VALUES (8628002, 86, 8627490, 3, '宜州区', '广西壮族自治区，河池市，宜州区', 451203, 2068);
INSERT INTO `sys_area` VALUES (8628003, 86, 8627490, 3, '凤山县', '广西壮族自治区，河池市，凤山县', 451223, 2069);
INSERT INTO `sys_area` VALUES (8628004, 86, 8627490, 3, '南丹县', '广西壮族自治区，河池市，南丹县', 451221, 2070);
INSERT INTO `sys_area` VALUES (8628005, 86, 8627490, 3, '大化瑶族自治县', '广西壮族自治区，河池市，大化瑶族自治县', 451229, 2071);
INSERT INTO `sys_area` VALUES (8628006, 86, 8627490, 3, '巴马瑶族自治县', '广西壮族自治区，河池市，巴马瑶族自治县', 451227, 2072);
INSERT INTO `sys_area` VALUES (8628007, 86, 8627490, 3, '都安瑶族自治县', '广西壮族自治区，河池市，都安瑶族自治县', 451228, 2073);
INSERT INTO `sys_area` VALUES (8628008, 86, 8627490, 3, '东兰县', '广西壮族自治区，河池市，东兰县', 451224, 2074);
INSERT INTO `sys_area` VALUES (8628148, 86, 8627491, 3, '融安县', '广西壮族自治区，柳州市，融安县', 450224, 2075);
INSERT INTO `sys_area` VALUES (8628149, 86, 8627491, 3, '融水苗族自治县', '广西壮族自治区，柳州市，融水苗族自治县', 450225, 2076);
INSERT INTO `sys_area` VALUES (8628150, 86, 8627491, 3, '三江侗族自治县', '广西壮族自治区，柳州市，三江侗族自治县', 450226, 2077);
INSERT INTO `sys_area` VALUES (8628151, 86, 8627491, 3, '城中区', '广西壮族自治区，柳州市，城中区', 450202, 2078);
INSERT INTO `sys_area` VALUES (8628152, 86, 8627491, 3, '柳北区', '广西壮族自治区，柳州市，柳北区', 450205, 2079);
INSERT INTO `sys_area` VALUES (8628153, 86, 8627491, 3, '鹿寨县', '广西壮族自治区，柳州市，鹿寨县', 450223, 2080);
INSERT INTO `sys_area` VALUES (8628154, 86, 8627491, 3, '柳城县', '广西壮族自治区，柳州市，柳城县', 450222, 2081);
INSERT INTO `sys_area` VALUES (8628155, 86, 8627491, 3, '鱼峰区', '广西壮族自治区，柳州市，鱼峰区', 450203, 2082);
INSERT INTO `sys_area` VALUES (8628156, 86, 8627491, 3, '柳江区', '广西壮族自治区，柳州市，柳江区', 450206, 2083);
INSERT INTO `sys_area` VALUES (8628157, 86, 8627491, 3, '柳南区', '广西壮族自治区，柳州市，柳南区', 450204, 2084);
INSERT INTO `sys_area` VALUES (8628276, 86, 8627492, 3, '上林县', '广西壮族自治区，南宁市，上林县', 450125, 2085);
INSERT INTO `sys_area` VALUES (8628277, 86, 8627492, 3, '马山县', '广西壮族自治区，南宁市，马山县', 450124, 2086);
INSERT INTO `sys_area` VALUES (8628278, 86, 8627492, 3, '横县', '广西壮族自治区，南宁市，横县', 450127, 2087);
INSERT INTO `sys_area` VALUES (8628279, 86, 8627492, 3, '西乡塘区', '广西壮族自治区，南宁市，西乡塘区', 450107, 2088);
INSERT INTO `sys_area` VALUES (8628280, 86, 8627492, 3, '江南区', '广西壮族自治区，南宁市，江南区', 450105, 2089);
INSERT INTO `sys_area` VALUES (8628281, 86, 8627492, 3, '隆安县', '广西壮族自治区，南宁市，隆安县', 450123, 2090);
INSERT INTO `sys_area` VALUES (8628282, 86, 8627492, 3, '武鸣区', '广西壮族自治区，南宁市，武鸣区', 450110, 2091);
INSERT INTO `sys_area` VALUES (8628283, 86, 8627492, 3, '兴宁区', '广西壮族自治区，南宁市，兴宁区', 450102, 2092);
INSERT INTO `sys_area` VALUES (8628284, 86, 8627492, 3, '宾阳县', '广西壮族自治区，南宁市，宾阳县', 450126, 2093);
INSERT INTO `sys_area` VALUES (8628285, 86, 8627492, 3, '邕宁区', '广西壮族自治区，南宁市，邕宁区', 450109, 2094);
INSERT INTO `sys_area` VALUES (8628286, 86, 8627492, 3, '良庆区', '广西壮族自治区，南宁市，良庆区', 450108, 2095);
INSERT INTO `sys_area` VALUES (8628287, 86, 8627492, 3, '青秀区', '广西壮族自治区，南宁市，青秀区', 450103, 2096);
INSERT INTO `sys_area` VALUES (8628429, 86, 8627493, 3, '兴宾区', '广西壮族自治区，来宾市，兴宾区', 451302, 2097);
INSERT INTO `sys_area` VALUES (8628430, 86, 8627493, 3, '象州县', '广西壮族自治区，来宾市，象州县', 451322, 2098);
INSERT INTO `sys_area` VALUES (8628431, 86, 8627493, 3, '忻城县', '广西壮族自治区，来宾市，忻城县', 451321, 2099);
INSERT INTO `sys_area` VALUES (8628432, 86, 8627493, 3, '金秀瑶族自治县', '广西壮族自治区，来宾市，金秀瑶族自治县', 451324, 2100);
INSERT INTO `sys_area` VALUES (8628433, 86, 8627493, 3, '武宣县', '广西壮族自治区，来宾市，武宣县', 451323, 2101);
INSERT INTO `sys_area` VALUES (8628434, 86, 8627493, 3, '合山市', '广西壮族自治区，来宾市，合山市', 451381, 2102);
INSERT INTO `sys_area` VALUES (8628508, 86, 8627494, 3, '扶绥县', '广西壮族自治区，崇左市，扶绥县', 451421, 2103);
INSERT INTO `sys_area` VALUES (8628509, 86, 8627494, 3, '宁明县', '广西壮族自治区，崇左市，宁明县', 451422, 2104);
INSERT INTO `sys_area` VALUES (8628510, 86, 8627494, 3, '凭祥市', '广西壮族自治区，崇左市，凭祥市', 451481, 2105);
INSERT INTO `sys_area` VALUES (8628511, 86, 8627494, 3, '江州区', '广西壮族自治区，崇左市，江州区', 451402, 2106);
INSERT INTO `sys_area` VALUES (8628512, 86, 8627494, 3, '大新县', '广西壮族自治区，崇左市，大新县', 451424, 2107);
INSERT INTO `sys_area` VALUES (8628513, 86, 8627494, 3, '天等县', '广西壮族自治区，崇左市，天等县', 451425, 2108);
INSERT INTO `sys_area` VALUES (8628514, 86, 8627494, 3, '龙州县', '广西壮族自治区，崇左市，龙州县', 451423, 2109);
INSERT INTO `sys_area` VALUES (8628599, 86, 8627495, 3, '富川瑶族自治县', '广西壮族自治区，贺州市，富川瑶族自治县', 451123, 2110);
INSERT INTO `sys_area` VALUES (8628600, 86, 8627495, 3, '昭平县', '广西壮族自治区，贺州市，昭平县', 451121, 2111);
INSERT INTO `sys_area` VALUES (8628601, 86, 8627495, 3, '八步区', '广西壮族自治区，贺州市，八步区', 451102, 2112);
INSERT INTO `sys_area` VALUES (8628602, 86, 8627495, 3, '钟山县', '广西壮族自治区，贺州市，钟山县', 451122, 2113);
INSERT INTO `sys_area` VALUES (8628603, 86, 8627495, 3, '平桂区', '广西壮族自治区，贺州市，平桂区', 451103, 2114);
INSERT INTO `sys_area` VALUES (8628665, 86, 8627496, 3, '上思县', '广西壮族自治区，防城港市，上思县', 450621, 2115);
INSERT INTO `sys_area` VALUES (8628666, 86, 8627496, 3, '防城区', '广西壮族自治区，防城港市，防城区', 450603, 2116);
INSERT INTO `sys_area` VALUES (8628667, 86, 8627496, 3, '港口区', '广西壮族自治区，防城港市，港口区', 450602, 2117);
INSERT INTO `sys_area` VALUES (8628668, 86, 8627496, 3, '东兴市', '广西壮族自治区，防城港市，东兴市', 450681, 2118);
INSERT INTO `sys_area` VALUES (8628701, 86, 8627497, 3, '蒙山县', '广西壮族自治区，梧州市，蒙山县', 450423, 2119);
INSERT INTO `sys_area` VALUES (8628702, 86, 8627497, 3, '藤县', '广西壮族自治区，梧州市，藤县', 450422, 2120);
INSERT INTO `sys_area` VALUES (8628703, 86, 8627497, 3, '岑溪市', '广西壮族自治区，梧州市，岑溪市', 450481, 2121);
INSERT INTO `sys_area` VALUES (8628704, 86, 8627497, 3, '万秀区', '广西壮族自治区，梧州市，万秀区', 450403, 2122);
INSERT INTO `sys_area` VALUES (8628705, 86, 8627497, 3, '龙圩区', '广西壮族自治区，梧州市，龙圩区', 450406, 2123);
INSERT INTO `sys_area` VALUES (8628706, 86, 8627497, 3, '长洲区', '广西壮族自治区，梧州市，长洲区', 450405, 2124);
INSERT INTO `sys_area` VALUES (8628707, 86, 8627497, 3, '苍梧县', '广西壮族自治区，梧州市，苍梧县', 450421, 2125);
INSERT INTO `sys_area` VALUES (8628775, 86, 8627498, 3, '兴业县', '广西壮族自治区，玉林市，兴业县', 450924, 2126);
INSERT INTO `sys_area` VALUES (8628776, 86, 8627498, 3, '福绵区', '广西壮族自治区，玉林市，福绵区', 450903, 2127);
INSERT INTO `sys_area` VALUES (8628777, 86, 8627498, 3, '玉州区', '广西壮族自治区，玉林市，玉州区', 450902, 2128);
INSERT INTO `sys_area` VALUES (8628778, 86, 8627498, 3, '博白县', '广西壮族自治区，玉林市，博白县', 450923, 2129);
INSERT INTO `sys_area` VALUES (8628779, 86, 8627498, 3, '陆川县', '广西壮族自治区，玉林市，陆川县', 450922, 2130);
INSERT INTO `sys_area` VALUES (8628780, 86, 8627498, 3, '容县', '广西壮族自治区，玉林市，容县', 450921, 2131);
INSERT INTO `sys_area` VALUES (8628781, 86, 8627498, 3, '北流市', '广西壮族自治区，玉林市，北流市', 450981, 2132);
INSERT INTO `sys_area` VALUES (8628892, 86, 8600021, 2, '固原市', '宁夏回族自治区，固原市', 640400, 2133);
INSERT INTO `sys_area` VALUES (8628893, 86, 8600021, 2, '中卫市', '宁夏回族自治区，中卫市', 640500, 2134);
INSERT INTO `sys_area` VALUES (8628894, 86, 8600021, 2, '银川市', '宁夏回族自治区，银川市', 640100, 2135);
INSERT INTO `sys_area` VALUES (8628895, 86, 8600021, 2, '石嘴山市', '宁夏回族自治区，石嘴山市', 640200, 2136);
INSERT INTO `sys_area` VALUES (8628896, 86, 8600021, 2, '吴忠市', '宁夏回族自治区，吴忠市', 640300, 2137);
INSERT INTO `sys_area` VALUES (8628897, 86, 8628892, 3, '泾源县', '宁夏回族自治区，固原市，泾源县', 640424, 2138);
INSERT INTO `sys_area` VALUES (8628898, 86, 8628892, 3, '隆德县', '宁夏回族自治区，固原市，隆德县', 640423, 2139);
INSERT INTO `sys_area` VALUES (8628899, 86, 8628892, 3, '原州区', '宁夏回族自治区，固原市，原州区', 640402, 2140);
INSERT INTO `sys_area` VALUES (8628900, 86, 8628892, 3, '彭阳县', '宁夏回族自治区，固原市，彭阳县', 640425, 2141);
INSERT INTO `sys_area` VALUES (8628901, 86, 8628892, 3, '西吉县', '宁夏回族自治区，固原市，西吉县', 640422, 2142);
INSERT INTO `sys_area` VALUES (8628968, 86, 8628893, 3, '海原县', '宁夏回族自治区，中卫市，海原县', 640522, 2143);
INSERT INTO `sys_area` VALUES (8628969, 86, 8628893, 3, '沙坡头区', '宁夏回族自治区，中卫市，沙坡头区', 640502, 2144);
INSERT INTO `sys_area` VALUES (8628970, 86, 8628893, 3, '中宁县', '宁夏回族自治区，中卫市，中宁县', 640521, 2145);
INSERT INTO `sys_area` VALUES (8629019, 86, 8628894, 3, '贺兰县', '宁夏回族自治区，银川市，贺兰县', 640122, 2146);
INSERT INTO `sys_area` VALUES (8629020, 86, 8628894, 3, '西夏区', '宁夏回族自治区，银川市，西夏区', 640105, 2147);
INSERT INTO `sys_area` VALUES (8629021, 86, 8628894, 3, '兴庆区', '宁夏回族自治区，银川市，兴庆区', 640104, 2148);
INSERT INTO `sys_area` VALUES (8629022, 86, 8628894, 3, '金凤区', '宁夏回族自治区，银川市，金凤区', 640106, 2149);
INSERT INTO `sys_area` VALUES (8629023, 86, 8628894, 3, '永宁县', '宁夏回族自治区，银川市，永宁县', 640121, 2150);
INSERT INTO `sys_area` VALUES (8629024, 86, 8628894, 3, '灵武市', '宁夏回族自治区，银川市，灵武市', 640181, 2151);
INSERT INTO `sys_area` VALUES (8629084, 86, 8628895, 3, '平罗县', '宁夏回族自治区，石嘴山市，平罗县', 640221, 2152);
INSERT INTO `sys_area` VALUES (8629085, 86, 8628895, 3, '大武口区', '宁夏回族自治区，石嘴山市，大武口区', 640202, 2153);
INSERT INTO `sys_area` VALUES (8629086, 86, 8628895, 3, '惠农区', '宁夏回族自治区，石嘴山市，惠农区', 640205, 2154);
INSERT INTO `sys_area` VALUES (8629127, 86, 8628896, 3, '同心县', '宁夏回族自治区，吴忠市，同心县', 640324, 2155);
INSERT INTO `sys_area` VALUES (8629128, 86, 8628896, 3, '盐池县', '宁夏回族自治区，吴忠市，盐池县', 640323, 2156);
INSERT INTO `sys_area` VALUES (8629129, 86, 8628896, 3, '利通区', '宁夏回族自治区，吴忠市，利通区', 640302, 2157);
INSERT INTO `sys_area` VALUES (8629130, 86, 8628896, 3, '红寺堡区', '宁夏回族自治区，吴忠市，红寺堡区', 640303, 2158);
INSERT INTO `sys_area` VALUES (8629131, 86, 8628896, 3, '青铜峡市', '宁夏回族自治区，吴忠市，青铜峡市', 640381, 2159);
INSERT INTO `sys_area` VALUES (8629182, 86, 8600022, 2, '景德镇市', '江西省，景德镇市', 360200, 2160);
INSERT INTO `sys_area` VALUES (8629183, 86, 8600022, 2, '九江市', '江西省，九江市', 360400, 2161);
INSERT INTO `sys_area` VALUES (8629184, 86, 8600022, 2, '抚州市', '江西省，抚州市', 361000, 2162);
INSERT INTO `sys_area` VALUES (8629185, 86, 8600022, 2, '上饶市', '江西省，上饶市', 361100, 2163);
INSERT INTO `sys_area` VALUES (8629186, 86, 8600022, 2, '新余市', '江西省，新余市', 360500, 2164);
INSERT INTO `sys_area` VALUES (8629187, 86, 8600022, 2, '赣州市', '江西省，赣州市', 360700, 2165);
INSERT INTO `sys_area` VALUES (8629188, 86, 8600022, 2, '鹰潭市', '江西省，鹰潭市', 360600, 2166);
INSERT INTO `sys_area` VALUES (8629189, 86, 8600022, 2, '南昌市', '江西省，南昌市', 360100, 2167);
INSERT INTO `sys_area` VALUES (8629190, 86, 8600022, 2, '吉安市', '江西省，吉安市', 360800, 2168);
INSERT INTO `sys_area` VALUES (8629191, 86, 8600022, 2, '萍乡市', '江西省，萍乡市', 360300, 2169);
INSERT INTO `sys_area` VALUES (8629192, 86, 8600022, 2, '宜春市', '江西省，宜春市', 360900, 2170);
INSERT INTO `sys_area` VALUES (8629193, 86, 8629182, 3, '乐平市', '江西省，景德镇市，乐平市', 360281, 2171);
INSERT INTO `sys_area` VALUES (8629194, 86, 8629182, 3, '昌江区', '江西省，景德镇市，昌江区', 360202, 2172);
INSERT INTO `sys_area` VALUES (8629195, 86, 8629182, 3, '浮梁县', '江西省，景德镇市，浮梁县', 360222, 2173);
INSERT INTO `sys_area` VALUES (8629196, 86, 8629182, 3, '珠山区', '江西省，景德镇市，珠山区', 360203, 2174);
INSERT INTO `sys_area` VALUES (8629258, 86, 8629183, 3, '彭泽县', '江西省，九江市，彭泽县', 360430, 2175);
INSERT INTO `sys_area` VALUES (8629259, 86, 8629183, 3, '武宁县', '江西省，九江市，武宁县', 360423, 2176);
INSERT INTO `sys_area` VALUES (8629260, 86, 8629183, 3, '柴桑区', '江西省，九江市，柴桑区', 360404, 2177);
INSERT INTO `sys_area` VALUES (8629261, 86, 8629183, 3, '湖口县', '江西省，九江市，湖口县', 360429, 2178);
INSERT INTO `sys_area` VALUES (8629262, 86, 8629183, 3, '瑞昌市', '江西省，九江市，瑞昌市', 360481, 2179);
INSERT INTO `sys_area` VALUES (8629263, 86, 8629183, 3, '都昌县', '江西省，九江市，都昌县', 360428, 2180);
INSERT INTO `sys_area` VALUES (8629264, 86, 8629183, 3, '修水县', '江西省，九江市，修水县', 360424, 2181);
INSERT INTO `sys_area` VALUES (8629265, 86, 8629183, 3, '庐山市', '江西省，九江市，庐山市', 360483, 2182);
INSERT INTO `sys_area` VALUES (8629266, 86, 8629183, 3, '濂溪区', '江西省，九江市，濂溪区', 360402, 2183);
INSERT INTO `sys_area` VALUES (8629267, 86, 8629183, 3, '浔阳区', '江西省，九江市，浔阳区', 360403, 2184);
INSERT INTO `sys_area` VALUES (8629268, 86, 8629183, 3, '德安县', '江西省，九江市，德安县', 360426, 2185);
INSERT INTO `sys_area` VALUES (8629269, 86, 8629183, 3, '永修县', '江西省，九江市，永修县', 360425, 2186);
INSERT INTO `sys_area` VALUES (8629270, 86, 8629183, 3, '共青城市', '江西省，九江市，共青城市', 360482, 2187);
INSERT INTO `sys_area` VALUES (8629503, 86, 8629184, 3, '东乡区', '江西省，抚州市，东乡区', 361003, 2188);
INSERT INTO `sys_area` VALUES (8629504, 86, 8629184, 3, '金溪县', '江西省，抚州市，金溪县', 361027, 2189);
INSERT INTO `sys_area` VALUES (8629505, 86, 8629184, 3, '资溪县', '江西省，抚州市，资溪县', 361028, 2190);
INSERT INTO `sys_area` VALUES (8629506, 86, 8629184, 3, '南丰县', '江西省，抚州市，南丰县', 361023, 2191);
INSERT INTO `sys_area` VALUES (8629507, 86, 8629184, 3, '南城县', '江西省，抚州市，南城县', 361021, 2192);
INSERT INTO `sys_area` VALUES (8629508, 86, 8629184, 3, '乐安县', '江西省，抚州市，乐安县', 361025, 2193);
INSERT INTO `sys_area` VALUES (8629509, 86, 8629184, 3, '广昌县', '江西省，抚州市，广昌县', 361030, 2194);
INSERT INTO `sys_area` VALUES (8629510, 86, 8629184, 3, '崇仁县', '江西省，抚州市，崇仁县', 361024, 2195);
INSERT INTO `sys_area` VALUES (8629511, 86, 8629184, 3, '宜黄县', '江西省，抚州市，宜黄县', 361026, 2196);
INSERT INTO `sys_area` VALUES (8629512, 86, 8629184, 3, '临川区', '江西省，抚州市，临川区', 361002, 2197);
INSERT INTO `sys_area` VALUES (8629513, 86, 8629184, 3, '黎川县', '江西省，抚州市，黎川县', 361022, 2198);
INSERT INTO `sys_area` VALUES (8629695, 86, 8629185, 3, '德兴市', '江西省，上饶市，德兴市', 361181, 2199);
INSERT INTO `sys_area` VALUES (8629696, 86, 8629185, 3, '铅山县', '江西省，上饶市，铅山县', 361124, 2200);
INSERT INTO `sys_area` VALUES (8629697, 86, 8629185, 3, '鄱阳县', '江西省，上饶市，鄱阳县', 361128, 2201);
INSERT INTO `sys_area` VALUES (8629698, 86, 8629185, 3, '婺源县', '江西省，上饶市，婺源县', 361130, 2202);
INSERT INTO `sys_area` VALUES (8629699, 86, 8629185, 3, '信州区', '江西省，上饶市，信州区', 361102, 2203);
INSERT INTO `sys_area` VALUES (8629700, 86, 8629185, 3, '上饶县', '江西省，上饶市，上饶县', 361121, 2204);
INSERT INTO `sys_area` VALUES (8629701, 86, 8629185, 3, '广丰区', '江西省，上饶市，广丰区', 361103, 2205);
INSERT INTO `sys_area` VALUES (8629702, 86, 8629185, 3, '弋阳县', '江西省，上饶市，弋阳县', 361126, 2206);
INSERT INTO `sys_area` VALUES (8629703, 86, 8629185, 3, '万年县', '江西省，上饶市，万年县', 361129, 2207);
INSERT INTO `sys_area` VALUES (8629704, 86, 8629185, 3, '余干县', '江西省，上饶市，余干县', 361127, 2208);
INSERT INTO `sys_area` VALUES (8629705, 86, 8629185, 3, '横峰县', '江西省，上饶市，横峰县', 361125, 2209);
INSERT INTO `sys_area` VALUES (8629706, 86, 8629185, 3, '玉山县', '江西省，上饶市，玉山县', 361123, 2210);
INSERT INTO `sys_area` VALUES (8629934, 86, 8629186, 3, '分宜县', '江西省，新余市，分宜县', 360521, 2211);
INSERT INTO `sys_area` VALUES (8629935, 86, 8629186, 3, '渝水区', '江西省，新余市，渝水区', 360502, 2212);
INSERT INTO `sys_area` VALUES (8629975, 86, 8629187, 3, '宁都县', '江西省，赣州市，宁都县', 360730, 2213);
INSERT INTO `sys_area` VALUES (8629976, 86, 8629187, 3, '兴国县', '江西省，赣州市，兴国县', 360732, 2214);
INSERT INTO `sys_area` VALUES (8629977, 86, 8629187, 3, '石城县', '江西省，赣州市，石城县', 360735, 2215);
INSERT INTO `sys_area` VALUES (8629978, 86, 8629187, 3, '于都县', '江西省，赣州市，于都县', 360731, 2216);
INSERT INTO `sys_area` VALUES (8629979, 86, 8629187, 3, '瑞金市', '江西省，赣州市，瑞金市', 360781, 2217);
INSERT INTO `sys_area` VALUES (8629980, 86, 8629187, 3, '上犹县', '江西省，赣州市，上犹县', 360724, 2218);
INSERT INTO `sys_area` VALUES (8629981, 86, 8629187, 3, '会昌县', '江西省，赣州市，会昌县', 360733, 2219);
INSERT INTO `sys_area` VALUES (8629982, 86, 8629187, 3, '崇义县', '江西省，赣州市，崇义县', 360725, 2220);
INSERT INTO `sys_area` VALUES (8629983, 86, 8629187, 3, '安远县', '江西省，赣州市，安远县', 360726, 2221);
INSERT INTO `sys_area` VALUES (8629984, 86, 8629187, 3, '大余县', '江西省，赣州市，大余县', 360723, 2222);
INSERT INTO `sys_area` VALUES (8629985, 86, 8629187, 3, '信丰县', '江西省，赣州市，信丰县', 360722, 2223);
INSERT INTO `sys_area` VALUES (8629986, 86, 8629187, 3, '寻乌县', '江西省，赣州市，寻乌县', 360734, 2224);
INSERT INTO `sys_area` VALUES (8629987, 86, 8629187, 3, '全南县', '江西省，赣州市，全南县', 360729, 2225);
INSERT INTO `sys_area` VALUES (8629988, 86, 8629187, 3, '定南县', '江西省，赣州市，定南县', 360728, 2226);
INSERT INTO `sys_area` VALUES (8629989, 86, 8629187, 3, '龙南县', '江西省，赣州市，龙南县', 360727, 2227);
INSERT INTO `sys_area` VALUES (8629990, 86, 8629187, 3, '章贡区', '江西省，赣州市，章贡区', 360702, 2228);
INSERT INTO `sys_area` VALUES (8629991, 86, 8629187, 3, '南康区', '江西省，赣州市，南康区', 360703, 2229);
INSERT INTO `sys_area` VALUES (8629992, 86, 8629187, 3, '赣县区', '江西省，赣州市，赣县区', 360704, 2230);
INSERT INTO `sys_area` VALUES (8630302, 86, 8629188, 3, '贵溪市', '江西省，鹰潭市，贵溪市', 360681, 2231);
INSERT INTO `sys_area` VALUES (8630303, 86, 8629188, 3, '余江县', '江西省，鹰潭市，余江县', 360622, 2232);
INSERT INTO `sys_area` VALUES (8630304, 86, 8629188, 3, '月湖区', '江西省，鹰潭市，月湖区', 360602, 2233);
INSERT INTO `sys_area` VALUES (8630367, 86, 8629189, 3, '安义县', '江西省，南昌市，安义县', 360123, 2234);
INSERT INTO `sys_area` VALUES (8630368, 86, 8629189, 3, '进贤县', '江西省，南昌市，进贤县', 360124, 2235);
INSERT INTO `sys_area` VALUES (8630369, 86, 8629189, 3, '青云谱区', '江西省，南昌市，青云谱区', 360104, 2236);
INSERT INTO `sys_area` VALUES (8630370, 86, 8629189, 3, '南昌县', '江西省，南昌市，南昌县', 360121, 2237);
INSERT INTO `sys_area` VALUES (8630371, 86, 8629189, 3, '青山湖区', '江西省，南昌市，青山湖区', 360111, 2238);
INSERT INTO `sys_area` VALUES (8630372, 86, 8629189, 3, '湾里区', '江西省，南昌市，湾里区', 360105, 2239);
INSERT INTO `sys_area` VALUES (8630373, 86, 8629189, 3, '新建区', '江西省，南昌市，新建区', 360112, 2240);
INSERT INTO `sys_area` VALUES (8630374, 86, 8629189, 3, '西湖区', '江西省，南昌市，西湖区', 360103, 2241);
INSERT INTO `sys_area` VALUES (8630375, 86, 8629189, 3, '东湖区', '江西省，南昌市，东湖区', 360102, 2242);
INSERT INTO `sys_area` VALUES (8630513, 86, 8629190, 3, '吉水县', '江西省，吉安市，吉水县', 360822, 2243);
INSERT INTO `sys_area` VALUES (8630514, 86, 8629190, 3, '遂川县', '江西省，吉安市，遂川县', 360827, 2244);
INSERT INTO `sys_area` VALUES (8630515, 86, 8629190, 3, '永新县', '江西省，吉安市，永新县', 360830, 2245);
INSERT INTO `sys_area` VALUES (8630516, 86, 8629190, 3, '永丰县', '江西省，吉安市，永丰县', 360825, 2246);
INSERT INTO `sys_area` VALUES (8630517, 86, 8629190, 3, '吉州区', '江西省，吉安市，吉州区', 360802, 2247);
INSERT INTO `sys_area` VALUES (8630518, 86, 8629190, 3, '青原区', '江西省，吉安市，青原区', 360803, 2248);
INSERT INTO `sys_area` VALUES (8630519, 86, 8629190, 3, '吉安县', '江西省，吉安市，吉安县', 360821, 2249);
INSERT INTO `sys_area` VALUES (8630520, 86, 8629190, 3, '万安县', '江西省，吉安市，万安县', 360828, 2250);
INSERT INTO `sys_area` VALUES (8630521, 86, 8629190, 3, '峡江县', '江西省，吉安市，峡江县', 360823, 2251);
INSERT INTO `sys_area` VALUES (8630522, 86, 8629190, 3, '泰和县', '江西省，吉安市，泰和县', 360826, 2252);
INSERT INTO `sys_area` VALUES (8630523, 86, 8629190, 3, '井冈山市', '江西省，吉安市，井冈山市', 360881, 2253);
INSERT INTO `sys_area` VALUES (8630524, 86, 8629190, 3, '新干县', '江西省，吉安市，新干县', 360824, 2254);
INSERT INTO `sys_area` VALUES (8630525, 86, 8629190, 3, '安福县', '江西省，吉安市，安福县', 360829, 2255);
INSERT INTO `sys_area` VALUES (8630781, 86, 8629191, 3, '湘东区', '江西省，萍乡市，湘东区', 360313, 2256);
INSERT INTO `sys_area` VALUES (8630782, 86, 8629191, 3, '安源区', '江西省，萍乡市，安源区', 360302, 2257);
INSERT INTO `sys_area` VALUES (8630783, 86, 8629191, 3, '上栗县', '江西省，萍乡市，上栗县', 360322, 2258);
INSERT INTO `sys_area` VALUES (8630784, 86, 8629191, 3, '芦溪县', '江西省，萍乡市，芦溪县', 360323, 2259);
INSERT INTO `sys_area` VALUES (8630785, 86, 8629191, 3, '莲花县', '江西省，萍乡市，莲花县', 360321, 2260);
INSERT INTO `sys_area` VALUES (8630842, 86, 8629192, 3, '上高县', '江西省，宜春市，上高县', 360923, 2261);
INSERT INTO `sys_area` VALUES (8630843, 86, 8629192, 3, '丰城市', '江西省，宜春市，丰城市', 360981, 2262);
INSERT INTO `sys_area` VALUES (8630844, 86, 8629192, 3, '宜丰县', '江西省，宜春市，宜丰县', 360924, 2263);
INSERT INTO `sys_area` VALUES (8630845, 86, 8629192, 3, '靖安县', '江西省，宜春市，靖安县', 360925, 2264);
INSERT INTO `sys_area` VALUES (8630846, 86, 8629192, 3, '高安市', '江西省，宜春市，高安市', 360983, 2265);
INSERT INTO `sys_area` VALUES (8630847, 86, 8629192, 3, '奉新县', '江西省，宜春市，奉新县', 360921, 2266);
INSERT INTO `sys_area` VALUES (8630848, 86, 8629192, 3, '万载县', '江西省，宜春市，万载县', 360922, 2267);
INSERT INTO `sys_area` VALUES (8630849, 86, 8629192, 3, '铜鼓县', '江西省，宜春市，铜鼓县', 360926, 2268);
INSERT INTO `sys_area` VALUES (8630850, 86, 8629192, 3, '袁州区', '江西省，宜春市，袁州区', 360902, 2269);
INSERT INTO `sys_area` VALUES (8630851, 86, 8629192, 3, '樟树市', '江西省，宜春市，樟树市', 360982, 2270);
INSERT INTO `sys_area` VALUES (8631073, 86, 8600023, 2, '宁波市', '浙江省，宁波市', 330200, 2271);
INSERT INTO `sys_area` VALUES (8631074, 86, 8600023, 2, '台州市', '浙江省，台州市', 331000, 2272);
INSERT INTO `sys_area` VALUES (8631075, 86, 8600023, 2, '嘉兴市', '浙江省，嘉兴市', 330400, 2273);
INSERT INTO `sys_area` VALUES (8631076, 86, 8600023, 2, '舟山市', '浙江省，舟山市', 330900, 2274);
INSERT INTO `sys_area` VALUES (8631077, 86, 8600023, 2, '温州市', '浙江省，温州市', 330300, 2275);
INSERT INTO `sys_area` VALUES (8631078, 86, 8600023, 2, '衢州市', '浙江省，衢州市', 330800, 2276);
INSERT INTO `sys_area` VALUES (8631079, 86, 8600023, 2, '金华市', '浙江省，金华市', 330700, 2277);
INSERT INTO `sys_area` VALUES (8631080, 86, 8600023, 2, '丽水市', '浙江省，丽水市', 331100, 2278);
INSERT INTO `sys_area` VALUES (8631081, 86, 8600023, 2, '杭州市', '浙江省，杭州市', 330100, 2279);
INSERT INTO `sys_area` VALUES (8631082, 86, 8600023, 2, '绍兴市', '浙江省，绍兴市', 330600, 2280);
INSERT INTO `sys_area` VALUES (8631083, 86, 8600023, 2, '湖州市', '浙江省，湖州市', 330500, 2281);
INSERT INTO `sys_area` VALUES (8631084, 86, 8631073, 3, '北仑区', '浙江省，宁波市，北仑区', 330206, 2282);
INSERT INTO `sys_area` VALUES (8631085, 86, 8631073, 3, '象山县', '浙江省，宁波市，象山县', 330225, 2283);
INSERT INTO `sys_area` VALUES (8631086, 86, 8631073, 3, '镇海区', '浙江省，宁波市，镇海区', 330211, 2284);
INSERT INTO `sys_area` VALUES (8631087, 86, 8631073, 3, '江北区', '浙江省，宁波市，江北区', 330205, 2285);
INSERT INTO `sys_area` VALUES (8631088, 86, 8631073, 3, '奉化区', '浙江省，宁波市，奉化区', 330213, 2286);
INSERT INTO `sys_area` VALUES (8631089, 86, 8631073, 3, '宁海县', '浙江省，宁波市，宁海县', 330226, 2287);
INSERT INTO `sys_area` VALUES (8631090, 86, 8631073, 3, '余姚市', '浙江省，宁波市，余姚市', 330281, 2288);
INSERT INTO `sys_area` VALUES (8631091, 86, 8631073, 3, '鄞州区', '浙江省，宁波市，鄞州区', 330212, 2289);
INSERT INTO `sys_area` VALUES (8631092, 86, 8631073, 3, '海曙区', '浙江省，宁波市，海曙区', 330203, 2290);
INSERT INTO `sys_area` VALUES (8631093, 86, 8631073, 3, '慈溪市', '浙江省，宁波市，慈溪市', 330282, 2291);
INSERT INTO `sys_area` VALUES (8631250, 86, 8631074, 3, '路桥区', '浙江省，台州市，路桥区', 331004, 2292);
INSERT INTO `sys_area` VALUES (8631251, 86, 8631074, 3, '临海市', '浙江省，台州市，临海市', 331082, 2293);
INSERT INTO `sys_area` VALUES (8631252, 86, 8631074, 3, '椒江区', '浙江省，台州市，椒江区', 331002, 2294);
INSERT INTO `sys_area` VALUES (8631253, 86, 8631074, 3, '三门县', '浙江省，台州市，三门县', 331022, 2295);
INSERT INTO `sys_area` VALUES (8631254, 86, 8631074, 3, '天台县', '浙江省，台州市，天台县', 331023, 2296);
INSERT INTO `sys_area` VALUES (8631255, 86, 8631074, 3, '温岭市', '浙江省，台州市，温岭市', 331081, 2297);
INSERT INTO `sys_area` VALUES (8631256, 86, 8631074, 3, '玉环市', '浙江省，台州市，玉环市', 331083, 2298);
INSERT INTO `sys_area` VALUES (8631257, 86, 8631074, 3, '黄岩区', '浙江省，台州市，黄岩区', 331003, 2299);
INSERT INTO `sys_area` VALUES (8631258, 86, 8631074, 3, '仙居县', '浙江省，台州市，仙居县', 331024, 2300);
INSERT INTO `sys_area` VALUES (8631392, 86, 8631075, 3, '平湖市', '浙江省，嘉兴市，平湖市', 330482, 2301);
INSERT INTO `sys_area` VALUES (8631393, 86, 8631075, 3, '桐乡市', '浙江省，嘉兴市，桐乡市', 330483, 2302);
INSERT INTO `sys_area` VALUES (8631394, 86, 8631075, 3, '海宁市', '浙江省，嘉兴市，海宁市', 330481, 2303);
INSERT INTO `sys_area` VALUES (8631395, 86, 8631075, 3, '秀洲区', '浙江省，嘉兴市，秀洲区', 330411, 2304);
INSERT INTO `sys_area` VALUES (8631396, 86, 8631075, 3, '南湖区', '浙江省，嘉兴市，南湖区', 330402, 2305);
INSERT INTO `sys_area` VALUES (8631397, 86, 8631075, 3, '嘉善县', '浙江省，嘉兴市，嘉善县', 330421, 2306);
INSERT INTO `sys_area` VALUES (8631398, 86, 8631075, 3, '海盐县', '浙江省，嘉兴市，海盐县', 330424, 2307);
INSERT INTO `sys_area` VALUES (8631472, 86, 8631076, 3, '定海区', '浙江省，舟山市，定海区', 330902, 2308);
INSERT INTO `sys_area` VALUES (8631473, 86, 8631076, 3, '普陀区', '浙江省，舟山市，普陀区', 330903, 2309);
INSERT INTO `sys_area` VALUES (8631474, 86, 8631076, 3, '岱山县', '浙江省，舟山市，岱山县', 330921, 2310);
INSERT INTO `sys_area` VALUES (8631475, 86, 8631076, 3, '嵊泗县', '浙江省，舟山市，嵊泗县', 330922, 2311);
INSERT INTO `sys_area` VALUES (8631511, 86, 8631077, 3, '平阳县', '浙江省，温州市，平阳县', 330326, 2312);
INSERT INTO `sys_area` VALUES (8631512, 86, 8631077, 3, '洞头区', '浙江省，温州市，洞头区', 330305, 2313);
INSERT INTO `sys_area` VALUES (8631513, 86, 8631077, 3, '瑞安市', '浙江省，温州市，瑞安市', 330381, 2314);
INSERT INTO `sys_area` VALUES (8631514, 86, 8631077, 3, '苍南县', '浙江省，温州市，苍南县', 330327, 2315);
INSERT INTO `sys_area` VALUES (8631515, 86, 8631077, 3, '鹿城区', '浙江省，温州市，鹿城区', 330302, 2316);
INSERT INTO `sys_area` VALUES (8631516, 86, 8631077, 3, '永嘉县', '浙江省，温州市，永嘉县', 330324, 2317);
INSERT INTO `sys_area` VALUES (8631517, 86, 8631077, 3, '泰顺县', '浙江省，温州市，泰顺县', 330329, 2318);
INSERT INTO `sys_area` VALUES (8631518, 86, 8631077, 3, '文成县', '浙江省，温州市，文成县', 330328, 2319);
INSERT INTO `sys_area` VALUES (8631519, 86, 8631077, 3, '乐清市', '浙江省，温州市，乐清市', 330382, 2320);
INSERT INTO `sys_area` VALUES (8631520, 86, 8631077, 3, '龙湾区', '浙江省，温州市，龙湾区', 330303, 2321);
INSERT INTO `sys_area` VALUES (8631521, 86, 8631077, 3, '瓯海区', '浙江省，温州市，瓯海区', 330304, 2322);
INSERT INTO `sys_area` VALUES (8631666, 86, 8631078, 3, '衢江区', '浙江省，衢州市，衢江区', 330803, 2323);
INSERT INTO `sys_area` VALUES (8631667, 86, 8631078, 3, '柯城区', '浙江省，衢州市，柯城区', 330802, 2324);
INSERT INTO `sys_area` VALUES (8631668, 86, 8631078, 3, '常山县', '浙江省，衢州市，常山县', 330822, 2325);
INSERT INTO `sys_area` VALUES (8631669, 86, 8631078, 3, '开化县', '浙江省，衢州市，开化县', 330824, 2326);
INSERT INTO `sys_area` VALUES (8631670, 86, 8631078, 3, '龙游县', '浙江省，衢州市，龙游县', 330825, 2327);
INSERT INTO `sys_area` VALUES (8631671, 86, 8631078, 3, '江山市', '浙江省，衢州市，江山市', 330881, 2328);
INSERT INTO `sys_area` VALUES (8631776, 86, 8631079, 3, '浦江县', '浙江省，金华市，浦江县', 330726, 2329);
INSERT INTO `sys_area` VALUES (8631777, 86, 8631079, 3, '永康市', '浙江省，金华市，永康市', 330784, 2330);
INSERT INTO `sys_area` VALUES (8631778, 86, 8631079, 3, '武义县', '浙江省，金华市，武义县', 330723, 2331);
INSERT INTO `sys_area` VALUES (8631779, 86, 8631079, 3, '兰溪市', '浙江省，金华市，兰溪市', 330781, 2332);
INSERT INTO `sys_area` VALUES (8631780, 86, 8631079, 3, '东阳市', '浙江省，金华市，东阳市', 330783, 2333);
INSERT INTO `sys_area` VALUES (8631781, 86, 8631079, 3, '婺城区', '浙江省，金华市，婺城区', 330702, 2334);
INSERT INTO `sys_area` VALUES (8631782, 86, 8631079, 3, '磐安县', '浙江省，金华市，磐安县', 330727, 2335);
INSERT INTO `sys_area` VALUES (8631783, 86, 8631079, 3, '金东区', '浙江省，金华市，金东区', 330703, 2336);
INSERT INTO `sys_area` VALUES (8631784, 86, 8631079, 3, '义乌市', '浙江省，金华市，义乌市', 330782, 2337);
INSERT INTO `sys_area` VALUES (8631932, 86, 8631080, 3, '莲都区', '浙江省，丽水市，莲都区', 331102, 2338);
INSERT INTO `sys_area` VALUES (8631933, 86, 8631080, 3, '松阳县', '浙江省，丽水市，松阳县', 331124, 2339);
INSERT INTO `sys_area` VALUES (8631934, 86, 8631080, 3, '龙泉市', '浙江省，丽水市，龙泉市', 331181, 2340);
INSERT INTO `sys_area` VALUES (8631935, 86, 8631080, 3, '遂昌县', '浙江省，丽水市，遂昌县', 331123, 2341);
INSERT INTO `sys_area` VALUES (8631936, 86, 8631080, 3, '云和县', '浙江省，丽水市，云和县', 331125, 2342);
INSERT INTO `sys_area` VALUES (8631937, 86, 8631080, 3, '缙云县', '浙江省，丽水市，缙云县', 331122, 2343);
INSERT INTO `sys_area` VALUES (8631938, 86, 8631080, 3, '景宁畲族自治县', '浙江省，丽水市，景宁畲族自治县', 331127, 2344);
INSERT INTO `sys_area` VALUES (8631939, 86, 8631080, 3, '青田县', '浙江省，丽水市，青田县', 331121, 2345);
INSERT INTO `sys_area` VALUES (8631940, 86, 8631080, 3, '庆元县', '浙江省，丽水市，庆元县', 331126, 2346);
INSERT INTO `sys_area` VALUES (8632115, 86, 8631081, 3, '富阳区', '浙江省，杭州市，富阳区', 330111, 2347);
INSERT INTO `sys_area` VALUES (8632116, 86, 8631081, 3, '桐庐县', '浙江省，杭州市，桐庐县', 330122, 2348);
INSERT INTO `sys_area` VALUES (8632117, 86, 8631081, 3, '西湖区', '浙江省，杭州市，西湖区', 330106, 2349);
INSERT INTO `sys_area` VALUES (8632118, 86, 8631081, 3, '上城区', '浙江省，杭州市，上城区', 330102, 2350);
INSERT INTO `sys_area` VALUES (8632119, 86, 8631081, 3, '建德市', '浙江省，杭州市，建德市', 330182, 2351);
INSERT INTO `sys_area` VALUES (8632120, 86, 8631081, 3, '淳安县', '浙江省，杭州市，淳安县', 330127, 2352);
INSERT INTO `sys_area` VALUES (8632121, 86, 8631081, 3, '余杭区', '浙江省，杭州市，余杭区', 330110, 2353);
INSERT INTO `sys_area` VALUES (8632122, 86, 8631081, 3, '萧山区', '浙江省，杭州市，萧山区', 330109, 2354);
INSERT INTO `sys_area` VALUES (8632123, 86, 8631081, 3, '滨江区', '浙江省，杭州市，滨江区', 330108, 2355);
INSERT INTO `sys_area` VALUES (8632124, 86, 8631081, 3, '江干区', '浙江省，杭州市，江干区', 330104, 2356);
INSERT INTO `sys_area` VALUES (8632125, 86, 8631081, 3, '下城区', '浙江省，杭州市，下城区', 330103, 2357);
INSERT INTO `sys_area` VALUES (8632126, 86, 8631081, 3, '临安区', '浙江省，杭州市，临安区', 330112, 2358);
INSERT INTO `sys_area` VALUES (8632127, 86, 8631081, 3, '拱墅区', '浙江省，杭州市，拱墅区', 330105, 2359);
INSERT INTO `sys_area` VALUES (8632323, 86, 8631082, 3, '上虞区', '浙江省，绍兴市，上虞区', 330604, 2360);
INSERT INTO `sys_area` VALUES (8632324, 86, 8631082, 3, '嵊州市', '浙江省，绍兴市，嵊州市', 330683, 2361);
INSERT INTO `sys_area` VALUES (8632325, 86, 8631082, 3, '新昌县', '浙江省，绍兴市，新昌县', 330624, 2362);
INSERT INTO `sys_area` VALUES (8632326, 86, 8631082, 3, '越城区', '浙江省，绍兴市，越城区', 330602, 2363);
INSERT INTO `sys_area` VALUES (8632327, 86, 8631082, 3, '柯桥区', '浙江省，绍兴市，柯桥区', 330603, 2364);
INSERT INTO `sys_area` VALUES (8632328, 86, 8631082, 3, '诸暨市', '浙江省，绍兴市，诸暨市', 330681, 2365);
INSERT INTO `sys_area` VALUES (8632448, 86, 8631083, 3, '德清县', '浙江省，湖州市，德清县', 330521, 2366);
INSERT INTO `sys_area` VALUES (8632449, 86, 8631083, 3, '长兴县', '浙江省，湖州市，长兴县', 330522, 2367);
INSERT INTO `sys_area` VALUES (8632450, 86, 8631083, 3, '吴兴区', '浙江省，湖州市，吴兴区', 330502, 2368);
INSERT INTO `sys_area` VALUES (8632451, 86, 8631083, 3, '安吉县', '浙江省，湖州市，安吉县', 330523, 2369);
INSERT INTO `sys_area` VALUES (8632452, 86, 8631083, 3, '南浔区', '浙江省，湖州市，南浔区', 330503, 2370);
INSERT INTO `sys_area` VALUES (8632519, 86, 8600024, 2, '邢台市', '河北省，邢台市', 130500, 2371);
INSERT INTO `sys_area` VALUES (8632520, 86, 8600024, 2, '邯郸市', '河北省，邯郸市', 130400, 2372);
INSERT INTO `sys_area` VALUES (8632521, 86, 8600024, 2, '唐山市', '河北省，唐山市', 130200, 2373);
INSERT INTO `sys_area` VALUES (8632522, 86, 8600024, 2, '承德市', '河北省，承德市', 130800, 2374);
INSERT INTO `sys_area` VALUES (8632523, 86, 8600024, 2, '张家口市', '河北省，张家口市', 130700, 2375);
INSERT INTO `sys_area` VALUES (8632524, 86, 8600024, 2, '廊坊市', '河北省，廊坊市', 131000, 2376);
INSERT INTO `sys_area` VALUES (8632525, 86, 8600024, 2, '沧州市', '河北省，沧州市', 130900, 2377);
INSERT INTO `sys_area` VALUES (8632526, 86, 8600024, 2, '衡水市', '河北省，衡水市', 131100, 2378);
INSERT INTO `sys_area` VALUES (8632527, 86, 8600024, 2, '秦皇岛市', '河北省，秦皇岛市', 130300, 2379);
INSERT INTO `sys_area` VALUES (8632528, 86, 8600024, 2, '保定市', '河北省，保定市', 130600, 2380);
INSERT INTO `sys_area` VALUES (8632529, 86, 8600024, 2, '石家庄市', '河北省，石家庄市', 130100, 2381);
INSERT INTO `sys_area` VALUES (8632530, 86, 8632519, 3, '内丘县', '河北省，邢台市，内丘县', 130523, 2382);
INSERT INTO `sys_area` VALUES (8632531, 86, 8632519, 3, '柏乡县', '河北省，邢台市，柏乡县', 130524, 2383);
INSERT INTO `sys_area` VALUES (8632532, 86, 8632519, 3, '新河县', '河北省，邢台市，新河县', 130530, 2384);
INSERT INTO `sys_area` VALUES (8632533, 86, 8632519, 3, '隆尧县', '河北省，邢台市，隆尧县', 130525, 2385);
INSERT INTO `sys_area` VALUES (8632534, 86, 8632519, 3, '临城县', '河北省，邢台市，临城县', 130522, 2386);
INSERT INTO `sys_area` VALUES (8632535, 86, 8632519, 3, '南宫市', '河北省，邢台市，南宫市', 130581, 2387);
INSERT INTO `sys_area` VALUES (8632536, 86, 8632519, 3, '宁晋县', '河北省，邢台市，宁晋县', 130528, 2388);
INSERT INTO `sys_area` VALUES (8632537, 86, 8632519, 3, '平乡县', '河北省，邢台市，平乡县', 130532, 2389);
INSERT INTO `sys_area` VALUES (8632538, 86, 8632519, 3, '桥西区', '河北省，邢台市，桥西区', 130503, 2390);
INSERT INTO `sys_area` VALUES (8632539, 86, 8632519, 3, '南和县', '河北省，邢台市，南和县', 130527, 2391);
INSERT INTO `sys_area` VALUES (8632540, 86, 8632519, 3, '沙河市', '河北省，邢台市，沙河市', 130582, 2392);
INSERT INTO `sys_area` VALUES (8632541, 86, 8632519, 3, '临西县', '河北省，邢台市，临西县', 130535, 2393);
INSERT INTO `sys_area` VALUES (8632542, 86, 8632519, 3, '巨鹿县', '河北省，邢台市，巨鹿县', 130529, 2394);
INSERT INTO `sys_area` VALUES (8632543, 86, 8632519, 3, '威县', '河北省，邢台市，威县', 130533, 2395);
INSERT INTO `sys_area` VALUES (8632544, 86, 8632519, 3, '广宗县', '河北省，邢台市，广宗县', 130531, 2396);
INSERT INTO `sys_area` VALUES (8632545, 86, 8632519, 3, '清河县', '河北省，邢台市，清河县', 130534, 2397);
INSERT INTO `sys_area` VALUES (8632546, 86, 8632519, 3, '任县', '河北省，邢台市，任县', 130526, 2398);
INSERT INTO `sys_area` VALUES (8632547, 86, 8632519, 3, '桥东区', '河北省，邢台市，桥东区', 130502, 2399);
INSERT INTO `sys_area` VALUES (8632548, 86, 8632519, 3, '邢台县', '河北省，邢台市，邢台县', 130521, 2400);
INSERT INTO `sys_area` VALUES (8632746, 86, 8632520, 3, '广平县', '河北省，邯郸市，广平县', 130432, 2401);
INSERT INTO `sys_area` VALUES (8632747, 86, 8632520, 3, '馆陶县', '河北省，邯郸市，馆陶县', 130433, 2402);
INSERT INTO `sys_area` VALUES (8632748, 86, 8632520, 3, '武安市', '河北省，邯郸市，武安市', 130481, 2403);
INSERT INTO `sys_area` VALUES (8632749, 86, 8632520, 3, '临漳县', '河北省，邯郸市，临漳县', 130423, 2404);
INSERT INTO `sys_area` VALUES (8632750, 86, 8632520, 3, '魏县', '河北省，邯郸市，魏县', 130434, 2405);
INSERT INTO `sys_area` VALUES (8632751, 86, 8632520, 3, '肥乡区', '河北省，邯郸市，肥乡区', 130407, 2406);
INSERT INTO `sys_area` VALUES (8632752, 86, 8632520, 3, '峰峰矿区', '河北省，邯郸市，峰峰矿区', 130406, 2407);
INSERT INTO `sys_area` VALUES (8632753, 86, 8632520, 3, '涉县', '河北省，邯郸市，涉县', 130426, 2408);
INSERT INTO `sys_area` VALUES (8632754, 86, 8632520, 3, '大名县', '河北省，邯郸市，大名县', 130425, 2409);
INSERT INTO `sys_area` VALUES (8632755, 86, 8632520, 3, '邱县', '河北省，邯郸市，邱县', 130430, 2410);
INSERT INTO `sys_area` VALUES (8632756, 86, 8632520, 3, '曲周县', '河北省，邯郸市，曲周县', 130435, 2411);
INSERT INTO `sys_area` VALUES (8632757, 86, 8632520, 3, '鸡泽县', '河北省，邯郸市，鸡泽县', 130431, 2412);
INSERT INTO `sys_area` VALUES (8632758, 86, 8632520, 3, '磁县', '河北省，邯郸市，磁县', 130427, 2413);
INSERT INTO `sys_area` VALUES (8632759, 86, 8632520, 3, '丛台区', '河北省，邯郸市，丛台区', 130403, 2414);
INSERT INTO `sys_area` VALUES (8632760, 86, 8632520, 3, '复兴区', '河北省，邯郸市，复兴区', 130404, 2415);
INSERT INTO `sys_area` VALUES (8632761, 86, 8632520, 3, '永年区', '河北省，邯郸市，永年区', 130408, 2416);
INSERT INTO `sys_area` VALUES (8632762, 86, 8632520, 3, '邯山区', '河北省，邯郸市，邯山区', 130402, 2417);
INSERT INTO `sys_area` VALUES (8632763, 86, 8632520, 3, '成安县', '河北省，邯郸市，成安县', 130424, 2418);
INSERT INTO `sys_area` VALUES (8633005, 86, 8632521, 3, '滦南县', '河北省，唐山市，滦南县', 130224, 2419);
INSERT INTO `sys_area` VALUES (8633006, 86, 8632521, 3, '乐亭县', '河北省，唐山市，乐亭县', 130225, 2420);
INSERT INTO `sys_area` VALUES (8633007, 86, 8632521, 3, '迁西县', '河北省，唐山市，迁西县', 130227, 2421);
INSERT INTO `sys_area` VALUES (8633008, 86, 8632521, 3, '遵化市', '河北省，唐山市，遵化市', 130281, 2422);
INSERT INTO `sys_area` VALUES (8633009, 86, 8632521, 3, '迁安市', '河北省，唐山市，迁安市', 130283, 2423);
INSERT INTO `sys_area` VALUES (8633010, 86, 8632521, 3, '滦县', '河北省，唐山市，滦县', 130223, 2424);
INSERT INTO `sys_area` VALUES (8633011, 86, 8632521, 3, '曹妃甸区', '河北省，唐山市，曹妃甸区', 130209, 2425);
INSERT INTO `sys_area` VALUES (8633012, 86, 8632521, 3, '玉田县', '河北省，唐山市，玉田县', 130229, 2426);
INSERT INTO `sys_area` VALUES (8633013, 86, 8632521, 3, '路南区', '河北省，唐山市，路南区', 130202, 2427);
INSERT INTO `sys_area` VALUES (8633014, 86, 8632521, 3, '丰南区', '河北省，唐山市，丰南区', 130207, 2428);
INSERT INTO `sys_area` VALUES (8633015, 86, 8632521, 3, '路北区', '河北省，唐山市，路北区', 130203, 2429);
INSERT INTO `sys_area` VALUES (8633016, 86, 8632521, 3, '丰润区', '河北省，唐山市，丰润区', 130208, 2430);
INSERT INTO `sys_area` VALUES (8633017, 86, 8632521, 3, '古冶区', '河北省，唐山市，古冶区', 130204, 2431);
INSERT INTO `sys_area` VALUES (8633018, 86, 8632521, 3, '开平区', '河北省，唐山市，开平区', 130205, 2432);
INSERT INTO `sys_area` VALUES (8633261, 86, 8632522, 3, '围场满族蒙古族自治县', '河北省，承德市，围场满族蒙古族自治县', 130828, 2433);
INSERT INTO `sys_area` VALUES (8633262, 86, 8632522, 3, '宽城满族自治县', '河北省，承德市，宽城满族自治县', 130827, 2434);
INSERT INTO `sys_area` VALUES (8633263, 86, 8632522, 3, '隆化县', '河北省，承德市，隆化县', 130825, 2435);
INSERT INTO `sys_area` VALUES (8633264, 86, 8632522, 3, '鹰手营子矿区', '河北省，承德市，鹰手营子矿区', 130804, 2436);
INSERT INTO `sys_area` VALUES (8633265, 86, 8632522, 3, '丰宁满族自治县', '河北省，承德市，丰宁满族自治县', 130826, 2437);
INSERT INTO `sys_area` VALUES (8633266, 86, 8632522, 3, '平泉市', '河北省，承德市，平泉市', 130881, 2438);
INSERT INTO `sys_area` VALUES (8633267, 86, 8632522, 3, '兴隆县', '河北省，承德市，兴隆县', 130822, 2439);
INSERT INTO `sys_area` VALUES (8633268, 86, 8632522, 3, '双滦区', '河北省，承德市，双滦区', 130803, 2440);
INSERT INTO `sys_area` VALUES (8633269, 86, 8632522, 3, '滦平县', '河北省，承德市，滦平县', 130824, 2441);
INSERT INTO `sys_area` VALUES (8633270, 86, 8632522, 3, '承德县', '河北省，承德市，承德县', 130821, 2442);
INSERT INTO `sys_area` VALUES (8633271, 86, 8632522, 3, '双桥区', '河北省，承德市，双桥区', 130802, 2443);
INSERT INTO `sys_area` VALUES (8633491, 86, 8632523, 3, '阳原县', '河北省，张家口市，阳原县', 130727, 2444);
INSERT INTO `sys_area` VALUES (8633492, 86, 8632523, 3, '沽源县', '河北省，张家口市，沽源县', 130724, 2445);
INSERT INTO `sys_area` VALUES (8633493, 86, 8632523, 3, '怀安县', '河北省，张家口市，怀安县', 130728, 2446);
INSERT INTO `sys_area` VALUES (8633494, 86, 8632523, 3, '蔚县', '河北省，张家口市，蔚县', 130726, 2447);
INSERT INTO `sys_area` VALUES (8633495, 86, 8632523, 3, '崇礼区', '河北省，张家口市，崇礼区', 130709, 2448);
INSERT INTO `sys_area` VALUES (8633496, 86, 8632523, 3, '怀来县', '河北省，张家口市，怀来县', 130730, 2449);
INSERT INTO `sys_area` VALUES (8633497, 86, 8632523, 3, '张北县', '河北省，张家口市，张北县', 130722, 2450);
INSERT INTO `sys_area` VALUES (8633498, 86, 8632523, 3, '康保县', '河北省，张家口市，康保县', 130723, 2451);
INSERT INTO `sys_area` VALUES (8633499, 86, 8632523, 3, '尚义县', '河北省，张家口市，尚义县', 130725, 2452);
INSERT INTO `sys_area` VALUES (8633500, 86, 8632523, 3, '下花园区', '河北省，张家口市，下花园区', 130706, 2453);
INSERT INTO `sys_area` VALUES (8633501, 86, 8632523, 3, '涿鹿县', '河北省，张家口市，涿鹿县', 130731, 2454);
INSERT INTO `sys_area` VALUES (8633502, 86, 8632523, 3, '赤城县', '河北省，张家口市，赤城县', 130732, 2455);
INSERT INTO `sys_area` VALUES (8633503, 86, 8632523, 3, '万全区', '河北省，张家口市，万全区', 130708, 2456);
INSERT INTO `sys_area` VALUES (8633504, 86, 8632523, 3, '桥东区', '河北省，张家口市，桥东区', 130702, 2457);
INSERT INTO `sys_area` VALUES (8633505, 86, 8632523, 3, '桥西区', '河北省，张家口市，桥西区', 130703, 2458);
INSERT INTO `sys_area` VALUES (8633506, 86, 8632523, 3, '宣化区', '河北省，张家口市，宣化区', 130705, 2459);
INSERT INTO `sys_area` VALUES (8633747, 86, 8632524, 3, '大厂回族自治县', '河北省，廊坊市，大厂回族自治县', 131028, 2460);
INSERT INTO `sys_area` VALUES (8633748, 86, 8632524, 3, '霸州市', '河北省，廊坊市，霸州市', 131081, 2461);
INSERT INTO `sys_area` VALUES (8633749, 86, 8632524, 3, '大城县', '河北省，廊坊市，大城县', 131025, 2462);
INSERT INTO `sys_area` VALUES (8633750, 86, 8632524, 3, '永清县', '河北省，廊坊市，永清县', 131023, 2463);
INSERT INTO `sys_area` VALUES (8633751, 86, 8632524, 3, '香河县', '河北省，廊坊市，香河县', 131024, 2464);
INSERT INTO `sys_area` VALUES (8633752, 86, 8632524, 3, '固安县', '河北省，廊坊市，固安县', 131022, 2465);
INSERT INTO `sys_area` VALUES (8633753, 86, 8632524, 3, '文安县', '河北省，廊坊市，文安县', 131026, 2466);
INSERT INTO `sys_area` VALUES (8633754, 86, 8632524, 3, '广阳区', '河北省，廊坊市，广阳区', 131003, 2467);
INSERT INTO `sys_area` VALUES (8633755, 86, 8632524, 3, '安次区', '河北省，廊坊市，安次区', 131002, 2468);
INSERT INTO `sys_area` VALUES (8633756, 86, 8632524, 3, '三河市', '河北省，廊坊市，三河市', 131082, 2469);
INSERT INTO `sys_area` VALUES (8633869, 86, 8632525, 3, '运河区', '河北省，沧州市，运河区', 130903, 2470);
INSERT INTO `sys_area` VALUES (8633870, 86, 8632525, 3, '任丘市', '河北省，沧州市，任丘市', 130982, 2471);
INSERT INTO `sys_area` VALUES (8633871, 86, 8632525, 3, '孟村回族自治县', '河北省，沧州市，孟村回族自治县', 130930, 2472);
INSERT INTO `sys_area` VALUES (8633872, 86, 8632525, 3, '新华区', '河北省，沧州市，新华区', 130902, 2473);
INSERT INTO `sys_area` VALUES (8633873, 86, 8632525, 3, '青县', '河北省，沧州市，青县', 130922, 2474);
INSERT INTO `sys_area` VALUES (8633874, 86, 8632525, 3, '河间市', '河北省，沧州市，河间市', 130984, 2475);
INSERT INTO `sys_area` VALUES (8633875, 86, 8632525, 3, '海兴县', '河北省，沧州市，海兴县', 130924, 2476);
INSERT INTO `sys_area` VALUES (8633876, 86, 8632525, 3, '盐山县', '河北省，沧州市，盐山县', 130925, 2477);
INSERT INTO `sys_area` VALUES (8633877, 86, 8632525, 3, '南皮县', '河北省，沧州市，南皮县', 130927, 2478);
INSERT INTO `sys_area` VALUES (8633878, 86, 8632525, 3, '东光县', '河北省，沧州市，东光县', 130923, 2479);
INSERT INTO `sys_area` VALUES (8633879, 86, 8632525, 3, '献县', '河北省，沧州市，献县', 130929, 2480);
INSERT INTO `sys_area` VALUES (8633880, 86, 8632525, 3, '沧县', '河北省，沧州市，沧县', 130921, 2481);
INSERT INTO `sys_area` VALUES (8633881, 86, 8632525, 3, '肃宁县', '河北省，沧州市，肃宁县', 130926, 2482);
INSERT INTO `sys_area` VALUES (8633882, 86, 8632525, 3, '吴桥县', '河北省，沧州市，吴桥县', 130928, 2483);
INSERT INTO `sys_area` VALUES (8633883, 86, 8632525, 3, '黄骅市', '河北省，沧州市，黄骅市', 130983, 2484);
INSERT INTO `sys_area` VALUES (8633884, 86, 8632525, 3, '泊头市', '河北省，沧州市，泊头市', 130981, 2485);
INSERT INTO `sys_area` VALUES (8634093, 86, 8632526, 3, '安平县', '河北省，衡水市，安平县', 131125, 2486);
INSERT INTO `sys_area` VALUES (8634094, 86, 8632526, 3, '枣强县', '河北省，衡水市，枣强县', 131121, 2487);
INSERT INTO `sys_area` VALUES (8634095, 86, 8632526, 3, '武邑县', '河北省，衡水市，武邑县', 131122, 2488);
INSERT INTO `sys_area` VALUES (8634096, 86, 8632526, 3, '武强县', '河北省，衡水市，武强县', 131123, 2489);
INSERT INTO `sys_area` VALUES (8634097, 86, 8632526, 3, '桃城区', '河北省，衡水市，桃城区', 131102, 2490);
INSERT INTO `sys_area` VALUES (8634098, 86, 8632526, 3, '深州市', '河北省，衡水市，深州市', 131182, 2491);
INSERT INTO `sys_area` VALUES (8634099, 86, 8632526, 3, '饶阳县', '河北省，衡水市，饶阳县', 131124, 2492);
INSERT INTO `sys_area` VALUES (8634100, 86, 8632526, 3, '冀州区', '河北省，衡水市，冀州区', 131103, 2493);
INSERT INTO `sys_area` VALUES (8634101, 86, 8632526, 3, '景县', '河北省，衡水市，景县', 131127, 2494);
INSERT INTO `sys_area` VALUES (8634102, 86, 8632526, 3, '故城县', '河北省，衡水市，故城县', 131126, 2495);
INSERT INTO `sys_area` VALUES (8634103, 86, 8632526, 3, '阜城县', '河北省，衡水市，阜城县', 131128, 2496);
INSERT INTO `sys_area` VALUES (8634227, 86, 8632527, 3, '卢龙县', '河北省，秦皇岛市，卢龙县', 130324, 2497);
INSERT INTO `sys_area` VALUES (8634228, 86, 8632527, 3, '青龙满族自治县', '河北省，秦皇岛市，青龙满族自治县', 130321, 2498);
INSERT INTO `sys_area` VALUES (8634229, 86, 8632527, 3, '山海关区', '河北省，秦皇岛市，山海关区', 130303, 2499);
INSERT INTO `sys_area` VALUES (8634230, 86, 8632527, 3, '海港区', '河北省，秦皇岛市，海港区', 130302, 2500);
INSERT INTO `sys_area` VALUES (8634231, 86, 8632527, 3, '北戴河区', '河北省，秦皇岛市，北戴河区', 130304, 2501);
INSERT INTO `sys_area` VALUES (8634232, 86, 8632527, 3, '抚宁区', '河北省，秦皇岛市，抚宁区', 130306, 2502);
INSERT INTO `sys_area` VALUES (8634233, 86, 8632527, 3, '昌黎县', '河北省，秦皇岛市，昌黎县', 130322, 2503);
INSERT INTO `sys_area` VALUES (8634339, 86, 8632528, 3, '顺平县', '河北省，保定市，顺平县', 130636, 2504);
INSERT INTO `sys_area` VALUES (8634340, 86, 8632528, 3, '阜平县', '河北省，保定市，阜平县', 130624, 2505);
INSERT INTO `sys_area` VALUES (8634341, 86, 8632528, 3, '容城县', '河北省，保定市，容城县', 130629, 2506);
INSERT INTO `sys_area` VALUES (8634342, 86, 8632528, 3, '涞源县', '河北省，保定市，涞源县', 130630, 2507);
INSERT INTO `sys_area` VALUES (8634343, 86, 8632528, 3, '安新县', '河北省，保定市，安新县', 130632, 2508);
INSERT INTO `sys_area` VALUES (8634344, 86, 8632528, 3, '望都县', '河北省，保定市，望都县', 130631, 2509);
INSERT INTO `sys_area` VALUES (8634345, 86, 8632528, 3, '高阳县', '河北省，保定市，高阳县', 130628, 2510);
INSERT INTO `sys_area` VALUES (8634346, 86, 8632528, 3, '雄县', '河北省，保定市，雄县', 130638, 2511);
INSERT INTO `sys_area` VALUES (8634347, 86, 8632528, 3, '徐水区', '河北省，保定市，徐水区', 130609, 2512);
INSERT INTO `sys_area` VALUES (8634348, 86, 8632528, 3, '定兴县', '河北省，保定市，定兴县', 130626, 2513);
INSERT INTO `sys_area` VALUES (8634349, 86, 8632528, 3, '易县', '河北省，保定市，易县', 130633, 2514);
INSERT INTO `sys_area` VALUES (8634350, 86, 8632528, 3, '莲池区', '河北省，保定市，莲池区', 130606, 2515);
INSERT INTO `sys_area` VALUES (8634351, 86, 8632528, 3, '蠡县', '河北省，保定市，蠡县', 130635, 2516);
INSERT INTO `sys_area` VALUES (8634352, 86, 8632528, 3, '博野县', '河北省，保定市，博野县', 130637, 2517);
INSERT INTO `sys_area` VALUES (8634353, 86, 8632528, 3, '竞秀区', '河北省，保定市，竞秀区', 130602, 2518);
INSERT INTO `sys_area` VALUES (8634354, 86, 8632528, 3, '唐县', '河北省，保定市，唐县', 130627, 2519);
INSERT INTO `sys_area` VALUES (8634355, 86, 8632528, 3, '涞水县', '河北省，保定市，涞水县', 130623, 2520);
INSERT INTO `sys_area` VALUES (8634356, 86, 8632528, 3, '涿州市', '河北省，保定市，涿州市', 130681, 2521);
INSERT INTO `sys_area` VALUES (8634357, 86, 8632528, 3, '高碑店市', '河北省，保定市，高碑店市', 130684, 2522);
INSERT INTO `sys_area` VALUES (8634358, 86, 8632528, 3, '曲阳县', '河北省，保定市，曲阳县', 130634, 2523);
INSERT INTO `sys_area` VALUES (8634359, 86, 8632528, 3, '满城区', '河北省，保定市，满城区', 130607, 2524);
INSERT INTO `sys_area` VALUES (8634360, 86, 8632528, 3, '清苑区', '河北省，保定市，清苑区', 130608, 2525);
INSERT INTO `sys_area` VALUES (8634361, 86, 8632528, 3, '安国市', '河北省，保定市，安国市', 130683, 2526);
INSERT INTO `sys_area` VALUES (8634362, 86, 8632528, 3, '定州市', '河北省，保定市，定州市', 130682, 2527);
INSERT INTO `sys_area` VALUES (8634706, 86, 8632529, 3, '晋州市', '河北省，石家庄市，晋州市', 130183, 2528);
INSERT INTO `sys_area` VALUES (8634707, 86, 8632529, 3, '元氏县', '河北省，石家庄市，元氏县', 130132, 2529);
INSERT INTO `sys_area` VALUES (8634708, 86, 8632529, 3, '赵县', '河北省，石家庄市，赵县', 130133, 2530);
INSERT INTO `sys_area` VALUES (8634709, 86, 8632529, 3, '灵寿县', '河北省，石家庄市，灵寿县', 130126, 2531);
INSERT INTO `sys_area` VALUES (8634710, 86, 8632529, 3, '赞皇县', '河北省，石家庄市，赞皇县', 130129, 2532);
INSERT INTO `sys_area` VALUES (8634711, 86, 8632529, 3, '无极县', '河北省，石家庄市，无极县', 130130, 2533);
INSERT INTO `sys_area` VALUES (8634712, 86, 8632529, 3, '高邑县', '河北省，石家庄市，高邑县', 130127, 2534);
INSERT INTO `sys_area` VALUES (8634713, 86, 8632529, 3, '鹿泉区', '河北省，石家庄市，鹿泉区', 130110, 2535);
INSERT INTO `sys_area` VALUES (8634714, 86, 8632529, 3, '藁城区', '河北省，石家庄市，藁城区', 130109, 2536);
INSERT INTO `sys_area` VALUES (8634715, 86, 8632529, 3, '平山县', '河北省，石家庄市，平山县', 130131, 2537);
INSERT INTO `sys_area` VALUES (8634716, 86, 8632529, 3, '行唐县', '河北省，石家庄市，行唐县', 130125, 2538);
INSERT INTO `sys_area` VALUES (8634717, 86, 8632529, 3, '正定县', '河北省，石家庄市，正定县', 130123, 2539);
INSERT INTO `sys_area` VALUES (8634718, 86, 8632529, 3, '栾城区', '河北省，石家庄市，栾城区', 130111, 2540);
INSERT INTO `sys_area` VALUES (8634719, 86, 8632529, 3, '裕华区', '河北省，石家庄市，裕华区', 130108, 2541);
INSERT INTO `sys_area` VALUES (8634720, 86, 8632529, 3, '井陉县', '河北省，石家庄市，井陉县', 130121, 2542);
INSERT INTO `sys_area` VALUES (8634721, 86, 8632529, 3, '井陉矿区', '河北省，石家庄市，井陉矿区', 130107, 2543);
INSERT INTO `sys_area` VALUES (8634722, 86, 8632529, 3, '辛集市', '河北省，石家庄市，辛集市', 130181, 2544);
INSERT INTO `sys_area` VALUES (8634723, 86, 8632529, 3, '长安区', '河北省，石家庄市，长安区', 130102, 2545);
INSERT INTO `sys_area` VALUES (8634724, 86, 8632529, 3, '桥西区', '河北省，石家庄市，桥西区', 130104, 2546);
INSERT INTO `sys_area` VALUES (8634725, 86, 8632529, 3, '新华区', '河北省，石家庄市，新华区', 130105, 2547);
INSERT INTO `sys_area` VALUES (8634726, 86, 8632529, 3, '新乐市', '河北省，石家庄市，新乐市', 130184, 2548);
INSERT INTO `sys_area` VALUES (8634727, 86, 8632529, 3, '深泽县', '河北省，石家庄市，深泽县', 130128, 2549);
INSERT INTO `sys_area` VALUES (8635007, 86, 8600025, 3, '深水埗区', '香港特别行政区，深水埗区', 810006, 2550);
INSERT INTO `sys_area` VALUES (8635008, 86, 8600025, 3, '西贡区', '香港特别行政区，西贡区', 810015, 2551);
INSERT INTO `sys_area` VALUES (8635009, 86, 8600025, 3, '元朗区', '香港特别行政区，元朗区', 810012, 2552);
INSERT INTO `sys_area` VALUES (8635010, 86, 8600025, 3, '油尖旺区', '香港特别行政区，油尖旺区', 810005, 2553);
INSERT INTO `sys_area` VALUES (8635011, 86, 8600025, 3, '湾仔区', '香港特别行政区，湾仔区', 810002, 2554);
INSERT INTO `sys_area` VALUES (8635012, 86, 8600025, 3, '屯门区', '香港特别行政区，屯门区', 810011, 2555);
INSERT INTO `sys_area` VALUES (8635013, 86, 8600025, 3, '黄大仙区', '香港特别行政区，黄大仙区', 810008, 2556);
INSERT INTO `sys_area` VALUES (8635014, 86, 8600025, 3, '东区', '香港特别行政区，东区', 810003, 2557);
INSERT INTO `sys_area` VALUES (8635015, 86, 8600025, 3, '中西区', '香港特别行政区，中西区', 810001, 2558);
INSERT INTO `sys_area` VALUES (8635016, 86, 8600025, 3, '大埔区', '香港特别行政区，大埔区', 810014, 2559);
INSERT INTO `sys_area` VALUES (8635017, 86, 8600025, 3, '九龙城区', '香港特别行政区，九龙城区', 810007, 2560);
INSERT INTO `sys_area` VALUES (8635018, 86, 8600025, 3, '沙田区', '香港特别行政区，沙田区', 810016, 2561);
INSERT INTO `sys_area` VALUES (8635019, 86, 8600025, 3, '南区', '香港特别行政区，南区', 810004, 2562);
INSERT INTO `sys_area` VALUES (8635020, 86, 8600025, 3, '观塘区', '香港特别行政区，观塘区', 810009, 2563);
INSERT INTO `sys_area` VALUES (8635021, 86, 8600025, 3, '北区', '香港特别行政区，北区', 810013, 2564);
INSERT INTO `sys_area` VALUES (8635022, 86, 8600025, 3, '离岛区', '香港特别行政区，离岛区', 810018, 2565);
INSERT INTO `sys_area` VALUES (8635023, 86, 8600025, 3, '荃湾区', '香港特别行政区，荃湾区', 810010, 2566);
INSERT INTO `sys_area` VALUES (8635024, 86, 8600025, 3, '葵青区', '香港特别行政区，葵青区', 810017, 2567);
INSERT INTO `sys_area` VALUES (8635025, 86, 8600026, 2, '阳泉市', '山西省，阳泉市', 140300, 2568);
INSERT INTO `sys_area` VALUES (8635026, 86, 8600026, 2, '太原市', '山西省，太原市', 140100, 2569);
INSERT INTO `sys_area` VALUES (8635027, 86, 8600026, 2, '临汾市', '山西省，临汾市', 141000, 2570);
INSERT INTO `sys_area` VALUES (8635028, 86, 8600026, 2, '大同市', '山西省，大同市', 140200, 2571);
INSERT INTO `sys_area` VALUES (8635029, 86, 8600026, 2, '晋城市', '山西省，晋城市', 140500, 2572);
INSERT INTO `sys_area` VALUES (8635030, 86, 8600026, 2, '忻州市', '山西省，忻州市', 140900, 2573);
INSERT INTO `sys_area` VALUES (8635031, 86, 8600026, 2, '长治市', '山西省，长治市', 140400, 2574);
INSERT INTO `sys_area` VALUES (8635032, 86, 8600026, 2, '运城市', '山西省，运城市', 140800, 2575);
INSERT INTO `sys_area` VALUES (8635033, 86, 8600026, 2, '朔州市', '山西省，朔州市', 140600, 2576);
INSERT INTO `sys_area` VALUES (8635034, 86, 8600026, 2, '晋中市', '山西省，晋中市', 140700, 2577);
INSERT INTO `sys_area` VALUES (8635035, 86, 8600026, 2, '吕梁市', '山西省，吕梁市', 141100, 2578);
INSERT INTO `sys_area` VALUES (8635036, 86, 8635025, 3, '平定县', '山西省，阳泉市，平定县', 140321, 2579);
INSERT INTO `sys_area` VALUES (8635037, 86, 8635025, 3, '盂县', '山西省，阳泉市，盂县', 140322, 2580);
INSERT INTO `sys_area` VALUES (8635038, 86, 8635025, 3, '郊区', '山西省，阳泉市，郊区', 140311, 2581);
INSERT INTO `sys_area` VALUES (8635039, 86, 8635025, 3, '矿区', '山西省，阳泉市，矿区', 140303, 2582);
INSERT INTO `sys_area` VALUES (8635040, 86, 8635025, 3, '城区', '山西省，阳泉市，城区', 140302, 2583);
INSERT INTO `sys_area` VALUES (8635084, 86, 8635026, 3, '万柏林区', '山西省，太原市，万柏林区', 140109, 2584);
INSERT INTO `sys_area` VALUES (8635085, 86, 8635026, 3, '尖草坪区', '山西省，太原市，尖草坪区', 140108, 2585);
INSERT INTO `sys_area` VALUES (8635086, 86, 8635026, 3, '娄烦县', '山西省，太原市，娄烦县', 140123, 2586);
INSERT INTO `sys_area` VALUES (8635087, 86, 8635026, 3, '晋源区', '山西省，太原市，晋源区', 140110, 2587);
INSERT INTO `sys_area` VALUES (8635088, 86, 8635026, 3, '阳曲县', '山西省，太原市，阳曲县', 140122, 2588);
INSERT INTO `sys_area` VALUES (8635089, 86, 8635026, 3, '古交市', '山西省，太原市，古交市', 140181, 2589);
INSERT INTO `sys_area` VALUES (8635090, 86, 8635026, 3, '清徐县', '山西省，太原市，清徐县', 140121, 2590);
INSERT INTO `sys_area` VALUES (8635091, 86, 8635026, 3, '杏花岭区', '山西省，太原市，杏花岭区', 140107, 2591);
INSERT INTO `sys_area` VALUES (8635092, 86, 8635026, 3, '小店区', '山西省，太原市，小店区', 140105, 2592);
INSERT INTO `sys_area` VALUES (8635093, 86, 8635026, 3, '迎泽区', '山西省，太原市，迎泽区', 140106, 2593);
INSERT INTO `sys_area` VALUES (8635206, 86, 8635027, 3, '隰县', '山西省，临汾市，隰县', 141031, 2594);
INSERT INTO `sys_area` VALUES (8635207, 86, 8635027, 3, '蒲县', '山西省，临汾市，蒲县', 141033, 2595);
INSERT INTO `sys_area` VALUES (8635208, 86, 8635027, 3, '尧都区', '山西省，临汾市，尧都区', 141002, 2596);
INSERT INTO `sys_area` VALUES (8635209, 86, 8635027, 3, '洪洞县', '山西省，临汾市，洪洞县', 141024, 2597);
INSERT INTO `sys_area` VALUES (8635210, 86, 8635027, 3, '大宁县', '山西省，临汾市，大宁县', 141030, 2598);
INSERT INTO `sys_area` VALUES (8635211, 86, 8635027, 3, '安泽县', '山西省，临汾市，安泽县', 141026, 2599);
INSERT INTO `sys_area` VALUES (8635212, 86, 8635027, 3, '汾西县', '山西省，临汾市，汾西县', 141034, 2600);
INSERT INTO `sys_area` VALUES (8635213, 86, 8635027, 3, '古县', '山西省，临汾市，古县', 141025, 2601);
INSERT INTO `sys_area` VALUES (8635214, 86, 8635027, 3, '吉县', '山西省，临汾市，吉县', 141028, 2602);
INSERT INTO `sys_area` VALUES (8635215, 86, 8635027, 3, '曲沃县', '山西省，临汾市，曲沃县', 141021, 2603);
INSERT INTO `sys_area` VALUES (8635216, 86, 8635027, 3, '浮山县', '山西省，临汾市，浮山县', 141027, 2604);
INSERT INTO `sys_area` VALUES (8635217, 86, 8635027, 3, '襄汾县', '山西省，临汾市，襄汾县', 141023, 2605);
INSERT INTO `sys_area` VALUES (8635218, 86, 8635027, 3, '霍州市', '山西省，临汾市，霍州市', 141082, 2606);
INSERT INTO `sys_area` VALUES (8635219, 86, 8635027, 3, '翼城县', '山西省，临汾市，翼城县', 141022, 2607);
INSERT INTO `sys_area` VALUES (8635220, 86, 8635027, 3, '侯马市', '山西省，临汾市，侯马市', 141081, 2608);
INSERT INTO `sys_area` VALUES (8635221, 86, 8635027, 3, '乡宁县', '山西省，临汾市，乡宁县', 141029, 2609);
INSERT INTO `sys_area` VALUES (8635222, 86, 8635027, 3, '永和县', '山西省，临汾市，永和县', 141032, 2610);
INSERT INTO `sys_area` VALUES (8635395, 86, 8635028, 3, '广灵县', '山西省，大同市，广灵县', 140223, 2611);
INSERT INTO `sys_area` VALUES (8635396, 86, 8635028, 3, '阳高县', '山西省，大同市，阳高县', 140221, 2612);
INSERT INTO `sys_area` VALUES (8635397, 86, 8635028, 3, '新荣区', '山西省，大同市，新荣区', 140212, 2613);
INSERT INTO `sys_area` VALUES (8635398, 86, 8635028, 3, '灵丘县', '山西省，大同市，灵丘县', 140224, 2614);
INSERT INTO `sys_area` VALUES (8635399, 86, 8635028, 3, '天镇县', '山西省，大同市，天镇县', 140222, 2615);
INSERT INTO `sys_area` VALUES (8635400, 86, 8635028, 3, '浑源县', '山西省，大同市，浑源县', 140225, 2616);
INSERT INTO `sys_area` VALUES (8635401, 86, 8635028, 3, '城区', '山西省，大同市，城区', 140202, 2617);
INSERT INTO `sys_area` VALUES (8635402, 86, 8635028, 3, '左云县', '山西省，大同市，左云县', 140226, 2618);
INSERT INTO `sys_area` VALUES (8635403, 86, 8635028, 3, '南郊区', '山西省，大同市，南郊区', 140211, 2619);
INSERT INTO `sys_area` VALUES (8635404, 86, 8635028, 3, '矿区', '山西省，大同市，矿区', 140203, 2620);
INSERT INTO `sys_area` VALUES (8635405, 86, 8635028, 3, '大同县', '山西省，大同市，大同县', 140227, 2621);
INSERT INTO `sys_area` VALUES (8635537, 86, 8635029, 3, '高平市', '山西省，晋城市，高平市', 140581, 2622);
INSERT INTO `sys_area` VALUES (8635538, 86, 8635029, 3, '泽州县', '山西省，晋城市，泽州县', 140525, 2623);
INSERT INTO `sys_area` VALUES (8635539, 86, 8635029, 3, '城区', '山西省，晋城市，城区', 140502, 2624);
INSERT INTO `sys_area` VALUES (8635540, 86, 8635029, 3, '陵川县', '山西省，晋城市，陵川县', 140524, 2625);
INSERT INTO `sys_area` VALUES (8635541, 86, 8635029, 3, '沁水县', '山西省，晋城市，沁水县', 140521, 2626);
INSERT INTO `sys_area` VALUES (8635542, 86, 8635029, 3, '阳城县', '山西省，晋城市，阳城县', 140522, 2627);
INSERT INTO `sys_area` VALUES (8635630, 86, 8635030, 3, '五寨县', '山西省，忻州市，五寨县', 140928, 2628);
INSERT INTO `sys_area` VALUES (8635631, 86, 8635030, 3, '代县', '山西省，忻州市，代县', 140923, 2629);
INSERT INTO `sys_area` VALUES (8635632, 86, 8635030, 3, '宁武县', '山西省，忻州市，宁武县', 140925, 2630);
INSERT INTO `sys_area` VALUES (8635633, 86, 8635030, 3, '忻府区', '山西省，忻州市，忻府区', 140902, 2631);
INSERT INTO `sys_area` VALUES (8635634, 86, 8635030, 3, '河曲县', '山西省，忻州市，河曲县', 140930, 2632);
INSERT INTO `sys_area` VALUES (8635635, 86, 8635030, 3, '偏关县', '山西省，忻州市，偏关县', 140932, 2633);
INSERT INTO `sys_area` VALUES (8635636, 86, 8635030, 3, '原平市', '山西省，忻州市，原平市', 140981, 2634);
INSERT INTO `sys_area` VALUES (8635637, 86, 8635030, 3, '五台县', '山西省，忻州市，五台县', 140922, 2635);
INSERT INTO `sys_area` VALUES (8635638, 86, 8635030, 3, '岢岚县', '山西省，忻州市，岢岚县', 140929, 2636);
INSERT INTO `sys_area` VALUES (8635639, 86, 8635030, 3, '静乐县', '山西省，忻州市，静乐县', 140926, 2637);
INSERT INTO `sys_area` VALUES (8635640, 86, 8635030, 3, '定襄县', '山西省，忻州市，定襄县', 140921, 2638);
INSERT INTO `sys_area` VALUES (8635641, 86, 8635030, 3, '神池县', '山西省，忻州市，神池县', 140927, 2639);
INSERT INTO `sys_area` VALUES (8635642, 86, 8635030, 3, '保德县', '山西省，忻州市，保德县', 140931, 2640);
INSERT INTO `sys_area` VALUES (8635643, 86, 8635030, 3, '繁峙县', '山西省，忻州市，繁峙县', 140924, 2641);
INSERT INTO `sys_area` VALUES (8635840, 86, 8635031, 3, '黎城县', '山西省，长治市，黎城县', 140426, 2642);
INSERT INTO `sys_area` VALUES (8635841, 86, 8635031, 3, '郊区', '山西省，长治市，郊区', 140411, 2643);
INSERT INTO `sys_area` VALUES (8635842, 86, 8635031, 3, '城区', '山西省，长治市，城区', 140402, 2644);
INSERT INTO `sys_area` VALUES (8635843, 86, 8635031, 3, '潞城市', '山西省，长治市，潞城市', 140481, 2645);
INSERT INTO `sys_area` VALUES (8635844, 86, 8635031, 3, '长治县', '山西省，长治市，长治县', 140421, 2646);
INSERT INTO `sys_area` VALUES (8635845, 86, 8635031, 3, '沁县', '山西省，长治市，沁县', 140430, 2647);
INSERT INTO `sys_area` VALUES (8635846, 86, 8635031, 3, '壶关县', '山西省，长治市，壶关县', 140427, 2648);
INSERT INTO `sys_area` VALUES (8635847, 86, 8635031, 3, '长子县', '山西省，长治市，长子县', 140428, 2649);
INSERT INTO `sys_area` VALUES (8635848, 86, 8635031, 3, '屯留县', '山西省，长治市，屯留县', 140424, 2650);
INSERT INTO `sys_area` VALUES (8635849, 86, 8635031, 3, '武乡县', '山西省，长治市，武乡县', 140429, 2651);
INSERT INTO `sys_area` VALUES (8635850, 86, 8635031, 3, '沁源县', '山西省，长治市，沁源县', 140431, 2652);
INSERT INTO `sys_area` VALUES (8635851, 86, 8635031, 3, '平顺县', '山西省，长治市，平顺县', 140425, 2653);
INSERT INTO `sys_area` VALUES (8635852, 86, 8635031, 3, '襄垣县', '山西省，长治市，襄垣县', 140423, 2654);
INSERT INTO `sys_area` VALUES (8636008, 86, 8635032, 3, '夏县', '山西省，运城市，夏县', 140828, 2655);
INSERT INTO `sys_area` VALUES (8636009, 86, 8635032, 3, '临猗县', '山西省，运城市，临猗县', 140821, 2656);
INSERT INTO `sys_area` VALUES (8636010, 86, 8635032, 3, '盐湖区', '山西省，运城市，盐湖区', 140802, 2657);
INSERT INTO `sys_area` VALUES (8636011, 86, 8635032, 3, '闻喜县', '山西省，运城市，闻喜县', 140823, 2658);
INSERT INTO `sys_area` VALUES (8636012, 86, 8635032, 3, '平陆县', '山西省，运城市，平陆县', 140829, 2659);
INSERT INTO `sys_area` VALUES (8636013, 86, 8635032, 3, '永济市', '山西省，运城市，永济市', 140881, 2660);
INSERT INTO `sys_area` VALUES (8636014, 86, 8635032, 3, '万荣县', '山西省，运城市，万荣县', 140822, 2661);
INSERT INTO `sys_area` VALUES (8636015, 86, 8635032, 3, '芮城县', '山西省，运城市，芮城县', 140830, 2662);
INSERT INTO `sys_area` VALUES (8636016, 86, 8635032, 3, '绛县', '山西省，运城市，绛县', 140826, 2663);
INSERT INTO `sys_area` VALUES (8636017, 86, 8635032, 3, '垣曲县', '山西省，运城市，垣曲县', 140827, 2664);
INSERT INTO `sys_area` VALUES (8636018, 86, 8635032, 3, '新绛县', '山西省，运城市，新绛县', 140825, 2665);
INSERT INTO `sys_area` VALUES (8636019, 86, 8635032, 3, '稷山县', '山西省，运城市，稷山县', 140824, 2666);
INSERT INTO `sys_area` VALUES (8636020, 86, 8635032, 3, '河津市', '山西省，运城市，河津市', 140882, 2667);
INSERT INTO `sys_area` VALUES (8636182, 86, 8635033, 3, '平鲁区', '山西省，朔州市，平鲁区', 140603, 2668);
INSERT INTO `sys_area` VALUES (8636183, 86, 8635033, 3, '右玉县', '山西省，朔州市，右玉县', 140623, 2669);
INSERT INTO `sys_area` VALUES (8636184, 86, 8635033, 3, '山阴县', '山西省，朔州市，山阴县', 140621, 2670);
INSERT INTO `sys_area` VALUES (8636185, 86, 8635033, 3, '朔城区', '山西省，朔州市，朔城区', 140602, 2671);
INSERT INTO `sys_area` VALUES (8636186, 86, 8635033, 3, '怀仁县', '山西省，朔州市，怀仁县', 140624, 2672);
INSERT INTO `sys_area` VALUES (8636187, 86, 8635033, 3, '应县', '山西省，朔州市，应县', 140622, 2673);
INSERT INTO `sys_area` VALUES (8636267, 86, 8635034, 3, '平遥县', '山西省，晋中市，平遥县', 140728, 2674);
INSERT INTO `sys_area` VALUES (8636268, 86, 8635034, 3, '昔阳县', '山西省，晋中市，昔阳县', 140724, 2675);
INSERT INTO `sys_area` VALUES (8636269, 86, 8635034, 3, '和顺县', '山西省，晋中市，和顺县', 140723, 2676);
INSERT INTO `sys_area` VALUES (8636270, 86, 8635034, 3, '太谷县', '山西省，晋中市，太谷县', 140726, 2677);
INSERT INTO `sys_area` VALUES (8636271, 86, 8635034, 3, '介休市', '山西省，晋中市，介休市', 140781, 2678);
INSERT INTO `sys_area` VALUES (8636272, 86, 8635034, 3, '左权县', '山西省，晋中市，左权县', 140722, 2679);
INSERT INTO `sys_area` VALUES (8636273, 86, 8635034, 3, '灵石县', '山西省，晋中市，灵石县', 140729, 2680);
INSERT INTO `sys_area` VALUES (8636274, 86, 8635034, 3, '寿阳县', '山西省，晋中市，寿阳县', 140725, 2681);
INSERT INTO `sys_area` VALUES (8636275, 86, 8635034, 3, '榆社县', '山西省，晋中市，榆社县', 140721, 2682);
INSERT INTO `sys_area` VALUES (8636276, 86, 8635034, 3, '榆次区', '山西省，晋中市，榆次区', 140702, 2683);
INSERT INTO `sys_area` VALUES (8636277, 86, 8635034, 3, '祁县', '山西省，晋中市，祁县', 140727, 2684);
INSERT INTO `sys_area` VALUES (8636426, 86, 8635035, 3, '汾阳市', '山西省，吕梁市，汾阳市', 141182, 2685);
INSERT INTO `sys_area` VALUES (8636427, 86, 8635035, 3, '离石区', '山西省，吕梁市，离石区', 141102, 2686);
INSERT INTO `sys_area` VALUES (8636428, 86, 8635035, 3, '中阳县', '山西省，吕梁市，中阳县', 141129, 2687);
INSERT INTO `sys_area` VALUES (8636429, 86, 8635035, 3, '柳林县', '山西省，吕梁市，柳林县', 141125, 2688);
INSERT INTO `sys_area` VALUES (8636430, 86, 8635035, 3, '临县', '山西省，吕梁市，临县', 141124, 2689);
INSERT INTO `sys_area` VALUES (8636431, 86, 8635035, 3, '方山县', '山西省，吕梁市，方山县', 141128, 2690);
INSERT INTO `sys_area` VALUES (8636432, 86, 8635035, 3, '岚县', '山西省，吕梁市，岚县', 141127, 2691);
INSERT INTO `sys_area` VALUES (8636433, 86, 8635035, 3, '交口县', '山西省，吕梁市，交口县', 141130, 2692);
INSERT INTO `sys_area` VALUES (8636434, 86, 8635035, 3, '孝义市', '山西省，吕梁市，孝义市', 141181, 2693);
INSERT INTO `sys_area` VALUES (8636435, 86, 8635035, 3, '石楼县', '山西省，吕梁市，石楼县', 141126, 2694);
INSERT INTO `sys_area` VALUES (8636436, 86, 8635035, 3, '交城县', '山西省，吕梁市，交城县', 141122, 2695);
INSERT INTO `sys_area` VALUES (8636437, 86, 8635035, 3, '兴县', '山西省，吕梁市，兴县', 141123, 2696);
INSERT INTO `sys_area` VALUES (8636438, 86, 8635035, 3, '文水县', '山西省，吕梁市，文水县', 141121, 2697);
INSERT INTO `sys_area` VALUES (8636604, 86, 8600028, 3, '风顺堂区', '澳门特别行政区，风顺堂区', 820005, 2698);
INSERT INTO `sys_area` VALUES (8636605, 86, 8600028, 3, '花地玛堂区', '澳门特别行政区，花地玛堂区', 820001, 2699);
INSERT INTO `sys_area` VALUES (8636606, 86, 8600028, 3, '圣方济各堂区', '澳门特别行政区，圣方济各堂区', 820008, 2700);
INSERT INTO `sys_area` VALUES (8636607, 86, 8600028, 3, '花王堂区', '澳门特别行政区，花王堂区', 820002, 2701);
INSERT INTO `sys_area` VALUES (8636608, 86, 8600028, 3, '路凼填海区', '澳门特别行政区，路凼填海区', 820007, 2702);
INSERT INTO `sys_area` VALUES (8636609, 86, 8600028, 3, '大堂区', '澳门特别行政区，大堂区', 820004, 2703);
INSERT INTO `sys_area` VALUES (8636610, 86, 8600028, 3, '嘉模堂区', '澳门特别行政区，嘉模堂区', 820006, 2704);
INSERT INTO `sys_area` VALUES (8636611, 86, 8600028, 3, '望德堂区', '澳门特别行政区，望德堂区', 820003, 2705);
INSERT INTO `sys_area` VALUES (8636612, 86, 8600029, 2, '兰州市', '甘肃省，兰州市', 620100, 2706);
INSERT INTO `sys_area` VALUES (8636613, 86, 8600029, 2, '金昌市', '甘肃省，金昌市', 620300, 2707);
INSERT INTO `sys_area` VALUES (8636614, 86, 8600029, 2, '嘉峪关市', '甘肃省，嘉峪关市', 620200, 2708);
INSERT INTO `sys_area` VALUES (8636615, 86, 8600029, 2, '酒泉市', '甘肃省，酒泉市', 620900, 2709);
INSERT INTO `sys_area` VALUES (8636616, 86, 8600029, 2, '平凉市', '甘肃省，平凉市', 620800, 2710);
INSERT INTO `sys_area` VALUES (8636617, 86, 8600029, 2, '白银市', '甘肃省，白银市', 620400, 2711);
INSERT INTO `sys_area` VALUES (8636618, 86, 8600029, 2, '张掖市', '甘肃省，张掖市', 620700, 2712);
INSERT INTO `sys_area` VALUES (8636619, 86, 8600029, 2, '甘南藏族自治州', '甘肃省，甘南藏族自治州', 623000, 2713);
INSERT INTO `sys_area` VALUES (8636620, 86, 8600029, 2, '临夏回族自治州', '甘肃省，临夏回族自治州', 622900, 2714);
INSERT INTO `sys_area` VALUES (8636621, 86, 8600029, 2, '陇南市', '甘肃省，陇南市', 621200, 2715);
INSERT INTO `sys_area` VALUES (8636622, 86, 8600029, 2, '天水市', '甘肃省，天水市', 620500, 2716);
INSERT INTO `sys_area` VALUES (8636623, 86, 8600029, 2, '武威市', '甘肃省，武威市', 620600, 2717);
INSERT INTO `sys_area` VALUES (8636624, 86, 8600029, 2, '定西市', '甘肃省，定西市', 621100, 2718);
INSERT INTO `sys_area` VALUES (8636625, 86, 8600029, 2, '庆阳市', '甘肃省，庆阳市', 621000, 2719);
INSERT INTO `sys_area` VALUES (8636626, 86, 8636612, 3, '皋兰县', '甘肃省，兰州市，皋兰县', 620122, 2720);
INSERT INTO `sys_area` VALUES (8636627, 86, 8636612, 3, '红古区', '甘肃省，兰州市，红古区', 620111, 2721);
INSERT INTO `sys_area` VALUES (8636628, 86, 8636612, 3, '西固区', '甘肃省，兰州市，西固区', 620104, 2722);
INSERT INTO `sys_area` VALUES (8636629, 86, 8636612, 3, '永登县', '甘肃省，兰州市，永登县', 620121, 2723);
INSERT INTO `sys_area` VALUES (8636630, 86, 8636612, 3, '七里河区', '甘肃省，兰州市，七里河区', 620103, 2724);
INSERT INTO `sys_area` VALUES (8636631, 86, 8636612, 3, '榆中县', '甘肃省，兰州市，榆中县', 620123, 2725);
INSERT INTO `sys_area` VALUES (8636632, 86, 8636612, 3, '城关区', '甘肃省，兰州市，城关区', 620102, 2726);
INSERT INTO `sys_area` VALUES (8636633, 86, 8636612, 3, '安宁区', '甘肃省，兰州市，安宁区', 620105, 2727);
INSERT INTO `sys_area` VALUES (8636752, 86, 8636613, 3, '金川区', '甘肃省，金昌市，金川区', 620302, 2728);
INSERT INTO `sys_area` VALUES (8636753, 86, 8636613, 3, '永昌县', '甘肃省，金昌市，永昌县', 620321, 2729);
INSERT INTO `sys_area` VALUES (8636775, 86, 8636614, 3, '雄关区', '甘肃省，嘉峪关市，雄关区', 620200, 2730);
INSERT INTO `sys_area` VALUES (8636776, 86, 8636614, 3, '镜铁区', '甘肃省，嘉峪关市，镜铁区', 620200, 2731);
INSERT INTO `sys_area` VALUES (8636777, 86, 8636614, 3, '长城区', '甘肃省，嘉峪关市，长城区', 620200, 2732);
INSERT INTO `sys_area` VALUES (8636778, 86, 8636615, 3, '玉门市', '甘肃省，酒泉市，玉门市', 620981, 2733);
INSERT INTO `sys_area` VALUES (8636779, 86, 8636615, 3, '敦煌市', '甘肃省，酒泉市，敦煌市', 620982, 2734);
INSERT INTO `sys_area` VALUES (8636780, 86, 8636615, 3, '肃北蒙古族自治县', '甘肃省，酒泉市，肃北蒙古族自治县', 620923, 2735);
INSERT INTO `sys_area` VALUES (8636781, 86, 8636615, 3, '肃州区', '甘肃省，酒泉市，肃州区', 620902, 2736);
INSERT INTO `sys_area` VALUES (8636782, 86, 8636615, 3, '金塔县', '甘肃省，酒泉市，金塔县', 620921, 2737);
INSERT INTO `sys_area` VALUES (8636783, 86, 8636615, 3, '阿克塞哈萨克族自治县', '甘肃省，酒泉市，阿克塞哈萨克族自治县', 620924, 2738);
INSERT INTO `sys_area` VALUES (8636784, 86, 8636615, 3, '瓜州县', '甘肃省，酒泉市，瓜州县', 620922, 2739);
INSERT INTO `sys_area` VALUES (8636876, 86, 8636616, 3, '崆峒区', '甘肃省，平凉市，崆峒区', 620802, 2740);
INSERT INTO `sys_area` VALUES (8636877, 86, 8636616, 3, '灵台县', '甘肃省，平凉市，灵台县', 620822, 2741);
INSERT INTO `sys_area` VALUES (8636878, 86, 8636616, 3, '庄浪县', '甘肃省，平凉市，庄浪县', 620825, 2742);
INSERT INTO `sys_area` VALUES (8636879, 86, 8636616, 3, '崇信县', '甘肃省，平凉市，崇信县', 620823, 2743);
INSERT INTO `sys_area` VALUES (8636880, 86, 8636616, 3, '华亭县', '甘肃省，平凉市，华亭县', 620824, 2744);
INSERT INTO `sys_area` VALUES (8636881, 86, 8636616, 3, '静宁县', '甘肃省，平凉市，静宁县', 620826, 2745);
INSERT INTO `sys_area` VALUES (8636882, 86, 8636616, 3, '泾川县', '甘肃省，平凉市，泾川县', 620821, 2746);
INSERT INTO `sys_area` VALUES (8637003, 86, 8636617, 3, '靖远县', '甘肃省，白银市，靖远县', 620421, 2747);
INSERT INTO `sys_area` VALUES (8637004, 86, 8636617, 3, '白银区', '甘肃省，白银市，白银区', 620402, 2748);
INSERT INTO `sys_area` VALUES (8637005, 86, 8636617, 3, '平川区', '甘肃省，白银市，平川区', 620403, 2749);
INSERT INTO `sys_area` VALUES (8637006, 86, 8636617, 3, '景泰县', '甘肃省，白银市，景泰县', 620423, 2750);
INSERT INTO `sys_area` VALUES (8637007, 86, 8636617, 3, '会宁县', '甘肃省，白银市，会宁县', 620422, 2751);
INSERT INTO `sys_area` VALUES (8637087, 86, 8636618, 3, '高台县', '甘肃省，张掖市，高台县', 620724, 2752);
INSERT INTO `sys_area` VALUES (8637088, 86, 8636618, 3, '肃南裕固族自治县', '甘肃省，张掖市，肃南裕固族自治县', 620721, 2753);
INSERT INTO `sys_area` VALUES (8637089, 86, 8636618, 3, '临泽县', '甘肃省，张掖市，临泽县', 620723, 2754);
INSERT INTO `sys_area` VALUES (8637090, 86, 8636618, 3, '甘州区', '甘肃省，张掖市，甘州区', 620702, 2755);
INSERT INTO `sys_area` VALUES (8637091, 86, 8636618, 3, '山丹县', '甘肃省，张掖市，山丹县', 620725, 2756);
INSERT INTO `sys_area` VALUES (8637092, 86, 8636618, 3, '民乐县', '甘肃省，张掖市，民乐县', 620722, 2757);
INSERT INTO `sys_area` VALUES (8637174, 86, 8636619, 3, '舟曲县', '甘肃省，甘南藏族自治州，舟曲县', 623023, 2758);
INSERT INTO `sys_area` VALUES (8637175, 86, 8636619, 3, '夏河县', '甘肃省，甘南藏族自治州，夏河县', 623027, 2759);
INSERT INTO `sys_area` VALUES (8637176, 86, 8636619, 3, '迭部县', '甘肃省，甘南藏族自治州，迭部县', 623024, 2760);
INSERT INTO `sys_area` VALUES (8637177, 86, 8636619, 3, '玛曲县', '甘肃省，甘南藏族自治州，玛曲县', 623025, 2761);
INSERT INTO `sys_area` VALUES (8637178, 86, 8636619, 3, '碌曲县', '甘肃省，甘南藏族自治州，碌曲县', 623026, 2762);
INSERT INTO `sys_area` VALUES (8637179, 86, 8636619, 3, '合作市', '甘肃省，甘南藏族自治州，合作市', 623001, 2763);
INSERT INTO `sys_area` VALUES (8637180, 86, 8636619, 3, '临潭县', '甘肃省，甘南藏族自治州，临潭县', 623021, 2764);
INSERT INTO `sys_area` VALUES (8637181, 86, 8636619, 3, '卓尼县', '甘肃省，甘南藏族自治州，卓尼县', 623022, 2765);
INSERT INTO `sys_area` VALUES (8637286, 86, 8636620, 3, '永靖县', '甘肃省，临夏回族自治州，永靖县', 622923, 2766);
INSERT INTO `sys_area` VALUES (8637287, 86, 8636620, 3, '临夏县', '甘肃省，临夏回族自治州，临夏县', 622921, 2767);
INSERT INTO `sys_area` VALUES (8637288, 86, 8636620, 3, '东乡族自治县', '甘肃省，临夏回族自治州，东乡族自治县', 622926, 2768);
INSERT INTO `sys_area` VALUES (8637289, 86, 8636620, 3, '广河县', '甘肃省，临夏回族自治州，广河县', 622924, 2769);
INSERT INTO `sys_area` VALUES (8637290, 86, 8636620, 3, '康乐县', '甘肃省，临夏回族自治州，康乐县', 622922, 2770);
INSERT INTO `sys_area` VALUES (8637291, 86, 8636620, 3, '积石山保安族东乡族撒拉族自治县', '甘肃省，临夏回族自治州，积石山保安族东乡族撒拉族自治县', 622927, 2771);
INSERT INTO `sys_area` VALUES (8637292, 86, 8636620, 3, '临夏市', '甘肃省，临夏回族自治州，临夏市', 622901, 2772);
INSERT INTO `sys_area` VALUES (8637293, 86, 8636620, 3, '和政县', '甘肃省，临夏回族自治州，和政县', 622925, 2773);
INSERT INTO `sys_area` VALUES (8637424, 86, 8636621, 3, '成县', '甘肃省，陇南市，成县', 621221, 2774);
INSERT INTO `sys_area` VALUES (8637425, 86, 8636621, 3, '武都区', '甘肃省，陇南市，武都区', 621202, 2775);
INSERT INTO `sys_area` VALUES (8637426, 86, 8636621, 3, '礼县', '甘肃省，陇南市，礼县', 621226, 2776);
INSERT INTO `sys_area` VALUES (8637427, 86, 8636621, 3, '徽县', '甘肃省，陇南市，徽县', 621227, 2777);
INSERT INTO `sys_area` VALUES (8637428, 86, 8636621, 3, '宕昌县', '甘肃省，陇南市，宕昌县', 621223, 2778);
INSERT INTO `sys_area` VALUES (8637429, 86, 8636621, 3, '两当县', '甘肃省，陇南市，两当县', 621228, 2779);
INSERT INTO `sys_area` VALUES (8637430, 86, 8636621, 3, '康县', '甘肃省，陇南市，康县', 621224, 2780);
INSERT INTO `sys_area` VALUES (8637431, 86, 8636621, 3, '文县', '甘肃省，陇南市，文县', 621222, 2781);
INSERT INTO `sys_area` VALUES (8637432, 86, 8636621, 3, '西和县', '甘肃省，陇南市，西和县', 621225, 2782);
INSERT INTO `sys_area` VALUES (8637628, 86, 8636622, 3, '张家川回族自治县', '甘肃省，天水市，张家川回族自治县', 620525, 2783);
INSERT INTO `sys_area` VALUES (8637629, 86, 8636622, 3, '武山县', '甘肃省，天水市，武山县', 620524, 2784);
INSERT INTO `sys_area` VALUES (8637630, 86, 8636622, 3, '秦安县', '甘肃省，天水市，秦安县', 620522, 2785);
INSERT INTO `sys_area` VALUES (8637631, 86, 8636622, 3, '清水县', '甘肃省，天水市，清水县', 620521, 2786);
INSERT INTO `sys_area` VALUES (8637632, 86, 8636622, 3, '麦积区', '甘肃省，天水市，麦积区', 620503, 2787);
INSERT INTO `sys_area` VALUES (8637633, 86, 8636622, 3, '秦州区', '甘肃省，天水市，秦州区', 620502, 2788);
INSERT INTO `sys_area` VALUES (8637634, 86, 8636622, 3, '甘谷县', '甘肃省，天水市，甘谷县', 620523, 2789);
INSERT INTO `sys_area` VALUES (8637765, 86, 8636623, 3, '天祝藏族自治县', '甘肃省，武威市，天祝藏族自治县', 620623, 2790);
INSERT INTO `sys_area` VALUES (8637766, 86, 8636623, 3, '古浪县', '甘肃省，武威市，古浪县', 620622, 2791);
INSERT INTO `sys_area` VALUES (8637767, 86, 8636623, 3, '凉州区', '甘肃省，武威市，凉州区', 620602, 2792);
INSERT INTO `sys_area` VALUES (8637768, 86, 8636623, 3, '民勤县', '甘肃省，武威市，民勤县', 620621, 2793);
INSERT INTO `sys_area` VALUES (8637873, 86, 8636624, 3, '临洮县', '甘肃省，定西市，临洮县', 621124, 2794);
INSERT INTO `sys_area` VALUES (8637874, 86, 8636624, 3, '陇西县', '甘肃省，定西市，陇西县', 621122, 2795);
INSERT INTO `sys_area` VALUES (8637875, 86, 8636624, 3, '漳县', '甘肃省，定西市，漳县', 621125, 2796);
INSERT INTO `sys_area` VALUES (8637876, 86, 8636624, 3, '渭源县', '甘肃省，定西市，渭源县', 621123, 2797);
INSERT INTO `sys_area` VALUES (8637877, 86, 8636624, 3, '安定区', '甘肃省，定西市，安定区', 621102, 2798);
INSERT INTO `sys_area` VALUES (8637878, 86, 8636624, 3, '岷县', '甘肃省，定西市，岷县', 621126, 2799);
INSERT INTO `sys_area` VALUES (8637879, 86, 8636624, 3, '通渭县', '甘肃省，定西市，通渭县', 621121, 2800);
INSERT INTO `sys_area` VALUES (8638001, 86, 8636625, 3, '合水县', '甘肃省，庆阳市，合水县', 621024, 2801);
INSERT INTO `sys_area` VALUES (8638002, 86, 8636625, 3, '庆城县', '甘肃省，庆阳市，庆城县', 621021, 2802);
INSERT INTO `sys_area` VALUES (8638003, 86, 8636625, 3, '华池县', '甘肃省，庆阳市，华池县', 621023, 2803);
INSERT INTO `sys_area` VALUES (8638004, 86, 8636625, 3, '正宁县', '甘肃省，庆阳市，正宁县', 621025, 2804);
INSERT INTO `sys_area` VALUES (8638005, 86, 8636625, 3, '镇原县', '甘肃省，庆阳市，镇原县', 621027, 2805);
INSERT INTO `sys_area` VALUES (8638006, 86, 8636625, 3, '宁县', '甘肃省，庆阳市，宁县', 621026, 2806);
INSERT INTO `sys_area` VALUES (8638007, 86, 8636625, 3, '环县', '甘肃省，庆阳市，环县', 621022, 2807);
INSERT INTO `sys_area` VALUES (8638008, 86, 8636625, 3, '西峰区', '甘肃省，庆阳市，西峰区', 621002, 2808);
INSERT INTO `sys_area` VALUES (8638129, 86, 8600030, 2, '广元市', '四川省，广元市', 510800, 2809);
INSERT INTO `sys_area` VALUES (8638130, 86, 8600030, 2, '南充市', '四川省，南充市', 511300, 2810);
INSERT INTO `sys_area` VALUES (8638131, 86, 8600030, 2, '达州市', '四川省，达州市', 511700, 2811);
INSERT INTO `sys_area` VALUES (8638132, 86, 8600030, 2, '眉山市', '四川省，眉山市', 511400, 2812);
INSERT INTO `sys_area` VALUES (8638133, 86, 8600030, 2, '德阳市', '四川省，德阳市', 510600, 2813);
INSERT INTO `sys_area` VALUES (8638134, 86, 8600030, 2, '遂宁市', '四川省，遂宁市', 510900, 2814);
INSERT INTO `sys_area` VALUES (8638135, 86, 8600030, 2, '巴中市', '四川省，巴中市', 511900, 2815);
INSERT INTO `sys_area` VALUES (8638136, 86, 8600030, 2, '广安市', '四川省，广安市', 511600, 2816);
INSERT INTO `sys_area` VALUES (8638137, 86, 8600030, 2, '资阳市', '四川省，资阳市', 512000, 2817);
INSERT INTO `sys_area` VALUES (8638138, 86, 8600030, 2, '成都市', '四川省，成都市', 510100, 2818);
INSERT INTO `sys_area` VALUES (8638139, 86, 8600030, 2, '绵阳市', '四川省，绵阳市', 510700, 2819);
INSERT INTO `sys_area` VALUES (8638140, 86, 8600030, 2, '内江市', '四川省，内江市', 511000, 2820);
INSERT INTO `sys_area` VALUES (8638141, 86, 8600030, 2, '宜宾市', '四川省，宜宾市', 511500, 2821);
INSERT INTO `sys_area` VALUES (8638142, 86, 8600030, 2, '自贡市', '四川省，自贡市', 510300, 2822);
INSERT INTO `sys_area` VALUES (8638143, 86, 8600030, 2, '雅安市', '四川省，雅安市', 511800, 2823);
INSERT INTO `sys_area` VALUES (8638144, 86, 8600030, 2, '攀枝花市', '四川省，攀枝花市', 510400, 2824);
INSERT INTO `sys_area` VALUES (8638145, 86, 8600030, 2, '乐山市', '四川省，乐山市', 511100, 2825);
INSERT INTO `sys_area` VALUES (8638146, 86, 8600030, 2, '甘孜藏族自治州', '四川省，甘孜藏族自治州', 513300, 2826);
INSERT INTO `sys_area` VALUES (8638147, 86, 8600030, 2, '泸州市', '四川省，泸州市', 510500, 2827);
INSERT INTO `sys_area` VALUES (8638148, 86, 8600030, 2, '阿坝藏族羌族自治州', '四川省，阿坝藏族羌族自治州', 513200, 2828);
INSERT INTO `sys_area` VALUES (8638149, 86, 8600030, 2, '凉山彝族自治州', '四川省，凉山彝族自治州', 513400, 2829);
INSERT INTO `sys_area` VALUES (8638150, 86, 8638129, 3, '朝天区', '四川省，广元市，朝天区', 510812, 2830);
INSERT INTO `sys_area` VALUES (8638151, 86, 8638129, 3, '昭化区', '四川省，广元市，昭化区', 510811, 2831);
INSERT INTO `sys_area` VALUES (8638152, 86, 8638129, 3, '剑阁县', '四川省，广元市，剑阁县', 510823, 2832);
INSERT INTO `sys_area` VALUES (8638153, 86, 8638129, 3, '苍溪县', '四川省，广元市，苍溪县', 510824, 2833);
INSERT INTO `sys_area` VALUES (8638154, 86, 8638129, 3, '旺苍县', '四川省，广元市，旺苍县', 510821, 2834);
INSERT INTO `sys_area` VALUES (8638155, 86, 8638129, 3, '青川县', '四川省，广元市，青川县', 510822, 2835);
INSERT INTO `sys_area` VALUES (8638156, 86, 8638129, 3, '利州区', '四川省，广元市，利州区', 510802, 2836);
INSERT INTO `sys_area` VALUES (8638405, 86, 8638130, 3, '顺庆区', '四川省，南充市，顺庆区', 511302, 2837);
INSERT INTO `sys_area` VALUES (8638406, 86, 8638130, 3, '嘉陵区', '四川省，南充市，嘉陵区', 511304, 2838);
INSERT INTO `sys_area` VALUES (8638407, 86, 8638130, 3, '南部县', '四川省，南充市，南部县', 511321, 2839);
INSERT INTO `sys_area` VALUES (8638408, 86, 8638130, 3, '蓬安县', '四川省，南充市，蓬安县', 511323, 2840);
INSERT INTO `sys_area` VALUES (8638409, 86, 8638130, 3, '营山县', '四川省，南充市，营山县', 511322, 2841);
INSERT INTO `sys_area` VALUES (8638410, 86, 8638130, 3, '西充县', '四川省，南充市，西充县', 511325, 2842);
INSERT INTO `sys_area` VALUES (8638411, 86, 8638130, 3, '仪陇县', '四川省，南充市，仪陇县', 511324, 2843);
INSERT INTO `sys_area` VALUES (8638412, 86, 8638130, 3, '阆中市', '四川省，南充市，阆中市', 511381, 2844);
INSERT INTO `sys_area` VALUES (8638413, 86, 8638130, 3, '高坪区', '四川省，南充市，高坪区', 511303, 2845);
INSERT INTO `sys_area` VALUES (8638837, 86, 8638131, 3, '宣汉县', '四川省，达州市，宣汉县', 511722, 2846);
INSERT INTO `sys_area` VALUES (8638838, 86, 8638131, 3, '大竹县', '四川省，达州市，大竹县', 511724, 2847);
INSERT INTO `sys_area` VALUES (8638839, 86, 8638131, 3, '达川区', '四川省，达州市，达川区', 511703, 2848);
INSERT INTO `sys_area` VALUES (8638840, 86, 8638131, 3, '通川区', '四川省，达州市，通川区', 511702, 2849);
INSERT INTO `sys_area` VALUES (8638841, 86, 8638131, 3, '渠县', '四川省，达州市，渠县', 511725, 2850);
INSERT INTO `sys_area` VALUES (8638842, 86, 8638131, 3, '万源市', '四川省，达州市，万源市', 511781, 2851);
INSERT INTO `sys_area` VALUES (8638843, 86, 8638131, 3, '开江县', '四川省，达州市，开江县', 511723, 2852);
INSERT INTO `sys_area` VALUES (8639158, 86, 8638132, 3, '丹棱县', '四川省，眉山市，丹棱县', 511424, 2853);
INSERT INTO `sys_area` VALUES (8639159, 86, 8638132, 3, '仁寿县', '四川省，眉山市，仁寿县', 511421, 2854);
INSERT INTO `sys_area` VALUES (8639160, 86, 8638132, 3, '洪雅县', '四川省，眉山市，洪雅县', 511423, 2855);
INSERT INTO `sys_area` VALUES (8639161, 86, 8638132, 3, '青神县', '四川省，眉山市，青神县', 511425, 2856);
INSERT INTO `sys_area` VALUES (8639162, 86, 8638132, 3, '东坡区', '四川省，眉山市，东坡区', 511402, 2857);
INSERT INTO `sys_area` VALUES (8639163, 86, 8638132, 3, '彭山区', '四川省，眉山市，彭山区', 511403, 2858);
INSERT INTO `sys_area` VALUES (8639295, 86, 8638133, 3, '旌阳区', '四川省，德阳市，旌阳区', 510603, 2859);
INSERT INTO `sys_area` VALUES (8639296, 86, 8638133, 3, '中江县', '四川省，德阳市，中江县', 510623, 2860);
INSERT INTO `sys_area` VALUES (8639297, 86, 8638133, 3, '什邡市', '四川省，德阳市，什邡市', 510682, 2861);
INSERT INTO `sys_area` VALUES (8639298, 86, 8638133, 3, '广汉市', '四川省，德阳市，广汉市', 510681, 2862);
INSERT INTO `sys_area` VALUES (8639299, 86, 8638133, 3, '罗江区', '四川省，德阳市，罗江区', 510626, 2863);
INSERT INTO `sys_area` VALUES (8639300, 86, 8638133, 3, '绵竹市', '四川省，德阳市，绵竹市', 510683, 2864);
INSERT INTO `sys_area` VALUES (8639429, 86, 8638134, 3, '船山区', '四川省，遂宁市，船山区', 510903, 2865);
INSERT INTO `sys_area` VALUES (8639430, 86, 8638134, 3, '大英县', '四川省，遂宁市，大英县', 510923, 2866);
INSERT INTO `sys_area` VALUES (8639431, 86, 8638134, 3, '蓬溪县', '四川省，遂宁市，蓬溪县', 510921, 2867);
INSERT INTO `sys_area` VALUES (8639432, 86, 8638134, 3, '射洪县', '四川省，遂宁市，射洪县', 510922, 2868);
INSERT INTO `sys_area` VALUES (8639433, 86, 8638134, 3, '安居区', '四川省，遂宁市，安居区', 510904, 2869);
INSERT INTO `sys_area` VALUES (8639563, 86, 8638135, 3, '南江县', '四川省，巴中市，南江县', 511922, 2870);
INSERT INTO `sys_area` VALUES (8639564, 86, 8638135, 3, '通江县', '四川省，巴中市，通江县', 511921, 2871);
INSERT INTO `sys_area` VALUES (8639565, 86, 8638135, 3, '平昌县', '四川省，巴中市，平昌县', 511923, 2872);
INSERT INTO `sys_area` VALUES (8639566, 86, 8638135, 3, '巴州区', '四川省，巴中市，巴州区', 511902, 2873);
INSERT INTO `sys_area` VALUES (8639567, 86, 8638135, 3, '恩阳区', '四川省，巴中市，恩阳区', 511903, 2874);
INSERT INTO `sys_area` VALUES (8639763, 86, 8638136, 3, '邻水县', '四川省，广安市，邻水县', 511623, 2875);
INSERT INTO `sys_area` VALUES (8639764, 86, 8638136, 3, '武胜县', '四川省，广安市，武胜县', 511622, 2876);
INSERT INTO `sys_area` VALUES (8639765, 86, 8638136, 3, '广安区', '四川省，广安市，广安区', 511602, 2877);
INSERT INTO `sys_area` VALUES (8639766, 86, 8638136, 3, '岳池县', '四川省，广安市，岳池县', 511621, 2878);
INSERT INTO `sys_area` VALUES (8639767, 86, 8638136, 3, '前锋区', '四川省，广安市，前锋区', 511603, 2879);
INSERT INTO `sys_area` VALUES (8639768, 86, 8638136, 3, '华蓥市', '四川省，广安市，华蓥市', 511681, 2880);
INSERT INTO `sys_area` VALUES (8639950, 86, 8638137, 3, '雁江区', '四川省，资阳市，雁江区', 512002, 2881);
INSERT INTO `sys_area` VALUES (8639951, 86, 8638137, 3, '乐至县', '四川省，资阳市，乐至县', 512022, 2882);
INSERT INTO `sys_area` VALUES (8639952, 86, 8638137, 3, '安岳县', '四川省，资阳市，安岳县', 512021, 2883);
INSERT INTO `sys_area` VALUES (8640074, 86, 8638138, 3, '彭州市', '四川省，成都市，彭州市', 510182, 2884);
INSERT INTO `sys_area` VALUES (8640075, 86, 8638138, 3, '都江堰市', '四川省，成都市，都江堰市', 510181, 2885);
INSERT INTO `sys_area` VALUES (8640076, 86, 8638138, 3, '新都区', '四川省，成都市，新都区', 510114, 2886);
INSERT INTO `sys_area` VALUES (8640077, 86, 8638138, 3, '青白江区', '四川省，成都市，青白江区', 510113, 2887);
INSERT INTO `sys_area` VALUES (8640078, 86, 8638138, 3, '简阳市', '四川省，成都市，简阳市', 510185, 2888);
INSERT INTO `sys_area` VALUES (8640079, 86, 8638138, 3, '蒲江县', '四川省，成都市，蒲江县', 510131, 2889);
INSERT INTO `sys_area` VALUES (8640080, 86, 8638138, 3, '崇州市', '四川省，成都市，崇州市', 510184, 2890);
INSERT INTO `sys_area` VALUES (8640081, 86, 8638138, 3, '大邑县', '四川省，成都市，大邑县', 510129, 2891);
INSERT INTO `sys_area` VALUES (8640082, 86, 8638138, 3, '成华区', '四川省，成都市，成华区', 510108, 2892);
INSERT INTO `sys_area` VALUES (8640083, 86, 8638138, 3, '金堂县', '四川省，成都市，金堂县', 510121, 2893);
INSERT INTO `sys_area` VALUES (8640084, 86, 8638138, 3, '邛崃市', '四川省，成都市，邛崃市', 510183, 2894);
INSERT INTO `sys_area` VALUES (8640085, 86, 8638138, 3, '新津县', '四川省，成都市，新津县', 510132, 2895);
INSERT INTO `sys_area` VALUES (8640086, 86, 8638138, 3, '龙泉驿区', '四川省，成都市，龙泉驿区', 510112, 2896);
INSERT INTO `sys_area` VALUES (8640087, 86, 8638138, 3, '锦江区', '四川省，成都市，锦江区', 510104, 2897);
INSERT INTO `sys_area` VALUES (8640088, 86, 8638138, 3, '青羊区', '四川省，成都市，青羊区', 510105, 2898);
INSERT INTO `sys_area` VALUES (8640089, 86, 8638138, 3, '温江区', '四川省，成都市，温江区', 510115, 2899);
INSERT INTO `sys_area` VALUES (8640090, 86, 8638138, 3, '金牛区', '四川省，成都市，金牛区', 510106, 2900);
INSERT INTO `sys_area` VALUES (8640091, 86, 8638138, 3, '郫都区', '四川省，成都市，郫都区', 510117, 2901);
INSERT INTO `sys_area` VALUES (8640092, 86, 8638138, 3, '武侯区', '四川省，成都市，武侯区', 510107, 2902);
INSERT INTO `sys_area` VALUES (8640093, 86, 8638138, 3, '双流区', '四川省，成都市，双流区', 510116, 2903);
INSERT INTO `sys_area` VALUES (8640464, 86, 8638139, 3, '三台县', '四川省，绵阳市，三台县', 510722, 2904);
INSERT INTO `sys_area` VALUES (8640465, 86, 8638139, 3, '梓潼县', '四川省，绵阳市，梓潼县', 510725, 2905);
INSERT INTO `sys_area` VALUES (8640466, 86, 8638139, 3, '江油市', '四川省，绵阳市，江油市', 510781, 2906);
INSERT INTO `sys_area` VALUES (8640467, 86, 8638139, 3, '游仙区', '四川省，绵阳市，游仙区', 510704, 2907);
INSERT INTO `sys_area` VALUES (8640468, 86, 8638139, 3, '安州区', '四川省，绵阳市，安州区', 510705, 2908);
INSERT INTO `sys_area` VALUES (8640469, 86, 8638139, 3, '北川羌族自治县', '四川省，绵阳市，北川羌族自治县', 510726, 2909);
INSERT INTO `sys_area` VALUES (8640470, 86, 8638139, 3, '盐亭县', '四川省，绵阳市，盐亭县', 510723, 2910);
INSERT INTO `sys_area` VALUES (8640471, 86, 8638139, 3, '涪城区', '四川省，绵阳市，涪城区', 510703, 2911);
INSERT INTO `sys_area` VALUES (8640472, 86, 8638139, 3, '平武县', '四川省，绵阳市，平武县', 510727, 2912);
INSERT INTO `sys_area` VALUES (8640768, 86, 8638140, 3, '资中县', '四川省，内江市，资中县', 511025, 2913);
INSERT INTO `sys_area` VALUES (8640769, 86, 8638140, 3, '威远县', '四川省，内江市，威远县', 511024, 2914);
INSERT INTO `sys_area` VALUES (8640770, 86, 8638140, 3, '东兴区', '四川省，内江市，东兴区', 511011, 2915);
INSERT INTO `sys_area` VALUES (8640771, 86, 8638140, 3, '隆昌市', '四川省，内江市，隆昌市', 511083, 2916);
INSERT INTO `sys_area` VALUES (8640772, 86, 8638140, 3, '市中区', '四川省，内江市，市中区', 511002, 2917);
INSERT INTO `sys_area` VALUES (8640895, 86, 8638141, 3, '长宁县', '四川省，宜宾市，长宁县', 511524, 2918);
INSERT INTO `sys_area` VALUES (8640896, 86, 8638141, 3, '珙县', '四川省，宜宾市，珙县', 511526, 2919);
INSERT INTO `sys_area` VALUES (8640897, 86, 8638141, 3, '翠屏区', '四川省，宜宾市，翠屏区', 511502, 2920);
INSERT INTO `sys_area` VALUES (8640898, 86, 8638141, 3, '江安县', '四川省，宜宾市，江安县', 511523, 2921);
INSERT INTO `sys_area` VALUES (8640899, 86, 8638141, 3, '南溪区', '四川省，宜宾市，南溪区', 511503, 2922);
INSERT INTO `sys_area` VALUES (8640900, 86, 8638141, 3, '高县', '四川省，宜宾市，高县', 511525, 2923);
INSERT INTO `sys_area` VALUES (8640901, 86, 8638141, 3, '筠连县', '四川省，宜宾市，筠连县', 511527, 2924);
INSERT INTO `sys_area` VALUES (8640902, 86, 8638141, 3, '兴文县', '四川省，宜宾市，兴文县', 511528, 2925);
INSERT INTO `sys_area` VALUES (8640903, 86, 8638141, 3, '屏山县', '四川省，宜宾市，屏山县', 511529, 2926);
INSERT INTO `sys_area` VALUES (8640904, 86, 8638141, 3, '宜宾县', '四川省，宜宾市，宜宾县', 511521, 2927);
INSERT INTO `sys_area` VALUES (8641090, 86, 8638142, 3, '荣县', '四川省，自贡市，荣县', 510321, 2928);
INSERT INTO `sys_area` VALUES (8641091, 86, 8638142, 3, '贡井区', '四川省，自贡市，贡井区', 510303, 2929);
INSERT INTO `sys_area` VALUES (8641092, 86, 8638142, 3, '沿滩区', '四川省，自贡市，沿滩区', 510311, 2930);
INSERT INTO `sys_area` VALUES (8641093, 86, 8638142, 3, '富顺县', '四川省，自贡市，富顺县', 510322, 2931);
INSERT INTO `sys_area` VALUES (8641094, 86, 8638142, 3, '大安区', '四川省，自贡市，大安区', 510304, 2932);
INSERT INTO `sys_area` VALUES (8641095, 86, 8638142, 3, '自流井区', '四川省，自贡市，自流井区', 510302, 2933);
INSERT INTO `sys_area` VALUES (8641204, 86, 8638143, 3, '宝兴县', '四川省，雅安市，宝兴县', 511827, 2934);
INSERT INTO `sys_area` VALUES (8641205, 86, 8638143, 3, '雨城区', '四川省，雅安市，雨城区', 511802, 2935);
INSERT INTO `sys_area` VALUES (8641206, 86, 8638143, 3, '石棉县', '四川省，雅安市，石棉县', 511824, 2936);
INSERT INTO `sys_area` VALUES (8641207, 86, 8638143, 3, '汉源县', '四川省，雅安市，汉源县', 511823, 2937);
INSERT INTO `sys_area` VALUES (8641208, 86, 8638143, 3, '芦山县', '四川省，雅安市，芦山县', 511826, 2938);
INSERT INTO `sys_area` VALUES (8641209, 86, 8638143, 3, '天全县', '四川省，雅安市，天全县', 511825, 2939);
INSERT INTO `sys_area` VALUES (8641210, 86, 8638143, 3, '荥经县', '四川省，雅安市，荥经县', 511822, 2940);
INSERT INTO `sys_area` VALUES (8641211, 86, 8638143, 3, '名山区', '四川省，雅安市，名山区', 511803, 2941);
INSERT INTO `sys_area` VALUES (8641355, 86, 8638144, 3, '米易县', '四川省，攀枝花市，米易县', 510421, 2942);
INSERT INTO `sys_area` VALUES (8641356, 86, 8638144, 3, '西区', '四川省，攀枝花市，西区', 510403, 2943);
INSERT INTO `sys_area` VALUES (8641357, 86, 8638144, 3, '东区', '四川省，攀枝花市，东区', 510402, 2944);
INSERT INTO `sys_area` VALUES (8641358, 86, 8638144, 3, '仁和区', '四川省，攀枝花市，仁和区', 510411, 2945);
INSERT INTO `sys_area` VALUES (8641359, 86, 8638144, 3, '盐边县', '四川省，攀枝花市，盐边县', 510422, 2946);
INSERT INTO `sys_area` VALUES (8641420, 86, 8638145, 3, '五通桥区', '四川省，乐山市，五通桥区', 511112, 2947);
INSERT INTO `sys_area` VALUES (8641421, 86, 8638145, 3, '沙湾区', '四川省，乐山市，沙湾区', 511111, 2948);
INSERT INTO `sys_area` VALUES (8641422, 86, 8638145, 3, '井研县', '四川省，乐山市，井研县', 511124, 2949);
INSERT INTO `sys_area` VALUES (8641423, 86, 8638145, 3, '金口河区', '四川省，乐山市，金口河区', 511113, 2950);
INSERT INTO `sys_area` VALUES (8641424, 86, 8638145, 3, '峨边彝族自治县', '四川省，乐山市，峨边彝族自治县', 511132, 2951);
INSERT INTO `sys_area` VALUES (8641425, 86, 8638145, 3, '犍为县', '四川省，乐山市，犍为县', 511123, 2952);
INSERT INTO `sys_area` VALUES (8641426, 86, 8638145, 3, '夹江县', '四川省，乐山市，夹江县', 511126, 2953);
INSERT INTO `sys_area` VALUES (8641427, 86, 8638145, 3, '沐川县', '四川省，乐山市，沐川县', 511129, 2954);
INSERT INTO `sys_area` VALUES (8641428, 86, 8638145, 3, '马边彝族自治县', '四川省，乐山市，马边彝族自治县', 511133, 2955);
INSERT INTO `sys_area` VALUES (8641429, 86, 8638145, 3, '市中区', '四川省，乐山市，市中区', 511102, 2956);
INSERT INTO `sys_area` VALUES (8641430, 86, 8638145, 3, '峨眉山市', '四川省，乐山市，峨眉山市', 511181, 2957);
INSERT INTO `sys_area` VALUES (8641650, 86, 8638146, 3, '甘孜县', '四川省，甘孜藏族自治州，甘孜县', 513328, 2958);
INSERT INTO `sys_area` VALUES (8641651, 86, 8638146, 3, '德格县', '四川省，甘孜藏族自治州，德格县', 513330, 2959);
INSERT INTO `sys_area` VALUES (8641652, 86, 8638146, 3, '石渠县', '四川省，甘孜藏族自治州，石渠县', 513332, 2960);
INSERT INTO `sys_area` VALUES (8641653, 86, 8638146, 3, '炉霍县', '四川省，甘孜藏族自治州，炉霍县', 513327, 2961);
INSERT INTO `sys_area` VALUES (8641654, 86, 8638146, 3, '道孚县', '四川省，甘孜藏族自治州，道孚县', 513326, 2962);
INSERT INTO `sys_area` VALUES (8641655, 86, 8638146, 3, '新龙县', '四川省，甘孜藏族自治州，新龙县', 513329, 2963);
INSERT INTO `sys_area` VALUES (8641656, 86, 8638146, 3, '白玉县', '四川省，甘孜藏族自治州，白玉县', 513331, 2964);
INSERT INTO `sys_area` VALUES (8641657, 86, 8638146, 3, '雅江县', '四川省，甘孜藏族自治州，雅江县', 513325, 2965);
INSERT INTO `sys_area` VALUES (8641658, 86, 8638146, 3, '理塘县', '四川省，甘孜藏族自治州，理塘县', 513334, 2966);
INSERT INTO `sys_area` VALUES (8641659, 86, 8638146, 3, '九龙县', '四川省，甘孜藏族自治州，九龙县', 513324, 2967);
INSERT INTO `sys_area` VALUES (8641660, 86, 8638146, 3, '巴塘县', '四川省，甘孜藏族自治州，巴塘县', 513335, 2968);
INSERT INTO `sys_area` VALUES (8641661, 86, 8638146, 3, '康定市', '四川省，甘孜藏族自治州，康定市', 513301, 2969);
INSERT INTO `sys_area` VALUES (8641662, 86, 8638146, 3, '泸定县', '四川省，甘孜藏族自治州，泸定县', 513322, 2970);
INSERT INTO `sys_area` VALUES (8641663, 86, 8638146, 3, '乡城县', '四川省，甘孜藏族自治州，乡城县', 513336, 2971);
INSERT INTO `sys_area` VALUES (8641664, 86, 8638146, 3, '稻城县', '四川省，甘孜藏族自治州，稻城县', 513337, 2972);
INSERT INTO `sys_area` VALUES (8641665, 86, 8638146, 3, '得荣县', '四川省，甘孜藏族自治州，得荣县', 513338, 2973);
INSERT INTO `sys_area` VALUES (8641666, 86, 8638146, 3, '丹巴县', '四川省，甘孜藏族自治州，丹巴县', 513323, 2974);
INSERT INTO `sys_area` VALUES (8641667, 86, 8638146, 3, '色达县', '四川省，甘孜藏族自治州，色达县', 513333, 2975);
INSERT INTO `sys_area` VALUES (8641992, 86, 8638147, 3, '龙马潭区', '四川省，泸州市，龙马潭区', 510504, 2976);
INSERT INTO `sys_area` VALUES (8641993, 86, 8638147, 3, '叙永县', '四川省，泸州市，叙永县', 510524, 2977);
INSERT INTO `sys_area` VALUES (8641994, 86, 8638147, 3, '泸县', '四川省，泸州市，泸县', 510521, 2978);
INSERT INTO `sys_area` VALUES (8641995, 86, 8638147, 3, '纳溪区', '四川省，泸州市，纳溪区', 510503, 2979);
INSERT INTO `sys_area` VALUES (8641996, 86, 8638147, 3, '古蔺县', '四川省，泸州市，古蔺县', 510525, 2980);
INSERT INTO `sys_area` VALUES (8641997, 86, 8638147, 3, '江阳区', '四川省，泸州市，江阳区', 510502, 2981);
INSERT INTO `sys_area` VALUES (8641998, 86, 8638147, 3, '合江县', '四川省，泸州市，合江县', 510522, 2982);
INSERT INTO `sys_area` VALUES (8642149, 86, 8638148, 3, '阿坝县', '四川省，阿坝藏族羌族自治州，阿坝县', 513231, 2983);
INSERT INTO `sys_area` VALUES (8642150, 86, 8638148, 3, '九寨沟县', '四川省，阿坝藏族羌族自治州，九寨沟县', 513225, 2984);
INSERT INTO `sys_area` VALUES (8642151, 86, 8638148, 3, '红原县', '四川省，阿坝藏族羌族自治州，红原县', 513233, 2985);
INSERT INTO `sys_area` VALUES (8642152, 86, 8638148, 3, '若尔盖县', '四川省，阿坝藏族羌族自治州，若尔盖县', 513232, 2986);
INSERT INTO `sys_area` VALUES (8642153, 86, 8638148, 3, '黑水县', '四川省，阿坝藏族羌族自治州，黑水县', 513228, 2987);
INSERT INTO `sys_area` VALUES (8642154, 86, 8638148, 3, '理县', '四川省，阿坝藏族羌族自治州，理县', 513222, 2988);
INSERT INTO `sys_area` VALUES (8642155, 86, 8638148, 3, '马尔康市', '四川省，阿坝藏族羌族自治州，马尔康市', 513201, 2989);
INSERT INTO `sys_area` VALUES (8642156, 86, 8638148, 3, '汶川县', '四川省，阿坝藏族羌族自治州，汶川县', 513221, 2990);
INSERT INTO `sys_area` VALUES (8642157, 86, 8638148, 3, '金川县', '四川省，阿坝藏族羌族自治州，金川县', 513226, 2991);
INSERT INTO `sys_area` VALUES (8642158, 86, 8638148, 3, '茂县', '四川省，阿坝藏族羌族自治州，茂县', 513223, 2992);
INSERT INTO `sys_area` VALUES (8642159, 86, 8638148, 3, '松潘县', '四川省，阿坝藏族羌族自治州，松潘县', 513224, 2993);
INSERT INTO `sys_area` VALUES (8642160, 86, 8638148, 3, '壤塘县', '四川省，阿坝藏族羌族自治州，壤塘县', 513230, 2994);
INSERT INTO `sys_area` VALUES (8642161, 86, 8638148, 3, '小金县', '四川省，阿坝藏族羌族自治州，小金县', 513227, 2995);
INSERT INTO `sys_area` VALUES (8642388, 86, 8638149, 3, '木里藏族自治县', '四川省，凉山彝族自治州，木里藏族自治县', 513422, 2996);
INSERT INTO `sys_area` VALUES (8642389, 86, 8638149, 3, '喜德县', '四川省，凉山彝族自治州，喜德县', 513432, 2997);
INSERT INTO `sys_area` VALUES (8642390, 86, 8638149, 3, '西昌市', '四川省，凉山彝族自治州，西昌市', 513401, 2998);
INSERT INTO `sys_area` VALUES (8642391, 86, 8638149, 3, '会理县', '四川省，凉山彝族自治州，会理县', 513425, 2999);
INSERT INTO `sys_area` VALUES (8642392, 86, 8638149, 3, '布拖县', '四川省，凉山彝族自治州，布拖县', 513429, 3000);
INSERT INTO `sys_area` VALUES (8642393, 86, 8638149, 3, '甘洛县', '四川省，凉山彝族自治州，甘洛县', 513435, 3001);
INSERT INTO `sys_area` VALUES (8642394, 86, 8638149, 3, '美姑县', '四川省，凉山彝族自治州，美姑县', 513436, 3002);
INSERT INTO `sys_area` VALUES (8642395, 86, 8638149, 3, '昭觉县', '四川省，凉山彝族自治州，昭觉县', 513431, 3003);
INSERT INTO `sys_area` VALUES (8642396, 86, 8638149, 3, '金阳县', '四川省，凉山彝族自治州，金阳县', 513430, 3004);
INSERT INTO `sys_area` VALUES (8642397, 86, 8638149, 3, '盐源县', '四川省，凉山彝族自治州，盐源县', 513423, 3005);
INSERT INTO `sys_area` VALUES (8642398, 86, 8638149, 3, '冕宁县', '四川省，凉山彝族自治州，冕宁县', 513433, 3006);
INSERT INTO `sys_area` VALUES (8642399, 86, 8638149, 3, '越西县', '四川省，凉山彝族自治州，越西县', 513434, 3007);
INSERT INTO `sys_area` VALUES (8642400, 86, 8638149, 3, '会东县', '四川省，凉山彝族自治州，会东县', 513426, 3008);
INSERT INTO `sys_area` VALUES (8642401, 86, 8638149, 3, '普格县', '四川省，凉山彝族自治州，普格县', 513428, 3009);
INSERT INTO `sys_area` VALUES (8642402, 86, 8638149, 3, '雷波县', '四川省，凉山彝族自治州，雷波县', 513437, 3010);
INSERT INTO `sys_area` VALUES (8642403, 86, 8638149, 3, '宁南县', '四川省，凉山彝族自治州，宁南县', 513427, 3011);
INSERT INTO `sys_area` VALUES (8642404, 86, 8638149, 3, '德昌县', '四川省，凉山彝族自治州，德昌县', 513424, 3012);
INSERT INTO `sys_area` VALUES (8642980, 86, 8600031, 2, '昭通市', '云南省，昭通市', 530600, 3013);
INSERT INTO `sys_area` VALUES (8642981, 86, 8600031, 2, '曲靖市', '云南省，曲靖市', 530300, 3014);
INSERT INTO `sys_area` VALUES (8642982, 86, 8600031, 2, '红河哈尼族彝族自治州', '云南省，红河哈尼族彝族自治州', 532500, 3015);
INSERT INTO `sys_area` VALUES (8642983, 86, 8600031, 2, '丽江市', '云南省，丽江市', 530700, 3016);
INSERT INTO `sys_area` VALUES (8642984, 86, 8600031, 2, '西双版纳傣族自治州', '云南省，西双版纳傣族自治州', 532800, 3017);
INSERT INTO `sys_area` VALUES (8642985, 86, 8600031, 2, '保山市', '云南省，保山市', 530500, 3018);
INSERT INTO `sys_area` VALUES (8642986, 86, 8600031, 2, '文山壮族苗族自治州', '云南省，文山壮族苗族自治州', 532600, 3019);
INSERT INTO `sys_area` VALUES (8642987, 86, 8600031, 2, '大理白族自治州', '云南省，大理白族自治州', 532900, 3020);
INSERT INTO `sys_area` VALUES (8642988, 86, 8600031, 2, '怒江傈僳族自治州', '云南省，怒江傈僳族自治州', 533300, 3021);
INSERT INTO `sys_area` VALUES (8642989, 86, 8600031, 2, '迪庆藏族自治州', '云南省，迪庆藏族自治州', 533400, 3022);
INSERT INTO `sys_area` VALUES (8642990, 86, 8600031, 2, '玉溪市', '云南省，玉溪市', 530400, 3023);
INSERT INTO `sys_area` VALUES (8642991, 86, 8600031, 2, '普洱市', '云南省，普洱市', 530800, 3024);
INSERT INTO `sys_area` VALUES (8642992, 86, 8600031, 2, '昆明市', '云南省，昆明市', 530100, 3025);
INSERT INTO `sys_area` VALUES (8642993, 86, 8600031, 2, '楚雄彝族自治州', '云南省，楚雄彝族自治州', 532300, 3026);
INSERT INTO `sys_area` VALUES (8642994, 86, 8600031, 2, '德宏傣族景颇族自治州', '云南省，德宏傣族景颇族自治州', 533100, 3027);
INSERT INTO `sys_area` VALUES (8642995, 86, 8600031, 2, '临沧市', '云南省，临沧市', 530900, 3028);
INSERT INTO `sys_area` VALUES (8642996, 86, 8642980, 3, '大关县', '云南省，昭通市，大关县', 530624, 3029);
INSERT INTO `sys_area` VALUES (8642997, 86, 8642980, 3, '水富县', '云南省，昭通市，水富县', 530630, 3030);
INSERT INTO `sys_area` VALUES (8642998, 86, 8642980, 3, '绥江县', '云南省，昭通市，绥江县', 530626, 3031);
INSERT INTO `sys_area` VALUES (8642999, 86, 8642980, 3, '永善县', '云南省，昭通市，永善县', 530625, 3032);
INSERT INTO `sys_area` VALUES (8643000, 86, 8642980, 3, '威信县', '云南省，昭通市，威信县', 530629, 3033);
INSERT INTO `sys_area` VALUES (8643001, 86, 8642980, 3, '巧家县', '云南省，昭通市，巧家县', 530622, 3034);
INSERT INTO `sys_area` VALUES (8643002, 86, 8642980, 3, '昭阳区', '云南省，昭通市，昭阳区', 530602, 3035);
INSERT INTO `sys_area` VALUES (8643003, 86, 8642980, 3, '镇雄县', '云南省，昭通市，镇雄县', 530627, 3036);
INSERT INTO `sys_area` VALUES (8643004, 86, 8642980, 3, '鲁甸县', '云南省，昭通市，鲁甸县', 530621, 3037);
INSERT INTO `sys_area` VALUES (8643005, 86, 8642980, 3, '彝良县', '云南省，昭通市，彝良县', 530628, 3038);
INSERT INTO `sys_area` VALUES (8643006, 86, 8642980, 3, '盐津县', '云南省，昭通市，盐津县', 530623, 3039);
INSERT INTO `sys_area` VALUES (8643151, 86, 8642981, 3, '会泽县', '云南省，曲靖市，会泽县', 530326, 3040);
INSERT INTO `sys_area` VALUES (8643152, 86, 8642981, 3, '沾益区', '云南省，曲靖市，沾益区', 530303, 3041);
INSERT INTO `sys_area` VALUES (8643153, 86, 8642981, 3, '麒麟区', '云南省，曲靖市，麒麟区', 530302, 3042);
INSERT INTO `sys_area` VALUES (8643154, 86, 8642981, 3, '马龙县', '云南省，曲靖市，马龙县', 530321, 3043);
INSERT INTO `sys_area` VALUES (8643155, 86, 8642981, 3, '罗平县', '云南省，曲靖市，罗平县', 530324, 3044);
INSERT INTO `sys_area` VALUES (8643156, 86, 8642981, 3, '陆良县', '云南省，曲靖市，陆良县', 530322, 3045);
INSERT INTO `sys_area` VALUES (8643157, 86, 8642981, 3, '师宗县', '云南省，曲靖市，师宗县', 530323, 3046);
INSERT INTO `sys_area` VALUES (8643158, 86, 8642981, 3, '富源县', '云南省，曲靖市，富源县', 530325, 3047);
INSERT INTO `sys_area` VALUES (8643159, 86, 8642981, 3, '宣威市', '云南省，曲靖市，宣威市', 530381, 3048);
INSERT INTO `sys_area` VALUES (8643284, 86, 8642982, 3, '弥勒市', '云南省，红河哈尼族彝族自治州，弥勒市', 532504, 3049);
INSERT INTO `sys_area` VALUES (8643285, 86, 8642982, 3, '泸西县', '云南省，红河哈尼族彝族自治州，泸西县', 532527, 3050);
INSERT INTO `sys_area` VALUES (8643286, 86, 8642982, 3, '建水县', '云南省，红河哈尼族彝族自治州，建水县', 532524, 3051);
INSERT INTO `sys_area` VALUES (8643287, 86, 8642982, 3, '开远市', '云南省，红河哈尼族彝族自治州，开远市', 532502, 3052);
INSERT INTO `sys_area` VALUES (8643288, 86, 8642982, 3, '石屏县', '云南省，红河哈尼族彝族自治州，石屏县', 532525, 3053);
INSERT INTO `sys_area` VALUES (8643289, 86, 8642982, 3, '个旧市', '云南省，红河哈尼族彝族自治州，个旧市', 532501, 3054);
INSERT INTO `sys_area` VALUES (8643290, 86, 8642982, 3, '屏边苗族自治县', '云南省，红河哈尼族彝族自治州，屏边苗族自治县', 532523, 3055);
INSERT INTO `sys_area` VALUES (8643291, 86, 8642982, 3, '红河县', '云南省，红河哈尼族彝族自治州，红河县', 532529, 3056);
INSERT INTO `sys_area` VALUES (8643292, 86, 8642982, 3, '元阳县', '云南省，红河哈尼族彝族自治州，元阳县', 532528, 3057);
INSERT INTO `sys_area` VALUES (8643293, 86, 8642982, 3, '蒙自市', '云南省，红河哈尼族彝族自治州，蒙自市', 532503, 3058);
INSERT INTO `sys_area` VALUES (8643294, 86, 8642982, 3, '河口瑶族自治县', '云南省，红河哈尼族彝族自治州，河口瑶族自治县', 532532, 3059);
INSERT INTO `sys_area` VALUES (8643295, 86, 8642982, 3, '绿春县', '云南省，红河哈尼族彝族自治州，绿春县', 532531, 3060);
INSERT INTO `sys_area` VALUES (8643296, 86, 8642982, 3, '金平苗族瑶族傣族自治县', '云南省，红河哈尼族彝族自治州，金平苗族瑶族傣族自治县', 532530, 3061);
INSERT INTO `sys_area` VALUES (8643430, 86, 8642983, 3, '玉龙纳西族自治县', '云南省，丽江市，玉龙纳西族自治县', 530721, 3062);
INSERT INTO `sys_area` VALUES (8643431, 86, 8642983, 3, '宁蒗彝族自治县', '云南省，丽江市，宁蒗彝族自治县', 530724, 3063);
INSERT INTO `sys_area` VALUES (8643432, 86, 8642983, 3, '华坪县', '云南省，丽江市，华坪县', 530723, 3064);
INSERT INTO `sys_area` VALUES (8643433, 86, 8642983, 3, '古城区', '云南省，丽江市，古城区', 530702, 3065);
INSERT INTO `sys_area` VALUES (8643434, 86, 8642983, 3, '永胜县', '云南省，丽江市，永胜县', 530722, 3066);
INSERT INTO `sys_area` VALUES (8643498, 86, 8642984, 3, '景洪市', '云南省，西双版纳傣族自治州，景洪市', 532801, 3067);
INSERT INTO `sys_area` VALUES (8643499, 86, 8642984, 3, '勐腊县', '云南省，西双版纳傣族自治州，勐腊县', 532823, 3068);
INSERT INTO `sys_area` VALUES (8643500, 86, 8642984, 3, '勐海县', '云南省，西双版纳傣族自治州，勐海县', 532822, 3069);
INSERT INTO `sys_area` VALUES (8643546, 86, 8642985, 3, '隆阳区', '云南省，保山市，隆阳区', 530502, 3070);
INSERT INTO `sys_area` VALUES (8643547, 86, 8642985, 3, '腾冲市', '云南省，保山市，腾冲市', 530581, 3071);
INSERT INTO `sys_area` VALUES (8643548, 86, 8642985, 3, '昌宁县', '云南省，保山市，昌宁县', 530524, 3072);
INSERT INTO `sys_area` VALUES (8643549, 86, 8642985, 3, '施甸县', '云南省，保山市，施甸县', 530521, 3073);
INSERT INTO `sys_area` VALUES (8643550, 86, 8642985, 3, '龙陵县', '云南省，保山市，龙陵县', 530523, 3074);
INSERT INTO `sys_area` VALUES (8643626, 86, 8642986, 3, '丘北县', '云南省，文山壮族苗族自治州，丘北县', 532626, 3075);
INSERT INTO `sys_area` VALUES (8643627, 86, 8642986, 3, '广南县', '云南省，文山壮族苗族自治州，广南县', 532627, 3076);
INSERT INTO `sys_area` VALUES (8643628, 86, 8642986, 3, '文山市', '云南省，文山壮族苗族自治州，文山市', 532601, 3077);
INSERT INTO `sys_area` VALUES (8643629, 86, 8642986, 3, '砚山县', '云南省，文山壮族苗族自治州，砚山县', 532622, 3078);
INSERT INTO `sys_area` VALUES (8643630, 86, 8642986, 3, '西畴县', '云南省，文山壮族苗族自治州，西畴县', 532623, 3079);
INSERT INTO `sys_area` VALUES (8643631, 86, 8642986, 3, '马关县', '云南省，文山壮族苗族自治州，马关县', 532625, 3080);
INSERT INTO `sys_area` VALUES (8643632, 86, 8642986, 3, '麻栗坡县', '云南省，文山壮族苗族自治州，麻栗坡县', 532624, 3081);
INSERT INTO `sys_area` VALUES (8643633, 86, 8642986, 3, '富宁县', '云南省，文山壮族苗族自治州，富宁县', 532628, 3082);
INSERT INTO `sys_area` VALUES (8643741, 86, 8642987, 3, '剑川县', '云南省，大理白族自治州，剑川县', 532931, 3083);
INSERT INTO `sys_area` VALUES (8643742, 86, 8642987, 3, '鹤庆县', '云南省，大理白族自治州，鹤庆县', 532932, 3084);
INSERT INTO `sys_area` VALUES (8643743, 86, 8642987, 3, '大理市', '云南省，大理白族自治州，大理市', 532901, 3085);
INSERT INTO `sys_area` VALUES (8643744, 86, 8642987, 3, '洱源县', '云南省，大理白族自治州，洱源县', 532930, 3086);
INSERT INTO `sys_area` VALUES (8643745, 86, 8642987, 3, '宾川县', '云南省，大理白族自治州，宾川县', 532924, 3087);
INSERT INTO `sys_area` VALUES (8643746, 86, 8642987, 3, '云龙县', '云南省，大理白族自治州，云龙县', 532929, 3088);
INSERT INTO `sys_area` VALUES (8643747, 86, 8642987, 3, '祥云县', '云南省，大理白族自治州，祥云县', 532923, 3089);
INSERT INTO `sys_area` VALUES (8643748, 86, 8642987, 3, '漾濞彝族自治县', '云南省，大理白族自治州，漾濞彝族自治县', 532922, 3090);
INSERT INTO `sys_area` VALUES (8643749, 86, 8642987, 3, '巍山彝族回族自治县', '云南省，大理白族自治州，巍山彝族回族自治县', 532927, 3091);
INSERT INTO `sys_area` VALUES (8643750, 86, 8642987, 3, '永平县', '云南省，大理白族自治州，永平县', 532928, 3092);
INSERT INTO `sys_area` VALUES (8643751, 86, 8642987, 3, '弥渡县', '云南省，大理白族自治州，弥渡县', 532925, 3093);
INSERT INTO `sys_area` VALUES (8643752, 86, 8642987, 3, '南涧彝族自治县', '云南省，大理白族自治州，南涧彝族自治县', 532926, 3094);
INSERT INTO `sys_area` VALUES (8643865, 86, 8642988, 3, '贡山独龙族怒族自治县', '云南省，怒江傈僳族自治州，贡山独龙族怒族自治县', 533324, 3095);
INSERT INTO `sys_area` VALUES (8643866, 86, 8642988, 3, '福贡县', '云南省，怒江傈僳族自治州，福贡县', 533323, 3096);
INSERT INTO `sys_area` VALUES (8643867, 86, 8642988, 3, '兰坪白族普米族自治县', '云南省，怒江傈僳族自治州，兰坪白族普米族自治县', 533325, 3097);
INSERT INTO `sys_area` VALUES (8643868, 86, 8642988, 3, '泸水市', '云南省，怒江傈僳族自治州，泸水市', 533301, 3098);
INSERT INTO `sys_area` VALUES (8643898, 86, 8642989, 3, '德钦县', '云南省，迪庆藏族自治州，德钦县', 533422, 3099);
INSERT INTO `sys_area` VALUES (8643899, 86, 8642989, 3, '香格里拉市', '云南省，迪庆藏族自治州，香格里拉市', 533401, 3100);
INSERT INTO `sys_area` VALUES (8643900, 86, 8642989, 3, '维西傈僳族自治县', '云南省，迪庆藏族自治州，维西傈僳族自治县', 533423, 3101);
INSERT INTO `sys_area` VALUES (8643930, 86, 8642990, 3, '澄江县', '云南省，玉溪市，澄江县', 530422, 3102);
INSERT INTO `sys_area` VALUES (8643931, 86, 8642990, 3, '易门县', '云南省，玉溪市，易门县', 530425, 3103);
INSERT INTO `sys_area` VALUES (8643932, 86, 8642990, 3, '峨山彝族自治县', '云南省，玉溪市，峨山彝族自治县', 530426, 3104);
INSERT INTO `sys_area` VALUES (8643933, 86, 8642990, 3, '华宁县', '云南省，玉溪市，华宁县', 530424, 3105);
INSERT INTO `sys_area` VALUES (8643934, 86, 8642990, 3, '红塔区', '云南省，玉溪市，红塔区', 530402, 3106);
INSERT INTO `sys_area` VALUES (8643935, 86, 8642990, 3, '新平彝族傣族自治县', '云南省，玉溪市，新平彝族傣族自治县', 530427, 3107);
INSERT INTO `sys_area` VALUES (8643936, 86, 8642990, 3, '元江哈尼族彝族傣族自治县', '云南省，玉溪市，元江哈尼族彝族傣族自治县', 530428, 3108);
INSERT INTO `sys_area` VALUES (8643937, 86, 8642990, 3, '江川区', '云南省，玉溪市，江川区', 530403, 3109);
INSERT INTO `sys_area` VALUES (8643938, 86, 8642990, 3, '通海县', '云南省，玉溪市，通海县', 530423, 3110);
INSERT INTO `sys_area` VALUES (8644014, 86, 8642991, 3, '景东彝族自治县', '云南省，普洱市，景东彝族自治县', 530823, 3111);
INSERT INTO `sys_area` VALUES (8644015, 86, 8642991, 3, '景谷傣族彝族自治县', '云南省，普洱市，景谷傣族彝族自治县', 530824, 3112);
INSERT INTO `sys_area` VALUES (8644016, 86, 8642991, 3, '镇沅彝族哈尼族拉祜族自治县', '云南省，普洱市，镇沅彝族哈尼族拉祜族自治县', 530825, 3113);
INSERT INTO `sys_area` VALUES (8644017, 86, 8642991, 3, '墨江哈尼族自治县', '云南省，普洱市，墨江哈尼族自治县', 530822, 3114);
INSERT INTO `sys_area` VALUES (8644018, 86, 8642991, 3, '宁洱哈尼族彝族自治县', '云南省，普洱市，宁洱哈尼族彝族自治县', 530821, 3115);
INSERT INTO `sys_area` VALUES (8644019, 86, 8642991, 3, '澜沧拉祜族自治县', '云南省，普洱市，澜沧拉祜族自治县', 530828, 3116);
INSERT INTO `sys_area` VALUES (8644020, 86, 8642991, 3, '西盟佤族自治县', '云南省，普洱市，西盟佤族自治县', 530829, 3117);
INSERT INTO `sys_area` VALUES (8644021, 86, 8642991, 3, '思茅区', '云南省，普洱市，思茅区', 530802, 3118);
INSERT INTO `sys_area` VALUES (8644022, 86, 8642991, 3, '江城哈尼族彝族自治县', '云南省，普洱市，江城哈尼族彝族自治县', 530826, 3119);
INSERT INTO `sys_area` VALUES (8644023, 86, 8642991, 3, '孟连傣族拉祜族佤族自治县', '云南省，普洱市，孟连傣族拉祜族佤族自治县', 530827, 3120);
INSERT INTO `sys_area` VALUES (8644127, 86, 8642992, 3, '东川区', '云南省，昆明市，东川区', 530113, 3121);
INSERT INTO `sys_area` VALUES (8644128, 86, 8642992, 3, '寻甸回族彝族自治县', '云南省，昆明市，寻甸回族彝族自治县', 530129, 3122);
INSERT INTO `sys_area` VALUES (8644129, 86, 8642992, 3, '西山区', '云南省，昆明市，西山区', 530112, 3123);
INSERT INTO `sys_area` VALUES (8644130, 86, 8642992, 3, '宜良县', '云南省，昆明市，宜良县', 530125, 3124);
INSERT INTO `sys_area` VALUES (8644131, 86, 8642992, 3, '五华区', '云南省，昆明市，五华区', 530102, 3125);
INSERT INTO `sys_area` VALUES (8644132, 86, 8642992, 3, '石林彝族自治县', '云南省，昆明市，石林彝族自治县', 530126, 3126);
INSERT INTO `sys_area` VALUES (8644133, 86, 8642992, 3, '呈贡区', '云南省，昆明市，呈贡区', 530114, 3127);
INSERT INTO `sys_area` VALUES (8644134, 86, 8642992, 3, '晋宁区', '云南省，昆明市，晋宁区', 530115, 3128);
INSERT INTO `sys_area` VALUES (8644135, 86, 8642992, 3, '禄劝彝族苗族自治县', '云南省，昆明市，禄劝彝族苗族自治县', 530128, 3129);
INSERT INTO `sys_area` VALUES (8644136, 86, 8642992, 3, '富民县', '云南省，昆明市，富民县', 530124, 3130);
INSERT INTO `sys_area` VALUES (8644137, 86, 8642992, 3, '安宁市', '云南省，昆明市，安宁市', 530181, 3131);
INSERT INTO `sys_area` VALUES (8644138, 86, 8642992, 3, '官渡区', '云南省，昆明市，官渡区', 530111, 3132);
INSERT INTO `sys_area` VALUES (8644139, 86, 8642992, 3, '嵩明县', '云南省，昆明市，嵩明县', 530127, 3133);
INSERT INTO `sys_area` VALUES (8644140, 86, 8642992, 3, '盘龙区', '云南省，昆明市，盘龙区', 530103, 3134);
INSERT INTO `sys_area` VALUES (8644275, 86, 8642993, 3, '元谋县', '云南省，楚雄彝族自治州，元谋县', 532328, 3135);
INSERT INTO `sys_area` VALUES (8644276, 86, 8642993, 3, '姚安县', '云南省，楚雄彝族自治州，姚安县', 532325, 3136);
INSERT INTO `sys_area` VALUES (8644277, 86, 8642993, 3, '牟定县', '云南省，楚雄彝族自治州，牟定县', 532323, 3137);
INSERT INTO `sys_area` VALUES (8644278, 86, 8642993, 3, '大姚县', '云南省，楚雄彝族自治州，大姚县', 532326, 3138);
INSERT INTO `sys_area` VALUES (8644279, 86, 8642993, 3, '南华县', '云南省，楚雄彝族自治州，南华县', 532324, 3139);
INSERT INTO `sys_area` VALUES (8644280, 86, 8642993, 3, '禄丰县', '云南省，楚雄彝族自治州，禄丰县', 532331, 3140);
INSERT INTO `sys_area` VALUES (8644281, 86, 8642993, 3, '楚雄市', '云南省，楚雄彝族自治州，楚雄市', 532301, 3141);
INSERT INTO `sys_area` VALUES (8644282, 86, 8642993, 3, '双柏县', '云南省，楚雄彝族自治州，双柏县', 532322, 3142);
INSERT INTO `sys_area` VALUES (8644283, 86, 8642993, 3, '武定县', '云南省，楚雄彝族自治州，武定县', 532329, 3143);
INSERT INTO `sys_area` VALUES (8644284, 86, 8642993, 3, '永仁县', '云南省，楚雄彝族自治州，永仁县', 532327, 3144);
INSERT INTO `sys_area` VALUES (8644388, 86, 8642994, 3, '盈江县', '云南省，德宏傣族景颇族自治州，盈江县', 533123, 3145);
INSERT INTO `sys_area` VALUES (8644389, 86, 8642994, 3, '梁河县', '云南省，德宏傣族景颇族自治州，梁河县', 533122, 3146);
INSERT INTO `sys_area` VALUES (8644390, 86, 8642994, 3, '芒市', '云南省，德宏傣族景颇族自治州，芒市', 533103, 3147);
INSERT INTO `sys_area` VALUES (8644391, 86, 8642994, 3, '陇川县', '云南省，德宏傣族景颇族自治州，陇川县', 533124, 3148);
INSERT INTO `sys_area` VALUES (8644392, 86, 8642994, 3, '瑞丽市', '云南省，德宏傣族景颇族自治州，瑞丽市', 533102, 3149);
INSERT INTO `sys_area` VALUES (8644444, 86, 8642995, 3, '凤庆县', '云南省，临沧市，凤庆县', 530921, 3150);
INSERT INTO `sys_area` VALUES (8644445, 86, 8642995, 3, '云县', '云南省，临沧市，云县', 530922, 3151);
INSERT INTO `sys_area` VALUES (8644446, 86, 8642995, 3, '镇康县', '云南省，临沧市，镇康县', 530924, 3152);
INSERT INTO `sys_area` VALUES (8644447, 86, 8642995, 3, '临翔区', '云南省，临沧市，临翔区', 530902, 3153);
INSERT INTO `sys_area` VALUES (8644448, 86, 8642995, 3, '永德县', '云南省，临沧市，永德县', 530923, 3154);
INSERT INTO `sys_area` VALUES (8644449, 86, 8642995, 3, '耿马傣族佤族自治县', '云南省，临沧市，耿马傣族佤族自治县', 530926, 3155);
INSERT INTO `sys_area` VALUES (8644450, 86, 8642995, 3, '双江拉祜族佤族布朗族傣族自治县', '云南省，临沧市，双江拉祜族佤族布朗族傣族自治县', 530925, 3156);
INSERT INTO `sys_area` VALUES (8644451, 86, 8642995, 3, '沧源佤族自治县', '云南省，临沧市，沧源佤族自治县', 530927, 3157);
INSERT INTO `sys_area` VALUES (8644536, 86, 8600032, 2, '北京城区', '北京市，北京城区', 110100, 3158);
INSERT INTO `sys_area` VALUES (8644537, 86, 8644536, 3, '怀柔区', '北京市，北京城区，怀柔区', 110116, 3159);
INSERT INTO `sys_area` VALUES (8644538, 86, 8644536, 3, '延庆区', '北京市，北京城区，延庆区', 110119, 3160);
INSERT INTO `sys_area` VALUES (8644539, 86, 8644536, 3, '密云区', '北京市，北京城区，密云区', 110118, 3161);
INSERT INTO `sys_area` VALUES (8644540, 86, 8644536, 3, '丰台区', '北京市，北京城区，丰台区', 110106, 3162);
INSERT INTO `sys_area` VALUES (8644541, 86, 8644536, 3, '门头沟区', '北京市，北京城区，门头沟区', 110109, 3163);
INSERT INTO `sys_area` VALUES (8644542, 86, 8644536, 3, '顺义区', '北京市，北京城区，顺义区', 110113, 3164);
INSERT INTO `sys_area` VALUES (8644543, 86, 8644536, 3, '朝阳区', '北京市，北京城区，朝阳区', 110105, 3165);
INSERT INTO `sys_area` VALUES (8644544, 86, 8644536, 3, '石景山区', '北京市，北京城区，石景山区', 110107, 3166);
INSERT INTO `sys_area` VALUES (8644545, 86, 8644536, 3, '房山区', '北京市，北京城区，房山区', 110111, 3167);
INSERT INTO `sys_area` VALUES (8644546, 86, 8644536, 3, '东城区', '北京市，北京城区，东城区', 110101, 3168);
INSERT INTO `sys_area` VALUES (8644547, 86, 8644536, 3, '大兴区', '北京市，北京城区，大兴区', 110115, 3169);
INSERT INTO `sys_area` VALUES (8644548, 86, 8644536, 3, '平谷区', '北京市，北京城区，平谷区', 110117, 3170);
INSERT INTO `sys_area` VALUES (8644549, 86, 8644536, 3, '通州区', '北京市，北京城区，通州区', 110112, 3171);
INSERT INTO `sys_area` VALUES (8644550, 86, 8644536, 3, '昌平区', '北京市，北京城区，昌平区', 110114, 3172);
INSERT INTO `sys_area` VALUES (8644551, 86, 8644536, 3, '海淀区', '北京市，北京城区，海淀区', 110108, 3173);
INSERT INTO `sys_area` VALUES (8644552, 86, 8644536, 3, '西城区', '北京市，北京城区，西城区', 110102, 3174);
INSERT INTO `sys_area` VALUES (8644886, 86, 8600033, 2, '天津城区', '天津市，天津城区', 120100, 3175);
INSERT INTO `sys_area` VALUES (8644887, 86, 8644886, 3, '河西区', '天津市，天津城区，河西区', 120103, 3176);
INSERT INTO `sys_area` VALUES (8644888, 86, 8644886, 3, '河东区', '天津市，天津城区，河东区', 120102, 3177);
INSERT INTO `sys_area` VALUES (8644889, 86, 8644886, 3, '河北区', '天津市，天津城区，河北区', 120105, 3178);
INSERT INTO `sys_area` VALUES (8644890, 86, 8644886, 3, '和平区', '天津市，天津城区，和平区', 120101, 3179);
INSERT INTO `sys_area` VALUES (8644891, 86, 8644886, 3, '宝坻区', '天津市，天津城区，宝坻区', 120115, 3180);
INSERT INTO `sys_area` VALUES (8644892, 86, 8644886, 3, '津南区', '天津市，天津城区，津南区', 120112, 3181);
INSERT INTO `sys_area` VALUES (8644893, 86, 8644886, 3, '东丽区', '天津市，天津城区，东丽区', 120110, 3182);
INSERT INTO `sys_area` VALUES (8644894, 86, 8644886, 3, '静海区', '天津市，天津城区，静海区', 120118, 3183);
INSERT INTO `sys_area` VALUES (8644895, 86, 8644886, 3, '宁河区', '天津市，天津城区，宁河区', 120117, 3184);
INSERT INTO `sys_area` VALUES (8644896, 86, 8644886, 3, '蓟州区', '天津市，天津城区，蓟州区', 120119, 3185);
INSERT INTO `sys_area` VALUES (8644897, 86, 8644886, 3, '滨海新区', '天津市，天津城区，滨海新区', 120116, 3186);
INSERT INTO `sys_area` VALUES (8644898, 86, 8644886, 3, '北辰区', '天津市，天津城区，北辰区', 120113, 3187);
INSERT INTO `sys_area` VALUES (8644899, 86, 8644886, 3, '武清区', '天津市，天津城区，武清区', 120114, 3188);
INSERT INTO `sys_area` VALUES (8644900, 86, 8644886, 3, '红桥区', '天津市，天津城区，红桥区', 120106, 3189);
INSERT INTO `sys_area` VALUES (8644901, 86, 8644886, 3, '西青区', '天津市，天津城区，西青区', 120111, 3190);
INSERT INTO `sys_area` VALUES (8644902, 86, 8644886, 3, '南开区', '天津市，天津城区，南开区', 120104, 3191);
INSERT INTO `sys_area` VALUES (8645207, 86, 8600034, 2, '长春市', '吉林省，长春市', 220100, 3192);
INSERT INTO `sys_area` VALUES (8645208, 86, 8600034, 2, '辽源市', '吉林省，辽源市', 220400, 3193);
INSERT INTO `sys_area` VALUES (8645209, 86, 8600034, 2, '吉林市', '吉林省，吉林市', 220200, 3194);
INSERT INTO `sys_area` VALUES (8645210, 86, 8600034, 2, '白城市', '吉林省，白城市', 220800, 3195);
INSERT INTO `sys_area` VALUES (8645211, 86, 8600034, 2, '松原市', '吉林省，松原市', 220700, 3196);
INSERT INTO `sys_area` VALUES (8645212, 86, 8600034, 2, '四平市', '吉林省，四平市', 220300, 3197);
INSERT INTO `sys_area` VALUES (8645213, 86, 8600034, 2, '延边朝鲜族自治州', '吉林省，延边朝鲜族自治州', 222400, 3198);
INSERT INTO `sys_area` VALUES (8645214, 86, 8600034, 2, '白山市', '吉林省，白山市', 220600, 3199);
INSERT INTO `sys_area` VALUES (8645215, 86, 8600034, 2, '通化市', '吉林省，通化市', 220500, 3200);
INSERT INTO `sys_area` VALUES (8645216, 86, 8645207, 3, '榆树市', '吉林省，长春市，榆树市', 220182, 3201);
INSERT INTO `sys_area` VALUES (8645217, 86, 8645207, 3, '德惠市', '吉林省，长春市，德惠市', 220183, 3202);
INSERT INTO `sys_area` VALUES (8645218, 86, 8645207, 3, '双阳区', '吉林省，长春市，双阳区', 220112, 3203);
INSERT INTO `sys_area` VALUES (8645219, 86, 8645207, 3, '农安县', '吉林省，长春市，农安县', 220122, 3204);
INSERT INTO `sys_area` VALUES (8645220, 86, 8645207, 3, '朝阳区', '吉林省，长春市，朝阳区', 220104, 3205);
INSERT INTO `sys_area` VALUES (8645221, 86, 8645207, 3, '绿园区', '吉林省，长春市，绿园区', 220106, 3206);
INSERT INTO `sys_area` VALUES (8645222, 86, 8645207, 3, '二道区', '吉林省，长春市，二道区', 220105, 3207);
INSERT INTO `sys_area` VALUES (8645223, 86, 8645207, 3, '九台区', '吉林省，长春市，九台区', 220113, 3208);
INSERT INTO `sys_area` VALUES (8645224, 86, 8645207, 3, '南关区', '吉林省，长春市，南关区', 220102, 3209);
INSERT INTO `sys_area` VALUES (8645225, 86, 8645207, 3, '宽城区', '吉林省，长春市，宽城区', 220103, 3210);
INSERT INTO `sys_area` VALUES (8645392, 86, 8645208, 3, '西安区', '吉林省，辽源市，西安区', 220403, 3211);
INSERT INTO `sys_area` VALUES (8645393, 86, 8645208, 3, '龙山区', '吉林省，辽源市，龙山区', 220402, 3212);
INSERT INTO `sys_area` VALUES (8645394, 86, 8645208, 3, '东辽县', '吉林省，辽源市，东辽县', 220422, 3213);
INSERT INTO `sys_area` VALUES (8645395, 86, 8645208, 3, '东丰县', '吉林省，辽源市，东丰县', 220421, 3214);
INSERT INTO `sys_area` VALUES (8645430, 86, 8645209, 3, '舒兰市', '吉林省，吉林市，舒兰市', 220283, 3215);
INSERT INTO `sys_area` VALUES (8645431, 86, 8645209, 3, '船营区', '吉林省，吉林市，船营区', 220204, 3216);
INSERT INTO `sys_area` VALUES (8645432, 86, 8645209, 3, '丰满区', '吉林省，吉林市，丰满区', 220211, 3217);
INSERT INTO `sys_area` VALUES (8645433, 86, 8645209, 3, '桦甸市', '吉林省，吉林市，桦甸市', 220282, 3218);
INSERT INTO `sys_area` VALUES (8645434, 86, 8645209, 3, '昌邑区', '吉林省，吉林市，昌邑区', 220202, 3219);
INSERT INTO `sys_area` VALUES (8645435, 86, 8645209, 3, '蛟河市', '吉林省，吉林市，蛟河市', 220281, 3220);
INSERT INTO `sys_area` VALUES (8645436, 86, 8645209, 3, '龙潭区', '吉林省，吉林市，龙潭区', 220203, 3221);
INSERT INTO `sys_area` VALUES (8645437, 86, 8645209, 3, '永吉县', '吉林省，吉林市，永吉县', 220221, 3222);
INSERT INTO `sys_area` VALUES (8645438, 86, 8645209, 3, '磐石市', '吉林省，吉林市，磐石市', 220284, 3223);
INSERT INTO `sys_area` VALUES (8645587, 86, 8645210, 3, '大安市', '吉林省，白城市，大安市', 220882, 3224);
INSERT INTO `sys_area` VALUES (8645588, 86, 8645210, 3, '洮南市', '吉林省，白城市，洮南市', 220881, 3225);
INSERT INTO `sys_area` VALUES (8645589, 86, 8645210, 3, '通榆县', '吉林省，白城市，通榆县', 220822, 3226);
INSERT INTO `sys_area` VALUES (8645590, 86, 8645210, 3, '洮北区', '吉林省，白城市，洮北区', 220802, 3227);
INSERT INTO `sys_area` VALUES (8645591, 86, 8645210, 3, '镇赉县', '吉林省，白城市，镇赉县', 220821, 3228);
INSERT INTO `sys_area` VALUES (8645723, 86, 8645211, 3, '扶余市', '吉林省，松原市，扶余市', 220781, 3229);
INSERT INTO `sys_area` VALUES (8645724, 86, 8645211, 3, '宁江区', '吉林省，松原市，宁江区', 220702, 3230);
INSERT INTO `sys_area` VALUES (8645725, 86, 8645211, 3, '前郭尔罗斯蒙古族自治县', '吉林省，松原市，前郭尔罗斯蒙古族自治县', 220721, 3231);
INSERT INTO `sys_area` VALUES (8645726, 86, 8645211, 3, '乾安县', '吉林省，松原市，乾安县', 220723, 3232);
INSERT INTO `sys_area` VALUES (8645727, 86, 8645211, 3, '长岭县', '吉林省，松原市，长岭县', 220722, 3233);
INSERT INTO `sys_area` VALUES (8645865, 86, 8645212, 3, '铁东区', '吉林省，四平市，铁东区', 220303, 3234);
INSERT INTO `sys_area` VALUES (8645866, 86, 8645212, 3, '双辽市', '吉林省，四平市，双辽市', 220382, 3235);
INSERT INTO `sys_area` VALUES (8645867, 86, 8645212, 3, '公主岭市', '吉林省，四平市，公主岭市', 220381, 3236);
INSERT INTO `sys_area` VALUES (8645868, 86, 8645212, 3, '伊通满族自治县', '吉林省，四平市，伊通满族自治县', 220323, 3237);
INSERT INTO `sys_area` VALUES (8645869, 86, 8645212, 3, '铁西区', '吉林省，四平市，铁西区', 220302, 3238);
INSERT INTO `sys_area` VALUES (8645870, 86, 8645212, 3, '梨树县', '吉林省，四平市，梨树县', 220322, 3239);
INSERT INTO `sys_area` VALUES (8645988, 86, 8645213, 3, '敦化市', '吉林省，延边朝鲜族自治州，敦化市', 222403, 3240);
INSERT INTO `sys_area` VALUES (8645989, 86, 8645213, 3, '图们市', '吉林省，延边朝鲜族自治州，图们市', 222402, 3241);
INSERT INTO `sys_area` VALUES (8645990, 86, 8645213, 3, '珲春市', '吉林省，延边朝鲜族自治州，珲春市', 222404, 3242);
INSERT INTO `sys_area` VALUES (8645991, 86, 8645213, 3, '和龙市', '吉林省，延边朝鲜族自治州，和龙市', 222406, 3243);
INSERT INTO `sys_area` VALUES (8645992, 86, 8645213, 3, '汪清县', '吉林省，延边朝鲜族自治州，汪清县', 222424, 3244);
INSERT INTO `sys_area` VALUES (8645993, 86, 8645213, 3, '延吉市', '吉林省，延边朝鲜族自治州，延吉市', 222401, 3245);
INSERT INTO `sys_area` VALUES (8645994, 86, 8645213, 3, '龙井市', '吉林省，延边朝鲜族自治州，龙井市', 222405, 3246);
INSERT INTO `sys_area` VALUES (8645995, 86, 8645213, 3, '安图县', '吉林省，延边朝鲜族自治州，安图县', 222426, 3247);
INSERT INTO `sys_area` VALUES (8646121, 86, 8645214, 3, '靖宇县', '吉林省，白山市，靖宇县', 220622, 3248);
INSERT INTO `sys_area` VALUES (8646122, 86, 8645214, 3, '长白朝鲜族自治县', '吉林省，白山市，长白朝鲜族自治县', 220623, 3249);
INSERT INTO `sys_area` VALUES (8646123, 86, 8645214, 3, '江源区', '吉林省，白山市，江源区', 220605, 3250);
INSERT INTO `sys_area` VALUES (8646124, 86, 8645214, 3, '抚松县', '吉林省，白山市，抚松县', 220621, 3251);
INSERT INTO `sys_area` VALUES (8646125, 86, 8645214, 3, '浑江区', '吉林省，白山市，浑江区', 220602, 3252);
INSERT INTO `sys_area` VALUES (8646126, 86, 8645214, 3, '临江市', '吉林省，白山市，临江市', 220681, 3253);
INSERT INTO `sys_area` VALUES (8646197, 86, 8645215, 3, '东昌区', '吉林省，通化市，东昌区', 220502, 3254);
INSERT INTO `sys_area` VALUES (8646198, 86, 8645215, 3, '二道江区', '吉林省，通化市，二道江区', 220503, 3255);
INSERT INTO `sys_area` VALUES (8646199, 86, 8645215, 3, '通化县', '吉林省，通化市，通化县', 220521, 3256);
INSERT INTO `sys_area` VALUES (8646200, 86, 8645215, 3, '柳河县', '吉林省，通化市，柳河县', 220524, 3257);
INSERT INTO `sys_area` VALUES (8646201, 86, 8645215, 3, '梅河口市', '吉林省，通化市，梅河口市', 220581, 3258);
INSERT INTO `sys_area` VALUES (8646202, 86, 8645215, 3, '辉南县', '吉林省，通化市，辉南县', 220523, 3259);
INSERT INTO `sys_area` VALUES (8646203, 86, 8645215, 3, '集安市', '吉林省，通化市，集安市', 220582, 3260);

-- ----------------------------
-- Table structure for sys_common_lang
-- ----------------------------
DROP TABLE IF EXISTS `sys_common_lang`;
CREATE TABLE `sys_common_lang`  (
  `Id` bigint NOT NULL COMMENT 'id',
  `lang_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '语言code',
  `lang_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '语言key',
  `lang_name` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `Addtime` datetime NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '多语言配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_common_lang
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `ConfigId` int NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `ConfigName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数名称',
  `ConfigKey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数键名',
  `ConfigValue` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数键值',
  `ConfigType` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统内置（Y是 N否）',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ConfigId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', NULL, '2025-06-04 13:03:42', NULL, NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (2, '账号自助-验证码开关', 'sys.account.captchaOnOff', '1', 'Y', NULL, '2025-06-04 13:03:42', NULL, NULL, '开启验证码功能（off、关闭，1、动态验证码 2、动态gif泡泡 3、泡泡 4、静态验证码）');
INSERT INTO `sys_config` VALUES (3, '开启注册功能', 'sys.account.register', 'True', 'Y', NULL, '2025-06-04 13:03:42', NULL, NULL, '注册开关');
INSERT INTO `sys_config` VALUES (4, '允许评论', 'article.comment', '1', 'Y', NULL, '2025-06-04 13:03:42', NULL, NULL, '评论绑定手机号0、全放开1、绑定手机号');
INSERT INTO `sys_config` VALUES (5, '允许发布内容', 'article.publish', '1', 'Y', NULL, '2025-06-04 13:03:42', NULL, NULL, '发布绑定手机号0、全放开1、绑定手机号');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `DeptId` bigint NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `ParentId` bigint NULL DEFAULT NULL COMMENT '父部门ID',
  `Ancestors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '祖级列表',
  `DeptName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门名称',
  `OrderNum` int NULL DEFAULT NULL COMMENT '显示顺序',
  `Leader` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `Phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `Status` int NULL DEFAULT 0 COMMENT '部门状态:0正常,1停用',
  `DelFlag` int NULL DEFAULT 0 COMMENT '删除标志（0代表存在 2代表删除）',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`DeptId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 0, NULL, '公司总部', 0, NULL, NULL, NULL, 0, 0, NULL, '2025-06-04 13:03:43', NULL, NULL, NULL);
INSERT INTO `sys_dept` VALUES (2, 1, NULL, '研发部门', 1, NULL, NULL, NULL, 0, 0, NULL, '2025-06-04 13:03:43', NULL, NULL, NULL);
INSERT INTO `sys_dept` VALUES (3, 1, NULL, '市场部门', 2, NULL, NULL, NULL, 0, 0, NULL, '2025-06-04 13:03:43', NULL, NULL, NULL);
INSERT INTO `sys_dept` VALUES (4, 1, NULL, '测试部门', 3, NULL, NULL, NULL, 0, 0, NULL, '2025-06-04 13:03:43', NULL, NULL, NULL);
INSERT INTO `sys_dept` VALUES (5, 1, NULL, '财务部门', 4, NULL, NULL, NULL, 0, 0, NULL, '2025-06-04 13:03:43', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `DictCode` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `DictSort` int NULL DEFAULT NULL COMMENT '字典排序',
  `DictLabel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典标签',
  `DictValue` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典键值',
  `DictType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典类型',
  `CssClass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `ListClass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `IsDefault` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `Status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态（0正常 1停用）',
  `LangKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '多语言翻译key值',
  `Extend1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '扩展1',
  `Extend2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '扩展2',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`DictCode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'common.male', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'common.female', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'common.unknow', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'common.show', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'common.hidden', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'common.normal', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'common.disable', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'common.normal', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '异常', '1', 'sys_job_status', '', 'danger', 'N', '0', 'common.abnormal', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'common.default', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'common.system', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'common.yes', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'common.no', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 0, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (30, 1, '发布', '1', 'sys_article_status', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (31, 2, '草稿', '2', 'sys_article_status', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (32, 1, '中文', 'zh-cn', 'sys_lang_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (33, 2, '英文', 'en', 'sys_lang_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (34, 3, '繁体', 'zh-tw', 'sys_lang_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (35, 1, '程序集', '1', 'sys_job_type', '', 'primary', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (36, 2, 'api', '2', 'sys_job_type', '', 'warning', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (37, 3, 'SQL语句', '3', 'sys_job_type', '', 'danger', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (38, 1, '文章', '0', 'sys_article_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (39, 2, '笔记', '1', 'sys_article_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, 'uniapp2发布入口');
INSERT INTO `sys_dict_data` VALUES (40, 3, '动态', '2', 'sys_article_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (41, 4, '视频', '3', 'sys_article_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (42, 1, '文章', '0', 'article_category_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (43, 2, '圈子', '1', 'article_category_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (44, 1, '移动端首页', '1', 'sys_ad_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (45, 1, '所有人可评论', '0', 'sys_comment_permi', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (46, 2, '粉丝', '1', 'sys_comment_permi', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (47, 3, '仅自己', '2', 'sys_comment_permi', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (48, 1, '常用', 'common', 'sys_classify_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (49, 1, '头像', 'avatar', 'sys_classify_type', '', '', 'N', '0', '', NULL, NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (50, 4, '韩语', 'kr', 'sys_lang_type', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-04 13:08:11', NULL, '2025-06-04 13:08:18', NULL);
INSERT INTO `sys_dict_data` VALUES (51, 0, '网站名称', 'Title', 'frontend_website', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 10:56:04', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (52, 0, '网站描述', '1', 'frontend_website', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 10:56:16', NULL, '2025-06-10 10:56:59', NULL);
INSERT INTO `sys_dict_data` VALUES (53, 0, '网站关键词', '1', 'frontend_website', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 10:57:12', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (54, 0, '网站联系方式', '1', 'frontend_website', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 10:57:22', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (55, 100, '房屋', 'Houses', 'frontend_category', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 14:08:28', NULL, '2025-06-10 14:08:36', NULL);
INSERT INTO `sys_dict_data` VALUES (56, 200, '车辆', 'Vehicles', 'frontend_category', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 14:09:20', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (57, 300, '求职', 'JobHunting', 'frontend_category', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 14:11:03', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (58, 400, '招聘', 'Recruitment', 'frontend_category', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 14:11:14', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (59, 500, '旧货', 'SecondHand', 'frontend_category', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 14:12:25', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (60, 600, '企业', 'BusinessPromotion', 'frontend_category', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 14:12:43', NULL, '2025-06-10 14:12:52', NULL);
INSERT INTO `sys_dict_data` VALUES (61, 700, '交友', 'Dating', 'frontend_category', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 14:13:31', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (62, 800, '问答', 'Q&A', 'frontend_category', '', '', NULL, '0', '', NULL, NULL, 'admin', '2025-06-10 14:13:53', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `DictId` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `DictName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名称',
  `DictType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典类型',
  `Status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态 0、正常 1、停用',
  `Type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置 Y是 N否',
  `CustomSql` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义sql',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`DictId`) USING BTREE,
  UNIQUE INDEX `index_dict_type`(`DictType` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '文章状态', 'sys_article_status', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (12, '多语言类型', 'sys_lang_type', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '多语言字典类型');
INSERT INTO `sys_dict_type` VALUES (13, '任务类型', 'sys_job_type', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '任务类型列表');
INSERT INTO `sys_dict_type` VALUES (14, '邮件模板', 'sql_email_tpl', '0', 'Y', 'SELECT id dictValue, name dictLabel FROM emailTpl', NULL, '2025-06-04 13:03:42', NULL, NULL, '邮件模板列表');
INSERT INTO `sys_dict_type` VALUES (15, '内容类型', 'sys_article_type', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '内容类型');
INSERT INTO `sys_dict_type` VALUES (16, '内容目录类型', 'article_category_type', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (17, '广告类型', 'sys_ad_type', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (18, '评论权限', 'sys_comment_permi', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, '内容评论权限');
INSERT INTO `sys_dict_type` VALUES (19, '文件存储分类', 'sys_classify_type', '0', 'Y', NULL, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (21, '前端-网站设置', 'frontend_website', '0', 'Y', NULL, 'admin', '2025-06-10 10:53:47', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (22, '前端-板块', 'frontend_category', '0', 'N', NULL, 'admin', '2025-06-10 14:03:45', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `Id` bigint NOT NULL COMMENT '自增id',
  `RealName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件原名',
  `FileType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `FileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '存储文件名',
  `FileUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件存储地址 eg：/uploads/20220202',
  `StorePath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库位置 eg：/uploads',
  `FileSize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `FileExt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件扩展名',
  `Create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '上传时间',
  `StoreType` int NULL DEFAULT NULL COMMENT '存储类型',
  `AccessUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '访问路径',
  `ClassifyType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件存储表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (1930144663235338240, '1.jpg', 'image/jpeg', '22a933f7d0d95f27.jpg', 'E:/Code/ZrAdminNetCore/ZR.Admin.WebApi/wwwroot/2025/0604/22a933f7d0d95f27.jpg', '2025/0604', '8892.62kb', '.jpg', 'admin', '2025-06-04 14:08:43', 1, 'http://localhost:8888/2025/0604/22a933f7d0d95f27.jpg', NULL);
INSERT INTO `sys_file` VALUES (1931966219838169088, '1.jpg', 'image/jpeg', '3649ed1a5dd2e4a2.jpg', 'E:/Code/MyGithub/ZrAdmin/HrAdmin_Net/ZR.Admin.WebApi/wwwroot/2025/0609/3649ed1a5dd2e4a2.jpg', '2025/0609', '8892.62kb', '.jpg', 'admin', '2025-06-09 14:46:56', 1, 'http://localhost:8888/2025/0609/3649ed1a5dd2e4a2.jpg', NULL);
INSERT INTO `sys_file` VALUES (1931972881890287616, '微信截图_20250609151319.png', 'image/png', '182c9751f86ec762.png', 'E:/Code/MyGithub/ZrAdmin/HrAdmin_Net/ZR.Admin.WebApi/wwwroot/2025/0609/182c9751f86ec762.png', '2025/0609', '3.06kb', '.png', 'admin', '2025-06-09 15:13:24', 1, 'http://localhost:8888/2025/0609/182c9751f86ec762.png', NULL);
INSERT INTO `sys_file` VALUES (1931973430442336256, '微信截图_20250609151319.png', 'image/png', '771f4d79f81605e9.png', 'E:/Code/MyGithub/ZrAdmin/HrAdmin_Net/ZR.Admin.WebApi/wwwroot/2025/0609/771f4d79f81605e9.png', '2025/0609', '3.06kb', '.png', 'admin', '2025-06-09 15:15:35', 1, 'http://localhost:8888/2025/0609/771f4d79f81605e9.png', NULL);

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `InfoId` bigint NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `Status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态 0成功 1失败',
  `Ipaddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录IP地址',
  `LoginLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录地点',
  `Browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '浏览器类型',
  `Os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `Msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提示消息',
  `LoginTime` datetime NULL DEFAULT NULL COMMENT '访问时间',
  `ClientId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户端id',
  `UserId` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`InfoId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '1', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 136.0.0', 'Windows 10', '用户名或密码错误', '2025-06-04 12:57:44', '20b3630bd476ad6ffd0b47041d67d85c', 0);
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 136.0.0', 'Windows 10', '登录成功', '2025-06-04 13:04:22', '20b3630bd476ad6ffd0b47041d67d85c', 1);
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Mac OS X 10.15.7 Mac Edge 136.0.0', 'Mac OS X 10.15.7', '登录成功', '2025-06-04 13:18:21', 'bf8b5ffb039a7b6c9d1f4c5742e74a00', 1);
INSERT INTO `sys_logininfor` VALUES (4, 'demo', '1', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 136.0.0', 'Windows 10', '用户名或密码错误', '2025-06-04 16:45:13', '20b3630bd476ad6ffd0b47041d67d85c', 0);
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 136.0.0', 'Windows 10', '登录成功', '2025-06-04 16:45:33', '20b3630bd476ad6ffd0b47041d67d85c', 1);
INSERT INTO `sys_logininfor` VALUES (6, 'demo', '1', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 136.0.0', 'Windows 10', '用户名或密码错误', '2025-06-06 11:44:06', '20b3630bd476ad6ffd0b47041d67d85c', 0);
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 136.0.0', 'Windows 10', '登录成功', '2025-06-06 11:45:41', '20b3630bd476ad6ffd0b47041d67d85c', 1);
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 136.0.0', 'Windows 10', '登录成功', '2025-06-07 22:39:02', '20b3630bd476ad6ffd0b47041d67d85c', 1);
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 136.0.0', 'Windows 10', '登录成功', '2025-06-07 22:43:07', 'c34a564d79bf1b173159f455388caf98', 1);
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 136.0.0', 'Windows 10', '登录成功', '2025-06-07 22:43:29', 'c34a564d79bf1b173159f455388caf98', 1);
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 136.0.0', 'Windows 10', '登录成功', '2025-06-07 22:44:01', '20b3630bd476ad6ffd0b47041d67d85c', 1);
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 137.0.0', 'Windows 10', '登录成功', '2025-06-10 10:38:36', '20b3630bd476ad6ffd0b47041d67d85c', 1);
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '1', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 137.0.0', 'Windows 10', '用户名或密码错误', '2025-06-10 12:32:55', '20b3630bd476ad6ffd0b47041d67d85c', 0);
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '1', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 137.0.0', 'Windows 10', '用户名或密码错误', '2025-06-10 12:33:31', '20b3630bd476ad6ffd0b47041d67d85c', 0);
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 137.0.0', 'Windows 10', '登录成功', '2025-06-10 12:34:07', '20b3630bd476ad6ffd0b47041d67d85c', 1);
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '0', '127.0.0.1', '0-内网IP-内网IP', 'Windows 10 Other Edge 137.0.0', 'Windows 10', '登录成功', '2025-06-10 15:28:00', '20b3630bd476ad6ffd0b47041d67d85c', 1);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `MenuId` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `MenuName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `ParentId` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `OrderNum` int NULL DEFAULT 0 COMMENT '显示顺序',
  `Path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由地址',
  `Component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `IsCache` int NULL DEFAULT 0 COMMENT '是否缓存（1不缓存 0缓存）',
  `IsFrame` int NULL DEFAULT 0 COMMENT '是否外链 1、是 0、否',
  `MenuType` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型（M目录 C菜单 F按钮 L链接）',
  `Visible` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '显示状态（0显示 1隐藏）',
  `Status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `Perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限字符串',
  `Icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `menuName_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名key',
  `Query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MenuId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1134 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, 0, 0, 'M', '0', '0', NULL, 'system', 'menu.system', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 0, 0, 'M', '0', '0', NULL, 'monitor', 'menu.monitoring', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 0, 0, 'M', '0', '0', NULL, 'tool', 'menu.systemTools', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (7, '组件示例', 0, 1, '', NULL, 0, 0, 'M', '0', '0', NULL, 'zujian', 'menu.zujianDemo', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (8, '图标icon', 7, 0, 'icon', 'components/icons/index', 0, 0, 'C', '0', '0', NULL, 'icon1', 'menu.icon', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (9, '邮件管理', 3, 3, 'email', NULL, 0, 0, 'M', '0', '0', NULL, 'email', 'menu.emailList', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 0, 0, 'C', '0', '0', 'system:user:list', 'user', 'menu.systemUser', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 0, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'menu.systemRole', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'sysmenu', 'system/menu/index', 0, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'menu.systemMenu', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 0, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'menu.systemDept', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 0, 0, 'C', '0', '0', 'system:post:list', 'post', 'menu.systemPost', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 0, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'menu.systemDic', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (106, '角色分配', 1, 2, 'roleusers', 'system/roleusers/index', 0, 0, 'C', '1', '0', 'system:roleusers:list', 'people', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (107, '参数设置', 1, 8, 'config', 'system/config/index', 0, 0, 'C', '0', '0', 'system:config:list', 'edit', 'menu.systemParam', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 10, 'log', NULL, 0, 0, 'M', '0', '0', NULL, 'log', 'menu.systemLog', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (109, '通知公告', 1, 9, 'notice', 'system/notice/index', 0, 0, 'C', '0', '0', 'system:notice:list', 'message', 'menu.systemNotice', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 1, 'job', 'monitor/job/index', 0, 0, 'C', '0', '0', NULL, 'job', 'menu.timedTask', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (111, '在线用户', 2, 2, 'onlineusers', 'monitor/onlineuser/index', 0, 0, 'C', '0', '0', NULL, 'online', 'layout.onlineUsers', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 0, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'menu.serviceMonitor', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 0, 0, 'C', '1', '1', 'monitor:cache:list', 'redis', 'menu.cacheMonitor', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 0, 0, 'C', '0', '0', 'tool:build:list', 'build', 'menu.formBuild', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 0, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'menu.codeGeneration', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 0, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'menu.systemInterface', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (117, '发送邮件', 9, 4, 'sendEmail', 'tool/email/sendEmail', 0, 0, 'C', '0', '0', 'tool:email:send', 'emailSend', 'menu.sendEmail', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (118, '内容管理', 0, 18, 'article', NULL, 0, 0, 'M', '0', '0', NULL, 'documentation', 'menu.systemArticle', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (119, '内容列表', 118, 1, 'index', 'article/manager', 0, 0, 'C', '0', '0', 'system:article:list', 'list', 'menu.articleList', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 0, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'menu.operLog', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 0, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'menu.loginLog', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (502, '数据差异日志', 108, 3, 'SqlDiffLog', 'monitor/SqlDiffLog', 0, 0, 'C', '0', '0', 'sqldifflog:list', 'log', 'menu.dataDiffLog', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', NULL, 0, 0, 'F', '0', '0', 'system:user:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1002, '用户添加', 100, 2, '', NULL, 0, 0, 'F', '0', '0', 'system:user:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', NULL, 0, 0, 'F', '0', '0', 'system:user:edit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', NULL, 0, 0, 'F', '0', '0', 'system:user:remove', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', NULL, 0, 0, 'F', '0', '0', 'system:user:export', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', NULL, 0, 0, 'F', '0', '0', 'system:user:import', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', NULL, 0, 0, 'F', '0', '0', 'system:user:resetPwd', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', NULL, 0, 0, 'F', '0', '0', 'system:role:query', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', NULL, 0, 0, 'F', '0', '0', 'system:role:add', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', NULL, 0, 0, 'F', '0', '0', 'system:role:edit', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', NULL, 0, 0, 'F', '0', '0', 'system:role:remove', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1012, '菜单授权', 101, 5, '', NULL, 0, 0, 'F', '0', '0', 'system:role:authorize', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', NULL, 0, 0, 'F', '0', '0', 'system:menu:query', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', NULL, 0, 0, 'F', '0', '0', 'system:menu:add', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', NULL, 0, 0, 'F', '0', '0', 'system:menu:edit', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', NULL, 0, 0, 'F', '0', '0', 'system:menu:remove', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1017, '修改排序', 102, 5, '', NULL, 0, 0, 'F', '0', '0', 'system:menu:changeSort', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1018, '部门查询', 103, 1, '', NULL, 0, 0, 'F', '0', '0', 'system:dept:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1019, '部门新增', 103, 2, '', NULL, 0, 0, 'F', '0', '0', 'system:dept:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1020, '部门修改', 103, 3, '', NULL, 0, 0, 'F', '0', '0', 'system:dept:update', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1021, '部门删除', 103, 4, '', NULL, 0, 0, 'F', '0', '0', 'system:dept:remove', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1022, '岗位查询', 104, 1, '', NULL, 0, 0, 'F', '0', '0', 'system:post:list', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1023, '岗位添加', 104, 2, '', NULL, 0, 0, 'F', '0', '0', 'system:post:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 3, '', NULL, 0, 0, 'F', '0', '0', 'system:post:remove', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1025, '岗位编辑', 104, 4, '', NULL, 0, 0, 'F', '0', '0', 'system:post:edit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 1, '', NULL, 0, 0, 'F', '0', '0', 'system:dict:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 2, '', NULL, 0, 0, 'F', '0', '0', 'system:dict:edit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 3, '', NULL, 0, 0, 'F', '0', '0', 'system:dict:remove', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1029, '新增用户', 106, 1, '', NULL, 0, 0, 'F', '0', '0', 'system:roleusers:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1030, '删除用户', 106, 2, '', NULL, 0, 0, 'F', '0', '0', 'system:roleusers:del', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1031, '字典查询', 105, 1, '', NULL, 0, 0, 'F', '0', '0', 'system:dict:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1032, '任务查询', 110, 1, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:job:list', '#', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1033, '任务新增', 110, 2, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:job:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1034, '任务删除', 110, 3, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:job:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1035, '任务修改', 110, 4, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:job:edit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1036, '任务启动', 110, 5, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:job:start', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1037, '任务运行', 110, 7, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:job:run', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1038, '任务停止', 110, 8, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:job:stop', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1039, '任务日志', 2, 0, 'job/log', 'monitor/job/log', 0, 0, 'C', '1', '0', 'monitor:job:query', 'log', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1040, '任务导出', 110, 10, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:job:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1041, '操作查询', 500, 1, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:operlog:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1042, '操作删除', 500, 2, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:operlog:remove', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1043, '操作日志导出', 500, 3, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:operlog:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1044, '登录查询', 501, 1, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:logininfor:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1045, '登录删除', 501, 1, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:logininfor:remove', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1046, '登录日志导出', 501, 1, '#', NULL, 0, 0, 'F', '0', '0', 'monitor:logininfor:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1047, '内容发布', 118, 2, '/article/publish', 'article/publish', 0, 0, 'C', '1', '0', 'system:article:add', 'log', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1048, '内容审核', 119, 0, '#', NULL, 0, 0, 'F', '0', '0', 'article:audit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1049, '内容修改', 119, 3, '#', NULL, 0, 0, 'F', '0', '0', 'system:article:update', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1050, '内容删除', 119, 4, '#', NULL, 0, 0, 'F', '0', '0', 'system:article:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1051, '查询公告', 109, 1, '#', NULL, 0, 0, 'F', '0', '0', 'system:notice:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1052, '新增公告', 109, 2, '#', NULL, 0, 0, 'F', '0', '0', 'system:notice:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1053, '删除公告', 109, 3, '#', NULL, 0, 0, 'F', '0', '0', 'system:notice:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1054, '修改公告', 109, 4, '#', NULL, 0, 0, 'F', '0', '0', 'system:notice:update', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1055, '导出公告', 109, 5, '#', NULL, 0, 0, 'F', '0', '0', 'system:notice:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1060, '生成修改', 3, 1, '/gen/editTable', 'tool/gen/editTable', 0, 0, 'C', '1', '0', 'tool:gen:edit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1061, '生成查询', 115, 2, '#', NULL, 0, 0, 'F', '0', '0', 'tool:gen:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1062, '生成删除', 115, 1, '#', NULL, 0, 0, 'F', '0', '0', 'tool:gen:remove', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1063, '导入代码', 115, 1, '#', NULL, 0, 0, 'F', '0', '0', 'tool:gen:import', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1064, '生成代码', 115, 1, '#', NULL, 0, 0, 'F', '0', '0', 'tool:gen:code', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1065, '预览代码', 115, 1, '#', NULL, 0, 0, 'F', '0', '0', 'tool:gen:preview', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1070, '岗位导出', 104, 4, '', NULL, 0, 0, 'F', '0', '0', 'system:post:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1071, '字典导出', 105, 4, '', NULL, 0, 0, 'F', '0', '0', 'system:dict:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1072, '文件存储', 3, 17, 'file', 'tool/file/index', 0, 0, 'C', '0', '0', 'tool:file:list', 'upload', 'menu.fileStorage', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1073, '查询', 1072, 1, '#', NULL, 0, 0, 'F', '0', '0', 'tool:file:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1074, '新增', 1072, 2, '#', NULL, 0, 0, 'F', '0', '0', 'tool:file:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1075, '删除', 1072, 3, '#', NULL, 0, 0, 'F', '0', '0', 'tool:file:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1076, '修改', 1072, 4, '#', NULL, 0, 0, 'F', '0', '0', 'tool:file:update', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1077, '导出', 1072, 5, '#', NULL, 0, 0, 'F', '0', '0', 'tool:file:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1078, '多语言配置', 1, 999, 'commonLang', 'system/commonLang/index', 0, 0, 'C', '0', '0', 'system:lang:list', 'language', 'menu.systemLang', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1079, '查询', 1078, 1, '#', NULL, 0, 0, 'F', '0', '0', 'system:lang:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1080, '新增', 1078, 2, '#', NULL, 0, 0, 'F', '0', '0', 'system:lang:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1081, '删除', 1078, 3, '#', NULL, 0, 0, 'F', '0', '0', 'system:lang:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1082, '修改', 1078, 4, '#', NULL, 0, 0, 'F', '0', '0', 'system:lang:edit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1083, '导出', 1078, 5, '#', NULL, 0, 0, 'F', '0', '0', 'system:lang:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1084, '内容目录', 118, 999, 'articleCategory', 'article/articleCategory', 0, 0, 'C', '0', '0', 'articlecategory:list', 'tree-table', 'menu.articleCategory', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1085, '查询', 1084, 1, '#', NULL, 0, 0, 'F', '0', '0', 'articlecategory:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1086, '新增', 1084, 2, '#', NULL, 0, 0, 'F', '0', '0', 'articlecategory:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1087, '删除', 1084, 3, '#', NULL, 0, 0, 'F', '0', '0', 'articlecategory:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1088, '修改', 1084, 4, '#', NULL, 0, 0, 'F', '0', '0', 'articlecategory:edit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1089, '导出', 1084, 5, '#', NULL, 0, 0, 'F', '0', '0', 'articlecategory:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1090, '导入', 1078, 5, '#', NULL, 0, 0, 'F', '0', '0', 'system:lang:import', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1091, '批量强退', 111, 2, '', NULL, 0, 0, 'F', '0', '0', 'monitor:online:batchLogout', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, '在线用户强退');
INSERT INTO `sys_menu` VALUES (1092, '单条强退', 111, 1, '', NULL, 0, 0, 'F', '0', '0', 'monitor:online:forceLogout', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, '在线用户强退');
INSERT INTO `sys_menu` VALUES (1093, '广告管理', 0, 999, 'bannerConfig', 'public/BannerConfig', 0, 0, 'C', '0', '1', 'bannerconfig:list', 'app', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1094, '查询', 1093, 1, '#', NULL, 0, 0, 'F', '0', '0', 'bannerconfig:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1095, '新增', 1093, 2, '#', NULL, 0, 0, 'F', '0', '0', 'bannerconfig:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1096, '删除', 1093, 3, '#', NULL, 0, 0, 'F', '0', '0', 'bannerconfig:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1097, '修改', 1093, 4, '#', NULL, 0, 0, 'F', '0', '0', 'bannerconfig:edit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1098, '导出', 1093, 5, '#', NULL, 0, 0, 'F', '0', '0', 'bannerconfig:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1102, '删除', 502, 2, '', NULL, 0, 0, 'F', '0', '0', 'sqldifflog:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, '审计日志删除');
INSERT INTO `sys_menu` VALUES (1103, '导出', 502, 3, '', NULL, 0, 0, 'F', '0', '0', 'sqldifflog:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, '审计日志导出');
INSERT INTO `sys_menu` VALUES (1104, '邮件模板', 9, 1, 'email', 'tool/email/emailTpl', 0, 0, 'C', '0', '0', 'tool:emailtpl:list', 'icon1', 'menu.emailTemplate', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1105, '添加', 1104, 2, '', NULL, 0, 0, 'F', '0', '0', 'tool:emailtpl:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1106, '修改', 1104, 3, '', NULL, 0, 0, 'F', '0', '0', 'tool:emailtpl:edit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1107, '删除', 1104, 4, '', NULL, 0, 0, 'F', '0', '0', 'tool:emailtpl:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1108, '短信记录', 108, 1, 'smsLog', 'monitor/SmsLog', 0, 0, 'C', '0', '0', 'smscodelog:list', 'validCode', 'menu.smsLog', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1109, '短信删除', 1108, 2, '', NULL, 0, 0, 'F', '0', '0', 'smscodelog:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1110, '短信导出', 1108, 3, '', NULL, 0, 0, 'F', '0', '0', 'smscodelog:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1111, '邮件记录', 9, 1, 'emailLog', 'tool/email/emailLog', 0, 0, 'C', '0', '0', 'emaillog:list', 'emailLog', 'menu.emailLog', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, '邮件记录');
INSERT INTO `sys_menu` VALUES (1112, '邮件查询', 1111, 2, '', NULL, 0, 0, 'F', '0', '0', 'emaillog:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1113, '邮件删除', 1111, 3, '', NULL, 0, 0, 'F', '0', '0', 'emaillog:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1114, '用户在线日志', 2, 1, 'userOnlineLog', 'monitor/UserOnlineLog', 0, 0, 'C', '0', '0', 'useronlinelog:list', 'log', 'menu.userOnlineLog', NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1115, '用户在线日志导出', 1114, 2, '', NULL, 0, 0, 'F', '0', '0', 'useronlinelog:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1116, '用户在线日志删除', 1114, 3, '', NULL, 0, 0, 'F', '0', '0', 'useronlinelog:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1118, '查询', 1117, 1, '#', NULL, 0, 0, 'F', '0', '0', 'articletopic:query', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1119, '新增', 1117, 2, '#', NULL, 0, 0, 'F', '0', '0', 'articletopic:add', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1120, '删除', 1117, 3, '#', NULL, 0, 0, 'F', '0', '0', 'articletopic:delete', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1121, '修改', 1117, 4, '#', NULL, 0, 0, 'F', '0', '0', 'articletopic:edit', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1122, '导出', 1117, 5, '#', NULL, 0, 0, 'F', '0', '0', 'articletopic:export', '', NULL, NULL, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1128, '行政区域', 1, 999, 'SysArea', 'system/area/index', 0, 0, 'C', '0', '0', 'area:list', 'tree-table', NULL, NULL, 'system', '2025-06-10 21:03:17', 'admin', '2025-06-10 21:04:24', NULL);
INSERT INTO `sys_menu` VALUES (1129, '查询', 1128, 1, '#', NULL, 0, 0, 'F', '0', '0', 'area:query', '', NULL, NULL, 'system', '2025-06-10 21:03:17', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1130, '新增', 1128, 2, '#', NULL, 0, 0, 'F', '0', '0', 'area:add', '', NULL, NULL, 'system', '2025-06-10 21:03:17', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1131, '删除', 1128, 3, '#', NULL, 0, 0, 'F', '0', '0', 'area:delete', '', NULL, NULL, 'system', '2025-06-10 21:03:17', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1132, '修改', 1128, 4, '#', NULL, 0, 0, 'F', '0', '0', 'area:edit', '', NULL, NULL, 'system', '2025-06-10 21:03:17', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1133, '导出', 1128, 5, '#', NULL, 0, 0, 'F', '0', '0', 'area:export', '', NULL, NULL, 'system', '2025-06-10 21:03:17', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` int NOT NULL COMMENT '公告类型 (1通知 2公告)',
  `notice_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '公告内容',
  `Status` int NOT NULL DEFAULT 0 COMMENT '公告状态 (0正常 1关闭)',
  `Publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `BeginTime` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `EndTime` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `Popup` int NULL DEFAULT NULL COMMENT '弹出提示',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '首页公告', 2, '<p>开通会员详情： <a href=\"http://www.izhaorui.cn/vip\" target=\"_blank\"><span style=\"color: rgb(9, 109, 217);\"><u><strong>点击开通会员</strong></u></span></a> </p><p>点击链接加群：<a href=\"https://www.izhaorui.cn/doc/contact.html\" target=\"_blank\"><span style=\"color: rgb(66, 144, 247);\"><u>点我加入群聊</u></span></a> </p>', 0, NULL, NULL, NULL, 0, NULL, '2025-06-04 13:03:43', NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES (2, '123', 1, '<p>123</p>', 0, '管理员', '2025-06-03 16:00:00', '2025-06-25 16:00:00', 0, 'admin', '2025-06-10 16:03:27', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `OperId` bigint NOT NULL AUTO_INCREMENT COMMENT '操作id',
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作模块',
  `BusinessType` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除 4=授权,5=导出,6=导入,7=强退,8=生成代码,9=清空数据）',
  `Method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `RequestMethod` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求方式',
  `OperatorType` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `OperName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人员',
  `OperUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求url',
  `OperIp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作地址',
  `OperLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作地点',
  `OperParam` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `JsonResult` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '返回参数',
  `Status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `ErrorMsg` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '错误消息',
  `OperTime` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `Elapsed` bigint NULL DEFAULT NULL COMMENT '操作用时',
  `DeptName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`OperId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"cg0y\",\"uuid\":\"82a98245ce3e410d9cf76a5141739638\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 103,  \"msg\": \"验证码错误\"}', 0, NULL, '2025-06-04 12:57:27', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (2, '登录', 0, NULL, 'POST', 0, NULL, '/login', '127.0.0.1', '0 内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"d5k9\",\"uuid\":\"86f58ac21ee14b278bc28d4cf81d36e1\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{\r\n  \"code\": 105,\r\n  \"msg\": \"用户名或密码错误\"\r\n}', 1, '用户名或密码错误', '2025-06-04 12:57:57', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (3, '初始化数据', 1, 'Common.InitSeedData()', 'GET', 0, NULL, '/common/InitSeedData', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"result\": [      \"[用户数据] 插入3 错误0 总共3\",      \"[岗位数据] 插入13 错误0 总共13\",      \"[角色数据] 插入3 错误0 总共3\",      \"[用户角色] 插入3 错误0 总共3\",      \"[菜单数据] 插入143 错误0 总共143\",      \"[系统配置] 插入5 错误0 总共5\",      \"[角色菜单] 插入38 错误0 总共38\",      \"[字典管理] 插入19 错误0 总共19\",      \"[字典数据] 插入49 更新0 错误0 总共49\",      \"[部门数据] 插入5 错误0 总共5\",      \"[文章目录] 插入5 更新0 错误0 总共5\",      \"[文章话题] 插入5 更新0 错误0 总共5\",      \"[通知公告数据] 插入1 更新0 错误0 总共1\"    ]  }}', 0, NULL, '2025-06-04 13:03:44', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (4, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"ywjm\",\"uuid\":\"646b4b878baa4ca2a1132a4128f326a8\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 103,  \"msg\": \"验证码错误\"}', 0, NULL, '2025-06-04 13:04:12', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (5, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"1qth\",\"uuid\":\"131a5a9127994106b36ea001ab886fd8\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiWlJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJaUkFkbWluLk5FVCIsIm5iZiI6MTc0OTAxMzQ2MywiZXhwIjoxNzQ5MDk5ODYzLCJpYXQiOjE3NDkwMTM0NjMsImlzcyI6IlpSQWRtaW4uTkVUIiwiYXVkIjoiWlJBZG1pbi5ORVQifQ.vZ1W-wylgXzACpWn0n1OdsqBMFHlByrM5dkGhCIcs-w\"}', 0, NULL, '2025-06-04 13:04:23', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (6, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"韩语\",\"dictValue\":\"kr\",\"dictSort\":0,\"status\":\"0\",\"dictType\":\"sys_lang_type\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 50}', 0, NULL, '2025-06-04 13:08:11', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (7, '字典数据', 2, 'SysDictData.Edit()', 'PUT', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictCode\":50,\"dictSort\":4,\"dictLabel\":\"韩语\",\"dictValue\":\"kr\",\"dictType\":\"sys_lang_type\",\"cssClass\":\"\",\"listClass\":\"\",\"status\":\"0\",\"langKey\":\"\",\"createBy\":\"admin\",\"createTime\":\"2025-06-04 13:08:11\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 1}', 0, NULL, '2025-06-04 13:08:18', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (8, '强退', 7, 'SysUserOnline.Force()', 'DELETE', 0, 'admin', '/monitor/online/force', '127.0.0.1', '0-内网IP-内网IP', '{\"connnectionId\":\"b7uhyNYyadMbCMS13xa2EA\",\"userid\":1,\"name\":\"admin\",\"loginTime\":\"2025-06-04 13:08:23\",\"userIP\":\"127.0.0.1\",\"location\":\"内网IP\",\"uuid\":\"Windows 10 Other Edge 136.0.01127.0.0.1\",\"browser\":\"Windows 10 Other Edge 136.0.0\",\"platform\":\"web\",\"onlineTime\":7.11,\"todayOnlineTime\":0,\"clientNum\":0,\"clientId\":\"null\",\"time\":10,\"reason\":\"565\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 1}', 0, NULL, '2025-06-04 13:17:57', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (9, '注销', 0, 'SysLogin.LogOut()', 'POST', 0, 'admin', '/LogOut', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"name\": \"admin\",    \"id\": 1  }}', 0, NULL, '2025-06-04 13:17:57', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (10, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"bz8n\",\"uuid\":\"12e666c35ce6472d90851cd3c75d928f\",\"clientId\":\"bf8b5ffb039a7b6c9d1f4c5742e74a00\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiWlJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJaUkFkbWluLk5FVCIsIm5iZiI6MTc0OTAxNDMwMSwiZXhwIjoxNzQ5MTAwNzAxLCJpYXQiOjE3NDkwMTQzMDEsImlzcyI6IlpSQWRtaW4uTkVUIiwiYXVkIjoiWlJBZG1pbi5ORVQifQ.W4CrQZtcKIhPencJTpdWBkqzFA8ZQFkqQtf1FzeDs64\"}', 0, NULL, '2025-06-04 13:18:21', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (11, '邮件模板', 1, 'EmailTpl.AddEmailTpl()', 'POST', 0, 'admin', '/system/EmailTpl', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"23123123\",\"content\":\"<p>大苏打</p>\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"id\": 1,    \"name\": \"23123123\",    \"content\": \"<p>大苏打</p>\",    \"createBy\": \"admin\",    \"createTime\": \"2025-06-04 14:08:25\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-04 14:08:26', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (12, '修改用户状态', 2, NULL, 'PUT', 0, 'admin', '/system/user/changeStatus', '127.0.0.1', '0 内网IP', '{\"userId\":1,\"status\":1}', '{\r\n  \"code\": 0,\r\n  \"msg\": \"不允许操作超级管理员角色\"\r\n}', 1, '不允许操作超级管理员角色', '2025-06-04 14:13:29', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (13, '登录', 0, NULL, 'POST', 0, NULL, '/login', '127.0.0.1', '0 内网IP', '{\"username\":\"demo\",\"password\":\"***\",\"code\":\"y2qe\",\"uuid\":\"ecca26544bd646fc9a467721ea4f05e5\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{\r\n  \"code\": 105,\r\n  \"msg\": \"用户名或密码错误\"\r\n}', 1, '用户名或密码错误', '2025-06-04 16:45:19', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (14, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"c3e2\",\"uuid\":\"c38068a85a954e4882186547c8f70ec9\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiWlJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJaUkFkbWluLk5FVCIsIm5iZiI6MTc0OTAyNjczMywiZXhwIjoxNzQ5MTEzMTMzLCJpYXQiOjE3NDkwMjY3MzMsImlzcyI6IlpSQWRtaW4uTkVUIiwiYXVkIjoiWlJBZG1pbi5ORVQifQ.WBT88Z-p541TFbiwSugKNeRBfUWHhGwDtqH2R8UJ-ZU\"}', 0, NULL, '2025-06-04 16:45:33', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (15, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'demo', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"demo\",\"password\":\"***\",\"code\":\"p21n\",\"uuid\":\"48b393c5e91b4e1c80590ba1ca06113b\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 103,  \"msg\": \"验证码错误\"}', 0, NULL, '2025-06-06 11:43:58', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (16, '登录', 0, NULL, 'POST', 0, NULL, '/login', '127.0.0.1', '0 内网IP', '{\"username\":\"demo\",\"password\":\"***\",\"code\":\"4qhp\",\"uuid\":\"fd9ab7a7f7f64be496b1f790f40af801\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{\r\n  \"code\": 105,\r\n  \"msg\": \"用户名或密码错误\"\r\n}', 1, '用户名或密码错误', '2025-06-06 11:44:27', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (17, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"rftm\",\"uuid\":\"1f70507314604c8693b14842a1e652dc\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 103,  \"msg\": \"验证码错误\"}', 0, NULL, '2025-06-06 11:45:36', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (18, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"brmn\",\"uuid\":\"0a848161d595413eaf0dc81eebf86766\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiWlJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJaUkFkbWluLk5FVCIsIm5iZiI6MTc0OTE4MTU0MSwiZXhwIjoxNzQ5MjY3OTQxLCJpYXQiOjE3NDkxODE1NDEsImlzcyI6IlpSQWRtaW4uTkVUIiwiYXVkIjoiWlJBZG1pbi5ORVQifQ.M8G38XcW1u8XKzefbbyDm55eHCIONqCUCggLeTq95wY\"}', 0, NULL, '2025-06-06 11:45:42', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (19, NULL, 0, NULL, 'GET', 0, 'admin', '/article/ArticleCategory/treelist', '127.0.0.1', '0 内网IP', '?pageNum=1&pageSize=10&categoryType=', '{\r\n  \"code\": 500,\r\n  \"msg\": \"服务器好像出了点问题，请联系系统管理员...\",\r\n  \"error\": \"请在issue里面寻找答案或者官方文档查看常见问题：https://gitee.com/izory/ZrAdminNetCore/issues\"\r\n}', 1, '异常原因：Table \'yblistdb.article_category\' doesn\'t exist', '2025-06-06 11:46:50', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (20, NULL, 0, NULL, 'GET', 0, 'admin', '/article/ArticleCategory/treelist', '127.0.0.1', '0 内网IP', '', '{\r\n  \"code\": 500,\r\n  \"msg\": \"服务器好像出了点问题，请联系系统管理员...\",\r\n  \"error\": \"请在issue里面寻找答案或者官方文档查看常见问题：https://gitee.com/izory/ZrAdminNetCore/issues\"\r\n}', 1, '异常原因：Table \'yblistdb.article_category\' doesn\'t exist', '2025-06-06 11:46:50', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (21, NULL, 0, NULL, 'GET', 0, 'admin', '/Article/list', '127.0.0.1', '0 内网IP', '?sort=cid&sortType=desc&status=&isPublic=&isTop=&articleType=&auditStatus=', '{\r\n  \"code\": 500,\r\n  \"msg\": \"服务器好像出了点问题，请联系系统管理员...\",\r\n  \"error\": \"请在issue里面寻找答案或者官方文档查看常见问题：https://gitee.com/izory/ZrAdminNetCore/issues\"\r\n}', 1, '异常原因：Table \'yblistdb.article_category\' doesn\'t exist', '2025-06-06 11:46:50', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (22, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"23123123\",\"parentId\":2,\"icon\":\"pc\",\"orderNum\":0,\"categoryType\":0,\"introduce\":\"123123\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 11:49:49', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (23, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"1112\",\"parentId\":0,\"icon\":\"\",\"orderNum\":0,\"categoryType\":0,\"attributeJson\":\"222\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 21:18:20', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (24, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"1112\",\"parentId\":0,\"icon\":\"\",\"orderNum\":0,\"categoryType\":0,\"attributeJson\":\"2222\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 21:19:08', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (25, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"22223\",\"parentId\":0,\"icon\":\"\",\"orderNum\":0,\"categoryType\":0,\"attributeJson\":\"222\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 21:24:18', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (26, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"22\",\"parentId\":0,\"icon\":\"\",\"orderNum\":0,\"categoryType\":0,\"attributeJson\":\"2\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 21:30:30', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (27, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"22\",\"parentId\":0,\"icon\":\"\",\"orderNum\":0,\"categoryType\":0,\"attributeJson\":\"2\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 21:30:30', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (28, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"22\",\"parentId\":0,\"icon\":\"\",\"orderNum\":0,\"categoryType\":0,\"attributeJson\":\"22\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 21:32:05', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (29, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"333\",\"parentId\":0,\"icon\":\"\",\"orderNum\":0,\"categoryType\":0,\"attributeJson\":\"33\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 21:32:22', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (30, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"4\",\"parentId\":0,\"icon\":\"\",\"orderNum\":0,\"categoryType\":0,\"attributeJson\":\"44\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 21:32:33', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (31, '文章目录', 2, 'ArticleCategory.UpdateArticleCategory()', 'PUT', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"categoryId\":14,\"name\":\"44\",\"icon\":\"\",\"orderNum\":0,\"parentId\":0,\"categoryType\":0,\"articleNum\":0,\"joinNum\":0,\"createTime\":\"2025-06-06 21:32:33\",\"attributeJson\":\"4444\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 21:33:48', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (32, '文章目录', 2, 'ArticleCategory.UpdateArticleCategory()', 'PUT', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"categoryId\":14,\"name\":\"44\",\"icon\":\"\",\"orderNum\":0,\"parentId\":0,\"categoryType\":0,\"articleNum\":0,\"joinNum\":0,\"createTime\":\"2025-06-06 21:32:33\",\"attributeJson\":[\"4\",\"4\",\"4\",\"4\",\"啊实打实的\",\"asdasd\"]}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-06 21:45:24', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (33, '文章目录', 2, 'ArticleCategory.UpdateArticleCategory()', 'PUT', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"categoryId\":5,\"name\":\"官方圈子\",\"orderNum\":0,\"parentId\":0,\"categoryType\":1,\"articleNum\":0,\"joinNum\":0,\"createTime\":\"2025-06-04 13:03:43\",\"attributeJson\":[\"全文\",\"qweqwe\"]}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-06 21:45:38', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (34, '文章目录', 2, 'ArticleCategory.UpdateArticleCategory()', 'PUT', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"categoryId\":14,\"name\":\"44\",\"icon\":\"\",\"orderNum\":0,\"parentId\":0,\"categoryType\":0,\"articleNum\":0,\"joinNum\":0,\"createTime\":\"2025-06-06 21:32:33\",\"attributeJson\":[\"45\",\"4555\",\"45\"]}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-06 21:52:15', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (35, '文章目录', 2, 'ArticleCategory.UpdateArticleCategory()', 'PUT', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"categoryId\":14,\"name\":\"44\",\"icon\":\"\",\"orderNum\":0,\"parentId\":0,\"categoryType\":0,\"articleNum\":0,\"joinNum\":0,\"createTime\":\"2025-06-06 21:32:33\",\"attributeJson\":[\"45\",\"45\",\"56\"]}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-06 21:53:58', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (36, '文章目录', 2, 'ArticleCategory.UpdateArticleCategory()', 'PUT', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"categoryId\":14,\"name\":\"44\",\"icon\":\"\",\"orderNum\":0,\"parentId\":0,\"categoryType\":0,\"articleNum\":0,\"joinNum\":0,\"createTime\":\"2025-06-06 21:32:33\",\"attributeJson\":\"123,456\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-06 22:06:21', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (37, '注销', 0, 'SysLogin.LogOut()', 'POST', 0, 'admin', '/LogOut', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"name\": null,    \"id\": 0  }}', 0, NULL, '2025-06-07 20:53:01', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (38, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"v58v\",\"uuid\":\"7c1298c48529404bb3b3481d827f2908\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiWlJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJaUkFkbWluLk5FVCIsIm5iZiI6MTc0OTMwNzE0MiwiZXhwIjoxNzQ5MzkzNTQyLCJpYXQiOjE3NDkzMDcxNDIsImlzcyI6IlpSQWRtaW4uTkVUIiwiYXVkIjoiWlJBZG1pbi5ORVQifQ.oK7eJYXr296V77M_ft7yeUzXZ4VHgzEg_2DYqgmWPvA\"}', 0, NULL, '2025-06-07 22:39:02', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (39, '注销', 0, 'SysLogin.LogOut()', 'POST', 0, 'admin', '/LogOut', '127.0.0.1', '0-内网IP-内网IP', '{}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"name\": \"admin\",    \"id\": 1  }}', 0, NULL, '2025-06-07 22:40:30', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (40, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"1x47\",\"uuid\":\"2ba8bf20ccd94ce598edb6d3898f331c\",\"clientId\":\"c34a564d79bf1b173159f455388caf98\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiWlJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJaUkFkbWluLk5FVCIsIm5iZiI6MTc0OTMwNzM4NywiZXhwIjoxNzQ5MzkzNzg3LCJpYXQiOjE3NDkzMDczODcsImlzcyI6IlpSQWRtaW4uTkVUIiwiYXVkIjoiWlJBZG1pbi5ORVQifQ.fFvDCr9llfI7cPOpN9odkiCvdj5Kj80F3JzcSCeUCYo\"}', 0, NULL, '2025-06-07 22:43:07', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (41, '注销', 0, 'SysLogin.LogOut()', 'POST', 0, 'admin', '/LogOut', '127.0.0.1', '0-内网IP-内网IP', '{}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"name\": \"admin\",    \"id\": 1  }}', 0, NULL, '2025-06-07 22:43:18', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (42, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"rrn1\",\"uuid\":\"11a8b6f59c1b4b0ba7946948d48cee52\",\"clientId\":\"c34a564d79bf1b173159f455388caf98\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiWlJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJaUkFkbWluLk5FVCIsIm5iZiI6MTc0OTMwNzQwOSwiZXhwIjoxNzQ5MzkzODA5LCJpYXQiOjE3NDkzMDc0MDksImlzcyI6IlpSQWRtaW4uTkVUIiwiYXVkIjoiWlJBZG1pbi5ORVQifQ.Ntdm1nqAh0y4JzTIbg-o7uxLeW54mY32pW3kyxh4GjY\"}', 0, NULL, '2025-06-07 22:43:29', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (43, '注销', 0, 'SysLogin.LogOut()', 'POST', 0, 'admin', '/LogOut', '127.0.0.1', '0-内网IP-内网IP', '{}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"name\": \"admin\",    \"id\": 1  }}', 0, NULL, '2025-06-07 22:43:37', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (44, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"tsd1\",\"uuid\":\"ce4ef7d2059745a08405e10c4e27cd25\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiWlJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJaUkFkbWluLk5FVCIsIm5iZiI6MTc0OTMwNzQ0MSwiZXhwIjoxNzQ5MzkzODQxLCJpYXQiOjE3NDkzMDc0NDEsImlzcyI6IlpSQWRtaW4uTkVUIiwiYXVkIjoiWlJBZG1pbi5ORVQifQ.361tn-5feFyX_ilAmfjCHe2DNCynzMZFLrkOegIO8xc\"}', 0, NULL, '2025-06-07 22:44:02', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (45, NULL, 0, NULL, 'GET', 0, 'admin', '/article/ArticleCategory/treelist', '127.0.0.1', '0 内网IP', '?pageNum=1&pageSize=10&categoryType=', '{\r\n  \"code\": 500,\r\n  \"msg\": \"服务器好像出了点问题，请联系系统管理员...\",\r\n  \"error\": \"请在issue里面寻找答案或者官方文档查看常见问题：https://gitee.com/izory/ZrAdminNetCore/issues\"\r\n}', 1, '异常原因：Unknown column \'TemplatePath\' in \'field list\'', '2025-06-07 23:12:01', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (46, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"12\",\"parentId\":0,\"icon\":\"\",\"orderNum\":0,\"categoryType\":0,\"templatePath\":\"23\",\"attributeTable\":\"3\",\"attributeJson\":\"123\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-07 23:17:50', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (47, '文章目录', 1, 'ArticleCategory.AddArticleCategory()', 'POST', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"name\":\"1\",\"parentId\":0,\"icon\":\"\",\"orderNum\":0,\"categoryType\":0,\"introduce\":\"2\",\"attributeJson\":\"3\",\"templatePath\":\"4\",\"attributeTable\":\"5\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-07 23:18:14', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (48, '文章目录', 3, 'ArticleCategory.DeleteArticleCategory()', 'DELETE', 0, 'admin', '/article/ArticleCategory/16', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-07 23:18:38', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (49, '文章目录', 2, 'ArticleCategory.UpdateArticleCategory()', 'PUT', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"categoryId\":15,\"name\":\"12\",\"icon\":\"\",\"orderNum\":0,\"parentId\":0,\"introduce\":\"2222\",\"categoryType\":0,\"articleNum\":0,\"joinNum\":0,\"createTime\":\"2025-06-07 23:17:50\",\"attributeJson\":\"123\",\"templatePath\":\"23\",\"attributeTable\":\"3\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-08 21:38:05', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (50, '文章目录', 2, 'ArticleCategory.UpdateArticleCategory()', 'PUT', 0, 'admin', '/article/ArticleCategory', '127.0.0.1', '0-内网IP-内网IP', '{\"categoryId\":15,\"name\":\"12\",\"icon\":\"\",\"orderNum\":0,\"parentId\":0,\"introduce\":\"2222222222222222222222222222222222222222\",\"categoryType\":0,\"articleNum\":0,\"joinNum\":0,\"createTime\":\"2025-06-07 23:17:50\",\"attributeJson\":\"123\",\"templatePath\":\"23\",\"attributeTable\":\"3\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-08 21:38:13', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (51, '注销', 0, 'SysLogin.LogOut()', 'POST', 0, '', '/LogOut', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"name\": null,    \"id\": 0  }}', 0, NULL, '2025-06-10 10:38:21', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (52, '注销', 0, 'SysLogin.LogOut()', 'POST', 0, NULL, '/LogOut', '127.0.0.1', '0-内网IP-内网IP', '{}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"name\": null,    \"id\": 0  }}', 0, NULL, '2025-06-10 10:38:22', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (53, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"schw\",\"uuid\":\"b8e535084ec54198abf56aaed14977de\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiWlJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJaUkFkbWluLk5FVCIsIm5iZiI6MTc0OTUyMzExNiwiZXhwIjoxNzQ5NjA5NTE2LCJpYXQiOjE3NDk1MjMxMTYsImlzcyI6IlpSQWRtaW4uTkVUIiwiYXVkIjoiWlJBZG1pbi5ORVQifQ.8-DtEtG82JBaKvREKrStyATHN1A__1Hk_u9WrrtHEYc\"}', 0, NULL, '2025-06-10 10:38:37', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (54, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"website\",\"status\":\"0\",\"type\":\"Y\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 20}', 0, NULL, '2025-06-10 10:49:49', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (55, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:28', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (56, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:33', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (57, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:35', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (58, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:35', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (59, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:37', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (60, '删除字典类型', 3, NULL, 'DELETE', 0, 'admin', '/system/dict/type/20', '127.0.0.1', '0 内网IP', '', '{\r\n  \"code\": 0,\r\n  \"msg\": \"删除失败Id： 系统内置参数不能删除！\"\r\n}', 1, '删除失败Id： 系统内置参数不能删除！', '2025-06-10 10:50:49', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (61, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:55', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (62, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:57', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (63, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:58', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (64, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:58', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (65, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:59', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (66, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:59', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (67, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:50:59', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (68, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:51:00', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (69, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:51:00', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (70, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:51:00', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (71, '字典操作', 2, 'SysDictType.Edit()', 'PUT', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictId\":20,\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:49:49\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:51:00', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (72, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:06', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (73, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:11', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (74, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:27', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (75, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:28', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (76, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:29', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (77, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:31', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (78, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:31', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (79, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:32', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (80, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:32', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (81, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:32', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (82, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:32', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (83, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:33', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (84, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:34', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (85, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:36', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (86, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:37', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (87, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"FrontEnd_WebSite\",\"status\":\"0\",\"type\":\"Y\"}', 'Infrastructure.Model.ApiResult', 0, NULL, '2025-06-10 10:53:38', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (88, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-网站设置\",\"dictType\":\"frontend_website\",\"status\":\"0\",\"type\":\"Y\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 21}', 0, NULL, '2025-06-10 10:53:47', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (89, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"网站名称\",\"dictValue\":\"Title\",\"dictSort\":0,\"status\":\"0\",\"dictType\":\"frontend_website\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 51}', 0, NULL, '2025-06-10 10:56:04', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (90, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"描述\",\"dictValue\":\"1\",\"dictSort\":0,\"status\":\"0\",\"dictType\":\"frontend_website\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 52}', 0, NULL, '2025-06-10 10:56:16', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (91, '字典数据', 2, 'SysDictData.Edit()', 'PUT', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictCode\":52,\"dictSort\":0,\"dictLabel\":\"网站描述\",\"dictValue\":\"1\",\"dictType\":\"frontend_website\",\"cssClass\":\"\",\"listClass\":\"\",\"status\":\"0\",\"langKey\":\"\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 10:56:16\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 1}', 0, NULL, '2025-06-10 10:56:59', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (92, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"网站关键词\",\"dictValue\":\"1\",\"dictSort\":0,\"status\":\"0\",\"dictType\":\"frontend_website\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 53}', 0, NULL, '2025-06-10 10:57:12', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (93, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"网站联系方式\",\"dictValue\":\"1\",\"dictSort\":0,\"status\":\"0\",\"dictType\":\"frontend_website\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 54}', 0, NULL, '2025-06-10 10:57:22', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (94, '注销', 0, 'SysLogin.LogOut()', 'POST', 0, 'admin', '/LogOut', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"name\": \"admin\",    \"id\": 1  }}', 0, NULL, '2025-06-10 12:32:45', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (95, '登录', 0, NULL, 'POST', 0, NULL, '/login', '127.0.0.1', '0 内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"zbws\",\"uuid\":\"c0a923e126b840acb578ffc2772c3653\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{\r\n  \"code\": 105,\r\n  \"msg\": \"用户名或密码错误\"\r\n}', 1, '用户名或密码错误', '2025-06-10 12:33:56', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (96, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"zbws\",\"uuid\":\"c0a923e126b840acb578ffc2772c3653\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 103,  \"msg\": \"验证码错误\"}', 0, NULL, '2025-06-10 12:33:56', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (97, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"xrp4\",\"uuid\":\"1d52898efbca4077bd130417f60bd4fd\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiWlJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJaUkFkbWluLk5FVCIsIm5iZiI6MTc0OTUzMDA0NywiZXhwIjoxNzQ5NjE2NDQ3LCJpYXQiOjE3NDk1MzAwNDcsImlzcyI6IlpSQWRtaW4uTkVUIiwiYXVkIjoiWlJBZG1pbi5ORVQifQ.LxTBWvrnlOaGdhkK9yr-Ic0WYCKF-n7vkOQTjZluaak\"}', 0, NULL, '2025-06-10 12:34:07', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (98, '用户管理', 1, 'SysUser.AddUser()', 'POST', 0, 'admin', '/system/user/add', '127.0.0.1', '0-内网IP-内网IP', '{\"userName\":\"123\",\"nickName\":\"123\",\"password\":\"***\",\"email\":\"996991818@qq.com\",\"sex\":2,\"status\":0,\"postIds\":[],\"roleIds\":[]}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"userId\": 4,    \"userName\": \"123\",    \"nickName\": \"123\",    \"userType\": \"00\",    \"avatar\": null,    \"email\": \"996991818@qq.com\",    \"phonenumber\": null,    \"sex\": 2,    \"status\": 0,    \"delFlag\": 0,    \"loginIP\": null,    \"loginDate\": null,    \"deptId\": 0,    \"province\": null,    \"city\": null,    \"isAdmin\": false,    \"deptName\": null,    \"roleIds\": [],    \"postIds\": [],    \"roles\": null,    \"welcomeMessage\": \"中午好\",    \"welcomeContent\": null,    \"createBy\": \"admin\",    \"createTime\": \"2025-06-10 12:34:19\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 12:34:20', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (99, '用户管理', 3, 'SysUser.Remove()', 'DELETE', 0, 'admin', '/system/user/4', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-10 12:34:44', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (100, '字典操作', 1, 'SysDictType.Add()', 'POST', 0, 'admin', '/system/dict/type/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"dictName\":\"前端-板块\",\"dictType\":\"frontend_category\",\"status\":\"0\",\"type\":\"N\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 22}', 0, NULL, '2025-06-10 14:03:46', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (101, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"房屋\",\"dictValue\":\"Houses\",\"dictSort\":0,\"status\":\"0\",\"dictType\":\"frontend_category\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 55}', 0, NULL, '2025-06-10 14:08:28', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (102, '字典数据', 2, 'SysDictData.Edit()', 'PUT', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictCode\":55,\"dictSort\":100,\"dictLabel\":\"房屋\",\"dictValue\":\"Houses\",\"dictType\":\"frontend_category\",\"cssClass\":\"\",\"listClass\":\"\",\"status\":\"0\",\"langKey\":\"\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 14:08:28\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 1}', 0, NULL, '2025-06-10 14:08:36', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (103, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"车辆\",\"dictValue\":\"Vehicles\",\"dictSort\":200,\"status\":\"0\",\"dictType\":\"frontend_category\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 56}', 0, NULL, '2025-06-10 14:09:20', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (104, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"求职\",\"dictValue\":\"JobHunting\",\"dictSort\":300,\"status\":\"0\",\"dictType\":\"frontend_category\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 57}', 0, NULL, '2025-06-10 14:11:03', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (105, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"招聘\",\"dictValue\":\"Recruitment\",\"dictSort\":400,\"status\":\"0\",\"dictType\":\"frontend_category\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 58}', 0, NULL, '2025-06-10 14:11:14', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (106, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"旧货\",\"dictValue\":\"SecondHand\",\"dictSort\":500,\"status\":\"0\",\"dictType\":\"frontend_category\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 59}', 0, NULL, '2025-06-10 14:12:25', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (107, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"企业\",\"dictValue\":\"BusinessPromotion\",\"dictSort\":0,\"status\":\"0\",\"dictType\":\"frontend_category\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 60}', 0, NULL, '2025-06-10 14:12:44', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (108, '字典数据', 2, 'SysDictData.Edit()', 'PUT', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictCode\":60,\"dictSort\":600,\"dictLabel\":\"企业\",\"dictValue\":\"BusinessPromotion\",\"dictType\":\"frontend_category\",\"cssClass\":\"\",\"listClass\":\"\",\"status\":\"0\",\"langKey\":\"\",\"createBy\":\"admin\",\"createTime\":\"2025-06-10 14:12:43\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 1}', 0, NULL, '2025-06-10 14:12:52', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (109, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"交友\",\"dictValue\":\"Dating\",\"dictSort\":700,\"status\":\"0\",\"dictType\":\"frontend_category\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 61}', 0, NULL, '2025-06-10 14:13:32', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (110, '字典数据', 1, 'SysDictData.Add()', 'POST', 0, 'admin', '/system/dict/data', '127.0.0.1', '0-内网IP-内网IP', '{\"dictLabel\":\"问答\",\"dictValue\":\"Q&A\",\"dictSort\":800,\"status\":\"0\",\"dictType\":\"frontend_category\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 62}', 0, NULL, '2025-06-10 14:13:53', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 6, 'CodeGenerator.ImportTableSave()', 'POST', 0, 'admin', '/tool/gen/importTable', '127.0.0.1', '0-内网IP-内网IP', '{\"tables\":[{\"name\":\"sys_area\",\"description\":\"行政区域/省区表\",\"dbObjectType\":0}],\"dbName\":\"yblistdb\",\"frontTpl\":2}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-10 15:16:06', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 6, 'CodeGenerator.ImportTableSave()', 'POST', 0, 'admin', '/tool/gen/importTable', '127.0.0.1', '0-内网IP-内网IP', '{\"tables\":[{\"name\":\"sys_area\",\"description\":\"行政区域/省区表\",\"dbObjectType\":0},{\"name\":\"sys_user_extend\",\"description\":\"用户扩展信息表\",\"dbObjectType\":0}],\"dbName\":\"yblistdb\",\"frontTpl\":2}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-10 15:16:20', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 6, 'CodeGenerator.ImportTableSave()', 'POST', 0, 'admin', '/tool/gen/importTable', '127.0.0.1', '0-内网IP-内网IP', '{\"tables\":[{\"name\":\"sys_area\",\"description\":\"行政区域/省区表\",\"dbObjectType\":0},{\"name\":\"sys_user_extend\",\"description\":\"用户扩展信息表\",\"dbObjectType\":0}],\"dbName\":\"yblistdb\",\"frontTpl\":2}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-10 15:16:21', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (114, '注销', 0, 'SysLogin.LogOut()', 'POST', 0, 'admin', '/LogOut', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"name\": null,    \"id\": 0  }}', 0, NULL, '2025-06-10 15:27:50', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (115, '登录', 0, 'SysLogin.Login()', 'POST', 0, 'admin', '/login', '127.0.0.1', '0-内网IP-内网IP', '{\"username\":\"admin\",\"password\":\"***\",\"code\":\"xhbh\",\"uuid\":\"48f31f8004964b93bd85d50887d8ad53\",\"clientId\":\"20b3630bd476ad6ffd0b47041d67d85c\",\"tenantId\":\"tenant0\"}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkJlYXJlciJ9.eyJwcmltYXJ5c2lkIjoiMSIsIm5hbWVpZCI6IjEiLCJ1bmlxdWVfbmFtZSI6ImFkbWluIiwiZ3JvdXBzaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IntcIlVzZXJJZFwiOjEsXCJEZXB0SWRcIjowLFwiVXNlck5hbWVcIjpcImFkbWluXCIsXCJOaWNrTmFtZVwiOlwi566h55CG5ZGYXCIsXCJSb2xlSWRzXCI6W1wiYWRtaW5cIl0sXCJSb2xlc1wiOlt7XCJSb2xlSWRcIjoxLFwiUm9sZUtleVwiOlwiYWRtaW5cIixcIkRhdGFTY29wZVwiOjF9XSxcIkV4cGlyZVRpbWVcIjpcIjAwMDEtMDEtMDFUMDA6MDA6MDBcIixcIlRlbmFudElkXCI6XCJ0ZW5hbnQwXCJ9IiwicHJpbWFyeWdyb3Vwc2lkIjoidGVuYW50MCIsIkF1ZGllbmNlIjoiSFJBZG1pbi5ORVQiLCJJc3N1ZXIiOiJIUkFkbWluLk5FVCIsIm5iZiI6MTc0OTU0MDQ4MSwiZXhwIjoxNzQ5NjI2ODgxLCJpYXQiOjE3NDk1NDA0ODEsImlzcyI6IkhSQWRtaW4uTkVUIiwiYXVkIjoiSFJBZG1pbi5ORVQifQ.vvAhf_s9SqTQpRS-g3DsySKTNxsCz2k_JAQy99T7W7U\"}', 0, NULL, '2025-06-10 15:28:01', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 8, 'CodeGenerator.EditSave()', 'PUT', 0, 'admin', '/tool/gen/', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 110,  \"msg\": \"模块名不能和业务名一样\"}', 0, NULL, '2025-06-10 15:32:22', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 8, 'CodeGenerator.EditSave()', 'PUT', 0, 'admin', '/tool/gen/', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": true}', 0, NULL, '2025-06-10 15:32:31', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 8, 'CodeGenerator.EditSave()', 'PUT', 0, 'admin', '/tool/gen/', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": true}', 0, NULL, '2025-06-10 15:33:00', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (119, '发送邮件', 0, 'EmailLog.SendEmail()', 'POST', 0, 'admin', '/common/SendEmail', '127.0.0.1', '0-内网IP-内网IP', '{\"fileUrl\":\"\",\"htmlContent\":\"<p>qweqwe</p>\",\"toEmails\":[\"blandh26@gmail.com\"],\"email\":\"\",\"fromName\":\"system\",\"subject\":\"qqwe\",\"toUser\":\"blandh26@gmail.com\"}', '{  \"code\": 110,  \"msg\": \"请配置邮箱信息\"}', 0, NULL, '2025-06-10 16:02:59', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (120, '发布通告', 1, 'SysNotice.AddSysNotice()', 'POST', 0, 'admin', '/system/notice', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 2}', 0, NULL, '2025-06-10 16:03:27', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (121, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/1', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 1,    \"noticeTitle\": \"首页公告\",    \"noticeType\": 2,    \"noticeContent\": \"<p>开通会员详情： <a href=\\\"http://www.izhaorui.cn/vip\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(9, 109, 217);\\\"><u><strong>点击开通会员</strong></u></span></a> </p><p>点击链接加群：<a href=\\\"https://www.izhaorui.cn/doc/contact.html\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(66, 144, 247);\\\"><u>点我加入群聊</u></span></a> </p>\",    \"status\": 0,    \"publisher\": null,    \"beginTime\": null,    \"endTime\": null,    \"popup\": 0,    \"createBy\": null,    \"createTime\": \"2025-06-04 13:03:43\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:03:31', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (122, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/1', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 1,    \"noticeTitle\": \"首页公告\",    \"noticeType\": 2,    \"noticeContent\": \"<p>开通会员详情： <a href=\\\"http://www.izhaorui.cn/vip\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(9, 109, 217);\\\"><u><strong>点击开通会员</strong></u></span></a> </p><p>点击链接加群：<a href=\\\"https://www.izhaorui.cn/doc/contact.html\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(66, 144, 247);\\\"><u>点我加入群聊</u></span></a> </p>\",    \"status\": 0,    \"publisher\": null,    \"beginTime\": null,    \"endTime\": null,    \"popup\": 0,    \"createBy\": null,    \"createTime\": \"2025-06-04 13:03:43\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:03:33', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (123, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/1', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 1,    \"noticeTitle\": \"首页公告\",    \"noticeType\": 2,    \"noticeContent\": \"<p>开通会员详情： <a href=\\\"http://www.izhaorui.cn/vip\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(9, 109, 217);\\\"><u><strong>点击开通会员</strong></u></span></a> </p><p>点击链接加群：<a href=\\\"https://www.izhaorui.cn/doc/contact.html\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(66, 144, 247);\\\"><u>点我加入群聊</u></span></a> </p>\",    \"status\": 0,    \"publisher\": null,    \"beginTime\": null,    \"endTime\": null,    \"popup\": 0,    \"createBy\": null,    \"createTime\": \"2025-06-04 13:03:43\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:03:33', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (124, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/1', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 1,    \"noticeTitle\": \"首页公告\",    \"noticeType\": 2,    \"noticeContent\": \"<p>开通会员详情： <a href=\\\"http://www.izhaorui.cn/vip\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(9, 109, 217);\\\"><u><strong>点击开通会员</strong></u></span></a> </p><p>点击链接加群：<a href=\\\"https://www.izhaorui.cn/doc/contact.html\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(66, 144, 247);\\\"><u>点我加入群聊</u></span></a> </p>\",    \"status\": 0,    \"publisher\": null,    \"beginTime\": null,    \"endTime\": null,    \"popup\": 0,    \"createBy\": null,    \"createTime\": \"2025-06-04 13:03:43\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:03:34', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (125, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/1', '127.0.0.1', '0-内网IP-内网IP', '{}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 1,    \"noticeTitle\": \"首页公告\",    \"noticeType\": 2,    \"noticeContent\": \"<p>开通会员详情： <a href=\\\"http://www.izhaorui.cn/vip\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(9, 109, 217);\\\"><u><strong>点击开通会员</strong></u></span></a> </p><p>点击链接加群：<a href=\\\"https://www.izhaorui.cn/doc/contact.html\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(66, 144, 247);\\\"><u>点我加入群聊</u></span></a> </p>\",    \"status\": 0,    \"publisher\": null,    \"beginTime\": null,    \"endTime\": null,    \"popup\": 0,    \"createBy\": null,    \"createTime\": \"2025-06-04 13:03:43\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:03:34', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (126, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/1', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 1,    \"noticeTitle\": \"首页公告\",    \"noticeType\": 2,    \"noticeContent\": \"<p>开通会员详情： <a href=\\\"http://www.izhaorui.cn/vip\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(9, 109, 217);\\\"><u><strong>点击开通会员</strong></u></span></a> </p><p>点击链接加群：<a href=\\\"https://www.izhaorui.cn/doc/contact.html\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(66, 144, 247);\\\"><u>点我加入群聊</u></span></a> </p>\",    \"status\": 0,    \"publisher\": null,    \"beginTime\": null,    \"endTime\": null,    \"popup\": 0,    \"createBy\": null,    \"createTime\": \"2025-06-04 13:03:43\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:03:34', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (127, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/1', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 1,    \"noticeTitle\": \"首页公告\",    \"noticeType\": 2,    \"noticeContent\": \"<p>开通会员详情： <a href=\\\"http://www.izhaorui.cn/vip\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(9, 109, 217);\\\"><u><strong>点击开通会员</strong></u></span></a> </p><p>点击链接加群：<a href=\\\"https://www.izhaorui.cn/doc/contact.html\\\" target=\\\"_blank\\\"><span style=\\\"color: rgb(66, 144, 247);\\\"><u>点我加入群聊</u></span></a> </p>\",    \"status\": 0,    \"publisher\": null,    \"beginTime\": null,    \"endTime\": null,    \"popup\": 0,    \"createBy\": null,    \"createTime\": \"2025-06-04 13:03:43\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:03:34', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (128, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/2', '127.0.0.1', '0-内网IP-内网IP', '{}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 2,    \"noticeTitle\": \"123\",    \"noticeType\": 1,    \"noticeContent\": \"<p>123</p>\",    \"status\": 0,    \"publisher\": \"管理员\",    \"beginTime\": \"2025-06-03 16:00:00\",    \"endTime\": \"2025-06-25 16:00:00\",    \"popup\": 0,    \"createBy\": \"admin\",    \"createTime\": \"2025-06-10 16:03:27\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:03:55', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (129, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/2', '127.0.0.1', '0-内网IP-内网IP', '{}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 2,    \"noticeTitle\": \"123\",    \"noticeType\": 1,    \"noticeContent\": \"<p>123</p>\",    \"status\": 0,    \"publisher\": \"管理员\",    \"beginTime\": \"2025-06-03 16:00:00\",    \"endTime\": \"2025-06-25 16:00:00\",    \"popup\": 0,    \"createBy\": \"admin\",    \"createTime\": \"2025-06-10 16:03:27\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:04:03', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (130, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/2', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 2,    \"noticeTitle\": \"123\",    \"noticeType\": 1,    \"noticeContent\": \"<p>123</p>\",    \"status\": 0,    \"publisher\": \"管理员\",    \"beginTime\": \"2025-06-03 16:00:00\",    \"endTime\": \"2025-06-25 16:00:00\",    \"popup\": 0,    \"createBy\": \"admin\",    \"createTime\": \"2025-06-10 16:03:27\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:04:04', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (131, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/2', '127.0.0.1', '0-内网IP-内网IP', '{}', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 2,    \"noticeTitle\": \"123\",    \"noticeType\": 1,    \"noticeContent\": \"<p>123</p>\",    \"status\": 0,    \"publisher\": \"管理员\",    \"beginTime\": \"2025-06-03 16:00:00\",    \"endTime\": \"2025-06-25 16:00:00\",    \"popup\": 0,    \"createBy\": \"admin\",    \"createTime\": \"2025-06-10 16:03:27\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:04:05', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (132, '发送通知公告', 0, 'SysNotice.SendNotice()', 'PUT', 0, 'admin', '/system/notice/send/2', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": {    \"noticeId\": 2,    \"noticeTitle\": \"123\",    \"noticeType\": 1,    \"noticeContent\": \"<p>123</p>\",    \"status\": 0,    \"publisher\": \"管理员\",    \"beginTime\": \"2025-06-03 16:00:00\",    \"endTime\": \"2025-06-25 16:00:00\",    \"popup\": 0,    \"createBy\": \"admin\",    \"createTime\": \"2025-06-10 16:03:27\",    \"updateTime\": null,    \"remark\": null  }}', 0, NULL, '2025-06-10 16:04:05', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 2, 'SysMenu.MenuEdit()', 'POST', 0, 'admin', '/system/Menu/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"menuId\":1123,\"menuName\":\"用户扩展信息表\",\"parentId\":3,\"orderNum\":999,\"path\":\"UserExtend\",\"component\":\"business/UserExtend\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuType\":\"C\",\"visible\":\"0\",\"status\":\"0\",\"perms\":\"userextend:list\",\"icon\":\"icon1\",\"children\":[],\"subNum\":0,\"hasChildren\":false,\"createBy\":\"system\",\"createTime\":\"2025-06-10 20:10:31\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-10 20:11:57', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'SysMenu.MenuEdit()', 'POST', 0, 'admin', '/system/Menu/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"menuId\":1123,\"menuName\":\"用户扩展信息表\",\"parentId\":1,\"orderNum\":999,\"path\":\"UserExtend\",\"component\":\"business/UserExtend\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuType\":\"C\",\"visible\":\"0\",\"status\":\"0\",\"perms\":\"userextend:list\",\"icon\":\"icon1\",\"children\":[],\"subNum\":0,\"hasChildren\":false,\"createBy\":\"system\",\"createTime\":\"2025-06-10 20:10:31\",\"updateTime\":\"2025-06-10 20:11:57\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-10 20:12:25', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (135, NULL, 0, NULL, 'GET', 0, 'admin', '/System/UserExtend/list', '127.0.0.1', '0 内网IP', '?pageNum=1&pageSize=10&sort=&sortType=asc', '{\r\n  \"code\": 500,\r\n  \"msg\": \"服务器好像出了点问题，请联系系统管理员...\",\r\n  \"error\": \"请在issue里面寻找答案或者官方文档查看常见问题：https://github.com/blandh26/HrAdmin_Net/issues\"\r\n}', 1, '异常原因：Table \'yblistdb.userextend\' doesn\'t exist', '2025-06-10 20:36:41', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 3, 'CodeGenerator.Remove()', 'DELETE', 0, 'admin', '/tool/gen/5', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": 30}', 0, NULL, '2025-06-10 20:56:13', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 8, 'CodeGenerator.EditSave()', 'PUT', 0, 'admin', '/tool/gen/', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": true}', 0, NULL, '2025-06-10 20:59:41', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 2, 'SysMenu.MenuEdit()', 'POST', 0, 'admin', '/system/Menu/edit', '127.0.0.1', '0-内网IP-内网IP', '{\"menuId\":1128,\"menuName\":\"行政区域\",\"parentId\":1,\"orderNum\":999,\"path\":\"SysArea\",\"component\":\"system/area/index\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuType\":\"C\",\"visible\":\"0\",\"status\":\"0\",\"perms\":\"area:list\",\"icon\":\"tree-table\",\"children\":[],\"subNum\":0,\"hasChildren\":false,\"createBy\":\"system\",\"createTime\":\"2025-06-10 21:03:17\"}', '{  \"code\": 200,  \"msg\": \"success\"}', 0, NULL, '2025-06-10 21:04:24', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 8, 'CodeGenerator.EditSave()', 'PUT', 0, 'admin', '/tool/gen/', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": true}', 0, NULL, '2025-06-10 22:24:08', 0, NULL);
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 8, 'CodeGenerator.EditSave()', 'PUT', 0, 'admin', '/tool/gen/', '127.0.0.1', '0-内网IP-内网IP', '', '{  \"code\": 200,  \"msg\": \"success\",  \"data\": true}', 0, NULL, '2025-06-10 22:30:00', 0, NULL);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `PostId` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位Id',
  `PostCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PostName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PostSort` int NOT NULL,
  `Status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PostId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'CEO', '董事长', 1, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (2, 'SE', '项目经理', 2, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (3, 'HR', '人力资源', 3, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (4, 'USER', '普通员工', 4, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (5, 'PM', '人事经理', 0, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (6, 'GM', '总经理', 0, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (7, 'COO', '首席运营官', 0, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (8, 'CFO', '首席财务官', 0, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (9, 'CTO', '首席技术官', 0, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (10, 'HRD', '人力资源总监', 0, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (11, 'VP', '副总裁', 0, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (12, 'OD', '运营总监', 0, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_post` VALUES (13, 'MD', '市场总监', 0, '0', NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `RoleId` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `RoleName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `RoleKey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限',
  `RoleSort` int NOT NULL COMMENT '角色排序',
  `Status` int NULL DEFAULT 0 COMMENT '帐号状态（0正常 1停用）',
  `DelFlag` int NULL DEFAULT 0 COMMENT '删除标志（0代表存在 2代表删除）',
  `DataScope` int NULL DEFAULT 1 COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限））',
  `menu_check_strictly` tinyint(1) NULL DEFAULT NULL COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT NULL COMMENT '部门树选择项是否关联显示',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`RoleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, 0, 0, 1, 1, 0, NULL, '2025-06-04 13:03:41', NULL, NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, 0, 0, 5, 1, 0, NULL, '2025-06-04 13:03:41', NULL, NULL, '普通角色');
INSERT INTO `sys_role` VALUES (3, '编辑角色', 'editor', 3, 0, 0, 5, 1, 0, NULL, '2025-06-04 13:03:41', NULL, NULL, '编辑角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `RoleId` bigint NOT NULL,
  `DeptId` bigint NOT NULL,
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`RoleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色部门' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `Role_id` bigint NOT NULL,
  `Menu_id` bigint NOT NULL,
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Role_id`, `Menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 3, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 5, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 6, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 100, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 101, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 102, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 103, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 104, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 106, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 108, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 109, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 114, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 500, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 501, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 1001, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 1008, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 1013, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 1018, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 1022, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 1031, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 1041, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 1044, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 1051, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (3, 3, NULL, '2025-06-04 13:03:42', NULL, NULL, '系统工具');
INSERT INTO `sys_role_menu` VALUES (3, 4, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (3, 118, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (3, 119, NULL, '2025-06-04 13:03:42', NULL, NULL, '文章管理');
INSERT INTO `sys_role_menu` VALUES (3, 1047, NULL, '2025-06-04 13:03:42', NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (3, 1048, NULL, '2025-06-04 13:03:42', NULL, NULL, '文章管理');
INSERT INTO `sys_role_menu` VALUES (3, 1049, NULL, '2025-06-04 13:03:42', NULL, NULL, '文章管理');
INSERT INTO `sys_role_menu` VALUES (3, 1050, NULL, '2025-06-04 13:03:42', NULL, NULL, '文章管理');
INSERT INTO `sys_role_menu` VALUES (3, 1084, NULL, '2025-06-04 13:03:42', NULL, NULL, '文章目录');
INSERT INTO `sys_role_menu` VALUES (3, 1085, NULL, '2025-06-04 13:03:42', NULL, NULL, '文章目录');
INSERT INTO `sys_role_menu` VALUES (3, 1086, NULL, '2025-06-04 13:03:42', NULL, NULL, '文章目录');
INSERT INTO `sys_role_menu` VALUES (3, 1087, NULL, '2025-06-04 13:03:42', NULL, NULL, '文章目录');
INSERT INTO `sys_role_menu` VALUES (3, 1088, NULL, '2025-06-04 13:03:42', NULL, NULL, '文章目录');
INSERT INTO `sys_role_menu` VALUES (3, 1089, NULL, '2025-06-04 13:03:42', NULL, NULL, '文章目录');

-- ----------------------------
-- Table structure for sys_tasks
-- ----------------------------
DROP TABLE IF EXISTS `sys_tasks`;
CREATE TABLE `sys_tasks`  (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务id',
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `JobGroup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务分组',
  `Cron` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '运行时间表达式',
  `AssemblyName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '程序集名称',
  `ClassName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务所在类',
  `RunTimes` int NOT NULL DEFAULT 0 COMMENT '执行次数',
  `BeginTime` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `EndTime` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `TriggerType` int NOT NULL COMMENT '触发器类型（0、simple 1、cron） \n            默认 : 1',
  `IntervalSecond` int NOT NULL COMMENT '执行间隔时间(单位:秒) \n            默认 : 0',
  `IsStart` int NOT NULL DEFAULT 0 COMMENT '是否启动',
  `JobParams` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '传入参数',
  `LastRunTime` datetime NULL DEFAULT NULL COMMENT '最后运行时间',
  `ApiUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'api执行地址',
  `TaskType` int NULL DEFAULT 1 COMMENT '任务类型 1、程序集 2、网络请求 3、SQL语句',
  `SqlText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SQL语句',
  `RequestMethod` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网络请求方式',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '计划任务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tasks
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tasks_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_tasks_log`;
CREATE TABLE `sys_tasks_log`  (
  `JobLogId` bigint NOT NULL AUTO_INCREMENT COMMENT '日志Id',
  `JobId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务Id',
  `JobName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名',
  `JobGroup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务分组',
  `Status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `Exception` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常',
  `JobMessage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `InvokeTarget` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '调用目标字符串',
  `CreateTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Elapsed` double NULL DEFAULT NULL COMMENT '执行用时，毫秒',
  PRIMARY KEY (`JobLogId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tasks_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `UserId` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `UserName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `NickName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `UserType` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户\\01前台用户）',
  `Avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `Password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `Phonenumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `Sex` int NULL DEFAULT NULL COMMENT '用户性别（0男 1女 2未知）',
  `Status` int NULL DEFAULT 0 COMMENT '帐号状态（0正常 1停用）',
  `DelFlag` int NULL DEFAULT 0 COMMENT '删除标志（0代表存在 2代表删除）',
  `LoginIP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后登录IP',
  `LoginDate` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `DeptId` bigint NULL DEFAULT 0 COMMENT '部门Id',
  `Province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `City` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`UserId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '管理员', '00', NULL, NULL, 'E10ADC3949BA59ABBE56E057F20F883E', NULL, 0, 0, 0, '127.0.0.1', '2025-06-10 15:28:00', 0, NULL, NULL, NULL, '2025-06-04 13:03:40', NULL, NULL, '管理员');
INSERT INTO `sys_user` VALUES (2, 'user', '普通用户', '0', NULL, NULL, 'E10ADC3949BA59ABBE56E057F20F883E', NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, '2025-06-04 13:03:40', NULL, NULL, '普通用户');
INSERT INTO `sys_user` VALUES (3, 'editor', '编辑人员', '0', NULL, NULL, 'E10ADC3949BA59ABBE56E057F20F883E', NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, '2025-06-04 13:03:40', NULL, NULL, '编辑人员');
INSERT INTO `sys_user` VALUES (4, '123', '123', '00', NULL, '996991818@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, 2, 0, 2, NULL, NULL, 0, NULL, NULL, 'admin', '2025-06-10 12:34:19', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_extend
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_extend`;
CREATE TABLE `sys_user_extend`  (
  `UserId` bigint UNSIGNED NOT NULL COMMENT '用户ID，主键',
  `PromotePhone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宣传手机号',
  `PromoteEmail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宣传邮箱',
  `PromoteKakao` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宣传Kakao',
  `PromoteWechat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宣传微信',
  `PromoteQq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宣传QQ',
  `PromoteOther` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宣传其他联系方式',
  `Hometown` int NULL DEFAULT NULL COMMENT '故乡',
  `CurrentAddress` int NULL DEFAULT NULL COMMENT '现住地址',
  `EducationLevel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学历 0:其他、1：本科、2：硕士、3：博士',
  `Birthday` date NULL DEFAULT NULL COMMENT '出生年月日',
  `Interests` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '兴趣爱好',
  `RelationshipStatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '情感状态 1：单身、2：恋爱中、3：已婚',
  `Introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '简介',
  `Level` int UNSIGNED NULL DEFAULT 0 COMMENT '级别',
  `Experience` int UNSIGNED NULL DEFAULT 0 COMMENT '经验',
  `Gold` int UNSIGNED NULL DEFAULT 0 COMMENT '金币',
  `QaScore` int UNSIGNED NULL DEFAULT 0 COMMENT '问答分数',
  `RealName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `IdCardNumber` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `IdCardVerified` tinyint(1) NULL DEFAULT 0 COMMENT '身份证验证状态（0否，1是）',
  `DetailVerified` tinyint(1) NULL DEFAULT 0 COMMENT '详细信息验证（0否，1是）',
  `LifePhotoVerified` tinyint(1) NULL DEFAULT 0 COMMENT '生活照验证状态（0否，1是）',
  `PhoneVerified` tinyint(1) NULL DEFAULT 0 COMMENT '手机号码验证状态（0否，1是）',
  `EnterpriseVerified` tinyint(1) NULL DEFAULT 0 COMMENT '企业验证信息状态（0否，1是）',
  `EnterpriseZoneId` int NULL DEFAULT NULL COMMENT '企业验证版区ID（长度6位INT）',
  `EnterpriseQualifications` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '企业资质图片（逗号隔开）',
  `LifePhotos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '生活照（最少3张，逗号隔开）',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UpdatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `CompanyName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '企业名称',
  `CorporateCountry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '企业所在国',
  PRIMARY KEY (`UserId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户扩展信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_extend
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_msg
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_msg`;
CREATE TABLE `sys_user_msg`  (
  `MsgId` bigint NOT NULL COMMENT '消息ID',
  `UserId` bigint NULL DEFAULT NULL COMMENT '用户ID',
  `Content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息内容',
  `IsRead` int NULL DEFAULT NULL COMMENT '是否已读',
  `AddTime` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `TargetId` bigint NULL DEFAULT NULL COMMENT '目标ID',
  `MsgType` int NULL DEFAULT NULL COMMENT '消息类型',
  `IsDelete` int NULL DEFAULT NULL COMMENT '是否删除',
  `FromUserid` bigint NULL DEFAULT NULL COMMENT '来源用户',
  PRIMARY KEY (`MsgId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户系统消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_msg
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `UserId` bigint NOT NULL,
  `PostId` bigint NOT NULL,
  PRIMARY KEY (`UserId`, `PostId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  `Create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `Create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `Update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `Update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_user_role` VALUES (2, 2, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);
INSERT INTO `sys_user_role` VALUES (3, 3, NULL, '2025-06-04 13:03:41', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for useronlinelog
-- ----------------------------
DROP TABLE IF EXISTS `useronlinelog`;
CREATE TABLE `useronlinelog`  (
  `Id` bigint NOT NULL COMMENT 'Id',
  `UserId` bigint NULL DEFAULT NULL COMMENT '用户id',
  `OnlineTime` double NULL DEFAULT NULL COMMENT '在线时长(分)',
  `TodayOnlineTime` double NULL DEFAULT NULL COMMENT '今日在线时长',
  `AddTime` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址位置',
  `UserIP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户IP',
  `LoginTime` datetime NULL DEFAULT NULL,
  `Remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `Platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录平台',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户在线时长' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of useronlinelog
-- ----------------------------
INSERT INTO `useronlinelog` VALUES (1930128722665545728, 1, 0.95, 0.95, '2025-06-04 13:05:22', '内网IP', '127.0.0.1', '2025-06-04 13:04:25', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930129225403211776, 1, 1.41, 2.88, '2025-06-04 13:07:22', '内网IP', '127.0.0.1', '2025-06-04 13:05:57', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930129477317304320, 1, 0.85, 3.84, '2025-06-04 13:08:22', '内网IP', '127.0.0.1', '2025-06-04 13:07:31', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930131890996649984, 1, 9.58, 13.42, '2025-06-04 13:17:58', '内网IP', '127.0.0.1', '2025-06-04 13:08:23', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930134816632741888, 1, 11.21, 24.63, '2025-06-04 13:29:35', '内网IP', '127.0.0.1', '2025-06-04 13:18:23', 'Mac OS X 10.15.7 Mac Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930135468222062592, 1, 2.39, 27.18, '2025-06-04 13:32:10', '内网IP', '127.0.0.1', '2025-06-04 13:29:47', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930140901854814208, 1, 21.58, 48.76, '2025-06-04 13:53:46', '内网IP', '127.0.0.1', '2025-06-04 13:32:11', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930142096392593408, 1, 3.03, 51.79, '2025-06-04 13:58:31', '内网IP', '127.0.0.1', '2025-06-04 13:55:29', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930833736144920576, 1, 1.12, 1.12, '2025-06-06 11:46:51', '内网IP', '127.0.0.1', '2025-06-06 11:45:44', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930834341949218816, 1, 2.41, 3.53, '2025-06-06 11:49:15', '内网IP', '127.0.0.1', '2025-06-06 11:46:51', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930860230233694208, 1, 102.83, 106.36, '2025-06-06 13:32:07', '内网IP', '127.0.0.1', '2025-06-06 11:49:17', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930869672052400128, 1, 37.39, 143.75, '2025-06-06 14:09:38', '内网IP', '127.0.0.1', '2025-06-06 13:32:15', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930891272164352000, 1, 2.16, 2.16, '2025-06-06 15:35:28', '内网IP', '127.0.0.1', '2025-06-06 15:33:19', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930891575601274880, 1, 1.19, 3.35, '2025-06-06 15:36:41', '内网IP', '127.0.0.1', '2025-06-06 15:35:29', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930910173132627968, 1, 71.62, 75.84, '2025-06-06 16:50:35', '内网IP', '127.0.0.1', '2025-06-06 15:38:57', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930958115906396160, 1, 185.88, 261.72, '2025-06-06 20:01:05', '内网IP', '127.0.0.1', '2025-06-06 16:55:12', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930972927881256960, 1, 58.8, 320.54, '2025-06-06 20:59:56', '内网IP', '127.0.0.1', '2025-06-06 20:01:08', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930974648808382464, 1, 6.82, 327.36, '2025-06-06 21:06:47', '内网IP', '127.0.0.1', '2025-06-06 20:59:58', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930975158235963392, 1, 1.7, 329.33, '2025-06-06 21:08:48', '内网IP', '127.0.0.1', '2025-06-06 21:07:06', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930979054354309120, 1, 15.46, 344.79, '2025-06-06 21:24:17', '内网IP', '127.0.0.1', '2025-06-06 21:08:49', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930980572226789376, 1, 5.86, 350.65, '2025-06-06 21:30:19', '内网IP', '127.0.0.1', '2025-06-06 21:24:28', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930986471972544512, 1, 1.76, 1.76, '2025-06-06 21:53:46', '内网IP', '127.0.0.1', '2025-06-06 21:52:00', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930989539082510336, 1, 12.17, 13.93, '2025-06-06 22:05:57', '内网IP', '127.0.0.1', '2025-06-06 21:53:47', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930991148160131072, 1, 6.36, 20.29, '2025-06-06 22:12:20', '内网IP', '127.0.0.1', '2025-06-06 22:05:59', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1930996534992838656, 1, 19.36, 39.65, '2025-06-06 22:33:45', '内网IP', '127.0.0.1', '2025-06-06 22:14:23', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931114610870591488, 1, 468.79, 508.78, '2025-06-07 06:22:56', '内网IP', '127.0.0.1', '2025-06-06 22:34:09', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931138356385816576, 1, 94.24, 94.24, '2025-06-07 07:57:18', '内网IP', '127.0.0.1', '2025-06-07 06:23:03', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931196718372757504, 1, 231.86, 326.11, '2025-06-07 11:49:12', '内网IP', '127.0.0.1', '2025-06-07 07:57:20', 'Windows 10 Other Edge 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931368556021293056, 1, 1.75, 1.75, '2025-06-07 23:12:02', '内网IP', '127.0.0.1', '2025-06-07 23:10:17', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931368711101489152, 1, 0.62, 2.37, '2025-06-07 23:12:38', '内网IP', '127.0.0.1', '2025-06-07 23:12:01', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931369185653432320, 1, 1.87, 4.24, '2025-06-07 23:14:32', '内网IP', '127.0.0.1', '2025-06-07 23:12:40', 'Android 6.0 Nexus 5 Chrome Mobile 136.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931707273554567168, 1, 6.86, 6.86, '2025-06-08 21:37:58', '内网IP', '127.0.0.1', '2025-06-08 21:31:06', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931721080150564864, 1, 54.84, 61.7, '2025-06-08 22:32:50', '内网IP', '127.0.0.1', '2025-06-08 21:38:00', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931950566645309440, 1, 99.37, 99.37, '2025-06-09 13:44:44', '内网IP', '127.0.0.1', '2025-06-09 12:05:22', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931953198214553600, 1, 10.43, 109.8, '2025-06-09 13:55:11', '内网IP', '127.0.0.1', '2025-06-09 13:44:45', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931958403186434048, 1, 20.65, 130.45, '2025-06-09 14:15:52', '内网IP', '127.0.0.1', '2025-06-09 13:55:13', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931958608065601536, 1, 0.78, 131.23, '2025-06-09 14:16:41', '内网IP', '127.0.0.1', '2025-06-09 14:15:54', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931958776408186880, 1, 0.64, 131.87, '2025-06-09 14:17:21', '内网IP', '127.0.0.1', '2025-06-09 14:16:42', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931960827036966912, 1, 7.69, 139.96, '2025-06-09 14:25:30', '内网IP', '127.0.0.1', '2025-06-09 14:17:49', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931960981567709184, 1, 0.57, 140.53, '2025-06-09 14:26:07', '内网IP', '127.0.0.1', '2025-06-09 14:25:33', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931961642845872128, 1, 2.6, 143.13, '2025-06-09 14:28:44', '内网IP', '127.0.0.1', '2025-06-09 14:26:08', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931962165229658112, 1, 2.05, 145.18, '2025-06-09 14:30:49', '内网IP', '127.0.0.1', '2025-06-09 14:28:46', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931964744940527616, 1, 10.22, 155.4, '2025-06-09 14:41:04', '内网IP', '127.0.0.1', '2025-06-09 14:30:51', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931964924406407168, 1, 0.69, 156.09, '2025-06-09 14:41:47', '内网IP', '127.0.0.1', '2025-06-09 14:41:06', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931976818752102400, 1, 46.79, 203.3, '2025-06-09 15:29:03', '内网IP', '127.0.0.1', '2025-06-09 14:42:16', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931990235546263552, 1, 53.28, 256.58, '2025-06-09 16:22:21', '内网IP', '127.0.0.1', '2025-06-09 15:29:05', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931990584784986112, 1, 1.36, 257.94, '2025-06-09 16:23:45', '内网IP', '127.0.0.1', '2025-06-09 16:22:23', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931991250328756224, 1, 2.62, 260.56, '2025-06-09 16:26:23', '内网IP', '127.0.0.1', '2025-06-09 16:23:46', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1931991779696058368, 1, 1.68, 262.58, '2025-06-09 16:28:30', '内网IP', '127.0.0.1', '2025-06-09 16:26:49', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932012065019535360, 1, 80.32, 343.11, '2025-06-09 17:49:06', '内网IP', '127.0.0.1', '2025-06-09 16:28:47', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932024255474704384, 1, 48.34, 391.45, '2025-06-09 18:37:32', '内网IP', '127.0.0.1', '2025-06-09 17:49:12', 'Android 6.0 Nexus 5 Chrome Mobile 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932025007098175488, 1, 2.81, 394.4, '2025-06-09 18:40:32', '内网IP', '127.0.0.1', '2025-06-09 18:37:43', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932025265869955072, 1, 1.01, 395.41, '2025-06-09 18:41:33', '内网IP', '127.0.0.1', '2025-06-09 18:40:33', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932050602125303808, 1, 100.66, 496.07, '2025-06-09 20:22:14', '内网IP', '127.0.0.1', '2025-06-09 18:41:35', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932348049523351552, 1, 1.87, 1.87, '2025-06-10 16:04:11', '内网IP', '127.0.0.1', '2025-06-10 16:02:19', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932410195401646080, 1, 2.11, 2.11, '2025-06-10 20:11:08', '内网IP', '127.0.0.1', '2025-06-10 20:09:01', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932410417561346048, 1, 0.86, 2.97, '2025-06-10 20:12:01', '内网IP', '127.0.0.1', '2025-06-10 20:11:09', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932411706026369024, 1, 4.64, 8.05, '2025-06-10 20:17:08', '内网IP', '127.0.0.1', '2025-06-10 20:12:29', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932411893784387584, 1, 0.71, 8.76, '2025-06-10 20:17:53', '内网IP', '127.0.0.1', '2025-06-10 20:17:10', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932422737272381440, 1, 7.47, 7.47, '2025-06-10 21:00:58', '内网IP', '127.0.0.1', '2025-06-10 20:53:30', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932422993372389376, 1, 0.98, 8.45, '2025-06-10 21:01:59', '内网IP', '127.0.0.1', '2025-06-10 21:01:00', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932422993372389377, 1, 0.95, 8.45, '2025-06-10 21:01:59', '内网IP', '127.0.0.1', '2025-06-10 21:01:02', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932423397640380416, 1, 1.58, 10.03, '2025-06-10 21:03:35', '内网IP', '127.0.0.1', '2025-06-10 21:02:01', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932423660010872832, 1, 1.02, 11.05, '2025-06-10 21:04:38', '内网IP', '127.0.0.1', '2025-06-10 21:03:37', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932423660027650048, 1, 2.61, 13.66, '2025-06-10 21:04:38', '内网IP', '127.0.0.1', '2025-06-10 21:02:02', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932426433628610560, 1, 8.81, 8.81, '2025-06-10 21:15:39', '内网IP', '127.0.0.1', '2025-06-10 21:06:51', 'Windows 10 Other Edge 137.0.0', 'web');
INSERT INTO `useronlinelog` VALUES (1932441099629109248, 1, 5.71, 5.71, '2025-06-10 22:13:56', '内网IP', '127.0.0.1', '2025-06-10 22:08:13', 'Windows 10 Other Edge 137.0.0', 'web');

SET FOREIGN_KEY_CHECKS = 1;
