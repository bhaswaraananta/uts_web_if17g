/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 5.7.17-log : Database - wpu_login
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wpu_login` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wpu_login`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_create` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`email`,`image`,`password`,`role_id`,`is_active`,`date_create`) values 
(4,'Bhaswara Ananta','bhaswernanta@gmail.com','mycircyle.png','$2y$10$VSHJPPXa.60cPHNwfgH2xONL6gi28tZpy4HT.Fc4JOK55.ir3gH/u',1,1,1556684541),
(5,'Nasya Nabila Nasoba','nasya@gmail.com','cicylenasya.png','$2y$10$3j2Dtf0kpAa9ZbjYyHqxXeh7U2bxz.NMhE9MzQK427kwR24cLbAnK',2,1,1556684552),
(6,'nanta','nanta@gmail.com','12308603_546379848846639_4404386333070626931_n.jpg','$2y$10$bakoL8/Xn6OWiltAhvuKeebt0893PfcReL0MuAz98Fp8nYCT3XKEG',2,1,1557142694);

/*Table structure for table `user_access_menu` */

DROP TABLE IF EXISTS `user_access_menu`;

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `user_access_menu` */

insert  into `user_access_menu`(`id`,`role_id`,`menu_id`) values 
(1,1,1),
(2,1,2),
(3,2,2),
(6,1,3);

/*Table structure for table `user_menu` */

DROP TABLE IF EXISTS `user_menu`;

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user_menu` */

insert  into `user_menu`(`id`,`menu`) values 
(1,'Admin'),
(2,'User'),
(3,'Menu');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`id`,`role`) values 
(1,'Administrator'),
(2,'Member');

/*Table structure for table `user_sub_menu` */

DROP TABLE IF EXISTS `user_sub_menu`;

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `user_sub_menu` */

insert  into `user_sub_menu`(`id`,`menu_id`,`title`,`url`,`icon`,`is_active`) values 
(1,1,'Dashboard','admin','fas fa-fw fa-tachometer-alt',1),
(2,2,'My Profile','user','fas fa-fw fa-user',1),
(3,2,'Edit Profile','user/edit','fas fa-fw fa-user-edit',1),
(4,3,'Menu Management','menu','fas fa-fw fa-folder',1),
(5,3,'Submenu Management','menu/submenu','fas fa-fw fa-folder-open',1),
(7,1,'Role','admin/role','fas fa-fw fa-user-tie',1),
(8,2,'Change Password','user/changepassword','fas fa-fw fa-key',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
