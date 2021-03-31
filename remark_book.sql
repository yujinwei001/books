/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : remark_book

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2021-03-31 18:40:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `cover` varchar(2048) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `book_score` float(255,1) NOT NULL,
  `comment_num` int(255) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '明朝那些事儿', '明朝那些事儿', '当年明月', 'http://book.img.ireader.com/idc_1/m_1,w_156,h_208,q_100/b61a9dc2/group6/M00/7E/40/CmQUOFjdKNCEMS_lAAAAAB2dzDM402138497.jpg?v=GZw2bjIq&t=CmQUNl9jKEw.', '本书主要讲述了从万历年间中日战争到明熹宗即位前后二十七年的历史。 万历年间，内忧外患，外有日、朝进犯，内有四处叛乱。 日本国内的大名混战渐进尾声，对明朝却野心不小，丰臣秀吉、德川家康等都觊觎明朝，从谈判到战争，一向小看日本的明朝被打了个措手不及。众多名将从战争中挺身而出，在与日本的战争中，也顺便结束了丰臣秀吉的一生。 朝堂上也不平静，申时行的出现开启了一个新的政治时期。张居正死后，申时行独自担起万历后二十年，在他面前的敌人有丁此吕、李值、江东之、羊可立……这又是一场庙堂上的腥风血雨。但万历年间的风波并没有止于此，此后更有东林党之乱、宫闱内的嫔妃之争、皇位之争，还有一个叫王安的太监出现在明朝的历史舞台上。', '2', '4.8', '1');
INSERT INTO `book` VALUES ('2', '斗罗大陆', '斗罗大陆', '唐家三少', 'http://book.img.ireader.com/idc_1/m_1,w_156,h_208,q_100/8f73f51e/group61/M00/5E/55/CmQUOV90WHCEcMg-AAAAABv-MzM684786928.jpg?v=lMTcbYuJ&t=CmQUOV90WHA.', '唐门外门弟子唐三，因偷学内门绝学为唐门所不容，跳崖明志时却发现没有死，反而以另外一个身份来到了另一个世界，一个属于武魂的世界，名叫斗罗大陆。这里没有魔法，没有斗气，没有武术，却有神奇的武魂。这里的每个人，在自己六岁的时候，都会在武魂殿中令武魂觉醒。武魂有动物，有植物，有器物，武魂可以辅助人们的日常生活。而其中一些特别出色的武魂却可以用来修炼并进行战斗，这个职业，是斗罗大陆上最为强大也是最荣耀的职业——魂师!　　当唐门暗器来到斗罗大陆，当唐三武魂觉醒，他能否在这片武魂的世界再铸唐门的辉煌？他能否成为这个世界的主宰：神?', '3', '4.5', '1');
INSERT INTO `book` VALUES ('3', '三体', '三体', '刘慈欣', 'http://book.img.ireader.com/idc_1/m_1,w_156,h_208,q_100/69d601af/group6/M00/1B/45/CmQUN1X1O0aEPdvZAAAAAIwNLyY323823393.jpg?v=vMnIjTRu&t=CmQUN16IsCM.', '军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。 地球文明向宇宙发出的一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……四光年外的“三体文明”百余次毁灭与重生，正被逼迫不得不逃离母星，而恰在此时，他们接收到了地球发来的信息。 庞大的三体舰队开始向地球进发，人类的末日悄然来临……', '1', '4.7', '1');
INSERT INTO `book` VALUES ('4', '沙海', '沙海', '南派三叔', 'http://book.img.ireader.com/idc_1/m_1,w_156,h_208,q_100/b30305ce/group6/M00/27/9C/CmRae1tqlrGEWGI9AAAAAAj3jFE962616898.jpg?v=xDkzyhcI&t=CmRaIVvlXyA.', '为了寻找失踪的手下，吴邪寻到了无辜受牵连的少年黎簇。少年背后的伤疤成为吴邪解开沙漠古墓谜团的关键。威逼利诱之下，吴邪带着黎簇深入沙漠死亡禁地——古潼京。照片中消失的人，相机中无端出现的人影，围住海子的卡车，被毁掉的相机，沙丘下的干尸……在荒无人烟的沙漠中，吴邪一行人又会发现什么？黑眼镜的出现能拯救谁？而谁又能活着离开？', '4', '4.6', '1');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '科幻');
INSERT INTO `category` VALUES ('2', '历史');
INSERT INTO `category` VALUES ('3', '玄幻');
INSERT INTO `category` VALUES ('4', '悬疑');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(1024) NOT NULL,
  `score` float(255,1) NOT NULL,
  `create_time` datetime NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `enjoy_num` int(255) NOT NULL,
  `disable_status` varchar(16) NOT NULL,
  `disable_reason` varchar(255) DEFAULT NULL,
  `disable_time` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '语言生动，让乏味的历史变得有趣！', '4.8', '2021-01-30 23:42:19', '1', '1', '17', 'enable', '', null);
INSERT INTO `comment` VALUES ('2', '沉浸感太强了，仿佛完全进入了另一个世界！', '4.5', '2021-01-30 23:46:44', '2', '1', '3', 'enable', null, null);
INSERT INTO `comment` VALUES ('3', '是我看过最牛的科幻作品！', '4.7', '2021-01-30 23:49:09', '3', '1', '7', 'enable', null, null);
INSERT INTO `comment` VALUES ('4', '看完了电视剧，来追小说！', '4.6', '2021-01-30 23:50:30', '4', '1', '6', 'enable', null, null);
INSERT INTO `comment` VALUES ('5', '太好看了！', '4.0', '2021-02-01 13:47:19', '1', '2', '6', 'enable', null, null);

-- ----------------------------
-- Table structure for read_status
-- ----------------------------
DROP TABLE IF EXISTS `read_status`;
CREATE TABLE `read_status` (
  `rs_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `read_status` int(2) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of read_status
-- ----------------------------
INSERT INTO `read_status` VALUES ('1', '1', '1', '1', '2021-01-28 21:41:58');
INSERT INTO `read_status` VALUES ('2', '1', '2', '2', '2021-02-01 13:19:14');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `passwd` varchar(64) NOT NULL,
  `salt` int(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', 'e10adc3949ba59abbe56e057f20f883e', '1195', '2021-01-31 20:16:30', '浅谈牧歌');
INSERT INTO `user` VALUES ('2', '李四', 'e10adc3949ba59abbe56e057f20f883e', '1909', '2021-01-31 20:21:50', '威斯特');
INSERT INTO `user` VALUES ('4', '王五', 'e10adc3949ba59abbe56e057f20f883e', '1620', '2021-01-31 20:28:42', '斯蒂芬');
