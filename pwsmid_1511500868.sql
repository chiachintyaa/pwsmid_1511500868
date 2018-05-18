# Host: localhost  (Version 5.5.5-10.1.30-MariaDB)
# Date: 2018-05-18 14:44:23
# Generator: MySQL-Front 6.0  (Build 2.20)

drop database if exists pwsmid_1511500868;
create database pwsmid_1511500868;
use pwsmid_1511500868;

#
# Structure for table "books"
#

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookcategory` int(11) NOT NULL,
  `bookgenre` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookwriter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookpages` int(11) NOT NULL,
  `bookrating` int(11) NOT NULL,
  `publishdate` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "books"
#

INSERT INTO `books` VALUES (1,'namabuku',1,'romance','nyanya',100,4,'2018-05-17','2018-05-18 14:38:29','2018-05-18 14:43:22','2018-05-18 14:43:22'),(2,'Laskar Pelangi',2,'adventure','Andrea Hirata',60,3,'2018-05-19','2018-05-18 14:40:06','2018-05-18 14:40:06',NULL),(3,'Shinchan',3,'comedy','Fujiko Fujio',20,5,'1997-05-20','2018-05-18 14:40:42','2018-05-18 14:42:59',NULL),(4,'Edensor',5,'adventure','Andrea Hirata',60,4,'2001-05-20','2018-05-18 14:41:00','2018-05-18 14:41:00',NULL),(5,'Doraemon',1,'adventure','Fujiko Fujio',30,5,'1997-05-20','2018-05-18 14:41:41','2018-05-18 14:41:41',NULL),(6,'Shinchan',3,'comedy','Fujiko Fujio',30,5,'1997-05-20','2018-05-18 14:42:33','2018-05-18 14:42:33',NULL),(7,'Miiko',3,'comedy','Fujiko Fujio',20,5,'1991-05-20','2018-05-18 14:44:03','2018-05-18 14:44:03',NULL);

#
# Structure for table "categories"
#

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "categories"
#

INSERT INTO `categories` VALUES (1,'novel','2018-05-18 14:21:00','2018-05-18 14:23:14',NULL),(2,'jurnal','2018-05-18 14:21:25','2018-05-18 14:23:05',NULL),(3,'komik','2018-05-18 14:24:00','2018-05-18 14:43:05',NULL),(4,'ilmu pengetahuan sosial','2018-05-18 14:24:07','2018-05-18 14:24:32',NULL),(5,'ilmu pengetahuan alam','2018-05-18 14:24:16','2018-05-18 14:24:16',NULL);

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#
