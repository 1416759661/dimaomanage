/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : dimao

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-11-09 20:43:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbguestbook`
-- ----------------------------
DROP TABLE IF EXISTS `tbguestbook`;
CREATE TABLE `tbguestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `isshow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbguestbook
-- ----------------------------
INSERT INTO `tbguestbook` VALUES ('2', '121212', '12112', '121212', '2018-10-14 11:07:12', '1');
INSERT INTO `tbguestbook` VALUES ('3', '121212', '121', '1212121', '2018-10-14 11:21:35', '1');
INSERT INTO `tbguestbook` VALUES ('6', '1212', '1212', '1212', '2018-10-21 13:12:18', '1');

-- ----------------------------
-- Table structure for `tbmember`
-- ----------------------------
DROP TABLE IF EXISTS `tbmember`;
CREATE TABLE `tbmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmember
-- ----------------------------
INSERT INTO `tbmember` VALUES ('3', 'tangyan01', '123456', '汤燕', '15397600032', '重庆巴南区');
INSERT INTO `tbmember` VALUES ('4', 'tangyan02', '123456', '汤燕', '15397600032', '重庆巴南区');
INSERT INTO `tbmember` VALUES ('5', 'tangyan05', '123456', '汤先生', '15397600032', '成都');

-- ----------------------------
-- Table structure for `tbnews`
-- ----------------------------
DROP TABLE IF EXISTS `tbnews`;
CREATE TABLE `tbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `contents` text,
  `createtime` varchar(100) DEFAULT NULL,
  `typeid` varchar(11) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbnews
-- ----------------------------
INSERT INTO `tbnews` VALUES ('97', '“三减三健，迈向健康”主题宣传活动于我校举行', '王五', '为营造全民健康生活的良好氛围，进一步向我校师生普及健康文明的生活方式，传授健康生活的技能，2018年9月28日中午，由我校后勤保障处主办、大学生自我管理与服务委员会（以下简称“大自委”）学生后勤服务中心承办的“三减三健，迈向健康”主题宣传活动于我校食堂、教学楼顺利举行。', '2018-10-10', '1', '校团委');
INSERT INTO `tbnews` VALUES ('98', '关于2018年度留学基金委国家公派出国留学项目申报工作的通知', '李四', '2018年国家公派高级研究学者、访问学者、博士后项目、国际区域问题研究机外语高层次人才培养项目录取人员的留学资格保留至2018年12月31日。即当年选拔当年派出；西部地区人才培养特别项目被录取人员的留学资格保留至2019年9月30日（统一安排成班派出项目除外）。请计划申请上述项目的人员提前做好准备，在联系邀请函时，明确派出时间在结果公布日期和留学资格有效期之间。同一时段内仅限申报一个国家攻来出国留学项目，在申报项目未公布录取结果之前，不得申请其他项目。', '2018-10-08', '1', '招生就业处');
INSERT INTO `tbnews` VALUES ('99', '2018级迎新晚会“梦想开始的地方”在学校操场顺利举行', '张三', '向信仰看齐，向梦想致敬，向未来出发。9月28日晚6点半，重庆工商大学融智学院2018年消防文艺巡演暨2018级迎新晚会“梦想开始的地方”在学校操场顺利举行。此次晚会旨在庆祝建国69周年，歌颂改革开放40周年取得的各项成绩，也表达出我校对2018级新生的热烈欢迎。莅临本次晚会的嘉宾有：重庆工商大学融智学院党委丁广龙书记，重庆工商大学融智学院党委陈龙国副书记，党政办公室主任王晓云，教务处处长崔中山，思政部主任常晓薇，图书馆副馆长梁彦博，保卫处副处长欧英前，基础部副主任吕福起，学生处处长唐川川，学生处副处长兼团委书记李刚，商务学院党总支副书记宋湘琴，经济学院党总支副书记乐晓勇，以及物流学院党总支副书记李喆。\r\n此次晚会以“梦想开始的地方”为主题，向18级新生展现了一幅完整的青春画卷。舞蹈《永远的红门》拉开了表演的序幕，重庆消防艺术团的表演者们身着消防服，用灵活的身体和昂扬的斗志表达了对消防战士崇高的敬意和真挚的感谢；“把光荣写在军旗上，战火青春最风流”，男声独唱《当祖国召唤的时候》澎湃了大家的激情，使全场观众热血沸腾；讲述《我们的故事》也深入人心，四周万籁俱寂，有人潸然泪下；除此之外，还有女声独唱《从前慢》，话剧《我们的理想在希望的田野上》，舞蹈《守护》等精彩绝伦的节目。最后，舞蹈《骄傲的少年》将晚会拉向了最后的高潮，晚会也在一片欢声笑语中圆满结束。\r\n以梦为马，不负韶华，我们来自各地，有缘相聚于融智。这里是梦想的新起点。在这新的起跑线上，我们扬帆起航，向着美好未来大步前进。筑梦的路上有你有我。愿你我在追求梦想的道路上深沉而又执着。\r\n让我们一起筑梦融智，不忘初心，不负青春好时光!', '2018-09-29', '2', '校团委');
INSERT INTO `tbnews` VALUES ('100', '我校的国家奖学金公示', '王五', '全校师生：\r\n经本人申请，所在班级、学院认定，学生处审核，且经过现场答辩和学生工作委员会讨论，我校XXX等9名同学通过了我校的国家奖学金初审环节，现对全校师生进行公示，公示时间2018年10月9日—15日，如对公示结果有疑义，请于公示日期内联系学生处。  \r\n联系电话：88968681 联系人：王老师\r\n', '2018-10-10', '1', '融智学院');
INSERT INTO `tbnews` VALUES ('101', '“石榴哥”走红背后的原因是什么', '张三', '丽江“石榴哥”火了，背后的原因是什么？网友：其实他不傻！\r\n这几天在某短视频平台上，突然走红了一位卖石榴的小哥。\r\n一开始不少网友认为这位卖石榴的小哥是自闭症，不少网友纷纷留言，称买他的石榴也算是在帮这位小哥。\r\n可是最近这位石榴哥好像变样儿了。\r\n长相憨厚老师，穿着简单质朴，在丽江卖石榴的这位小哥莫名其妙的走红了，有不少网友还不远万里的去丽江看这位卖石榴的小哥。\r\n为什么这样一个卖石榴的人会突然的火了呢？我们从网上的视频来看，石榴哥特别有才，懂很多国家的语言。\r\n我们一般人卖石榴，应该是吆喝且夸自己的产品，而这位丽江小哥卖石榴，就一句话，我要回家了，你买我的石榴吗？我的石榴很好吃，你可以来尝一尝，不要钱的。\r\n许多网友可能也是被这位石榴哥的真诚打动了。\r\n这位石榴哥是一位英语老师，利用下班的时间卖石榴，他的英语说的是相当的不错，可能也是这种反差，让这位卖石榴的小哥在短时间内一下子走红了。\r\n在走红之后，不少网友才知道，这位石榴哥其实他一点也不傻，由于说话方式和自己独特的推销方式，石榴哥才走红了。\r\n石榴哥一点儿也不傻，最近还有个重庆的小姐姐非常喜欢他，专门从重庆飞到丽江去看他，还给他送了件衣服。\r\n石榴哥英语说的那么好，还走桃花运，还真让人有点小羡慕呢。', '2018-10-12', '6', '新闻网');

-- ----------------------------
-- Table structure for `tborderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tborderhead`;
CREATE TABLE `tborderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderhead
-- ----------------------------
INSERT INTO `tborderhead` VALUES ('9', '20181127085617282', '王刚', '1590000111x', '重庆市巴南区学堂湾X-3-36', '4524', '1', '2018-11-27 08:56:17', null, null);

