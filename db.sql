/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qiyerenshiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qiyerenshiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qiyerenshiguanli`;

/*Table structure for table `chuqin` */

DROP TABLE IF EXISTS `chuqin`;

CREATE TABLE `chuqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `today` varchar(200) DEFAULT NULL COMMENT '打卡日期',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '上班打卡时间',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '下班打卡时间',
  `chuqin_types` int(11) DEFAULT NULL COMMENT '打卡类型   ',
  `overtimeNumber` int(11) DEFAULT NULL COMMENT '加班时间(小时)',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='考勤';

/*Data for the table `chuqin` */

insert  into `chuqin`(`id`,`yonghu_id`,`today`,`on_time`,`down_time`,`chuqin_types`,`overtimeNumber`,`create_time`) values (5,6,'2021-04-12','2021-04-12 13:23:13','2021-04-12 13:23:16',6,NULL,'2021-04-12 13:23:13'),(6,5,'2021-04-12','2021-04-12 13:48:54','2021-04-12 13:48:56',6,NULL,'2021-04-12 13:48:54'),(7,3,'2021-04-12','2021-04-12 15:10:52','2021-04-12 15:10:54',6,NULL,'2021-04-12 15:10:52');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `cultivate` */

DROP TABLE IF EXISTS `cultivate`;

