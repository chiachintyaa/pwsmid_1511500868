# Host: localhost  (Version 5.5.5-10.1.30-MariaDB)
# Date: 2018-05-18 10:59:26
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
  `bookname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookcategory` int(11) NOT NULL,
  `bookgenre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookwriter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookpages` int(11) NOT NULL,
  `bookrating` int(11) NOT NULL,
  `publishdate` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "books"
#

INSERT INTO `books` VALUES (1,'hehehe',2,'thriller','nyanya',200,5,'1997-05-17','2018-05-17 23:35:49','2018-05-17 23:41:20',NULL),(2,'bukubaru',2,'thriller','nyanya',200,5,'1997-05-17','2018-05-17 23:41:39','2018-05-18 00:27:17',NULL),(3,'namabuku2',2,'thriller','hehe',90,2,'2018-08-29','2018-05-18 09:26:55','2018-05-18 09:26:55',NULL);

#
# Structure for table "categories"
#

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "categories"
#

INSERT INTO `categories` VALUES (1,'buku fiksi','2018-05-17 19:09:03','2018-05-17 23:37:15',NULL),(2,'ululu','2018-05-17 23:37:52','2018-05-18 10:17:13',NULL),(3,'jurnal','2018-05-18 00:35:35','2018-05-18 00:35:35',NULL),(4,'skripsi','2018-05-18 00:36:50','2018-05-18 00:36:50',NULL);

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1,'2018_05_17_114923_categories',1),(2,'2018_05_17_121040_books',2);