-- ----------------------------
-- Table structure for `tborderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitems`;
CREATE TABLE `tborderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderitems
-- ----------------------------
INSERT INTO `tborderitems` VALUES ('16', '20181127085617282', '4', '小米 max3', '100', '3', null);
INSERT INTO `tborderitems` VALUES ('17', '20181127085617282', '8', '惜艾蜜', '2112', '2', null);

-- ----------------------------
-- Table structure for `tbproduct`
-- ----------------------------
DROP TABLE IF EXISTS `tbproduct`;
CREATE TABLE `tbproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `descriptions` text,
  `address` varchar(255) DEFAULT NULL,
  `istop` int(11) DEFAULT '0',
  `isstar` int(11) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbproduct
-- ----------------------------
INSERT INTO `tbproduct` VALUES ('18', 'OPPO A72新品手机5G ', '1299', 'OPPO A72新品手机5G ', '<p>【1299起+佴机】OPPO A72新品手机5G 90Hz 128G内存 学生 全网通oppoa72 氧气紫 4GB+128GB【晒单返20】 5G全网通 官方标配</p><p><br/></p>', '重庆', '0', '0', '20201107183003117.png', '1');
INSERT INTO `tbproduct` VALUES ('19', 'A72新品手机5G 90Hz', '1398', '氧气紫 4GB+128GB', '<p>【11.11全程价保，限时特惠，下单立减100，到手1299起】购机赠蓝牙佴机+晒单20元红包+碎屏宝1年；</p><p><br/></p>', '重庆', '1', '0', '20201107181205949.png', '1');
INSERT INTO `tbproduct` VALUES ('20', '华为 HUAWEI P40 Pro', '3500', '100倍双目变焦', '<p>华为 HUAWEI P40 Pro+ 麒麟990 5G SoC芯片 5000万超感知徕卡五摄 100倍双目变焦 8GB+256GB陶瓷白全网通5G</p><p><br/></p>', '北京', '1', '0', '20201107181147540.png', '2');
INSERT INTO `tbproduct` VALUES ('21', '索尼（SONY）Xperia1 II ', '7999', '5G智能手机', '<p>索尼（SONY）Xperia1 II 5G智能手机 4K屏 骁龙865 12G+256G 微单技术 蔡司镀膜 拍照游戏 20帧/秒 青山绿</p><p><br/></p>', '日本', '1', '0', '20201107181129318.png', '1');

