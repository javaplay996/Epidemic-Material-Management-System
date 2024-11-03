/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspml9114
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspml9114` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspml9114`;

/*Table structure for table `bumen` */

DROP TABLE IF EXISTS `bumen`;

CREATE TABLE `bumen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='部门';

/*Data for the table `bumen` */

insert  into `bumen`(`id`,`addtime`,`bumen`) values (61,'2021-04-16 18:03:49','部门1'),(62,'2021-04-16 18:03:49','部门2'),(63,'2021-04-16 18:03:49','部门3'),(64,'2021-04-16 18:03:49','部门4'),(65,'2021-04-16 18:03:49','部门5'),(66,'2021-04-16 18:03:49','部门6');

/*Table structure for table `caigouyuan` */

DROP TABLE IF EXISTS `caigouyuan`;

CREATE TABLE `caigouyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caigouyuangonghao` varchar(200) NOT NULL COMMENT '采购员工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `caigouyuanxingming` varchar(200) DEFAULT NULL COMMENT '采购员姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caigouyuangonghao` (`caigouyuangonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='采购员';

/*Data for the table `caigouyuan` */

insert  into `caigouyuan`(`id`,`addtime`,`caigouyuangonghao`,`mima`,`caigouyuanxingming`,`bumen`,`zhiwu`,`touxiang`) values (101,'2021-04-16 18:03:49','采购员1','123456','采购员姓名1','部门1','职务1','http://localhost:8080/jspml9114/upload/caigouyuan_touxiang1.jpg'),(102,'2021-04-16 18:03:49','采购员2','123456','采购员姓名2','部门2','职务2','http://localhost:8080/jspml9114/upload/caigouyuan_touxiang2.jpg'),(103,'2021-04-16 18:03:49','采购员3','123456','采购员姓名3','部门3','职务3','http://localhost:8080/jspml9114/upload/caigouyuan_touxiang3.jpg'),(104,'2021-04-16 18:03:49','采购员4','123456','采购员姓名4','部门4','职务4','http://localhost:8080/jspml9114/upload/caigouyuan_touxiang4.jpg'),(105,'2021-04-16 18:03:49','采购员5','123456','采购员姓名5','部门5','职务5','http://localhost:8080/jspml9114/upload/caigouyuan_touxiang5.jpg'),(106,'2021-04-16 18:03:49','采购员6','123456','采购员姓名6','部门6','职务6','http://localhost:8080/jspml9114/upload/caigouyuan_touxiang6.jpg');

/*Table structure for table `caiwubaoxiao` */

DROP TABLE IF EXISTS `caiwubaoxiao`;

CREATE TABLE `caiwubaoxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiaoneirong` longtext COMMENT '报销内容',
  `baoxiaozongjine` varchar(200) DEFAULT NULL COMMENT '报销总金额',
  `shenqingren` varchar(200) DEFAULT NULL COMMENT '申请人',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='财务报销';

/*Data for the table `caiwubaoxiao` */

insert  into `caiwubaoxiao`(`id`,`addtime`,`baoxiaoneirong`,`baoxiaozongjine`,`shenqingren`,`fuzeren`,`sfsh`,`shhf`) values (91,'2021-04-16 18:03:49','报销内容1','报销总金额1','申请人1','负责人1','是',''),(92,'2021-04-16 18:03:49','报销内容2','报销总金额2','申请人2','负责人2','是',''),(93,'2021-04-16 18:03:49','报销内容3','报销总金额3','申请人3','负责人3','是',''),(94,'2021-04-16 18:03:49','报销内容4','报销总金额4','申请人4','负责人4','是',''),(95,'2021-04-16 18:03:49','报销内容5','报销总金额5','申请人5','负责人5','是',''),(96,'2021-04-16 18:03:49','报销内容6','报销总金额6','申请人6','负责人6','是','');

/*Table structure for table `caiwurenyuan` */

DROP TABLE IF EXISTS `caiwurenyuan`;

CREATE TABLE `caiwurenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caiwurenyuangonghao` varchar(200) NOT NULL COMMENT '财务人员工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `caiwurenyuanxingming` varchar(200) DEFAULT NULL COMMENT '财务人员姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caiwurenyuangonghao` (`caiwurenyuangonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='财务人员';

/*Data for the table `caiwurenyuan` */

insert  into `caiwurenyuan`(`id`,`addtime`,`caiwurenyuangonghao`,`mima`,`caiwurenyuanxingming`,`bumen`,`zhiwu`,`touxiang`) values (121,'2021-04-16 18:03:49','财务人员1','123456','财务人员姓名1','部门1','职务1','http://localhost:8080/jspml9114/upload/caiwurenyuan_touxiang1.jpg'),(122,'2021-04-16 18:03:49','财务人员2','123456','财务人员姓名2','部门2','职务2','http://localhost:8080/jspml9114/upload/caiwurenyuan_touxiang2.jpg'),(123,'2021-04-16 18:03:49','财务人员3','123456','财务人员姓名3','部门3','职务3','http://localhost:8080/jspml9114/upload/caiwurenyuan_touxiang3.jpg'),(124,'2021-04-16 18:03:49','财务人员4','123456','财务人员姓名4','部门4','职务4','http://localhost:8080/jspml9114/upload/caiwurenyuan_touxiang4.jpg'),(125,'2021-04-16 18:03:49','财务人员5','123456','财务人员姓名5','部门5','职务5','http://localhost:8080/jspml9114/upload/caiwurenyuan_touxiang5.jpg'),(126,'2021-04-16 18:03:49','财务人员6','123456','财务人员姓名6','部门6','职务6','http://localhost:8080/jspml9114/upload/caiwurenyuan_touxiang6.jpg');

/*Table structure for table `chukuxinxi` */

DROP TABLE IF EXISTS `chukuxinxi`;

CREATE TABLE `chukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzileibie` varchar(200) DEFAULT NULL COMMENT '物资类别',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `kucun` int(11) DEFAULT NULL COMMENT '库存',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  `beizhu` longtext COMMENT '备注',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='出库信息';

/*Data for the table `chukuxinxi` */

insert  into `chukuxinxi`(`id`,`addtime`,`wuzimingcheng`,`wuzileibie`,`guige`,`kucun`,`chukushijian`,`beizhu`,`fuzeren`) values (31,'2021-04-16 18:03:49','物资名称1','物资类别1','规格1',1,'2021-04-16 18:03:49','备注1','负责人1'),(32,'2021-04-16 18:03:49','物资名称2','物资类别2','规格2',2,'2021-04-16 18:03:49','备注2','负责人2'),(33,'2021-04-16 18:03:49','物资名称3','物资类别3','规格3',3,'2021-04-16 18:03:49','备注3','负责人3'),(34,'2021-04-16 18:03:49','物资名称4','物资类别4','规格4',4,'2021-04-16 18:03:49','备注4','负责人4'),(35,'2021-04-16 18:03:49','物资名称5','物资类别5','规格5',5,'2021-04-16 18:03:49','备注5','负责人5'),(36,'2021-04-16 18:03:49','物资名称6','物资类别6','规格6',6,'2021-04-16 18:03:49','备注6','负责人6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspml9114/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspml9114/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspml9114/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `houqinrenyuan` */

DROP TABLE IF EXISTS `houqinrenyuan`;

CREATE TABLE `houqinrenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `houqinrenyuangonghao` varchar(200) NOT NULL COMMENT '后勤人员工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `houqinrenyuanxingming` varchar(200) DEFAULT NULL COMMENT '后勤人员姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `houqinrenyuangonghao` (`houqinrenyuangonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='后勤人员';

/*Data for the table `houqinrenyuan` */

insert  into `houqinrenyuan`(`id`,`addtime`,`houqinrenyuangonghao`,`mima`,`houqinrenyuanxingming`,`bumen`,`zhiwu`,`touxiang`) values (111,'2021-04-16 18:03:49','后勤人员1','123456','后勤人员姓名1','部门1','职务1','头像1'),(112,'2021-04-16 18:03:49','后勤人员2','123456','后勤人员姓名2','部门2','职务2','头像2'),(113,'2021-04-16 18:03:49','后勤人员3','123456','后勤人员姓名3','部门3','职务3','头像3'),(114,'2021-04-16 18:03:49','后勤人员4','123456','后勤人员姓名4','部门4','职务4','头像4'),(115,'2021-04-16 18:03:49','后勤人员5','123456','后勤人员姓名5','部门5','职务5','头像5'),(116,'2021-04-16 18:03:49','后勤人员6','123456','后勤人员姓名6','部门6','职务6','头像6');

/*Table structure for table `rukuxinxi` */

DROP TABLE IF EXISTS `rukuxinxi`;

CREATE TABLE `rukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzileibie` varchar(200) DEFAULT NULL COMMENT '物资类别',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `kucun` int(11) DEFAULT NULL COMMENT '库存',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  `beizhu` longtext COMMENT '备注',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='入库信息';

/*Data for the table `rukuxinxi` */

insert  into `rukuxinxi`(`id`,`addtime`,`wuzimingcheng`,`wuzileibie`,`guige`,`kucun`,`rukushijian`,`beizhu`,`fuzeren`) values (41,'2021-04-16 18:03:49','物资名称1','物资类别1','规格1',1,'2021-04-16 18:03:49','备注1','负责人1'),(42,'2021-04-16 18:03:49','物资名称2','物资类别2','规格2',2,'2021-04-16 18:03:49','备注2','负责人2'),(43,'2021-04-16 18:03:49','物资名称3','物资类别3','规格3',3,'2021-04-16 18:03:49','备注3','负责人3'),(44,'2021-04-16 18:03:49','物资名称4','物资类别4','规格4',4,'2021-04-16 18:03:49','备注4','负责人4'),(45,'2021-04-16 18:03:49','物资名称5','物资类别5','规格5',5,'2021-04-16 18:03:49','备注5','负责人5'),(46,'2021-04-16 18:03:49','物资名称6','物资类别6','规格6',6,'2021-04-16 18:03:49','备注6','负责人6');

/*Table structure for table `shenlingwuzi` */

DROP TABLE IF EXISTS `shenlingwuzi`;

CREATE TABLE `shenlingwuzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingren` varchar(200) DEFAULT NULL COMMENT '申请人',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shenqingshuliang` int(11) DEFAULT NULL COMMENT '申请数量',
  `wuziliuxiang` longtext COMMENT '物资流向',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `lingqushijian` datetime DEFAULT NULL COMMENT '领取时间',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='申领物资';

/*Data for the table `shenlingwuzi` */

insert  into `shenlingwuzi`(`id`,`addtime`,`shenqingren`,`wuzimingcheng`,`guige`,`shenqingshuliang`,`wuziliuxiang`,`shenqingshijian`,`lingqushijian`,`fuzeren`,`sfsh`,`shhf`) values (51,'2021-04-16 18:03:49','申请人1','物资名称1','规格1',1,'物资流向1','2021-04-16 18:03:49','2021-04-16 18:03:49','负责人1','是',''),(52,'2021-04-16 18:03:49','申请人2','物资名称2','规格2',2,'物资流向2','2021-04-16 18:03:49','2021-04-16 18:03:49','负责人2','是',''),(53,'2021-04-16 18:03:49','申请人3','物资名称3','规格3',3,'物资流向3','2021-04-16 18:03:49','2021-04-16 18:03:49','负责人3','是',''),(54,'2021-04-16 18:03:49','申请人4','物资名称4','规格4',4,'物资流向4','2021-04-16 18:03:49','2021-04-16 18:03:49','负责人4','是',''),(55,'2021-04-16 18:03:49','申请人5','物资名称5','规格5',5,'物资流向5','2021-04-16 18:03:49','2021-04-16 18:03:49','负责人5','是',''),(56,'2021-04-16 18:03:49','申请人6','物资名称6','规格6',6,'物资流向6','2021-04-16 18:03:49','2021-04-16 18:03:49','负责人6','是','');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-16 18:03:49');

/*Table structure for table `wuzicaigou` */

DROP TABLE IF EXISTS `wuzicaigou`;

CREATE TABLE `wuzicaigou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daibanshixiang` longtext COMMENT '待办事项',
  `caigouzhuangtai` varchar(200) DEFAULT NULL COMMENT '采购状态',
  `caigoudewuzi` longtext COMMENT '采购的物资',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `caigouyuangonghao` varchar(200) DEFAULT NULL COMMENT '采购员工号',
  `caigouyuanxingming` varchar(200) DEFAULT NULL COMMENT '采购员姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='物资采购';

/*Data for the table `wuzicaigou` */

insert  into `wuzicaigou`(`id`,`addtime`,`daibanshixiang`,`caigouzhuangtai`,`caigoudewuzi`,`leibie`,`shijian`,`caigouyuangonghao`,`caigouyuanxingming`) values (81,'2021-04-16 18:03:49','待办事项1','采购状态1','采购的物资1','类别1','2021-04-16 18:03:49','采购员工号1','采购员姓名1'),(82,'2021-04-16 18:03:49','待办事项2','采购状态2','采购的物资2','类别2','2021-04-16 18:03:49','采购员工号2','采购员姓名2'),(83,'2021-04-16 18:03:49','待办事项3','采购状态3','采购的物资3','类别3','2021-04-16 18:03:49','采购员工号3','采购员姓名3'),(84,'2021-04-16 18:03:49','待办事项4','采购状态4','采购的物资4','类别4','2021-04-16 18:03:49','采购员工号4','采购员姓名4'),(85,'2021-04-16 18:03:49','待办事项5','采购状态5','采购的物资5','类别5','2021-04-16 18:03:49','采购员工号5','采购员姓名5'),(86,'2021-04-16 18:03:49','待办事项6','采购状态6','采购的物资6','类别6','2021-04-16 18:03:49','采购员工号6','采购员姓名6');

/*Table structure for table `wuzifenlei` */

DROP TABLE IF EXISTS `wuzifenlei`;

CREATE TABLE `wuzifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='物资分类';

/*Data for the table `wuzifenlei` */

insert  into `wuzifenlei`(`id`,`addtime`,`leibie`) values (21,'2021-04-16 18:03:49','类别1'),(22,'2021-04-16 18:03:49','类别2'),(23,'2021-04-16 18:03:49','类别3'),(24,'2021-04-16 18:03:49','类别4'),(25,'2021-04-16 18:03:49','类别5'),(26,'2021-04-16 18:03:49','类别6');

/*Table structure for table `wuzixinxi` */

DROP TABLE IF EXISTS `wuzixinxi`;

CREATE TABLE `wuzixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzitupian` varchar(200) DEFAULT NULL COMMENT '物资图片',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzileibie` varchar(200) DEFAULT NULL COMMENT '物资类别',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `kucun` int(11) DEFAULT NULL COMMENT '库存',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='物资信息';

/*Data for the table `wuzixinxi` */

insert  into `wuzixinxi`(`id`,`addtime`,`wuzitupian`,`wuzimingcheng`,`wuzileibie`,`guige`,`kucun`,`shengchanriqi`,`beizhu`) values (11,'2021-04-16 18:03:49','http://localhost:8080/jspml9114/upload/wuzixinxi_wuzitupian1.jpg','物资名称1','物资类别1','规格1',1,'2021-04-16','备注1'),(12,'2021-04-16 18:03:49','http://localhost:8080/jspml9114/upload/wuzixinxi_wuzitupian2.jpg','物资名称2','物资类别2','规格2',2,'2021-04-16','备注2'),(13,'2021-04-16 18:03:49','http://localhost:8080/jspml9114/upload/wuzixinxi_wuzitupian3.jpg','物资名称3','物资类别3','规格3',3,'2021-04-16','备注3'),(14,'2021-04-16 18:03:49','http://localhost:8080/jspml9114/upload/wuzixinxi_wuzitupian4.jpg','物资名称4','物资类别4','规格4',4,'2021-04-16','备注4'),(15,'2021-04-16 18:03:49','http://localhost:8080/jspml9114/upload/wuzixinxi_wuzitupian5.jpg','物资名称5','物资类别5','规格5',5,'2021-04-16','备注5'),(16,'2021-04-16 18:03:49','http://localhost:8080/jspml9114/upload/wuzixinxi_wuzitupian6.jpg','物资名称6','物资类别6','规格6',6,'2021-04-16','备注6');

/*Table structure for table `zhiwu` */

DROP TABLE IF EXISTS `zhiwu`;

CREATE TABLE `zhiwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='职务';

/*Data for the table `zhiwu` */

insert  into `zhiwu`(`id`,`addtime`,`zhiwu`) values (71,'2021-04-16 18:03:49','职务1'),(72,'2021-04-16 18:03:49','职务2'),(73,'2021-04-16 18:03:49','职务3'),(74,'2021-04-16 18:03:49','职务4'),(75,'2021-04-16 18:03:49','职务5'),(76,'2021-04-16 18:03:49','职务6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
