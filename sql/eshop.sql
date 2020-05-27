/*
SQLyog Trial v12.4.1 (64 bit)
MySQL - 5.6.35-log : Database - eshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eshop`;

/*Table structure for table `adminuser` */

DROP TABLE IF EXISTS `adminuser`;

CREATE TABLE `adminuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `adminuser` */

insert  into `adminuser`(`uid`,`username`,`password`) values 
(1,'seven','123456');

/*Table structure for table `cartitem` */

DROP TABLE IF EXISTS `cartitem`;

CREATE TABLE `cartitem` (
  `pid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  KEY `uid` (`uid`),
  KEY `pid` (`pid`),
  CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cartitem` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`cid`,`cname`) values 
(1,'肉类'),
(2,'蔬菜'),
(3,'水果'),
(4,'果汁');

/*Table structure for table `hope` */

DROP TABLE IF EXISTS `hope`;

CREATE TABLE `hope` (
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  KEY `FK_hope` (`uid`),
  KEY `FK_hope2` (`pid`),
  CONSTRAINT `FK_hope` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `FK_hope2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hope` */

insert  into `hope`(`uid`,`pid`) values 
(1,29);

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `oid` (`oid`),
  CONSTRAINT `oid` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `oid` varchar(255) NOT NULL,
  `total` double DEFAULT NULL,
  `ordertime` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `id` (`uid`),
  CONSTRAINT `id` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`oid`,`total`,`ordertime`,`name`,`phone`,`addr`,`uid`) values 
('00ffb1fee6b24535aa6088c9e841750c',0,'2018-05-28 10:21:48','aaa',NULL,'浙江温州',1),
('0716ed8347cc49faaca64b62a28df63e',0,'2018-05-28 10:28:59','aaa',NULL,'浙江温州',1),
('0bfa5cf44c1b458e8ad640a5a24d8165',128,'2018-05-28 09:30:31','aaa',NULL,'浙江温州',1),
('13c86944f6424795af077a5c02e525f9',64,'2018-05-28 10:26:29','aaa',NULL,'浙江温州',1),
('146104196a704354849456654a6f168b',64,'2018-05-28 10:13:28','aaa',NULL,'浙江温州',1),
('14bff79c29d94499954df6c501222d97',64,'2018-05-26 20:13:33','a','a','a',1),
('17c7968b41a64b25a125e4c23b95b1c8',0,'2018-05-28 10:14:42','aaa',NULL,'浙江温州',1),
('186f7846f4d7470095c919be4795f097',0,'2018-05-28 10:25:49','aaa',NULL,'浙江温州',1),
('1c5fce3e6f5b43078c6d81cb1c163551',0,'2018-05-28 10:35:11','aaa',NULL,'浙江温州',1),
('3d61fcc85ffb41e99f9dd8d6feec88ee',0,'2018-05-28 10:25:13','aaa',NULL,'浙江温州',1),
('3f74787633ca47c18191cd10b284f6ff',0,'2018-05-28 10:29:03','aaa',NULL,'浙江温州',1),
('402bc7d4bd584654b4ebc1c008081f78',0,'2018-05-28 10:31:22','aaa',NULL,'浙江温州',1),
('42fdf13fd7b4401f806a959a429cd8f2',0,'2018-05-28 10:29:45','aaa',NULL,'浙江温州',1),
('45b03bf4805944e088b17b0f382c2fdd',64,'2018-05-26 19:34:21','s','s','s',1),
('4799a7b0d30242bdabdaf76dc4ec46cc',0,'2018-05-28 10:21:10','aaa',NULL,'浙江温州',1),
('55f52f95f9524c5189b24bb68bd0c66c',64,'2018-06-12 14:43:29','ccc','123456','温州',1),
('5666c9ee5f4d4322a82726fb7801db12',64,'2018-05-28 09:24:39','aaa','11','s',1),
('57856858a23646989a565dfb971febbe',64,'2018-05-28 09:15:14','aaa','11','aa',1),
('63be342f23e84b838cac642f425edc4a',64,'2018-05-28 10:16:40','aaa',NULL,'浙江温州',1),
('659c99a31ff641b5af0ff27cf17623f2',64,'2018-05-26 19:19:29','d','d','d',1),
('674710d477824618819f4f8e6974d693',0,'2018-05-28 10:29:41','aaa',NULL,'浙江温州',1),
('694f308f36f04714988b0c4eada2b882',0,'2018-05-28 10:26:20','aaa',NULL,'浙江温州',1),
('6c95c17c9e334825937e6ce03b1c9ba6',0,'2018-05-28 10:20:02','aaa',NULL,'浙江温州',1),
('7aed20eb56d94571a93ff63180585362',0,'2018-05-28 10:29:18','aaa',NULL,'浙江温州',1),
('7ce1997801234b7e8710b93dabd7e046',64,'2018-05-26 20:09:31','ee','ee','ee',1),
('7f2dd1348eb449488ba522e2a8cd5ffb',0,'2018-05-28 10:15:57','aaa',NULL,'浙江温州',1),
('8017b855b613448787c53ae585cfdb04',64,'2018-05-26 19:29:37','f','f','f',1),
('88bf65f0f06248e5a8dc7ca5e6aaad8e',128,'2018-05-28 09:30:49','aaa','11','d',1),
('9fc03a713892404b9ae4f56d00aeac7b',0,'2018-05-28 10:19:31','aaa',NULL,'浙江温州',1),
('a254614a79084d06800ee575ba463487',64,'2018-05-26 18:49:55','çé¦¨æ§','125634','æ¸©å·',1),
('a2f6a2749fa446819402882e1fd2e2f5',64,'2018-05-26 19:43:57','aaa',NULL,'浙江温州',1),
('add09fc1093b4350b40b03507b6e68e9',64,'2018-05-28 10:15:21','aaa',NULL,'浙江温州',1),
('b34f80c8e2434e4eb03fa2b72a30ee34',64,'2018-05-26 18:42:26','aaa',NULL,'浙江温州',1),
('b4deef9bf53543b5a14e59d87450cd47',64,'2018-05-26 20:00:33','z','z','z',1),
('b5cf7b09d82243dcb46cb521bfa53eae',64,'2018-05-29 09:46:06','是南山那','11111','浙江问候',1),
('b9c7b2aec043478e98b0ea8bd5f922f1',0,'2018-05-28 10:21:54','aaa',NULL,'浙江温州',1),
('c0fd7d303d404ec3a2f0bcc863af658f',0,'2018-05-28 10:18:58','aaa',NULL,'浙江温州',1),
('c601c31c76bf4fba9af4cb418348bf20',0,'2018-05-28 10:29:55','aaa',NULL,'浙江温州',1),
('c72478eab82147559fb206614486c0da',0,'2018-05-28 10:22:52','aaa',NULL,'浙江温州',1),
('c8976a8c4e9041eca3070d22003f9e78',0,'2018-05-28 10:20:15','aaa',NULL,'浙江温州',1),
('cad8b121350145ea8f8389815b2bda34',0,'2018-05-28 10:19:47','aaa',NULL,'浙江温州',1),
('d7768dde80b54d48b59db785b43040d9',0,'2018-05-28 10:29:25','aaa',NULL,'浙江温州',1),
('dc8081e94fd7440784a75154553dcd86',64,'2018-05-28 09:09:02','s','s','s',1),
('eebc25edd1bf41528513511fa368edaf',0,'2018-05-28 10:34:40','aaa',NULL,'浙江温州',1),
('ff6389564f8f4be1a86255128a42ade5',0,'2018-05-26 19:44:06','a','a','aa',1);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FK_product` (`cid`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`pid`,`pname`,`price`,`image`,`pdesc`,`cid`) values 
(1,'红苹果',64,'images/5.jpg','小苹果',3),
(2,'桃子',64,'images/6.jpg','小桃子',3),
(3,'柠檬',64,'images/7.jpg','小柠檬',3),
(4,'甜椒',64,'images/8.jpg','小甜椒',2),
(5,'草莓',64,'images/9.jpg','小草莓',3),
(6,'香菜',64,'images/10.jpg','小香菜',2),
(7,'橙子',64,'images/11.jpg','小橙子',3),
(8,'梨子',64,'images/12.jpg','小梨子',3),
(9,'西红柿',64,'images/13.jpg','小西红柿',2),
(10,'菠萝',64,'images/14.jpg','小菠萝',3),
(11,'莲花白',64,'images/16.jpg','小莲花白',2),
(12,'辣椒',64,'images/17.jpg','小辣椒',2),
(13,'西兰花',64,'images/18.jpg','小西蓝花',2),
(14,'胡萝卜',64,'images/19.jpg','小胡萝卜',2),
(15,'玉米',64,'images/25.jpg','小玉米',2),
(16,'蓝莓',64,'images/26.jpg','小蓝莓',3),
(17,'牛肉',64,'images/27.jpg','牛肉',1),
(18,'鸡腿',64,'images/28.jpg','鸡腿',1),
(19,'牛肉',64,'images/29.jpg','牛肉',1),
(20,'鱼肉',64,'images/30.jpg','鱼肉',1),
(21,'三只鸡腿',64,'images/31.jpg','鸡腿',1),
(22,'羊肉',64,'images/32.jpg','羊肉',1),
(23,'鸡肉·',64,'images/33.jpg','鸡肉',1),
(24,'羊肉',64,'images/34.jpg','羊肉',1),
(25,'牛肉',64,'images/35.jpg','牛肉',1),
(26,'羊肉',64,'images/36.jpg','羊肉',1),
(27,'羊肉',64,'images/37.jpg','羊肉',1),
(28,'草莓汁',64,'images/38.jpg','草莓汁',4),
(29,'橙汁',64,'images/39.jpg','橙汁',4),
(30,'苹果汁',64,'images/40.jpg','苹果汁',4),
(31,'草莓蓝莓果汁',64,'images/41.jpg','草莓蓝莓汁',4),
(32,'桃汁',64,'images/42.jpg','桃汁',4),
(33,'梨汁',64,'images/43.jpg','梨汁',4),
(34,'柠檬汁',64,'images/44.jpg','柠檬汁',4),
(35,'苹果汁',64,'images/45.jpg','苹果汁',4),
(36,'葡萄',64,'images/46.jpg','葡萄',3),
(37,'雪莲果',64,'images/47.jpg','雪莲果',3),
(38,'猕猴桃',64,'images/48.jpg','猕猴桃',3),
(39,'火龙果',64,'images/49.jpg','火龙果',3),
(40,'香蕉',64,'images/50.jpg','香蕉',3),
(41,'樱桃',64,'images/51.jpg','樱桃',3),
(42,'榴莲',64,'images/52.jpg','榴莲',3),
(43,'芒果',64,'images/53.jpg','芒果',3),
(44,'凤梨',54,'images/54.jpg','凤梨',3),
(45,'提子',64,'images/55.jpg','提子',3),
(46,'复合果汁',64,'images/56.jpg','果汁',4);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`password`,`email`,`phone`,`addr`) values 
(1,'aaa','123456','aaa@qq.com','123456','浙江温州'),
(2,'sweet','123123','bbb@qq.com','123456','工贸');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
