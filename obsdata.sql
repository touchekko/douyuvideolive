/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.3.27-MariaDB-0+deb10u1 : Database - obsdata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`obsdata` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `obsdata`;

/*Table structure for table `ad` */

CREATE TABLE `ad` (
  `id` int(5) DEFAULT NULL,
  `vodName` varchar(10) DEFAULT NULL,
  `isLocal` int(1) DEFAULT NULL,
  `isPlay` int(1) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `lastTime` varchar(50) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ad` */

insert  into `ad`(`id`,`vodName`,`isLocal`,`isPlay`,`score`,`lastTime`,`src`,`type`) values (1,'欢迎大家来到本直播间',1,0,10000,NULL,'video/ad.mp4','video/mp4');

/*Table structure for table `fans` */

CREATE TABLE `fans` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `isAdmin` int(1) DEFAULT NULL,
  `loginNum` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fans` */

/*Table structure for table `style` */

CREATE TABLE `style` (
  `id` int(5) NOT NULL,
  `data` varchar(255) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `style` */

/*Table structure for table `vod` */

CREATE TABLE `vod` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vodName` varchar(100) DEFAULT NULL,
  `isLocal` tinyint(1) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `isPlay` tinyint(1) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `lastTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `vod` */

insert  into `vod`(`id`,`vodName`,`isLocal`,`src`,`type`,`isPlay`,`score`,`lastTime`) values (1,'复仇者联盟',1,'video/fczlm.mp4','video/mp4',0,0,'1614000373768'),(2,'惊奇队长',1,'video/test.mp4','video/mp4',0,0,'1613993956914'),(3,'温铁军01',1,'video/01.mp4','video/mp4',0,0,'1613994895728'),(4,'温铁军02',1,'video/02.mp4','video/mp4',0,0,'1613994257316'),(5,'M3U8测试',0,'http://wuji.zhulong-zuida.com/20190807/4592_0e4db894/index.m3u8','application/x-mpegURL',0,0,'1613995052834'),(6,'CCTV1直播',0,'http://ivi.bupt.edu.cn/hls/cctv1hd.m3u8','application/x-mpegURL',0,0,'1613997660747');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
