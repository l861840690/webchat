/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - webchat
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`webchat` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `webchat`;

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` varchar(255) DEFAULT NULL COMMENT '日志编号',
  `userid` varchar(255) DEFAULT NULL COMMENT '用户名',
  `time` varchar(255) DEFAULT NULL COMMENT '操作时间',
  `type` varchar(255) DEFAULT NULL COMMENT '操作类型',
  `detail` varchar(255) DEFAULT NULL COMMENT '详情',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip',
  KEY `fk_log_userid` (`userid`),
  CONSTRAINT `fk_log_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `log` */

LOCK TABLES `log` WRITE;

insert  into `log`(`id`,`userid`,`time`,`type`,`detail`,`ip`) values ('a9786c018d854226bdfa0ab74d4045cf','Amayadream','2017-01-11 19:20:43','登陆','用户登陆',NULL),('9136815071cc450ba00d9b693247dff2','Amayadream','2017-01-11 19:21:26','更新','更新用户头像',NULL),('2be39dd8511c41259bfa2885353e94ad','Amayadream','2017-01-11 19:21:52','登陆','用户登陆',NULL),('a48f35f8d3f84db1addc42cbf8835ac8','Amayadream','2017-01-11 19:22:15','登陆','用户登陆',NULL),('48083bcfca7b4dbdb7236561cc118839','Amayadream','2017-01-11 19:22:18','登陆','用户登陆',NULL),('2c83a3d453d94f83ac7595b4bb1fc2c6','Amayadream','2017-01-11 19:22:21','登陆','用户登陆',NULL),('d05d2127977146dfbd0cf6076283c9e9','admin','2017-01-11 19:23:20','登陆','用户登陆',NULL),('19b6f5ec3d6a4a3aacbbae28ea23afd2','admin','2017-01-11 19:24:04','更新','更新用户头像',NULL),('fe9747a7a9a14d2da101c077aad58bba','test','2020-05-15 15:09:40','登陆','用户登陆',NULL),('d54fc84b538749959af28f2c997939ac','test','2020-05-15 15:09:58','更新','更新用户头像',NULL),('8837cfefa14c4e49bd7e9c330d32895e','test','2020-05-15 16:04:18','登陆','用户登陆',NULL),('42156d37843f4ae0b5e80fd156eed472','test','2020-05-15 16:07:00','登陆','用户登陆',NULL),('936dad6431744da1a9ffe4a5a326fb5c','admin','2020-05-15 16:07:13','登陆','用户登陆',NULL),('bb8cfe05ccbd4b18a6448cc7cf2c5096','test','2020-05-15 16:22:30','登陆','用户登陆',NULL);

UNLOCK TABLES;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `sex` int(1) DEFAULT NULL COMMENT '性别',
  `age` int(5) DEFAULT NULL COMMENT '年龄',
  `profilehead` varchar(255) DEFAULT NULL COMMENT '头像',
  `profile` varchar(255) DEFAULT NULL COMMENT '简介',
  `firsttime` varchar(255) DEFAULT NULL COMMENT '注册时间',
  `lasttime` varchar(255) DEFAULT NULL COMMENT '最后登录时间',
  `status` int(1) DEFAULT NULL COMMENT '账号状态(1正常 0禁用)',
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

LOCK TABLES `user` WRITE;

insert  into `user`(`userid`,`password`,`nickname`,`sex`,`age`,`profilehead`,`profile`,`firsttime`,`lasttime`,`status`) values ('test','123456','Li',1,23,'upload/test/test.jpg','are you ok?','2020-04-21 19:22:21','2020-05-15 16:22:30',1),('admin','admin','admin',1,23,'upload/admin/admin.jpg','i\'m admin','2020-04-21 19:22:21','2020-05-15 16:07:13',1);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
