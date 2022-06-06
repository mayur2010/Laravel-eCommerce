-- MySQL dump 10.13  Distrib 8.0.28, for macos10.15 (x86_64)
--
-- Host: localhost    Database: shopwise
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'IXJ5LcKMOLd3fZe04jBwgYQsJCxEckcS',1,'2022-05-13 03:50:51','2022-05-13 03:50:51','2022-05-13 03:50:51');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Homepage middle 1','2027-05-13 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.jpg','/product-categories/headphone',0,1,'published','2022-05-13 03:50:54','2022-05-13 03:50:54'),(2,'Homepage middle 2','2027-05-13 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.jpg','/product-categories/camera',0,2,'published','2022-05-13 03:50:54','2022-05-13 03:50:54'),(3,'Homepage middle 3','2027-05-13 00:00:00','not_set','ZDOZUZZIU7FT','promotion/3.jpg','/product-categories/watches',0,3,'published','2022-05-13 03:50:54','2022-05-13 03:50:54');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Ipsum esse magnam placeat deserunt qui minus quidem. Nihil harum est perspiciatis harum. Dignissimos occaecati autem voluptas quidem ex in. Odit deserunt autem sunt alias omnis quos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(2,'Fashion',0,'Unde aut ut vero inventore et velit neque. Aliquid et corporis non quisquam. Minus et quia aut et repellendus est ipsa. Quod unde tenetur rerum est labore. Deleniti vel veritatis dolorum sunt ut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(3,'Electronic',0,'Natus beatae deserunt architecto. Et velit adipisci facere eos doloremque similique. Laborum doloremque necessitatibus ut blanditiis sit voluptatem et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(4,'Commercial',0,'Alias sapiente perspiciatis quod ullam itaque molestiae corrupti. Quia officiis nisi atque autem cupiditate. Inventore sint officiis nulla voluptatum. Nostrum quis consequatur omnis soluta magnam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-05-13 03:50:50','2022-05-13 03:50:50');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_backup`
--

DROP TABLE IF EXISTS `cities_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_backup`
--

LOCK TABLES `cities_backup` WRITE;
/*!40000 ALTER TABLE `cities_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_backup`
--

DROP TABLE IF EXISTS `countries_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_backup`
--

LOCK TABLES `countries_backup` WRITE;
/*!40000 ALTER TABLE `countries_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.png','published',0,1,'2022-05-13 03:50:05','2022-05-13 03:50:05'),(2,'Hand crafted',NULL,NULL,'brands/2.png','published',1,1,'2022-05-13 03:50:06','2022-05-13 03:50:06'),(3,'Mestonix',NULL,NULL,'brands/3.png','published',2,1,'2022-05-13 03:50:06','2022-05-13 03:50:06'),(4,'Sunshine',NULL,NULL,'brands/4.png','published',3,1,'2022-05-13 03:50:06','2022-05-13 03:50:06'),(5,'Pure',NULL,NULL,'brands/5.png','published',4,1,'2022-05-13 03:50:06','2022-05-13 03:50:06'),(6,'Anfold',NULL,NULL,'brands/6.png','published',5,1,'2022-05-13 03:50:06','2022-05-13 03:50:06'),(7,'Automotive',NULL,NULL,'brands/7.png','published',6,1,'2022-05-13 03:50:06','2022-05-13 03:50:06');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-05-13 03:50:06','2022-05-13 03:50:06'),(2,'EUR','€',0,2,1,0,0.84,'2022-05-13 03:50:06','2022-05-13 03:50:06'),(3,'VND','₫',0,0,2,0,23203,'2022-05-13 03:50:06','2022-05-13 03:50:06');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'John Smith','john.smith@botble.com','+18186721004','CL','Wisconsin','South Giuseppe','46388 Emily Unions Apt. 570',1,1,'2022-05-13 03:50:09','2022-05-13 03:50:09','12171-1410'),(2,'John Smith','john.smith@botble.com','+14798185105','PS','Kansas','Rogahnberg','1048 Koss Oval',1,0,'2022-05-13 03:50:09','2022-05-13 03:50:09','80658-7198'),(3,'Matt Volkman','ehilpert@example.net','+17256932818','BB','North Dakota','Gerholdland','681 Anjali Isle',2,1,'2022-05-13 03:50:09','2022-05-13 03:50:09','65162'),(4,'Vincenzo Beatty','bednar.eloy@example.net','+19088528125','FO','West Virginia','North Erichton','6004 Thurman Track',3,1,'2022-05-13 03:50:09','2022-05-13 03:50:09','36672'),(5,'Kathlyn Reilly','daphne30@example.com','+19707710172','SM','Hawaii','East Jefferey','348 Kirlin Mall',4,1,'2022-05-13 03:50:10','2022-05-13 03:50:10','23889-0311'),(6,'Prof. Sanford Rohan I','treutel.kristina@example.com','+18505208792','MF','West Virginia','Nienowtown','454 Bogan Common',5,1,'2022-05-13 03:50:10','2022-05-13 03:50:10','98381'),(7,'Delia Effertz','kelley81@example.net','+15019356172','HN','Michigan','East Donnie','3895 Dustin Fort Suite 891',6,1,'2022-05-13 03:50:10','2022-05-13 03:50:10','79521-9315'),(8,'Prof. Monte Abbott Sr.','yrolfson@example.com','+17408508120','AD','Minnesota','Domingoview','7093 Schultz Greens',7,1,'2022-05-13 03:50:10','2022-05-13 03:50:10','06657'),(9,'Eric Roob','jaylen27@example.org','+13524261602','BG','Connecticut','North Jessicafort','617 Jerde Center Suite 111',8,1,'2022-05-13 03:50:10','2022-05-13 03:50:10','79999-2579'),(10,'Litzy Stark MD','ucrooks@example.org','+19704401539','EG','Connecticut','North Lafayettefurt','1092 Luther Mount',9,1,'2022-05-13 03:50:10','2022-05-13 03:50:10','47488'),(11,'Zoey Frami','eva20@example.net','+16204348304','NL','Arizona','Ratkehaven','32734 Osborne Corners Suite 092',10,1,'2022-05-13 03:50:10','2022-05-13 03:50:10','88938-3498'),(12,'Claud Satterfield','maye17@example.com','+14356125788','BL','West Virginia','Estellamouth','68905 Douglas Ford',11,1,'2022-05-13 03:50:10','2022-05-13 03:50:10','49728');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'John Smith','john.smith@botble.com','$2y$10$y/45A4p26XYIsH0KZ0kMY.QFqWhCRqo4F19wjaogp0Be4fqWiZI0K','customers/1.jpg','1997-05-06','+15805723092',NULL,'2022-05-13 03:50:09','2022-05-13 03:50:09','2022-05-13 10:50:09',NULL,'activated'),(2,'Matt Volkman','ehilpert@example.net','$2y$10$iuIl3RTIRmZ57117eFc7luE/WDPME/5uT4FpBdCtQhxAdnYTiUaem','customers/1.jpg','1989-05-11','+14402691835',NULL,'2022-05-13 03:50:09','2022-05-13 03:50:09','2022-05-13 10:50:09',NULL,'activated'),(3,'Vincenzo Beatty','bednar.eloy@example.net','$2y$10$IacJ2t4gXkHDImUXI6xg4OAa3OHt2Tqcg8WRb9r4wViq.qcv72xgC','customers/2.jpg','1973-04-27','+12055008172',NULL,'2022-05-13 03:50:09','2022-05-13 03:50:09','2022-05-13 10:50:09',NULL,'activated'),(4,'Kathlyn Reilly','daphne30@example.com','$2y$10$TKDb5HO7C4e4wMJG8bxPxOiEasbgiK/6D3jrafRrGDcyDGi54zywK','customers/3.jpg','1997-04-15','+13136304814',NULL,'2022-05-13 03:50:10','2022-05-13 03:50:10','2022-05-13 10:50:10',NULL,'activated'),(5,'Prof. Sanford Rohan I','treutel.kristina@example.com','$2y$10$GTGK3s4brblGEOk63xcVgeS5VjJktYQ6TNn35r7kWrcvPkj4r5jQq','customers/4.jpg','1977-04-17','+14844800323',NULL,'2022-05-13 03:50:10','2022-05-13 03:50:10','2022-05-13 10:50:10',NULL,'activated'),(6,'Delia Effertz','kelley81@example.net','$2y$10$cxu2OjoSYkkldSzLzqCYoeDz5t0osBz1XbVzkI2lJg8wp6N5Pg1Qi','customers/5.jpg','1998-04-16','+12605529414',NULL,'2022-05-13 03:50:10','2022-05-13 03:50:10','2022-05-13 10:50:10',NULL,'activated'),(7,'Prof. Monte Abbott Sr.','yrolfson@example.com','$2y$10$GwIVrt7tOxfKxX3xciKhcOu.YbS/T8WgzkaXX/TSvQb75TeyT/.Au','customers/6.jpg','1979-04-23','+14402687363',NULL,'2022-05-13 03:50:10','2022-05-13 03:50:10','2022-05-13 10:50:10',NULL,'activated'),(8,'Eric Roob','jaylen27@example.org','$2y$10$MLtHR.Fedm5YsDXz3NKhyeqJ/65E24AGxHAZ0jh5F2gcGfy5b3eTO','customers/7.jpg','1972-05-09','+14249571038',NULL,'2022-05-13 03:50:10','2022-05-13 03:50:10','2022-05-13 10:50:10',NULL,'activated'),(9,'Litzy Stark MD','ucrooks@example.org','$2y$10$r6zOIlT90JwL/IXCmNdMruhlOOJhQSZGT9FXSH5TNcHYm2Lq.ngem','customers/8.jpg','1985-04-25','+16828404039',NULL,'2022-05-13 03:50:10','2022-05-13 03:50:10','2022-05-13 10:50:10',NULL,'activated'),(10,'Zoey Frami','eva20@example.net','$2y$10$1KHvd.NdJ2YeAqWUXzDorOcd/kv8.W4DCeceWmFQzBNHa8bJO9dZa','customers/9.jpg','1991-05-02','+17348109245',NULL,'2022-05-13 03:50:10','2022-05-13 03:50:10','2022-05-13 10:50:10',NULL,'activated'),(11,'Claud Satterfield','maye17@example.com','$2y$10$4XOOgDb0Fv4Zu.8qMYh2AukVX27E2gGKwc9.czkvGBsWDZuwhO3aW','customers/10.jpg','1981-04-25','+19313899268',NULL,'2022-05-13 03:50:10','2022-05-13 03:50:10','2022-05-13 10:50:10',NULL,'activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,18,67.84,15,5),(2,27,14.4,9,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2022-07-02 00:00:00','published','2022-05-13 03:50:46','2022-05-13 03:50:46'),(2,'Gadgets & Accessories','2022-07-03 00:00:00','published','2022-05-13 03:50:46','2022-05-13 03:50:46');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi trong ngày.'),('vi',2,'Tiện ích & Phụ kiện');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Delia Effertz','+15019356172','kelley81@example.net','HN','Michigan','East Donnie','3895 Dustin Fort Suite 891',1,'79521-9315'),(2,'Prof. Sanford Rohan I','+18505208792','treutel.kristina@example.com','MF','West Virginia','Nienowtown','454 Bogan Common',2,'98381'),(3,'Litzy Stark MD','+19704401539','ucrooks@example.org','EG','Connecticut','North Lafayettefurt','1092 Luther Mount',3,'47488'),(4,'Eric Roob','+13524261602','jaylen27@example.org','BG','Connecticut','North Jessicafort','617 Jerde Center Suite 111',4,'79999-2579'),(5,'Vincenzo Beatty','+19088528125','bednar.eloy@example.net','FO','West Virginia','North Erichton','6004 Thurman Track',5,'36672'),(6,'Kathlyn Reilly','+19707710172','daphne30@example.com','SM','Hawaii','East Jefferey','348 Kirlin Mall',6,'23889-0311'),(7,'Delia Effertz','+15019356172','kelley81@example.net','HN','Michigan','East Donnie','3895 Dustin Fort Suite 891',7,'79521-9315'),(8,'Claud Satterfield','+14356125788','maye17@example.com','BL','West Virginia','Estellamouth','68905 Douglas Ford',8,'49728'),(9,'Matt Volkman','+17256932818','ehilpert@example.net','BB','North Dakota','Gerholdland','681 Anjali Isle',9,'65162'),(10,'Litzy Stark MD','+19704401539','ucrooks@example.org','EG','Connecticut','North Lafayettefurt','1092 Luther Mount',10,'47488'),(11,'Kathlyn Reilly','+19707710172','daphne30@example.com','SM','Hawaii','East Jefferey','348 Kirlin Mall',11,'23889-0311'),(12,'John Smith','+18186721004','john.smith@botble.com','CL','Wisconsin','South Giuseppe','46388 Emily Unions Apt. 570',12,'12171-1410'),(13,'Matt Volkman','+17256932818','ehilpert@example.net','BB','North Dakota','Gerholdland','681 Anjali Isle',13,'65162'),(14,'Litzy Stark MD','+19704401539','ucrooks@example.org','EG','Connecticut','North Lafayettefurt','1092 Luther Mount',14,'47488'),(15,'Eric Roob','+13524261602','jaylen27@example.org','BG','Connecticut','North Jessicafort','617 Jerde Center Suite 111',15,'79999-2579'),(16,'Vincenzo Beatty','+19088528125','bednar.eloy@example.net','FO','West Virginia','North Erichton','6004 Thurman Track',16,'36672'),(17,'Eric Roob','+13524261602','jaylen27@example.org','BG','Connecticut','North Jessicafort','617 Jerde Center Suite 111',17,'79999-2579'),(18,'Kathlyn Reilly','+19707710172','daphne30@example.com','SM','Hawaii','East Jefferey','348 Kirlin Mall',18,'23889-0311'),(19,'Matt Volkman','+17256932818','ehilpert@example.net','BB','North Dakota','Gerholdland','681 Anjali Isle',19,'65162'),(20,'Delia Effertz','+15019356172','kelley81@example.net','HN','Michigan','East Donnie','3895 Dustin Fort Suite 891',20,'79521-9315');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-04-28 03:50:46','2022-04-28 03:50:46'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-04-28 03:50:46','2022-04-28 03:50:46'),(3,'create_shipment','Created shipment for order',0,1,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(4,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,1,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-05-06 19:50:46','2022-05-06 19:50:46'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-05-06 19:50:46','2022-05-06 19:50:46'),(7,'confirm_payment','Payment was confirmed (amount $1,526.88) by %user_name%',0,2,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(9,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,2,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-05-02 15:50:46','2022-05-02 15:50:46'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-05-02 15:50:46','2022-05-02 15:50:46'),(12,'confirm_payment','Payment was confirmed (amount $650.90) by %user_name%',0,3,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(14,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,3,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-05-01 19:50:46','2022-05-01 19:50:46'),(16,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-05-01 19:50:46','2022-05-01 19:50:46'),(17,'confirm_payment','Payment was confirmed (amount $704.95) by %user_name%',0,4,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(18,'create_shipment','Created shipment for order',0,4,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(19,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,4,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(20,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-05-09 03:50:46','2022-05-09 03:50:46'),(21,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-05-09 03:50:46','2022-05-09 03:50:46'),(22,'create_shipment','Created shipment for order',0,5,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-05-05 15:50:47','2022-05-05 15:50:47'),(24,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-05-05 15:50:47','2022-05-05 15:50:47'),(25,'create_shipment','Created shipment for order',0,6,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(26,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,6,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-05-08 11:50:47','2022-05-08 11:50:47'),(28,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-05-08 11:50:47','2022-05-08 11:50:47'),(29,'confirm_payment','Payment was confirmed (amount $957.90) by %user_name%',0,7,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(30,'create_shipment','Created shipment for order',0,7,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-05-04 11:50:47','2022-05-04 11:50:47'),(32,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-05-04 11:50:47','2022-05-04 11:50:47'),(33,'create_shipment','Created shipment for order',0,8,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(34,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,8,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-05-05 03:50:47','2022-05-05 03:50:47'),(36,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-05-05 03:50:47','2022-05-05 03:50:47'),(37,'confirm_payment','Payment was confirmed (amount $762.60) by %user_name%',0,9,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(38,'create_shipment','Created shipment for order',0,9,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(39,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,9,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(40,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-05-08 13:50:47','2022-05-08 13:50:47'),(41,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-05-08 13:50:47','2022-05-08 13:50:47'),(42,'create_shipment','Created shipment for order',0,10,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-05-12 07:50:47','2022-05-12 07:50:47'),(44,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-05-12 07:50:47','2022-05-12 07:50:47'),(45,'create_shipment','Created shipment for order',0,11,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(46,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,11,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-05-07 21:50:47','2022-05-07 21:50:47'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-05-07 21:50:47','2022-05-07 21:50:47'),(49,'confirm_payment','Payment was confirmed (amount $596.25) by %user_name%',0,12,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(50,'create_shipment','Created shipment for order',0,12,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(51,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,12,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-05-12 11:50:47','2022-05-12 11:50:47'),(53,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-05-12 11:50:47','2022-05-12 11:50:47'),(54,'create_shipment','Created shipment for order',0,13,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(55,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-05-10 05:50:47','2022-05-10 05:50:47'),(57,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-05-10 05:50:47','2022-05-10 05:50:47'),(58,'create_shipment','Created shipment for order',0,14,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-05-09 03:50:47','2022-05-09 03:50:47'),(60,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-05-09 03:50:47','2022-05-09 03:50:47'),(61,'create_shipment','Created shipment for order',0,15,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(62,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-05-11 21:50:47','2022-05-11 21:50:47'),(63,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-05-11 21:50:47','2022-05-11 21:50:47'),(64,'create_shipment','Created shipment for order',0,16,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(65,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,16,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(66,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-05-09 19:50:47','2022-05-09 19:50:47'),(67,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-05-09 19:50:47','2022-05-09 19:50:47'),(68,'create_shipment','Created shipment for order',0,17,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(69,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,17,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(70,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-05-10 21:50:47','2022-05-10 21:50:47'),(71,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-05-10 21:50:47','2022-05-10 21:50:47'),(72,'confirm_payment','Payment was confirmed (amount $1,065.60) by %user_name%',0,18,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(73,'create_shipment','Created shipment for order',0,18,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(74,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,18,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(75,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-05-11 19:50:47','2022-05-11 19:50:47'),(76,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-05-11 19:50:47','2022-05-11 19:50:47'),(77,'confirm_payment','Payment was confirmed (amount $604.40) by %user_name%',0,19,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(78,'create_shipment','Created shipment for order',0,19,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(79,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,19,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(80,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-05-12 19:50:47','2022-05-12 19:50:47'),(81,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-05-12 19:50:47','2022-05-12 19:50:47'),(82,'confirm_payment','Payment was confirmed (amount $1,297.73) by %user_name%',0,20,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(83,'create_shipment','Created shipment for order',0,20,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(84,'update_status','Order confirmed by %user_name%',0,2,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(85,'update_status','Order confirmed by %user_name%',0,3,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(86,'update_status','Order confirmed by %user_name%',0,4,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(87,'update_status','Order confirmed by %user_name%',0,9,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(88,'update_status','Order confirmed by %user_name%',0,12,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(89,'update_status','Order confirmed by %user_name%',0,18,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(90,'update_status','Order confirmed by %user_name%',0,19,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,416.00,41.60,'[]',38,'Headphone Ultra Bass',719.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(2,1,3,123.00,12.30,'[]',53,'Apple iPhone 13 Plus',1980.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(3,1,2,120.00,12.00,'[]',100,'Phillips Mouse',1556.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(4,1,2,56.00,5.60,'[]',130,'Samsung Smart TV',1300.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(5,2,3,249.00,24.90,'[]',33,'Smart Home Speaker',2667.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(6,2,2,58.00,5.80,'[]',48,'Camera Samsung SS-24',1278.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(7,2,3,124.00,12.40,'[]',87,'Leather Watch Band Serial 3',2070.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(8,2,3,80.25,8.03,'[]',110,'Dual Camera 20MP',1512.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(9,3,2,112.00,11.20,'[]',93,'Macbook Pro 2015 13 inch',1362.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(10,3,3,127.00,12.70,'[]',107,'Gaming Keyboard',1863.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(11,3,1,20.00,2.00,'[]',116,'Beat Headphone',883.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(12,4,3,119.00,11.90,'[]',51,'Leather Watch Band',2283.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(13,4,2,110.00,11.00,'[]',66,'Macbook Pro 13 inch',1324.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(14,4,1,40.50,4.05,'[]',112,'Smart Watches',623.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(15,4,1,55.00,5.50,'[]',121,'Red & Black Headphone',739.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(16,5,1,118.00,11.80,'[]',82,'Cool Smart Watches',863.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(17,5,2,40.50,4.05,'[]',115,'Smart Watches',1246.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(18,6,1,122.00,12.20,'[]',97,'Historic Alarm Clock',844.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(19,6,1,127.00,12.70,'[]',104,'Gaming Keyboard',621.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(20,6,3,127.00,12.70,'[]',107,'Gaming Keyboard',1863.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(21,7,2,332.00,33.20,'[]',63,'Macbook Air 12 inch',1314.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(22,7,1,110.00,11.00,'[]',67,'Macbook Pro 13 inch',662.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(23,7,1,127.00,12.70,'[]',106,'Gaming Keyboard',621.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(24,8,2,130.00,13.00,'[]',56,'Macbook Pro 2015',1470.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(25,8,1,123.00,12.30,'[]',71,'MacSafe 80W',726.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(26,8,2,118.00,11.80,'[]',83,'Cool Smart Watches',1726.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(27,8,1,80.25,8.03,'[]',111,'Dual Camera 20MP',504.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(28,9,3,126.00,12.60,'[]',75,'Hand playstation',2181.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(29,9,3,120.00,12.00,'[]',101,'Phillips Mouse',2334.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(30,10,1,123.00,12.30,'[]',52,'Apple iPhone 13 Plus',660.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(31,10,3,126.00,12.60,'[]',64,'Apple Watch Serial 7',1635.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(32,10,3,126.00,12.60,'[]',75,'Hand playstation',2181.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(33,10,2,80.25,8.03,'[]',109,'Dual Camera 20MP',1008.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(34,11,1,130.00,13.00,'[]',57,'Macbook Pro 2015',735.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(35,11,3,332.00,33.20,'[]',63,'Macbook Air 12 inch',1971.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(36,11,1,126.00,12.60,'[]',74,'Hand playstation',727.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(37,11,3,112.00,11.20,'[]',92,'Macbook Pro 2015 13 inch',2043.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(38,12,1,249.00,24.90,'[]',36,'Smart Home Speaker',889.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(39,12,2,113.00,11.30,'[]',80,'Apple Airpods Serial 3',1370.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(40,12,2,40.50,4.05,'[]',112,'Smart Watches',1246.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(41,13,1,332.00,33.20,'[]',62,'Macbook Air 12 inch',657.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(42,13,3,124.00,12.40,'[]',88,'Leather Watch Band Serial 3',2070.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(43,14,3,130.00,13.00,'[]',57,'Macbook Pro 2015',2205.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(44,14,1,50.00,5.00,'[]',124,'Audio Equipment',831.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(45,15,2,332.00,33.20,'[]',63,'Macbook Air 12 inch',1314.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(46,15,2,120.00,12.00,'[]',69,'Apple Keyboard',1750.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(47,15,3,128.00,12.80,'[]',98,'Black Glasses',2460.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(48,15,2,127.00,12.70,'[]',108,'Gaming Keyboard',1242.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(49,16,3,110.00,11.00,'[]',67,'Macbook Pro 13 inch',1986.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(50,16,3,123.00,12.30,'[]',72,'MacSafe 80W',2178.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(51,16,1,126.00,12.60,'[]',75,'Hand playstation',727.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(52,17,1,113.00,11.30,'[]',78,'Apple Airpods Serial 3',685.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(53,17,1,112.00,11.20,'[]',93,'Macbook Pro 2015 13 inch',681.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(54,17,3,20.00,2.00,'[]',118,'Beat Headphone',2649.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(55,18,3,249.00,24.90,'[]',36,'Smart Home Speaker',2667.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(56,18,1,123.00,12.30,'[]',53,'Apple iPhone 13 Plus',660.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(57,18,1,124.00,12.40,'[]',86,'Leather Watch Band Serial 3',690.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(58,18,1,20.00,2.00,'[]',118,'Beat Headphone',883.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(59,19,1,332.00,33.20,'[]',62,'Macbook Air 12 inch',657.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(60,19,1,122.00,12.20,'[]',94,'Historic Alarm Clock',844.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(61,19,2,50.00,5.00,'[]',122,'Audio Equipment',1662.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(62,20,3,249.00,24.90,'[]',33,'Smart Home Speaker',2667.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(63,20,2,112.00,11.20,'[]',92,'Macbook Pro 2015 13 inch',1362.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(64,20,2,80.25,8.03,'[]',110,'Dual Camera 20MP',1008.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(65,20,1,111.00,11.10,'[]',127,'Smart Televisions',893.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,6,'1','default','completed',1208.50,71.50,0.00,NULL,NULL,0.00,1137.00,1,NULL,1,'GgZLoOZ7eHCzUGtlVFOWt4MGHrSUD',1,'2022-04-28 03:50:46','2022-05-13 03:50:46'),(2,5,'1','default','completed',1526.88,51.13,0.00,NULL,NULL,0.00,1475.75,1,NULL,1,'OI75e70Qi0I0Q4T8B8Ps7yQVESXY0',2,'2022-05-06 19:50:46','2022-05-13 03:50:46'),(3,9,'1','default','completed',650.90,25.90,0.00,NULL,NULL,0.00,625.00,1,NULL,1,'Z4x3XKKvPI6bQHuPrafIzfQs2fgNY',3,'2022-05-02 15:50:46','2022-05-13 03:50:46'),(4,8,'1','default','completed',704.95,32.45,0.00,NULL,NULL,0.00,672.50,1,NULL,1,'RZxa5wopkKkQ005OyblSFp3YqChVE',4,'2022-05-01 19:50:46','2022-05-13 03:50:46'),(5,3,'1','default','pending',214.85,15.85,0.00,NULL,NULL,0.00,199.00,1,NULL,1,'2Xmfu6Kt8nWGl3pcsT5IMrFoqKaPX',5,'2022-05-09 03:50:46','2022-05-13 03:50:47'),(6,4,'1','default','completed',667.60,37.60,0.00,NULL,NULL,0.00,630.00,1,NULL,1,'4fEKrieemMiT6cXFTwWXBgwT6vxr2',6,'2022-05-05 15:50:47','2022-05-13 03:50:47'),(7,6,'1','default','pending',957.90,56.90,0.00,NULL,NULL,0.00,901.00,1,NULL,1,'C05DLQdAuFp4fCIeDhJ3oFFCePzzM',7,'2022-05-08 11:50:47','2022-05-13 03:50:47'),(8,11,'1','default','completed',744.38,45.13,0.00,NULL,NULL,0.00,699.25,1,NULL,1,'Ew9QboAuwqFx93Hjt7IfkX3nfR625',8,'2022-05-04 11:50:47','2022-05-13 03:50:47'),(9,2,'1','default','completed',762.60,24.60,0.00,NULL,NULL,0.00,738.00,1,NULL,1,'ijn4aK5NT52gauca1CPbsPPuNigrY',9,'2022-05-05 03:50:47','2022-05-13 03:50:47'),(10,9,'1','default','pending',1085.03,45.53,0.00,NULL,NULL,0.00,1039.50,1,NULL,1,'ytGu1ZxTFyblTNqtHWvIFVpFdzU22',10,'2022-05-08 13:50:47','2022-05-13 03:50:47'),(11,4,'1','default','completed',1658.00,70.00,0.00,NULL,NULL,0.00,1588.00,1,NULL,1,'L7fNx5y805Jacjlw7kKlIHn8WqmYf',11,'2022-05-12 07:50:47','2022-05-13 03:50:47'),(12,1,'1','default','completed',596.25,40.25,0.00,NULL,NULL,0.00,556.00,1,NULL,1,'COPi7jtxxLnueQJHNGPdZOrpJbVJA',12,'2022-05-07 21:50:47','2022-05-13 03:50:47'),(13,2,'1','default','completed',749.60,45.60,0.00,NULL,NULL,0.00,704.00,1,NULL,1,'vsHTL7ZvTbnWSSQGJf6n0OfP0yC6u',13,'2022-05-12 11:50:47','2022-05-13 03:50:47'),(14,9,'1','default','pending',458.00,18.00,0.00,NULL,NULL,0.00,440.00,1,NULL,1,'1xklXIF2v46PDgMK2P66zAfxv8AWr',14,'2022-05-10 05:50:47','2022-05-13 03:50:47'),(15,8,'1','default','pending',1612.70,70.70,0.00,NULL,NULL,0.00,1542.00,1,NULL,1,'6m44UCLDXevxUZt3PnHdzeYp9HHmh',15,'2022-05-09 03:50:47','2022-05-13 03:50:47'),(16,3,'1','default','completed',860.90,35.90,0.00,NULL,NULL,0.00,825.00,1,NULL,1,'nex037SnKne8oLfMSmBMH9FBo220o',16,'2022-05-11 21:50:47','2022-05-13 03:50:47'),(17,8,'1','default','completed',309.50,24.50,0.00,NULL,NULL,0.00,285.00,1,NULL,1,'FJjvYcBUkVYkcN0OqRww0517V0ypq',17,'2022-05-09 19:50:47','2022-05-13 03:50:47'),(18,4,'1','default','completed',1065.60,51.60,0.00,NULL,NULL,0.00,1014.00,1,NULL,1,'HHnLMLlfImuhdu3cAbyhPg0jE9u6p',18,'2022-05-10 21:50:47','2022-05-13 03:50:47'),(19,2,'1','default','completed',604.40,50.40,0.00,NULL,NULL,0.00,554.00,1,NULL,1,'XYZFZgD1i2lWRZQFKm9vK8ryyZM2P',19,'2022-05-11 19:50:47','2022-05-13 03:50:47'),(20,6,'1','default','pending',1297.73,55.23,0.00,NULL,NULL,0.00,1242.50,1,NULL,1,'vwZHV8CDPRTFGdN0GzNUnx3GfYTpI',20,'2022-05-12 19:50:47','2022-05-13 03:50:47');
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2022-05-13 03:50:07','2022-05-13 03:50:07',1),(2,'Size','size','text',1,1,1,'published',1,'2022-05-13 03:50:07','2022-05-13 03:50:07',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(6,2,'S','s',NULL,NULL,1,1,'published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(7,2,'M','m',NULL,NULL,0,2,'published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(8,2,'L','l',NULL,NULL,0,3,'published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2022-05-13 03:50:07','2022-05-13 03:50:07');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Television',0,NULL,'published',0,'product-categories/p-1.png',1,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(2,'Home Audio & Theaters',1,NULL,'published',0,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(3,'TV & Videos',1,NULL,'published',1,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(4,'Camera, Photos & Videos',1,NULL,'published',2,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(5,'Cellphones & Accessories',1,NULL,'published',3,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(6,'Headphones',1,NULL,'published',4,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(7,'Videos games',1,NULL,'published',5,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(8,'Wireless Speakers',1,NULL,'published',6,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(9,'Office Electronic',1,NULL,'published',7,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(10,'Mobile',0,NULL,'published',1,'product-categories/p-2.png',1,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(11,'Digital Cables',10,NULL,'published',0,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(12,'Audio & Video Cables',10,NULL,'published',1,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(13,'Batteries',10,NULL,'published',2,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(14,'Headphone',0,NULL,'published',2,'product-categories/p-3.png',1,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(15,'Computer & Tablets',14,NULL,'published',0,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(16,'Laptop',14,NULL,'published',1,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(17,'Monitors',14,NULL,'published',2,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(18,'Computer Components',14,NULL,'published',3,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(19,'Watches',0,NULL,'published',3,'product-categories/p-4.png',1,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(20,'Drive & Storages',19,NULL,'published',0,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(21,'Gaming Laptop',19,NULL,'published',1,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(22,'Security & Protection',19,NULL,'published',2,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(23,'Accessories',19,NULL,'published',3,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(24,'Game',0,NULL,'published',4,'product-categories/p-5.png',1,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(25,'Camera',0,NULL,'published',5,'product-categories/p-6.png',1,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(26,'Audio',0,NULL,'published',6,'product-categories/p-7.png',1,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(27,'Mobile & Tablet',0,NULL,'published',7,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(28,'Accessories',0,NULL,'published',8,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(29,'Home Audio & Theater',0,NULL,'published',9,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(30,'Tv & Smart Box',0,NULL,'published',10,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(31,'Printer',0,NULL,'published',11,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(32,'Computer',0,NULL,'published',12,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(33,'Fax Machine',0,NULL,'published',13,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07'),(34,'Mouse',0,NULL,'published',14,NULL,0,'2022-05-13 03:50:07','2022-05-13 03:50:07');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Tivi',NULL),('vi',2,'Home Audio & Theaters',NULL),('vi',3,'TV & Videos',NULL),('vi',4,'Camera, Photos & Videos',NULL),('vi',5,'Cellphones & Accessories',NULL),('vi',6,'Headphones',NULL),('vi',7,'Videos games',NULL),('vi',8,'Wireless Speakers',NULL),('vi',9,'Office Electronic',NULL),('vi',10,'Di động',NULL),('vi',11,'Digital Cables',NULL),('vi',12,'Audio & Video Cables',NULL),('vi',13,'Batteries',NULL),('vi',14,'Tai nghe',NULL),('vi',15,'Computer & Tablets',NULL),('vi',16,'Laptop',NULL),('vi',17,'Monitors',NULL),('vi',18,'Computer Components',NULL),('vi',19,'Đồng hồ',NULL),('vi',20,'Drive & Storages',NULL),('vi',21,'Gaming Laptop',NULL),('vi',22,'Security & Protection',NULL),('vi',23,'Accessories',NULL),('vi',24,'Trò chơi',NULL),('vi',25,'Máy ảnh',NULL),('vi',26,'Âm thanh',NULL),('vi',27,'Di động & Máy tính bảng',NULL),('vi',28,'Phụ kiện',NULL),('vi',29,'Âm thanh & hình ảnh',NULL),('vi',30,'Tv & Smart Box',NULL),('vi',31,'Máy in',NULL),('vi',32,'Máy tính',NULL),('vi',33,'Máy Fax',NULL),('vi',34,'Chuột máy tính',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,5,1),(2,8,2),(3,2,3),(4,6,4),(5,4,5),(6,9,6),(7,7,7),(8,9,8),(9,2,9),(10,1,10),(11,5,11),(12,11,12),(13,3,13),(14,13,14),(15,4,15),(16,8,16),(17,10,17),(18,2,18),(19,9,19),(20,14,20),(21,9,21),(22,3,22),(23,10,23),(24,1,24),(25,5,25),(26,3,26),(27,8,27),(28,9,28),(29,4,29),(30,7,30),(31,11,31);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,3,2),(3,1,3),(4,3,4),(5,2,5),(6,2,6),(7,2,7),(8,3,8),(9,1,9),(10,1,10),(11,2,11),(12,1,12),(13,1,13),(14,2,14),(15,2,15),(16,3,16),(17,2,17),(18,2,18),(19,2,19),(20,3,20),(21,1,21),(22,2,22),(23,2,23),(24,3,24),(25,2,25),(26,1,26),(27,2,27),(28,2,28),(29,2,29),(30,2,30),(31,2,31);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-05-13 03:50:07','2022-05-13 03:50:07',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-05-13 03:50:07','2022-05-13 03:50:07',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-05-13 03:50:07','2022-05-13 03:50:07',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,4),(2,1,16),(3,1,3),(4,1,24),(5,2,20),(6,2,19),(7,2,16),(8,2,22),(9,3,4),(10,3,23),(11,3,25),(12,3,1),(13,4,15),(14,4,16),(15,4,11),(16,4,22),(17,5,12),(18,5,6),(19,5,7),(20,5,29),(21,6,26),(22,6,11),(23,6,20),(24,6,28),(25,7,12),(26,7,1),(27,7,4),(28,7,19),(29,8,22),(30,8,24),(31,8,3),(32,8,13),(33,9,17),(34,9,25),(35,9,20),(36,9,18),(37,10,9),(38,10,4),(39,10,16),(40,10,7),(41,11,5),(42,11,16),(43,11,12),(44,11,22),(45,12,11),(46,12,28),(47,12,2),(48,13,5),(49,13,24),(50,13,29),(51,13,14),(52,14,8),(53,14,26),(54,14,29),(55,14,27),(56,15,3),(57,15,31),(58,15,14),(59,15,2),(60,16,12),(61,16,29),(62,16,28),(63,17,10),(64,17,6),(65,17,15),(66,17,14),(67,18,13),(68,18,20),(69,18,11),(70,18,19),(71,19,25),(72,19,11),(73,19,22),(74,19,27),(75,20,24),(76,20,14),(77,20,8),(78,20,6),(79,21,7),(80,21,15),(81,21,9),(82,21,3),(83,22,16),(84,22,1),(85,22,27),(86,22,7),(87,23,5),(88,23,13),(89,23,2),(90,24,17),(91,24,19),(92,24,29),(93,24,5),(94,25,8),(95,25,18),(96,25,2),(97,25,22),(98,26,3),(99,26,31),(100,26,18),(101,26,14),(102,27,15),(103,27,1),(104,27,14),(105,27,16),(106,28,24),(107,28,10),(108,28,23),(109,28,14),(110,29,5),(111,29,24),(112,29,13),(113,30,2),(114,30,6),(115,30,16),(116,30,22),(117,31,14),(118,31,29),(119,31,26),(120,31,28);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,9),(1,15),(1,18),(2,12),(2,21),(3,3),(3,6),(3,24),(3,27),(3,30);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(2,'New','#00c9a7','published','2022-05-13 03:50:07','2022-05-13 03:50:07'),(3,'Sale','#fe9931','published','2022-05-13 03:50:07','2022-05-13 03:50:07');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,3),(1,5),(2,1),(2,2),(2,6),(3,3),(3,6),(4,1),(4,2),(5,1),(5,2),(5,4),(6,3),(6,5),(6,6),(7,4),(7,5),(7,6),(8,1),(8,2),(8,3),(9,1),(9,2),(10,3),(10,6),(11,3),(11,5),(12,2),(12,4),(13,2),(13,3),(13,6),(14,5),(14,6),(15,3),(15,5),(16,5),(16,6),(17,1),(17,3),(17,4),(18,2),(18,5),(19,1),(19,2),(19,5),(20,1),(20,3),(21,1),(21,3),(21,6),(22,1),(22,4),(22,5),(23,1),(23,2),(23,6),(24,2),(24,6),(25,1),(25,3),(25,4),(26,1),(26,3),(26,6),(27,3),(27,5),(28,1),(28,2),(28,6),(29,3),(29,4),(29,6),(30,2),(30,6),(31,3),(31,4),(31,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2022-05-13 03:50:46','2022-05-13 03:50:46'),(2,'Mobile',NULL,'published','2022-05-13 03:50:46','2022-05-13 03:50:46'),(3,'Iphone',NULL,'published','2022-05-13 03:50:46','2022-05-13 03:50:46'),(4,'Printer',NULL,'published','2022-05-13 03:50:46','2022-05-13 03:50:46'),(5,'Office',NULL,'published','2022-05-13 03:50:46','2022-05-13 03:50:46'),(6,'IT',NULL,'published','2022-05-13 03:50:46','2022-05-13 03:50:46');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,4,1),(2,9,1),(3,5,2),(4,9,2),(5,2,3),(6,7,3),(7,4,4),(8,9,4),(9,4,5),(10,9,5),(11,3,6),(12,9,6),(13,1,7),(14,9,7),(15,5,8),(16,9,8),(17,5,9),(18,7,9),(19,3,10),(20,8,10),(21,1,11),(22,10,11),(23,3,12),(24,8,12),(25,5,13),(26,6,13),(27,2,14),(28,6,14),(29,1,15),(30,9,15),(31,4,16),(32,7,16),(33,3,17),(34,8,17),(35,3,18),(36,6,18),(37,2,19),(38,9,19),(39,2,20),(40,8,20),(41,1,21),(42,7,21),(43,1,22),(44,6,22),(45,4,23),(46,9,23),(47,4,24),(48,9,24),(49,1,25),(50,6,25),(51,4,26),(52,6,26),(53,4,27),(54,6,27),(55,4,28),(56,8,28),(57,1,29),(58,7,29),(59,5,30),(60,8,30),(61,1,31),(62,9,31),(63,4,32),(64,9,32),(65,5,33),(66,8,33),(67,3,34),(68,9,34),(69,3,35),(70,9,35),(71,2,36),(72,6,36),(73,5,37),(74,10,37),(75,5,38),(76,7,38),(77,5,39),(78,7,39),(79,1,40),(80,7,40),(81,4,41),(82,7,41),(83,2,42),(84,9,42),(85,1,43),(86,7,43),(87,4,44),(88,8,44),(89,4,45),(90,9,45),(91,1,46),(92,8,46),(93,1,47),(94,9,47),(95,3,48),(96,8,48),(97,2,49),(98,10,49),(99,1,50),(100,6,50),(101,3,51),(102,6,51),(103,2,52),(104,7,52),(105,2,53),(106,7,53),(107,3,54),(108,7,54),(109,4,55),(110,8,55),(111,3,56),(112,10,56),(113,4,57),(114,6,57),(115,3,58),(116,9,58),(117,1,59),(118,6,59),(119,4,60),(120,7,60),(121,5,61),(122,6,61),(123,4,62),(124,10,62),(125,4,63),(126,7,63),(127,1,64),(128,8,64),(129,3,65),(130,7,65),(131,4,66),(132,8,66),(133,1,67),(134,9,67),(135,1,68),(136,6,68),(137,1,69),(138,9,69),(139,4,70),(140,9,70),(141,5,71),(142,10,71),(143,4,72),(144,9,72),(145,2,73),(146,9,73),(147,1,74),(148,10,74),(149,2,75),(150,8,75),(151,4,76),(152,9,76),(153,4,77),(154,10,77),(155,1,78),(156,10,78),(157,1,79),(158,6,79),(159,5,80),(160,8,80),(161,3,81),(162,9,81),(163,5,82),(164,6,82),(165,1,83),(166,9,83),(167,1,84),(168,6,84),(169,5,85),(170,8,85),(171,4,86),(172,9,86),(173,5,87),(174,7,87),(175,3,88),(176,7,88),(177,4,89),(178,10,89),(179,5,90),(180,9,90),(181,2,91),(182,7,91),(183,5,92),(184,6,92),(185,3,93),(186,9,93),(187,5,94),(188,9,94),(189,1,95),(190,8,95),(191,3,96),(192,9,96),(193,2,97),(194,8,97),(195,2,98),(196,6,98),(197,4,99),(198,9,99),(199,5,100),(200,10,100);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,32,1,1),(2,33,1,0),(3,34,1,0),(4,35,1,0),(5,36,1,0),(6,37,2,1),(7,38,2,0),(8,39,3,1),(9,40,3,0),(10,41,4,1),(11,42,4,0),(12,43,4,0),(13,44,5,1),(14,45,5,0),(15,46,5,0),(16,47,6,1),(17,48,6,0),(18,49,7,1),(19,50,7,0),(20,51,7,0),(21,52,8,1),(22,53,8,0),(23,54,8,0),(24,55,8,0),(25,56,9,1),(26,57,9,0),(27,58,9,0),(28,59,9,0),(29,60,10,1),(30,61,10,0),(31,62,10,0),(32,63,10,0),(33,64,11,1),(34,65,11,0),(35,66,12,1),(36,67,12,0),(37,68,13,1),(38,69,13,0),(39,70,13,0),(40,71,14,1),(41,72,14,0),(42,73,14,0),(43,74,15,1),(44,75,15,0),(45,76,15,0),(46,77,15,0),(47,78,16,1),(48,79,16,0),(49,80,16,0),(50,81,17,1),(51,82,17,0),(52,83,17,0),(53,84,18,1),(54,85,18,0),(55,86,19,1),(56,87,19,0),(57,88,19,0),(58,89,20,1),(59,90,20,0),(60,91,20,0),(61,92,20,0),(62,93,20,0),(63,94,21,1),(64,95,21,0),(65,96,21,0),(66,97,21,0),(67,98,22,1),(68,99,22,0),(69,100,23,1),(70,101,23,0),(71,102,23,0),(72,103,23,0),(73,104,24,1),(74,105,24,0),(75,106,24,0),(76,107,24,0),(77,108,24,0),(78,109,25,1),(79,110,25,0),(80,111,25,0),(81,112,26,1),(82,113,26,0),(83,114,26,0),(84,115,26,0),(85,116,27,1),(86,117,27,0),(87,118,27,0),(88,119,28,1),(89,120,28,0),(90,121,28,0),(91,122,29,1),(92,123,29,0),(93,124,29,0),(94,125,29,0),(95,126,29,0),(96,127,30,1),(97,128,31,1),(98,129,31,0),(99,130,31,0),(100,131,31,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0),(47,1,24,0),(48,2,24,0),(49,1,25,0),(50,2,25,0),(51,1,26,0),(52,2,26,0),(53,1,27,0),(54,2,27,0),(55,1,28,0),(56,2,28,0),(57,1,29,0),(58,2,29,0),(59,1,30,0),(60,2,30,0),(61,1,31,0),(62,2,31,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]','HS-171-A0',0,15,0,1,1,4,0,0,249,NULL,NULL,NULL,18.00,15.00,15.00,889.00,1,105765,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','HS-168-A0',0,16,0,1,1,4,0,0,416,NULL,NULL,NULL,12.00,12.00,15.00,719.00,1,165555,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]','HS-126-A0',0,13,0,1,1,6,0,0,414,NULL,NULL,NULL,15.00,11.00,15.00,605.00,1,159801,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(4,'Chikie - Bluetooth Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','HS-132-A0',0,18,0,1,1,4,0,0,78,62.4,NULL,NULL,13.00,17.00,18.00,889.00,1,161514,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(5,'Camera Hikvision HK-35VS8','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','HS-110-A0',0,15,0,1,1,6,0,0,49,NULL,NULL,NULL,11.00,20.00,14.00,578.00,1,60674,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-183-A0',0,10,0,1,1,7,0,0,58,NULL,NULL,NULL,10.00,17.00,17.00,639.00,1,129556,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-175-A0',0,11,0,1,1,3,0,0,119,NULL,NULL,NULL,10.00,18.00,20.00,761.00,1,175174,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(8,'Apple iPhone 13 Plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-165-A0',0,11,0,1,1,5,0,0,123,92.25,NULL,NULL,10.00,11.00,14.00,660.00,1,22624,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(9,'Macbook Pro 2015','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-196-A0',0,16,0,1,1,5,0,0,130,NULL,NULL,NULL,16.00,12.00,19.00,735.00,1,53187,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-182-A0',0,10,0,1,1,5,0,0,332,NULL,NULL,NULL,10.00,15.00,18.00,657.00,1,151082,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-146-A0',0,12,0,1,1,2,0,0,126,NULL,NULL,NULL,18.00,13.00,17.00,545.00,1,23211,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(12,'Macbook Pro 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-101-A0',0,17,0,1,1,5,0,0,110,77,NULL,NULL,15.00,13.00,20.00,662.00,1,168949,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(13,'Apple Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-167-A0',0,13,0,1,1,7,0,0,120,NULL,NULL,NULL,15.00,13.00,12.00,875.00,1,120379,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-178-A0',0,18,0,1,1,4,0,0,123,NULL,NULL,NULL,10.00,11.00,11.00,726.00,1,2057,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-146-A0',0,18,0,1,1,7,0,0,126,NULL,NULL,NULL,18.00,18.00,12.00,727.00,1,93639,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(16,'Apple Airpods Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','HS-196-A0',0,10,0,1,1,2,0,0,113,93.79,NULL,NULL,14.00,17.00,19.00,685.00,1,32417,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(17,'Cool Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\"]','HS-185-A0',0,15,0,1,1,3,0,0,118,NULL,NULL,NULL,18.00,13.00,10.00,863.00,1,58913,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]','HS-124-A0',0,12,0,1,1,1,0,0,128,NULL,NULL,NULL,14.00,15.00,16.00,803.00,1,15727,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-150-A0',0,11,0,1,1,6,0,0,124,NULL,NULL,NULL,13.00,16.00,10.00,690.00,1,120634,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(20,'Macbook Pro 2015 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-177-A0',0,19,0,1,1,7,0,0,112,97.44,NULL,NULL,16.00,10.00,11.00,681.00,1,149641,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(21,'Historic Alarm Clock','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-132-A0',0,18,0,1,1,5,0,0,122,NULL,NULL,NULL,20.00,15.00,18.00,844.00,1,120869,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-143-A0',0,14,0,1,1,2,0,0,128,NULL,NULL,NULL,18.00,15.00,14.00,820.00,1,108260,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-179-A0',0,20,0,1,1,6,0,0,120,NULL,NULL,NULL,15.00,12.00,14.00,778.00,1,36433,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(24,'Gaming Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-152-A0',0,10,0,1,1,7,0,0,127,90.17,NULL,NULL,20.00,11.00,12.00,621.00,1,12842,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(25,'Dual Camera 20MP','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25.jpg\",\"products\\/25-1.jpg\"]','HS-118-A0',0,13,0,1,0,4,0,0,80.25,NULL,NULL,NULL,10.00,19.00,12.00,504.00,1,42940,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(26,'Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26.jpg\",\"products\\/26-1.jpg\",\"products\\/26-2.jpg\"]','HS-141-A0',0,15,0,1,0,7,0,0,40.5,NULL,NULL,NULL,12.00,13.00,10.00,623.00,1,166767,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(27,'Beat Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27.jpg\",\"products\\/27-1.jpg\"]','HS-109-A0',0,10,0,1,0,1,0,0,20,NULL,NULL,NULL,15.00,10.00,13.00,883.00,1,190602,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(28,'Red & Black Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28.jpg\",\"products\\/28-1.jpg\"]','HS-188-A0',0,13,0,1,0,3,0,0,55,39.05,NULL,NULL,19.00,16.00,13.00,739.00,1,125944,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(29,'Audio Equipment','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29.jpg\",\"products\\/29-1.jpg\"]','HS-120-A0',0,15,0,1,0,2,0,0,50,NULL,NULL,NULL,14.00,20.00,10.00,831.00,1,25219,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(30,'Smart Televisions','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30.jpg\",\"products\\/30-1.jpg\"]','HS-122-A0',0,10,0,1,0,2,0,0,111,NULL,NULL,NULL,17.00,17.00,19.00,893.00,1,28471,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(31,'Samsung Smart TV','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31.jpg\",\"products\\/31-1.jpg\"]','HS-116-A0',0,17,0,1,0,4,0,0,56,NULL,NULL,NULL,11.00,13.00,11.00,650.00,1,18845,'2022-05-13 03:50:44','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(32,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-171-A0',0,15,0,1,0,4,1,0,249,NULL,NULL,NULL,18.00,15.00,15.00,889.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(33,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-171-A0-A1',0,15,0,1,0,4,1,0,249,NULL,NULL,NULL,18.00,15.00,15.00,889.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(34,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1-2.jpg\"]','HS-171-A0-A2',0,15,0,1,0,4,1,0,249,NULL,NULL,NULL,18.00,15.00,15.00,889.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(35,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1-3.jpg\"]','HS-171-A0-A3',0,15,0,1,0,4,1,0,249,NULL,NULL,NULL,18.00,15.00,15.00,889.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(36,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-171-A0-A4',0,15,0,1,0,4,1,0,249,NULL,NULL,NULL,18.00,15.00,15.00,889.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(37,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-168-A0',0,16,0,1,0,4,1,0,416,NULL,NULL,NULL,12.00,12.00,15.00,719.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(38,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-168-A0-A1',0,16,0,1,0,4,1,0,416,NULL,NULL,NULL,12.00,12.00,15.00,719.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(39,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-126-A0',0,13,0,1,0,6,1,0,414,NULL,NULL,NULL,15.00,11.00,15.00,605.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(40,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-126-A0-A1',0,13,0,1,0,6,1,0,414,NULL,NULL,NULL,15.00,11.00,15.00,605.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(41,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-132-A0',0,18,0,1,0,4,1,0,78,62.4,NULL,NULL,13.00,17.00,18.00,889.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(42,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-132-A0-A1',0,18,0,1,0,4,1,0,78,65.52,NULL,NULL,13.00,17.00,18.00,889.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(43,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','HS-132-A0-A2',0,18,0,1,0,4,1,0,78,68.64,NULL,NULL,13.00,17.00,18.00,889.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(44,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-110-A0',0,15,0,1,0,6,1,0,49,NULL,NULL,NULL,11.00,20.00,14.00,578.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(45,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-110-A0-A1',0,15,0,1,0,6,1,0,49,NULL,NULL,NULL,11.00,20.00,14.00,578.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(46,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','HS-110-A0-A2',0,15,0,1,0,6,1,0,49,NULL,NULL,NULL,11.00,20.00,14.00,578.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(47,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-183-A0',0,10,0,1,0,7,1,0,58,NULL,NULL,NULL,10.00,17.00,17.00,639.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(48,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-183-A0-A1',0,10,0,1,0,7,1,0,58,NULL,NULL,NULL,10.00,17.00,17.00,639.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(49,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-175-A0',0,11,0,1,0,3,1,0,119,NULL,NULL,NULL,10.00,18.00,20.00,761.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(50,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-175-A0-A1',0,11,0,1,0,3,1,0,119,NULL,NULL,NULL,10.00,18.00,20.00,761.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(51,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-175-A0-A2',0,11,0,1,0,3,1,0,119,NULL,NULL,NULL,10.00,18.00,20.00,761.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(52,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-165-A0',0,11,0,1,0,5,1,0,123,92.25,NULL,NULL,10.00,11.00,14.00,660.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(53,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-165-A0-A1',0,11,0,1,0,5,1,0,123,100.86,NULL,NULL,10.00,11.00,14.00,660.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(54,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-165-A0-A2',0,11,0,1,0,5,1,0,123,105.78,NULL,NULL,10.00,11.00,14.00,660.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(55,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-165-A0-A3',0,11,0,1,0,5,1,0,123,86.1,NULL,NULL,10.00,11.00,14.00,660.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(56,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-196-A0',0,16,0,1,0,5,1,0,130,NULL,NULL,NULL,16.00,12.00,19.00,735.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(57,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-196-A0-A1',0,16,0,1,0,5,1,0,130,NULL,NULL,NULL,16.00,12.00,19.00,735.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(58,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-196-A0-A2',0,16,0,1,0,5,1,0,130,NULL,NULL,NULL,16.00,12.00,19.00,735.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(59,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-196-A0-A3',0,16,0,1,0,5,1,0,130,NULL,NULL,NULL,16.00,12.00,19.00,735.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(60,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-182-A0',0,10,0,1,0,5,1,0,332,NULL,NULL,NULL,10.00,15.00,18.00,657.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(61,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-182-A0-A1',0,10,0,1,0,5,1,0,332,NULL,NULL,NULL,10.00,15.00,18.00,657.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(62,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-182-A0-A2',0,10,0,1,0,5,1,0,332,NULL,NULL,NULL,10.00,15.00,18.00,657.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(63,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-182-A0-A3',0,10,0,1,0,5,1,0,332,NULL,NULL,NULL,10.00,15.00,18.00,657.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(64,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-146-A0',0,12,0,1,0,2,1,0,126,NULL,NULL,NULL,18.00,13.00,17.00,545.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(65,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-146-A0-A1',0,12,0,1,0,2,1,0,126,NULL,NULL,NULL,18.00,13.00,17.00,545.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(66,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-101-A0',0,17,0,1,0,5,1,0,110,77,NULL,NULL,15.00,13.00,20.00,662.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(67,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-101-A0-A1',0,17,0,1,0,5,1,0,110,77,NULL,NULL,15.00,13.00,20.00,662.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(68,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-167-A0',0,13,0,1,0,7,1,0,120,NULL,NULL,NULL,15.00,13.00,12.00,875.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(69,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-167-A0-A1',0,13,0,1,0,7,1,0,120,NULL,NULL,NULL,15.00,13.00,12.00,875.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(70,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-167-A0-A2',0,13,0,1,0,7,1,0,120,NULL,NULL,NULL,15.00,13.00,12.00,875.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(71,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-178-A0',0,18,0,1,0,4,1,0,123,NULL,NULL,NULL,10.00,11.00,11.00,726.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(72,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-178-A0-A1',0,18,0,1,0,4,1,0,123,NULL,NULL,NULL,10.00,11.00,11.00,726.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(73,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-178-A0-A2',0,18,0,1,0,4,1,0,123,NULL,NULL,NULL,10.00,11.00,11.00,726.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(74,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-146-A0',0,18,0,1,0,7,1,0,126,NULL,NULL,NULL,18.00,18.00,12.00,727.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(75,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-146-A0-A1',0,18,0,1,0,7,1,0,126,NULL,NULL,NULL,18.00,18.00,12.00,727.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(76,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-146-A0-A2',0,18,0,1,0,7,1,0,126,NULL,NULL,NULL,18.00,18.00,12.00,727.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(77,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-146-A0-A3',0,18,0,1,0,7,1,0,126,NULL,NULL,NULL,18.00,18.00,12.00,727.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(78,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-196-A0',0,10,0,1,0,2,1,0,113,93.79,NULL,NULL,14.00,17.00,19.00,685.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(79,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-196-A0-A1',0,10,0,1,0,2,1,0,113,92.66,NULL,NULL,14.00,17.00,19.00,685.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(80,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-196-A0-A2',0,10,0,1,0,2,1,0,113,99.44,NULL,NULL,14.00,17.00,19.00,685.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(81,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-185-A0',0,15,0,1,0,3,1,0,118,NULL,NULL,NULL,18.00,13.00,10.00,863.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(82,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-185-A0-A1',0,15,0,1,0,3,1,0,118,NULL,NULL,NULL,18.00,13.00,10.00,863.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(83,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-185-A0-A2',0,15,0,1,0,3,1,0,118,NULL,NULL,NULL,18.00,13.00,10.00,863.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(84,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-124-A0',0,12,0,1,0,1,1,0,128,NULL,NULL,NULL,14.00,15.00,16.00,803.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(85,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-124-A0-A1',0,12,0,1,0,1,1,0,128,NULL,NULL,NULL,14.00,15.00,16.00,803.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(86,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-150-A0',0,11,0,1,0,6,1,0,124,NULL,NULL,NULL,13.00,16.00,10.00,690.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(87,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-150-A0-A1',0,11,0,1,0,6,1,0,124,NULL,NULL,NULL,13.00,16.00,10.00,690.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(88,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-150-A0-A2',0,11,0,1,0,6,1,0,124,NULL,NULL,NULL,13.00,16.00,10.00,690.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(89,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-177-A0',0,19,0,1,0,7,1,0,112,97.44,NULL,NULL,16.00,10.00,11.00,681.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(90,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-177-A0-A1',0,19,0,1,0,7,1,0,112,86.24,NULL,NULL,16.00,10.00,11.00,681.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(91,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-177-A0-A2',0,19,0,1,0,7,1,0,112,87.36,NULL,NULL,16.00,10.00,11.00,681.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(92,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-177-A0-A3',0,19,0,1,0,7,1,0,112,97.44,NULL,NULL,16.00,10.00,11.00,681.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(93,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-177-A0-A4',0,19,0,1,0,7,1,0,112,86.24,NULL,NULL,16.00,10.00,11.00,681.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(94,'Historic Alarm Clock',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-132-A0',0,18,0,1,0,5,1,0,122,NULL,NULL,NULL,20.00,15.00,18.00,844.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(95,'Historic Alarm Clock',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-132-A0-A1',0,18,0,1,0,5,1,0,122,NULL,NULL,NULL,20.00,15.00,18.00,844.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(96,'Historic Alarm Clock',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-132-A0-A2',0,18,0,1,0,5,1,0,122,NULL,NULL,NULL,20.00,15.00,18.00,844.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(97,'Historic Alarm Clock',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-132-A0-A3',0,18,0,1,0,5,1,0,122,NULL,NULL,NULL,20.00,15.00,18.00,844.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(98,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-143-A0',0,14,0,1,0,2,1,0,128,NULL,NULL,NULL,18.00,15.00,14.00,820.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(99,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-143-A0-A1',0,14,0,1,0,2,1,0,128,NULL,NULL,NULL,18.00,15.00,14.00,820.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(100,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-179-A0',0,20,0,1,0,6,1,0,120,NULL,NULL,NULL,15.00,12.00,14.00,778.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(101,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-179-A0-A1',0,20,0,1,0,6,1,0,120,NULL,NULL,NULL,15.00,12.00,14.00,778.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(102,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-179-A0-A2',0,20,0,1,0,6,1,0,120,NULL,NULL,NULL,15.00,12.00,14.00,778.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(103,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-179-A0-A3',0,20,0,1,0,6,1,0,120,NULL,NULL,NULL,15.00,12.00,14.00,778.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(104,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-152-A0',0,10,0,1,0,7,1,0,127,90.17,NULL,NULL,20.00,11.00,12.00,621.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(105,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-152-A0-A1',0,10,0,1,0,7,1,0,127,113.03,NULL,NULL,20.00,11.00,12.00,621.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(106,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-152-A0-A2',0,10,0,1,0,7,1,0,127,109.22,NULL,NULL,20.00,11.00,12.00,621.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(107,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-152-A0-A3',0,10,0,1,0,7,1,0,127,111.76,NULL,NULL,20.00,11.00,12.00,621.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(108,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-152-A0-A4',0,10,0,1,0,7,1,0,127,109.22,NULL,NULL,20.00,11.00,12.00,621.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(109,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/25.jpg\"]','HS-118-A0',0,13,0,1,0,4,1,0,80.25,NULL,NULL,NULL,10.00,19.00,12.00,504.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(110,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/25-1.jpg\"]','HS-118-A0-A1',0,13,0,1,0,4,1,0,80.25,NULL,NULL,NULL,10.00,19.00,12.00,504.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(111,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/25.jpg\"]','HS-118-A0-A2',0,13,0,1,0,4,1,0,80.25,NULL,NULL,NULL,10.00,19.00,12.00,504.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(112,'Smart Watches',NULL,NULL,'published','[\"products\\/26.jpg\"]','HS-141-A0',0,15,0,1,0,7,1,0,40.5,NULL,NULL,NULL,12.00,13.00,10.00,623.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(113,'Smart Watches',NULL,NULL,'published','[\"products\\/26-1.jpg\"]','HS-141-A0-A1',0,15,0,1,0,7,1,0,40.5,NULL,NULL,NULL,12.00,13.00,10.00,623.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(114,'Smart Watches',NULL,NULL,'published','[\"products\\/26-2.jpg\"]','HS-141-A0-A2',0,15,0,1,0,7,1,0,40.5,NULL,NULL,NULL,12.00,13.00,10.00,623.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(115,'Smart Watches',NULL,NULL,'published','[\"products\\/26.jpg\"]','HS-141-A0-A3',0,15,0,1,0,7,1,0,40.5,NULL,NULL,NULL,12.00,13.00,10.00,623.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(116,'Beat Headphone',NULL,NULL,'published','[\"products\\/27.jpg\"]','HS-109-A0',0,10,0,1,0,1,1,0,20,NULL,NULL,NULL,15.00,10.00,13.00,883.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(117,'Beat Headphone',NULL,NULL,'published','[\"products\\/27-1.jpg\"]','HS-109-A0-A1',0,10,0,1,0,1,1,0,20,NULL,NULL,NULL,15.00,10.00,13.00,883.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(118,'Beat Headphone',NULL,NULL,'published','[\"products\\/27.jpg\"]','HS-109-A0-A2',0,10,0,1,0,1,1,0,20,NULL,NULL,NULL,15.00,10.00,13.00,883.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(119,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/28.jpg\"]','HS-188-A0',0,13,0,1,0,3,1,0,55,39.05,NULL,NULL,19.00,16.00,13.00,739.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(120,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/28-1.jpg\"]','HS-188-A0-A1',0,13,0,1,0,3,1,0,55,42.35,NULL,NULL,19.00,16.00,13.00,739.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(121,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/28.jpg\"]','HS-188-A0-A2',0,13,0,1,0,3,1,0,55,39.05,NULL,NULL,19.00,16.00,13.00,739.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(122,'Audio Equipment',NULL,NULL,'published','[\"products\\/29.jpg\"]','HS-120-A0',0,15,0,1,0,2,1,0,50,NULL,NULL,NULL,14.00,20.00,10.00,831.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(123,'Audio Equipment',NULL,NULL,'published','[\"products\\/29-1.jpg\"]','HS-120-A0-A1',0,15,0,1,0,2,1,0,50,NULL,NULL,NULL,14.00,20.00,10.00,831.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(124,'Audio Equipment',NULL,NULL,'published','[\"products\\/29.jpg\"]','HS-120-A0-A2',0,15,0,1,0,2,1,0,50,NULL,NULL,NULL,14.00,20.00,10.00,831.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(125,'Audio Equipment',NULL,NULL,'published','[\"products\\/29.jpg\"]','HS-120-A0-A3',0,15,0,1,0,2,1,0,50,NULL,NULL,NULL,14.00,20.00,10.00,831.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(126,'Audio Equipment',NULL,NULL,'published','[\"products\\/29.jpg\"]','HS-120-A0-A4',0,15,0,1,0,2,1,0,50,NULL,NULL,NULL,14.00,20.00,10.00,831.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(127,'Smart Televisions',NULL,NULL,'published','[\"products\\/30.jpg\"]','HS-122-A0',0,10,0,1,0,2,1,0,111,NULL,NULL,NULL,17.00,17.00,19.00,893.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(128,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31.jpg\"]','HS-116-A0',0,17,0,1,0,4,1,0,56,NULL,NULL,NULL,11.00,13.00,11.00,650.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(129,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31-1.jpg\"]','HS-116-A0-A1',0,17,0,1,0,4,1,0,56,NULL,NULL,NULL,11.00,13.00,11.00,650.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(130,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31.jpg\"]','HS-116-A0-A2',0,17,0,1,0,4,1,0,56,NULL,NULL,NULL,11.00,13.00,11.00,650.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL),(131,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31.jpg\"]','HS-116-A0-A3',0,17,0,1,0,4,1,0,56,NULL,NULL,NULL,11.00,13.00,11.00,650.00,NULL,0,'2022-05-13 03:50:45','2022-05-13 03:50:45','in_stock',0,'Botble\\ACL\\Models\\User',NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Loa thông minh',NULL,NULL),('vi',2,'Tai nghe Ultra Bass',NULL,NULL),('vi',3,'Đóng hộp - Tai nghe Bluetooth',NULL,NULL),('vi',4,'Chikie - Loa Bluetooth',NULL,NULL),('vi',5,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',6,'Camera Samsung SS-24',NULL,NULL),('vi',7,'Dây đeo đồng hồ bằng da',NULL,NULL),('vi',8,'Apple iPhone 13 Plus',NULL,NULL),('vi',9,'Macbook Pro 2015',NULL,NULL),('vi',10,'Macbook Air 12 inch',NULL,NULL),('vi',11,'Apple Watch Serial 7',NULL,NULL),('vi',12,'Macbook Pro 13 inch',NULL,NULL),('vi',13,'Bàn phím Apple',NULL,NULL),('vi',14,'MacSafe 80W',NULL,NULL),('vi',15,'Máy chơi game cầm tay',NULL,NULL),('vi',16,'Tai nghe Apple Airpods Serial 3',NULL,NULL),('vi',17,'Đồng hồ thông minh',NULL,NULL),('vi',18,'Đồng hồ thông minh màu đen',NULL,NULL),('vi',19,'Dây đeo đồng hồ dây da Serial 3',NULL,NULL),('vi',20,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',21,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',22,'Kính đen',NULL,NULL),('vi',23,'Chuột máy tính Phillips',NULL,NULL),('vi',24,'Bàn phím Trò chơi',NULL,NULL),('vi',25,'Camera kép 20MP',NULL,NULL),('vi',26,'Đồng hồ thông minh',NULL,NULL),('vi',27,'Tai nghe Best',NULL,NULL),('vi',28,'Tai nghe Đỏ & Đen',NULL,NULL),('vi',29,'Thiết bị âm thanh',NULL,NULL),('vi',30,'Tivi thông minh',NULL,NULL),('vi',31,'Tivi thông minh Samsung',NULL,NULL),('vi',32,'Loa thông minh',NULL,NULL),('vi',33,'Loa thông minh',NULL,NULL),('vi',34,'Loa thông minh',NULL,NULL),('vi',35,'Loa thông minh',NULL,NULL),('vi',36,'Loa thông minh',NULL,NULL),('vi',37,'Tai nghe Ultra Bass',NULL,NULL),('vi',38,'Tai nghe Ultra Bass',NULL,NULL),('vi',39,'Đóng hộp - Tai nghe Bluetooth',NULL,NULL),('vi',40,'Đóng hộp - Tai nghe Bluetooth',NULL,NULL),('vi',41,'Chikie - Loa Bluetooth',NULL,NULL),('vi',42,'Chikie - Loa Bluetooth',NULL,NULL),('vi',43,'Chikie - Loa Bluetooth',NULL,NULL),('vi',44,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',45,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',46,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',47,'Camera Samsung SS-24',NULL,NULL),('vi',48,'Camera Samsung SS-24',NULL,NULL),('vi',49,'Dây đeo đồng hồ bằng da',NULL,NULL),('vi',50,'Dây đeo đồng hồ bằng da',NULL,NULL),('vi',51,'Dây đeo đồng hồ bằng da',NULL,NULL),('vi',52,'Apple iPhone 13 Plus',NULL,NULL),('vi',53,'Apple iPhone 13 Plus',NULL,NULL),('vi',54,'Apple iPhone 13 Plus',NULL,NULL),('vi',55,'Apple iPhone 13 Plus',NULL,NULL),('vi',56,'Macbook Pro 2015',NULL,NULL),('vi',57,'Macbook Pro 2015',NULL,NULL),('vi',58,'Macbook Pro 2015',NULL,NULL),('vi',59,'Macbook Pro 2015',NULL,NULL),('vi',60,'Macbook Air 12 inch',NULL,NULL),('vi',61,'Macbook Air 12 inch',NULL,NULL),('vi',62,'Macbook Air 12 inch',NULL,NULL),('vi',63,'Macbook Air 12 inch',NULL,NULL),('vi',64,'Apple Watch Serial 7',NULL,NULL),('vi',65,'Apple Watch Serial 7',NULL,NULL),('vi',66,'Macbook Pro 13 inch',NULL,NULL),('vi',67,'Macbook Pro 13 inch',NULL,NULL),('vi',68,'Bàn phím Apple',NULL,NULL),('vi',69,'Bàn phím Apple',NULL,NULL),('vi',70,'Bàn phím Apple',NULL,NULL),('vi',71,'MacSafe 80W',NULL,NULL),('vi',72,'MacSafe 80W',NULL,NULL),('vi',73,'MacSafe 80W',NULL,NULL),('vi',74,'Máy chơi game cầm tay',NULL,NULL),('vi',75,'Máy chơi game cầm tay',NULL,NULL),('vi',76,'Máy chơi game cầm tay',NULL,NULL),('vi',77,'Máy chơi game cầm tay',NULL,NULL),('vi',78,'Tai nghe Apple Airpods Serial 3',NULL,NULL),('vi',79,'Tai nghe Apple Airpods Serial 3',NULL,NULL),('vi',80,'Tai nghe Apple Airpods Serial 3',NULL,NULL),('vi',81,'Đồng hồ thông minh',NULL,NULL),('vi',82,'Đồng hồ thông minh',NULL,NULL),('vi',83,'Đồng hồ thông minh',NULL,NULL),('vi',84,'Đồng hồ thông minh màu đen',NULL,NULL),('vi',85,'Đồng hồ thông minh màu đen',NULL,NULL),('vi',86,'Dây đeo đồng hồ dây da Serial 3',NULL,NULL),('vi',87,'Dây đeo đồng hồ dây da Serial 3',NULL,NULL),('vi',88,'Dây đeo đồng hồ dây da Serial 3',NULL,NULL),('vi',89,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',90,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',91,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',92,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',93,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',94,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',95,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',96,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',97,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',98,'Kính đen',NULL,NULL),('vi',99,'Kính đen',NULL,NULL),('vi',100,'Chuột máy tính Phillips',NULL,NULL),('vi',101,'Chuột máy tính Phillips',NULL,NULL),('vi',102,'Chuột máy tính Phillips',NULL,NULL),('vi',103,'Chuột máy tính Phillips',NULL,NULL),('vi',104,'Bàn phím Trò chơi',NULL,NULL),('vi',105,'Bàn phím Trò chơi',NULL,NULL),('vi',106,'Bàn phím Trò chơi',NULL,NULL),('vi',107,'Bàn phím Trò chơi',NULL,NULL),('vi',108,'Bàn phím Trò chơi',NULL,NULL),('vi',109,'Camera kép 20MP',NULL,NULL),('vi',110,'Camera kép 20MP',NULL,NULL),('vi',111,'Camera kép 20MP',NULL,NULL),('vi',112,'Đồng hồ thông minh',NULL,NULL),('vi',113,'Đồng hồ thông minh',NULL,NULL),('vi',114,'Đồng hồ thông minh',NULL,NULL),('vi',115,'Đồng hồ thông minh',NULL,NULL),('vi',116,'Tai nghe Best',NULL,NULL),('vi',117,'Tai nghe Best',NULL,NULL),('vi',118,'Tai nghe Best',NULL,NULL),('vi',119,'Tai nghe Đỏ & Đen',NULL,NULL),('vi',120,'Tai nghe Đỏ & Đen',NULL,NULL),('vi',121,'Tai nghe Đỏ & Đen',NULL,NULL),('vi',122,'Thiết bị âm thanh',NULL,NULL),('vi',123,'Thiết bị âm thanh',NULL,NULL),('vi',124,'Thiết bị âm thanh',NULL,NULL),('vi',125,'Thiết bị âm thanh',NULL,NULL),('vi',126,'Thiết bị âm thanh',NULL,NULL),('vi',127,'Tivi thông minh',NULL,NULL),('vi',128,'Tivi thông minh Samsung',NULL,NULL),('vi',129,'Tivi thông minh Samsung',NULL,NULL),('vi',130,'Tivi thông minh Samsung',NULL,NULL),('vi',131,'Tivi thông minh Samsung',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,2,14,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/2.jpg\"]'),(2,1,7,4.00,'Clean & perfect source code','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(3,11,18,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(4,4,18,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(5,8,29,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(6,11,2,2.00,'Good app, good backup service and support. Good documentation.','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(7,8,3,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(8,9,15,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/29.jpg\"]'),(9,11,11,2.00,'Good app, good backup service and support. Good documentation.','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(10,7,7,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/2.jpg\"]'),(11,9,21,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(12,7,16,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(13,6,9,4.00,'Best ecommerce CMS online store!','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(14,5,4,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/2.jpg\"]'),(15,7,11,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/4.jpg\"]'),(16,3,21,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/4.jpg\"]'),(17,7,14,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/1.jpg\"]'),(18,11,16,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(19,11,27,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(20,5,18,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(21,1,27,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(22,6,2,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(23,8,26,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-05-13 03:50:45','2022-05-13 03:50:45','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/29.jpg\"}'),(24,2,30,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-13 03:50:45','2022-05-13 03:50:45','[\"products\\/2.jpg\"]'),(25,5,20,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/27.jpg\"]'),(26,4,6,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/26.jpg\"]'),(27,8,25,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(28,1,8,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(29,11,26,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(30,3,21,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(31,9,8,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(32,4,16,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(33,1,31,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(34,7,3,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/27.jpg\"]'),(35,10,21,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\"]'),(36,8,29,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\"]'),(37,5,30,5.00,'Clean & perfect source code','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(38,2,11,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(39,10,17,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(40,10,1,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/12.jpg\"}'),(41,3,14,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(42,10,6,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\"]'),(43,8,15,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\"]'),(44,3,20,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\"]'),(45,9,13,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(46,5,3,1.00,'Best ecommerce CMS online store!','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\"]'),(47,6,13,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(48,9,31,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\"]'),(49,3,14,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/28.jpg\"]'),(50,6,23,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(51,4,31,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/20.jpg\"}'),(52,10,7,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(53,11,2,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/21.jpg\"}'),(54,9,6,3.00,'Best ecommerce CMS online store!','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/12.jpg\"}'),(55,5,23,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/22.jpg\"}'),(56,11,23,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(57,3,10,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\"]'),(58,5,18,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(59,11,16,2.00,'Clean & perfect source code','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(60,3,17,2.00,'Good app, good backup service and support. Good documentation.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\"]'),(61,3,12,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(62,3,20,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),(63,6,5,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(64,6,7,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(65,3,16,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(66,3,29,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\"]'),(67,6,22,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\"]'),(68,6,1,4.00,'Clean & perfect source code','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\"]'),(69,4,12,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\"]'),(70,8,10,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/14.jpg\"}'),(71,7,23,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(72,2,23,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/11.jpg\"}'),(73,10,30,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/26.jpg\"]'),(74,2,11,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(75,1,26,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\"]'),(76,1,25,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(77,3,8,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/9.jpg\"}'),(78,5,1,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(79,1,28,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\"]'),(80,4,6,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(81,8,18,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/19.jpg\"}'),(82,8,9,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]'),(83,6,28,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(84,5,27,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\"]'),(85,4,27,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(86,9,27,4.00,'Clean & perfect source code','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(87,9,28,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(88,7,30,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(89,5,11,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/17.jpg\"}'),(90,11,4,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/29.jpg\"]'),(91,9,29,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/10.jpg\"]'),(92,3,25,4.00,'Best ecommerce CMS online store!','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(93,6,8,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(94,2,18,5.00,'Best ecommerce CMS online store!','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(95,4,23,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(96,5,12,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(97,7,18,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/26.jpg\"}'),(98,6,17,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\"]'),(99,3,4,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/24.jpg\"]'),(100,1,29,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-13 03:50:46','2022-05-13 03:50:46','[\"products\\/2.jpg\",\"products\\/6.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-04-28 03:50:46','2022-04-28 03:50:46'),(2,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,1,1,'2022-05-11 11:50:46','2022-05-13 03:50:46'),(3,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,1,1,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-05-06 19:50:46','2022-05-06 19:50:46'),(5,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,2,2,'2022-05-11 13:50:46','2022-05-13 03:50:46'),(6,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,2,2,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(7,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-05-02 15:50:46','2022-05-02 15:50:46'),(8,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,3,3,'2022-05-11 15:50:46','2022-05-13 03:50:46'),(9,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,3,3,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(10,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-05-01 19:50:46','2022-05-01 19:50:46'),(11,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,4,4,'2022-05-11 17:50:46','2022-05-13 03:50:46'),(12,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,4,4,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(13,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-05-09 03:50:46','2022-05-09 03:50:46'),(14,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,5,5,'2022-05-11 19:50:47','2022-05-13 03:50:47'),(15,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-05-05 15:50:47','2022-05-05 15:50:47'),(16,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,6,6,'2022-05-11 21:50:47','2022-05-13 03:50:47'),(17,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,6,6,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(18,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,6,6,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(19,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-05-08 11:50:47','2022-05-08 11:50:47'),(20,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,7,7,'2022-05-11 23:50:47','2022-05-13 03:50:47'),(21,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-05-04 11:50:47','2022-05-04 11:50:47'),(22,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,8,8,'2022-05-12 01:50:47','2022-05-13 03:50:47'),(23,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,8,8,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(24,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,8,8,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(25,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-05-05 03:50:47','2022-05-05 03:50:47'),(26,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,9,9,'2022-05-12 03:50:47','2022-05-13 03:50:47'),(27,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,9,9,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(28,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-05-08 13:50:47','2022-05-08 13:50:47'),(29,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,10,10,'2022-05-12 05:50:47','2022-05-13 03:50:47'),(30,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-05-12 07:50:47','2022-05-12 07:50:47'),(31,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,11,11,'2022-05-12 07:50:47','2022-05-13 03:50:47'),(32,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,11,11,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(33,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,11,11,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(34,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-05-07 21:50:47','2022-05-07 21:50:47'),(35,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,12,12,'2022-05-12 09:50:47','2022-05-13 03:50:47'),(36,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,12,12,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(37,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-05-12 11:50:47','2022-05-12 11:50:47'),(38,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,13,13,'2022-05-12 11:50:47','2022-05-13 03:50:47'),(39,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,13,13,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(40,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,13,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(41,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-05-10 05:50:47','2022-05-10 05:50:47'),(42,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,14,14,'2022-05-12 13:50:47','2022-05-13 03:50:47'),(43,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-05-09 03:50:47','2022-05-09 03:50:47'),(44,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,15,15,'2022-05-12 15:50:47','2022-05-13 03:50:47'),(45,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-05-11 21:50:47','2022-05-11 21:50:47'),(46,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,16,16,'2022-05-12 17:50:47','2022-05-13 03:50:47'),(47,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,16,16,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(48,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-05-09 19:50:47','2022-05-09 19:50:47'),(49,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,17,17,'2022-05-12 19:50:47','2022-05-13 03:50:47'),(50,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,17,17,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(51,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-05-10 21:50:47','2022-05-10 21:50:47'),(52,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,18,18,'2022-05-12 21:50:47','2022-05-13 03:50:47'),(53,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,18,18,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(54,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-05-11 19:50:47','2022-05-11 19:50:47'),(55,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,19,19,'2022-05-12 23:50:47','2022-05-13 03:50:47'),(56,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,19,19,'2022-05-13 03:50:47','2022-05-13 03:50:47'),(57,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-05-12 19:50:47','2022-05-12 19:50:47'),(58,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,20,20,'2022-05-13 01:50:47','2022-05-13 03:50:47');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,5555.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46','JJD004293047','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-14 10:50:46','2022-05-13 10:50:46'),(2,2,NULL,7527.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46','JJD0058930979','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-20 10:50:46','2022-05-13 10:50:46'),(3,3,NULL,4108.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46','JJD0065502022','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-21 10:50:46','2022-05-13 10:50:46'),(4,4,NULL,4969.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:46','2022-05-13 03:50:46','JJD0086632155','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-20 10:50:46','2022-05-13 10:50:46'),(5,5,NULL,2109.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0020848936','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-20 10:50:47',NULL),(6,6,NULL,3328.00,NULL,'','delivered',667.60,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0035244698','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-17 10:50:47','2022-05-13 10:50:47'),(7,7,NULL,2597.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0071154462','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-23 10:50:47',NULL),(8,8,NULL,4426.00,NULL,'','delivered',744.38,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0087530312','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-17 10:50:47','2022-05-13 10:50:47'),(9,9,NULL,4515.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD007345120','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-21 10:50:47','2022-05-13 10:50:47'),(10,10,NULL,5484.00,NULL,'','approved',1085.03,'pending','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0066925536','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-21 10:50:47',NULL),(11,11,NULL,5476.00,NULL,'','delivered',1658.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0062341126','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-19 10:50:47','2022-05-13 10:50:47'),(12,12,NULL,3505.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0024112620','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-16 10:50:47','2022-05-13 10:50:47'),(13,13,NULL,2727.00,NULL,'','delivered',749.60,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0062236973','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-22 10:50:47','2022-05-13 10:50:47'),(14,14,NULL,3036.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0018291695','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-21 10:50:47',NULL),(15,15,NULL,6766.00,NULL,'','approved',1612.70,'pending','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0039771450','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-21 10:50:47',NULL),(16,16,NULL,4891.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0028358592','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-21 10:50:47','2022-05-13 10:50:47'),(17,17,NULL,4015.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0099851519','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-15 10:50:47','2022-05-13 10:50:47'),(18,18,NULL,4900.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0051572199','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-22 10:50:47','2022-05-13 10:50:47'),(19,19,NULL,3163.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0070227805','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-14 10:50:47','2022-05-13 10:50:47'),(20,20,NULL,5930.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-13 03:50:47','2022-05-13 03:50:47','JJD0033217938','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-20 10:50:47',NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free shipping',1,'base_on_price',0.00,NULL,0.00,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(2,'Local Pickup',1,'base_on_price',0.00,NULL,20.00,'2022-05-13 03:50:46','2022-05-13 03:50:46'),(3,'Flat Rate',1,'base_on_price',0.00,NULL,25.00,'2022-05-13 03:50:46','2022-05-13 03:50:46');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shopwise','sales@botble.com','123-456-7890','123 Street, Old Trafford','US','New York','New York',1,1,'2022-05-13 03:50:52','2022-05-13 03:50:52');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-05-13 03:50:46','2022-05-13 03:50:46'),(2,'None',0.000000,2,'published','2022-05-13 03:50:46','2022-05-13 03:50:46');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(2,'Payment',1,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(3,'Order & Returns',2,'published','2022-05-13 03:50:52','2022-05-13 03:50:52');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-05-13 03:50:52','2022-05-13 03:50:52');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','0d8ad225ced2b3b0daddb03174efc9cc',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','0d8ad225ced2b3b0daddb03174efc9cc',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','49b2f643997347362a172c2afd8ded1f',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','474a84eead0d922e9ae0ca42adc1a791',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','3d362133ea682906f729a9c1cf6280b7',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','46bf592cdf5a8c1904c01171e697603f',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','9b0f0b947f4b9a8cb695c6ab4b677a19',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','2312ce7d4800614a6cb71ba8735fcc1a',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','474a84eead0d922e9ae0ca42adc1a791',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','3d362133ea682906f729a9c1cf6280b7',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','46bf592cdf5a8c1904c01171e697603f',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','9b0f0b947f4b9a8cb695c6ab4b677a19',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta_backup`
--

DROP TABLE IF EXISTS `language_meta_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta_backup` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta_backup`
--

LOCK TABLES `language_meta_backup` WRITE;
/*!40000 ALTER TABLE `language_meta_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_meta_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/png',3509,'brands/1.png','[]','2022-05-13 03:50:05','2022-05-13 03:50:05',NULL),(2,0,'2',1,'image/png',3505,'brands/2.png','[]','2022-05-13 03:50:05','2022-05-13 03:50:05',NULL),(3,0,'3',1,'image/png',2585,'brands/3.png','[]','2022-05-13 03:50:05','2022-05-13 03:50:05',NULL),(4,0,'4',1,'image/png',6427,'brands/4.png','[]','2022-05-13 03:50:05','2022-05-13 03:50:05',NULL),(5,0,'5',1,'image/png',3246,'brands/5.png','[]','2022-05-13 03:50:05','2022-05-13 03:50:05',NULL),(6,0,'6',1,'image/png',3276,'brands/6.png','[]','2022-05-13 03:50:05','2022-05-13 03:50:05',NULL),(7,0,'7',1,'image/png',3120,'brands/7.png','[]','2022-05-13 03:50:05','2022-05-13 03:50:05',NULL),(8,0,'p-1',2,'image/png',9577,'product-categories/p-1.png','[]','2022-05-13 03:50:06','2022-05-13 03:50:06',NULL),(9,0,'p-2',2,'image/png',5510,'product-categories/p-2.png','[]','2022-05-13 03:50:06','2022-05-13 03:50:06',NULL),(10,0,'p-3',2,'image/png',16215,'product-categories/p-3.png','[]','2022-05-13 03:50:06','2022-05-13 03:50:06',NULL),(11,0,'p-4',2,'image/png',7394,'product-categories/p-4.png','[]','2022-05-13 03:50:06','2022-05-13 03:50:06',NULL),(12,0,'p-5',2,'image/png',6714,'product-categories/p-5.png','[]','2022-05-13 03:50:06','2022-05-13 03:50:06',NULL),(13,0,'p-6',2,'image/png',9541,'product-categories/p-6.png','[]','2022-05-13 03:50:06','2022-05-13 03:50:06',NULL),(14,0,'p-7',2,'image/png',13677,'product-categories/p-7.png','[]','2022-05-13 03:50:07','2022-05-13 03:50:07',NULL),(15,0,'1',3,'image/jpeg',11752,'customers/1.jpg','[]','2022-05-13 03:50:07','2022-05-13 03:50:07',NULL),(16,0,'10',3,'image/jpeg',27814,'customers/10.jpg','[]','2022-05-13 03:50:08','2022-05-13 03:50:08',NULL),(17,0,'2',3,'image/jpeg',19005,'customers/2.jpg','[]','2022-05-13 03:50:08','2022-05-13 03:50:08',NULL),(18,0,'3',3,'image/jpeg',20400,'customers/3.jpg','[]','2022-05-13 03:50:08','2022-05-13 03:50:08',NULL),(19,0,'4',3,'image/jpeg',26819,'customers/4.jpg','[]','2022-05-13 03:50:08','2022-05-13 03:50:08',NULL),(20,0,'5',3,'image/jpeg',14367,'customers/5.jpg','[]','2022-05-13 03:50:08','2022-05-13 03:50:08',NULL),(21,0,'6',3,'image/jpeg',12367,'customers/6.jpg','[]','2022-05-13 03:50:08','2022-05-13 03:50:08',NULL),(22,0,'7',3,'image/jpeg',20652,'customers/7.jpg','[]','2022-05-13 03:50:09','2022-05-13 03:50:09',NULL),(23,0,'8',3,'image/jpeg',21164,'customers/8.jpg','[]','2022-05-13 03:50:09','2022-05-13 03:50:09',NULL),(24,0,'9',3,'image/jpeg',6084,'customers/9.jpg','[]','2022-05-13 03:50:09','2022-05-13 03:50:09',NULL),(25,0,'1-1',4,'image/jpeg',88437,'products/1-1.jpg','[]','2022-05-13 03:50:10','2022-05-13 03:50:10',NULL),(26,0,'1-2',4,'image/jpeg',122690,'products/1-2.jpg','[]','2022-05-13 03:50:11','2022-05-13 03:50:11',NULL),(27,0,'1-3',4,'image/jpeg',117296,'products/1-3.jpg','[]','2022-05-13 03:50:11','2022-05-13 03:50:11',NULL),(28,0,'1',4,'image/jpeg',139025,'products/1.jpg','[]','2022-05-13 03:50:11','2022-05-13 03:50:11',NULL),(29,0,'10-1',4,'image/jpeg',183491,'products/10-1.jpg','[]','2022-05-13 03:50:12','2022-05-13 03:50:12',NULL),(30,0,'10',4,'image/jpeg',150956,'products/10.jpg','[]','2022-05-13 03:50:12','2022-05-13 03:50:12',NULL),(31,0,'11-1',4,'image/jpeg',246200,'products/11-1.jpg','[]','2022-05-13 03:50:12','2022-05-13 03:50:12',NULL),(32,0,'11',4,'image/jpeg',279390,'products/11.jpg','[]','2022-05-13 03:50:13','2022-05-13 03:50:13',NULL),(33,0,'12-1',4,'image/jpeg',249712,'products/12-1.jpg','[]','2022-05-13 03:50:13','2022-05-13 03:50:13',NULL),(34,0,'12',4,'image/jpeg',172221,'products/12.jpg','[]','2022-05-13 03:50:13','2022-05-13 03:50:13',NULL),(35,0,'13-1',4,'image/jpeg',257021,'products/13-1.jpg','[]','2022-05-13 03:50:14','2022-05-13 03:50:14',NULL),(36,0,'13',4,'image/jpeg',232917,'products/13.jpg','[]','2022-05-13 03:50:14','2022-05-13 03:50:14',NULL),(37,0,'14-1',4,'image/jpeg',201773,'products/14-1.jpg','[]','2022-05-13 03:50:14','2022-05-13 03:50:14',NULL),(38,0,'14',4,'image/jpeg',287194,'products/14.jpg','[]','2022-05-13 03:50:15','2022-05-13 03:50:15',NULL),(39,0,'15-1',4,'image/jpeg',273720,'products/15-1.jpg','[]','2022-05-13 03:50:15','2022-05-13 03:50:15',NULL),(40,0,'15',4,'image/jpeg',114265,'products/15.jpg','[]','2022-05-13 03:50:15','2022-05-13 03:50:15',NULL),(41,0,'16',4,'image/jpeg',97174,'products/16.jpg','[]','2022-05-13 03:50:16','2022-05-13 03:50:16',NULL),(42,0,'17',4,'image/jpeg',70179,'products/17.jpg','[]','2022-05-13 03:50:17','2022-05-13 03:50:17',NULL),(43,0,'18-1',4,'image/jpeg',287835,'products/18-1.jpg','[]','2022-05-13 03:50:17','2022-05-13 03:50:17',NULL),(44,0,'18-2',4,'image/jpeg',454869,'products/18-2.jpg','[]','2022-05-13 03:50:18','2022-05-13 03:50:18',NULL),(45,0,'18',4,'image/jpeg',257331,'products/18.jpg','[]','2022-05-13 03:50:19','2022-05-13 03:50:19',NULL),(46,0,'19-1',4,'image/jpeg',144008,'products/19-1.jpg','[]','2022-05-13 03:50:20','2022-05-13 03:50:20',NULL),(47,0,'19',4,'image/jpeg',188821,'products/19.jpg','[]','2022-05-13 03:50:20','2022-05-13 03:50:20',NULL),(48,0,'2-1',4,'image/jpeg',138167,'products/2-1.jpg','[]','2022-05-13 03:50:20','2022-05-13 03:50:20',NULL),(49,0,'2-2',4,'image/jpeg',230552,'products/2-2.jpg','[]','2022-05-13 03:50:21','2022-05-13 03:50:21',NULL),(50,0,'2-3',4,'image/jpeg',179301,'products/2-3.jpg','[]','2022-05-13 03:50:21','2022-05-13 03:50:21',NULL),(51,0,'2',4,'image/jpeg',130048,'products/2.jpg','[]','2022-05-13 03:50:21','2022-05-13 03:50:21',NULL),(52,0,'20-1',4,'image/jpeg',249712,'products/20-1.jpg','[]','2022-05-13 03:50:22','2022-05-13 03:50:22',NULL),(53,0,'20',4,'image/jpeg',172221,'products/20.jpg','[]','2022-05-13 03:50:22','2022-05-13 03:50:22',NULL),(54,0,'21-1',4,'image/jpeg',260746,'products/21-1.jpg','[]','2022-05-13 03:50:22','2022-05-13 03:50:22',NULL),(55,0,'21',4,'image/jpeg',124244,'products/21.jpg','[]','2022-05-13 03:50:24','2022-05-13 03:50:24',NULL),(56,0,'22-1',4,'image/jpeg',268620,'products/22-1.jpg','[]','2022-05-13 03:50:24','2022-05-13 03:50:24',NULL),(57,0,'22',4,'image/jpeg',128692,'products/22.jpg','[]','2022-05-13 03:50:26','2022-05-13 03:50:26',NULL),(58,0,'23-1',4,'image/jpeg',105560,'products/23-1.jpg','[]','2022-05-13 03:50:27','2022-05-13 03:50:27',NULL),(59,0,'23',4,'image/jpeg',177362,'products/23.jpg','[]','2022-05-13 03:50:28','2022-05-13 03:50:28',NULL),(60,0,'24-1',4,'image/jpeg',239311,'products/24-1.jpg','[]','2022-05-13 03:50:28','2022-05-13 03:50:28',NULL),(61,0,'24',4,'image/jpeg',363853,'products/24.jpg','[]','2022-05-13 03:50:29','2022-05-13 03:50:29',NULL),(62,0,'25-1',4,'image/jpeg',17089,'products/25-1.jpg','[]','2022-05-13 03:50:30','2022-05-13 03:50:30',NULL),(63,0,'25',4,'image/jpeg',18069,'products/25.jpg','[]','2022-05-13 03:50:30','2022-05-13 03:50:30',NULL),(64,0,'26-1',4,'image/jpeg',13085,'products/26-1.jpg','[]','2022-05-13 03:50:30','2022-05-13 03:50:30',NULL),(65,0,'26-2',4,'image/jpeg',22667,'products/26-2.jpg','[]','2022-05-13 03:50:30','2022-05-13 03:50:30',NULL),(66,0,'26',4,'image/jpeg',13611,'products/26.jpg','[]','2022-05-13 03:50:30','2022-05-13 03:50:30',NULL),(67,0,'27-1',4,'image/jpeg',10286,'products/27-1.jpg','[]','2022-05-13 03:50:30','2022-05-13 03:50:30',NULL),(68,0,'27',4,'image/jpeg',12569,'products/27.jpg','[]','2022-05-13 03:50:30','2022-05-13 03:50:30',NULL),(69,0,'28-1',4,'image/jpeg',15654,'products/28-1.jpg','[]','2022-05-13 03:50:31','2022-05-13 03:50:31',NULL),(70,0,'28',4,'image/jpeg',18243,'products/28.jpg','[]','2022-05-13 03:50:31','2022-05-13 03:50:31',NULL),(71,0,'29-1',4,'image/jpeg',27890,'products/29-1.jpg','[]','2022-05-13 03:50:31','2022-05-13 03:50:31',NULL),(72,0,'29',4,'image/jpeg',27961,'products/29.jpg','[]','2022-05-13 03:50:31','2022-05-13 03:50:31',NULL),(73,0,'3-1',4,'image/jpeg',135741,'products/3-1.jpg','[]','2022-05-13 03:50:31','2022-05-13 03:50:31',NULL),(74,0,'3-2',4,'image/jpeg',123069,'products/3-2.jpg','[]','2022-05-13 03:50:32','2022-05-13 03:50:32',NULL),(75,0,'3-3',4,'image/jpeg',98645,'products/3-3.jpg','[]','2022-05-13 03:50:32','2022-05-13 03:50:32',NULL),(76,0,'3',4,'image/jpeg',201722,'products/3.jpg','[]','2022-05-13 03:50:32','2022-05-13 03:50:32',NULL),(77,0,'30-1',4,'image/jpeg',26283,'products/30-1.jpg','[]','2022-05-13 03:50:33','2022-05-13 03:50:33',NULL),(78,0,'30',4,'image/jpeg',27107,'products/30.jpg','[]','2022-05-13 03:50:33','2022-05-13 03:50:33',NULL),(79,0,'31-1',4,'image/jpeg',25924,'products/31-1.jpg','[]','2022-05-13 03:50:33','2022-05-13 03:50:33',NULL),(80,0,'31',4,'image/jpeg',18634,'products/31.jpg','[]','2022-05-13 03:50:33','2022-05-13 03:50:33',NULL),(81,0,'4-1',4,'image/jpeg',205312,'products/4-1.jpg','[]','2022-05-13 03:50:33','2022-05-13 03:50:33',NULL),(82,0,'4-2',4,'image/jpeg',223903,'products/4-2.jpg','[]','2022-05-13 03:50:33','2022-05-13 03:50:33',NULL),(83,0,'4-3',4,'image/jpeg',106593,'products/4-3.jpg','[]','2022-05-13 03:50:34','2022-05-13 03:50:34',NULL),(84,0,'4',4,'image/jpeg',456134,'products/4.jpg','[]','2022-05-13 03:50:34','2022-05-13 03:50:34',NULL),(85,0,'5-1',4,'image/jpeg',110014,'products/5-1.jpg','[]','2022-05-13 03:50:34','2022-05-13 03:50:34',NULL),(86,0,'5-2',4,'image/jpeg',104934,'products/5-2.jpg','[]','2022-05-13 03:50:35','2022-05-13 03:50:35',NULL),(87,0,'5-3',4,'image/jpeg',131628,'products/5-3.jpg','[]','2022-05-13 03:50:35','2022-05-13 03:50:35',NULL),(88,0,'5',4,'image/jpeg',214767,'products/5.jpg','[]','2022-05-13 03:50:35','2022-05-13 03:50:35',NULL),(89,0,'6-1',4,'image/jpeg',128041,'products/6-1.jpg','[]','2022-05-13 03:50:36','2022-05-13 03:50:36',NULL),(90,0,'6',4,'image/jpeg',148485,'products/6.jpg','[]','2022-05-13 03:50:36','2022-05-13 03:50:36',NULL),(91,0,'7-1',4,'image/jpeg',144008,'products/7-1.jpg','[]','2022-05-13 03:50:37','2022-05-13 03:50:37',NULL),(92,0,'7',4,'image/jpeg',188821,'products/7.jpg','[]','2022-05-13 03:50:37','2022-05-13 03:50:37',NULL),(93,0,'8-1',4,'image/jpeg',274272,'products/8-1.jpg','[]','2022-05-13 03:50:37','2022-05-13 03:50:37',NULL),(94,0,'8',4,'image/jpeg',217862,'products/8.jpg','[]','2022-05-13 03:50:38','2022-05-13 03:50:38',NULL),(95,0,'9-1',4,'image/jpeg',65624,'products/9-1.jpg','[]','2022-05-13 03:50:38','2022-05-13 03:50:38',NULL),(96,0,'9',4,'image/jpeg',159636,'products/9.jpg','[]','2022-05-13 03:50:39','2022-05-13 03:50:39',NULL),(97,0,'1',5,'image/jpeg',82629,'news/1.jpg','[]','2022-05-13 03:50:47','2022-05-13 03:50:47',NULL),(98,0,'10',5,'image/jpeg',342651,'news/10.jpg','[]','2022-05-13 03:50:47','2022-05-13 03:50:47',NULL),(99,0,'11',5,'image/jpeg',296740,'news/11.jpg','[]','2022-05-13 03:50:47','2022-05-13 03:50:47',NULL),(100,0,'2',5,'image/jpeg',119904,'news/2.jpg','[]','2022-05-13 03:50:48','2022-05-13 03:50:48',NULL),(101,0,'3',5,'image/jpeg',89543,'news/3.jpg','[]','2022-05-13 03:50:48','2022-05-13 03:50:48',NULL),(102,0,'4',5,'image/jpeg',51573,'news/4.jpg','[]','2022-05-13 03:50:48','2022-05-13 03:50:48',NULL),(103,0,'5',5,'image/jpeg',41164,'news/5.jpg','[]','2022-05-13 03:50:48','2022-05-13 03:50:48',NULL),(104,0,'6',5,'image/jpeg',80696,'news/6.jpg','[]','2022-05-13 03:50:48','2022-05-13 03:50:48',NULL),(105,0,'7',5,'image/jpeg',904027,'news/7.jpg','[]','2022-05-13 03:50:49','2022-05-13 03:50:49',NULL),(106,0,'8',5,'image/jpeg',351088,'news/8.jpg','[]','2022-05-13 03:50:49','2022-05-13 03:50:49',NULL),(107,0,'9',5,'image/jpeg',353751,'news/9.jpg','[]','2022-05-13 03:50:49','2022-05-13 03:50:49',NULL),(108,0,'1',6,'image/jpeg',2733,'testimonials/1.jpg','[]','2022-05-13 03:50:50','2022-05-13 03:50:50',NULL),(109,0,'2',6,'image/jpeg',2840,'testimonials/2.jpg','[]','2022-05-13 03:50:50','2022-05-13 03:50:50',NULL),(110,0,'3',6,'image/jpeg',3065,'testimonials/3.jpg','[]','2022-05-13 03:50:50','2022-05-13 03:50:50',NULL),(111,0,'4',6,'image/jpeg',2559,'testimonials/4.jpg','[]','2022-05-13 03:50:50','2022-05-13 03:50:50',NULL),(112,0,'1',7,'image/jpeg',98636,'sliders/1.jpg','[]','2022-05-13 03:50:51','2022-05-13 03:50:51',NULL),(113,0,'2',7,'image/jpeg',22560,'sliders/2.jpg','[]','2022-05-13 03:50:51','2022-05-13 03:50:51',NULL),(114,0,'3',7,'image/jpeg',21630,'sliders/3.jpg','[]','2022-05-13 03:50:51','2022-05-13 03:50:51',NULL),(115,0,'american-express',8,'image/png',3209,'general/american-express.png','[]','2022-05-13 03:50:52','2022-05-13 03:50:52',NULL),(116,0,'b-1',8,'image/jpeg',20539,'general/b-1.jpg','[]','2022-05-13 03:50:52','2022-05-13 03:50:52',NULL),(117,0,'b-2',8,'image/jpeg',18320,'general/b-2.jpg','[]','2022-05-13 03:50:52','2022-05-13 03:50:52',NULL),(118,0,'b-3',8,'image/jpeg',42872,'general/b-3.jpg','[]','2022-05-13 03:50:52','2022-05-13 03:50:52',NULL),(119,0,'discover',8,'image/png',2494,'general/discover.png','[]','2022-05-13 03:50:53','2022-05-13 03:50:53',NULL),(120,0,'favicon',8,'image/png',1803,'general/favicon.png','[]','2022-05-13 03:50:53','2022-05-13 03:50:53',NULL),(121,0,'logo-light',8,'image/png',3736,'general/logo-light.png','[]','2022-05-13 03:50:53','2022-05-13 03:50:53',NULL),(122,0,'logo',8,'image/png',3927,'general/logo.png','[]','2022-05-13 03:50:53','2022-05-13 03:50:53',NULL),(123,0,'master-card',8,'image/png',3407,'general/master-card.png','[]','2022-05-13 03:50:53','2022-05-13 03:50:53',NULL),(124,0,'newsletter',8,'image/jpeg',48929,'general/newsletter.jpg','[]','2022-05-13 03:50:53','2022-05-13 03:50:53',NULL),(125,0,'paypal',8,'image/png',2670,'general/paypal.png','[]','2022-05-13 03:50:53','2022-05-13 03:50:53',NULL),(126,0,'visa',8,'image/png',2841,'general/visa.png','[]','2022-05-13 03:50:53','2022-05-13 03:50:53',NULL),(127,0,'1',9,'image/jpeg',20539,'promotion/1.jpg','[]','2022-05-13 03:50:54','2022-05-13 03:50:54',NULL),(128,0,'2',9,'image/jpeg',18320,'promotion/2.jpg','[]','2022-05-13 03:50:54','2022-05-13 03:50:54',NULL),(129,0,'3',9,'image/jpeg',42872,'promotion/3.jpg','[]','2022-05-13 03:50:54','2022-05-13 03:50:54',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2022-05-13 03:50:04','2022-05-13 03:50:04',NULL),(2,0,'product-categories','product-categories',0,'2022-05-13 03:50:06','2022-05-13 03:50:06',NULL),(3,0,'customers','customers',0,'2022-05-13 03:50:07','2022-05-13 03:50:07',NULL),(4,0,'products','products',0,'2022-05-13 03:50:10','2022-05-13 03:50:10',NULL),(5,0,'news','news',0,'2022-05-13 03:50:47','2022-05-13 03:50:47',NULL),(6,0,'testimonials','testimonials',0,'2022-05-13 03:50:50','2022-05-13 03:50:50',NULL),(7,0,'sliders','sliders',0,'2022-05-13 03:50:51','2022-05-13 03:50:51',NULL),(8,0,'general','general',0,'2022-05-13 03:50:52','2022-05-13 03:50:52',NULL),(9,0,'promotion','promotion',0,'2022-05-13 03:50:54','2022-05-13 03:50:54',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-05-13 03:50:52','2022-05-13 03:50:52'),(2,5,'main-menu','2022-05-13 03:50:52','2022-05-13 03:50:52');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `menu_nodes_reference_id_index` (`reference_id`),
  KEY `menu_nodes_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(2,1,0,NULL,NULL,'/products',NULL,0,'Products',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(3,1,0,NULL,NULL,'#',NULL,0,'Shop',NULL,'_self',1,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(4,1,3,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Product Category',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(5,1,3,1,'Botble\\Ecommerce\\Models\\Brand','/brands/fashion-live',NULL,0,'Brand',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(6,1,3,1,'Botble\\Ecommerce\\Models\\ProductTag','/product-tags/electronic',NULL,0,'Product Tag',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(7,1,3,NULL,NULL,'products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(8,1,0,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(9,1,8,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(10,1,8,1,'Botble\\Blog\\Models\\Category','/news/ecommerce',NULL,0,'Blog Category',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(11,1,8,1,'Botble\\Blog\\Models\\Tag','/tags/general',NULL,0,'Blog Tag',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(12,1,8,NULL,NULL,'news/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Blog Single',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(13,1,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(14,1,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(15,2,0,4,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(16,2,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(17,2,0,6,'Botble\\Page\\Models\\Page','/location',NULL,0,'Location',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(18,2,0,7,'Botble\\Page\\Models\\Page','/affiliates',NULL,0,'Affiliates',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(19,2,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(20,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Television',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(21,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Mobile',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(22,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Headphone',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(23,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Watches',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(24,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Game',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(25,4,0,NULL,NULL,'/customer/overview',NULL,0,'My profile',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(26,4,0,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(27,4,0,NULL,NULL,'customer/orders',NULL,0,'Orders',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(28,4,0,NULL,NULL,'/orders/tracking',NULL,0,'Order tracking',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(30,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(31,5,0,NULL,NULL,'#',NULL,0,'Cửa hàng',NULL,'_self',1,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(32,5,31,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(33,5,31,1,'Botble\\Ecommerce\\Models\\Brand','/brands/fashion-live',NULL,0,'Thương hiệu',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(34,5,31,1,'Botble\\Ecommerce\\Models\\ProductTag','/product-tags/electronic',NULL,0,'Tag sản phẩm',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(35,5,31,NULL,NULL,'products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(36,5,0,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(37,5,36,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(38,5,36,5,'Botble\\Blog\\Models\\Category',NULL,NULL,0,'Danh mục',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(39,5,36,6,'Botble\\Blog\\Models\\Tag',NULL,NULL,0,'Tag bài viết',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(40,5,36,NULL,NULL,'news/vi/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết chi tiết',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(41,5,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(42,5,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Liên hệ',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(43,6,0,4,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(44,6,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'Hỏi đáp',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(45,6,0,6,'Botble\\Page\\Models\\Page','/location',NULL,0,'Vị trí',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(46,6,0,7,'Botble\\Page\\Models\\Page','/affiliates',NULL,0,'Chi nhánh',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(47,6,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Liên hệ',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(48,7,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Tivi',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(49,7,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Di động',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(50,7,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Tai nghe',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(51,7,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Đồng hồ',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(52,7,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Trò chơi',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(53,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản của tôi',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(54,8,0,NULL,NULL,'/wishlist',NULL,0,'Danh sách yêu thích',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(55,8,0,NULL,NULL,'customer/orders',NULL,0,'Đơn hàng',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52'),(56,8,0,NULL,NULL,'/orders/tracking',NULL,0,'Theo dõi đơn hàng',NULL,'_self',0,'2022-05-13 03:50:52','2022-05-13 03:50:52');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(2,'Useful Links','useful-links','published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(3,'Categories','categories','published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(4,'My Account','my-account','published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(5,'Menu chính','menu-chinh','published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(6,'Liên kết hữu ích','lien-ket-huu-ich','published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(7,'Danh mục','danh-muc','published','2022-05-13 03:50:52','2022-05-13 03:50:52'),(8,'Tài khoản','tai-khoan','published','2022-05-13 03:50:52','2022-05-13 03:50:52');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"flaticon-tv\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(2,'icon','[\"flaticon-responsive\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(3,'icon','[\"flaticon-headphones\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(4,'icon','[\"flaticon-watch\"]',19,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(5,'icon','[\"flaticon-console\"]',24,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(6,'icon','[\"flaticon-camera\"]',25,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(7,'icon','[\"flaticon-music-system\"]',26,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(8,'icon','[\"flaticon-responsive\"]',27,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(9,'icon','[\"flaticon-plugins\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(10,'icon','[\"flaticon-music-system\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(11,'icon','[\"flaticon-monitor\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(12,'icon','[\"flaticon-printer\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(13,'icon','[\"flaticon-tv\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(14,'icon','[\"flaticon-fax\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(15,'icon','[\"flaticon-mouse\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-13 03:50:07','2022-05-13 03:50:07'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(39,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',25,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',26,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(42,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',27,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',28,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',29,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(45,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',30,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:44','2022-05-13 03:50:44'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',31,'Botble\\Ecommerce\\Models\\Product','2022-05-13 03:50:45','2022-05-13 03:50:45'),(47,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-13 03:50:51','2022-05-13 03:50:51'),(48,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-13 03:50:51','2022-05-13 03:50:51'),(49,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-13 03:50:51','2022-05-13 03:50:51'),(50,'button_text','[\"Mua ngay\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-13 03:50:51','2022-05-13 03:50:51'),(51,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-13 03:50:51','2022-05-13 03:50:51'),(52,'button_text','[\"Mua ngay\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-13 03:50:51','2022-05-13 03:50:51');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_214610_create_testimonial_table',1),(22,'2018_07_09_221238_create_faq_table',1),(23,'2019_01_05_053554_create_jobs_table',1),(24,'2019_08_19_000000_create_failed_jobs_table',1),(25,'2019_11_18_061011_create_country_table',1),(26,'2020_03_05_041139_create_ecommerce_tables',1),(27,'2020_11_18_150916_ads_create_ads_table',1),(28,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(29,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(30,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(31,'2021_02_16_092633_remove_default_value_for_author_type',1),(32,'2021_02_18_073505_update_table_ec_reviews',1),(33,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(34,'2021_03_10_025153_change_column_tax_amount',1),(35,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(36,'2021_03_27_144913_add_customer_type_into_table_payments',1),(37,'2021_04_28_074008_ecommerce_create_product_label_table',1),(38,'2021_05_24_034720_make_column_currency_nullable',1),(39,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(40,'2021_06_28_153141_correct_slugs_data',1),(41,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(42,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(43,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(44,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(45,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(46,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(47,'2021_10_19_020859_update_metadata_field',1),(48,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(49,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(50,'2021_11_23_071403_correct_languages_for_product_variations',1),(51,'2021_11_28_031808_add_product_tags_translations',1),(52,'2021_12_01_031123_add_featured_image_to_ec_products',1),(53,'2021_12_02_035301_add_ads_translations_table',1),(54,'2021_12_03_030600_create_blog_translations',1),(55,'2021_12_03_075608_create_page_translations',1),(56,'2021_12_03_082134_create_faq_translations',1),(57,'2021_12_03_083642_create_testimonials_translations',1),(58,'2021_12_03_084118_create_location_translations',1),(59,'2021_12_03_094518_migrate_old_location_data',1),(60,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(61,'2021_12_26_024330_update_theme_options_social_links',1),(62,'2022_01_01_033107_update_table_ec_shipments',1),(63,'2022_01_16_085908_improve_plugin_location',1),(64,'2022_02_16_042457_improve_product_attribute_sets',1),(65,'2022_03_22_075758_correct_product_name',1),(66,'2022_04_19_113334_add_index_to_ec_products',1),(67,'2022_04_19_113923_add_index_to_table_posts',1),(68,'2022_04_20_100851_add_index_to_media_table',1),(69,'2022_04_20_101046_add_index_to_menu_table',1),(70,'2022_04_28_144405_remove_unused_table',1),(71,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products title=\"Trending Products\"][/trending-products]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" subtitle2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',0,NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(2,'Contact us','<p>[contact-form][/contact-form]</p>',1,NULL,'default',0,NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(3,'Blog','<p>---</p>',1,NULL,'blog-sidebar',0,NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(4,'About us','<p>Dormouse,\' the Queen in front of them, with her head! Off--\' \'Nonsense!\' said Alice, quite forgetting that she looked up, but it just missed her. Alice caught the baby at her as she went on, \'What HAVE you been doing here?\' \'May it please your Majesty?\' he asked. \'Begin at the thought that SOMEBODY ought to have wondered at this, but at last the Mock Turtle angrily: \'really you are very dull!\' \'You ought to speak, and no one listening, this time, and was beating her violently with its tongue.</p>',1,NULL,'default',0,NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(5,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',0,NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(6,'Location','<p>Jack-in-the-box, and up the fan and gloves. \'How queer it seems,\' Alice said very politely, \'if I had to double themselves up and went stamping about, and called out in a bit.\' \'Perhaps it doesn\'t understand English,\' thought Alice; \'I daresay it\'s a set of verses.\' \'Are they in the lap of her sharp little chin. \'I\'ve a right to grow up any more if you\'d rather not.\' \'We indeed!\' cried the Mock Turtle in a bit.\' \'Perhaps it doesn\'t mind.\' The table was a large one, but it was talking in a few.</p>',1,NULL,'default',0,NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(7,'Affiliates','<p>Cat, \'if you only walk long enough.\' Alice felt a violent shake at the end of the pack, she could remember about ravens and writing-desks, which wasn\'t much. The Hatter shook his head off outside,\' the Queen was to get through the doorway; \'and even if I like being that person, I\'ll come up: if not, I\'ll stay down here with me! There are no mice in the air: it puzzled her very earnestly, \'Now, Dinah, tell me the list of the baby, and not to her, though, as they were filled with cupboards and.</p>',1,NULL,'default',0,NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(8,'Brands','<p>[all-brands][/all-brands]</p>',1,NULL,'default',0,NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"slider-trang-chu\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Khuyến mãi tốt nhất cho bạn\"][/flash-sale]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products title=\"Sản phẩm xu hướng\"][[/trending-products]</div><div>[product-blocks featured_product_title=\"Nổi bật\" top_rated_product_title=\"Xếp hạng cao nhất\" on_sale_product_title=\"Đang khuyến mãi\"][/product-blocks]</div><div>[featured-brands title=\"Thương hiệu\"][/featured-brands]</div><div>[featured-news title=\"Tin tức\" subtitle=\"Blog của chúng tôi cập nhật các xu hướng mới nhất của thế giới thường xuyên\"][/featured-news]</div><div>[testimonials title=\"Nhận xét từ khách hàng!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Giao hàng miễn phí cho tất cả các đơn đặt hàng tại Hoa Kỳ hoặc đơn hàng trên $200\" icon2=\"flaticon-money-back\" title2=\"Đảm bảo hoàn trả trong 30 ngày\" subtitle2=\"Chỉ cần trả lại nó trong vòng 30 ngày để đổi\" icon3=\"flaticon-support\" title3=\"Hỗ trợ trực tuyến 27/4\" subtitle3=\"Liên hệ với chúng tôi 24 giờ một ngày, 7 ngày một tuần\"][/our-features]</div><div>[newsletter-form title=\"Theo dõi bản tin ngay bây giờ\" subtitle=\"Đăng ký ngay để cập nhật các chương trình khuyến mãi.\"][/newsletter-form]</div>'),('vi',2,'Liên hệ',NULL,'<p>[contact-form][/contact-form]</p>'),('vi',3,'Tin tức',NULL,'<p>---</p>'),('vi',4,'Về chúng tôi',NULL,'<p>While the Duchess by this time?\' she said to the other side. The further off from England the nearer is to find her in such a rule at processions; \'and besides, what would happen next. First, she tried hard to whistle to it; but she was out of sight, he said to herself; \'his eyes are so VERY nearly at the moment, \'My dear! I shall be punished for it was very likely true.) Down, down, down. There was exactly one a-piece all round. \'But she must have a prize herself, you know,\' said the Duchess.</p>'),('vi',5,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>'),('vi',6,'Vị trí',NULL,'<p>Alice gently remarked; \'they\'d have been changed for any of them. \'I\'m sure those are not attending!\' said the March Hare. \'Sixteenth,\' added the Gryphon; and then at the top of it. She felt that she had grown so large in the wood,\' continued the King. \'It began with the lobsters, out to sea as you are; secondly, because she was holding, and she said this, she came upon a neat little house, on the floor, and a scroll of parchment in the wind, and was going to give the prizes?\' quite a crowd of.</p>'),('vi',7,'Chi nhánh',NULL,'<p>I was thinking I should like to drop the jar for fear of their hearing her; and the whole head appeared, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at it again: but he now hastily began again, using the ink, that was sitting between them, fast asleep, and the Dormouse say?\' one of the teacups as the March Hare will be much the most curious thing I ask! It\'s always six o\'clock now.\'.</p>'),('vi',8,'Thương hiệu',NULL,'<p>[all-brands][/all-brands]</p>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'LEZAXCCETA','bank_transfer',NULL,1208.50,1,'pending','confirm',6,NULL,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'ZJENOWSYXA','mollie',NULL,1526.88,2,'completed','confirm',5,NULL,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'SLLS1HOKYW','stripe',NULL,650.90,3,'completed','confirm',9,NULL,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'MLL3E4ONQT','paypal',NULL,704.95,4,'completed','confirm',8,NULL,NULL,'2022-05-13 03:50:46','2022-05-13 03:50:46','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'4V8DZK2TT3','bank_transfer',NULL,214.85,5,'pending','confirm',3,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'WVQUMTS902','cod',NULL,667.60,6,'pending','confirm',4,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'RUVT013G2F','razorpay',NULL,957.90,7,'completed','confirm',6,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'1CYMXDBCE8','cod',NULL,744.38,8,'pending','confirm',11,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'ADHR57QBC2','paypal',NULL,762.60,9,'completed','confirm',2,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'P9HUJ0FINK','cod',NULL,1085.03,10,'pending','confirm',9,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'ZJTMRRKDZB','cod',NULL,1658.00,11,'pending','confirm',4,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'FMSGFLHYBA','mollie',NULL,596.25,12,'completed','confirm',1,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'ATBBGIF0BE','cod',NULL,749.60,13,'pending','confirm',2,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'GV4IED8LQC','bank_transfer',NULL,458.00,14,'pending','confirm',9,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'GJLFQGJOAV','cod',NULL,1612.70,15,'pending','confirm',8,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'OAINHC6NLV','bank_transfer',NULL,860.90,16,'pending','confirm',3,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'H3QSW3JX9M','bank_transfer',NULL,309.50,17,'pending','confirm',8,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'KZ7MY2VBAF','paypal',NULL,1065.60,18,'completed','confirm',4,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'HBXHMVEJNC','paypal',NULL,604.40,19,'completed','confirm',2,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'05MINX9GOB','mollie',NULL,1297.73,20,'completed','confirm',6,NULL,NULL,'2022-05-13 03:50:47','2022-05-13 03:50:47','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,2,1),(2,4,1),(3,2,2),(4,4,2),(5,2,3),(6,4,3),(7,1,4),(8,4,4),(9,2,5),(10,3,5),(11,1,6),(12,4,6),(13,2,7),(14,3,7),(15,1,8),(16,3,8),(17,2,9),(18,4,9),(19,2,10),(20,4,10),(21,1,11),(22,4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1186,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1605,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2014,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2224,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',269,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1207,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',446,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',2489,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2206,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1678,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1254,NULL,'2022-05-13 03:50:50','2022-05-13 03:50:50');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"testimonial\",\"translation\",\"mollie\",\"location\"]',NULL,NULL),(2,'payment_cod_status','1',NULL,NULL),(3,'payment_bank_transfer_status','1',NULL,NULL),(4,'permalink-botble-blog-models-post','news',NULL,NULL),(5,'permalink-botble-blog-models-category','news',NULL,NULL),(6,'permalink-botble-blog-models-tag','tags',NULL,NULL),(7,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(8,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 404 19.',NULL,NULL),(9,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(10,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(11,'New York','Singapore',NULL,NULL),(12,'admin_logo','general/logo-light.png',NULL,NULL),(13,'admin_favicon','general/favicon.png',NULL,NULL),(14,'theme','shopwise',NULL,NULL),(15,'admin_email','[]',NULL,NULL),(16,'time_zone','UTC',NULL,NULL),(17,'locale_direction','ltr',NULL,NULL),(18,'enable_send_error_reporting_via_email','0',NULL,NULL),(19,'login_screen_backgrounds','[]',NULL,NULL),(20,'admin_title','Your App',NULL,NULL),(21,'rich_editor','ckeditor',NULL,NULL),(22,'enable_change_admin_theme','0',NULL,NULL),(23,'enable_cache','0',NULL,NULL),(24,'cache_time','10',NULL,NULL),(25,'cache_admin_menu_enable','0',NULL,NULL),(26,'google_site_verification','',NULL,NULL),(27,'cache_time_site_map','3600',NULL,NULL),(28,'show_admin_bar','1',NULL,NULL),(29,'redirect_404_to_homepage','0',NULL,NULL),(30,'enable_faq_schema','0',NULL,NULL),(31,'blacklist_keywords','',NULL,NULL),(32,'blacklist_email_domains','',NULL,NULL),(33,'enable_math_captcha_for_contact_form','1',NULL,NULL),(34,'google_analytics','',NULL,NULL),(35,'analytics_view_id','',NULL,NULL),(36,'analytics_service_account_credentials','',NULL,NULL),(37,'newsletter_mailchimp_api_key','',NULL,NULL),(38,'newsletter_mailchimp_list_id','',NULL,NULL),(39,'newsletter_sendgrid_api_key','',NULL,NULL),(40,'newsletter_sendgrid_list_id','',NULL,NULL),(41,'enable_captcha','0',NULL,NULL),(42,'captcha_type','v2',NULL,NULL),(43,'captcha_hide_badge','0',NULL,NULL),(44,'captcha_site_key','',NULL,NULL),(45,'captcha_secret','',NULL,NULL),(46,'locale','en',NULL,NULL),(47,'default_admin_theme','default',NULL,NULL),(48,'admin_locale_direction','ltr',NULL,NULL),(85,'language_hide_default','1',NULL,NULL),(86,'language_switcher_display','dropdown',NULL,NULL),(87,'language_display','all',NULL,NULL),(88,'language_hide_languages','[]',NULL,NULL),(89,'media_random_hash','6941f2a6a68a7240195e843a11b6243e',NULL,NULL),(90,'simple_slider_using_assets','0',NULL,NULL),(106,'ecommerce_store_name','Shopwise',NULL,NULL),(107,'ecommerce_store_phone','123-456-7890',NULL,NULL),(108,'ecommerce_store_address','123 Street, Old Trafford',NULL,NULL),(109,'ecommerce_store_state','New York',NULL,NULL),(110,'ecommerce_store_city','New York',NULL,NULL),(111,'ecommerce_store_country','US',NULL,NULL),(112,'theme-shopwise-site_title','Shopwise - Laravel Ecommerce system',NULL,NULL),(113,'theme-shopwise-copyright','© 2022 Botble Technologies. All Rights Reserved.',NULL,NULL),(114,'theme-shopwise-favicon','general/favicon.png',NULL,NULL),(115,'theme-shopwise-logo','general/logo.png',NULL,NULL),(116,'theme-shopwise-logo_footer','general/logo-light.png',NULL,NULL),(117,'theme-shopwise-address','123 Street, Old Trafford, NewYork, USA',NULL,NULL),(118,'theme-shopwise-hotline','123-456-7890',NULL,NULL),(119,'theme-shopwise-email','info@sitename.com',NULL,NULL),(120,'theme-shopwise-payment_methods','[\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]',NULL,NULL),(121,'theme-shopwise-newsletter_image','general/newsletter.jpg',NULL,NULL),(122,'theme-shopwise-homepage_id','1',NULL,NULL),(123,'theme-shopwise-blog_page_id','3',NULL,NULL),(124,'theme-shopwise-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(125,'theme-shopwise-cookie_consent_learn_more_url','http://shopwise/cookie-policy',NULL,NULL),(126,'theme-shopwise-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(127,'theme-shopwise-about-us','If you are going to use of Lorem Ipsum need to be sure there isn\'t hidden of text',NULL,NULL),(131,'theme-shopwise-vi-primary_font','Roboto Condensed',NULL,NULL),(132,'theme-shopwise-vi-copyright','© 2021 Botble Technologies. Tất cả quyền đã được bảo hộ.',NULL,NULL),(133,'theme-shopwise-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(134,'theme-shopwise-vi-cookie_consent_learn_more_url','http://shopwise/cookie-policy',NULL,NULL),(135,'theme-shopwise-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(136,'theme-shopwise-vi-homepage_id','1',NULL,NULL),(137,'theme-shopwise-vi-blog_page_id','3',NULL,NULL),(138,'theme-shopwise-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ion-social-facebook\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3b5998\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ion-social-twitter\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#00acee\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"ion-social-youtube\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#c4302b\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ion-social-instagram\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3f729b\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Woman Fashion','sliders/1.jpg',NULL,'Get up to 50% off Today Only!',1,'2022-05-13 03:50:51','2022-05-13 03:50:51'),(2,1,'Man Fashion','sliders/2.jpg',NULL,'50% off in all products',2,'2022-05-13 03:50:51','2022-05-13 03:50:51'),(3,1,'Summer Sale','sliders/3.jpg',NULL,'Taking your Viewing Experience to Next Level',3,'2022-05-13 03:50:51','2022-05-13 03:50:51'),(4,2,'Thời trang Nam','sliders/1.jpg',NULL,'Được giảm giá tới 50% Chỉ hôm nay!',1,'2022-05-13 03:50:51','2022-05-13 03:50:51'),(5,2,'Thời trang Nữ','sliders/2.jpg',NULL,'Khuyến mãi 50% tất cả sản phẩm',2,'2022-05-13 03:50:51','2022-05-13 03:50:51'),(6,2,'Khuyến mãi hè','sliders/3.jpg',NULL,'Nâng trải nghiệm xem của bạn lên cấp độ tiếp theo',3,'2022-05-13 03:50:51','2022-05-13 03:50:51');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider',NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(2,'Slider trang chủ','slider-trang-chu',NULL,'published','2022-05-13 03:50:51','2022-05-13 03:50:51');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-13 03:50:06','2022-05-13 03:50:06'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-13 03:50:06','2022-05-13 03:50:06'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-13 03:50:06','2022-05-13 03:50:06'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-13 03:50:06','2022-05-13 03:50:06'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-13 03:50:06','2022-05-13 03:50:06'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-13 03:50:06','2022-05-13 03:50:06'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-13 03:50:06','2022-05-13 03:50:06'),(8,'television',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(9,'home-audio-theaters',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(10,'tv-videos',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(11,'camera-photos-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(12,'cellphones-accessories',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(13,'headphones',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(14,'videos-games',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(15,'wireless-speakers',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(16,'office-electronic',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(17,'mobile',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(18,'digital-cables',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(19,'audio-video-cables',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(20,'batteries',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(21,'headphone',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(22,'computer-tablets',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(23,'laptop',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(24,'monitors',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(25,'computer-components',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(26,'watches',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(27,'drive-storages',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(28,'gaming-laptop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(29,'security-protection',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(30,'accessories',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(31,'game',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(32,'camera',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(33,'audio',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(34,'mobile-tablet',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(35,'accessories',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(36,'home-audio-theater',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(37,'tv-smart-box',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(38,'printer',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(39,'computer',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(40,'fax-machine',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(41,'mouse',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-13 03:50:07','2022-05-13 03:50:07'),(42,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(43,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(44,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(45,'chikie-bluetooth-speaker',4,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(46,'camera-hikvision-hk-35vs8',5,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(47,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(48,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(49,'apple-iphone-13-plus',8,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(50,'macbook-pro-2015',9,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(51,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(52,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(53,'macbook-pro-13-inch',12,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(54,'apple-keyboard',13,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(55,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(56,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(57,'apple-airpods-serial-3',16,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(58,'cool-smart-watches',17,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(59,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(60,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(61,'macbook-pro-2015-13-inch',20,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(62,'historic-alarm-clock',21,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(63,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(64,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(65,'gaming-keyboard',24,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(66,'dual-camera-20mp',25,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(67,'smart-watches',26,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(68,'beat-headphone',27,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(69,'red-black-headphone',28,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(70,'audio-equipment',29,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(71,'smart-televisions',30,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(72,'samsung-smart-tv',31,'Botble\\Ecommerce\\Models\\Product','products','2022-05-13 03:50:44','2022-05-13 03:50:44'),(73,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-13 03:50:46','2022-05-13 03:50:46'),(74,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-13 03:50:46','2022-05-13 03:50:46'),(75,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-13 03:50:46','2022-05-13 03:50:46'),(76,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-13 03:50:46','2022-05-13 03:50:46'),(77,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-13 03:50:46','2022-05-13 03:50:46'),(78,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-13 03:50:46','2022-05-13 03:50:46'),(79,'ecommerce',1,'Botble\\Blog\\Models\\Category','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(80,'fashion',2,'Botble\\Blog\\Models\\Category','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(81,'electronic',3,'Botble\\Blog\\Models\\Category','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(82,'commercial',4,'Botble\\Blog\\Models\\Category','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(83,'general',1,'Botble\\Blog\\Models\\Tag','tags','2022-05-13 03:50:50','2022-05-13 03:50:51'),(84,'design',2,'Botble\\Blog\\Models\\Tag','tags','2022-05-13 03:50:50','2022-05-13 03:50:51'),(85,'fashion',3,'Botble\\Blog\\Models\\Tag','tags','2022-05-13 03:50:50','2022-05-13 03:50:51'),(86,'branding',4,'Botble\\Blog\\Models\\Tag','tags','2022-05-13 03:50:50','2022-05-13 03:50:51'),(87,'modern',5,'Botble\\Blog\\Models\\Tag','tags','2022-05-13 03:50:50','2022-05-13 03:50:51'),(88,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(89,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(90,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(91,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(92,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(93,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(94,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(95,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(96,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(97,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(98,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','news','2022-05-13 03:50:50','2022-05-13 03:50:51'),(99,'homepage',1,'Botble\\Page\\Models\\Page','','2022-05-13 03:50:51','2022-05-13 03:50:51'),(100,'contact-us',2,'Botble\\Page\\Models\\Page','','2022-05-13 03:50:51','2022-05-13 03:50:51'),(101,'blog',3,'Botble\\Page\\Models\\Page','','2022-05-13 03:50:51','2022-05-13 03:50:51'),(102,'about-us',4,'Botble\\Page\\Models\\Page','','2022-05-13 03:50:51','2022-05-13 03:50:51'),(103,'faq',5,'Botble\\Page\\Models\\Page','','2022-05-13 03:50:51','2022-05-13 03:50:51'),(104,'location',6,'Botble\\Page\\Models\\Page','','2022-05-13 03:50:51','2022-05-13 03:50:51'),(105,'affiliates',7,'Botble\\Page\\Models\\Page','','2022-05-13 03:50:51','2022-05-13 03:50:51'),(106,'brands',8,'Botble\\Page\\Models\\Page','','2022-05-13 03:50:51','2022-05-13 03:50:51'),(107,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2022-05-13 03:50:51','2022-05-13 03:50:51');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_backup`
--

DROP TABLE IF EXISTS `states_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_backup`
--

LOCK TABLES `states_backup` WRITE;
/*!40000 ALTER TABLE `states_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-05-13 03:50:50','2022-05-13 03:50:50'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-05-13 03:50:50','2022-05-13 03:50:50'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-05-13 03:50:50','2022-05-13 03:50:50'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-05-13 03:50:50','2022-05-13 03:50:50'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-05-13 03:50:50','2022-05-13 03:50:50');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Adam Williams','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/1.jpg','CEO Of Microsoft','published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(2,'Retha Deowalim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/2.jpg','CEO Of Apple','published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(3,'Sam J. Wasim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/3.jpg','Pio Founder','published','2022-05-13 03:50:51','2022-05-13 03:50:51'),(4,'Usan Gulwarm','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/4.jpg','CEO Of Facewarm','published','2022-05-13 03:50:51','2022-05-13 03:50:51');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
INSERT INTO `testimonials_translations` VALUES ('vi',1,'Adam Williams',NULL,'Giám đốc Microsoft'),('vi',2,'Retha Deowalim',NULL,'Giám đốc Apple'),('vi',3,'Sam J. Wasim',NULL,'Nhà sáng lập Pio'),('vi',4,'Usan Gulwarm',NULL,'Giám đốc Facewarm');
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$VruKr1lAop4rE9Cdcvzby.Cb4LCT16HuWO46pU27W.kFUv9ogaGla',NULL,'2022-05-13 03:50:51','2022-05-13 03:50:51','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','shopwise',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}','2022-05-13 03:50:52','2022-05-13 03:50:52'),(2,'CustomMenuWidget','footer_sidebar','shopwise',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}','2022-05-13 03:50:52','2022-05-13 03:50:52'),(3,'CustomMenuWidget','footer_sidebar','shopwise',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2022-05-13 03:50:52','2022-05-13 03:50:52'),(4,'CustomMenuWidget','footer_sidebar','shopwise-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft h\\u1eefu \\u00edch\",\"menu_id\":\"lien-ket-huu-ich\"}','2022-05-13 03:50:52','2022-05-13 03:50:52'),(5,'CustomMenuWidget','footer_sidebar','shopwise-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c\",\"menu_id\":\"danh-muc\"}','2022-05-13 03:50:52','2022-05-13 03:50:52'),(6,'CustomMenuWidget','footer_sidebar','shopwise-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"T\\u00e0i kho\\u1ea3n\",\"menu_id\":\"tai-khoan\"}','2022-05-13 03:50:52','2022-05-13 03:50:52');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-13 17:51:21