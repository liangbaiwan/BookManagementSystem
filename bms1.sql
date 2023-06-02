/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : bms1

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-10-07 15:20:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add author', '7', 'add_author');
INSERT INTO `auth_permission` VALUES ('26', 'Can change author', '7', 'change_author');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete author', '7', 'delete_author');
INSERT INTO `auth_permission` VALUES ('28', 'Can view author', '7', 'view_author');
INSERT INTO `auth_permission` VALUES ('29', 'Can add books', '8', 'add_books');
INSERT INTO `auth_permission` VALUES ('30', 'Can change books', '8', 'change_books');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete books', '8', 'delete_books');
INSERT INTO `auth_permission` VALUES ('32', 'Can view books', '8', 'view_books');
INSERT INTO `auth_permission` VALUES ('33', 'Can add image', '9', 'add_image');
INSERT INTO `auth_permission` VALUES ('34', 'Can change image', '9', 'change_image');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete image', '9', 'delete_image');
INSERT INTO `auth_permission` VALUES ('36', 'Can view image', '9', 'view_image');
INSERT INTO `auth_permission` VALUES ('37', 'Can add librarian', '10', 'add_librarian');
INSERT INTO `auth_permission` VALUES ('38', 'Can change librarian', '10', 'change_librarian');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete librarian', '10', 'delete_librarian');
INSERT INTO `auth_permission` VALUES ('40', 'Can view librarian', '10', 'view_librarian');
INSERT INTO `auth_permission` VALUES ('41', 'Can add publisher', '11', 'add_publisher');
INSERT INTO `auth_permission` VALUES ('42', 'Can change publisher', '11', 'change_publisher');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete publisher', '11', 'delete_publisher');
INSERT INTO `auth_permission` VALUES ('44', 'Can view publisher', '11', 'view_publisher');
INSERT INTO `auth_permission` VALUES ('45', 'Can add user', '12', 'add_user');
INSERT INTO `auth_permission` VALUES ('46', 'Can change user', '12', 'change_user');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete user', '12', 'delete_user');
INSERT INTO `auth_permission` VALUES ('48', 'Can view user', '12', 'view_user');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'librarian', 'author');
INSERT INTO `django_content_type` VALUES ('8', 'librarian', 'books');
INSERT INTO `django_content_type` VALUES ('9', 'librarian', 'image');
INSERT INTO `django_content_type` VALUES ('10', 'librarian', 'librarian');
INSERT INTO `django_content_type` VALUES ('11', 'librarian', 'publisher');
INSERT INTO `django_content_type` VALUES ('12', 'librarian', 'user');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2021-09-20 12:58:35.948122');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2021-09-20 12:58:43.834848');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2021-09-20 12:58:45.751405');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2021-09-20 12:58:45.803048');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2021-09-20 12:58:45.838415');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2021-09-20 12:58:46.458193');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2021-09-20 12:58:47.250609');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2021-09-20 12:58:48.080596');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2021-09-20 12:58:48.137626');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2021-09-20 12:58:48.663671');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2021-09-20 12:58:48.699103');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2021-09-20 12:58:48.750419');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2021-09-20 12:58:48.853702');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2021-09-20 12:58:48.972419');
INSERT INTO `django_migrations` VALUES ('15', 'librarian', '0001_initial', '2021-09-20 12:58:56.350900');
INSERT INTO `django_migrations` VALUES ('16', 'sessions', '0001_initial', '2021-09-20 12:58:56.737793');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('13d1pwbqa0172qzwfw8zm99fpl02rg26', 'YWExMDYzZThkZmRjODg5ZTBmZmY3YTQzZjY5OTVlZTdlZjZhMzk4Yjp7InVzZXJuYW1lIjoiemlkb25nIiwibmlja25hbWUiOiJcdTY4OTNcdTY4MGJDb2RlIiwiaWQiOjZ9', '2021-10-18 00:39:35.720487');
INSERT INTO `django_session` VALUES ('60s05r7zwk5vfnk0agbo347ek5698ft4', 'MDUyMGIwMzIxYzk1MGUxZjgwOGQwYjU2NmNlNTQ5NGY2ZjE1NzY2Yjp7InVzZXJuYW1lIjoiXHU2ODkzXHU2ODBiQ29kZSIsIm5pY2tuYW1lIjoiemlkb25nIiwiaWQiOjV9', '2021-10-10 20:29:25.545230');
INSERT INTO `django_session` VALUES ('6xb7ir3eexg8im4lbicmw83qnc54zzf5', 'YmQwNmE2Y2IxNDBjNjM4ZWMwODNhNGI2MWU2MmU2MzcxNzE5MGM5Yzp7InVzZXJuYW1lIjoiemlkb25nIiwibmlja25hbWUiOiJcdTY4OTNcdTY4MGJDb2RlIiwiaWQiOjZ9', '2021-10-20 22:51:00.310797');
INSERT INTO `django_session` VALUES ('75owyqky3tmnr9trnxlmpquanuxl5has', 'MmIzOTg4YzQyOWFlNWE3YTdhOThmOGMzMGVkZjg4N2FmY2UwYzk2OTp7InVzZXJuYW1lIjoiXHU2ODkzXHU2ODBiQ29kZSIsIm5pY2tuYW1lIjoiemlkb25nIiwiaWQiOjR9', '2021-10-04 17:17:22.712205');
INSERT INTO `django_session` VALUES ('7ye0vt6w0txiwawzq132rstwbnb9dr2h', 'MmIzOTg4YzQyOWFlNWE3YTdhOThmOGMzMGVkZjg4N2FmY2UwYzk2OTp7InVzZXJuYW1lIjoiXHU2ODkzXHU2ODBiQ29kZSIsIm5pY2tuYW1lIjoiemlkb25nIiwiaWQiOjR9', '2021-10-09 17:14:47.548080');
INSERT INTO `django_session` VALUES ('dc8v4ciwjvvjuibmyuno4mgucoevn9hl', 'YmQwNmE2Y2IxNDBjNjM4ZWMwODNhNGI2MWU2MmU2MzcxNzE5MGM5Yzp7InVzZXJuYW1lIjoiemlkb25nIiwibmlja25hbWUiOiJcdTY4OTNcdTY4MGJDb2RlIiwiaWQiOjZ9', '2021-10-20 11:21:09.697128');
INSERT INTO `django_session` VALUES ('qh7znh3gqsu52lhdzuexs8dw5z4ueath', 'YmQwNmE2Y2IxNDBjNjM4ZWMwODNhNGI2MWU2MmU2MzcxNzE5MGM5Yzp7InVzZXJuYW1lIjoiemlkb25nIiwibmlja25hbWUiOiJcdTY4OTNcdTY4MGJDb2RlIiwiaWQiOjZ9', '2021-10-20 22:57:08.124150');
INSERT INTO `django_session` VALUES ('vkirz4nhm09c9c2lxd1j35qrs1z5dl3f', 'MDUyMGIwMzIxYzk1MGUxZjgwOGQwYjU2NmNlNTQ5NGY2ZjE1NzY2Yjp7InVzZXJuYW1lIjoiXHU2ODkzXHU2ODBiQ29kZSIsIm5pY2tuYW1lIjoiemlkb25nIiwiaWQiOjV9', '2021-10-18 07:02:36.827155');

-- ----------------------------
-- Table structure for librarian_author
-- ----------------------------
DROP TABLE IF EXISTS `librarian_author`;
CREATE TABLE `librarian_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of librarian_author
-- ----------------------------
INSERT INTO `librarian_author` VALUES ('3', '林奕含');
INSERT INTO `librarian_author` VALUES ('4', '【英】罗伯特·戴博德/陈赢');
INSERT INTO `librarian_author` VALUES ('5', '[哥伦比亚] 加西亚·马尔克斯/范晔');
INSERT INTO `librarian_author` VALUES ('6', '[波] 斯坦尼斯瓦夫·莱姆/靖振忠');
INSERT INTO `librarian_author` VALUES ('7', '[美] 卡勒德·胡赛尼/李继宏');
INSERT INTO `librarian_author` VALUES ('8', '[清] 曹雪芹 著、高鹗 续');
INSERT INTO `librarian_author` VALUES ('9', '[意] 阿尔贝托·莫拉维亚/沈萼梅、刘锡荣');
INSERT INTO `librarian_author` VALUES ('10', '[美] 丹尼尔·凯斯/陈澄和');
INSERT INTO `librarian_author` VALUES ('11', '[日] 东野圭吾/李盈春');
INSERT INTO `librarian_author` VALUES ('12', '[法] 圣埃克苏佩里/马振聘');
INSERT INTO `librarian_author` VALUES ('13', '大山诚一郎/曹逸冰');
INSERT INTO `librarian_author` VALUES ('14', '[古巴] 吉列尔莫·卡夫雷拉·因凡特/范晔');
INSERT INTO `librarian_author` VALUES ('15', '[哥伦比亚] 加西亚·马尔克斯/杨玲');
INSERT INTO `librarian_author` VALUES ('16', '[法] 阿尔贝·加缪/柳鸣九');
INSERT INTO `librarian_author` VALUES ('17', '张嘉佳');
INSERT INTO `librarian_author` VALUES ('18', '刘慈欣');
INSERT INTO `librarian_author` VALUES ('19', '天然');
INSERT INTO `librarian_author` VALUES ('20', '[法] 法比安·韦尔曼  编、[法] 凯拉斯科多  绘/陈潇');
INSERT INTO `librarian_author` VALUES ('21', '［法］米歇尔•普西 原著、［法］弗雷德里克•杜瓦尔 改编、［法］迪迪埃•卡塞格兰 绘/章含秋');
INSERT INTO `librarian_author` VALUES ('22', 'おわる');
INSERT INTO `librarian_author` VALUES ('23', '[法] 佩内洛普·芭桔/王晨雪');
INSERT INTO `librarian_author` VALUES ('24', '丘汉林');
INSERT INTO `librarian_author` VALUES ('25', '[日] 伊藤润二/穆迪');
INSERT INTO `librarian_author` VALUES ('26', '[日]菊池祐纪/毛丹青');
INSERT INTO `librarian_author` VALUES ('27', '[美国] 莉兹·克里莫/七英俊');
INSERT INTO `librarian_author` VALUES ('28', '[日] 伊藤润二/金静和');
INSERT INTO `librarian_author` VALUES ('29', '藤本 タツキ');
INSERT INTO `librarian_author` VALUES ('30', '左马');
INSERT INTO `librarian_author` VALUES ('31', '匡扶');
INSERT INTO `librarian_author` VALUES ('32', '[以] 阿萨夫·哈努卡/张琦');
INSERT INTO `librarian_author` VALUES ('33', '[美]莉兹•克里莫/周高逸');
INSERT INTO `librarian_author` VALUES ('34', '许先哲');
INSERT INTO `librarian_author` VALUES ('35', '[日] 今敏/Mrs.X');
INSERT INTO `librarian_author` VALUES ('36', '田中靖規/林志昌');
INSERT INTO `librarian_author` VALUES ('37', '[日] 手冢治虫/谢鹰');
INSERT INTO `librarian_author` VALUES ('38', '[韩] 洪渊植 编绘/米糕');
INSERT INTO `librarian_author` VALUES ('39', 'bibi园长');
INSERT INTO `librarian_author` VALUES ('40', '[法] 克里斯多夫·夏布特/吕俊君');
INSERT INTO `librarian_author` VALUES ('41', '吴淼');
INSERT INTO `librarian_author` VALUES ('42', '白关');
INSERT INTO `librarian_author` VALUES ('43', '[芬]卡罗利娜·科尔霍宁/李浚帆');
INSERT INTO `librarian_author` VALUES ('44', 'Koogi');
INSERT INTO `librarian_author` VALUES ('45', '[美国] 威尔·艾斯纳/刘宗尧');
INSERT INTO `librarian_author` VALUES ('46', '[美] 尼克·索萨尼斯/严安若');
INSERT INTO `librarian_author` VALUES ('47', '[美] 莉兹·克里莫/周高逸');
INSERT INTO `librarian_author` VALUES ('48', '[日]藤本理/烨伊');
INSERT INTO `librarian_author` VALUES ('49', '[法] 帕斯卡尔·茹瑟兰/王大莹');
INSERT INTO `librarian_author` VALUES ('50', '[日] 手冢治虫/晓瑶');
INSERT INTO `librarian_author` VALUES ('51', '尾田荣一郎/董科');
INSERT INTO `librarian_author` VALUES ('52', '二混子');
INSERT INTO `librarian_author` VALUES ('53', '(美) 大卫·马祖凯利/艾琦');
INSERT INTO `librarian_author` VALUES ('54', '陈磊（笔名：二混子）');
INSERT INTO `librarian_author` VALUES ('55', '伊藤润二');
INSERT INTO `librarian_author` VALUES ('56', '藤本樹/林家祥');
INSERT INTO `librarian_author` VALUES ('57', '[日]今 敏/霍秀仪');
INSERT INTO `librarian_author` VALUES ('58', '[俄] 亚历山德拉·利特维娜 文、[俄] 阿尼娅·杰斯尼茨卡娅 绘/叶晓奕');
INSERT INTO `librarian_author` VALUES ('59', '[法] 马克-安托万·马修/后浪漫（编译）');
INSERT INTO `librarian_author` VALUES ('60', '丁香医生');
INSERT INTO `librarian_author` VALUES ('61', '[法] 马克-安托万·马修/后浪漫');
INSERT INTO `librarian_author` VALUES ('62', '[法]让-马克·罗切特、[法]奥利维埃·巴奎特/方圆平');
INSERT INTO `librarian_author` VALUES ('63', '[日] 高野文子/王大明');
INSERT INTO `librarian_author` VALUES ('64', '原著：鲁迅、编绘：昔酒');
INSERT INTO `librarian_author` VALUES ('65', '[德] 埃·奥·卜劳恩 作、洪佩奇 编');
INSERT INTO `librarian_author` VALUES ('66', '白茶');
INSERT INTO `librarian_author` VALUES ('67', '[日]阿伏伽德六/黄文娟');
INSERT INTO `librarian_author` VALUES ('68', '[法] 马克-安托万·马修/徐峰');
INSERT INTO `librarian_author` VALUES ('69', '参号ミツル');
INSERT INTO `librarian_author` VALUES ('70', '陈磊、半小时漫画团队');
INSERT INTO `librarian_author` VALUES ('71', '莉兹·克里莫/周高逸');
INSERT INTO `librarian_author` VALUES ('72', '藤本樹/趙秋鳳');
INSERT INTO `librarian_author` VALUES ('73', '[法] 埃曼努埃尔·吉贝尔、[法]迪迪埃·勒费伍尔(摄/口述)、[法]弗雷德里克·勒梅西埃(绘)/余轶');
INSERT INTO `librarian_author` VALUES ('74', '加東鉄瓶');
INSERT INTO `librarian_author` VALUES ('75', '[日] 谷口治郎/伍楚');
INSERT INTO `librarian_author` VALUES ('76', '[加]盖·德利斯勒/王大莹');
INSERT INTO `librarian_author` VALUES ('77', '幾米');
INSERT INTO `librarian_author` VALUES ('78', '[美] 卡伦·邦恩、[西] 米格尔·巴尔德拉马/NaZgul');
INSERT INTO `librarian_author` VALUES ('79', '[日]物久保/赵婉宁');
INSERT INTO `librarian_author` VALUES ('80', '陈磊');
INSERT INTO `librarian_author` VALUES ('81', '[日] 伊藤潤二');
INSERT INTO `librarian_author` VALUES ('82', '石黒正数');
INSERT INTO `librarian_author` VALUES ('83', '[美]凯特·艾伦（ Kate Allan ）/李晓燕');
INSERT INTO `librarian_author` VALUES ('84', '郑问');
INSERT INTO `librarian_author` VALUES ('85', '[法] 马克-安托万·马修/贾梦');
INSERT INTO `librarian_author` VALUES ('86', '陈磊·半小时漫画团队');
INSERT INTO `librarian_author` VALUES ('87', '作者：张乐平原著  上海美术电影制片厂摄制');
INSERT INTO `librarian_author` VALUES ('88', '[日]高木直子/香冰');
INSERT INTO `librarian_author` VALUES ('89', '[日] Keigo（河尻圭吾）');
INSERT INTO `librarian_author` VALUES ('90', '梅村真也、アジチカ/江昱霖');
INSERT INTO `librarian_author` VALUES ('91', '(日) 增村博 编绘、(日) 宫泽贤治 原著/周龙梅');
INSERT INTO `librarian_author` VALUES ('92', '和山やま/風間鈴');
INSERT INTO `librarian_author` VALUES ('93', '[日] 丸山一彦/浪花朵朵');
INSERT INTO `librarian_author` VALUES ('94', '趣哥');
INSERT INTO `librarian_author` VALUES ('95', '[日] 手冢治虫/甘卉');
INSERT INTO `librarian_author` VALUES ('96', '[瑞士] 弗雷德里克·佩特斯/陈帅、易立');
INSERT INTO `librarian_author` VALUES ('97', '怪奇事物所所长');
INSERT INTO `librarian_author` VALUES ('98', '[德] 延斯·哈德/素言');
INSERT INTO `librarian_author` VALUES ('99', '玛赞·莎塔碧');
INSERT INTO `librarian_author` VALUES ('100', '[英] 阿兰·摩尔、[英] 戴夫·吉本斯 绘/王周凌、PatientPatient 校译');
INSERT INTO `librarian_author` VALUES ('101', '[法] 巴斯蒂安·维韦斯/张鑫佳');
INSERT INTO `librarian_author` VALUES ('102', '丰子恺');
INSERT INTO `librarian_author` VALUES ('103', '许先哲、张肖');
INSERT INTO `librarian_author` VALUES ('104', '[比] 埃德加·P.雅各布斯/倪小淆');
INSERT INTO `librarian_author` VALUES ('105', '今敏/焦阳');
INSERT INTO `librarian_author` VALUES ('106', '（日）高木直子/顾峰峰、书中缘、书锦缘');
INSERT INTO `librarian_author` VALUES ('107', '吾峠呼世晴');
INSERT INTO `librarian_author` VALUES ('108', '藤本樹');
INSERT INTO `librarian_author` VALUES ('109', '[以色列] 尤瓦尔·赫拉利/林俊宏');
INSERT INTO `librarian_author` VALUES ('110', '[意]卡洛·金茨堡/鲁伊');
INSERT INTO `librarian_author` VALUES ('111', '[美] 塔米姆·安萨利/钟鹰翔');
INSERT INTO `librarian_author` VALUES ('112', '钱穆');
INSERT INTO `librarian_author` VALUES ('113', '谌旭彬');
INSERT INTO `librarian_author` VALUES ('114', '当年明月');
INSERT INTO `librarian_author` VALUES ('115', '[美] 黄仁宇');
INSERT INTO `librarian_author` VALUES ('116', '[美] 傅高义');
INSERT INTO `librarian_author` VALUES ('117', '杨本芬');
INSERT INTO `librarian_author` VALUES ('118', '[美] 埃德加·斯诺埃/董乐山');
INSERT INTO `librarian_author` VALUES ('119', '[美] 孔飞力');
INSERT INTO `librarian_author` VALUES ('120', '[美] 贾雷德·戴蒙德/谢延光');
INSERT INTO `librarian_author` VALUES ('121', '[美] 张纯如/谭春霞、焦国林');
INSERT INTO `librarian_author` VALUES ('122', '[英] 理查德·J. 埃文斯/赖丽薇');
INSERT INTO `librarian_author` VALUES ('123', '[英] 肯·福莱特/于大卫');
INSERT INTO `librarian_author` VALUES ('124', '田余庆');
INSERT INTO `librarian_author` VALUES ('125', '[伊朗]霍昌·纳哈万迪、[法]伊夫·博马提/安宁');
INSERT INTO `librarian_author` VALUES ('126', '[以] 尤瓦尔·赫拉利/林俊宏');
INSERT INTO `librarian_author` VALUES ('127', '(美) 斯塔夫里阿诺斯/吴象婴、梁赤民、董书慧、王昶');
INSERT INTO `librarian_author` VALUES ('128', '毛泽东');
INSERT INTO `librarian_author` VALUES ('129', '[美] 乔治·帕克 (George Packer)/刘冉');
INSERT INTO `librarian_author` VALUES ('130', '[美] 大卫·哈伯斯塔姆/王祖宁、刘寅龙');
INSERT INTO `librarian_author` VALUES ('131', '张向荣');
INSERT INTO `librarian_author` VALUES ('132', '[明] 罗贯中');
INSERT INTO `librarian_author` VALUES ('133', '[意] 翁贝托·艾柯/刘慧宁');
INSERT INTO `librarian_author` VALUES ('134', '[奥]斯蒂芬·茨威格/姜乙');
INSERT INTO `librarian_author` VALUES ('135', '王力 主编、马汉麟 等执笔、姜亮夫 叶圣陶 等审校、刘乐园 修订');
INSERT INTO `librarian_author` VALUES ('136', '[英] 亚当·图兹');
INSERT INTO `librarian_author` VALUES ('137', '马伯庸');
INSERT INTO `librarian_author` VALUES ('138', '许倬云');
INSERT INTO `librarian_author` VALUES ('139', '吕思勉');
INSERT INTO `librarian_author` VALUES ('140', '北溟鱼');
INSERT INTO `librarian_author` VALUES ('141', '吴思');
INSERT INTO `librarian_author` VALUES ('142', '[英] 劳伦斯·里斯/刘爽');
INSERT INTO `librarian_author` VALUES ('143', '刘勃');
INSERT INTO `librarian_author` VALUES ('144', '[日]中岛敦');
INSERT INTO `librarian_author` VALUES ('145', '[苏联]伊万·迈斯基 著、[英]加布里埃尔·戈罗德茨基 编/全克林、赵文焕');
INSERT INTO `librarian_author` VALUES ('146', '[巴基斯坦] 艾哈迈德.拉希德/钟鹰翔');
INSERT INTO `librarian_author` VALUES ('147', '茅海建');
INSERT INTO `librarian_author` VALUES ('148', '三毛');
INSERT INTO `librarian_author` VALUES ('149', '刘子超');
INSERT INTO `librarian_author` VALUES ('150', '叶武滨');
INSERT INTO `librarian_author` VALUES ('151', '杨潇');
INSERT INTO `librarian_author` VALUES ('152', '[美] 彼得·海斯勒/李雪顺');
INSERT INTO `librarian_author` VALUES ('153', '[日]星野道夫（Michio Hoshino）/曹逸冰');
INSERT INTO `librarian_author` VALUES ('154', '[美] 保罗·索鲁/陈媛媛');
INSERT INTO `librarian_author` VALUES ('155', '[日] 星野道夫/游韵馨');
INSERT INTO `librarian_author` VALUES ('156', '[英] 蕾秋·乔伊斯/黄妙瑜');
INSERT INTO `librarian_author` VALUES ('157', '[英] 柏瑞尔·马卡姆/陶立夏');
INSERT INTO `librarian_author` VALUES ('158', '[美] 杰克·凯鲁亚克/王永年');
INSERT INTO `librarian_author` VALUES ('159', '[英]埃里克 ·纽比');
INSERT INTO `librarian_author` VALUES ('160', '大冰');
INSERT INTO `librarian_author` VALUES ('161', '刘拓');
INSERT INTO `librarian_author` VALUES ('162', '[英] 奈吉尔·巴利/何颖怡');
INSERT INTO `librarian_author` VALUES ('163', '李娟');
INSERT INTO `librarian_author` VALUES ('164', '朱一龙');
INSERT INTO `librarian_author` VALUES ('165', '[英] 阿兰·德波顿/南治国、彭俊豪、何世原');
INSERT INTO `librarian_author` VALUES ('166', '杨柳松');
INSERT INTO `librarian_author` VALUES ('167', '库索');
INSERT INTO `librarian_author` VALUES ('168', '林达');
INSERT INTO `librarian_author` VALUES ('169', '[英] 海伦娜·阿特利');
INSERT INTO `librarian_author` VALUES ('170', '苏敏 口述、卓夕琳 执笔');
INSERT INTO `librarian_author` VALUES ('171', '[澳] 萨拉·麦克唐纳');
INSERT INTO `librarian_author` VALUES ('172', '[美]莎朗·哈金斯 主编/徐唯薇');
INSERT INTO `librarian_author` VALUES ('173', '[日] 星野道夫/蔡昭仪');
INSERT INTO `librarian_author` VALUES ('174', '罗新');
INSERT INTO `librarian_author` VALUES ('175', '[日] 村上春树/施小炜');
INSERT INTO `librarian_author` VALUES ('176', '黄永玉');
INSERT INTO `librarian_author` VALUES ('177', '[英] 海伦•拉塞尔/李迎春');
INSERT INTO `librarian_author` VALUES ('178', '胡续冬');
INSERT INTO `librarian_author` VALUES ('179', '[美]谢丽尔·斯特雷德（Cheryl Strayed）/靳婷婷、张怀强');
INSERT INTO `librarian_author` VALUES ('180', '黄菊');
INSERT INTO `librarian_author` VALUES ('181', '[英] 罗瑞·斯图尔特/沈一鸣');
INSERT INTO `librarian_author` VALUES ('182', '蒋方舟');
INSERT INTO `librarian_author` VALUES ('183', '许美达');
INSERT INTO `librarian_author` VALUES ('184', '陈紫莲');
INSERT INTO `librarian_author` VALUES ('185', '[英]休·汤姆森');
INSERT INTO `librarian_author` VALUES ('186', '[美]保罗·索鲁/张芸');
INSERT INTO `librarian_author` VALUES ('187', '[美]约翰·缪尔/邱婷婷');
INSERT INTO `librarian_author` VALUES ('188', '傅真');
INSERT INTO `librarian_author` VALUES ('189', '余秋雨');
INSERT INTO `librarian_author` VALUES ('190', '[英] 迈克尔·布斯');
INSERT INTO `librarian_author` VALUES ('191', '[英]洛瑞·李/王柯月');
INSERT INTO `librarian_author` VALUES ('192', '[日] 村上春树/林少华');
INSERT INTO `librarian_author` VALUES ('193', '侯杨方');
INSERT INTO `librarian_author` VALUES ('194', '花蚀');
INSERT INTO `librarian_author` VALUES ('195', '［日］田中正人、［日］香月孝史/刘晓晓');
INSERT INTO `librarian_author` VALUES ('196', '[英] 比尔·布莱森/闾佳');
INSERT INTO `librarian_author` VALUES ('197', '[美] 阿图·葛文德（Atul Gawande）/王一方 主编、彭小华');
INSERT INTO `librarian_author` VALUES ('198', '[美] 侯世达');
INSERT INTO `librarian_author` VALUES ('199', '【德】朱莉娅·恩德斯/钱为');
INSERT INTO `librarian_author` VALUES ('200', '[英] 马修·沃克/田盈春');
INSERT INTO `librarian_author` VALUES ('201', '[意] 卡洛·罗韦利/杨光');
INSERT INTO `librarian_author` VALUES ('202', '曹天元');
INSERT INTO `librarian_author` VALUES ('203', '尼古拉斯·P.莫尼/喻柏雅');
INSERT INTO `librarian_author` VALUES ('204', '林欣浩');
INSERT INTO `librarian_author` VALUES ('205', '罗翔');
INSERT INTO `librarian_author` VALUES ('206', '[英] 史蒂芬·霍金/许明贤、吴忠超');
INSERT INTO `librarian_author` VALUES ('207', '[美] G. 伽莫夫/暴永宁 译、吴伯泽 校');
INSERT INTO `librarian_author` VALUES ('208', '[英]理查德·道金斯/卢允中、张岱云、陈复加、罗小舟');
INSERT INTO `librarian_author` VALUES ('209', '[英] 加文·普雷特-平尼/王燕平、张超');
INSERT INTO `librarian_author` VALUES ('210', '[英] 迪安·博内特/朱机');
INSERT INTO `librarian_author` VALUES ('211', '星球研究所、中国青藏高原研究会');
INSERT INTO `librarian_author` VALUES ('212', '[英] 埃德温·A·艾勃特/鲁冬旭');
INSERT INTO `librarian_author` VALUES ('213', '[美] 悉达多·穆克吉/李虎');
INSERT INTO `librarian_author` VALUES ('214', '吴杰臻');
INSERT INTO `librarian_author` VALUES ('215', '李治中（菠萝）');
INSERT INTO `librarian_author` VALUES ('216', '[美]卡尔·萨根/虞北冥');
INSERT INTO `librarian_author` VALUES ('217', '吴军');
INSERT INTO `librarian_author` VALUES ('218', '薄世宁');
INSERT INTO `librarian_author` VALUES ('219', '[英] 奥利弗·萨克斯/肖晓、周书');
INSERT INTO `librarian_author` VALUES ('220', '[美] 史蒂夫·斯托加茨/任烨');
INSERT INTO `librarian_author` VALUES ('221', '[英] 罗伯特·麦克法伦/王如菲');
INSERT INTO `librarian_author` VALUES ('222', '夏萌');
INSERT INTO `librarian_author` VALUES ('223', '[瑞典] 帕特里克•斯文松/徐昕');
INSERT INTO `librarian_author` VALUES ('224', '[加] 瑞安·诺思/王乔琦');
INSERT INTO `librarian_author` VALUES ('225', '[日]池谷裕二/高宇涵');
INSERT INTO `librarian_author` VALUES ('226', '[美国] 比尔·盖茨/陈召强');
INSERT INTO `librarian_author` VALUES ('227', '[德]耶尔•阿德勒 (Yael Adler)、[德]卡提雅•史匹哲 (Katja Spitzer )  绘/刘立');
INSERT INTO `librarian_author` VALUES ('228', '[日] 涩泽龙彦/余梦娇');
INSERT INTO `librarian_author` VALUES ('229', '[英] 米莉·玛洛塔/孙依静');
INSERT INTO `librarian_author` VALUES ('230', '梓栋');
INSERT INTO `librarian_author` VALUES ('231', '王巍巍');
INSERT INTO `librarian_author` VALUES ('232', '王巍巍');
INSERT INTO `librarian_author` VALUES ('233', '王巍巍');
INSERT INTO `librarian_author` VALUES ('234', '王巍巍');
INSERT INTO `librarian_author` VALUES ('235', '王巍巍');
INSERT INTO `librarian_author` VALUES ('236', '王巍巍');
INSERT INTO `librarian_author` VALUES ('237', '王巍巍');

-- ----------------------------
-- Table structure for librarian_author_books
-- ----------------------------
DROP TABLE IF EXISTS `librarian_author_books`;
CREATE TABLE `librarian_author_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `librarian_author_books_author_id_books_id_a19897a7_uniq` (`author_id`,`books_id`),
  KEY `librarian_author_books_books_id_7e71ae9e_fk_librarian_books_id` (`books_id`),
  CONSTRAINT `librarian_author_books_author_id_c7ab389a_fk_librarian_author_id` FOREIGN KEY (`author_id`) REFERENCES `librarian_author` (`id`),
  CONSTRAINT `librarian_author_books_books_id_7e71ae9e_fk_librarian_books_id` FOREIGN KEY (`books_id`) REFERENCES `librarian_books` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of librarian_author_books
-- ----------------------------
INSERT INTO `librarian_author_books` VALUES ('5', '3', '3');
INSERT INTO `librarian_author_books` VALUES ('6', '4', '4');
INSERT INTO `librarian_author_books` VALUES ('7', '5', '5');
INSERT INTO `librarian_author_books` VALUES ('8', '6', '6');
INSERT INTO `librarian_author_books` VALUES ('9', '7', '7');
INSERT INTO `librarian_author_books` VALUES ('10', '8', '8');
INSERT INTO `librarian_author_books` VALUES ('11', '9', '9');
INSERT INTO `librarian_author_books` VALUES ('12', '10', '10');
INSERT INTO `librarian_author_books` VALUES ('13', '11', '11');
INSERT INTO `librarian_author_books` VALUES ('14', '12', '12');
INSERT INTO `librarian_author_books` VALUES ('15', '13', '13');
INSERT INTO `librarian_author_books` VALUES ('16', '14', '15');
INSERT INTO `librarian_author_books` VALUES ('17', '15', '16');
INSERT INTO `librarian_author_books` VALUES ('18', '16', '18');
INSERT INTO `librarian_author_books` VALUES ('19', '17', '19');
INSERT INTO `librarian_author_books` VALUES ('20', '18', '20');
INSERT INTO `librarian_author_books` VALUES ('21', '19', '21');
INSERT INTO `librarian_author_books` VALUES ('22', '20', '22');
INSERT INTO `librarian_author_books` VALUES ('23', '21', '23');
INSERT INTO `librarian_author_books` VALUES ('24', '22', '24');
INSERT INTO `librarian_author_books` VALUES ('25', '22', '110');
INSERT INTO `librarian_author_books` VALUES ('26', '23', '25');
INSERT INTO `librarian_author_books` VALUES ('27', '24', '26');
INSERT INTO `librarian_author_books` VALUES ('28', '25', '27');
INSERT INTO `librarian_author_books` VALUES ('29', '26', '28');
INSERT INTO `librarian_author_books` VALUES ('30', '27', '29');
INSERT INTO `librarian_author_books` VALUES ('31', '28', '30');
INSERT INTO `librarian_author_books` VALUES ('32', '28', '41');
INSERT INTO `librarian_author_books` VALUES ('33', '29', '31');
INSERT INTO `librarian_author_books` VALUES ('34', '29', '35');
INSERT INTO `librarian_author_books` VALUES ('35', '29', '64');
INSERT INTO `librarian_author_books` VALUES ('36', '30', '32');
INSERT INTO `librarian_author_books` VALUES ('37', '31', '33');
INSERT INTO `librarian_author_books` VALUES ('38', '31', '68');
INSERT INTO `librarian_author_books` VALUES ('39', '32', '34');
INSERT INTO `librarian_author_books` VALUES ('40', '33', '36');
INSERT INTO `librarian_author_books` VALUES ('41', '34', '37');
INSERT INTO `librarian_author_books` VALUES ('42', '35', '38');
INSERT INTO `librarian_author_books` VALUES ('43', '36', '39');
INSERT INTO `librarian_author_books` VALUES ('44', '37', '40');
INSERT INTO `librarian_author_books` VALUES ('45', '38', '42');
INSERT INTO `librarian_author_books` VALUES ('46', '39', '43');
INSERT INTO `librarian_author_books` VALUES ('47', '40', '44');
INSERT INTO `librarian_author_books` VALUES ('48', '41', '45');
INSERT INTO `librarian_author_books` VALUES ('49', '42', '46');
INSERT INTO `librarian_author_books` VALUES ('50', '43', '47');
INSERT INTO `librarian_author_books` VALUES ('51', '44', '48');
INSERT INTO `librarian_author_books` VALUES ('52', '45', '49');
INSERT INTO `librarian_author_books` VALUES ('53', '46', '50');
INSERT INTO `librarian_author_books` VALUES ('54', '47', '51');
INSERT INTO `librarian_author_books` VALUES ('55', '48', '52');
INSERT INTO `librarian_author_books` VALUES ('56', '49', '53');
INSERT INTO `librarian_author_books` VALUES ('57', '50', '54');
INSERT INTO `librarian_author_books` VALUES ('58', '51', '55');
INSERT INTO `librarian_author_books` VALUES ('59', '52', '56');
INSERT INTO `librarian_author_books` VALUES ('60', '53', '57');
INSERT INTO `librarian_author_books` VALUES ('61', '54', '58');
INSERT INTO `librarian_author_books` VALUES ('62', '55', '59');
INSERT INTO `librarian_author_books` VALUES ('63', '56', '60');
INSERT INTO `librarian_author_books` VALUES ('64', '57', '61');
INSERT INTO `librarian_author_books` VALUES ('65', '58', '62');
INSERT INTO `librarian_author_books` VALUES ('66', '59', '63');
INSERT INTO `librarian_author_books` VALUES ('67', '60', '65');
INSERT INTO `librarian_author_books` VALUES ('68', '61', '66');
INSERT INTO `librarian_author_books` VALUES ('69', '62', '67');
INSERT INTO `librarian_author_books` VALUES ('70', '63', '69');
INSERT INTO `librarian_author_books` VALUES ('71', '63', '100');
INSERT INTO `librarian_author_books` VALUES ('72', '64', '70');
INSERT INTO `librarian_author_books` VALUES ('73', '65', '71');
INSERT INTO `librarian_author_books` VALUES ('74', '66', '72');
INSERT INTO `librarian_author_books` VALUES ('75', '67', '73');
INSERT INTO `librarian_author_books` VALUES ('76', '68', '74');
INSERT INTO `librarian_author_books` VALUES ('77', '69', '75');
INSERT INTO `librarian_author_books` VALUES ('78', '70', '76');
INSERT INTO `librarian_author_books` VALUES ('79', '71', '77');
INSERT INTO `librarian_author_books` VALUES ('80', '72', '78');
INSERT INTO `librarian_author_books` VALUES ('81', '73', '80');
INSERT INTO `librarian_author_books` VALUES ('82', '75', '82');
INSERT INTO `librarian_author_books` VALUES ('83', '76', '83');
INSERT INTO `librarian_author_books` VALUES ('84', '77', '84');
INSERT INTO `librarian_author_books` VALUES ('85', '78', '85');
INSERT INTO `librarian_author_books` VALUES ('86', '79', '86');
INSERT INTO `librarian_author_books` VALUES ('87', '80', '87');
INSERT INTO `librarian_author_books` VALUES ('88', '80', '89');
INSERT INTO `librarian_author_books` VALUES ('89', '80', '92');
INSERT INTO `librarian_author_books` VALUES ('90', '81', '88');
INSERT INTO `librarian_author_books` VALUES ('91', '82', '90');
INSERT INTO `librarian_author_books` VALUES ('92', '83', '91');
INSERT INTO `librarian_author_books` VALUES ('93', '84', '93');
INSERT INTO `librarian_author_books` VALUES ('94', '85', '94');
INSERT INTO `librarian_author_books` VALUES ('95', '86', '95');
INSERT INTO `librarian_author_books` VALUES ('96', '86', '104');
INSERT INTO `librarian_author_books` VALUES ('97', '87', '96');
INSERT INTO `librarian_author_books` VALUES ('98', '88', '97');
INSERT INTO `librarian_author_books` VALUES ('99', '89', '98');
INSERT INTO `librarian_author_books` VALUES ('100', '90', '99');
INSERT INTO `librarian_author_books` VALUES ('101', '91', '101');
INSERT INTO `librarian_author_books` VALUES ('102', '92', '102');
INSERT INTO `librarian_author_books` VALUES ('103', '93', '103');
INSERT INTO `librarian_author_books` VALUES ('105', '94', '105');
INSERT INTO `librarian_author_books` VALUES ('106', '95', '106');
INSERT INTO `librarian_author_books` VALUES ('107', '96', '107');
INSERT INTO `librarian_author_books` VALUES ('108', '97', '108');
INSERT INTO `librarian_author_books` VALUES ('109', '98', '109');
INSERT INTO `librarian_author_books` VALUES ('110', '99', '111');
INSERT INTO `librarian_author_books` VALUES ('111', '100', '112');
INSERT INTO `librarian_author_books` VALUES ('112', '101', '113');
INSERT INTO `librarian_author_books` VALUES ('113', '102', '114');
INSERT INTO `librarian_author_books` VALUES ('114', '103', '115');
INSERT INTO `librarian_author_books` VALUES ('115', '104', '116');
INSERT INTO `librarian_author_books` VALUES ('116', '105', '117');
INSERT INTO `librarian_author_books` VALUES ('117', '106', '118');
INSERT INTO `librarian_author_books` VALUES ('118', '109', '121');
INSERT INTO `librarian_author_books` VALUES ('119', '109', '221');
INSERT INTO `librarian_author_books` VALUES ('120', '110', '122');
INSERT INTO `librarian_author_books` VALUES ('121', '111', '123');
INSERT INTO `librarian_author_books` VALUES ('122', '112', '124');
INSERT INTO `librarian_author_books` VALUES ('123', '113', '125');
INSERT INTO `librarian_author_books` VALUES ('124', '114', '126');
INSERT INTO `librarian_author_books` VALUES ('125', '114', '146');
INSERT INTO `librarian_author_books` VALUES ('126', '115', '127');
INSERT INTO `librarian_author_books` VALUES ('127', '116', '128');
INSERT INTO `librarian_author_books` VALUES ('128', '117', '129');
INSERT INTO `librarian_author_books` VALUES ('129', '118', '130');
INSERT INTO `librarian_author_books` VALUES ('130', '119', '131');
INSERT INTO `librarian_author_books` VALUES ('131', '120', '132');
INSERT INTO `librarian_author_books` VALUES ('133', '121', '133');
INSERT INTO `librarian_author_books` VALUES ('134', '122', '134');
INSERT INTO `librarian_author_books` VALUES ('135', '123', '135');
INSERT INTO `librarian_author_books` VALUES ('136', '124', '136');
INSERT INTO `librarian_author_books` VALUES ('137', '125', '137');
INSERT INTO `librarian_author_books` VALUES ('138', '126', '138');
INSERT INTO `librarian_author_books` VALUES ('140', '127', '139');
INSERT INTO `librarian_author_books` VALUES ('141', '128', '140');
INSERT INTO `librarian_author_books` VALUES ('142', '129', '141');
INSERT INTO `librarian_author_books` VALUES ('143', '130', '142');
INSERT INTO `librarian_author_books` VALUES ('144', '131', '143');
INSERT INTO `librarian_author_books` VALUES ('145', '132', '144');
INSERT INTO `librarian_author_books` VALUES ('146', '133', '145');
INSERT INTO `librarian_author_books` VALUES ('147', '134', '147');
INSERT INTO `librarian_author_books` VALUES ('148', '135', '148');
INSERT INTO `librarian_author_books` VALUES ('149', '136', '149');
INSERT INTO `librarian_author_books` VALUES ('150', '137', '150');
INSERT INTO `librarian_author_books` VALUES ('151', '138', '151');
INSERT INTO `librarian_author_books` VALUES ('152', '139', '152');
INSERT INTO `librarian_author_books` VALUES ('153', '140', '153');
INSERT INTO `librarian_author_books` VALUES ('154', '141', '154');
INSERT INTO `librarian_author_books` VALUES ('155', '142', '155');
INSERT INTO `librarian_author_books` VALUES ('156', '143', '156');
INSERT INTO `librarian_author_books` VALUES ('157', '144', '157');
INSERT INTO `librarian_author_books` VALUES ('158', '145', '158');
INSERT INTO `librarian_author_books` VALUES ('159', '146', '159');
INSERT INTO `librarian_author_books` VALUES ('160', '147', '160');
INSERT INTO `librarian_author_books` VALUES ('161', '148', '161');
INSERT INTO `librarian_author_books` VALUES ('162', '148', '171');
INSERT INTO `librarian_author_books` VALUES ('163', '148', '175');
INSERT INTO `librarian_author_books` VALUES ('164', '148', '186');
INSERT INTO `librarian_author_books` VALUES ('165', '148', '189');
INSERT INTO `librarian_author_books` VALUES ('166', '149', '162');
INSERT INTO `librarian_author_books` VALUES ('167', '149', '165');
INSERT INTO `librarian_author_books` VALUES ('168', '149', '176');
INSERT INTO `librarian_author_books` VALUES ('169', '149', '204');
INSERT INTO `librarian_author_books` VALUES ('170', '151', '164');
INSERT INTO `librarian_author_books` VALUES ('171', '152', '166');
INSERT INTO `librarian_author_books` VALUES ('172', '152', '168');
INSERT INTO `librarian_author_books` VALUES ('173', '153', '167');
INSERT INTO `librarian_author_books` VALUES ('174', '153', '169');
INSERT INTO `librarian_author_books` VALUES ('175', '154', '170');
INSERT INTO `librarian_author_books` VALUES ('176', '155', '172');
INSERT INTO `librarian_author_books` VALUES ('177', '156', '173');
INSERT INTO `librarian_author_books` VALUES ('178', '157', '174');
INSERT INTO `librarian_author_books` VALUES ('179', '157', '202');
INSERT INTO `librarian_author_books` VALUES ('180', '158', '177');
INSERT INTO `librarian_author_books` VALUES ('181', '159', '178');
INSERT INTO `librarian_author_books` VALUES ('182', '160', '179');
INSERT INTO `librarian_author_books` VALUES ('183', '160', '201');
INSERT INTO `librarian_author_books` VALUES ('184', '160', '210');
INSERT INTO `librarian_author_books` VALUES ('185', '161', '180');
INSERT INTO `librarian_author_books` VALUES ('186', '162', '181');
INSERT INTO `librarian_author_books` VALUES ('187', '163', '182');
INSERT INTO `librarian_author_books` VALUES ('188', '163', '183');
INSERT INTO `librarian_author_books` VALUES ('189', '164', '184');
INSERT INTO `librarian_author_books` VALUES ('190', '165', '185');
INSERT INTO `librarian_author_books` VALUES ('191', '165', '213');
INSERT INTO `librarian_author_books` VALUES ('192', '166', '187');
INSERT INTO `librarian_author_books` VALUES ('193', '167', '188');
INSERT INTO `librarian_author_books` VALUES ('194', '168', '190');
INSERT INTO `librarian_author_books` VALUES ('195', '169', '191');
INSERT INTO `librarian_author_books` VALUES ('196', '170', '192');
INSERT INTO `librarian_author_books` VALUES ('197', '171', '193');
INSERT INTO `librarian_author_books` VALUES ('198', '172', '194');
INSERT INTO `librarian_author_books` VALUES ('199', '173', '195');
INSERT INTO `librarian_author_books` VALUES ('200', '174', '196');
INSERT INTO `librarian_author_books` VALUES ('201', '175', '197');
INSERT INTO `librarian_author_books` VALUES ('202', '176', '198');
INSERT INTO `librarian_author_books` VALUES ('203', '177', '199');
INSERT INTO `librarian_author_books` VALUES ('204', '178', '200');
INSERT INTO `librarian_author_books` VALUES ('205', '179', '203');
INSERT INTO `librarian_author_books` VALUES ('206', '180', '205');
INSERT INTO `librarian_author_books` VALUES ('207', '181', '206');
INSERT INTO `librarian_author_books` VALUES ('208', '182', '207');
INSERT INTO `librarian_author_books` VALUES ('209', '183', '208');
INSERT INTO `librarian_author_books` VALUES ('210', '184', '209');
INSERT INTO `librarian_author_books` VALUES ('211', '185', '211');
INSERT INTO `librarian_author_books` VALUES ('212', '186', '212');
INSERT INTO `librarian_author_books` VALUES ('213', '187', '214');
INSERT INTO `librarian_author_books` VALUES ('214', '188', '215');
INSERT INTO `librarian_author_books` VALUES ('215', '189', '216');
INSERT INTO `librarian_author_books` VALUES ('216', '190', '217');
INSERT INTO `librarian_author_books` VALUES ('217', '191', '218');
INSERT INTO `librarian_author_books` VALUES ('218', '192', '219');
INSERT INTO `librarian_author_books` VALUES ('219', '193', '220');
INSERT INTO `librarian_author_books` VALUES ('220', '194', '222');
INSERT INTO `librarian_author_books` VALUES ('221', '195', '223');
INSERT INTO `librarian_author_books` VALUES ('222', '196', '224');
INSERT INTO `librarian_author_books` VALUES ('257', '230', '2');
INSERT INTO `librarian_author_books` VALUES ('259', '231', '5');
INSERT INTO `librarian_author_books` VALUES ('261', '232', '2');
INSERT INTO `librarian_author_books` VALUES ('262', '233', '2');
INSERT INTO `librarian_author_books` VALUES ('263', '234', '2');
INSERT INTO `librarian_author_books` VALUES ('264', '235', '2');
INSERT INTO `librarian_author_books` VALUES ('265', '236', '2');
INSERT INTO `librarian_author_books` VALUES ('266', '237', '2');

-- ----------------------------
-- Table structure for librarian_books
-- ----------------------------
DROP TABLE IF EXISTS `librarian_books`;
CREATE TABLE `librarian_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_num` varchar(32) NOT NULL,
  `book_name` varchar(128) NOT NULL,
  `author` varchar(255) NOT NULL,
  `book_type` varchar(32) NOT NULL,
  `book_price` decimal(5,2) NOT NULL,
  `book_inventory` int(11) NOT NULL,
  `book_score` decimal(5,1) NOT NULL,
  `book_description` longtext NOT NULL,
  `book_sales` int(11) NOT NULL,
  `comment_nums` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `librarian_books_publisher_id_2673b405_fk_librarian_publisher_id` (`publisher_id`),
  CONSTRAINT `librarian_books_publisher_id_2673b405_fk_librarian_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `librarian_publisher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of librarian_books
-- ----------------------------
INSERT INTO `librarian_books` VALUES ('2', '485662105', '白夜行', '[日] 东野圭吾/刘姿君', '文学', '39.50', '42', '9.1', '东野圭吾万千书迷心中的无冕之王周刊文春推理小说年度BEST10第1名本格推理小说年度BEST10第2名《白夜行》是东野圭吾迄今口碑最好的长篇杰作，具备... ', '127', '364847', '2');
INSERT INTO `librarian_books` VALUES ('3', '616988688', '房思琪的初恋乐园', '林奕含', '文学', '45.00', '962', '9.2', '令人心碎却无能为力的真实故事。向死而生的文学绝唱  打动万千读者的年度华语小说。李银河 戴锦华 骆以军 张悦然 冯唐 詹宏志 蒋方舟 史航 等多位学者作... ', '473', '268068', '3');
INSERT INTO `librarian_books` VALUES ('4', '720813419', '蛤蟆先生去看心理医生', '【英】罗伯特·戴博德/陈赢', '文学', '38.00', '734', '8.5', '蛤蟆先生一向爱笑爱闹，如今却一反常态地郁郁寡欢，他一个人躲在屋里，连起床梳洗的力气都没有。朋友们非常担心他，建议他去做心理咨询。在10次心理咨询中，蛤蟆在咨... ', '648', '43185', '4');
INSERT INTO `librarian_books` VALUES ('5', '765311271', '百年孤独', '[哥伦比亚] 加西亚·马尔克斯/范晔', '文学', '39.50', '490', '9.3', '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。... ', '403', '348602', '2');
INSERT INTO `librarian_books` VALUES ('6', '772794725', '追风筝的人', '[美] 卡勒德·胡赛尼/李继宏', '文学', '29.00', '258', '8.9', '12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟... ', '125', '710549', '6');
INSERT INTO `librarian_books` VALUES ('7', '844683341', '红楼梦', '[清] 曹雪芹 著、高鹗 续', '文学', '59.70', '447', '9.6', '《红楼梦》是一部百科全书式的长篇小说。以宝黛爱情悲剧为主线，以四大家族的荣辱兴衰为背景，描绘出18世纪中国封建社会的方方面面，以及封建专制下新兴资本主义民主... ', '456', '346938', '7');
INSERT INTO `librarian_books` VALUES ('8', '802439177', '鄙视', '[意] 阿尔贝托·莫拉维亚/沈萼梅、刘锡荣', '文学', '62.00', '184', '8.1', '婚后两年，丈夫在工作、金钱和理想面前节节败退，妻子的鄙视成了对他而言最大的惩罚。他时时揣摩自己为什么被妻子鄙视，却把妻子越推越远，一桩原本幸福的婚姻即将轰然... ', '110', '1965', '8');
INSERT INTO `librarian_books` VALUES ('9', '880943677', '献给阿尔吉侬的花束', '[美] 丹尼尔·凯斯/陈澄和', '文学', '36.00', '809', '9.1', '很多人都笑我。但他们是我的朋友我们都很快乐。—以《献给阿尔吉侬的花束》原著改编，野岛伸司编剧、山下智久主演的TBS日剧于2015年春季开播—《24个... ', '300', '34117', '9');
INSERT INTO `librarian_books` VALUES ('10', '862117947', '解忧杂货店', '[日] 东野圭吾/李盈春', '文学', '39.50', '299', '8.5', '现代人内心流失的东西，这家杂货店能帮你找回——僻静的街道旁有一家杂货店，只要写下烦恼投进卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答。因男友身患绝... ', '577', '693358', '10');
INSERT INTO `librarian_books` VALUES ('11', '904691003', '小王子', '[法] 圣埃克苏佩里/马振聘', '文学', '22.00', '975', '9.0', '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行... ', '785', '652982', '7');
INSERT INTO `librarian_books` VALUES ('12', '854450147', '字母表谜案', '大山诚一郎/曹逸冰', '文学', '42.00', '969', '7.8', '☠当你隐隐觉得不对劲，致命的恶意正悄悄逼近！◮4个连接死亡的字母×4桩无人能解的谜案◮《诡计博物馆》作者、短篇推理之神大山诚一郎封神出道之作！◮令推理... ', '558', '17800', '10');
INSERT INTO `librarian_books` VALUES ('13', '926774821', '许三观卖血记', '余华', '文学', '24.00', '209', '9.0', '《许三观卖血记》是余华1995年创作的一部长篇小说。《许三观卖血记》以博大的温情描绘了磨难中的人生，以激烈的故事形式表达了人在面对厄运时求生的欲望。小说讲述... ', '735', '82452', '1');
INSERT INTO `librarian_books` VALUES ('14', '905103228', '三只忧伤的老虎', '[古巴] 吉列尔莫·卡夫雷拉·因凡特/范晔', '文学', '78.00', '285', '9.2', '本书是古巴作家因凡特的代表作，是拉美“文学爆炸”风潮中最独特、最具实验性的作品之一。这本小说没有明确的故事线，开篇的场景是50年代哈瓦那最著名的夜店，经主持... ', '785', '735', '11');
INSERT INTO `librarian_books` VALUES ('15', '866123992', '霍乱时期的爱情', '[哥伦比亚] 加西亚·马尔克斯/杨玲', '文学', '39.50', '51', '9.0', '★马尔克斯唯一正式授权，首次完整翻译★《霍乱时期的爱情》是我最好的作品，是我发自内心的创作。——加西亚•马尔克斯★这部光芒闪耀、令人心碎的作品是人类有史... ', '580', '223591', '2');
INSERT INTO `librarian_books` VALUES ('16', '932519260', '文城', '余华', '文学', '59.00', '787', '7.8', '【编辑推荐】★时隔八年，余华全新长篇重磅归来！◆人生就是自己的往事和他人的序章时代的洪流推着每个人做出各自的选择。这是一个荒蛮的年代，结束的尚未结束... ', '111', '21844', '12');
INSERT INTO `librarian_books` VALUES ('17', '909131729', '局外人', '[法] 阿尔贝·加缪/柳鸣九', '文学', '22.00', '513', '9.0', '《局外人》是法国作家加缪的成名作，同时也是存在主义文学的杰出作品之一，该书以一种客观记录式的“零度风格”，粗线条地描述了主人公默尔索在荒谬的世界中经历的种种... ', '526', '173812', '13');
INSERT INTO `librarian_books` VALUES ('18', '909466134', '云边有个小卖部', '张嘉佳', '文学', '42.00', '58', '7.5', '云边镇少年刘十三的成长故事。刘十三自幼与开小卖部的外婆相依为命，努力读书为了离开小镇，追寻远方与梦想。在城市里碰壁受挫的刘十三回到了小镇，与少时玩伴程霜重... ', '595', '53113', '14');
INSERT INTO `librarian_books` VALUES ('19', '883928882', '三体-“地球往事”三部曲之一', '刘慈欣', '文学', '23.00', '149', '8.8', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的... ', '483', '413051', '15');
INSERT INTO `librarian_books` VALUES ('20', '877745626', '生活蒙太奇', '天然', '流行', '128.00', '25', '9.0', '《生活蒙太奇》是一部充满奇妙质感的绘本作品，每天都有无数年轻人转发或评论它的精彩画面或动图。#生活蒙太奇#在全球社交媒体上有超过1345万以上的话题阅读（包... ', '555', '6140', '14');
INSERT INTO `librarian_books` VALUES ('21', '937990715', '美丽黑暗', '[法] 法比安·韦尔曼  编、[法] 凯拉斯科多  绘/陈潇', '流行', '88.00', '702', '8.8', '● “毁灭系”动画怪才大友克洋盛赞之作● 腐坏躯体下的《借东西的小人》●《爱丽丝梦游仙境》般的荒诞不经● 艾斯纳奖、哈维奖获奖作品● 圣洁与黑暗，幻... ', '137', '2178', '16');
INSERT INTO `librarian_books` VALUES ('22', '883037935', '黑睡莲', '［法］米歇尔•普西 原著、［法］弗雷德里克•杜瓦尔 改编、［法］迪迪埃•卡塞格兰 绘/章含秋', '流行', '108.00', '588', '9.0', '☆第43届法国尚贝里国际漫画节最佳漫画☆2020年艾斯纳奖最佳数字漫画、最佳画家双项提名－吉维尼—— 一个因莫奈和他的睡莲而闻名的小镇，无数人跨越大半... ', '545', '680', '17');
INSERT INTO `librarian_books` VALUES ('23', '875110233', '她们的传奇', '[法] 佩内洛普·芭桔/王晨雪', '流行', '138.00', '50', '9.4', '一部传奇女子图鉴大全：姆明之母、自闭症学者、发明wifi的女演员、变性人、女皇帝......30位自由的女性，30段率性而为的人生命运因她们的奋斗而... ', '600', '446', '19');
INSERT INTO `librarian_books` VALUES ('24', '916890865', '看你一眼就会笑', '丘汉林', '流行', '49.80', '748', '8.5', 'Buddy Gator盖朵短尾鳄 疗愈漫画！创意脑洞+可爱疗愈，每一页都能将你暖到融化！暖心小鳄鱼盖朵和他可爱的小伙伴们的疗愈故事。200页全新漫画，... ', '301', '156', '14');
INSERT INTO `librarian_books` VALUES ('25', '927325572', '旋涡 （全2册）', '[日] 伊藤润二/穆迪', '流行', '99.00', '102', '9.2', '◎伊藤润二代表作！首次简体中文版出版！◎双封+精美赠品（海报1张、书签2张、原画卡片3张），值得珍藏！◎建议18岁以上读者阅读------------... ', '146', '4084', '20');
INSERT INTO `librarian_books` VALUES ('26', '905176722', '100天后会死的鳄鱼君', '[日]菊池祐纪/毛丹青', '流行', '45.00', '708', '8.2', '2019年12月12日，日本漫画家菊池佑纪开始在推特上上传一组漫画，记录了一只鳄鱼平凡的100天生命倒计时。平淡的日常，没有任何预告的生命结束点，这只鳄鱼的... ', '375', '5525', '21');
INSERT INTO `librarian_books` VALUES ('27', '894206345', '每一天都是爱你的一天', '[美国] 莉兹·克里莫/七英俊', '流行', '49.80', '334', '8.3', '编辑推荐：1. 畅销280万册《你今天真好看》系列，新作来袭！2. 是治愈，更是无以言表的感动——没有哪一种爱，比母爱更伟大。在这次的新作中，Liz用... ', '449', '2282', '22');
INSERT INTO `librarian_books` VALUES ('28', '959907654', '鱼（全2册）', '[日] 伊藤润二/金静和', '流行', '75.00', '202', '8.2', '日本著名漫画家伊藤润二代表作一份来自深海的“馈赠”挑战读者的感官极限！探讨人与自然、反思战争与和平的先锋艺术无数人的“童年阴影”，超级经典的“伊藤... ', '63', '873', '20');
INSERT INTO `librarian_books` VALUES ('29', '924286610', '夜间巴士', '左马', '流行', '79.00', '777', '8.3', '《夜间巴士》是知名漫画家左马长篇漫画代表作。长长的列车穿过隧道进站后，一个戴眼镜的女孩下了车，在向导的指引下，她阴差阳错地搭上一辆夜间巴士，继续回乡之路。... ', '272', '156', '3');
INSERT INTO `librarian_books` VALUES ('30', '914292252', '纳闷集', '匡扶', '流行', '78.00', '168', '9.1', '后现代都市幽默，漫画市井长诗继《回答不了》后匡扶摇全新作品集，百万读者催更的原创漫画【看点推荐】●触动百万读者，创造刷屏记录的原创漫画家匡扶，最新治... ', '526', '5115', '24');
INSERT INTO `librarian_books` VALUES ('31', '956843068', '现实主义者', '[以] 阿萨夫·哈努卡/张琦', '流行', '138.00', '379', '8.7', '“我们的生活是一部讽刺喜剧。”※以色列国宝级漫画家阿萨夫•哈努卡首部自传漫画合集※《鼠族》后又一惊艳世界的犹太作者漫画，英、法、美、西班牙等多国争相引进... ', '384', '1133', '25');
INSERT INTO `librarian_books` VALUES ('32', '904298759', '你今天真好看', '[美]莉兹•克里莫/周高逸', '流行', '39.00', '872', '8.6', '《你今天真好看》是一本清新暖萌的漫画集，收录了莉兹•克里莫150多张逗趣漫画。书中集结了所有你能想到的各种萌物，恐龙、棕熊、兔子、企鹅，甚至还有伞蜥、獾、土... ', '485', '76551', '27');
INSERT INTO `librarian_books` VALUES ('33', '886698275', '镖人', '许先哲', '经管', '39.90', '549', '8.3', '◆轰动日本的中国漫画！3次登上日本央视NHK电视台新闻报道节目，被日本媒体誉为“世界级水平的中国动漫精品”！◆征服日本资深漫画编辑！双叶社（代表作《蜡笔小... ', '322', '13334', '3');
INSERT INTO `librarian_books` VALUES ('34', '887943832', '森林大帝', '[日] 手冢治虫/谢鹰', '经管', '178.00', '664', '8.7', '“漫画之神”手冢治虫光辉代表作、启蒙一代读者的传奇漫画初次完整引进！动物漫画的金字塔，以三代狮王冒险与传承的故事为主轴讲述波澜壮阔、奇妙梦幻的森林物语... ', '326', '103', '29');
INSERT INTO `librarian_books` VALUES ('35', '880139287', '伊藤润二短篇精选集', '[日] 伊藤润二/金静和', '经管', '98.00', '872', '8.8', '★内容介绍共收录10篇短篇，包括人气很高且难得一见的《亿万个孤独者》及《阿弥壳断层之怪》。-------------------------------... ', '129', '1979', '20');
INSERT INTO `librarian_books` VALUES ('36', '967620736', '忍不住想打扰你-bibi动物园系列作品01', 'bibi园长', '经管', '49.00', '873', '8.4', '随手一翻，嘴角一弯。其实最珍贵的爱，就藏在很小很小的事情里。◇ 超人气原创治愈小漫画“bibi动物园”首次结集成书！◇ 家人无声的陪伴、朋友朦胧的好... ', '286', '219', '2');
INSERT INTO `librarian_books` VALUES ('37', '954547806', '灯塔', '[法] 克里斯多夫·夏布特/吕俊君', '经管', '128.00', '934', '9.1', '若未知的世界让人心生恐惧，我们是自我封闭，还是勇敢走出去？欧洲著名漫画诗人夏布特最敏感忧伤的“慢镜头图像小说”讲述人类心底无法承受的孤独和渴望拥有的... ', '789', '10762', '3');
INSERT INTO `librarian_books` VALUES ('38', '926189171', '塔希里亚故事集', '吴淼', '经管', '26.00', '643', '9.4', '在这个被虚构出来的、气势磅礴的塔然里亚世界中，生存着一群智慧的强者；法师、巨龙、精灵、矮人……他们生存着、战斗着、恋爱着、思考着……生的意义何在？死后去向... ', '210', '4639', '21');
INSERT INTO `librarian_books` VALUES ('39', '907570830', '芬兰人的噩梦-另类芬兰社交指南', '[芬]卡罗利娜·科尔霍宁/李浚帆', '经管', '39.00', '345', '7.2', '★此书通往社恐患者俱乐部。★Facebook超人气漫画集，讲述一个社恐患者的各种内心戏。★也许，你也是一个“芬兰人”。【本书看点】① Faceboo... ', '578', '10549', '9');
INSERT INTO `librarian_books` VALUES ('40', '931433236', '非平面', '[美] 尼克·索萨尼斯/严安若', '经管', '60.00', '837', '8.3', '哥伦比亚大学首部漫画形式的博士论文包揽多项国际大奖的天才奇书一部人人都能读懂的学术著作一次视觉思维的实验，探究人类构建知识体系的方式一场对固化观点的... ', '575', '4968', '1');
INSERT INTO `librarian_books` VALUES ('41', '915378934', '我可以咬一口吗', '[美] 莉兹·克里莫/周高逸', '经管', '39.00', '816', '8.7', '《我可以咬一口吗》是美国漫画家莉兹•克里莫继《你今天真好看》之后的又一本清新暖萌的漫画集，收录了莉兹•克里莫一百多张逗趣漫画。书中集结了所有你能想到的各种萌... ', '430', '25323', '4');
INSERT INTO `librarian_books` VALUES ('42', '956433683', '梦晕', '[日]藤本理/烨伊', '流行', '88.00', '109', '9.3', '《梦晕》藤本理人生最后一部心血长篇我知道自己在做梦，但是我醒不过来。●一场接着一场“清醒梦”兔子在海上漂流，是松鼠的梦；松鼠在沙漠迷路，是貘的梦；貘... ', '337', '512', '20');
INSERT INTO `librarian_books` VALUES ('43', '904060903', '无敌救星', '[法] 帕斯卡尔·茹瑟兰/王大莹', '流行', '84.00', '272', '9.2', '笑傲漫画界的零败绩超人来了！名副其实的漫画超英，穿梭画格大战恶徒，二维漫画无敌之作令人捧腹又拍手称奇的超级英雄日常利用分镜穿越时空，非漫画不能成的另类... ', '163', '83', '34');
INSERT INTO `librarian_books` VALUES ('44', '945522995', '我是漫画家', '[日] 手冢治虫/晓瑶', '流行', '74.00', '879', '8.6', '从自暴自弃的少年到日漫之神，“日本漫画之父”手冢治虫亲笔自传记录漫画巨匠充满挫折与光荣的前半生，他是日本漫画黄金时代的活化石大师畅谈漫画学，经典作品《铁... ', '364', '109', '33');
INSERT INTO `librarian_books` VALUES ('45', '932459806', '海贼王-ONE PIECE', '尾田荣一郎/董科', '流行', '7.50', '354', '9.5', '路飞所生长的小村庄里曾经是一群以「红发香克斯」为首的海盗们的暂居地，而幼年路飞一直希望可以成为他们的一员，可在一次意外的情况下，他吃了一种叫做「橡皮果实」的... ', '742', '40549', '35');
INSERT INTO `librarian_books` VALUES ('46', '891862698', '半小时漫画中国史（修订版）', '二混子', '流行', '39.90', '452', '7.5', '看半小时漫画，通三千年历史，脉络无比清晰，看完就能倒背。仅仅通过手绘和段子，二混子就捋出清晰的历史大脉络：春秋战国像个班级、大秦过把瘾就死、三国就三大战役... ', '96', '22873', '8');
INSERT INTO `librarian_books` VALUES ('47', '973111343', '建筑师', '(美) 大卫·马祖凯利/艾琦', '流行', '198.00', '139', '9.1', '如果人生是一张建筑图纸属于你的那栋房屋会是什么模样？哈维奖、艾斯纳奖、洛杉矶时报图像小说获奖作品融叙事象征主义，色彩和视觉隐喻于一体的史诗级作品大火... ', '144', '4969', '3');
INSERT INTO `librarian_books` VALUES ('48', '886690153', '半小时漫画世界史-其实是一本严谨的极简世界史', '陈磊（笔名：二混子）', '流行', '39.90', '758', '7.5', '看半小时漫画，通五千年历史，脉络无比清晰，看完就能倒背。仅仅通过手绘和段子，二混子就捋出清晰的历史大脉络：简到崩溃的极简欧洲史、美国往  事三部曲、一口气... ', '155', '15971', '8');
INSERT INTO `librarian_books` VALUES ('49', '970912062', '海归线', '[日]今 敏/霍秀仪', '流行', '38.00', '691', '7.9', '《海归线》今 敏人生中第一部长篇漫画开发中的游览胜地网手町有一个古老的海祭仪式——保管“人鱼之卵”，每隔六十年将其归还大海。但这个协定将遭破坏，开发商想... ', '572', '530', '20');
INSERT INTO `librarian_books` VALUES ('50', '887830810', '家族往事', '[俄] 亚历山德拉·利特维娜 文、[俄] 阿尼娅·杰斯尼茨卡娅 绘/叶晓奕', '流行', '88.00', '298', '8.7', '世界门槛最高插图奖BIB作品第一部当代绘本版《战争与和平》20世纪俄罗斯“历史百科全书”及“生活博物馆”1 栋老房子、5 代人、80位家庭成员、10... ', '460', '152', '38');
INSERT INTO `librarian_books` VALUES ('51', '945073540', '方向', '[法] 马克-安托万·马修/后浪漫（编译）', '流行', '99.80', '351', '8.7', '欧洲艺术漫画奇才马修全新烧脑神作图像小说内容和形式上的双重突破智力与想象力的乐趣背后，是深刻的哲学探讨...................※编辑推... ', '672', '4948', '3');
INSERT INTO `librarian_books` VALUES ('52', '974458463', '丁香医生人体调查组', '丁香医生', '流行', '79.00', '474', '6.8', '本书是一部有趣味、有温度、有态度的人体健康科普。该书为丁香医生内容团队开发的与身体有关的漫画科普栏目，共分为30个健康主题,以轻松幽默的形式解答了生活中常见... ', '541', '254', '40');
INSERT INTO `librarian_books` VALUES ('53', '939296487', '3秒', '[法] 马克-安托万·马修/后浪漫', '流行', '72.00', '220', '8.8', '72页的“一镜到底”33块镜面构成的博尔赫斯迷宫一场波谲云诡的假球风云一桩需要读者亲自参与推理侦破的案件◎ 编辑推荐☆ 3秒钟：一束光走完90万... ', '553', '6278', '41');
INSERT INTO `librarian_books` VALUES ('54', '921681649', '雪山、青春与我', '[法]让-马克·罗切特、[法]奥利维埃·巴奎特/方圆平', '流行', '108.00', '448', '8.4', '《雪山、青春与我》是让-马克·罗切特的自传式图像小说，他以自身经历为背景，描绘了一位山间少年跌宕起伏的人生之旅。少年罗切特从小与母亲相依为命，一次山间徒步... ', '404', '79', '17');
INSERT INTO `librarian_books` VALUES ('55', '894903608', '回答不了', '匡扶', '流行', '59.00', '479', '8.4', '每个深夜，睡前你想到的最后一个念头是什么？在漫长的日复一日里，你是否觉得生活挺没劲的，但在某个瞬间又生机勃勃、斗志昂扬起来？爱情、工作和生活日常，是在哪... ', '140', '16429', '42');
INSERT INTO `librarian_books` VALUES ('56', '895665419', '一根棒', '[日] 高野文子/王大明', '流行', '48.00', '606', '8.4', '《一根棒》高野文子人生第三部短篇漫画集，你我平凡的人生，也是奇想天外的开始。●从鬼马的书名入手《一根棒》的书名，取自日本图画歌谣《可爱的厨师》第一句歌... ', '392', '261', '20');
INSERT INTO `librarian_books` VALUES ('57', '915145867', '父与子-世界连环画漫画经典大系', '[德] 埃·奥·卜劳恩 作、洪佩奇 编', '流行', '12.00', '774', '9.4', '《父与子全集》是德国幽默大师埃·奥·卜劳恩的不朽杰作。作品中一个个生动幽默的小故事都是来自于漫画家在生活中的真实感受，《父与子》实际上是卜劳恩与儿子克里斯蒂... ', '726', '6191', '5');
INSERT INTO `librarian_books` VALUES ('58', '959116928', '就喜欢你看不惯我又干不掉我的样子', '白茶', '流行', '46.00', '291', '7.6', '本书为白茶的首部绘本作品，讲述一只叫“吾皇”的胖猫、一只叫“巴扎黑”的萌狗以及少年主人的生活趣事。故事幽默暖心，文字风趣有爱，画风兼具插画及国画之美，可品读... ', '624', '9047', '44');
INSERT INTO `librarian_books` VALUES ('59', '909401544', '满是空虚之物', '[日]阿伏伽德六/黄文娟', '流行', '39.60', '748', '7.9', '日本新锐天才影像作家阿伏伽德六（アボガド６）首部短篇漫画集。不可思议的设定，意料之外的展开，交错重叠的时间线里，我们的生活如此脆弱，如此疯狂，又如此需要珍惜... ', '469', '936', '17');
INSERT INTO `librarian_books` VALUES ('60', '928387483', '半小时漫画经济学-生活常识篇', '陈磊、半小时漫画团队', '流行', '49.90', '903', '6.7', '在大多数读者的心目中，经济学都是专业、晦涩的代名词，但陈磊（笔名：二混子）领衔的半小时漫画团队，却通过手绘漫画和段子，深入浅出地将经济学与我们在现实生活中安... ', '550', '7849', '47');
INSERT INTO `librarian_books` VALUES ('61', '919765094', '一见你就好心情', '莉兹·克里莫/周高逸', '流行', '49.00', '573', '7.7', '畅销200万册漫画《你今天真好看》《我可以咬一口吗》作者莉兹·克里莫全新作品。收录了莉兹•克里莫130多张超减压治愈漫画，新增许多蠢萌小动物，带来更多机智... ', '771', '8509', '4');
INSERT INTO `librarian_books` VALUES ('62', '926498507', '摄影师', '[法] 埃曼努埃尔·吉贝尔、[法]迪迪埃·勒费伍尔(摄/口述)、[法]弗雷德里克·勒梅西埃(绘)/余轶', '流行', '188.00', '906', '9.2', '一场封存了20年的人道之旅与战时回忆还原给你一个真实的阿富汗首部摄影与漫画结合的纪实文学为你讲述那被遗忘的民族与历史摄影与漫画史无前例的艺术结合回... ', '470', '967', '3');
INSERT INTO `librarian_books` VALUES ('63', '933591497', '散步去', '[日] 谷口治郎/伍楚', '流行', '88.00', '89', '8.5', '中年男士和家人搬到小镇上，开始了散步的日子。行走过如同睡去的街区，攀爬过微缩的富士山景，观察富有生趣的动物，欣赏不期而至的风景。散步中，不同的人们交会了，不... ', '333', '6247', '3');
INSERT INTO `librarian_books` VALUES ('64', '920753712', '缅甸小日子', '[加]盖·德利斯勒/王大莹', '流行', '62.00', '158', '8.6', '※安古兰漫画大奖得主的另类报告书※翻译成十多种语言的纸上纪录片※独一无二的缅甸纪实漫画※非浮光掠影式的深度旅行手账※一个神秘国度的荒诞与日常※漫画... ', '247', '1374', '29');
INSERT INTO `librarian_books` VALUES ('65', '968293201', '向左走·向右走', '幾米', '流行', '16.00', '984', '8.4', '“她习惯向左走，他习惯向右走，他们始终不曾相遇。”《向左走·向右走》是几米首次表现男女感情的长篇图文创作。男女主角彼此在生活中的巧妙关系，构成了整个故事的设... ', '290', '104806', '49');
INSERT INTO `librarian_books` VALUES ('66', '980697915', '赛博朋克2077：创伤小组', '[美] 卡伦·邦恩、[西] 米格尔·巴尔德拉马/NaZgul', '流行', '88.00', '217', '8.2', '风靡全球千万级销量游戏巨作《赛博朋克2077》《黑客帝国》主角基努·里维斯领衔参演、著名游戏制作人小岛秀夫友情客串官方剧情漫画《赛博朋克2077：创伤小... ', '274', '94', '50');
INSERT INTO `librarian_books` VALUES ('67', '916328212', '巨大的拥抱', '[日]物久保/赵婉宁', '流行', '88.00', '193', '8.1', '温暖柔软的巨大化动物，给人无比安心的感觉。埋进毛茸茸萌物里，苦恼就会慢慢消散。★火遍微博、朋友圈的「巨大化动物」系列重磅来袭！日本人气插画师もの久保笔下... ', '739', '2417', '3');
INSERT INTO `librarian_books` VALUES ('68', '913275651', '半小时漫画中国史3', '陈磊', '流行', '39.90', '524', '7.5', '看半小时漫画，通三千年历史，用漫画解读历史，开启读史新潮流（《半小时漫画中国史3》是《半小时漫画中国史》系列书的第3部）。仅仅通过手绘和段子，陈磊（二混子... ', '298', '8204', '47');
INSERT INTO `librarian_books` VALUES ('69', '920511837', '半小时漫画中国史5', '陈磊', '流行', '49.90', '384', '7.5', '看半小时漫画，通五千年历史，用漫画解读历史，开启读史新潮流。仅仅通过手绘和段子，陈磊（混子哥）就捋出了明清历史大脉络：明朝皇帝大多逃不开三件事——跟外敌斗... ', '659', '1768', '51');
INSERT INTO `librarian_books` VALUES ('70', '901889836', '柔软的刺猬：自我疗愈的内在力量', '[美]凯特·艾伦（ Kate Allan ）/李晓燕', '经管', '59.80', '195', '8.3', '《柔软的刺猬》是一本能带给你无限勇气和治愈力量并且能够有效减轻压力的超暖心绘本。作者从自己曾罹患抑郁症的亲身经历为背景，在每个章节中分别以自己与每个现代人都... ', '671', '455', '53');
INSERT INTO `librarian_books` VALUES ('71', '895774494', '半小时漫画中国史2', '陈磊', '经管', '39.90', '227', '7.4', '看半小时漫画，通五千年历史，用漫画解读历史，引领阅读新潮流（《半小时漫画中国史》是《半小时漫画中国史》系列书的第2部）。仅仅通过手绘和段子，二混子就捋出清... ', '303', '10758', '47');
INSERT INTO `librarian_books` VALUES ('72', '928947848', '刺客列传', '郑问', '经管', '128.00', '244', '8.7', '当之无愧的国漫宗师 水墨神技震撼日本漫坛郑问成名作 简体中文版正式引进司马迁《史记》忠实而石破天惊的改编春秋战国那些慷慨悲歌的血性弹剑而行的潇洒曹... ', '362', '1362', '29');
INSERT INTO `librarian_books` VALUES ('73', '917246619', '画的秘密', '[法] 马克-安托万·马修/贾梦', '经管', '60.00', '788', '8.6', '荣获瑞士谢尔漫画节最佳作品奖欧洲漫画界最具实验性的概念型奇才、两届安古兰国际漫画节奖项得主马克-安托万·马修情感悬疑之作堪比卡夫卡的诡异荒诞，兼具大卫·... ', '451', '3852', '3');
INSERT INTO `librarian_books` VALUES ('74', '922964144', '半小时漫画世界史2', '陈磊·半小时漫画团队', '经管', '49.90', '131', '8.0', '◆《半小时漫画世界史》续篇！全网2000万粉丝漫画式科普开创者混子哥新作！◆四大文明古国组团出道，为啥只剩中国屹立不倒？◆看半小时漫画，通世界各国历史。... ', '408', '362', '54');
INSERT INTO `librarian_books` VALUES ('75', '898178925', '三毛流浪记', '作者：张乐平原著  上海美术电影制片厂摄制', '流行', '48.00', '487', '8.4', '“中国漫画大师”张乐平任动画电影造型设计；《三毛流浪记》高清动画版首次与读者见面，中国唯一高科技数字原图制作，一个笑中带泪的流浪故事，一部让所有善良人共鸣的... ', '245', '328', '55');
INSERT INTO `librarian_books` VALUES ('76', '966134012', '我的生活不可能那么坏', '[日] Keigo（河尻圭吾）', '流行', '49.80', '338', '8.3', '这是一本来自霓虹国的脑洞、脱力、解压漫画集。燃爆！激战！厉害啊！超人气！……这样的人生跟我好像没什么关系。你也许正在经历或曾经经历这样的生活，被闹钟吵... ', '503', '6668', '27');
INSERT INTO `librarian_books` VALUES ('77', '942640227', '朋友们', '[日] 高野文子/王大明', '流行', '48.00', '863', '7.5', '《朋友们》高野文子人生第二部短篇漫画集，讲述少女们的疏离与相惜。●友情不知从哪时发芽在想要靠近一个人时，我们努力又小心翼翼的模样是那么相似。随着成长... ', '577', '222', '20');
INSERT INTO `librarian_books` VALUES ('78', '963463200', '银河铁道之夜', '(日) 增村博 编绘、(日) 宫泽贤治 原著/周龙梅', '流行', '68.00', '940', '8.7', '只要发生在去往理想的道路上的，不论艰难还是容易，都是通向真正幸福的过程。漫画名家×文学巨匠以猫的形象演绎跨越生死的经典童话。漫画中文简体版首次引进，... ', '112', '2997', '41');
INSERT INTO `librarian_books` VALUES ('79', '968570854', '万物的尺度：看得见的单位', '[日] 丸山一彦/浪花朵朵', '流行', '72.00', '651', '9.3', '用照片和图画让“单位”看得见，让近80种单位带来具体的感受。单位是如何定义和命名的，节、马赫、加仑、桶、磅这些单位有什么方便？理解似懂非懂的单位，提高对... ', '589', '93', '56');
INSERT INTO `librarian_books` VALUES ('80', '978151691', '半小时漫画唐诗', '陈磊·半小时漫画团队', '流行', '49.90', '782', '7.2', '读懂唐诗，从唐诗背后的故事开始。通过手绘漫画和段子，陈磊（笔名：二混子）领衔的半小时漫画团队带我们重新读懂了那些从小背到大的唐诗：李白喊出“安能摧眉折腰事... ', '667', '6054', '57');
INSERT INTO `librarian_books` VALUES ('81', '962562975', '趣说中国史', '趣哥', '流行', '49.80', '556', '6.9', '本书用群聊方式将中国史上的422位皇帝置入一个空间中，从朝代更替、货币、国库盈亏、文学、艺术、政绩等13个主题展开讨论，借由群中帝王对话的形式呈现出中国各个... ', '483', '300', '58');
INSERT INTO `librarian_books` VALUES ('82', '990226845', '谁都可以画漫画！手冢治虫大师班', '[日] 手冢治虫/甘卉', '流行', '45.00', '722', '8.9', '※ “画漫画只需要一支笔一张纸，然后开始画就好。”※ 为爱随手涂画的人而写的“专业书”※ 漫画之神手冢治虫亲自授业！※ 直指漫画的究极内核◎编辑推荐... ', '310', '250', '33');
INSERT INTO `librarian_books` VALUES ('83', '901490571', '蓝色小药丸', '[瑞士] 弗雷德里克·佩特斯/陈帅、易立', '流行', '45.00', '880', '8.8', '假如有一天，与HIV携带者相爱作者亲身经历改编，13个国家出版重启人生，爱是唯一的救赎....................※编辑推荐※你为什么... ', '693', '5612', '3');
INSERT INTO `librarian_books` VALUES ('84', '931084155', '怪奇事物所', '怪奇事物所所长', '流行', '58.00', '508', '6.8', '你知道“学校”的原意是休闲时间吗？你知道跑步机最初是用来惩罚犯人的吗？你知道脂肪最长可活25年吗？你知道金鱼的记忆力好得惊人，鸳鸯根本不专情，猪比大多数人还... ', '115', '2458', '59');
INSERT INTO `librarian_books` VALUES ('85', '989876019', '吉尔伽美什', '[德] 延斯·哈德/素言', '流行', '82.00', '530', '8.8', '根据历史上初次记载的英雄史诗改编王者之争，刺杀雪松林恶兽，与天牛的激斗因惧怕死亡而追寻永生，死亡大海彼岸的长生灵药能否将半神之躯重塑为真正的神？乌鲁... ', '563', '113', '60');
INSERT INTO `librarian_books` VALUES ('86', '989437998', '我在伊朗长大', '玛赞·莎塔碧', '流行', '39.00', '602', '9.4', '伊朗，一个遥远而神秘的国度。长期以来人们谈起她总是将之与原教旨主义、狂热主义和恐怖主义联系在一起。作者认为事实并非如此。作者出身豪门，以当年伊朗的“伊斯兰革... ', '634', '6443', '62');
INSERT INTO `librarian_books` VALUES ('87', '972712776', '守望者-完全版', '[英] 阿兰·摩尔、[英] 戴夫·吉本斯 绘/王周凌、PatientPatient 校译', '流行', '198.00', '737', '9.7', '《守望者》不论在漫画界与主流媒体都备受赞誉，被视为漫画中的经典作品。《守望者》是美国《时代周刊》2005年评选出的“1923年至今百部zui佳英文小说”之一... ', '691', '553', '63');
INSERT INTO `librarian_books` VALUES ('88', '976935812', '波丽娜', '[法] 巴斯蒂安·维韦斯/张鑫佳', '流行', '99.80', '734', '8.8', '在人生的岔路口，面对重重的挫折和迷茫，怀揣最初梦想的我们该如何抉择？法国2012年度漫画评论大奖作品，带给你关于跳舞、关于成长、关于抉择的心灵触动。..... ', '386', '2585', '3');
INSERT INTO `librarian_books` VALUES ('89', '902173419', '万般滋味，都是生活：丰子恺散文漫画精选集', '丰子恺', '流行', '42.00', '583', '8.8', '愿你永葆童真，并乐此不疲，去生活一个人，在面对变化莫测的世界时，怀揣的不是无处可逃的感慨，而是“不如喜悦、不如清心、不如释然”的心态，以一颗童心过生活，这... ', '176', '2513', '64');
INSERT INTO `librarian_books` VALUES ('90', '978243867', '刺客信条 -王朝 卷一-花都刺客', '许先哲、张肖', '流行', '49.00', '416', '8.4', '唐天宝十三载春，一年一度的花卉盛宴。一名刺客现身长安，在暗流涌动、错综复杂的朝廷纷争中，只为求一个公道。此时，节度使安禄山应召面见玄宗，虽然备受宠信，却与右... ', '672', '127', '65');
INSERT INTO `librarian_books` VALUES ('91', '922736151', '布上尉与莫教授历险记-法老的宝藏', '[比] 埃德加·P.雅各布斯/倪小淆', '流行', '68.00', '977', '7.2', '欧漫常青树，第九艺术开疆扩土的先锋与《丁丁历险记》同分比利时漫画的天下根据莎草纸文献的指引探寻胡夫金字塔下的法老密室正邪大对垒、一波三折的文物保卫战... ', '643', '36', '29');
INSERT INTO `librarian_books` VALUES ('92', '932676683', '梦的化石-今敏全短篇', '今敏/焦阳', '流行', '108.00', '820', '7.8', '本书是今敏漫画故事短篇全集，收录今敏从1984年至1989年间创作的漫画，除了与大友克洋合著的《国际恐怖公寓》，他所有的短篇都收录其中。1984年，今敏发... ', '602', '3888', '3');
INSERT INTO `librarian_books` VALUES ('93', '893101453', '一个人住的每一天', '（日）高木直子/顾峰峰、书中缘、书锦缘', '流行', '25.00', '691', '8.6', '日本绘本天后高木直子最新力作！《尽情享受一个人的生活！》人气连载，集结成书，海量照片独家公开！直子曾经男友首度曝光。直子居然也交过男朋友？？！面对比自己... ', '505', '10200', '66');
INSERT INTO `librarian_books` VALUES ('94', '949639191', '人类简史-从动物到上帝', '[以色列] 尤瓦尔·赫拉利/林俊宏', '文化', '68.00', '768', '9.1', '十万年前，地球上至少有六种不同的人但今日，世界舞台为什么只剩下了我们自己？从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，从雪维洞穴壁上的原始... ', '660', '160161', '65');
INSERT INTO `librarian_books` VALUES ('95', '990607017', '奶酪与蛆虫-一个16世纪磨坊主的宇宙', '[意]卡洛·金茨堡/鲁伊', '文化', '75.00', '196', '8.2', '多梅尼科•斯坎代拉，一位普通的磨坊主，生活于16世纪意大利东北的弗留利地区。他能读会写，读过《十日谈》、意大利本国语言版《圣经》和曼德维尔游记之类的书，也能... ', '712', '1073', '67');
INSERT INTO `librarian_books` VALUES ('96', '981408711', '无规则游戏-阿富汗屡被中断的历史', '[美] 塔米姆·安萨利/钟鹰翔', '文化', '79.00', '912', '8.5', '塔米姆·安萨利是一位阿富汗裔美国人，他出生和成长在喀布尔，于1964年移居美国，兼有阿富汗和美国两国血统。他讲述的阿富汗故事饱含对故国家园的深切关怀，从局内... ', '554', '2226', '68');
INSERT INTO `librarian_books` VALUES ('97', '894446162', '中国历代政治得失', '钱穆', '文化', '12.00', '653', '9.2', '《中国历代政治得失》为作者的专题演讲合集，分别就中国汉、唐、宋、明、清五代的政府组织、百官职权、考试监察、财经赋税、兵役义务等种种政治制度作了提要勾玄的概观... ', '229', '53440', '69');
INSERT INTO `librarian_books` VALUES ('98', '932884217', '秦制两千年-封建帝王的权力规则', '谌旭彬', '文化', '88.00', '934', '8.6', '百代都行秦政制。——毛泽东中国两千多年的制度，犹秦制也。——梁启超中国社会自周朝之后就长期实行秦制。正是由于中国社会的此一政治传统延续了大约有两千年之久... ', '508', '1068', '68');
INSERT INTO `librarian_books` VALUES ('99', '919278720', '明朝那些事儿（1-9）-限量版', '当年明月', '文化', '358.20', '329', '9.1', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人... ', '769', '121842', '70');
INSERT INTO `librarian_books` VALUES ('100', '926034507', '万历十五年', '[美] 黄仁宇', '文化', '18.00', '705', '8.9', '万历十五年，亦即公元1587年，在西欧历史上为西班牙舰队全部出动征英的前一年；而在中国，这平平淡淡的一年中，发生了若干为历史学家所易于忽视的事件。这些事件，... ', '687', '166415', '71');
INSERT INTO `librarian_books` VALUES ('101', '929423325', '邓小平时代', '[美] 傅高义', '文化', '88.00', '982', '9.2', '邓小平深刻影响了中国历史和世界历史的走向，也改变了每一当代中国人的命运。解读邓小平的政治生涯及其行为逻辑，就是解读当代中国，解读个人命运背后的历史变局。哈... ', '174', '41024', '62');
INSERT INTO `librarian_books` VALUES ('102', '931458706', '秋园', '杨本芬', '文化', '38.00', '886', '8.9', '听八旬奶奶讲述她和妈妈的故事。1914年，世上有了“秋园”这个人。1918年，汉语有了“她”这个字。秋园，她来过，挣扎过，绝望过，幸福过。今天，她80岁的... ', '772', '15995', '3');
INSERT INTO `librarian_books` VALUES ('103', '948212467', '红星照耀中国', '[美] 埃德加·斯诺埃/董乐山', '文化', '43.00', '915', '9.1', '《红星照耀中国》（曾译《西行漫记》）自1937年初版以来，畅销至今，而董乐山译本已经是今天了解中国工农红军的经典读本。本书真实记录了斯诺自1936年6月至1... ', '701', '10565', '7');
INSERT INTO `librarian_books` VALUES ('104', '941888704', '叫魂-1768年中国妖术大恐慌', '[美] 孔飞力', '文化', '38.00', '545', '9.2', '本书讲述的是一个关于“盛世妖术”的故事。在中国的千年帝制时代，乾隆皇帝可谓是空前绝后的一人。他建立并巩固起来的大清帝国达到了权力与威望的顶端。然而整个大清的... ', '452', '7615', '72');
INSERT INTO `librarian_books` VALUES ('105', '911561009', '枪炮、病菌与钢铁-人类社会的命运', '[美] 贾雷德·戴蒙德/谢延光', '文化', '45.00', '428', '8.7', '为什么是欧亚大陆人征服、赶走或大批杀死印第安人、澳大利亚人和非洲人，而不是相反？为什么么小麦和玉米、牛和猪以及现代世界的其他一些“不了起的”作物和牲畜出现在... ', '452', '40046', '73');
INSERT INTO `librarian_books` VALUES ('106', '966955895', '南京大屠杀-第二次世界大战中被遗忘的大浩劫', '[美] 张纯如/谭春霞、焦国林', '文化', '49.00', '133', '9.5', '张纯如版《南京大屠杀》，一部令国人流泪的书，所有的中国人都要看的书！★★★★★编辑推荐：中信版《南京大屠杀》的独特价值1. 《南京大屠杀：第二次世... ', '417', '7261', '65');
INSERT INTO `librarian_books` VALUES ('107', '902691502', '第三帝国的到来-第三帝国三部曲01', '[英] 理查德·J. 埃文斯/赖丽薇', '文化', '145.00', '646', '9.4', '德国在一战前曾是欧洲最富裕、最强大的经济体，反犹主义在政治中明显处于边缘地位。然而，起初只是一群极端分子和恶棍的纳粹党人，在数年之中就把德国变成了一党独裁的... ', '398', '2180', '74');
INSERT INTO `librarian_books` VALUES ('108', '972518542', '巨人的陨落-世纪三部曲', '[英] 肯·福莱特/于大卫', '经管', '129.80', '586', '8.9', '在第一次世界大战的硝烟中，每一个迈向死亡的生命都在热烈地生长——威尔士的矿工少年、刚失恋的美国法律系大学生、穷困潦倒的俄国兄弟、富有英俊的英格兰伯爵，以及痴... ', '682', '75075', '8');
INSERT INTO `librarian_books` VALUES ('109', '968349975', '东晋门阀政治', '田余庆', '经管', '49.00', '880', '9.5', '本书以丰富的史料和周密的考证分析，对中国中古历史中的门阀政治问题作了再探索，认为中外学者习称的魏晋南北朝门阀政治，实际上只存在于东晋一朝；门阀政治是皇权政治... ', '764', '6520', '75');
INSERT INTO `librarian_books` VALUES ('110', '935539573', '伊朗四千年', '[伊朗]霍昌·纳哈万迪、[法]伊夫·博马提/安宁', '经管', '98.00', '579', '8.3', '★四千年的历史，一把理解伊朗的钥匙。★连通东西方的“十字路口”，各大文明交织碰撞的熔炉。★一个充满矛盾的地域，一个尚未被世界理解的历史大国。★它背后的... ', '550', '95', '14');
INSERT INTO `librarian_books` VALUES ('111', '957330689', '人类简史-从动物到上帝', '[以] 尤瓦尔·赫拉利/林俊宏', '经管', '68.00', '427', '9.1', '【内容简介】十万年前，地球上至少有六种不同的人，但今日，世界舞台为什么只剩下我们自己？从只能啃食虎狼吃剩残骨的猿人，到跃居食物链顶端的智人，从雪维洞... ', '507', '26957', '76');
INSERT INTO `librarian_books` VALUES ('112', '926372006', '全球通史-从史前史到21世纪', '(美) 斯塔夫里阿诺斯/吴象婴、梁赤民、董书慧、王昶', '经管', '168.00', '182', '9.1', '《全球通史》由斯塔夫里阿诺斯著，吴象婴、梁赤民、董书慧、王昶译，作者在本书中采用全新的史学观点和方法，将整个世界看作一个不可分割的有机的统一体，从全球的角度... ', '587', '16818', '75');
INSERT INTO `librarian_books` VALUES ('113', '977034912', '毛泽东选集 第一卷', '毛泽东', '经管', '40.00', '350', '9.4', '《毛泽东选集》第一卷包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂乱，... ', '157', '15430', '77');
INSERT INTO `librarian_books` VALUES ('114', '919200478', '下沉年代', '[美] 乔治·帕克 (George Packer)/刘冉', '经管', '108.00', '164', '8.7', '阅读《下沉年代》，如同坐在第一排观看美国梦的午夜葬礼“这是一个时代苍凉的侧影：受挫的努力，被辜负的信任，凋零的生机，以及日渐黯淡的希望。力透纸背的书写，栩... ', '255', '2602', '51');
INSERT INTO `librarian_books` VALUES ('115', '928476656', '最寒冷的冬天-美国人眼中的朝鲜战争', '[美] 大卫·哈伯斯塔姆/王祖宁、刘寅龙', '经管', '88.00', '358', '8.2', '朝鲜战争类图书畅销No.1，美国新任国家安全顾问 精选阅读沈志华、杨奎松、冯仑、高晓松、梁文道  郑重推荐★  美国知识界对朝鲜战争最深刻的思考。朝鲜战... ', '625', '1681', '78');
INSERT INTO `librarian_books` VALUES ('116', '974787884', '祥瑞-王莽和他的时代', '张向荣', '经管', '79.80', '499', '8.7', '★上追尧舜，禅让称帝，王莽究竟是民选的圣主，还是篡汉的罪人？★新锐文史作家、网红书评人张向荣首部历史非虚构作品★罗新、刘勃、陆大鹏力荐★搁置定论，厘清... ', '162', '214', '6');
INSERT INTO `librarian_books` VALUES ('117', '932397103', '三国演义（全二册）', '[明] 罗贯中', '经管', '39.50', '333', '9.3', '《三国演义》又名《三国志演义》、《三国志通俗演义》，是我国小说史上最著名最杰出的长篇章回体历史小说。 《三国演义》的作者是元末明初人罗贯中，由毛纶，毛宗岗父... ', '459', '140881', '7');
INSERT INTO `librarian_books` VALUES ('118', '960583467', '中世纪之美', '[意] 翁贝托·艾柯/刘慧宁', '经管', '168.00', '606', '9.1', '本书是艾柯论述中世纪美学理论、审美体验和艺术实践的作品。中世纪之美在艾柯笔下呈现出自成一体的活力，它继承了古希腊和古罗马的传统，在教条的思想环境中悄然演变，... ', '322', '143', '5');
INSERT INTO `librarian_books` VALUES ('119', '940840445', '明朝那些事儿', '当年明月', '经管', '208.60', '658', '9.2', '《明朝那些事儿》这篇文主要讲述的是从1344年到1644年这三百年间关于明朝的一些事情，以史料为基础，以年代和具体人物为主线，并加入了小说的笔法，对明朝十七... ', '466', '26834', '68');
INSERT INTO `librarian_books` VALUES ('120', '957974332', '人类群星闪耀时-十四篇历史特写', '[奥]斯蒂芬·茨威格/姜乙', '经管', '49.00', '309', '8.3', '当改变命运的时刻降临，犹豫就会败北！《悉达多》译者姜乙三年打磨，重磅推出的全新译作“传记之王”斯蒂芬·茨威格代表作品，德文直译无删节版十四篇历史特写，... ', '223', '7337', '79');
INSERT INTO `librarian_books` VALUES ('121', '966763013', '中国古代文化常识-插图修订第4版', '王力 主编、马汉麟 等执笔、姜亮夫 叶圣陶 等审校、刘乐园 修订', '经管', '60.00', '736', '9.4', '◎编辑推荐你知道武王克商的繁复真相么？你知道我们所能见到的有关猫的最早实物么？你知道知名的司母戊鼎有一个假耳朵么？你知道孟姜女姓姜不姓孟么？你知道汉代穿... ', '226', '2766', '3');
INSERT INTO `librarian_books` VALUES ('122', '943937686', '崩盘-全球金融危机如何重塑世界', '[英] 亚当·图兹', '经管', '148.00', '708', '8.4', '《崩盘》是关于全球化时代第一场世界性金融海啸的史诗，也是一部惊心动魄的当代史。作为对20世纪历史有精深研究的杰出历史学家，亚当·图兹采用全球视角，详细叙述... ', '781', '215', '80');
INSERT INTO `librarian_books` VALUES ('123', '894828891', '显微镜下的大明-六个罕为人知的明代档案 六个尘封已久的民生往事', '马伯庸', '文化', '52.00', '676', '8.7', '★ 马伯庸全新历史纪实作品，一本值得收藏的明朝历史书★ 六件罕为人知的明代档案，六个尘封已久的民生往事★ 生动的基层治政手册，于细微处读懂真正的古代中国... ', '220', '20859', '14');
INSERT INTO `librarian_books` VALUES ('124', '906627720', '万古江河-中国历史文化的转折与开展', '许倬云', '文化', '68.00', '324', '8.6', '★ 与余英时、黄仁宇、杨联陞、何炳棣、张光直比肩的海外华裔史学大家中国通史力作★ 第三届“文津图书奖”获奖作品★余英时、姚大力、葛兆光、王子今、许纪霖、... ', '568', '3915', '81');
INSERT INTO `librarian_books` VALUES ('125', '903357265', '长安客', '北溟鱼', '文化', '45.00', '693', '8.0', '长安的大雨天，杜甫睡在青苔与积水里；李白困在翰林院的书堆里打瞌睡，金灿灿的宫殿仿佛近在咫尺，又远远相隔；小旅馆里王维正为少年时的诗作标注年龄，窗外慈恩寺里俗... ', '157', '4815', '4');
INSERT INTO `librarian_books` VALUES ('126', '906630828', '潜规则（修订版）-中国历史中的真实游戏', '吴思', '文化', '28.00', '943', '8.2', '这部以历史为解读对象的著作中，作者以亦雅亦俗、亦庄亦谐的写作方式，叙述了历史上值得人们思考的大大小小的无数案例，在生动、有趣地讲述官场故事的同时，作者透过历... ', '465', '8838', '83');
INSERT INTO `librarian_books` VALUES ('127', '906495933', '奥斯维辛-一部历史', '[英] 劳伦斯·里斯/刘爽', '文化', '64.00', '672', '9.5', '有奥斯维辛，就不能有上帝的存在。——普里莫•莱维无论我在思考什么，总要思考奥斯维辛。感谢那些要求、甚至逼迫我们讲述一切的人，因为他们想听到、想知道发生在奥... ', '184', '5056', '9');
INSERT INTO `librarian_books` VALUES ('128', '912021155', '失败者的春秋', '刘勃', '文化', '38.00', '166', '8.9', '本书是刘勃继《战国歧途》后的新作，依然关注古老中国的青春时代。春秋是礼崩乐坏的时代。以周天子为中心的分封制难以为继，新的集权制度亦未建立。春秋是承前启后... ', '604', '3309', '84');
INSERT INTO `librarian_books` VALUES ('129', '942739032', '山月记', '[日]中岛敦', '文化', '28.00', '390', '8.7', '这是日本天才作家中岛敦的第一本中文简体版精选集，收录中岛敦《山月记》《弟子》《李陵》《光•风•梦》等九篇代表作。中岛敦的小说多取材于中国古典故事，独出心裁，... ', '557', '8225', '85');
INSERT INTO `librarian_books` VALUES ('130', '955463471', '伦敦日记-苏联驻伦敦大使二战回忆', '[苏联]伊万·迈斯基 著、[英]加布里埃尔·戈罗德茨基 编/全克林、赵文焕', '文化', '158.00', '954', '9.3', '*内容简介苏联驻英大使伊万·迈斯基于1932—1943年在伦敦写下一批珍贵日记，经加布里埃尔·戈罗德茨基谨严选编、作注而成书。日记中记述苏联在英的外交活动... ', '780', '22', '9');
INSERT INTO `librarian_books` VALUES ('131', '942120293', '塔利班-宗教极端主义在阿富汗及其周边地区', '[巴基斯坦] 艾哈迈德.拉希德/钟鹰翔', '文化', '58.00', '315', '8.2', '塔利班是何物  你在三秒内能联系到什么？9.11事件OR本·拉登?错错错你以为你了解，所以你一无所知一部客观记录塔利班历史的权威著作全球多国列为禁... ', '580', '761', '15');
INSERT INTO `librarian_books` VALUES ('132', '944308905', '天朝的崩溃（修订版）-鸦片战争再研究', '茅海建', '文化', '59.00', '490', '9.4', '本书大量使用中国第一历史档案馆所藏清朝奏折，和英国所藏中英交涉文件、日本学者汇编资料集等等，详尽考订并重建了与战争相关的大量基本史实。作者抓住几个主要人物为... ', '268', '5843', '86');
INSERT INTO `librarian_books` VALUES ('133', '925701718', '撒哈拉的故事', '三毛', '生活', '15.80', '173', '9.2', '三毛作品中最脍炙人口的《撒哈拉的故事》，由12篇精彩动人的散文结合而成，其中《沙漠中的饭店》，是三毛适应荒凉单调的沙漠生活后，重新拾笔的第一篇文字，自此之后... ', '408', '120657', '87');
INSERT INTO `librarian_books` VALUES ('134', '903412955', '重走-在公路、河流和驿道上寻找西南联大', '杨潇', '生活', '98.00', '211', '9.2', '《重走：在公路、河流和驿道上寻找西南联大》是青年作者杨潇的新作，也是单读出版推出的首部长篇非虚构作品，关于一个不无困惑的写作者徒步重走西南联大西迁路的故事。... ', '582', '1316', '79');
INSERT INTO `librarian_books` VALUES ('135', '926795904', '午夜降临前抵达', '刘子超', '生活', '59.00', '384', '8.4', '不能出门的日子，你需要一本旅行文学。·旅行中最大的不确定性，不是抵达，而是如何抵达。说到底，旅行或者人生，就是一次次解决如何抵达的生命过程。“刘子超... ', '164', '608', '51');
INSERT INTO `librarian_books` VALUES ('136', '989609738', '江城', '[美] 彼得·海斯勒/李雪顺', '生活', '36.00', '751', '9.1', '1996年8月底一个温热而清朗的夜晚，我从重庆出发，乘慢船，顺江而下来到涪陵。涪陵没有铁路，历来是四川省的贫困地区，公路非常糟糕。去哪里你都得坐船，但多半... ', '756', '46299', '13');
INSERT INTO `librarian_books` VALUES ('137', '991586533', '森林、冰河与鲸', '[日]星野道夫（Michio Hoshino）/曹逸冰', '生活', '52.00', '887', '9.1', '编辑推荐：1、“摄影界的芥川奖”得主佳作重现：“一张照片，一盒卷。”甄选120幅标志性的极地摄影作品，记录星野道夫旅居北极二十年光影。2、作者人生最后一... ', '244', '1111', '9');
INSERT INTO `librarian_books` VALUES ('138', '989843740', '寻路中国-从乡村到工厂的自驾之旅', '[美] 彼得·海斯勒/李雪顺', '生活', '33.00', '490', '9.0', '我叫彼得·海斯勒，是《纽约客》驻北京记者。这本书讲述了我驾车漫游中国大陆的经历。2001年夏天，我考取了中国驾照，在此后的七年中，我驾车漫游于中国的乡村与... ', '538', '47134', '13');
INSERT INTO `librarian_books` VALUES ('139', '948383503', '旅行之木', '[日]星野道夫（Michio Hoshino）/曹逸冰', '生活', '42.00', '869', '9.0', '编辑推荐：1、日本国宝级生态摄影师星野道夫：不仅是一位生态摄影师，也是一位旅行作家，旅居北极二十年，创作了大量摄影与文学作品，曾获“摄影界的芥川奖”——木... ', '424', '837', '9');
INSERT INTO `librarian_books` VALUES ('140', '932970585', '在中国大地上-搭火车旅行记', '[美] 保罗·索鲁/陈媛媛', '经管', '68.00', '612', '8.3', '“现代旅行文学教父”保罗·索鲁经典之作托马斯·库克旅行文学奖获奖作品激荡传奇的80年代，老外视角的全新记录内容简介1986年，保罗·索鲁在时隔六年后... ', '504', '1966', '88');
INSERT INTO `librarian_books` VALUES ('141', '970599220', '撒哈拉的故事', '三毛', '经管', '35.00', '613', '9.2', '★搁笔十年之后首次以“三毛”笔名面向读者之作★流浪文学经典 畅销三十余年热度不减★与荷西传奇爱情的见证 唤起万千人心中的撒哈拉之梦在三毛的内心深处，撒... ', '405', '10190', '12');
INSERT INTO `librarian_books` VALUES ('142', '975588046', '永恒的时光之旅', '[日] 星野道夫/游韵馨', '经管', '79.00', '804', '9.2', '《永恒的时光之旅》收录星野道夫未公开摄影作品及西伯利亚绝笔日记 ，是对星野道夫史诗般摄影生涯的回顾和致敬。星野道夫用镜头扑捉自然的至美和生命的脆弱与坚强，用... ', '204', '2570', '9');
INSERT INTO `librarian_books` VALUES ('143', '977217432', '一个人的朝圣', '[英] 蕾秋·乔伊斯/黄妙瑜', '经管', '32.80', '617', '8.1', '★2013年欧洲首席畅销小说，入围2012年布克文学奖，同名电影拍摄中★台湾读者表示“很久没有读一本书读到凌晨”、“是一个简单、素朴但会令人深深感动的故事... ', '749', '73297', '3');
INSERT INTO `librarian_books` VALUES ('144', '921890400', '夜航西飞', '[英] 柏瑞尔·马卡姆/陶立夏', '生活', '29.00', '839', '8.8', '《夜航西飞》以二十世纪二十至三十年代的肯尼亚为背景，真实再现了作者在非洲的生活，其中包括她毕生钟爱的两项有趣又传奇的事业——训练赛马和驾驶飞机。柏瑞尔•马卡... ', '619', '8482', '7');
INSERT INTO `librarian_books` VALUES ('145', '899414937', '撒哈拉的故事', '三毛', '生活', '24.00', '462', '9.3', '★三毛——华文世界里的传奇女子，她的足迹遍及世界各地★此篇是三毛最受欢迎的作品，倾倒了全世界的华文读者★封面由台湾著名设计师聂永真倾情设计★全方位、多... ', '606', '57679', '12');
INSERT INTO `librarian_books` VALUES ('146', '912079755', '沿着季风的方向-从印度到东南亚的旅程', '刘子超', '生活', '42.00', '380', '8.2', '“真正的发现之旅不是为了寻找新的风景，而是为了拥有新的眼光。”（普鲁斯特语）首届“单向街 书店文学奖·年度旅行写作”、“豆瓣年度好书”得主——刘子超再度出... ', '714', '1293', '7');
INSERT INTO `librarian_books` VALUES ('147', '923540137', '在路上', '[美] 杰克·凯鲁亚克/王永年', '生活', '28.00', '494', '7.8', '青年学生萨尔为追求个性自由，与狄安（以卡萨迪为原型）、玛丽露等一伙男女开车横穿全美，一路狂喝滥饮，耽迷酒色，流浪吸毒，性放纵，在经过精疲力竭的漫长放荡后，开... ', '625', '47864', '13');
INSERT INTO `librarian_books` VALUES ('148', '954320568', '走过兴都库什山-深入阿富汗内陆', '[英]埃里克 ·纽比', '生活', '50.00', '592', '7.8', '伊夫林·沃作序力荐，《国家地理》杂志“100 本有史以来最伟大的探险类书籍”第16。著名旅行家埃里克·纽比最受欢迎的作品，阿富汗异域风情，兴都库什山绝地探险... ', '391', '141', '89');
INSERT INTO `librarian_books` VALUES ('149', '991421404', '乖，摸摸头', '大冰', '生活', '36.00', '891', '7.3', '真实的故事自有万钧之力这本书讲述了12个真实的故事或许会让你看到那些你永远无法去体会的生活见识那些可能你永远都无法结交的人【乖，摸摸头】：“杂草敏”... ', '485', '53642', '14');
INSERT INTO `librarian_books` VALUES ('150', '977756029', '阿富汗访古行记', '刘拓', '生活', '88.00', '826', '7.8', '阿富汗是丝绸之路上东西方文明汇聚之地。此书记录了作者于2014年和2017年两次独自踏寻阿富汗诸多古代遗存的故事。阿富汗局势复杂，访古行旅充满冒险和艰辛，而... ', '627', '148', '75');
INSERT INTO `librarian_books` VALUES ('151', '987422900', '天真的人类学家-小泥屋笔记&重返多瓦悠兰', '[英] 奈吉尔·巴利/何颖怡', '生活', '35.00', '344', '8.8', '本书诚实但又不失风趣地记录了作为人类学家的作者在非洲喀麦隆多瓦悠人村落两次进行田野工作的经历，将人类学家如何克服乏味、灾难、生病与敌意的真实田野生活拍案叫绝... ', '580', '9634', '9');
INSERT INTO `librarian_books` VALUES ('152', '965069174', '阿勒泰的角落', '李娟', '生活', '25.00', '822', '9.1', '《阿勒泰的角落》是关于新疆的最美丽文字，这是现代版《呼兰河传》。由作者1998-2003年之间陆续完成并在《文汇报》、《南方周末》等发表的短篇散文集结成册。... ', '203', '15110', '90');
INSERT INTO `librarian_books` VALUES ('153', '975557949', '我的阿勒泰', '李娟', '生活', '22.00', '451', '8.8', '本书是作者十年来散文创作的合集。分为阿勒泰文字、阿勒泰角落和九篇雪三辑。这是一部描写疆北阿勒泰地区生活和风情的原生态散文集。充满生机活泼、新鲜动人的元素。记... ', '305', '22040', '91');
INSERT INTO `librarian_books` VALUES ('154', '932618039', '旅行的艺术', '[英] 阿兰·德波顿/南治国、彭俊豪、何世原', '生活', '28.00', '539', '8.6', '与一般中国读者的预期不同，《旅行的艺术》不是游记散文，不是导游手册，也不是论述旅行历史和意义的常识读本。这部书就像一场完美的旅程，教我们如何好奇、思考和观察... ', '373', '2804', '13');
INSERT INTO `librarian_books` VALUES ('155', '984833373', '万水千山走遍', '三毛', '生活', '13.80', '272', '8.8', '大地啊，我来到你岸上时原是一个陌生人，住在你房子里时原是一个旅客，而今我离开你的门时却是一个朋友了。 当飞机降落在墨西哥首都的机场时，我的体力已经透支得几乎... ', '458', '39753', '87');
INSERT INTO `librarian_books` VALUES ('156', '924716937', '北方的空地', '杨柳松', '生活', '68.00', '772', '9.1', '《北方的空地》内容简介：人类首次以自力方式横穿大羌塘无人区，羌塘，地球上独有的超级荒原，当我们热衷谈论偏远的阿里和热闹非凡的可可西里时，对这片酷寒的高原依然... ', '524', '2895', '15');
INSERT INTO `librarian_books` VALUES ('157', '898686304', '纵身入山海', '库索', '生活', '79.80', '702', '8.5', '●日本五年，行山与寻海的日常。●靠近日式生活的核心，近距离觉察日本文化的脉络。●前《新周刊》主笔、《人物》专栏作者、旅日作家——库索作品。山海间藏有最... ', '413', '1108', '93');
INSERT INTO `librarian_books` VALUES ('158', '960081765', '带一本书去巴黎', '林达', '生活', '35.00', '720', '8.5', '作者在浓厚的法国历史文化氛围中，用大量的历史细节和场景，丰富了对艺术、文化，对历史、社会，以及对“革命”的理解。 ', '780', '22609', '95');
INSERT INTO `librarian_books` VALUES ('159', '974604029', '行走的柠檬-意大利的柑橘园之旅', '[英] 海伦娜·阿特利', '生活', '50.00', '656', '7.7', '安徒生笔下的天堂，歌德热爱之地，一次迷人的水果探寻之旅，一段隐藏在柑橘园中的历史，一本散发着柑橘类水果芬芳的书，揭示出黑手党与意大利柑橘产业之间的渊源。※... ', '674', '35', '89');
INSERT INTO `librarian_books` VALUES ('160', '908330873', '年过五十，我决定“离家出走”', '苏敏 口述、卓夕琳 执笔', '生活', '56.00', '271', '9.2', '56岁毅然离家，一个人开车自驾，一路向温暖的南方出发，这是一位中国母亲、也是“50岁阿姨自驾游”博主苏敏在2020年做过最震撼人心的决定。她预谋一年，认真做... ', '418', '34', '64');
INSERT INTO `librarian_books` VALUES ('161', '983223824', '彻悟-印度朝圣之旅', '[澳] 萨拉·麦克唐纳', '生活', '55.00', '327', '8.3', '※入围澳大利亚书商协会年度最佳图书奖。※印度旅行最佳读物之一。※背包客印象vs旅居印度两年多的体验。※双侧肺炎与新生，一个人的宗教探险。※近距离接触... ', '521', '56', '89');
INSERT INTO `librarian_books` VALUES ('162', '977924189', '流动的餐桌-世界铁路饮食纪行', '[美]莎朗·哈金斯 主编/徐唯薇', '生活', '138.00', '220', '8.7', '穿梭在历史时空之中，与陌生人交谈；在另一种文化中徜徉，并且享受美食与胜景。这世界上还有什么比乘坐火车旅行更浪漫的事情吗？☆原版颇受好评，在各位作者饱含... ', '576', '12', '96');
INSERT INTO `librarian_books` VALUES ('163', '993721226', '在漫长的旅途中', '[日] 星野道夫/蔡昭仪', '生活', '29.00', '217', '8.7', '单独在零下四十度的冰河地带扎营一个半月，所拍摄所写下的冰河挤压滚落至海中的声音；长期在海湾中冒着酷寒与浪涛，划着小独木舟来回巡弋所捕捉到的座头鲸深潜前扬起尾... ', '551', '6014', '6');
INSERT INTO `librarian_books` VALUES ('164', '982904924', '从大都到上都-在古道上重新发现中国', '罗新', '生活', '45.00', '777', '8.4', '生动还原八百年前元朝两都间辇路的真实面貌，一本多角度的历史大散文。一座历史名城大都（今北京）和一颗草原明珠上都（今内蒙古锡林郭勒盟正蓝旗），由这条路相连。... ', '245', '2405', '20');
INSERT INTO `librarian_books` VALUES ('165', '911083539', '假如真有时光机', '[日] 村上春树/施小炜', '生活', '49.00', '765', '7.9', '《假如真有时光机》是村上春树周游世界各地，写下的妙趣横生的随笔集。在遍布苔藓的冰岛，邂逅没有尾巴的羊和可爱的迷途之鸟；再访《挪威的森林》的起点希腊小岛，在日... ', '693', '7420', '2');
INSERT INTO `librarian_books` VALUES ('166', '987813509', '沿着塞纳河到翡冷翠', '黄永玉', '生活', '38.00', '820', '8.7', '一位67位岁的中国画家，支起画架，安顿好三脚凳，安然从在巴黎塞纳河畔、翡冷翠（佛罗伦萨）优雅的街头，专心画他的画。这是1991年的春天夏天的事情，画家黄永玉... ', '557', '5394', '1');
INSERT INTO `librarian_books` VALUES ('167', '943476899', '丹麦一年-追寻幸福生活的秘密', '[英] 海伦•拉塞尔/李迎春', '生活', '52.00', '961', '8.1', '世界上最幸福的地方，不是迪士尼乐园，而是丹麦，这个缺少光照、连狗都可能抑郁的国度。----------丹麦人幸福生活的秘诀是什么？他们天生就快乐吗... ', '561', '1367', '97');
INSERT INTO `librarian_books` VALUES ('168', '965488628', '去他的巴西', '胡续冬', '生活', '39.00', '750', '8.2', '实物请见：http://www.douban.com/photos/album/73270864/巴西，遥远的南美大陆上的第三世界大国，2014足球世界杯... ', '747', '2204', '98');
INSERT INTO `librarian_books` VALUES ('169', '976732932', '阿弥陀佛么么哒', '大冰', '生活', '38.00', '798', '7.0', '《阿弥陀佛么么哒》一书记录了大冰十余年的江湖游历，以及他和他朋友们的爱与温暖的传奇故事。这些故事与风花雪月无关，与鸡汤小清新无关，有的是无畏的奋斗和孤身的... ', '737', '28101', '14');
INSERT INTO `librarian_books` VALUES ('170', '927235556', '夜航西飞', '[英] 柏瑞尔·马卡姆/陶立夏', '生活', '39.90', '806', '9.0', '附赠怀旧明信片一套！一部让海明威自愧弗如的传奇经典！你读过柏瑞尔•马卡姆的《夜航西飞》了吗？……她写得很好，精彩至极，让我愧为作家。我感觉自己只是 个处... ', '319', '2859', '79');
INSERT INTO `librarian_books` VALUES ('171', '962151932', '走出荒野', '[美]谢丽尔·斯特雷德（Cheryl Strayed）/靳婷婷、张怀强', '生活', '49.80', '225', '8.4', '每个人的生命中，都有一片荒野，需要你自己探出一条路来。连续126周盘踞《纽约时报》畅销榜，罕见地横扫17项年度图书大奖。改编电影《涉足荒野》提名12项大... ', '412', '1761', '3');
INSERT INTO `librarian_books` VALUES ('172', '934527466', '午夜降临前抵达-A Central European Odyssey', '刘子超', '生活', '49.80', '736', '8.0', '【2015首届书店文学奖※年度旅行写作】【2015豆瓣年度好书】——————————————————————————————这是一本“走脑走心”、极具小... ', '506', '1762', '65');
INSERT INTO `librarian_books` VALUES ('173', '966959580', '仿佛若有光-大理访谈录', '黄菊', '经管', '68.00', '812', '8.4', '十四位新移民在大理的生活故事，这些大理的故事，来自洱海西岸的苍山、古城、喜洲、银桥，也来自洱海东岸的双廊、伙山。他们的回忆将我们带回大理的古典时期，并以他们... ', '493', '625', '3');
INSERT INTO `librarian_books` VALUES ('174', '966979539', '寻路阿富汗-在历史与现实之间', '[英] 罗瑞·斯图尔特/沈一鸣', '经管', '49.00', '340', '8.3', '2000年，27岁的罗瑞·斯图尔特开始他徒步穿越亚洲的计划，在伊朗、尼泊尔、印度和阿富汗几个国家内分阶段各自走了一部分，全程合计近万公里。《寻路阿富汗》记录... ', '538', '520', '75');
INSERT INTO `librarian_books` VALUES ('175', '900904170', '碎嘴许美达的生活碎片', '许美达', '经管', '58.00', '868', '7.9', '这本许美达的文集就像一只冒着热气的茶壶，是碎嘴许美达快嘴快笔唠出的热乎乎的一个又一个故事，每个故事都发自肺腑且一气呵成。这些故事告诉大家碎嘴是怎么长成的，曾... ', '319', '314', '99');
INSERT INTO `librarian_books` VALUES ('176', '973439506', '狗夫200天', '陈紫莲', '经管', '42.00', '546', '8.1', '一本中国中老年版的《在路上》惠英红，胡先煦电影《瞧一桥》原著★编辑推荐◎如果你思考过“我的一生该怎么过”“当我老了，我希望自己是什么样的”，你一定不能... ', '678', '775', '88');
INSERT INTO `librarian_books` VALUES ('177', '958916800', '我不', '大冰', '经管', '39.00', '660', '6.6', '善意能消戾，善意能得缘，善意能带业往生，善意能回头是岸。善意能够帮人捕捉并建立起独特的幸福感。“我不”是一种善意坦然，也是一种善意的随缘，更是一句善意的... ', '312', '10657', '14');
INSERT INTO `librarian_books` VALUES ('178', '965584970', '龙舌兰油-迷失墨西哥', '[英]休·汤姆森', '经管', '45.00', '887', '8.4', '在路上，横越墨西哥之旅，一部关于生命可能性的书。斯坦福·杜曼年度旅行书入围，比D.H.劳伦斯、伊夫林·沃、阿尔道斯·赫胥黎、马尔科姆·劳里和格雷厄姆·格林... ', '224', '54', '89');
INSERT INTO `librarian_books` VALUES ('179', '940420055', '旅行之道-来自路上的启示', '[美]保罗·索鲁/张芸', '生活', '108.00', '528', '7.6', '编辑推荐：★ 不满足于只拥有此时此地的人生，我们阅读×旅行——当代著名旅行文学家保罗·索鲁总结之作，采撷故事与箴言，集合为一部随身携带的地球漫游指南，将四... ', '325', '335', '100');
INSERT INTO `librarian_books` VALUES ('180', '919294370', '旅行的艺术', '[英] 阿兰·德波顿/南治国、彭俊豪、何世原', '生活', '16.80', '492', '8.3', '这部书就像一场完美的旅程，教我们如何好奇、思考和观察，让我们重新对生命充满热情。旅行是什么，德波顿并不想急于提供答案，旅行为什么，德波顿似乎也不热心去考求。... ', '247', '19133', '13');
INSERT INTO `librarian_books` VALUES ('181', '967356622', '夏日走过山间', '[美]约翰·缪尔/邱婷婷', '生活', '35.00', '979', '8.4', '缪尔于一八六九年夏天，在内华达山间进行了为期四个月的考察，所记下的日记就成了这本不朽的文学名著。缪尔在四个月的行程中，除了参与牧羊之外，考察了山脉、矿石、冰... ', '746', '1203', '13');
INSERT INTO `librarian_books` VALUES ('182', '985419806', '文化苦旅', '余秋雨', '生活', '22.00', '769', '7.7', '《文化苦旅》是余秋雨的第一部散文合集，所收作品主要包括两部分，一部分是历史、文化散文，散点论述，探寻文化；另一部分是回忆散文。 ', '422', '79500', '101');
INSERT INTO `librarian_books` VALUES ('183', '976399423', '北欧，冰与火之地的寻真之旅', '[英] 迈克尔·布斯', '生活', '58.00', '933', '8.6', '1539年，在奥拉斯 • 马格努斯绘制的《海图》中， 这里还是一片海上巨怪频出的边陲之境，沉睡近500年之后，一跃成为地球上幸福感最为强烈的地区，仅剩天堂可... ', '778', '4231', '62');
INSERT INTO `librarian_books` VALUES ('184', '995136005', '当我在一个仲夏清晨出走', '[英]洛瑞·李/王柯月', '生活', '56.00', '544', '8.6', '【每个人都梦想着探索新世界，但他用行动去做了】★ 英语旅行文学殿堂级典范，比《在路上》早20年的“出走” 。★《每日电讯报》“20部永恒的至佳游记”★... ', '267', '403', '20');
INSERT INTO `librarian_books` VALUES ('185', '922341645', '远方的鼓声', '[日] 村上春树/林少华', '生活', '32.00', '550', '8.4', '《远方的鼓声》是村上春树的游记，时间为1986-1989年，游历地区为欧洲，主要为希腊、意大利两个国家。“一天早上睁眼醒来，蓦然侧耳倾听，远处传来鼓声。鼓声... ', '325', '4884', '13');
INSERT INTO `librarian_books` VALUES ('186', '938365701', '重返帕米尔-追寻玄奘与丝绸之路', '侯杨方', '生活', '98.00', '820', '7.1', '对话千年行者 重返学术历史现场重走真实的丝绸之路 打破现代人的想象力边界葛 剑 雄 作 序 推 荐附101帧作者行走丝路照片与路线图2014年5月1... ', '601', '68', '13');
INSERT INTO `librarian_books` VALUES ('187', '988227828', '人类简史-从动物到上帝', '[以色列] 尤瓦尔·赫拉利/林俊宏', '科技', '68.00', '301', '9.1', '十万年前，地球上至少有六种不同的人但今日，世界舞台为什么只剩下了我们自己？从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，从雪维洞穴壁上的原始... ', '747', '160162', '65');
INSERT INTO `librarian_books` VALUES ('188', '956471204', '逛动物园是件正经事', '花蚀', '科技', '98.00', '781', '8.5', '编辑推荐：4个月，跨越整个中国；56座动物园，第一次全面探访；200多种动物，延伸新时代的认知；480分钟的阅读，带给你深入的思考；2亿话题量，我... ', '790', '898', '102');
INSERT INTO `librarian_books` VALUES ('189', '959202894', '惊呆了！原来这就是社会学', '［日］田中正人、［日］香月孝史/刘晓晓', '科技', '59.00', '932', '8.8', '★ 懂点社会学，走出混沌的日常，理解社会与人生★ 76位社会学巨擘×135个社会学核心概念×400幅超可爱漫画上至学科奠基人奥古斯特·孔德、埃米尔·涂尔... ', '357', '1005', '2');
INSERT INTO `librarian_books` VALUES ('190', '896977120', '人体简史-你的身体30亿岁了', '[英] 比尔·布莱森/闾佳', '科技', '69.90', '688', '8.6', '你的身体30亿岁了！一部从头讲到脚、从里讲到外、从30亿年前讲到今天的人体百科全书！从30亿年前漂浮在浅海里的单细胞斑点开始，制造你身体的基因就已经存在... ', '756', '2929', '51');
INSERT INTO `librarian_books` VALUES ('191', '928441688', '人类简史-从动物到上帝', '[以] 尤瓦尔·赫拉利/林俊宏', '科技', '68.00', '604', '9.1', '【内容简介】十万年前，地球上至少有六种不同的人，但今日，世界舞台为什么只剩下我们自己？从只能啃食虎狼吃剩残骨的猿人，到跃居食物链顶端的智人，从雪维洞... ', '672', '26957', '76');
INSERT INTO `librarian_books` VALUES ('192', '910929374', '最好的告别-关于衰老与死亡，你必须知道的常识', '[美] 阿图·葛文德（Atul Gawande）/王一方 主编、彭小华', '科技', '49.90', '552', '9.0', '当独立、自助的生活不能再维持时，我们该怎么办？在生命临近终点的时刻，我们该和医生谈些什么？应该如何优雅地跨越生命的终点？对于这些问题，大多数人缺少清晰的观念... ', '369', '34953', '68');
INSERT INTO `librarian_books` VALUES ('193', '993973233', '哥德尔、艾舍尔、巴赫-集异璧之大成', '[美] 侯世达', '科技', '88.00', '463', '9.4', '集异璧－GEB，是数学家哥德尔、版画家艾舍尔、音乐家巴赫三个名字的前缀。《哥德尔、艾舍尔、巴赫书：集异璧之大成》是在英语世界中有极高评价的科普著作，曾获得普... ', '764', '7183', '89');
INSERT INTO `librarian_books` VALUES ('194', '918339706', '肠子的小心思', '【德】朱莉娅·恩德斯/钱为', '科技', '38.00', '975', '8.9', '【内容简介】《肠子的小心思》是德国图书界的黑马，口嫌体正直的德国人，一面对粑粑说着“不要不要”，一面看得好污好欢乐。原来，德国人觉得理所当然的马桶竟是痔疮... ', '690', '9060', '103');
INSERT INTO `librarian_books` VALUES ('195', '957419505', '我们为什么要睡觉？', '[英] 马修·沃克/田盈春', '科技', '60.00', '802', '8.5', '比尔·盖茨精选推荐！2020年卡尔·萨根科普奖得主马修·沃克成名作品《纽约时报》畅销书排行榜NO.1全景呈现熟悉又陌生的睡梦领域，让你轻松获得一夜好眠... ', '681', '1265', '33');
INSERT INTO `librarian_books` VALUES ('196', '925951062', '时间的秩序', '[意] 卡洛·罗韦利/杨光', '科技', '56.00', '384', '8.9', '为什么我们记得过去，而非未来？时间“流逝”意味着什么？是我们存在于时间之内，还是时间存在于我们之中？卡洛·罗韦利用诗意的文字，邀请我们思考这一亘古难题——时... ', '348', '15580', '104');
INSERT INTO `librarian_books` VALUES ('197', '987058347', '上帝掷骰子吗-量子物理史话', '曹天元', '科技', '32.00', '671', '9.2', '《上帝掷骰子吗》这本书是关于量子论的故事。量子论是一个极为奇妙的理论：从物理角度来说，它在科学家中间引起了最为激烈的争议和关注；从现实角度来说，它给我们的社... ', '340', '28262', '105');
INSERT INTO `librarian_books` VALUES ('198', '967411794', '哲学家们都干了些什么-史上最严谨又最不严肃的哲学史', '林欣浩', '科技', '52.00', '365', '8.6', '“哲学史写得这么浅白风趣八卦，你让我们哲学系的人还怎么混？！”轰动豆瓣的奇葩之书，连续三年蝉联豆瓣电子阅读榜第一的神作经作者全面修订后，2015年重新问... ', '422', '20964', '3');
INSERT INTO `librarian_books` VALUES ('199', '979870658', '刑法学讲义', '罗翔', '科技', '68.00', '845', '8.4', '全网爆红的“法律男神”罗翔教授为每一位普通读者写的刑法普及讲义。刑法与每个人的生活都密不可分，家庭、校园、职场、人际关系、经济活动处处都有违法犯罪行为，相... ', '795', '4276', '91');
INSERT INTO `librarian_books` VALUES ('200', '990867368', '时间简史-插图本', '[英] 史蒂芬·霍金/许明贤、吴忠超', '科技', '45.00', '979', '8.8', '《时间简史》讲述是探索时间和空间核心秘密的故事，是关于宇宙本性的最前沿知识，包括我们的宇宙图像、空间和时间、膨胀的宇宙不确定性原理、基本粒子和自然的力、黑洞... ', '635', '53866', '104');
INSERT INTO `librarian_books` VALUES ('201', '969244598', '从一到无穷大-科学中的事实和臆测', '[美] G. 伽莫夫/暴永宁 译、吴伯泽 校', '科技', '29.00', '443', '9.1', '《从一到无穷大：科学中的事实和臆测》是当今世界最有影响的科普经典名著之一，1970年代末由科学出版社引进出版后，曾在国内引起很大反响，直接影响了众多的科普工... ', '373', '11818', '106');
INSERT INTO `librarian_books` VALUES ('202', '983339204', '自私的基因', '[英]理查德·道金斯/卢允中、张岱云、陈复加、罗小舟', '科技', '68.00', '256', '8.5', '《自私的基因》是20世纪最经典的著作，这版三十周年纪念版，在前版本基础上有两章增补和修订。我们从哪里来，又将到哪里去。生命有何意义，我们该如何认知自己？《自... ', '246', '15031', '65');
INSERT INTO `librarian_books` VALUES ('203', '907153306', '云彩收集者手册', '[英] 加文·普雷特-平尼/王燕平、张超', '科技', '45.00', '549', '8.4', '本书介绍了46种云彩和大气光学现象，并且收录了全世界云彩爱好者 拍摄的百余幅精彩摄影作品。从太空 边缘的神秘夜光云，到我们周围的重重雾霭，都在这本手册之中。... ', '290', '6512', '5');
INSERT INTO `librarian_books` VALUES ('204', '913809107', '是我把你蠢哭了吗', '[英] 迪安·博内特/朱机', '科技', '42.00', '764', '8.1', '神经科学家戳破大脑的聪明假象人们都以为这东西是聪慧和进步的演化产物，可实际上它又混乱无序又容易犯错！◎ 编辑推荐☆听被科学耽误的单口喜剧演员讲大脑，带... ', '424', '901', '107');
INSERT INTO `librarian_books` VALUES ('205', '896477548', '枪炮、病菌与钢铁-人类社会的命运', '[美] 贾雷德·戴蒙德/谢延光', '科技', '45.00', '534', '8.7', '为什么是欧亚大陆人征服、赶走或大批杀死印第安人、澳大利亚人和非洲人，而不是相反？为什么么小麦和玉米、牛和猪以及现代世界的其他一些“不了起的”作物和牲畜出现在... ', '692', '40046', '73');
INSERT INTO `librarian_books` VALUES ('206', '936850204', '这里是中国', '星球研究所、中国青藏高原研究会', '科技', '168.00', '264', '8.2', '《这里是中国》由星球研究所近3年积累而成国内第一部全视野中国地理科普著作庆祝中华人民共和国成立70周年，提升国民视野，传承核心价值观书架上的中国纪录片... ', '626', '5858', '76');
INSERT INTO `librarian_books` VALUES ('207', '944122614', '众病之王-癌症传', '[美] 悉达多·穆克吉/李虎', '经管', '42.00', '820', '9.1', '《众病之王：癌症传》是一部饱含人文主义色彩的社科文化著作。作者悉达多•穆克吉历时六年，凭借翔实的历史资料、专业文献、媒体报道、患者专访等众多信息，向读者阐述... ', '408', '10551', '65');
INSERT INTO `librarian_books` VALUES ('208', '986658915', '好的婚姻，要守护财产和爱-人人都需要的婚姻安全必修课', '吴杰臻', '科技', '49.80', '917', '8.8', '世界变化越来越快，离婚大战在我们身边时有上演。作为一名离婚律师，吴杰臻律师目睹了婚姻百态，当“教人离婚”成为日常工作时，他也在不断对婚姻进行思考，希望能从中... ', '536', '2179', '109');
INSERT INTO `librarian_books` VALUES ('209', '981828934', '癌症·防御', '李治中（菠萝）', '经管', '59.80', '667', '9.0', '通过科普教育，让更多人不得晚期癌症，甚至不得癌症，才是目前解决普通国人难以负担抗癌药的更好方法。这一本书面对的是更广大的人群，详细解析如何科学地预防与筛查... ', '798', '66', '65');
INSERT INTO `librarian_books` VALUES ('210', '921849619', '宇宙', '[美]卡尔·萨根/虞北冥', '经管', '78.00', '356', '8.9', '【内容简介】《宇宙》是著名天文学家卡尔·萨根长销40年不衰的科普经典，是豆瓣9.5分同名传奇纪录片的姊妹篇。它启发了千万读者的宇宙认知和想象，点燃探索星辰... ', '252', '156', '110');
INSERT INTO `librarian_books` VALUES ('211', '947365865', '吴军数学通识讲义-原来数学可以这样用', '吴军', '经管', '99.00', '640', '8.9', '如何一眼识破庞氏骗局、做好理财、投资？如何在购房贷款时做出最优选择？如何增加简历通过初筛的几率？如何规划公司的发展曲线？更重要的是，如何提升自己的认知水平？... ', '461', '368', '20');
INSERT INTO `librarian_books` VALUES ('212', '958176339', '薄世宁医学通识讲义-一生需要上一次医学院', '薄世宁', '经管', '69.00', '723', '8.7', '医学，面对的是复杂的生命现象，既是最新科学技术的主战场，也是人类自我关怀和探寻生命意义的最前沿。人在一生中，难免要面对疾病的来临与生命的诘问，以医学的思维面... ', '555', '2923', '76');
INSERT INTO `librarian_books` VALUES ('213', '924986008', '最初的爱，最后的故事', '[英] 奥利弗·萨克斯/肖晓、周书', '经管', '59.00', '751', '9.0', '【编辑推荐】♣ 医学界的桂冠诗人，科普写作的莎士比亚，奥利弗·萨克斯医生最后的遗作与漫长的告别：广袤浪漫如宇宙或大脑，美丽幽深如记忆与神经，一部写给“好... ', '377', '183', '9');
INSERT INTO `librarian_books` VALUES ('214', '928307297', '微积分的力量', '[美] 史蒂夫·斯托加茨/任烨', '经管', '69.00', '359', '8.7', '微积分是人类历史上的伟大思想成就之一，也是数学领域不可或缺的一个重要分支。除此之外，我们更应该关注的事实是：如果没有微积分，人类就不可能发明电视、微波炉、移... ', '581', '511', '76');
INSERT INTO `librarian_books` VALUES ('215', '953053464', '深时之旅', '[英] 罗伯特·麦克法伦/王如菲', '经管', '79.00', '366', '9.3', '“深时”是地质时间概念，是地下世界的计时单位。在萨米族传说中，地下世界像是人世的颠倒镜像，地面就是镜面，“生者直立，而逝者行走时上下颠倒，二者的脚彼此接触”... ', '742', '87', '51');
INSERT INTO `librarian_books` VALUES ('216', '975357416', '你是你吃出来的-吃对少生病，病了这样吃', '夏萌', '经管', '49.80', '539', '8.9', '《你是你吃出来的》是前安贞医院营养科主任夏萌总结自身患病经历和10万 临床病例写成。高血压、高血脂、糖尿病、冠心病等慢病人群都曾陷入同一个误区——误以为低... ', '790', '4592', '111');
INSERT INTO `librarian_books` VALUES ('217', '965294617', '鳗鱼的旅行-一场对目标与意义的探寻', '[瑞典] 帕特里克•斯文松/徐昕', '科技', '58.00', '661', '8.7', '一本和鳗鱼一样难以被定义的奇书，关于鳗鱼，更关于生命本身：从鳗鱼笨拙又浪漫的生命之旅，抵达深刻又感动的生命之谜瑞典现象级畅销书，出版3个月印量高达... ', '532', '3756', '112');
INSERT INTO `librarian_books` VALUES ('218', '936376945', '万物的尺度：看得见的单位', '[日] 丸山一彦/浪花朵朵', '科技', '72.00', '833', '9.3', '用照片和图画让“单位”看得见，让近80种单位带来具体的感受。单位是如何定义和命名的，节、马赫、加仑、桶、磅这些单位有什么方便？理解似懂非懂的单位，提高对... ', '540', '93', '56');
INSERT INTO `librarian_books` VALUES ('219', '982830351', '万物发明指南-时间旅行者生存手册', '[加] 瑞安·诺思/王乔琦', '科技', '78.00', '435', '8.7', '如果你忽然发现自己穿越到了只在历史书中读到过的古代，你该怎么办？-面对陌生的原始社会，没有电、没有手机、没有网络……没有任何现代化的工具，你该如何生存下... ', '305', '1188', '65');
INSERT INTO `librarian_books` VALUES ('220', '976322321', '考试脑科学-脑科学中的高效记忆法', '[日]池谷裕二/高宇涵', '科技', '59.80', '302', '8.0', '寻求人脑记忆规律，拟定高效学习策略日本长销十余年的学习记忆书全新修订再版◎ 编辑推荐☆ 与实际生活贴切，考试群体刚需，学习技能提升所需！为何看过的... ', '297', '1051', '113');
INSERT INTO `librarian_books` VALUES ('221', '923635861', '气候经济与人类未来-比尔·盖茨给世界的解决方案', '[美国] 比尔·盖茨/陈召强', '科技', '68.00', '680', '8.1', '比尔·盖茨花了十年时间调研气候变化的成因和影响。在物理学、化学、生物学、工程学、政治学和经济学等领域的专家的支持下，他专注于探索减少温室气体排放的新技术。... ', '297', '1293', '76');
INSERT INTO `librarian_books` VALUES ('222', '966099085', '皮肤的秘密-关于人体最大器官的一切', '[德]耶尔•阿德勒 (Yael Adler)、[德]卡提雅•史匹哲 (Katja Spitzer )  绘/刘立', '科技', '59.00', '865', '8.0', '【2020年文津图书奖推荐图书！】**关于皮肤的17堂课！解读关于人体最大器官的一切！*内附插图，双色印刷，俏皮生动**30多国畅销的科学护肤指南... ', '618', '5811', '114');
INSERT INTO `librarian_books` VALUES ('223', '924493182', '毒药手帖', '[日] 涩泽龙彦/余梦娇', '科技', '39.80', '947', '7.8', '☠️ 不可告人的犯罪狂想，大开眼界的毒杀百科贪婪，爱欲，信仰，权谋……东洋鬼才涩泽龙彦，以毒药之名书写文明的暗面☠️ 编辑推荐◎ 以小见大的“毒药学... ', '520', '193', '88');
INSERT INTO `librarian_books` VALUES ('224', '990104924', '地球上最孤单的动物-43种濒危动物插画集', '[英] 米莉·玛洛塔/孙依静', '科技', '99.80', '472', '9.1', '芳踪难觅的栗腹鹭，钟爱旅行的勺嘴鹬感情专一的虎尾海马，雌雄难辨的曲纹唇鱼从海洋到森林，由沙漠至淡水从草原到山脉，由湿地至苔原43 种来自全球各地的野... ', '657', '2211', '115');
INSERT INTO `librarian_books` VALUES ('225', '4185386917673', 'Django开发指南', '马瑟斯', '科技', '43.00', '87878', '9.8', '1', '78', '7878', '4');
INSERT INTO `librarian_books` VALUES ('226', '7211248641540', 'Django开发指南', '王巍巍', '科技', '43.00', '8787', '9.8', '11', '6565', '656', '2');

-- ----------------------------
-- Table structure for librarian_image
-- ----------------------------
DROP TABLE IF EXISTS `librarian_image`;
CREATE TABLE `librarian_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_address` varchar(100) NOT NULL,
  `img_label` varchar(128) NOT NULL,
  `books_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `librarian_image_books_id_ba45f5ec_fk_librarian_books_id` (`books_id`),
  CONSTRAINT `librarian_image_books_id_ba45f5ec_fk_librarian_books_id` FOREIGN KEY (`books_id`) REFERENCES `librarian_books` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of librarian_image
-- ----------------------------
INSERT INTO `librarian_image` VALUES ('2', 'images/books/456116345.jpg', '白夜行', '2');
INSERT INTO `librarian_image` VALUES ('3', 'images/books/636785248.jpg', '房思琪的初恋乐园', '3');
INSERT INTO `librarian_image` VALUES ('4', 'images/books/737540784.jpg', '蛤蟆先生去看心理医生', '4');
INSERT INTO `librarian_image` VALUES ('5', 'images/books/754728222.jpg', '百年孤独', '5');
INSERT INTO `librarian_image` VALUES ('6', 'images/books/817889171.jpg', '索拉里斯星', '6');
INSERT INTO `librarian_image` VALUES ('7', 'images/books/784386548.jpg', '追风筝的人', '7');
INSERT INTO `librarian_image` VALUES ('8', 'images/books/814800151.jpg', '红楼梦', '8');
INSERT INTO `librarian_image` VALUES ('9', 'images/books/829358481.jpg', '鄙视', '9');
INSERT INTO `librarian_image` VALUES ('10', 'images/books/860879996.jpg', '献给阿尔吉侬的花束', '10');
INSERT INTO `librarian_image` VALUES ('11', 'images/books/858972779.jpg', '解忧杂货店', '11');
INSERT INTO `librarian_image` VALUES ('12', 'images/books/895159281.jpg', '小王子', '12');
INSERT INTO `librarian_image` VALUES ('13', 'images/books/912625767.jpg', '字母表谜案', '13');
INSERT INTO `librarian_image` VALUES ('14', 'images/books/880300525.jpg', '许三观卖血记', '14');
INSERT INTO `librarian_image` VALUES ('15', 'images/books/870334402.jpg', '三只忧伤的老虎', '15');
INSERT INTO `librarian_image` VALUES ('16', 'images/books/907780548.jpg', '霍乱时期的爱情', '16');
INSERT INTO `librarian_image` VALUES ('17', 'images/books/893753930.jpg', '文城', '17');
INSERT INTO `librarian_image` VALUES ('18', 'images/books/928072873.jpg', '局外人', '18');
INSERT INTO `librarian_image` VALUES ('19', 'images/books/856684677.jpg', '云边有个小卖部', '19');
INSERT INTO `librarian_image` VALUES ('20', 'images/books/900407183.jpg', '三体-“地球往事”三部曲之一', '20');
INSERT INTO `librarian_image` VALUES ('21', 'images/books/932426939.jpg', '生活蒙太奇', '21');
INSERT INTO `librarian_image` VALUES ('22', 'images/books/926770631.jpg', '美丽黑暗', '22');
INSERT INTO `librarian_image` VALUES ('23', 'images/books/886256464.jpg', '黑睡莲', '23');
INSERT INTO `librarian_image` VALUES ('24', 'images/books/884243237.jpg', '我家戀愛好麻煩', '24');
INSERT INTO `librarian_image` VALUES ('25', 'images/books/939094348.jpg', '她们的传奇', '25');
INSERT INTO `librarian_image` VALUES ('26', 'images/books/869998637.jpg', '看你一眼就会笑', '26');
INSERT INTO `librarian_image` VALUES ('27', 'images/books/868028395.jpg', '旋涡 （全2册）', '27');
INSERT INTO `librarian_image` VALUES ('28', 'images/books/902076104.jpg', '100天后会死的鳄鱼君', '28');
INSERT INTO `librarian_image` VALUES ('29', 'images/books/888662071.jpg', '每一天都是爱你的一天', '29');
INSERT INTO `librarian_image` VALUES ('30', 'images/books/938545006.jpg', '鱼（全2册）', '30');
INSERT INTO `librarian_image` VALUES ('31', 'images/books/960255118.jpg', 'ルックバツク-Look Back', '31');
INSERT INTO `librarian_image` VALUES ('32', 'images/books/879486995.jpg', '夜间巴士', '32');
INSERT INTO `librarian_image` VALUES ('33', 'images/books/884830728.jpg', '纳闷集', '33');
INSERT INTO `librarian_image` VALUES ('34', 'images/books/948380231.jpg', '现实主义者', '34');
INSERT INTO `librarian_image` VALUES ('35', 'images/books/947496569.jpg', 'チェンソーマン 1', '35');
INSERT INTO `librarian_image` VALUES ('36', 'images/books/887052638.jpg', '你今天真好看', '36');
INSERT INTO `librarian_image` VALUES ('37', 'images/books/910744821.jpg', '镖人', '37');
INSERT INTO `librarian_image` VALUES ('38', 'images/books/881352836.jpg', 'OPUS 作品', '38');
INSERT INTO `librarian_image` VALUES ('39', 'images/books/914031443.jpg', '夏日重现', '39');
INSERT INTO `librarian_image` VALUES ('40', 'images/books/897853742.jpg', '森林大帝', '40');
INSERT INTO `librarian_image` VALUES ('41', 'images/books/957556046.jpg', '伊藤润二短篇精选集', '41');
INSERT INTO `librarian_image` VALUES ('42', 'images/books/945577760.jpg', '不方便，但很幸福', '42');
INSERT INTO `librarian_image` VALUES ('43', 'images/books/903206433.jpg', '忍不住想打扰你-bibi动物园系列作品01', '43');
INSERT INTO `librarian_image` VALUES ('44', 'images/books/950305744.jpg', '灯塔', '44');
INSERT INTO `librarian_image` VALUES ('45', 'images/books/946468965.jpg', '塔希里亚故事集', '45');
INSERT INTO `librarian_image` VALUES ('46', 'images/books/976263958.jpg', '随风去野', '46');
INSERT INTO `librarian_image` VALUES ('47', 'images/books/899778356.jpg', '芬兰人的噩梦-另类芬兰社交指南', '47');
INSERT INTO `librarian_image` VALUES ('48', 'images/books/945220895.jpg', 'Killing stalking-1 杀戮跟踪', '48');
INSERT INTO `librarian_image` VALUES ('49', 'images/books/887266983.jpg', '家事', '49');
INSERT INTO `librarian_image` VALUES ('50', 'images/books/900218290.jpg', '非平面', '50');
INSERT INTO `librarian_image` VALUES ('51', 'images/books/897382255.jpg', '我可以咬一口吗', '51');
INSERT INTO `librarian_image` VALUES ('52', 'images/books/947056689.jpg', '梦晕', '52');
INSERT INTO `librarian_image` VALUES ('53', 'images/books/947614147.jpg', '无敌救星', '53');
INSERT INTO `librarian_image` VALUES ('54', 'images/books/938255710.jpg', '我是漫画家', '54');
INSERT INTO `librarian_image` VALUES ('55', 'images/books/958362244.jpg', '海贼王-ONE PIECE', '55');
INSERT INTO `librarian_image` VALUES ('56', 'images/books/932895203.jpg', '半小时漫画中国史（修订版）', '56');
INSERT INTO `librarian_image` VALUES ('57', 'images/books/963282679.jpg', '建筑师', '57');
INSERT INTO `librarian_image` VALUES ('58', 'images/books/968334415.jpg', '半小时漫画世界史-其实是一本严谨的极简世界史', '58');
INSERT INTO `librarian_image` VALUES ('59', 'images/books/979833626.jpg', '漩涡-伊藤润二◎恐怖漫画 《漩涡》', '59');
INSERT INTO `librarian_image` VALUES ('60', 'images/books/917201183.jpg', 'FIRE PUNCH炎拳1', '60');
INSERT INTO `librarian_image` VALUES ('61', 'images/books/911364724.jpg', '海归线', '61');
INSERT INTO `librarian_image` VALUES ('62', 'images/books/925913679.jpg', '家族往事', '62');
INSERT INTO `librarian_image` VALUES ('63', 'images/books/927002272.jpg', '方向', '63');
INSERT INTO `librarian_image` VALUES ('64', 'images/books/901077131.jpg', 'チェンソーマン 11', '64');
INSERT INTO `librarian_image` VALUES ('65', 'images/books/910807419.jpg', '丁香医生人体调查组', '65');
INSERT INTO `librarian_image` VALUES ('66', 'images/books/984782547.jpg', '3秒', '66');
INSERT INTO `librarian_image` VALUES ('67', 'images/books/967543540.jpg', '雪山、青春与我', '67');
INSERT INTO `librarian_image` VALUES ('68', 'images/books/922404109.jpg', '回答不了', '68');
INSERT INTO `librarian_image` VALUES ('69', 'images/books/973636533.jpg', '一根棒', '69');
INSERT INTO `librarian_image` VALUES ('70', 'images/books/970475502.jpg', '铸剑', '70');
INSERT INTO `librarian_image` VALUES ('71', 'images/books/961028710.jpg', '父与子-世界连环画漫画经典大系', '71');
INSERT INTO `librarian_image` VALUES ('72', 'images/books/966222267.jpg', '就喜欢你看不惯我又干不掉我的样子', '72');
INSERT INTO `librarian_image` VALUES ('73', 'images/books/967382701.jpg', '满是空虚之物', '73');
INSERT INTO `librarian_image` VALUES ('74', 'images/books/924599946.jpg', '梦之囚徒：起源', '74');
INSERT INTO `librarian_image` VALUES ('75', 'images/books/900204296.jpg', 'マスク男子は恋したくないのに', '75');
INSERT INTO `librarian_image` VALUES ('76', 'images/books/924235793.jpg', '半小时漫画经济学-生活常识篇', '76');
INSERT INTO `librarian_image` VALUES ('77', 'images/books/946821644.jpg', '一见你就好心情', '77');
INSERT INTO `librarian_image` VALUES ('78', 'images/books/919180704.jpg', '鏈鋸人 1', '78');
INSERT INTO `librarian_image` VALUES ('79', 'images/books/943339221.jpg', '摄影师', '80');
INSERT INTO `librarian_image` VALUES ('80', 'images/books/951994175.jpg', '散步去', '82');
INSERT INTO `librarian_image` VALUES ('81', 'images/books/962845719.jpg', '缅甸小日子', '83');
INSERT INTO `librarian_image` VALUES ('82', 'images/books/893219344.jpg', '向左走·向右走', '84');
INSERT INTO `librarian_image` VALUES ('83', 'images/books/915045571.jpg', '赛博朋克2077：创伤小组', '85');
INSERT INTO `librarian_image` VALUES ('84', 'images/books/955772598.jpg', '巨大的拥抱', '86');
INSERT INTO `librarian_image` VALUES ('85', 'images/books/898436781.jpg', '半小时漫画中国史3', '87');
INSERT INTO `librarian_image` VALUES ('86', 'images/books/952731369.jpg', '魚', '88');
INSERT INTO `librarian_image` VALUES ('87', 'images/books/960809184.jpg', '半小时漫画中国史5', '89');
INSERT INTO `librarian_image` VALUES ('88', 'images/books/953553416.jpg', '外天楼', '90');
INSERT INTO `librarian_image` VALUES ('89', 'images/books/946161584.jpg', '柔软的刺猬：自我疗愈的内在力量', '91');
INSERT INTO `librarian_image` VALUES ('90', 'images/books/960021052.jpg', '半小时漫画中国史2', '92');
INSERT INTO `librarian_image` VALUES ('91', 'images/books/966878820.jpg', '刺客列传', '93');
INSERT INTO `librarian_image` VALUES ('92', 'images/books/898524447.jpg', '画的秘密', '94');
INSERT INTO `librarian_image` VALUES ('93', 'images/books/929597425.jpg', '半小时漫画世界史2', '95');
INSERT INTO `librarian_image` VALUES ('94', 'images/books/985995558.jpg', '三毛流浪记', '96');
INSERT INTO `librarian_image` VALUES ('95', 'images/books/921077585.jpg', '肚子饿万岁', '97');
INSERT INTO `librarian_image` VALUES ('96', 'images/books/903880253.jpg', '我的生活不可能那么坏', '98');
INSERT INTO `librarian_image` VALUES ('97', 'images/books/940398202.jpg', '終末的女武神 1', '99');
INSERT INTO `librarian_image` VALUES ('98', 'images/books/907188454.jpg', '朋友们', '100');
INSERT INTO `librarian_image` VALUES ('99', 'images/books/938872104.jpg', '银河铁道之夜', '101');
INSERT INTO `librarian_image` VALUES ('100', 'images/books/933619943.jpg', '為你著迷', '102');
INSERT INTO `librarian_image` VALUES ('101', 'images/books/967008348.jpg', '万物的尺度：看得见的单位', '103');
INSERT INTO `librarian_image` VALUES ('102', 'images/books/931809967.jpg', '半小时漫画唐诗', '104');
INSERT INTO `librarian_image` VALUES ('103', 'images/books/904554235.jpg', '趣说中国史', '105');
INSERT INTO `librarian_image` VALUES ('104', 'images/books/936856794.jpg', '谁都可以画漫画！手冢治虫大师班', '106');
INSERT INTO `librarian_image` VALUES ('105', 'images/books/908602208.jpg', '蓝色小药丸', '107');
INSERT INTO `librarian_image` VALUES ('106', 'images/books/986563141.jpg', '怪奇事物所', '108');
INSERT INTO `librarian_image` VALUES ('107', 'images/books/931955272.jpg', '吉尔伽美什', '109');
INSERT INTO `librarian_image` VALUES ('108', 'images/books/909752272.jpg', '難以捉摸的可愛甜心', '110');
INSERT INTO `librarian_image` VALUES ('109', 'images/books/922632677.jpg', '我在伊朗长大', '111');
INSERT INTO `librarian_image` VALUES ('110', 'images/books/959659510.jpg', '守望者-完全版', '112');
INSERT INTO `librarian_image` VALUES ('111', 'images/books/987865351.jpg', '波丽娜', '113');
INSERT INTO `librarian_image` VALUES ('112', 'images/books/967283830.jpg', '万般滋味，都是生活：丰子恺散文漫画精选集', '114');
INSERT INTO `librarian_image` VALUES ('113', 'images/books/923661350.jpg', '刺客信条 -王朝 卷一-花都刺客', '115');
INSERT INTO `librarian_image` VALUES ('114', 'images/books/901671566.jpg', '布上尉与莫教授历险记-法老的宝藏', '116');
INSERT INTO `librarian_image` VALUES ('115', 'images/books/894296683.jpg', '梦的化石-今敏全短篇', '117');
INSERT INTO `librarian_image` VALUES ('116', 'images/books/899553771.jpg', '一个人住的每一天', '118');
INSERT INTO `librarian_image` VALUES ('117', 'images/books/976667267.jpg', '人类简史-从动物到上帝', '121');
INSERT INTO `librarian_image` VALUES ('118', 'images/books/964146986.jpg', '奶酪与蛆虫-一个16世纪磨坊主的宇宙', '122');
INSERT INTO `librarian_image` VALUES ('119', 'images/books/928430884.jpg', '无规则游戏-阿富汗屡被中断的历史', '123');
INSERT INTO `librarian_image` VALUES ('120', 'images/books/914700209.jpg', '中国历代政治得失', '124');
INSERT INTO `librarian_image` VALUES ('121', 'images/books/903930430.jpg', '秦制两千年-封建帝王的权力规则', '125');
INSERT INTO `librarian_image` VALUES ('122', 'images/books/936932739.jpg', '明朝那些事儿（1-9）-限量版', '126');
INSERT INTO `librarian_image` VALUES ('123', 'images/books/987148653.jpg', '万历十五年', '127');
INSERT INTO `librarian_image` VALUES ('124', 'images/books/964813149.jpg', '邓小平时代', '128');
INSERT INTO `librarian_image` VALUES ('125', 'images/books/906780846.jpg', '秋园', '129');
INSERT INTO `librarian_image` VALUES ('126', 'images/books/937972267.jpg', '红星照耀中国', '130');
INSERT INTO `librarian_image` VALUES ('127', 'images/books/960845729.jpg', '叫魂-1768年中国妖术大恐慌', '131');
INSERT INTO `librarian_image` VALUES ('128', 'images/books/973677565.jpg', '枪炮、病菌与钢铁-人类社会的命运', '132');
INSERT INTO `librarian_image` VALUES ('129', 'images/books/976997648.jpg', '南京大屠杀-第二次世界大战中被遗忘的大浩劫', '133');
INSERT INTO `librarian_image` VALUES ('130', 'images/books/931599814.jpg', '第三帝国的到来-第三帝国三部曲01', '134');
INSERT INTO `librarian_image` VALUES ('131', 'images/books/915522580.jpg', '巨人的陨落-世纪三部曲', '135');
INSERT INTO `librarian_image` VALUES ('132', 'images/books/984779732.jpg', '东晋门阀政治', '136');
INSERT INTO `librarian_image` VALUES ('133', 'images/books/983195909.jpg', '伊朗四千年', '137');
INSERT INTO `librarian_image` VALUES ('134', 'images/books/949165034.jpg', '人类简史-从动物到上帝', '138');
INSERT INTO `librarian_image` VALUES ('135', 'images/books/975341773.jpg', '全球通史-从史前史到21世纪', '139');
INSERT INTO `librarian_image` VALUES ('136', 'images/books/990759818.jpg', '毛泽东选集 第一卷', '140');
INSERT INTO `librarian_image` VALUES ('137', 'images/books/986973563.jpg', '下沉年代', '141');
INSERT INTO `librarian_image` VALUES ('138', 'images/books/986914675.jpg', '最寒冷的冬天-美国人眼中的朝鲜战争', '142');
INSERT INTO `librarian_image` VALUES ('139', 'images/books/906154573.jpg', '祥瑞-王莽和他的时代', '143');
INSERT INTO `librarian_image` VALUES ('140', 'images/books/935027692.jpg', '三国演义（全二册）', '144');
INSERT INTO `librarian_image` VALUES ('141', 'images/books/938275119.jpg', '中世纪之美', '145');
INSERT INTO `librarian_image` VALUES ('142', 'images/books/936725951.jpg', '明朝那些事儿', '146');
INSERT INTO `librarian_image` VALUES ('143', 'images/books/949001979.jpg', '人类群星闪耀时-十四篇历史特写', '147');
INSERT INTO `librarian_image` VALUES ('144', 'images/books/958215451.jpg', '中国古代文化常识-插图修订第4版', '148');
INSERT INTO `librarian_image` VALUES ('145', 'images/books/942089027.jpg', '崩盘-全球金融危机如何重塑世界', '149');
INSERT INTO `librarian_image` VALUES ('146', 'images/books/900986127.jpg', '显微镜下的大明-六个罕为人知的明代档案 六个尘封已久的民生往事', '150');
INSERT INTO `librarian_image` VALUES ('147', 'images/books/935360368.jpg', '万古江河-中国历史文化的转折与开展', '151');
INSERT INTO `librarian_image` VALUES ('148', 'images/books/990268430.jpg', '中国通史-民国以来畅销不衰的国史经典读本', '152');
INSERT INTO `librarian_image` VALUES ('149', 'images/books/973766267.jpg', '长安客', '153');
INSERT INTO `librarian_image` VALUES ('150', 'images/books/966134016.jpg', '潜规则（修订版）-中国历史中的真实游戏', '154');
INSERT INTO `librarian_image` VALUES ('151', 'images/books/944121717.jpg', '奥斯维辛-一部历史', '155');
INSERT INTO `librarian_image` VALUES ('152', 'images/books/926956211.jpg', '失败者的春秋', '156');
INSERT INTO `librarian_image` VALUES ('153', 'images/books/991332860.jpg', '山月记', '157');
INSERT INTO `librarian_image` VALUES ('154', 'images/books/898007808.jpg', '伦敦日记-苏联驻伦敦大使二战回忆', '158');
INSERT INTO `librarian_image` VALUES ('155', 'images/books/915994493.jpg', '塔利班-宗教极端主义在阿富汗及其周边地区', '159');
INSERT INTO `librarian_image` VALUES ('156', 'images/books/952475402.jpg', '天朝的崩溃（修订版）-鸦片战争再研究', '160');
INSERT INTO `librarian_image` VALUES ('157', 'images/books/987474936.jpg', '撒哈拉的故事', '161');
INSERT INTO `librarian_image` VALUES ('158', 'images/books/925816392.jpg', '失落的卫星-深入中亚大陆的旅程', '162');
INSERT INTO `librarian_image` VALUES ('159', 'images/books/983753768.jpg', '重走-在公路、河流和驿道上寻找西南联大', '164');
INSERT INTO `librarian_image` VALUES ('160', 'images/books/965373712.jpg', '午夜降临前抵达', '165');
INSERT INTO `librarian_image` VALUES ('161', 'images/books/954107061.jpg', '江城', '166');
INSERT INTO `librarian_image` VALUES ('162', 'images/books/911766807.jpg', '森林、冰河与鲸', '167');
INSERT INTO `librarian_image` VALUES ('163', 'images/books/941252723.jpg', '寻路中国-从乡村到工厂的自驾之旅', '168');
INSERT INTO `librarian_image` VALUES ('164', 'images/books/902538536.jpg', '旅行之木', '169');
INSERT INTO `librarian_image` VALUES ('165', 'images/books/902635982.jpg', '在中国大地上-搭火车旅行记', '170');
INSERT INTO `librarian_image` VALUES ('166', 'images/books/899561800.jpg', '撒哈拉的故事', '171');
INSERT INTO `librarian_image` VALUES ('167', 'images/books/982409939.jpg', '永恒的时光之旅', '172');
INSERT INTO `librarian_image` VALUES ('168', 'images/books/989799176.jpg', '一个人的朝圣', '173');
INSERT INTO `librarian_image` VALUES ('169', 'images/books/910613022.jpg', '夜航西飞', '174');
INSERT INTO `librarian_image` VALUES ('170', 'images/books/983439369.jpg', '撒哈拉的故事', '175');
INSERT INTO `librarian_image` VALUES ('171', 'images/books/984563690.jpg', '沿着季风的方向-从印度到东南亚的旅程', '176');
INSERT INTO `librarian_image` VALUES ('172', 'images/books/983319704.jpg', '在路上', '177');
INSERT INTO `librarian_image` VALUES ('173', 'images/books/973042057.jpg', '走过兴都库什山-深入阿富汗内陆', '178');
INSERT INTO `librarian_image` VALUES ('174', 'images/books/971951842.jpg', '乖，摸摸头', '179');
INSERT INTO `librarian_image` VALUES ('175', 'images/books/972442562.jpg', '阿富汗访古行记', '180');
INSERT INTO `librarian_image` VALUES ('176', 'images/books/910253976.jpg', '天真的人类学家-小泥屋笔记&重返多瓦悠兰', '181');
INSERT INTO `librarian_image` VALUES ('177', 'images/books/972640050.jpg', '阿勒泰的角落', '182');
INSERT INTO `librarian_image` VALUES ('178', 'images/books/896579978.jpg', '我的阿勒泰', '183');
INSERT INTO `librarian_image` VALUES ('179', 'images/books/966394515.jpg', 'DEPART-朱一龙首本写真集', '184');
INSERT INTO `librarian_image` VALUES ('180', 'images/books/976847457.jpg', '旅行的艺术', '185');
INSERT INTO `librarian_image` VALUES ('181', 'images/books/961903401.jpg', '万水千山走遍', '186');
INSERT INTO `librarian_image` VALUES ('182', 'images/books/960176890.jpg', '北方的空地', '187');
INSERT INTO `librarian_image` VALUES ('183', 'images/books/961914520.jpg', '纵身入山海', '188');
INSERT INTO `librarian_image` VALUES ('184', 'images/books/918164764.jpg', '撒哈拉的故事', '189');
INSERT INTO `librarian_image` VALUES ('185', 'images/books/966096754.jpg', '带一本书去巴黎', '190');
INSERT INTO `librarian_image` VALUES ('186', 'images/books/940611653.jpg', '行走的柠檬-意大利的柑橘园之旅', '191');
INSERT INTO `librarian_image` VALUES ('187', 'images/books/909376369.jpg', '年过五十，我决定“离家出走”', '192');
INSERT INTO `librarian_image` VALUES ('188', 'images/books/971261628.jpg', '彻悟-印度朝圣之旅', '193');
INSERT INTO `librarian_image` VALUES ('189', 'images/books/959991812.jpg', '流动的餐桌-世界铁路饮食纪行', '194');
INSERT INTO `librarian_image` VALUES ('190', 'images/books/938384982.jpg', '在漫长的旅途中', '195');
INSERT INTO `librarian_image` VALUES ('191', 'images/books/903530416.jpg', '从大都到上都-在古道上重新发现中国', '196');
INSERT INTO `librarian_image` VALUES ('192', 'images/books/907426864.jpg', '假如真有时光机', '197');
INSERT INTO `librarian_image` VALUES ('193', 'images/books/912212488.jpg', '沿着塞纳河到翡冷翠', '198');
INSERT INTO `librarian_image` VALUES ('194', 'images/books/988133999.jpg', '丹麦一年-追寻幸福生活的秘密', '199');
INSERT INTO `librarian_image` VALUES ('195', 'images/books/966830153.jpg', '去他的巴西', '200');
INSERT INTO `librarian_image` VALUES ('196', 'images/books/899403708.jpg', '阿弥陀佛么么哒', '201');
INSERT INTO `librarian_image` VALUES ('197', 'images/books/963054516.jpg', '夜航西飞', '202');
INSERT INTO `librarian_image` VALUES ('198', 'images/books/992516248.jpg', '走出荒野', '203');
INSERT INTO `librarian_image` VALUES ('199', 'images/books/905805845.jpg', '午夜降临前抵达-A Central European Odyssey', '204');
INSERT INTO `librarian_image` VALUES ('200', 'images/books/935315450.jpg', '仿佛若有光-大理访谈录', '205');
INSERT INTO `librarian_image` VALUES ('201', 'images/books/943734859.jpg', '寻路阿富汗-在历史与现实之间', '206');
INSERT INTO `librarian_image` VALUES ('202', 'images/books/941908537.jpg', '东京一年', '207');
INSERT INTO `librarian_image` VALUES ('203', 'images/books/953775347.jpg', '碎嘴许美达的生活碎片', '208');
INSERT INTO `librarian_image` VALUES ('204', 'images/books/919382135.jpg', '狗夫200天', '209');
INSERT INTO `librarian_image` VALUES ('205', 'images/books/943715264.jpg', '我不', '210');
INSERT INTO `librarian_image` VALUES ('206', 'images/books/942367679.jpg', '龙舌兰油-迷失墨西哥', '211');
INSERT INTO `librarian_image` VALUES ('207', 'images/books/957693411.jpg', '旅行之道-来自路上的启示', '212');
INSERT INTO `librarian_image` VALUES ('208', 'images/books/942974585.jpg', '旅行的艺术', '213');
INSERT INTO `librarian_image` VALUES ('209', 'images/books/938852793.jpg', '夏日走过山间', '214');
INSERT INTO `librarian_image` VALUES ('210', 'images/books/898315506.jpg', '泛若不系之舟', '215');
INSERT INTO `librarian_image` VALUES ('211', 'images/books/944558316.jpg', '文化苦旅', '216');
INSERT INTO `librarian_image` VALUES ('212', 'images/books/954671302.jpg', '北欧，冰与火之地的寻真之旅', '217');
INSERT INTO `librarian_image` VALUES ('213', 'images/books/986061558.jpg', '当我在一个仲夏清晨出走', '218');
INSERT INTO `librarian_image` VALUES ('214', 'images/books/989739529.jpg', '远方的鼓声', '219');
INSERT INTO `librarian_image` VALUES ('215', 'images/books/992142052.jpg', '重返帕米尔-追寻玄奘与丝绸之路', '220');
INSERT INTO `librarian_image` VALUES ('216', 'images/books/973802354.jpg', '人类简史-从动物到上帝', '221');
INSERT INTO `librarian_image` VALUES ('217', 'images/books/942162200.jpg', '逛动物园是件正经事', '222');
INSERT INTO `librarian_image` VALUES ('218', 'images/books/972017573.jpg', '惊呆了！原来这就是社会学', '223');
INSERT INTO `librarian_image` VALUES ('219', 'images/books/957002298.jpg', '人体简史-你的身体30亿岁了', '224');
INSERT INTO `librarian_image` VALUES ('256', 'images/books/Django开发指南_0.jpg', '图司机-20210920-22271437.jpg', '225');
INSERT INTO `librarian_image` VALUES ('257', 'images/books/Django开发指南_0.jpg', '图司机-20210920-22271437.jpg', '226');

-- ----------------------------
-- Table structure for librarian_librarian
-- ----------------------------
DROP TABLE IF EXISTS `librarian_librarian`;
CREATE TABLE `librarian_librarian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of librarian_librarian
-- ----------------------------
INSERT INTO `librarian_librarian` VALUES ('1', '梓栋Code', 'zidong', '202cb962ac59075b964b07152d234b70');
INSERT INTO `librarian_librarian` VALUES ('2', '梓栋Code', 'zidong', '202cb962ac59075b964b07152d234b70');
INSERT INTO `librarian_librarian` VALUES ('3', '梓栋Code', 'zidong', '202cb962ac59075b964b07152d234b70');
INSERT INTO `librarian_librarian` VALUES ('4', '梓栋Code', 'zidong', '202cb962ac59075b964b07152d234b70');
INSERT INTO `librarian_librarian` VALUES ('5', '梓栋Code', 'zidong', '202cb962ac59075b964b07152d234b70');
INSERT INTO `librarian_librarian` VALUES ('6', 'zidong', '梓栋Code', '202cb962ac59075b964b07152d234b70');

-- ----------------------------
-- Table structure for librarian_publisher
-- ----------------------------
DROP TABLE IF EXISTS `librarian_publisher`;
CREATE TABLE `librarian_publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of librarian_publisher
-- ----------------------------
INSERT INTO `librarian_publisher` VALUES ('1', '作家出版社', '作家');
INSERT INTO `librarian_publisher` VALUES ('2', '南海出版公司', '南海');
INSERT INTO `librarian_publisher` VALUES ('3', '北京联合出版公司', '北京联合');
INSERT INTO `librarian_publisher` VALUES ('4', '天津人民出版社', '天津人民');
INSERT INTO `librarian_publisher` VALUES ('5', '译林出版社', '译林');
INSERT INTO `librarian_publisher` VALUES ('6', '上海人民出版社', '上海人民');
INSERT INTO `librarian_publisher` VALUES ('7', '人民文学出版社', '人民文学');
INSERT INTO `librarian_publisher` VALUES ('8', '江苏凤凰文艺出版社', '江苏凤凰文艺');
INSERT INTO `librarian_publisher` VALUES ('9', '广西师范大学出版社', '广西师范大学');
INSERT INTO `librarian_publisher` VALUES ('10', '河南文艺出版社', '河南文艺');
INSERT INTO `librarian_publisher` VALUES ('11', '四川人民出版社', '四川人民');
INSERT INTO `librarian_publisher` VALUES ('12', '北京十月文艺出版社', '北京十月文艺');
INSERT INTO `librarian_publisher` VALUES ('13', '上海译文出版社', '上海译文');
INSERT INTO `librarian_publisher` VALUES ('14', '湖南文艺出版社', '湖南文艺');
INSERT INTO `librarian_publisher` VALUES ('15', '重庆出版社', '重庆');
INSERT INTO `librarian_publisher` VALUES ('16', '后浪丨中国纺织出版社', '后浪丨中国纺织');
INSERT INTO `librarian_publisher` VALUES ('17', '四川美术出版社', '四川美术');
INSERT INTO `librarian_publisher` VALUES ('18', '2017-12-6', '2017-12-6');
INSERT INTO `librarian_publisher` VALUES ('19', '后浪丨中国友谊出版公司', '后浪丨中国友谊');
INSERT INTO `librarian_publisher` VALUES ('20', '新星出版社', '新星');
INSERT INTO `librarian_publisher` VALUES ('21', '接力出版社', '接力');
INSERT INTO `librarian_publisher` VALUES ('22', '山东文艺出版社', '山东文艺');
INSERT INTO `librarian_publisher` VALUES ('23', '2021-9-3', '2021-9-3');
INSERT INTO `librarian_publisher` VALUES ('24', '雅众文化 | 湖南文艺出版社', '雅众文化 | 湖南文艺');
INSERT INTO `librarian_publisher` VALUES ('25', '后浪丨广东旅游出版社', '后浪丨广东旅游');
INSERT INTO `librarian_publisher` VALUES ('26', '2019-3-4', '2019-3-4');
INSERT INTO `librarian_publisher` VALUES ('27', '雅众文化/天津人民出版社', '雅众文化/天津人民');
INSERT INTO `librarian_publisher` VALUES ('28', '東立出版社', '東立');
INSERT INTO `librarian_publisher` VALUES ('29', '后浪丨湖南美术出版社', '后浪丨湖南美术');
INSERT INTO `librarian_publisher` VALUES ('30', '中国广播影视出版社', '中国广播影视');
INSERT INTO `librarian_publisher` VALUES ('31', '2017-7-13', '2017-7-13');
INSERT INTO `librarian_publisher` VALUES ('32', '后浪丨 湖南美术出版社', '后浪丨 湖南美术');
INSERT INTO `librarian_publisher` VALUES ('33', '后浪丨北京联合出版公司', '后浪丨北京联合');
INSERT INTO `librarian_publisher` VALUES ('34', '后浪丨四川文艺出版社', '后浪丨四川文艺');
INSERT INTO `librarian_publisher` VALUES ('35', '浙江人民美术出版社', '浙江人民美术');
INSERT INTO `librarian_publisher` VALUES ('36', '東立', '東立');
INSERT INTO `librarian_publisher` VALUES ('37', '東立出版社有限公司', '東立');
INSERT INTO `librarian_publisher` VALUES ('38', '后浪丨中国华侨出版社', '后浪丨中国华侨');
INSERT INTO `librarian_publisher` VALUES ('39', '2021-3-4', '2021-3-4');
INSERT INTO `librarian_publisher` VALUES ('40', '北京科学技术出版社', '北京科学技术');
INSERT INTO `librarian_publisher` VALUES ('41', '湖南美术出版社', '湖南美术');
INSERT INTO `librarian_publisher` VALUES ('42', '浙江文艺出版社', '浙江文艺');
INSERT INTO `librarian_publisher` VALUES ('43', '一頁folio | 广西师范大学出版社', '一頁folio | 广西师范大学');
INSERT INTO `librarian_publisher` VALUES ('44', '长江文艺出版社', '长江文艺');
INSERT INTO `librarian_publisher` VALUES ('45', '后浪丨上海文化出版社', '后浪丨上海文化');
INSERT INTO `librarian_publisher` VALUES ('46', '2020-4-20', '2020-4-20');
INSERT INTO `librarian_publisher` VALUES ('47', '海南出版社', '海南');
INSERT INTO `librarian_publisher` VALUES ('48', '2020-12-7', '2020-12-7');
INSERT INTO `librarian_publisher` VALUES ('49', '2002-8', '2002-8');
INSERT INTO `librarian_publisher` VALUES ('50', '四川科学技术出版社', '四川科学技术');
INSERT INTO `librarian_publisher` VALUES ('51', '文汇出版社', '文汇');
INSERT INTO `librarian_publisher` VALUES ('52', '2011-10-21', '2011-10-21');
INSERT INTO `librarian_publisher` VALUES ('53', '人民邮电出版社', '人民邮电');
INSERT INTO `librarian_publisher` VALUES ('54', '北京日报出版社', '北京日报');
INSERT INTO `librarian_publisher` VALUES ('55', '南方出版社', '南方');
INSERT INTO `librarian_publisher` VALUES ('56', '后浪 | 大象出版社', '后浪 | 大象');
INSERT INTO `librarian_publisher` VALUES ('57', '2019-5-1', '2019-5-1');
INSERT INTO `librarian_publisher` VALUES ('58', '台海出版社', '台海');
INSERT INTO `librarian_publisher` VALUES ('59', '国际文化出版公司', '国际文化');
INSERT INTO `librarian_publisher` VALUES ('60', '后浪丨湖南美术出版公司', '后浪丨湖南美术');
INSERT INTO `librarian_publisher` VALUES ('61', '2019-7-31', '2019-7-31');
INSERT INTO `librarian_publisher` VALUES ('62', '生活·读书·新知三联书店', '生活·读书·新知三联书店');
INSERT INTO `librarian_publisher` VALUES ('63', '世界图书出版公司', '世界图书');
INSERT INTO `librarian_publisher` VALUES ('64', '华中科技大学出版社', '华中科技大学');
INSERT INTO `librarian_publisher` VALUES ('65', '中信出版社', '中信');
INSERT INTO `librarian_publisher` VALUES ('66', '辽宁科学技术出版社', '辽宁科学技术');
INSERT INTO `librarian_publisher` VALUES ('67', '理想国｜广西师范大学出版社', '理想国｜广西师范大学');
INSERT INTO `librarian_publisher` VALUES ('68', '浙江人民出版社', '浙江人民');
INSERT INTO `librarian_publisher` VALUES ('69', '2001', '2001');
INSERT INTO `librarian_publisher` VALUES ('70', '中国海关出版社', '中国海关');
INSERT INTO `librarian_publisher` VALUES ('71', '1997-5', '1997-5');
INSERT INTO `librarian_publisher` VALUES ('72', '生活·读书·新知三联书店 上海三联书店', '生活·读书·新知三联书店 上海三联书店');
INSERT INTO `librarian_publisher` VALUES ('73', '上海世纪出版集团', '上海世纪');
INSERT INTO `librarian_publisher` VALUES ('74', '九州出版社', '九州');
INSERT INTO `librarian_publisher` VALUES ('75', '北京大学出版社', '北京大学');
INSERT INTO `librarian_publisher` VALUES ('76', '中信出版集团', '中信');
INSERT INTO `librarian_publisher` VALUES ('77', '人民出版社', '人民');
INSERT INTO `librarian_publisher` VALUES ('78', '理想国|台海出版社', '理想国|台海');
INSERT INTO `librarian_publisher` VALUES ('79', '上海文艺出版社', '上海文艺');
INSERT INTO `librarian_publisher` VALUES ('80', '理想国｜上海三联书店', '理想国｜上海三联书店');
INSERT INTO `librarian_publisher` VALUES ('81', '理想国|湖南人民出版社', '理想国|湖南人民');
INSERT INTO `librarian_publisher` VALUES ('82', '群言出版社', '群言');
INSERT INTO `librarian_publisher` VALUES ('83', '复旦大学出版社', '复旦大学');
INSERT INTO `librarian_publisher` VALUES ('84', '百花文艺出版社', '百花文艺');
INSERT INTO `librarian_publisher` VALUES ('85', '中华书局', '中华书局');
INSERT INTO `librarian_publisher` VALUES ('86', '2014-10', '2014-10');
INSERT INTO `librarian_publisher` VALUES ('87', '哈尔滨出版社', '哈尔滨');
INSERT INTO `librarian_publisher` VALUES ('88', '后浪丨九州出版社', '后浪丨九州');
INSERT INTO `librarian_publisher` VALUES ('89', '商务印书馆', '商务印书馆');
INSERT INTO `librarian_publisher` VALUES ('90', '万卷出版公司', '万卷');
INSERT INTO `librarian_publisher` VALUES ('91', '云南人民出版社', '云南人民');
INSERT INTO `librarian_publisher` VALUES ('92', '中国市场出版社', '中国市场');
INSERT INTO `librarian_publisher` VALUES ('93', '春潮 | 中信出版集团', '春潮 | 中信');
INSERT INTO `librarian_publisher` VALUES ('94', '皇冠出版社', '皇冠');
INSERT INTO `librarian_publisher` VALUES ('95', '2002-5', '2002-5');
INSERT INTO `librarian_publisher` VALUES ('96', '浙江大学出版社', '浙江大学');
INSERT INTO `librarian_publisher` VALUES ('97', '浦睿文化·湖南文艺出版社', '浦睿文化·湖南文艺');
INSERT INTO `librarian_publisher` VALUES ('98', '南京大学出版社', '南京大学');
INSERT INTO `librarian_publisher` VALUES ('99', '中国大百科全书出版社', '中国大百科全书');
INSERT INTO `librarian_publisher` VALUES ('100', '理想国丨广西师范大学出版社', '理想国丨广西师范大学');
INSERT INTO `librarian_publisher` VALUES ('101', '东方出版中心', '东方');
INSERT INTO `librarian_publisher` VALUES ('102', '2020-1-8', '2020-1-8');
INSERT INTO `librarian_publisher` VALUES ('103', '江苏凤凰科学技术出版社', '江苏凤凰科学技术');
INSERT INTO `librarian_publisher` VALUES ('104', '湖南科学技术出版社', '湖南科学技术');
INSERT INTO `librarian_publisher` VALUES ('105', '辽宁教育出版社', '辽宁教育');
INSERT INTO `librarian_publisher` VALUES ('106', '科学出版社', '科学');
INSERT INTO `librarian_publisher` VALUES ('107', '后浪丨福建教育出版社', '后浪丨福建教育');
INSERT INTO `librarian_publisher` VALUES ('108', '上海文化出版社', '上海文化');
INSERT INTO `librarian_publisher` VALUES ('109', '北京联合出版有限公司', '北京联合');
INSERT INTO `librarian_publisher` VALUES ('110', '上海科学技术文献出版社', '上海科学技术文献');
INSERT INTO `librarian_publisher` VALUES ('111', '江西科学技术出版社', '江西科学技术');
INSERT INTO `librarian_publisher` VALUES ('112', '湖南文艺出版社&博集天卷', '湖南文艺');
INSERT INTO `librarian_publisher` VALUES ('113', '图灵｜人民邮电出版社', '图灵｜人民邮电');
INSERT INTO `librarian_publisher` VALUES ('114', '东方出版社', '东方');
INSERT INTO `librarian_publisher` VALUES ('115', '后浪丨四川美术出版社', '后浪丨四川美术');
INSERT INTO `librarian_publisher` VALUES ('116', '清华出版社', '北京五道口');
INSERT INTO `librarian_publisher` VALUES ('117', '清华出版社', '北京五道口');

-- ----------------------------
-- Table structure for librarian_user
-- ----------------------------
DROP TABLE IF EXISTS `librarian_user`;
CREATE TABLE `librarian_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `last_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=683 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of librarian_user
-- ----------------------------
INSERT INTO `librarian_user` VALUES ('1', 'cxia', '张丽', '3596d0eb64b469c38f25207835afe02b', '13067591600', '2021-09-20 17:36:00.623100');
INSERT INTO `librarian_user` VALUES ('2', 'xia69', '冯军', '0f085342896d07e672a314dcb6696479', '18281512715', '2021-09-20 06:42:26.000000');
INSERT INTO `librarian_user` VALUES ('3', 'gang74', '石冬梅', 'a10c9fe76bbb994cb2f3753be7ac514a', '14741492133', '2021-08-26 14:30:05.000000');
INSERT INTO `librarian_user` VALUES ('4', 'jie94', '贾华', '588f381e2cd66f104fe7fffb64364ade', '13027020042', '2021-08-24 13:05:41.000000');
INSERT INTO `librarian_user` VALUES ('5', 'mxiang', '郭桂珍', '87b59a8840b702c583c75387226e233f', '15876655177', '2021-09-20 15:09:27.441043');
INSERT INTO `librarian_user` VALUES ('6', 'juan37', '穆峰', 'ec2f2efe86e1e33e7635a14da9c92a68', '15837259358', '2021-09-12 21:19:43.000000');
INSERT INTO `librarian_user` VALUES ('7', 'mengxiuying', '冯瑜', '7fa2ea9fecb11fc2e8f4201f95ec91a8', '13612467856', '2021-09-03 06:58:26.000000');
INSERT INTO `librarian_user` VALUES ('8', 'kgu', '邓红霞', '211aa62eacfc6ffe8f7fe3f35be32df9', '13299313227', '2021-09-01 08:51:42.000000');
INSERT INTO `librarian_user` VALUES ('9', 'eluo', '赵秀云', 'ba0361634d26c30eae9811d09e153e76', '13847487449', '2021-09-07 07:07:46.000000');
INSERT INTO `librarian_user` VALUES ('10', 'yang72', '欧建国', '502d6e5d9a57a8992da3d5bcad672be4', '13406046590', '2021-08-26 21:16:06.000000');
INSERT INTO `librarian_user` VALUES ('11', 'lizhou', '程静', '677c88969ac12e092ca404a66a38a2b3', '18584549467', '2021-09-20 15:08:53.772680');
INSERT INTO `librarian_user` VALUES ('12', 'jingduan', '唐淑兰', 'ba932386b6158337da6a4635420540e5', '13145450772', '2021-08-30 09:44:24.000000');
INSERT INTO `librarian_user` VALUES ('13', 'pingdong', '任桂兰', '7756f46c39b3ca0434799354cdddbd15', '13369063946', '2021-08-31 23:26:43.000000');
INSERT INTO `librarian_user` VALUES ('14', 'jiangna', '王鑫', 'ee5a0d0a96221602fc415e786c3e0945', '13414788794', '2021-09-08 04:53:19.000000');
INSERT INTO `librarian_user` VALUES ('15', 'lihao', '陈玉英', 'a025633a088c112b31b4dcf6a62fef98', '15509367673', '2021-09-09 18:08:47.000000');
INSERT INTO `librarian_user` VALUES ('16', 'dtao', '吴宇', 'd185ceb5930cb5f6b6918eb758a1e2ae', '18134986879', '2021-09-13 02:32:32.000000');
INSERT INTO `librarian_user` VALUES ('17', 'jingqian', '唐丽娟', '5ac49d9534960867c66031a9bffc52d0', '18584269403', '2021-08-30 18:36:27.000000');
INSERT INTO `librarian_user` VALUES ('18', 'donggang', '杨雪', '95079c2468d75fcdbf5bdb3744195f1e', '14713815502', '2021-09-07 05:39:51.000000');
INSERT INTO `librarian_user` VALUES ('19', 'yangxiuying', '尤军', 'a63de9d4c25d7d01930a8cb6f3c6c053', '15162816007', '2021-09-08 02:16:24.000000');
INSERT INTO `librarian_user` VALUES ('20', 'zhangping', '王桂英', 'c6e0d4d852acf200ed2fd0d3ec257fe9', '13063498498', '2021-08-24 01:39:39.000000');
INSERT INTO `librarian_user` VALUES ('21', 'minchang', '陈波', '3c231f29893885f764dab6ee6f224d27', '13839710414', '2021-09-10 05:24:24.000000');
INSERT INTO `librarian_user` VALUES ('22', 'tao07', '董秀兰', '4d1735f832c3d03f41a15eef7552f760', '18575692312', '2021-09-15 00:10:51.000000');
INSERT INTO `librarian_user` VALUES ('23', 'lye', '沈丽华', 'b45c309a94204d351224e2e762c3b8a8', '15593088103', '2021-09-07 15:56:53.000000');
INSERT INTO `librarian_user` VALUES ('24', 'wei28', '陈宁', 'd1b29c10d9b3f1a7c26e51cf6fd88748', '14724970133', '2021-09-02 17:13:40.000000');
INSERT INTO `librarian_user` VALUES ('25', 'jiayong', '邵玲', '50feb150972bf377159775d053a86a11', '18284696019', '2021-09-18 14:39:02.000000');
INSERT INTO `librarian_user` VALUES ('26', 'nfu', '冯桂荣', 'e3be1e8f0fd31412f75796470072cacf', '18983970325', '2021-09-11 08:58:52.000000');
INSERT INTO `librarian_user` VALUES ('27', 'minhao', '王建', 'e9c4b74584f9e2d9b6fa35ce1b3d8318', '13718782875', '2021-08-27 10:35:47.000000');
INSERT INTO `librarian_user` VALUES ('28', 'wliang', '李婷', '8bb5b91190281787835c57c5cd2bc0f7', '15344768800', '2021-09-06 10:07:39.000000');
INSERT INTO `librarian_user` VALUES ('29', 'tao76', '王洁', 'a88afc3bc266dd22b52cbfe44b9706a2', '13486556939', '2021-09-04 11:33:31.000000');
INSERT INTO `librarian_user` VALUES ('30', 'ytan', '杨秀珍', 'a7499d753f1c2317bdd24bf5e5b2fd7d', '13897114329', '2021-09-10 23:42:41.000000');
INSERT INTO `librarian_user` VALUES ('31', 'xialu', '冯旭', 'ddbd84642ce8765e3a4418f7673a55f5', '13436827538', '2021-09-06 01:50:54.000000');
INSERT INTO `librarian_user` VALUES ('32', 'fshen', '张畅', '91ac97087be2d05f70a2b3cce2b11df8', '15952838658', '2021-09-17 09:44:55.000000');
INSERT INTO `librarian_user` VALUES ('33', 'lihe', '鞠璐', '85952d812a7928c0ee569672abd08ea5', '18818504012', '2021-09-13 01:19:51.000000');
INSERT INTO `librarian_user` VALUES ('34', 'ming07', '李辉', 'd9c47af61886d31920f7b10776b18285', '13863427602', '2021-09-17 22:49:27.000000');
INSERT INTO `librarian_user` VALUES ('35', 'yanfang', '余晶', '50e3c263b9986df8a52bb21a05ad5bf6', '18150082236', '2021-08-27 23:49:02.000000');
INSERT INTO `librarian_user` VALUES ('36', 'fxu', '宋峰', 'c230be14d7c76bd4119c39c308e37866', '18539463711', '2021-09-06 16:38:58.000000');
INSERT INTO `librarian_user` VALUES ('37', 'na61', '王璐', '0b3cd5324d5384aa9ee223b41a4dbb3e', '15042988103', '2021-08-26 19:19:08.000000');
INSERT INTO `librarian_user` VALUES ('38', 'dren', '夏斌', '115f21d270dc71e0bb400832b8184eff', '15590922877', '2021-09-14 02:31:55.000000');
INSERT INTO `librarian_user` VALUES ('39', 'jing33', '胡晨', 'e4ba009f1d303622e544c38fbfc5c18e', '18549441688', '2021-08-26 11:12:41.000000');
INSERT INTO `librarian_user` VALUES ('40', 'zhongguiying', '姜雪', '9a5c030001d29b4a5de4f1a6937d4b41', '13147163401', '2021-09-02 11:46:32.000000');
INSERT INTO `librarian_user` VALUES ('41', 'plong', '沈瑞', '50a1e351e21cd51206b1fb8b92d88cd0', '18667397103', '2021-09-02 07:58:10.000000');
INSERT INTO `librarian_user` VALUES ('42', 'zoutao', '徐建军', '44470a2e29776c141826710ab5e167d1', '15222698558', '2021-09-20 06:40:18.000000');
INSERT INTO `librarian_user` VALUES ('43', 'ryu', '庄杰', 'f6c35ee55a673f2a8f7daef839e60d69', '18645130823', '2021-09-14 12:09:18.000000');
INSERT INTO `librarian_user` VALUES ('44', 'liaojuan', '胡桂兰', 'e43143528d6b64a514fff00fbf21aae0', '15778836848', '2021-09-08 09:59:34.000000');
INSERT INTO `librarian_user` VALUES ('45', 'ayi', '张丽丽', 'b4013cba5fecaec7f9d4e2e2a5ff3de1', '14573924408', '2021-09-05 09:45:20.000000');
INSERT INTO `librarian_user` VALUES ('46', 'songfang', '鲁建平', 'a53f0de9f04212a6c99273580a3fd7af', '15732322748', '2021-09-18 19:41:24.000000');
INSERT INTO `librarian_user` VALUES ('47', 'jsun', '吕玉英', 'fad3129631fad3e73b6ec8826a5b24ab', '13638034151', '2021-08-25 09:14:58.000000');
INSERT INTO `librarian_user` VALUES ('48', 'zhaoli', '李海燕', 'edb3c9752a7fc385a3aa0f35ad9099d4', '15589998953', '2021-08-22 12:40:01.000000');
INSERT INTO `librarian_user` VALUES ('49', 'shu', '王建国', 'd5c17d67688f62b834b9c5f40df70dc8', '18284499226', '2021-08-28 02:46:03.000000');
INSERT INTO `librarian_user` VALUES ('50', 'qianglin', '萧凤英', '99d7825074b8ed4e7cea86de8091f070', '15202293734', '2021-09-18 18:11:55.000000');
INSERT INTO `librarian_user` VALUES ('51', 'fanwei', '牛文', '86b0b6acdaa4afd3b4213a6453858b9b', '15575035598', '2021-08-25 12:55:38.000000');
INSERT INTO `librarian_user` VALUES ('52', 'xiahe', '魏阳', '033313de67fa4aeb4f6fe8ac3121c50f', '18120704452', '2021-09-02 00:30:28.000000');
INSERT INTO `librarian_user` VALUES ('53', 'min37', '田金凤', '92f30faca26598e8b852b9d082c135c6', '15320645667', '2021-09-10 04:13:04.000000');
INSERT INTO `librarian_user` VALUES ('54', 'jgu', '孟洁', 'd8ca20bbd8fecdd0fc6e1779ab9d3f46', '18757234174', '2021-08-29 09:30:54.000000');
INSERT INTO `librarian_user` VALUES ('55', 'xiafang', '王秀华', '0ce959eb67a80649ef0f1ef8086b5e92', '15755485650', '2021-09-13 06:24:38.000000');
INSERT INTO `librarian_user` VALUES ('56', 'hqiu', '周颖', 'e816fe08aab4a658e7341ae6847614dd', '13676084459', '2021-09-10 14:36:59.000000');
INSERT INTO `librarian_user` VALUES ('57', 'fxue', '李斌', 'b669419bf8391661e1d1ca4da722babf', '14559780395', '2021-09-11 04:39:01.000000');
INSERT INTO `librarian_user` VALUES ('58', 'qiantao', '冯桂花', 'c550938926ae15ee4cd2084de905bf29', '15323174115', '2021-09-09 11:46:20.000000');
INSERT INTO `librarian_user` VALUES ('59', 'ping10', '王萍', '99e97af2341737ac0245c4b336254e7c', '13383042106', '2021-09-07 20:10:33.000000');
INSERT INTO `librarian_user` VALUES ('60', 'xumin', '庄婷婷', 'cbb4a271a86f3c9ed954492c882d7703', '14788522078', '2021-08-22 10:35:39.000000');
INSERT INTO `librarian_user` VALUES ('61', 'leiding', '朱欣', 'c4e3ca24da56c41ebbb7acccb0eddb38', '15289567720', '2021-09-02 12:30:15.000000');
INSERT INTO `librarian_user` VALUES ('62', 'zouyong', '秦桂珍', '27847178d9d01af384657eca233207a5', '14742175723', '2021-09-17 18:48:20.000000');
INSERT INTO `librarian_user` VALUES ('63', 'qiang57', '朱帅', '89ba20f17dd27d7038955e324ba50598', '14504974191', '2021-08-31 16:47:54.000000');
INSERT INTO `librarian_user` VALUES ('64', 'wei72', '许佳', 'fd48cf47c4df247e781d8699140bf8d1', '15640364677', '2021-08-21 19:43:30.000000');
INSERT INTO `librarian_user` VALUES ('65', 'ming73', '秦金凤', '1f12c10e7325e9608882ff18a4b84eba', '18858015847', '2021-09-10 09:11:21.000000');
INSERT INTO `librarian_user` VALUES ('66', 'yliang', '冉丽丽', 'fe8e7fd1d63b89a46597578ec540b783', '18935231293', '2021-09-05 02:52:45.000000');
INSERT INTO `librarian_user` VALUES ('67', 'guiying91', '余芳', 'e9eb235ea44c25a3d889f739ce06f85e', '13179620130', '2021-09-01 22:49:45.000000');
INSERT INTO `librarian_user` VALUES ('68', 'zcui', '刘龙', '8e9648005a9b43fd5bfe04db70531253', '13039193436', '2021-08-24 08:50:15.000000');
INSERT INTO `librarian_user` VALUES ('69', 'yimin', '萧林', '17c6d9a1975ec40f5c8a65b11dbad93e', '15702951289', '2021-09-02 09:23:31.000000');
INSERT INTO `librarian_user` VALUES ('70', 'weimao', '周欢', '67e2a08292bf92268419ffd2af01a4ac', '18568462546', '2021-09-17 05:36:54.000000');
INSERT INTO `librarian_user` VALUES ('71', 'xzhong', '丁刚', '25d927956de3f1d48fd65d9815799d9b', '13931287177', '2021-09-04 05:30:30.000000');
INSERT INTO `librarian_user` VALUES ('72', 'changmin', '王英', '5747f6e69d1c41ba55a20c9533552751', '15747053962', '2021-09-08 04:27:38.000000');
INSERT INTO `librarian_user` VALUES ('73', 'yili', '邢云', 'f431cbbb757c2be3641c8c6f292dae06', '13066820667', '2021-08-31 18:40:43.000000');
INSERT INTO `librarian_user` VALUES ('74', 'wei10', '孟成', '1453c35647a9b107ee240e831328cfba', '13057279416', '2021-08-25 09:05:25.000000');
INSERT INTO `librarian_user` VALUES ('75', 'juanwan', '门兰英', 'f073d4bb006b383a52f2be04f8f49a95', '13750633013', '2021-09-15 18:30:26.000000');
INSERT INTO `librarian_user` VALUES ('76', 'li61', '胡想', '07a0d1f06673f472345a55ecc068816b', '13078256351', '2021-09-13 15:39:28.000000');
INSERT INTO `librarian_user` VALUES ('77', 'dbai', '张兰英', 'e5f86cf3b7f21e9af204f458be6b141c', '15629300140', '2021-09-05 04:35:38.000000');
INSERT INTO `librarian_user` VALUES ('78', 'yinyang', '张海燕', '052b8c92e4b8e0233fcf3ab1b2544f9b', '18934351520', '2021-09-08 20:53:23.000000');
INSERT INTO `librarian_user` VALUES ('79', 'fang23', '赵利', '049f7efb376c89cb0617da002ed3873b', '13847526341', '2021-09-01 09:59:33.000000');
INSERT INTO `librarian_user` VALUES ('80', 'zzhu', '葛娟', 'd0e3d7ab63c6bbe5b20ffc6506380182', '13759953662', '2021-09-08 08:12:13.000000');
INSERT INTO `librarian_user` VALUES ('81', 'guiyingzhang', '邵阳', 'f836476e383bf1f8c0675969effcf816', '18975905267', '2021-08-23 07:29:44.000000');
INSERT INTO `librarian_user` VALUES ('82', 'houguiying', '赵强', '7d685239f3a0e72d8213e3b2e8ee4e43', '13174956928', '2021-08-24 00:10:35.000000');
INSERT INTO `librarian_user` VALUES ('83', 'lei79', '余瑞', '5f553a050dc078f64d92467d26c319d3', '13804423883', '2021-09-09 09:25:11.000000');
INSERT INTO `librarian_user` VALUES ('84', 'jingwen', '吴红梅', 'f1c85ba6dc8930de3959040e81e429b4', '13864319408', '2021-08-27 08:49:59.000000');
INSERT INTO `librarian_user` VALUES ('85', 'xiulan93', '王玉', 'eb5f13dd2c48f8c87e15c94a787c22d3', '18178722277', '2021-09-19 08:27:59.000000');
INSERT INTO `librarian_user` VALUES ('86', 'zlu', '费建军', 'db2dd9205f0ad45b1e0f1c430f157e67', '14578928292', '2021-09-10 14:16:42.000000');
INSERT INTO `librarian_user` VALUES ('87', 'xiulan31', '连红', 'af69b899994d4adb96bd635278b64a5e', '18217210427', '2021-09-16 08:47:18.000000');
INSERT INTO `librarian_user` VALUES ('88', 'gang59', '韦春梅', '8b6e7804b93d80a7cfc58323a5ce94a5', '15246075298', '2021-09-14 03:28:49.000000');
INSERT INTO `librarian_user` VALUES ('89', 'jinjun', '李华', 'db365a019220e2e7f01ba49d55a4a618', '13275811843', '2021-09-06 18:49:24.000000');
INSERT INTO `librarian_user` VALUES ('90', 'linjuan', '韩建平', 'd19fca668a41fc057662a39ce982b241', '18237063334', '2021-09-19 05:07:31.000000');
INSERT INTO `librarian_user` VALUES ('91', 'xia97', '徐莉', 'dace781b0bd3a6f38d0dccdf518edeb6', '13755942194', '2021-09-10 20:46:22.000000');
INSERT INTO `librarian_user` VALUES ('92', 'sufang', '赵桂荣', 'f192dd3f2492a7109402d777f41429f4', '18601923887', '2021-09-08 14:59:29.000000');
INSERT INTO `librarian_user` VALUES ('93', 'daili', '屈丽娟', '9af36e2f4b72122857905faafbd200ff', '15884914230', '2021-08-24 10:40:09.000000');
INSERT INTO `librarian_user` VALUES ('94', 'djia', '汤帅', '4bdb6a40a9134cd89951628a2b7cc92b', '18888028642', '2021-09-17 01:02:46.000000');
INSERT INTO `librarian_user` VALUES ('95', 'xiuying85', '杨玉华', '21c6e791abffa0f5f9e1c0674168ac65', '15720719114', '2021-09-03 16:20:52.000000');
INSERT INTO `librarian_user` VALUES ('96', 'dcai', '马桂花', '57221a28fbd8b2b3b9de464f69902f75', '13944751167', '2021-09-10 04:30:34.000000');
INSERT INTO `librarian_user` VALUES ('97', 'rchen', '焦娜', '7adab09621925c44ccbdddad6554aaa8', '13898274306', '2021-08-31 14:44:41.000000');
INSERT INTO `librarian_user` VALUES ('98', 'zhuyang', '刘阳', '94d6794912c34a7933ce6cc8c9d2d142', '15873588488', '2021-08-25 07:04:41.000000');
INSERT INTO `librarian_user` VALUES ('99', 'mingzhong', '王桂珍', 'bccdb140318fbcda07846799369ef7e7', '18093147166', '2021-09-18 23:47:35.000000');
INSERT INTO `librarian_user` VALUES ('100', 'mmao', '胡凯', 'ec8c0de6703c61bac9eb6e0f191953ec', '14570834591', '2021-09-02 00:26:39.000000');
INSERT INTO `librarian_user` VALUES ('101', 'jingma', '张晶', 'dfa441e6a858a519c126c5a45db33cbf', '15088986756', '2021-09-18 16:55:46.000000');
INSERT INTO `librarian_user` VALUES ('102', 'xia74', '刘桂花', '8cde4e9cbd34fa3534e7d927c7b80bea', '13746809441', '2021-09-11 14:24:37.000000');
INSERT INTO `librarian_user` VALUES ('103', 'liangming', '宋瑞', 'e02a581eccf60f230ec0a5489689eff1', '13245595927', '2021-08-30 01:59:59.000000');
INSERT INTO `librarian_user` VALUES ('104', 'lei26', '吴桂荣', '4910921c9bdc7e162cb44cbab015161f', '15391974350', '2021-09-17 02:56:53.000000');
INSERT INTO `librarian_user` VALUES ('105', 'xialin', '陈琴', '836cf026f4f97537a3eefb73747e7c5e', '18785551237', '2021-09-16 19:18:50.000000');
INSERT INTO `librarian_user` VALUES ('106', 'lei74', '杨桂芝', 'a8e955063a58c34171fd1ebd97661db5', '13635422543', '2021-08-26 18:54:28.000000');
INSERT INTO `librarian_user` VALUES ('107', 'pengjuan', '冯洁', '344931e7bcbc68dc02f7df862dd30237', '18094421201', '2021-08-23 18:55:31.000000');
INSERT INTO `librarian_user` VALUES ('108', 'vqian', '陈桂芝', 'dca733dbda85f0803bf5c9ee6ef1e0c2', '15669954857', '2021-09-16 07:14:56.000000');
INSERT INTO `librarian_user` VALUES ('109', 'gangcao', '魏桂兰', 'da139b665109acda9e2b3255f733982b', '15905455594', '2021-09-07 17:48:04.000000');
INSERT INTO `librarian_user` VALUES ('110', 'zhongjun', '杨颖', '427c00eaf363d4ce010f7b28977db0e8', '18105922313', '2021-08-28 22:47:54.000000');
INSERT INTO `librarian_user` VALUES ('111', 'gang07', '左健', '5a23470ae545f6f4a2d8d73fdacb9152', '18647762896', '2021-08-23 06:33:44.000000');
INSERT INTO `librarian_user` VALUES ('112', 'xiuying19', '徐秀珍', 'e192a5d3e6bcad648d2fa106b07bcad1', '13273793525', '2021-09-04 17:52:56.000000');
INSERT INTO `librarian_user` VALUES ('113', 'chenxia', '李洁', '9b08d817bab6a6929d5d110f39fc7f64', '13475489564', '2021-08-30 14:56:28.000000');
INSERT INTO `librarian_user` VALUES ('114', 'bsun', '谭成', 'bfd8821f74cfd5b616685fb0789fa1e4', '14503570910', '2021-09-17 15:33:39.000000');
INSERT INTO `librarian_user` VALUES ('115', 'panna', '牛婷', '3b22fba2a2a181778470caf0e6dd9a9c', '18085606488', '2021-08-30 12:23:23.000000');
INSERT INTO `librarian_user` VALUES ('116', 'dwan', '吴平', 'aae0b925bc1790b1099bd4098b2ef15b', '13928085604', '2021-09-14 02:52:21.000000');
INSERT INTO `librarian_user` VALUES ('117', 'leizhu', '陈春梅', '8937596b2c61393e1231d7a06f5769a8', '13736733800', '2021-09-19 23:28:26.000000');
INSERT INTO `librarian_user` VALUES ('118', 'qianglei', '赵欢', 'aedb7dafa9c0fab5955196e749dbaea1', '14556355009', '2021-08-23 04:21:19.000000');
INSERT INTO `librarian_user` VALUES ('119', 'nren', '王平', 'aec2321213bc6015b1fa1bf66259e80d', '18242141274', '2021-08-27 04:50:02.000000');
INSERT INTO `librarian_user` VALUES ('120', 'xiaguiying', '张凯', '350fd57d6d420f28bbde8bf9c2a02657', '15551869802', '2021-08-25 17:57:18.000000');
INSERT INTO `librarian_user` VALUES ('121', 'aqian', '杨秀珍', '480fe13903f8739c8f0cadab67853d93', '18603171550', '2021-08-29 07:23:56.000000');
INSERT INTO `librarian_user` VALUES ('122', 'yongtian', '罗淑珍', '2151badb0fff2585c17eeef08506e276', '15743834371', '2021-09-07 06:46:19.000000');
INSERT INTO `librarian_user` VALUES ('123', 'jiangxia', '陈秀兰', '9243b4aaba87627a1c9ceebc7ada3854', '15246401012', '2021-09-12 19:43:45.000000');
INSERT INTO `librarian_user` VALUES ('124', 'gangmeng', '邵斌', '5b5af2f763c96472ef1628ebcea28e32', '15550749909', '2021-08-22 07:11:46.000000');
INSERT INTO `librarian_user` VALUES ('125', 'ezhou', '高萍', 'a2a40eeb5ee9389d17bd7545a49dedc1', '18945930834', '2021-09-01 17:11:27.000000');
INSERT INTO `librarian_user` VALUES ('126', 'luchao', '冯琴', '2de816530c99b4e950017a0f43142153', '13210995433', '2021-08-31 22:57:40.000000');
INSERT INTO `librarian_user` VALUES ('127', 'dailei', '刘英', 'cb719072273ad1d2cba885bbbfcdff5d', '13948869764', '2021-09-10 05:29:42.000000');
INSERT INTO `librarian_user` VALUES ('128', 'juanli', '黄桂兰', 'e0cc458f1f231c13c73f741786e6bd3c', '13764994151', '2021-09-11 00:10:42.000000');
INSERT INTO `librarian_user` VALUES ('129', 'na22', '罗丽', '54f670ed2d23d3a453e37a45330385db', '15146849882', '2021-09-13 07:57:12.000000');
INSERT INTO `librarian_user` VALUES ('130', 'xiakang', '邓丽', '60f7ae3427c5c12b3e54ba9e55f81ebf', '15345997386', '2021-09-09 04:44:14.000000');
INSERT INTO `librarian_user` VALUES ('131', 'jlai', '傅玉英', '990890a86f50f23c956bb1ba30cce64a', '13746846269', '2021-09-04 01:04:20.000000');
INSERT INTO `librarian_user` VALUES ('132', 'weixiulan', '乔瑞', 'dc8c6d53a49713afd37861d077630697', '13769653861', '2021-09-12 18:41:48.000000');
INSERT INTO `librarian_user` VALUES ('133', 'nacai', '黄玉梅', 'ee1fd411b84777821d69761b3bc14809', '13565409119', '2021-09-09 12:18:24.000000');
INSERT INTO `librarian_user` VALUES ('134', 'qiang39', '郭鑫', '21bddf156a406ab389232ceaab7fc18f', '13469441799', '2021-09-03 23:33:53.000000');
INSERT INTO `librarian_user` VALUES ('135', 'yong42', '韦丽华', 'cf48df8f1e4316796bae7aa47f6111d3', '13836059239', '2021-09-19 23:31:20.000000');
INSERT INTO `librarian_user` VALUES ('136', 'qdai', '吴兰英', '41c74f48bb9bf4a6cc776a4d8f1f3853', '18575253480', '2021-09-13 01:17:14.000000');
INSERT INTO `librarian_user` VALUES ('137', 'fugang', '王红梅', '814a2d07d7a97d4b249ea51dc3ba14e9', '18579721542', '2021-09-07 10:48:10.000000');
INSERT INTO `librarian_user` VALUES ('138', 'xiuyingzeng', '李利', '07ec99a5f6a7e87cbe04e9b14fb6de0f', '18997185576', '2021-09-12 18:43:00.000000');
INSERT INTO `librarian_user` VALUES ('139', 'guiying65', '陈鹏', 'bbbe2dbdca7516022c80d704049b067d', '15613816540', '2021-09-13 03:50:45.000000');
INSERT INTO `librarian_user` VALUES ('140', 'tianxiuying', '王丽华', 'fbc80ab6f1f554d71484226be202809d', '18638927134', '2021-09-14 06:44:01.000000');
INSERT INTO `librarian_user` VALUES ('141', 'xia96', '季丽娟', '740702dadd55ca8cfcd0b3c57c68cdc9', '18817607593', '2021-09-17 23:54:30.000000');
INSERT INTO `librarian_user` VALUES ('142', 'ihan', '张玉英', '50ec9158642fe84e207de9f892ad527e', '15056070984', '2021-09-07 01:21:25.000000');
INSERT INTO `librarian_user` VALUES ('143', 'hding', '李兵', '4d953d7eaadd5048f6b21c2285f41898', '18942990777', '2021-09-04 21:55:11.000000');
INSERT INTO `librarian_user` VALUES ('144', 'yanbai', '胡英', 'f9eaae09ecbc369c2b4d5b7b75af36bf', '18880957640', '2021-09-08 01:17:55.000000');
INSERT INTO `librarian_user` VALUES ('145', 'dailei', '陈桂荣', 'fd4be5dd755d7efb9b1981b74bb3a5b5', '18077648569', '2021-08-29 09:26:44.000000');
INSERT INTO `librarian_user` VALUES ('146', 'jie02', '朱玉英', 'c4fbd29169fadacca9a9b13308e4fbf6', '13339548596', '2021-09-19 18:50:52.000000');
INSERT INTO `librarian_user` VALUES ('147', 'liaojing', '姚伟', '982322d8df9a1e42d894bca12f988b58', '18028411422', '2021-09-04 09:06:38.000000');
INSERT INTO `librarian_user` VALUES ('148', 'yiguiying', '刘秀云', 'e92eacb913a808b173aa41a893d178a1', '15982105463', '2021-09-18 20:38:07.000000');
INSERT INTO `librarian_user` VALUES ('149', 'kzou', '杨楠', 'b3c6560329359a88621b0aba9a2dd074', '18528102667', '2021-09-01 08:28:31.000000');
INSERT INTO `librarian_user` VALUES ('150', 'bmao', '张玉梅', '722ebfdedeb89d831d4e869e2a6b5304', '13428950122', '2021-09-06 02:29:40.000000');
INSERT INTO `librarian_user` VALUES ('151', 'duxiulan', '林瑜', '242c99fbbd31fb8cd9eddb291dd4757a', '14734592470', '2021-09-16 09:37:22.000000');
INSERT INTO `librarian_user` VALUES ('152', 'dbai', '安丽华', '6d1d17b09b00909941b465ddaef1f3b8', '13514813658', '2021-08-29 21:28:00.000000');
INSERT INTO `librarian_user` VALUES ('153', 'lijie', '谢岩', '94c8272945661939b1c93d90284c69c7', '13801056778', '2021-09-12 01:46:16.000000');
INSERT INTO `librarian_user` VALUES ('154', 'wanggang', '孙玉英', '867ecd1fa98865b14748ea5cf5923508', '14739297805', '2021-08-29 09:03:59.000000');
INSERT INTO `librarian_user` VALUES ('155', 'xiaona', '蒋丽娟', '2acd81252c67fa817c13d0d504c24275', '15598399342', '2021-09-09 03:21:36.000000');
INSERT INTO `librarian_user` VALUES ('156', 'yong39', '郭婷婷', '7d5a246d32d6f405c4dd542c734dbad0', '18649084089', '2021-08-29 05:40:54.000000');
INSERT INTO `librarian_user` VALUES ('157', 'chao51', '罗凤英', '6b7e8febdf68bf98c4555bacd7c007b5', '18611975648', '2021-09-13 03:33:54.000000');
INSERT INTO `librarian_user` VALUES ('158', 'guiying46', '王萍', '6993412820caabc3c99076bb59e1a64d', '14534668045', '2021-08-29 11:50:50.000000');
INSERT INTO `librarian_user` VALUES ('159', 'ming45', '周玉华', 'e9e03a644bc89f0a7710153be1454c6b', '18553202356', '2021-09-03 11:53:56.000000');
INSERT INTO `librarian_user` VALUES ('160', 'minzou', '高志强', '86a1eff9c627d7a4a787528b76d48334', '13212708972', '2021-09-05 21:18:14.000000');
INSERT INTO `librarian_user` VALUES ('161', 'qinli', '韩丽丽', '48af01841977fcfa93b6087b05082851', '13240549374', '2021-09-17 00:51:06.000000');
INSERT INTO `librarian_user` VALUES ('162', 'eshen', '韩冬梅', 'fc6bf76fb80db6926c74319897c0798f', '18632019928', '2021-08-23 15:19:12.000000');
INSERT INTO `librarian_user` VALUES ('163', 'fangyang', '吴慧', '3d00c4e9cba8c7fad47ca7a686438e30', '13183829800', '2021-09-07 04:46:17.000000');
INSERT INTO `librarian_user` VALUES ('164', 'xiuying22', '王俊', 'ada9ee00cbff56f2de5fd0820bac3821', '13317540691', '2021-09-12 19:48:03.000000');
INSERT INTO `librarian_user` VALUES ('165', 'rluo', '王雪', '7238d07f9473b08ab2062a959c8aebaf', '13621716679', '2021-08-22 08:09:24.000000');
INSERT INTO `librarian_user` VALUES ('166', 'igong', '张涛', '409f43c25b2a1ea68d85f77c3b315541', '13859266126', '2021-09-13 16:40:12.000000');
INSERT INTO `librarian_user` VALUES ('167', 'taosu', '赵瑜', 'eb4c8e195eeb10013de33141793eb8d7', '18099238497', '2021-09-05 00:53:44.000000');
INSERT INTO `librarian_user` VALUES ('168', 'ojia', '罗秀珍', '662cd774a80c536e6fe604c8dcbd6a7b', '18124514929', '2021-09-18 10:24:13.000000');
INSERT INTO `librarian_user` VALUES ('169', 'jiemo', '虞倩', 'bf3c3d07cb60b547f6e815ce2f13246f', '13084296842', '2021-09-08 16:15:29.000000');
INSERT INTO `librarian_user` VALUES ('170', 'ping47', '陈鹏', '7e7b1cdd59decfa24fdc5668753b7f15', '15584140070', '2021-09-15 15:21:28.000000');
INSERT INTO `librarian_user` VALUES ('171', 'liuqiang', '高旭', '584c4e357751c47423978f80b2de2624', '13272589531', '2021-08-30 08:41:38.000000');
INSERT INTO `librarian_user` VALUES ('172', 'xia00', '钱淑珍', 'b8dbbb07ef7f76d7e70ceb80eecefb23', '15986313270', '2021-08-23 23:56:06.000000');
INSERT INTO `librarian_user` VALUES ('173', 'na42', '张兵', 'dad837989b6fce51742ef5220ad8aa9f', '15340873172', '2021-08-31 06:46:49.000000');
INSERT INTO `librarian_user` VALUES ('174', 'liaoyong', '张洁', 'd51e208887305e30bdaca320e5075fda', '15004818372', '2021-09-06 23:26:08.000000');
INSERT INTO `librarian_user` VALUES ('175', 'luyang', '曾梅', '4bbba994e2100d25af94900e32ed8c3c', '15718313400', '2021-09-17 06:31:18.000000');
INSERT INTO `librarian_user` VALUES ('176', 'zhengna', '张健', '176014aca8bf4e6d6d6ac9ec30bb23c0', '18071949057', '2021-09-09 07:57:13.000000');
INSERT INTO `librarian_user` VALUES ('177', 'fengxiulan', '邢淑华', 'a544d56cd892dd0053d4baa2d4398cf2', '14554125988', '2021-09-16 22:19:49.000000');
INSERT INTO `librarian_user` VALUES ('178', 'taoguiying', '魏健', '24d68c82badb143d9aba4e673694b6ff', '18760294541', '2021-08-26 01:45:44.000000');
INSERT INTO `librarian_user` VALUES ('179', 'zhougang', '程丽华', 'e1c046178b54a06f41a732d9eaa29322', '15310563774', '2021-09-03 05:33:36.000000');
INSERT INTO `librarian_user` VALUES ('180', 'xia31', '邱明', '625fb05f53c52adfca8cd178def1064b', '13562489601', '2021-09-02 13:02:47.000000');
INSERT INTO `librarian_user` VALUES ('181', 'qiang63', '万艳', 'a08330ec26a8e0c58346e9a2ac4d7cef', '15541338618', '2021-08-28 22:17:06.000000');
INSERT INTO `librarian_user` VALUES ('182', 'yaoyan', '张琳', '0f395e95b5bd60625831fbcfe06210eb', '15953301792', '2021-08-25 03:37:48.000000');
INSERT INTO `librarian_user` VALUES ('183', 'yang08', '刘超', '9d4a3382106d20bba70167caacb4cc5b', '18764047027', '2021-08-28 04:44:22.000000');
INSERT INTO `librarian_user` VALUES ('184', 'sxia', '韩桂芝', '057c3122ecb5142d8f1ec605b2f4afaf', '13695230721', '2021-08-30 19:26:43.000000');
INSERT INTO `librarian_user` VALUES ('185', 'gang79', '杨琳', 'c18ea823253c8f70eadbafdc2ac4c034', '14763216545', '2021-09-06 21:48:06.000000');
INSERT INTO `librarian_user` VALUES ('186', 'wei52', '钱玉梅', '63ae3fc836d67ddbd78a002aa431680b', '18656070667', '2021-09-16 06:27:47.000000');
INSERT INTO `librarian_user` VALUES ('187', 'hshi', '张丽华', '4c99bf2c580f4a51e08b6c2aa34aacf6', '13812530623', '2021-08-28 08:21:36.000000');
INSERT INTO `librarian_user` VALUES ('188', 'weiqiu', '张桂花', '4a3238099126edccc62ec7c7418148a1', '15024412866', '2021-08-21 14:32:49.000000');
INSERT INTO `librarian_user` VALUES ('189', 'wliang', '胡桂花', '19a894afa139facb54e836d3e4c4a6f3', '15653840084', '2021-09-10 03:56:18.000000');
INSERT INTO `librarian_user` VALUES ('190', 'njin', '王金凤', '5d2ff7a8b27e0d0934545eecd2e52fe8', '13526740112', '2021-09-10 01:35:17.000000');
INSERT INTO `librarian_user` VALUES ('191', 'penglei', '马敏', 'b4ce0cf52aac35090112615e446892f8', '15016611901', '2021-09-02 11:44:18.000000');
INSERT INTO `librarian_user` VALUES ('192', 'juanzhang', '吕婷婷', '9728ba716f595ac97e3c0a85a8248a45', '13893643719', '2021-09-04 15:39:10.000000');
INSERT INTO `librarian_user` VALUES ('193', 'gangdai', '李秀珍', 'e99477935aa7e5f97a1b050592fa7e92', '13819439467', '2021-09-07 22:38:12.000000');
INSERT INTO `librarian_user` VALUES ('194', 'xiulanlai', '蔡秀芳', '289b74c423cb83505856295dfb37f7b6', '15264498445', '2021-09-10 17:41:28.000000');
INSERT INTO `librarian_user` VALUES ('195', 'xiulanxue', '黄文', 'f9fb53f7aa77d6de073db08438fcd1d6', '15914584654', '2021-09-19 07:04:57.000000');
INSERT INTO `librarian_user` VALUES ('196', 'xia11', '李勇', '9b554af7fe52abd9d080cabf0e9649c4', '18577866315', '2021-08-22 23:23:23.000000');
INSERT INTO `librarian_user` VALUES ('197', 'humin', '廉红梅', '2f4bcfcac692fd89293b949f5e23ce8d', '15895029652', '2021-09-06 22:50:46.000000');
INSERT INTO `librarian_user` VALUES ('198', 'li50', '张桂香', 'ca8ab547e21c664e219a1e2ff17f156e', '13780739821', '2021-09-04 15:12:27.000000');
INSERT INTO `librarian_user` VALUES ('199', 'gangyang', '王岩', 'f4362047957733433ec29c2f9b49214e', '13123073362', '2021-09-09 21:39:57.000000');
INSERT INTO `librarian_user` VALUES ('200', 'yongjia', '殷玉兰', '7d8e6578231306919f2d7a3d3f8abc47', '18267102632', '2021-09-02 06:36:52.000000');
INSERT INTO `librarian_user` VALUES ('201', 'junjia', '李欣', '1bd1a8eb2ae66e9400a1857ed1dc7293', '14758730565', '2021-09-13 01:45:06.000000');
INSERT INTO `librarian_user` VALUES ('202', 'qiujuan', '周丽娟', '3aeaeaf01828b9b2b3e06ec4d72798ad', '15012305027', '2021-09-01 03:56:54.000000');
INSERT INTO `librarian_user` VALUES ('203', 'jiangxiulan', '马莹', 'aec712ac998635744b45a3bb3410fcd4', '15768771622', '2021-09-05 05:16:06.000000');
INSERT INTO `librarian_user` VALUES ('204', 'cuiyong', '杨秀英', 'b8ecea0046992d2984a2f6d919ca2c04', '14542811118', '2021-09-05 15:56:07.000000');
INSERT INTO `librarian_user` VALUES ('205', 'liujun', '刘楠', '499b289070d4cc786df44d61ef8429d8', '15904749243', '2021-08-27 16:34:51.000000');
INSERT INTO `librarian_user` VALUES ('206', 'panjie', '向莹', '9674ac99d0fc16e7b2737b3549cd7010', '15062291537', '2021-09-05 05:41:38.000000');
INSERT INTO `librarian_user` VALUES ('207', 'fmeng', '杨明', 'dccaab974808aa3d6d781d20421f774a', '15587035309', '2021-09-04 14:34:12.000000');
INSERT INTO `librarian_user` VALUES ('208', 'mindeng', '薛建国', '03676700c1dab021b83581c5ff5ee604', '13001436878', '2021-09-16 02:16:38.000000');
INSERT INTO `librarian_user` VALUES ('209', 'xia91', '田秀芳', 'ab65fb4763505c9421ca0696eaaf410d', '18984751406', '2021-08-30 10:51:48.000000');
INSERT INTO `librarian_user` VALUES ('210', 'qiangzheng', '陈华', '329bf674303515028809ca538b3d5b2d', '15098177031', '2021-09-13 21:18:27.000000');
INSERT INTO `librarian_user` VALUES ('211', 'weixiulan', '张慧', '3c28e1457e61002682de731abb7c81a3', '18744150178', '2021-08-28 23:47:12.000000');
INSERT INTO `librarian_user` VALUES ('212', 'zhongjie', '申玉英', 'e4094df5044314eb59cb2cc226d966ec', '14760068440', '2021-09-14 16:44:28.000000');
INSERT INTO `librarian_user` VALUES ('213', 'fanggang', '陈柳', 'ad249e04fa2e9f38391f3d1e3d46cc85', '13382070080', '2021-09-13 15:14:55.000000');
INSERT INTO `librarian_user` VALUES ('214', 'juanyin', '植琳', 'a27693f3fc86b780cf2c8322353df3ea', '18979418152', '2021-09-16 10:01:23.000000');
INSERT INTO `librarian_user` VALUES ('215', 'chenna', '潘畅', '7bc6d11aa10762d2867d66bbb5a3907f', '13038921921', '2021-08-21 14:10:21.000000');
INSERT INTO `librarian_user` VALUES ('216', 'lei46', '萧娟', '8cb0ceedadd8be2505b2255d66916ebe', '13479562022', '2021-08-26 03:25:51.000000');
INSERT INTO `librarian_user` VALUES ('217', 'wwu', '彭涛', '6a95e8956ad4ac8a86ae2d610f13b7f3', '15748599182', '2021-08-23 09:04:53.000000');
INSERT INTO `librarian_user` VALUES ('218', 'qianglin', '权艳', '795c02c37977a799c7d1eb4972bbe8e1', '13336447577', '2021-09-04 14:33:38.000000');
INSERT INTO `librarian_user` VALUES ('219', 'jinming', '王志强', '396bc340c7f303a667315ae0ccc327af', '15199340393', '2021-09-11 07:22:14.000000');
INSERT INTO `librarian_user` VALUES ('220', 'junhou', '陈淑珍', '9f6ac6a7f687bdb91b5342d0f690b918', '18808414041', '2021-08-27 14:54:10.000000');
INSERT INTO `librarian_user` VALUES ('221', 'hyi', '侯秀兰', 'c4496cea922a73e61334abad6ec8aa84', '13807416212', '2021-09-12 23:07:06.000000');
INSERT INTO `librarian_user` VALUES ('222', 'szhao', '邵桂芳', 'ba44cd7eb6ff10089cb62f6a69d0293b', '15562036207', '2021-09-18 18:42:29.000000');
INSERT INTO `librarian_user` VALUES ('223', 'pcui', '王倩', '3e14f85f907c695681f84633511f4195', '18114868388', '2021-09-11 21:20:05.000000');
INSERT INTO `librarian_user` VALUES ('224', 'naxiao', '潘林', 'bc57f48f2096288029a2c41f486edeef', '14502849593', '2021-09-08 11:46:55.000000');
INSERT INTO `librarian_user` VALUES ('225', 'oshen', '慕敏', '74f953012d5960ca2e8c0fd76b4b04ae', '15773633239', '2021-09-14 16:21:01.000000');
INSERT INTO `librarian_user` VALUES ('226', 'ejin', '赵涛', '4bff43208f482732ff780c06fecf8d05', '13585122861', '2021-09-09 19:58:04.000000');
INSERT INTO `librarian_user` VALUES ('227', 'chaozou', '刘帆', 'b29af8d2212d89ee4d7bc6177dac36b1', '18562585861', '2021-09-11 10:43:01.000000');
INSERT INTO `librarian_user` VALUES ('228', 'weixia', '王秀珍', '8e069d5b863be1dc094fc72145c66a28', '14502913718', '2021-09-10 20:59:17.000000');
INSERT INTO `librarian_user` VALUES ('229', 'weilei', '王晨', '2f9009a0290be85f64aabd0d071be28a', '15144340379', '2021-09-16 07:44:27.000000');
INSERT INTO `librarian_user` VALUES ('230', 'yangyu', '韩秀芳', '5548f93c7f88bbef6412a89eaeb79089', '18029560376', '2021-09-09 20:03:30.000000');
INSERT INTO `librarian_user` VALUES ('231', 'xiuyingpeng', '杨亮', 'b115879821e7214fe1fd7f9c6eb5f38b', '15593181537', '2021-08-30 02:40:14.000000');
INSERT INTO `librarian_user` VALUES ('232', 'juan22', '杨晶', '53166f9eff1085b596dd6085c5677e12', '13749062322', '2021-09-06 16:27:57.000000');
INSERT INTO `librarian_user` VALUES ('233', 'fangwei', '杨文', 'c53c976aaa91e1ecfbd26a3e10c59eaa', '15395899387', '2021-08-25 17:32:06.000000');
INSERT INTO `librarian_user` VALUES ('234', 'xionglei', '杨娜', 'ab5f4c478da8d59aea4a7deed35f6ea6', '13853096200', '2021-09-01 03:48:58.000000');
INSERT INTO `librarian_user` VALUES ('235', 'cwei', '侯欣', '96216962e9f75e838fb235ca15964ee7', '15530977463', '2021-08-21 21:48:20.000000');
INSERT INTO `librarian_user` VALUES ('236', 'cli', '赵燕', '19492504c5059cf2f913d203411930b9', '13733346400', '2021-08-29 18:14:42.000000');
INSERT INTO `librarian_user` VALUES ('237', 'shenchao', '王莉', '6067606c4894e5cbad801fce8ac98187', '15215332116', '2021-09-14 04:56:07.000000');
INSERT INTO `librarian_user` VALUES ('238', 'xgao', '王雪', '42da023ea2a7a5c7b17eb9897128b47a', '15126207024', '2021-09-05 20:38:40.000000');
INSERT INTO `librarian_user` VALUES ('239', 'tcheng', '姚雪梅', 'fa7a6b9a5ef0d04c2dcfea44ef34dbde', '15191126603', '2021-09-15 02:23:08.000000');
INSERT INTO `librarian_user` VALUES ('240', 'zoujuan', '朱莹', 'bc9fd4265d4098e461d0a15d35f2f5d4', '18158233159', '2021-08-26 22:41:25.000000');
INSERT INTO `librarian_user` VALUES ('241', 'xiafan', '凌玉梅', '88ac85efee51e176873f58a1da0da1f2', '13239552518', '2021-09-08 03:59:53.000000');
INSERT INTO `librarian_user` VALUES ('242', 'lizhu', '张莹', '3095bf4a43827e6099cc6665233e3b23', '18233136264', '2021-09-08 06:16:50.000000');
INSERT INTO `librarian_user` VALUES ('243', 'leiqian', '张颖', '4ac1e27f4ef2eaf219cba9aea86e4cf3', '14569898336', '2021-09-13 04:40:00.000000');
INSERT INTO `librarian_user` VALUES ('244', 'jing92', '秦梅', 'ae528cd88cea55a5362ecd8ea94e253b', '18740331587', '2021-09-05 07:02:23.000000');
INSERT INTO `librarian_user` VALUES ('245', 'jietao', '杨艳', 'b0c8ae9e6d108e231cf4d5c8ca9dcc96', '13644192326', '2021-08-30 10:54:57.000000');
INSERT INTO `librarian_user` VALUES ('246', 'yan14', '乔婷婷', '52b1aca15ce7cf5d06a2510dfc2853f2', '13852901959', '2021-09-05 01:53:55.000000');
INSERT INTO `librarian_user` VALUES ('247', 'qiangzhong', '黎凤英', '61a607dd5061ca8ad10c188243a2bfe9', '18524040633', '2021-09-08 17:48:02.000000');
INSERT INTO `librarian_user` VALUES ('248', 'songna', '马龙', '26d305882fc89302bdac58d8c9af326a', '15744394522', '2021-09-13 17:55:16.000000');
INSERT INTO `librarian_user` VALUES ('249', 'minhou', '宋鑫', 'fbe3c90b1250e2ddb17a6d4240366b24', '13472942764', '2021-08-26 18:24:19.000000');
INSERT INTO `librarian_user` VALUES ('250', 'lei05', '赵健', 'a7ffdd9a44da5e15e0144082e9e94f81', '15946289646', '2021-08-31 05:10:52.000000');
INSERT INTO `librarian_user` VALUES ('251', 'yangzhao', '房建军', 'da649a9d6888783e6bcbf020dd733b30', '15118198247', '2021-09-07 05:16:49.000000');
INSERT INTO `librarian_user` VALUES ('252', 'xiulanzhou', '崔志强', '08acc6344ce9a31e569dd46abcf02154', '13328430577', '2021-08-30 20:31:24.000000');
INSERT INTO `librarian_user` VALUES ('253', 'taojin', '麻想', 'c5a9e04ef069693a2aeaa1b58318ce36', '18756218457', '2021-08-23 08:26:41.000000');
INSERT INTO `librarian_user` VALUES ('254', 'gangduan', '杨军', '0d0fa18b8f784a3deb46d36f17f99046', '15178209892', '2021-08-26 09:26:33.000000');
INSERT INTO `librarian_user` VALUES ('255', 'ming73', '郑桂香', '476082c64be556e83f748ddcd3cc5491', '18937762671', '2021-08-28 08:31:49.000000');
INSERT INTO `librarian_user` VALUES ('256', 'ming85', '高志强', 'cb69b533e2f72b1c39699e0ed4b3e509', '18096737237', '2021-09-06 10:16:31.000000');
INSERT INTO `librarian_user` VALUES ('257', 'li61', '徐宁', '3f6538f741e6e161f9e24ba185431e41', '15654292151', '2021-09-15 14:16:19.000000');
INSERT INTO `librarian_user` VALUES ('258', 'wangwei', '娄凤英', 'c2edd9b58b66568f394b47dff03ebec8', '14569912454', '2021-08-27 09:01:06.000000');
INSERT INTO `librarian_user` VALUES ('259', 'lisun', '符娟', '9a737124e2c311f80eb85a5568086ce3', '15261977527', '2021-09-12 23:53:07.000000');
INSERT INTO `librarian_user` VALUES ('260', 'moxiuying', '马兰英', 'face724883eb0a26ebef459a2a0fe887', '18185324057', '2021-09-09 06:35:22.000000');
INSERT INTO `librarian_user` VALUES ('261', 'qyi', '满想', 'f370e646992e0f30df9c1c25bd6427c2', '13392862301', '2021-09-03 05:40:58.000000');
INSERT INTO `librarian_user` VALUES ('262', 'liyu', '梁凤兰', '27199453f84125280b2fdb1361804063', '18558603696', '2021-09-05 06:10:01.000000');
INSERT INTO `librarian_user` VALUES ('263', 'gang32', '王冬梅', '013573db7fb963e227d48b2db22a5313', '13768402117', '2021-09-17 07:25:29.000000');
INSERT INTO `librarian_user` VALUES ('264', 'ming97', '蔡健', '842bce430afd20d988cc1c5450427ec6', '14535321240', '2021-09-09 21:29:44.000000');
INSERT INTO `librarian_user` VALUES ('265', 'dinglei', '陈洋', 'b8309699468d6c7a40c90e30f489d8dc', '18836715333', '2021-08-23 07:26:22.000000');
INSERT INTO `librarian_user` VALUES ('266', 'chao23', '王红梅', 'e8dd9c5f1d059619a574ce7014d3ae22', '15823721302', '2021-09-16 02:16:43.000000');
INSERT INTO `librarian_user` VALUES ('267', 'vmeng', '傅桂英', 'f1f85d3befadef53730f3a1eca2c1073', '18607511223', '2021-09-17 15:44:48.000000');
INSERT INTO `librarian_user` VALUES ('268', 'tao57', '骆洋', '00835fa66102b68477be4719b1a6aa6c', '18689043329', '2021-09-11 10:54:43.000000');
INSERT INTO `librarian_user` VALUES ('269', 'ming14', '李莹', '62a2164a69f29b64cc3529841a6a0b97', '15298329698', '2021-09-11 10:39:13.000000');
INSERT INTO `librarian_user` VALUES ('270', 'xia15', '杨琴', 'cde24144226e1f8baac66547ec236759', '15986076603', '2021-08-28 18:24:06.000000');
INSERT INTO `librarian_user` VALUES ('271', 'juncui', '吴阳', '952b52ad49c98facc3d8177f0f60c247', '18054960018', '2021-08-28 10:48:14.000000');
INSERT INTO `librarian_user` VALUES ('272', 'ligong', '叶刚', '10175272e2007376412edc6f1d36b387', '18160019252', '2021-08-26 13:13:20.000000');
INSERT INTO `librarian_user` VALUES ('273', 'zyu', '罗秀华', 'f8925b5c87084f6dc703cc88f8d7326c', '18999511325', '2021-09-14 22:19:30.000000');
INSERT INTO `librarian_user` VALUES ('274', 'li60', '骆波', '342c4dd433191681d6374f8ff8d4f9d6', '13684674300', '2021-08-29 14:35:29.000000');
INSERT INTO `librarian_user` VALUES ('275', 'pingxiang', '毛博', '450d46f863dc0ea4faea2c87b1b5ec04', '15750401781', '2021-08-25 16:44:15.000000');
INSERT INTO `librarian_user` VALUES ('276', 'xiaoyong', '周健', 'dd2cddf17700b19e89a8794974cb7d0a', '14507368247', '2021-08-28 21:01:20.000000');
INSERT INTO `librarian_user` VALUES ('277', 'xiaona', '李瑜', 'e2e5cf188e7007eb6ad42e7120db0983', '15100182621', '2021-09-18 06:09:23.000000');
INSERT INTO `librarian_user` VALUES ('278', 'liuli', '王秀梅', '7a4b94bf833eb8e68882adde350bfafc', '13268769398', '2021-08-26 20:44:24.000000');
INSERT INTO `librarian_user` VALUES ('279', 'zjin', '苏杰', '22970c75b60a4bbb349721313f358937', '15392954737', '2021-08-26 07:26:50.000000');
INSERT INTO `librarian_user` VALUES ('280', 'yangfang', '黄颖', '58ec53eb0bf323dd647c7150854305f2', '13329883611', '2021-08-29 07:21:32.000000');
INSERT INTO `librarian_user` VALUES ('281', 'xiatao', '罗莉', 'd362a515554f654717aa2ecc75e1bea4', '15701892643', '2021-09-01 05:38:15.000000');
INSERT INTO `librarian_user` VALUES ('282', 'qzou', '卢艳', 'a8d952d8ffb99bbcacf4267c2fe34e77', '18123154106', '2021-08-29 06:46:55.000000');
INSERT INTO `librarian_user` VALUES ('283', 'lqiu', '蒋亮', 'cc70f4f2bf940de94cd31c4ac468c0f9', '15623123649', '2021-09-18 16:39:24.000000');
INSERT INTO `librarian_user` VALUES ('284', 'guiying72', '张阳', '4eea10d2ca54989660c54222ec865574', '14563623465', '2021-08-27 13:51:25.000000');
INSERT INTO `librarian_user` VALUES ('285', 'xhan', '沈明', 'eba787fdba2ee29126b2d346e22ad13a', '18930798346', '2021-08-26 09:06:49.000000');
INSERT INTO `librarian_user` VALUES ('286', 'shenping', '高兵', '9f4d9fcb71cf6b0344a0396339e3dd7f', '15971015570', '2021-08-29 07:56:48.000000');
INSERT INTO `librarian_user` VALUES ('287', 'tcui', '胡荣', '5d2d530157b5731e02592cf66038dcb9', '14599671144', '2021-08-22 18:34:18.000000');
INSERT INTO `librarian_user` VALUES ('288', 'gang89', '张敏', '79a5e33d7f0e637d613336ad8e5e3b8f', '15319936702', '2021-09-15 04:55:45.000000');
INSERT INTO `librarian_user` VALUES ('289', 'mingguo', '赵建', '322ad7680ad6d9ca4f608a9b7323b5a1', '13267877441', '2021-09-08 06:04:40.000000');
INSERT INTO `librarian_user` VALUES ('290', 'xiulanyuan', '雷阳', '82b001548e5f173a7ae53916a68108fc', '18163496440', '2021-09-17 22:43:14.000000');
INSERT INTO `librarian_user` VALUES ('291', 'na17', '邰秀华', '7cc0bbf90f7208d03a98f8eb59f84b1e', '18534271457', '2021-08-26 04:53:52.000000');
INSERT INTO `librarian_user` VALUES ('292', 'qianggong', '王玉梅', 'c593e137c6d2341b10a51dcf074d43e7', '13367978940', '2021-09-11 23:37:50.000000');
INSERT INTO `librarian_user` VALUES ('293', 'mfang', '谭波', '8ec2b46bb3f29800e8967a437a18dcb2', '15743050099', '2021-09-16 07:47:12.000000');
INSERT INTO `librarian_user` VALUES ('294', 'shigang', '潘瑞', 'c5c94378fb68f846755de0b367c429ae', '18026293879', '2021-09-06 02:14:26.000000');
INSERT INTO `librarian_user` VALUES ('295', 'liangping', '李建国', '9975009a344d14beb188f53f75b0ea4d', '13216359568', '2021-09-12 08:03:25.000000');
INSERT INTO `librarian_user` VALUES ('296', 'jieren', '周桂荣', '9a47dc149d2843837c5f9b86d670f05d', '13280891291', '2021-09-11 12:20:10.000000');
INSERT INTO `librarian_user` VALUES ('297', 'yegang', '王淑英', '1f7b4b3be27831a59bbe9adc2bf61294', '15875763070', '2021-09-13 23:49:14.000000');
INSERT INTO `librarian_user` VALUES ('298', 'xyuan', '黄俊', '358f31cc7b5a595de1a60c0fe91fd5d2', '13512960533', '2021-09-16 02:02:08.000000');
INSERT INTO `librarian_user` VALUES ('299', 'fang02', '孙鑫', '933de2084e97aba6e780ebd8dfa008c2', '13699909301', '2021-08-31 04:26:41.000000');
INSERT INTO `librarian_user` VALUES ('300', 'zqian', '张鑫', '8cb4b06f1200a44622549e52b0789df1', '13067205403', '2021-09-13 07:25:19.000000');
INSERT INTO `librarian_user` VALUES ('301', 'qiangdai', '何淑兰', '3cca26252200295c07aa5293e369d864', '13297784508', '2021-09-11 04:01:57.000000');
INSERT INTO `librarian_user` VALUES ('302', 'fjiang', '冯桂荣', '1753fa9471a09d7e5f21c8a2fb6fd1d2', '13400018857', '2021-09-13 22:54:31.000000');
INSERT INTO `librarian_user` VALUES ('303', 'juanxiao', '尹冬梅', '1cc9bf0c4852e0f80db40f2feb4e905b', '18627244717', '2021-09-05 15:28:16.000000');
INSERT INTO `librarian_user` VALUES ('304', 'wma', '王雪梅', '9fb0a1ef7a10f8b4dad8515b32f9500e', '15656416776', '2021-09-16 04:38:48.000000');
INSERT INTO `librarian_user` VALUES ('305', 'shixiulan', '王刚', 'af6bfddc8abeaf2ad6dbadb257b93480', '15507089326', '2021-09-14 00:51:05.000000');
INSERT INTO `librarian_user` VALUES ('306', 'min32', '张敏', '7e1361786c6f5638c3bbc8f0f692dfcb', '13470246091', '2021-08-29 02:24:02.000000');
INSERT INTO `librarian_user` VALUES ('307', 'taoxia', '柯玉梅', 'b4d9bc76faafe5acb3fa7ffaed85c698', '15334480838', '2021-09-05 14:55:11.000000');
INSERT INTO `librarian_user` VALUES ('308', 'rtao', '冯想', '909b236f151accdae0adad11efacc723', '18585651034', '2021-09-19 01:26:26.000000');
INSERT INTO `librarian_user` VALUES ('309', 'fuli', '孙秀荣', 'dfd2b18a62fdd99c20a1da42007ecbc7', '15987601949', '2021-09-10 15:36:24.000000');
INSERT INTO `librarian_user` VALUES ('310', 'gangqian', '马秀珍', 'b37b838a8a08a9effc19830dd9b08d62', '13307946403', '2021-09-11 17:23:26.000000');
INSERT INTO `librarian_user` VALUES ('311', 'xiulanfeng', '王桂花', 'eb4ab23c95caeda93661e9cd6153b509', '15625049179', '2021-08-30 17:14:42.000000');
INSERT INTO `librarian_user` VALUES ('312', 'lizou', '钟杰', '982c3876be9fc72ffacc615dd68a7339', '18920621489', '2021-09-06 19:11:28.000000');
INSERT INTO `librarian_user` VALUES ('313', 'na32', '陈磊', 'bdc2257001e45198a662e06d783bc1b7', '13810243498', '2021-08-25 18:41:24.000000');
INSERT INTO `librarian_user` VALUES ('314', 'qiangyang', '吴颖', '91fc4a4df1645c38c88aac583ea9e184', '18981189117', '2021-09-15 10:38:13.000000');
INSERT INTO `librarian_user` VALUES ('315', 'ychen', '刘雷', '1434c49b4470348d88b6cc13a902bf3d', '13387788035', '2021-08-29 10:25:01.000000');
INSERT INTO `librarian_user` VALUES ('316', 'pingshi', '陈健', '74585c11a6d476ef37b521b78b4304cc', '13378966519', '2021-09-13 11:52:57.000000');
INSERT INTO `librarian_user` VALUES ('317', 'wwei', '王岩', '253de3943ca5a4384c4bba69c0554a67', '13321087680', '2021-08-30 23:31:37.000000');
INSERT INTO `librarian_user` VALUES ('318', 'xiuying69', '林鑫', '49f0f20661451c969afca22f8401f9cb', '18659803192', '2021-09-17 16:39:06.000000');
INSERT INTO `librarian_user` VALUES ('319', 'fang72', '张超', 'e2e4d80c4f5f3dbd17e5bbf28dc07edb', '18522508721', '2021-09-18 03:45:47.000000');
INSERT INTO `librarian_user` VALUES ('320', 'qkong', '黄彬', '6307bb9a99e59a0022ac9736d9546e60', '18780512578', '2021-09-06 21:28:49.000000');
INSERT INTO `librarian_user` VALUES ('321', 'xiuying04', '何杰', 'ce43579c6538d35ae9e819bb9581ad9f', '18206126519', '2021-09-17 05:34:01.000000');
INSERT INTO `librarian_user` VALUES ('322', 'oxiao', '乐艳', 'a3b4094094e6715c0e4bf330ac300875', '15893642276', '2021-09-14 07:31:58.000000');
INSERT INTO `librarian_user` VALUES ('323', 'nasun', '姚玉华', '76e30e2bfd0714117f05fe1759c7d4bb', '13491833248', '2021-08-25 08:17:44.000000');
INSERT INTO `librarian_user` VALUES ('324', 'qtang', '周佳', 'c538268a85b40d7956830fe2d14f6e53', '13473799515', '2021-08-25 04:13:46.000000');
INSERT INTO `librarian_user` VALUES ('325', 'taoyao', '万玉华', '749d60e04a5841c969b4aeffd1fce7d2', '13875777093', '2021-09-19 16:08:08.000000');
INSERT INTO `librarian_user` VALUES ('326', 'qiangzhu', '杨萍', 'c57decaff876d4cbaa570dd52271ff92', '13487056168', '2021-08-22 22:19:24.000000');
INSERT INTO `librarian_user` VALUES ('327', 'mwen', '李平', '3a18803ffe4992221b5157f5cd55bd4b', '13176224837', '2021-08-23 09:49:02.000000');
INSERT INTO `librarian_user` VALUES ('328', 'jiangwei', '华桂兰', '5ffcb61ec1da2dba6784c5aa3fbc7ef9', '18941508851', '2021-09-09 16:06:04.000000');
INSERT INTO `librarian_user` VALUES ('329', 'yong07', '王平', 'a421b1be4ca42ff9398d767f07efc3b4', '18182581683', '2021-09-20 03:24:42.000000');
INSERT INTO `librarian_user` VALUES ('330', 'jiekang', '何畅', '535c53842ff0c38eaeec8139f44ae82e', '15595909485', '2021-09-09 21:05:04.000000');
INSERT INTO `librarian_user` VALUES ('331', 'flei', '刘彬', 'a89b1e5ba38c3dd981078ec9cb0f9249', '18738446398', '2021-09-16 03:43:00.000000');
INSERT INTO `librarian_user` VALUES ('332', 'caoqiang', '马红霞', '392f3d0bfd8feb3855a61ee2a912cdf6', '15614060813', '2021-08-31 06:07:55.000000');
INSERT INTO `librarian_user` VALUES ('333', 'leifang', '刘莹', '8afe3b0edad0a15b4d60e2beec430cc9', '13972665949', '2021-09-18 00:12:25.000000');
INSERT INTO `librarian_user` VALUES ('334', 'shiyan', '李磊', '1d53660801e71defd90f32efb7c91306', '14572971615', '2021-08-29 20:41:53.000000');
INSERT INTO `librarian_user` VALUES ('335', 'renjun', '张欣', '03ab27e2ae6b462d509d5ce96f5a04dd', '13113429504', '2021-09-09 15:43:34.000000');
INSERT INTO `librarian_user` VALUES ('336', 'ajiang', '谢淑英', '3c3a474a2baf808dfe7471371a8e340f', '15506724379', '2021-09-18 05:43:53.000000');
INSERT INTO `librarian_user` VALUES ('337', 'dyuan', '李红梅', '7a8242fbdf447251d3de335923bcc17d', '18754000895', '2021-08-31 22:30:55.000000');
INSERT INTO `librarian_user` VALUES ('338', 'liaogang', '李桂芝', 'a5752aac4dcda42b0fd2ebc03297ce49', '13049407550', '2021-09-05 03:05:30.000000');
INSERT INTO `librarian_user` VALUES ('339', 'lei68', '罗淑英', '306f07a459dc9eb0e497e193050f433b', '14568828076', '2021-08-26 19:52:52.000000');
INSERT INTO `librarian_user` VALUES ('340', 'na98', '祁瑜', '353f0fb5d53928b12e8d0aef4a9589a9', '15382006161', '2021-09-12 10:46:25.000000');
INSERT INTO `librarian_user` VALUES ('341', 'asun', '张琳', 'e352d5cc34f5c6839169be04f535cb68', '15824684798', '2021-09-17 11:52:09.000000');
INSERT INTO `librarian_user` VALUES ('342', 'yong23', '邓璐', 'c23bf55428c2cbdaff7b21a6a14883fe', '18787960055', '2021-09-16 03:35:05.000000');
INSERT INTO `librarian_user` VALUES ('343', 'laiyan', '周勇', '4d9f26f6d794e10bf13a99b182e97b6d', '13329313822', '2021-09-09 14:48:20.000000');
INSERT INTO `librarian_user` VALUES ('344', 'ddai', '李娟', 'fb3b65f2fd0aa0d830be1deb3600c65a', '15003314438', '2021-08-31 10:45:41.000000');
INSERT INTO `librarian_user` VALUES ('345', 'zhoumin', '周岩', '6f69e9a29f41cea54dce6ea70d93e36e', '13237070349', '2021-09-14 18:08:09.000000');
INSERT INTO `librarian_user` VALUES ('346', 'jing23', '丁秀珍', '970336b8672bb6776e7a9793b7122831', '15275246879', '2021-09-16 10:19:10.000000');
INSERT INTO `librarian_user` VALUES ('347', 'guiyingguo', '黄宁', '290fcf3d6445b6b929bb14f9e97e342f', '15296109942', '2021-09-17 04:19:38.000000');
INSERT INTO `librarian_user` VALUES ('348', 'fanghe', '罗畅', 'f163fdbe9660573a740f0877079da4fb', '18874547904', '2021-09-12 10:28:24.000000');
INSERT INTO `librarian_user` VALUES ('349', 'cliang', '李秀兰', 'ce691a54f203fe7ff2b7104702cc4d39', '13022054636', '2021-08-31 22:35:37.000000');
INSERT INTO `librarian_user` VALUES ('350', 'fangluo', '王冬梅', '1e2d089ac7e551b8bade1512a33a5545', '13120287668', '2021-09-16 22:41:13.000000');
INSERT INTO `librarian_user` VALUES ('351', 'weina', '陶燕', '2d5ad2eee9da26fc9c746d7bb418b7d1', '13893783526', '2021-08-28 02:42:53.000000');
INSERT INTO `librarian_user` VALUES ('352', 'juanhao', '薛飞', 'beb029e993f87e6c66c1bf6d5f507a73', '13118670982', '2021-08-22 00:52:15.000000');
INSERT INTO `librarian_user` VALUES ('353', 'fgong', '陈荣', '271254d3f06884c75126608af6851bdd', '15552399925', '2021-09-01 17:21:15.000000');
INSERT INTO `librarian_user` VALUES ('354', 'gangjiang', '马磊', 'c1a965e12cc3f32b3eb6de3dab8412d7', '13225120333', '2021-09-18 23:23:04.000000');
INSERT INTO `librarian_user` VALUES ('355', 'rengang', '何丽丽', '7528c7f9a1ff9e54454a986b737a4534', '13933073766', '2021-09-07 02:48:25.000000');
INSERT INTO `librarian_user` VALUES ('356', 'qiaoping', '熊燕', '497b64e66eba0b3bb68e997ecb9c9082', '13176525886', '2021-08-24 03:35:16.000000');
INSERT INTO `librarian_user` VALUES ('357', 'gangpan', '曾秀英', '9bac3b71d660ed231f968eb074634b5f', '14589034769', '2021-09-02 16:18:58.000000');
INSERT INTO `librarian_user` VALUES ('358', 'qiang04', '韩洋', '1cf35ad818f91a114ed857f178d10e11', '13014607509', '2021-09-03 20:10:34.000000');
INSERT INTO `librarian_user` VALUES ('359', 'rbai', '徐雪', '17286d9aa8964b44c1320ec689b4e700', '13505259253', '2021-09-17 21:07:43.000000');
INSERT INTO `librarian_user` VALUES ('360', 'leipan', '温平', '134c29f09861a7222833e274c8e61f6c', '13954132129', '2021-09-14 22:54:37.000000');
INSERT INTO `librarian_user` VALUES ('361', 'lilei', '蔡柳', 'c7995c4f8b04941b16a43fe0f48dee33', '15953658223', '2021-08-31 19:43:03.000000');
INSERT INTO `librarian_user` VALUES ('362', 'wei22', '杨帆', 'bd7425d638fd30b07beeca2a69d4f745', '15773353297', '2021-08-23 17:58:57.000000');
INSERT INTO `librarian_user` VALUES ('363', 'zbai', '刘坤', 'dd7d00e8a4b95f0e5e800cc3014f1a0d', '15190568596', '2021-08-29 11:20:19.000000');
INSERT INTO `librarian_user` VALUES ('364', 'jren', '汤海燕', 'bdf789c4eb52d2d453cea703de329932', '13280356447', '2021-08-31 01:30:32.000000');
INSERT INTO `librarian_user` VALUES ('365', 'gangyi', '池旭', '9a3a92b26bd855037963be8f94991572', '15223878145', '2021-09-10 15:41:35.000000');
INSERT INTO `librarian_user` VALUES ('366', 'rlu', '程雪梅', 'd01ab893816fe127684d9234bd8918f4', '18171035494', '2021-09-03 23:43:02.000000');
INSERT INTO `librarian_user` VALUES ('367', 'guiyingli', '赵红', '464c89a5c0069c6def531a31f53a13fc', '13637841020', '2021-09-07 16:33:19.000000');
INSERT INTO `librarian_user` VALUES ('368', 'guiyinghan', '刘秀兰', '4a51a316251c3e41e3167aa8c72fb1e3', '15560079458', '2021-09-18 11:46:57.000000');
INSERT INTO `librarian_user` VALUES ('369', 'jiangyong', '毛龙', '05d5139e8d4ff57f2dc6e0f37f798593', '15752260534', '2021-09-16 03:21:05.000000');
INSERT INTO `librarian_user` VALUES ('370', 'xiulan01', '袁丽', 'acec3f04b2373e1189062be84b90be0d', '13920857152', '2021-09-11 03:15:55.000000');
INSERT INTO `librarian_user` VALUES ('371', 'heqiang', '邵浩', '03be63aad2bdab1c1b5fc97705d87058', '13492532223', '2021-09-19 17:20:08.000000');
INSERT INTO `librarian_user` VALUES ('372', 'zhongguiying', '马欢', 'ed04d6ffe0f7db6f57939a084189f830', '13701821940', '2021-09-17 07:46:22.000000');
INSERT INTO `librarian_user` VALUES ('373', 'ugong', '刘凤兰', 'a19cd0640eae5386ed7292ef535a4101', '18026018118', '2021-09-15 23:37:36.000000');
INSERT INTO `librarian_user` VALUES ('374', 'gang94', '李娟', '2660846ebb2326ad56ca6f73dbb584d4', '13505787659', '2021-09-19 10:41:42.000000');
INSERT INTO `librarian_user` VALUES ('375', 'xiaxiao', '钟红梅', 'bbcf0aef84181aa8444f6a8cbf1835dd', '14526510424', '2021-09-11 04:30:31.000000');
INSERT INTO `librarian_user` VALUES ('376', 'yangwan', '陆龙', '556d1097ccc97cf84f464a713fdb6446', '15847421044', '2021-09-03 12:31:22.000000');
INSERT INTO `librarian_user` VALUES ('377', 'oqin', '许丽华', '00a8cd6ed0c72b57500b93f8ddb7646a', '13649919410', '2021-09-05 03:55:48.000000');
INSERT INTO `librarian_user` VALUES ('378', 'jing85', '常丽娟', 'a19d7fc928e37e21874e4c299e3e49b7', '13571603330', '2021-09-09 00:54:05.000000');
INSERT INTO `librarian_user` VALUES ('379', 'juntan', '齐秀珍', 'c7e204958fdf1a53cc67391c9007931f', '14590093262', '2021-09-08 00:11:49.000000');
INSERT INTO `librarian_user` VALUES ('380', 'nahu', '胡健', 'bbce62454854da0fbf80d18dd9fdbb9f', '13769481310', '2021-09-16 18:15:26.000000');
INSERT INTO `librarian_user` VALUES ('381', 'dhu', '郝帆', '19e0caebd0c7e5827b375601237081cf', '13027155994', '2021-09-17 11:48:30.000000');
INSERT INTO `librarian_user` VALUES ('382', 'xiulandai', '师敏', 'c964438684233d6b84f6138159b807fa', '13099816049', '2021-09-03 18:03:42.000000');
INSERT INTO `librarian_user` VALUES ('383', 'guiyingding', '张娜', 'b7f46652d9f8da9f6a9d250003adcb33', '14718716016', '2021-09-10 16:35:43.000000');
INSERT INTO `librarian_user` VALUES ('384', 'gongqiang', '唐凤英', '0454549f8808f1945486a7285c160b32', '15928642564', '2021-09-04 08:52:31.000000');
INSERT INTO `librarian_user` VALUES ('385', 'rfan', '潘丽华', 'a2d6349462decd20bc3e415f873767cd', '13918870981', '2021-09-19 06:43:47.000000');
INSERT INTO `librarian_user` VALUES ('386', 'dingguiying', '任博', '296d44b14837d9a56aeb1a37d1f0db17', '13533032932', '2021-08-28 18:12:02.000000');
INSERT INTO `librarian_user` VALUES ('387', 'nluo', '黄龙', '88ebba07aa299ffda95059fddd4872a7', '13239345240', '2021-09-07 06:34:04.000000');
INSERT INTO `librarian_user` VALUES ('388', 'sujing', '张峰', '08dd5ce3293830192c72ec97cfb37af0', '13203620867', '2021-08-29 21:15:13.000000');
INSERT INTO `librarian_user` VALUES ('389', 'mengtao', '赵冬梅', '79c2e5ac10b271560bcb2c92090f7c62', '13626293340', '2021-09-05 14:24:38.000000');
INSERT INTO `librarian_user` VALUES ('390', 'pengxia', '杜晶', '68d60efb48818e98d7020775e73ab559', '18111112399', '2021-09-09 04:36:08.000000');
INSERT INTO `librarian_user` VALUES ('391', 'lifang', '庄志强', '51004af178f582107280abbb5d7168ca', '15858205656', '2021-09-11 06:24:13.000000');
INSERT INTO `librarian_user` VALUES ('392', 'gshao', '周冬梅', '3d315e5117eb995dd3dac2c4a3179849', '13269076543', '2021-09-10 05:55:55.000000');
INSERT INTO `librarian_user` VALUES ('393', 'jmao', '施红霞', '72e48211874e96e1bef7552991f9f8e2', '13346599898', '2021-09-02 22:22:55.000000');
INSERT INTO `librarian_user` VALUES ('394', 'xiadeng', '奉杰', '09c5711a385094bcbf5d47e36eaa09da', '15890709626', '2021-09-17 22:01:17.000000');
INSERT INTO `librarian_user` VALUES ('395', 'guoxiuying', '王建国', '80348d00a955387267398aaa4b064668', '13602820911', '2021-08-31 14:19:34.000000');
INSERT INTO `librarian_user` VALUES ('396', 'yongyu', '林帅', '169e82fa6fd0f63d54fde3b35ef54a15', '13334561524', '2021-09-20 11:59:55.000000');
INSERT INTO `librarian_user` VALUES ('397', 'lqiu', '陈桂芳', 'b85befad5d1788f7795cea00334659d1', '18901919108', '2021-08-25 23:35:31.000000');
INSERT INTO `librarian_user` VALUES ('398', 'jieduan', '孔莹', '7a3580a1efa46013055d6e7a254018cf', '13260895640', '2021-09-02 08:52:13.000000');
INSERT INTO `librarian_user` VALUES ('399', 'odai', '唐秀兰', '608d1f5bff96c331ef8e71c354a11820', '15905699219', '2021-09-08 23:02:15.000000');
INSERT INTO `librarian_user` VALUES ('400', 'junyuan', '宋玉华', '71f54a2eb583236fa08cf9fb99d13f3b', '18571589221', '2021-08-31 02:26:55.000000');
INSERT INTO `librarian_user` VALUES ('401', 'kkang', '戴军', '937ccb18ea6b7d5c90e43be95996275a', '15257101249', '2021-08-24 02:48:44.000000');
INSERT INTO `librarian_user` VALUES ('402', 'jun61', '李冬梅', 'bfeb66a29bb1c08964c6e6333062b6c3', '18640174816', '2021-08-30 11:37:52.000000');
INSERT INTO `librarian_user` VALUES ('403', 'gaojun', '李建', '761ab17172c17e27ea4194c4bea6e24d', '18135344437', '2021-09-12 06:58:07.000000');
INSERT INTO `librarian_user` VALUES ('404', 'naxu', '殷琴', '20d8abe4897872c0d5db6d8a35ffd5cd', '13386615661', '2021-09-19 18:21:52.000000');
INSERT INTO `librarian_user` VALUES ('405', 'dengxiulan', '马芳', '5cec9d2036c9ad3efeded7136d1a1049', '18132615727', '2021-08-30 02:17:45.000000');
INSERT INTO `librarian_user` VALUES ('406', 'ocao', '刘建', '28c7a66e795f9a35261b693a0adb948f', '13618653564', '2021-09-10 13:13:41.000000');
INSERT INTO `librarian_user` VALUES ('407', 'guogang', '郭凤英', 'a6c8e2e882e8890ee422b947bcda0988', '14783664596', '2021-08-21 16:40:40.000000');
INSERT INTO `librarian_user` VALUES ('408', 'jing66', '袁建军', 'c99e405a1b65323eb52d73343c184a52', '18772837574', '2021-08-28 22:44:21.000000');
INSERT INTO `librarian_user` VALUES ('409', 'li23', '李欢', '91dc5a8b7c0ea174dd6842d6fcc9de00', '13648935327', '2021-08-28 07:30:34.000000');
INSERT INTO `librarian_user` VALUES ('410', 'yan87', '陈超', 'ad7f20dde05a6d084ae8af6c32ac7f92', '18290239520', '2021-08-26 04:19:11.000000');
INSERT INTO `librarian_user` VALUES ('411', 'guiying57', '何建', '6e468e5cc902d06492d9ea6fddc1f1b0', '13516849029', '2021-08-26 23:02:13.000000');
INSERT INTO `librarian_user` VALUES ('412', 'xia74', '周丽华', 'd117c64687252415bbfa5bccc0f2efc9', '18610935091', '2021-09-05 21:36:45.000000');
INSERT INTO `librarian_user` VALUES ('413', 'liyong', '钱燕', '9df647ca6baed7dd336fc13ffc24b06f', '18198064742', '2021-09-06 04:35:36.000000');
INSERT INTO `librarian_user` VALUES ('414', 'ychang', '梁峰', '4f2807bed862b5f857be005123cfeb1a', '18905914349', '2021-08-30 03:12:36.000000');
INSERT INTO `librarian_user` VALUES ('415', 'guiying65', '杨萍', 'b04df847844ef8dd554d6d50d759c3c6', '18600362060', '2021-09-10 05:55:35.000000');
INSERT INTO `librarian_user` VALUES ('416', 'ixie', '段红霞', 'ec118a6a4aa6895a28a26a737e752b7c', '18527323763', '2021-09-05 14:05:16.000000');
INSERT INTO `librarian_user` VALUES ('417', 'xialei', '孔军', 'a7ae27671aee88bc58b43273943d3d3e', '13961416349', '2021-09-16 08:41:30.000000');
INSERT INTO `librarian_user` VALUES ('418', 'xieyang', '余军', '09caaebec90ab523fd78bc6d0338ee76', '15287371675', '2021-08-23 03:46:30.000000');
INSERT INTO `librarian_user` VALUES ('419', 'ping39', '余娜', '98c116c5fe9b4ae75c943cc8ff890ee1', '15690868253', '2021-09-14 22:46:37.000000');
INSERT INTO `librarian_user` VALUES ('420', 'jiefu', '孟琳', '9738cf039359913ff3be263e86cb9f2d', '15863110252', '2021-09-09 13:40:18.000000');
INSERT INTO `librarian_user` VALUES ('421', 'yan19', '王伟', '3406805cc7d90afea9338f63be9306c5', '15101531246', '2021-09-15 16:46:48.000000');
INSERT INTO `librarian_user` VALUES ('422', 'xiazeng', '张建军', '7e46e0fcbb7f3517b2fbc66451a4c130', '15759336453', '2021-09-16 03:13:33.000000');
INSERT INTO `librarian_user` VALUES ('423', 'wei06', '丁倩', '13ef3724139bb96b872db1f22771298b', '15857510133', '2021-09-10 21:53:57.000000');
INSERT INTO `librarian_user` VALUES ('424', 'sfeng', '管利', '4422a61bad84dcb4abac821d3befb2a2', '15044273544', '2021-09-06 12:12:26.000000');
INSERT INTO `librarian_user` VALUES ('425', 'junwan', '曹兵', 'b23f69fb12192224577c3cb4b4757a03', '13182620835', '2021-09-01 03:07:00.000000');
INSERT INTO `librarian_user` VALUES ('426', 'maoping', '张建国', 'a96d0fae67a61ac305e2a26079cb9ae7', '14592817375', '2021-09-20 05:44:54.000000');
INSERT INTO `librarian_user` VALUES ('427', 'upeng', '杨桂芳', 'aae7b5f49c32838eac5d1d1d6cae9976', '18835392612', '2021-09-15 18:11:21.000000');
INSERT INTO `librarian_user` VALUES ('428', 'xiuyingfu', '萧龙', '554a66a685c8710340e7566d61bd9dc6', '15887679702', '2021-09-09 15:32:00.000000');
INSERT INTO `librarian_user` VALUES ('429', 'oxu', '唐桂珍', 'f2854cd007ec16fbd3ff67d70e350dde', '13742114848', '2021-09-11 21:39:29.000000');
INSERT INTO `librarian_user` VALUES ('430', 'juanlai', '魏华', 'ddf750b429587499e4639f3c34a89f39', '15382725852', '2021-09-19 07:53:38.000000');
INSERT INTO `librarian_user` VALUES ('431', 'weitan', '褚建', '60ab47fa4e4c53dadff1cb8cc9706a74', '13236470567', '2021-09-08 02:26:28.000000');
INSERT INTO `librarian_user` VALUES ('432', 'chao65', '宋彬', 'bf240a8b9f6dd92308cfe599f9c94a84', '13267960804', '2021-09-18 18:53:06.000000');
INSERT INTO `librarian_user` VALUES ('433', 'min80', '何磊', '42589aef38eba8df364e751f981972e6', '18787485117', '2021-08-30 09:35:32.000000');
INSERT INTO `librarian_user` VALUES ('434', 'juan38', '彭瑞', '668520de01b6b009d673b310cd240969', '15235235616', '2021-09-07 15:24:45.000000');
INSERT INTO `librarian_user` VALUES ('435', 'kangping', '郑璐', '2a6c5a875da6922b6d7b262378a89a20', '18079809200', '2021-08-25 23:26:48.000000');
INSERT INTO `librarian_user` VALUES ('436', 'guiyingfang', '夏红梅', 'cbf44df94c0809d77773ac55e5a84b64', '18281598747', '2021-08-23 09:04:14.000000');
INSERT INTO `librarian_user` VALUES ('437', 'yongfan', '张杰', '69cea538f1ef4532322a2dbc92ce0e3b', '18841918360', '2021-09-02 10:19:51.000000');
INSERT INTO `librarian_user` VALUES ('438', 'xiulanliang', '文桂香', 'cfb500eca7353fb6c5f0b6e9e2f942ed', '18525271267', '2021-08-27 03:59:11.000000');
INSERT INTO `librarian_user` VALUES ('439', 'yongsong', '蒋兵', '7d78195e91a87d7846dce230d0732bbe', '18844128255', '2021-09-06 05:14:14.000000');
INSERT INTO `librarian_user` VALUES ('440', 'qiuchao', '陆帆', 'fd4d24581d6d004e615c873289e430a4', '13690274392', '2021-09-02 18:29:57.000000');
INSERT INTO `librarian_user` VALUES ('441', 'chao69', '姚雪梅', '6cb7da587efed7d6a052d0c3f89a6e75', '13067644987', '2021-09-05 11:01:59.000000');
INSERT INTO `librarian_user` VALUES ('442', 'yan98', '吴玉英', 'ec50f0fffd8bc08b7565932208f88d67', '14532190150', '2021-08-24 04:24:46.000000');
INSERT INTO `librarian_user` VALUES ('443', 'xiulan96', '王辉', '70821d277758963ea361f824c6ed7c63', '13306085427', '2021-08-26 15:03:50.000000');
INSERT INTO `librarian_user` VALUES ('444', 'leiwei', '张俊', '5e182f6e955d09d437c46200d3c2c4e5', '18603501727', '2021-09-06 08:14:21.000000');
INSERT INTO `librarian_user` VALUES ('445', 'fanghu', '马飞', '51138f923568baa988e6c248b7187b3c', '18994664217', '2021-09-15 19:38:39.000000');
INSERT INTO `librarian_user` VALUES ('446', 'vgong', '汪敏', '4a2c864eff41db057f633a8786bb9ffe', '15808804897', '2021-08-23 04:02:55.000000');
INSERT INTO `librarian_user` VALUES ('447', 'shaoyong', '柏坤', 'ab8cdec1569ac4d3a505bf2362b4015b', '18766307604', '2021-08-23 21:50:50.000000');
INSERT INTO `librarian_user` VALUES ('448', 'maochao', '王秀兰', 'f3e4cef3708d59e2f0c53429593908bf', '13636768764', '2021-08-31 01:23:24.000000');
INSERT INTO `librarian_user` VALUES ('449', 'qiangren', '刘玉梅', '2f6d5cba62f460bf482e6a96acc0459c', '18866816102', '2021-08-25 09:22:13.000000');
INSERT INTO `librarian_user` VALUES ('450', 'tanjun', '梁丽娟', '36dded309aea030a6317790f644ba1c5', '13580632458', '2021-09-05 13:14:27.000000');
INSERT INTO `librarian_user` VALUES ('451', 'gsong', '钱玲', '557397dd1824e93447ecdccf0426ef09', '18114586482', '2021-08-31 02:02:48.000000');
INSERT INTO `librarian_user` VALUES ('452', 'gangxiao', '赵丽华', '5e09223f099735d954120d1dd3bd2c3a', '13746006831', '2021-09-11 01:12:58.000000');
INSERT INTO `librarian_user` VALUES ('453', 'xiaoxia', '孟秀兰', '514a89f9729af50153c4a69bfe371661', '13955090114', '2021-09-06 04:45:03.000000');
INSERT INTO `librarian_user` VALUES ('454', 'ming47', '谢敏', '149104dcdd1da18981b3d028aa82ac00', '15056362546', '2021-09-07 03:27:29.000000');
INSERT INTO `librarian_user` VALUES ('455', 'dhao', '张萍', 'e8c480b6cb0be026bcb786d11c98bfef', '13447001134', '2021-08-29 02:51:52.000000');
INSERT INTO `librarian_user` VALUES ('456', 'minzheng', '康宇', 'c2634e19822af24b0b65ab5b7c7d8eb2', '13430489122', '2021-09-06 19:38:20.000000');
INSERT INTO `librarian_user` VALUES ('457', 'yongding', '马淑华', '12a7596a48a596e4c26eb3245fd38c86', '15063805640', '2021-09-06 10:07:00.000000');
INSERT INTO `librarian_user` VALUES ('458', 'wei79', '沈桂兰', 'e0d8cdc3280816212503e129820f5d75', '13347059514', '2021-09-03 07:23:00.000000');
INSERT INTO `librarian_user` VALUES ('459', 'luyan', '冉建军', 'c64bb46c128b55d9e5ffb11ef8568999', '18778337534', '2021-08-31 20:05:26.000000');
INSERT INTO `librarian_user` VALUES ('460', 'jchen', '冉波', '7a2750283e250ca661fa17e22594d7c0', '15896086123', '2021-09-14 00:52:01.000000');
INSERT INTO `librarian_user` VALUES ('461', 'yangsun', '王桂花', '0336d68b3ca985b7628376bca53946dc', '15157041629', '2021-08-27 20:49:28.000000');
INSERT INTO `librarian_user` VALUES ('462', 'zouxiulan', '郭凯', '94c978477b3c94c98b93abf0eccaa239', '13783336750', '2021-08-25 22:07:28.000000');
INSERT INTO `librarian_user` VALUES ('463', 'chaodu', '方文', '2fcf3b6c682834f238d4f38125567696', '13519260196', '2021-08-29 12:40:07.000000');
INSERT INTO `librarian_user` VALUES ('464', 'zhongping', '孙勇', '952740e262ce193a6a213c986e4c8c2b', '15931411797', '2021-09-01 04:58:39.000000');
INSERT INTO `librarian_user` VALUES ('465', 'juangong', '马雪梅', '144552af7eadfb02f68523d50dfa58ac', '15633029922', '2021-09-11 06:28:30.000000');
INSERT INTO `librarian_user` VALUES ('466', 'yang22', '胡敏', 'd2bc56bd0e8959c857fffd986101b30c', '15131568255', '2021-09-14 23:15:30.000000');
INSERT INTO `librarian_user` VALUES ('467', 'junpeng', '熊娜', 'c939d0386fed1180785bfaed09b7d815', '18874206484', '2021-08-29 23:20:51.000000');
INSERT INTO `librarian_user` VALUES ('468', 'guiying76', '陈桂芳', '029de72fb9c5769419210c3d88ad6620', '18925372786', '2021-09-14 18:07:45.000000');
INSERT INTO `librarian_user` VALUES ('469', 'yang41', '汪瑜', 'a678119d97b6fdc97074b48e9c917d31', '13077659479', '2021-08-30 21:02:21.000000');
INSERT INTO `librarian_user` VALUES ('470', 'sugang', '王秀兰', '3a6d3fd9cde451fa6228a0bc4b3c9058', '14544790357', '2021-08-28 03:30:25.000000');
INSERT INTO `librarian_user` VALUES ('471', 'wei08', '刘斌', 'ce3861eabfb0714f5e3e725e7226f43e', '14561289141', '2021-09-13 08:21:01.000000');
INSERT INTO `librarian_user` VALUES ('472', 'dlin', '龚畅', '76594a2c1a677ed90fca5c403753af90', '15833698254', '2021-09-02 20:10:50.000000');
INSERT INTO `librarian_user` VALUES ('473', 'xiuying39', '王欣', '30f1af484e5670c844b644eca457e485', '14775509297', '2021-09-15 19:26:53.000000');
INSERT INTO `librarian_user` VALUES ('474', 'yongxiao', '方佳', '0e76bc8f6eeabcb88cf81798119c4827', '13522148052', '2021-09-09 14:56:05.000000');
INSERT INTO `librarian_user` VALUES ('475', 'na69', '张帅', '4d5e495f0519db19ba15708c907d7b42', '18839164802', '2021-09-17 01:49:29.000000');
INSERT INTO `librarian_user` VALUES ('476', 'najia', '邓峰', 'd0d46fc10a7fcfa4ac9f4858fe85f98e', '15161002412', '2021-09-12 20:17:26.000000');
INSERT INTO `librarian_user` VALUES ('477', 'fyin', '朱兰英', '0548538b55b34b2a282b90ab291b7261', '13859430882', '2021-08-28 14:25:10.000000');
INSERT INTO `librarian_user` VALUES ('478', 'taosu', '柯伟', '45f713a9e9183b8610153d6d8d9b905e', '15509445640', '2021-08-30 02:24:37.000000');
INSERT INTO `librarian_user` VALUES ('479', 'fangxiang', '董欣', '2e35a1f66cb488d0a18be93b9a985448', '15306286971', '2021-08-27 23:24:07.000000');
INSERT INTO `librarian_user` VALUES ('480', 'taoxue', '陈梅', 'd1bcac524f23d75eeb48673b92299636', '18710647775', '2021-09-13 16:41:35.000000');
INSERT INTO `librarian_user` VALUES ('481', 'pma', '杨丽华', '3fed59fbb59937310925c86ef052f3a1', '18782614920', '2021-09-02 20:20:23.000000');
INSERT INTO `librarian_user` VALUES ('482', 'yanglai', '李旭', 'f2c3b531dbe3d5bc72074ff040c45aff', '18125967703', '2021-08-22 02:23:56.000000');
INSERT INTO `librarian_user` VALUES ('483', 'yangwei', '覃冬梅', '69ce8592536b2b848f99b6f876ce4513', '18819870803', '2021-09-08 20:50:25.000000');
INSERT INTO `librarian_user` VALUES ('484', 'hujing', '黄欣', 'd5138375b2e0b9c5f1d19ae3b0abcc6a', '18854715265', '2021-08-30 10:13:36.000000');
INSERT INTO `librarian_user` VALUES ('485', 'yancao', '刘浩', '54f78ce64c0c6f5a115dd83146132aec', '15343852360', '2021-09-06 18:49:38.000000');
INSERT INTO `librarian_user` VALUES ('486', 'minxiao', '周丹', '9d81dbf602f006fc6b216f50740e40d0', '14594879548', '2021-09-09 22:47:40.000000');
INSERT INTO `librarian_user` VALUES ('487', 'vyuan', '韩萍', '0c1ee48b542ec12326e653e087df41ff', '13329802636', '2021-09-12 19:15:50.000000');
INSERT INTO `librarian_user` VALUES ('488', 'jingyang', '宫秀华', '5ba1045ecec271aa361241e9f112879e', '14537886888', '2021-09-02 05:32:06.000000');
INSERT INTO `librarian_user` VALUES ('489', 'pingding', '徐敏', '039451a64493daa3c3bb2b8b7d6b3eb2', '14571051457', '2021-08-26 03:38:20.000000');
INSERT INTO `librarian_user` VALUES ('490', 'wei72', '宁淑珍', 'e2442b6cc64462403aec244929ef7a84', '14792897731', '2021-08-27 22:20:56.000000');
INSERT INTO `librarian_user` VALUES ('491', 'xiulanhuang', '毛艳', '30d853c7957cff826516b00ee416abc4', '14562046330', '2021-08-26 22:56:54.000000');
INSERT INTO `librarian_user` VALUES ('492', 'dengxiulan', '张雷', '1ebdca45b6a0d0a99818a5e3d3655f6f', '15014968184', '2021-08-23 00:27:23.000000');
INSERT INTO `librarian_user` VALUES ('493', 'yang39', '邱海燕', '128f428f28fb43c0d19acff682823dd9', '13239055979', '2021-08-29 21:12:30.000000');
INSERT INTO `librarian_user` VALUES ('494', 'fyang', '邱洁', '76e623bf2f3484077879ac99f4070f4d', '15799259602', '2021-08-30 04:41:23.000000');
INSERT INTO `librarian_user` VALUES ('495', 'juan75', '卢英', 'ad92433f7a5fbcf887c2060738ca4b99', '15754572373', '2021-09-13 09:19:05.000000');
INSERT INTO `librarian_user` VALUES ('496', 'fengchao', '张旭', 'b4dd8d019f45b8ae9956144eb375051e', '18556387701', '2021-08-30 01:40:20.000000');
INSERT INTO `librarian_user` VALUES ('497', 'nfang', '穆想', '92ec4cfeb35ebaabd2c086f13332653e', '15803392962', '2021-08-23 19:26:43.000000');
INSERT INTO `librarian_user` VALUES ('498', 'jiayong', '何雪', 'bb97dd590e2f97a7d86b5b850bc3e024', '15303513905', '2021-09-17 18:34:31.000000');
INSERT INTO `librarian_user` VALUES ('499', 'panfang', '陈玉珍', '80acd0a90df23c3bddf822a354e9cc71', '18073201084', '2021-09-15 12:24:49.000000');
INSERT INTO `librarian_user` VALUES ('500', 'min96', '罗敏', '0bfb01ab9a557c54b79214d261fd8769', '13726532909', '2021-09-13 09:38:03.000000');
INSERT INTO `librarian_user` VALUES ('501', 'gangwei', '陆敏', 'dcfb88964a1a97bde26a781cadaeb92b', '15634552446', '2021-09-11 19:41:21.000000');
INSERT INTO `librarian_user` VALUES ('502', 'juanzhong', '尹淑英', 'c506e6aa3e9c624f817b47d1124bacc2', '13832646744', '2021-09-02 07:16:07.000000');
INSERT INTO `librarian_user` VALUES ('503', 'yanren', '赖红霞', 'c1173dd308f6c6de2a794d10caf315c7', '15623123715', '2021-09-15 04:42:22.000000');
INSERT INTO `librarian_user` VALUES ('504', 'xiuying83', '徐文', '6ffb725dda92d3562b7d4ae3ed42e90c', '13696453858', '2021-09-06 22:39:18.000000');
INSERT INTO `librarian_user` VALUES ('505', 'ping25', '郑玉兰', '3c0424f3f6c459620d56304db405e656', '18198889790', '2021-09-15 23:04:04.000000');
INSERT INTO `librarian_user` VALUES ('506', 'shaoli', '黄玲', '3cb62d0e50c35ee1ecae6cb01e8d0036', '18265931827', '2021-08-24 03:30:47.000000');
INSERT INTO `librarian_user` VALUES ('507', 'lei47', '徐玉英', 'efbbee355b4ea8f7d6581b484538b002', '15631024295', '2021-09-09 10:05:37.000000');
INSERT INTO `librarian_user` VALUES ('508', 'sunyang', '李桂香', 'dd471ff9c53b96514447485f4eb655ef', '18875164861', '2021-09-16 21:35:52.000000');
INSERT INTO `librarian_user` VALUES ('509', 'nqian', '周桂珍', 'bdddfe6d181c207c4710ec5b4b1c48b2', '15151476953', '2021-08-31 21:24:01.000000');
INSERT INTO `librarian_user` VALUES ('510', 'tao34', '李芳', '36c80ea08a273482bac59d8c42a037f9', '18181517346', '2021-08-25 16:12:36.000000');
INSERT INTO `librarian_user` VALUES ('511', 'taoshao', '刘建国', '305501d310b2d1a94b32026b00935428', '18569624571', '2021-09-15 06:43:13.000000');
INSERT INTO `librarian_user` VALUES ('512', 'lizou', '孙秀英', '6aee1476316dbad214e927e268521b40', '18247860557', '2021-09-18 07:24:21.000000');
INSERT INTO `librarian_user` VALUES ('513', 'xiuying42', '戴晨', '3134aef1f487683247f02da222aec6cc', '14725852436', '2021-09-18 06:38:40.000000');
INSERT INTO `librarian_user` VALUES ('514', 'yaoxia', '王海燕', '1267962709d822d67a5d85dd09e0b2e2', '13252242050', '2021-09-09 14:55:17.000000');
INSERT INTO `librarian_user` VALUES ('515', 'tao91', '陈慧', '41dd1a55bd84fdbae4bb74d2ae19450d', '15974566745', '2021-09-20 04:03:50.000000');
INSERT INTO `librarian_user` VALUES ('516', 'jshen', '季淑珍', 'abee0726142414cda8ecbf5d8d89f85d', '15064905961', '2021-08-24 02:39:00.000000');
INSERT INTO `librarian_user` VALUES ('517', 'huangjie', '计桂荣', '7a2be77f8578db268ad01f13c1af1925', '13459404353', '2021-09-10 18:03:54.000000');
INSERT INTO `librarian_user` VALUES ('518', 'ohou', '马莉', '08007285fa89eb26fa5b314172917c18', '13206204339', '2021-09-12 06:43:25.000000');
INSERT INTO `librarian_user` VALUES ('519', 'chao94', '尚俊', '20884cf6be64b36c79d0ae513b1218c9', '14754069142', '2021-09-19 02:49:07.000000');
INSERT INTO `librarian_user` VALUES ('520', 'gsun', '孙涛', 'af98c8c8ec994a916630d47d1789d201', '18636823121', '2021-08-22 11:48:04.000000');
INSERT INTO `librarian_user` VALUES ('521', 'yangwei', '戴强', '0f60bc7839daa1fbc82a1d505ac29f73', '18244505075', '2021-08-25 01:30:55.000000');
INSERT INTO `librarian_user` VALUES ('522', 'chengqiang', '任宇', '2c6b9fdf08dff27f47814d8b5b2af611', '15208712596', '2021-09-12 16:29:42.000000');
INSERT INTO `librarian_user` VALUES ('523', 'junfu', '胡磊', 'bebb43d01c73666cd7ea8239a83b5a4e', '13111301008', '2021-09-09 04:19:52.000000');
INSERT INTO `librarian_user` VALUES ('524', 'wmo', '鲁杰', '01a055ade2dc1decb7d13cbfb5e24289', '13124620646', '2021-09-08 08:43:49.000000');
INSERT INTO `librarian_user` VALUES ('525', 'hyang', '李淑华', 'b136bb74ce0932937988a77af3fe3393', '18161233260', '2021-09-05 20:56:58.000000');
INSERT INTO `librarian_user` VALUES ('526', 'li72', '潘琳', '2773ae3417ce3cd540cd42736cdc0a04', '18293360850', '2021-08-30 01:06:56.000000');
INSERT INTO `librarian_user` VALUES ('527', 'yanlin', '黎丹', 'ec312a8099154bbb1e75d65f606f6991', '15803522495', '2021-08-30 17:13:35.000000');
INSERT INTO `librarian_user` VALUES ('528', 'liaoxiulan', '解岩', '2c97ffe75cb001051e8398aa4d5665cb', '14759300781', '2021-09-14 01:41:44.000000');
INSERT INTO `librarian_user` VALUES ('529', 'changping', '周鑫', '904fbf57720612dc7070a9eb947d425a', '18542901989', '2021-08-30 03:01:59.000000');
INSERT INTO `librarian_user` VALUES ('530', 'lingang', '鞠彬', '97511554b31b2dccfd11cab0d46e7dc7', '13936335439', '2021-09-16 14:22:38.000000');
INSERT INTO `librarian_user` VALUES ('531', 'iluo', '王琳', '24841902750f671dc82564afd749ae09', '15281210997', '2021-09-18 04:21:56.000000');
INSERT INTO `librarian_user` VALUES ('532', 'lhao', '刘柳', '06356455a7d9d0f9bc9ed0f1edb81827', '18520045095', '2021-09-08 19:22:35.000000');
INSERT INTO `librarian_user` VALUES ('533', 'nazhong', '葛俊', '514f6523916bafdb48095693f3d28d72', '13835828894', '2021-09-03 12:12:05.000000');
INSERT INTO `librarian_user` VALUES ('534', 'uwu', '许柳', '2945921f466a28721b25e0f319bc6e40', '13223804378', '2021-09-11 07:08:45.000000');
INSERT INTO `librarian_user` VALUES ('535', 'minglei', '兰淑华', 'f5ff03b984e360437e399c6b34f02326', '15511417289', '2021-08-29 17:21:46.000000');
INSERT INTO `librarian_user` VALUES ('536', 'qintao', '范超', '1cfa7386a191b42cca226b5f6459b67d', '13075130896', '2021-09-11 21:26:44.000000');
INSERT INTO `librarian_user` VALUES ('537', 'xiejuan', '陈宁', '9f220c0079a418daaf5ea8063891031c', '15938287993', '2021-08-27 02:32:26.000000');
INSERT INTO `librarian_user` VALUES ('538', 'ecui', '贾秀芳', 'b5cc055d0f8fcf505b1f87e83ff4e4dd', '15714203089', '2021-09-07 11:35:30.000000');
INSERT INTO `librarian_user` VALUES ('539', 'zpan', '马健', '914d46ff4bacb81a11bcb5bfc590652b', '13958691337', '2021-09-13 14:10:26.000000');
INSERT INTO `librarian_user` VALUES ('540', 'zhanglei', '王想', 'df814efd71374ea73c2404b7d37cd58b', '15143861412', '2021-09-04 15:47:06.000000');
INSERT INTO `librarian_user` VALUES ('541', 'efan', '朱雪梅', '0579f542ba06710daece201786f56f7f', '18021755800', '2021-09-06 09:03:59.000000');
INSERT INTO `librarian_user` VALUES ('542', 'yulei', '谭想', '2c623ecb4d9abe690bf60064ceed2068', '18717791645', '2021-09-01 12:26:19.000000');
INSERT INTO `librarian_user` VALUES ('543', 'fangpeng', '桂秀梅', '7bc37cff20f50b8c1a4627ac3b9428f5', '18828175691', '2021-08-23 04:33:30.000000');
INSERT INTO `librarian_user` VALUES ('544', 'lei67', '谢桂荣', '102d34b8d61e5fae58e5aff28ec464e7', '15901268004', '2021-09-12 05:07:23.000000');
INSERT INTO `librarian_user` VALUES ('545', 'zhuxiuying', '朱瑜', '0847b7b6a437bf27513f65939a8c0692', '14532165930', '2021-09-08 16:31:29.000000');
INSERT INTO `librarian_user` VALUES ('546', 'wshen', '马红', '91c25957c972e876eae5f95d14ec463f', '18090961398', '2021-09-18 21:26:29.000000');
INSERT INTO `librarian_user` VALUES ('547', 'songyan', '呼淑珍', 'adeaf8dfc12fc22532f3b6c11e3fb4f6', '13327933616', '2021-08-26 19:27:36.000000');
INSERT INTO `librarian_user` VALUES ('548', 'pingfan', '张建', 'bd213ef64d78de38e795c9cb1f77d74a', '18895962497', '2021-09-11 12:54:50.000000');
INSERT INTO `librarian_user` VALUES ('549', 'junxu', '汪瑞', 'a393d59355b843130751523fbab3bbb5', '13869735174', '2021-08-23 08:19:47.000000');
INSERT INTO `librarian_user` VALUES ('550', 'ehu', '王璐', '9e62672b70eb9652731c7df0c7de3816', '15685272519', '2021-09-13 22:24:03.000000');
INSERT INTO `librarian_user` VALUES ('551', 'fang25', '雷杰', '03e8079e9a8c3beaf3a37ddc888c06fb', '13320379979', '2021-09-07 06:39:51.000000');
INSERT INTO `librarian_user` VALUES ('552', 'jiesong', '王楠', 'c8128b084247ccb0bc78e85e4536f52c', '18048129774', '2021-09-04 17:04:48.000000');
INSERT INTO `librarian_user` VALUES ('553', 'eqin', '李桂兰', '1a6fb7df50c79c4e3446031dea826102', '15626895251', '2021-09-10 11:22:31.000000');
INSERT INTO `librarian_user` VALUES ('554', 'vliang', '李磊', 'dbf54a3eacd322c5c8152d2fe55693e3', '13301907435', '2021-09-14 00:20:48.000000');
INSERT INTO `librarian_user` VALUES ('555', 'ming20', '卢萍', '515a5e4646629ea1c0e0eb95b726e25d', '13714275751', '2021-09-14 22:46:19.000000');
INSERT INTO `librarian_user` VALUES ('556', 'guoguiying', '王杨', '795ba728f8ea9c9b084b8e8c76ae0922', '18097428749', '2021-09-20 12:08:16.000000');
INSERT INTO `librarian_user` VALUES ('557', 'yangye', '李华', '590b8e2c1ee26b5edc8d725f80f63ecb', '15710284137', '2021-08-31 02:46:55.000000');
INSERT INTO `librarian_user` VALUES ('558', 'leixue', '侯敏', 'f977e308e66a0a328079fcd4db6f97d3', '18295081328', '2021-09-03 02:26:50.000000');
INSERT INTO `librarian_user` VALUES ('559', 'eyi', '王雪', '23daa3632a1fdc5d65b8b9f9ecbadd7e', '18697373971', '2021-08-27 02:40:49.000000');
INSERT INTO `librarian_user` VALUES ('560', 'fzhang', '赵丽丽', '734767669c636d9da0f7e761bbb921e7', '13162681747', '2021-09-17 13:57:00.000000');
INSERT INTO `librarian_user` VALUES ('561', 'zengguiying', '孙柳', '4b30209e2959d58ae4c027f261effc4a', '15017104843', '2021-08-26 01:33:51.000000');
INSERT INTO `librarian_user` VALUES ('562', 'sliang', '李秀梅', 'b9397c0181f8dea8fb279354d876f7a0', '15040911962', '2021-09-08 16:00:26.000000');
INSERT INTO `librarian_user` VALUES ('563', 'alai', '赵伟', 'ecd45fe27e7cdeab01cb3148a79ddb90', '14782973565', '2021-09-15 16:51:19.000000');
INSERT INTO `librarian_user` VALUES ('564', 'vyi', '杨兰英', 'defb52d98b59ac787d3e1eb5218131ff', '18064607931', '2021-08-26 05:45:42.000000');
INSERT INTO `librarian_user` VALUES ('565', 'osong', '姜淑兰', '4a156c9fd7bd415e878931059e85df96', '18520909575', '2021-08-30 15:28:42.000000');
INSERT INTO `librarian_user` VALUES ('566', 'chao65', '滕秀珍', 'c540d50fc4113c56ff8c8acd03b0cf36', '13551203634', '2021-08-27 23:51:08.000000');
INSERT INTO `librarian_user` VALUES ('567', 'taomeng', '赵晶', '64da19e41f1a84f1f2ad9f15c1d069f7', '15662414952', '2021-08-27 01:21:10.000000');
INSERT INTO `librarian_user` VALUES ('568', 'yangren', '张玉英', '1d9c896713971abaa3fdd514f96eef92', '15354266317', '2021-08-24 20:56:29.000000');
INSERT INTO `librarian_user` VALUES ('569', 'gang42', '冯建军', '67506568fe613207c91e5f8f1de24b9a', '13222197760', '2021-08-27 21:13:45.000000');
INSERT INTO `librarian_user` VALUES ('570', 'etan', '方雷', 'ed72e561874a941d336d0c6decabd28d', '15753513491', '2021-08-31 16:24:23.000000');
INSERT INTO `librarian_user` VALUES ('571', 'weidong', '杨桂香', '404757ac456d8477ffb363a0d313af87', '18634628999', '2021-09-08 09:37:23.000000');
INSERT INTO `librarian_user` VALUES ('572', 'yong74', '曹云', '868d744fc3e6bcd480f0306aa9b3e028', '14587471732', '2021-08-28 15:32:30.000000');
INSERT INTO `librarian_user` VALUES ('573', 'xiulan48', '关阳', '60a81cf3ba21fdb155484b756bf68a8e', '15618092531', '2021-09-09 18:41:59.000000');
INSERT INTO `librarian_user` VALUES ('574', 'ming55', '周莹', 'cb269bdab5752966a9f531e25a3669fd', '13954681548', '2021-08-28 02:06:49.000000');
INSERT INTO `librarian_user` VALUES ('575', 'weimo', '唐兵', '92a164a7702f4e91bfb4d3701b24fb8b', '15684531264', '2021-08-25 17:39:18.000000');
INSERT INTO `librarian_user` VALUES ('576', 'mingyi', '余帅', '19047ea59e00a5f046c6f2478d85d923', '18739254337', '2021-09-05 18:15:52.000000');
INSERT INTO `librarian_user` VALUES ('577', 'sgao', '栾文', '477dbeb2a75556c297575625516bc5e5', '18593701094', '2021-09-15 00:08:17.000000');
INSERT INTO `librarian_user` VALUES ('578', 'junxia', '刘霞', '636625992f94f5ec5499110b3997204f', '13808785242', '2021-09-19 08:07:45.000000');
INSERT INTO `librarian_user` VALUES ('579', 'xiazeng', '李雷', '26be6ad6a59f6990ccb721e08d768bab', '13798555525', '2021-09-08 23:02:03.000000');
INSERT INTO `librarian_user` VALUES ('580', 'zxiang', '林秀荣', 'ed76a9ef065f886e79f110d6396258bd', '13310214811', '2021-09-05 09:50:10.000000');
INSERT INTO `librarian_user` VALUES ('581', 'sunxia', '李彬', '8dce3732df37a9db593b103713813159', '18835746231', '2021-09-12 13:13:36.000000');
INSERT INTO `librarian_user` VALUES ('582', 'wdu', '郭海燕', 'ce0c5935fb7bd566613566e642cdae9e', '15619714702', '2021-09-04 18:02:47.000000');
INSERT INTO `librarian_user` VALUES ('583', 'gangliao', '沈秀珍', '9a725d5002e4bad3f89d75d8673bbf91', '15534924198', '2021-08-27 04:39:56.000000');
INSERT INTO `librarian_user` VALUES ('584', 'jqiu', '周燕', '10c167cf472fa6d925a84ccd504dd1e4', '18760783884', '2021-08-29 11:58:08.000000');
INSERT INTO `librarian_user` VALUES ('585', 'mzhao', '李艳', '267f80530033d0fba28e4b83a8e1f230', '18976703216', '2021-08-27 22:40:40.000000');
INSERT INTO `librarian_user` VALUES ('586', 'vbai', '邹秀华', '6fbdc78bea2195385454054337d4daf6', '15305851474', '2021-09-16 10:12:25.000000');
INSERT INTO `librarian_user` VALUES ('587', 'tao28', '游波', 'e7e8bf21cf7e6f5521f4b38a99b12032', '15352136949', '2021-09-08 19:24:48.000000');
INSERT INTO `librarian_user` VALUES ('588', 'ohou', '许帆', '8b46c46f3515a1bc16e0327b31170bc0', '15397394902', '2021-08-21 15:34:02.000000');
INSERT INTO `librarian_user` VALUES ('589', 'xiacao', '夏婷婷', '8f2b7da7380ffe3599b8bba8042e6f72', '18026850031', '2021-09-14 09:23:15.000000');
INSERT INTO `librarian_user` VALUES ('590', 'houqiang', '杨强', '042804ce349ec8f649455bb051d93372', '18819827118', '2021-08-22 01:53:07.000000');
INSERT INTO `librarian_user` VALUES ('591', 'na00', '张军', 'a66116488deeb861f56540219dd7b274', '18845387881', '2021-09-14 07:41:32.000000');
INSERT INTO `librarian_user` VALUES ('592', 'jungong', '王丽华', 'c09f96db7cb29e9935e19183a901f76a', '13820869580', '2021-09-10 05:44:04.000000');
INSERT INTO `librarian_user` VALUES ('593', 'zliu', '杨晨', '941bf20e1fe6226a1c38c5f468e1759c', '15314101872', '2021-08-24 03:47:42.000000');
INSERT INTO `librarian_user` VALUES ('594', 'xiulan70', '鲁艳', '10170c160cbf7ac98627fa8ea9c4441a', '18852462724', '2021-09-04 11:36:07.000000');
INSERT INTO `librarian_user` VALUES ('595', 'xiulanye', '郑玲', '4551c822277e024c156ff40a455ae4e2', '13141029470', '2021-09-07 06:22:49.000000');
INSERT INTO `librarian_user` VALUES ('596', 'huanggang', '张金凤', '01b57c7d9b421c6cc3dabf0b61884050', '15182721409', '2021-08-24 19:40:12.000000');
INSERT INTO `librarian_user` VALUES ('597', 'liguiying', '赵东', 'd907707e6b6a067abec5dc166d53976c', '18743924211', '2021-09-04 15:49:16.000000');
INSERT INTO `librarian_user` VALUES ('598', 'yanjuan', '余雷', 'a549db7ac67f3d0d682a2b91a6a8f104', '18809291684', '2021-09-07 06:01:18.000000');
INSERT INTO `librarian_user` VALUES ('599', 'hantao', '葛晶', 'a25c7954f5fb06143a1a49c331a3db23', '13389328781', '2021-09-19 04:45:03.000000');
INSERT INTO `librarian_user` VALUES ('600', 'li69', '常敏', '455aabe8a251cd2eb1f6274ee6cb7ccf', '14572097106', '2021-09-07 23:07:14.000000');
INSERT INTO `librarian_user` VALUES ('601', 'hjin', '李东', 'd6b8ec9f195b4eebc2ed190269c77b97', '13786572074', '2021-09-11 09:19:55.000000');
INSERT INTO `librarian_user` VALUES ('602', 'chaofan', '董萍', '0f158b284f624d41cf7d96830caea15e', '15187189461', '2021-09-04 06:54:17.000000');
INSERT INTO `librarian_user` VALUES ('603', 'ganghu', '赵金凤', '0f77877350bfd7e045ee69d928b6940d', '15398656529', '2021-09-09 11:30:08.000000');
INSERT INTO `librarian_user` VALUES ('604', 'menglei', '孙婷婷', 'f4526619e9c56b9903e9cfeae3f5a15c', '18173691440', '2021-08-28 09:04:39.000000');
INSERT INTO `librarian_user` VALUES ('605', 'ulong', '彭梅', 'dc94c84309cc41169043c29463aac8d0', '13949324489', '2021-09-10 21:26:54.000000');
INSERT INTO `librarian_user` VALUES ('606', 'yangjia', '张旭', '46c1064bb2178ce71030d6f314ec226a', '13280434105', '2021-08-30 17:52:18.000000');
INSERT INTO `librarian_user` VALUES ('607', 'fangliang', '覃艳', '5bfbb6941f46488f5ba275db96575235', '13857654191', '2021-09-02 13:34:38.000000');
INSERT INTO `librarian_user` VALUES ('608', 'weihan', '李明', 'acbc03cb9ff81fe1fd2e953f157ab78c', '18571955600', '2021-08-31 18:21:22.000000');
INSERT INTO `librarian_user` VALUES ('609', 'xia03', '陈文', '45c0f0b9a6a7b40b3e2c3c074768520b', '15928614577', '2021-09-05 08:26:11.000000');
INSERT INTO `librarian_user` VALUES ('610', 'yangxiong', '李东', '806f2be3a27590695294e19ea89e1c31', '13127416958', '2021-09-09 17:29:00.000000');
INSERT INTO `librarian_user` VALUES ('611', 'zhongyong', '朱杰', 'ae7cdb2e76328e37a891c7618a832517', '18864991244', '2021-08-24 02:16:11.000000');
INSERT INTO `librarian_user` VALUES ('612', 'fpan', '黄荣', '0321e4ede257d9c18f2b50f0d4be4cce', '14569855517', '2021-08-24 13:13:05.000000');
INSERT INTO `librarian_user` VALUES ('613', 'vjiang', '陈健', '9ee617d3a229926230ff9ef24f404ee5', '18793300131', '2021-08-26 05:28:08.000000');
INSERT INTO `librarian_user` VALUES ('614', 'jun67', '兰建', '220a8173cc9e1e5b6726dfa3da599e5b', '18299763233', '2021-09-13 07:18:01.000000');
INSERT INTO `librarian_user` VALUES ('615', 'tyu', '朱辉', '1149f939d89a4e8cef357339ff5b2b33', '15606813386', '2021-09-09 05:32:29.000000');
INSERT INTO `librarian_user` VALUES ('616', 'jun16', '林洁', '3b035e54bc5dcb52710ae543a69ec0fc', '13417082979', '2021-09-13 02:37:31.000000');
INSERT INTO `librarian_user` VALUES ('617', 'junxue', '蒙兰英', '532e418b0e67a2123922a0da84f66e8d', '13347586122', '2021-09-18 00:56:19.000000');
INSERT INTO `librarian_user` VALUES ('618', 'jiangwei', '刘丹丹', '8b56a20b5c4f5073e3f851910641eee5', '13800048795', '2021-08-29 05:33:01.000000');
INSERT INTO `librarian_user` VALUES ('619', 'fang48', '萧秀梅', '069cbf9ca61d879cafe76765c032db41', '13401667686', '2021-09-10 07:26:02.000000');
INSERT INTO `librarian_user` VALUES ('620', 'yan65', '张阳', '09b5b0407e6835b63f41d6429fc1444b', '15115256729', '2021-09-15 17:29:26.000000');
INSERT INTO `librarian_user` VALUES ('621', 'taohou', '刘凤英', 'bf68580330ad43643b7839ef07c40be5', '15754649629', '2021-08-24 01:28:08.000000');
INSERT INTO `librarian_user` VALUES ('622', 'olei', '卓勇', '30006d12c66481bf066b20138e49c33d', '13861055346', '2021-09-15 19:26:23.000000');
INSERT INTO `librarian_user` VALUES ('623', 'jie93', '王萍', '640bcc99f3ca45a72befcec971f57551', '13425325614', '2021-09-14 03:07:28.000000');
INSERT INTO `librarian_user` VALUES ('624', 'klong', '禹亮', '5667d2734d13bc7c4e0165e114e351f2', '13862697623', '2021-08-30 18:42:34.000000');
INSERT INTO `librarian_user` VALUES ('625', 'xiulan04', '王洋', 'c89f4ba821475d4723640e390fda2788', '14794769216', '2021-09-05 03:02:54.000000');
INSERT INTO `librarian_user` VALUES ('626', 'gang48', '王梅', 'b47ae50614bb74ff5e218c68ba427601', '14513139697', '2021-09-18 02:29:33.000000');
INSERT INTO `librarian_user` VALUES ('627', 'yong46', '吴欢', '9b196a3adc5d289c67446051f67aa91c', '15988367282', '2021-09-17 19:55:43.000000');
INSERT INTO `librarian_user` VALUES ('628', 'wengang', '余娟', '1c2a0608e5f5defb5db2526bfbdb449a', '15513538340', '2021-08-31 12:04:13.000000');
INSERT INTO `librarian_user` VALUES ('629', 'naliang', '袁敏', '4d5ef5a59ab1527667221fa59df120f0', '13660871539', '2021-08-29 12:40:53.000000');
INSERT INTO `librarian_user` VALUES ('630', 'fang37', '叶利', '52bfc90546cae56cac12fd0fc93ff788', '15820429900', '2021-09-13 07:44:50.000000');
INSERT INTO `librarian_user` VALUES ('631', 'cuiqiang', '王玲', 'e21dfd528b908ff4fa3b291d67e80ad4', '14539150264', '2021-09-13 00:34:04.000000');
INSERT INTO `librarian_user` VALUES ('632', 'qiang32', '王玲', 'ed46df8cae40df353506d83fafd59583', '18638126990', '2021-08-29 02:34:24.000000');
INSERT INTO `librarian_user` VALUES ('633', 'wei67', '王秀荣', '8af5ca9cb728e341d8e2b47e114a51ac', '15526364079', '2021-09-18 19:02:46.000000');
INSERT INTO `librarian_user` VALUES ('634', 'yongtao', '许博', 'f03d541468124a95509cdbdb7c729d83', '15510008580', '2021-09-10 00:04:11.000000');
INSERT INTO `librarian_user` VALUES ('635', 'jintao', '韦明', 'da383ec3409faa515c7e6ea5b397e365', '14516961985', '2021-09-04 12:51:57.000000');
INSERT INTO `librarian_user` VALUES ('636', 'jxu', '王佳', '69389439f64a774db3d344acf336476f', '15775511072', '2021-09-14 03:44:26.000000');
INSERT INTO `librarian_user` VALUES ('637', 'juan75', '郭健', 'cd91678fce9566d6e7f283c7ad1ac930', '18127008371', '2021-09-03 10:37:01.000000');
INSERT INTO `librarian_user` VALUES ('638', 'yan05', '陈霞', '25b5d32ba41c666da49ba22568f4699f', '13566263156', '2021-09-07 09:41:50.000000');
INSERT INTO `librarian_user` VALUES ('639', 'fcui', '张凯', '64bd74be50f0dd49d414e2cf0ef9b46b', '15547231537', '2021-08-25 23:20:26.000000');
INSERT INTO `librarian_user` VALUES ('640', 'oyang', '刘玉梅', '132fb4bb3710f960b9add3bc7d99134f', '13367222693', '2021-09-09 07:05:28.000000');
INSERT INTO `librarian_user` VALUES ('641', 'zhao', '王勇', '639d0c0119425f8e94dc90f9d405b002', '15553201241', '2021-09-05 05:41:59.000000');
INSERT INTO `librarian_user` VALUES ('642', 'leizheng', '傅秀梅', 'daf3c36fc000fd9f76647460144f6dd8', '14547391716', '2021-08-23 04:49:34.000000');
INSERT INTO `librarian_user` VALUES ('643', 'yong85', '欧东', '4995c5bd75f7a23ebda48d057adff6b6', '18216398556', '2021-08-30 22:15:37.000000');
INSERT INTO `librarian_user` VALUES ('644', 'gongwei', '许秀华', '4451ce2ffe2dea11e48d865e2858f4a6', '18209425998', '2021-09-08 06:15:24.000000');
INSERT INTO `librarian_user` VALUES ('645', 'liuli', '樊娜', '4eac8f9aaa969134121c224cbc586a9b', '18749545253', '2021-09-10 11:29:41.000000');
INSERT INTO `librarian_user` VALUES ('646', 'jieduan', '柳丽娟', '1c0d94606ead5d2fc21649438cbfe9fe', '13548573224', '2021-08-28 00:41:15.000000');
INSERT INTO `librarian_user` VALUES ('647', 'gang98', '王静', '81141982726989b65873ade1eaeef2da', '15161358533', '2021-09-08 07:36:11.000000');
INSERT INTO `librarian_user` VALUES ('648', 'min28', '吴凯', '08fdd0c8be7a7aa504de6db7c49141b4', '15984513407', '2021-09-13 05:13:43.000000');
INSERT INTO `librarian_user` VALUES ('649', 'gaoli', '王欢', '144ddccae3d9fdd66d0e56fe1bab6a53', '14513078714', '2021-09-14 01:39:14.000000');
INSERT INTO `librarian_user` VALUES ('650', 'oxia', '吴凯', '73211c34195c0d28c5dd7c168b9b74ae', '15544897519', '2021-09-08 04:14:40.000000');
INSERT INTO `librarian_user` VALUES ('651', 'yanzhang', '陈莹', '1fc5e166de30a512e810bdf47e0b2ddc', '14574635989', '2021-09-05 16:28:49.000000');
INSERT INTO `librarian_user` VALUES ('652', 'yangqian', '杨梅', '285b0f37e2c5dcb2ea975b1c7ddcaf12', '13154896751', '2021-09-17 19:38:00.000000');
INSERT INTO `librarian_user` VALUES ('653', 'xiuying40', '马坤', 'ba0bc4f64b1f59db790754529851d6c0', '15922691727', '2021-08-22 18:16:35.000000');
INSERT INTO `librarian_user` VALUES ('654', 'jun72', '李红', 'f821c2f117480d5850b8a964f3e4801c', '15022016499', '2021-09-04 22:55:39.000000');
INSERT INTO `librarian_user` VALUES ('655', 'leitao', '林林', '42083bebe80135964cb8987d67c43575', '15813828943', '2021-09-03 07:05:11.000000');
INSERT INTO `librarian_user` VALUES ('656', 'dingmin', '孙静', '1893225822a273fff2a23f0411244ba0', '14516064000', '2021-09-10 16:41:48.000000');
INSERT INTO `librarian_user` VALUES ('657', 'wanyong', '李瑞', 'caa78aef47f3baf1a362574fa4a0b573', '13910254485', '2021-09-07 16:30:21.000000');
INSERT INTO `librarian_user` VALUES ('658', 'wzhao', '欧阳鹏', '0dd3257643fe2ae33f15faa7aa58c9b0', '14547136894', '2021-09-18 03:40:24.000000');
INSERT INTO `librarian_user` VALUES ('659', 'jing07', '庞云', '4a7a109089cd33732ec7a0a29b7b9d9c', '18001595520', '2021-09-12 10:25:54.000000');
INSERT INTO `librarian_user` VALUES ('660', 'hxu', '赵桂花', 'd5398485c5a1bf26654df016fe5912ee', '14737726864', '2021-09-01 21:09:05.000000');
INSERT INTO `librarian_user` VALUES ('661', 'uhou', '孔俊', '16532ec60bb0b9f71676b754b00fba0e', '13836918130', '2021-09-03 23:24:41.000000');
INSERT INTO `librarian_user` VALUES ('662', 'fengxiuying', '冯亮', 'bc53b353a1b114f38a1b08920fde12a2', '15242615920', '2021-09-15 06:59:42.000000');
INSERT INTO `librarian_user` VALUES ('663', 'nyao', '司丽华', 'e5c06b5283a6e1b5b142463c730615b5', '14731132783', '2021-09-11 23:08:21.000000');
INSERT INTO `librarian_user` VALUES ('664', 'sshao', '唐东', '81bcfd0a8b36f46871e6e11b815d6e6a', '18718428156', '2021-08-29 06:16:26.000000');
INSERT INTO `librarian_user` VALUES ('665', 'pdai', '陈凤英', '888a48b7d0b5839df61991ff92441a50', '14748808540', '2021-08-26 20:17:50.000000');
INSERT INTO `librarian_user` VALUES ('666', '王铁柱', 'zidong', '202cb962ac59075b964b07152d234b70', '1678978660', '2021-09-20 16:57:28.984093');
INSERT INTO `librarian_user` VALUES ('667', '王巍巍', 'zidong', '202cb962ac59075b964b07152d234b70', '1678978660', '2021-09-20 17:27:47.692850');
INSERT INTO `librarian_user` VALUES ('668', '梓栋', 'zidong', '202cb962ac59075b964b07152d234b70', '1678978660', '2021-09-20 17:31:29.690612');
INSERT INTO `librarian_user` VALUES ('669', '王巍巍', 'zidong', '33ceb07bf4eeb3da587e268d663aba1a', '1678978660', '2021-09-20 17:33:45.702301');
INSERT INTO `librarian_user` VALUES ('670', '王巍巍', 'zidong', '202cb962ac59075b964b07152d234b70', '1678978660', '2021-09-20 17:34:00.214736');
INSERT INTO `librarian_user` VALUES ('678', '王铁锤', 'zidong', '58bd39fedbbb9653c88877d477f10e21', '1678978660', '2021-09-26 12:06:48.398991');
INSERT INTO `librarian_user` VALUES ('679', '王铁锤', 'zidong', '9f61408e3afb633e50cdf1b20de6f466', '1678978660', '2021-09-26 12:08:57.659893');
INSERT INTO `librarian_user` VALUES ('680', '王铁锤', 'zidong', 'cc1ac9918d10142a68e4542ddb124112', '1678978660', '2021-09-26 12:27:19.490030');
INSERT INTO `librarian_user` VALUES ('681', 'zidong', '鲍青', '202cb962ac59075b964b07152d234b70', '1678978660', '2021-09-26 20:29:42.236829');
INSERT INTO `librarian_user` VALUES ('682', 'zidong', '王铁锤', '202cb962ac59075b964b07152d234b70', '17692323668', '2021-09-26 12:32:05.631056');

-- ----------------------------
-- Table structure for librarian_user_books
-- ----------------------------
DROP TABLE IF EXISTS `librarian_user_books`;
CREATE TABLE `librarian_user_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `librarian_user_books_user_id_books_id_1805582c_uniq` (`user_id`,`books_id`),
  KEY `librarian_user_books_books_id_737015b6_fk_librarian_books_id` (`books_id`),
  CONSTRAINT `librarian_user_books_books_id_737015b6_fk_librarian_books_id` FOREIGN KEY (`books_id`) REFERENCES `librarian_books` (`id`),
  CONSTRAINT `librarian_user_books_user_id_cfacbc5b_fk_librarian_user_id` FOREIGN KEY (`user_id`) REFERENCES `librarian_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1021 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of librarian_user_books
-- ----------------------------
INSERT INTO `librarian_user_books` VALUES ('354', '2', '7');
INSERT INTO `librarian_user_books` VALUES ('513', '3', '35');
INSERT INTO `librarian_user_books` VALUES ('363', '4', '14');
INSERT INTO `librarian_user_books` VALUES ('904', '6', '9');
INSERT INTO `librarian_user_books` VALUES ('938', '7', '11');
INSERT INTO `librarian_user_books` VALUES ('625', '9', '52');
INSERT INTO `librarian_user_books` VALUES ('869', '9', '69');
INSERT INTO `librarian_user_books` VALUES ('920', '10', '38');
INSERT INTO `librarian_user_books` VALUES ('719', '12', '19');
INSERT INTO `librarian_user_books` VALUES ('770', '12', '42');
INSERT INTO `librarian_user_books` VALUES ('697', '12', '64');
INSERT INTO `librarian_user_books` VALUES ('151', '13', '76');
INSERT INTO `librarian_user_books` VALUES ('964', '14', '63');
INSERT INTO `librarian_user_books` VALUES ('61', '14', '77');
INSERT INTO `librarian_user_books` VALUES ('393', '15', '24');
INSERT INTO `librarian_user_books` VALUES ('640', '15', '51');
INSERT INTO `librarian_user_books` VALUES ('383', '15', '62');
INSERT INTO `librarian_user_books` VALUES ('36', '16', '24');
INSERT INTO `librarian_user_books` VALUES ('654', '17', '57');
INSERT INTO `librarian_user_books` VALUES ('188', '17', '59');
INSERT INTO `librarian_user_books` VALUES ('575', '18', '25');
INSERT INTO `librarian_user_books` VALUES ('196', '18', '60');
INSERT INTO `librarian_user_books` VALUES ('642', '20', '27');
INSERT INTO `librarian_user_books` VALUES ('109', '24', '74');
INSERT INTO `librarian_user_books` VALUES ('41', '25', '34');
INSERT INTO `librarian_user_books` VALUES ('437', '25', '38');
INSERT INTO `librarian_user_books` VALUES ('917', '25', '67');
INSERT INTO `librarian_user_books` VALUES ('877', '27', '62');
INSERT INTO `librarian_user_books` VALUES ('721', '28', '22');
INSERT INTO `librarian_user_books` VALUES ('113', '28', '53');
INSERT INTO `librarian_user_books` VALUES ('677', '29', '30');
INSERT INTO `librarian_user_books` VALUES ('83', '29', '37');
INSERT INTO `librarian_user_books` VALUES ('143', '31', '4');
INSERT INTO `librarian_user_books` VALUES ('234', '31', '28');
INSERT INTO `librarian_user_books` VALUES ('983', '31', '30');
INSERT INTO `librarian_user_books` VALUES ('639', '31', '76');
INSERT INTO `librarian_user_books` VALUES ('490', '33', '33');
INSERT INTO `librarian_user_books` VALUES ('418', '33', '34');
INSERT INTO `librarian_user_books` VALUES ('138', '34', '27');
INSERT INTO `librarian_user_books` VALUES ('782', '35', '27');
INSERT INTO `librarian_user_books` VALUES ('911', '35', '29');
INSERT INTO `librarian_user_books` VALUES ('117', '35', '32');
INSERT INTO `librarian_user_books` VALUES ('53', '36', '44');
INSERT INTO `librarian_user_books` VALUES ('839', '37', '7');
INSERT INTO `librarian_user_books` VALUES ('7', '37', '8');
INSERT INTO `librarian_user_books` VALUES ('312', '38', '39');
INSERT INTO `librarian_user_books` VALUES ('227', '39', '38');
INSERT INTO `librarian_user_books` VALUES ('294', '39', '42');
INSERT INTO `librarian_user_books` VALUES ('155', '40', '25');
INSERT INTO `librarian_user_books` VALUES ('921', '40', '51');
INSERT INTO `librarian_user_books` VALUES ('231', '41', '38');
INSERT INTO `librarian_user_books` VALUES ('738', '41', '49');
INSERT INTO `librarian_user_books` VALUES ('936', '41', '80');
INSERT INTO `librarian_user_books` VALUES ('65', '42', '10');
INSERT INTO `librarian_user_books` VALUES ('550', '42', '12');
INSERT INTO `librarian_user_books` VALUES ('982', '42', '43');
INSERT INTO `librarian_user_books` VALUES ('275', '42', '77');
INSERT INTO `librarian_user_books` VALUES ('906', '43', '55');
INSERT INTO `librarian_user_books` VALUES ('783', '44', '20');
INSERT INTO `librarian_user_books` VALUES ('236', '44', '29');
INSERT INTO `librarian_user_books` VALUES ('528', '44', '77');
INSERT INTO `librarian_user_books` VALUES ('970', '45', '36');
INSERT INTO `librarian_user_books` VALUES ('443', '45', '80');
INSERT INTO `librarian_user_books` VALUES ('570', '46', '3');
INSERT INTO `librarian_user_books` VALUES ('539', '46', '53');
INSERT INTO `librarian_user_books` VALUES ('174', '47', '30');
INSERT INTO `librarian_user_books` VALUES ('918', '49', '10');
INSERT INTO `librarian_user_books` VALUES ('81', '49', '42');
INSERT INTO `librarian_user_books` VALUES ('89', '50', '6');
INSERT INTO `librarian_user_books` VALUES ('433', '51', '22');
INSERT INTO `librarian_user_books` VALUES ('988', '51', '38');
INSERT INTO `librarian_user_books` VALUES ('777', '51', '52');
INSERT INTO `librarian_user_books` VALUES ('321', '54', '5');
INSERT INTO `librarian_user_books` VALUES ('896', '54', '57');
INSERT INTO `librarian_user_books` VALUES ('108', '54', '77');
INSERT INTO `librarian_user_books` VALUES ('806', '55', '25');
INSERT INTO `librarian_user_books` VALUES ('882', '55', '36');
INSERT INTO `librarian_user_books` VALUES ('727', '55', '48');
INSERT INTO `librarian_user_books` VALUES ('311', '56', '9');
INSERT INTO `librarian_user_books` VALUES ('516', '57', '23');
INSERT INTO `librarian_user_books` VALUES ('175', '57', '31');
INSERT INTO `librarian_user_books` VALUES ('110', '57', '74');
INSERT INTO `librarian_user_books` VALUES ('79', '58', '37');
INSERT INTO `librarian_user_books` VALUES ('283', '59', '35');
INSERT INTO `librarian_user_books` VALUES ('871', '59', '48');
INSERT INTO `librarian_user_books` VALUES ('475', '60', '24');
INSERT INTO `librarian_user_books` VALUES ('56', '60', '70');
INSERT INTO `librarian_user_books` VALUES ('953', '61', '69');
INSERT INTO `librarian_user_books` VALUES ('963', '62', '23');
INSERT INTO `librarian_user_books` VALUES ('540', '62', '25');
INSERT INTO `librarian_user_books` VALUES ('729', '62', '34');
INSERT INTO `librarian_user_books` VALUES ('43', '62', '43');
INSERT INTO `librarian_user_books` VALUES ('506', '63', '55');
INSERT INTO `librarian_user_books` VALUES ('14', '64', '25');
INSERT INTO `librarian_user_books` VALUES ('971', '64', '78');
INSERT INTO `librarian_user_books` VALUES ('615', '64', '79');
INSERT INTO `librarian_user_books` VALUES ('568', '65', '14');
INSERT INTO `librarian_user_books` VALUES ('80', '65', '27');
INSERT INTO `librarian_user_books` VALUES ('293', '65', '73');
INSERT INTO `librarian_user_books` VALUES ('325', '67', '40');
INSERT INTO `librarian_user_books` VALUES ('902', '67', '65');
INSERT INTO `librarian_user_books` VALUES ('29', '68', '64');
INSERT INTO `librarian_user_books` VALUES ('472', '69', '2');
INSERT INTO `librarian_user_books` VALUES ('531', '69', '33');
INSERT INTO `librarian_user_books` VALUES ('458', '69', '69');
INSERT INTO `librarian_user_books` VALUES ('42', '70', '63');
INSERT INTO `librarian_user_books` VALUES ('764', '70', '64');
INSERT INTO `librarian_user_books` VALUES ('331', '71', '59');
INSERT INTO `librarian_user_books` VALUES ('256', '72', '47');
INSERT INTO `librarian_user_books` VALUES ('744', '73', '4');
INSERT INTO `librarian_user_books` VALUES ('791', '73', '24');
INSERT INTO `librarian_user_books` VALUES ('500', '73', '34');
INSERT INTO `librarian_user_books` VALUES ('467', '73', '73');
INSERT INTO `librarian_user_books` VALUES ('435', '74', '29');
INSERT INTO `librarian_user_books` VALUES ('756', '74', '41');
INSERT INTO `librarian_user_books` VALUES ('841', '74', '51');
INSERT INTO `librarian_user_books` VALUES ('168', '74', '60');
INSERT INTO `librarian_user_books` VALUES ('622', '74', '76');
INSERT INTO `librarian_user_books` VALUES ('209', '75', '38');
INSERT INTO `librarian_user_books` VALUES ('761', '75', '55');
INSERT INTO `librarian_user_books` VALUES ('623', '76', '31');
INSERT INTO `librarian_user_books` VALUES ('257', '78', '38');
INSERT INTO `librarian_user_books` VALUES ('125', '78', '60');
INSERT INTO `librarian_user_books` VALUES ('47', '79', '12');
INSERT INTO `librarian_user_books` VALUES ('809', '79', '31');
INSERT INTO `librarian_user_books` VALUES ('39', '79', '55');
INSERT INTO `librarian_user_books` VALUES ('206', '80', '78');
INSERT INTO `librarian_user_books` VALUES ('984', '81', '17');
INSERT INTO `librarian_user_books` VALUES ('569', '81', '61');
INSERT INTO `librarian_user_books` VALUES ('832', '84', '65');
INSERT INTO `librarian_user_books` VALUES ('851', '85', '6');
INSERT INTO `librarian_user_books` VALUES ('781', '85', '34');
INSERT INTO `librarian_user_books` VALUES ('306', '85', '47');
INSERT INTO `librarian_user_books` VALUES ('800', '88', '71');
INSERT INTO `librarian_user_books` VALUES ('592', '89', '10');
INSERT INTO `librarian_user_books` VALUES ('220', '91', '14');
INSERT INTO `librarian_user_books` VALUES ('101', '91', '73');
INSERT INTO `librarian_user_books` VALUES ('259', '92', '36');
INSERT INTO `librarian_user_books` VALUES ('495', '92', '38');
INSERT INTO `librarian_user_books` VALUES ('973', '94', '27');
INSERT INTO `librarian_user_books` VALUES ('284', '94', '70');
INSERT INTO `librarian_user_books` VALUES ('373', '95', '19');
INSERT INTO `librarian_user_books` VALUES ('538', '97', '53');
INSERT INTO `librarian_user_books` VALUES ('611', '98', '25');
INSERT INTO `librarian_user_books` VALUES ('320', '100', '3');
INSERT INTO `librarian_user_books` VALUES ('868', '100', '24');
INSERT INTO `librarian_user_books` VALUES ('933', '101', '12');
INSERT INTO `librarian_user_books` VALUES ('483', '101', '45');
INSERT INTO `librarian_user_books` VALUES ('170', '101', '59');
INSERT INTO `librarian_user_books` VALUES ('671', '101', '65');
INSERT INTO `librarian_user_books` VALUES ('499', '102', '51');
INSERT INTO `librarian_user_books` VALUES ('688', '102', '69');
INSERT INTO `librarian_user_books` VALUES ('994', '103', '32');
INSERT INTO `librarian_user_books` VALUES ('574', '104', '11');
INSERT INTO `librarian_user_books` VALUES ('710', '105', '19');
INSERT INTO `librarian_user_books` VALUES ('12', '105', '54');
INSERT INTO `librarian_user_books` VALUES ('106', '105', '67');
INSERT INTO `librarian_user_books` VALUES ('95', '106', '73');
INSERT INTO `librarian_user_books` VALUES ('704', '106', '75');
INSERT INTO `librarian_user_books` VALUES ('674', '108', '14');
INSERT INTO `librarian_user_books` VALUES ('533', '108', '36');
INSERT INTO `librarian_user_books` VALUES ('653', '108', '68');
INSERT INTO `librarian_user_books` VALUES ('216', '111', '4');
INSERT INTO `librarian_user_books` VALUES ('616', '113', '19');
INSERT INTO `librarian_user_books` VALUES ('619', '113', '40');
INSERT INTO `librarian_user_books` VALUES ('98', '115', '55');
INSERT INTO `librarian_user_books` VALUES ('866', '116', '28');
INSERT INTO `librarian_user_books` VALUES ('955', '116', '55');
INSERT INTO `librarian_user_books` VALUES ('566', '117', '9');
INSERT INTO `librarian_user_books` VALUES ('876', '117', '72');
INSERT INTO `librarian_user_books` VALUES ('239', '118', '36');
INSERT INTO `librarian_user_books` VALUES ('708', '120', '72');
INSERT INTO `librarian_user_books` VALUES ('336', '121', '40');
INSERT INTO `librarian_user_books` VALUES ('403', '121', '52');
INSERT INTO `librarian_user_books` VALUES ('440', '121', '56');
INSERT INTO `librarian_user_books` VALUES ('977', '121', '72');
INSERT INTO `librarian_user_books` VALUES ('411', '122', '57');
INSERT INTO `librarian_user_books` VALUES ('77', '122', '64');
INSERT INTO `librarian_user_books` VALUES ('167', '123', '17');
INSERT INTO `librarian_user_books` VALUES ('19', '123', '47');
INSERT INTO `librarian_user_books` VALUES ('408', '126', '16');
INSERT INTO `librarian_user_books` VALUES ('924', '127', '10');
INSERT INTO `librarian_user_books` VALUES ('432', '128', '51');
INSERT INTO `librarian_user_books` VALUES ('795', '129', '4');
INSERT INTO `librarian_user_books` VALUES ('750', '129', '80');
INSERT INTO `librarian_user_books` VALUES ('589', '131', '36');
INSERT INTO `librarian_user_books` VALUES ('690', '131', '55');
INSERT INTO `librarian_user_books` VALUES ('856', '132', '65');
INSERT INTO `librarian_user_books` VALUES ('594', '133', '2');
INSERT INTO `librarian_user_books` VALUES ('587', '133', '12');
INSERT INTO `librarian_user_books` VALUES ('248', '133', '41');
INSERT INTO `librarian_user_books` VALUES ('70', '133', '45');
INSERT INTO `librarian_user_books` VALUES ('908', '134', '2');
INSERT INTO `librarian_user_books` VALUES ('989', '134', '38');
INSERT INTO `librarian_user_books` VALUES ('371', '135', '63');
INSERT INTO `librarian_user_books` VALUES ('703', '136', '15');
INSERT INTO `librarian_user_books` VALUES ('64', '136', '47');
INSERT INTO `librarian_user_books` VALUES ('601', '136', '49');
INSERT INTO `librarian_user_books` VALUES ('823', '136', '54');
INSERT INTO `librarian_user_books` VALUES ('577', '136', '57');
INSERT INTO `librarian_user_books` VALUES ('635', '137', '70');
INSERT INTO `librarian_user_books` VALUES ('471', '138', '17');
INSERT INTO `librarian_user_books` VALUES ('38', '139', '69');
INSERT INTO `librarian_user_books` VALUES ('844', '139', '70');
INSERT INTO `librarian_user_books` VALUES ('364', '139', '76');
INSERT INTO `librarian_user_books` VALUES ('658', '139', '78');
INSERT INTO `librarian_user_books` VALUES ('680', '140', '32');
INSERT INTO `librarian_user_books` VALUES ('661', '140', '41');
INSERT INTO `librarian_user_books` VALUES ('171', '140', '47');
INSERT INTO `librarian_user_books` VALUES ('235', '141', '23');
INSERT INTO `librarian_user_books` VALUES ('401', '141', '71');
INSERT INTO `librarian_user_books` VALUES ('90', '142', '45');
INSERT INTO `librarian_user_books` VALUES ('130', '143', '38');
INSERT INTO `librarian_user_books` VALUES ('55', '144', '13');
INSERT INTO `librarian_user_books` VALUES ('342', '144', '45');
INSERT INTO `librarian_user_books` VALUES ('479', '144', '73');
INSERT INTO `librarian_user_books` VALUES ('850', '145', '46');
INSERT INTO `librarian_user_books` VALUES ('858', '145', '65');
INSERT INTO `librarian_user_books` VALUES ('310', '145', '69');
INSERT INTO `librarian_user_books` VALUES ('948', '146', '15');
INSERT INTO `librarian_user_books` VALUES ('880', '147', '4');
INSERT INTO `librarian_user_books` VALUES ('621', '147', '21');
INSERT INTO `librarian_user_books` VALUES ('241', '147', '64');
INSERT INTO `librarian_user_books` VALUES ('195', '147', '65');
INSERT INTO `librarian_user_books` VALUES ('739', '148', '54');
INSERT INTO `librarian_user_books` VALUES ('453', '149', '19');
INSERT INTO `librarian_user_books` VALUES ('223', '149', '74');
INSERT INTO `librarian_user_books` VALUES ('202', '150', '8');
INSERT INTO `librarian_user_books` VALUES ('208', '152', '39');
INSERT INTO `librarian_user_books` VALUES ('343', '152', '40');
INSERT INTO `librarian_user_books` VALUES ('502', '152', '66');
INSERT INTO `librarian_user_books` VALUES ('477', '153', '67');
INSERT INTO `librarian_user_books` VALUES ('347', '153', '77');
INSERT INTO `librarian_user_books` VALUES ('752', '155', '28');
INSERT INTO `librarian_user_books` VALUES ('298', '155', '41');
INSERT INTO `librarian_user_books` VALUES ('543', '155', '69');
INSERT INTO `librarian_user_books` VALUES ('318', '156', '32');
INSERT INTO `librarian_user_books` VALUES ('116', '157', '5');
INSERT INTO `librarian_user_books` VALUES ('20', '158', '16');
INSERT INTO `librarian_user_books` VALUES ('512', '158', '21');
INSERT INTO `librarian_user_books` VALUES ('541', '158', '38');
INSERT INTO `librarian_user_books` VALUES ('374', '159', '56');
INSERT INTO `librarian_user_books` VALUES ('542', '160', '21');
INSERT INTO `librarian_user_books` VALUES ('676', '163', '53');
INSERT INTO `librarian_user_books` VALUES ('250', '164', '8');
INSERT INTO `librarian_user_books` VALUES ('787', '164', '52');
INSERT INTO `librarian_user_books` VALUES ('514', '165', '51');
INSERT INTO `librarian_user_books` VALUES ('493', '167', '3');
INSERT INTO `librarian_user_books` VALUES ('48', '167', '8');
INSERT INTO `librarian_user_books` VALUES ('879', '167', '37');
INSERT INTO `librarian_user_books` VALUES ('863', '168', '53');
INSERT INTO `librarian_user_books` VALUES ('860', '168', '62');
INSERT INTO `librarian_user_books` VALUES ('204', '168', '68');
INSERT INTO `librarian_user_books` VALUES ('751', '169', '8');
INSERT INTO `librarian_user_books` VALUES ('912', '169', '30');
INSERT INTO `librarian_user_books` VALUES ('205', '171', '29');
INSERT INTO `librarian_user_books` VALUES ('689', '171', '43');
INSERT INTO `librarian_user_books` VALUES ('565', '172', '53');
INSERT INTO `librarian_user_books` VALUES ('429', '173', '12');
INSERT INTO `librarian_user_books` VALUES ('651', '174', '39');
INSERT INTO `librarian_user_books` VALUES ('145', '175', '35');
INSERT INTO `librarian_user_books` VALUES ('377', '176', '27');
INSERT INTO `librarian_user_books` VALUES ('722', '176', '46');
INSERT INTO `librarian_user_books` VALUES ('740', '176', '71');
INSERT INTO `librarian_user_books` VALUES ('702', '177', '10');
INSERT INTO `librarian_user_books` VALUES ('450', '181', '60');
INSERT INTO `librarian_user_books` VALUES ('637', '182', '54');
INSERT INTO `librarian_user_books` VALUES ('51', '184', '45');
INSERT INTO `librarian_user_books` VALUES ('884', '184', '62');
INSERT INTO `librarian_user_books` VALUES ('561', '184', '78');
INSERT INTO `librarian_user_books` VALUES ('494', '186', '29');
INSERT INTO `librarian_user_books` VALUES ('451', '186', '74');
INSERT INTO `librarian_user_books` VALUES ('153', '187', '42');
INSERT INTO `librarian_user_books` VALUES ('498', '188', '5');
INSERT INTO `librarian_user_books` VALUES ('164', '188', '25');
INSERT INTO `librarian_user_books` VALUES ('571', '189', '10');
INSERT INTO `librarian_user_books` VALUES ('950', '190', '10');
INSERT INTO `librarian_user_books` VALUES ('238', '190', '63');
INSERT INTO `librarian_user_books` VALUES ('620', '190', '74');
INSERT INTO `librarian_user_books` VALUES ('891', '192', '4');
INSERT INTO `librarian_user_books` VALUES ('883', '192', '59');
INSERT INTO `librarian_user_books` VALUES ('886', '193', '13');
INSERT INTO `librarian_user_books` VALUES ('200', '193', '56');
INSERT INTO `librarian_user_books` VALUES ('755', '194', '76');
INSERT INTO `librarian_user_books` VALUES ('464', '196', '27');
INSERT INTO `librarian_user_books` VALUES ('548', '198', '34');
INSERT INTO `librarian_user_books` VALUES ('3', '199', '5');
INSERT INTO `librarian_user_books` VALUES ('340', '199', '38');
INSERT INTO `librarian_user_books` VALUES ('25', '201', '66');
INSERT INTO `librarian_user_books` VALUES ('111', '202', '46');
INSERT INTO `librarian_user_books` VALUES ('328', '202', '59');
INSERT INTO `librarian_user_books` VALUES ('365', '206', '35');
INSERT INTO `librarian_user_books` VALUES ('974', '206', '68');
INSERT INTO `librarian_user_books` VALUES ('852', '206', '73');
INSERT INTO `librarian_user_books` VALUES ('987', '207', '36');
INSERT INTO `librarian_user_books` VALUES ('628', '208', '3');
INSERT INTO `librarian_user_books` VALUES ('706', '208', '37');
INSERT INTO `librarian_user_books` VALUES ('553', '208', '46');
INSERT INTO `librarian_user_books` VALUES ('683', '209', '73');
INSERT INTO `librarian_user_books` VALUES ('833', '211', '4');
INSERT INTO `librarian_user_books` VALUES ('2', '211', '42');
INSERT INTO `librarian_user_books` VALUES ('16', '214', '5');
INSERT INTO `librarian_user_books` VALUES ('173', '214', '10');
INSERT INTO `librarian_user_books` VALUES ('842', '214', '15');
INSERT INTO `librarian_user_books` VALUES ('301', '214', '27');
INSERT INTO `librarian_user_books` VALUES ('563', '214', '70');
INSERT INTO `librarian_user_books` VALUES ('978', '214', '79');
INSERT INTO `librarian_user_books` VALUES ('389', '215', '12');
INSERT INTO `librarian_user_books` VALUES ('695', '215', '26');
INSERT INTO `librarian_user_books` VALUES ('124', '215', '58');
INSERT INTO `librarian_user_books` VALUES ('509', '215', '76');
INSERT INTO `librarian_user_books` VALUES ('874', '217', '12');
INSERT INTO `librarian_user_books` VALUES ('402', '217', '41');
INSERT INTO `librarian_user_books` VALUES ('682', '217', '51');
INSERT INTO `librarian_user_books` VALUES ('634', '217', '56');
INSERT INTO `librarian_user_books` VALUES ('778', '217', '61');
INSERT INTO `librarian_user_books` VALUES ('423', '218', '74');
INSERT INTO `librarian_user_books` VALUES ('838', '220', '11');
INSERT INTO `librarian_user_books` VALUES ('319', '220', '80');
INSERT INTO `librarian_user_books` VALUES ('968', '222', '2');
INSERT INTO `librarian_user_books` VALUES ('624', '222', '48');
INSERT INTO `librarian_user_books` VALUES ('593', '222', '53');
INSERT INTO `librarian_user_books` VALUES ('424', '223', '75');
INSERT INTO `librarian_user_books` VALUES ('127', '224', '17');
INSERT INTO `librarian_user_books` VALUES ('278', '224', '70');
INSERT INTO `librarian_user_books` VALUES ('251', '224', '79');
INSERT INTO `librarian_user_books` VALUES ('445', '225', '10');
INSERT INTO `librarian_user_books` VALUES ('535', '226', '22');
INSERT INTO `librarian_user_books` VALUES ('579', '227', '7');
INSERT INTO `librarian_user_books` VALUES ('44', '228', '29');
INSERT INTO `librarian_user_books` VALUES ('859', '228', '42');
INSERT INTO `librarian_user_books` VALUES ('431', '231', '45');
INSERT INTO `librarian_user_books` VALUES ('835', '231', '72');
INSERT INTO `librarian_user_books` VALUES ('260', '232', '49');
INSERT INTO `librarian_user_books` VALUES ('981', '234', '11');
INSERT INTO `librarian_user_books` VALUES ('60', '234', '54');
INSERT INTO `librarian_user_books` VALUES ('391', '236', '24');
INSERT INTO `librarian_user_books` VALUES ('705', '236', '48');
INSERT INTO `librarian_user_books` VALUES ('523', '236', '75');
INSERT INTO `librarian_user_books` VALUES ('663', '237', '7');
INSERT INTO `librarian_user_books` VALUES ('822', '237', '13');
INSERT INTO `librarian_user_books` VALUES ('421', '237', '23');
INSERT INTO `librarian_user_books` VALUES ('197', '240', '61');
INSERT INTO `librarian_user_books` VALUES ('210', '240', '66');
INSERT INTO `librarian_user_books` VALUES ('272', '241', '27');
INSERT INTO `librarian_user_books` VALUES ('387', '241', '64');
INSERT INTO `librarian_user_books` VALUES ('717', '242', '47');
INSERT INTO `librarian_user_books` VALUES ('399', '243', '45');
INSERT INTO `librarian_user_books` VALUES ('888', '243', '60');
INSERT INTO `librarian_user_books` VALUES ('270', '243', '76');
INSERT INTO `librarian_user_books` VALUES ('765', '244', '24');
INSERT INTO `librarian_user_books` VALUES ('141', '246', '10');
INSERT INTO `librarian_user_books` VALUES ('271', '246', '28');
INSERT INTO `librarian_user_books` VALUES ('910', '247', '4');
INSERT INTO `librarian_user_books` VALUES ('649', '247', '49');
INSERT INTO `librarian_user_books` VALUES ('69', '247', '56');
INSERT INTO `librarian_user_books` VALUES ('686', '247', '72');
INSERT INTO `librarian_user_books` VALUES ('228', '248', '61');
INSERT INTO `librarian_user_books` VALUES ('532', '249', '11');
INSERT INTO `librarian_user_books` VALUES ('52', '250', '3');
INSERT INTO `librarian_user_books` VALUES ('956', '250', '13');
INSERT INTO `librarian_user_books` VALUES ('452', '250', '32');
INSERT INTO `librarian_user_books` VALUES ('67', '250', '60');
INSERT INTO `librarian_user_books` VALUES ('307', '250', '76');
INSERT INTO `librarian_user_books` VALUES ('252', '251', '31');
INSERT INTO `librarian_user_books` VALUES ('808', '251', '33');
INSERT INTO `librarian_user_books` VALUES ('534', '252', '34');
INSERT INTO `librarian_user_books` VALUES ('410', '254', '26');
INSERT INTO `librarian_user_books` VALUES ('315', '254', '48');
INSERT INTO `librarian_user_books` VALUES ('965', '255', '79');
INSERT INTO `librarian_user_books` VALUES ('893', '256', '58');
INSERT INTO `librarian_user_books` VALUES ('309', '256', '76');
INSERT INTO `librarian_user_books` VALUES ('598', '257', '2');
INSERT INTO `librarian_user_books` VALUES ('68', '257', '7');
INSERT INTO `librarian_user_books` VALUES ('263', '259', '40');
INSERT INTO `librarian_user_books` VALUES ('395', '259', '72');
INSERT INTO `librarian_user_books` VALUES ('332', '260', '30');
INSERT INTO `librarian_user_books` VALUES ('684', '261', '2');
INSERT INTO `librarian_user_books` VALUES ('21', '261', '17');
INSERT INTO `librarian_user_books` VALUES ('940', '262', '52');
INSERT INTO `librarian_user_books` VALUES ('712', '264', '68');
INSERT INTO `librarian_user_books` VALUES ('74', '265', '7');
INSERT INTO `librarian_user_books` VALUES ('192', '266', '4');
INSERT INTO `librarian_user_books` VALUES ('492', '266', '48');
INSERT INTO `librarian_user_books` VALUES ('656', '267', '5');
INSERT INTO `librarian_user_books` VALUES ('645', '267', '27');
INSERT INTO `librarian_user_books` VALUES ('793', '268', '12');
INSERT INTO `librarian_user_books` VALUES ('230', '268', '51');
INSERT INTO `librarian_user_books` VALUES ('943', '268', '63');
INSERT INTO `librarian_user_books` VALUES ('998', '269', '35');
INSERT INTO `librarian_user_books` VALUES ('484', '271', '67');
INSERT INTO `librarian_user_books` VALUES ('668', '273', '67');
INSERT INTO `librarian_user_books` VALUES ('581', '275', '11');
INSERT INTO `librarian_user_books` VALUES ('102', '276', '6');
INSERT INTO `librarian_user_books` VALUES ('329', '276', '49');
INSERT INTO `librarian_user_books` VALUES ('386', '276', '50');
INSERT INTO `librarian_user_books` VALUES ('659', '280', '2');
INSERT INTO `librarian_user_books` VALUES ('415', '280', '46');
INSERT INTO `librarian_user_books` VALUES ('525', '282', '34');
INSERT INTO `librarian_user_books` VALUES ('262', '282', '39');
INSERT INTO `librarian_user_books` VALUES ('915', '283', '9');
INSERT INTO `librarian_user_books` VALUES ('599', '283', '36');
INSERT INTO `librarian_user_books` VALUES ('219', '283', '40');
INSERT INTO `librarian_user_books` VALUES ('274', '284', '50');
INSERT INTO `librarian_user_books` VALUES ('253', '285', '9');
INSERT INTO `librarian_user_books` VALUES ('588', '286', '18');
INSERT INTO `librarian_user_books` VALUES ('300', '286', '27');
INSERT INTO `librarian_user_books` VALUES ('775', '287', '27');
INSERT INTO `librarian_user_books` VALUES ('313', '287', '28');
INSERT INTO `librarian_user_books` VALUES ('420', '287', '72');
INSERT INTO `librarian_user_books` VALUES ('414', '288', '2');
INSERT INTO `librarian_user_books` VALUES ('428', '288', '28');
INSERT INTO `librarian_user_books` VALUES ('362', '288', '58');
INSERT INTO `librarian_user_books` VALUES ('176', '289', '66');
INSERT INTO `librarian_user_books` VALUES ('369', '292', '13');
INSERT INTO `librarian_user_books` VALUES ('847', '292', '19');
INSERT INTO `librarian_user_books` VALUES ('916', '292', '21');
INSERT INTO `librarian_user_books` VALUES ('590', '292', '39');
INSERT INTO `librarian_user_books` VALUES ('701', '293', '66');
INSERT INTO `librarian_user_books` VALUES ('811', '294', '10');
INSERT INTO `librarian_user_books` VALUES ('547', '295', '40');
INSERT INTO `librarian_user_books` VALUES ('749', '295', '56');
INSERT INTO `librarian_user_books` VALUES ('878', '296', '51');
INSERT INTO `librarian_user_books` VALUES ('82', '297', '17');
INSERT INTO `librarian_user_books` VALUES ('925', '297', '60');
INSERT INTO `librarian_user_books` VALUES ('468', '298', '63');
INSERT INTO `librarian_user_books` VALUES ('123', '299', '70');
INSERT INTO `librarian_user_books` VALUES ('768', '300', '61');
INSERT INTO `librarian_user_books` VALUES ('457', '300', '63');
INSERT INTO `librarian_user_books` VALUES ('224', '301', '11');
INSERT INTO `librarian_user_books` VALUES ('875', '301', '65');
INSERT INTO `librarian_user_books` VALUES ('474', '303', '34');
INSERT INTO `librarian_user_books` VALUES ('821', '303', '44');
INSERT INTO `librarian_user_books` VALUES ('154', '303', '53');
INSERT INTO `librarian_user_books` VALUES ('578', '303', '72');
INSERT INTO `librarian_user_books` VALUES ('40', '304', '8');
INSERT INTO `librarian_user_books` VALUES ('135', '305', '70');
INSERT INTO `librarian_user_books` VALUES ('830', '306', '19');
INSERT INTO `librarian_user_books` VALUES ('742', '307', '30');
INSERT INTO `librarian_user_books` VALUES ('466', '307', '60');
INSERT INTO `librarian_user_books` VALUES ('926', '308', '57');
INSERT INTO `librarian_user_books` VALUES ('947', '308', '75');
INSERT INTO `librarian_user_books` VALUES ('846', '309', '35');
INSERT INTO `librarian_user_books` VALUES ('122', '311', '25');
INSERT INTO `librarian_user_books` VALUES ('919', '312', '58');
INSERT INTO `librarian_user_books` VALUES ('840', '313', '48');
INSERT INTO `librarian_user_books` VALUES ('460', '314', '78');
INSERT INTO `librarian_user_books` VALUES ('157', '315', '2');
INSERT INTO `librarian_user_books` VALUES ('132', '315', '14');
INSERT INTO `librarian_user_books` VALUES ('585', '317', '51');
INSERT INTO `librarian_user_books` VALUES ('549', '317', '78');
INSERT INTO `librarian_user_books` VALUES ('720', '318', '45');
INSERT INTO `librarian_user_books` VALUES ('222', '319', '39');
INSERT INTO `librarian_user_books` VALUES ('759', '321', '6');
INSERT INTO `librarian_user_books` VALUES ('375', '321', '25');
INSERT INTO `librarian_user_books` VALUES ('156', '322', '58');
INSERT INTO `librarian_user_books` VALUES ('991', '322', '72');
INSERT INTO `librarian_user_books` VALUES ('583', '323', '41');
INSERT INTO `librarian_user_books` VALUES ('803', '324', '15');
INSERT INTO `librarian_user_books` VALUES ('121', '324', '31');
INSERT INTO `librarian_user_books` VALUES ('337', '325', '12');
INSERT INTO `librarian_user_books` VALUES ('229', '325', '78');
INSERT INTO `librarian_user_books` VALUES ('831', '327', '9');
INSERT INTO `librarian_user_books` VALUES ('949', '327', '35');
INSERT INTO `librarian_user_books` VALUES ('945', '327', '58');
INSERT INTO `librarian_user_books` VALUES ('897', '327', '76');
INSERT INTO `librarian_user_books` VALUES ('221', '328', '14');
INSERT INTO `librarian_user_books` VALUES ('333', '328', '50');
INSERT INTO `librarian_user_books` VALUES ('824', '328', '56');
INSERT INTO `librarian_user_books` VALUES ('295', '328', '58');
INSERT INTO `librarian_user_books` VALUES ('638', '328', '67');
INSERT INTO `librarian_user_books` VALUES ('552', '332', '15');
INSERT INTO `librarian_user_books` VALUES ('390', '332', '33');
INSERT INTO `librarian_user_books` VALUES ('177', '332', '65');
INSERT INTO `librarian_user_books` VALUES ('903', '334', '47');
INSERT INTO `librarian_user_books` VALUES ('732', '335', '16');
INSERT INTO `librarian_user_books` VALUES ('355', '336', '3');
INSERT INTO `librarian_user_books` VALUES ('18', '337', '3');
INSERT INTO `librarian_user_books` VALUES ('416', '339', '39');
INSERT INTO `librarian_user_books` VALUES ('32', '340', '25');
INSERT INTO `librarian_user_books` VALUES ('13', '340', '65');
INSERT INTO `librarian_user_books` VALUES ('348', '341', '58');
INSERT INTO `librarian_user_books` VALUES ('990', '342', '24');
INSERT INTO `librarian_user_books` VALUES ('692', '342', '63');
INSERT INTO `librarian_user_books` VALUES ('226', '343', '6');
INSERT INTO `librarian_user_books` VALUES ('334', '343', '7');
INSERT INTO `librarian_user_books` VALUES ('150', '344', '7');
INSERT INTO `librarian_user_books` VALUES ('670', '344', '43');
INSERT INTO `librarian_user_books` VALUES ('607', '344', '57');
INSERT INTO `librarian_user_books` VALUES ('556', '344', '67');
INSERT INTO `librarian_user_books` VALUES ('485', '344', '74');
INSERT INTO `librarian_user_books` VALUES ('646', '347', '14');
INSERT INTO `librarian_user_books` VALUES ('379', '347', '67');
INSERT INTO `librarian_user_books` VALUES ('907', '348', '16');
INSERT INTO `librarian_user_books` VALUES ('162', '349', '76');
INSERT INTO `librarian_user_books` VALUES ('384', '349', '78');
INSERT INTO `librarian_user_books` VALUES ('134', '350', '13');
INSERT INTO `librarian_user_books` VALUES ('643', '350', '16');
INSERT INTO `librarian_user_books` VALUES ('559', '351', '77');
INSERT INTO `librarian_user_books` VALUES ('23', '352', '22');
INSERT INTO `librarian_user_books` VALUES ('75', '352', '25');
INSERT INTO `librarian_user_books` VALUES ('801', '352', '57');
INSERT INTO `librarian_user_books` VALUES ('422', '352', '75');
INSERT INTO `librarian_user_books` VALUES ('240', '354', '28');
INSERT INTO `librarian_user_books` VALUES ('914', '354', '65');
INSERT INTO `librarian_user_books` VALUES ('757', '354', '66');
INSERT INTO `librarian_user_books` VALUES ('442', '355', '9');
INSERT INTO `librarian_user_books` VALUES ('666', '356', '53');
INSERT INTO `librarian_user_books` VALUES ('26', '357', '9');
INSERT INTO `librarian_user_books` VALUES ('527', '357', '15');
INSERT INTO `librarian_user_books` VALUES ('716', '360', '32');
INSERT INTO `librarian_user_books` VALUES ('394', '360', '50');
INSERT INTO `librarian_user_books` VALUES ('942', '360', '58');
INSERT INTO `librarian_user_books` VALUES ('629', '360', '63');
INSERT INTO `librarian_user_books` VALUES ('517', '362', '15');
INSERT INTO `librarian_user_books` VALUES ('203', '362', '53');
INSERT INTO `librarian_user_books` VALUES ('930', '362', '73');
INSERT INTO `librarian_user_books` VALUES ('398', '364', '11');
INSERT INTO `librarian_user_books` VALUES ('24', '365', '3');
INSERT INTO `librarian_user_books` VALUES ('10', '365', '60');
INSERT INTO `librarian_user_books` VALUES ('358', '365', '80');
INSERT INTO `librarian_user_books` VALUES ('335', '366', '26');
INSERT INTO `librarian_user_books` VALUES ('576', '366', '59');
INSERT INTO `librarian_user_books` VALUES ('444', '367', '59');
INSERT INTO `librarian_user_books` VALUES ('536', '368', '74');
INSERT INTO `librarian_user_books` VALUES ('265', '370', '4');
INSERT INTO `librarian_user_books` VALUES ('657', '370', '24');
INSERT INTO `librarian_user_books` VALUES ('9', '370', '40');
INSERT INTO `librarian_user_books` VALUES ('630', '371', '69');
INSERT INTO `librarian_user_books` VALUES ('419', '372', '2');
INSERT INTO `librarian_user_books` VALUES ('87', '372', '22');
INSERT INTO `librarian_user_books` VALUES ('280', '372', '77');
INSERT INTO `librarian_user_books` VALUES ('277', '373', '2');
INSERT INTO `librarian_user_books` VALUES ('1', '373', '13');
INSERT INTO `librarian_user_books` VALUES ('50', '374', '7');
INSERT INTO `librarian_user_books` VALUES ('608', '374', '60');
INSERT INTO `librarian_user_books` VALUES ('596', '375', '21');
INSERT INTO `librarian_user_books` VALUES ('909', '375', '61');
INSERT INTO `librarian_user_books` VALUES ('133', '379', '29');
INSERT INTO `librarian_user_books` VALUES ('693', '380', '37');
INSERT INTO `librarian_user_books` VALUES ('215', '380', '55');
INSERT INTO `librarian_user_books` VALUES ('817', '381', '9');
INSERT INTO `librarian_user_books` VALUES ('88', '381', '30');
INSERT INTO `librarian_user_books` VALUES ('385', '381', '41');
INSERT INTO `librarian_user_books` VALUES ('459', '382', '14');
INSERT INTO `librarian_user_books` VALUES ('881', '382', '17');
INSERT INTO `librarian_user_books` VALUES ('35', '382', '52');
INSERT INTO `librarian_user_books` VALUES ('730', '383', '33');
INSERT INTO `librarian_user_books` VALUES ('854', '383', '47');
INSERT INTO `librarian_user_books` VALUES ('567', '384', '63');
INSERT INTO `librarian_user_books` VALUES ('837', '385', '26');
INSERT INTO `librarian_user_books` VALUES ('544', '385', '42');
INSERT INTO `librarian_user_books` VALUES ('573', '385', '70');
INSERT INTO `librarian_user_books` VALUES ('537', '385', '71');
INSERT INTO `librarian_user_books` VALUES ('530', '385', '75');
INSERT INTO `librarian_user_books` VALUES ('631', '385', '78');
INSERT INTO `librarian_user_books` VALUES ('612', '386', '43');
INSERT INTO `librarian_user_books` VALUES ('618', '388', '80');
INSERT INTO `librarian_user_books` VALUES ('438', '389', '66');
INSERT INTO `librarian_user_books` VALUES ('804', '390', '2');
INSERT INTO `librarian_user_books` VALUES ('470', '390', '48');
INSERT INTO `librarian_user_books` VALUES ('148', '393', '45');
INSERT INTO `librarian_user_books` VALUES ('388', '393', '72');
INSERT INTO `librarian_user_books` VALUES ('746', '393', '73');
INSERT INTO `librarian_user_books` VALUES ('31', '394', '60');
INSERT INTO `librarian_user_books` VALUES ('341', '395', '61');
INSERT INTO `librarian_user_books` VALUES ('772', '395', '70');
INSERT INTO `librarian_user_books` VALUES ('71', '396', '45');
INSERT INTO `librarian_user_books` VALUES ('954', '396', '57');
INSERT INTO `librarian_user_books` VALUES ('931', '396', '74');
INSERT INTO `librarian_user_books` VALUES ('505', '397', '28');
INSERT INTO `librarian_user_books` VALUES ('382', '397', '75');
INSERT INTO `librarian_user_books` VALUES ('352', '398', '23');
INSERT INTO `librarian_user_books` VALUES ('269', '398', '70');
INSERT INTO `librarian_user_books` VALUES ('905', '399', '30');
INSERT INTO `librarian_user_books` VALUES ('713', '399', '68');
INSERT INTO `librarian_user_books` VALUES ('960', '400', '16');
INSERT INTO `librarian_user_books` VALUES ('894', '400', '39');
INSERT INTO `librarian_user_books` VALUES ('715', '400', '44');
INSERT INTO `librarian_user_books` VALUES ('995', '401', '17');
INSERT INTO `librarian_user_books` VALUES ('291', '401', '55');
INSERT INTO `librarian_user_books` VALUES ('476', '402', '29');
INSERT INTO `librarian_user_books` VALUES ('211', '404', '56');
INSERT INTO `librarian_user_books` VALUES ('225', '405', '36');
INSERT INTO `librarian_user_books` VALUES ('785', '405', '66');
INSERT INTO `librarian_user_books` VALUES ('766', '406', '13');
INSERT INTO `librarian_user_books` VALUES ('166', '406', '19');
INSERT INTO `librarian_user_books` VALUES ('317', '407', '33');
INSERT INTO `librarian_user_books` VALUES ('927', '407', '40');
INSERT INTO `librarian_user_books` VALUES ('496', '409', '73');
INSERT INTO `librarian_user_books` VALUES ('826', '409', '79');
INSERT INTO `librarian_user_books` VALUES ('959', '410', '15');
INSERT INTO `librarian_user_books` VALUES ('985', '410', '18');
INSERT INTO `librarian_user_books` VALUES ('441', '410', '66');
INSERT INTO `librarian_user_books` VALUES ('675', '410', '67');
INSERT INTO `librarian_user_books` VALUES ('303', '410', '70');
INSERT INTO `librarian_user_books` VALUES ('268', '410', '80');
INSERT INTO `librarian_user_books` VALUES ('733', '411', '3');
INSERT INTO `librarian_user_books` VALUES ('183', '411', '10');
INSERT INTO `librarian_user_books` VALUES ('582', '411', '65');
INSERT INTO `librarian_user_books` VALUES ('747', '413', '7');
INSERT INTO `librarian_user_books` VALUES ('33', '413', '23');
INSERT INTO `librarian_user_books` VALUES ('322', '413', '57');
INSERT INTO `librarian_user_books` VALUES ('889', '413', '75');
INSERT INTO `librarian_user_books` VALUES ('73', '414', '50');
INSERT INTO `librarian_user_books` VALUES ('604', '414', '62');
INSERT INTO `librarian_user_books` VALUES ('758', '416', '44');
INSERT INTO `librarian_user_books` VALUES ('754', '416', '53');
INSERT INTO `librarian_user_books` VALUES ('372', '416', '80');
INSERT INTO `librarian_user_books` VALUES ('771', '417', '25');
INSERT INTO `librarian_user_books` VALUES ('655', '418', '16');
INSERT INTO `librarian_user_books` VALUES ('187', '418', '21');
INSERT INTO `librarian_user_books` VALUES ('360', '419', '64');
INSERT INTO `librarian_user_books` VALUES ('928', '420', '6');
INSERT INTO `librarian_user_books` VALUES ('728', '420', '75');
INSERT INTO `librarian_user_books` VALUES ('455', '421', '35');
INSERT INTO `librarian_user_books` VALUES ('276', '421', '37');
INSERT INTO `librarian_user_books` VALUES ('731', '424', '16');
INSERT INTO `librarian_user_books` VALUES ('584', '424', '54');
INSERT INTO `librarian_user_books` VALUES ('665', '425', '3');
INSERT INTO `librarian_user_books` VALUES ('353', '425', '9');
INSERT INTO `librarian_user_books` VALUES ('381', '425', '47');
INSERT INTO `librarian_user_books` VALUES ('941', '425', '58');
INSERT INTO `librarian_user_books` VALUES ('602', '426', '43');
INSERT INTO `librarian_user_books` VALUES ('993', '427', '22');
INSERT INTO `librarian_user_books` VALUES ('436', '427', '53');
INSERT INTO `librarian_user_books` VALUES ('292', '428', '27');
INSERT INTO `librarian_user_books` VALUES ('524', '429', '12');
INSERT INTO `librarian_user_books` VALUES ('412', '429', '28');
INSERT INTO `librarian_user_books` VALUES ('725', '430', '74');
INSERT INTO `librarian_user_books` VALUES ('774', '431', '36');
INSERT INTO `librarian_user_books` VALUES ('562', '434', '47');
INSERT INTO `librarian_user_books` VALUES ('763', '436', '35');
INSERT INTO `librarian_user_books` VALUES ('711', '437', '27');
INSERT INTO `librarian_user_books` VALUES ('237', '437', '65');
INSERT INTO `librarian_user_books` VALUES ('873', '438', '17');
INSERT INTO `librarian_user_books` VALUES ('281', '440', '56');
INSERT INTO `librarian_user_books` VALUES ('714', '440', '78');
INSERT INTO `librarian_user_books` VALUES ('481', '442', '55');
INSERT INTO `librarian_user_books` VALUES ('264', '442', '69');
INSERT INTO `librarian_user_books` VALUES ('243', '442', '72');
INSERT INTO `librarian_user_books` VALUES ('814', '443', '6');
INSERT INTO `librarian_user_books` VALUES ('5', '444', '7');
INSERT INTO `librarian_user_books` VALUES ('15', '444', '20');
INSERT INTO `librarian_user_books` VALUES ('456', '445', '55');
INSERT INTO `librarian_user_books` VALUES ('351', '445', '62');
INSERT INTO `librarian_user_books` VALUES ('326', '446', '41');
INSERT INTO `librarian_user_books` VALUES ('449', '447', '26');
INSERT INTO `librarian_user_books` VALUES ('899', '447', '56');
INSERT INTO `librarian_user_books` VALUES ('118', '448', '13');
INSERT INTO `librarian_user_books` VALUES ('520', '449', '26');
INSERT INTO `librarian_user_books` VALUES ('600', '449', '58');
INSERT INTO `librarian_user_books` VALUES ('522', '451', '19');
INSERT INTO `librarian_user_books` VALUES ('555', '452', '43');
INSERT INTO `librarian_user_books` VALUES ('314', '452', '66');
INSERT INTO `librarian_user_books` VALUES ('344', '454', '12');
INSERT INTO `librarian_user_books` VALUES ('966', '454', '27');
INSERT INTO `librarian_user_books` VALUES ('405', '456', '25');
INSERT INTO `librarian_user_books` VALUES ('34', '457', '45');
INSERT INTO `librarian_user_books` VALUES ('397', '457', '70');
INSERT INTO `librarian_user_books` VALUES ('862', '458', '21');
INSERT INTO `librarian_user_books` VALUES ('66', '458', '47');
INSERT INTO `librarian_user_books` VALUES ('900', '459', '24');
INSERT INTO `librarian_user_books` VALUES ('8', '460', '78');
INSERT INTO `librarian_user_books` VALUES ('816', '461', '20');
INSERT INTO `librarian_user_books` VALUES ('338', '461', '43');
INSERT INTO `librarian_user_books` VALUES ('546', '463', '16');
INSERT INTO `librarian_user_books` VALUES ('165', '463', '44');
INSERT INTO `librarian_user_books` VALUES ('591', '464', '44');
INSERT INTO `librarian_user_books` VALUES ('149', '464', '50');
INSERT INTO `librarian_user_books` VALUES ('853', '464', '78');
INSERT INTO `librarian_user_books` VALUES ('99', '465', '21');
INSERT INTO `librarian_user_books` VALUES ('454', '466', '29');
INSERT INTO `librarian_user_books` VALUES ('872', '467', '7');
INSERT INTO `librarian_user_books` VALUES ('812', '467', '29');
INSERT INTO `librarian_user_books` VALUES ('191', '469', '8');
INSERT INTO `librarian_user_books` VALUES ('855', '469', '20');
INSERT INTO `librarian_user_books` VALUES ('632', '469', '43');
INSERT INTO `librarian_user_books` VALUES ('511', '471', '26');
INSERT INTO `librarian_user_books` VALUES ('951', '474', '38');
INSERT INTO `librarian_user_books` VALUES ('815', '476', '50');
INSERT INTO `librarian_user_books` VALUES ('726', '477', '59');
INSERT INTO `librarian_user_books` VALUES ('805', '478', '57');
INSERT INTO `librarian_user_books` VALUES ('207', '478', '69');
INSERT INTO `librarian_user_books` VALUES ('529', '479', '10');
INSERT INTO `librarian_user_books` VALUES ('11', '480', '34');
INSERT INTO `librarian_user_books` VALUES ('560', '480', '66');
INSERT INTO `librarian_user_books` VALUES ('144', '482', '28');
INSERT INTO `librarian_user_books` VALUES ('486', '482', '55');
INSERT INTO `librarian_user_books` VALUES ('626', '483', '43');
INSERT INTO `librarian_user_books` VALUES ('37', '483', '61');
INSERT INTO `librarian_user_books` VALUES ('644', '484', '32');
INSERT INTO `librarian_user_books` VALUES ('119', '485', '21');
INSERT INTO `librarian_user_books` VALUES ('794', '486', '31');
INSERT INTO `librarian_user_books` VALUES ('762', '486', '34');
INSERT INTO `librarian_user_books` VALUES ('681', '486', '58');
INSERT INTO `librarian_user_books` VALUES ('652', '487', '29');
INSERT INTO `librarian_user_books` VALUES ('233', '487', '38');
INSERT INTO `librarian_user_books` VALUES ('929', '488', '32');
INSERT INTO `librarian_user_books` VALUES ('361', '488', '49');
INSERT INTO `librarian_user_books` VALUES ('430', '489', '30');
INSERT INTO `librarian_user_books` VALUES ('986', '490', '15');
INSERT INTO `librarian_user_books` VALUES ('350', '490', '48');
INSERT INTO `librarian_user_books` VALUES ('463', '490', '54');
INSERT INTO `librarian_user_books` VALUES ('743', '491', '52');
INSERT INTO `librarian_user_books` VALUES ('407', '492', '27');
INSERT INTO `librarian_user_books` VALUES ('58', '493', '73');
INSERT INTO `librarian_user_books` VALUES ('194', '494', '64');
INSERT INTO `librarian_user_books` VALUES ('96', '495', '21');
INSERT INTO `librarian_user_books` VALUES ('93', '496', '69');
INSERT INTO `librarian_user_books` VALUES ('158', '497', '80');
INSERT INTO `librarian_user_books` VALUES ('784', '498', '33');
INSERT INTO `librarian_user_books` VALUES ('97', '498', '65');
INSERT INTO `librarian_user_books` VALUES ('976', '499', '52');
INSERT INTO `librarian_user_books` VALUES ('142', '499', '67');
INSERT INTO `librarian_user_books` VALUES ('190', '500', '13');
INSERT INTO `librarian_user_books` VALUES ('992', '500', '17');
INSERT INTO `librarian_user_books` VALUES ('129', '500', '41');
INSERT INTO `librarian_user_books` VALUES ('287', '500', '42');
INSERT INTO `librarian_user_books` VALUES ('152', '500', '47');
INSERT INTO `librarian_user_books` VALUES ('212', '501', '70');
INSERT INTO `librarian_user_books` VALUES ('788', '501', '74');
INSERT INTO `librarian_user_books` VALUES ('718', '502', '33');
INSERT INTO `librarian_user_books` VALUES ('807', '502', '76');
INSERT INTO `librarian_user_books` VALUES ('376', '504', '8');
INSERT INTO `librarian_user_books` VALUES ('497', '504', '55');
INSERT INTO `librarian_user_books` VALUES ('564', '505', '58');
INSERT INTO `librarian_user_books` VALUES ('146', '507', '13');
INSERT INTO `librarian_user_books` VALUES ('641', '508', '62');
INSERT INTO `librarian_user_books` VALUES ('820', '509', '9');
INSERT INTO `librarian_user_books` VALUES ('267', '509', '13');
INSERT INTO `librarian_user_books` VALUES ('417', '509', '47');
INSERT INTO `librarian_user_books` VALUES ('828', '510', '6');
INSERT INTO `librarian_user_books` VALUES ('115', '510', '19');
INSERT INTO `librarian_user_books` VALUES ('297', '510', '63');
INSERT INTO `librarian_user_books` VALUES ('857', '511', '26');
INSERT INTO `librarian_user_books` VALUES ('508', '511', '65');
INSERT INTO `librarian_user_books` VALUES ('614', '512', '15');
INSERT INTO `librarian_user_books` VALUES ('813', '512', '30');
INSERT INTO `librarian_user_books` VALUES ('691', '513', '21');
INSERT INTO `librarian_user_books` VALUES ('6', '513', '42');
INSERT INTO `librarian_user_books` VALUES ('609', '513', '45');
INSERT INTO `librarian_user_books` VALUES ('72', '514', '28');
INSERT INTO `librarian_user_books` VALUES ('510', '517', '69');
INSERT INTO `librarian_user_books` VALUES ('266', '518', '46');
INSERT INTO `librarian_user_books` VALUES ('104', '519', '16');
INSERT INTO `librarian_user_books` VALUES ('112', '520', '32');
INSERT INTO `librarian_user_books` VALUES ('147', '520', '55');
INSERT INTO `librarian_user_books` VALUES ('488', '521', '66');
INSERT INTO `librarian_user_books` VALUES ('409', '522', '12');
INSERT INTO `librarian_user_books` VALUES ('370', '522', '32');
INSERT INTO `librarian_user_books` VALUES ('696', '522', '44');
INSERT INTO `librarian_user_books` VALUES ('434', '522', '47');
INSERT INTO `librarian_user_books` VALUES ('946', '523', '26');
INSERT INTO `librarian_user_books` VALUES ('865', '523', '40');
INSERT INTO `librarian_user_books` VALUES ('327', '524', '57');
INSERT INTO `librarian_user_books` VALUES ('76', '525', '35');
INSERT INTO `librarian_user_books` VALUES ('709', '526', '62');
INSERT INTO `librarian_user_books` VALUES ('136', '528', '15');
INSERT INTO `librarian_user_books` VALUES ('103', '529', '20');
INSERT INTO `librarian_user_books` VALUES ('748', '529', '22');
INSERT INTO `librarian_user_books` VALUES ('92', '529', '35');
INSERT INTO `librarian_user_books` VALUES ('557', '530', '44');
INSERT INTO `librarian_user_books` VALUES ('359', '531', '37');
INSERT INTO `librarian_user_books` VALUES ('404', '532', '52');
INSERT INTO `librarian_user_books` VALUES ('182', '532', '61');
INSERT INTO `librarian_user_books` VALUES ('367', '533', '52');
INSERT INTO `librarian_user_books` VALUES ('302', '533', '74');
INSERT INTO `librarian_user_books` VALUES ('521', '534', '42');
INSERT INTO `librarian_user_books` VALUES ('551', '535', '16');
INSERT INTO `librarian_user_books` VALUES ('799', '535', '31');
INSERT INTO `librarian_user_books` VALUES ('45', '536', '33');
INSERT INTO `librarian_user_books` VALUES ('100', '536', '45');
INSERT INTO `librarian_user_books` VALUES ('180', '537', '3');
INSERT INTO `librarian_user_books` VALUES ('526', '537', '39');
INSERT INTO `librarian_user_books` VALUES ('962', '537', '54');
INSERT INTO `librarian_user_books` VALUES ('944', '538', '37');
INSERT INTO `librarian_user_books` VALUES ('357', '538', '75');
INSERT INTO `librarian_user_books` VALUES ('279', '539', '44');
INSERT INTO `librarian_user_books` VALUES ('999', '540', '13');
INSERT INTO `librarian_user_books` VALUES ('478', '540', '36');
INSERT INTO `librarian_user_books` VALUES ('255', '541', '73');
INSERT INTO `librarian_user_books` VALUES ('185', '542', '29');
INSERT INTO `librarian_user_books` VALUES ('845', '543', '31');
INSERT INTO `librarian_user_books` VALUES ('617', '544', '16');
INSERT INTO `librarian_user_books` VALUES ('797', '544', '78');
INSERT INTO `librarian_user_books` VALUES ('62', '545', '28');
INSERT INTO `librarian_user_books` VALUES ('447', '545', '47');
INSERT INTO `librarian_user_books` VALUES ('935', '546', '78');
INSERT INTO `librarian_user_books` VALUES ('519', '547', '35');
INSERT INTO `librarian_user_books` VALUES ('439', '547', '60');
INSERT INTO `librarian_user_books` VALUES ('316', '548', '8');
INSERT INTO `librarian_user_books` VALUES ('308', '548', '60');
INSERT INTO `librarian_user_books` VALUES ('901', '549', '24');
INSERT INTO `librarian_user_books` VALUES ('214', '549', '70');
INSERT INTO `librarian_user_books` VALUES ('633', '549', '72');
INSERT INTO `librarian_user_books` VALUES ('834', '550', '17');
INSERT INTO `librarian_user_books` VALUES ('491', '551', '24');
INSERT INTO `librarian_user_books` VALUES ('261', '552', '36');
INSERT INTO `librarian_user_books` VALUES ('792', '552', '52');
INSERT INTO `librarian_user_books` VALUES ('779', '553', '52');
INSERT INTO `librarian_user_books` VALUES ('258', '555', '51');
INSERT INTO `librarian_user_books` VALUES ('289', '556', '2');
INSERT INTO `librarian_user_books` VALUES ('406', '556', '71');
INSERT INTO `librarian_user_books` VALUES ('952', '559', '25');
INSERT INTO `librarian_user_books` VALUES ('22', '560', '40');
INSERT INTO `librarian_user_books` VALUES ('937', '561', '27');
INSERT INTO `librarian_user_books` VALUES ('217', '561', '57');
INSERT INTO `librarian_user_books` VALUES ('660', '561', '63');
INSERT INTO `librarian_user_books` VALUES ('687', '561', '75');
INSERT INTO `librarian_user_books` VALUES ('368', '564', '5');
INSERT INTO `librarian_user_books` VALUES ('864', '564', '27');
INSERT INTO `librarian_user_books` VALUES ('178', '565', '7');
INSERT INTO `librarian_user_books` VALUES ('172', '565', '43');
INSERT INTO `librarian_user_books` VALUES ('664', '565', '57');
INSERT INTO `librarian_user_books` VALUES ('425', '565', '66');
INSERT INTO `librarian_user_books` VALUES ('975', '567', '2');
INSERT INTO `librarian_user_books` VALUES ('114', '567', '17');
INSERT INTO `librarian_user_books` VALUES ('59', '567', '21');
INSERT INTO `librarian_user_books` VALUES ('558', '567', '69');
INSERT INTO `librarian_user_books` VALUES ('356', '568', '6');
INSERT INTO `librarian_user_books` VALUES ('773', '568', '33');
INSERT INTO `librarian_user_books` VALUES ('760', '569', '30');
INSERT INTO `librarian_user_books` VALUES ('366', '570', '39');
INSERT INTO `librarian_user_books` VALUES ('160', '573', '17');
INSERT INTO `librarian_user_books` VALUES ('242', '573', '35');
INSERT INTO `librarian_user_books` VALUES ('796', '574', '3');
INSERT INTO `librarian_user_books` VALUES ('163', '574', '32');
INSERT INTO `librarian_user_books` VALUES ('769', '574', '61');
INSERT INTO `librarian_user_books` VALUES ('120', '575', '71');
INSERT INTO `librarian_user_books` VALUES ('554', '575', '75');
INSERT INTO `librarian_user_books` VALUES ('400', '576', '21');
INSERT INTO `librarian_user_books` VALUES ('54', '579', '17');
INSERT INTO `librarian_user_books` VALUES ('734', '580', '63');
INSERT INTO `librarian_user_books` VALUES ('427', '580', '70');
INSERT INTO `librarian_user_books` VALUES ('922', '580', '80');
INSERT INTO `librarian_user_books` VALUES ('345', '582', '54');
INSERT INTO `librarian_user_books` VALUES ('698', '584', '32');
INSERT INTO `librarian_user_books` VALUES ('218', '585', '8');
INSERT INTO `librarian_user_books` VALUES ('825', '585', '12');
INSERT INTO `librarian_user_books` VALUES ('662', '585', '45');
INSERT INTO `librarian_user_books` VALUES ('996', '585', '51');
INSERT INTO `librarian_user_books` VALUES ('286', '585', '77');
INSERT INTO `librarian_user_books` VALUES ('246', '586', '60');
INSERT INTO `librarian_user_books` VALUES ('753', '586', '77');
INSERT INTO `librarian_user_books` VALUES ('482', '587', '46');
INSERT INTO `librarian_user_books` VALUES ('91', '588', '45');
INSERT INTO `librarian_user_books` VALUES ('139', '589', '17');
INSERT INTO `librarian_user_books` VALUES ('184', '590', '63');
INSERT INTO `librarian_user_books` VALUES ('346', '590', '69');
INSERT INTO `librarian_user_books` VALUES ('818', '591', '5');
INSERT INTO `librarian_user_books` VALUES ('17', '591', '34');
INSERT INTO `librarian_user_books` VALUES ('972', '591', '51');
INSERT INTO `librarian_user_books` VALUES ('462', '591', '59');
INSERT INTO `librarian_user_books` VALUES ('349', '592', '33');
INSERT INTO `librarian_user_books` VALUES ('469', '592', '65');
INSERT INTO `librarian_user_books` VALUES ('980', '592', '68');
INSERT INTO `librarian_user_books` VALUES ('724', '594', '5');
INSERT INTO `librarian_user_books` VALUES ('245', '594', '37');
INSERT INTO `librarian_user_books` VALUES ('131', '594', '45');
INSERT INTO `librarian_user_books` VALUES ('285', '595', '11');
INSERT INTO `librarian_user_books` VALUES ('515', '596', '46');
INSERT INTO `librarian_user_books` VALUES ('767', '597', '68');
INSERT INTO `librarian_user_books` VALUES ('396', '598', '12');
INSERT INTO `librarian_user_books` VALUES ('849', '598', '80');
INSERT INTO `librarian_user_books` VALUES ('997', '599', '45');
INSERT INTO `librarian_user_books` VALUES ('426', '599', '51');
INSERT INTO `librarian_user_books` VALUES ('186', '599', '52');
INSERT INTO `librarian_user_books` VALUES ('939', '599', '57');
INSERT INTO `librarian_user_books` VALUES ('105', '600', '30');
INSERT INTO `librarian_user_books` VALUES ('198', '601', '36');
INSERT INTO `librarian_user_books` VALUES ('895', '602', '36');
INSERT INTO `librarian_user_books` VALUES ('786', '602', '72');
INSERT INTO `librarian_user_books` VALUES ('413', '603', '42');
INSERT INTO `librarian_user_books` VALUES ('480', '603', '51');
INSERT INTO `librarian_user_books` VALUES ('249', '603', '57');
INSERT INTO `librarian_user_books` VALUES ('890', '604', '65');
INSERT INTO `librarian_user_books` VALUES ('870', '606', '18');
INSERT INTO `librarian_user_books` VALUES ('189', '606', '57');
INSERT INTO `librarian_user_books` VALUES ('254', '607', '60');
INSERT INTO `librarian_user_books` VALUES ('810', '607', '76');
INSERT INTO `librarian_user_books` VALUES ('126', '607', '80');
INSERT INTO `librarian_user_books` VALUES ('193', '608', '47');
INSERT INTO `librarian_user_books` VALUES ('848', '611', '5');
INSERT INTO `librarian_user_books` VALUES ('181', '611', '17');
INSERT INTO `librarian_user_books` VALUES ('78', '612', '76');
INSERT INTO `librarian_user_books` VALUES ('969', '615', '41');
INSERT INTO `librarian_user_books` VALUES ('827', '615', '55');
INSERT INTO `librarian_user_books` VALUES ('798', '615', '65');
INSERT INTO `librarian_user_books` VALUES ('802', '615', '76');
INSERT INTO `librarian_user_books` VALUES ('448', '616', '8');
INSERT INTO `librarian_user_books` VALUES ('247', '616', '34');
INSERT INTO `librarian_user_books` VALUES ('199', '616', '45');
INSERT INTO `librarian_user_books` VALUES ('305', '617', '37');
INSERT INTO `librarian_user_books` VALUES ('169', '617', '72');
INSERT INTO `librarian_user_books` VALUES ('636', '618', '10');
INSERT INTO `librarian_user_books` VALUES ('934', '619', '40');
INSERT INTO `librarian_user_books` VALUES ('736', '620', '14');
INSERT INTO `librarian_user_books` VALUES ('672', '620', '59');
INSERT INTO `librarian_user_books` VALUES ('647', '623', '27');
INSERT INTO `librarian_user_books` VALUES ('679', '623', '68');
INSERT INTO `librarian_user_books` VALUES ('605', '624', '29');
INSERT INTO `librarian_user_books` VALUES ('843', '624', '79');
INSERT INTO `librarian_user_books` VALUES ('745', '625', '16');
INSERT INTO `librarian_user_books` VALUES ('159', '626', '5');
INSERT INTO `librarian_user_books` VALUES ('446', '626', '29');
INSERT INTO `librarian_user_books` VALUES ('323', '628', '30');
INSERT INTO `librarian_user_books` VALUES ('518', '628', '52');
INSERT INTO `librarian_user_books` VALUES ('667', '628', '60');
INSERT INTO `librarian_user_books` VALUES ('979', '630', '2');
INSERT INTO `librarian_user_books` VALUES ('57', '630', '33');
INSERT INTO `librarian_user_books` VALUES ('545', '630', '68');
INSERT INTO `librarian_user_books` VALUES ('201', '631', '7');
INSERT INTO `librarian_user_books` VALUES ('776', '631', '66');
INSERT INTO `librarian_user_books` VALUES ('63', '632', '23');
INSERT INTO `librarian_user_books` VALUES ('707', '632', '46');
INSERT INTO `librarian_user_books` VALUES ('961', '632', '64');
INSERT INTO `librarian_user_books` VALUES ('179', '635', '24');
INSERT INTO `librarian_user_books` VALUES ('137', '636', '22');
INSERT INTO `librarian_user_books` VALUES ('128', '636', '58');
INSERT INTO `librarian_user_books` VALUES ('330', '637', '55');
INSERT INTO `librarian_user_books` VALUES ('610', '637', '67');
INSERT INTO `librarian_user_books` VALUES ('829', '638', '45');
INSERT INTO `librarian_user_books` VALUES ('700', '638', '63');
INSERT INTO `librarian_user_books` VALUES ('887', '639', '51');
INSERT INTO `librarian_user_books` VALUES ('49', '639', '54');
INSERT INTO `librarian_user_books` VALUES ('597', '640', '17');
INSERT INTO `librarian_user_books` VALUES ('378', '640', '26');
INSERT INTO `librarian_user_books` VALUES ('913', '640', '32');
INSERT INTO `librarian_user_books` VALUES ('232', '641', '27');
INSERT INTO `librarian_user_books` VALUES ('296', '641', '80');
INSERT INTO `librarian_user_books` VALUES ('4', '643', '62');
INSERT INTO `librarian_user_books` VALUES ('867', '643', '63');
INSERT INTO `librarian_user_books` VALUES ('957', '644', '12');
INSERT INTO `librarian_user_books` VALUES ('84', '648', '41');
INSERT INTO `librarian_user_books` VALUES ('613', '648', '46');
INSERT INTO `librarian_user_books` VALUES ('140', '648', '71');
INSERT INTO `librarian_user_books` VALUES ('107', '649', '20');
INSERT INTO `librarian_user_books` VALUES ('28', '649', '61');
INSERT INTO `librarian_user_books` VALUES ('673', '650', '71');
INSERT INTO `librarian_user_books` VALUES ('304', '651', '12');
INSERT INTO `librarian_user_books` VALUES ('967', '651', '26');
INSERT INTO `librarian_user_books` VALUES ('699', '651', '67');
INSERT INTO `librarian_user_books` VALUES ('836', '651', '77');
INSERT INTO `librarian_user_books` VALUES ('737', '652', '31');
INSERT INTO `librarian_user_books` VALUES ('30', '652', '65');
INSERT INTO `librarian_user_books` VALUES ('487', '652', '70');
INSERT INTO `librarian_user_books` VALUES ('595', '654', '79');
INSERT INTO `librarian_user_books` VALUES ('489', '655', '50');
INSERT INTO `librarian_user_books` VALUES ('580', '655', '72');
INSERT INTO `librarian_user_books` VALUES ('572', '656', '4');
INSERT INTO `librarian_user_books` VALUES ('503', '656', '12');
INSERT INTO `librarian_user_books` VALUES ('161', '656', '37');
INSERT INTO `librarian_user_books` VALUES ('723', '657', '42');
INSERT INTO `librarian_user_books` VALUES ('94', '659', '56');
INSERT INTO `librarian_user_books` VALUES ('290', '660', '75');
INSERT INTO `librarian_user_books` VALUES ('650', '661', '62');
INSERT INTO `librarian_user_books` VALUES ('627', '661', '71');
INSERT INTO `librarian_user_books` VALUES ('85', '662', '24');
INSERT INTO `librarian_user_books` VALUES ('324', '663', '4');
INSERT INTO `librarian_user_books` VALUES ('86', '663', '57');
INSERT INTO `librarian_user_books` VALUES ('789', '664', '18');
INSERT INTO `librarian_user_books` VALUES ('885', '665', '8');
INSERT INTO `librarian_user_books` VALUES ('244', '665', '46');
INSERT INTO `librarian_user_books` VALUES ('685', '665', '55');
INSERT INTO `librarian_user_books` VALUES ('1005', '670', '8');
INSERT INTO `librarian_user_books` VALUES ('1016', '678', '19');
INSERT INTO `librarian_user_books` VALUES ('1019', '681', '2');