-- ----------------------------
-- Table structure for `tbshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcar`;
CREATE TABLE `tbshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcar
-- ----------------------------
INSERT INTO `tbshoppingcar` VALUES ('61', '3', '索尼（SONY）Xperia1 ', '21', '4', '2020-11-07 22:47:30', '20201107181129318.png', '7999');
INSERT INTO `tbshoppingcar` VALUES ('62', '3', 'A72新品手机5G 90Hz', '19', '1', '2020-11-07 22:58:46', '20201107181205949.png', '1398');
INSERT INTO `tbshoppingcar` VALUES ('63', '3', 'OPPO A72新品手机5G ', '18', '2', '2020-11-07 23:51:15', '20201107183003117.png', '1299');

-- ----------------------------
-- Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `truename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbusers
-- ----------------------------
INSERT INTO `tbusers` VALUES ('1', 'admin', '123456', '管理员3');
INSERT INTO `tbusers` VALUES ('2', 'user', '123456', '张三');
INSERT INTO `tbusers` VALUES ('3', 'test', '123456', '测试员');
INSERT INTO `tbusers` VALUES ('4', 'test2', '123456', '测试员2');

-- ----------------------------
-- View structure for `v_order`
-- ----------------------------
DROP VIEW IF EXISTS `v_order`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order` AS select `tborderhead`.`sname` AS `sname`,`tborderhead`.`id` AS `id`,`tborderhead`.`orderid` AS `orderid`,`tborderhead`.`stel` AS `stel`,`tborderhead`.`saddress` AS `saddress`,`tborderhead`.`sumprice` AS `sumprice`,`tborderhead`.`memberid` AS `memberid`,`tborderhead`.`ctime` AS `ctime`,`tborderhead`.`ptime` AS `ptime`,`tborderhead`.`memo` AS `memo`,`tborderitems`.`procount` AS `procount`,`tborderitems`.`price` AS `price`,`tborderitems`.`proname` AS `proname`,`tborderitems`.`proid` AS `proid`,`tborderitems`.`imgurl` AS `imgurl` from (`tborderhead` left join `tborderitems` on((`tborderhead`.`orderid` = `tborderitems`.`orderid`))) ;