CREATE TABLE `cultivate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '培训开始时间   ',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '培训结束时间   ',
  `day_number` int(11) DEFAULT NULL COMMENT '培训天数   ',
  `cultivate_content` varchar(200) DEFAULT NULL COMMENT '培训内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='培训';

/*Data for the table `cultivate` */

insert  into `cultivate`(`id`,`yonghu_id`,`on_time`,`down_time`,`day_number`,`cultivate_content`,`create_time`) values (9,5,'2021-04-12 00:00:00','2021-04-14 00:00:00',2,'培训1\r\n',NULL),(10,11,'2021-04-13 00:00:00','2021-04-14 00:00:00',1,'as大萨达所\r\n',NULL),(11,6,'2021-04-13 00:00:00','2021-04-18 00:00:00',5,'sds\r\n',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字    ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-12 09:18:35'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-12 09:18:35'),(3,'bumen_types','部门类型名称',1,'销售部',NULL,'2021-04-12 09:18:35'),(4,'bumen_types','部门类型名称',2,'开发部',NULL,'2021-04-12 09:18:35'),(5,'bumen_types','部门类型名称',3,'财务部',NULL,'2021-04-12 09:18:35'),(6,'bumen_types','部门类型名称',4,'人事部',NULL,'2021-04-12 09:18:35'),(7,'role_types','权限类型名称',1,'员工',NULL,'2021-04-12 09:18:35'),(8,'role_types','权限类型名称',2,'部门主管',NULL,'2021-04-12 09:18:35'),(9,'role_types','权限类型名称',3,'总经理',NULL,'2021-04-12 09:18:36'),(10,'chuqin_types','打卡类型名称',1,'正常打卡',NULL,'2021-04-12 09:18:36'),(11,'chuqin_types','打卡类型名称',2,'未打上班卡',NULL,'2021-04-12 09:18:36'),(12,'chuqin_types','打卡类型名称',3,'未打下班卡',NULL,'2021-04-12 09:18:36'),(13,'chuqin_types','打卡类型名称',4,'缺勤',NULL,'2021-04-12 09:18:36'),(14,'chuqin_types','打卡类型名称',5,'加班',NULL,'2021-04-12 09:18:36'),(15,'chuqin_types','打卡类型名称',6,'迟到',NULL,'2021-04-12 09:18:36'),(16,'chuqin_types','打卡类型名称',7,'早退',NULL,'2021-04-12 09:18:36'),(17,'jiangcheng_types','奖惩类型名称',1,'奖励1',NULL,'2021-04-12 09:18:36'),(18,'jiangcheng_types','奖惩类型名称',2,'奖励2',NULL,'2021-04-12 09:18:36'),(19,'jiangcheng_types','奖惩类型名称',3,'奖励3',NULL,'2021-04-12 09:18:36'),(20,'jiangcheng_types','奖惩类型名称',4,'奖励4',NULL,'2021-04-12 09:18:36'),(21,'jiangcheng_types','奖惩类型名称',5,'惩罚1',NULL,'2021-04-12 09:18:36'),(22,'jiangcheng_types','奖惩类型名称',6,'惩罚2',NULL,'2021-04-12 09:18:36'),(23,'jiangcheng_types','奖惩类型名称',7,'惩罚3',NULL,'2021-04-12 09:18:36'),(24,'jiangcheng_types','奖惩类型名称',8,'惩罚4',NULL,'2021-04-12 09:18:36'),(25,'bumen_types','部门类型名称',5,'部门77',NULL,'2021-04-12 14:00:24'),(26,'jiangcheng_types','奖惩类型名称',9,'硕大的撒',NULL,'2021-04-12 14:01:42');

/*Table structure for table `jiangcheng` */

DROP TABLE IF EXISTS `jiangcheng`;

CREATE TABLE `jiangcheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiangcheng_name` varchar(200) DEFAULT NULL COMMENT '奖惩名称   ',
  `jiangcheng_types` int(11) DEFAULT NULL COMMENT '奖惩类型   ',
  `jiangcheng_content` varchar(200) DEFAULT NULL COMMENT '奖惩详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '奖惩时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='奖惩';

/*Data for the table `jiangcheng` */

insert  into `jiangcheng`(`id`,`yonghu_id`,`jiangcheng_name`,`jiangcheng_types`,`jiangcheng_content`,`insert_time`,`create_time`) values (5,9,'第一次奖励',8,'www\r\n','2021-04-12 13:57:05','2021-04-12 13:57:05'),(6,10,'不遵守规章秩序惩罚',7,'大萨达撒打\r\n','2021-04-12 14:16:44','2021-04-12 14:16:44'),(7,7,'惩罚2',6,'三十三\r\n','2021-04-12 14:50:01','2021-04-12 14:50:01'),(8,6,'1111',9,'在郑州\r\n','2021-04-12 14:50:17','2021-04-12 14:50:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','0baxf6cpw1inha2shovmp8d65uitdrj8','2021-04-12 09:34:55','2021-04-12 16:15:23'),(2,6,'a11','yonghu','部门主管','mv3r1p3kv383gj1nx4kbne1in5i78d3y','2021-04-12 11:45:21','2021-04-12 16:06:48'),(3,5,'a5','yonghu','员工','jmixuhxjmzrer7ugr34ooul6npwydgju','2021-04-12 13:48:48','2021-04-12 16:15:37'),(4,8,'a111','yonghu','总经理','ge17p6qcjw3mrjqpsyo76sji2imbe65a','2021-04-12 14:01:59','2021-04-12 15:12:53'),(5,7,'a22','yonghu','部门主管','t0545m2zzbvxn2gkxrnd6xs3pvdnlv3y','2021-04-12 14:39:43','2021-04-12 15:57:00'),(6,12,'a33','yonghu','部门主管','wyma9go6dpc9ll2lx71ej6epidlvn42o','2021-04-12 15:08:07','2021-04-12 16:09:56'),(7,3,'a3','yonghu','员工','mcgjl7dddrf7fmllfg8jqc1qdp0ye6b4','2021-04-12 15:10:30','2021-04-12 16:14:39'),(8,2,'a2','yonghu','员工','3ougs3su5jk17d4kls3q9cdbd1vsqc5d','2021-04-12 15:13:53','2021-04-12 16:13:54'),(9,10,'a7','yonghu','员工','9ni147eqirensfabbrga5z3wm46e3bhc','2021-04-12 15:15:01','2021-04-12 16:15:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `month` varchar(200) DEFAULT NULL COMMENT '月份   ',
  `money` decimal(10,4) DEFAULT NULL COMMENT '薪资',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yonghu_id`,`month`,`money`,`create_time`) values (5,5,'2021-07','99.0000','2021-04-12 13:47:34'),(6,5,'2021-06','55.0000','2021-04-12 13:47:59'),(7,2,'2021-02','77.0000','2021-04-12 13:48:15'),(8,3,'2021-04','78.0000','2021-04-12 13:57:52'),(9,3,'2021-03','777.0000','2021-04-12 13:58:14'),(10,3,'2021-07','11.0000','2021-04-12 15:08:55'),(11,12,'2021-06','88.0000','2021-04-12 15:09:39'),(12,12,'2021-07','77.0000','2021-04-12 15:09:50');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-04-12 09:18:35','日常公告','日常公告','公告信息','2021-04-12 09:18:35'),(2,'2021-04-12 09:18:35','紧急公告','紧急公告','公告信息','2021-04-12 09:18:35'),(3,'2021-04-12 09:18:35','其他公告','其他公告','公告信息','2021-04-12 09:18:35'),(4,'2021-04-12 13:58:46','公告1','日常公告','1111111111','2021-04-12 13:58:46');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名    ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号   ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号    ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门   ',
  `role_types` int(11) DEFAULT NULL COMMENT '权限   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`bumen_types`,`role_types`,`create_time`) values (1,'a1','123456','张1','17703786961','410224199610232011','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618195981437.jpg',2,3,1,'2021-04-12 10:53:07'),(2,'a2','123456','张2','17703786962','410224199610232012','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618196011067.jpg',2,4,1,'2021-04-12 10:53:36'),(3,'a3','123456','张三1','17703786963','410224199610232013','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618196063817.jpg',1,3,1,'2021-04-12 10:54:32'),(4,'a4','123456','张4','17703786964','410224199610232014','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618196092535.jpg',2,1,1,'2021-04-12 10:54:57'),(5,'a5','123456','张5','17703786965','410224199610232015','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618196116202.jpg',2,4,1,'2021-04-12 10:55:21'),(6,'a11','123456','张11主管1','17703786911','410234199610232011','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618196186662.jpg',1,5,2,'2021-04-12 10:56:39'),(7,'a22','123456','张22','17703786922','410224199610232022','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618196222474.jpg',1,3,2,'2021-04-12 10:57:09'),(8,'a111','123456','a111总经理111','17703786111','410224199610232111','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618196994953.jpg',2,NULL,3,'2021-04-12 11:09:59'),(9,'a6','123456','张6','17703786966','410224199610232016','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618206683006.jpg',2,3,1,'2021-04-12 13:51:39'),(10,'a7','123456','张7','17703786967','410224199610232017','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618206812602.jpg',2,3,1,'2021-04-12 13:54:08'),(11,'a222','123456','张222','17703786222','410224199610232222','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618206884556.jpg',2,NULL,3,'2021-04-12 13:54:48'),(12,'a33','123456','张33','17703786933','410224199610232033','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1618211276631.jpg',2,2,2,'2021-04-12 15:08:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
