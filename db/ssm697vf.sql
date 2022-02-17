-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm697vf
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619156087843 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-04-23 05:21:17',1,1,'提问1','回复1',1),(62,'2021-04-23 05:21:17',2,2,'提问2','回复2',2),(63,'2021-04-23 05:21:17',3,3,'提问3','回复3',3),(64,'2021-04-23 05:21:17',4,4,'提问4','回复4',4),(65,'2021-04-23 05:21:17',5,5,'提问5','回复5',5),(66,'2021-04-23 05:21:17',6,6,'提问6','回复6',6),(1619155961882,'2021-04-23 05:32:41',1619155825163,NULL,'请问中老年有哪些体检套餐',NULL,0),(1619156087842,'2021-04-23 05:34:46',1619155825163,1,NULL,'可直接看分类列表',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm697vf/upload/1619155790522.jpg'),(2,'picture2','http://localhost:8080/ssm697vf/upload/1619155799804.jpg'),(3,'picture3','http://localhost:8080/ssm697vf/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstijiantaocan`
--

DROP TABLE IF EXISTS `discusstijiantaocan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstijiantaocan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='体检套餐评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstijiantaocan`
--

LOCK TABLES `discusstijiantaocan` WRITE;
/*!40000 ALTER TABLE `discusstijiantaocan` DISABLE KEYS */;
INSERT INTO `discusstijiantaocan` VALUES (91,'2021-04-23 05:21:17',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-04-23 05:21:17',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-04-23 05:21:17',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-04-23 05:21:17',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-04-23 05:21:17',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-04-23 05:21:17',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstijiantaocan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619155780818 DEFAULT CHARSET=utf8 COMMENT='体检常识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-04-23 05:21:17','标题1','简介1','http://localhost:8080/ssm697vf/upload/1619155495980.jpg','<p>内容1</p>'),(82,'2021-04-23 05:21:17','标题2','简介2','http://localhost:8080/ssm697vf/upload/1619155502415.jpg','<p>内容2</p>'),(83,'2021-04-23 05:21:17','标题3','简介3','http://localhost:8080/ssm697vf/upload/1619155510070.jpg','<p>内容3</p>'),(84,'2021-04-23 05:21:17','标题4','简介4','http://localhost:8080/ssm697vf/upload/1619155516757.jpg','<p>内容4</p>'),(85,'2021-04-23 05:21:17','标题5','简介5','http://localhost:8080/ssm697vf/upload/1619155525711.jpg','<p>内容5</p>'),(86,'2021-04-23 05:21:17','标题6','简介6','http://localhost:8080/ssm697vf/upload/1619155532950.jpg','<p>内容6</p>'),(1619155780817,'2021-04-23 05:29:40','体检前一天晚上不能吃什么','体检前饮食注意','http://localhost:8080/ssm697vf/upload/1619155755600.jpg','<p>体检前一天晚上不能吃什么?很多受检的朋友在体检前一天都不知道吃什么好，因为很多体检前都不能吃消化不好的食物的，下面小编就介绍下体检前一天晚上不能吃什么。</p><p>碘高的食品：如深海鱼油、藻类、海带、海鱼、海蜇皮等，由于这些海产品含碘量高，会影响甲状腺功能检测。含嘌呤类的食物：中年人每年做健康体检时，要注意检测血液的尿酸浓度，由于嘌呤类的食物对尿酸检测有影响，所以不要吃含嘌呤类的食物，如动物内脏、海鲜类食品。</p><p>含糖食品：体检前尽量不吃喝各种甜食、饮料等，这些食品含糖量高，对血糖、尿糖的检测有一定影响。</p><p>高蛋白食品：如鸡蛋、肉类等，以免影响对肾脏功能的检测。</p><p>高脂肪食品：如果吃了高脂肪的食物，如肉类、动物内脏等，血脂会上升，会影响血脂的检测。</p><p><img src=\"http://localhost:8080/ssm697vf/upload/1619155779173.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619155935287 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijianbaogao`
--

DROP TABLE IF EXISTS `tijianbaogao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijianbaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `taocanmingcheng` varchar(200) DEFAULT NULL COMMENT '套餐名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `baogaodanhao` varchar(200) DEFAULT NULL COMMENT '报告单号',
  `tijianbaogao` varchar(200) DEFAULT NULL COMMENT '体检报告',
  `baogaojieguo` longtext COMMENT '报告结果',
  `baogaoshijian` datetime DEFAULT NULL COMMENT '报告时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baogaodanhao` (`baogaodanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619156063711 DEFAULT CHARSET=utf8 COMMENT='体检报告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijianbaogao`
--

LOCK TABLES `tijianbaogao` WRITE;
/*!40000 ALTER TABLE `tijianbaogao` DISABLE KEYS */;
INSERT INTO `tijianbaogao` VALUES (51,'2021-04-23 05:21:17','订单编号1','套餐名称1','分类1','报告单号1','','报告结果1','2021-04-23 13:21:17','用户名1','姓名1','手机1'),(52,'2021-04-23 05:21:17','订单编号2','套餐名称2','分类2','报告单号2','','报告结果2','2021-04-23 13:21:17','用户名2','姓名2','手机2'),(53,'2021-04-23 05:21:17','订单编号3','套餐名称3','分类3','报告单号3','','报告结果3','2021-04-23 13:21:17','用户名3','姓名3','手机3'),(54,'2021-04-23 05:21:17','订单编号4','套餐名称4','分类4','报告单号4','','报告结果4','2021-04-23 13:21:17','用户名4','姓名4','手机4'),(55,'2021-04-23 05:21:17','订单编号5','套餐名称5','分类5','报告单号5','','报告结果5','2021-04-23 13:21:17','用户名5','姓名5','手机5'),(56,'2021-04-23 05:21:17','订单编号6','套餐名称6','分类6','报告单号6','','报告结果6','2021-04-23 13:21:17','用户名6','姓名6','手机6'),(1619156063710,'2021-04-23 05:34:22','202142313315476934349','企业常规入职体检','入职体检','1619156047589','http://localhost:8080/ssm697vf/upload/1619156054765.doc','检查结果正常','2021-04-23 13:34:07','1','陈一','12312312312');
/*!40000 ALTER TABLE `tijianbaogao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijianfenlei`
--

DROP TABLE IF EXISTS `tijianfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619155648967 DEFAULT CHARSET=utf8 COMMENT='体检分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijianfenlei`
--

LOCK TABLES `tijianfenlei` WRITE;
/*!40000 ALTER TABLE `tijianfenlei` DISABLE KEYS */;
INSERT INTO `tijianfenlei` VALUES (21,'2021-04-23 05:21:17','分类1'),(22,'2021-04-23 05:21:17','分类2'),(23,'2021-04-23 05:21:17','分类3'),(24,'2021-04-23 05:21:17','分类4'),(25,'2021-04-23 05:21:17','分类5'),(26,'2021-04-23 05:21:17','分类6'),(1619155640476,'2021-04-23 05:27:19','入职体检'),(1619155648966,'2021-04-23 05:27:28','中老年体检');
/*!40000 ALTER TABLE `tijianfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijiantaocan`
--

DROP TABLE IF EXISTS `tijiantaocan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijiantaocan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `taocanmingcheng` varchar(200) NOT NULL COMMENT '套餐名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `taocanxiangmushu` int(11) DEFAULT NULL COMMENT '套餐项目数',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `keyuerenshu` int(11) DEFAULT NULL COMMENT '可约人数',
  `taocanjiage` int(11) DEFAULT NULL COMMENT '套餐价格',
  `tijiandidian` varchar(200) DEFAULT NULL COMMENT '体检地点',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `tijianneirong` longtext COMMENT '体检内容',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619155740771 DEFAULT CHARSET=utf8 COMMENT='体检套餐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijiantaocan`
--

LOCK TABLES `tijiantaocan` WRITE;
/*!40000 ALTER TABLE `tijiantaocan` DISABLE KEYS */;
INSERT INTO `tijiantaocan` VALUES (31,'2021-04-23 05:21:17','套餐名称1','分类1',1,'http://localhost:8080/ssm697vf/upload/tijiantaocan_tupian1.jpg',1,1,'体检地点1','注意事项1','体检内容1','2021-04-23 13:21:17',1),(32,'2021-04-23 05:21:17','套餐名称2','分类2',2,'http://localhost:8080/ssm697vf/upload/tijiantaocan_tupian2.jpg',2,2,'体检地点2','注意事项2','体检内容2','2021-04-23 13:32:18',14),(33,'2021-04-23 05:21:17','套餐名称3','分类3',3,'http://localhost:8080/ssm697vf/upload/1619155456030.jpg',3,3,'体检地点3','注意事项3','<p>体检内容3</p>','2021-04-23 13:24:06',4),(34,'2021-04-23 05:21:17','套餐名称4','分类4',4,'http://localhost:8080/ssm697vf/upload/1619155466592.jpg',4,4,'体检地点4','注意事项4','<p>体检内容4</p>','2021-04-23 13:24:20',5),(35,'2021-04-23 05:21:17','套餐名称5','分类5',5,'http://localhost:8080/ssm697vf/upload/tijiantaocan_tupian5.jpg',5,5,'体检地点5','注意事项5','体检内容5','2021-04-23 13:30:31',7),(36,'2021-04-23 05:21:17','套餐名称6','分类6',6,'http://localhost:8080/ssm697vf/upload/tijiantaocan_tupian6.jpg',6,6,'体检地点6','注意事项6','体检内容6','2021-04-23 13:21:17',6),(1619155740770,'2021-04-23 05:29:00','企业常规入职体检','入职体检',10,'http://localhost:8080/ssm697vf/upload/1619155692789.jpg',40,299,'门诊大楼','前一天应注意休息，不能饮酒服用药物，而且晚饭后不可再进食，保证10-12小时空腹抽血检查','<p>身高和体重的一般检查、体格检查、营养、发育、血压、胸肺听诊、心率、心律、血常规、肝功能、尿常规、心电图、胸部x光、杂音、肝脾、视力、眼、耳、鼻、喉等。</p><p><br></p>','2021-04-23 13:32:08',3);
/*!40000 ALTER TABLE `tijiantaocan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijianyuyue`
--

DROP TABLE IF EXISTS `tijianyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijianyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `taocanmingcheng` varchar(200) DEFAULT NULL COMMENT '套餐名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `taocanjiage` int(11) DEFAULT NULL COMMENT '套餐价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619155926266 DEFAULT CHARSET=utf8 COMMENT='体检预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijianyuyue`
--

LOCK TABLES `tijianyuyue` WRITE;
/*!40000 ALTER TABLE `tijianyuyue` DISABLE KEYS */;
INSERT INTO `tijianyuyue` VALUES (41,'2021-04-23 05:21:17','订单编号1','套餐名称1','分类1','http://localhost:8080/ssm697vf/upload/tijianyuyue_tupian1.jpg',1,'2021-04-23','2021-04-23 13:21:17','备注1','用户名1','姓名1','手机1','身份证1','是','','未支付'),(42,'2021-04-23 05:21:17','订单编号2','套餐名称2','分类2','http://localhost:8080/ssm697vf/upload/tijianyuyue_tupian2.jpg',2,'2021-04-23','2021-04-23 13:21:17','备注2','用户名2','姓名2','手机2','身份证2','是','','未支付'),(43,'2021-04-23 05:21:17','订单编号3','套餐名称3','分类3','http://localhost:8080/ssm697vf/upload/tijianyuyue_tupian3.jpg',3,'2021-04-23','2021-04-23 13:21:17','备注3','用户名3','姓名3','手机3','身份证3','是','','未支付'),(44,'2021-04-23 05:21:17','订单编号4','套餐名称4','分类4','http://localhost:8080/ssm697vf/upload/tijianyuyue_tupian4.jpg',4,'2021-04-23','2021-04-23 13:21:17','备注4','用户名4','姓名4','手机4','身份证4','是','','未支付'),(45,'2021-04-23 05:21:17','订单编号5','套餐名称5','分类5','http://localhost:8080/ssm697vf/upload/tijianyuyue_tupian5.jpg',5,'2021-04-23','2021-04-23 13:21:17','备注5','用户名5','姓名5','手机5','身份证5','是','','未支付'),(46,'2021-04-23 05:21:17','订单编号6','套餐名称6','分类6','http://localhost:8080/ssm697vf/upload/tijianyuyue_tupian6.jpg',6,'2021-04-23','2021-04-23 13:21:17','备注6','用户名6','姓名6','手机6','身份证6','是','','未支付'),(1619155926265,'2021-04-23 05:32:05','202142313315476934349','企业常规入职体检','入职体检','http://localhost:8080/ssm697vf/upload/1619155692789.jpg',299,'2021-04-23','2021-04-26 10:00:00','','1','陈一','12312312312','123456789789456123','是','ok','已支付');
/*!40000 ALTER TABLE `tijianyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','dk2dkfoft17gwzlen07cmyt68c6ubia7','2021-04-23 05:22:28','2021-04-23 06:22:28'),(2,1,'abo','users','管理员','u5jb54fact76spvhvyczg5xc1g2js88m','2021-04-23 05:22:48','2021-04-23 06:33:30'),(3,1619155825163,'1','yonghu','用户','sr0k1qijq8fqa13otm4xiptbrqcdqidj','2021-04-23 05:30:30','2021-04-23 06:35:11');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-23 05:21:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619155825164 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-23 05:21:17','用户1','123456','姓名1','http://localhost:8080/ssm697vf/upload/yonghu_touxiang1.jpg','男','13823888881','440300199101010001'),(12,'2021-04-23 05:21:17','用户2','123456','姓名2','http://localhost:8080/ssm697vf/upload/yonghu_touxiang2.jpg','男','13823888882','440300199202020002'),(13,'2021-04-23 05:21:17','用户3','123456','姓名3','http://localhost:8080/ssm697vf/upload/yonghu_touxiang3.jpg','男','13823888883','440300199303030003'),(14,'2021-04-23 05:21:17','用户4','123456','姓名4','http://localhost:8080/ssm697vf/upload/yonghu_touxiang4.jpg','男','13823888884','440300199404040004'),(15,'2021-04-23 05:21:17','用户5','123456','姓名5','http://localhost:8080/ssm697vf/upload/yonghu_touxiang5.jpg','男','13823888885','440300199505050005'),(16,'2021-04-23 05:21:17','用户6','123456','姓名6','http://localhost:8080/ssm697vf/upload/yonghu_touxiang6.jpg','男','13823888886','440300199606060006'),(1619155825163,'2021-04-23 05:30:25','1','11','陈一','http://localhost:8080/ssm697vf/upload/1619155838600.jpg','女','12312312312','123456789789456123');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-25 15:03:56
