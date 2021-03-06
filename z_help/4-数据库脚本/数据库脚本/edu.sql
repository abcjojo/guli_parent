/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : edu

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 27/03/2021 19:27:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_banner
-- ----------------------------
DROP TABLE IF EXISTS `crm_banner`;
CREATE TABLE `crm_banner`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'ID',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标题',
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `link_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接地址',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `is_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '首页banner表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_banner
-- ----------------------------
INSERT INTO `crm_banner` VALUES ('1194556896025845762', 'test1', 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cms/2019/11/14/297acd3b-b592-4cfb-a446-a28310369675.jpg', '/course', 1, 0, '2019-11-13 18:05:32', '2019-11-18 10:28:22');
INSERT INTO `crm_banner` VALUES ('1194607458461216769', 'test2', 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cms/2019/11/13/8f80790d-d736-4842-a6a4-4dcb0d684d4e.jpg', '/teacher', 2, 0, '2019-11-13 21:26:27', '2019-11-14 09:12:15');

-- ----------------------------
-- Table structure for edu_chapter
-- ----------------------------
DROP TABLE IF EXISTS `edu_chapter`;
CREATE TABLE `edu_chapter`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '章节ID',
  `course_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '章节名称',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '显示排序',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of edu_chapter
-- ----------------------------
INSERT INTO `edu_chapter` VALUES (' 1', '14', '第一章：HTML', 0, '2019-01-01 12:27:40', '2019-01-01 12:55:30');
INSERT INTO `edu_chapter` VALUES ('1192252428399751169', '1192252213659774977', '第一章节', 0, '2019-11-07 09:28:25', '2019-11-07 09:28:25');
INSERT INTO `edu_chapter` VALUES ('1365978451617976322', '1365977577113927681', '而塔尔', 22, '2021-02-28 18:53:36', '2021-02-28 18:53:36');
INSERT INTO `edu_chapter` VALUES ('1365978500192210946', '121', '我提前', 0, '2021-02-28 18:53:48', '2021-02-28 18:53:48');
INSERT INTO `edu_chapter` VALUES ('1366031789000720385', '1366031755672780801', '2342', 2, '2021-02-28 22:25:33', '2021-02-28 22:25:33');
INSERT INTO `edu_chapter` VALUES ('1366033993858179074', '1366033971477372930', '121', 2, '2021-02-28 22:34:18', '2021-02-28 22:34:18');
INSERT INTO `edu_chapter` VALUES ('1367004222805499905', '1367004189603389441', '232日', 2323, '2021-03-03 14:49:39', '2021-03-03 14:49:39');
INSERT INTO `edu_chapter` VALUES ('1367041683317317634', '1367041630276149250', '蚊热风人鬼殊途', 23, '2021-03-03 17:18:30', '2021-03-03 17:18:30');
INSERT INTO `edu_chapter` VALUES ('1367094589319942145', '1367094448064172033', '玩玩儿去234梵蒂冈的', 23, '2021-03-03 20:48:44', '2021-03-03 20:48:44');
INSERT INTO `edu_chapter` VALUES ('15', '1222', '第一章：Java入门', 0, '2019-01-01 12:27:40', '2019-10-09 09:13:19');
INSERT INTO `edu_chapter` VALUES ('22', '18', '第七章：I/O流', 70, '2019-10-09 08:32:58', '2019-10-09 08:33:20');
INSERT INTO `edu_chapter` VALUES ('3', '14', '第二章：CSS', 0, '2019-01-01 12:55:35', '2019-01-01 12:27:40');
INSERT INTO `edu_chapter` VALUES ('32', '18', '第二章：控制台输入和输出', 0, '2019-01-01 12:27:40', '2019-01-01 12:27:40');
INSERT INTO `edu_chapter` VALUES ('44', '18', '第三章：控制流', 0, '2019-01-01 12:27:40', '2019-01-01 12:27:40');
INSERT INTO `edu_chapter` VALUES ('48', '18', '第四章：类的定义', 0, '2019-01-01 12:27:40', '2019-01-01 12:27:40');
INSERT INTO `edu_chapter` VALUES ('63', '18', '第五章：数组', 0, '2019-01-01 12:27:40', '2019-01-01 12:27:40');
INSERT INTO `edu_chapter` VALUES ('64', '18', '第六章：继承', 61, '2019-01-01 12:27:40', '2019-10-09 08:32:47');

-- ----------------------------
-- Table structure for edu_comment
-- ----------------------------
DROP TABLE IF EXISTS `edu_comment`;
CREATE TABLE `edu_comment`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '讲师ID',
  `course_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '课程id',
  `teacher_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '讲师id',
  `member_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '会员id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员头像',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `is_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE,
  INDEX `idx_teacher_id`(`teacher_id`) USING BTREE,
  INDEX `idx_member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edu_comment
-- ----------------------------
INSERT INTO `edu_comment` VALUES ('1194499162790211585', '1192252213659774977', '1189389726308478977', '1', '小三123', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', '课程很好', 0, '2019-11-13 14:16:08', '2019-11-13 14:16:08');
INSERT INTO `edu_comment` VALUES ('1194898406466420738', '1192252213659774977', '1189389726308478977', '1', '小三123', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', '11', 0, '2019-11-14 16:42:35', '2019-11-14 16:42:35');
INSERT INTO `edu_comment` VALUES ('1194898484388200450', '1192252213659774977', '1189389726308478977', '1', '小三123', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', '111', 0, '2019-11-14 16:42:53', '2019-11-14 16:42:53');
INSERT INTO `edu_comment` VALUES ('1195251020861317122', '1192252213659774977', '1189389726308478977', '1', NULL, NULL, '2233', 0, '2019-11-15 16:03:45', '2019-11-15 16:03:45');
INSERT INTO `edu_comment` VALUES ('1195251382720700418', '1192252213659774977', '1189389726308478977', '1', NULL, NULL, '4455', 0, '2019-11-15 16:05:11', '2019-11-15 16:05:11');
INSERT INTO `edu_comment` VALUES ('1195252819177570306', '1192252213659774977', '1189389726308478977', '1', '小三1231', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', '55', 0, '2019-11-15 16:10:53', '2019-11-15 16:10:53');
INSERT INTO `edu_comment` VALUES ('1195252899448160258', '1192252213659774977', '1189389726308478977', '1', '小三1231', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', '55', 0, '2019-11-15 16:11:13', '2019-11-15 16:11:13');
INSERT INTO `edu_comment` VALUES ('1195252920587452417', '1192252213659774977', '1189389726308478977', '1', '小三1231', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', '223344', 0, '2019-11-15 16:11:18', '2019-11-15 16:11:18');
INSERT INTO `edu_comment` VALUES ('1195262128095559681', '14', '1189389726308478977', '1', '小三1231', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', '11', 0, '2019-11-15 16:47:53', '2019-11-15 16:47:53');
INSERT INTO `edu_comment` VALUES ('1196264505170767874', '1192252213659774977', '1189389726308478977', '1', '小三1231', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', '666666', 0, '2019-11-18 11:10:58', '2019-11-18 11:10:58');

-- ----------------------------
-- Table structure for edu_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_course`;
CREATE TABLE `edu_course`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程ID',
  `teacher_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程讲师ID',
  `subject_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程专业ID',
  `subject_parent_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程专业父级ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程标题',
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '课程销售价格，设置为0则可免费观看',
  `lesson_num` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '总课时',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程封面图片路径',
  `buy_count` bigint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销售数量',
  `view_count` bigint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '浏览数量',
  `version` bigint(20) UNSIGNED NOT NULL DEFAULT 1 COMMENT '乐观锁',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Draft' COMMENT '课程状态 Draft未发布  Normal已发布',
  `is_deleted` tinyint(3) NULL DEFAULT NULL COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_title`(`title`) USING BTREE,
  INDEX `idx_subject_id`(`subject_id`) USING BTREE,
  INDEX `idx_teacher_id`(`teacher_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of edu_course
-- ----------------------------
INSERT INTO `edu_course` VALUES ('1192252213659774977', '1189389726308478977', '1178214681139539969', '1178214681118568449', 'java基础课程：test', 0.01, 2, 'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/cover/default.gif', 4, 387, 1, 'Normal', 0, '2019-11-07 09:27:33', '2019-11-18 13:35:03');
INSERT INTO `edu_course` VALUES ('121', 'string', 'string', 'string', 'string', 0.00, 0, 'string', 0, 0, 1, 'Draft', NULL, '2021-02-27 20:56:53', '2021-02-27 20:56:53');
INSERT INTO `edu_course` VALUES ('1212', '1189389726308478977', '1101348944971091969', '1101348944920760321', 'HTML5入门课程学习', 0.00, 23, 'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/13/22997b8e-3606-4d2e-9b4f-09f48418b6e4.jpg', 0, 51, 17, 'Normal', 0, '2018-04-02 18:34:32', '2019-11-12 10:19:20');
INSERT INTO `edu_course` VALUES ('1365652949992697857', '1354699759382147074', '1365535996292575234', '1365535996179329025', '2312312314243242342', 234.00, 23424, '/static/01.jpg', 0, 0, 1, 'Draft', NULL, '2021-02-27 21:20:11', '2021-02-27 21:20:11');
INSERT INTO `edu_course` VALUES ('1365661846161797121', '1365232946097127425', '1365535996208689153', '1365535996179329025', 'sgsgs', 34.00, 34, '/static/01.jpg', 0, 0, 1, 'Draft', NULL, '2021-02-27 21:55:32', '2021-02-27 21:55:32');
INSERT INTO `edu_course` VALUES ('1365921085157466113', '1365232946097127425', '1365535996208689153', '1365535996179329025', '而微软', 35.00, 34, '/static/01.jpg', 0, 0, 1, 'Draft', NULL, '2021-02-28 15:05:39', '2021-02-28 15:05:39');
INSERT INTO `edu_course` VALUES ('1365938600067612673', '1354699759382147074', '1365535996451958786', '1365535996376461314', 'egalitarianv我玩玩儿', 34.00, 32, '/static/01.jpg', 0, 0, 1, 'Draft', NULL, '2021-02-28 16:15:15', '2021-02-28 16:17:23');
INSERT INTO `edu_course` VALUES ('1365977577113927681', '1354699759382147074', '', '1365535996477124609', 'sbsg分割 如果', 3453.00, 345, '/static/01.jpg', 0, 0, 1, 'Draft', NULL, '2021-02-28 18:50:08', '2021-02-28 18:50:08');
INSERT INTO `edu_course` VALUES ('1365978957170020353', '1365233576983363585', '1365535996510679041', '1365535996477124609', '违法玩儿玩儿', 22.00, 232, '/static/01.jpg', 0, 0, 1, 'Draft', NULL, '2021-02-28 18:55:37', '2021-02-28 18:55:37');
INSERT INTO `edu_course` VALUES ('1366030379362275329', '1192249914833055746', '1365535996292575234', '1365535996179329025', '12312', 123.00, 123, '/static/01.jpg', 0, 0, 1, 'Draft', NULL, '2021-02-28 22:19:57', '2021-02-28 22:19:57');
INSERT INTO `edu_course` VALUES ('1366031755672780801', '1354699759382147074', '1365535996510679041', '1365535996477124609', '121', 324.00, 23, '/static/01.jpg', 0, 0, 1, 'Normal', NULL, '2021-02-28 22:25:25', '2021-02-28 22:33:14');
INSERT INTO `edu_course` VALUES ('1367004189603389441', '1365234469204090881', '1365535996292575234', '1365535996179329025', '玩儿玩儿', 322.00, 32, '/static/01.jpg', 0, 0, 1, 'Normal', NULL, '2021-03-03 14:49:31', '2021-03-03 14:53:05');
INSERT INTO `edu_course` VALUES ('1367041630276149250', '1365234469204090881', '1365535996342906882', '1365535996179329025', '2414', 243.00, 234, '/static/01.jpg', 0, 0, 1, 'Normal', NULL, '2021-03-03 17:18:18', '2021-03-03 17:20:01');
INSERT INTO `edu_course` VALUES ('136709377354459162', '1189426464967995393', '1365535996510679041', '1365535996477124609', '二位', 21.00, 12, '/static/01.jpg', 0, 0, 1, 'Normal', NULL, '2021-02-28 22:34:13', '2021-02-28 22:34:22');
INSERT INTO `edu_course` VALUES ('1367094448064172033', '1365234469204090881', '1365535996208689153', '1365535996179329025', '问问', 324.00, 23, '/static/01.jpg', 0, 0, 1, 'Draft', NULL, '2021-03-03 20:48:10', '2021-03-03 20:48:10');
INSERT INTO `edu_course` VALUES ('18', '1189389726308478977', '1178214681139539969', '1178214681118568449', 'Java精品课程', 0.01, 20, 'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/06/866e9aca-b530-4f71-a690-72d4a4bfd1e7.jpg', 151, 737, 6, 'Normal', 0, '2018-04-02 21:28:46', '2019-11-18 11:14:52');

-- ----------------------------
-- Table structure for edu_course_collect
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_collect`;
CREATE TABLE `edu_course_collect`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收藏ID',
  `course_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程讲师ID',
  `member_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '课程专业ID',
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程收藏' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of edu_course_collect
-- ----------------------------
INSERT INTO `edu_course_collect` VALUES ('1196269345666019330', '1192252213659774977', '1', 1, '2019-11-18 11:30:12', '2019-11-18 11:30:12');

-- ----------------------------
-- Table structure for edu_course_description
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_description`;
CREATE TABLE `edu_course_description`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程ID',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '课程简介',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程简介' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edu_course_description
-- ----------------------------
INSERT INTO `edu_course_description` VALUES ('1104870479077879809', '<p>11</p>', '2019-03-11 06:23:44', '2019-03-11 06:23:44');
INSERT INTO `edu_course_description` VALUES ('1192252213659774977', '<p>测试</p>', '2019-11-07 09:27:33', '2019-11-13 16:21:28');
INSERT INTO `edu_course_description` VALUES ('121', '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>\n<p>------------------------------------</p>\n<p>视频特点：</p>\n<p>通过学习本Java视频教程，大家能够真正将Java基础知识学以致用、活学活用，构架Java编程思想，牢牢掌握\"源码级\"的Javase核心技术，并为后续JavaWeb等技术的学习奠定扎实基础。<br /><br />1.通俗易懂，细致入微：每个知识点高屋建瓴，深入浅出，简洁明了的说明问题<br />2.具实战性：全程真正代码实战，涵盖上百个企业应用案例及练习<br />3.深入：源码分析，更有 Java 反射、动态代理的实际应用等<br />4.登录尚硅谷官网，技术讲师免费在线答疑</p>', '2019-03-06 18:06:36', '2019-10-30 19:58:36');
INSERT INTO `edu_course_description` VALUES ('1365652949992697857', '23423432432', '2021-02-27 21:20:11', '2021-02-27 21:20:11');
INSERT INTO `edu_course_description` VALUES ('1365661846161797121', '', '2021-02-27 21:55:32', '2021-02-27 21:55:32');
INSERT INTO `edu_course_description` VALUES ('1365921085157466113', '', '2021-02-28 15:05:39', '2021-02-28 15:05:39');
INSERT INTO `edu_course_description` VALUES ('1365938600067612673', '', '2021-02-28 16:15:15', '2021-02-28 16:17:23');
INSERT INTO `edu_course_description` VALUES ('1365977577113927681', '', '2021-02-28 18:50:08', '2021-02-28 18:50:08');
INSERT INTO `edu_course_description` VALUES ('1365978957170020353', '', '2021-02-28 18:55:37', '2021-02-28 18:55:37');
INSERT INTO `edu_course_description` VALUES ('1366030379362275329', '', '2021-02-28 22:19:57', '2021-02-28 22:19:57');
INSERT INTO `edu_course_description` VALUES ('1366031755672780801', '', '2021-02-28 22:25:25', '2021-02-28 22:25:25');
INSERT INTO `edu_course_description` VALUES ('1366033971477372930', '', '2021-02-28 22:34:13', '2021-02-28 22:34:13');
INSERT INTO `edu_course_description` VALUES ('1367004189603389441', '', '2021-03-03 14:49:31', '2021-03-03 14:49:31');
INSERT INTO `edu_course_description` VALUES ('1367041630276149250', '', '2021-03-03 17:18:18', '2021-03-03 17:18:18');
INSERT INTO `edu_course_description` VALUES ('1367094448064172033', '', '2021-03-03 20:48:10', '2021-03-03 20:48:10');
INSERT INTO `edu_course_description` VALUES ('14', '', '2019-03-13 06:04:43', '2019-03-13 06:05:33');
INSERT INTO `edu_course_description` VALUES ('15', '', '2019-03-13 06:03:33', '2019-03-13 06:04:22');
INSERT INTO `edu_course_description` VALUES ('string', 'string', '2021-02-27 20:56:53', '2021-02-27 20:56:53');

-- ----------------------------
-- Table structure for edu_subject
-- ----------------------------
DROP TABLE IF EXISTS `edu_subject`;
CREATE TABLE `edu_subject`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程类别ID',
  `title` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类别名称',
  `parent_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '父ID',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序字段',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程科目' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of edu_subject
-- ----------------------------
INSERT INTO `edu_subject` VALUES ('1365535996179329025', '后端课程', '0', 0, '2021-02-27 13:35:27', '2021-02-27 13:35:27');
INSERT INTO `edu_subject` VALUES ('1365535996208689153', 'Java', '1365535996179329025', 0, '2021-02-27 13:35:27', '2021-02-27 13:35:27');
INSERT INTO `edu_subject` VALUES ('1365535996292575234', 'C#', '1365535996179329025', 0, '2021-02-27 13:35:27', '2021-02-27 13:35:27');
INSERT INTO `edu_subject` VALUES ('1365535996342906882', 'python', '1365535996179329025', 0, '2021-02-27 13:35:27', '2021-02-27 13:35:27');
INSERT INTO `edu_subject` VALUES ('1365535996376461314', '前端课程', '0', 0, '2021-02-27 13:35:27', '2021-02-27 13:35:27');
INSERT INTO `edu_subject` VALUES ('1365535996401627138', 'html', '1365535996376461314', 0, '2021-02-27 13:35:27', '2021-02-27 13:35:27');
INSERT INTO `edu_subject` VALUES ('1365535996451958786', 'js', '1365535996376461314', 0, '2021-02-27 13:35:27', '2021-02-27 13:35:27');
INSERT INTO `edu_subject` VALUES ('1365535996477124609', '数据库', '0', 0, '2021-02-27 13:35:27', '2021-02-27 13:35:27');
INSERT INTO `edu_subject` VALUES ('1365535996510679041', 'mysql', '1365535996477124609', 0, '2021-02-27 13:35:27', '2021-02-27 13:35:27');

-- ----------------------------
-- Table structure for edu_teacher
-- ----------------------------
DROP TABLE IF EXISTS `edu_teacher`;
CREATE TABLE `edu_teacher`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '讲师ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '讲师姓名',
  `intro` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '讲师简介',
  `career` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '讲师资历,一句话说明讲师',
  `level` int(10) UNSIGNED NOT NULL COMMENT '头衔 1高级讲师 2首席讲师',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '讲师头像',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `is_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '讲师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edu_teacher
-- ----------------------------
INSERT INTO `edu_teacher` VALUES ('1', '张三', '近年主持国家自然科学基金（6项）、江苏省重大科技成果转化项目（5项）、江苏省产学研前瞻性联合研究项目（3项）、省工业科技支撑、省高技术、省自然科学基金等省部级及其企业的主要科研项目40多个，多个项目在企业成功转化，产生了较好的经济、社会和环境效益。积极开展产学研科技合作，并与省内16家企业建立了江苏省研究生工作站，其中6家为江苏省优秀研究生工作站', '高级', 1, 'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg', 0, 1, '2019-10-30 14:18:46', '2019-11-12 13:36:36');
INSERT INTO `edu_teacher` VALUES ('1189426437876985857', '王二', '高级讲师简介', '高级讲师', 1, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/teacher/2019/11/08/e44a2e92-2421-4ea3-bb49-46f2ec96ef88.png', 0, 0, '2019-10-30 14:18:56', '2019-11-12 13:37:35');
INSERT INTO `edu_teacher` VALUES ('1189426464967995393', '王五', '高级讲师简介', '高级讲师', 2, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/teacher/2019/10/30/65423f14-49a9-4092-baf5-6d0ef9686a85.png', 0, 0, '2019-10-30 14:19:02', '2019-11-12 13:37:18');
INSERT INTO `edu_teacher` VALUES ('1192249914833055746', '李四', '高级讲师简介', '高级讲师', 1, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/teacher/2019/11/07/91871e25-fd83-4af6-845f-ea8d471d825d.png', 0, 0, '2019-11-07 09:18:25', '2019-11-12 13:37:01');
INSERT INTO `edu_teacher` VALUES ('1192327476087115778', '1222-12-12', '1111', '11', 1, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/teacher/2019/11/08/5805c6cd-c8ad-4a77-aafd-d2e083bfd8a4.png', 0, 1, '2019-11-07 14:26:37', '2019-11-11 16:26:26');
INSERT INTO `edu_teacher` VALUES ('1195337453429129218', 'test', 'sdfsdf', 'sdfdf', 1, 'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg', 0, 1, '2019-11-15 21:47:12', '2019-11-15 21:47:27');
INSERT INTO `edu_teacher` VALUES ('1354699759382147074', '哇哈哈123', '认同和认同和', '山东高速费大概', 1, '让他让他复活', 0, 0, '2021-01-28 15:56:06', '2021-02-28 18:49:28');
INSERT INTO `edu_teacher` VALUES ('1365232946097127425', '测试上传头像0226', '爱泛泛而否认是公司分管', '大发', 1, 'https://atguigu-edu-1010.oss-cn-beijing.aliyuncs.com/2021/02/2616eed74f5d9b413a96c25ecd4e8fbc53file.png', 23, 0, '2021-02-26 17:31:14', '2021-02-26 17:31:14');
INSERT INTO `edu_teacher` VALUES ('1365233576983363585', '发放', '温柔', '热污染', 1, 'https://atguigu-edu-1010.oss-cn-beijing.aliyuncs.com/2021/02/26d95850f1c57043868dc258e63b4b9938file.png', 12, 0, '2021-02-26 17:33:44', '2021-02-26 17:33:44');
INSERT INTO `edu_teacher` VALUES ('1365234469204090881', '围绕', '问问问问而我认为', '二位', 1, 'https://atguigu-edu-1010.oss-cn-beijing.aliyuncs.com/2021/02/268df40f34274e4cc9b9b29702bffcce3dfile.png', 34, 0, '2021-02-26 17:37:17', '2021-02-26 17:37:17');
INSERT INTO `edu_teacher` VALUES ('1365235281229762561', '十分感人', ' 尔特生态特色', '尔特人', 1, 'https://atguigu-edu-1010.oss-cn-beijing.aliyuncs.com/2021/02/26a783a0eca8174056be90b82915714ffffile.png', 56, 0, '2021-02-26 17:40:31', '2021-02-26 17:40:31');
INSERT INTO `edu_teacher` VALUES ('1365235631953268738', '偌大的', '公司的人设人工', '阿尔法', 2, 'https://atguigu-edu-1010.oss-cn-beijing.aliyuncs.com/2021/02/26/0286ff6465bf409db7cdf418c52f1a3bfile.png', 89, 0, '2021-02-26 17:41:54', '2021-02-26 17:41:54');
INSERT INTO `edu_teacher` VALUES ('2', '晴天哇哈哈', '高级讲师简介', '高级讲师资历12', 1, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/teacher/2019/10/30/de47ee9b-7fec-43c5-8173-13c5f7f689b2.png', 1, 0, '2019-10-30 11:53:03', '2021-01-28 16:09:29');
INSERT INTO `edu_teacher` VALUES ('3', '李刚', '高级讲师简介', '高级讲师', 2, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/teacher/2019/10/30/b8aa36a2-db50-4eca-a6e3-cc6e608355e0.png', 2, 0, '2019-10-30 11:55:19', '2019-11-12 13:37:52');

-- ----------------------------
-- Table structure for edu_video
-- ----------------------------
DROP TABLE IF EXISTS `edu_video`;
CREATE TABLE `edu_video`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频ID',
  `course_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程ID',
  `chapter_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '章节ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '节点名称',
  `video_source_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '云端视频资源',
  `video_original_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原始文件名称',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序字段',
  `play_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '播放次数',
  `is_free` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否可以试听：0收费 1免费',
  `duration` float NOT NULL DEFAULT 0 COMMENT '视频时长（秒）',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Empty' COMMENT 'Empty未上传 Transcoding转码中  Normal正常',
  `size` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '视频源文件大小（字节）',
  `version` bigint(20) UNSIGNED NOT NULL DEFAULT 1 COMMENT '乐观锁',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE,
  INDEX `idx_chapter_id`(`chapter_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程视频' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of edu_video
-- ----------------------------
INSERT INTO `edu_video` VALUES ('1189476403626409986', '18', '22', '22', '5155c73dc112475cbbddccf4723f7cef', '视频.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2019-10-30 17:37:29', '2019-10-30 17:37:29');
INSERT INTO `edu_video` VALUES ('1192252824606289921', '1192252213659774977', '1192252428399751169', '第一课时', '756cf06db9cb4f30be85a9758b19c645', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2019-11-07 09:29:59', '2019-11-07 09:29:59');
INSERT INTO `edu_video` VALUES ('1192628092797730818', '1192252213659774977', '1192252428399751169', '第二课时', '2a02d726622f4c7089d44cb993c531e1', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 0, 0, 1, 0, 'Empty', 0, 1, '2019-11-08 10:21:10', '2019-11-08 10:21:22');
INSERT INTO `edu_video` VALUES ('1192632495013380097', '1192252213659774977', '1192252428399751169', '第三课时', '4e560c892fdf4fa2b42e0671aa42fa9d', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 0, 0, 1, 0, 'Empty', 0, 1, '2019-11-08 10:38:40', '2019-11-08 10:38:40');
INSERT INTO `edu_video` VALUES ('1194117638832111617', '1192252213659774977', '1192252428399751169', '第四课时', '4e560c892fdf4fa2b42e0671aa42fa9d', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2019-11-12 13:00:05', '2019-11-12 13:00:05');
INSERT INTO `edu_video` VALUES ('1196263770832023554', '1192252213659774977', '1192252428399751169', '第五课时', '27d21158b0834cb5a8d50710937de330', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 5, 0, 0, 0, 'Empty', 0, 1, '2019-11-18 11:08:03', '2019-11-18 11:08:03');
INSERT INTO `edu_video` VALUES ('1365978500192210943', '121', '1365978500192210946', 'test', '2b887dc9584d4dc68908780ec57cd3b9', '视频', 1, 0, 0, 0, 'Empty', 0, 1, '2019-10-30 17:17:41', '2019-10-30 17:17:41');
INSERT INTO `edu_video` VALUES ('1366001597683286017', '1365978957170020353', '1365978993316532225', '蚊', '', NULL, 34, 0, 0, 0, 'Empty', 0, 1, '2021-02-28 20:25:35', '2021-02-28 20:25:35');
INSERT INTO `edu_video` VALUES ('1366030429354184705', '1366030379362275329', '1366030403659878401', '123', '', '', 2, 0, 0, 0, 'Empty', 0, 1, '2021-02-28 22:20:09', '2021-02-28 22:20:09');
INSERT INTO `edu_video` VALUES ('1366031821586268162', '1366031755672780801', '1366031789000720385', '234224', '', '', 2342, 0, 0, 0, 'Empty', 0, 1, '2021-02-28 22:25:41', '2021-02-28 22:25:41');
INSERT INTO `edu_video` VALUES ('1367004287418753025', '1367004189603389441', '1367004222805499905', '232323v发v', '', '', 3, 0, 0, 0, 'Empty', 0, 1, '2021-03-03 14:49:54', '2021-03-03 14:49:54');
INSERT INTO `edu_video` VALUES ('1367004474564403201', '1367004189603389441', '1367004222805499905', '玩儿完任务', '', '', 13, 0, 0, 0, 'Empty', 0, 1, '2021-03-03 14:50:39', '2021-03-03 14:50:39');
INSERT INTO `edu_video` VALUES ('1367042049106763778', '3453', '1367041683317317634', '时代感和活动官方', '', '', 23, 0, 0, 0, 'Empty', 0, 1, '2021-03-03 17:19:58', '2021-03-03 17:19:58');
INSERT INTO `edu_video` VALUES ('17', '18', '15', '第一节：Java简介', '196116a6fee742e1ba9f6c18f65bd8c1', '1', 1, 1000, 1, 100, 'Draft', 0, 1, '2019-01-01 13:08:57', '2019-10-11 11:26:39');
INSERT INTO `edu_video` VALUES ('18', '18', '15', '第二节：表达式和赋值语句', '2d99b08ca0214909899910c9ba042d47', '7 - How Do I Find Time for My ', 2, 999, 1, 100, 'Draft', 0, 1, '2019-01-01 13:09:02', '2019-03-08 03:30:27');
INSERT INTO `edu_video` VALUES ('19', '18', '15', '第三节：String类', '51120d59ddfd424cb5ab08b44fc8b23a', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 3, 888, 0, 100, 'Draft', 0, 1, '2019-01-01 13:09:05', '2019-11-12 12:50:45');
INSERT INTO `edu_video` VALUES ('20', '18', '15', '第四节：程序风格', '2a38988892d84df598752226c50f3fa3', '00-day10总结.avi', 4, 666, 0, 100, 'Draft', 0, 1, '2019-01-01 13:09:05', '2019-10-11 09:20:09');

-- ----------------------------
-- Table structure for statistics_daily
-- ----------------------------
DROP TABLE IF EXISTS `statistics_daily`;
CREATE TABLE `statistics_daily`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `date_calculated` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '统计日期',
  `register_num` int(11) NOT NULL DEFAULT 0 COMMENT '注册人数',
  `login_num` int(11) NOT NULL DEFAULT 0 COMMENT '登录人数',
  `video_view_num` int(11) NOT NULL DEFAULT 0 COMMENT '每日播放视频数',
  `course_num` int(11) NOT NULL DEFAULT 0 COMMENT '每日新增课程数',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `statistics_day`(`date_calculated`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网站统计日数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statistics_daily
-- ----------------------------
INSERT INTO `statistics_daily` VALUES ('1078490017163833345', '2018-12-28', 0, 0, 154, 170, '2018-12-28 11:17:12', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1087142127818768386', '2019-01-02', 2, 0, 167, 177, '2019-01-21 08:17:36', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1087198321809457153', '2019-01-01', 1, 0, 130, 189, '2019-01-21 12:00:54', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1087198383973236738', '2019-01-03', 0, 0, 114, 130, '2019-01-21 12:01:09', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1087451681764982785', '2019-01-04', 0, 0, 118, 155, '2019-01-22 04:47:39', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1087455336471785473', '2019-01-05', 0, 0, 184, 186, '2019-01-22 05:02:11', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1105339962460491777', '2019-03-01', 0, 143, 168, 136, '2019-03-12 13:29:18', '2019-03-12 13:29:18');
INSERT INTO `statistics_daily` VALUES ('1105339977027309569', '2019-03-02', 0, 165, 171, 158, '2019-03-12 13:29:21', '2019-03-12 13:29:21');
INSERT INTO `statistics_daily` VALUES ('1105339990738489346', '2019-03-03', 0, 143, 147, 194, '2019-03-12 13:29:25', '2019-03-12 13:29:25');
INSERT INTO `statistics_daily` VALUES ('1105340000544772098', '2019-03-04', 0, 155, 106, 153, '2019-03-12 13:29:27', '2019-03-12 13:29:27');
INSERT INTO `statistics_daily` VALUES ('1105340011244441602', '2019-03-05', 0, 186, 102, 155, '2019-03-12 13:29:30', '2019-03-12 13:29:30');
INSERT INTO `statistics_daily` VALUES ('1105340020929089538', '2019-03-06', 0, 140, 192, 129, '2019-03-12 13:29:32', '2019-03-12 13:29:32');
INSERT INTO `statistics_daily` VALUES ('1105340029800042497', '2019-03-07', 0, 186, 139, 116, '2019-03-12 13:29:34', '2019-03-12 13:29:34');
INSERT INTO `statistics_daily` VALUES ('1105340038696161282', '2019-03-08', 0, 120, 166, 112, '2019-03-12 13:29:36', '2019-03-12 13:29:36');
INSERT INTO `statistics_daily` VALUES ('1105340049441968129', '2019-03-09', 0, 182, 147, 119, '2019-03-12 13:29:39', '2019-03-12 13:29:39');
INSERT INTO `statistics_daily` VALUES ('1105340059738984449', '2019-03-10', 0, 199, 141, 103, '2019-03-12 13:29:41', '2019-03-12 13:29:41');
INSERT INTO `statistics_daily` VALUES ('1105340070438653953', '2019-03-11', 0, 127, 137, 156, '2019-03-12 13:29:44', '2019-03-12 13:29:44');
INSERT INTO `statistics_daily` VALUES ('1105340080307851266', '2019-03-12', 0, 167, 123, 132, '2019-03-12 13:29:46', '2019-03-12 13:29:46');
INSERT INTO `statistics_daily` VALUES ('1105340090047025153', '2019-03-13', 0, 106, 132, 103, '2019-03-12 13:29:48', '2019-03-12 13:29:48');
INSERT INTO `statistics_daily` VALUES ('1105340100075606017', '2019-03-14', 0, 166, 180, 118, '2019-03-12 13:29:51', '2019-03-12 13:29:51');
INSERT INTO `statistics_daily` VALUES ('1105340110511034370', '2019-03-15', 0, 114, 151, 185, '2019-03-12 13:29:53', '2019-03-12 13:29:53');
INSERT INTO `statistics_daily` VALUES ('1105340121412030466', '2019-03-16', 0, 134, 105, 126, '2019-03-12 13:29:56', '2019-03-12 13:29:56');
INSERT INTO `statistics_daily` VALUES ('1105340132833120258', '2019-03-17', 0, 169, 106, 131, '2019-03-12 13:29:59', '2019-03-12 13:29:59');
INSERT INTO `statistics_daily` VALUES ('1105340145659301890', '2019-03-18', 0, 120, 106, 163, '2019-03-12 13:30:02', '2019-03-12 13:30:02');
INSERT INTO `statistics_daily` VALUES ('1105340153578147842', '2019-03-19', 0, 146, 155, 153, '2019-03-12 13:30:03', '2019-03-12 13:30:03');
INSERT INTO `statistics_daily` VALUES ('1105340162436517890', '2019-03-20', 0, 127, 181, 186, '2019-03-12 13:30:06', '2019-03-12 13:30:06');
INSERT INTO `statistics_daily` VALUES ('1105340171517186050', '2019-03-21', 0, 106, 134, 145, '2019-03-12 13:30:08', '2019-03-12 13:30:08');
INSERT INTO `statistics_daily` VALUES ('1105340181034061825', '2019-03-22', 0, 161, 182, 143, '2019-03-12 13:30:10', '2019-03-12 13:30:10');
INSERT INTO `statistics_daily` VALUES ('1105340190072786946', '2019-03-23', 0, 183, 101, 182, '2019-03-12 13:30:12', '2019-03-12 13:30:12');
INSERT INTO `statistics_daily` VALUES ('1105340199426084865', '2019-03-24', 0, 117, 100, 102, '2019-03-12 13:30:14', '2019-03-12 13:30:14');
INSERT INTO `statistics_daily` VALUES ('1105340209261727745', '2019-03-25', 0, 116, 103, 160, '2019-03-12 13:30:17', '2019-03-12 13:30:17');
INSERT INTO `statistics_daily` VALUES ('1105340217935548418', '2019-03-26', 0, 101, 119, 150, '2019-03-12 13:30:19', '2019-03-12 13:30:19');
INSERT INTO `statistics_daily` VALUES ('1105340225967640577', '2019-03-27', 0, 129, 141, 181, '2019-03-12 13:30:21', '2019-03-12 13:30:21');
INSERT INTO `statistics_daily` VALUES ('1105340234075230209', '2019-03-28', 0, 113, 179, 158, '2019-03-12 13:30:23', '2019-03-12 13:30:23');
INSERT INTO `statistics_daily` VALUES ('1105340242837131265', '2019-03-29', 0, 117, 131, 101, '2019-03-12 13:30:25', '2019-03-12 13:30:25');
INSERT INTO `statistics_daily` VALUES ('1105340252395950082', '2019-03-30', 0, 153, 187, 174, '2019-03-12 13:30:27', '2019-03-12 13:30:27');
INSERT INTO `statistics_daily` VALUES ('1105340261958963201', '2019-03-31', 0, 179, 135, 199, '2019-03-12 13:30:29', '2019-03-12 13:30:29');
INSERT INTO `statistics_daily` VALUES ('1105372743634898945', '2019-01-06', 0, 113, 143, 148, '2019-03-12 15:39:34', '2019-03-12 15:39:34');
INSERT INTO `statistics_daily` VALUES ('1105372754380705793', '2019-01-07', 0, 173, 158, 153, '2019-03-12 15:39:36', '2019-03-12 15:39:36');
INSERT INTO `statistics_daily` VALUES ('1105372762526044162', '2019-01-08', 0, 135, 199, 131, '2019-03-12 15:39:38', '2019-03-12 15:39:38');
INSERT INTO `statistics_daily` VALUES ('1105372771229224961', '2019-01-09', 0, 161, 107, 162, '2019-03-12 15:39:40', '2019-03-12 15:39:40');
INSERT INTO `statistics_daily` VALUES ('1105372780922261505', '2019-01-10', 0, 182, 196, 135, '2019-03-12 15:39:42', '2019-03-12 15:39:42');
INSERT INTO `statistics_daily` VALUES ('1105372790103592961', '2019-01-11', 0, 123, 194, 102, '2019-03-12 15:39:45', '2019-03-12 15:39:45');
INSERT INTO `statistics_daily` VALUES ('1105372798626418689', '2019-01-12', 0, 185, 106, 180, '2019-03-12 15:39:47', '2019-03-12 15:39:47');
INSERT INTO `statistics_daily` VALUES ('1165', '2018-01-01', 583, 26, 236, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1166', '2018-01-02', 583, 26, 236, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1167', '2018-01-03', 584, 26, 236, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1168', '2018-01-04', 584, 26, 237, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1169', '2018-01-05', 585, 26, 237, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1170', '2018-01-06', 585, 26, 237, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1171', '2018-01-07', 586, 26, 237, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1172', '2018-01-08', 586, 26, 237, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1173', '2018-01-09', 587, 26, 238, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1174', '2018-01-10', 587, 26, 238, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1175', '2018-01-11', 588, 27, 238, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1176', '2018-01-12', 588, 27, 238, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1177', '2018-01-13', 589, 27, 238, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1178', '2018-01-14', 589, 27, 239, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1179', '2018-01-15', 590, 27, 239, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1180', '2018-01-16', 590, 27, 239, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1181', '2018-01-17', 591, 27, 239, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1182', '2018-01-18', 591, 27, 239, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1183', '2018-01-19', 592, 27, 240, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1183991737299263490', '2019-10-01', 0, 145, 149, 153, '2019-10-15 14:23:22', '2019-10-15 14:23:22');
INSERT INTO `statistics_daily` VALUES ('1183999299272904705', '2019-10-03', 0, 125, 102, 153, '2019-10-15 14:53:25', '2019-10-15 14:53:25');
INSERT INTO `statistics_daily` VALUES ('1183999309477646338', '2019-10-04', 0, 103, 194, 161, '2019-10-15 14:53:28', '2019-10-15 14:53:28');
INSERT INTO `statistics_daily` VALUES ('1183999318919024642', '2019-10-05', 0, 173, 174, 147, '2019-10-15 14:53:30', '2019-10-15 14:53:30');
INSERT INTO `statistics_daily` VALUES ('1183999331409661954', '2019-10-06', 0, 129, 197, 173, '2019-10-15 14:53:33', '2019-10-15 14:53:33');
INSERT INTO `statistics_daily` VALUES ('1183999342897860610', '2019-10-07', 0, 184, 125, 169, '2019-10-15 14:53:36', '2019-10-15 14:53:36');
INSERT INTO `statistics_daily` VALUES ('1183999351588458498', '2019-10-08', 0, 173, 143, 138, '2019-10-15 14:53:38', '2019-10-15 14:53:38');
INSERT INTO `statistics_daily` VALUES ('1183999360316805122', '2019-10-09', 0, 161, 158, 117, '2019-10-15 14:53:40', '2019-10-15 14:53:40');
INSERT INTO `statistics_daily` VALUES ('1183999367480676353', '2019-10-10', 0, 190, 166, 135, '2019-10-15 14:53:42', '2019-10-15 14:53:42');
INSERT INTO `statistics_daily` VALUES ('1184', '2018-01-20', 592, 27, 240, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1184030117693284353', '2019-10-11', 0, 182, 199, 193, '2019-10-15 16:55:53', '2019-10-15 16:55:53');
INSERT INTO `statistics_daily` VALUES ('1185', '2018-01-21', 593, 27, 240, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1185373213064482818', '2019-01-19', 6, 135, 126, 167, '2019-10-19 09:52:52', '2019-10-19 09:52:52');
INSERT INTO `statistics_daily` VALUES ('1186', '2018-01-22', 593, 27, 240, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1186536619937435650', '2019-10-02', 0, 187, 183, 108, '2019-10-22 14:55:50', '2019-10-22 14:55:50');
INSERT INTO `statistics_daily` VALUES ('1187', '2018-01-23', 594, 27, 240, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1188', '2018-01-24', 594, 27, 241, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1189', '2018-01-25', 595, 27, 241, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1190', '2018-01-26', 595, 27, 241, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1191', '2018-01-27', 596, 27, 241, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1192', '2018-01-28', 596, 27, 241, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1192253597226455042', '2019-11-01', 0, 129, 122, 167, '2019-11-07 09:33:03', '2019-11-07 09:33:03');
INSERT INTO `statistics_daily` VALUES ('1192253902756335617', '2019-11-02', 0, 170, 192, 192, '2019-11-07 09:34:16', '2019-11-07 09:34:16');
INSERT INTO `statistics_daily` VALUES ('1193', '2018-01-29', 597, 27, 242, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1194', '2018-01-30', 597, 27, 242, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1194060032935493633', '2019-11-11', 0, 121, 121, 122, '2019-11-12 09:11:11', '2019-11-12 09:11:11');
INSERT INTO `statistics_daily` VALUES ('1194060301425475585', '2019-11-10', 0, 155, 187, 140, '2019-11-12 09:12:15', '2019-11-12 09:12:15');
INSERT INTO `statistics_daily` VALUES ('1195', '2018-01-31', 598, 27, 242, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1196', '2018-02-01', 598, 27, 242, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1197', '2018-02-02', 599, 27, 242, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1198', '2018-02-03', 599, 27, 243, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1199', '2018-02-04', 600, 27, 243, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1200', '2018-02-05', 600, 27, 243, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1201', '2018-02-06', 601, 27, 243, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1202', '2018-02-07', 601, 27, 243, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1203', '2018-02-08', 602, 27, 244, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1204', '2018-02-09', 602, 27, 244, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1205', '2018-02-10', 603, 27, 244, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1206', '2018-02-11', 603, 27, 244, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1207', '2018-02-12', 604, 27, 244, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1208', '2018-02-13', 604, 27, 245, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1209', '2018-02-14', 605, 27, 245, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1210', '2018-02-15', 605, 27, 245, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1211', '2018-02-16', 606, 27, 245, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1212', '2018-02-17', 606, 27, 245, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1213', '2018-02-18', 607, 27, 246, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1214', '2018-02-19', 607, 27, 246, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1215', '2018-02-20', 608, 27, 246, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1216', '2018-02-21', 608, 27, 246, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1217', '2018-02-22', 609, 27, 246, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1218', '2018-02-23', 609, 27, 247, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1219', '2018-02-24', 610, 27, 247, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1220', '2018-02-25', 610, 27, 247, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1221', '2018-02-26', 611, 27, 247, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1222', '2018-02-27', 611, 27, 247, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1223', '2018-02-28', 612, 27, 248, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1224', '2018-03-01', 612, 27, 248, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1225', '2018-03-02', 613, 28, 248, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1226', '2018-03-03', 613, 28, 248, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1227', '2018-03-04', 614, 28, 248, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1228', '2018-03-05', 614, 28, 249, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1229', '2018-03-06', 615, 28, 249, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1230', '2018-03-07', 615, 28, 249, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1231', '2018-03-08', 616, 28, 249, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1232', '2018-03-09', 616, 28, 249, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1233', '2018-03-10', 617, 28, 250, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1234', '2018-03-11', 617, 28, 250, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1235', '2018-03-12', 618, 28, 250, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1236', '2018-03-13', 618, 28, 250, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1237', '2018-03-14', 619, 28, 250, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1238', '2018-03-15', 619, 28, 251, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1239', '2018-03-16', 620, 28, 251, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1240', '2018-03-17', 620, 28, 251, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1241', '2018-03-18', 621, 28, 251, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1242', '2018-03-19', 621, 28, 251, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1243', '2018-03-20', 622, 28, 252, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1244', '2018-03-21', 622, 28, 252, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1245', '2018-03-22', 623, 28, 252, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1246', '2018-03-23', 623, 28, 252, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1247', '2018-03-24', 624, 28, 252, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1248', '2018-03-25', 624, 28, 253, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1249', '2018-03-26', 625, 28, 253, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1250', '2018-03-27', 625, 28, 253, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1251', '2018-03-28', 626, 28, 253, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1252', '2018-03-29', 626, 28, 253, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1253', '2018-03-30', 627, 28, 254, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1254', '2018-03-31', 627, 28, 254, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1255', '2018-04-01', 628, 28, 254, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1256', '2018-04-02', 628, 28, 254, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1257', '2018-04-03', 629, 28, 254, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1258', '2018-04-04', 629, 28, 255, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1259', '2018-04-05', 630, 28, 255, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1260', '2018-04-06', 630, 28, 255, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1261', '2018-04-07', 631, 28, 255, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1262', '2018-04-08', 631, 28, 255, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1263', '2018-04-09', 632, 28, 256, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1264', '2018-04-10', 632, 28, 256, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1265', '2018-04-11', 633, 28, 256, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1266', '2018-04-12', 633, 28, 256, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1267', '2018-04-13', 634, 28, 256, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1268', '2018-04-14', 634, 28, 257, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1269', '2018-04-15', 635, 28, 257, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1270', '2018-04-16', 635, 28, 257, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1271', '2018-04-17', 636, 28, 257, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1272', '2018-04-18', 636, 28, 257, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1273', '2018-04-19', 637, 28, 258, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1274', '2018-04-20', 637, 28, 258, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1275', '2018-04-21', 638, 29, 258, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1276', '2018-04-22', 638, 29, 258, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1277', '2018-04-23', 639, 29, 258, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1278', '2018-04-24', 639, 29, 259, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1279', '2018-04-25', 640, 29, 259, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1280', '2018-04-26', 640, 29, 259, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1281', '2018-04-27', 641, 29, 259, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1282', '2018-04-28', 641, 29, 259, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1283', '2018-04-29', 642, 29, 260, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1284', '2018-04-30', 642, 29, 260, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1285', '2018-05-01', 643, 29, 260, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1286', '2018-05-02', 643, 29, 260, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1287', '2018-05-03', 644, 29, 260, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1288', '2018-05-04', 644, 29, 261, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1289', '2018-05-05', 645, 29, 261, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1290', '2018-05-06', 645, 29, 261, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1291', '2018-05-07', 646, 29, 261, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1292', '2018-05-08', 646, 29, 261, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1293', '2018-05-09', 647, 29, 262, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1294', '2018-05-10', 647, 29, 262, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1295', '2018-05-11', 648, 29, 262, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1296', '2018-05-12', 648, 29, 262, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1297', '2018-05-13', 649, 29, 262, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1298', '2018-05-14', 649, 29, 263, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1299', '2018-05-15', 5, 29, 263, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1300', '2018-05-16', 650, 29, 263, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1301', '2018-05-17', 651, 29, 263, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1302', '2018-05-18', 651, 29, 263, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1303', '2018-05-19', 652, 29, 264, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1304', '2018-05-20', 652, 29, 264, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1305', '2018-05-21', 653, 29, 264, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1306', '2018-05-22', 1, 29, 264, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1307', '2018-05-23', 654, 29, 264, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1308', '2018-05-24', 654, 29, 265, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1309', '2018-05-25', 1, 29, 265, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1310', '2018-05-26', 655, 29, 265, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1311', '2018-05-27', 656, 29, 265, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1312', '2018-05-28', 656, 29, 265, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1313', '2018-05-29', 657, 29, 266, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1314', '2018-05-30', 657, 29, 266, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1315', '2018-05-31', 658, 29, 266, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1316', '2018-06-01', 658, 29, 266, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1317', '2018-06-02', 659, 29, 266, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1318', '2018-06-03', 659, 29, 267, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1319', '2018-06-04', 660, 29, 267, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1320', '2018-06-05', 660, 29, 267, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1321', '2018-06-06', 661, 29, 267, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1322', '2018-06-07', 661, 29, 267, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1323', '2018-06-08', 662, 29, 268, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1324', '2018-06-09', 662, 29, 268, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1325', '2018-06-10', 663, 30, 268, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1326', '2018-06-11', 663, 30, 268, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1327', '2018-06-12', 664, 30, 268, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1328', '2018-06-13', 664, 30, 269, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1329', '2018-06-14', 665, 30, 269, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1330', '2018-06-15', 665, 30, 269, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1331', '2018-06-16', 666, 30, 269, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1332', '2018-06-17', 666, 30, 269, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1333', '2018-06-18', 667, 30, 270, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1334', '2018-06-19', 667, 30, 270, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1335', '2018-06-20', 668, 30, 270, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1336', '2018-06-21', 668, 30, 270, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1337', '2018-06-22', 669, 30, 270, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1338', '2018-06-23', 669, 30, 271, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1339', '2018-06-24', 670, 30, 271, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1340', '2018-06-25', 670, 30, 271, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1341', '2018-06-26', 671, 30, 271, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1342', '2018-06-27', 671, 30, 271, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1343', '2018-06-28', 672, 30, 272, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1344', '2018-06-29', 672, 30, 272, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1345', '2018-06-30', 673, 30, 272, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1346', '2018-07-01', 673, 30, 272, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1347', '2018-07-02', 674, 30, 272, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1348', '2018-07-03', 674, 30, 273, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1349', '2018-07-04', 675, 30, 273, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1350', '2018-07-05', 675, 30, 273, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1351', '2018-07-06', 676, 30, 273, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1352', '2018-07-07', 676, 30, 273, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1353', '2018-07-08', 677, 30, 274, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1354', '2018-07-09', 677, 30, 274, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1355', '2018-07-10', 678, 30, 274, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1356', '2018-07-11', 678, 30, 274, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1357', '2018-07-12', 679, 30, 274, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1358', '2018-07-13', 679, 30, 275, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1359', '2018-07-14', 680, 30, 275, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1360', '2018-07-15', 680, 30, 275, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1361', '2018-07-16', 681, 30, 275, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1362', '2018-07-17', 681, 30, 275, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1363', '2018-07-18', 682, 30, 276, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1364', '2018-07-19', 682, 30, 276, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1365', '2018-07-20', 683, 30, 276, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1366', '2018-07-21', 683, 30, 276, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1367', '2018-07-22', 684, 30, 276, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1368', '2018-07-23', 684, 30, 277, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1369', '2018-07-24', 685, 30, 277, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1370', '2018-07-25', 685, 30, 277, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1371', '2018-07-26', 686, 30, 277, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1372', '2018-07-27', 686, 30, 277, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1373', '2018-07-28', 687, 30, 278, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1374', '2018-07-29', 687, 30, 278, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1375', '2018-07-30', 688, 31, 278, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1376', '2018-07-31', 688, 31, 278, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1377', '2018-08-01', 689, 31, 278, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1378', '2018-08-02', 689, 31, 279, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1379', '2018-08-03', 690, 31, 279, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1380', '2018-08-04', 690, 31, 279, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1381', '2018-08-05', 691, 31, 279, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1382', '2018-08-06', 691, 31, 279, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1383', '2018-08-07', 692, 31, 280, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1384', '2018-08-08', 692, 31, 280, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1385', '2018-08-09', 1, 31, 280, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1386', '2018-08-10', 693, 31, 280, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1387', '2018-08-11', 694, 31, 280, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1388', '2018-08-12', 694, 31, 281, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1389', '2018-08-13', 695, 31, 281, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1390', '2018-08-14', 695, 31, 281, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1391', '2018-08-15', 696, 31, 281, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1392', '2018-08-16', 696, 31, 281, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1393', '2018-08-17', 697, 31, 282, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1394', '2018-08-18', 697, 31, 282, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1395', '2018-08-19', 698, 31, 282, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1396', '2018-08-20', 698, 31, 282, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1397', '2018-08-21', 699, 31, 282, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1398', '2018-08-22', 699, 31, 283, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1399', '2018-08-23', 700, 31, 283, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1400', '2018-08-24', 700, 31, 283, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1401', '2018-08-25', 701, 31, 283, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1402', '2018-08-26', 701, 31, 283, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1403', '2018-08-27', 702, 31, 284, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1404', '2018-08-28', 702, 31, 284, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1405', '2018-08-29', 703, 31, 284, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1406', '2018-08-30', 703, 31, 284, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1407', '2018-08-31', 704, 31, 284, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1408', '2018-09-01', 1, 31, 285, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1409', '2018-09-02', 705, 31, 285, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1410', '2018-09-03', 705, 31, 285, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1411', '2018-09-04', 706, 31, 285, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1412', '2018-09-05', 706, 31, 285, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1413', '2018-09-06', 707, 31, 286, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1414', '2018-09-07', 707, 31, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1415', '2018-09-08', 708, 31, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1416', '2018-09-09', 1, 31, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1417', '2018-09-10', 1, 31, 2, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1418', '2018-09-11', 709, 31, 287, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1419', '2018-09-12', 710, 31, 287, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1420', '2018-09-13', 710, 31, 287, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1421', '2018-09-14', 711, 31, 287, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1422', '2018-09-15', 711, 31, 287, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1423', '2018-09-16', 712, 31, 288, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1424', '2018-09-17', 712, 31, 288, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1425', '2018-09-18', 713, 32, 288, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1426', '2018-09-19', 713, 32, 288, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1427', '2018-09-20', 714, 32, 288, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1428', '2018-09-21', 714, 32, 289, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1429', '2018-09-22', 715, 32, 289, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1430', '2018-09-23', 715, 32, 289, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1431', '2018-09-24', 716, 32, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1432', '2018-09-25', 716, 32, 289, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1433', '2018-09-26', 717, 32, 290, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1434', '2018-09-27', 717, 32, 290, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1435', '2018-09-28', 718, 32, 290, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1436', '2018-09-29', 718, 32, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1437', '2018-09-30', 719, 32, 290, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1438', '2018-10-01', 719, 32, 291, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1439', '2018-10-02', 720, 32, 291, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1440', '2018-10-03', 720, 32, 291, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1441', '2018-10-04', 721, 32, 291, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1442', '2018-10-05', 721, 32, 291, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1443', '2018-10-06', 722, 32, 292, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1444', '2018-10-07', 722, 32, 292, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1445', '2018-10-08', 1, 32, 292, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1446', '2018-10-09', 723, 32, 292, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1447', '2018-10-10', 724, 32, 292, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1448', '2018-10-11', 724, 32, 293, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1449', '2018-10-12', 725, 32, 293, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1450', '2018-10-13', 725, 32, 293, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1451', '2018-10-14', 726, 32, 4, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1452', '2018-10-15', 726, 32, 293, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1453', '2018-10-16', 727, 32, 294, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1454', '2018-10-17', 727, 32, 294, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1455', '2018-10-18', 728, 32, 294, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1456', '2018-10-19', 728, 32, 294, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1457', '2018-10-20', 729, 32, 294, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1458', '2018-10-21', 729, 32, 295, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1459', '2018-10-22', 730, 32, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1460', '2018-10-23', 730, 32, 295, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1461', '2018-10-24', 731, 32, 295, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1462', '2018-10-25', 731, 32, 295, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1463', '2018-10-26', 732, 32, 296, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1464', '2018-10-27', 732, 32, 296, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1465', '2018-10-28', 733, 32, 296, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1466', '2018-10-29', 2, 32, 3, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1467', '2018-10-30', 734, 32, 296, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1468', '2018-10-31', 734, 32, 297, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1469', '2018-11-01', 735, 32, 297, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1470', '2018-11-02', 735, 32, 297, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1471', '2018-11-03', 1, 32, 297, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1472', '2018-11-04', 736, 32, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1473', '2018-11-05', 737, 32, 298, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1474', '2018-11-06', 737, 32, 298, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1475', '2018-11-07', 738, 33, 298, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1476', '2018-11-08', 738, 33, 169, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1477', '2018-11-09', 1, 33, 298, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1478', '2018-11-10', 739, 33, 78, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1479', '2018-11-11', 740, 33, 299, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1480', '2018-11-12', 740, 33, 299, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1481', '2018-11-13', 741, 33, 299, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1482', '2018-11-14', 741, 33, 299, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1483', '2018-11-15', 742, 33, 300, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1484', '2018-11-16', 742, 33, 35, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1485', '2018-11-17', 743, 33, 300, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1486', '2018-11-18', 743, 33, 300, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1487', '2018-11-19', 744, 33, 300, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1488', '2018-11-20', 744, 33, 301, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1489', '2018-11-21', 745, 33, 234, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1490', '2018-11-22', 456, 33, 301, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1491', '2018-11-23', 746, 33, 301, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1492', '2018-11-24', 746, 33, 301, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1493', '2018-11-25', 747, 33, 302, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1494', '2018-11-26', 747, 4, 302, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1495', '2018-11-27', 748, 33, 302, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1496', '2018-11-28', 748, 33, 36, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1497', '2018-11-29', 749, 33, 302, 2, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1498', '2018-11-30', 749, 3, 303, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1499', '2018-12-01', 750, 33, 303, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1500', '2018-12-02', 234, 33, 303, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1501', '2018-12-03', 751, 33, 303, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1502', '2018-12-04', 751, 33, 303, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1503', '2018-12-05', 752, 6, 304, 33, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1505', '2018-12-07', 753, 33, 55, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1506', '2018-12-08', 753, 33, 304, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1507', '2018-12-09', 754, 33, 304, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1508', '2018-12-10', 754, 1, 305, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1509', '2018-12-11', 755, 33, 305, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1510', '2018-12-12', 755, 33, 305, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1511', '2018-12-13', 756, 33, 305, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1512', '2018-12-14', 366, 33, 305, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1513', '2018-12-15', 757, 33, 66, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1514', '2018-12-16', 757, 33, 306, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1515', '2018-12-17', 758, 33, 306, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1516', '2018-12-18', 758, 2, 306, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1517', '2018-12-19', 759, 33, 306, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1518', '2018-12-20', 564, 33, 307, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1519', '2018-12-21', 760, 33, 307, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1520', '2018-12-22', 760, 33, 307, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1521', '2018-12-23', 761, 33, 307, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1522', '2018-12-24', 761, 33, 307, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1527', '2018-12-29', 764, 34, 308, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1528', '2018-12-30', 764, 34, 309, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1529', '2018-12-31', 765, 34, 309, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1554', '2018-01-01', 333, 34, 314, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1555', '2018-01-02', 778, 34, 314, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1556', '2018-01-03', 778, 34, 314, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1557', '2018-01-04', 779, 34, 314, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1558', '2018-01-05', 779, 34, 315, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1559', '2018-01-06', 780, 34, 315, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1560', '2018-01-07', 780, 34, 315, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1561', '2018-01-08', 781, 34, 315, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1562', '2018-01-09', 781, 34, 315, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1563', '2018-01-10', 782, 34, 316, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1564', '2018-01-11', 782, 34, 316, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1565', '2018-01-12', 783, 34, 316, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1566', '2018-01-13', 783, 34, 316, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1567', '2018-01-14', 784, 34, 316, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1568', '2018-01-15', 784, 34, 317, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1569', '2018-01-16', 23, 34, 317, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1570', '2018-01-17', 785, 34, 317, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1571', '2018-01-18', 786, 34, 317, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1572', '2018-01-19', 786, 34, 317, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1573', '2018-01-20', 787, 2, 318, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1574', '2018-01-21', 787, 2, 318, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1575', '2018-01-22', 788, 1, 318, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1576', '2018-01-23', 788, 35, 318, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1577', '2018-01-24', 789, 35, 318, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1578', '2018-01-25', 789, 1, 319, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1579', '2018-01-26', 790, 1, 319, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1580', '2018-01-27', 531, 2, 319, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1581', '2018-01-28', 791, 2, 319, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1582', '2018-01-29', 791, 2, 319, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1583', '2018-01-30', 2, 4, 2, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1584', '2018-01-31', 792, 35, 320, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1586', '2018-02-01', 793, 4, 3, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1587', '2018-02-02', 794, 2, 1, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1588', '2018-02-03', 794, 1, 4, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1589', '2018-02-04', 795, 35, 321, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1590', '2018-02-05', 795, 35, 321, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1591', '2018-02-06', 796, 35, 321, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1592', '2018-02-07', 796, 35, 321, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1593', '2018-02-08', 797, 35, 322, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1594', '2018-02-09', 797, 35, 322, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1595', '2018-02-10', 99, 35, 322, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1596', '2018-02-11', 798, 35, 322, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1597', '2018-02-12', 799, 35, 322, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1598', '2018-02-13', 799, 35, 323, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1599', '2018-02-14', 800, 35, 323, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1600', '2018-02-15', 800, 35, 323, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1601', '2018-02-16', 89, 35, 90, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1602', '2018-02-17', 801, 35, 323, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1603', '2018-02-18', 802, 23, 324, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1604', '2018-02-19', 802, 2, 324, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1605', '2018-02-20', 803, 56, 324, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1606', '2018-02-21', 45, 35, 89, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1607', '2018-02-22', 804, 35, 324, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1608', '2018-02-23', 804, 35, 325, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1609', '2018-02-24', 805, 1, 3, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1610', '2018-05-15', 0, 0, 0, 7, '2018-05-16 00:25:27', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1611', '2018-10-01', 0, 0, 0, 7, '2018-10-24 16:17:15', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1612', '2018-10-02', 0, 0, 0, 7, '2018-10-24 16:17:15', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1613', '2018-10-03', 0, 0, 0, 7, '2018-10-24 16:17:15', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1614', '2018-10-04', 0, 0, 0, 7, '2018-10-24 16:17:15', '2019-09-09 12:12:12');
INSERT INTO `statistics_daily` VALUES ('1615', '2018-10-05', 0, 0, 0, 7, '2018-10-24 16:17:15', '2019-09-09 12:12:12');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `course_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '课程id',
  `course_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `course_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程封面',
  `teacher_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '讲师名称',
  `member_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '会员id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员昵称',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员手机',
  `total_fee` decimal(10, 2) NULL DEFAULT 0.01 COMMENT '订单金额（分）',
  `pay_type` tinyint(3) NULL DEFAULT NULL COMMENT '支付类型（1：微信 2：支付宝）',
  `status` tinyint(3) NULL DEFAULT NULL COMMENT '订单状态（0：未支付 1：已支付）',
  `is_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_order_no`(`order_no`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE,
  INDEX `idx_member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1195693605513891841', '1195693605555834880', '18', 'Java精品课程', 'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/06/866e9aca-b530-4f71-a690-72d4a4bfd1e7.jpg', '晴天', '1', '小三1231', '13700000001', 1.00, NULL, 0, 0, '2019-11-16 21:22:25', '2019-11-16 21:22:25');
INSERT INTO `t_order` VALUES ('1195694200178118657', '1195694200186507264', '18', 'Java精品课程', 'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/06/866e9aca-b530-4f71-a690-72d4a4bfd1e7.jpg', '晴天', '1', '小三1231', '13700000001', 1.00, NULL, 0, 0, '2019-11-16 21:24:47', '2019-11-16 21:24:47');
INSERT INTO `t_order` VALUES ('1196264007411744769', '1196264005255872512', '1192252213659774977', 'java基础课程：test', 'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/cover/default.gif', '晴天', '1', '小三1231', '13700000001', 1.00, NULL, 1, 0, '2019-11-18 11:09:00', '2019-11-18 11:10:14');
INSERT INTO `t_order` VALUES ('1196265495278174209', '1196265495273979904', '18', 'Java精品课程', 'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/06/866e9aca-b530-4f71-a690-72d4a4bfd1e7.jpg', '晴天', '1', '小三1231', '13700000001', 1.00, NULL, 0, 0, '2019-11-18 11:14:54', '2019-11-18 11:14:54');
INSERT INTO `t_order` VALUES ('1371463026796310530', '20210315220720437', '1365921085157466113', '而微软', '/static/01.jpg', '测试上传头像0226', '1086387099608825858', '用户EoyWUVXQoP', '13520191381', 35.00, 1, 0, 0, '2021-03-15 22:07:21', '2021-03-15 22:07:21');
INSERT INTO `t_order` VALUES ('1371463026796310531', '20210315220720062', '1365921085157466113', '而微软', '/static/01.jpg', '测试上传头像0226', '1086387099608825858', '用户EoyWUVXQoP', '13520191381', 35.00, 1, 0, 0, '2021-03-15 22:07:21', '2021-03-15 22:07:21');
INSERT INTO `t_order` VALUES ('1372476555997442049', '20210318171444635', '1365652949992697857', '2312312314243242342', '/static/01.jpg', '哇哈哈123', '1086387099776598018', '用户dZdjcgltnk', '13520191383', 234.00, 1, 0, 0, '2021-03-18 17:14:45', '2021-03-18 17:14:45');
INSERT INTO `t_order` VALUES ('1372477155250237441', '20210318171707996', '1365652949992697857', '2312312314243242342', '/static/01.jpg', '哇哈哈123', '1086387099776598018', '用户dZdjcgltnk', '13520191383', 234.00, 1, 0, 0, '2021-03-18 17:17:08', '2021-03-18 17:17:08');

-- ----------------------------
-- Table structure for t_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `t_pay_log`;
CREATE TABLE `t_pay_log`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付完成时间',
  `total_fee` decimal(10, 2) NULL DEFAULT 0.01 COMMENT '支付金额（分）',
  `transaction_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易流水号',
  `trade_state` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易状态',
  `pay_type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '支付类型（1：微信 2：支付宝）',
  `attr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '其他属性',
  `is_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_order_no`(`order_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pay_log
-- ----------------------------
INSERT INTO `t_pay_log` VALUES ('1194498446013001730', '1194498300579704832', '2019-11-13 14:13:17', 1.00, '4200000469201911130676624386', 'SUCCESS', 1, '{\"transaction_id\":\"4200000469201911130676624386\",\"nonce_str\":\"2Lc23ILl231It53M\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"CFT\",\"openid\":\"oNpSGwR-QGG5DaZtDkh2UZlsFDQE\",\"sign\":\"5404850AA3ED0E844DE104651477F07A\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1473426802\",\"cash_fee\":\"1\",\"out_trade_no\":\"1194498300579704832\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx8397f8696b538317\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20191113141314\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}', 0, '2019-11-13 14:13:17', '2019-11-13 14:13:17');
INSERT INTO `t_pay_log` VALUES ('1195253787449430017', '1195253049260314624', '2019-11-15 16:14:44', 1.00, '4200000454201911150981874895', 'SUCCESS', 1, '{\"transaction_id\":\"4200000454201911150981874895\",\"nonce_str\":\"MAM5UM4Xhv1lItvO\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"CFT\",\"openid\":\"oNpSGwR-QGG5DaZtDkh2UZlsFDQE\",\"sign\":\"7DBDCAF4A078B30BB3EF073E6A238C20\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1473426802\",\"cash_fee\":\"1\",\"out_trade_no\":\"1195253049260314624\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx8397f8696b538317\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20191115161440\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}', 0, '2019-11-15 16:14:44', '2019-11-15 16:14:44');
INSERT INTO `t_pay_log` VALUES ('1196264321397342210', '1196264005255872512', '2019-11-18 11:10:14', 1.00, '4200000453201911184025781554', 'SUCCESS', 1, '{\"transaction_id\":\"4200000453201911184025781554\",\"nonce_str\":\"D1dHexCLIFIxAAg2\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"CFT\",\"openid\":\"oNpSGwR-QGG5DaZtDkh2UZlsFDQE\",\"sign\":\"C9F5CA1EE49EA7891736D73BEB423962\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1473426802\",\"cash_fee\":\"1\",\"out_trade_no\":\"1196264005255872512\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx8397f8696b538317\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20191118111011\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}', 0, '2019-11-18 11:10:14', '2019-11-18 11:10:14');

-- ----------------------------
-- Table structure for ucenter_member
-- ----------------------------
DROP TABLE IF EXISTS `ucenter_member`;
CREATE TABLE `ucenter_member`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '会员id',
  `openid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信openid',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` tinyint(2) UNSIGNED NULL DEFAULT NULL COMMENT '性别 1 女，2 男',
  `age` tinyint(3) UNSIGNED NULL DEFAULT NULL COMMENT '年龄',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `sign` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户签名',
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用 1（true）已禁用，  0（false）未禁用',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ucenter_member
-- ----------------------------
INSERT INTO `ucenter_member` VALUES ('1', NULL, '13700000001', '96e79218965eb72c92a549dd5a330112', '小三123', 1, 5, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-01-01 12:11:33', '2019-11-08 11:56:01');
INSERT INTO `ucenter_member` VALUES ('1080736474267144193', NULL, '13700000011', '96e79218965eb72c92a549dd5a330112', '用户XJtDfaYeKk', 1, 19, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-01-02 12:12:45', '2019-01-02 12:12:56');
INSERT INTO `ucenter_member` VALUES ('1080736474355224577', NULL, '13700000002', '96e79218965eb72c92a549dd5a330112', '用户wUrNkzAPrc', 1, 27, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-01-02 12:13:56', '2019-01-02 12:14:07');
INSERT INTO `ucenter_member` VALUES ('1086387099449442306', NULL, '13520191388', '96e79218965eb72c92a549dd5a330112', '用户XTMUeHDAoj', 2, 20, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23');
INSERT INTO `ucenter_member` VALUES ('1086387099520745473', NULL, '13520191389', '96e79218965eb72c92a549dd5a330112', '用户vSdKeDlimn', 1, 21, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23');
INSERT INTO `ucenter_member` VALUES ('1086387099608825858', NULL, '13520191381', '96e79218965eb72c92a549dd5a330112', '用户EoyWUVXQoP', 1, 18, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23');
INSERT INTO `ucenter_member` VALUES ('1086387099701100545', NULL, '13520191382', '96e79218965eb72c92a549dd5a330112', '用户LcAYbxLNdN', 2, 24, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23');
INSERT INTO `ucenter_member` VALUES ('1086387099776598018', NULL, '13520191383', '96e79218965eb72c92a549dd5a330112', '用户dZdjcgltnk', 2, 25, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23');
INSERT INTO `ucenter_member` VALUES ('1086387099852095490', NULL, '13520191384', '96e79218965eb72c92a549dd5a330112', '用户wNHGHlxUwX', 2, 23, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23');
INSERT INTO `ucenter_member` VALUES ('1106746895272849410', 'o1R-t5u2TfEVeVjO9CPGdHPNw-to', NULL, NULL, '檀梵\'', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/zZfLXcetf2Rpsibq6HbPUWKgWSJHtha9y1XBeaqluPUs6BYicW1FJaVqj7U3ozHd3iaodGKJOvY2PvqYTuCKwpyfQ/132', NULL, 0, 0, '2019-03-16 10:39:57', '2019-03-16 10:39:57');
INSERT INTO `ucenter_member` VALUES ('1106822699956654081', NULL, NULL, NULL, NULL, NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-03-16 15:41:10', '2019-03-16 15:41:10');
INSERT INTO `ucenter_member` VALUES ('1106823035660357634', 'o1R-t5i4gENwHYRb5lVFy98Z0bdk', NULL, NULL, 'GaoSir', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJI53RcCuc1no02os6ZrattWGiazlPnicoZQ59zkS7phNdLEWUPDk8fzoxibAnXV1Sbx0trqXEsGhXPw/132', NULL, 0, 0, '2019-03-16 15:42:30', '2019-03-16 15:42:30');
INSERT INTO `ucenter_member` VALUES ('1106823041599492098', NULL, NULL, NULL, NULL, NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-03-16 15:42:32', '2019-03-16 15:42:32');
INSERT INTO `ucenter_member` VALUES ('1106823115788341250', 'o1R-t5l_3rnbZbn4jWwFdy6Gk6cg', NULL, NULL, '换个网名哇、', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/jJHyeM0EN2jhB70LntI3k8fEKe7W6CwykrKMgDJM4VZqCpcxibVibX397p0vmbKURGkLS4jxjGB0GpZfxCicgt07w/132', NULL, 0, 0, '2019-03-16 15:42:49', '2019-03-16 15:42:49');
INSERT INTO `ucenter_member` VALUES ('1106826046730227714', 'o1R-t5gyxumyBqt0CWcnh0S6Ya1g', NULL, NULL, '我是Helen', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKDRfib8wy7A2ltERKh4VygxdjVC1x5OaOb1t9hot4JNt5agwaVLdJLcD9vJCNcxkvQnlvLYIPfrZw/132', NULL, 0, 0, '2019-03-16 15:54:28', '2019-03-16 15:54:28');
INSERT INTO `ucenter_member` VALUES ('1106828185829490690', 'o1R-t5nNlou5lRwBVgGNJFm4rbc4', NULL, NULL, ' 虎头', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKxCqRzuYWQmpwiaqQEjNxbC7WicebicXQusU306jgmfoOzUcFg1qaDq5BStiblwBjw5dUOblQ2gUicQOQ/132', NULL, 0, 0, '2019-03-16 16:02:58', '2019-03-16 16:02:58');
INSERT INTO `ucenter_member` VALUES ('1106830599651442689', 'o1R-t5hZHQB1cbX7HZJsiM727_SA', NULL, NULL, '是吴啊', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ9CsqApybcs7f3Dyib9IxIh0sBqJb7LicbjU4WticJFF0PVwFvHgtbFdBwfmk3H2t3NyqmEmVx17tRA/132', NULL, 0, 0, '2019-03-16 16:12:34', '2019-03-16 16:12:34');
INSERT INTO `ucenter_member` VALUES ('1106830976199278593', 'o1R-t5meKOoyEJ3-IhWRCBKFcvzU', NULL, NULL, '我才是Helen', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epMicP9UT6mVjYWdno0OJZkOXiajG0sllJTbGJ9DYiceej2XvbDSGCK8LCF7jv1PuG2uoYlePWic9XO8A/132', NULL, 0, 0, '2019-03-16 16:14:03', '2019-03-16 16:14:03');
INSERT INTO `ucenter_member` VALUES ('1106831936900415490', 'o1R-t5jXYSWakGtnUBnKbfVT5Iok', NULL, NULL, '文若姬', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/3HEmJwpSzguqqAyzmBwqT6aicIanswZibEOicQInQJI3ZY1qmu59icJC6N7SahKqWYv24GvX5KH2fibwt0mPWcTJ3fg/132', NULL, 0, 0, '2019-03-16 16:17:52', '2019-03-16 16:17:52');
INSERT INTO `ucenter_member` VALUES ('1106832491064442882', 'o1R-t5sud081Qsa2Vb2xSKgGnf_g', NULL, NULL, 'Peanut', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-03-16 16:20:04', '2019-03-16 16:20:04');
INSERT INTO `ucenter_member` VALUES ('1106833021442510849', 'o1R-t5lsGc3I8P5bDpHj7m_AIRvQ', NULL, NULL, '食物链终结者', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/MQ7qUmCprK9am16M1Ia1Cs3RK0qiarRrl9y8gsssBjIZeS2GwKSrnq7ZYhmrzuzDwBxSMMAofrXeLic9IBlW4M3Q/132', NULL, 0, 0, '2019-03-16 16:22:11', '2019-03-16 16:22:11');
INSERT INTO `ucenter_member` VALUES ('1191600824445046786', NULL, '15210078344', '96e79218965eb72c92a549dd5a330112', 'IT妖姬', 1, 5, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-11-05 14:19:10', '2019-11-08 18:04:43');
INSERT INTO `ucenter_member` VALUES ('1191616288114163713', NULL, '17866603606', '96e79218965eb72c92a549dd5a330112', 'xiaowu', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-11-05 15:20:37', '2019-11-05 15:20:37');
INSERT INTO `ucenter_member` VALUES ('1195187659054329857', NULL, '15010546384', '96e79218965eb72c92a549dd5a330112', 'qy', NULL, NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', NULL, 0, 0, '2019-11-15 11:51:58', '2019-11-15 11:51:58');
INSERT INTO `ucenter_member` VALUES ('1368450026812456961', 'o3_SC50lKHjQgHgCKitokX882SFg', '', NULL, '泡椒', NULL, NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJKVlDsf7OyOmickEuDO6tEibJ45HiaGT7P3goP0kTJAg42J79fIbAlxmcTKvK3UicLfepgSzyMhiaCN9A/132', NULL, 0, 0, '2021-03-07 14:34:46', '2021-03-07 14:34:46');

SET FOREIGN_KEY_CHECKS = 1;
