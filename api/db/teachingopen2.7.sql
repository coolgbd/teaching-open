/*
 Navicat Premium Data Transfer

 Source Server         : 213.name
 Source Server Type    : MySQL
 Source Server Version : 50561
 Source Host           : 213.name:3306
 Source Schema         : teachingopendev

 Target Server Type    : MySQL
 Target Server Version : 50561
 File Encoding         : 65001

 Date: 12/02/2023 13:05:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for onl_cgform_head
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_head`;
CREATE TABLE `onl_cgform_head`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `table_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表名',
  `table_type` int(11) NOT NULL COMMENT '表类型: 0单表、1主表、2附表',
  `table_version` int(11) NULL DEFAULT 1 COMMENT '表版本',
  `table_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表说明',
  `is_checkbox` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否带checkbox',
  `is_db_synch` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '同步数据库状态',
  `is_page` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否分页',
  `is_tree` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否是树',
  `id_sequence` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主键生成序列',
  `id_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主键类型',
  `query_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '查询模式',
  `relation_type` int(11) NULL DEFAULT NULL COMMENT '映射关系 0一对多  1一对一',
  `sub_table_str` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表',
  `tab_order_num` int(11) NULL DEFAULT NULL COMMENT '附表排序序号',
  `tree_parent_id_field` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树形表单父id',
  `tree_id_field` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树表主键字段',
  `tree_fieldname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树开表单列字段',
  `form_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'bdfl_ptbd' COMMENT '表单分类',
  `form_template` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PC表单模板',
  `form_template_mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单模板样式(移动端)',
  `scroll` int(3) NULL DEFAULT 0 COMMENT '是否有横向滚动条',
  `copy_version` int(11) NULL DEFAULT NULL COMMENT '复制版本号',
  `copy_type` int(3) NULL DEFAULT 0 COMMENT '复制表类型1为复制表 0为原始表',
  `physic_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始表ID',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `theme_template` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题模板',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_onlineform_table_name`(`table_name`) USING BTREE,
  INDEX `index_form_templdate`(`form_template`) USING BTREE,
  INDEX `index_templdate_mobile`(`form_template_mobile`) USING BTREE,
  INDEX `index_onlineform_table_version`(`table_version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgform_head
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgform_index
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_index`;
CREATE TABLE `onl_cgform_index`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `cgform_head_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主表id',
  `index_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索引名称',
  `index_field` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索引栏位',
  `index_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索引类型',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `is_db_synch` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否同步数据库 N未同步 Y已同步',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '是否删除 0未删除 1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_id`(`cgform_head_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgform_index
-- ----------------------------
INSERT INTO `onl_cgform_index` VALUES ('01778f3d46006808d25507fed1107e1d', '1e65c54cea44446897c5fec4d967d3f6', 'workName', 'work_name', 'normal', 'jeecg', '2020-04-11 21:34:29', 'jeecg', '2020-04-11 21:43:06', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('18454d76a789b78e0b644197dc95b12f', '699d6a7064064ca7805c68ea0f06932c', 'activityname', 'activity_name', 'normal', 'admin', '2020-03-08 19:34:09', 'jeecg', '2020-04-11 23:04:13', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('300332a0c2c93aaf8d7589cba7310539', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'userid', 'user_id', 'normal', 'admin', '2020-03-07 21:11:25', 'jeecg', '2020-04-11 23:10:39', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('57c77341ebebe6215cd880159594ad4a', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'actionid', 'action_id', 'normal', 'admin', '2020-03-07 21:11:25', 'jeecg', '2020-04-11 23:10:39', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('64e0b4ae77f6e5b48a88fd694e7165b3', '441e68dc1d0147d5a69fb54260d1dbb3', 'filetag', 'file_tag', 'normal', 'jeecg', '2020-04-11 21:09:02', 'jeecg', '2020-04-12 11:10:32', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('7f6ca69355c146336902371f028b602c', '441e68dc1d0147d5a69fb54260d1dbb3', 'filename', 'file_name', 'normal', 'jeecg', '2020-04-11 21:09:02', 'jeecg', '2020-04-12 11:10:32', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('81ae57fb23f8f85d9e663d8968bc3462', '2d869ad51818483faea70b2bd62ea34e', 'workId', 'work_id', 'unique', 'jeecg', '2020-04-11 21:39:07', NULL, NULL, 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('87b3b10c9ac082d81df7e3e54e6695c7', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'phone', 'phone', 'normal', 'admin', '2020-03-08 14:38:21', 'jeecg', '2020-04-11 23:03:48', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('97aab1a82907b798a23f7031a8ed8a33', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'orderno', 'order_no', 'unique', 'admin', '2020-03-07 21:11:25', 'jeecg', '2020-04-11 23:10:39', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('982ab4c17e3d35e2d836a7f29b05fe0d', '1e65c54cea44446897c5fec4d967d3f6', 'courseId', 'course_id', 'normal', 'jeecg', '2020-04-11 21:34:29', 'jeecg', '2020-04-11 21:43:06', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('a62597c38718ce67054bb1d221019cb2', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'student_name', 'student_name', 'normal', 'admin', '2020-03-08 14:38:21', 'jeecg', '2020-04-11 23:03:48', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('a84a6fd29e3f95d14ea84613043045a5', '699d6a7064064ca7805c68ea0f06932c', 'courseid', 'coures_id', 'normal', 'admin', '2020-03-08 19:34:09', 'jeecg', '2020-04-11 23:04:13', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('b4a8465de9e0e52b9fdca988168b32fc', '1e65c54cea44446897c5fec4d967d3f6', 'userId', 'user_id', 'normal', 'jeecg', '2020-04-11 21:34:29', 'jeecg', '2020-04-11 21:43:06', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('dd81266751fa6f588af8ee6ca4e3aafb', 'd6cb8d561355467086159ab8cfbe0aec', 'workId', 'work_id', 'normal', 'jeecg', '2020-04-11 21:46:47', 'jeecg', '2020-04-12 13:38:41', 'N', 0);

-- ----------------------------
-- Table structure for onl_cgreport_head
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_head`;
CREATE TABLE `onl_cgreport_head`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表名字',
  `cgr_sql` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表SQL',
  `return_val_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '返回值字段',
  `return_txt_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '返回文本字段',
  `return_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '返回类型，单选或多选',
  `db_source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态数据源',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_onlinereport_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgreport_head
-- ----------------------------
INSERT INTO `onl_cgreport_head` VALUES ('6c7f59741c814347905a938f06ee003c', 'report_user', '统计在线用户', 'select * from sys_user', NULL, NULL, '1', NULL, NULL, '2019-11-22 16:34:31', 'admin', '2019-03-25 11:20:45', 'admin');

-- ----------------------------
-- Table structure for onl_cgreport_item
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_item`;
CREATE TABLE `onl_cgreport_item`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cgrhead_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表ID',
  `field_name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名字',
  `field_txt` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段文本',
  `field_width` int(3) NULL DEFAULT NULL,
  `field_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `search_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询模式',
  `is_order` int(2) NULL DEFAULT 0 COMMENT '是否排序  0否,1是',
  `is_search` int(2) NULL DEFAULT 0 COMMENT '是否查询  0否,1是',
  `dict_code` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典CODE',
  `field_href` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段跳转URL',
  `is_show` int(2) NULL DEFAULT 1 COMMENT '是否显示  0否,1显示',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `replace_val` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值表达式',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_CGRHEAD_ID`(`cgrhead_id`) USING BTREE,
  INDEX `index_isshow`(`is_show`) USING BTREE,
  INDEX `index_order_num`(`order_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgreport_item
-- ----------------------------
INSERT INTO `onl_cgreport_item` VALUES ('1740bb02519db90c44cb2cba8b755136', '6c7f59741c814347905a938f06ee003c', 'realname', '用户名称', NULL, 'String', NULL, 0, 0, '', '', 1, 3, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('627768efd9ba2c41e905579048f21000', '6c7f59741c814347905a938f06ee003c', 'username', '用户账号', NULL, 'String', 'single', 0, 1, '', '', 1, 2, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('8bb087a9aa2000bcae17a1b3f5768435', '6c7f59741c814347905a938f06ee003c', 'sex', '性别', NULL, 'Integer', 'single', 0, 1, 'sex', '', 1, 5, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('90d4fa57d301801abb26a9b86b6b94c4', '6c7f59741c814347905a938f06ee003c', 'birthday', '生日', NULL, 'Date', 'single', 0, 0, '', '', 1, 4, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('a4ac355f07a05218854e5f23e2930163', '6c7f59741c814347905a938f06ee003c', 'avatar', '头像', NULL, 'String', NULL, 0, 0, '', '', 0, 6, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('b27bea35b1264003c79d38cb86d6929e', '6c7f59741c814347905a938f06ee003c', 'id', 'id', NULL, 'String', NULL, 0, 0, '', '', 0, 1, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('d6e86b5ffd096ddcc445c0f320a45004', '6c7f59741c814347905a938f06ee003c', 'phone', '手机号', NULL, 'String', NULL, 0, 0, '', '', 1, 11, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('df365cd357699eea96c29763d1dd7f9d', '6c7f59741c814347905a938f06ee003c', 'email', '邮箱', NULL, 'String', NULL, 0, 0, '', '', 1, 14, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);

-- ----------------------------
-- Table structure for onl_cgreport_param
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_param`;
CREATE TABLE `onl_cgreport_param`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cgrhead_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '动态报表ID',
  `param_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数字段',
  `param_txt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数文本',
  `param_value` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数默认值',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_cgrheadid`(`cgrhead_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgreport_param
-- ----------------------------

-- ----------------------------
-- Table structure for oss_file
-- ----------------------------
DROP TABLE IF EXISTS `oss_file`;
CREATE TABLE `oss_file`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件地址',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Oss File' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oss_file
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BLOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CRON_EXPRESSION` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('quartzScheduler', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', '3/30 * * * * ? *', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('quartzScheduler', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', NULL, 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000001740009706172616D65746572707800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'TRIGGER_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('quartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('MyScheduler', 'TinyMonster1676176150455', 1676176576252, 10000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `INT_PROP_1` int(11) NULL DEFAULT NULL,
  `INT_PROP_2` int(11) NULL DEFAULT NULL,
  `LONG_PROP_1` bigint(20) NULL DEFAULT NULL,
  `LONG_PROP_2` bigint(20) NULL DEFAULT NULL,
  `DEC_PROP_1` decimal(13, 4) NULL DEFAULT NULL,
  `DEC_PROP_2` decimal(13, 4) NULL DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PRIORITY` int(11) NULL DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) NULL DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) NULL DEFAULT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `SCHED_NAME`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `JOB_NAME` `JOB_GROUP`' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('quartzScheduler', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', NULL, 1583505033000, 1583505003000, 5, 'PAUSED', 'CRON', 1583462974000, 0, NULL, 0, '');


-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型编码',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否有子节点',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自定义值',
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_code`(`code`) USING BTREE,
  UNIQUE INDEX `pid_value_uindex`(`pid`, `value`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO `sys_category` VALUES ('1441319390847008770', '0', '素材库标签', 'A03', 'admin', '2021-09-24 03:31:35', 'admin', '2021-09-24 03:53:37', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category` VALUES ('1441324936413061121', '1441319390847008770', '背景', 'A03A01', 'admin', '2021-09-24 03:53:38', 'admin', '2021-09-24 03:54:27', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category` VALUES ('1441325142940590082', '1441324936413061121', '奇幻', 'A03A01A01', 'admin', '2021-09-24 03:54:27', NULL, NULL, 'A04', NULL, 'fantasy', NULL);
INSERT INTO `sys_category` VALUES ('1441325189015019522', '1441324936413061121', '音乐', 'A03A01A02', 'admin', '2021-09-24 03:54:38', NULL, NULL, 'A04', NULL, 'music', NULL);
INSERT INTO `sys_category` VALUES ('1441328672250335233', '1441319390847008770', '声音', 'A03A02', 'admin', '2021-09-24 04:08:28', 'admin', '2021-09-24 04:09:49', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category` VALUES ('1441328704135434241', '1441319390847008770', '角色', 'A03A03', 'admin', '2021-09-24 04:08:36', 'admin', '2021-09-24 04:11:06', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category` VALUES ('1441328791544729601', '1441324936413061121', '运动', 'A03A01A03', 'admin', '2021-09-24 04:08:57', NULL, NULL, 'A04', NULL, 'sports', NULL);
INSERT INTO `sys_category` VALUES ('1441328825422123010', '1441324936413061121', '户外', 'A03A01A04', 'admin', '2021-09-24 04:09:05', NULL, NULL, 'A04', NULL, 'outdoors', NULL);
INSERT INTO `sys_category` VALUES ('1441328859848970242', '1441324936413061121', '室内', 'A03A01A05', 'admin', '2021-09-24 04:09:13', NULL, NULL, 'A04', NULL, 'indoors', NULL);
INSERT INTO `sys_category` VALUES ('1441328891092340738', '1441324936413061121', '太空', 'A03A01A06', 'admin', '2021-09-24 04:09:20', NULL, NULL, 'A04', NULL, 'space', NULL);
INSERT INTO `sys_category` VALUES ('1441328921211637762', '1441324936413061121', '水下', 'A03A01A07', 'admin', '2021-09-24 04:09:28', NULL, NULL, 'A04', NULL, 'underwater', NULL);
INSERT INTO `sys_category` VALUES ('1441328958427697154', '1441324936413061121', '图案', 'A03A01A08', 'admin', '2021-09-24 04:09:36', NULL, NULL, 'A04', NULL, 'patterns', NULL);
INSERT INTO `sys_category` VALUES ('1441329010533535746', '1441328672250335233', '动物', 'A03A02A01', 'admin', '2021-09-24 04:09:49', NULL, NULL, 'A04', NULL, 'animals', NULL);
INSERT INTO `sys_category` VALUES ('1441329053705506818', '1441328672250335233', '效果', 'A03A02A02', 'admin', '2021-09-24 04:09:59', NULL, NULL, 'A04', NULL, 'effects', NULL);
INSERT INTO `sys_category` VALUES ('1441329085334753282', '1441328672250335233', '可循环', 'A03A02A03', 'admin', '2021-09-24 04:10:07', NULL, NULL, 'A04', NULL, 'loops', NULL);
INSERT INTO `sys_category` VALUES ('1441329116032864258', '1441328672250335233', '音符', 'A03A02A04', 'admin', '2021-09-24 04:10:14', NULL, NULL, 'A04', NULL, 'notes', NULL);
INSERT INTO `sys_category` VALUES ('1441329157548085250', '1441328672250335233', '打击乐器', 'A03A02A05', 'admin', '2021-09-24 04:10:24', NULL, NULL, 'A04', NULL, 'percussion', NULL);
INSERT INTO `sys_category` VALUES ('1441329188107784194', '1441328672250335233', '太空', 'A03A02A06', 'admin', '2021-09-24 04:10:31', NULL, NULL, 'A04', NULL, 'space', NULL);
INSERT INTO `sys_category` VALUES ('1441329223457378305', '1441328672250335233', '运动', 'A03A02A07', 'admin', '2021-09-24 04:10:40', NULL, NULL, 'A04', NULL, 'sports', NULL);
INSERT INTO `sys_category` VALUES ('1441329259465478146', '1441328672250335233', '人声', 'A03A02A08', 'admin', '2021-09-24 04:10:48', NULL, NULL, 'A04', NULL, 'voice', NULL);
INSERT INTO `sys_category` VALUES ('1441329291728064514', '1441328672250335233', '古怪', 'A03A02A09', 'admin', '2021-09-24 04:10:56', NULL, NULL, 'A04', NULL, 'wacky', NULL);
INSERT INTO `sys_category` VALUES ('1441329333524303873', '1441328704135434241', '动物', 'A03A03A01', 'admin', '2021-09-24 04:11:06', NULL, NULL, 'A04', NULL, 'animals', NULL);
INSERT INTO `sys_category` VALUES ('1441329369280745474', '1441328704135434241', '人物', 'A03A03A02', 'admin', '2021-09-24 04:11:14', NULL, NULL, 'A04', NULL, 'people', NULL);
INSERT INTO `sys_category` VALUES ('1441329396858294273', '1441328704135434241', '奇幻', 'A03A03A03', 'admin', '2021-09-24 04:11:21', NULL, NULL, 'A04', NULL, 'fantasy', NULL);
INSERT INTO `sys_category` VALUES ('1441329422980419585', '1441328704135434241', '舞蹈', 'A03A03A04', 'admin', '2021-09-24 04:11:27', NULL, NULL, 'A04', NULL, 'dance', NULL);
INSERT INTO `sys_category` VALUES ('1441329456912338945', '1441328704135434241', '音乐', 'A03A03A05', 'admin', '2021-09-24 04:11:35', NULL, NULL, 'A04', NULL, 'music', NULL);
INSERT INTO `sys_category` VALUES ('1441329488424144898', '1441328704135434241', '运动', 'A03A03A06', 'admin', '2021-09-24 04:11:43', NULL, NULL, 'A04', NULL, 'sports', NULL);
INSERT INTO `sys_category` VALUES ('1441329526349041665', '1441328704135434241', '食物', 'A03A03A07', 'admin', '2021-09-24 04:11:52', NULL, NULL, 'A04', NULL, 'food', NULL);
INSERT INTO `sys_category` VALUES ('1441329558519353346', '1441328704135434241', '时尚', 'A03A03A08', 'admin', '2021-09-24 04:12:00', NULL, NULL, 'A04', NULL, 'fashion', NULL);
INSERT INTO `sys_category` VALUES ('1441329606007263234', '1441328704135434241', '字母', 'A03A03A09', 'admin', '2021-09-24 04:12:11', NULL, NULL, 'A04', NULL, 'letters', NULL);

-- ----------------------------
-- Table structure for sys_check_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_check_rule`;
CREATE TABLE `sys_check_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `rule_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则Code',
  `rule_json` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则JSON',
  `rule_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则描述',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_sys_check_rule_code`(`rule_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_check_rule
-- ----------------------------
INSERT INTO `sys_check_rule` VALUES ('1224980593992388610', '通用编码规则', 'common', '[{\"digits\":\"1\",\"pattern\":\"^[a-z|A-Z]$\",\"message\":\"第一位只能是字母\"},{\"digits\":\"*\",\"pattern\":\"^[0-9|a-z|A-Z|_]{0,}$\",\"message\":\"只能填写数字、大小写字母、下划线\"},{\"digits\":\"*\",\"pattern\":\"^.{3,}$\",\"message\":\"最少输入3位数\"},{\"digits\":\"*\",\"pattern\":\"^.{3,12}$\",\"message\":\"最多输入12位数\"}]', '规则：1、首位只能是字母；2、只能填写数字、大小写字母、下划线；3、最少3位数，最多12位数。', 'admin', '2020-02-07 11:25:48', 'admin', '2020-02-05 16:58:27');
INSERT INTO `sys_check_rule` VALUES ('1225001845524004866', '负责的功能测试', 'test', '[{\"digits\":\"*\",\"pattern\":\"^.{3,12}$\",\"message\":\"只能输入3-12位字符\"},{\"digits\":\"3\",\"pattern\":\"^\\\\d{3}$\",\"message\":\"前3位必须是数字\"},{\"digits\":\"*\",\"pattern\":\"^[^pP]*$\",\"message\":\"不能输入P\"},{\"digits\":\"4\",\"pattern\":\"^@{4}$\",\"message\":\"第4-7位必须都为 @\"},{\"digits\":\"2\",\"pattern\":\"^#=$\",\"message\":\"第8-9位必须是 #=\"},{\"digits\":\"1\",\"pattern\":\"^O$\",\"message\":\"第10位必须为大写的O\"},{\"digits\":\"*\",\"pattern\":\"^.*。$\",\"message\":\"必须以。结尾\"}]', '包含长度校验、特殊字符校验等', 'admin', '2020-02-07 11:57:31', 'admin', '2020-02-05 18:22:54');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `config_key` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置属性',
  `config_value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置值',
  `config_enabled` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否生效',
  `comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1481959780167823362', '_address', '', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959780360761346', 'brandName', '云晖科技', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959780637585409', 'footer', '<p>Copyright &copy; 2023&nbsp;<a href=\"http://www.yunhuikeji.cn\" target=\"_blank\" rel=\"noopener\">云晖科技</a> | 少儿在线编程教学平台 </p>', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959780801163266', '_phone', '', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959781103153153', '_defaultRole', '1252532277234982913', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959781228982274', 'logo', 'logo.png', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959782168506369', 'allowReg', '1', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959782298529794', '_linkman', '', 1, NULL);
INSERT INTO `sys_config` VALUES ('1514923379054829570', '_defaultDepart', '4338928a0bbc4bb89fce1523142083a6', 1, NULL);
INSERT INTO `sys_config` VALUES ('1515593345009672194', 'brandDesc', '在线少儿图形化编程教学平台', 1, NULL);
INSERT INTO `sys_config` VALUES ('1612381213129633793', 'banner', '', 1, NULL);
INSERT INTO `sys_config` VALUES ('1612381213259657218', 'bannerLinks', '', 1, NULL);

-- ----------------------------
-- Table structure for sys_data_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_log`;
CREATE TABLE `sys_data_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据ID',
  `data_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '数据内容',
  `data_version` int(11) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sindex`(`data_table`, `data_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_data_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_source`;
CREATE TABLE `sys_data_source`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源名称',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `db_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库类型',
  `db_driver` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '驱动类',
  `db_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源地址',
  `db_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库名称',
  `db_username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `db_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_data_source_code_uni`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO `sys_data_source` VALUES ('1209779538310004737', NULL, 'MySQL5.7', '本地数据库MySQL5.7', '1', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/jeecg-boot?characterEncoding=UTF-8&useUnicode=true&useSSL=false', 'jeecg-boot', 'root', 'root', 'admin', '2019-12-25 18:14:53', NULL, NULL, 'A01');

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart`;
CREATE TABLE `sys_depart`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '父机构ID',
  `depart_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩写',
  `depart_order` int(11) NULL DEFAULT 0 COMMENT '排序',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `org_category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '机构类别 1组织机构，2岗位',
  `org_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构编码',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_depart_org_code`(`org_code`) USING BTREE,
  INDEX `index_depart_parent_id`(`parent_id`) USING BTREE,
  INDEX `index_depart_depart_order`(`depart_order`) USING BTREE,
  INDEX `index_depart_org_code`(`org_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织机构表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_depart
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_permission`;
CREATE TABLE `sys_depart_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据规则id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_depart_permission
-- ----------------------------
INSERT INTO `sys_depart_permission` VALUES ('1248516556356153345', '26c7f056a6b94ae78d736c67cd24baac', '1236542260197023745', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556381319170', '26c7f056a6b94ae78d736c67cd24baac', '1236542357244829698', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556385513473', '26c7f056a6b94ae78d736c67cd24baac', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556385513474', '26c7f056a6b94ae78d736c67cd24baac', '1a0811914300741f4e11838ff37a1d3a', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556393902082', '26c7f056a6b94ae78d736c67cd24baac', '7593c9e3523a17bca83b8d7fe8a34e58', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556398096385', '26c7f056a6b94ae78d736c67cd24baac', '5c2f42277948043026b7a14692456828', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556402290691', '26c7f056a6b94ae78d736c67cd24baac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);

-- ----------------------------
-- Table structure for sys_depart_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role`;
CREATE TABLE `sys_depart_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门角色名称',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_depart_role
-- ----------------------------
INSERT INTO `sys_depart_role` VALUES ('1248515697224282114', '26c7f056a6b94ae78d736c67cd24baac', '校长', 'schoolmaster', NULL, 'jeecg', '2020-04-10 15:38:33', NULL, NULL);
INSERT INTO `sys_depart_role` VALUES ('1248515744204681217', 'd2b37ffcc3fd46ddb5bc1c3da7fc41c0', '老师', 'teacher', NULL, 'jeecg', '2020-04-10 15:38:44', NULL, NULL);

-- ----------------------------
-- Table structure for sys_depart_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_permission`;
CREATE TABLE `sys_depart_role_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_group_role_per_id`(`role_id`, `permission_id`) USING BTREE,
  INDEX `index_group_role_id`(`role_id`) USING BTREE,
  INDEX `index_group_per_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_depart_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_user`;
CREATE TABLE `sys_depart_role_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `drole_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_depart_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典名称',
  `dict_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` int(1) NULL DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `type` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `indextable_dict_code`(`dict_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('0b5d19e1fce4b2e6647e6b4a17760c14', '通告类型', 'msg_category', '消息类型1:通知公告2:系统消息', 0, 'admin', '2019-04-22 18:01:35', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174509082208395266', '职务职级', 'position_rank', '职务表职级字典', 0, 'admin', '2019-09-19 10:22:41', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174511106530525185', '机构类型', 'org_category', '机构类型 1机构，2部门 3班级', 0, 'admin', '2019-09-19 10:30:43', 'admin', '2022-04-17 16:15:31', 0);
INSERT INTO `sys_dict` VALUES ('1178295274528845826', '表单权限策略', 'form_perms_type', '', 0, 'admin', '2019-09-29 21:07:39', 'admin', '2019-09-29 21:08:26', NULL);
INSERT INTO `sys_dict` VALUES ('1209733563293962241', '数据库类型', 'database_type', '', 0, 'admin', '2019-12-25 15:12:12', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1232913193820581889', 'Online表单业务分类', 'ol_form_biz_type', '', 0, 'admin', '2020-02-27 14:19:46', 'admin', '2020-02-27 14:20:23', 0);
INSERT INTO `sys_dict` VALUES ('1236290896288133121', '订单状态', 'order_status', '', 0, 'admin', '2020-03-07 22:01:33', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1236290944946253825', '支付方式', 'pay_method', '', 0, 'admin', '2020-03-07 22:01:45', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1236543470144708610', '学生状态', 'student_status', '', 1, 'admin', '2020-03-08 14:45:11', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1236543506538684417', '学生年级', 'grade', '', 0, 'admin', '2020-03-08 14:45:20', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1237261139620921345', '活动类型', 'activity_type', '', 1, 'jeecg', '2020-03-10 14:16:57', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1249164380827549698', '文件类型', 'file_type', '', 0, 'jeecg', '2020-04-12 10:36:11', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1249164719404351490', '文件位置', 'file_location', '存储位置', 0, 'jeecg', '2020-04-12 10:37:32', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1249175047563493377', '作业类型', 'work_type', '作品类型', 0, 'jeecg', '2020-04-12 11:18:34', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1250687930947620866', '定时任务状态', 'quartz_status', '', 0, 'admin', '2020-04-16 15:30:14', '', NULL, NULL);
INSERT INTO `sys_dict` VALUES ('1252531120982810626', '课程资源类型', 'course_media_type', '', 0, 'jeecg', '2020-04-21 17:34:24', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1278612830199599105', '作业状态', 'work_status', '', 0, 'admin', '2020-07-02 16:53:48', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1362358951581159425', '附加作业状态', 'additional_work_status', '', 0, 'admin', '2021-02-18 05:11:00', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1439110468358717442', 'Scratch素材类型', 'scratch_asset_type', 'scratch素材库的素材类型', 1, 'admin', '2021-09-18 01:14:07', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('236e8a4baff0db8c62c00dd95632834f', '同步工作流引擎', 'activiti_sync', '同步工作流引擎', 1, 'admin', '2019-05-15 15:27:33', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2e02df51611a4b9632828ab7e5338f00', '权限策略', 'perms_type', '权限策略', 0, 'admin', '2019-04-26 18:26:55', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2f0320997ade5dd147c90130f7218c3e', '推送类别', 'msg_type', '', 0, 'admin', '2019-03-17 21:21:32', 'admin', '2019-03-26 19:57:45', 0);
INSERT INTO `sys_dict` VALUES ('3486f32803bb953e7155dab3513dc68b', '删除状态', 'del_flag', NULL, 0, 'admin', '2019-01-18 21:46:26', 'admin', '2019-03-30 11:17:11', 0);
INSERT INTO `sys_dict` VALUES ('3d9a351be3436fbefb1307d4cfb49bf2', '性别', 'sex', NULL, 0, NULL, '2019-01-04 14:56:32', 'admin', '2019-03-30 11:28:27', 1);
INSERT INTO `sys_dict` VALUES ('404a04a15f371566c658ee9ef9fc392a', 'cehis2', '22', NULL, 1, 'admin', '2019-01-30 11:17:21', 'admin', '2019-03-30 11:18:12', 0);
INSERT INTO `sys_dict` VALUES ('4274efc2292239b6f000b153f50823ff', '全局权限策略', 'global_perms_type', '全局权限策略', 0, 'admin', '2019-05-10 17:54:05', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c03fca6bf1f0299c381213961566349', 'Online图表展示模板', 'online_graph_display_template', 'Online图表展示模板', 0, 'admin', '2019-04-12 17:28:50', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c753b5293304e7a445fd2741b46529d', '字典状态', 'dict_item_status', NULL, 0, 'admin', '2020-06-18 23:18:42', 'admin', '2019-03-30 19:33:52', 1);
INSERT INTO `sys_dict` VALUES ('4d7fec1a7799a436d26d02325eff295e', '优先级', 'priority', '优先级', 0, 'admin', '2019-03-16 17:03:34', 'admin', '2019-04-16 17:39:23', 0);
INSERT INTO `sys_dict` VALUES ('4e4602b3e3686f0911384e188dc7efb4', '条件规则', 'rule_conditions', '', 0, 'admin', '2019-04-01 10:15:03', 'admin', '2019-04-01 10:30:47', 0);
INSERT INTO `sys_dict` VALUES ('4f69be5f507accea8d5df5f11346181a', '发送消息类型', 'msgType', NULL, 0, 'admin', '2019-04-11 14:27:09', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('68168534ff5065a152bfab275c2136f8', '有效无效状态', 'valid_status', '有效无效状态', 0, 'admin', '2020-09-26 19:21:14', 'admin', '2019-04-26 19:21:23', 0);
INSERT INTO `sys_dict` VALUES ('6b78e3f59faec1a4750acff08030a79b', '用户类型', 'user_type', NULL, 1, NULL, '2019-01-04 14:59:01', 'admin', '2019-03-18 23:28:18', 0);
INSERT INTO `sys_dict` VALUES ('72cce0989df68887546746d8f09811aa', 'Online表单类型', 'cgform_table_type', '', 0, 'admin', '2019-01-27 10:13:02', 'admin', '2019-03-30 11:37:36', 0);
INSERT INTO `sys_dict` VALUES ('78bda155fe380b1b3f175f1e88c284c6', '流程状态', 'bpm_status', '流程状态', 1, 'admin', '2019-05-09 16:31:52', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('83bfb33147013cc81640d5fd9eda030c', '日志类型', 'log_type', NULL, 0, 'admin', '2019-03-18 23:22:19', NULL, NULL, 1);
INSERT INTO `sys_dict` VALUES ('845da5006c97754728bf48b6a10f79cc', '状态', 'status', NULL, 1, 'admin', '2019-03-18 21:45:25', 'admin', '2019-03-18 21:58:25', 0);
INSERT INTO `sys_dict` VALUES ('880a895c98afeca9d9ac39f29e67c13e', '操作类型', 'operate_type', '操作类型', 0, 'admin', '2019-07-22 10:54:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('8dfe32e2d29ea9430a988b3b558bf233', '发布状态', 'send_status', '发布状态', 0, 'admin', '2019-04-16 17:40:42', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a7adbcd86c37f7dbc9b66945c82ef9e6', '1是0否', 'yn', '', 1, 'admin', '2019-05-22 19:29:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a9d9942bd0eccb6e89de92d130ec4c4a', '消息发送状态', 'msgSendStatus', NULL, 0, 'admin', '2019-04-12 18:18:17', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('ac2f7c0c5c5775fcea7e2387bcb22f01', '菜单类型', 'menu_type', NULL, 0, 'admin', '2020-12-18 23:24:32', 'admin', '2019-04-01 15:27:06', 1);
INSERT INTO `sys_dict` VALUES ('ad7c65ba97c20a6805d5dcdf13cdaf36', 'onlineT类型', 'ceshi_online', NULL, 1, 'admin', '2019-03-22 16:31:49', 'admin', '2019-03-22 16:34:16', 0);
INSERT INTO `sys_dict` VALUES ('bd1b8bc28e65d6feefefb6f3c79f42fd', 'Online图表数据类型', 'online_graph_data_type', 'Online图表数据类型', 0, 'admin', '2019-04-12 17:24:24', 'admin', '2019-04-12 17:24:57', 0);
INSERT INTO `sys_dict` VALUES ('c36169beb12de8a71c8683ee7c28a503', '部门状态', 'depart_status', NULL, 0, 'admin', '2019-03-18 21:59:51', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('c5a14c75172783d72cbee6ee7f5df5d1', 'Online图表类型', 'online_graph_type', 'Online图表类型', 0, 'admin', '2019-04-12 17:04:06', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('d6e1152968b02d69ff358c75b48a6ee1', '流程类型', 'bpm_process_type', NULL, 1, 'admin', '2021-02-22 19:26:54', 'admin', '2019-03-30 18:14:44', 0);
INSERT INTO `sys_dict` VALUES ('fc6cd58fde2e8481db10d3a1e68ce70c', '用户状态', 'user_status', NULL, 0, 'admin', '2019-03-18 21:57:25', 'admin', '2019-03-18 23:11:58', 1);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典项文本',
  `item_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典项值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `sort_order` int(10) NULL DEFAULT NULL COMMENT '排序',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_dict_id`(`dict_id`) USING BTREE,
  INDEX `index_table_sort_order`(`sort_order`) USING BTREE,
  INDEX `index_table_dict_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `file_type` tinyint(4) NULL DEFAULT NULL COMMENT '文件类型',
  `file_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `file_path` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件路径',
  `file_location` tinyint(4) NOT NULL COMMENT '存储位置',
  `file_tag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件标签',
  `del_flag` int(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `filetag`(`file_tag`) USING BTREE,
  INDEX `filename`(`file_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_file
-- ----------------------------

-- ----------------------------
-- Table structure for sys_fill_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_fill_rule`;
CREATE TABLE `sys_fill_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `rule_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则Code',
  `rule_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则实现类',
  `rule_params` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则参数',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_sys_fill_rule_code`(`rule_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_fill_rule
-- ----------------------------
INSERT INTO `sys_fill_rule` VALUES ('1202551334738382850', '机构编码生成', 'org_num_role', 'org.jeecg.modules.system.rule.OrgCodeRule', '{\"parentId\":\"c6d7cb4deeac411cb3384b1b31278596\"}', 'admin', '2019-12-09 10:37:06', 'admin', '2019-12-05 19:32:35');
INSERT INTO `sys_fill_rule` VALUES ('1202787623203065858', '分类字典编码生成', 'category_code_rule', 'org.jeecg.modules.system.rule.CategoryCodeRule', '{\"pid\":\"\"}', 'admin', '2019-12-09 10:36:54', 'admin', '2019-12-06 11:11:31');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_type` int(2) NULL DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志）',
  `log_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志内容',
  `operate_type` int(2) NULL DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `request_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) NULL DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_userid`(`userid`) USING BTREE,
  INDEX `index_logt_ype`(`log_type`) USING BTREE,
  INDEX `index_operate_type`(`operate_type`) USING BTREE,
  INDEX `index_log_type`(`log_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1624635145583325186', 2, '附加作业-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@58980776', NULL, 427, 'admin', '2023-02-12 13:02:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1624635153808355330', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4d0a0ba7', NULL, 1167, 'admin', '2023-02-12 13:02:59', NULL, NULL);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `component_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8, 2) NULL DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) NULL DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `is_route` tinyint(1) NULL DEFAULT 1 COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `is_leaf` tinyint(1) NULL DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `keep_alive` tinyint(1) NULL DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` int(2) NULL DEFAULT 0 COMMENT '是否隐藏路由: 0否,1是',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(3) NULL DEFAULT 0 COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) NULL DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_prem_pid`(`parent_id`) USING BTREE,
  INDEX `index_prem_is_route`(`is_route`) USING BTREE,
  INDEX `index_prem_is_leaf`(`is_leaf`) USING BTREE,
  INDEX `index_prem_sort_no`(`sort_no`) USING BTREE,
  INDEX `index_prem_del_flag`(`del_flag`) USING BTREE,
  INDEX `index_menu_type`(`menu_type`) USING BTREE,
  INDEX `index_menu_hidden`(`hidden`) USING BTREE,
  INDEX `index_menu_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('00a2a0ae65cdca5e93209cdbde97cbe6', '2e42e3835c2b44ec9f7bc26c146ee531', '成功', '/result/success', 'result/Success', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('020b06793e4de2eee0007f603000c769', 'f0675b52d89100ee88472b6800754a08', 'ViserChartDemo', '/report/ViserChartDemo', 'jeecg/report/ViserChartDemo', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 19:08:53', 'admin', '2019-04-03 19:08:53', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('024f1fd1283dc632458976463d8984e1', '700b7f95165c46cc7a78bf227aa8fed3', 'Tomcat信息', '/monitor/TomcatInfo', 'modules/monitor/TomcatInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 09:44:29', 'admin', '2019-05-07 15:19:10', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('043780fa095ff1b2bec4dc406d76f023', '2a470fc0c3954d9dbb61de6d80846549', '表格合计', '/jeecg/tableTotal', 'jeecg/TableTotal', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-08-14 10:28:46', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('05b3c82ddb2536a4a5ee1a4c46b5abef', '540a2936940846cb98114ffb0d145cb8', '用户列表', '/list/user-list', 'list/UserList', NULL, NULL, 1, NULL, NULL, 3.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('0620e402857b8c5b605e1ad9f4b89350', '2a470fc0c3954d9dbb61de6d80846549', '异步树列表Demo', '/jeecg/JeecgTreeTable', 'jeecg/JeecgTreeTable', NULL, NULL, 1, NULL, '0', 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-05-13 17:30:30', 'admin', '2019-05-13 17:32:17', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('078f9558cdeab239aecb2bda1a8ed0d1', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（文章）', '/list/search/article', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:00:34', 'admin', '2019-02-12 14:17:54', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('08e6b9dc3c04489c8e1ff2ce6f105aa4', '', '系统监控', '/dashboard3', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 20.00, 0, 'dashboard', 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-11-01 21:11:47', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('0ac2ad938963b6c6d1af25477d5b8b51', '8d4683aacaa997ab86b966b464360338', '代码生成按钮', NULL, NULL, NULL, NULL, 2, 'online:goGenerateCode', '1', 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-06-11 14:20:09', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('109c78a583d4693ce2f16551b7786786', 'e41b69c57a941a3bbcce45032fe57605', 'Online报表配置', '/online/cgreport', 'modules/online/cgreport/OnlCgreportHeadList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 10:51:07', 'admin', '2019-03-30 19:04:28', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('1166535831146504193', '2a470fc0c3954d9dbb61de6d80846549', '对象存储', '/oss/file', 'modules/oss/OSSFileList', NULL, NULL, 1, NULL, '1', 1.00, 0, '', 1, 1, 0, 0, NULL, 'admin', '2019-08-28 02:19:50', 'admin', '2019-08-28 02:20:57', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('1170592628746878978', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '菜单管理2', '/isystem/newPermissionList', 'system/NewPermissionList', NULL, NULL, 1, NULL, '1', 100.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2019-09-08 15:00:05', 'admin', '2022-04-17 16:16:24', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1174506953255182338', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '职务管理', '/isystem/position', 'system/SysPositionList', NULL, NULL, 1, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2019-09-19 10:14:13', 'admin', '2021-04-20 11:26:32', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1174590283938041857', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '通讯录', '/isystem/addressList', 'system/AddressList', NULL, NULL, 1, NULL, '1', 3.00, 0, 'idcard', 1, 1, 0, 0, NULL, 'admin', '2019-09-19 15:45:21', 'jeecg', '2020-04-21 17:58:49', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1192318987661234177', 'e41b69c57a941a3bbcce45032fe57605', '系统编码生成规则', '/isystem/fillRule', 'system/SysFillRuleList', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-11-07 13:52:53', 'admin', '2020-02-23 22:42:30', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1209731624921534465', 'e41b69c57a941a3bbcce45032fe57605', '多数据源管理', '/isystem/dataSource', 'system/SysDataSourceList', NULL, NULL, 1, NULL, '1', 6.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-12-25 15:04:30', 'admin', '2020-02-23 22:43:37', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1224641973866467330', 'e41b69c57a941a3bbcce45032fe57605', '系统编码校验规则', '/isystem/checkRule', 'system/SysCheckRuleList', NULL, NULL, 1, NULL, '1', 5.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-11-07 13:52:53', 'admin', '2020-02-23 22:43:05', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1229674163694841857', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单ERP', '/online/cgformErpList/:code', 'modules/online/cgform/auto/erp/OnlCgformErpList', NULL, NULL, 1, NULL, '1', 5.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-02-18 15:49:00', 'admin', '2020-02-18 15:52:25', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1235823781053313025', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线内嵌子表', '/online/cgformInnerTableList/:code', 'modules/online/cgform/auto/innerTable/OnlCgformInnerTableList', NULL, NULL, 1, NULL, '1', 999.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-03-06 15:05:24', 'admin', '2020-03-06 15:07:42', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249162576878370817', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '文件管理', '/isystem/file', 'system/SysFileList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'folder', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 10:29:01', 'jeecg', '2020-04-12 10:30:47', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249206567527260161', '1478631237925072897', '作业管理', '/teaching/workList', 'teaching/TeachingWorkList', NULL, NULL, 1, NULL, '1', 10.00, 0, '', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 13:23:49', 'admin', '2022-01-05 15:38:14', 0, 1, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249217230806978561', '', '创作', '/create', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.00, 0, 'highlight', 1, 0, 0, 0, NULL, 'jeecg', '2020-04-12 14:06:11', 'admin', '2020-11-01 21:09:00', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249217881238671362', '1249217230806978561', 'Scratch3.0', '{{ window._CONFIG[\'webURL\'] }}/scratch3/index.html?scene=create', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 14:08:46', 'jeecg', '2020-04-12 21:25:01', 0, 0, '1', 1);
INSERT INTO `sys_permission` VALUES ('1249315662297042946', '', '课程单元', '/account', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 0.20, 0, 'user', 1, 0, 0, 1, NULL, 'jeecg', '2020-04-12 20:37:19', 'admin', '2020-11-01 21:10:25', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249316121405558786', '', '我的作品', '/account/center', 'account/center/Index', NULL, NULL, 0, NULL, '1', 3.00, 0, 'picture', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 20:39:09', 'admin', '2020-11-01 21:16:12', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249320110008307713', '', '我的作品列表', '/account/mineWork', 'account/center/MineWorkList', NULL, NULL, 0, NULL, '1', 4.00, 0, 'form', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 20:55:00', 'admin', '2022-08-29 12:08:43', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249320400874901505', '', '个人设置', '/account/settings/base', 'account/settings/Index', NULL, NULL, 0, NULL, '1', 10.00, 1, 'setting', 1, 0, 0, 1, NULL, 'jeecg', '2020-04-12 20:56:09', 'admin', '2022-04-17 16:11:02', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249320532483772418', '1249320400874901505', '基本信息', '/account/settings/base', 'account/settings/BaseSetting', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 20:56:40', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249927823277002753', '', '课程管理', '/course', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 11.00, 0, 'book', 1, 0, 0, 0, NULL, 'jeecg', '2020-04-14 13:09:49', 'admin', '2020-11-01 21:11:15', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249928454356176898', '1249927823277002753', '课程包管理', '/course/course', 'teaching/TeachingCourseList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'read', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-14 13:12:20', 'admin', '2020-07-01 21:15:17', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249928626473635842', '1249927823277002753', '课程单元管理', '/course/courseUnit', 'teaching/TeachingCourseUnitList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'bars', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-14 13:13:01', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249990084771192834', '', '我的课程', '/teaching/mineCourse/cardList', 'account/course/CourseListCard', NULL, NULL, 0, NULL, '1', 3.00, 0, 'read', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-14 17:17:14', 'admin', '2020-11-01 21:10:13', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249993808843472897', '1249315662297042946', '课程单元-地图', '/teaching/mineCourse/courseUnitMap', 'account/course/CourseUnitMap', NULL, NULL, 1, NULL, '1', 1.00, 0, 'idcard', 1, 1, 0, 1, NULL, 'jeecg', '2020-04-14 17:32:02', 'admin', '2020-05-27 21:14:20', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1265632389934919681', '1249315662297042946', '课程单元-卡片', '/teaching/mineCourse/courseUnitCard', 'account/course/CourseUnitListCard', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-05-27 21:14:10', 'admin', '2020-05-27 21:18:28', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('13212d3416eb690c2e1d5033166ff47a', '2e42e3835c2b44ec9f7bc26c146ee531', '失败', '/result/fail', 'result/Error', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('1322864365905240066', '1249217230806978561', 'ScratchJr', '{{ window._CONFIG[\'webURL\'] }}/scratchjr/home.html', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-11-01 19:33:37', NULL, NULL, 0, 0, '1', 1);
INSERT INTO `sys_permission` VALUES ('1342341595266134017', '1249217230806978561', '图形化Python', '{{ window._CONFIG[\'webURL\'] }}/python/index.html?scene=create', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-12-24 23:29:10', 'admin', '2021-09-26 18:23:08', 0, 0, '1', 1);
INSERT INTO `sys_permission` VALUES ('1367a93f2c410b169faa7abcbad2f77c', '6e73eb3c26099c191bf03852ee1310a1', '基本设置', '/account/settings/BaseSetting', 'account/settings/BaseSetting', 'account-settings-base', NULL, 1, 'BaseSettings', NULL, NULL, 0, NULL, 1, 1, NULL, 1, NULL, NULL, '2018-12-26 18:58:35', 'admin', '2019-03-20 12:57:31', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('1439107239277322241', 'd7d6e2e4e2934f2c9385a623fd98c6f3', 'Scratch素材库', '/scratch/assets', 'teaching/TeachingScratchAssetsList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'picture', 1, 1, 0, 0, NULL, 'admin', '2021-09-18 01:01:17', 'admin', '2022-04-17 16:23:26', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1472819323378683905', '', '我的作业', '/center/myAdditionalWork', 'account/course/MyAdditionalWorkList', NULL, NULL, 0, NULL, '1', 6.00, 0, 'form', 1, 1, 0, 0, NULL, 'admin', '2021-12-20 14:41:05', 'admin', '2022-08-29 12:08:58', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1478631237925072897', '', '作业管理', '/work', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 11.00, 0, 'form', 1, 0, 0, 0, NULL, 'admin', '2022-01-05 15:35:33', 'admin', '2022-01-05 15:40:49', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1478631727777837058', '1478631237925072897', '布置班级作业', '/work/additionalWork', 'teaching/TeachingAdditionalWorkList', NULL, NULL, 1, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-01-05 15:37:30', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1479321067621249026', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '网站配置', '/sys/sysConfig', 'system/SysConfig', NULL, NULL, 1, NULL, '1', 1.00, 0, 'tool', 1, 1, 0, 0, NULL, 'admin', '2022-01-07 13:16:41', 'admin', '2022-01-07 13:38:53', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1481550648382185474', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '前台菜单管理', '/teaching/menu', 'teaching/TeachingMenuList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'bars', 1, 1, 0, 0, NULL, 'yuki', '2022-01-13 16:56:14', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1498944880717713410', '1249217230806978561', 'Blockly', '{{ window._CONFIG[\'webURL\'] }}/blockly/index.html?lang=zh-hans&scene=create', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 10.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-03-02 16:54:43', 'admin', '2022-04-17 16:03:38', 0, 0, '1', 1);
INSERT INTO `sys_permission` VALUES ('1614180914560692225', '3f915b2769fc80648e92d04e84ca059d', '回收站', NULL, NULL, NULL, NULL, 2, 'user:recycle', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:41:34', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1614180971661946881', '3f915b2769fc80648e92d04e84ca059d', '导入', NULL, NULL, NULL, NULL, 2, 'user:import', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:41:48', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1614181021255397377', '3f915b2769fc80648e92d04e84ca059d', '导出', NULL, NULL, NULL, NULL, 2, 'user:export', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:42:00', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1614181090612408322', '3f915b2769fc80648e92d04e84ca059d', '冻结解冻', NULL, NULL, NULL, NULL, 2, 'user:status', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:42:16', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1614181261056339970', '3f915b2769fc80648e92d04e84ca059d', '修改部门班级', NULL, NULL, NULL, NULL, 2, 'sys:user:depart', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:42:57', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1614181468561141762', '3f915b2769fc80648e92d04e84ca059d', '删除', NULL, NULL, NULL, NULL, 2, 'user:del', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:43:46', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1614181631321108481', '3f915b2769fc80648e92d04e84ca059d', '编辑', NULL, NULL, NULL, NULL, 2, 'user:edit', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:44:25', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('190c2b43bec6a5f7a4194a85db67d96a', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '角色管理', '/isystem/roleUserList', 'system/RoleUserList', NULL, NULL, 1, NULL, NULL, 1.50, 0, 'team', 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:13:56', 'admin', '2022-04-17 16:16:45', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('1a0811914300741f4e11838ff37a1d3a', '3f915b2769fc80648e92d04e84ca059d', '修改手机号', NULL, NULL, NULL, NULL, 2, 'user:form:phone', '2', 1.00, 0, NULL, 0, 1, 0, 0, NULL, 'admin', '2019-05-11 17:19:30', 'admin', '2023-01-14 16:42:40', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('200006f0edf145a2b50eacca07585451', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（应用）', '/list/search/application', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:02:51', 'admin', '2019-02-12 14:14:01', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('22d6a3d39a59dd7ea9a30acfa6bfb0a5', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO动态表单', '/online/df/:table/:id', 'modules/online/cgform/auto/OnlineDynamicForm', NULL, NULL, 1, NULL, NULL, 9.00, 0, NULL, 0, 1, NULL, 1, NULL, 'admin', '2019-04-22 15:15:43', 'admin', '2019-04-30 18:18:26', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('265de841c58907954b8877fb85212622', '2a470fc0c3954d9dbb61de6d80846549', '图片拖拽排序', '/jeecg/imgDragSort', 'jeecg/ImgDragSort', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 10:43:08', 'admin', '2019-04-25 10:46:26', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('277bfabef7d76e89b33062b16a9a5020', 'e3c13679c73a4f829bcff2aba8fd68b1', '基础表单', '/form/base-form', 'form/BasicForm', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-26 17:02:08', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('2a470fc0c3954d9dbb61de6d80846549', '', '常见案例', '/jeecg', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 99.00, 0, 'qrcode', 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2023-02-12 13:03:23', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('2aeddae571695cd6380f6d6d334d6e7d', 'f0675b52d89100ee88472b6800754a08', '布局统计报表', '/report/ArchivesStatisticst', 'jeecg/report/ArchivesStatisticst', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 18:32:48', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('2dbbafa22cda07fa5d169d741b81fe12', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '在线文档', '{{ window._CONFIG[\'domianURL\'] }}/doc.html', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-30 10:00:01', 'admin', '2019-03-23 19:44:43', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('2e42e3835c2b44ec9f7bc26c146ee531', '', '结果页', '/result', 'layouts/PageView', NULL, NULL, 0, NULL, NULL, 8.00, 0, 'check-circle-o', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:46:13', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('339329ed54cf255e1f9392e84f136901', '2a470fc0c3954d9dbb61de6d80846549', 'helloworld', '/jeecg/helloworld', 'jeecg/helloworld', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-15 16:24:56', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('3f915b2769fc80648e92d04e84ca059d', '', '用户管理', '/isystem/user', 'system/UserList', NULL, NULL, 0, NULL, NULL, 10.00, 0, 'idcard', 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2023-01-12 14:50:49', 0, 1, NULL, 0);
INSERT INTO `sys_permission` VALUES ('3fac0d3c9cd40fa53ab70d4c583821f8', '2a470fc0c3954d9dbb61de6d80846549', '分屏', '/jeecg/splitPanel', 'jeecg/SplitPanel', NULL, NULL, 1, NULL, NULL, 6.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 16:27:06', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('4148ec82b6acd69f470bea75fe41c357', '2a470fc0c3954d9dbb61de6d80846549', '单表模型示例', '/jeecg/jeecgDemoList', 'jeecg/JeecgDemoList', 'DemoList', NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-28 15:57:30', 'admin', '2019-02-15 16:24:37', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('418964ba087b90a84897b62474496b93', '540a2936940846cb98114ffb0d145cb8', '查询表格', '/list/query-list', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('4356a1a67b564f0988a484f5531fd4d9', '2a470fc0c3954d9dbb61de6d80846549', '内嵌Table', '/jeecg/TableExpandeSub', 'jeecg/TableExpandeSub', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-04 22:48:13', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('4875ebe289344e14844d8e3ea1edd73f', '', '详情页', '/profile', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 8.00, 0, 'profile', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:45:49', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('4f66409ef3bbd69c1d80469d6e2a885e', '6e73eb3c26099c191bf03852ee1310a1', '账户绑定', '/account/settings/binding', 'account/settings/Binding', NULL, NULL, 1, 'BindingSettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:01:20', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('4f84f9400e5e92c95f05b554724c2b58', '540a2936940846cb98114ffb0d145cb8', '角色列表', '/list/role-list', 'list/RoleList', NULL, NULL, 1, NULL, NULL, 4.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('53a9230444d33de28aa11cc108fb1dba', '5c8042bd6c601270b2bbd9b20bccc68b', '我的消息', '/isps/userAnnouncement', 'system/UserAnnouncementList', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-19 10:16:00', 'admin', '2019-12-25 09:54:34', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('54097c6a3cf50fad0793a34beff1efdf', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单', '/online/cgformList/:code', 'modules/online/cgform/auto/OnlCgformAutoList', NULL, NULL, 1, NULL, NULL, 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-03-19 16:03:06', 'admin', '2019-04-30 18:19:03', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('540a2936940846cb98114ffb0d145cb8', '', '列表页', '/list', 'layouts/PageView', NULL, '/list/query-list', 0, NULL, NULL, 9.00, 0, 'table', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:46:19', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('54dd5457a3190740005c1bfec55b1c34', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '后台菜单管理', '/isystem/permission', 'system/PermissionList', NULL, NULL, 1, NULL, NULL, 1.30, 0, 'bars', 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-01 16:21:30', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('58857ff846e61794c69208e9d3a85466', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '日志管理', '/isystem/log', 'system/LogList', NULL, NULL, 1, NULL, NULL, 1.00, 0, '', 1, 1, NULL, 0, NULL, NULL, '2018-12-26 10:11:18', 'admin', '2019-04-02 11:38:17', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('58b9204feaf07e47284ddb36cd2d8468', '2a470fc0c3954d9dbb61de6d80846549', '图片翻页', '/jeecg/imgTurnPage', 'jeecg/ImgTurnPage', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 11:36:42', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('5c2f42277948043026b7a14692456828', '', '班级管理', '/isystem/departDetailList', 'system/DepartList', NULL, NULL, 0, NULL, NULL, 12.00, 0, 'cluster', 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:12:24', 'admin', '2023-01-12 15:09:11', 0, 1, NULL, 0);
INSERT INTO `sys_permission` VALUES ('5c8042bd6c601270b2bbd9b20bccc68b', '', '消息中心', '/message', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 6.00, 0, 'message', 1, 0, 0, 1, NULL, 'admin', '2019-04-09 11:05:04', 'admin', '2022-04-15 18:47:32', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('6531cf3421b1265aeeeabaab5e176e6d', 'e3c13679c73a4f829bcff2aba8fd68b1', '分步表单', '/form/step-form', 'form/stepForm/StepForm', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('655563cd64b75dcf52ef7bcdd4836953', '2a470fc0c3954d9dbb61de6d80846549', '图片预览', '/jeecg/ImagPreview', 'jeecg/ImagPreview', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-17 11:18:45', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('65a8f489f25a345836b7f44b1181197a', 'c65321e57b7949b7a975313220de0422', '403', '/exception/403', 'exception/403', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('6ad53fd1b220989a8b71ff482d683a5a', '2a470fc0c3954d9dbb61de6d80846549', '一对多Tab示例', '/jeecg/tablist/JeecgOrderDMainList', 'jeecg/tablist/JeecgOrderDMainList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-20 14:45:09', 'admin', '2019-02-21 16:26:21', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('6e73eb3c26099c191bf03852ee1310a1', '717f6bee46f44a3897eca9abd6e2ec44', '个人设置', '/account/settings/Index', 'account/settings/Index', NULL, NULL, 1, NULL, NULL, 2.00, 1, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-19 09:41:05', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('700b7f95165c46cc7a78bf227aa8fed3', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '性能监控', '/monitor', 'layouts/RouteView', NULL, NULL, 1, NULL, NULL, 0.00, 0, NULL, 1, 0, NULL, 0, NULL, 'admin', '2019-04-02 11:34:34', 'admin', '2019-05-05 17:49:47', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('717f6bee46f44a3897eca9abd6e2ec44', '', '个人页', '/account', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 9.00, 0, 'user', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-02-23 22:41:37', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('73678f9daa45ed17a3674131b03432fb', '540a2936940846cb98114ffb0d145cb8', '权限列表', '/list/permission-list', 'list/PermissionList', NULL, NULL, 1, NULL, NULL, 5.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('7593c9e3523a17bca83b8d7fe8a34e58', '3f915b2769fc80648e92d04e84ca059d', '添加用户按钮', '', NULL, NULL, NULL, 2, 'user:add', '1', 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-16 11:20:33', 'admin', '2019-05-17 18:31:25', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('7960961b0063228937da5fa8dd73d371', '2a470fc0c3954d9dbb61de6d80846549', 'JEditableTable示例', '/jeecg/JEditableTable', 'jeecg/JeecgEditableTableExample', NULL, NULL, 1, NULL, NULL, 2.10, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-03-22 15:22:18', 'admin', '2019-12-25 09:48:16', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('7ac9eb9ccbde2f7a033cd4944272bf1e', '540a2936940846cb98114ffb0d145cb8', '卡片列表', '/list/card', 'list/CardList', NULL, NULL, 1, NULL, NULL, 7.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('841057b8a1bef8f6b4b20f9a618a7fa6', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '数据日志', '/sys/dataLog-list', 'system/DataLogList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-11 19:26:49', 'admin', '2019-03-12 11:40:47', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('882a73768cfd7f78f3a37584f7299656', '6e73eb3c26099c191bf03852ee1310a1', '个性化设置', '/account/settings/custom', 'account/settings/Custom', NULL, NULL, 1, 'CustomSettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:00:46', NULL, '2018-12-26 21:13:25', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('8b3bff2eee6f1939147f5c68292a1642', '700b7f95165c46cc7a78bf227aa8fed3', '服务器信息', '/monitor/SystemInfo', 'modules/monitor/SystemInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 11:39:19', 'admin', '2019-04-02 15:40:02', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('8d1ebd663688965f1fd86a2f0ead3416', '700b7f95165c46cc7a78bf227aa8fed3', 'Redis监控', '/monitor/redis/info', 'modules/monitor/RedisInfo', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 13:11:33', 'admin', '2019-05-07 15:18:54', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('8d4683aacaa997ab86b966b464360338', 'e41b69c57a941a3bbcce45032fe57605', 'Online表单开发', '/online/cgform', 'modules/online/cgform/OnlCgformHeadList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 0, NULL, 0, NULL, 'admin', '2019-03-12 15:48:14', 'admin', '2019-06-11 14:19:17', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('8fb8172747a78756c11916216b8b8066', '717f6bee46f44a3897eca9abd6e2ec44', '工作台', '/dashboard/workplace', 'dashboard/Workplace', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:45:02', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('944abf0a8fc22fe1f1154a389a574154', '5c8042bd6c601270b2bbd9b20bccc68b', '消息管理', '/modules/message/sysMessageList', 'modules/message/SysMessageList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-09 11:27:53', 'admin', '2019-04-09 19:31:23', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9502685863ab87f0ad1134142788a385', '', '首页', '/dashboard/index', 'dashboard/Index', NULL, NULL, 0, NULL, NULL, 0.00, 0, 'home', 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-03-07 17:41:27', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('97c8629abc7848eccdb6d77c24bb3ebb', '700b7f95165c46cc7a78bf227aa8fed3', '磁盘监控', '/monitor/Disk', 'modules/monitor/DiskMonitoring', NULL, NULL, 1, NULL, NULL, 6.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 14:30:06', 'admin', '2019-05-05 14:37:14', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9a90363f216a6a08f32eecb3f0bf12a3', '2a470fc0c3954d9dbb61de6d80846549', '自定义组件', '/jeecg/SelectDemo', 'jeecg/SelectDemo', NULL, NULL, 1, NULL, NULL, 0.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-03-19 11:19:05', 'admin', '2019-12-25 09:47:04', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('9cb91b8851db0cf7b19d7ecc2a8193dd', '1939e035e803a99ceecb6f5563570fb2', '我的任务表单', '/modules/bpm/task/form/FormModule', 'modules/bpm/task/form/FormModule', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 16:49:05', 'admin', '2019-03-08 18:37:56', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9fe26464838de2ea5e90f2367e35efa0', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线报表', '/online/cgreport/:code', 'modules/online/cgreport/auto/OnlCgreportAutoList', 'onlineAutoList', NULL, 1, NULL, NULL, 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-03-12 11:06:48', 'admin', '2019-04-30 18:19:10', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('a400e4f4d54f79bf5ce160ae432231af', '2a470fc0c3954d9dbb61de6d80846549', '百度', 'http://www.baidu.com', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-29 19:44:06', 'admin', '2019-02-15 16:25:02', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('ae4fed059f67086fd52a73d913cf473d', '540a2936940846cb98114ffb0d145cb8', '内联编辑表格', '/list/edit-table', 'list/TableInnerEditList', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('aedbf679b5773c1f25e9f7b10111da73', '08e6b9dc3c04489c8e1ff2ce6f105aa4', 'SQL监控', '{{ window._CONFIG[\'domianURL\'] }}/druid/', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-30 09:43:22', 'admin', '2019-03-23 19:00:46', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b1cb0a3fedf7ed0e4653cb5a229837ee', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '定时任务', '/isystem/QuartzJobList', 'system/QuartzJobList', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2019-01-03 09:38:52', 'admin', '2019-04-02 10:24:13', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b3c824fc22bd953e2eb16ae6914ac8f9', '4875ebe289344e14844d8e3ea1edd73f', '高级详情页', '/profile/advanced', 'profile/advanced/Advanced', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b4dfc7d5dd9e8d5b6dd6d4579b1aa559', 'c65321e57b7949b7a975313220de0422', '500', '/exception/500', 'exception/500', NULL, NULL, 1, NULL, NULL, 3.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b6bcee2ccc854052d3cc3e9c96d90197', '71102b3b87fb07e5527bbd2c530dd90a', '加班申请', '/modules/extbpm/joa/JoaOvertimeList', 'modules/extbpm/joa/JoaOvertimeList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 15:33:10', 'admin', '2019-04-03 15:34:48', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('c431130c0bc0ec71b0a5be37747bb36a', '2a470fc0c3954d9dbb61de6d80846549', '一对多JEditable', '/jeecg/JeecgOrderMainListForJEditableTable', 'jeecg/JeecgOrderMainListForJEditableTable', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-29 10:51:59', 'admin', '2019-04-04 20:09:39', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('c65321e57b7949b7a975313220de0422', '', '异常页', '/exception', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 8.00, 0, 'warning', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:45:54', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('c6cf95444d80435eb37b2f9db3971ae6', '2a470fc0c3954d9dbb61de6d80846549', '数据回执模拟', '/jeecg/InterfaceTest', 'jeecg/InterfaceTest', NULL, NULL, 1, NULL, NULL, 6.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-19 16:02:23', 'admin', '2019-02-21 16:25:45', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('cc50656cf9ca528e6f2150eba4714ad2', '4875ebe289344e14844d8e3ea1edd73f', '基础详情页', '/profile/basic', 'profile/basic/Index', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('d07a2c87a451434c99ab06296727ec4f', '700b7f95165c46cc7a78bf227aa8fed3', 'JVM信息', '/monitor/JvmInfo', 'modules/monitor/JvmInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-01 23:07:48', 'admin', '2019-04-02 11:37:16', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('d2bbf9ebca5a8fa2e227af97d2da7548', 'c65321e57b7949b7a975313220de0422', '404', '/exception/404', 'exception/404', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('d7d6e2e4e2934f2c9385a623fd98c6f3', '', '系统管理', '/isystem', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 13.00, 0, 'setting', 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-11-01 21:11:25', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('d86f58e7ab516d3bc6bfb1fe10585f97', '717f6bee46f44a3897eca9abd6e2ec44', '个人中心', '/account/center', 'account/center/Index', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('de13e0f6328c069748de7399fcc1dbbd', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（项目）', '/list/search/project', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:01:40', 'admin', '2019-02-12 14:14:18', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('e08cb190ef230d5d4f03824198773950', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '系统通告', '/isystem/annountCement', 'system/SysAnnouncementList', NULL, NULL, 1, 'annountCement', NULL, 6.00, 0, '', 1, 1, 0, 1, NULL, NULL, '2019-01-02 17:23:01', 'admin', '2021-04-20 11:26:50', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('e1979bb53e9ea51cecc74d86fd9d2f64', '2a470fc0c3954d9dbb61de6d80846549', 'PDF预览', '/jeecg/jeecgPdfView', 'jeecg/JeecgPdfView', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 10:39:35', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('e3c13679c73a4f829bcff2aba8fd68b1', '', '表单页', '/form', 'layouts/PageView', NULL, NULL, 0, NULL, NULL, 9.00, 0, 'form', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:46:25', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('e41b69c57a941a3bbcce45032fe57605', '', '在线开发', '/online', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 99.00, 0, 'cloud', 1, 0, 0, 0, NULL, 'admin', '2019-03-08 10:43:10', 'admin', '2022-01-05 15:47:47', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('e5973686ed495c379d829ea8b2881fc6', 'e3c13679c73a4f829bcff2aba8fd68b1', '高级表单', '/form/advanced-form', 'form/advancedForm/AdvancedForm', NULL, NULL, 1, NULL, NULL, 3.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('e6bfd1fcabfd7942fdd05f076d1dad38', '2a470fc0c3954d9dbb61de6d80846549', '打印测试', '/jeecg/PrintDemo', 'jeecg/PrintDemo', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-19 15:58:48', 'admin', '2019-05-07 20:14:39', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('ebb9d82ea16ad864071158e0c449d186', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '分类字典', '/isys/category', 'system/SysCategoryList', NULL, NULL, 1, NULL, '1', 5.20, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-05-29 18:48:07', 'admin', '2020-02-23 22:45:33', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('ec8d607d0156e198b11853760319c646', '6e73eb3c26099c191bf03852ee1310a1', '安全设置', '/account/settings/security', 'account/settings/Security', NULL, NULL, 1, 'SecuritySettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 18:59:52', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('f0675b52d89100ee88472b6800754a08', '', '统计报表', '/report', 'layouts/RouteView', NULL, '15', 0, NULL, NULL, 15.00, 0, 'bar-chart', 1, 0, 0, 0, NULL, 'admin', '2019-04-03 18:32:02', 'admin', '2023-01-03 17:30:00', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('f1cb187abf927c88b89470d08615f5ac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '数据字典', '/isystem/dict', 'system/DictList', NULL, NULL, 1, NULL, NULL, 5.00, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-28 13:54:43', 'admin', '2020-02-23 22:45:25', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('f23d9bfff4d9aa6b68569ba2cff38415', '540a2936940846cb98114ffb0d145cb8', '标准列表', '/list/basic-list', 'list/StandardList', NULL, NULL, 1, NULL, NULL, 6.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('f2849d3814fc97993bfc519ae6bbf049', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO复制表单', '/online/copyform/:code', 'modules/online/cgform/OnlCgformCopyList', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2019-08-29 16:05:37', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('f780d0d3083d849ccbdb1b1baee4911d', '5c8042bd6c601270b2bbd9b20bccc68b', '模板管理', '/modules/message/sysMessageTemplateList', 'modules/message/SysMessageTemplateList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-09 11:50:31', 'admin', '2019-04-12 10:16:34', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('fb07ca05a3e13674dbf6d3245956da2e', '540a2936940846cb98114ffb0d145cb8', '搜索列表', '/list/search', 'list/search/SearchLayout', NULL, '/list/search/article', 1, NULL, NULL, 8.00, 0, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-12 15:09:13', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('fb367426764077dcf94640c843733985', '2a470fc0c3954d9dbb61de6d80846549', '一对多示例', '/jeecg/JeecgOrderMainList', 'jeecg/JeecgOrderMainList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-15 16:24:11', 'admin', '2019-02-18 10:50:14', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('fba41089766888023411a978d13c0aa4', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO树表单列表', '/online/cgformTreeList/:code', 'modules/online/cgform/auto/OnlCgformTreeList', NULL, NULL, 1, NULL, '1', 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-05-21 14:46:50', 'admin', '2019-06-11 13:52:52', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('fc810a2267dd183e4ef7c71cc60f4670', '700b7f95165c46cc7a78bf227aa8fed3', '请求追踪', '/monitor/HttpTrace', 'modules/monitor/HttpTrace', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 09:46:19', 'admin', '2019-04-02 11:37:27', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('fedfbf4420536cacc0218557d263dfea', '6e73eb3c26099c191bf03852ee1310a1', '新消息通知', '/account/settings/notification', 'account/settings/Notification', NULL, NULL, 1, 'NotificationSettings', NULL, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:02:05', NULL, NULL, 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for sys_permission_data_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission_data_rule`;
CREATE TABLE `sys_permission_data_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则值',
  `status` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限有效状态1有0否',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_fucntionid`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_permission_data_rule
-- ----------------------------
INSERT INTO `sys_permission_data_rule` VALUES ('1613428265733283841', '3f915b2769fc80648e92d04e84ca059d', '仅显示学生', '', 'USE_SQL_RULES', 'sys_user.user_identity=1', '1', '2023-01-12 14:50:49', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('1613432890075062274', '5c2f42277948043026b7a14692456828', '仅显示学生', '', 'USE_SQL_RULES', 'sys_user.user_identity=1', '1', '2023-01-12 15:09:11', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('32b62cb04d6c788d9d92e3ff5e66854e', '8d4683aacaa997ab86b966b464360338', '000', '00', '!=', '00', '1', '2019-04-02 18:36:08', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('40283181614231d401614234fe670003', '40283181614231d401614232cd1c0001', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 21:57:04', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('4028318161424e730161424fca6f0004', '4028318161424e730161424f61510002', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 22:26:20', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880e6487e661a01487e732c020005', '402889fb486e848101486e93a7c80014', 'SYS_ORG_CODE', 'SYS_ORG_CODE', 'LIKE', '010201%', '1', '2014-09-16 20:32:30', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880e6487e661a01487e8153ee0007', '402889fb486e848101486e93a7c80014', 'create_by', 'create_by', '', '#{SYS_USER_CODE}', '1', '2014-09-16 20:47:57', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880ec5ddec439015ddf9225060038', '40288088481d019401481d2fcebf000d', '复杂关系', '', 'USE_SQL_RULES', 'name like \'%张%\' or age > 10', '1', NULL, NULL, '2017-08-14 15:10:25', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402880ec5ddfdd26015ddfe3e0570011', '4028ab775dca0d1b015dca3fccb60016', '复杂sql配置', '', 'USE_SQL_RULES', 'table_name like \'%test%\' or is_tree = \'Y\'', '1', NULL, NULL, '2017-08-14 16:38:55', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402880f25b1e2ac7015b1e5fdebc0012', '402880f25b1e2ac7015b1e5cdc340010', '只能看自己数据', 'create_by', '=', '#{sys_user_code}', '1', '2017-03-30 16:40:51', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881875b19f141015b19f8125e0014', '40288088481d019401481d2fcebf000d', '可看下属业务数据', 'sys_org_code', 'LIKE', '#{sys_org_code}', '1', NULL, NULL, '2017-08-14 15:04:32', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402881e45394d66901539500a4450001', '402881e54df73c73014df75ab670000f', 'sysCompanyCode', 'sysCompanyCode', '=', '#{SYS_COMPANY_CODE}', '1', '2016-03-21 01:09:21', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e45394d6690153950177cb0003', '402881e54df73c73014df75ab670000f', 'sysOrgCode', 'sysOrgCode', '=', '#{SYS_ORG_CODE}', '1', '2016-03-21 01:10:15', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f43101626727aff60067', '402881e56266f43101626724eb730065', '销售自己看自己的数据', 'createBy', '=', '#{sys_user_code}', '1', '2018-03-27 19:11:16', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f4310162672fb1a70082', '402881e56266f43101626724eb730065', '销售经理看所有下级数据', 'sysOrgCode', 'LIKE', '#{sys_org_code}', '1', '2018-03-27 19:20:01', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f431016267387c9f0088', '402881e56266f43101626724eb730065', '只看金额大于1000的数据', 'money', '>=', '1000', '1', '2018-03-27 19:29:37', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881f3650de25101650dfb5a3a0010', '402881e56266f4310162671d62050044', '22', '', 'USE_SQL_RULES', '22', '1', '2018-08-06 14:45:01', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402889fb486e848101486e913cd6000b', '402889fb486e848101486e8e2e8b0007', 'userName', 'userName', '=', 'admin', '1', '2014-09-13 18:31:25', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402889fb486e848101486e98d20d0016', '402889fb486e848101486e93a7c80014', 'title', 'title', '=', '12', '1', NULL, NULL, '2014-09-13 22:18:22', 'scott');
INSERT INTO `sys_permission_data_rule` VALUES ('402889fe47fcb29c0147fcb6b6220001', '8a8ab0b246dc81120146dc8180fe002b', '12', '12', '>', '12', '1', '2014-08-22 15:55:38', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('4028ab775dca0d1b015dca4183530018', '4028ab775dca0d1b015dca3fccb60016', '表名限制', 'isDbSynch', '=', 'Y', '1', NULL, NULL, '2017-08-14 16:43:45', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('4028ef815595a881015595b0ccb60001', '40288088481d019401481d2fcebf000d', '限只能看自己', 'create_by', '=', '#{sys_user_code}', '1', NULL, NULL, '2017-08-14 15:03:56', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('4028ef81574ae99701574aed26530005', '4028ef81574ae99701574aeb97bd0003', '用户名', 'userName', '!=', 'admin', '1', '2016-09-21 12:07:18', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('53609e1854f4a87eb23ed23a18a1042c', '4148ec82b6acd69f470bea75fe41c357', '只看当前部门数据', 'sysOrgCode', '=', '#{sys_org_code}', '1', '2019-05-11 19:40:39', 'admin', '2019-05-11 19:40:50', 'admin');
INSERT INTO `sys_permission_data_rule` VALUES ('a7d661ef5ac168b2b162420c6804dac5', '4148ec82b6acd69f470bea75fe41c357', '只看自己的数据', 'createBy', '=', '#{sys_user_code}', '1', '2019-05-11 19:19:05', 'admin', '2019-05-11 19:24:58', 'admin');
INSERT INTO `sys_permission_data_rule` VALUES ('f852d85d47f224990147f2284c0c0005', NULL, '小于', 'test', '<=', '11', '1', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务名称',
  `post_rank` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职级',
  `company_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司id',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织机构编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_position
-- ----------------------------

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) NULL DEFAULT NULL COMMENT '删除状态',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态 0正常 -1停止',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_job_class_name`(`job_class_name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `role_level` int(11) NOT NULL DEFAULT 0 COMMENT '角色等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_sys_role_role_code`(`role_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1236319727061430274', '开发调试', 'dev', NULL, 'admin', '2020-03-07 23:56:07', 'admin', '2022-08-28 17:46:00', 99);
INSERT INTO `sys_role` VALUES ('1252532277234982913', '学生', 'student', NULL, 'jeecg', '2020-04-21 17:39:00', NULL, NULL, 0);
INSERT INTO `sys_role` VALUES ('1252532323347161090', '教师', 'teacher', NULL, 'jeecg', '2020-04-21 17:39:11', 'admin', '2022-08-28 17:46:09', 2);
INSERT INTO `sys_role` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '管理员', 'admin', '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2022-08-29 12:59:54', 99);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_group_role_per_id`(`role_id`, `permission_id`) USING BTREE,
  INDEX `index_group_role_id`(`role_id`) USING BTREE,
  INDEX `index_group_per_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms`;
CREATE TABLE `sys_sms`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `es_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送方式：1短信 2邮件 3微信',
  `es_receiver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '推送内容',
  `es_send_time` datetime NULL DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int(11) NULL DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_type`(`es_type`) USING BTREE,
  INDEX `index_receiver`(`es_receiver`) USING BTREE,
  INDEX `index_sendtime`(`es_send_time`) USING BTREE,
  INDEX `index_status`(`es_send_status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_sms
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sms_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_template`;
CREATE TABLE `sys_sms_template`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `template_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_templatecode`(`template_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_sms_template
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `birthday` datetime NULL DEFAULT NULL COMMENT '生日',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构编码',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '性别(1-正常,2-冻结)',
  `del_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `third_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方登录的唯一标识',
  `third_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方类型',
  `activiti_sync` tinyint(1) NULL DEFAULT NULL COMMENT '同步工作流引擎(1-同步,0-不同步)',
  `work_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号，唯一键',
  `post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务，关联职务表',
  `telephone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座机号',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `user_identity` tinyint(1) NULL DEFAULT NULL COMMENT '身份（1普通成员 2上级）',
  `depart_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '负责部门',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_user_name`(`username`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_work_no`(`work_no`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_username`(`username`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_phone`(`phone`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_email`(`email`) USING BTREE,
  INDEX `index_user_status`(`status`) USING BTREE,
  INDEX `index_user_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('2cb6e8e9b9ac4ccca17a1c3020a118d4', 'student', '学生', 'e4e236c0add71a04', 'F8tqiPzu', '[]', NULL, 1, NULL, NULL, '班级2,班级1', 1, 0, NULL, NULL, 1, NULL, '', NULL, 'jeecg', '2020-04-21 17:41:46', 'teacher', '2023-01-14 17:32:16', 1, '');
INSERT INTO `sys_user` VALUES ('d05cb1b6d5f64789a9d6f0e8ee1185db', 'teacher', '老师', '3b1b68508ed6b0f5', 'kafIgeoy', '[]', NULL, NULL, NULL, NULL, 'A01A06A01', 1, 0, NULL, NULL, 1, '101', '', NULL, 'admin', '2020-04-21 21:39:06', 'jeecg', '2020-04-22 11:34:52', 2, 'd2b37ffcc3fd46ddb5bc1c3da7fc41c0');
INSERT INTO `sys_user` VALUES ('e9ca23d68d884d4ebb19d07889727dae', 'admin', '管理员', 'cb362cfeefbf3d8d', 'RCGTeGiH', '4c9b63c898324bc0a785385dc65068f2.png', '2018-12-05 00:00:00', 1, 'goodat@vip.qq.com', '18566666661', 'A01', 1, 0, NULL, NULL, 1, '1', '', NULL, NULL, '2038-06-21 17:54:10', 'admin', '2023-01-15 14:01:02', 2, 'c6d7cb4deeac411cb3384b1b31278596');

-- ----------------------------
-- Table structure for sys_user_agent
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_agent`;
CREATE TABLE `sys_user_agent`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '序号',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `agent_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代理人用户名',
  `start_time` datetime NULL DEFAULT NULL COMMENT '代理开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '代理结束时间',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态0无效1有效',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_username`(`user_name`) USING BTREE,
  INDEX `statux_index`(`status`) USING BTREE,
  INDEX `begintime_index`(`start_time`) USING BTREE,
  INDEX `endtime_index`(`end_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户代理人设置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_agent
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_depart`;
CREATE TABLE `sys_user_depart`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_depart_groupk_userid`(`user_id`) USING BTREE,
  INDEX `index_depart_groupkorgid`(`dep_id`) USING BTREE,
  INDEX `index_depart_groupk_uidanddid`(`user_id`, `dep_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_depart
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index2_groupuu_user_id`(`user_id`) USING BTREE,
  INDEX `index2_groupuu_ole_id`(`role_id`) USING BTREE,
  INDEX `index2_groupuu_useridandroleid`(`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for teaching_additional_work
-- ----------------------------
DROP TABLE IF EXISTS `teaching_additional_work`;
CREATE TABLE `teaching_additional_work`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `code_type` tinyint(4) NULL DEFAULT NULL COMMENT '代码类型',
  `work_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业名',
  `work_desc` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业描述',
  `work_cover` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业封面',
  `work_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业文件',
  `work_dept` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分配班级逗号分割',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态0 未发布 1发布',
  `work_document_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业资料',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附加作业' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_additional_work
-- ----------------------------

-- ----------------------------
-- Table structure for teaching_course
-- ----------------------------
DROP TABLE IF EXISTS `teaching_course`;
CREATE TABLE `teaching_course`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `del_flag` int(1) NULL DEFAULT NULL COMMENT '删除标志',
  `course_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目名',
  `course_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '科目介绍',
  `course_icon` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科目图标',
  `course_cover` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科目封面',
  `show_type` int(11) NULL DEFAULT NULL COMMENT '展示类型',
  `course_map` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程地图',
  `is_shared` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否共享课程',
  `order_num` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  `depart_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '授权部门',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courseName`(`course_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_course
-- ----------------------------
INSERT INTO `teaching_course` VALUES ('1443420350180347906', 'admin', '2021-09-30 11:40:03', 'admin', '2023-01-09 15:29:16', 'A01', NULL, 'Scratch入门课', 'Scratch入门课程', NULL, '4670249d28704923811397a063e083d5.jpg', 1, NULL, 0, 1);
INSERT INTO `teaching_course` VALUES ('1468455261786087426', 'admin', '2021-12-08 13:39:51', 'admin', '2023-01-09 15:30:20', 'A01', NULL, 'Scratch进阶课', 'Scratch进阶课程', NULL, 'b893dbb7324c4c80807b468b5e7a7e3f.jpg', 1, 'e788a77fafa943f08cfe77785194eebd.jpg', 0, 2);

-- ----------------------------
-- Table structure for teaching_course_dept
-- ----------------------------
DROP TABLE IF EXISTS `teaching_course_dept`;
CREATE TABLE `teaching_course_dept`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `dept_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `course_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程',
  `open_time` datetime NULL DEFAULT NULL COMMENT '课程开课时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_course_dept
-- ----------------------------

-- ----------------------------
-- Table structure for teaching_course_unit
-- ----------------------------
DROP TABLE IF EXISTS `teaching_course_unit`;
create table teaching_course_unit
(
    id                  varchar(36)             not null
        primary key,
    create_by           varchar(50)             null comment '创建人',
    create_time         datetime                null comment '创建日期',
    update_by           varchar(50)             null comment '更新人',
    update_time         datetime                null comment '更新日期',
    sys_org_code        varchar(64)             null comment '所属部门',
    del_flag            int                     null comment '删除标识',
    unit_name           varchar(64)             not null comment '单元名称',
    unit_intro          varchar(256)            null comment '单元简介',
    unit_cover          varchar(256)            null comment '课程封面',
    course_id           varchar(32)             not null comment '课程外键ID',
    course_video        text                    null comment '课程视频',
    course_video_source tinyint      default 1  null,
    show_course_video   tinyint      default 1  null comment '对学生显示课程视频',
    course_case         varchar(256) default '' not null comment '课程作业案例',
    show_course_case    tinyint      default 1  null comment '对学生显示课程案例',
    course_ppt          varchar(256)            null comment '课件PPT',
    show_course_ppt     tinyint      default 0  null comment '对学生显示课程资料',
    course_work_type    int                     null comment '作业类型',
    course_work         varchar(256)            null comment '课程作业',
    course_work_answer  varchar(256)            null comment '课程作业答案',
    course_plan         varchar(256)            null comment '教案',
    show_course_plan    tinyint      default 0  null comment '对学生显示教案',
    map_x               int                     null comment '地图X坐标',
    map_y               int                     null comment '地图Y坐标',
    order_num           int          default 1  not null comment '排序'
);

create index courseId
    on teachingopendev.teaching_course_unit (course_id);

create index unitName
    on teachingopendev.teaching_course_unit (unit_name);



-- ----------------------------
-- Records of teaching_course_unit
-- ----------------------------

-- ----------------------------
-- Table structure for teaching_menu
-- ----------------------------
DROP TABLE IF EXISTS `teaching_menu`;
CREATE TABLE `teaching_menu`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `menu_type` int(11) NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单)',
  `sort_no` double(8, 2) NULL DEFAULT NULL COMMENT '菜单排序',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `is_leaf` tinyint(1) NULL DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '删除状态 0正常 1已删除',
  `internal_or_external` tinyint(1) NULL DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  `is_route` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否路由',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否隐藏',
  `need_login` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否需要登录',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_prem_pid`(`parent_id`) USING BTREE,
  INDEX `index_prem_sort_no`(`sort_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '前端菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_menu
-- ----------------------------
INSERT INTO `teaching_menu` VALUES ('1481554549722439681', '', '首页', '/home', 0, 0.00, 'home', 1, NULL, 'yuki', '2022-01-13 17:11:45', 'admin', '2023-01-15 16:48:37', 0, 0, 1, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1481554751841755137', '', '创作', '', 0, 1.00, 'build', 0, NULL, 'yuki', '2022-01-13 17:12:33', 'admin', '2022-11-03 16:31:43', 0, 0, 1, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1481555191698415617', '1481554751841755137', '图形化编程', '/scratch3/index.html?scene=create', 1, 1.00, NULL, 1, NULL, 'yuki', '2022-01-13 17:14:18', 'admin', '2022-04-01 17:01:54', 0, 1, 1, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1481959345444990978', '', '个人中心', '/account/center', 0, 3.00, NULL, 1, NULL, 'admin', '2022-01-14 20:00:16', 'admin', '2022-04-01 17:18:00', 0, 0, 1, 0, 1);
INSERT INTO `teaching_menu` VALUES ('1509808945860902914', '1481554751841755137', 'Python', '/python/index.html?scene=create', 1, 2.00, NULL, 1, NULL, 'admin', '2022-04-01 16:24:38', 'admin', '2022-04-01 17:02:11', 0, 1, 1, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1509809019143782402', '1481554751841755137', 'ScratchJr', '/scratchjr/home.html?scene=create', 1, 1.00, NULL, 1, NULL, 'admin', '2022-04-01 16:24:55', 'admin', '2022-04-01 17:01:59', 0, 1, 1, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1515601801083052034', '1481554751841755137', 'Blockly', '/blockly/index.html?lang=zh-hans&scene=create', 1, 4.00, NULL, 1, NULL, 'admin', '2022-04-17 16:03:22', NULL, NULL, 0, 1, 0, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1614545041074384897', '', '发现', '/new', 0, 2.00, 'search', 1, NULL, 'admin', '2023-01-15 16:48:29', 'admin', '2023-01-15 16:48:43', 0, 0, 1, 0, 0);

-- ----------------------------
-- Table structure for teaching_scratch_assets
-- ----------------------------
DROP TABLE IF EXISTS `teaching_scratch_assets`;
CREATE TABLE `teaching_scratch_assets`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `asset_type` tinyint(4) NOT NULL COMMENT '素材类型 1背景 2声音 3造型 4角色',
  `asset_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余 素材名',
  `asset_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '素材json数据',
  `md5_ext` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余 素材md5',
  `tags` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `udpate_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `assetNameIndex`(`asset_name`) USING BTREE,
  INDEX `md5extindex`(`md5_ext`(255)) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_scratch_assets
-- ----------------------------
INSERT INTO `teaching_scratch_assets` VALUES ('1517398589515567106', 1, '少儿编程', '{\"name\":\"少儿编程\",\"tags\":[\"patterns\"],\"md5ext\":\"7aace28370994d3b8b9c3efe05e099f0.jpg\",\"assetId\":\"7aace28370994d3b8b9c3efe05e099f0\",\"dataFormat\":\"jpg\",\"rotationCenterY\":150,\"rotationCenterX\":269,\"bitmapResolution\":2}', '/internalapi/asset/7aace28370994d3b8b9c3efe05e099f0.jpg', 'patterns', 'admin', '2022-04-22 15:03:10', 'teacher', NULL, 0);
INSERT INTO `teaching_scratch_assets` VALUES ('1517398722898628609', 3, 'student', '{\"name\":\"student\",\"tags\":[\"people\"],\"md5ext\":\"24d693da2c5d4fe88c7cfe42581b7f73.png\",\"assetId\":\"24d693da2c5d4fe88c7cfe42581b7f73\",\"dataFormat\":\"png\",\"rotationCenterY\":100,\"rotationCenterX\":100,\"bitmapResolution\":2}', '/internalapi/asset/24d693da2c5d4fe88c7cfe42581b7f73.png', 'people', 'admin', '2022-04-22 15:03:42', NULL, NULL, 0);
INSERT INTO `teaching_scratch_assets` VALUES ('1517398819669610497', 4, '角色', '{\"name\":\"角色\",\"tags\":[\"people\"],\"isStage\":false,\"variables\":{},\"blocks\":{},\"sounds\":[],\"costumes\":[{\"name\":\"student\",\"md5ext\":\"447430fd7e1842f98f629b0352b1c97c.png\",\"assetId\":\"447430fd7e1842f98f629b0352b1c97c\",\"dataFormat\":\"png\",\"rotationCenterY\":100,\"rotationCenterX\":100,\"bitmapResolution\":2},{\"name\":\"teacher\",\"md5ext\":\"c784768cb9ad4e9c9d38d5ceddaaf5d3.png\",\"assetId\":\"c784768cb9ad4e9c9d38d5ceddaaf5d3\",\"dataFormat\":\"png\",\"rotationCenterY\":100,\"rotationCenterX\":100,\"bitmapResolution\":2},{\"name\":\"worker\",\"md5ext\":\"1aa502aaec1d44d1b6f502b099ae48f5.png\",\"assetId\":\"1aa502aaec1d44d1b6f502b099ae48f5\",\"dataFormat\":\"png\",\"rotationCenterY\":100,\"rotationCenterX\":100,\"bitmapResolution\":2}]}', '/internalapi/asset/447430fd7e1842f98f629b0352b1c97c.png,/internalapi/asset/c784768cb9ad4e9c9d38d5ceddaaf5d3.png,/internalapi/asset/1aa502aaec1d44d1b6f502b099ae48f5.png', 'people', 'admin', '2022-04-22 15:04:05', 'teacher', NULL, 0);
INSERT INTO `teaching_scratch_assets` VALUES ('1517399701723353090', 2, '贝斯', '{\"name\":\"贝斯\",\"tags\":[\"percussion\"],\"md5ext\":\"e04a8cdd0ade4b30829c226e3c3cf396.wav\",\"assetId\":\"e04a8cdd0ade4b30829c226e3c3cf396\",\"dataFormat\":\"wav\",\"sampleCount\":61300,\"rate\":48000}', '/internalapi/asset/e04a8cdd0ade4b30829c226e3c3cf396.wav', 'percussion', 'teacher', '2022-04-22 15:07:35', 'teacher', NULL, 0);

-- ----------------------------
-- Table structure for teaching_work
-- ----------------------------
DROP TABLE IF EXISTS `teaching_work`;
CREATE TABLE `teaching_work`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `course_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程ID',
  `work_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作业名',
  `work_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作业类型',
  `work_file` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作文文件',
  `work_cover` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业封面',
  `work_status` int(11) NULL DEFAULT 0 COMMENT '作业状态',
  `star_num` int(11) NOT NULL DEFAULT 0 COMMENT '点赞次数',
  `collect_num` int(11) NOT NULL DEFAULT 0 COMMENT '收藏次数',
  `del_flag` int(11) NOT NULL DEFAULT 0 COMMENT '删除标识',
  `view_num` int(11) NOT NULL DEFAULT 0 COMMENT '查看次数',
  `additional_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `work_scene` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源场景',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `workName`(`work_name`) USING BTREE,
  INDEX `courseId`(`course_id`) USING BTREE,
  INDEX `userId`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_work
-- ----------------------------

-- ----------------------------
-- Table structure for teaching_work_comment
-- ----------------------------
DROP TABLE IF EXISTS `teaching_work_comment`;
CREATE TABLE `teaching_work_comment`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `work_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业ID',
  `comment` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `workId`(`work_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_work_comment
-- ----------------------------

-- ----------------------------
-- Table structure for teaching_work_correct
-- ----------------------------
DROP TABLE IF EXISTS `teaching_work_correct`;
CREATE TABLE `teaching_work_correct`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `work_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业ID',
  `score` int(11) NULL DEFAULT NULL COMMENT '评分',
  `comment` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评语',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `workId`(`work_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_work_correct
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `wechat_user`;
CREATE TABLE `wechat_user`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联用户ID',
  `open_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'openid',
  `union_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'unionid',
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信昵称',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别',
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `county` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `qr_scene` int(11) NULL DEFAULT NULL COMMENT '二维码场景',
  `qr_scene_str` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二维码场景',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '组ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `app_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信APPID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `wechat_user_open_id_uindex`(`open_id`) USING BTREE,
  INDEX `wechat_user_union_id_index`(`union_id`) USING BTREE,
  INDEX `wechat_user_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wechat_user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
