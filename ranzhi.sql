-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ranzhi
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `cash_balance`
--

DROP TABLE IF EXISTS `cash_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_balance` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `depositor` mediumint(8) NOT NULL,
  `date` date NOT NULL,
  `money` decimal(12,2) NOT NULL,
  `currency` char(30) NOT NULL,
  `createdBy` char(30) NOT NULL DEFAULT '',
  `createdDate` datetime NOT NULL,
  `editedBy` char(30) NOT NULL DEFAULT '',
  `editedDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `depositor` (`depositor`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_balance`
--

LOCK TABLES `cash_balance` WRITE;
/*!40000 ALTER TABLE `cash_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_depositor`
--

DROP TABLE IF EXISTS `cash_depositor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_depositor` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `abbr` char(60) NOT NULL,
  `provider` char(100) NOT NULL,
  `title` char(100) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `account` char(90) NOT NULL,
  `bankcode` varchar(30) NOT NULL,
  `public` enum('0','1') NOT NULL,
  `type` enum('cash','bank','online') NOT NULL,
  `currency` char(30) NOT NULL,
  `status` enum('normal','disable') NOT NULL DEFAULT 'normal',
  `createdBy` char(30) NOT NULL DEFAULT '',
  `createdDate` datetime NOT NULL,
  `editedBy` char(30) NOT NULL DEFAULT '',
  `editedDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_depositor`
--

LOCK TABLES `cash_depositor` WRITE;
/*!40000 ALTER TABLE `cash_depositor` DISABLE KEYS */;
INSERT INTO `cash_depositor` VALUES (1,'北京量子云基本户','','','','','','0','cash','rmb','normal','li','2015-12-08 15:13:05','','2015-12-08 15:13:05'),(2,'北京量子云收入户','','','','','','0','cash','rmb','normal','li','2015-12-08 15:14:04','','2015-12-08 15:14:04'),(3,'无锡量子云基本户','','','','','','0','cash','rmb','normal','li','2015-12-08 15:14:19','','2015-12-08 15:14:19');
/*!40000 ALTER TABLE `cash_depositor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_trade`
--

DROP TABLE IF EXISTS `cash_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_trade` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `depositor` mediumint(8) NOT NULL,
  `parent` mediumint(8) NOT NULL DEFAULT '0',
  `product` mediumint(8) NOT NULL,
  `trader` smallint(5) unsigned NOT NULL DEFAULT '0',
  `order` mediumint(8) NOT NULL,
  `contract` mediumint(8) NOT NULL,
  `dept` mediumint(8) unsigned NOT NULL,
  `type` enum('in','out','transferin','transferout','inveset','redeem') NOT NULL,
  `money` decimal(12,2) NOT NULL,
  `currency` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `handlers` varchar(255) NOT NULL,
  `category` char(30) NOT NULL,
  `desc` text NOT NULL,
  `createdBy` char(30) NOT NULL DEFAULT '',
  `createdDate` datetime NOT NULL,
  `editedBy` char(30) NOT NULL DEFAULT '',
  `editedDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_trade`
--

LOCK TABLES `cash_trade` WRITE;
/*!40000 ALTER TABLE `cash_trade` DISABLE KEYS */;
INSERT INTO `cash_trade` VALUES (1,2,0,1,1,0,1,820003,'in',198504.00,'rmb','2015-12-08','tomhao','820024','','li','2015-12-08 16:52:17','li','2015-12-08 16:52:17'),(2,1,0,0,3,0,0,820023,'inveset',2000000.00,'rmb','2015-07-30','zhang','inveset','增资无锡量子云','li','2015-12-08 17:04:16','','2015-12-08 17:04:16'),(3,1,0,0,3,0,0,820023,'inveset',500000.00,'rmb','2015-08-11','zhang','inveset','增资无锡量子云','li','2015-12-08 17:05:04','','2015-12-08 17:05:04'),(7,1,0,0,3,0,0,820023,'inveset',500000.00,'rmb','2015-09-10','zhang','inveset','','zhang','2015-12-08 17:20:36','','2015-12-08 17:20:36'),(6,1,0,0,3,0,0,820023,'inveset',500000.00,'rmb','2015-08-21','zhang','inveset','','zhang','2015-12-08 17:19:18','','2015-12-08 17:19:18'),(9,1,0,0,3,0,0,820023,'inveset',100000.00,'rmb','2015-10-15','zhang','inveset','','zhang','2015-12-08 17:22:34','','2015-12-08 17:22:34'),(10,1,0,0,3,0,0,820023,'inveset',160000.00,'rmb','2015-11-09','zhang','inveset','','zhang','2015-12-08 17:23:17','','2015-12-08 17:23:17'),(11,1,0,0,3,0,0,820023,'inveset',100000.00,'rmb','2015-11-12','zhang','inveset','','zhang','2015-12-08 17:24:01','','2015-12-08 17:24:01'),(12,1,0,0,3,0,0,820023,'inveset',1140000.00,'rmb','2015-11-18','zhang','inveset','','zhang','2015-12-08 17:24:42','','2015-12-08 17:24:42'),(13,3,0,0,19,0,3,820007,'out',99000.00,'rmb','2015-12-08','lrr','820031','','lrr','2015-12-08 18:08:44','li','2015-12-08 18:15:55'),(14,3,0,2,9,0,4,820005,'in',1350000.00,'rmb','2015-12-08','lrr','820024','','li','2015-12-08 18:26:13','li','2015-12-08 18:26:13'),(15,3,0,0,18,0,0,820007,'out',10500.00,'rmb','2015-12-08','lrr','820028','专利申请  ','lrr','2015-12-08 18:49:36','lrr','2015-12-08 18:49:36'),(16,3,0,0,16,0,0,820007,'out',4620000.00,'rmb','2015-12-08','lrr','0','','lrr','2015-12-08 18:51:22','lrr','2015-12-08 18:51:22'),(17,1,0,0,23,0,0,820005,'out',325260.00,'rmb','2015-11-19','tomhao','820031','','lrr','2015-12-08 19:10:41','lrr','2015-12-08 19:10:41'),(18,3,0,0,17,0,0,820007,'out',25000.00,'rmb','2015-05-05','lrr','820028','ip采购','lrr','2015-12-08 19:12:40','lrr','2015-12-08 19:12:40'),(19,3,0,0,23,0,0,820005,'out',25600.00,'rmb','2015-08-05','tomhao','0','发票号：1100151130 01249136','lrr','2015-12-08 19:14:34','lrr','2015-12-08 19:14:34'),(20,3,0,0,23,0,0,820005,'out',198502.00,'rmb','2015-08-22','tomhao','0','9月1号预付30%59550','lrr','2015-12-08 19:15:40','lrr','2015-12-08 19:15:40'),(21,3,0,0,26,0,0,820007,'out',7000.00,'rmb','2015-08-23','lrr','820028','综合布线','lrr','2015-12-08 19:17:18','lrr','2015-12-08 19:17:18'),(22,3,0,0,23,0,0,820005,'out',5744.00,'rmb','2015-09-16','tomhao','0','','lrr','2015-12-08 19:21:23','lrr','2015-12-08 19:21:23'),(23,1,0,5,24,0,7,820005,'in',738000.00,'rmb','2015-12-08','li','820025','','li','2015-12-08 19:23:08','li','2015-12-08 19:23:08'),(24,3,0,0,27,0,0,820007,'out',36270.00,'rmb','2015-11-09','lrr','0','11月24日支付','lrr','2015-12-08 19:30:34','lrr','2015-12-08 19:30:34'),(25,3,0,0,28,0,0,820007,'out',17000.00,'rmb','2015-09-24','lrr','0','发票号：NO02374645','lrr','2015-12-08 19:31:56','lrr','2015-12-08 19:31:56'),(26,3,0,0,30,0,0,820007,'out',214335.00,'rmb','2015-11-09','lrr','0','11月24支付114570 11月24日99765','lrr','2015-12-08 19:49:24','lrr','2015-12-08 19:56:17'),(27,3,0,0,23,0,0,820005,'out',101000.00,'rmb','2015-11-10','tomhao','0','','lrr','2015-12-08 19:55:23','lrr','2015-12-08 19:55:23'),(28,1,0,0,31,0,0,820007,'out',1500.00,'rmb','2015-04-01','lrr','0','LZY-SR-20150401\n短信合同','lrr','2015-12-08 19:58:29','lrr','2015-12-08 19:58:29'),(29,1,0,0,32,0,0,820007,'out',3200.00,'rmb','2015-04-16','lrr','0','','lrr','2015-12-08 20:00:00','lrr','2015-12-08 20:00:00'),(30,1,0,0,33,0,0,820005,'out',37840.00,'rmb','2015-04-16','tomhao','0','10445为合计单价  。支出37840','lrr','2015-12-08 20:01:40','lrr','2015-12-08 20:01:40'),(31,1,0,0,34,0,0,820007,'out',1800.00,'rmb','2015-08-07','lrr','0','软著代理','lrr','2015-12-08 20:02:41','lrr','2015-12-08 20:02:41'),(32,1,0,0,23,0,0,820005,'out',14600.00,'rmb','2015-07-23','tomhao','0','','lrr','2015-12-08 20:04:08','lrr','2015-12-08 20:04:08'),(33,1,0,0,35,0,0,820007,'out',53000.00,'rmb','2015-09-28','lrr','0','','lrr','2015-12-08 20:04:42','lrr','2015-12-08 20:04:42'),(34,1,0,0,34,0,0,820007,'out',3000.00,'rmb','2015-10-30','lrr','0','商标复审','lrr','2015-12-08 20:05:20','lrr','2015-12-08 20:05:20'),(35,1,0,0,23,0,0,820005,'out',325260.00,'rmb','2015-11-19','tomhao','0','','lrr','2015-12-08 20:06:04','lrr','2015-12-08 20:06:04'),(36,1,0,0,34,0,0,820007,'out',11500.00,'rmb','2015-11-20','lrr','0','软著代理 5个','lrr','2015-12-08 20:07:04','lrr','2015-12-08 20:07:04'),(37,1,0,0,23,0,0,820005,'out',222362.00,'rmb','2015-11-24','tomhao','0','','lrr','2015-12-08 20:10:28','lrr','2015-12-08 20:10:28'),(38,3,0,0,19,0,0,820007,'out',28000.00,'rmb','2015-11-28','lrr','0','','lrr','2015-12-08 20:12:10','lrr','2015-12-08 20:12:10'),(39,2,0,0,37,0,11,820005,'in',35000.00,'rmb','2016-01-07','sky','820026','','sky','2016-01-07 11:38:54','sky','2016-01-07 11:38:54'),(40,2,0,0,1,0,14,820005,'in',229869.20,'rmb','2016-01-07','lwz','820024','','lwz','2016-01-07 11:50:37','lwz','2016-01-07 11:50:37'),(41,3,0,0,1,0,13,820005,'in',198504.00,'rmb','2016-01-07','lwz','820024','','lwz','2016-01-07 11:56:28','lwz','2016-01-07 11:56:28');
/*!40000 ALTER TABLE `cash_trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_address`
--

DROP TABLE IF EXISTS `crm_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `objectType` char(30) NOT NULL,
  `objectID` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `area` mediumint(8) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `objectType` (`objectType`,`objectID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_address`
--

LOCK TABLES `crm_address` WRITE;
/*!40000 ALTER TABLE `crm_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_contact`
--

DROP TABLE IF EXISTS `crm_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_contact` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `realname` char(30) NOT NULL DEFAULT '',
  `nickname` char(30) NOT NULL,
  `resume` mediumint(8) unsigned NOT NULL,
  `origin` varchar(150) NOT NULL,
  `status` enum('normal','wait','ignore') NOT NULL DEFAULT 'normal',
  `originID` mediumint(8) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `gender` enum('f','m','u') NOT NULL DEFAULT 'u',
  `email` char(50) NOT NULL DEFAULT '',
  `skype` char(50) NOT NULL,
  `qq` char(20) NOT NULL DEFAULT '',
  `yahoo` char(50) NOT NULL DEFAULT '',
  `gtalk` char(50) NOT NULL DEFAULT '',
  `wangwang` char(50) NOT NULL DEFAULT '',
  `site` varchar(100) NOT NULL,
  `mobile` char(11) NOT NULL DEFAULT '',
  `phone` char(20) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL,
  `fax` char(20) NOT NULL DEFAULT '',
  `weibo` char(50) NOT NULL,
  `weixin` char(50) NOT NULL,
  `desc` text NOT NULL,
  `createdBy` char(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` char(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `contactedBy` char(30) NOT NULL,
  `contactedDate` datetime NOT NULL,
  `nextDate` date NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `realname` (`realname`),
  KEY `nickname` (`nickname`),
  KEY `birthday` (`birthday`),
  KEY `createdBy` (`createdBy`),
  KEY `contactedBy` (`contactedBy`),
  KEY `contactedDate` (`contactedDate`),
  KEY `nextDate` (`nextDate`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_contact`
--

LOCK TABLES `crm_contact` WRITE;
/*!40000 ALTER TABLE `crm_contact` DISABLE KEYS */;
INSERT INTO `crm_contact` VALUES (1,'杨铭','',1,'','normal',0,'','0000-00-00','m','','','','','','','','','','','','','','','lwz','2015-12-08 16:17:26','lrr','2015-12-10 14:38:24','lwz','2015-12-10 14:37:47','0000-00-00','0'),(2,'刘','',2,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','li','2015-12-08 16:46:18','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(3,'李甫','',3,'','normal',0,'','0000-00-00','u','','','','','','','','','18500971337','','','','','','li','2015-12-08 16:56:40','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(4,'汪洋泽','',4,'','normal',0,'','0000-00-00','u','wang@lzyco.com','','','','','','','','18600500968','','','','','','li','2015-12-08 16:57:33','','2016-01-07 11:47:38','admin','2016-01-07 11:47:23','2016-01-07','0'),(5,'宋','',5,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 16:58:24','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(6,'毛昭','',6,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 16:59:30','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(7,'杨清政','',7,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:01:16','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(8,'张卫峰','',8,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:01:52','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(9,'周强','',9,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:02:17','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(10,'周强','',10,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:02:46','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(11,'刘先术','',11,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:04:48','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(12,'周强','',12,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:05:12','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(13,'周强','',13,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:05:28','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(14,'朱玉成','',14,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:06:35','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(15,'禹桢','',15,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:08:37','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(16,'朱于成','',16,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:10:36','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(17,'禹桢','',17,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:10:55','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(18,'左萌','',18,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 17:13:31','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(19,'张卫峰','',19,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 18:05:05','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(20,'何海平','',20,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 18:31:31','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(21,'Nathan','',21,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','li','2015-12-08 18:37:43','','2015-12-29 15:58:46','sky','2015-12-29 15:57:52','2015-12-30','0'),(22,'杜锋利','',22,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','li','2015-12-08 18:38:51','','2015-12-25 17:09:13','sky','2015-12-25 17:08:58','2015-12-26','0'),(23,'杨清政','',23,'','normal',0,'','0000-00-00','u','','','','','','','','','','','','','','','lrr','2015-12-08 19:05:01','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(24,'叶晓峰','',24,'','normal',0,'','0000-00-00','m','xiaofeng.ye@zeroneio.com','','','','','','','','＋8613917555177','','','','','','li','2015-12-08 19:11:27','li','2015-12-09 10:45:33','','0000-00-00 00:00:00','0000-00-00','0'),(25,'吕建平','',25,'','normal',0,'','0000-00-00','m','','','','','','','','','','','','','','','li','2015-12-08 19:14:53','li','2015-12-09 10:47:56','','0000-00-00 00:00:00','0000-00-00','0'),(26,'邹茂顺','',26,'','normal',0,'','0000-00-00','m','zoums@yonyou.com','','','','','','','','+8613986077535','','','','','','li','2015-12-08 22:49:51','li','2015-12-09 10:44:44','','0000-00-00 00:00:00','0000-00-00','0'),(27,'武教授','',27,'','normal',0,'','0000-00-00','u','chaoqun0539@sina.com','','450622353','','','','','','13520072312','','','','','','sky','2015-12-09 19:58:02','','2015-12-29 15:57:43','sky','2015-12-29 15:56:45','2015-12-30','0'),(28,'于洲','',28,'','normal',0,'','0000-00-00','u','yuzhou@lightchaseranimation.com','','','','','','','','13801184301','','','','','','sky','2015-12-10 10:43:37','','2016-01-07 11:52:41','sky','2016-01-07 11:52:31','2016-01-08','0'),(29,'王勇猛','',29,'','normal',0,'','0000-00-00','u','ameng68@163.com','','','','','','','','18611520317','','','','','','sky','2015-12-10 10:51:46','','2016-01-07 11:48:11','sky','2016-01-07 11:47:53','2016-01-08','0'),(30,'董明安','',30,'','normal',0,'','0000-00-00','u',',enson@manofilm.cn','','','','','','','','18611765659','','','','','','lwz','2015-12-15 10:35:57','','2015-12-15 10:59:41','lwz','2015-12-13 13:00:00','2015-12-22','0'),(31,'黄今','',31,'','normal',0,'','0000-00-00','u','','','','','','','','','18910316771','','','','','','lwz','2015-12-15 10:38:52','','2015-12-15 10:59:07','lwz','2015-12-13 13:00:00','2015-12-17','0'),(32,'文岩','',32,'','normal',0,'','0000-00-00','u','','','','','','','','','13910530750','','','','','','lwz','2015-12-15 10:41:05','','2015-12-15 10:58:14','lwz','2015-12-09 10:00:00','2015-12-16','0'),(33,'陈火明','',33,'','normal',0,'','0000-00-00','u','','','','','','','','','18910473103','','','','','','lwz','2015-12-15 10:44:30','','2015-12-15 10:57:18','lwz','2015-12-14 10:00:00','2015-12-16','0'),(34,'杨丽蓉','',34,'','normal',0,'','0000-00-00','u','','','','','','','','','13501002990','','','','','','lwz','2015-12-15 10:47:02','','2015-12-15 10:56:40','lwz','2015-11-27 10:00:00','2015-12-16','0'),(35,'吕工','',35,'','normal',0,'','0000-00-00','u','','','','','','','','','18910202711','','','','','','lwz','2015-12-15 10:50:41','','2015-12-15 10:55:55','lwz','2015-11-20 10:00:00','0000-00-00','0'),(36,'方乾','',36,'','normal',0,'','0000-00-00','u','fangqian@oece.com.cn','','2310181777','','','','','','18016316797','','','','','','lrr','2016-01-08 14:03:51','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0');
/*!40000 ALTER TABLE `crm_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_contract`
--

DROP TABLE IF EXISTS `crm_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_contract` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `customer` mediumint(8) unsigned NOT NULL,
  `name` char(100) NOT NULL,
  `code` char(30) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `items` text NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `delivery` char(30) NOT NULL,
  `return` char(30) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `status` enum('normal','closed','canceled') NOT NULL DEFAULT 'normal',
  `contact` mediumint(8) unsigned NOT NULL,
  `handlers` varchar(255) NOT NULL,
  `signedBy` char(30) NOT NULL,
  `signedDate` date NOT NULL,
  `deliveredBy` char(30) NOT NULL,
  `deliveredDate` date NOT NULL,
  `returnedBy` char(30) NOT NULL,
  `returnedDate` date NOT NULL,
  `finishedBy` char(30) NOT NULL,
  `finishedDate` date NOT NULL,
  `canceledBy` char(30) NOT NULL,
  `canceledDate` date NOT NULL,
  `createdBy` char(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` char(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `contactedBy` char(30) NOT NULL,
  `contactedDate` datetime NOT NULL,
  `nextDate` date NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `type` varchar(28) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `customer` (`customer`),
  KEY `amount` (`amount`),
  KEY `delivery` (`delivery`),
  KEY `return` (`return`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `status` (`status`),
  KEY `handlers` (`handlers`),
  KEY `contactedDate` (`contactedDate`),
  KEY `nextDate` (`nextDate`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_contract`
--

LOCK TABLES `crm_contract` WRITE;
/*!40000 ALTER TABLE `crm_contract` DISABLE KEYS */;
INSERT INTO `crm_contract` VALUES (1,1,'北京地平线机器人技术研发公司购买服务器 (2015-12-08)','WXLZY－DPX－20150901',198504.00,'','0000-00-00','0000-00-00','done','done','rmb','normal',1,'li','lwz','2015-09-01','lwz','2015-12-08','tomhao','2015-11-01','','0000-00-00','','0000-00-00','lrr','2015-12-08 16:33:22','li','2016-01-07 11:59:10','','0000-00-00 00:00:00','0000-00-00','0','0'),(2,8,'购销合同','WXLZY-SK-20150814',99000.00,'','0000-00-00','0000-00-00','wait','wait','rmb','normal',8,'lrr','lrr','2015-08-14','','0000-00-00','','0000-00-00','','0000-00-00','','0000-00-00','lrr','2015-12-08 18:03:26','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','1','0'),(3,8,'购销合同','WXLZY-SK-20150814',99000.00,'','0000-00-00','0000-00-00','wait','wait','rmb','normal',8,'lrr','lrr','2015-08-14','','0000-00-00','','0000-00-00','','0000-00-00','','0000-00-00','lrr','2015-12-08 18:07:54','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','1','0'),(4,9,'华示（上海）实业有限公司购买服务器 (2015-12-08)','WXLZY-HS-20150611',1350000.00,'','2015-07-01','2016-06-30','wait','doing','rmb','normal',9,'lrr','lrr','2015-06-11','','0000-00-00','lrr','2015-11-24','','0000-00-00','','0000-00-00','li','2015-12-08 18:20:44','li','2015-12-08 18:23:58','','0000-00-00 00:00:00','0000-00-00','0','0'),(5,20,'深圳谷威天地传媒科技有限公司购买服务器 (2015-12-08)','WXLZY-SZGW-20140707',252000.00,'2014年回款75600&nbsp;','2014-07-07','2015-10-01','wait','doing','rmb','normal',20,'lrr','lrr','2014-07-01','','0000-00-00','lrr','2014-08-29','','0000-00-00','','0000-00-00','lrr','2015-12-08 18:46:47','lrr','2015-12-08 18:47:21','','0000-00-00 00:00:00','0000-00-00','0','0'),(6,21,'北京倍飞视国际视觉艺术交流有限公司购买服务器 (2015-12-08)','BJLZY-BF-20151115',330400.00,'','2015-11-15','2015-11-16','wait','wait','rmb','normal',21,'sky','sky','2015-11-15','','0000-00-00','','0000-00-00','','0000-00-00','','0000-00-00','lrr','2015-12-08 18:58:31','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0','0'),(7,24,'零融信息科技（上海）有限公司购买云服务 (2015-12-08)','BJLZY-SHLR-20151123',738000.00,'','2015-11-05','2016-12-01','wait','wait','rmb','normal',24,'wang','wang','2015-11-23','','0000-00-00','','0000-00-00','','0000-00-00','','0000-00-00','li','2015-12-08 19:17:49','li','2015-12-08 19:18:29','','0000-00-00 00:00:00','0000-00-00','0','0'),(9,1,'地平线购销合同补充','WXLZY-DPX-20150902',6196.00,'','0000-00-00','0000-00-00','wait','done','rmb','normal',1,'lrr','tomhao','2015-09-02','','0000-00-00','tomhao','2015-10-22','','0000-00-00','','0000-00-00','lrr','2015-12-08 19:41:11','lrr','2015-12-08 19:47:02','','0000-00-00 00:00:00','0000-00-00','0','0'),(11,37,'中央财经大学购买渲染服务 (2015-12-09)','LZYIN-C37-201601071138',35000.00,'','2015-12-19','2016-02-27','wait','done','rmb','normal',27,'sky','sky','2015-12-19','','0000-00-00','sky','2015-12-30','','0000-00-00','','0000-00-00','sky','2016-01-07 11:38:07','sky','2016-01-07 11:38:54','','0000-00-00 00:00:00','0000-00-00','0','sell'),(12,4,'采购服务器','LZYBUY-P4-201601071147',10000.00,'采购服务器','2016-01-07','2016-01-08','wait','wait','rmb','normal',0,'admin','admin','2016-01-07','','0000-00-00','','0000-00-00','','0000-00-00','','0000-00-00','admin','2016-01-07 11:47:09','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0','purchase'),(14,1,'北京地平线机器人技术研发公司购买服务器 (2015-12-10)','LZYIN-C1-201601071150',229869.20,'','0000-00-00','0000-00-00','done','done','rmb','normal',1,'li','lwz','2015-12-10','lwz','2016-01-07','lwz','2015-12-30','','0000-00-00','','0000-00-00','lwz','2016-01-07 11:50:12','li','2016-01-07 11:54:55','','0000-00-00 00:00:00','0000-00-00','0','sell');
/*!40000 ALTER TABLE `crm_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_contractorder`
--

DROP TABLE IF EXISTS `crm_contractorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_contractorder` (
  `contract` mediumint(8) unsigned NOT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `contract` (`contract`,`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_contractorder`
--

LOCK TABLES `crm_contractorder` WRITE;
/*!40000 ALTER TABLE `crm_contractorder` DISABLE KEYS */;
INSERT INTO `crm_contractorder` VALUES (1,1),(4,2),(5,3),(6,4),(7,6),(11,9),(13,1),(14,11);
/*!40000 ALTER TABLE `crm_contractorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_customer`
--

DROP TABLE IF EXISTS `crm_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_customer` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `type` char(30) NOT NULL,
  `relation` enum('client','provider','partner') NOT NULL DEFAULT 'client',
  `size` tinyint(3) unsigned NOT NULL,
  `industry` mediumint(8) unsigned NOT NULL,
  `area` mediumint(8) unsigned NOT NULL,
  `status` char(30) NOT NULL,
  `level` char(10) NOT NULL,
  `intension` text NOT NULL,
  `site` varchar(100) NOT NULL,
  `weibo` char(50) NOT NULL,
  `weixin` char(50) NOT NULL,
  `desc` text NOT NULL,
  `public` enum('0','1') NOT NULL DEFAULT '0',
  `createdBy` char(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `assignedTo` char(30) NOT NULL,
  `assignedBy` char(30) NOT NULL,
  `assignedDate` datetime NOT NULL,
  `editedBy` char(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `contactedBy` char(30) NOT NULL,
  `contactedDate` datetime NOT NULL,
  `nextDate` date NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `industry` (`industry`),
  KEY `size` (`size`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `area` (`area`),
  KEY `status` (`status`),
  KEY `level` (`level`),
  KEY `contactedDate` (`contactedDate`),
  KEY `nextDate` (`nextDate`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_customer`
--

LOCK TABLES `crm_customer` WRITE;
/*!40000 ALTER TABLE `crm_customer` DISABLE KEYS */;
INSERT INTO `crm_customer` VALUES (1,'北京地平线机器人技术研发公司','limited','client',2,4,110000,'payed','A','','','','','','0','lwz','2015-12-08 16:17:26','lwz','','0000-00-00 00:00:00','li','2016-01-07 11:50:12','lwz','2015-12-10 14:37:47','0000-00-00','0'),(2,'北京东方燕都资产评估有限责任公司','','provider',1,0,0,'potential','','','http://','http://weibo.com/','','','1','li','2015-12-08 16:46:18','li','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(3,'无锡量子云数字新媒体科技有限公司','limited','provider',3,0,0,'potential','','','http://','http://weibo.com/','','','1','li','2015-12-08 16:56:40','li','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(4,'无锡量子云数据服务有限公司','limited','provider',3,0,0,'signed','','','http://','http://weibo.com/','','','1','li','2015-12-08 16:57:33','li','','0000-00-00 00:00:00','','2016-01-07 11:47:38','admin','2016-01-07 11:47:23','2016-01-07','0'),(5,'北京华星知识产权代理有限公司','','client',0,0,0,'potential','0','','','','','','0','lrr','2015-12-08 16:58:24','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','1'),(6,'上海华盖科技发展有限公司武汉分公司','','client',0,0,0,'potential','0','','','','','','0','lrr','2015-12-08 16:59:30','tomhao','lrr','2015-12-08 17:07:11','lrr','2015-12-08 17:07:11','','0000-00-00 00:00:00','0000-00-00','1'),(7,'北京正昱科技有限公司','','client',0,0,0,'potential','0','','','','','','0','lrr','2015-12-08 17:01:16','tomhao','lrr','2015-12-08 17:06:52','lrr','2015-12-08 17:06:52','','0000-00-00 00:00:00','0000-00-00','1'),(8,'盛科网络（苏州）有限公司','','client',0,0,0,'signed','0','','','','','','0','lrr','2015-12-08 17:01:52','lrr','','0000-00-00 00:00:00','','2015-12-08 18:07:54','','0000-00-00 00:00:00','0000-00-00','1'),(9,'华示（上海）实业有限公司','','client',0,0,0,'signed','0','','','','','','0','lrr','2015-12-08 17:02:17','lrr','li','2015-12-08 18:31:14','li','2015-12-08 18:31:14','','0000-00-00 00:00:00','0000-00-00','0'),(10,'上海璟源贸易有限公司','','client',0,0,0,'potential','0','','','','','','0','lrr','2015-12-08 17:02:46','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','1'),(11,'无锡航德科技有限公司','','client',0,0,0,'potential','0','','','','','','0','lrr','2015-12-08 17:04:48','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','1'),(12,'上海韵杰科技有限公司','','client',0,0,0,'potential','0','','','','','','0','lrr','2015-12-08 17:05:12','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','1'),(13,'上海电易通科技有限公司','','client',0,0,0,'potential','0','','','','','','1','lrr','2015-12-08 17:05:28','lrr','','0000-00-00 00:00:00','li','2016-01-07 10:23:38','','0000-00-00 00:00:00','0000-00-00','0'),(14,'北京华科建筑智能系统工程有限公司','','client',0,0,0,'potential','0','','','','','','0','lrr','2015-12-08 17:06:35','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','1'),(15,'中国互联网络信息中心','','client',0,0,0,'potential','0','','','','','','0','lrr','2015-12-08 17:08:37','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','1'),(16,'北京华科建筑智能系统工程有限公司','limited','provider',2,34,110000,'potential','','','','','','','1','lrr','2015-12-08 17:10:36','lrr','','0000-00-00 00:00:00','lrr','2015-12-08 18:52:13','','0000-00-00 00:00:00','0000-00-00','0'),(17,'中国互联网络信息中心','','provider',0,0,0,'potential','','','http://','http://weibo.com/','','','1','lrr','2015-12-08 17:10:55','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(18,'北京天达知识产权代理事务所','','provider',0,0,0,'potential','','','http://','http://weibo.com/','','','1','lrr','2015-12-08 17:13:31','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(19,'盛科网络（苏州）有限公司','','provider',0,0,0,'potential','','','http://','http://weibo.com/','','','1','lrr','2015-12-08 18:05:05','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(20,'深圳谷威天地传媒科技有限公司','','client',0,0,0,'signed','','','','','','','0','lrr','2015-12-08 18:31:31','lrr','','0000-00-00 00:00:00','','2015-12-08 18:46:47','','0000-00-00 00:00:00','0000-00-00','0'),(21,'北京倍飞视国际视觉艺术交流有限公司','limited','client',1,0,0,'signed','A','','','','','','0','li','2015-12-08 18:37:43','sky','li','2015-12-08 18:38:05','li','2015-12-29 15:58:46','sky','2015-12-29 15:57:52','2015-12-30','0'),(22,'北京天工异彩影视科技有限公司','limited','client',1,0,0,'intension','A','','','','','','0','li','2015-12-08 18:38:51','sky','li','2015-12-08 18:39:03','sky','2015-12-25 17:09:13','sky','2015-12-25 17:08:58','2015-12-26','0'),(23,'北京正昱汇智科技有限公司','','provider',0,0,0,'potential','','','http://','http://weibo.com/','','','1','lrr','2015-12-08 19:05:01','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(24,'零融信息科技（上海）有限公司','limited','client',3,0,0,'signed','A','','','','','','0','li','2015-12-08 19:11:27','li','','0000-00-00 00:00:00','li','2015-12-09 10:45:33','','0000-00-00 00:00:00','0000-00-00','0'),(25,'华莱坞投资发展有限公司','national','client',1,0,0,'intension','C','','','','','','1','li','2015-12-08 19:14:53','li','','0000-00-00 00:00:00','li','2016-01-07 10:23:38','','0000-00-00 00:00:00','0000-00-00','0'),(26,'无锡航德科技有限公司','','provider',0,0,0,'potential','','','','','','','1','lrr','2015-12-08 19:17:18','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(27,'上海璟源贸易有限公司','','provider',0,0,0,'potential','','','','','','','1','lrr','2015-12-08 19:30:34','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(28,'上海华盖科技发展有限公司武汉分公司','','provider',0,0,0,'potential','','','','','','','1','lrr','2015-12-08 19:31:56','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(29,'上海杰柯信息科技有限公司','','provider',0,0,0,'potential','','','','','','','1','lrr','2015-12-08 19:49:24','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(30,'上海珂杰信息科技有限公司','','provider',0,0,0,'potential','','','','','','','1','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(31,'上海思锐信息技术有限公司','','provider',0,0,0,'potential','','','','','','','1','lrr','2015-12-08 19:58:29','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(32,'深圳市宝德计算机系统有限公司','','provider',0,0,0,'potential','','','','','','','1','lrr','2015-12-08 20:00:00','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(33,'武汉百特通网络科技有限公司','','provider',0,0,0,'potential','','','','','','','1','lrr','2015-12-08 20:01:40','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(34,'北京知易知识产权代理有限公司','','provider',0,0,0,'potential','','','','','','','1','lrr','2015-12-08 20:02:41','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(35,'北京向右看齐科技有限公司','','provider',0,0,0,'potential','','','','','','','1','lrr','2015-12-08 20:04:42','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(36,'用友网络科技股份有限公司湖北分公司','corporate','client',1,0,0,'intension','B','','','','','','1','li','2015-12-08 22:49:51','li','','0000-00-00 00:00:00','','2016-01-07 10:23:38','','0000-00-00 00:00:00','0000-00-00','0'),(37,'中央财经大学','collective','client',1,0,0,'payed','A','','','','','','0','sky','2015-12-09 19:58:02','sky','','0000-00-00 00:00:00','sky','2016-01-07 11:38:07','sky','2015-12-29 15:56:45','2015-12-30','0'),(38,'追光动画','limited','client',3,0,0,'potential','D','渲染农场服务，服务器购买租赁服务','','','','','0','sky','2015-12-10 10:43:37','sky','','0000-00-00 00:00:00','sky','2016-01-07 11:52:54','sky','2016-01-07 11:52:31','2016-01-08','0'),(39,'More visual production','limited','client',3,0,0,'potential','D','渲染农场','','','','','0','sky','2015-12-10 10:51:46','sky','','0000-00-00 00:00:00','sky','2016-01-07 11:53:04','sky','2016-01-07 11:47:53','2016-01-08','0'),(40,'北京漫影文化传媒有限公司','limited','client',3,0,0,'intension','C','海外业务较多，海外专线及渲染农场','','','','','0','lwz','2015-12-15 10:35:57','lwz','','0000-00-00 00:00:00','lwz','2016-01-07 13:03:50','lwz','2015-12-13 13:00:00','2015-12-22','0'),(41,'北京漫联创意科技有限公司','limited','client',3,0,0,'potential','C','公司准备制作一部动画片，筹备阶段，需要渲染服务','','','','','0','lwz','2015-12-15 10:38:52','lwz','','0000-00-00 00:00:00','lwz','2016-01-07 13:03:59','lwz','2015-12-13 13:00:00','2015-12-17','0'),(42,'东方龙之梦（北京）数字科技有限公司','limited','client',3,0,0,'potential','C','业务含三维动画电影制作、原创三维动画制作、后期制作、毛发开发渲染，洽谈中','','','','','0','lwz','2015-12-15 10:41:05','lwz','','0000-00-00 00:00:00','lwz','2016-01-07 13:04:05','lwz','2015-12-09 10:00:00','2015-12-16','0'),(43,'北京巅峰无限音乐文化有限公司','limited','client',3,0,0,'potential','D','影视、游戏音乐制作公司，前华谊兄弟音乐制作团队，合作方式为资源互换','','','','','0','lwz','2015-12-15 10:44:30','lwz','','0000-00-00 00:00:00','lwz','2016-01-07 11:51:46','lwz','2015-12-14 10:00:00','2015-12-16','0'),(44,'北京映客科技有限公司','limited','client',2,0,0,'potential','C','电影转制业务，与天工、灵动业务类似，总经理为外国人，公司参与过多部国际大片的电影转制','','','','','0','lwz','2015-12-15 10:47:02','lwz','','0000-00-00 00:00:00','lwz','2016-01-07 11:51:35','lwz','2015-11-27 10:00:00','2015-12-16','0'),(45,'北京星影联盟投资管理有限公司','limited','client',3,0,0,'potential','D','未知','','','','','0','lwz','2015-12-15 10:50:41','lwz','','0000-00-00 00:00:00','sky','2016-01-07 11:46:17','lwz','2015-11-20 10:00:00','0000-00-00','0'),(46,'上海光卓通信设备有限公司','limited','provider',2,0,0,'','','','http://','','','生产光纤','1','lrr','2016-01-08 14:03:51','lrr','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0');
/*!40000 ALTER TABLE `crm_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_delivery`
--

DROP TABLE IF EXISTS `crm_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_delivery` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `contract` mediumint(8) unsigned NOT NULL,
  `deliveredBy` char(30) NOT NULL,
  `deliveredDate` date NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_delivery`
--

LOCK TABLES `crm_delivery` WRITE;
/*!40000 ALTER TABLE `crm_delivery` DISABLE KEYS */;
INSERT INTO `crm_delivery` VALUES (1,1,'lwz','2015-12-08',''),(2,14,'lwz','2016-01-07',''),(3,13,'lwz','2015-11-19','完成交付，验收完成');
/*!40000 ALTER TABLE `crm_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_order`
--

DROP TABLE IF EXISTS `crm_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_order` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` char(255) NOT NULL,
  `customer` mediumint(8) unsigned NOT NULL,
  `plan` decimal(12,2) NOT NULL,
  `real` decimal(12,2) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `status` enum('normal','signed','closed') NOT NULL DEFAULT 'normal',
  `createdBy` char(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` char(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `assignedTo` char(30) NOT NULL,
  `assignedBy` char(30) NOT NULL,
  `assignedDate` datetime NOT NULL,
  `signedBy` char(30) NOT NULL,
  `signedDate` date NOT NULL,
  `closedBy` char(30) NOT NULL,
  `closedDate` datetime NOT NULL,
  `closedReason` enum('','payed','failed','postponed') NOT NULL DEFAULT '',
  `activatedBy` char(30) NOT NULL,
  `activatedDate` datetime NOT NULL,
  `contactedBy` char(30) NOT NULL,
  `contactedDate` datetime NOT NULL,
  `nextDate` date NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product` (`product`),
  KEY `customer` (`customer`),
  KEY `plan` (`plan`),
  KEY `real` (`real`),
  KEY `status` (`status`),
  KEY `createdBy` (`createdBy`),
  KEY `assignedTo` (`assignedTo`),
  KEY `closedBy` (`closedBy`),
  KEY `closedReason` (`closedReason`),
  KEY `contactedDate` (`contactedDate`),
  KEY `nextDate` (`nextDate`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_order`
--

LOCK TABLES `crm_order` WRITE;
/*!40000 ALTER TABLE `crm_order` DISABLE KEYS */;
INSERT INTO `crm_order` VALUES (1,',1,',1,198504.00,198504.00,'rmb','signed','lrr','2015-12-08 16:32:00','lwz','2016-01-07 11:48:23','closed','lrr','2015-12-08 16:32:00','lwz','2015-11-19','li','2015-12-10 14:53:16','payed','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(2,',6,',9,1350000.00,1350000.00,'rmb','signed','li','2015-12-08 18:19:21','li','2015-12-08 19:19:48','lrr','li','2015-12-08 18:19:21','lrr','2015-06-11','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(3,',1,',20,0.00,252000.00,'rmb','signed','lrr','2015-12-08 18:31:31','li','2015-12-08 19:19:33','lrr','lrr','2015-12-08 18:31:31','lrr','2014-07-01','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(4,',1,',21,330400.00,330400.00,'rmb','signed','lrr','2015-12-08 18:54:50','sky','2016-01-07 11:40:26','sky','sky','2015-12-08 18:54:50','sky','2015-11-15','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','sky','2015-12-29 15:48:11','2015-12-30','0'),(5,',6,',21,7049500.00,0.00,'rmb','normal','li','2015-12-08 19:02:11','li','2015-12-08 19:04:23','tomhao','li','2015-12-08 19:02:29','','0000-00-00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','li','2015-12-08 17:00:00','2015-12-11','0'),(6,',5,',24,738000.00,73800.00,'rmb','signed','li','2015-12-08 19:12:35','li','2015-12-08 19:18:55','li','li','2015-12-08 19:12:35','wang','2015-11-23','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(7,',6,',25,5560000.00,0.00,'rmb','normal','li','2015-12-08 19:15:14','','0000-00-00 00:00:00','li','li','2015-12-08 19:15:14','','0000-00-00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(8,',6,',36,80000.00,0.00,'rmb','normal','li','2015-12-08 22:50:27','li','2015-12-08 22:50:54','wang','li','2015-12-08 22:50:54','','0000-00-00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(9,',3,',37,35000.00,35000.00,'rmb','signed','sky','2015-12-09 19:58:41','sky','2016-01-07 11:36:44','sky','sky','2015-12-09 19:58:41','sky','2015-12-19','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','sky','2015-12-29 15:56:45','2015-12-30','0'),(10,',1,',21,600000.00,0.00,'rmb','normal','sky','2015-12-09 20:01:00','','2015-12-09 20:02:03','sky','sky','2015-12-09 20:01:00','','0000-00-00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','sky','2015-12-09 19:00:00','2015-12-10','0'),(11,',1,',1,229869.20,229869.20,'rmb','signed','lwz','2015-12-10 14:32:00','lwz','2016-01-07 11:49:40','lrr','lwz','2015-12-10 14:44:11','lwz','2015-12-10','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','lwz','2015-12-10 14:37:47','0000-00-00','0'),(12,',1,',21,560367.00,0.00,'rmb','normal','sky','2015-12-23 15:13:59','','2015-12-29 15:58:46','sky','sky','2015-12-23 15:13:59','','0000-00-00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','sky','2015-12-29 15:57:52','2015-12-30','0'),(13,',3,',22,115200.00,0.00,'rmb','normal','sky','2015-12-23 15:20:27','','2015-12-23 19:21:19','sky','sky','2015-12-23 15:20:27','','0000-00-00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','sky','2015-12-23 19:21:03','2015-12-24','0'),(14,',6,4,',22,66000.00,0.00,'rmb','normal','sky','2015-12-23 15:21:44','','2015-12-25 17:09:13','sky','sky','2015-12-23 15:21:44','','0000-00-00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','sky','2015-12-25 17:08:58','2015-12-26','0'),(15,',6,',22,32100.00,0.00,'rmb','normal','sky','2015-12-23 15:22:47','','2015-12-25 17:08:51','sky','sky','2015-12-23 15:22:47','','0000-00-00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','sky','2015-12-25 17:08:18','2015-12-26','0'),(16,',1,',1,381000.00,0.00,'rmb','normal','lwz','2016-01-07 14:05:59','','0000-00-00 00:00:00','lwz','lwz','2016-01-07 14:05:59','','0000-00-00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0'),(17,',4,',1,590000.00,0.00,'rmb','normal','lwz','2016-01-07 14:06:43','','0000-00-00 00:00:00','lwz','lwz','2016-01-07 14:06:43','','0000-00-00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00','0');
/*!40000 ALTER TABLE `crm_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_plan`
--

DROP TABLE IF EXISTS `crm_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_plan` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(12,2) NOT NULL,
  `contract` mediumint(8) unsigned NOT NULL,
  `returnedBy` char(30) NOT NULL,
  `returnedDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_plan`
--

LOCK TABLES `crm_plan` WRITE;
/*!40000 ALTER TABLE `crm_plan` DISABLE KEYS */;
INSERT INTO `crm_plan` VALUES (1,198504.00,1,'tomhao','2015-11-01'),(2,135000.00,4,'lrr','2015-12-08'),(3,400000.00,4,'lrr','2015-12-08'),(4,375000.00,4,'lrr','2015-11-24'),(5,75600.00,5,'lrr','2014-08-29'),(6,198504.00,8,'lrr','2015-10-22'),(7,6196.00,9,'tomhao','2015-10-22'),(8,229869.20,10,'li','2015-12-10'),(9,229869.20,10,'li','2015-12-10'),(10,35000.00,11,'sky','2015-12-30'),(11,229869.20,14,'lwz','2015-12-30'),(12,198504.00,13,'lwz','2015-11-20');
/*!40000 ALTER TABLE `crm_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_resume`
--

DROP TABLE IF EXISTS `crm_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_resume` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `contact` mediumint(8) unsigned NOT NULL,
  `customer` mediumint(8) unsigned NOT NULL,
  `maker` enum('0','1') NOT NULL DEFAULT '0',
  `dept` char(100) NOT NULL,
  `title` char(100) NOT NULL,
  `address` mediumint(8) unsigned NOT NULL,
  `join` char(10) NOT NULL,
  `left` char(10) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contact` (`contact`),
  KEY `customer` (`customer`),
  KEY `left` (`left`),
  KEY `maker` (`maker`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_resume`
--

LOCK TABLES `crm_resume` WRITE;
/*!40000 ALTER TABLE `crm_resume` DISABLE KEYS */;
INSERT INTO `crm_resume` VALUES (1,1,1,'1','','软件副总',0,'','','0'),(2,2,2,'0','','',0,'','','0'),(3,3,3,'0','','',0,'','','0'),(4,4,4,'0','','',0,'','','0'),(5,5,5,'0','','',0,'','','0'),(6,6,6,'0','','',0,'','','0'),(7,7,7,'0','','',0,'','','0'),(8,8,8,'0','','',0,'','','0'),(9,9,9,'0','','',0,'','','0'),(10,10,10,'0','','',0,'','','0'),(11,11,11,'0','','',0,'','','0'),(12,12,12,'0','','',0,'','','0'),(13,13,13,'0','','',0,'','','0'),(14,14,14,'0','','',0,'','','0'),(15,15,15,'0','','',0,'','','0'),(16,16,16,'0','','',0,'','','0'),(17,17,17,'0','','',0,'','','0'),(18,18,18,'0','','',0,'','','0'),(19,19,19,'0','','',0,'','','0'),(20,20,20,'0','','',0,'','','0'),(21,21,21,'0','','',0,'','','0'),(22,22,22,'0','','',0,'','','0'),(23,23,23,'0','','',0,'','','0'),(24,24,24,'1','','',0,'','','0'),(25,25,25,'1','工程部','副总',0,'','','0'),(26,26,36,'0','','',0,'','','0'),(27,27,37,'0','','',0,'','','0'),(28,28,38,'0','','',0,'','','0'),(29,29,39,'0','','',0,'','','0'),(30,30,40,'0','','',0,'','','0'),(31,31,41,'0','','',0,'','','0'),(32,32,42,'0','','',0,'','','0'),(33,33,43,'0','','',0,'','','0'),(34,34,44,'0','','',0,'','','0'),(35,35,45,'0','','',0,'','','0'),(36,36,46,'0','','',0,'','','0');
/*!40000 ALTER TABLE `crm_resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_salesgroup`
--

DROP TABLE IF EXISTS `crm_salesgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_salesgroup` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `users` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_salesgroup`
--

LOCK TABLES `crm_salesgroup` WRITE;
/*!40000 ALTER TABLE `crm_salesgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_salesgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_salespriv`
--

DROP TABLE IF EXISTS `crm_salespriv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_salespriv` (
  `account` char(30) NOT NULL,
  `salesgroup` mediumint(8) unsigned NOT NULL,
  `priv` enum('view','edit') NOT NULL,
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_salespriv`
--

LOCK TABLES `crm_salespriv` WRITE;
/*!40000 ALTER TABLE `crm_salespriv` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_salespriv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_service`
--

DROP TABLE IF EXISTS `crm_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_service` (
  `customer` smallint(8) NOT NULL,
  `product` mediumint(8) NOT NULL,
  `expire` date NOT NULL,
  UNIQUE KEY `customer` (`customer`,`product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_service`
--

LOCK TABLES `crm_service` WRITE;
/*!40000 ALTER TABLE `crm_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_attend`
--

DROP TABLE IF EXISTS `oa_attend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_attend` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `date` date NOT NULL,
  `signIn` time NOT NULL,
  `signOut` time NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL,
  `device` varchar(30) NOT NULL,
  `manualIn` time NOT NULL,
  `manualOut` time NOT NULL,
  `reason` varchar(30) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `reviewStatus` varchar(30) NOT NULL DEFAULT '',
  `reviewedBy` char(30) NOT NULL,
  `reviewedDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attend` (`date`,`account`),
  KEY `account` (`account`),
  KEY `date` (`date`),
  KEY `status` (`status`),
  KEY `reason` (`reason`),
  KEY `reviewStatus` (`reviewStatus`),
  KEY `reviewedBy` (`reviewedBy`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_attend`
--

LOCK TABLES `oa_attend` WRITE;
/*!40000 ALTER TABLE `oa_attend` DISABLE KEYS */;
INSERT INTO `oa_attend` VALUES (1,'admin','2015-12-08','00:20:47','22:53:13','normal','10.0.3.100','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(2,'tomhao','2015-12-08','09:15:00','18:15:00','normal','10.0.3.100','','09:15:00','18:15:00','normal','','pass','','0000-00-00 00:00:00'),(3,'zhang','2015-12-08','10:53:25','22:36:13','late','10.0.3.101','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(4,'lrr','2015-12-08','11:56:02','22:47:11','late','10.0.3.100','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(5,'guest','2015-12-08','00:00:00','14:49:05','early','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(6,'wu','2015-12-08','14:53:32','21:38:10','late','10.0.3.102','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(7,'li','2015-12-08','09:00:00','22:51:32','normal','10.0.3.100','','09:00:00','00:00:00','normal','','pass','','0000-00-00 00:00:00'),(8,'ws','2015-12-08','16:08:53','22:23:11','late','10.0.3.100','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(9,'lwz','2015-12-08','16:14:26','21:35:35','late','10.0.3.100','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(10,'li','2015-12-07','09:00:00','18:00:00','early','','','09:00:00','18:00:00','normal','','pass','','0000-00-00 00:00:00'),(11,'wang','2015-12-08','20:15:12','22:47:50','late','10.0.3.100','','09:15:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(12,'zhh','2015-12-08','21:26:00','21:53:01','late','10.0.3.102','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(13,'sky','2015-12-08','21:35:42','21:47:44','late','10.0.3.101','','09:30:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(14,'ws','2015-12-09','17:50:24','17:53:27','both','','','00:00:00','00:00:00','leave','','','','0000-00-00 00:00:00'),(15,'ws','2015-12-10','00:00:00','00:00:00','absent','','','00:00:00','00:00:00','leave','','','','0000-00-00 00:00:00'),(16,'ws','2015-12-11','00:00:00','00:00:00','absent','','','00:00:00','00:00:00','leave','','','','0000-00-00 00:00:00'),(17,'lrr','2015-12-09','10:55:33','10:56:13','leave','','','00:00:00','00:00:00','leave','1','','','0000-00-00 00:00:00'),(18,'guest','2015-12-09','00:00:00','21:36:07','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(19,'li','2015-12-09','09:00:00','22:15:04','normal','10.0.3.100','','09:00:00','00:00:00','normal','','pass','','0000-00-00 00:00:00'),(20,'sky','2015-12-09','10:51:20','20:10:12','late','10.0.3.100','','09:30:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(21,'ljy','2015-12-09','10:53:23','11:08:52','both','10.0.3.100','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(22,'admin','2015-12-09','10:59:29','15:48:55','both','10.0.3.100','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(23,'wangmengting','2015-12-09','11:10:16','11:20:34','both','10.0.3.100','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(24,'libin','2015-12-09','15:40:17','20:17:53','late','10.0.3.101','','09:00:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(25,'songyao','2015-12-09','15:53:41','18:48:38','late','10.0.3.101','','09:15:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(26,'songyao','2015-12-01','00:00:00','00:00:00','absent','','','09:15:00','18:15:00','normal','','wait','','0000-00-00 00:00:00'),(27,'chenchao','2015-12-09','16:32:30','16:41:32','both','10.0.3.101','','08:40:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(28,'lwz','2015-12-09','16:44:15','16:48:16','both','10.0.3.101','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(29,'wang','2015-12-09','16:44:46','17:44:46','both','10.0.3.102','','09:15:00','18:15:00','normal','','wait','','0000-00-00 00:00:00'),(30,'yjs','2015-12-09','17:42:41','17:48:42','both','10.0.3.101','','09:00:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(31,'wu','2015-12-09','18:20:59','21:37:10','late','10.0.3.102','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(32,'tomhao','2015-12-09','09:15:00','21:10:54','normal','10.0.3.100','','09:15:00','00:00:00','normal','','pass','','0000-00-00 00:00:00'),(33,'tomhao','2015-12-01','09:15:00','18:15:00','normal','','','09:15:00','18:15:00','normal','','pass','','0000-00-00 00:00:00'),(34,'tomhao','2015-12-02','09:15:00','18:15:00','normal','','','09:15:00','18:15:00','normal','','pass','','0000-00-00 00:00:00'),(35,'tomhao','2015-12-03','09:15:00','18:15:00','normal','','','09:15:00','18:15:00','normal','','pass','','0000-00-00 00:00:00'),(36,'tomhao','2015-12-04','09:15:00','18:15:00','normal','','','09:15:00','18:15:00','normal','','pass','','0000-00-00 00:00:00'),(37,'tomhao','2015-12-07','09:15:00','18:15:00','normal','','','09:15:00','18:15:00','normal','','pass','','0000-00-00 00:00:00'),(38,'admin','2015-12-10','00:00:00','00:29:29','early','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(39,'li','2015-12-10','00:29:43','20:54:26','normal','192.168.1.6','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(40,'wu','2015-12-10','09:21:03','18:46:44','normal','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(41,'tomhao','2015-12-10','09:15:00','23:06:01','normal','192.168.1.19','','09:15:00','00:00:00','normal','','pass','','0000-00-00 00:00:00'),(42,'wang','2015-12-10','10:32:19','23:03:07','late','192.168.1.19','','09:15:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(43,'sky','2015-12-10','10:34:55','22:59:27','late','192.168.1.19','','09:30:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(44,'guest','2015-12-10','00:00:00','23:38:28','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(45,'lwz','2015-12-10','10:51:01','18:14:40','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(46,'libin','2015-12-10','10:58:09','11:16:58','both','192.168.1.19','','09:00:00','20:00:00','normal','','wait','','0000-00-00 00:00:00'),(47,'yjs','2015-12-10','11:42:14','11:43:15','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(48,'lili','2015-12-10','14:12:14','14:13:01','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(49,'songyao','2015-12-10','14:18:56','17:13:56','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(50,'lrr','2015-12-10','14:42:47','14:47:48','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(51,'wang','2015-12-01','00:00:00','00:00:00','absent','','','09:15:00','18:15:00','normal','','wait','','0000-00-00 00:00:00'),(52,'wang','2015-12-02','00:00:00','00:00:00','absent','','','09:15:00','18:15:00','normal','','wait','','0000-00-00 00:00:00'),(53,'wang','2015-12-03','00:00:00','00:00:00','absent','','','09:15:00','18:15:00','normal','','wait','','0000-00-00 00:00:00'),(54,'wang','2015-12-04','00:00:00','00:00:00','absent','','','09:15:00','18:15:00','normal','','wait','','0000-00-00 00:00:00'),(55,'wang','2015-12-07','00:00:00','00:00:00','absent','','','09:15:00','18:15:00','normal','','wait','','0000-00-00 00:00:00'),(56,'guest','2015-12-11','00:00:00','23:59:29','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(57,'li','2015-12-11','09:15:00','13:11:27','early','192.168.1.19','','09:15:00','00:00:00','normal','','pass','','0000-00-00 00:00:00'),(58,'wang','2015-12-11','09:41:35','10:18:36','both','192.168.1.19','','09:15:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(59,'tomhao','2015-12-11','09:00:00','19:37:40','normal','192.168.1.19','','09:00:00','00:00:00','normal','','pass','','0000-00-00 00:00:00'),(60,'libin','2015-12-11','09:46:38','19:26:46','late','192.168.1.19','','09:00:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(61,'belle','2015-12-11','10:52:02','12:48:18','both','192.168.1.19','','09:30:00','00:00:00','normal','之前公司一直逆向考勤，没有打卡习惯，忘记打卡','wait','','0000-00-00 00:00:00'),(62,'sky','2015-12-11','11:02:58','11:03:58','both','192.168.1.19','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(63,'belle','2015-12-01','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(64,'belle','2015-12-02','00:00:00','00:00:00','absent','','','10:00:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(69,'belle','2015-12-08','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','之前公司一直逆向考勤，没有打卡习惯，忘记打卡','wait','','0000-00-00 00:00:00'),(65,'belle','2015-12-09','00:00:00','00:00:00','absent','','','00:00:00','00:00:00','leave','','','','0000-00-00 00:00:00'),(66,'belle','2015-12-03','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(67,'belle','2015-12-04','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(68,'belle','2015-12-07','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','入职第一天','wait','','0000-00-00 00:00:00'),(70,'belle','2015-12-10','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','之前公司一直逆向考勤，没有打卡习惯，忘记打卡','wait','','0000-00-00 00:00:00'),(71,'lwz','2015-12-11','13:02:40','20:05:40','late','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(72,'wu','2015-12-11','00:00:00','21:21:23','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(73,'guest','2015-12-12','00:00:00','23:44:13','overtime','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(74,'li','2015-12-12','11:33:22','16:57:22','overtime','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(75,'guest','2015-12-13','00:00:00','14:59:52','overtime','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(76,'guest','2015-12-14','00:00:00','22:45:46','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(77,'tomhao','2015-12-14','09:00:46','10:17:36','early','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(78,'ws','2015-12-14','11:13:46','11:25:15','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(79,'li','2015-12-14','12:11:42','12:19:44','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(80,'guest','2015-12-15','00:00:00','19:39:47','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(81,'tomhao','2015-12-15','09:31:26','12:01:27','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(82,'lwz','2015-12-15','09:42:48','15:35:47','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(83,'yjs','2015-12-15','09:43:49','09:43:49','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(84,'jason','2015-12-15','10:14:53','10:22:54','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(85,'jason','2015-12-16','09:15:00','09:16:00','early','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(86,'libin','2015-12-17','11:28:02','11:28:03','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(87,'tomhao','2015-12-17','11:59:20','20:12:21','late','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(88,'guest','2015-12-17','00:00:00','22:14:49','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(89,'guest','2015-12-18','00:00:00','21:54:50','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(90,'guest','2015-12-19','00:00:00','20:44:53','overtime','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(91,'guest','2015-12-20','00:00:00','14:49:31','overtime','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(92,'guest','2015-12-21','00:00:00','21:24:45','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(93,'guest','2015-12-22','00:00:00','18:12:37','early','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(94,'guest','2015-12-23','00:00:00','21:08:20','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(95,'sky','2015-12-23','15:12:47','20:06:14','late','192.168.1.19','','09:30:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(96,'sky','2015-12-01','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(97,'sky','2015-12-02','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(98,'sky','2015-12-03','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(99,'sky','2015-12-04','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(100,'sky','2015-12-07','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(101,'sky','2015-12-14','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(102,'sky','2015-12-15','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(103,'sky','2015-12-16','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(104,'sky','2015-12-17','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(105,'sky','2015-12-18','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(106,'sky','2015-12-21','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(107,'sky','2015-12-22','00:00:00','00:00:00','absent','','','09:30:00','18:30:00','normal','','wait','','0000-00-00 00:00:00'),(108,'guest','2015-12-24','00:00:00','18:19:44','early','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(109,'guest','2015-12-25','00:00:00','18:35:48','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(110,'sky','2015-12-25','11:05:08','17:32:57','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(111,'guest','2015-12-28','00:00:00','09:31:42','early','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(112,'jason','2015-12-28','09:40:41','09:42:41','both','192.168.1.19','','09:30:00','00:00:00','normal','','wait','','0000-00-00 00:00:00'),(113,'lwz','2015-12-28','09:40:46','17:24:47','both','192.168.1.19','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(114,'sky','2015-12-29','15:37:29','18:27:14','both','192.168.1.18','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(115,'tomhao','2016-01-04','11:08:29','16:39:46','both','192.168.1.18','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(116,'admin','2016-01-07','10:20:09','12:00:18','both','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(117,'li','2016-01-07','10:20:40','23:20:16','late','192.168.56.1','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(118,'guest','2016-01-07','00:00:00','23:59:29','normal','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(119,'tomhao','2016-01-07','00:00:00','12:09:49','early','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(120,'lili','2016-01-07','11:29:34','11:31:50','both','192.168.1.18','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(121,'sky','2016-01-07','11:36:03','20:38:54','late','192.168.1.54','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(122,'lwz','2016-01-07','11:47:11','16:30:23','both','192.168.1.54','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(123,'lrr','2016-01-07','11:52:45','18:40:42','late','192.168.1.18','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(124,'guest','2016-01-08','00:00:00','15:18:25','','','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(125,'tomhao','2016-01-08','09:16:57','00:00:00','','192.168.1.18','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(126,'li','2016-01-08','09:40:53','15:18:46','','192.168.1.18','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(127,'sky','2016-01-08','10:43:00','12:40:04','','192.168.1.18','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00'),(128,'lrr','2016-01-08','14:01:49','14:07:50','','192.168.1.18','','00:00:00','00:00:00','','','','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oa_attend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_doc`
--

DROP TABLE IF EXISTS `oa_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_doc` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `project` mediumint(8) unsigned NOT NULL,
  `lib` mediumint(8) unsigned NOT NULL,
  `module` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `views` smallint(5) unsigned NOT NULL,
  `createdBy` varchar(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_doc`
--

LOCK TABLES `oa_doc` WRITE;
/*!40000 ALTER TABLE `oa_doc` DISABLE KEYS */;
INSERT INTO `oa_doc` VALUES (1,0,0,1,820058,'公司logo','','logo','file','','',0,'li','2015-12-10 00:53:39','li','2015-12-10 00:54:06','1'),(2,0,0,1,820058,'公示Logo','公司logo','logo','file','','',0,'li','2015-12-10 09:39:53','','0000-00-00 00:00:00','1'),(3,0,0,1,820058,'公司logo','','logo','file','','',0,'li','2015-12-10 09:52:52','li','2015-12-10 09:53:29','0');
/*!40000 ALTER TABLE `oa_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_doclib`
--

DROP TABLE IF EXISTS `oa_doclib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_doclib` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_doclib`
--

LOCK TABLES `oa_doclib` WRITE;
/*!40000 ALTER TABLE `oa_doclib` DISABLE KEYS */;
INSERT INTO `oa_doclib` VALUES (1,'公司产品 介绍','0');
/*!40000 ALTER TABLE `oa_doclib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_holiday`
--

DROP TABLE IF EXISTS `oa_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_holiday` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `year` char(4) NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `year` (`year`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_holiday`
--

LOCK TABLES `oa_holiday` WRITE;
/*!40000 ALTER TABLE `oa_holiday` DISABLE KEYS */;
INSERT INTO `oa_holiday` VALUES (1,'元旦','','2016','2016-01-01','2016-01-03'),(2,'农历年放假','新年快乐','2016','2016-02-04','2016-02-16'),(3,'清明节','','2016','2016-04-03','2016-04-05');
/*!40000 ALTER TABLE `oa_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_leave`
--

DROP TABLE IF EXISTS `oa_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_leave` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `year` char(4) NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `start` time NOT NULL,
  `finish` time NOT NULL,
  `hours` float(4,1) unsigned NOT NULL DEFAULT '0.0',
  `type` varchar(30) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT '',
  `createdBy` char(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `reviewedBy` char(30) NOT NULL,
  `reviewedDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `year` (`year`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `createdBy` (`createdBy`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_leave`
--

LOCK TABLES `oa_leave` WRITE;
/*!40000 ALTER TABLE `oa_leave` DISABLE KEYS */;
INSERT INTO `oa_leave` VALUES (1,'2015','2015-12-09','2015-12-11','18:00:00','18:00:00',16.0,'affairs','参加未来网络会议','wait','ws','2015-12-08 21:55:30','','0000-00-00 00:00:00'),(2,'2015','2015-12-09','2015-12-09','09:00:00','10:50:00',2.0,'affairs','','pass','lrr','2015-12-08 21:58:17','li','2015-12-08 21:58:39'),(3,'2015','2015-12-09','2015-12-09','09:30:00','18:30:00',8.0,'sick','感冒鼻炎在家休息','wait','belle','2015-12-11 12:45:43','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oa_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_project`
--

DROP TABLE IF EXISTS `oa_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_project` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `desc` text NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `createdBy` char(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` char(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `status` enum('doing','finished','suspend') NOT NULL DEFAULT 'doing',
  `whitelist` varchar(255) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_project`
--

LOCK TABLES `oa_project` WRITE;
/*!40000 ALTER TABLE `oa_project` DISABLE KEYS */;
INSERT INTO `oa_project` VALUES (1,'关于制作固定资产编号的采购申请','<span> </span>\n<p>\n<span style=\"font-family:宋体;\"><span>汪总</span></span>\n</p>\n<span> </span>\n<p>\n<span style=\"font-family:宋体;\"><span>您好</span></span>\n</p>\n<span> </span>\n<p>\n<span><span>&nbsp;</span></span>\n</p>\n<span> </span>\n<p>\n<span style=\"font-family:宋体;\"><span>事件原因：固定资产盘查中需要制作固定资产编号，用二维码方法来制作编号。</span></span>\n</p>\n<span> </span>\n<p>\n<span style=\"font-family:宋体;\"><span>解决办法：需购买二维码扫描枪和二维码打印机，来完成固定资产编号工作。</span></span>\n</p>\n<span> </span>\n<p>\n<span><span style=\"font-family:宋体;\">需购买物品：询价后，二维码扫描枪</span><span><span>398</span></span><span style=\"font-family:宋体;\">元人民币整；</span></span>\n</p>\n<span> </span>\n<p style=\"text-indent:105pt;\">\n<span><span style=\"font-family:宋体;\">二维码打印机</span><span><span>348</span></span><span style=\"font-family:宋体;\">元人民币整；</span></span>\n</p>\n<span> </span>\n<p style=\"text-indent:105pt;\">\n<span><span style=\"font-family:宋体;\">不干胶打印纸</span><span><span>54</span></span><span style=\"font-family:宋体;\">元人民币整。</span></span>\n</p>\n<span> </span>\n<p>\n<span style=\"font-family:宋体;\"><span>特申请，望批准。</span></span>\n</p>\n<span> </span>\n<p>\n<span><span>&nbsp;</span></span>\n</p>\n<span> </span>\n<p>\n<span style=\"font-family:宋体;\"><span>有问题请联系我</span></span>\n</p>\n<span> </span>\n<p>\n<span style=\"font-family:宋体;\"><span>宋瑶</span></span><span> </span><span><span style=\"font-family:宋体;\">联系方式：</span><span><span>15110249329</span></span></span>\n</p>\n<span> </span>\n<p>\n<span style=\"font-family:宋体;\"><span>祝好</span></span>\n</p>\n<span> </span>\n<p>\n<span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;</span></span>\n</p>\n<span> </span>','2015-12-09','2015-12-09','songyao','2015-12-09 16:14:12','','0000-00-00 00:00:00','doing','1,2','1'),(2,'成立云模科技','<span style=\"color:#000000;font-family:宋体;\">量子云模</span><span style=\"color:#000000;font-family:Calibri, sans-serif;\">(</span><span style=\"color:#000000;font-family:宋体;\">北京</span><span style=\"color:#000000;font-family:Calibri, sans-serif;\">)</span><span style=\"color:#000000;font-family:宋体;\">科技有限公司</span>','2015-11-11','2015-12-16','li','2015-12-09 20:30:26','li','2015-12-09 20:31:12','doing','1','0'),(3,'微博控变更','完成微博控收购手续','2015-12-01','2015-12-17','li','2015-12-09 20:33:17','li','2015-12-09 20:33:45','doing','','0'),(4,'并购投资','公司成立分公司，并购，投资，项目','2015-12-01','2017-01-01','li','2015-12-09 20:40:10','li','2015-12-10 09:57:58','doing','1','0'),(5,'2015年账务统计','完成公司账务，发票，问题','2015-12-01','2015-12-15','li','2015-12-09 20:46:56','li','2015-12-10 09:57:41','doing','1','0'),(6,'科技出品－哪吒闹海','科技出品第一部作品，哪吒闹海。','2015-12-01','2015-12-15','li','2015-12-09 21:36:30','li','2015-12-10 09:57:35','doing','1','0'),(7,'融资计划','','2015-12-01','2016-12-01','li','2015-12-10 09:57:11','li','2015-12-10 09:57:25','doing','','0'),(8,'网络设备采购申请','<p>\n12/07的网络会议的决议后续跟进\n</p>\n<p>\n<br />\n</p>','2015-12-10','2015-12-11','wu','2015-12-10 12:11:24','wu','2015-12-10 12:12:46','doing','1','0');
/*!40000 ALTER TABLE `oa_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_refund`
--

DROP TABLE IF EXISTS `oa_refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_refund` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(150) NOT NULL,
  `parent` mediumint(8) NOT NULL DEFAULT '0',
  `category` char(30) NOT NULL,
  `date` date NOT NULL,
  `money` decimal(12,2) NOT NULL,
  `currency` varchar(30) NOT NULL,
  `desc` text NOT NULL,
  `related` char(200) NOT NULL DEFAULT '',
  `status` char(30) NOT NULL DEFAULT 'wait',
  `createdBy` char(30) NOT NULL DEFAULT '',
  `createdDate` datetime NOT NULL,
  `editedBy` char(30) NOT NULL DEFAULT '',
  `editedDate` datetime NOT NULL,
  `firstReviewer` char(30) NOT NULL DEFAULT '',
  `firstReviewDate` datetime NOT NULL,
  `secondReviewer` char(30) NOT NULL DEFAULT '',
  `secondReviewDate` datetime NOT NULL,
  `refundBy` char(30) NOT NULL DEFAULT '',
  `refundDate` datetime NOT NULL,
  `reason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  KEY `firstReviewer` (`firstReviewer`),
  KEY `secondReviewer` (`secondReviewer`),
  KEY `refundBy` (`refundBy`),
  KEY `category` (`category`),
  KEY `date` (`date`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_refund`
--

LOCK TABLES `oa_refund` WRITE;
/*!40000 ALTER TABLE `oa_refund` DISABLE KEYS */;
INSERT INTO `oa_refund` VALUES (1,'固定资产编号完善工作',0,'820031','2015-12-09',800.00,'rmb','制作固定资产编号，采用二维码手段，可以更加便捷的知道固定资产信息。','','pass','songyao','2015-12-09 17:35:53','songyao','2015-12-09 17:41:27','wang','2015-12-09 17:44:25','li','2015-12-09 20:11:28','','0000-00-00 00:00:00',''),(2,'',1,'820031','2015-12-09',398.00,'rmb','二维码扫描枪','','pass','songyao','2015-12-09 17:40:43','','0000-00-00 00:00:00','wang','2015-12-09 17:44:25','li','2015-12-09 20:11:28','','0000-00-00 00:00:00',''),(3,'',1,'820031','2015-12-09',348.00,'rmb','二维码打印机','','pass','songyao','2015-12-09 17:40:43','','0000-00-00 00:00:00','wang','2015-12-09 17:44:25','li','2015-12-09 20:11:28','','0000-00-00 00:00:00',''),(4,'',1,'820034','2015-12-09',54.00,'rmb','不干胶打印纸','','pass','songyao','2015-12-09 17:40:43','','0000-00-00 00:00:00','wang','2015-12-09 17:44:25','li','2015-12-09 20:11:28','','0000-00-00 00:00:00',''),(5,'12月报销',0,'820034','2015-12-09',482.00,'rmb','','','pass','sky','2015-12-09 20:08:03','','0000-00-00 00:00:00','tomhao','2015-12-09 20:13:17','li','2015-12-09 20:14:47','','0000-00-00 00:00:00',''),(6,'',5,'820034','2015-11-28',142.00,'rmb','交通费',',sky','pass','sky','2015-12-09 20:08:03','','0000-00-00 00:00:00','tomhao','2015-12-09 20:13:17','li','2015-12-09 20:14:47','','0000-00-00 00:00:00',''),(7,'',5,'820034','2015-11-28',340.00,'rmb','招待费',',sky','pass','sky','2015-12-09 20:08:03','','0000-00-00 00:00:00','tomhao','2015-12-09 20:13:17','li','2015-12-09 20:14:47','','0000-00-00 00:00:00',''),(8,'10月份日常费用报销',0,'820054','2015-12-10',126.00,'rmb','10月份日常费用报销（明细上传附件）','','pass','lwz','2015-12-10 13:09:58','','0000-00-00 00:00:00','tomhao','2015-12-10 13:16:41','li','2015-12-10 14:57:01','','0000-00-00 00:00:00',''),(9,'',8,'820037','2015-10-01',66.00,'rmb','10月份通讯费',',lwz','pass','lwz','2015-12-10 13:09:58','','0000-00-00 00:00:00','tomhao','2015-12-10 13:16:41','li','2015-12-10 14:57:01','','0000-00-00 00:00:00',''),(10,'',8,'820053','2015-10-01',60.00,'rmb','10月份外出交通费',',lwz','pass','lwz','2015-12-10 13:09:58','','0000-00-00 00:00:00','tomhao','2015-12-10 13:16:41','li','2015-12-10 14:57:01','','0000-00-00 00:00:00',''),(11,'11月份日常费用报销',0,'820054','2015-12-10',220.00,'rmb','11月份日常费用报销（明细上传附件）','','pass','lwz','2015-12-10 13:16:35','','0000-00-00 00:00:00','tomhao','2015-12-10 13:19:19','li','2015-12-10 14:57:21','','0000-00-00 00:00:00',''),(12,'',11,'820037','2015-11-01',50.00,'rmb','通讯费用',',lwz','pass','lwz','2015-12-10 13:16:35','','0000-00-00 00:00:00','tomhao','2015-12-10 13:19:19','li','2015-12-10 14:57:21','','0000-00-00 00:00:00',''),(13,'',11,'820053','2015-11-01',170.00,'rmb','外出交通费用',',lwz','pass','lwz','2015-12-10 13:16:35','','0000-00-00 00:00:00','tomhao','2015-12-10 13:19:19','li','2015-12-10 14:57:21','','0000-00-00 00:00:00',''),(14,'备用金明细支出',0,'820034','2015-12-10',5367.00,'rmb','相关报销单据已经粘贴完毕，汪总已经审阅完毕，李总批示后，我会及时交给财务。','','pass','songyao','2015-12-10 14:32:05','','0000-00-00 00:00:00','wang','2015-12-10 14:40:03','li','2015-12-10 14:57:40','','0000-00-00 00:00:00',''),(15,'',14,'820034','2015-12-10',2075.10,'rmb','零食，水果，员工晚餐，生日蛋糕等食品费用',',songyao','pass','songyao','2015-12-10 14:32:05','','0000-00-00 00:00:00','wang','2015-12-10 14:40:03','li','2015-12-10 14:57:40','','0000-00-00 00:00:00',''),(16,'',14,'820034','2015-12-10',2596.00,'rmb','出差火车票等交通费用。',',songyao','pass','songyao','2015-12-10 14:32:05','','0000-00-00 00:00:00','wang','2015-12-10 14:40:03','li','2015-12-10 14:57:40','','0000-00-00 00:00:00',''),(17,'',14,'820034','2015-12-10',487.80,'rmb','办公用品费用。',',songyao','pass','songyao','2015-12-10 14:32:05','','0000-00-00 00:00:00','wang','2015-12-10 14:40:03','li','2015-12-10 14:57:40','','0000-00-00 00:00:00',''),(18,'',14,'820034','2015-12-10',209.00,'rmb','快递费用。',',songyao','pass','songyao','2015-12-10 14:32:05','','0000-00-00 00:00:00','wang','2015-12-10 14:40:03','li','2015-12-10 14:57:40','','0000-00-00 00:00:00',''),(19,'移动通讯费',0,'820037','2015-12-10',1188.00,'rmb','2015年10月 11月两个月移动通信费',',tomhao','pass','tomhao','2015-12-10 16:12:16','','0000-00-00 00:00:00','tomhao','2015-12-10 16:51:57','li','2015-12-10 18:01:49','','0000-00-00 00:00:00',''),(20,'商务费用',0,'820038','2015-12-10',1711.00,'rmb','2015年11月1日至12月6日商务费用',',tomhao','pass','tomhao','2015-12-10 16:13:41','','0000-00-00 00:00:00','tomhao','2015-12-10 16:51:53','li','2015-12-10 18:01:28','','0000-00-00 00:00:00',''),(21,'交通费用（附件是日常及明细照片）',0,'820053','2015-12-10',1000.00,'rmb','2015年11月交通费用',',tomhao','pass','tomhao','2015-12-10 16:14:38','tomhao','2015-12-10 16:43:36','tomhao','2015-12-10 16:51:47','li','2015-12-10 18:01:21','','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `oa_refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_todo`
--

DROP TABLE IF EXISTS `oa_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_todo` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `date` date NOT NULL,
  `begin` smallint(4) unsigned zerofill NOT NULL,
  `end` smallint(4) unsigned zerofill NOT NULL,
  `type` char(10) NOT NULL,
  `idvalue` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pri` tinyint(3) unsigned NOT NULL,
  `name` char(150) NOT NULL,
  `desc` text NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL,
  `assignedTo` varchar(30) NOT NULL DEFAULT '',
  `assignedBy` varchar(30) NOT NULL DEFAULT '',
  `assignedDate` datetime NOT NULL,
  `finishedBy` varchar(30) NOT NULL DEFAULT '',
  `finishedDate` datetime NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_todo`
--

LOCK TABLES `oa_todo` WRITE;
/*!40000 ALTER TABLE `oa_todo` DISABLE KEYS */;
INSERT INTO `oa_todo` VALUES (1,'songyao','2015-12-09',2400,2400,'custom',0,3,'固定资产编号完善','使用二维码进行固定资产盘点清查工作','done',0,'songyao','songyao','2015-12-09 16:09:48','songyao','2015-12-09 16:09:54','','0000-00-00 00:00:00'),(2,'chenchao','2015-12-09',1640,1710,'custom',0,3,'测试','测试','closed',0,'chenchao','chenchao','2015-12-09 16:38:09','chenchao','2015-12-09 16:38:22','chenchao','2015-12-09 16:38:46');
/*!40000 ALTER TABLE `oa_todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_trip`
--

DROP TABLE IF EXISTS `oa_trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_trip` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `desc` text NOT NULL,
  `year` char(4) NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `start` time NOT NULL,
  `finish` time NOT NULL,
  `from` char(50) NOT NULL,
  `to` char(50) NOT NULL,
  `createdBy` char(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `year` (`year`),
  KEY `createdBy` (`createdBy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_trip`
--

LOCK TABLES `oa_trip` WRITE;
/*!40000 ALTER TABLE `oa_trip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_action`
--

DROP TABLE IF EXISTS `sys_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_action` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `customer` mediumint(8) unsigned DEFAULT NULL,
  `contact` mediumint(8) unsigned DEFAULT NULL,
  `objectType` varchar(30) NOT NULL DEFAULT '',
  `objectID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `actor` varchar(30) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `comment` text NOT NULL,
  `extra` varchar(255) NOT NULL,
  `read` enum('0','1') NOT NULL DEFAULT '0',
  `reader` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`),
  KEY `contact` (`contact`),
  KEY `date` (`date`)
) ENGINE=MyISAM AUTO_INCREMENT=592 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_action`
--

LOCK TABLES `sys_action` WRITE;
/*!40000 ALTER TABLE `sys_action` DISABLE KEYS */;
INSERT INTO `sys_action` VALUES (1,0,0,'doclib',1,'tomhao','created','2015-12-08 10:45:06','','','0',''),(2,0,0,'user',7,'wu','deleted','2015-12-08 15:01:11','','2','0',''),(3,0,0,'depositor',1,'li','created','2015-12-08 15:13:05','','','0',''),(4,0,0,'depositor',2,'li','created','2015-12-08 15:14:04','','','0',''),(5,0,0,'depositor',3,'li','created','2015-12-08 15:14:19','','','0',''),(6,1,0,'customer',1,'lwz','created','2015-12-08 16:17:26','','','0',''),(7,0,1,'contact',1,'lwz','created','2015-12-08 16:17:26','','','0',''),(8,1,0,'customer',1,'lwz','edited','2015-12-08 16:18:02','','','0',''),(9,1,0,'customer',1,'lrr','edited','2015-12-08 16:28:01','','','0',''),(10,0,1,'contact',1,'lrr','edited','2015-12-08 16:29:09','','','0',''),(11,0,0,'product',1,'admin','created','2015-12-08 16:31:24','','','0',''),(12,0,0,'order',1,'lrr','created','2015-12-08 16:32:00','','','0',''),(13,1,0,'customer',1,'lrr','createorder','2015-12-08 16:32:00','','<a href=\'/crm/index.php?m=order&f=view&orderID=1\' >1</a>\n','0',''),(14,0,0,'order',1,'lrr','signed','2015-12-08 16:33:22','','198504.00','0',''),(15,0,0,'contract',1,'lrr','created','2015-12-08 16:33:22','','','0',''),(16,1,0,'customer',1,'lrr','createcontract','2015-12-08 16:33:22','','<a href=\'/crm/index.php?m=contract&f=view&contractID=1\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n','0',''),(17,0,0,'contract',1,'tomhao','finishreturned','2015-12-08 16:34:07','','￥198504','0',''),(18,1,0,'customer',1,'tomhao','finishreceivecontract','2015-12-08 16:34:07','','<a href=\'/crm/index.php?m=contract&f=view&contractID=1\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n回款￥198504','0',''),(19,2,0,'customer',2,'li','created','2015-12-08 16:46:18','','','0',''),(20,0,2,'contact',2,'li','created','2015-12-08 16:46:18','','','0',''),(21,0,0,'trade',1,'li','created','2015-12-08 16:52:17','','','0',''),(22,3,0,'customer',3,'li','created','2015-12-08 16:56:40','','','0',''),(23,0,3,'contact',3,'li','created','2015-12-08 16:56:40','','','0',''),(24,4,0,'customer',4,'li','created','2015-12-08 16:57:33','','','0',''),(25,0,4,'contact',4,'li','created','2015-12-08 16:57:33','','','0',''),(26,5,0,'customer',5,'lrr','created','2015-12-08 16:58:24','','','0',''),(27,0,5,'contact',5,'lrr','created','2015-12-08 16:58:24','','','0',''),(28,5,0,'customer',5,'lrr','deleted','2015-12-08 16:58:38','','2','0',''),(29,6,0,'customer',6,'lrr','created','2015-12-08 16:59:30','','','0',''),(30,0,6,'contact',6,'lrr','created','2015-12-08 16:59:30','','','0',''),(31,7,0,'customer',7,'lrr','created','2015-12-08 17:01:16','','','0',''),(32,0,7,'contact',7,'lrr','created','2015-12-08 17:01:16','','','0',''),(33,8,0,'customer',8,'lrr','created','2015-12-08 17:01:52','','','0',''),(34,0,8,'contact',8,'lrr','created','2015-12-08 17:01:52','','','0',''),(35,9,0,'customer',9,'lrr','created','2015-12-08 17:02:18','','','0',''),(36,0,9,'contact',9,'lrr','created','2015-12-08 17:02:18','','','0',''),(37,10,0,'customer',10,'lrr','created','2015-12-08 17:02:46','','','0',''),(38,0,10,'contact',10,'lrr','created','2015-12-08 17:02:46','','','0',''),(39,0,0,'trade',2,'li','created','2015-12-08 17:04:16','','','0',''),(40,11,0,'customer',11,'lrr','created','2015-12-08 17:04:48','','','0',''),(41,0,11,'contact',11,'lrr','created','2015-12-08 17:04:48','','','0',''),(42,0,0,'trade',3,'li','created','2015-12-08 17:05:04','','','0',''),(43,12,0,'customer',12,'lrr','created','2015-12-08 17:05:12','','','0',''),(44,0,12,'contact',12,'lrr','created','2015-12-08 17:05:12','','','0',''),(45,13,0,'customer',13,'lrr','created','2015-12-08 17:05:28','','','0',''),(46,0,13,'contact',13,'lrr','created','2015-12-08 17:05:28','','','0',''),(47,0,0,'trade',4,'li','created','2015-12-08 17:06:04','','','0',''),(48,14,0,'customer',14,'lrr','created','2015-12-08 17:06:35','','','0',''),(49,0,14,'contact',14,'lrr','created','2015-12-08 17:06:35','','','0',''),(50,7,0,'customer',7,'lrr','assigned','2015-12-08 17:06:52','','tomhao','0',''),(51,6,0,'customer',6,'lrr','assigned','2015-12-08 17:07:11','','tomhao','0',''),(52,15,0,'customer',15,'lrr','created','2015-12-08 17:08:37','','','0',''),(53,0,15,'contact',15,'lrr','created','2015-12-08 17:08:37','','','0',''),(54,14,0,'customer',14,'lrr','deleted','2015-12-08 17:09:00','','2','0',''),(55,16,0,'customer',16,'lrr','created','2015-12-08 17:10:36','','','0',''),(56,0,16,'contact',16,'lrr','created','2015-12-08 17:10:36','','','0',''),(57,17,0,'customer',17,'lrr','created','2015-12-08 17:10:55','','','0',''),(58,0,17,'contact',17,'lrr','created','2015-12-08 17:10:55','','','0',''),(59,0,0,'trade',5,'zhang','created','2015-12-08 17:12:16','','','0',''),(60,0,0,'trade',5,'zhang','edited','2015-12-08 17:12:58','','','0',''),(61,18,0,'customer',18,'lrr','created','2015-12-08 17:13:31','','','0',''),(62,0,18,'contact',18,'lrr','created','2015-12-08 17:13:31','','','0',''),(63,0,0,'trade',5,'zhang','edited','2015-12-08 17:13:42','','','0',''),(64,0,0,'trade',4,'zhang','edited','2015-12-08 17:14:03','','','0',''),(65,0,0,'trade',5,'zhang','edited','2015-12-08 17:14:40','','','0',''),(66,0,0,'trade',5,'zhang','edited','2015-12-08 17:14:57','','','0',''),(67,0,0,'trade',6,'zhang','created','2015-12-08 17:19:18','','','0',''),(68,0,0,'trade',7,'zhang','created','2015-12-08 17:20:36','','','0',''),(69,0,0,'trade',8,'zhang','created','2015-12-08 17:21:25','','','0',''),(70,0,0,'trade',8,'zhang','edited','2015-12-08 17:21:52','','','0',''),(71,0,0,'trade',9,'zhang','created','2015-12-08 17:22:34','','','0',''),(72,0,0,'trade',10,'zhang','created','2015-12-08 17:23:17','','','0',''),(73,0,0,'trade',11,'zhang','created','2015-12-08 17:24:01','','','0',''),(74,0,0,'trade',12,'zhang','created','2015-12-08 17:24:42','','','0',''),(75,0,0,'contract',2,'lrr','created','2015-12-08 18:03:26','','','0',''),(76,8,0,'customer',8,'lrr','createcontract','2015-12-08 18:03:26','','<a href=\'/crm/index.php?m=contract&f=view&contractID=2\' >购销合同</a>\n','0',''),(77,0,0,'contract',2,'lrr','deleted','2015-12-08 18:04:01','','2','0',''),(78,19,0,'customer',19,'lrr','created','2015-12-08 18:05:05','','','0',''),(79,0,19,'contact',19,'lrr','created','2015-12-08 18:05:05','','','0',''),(80,0,0,'contract',3,'lrr','created','2015-12-08 18:07:54','','','0',''),(81,8,0,'customer',8,'lrr','createcontract','2015-12-08 18:07:54','','<a href=\'/crm/index.php?m=contract&f=view&contractID=3\' >购销合同</a>\n','0',''),(82,0,0,'trade',13,'lrr','created','2015-12-08 18:08:44','','','0',''),(83,0,0,'trade',13,'li','edited','2015-12-08 18:15:55','','','0',''),(84,0,0,'order',2,'li','created','2015-12-08 18:19:21','','','0',''),(85,9,0,'customer',9,'li','createorder','2015-12-08 18:19:21','','<a href=\'/crm/index.php?m=order&f=view&orderID=2\' >2</a>\n','0',''),(86,0,0,'contract',3,'li','deleted','2015-12-08 18:19:36','','2','0',''),(87,0,0,'order',2,'li','signed','2015-12-08 18:20:44','','1350000.00','0',''),(88,0,0,'contract',4,'li','created','2015-12-08 18:20:44','','','0',''),(89,9,0,'customer',9,'li','createcontract','2015-12-08 18:20:44','','<a href=\'/crm/index.php?m=contract&f=view&contractID=4\' >华示（上海）实业有限公司购买服务器 (2015-12-08)</a>\n','0',''),(90,0,0,'contract',4,'lrr','returned','2015-12-08 18:21:59','','￥135000','0',''),(91,9,0,'customer',9,'lrr','receivecontract','2015-12-08 18:21:59','','<a href=\'/crm/index.php?m=contract&f=view&contractID=4\' >华示（上海）实业有限公司购买服务器 (2015-12-08)</a>\n回款￥135000','0',''),(92,0,0,'contract',4,'lrr','returned','2015-12-08 18:22:45','发票已经开出','￥400000','0',''),(93,9,0,'customer',9,'lrr','receivecontract','2015-12-08 18:22:45','发票已经开出','<a href=\'/crm/index.php?m=contract&f=view&contractID=4\' >华示（上海）实业有限公司购买服务器 (2015-12-08)</a>\n回款￥400000','0',''),(94,0,0,'contract',4,'lrr','returned','2015-12-08 18:23:58','发票开出','￥375000','0',''),(95,9,0,'customer',9,'lrr','receivecontract','2015-12-08 18:23:58','发票开出','<a href=\'/crm/index.php?m=contract&f=view&contractID=4\' >华示（上海）实业有限公司购买服务器 (2015-12-08)</a>\n回款￥375000','0',''),(96,0,0,'contract',1,'lwz','finishdelivered','2015-12-08 18:24:38','','','0',''),(97,1,0,'customer',1,'lwz','finishdelivercontract','2015-12-08 18:24:38','','<a href=\'/crm/index.php?m=contract&f=view&contractID=1\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n','0',''),(98,0,0,'contract',1,'li','finished','2015-12-08 18:25:09','完成供货，发票，回款','','0',''),(99,1,0,'customer',1,'li','finishcontract','2015-12-08 18:25:09','完成供货，发票，回款','<a href=\'/crm/index.php?m=contract&f=view&contractID=1\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n','0',''),(100,0,0,'trade',14,'li','created','2015-12-08 18:26:13','','','0',''),(101,0,0,'contract',3,'lrr','deleted','2015-12-08 18:28:10','','2','0',''),(102,15,0,'customer',15,'li','deleted','2015-12-08 18:29:23','','2','0',''),(103,12,0,'customer',12,'li','deleted','2015-12-08 18:29:34','','2','0',''),(104,11,0,'customer',11,'li','deleted','2015-12-08 18:29:42','','2','0',''),(105,10,0,'customer',10,'li','deleted','2015-12-08 18:29:47','','2','0',''),(106,8,0,'customer',8,'li','deleted','2015-12-08 18:29:53','','2','0',''),(107,7,0,'customer',7,'li','deleted','2015-12-08 18:30:00','','2','0',''),(108,6,0,'customer',6,'li','deleted','2015-12-08 18:30:04','','2','0',''),(109,9,0,'customer',9,'li','assigned','2015-12-08 18:31:14','','lrr','1',''),(114,0,0,'order',2,'li','edited','2015-12-08 18:36:34','','','0',''),(110,20,0,'customer',20,'lrr','created','2015-12-08 18:31:31','','','0',''),(111,0,20,'contact',20,'lrr','created','2015-12-08 18:31:31','','','0',''),(112,0,0,'order',3,'lrr','created','2015-12-08 18:31:31','','','0',''),(113,0,0,'customer',0,'lrr','createorder','2015-12-08 18:31:31','','<a href=\'/crm/index.php?m=order&f=view&orderID=3\' >3</a>\n','0',''),(115,9,0,'customer',9,'li','editorder','2015-12-08 18:36:34','','<a href=\'/crm/index.php?m=order&f=view&orderID=2\' >2</a>\n','0',''),(116,21,0,'customer',21,'li','created','2015-12-08 18:37:43','','','0',''),(117,0,21,'contact',21,'li','created','2015-12-08 18:37:43','','','0',''),(118,21,0,'customer',21,'li','assigned','2015-12-08 18:38:05','','sky','0',''),(119,22,0,'customer',22,'li','created','2015-12-08 18:38:51','','','0',''),(120,0,22,'contact',22,'li','created','2015-12-08 18:38:51','','','0',''),(121,22,0,'customer',22,'li','assigned','2015-12-08 18:39:03','','sky','0',''),(122,0,0,'product',2,'li','deleted','2015-12-08 18:46:16','','2','0',''),(123,0,0,'order',3,'lrr','signed','2015-12-08 18:46:47','','252000','0',''),(124,0,0,'contract',5,'lrr','created','2015-12-08 18:46:47','','','0',''),(125,20,0,'customer',20,'lrr','createcontract','2015-12-08 18:46:47','','<a href=\'/crm/index.php?m=contract&f=view&contractID=5\' >深圳谷威天地传媒科技有限公司购买服务器 (2015-12-08)</a>\n','0',''),(126,0,0,'attend',10,'li','commited','2015-12-08 18:47:17','','','0',''),(127,0,0,'contract',5,'lrr','returned','2015-12-08 18:47:21','','￥75600','0',''),(128,20,0,'customer',20,'lrr','receivecontract','2015-12-08 18:47:21','','<a href=\'/crm/index.php?m=contract&f=view&contractID=5\' >深圳谷威天地传媒科技有限公司购买服务器 (2015-12-08)</a>\n回款￥75600','0',''),(129,0,0,'attend',7,'li','commited','2015-12-08 18:47:30','','','0',''),(130,0,0,'trade',15,'lrr','created','2015-12-08 18:49:36','','','0',''),(131,0,0,'attend',7,'li','reviewed','2015-12-08 18:50:37','','pass','0',''),(132,0,0,'attend',10,'li','reviewed','2015-12-08 18:50:40','','pass','0',''),(133,0,0,'trade',16,'lrr','created','2015-12-08 18:51:22','','','0',''),(134,16,0,'customer',16,'lrr','edited','2015-12-08 18:52:13','','','0',''),(135,0,0,'order',4,'lrr','created','2015-12-08 18:54:50','','','0',''),(136,21,0,'customer',21,'lrr','createorder','2015-12-08 18:54:50','','<a href=\'/crm/index.php?m=order&f=view&orderID=4\' >4</a>\n','0',''),(137,0,0,'product',3,'li','created','2015-12-08 18:57:48','','','0',''),(138,0,0,'product',1,'li','edited','2015-12-08 18:58:00','','','0',''),(139,0,0,'order',4,'lrr','signed','2015-12-08 18:58:31','','330400.00','0',''),(140,0,0,'contract',6,'lrr','created','2015-12-08 18:58:31','','','0',''),(141,21,0,'customer',21,'lrr','createcontract','2015-12-08 18:58:31','','<a href=\'/crm/index.php?m=contract&f=view&contractID=6\' >北京倍飞视国际视觉艺术交流有限公司购买服务器 (2015-12-08)</a>\n','0',''),(142,0,0,'product',4,'li','created','2015-12-08 18:58:36','','','0',''),(143,0,0,'product',5,'li','created','2015-12-08 18:58:52','','','0',''),(144,0,0,'product',6,'li','created','2015-12-08 19:01:05','','','0',''),(145,0,0,'order',5,'li','created','2015-12-08 19:02:11','','','0',''),(146,21,0,'customer',21,'li','createorder','2015-12-08 19:02:11','','<a href=\'/crm/index.php?m=order&f=view&orderID=5\' >5</a>\n','0',''),(147,0,0,'order',5,'li','assigned','2015-12-08 19:02:29','','tomhao','0',''),(148,21,0,'customer',21,'li','assignorder','2015-12-08 19:02:34','指派给郝晓峰<br />','<a href=\'/crm/index.php?m=order&f=view&orderID=5\' >5</a>\n','0',''),(149,21,21,'order',5,'li','record','2015-12-08 19:04:23','确定报价，和帐期方案','2015-12-08 17:00','0',''),(150,23,0,'customer',23,'lrr','created','2015-12-08 19:05:01','','','0',''),(151,0,23,'contact',23,'lrr','created','2015-12-08 19:05:01','','','0',''),(152,0,0,'trade',17,'lrr','created','2015-12-08 19:10:41','','','0',''),(153,24,0,'customer',24,'li','created','2015-12-08 19:11:27','','','0',''),(154,0,24,'contact',24,'li','created','2015-12-08 19:11:27','','','0',''),(155,0,0,'order',6,'li','created','2015-12-08 19:12:35','','','0',''),(156,24,0,'customer',24,'li','createorder','2015-12-08 19:12:35','','<a href=\'/crm/index.php?m=order&f=view&orderID=6\' >6</a>\n','0',''),(157,0,0,'trade',18,'lrr','created','2015-12-08 19:12:40','','','0',''),(158,0,0,'order',6,'li','edited','2015-12-08 19:13:01','','','0',''),(159,24,0,'customer',24,'li','editorder','2015-12-08 19:13:01','','<a href=\'/crm/index.php?m=order&f=view&orderID=6\' >6</a>\n','0',''),(160,0,0,'trade',19,'lrr','created','2015-12-08 19:14:34','','','0',''),(161,25,0,'customer',25,'li','created','2015-12-08 19:14:53','','','0',''),(162,0,25,'contact',25,'li','created','2015-12-08 19:14:53','','','0',''),(163,0,0,'order',7,'li','created','2015-12-08 19:15:14','','','0',''),(164,25,0,'customer',25,'li','createorder','2015-12-08 19:15:14','','<a href=\'/crm/index.php?m=order&f=view&orderID=7\' >7</a>\n','0',''),(165,0,0,'trade',20,'lrr','created','2015-12-08 19:15:40','','','0',''),(166,26,0,'customer',26,'lrr','created','2015-12-08 19:17:18','','','0',''),(167,0,0,'trade',21,'lrr','created','2015-12-08 19:17:18','','','0',''),(168,0,0,'order',6,'li','signed','2015-12-08 19:17:49','','73800.00','0',''),(169,0,0,'contract',7,'li','created','2015-12-08 19:17:49','','','0',''),(170,24,0,'customer',24,'li','createcontract','2015-12-08 19:17:49','','<a href=\'/crm/index.php?m=contract&f=view&contractID=7\' >零融信息科技（上海）有限公司购买云服务 (2015-12-08)</a>\n','0',''),(171,0,0,'contract',7,'li','edited','2015-12-08 19:18:29','','','0',''),(172,24,0,'customer',24,'li','editcontract','2015-12-08 19:18:29','','<a href=\'/crm/index.php?m=contract&f=view&contractID=7\' >零融信息科技（上海）有限公司购买云服务 (2015-12-08)</a>\n','0',''),(173,0,0,'order',6,'li','editcontract','2015-12-08 19:18:29','','<a href=\'/crm/index.php?m=contract&f=view&contractID=7\' >零融信息科技（上海）有限公司购买云服务 (2015-12-08)</a>\n','0',''),(174,0,0,'order',6,'li','edited','2015-12-08 19:18:55','','','0',''),(175,24,0,'customer',24,'li','editorder','2015-12-08 19:18:55','','<a href=\'/crm/index.php?m=order&f=view&orderID=6\' >6</a>\n','0',''),(176,0,0,'order',3,'li','edited','2015-12-08 19:19:33','','','0',''),(177,20,0,'customer',20,'li','editorder','2015-12-08 19:19:33','','<a href=\'/crm/index.php?m=order&f=view&orderID=3\' >3</a>\n','0',''),(178,0,0,'order',2,'li','edited','2015-12-08 19:19:48','','','0',''),(179,9,0,'customer',9,'li','editorder','2015-12-08 19:19:48','','<a href=\'/crm/index.php?m=order&f=view&orderID=2\' >2</a>\n','0',''),(180,0,0,'trade',22,'lrr','created','2015-12-08 19:21:23','','','0',''),(181,0,0,'trade',23,'li','created','2015-12-08 19:23:08','','','0',''),(182,27,0,'customer',27,'lrr','created','2015-12-08 19:30:34','','','0',''),(183,0,0,'trade',24,'lrr','created','2015-12-08 19:30:34','','','0',''),(184,28,0,'customer',28,'lrr','created','2015-12-08 19:31:56','','','0',''),(185,0,0,'trade',25,'lrr','created','2015-12-08 19:31:56','','','0',''),(186,0,0,'contract',8,'lrr','created','2015-12-08 19:39:47','','','0',''),(187,1,0,'customer',1,'lrr','createcontract','2015-12-08 19:39:47','','<a href=\'/crm/index.php?m=contract&f=view&contractID=8\' >地平线购销合同</a>\n','0',''),(188,0,0,'contract',9,'lrr','created','2015-12-08 19:41:11','','','0',''),(189,1,0,'customer',1,'lrr','createcontract','2015-12-08 19:41:11','','<a href=\'/crm/index.php?m=contract&f=view&contractID=9\' >地平线购销合同补充</a>\n','0',''),(190,0,0,'contract',9,'lrr','edited','2015-12-08 19:44:33','','','0',''),(191,1,0,'customer',1,'lrr','editcontract','2015-12-08 19:44:33','','<a href=\'/crm/index.php?m=contract&f=view&contractID=9\' >地平线购销合同补充</a>\n','0',''),(192,0,0,'contract',8,'lrr','finishreturned','2015-12-08 19:45:02','','￥198504','0',''),(193,1,0,'customer',1,'lrr','finishreceivecontract','2015-12-08 19:45:02','','<a href=\'/crm/index.php?m=contract&f=view&contractID=8\' >地平线购销合同</a>\n回款￥198504','0',''),(194,0,0,'contract',9,'tomhao','returned','2015-12-08 19:45:42','发票 3200151130 20515663','￥6196','0',''),(195,1,0,'customer',1,'tomhao','receivecontract','2015-12-08 19:45:42','发票 3200151130 20515663','<a href=\'/crm/index.php?m=contract&f=view&contractID=9\' >地平线购销合同补充</a>\n回款￥6196','0',''),(196,0,0,'contract',8,'lrr','edited','2015-12-08 19:46:06','','','0',''),(197,1,0,'customer',1,'lrr','editcontract','2015-12-08 19:46:06','','<a href=\'/crm/index.php?m=contract&f=view&contractID=8\' >地平线购销合同</a>\n','0',''),(198,0,0,'contract',9,'lrr','edited','2015-12-08 19:47:02','','','0',''),(199,1,0,'customer',1,'lrr','editcontract','2015-12-08 19:47:02','','<a href=\'/crm/index.php?m=contract&f=view&contractID=9\' >地平线购销合同补充</a>\n','0',''),(200,29,0,'customer',29,'lrr','created','2015-12-08 19:49:24','','','0',''),(201,0,0,'trade',26,'lrr','created','2015-12-08 19:49:24','','','0',''),(202,0,0,'user',34,'lrr','deleted','2015-12-08 19:51:13','','2','0',''),(203,0,0,'user',36,'lrr','deleted','2015-12-08 19:52:45','','2','0',''),(204,0,0,'trade',27,'lrr','created','2015-12-08 19:55:23','','','0',''),(205,30,0,'customer',30,'lrr','created','2015-12-08 19:56:17','','','0',''),(206,0,0,'trade',26,'lrr','edited','2015-12-08 19:56:17','','','0',''),(207,31,0,'customer',31,'lrr','created','2015-12-08 19:58:29','','','0',''),(208,0,0,'trade',28,'lrr','created','2015-12-08 19:58:29','','','0',''),(209,32,0,'customer',32,'lrr','created','2015-12-08 20:00:00','','','0',''),(210,0,0,'trade',29,'lrr','created','2015-12-08 20:00:00','','','0',''),(211,33,0,'customer',33,'lrr','created','2015-12-08 20:01:40','','','0',''),(212,0,0,'trade',30,'lrr','created','2015-12-08 20:01:40','','','0',''),(213,34,0,'customer',34,'lrr','created','2015-12-08 20:02:41','','','0',''),(214,0,0,'trade',31,'lrr','created','2015-12-08 20:02:41','','','0',''),(215,0,0,'trade',32,'lrr','created','2015-12-08 20:04:08','','','0',''),(216,35,0,'customer',35,'lrr','created','2015-12-08 20:04:42','','','0',''),(217,0,0,'trade',33,'lrr','created','2015-12-08 20:04:42','','','0',''),(218,0,0,'trade',34,'lrr','created','2015-12-08 20:05:20','','','0',''),(219,0,0,'trade',35,'lrr','created','2015-12-08 20:06:04','','','0',''),(220,0,0,'trade',36,'lrr','created','2015-12-08 20:07:04','','','0',''),(221,0,0,'contract',10,'lrr','created','2015-12-08 20:08:59','','','0',''),(222,1,0,'customer',1,'lrr','createcontract','2015-12-08 20:08:59','','<a href=\'/crm/index.php?m=contract&f=view&contractID=10\' >地平线购销合同</a>\n','0',''),(223,0,0,'trade',37,'lrr','created','2015-12-08 20:10:28','','','0',''),(224,0,0,'trade',38,'lrr','created','2015-12-08 20:12:10','','','0',''),(225,24,0,'customer',24,'li','edited','2015-12-08 21:33:14','','','0',''),(226,22,0,'customer',22,'li','edited','2015-12-08 21:33:48','','','0',''),(227,21,0,'customer',21,'li','edited','2015-12-08 21:34:06','','','0',''),(228,1,0,'customer',1,'li','edited','2015-12-08 21:34:32','','','0',''),(229,0,0,'leave',1,'ws','created','2015-12-08 21:55:30','','','0',''),(230,0,0,'leave',2,'lrr','created','2015-12-08 21:58:17','','','1',''),(231,0,0,'leave',2,'li','reviewed','2015-12-08 21:58:39','','pass','1',''),(232,0,0,'user',7,'admin','hidden','2015-12-08 22:42:59','','','0',''),(233,36,0,'customer',36,'li','created','2015-12-08 22:49:51','','','0',''),(234,0,26,'contact',26,'li','created','2015-12-08 22:49:51','','','0',''),(235,0,0,'order',8,'li','created','2015-12-08 22:50:27','','','0',''),(236,36,0,'customer',36,'li','createorder','2015-12-08 22:50:27','','<a href=\'/crm/index.php?m=order&f=view&orderID=8\' >8</a>\n','0',''),(237,0,0,'order',8,'li','assigned','2015-12-08 22:50:54','','wang','0',''),(238,36,0,'customer',36,'li','assignorder','2015-12-08 22:50:59','指派给汪洋泽<br />','<a href=\'/crm/index.php?m=order&f=view&orderID=8\' >8</a>\n','0',''),(239,0,26,'contact',26,'li','edited','2015-12-09 10:44:44','','','0',''),(240,0,24,'contact',24,'li','edited','2015-12-09 10:45:33','','','0',''),(241,0,25,'contact',25,'li','edited','2015-12-09 10:47:56','','','0',''),(242,0,0,'attend',19,'li','commited','2015-12-09 11:21:03','','','0',''),(243,0,0,'announce',1,'li','created','2015-12-09 15:53:17','','','0',',zhang,belle,lishan,qjy,ljy,jsl,cw,lcg,zhh,zhangpengliang,zhanggang,wangmengting,shaojiayang,huangliang,yinxiaole,yaoxueqin,xy,wj,yjw,wx,aaron,ray,'),(244,0,0,'attend',26,'songyao','commited','2015-12-09 16:07:47','','','0',''),(245,0,0,'attend',25,'songyao','commited','2015-12-09 16:08:05','','','0',''),(246,0,0,'todo',1,'songyao','created','2015-12-09 16:09:48','','','0',''),(247,0,0,'todo',1,'songyao','assigned','2015-12-09 16:09:48','','songyao','0',''),(248,0,0,'todo',1,'songyao','finished','2015-12-09 16:09:54','','done','0',''),(249,0,0,'attend',27,'chenchao','commited','2015-12-09 16:33:24','','','0',''),(250,0,0,'todo',2,'chenchao','created','2015-12-09 16:38:09','','','0',''),(251,0,0,'todo',2,'chenchao','assigned','2015-12-09 16:38:09','','chenchao','0',''),(252,0,0,'todo',2,'chenchao','finished','2015-12-09 16:38:22','','done','0',''),(253,0,0,'todo',2,'chenchao','closed','2015-12-09 16:38:46','','closed','0',''),(254,0,0,'refund',1,'songyao','created','2015-12-09 17:35:53','','','1',''),(255,0,0,'refund',1,'songyao','edited','2015-12-09 17:40:43','','','0',''),(256,0,0,'project',1,'songyao','deleted','2015-12-09 17:43:10','','1','0',''),(257,0,0,'refund',1,'wang','reviewed','2015-12-09 17:44:25','','','0',''),(258,0,0,'attend',30,'yjs','commited','2015-12-09 17:44:45','','','0',''),(259,37,0,'customer',37,'sky','created','2015-12-09 19:58:02','','','0',''),(260,0,27,'contact',27,'sky','created','2015-12-09 19:58:02','','','0',''),(261,37,0,'customer',37,'sky','edited','2015-12-09 19:58:03','','','0',''),(262,0,0,'order',9,'sky','created','2015-12-09 19:58:41','','','0',''),(263,37,0,'customer',37,'sky','createorder','2015-12-09 19:58:41','','<a href=\'/crm/index.php?m=order&f=view&orderID=9\' >9</a>\n','0',''),(264,37,27,'order',9,'sky','record','2015-12-09 19:59:46','确定签约时间，预计后天完成合约签署','2015-12-09 18:00','0',''),(265,0,0,'order',10,'sky','created','2015-12-09 20:01:00','','','0',''),(266,21,0,'customer',21,'sky','createorder','2015-12-09 20:01:00','','<a href=\'/crm/index.php?m=order&f=view&orderID=10\' >10</a>\n','0',''),(267,21,21,'order',10,'sky','record','2015-12-09 20:02:03','客户提出需求，需要采购25台服务器，明天给出报价','2015-12-09 19:00','0',''),(268,0,0,'refund',5,'sky','created','2015-12-09 20:08:03','','','0',''),(269,0,0,'refund',1,'li','reviewed','2015-12-09 20:11:28','','','0',''),(270,0,0,'refund',5,'tomhao','reviewed','2015-12-09 20:13:17','','','1',''),(272,0,0,'attend',24,'libin','commited','2015-12-09 20:18:13','','','0',''),(271,0,0,'refund',5,'li','reviewed','2015-12-09 20:14:47','','','0',''),(273,0,0,'project',2,'li','edited','2015-12-09 20:30:53','','','0',''),(274,0,0,'project',2,'li','edited','2015-12-09 20:31:12','','','0',''),(275,0,0,'project',2,'li','edited','2015-12-09 20:31:36','','','0',''),(276,0,0,'project',2,'li','edited','2015-12-09 20:31:46','','','0',''),(277,0,0,'project',3,'li','edited','2015-12-09 20:33:45','','','0',''),(278,0,0,'task',1,'li','created','2015-12-09 20:41:16','','','0',''),(279,0,0,'task',2,'li','created','2015-12-09 20:41:16','','','0',''),(280,0,0,'task',2,'li','finished','2015-12-09 20:42:45','','','0',''),(281,0,0,'task',1,'li','finished','2015-12-09 20:43:00','','','0',''),(282,0,0,'attend',33,'tomhao','commited','2015-12-09 20:58:06','','','0',''),(283,0,0,'attend',34,'tomhao','commited','2015-12-09 20:58:14','','','0',''),(284,0,0,'attend',35,'tomhao','commited','2015-12-09 20:58:19','','','0',''),(285,0,0,'attend',36,'tomhao','commited','2015-12-09 20:58:24','','','0',''),(286,0,0,'attend',37,'tomhao','commited','2015-12-09 20:58:30','','','0',''),(287,0,0,'attend',2,'tomhao','commited','2015-12-09 20:58:35','','','0',''),(288,0,0,'attend',32,'tomhao','commited','2015-12-09 20:58:40','','','0',''),(289,0,0,'attend',2,'tomhao','reviewed','2015-12-09 21:09:43','','pass','0',''),(290,0,0,'attend',32,'tomhao','reviewed','2015-12-09 21:09:46','','pass','0',''),(291,0,0,'attend',33,'tomhao','reviewed','2015-12-09 21:09:49','','pass','0',''),(292,0,0,'attend',34,'tomhao','reviewed','2015-12-09 21:09:51','','pass','0',''),(293,0,0,'attend',35,'tomhao','reviewed','2015-12-09 21:09:54','','pass','0',''),(294,0,0,'attend',36,'tomhao','reviewed','2015-12-09 21:09:56','','pass','0',''),(295,0,0,'attend',37,'tomhao','reviewed','2015-12-09 21:09:59','','pass','0',''),(296,0,0,'task',3,'li','created','2015-12-09 21:37:51','','','0',''),(297,0,0,'task',4,'li','created','2015-12-09 21:37:51','','','0',''),(298,0,0,'task',4,'li','commented','2015-12-09 21:38:35','上传了附件 1.电影联合投资合作合同-2015-12-09','','0',''),(299,0,0,'task',3,'li','commented','2015-12-09 21:38:54','上传了附件 1.电影联合投资合作合同-2015-12-09','','0',''),(300,0,0,'task',4,'li','commented','2015-12-09 21:40:00','上传了附件 3.渲染农场服务协议-2015-12-09修改成100万吧','','0',''),(301,0,0,'project',4,'li','edited','2015-12-09 21:46:52','','','0',''),(302,0,0,'doc',1,'li','created','2015-12-10 00:53:39','','','0',''),(303,0,0,'doc',1,'li','deleted','2015-12-10 00:58:20','','1','0',''),(304,0,0,'task',5,'li','created','2015-12-10 09:22:22','','','0',''),(305,0,0,'doc',2,'li','created','2015-12-10 09:39:53','','','0',''),(306,0,0,'doc',2,'li','deleted','2015-12-10 09:40:01','','1','0',''),(307,0,0,'task',6,'li','created','2015-12-10 09:43:57','','','0',''),(308,0,0,'task',6,'li','commented','2015-12-10 09:50:41','上传了附件 量子云介绍-中央新影','','0',''),(309,0,0,'doc',3,'li','created','2015-12-10 09:52:52','','','0',''),(310,0,0,'doc',3,'li','commented','2015-12-10 09:53:29','上传了附件 lzy\n','','0',''),(311,0,0,'attend',19,'li','commited','2015-12-10 09:55:16','','','0',''),(312,0,0,'project',7,'li','edited','2015-12-10 09:57:25','','','0',''),(313,0,0,'project',6,'li','edited','2015-12-10 09:57:35','','','0',''),(314,0,0,'project',5,'li','edited','2015-12-10 09:57:41','','','0',''),(315,0,0,'project',4,'li','edited','2015-12-10 09:57:47','','','0',''),(316,0,0,'project',4,'li','edited','2015-12-10 09:57:58','','','0',''),(317,0,0,'attend',42,'wang','commited','2015-12-10 10:32:50','','','0',''),(318,38,0,'customer',38,'sky','created','2015-12-10 10:43:37','','','0',''),(319,0,28,'contact',28,'sky','created','2015-12-10 10:43:37','','','0',''),(320,38,0,'customer',38,'sky','edited','2015-12-10 10:43:38','','','0',''),(321,39,0,'customer',39,'sky','created','2015-12-10 10:51:46','','','0',''),(322,0,29,'contact',29,'sky','created','2015-12-10 10:51:46','','','0',''),(323,39,0,'customer',39,'sky','edited','2015-12-10 10:51:47','','','0',''),(324,0,0,'attend',46,'libin','commited','2015-12-10 10:59:03','','','0',''),(325,0,0,'project',8,'wu','edited','2015-12-10 12:12:46','','','0',''),(326,0,0,'refund',8,'lwz','created','2015-12-10 13:09:58','','','1',''),(327,0,0,'refund',11,'lwz','created','2015-12-10 13:16:35','','','1',''),(328,0,0,'refund',8,'tomhao','reviewed','2015-12-10 13:16:41','','','0',''),(329,0,0,'refund',11,'tomhao','reviewed','2015-12-10 13:19:19','','','0',''),(330,0,0,'attend',41,'tomhao','commited','2015-12-10 13:21:40','','','0',''),(331,0,0,'task',7,'wu','created','2015-12-10 13:34:48','','','0',''),(332,0,0,'task',8,'wu','created','2015-12-10 13:39:23','','','0',''),(333,0,0,'task',8,'wu','edited','2015-12-10 13:39:45','','','0',''),(334,37,0,'customer',37,'li','edited','2015-12-10 14:14:22','','','0',''),(335,39,0,'customer',39,'sky','edited','2015-12-10 14:15:42','','','0',''),(336,38,0,'customer',38,'sky','edited','2015-12-10 14:15:55','','','0',''),(337,0,0,'order',11,'lwz','created','2015-12-10 14:32:00','','','0',''),(338,1,0,'customer',1,'lwz','createorder','2015-12-10 14:32:00','','<a href=\'/crm/index.php?m=order&f=view&orderID=11\' >11</a>\n','0',''),(339,0,0,'refund',14,'songyao','created','2015-12-10 14:32:05','','','1',''),(345,0,0,'refund',14,'wang','reviewed','2015-12-10 14:40:03','','','1',''),(340,0,0,'order',11,'lwz','edited','2015-12-10 14:33:25','','','0',''),(341,1,0,'customer',1,'lwz','editorder','2015-12-10 14:33:25','','<a href=\'/crm/index.php?m=order&f=view&orderID=11\' >11</a>\n','0',''),(342,1,1,'order',11,'lwz','record','2015-12-10 14:38:24','成交，合同完成','2015-12-10 14:37:47','0',''),(343,0,0,'order',11,'lwz','edited','2015-12-10 14:39:08','','','0',''),(344,1,0,'customer',1,'lwz','editorder','2015-12-10 14:39:08','','<a href=\'/crm/index.php?m=order&f=view&orderID=11\' >11</a>\n','0',''),(346,0,0,'order',11,'lwz','assigned','2015-12-10 14:44:11','合同完成，成交金额229869.20，请转成合同','lrr','1',''),(347,1,0,'customer',1,'lwz','assignorder','2015-12-10 14:44:11','指派给李瑞锐<br />合同完成，成交金额229869.20，请转成合同','<a href=\'/crm/index.php?m=order&f=view&orderID=11\' >11</a>\n','0',''),(348,0,0,'contract',10,'li','finishreturned','2015-12-10 14:50:49','','￥229869.20','0',''),(349,1,0,'customer',1,'li','finishreceivecontract','2015-12-10 14:50:49','','<a href=\'/crm/index.php?m=contract&f=view&contractID=10\' >地平线购销合同</a>\n回款￥229869.20','0',''),(350,0,0,'contract',10,'li','finishreturned','2015-12-10 14:50:50','','￥229869.20','0',''),(351,1,0,'customer',1,'li','finishreceivecontract','2015-12-10 14:50:50','','<a href=\'/crm/index.php?m=contract&f=view&contractID=10\' >地平线购销合同</a>\n回款￥229869.20','0',''),(352,0,0,'order',1,'li','closed','2015-12-10 14:53:16','','已付款','0',''),(353,1,0,'customer',1,'li','closeorder','2015-12-10 14:53:16','关闭原因已付款<br />','<a href=\'/crm/index.php?m=order&f=view&orderID=1\' >1</a>\n','0',''),(354,0,0,'refund',8,'li','reviewed','2015-12-10 14:57:01','','','1',''),(408,0,0,'attend',59,'tomhao','commited','2015-12-14 09:01:12','','','0',''),(355,0,0,'refund',11,'li','reviewed','2015-12-10 14:57:21','','','1',''),(356,0,0,'refund',14,'li','reviewed','2015-12-10 14:57:40','','','1',''),(357,0,0,'refund',19,'tomhao','created','2015-12-10 16:12:16','','','0',''),(358,0,0,'refund',20,'tomhao','created','2015-12-10 16:13:41','','','0',''),(359,0,0,'refund',21,'tomhao','created','2015-12-10 16:14:38','','','0',''),(360,0,0,'refund',21,'tomhao','edited','2015-12-10 16:29:25','上传了附件 日常费用报销清单,费用清单','','0',''),(361,0,0,'refund',21,'tomhao','edited','2015-12-10 16:43:36','','','0',''),(362,0,0,'refund',21,'tomhao','reviewed','2015-12-10 16:51:47','','','1',''),(379,0,0,'task',11,'li','created','2015-12-10 17:53:07','','','0',''),(363,0,0,'refund',20,'tomhao','reviewed','2015-12-10 16:51:53','','','1',''),(364,0,0,'refund',19,'tomhao','reviewed','2015-12-10 16:51:57','','','1',''),(365,0,0,'attend',41,'tomhao','commited','2015-12-10 16:52:31','','','0',''),(366,0,0,'attend',41,'tomhao','reviewed','2015-12-10 16:52:45','','pass','0',''),(367,0,0,'task',6,'li','commented','2015-12-10 17:46:29','上传了附件 量子云介绍-中央新影修改给中央新影的介绍','','0',''),(368,0,0,'task',6,'li','finished','2015-12-10 17:46:37','','','0',''),(369,0,0,'task',9,'li','created','2015-12-10 17:47:14','','','0',''),(370,0,0,'task',10,'li','created','2015-12-10 17:47:15','','','0',''),(371,0,0,'attend',51,'wang','commited','2015-12-10 17:47:20','','','0',''),(372,0,0,'attend',52,'wang','commited','2015-12-10 17:47:25','','','0',''),(373,0,0,'attend',53,'wang','commited','2015-12-10 17:47:29','','','0',''),(374,0,0,'task',9,'li','deleted','2015-12-10 17:47:31','','1','0',''),(375,0,0,'attend',54,'wang','commited','2015-12-10 17:47:33','','','0',''),(376,0,0,'attend',55,'wang','commited','2015-12-10 17:47:41','','','0',''),(377,0,0,'attend',11,'wang','commited','2015-12-10 17:47:45','','','0',''),(378,0,0,'attend',29,'wang','commited','2015-12-10 17:47:50','','','0',''),(380,0,0,'task',12,'li','created','2015-12-10 17:53:07','','','0',''),(381,0,0,'task',11,'li','deleted','2015-12-10 17:53:25','','1','0',''),(382,0,0,'refund',21,'li','reviewed','2015-12-10 18:01:21','','','1',''),(383,0,0,'refund',20,'li','reviewed','2015-12-10 18:01:28','','','1',''),(384,0,0,'refund',19,'li','reviewed','2015-12-10 18:01:49','','','1',''),(385,0,0,'attend',57,'li','commited','2015-12-11 09:41:21','','','0',''),(386,0,0,'attend',19,'li','commited','2015-12-11 09:41:28','','','0',''),(387,0,0,'attend',58,'wang','commited','2015-12-11 09:41:49','','','0',''),(388,0,0,'attend',19,'li','reviewed','2015-12-11 09:43:26','','pass','0',''),(389,0,0,'attend',57,'li','reviewed','2015-12-11 09:43:28','','pass','0',''),(390,0,0,'attend',60,'libin','commited','2015-12-11 09:46:59','','','0',''),(391,0,0,'attend',46,'libin','commited','2015-12-11 09:47:39','','','0',''),(392,37,27,'order',9,'sky','record','2015-12-11 11:03:56','开发票','2015-12-11 11:03:22','0',''),(393,0,0,'order',9,'sky','edited','2015-12-11 11:04:33','','','0',''),(394,37,0,'customer',37,'sky','editorder','2015-12-11 11:04:33','','<a href=\'/crm/index.php?m=order&f=view&orderID=9\' >9</a>\n','0',''),(395,0,0,'attend',63,'belle','commited','2015-12-11 12:43:31','','','1',''),(396,0,0,'attend',64,'belle','commited','2015-12-11 12:44:42','','','1',''),(397,0,0,'leave',3,'belle','created','2015-12-11 12:45:43','','','1',''),(398,0,0,'attend',66,'belle','commited','2015-12-11 12:46:24','','','1',''),(399,0,0,'attend',67,'belle','commited','2015-12-11 12:46:32','','','1',''),(400,0,0,'attend',63,'belle','commited','2015-12-11 12:47:08','','','1',''),(401,0,0,'attend',64,'belle','commited','2015-12-11 12:47:16','','','1',''),(402,0,0,'attend',66,'belle','commited','2015-12-11 12:47:24','','','1',''),(403,0,0,'attend',67,'belle','commited','2015-12-11 12:47:32','','','1',''),(404,0,0,'attend',68,'belle','commited','2015-12-11 12:47:42','','','1',''),(405,0,0,'attend',69,'belle','commited','2015-12-11 12:47:49','','','1',''),(406,0,0,'attend',70,'belle','commited','2015-12-11 12:48:03','','','1',''),(407,0,0,'attend',61,'belle','commited','2015-12-11 12:48:11','','','1',''),(409,40,0,'customer',40,'lwz','created','2015-12-15 10:35:57','','','0',''),(410,0,30,'contact',30,'lwz','created','2015-12-15 10:35:57','','','0',''),(411,40,0,'customer',40,'lwz','edited','2015-12-15 10:35:59','','','0',''),(412,41,0,'customer',41,'lwz','created','2015-12-15 10:38:52','','','0',''),(413,0,31,'contact',31,'lwz','created','2015-12-15 10:38:52','','','0',''),(414,41,0,'customer',41,'lwz','edited','2015-12-15 10:38:53','','','0',''),(415,42,0,'customer',42,'lwz','created','2015-12-15 10:41:05','','','0',''),(416,0,32,'contact',32,'lwz','created','2015-12-15 10:41:05','','','0',''),(417,42,0,'customer',42,'lwz','edited','2015-12-15 10:41:06','','','0',''),(418,43,0,'customer',43,'lwz','created','2015-12-15 10:44:30','','','0',''),(419,0,33,'contact',33,'lwz','created','2015-12-15 10:44:30','','','0',''),(420,43,0,'customer',43,'lwz','edited','2015-12-15 10:44:31','','','0',''),(421,44,0,'customer',44,'lwz','created','2015-12-15 10:47:02','','','0',''),(422,0,34,'contact',34,'lwz','created','2015-12-15 10:47:02','','','0',''),(423,44,0,'customer',44,'lwz','edited','2015-12-15 10:47:03','','','0',''),(424,45,0,'customer',45,'lwz','created','2015-12-15 10:50:41','','','0',''),(425,0,35,'contact',35,'lwz','created','2015-12-15 10:50:41','','','0',''),(426,45,0,'customer',45,'lwz','edited','2015-12-15 10:50:42','','','0',''),(427,45,0,'customer',45,'lwz','edited','2015-12-15 10:51:59','','','0',''),(428,44,0,'customer',44,'lwz','edited','2015-12-15 10:52:16','','','0',''),(429,43,0,'customer',43,'lwz','edited','2015-12-15 10:52:24','','','0',''),(430,42,0,'customer',42,'lwz','edited','2015-12-15 10:52:34','','','0',''),(431,41,0,'customer',41,'lwz','edited','2015-12-15 10:52:43','','','0',''),(432,40,0,'customer',40,'lwz','edited','2015-12-15 10:52:51','','','0',''),(433,45,35,'customer',45,'lwz','record','2015-12-15 10:55:55','资源合作','2015-11-20 10:00','0',''),(434,44,34,'customer',44,'lwz','record','2015-12-15 10:56:40','预约拜访','2015-11-27 10:00','0',''),(435,43,33,'customer',43,'lwz','record','2015-12-15 10:57:18','现有动画片需求跟进','2015-12-14 10:00','0',''),(436,42,32,'customer',42,'lwz','record','2015-12-15 10:58:14','意向合作业务沟通','2015-12-09 10:00','0',''),(437,41,31,'customer',41,'lwz','record','2015-12-15 10:59:07','邀请来公司参观','2015-12-13 13:00','0',''),(438,40,30,'customer',40,'lwz','record','2015-12-15 10:59:41','预约再次拜访','2015-12-13 13:00','0',''),(439,0,0,'attend',59,'tomhao','commited','2015-12-15 15:22:37','','','0',''),(440,0,0,'attend',59,'tomhao','commited','2015-12-15 15:22:39','','','0',''),(441,0,0,'attend',59,'tomhao','reviewed','2015-12-15 15:23:04','','pass','0',''),(442,0,0,'order',12,'sky','created','2015-12-23 15:14:00','','','0',''),(443,21,0,'customer',21,'sky','createorder','2015-12-23 15:14:00','','<a href=\'/crm/index.php?m=order&f=view&orderID=12\' >12</a>\n','0',''),(444,21,21,'order',12,'sky','record','2015-12-23 15:14:41','财务联系','2015-12-23 15:14:16','0',''),(445,21,21,'order',12,'sky','record','2015-12-23 15:15:35','财务合同邮件','2015-12-23 15:15:05','0',''),(446,0,0,'attend',96,'sky','commited','2015-12-23 15:16:38','','','0',''),(447,0,0,'attend',97,'sky','commited','2015-12-23 15:16:48','','','0',''),(448,0,0,'attend',98,'sky','commited','2015-12-23 15:16:58','','','0',''),(449,0,0,'attend',98,'sky','commited','2015-12-23 15:17:04','','','0',''),(450,0,0,'attend',99,'sky','commited','2015-12-23 15:17:13','','','0',''),(451,0,0,'attend',100,'sky','commited','2015-12-23 15:17:22','','','0',''),(452,0,0,'attend',13,'sky','commited','2015-12-23 15:17:33','','','0',''),(453,0,0,'attend',20,'sky','commited','2015-12-23 15:17:43','','','0',''),(454,0,0,'attend',43,'sky','commited','2015-12-23 15:17:53','','','0',''),(455,0,0,'attend',62,'sky','commited','2015-12-23 15:18:10','','','0',''),(456,0,0,'attend',101,'sky','commited','2015-12-23 15:18:27','','','0',''),(457,0,0,'attend',102,'sky','commited','2015-12-23 15:18:37','','','0',''),(458,0,0,'attend',103,'sky','commited','2015-12-23 15:18:45','','','0',''),(459,0,0,'attend',104,'sky','commited','2015-12-23 15:18:55','','','0',''),(460,0,0,'attend',105,'sky','commited','2015-12-23 15:19:08','','','0',''),(461,0,0,'attend',106,'sky','commited','2015-12-23 15:19:20','','','0',''),(462,0,0,'attend',107,'sky','commited','2015-12-23 15:19:30','','','0',''),(463,0,0,'attend',95,'sky','commited','2015-12-23 15:19:40','','','0',''),(464,0,0,'order',13,'sky','created','2015-12-23 15:20:27','','','0',''),(465,22,0,'customer',22,'sky','createorder','2015-12-23 15:20:27','','<a href=\'/crm/index.php?m=order&f=view&orderID=13\' >13</a>\n','0',''),(466,22,22,'order',13,'sky','record','2015-12-23 15:20:56','年度渲染','2015-12-23 15:20:35','0',''),(467,0,0,'order',14,'sky','created','2015-12-23 15:21:44','','','0',''),(468,22,0,'customer',22,'sky','createorder','2015-12-23 15:21:44','','<a href=\'/crm/index.php?m=order&f=view&orderID=14\' >14</a>\n','0',''),(469,22,22,'order',14,'sky','record','2015-12-23 15:22:10','存储租用','2015-12-23 15:21:57','0',''),(470,0,0,'order',15,'sky','created','2015-12-23 15:22:47','','','0',''),(471,22,0,'customer',22,'sky','createorder','2015-12-23 15:22:47','','<a href=\'/crm/index.php?m=order&f=view&orderID=15\' >15</a>\n','0',''),(472,22,22,'order',15,'sky','record','2015-12-23 15:23:08','网络共享','2015-12-23 15:22:53','0',''),(473,21,21,'order',4,'sky','record','2015-12-23 16:33:34','服务器维修，等待回复，2-3天就可完成维修','2015-12-23 16:32:06','0',''),(474,37,27,'order',9,'sky','record','2015-12-23 19:20:35','收集logo资料','2015-12-23 19:20:20','0',''),(475,22,22,'order',13,'sky','record','2015-12-23 19:21:19','等待进一步确定，先报价','2015-12-23 19:21:03','0',''),(476,22,22,'order',15,'sky','record','2015-12-25 17:08:51','重新定价','2015-12-25 17:08:18','0',''),(477,22,22,'order',14,'sky','record','2015-12-25 17:09:13','重新报价','2015-12-25 17:08:58','0',''),(478,21,21,'order',12,'sky','record','2015-12-25 17:10:03','合同拟定','2015-12-25 17:09:23','0',''),(479,37,27,'order',9,'sky','record','2015-12-25 17:10:28','1月1日前付款','2015-12-25 17:10:10','0',''),(480,0,0,'attend',112,'jason','commited','2015-12-28 09:41:01','','','0',''),(481,21,21,'order',4,'sky','record','2015-12-29 15:48:55','ipmi修复完毕，内存条修复中','2015-12-29 15:48:11','0',''),(482,37,27,'order',9,'sky','record','2015-12-29 15:57:43','制作已完成3个方案','2015-12-29 15:56:45','0',''),(483,21,21,'order',12,'sky','record','2015-12-29 15:58:46','等待合同批复','2015-12-29 15:57:52','0',''),(484,0,0,'user',1,'admin','logout','2016-01-07 10:19:45','','','0',''),(485,0,0,'user',1,'admin','login','2016-01-07 10:20:09','','','0',''),(486,0,0,'user',1,'admin','logout','2016-01-07 10:20:36','','','0',''),(487,0,0,'user',8,'li','login','2016-01-07 10:20:40','','','0',''),(488,13,0,'customer',13,'li','edited','2016-01-07 10:23:38','','','0',''),(489,25,0,'customer',25,'li','edited','2016-01-07 10:23:38','','','0',''),(490,36,0,'customer',36,'li','edited','2016-01-07 10:23:38','','','0',''),(491,38,0,'customer',38,'li','edited','2016-01-07 10:23:38','','','0',''),(492,39,0,'customer',39,'li','edited','2016-01-07 10:23:38','','','0',''),(493,40,0,'customer',40,'li','edited','2016-01-07 10:23:38','','','0',''),(494,41,0,'customer',41,'li','edited','2016-01-07 10:23:38','','','0',''),(495,42,0,'customer',42,'li','edited','2016-01-07 10:23:38','','','0',''),(496,43,0,'customer',43,'li','edited','2016-01-07 10:23:38','','','0',''),(497,44,0,'customer',44,'li','edited','2016-01-07 10:23:38','','','0',''),(498,45,0,'customer',45,'li','edited','2016-01-07 10:23:38','','','0',''),(499,0,0,'task',7,'li','edited','2016-01-07 10:25:36','','','0',''),(500,0,0,'user',8,'li','logout','2016-01-07 10:28:55','','','0',''),(501,0,0,'user',8,'li','login','2016-01-07 10:29:01','','','0',''),(502,0,0,'user',8,'li','login','2016-01-07 11:01:08','','','0',''),(503,0,0,'user',8,'li','login','2016-01-07 11:04:30','','','0',''),(504,0,0,'user',8,'li','login','2016-01-07 11:08:13','','','0',''),(505,0,0,'user',8,'li','logout','2016-01-07 11:28:30','','','0',''),(506,0,0,'user',1,'admin','login','2016-01-07 11:28:40','','','0',''),(507,0,0,'user',1,'admin','logout','2016-01-07 11:29:29','','','0',''),(508,0,0,'user',12,'lili','login','2016-01-07 11:29:34','','','0',''),(509,0,0,'user',12,'lili','logout','2016-01-07 11:31:50','','','0',''),(510,0,0,'user',1,'admin','login','2016-01-07 11:31:58','','','0',''),(511,0,0,'user',30,'sky','login','2016-01-07 11:36:03','','','0',''),(512,0,0,'order',9,'sky','signed','2016-01-07 11:38:07','','35000.00','0',''),(513,0,0,'contract',11,'sky','created','2016-01-07 11:38:07','','','0',''),(514,37,0,'customer',37,'sky','createcontract','2016-01-07 11:38:07','','<a href=\'/crm/index.php?m=contract&f=view&contractID=11\' >中央财经大学购买渲染服务 (2015-12-09)</a>\n','0',''),(515,0,0,'contract',11,'sky','finishreturned','2016-01-07 11:38:54','','￥35000','0',''),(516,37,0,'customer',37,'sky','finishreceivecontract','2016-01-07 11:38:54','','<a href=\'/crm/index.php?m=contract&f=view&contractID=11\' >中央财经大学购买渲染服务 (2015-12-09)</a>\n回款￥35000','0',''),(517,0,0,'user',8,'li','logout','2016-01-07 11:41:01','','','0',''),(518,0,0,'user',8,'li','login','2016-01-07 11:41:06','','','0',''),(519,0,0,'user',30,'sky','login','2016-01-07 11:41:28','','','0',''),(520,0,0,'user',1,'admin','logout','2016-01-07 11:43:06','','','0',''),(521,0,0,'user',1,'admin','login','2016-01-07 11:43:14','','','0',''),(522,45,0,'customer',45,'sky','edited','2016-01-07 11:46:17','','','0',''),(523,0,0,'user',30,'sky','logout','2016-01-07 11:46:54','','','0',''),(524,0,0,'contract',12,'admin','created','2016-01-07 11:47:09','','','0',''),(525,4,0,'customer',4,'admin','createcontract','2016-01-07 11:47:09','','<a href=\'/cash/index.php?m=purchase&f=view&purchaseID=12\' >采购服务器</a>\n','0',''),(526,0,0,'user',5,'lwz','login','2016-01-07 11:47:11','','','0',''),(527,4,4,'purchase',12,'admin','record','2016-01-07 11:47:38','准备发货','2016-01-07 11:47:23','0',''),(528,39,29,'customer',39,'sky','record','2016-01-07 11:48:11','联系了解需求','2016-01-07 11:47:53','0',''),(529,0,0,'order',1,'lwz','edited','2016-01-07 11:48:23','','','0',''),(530,1,0,'customer',1,'lwz','editorder','2016-01-07 11:48:23','','<a href=\'/crm/index.php?m=order&f=view&orderID=1\' >1</a>\n','0',''),(531,0,0,'order',1,'lwz','signed','2016-01-07 11:49:01','','198504.00','0',''),(532,0,0,'contract',13,'lwz','created','2016-01-07 11:49:01','','','0',''),(533,1,0,'customer',1,'lwz','createcontract','2016-01-07 11:49:01','','<a href=\'/crm/index.php?m=contract&f=view&contractID=13\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n','0',''),(534,0,0,'order',11,'lwz','edited','2016-01-07 11:49:40','','','0',''),(535,1,0,'customer',1,'lwz','editorder','2016-01-07 11:49:40','','<a href=\'/crm/index.php?m=order&f=view&orderID=11\' >11</a>\n','0',''),(536,0,0,'order',11,'lwz','signed','2016-01-07 11:50:12','','229869.20','0',''),(537,0,0,'contract',14,'lwz','created','2016-01-07 11:50:12','','','0',''),(538,1,0,'customer',1,'lwz','createcontract','2016-01-07 11:50:12','','<a href=\'/crm/index.php?m=contract&f=view&contractID=14\' >北京地平线机器人技术研发公司购买服务器 (2015-12-10)</a>\n','0',''),(539,0,0,'contract',14,'lwz','finishreturned','2016-01-07 11:50:37','','￥229869.20','0',''),(540,1,0,'customer',1,'lwz','finishreceivecontract','2016-01-07 11:50:37','','<a href=\'/crm/index.php?m=contract&f=view&contractID=14\' >北京地平线机器人技术研发公司购买服务器 (2015-12-10)</a>\n回款￥229869.20','0',''),(541,44,0,'customer',44,'lwz','edited','2016-01-07 11:51:35','','','0',''),(542,43,0,'customer',43,'lwz','edited','2016-01-07 11:51:46','','','0',''),(543,0,0,'user',1,'admin','logout','2016-01-07 11:52:33','','','0',''),(544,38,28,'customer',38,'sky','record','2016-01-07 11:52:41','了解需求','2016-01-07 11:52:31','0',''),(545,0,0,'user',4,'lrr','login','2016-01-07 11:52:45','','','0',''),(546,38,0,'customer',38,'sky','edited','2016-01-07 11:52:54','','','0',''),(547,0,0,'user',4,'lrr','logout','2016-01-07 11:53:02','','','0',''),(548,39,0,'customer',39,'sky','edited','2016-01-07 11:53:04','','','0',''),(549,0,0,'user',1,'admin','login','2016-01-07 11:53:10','','','0',''),(550,0,0,'user',1,'admin','logout','2016-01-07 11:53:49','','','0',''),(551,0,0,'user',1,'admin','login','2016-01-07 11:53:55','','','0',''),(552,0,0,'user',5,'lwz','login','2016-01-07 11:54:27','','','0',''),(553,0,0,'contract',14,'lwz','finishdelivered','2016-01-07 11:54:55','','','0',''),(554,1,0,'customer',1,'lwz','finishdelivercontract','2016-01-07 11:54:55','','<a href=\'/crm/index.php?m=contract&f=view&contractID=14\' >北京地平线机器人技术研发公司购买服务器 (2015-12-10)</a>\n','0',''),(555,0,0,'contract',13,'lwz','finishreturned','2016-01-07 11:56:28','','￥198504.00','0',''),(556,1,0,'customer',1,'lwz','finishreceivecontract','2016-01-07 11:56:28','','<a href=\'/crm/index.php?m=contract&f=view&contractID=13\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n回款￥198504.00','0',''),(557,0,0,'contract',13,'lwz','finishdelivered','2016-01-07 11:57:08','完成交付，验收完成','','0',''),(558,1,0,'customer',1,'lwz','finishdelivercontract','2016-01-07 11:57:08','完成交付，验收完成','<a href=\'/crm/index.php?m=contract&f=view&contractID=13\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n','0',''),(559,0,0,'contract',13,'tomhao','finished','2016-01-07 11:57:53','加油','','0',''),(560,1,0,'customer',1,'tomhao','finishcontract','2016-01-07 11:57:53','加油','<a href=\'/crm/index.php?m=contract&f=view&contractID=13\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n','0',''),(561,0,0,'contract',1,'li','edited','2016-01-07 11:59:10','','','0',''),(562,1,0,'customer',1,'li','editcontract','2016-01-07 11:59:10','','<a href=\'/crm/index.php?m=contract&f=view&contractID=1\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n','0',''),(563,0,0,'order',1,'li','editcontract','2016-01-07 11:59:10','','<a href=\'/crm/index.php?m=contract&f=view&contractID=1\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n','0',''),(564,0,0,'user',8,'li','logout','2016-01-07 11:59:38','','','0',''),(565,0,0,'user',8,'li','login','2016-01-07 11:59:43','','','0',''),(566,0,0,'user',8,'li','logout','2016-01-07 12:02:39','','','0',''),(567,0,0,'user',8,'li','login','2016-01-07 12:02:45','','','0',''),(568,0,0,'user',4,'lrr','login','2016-01-07 12:08:01','','','0',''),(569,40,0,'customer',40,'lwz','edited','2016-01-07 13:03:50','','','0',''),(570,41,0,'customer',41,'lwz','edited','2016-01-07 13:03:59','','','0',''),(571,42,0,'customer',42,'lwz','edited','2016-01-07 13:04:05','','','0',''),(572,0,0,'order',16,'lwz','created','2016-01-07 14:05:59','','','0',''),(573,1,0,'customer',1,'lwz','createorder','2016-01-07 14:05:59','','<a href=\'/crm/index.php?m=order&f=view&orderID=16\' >16</a>\n','0',''),(574,0,0,'order',17,'lwz','created','2016-01-07 14:06:43','','','0',''),(575,1,0,'customer',1,'lwz','createorder','2016-01-07 14:06:43','','<a href=\'/crm/index.php?m=order&f=view&orderID=17\' >17</a>\n','0',''),(576,0,0,'user',30,'sky','login','2016-01-07 16:15:39','','','0',''),(577,0,0,'user',8,'li','login','2016-01-07 22:53:21','','','0',''),(578,0,0,'contract',13,'li','edited','2016-01-07 23:15:03','','','0',''),(579,1,0,'customer',1,'li','editcontract','2016-01-07 23:15:03','','<a href=\'/crm/index.php?m=contract&f=view&contractID=13\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n','0',''),(580,0,0,'order',1,'li','editcontract','2016-01-07 23:15:03','','<a href=\'/crm/index.php?m=contract&f=view&contractID=13\' >北京地平线机器人技术研发公司购买服务器 (2015-12-08)</a>\n','0',''),(581,0,0,'user',2,'tomhao','login','2016-01-08 09:16:57','','','0',''),(582,0,0,'user',8,'li','login','2016-01-08 09:40:53','','','0',''),(583,0,0,'user',8,'li','logout','2016-01-08 09:42:22','','','0',''),(584,0,0,'user',8,'li','login','2016-01-08 09:42:33','','','0',''),(585,0,0,'user',8,'li','logout','2016-01-08 09:44:42','','','0',''),(586,0,0,'user',8,'li','login','2016-01-08 09:44:47','','','0',''),(587,0,0,'user',30,'sky','login','2016-01-08 10:43:00','','','0',''),(588,0,0,'user',4,'lrr','login','2016-01-08 14:01:49','','','0',''),(589,46,0,'customer',46,'lrr','created','2016-01-08 14:03:51','','','0',''),(590,0,36,'contact',36,'lrr','created','2016-01-08 14:03:51','','','0',''),(591,0,0,'user',8,'li','login','2016-01-08 15:12:24','','','0','');
/*!40000 ALTER TABLE `sys_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_article`
--

DROP TABLE IF EXISTS `sys_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL,
  `original` enum('1','0') NOT NULL,
  `copySite` varchar(60) NOT NULL,
  `copyURL` varchar(255) NOT NULL,
  `author` varchar(60) NOT NULL,
  `editor` varchar(60) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'normal',
  `type` varchar(30) NOT NULL,
  `views` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `sticky` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order` (`order`),
  KEY `views` (`views`),
  KEY `sticky` (`sticky`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_article`
--

LOCK TABLES `sys_article` WRITE;
/*!40000 ALTER TABLE `sys_article` DISABLE KEYS */;
INSERT INTO `sys_article` VALUES (1,'新系统上线，欢迎大家体验！','','','','新系统上线，欢迎大家体验！','1','','','li','','2015-12-09 15:53:16','2015-12-09 15:53:16','normal','announce',1,'0',0);
/*!40000 ALTER TABLE `sys_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_block`
--

DROP TABLE IF EXISTS `sys_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_block` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `app` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `source` varchar(20) NOT NULL,
  `block` varchar(20) NOT NULL,
  `params` text NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `accountAppOrder` (`account`,`app`,`order`),
  KEY `account` (`account`,`app`)
) ENGINE=MyISAM AUTO_INCREMENT=368 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_block`
--

LOCK TABLES `sys_block` WRITE;
/*!40000 ALTER TABLE `sys_block` DISABLE KEYS */;
INSERT INTO `sys_block` VALUES (1,'admin','sys','Calendar','oa','attend','null',1,6,0),(2,'admin','sys','Latest Dynamic','','dynamic','null',2,6,0),(3,'admin','sys','System Announcement','oa','announce','{\"num\":15}',3,4,0),(4,'admin','sys','My Contract','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(5,'admin','sys','My Order','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(6,'admin','sys','Payment Depositor','cash','depositor','[]',6,4,0),(7,'admin','sys','Latest Blog','team','blog','{\"num\":15}',7,4,0),(8,'admin','sys','Latest Thread','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(9,'admin','team','最新博客','team','blog','{\"num\":15}',1,4,0),(10,'admin','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(11,'admin','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(12,'admin','cash','付款账户','cash','depositor','[]',1,4,0),(13,'admin','cash','账目','cash','trade','{\"num\":15,\"orderBy\":\"id_desc\"}',2,4,0),(14,'admin','cash','供应商','cash','provider','{\"num\":15,\"orderBy\":\"id_desc\"}',3,4,0),(15,'admin','oa','日历','oa','attend','null',1,6,0),(16,'admin','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(17,'admin','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(18,'admin','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(19,'admin','crm','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',1,4,0),(20,'admin','crm','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',2,4,0),(21,'admin','crm','本周联系','crm','customer','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"thisweek\"}',3,4,0),(22,'tomhao','sys','日历','oa','attend','null',1,6,0),(23,'tomhao','sys','最新动态','','dynamic','null',2,6,0),(24,'tomhao','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(25,'tomhao','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(26,'tomhao','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(27,'tomhao','sys','付款账户','cash','depositor','[]',6,4,0),(28,'tomhao','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(29,'tomhao','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(30,'tomhao','team','最新博客','team','blog','{\"num\":15}',1,4,0),(31,'tomhao','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(32,'tomhao','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(33,'tomhao','cash','付款账户','cash','depositor','[]',1,4,0),(34,'tomhao','cash','账目','cash','trade','{\"num\":15,\"orderBy\":\"id_desc\"}',2,4,0),(35,'tomhao','cash','供应商','cash','provider','{\"num\":15,\"orderBy\":\"id_desc\"}',3,4,0),(36,'tomhao','oa','日历','oa','attend','null',1,6,0),(37,'tomhao','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(38,'tomhao','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(39,'tomhao','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(40,'tomhao','crm','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',1,4,0),(41,'tomhao','crm','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',2,4,0),(42,'tomhao','crm','本周联系','crm','customer','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"thisweek\"}',3,4,0),(43,'zhang','team','最新博客','team','blog','{\"num\":15}',1,4,0),(44,'zhang','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(45,'zhang','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(46,'zhang','crm','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',1,4,0),(47,'zhang','crm','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',2,4,0),(48,'zhang','crm','本周联系','crm','customer','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"thisweek\"}',3,4,0),(49,'zhang','oa','日历','oa','attend','null',1,6,0),(50,'zhang','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(51,'zhang','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(52,'zhang','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(53,'zhang','cash','付款账户','cash','depositor','[]',1,4,0),(54,'zhang','cash','账目','cash','trade','{\"num\":15,\"orderBy\":\"id_desc\"}',2,4,0),(55,'zhang','cash','供应商','cash','provider','{\"num\":15,\"orderBy\":\"id_desc\"}',3,4,0),(56,'lrr','sys','日历','oa','attend','null',1,6,0),(57,'lrr','sys','最新动态','','dynamic','null',2,6,0),(58,'lrr','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(59,'lrr','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(60,'lrr','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(61,'lrr','sys','付款账户','cash','depositor','[]',6,4,0),(62,'lrr','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(63,'lrr','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(64,'lrr','oa','日历','oa','attend','null',1,6,0),(65,'lrr','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(66,'lrr','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(67,'lrr','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(365,'lrr','crm','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',1,4,0),(366,'lrr','crm','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',2,4,0),(367,'lrr','crm','本周联系','crm','customer','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"thisweek\"}',3,4,0),(71,'lrr','team','最新博客','team','blog','{\"num\":15}',1,4,0),(72,'lrr','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(73,'lrr','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(74,'wu','sys','Calendar','oa','attend','null',1,6,0),(75,'wu','sys','Latest Dynamic','','dynamic','null',2,6,0),(76,'wu','sys','System Announcement','oa','announce','{\"num\":15}',3,4,0),(77,'wu','sys','My Contract','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(78,'wu','sys','My Order','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(79,'wu','sys','Payment Depositor','cash','depositor','[]',6,4,0),(80,'wu','sys','Latest Blog','team','blog','{\"num\":15}',7,4,0),(81,'wu','sys','Latest Thread','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(82,'wu','cash','Payment Depositor','cash','depositor','[]',1,4,0),(83,'wu','cash','Trade','cash','depositor','{\"num\":15,\"orderBy\":\"id_desc\"}',2,4,0),(84,'wu','cash','Provider','cash','depositor','{\"num\":15,\"orderBy\":\"id_desc\"}',3,4,0),(85,'wu','crm','My Order','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',1,4,0),(86,'wu','crm','My Contract','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',2,4,0),(87,'wu','crm','This week','crm','customer','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"thisweek\"}',3,4,0),(88,'wu','oa','日历','oa','attend','null',1,6,0),(89,'wu','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(90,'wu','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(91,'wu','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(275,'li','sys','系统公告','oa','announce','{\"color\":\"success\",\"num\":\"15\"}',2,4,0),(313,'li','sys','最新动态','','dynamic','{\"color\":\"primary\"}',4,8,0),(279,'chenchao','sys','日历','oa','attend','null',1,6,0),(316,'li','sys','最新帖子','team','thread','{\"color\":\"default\",\"num\":\"15\",\"type\":\"new\"}',7,3,0),(100,'li','team','最新博客','team','blog','{\"num\":15}',1,4,0),(101,'li','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(102,'li','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(103,'li','cash','付款账户','cash','depositor','[]',1,4,0),(104,'li','cash','账目','cash','trade','{\"num\":15,\"orderBy\":\"id_desc\"}',2,4,0),(105,'li','cash','供应商','cash','provider','{\"num\":15,\"orderBy\":\"id_desc\"}',3,4,0),(106,'li','cash','','cash','trade','{\"color\":\"default\",\"num\":\"15\",\"orderBy\":\"id_desc\"}',4,4,0),(154,'li','oa','日历','oa','attend','{\"color\":\"default\"}',1,8,0),(108,'li','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(109,'li','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(110,'li','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(96,'li','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',3,4,0),(113,'li','crm','本周联系','crm','customer','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"thisweek\"}',2,4,0),(114,'lrr','cash','付款账户','cash','depositor','[]',1,4,0),(115,'lrr','cash','账目','cash','trade','{\"num\":15,\"orderBy\":\"id_desc\"}',2,4,0),(116,'lrr','cash','供应商','cash','provider','{\"num\":15,\"orderBy\":\"id_desc\"}',3,4,0),(117,'ws','sys','Calendar','oa','attend','null',1,6,0),(118,'ws','sys','Latest Dynamic','','dynamic','null',2,6,0),(119,'ws','sys','System Announcement','oa','announce','{\"num\":15}',3,4,0),(120,'ws','sys','My Contract','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(121,'ws','sys','My Order','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(122,'ws','sys','Payment Depositor','cash','depositor','[]',6,4,0),(123,'ws','sys','Latest Blog','team','blog','{\"num\":15}',7,4,0),(124,'ws','sys','Latest Thread','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(125,'ws','team','最新博客','team','blog','{\"num\":15}',1,4,0),(126,'ws','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(127,'ws','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(128,'ws','oa','日历','oa','attend','null',1,6,0),(129,'ws','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(130,'ws','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(131,'ws','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(132,'lwz','sys','日历','oa','attend','null',1,6,0),(133,'lwz','sys','最新动态','','dynamic','null',2,6,0),(134,'lwz','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(135,'lwz','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(136,'lwz','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(137,'lwz','sys','付款账户','cash','depositor','[]',6,4,0),(138,'lwz','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(139,'lwz','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(291,'lwz','cash','付款账户','cash','depositor','[]',1,4,0),(292,'lwz','cash','账目','cash','trade','{\"num\":15,\"orderBy\":\"id_desc\"}',2,4,0),(293,'lwz','cash','供应商','cash','provider','{\"num\":15,\"orderBy\":\"id_desc\"}',3,4,0),(143,'lwz','cash','','cash','depositor','{\"color\":\"default\"}',4,4,0),(144,'lwz','oa','日历','oa','attend','null',1,6,0),(145,'lwz','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(146,'lwz','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(147,'lwz','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(148,'lwz','team','最新博客','team','blog','{\"num\":15}',1,4,0),(149,'lwz','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(150,'lwz','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(151,'lwz','crm','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',1,4,0),(152,'lwz','crm','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',2,4,0),(153,'lwz','crm','本周联系','crm','customer','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"thisweek\"}',3,4,0),(155,'wang','oa','日历','oa','attend','null',1,6,0),(156,'wang','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(157,'wang','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(158,'wang','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(159,'wang','crm','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',1,4,0),(160,'wang','crm','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',2,4,0),(161,'wang','crm','本周联系','crm','customer','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"thisweek\"}',3,4,0),(162,'wu','team','最新博客','team','blog','{\"num\":15}',1,4,0),(163,'wu','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(164,'wu','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(165,'zhh','sys','日历','oa','attend','null',1,6,0),(166,'zhh','sys','最新动态','','dynamic','null',2,6,0),(167,'zhh','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(168,'zhh','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(169,'zhh','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(170,'zhh','sys','付款账户','cash','depositor','[]',6,4,0),(171,'zhh','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(172,'zhh','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(173,'zhh','team','最新博客','team','blog','{\"num\":15}',1,4,0),(174,'zhh','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(175,'zhh','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(176,'zhh','oa','日历','oa','attend','null',1,6,0),(177,'zhh','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(178,'zhh','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(179,'zhh','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(180,'sky','sys','日历','oa','attend','null',1,6,0),(181,'sky','sys','最新动态','','dynamic','null',2,6,0),(182,'sky','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(183,'sky','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(184,'sky','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(185,'sky','sys','付款账户','cash','depositor','[]',6,4,0),(186,'sky','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(187,'sky','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(188,'sky','crm','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',1,4,0),(189,'sky','crm','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',2,4,0),(190,'sky','crm','本周联系','crm','customer','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"thisweek\"}',3,4,0),(191,'sky','oa','日历','oa','attend','null',1,6,0),(192,'sky','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(193,'sky','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(194,'sky','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(212,'sky','cash','付款账户','cash','depositor','[]',1,4,0),(213,'sky','cash','账目','cash','trade','{\"num\":15,\"orderBy\":\"id_desc\"}',2,4,0),(214,'sky','cash','供应商','cash','provider','{\"num\":15,\"orderBy\":\"id_desc\"}',3,4,0),(198,'sky','team','最新博客','team','blog','{\"num\":15}',1,4,0),(199,'sky','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(200,'sky','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(201,'ljy','sys','日历','oa','attend','null',1,6,0),(202,'ljy','sys','最新动态','','dynamic','null',2,6,0),(203,'ljy','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(204,'ljy','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(205,'ljy','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(206,'ljy','sys','付款账户','cash','depositor','[]',6,4,0),(207,'ljy','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(208,'ljy','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(209,'ljy','team','最新博客','team','blog','{\"num\":15}',1,4,0),(210,'ljy','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(211,'ljy','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(215,'ljy','oa','日历','oa','attend','null',1,6,0),(216,'ljy','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(217,'ljy','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(218,'ljy','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(219,'wangmengting','sys','日历','oa','attend','null',1,6,0),(220,'wangmengting','sys','最新动态','','dynamic','null',2,6,0),(221,'wangmengting','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(222,'wangmengting','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(223,'wangmengting','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(224,'wangmengting','sys','付款账户','cash','depositor','[]',6,4,0),(225,'wangmengting','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(226,'wangmengting','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(227,'wangmengting','team','最新博客','team','blog','{\"num\":15}',1,4,0),(228,'wangmengting','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(229,'wangmengting','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(230,'wangmengting','oa','日历','oa','attend','null',1,6,0),(231,'wangmengting','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(232,'wangmengting','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(233,'wangmengting','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(234,'libin','sys','日历','oa','attend','null',1,6,0),(235,'libin','sys','最新动态','','dynamic','null',2,6,0),(236,'libin','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(237,'libin','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(238,'libin','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(239,'libin','sys','付款账户','cash','depositor','[]',6,4,0),(240,'libin','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(241,'libin','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(242,'libin','oa','日历','oa','attend','null',1,6,0),(243,'libin','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(244,'libin','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(245,'libin','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(246,'libin','team','最新博客','team','blog','{\"num\":15}',1,4,0),(247,'libin','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(248,'libin','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(249,'songyao','sys','日历','oa','attend','null',1,6,0),(297,'yjs','sys','日历','oa','attend','null',1,6,0),(251,'songyao','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(252,'songyao','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(253,'songyao','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(254,'songyao','sys','付款账户','cash','depositor','[]',6,4,0),(255,'songyao','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(256,'songyao','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(258,'songyao','oa','日历','oa','attend','null',1,6,0),(259,'songyao','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(260,'songyao','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(261,'songyao','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(262,'songyao','team','最新博客','team','blog','{\"num\":15}',1,4,0),(263,'songyao','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(264,'songyao','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(268,'li','crm','客户列表','crm','customer','{\"color\":\"success\",\"type\":\"thisweek\",\"num\":\"15\",\"orderBy\":\"id_desc\"}',3,4,0),(269,'li','crm','我的合同','crm','contract','{\"color\":\"info\",\"type\":\"normalstatus\",\"num\":\"15\",\"orderBy\":\"id_desc\"}',1,4,0),(276,'li','sys','日历','oa','attend','{\"color\":\"info\"}',1,8,0),(315,'li','sys','最新博客','team','blog','{\"color\":\"default\",\"num\":\"15\"}',6,3,0),(317,'li','sys','账目','cash','trade','{\"color\":\"warning\",\"num\":\"\",\"orderBy\":\"id_asc\"}',8,3,0),(280,'chenchao','sys','最新动态','','dynamic','null',2,6,0),(281,'chenchao','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(282,'chenchao','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(283,'chenchao','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(284,'chenchao','sys','付款账户','cash','depositor','[]',6,4,0),(285,'chenchao','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(286,'chenchao','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(287,'chenchao','oa','日历','oa','attend','null',1,6,0),(288,'chenchao','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(289,'chenchao','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(290,'chenchao','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(294,'wang','cash','付款账户','cash','depositor','[]',1,4,0),(295,'wang','cash','账目','cash','trade','{\"num\":15,\"orderBy\":\"id_desc\"}',2,4,0),(296,'wang','cash','供应商','cash','provider','{\"num\":15,\"orderBy\":\"id_desc\"}',3,4,0),(298,'yjs','sys','最新动态','','dynamic','null',2,6,0),(299,'yjs','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(300,'yjs','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(301,'yjs','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(302,'yjs','sys','付款账户','cash','depositor','[]',6,4,0),(303,'yjs','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(304,'yjs','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(305,'yjs','oa','日历','oa','attend','null',1,6,0),(306,'yjs','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(307,'yjs','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(308,'yjs','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(309,'yjs','team','最新博客','team','blog','{\"num\":15}',1,4,0),(310,'yjs','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(311,'yjs','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(314,'li','sys','任务列表','oa','task','{\"color\":\"primary\",\"type\":\"assignedTo\",\"num\":\"15\",\"orderBy\":\"id_asc\",\"status\":[\"\"]}',5,3,0),(318,'lili','sys','Calendar','oa','attend','null',1,6,0),(319,'lili','sys','Latest Dynamic','','dynamic','null',2,6,0),(320,'lili','sys','System Announcement','oa','announce','{\"num\":15}',3,4,0),(321,'lili','sys','My Contract','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(322,'lili','sys','My Order','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(323,'lili','sys','Payment Depositor','cash','depositor','[]',6,4,0),(324,'lili','sys','Latest Blog','team','blog','{\"num\":15}',7,4,0),(325,'lili','sys','Latest Thread','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(326,'lili','oa','日历','oa','attend','null',1,6,0),(327,'lili','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(328,'lili','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(329,'lili','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(330,'lili','team','最新博客','team','blog','{\"num\":15}',1,4,0),(331,'lili','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(332,'lili','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(333,'belle','sys','日历','oa','attend','null',1,6,0),(334,'belle','sys','最新动态','','dynamic','null',2,6,0),(335,'belle','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(336,'belle','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(337,'belle','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(338,'belle','sys','付款账户','cash','depositor','[]',6,4,0),(339,'belle','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(340,'belle','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(341,'jason','sys','日历','oa','attend','null',1,6,0),(342,'jason','sys','最新动态','','dynamic','null',2,6,0),(343,'jason','sys','系统公告','oa','announce','{\"num\":15}',3,4,0),(344,'jason','sys','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',4,4,0),(345,'jason','sys','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',5,4,0),(346,'jason','sys','付款账户','cash','depositor','[]',6,4,0),(347,'jason','sys','最新博客','team','blog','{\"num\":15}',7,4,0),(348,'jason','sys','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',8,4,0),(349,'jason','oa','日历','oa','attend','null',1,6,0),(350,'jason','oa','系统公告','oa','announce','{\"num\":15}',2,4,0),(351,'jason','oa','指派给我的任务','oa','task','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":[],\"type\":\"assignedTo\"}',3,4,0),(352,'jason','oa','项目列表','oa','project','{\"num\":15,\"orderBy\":\"id_desc\",\"status\":\"doing\"}',4,4,0),(362,'jason','cash','付款账户','cash','depositor','[]',1,4,0),(363,'jason','cash','账目','cash','trade','{\"num\":15,\"orderBy\":\"id_desc\"}',2,4,0),(364,'jason','cash','供应商','cash','provider','{\"num\":15,\"orderBy\":\"id_desc\"}',3,4,0),(356,'jason','team','最新博客','team','blog','{\"num\":15}',1,4,0),(357,'jason','team','最新帖子','team','thread','{\"num\":15,\"type\":\"new\"}',2,4,0),(358,'jason','team','置顶帖子','team','thread','{\"num\":15,\"type\":\"stick\"}',3,4,0),(359,'jason','crm','我的订单','crm','order','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"createdBy\",\"status\":[]}',1,4,0),(360,'jason','crm','我的合同','crm','contract','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"returnedBy\",\"status\":[]}',2,4,0),(361,'jason','crm','本周联系','crm','customer','{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"thisweek\"}',3,4,0);
/*!40000 ALTER TABLE `sys_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `root` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` char(30) NOT NULL,
  `readonly` enum('0','1') NOT NULL DEFAULT '0',
  `moderators` varchar(255) NOT NULL,
  `threads` smallint(5) NOT NULL,
  `posts` smallint(5) NOT NULL,
  `postedBy` varchar(30) NOT NULL,
  `postedDate` datetime NOT NULL,
  `postID` mediumint(9) NOT NULL,
  `replyID` mediumint(8) unsigned NOT NULL,
  `rights` char(30) NOT NULL,
  `refund` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tree` (`type`),
  KEY `order` (`order`),
  KEY `parent` (`parent`),
  KEY `path` (`path`)
) ENGINE=MyISAM AUTO_INCREMENT=820059 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
INSERT INTO `sys_category` VALUES (1,'化工','','','',0,0,',1,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(3,'环保、绿化、公共事业','','','',0,0,',3,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(4,'电子电工及通讯','','','',0,0,',4,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(5,'办公文教及光仪','','','',0,0,',5,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(6,'影视、新闻、出版','','','',0,0,',6,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(7,'电脑、网络、软件','','','',0,0,',7,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(8,'农林牧渔','','','',0,0,',8,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(9,'生活消费','','','',0,0,',9,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(10,'家电及家居用品','','','',0,0,',10,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(11,'交通运输、物流','','','',0,0,',11,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(12,'文化教育、培训','','','',0,0,',12,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(14,'玩具及儿童用品','','','',0,0,',14,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(15,'科研、设计、监测','','','',0,0,',15,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(16,'礼品、美术、工艺品','','','',0,0,',16,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(17,'医疗、医药、保健','','','',0,0,',17,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(18,'金融、保险、投资','','','',0,0,',18,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(19,'机械、机电、设备','','','',0,0,',19,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(20,'旅游、运动、休闲','','','',0,0,',20,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(21,'政府及社会团体','','','',0,0,',21,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(22,'工业制品及工业用品','','','',0,0,',22,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(23,'包装、印刷、纸品','','','',0,0,',23,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(24,'商业机构','','','',0,0,',24,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(25,'纺织、皮革、印染','','','',0,0,',25,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(26,'安全、保安','','','',0,0,',26,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(27,'专业服务','','','',0,0,',27,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(28,'能源、矿产、冶金','','','',0,0,',28,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(29,'服装、服饰','','','',0,0,',29,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(30,'生活服务','','','',0,0,',30,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(33,'宠物及用品','','','',0,0,',33,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(34,'建筑、装饰、房地产','','','',0,0,',34,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(35,'食品、饮料、烟酒','','','',0,0,',35,',1,0,'industry','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(110000,'北京市','','','',0,0,',110000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(120000,'天津市','','','',0,0,',120000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(130000,'河北省','','','',0,0,',130000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(140000,'山西省','','','',0,0,',140000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(150000,'内蒙古自治区','','','',0,0,',150000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(210000,'辽宁省','','','',0,0,',210000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(220000,'吉林省','','','',0,0,',220000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(230000,'黑龙江省','','','',0,0,',230000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(310000,'上海市','','','',0,0,',310000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(320000,'江苏省','','','',0,0,',320000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(330000,'浙江省','','','',0,0,',330000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(340000,'安徽省','','','',0,0,',340000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(350000,'福建省','','','',0,0,',350000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(360000,'江西省','','','',0,0,',360000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(370000,'山东省','','','',0,0,',370000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(410000,'河南省','','','',0,0,',410000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(420000,'湖北省','','','',0,0,',420000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(430000,'湖南省','','','',0,0,',430000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(440000,'广东省','','','',0,0,',440000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(450000,'广西壮族自治区','','','',0,0,',450000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(460000,'海南省','','','',0,0,',460000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(500000,'重庆市','','','',0,0,',500000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(510000,'四川省','','','',0,0,',510000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(520000,'贵州省','','','',0,0,',520000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(530000,'云南省','','','',0,0,',530000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(540000,'西藏自治区','','','',0,0,',540000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(610000,'陕西省','','','',0,0,',610000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(620000,'甘肃省','','','',0,0,',620000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(630000,'青海省','','','',0,0,',630000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(640000,'宁夏回族自治区','','','',0,0,',640000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(650000,'新疆维吾尔自治区','','','',0,0,',650000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(710000,'台湾省','','','',0,0,',710000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(810000,'香港特别行政区','','','',0,0,',810000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(820000,'澳门特别行政区','','','',0,0,',820000,',1,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(130100,'石家庄市','','','',0,130000,',130000,130100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(130200,'唐山市','','','',0,130000,',130000,130200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(130300,'秦皇岛市','','','',0,130000,',130000,130300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(130400,'邯郸市','','','',0,130000,',130000,130400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(130500,'邢台市','','','',0,130000,',130000,130500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(130600,'保定市','','','',0,130000,',130000,130600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(130700,'张家口市','','','',0,130000,',130000,130700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(130800,'承德市','','','',0,130000,',130000,130800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(130900,'沧州市','','','',0,130000,',130000,130900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(131000,'廊坊市','','','',0,130000,',130000,131000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(131100,'衡水市','','','',0,130000,',130000,131100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(140100,'太原市','','','',0,140000,',140000,140100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(140200,'大同市','','','',0,140000,',140000,140200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(140300,'阳泉市','','','',0,140000,',140000,140300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(140400,'长治市','','','',0,140000,',140000,140400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(140500,'晋城市','','','',0,140000,',140000,140500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(140600,'朔州市','','','',0,140000,',140000,140600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(140700,'晋中市','','','',0,140000,',140000,140700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(140800,'运城市','','','',0,140000,',140000,140800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(140900,'忻州市','','','',0,140000,',140000,140900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(141000,'临汾市','','','',0,140000,',140000,141000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(141100,'吕梁市','','','',0,140000,',140000,141100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(150100,'呼和浩特市','','','',0,150000,',150000,150100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(150200,'包头市','','','',0,150000,',150000,150200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(150300,'乌海市','','','',0,150000,',150000,150300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(150400,'赤峰市','','','',0,150000,',150000,150400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(150500,'通辽市','','','',0,150000,',150000,150500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(150600,'鄂尔多斯市','','','',0,150000,',150000,150600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(150700,'呼伦贝尔市','','','',0,150000,',150000,150700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(150800,'巴彦淖尔市','','','',0,150000,',150000,150800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(150900,'乌兰察布市','','','',0,150000,',150000,150900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(152200,'兴安盟','','','',0,150000,',150000,152200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(152500,'锡林郭勒盟','','','',0,150000,',150000,152500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(152900,'阿拉善盟','','','',0,150000,',150000,152900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(210100,'沈阳市','','','',0,210000,',210000,210100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(210200,'大连市','','','',0,210000,',210000,210200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(210300,'鞍山市','','','',0,210000,',210000,210300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(210400,'抚顺市','','','',0,210000,',210000,210400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(210500,'本溪市','','','',0,210000,',210000,210500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(210600,'丹东市','','','',0,210000,',210000,210600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(210700,'锦州市','','','',0,210000,',210000,210700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(210800,'营口市','','','',0,210000,',210000,210800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(210900,'阜新市','','','',0,210000,',210000,210900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(211000,'辽阳市','','','',0,210000,',210000,211000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(211100,'盘锦市','','','',0,210000,',210000,211100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(211200,'铁岭市','','','',0,210000,',210000,211200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(211300,'朝阳市','','','',0,210000,',210000,211300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(211400,'葫芦岛市','','','',0,210000,',210000,211400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(220100,'长春市','','','',0,220000,',220000,220100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(220200,'吉林市','','','',0,220000,',220000,220200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(220300,'四平市','','','',0,220000,',220000,220300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(220400,'辽源市','','','',0,220000,',220000,220400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(220500,'通化市','','','',0,220000,',220000,220500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(220600,'白山市','','','',0,220000,',220000,220600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(220700,'松原市','','','',0,220000,',220000,220700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(220800,'白城市','','','',0,220000,',220000,220800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(222400,'延边朝鲜族自治州','','','',0,220000,',220000,222400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(230100,'哈尔滨市','','','',0,230000,',230000,230100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(230200,'齐齐哈尔市','','','',0,230000,',230000,230200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(230300,'鸡西市','','','',0,230000,',230000,230300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(230400,'鹤岗市','','','',0,230000,',230000,230400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(230500,'双鸭山市','','','',0,230000,',230000,230500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(230600,'大庆市','','','',0,230000,',230000,230600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(230700,'伊春市','','','',0,230000,',230000,230700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(230800,'佳木斯市','','','',0,230000,',230000,230800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(230900,'七台河市','','','',0,230000,',230000,230900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(231000,'牡丹江市','','','',0,230000,',230000,231000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(231100,'黑河市','','','',0,230000,',230000,231100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(231200,'绥化市','','','',0,230000,',230000,231200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(232700,'大兴安岭地区','','','',0,230000,',230000,232700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(320100,'南京市','','','',0,320000,',320000,320100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(320200,'无锡市','','','',0,320000,',320000,320200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(320300,'徐州市','','','',0,320000,',320000,320300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(320400,'常州市','','','',0,320000,',320000,320400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(320500,'苏州市','','','',0,320000,',320000,320500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(320600,'南通市','','','',0,320000,',320000,320600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(320700,'连云港市','','','',0,320000,',320000,320700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(320800,'淮安市','','','',0,320000,',320000,320800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(320900,'盐城市','','','',0,320000,',320000,320900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(321000,'扬州市','','','',0,320000,',320000,321000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(321100,'镇江市','','','',0,320000,',320000,321100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(321200,'泰州市','','','',0,320000,',320000,321200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(321300,'宿迁市','','','',0,320000,',320000,321300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(330100,'杭州市','','','',0,330000,',330000,330100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(330200,'宁波市','','','',0,330000,',330000,330200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(330300,'温州市','','','',0,330000,',330000,330300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(330400,'嘉兴市','','','',0,330000,',330000,330400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(330500,'湖州市','','','',0,330000,',330000,330500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(330600,'绍兴市','','','',0,330000,',330000,330600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(330700,'金华市','','','',0,330000,',330000,330700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(330800,'衢州市','','','',0,330000,',330000,330800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(330900,'舟山市','','','',0,330000,',330000,330900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(331000,'台州市','','','',0,330000,',330000,331000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(331100,'丽水市','','','',0,330000,',330000,331100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(340100,'合肥市','','','',0,340000,',340000,340100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(340200,'芜湖市','','','',0,340000,',340000,340200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(340300,'蚌埠市','','','',0,340000,',340000,340300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(340400,'淮南市','','','',0,340000,',340000,340400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(340500,'马鞍山市','','','',0,340000,',340000,340500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(340600,'淮北市','','','',0,340000,',340000,340600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(340700,'铜陵市','','','',0,340000,',340000,340700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(340800,'安庆市','','','',0,340000,',340000,340800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(341000,'黄山市','','','',0,340000,',340000,341000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(341100,'滁州市','','','',0,340000,',340000,341100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(341200,'阜阳市','','','',0,340000,',340000,341200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(341300,'宿州市','','','',0,340000,',340000,341300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(341500,'六安市','','','',0,340000,',340000,341500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(341600,'亳州市','','','',0,340000,',340000,341600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(341700,'池州市','','','',0,340000,',340000,341700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(341800,'宣城市','','','',0,340000,',340000,341800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(350100,'福州市','','','',0,350000,',350000,350100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(350200,'厦门市','','','',0,350000,',350000,350200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(350300,'莆田市','','','',0,350000,',350000,350300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(350400,'三明市','','','',0,350000,',350000,350400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(350500,'泉州市','','','',0,350000,',350000,350500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(350600,'漳州市','','','',0,350000,',350000,350600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(350700,'南平市','','','',0,350000,',350000,350700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(350800,'龙岩市','','','',0,350000,',350000,350800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(350900,'宁德市','','','',0,350000,',350000,350900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(360100,'南昌市','','','',0,360000,',360000,360100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(360200,'景德镇市','','','',0,360000,',360000,360200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(360300,'萍乡市','','','',0,360000,',360000,360300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(360400,'九江市','','','',0,360000,',360000,360400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(360500,'新余市','','','',0,360000,',360000,360500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(360600,'鹰潭市','','','',0,360000,',360000,360600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(360700,'赣州市','','','',0,360000,',360000,360700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(360800,'吉安市','','','',0,360000,',360000,360800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(360900,'宜春市','','','',0,360000,',360000,360900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(361000,'抚州市','','','',0,360000,',360000,361000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(361100,'上饶市','','','',0,360000,',360000,361100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(370100,'济南市','','','',0,370000,',370000,370100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(370200,'青岛市','','','',0,370000,',370000,370200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(370300,'淄博市','','','',0,370000,',370000,370300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(370400,'枣庄市','','','',0,370000,',370000,370400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(370500,'东营市','','','',0,370000,',370000,370500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(370600,'烟台市','','','',0,370000,',370000,370600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(370700,'潍坊市','','','',0,370000,',370000,370700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(370800,'济宁市','','','',0,370000,',370000,370800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(370900,'泰安市','','','',0,370000,',370000,370900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(371000,'威海市','','','',0,370000,',370000,371000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(371100,'日照市','','','',0,370000,',370000,371100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(371200,'莱芜市','','','',0,370000,',370000,371200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(371300,'临沂市','','','',0,370000,',370000,371300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(371400,'德州市','','','',0,370000,',370000,371400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(371500,'聊城市','','','',0,370000,',370000,371500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(371600,'滨州市','','','',0,370000,',370000,371600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(371700,'菏泽市','','','',0,370000,',370000,371700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(410100,'郑州市','','','',0,410000,',410000,410100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(410200,'开封市','','','',0,410000,',410000,410200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(410300,'洛阳市','','','',0,410000,',410000,410300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(410400,'平顶山市','','','',0,410000,',410000,410400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(410500,'安阳市','','','',0,410000,',410000,410500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(410600,'鹤壁市','','','',0,410000,',410000,410600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(410700,'新乡市','','','',0,410000,',410000,410700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(410800,'焦作市','','','',0,410000,',410000,410800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(410900,'濮阳市','','','',0,410000,',410000,410900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(411000,'许昌市','','','',0,410000,',410000,411000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(411100,'漯河市','','','',0,410000,',410000,411100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(411200,'三门峡市','','','',0,410000,',410000,411200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(411300,'南阳市','','','',0,410000,',410000,411300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(411400,'商丘市','','','',0,410000,',410000,411400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(411500,'信阳市','','','',0,410000,',410000,411500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(411600,'周口市','','','',0,410000,',410000,411600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(411700,'驻马店市','','','',0,410000,',410000,411700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(419000,'省直辖县级行政区划','','','',0,410000,',410000,419000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(420100,'武汉市','','','',0,420000,',420000,420100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(420200,'黄石市','','','',0,420000,',420000,420200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(420300,'十堰市','','','',0,420000,',420000,420300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(420500,'宜昌市','','','',0,420000,',420000,420500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(420600,'襄阳市','','','',0,420000,',420000,420600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(420700,'鄂州市','','','',0,420000,',420000,420700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(420800,'荆门市','','','',0,420000,',420000,420800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(420900,'孝感市','','','',0,420000,',420000,420900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(421000,'荆州市','','','',0,420000,',420000,421000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(421100,'黄冈市','','','',0,420000,',420000,421100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(421200,'咸宁市','','','',0,420000,',420000,421200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(421300,'随州市','','','',0,420000,',420000,421300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(422800,'恩施土家族苗族自治州','','','',0,420000,',420000,422800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(429000,'省直辖县级行政区划','','','',0,420000,',420000,429000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(430100,'长沙市','','','',0,430000,',430000,430100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(430200,'株洲市','','','',0,430000,',430000,430200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(430300,'湘潭市','','','',0,430000,',430000,430300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(430400,'衡阳市','','','',0,430000,',430000,430400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(430500,'邵阳市','','','',0,430000,',430000,430500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(430600,'岳阳市','','','',0,430000,',430000,430600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(430700,'常德市','','','',0,430000,',430000,430700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(430800,'张家界市','','','',0,430000,',430000,430800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(430900,'益阳市','','','',0,430000,',430000,430900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(431000,'郴州市','','','',0,430000,',430000,431000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(431100,'永州市','','','',0,430000,',430000,431100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(431200,'怀化市','','','',0,430000,',430000,431200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(431300,'娄底市','','','',0,430000,',430000,431300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(433100,'湘西土家族苗族自治州','','','',0,430000,',430000,433100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(440100,'广州市','','','',0,440000,',440000,440100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(440200,'韶关市','','','',0,440000,',440000,440200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(440300,'深圳市','','','',0,440000,',440000,440300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(440400,'珠海市','','','',0,440000,',440000,440400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(440500,'汕头市','','','',0,440000,',440000,440500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(440600,'佛山市','','','',0,440000,',440000,440600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(440700,'江门市','','','',0,440000,',440000,440700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(440800,'湛江市','','','',0,440000,',440000,440800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(440900,'茂名市','','','',0,440000,',440000,440900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(441200,'肇庆市','','','',0,440000,',440000,441200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(441300,'惠州市','','','',0,440000,',440000,441300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(441400,'梅州市','','','',0,440000,',440000,441400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(441500,'汕尾市','','','',0,440000,',440000,441500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(441600,'河源市','','','',0,440000,',440000,441600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(441700,'阳江市','','','',0,440000,',440000,441700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(441800,'清远市','','','',0,440000,',440000,441800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(441900,'东莞市','','','',0,440000,',440000,441900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(442000,'中山市','','','',0,440000,',440000,442000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(445100,'潮州市','','','',0,440000,',440000,445100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(445200,'揭阳市','','','',0,440000,',440000,445200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(445300,'云浮市','','','',0,440000,',440000,445300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(450100,'南宁市','','','',0,450000,',450000,450100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(450200,'柳州市','','','',0,450000,',450000,450200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(450300,'桂林市','','','',0,450000,',450000,450300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(450400,'梧州市','','','',0,450000,',450000,450400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(450500,'北海市','','','',0,450000,',450000,450500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(450600,'防城港市','','','',0,450000,',450000,450600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(450700,'钦州市','','','',0,450000,',450000,450700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(450800,'贵港市','','','',0,450000,',450000,450800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(450900,'玉林市','','','',0,450000,',450000,450900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(451000,'百色市','','','',0,450000,',450000,451000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(451100,'贺州市','','','',0,450000,',450000,451100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(451200,'河池市','','','',0,450000,',450000,451200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(451300,'来宾市','','','',0,450000,',450000,451300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(451400,'崇左市','','','',0,450000,',450000,451400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(460100,'海口市','','','',0,460000,',460000,460100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(460200,'三亚市','','','',0,460000,',460000,460200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(460300,'三沙市','','','',0,460000,',460000,460300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(469000,'省直辖县级行政区划','','','',0,460000,',460000,469000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(510100,'成都市','','','',0,510000,',510000,510100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(510300,'自贡市','','','',0,510000,',510000,510300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(510400,'攀枝花市','','','',0,510000,',510000,510400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(510500,'泸州市','','','',0,510000,',510000,510500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(510600,'德阳市','','','',0,510000,',510000,510600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(510700,'绵阳市','','','',0,510000,',510000,510700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(510800,'广元市','','','',0,510000,',510000,510800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(510900,'遂宁市','','','',0,510000,',510000,510900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(511000,'内江市','','','',0,510000,',510000,511000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(511100,'乐山市','','','',0,510000,',510000,511100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(511300,'南充市','','','',0,510000,',510000,511300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(511400,'眉山市','','','',0,510000,',510000,511400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(511500,'宜宾市','','','',0,510000,',510000,511500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(511600,'广安市','','','',0,510000,',510000,511600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(511700,'达州市','','','',0,510000,',510000,511700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(511800,'雅安市','','','',0,510000,',510000,511800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(511900,'巴中市','','','',0,510000,',510000,511900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(512000,'资阳市','','','',0,510000,',510000,512000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(513200,'阿坝藏族羌族自治州','','','',0,510000,',510000,513200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(513300,'甘孜藏族自治州','','','',0,510000,',510000,513300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(513400,'凉山彝族自治州','','','',0,510000,',510000,513400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(520100,'贵阳市','','','',0,520000,',520000,520100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(520200,'六盘水市','','','',0,520000,',520000,520200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(520300,'遵义市','','','',0,520000,',520000,520300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(520400,'安顺市','','','',0,520000,',520000,520400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(520500,'毕节市','','','',0,520000,',520000,520500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(520600,'铜仁市','','','',0,520000,',520000,520600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(522300,'黔西南布依族苗族自治州','','','',0,520000,',520000,522300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(522600,'黔东南苗族侗族自治州','','','',0,520000,',520000,522600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(522700,'黔南布依族苗族自治州','','','',0,520000,',520000,522700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(530100,'昆明市','','','',0,530000,',530000,530100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(530300,'曲靖市','','','',0,530000,',530000,530300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(530400,'玉溪市','','','',0,530000,',530000,530400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(530500,'保山市','','','',0,530000,',530000,530500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(530600,'昭通市','','','',0,530000,',530000,530600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(530700,'丽江市','','','',0,530000,',530000,530700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(530800,'普洱市','','','',0,530000,',530000,530800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(530900,'临沧市','','','',0,530000,',530000,530900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(532300,'楚雄彝族自治州','','','',0,530000,',530000,532300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(532500,'红河哈尼族彝族自治州','','','',0,530000,',530000,532500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(532600,'文山壮族苗族自治州','','','',0,530000,',530000,532600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(532800,'西双版纳傣族自治州','','','',0,530000,',530000,532800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(532900,'大理白族自治州','','','',0,530000,',530000,532900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(533100,'德宏傣族景颇族自治州','','','',0,530000,',530000,533100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(533300,'怒江傈僳族自治州','','','',0,530000,',530000,533300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(533400,'迪庆藏族自治州','','','',0,530000,',530000,533400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(540100,'拉萨市','','','',0,540000,',540000,540100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(542100,'昌都地区','','','',0,540000,',540000,542100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(542200,'山南地区','','','',0,540000,',540000,542200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(542300,'日喀则地区','','','',0,540000,',540000,542300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(542400,'那曲地区','','','',0,540000,',540000,542400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(542500,'阿里地区','','','',0,540000,',540000,542500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(542600,'林芝地区','','','',0,540000,',540000,542600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(610100,'西安市','','','',0,610000,',610000,610100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(610200,'铜川市','','','',0,610000,',610000,610200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(610300,'宝鸡市','','','',0,610000,',610000,610300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(610400,'咸阳市','','','',0,610000,',610000,610400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(610500,'渭南市','','','',0,610000,',610000,610500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(610600,'延安市','','','',0,610000,',610000,610600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(610700,'汉中市','','','',0,610000,',610000,610700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(610800,'榆林市','','','',0,610000,',610000,610800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(610900,'安康市','','','',0,610000,',610000,610900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(611000,'商洛市','','','',0,610000,',610000,611000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(620100,'兰州市','','','',0,620000,',620000,620100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(620200,'嘉峪关市','','','',0,620000,',620000,620200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(620300,'金昌市','','','',0,620000,',620000,620300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(620400,'白银市','','','',0,620000,',620000,620400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(620500,'天水市','','','',0,620000,',620000,620500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(620600,'武威市','','','',0,620000,',620000,620600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(620700,'张掖市','','','',0,620000,',620000,620700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(620800,'平凉市','','','',0,620000,',620000,620800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(620900,'酒泉市','','','',0,620000,',620000,620900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(621000,'庆阳市','','','',0,620000,',620000,621000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(621100,'定西市','','','',0,620000,',620000,621100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(621200,'陇南市','','','',0,620000,',620000,621200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(622900,'临夏回族自治州','','','',0,620000,',620000,622900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(623000,'甘南藏族自治州','','','',0,620000,',620000,623000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(630100,'西宁市','','','',0,630000,',630000,630100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(630200,'海东市','','','',0,630000,',630000,630200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(632200,'海北藏族自治州','','','',0,630000,',630000,632200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(632300,'黄南藏族自治州','','','',0,630000,',630000,632300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(632500,'海南藏族自治州','','','',0,630000,',630000,632500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(632600,'果洛藏族自治州','','','',0,630000,',630000,632600,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(632700,'玉树藏族自治州','','','',0,630000,',630000,632700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(632800,'海西蒙古族藏族自治州','','','',0,630000,',630000,632800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(640100,'银川市','','','',0,640000,',640000,640100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(640200,'石嘴山市','','','',0,640000,',640000,640200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(640300,'吴忠市','','','',0,640000,',640000,640300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(640400,'固原市','','','',0,640000,',640000,640400,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(640500,'中卫市','','','',0,640000,',640000,640500,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(650100,'乌鲁木齐市','','','',0,650000,',650000,650100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(650200,'克拉玛依市','','','',0,650000,',650000,650200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(652100,'吐鲁番地区','','','',0,650000,',650000,652100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(652200,'哈密地区','','','',0,650000,',650000,652200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(652300,'昌吉回族自治州','','','',0,650000,',650000,652300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(652700,'博尔塔拉蒙古自治州','','','',0,650000,',650000,652700,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(652800,'巴音郭楞蒙古自治州','','','',0,650000,',650000,652800,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(652900,'阿克苏地区','','','',0,650000,',650000,652900,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(653000,'克孜勒苏柯尔克孜自治州','','','',0,650000,',650000,653000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(653100,'喀什地区','','','',0,650000,',650000,653100,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(653200,'和田地区','','','',0,650000,',650000,653200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(654000,'伊犁哈萨克自治州','','','',0,650000,',650000,654000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(654200,'塔城地区','','','',0,650000,',650000,654200,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(654300,'阿勒泰地区','','','',0,650000,',650000,654300,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(659000,'自治区直辖县级行政区划','','','',0,650000,',650000,659000,',2,0,'area','0','',0,0,'','0000-00-00 00:00:00',0,0,'',''),(820001,'新来乍到','','','',0,0,',820001,',1,10,'forum','0','',0,0,'','2015-12-08 10:02:32',0,0,'','0'),(820002,'专业知识','','','',0,0,',820002,',1,20,'forum','0','',0,0,'','2015-12-08 10:02:32',0,0,'','0'),(820003,'技术部门','','','',0,0,',820003,',1,10,'dept','0',',wu,',0,0,'','2015-12-08 10:04:39',0,0,'','0'),(820004,'行政部门','','','',0,0,',820004,',1,20,'dept','0',',wang,',0,0,'','2015-12-08 10:04:39',0,0,'','0'),(820005,'销售部门','','','',0,0,',820005,',1,30,'dept','0',',tomhao,',0,0,'','2015-12-08 10:04:39',0,0,'','0'),(820006,'市场部门','','','',0,0,',820006,',1,40,'dept','0',',tomhao,',0,0,'','2015-12-08 10:04:39',0,0,'','0'),(820007,'商务部门','','','',0,0,',820007,',1,50,'dept','0',',li,',0,0,'','2015-12-08 10:04:39',0,0,'','0'),(820008,'研发团队','','','',0,820003,',820003,820008,',2,10,'dept','0',',wu,',0,0,'','2015-12-08 10:05:22',0,0,'','0'),(820009,'产品团队','','','',0,820003,',820003,820009,',2,20,'dept','0',',wu,',0,0,'','2015-12-08 10:05:22',0,0,'','0'),(820010,'影视技术团队','','','',0,820003,',820003,820010,',2,30,'dept','0',',wu,',0,0,'','2015-12-08 10:05:22',0,0,'','0'),(820011,'内务团队','','','',0,820004,',820004,820011,',2,10,'dept','0',',wang,',0,0,'','2015-12-08 10:06:14',0,0,'','0'),(820012,'无锡团队','','','',0,820004,',820004,820012,',2,20,'dept','0',',lishan,',0,0,'','2015-12-08 10:06:14',0,0,'','0'),(820013,'财务团队','','','',0,820004,',820004,820013,',2,30,'dept','0',',wang,',0,0,'','2015-12-08 10:06:14',0,0,'','0'),(820014,'运维团队','','','',0,820003,',820003,820014,',2,40,'dept','0',',wu,',0,0,'','2015-12-08 10:06:35',0,0,'','0'),(820015,'活动计划','','','',0,0,',820015,',1,30,'forum','0','',0,0,'','2015-12-08 10:07:38',0,0,'','0'),(820016,'月度团建','','','',0,820015,',820015,820016,',2,10,'forum','0','',0,0,'','2015-12-08 10:08:01',0,0,'','0'),(820017,'年会计划','','','',0,820015,',820015,820017,',2,20,'forum','0','',0,0,'','2015-12-08 10:08:01',0,0,'','0'),(820018,'云计算','','','',0,820002,',820002,820018,',2,10,'forum','0','',0,0,'','2015-12-08 10:08:14',0,0,'','0'),(820019,'影视制作','','','',0,820002,',820002,820019,',2,20,'forum','0','',0,0,'','2015-12-08 10:08:14',0,0,'','0'),(820020,'流程','','','',0,820001,',820001,820020,',2,10,'forum','0','',0,0,'','2015-12-08 10:08:37',0,0,'','0'),(820021,'研发','','','',0,820001,',820001,820021,',2,20,'forum','0','',0,0,'','2015-12-08 10:08:37',0,0,'','0'),(820022,'新生上路','','','',0,0,',820022,',1,10,'blog','0','',0,0,'','2015-12-08 10:09:16',0,0,'','0'),(820023,'投资部','','','',0,0,',820023,',1,60,'dept','0',',li,',0,0,'','2015-12-08 15:01:03',0,0,'','0'),(820024,'服务器','','','',0,0,',820024,',1,10,'in','0','',0,0,'','2015-12-08 16:50:58',0,0,'','0'),(820025,'云服务','','','',0,0,',820025,',1,20,'in','0','',0,0,'','2015-12-08 16:50:58',0,0,'','0'),(820026,'技术服务','','','',0,0,',820026,',1,30,'in','0','',0,0,'','2015-12-08 16:50:58',0,0,'','0'),(820027,'投资','','','',0,0,',820027,',1,40,'in','0','',0,0,'','2015-12-08 16:50:58',0,0,'','0'),(820028,'服务类','','','',0,0,',820028,',1,10,'out','0','',0,0,'','2015-12-08 16:51:22',0,0,'','0'),(820041,'电脑','','','',0,820034,',820034,820041,',2,10,'out','0','',0,0,'','2015-12-09 15:38:02',0,0,'','1'),(820030,'投资','','','',0,0,',820030,',1,30,'out','0','',0,0,'','2015-12-08 16:51:22',0,0,'','0'),(820031,'设备采购','','','',0,0,',820031,',1,40,'out','0','',0,0,'','2015-12-08 16:51:22',0,0,'','0'),(820034,'日常运营','','','',0,0,',820034,',1,70,'out','0','',0,0,'','2015-12-09 15:34:52',0,0,'','1'),(820032,'研发','','','',0,0,',820032,',1,50,'out','0','',0,0,'','2015-12-08 19:51:15',0,0,'','0'),(820045,'工资','','','',0,820032,',820032,820045,',2,10,'out','0','',0,0,'','2015-12-09 15:39:34',0,0,'','0'),(820048,'房屋支出','','','',0,0,',820048,',1,80,'out','0','',0,0,'','2015-12-09 15:40:03',0,0,'','1'),(820036,'技术服务','','','',0,820028,',820028,820036,',2,10,'out','0','',0,0,'','2015-12-09 15:36:28',0,0,'','1'),(820037,'通讯服务','','','',0,820028,',820028,820037,',2,20,'out','0','',0,0,'','2015-12-09 15:36:28',0,0,'','1'),(820038,'公关服务','','','',0,820028,',820028,820038,',2,30,'out','0','',0,0,'','2015-12-09 15:36:28',0,0,'','1'),(820039,'咨询服务','','','',0,820028,',820028,820039,',2,40,'out','0','',0,0,'','2015-12-09 15:36:53',0,0,'','1'),(820040,'法务服务','','','',0,820028,',820028,820040,',2,50,'out','0','',0,0,'','2015-12-09 15:36:53',0,0,'','1'),(820042,'电脑配件','','','',0,820034,',820034,820042,',2,20,'out','0','',0,0,'','2015-12-09 15:38:02',0,0,'','1'),(820043,'服务器','','','',0,820031,',820031,820043,',2,30,'out','0','',0,0,'','2015-12-09 15:38:38',0,0,'','0'),(820044,'服务器配件','','','',0,820031,',820031,820044,',2,40,'out','0','',0,0,'','2015-12-09 15:38:38',0,0,'','0'),(820046,'设备','','','',0,820032,',820032,820046,',2,20,'out','0','',0,0,'','2015-12-09 15:39:34',0,0,'','0'),(820047,'服务','','','',0,820032,',820032,820047,',2,30,'out','0','',0,0,'','2015-12-09 15:39:34',0,0,'','0'),(820049,'办公室','','','',0,820048,',820048,820049,',2,10,'out','0','',0,0,'','2015-12-09 15:41:15',0,0,'','1'),(820050,'宿舍','','','',0,820048,',820048,820050,',2,20,'out','0','',0,0,'','2015-12-09 15:41:15',0,0,'','1'),(820051,'采购','','','',0,820034,',820034,820051,',2,10,'out','0','',0,0,'','2015-12-09 15:42:31',0,0,'','1'),(820052,'酒店','','','',0,820034,',820034,820052,',2,20,'out','0','',0,0,'','2015-12-09 15:42:31',0,0,'','1'),(820053,'交通','','','',0,820034,',820034,820053,',2,30,'out','0','',0,0,'','2015-12-09 15:42:31',0,0,'','1'),(820054,'其他','','','',0,820034,',820034,820054,',2,40,'out','0','',0,0,'','2015-12-09 15:42:31',0,0,'','1'),(820055,'新闻','','','',0,0,',820055,',1,10,'announce','0','',0,0,'','2015-12-09 15:51:12',0,0,'','0'),(820056,'产品系列','','','',1,0,',820056,',1,10,'customdoc','0','',0,0,'','2015-12-09 21:03:18',0,0,'','0'),(820057,'技术系列','','','',1,0,',820057,',1,20,'customdoc','0','',0,0,'','2015-12-09 21:03:58',0,0,'','0'),(820058,'公司介绍','','','',1,0,',820058,',1,30,'customdoc','0','',0,0,'','2015-12-10 00:53:13',0,0,'','0');
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` char(30) NOT NULL DEFAULT '',
  `app` varchar(30) NOT NULL DEFAULT 'sys',
  `module` varchar(30) NOT NULL,
  `section` char(30) NOT NULL DEFAULT '',
  `key` char(30) DEFAULT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`owner`,`app`,`module`,`section`,`key`)
) ENGINE=MyISAM AUTO_INCREMENT=495 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (340,'system','sys','common','global','version','3.1'),(2,'admin','sys','common','','blockInited','1'),(3,'admin','team','common','','blockInited','1'),(4,'admin','cash','common','','blockInited','1'),(5,'system','sys','setting','','currency','rmb,usd,hkd'),(6,'admin','oa','common','','blockInited','1'),(7,'admin','crm','common','','blockInited','1'),(8,'tomhao','sys','common','','blockInited','1'),(9,'tomhao','team','common','','blockInited','1'),(10,'tomhao','cash','common','','blockInited','1'),(11,'tomhao','oa','common','','blockInited','1'),(119,'system','sys','common','company','name','量子云未来（北京）信息科技有限公司'),(120,'system','sys','common','company','content','量子云未来（北京）信息科技有限公司（简称“量子云”）以未来网络架构（ SDN , NDN ）和高性能计算（ HPC , GPGPU \n）技术为主，结合最前沿的云计算、虚拟化和大数据技术，为垂直行业（互联网、人工智能、金融、医疗、影视、教育、新能源、建筑等）提供完整的网络架构、云\n计算、数据中心和大数据系统的解决方案。'),(121,'system','sys','common','company','uid','5666c3a255036'),(15,'tomhao','crm','common','','blockInited','1'),(16,'zhang','team','common','','blockInited','1'),(17,'zhang','crm','common','','blockInited','1'),(18,'zhang','oa','common','','blockInited','1'),(19,'zhang','cash','common','','blockInited','1'),(20,'lrr','sys','common','','blockInited','1'),(21,'lrr','oa','common','','blockInited','1'),(494,'lrr','crm','common','','blockInited','1'),(23,'lrr','team','common','','blockInited','1'),(24,'wu','sys','common','','blockInited','1'),(25,'wu','cash','common','','blockInited','1'),(26,'wu','crm','common','','blockInited','1'),(27,'wu','oa','common','','blockInited','1'),(28,'li','sys','common','','blockInited','1'),(29,'li','team','common','','blockInited','1'),(30,'li','cash','common','','blockInited','1'),(31,'li','oa','common','','blockInited','1'),(32,'li','crm','common','','blockInited','1'),(483,'system','sys','mail','smtp','host','smtp.partner.outlook.cn'),(484,'system','sys','mail','smtp','port','587'),(485,'system','sys','mail','smtp','auth','1'),(486,'system','sys','mail','smtp','username','noreply@lzyco.com'),(487,'system','sys','mail','smtp','password','abc12345XYZ123'),(488,'system','sys','mail','smtp','secure','tls'),(489,'system','sys','mail','smtp','debug','1'),(490,'system','sys','mail','','turnon','1'),(491,'system','sys','mail','','mta','smtp'),(492,'system','sys','mail','','fromAddress','noreply@lzyco.com'),(493,'system','sys','mail','','fromName','量子云未来（北京）信息科技有限公司'),(473,'system','sys','mail','','debug','1'),(474,'system','sys','mail','','charset','utf-8'),(475,'system','sys','mail','','auth','0'),(476,'system','sys','mail','','host','smtp.partner.outlook.cn'),(477,'system','sys','mail','','port','587'),(478,'system','sys','mail','','secure','tls'),(479,'system','sys','mail','','username','noreply@lzyco.com'),(480,'system','sys','mail','','password','abc12345XYZ123'),(95,'lrr','cash','common','','blockInited','1'),(96,'ws','sys','common','','blockInited','1'),(97,'ws','team','common','','blockInited','1'),(98,'ws','oa','common','','blockInited','1'),(99,'lwz','sys','common','','blockInited','1'),(285,'lwz','cash','common','','blockInited','1'),(101,'lwz','oa','common','','blockInited','1'),(102,'lwz','team','common','','blockInited','1'),(103,'lwz','crm','common','','blockInited','1'),(328,'system','oa','attend','','signInLimit','09:30'),(329,'system','oa','attend','','signOutLimit','18:30'),(330,'system','oa','attend','','workingDays','5'),(331,'system','oa','attend','','reviewedBy',''),(332,'system','oa','attend','','mustSignOut','yes'),(216,'admin','sys','common','','customApp','{}'),(123,'wang','oa','common','','blockInited','1'),(124,'wang','crm','common','','blockInited','1'),(125,'wu','team','common','','blockInited','1'),(126,'zhh','sys','common','','blockInited','1'),(127,'zhh','team','common','','blockInited','1'),(128,'zhh','oa','common','','blockInited','1'),(129,'sky','sys','common','','blockInited','1'),(130,'sky','crm','common','','blockInited','1'),(239,'system','oa','refund','','firstReviewer',''),(240,'system','oa','refund','','secondReviewer','li'),(217,'sky','oa','common','','blockInited','1'),(224,'sky','cash','common','','blockInited','1'),(219,'sky','team','common','','blockInited','1'),(220,'ljy','sys','common','','blockInited','1'),(221,'ljy','team','common','','blockInited','1'),(225,'ljy','oa','common','','blockInited','1'),(226,'wangmengting','sys','common','','blockInited','1'),(227,'wangmengting','team','common','','blockInited','1'),(228,'wangmengting','oa','common','','blockInited','1'),(241,'libin','sys','common','','blockInited','1'),(242,'libin','oa','common','','blockInited','1'),(243,'libin','team','common','','blockInited','1'),(254,'songyao','sys','common','','blockInited','1'),(260,'songyao','oa','common','','blockInited','1'),(261,'songyao','team','common','','blockInited','1'),(262,'system','crm','customer','','reserveDays','15'),(283,'chenchao','sys','common','','blockInited','1'),(284,'chenchao','oa','common','','blockInited','1'),(286,'wang','cash','common','','blockInited','1'),(287,'yjs','sys','common','','blockInited','1'),(288,'yjs','oa','common','','blockInited','1'),(289,'yjs','team','common','','blockInited','1'),(310,'lili','sys','common','','blockInited','1'),(311,'lili','oa','common','','blockInited','1'),(312,'lili','team','common','','blockInited','1'),(333,'belle','sys','common','','blockInited','1'),(334,'jason','sys','common','','blockInited','1'),(335,'jason','oa','common','','blockInited','1'),(339,'jason','cash','common','','blockInited','1'),(337,'jason','team','common','','blockInited','1'),(338,'jason','crm','common','','blockInited','1');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_cron`
--

DROP TABLE IF EXISTS `sys_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_cron` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `m` varchar(20) NOT NULL,
  `h` varchar(20) NOT NULL,
  `dom` varchar(20) NOT NULL,
  `mon` varchar(20) NOT NULL,
  `dow` varchar(20) NOT NULL,
  `command` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `buildin` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL,
  `lastTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_cron`
--

LOCK TABLES `sys_cron` WRITE;
/*!40000 ALTER TABLE `sys_cron` DISABLE KEYS */;
INSERT INTO `sys_cron` VALUES (1,'*','*','*','*','*','','监控定时任务','ranzhi',1,'normal','0000-00-00 00:00:00'),(2,'1','1','*','*','*','appName=sys&moduleName=backup&methodName=backup&reload=0','定时备份任务','ranzhi',0,'normal','0000-00-00 00:00:00'),(3,'1','1','*','*','*','appName=sys&moduleName=backup&methodName=batchdelete&saveDays=30','删除30天前的备份','ranzhi',0,'normal','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sys_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_entry`
--

DROP TABLE IF EXISTS `sys_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_entry` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `abbr` char(6) NOT NULL,
  `code` varchar(20) NOT NULL,
  `buildin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integration` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `open` varchar(20) NOT NULL,
  `key` char(32) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `login` varchar(255) NOT NULL,
  `logout` varchar(255) NOT NULL,
  `block` varchar(255) NOT NULL,
  `control` varchar(10) NOT NULL DEFAULT 'simple',
  `size` varchar(50) NOT NULL DEFAULT 'max',
  `position` varchar(10) NOT NULL DEFAULT 'default',
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `zentao` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_entry`
--

LOCK TABLES `sys_entry` WRITE;
/*!40000 ALTER TABLE `sys_entry` DISABLE KEYS */;
INSERT INTO `sys_entry` VALUES (1,'CRM','','crm',1,1,'iframe','epet8b8ae1g89rxzquf4ubv37ul5tite','*','theme/default/images/ips/app-crm.png','../crm','','','simple','max','default',1,10,'0'),(2,'OA','OA','oa',1,1,'iframe','1a673c4c3c85fadcf0333e0a4596d220','*','theme/default/images/ips/app-oa.png','../oa','','','simple','max','default',1,20,'0'),(3,'CASH','','cash',1,1,'iframe','438d85f2c2b04372662c63ebfb1c4c2f','*','theme/default/images/ips/app-cash.png','../cash','','','simple','max','default',1,30,'0'),(4,'TEAM','','team',1,1,'iframe','6c46d9fe76a1afa1cd61f946f1072d1e','*','theme/default/images/ips/app-team.png','../team','','','simple','max','default',1,40,'0');
/*!40000 ALTER TABLE `sys_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pathname` char(50) NOT NULL,
  `title` char(90) NOT NULL,
  `extension` char(30) NOT NULL,
  `size` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `objectType` char(20) NOT NULL,
  `objectID` mediumint(9) NOT NULL,
  `createdBy` char(30) NOT NULL DEFAULT '',
  `createdDate` datetime NOT NULL,
  `editor` enum('1','0') NOT NULL DEFAULT '0',
  `primary` enum('1','0') DEFAULT '0',
  `public` enum('1','0') NOT NULL DEFAULT '1',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object` (`objectType`,`objectID`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,'201512/f_cd429ca12c6e3f12c03d06e2725a1466.png','Screen Shot 2015-12-08 at 3.33.59 PM','png',904389,'files',0,'li','2015-12-08 15:34:29','0','0','1',0,''),(2,'201512/f_e67a393923250f1b8dfe11bc5a7e8130.pdf','盛科购销合同-交换机-20150814','pdf',1482379,'contract',2,'lrr','2015-12-08 18:03:26','0','0','1',0,''),(3,'201512/f_b1f1d9650273eb8918e99228713e7940.pdf','盛科购销合同-交换机-20150814','pdf',1482379,'contract',3,'lrr','2015-12-08 18:07:54','0','0','1',0,''),(4,'201512/f_1e933c5a30dc6935217e93f699fe50bb.jpg','d','jpg',71607,'files',0,'li','2015-12-08 18:44:42','0','0','1',0,''),(5,'201512/f_305014eca36625179f57e2a036706954.jpg','d','jpg',71607,'files',0,'li','2015-12-08 18:44:55','0','0','1',0,''),(6,'201512/f_e243236d511e4f6f3e523c55cec2ccf9.pdf','深圳谷威合同1','pdf',1150621,'contract',5,'lrr','2015-12-08 18:46:47','0','0','1',0,''),(7,'201512/f_be4a14223ce990b815c9c8305bdaf3e7.pdf','20151115-北京量子云-倍飞-330400.PDF','pdf',1800169,'contract',6,'lrr','2015-12-08 18:58:31','0','0','1',0,''),(8,'201512/f_ef6ab04438f3f437206d5da54502e21b.xlsx','Dachang IT Budget Breakdown-Quantum Cloud-Base','xlsx',13183,'action',149,'li','2015-12-08 19:04:23','0','0','1',0,''),(9,'201512/f_0c8338e33fe50857ee313a2f36ee562f.png','lzy','png',12586,'files',0,'admin','2015-12-09 15:27:06','0','0','1',0,''),(10,'201512/f_69361ed769ef99a24bd27e80d70ac0a2.docx','1.电影联合投资合作合同-2015-12-09','docx',27035,'task',4,'li','2015-12-09 21:38:35','0','0','1',0,''),(11,'201512/f_641aeee572daade2e803e1fd8c9ab43e.docx','1.电影联合投资合作合同-2015-12-09','docx',27035,'task',3,'li','2015-12-09 21:38:54','0','0','1',0,''),(12,'201512/f_4acb9b061dac93cb0686e39103620aea.doc','3.渲染农场服务协议-2015-12-09','doc',44544,'task',4,'li','2015-12-09 21:40:00','0','0','1',0,''),(13,'201512/f_f9e20e2d0a314d41a6d3075bf5e9a723.pptx','量子云介绍-中央新影','pptx',2933765,'task',6,'li','2015-12-10 09:50:41','0','0','1',0,''),(14,'201512/f_977277ce7d88e67cee71a07a42e8bf88.png','lzy','png',12586,'doc',3,'li','2015-12-10 09:53:29','0','0','1',0,''),(15,'201512/f_a32e889c63d9be31c92e54f501b35b23.doc','10月份日常费用明细','doc',23552,'refund',8,'lwz','2015-12-10 13:09:58','0','0','1',0,''),(16,'201512/f_3c55fe5c8134b90fce980b2a68679a1f.jpg','发票（交通）','jpg',47307,'refund',8,'lwz','2015-12-10 13:09:58','0','0','1',0,''),(17,'201512/f_f6f875c435c6d3c8681abd57c26b728f.jpg','发票（通讯）','jpg',25841,'refund',8,'lwz','2015-12-10 13:09:58','0','0','1',0,''),(18,'201512/f_6e4930367113da8f1c31093da25edc88.doc','11月份报销费用明细','doc',29184,'refund',11,'lwz','2015-12-10 13:16:35','0','0','1',0,''),(19,'201512/f_d04ab9bd019162e0aebfc1b4f949240b.jpg','发票（交通）','jpg',44836,'refund',11,'lwz','2015-12-10 13:16:35','0','0','1',0,''),(20,'201512/f_4a60ba541fc53dffe5a039e275de60a9.jpg','发票（通讯）','jpg',35217,'refund',11,'lwz','2015-12-10 13:16:35','0','0','1',0,''),(21,'201512/f_b01d2068bb7786b2b1bc6bbdc54329aa.jpg','汪洋泽.JP','jpg',2518715,'files',0,'wang','2015-12-10 14:38:58','0','0','1',0,''),(22,'201512/f_96eb341d6d8c92cdc7b16fa28d842970.jpg','日常费用报销清单','jpg',126792,'refund',21,'tomhao','2015-12-10 16:29:25','0','0','1',0,''),(23,'201512/f_c35bd140b2cd4378c6aaadcf26cc5f5c.jpg','费用清单','jpg',150607,'refund',21,'tomhao','2015-12-10 16:29:25','0','0','1',0,''),(24,'201512/f_8fbf419e092101c7588bd2be801203b2.pptx','量子云介绍-中央新影','pptx',2066785,'task',6,'li','2015-12-10 17:46:29','0','0','1',0,''),(25,'201512/f_2f2a6f7c42bbdca53b782d98ff876ac7.pptx','量子云介绍20151210','pptx',2066784,'task',11,'li','2015-12-10 17:53:07','0','0','1',0,''),(26,'201512/f_2ad18ec2759d41d45dc53b16b7d3a915.pptx','量子云介绍20151210','pptx',2066784,'task',12,'li','2015-12-10 17:53:07','0','0','1',0,''),(27,'201512/f_2ada2d0de08ab4fc8c2ec116805c90a5.docx','BJLZY20151203中央财经大学视频制作合同(新)','docx',29781,'action',392,'sky','2015-12-11 11:03:56','0','0','1',0,''),(28,'201512/f_9dc98832b1537222c92b911d6ba12f94.xlsx','20151210_Base FX Q_2670_19','xlsx',11404,'action',445,'sky','2015-12-23 15:15:35','0','0','1',0,''),(29,'201512/f_a6c1a6faa6ea6d7be3fb59627f6e9e64.xlsx','报价单——天工异彩','xlsx',10273,'action',476,'sky','2015-12-25 17:08:51','0','0','1',0,''),(30,'201512/f_fadd61399054b75f8f8477db8d9ccc00.xlsx','报价单——天工异彩','xlsx',10273,'action',477,'sky','2015-12-25 17:09:13','0','0','1',0,''),(31,'201512/f_0ffca00a23f125415f352a6b470a834d.xlsx','20151210_Base FX Q_2670_19','xlsx',11496,'action',478,'sky','2015-12-25 17:10:03','0','0','1',0,''),(32,'201601/f_f320aee6d6f562eafb1d29d23ddd5068.png','logo','png',164616,'files',0,'li','2016-01-07 11:01:34','0','0','1',0,''),(33,'201601/f_b1a38e79c3ddcc37fe8828e28926ae05.jpg','IMG_3399.JP','jpg',81994,'files',0,'li','2016-01-07 11:27:04','0','0','1',0,'');
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_group`
--

DROP TABLE IF EXISTS `sys_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `desc` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_group`
--

LOCK TABLES `sys_group` WRITE;
/*!40000 ALTER TABLE `sys_group` DISABLE KEYS */;
INSERT INTO `sys_group` VALUES (1,'高管团队','管理员拥有前台所有权限'),(2,'财务专员','财务专员拥有现金流所有权限'),(3,'销售经理','销售经理拥有客户管理所有权限'),(4,'销售团队','默认的销售人员权限'),(5,'普通用户','默认的普通账号权限'),(8,'行政团队',''),(7,'市场团队',''),(9,'商务团队','采购，合约');
/*!40000 ALTER TABLE `sys_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_grouppriv`
--

DROP TABLE IF EXISTS `sys_grouppriv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_grouppriv` (
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` char(30) NOT NULL DEFAULT '',
  `method` char(30) NOT NULL DEFAULT '',
  UNIQUE KEY `group` (`group`,`module`,`method`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_grouppriv`
--

LOCK TABLES `sys_grouppriv` WRITE;
/*!40000 ALTER TABLE `sys_grouppriv` DISABLE KEYS */;
INSERT INTO `sys_grouppriv` VALUES (1,'address','browse'),(1,'address','create'),(1,'address','delete'),(1,'address','edit'),(1,'announce','browse'),(1,'announce','create'),(1,'announce','delete'),(1,'announce','edit'),(1,'announce','view'),(1,'apppriv','cash'),(1,'apppriv','crm'),(1,'apppriv','oa'),(1,'apppriv','team'),(1,'apppriv','zentao'),(1,'attend','browseReview'),(1,'attend','company'),(1,'attend','department'),(1,'attend','export'),(1,'attend','review'),(1,'attend','setManager'),(1,'attend','settings'),(1,'balance','browse'),(1,'blog','create'),(1,'blog','delete'),(1,'blog','edit'),(1,'blog','index'),(1,'blog','view'),(1,'contact','browse'),(1,'contact','create'),(1,'contact','delete'),(1,'contact','edit'),(1,'contact','vcard'),(1,'contact','view'),(1,'contract','browse'),(1,'contract','cancel'),(1,'contract','create'),(1,'contract','delete'),(1,'contract','deleteDelivery'),(1,'contract','deleteReturn'),(1,'contract','delivery'),(1,'contract','edit'),(1,'contract','editDelivery'),(1,'contract','editReturn'),(1,'contract','finish'),(1,'contract','receive'),(1,'contract','view'),(1,'crm','manageAll'),(1,'customer','assign'),(1,'customer','browse'),(1,'customer','contact'),(1,'customer','contract'),(1,'customer','create'),(1,'customer','delete'),(1,'customer','edit'),(1,'customer','linkContact'),(1,'customer','order'),(1,'customer','view'),(1,'depositor','browse'),(1,'doc','browse'),(1,'doc','create'),(1,'doc','createLib'),(1,'doc','delete'),(1,'doc','deleteLib'),(1,'doc','edit'),(1,'doc','editLib'),(1,'doc','view'),(1,'forum','admin'),(1,'forum','board'),(1,'forum','index'),(1,'forum','update'),(1,'holiday','create'),(1,'holiday','delete'),(1,'holiday','edit'),(1,'leave','browseReview'),(1,'leave','company'),(1,'leave','review'),(1,'my','company'),(1,'order','activate'),(1,'order','assign'),(1,'order','browse'),(1,'order','close'),(1,'order','contact'),(1,'order','create'),(1,'order','delete'),(1,'order','edit'),(1,'order','view'),(1,'product','browse'),(1,'product','create'),(1,'product','delete'),(1,'product','edit'),(1,'product','view'),(1,'provider','browse'),(1,'provider','contact'),(1,'provider','create'),(1,'provider','delete'),(1,'provider','edit'),(1,'provider','linkContact'),(1,'provider','view'),(1,'refund','browseReview'),(1,'refund','company'),(1,'refund','reimburse'),(1,'refund','review'),(1,'refund','setCategory'),(1,'refund','settings'),(1,'refund','todo'),(1,'report','browse'),(1,'resume','browse'),(1,'resume','create'),(1,'resume','delete'),(1,'resume','edit'),(1,'sales','browse'),(1,'sales','create'),(1,'sales','delete'),(1,'sales','edit'),(1,'setting','customerPool'),(1,'setting','lang'),(1,'setting','reset'),(1,'task','deleteAll'),(1,'task','editAll'),(1,'task','viewAll'),(1,'thread','delete'),(1,'thread','deleteFile'),(1,'thread','edit'),(1,'thread','post'),(1,'thread','stick'),(1,'thread','switchStatus'),(1,'thread','transfer'),(1,'thread','view'),(1,'trade','browse'),(1,'trade','report'),(1,'tradebrowse','out'),(1,'tree','browse'),(1,'tree','children'),(1,'tree','delete'),(1,'tree','edit'),(1,'trip','company'),(1,'trip','department'),(1,'user','colleague'),(2,'address','browse'),(2,'announce','browse'),(2,'announce','view'),(2,'apppriv','cash'),(2,'apppriv','crm'),(2,'apppriv','oa'),(2,'apppriv','team'),(2,'attend','company'),(2,'attend','export'),(2,'balance','browse'),(2,'balance','create'),(2,'balance','delete'),(2,'balance','edit'),(2,'blog','create'),(2,'blog','edit'),(2,'blog','index'),(2,'blog','view'),(2,'contact','browse'),(2,'contact','vcard'),(2,'contact','view'),(2,'contract','browse'),(2,'contract','view'),(2,'crm','manageAll'),(2,'customer','browse'),(2,'customer','contact'),(2,'customer','contract'),(2,'customer','order'),(2,'customer','view'),(2,'depositor','activate'),(2,'depositor','browse'),(2,'depositor','check'),(2,'depositor','create'),(2,'depositor','delete'),(2,'depositor','edit'),(2,'depositor','forbid'),(2,'depositor','savebalance'),(2,'doc','browse'),(2,'doc','create'),(2,'doc','createLib'),(2,'doc','edit'),(2,'doc','editLib'),(2,'doc','view'),(2,'forum','board'),(2,'forum','index'),(2,'my','company'),(2,'order','browse'),(2,'order','contact'),(2,'order','view'),(2,'product','view'),(2,'provider','browse'),(2,'provider','contact'),(2,'provider','view'),(2,'refund','browseReview'),(2,'refund','company'),(2,'refund','reimburse'),(2,'refund','review'),(2,'refund','setCategory'),(2,'refund','todo'),(2,'resume','browse'),(2,'resume','create'),(2,'sales','browse'),(2,'schema','browse'),(2,'schema','create'),(2,'schema','delete'),(2,'schema','edit'),(2,'schema','view'),(2,'setting','lang'),(2,'setting','reset'),(2,'thread','edit'),(2,'thread','post'),(2,'thread','stick'),(2,'thread','switchStatus'),(2,'thread','transfer'),(2,'thread','view'),(2,'trade','batchCreate'),(2,'trade','batchEdit'),(2,'trade','browse'),(2,'trade','create'),(2,'trade','delete'),(2,'trade','detail'),(2,'trade','edit'),(2,'trade','import'),(2,'trade','inveset'),(2,'trade','showimport'),(2,'trade','transfer'),(2,'tradebrowse','out'),(2,'tree','browse'),(2,'tree','children'),(2,'tree','edit'),(2,'trip','company'),(2,'trip','department'),(2,'user','colleague'),(3,'address','browse'),(3,'address','create'),(3,'address','edit'),(3,'announce','browse'),(3,'announce','create'),(3,'announce','edit'),(3,'announce','view'),(3,'apppriv','cash'),(3,'apppriv','crm'),(3,'apppriv','oa'),(3,'apppriv','team'),(3,'attend','browseReview'),(3,'attend','company'),(3,'attend','department'),(3,'attend','review'),(3,'attend','settings'),(3,'blog','create'),(3,'blog','edit'),(3,'blog','index'),(3,'blog','view'),(3,'contact','browse'),(3,'contact','create'),(3,'contact','edit'),(3,'contact','vcard'),(3,'contact','view'),(3,'contract','browse'),(3,'contract','create'),(3,'contract','deleteReturn'),(3,'contract','delivery'),(3,'contract','edit'),(3,'contract','editDelivery'),(3,'contract','editReturn'),(3,'contract','finish'),(3,'contract','receive'),(3,'contract','view'),(3,'crm','manageAll'),(3,'customer','assign'),(3,'customer','browse'),(3,'customer','contact'),(3,'customer','contract'),(3,'customer','create'),(3,'customer','edit'),(3,'customer','linkContact'),(3,'customer','order'),(3,'customer','view'),(3,'depositor','browse'),(3,'doc','browse'),(3,'doc','create'),(3,'doc','createLib'),(3,'doc','edit'),(3,'doc','editLib'),(3,'doc','view'),(3,'forum','admin'),(3,'forum','board'),(3,'forum','index'),(3,'order','activate'),(3,'order','assign'),(3,'order','browse'),(3,'order','close'),(3,'order','contact'),(3,'order','create'),(3,'order','delete'),(3,'order','edit'),(3,'order','view'),(3,'provider','browse'),(3,'provider','contact'),(3,'provider','create'),(3,'provider','edit'),(3,'provider','linkContact'),(3,'provider','view'),(3,'refund','browseReview'),(3,'refund','review'),(3,'resume','browse'),(3,'resume','create'),(3,'resume','edit'),(3,'sales','browse'),(3,'sales','create'),(3,'sales','delete'),(3,'sales','edit'),(3,'schema','browse'),(3,'schema','view'),(3,'setting','lang'),(3,'setting','reset'),(3,'task','viewAll'),(3,'thread','edit'),(3,'thread','post'),(3,'thread','stick'),(3,'thread','switchStatus'),(3,'thread','transfer'),(3,'thread','view'),(3,'trade','batchCreate'),(3,'trade','batchEdit'),(3,'trade','browse'),(3,'trade','create'),(3,'trade','report'),(3,'tree','browse'),(3,'tree','children'),(3,'tree','edit'),(3,'trip','company'),(3,'trip','department'),(3,'user','colleague'),(4,'address','browse'),(4,'address','create'),(4,'address','edit'),(4,'apppriv','crm'),(4,'contact','browse'),(4,'contact','create'),(4,'contact','edit'),(4,'contact','vcard'),(4,'contact','view'),(4,'contract','browse'),(4,'contract','create'),(4,'contract','deleteDelivery'),(4,'contract','delivery'),(4,'contract','edit'),(4,'contract','editDelivery'),(4,'contract','receive'),(4,'contract','view'),(4,'customer','assign'),(4,'customer','browse'),(4,'customer','contact'),(4,'customer','contract'),(4,'customer','create'),(4,'customer','edit'),(4,'customer','linkContact'),(4,'customer','order'),(4,'customer','view'),(4,'order','activate'),(4,'order','assign'),(4,'order','browse'),(4,'order','close'),(4,'order','contact'),(4,'order','create'),(4,'order','edit'),(4,'order','view'),(4,'resume','browse'),(4,'resume','create'),(4,'sales','browse'),(5,'announce','browse'),(5,'announce','view'),(5,'apppriv','oa'),(5,'apppriv','team'),(5,'blog','create'),(5,'blog','edit'),(5,'blog','index'),(5,'blog','view'),(5,'doc','browse'),(5,'doc','create'),(5,'doc','createLib'),(5,'doc','edit'),(5,'doc','editLib'),(5,'doc','view'),(5,'forum','admin'),(5,'forum','board'),(5,'forum','index'),(5,'task','viewAll'),(5,'thread','deleteFile'),(5,'thread','edit'),(5,'thread','post'),(5,'thread','stick'),(5,'thread','switchStatus'),(5,'thread','transfer'),(5,'thread','view'),(5,'trip','company'),(5,'trip','department'),(5,'user','colleague'),(7,'my','company'),(7,'report','browse'),(7,'setting','customerPool'),(7,'setting','lang'),(7,'setting','reset'),(7,'tree','browse'),(7,'tree','children'),(7,'tree','delete'),(7,'tree','edit'),(8,'announce','browse'),(8,'announce','create'),(8,'announce','edit'),(8,'announce','view'),(8,'apppriv','oa'),(8,'apppriv','team'),(8,'attend','company'),(8,'attend','department'),(8,'attend','export'),(8,'blog','create'),(8,'blog','delete'),(8,'blog','edit'),(8,'blog','index'),(8,'blog','view'),(8,'doc','browse'),(8,'doc','create'),(8,'doc','createLib'),(8,'doc','edit'),(8,'doc','editLib'),(8,'doc','view'),(8,'forum','board'),(8,'forum','index'),(8,'holiday','create'),(8,'holiday','delete'),(8,'holiday','edit'),(8,'leave','browseReview'),(8,'leave','company'),(8,'thread','delete'),(8,'thread','deleteFile'),(8,'thread','edit'),(8,'thread','post'),(8,'thread','stick'),(8,'thread','switchStatus'),(8,'thread','transfer'),(8,'thread','view'),(8,'trip','company'),(8,'trip','department'),(8,'user','colleague'),(9,'apppriv','cash'),(9,'apppriv','crm'),(9,'depositor','browse'),(9,'provider','browse'),(9,'provider','contact'),(9,'provider','create'),(9,'provider','edit'),(9,'provider','linkContact'),(9,'provider','view'),(9,'purchase','browse'),(9,'purchase','cancel'),(9,'purchase','create'),(9,'purchase','delete'),(9,'purchase','deleteDelivery'),(9,'purchase','deleteReturn'),(9,'purchase','delivery'),(9,'purchase','edit'),(9,'purchase','editDelivery'),(9,'purchase','editReturn'),(9,'purchase','export'),(9,'purchase','finish'),(9,'purchase','receive'),(9,'purchase','view'),(9,'schema','browse'),(9,'trade','browse');
/*!40000 ALTER TABLE `sys_grouppriv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field` varchar(30) NOT NULL DEFAULT '',
  `old` text NOT NULL,
  `new` text NOT NULL,
  `diff` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `action` (`action`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES (1,8,'public','0','1',''),(2,8,'level','0','A',''),(3,9,'name','北京地平线机器人','北京地平线机器人技术研发公司','001- <del>北京地平线机器人</del>\n001+ <ins>北京地平线机器人技术研发公司</ins>'),(4,9,'size','0','2',''),(5,9,'type','','limited',''),(6,9,'industry','0','4',''),(7,9,'area','0','110000',''),(8,10,'realname','李甫','杨铭',''),(9,10,'maker','0','1',''),(10,10,'title','','软件副总','001- <del></del>\n001+ <ins>软件副总</ins>'),(11,10,'gender','u','m',''),(12,60,'depositor','3','1',''),(13,60,'trader','3','0',''),(14,63,'depositor','1','3',''),(15,64,'trader','3','0',''),(16,65,'depositor','3','1',''),(17,65,'desc','','无锡量子云数字新媒体科技有限公司','001- <del></del>\n001+ <ins>无锡量子云数字新媒体科技有限公司</ins>'),(18,66,'desc','无锡量子云数字新媒体科技有限公司','','001- <del>无锡量子云数字新媒体科技有限公司</del>\n001+ <ins></ins>'),(19,70,'money','1000000.00','100000',''),(20,70,'trader','3','0',''),(21,83,'category','0','820031',''),(22,83,'contract','0','3',''),(23,114,'assignedTo','li','lrr',''),(24,114,'activatedDate','0000-00-00 00:00:00','',''),(25,115,'assignedTo','li','lrr',''),(26,115,'activatedDate','0000-00-00 00:00:00','',''),(27,134,'type','','limited',''),(28,134,'size','0','2',''),(29,134,'industry','0','34',''),(30,134,'area','0','110000',''),(31,134,'weibo','http://weibo.com/','',''),(32,134,'site','http://','',''),(33,138,'status','developing','normal',''),(34,158,'plan','73.00','73800',''),(35,158,'assignedTo','li','wang',''),(36,158,'activatedDate','0000-00-00 00:00:00','',''),(37,159,'plan','73.00','73800',''),(38,159,'assignedTo','li','wang',''),(39,159,'activatedDate','0000-00-00 00:00:00','',''),(40,171,'amount','73800.00','738000.00',''),(41,172,'amount','73800.00','738000.00',''),(42,173,'amount','73800.00','738000.00',''),(43,174,'plan','73800.00','738000.00',''),(44,174,'assignedTo','wang','li',''),(45,174,'activatedDate','0000-00-00 00:00:00','',''),(46,175,'plan','73800.00','738000.00',''),(47,175,'assignedTo','wang','li',''),(48,175,'activatedDate','0000-00-00 00:00:00','',''),(49,176,'product',',2,',',1,',''),(50,176,'activatedDate','0000-00-00 00:00:00','',''),(51,177,'product',',2,',',1,',''),(52,177,'activatedDate','0000-00-00 00:00:00','',''),(53,178,'product',',2,',',6,',''),(54,178,'activatedDate','0000-00-00 00:00:00','',''),(55,179,'product',',2,',',6,',''),(56,179,'activatedDate','0000-00-00 00:00:00','',''),(57,190,'returnedBy','','tomhao',''),(58,190,'returnedDate','0000-00-00','2015-10-22',''),(59,191,'returnedBy','','tomhao',''),(60,191,'returnedDate','0000-00-00','2015-10-22',''),(61,196,'returnedBy','lrr','tomhao',''),(62,197,'returnedBy','lrr','tomhao',''),(63,198,'return','doing','done',''),(64,199,'return','doing','done',''),(65,206,'trader','29','0',''),(66,225,'public','1','0',''),(67,226,'public','1','0',''),(68,227,'public','1','0',''),(69,228,'public','1','0',''),(70,239,'gender','u','m',''),(71,239,'phone','13986077535','+8613986077535',''),(72,240,'maker','0','1',''),(73,240,'gender','u','m',''),(74,241,'realname','吕局','吕建平',''),(75,241,'maker','0','1',''),(76,241,'dept','','工程部',''),(77,241,'title','','副总','001- <del></del>\n001+ <ins>副总</ins>'),(78,241,'gender','u','m',''),(79,255,'money','0.00','800',''),(80,255,'desc','','制作固定资产编号，采用二维码手段，可以更加便捷的知道固定资产信息。','001- <del></del>\n001+ <ins>制作固定资产编号，采用二维码手段，可以更加便捷的知道固定资产信息。</ins>'),(81,255,'detail','','2,3,4',''),(82,261,'public','0','1',''),(83,275,'members','li','lrr',''),(84,276,'members','li,lrr','lrr,wu',''),(85,277,'desc','','完成微博控收购手续','001- <del></del>\n001+ <ins>完成微博控收购手续</ins>'),(86,280,'realStarted','0000-00-00','2015-12-09',''),(87,280,'assignedTo','lrr','li',''),(88,280,'status','wait','done',''),(89,280,'finishedBy','','li',''),(90,280,'finishedDate','','2015-12-09 20:42:45',''),(91,281,'realStarted','0000-00-00','2015-12-09',''),(92,281,'assignedTo','zhang','li',''),(93,281,'status','wait','done',''),(94,281,'finishedBy','','li',''),(95,281,'finishedDate','','2015-12-09 20:43:00',''),(96,301,'members','li,lrr,tomhao,wang,wu,zhang','tomhao,wang,wu',''),(97,312,'whitelist','5','',''),(98,315,'whitelist','','1',''),(99,320,'public','0','1',''),(100,323,'public','0','1',''),(101,325,'name','办公室网络设备采购申请','网络设备采购申请','001- <del>办公室网络设备采购申请</del>\n001+ <ins>网络设备采购申请</ins>'),(102,325,'desc','<p>\n12/07的网络会议的决议内容之一：办公室重新采购一台交换机／防火墙和无锡网络组IPSEC。运维组提议采购华为USG2130<span>。</span>\n</p>\n<p>\n<br />\n</p>','<p>\n12/07的网络会议的决议后续跟进\n</p>\n<p>\n<br />\n</p>','002- <del>12/07的网络会议的决议内容之一：办公室重新采购一台交换机／防火墙和无锡网络组IPSEC。运维组提议采购华为USG2130<span>。</span></del>\n002+ <ins>12/07的网络会议的决议后续跟进</ins>'),(103,333,'desc','<p>\r\n12/07的网络会议的决议内容之二：无锡再采购一台万兆交换机以供neutron机器出工网。运维组提议采购盛科E580-24X，TF-QPQX003-N00光模块（一拖四光纤）<span>。</span>\r\n</p>\r\n<div>\r\n<br />\r\n</div>','<p>\r\n12/07的网络会议的决议内容之二：无锡再采购一台万兆交换机以供neutron机器出工网。运维组提议采购盛科E580-24X，TF-QPQX003-N00光模块（一拖四光纤）<span>。</span> \r\n</p>\r\n<div>\r\n<br />\r\n</div>','002- <del>12/07的网络会议的决议内容之二：无锡再采购一台万兆交换机以供neutron机器出工网。运维组提议采购盛科E580-24X，TF-QPQX003-N00光模块（一拖四光纤）<span>。</span></del>\n002+ <ins>12/07的网络会议的决议内容之二：无锡再采购一台万兆交换机以供neutron机器出工网。运维组提议采购盛科E580-24X，TF-QPQX003-N00光模块（一拖四光纤）<span>。</span></ins>'),(104,333,'pri','0','1',''),(105,334,'public','1','0',''),(106,335,'public','1','0',''),(107,336,'public','1','0',''),(108,340,'status','normal','signed',''),(109,340,'signedBy','','lwz',''),(110,340,'signedDate','0000-00-00','2015-11-23',''),(111,340,'activatedDate','0000-00-00 00:00:00','',''),(112,341,'status','normal','signed',''),(113,341,'signedBy','','lwz',''),(114,341,'signedDate','0000-00-00','2015-11-23',''),(115,341,'activatedDate','0000-00-00 00:00:00','',''),(116,343,'activatedDate','0000-00-00 00:00:00','',''),(117,344,'activatedDate','0000-00-00 00:00:00','',''),(118,361,'name','交通费用','交通费用（附件是日常及明细照片）','001- <del>交通费用</del>\n001+ <ins>交通费用（附件是日常及明细照片）</ins>'),(119,368,'finishedDate','','2015-12-10 17:46:35',''),(120,368,'status','wait','done',''),(121,368,'finishedBy','','li',''),(122,393,'status','normal','signed',''),(123,393,'signedBy','','sky',''),(124,393,'signedDate','0000-00-00','2015-12-11',''),(125,393,'activatedDate','0000-00-00 00:00:00','',''),(126,394,'status','normal','signed',''),(127,394,'signedBy','','sky',''),(128,394,'signedDate','0000-00-00','2015-12-11',''),(129,394,'activatedDate','0000-00-00 00:00:00','',''),(130,411,'public','0','1',''),(131,414,'public','0','1',''),(132,417,'public','0','1',''),(133,420,'public','0','1',''),(134,423,'public','0','1',''),(135,426,'public','0','1',''),(136,427,'public','1','0',''),(137,428,'public','1','0',''),(138,429,'public','1','0',''),(139,430,'public','1','0',''),(140,431,'public','1','0',''),(141,432,'public','1','0',''),(142,488,'public','0','1',''),(143,489,'public','0','1',''),(144,490,'public','0','1',''),(145,491,'public','0','1',''),(146,492,'public','0','1',''),(147,493,'public','0','1',''),(148,494,'public','0','1',''),(149,495,'public','0','1',''),(150,496,'public','0','1',''),(151,497,'public','0','1',''),(152,498,'public','0','1',''),(153,499,'desc','<p>\r\n12/07的网络会议的决议内容之一：办公室重新采购一台交换机／防火墙和无锡网络组IPSEC。运维组提议采购华为USG2130。\r\n</p>\r\n<div>\r\n<br />\r\n</div>','<p>\r\n12/07的网络会议的决议内容之一：办公室重新采购一台交换机／防火墙和无锡网络组IPSEC。运维组提议采购华为USG2130\r\n</p>\r\n<div>\r\n<br />\r\n</div>','002- <del>12/07的网络会议的决议内容之一：办公室重新采购一台交换机／防火墙和无锡网络组IPSEC。运维组提议采购华为USG2130。</del>\n002+ <ins>12/07的网络会议的决议内容之一：办公室重新采购一台交换机／防火墙和无锡网络组IPSEC。运维组提议采购华为USG2130</ins>'),(154,522,'public','1','0',''),(155,529,'status','closed','normal',''),(156,529,'activatedDate','0000-00-00 00:00:00','',''),(157,530,'status','closed','normal',''),(158,530,'activatedDate','0000-00-00 00:00:00','',''),(159,534,'status','signed','normal',''),(160,534,'activatedDate','0000-00-00 00:00:00','',''),(161,535,'status','signed','normal',''),(162,535,'activatedDate','0000-00-00 00:00:00','',''),(163,541,'public','1','0',''),(164,542,'public','1','0',''),(165,546,'public','1','0',''),(166,548,'public','1','0',''),(167,561,'status','closed','normal',''),(168,561,'finishedBy','li','',''),(169,561,'finishedDate','2015-12-08','0000-00-00',''),(170,562,'status','closed','normal',''),(171,562,'finishedBy','li','',''),(172,562,'finishedDate','2015-12-08','0000-00-00',''),(173,563,'status','closed','normal',''),(174,563,'finishedBy','li','',''),(175,563,'finishedDate','2015-12-08','0000-00-00',''),(176,569,'public','1','0',''),(177,570,'public','1','0',''),(178,571,'public','1','0',''),(179,578,'delivery','done','wait',''),(180,578,'return','done','wait',''),(181,578,'status','closed','normal',''),(182,578,'finishedBy','tomhao','',''),(183,578,'finishedDate','2016-01-07','0000-00-00',''),(184,579,'delivery','done','wait',''),(185,579,'return','done','wait',''),(186,579,'status','closed','normal',''),(187,579,'finishedBy','tomhao','',''),(188,579,'finishedDate','2016-01-07','0000-00-00',''),(189,580,'delivery','done','wait',''),(190,580,'return','done','wait',''),(191,580,'status','closed','normal',''),(192,580,'finishedBy','tomhao','',''),(193,580,'finishedDate','2016-01-07','0000-00-00','');
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lang`
--

DROP TABLE IF EXISTS `sys_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lang` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(30) NOT NULL,
  `app` varchar(30) NOT NULL DEFAULT 'sys',
  `module` varchar(30) NOT NULL,
  `section` varchar(30) NOT NULL,
  `key` varchar(60) NOT NULL,
  `value` text NOT NULL,
  `system` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang` (`app`,`lang`,`module`,`section`,`key`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lang`
--

LOCK TABLES `sys_lang` WRITE;
/*!40000 ALTER TABLE `sys_lang` DISABLE KEYS */;
INSERT INTO `sys_lang` VALUES (94,'all','sys','user','roleList','adminmgr','行政主管','1'),(78,'all','crm','product','lineList','mediacloud','影视渲染','0'),(93,'all','sys','user','roleList','hrmgr','人事主管','1'),(92,'all','sys','user','roleList','salemgr','销售经理','1'),(91,'all','sys','user','roleList','businessmgr','商务主管','0'),(90,'all','sys','user','roleList','marketmgr','市场主管','1'),(89,'all','sys','user','roleList','support','技术支持','1'),(88,'all','sys','user','roleList','service','客服','1'),(87,'all','sys','user','roleList','office','行政','1'),(86,'all','sys','user','roleList','hr','人事','1'),(85,'all','sys','user','roleList','business','商务助理','0'),(84,'all','sys','user','roleList','sale','销售','1'),(83,'all','sys','user','roleList','market','市场','1'),(82,'all','sys','user','roleList','pm','项目经理','1'),(81,'all','sys','user','roleList','dev','研发','1'),(79,'all','crm','product','lineList','rackonTop','机柜','0'),(80,'all','crm','product','lineList','cloud','云服务','0'),(77,'all','crm','product','lineList','default','私有云','1'),(95,'all','sys','user','roleList','servicemgr','客服主管','1'),(96,'all','sys','user','roleList','supportmgr','技术支持主管','1'),(97,'all','sys','user','roleList','top','高层管理','1'),(98,'all','sys','user','roleList','others','其他','1');
/*!40000 ALTER TABLE `sys_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_message`
--

DROP TABLE IF EXISTS `sys_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_message` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(20) NOT NULL,
  `objectType` varchar(30) NOT NULL DEFAULT '',
  `objectID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `account` char(30) DEFAULT NULL,
  `from` char(30) NOT NULL,
  `to` char(30) NOT NULL,
  `date` datetime NOT NULL,
  `content` text NOT NULL,
  `status` char(20) NOT NULL,
  `readed` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `object` (`objectType`,`objectID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_message`
--

LOCK TABLES `sys_message` WRITE;
/*!40000 ALTER TABLE `sys_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_package`
--

DROP TABLE IF EXISTS `sys_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_package` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `code` varchar(30) NOT NULL,
  `version` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `license` text NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'extension',
  `site` varchar(150) NOT NULL,
  `ranzhiCompatible` varchar(100) NOT NULL,
  `installedTime` datetime NOT NULL,
  `depends` varchar(100) NOT NULL,
  `dirs` text NOT NULL,
  `files` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `name` (`name`),
  KEY `addedTime` (`installedTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_package`
--

LOCK TABLES `sys_package` WRITE;
/*!40000 ALTER TABLE `sys_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_product`
--

DROP TABLE IF EXISTS `sys_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `line` varchar(30) NOT NULL DEFAULT 'default',
  `desc` text NOT NULL,
  `createdBy` varchar(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_product`
--

LOCK TABLES `sys_product` WRITE;
/*!40000 ALTER TABLE `sys_product` DISABLE KEYS */;
INSERT INTO `sys_product` VALUES (1,'服务器','real','normal','default','','admin','2015-12-08 16:31:24','tomhao','2015-12-09 21:02:01','0'),(2,'服务器','service','normal','default','','li','2015-12-08 18:19:21','','2015-12-08 18:19:21','1'),(3,'渲染服务','service','normal','mediacloud','','li','2015-12-08 18:57:48','','2015-12-08 18:57:48','0'),(4,'IDC托管','service','normal','rackonTop','','li','2015-12-08 18:58:36','tomhao','2015-12-09 20:56:50','0'),(5,'云服务','service','normal','cloud','','li','2015-12-08 18:58:52','','2015-12-08 18:58:52','0'),(6,'私有云建设方案','real','normal','default','','li','2015-12-08 19:01:05','tomhao','2015-12-09 21:01:00','0');
/*!40000 ALTER TABLE `sys_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_relation`
--

DROP TABLE IF EXISTS `sys_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_relation` (
  `type` char(20) NOT NULL,
  `id` mediumint(9) NOT NULL,
  `category` mediumint(8) NOT NULL,
  UNIQUE KEY `relation` (`type`,`id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_relation`
--

LOCK TABLES `sys_relation` WRITE;
/*!40000 ALTER TABLE `sys_relation` DISABLE KEYS */;
INSERT INTO `sys_relation` VALUES ('announce',1,820055);
/*!40000 ALTER TABLE `sys_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_schema`
--

DROP TABLE IF EXISTS `sys_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_schema` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` char(10) NOT NULL,
  `trader` char(10) NOT NULL,
  `type` char(10) NOT NULL,
  `money` char(10) NOT NULL,
  `desc` char(10) NOT NULL,
  `date` char(10) NOT NULL,
  `fee` char(10) NOT NULL,
  `dept` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_schema`
--

LOCK TABLES `sys_schema` WRITE;
/*!40000 ALTER TABLE `sys_schema` DISABLE KEYS */;
INSERT INTO `sys_schema` VALUES (1,'支付宝','','H','K','J','I,O','D','M',''),(2,'中信银行简版','','C','','E,D','G,H','A','','');
/*!40000 ALTER TABLE `sys_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_sso`
--

DROP TABLE IF EXISTS `sys_sso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_sso` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sid` char(32) NOT NULL,
  `entry` mediumint(8) unsigned NOT NULL,
  `token` char(32) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=375 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_sso`
--

LOCK TABLES `sys_sso` WRITE;
/*!40000 ALTER TABLE `sys_sso` DISABLE KEYS */;
INSERT INTO `sys_sso` VALUES (374,'simagcfrahrl9kufi5pqjj4a81',3,'d64dc010a1b07f1f9690ca63477e298a','2016-01-08 14:01:49');
/*!40000 ALTER TABLE `sys_sso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_tag`
--

DROP TABLE IF EXISTS `sys_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_tag` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `rank` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag` (`tag`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_tag`
--

LOCK TABLES `sys_tag` WRITE;
/*!40000 ALTER TABLE `sys_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_task`
--

DROP TABLE IF EXISTS `sys_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_task` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `customer` mediumint(8) unsigned NOT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  `category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `estimate` decimal(12,1) unsigned NOT NULL,
  `consumed` decimal(12,1) unsigned NOT NULL,
  `left` decimal(12,1) unsigned NOT NULL,
  `deadline` date NOT NULL,
  `status` enum('wait','doing','done','cancel','closed') NOT NULL DEFAULT 'wait',
  `statusCustom` tinyint(3) unsigned NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createdBy` varchar(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `assignedTo` varchar(30) NOT NULL,
  `assignedDate` datetime NOT NULL,
  `estStarted` date NOT NULL,
  `realStarted` date NOT NULL,
  `finishedBy` varchar(30) NOT NULL,
  `finishedDate` datetime NOT NULL,
  `canceledBy` varchar(30) NOT NULL,
  `canceledDate` datetime NOT NULL,
  `closedBy` varchar(30) NOT NULL,
  `closedDate` datetime NOT NULL,
  `closedReason` varchar(30) NOT NULL,
  `editedBy` varchar(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `key` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `statusOrder` (`statusCustom`),
  KEY `assignedTo` (`assignedTo`),
  KEY `createdBy` (`createdBy`),
  KEY `finishedBy` (`finishedBy`),
  KEY `closedBy` (`closedBy`),
  KEY `closedReason` (`closedReason`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_task`
--

LOCK TABLES `sys_task` WRITE;
/*!40000 ALTER TABLE `sys_task` DISABLE KEYS */;
INSERT INTO `sys_task` VALUES (1,4,0,0,0,'微博控变更','',1,0.0,0.0,0.0,'2015-12-17','done',0,'','完成微博控变更',0,'li','2015-12-09 20:41:16','li','2015-12-09 20:43:00','0000-00-00','2015-12-09','li','2015-12-09 20:43:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','li','2015-12-09 20:43:00','0',0),(2,4,0,0,0,'成立云模科技','',3,0.0,0.0,0.0,'0000-00-00','done',0,'','成立云模科技',0,'li','2015-12-09 20:41:16','li','2015-12-09 20:42:45','0000-00-00','2015-12-09','li','2015-12-09 20:42:45','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','li','2015-12-09 20:42:45','0',0),(3,6,0,0,0,'投资合同','',3,0.0,0.0,0.0,'2015-12-15','wait',0,'','联合出品，投资10%',0,'li','2015-12-09 21:37:51','wang','2015-12-09 21:37:51','0000-00-00','0000-00-00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','li','2015-12-09 21:38:54','0',0),(4,6,0,0,0,'渲染服务合同','',3,0.0,0.0,0.0,'2015-12-15','wait',0,'','获得100万渲染服务',0,'li','2015-12-09 21:37:51','wang','2015-12-09 21:37:51','0000-00-00','0000-00-00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','li','2015-12-09 21:40:00','0',0),(5,6,0,0,0,'哪吒计划书','',3,0.0,0.0,0.0,'0000-00-00','wait',0,'','',0,'li','2015-12-10 09:22:22','li','2015-12-10 09:22:22','0000-00-00','0000-00-00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','0',0),(6,4,0,0,0,'中央新影机房建设','',1,0.0,0.0,0.0,'2015-12-16','done',0,'','在温都水城建设IDC<br />',0,'li','2015-12-10 09:43:57','li','2015-12-10 17:46:38','0000-00-00','0000-00-00','li','2015-12-10 17:46:35','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','li','2015-12-10 17:46:38','0',0),(7,8,0,0,0,'办公网络设备采购','',2,0.0,0.0,0.0,'0000-00-00','wait',0,'','<p>\r\n12/07的网络会议的决议内容之一：办公室重新采购一台交换机／防火墙和无锡网络组IPSEC。运维组提议采购华为USG2130\r\n</p>\r\n<div>\r\n<br />\r\n</div>',0,'wu','2015-12-10 13:34:48','li','2015-12-10 13:34:48','0000-00-00','0000-00-00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','li','2016-01-07 10:25:36','0',0),(8,8,0,0,0,'无锡机房万兆交换机采购','',1,0.0,0.0,0.0,'0000-00-00','wait',0,'','<p>\r\n12/07的网络会议的决议内容之二：无锡再采购一台万兆交换机以供neutron机器出工网。运维组提议采购盛科E580-24X，TF-QPQX003-N00光模块（一拖四光纤）<span>。</span> \r\n</p>\r\n<div>\r\n<br />\r\n</div>',0,'wu','2015-12-10 13:39:23','li','2015-12-10 13:39:23','0000-00-00','0000-00-00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','wu','2015-12-10 13:39:45','0',0),(9,7,0,0,0,'商业计划书','',0,0.0,0.0,0.0,'2016-12-01','wait',0,'','',0,'li','2015-12-10 17:47:14','li','2015-12-10 17:47:14','0000-00-00','0000-00-00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','1',0),(10,7,0,0,0,'商业计划书','',0,0.0,0.0,0.0,'2016-12-01','wait',0,'','',0,'li','2015-12-10 17:47:15','li','2015-12-10 17:47:15','0000-00-00','0000-00-00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','0',0),(11,7,0,0,0,'介绍材料','',1,0.0,0.0,0.0,'2016-07-14','wait',0,'','',0,'li','2015-12-10 17:53:07','li','2015-12-10 17:53:07','0000-00-00','0000-00-00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','1',0),(12,7,0,0,0,'介绍材料','',1,0.0,0.0,0.0,'2016-07-14','wait',0,'','',0,'li','2015-12-10 17:53:07','li','2015-12-10 17:53:07','0000-00-00','0000-00-00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','li','2015-12-10 17:54:00','0',0);
/*!40000 ALTER TABLE `sys_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_team`
--

DROP TABLE IF EXISTS `sys_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_team` (
  `type` char(30) NOT NULL,
  `id` mediumint(8) NOT NULL DEFAULT '0',
  `account` char(30) NOT NULL DEFAULT '',
  `role` char(30) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00',
  `days` smallint(5) unsigned NOT NULL,
  `hours` float(2,1) unsigned NOT NULL DEFAULT '0.0',
  `estimate` decimal(12,1) unsigned NOT NULL,
  `consumed` decimal(12,1) unsigned NOT NULL,
  `left` decimal(12,1) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`type`,`id`,`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_team`
--

LOCK TABLES `sys_team` WRITE;
/*!40000 ALTER TABLE `sys_team` DISABLE KEYS */;
INSERT INTO `sys_team` VALUES ('project',1,'songyao','manager','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',2,'li','manager','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',2,'lrr','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',2,'wu','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',3,'zhang','manager','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',3,'lrr','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',3,'li','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',3,'wang','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',4,'li','manager','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',4,'tomhao','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',4,'wang','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',4,'wu','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',5,'li','manager','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',5,'zhang','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',5,'lrr','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',5,'wang','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',6,'li','manager','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',6,'tomhao','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',6,'wang','member','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',7,'li','manager','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',8,'li','manager','0000-00-00',0,0.0,0.0,0.0,0.0,0),('project',8,'wu','member','0000-00-00',0,0.0,0.0,0.0,0.0,0);
/*!40000 ALTER TABLE `sys_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `dept` mediumint(8) unsigned NOT NULL,
  `account` char(30) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `realname` char(30) NOT NULL DEFAULT '',
  `role` char(20) NOT NULL,
  `nickname` char(60) NOT NULL DEFAULT '',
  `admin` enum('no','common','super') NOT NULL DEFAULT 'no',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `gender` enum('f','m','u') NOT NULL DEFAULT 'u',
  `email` char(90) NOT NULL DEFAULT '',
  `skype` char(90) NOT NULL,
  `qq` char(20) NOT NULL DEFAULT '',
  `yahoo` char(90) NOT NULL DEFAULT '',
  `gtalk` char(90) NOT NULL DEFAULT '',
  `wangwang` char(90) NOT NULL DEFAULT '',
  `site` varchar(100) NOT NULL,
  `mobile` char(11) NOT NULL DEFAULT '',
  `phone` char(20) NOT NULL DEFAULT '',
  `address` char(120) NOT NULL DEFAULT '',
  `zipcode` char(10) NOT NULL DEFAULT '',
  `visits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `last` datetime NOT NULL,
  `ping` datetime NOT NULL,
  `fails` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `join` datetime NOT NULL,
  `locked` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin` (`admin`),
  KEY `account` (`account`,`password`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,0,'admin','b645a1af419296fffa48aceda4220aba','admin','others','','no','/data/upload/201512/f_0c8338e33fe50857ee313a2f36ee562f.png','0000-00-00','u','admin@lzyco.com','','','','','','','','','','',35,'192.168.1.18','2016-01-07 11:53:55','2016-01-07 12:00:18',0,'2015-12-08 00:20:41','0000-00-00 00:00:00','0'),(2,820005,'tomhao','19113947e93f1c2cae5a0f652c92650e','郝晓峰','top','','no','','0000-00-00','m','tomhao@lzyco.com','','178782169','','','','','13476156342','','','',17,'192.168.1.18','2016-01-08 09:16:57','2016-01-08 09:16:57',0,'2015-12-08 09:39:50','0000-00-00 00:00:00','0'),(3,820013,'zhang','b5a70a707e025fca01d403ff1e88d793','张皓','office','','no','','0000-00-00','m','zhang@lzyco.com','','','','','','','','','','',6,'10.0.3.102','2015-12-08 22:28:55','2015-12-08 22:36:09',0,'2015-12-08 10:51:06','0000-00-00 00:00:00','0'),(4,820007,'lrr','4f35a57a57d658c953f17647f4d815d5','李瑞锐','business','','no','','0000-00-00','f','lrr@lzyco.com','','','','','','','','','','',15,'192.168.1.18','2016-01-08 14:01:49','2016-01-08 14:07:50',0,'2015-12-08 11:55:58','0000-00-00 00:00:00','0'),(5,820005,'lwz','ff34833923b86b00220459b34eb1a4b7','刘维朝','sale','','no','','0000-00-00','m','lwz@lzyco.com','','','','','','','','','','',19,'192.168.1.18','2016-01-07 11:54:27','2016-01-07 16:30:23',0,'2015-12-08 11:57:04','0000-00-00 00:00:00','0'),(6,820003,'wu','3dd97bdbc838a211e8175cb169df322d','吴健明','top','','no','','0000-00-00','m','wu@lzyco.com','','','','','','','','','','',10,'192.168.1.19','2015-12-11 16:09:50','2015-12-11 21:21:23',0,'2015-12-08 14:50:45','0000-00-00 00:00:00','0'),(7,0,'aa','fd5714e18f6a89bf836058ce8ec4f436','aaa','pm','','no','','0000-00-00','u','test@test.com','','','','','','','','','','',1,'','2015-12-08 15:01:01','0000-00-00 00:00:00',0,'2015-12-08 15:01:01','0000-00-00 00:00:00','1'),(8,820023,'li','1ec39de5183d5ff093f2f36c3fdc73ad','李甫','top','','super','/data/upload/201601/f_b1a38e79c3ddcc37fe8828e28926ae05.jpg','0000-00-00','m','li@lzyco.com','','147537531','','','','','18500971337','','北京朝阳区工体北路8号三里屯SOHOA708','',47,'192.168.1.18','2016-01-08 15:12:24','2016-01-08 15:18:46',0,'2015-12-08 15:01:42','0000-00-00 00:00:00','0'),(9,820004,'wang','201794307e0afc2d32762e6037b4a6c7','汪洋泽','top','','no','/data/upload/201512/f_b01d2068bb7786b2b1bc6bbdc54329aa.jpg','0000-00-00','m','wang@lzyco.com','','','','','','','','','','',8,'192.168.1.19','2015-12-11 09:41:35','2015-12-11 10:18:36',0,'2015-12-08 15:05:28','0000-00-00 00:00:00','0'),(10,820006,'belle','231a1bf02e218c77b5a45c9efb934937','熊筠','marketmgr','','no','','0000-00-00','f','belle@lzyco.com','','','','','','','','','','',2,'192.168.1.19','2015-12-11 10:52:02','2015-12-11 12:48:18',0,'2015-12-08 15:09:26','0000-00-00 00:00:00','0'),(11,820012,'lishan','d8ee8c702cafa9233f91c729d0d69afe','李珊','adminmgr','','no','','0000-00-00','f','lishan@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:25:27','0000-00-00 00:00:00',0,'2015-12-08 15:25:27','0000-00-00 00:00:00','0'),(12,820011,'lili','3f8f78ccb0a10861ab43f46fc5d307e0','李丽','hrmgr','','no','','0000-00-00','f','lili@lzyco.com','','','','','','','','','','',4,'192.168.1.18','2016-01-07 11:29:34','2016-01-07 11:31:36',0,'2015-12-08 15:26:22','0000-00-00 00:00:00','0'),(13,820012,'qjy','afa7daf4b9d45f8077a073e7119fc83a','钱静怡','office','','no','','0000-00-00','f','qjy@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:27:07','0000-00-00 00:00:00',0,'2015-12-08 15:27:07','0000-00-00 00:00:00','0'),(14,820011,'songyao','2713f1ceca53d572cb0c9df2edb8ecee','宋瑶','office','','no','','0000-00-00','f','songyao@lzyco.com','','981903497','','','','','15110249329','','','981903497',6,'192.168.1.19','2015-12-10 14:18:56','2015-12-10 17:13:56',0,'2015-12-08 15:27:44','0000-00-00 00:00:00','0'),(15,820009,'ljy','6f84075acfdfb4ef157ebdda39e5d1e7','李健元','pm','','no','','0000-00-00','m','ljy@lzyco.com','','','','','','','','','','',3,'10.0.3.100','2015-12-09 11:06:46','2015-12-09 11:08:48',0,'2015-12-08 15:28:27','0000-00-00 00:00:00','0'),(16,820008,'jsl','484d740b4135da54b446cd69728978f0','贾仕龙','support','','no','','0000-00-00','m','jsl@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:29:28','0000-00-00 00:00:00',0,'2015-12-08 15:29:28','0000-00-00 00:00:00','0'),(17,820009,'yjs','335b4d58dca440f423a3ce3b30d1359d','闫建设','support','','no','','0000-00-00','m','yjs@lzyco.com','','','','','','','','','','',4,'192.168.1.19','2015-12-15 09:43:49','2015-12-15 09:43:49',0,'2015-12-08 15:30:18','0000-00-00 00:00:00','0'),(18,820009,'cw','3a1dc8f7249d9c98fdb9956ea52369d4','崔巍','others','','no','','0000-00-00','m','cw@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:31:12','0000-00-00 00:00:00',0,'2015-12-08 15:31:12','0000-00-00 00:00:00','0'),(19,820008,'lcg','31739fedd6728d0bc23b818f341ab50d','凌春桂','others','','no','','0000-00-00','m','lcg@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:32:32','0000-00-00 00:00:00',0,'2015-12-08 15:32:32','0000-00-00 00:00:00','0'),(20,820008,'zhh','73c0a8e67b1ecfc8cc4cfd57aad99c48','张贺','others','','no','','0000-00-00','m','zhh@lzyco.com','','','','','','','','','','',4,'10.0.3.102','2015-12-08 21:51:28','2015-12-08 21:52:28',0,'2015-12-08 15:33:25','0000-00-00 00:00:00','0'),(21,820008,'zhangpengliang','da1edfe0154cc45a2e4888d8a7166418','张朋亮','others','','no','','0000-00-00','m','zhangpengliang@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:34:24','0000-00-00 00:00:00',0,'2015-12-08 15:34:24','0000-00-00 00:00:00','0'),(22,820008,'zhanggang','a19d971af50fa7d49bc12d50ab323845','张刚','others','','no','','0000-00-00','m','zhanggang@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:35:07','0000-00-00 00:00:00',0,'2015-12-08 15:35:07','0000-00-00 00:00:00','0'),(23,820009,'wangmengting','aac05dc48a020f50589e0e9aef3c24e3','王梦婷','others','','no','','0000-00-00','f','wangmengting@lzyco.com','','','','','','','','','','',2,'10.0.3.100','2015-12-09 11:10:16','2015-12-09 11:20:20',0,'2015-12-08 15:35:46','0000-00-00 00:00:00','0'),(24,820008,'ws','238a13062e44648b5a37fc9f7ef44549','王硕','others','','no','','0000-00-00','m','ws@lzyco.com','','','','','','','','','','',8,'192.168.1.19','2015-12-14 11:13:46','2015-12-14 11:25:15',0,'2015-12-08 15:36:28','0000-00-00 00:00:00','0'),(25,820010,'shaojiayang','0796cce60024678cafb1c84049831ec8','邵佳阳','others','','no','','0000-00-00','m','shaojiayang@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:37:19','0000-00-00 00:00:00',3,'2015-12-08 15:37:19','2015-12-09 15:45:39','0'),(26,820008,'huangliang','c7d77c3c4c228d64dd11fe8e54e7ca3a','黄亮','others','','no','','0000-00-00','m','huangliang@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:38:02','0000-00-00 00:00:00',0,'2015-12-08 15:38:02','0000-00-00 00:00:00','0'),(27,820008,'libin','4c478617744b883f88af9beb11610d03','李斌','others','','no','','0000-00-00','m','libin@lzyco.com','','','','','','','','','','',9,'192.168.1.19','2015-12-17 11:28:02','2015-12-17 11:28:03',0,'2015-12-08 15:38:43','0000-00-00 00:00:00','0'),(28,820008,'yinxiaole','a4e43e5b5b5bf557002350d133dfafda','尹晓乐','others','','no','','0000-00-00','m','yinxiaole@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:39:19','0000-00-00 00:00:00',0,'2015-12-08 15:39:19','0000-00-00 00:00:00','0'),(29,820009,'yaoxueqin','280574e4a83f556ddf92d40103efe8e8','姚雪琴','others','','no','','0000-00-00','f','yaoxueqin@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:39:56','0000-00-00 00:00:00',0,'2015-12-08 15:39:56','0000-00-00 00:00:00','0'),(30,820005,'sky','50f1c313acd68b6792d0ae472596430e','Sky','salemgr','','no','','0000-00-00','f','sky@lzyco.com','','407156451','','','','','13810099477','','','',22,'192.168.1.18','2016-01-08 10:43:00','2016-01-08 12:40:04',0,'2015-12-08 15:40:40','0000-00-00 00:00:00','0'),(31,820005,'xy','aa35949724f1a1c4c99184087b5c635e','熊义','others','','no','','0000-00-00','m','xy@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:41:24','0000-00-00 00:00:00',0,'2015-12-08 15:41:24','0000-00-00 00:00:00','0'),(32,820005,'wj','c3adcc19f93b6b35e792d381ac619e34','王京','others','','no','','0000-00-00','m','wj@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:42:09','0000-00-00 00:00:00',0,'2015-12-08 15:42:09','0000-00-00 00:00:00','0'),(33,820005,'yjw','163eb8aa16e59a0bd229fdb651c39959','易珺伟','others','','no','','0000-00-00','m','yjw@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:42:50','0000-00-00 00:00:00',0,'2015-12-08 15:42:50','0000-00-00 00:00:00','0'),(34,820006,'Aaron','4742ef4d831492b606481df196956984','Aaron','others','','no','','0000-00-00','m','Aaron@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:43:22','0000-00-00 00:00:00',0,'2015-12-08 15:43:22','0000-00-00 00:00:00','1'),(35,820006,'wx','3fbe3226eb817e19234f31437964d043','武璇','others','','no','','0000-00-00','f','wx@lzyco.com','','','','','','','','','','',1,'','2015-12-08 15:45:15','0000-00-00 00:00:00',0,'2015-12-08 15:45:15','0000-00-00 00:00:00','0'),(36,820006,'Ray','e9434a808be725408ec20507b50147bf','高锐','others','','no','','0000-00-00','m','ray@lzyco.com','','','','','','','','','','',1,'','2015-12-08 16:15:50','0000-00-00 00:00:00',0,'2015-12-08 16:15:50','0000-00-00 00:00:00','1'),(37,820006,'aaron','5c77356f06d655e28a99375e14f262c5','Aaron','others','','no','','0000-00-00','m','Aaron@lzyco.com','','','','','','','','','','',1,'','2015-12-08 19:52:18','0000-00-00 00:00:00',0,'2015-12-08 19:52:18','0000-00-00 00:00:00','0'),(38,820006,'ray','7079248da3f9e222e85cb6e69736ece1','高锐','others','','no','','0000-00-00','m','ray@lzyco.com','','','','','','','','','','',1,'','2015-12-08 19:53:23','0000-00-00 00:00:00',0,'2015-12-08 19:53:23','0000-00-00 00:00:00','0'),(39,820014,'jason','8a4de5832c70029730b1a3fa0eff8a7e','Jason','dev','','no','','0000-00-00','m','jason@lzyco.com','','','','','','','','','','',4,'192.168.1.19','2015-12-28 09:40:41','2015-12-28 09:42:41',0,'2015-12-09 11:00:19','0000-00-00 00:00:00','0'),(40,820014,'chenchao','878d40c76ea4bc0bca111546c203b1bf','陈超','dev','','no','','0000-00-00','m','chenchao@lzyco.com','','','','','','','','','','',2,'10.0.3.101','2015-12-09 16:32:30','2015-12-09 16:41:32',0,'2015-12-09 15:47:26','0000-00-00 00:00:00','0');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_usergroup`
--

DROP TABLE IF EXISTS `sys_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_usergroup` (
  `account` char(30) NOT NULL DEFAULT '',
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `account` (`account`,`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_usergroup`
--

LOCK TABLES `sys_usergroup` WRITE;
/*!40000 ALTER TABLE `sys_usergroup` DISABLE KEYS */;
INSERT INTO `sys_usergroup` VALUES ('aaron',4),('aaron',5),('admin',5),('admin',9),('belle',5),('belle',7),('chenchao',5),('cw',5),('huangliang',5),('jason',4),('jason',5),('jsl',5),('lcg',5),('li',1),('li',2),('li',5),('libin',5),('lili',5),('lili',8),('lishan',5),('ljy',5),('lrr',5),('lrr',9),('lwz',4),('lwz',5),('qjy',5),('ray',5),('ray',7),('shaojiayang',5),('sky',4),('sky',5),('songyao',5),('songyao',8),('tomhao',1),('tomhao',3),('tomhao',4),('tomhao',5),('wang',1),('wang',5),('wang',8),('wangmengting',5),('wj',4),('wj',5),('ws',5),('wu',1),('wu',5),('wx',5),('wx',7),('xy',4),('xy',5),('yaoxueqin',5),('yinxiaole',5),('yjs',5),('yjw',5),('zhang',2),('zhang',5),('zhanggang',5),('zhangpengliang',5),('zhh',5);
/*!40000 ALTER TABLE `sys_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_userquery`
--

DROP TABLE IF EXISTS `sys_userquery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_userquery` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(90) NOT NULL,
  `form` text NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_userquery`
--

LOCK TABLES `sys_userquery` WRITE;
/*!40000 ALTER TABLE `sys_userquery` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_userquery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_reply`
--

DROP TABLE IF EXISTS `team_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_reply` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `thread` mediumint(8) unsigned NOT NULL,
  `content` text NOT NULL,
  `author` char(30) NOT NULL,
  `editor` char(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `hidden` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `thread` (`thread`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_reply`
--

LOCK TABLES `team_reply` WRITE;
/*!40000 ALTER TABLE `team_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_thread`
--

DROP TABLE IF EXISTS `team_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_thread` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `board` mediumint(9) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(60) NOT NULL,
  `editor` varchar(60) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedDate` datetime NOT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `views` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stick` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `replies` smallint(6) NOT NULL,
  `repliedBy` varchar(30) NOT NULL,
  `repliedDate` datetime NOT NULL,
  `replyID` mediumint(8) unsigned NOT NULL,
  `hidden` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category` (`board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_thread`
--

LOCK TABLES `team_thread` WRITE;
/*!40000 ALTER TABLE `team_thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_thread` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-07 23:18:59
