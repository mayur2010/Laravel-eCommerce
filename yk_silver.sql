-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 11:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yk_silver`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'IXJ5LcKMOLd3fZe04jBwgYQsJCxEckcS', 1, '2022-05-13 03:50:51', '2022-05-13 03:50:51', '2022-05-13 03:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage middle 1', '2027-05-13 00:00:00', 'not_set', 'IZ6WU8KUALYD', 'promotion/1.jpg', '/product-categories/headphone', 0, 1, 'published', '2022-05-13 03:50:54', '2022-05-13 03:50:54'),
(2, 'Homepage middle 2', '2027-05-13 00:00:00', 'not_set', 'ILSFJVYFGCPZ', 'promotion/2.jpg', '/product-categories/camera', 0, 2, 'published', '2022-05-13 03:50:54', '2022-05-13 03:50:54'),
(3, 'Homepage middle 3', '2027-05-13 00:00:00', 'not_set', 'ZDOZUZZIU7FT', 'promotion/3.jpg', '/product-categories/watches', 0, 3, 'published', '2022-05-13 03:50:54', '2022-05-13 03:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-06-06 14:04:52', '2022-06-06 14:04:52'),
(2, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 128, 'Samsung Smart TV', 'danger', '2022-06-06 15:00:27', '2022-06-06 15:00:27'),
(3, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 129, 'Samsung Smart TV', 'danger', '2022-06-06 15:00:27', '2022-06-06 15:00:27'),
(4, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 130, 'Samsung Smart TV', 'danger', '2022-06-06 15:00:27', '2022-06-06 15:00:27'),
(5, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 131, 'Samsung Smart TV', 'danger', '2022-06-06 15:00:27', '2022-06-06 15:00:27'),
(6, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 31, 'Samsung Smart TV', 'danger', '2022-06-06 15:00:27', '2022-06-06 15:00:27'),
(7, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 127, 'Smart Televisions', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(8, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 30, 'Smart Televisions', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(9, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 122, 'Audio Equipment', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(10, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 123, 'Audio Equipment', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(11, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 124, 'Audio Equipment', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(12, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 125, 'Audio Equipment', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(13, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 126, 'Audio Equipment', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(14, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 29, 'Audio Equipment', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(15, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 119, 'Red & Black Headphone', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(16, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 120, 'Red & Black Headphone', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(17, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 121, 'Red & Black Headphone', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(18, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 28, 'Red & Black Headphone', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(19, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 116, 'Beat Headphone', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(20, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 117, 'Beat Headphone', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(21, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 118, 'Beat Headphone', 'danger', '2022-06-06 15:00:28', '2022-06-06 15:00:28'),
(22, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 27, 'Beat Headphone', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(23, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 112, 'Smart Watches', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(24, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 113, 'Smart Watches', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(25, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 114, 'Smart Watches', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(26, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 115, 'Smart Watches', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(27, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 26, 'Smart Watches', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(28, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 109, 'Dual Camera 20MP', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(29, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 110, 'Dual Camera 20MP', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(30, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 111, 'Dual Camera 20MP', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(31, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 25, 'Dual Camera 20MP', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(32, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 104, 'Gaming Keyboard', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(33, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 105, 'Gaming Keyboard', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(34, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 106, 'Gaming Keyboard', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(35, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 107, 'Gaming Keyboard', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(36, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 108, 'Gaming Keyboard', 'danger', '2022-06-06 15:00:29', '2022-06-06 15:00:29'),
(37, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 24, 'Gaming Keyboard', 'danger', '2022-06-06 15:00:30', '2022-06-06 15:00:30'),
(38, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 100, 'Phillips Mouse', 'danger', '2022-06-06 15:00:30', '2022-06-06 15:00:30'),
(39, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 101, 'Phillips Mouse', 'danger', '2022-06-06 15:00:30', '2022-06-06 15:00:30'),
(40, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 102, 'Phillips Mouse', 'danger', '2022-06-06 15:00:30', '2022-06-06 15:00:30'),
(41, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 103, 'Phillips Mouse', 'danger', '2022-06-06 15:00:30', '2022-06-06 15:00:30'),
(42, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 23, 'Phillips Mouse', 'danger', '2022-06-06 15:00:30', '2022-06-06 15:00:30'),
(43, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 98, 'Black Glasses', 'danger', '2022-06-06 15:00:30', '2022-06-06 15:00:30'),
(44, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 99, 'Black Glasses', 'danger', '2022-06-06 15:00:30', '2022-06-06 15:00:30'),
(45, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 22, 'Black Glasses', 'danger', '2022-06-06 15:00:30', '2022-06-06 15:00:30'),
(46, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 94, 'Historic Alarm Clock', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(47, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 95, 'Historic Alarm Clock', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(48, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 96, 'Historic Alarm Clock', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(49, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 97, 'Historic Alarm Clock', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(50, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 21, 'Historic Alarm Clock', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(51, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 89, 'Macbook Pro 2015 13 inch', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(52, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 90, 'Macbook Pro 2015 13 inch', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(53, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 91, 'Macbook Pro 2015 13 inch', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(54, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 92, 'Macbook Pro 2015 13 inch', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(55, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 93, 'Macbook Pro 2015 13 inch', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(56, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 20, 'Macbook Pro 2015 13 inch', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(57, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 86, 'Leather Watch Band Serial 3', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(58, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 87, 'Leather Watch Band Serial 3', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(59, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 88, 'Leather Watch Band Serial 3', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(60, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 19, 'Leather Watch Band Serial 3', 'danger', '2022-06-06 15:00:43', '2022-06-06 15:00:43'),
(61, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 84, 'Black Smart Watches', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(62, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 85, 'Black Smart Watches', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(63, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 18, 'Black Smart Watches', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(64, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 81, 'Cool Smart Watches', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(65, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 82, 'Cool Smart Watches', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(66, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 83, 'Cool Smart Watches', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(67, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 17, 'Cool Smart Watches', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(68, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 78, 'Apple Airpods Serial 3', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(69, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 79, 'Apple Airpods Serial 3', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(70, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 80, 'Apple Airpods Serial 3', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(71, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 16, 'Apple Airpods Serial 3', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(72, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 74, 'Hand playstation', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(73, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 75, 'Hand playstation', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(74, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 76, 'Hand playstation', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(75, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 77, 'Hand playstation', 'danger', '2022-06-06 15:00:44', '2022-06-06 15:00:44'),
(76, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 15, 'Hand playstation', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(77, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 71, 'MacSafe 80W', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(78, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 72, 'MacSafe 80W', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(79, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 73, 'MacSafe 80W', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(80, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 14, 'MacSafe 80W', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(81, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 68, 'Apple Keyboard', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(82, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 69, 'Apple Keyboard', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(83, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 70, 'Apple Keyboard', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(84, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 13, 'Apple Keyboard', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(85, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 66, 'Macbook Pro 13 inch', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(86, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 67, 'Macbook Pro 13 inch', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(87, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 12, 'Macbook Pro 13 inch', 'danger', '2022-06-06 15:00:45', '2022-06-06 15:00:45'),
(88, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 64, 'Apple Watch Serial 7', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(89, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 65, 'Apple Watch Serial 7', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(90, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 11, 'Apple Watch Serial 7', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(91, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 60, 'Macbook Air 12 inch', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(92, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 61, 'Macbook Air 12 inch', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(93, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 62, 'Macbook Air 12 inch', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(94, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 63, 'Macbook Air 12 inch', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(95, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 10, 'Macbook Air 12 inch', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(96, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 56, 'Macbook Pro 2015', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(97, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 57, 'Macbook Pro 2015', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(98, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 58, 'Macbook Pro 2015', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(99, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 59, 'Macbook Pro 2015', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(100, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 9, 'Macbook Pro 2015', 'danger', '2022-06-06 15:00:53', '2022-06-06 15:00:53'),
(101, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 52, 'Apple iPhone 13 Plus', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(102, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 53, 'Apple iPhone 13 Plus', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(103, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 54, 'Apple iPhone 13 Plus', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(104, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 55, 'Apple iPhone 13 Plus', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(105, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 8, 'Apple iPhone 13 Plus', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(106, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 49, 'Leather Watch Band', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(107, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 50, 'Leather Watch Band', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(108, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 51, 'Leather Watch Band', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(109, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 7, 'Leather Watch Band', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(110, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 47, 'Camera Samsung SS-24', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(111, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 48, 'Camera Samsung SS-24', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(112, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 6, 'Camera Samsung SS-24', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(113, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 44, 'Camera Hikvision HK-35VS8', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(114, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 45, 'Camera Hikvision HK-35VS8', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(115, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 46, 'Camera Hikvision HK-35VS8', 'danger', '2022-06-06 15:00:54', '2022-06-06 15:00:54'),
(116, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 5, 'Camera Hikvision HK-35VS8', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55'),
(117, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 41, 'Chikie - Bluetooth Speaker', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55'),
(118, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 42, 'Chikie - Bluetooth Speaker', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55'),
(119, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 43, 'Chikie - Bluetooth Speaker', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55'),
(120, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 4, 'Chikie - Bluetooth Speaker', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55'),
(121, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 39, 'Boxed - Bluetooth Headphone', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(122, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 40, 'Boxed - Bluetooth Headphone', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55'),
(123, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 3, 'Boxed - Bluetooth Headphone', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55'),
(124, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 37, 'Headphone Ultra Bass', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55'),
(125, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 38, 'Headphone Ultra Bass', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55'),
(126, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 2, 'Headphone Ultra Bass', 'danger', '2022-06-06 15:00:55', '2022-06-06 15:00:55'),
(127, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"1\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 32, 'Smart Home Speaker', 'danger', '2022-06-06 15:01:02', '2022-06-06 15:01:02'),
(128, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"1\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 33, 'Smart Home Speaker', 'danger', '2022-06-06 15:01:02', '2022-06-06 15:01:02'),
(129, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"1\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 34, 'Smart Home Speaker', 'danger', '2022-06-06 15:01:02', '2022-06-06 15:01:02'),
(130, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"1\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 35, 'Smart Home Speaker', 'danger', '2022-06-06 15:01:02', '2022-06-06 15:01:02'),
(131, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"1\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 36, 'Smart Home Speaker', 'danger', '2022-06-06 15:01:03', '2022-06-06 15:01:03'),
(132, 1, 'product', '{\"_method\":\"DELETE\",\"ids\":[\"1\"],\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '127.0.0.1', 1, 1, 'Smart Home Speaker', 'danger', '2022-06-06 15:01:03', '2022-06-06 15:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, 'Ipsum esse magnam placeat deserunt qui minus quidem. Nihil harum est perspiciatis harum. Dignissimos occaecati autem voluptas quidem ex in. Odit deserunt autem sunt alias omnis quos.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(2, 'Fashion', 0, 'Unde aut ut vero inventore et velit neque. Aliquid et corporis non quisquam. Minus et quia aut et repellendus est ipsa. Quod unde tenetur rerum est labore. Deleniti vel veritatis dolorum sunt ut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(3, 'Electronic', 0, 'Natus beatae deserunt architecto. Et velit adipisci facere eos doloremque similique. Laborum doloremque necessitatibus ut blanditiis sit voluptatem et.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(4, 'Commercial', 0, 'Alias sapiente perspiciatis quod ullam itaque molestiae corrupti. Quia officiis nisi atque autem cupiditate. Inventore sint officiis nulla voluptatum. Nostrum quis consequatur omnis soluta magnam.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2022-05-13 03:50:50', '2022-05-13 03:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_translations`
--

INSERT INTO `categories_translations` (`lang_code`, `categories_id`, `name`, `description`) VALUES
('vi', 1, 'Th????ng m???i ??i???n t???', NULL),
('vi', 2, 'Th???i trang', NULL),
('vi', 3, '??i???n t???', NULL),
('vi', 4, 'Th????ng m???i', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities_backup`
--

CREATE TABLE `cities_backup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities_translations`
--

CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries_backup`
--

CREATE TABLE `countries_backup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries_translations`
--

CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(2, 'widget_total_2', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(3, 'widget_total_themes', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(4, 'widget_total_3', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(5, 'widget_total_4', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(6, 'widget_total_users', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(7, 'widget_total_pages', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(8, 'widget_total_plugins', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(9, 'widget_analytics_general', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(10, 'widget_analytics_page', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(11, 'widget_analytics_browser', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(12, 'widget_posts_recent', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(13, 'widget_analytics_referrer', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(14, 'widget_audit_logs', '2022-06-06 14:04:54', '2022-06-06 14:04:54'),
(15, 'widget_ecommerce_report_general', '2022-06-06 14:04:54', '2022-06-06 14:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Fashion live', NULL, NULL, 'brands/1.png', 'published', 0, 1, '2022-05-13 03:50:05', '2022-05-13 03:50:05'),
(2, 'Hand crafted', NULL, NULL, 'brands/2.png', 'published', 1, 1, '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(3, 'Mestonix', NULL, NULL, 'brands/3.png', 'published', 2, 1, '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(4, 'Sunshine', NULL, NULL, 'brands/4.png', 'published', 3, 1, '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(5, 'Pure', NULL, NULL, 'brands/5.png', 'published', 4, 1, '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(6, 'Anfold', NULL, NULL, 'brands/6.png', 'published', 5, 1, '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(7, 'Automotive', NULL, NULL, 'brands/7.png', 'published', 6, 1, '2022-05-13 03:50:06', '2022-05-13 03:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands_translations`
--

INSERT INTO `ec_brands_translations` (`lang_code`, `ec_brands_id`, `name`, `description`) VALUES
('vi', 1, 'Fashion live', NULL),
('vi', 2, 'Hand crafted', NULL),
('vi', 3, 'Mestonix', NULL),
('vi', 4, 'Sunshine', NULL),
('vi', 5, 'Pure', NULL),
('vi', 6, 'Anfold', NULL),
('vi', 7, 'Automotive', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 0, 1, 1, '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(2, 'EUR', '???', 0, 2, 1, 0, 0.84, '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(3, 'VND', '???', 0, 0, 2, 0, 23203, '2022-05-13 03:50:06', '2022-05-13 03:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`, `status`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '$2y$10$y/45A4p26XYIsH0KZ0kMY.QFqWhCRqo4F19wjaogp0Be4fqWiZI0K', 'customers/1.jpg', '1997-05-06', '+15805723092', NULL, '2022-05-13 03:50:09', '2022-05-13 03:50:09', '2022-05-13 10:50:09', NULL, 'activated'),
(2, 'Matt Volkman', 'ehilpert@example.net', '$2y$10$iuIl3RTIRmZ57117eFc7luE/WDPME/5uT4FpBdCtQhxAdnYTiUaem', 'customers/1.jpg', '1989-05-11', '+14402691835', NULL, '2022-05-13 03:50:09', '2022-05-13 03:50:09', '2022-05-13 10:50:09', NULL, 'activated'),
(3, 'Vincenzo Beatty', 'bednar.eloy@example.net', '$2y$10$IacJ2t4gXkHDImUXI6xg4OAa3OHt2Tqcg8WRb9r4wViq.qcv72xgC', 'customers/2.jpg', '1973-04-27', '+12055008172', NULL, '2022-05-13 03:50:09', '2022-05-13 03:50:09', '2022-05-13 10:50:09', NULL, 'activated'),
(4, 'Kathlyn Reilly', 'daphne30@example.com', '$2y$10$TKDb5HO7C4e4wMJG8bxPxOiEasbgiK/6D3jrafRrGDcyDGi54zywK', 'customers/3.jpg', '1997-04-15', '+13136304814', NULL, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '2022-05-13 10:50:10', NULL, 'activated'),
(5, 'Prof. Sanford Rohan I', 'treutel.kristina@example.com', '$2y$10$GTGK3s4brblGEOk63xcVgeS5VjJktYQ6TNn35r7kWrcvPkj4r5jQq', 'customers/4.jpg', '1977-04-17', '+14844800323', NULL, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '2022-05-13 10:50:10', NULL, 'activated'),
(6, 'Delia Effertz', 'kelley81@example.net', '$2y$10$cxu2OjoSYkkldSzLzqCYoeDz5t0osBz1XbVzkI2lJg8wp6N5Pg1Qi', 'customers/5.jpg', '1998-04-16', '+12605529414', NULL, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '2022-05-13 10:50:10', NULL, 'activated'),
(7, 'Prof. Monte Abbott Sr.', 'yrolfson@example.com', '$2y$10$GwIVrt7tOxfKxX3xciKhcOu.YbS/T8WgzkaXX/TSvQb75TeyT/.Au', 'customers/6.jpg', '1979-04-23', '+14402687363', NULL, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '2022-05-13 10:50:10', NULL, 'activated'),
(8, 'Eric Roob', 'jaylen27@example.org', '$2y$10$MLtHR.Fedm5YsDXz3NKhyeqJ/65E24AGxHAZ0jh5F2gcGfy5b3eTO', 'customers/7.jpg', '1972-05-09', '+14249571038', NULL, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '2022-05-13 10:50:10', NULL, 'activated'),
(9, 'Litzy Stark MD', 'ucrooks@example.org', '$2y$10$r6zOIlT90JwL/IXCmNdMruhlOOJhQSZGT9FXSH5TNcHYm2Lq.ngem', 'customers/8.jpg', '1985-04-25', '+16828404039', NULL, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '2022-05-13 10:50:10', NULL, 'activated'),
(10, 'Zoey Frami', 'eva20@example.net', '$2y$10$1KHvd.NdJ2YeAqWUXzDorOcd/kv8.W4DCeceWmFQzBNHa8bJO9dZa', 'customers/9.jpg', '1991-05-02', '+17348109245', NULL, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '2022-05-13 10:50:10', NULL, 'activated'),
(11, 'Claud Satterfield', 'maye17@example.com', '$2y$10$4XOOgDb0Fv4Zu.8qMYh2AukVX27E2gGKwc9.czkvGBsWDZuwhO3aW', 'customers/10.jpg', '1981-04-25', '+19313899268', NULL, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '2022-05-13 10:50:10', NULL, 'activated');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '+18186721004', 'CL', 'Wisconsin', 'South Giuseppe', '46388 Emily Unions Apt. 570', 1, 1, '2022-05-13 03:50:09', '2022-05-13 03:50:09', '12171-1410'),
(2, 'John Smith', 'john.smith@botble.com', '+14798185105', 'PS', 'Kansas', 'Rogahnberg', '1048 Koss Oval', 1, 0, '2022-05-13 03:50:09', '2022-05-13 03:50:09', '80658-7198'),
(3, 'Matt Volkman', 'ehilpert@example.net', '+17256932818', 'BB', 'North Dakota', 'Gerholdland', '681 Anjali Isle', 2, 1, '2022-05-13 03:50:09', '2022-05-13 03:50:09', '65162'),
(4, 'Vincenzo Beatty', 'bednar.eloy@example.net', '+19088528125', 'FO', 'West Virginia', 'North Erichton', '6004 Thurman Track', 3, 1, '2022-05-13 03:50:09', '2022-05-13 03:50:09', '36672'),
(5, 'Kathlyn Reilly', 'daphne30@example.com', '+19707710172', 'SM', 'Hawaii', 'East Jefferey', '348 Kirlin Mall', 4, 1, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '23889-0311'),
(6, 'Prof. Sanford Rohan I', 'treutel.kristina@example.com', '+18505208792', 'MF', 'West Virginia', 'Nienowtown', '454 Bogan Common', 5, 1, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '98381'),
(7, 'Delia Effertz', 'kelley81@example.net', '+15019356172', 'HN', 'Michigan', 'East Donnie', '3895 Dustin Fort Suite 891', 6, 1, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '79521-9315'),
(8, 'Prof. Monte Abbott Sr.', 'yrolfson@example.com', '+17408508120', 'AD', 'Minnesota', 'Domingoview', '7093 Schultz Greens', 7, 1, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '06657'),
(9, 'Eric Roob', 'jaylen27@example.org', '+13524261602', 'BG', 'Connecticut', 'North Jessicafort', '617 Jerde Center Suite 111', 8, 1, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '79999-2579'),
(10, 'Litzy Stark MD', 'ucrooks@example.org', '+19704401539', 'EG', 'Connecticut', 'North Lafayettefurt', '1092 Luther Mount', 9, 1, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '47488'),
(11, 'Zoey Frami', 'eva20@example.net', '+16204348304', 'NL', 'Arizona', 'Ratkehaven', '32734 Osborne Corners Suite 092', 10, 1, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '88938-3498'),
(12, 'Claud Satterfield', 'maye17@example.com', '+14356125788', 'BL', 'West Virginia', 'Estellamouth', '68905 Douglas Ford', 11, 1, '2022-05-13 03:50:10', '2022-05-13 03:50:10', '49728');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Deal of the Day.', '2022-07-02 00:00:00', 'published', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(2, 'Gadgets & Accessories', '2022-07-03 00:00:00', 'published', '2022-05-13 03:50:46', '2022-05-13 03:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales_translations`
--

INSERT INTO `ec_flash_sales_translations` (`lang_code`, `ec_flash_sales_id`, `name`) VALUES
('vi', 1, 'Khuy???n m??i trong ng??y.'),
('vi', 2, 'Ti???n ??ch & Ph??? ki???n');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 18, 67.84, 15, 5),
(2, 27, 14.4, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 1,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `tax_amount`, `shipping_amount`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `token`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 6, '1', 'default', 'completed', '1208.50', '71.50', '0.00', NULL, NULL, '0.00', '1137.00', 1, NULL, 1, 'GgZLoOZ7eHCzUGtlVFOWt4MGHrSUD', 1, '2022-04-28 03:50:46', '2022-05-13 03:50:46'),
(2, 5, '1', 'default', 'completed', '1526.88', '51.13', '0.00', NULL, NULL, '0.00', '1475.75', 1, NULL, 1, 'OI75e70Qi0I0Q4T8B8Ps7yQVESXY0', 2, '2022-05-06 19:50:46', '2022-05-13 03:50:46'),
(3, 9, '1', 'default', 'completed', '650.90', '25.90', '0.00', NULL, NULL, '0.00', '625.00', 1, NULL, 1, 'Z4x3XKKvPI6bQHuPrafIzfQs2fgNY', 3, '2022-05-02 15:50:46', '2022-05-13 03:50:46'),
(4, 8, '1', 'default', 'completed', '704.95', '32.45', '0.00', NULL, NULL, '0.00', '672.50', 1, NULL, 1, 'RZxa5wopkKkQ005OyblSFp3YqChVE', 4, '2022-05-01 19:50:46', '2022-05-13 03:50:46'),
(5, 3, '1', 'default', 'pending', '214.85', '15.85', '0.00', NULL, NULL, '0.00', '199.00', 1, NULL, 1, '2Xmfu6Kt8nWGl3pcsT5IMrFoqKaPX', 5, '2022-05-09 03:50:46', '2022-05-13 03:50:47'),
(6, 4, '1', 'default', 'completed', '667.60', '37.60', '0.00', NULL, NULL, '0.00', '630.00', 1, NULL, 1, '4fEKrieemMiT6cXFTwWXBgwT6vxr2', 6, '2022-05-05 15:50:47', '2022-05-13 03:50:47'),
(7, 6, '1', 'default', 'pending', '957.90', '56.90', '0.00', NULL, NULL, '0.00', '901.00', 1, NULL, 1, 'C05DLQdAuFp4fCIeDhJ3oFFCePzzM', 7, '2022-05-08 11:50:47', '2022-05-13 03:50:47'),
(8, 11, '1', 'default', 'completed', '744.38', '45.13', '0.00', NULL, NULL, '0.00', '699.25', 1, NULL, 1, 'Ew9QboAuwqFx93Hjt7IfkX3nfR625', 8, '2022-05-04 11:50:47', '2022-05-13 03:50:47'),
(9, 2, '1', 'default', 'completed', '762.60', '24.60', '0.00', NULL, NULL, '0.00', '738.00', 1, NULL, 1, 'ijn4aK5NT52gauca1CPbsPPuNigrY', 9, '2022-05-05 03:50:47', '2022-05-13 03:50:47'),
(10, 9, '1', 'default', 'pending', '1085.03', '45.53', '0.00', NULL, NULL, '0.00', '1039.50', 1, NULL, 1, 'ytGu1ZxTFyblTNqtHWvIFVpFdzU22', 10, '2022-05-08 13:50:47', '2022-05-13 03:50:47'),
(11, 4, '1', 'default', 'completed', '1658.00', '70.00', '0.00', NULL, NULL, '0.00', '1588.00', 1, NULL, 1, 'L7fNx5y805Jacjlw7kKlIHn8WqmYf', 11, '2022-05-12 07:50:47', '2022-05-13 03:50:47'),
(12, 1, '1', 'default', 'completed', '596.25', '40.25', '0.00', NULL, NULL, '0.00', '556.00', 1, NULL, 1, 'COPi7jtxxLnueQJHNGPdZOrpJbVJA', 12, '2022-05-07 21:50:47', '2022-05-13 03:50:47'),
(13, 2, '1', 'default', 'completed', '749.60', '45.60', '0.00', NULL, NULL, '0.00', '704.00', 1, NULL, 1, 'vsHTL7ZvTbnWSSQGJf6n0OfP0yC6u', 13, '2022-05-12 11:50:47', '2022-05-13 03:50:47'),
(14, 9, '1', 'default', 'pending', '458.00', '18.00', '0.00', NULL, NULL, '0.00', '440.00', 1, NULL, 1, '1xklXIF2v46PDgMK2P66zAfxv8AWr', 14, '2022-05-10 05:50:47', '2022-05-13 03:50:47'),
(15, 8, '1', 'default', 'pending', '1612.70', '70.70', '0.00', NULL, NULL, '0.00', '1542.00', 1, NULL, 1, '6m44UCLDXevxUZt3PnHdzeYp9HHmh', 15, '2022-05-09 03:50:47', '2022-05-13 03:50:47'),
(16, 3, '1', 'default', 'completed', '860.90', '35.90', '0.00', NULL, NULL, '0.00', '825.00', 1, NULL, 1, 'nex037SnKne8oLfMSmBMH9FBo220o', 16, '2022-05-11 21:50:47', '2022-05-13 03:50:47'),
(17, 8, '1', 'default', 'completed', '309.50', '24.50', '0.00', NULL, NULL, '0.00', '285.00', 1, NULL, 1, 'FJjvYcBUkVYkcN0OqRww0517V0ypq', 17, '2022-05-09 19:50:47', '2022-05-13 03:50:47'),
(18, 4, '1', 'default', 'completed', '1065.60', '51.60', '0.00', NULL, NULL, '0.00', '1014.00', 1, NULL, 1, 'HHnLMLlfImuhdu3cAbyhPg0jE9u6p', 18, '2022-05-10 21:50:47', '2022-05-13 03:50:47'),
(19, 2, '1', 'default', 'completed', '604.40', '50.40', '0.00', NULL, NULL, '0.00', '554.00', 1, NULL, 1, 'XYZFZgD1i2lWRZQFKm9vK8ryyZM2P', 19, '2022-05-11 19:50:47', '2022-05-13 03:50:47'),
(20, 6, '1', 'default', 'pending', '1297.73', '55.23', '0.00', NULL, NULL, '0.00', '1242.50', 1, NULL, 1, 'vwZHV8CDPRTFGdN0GzNUnx3GfYTpI', 20, '2022-05-12 19:50:47', '2022-05-13 03:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`) VALUES
(1, 'Delia Effertz', '+15019356172', 'kelley81@example.net', 'HN', 'Michigan', 'East Donnie', '3895 Dustin Fort Suite 891', 1, '79521-9315'),
(2, 'Prof. Sanford Rohan I', '+18505208792', 'treutel.kristina@example.com', 'MF', 'West Virginia', 'Nienowtown', '454 Bogan Common', 2, '98381'),
(3, 'Litzy Stark MD', '+19704401539', 'ucrooks@example.org', 'EG', 'Connecticut', 'North Lafayettefurt', '1092 Luther Mount', 3, '47488'),
(4, 'Eric Roob', '+13524261602', 'jaylen27@example.org', 'BG', 'Connecticut', 'North Jessicafort', '617 Jerde Center Suite 111', 4, '79999-2579'),
(5, 'Vincenzo Beatty', '+19088528125', 'bednar.eloy@example.net', 'FO', 'West Virginia', 'North Erichton', '6004 Thurman Track', 5, '36672'),
(6, 'Kathlyn Reilly', '+19707710172', 'daphne30@example.com', 'SM', 'Hawaii', 'East Jefferey', '348 Kirlin Mall', 6, '23889-0311'),
(7, 'Delia Effertz', '+15019356172', 'kelley81@example.net', 'HN', 'Michigan', 'East Donnie', '3895 Dustin Fort Suite 891', 7, '79521-9315'),
(8, 'Claud Satterfield', '+14356125788', 'maye17@example.com', 'BL', 'West Virginia', 'Estellamouth', '68905 Douglas Ford', 8, '49728'),
(9, 'Matt Volkman', '+17256932818', 'ehilpert@example.net', 'BB', 'North Dakota', 'Gerholdland', '681 Anjali Isle', 9, '65162'),
(10, 'Litzy Stark MD', '+19704401539', 'ucrooks@example.org', 'EG', 'Connecticut', 'North Lafayettefurt', '1092 Luther Mount', 10, '47488'),
(11, 'Kathlyn Reilly', '+19707710172', 'daphne30@example.com', 'SM', 'Hawaii', 'East Jefferey', '348 Kirlin Mall', 11, '23889-0311'),
(12, 'John Smith', '+18186721004', 'john.smith@botble.com', 'CL', 'Wisconsin', 'South Giuseppe', '46388 Emily Unions Apt. 570', 12, '12171-1410'),
(13, 'Matt Volkman', '+17256932818', 'ehilpert@example.net', 'BB', 'North Dakota', 'Gerholdland', '681 Anjali Isle', 13, '65162'),
(14, 'Litzy Stark MD', '+19704401539', 'ucrooks@example.org', 'EG', 'Connecticut', 'North Lafayettefurt', '1092 Luther Mount', 14, '47488'),
(15, 'Eric Roob', '+13524261602', 'jaylen27@example.org', 'BG', 'Connecticut', 'North Jessicafort', '617 Jerde Center Suite 111', 15, '79999-2579'),
(16, 'Vincenzo Beatty', '+19088528125', 'bednar.eloy@example.net', 'FO', 'West Virginia', 'North Erichton', '6004 Thurman Track', 16, '36672'),
(17, 'Eric Roob', '+13524261602', 'jaylen27@example.org', 'BG', 'Connecticut', 'North Jessicafort', '617 Jerde Center Suite 111', 17, '79999-2579'),
(18, 'Kathlyn Reilly', '+19707710172', 'daphne30@example.com', 'SM', 'Hawaii', 'East Jefferey', '348 Kirlin Mall', 18, '23889-0311'),
(19, 'Matt Volkman', '+17256932818', 'ehilpert@example.net', 'BB', 'North Dakota', 'Gerholdland', '681 Anjali Isle', 19, '65162'),
(20, 'Delia Effertz', '+15019356172', 'kelley81@example.net', 'HN', 'Michigan', 'East Donnie', '3895 Dustin Fort Suite 891', 20, '79521-9315');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(1, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 1, NULL, '2022-04-28 03:50:46', '2022-04-28 03:50:46'),
(2, 'confirm_order', 'Order was verified by %user_name%', 0, 1, NULL, '2022-04-28 03:50:46', '2022-04-28 03:50:46'),
(3, 'create_shipment', 'Created shipment for order', 0, 1, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(4, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 1, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(5, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 2, NULL, '2022-05-06 19:50:46', '2022-05-06 19:50:46'),
(6, 'confirm_order', 'Order was verified by %user_name%', 0, 2, NULL, '2022-05-06 19:50:46', '2022-05-06 19:50:46'),
(7, 'confirm_payment', 'Payment was confirmed (amount $1,526.88) by %user_name%', 0, 2, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(8, 'create_shipment', 'Created shipment for order', 0, 2, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(9, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 2, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(10, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 3, NULL, '2022-05-02 15:50:46', '2022-05-02 15:50:46'),
(11, 'confirm_order', 'Order was verified by %user_name%', 0, 3, NULL, '2022-05-02 15:50:46', '2022-05-02 15:50:46'),
(12, 'confirm_payment', 'Payment was confirmed (amount $650.90) by %user_name%', 0, 3, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(13, 'create_shipment', 'Created shipment for order', 0, 3, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(14, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 3, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(15, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 4, NULL, '2022-05-01 19:50:46', '2022-05-01 19:50:46'),
(16, 'confirm_order', 'Order was verified by %user_name%', 0, 4, NULL, '2022-05-01 19:50:46', '2022-05-01 19:50:46'),
(17, 'confirm_payment', 'Payment was confirmed (amount $704.95) by %user_name%', 0, 4, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(18, 'create_shipment', 'Created shipment for order', 0, 4, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(19, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 4, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(20, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 5, NULL, '2022-05-09 03:50:46', '2022-05-09 03:50:46'),
(21, 'confirm_order', 'Order was verified by %user_name%', 0, 5, NULL, '2022-05-09 03:50:46', '2022-05-09 03:50:46'),
(22, 'create_shipment', 'Created shipment for order', 0, 5, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(23, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 6, NULL, '2022-05-05 15:50:47', '2022-05-05 15:50:47'),
(24, 'confirm_order', 'Order was verified by %user_name%', 0, 6, NULL, '2022-05-05 15:50:47', '2022-05-05 15:50:47'),
(25, 'create_shipment', 'Created shipment for order', 0, 6, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(26, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 6, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(27, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 7, NULL, '2022-05-08 11:50:47', '2022-05-08 11:50:47'),
(28, 'confirm_order', 'Order was verified by %user_name%', 0, 7, NULL, '2022-05-08 11:50:47', '2022-05-08 11:50:47'),
(29, 'confirm_payment', 'Payment was confirmed (amount $957.90) by %user_name%', 0, 7, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(30, 'create_shipment', 'Created shipment for order', 0, 7, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(31, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 8, NULL, '2022-05-04 11:50:47', '2022-05-04 11:50:47'),
(32, 'confirm_order', 'Order was verified by %user_name%', 0, 8, NULL, '2022-05-04 11:50:47', '2022-05-04 11:50:47'),
(33, 'create_shipment', 'Created shipment for order', 0, 8, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(34, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 8, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(35, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 9, NULL, '2022-05-05 03:50:47', '2022-05-05 03:50:47'),
(36, 'confirm_order', 'Order was verified by %user_name%', 0, 9, NULL, '2022-05-05 03:50:47', '2022-05-05 03:50:47'),
(37, 'confirm_payment', 'Payment was confirmed (amount $762.60) by %user_name%', 0, 9, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(38, 'create_shipment', 'Created shipment for order', 0, 9, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(39, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 9, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(40, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 10, NULL, '2022-05-08 13:50:47', '2022-05-08 13:50:47'),
(41, 'confirm_order', 'Order was verified by %user_name%', 0, 10, NULL, '2022-05-08 13:50:47', '2022-05-08 13:50:47'),
(42, 'create_shipment', 'Created shipment for order', 0, 10, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(43, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 11, NULL, '2022-05-12 07:50:47', '2022-05-12 07:50:47'),
(44, 'confirm_order', 'Order was verified by %user_name%', 0, 11, NULL, '2022-05-12 07:50:47', '2022-05-12 07:50:47'),
(45, 'create_shipment', 'Created shipment for order', 0, 11, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(46, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 11, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(47, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 12, NULL, '2022-05-07 21:50:47', '2022-05-07 21:50:47'),
(48, 'confirm_order', 'Order was verified by %user_name%', 0, 12, NULL, '2022-05-07 21:50:47', '2022-05-07 21:50:47'),
(49, 'confirm_payment', 'Payment was confirmed (amount $596.25) by %user_name%', 0, 12, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(50, 'create_shipment', 'Created shipment for order', 0, 12, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(51, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 12, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(52, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 13, NULL, '2022-05-12 11:50:47', '2022-05-12 11:50:47'),
(53, 'confirm_order', 'Order was verified by %user_name%', 0, 13, NULL, '2022-05-12 11:50:47', '2022-05-12 11:50:47'),
(54, 'create_shipment', 'Created shipment for order', 0, 13, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(55, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 13, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(56, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 14, NULL, '2022-05-10 05:50:47', '2022-05-10 05:50:47'),
(57, 'confirm_order', 'Order was verified by %user_name%', 0, 14, NULL, '2022-05-10 05:50:47', '2022-05-10 05:50:47'),
(58, 'create_shipment', 'Created shipment for order', 0, 14, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(59, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 15, NULL, '2022-05-09 03:50:47', '2022-05-09 03:50:47'),
(60, 'confirm_order', 'Order was verified by %user_name%', 0, 15, NULL, '2022-05-09 03:50:47', '2022-05-09 03:50:47'),
(61, 'create_shipment', 'Created shipment for order', 0, 15, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(62, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 16, NULL, '2022-05-11 21:50:47', '2022-05-11 21:50:47'),
(63, 'confirm_order', 'Order was verified by %user_name%', 0, 16, NULL, '2022-05-11 21:50:47', '2022-05-11 21:50:47'),
(64, 'create_shipment', 'Created shipment for order', 0, 16, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(65, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 16, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(66, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 17, NULL, '2022-05-09 19:50:47', '2022-05-09 19:50:47'),
(67, 'confirm_order', 'Order was verified by %user_name%', 0, 17, NULL, '2022-05-09 19:50:47', '2022-05-09 19:50:47'),
(68, 'create_shipment', 'Created shipment for order', 0, 17, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(69, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 17, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(70, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 18, NULL, '2022-05-10 21:50:47', '2022-05-10 21:50:47'),
(71, 'confirm_order', 'Order was verified by %user_name%', 0, 18, NULL, '2022-05-10 21:50:47', '2022-05-10 21:50:47'),
(72, 'confirm_payment', 'Payment was confirmed (amount $1,065.60) by %user_name%', 0, 18, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(73, 'create_shipment', 'Created shipment for order', 0, 18, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(74, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 18, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(75, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 19, NULL, '2022-05-11 19:50:47', '2022-05-11 19:50:47'),
(76, 'confirm_order', 'Order was verified by %user_name%', 0, 19, NULL, '2022-05-11 19:50:47', '2022-05-11 19:50:47'),
(77, 'confirm_payment', 'Payment was confirmed (amount $604.40) by %user_name%', 0, 19, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(78, 'create_shipment', 'Created shipment for order', 0, 19, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(79, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 19, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(80, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 20, NULL, '2022-05-12 19:50:47', '2022-05-12 19:50:47'),
(81, 'confirm_order', 'Order was verified by %user_name%', 0, 20, NULL, '2022-05-12 19:50:47', '2022-05-12 19:50:47'),
(82, 'confirm_payment', 'Payment was confirmed (amount $1,297.73) by %user_name%', 0, 20, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(83, 'create_shipment', 'Created shipment for order', 0, 20, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(84, 'update_status', 'Order confirmed by %user_name%', 0, 2, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(85, 'update_status', 'Order confirmed by %user_name%', 0, 3, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(86, 'update_status', 'Order confirmed by %user_name%', 0, 4, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(87, 'update_status', 'Order confirmed by %user_name%', 0, 9, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(88, 'update_status', 'Order confirmed by %user_name%', 0, 12, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(89, 'update_status', 'Order confirmed by %user_name%', 0, 18, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(90, 'update_status', 'Order confirmed by %user_name%', 0, 19, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `restock_quantity` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_id`, `product_name`, `weight`, `restock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '416.00', '41.60', '[]', 38, 'Headphone Ultra Bass', 719.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(2, 1, 3, '123.00', '12.30', '[]', 53, 'Apple iPhone 13 Plus', 1980.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(3, 1, 2, '120.00', '12.00', '[]', 100, 'Phillips Mouse', 1556.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(4, 1, 2, '56.00', '5.60', '[]', 130, 'Samsung Smart TV', 1300.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(5, 2, 3, '249.00', '24.90', '[]', 33, 'Smart Home Speaker', 2667.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(6, 2, 2, '58.00', '5.80', '[]', 48, 'Camera Samsung SS-24', 1278.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(7, 2, 3, '124.00', '12.40', '[]', 87, 'Leather Watch Band Serial 3', 2070.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(8, 2, 3, '80.25', '8.03', '[]', 110, 'Dual Camera 20MP', 1512.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(9, 3, 2, '112.00', '11.20', '[]', 93, 'Macbook Pro 2015 13 inch', 1362.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(10, 3, 3, '127.00', '12.70', '[]', 107, 'Gaming Keyboard', 1863.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(11, 3, 1, '20.00', '2.00', '[]', 116, 'Beat Headphone', 883.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(12, 4, 3, '119.00', '11.90', '[]', 51, 'Leather Watch Band', 2283.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(13, 4, 2, '110.00', '11.00', '[]', 66, 'Macbook Pro 13 inch', 1324.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(14, 4, 1, '40.50', '4.05', '[]', 112, 'Smart Watches', 623.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(15, 4, 1, '55.00', '5.50', '[]', 121, 'Red & Black Headphone', 739.00, 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(16, 5, 1, '118.00', '11.80', '[]', 82, 'Cool Smart Watches', 863.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(17, 5, 2, '40.50', '4.05', '[]', 115, 'Smart Watches', 1246.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(18, 6, 1, '122.00', '12.20', '[]', 97, 'Historic Alarm Clock', 844.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(19, 6, 1, '127.00', '12.70', '[]', 104, 'Gaming Keyboard', 621.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(20, 6, 3, '127.00', '12.70', '[]', 107, 'Gaming Keyboard', 1863.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(21, 7, 2, '332.00', '33.20', '[]', 63, 'Macbook Air 12 inch', 1314.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(22, 7, 1, '110.00', '11.00', '[]', 67, 'Macbook Pro 13 inch', 662.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(23, 7, 1, '127.00', '12.70', '[]', 106, 'Gaming Keyboard', 621.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(24, 8, 2, '130.00', '13.00', '[]', 56, 'Macbook Pro 2015', 1470.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(25, 8, 1, '123.00', '12.30', '[]', 71, 'MacSafe 80W', 726.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(26, 8, 2, '118.00', '11.80', '[]', 83, 'Cool Smart Watches', 1726.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(27, 8, 1, '80.25', '8.03', '[]', 111, 'Dual Camera 20MP', 504.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(28, 9, 3, '126.00', '12.60', '[]', 75, 'Hand playstation', 2181.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(29, 9, 3, '120.00', '12.00', '[]', 101, 'Phillips Mouse', 2334.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(30, 10, 1, '123.00', '12.30', '[]', 52, 'Apple iPhone 13 Plus', 660.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(31, 10, 3, '126.00', '12.60', '[]', 64, 'Apple Watch Serial 7', 1635.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(32, 10, 3, '126.00', '12.60', '[]', 75, 'Hand playstation', 2181.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(33, 10, 2, '80.25', '8.03', '[]', 109, 'Dual Camera 20MP', 1008.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(34, 11, 1, '130.00', '13.00', '[]', 57, 'Macbook Pro 2015', 735.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(35, 11, 3, '332.00', '33.20', '[]', 63, 'Macbook Air 12 inch', 1971.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(36, 11, 1, '126.00', '12.60', '[]', 74, 'Hand playstation', 727.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(37, 11, 3, '112.00', '11.20', '[]', 92, 'Macbook Pro 2015 13 inch', 2043.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(38, 12, 1, '249.00', '24.90', '[]', 36, 'Smart Home Speaker', 889.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(39, 12, 2, '113.00', '11.30', '[]', 80, 'Apple Airpods Serial 3', 1370.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(40, 12, 2, '40.50', '4.05', '[]', 112, 'Smart Watches', 1246.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(41, 13, 1, '332.00', '33.20', '[]', 62, 'Macbook Air 12 inch', 657.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(42, 13, 3, '124.00', '12.40', '[]', 88, 'Leather Watch Band Serial 3', 2070.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(43, 14, 3, '130.00', '13.00', '[]', 57, 'Macbook Pro 2015', 2205.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(44, 14, 1, '50.00', '5.00', '[]', 124, 'Audio Equipment', 831.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(45, 15, 2, '332.00', '33.20', '[]', 63, 'Macbook Air 12 inch', 1314.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(46, 15, 2, '120.00', '12.00', '[]', 69, 'Apple Keyboard', 1750.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(47, 15, 3, '128.00', '12.80', '[]', 98, 'Black Glasses', 2460.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(48, 15, 2, '127.00', '12.70', '[]', 108, 'Gaming Keyboard', 1242.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(49, 16, 3, '110.00', '11.00', '[]', 67, 'Macbook Pro 13 inch', 1986.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(50, 16, 3, '123.00', '12.30', '[]', 72, 'MacSafe 80W', 2178.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(51, 16, 1, '126.00', '12.60', '[]', 75, 'Hand playstation', 727.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(52, 17, 1, '113.00', '11.30', '[]', 78, 'Apple Airpods Serial 3', 685.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(53, 17, 1, '112.00', '11.20', '[]', 93, 'Macbook Pro 2015 13 inch', 681.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(54, 17, 3, '20.00', '2.00', '[]', 118, 'Beat Headphone', 2649.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(55, 18, 3, '249.00', '24.90', '[]', 36, 'Smart Home Speaker', 2667.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(56, 18, 1, '123.00', '12.30', '[]', 53, 'Apple iPhone 13 Plus', 660.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(57, 18, 1, '124.00', '12.40', '[]', 86, 'Leather Watch Band Serial 3', 690.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(58, 18, 1, '20.00', '2.00', '[]', 118, 'Beat Headphone', 883.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(59, 19, 1, '332.00', '33.20', '[]', 62, 'Macbook Air 12 inch', 657.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(60, 19, 1, '122.00', '12.20', '[]', 94, 'Historic Alarm Clock', 844.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(61, 19, 2, '50.00', '5.00', '[]', 122, 'Audio Equipment', 1662.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(62, 20, 3, '249.00', '24.90', '[]', 33, 'Smart Home Speaker', 2667.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(63, 20, 2, '112.00', '11.20', '[]', 92, 'Macbook Pro 2015 13 inch', 1362.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(64, 20, 2, '80.25', '8.03', '[]', 110, 'Dual Camera 20MP', 1008.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(65, 20, 1, '111.00', '11.10', '[]', 127, 'Smart Televisions', 893.00, 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int(11) DEFAULT 0,
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Green', 'green', '#5FB7D4', NULL, 1, 1, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(2, 1, 'Blue', 'blue', '#333333', NULL, 0, 2, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(3, 1, 'Red', 'red', '#DA323F', NULL, 0, 3, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(4, 1, 'Black', 'back', '#2F366C', NULL, 0, 4, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(5, 1, 'Brown', 'brown', '#87554B', NULL, 0, 5, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(6, 2, 'S', 's', NULL, NULL, 1, 1, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(7, 2, 'M', 'm', NULL, NULL, 0, 2, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(8, 2, 'L', 'l', NULL, NULL, 0, 3, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(9, 2, 'XL', 'xl', NULL, NULL, 0, 4, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(10, 2, 'XXL', 'xxl', NULL, NULL, 0, 5, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes_translations`
--

INSERT INTO `ec_product_attributes_translations` (`lang_code`, `ec_product_attributes_id`, `title`) VALUES
('vi', 1, 'Xanh l?? c??y'),
('vi', 2, 'Xanh da tr???i'),
('vi', 3, '?????'),
('vi', 4, '??en'),
('vi', 5, 'N??u'),
('vi', 6, 'S'),
('vi', 7, 'M'),
('vi', 8, 'L'),
('vi', 9, 'XL'),
('vi', 10, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`, `use_image_from_product_variation`) VALUES
(1, 'Color', 'color', 'visual', 1, 1, 1, 'published', 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07', 1),
(2, 'Size', 'size', 'text', 1, 1, 1, 'published', 1, '2022-05-13 03:50:07', '2022-05-13 03:50:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

INSERT INTO `ec_product_attribute_sets_translations` (`lang_code`, `ec_product_attribute_sets_id`, `title`) VALUES
('vi', 1, 'M??u s???c'),
('vi', 2, 'K??ch th?????c');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Television', 0, NULL, 'published', 0, 'product-categories/p-1.png', 1, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(2, 'Home Audio & Theaters', 1, NULL, 'published', 0, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(3, 'TV & Videos', 1, NULL, 'published', 1, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(4, 'Camera, Photos & Videos', 1, NULL, 'published', 2, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(5, 'Cellphones & Accessories', 1, NULL, 'published', 3, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(6, 'Headphones', 1, NULL, 'published', 4, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(7, 'Videos games', 1, NULL, 'published', 5, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(8, 'Wireless Speakers', 1, NULL, 'published', 6, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(9, 'Office Electronic', 1, NULL, 'published', 7, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(10, 'Mobile', 0, NULL, 'published', 1, 'product-categories/p-2.png', 1, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(11, 'Digital Cables', 10, NULL, 'published', 0, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(12, 'Audio & Video Cables', 10, NULL, 'published', 1, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(13, 'Batteries', 10, NULL, 'published', 2, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(14, 'Headphone', 0, NULL, 'published', 2, 'product-categories/p-3.png', 1, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(15, 'Computer & Tablets', 14, NULL, 'published', 0, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(16, 'Laptop', 14, NULL, 'published', 1, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(17, 'Monitors', 14, NULL, 'published', 2, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(18, 'Computer Components', 14, NULL, 'published', 3, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(19, 'Watches', 0, NULL, 'published', 3, 'product-categories/p-4.png', 1, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(20, 'Drive & Storages', 19, NULL, 'published', 0, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(21, 'Gaming Laptop', 19, NULL, 'published', 1, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(22, 'Security & Protection', 19, NULL, 'published', 2, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(23, 'Accessories', 19, NULL, 'published', 3, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(24, 'Game', 0, NULL, 'published', 4, 'product-categories/p-5.png', 1, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(25, 'Camera', 0, NULL, 'published', 5, 'product-categories/p-6.png', 1, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(26, 'Audio', 0, NULL, 'published', 6, 'product-categories/p-7.png', 1, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(27, 'Mobile & Tablet', 0, NULL, 'published', 7, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(28, 'Accessories', 0, NULL, 'published', 8, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(29, 'Home Audio & Theater', 0, NULL, 'published', 9, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(30, 'Tv & Smart Box', 0, NULL, 'published', 10, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(31, 'Printer', 0, NULL, 'published', 11, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(32, 'Computer', 0, NULL, 'published', 12, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(33, 'Fax Machine', 0, NULL, 'published', 13, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(34, 'Mouse', 0, NULL, 'published', 14, NULL, 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories_translations`
--

INSERT INTO `ec_product_categories_translations` (`lang_code`, `ec_product_categories_id`, `name`, `description`) VALUES
('vi', 1, 'Tivi', NULL),
('vi', 2, 'Home Audio & Theaters', NULL),
('vi', 3, 'TV & Videos', NULL),
('vi', 4, 'Camera, Photos & Videos', NULL),
('vi', 5, 'Cellphones & Accessories', NULL),
('vi', 6, 'Headphones', NULL),
('vi', 7, 'Videos games', NULL),
('vi', 8, 'Wireless Speakers', NULL),
('vi', 9, 'Office Electronic', NULL),
('vi', 10, 'Di ?????ng', NULL),
('vi', 11, 'Digital Cables', NULL),
('vi', 12, 'Audio & Video Cables', NULL),
('vi', 13, 'Batteries', NULL),
('vi', 14, 'Tai nghe', NULL),
('vi', 15, 'Computer & Tablets', NULL),
('vi', 16, 'Laptop', NULL),
('vi', 17, 'Monitors', NULL),
('vi', 18, 'Computer Components', NULL),
('vi', 19, '?????ng h???', NULL),
('vi', 20, 'Drive & Storages', NULL),
('vi', 21, 'Gaming Laptop', NULL),
('vi', 22, 'Security & Protection', NULL),
('vi', 23, 'Accessories', NULL),
('vi', 24, 'Tr?? ch??i', NULL),
('vi', 25, 'M??y ???nh', NULL),
('vi', 26, '??m thanh', NULL),
('vi', 27, 'Di ?????ng & M??y t??nh b???ng', NULL),
('vi', 28, 'Ph??? ki???n', NULL),
('vi', 29, '??m thanh & h??nh ???nh', NULL),
('vi', 30, 'Tv & Smart Box', NULL),
('vi', 31, 'M??y in', NULL),
('vi', 32, 'M??y t??nh', NULL),
('vi', 33, 'M??y Fax', NULL),
('vi', 34, 'Chu???t m??y t??nh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections_translations`
--

INSERT INTO `ec_product_collections_translations` (`lang_code`, `ec_product_collections_id`, `name`, `description`) VALUES
('vi', 1, 'H??ng m???i v???', NULL),
('vi', 2, 'B??n ch???y nh???t', NULL),
('vi', 3, 'Khuy???n m??i ?????c bi???t', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#ec2434', 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(2, 'New', '#00c9a7', 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(3, 'Sale', '#fe9931', 'published', '2022-05-13 03:50:07', '2022-05-13 03:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels_translations`
--

INSERT INTO `ec_product_labels_translations` (`lang_code`, `ec_product_labels_id`, `name`, `description`) VALUES
('vi', 1, 'N???i b???t', NULL),
('vi', 2, 'M???i', NULL),
('vi', 3, 'Gi???m gi??', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(1, 9),
(1, 15),
(1, 18),
(2, 12),
(2, 21),
(3, 3),
(3, 6),
(3, 24),
(3, 27),
(3, 30);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronic', NULL, 'published', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(2, 'Mobile', NULL, 'published', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(3, 'Iphone', NULL, 'published', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(4, 'Printer', NULL, 'published', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(5, 'Office', NULL, 'published', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(6, 'IT', NULL, 'published', '2022-05-13 03:50:46', '2022-05-13 03:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags_translations`
--

CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 1),
(1, 3),
(1, 5),
(2, 1),
(2, 2),
(2, 6),
(3, 3),
(3, 6),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(5, 4),
(6, 3),
(6, 5),
(6, 6),
(7, 4),
(7, 5),
(7, 6),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(10, 3),
(10, 6),
(11, 3),
(11, 5),
(12, 2),
(12, 4),
(13, 2),
(13, 3),
(13, 6),
(14, 5),
(14, 6),
(15, 3),
(15, 5),
(16, 5),
(16, 6),
(17, 1),
(17, 3),
(17, 4),
(18, 2),
(18, 5),
(19, 1),
(19, 2),
(19, 5),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(21, 6),
(22, 1),
(22, 4),
(22, 5),
(23, 1),
(23, 2),
(23, 6),
(24, 2),
(24, 6),
(25, 1),
(25, 3),
(25, 4),
(26, 1),
(26, 3),
(26, 6),
(27, 3),
(27, 5),
(28, 1),
(28, 2),
(28, 6),
(29, 3),
(29, 4),
(29, 6),
(30, 2),
(30, 6),
(31, 3),
(31, 4),
(31, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `configurable_product_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipments`
--

INSERT INTO `ec_shipments` (`id`, `order_id`, `user_id`, `weight`, `shipment_id`, `note`, `status`, `cod_amount`, `cod_status`, `cross_checking_status`, `price`, `store_id`, `created_at`, `updated_at`, `tracking_id`, `shipping_company_name`, `tracking_link`, `estimate_date_shipped`, `date_shipped`) VALUES
(1, 1, NULL, 5555.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46', 'JJD004293047', 'GHN', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-14 10:50:46', '2022-05-13 10:50:46'),
(2, 2, NULL, 7527.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46', 'JJD0058930979', 'DHL', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-20 10:50:46', '2022-05-13 10:50:46'),
(3, 3, NULL, 4108.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46', 'JJD0065502022', 'DHL', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-21 10:50:46', '2022-05-13 10:50:46'),
(4, 4, NULL, 4969.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:46', '2022-05-13 03:50:46', 'JJD0086632155', 'GHN', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-20 10:50:46', '2022-05-13 10:50:46'),
(5, 5, NULL, 2109.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0020848936', 'DHL', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-20 10:50:47', NULL),
(6, 6, NULL, 3328.00, NULL, '', 'delivered', '667.60', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0035244698', 'AliExpress', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-17 10:50:47', '2022-05-13 10:50:47'),
(7, 7, NULL, 2597.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0071154462', 'GHN', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-23 10:50:47', NULL),
(8, 8, NULL, 4426.00, NULL, '', 'delivered', '744.38', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0087530312', 'DHL', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-17 10:50:47', '2022-05-13 10:50:47'),
(9, 9, NULL, 4515.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD007345120', 'GHN', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-21 10:50:47', '2022-05-13 10:50:47'),
(10, 10, NULL, 5484.00, NULL, '', 'approved', '1085.03', 'pending', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0066925536', 'DHL', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-21 10:50:47', NULL),
(11, 11, NULL, 5476.00, NULL, '', 'delivered', '1658.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0062341126', 'AliExpress', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-19 10:50:47', '2022-05-13 10:50:47'),
(12, 12, NULL, 3505.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0024112620', 'GHN', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-16 10:50:47', '2022-05-13 10:50:47'),
(13, 13, NULL, 2727.00, NULL, '', 'delivered', '749.60', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0062236973', 'FastShipping', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-22 10:50:47', '2022-05-13 10:50:47'),
(14, 14, NULL, 3036.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0018291695', 'AliExpress', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-21 10:50:47', NULL),
(15, 15, NULL, 6766.00, NULL, '', 'approved', '1612.70', 'pending', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0039771450', 'GHN', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-21 10:50:47', NULL),
(16, 16, NULL, 4891.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0028358592', 'AliExpress', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-21 10:50:47', '2022-05-13 10:50:47'),
(17, 17, NULL, 4015.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0099851519', 'FastShipping', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-15 10:50:47', '2022-05-13 10:50:47'),
(18, 18, NULL, 4900.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0051572199', 'FastShipping', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-22 10:50:47', '2022-05-13 10:50:47'),
(19, 19, NULL, 3163.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0070227805', 'DHL', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-14 10:50:47', '2022-05-13 10:50:47'),
(20, 20, NULL, 5930.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'JJD0033217938', 'DHL', 'https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference', '2022-05-20 10:50:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipment_histories`
--

INSERT INTO `ec_shipment_histories` (`id`, `action`, `description`, `user_id`, `shipment_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'create_from_order', 'Shipping was created from order %order_id%', 0, 1, 1, '2022-04-28 03:50:46', '2022-04-28 03:50:46'),
(2, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 1, 1, '2022-05-11 11:50:46', '2022-05-13 03:50:46'),
(3, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 1, 1, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(4, 'create_from_order', 'Shipping was created from order %order_id%', 0, 2, 2, '2022-05-06 19:50:46', '2022-05-06 19:50:46'),
(5, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 2, 2, '2022-05-11 13:50:46', '2022-05-13 03:50:46'),
(6, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 2, 2, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(7, 'create_from_order', 'Shipping was created from order %order_id%', 0, 3, 3, '2022-05-02 15:50:46', '2022-05-02 15:50:46'),
(8, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 3, 3, '2022-05-11 15:50:46', '2022-05-13 03:50:46'),
(9, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 3, 3, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(10, 'create_from_order', 'Shipping was created from order %order_id%', 0, 4, 4, '2022-05-01 19:50:46', '2022-05-01 19:50:46'),
(11, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 4, 4, '2022-05-11 17:50:46', '2022-05-13 03:50:46'),
(12, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 4, 4, '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(13, 'create_from_order', 'Shipping was created from order %order_id%', 0, 5, 5, '2022-05-09 03:50:46', '2022-05-09 03:50:46'),
(14, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 5, 5, '2022-05-11 19:50:47', '2022-05-13 03:50:47'),
(15, 'create_from_order', 'Shipping was created from order %order_id%', 0, 6, 6, '2022-05-05 15:50:47', '2022-05-05 15:50:47'),
(16, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 6, 6, '2022-05-11 21:50:47', '2022-05-13 03:50:47'),
(17, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 6, 6, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(18, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 6, 6, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(19, 'create_from_order', 'Shipping was created from order %order_id%', 0, 7, 7, '2022-05-08 11:50:47', '2022-05-08 11:50:47'),
(20, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 7, 7, '2022-05-11 23:50:47', '2022-05-13 03:50:47'),
(21, 'create_from_order', 'Shipping was created from order %order_id%', 0, 8, 8, '2022-05-04 11:50:47', '2022-05-04 11:50:47'),
(22, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 8, 8, '2022-05-12 01:50:47', '2022-05-13 03:50:47'),
(23, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 8, 8, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(24, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 8, 8, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(25, 'create_from_order', 'Shipping was created from order %order_id%', 0, 9, 9, '2022-05-05 03:50:47', '2022-05-05 03:50:47'),
(26, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 9, 9, '2022-05-12 03:50:47', '2022-05-13 03:50:47'),
(27, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 9, 9, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(28, 'create_from_order', 'Shipping was created from order %order_id%', 0, 10, 10, '2022-05-08 13:50:47', '2022-05-08 13:50:47'),
(29, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 10, 10, '2022-05-12 05:50:47', '2022-05-13 03:50:47'),
(30, 'create_from_order', 'Shipping was created from order %order_id%', 0, 11, 11, '2022-05-12 07:50:47', '2022-05-12 07:50:47'),
(31, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 11, 11, '2022-05-12 07:50:47', '2022-05-13 03:50:47'),
(32, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 11, 11, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(33, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 11, 11, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(34, 'create_from_order', 'Shipping was created from order %order_id%', 0, 12, 12, '2022-05-07 21:50:47', '2022-05-07 21:50:47'),
(35, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 12, 12, '2022-05-12 09:50:47', '2022-05-13 03:50:47'),
(36, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 12, 12, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(37, 'create_from_order', 'Shipping was created from order %order_id%', 0, 13, 13, '2022-05-12 11:50:47', '2022-05-12 11:50:47'),
(38, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 13, 13, '2022-05-12 11:50:47', '2022-05-13 03:50:47'),
(39, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 13, 13, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(40, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 13, 13, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(41, 'create_from_order', 'Shipping was created from order %order_id%', 0, 14, 14, '2022-05-10 05:50:47', '2022-05-10 05:50:47'),
(42, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 14, 14, '2022-05-12 13:50:47', '2022-05-13 03:50:47'),
(43, 'create_from_order', 'Shipping was created from order %order_id%', 0, 15, 15, '2022-05-09 03:50:47', '2022-05-09 03:50:47'),
(44, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 15, 15, '2022-05-12 15:50:47', '2022-05-13 03:50:47'),
(45, 'create_from_order', 'Shipping was created from order %order_id%', 0, 16, 16, '2022-05-11 21:50:47', '2022-05-11 21:50:47'),
(46, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 16, 16, '2022-05-12 17:50:47', '2022-05-13 03:50:47'),
(47, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 16, 16, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(48, 'create_from_order', 'Shipping was created from order %order_id%', 0, 17, 17, '2022-05-09 19:50:47', '2022-05-09 19:50:47'),
(49, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 17, 17, '2022-05-12 19:50:47', '2022-05-13 03:50:47'),
(50, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 17, 17, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(51, 'create_from_order', 'Shipping was created from order %order_id%', 0, 18, 18, '2022-05-10 21:50:47', '2022-05-10 21:50:47'),
(52, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 18, 18, '2022-05-12 21:50:47', '2022-05-13 03:50:47'),
(53, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 18, 18, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(54, 'create_from_order', 'Shipping was created from order %order_id%', 0, 19, 19, '2022-05-11 19:50:47', '2022-05-11 19:50:47'),
(55, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 19, 19, '2022-05-12 23:50:47', '2022-05-13 03:50:47'),
(56, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 19, 19, '2022-05-13 03:50:47', '2022-05-13 03:50:47'),
(57, 'create_from_order', 'Shipping was created from order %order_id%', 0, 20, 20, '2022-05-12 19:50:47', '2022-05-12 19:50:47'),
(58, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 20, 20, '2022-05-13 01:50:47', '2022-05-13 03:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Free shipping', 1, 'base_on_price', '0.00', NULL, '0.00', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(2, 'Local Pickup', 1, 'base_on_price', '0.00', NULL, '20.00', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(3, 'Flat Rate', 1, 'base_on_price', '0.00', NULL, '25.00', '2022-05-13 03:50:46', '2022-05-13 03:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`) VALUES
(1, 'Shopwise', 'sales@botble.com', '123-456-7890', '123 Street, Old Trafford', 'US', 'New York', 'New York', 1, 1, '2022-05-13 03:50:52', '2022-05-13 03:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10.000000, 1, 'published', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(2, 'None', 0.000000, 2, 'published', '2022-05-13 03:50:46', '2022-05-13 03:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What Shipping Methods Are Available?', 'Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.', 1, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(2, 'Do You Ship Internationally?', 'Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.', 1, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(3, 'How Long Will It Take To Get My Package?', 'Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.', 1, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(4, 'What Payment Methods Are Accepted?', 'Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.', 2, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(5, 'Is Buying On-Line Safe?', 'Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.', 2, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(6, 'How do I place an Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney???s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.', 3, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(7, 'How Can I Cancel Or Change My Order?', 'Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.', 3, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(8, 'Do I need an account to place an order?', 'Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.', 3, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(9, 'How Do I Track My Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.', 3, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(10, 'How Can I Return a Product?', 'Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven???t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.', 3, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_translations`
--

CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int(11) NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs_translations`
--

INSERT INTO `faqs_translations` (`lang_code`, `faqs_id`, `question`, `answer`) VALUES
('vi', 1, 'C?? nh???ng ph????ng th???c v???n chuy???n n??o?', 'Ex Portland Pitchfork irure ria m??p. Eutra fap tr?????c khi h??? b??n h???t theo ????ng ngh??a ??en. Aliquip ugh quy???n xe ?????p th???c s??? mlkshk, r?????u bia th??? c??ng m???c seitan. '),
('vi', 2, 'B???n c?? giao h??ng qu???c t??? kh??ng?', '??o hoodie t??i tote Tofu mixtape. Qu???n ????i jean ????nh ch??? Wolf quinoa, t??i messenger h???u c?? freegan cray. '),
('vi', 3, 'M???t bao l??u ????? nh???n ???????c g??i h??ng c???a t??i?', 'B???a n???a bu???i ??n s??ng b???ng b???ng heo quay t??? m??y ????nh ch??? VHS, c?? ph?? c?? ngu???n g???c ????n Paleo, Wes Anderson. Khoan Pitchfork linh ho???t, theo ngh??a ??en l?? ????? qua fap theo ngh??a ??en. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray b???n v???ng slow-carb raw denim Church-key fap chillwave Etsy. +1 b??? d???ng c??? ????nh m??y, ?????u ph??? Banksy Vice c???a American Apparel. '),
('vi', 4, 'Ph????ng th???c thanh to??n n??o ???????c ch???p nh???n?', 'Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Qu???y ???nh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria m??p. Twee chia gian h??ng ch???p ???nh xe b??n ????? ??n s???n, b???a ti???c tr??n m??i ??o hoodie swag keytar PBR DIY. '),
('vi', 5, 'Mua tr???c tuy???n c?? an to??n kh??ng?', 'B???a ti???c ngh??? thu???t ????ch th???c freegan semiotics jean shorts chia credit. Ti???c tr??n m??i nh?? Neutra Austin Brooklyn, Thundercats swag synth gian h??ng ???nh 8-bit. X?? c???p letterpress k??? s???c th??? c??ng bia meh ?????o ?????c Pinterest. '),
('vi', 6, 'L??m c??ch n??o ????? ?????t h??ng?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd ?????nh m???c seitan trong t????ng lai. Master l??m s???ch American Apparel nh??? nh??ng l??m s???ch r??u linh ho???t ch???m carb c???p ????? ti???p theo. V???i th?? denim polaroid nh???t t??? trang tr???i ?????n b??n, ?????t m???t con chim tr??n ???? h??nh x??m lo-fi Wes Anderson Pinterest letterpress. B???c th???y gian h??ng ???nh Schlitz c???a Fingerstache McSweeney ??ang l??m s???ch th??? b???t ?????u b???ng hashtag theo y??u c???u ri??ng, chillwave gentrify. '),
('vi', 7, 'L??m c??ch n??o ????? t??i c?? th??? h???y ho???c thay ?????i ????n h??ng c???a m??nh?', 'X?? c???p letterpress k??? s???c th??? c??ng bia meh ?????o ?????c Pinterest. B???a ti???c ngh??? thu???t ????ch th???c freegan semiotics jean shorts chia t??n. Ti???c tr??n m??i nh?? Neutra Austin ??? Brooklyn, synth Thundercats c?? gian h??ng ???nh 8-bit. '),
('vi', 8, 'T??i c?? c???n t??i kho???n ????? ?????t h??ng kh??ng?', 'Thundercats l??m lung lay gian h??ng ???nh 8-bit. X?? c???p letterpress k??? s???c th??? c??ng bia meh ?????o ?????c Pinterest. Twee chia ???nh gian h??ng xe b??n th???c ??n l??m s???n, b???a ti???c tr??n m??i ??o hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, r??u th???i trang m???a mai ng?????i b??n th???t m??y ????nh ch??? chambray VHS banjo ngh??? thu???t ???????ng ph???. '),
('vi', 9, 'L??m c??ch n??o ????? theo d??i ????n h??ng c???a t??i?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd ?????nh m???c seitan trong t????ng lai. B???c th???y l??m s???ch American Apparel nh??? nh??ng l??m s???ch r??u linh ho???t theo ki???u ch???m carb c???p ????? ti???p theo. '),
('vi', 10, 'L??m c??ch n??o ????? tr??? l???i s???n ph???m?', 'Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray u???ng gi???m Carles street art Bushwick gastropub. Ch??a kh??a nh?? th??? Wolf Tumblr. Xe t???i th???c ph???m k??? s???c Echo Park YOLO c???n hella, giao d???ch tr???c ti???p Thundercats legging quinoa tr?????c khi b??n h???t. C?? th??? b???n ch??a t???ng nghe n??i v??? h??? nh???ng ng?????i truy???n b?? v??? umami ????ch th???c u???ng gi???m Pinterest ??o len Cosby, fingerstache fap High Life. ');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shipping', 0, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(2, 'Payment', 1, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(3, 'Order & Returns', 2, 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories_translations`
--

CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories_translations`
--

INSERT INTO `faq_categories_translations` (`lang_code`, `faq_categories_id`, `name`) VALUES
('vi', 1, 'V???N CHUY???N'),
('vi', 2, 'THANH TO??N'),
('vi', 3, '????N H??NG & HO??N TR???');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Ti???ng Vi???t', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '0d8ad225ced2b3b0daddb03174efc9cc', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(2, 'vi', '0d8ad225ced2b3b0daddb03174efc9cc', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(3, 'en_US', '49b2f643997347362a172c2afd8ded1f', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(4, 'en_US', '474a84eead0d922e9ae0ca42adc1a791', 1, 'Botble\\Menu\\Models\\Menu'),
(5, 'en_US', '3d362133ea682906f729a9c1cf6280b7', 2, 'Botble\\Menu\\Models\\Menu'),
(6, 'en_US', '46bf592cdf5a8c1904c01171e697603f', 3, 'Botble\\Menu\\Models\\Menu'),
(7, 'en_US', '9b0f0b947f4b9a8cb695c6ab4b677a19', 4, 'Botble\\Menu\\Models\\Menu'),
(8, 'vi', '2312ce7d4800614a6cb71ba8735fcc1a', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(9, 'vi', '474a84eead0d922e9ae0ca42adc1a791', 5, 'Botble\\Menu\\Models\\Menu'),
(10, 'vi', '3d362133ea682906f729a9c1cf6280b7', 6, 'Botble\\Menu\\Models\\Menu'),
(11, 'vi', '46bf592cdf5a8c1904c01171e697603f', 7, 'Botble\\Menu\\Models\\Menu'),
(12, 'vi', '9b0f0b947f4b9a8cb695c6ab4b677a19', 8, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `language_meta_backup`
--

CREATE TABLE `language_meta_backup` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1', 1, 'image/png', 3509, 'brands/1.png', '[]', '2022-05-13 03:50:05', '2022-05-13 03:50:05', NULL),
(2, 0, '2', 1, 'image/png', 3505, 'brands/2.png', '[]', '2022-05-13 03:50:05', '2022-05-13 03:50:05', NULL),
(3, 0, '3', 1, 'image/png', 2585, 'brands/3.png', '[]', '2022-05-13 03:50:05', '2022-05-13 03:50:05', NULL),
(4, 0, '4', 1, 'image/png', 6427, 'brands/4.png', '[]', '2022-05-13 03:50:05', '2022-05-13 03:50:05', NULL),
(5, 0, '5', 1, 'image/png', 3246, 'brands/5.png', '[]', '2022-05-13 03:50:05', '2022-05-13 03:50:05', NULL),
(6, 0, '6', 1, 'image/png', 3276, 'brands/6.png', '[]', '2022-05-13 03:50:05', '2022-05-13 03:50:05', NULL),
(7, 0, '7', 1, 'image/png', 3120, 'brands/7.png', '[]', '2022-05-13 03:50:05', '2022-05-13 03:50:05', NULL),
(8, 0, 'p-1', 2, 'image/png', 9577, 'product-categories/p-1.png', '[]', '2022-05-13 03:50:06', '2022-05-13 03:50:06', NULL),
(9, 0, 'p-2', 2, 'image/png', 5510, 'product-categories/p-2.png', '[]', '2022-05-13 03:50:06', '2022-05-13 03:50:06', NULL),
(10, 0, 'p-3', 2, 'image/png', 16215, 'product-categories/p-3.png', '[]', '2022-05-13 03:50:06', '2022-05-13 03:50:06', NULL),
(11, 0, 'p-4', 2, 'image/png', 7394, 'product-categories/p-4.png', '[]', '2022-05-13 03:50:06', '2022-05-13 03:50:06', NULL),
(12, 0, 'p-5', 2, 'image/png', 6714, 'product-categories/p-5.png', '[]', '2022-05-13 03:50:06', '2022-05-13 03:50:06', NULL),
(13, 0, 'p-6', 2, 'image/png', 9541, 'product-categories/p-6.png', '[]', '2022-05-13 03:50:06', '2022-05-13 03:50:06', NULL),
(14, 0, 'p-7', 2, 'image/png', 13677, 'product-categories/p-7.png', '[]', '2022-05-13 03:50:07', '2022-05-13 03:50:07', NULL),
(15, 0, '1', 3, 'image/jpeg', 11752, 'customers/1.jpg', '[]', '2022-05-13 03:50:07', '2022-05-13 03:50:07', NULL),
(16, 0, '10', 3, 'image/jpeg', 27814, 'customers/10.jpg', '[]', '2022-05-13 03:50:08', '2022-05-13 03:50:08', NULL),
(17, 0, '2', 3, 'image/jpeg', 19005, 'customers/2.jpg', '[]', '2022-05-13 03:50:08', '2022-05-13 03:50:08', NULL),
(18, 0, '3', 3, 'image/jpeg', 20400, 'customers/3.jpg', '[]', '2022-05-13 03:50:08', '2022-05-13 03:50:08', NULL),
(19, 0, '4', 3, 'image/jpeg', 26819, 'customers/4.jpg', '[]', '2022-05-13 03:50:08', '2022-05-13 03:50:08', NULL),
(20, 0, '5', 3, 'image/jpeg', 14367, 'customers/5.jpg', '[]', '2022-05-13 03:50:08', '2022-05-13 03:50:08', NULL),
(21, 0, '6', 3, 'image/jpeg', 12367, 'customers/6.jpg', '[]', '2022-05-13 03:50:08', '2022-05-13 03:50:08', NULL),
(22, 0, '7', 3, 'image/jpeg', 20652, 'customers/7.jpg', '[]', '2022-05-13 03:50:09', '2022-05-13 03:50:09', NULL),
(23, 0, '8', 3, 'image/jpeg', 21164, 'customers/8.jpg', '[]', '2022-05-13 03:50:09', '2022-05-13 03:50:09', NULL),
(24, 0, '9', 3, 'image/jpeg', 6084, 'customers/9.jpg', '[]', '2022-05-13 03:50:09', '2022-05-13 03:50:09', NULL),
(25, 0, '1-1', 4, 'image/jpeg', 88437, 'products/1-1.jpg', '[]', '2022-05-13 03:50:10', '2022-05-13 03:50:10', NULL),
(26, 0, '1-2', 4, 'image/jpeg', 122690, 'products/1-2.jpg', '[]', '2022-05-13 03:50:11', '2022-05-13 03:50:11', NULL),
(27, 0, '1-3', 4, 'image/jpeg', 117296, 'products/1-3.jpg', '[]', '2022-05-13 03:50:11', '2022-05-13 03:50:11', NULL),
(28, 0, '1', 4, 'image/jpeg', 139025, 'products/1.jpg', '[]', '2022-05-13 03:50:11', '2022-05-13 03:50:11', NULL),
(29, 0, '10-1', 4, 'image/jpeg', 183491, 'products/10-1.jpg', '[]', '2022-05-13 03:50:12', '2022-05-13 03:50:12', NULL),
(30, 0, '10', 4, 'image/jpeg', 150956, 'products/10.jpg', '[]', '2022-05-13 03:50:12', '2022-05-13 03:50:12', NULL),
(31, 0, '11-1', 4, 'image/jpeg', 246200, 'products/11-1.jpg', '[]', '2022-05-13 03:50:12', '2022-05-13 03:50:12', NULL),
(32, 0, '11', 4, 'image/jpeg', 279390, 'products/11.jpg', '[]', '2022-05-13 03:50:13', '2022-05-13 03:50:13', NULL),
(33, 0, '12-1', 4, 'image/jpeg', 249712, 'products/12-1.jpg', '[]', '2022-05-13 03:50:13', '2022-05-13 03:50:13', NULL),
(34, 0, '12', 4, 'image/jpeg', 172221, 'products/12.jpg', '[]', '2022-05-13 03:50:13', '2022-05-13 03:50:13', NULL),
(35, 0, '13-1', 4, 'image/jpeg', 257021, 'products/13-1.jpg', '[]', '2022-05-13 03:50:14', '2022-05-13 03:50:14', NULL),
(36, 0, '13', 4, 'image/jpeg', 232917, 'products/13.jpg', '[]', '2022-05-13 03:50:14', '2022-05-13 03:50:14', NULL),
(37, 0, '14-1', 4, 'image/jpeg', 201773, 'products/14-1.jpg', '[]', '2022-05-13 03:50:14', '2022-05-13 03:50:14', NULL),
(38, 0, '14', 4, 'image/jpeg', 287194, 'products/14.jpg', '[]', '2022-05-13 03:50:15', '2022-05-13 03:50:15', NULL),
(39, 0, '15-1', 4, 'image/jpeg', 273720, 'products/15-1.jpg', '[]', '2022-05-13 03:50:15', '2022-05-13 03:50:15', NULL),
(40, 0, '15', 4, 'image/jpeg', 114265, 'products/15.jpg', '[]', '2022-05-13 03:50:15', '2022-05-13 03:50:15', NULL),
(41, 0, '16', 4, 'image/jpeg', 97174, 'products/16.jpg', '[]', '2022-05-13 03:50:16', '2022-05-13 03:50:16', NULL),
(42, 0, '17', 4, 'image/jpeg', 70179, 'products/17.jpg', '[]', '2022-05-13 03:50:17', '2022-05-13 03:50:17', NULL),
(43, 0, '18-1', 4, 'image/jpeg', 287835, 'products/18-1.jpg', '[]', '2022-05-13 03:50:17', '2022-05-13 03:50:17', NULL),
(44, 0, '18-2', 4, 'image/jpeg', 454869, 'products/18-2.jpg', '[]', '2022-05-13 03:50:18', '2022-05-13 03:50:18', NULL),
(45, 0, '18', 4, 'image/jpeg', 257331, 'products/18.jpg', '[]', '2022-05-13 03:50:19', '2022-05-13 03:50:19', NULL),
(46, 0, '19-1', 4, 'image/jpeg', 144008, 'products/19-1.jpg', '[]', '2022-05-13 03:50:20', '2022-05-13 03:50:20', NULL),
(47, 0, '19', 4, 'image/jpeg', 188821, 'products/19.jpg', '[]', '2022-05-13 03:50:20', '2022-05-13 03:50:20', NULL),
(48, 0, '2-1', 4, 'image/jpeg', 138167, 'products/2-1.jpg', '[]', '2022-05-13 03:50:20', '2022-05-13 03:50:20', NULL),
(49, 0, '2-2', 4, 'image/jpeg', 230552, 'products/2-2.jpg', '[]', '2022-05-13 03:50:21', '2022-05-13 03:50:21', NULL),
(50, 0, '2-3', 4, 'image/jpeg', 179301, 'products/2-3.jpg', '[]', '2022-05-13 03:50:21', '2022-05-13 03:50:21', NULL),
(51, 0, '2', 4, 'image/jpeg', 130048, 'products/2.jpg', '[]', '2022-05-13 03:50:21', '2022-05-13 03:50:21', NULL),
(52, 0, '20-1', 4, 'image/jpeg', 249712, 'products/20-1.jpg', '[]', '2022-05-13 03:50:22', '2022-05-13 03:50:22', NULL),
(53, 0, '20', 4, 'image/jpeg', 172221, 'products/20.jpg', '[]', '2022-05-13 03:50:22', '2022-05-13 03:50:22', NULL),
(54, 0, '21-1', 4, 'image/jpeg', 260746, 'products/21-1.jpg', '[]', '2022-05-13 03:50:22', '2022-05-13 03:50:22', NULL),
(55, 0, '21', 4, 'image/jpeg', 124244, 'products/21.jpg', '[]', '2022-05-13 03:50:24', '2022-05-13 03:50:24', NULL),
(56, 0, '22-1', 4, 'image/jpeg', 268620, 'products/22-1.jpg', '[]', '2022-05-13 03:50:24', '2022-05-13 03:50:24', NULL),
(57, 0, '22', 4, 'image/jpeg', 128692, 'products/22.jpg', '[]', '2022-05-13 03:50:26', '2022-05-13 03:50:26', NULL),
(58, 0, '23-1', 4, 'image/jpeg', 105560, 'products/23-1.jpg', '[]', '2022-05-13 03:50:27', '2022-05-13 03:50:27', NULL),
(59, 0, '23', 4, 'image/jpeg', 177362, 'products/23.jpg', '[]', '2022-05-13 03:50:28', '2022-05-13 03:50:28', NULL),
(60, 0, '24-1', 4, 'image/jpeg', 239311, 'products/24-1.jpg', '[]', '2022-05-13 03:50:28', '2022-05-13 03:50:28', NULL),
(61, 0, '24', 4, 'image/jpeg', 363853, 'products/24.jpg', '[]', '2022-05-13 03:50:29', '2022-05-13 03:50:29', NULL),
(62, 0, '25-1', 4, 'image/jpeg', 17089, 'products/25-1.jpg', '[]', '2022-05-13 03:50:30', '2022-05-13 03:50:30', NULL),
(63, 0, '25', 4, 'image/jpeg', 18069, 'products/25.jpg', '[]', '2022-05-13 03:50:30', '2022-05-13 03:50:30', NULL),
(64, 0, '26-1', 4, 'image/jpeg', 13085, 'products/26-1.jpg', '[]', '2022-05-13 03:50:30', '2022-05-13 03:50:30', NULL),
(65, 0, '26-2', 4, 'image/jpeg', 22667, 'products/26-2.jpg', '[]', '2022-05-13 03:50:30', '2022-05-13 03:50:30', NULL),
(66, 0, '26', 4, 'image/jpeg', 13611, 'products/26.jpg', '[]', '2022-05-13 03:50:30', '2022-05-13 03:50:30', NULL),
(67, 0, '27-1', 4, 'image/jpeg', 10286, 'products/27-1.jpg', '[]', '2022-05-13 03:50:30', '2022-05-13 03:50:30', NULL),
(68, 0, '27', 4, 'image/jpeg', 12569, 'products/27.jpg', '[]', '2022-05-13 03:50:30', '2022-05-13 03:50:30', NULL),
(69, 0, '28-1', 4, 'image/jpeg', 15654, 'products/28-1.jpg', '[]', '2022-05-13 03:50:31', '2022-05-13 03:50:31', NULL),
(70, 0, '28', 4, 'image/jpeg', 18243, 'products/28.jpg', '[]', '2022-05-13 03:50:31', '2022-05-13 03:50:31', NULL),
(71, 0, '29-1', 4, 'image/jpeg', 27890, 'products/29-1.jpg', '[]', '2022-05-13 03:50:31', '2022-05-13 03:50:31', NULL),
(72, 0, '29', 4, 'image/jpeg', 27961, 'products/29.jpg', '[]', '2022-05-13 03:50:31', '2022-05-13 03:50:31', NULL),
(73, 0, '3-1', 4, 'image/jpeg', 135741, 'products/3-1.jpg', '[]', '2022-05-13 03:50:31', '2022-05-13 03:50:31', NULL),
(74, 0, '3-2', 4, 'image/jpeg', 123069, 'products/3-2.jpg', '[]', '2022-05-13 03:50:32', '2022-05-13 03:50:32', NULL),
(75, 0, '3-3', 4, 'image/jpeg', 98645, 'products/3-3.jpg', '[]', '2022-05-13 03:50:32', '2022-05-13 03:50:32', NULL),
(76, 0, '3', 4, 'image/jpeg', 201722, 'products/3.jpg', '[]', '2022-05-13 03:50:32', '2022-05-13 03:50:32', NULL),
(77, 0, '30-1', 4, 'image/jpeg', 26283, 'products/30-1.jpg', '[]', '2022-05-13 03:50:33', '2022-05-13 03:50:33', NULL),
(78, 0, '30', 4, 'image/jpeg', 27107, 'products/30.jpg', '[]', '2022-05-13 03:50:33', '2022-05-13 03:50:33', NULL),
(79, 0, '31-1', 4, 'image/jpeg', 25924, 'products/31-1.jpg', '[]', '2022-05-13 03:50:33', '2022-05-13 03:50:33', NULL),
(80, 0, '31', 4, 'image/jpeg', 18634, 'products/31.jpg', '[]', '2022-05-13 03:50:33', '2022-05-13 03:50:33', NULL),
(81, 0, '4-1', 4, 'image/jpeg', 205312, 'products/4-1.jpg', '[]', '2022-05-13 03:50:33', '2022-05-13 03:50:33', NULL),
(82, 0, '4-2', 4, 'image/jpeg', 223903, 'products/4-2.jpg', '[]', '2022-05-13 03:50:33', '2022-05-13 03:50:33', NULL),
(83, 0, '4-3', 4, 'image/jpeg', 106593, 'products/4-3.jpg', '[]', '2022-05-13 03:50:34', '2022-05-13 03:50:34', NULL),
(84, 0, '4', 4, 'image/jpeg', 456134, 'products/4.jpg', '[]', '2022-05-13 03:50:34', '2022-05-13 03:50:34', NULL),
(85, 0, '5-1', 4, 'image/jpeg', 110014, 'products/5-1.jpg', '[]', '2022-05-13 03:50:34', '2022-05-13 03:50:34', NULL),
(86, 0, '5-2', 4, 'image/jpeg', 104934, 'products/5-2.jpg', '[]', '2022-05-13 03:50:35', '2022-05-13 03:50:35', NULL),
(87, 0, '5-3', 4, 'image/jpeg', 131628, 'products/5-3.jpg', '[]', '2022-05-13 03:50:35', '2022-05-13 03:50:35', NULL),
(88, 0, '5', 4, 'image/jpeg', 214767, 'products/5.jpg', '[]', '2022-05-13 03:50:35', '2022-05-13 03:50:35', NULL),
(89, 0, '6-1', 4, 'image/jpeg', 128041, 'products/6-1.jpg', '[]', '2022-05-13 03:50:36', '2022-05-13 03:50:36', NULL),
(90, 0, '6', 4, 'image/jpeg', 148485, 'products/6.jpg', '[]', '2022-05-13 03:50:36', '2022-05-13 03:50:36', NULL),
(91, 0, '7-1', 4, 'image/jpeg', 144008, 'products/7-1.jpg', '[]', '2022-05-13 03:50:37', '2022-05-13 03:50:37', NULL),
(92, 0, '7', 4, 'image/jpeg', 188821, 'products/7.jpg', '[]', '2022-05-13 03:50:37', '2022-05-13 03:50:37', NULL),
(93, 0, '8-1', 4, 'image/jpeg', 274272, 'products/8-1.jpg', '[]', '2022-05-13 03:50:37', '2022-05-13 03:50:37', NULL),
(94, 0, '8', 4, 'image/jpeg', 217862, 'products/8.jpg', '[]', '2022-05-13 03:50:38', '2022-05-13 03:50:38', NULL),
(95, 0, '9-1', 4, 'image/jpeg', 65624, 'products/9-1.jpg', '[]', '2022-05-13 03:50:38', '2022-05-13 03:50:38', NULL),
(96, 0, '9', 4, 'image/jpeg', 159636, 'products/9.jpg', '[]', '2022-05-13 03:50:39', '2022-05-13 03:50:39', NULL),
(97, 0, '1', 5, 'image/jpeg', 82629, 'news/1.jpg', '[]', '2022-05-13 03:50:47', '2022-05-13 03:50:47', NULL),
(98, 0, '10', 5, 'image/jpeg', 342651, 'news/10.jpg', '[]', '2022-05-13 03:50:47', '2022-05-13 03:50:47', NULL),
(99, 0, '11', 5, 'image/jpeg', 296740, 'news/11.jpg', '[]', '2022-05-13 03:50:47', '2022-05-13 03:50:47', NULL),
(100, 0, '2', 5, 'image/jpeg', 119904, 'news/2.jpg', '[]', '2022-05-13 03:50:48', '2022-05-13 03:50:48', NULL),
(101, 0, '3', 5, 'image/jpeg', 89543, 'news/3.jpg', '[]', '2022-05-13 03:50:48', '2022-05-13 03:50:48', NULL),
(102, 0, '4', 5, 'image/jpeg', 51573, 'news/4.jpg', '[]', '2022-05-13 03:50:48', '2022-05-13 03:50:48', NULL),
(103, 0, '5', 5, 'image/jpeg', 41164, 'news/5.jpg', '[]', '2022-05-13 03:50:48', '2022-05-13 03:50:48', NULL),
(104, 0, '6', 5, 'image/jpeg', 80696, 'news/6.jpg', '[]', '2022-05-13 03:50:48', '2022-05-13 03:50:48', NULL),
(105, 0, '7', 5, 'image/jpeg', 904027, 'news/7.jpg', '[]', '2022-05-13 03:50:49', '2022-05-13 03:50:49', NULL),
(106, 0, '8', 5, 'image/jpeg', 351088, 'news/8.jpg', '[]', '2022-05-13 03:50:49', '2022-05-13 03:50:49', NULL),
(107, 0, '9', 5, 'image/jpeg', 353751, 'news/9.jpg', '[]', '2022-05-13 03:50:49', '2022-05-13 03:50:49', NULL),
(108, 0, '1', 6, 'image/jpeg', 2733, 'testimonials/1.jpg', '[]', '2022-05-13 03:50:50', '2022-05-13 03:50:50', NULL),
(109, 0, '2', 6, 'image/jpeg', 2840, 'testimonials/2.jpg', '[]', '2022-05-13 03:50:50', '2022-05-13 03:50:50', NULL),
(110, 0, '3', 6, 'image/jpeg', 3065, 'testimonials/3.jpg', '[]', '2022-05-13 03:50:50', '2022-05-13 03:50:50', NULL),
(111, 0, '4', 6, 'image/jpeg', 2559, 'testimonials/4.jpg', '[]', '2022-05-13 03:50:50', '2022-05-13 03:50:50', NULL),
(112, 0, '1', 7, 'image/jpeg', 98636, 'sliders/1.jpg', '[]', '2022-05-13 03:50:51', '2022-05-13 03:50:51', NULL),
(113, 0, '2', 7, 'image/jpeg', 22560, 'sliders/2.jpg', '[]', '2022-05-13 03:50:51', '2022-05-13 03:50:51', NULL),
(114, 0, '3', 7, 'image/jpeg', 21630, 'sliders/3.jpg', '[]', '2022-05-13 03:50:51', '2022-05-13 03:50:51', NULL),
(115, 0, 'american-express', 8, 'image/png', 3209, 'general/american-express.png', '[]', '2022-05-13 03:50:52', '2022-05-13 03:50:52', NULL),
(116, 0, 'b-1', 8, 'image/jpeg', 20539, 'general/b-1.jpg', '[]', '2022-05-13 03:50:52', '2022-05-13 03:50:52', NULL),
(117, 0, 'b-2', 8, 'image/jpeg', 18320, 'general/b-2.jpg', '[]', '2022-05-13 03:50:52', '2022-05-13 03:50:52', NULL),
(118, 0, 'b-3', 8, 'image/jpeg', 42872, 'general/b-3.jpg', '[]', '2022-05-13 03:50:52', '2022-05-13 03:50:52', NULL),
(119, 0, 'discover', 8, 'image/png', 2494, 'general/discover.png', '[]', '2022-05-13 03:50:53', '2022-05-13 03:50:53', NULL),
(120, 0, 'favicon', 8, 'image/png', 1803, 'general/favicon.png', '[]', '2022-05-13 03:50:53', '2022-05-13 03:50:53', NULL),
(121, 0, 'logo-light', 8, 'image/png', 3736, 'general/logo-light.png', '[]', '2022-05-13 03:50:53', '2022-05-13 03:50:53', NULL),
(122, 0, 'logo', 8, 'image/png', 3927, 'general/logo.png', '[]', '2022-05-13 03:50:53', '2022-05-13 03:50:53', NULL),
(123, 0, 'master-card', 8, 'image/png', 3407, 'general/master-card.png', '[]', '2022-05-13 03:50:53', '2022-05-13 03:50:53', NULL),
(124, 0, 'newsletter', 8, 'image/jpeg', 48929, 'general/newsletter.jpg', '[]', '2022-05-13 03:50:53', '2022-05-13 03:50:53', NULL),
(125, 0, 'paypal', 8, 'image/png', 2670, 'general/paypal.png', '[]', '2022-05-13 03:50:53', '2022-05-13 03:50:53', NULL),
(126, 0, 'visa', 8, 'image/png', 2841, 'general/visa.png', '[]', '2022-05-13 03:50:53', '2022-05-13 03:50:53', NULL),
(127, 0, '1', 9, 'image/jpeg', 20539, 'promotion/1.jpg', '[]', '2022-05-13 03:50:54', '2022-05-13 03:50:54', NULL),
(128, 0, '2', 9, 'image/jpeg', 18320, 'promotion/2.jpg', '[]', '2022-05-13 03:50:54', '2022-05-13 03:50:54', NULL),
(129, 0, '3', 9, 'image/jpeg', 42872, 'promotion/3.jpg', '[]', '2022-05-13 03:50:54', '2022-05-13 03:50:54', NULL),
(130, 1, 'Capture', 0, 'image/png', 2498, 'capture.PNG', '[]', '2022-06-06 14:45:18', '2022-06-06 14:45:18', NULL),
(131, 1, 'Capture-1', 0, 'image/png', 2593, 'capture-1.PNG', '[]', '2022-06-06 14:50:05', '2022-06-06 14:50:05', NULL),
(132, 1, 'fav', 0, 'image/png', 46986, 'fav.PNG', '[]', '2022-06-06 14:53:59', '2022-06-06 14:53:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'brands', 'brands', 0, '2022-05-13 03:50:04', '2022-05-13 03:50:04', NULL),
(2, 0, 'product-categories', 'product-categories', 0, '2022-05-13 03:50:06', '2022-05-13 03:50:06', NULL),
(3, 0, 'customers', 'customers', 0, '2022-05-13 03:50:07', '2022-05-13 03:50:07', NULL),
(4, 0, 'products', 'products', 0, '2022-05-13 03:50:10', '2022-05-13 03:50:10', NULL),
(5, 0, 'news', 'news', 0, '2022-05-13 03:50:47', '2022-05-13 03:50:47', NULL),
(6, 0, 'testimonials', 'testimonials', 0, '2022-05-13 03:50:50', '2022-05-13 03:50:50', NULL),
(7, 0, 'sliders', 'sliders', 0, '2022-05-13 03:50:51', '2022-05-13 03:50:51', NULL),
(8, 0, 'general', 'general', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52', NULL),
(9, 0, 'promotion', 'promotion', 0, '2022-05-13 03:50:54', '2022-05-13 03:50:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(2, 'Useful Links', 'useful-links', 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(3, 'Categories', 'categories', 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(4, 'My Account', 'my-account', 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(5, 'Menu ch??nh', 'menu-chinh', 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(6, 'Li??n k???t h???u ??ch', 'lien-ket-huu-ich', 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(7, 'Danh m???c', 'danh-muc', 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(8, 'T??i kho???n', 'tai-khoan', 'published', '2022-05-13 03:50:52', '2022-05-13 03:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(2, 5, 'main-menu', '2022-05-13 03:50:52', '2022-05-13 03:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(2, 1, 0, NULL, NULL, '/products', NULL, 0, 'Products', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(3, 1, 0, NULL, NULL, '#', NULL, 0, 'Shop', NULL, '_self', 1, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(4, 1, 3, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/television', NULL, 0, 'Product Category', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(5, 1, 3, 1, 'Botble\\Ecommerce\\Models\\Brand', '/brands/fashion-live', NULL, 0, 'Brand', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(6, 1, 3, 1, 'Botble\\Ecommerce\\Models\\ProductTag', '/product-tags/electronic', NULL, 0, 'Product Tag', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(7, 1, 3, NULL, NULL, 'products/beat-headphone', NULL, 0, 'Product Single', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(8, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 1, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(9, 1, 8, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog Left Sidebar', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(10, 1, 8, 1, 'Botble\\Blog\\Models\\Category', '/news/ecommerce', NULL, 0, 'Blog Category', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(11, 1, 8, 1, 'Botble\\Blog\\Models\\Tag', '/tags/general', NULL, 0, 'Blog Tag', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(12, 1, 8, NULL, NULL, 'news/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Blog Single', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(13, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/faq', NULL, 0, 'FAQ', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(14, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Contact', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(15, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About Us', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(16, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/faq', NULL, 0, 'FAQ', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(17, 2, 0, 6, 'Botble\\Page\\Models\\Page', '/location', NULL, 0, 'Location', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(18, 2, 0, 7, 'Botble\\Page\\Models\\Page', '/affiliates', NULL, 0, 'Affiliates', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(19, 2, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Contact', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(20, 3, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/television', NULL, 0, 'Television', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(21, 3, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/home-audio-theaters', NULL, 0, 'Mobile', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(22, 3, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/tv-videos', NULL, 0, 'Headphone', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(23, 3, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/camera-photos-videos', NULL, 0, 'Watches', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(24, 3, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/cellphones-accessories', NULL, 0, 'Game', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(25, 4, 0, NULL, NULL, '/customer/overview', NULL, 0, 'My profile', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(26, 4, 0, NULL, NULL, '/wishlist', NULL, 0, 'Wishlist', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(27, 4, 0, NULL, NULL, 'customer/orders', NULL, 0, 'Orders', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(28, 4, 0, NULL, NULL, '/orders/tracking', NULL, 0, 'Order tracking', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(29, 5, 0, NULL, NULL, '/', NULL, 0, 'Trang ch???', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(30, 5, 0, NULL, NULL, '/products', NULL, 0, 'S???n ph???m', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(31, 5, 0, NULL, NULL, '#', NULL, 0, 'C???a h??ng', NULL, '_self', 1, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(32, 5, 31, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/television', NULL, 0, 'Danh m???c s???n ph???m', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(33, 5, 31, 1, 'Botble\\Ecommerce\\Models\\Brand', '/brands/fashion-live', NULL, 0, 'Th????ng hi???u', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(34, 5, 31, 1, 'Botble\\Ecommerce\\Models\\ProductTag', '/product-tags/electronic', NULL, 0, 'Tag s???n ph???m', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(35, 5, 31, NULL, NULL, 'products/beat-headphone', NULL, 0, 'S???n ph???m chi ti???t', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(36, 5, 0, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Tin t???c', NULL, '_self', 1, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(37, 5, 36, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog Left Sidebar', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(38, 5, 36, 5, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Danh m???c', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(39, 5, 36, 6, 'Botble\\Blog\\Models\\Tag', NULL, NULL, 0, 'Tag b??i vi???t', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(40, 5, 36, NULL, NULL, 'news/vi/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'B??i vi???t chi ti???t', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(41, 5, 0, 5, 'Botble\\Page\\Models\\Page', '/faq', NULL, 0, 'FAQ', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(42, 5, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Li??n h???', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(43, 6, 0, 4, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'V??? ch??ng t??i', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(44, 6, 0, 5, 'Botble\\Page\\Models\\Page', '/faq', NULL, 0, 'H???i ????p', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(45, 6, 0, 6, 'Botble\\Page\\Models\\Page', '/location', NULL, 0, 'V??? tr??', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(46, 6, 0, 7, 'Botble\\Page\\Models\\Page', '/affiliates', NULL, 0, 'Chi nh??nh', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(47, 6, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Li??n h???', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(48, 7, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/television', NULL, 0, 'Tivi', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(49, 7, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/home-audio-theaters', NULL, 0, 'Di ?????ng', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(50, 7, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/tv-videos', NULL, 0, 'Tai nghe', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(51, 7, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/camera-photos-videos', NULL, 0, '?????ng h???', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(52, 7, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/cellphones-accessories', NULL, 0, 'Tr?? ch??i', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(53, 8, 0, NULL, NULL, '/customer/overview', NULL, 0, 'T??i kho???n c???a t??i', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(54, 8, 0, NULL, NULL, '/wishlist', NULL, 0, 'Danh s??ch y??u th??ch', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(55, 8, 0, NULL, NULL, 'customer/orders', NULL, 0, '????n h??ng', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(56, 8, 0, NULL, NULL, '/orders/tracking', NULL, 0, 'Theo d??i ????n h??ng', NULL, '_self', 0, '2022-05-13 03:50:52', '2022-05-13 03:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'icon', '[\"flaticon-tv\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(2, 'icon', '[\"flaticon-responsive\"]', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(3, 'icon', '[\"flaticon-headphones\"]', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(4, 'icon', '[\"flaticon-watch\"]', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(5, 'icon', '[\"flaticon-console\"]', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(6, 'icon', '[\"flaticon-camera\"]', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(7, 'icon', '[\"flaticon-music-system\"]', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(8, 'icon', '[\"flaticon-responsive\"]', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(9, 'icon', '[\"flaticon-plugins\"]', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(10, 'icon', '[\"flaticon-music-system\"]', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(11, 'icon', '[\"flaticon-monitor\"]', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(12, 'icon', '[\"flaticon-printer\"]', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(13, 'icon', '[\"flaticon-tv\"]', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(14, 'icon', '[\"flaticon-fax\"]', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(15, 'icon', '[\"flaticon-mouse\"]', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(47, 'button_text', '[\"Shop now\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(48, 'button_text', '[\"Discover now\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(49, 'button_text', '[\"Shop now\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(50, 'button_text', '[\"Mua ngay\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(51, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(52, 'button_text', '[\"Mua ngay\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2022-05-13 03:50:51', '2022-05-13 03:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_06_18_033822_create_blog_table', 1),
(6, '2015_06_29_025744_create_audit_history', 1),
(7, '2016_06_10_230148_create_acl_tables', 1),
(8, '2016_06_14_230857_create_menus_table', 1),
(9, '2016_06_17_091537_create_contacts_table', 1),
(10, '2016_06_28_221418_create_pages_table', 1),
(11, '2016_10_03_032336_create_languages_table', 1),
(12, '2016_10_05_074239_create_setting_table', 1),
(13, '2016_10_07_193005_create_translations_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_05_18_080441_create_payment_tables', 1),
(18, '2017_07_11_140018_create_simple_slider_table', 1),
(19, '2017_10_24_154832_create_newsletter_table', 1),
(20, '2017_11_03_070450_create_slug_table', 1),
(21, '2018_07_09_214610_create_testimonial_table', 1),
(22, '2018_07_09_221238_create_faq_table', 1),
(23, '2019_01_05_053554_create_jobs_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_11_18_061011_create_country_table', 1),
(26, '2020_03_05_041139_create_ecommerce_tables', 1),
(27, '2020_11_18_150916_ads_create_ads_table', 1),
(28, '2021_01_01_044147_ecommerce_create_flash_sale_table', 1),
(29, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 1),
(30, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 1),
(31, '2021_02_16_092633_remove_default_value_for_author_type', 1),
(32, '2021_02_18_073505_update_table_ec_reviews', 1),
(33, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 1),
(34, '2021_03_10_025153_change_column_tax_amount', 1),
(35, '2021_03_20_033103_add_column_availability_to_table_ec_products', 1),
(36, '2021_03_27_144913_add_customer_type_into_table_payments', 1),
(37, '2021_04_28_074008_ecommerce_create_product_label_table', 1),
(38, '2021_05_24_034720_make_column_currency_nullable', 1),
(39, '2021_05_31_173037_ecommerce_create_ec_products_translations', 1),
(40, '2021_06_28_153141_correct_slugs_data', 1),
(41, '2021_08_09_161302_add_metadata_column_to_payments_table', 1),
(42, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 1),
(43, '2021_08_30_142128_add_images_column_to_ec_reviews_table', 1),
(44, '2021_09_01_115151_remove_unused_fields_in_ec_products', 1),
(45, '2021_10_04_030050_add_column_created_by_to_table_ec_products', 1),
(46, '2021_10_05_122616_add_status_column_to_ec_customers_table', 1),
(47, '2021_10_19_020859_update_metadata_field', 1),
(48, '2021_10_25_021023_fix-priority-load-for-language-advanced', 1),
(49, '2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses', 1),
(50, '2021_11_23_071403_correct_languages_for_product_variations', 1),
(51, '2021_11_28_031808_add_product_tags_translations', 1),
(52, '2021_12_01_031123_add_featured_image_to_ec_products', 1),
(53, '2021_12_02_035301_add_ads_translations_table', 1),
(54, '2021_12_03_030600_create_blog_translations', 1),
(55, '2021_12_03_075608_create_page_translations', 1),
(56, '2021_12_03_082134_create_faq_translations', 1),
(57, '2021_12_03_083642_create_testimonials_translations', 1),
(58, '2021_12_03_084118_create_location_translations', 1),
(59, '2021_12_03_094518_migrate_old_location_data', 1),
(60, '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', 1),
(61, '2021_12_26_024330_update_theme_options_social_links', 1),
(62, '2022_01_01_033107_update_table_ec_shipments', 1),
(63, '2022_01_16_085908_improve_plugin_location', 1),
(64, '2022_02_16_042457_improve_product_attribute_sets', 1),
(65, '2022_03_22_075758_correct_product_name', 1),
(66, '2022_04_19_113334_add_index_to_ec_products', 1),
(67, '2022_04_19_113923_add_index_to_table_posts', 1),
(68, '2022_04_20_100851_add_index_to_media_table', 1),
(69, '2022_04_20_101046_add_index_to_menu_table', 1),
(70, '2022_04_28_144405_remove_unused_table', 1),
(71, '2022_05_05_115015_create_ec_customer_recently_viewed_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products title=\"Trending Products\"][/trending-products]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" subtitle2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(2, 'Contact us', '<p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(3, 'Blog', '<p>---</p>', 1, NULL, 'blog-sidebar', 0, NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(4, 'About us', '<p>Dormouse,\' the Queen in front of them, with her head! Off--\' \'Nonsense!\' said Alice, quite forgetting that she looked up, but it just missed her. Alice caught the baby at her as she went on, \'What HAVE you been doing here?\' \'May it please your Majesty?\' he asked. \'Begin at the thought that SOMEBODY ought to have wondered at this, but at last the Mock Turtle angrily: \'really you are very dull!\' \'You ought to speak, and no one listening, this time, and was beating her violently with its tongue.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(5, 'FAQ', '<div>[faqs][/faqs]</div>', 1, NULL, 'default', 0, NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(6, 'Location', '<p>Jack-in-the-box, and up the fan and gloves. \'How queer it seems,\' Alice said very politely, \'if I had to double themselves up and went stamping about, and called out in a bit.\' \'Perhaps it doesn\'t understand English,\' thought Alice; \'I daresay it\'s a set of verses.\' \'Are they in the lap of her sharp little chin. \'I\'ve a right to grow up any more if you\'d rather not.\' \'We indeed!\' cried the Mock Turtle in a bit.\' \'Perhaps it doesn\'t mind.\' The table was a large one, but it was talking in a few.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(7, 'Affiliates', '<p>Cat, \'if you only walk long enough.\' Alice felt a violent shake at the end of the pack, she could remember about ravens and writing-desks, which wasn\'t much. The Hatter shook his head off outside,\' the Queen was to get through the doorway; \'and even if I like being that person, I\'ll come up: if not, I\'ll stay down here with me! There are no mice in the air: it puzzled her very earnestly, \'Now, Dinah, tell me the list of the baby, and not to her, though, as they were filled with cupboards and.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(8, 'Brands', '<p>[all-brands][/all-brands]</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(9, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Trang ch???', NULL, '<div>[simple-slider key=\"slider-trang-chu\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh m???c n???i b???t\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Khuy???n m??i t???t nh???t cho b???n\"][/flash-sale]</div><div>[product-collections title=\"S???n ph???m ?????c quy???n\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products title=\"S???n ph???m xu h?????ng\"][[/trending-products]</div><div>[product-blocks featured_product_title=\"N???i b???t\" top_rated_product_title=\"X???p h???ng cao nh???t\" on_sale_product_title=\"??ang khuy???n m??i\"][/product-blocks]</div><div>[featured-brands title=\"Th????ng hi???u\"][/featured-brands]</div><div>[featured-news title=\"Tin t???c\" subtitle=\"Blog c???a ch??ng t??i c???p nh???t c??c xu h?????ng m???i nh???t c???a th??? gi???i th?????ng xuy??n\"][/featured-news]</div><div>[testimonials title=\"Nh???n x??t t??? kh??ch h??ng!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Mi???n ph?? v???n chuy???n\" subtitle1=\"Giao h??ng mi???n ph?? cho t???t c??? c??c ????n ?????t h??ng t???i Hoa K??? ho???c ????n h??ng tr??n $200\" icon2=\"flaticon-money-back\" title2=\"?????m b???o ho??n tr??? trong 30 ng??y\" subtitle2=\"Ch??? c???n tr??? l???i n?? trong v??ng 30 ng??y ????? ?????i\" icon3=\"flaticon-support\" title3=\"H??? tr??? tr???c tuy???n 27/4\" subtitle3=\"Li??n h??? v???i ch??ng t??i 24 gi??? m???t ng??y, 7 ng??y m???t tu???n\"][/our-features]</div><div>[newsletter-form title=\"Theo d??i b???n tin ngay b??y gi???\" subtitle=\"????ng k?? ngay ????? c???p nh???t c??c ch????ng tr??nh khuy???n m??i.\"][/newsletter-form]</div>'),
('vi', 2, 'Li??n h???', NULL, '<p>[contact-form][/contact-form]</p>'),
('vi', 3, 'Tin t???c', NULL, '<p>---</p>'),
('vi', 4, 'V??? ch??ng t??i', NULL, '<p>While the Duchess by this time?\' she said to the other side. The further off from England the nearer is to find her in such a rule at processions; \'and besides, what would happen next. First, she tried hard to whistle to it; but she was out of sight, he said to herself; \'his eyes are so VERY nearly at the moment, \'My dear! I shall be punished for it was very likely true.) Down, down, down. There was exactly one a-piece all round. \'But she must have a prize herself, you know,\' said the Duchess.</p>'),
('vi', 5, 'C??u h???i th?????ng g???p', NULL, '<div>[faqs][/faqs]</div>'),
('vi', 6, 'V??? tr??', NULL, '<p>Alice gently remarked; \'they\'d have been changed for any of them. \'I\'m sure those are not attending!\' said the March Hare. \'Sixteenth,\' added the Gryphon; and then at the top of it. She felt that she had grown so large in the wood,\' continued the King. \'It began with the lobsters, out to sea as you are; secondly, because she was holding, and she said this, she came upon a neat little house, on the floor, and a scroll of parchment in the wind, and was going to give the prizes?\' quite a crowd of.</p>'),
('vi', 7, 'Chi nh??nh', NULL, '<p>I was thinking I should like to drop the jar for fear of their hearing her; and the whole head appeared, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at it again: but he now hastily began again, using the ink, that was sitting between them, fast asleep, and the Dormouse say?\' one of the teacups as the March Hare will be much the most curious thing I ask! It\'s always six o\'clock now.\'.</p>'),
('vi', 8, 'Th????ng hi???u', NULL, '<p>[all-brands][/all-brands]</p>'),
('vi', 9, 'Ch??nh s??ch cookie', NULL, '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`, `metadata`) VALUES
(1, 'USD', 0, 'LEZAXCCETA', 'bank_transfer', NULL, '1208.50', 1, 'pending', 'confirm', 6, NULL, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(2, 'USD', 0, 'ZJENOWSYXA', 'mollie', NULL, '1526.88', 2, 'completed', 'confirm', 5, NULL, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(3, 'USD', 0, 'SLLS1HOKYW', 'stripe', NULL, '650.90', 3, 'completed', 'confirm', 9, NULL, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(4, 'USD', 0, 'MLL3E4ONQT', 'paypal', NULL, '704.95', 4, 'completed', 'confirm', 8, NULL, NULL, '2022-05-13 03:50:46', '2022-05-13 03:50:46', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(5, 'USD', 0, '4V8DZK2TT3', 'bank_transfer', NULL, '214.85', 5, 'pending', 'confirm', 3, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(6, 'USD', 0, 'WVQUMTS902', 'cod', NULL, '667.60', 6, 'pending', 'confirm', 4, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(7, 'USD', 0, 'RUVT013G2F', 'razorpay', NULL, '957.90', 7, 'completed', 'confirm', 6, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(8, 'USD', 0, '1CYMXDBCE8', 'cod', NULL, '744.38', 8, 'pending', 'confirm', 11, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(9, 'USD', 0, 'ADHR57QBC2', 'paypal', NULL, '762.60', 9, 'completed', 'confirm', 2, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(10, 'USD', 0, 'P9HUJ0FINK', 'cod', NULL, '1085.03', 10, 'pending', 'confirm', 9, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(11, 'USD', 0, 'ZJTMRRKDZB', 'cod', NULL, '1658.00', 11, 'pending', 'confirm', 4, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(12, 'USD', 0, 'FMSGFLHYBA', 'mollie', NULL, '596.25', 12, 'completed', 'confirm', 1, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(13, 'USD', 0, 'ATBBGIF0BE', 'cod', NULL, '749.60', 13, 'pending', 'confirm', 2, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(14, 'USD', 0, 'GV4IED8LQC', 'bank_transfer', NULL, '458.00', 14, 'pending', 'confirm', 9, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(15, 'USD', 0, 'GJLFQGJOAV', 'cod', NULL, '1612.70', 15, 'pending', 'confirm', 8, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(16, 'USD', 0, 'OAINHC6NLV', 'bank_transfer', NULL, '860.90', 16, 'pending', 'confirm', 3, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(17, 'USD', 0, 'H3QSW3JX9M', 'bank_transfer', NULL, '309.50', 17, 'pending', 'confirm', 8, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(18, 'USD', 0, 'KZ7MY2VBAF', 'paypal', NULL, '1065.60', 18, 'completed', 'confirm', 4, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(19, 'USD', 0, 'HBXHMVEJNC', 'paypal', NULL, '604.40', 19, 'completed', 'confirm', 2, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(20, 'USD', 0, '05MINX9GOB', 'mollie', NULL, '1297.73', 20, 'completed', 'confirm', 6, NULL, NULL, '2022-05-13 03:50:47', '2022-05-13 03:50:47', 'Botble\\Ecommerce\\Models\\Customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men???s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1186, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1605, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(3, 'The Top 2020 Handbag Trends to Know', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 2014, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 2224, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(5, 'How to Care for Leather Bags', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 269, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1207, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(7, 'Essential Qualities of Highly Successful Music', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 446, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(8, '9 Things I Love About Shaving My Head', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 2489, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(9, 'Why Teamwork Really Makes The Dream Work', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 2206, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(10, 'The World Caters to Average People', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 1678, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(11, 'The litigants on the screen are not actors', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1254, NULL, '2022-05-13 03:50:50', '2022-05-13 03:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_translations`
--

INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('vi', 1, '4 L???i khuy??n c???a Chuy??n gia v??? C??ch Ch???n V?? Nam Ph?? h???p', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 2, 'Sexy Clutches: C??ch Mua & ??eo T??i Clutch Thi???t k???', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 3, 'Xu h?????ng t??i x??ch h??ng ?????u n??m 2020 c???n bi???t', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 4, 'C??ch Ph???i M??u T??i X??ch C???a B???n V???i Trang Ph???c', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 5, 'C??ch Ch??m s??c T??i Da', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 6, 'Ch??ng t??i ??ang nghi???n ng???m 10 xu h?????ng t??i l???n nh???t c???a m??a h??', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 7, 'Nh???ng ph???m ch???t c???n thi???t c???a ??m nh???c th??nh c??ng cao', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 8, '9 ??i???u t??i th??ch khi c???o ?????u', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 9, 'T???i sao l??m vi???c theo nh??m th???c s??? bi???n gi???c m?? th??nh c??ng', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 10, 'Th??? gi???i ph???c v??? cho nh???ng ng?????i trung b??nh', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 11, 'C??c ??????ng s??? tr??n m??n h??nh kh??ng ph???i l?? di???n vi??n', 'B???n n??n ch?? ?? h??n khi ch???n v??. C?? r???t nhi???u trong s??? ch??ng tr??n th??? tr?????ng v???i c??c m???u m?? v?? phong c??ch kh??c nhau. Khi b???n l???a ch???n c???n th???n, b???n s??? c?? th??? mua m???t chi???c v?? ph?? h???p v???i nhu c???u c???a b???n. Ch??a k??? n?? s??? gi??p n??ng t???m phong c??ch c???a b???n m???t c??ch ????ng k???.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(1, 2, 1),
(2, 4, 1),
(3, 2, 2),
(4, 4, 2),
(5, 2, 3),
(6, 4, 3),
(7, 1, 4),
(8, 4, 4),
(9, 2, 5),
(10, 3, 5),
(11, 1, 6),
(12, 4, 6),
(13, 2, 7),
(14, 3, 7),
(15, 1, 8),
(16, 3, 8),
(17, 2, 9),
(18, 4, 9),
(19, 2, 10),
(20, 4, 10),
(21, 1, 11),
(22, 4, 11);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6),
(31, 1, 7),
(32, 2, 7),
(33, 3, 7),
(34, 4, 7),
(35, 5, 7),
(36, 1, 8),
(37, 2, 8),
(38, 3, 8),
(39, 4, 8),
(40, 5, 8),
(41, 1, 9),
(42, 2, 9),
(43, 3, 9),
(44, 4, 9),
(45, 5, 9),
(46, 1, 10),
(47, 2, 10),
(48, 3, 10),
(49, 4, 10),
(50, 5, 10),
(51, 1, 11),
(52, 2, 11),
(53, 3, 11),
(54, 4, 11),
(55, 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"testimonial\",\"translation\",\"mollie\",\"location\"]', NULL, NULL),
(2, 'payment_cod_status', '1', NULL, NULL),
(3, 'payment_bank_transfer_status', '1', NULL, NULL),
(4, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(5, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(6, 'permalink-botble-blog-models-tag', 'tags', NULL, NULL),
(7, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL),
(8, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 1990 404 19.', NULL, NULL),
(9, 'plugins_ecommerce_customer_new_order_status', '0', NULL, NULL),
(10, 'plugins_ecommerce_admin_new_order_status', '0', NULL, NULL),
(11, 'New York', 'Singapore', NULL, NULL),
(12, 'admin_logo', 'capture-1.PNG', NULL, NULL),
(13, 'admin_favicon', 'fav.PNG', NULL, NULL),
(14, 'theme', 'shopwise', NULL, NULL),
(15, 'admin_email', '[]', NULL, NULL),
(16, 'time_zone', 'UTC', NULL, NULL),
(17, 'locale_direction', 'ltr', NULL, NULL),
(18, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(19, 'login_screen_backgrounds', '[]', NULL, NULL),
(20, 'admin_title', 'YK Gold & Silver', NULL, NULL),
(21, 'rich_editor', 'ckeditor', NULL, NULL),
(22, 'enable_change_admin_theme', '0', NULL, NULL),
(23, 'enable_cache', '0', NULL, NULL),
(24, 'cache_time', '10', NULL, NULL),
(25, 'cache_admin_menu_enable', '0', NULL, NULL),
(26, 'google_site_verification', '', NULL, NULL),
(27, 'cache_time_site_map', '3600', NULL, NULL),
(28, 'show_admin_bar', '1', NULL, NULL),
(29, 'redirect_404_to_homepage', '0', NULL, NULL),
(30, 'enable_faq_schema', '0', NULL, NULL),
(31, 'blacklist_keywords', '', NULL, NULL),
(32, 'blacklist_email_domains', '', NULL, NULL),
(33, 'enable_math_captcha_for_contact_form', '1', NULL, NULL),
(34, 'google_analytics', '', NULL, NULL),
(35, 'analytics_view_id', '', NULL, NULL),
(36, 'analytics_service_account_credentials', '', NULL, NULL),
(37, 'newsletter_mailchimp_api_key', '', NULL, NULL),
(38, 'newsletter_mailchimp_list_id', '', NULL, NULL),
(39, 'newsletter_sendgrid_api_key', '', NULL, NULL),
(40, 'newsletter_sendgrid_list_id', '', NULL, NULL),
(41, 'enable_captcha', '0', NULL, NULL),
(42, 'captcha_type', 'v2', NULL, NULL),
(43, 'captcha_hide_badge', '0', NULL, NULL),
(44, 'captcha_site_key', '', NULL, NULL),
(45, 'captcha_secret', '', NULL, NULL),
(46, 'locale', 'en', NULL, NULL),
(47, 'default_admin_theme', 'default', NULL, NULL),
(48, 'admin_locale_direction', 'ltr', NULL, NULL),
(85, 'language_hide_default', '1', NULL, NULL),
(86, 'language_switcher_display', 'dropdown', NULL, NULL),
(87, 'language_display', 'all', NULL, NULL),
(88, 'language_hide_languages', '[]', NULL, NULL),
(89, 'media_random_hash', '6941f2a6a68a7240195e843a11b6243e', NULL, NULL),
(90, 'simple_slider_using_assets', '0', NULL, NULL),
(106, 'ecommerce_store_name', 'Shopwise', NULL, NULL),
(107, 'ecommerce_store_phone', '123-456-7890', NULL, NULL),
(108, 'ecommerce_store_address', '123 Street, Old Trafford', NULL, NULL),
(109, 'ecommerce_store_state', 'New York', NULL, NULL),
(110, 'ecommerce_store_city', 'New York', NULL, NULL),
(111, 'ecommerce_store_country', 'US', NULL, NULL),
(112, 'theme-shopwise-site_title', 'Shopwise - Laravel Ecommerce system', NULL, NULL),
(113, 'theme-shopwise-copyright', '?? 2022 Botble Technologies. All Rights Reserved.', NULL, NULL),
(114, 'theme-shopwise-favicon', 'general/favicon.png', NULL, NULL),
(115, 'theme-shopwise-logo', 'general/logo.png', NULL, NULL),
(116, 'theme-shopwise-logo_footer', 'general/logo-light.png', NULL, NULL),
(117, 'theme-shopwise-address', '123 Street, Old Trafford, NewYork, USA', NULL, NULL),
(118, 'theme-shopwise-hotline', '123-456-7890', NULL, NULL),
(119, 'theme-shopwise-email', 'info@sitename.com', NULL, NULL),
(120, 'theme-shopwise-payment_methods', '[\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]', NULL, NULL),
(121, 'theme-shopwise-newsletter_image', 'general/newsletter.jpg', NULL, NULL),
(122, 'theme-shopwise-homepage_id', '1', NULL, NULL),
(123, 'theme-shopwise-blog_page_id', '3', NULL, NULL),
(124, 'theme-shopwise-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(125, 'theme-shopwise-cookie_consent_learn_more_url', 'http://shopwise/cookie-policy', NULL, NULL),
(126, 'theme-shopwise-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(127, 'theme-shopwise-about-us', 'If you are going to use of Lorem Ipsum need to be sure there isn\'t hidden of text', NULL, NULL),
(131, 'theme-shopwise-vi-primary_font', 'Roboto Condensed', NULL, NULL),
(132, 'theme-shopwise-vi-copyright', '?? 2021 Botble Technologies. T???t c??? quy???n ???? ???????c b???o h???.', NULL, NULL),
(133, 'theme-shopwise-vi-cookie_consent_message', 'Tr???i nghi???m c???a b???n tr??n trang web n??y s??? ???????c c???i thi???n b???ng c??ch cho ph??p cookie ', NULL, NULL),
(134, 'theme-shopwise-vi-cookie_consent_learn_more_url', 'http://shopwise/cookie-policy', NULL, NULL),
(135, 'theme-shopwise-vi-cookie_consent_learn_more_text', 'Ch??nh s??ch cookie', NULL, NULL),
(136, 'theme-shopwise-vi-homepage_id', '1', NULL, NULL),
(137, 'theme-shopwise-vi-blog_page_id', '3', NULL, NULL),
(138, 'theme-shopwise-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ion-social-facebook\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3b5998\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ion-social-twitter\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#00acee\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"ion-social-youtube\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#c4302b\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ion-social-instagram\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3f729b\"}]]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider', 'home-slider', NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(2, 'Slider trang ch???', 'slider-trang-chu', NULL, 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Woman Fashion', 'sliders/1.jpg', NULL, 'Get up to 50% off Today Only!', 1, '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(2, 1, 'Man Fashion', 'sliders/2.jpg', NULL, '50% off in all products', 2, '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(3, 1, 'Summer Sale', 'sliders/3.jpg', NULL, 'Taking your Viewing Experience to Next Level', 3, '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(4, 2, 'Th???i trang Nam', 'sliders/1.jpg', NULL, '???????c gi???m gi?? t???i 50% Ch??? h??m nay!', 1, '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(5, 2, 'Th???i trang N???', 'sliders/2.jpg', NULL, 'Khuy???n m??i 50% t???t c??? s???n ph???m', 2, '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(6, 2, 'Khuy???n m??i h??', 'sliders/3.jpg', NULL, 'N??ng tr???i nghi???m xem c???a b???n l??n c???p ????? ti???p theo', 3, '2022-05-13 03:50:51', '2022-05-13 03:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'fashion-live', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(2, 'hand-crafted', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(3, 'mestonix', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(4, 'sunshine', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(5, 'pure', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(6, 'anfold', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(7, 'automotive', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2022-05-13 03:50:06', '2022-05-13 03:50:06'),
(8, 'television', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(9, 'home-audio-theaters', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(10, 'tv-videos', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(11, 'camera-photos-videos', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(12, 'cellphones-accessories', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(13, 'headphones', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(14, 'videos-games', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(15, 'wireless-speakers', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(16, 'office-electronic', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(17, 'mobile', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(18, 'digital-cables', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(19, 'audio-video-cables', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(20, 'batteries', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(21, 'headphone', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(22, 'computer-tablets', 15, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(23, 'laptop', 16, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(24, 'monitors', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(25, 'computer-components', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(26, 'watches', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(27, 'drive-storages', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(28, 'gaming-laptop', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(29, 'security-protection', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(30, 'accessories', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(31, 'game', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(32, 'camera', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(33, 'audio', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(34, 'mobile-tablet', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(35, 'accessories', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(36, 'home-audio-theater', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(37, 'tv-smart-box', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(38, 'printer', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(39, 'computer', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(40, 'fax-machine', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(41, 'mouse', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2022-05-13 03:50:07', '2022-05-13 03:50:07'),
(73, 'electronic', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(74, 'mobile', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(75, 'iphone', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(76, 'printer', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(77, 'office', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(78, 'it', 6, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2022-05-13 03:50:46', '2022-05-13 03:50:46'),
(79, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(80, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(81, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(82, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(83, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tags', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(84, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tags', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(85, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tags', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(86, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tags', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(87, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tags', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(88, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(89, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(90, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(91, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(92, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(93, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(94, 'essential-qualities-of-highly-successful-music', 7, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(95, '9-things-i-love-about-shaving-my-head', 8, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(96, 'why-teamwork-really-makes-the-dream-work', 9, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(97, 'the-world-caters-to-average-people', 10, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(98, 'the-litigants-on-the-screen-are-not-actors', 11, 'Botble\\Blog\\Models\\Post', 'news', '2022-05-13 03:50:50', '2022-05-13 03:50:51'),
(99, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(100, 'contact-us', 2, 'Botble\\Page\\Models\\Page', '', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(101, 'blog', 3, 'Botble\\Page\\Models\\Page', '', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(102, 'about-us', 4, 'Botble\\Page\\Models\\Page', '', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(103, 'faq', 5, 'Botble\\Page\\Models\\Page', '', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(104, 'location', 6, 'Botble\\Page\\Models\\Page', '', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(105, 'affiliates', 7, 'Botble\\Page\\Models\\Page', '', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(106, 'brands', 8, 'Botble\\Page\\Models\\Page', '', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(107, 'cookie-policy', 9, 'Botble\\Page\\Models\\Page', '', '2022-05-13 03:50:51', '2022-05-13 03:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states_backup`
--

CREATE TABLE `states_backup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states_translations`
--

CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-05-13 03:50:50', '2022-05-13 03:50:50'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-05-13 03:50:50', '2022-05-13 03:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags_translations`
--

INSERT INTO `tags_translations` (`lang_code`, `tags_id`, `name`, `description`) VALUES
('vi', 1, 'Chung', NULL),
('vi', 2, 'Thi???t k???', NULL),
('vi', 3, 'Th???i trang', NULL),
('vi', 4, 'Th????ng hi???u', NULL),
('vi', 5, 'Hi???n ?????i', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adam Williams', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/1.jpg', 'CEO Of Microsoft', 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(2, 'Retha Deowalim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/2.jpg', 'CEO Of Apple', 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(3, 'Sam J. Wasim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/3.jpg', 'Pio Founder', 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51'),
(4, 'Usan Gulwarm', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/4.jpg', 'CEO Of Facewarm', 'published', '2022-05-13 03:50:51', '2022-05-13 03:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials_translations`
--

CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials_translations`
--

INSERT INTO `testimonials_translations` (`lang_code`, `testimonials_id`, `name`, `content`, `company`) VALUES
('vi', 1, 'Adam Williams', NULL, 'Gi??m ?????c Microsoft'),
('vi', 2, 'Retha Deowalim', NULL, 'Gi??m ?????c Apple'),
('vi', 3, 'Sam J. Wasim', NULL, 'Nh?? s??ng l???p Pio'),
('vi', 4, 'Usan Gulwarm', NULL, 'Gi??m ?????c Facewarm');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(12, 1, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(13, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(14, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(15, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(16, 1, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(17, 1, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(18, 1, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(19, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(20, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(21, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(22, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(23, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(24, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(25, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(26, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(27, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(28, 1, 'en', 'validation', 'current_password', 'The password is incorrect.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(29, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(30, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(31, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(32, 1, 'en', 'validation', 'declined', 'The :attribute must be declined.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(33, 1, 'en', 'validation', 'declined_if', 'The :attribute must be declined when :other is :value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(34, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(35, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(36, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(37, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(38, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(39, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(40, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(41, 1, 'en', 'validation', 'enum', 'The selected :attribute is invalid.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(42, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(43, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(44, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(45, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(46, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(47, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(48, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(49, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal to :value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(50, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal to :value kilobytes.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(51, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal to :value characters.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(52, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(53, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(54, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(55, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(56, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(57, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(58, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(59, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(60, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(61, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(62, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(63, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(64, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(65, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal to :value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(66, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal to :value kilobytes.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(67, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal to :value characters.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(68, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(69, 1, 'en', 'validation', 'mac_address', 'The :attribute must be a valid MAC address.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(70, 1, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(71, 1, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(72, 1, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(73, 1, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(74, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(75, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(76, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(77, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(78, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(79, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(80, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(81, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(82, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(83, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(84, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(85, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(86, 1, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(87, 1, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(88, 1, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(89, 1, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(90, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(91, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(92, 1, 'en', 'validation', 'required_array_keys', 'The :attribute field must contain entries for: :values.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(93, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(94, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(95, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(96, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(97, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(98, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(99, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(100, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(101, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(102, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(103, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(104, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(105, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(106, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(107, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(108, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(109, 1, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(110, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(111, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(112, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(113, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(114, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(115, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(116, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(117, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(118, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(119, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(120, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(121, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(122, 1, 'en', 'core/acl/api', 'name', 'Name', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(123, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(124, 1, 'en', 'core/acl/api', 'save', 'Save', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(125, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(126, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(127, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(128, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(129, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(130, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(131, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(132, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(133, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(134, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(135, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(136, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(137, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(138, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(139, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(140, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(141, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(142, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(143, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(144, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(145, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(146, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(147, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(148, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(149, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(150, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(151, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(152, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(153, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(154, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(155, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(156, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(157, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(158, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(159, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(160, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(161, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(162, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(163, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(164, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(165, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(166, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(167, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(168, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(169, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(170, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(171, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(172, 1, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(173, 1, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(174, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(175, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(176, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(177, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(178, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(179, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(180, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(181, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(182, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(183, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(184, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(185, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(186, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(187, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(188, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(189, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(190, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(191, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(192, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(193, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(194, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(195, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(196, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(197, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(198, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(199, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(200, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(201, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(202, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(203, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(204, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(205, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(206, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(207, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(208, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(209, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(210, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(211, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(212, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(213, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(214, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(215, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(216, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(217, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(218, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(219, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(220, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(221, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(222, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(223, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(224, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(225, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(226, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(227, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(228, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(229, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(230, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(231, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(232, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(233, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(234, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(235, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(236, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(237, 1, 'en', 'core/acl/users', 'email', 'Email', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(238, 1, 'en', 'core/acl/users', 'role', 'Role', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(239, 1, 'en', 'core/acl/users', 'username', 'Username', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(240, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(241, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(242, 1, 'en', 'core/acl/users', 'message', 'Message', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(243, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(244, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(245, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(246, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(247, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(248, 1, 'en', 'core/acl/users', 'password', 'Password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(249, 1, 'en', 'core/acl/users', 'save', 'Save', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(250, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(251, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(252, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(253, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(254, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(255, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(256, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(257, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(258, 1, 'en', 'core/acl/users', 'close', 'Close', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(259, 1, 'en', 'core/acl/users', 'update', 'Update', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(260, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(261, 1, 'en', 'core/acl/users', 'users', 'Users', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(262, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(263, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(264, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(265, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(266, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(267, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(268, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(269, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(270, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(271, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(272, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(273, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(274, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(275, 1, 'en', 'core/acl/users', 'info.about', 'About', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(276, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(277, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(278, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(279, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(280, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(281, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(282, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(283, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(284, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(285, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(286, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(287, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(288, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(289, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(290, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(291, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(292, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(293, 1, 'vi', 'core/acl/auth', 'login.username', 'T??n truy c????p', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(294, 1, 'vi', 'core/acl/auth', 'login.password', 'M????t kh????u', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(295, 1, 'vi', 'core/acl/auth', 'login.title', '????ng nh???p v??o qu???n tr???', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(296, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nh???? m????t kh????u?', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(297, 1, 'vi', 'core/acl/auth', 'login.login', '????ng nh????p', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(298, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lo??ng nh????p t??n truy c????p', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(299, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui l??ng nh???p email', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(300, 1, 'vi', 'core/acl/auth', 'login.success', '????ng nh????p tha??nh c??ng!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(301, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai t??n truy c????p ho????c m????t kh????u.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(302, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Ta??i khoa??n cu??a ba??n ch??a ????????c ki??ch hoa??t!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(303, 1, 'vi', 'core/acl/auth', 'login.banned', 'Ta??i khoa??n na??y ??a?? bi?? kho??a.', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(304, 1, 'vi', 'core/acl/auth', 'login.logout_success', '????ng xu????t tha??nh c??ng!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(305, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'B???n kh??ng c?? t??i kho???n trong h??? th???ng, vui l??ng li??n h??? qu???n tr??? vi??n!', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(306, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(307, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Qu??n m????t kh????u', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(308, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Qu??n m????t kh????u?</p><p>Vui l??ng nh???p email ????ng nh???p t??i kho???n c???a b???n ????? h??? th???ng g???i li??n k???t kh??i ph???c m???t kh???u.</p>', '2022-05-13 03:50:55', '2022-05-13 03:50:55'),
(309, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoa??n t????t', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(310, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'M????t kh????u m????i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(311, 1, 'vi', 'core/acl/auth', 'reset.title', 'Kh??i phu??c m????t kh????u', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(312, 1, 'vi', 'core/acl/auth', 'reset.update', 'C????p nh????t', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(313, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Li??n k????t na??y kh??ng chi??nh xa??c ho????c ??a?? h????t hi????u l????c, vui lo??ng y??u c????u kh??i phu??c m????t kh????u la??i!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(314, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'T??n ????ng nh????p kh??ng t????n ta??i.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(315, 1, 'vi', 'core/acl/auth', 'reset.success', 'Kh??i phu??c m????t kh????u tha??nh c??ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(316, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token kh??ng h????p l???? ho????c li??n k????t kh??i phu??c m????t kh????u ??a?? h????t th????i gian hi????u l????c!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(317, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email kh??i phu??c m????t kh????u', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(318, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'M????t email kh??i phu??c m????t kh????u ??a?? ????????c g????i t????i email cu??a ba??n, vui lo??ng ki????m tra va?? hoa??n t????t y??u c????u.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(319, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Kh??ng th???? g????i email trong lu??c na??y. Vui lo??ng th????c hi????n la??i sau.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(320, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'M????t kh????u m????i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(321, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(322, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email kh??i phu??c m????t kh????u', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(323, 1, 'vi', 'core/acl/auth', 'failed', 'Kh??ng tha??nh c??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(324, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(325, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay l???i trang ????ng nh???p', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(326, 1, 'vi', 'core/acl/auth', 'login_title', '????ng nh???p v??o qu???n tr???', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(327, 1, 'vi', 'core/acl/auth', 'login_via_social', '????ng nh???p th??ng qua m???ng x?? h???i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(328, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Qu??n m???t kh???u?', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(329, 1, 'vi', 'core/acl/auth', 'not_member', 'Ch??a l?? th??nh vi??n?', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(330, 1, 'vi', 'core/acl/auth', 'register_now', '????ng k?? ngay', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(331, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Kh??ng th???? xo??a quy????n ng??????i du??ng na??y vi?? no?? ??ang ????????c s???? du??ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(332, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Kh??ng th???? xo??a quy????n ha??n na??y vi?? no?? thu????c v???? ng??????i kha??c!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(333, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Ba??n kh??ng ????????c phe??p s????a quy????n na??y vi?? no?? thu????c v???? ng??????i kha??c', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(334, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Ba??n kh??ng th???? xo??a quy????n ng??????i du??ng h???? th????ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(335, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quy????n ng??????i du??ng ??a?? ????????c xo??a!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(336, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quy????n ng??????i du??ng ??a?? ????????c c????p nh????t tha??nh c??ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(337, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quy????n ng??????i du??ng m????i ??a?? ????????c ta??o tha??nh c??ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(338, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quy????n ng??????i du??ng ??a?? ????????c sao che??p tha??nh c??ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(339, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Ha??y cho??n i??t nh????t m????t quy????n ng??????i du??ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(340, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Kh??ng ti??m th????y quy????n ng??????i du??ng na??y', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(341, 1, 'vi', 'core/acl/permissions', 'name', 'T??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(342, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quy????n hi????n ta??i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(343, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Kh??ng co?? quy????n ha??n na??o', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(344, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quy????n ??a?? ????????c ga??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(345, 1, 'vi', 'core/acl/permissions', 'create_role', 'Ta??o quy????n m????i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(346, 1, 'vi', 'core/acl/permissions', 'role_name', 'T??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(347, 1, 'vi', 'core/acl/permissions', 'role_description', 'M?? ta??', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(348, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'C???? ??a??nh d????u quy????n ha??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(349, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hu??y bo??', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(350, 1, 'vi', 'core/acl/permissions', 'reset', 'La??m la??i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(351, 1, 'vi', 'core/acl/permissions', 'save', 'L??u', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(352, 1, 'vi', 'core/acl/permissions', 'global_role_msg', '????y la?? m????t ph??n quy????n toa??n cu??c va?? kh??ng th???? thay ??????i.  Ba??n co?? th???? s???? du??ng nu??t \"Nh??n ba??n\" ?????? ta??o m????t ba??n sao che??p cho ph??n quy????n na??y va?? chi??nh s????a.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(353, 1, 'vi', 'core/acl/permissions', 'details', 'Chi ti????t', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(354, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nh??n ba??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(355, 1, 'vi', 'core/acl/permissions', 'all', 'T????t ca?? ph??n quy????n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(356, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sa??ch quy????n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(357, 1, 'vi', 'core/acl/permissions', 'created_on', 'Nga??y ta??o', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(358, 1, 'vi', 'core/acl/permissions', 'created_by', '????????c ta??o b????i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(359, 1, 'vi', 'core/acl/permissions', 'actions', 'Ta??c vu??', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(360, 1, 'vi', 'core/acl/permissions', 'create_success', 'Ta??o tha??nh c??ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(361, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Kh??ng th???? xo??a quy????n h???? th????ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(362, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xo??a quy????n tha??nh c??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(363, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nh??n ba??n tha??nh c??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(364, 1, 'vi', 'core/acl/permissions', 'modified_success', 'S????a tha??nh c??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(365, 1, 'vi', 'core/acl/permissions', 'no_select', 'Ha??y cho??n i??t nh????t m????t quy????n ?????? th????c hi????n ha??nh ??????ng na??y!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(366, 1, 'vi', 'core/acl/permissions', 'not_found', 'Kh??ng ti??m th????y quy????n tha??nh vi??n na??o!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(367, 1, 'vi', 'core/acl/permissions', 'options', 'Tu??y cho??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(368, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Kh??ng th???? xo??a quy????n ha??n na??y vi?? no?? thu????c v???? ng??????i kha??c!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(369, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Ba??n kh??ng ????????c phe??p s????a quy????n na??y vi?? no?? thu????c v???? ng??????i kha??c', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(370, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Kh??ng th???? xo??a quy????n ng??????i du??ng na??y vi?? no?? ??ang ????????c s???? du??ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(371, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Ba??n kh??ng co?? quy????n s???? du??ng ch????c n??ng na??y!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(372, 1, 'vi', 'core/acl/permissions', 'roles', 'Quy???n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(373, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nh??m v?? ph??n quy???n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(374, 1, 'vi', 'core/acl/permissions', 'user_management', 'Qu???n l?? ng?????i d??ng h??? th???ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(375, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Qu???n l?? ng?????i d??ng c???p cao', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(376, 1, 'vi', 'core/acl/reminders', 'password', 'M???t kh???u ph???i ??t nh???t 6 k?? t??? v?? tr??ng kh???p v???i m???t kh???u x??c nh???n.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(377, 1, 'vi', 'core/acl/reminders', 'user', 'H??? th???ng kh??ng th??? t??m th???y t??i kho???n v???i email n??y.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(378, 1, 'vi', 'core/acl/reminders', 'token', 'M?? kh??i ph???c m???t kh???u n??y kh??ng h???p l???.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(379, 1, 'vi', 'core/acl/reminders', 'sent', 'Li??n k???t kh??i ph???c m???t kh???u ???? ???????c g???i!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(380, 1, 'vi', 'core/acl/reminders', 'reset', 'M???t kh???u ???? ???????c thay ?????i!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(381, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Kh??ng th???? xo??a ng??????i du??ng ??ang ????ng nh????p h???? th????ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(382, 1, 'vi', 'core/acl/users', 'no_select', 'Ha??y cho??n i??t nh????t m????t tr??????ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(383, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Kh??ng th???? kho??a ng??????i du??ng ??ang ????ng nh????p h???? th????ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(384, 1, 'vi', 'core/acl/users', 'update_success', 'C????p nh????t tra??ng tha??i tha??nh c??ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(385, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Co?? l????i xa??y ra trong qua?? tri??nh l??u ca??i ??????t cu??a ng??????i du??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(386, 1, 'vi', 'core/acl/users', 'not_found', 'Kh??ng ti??m th????y ng??????i du??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(387, 1, 'vi', 'core/acl/users', 'email_exist', 'Email na??y ??a?? ????????c s???? du??ng b????i ng??????i du??ng kha??c trong h???? th????ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(388, 1, 'vi', 'core/acl/users', 'username_exist', 'T??n ????ng nh????p na??y ??a?? ????????c s???? du??ng b????i ng??????i du??ng kha??c trong h???? th????ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(389, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Th??ng tin ta??i khoa??n cu??a ba??n ??a?? ????????c c????p nh????t tha??nh c??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(390, 1, 'vi', 'core/acl/users', 'password_update_success', 'C????p nh????t m????t kh????u tha??nh c??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(391, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'M????t kh????u hi????n ta??i kh??ng chi??nh xa??c', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(392, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Ng??????i du??ng ??a?? la?? tha??nh vi??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(393, 1, 'vi', 'core/acl/users', 'email', 'Email', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(394, 1, 'vi', 'core/acl/users', 'username', 'T??n ????ng nh????p', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(395, 1, 'vi', 'core/acl/users', 'role', 'Ph??n quy????n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(396, 1, 'vi', 'core/acl/users', 'first_name', 'Ho??', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(397, 1, 'vi', 'core/acl/users', 'last_name', 'T??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(398, 1, 'vi', 'core/acl/users', 'message', 'Th??ng ??i????p', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(399, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hu??y bo??', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(400, 1, 'vi', 'core/acl/users', 'password', 'M????t kh????u', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(401, 1, 'vi', 'core/acl/users', 'new_password', 'M????t kh????u m????i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(402, 1, 'vi', 'core/acl/users', 'save', 'L??u', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(403, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xa??c nh????n m????t kh????u m????i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(404, 1, 'vi', 'core/acl/users', 'deleted', 'Xo??a tha??nh vi??n tha??nh c??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(405, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Kh??ng th???? xo??a tha??nh vi??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(406, 1, 'vi', 'core/acl/users', 'last_login', 'L???n cu???i ????ng nh???p', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(407, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'C?? l???i trong qu?? tr??nh ?????i ???nh ?????i di???n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(408, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin cha??o :name</h3><p>H??? th???ng v???a nh???n ???????c y??u c???u kh??i ph???c m???t kh???u cho t??i kho???n c???a b???n, ????? ho??n t???t t??c v??? n??y vui l??ng click v??o ???????ng link b??n d?????i.</p><p><a href=\":link\">Kh??i phu??c m????t kh????u</a></p><p>N???u kh??ng ph???i b???n y??u c???u kh??i ph???c m???t kh???u, vui l??ng b??? qua email n??y.</p><p>Email n??y c?? gi?? tr??? trong v??ng 60 ph??t k??? t??? l??c nh???n ???????c email.</p>', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(409, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay ?????i ???nh ?????i di???n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(410, 1, 'vi', 'core/acl/users', 'new_image', '???nh m???i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(411, 1, 'vi', 'core/acl/users', 'loading', '??ang t???i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(412, 1, 'vi', 'core/acl/users', 'close', '????ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(413, 1, 'vi', 'core/acl/users', 'update', 'C???p nh???t', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(414, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Kh??ng ?????c ???????c n???i dung c???a h??nh ???nh', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(415, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'C???p nh???t ???nh ?????i di???n th??nh c??ng!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(416, 1, 'vi', 'core/acl/users', 'users', 'Qu???n tr??? vi??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(417, 1, 'vi', 'core/acl/users', 'info.title', 'Th??ng tin ng?????i d??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(418, 1, 'vi', 'core/acl/users', 'info.first_name', 'H???', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(419, 1, 'vi', 'core/acl/users', 'info.last_name', 'T??n', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(420, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(421, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email d??? ph??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(422, 1, 'vi', 'core/acl/users', 'info.address', '?????a ch???', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(423, 1, 'vi', 'core/acl/users', 'info.second_address', '?????a ch??? d??? ph??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(424, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ng??y sinh', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(425, 1, 'vi', 'core/acl/users', 'info.job', 'Ngh??? nghi???p', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(426, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'S??? ??i???n tho???i di ?????ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(427, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'S??? ??i???n tho???i d??? ph??ng', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(428, 1, 'vi', 'core/acl/users', 'info.interes', 'S??? th??ch', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(429, 1, 'vi', 'core/acl/users', 'info.about', 'Gi???i thi???u', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(430, 1, 'vi', 'core/acl/users', 'gender.title', 'Gi???i t??nh', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(431, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(432, 1, 'vi', 'core/acl/users', 'gender.female', 'n???', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(433, 1, 'vi', 'core/acl/users', 'change_password', 'Thay ?????i m???t kh???u', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(434, 1, 'vi', 'core/acl/users', 'current_password', 'M???t kh???u hi???n t???i', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(435, 1, 'en', 'core/base/base', 'yes', 'Yes', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(436, 1, 'en', 'core/base/base', 'no', 'No', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(437, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(438, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(439, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(440, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(441, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(442, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(443, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(444, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(445, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(446, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(447, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(448, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(449, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(450, 1, 'en', 'core/base/base', 'image', 'Image', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(451, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(452, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(453, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(454, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(455, 1, 'en', 'core/base/base', 'tools', 'Tools', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(456, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(457, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(458, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(459, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(460, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(461, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(462, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(463, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(464, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(465, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(466, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(467, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(468, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(469, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(470, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(471, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(472, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(473, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(474, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(475, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(476, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(477, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(478, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(479, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(480, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(481, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(482, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(483, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://shopwise/admin\">clicking here</a>.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(484, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(485, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(486, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(487, 1, 'en', 'core/base/forms', 'save', 'Save', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(488, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(489, 1, 'en', 'core/base/forms', 'image', 'Image', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(490, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(491, 1, 'en', 'core/base/forms', 'create', 'Create', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(492, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(493, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(494, 1, 'en', 'core/base/forms', 'ok', 'OK', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(495, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(496, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(497, 1, 'en', 'core/base/forms', 'template', 'Template', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(498, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(499, 1, 'en', 'core/base/forms', 'file', 'File', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(500, 1, 'en', 'core/base/forms', 'content', 'Content', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(501, 1, 'en', 'core/base/forms', 'description', 'Description', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(502, 1, 'en', 'core/base/forms', 'name', 'Name', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(503, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(504, 1, 'en', 'core/base/forms', 'title', 'Title', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(505, 1, 'en', 'core/base/forms', 'value', 'Value', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(506, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(507, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(508, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(509, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(510, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(511, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(512, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(513, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(514, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(515, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(516, 1, 'en', 'core/base/forms', 'update', 'Update', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(517, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(518, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(519, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(520, 1, 'en', 'core/base/forms', 'order', 'Order', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(521, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(522, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(523, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(524, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(525, 1, 'en', 'core/base/forms', 'add', 'Add', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(526, 1, 'en', 'core/base/forms', 'link', 'Link', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(527, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(528, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(529, 1, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(530, 1, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(531, 1, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(532, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(533, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(534, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(535, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(536, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(537, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(538, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(539, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(540, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(541, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(542, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(543, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(544, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(545, 1, 'en', 'core/base/layouts', 'home', 'Home', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(546, 1, 'en', 'core/base/layouts', 'search', 'Search', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(547, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(548, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(549, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(550, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(551, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(552, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(553, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(554, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(555, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(556, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(557, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(558, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(559, 1, 'en', 'core/base/notices', 'error', 'Error!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(560, 1, 'en', 'core/base/notices', 'success', 'Success!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(561, 1, 'en', 'core/base/notices', 'info', 'Info!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(562, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(563, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(564, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(565, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(566, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(567, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(568, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(569, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(570, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(571, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(572, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(573, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(574, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(575, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(576, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(577, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(578, 1, 'en', 'core/base/system', 'user.email', 'Email', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(579, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(580, 1, 'en', 'core/base/system', 'user.username', 'Username', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(581, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(582, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(583, 1, 'en', 'core/base/system', 'user.create', 'Create', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(584, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(585, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(586, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(587, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(588, 1, 'en', 'core/base/system', 'options.info', 'System information', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(589, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(590, 1, 'en', 'core/base/system', 'info.title', 'System information', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(591, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(592, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(593, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(594, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(595, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(596, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(597, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(598, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(599, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(600, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(601, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(602, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(603, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(604, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(605, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(606, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(607, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(608, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(609, 1, 'en', 'core/base/system', 'database', 'Database', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(610, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(611, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(612, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(613, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(614, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(615, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(616, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(617, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(618, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(619, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(620, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(621, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(622, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(623, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(624, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(625, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(626, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(627, 1, 'en', 'core/base/system', 'version', 'Version', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(628, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(629, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(630, 1, 'en', 'core/base/system', 'updater', 'System Updater', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(631, 1, 'en', 'core/base/system', 'zip', 'Zip Ext', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(632, 1, 'en', 'core/base/system', 'memory_limit', 'Memory limit', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(633, 1, 'en', 'core/base/system', 'max_execution_time', 'Max execution time (s)', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(634, 1, 'en', 'core/base/tables', 'id', 'ID', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(635, 1, 'en', 'core/base/tables', 'name', 'Name', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(636, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(637, 1, 'en', 'core/base/tables', 'title', 'Title', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(638, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(639, 1, 'en', 'core/base/tables', 'order', 'Order', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(640, 1, 'en', 'core/base/tables', 'status', 'Status', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(641, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(642, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(643, 1, 'en', 'core/base/tables', 'description', 'Description', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(644, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(645, 1, 'en', 'core/base/tables', 'url', 'URL', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(646, 1, 'en', 'core/base/tables', 'author', 'Author', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(647, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(648, 1, 'en', 'core/base/tables', 'column', 'Column', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(649, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(650, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(651, 1, 'en', 'core/base/tables', 'views', 'Views', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(652, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(653, 1, 'en', 'core/base/tables', 'session', 'Session', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(654, 1, 'en', 'core/base/tables', 'activated', 'activated', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(655, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(656, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(657, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(658, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(659, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(660, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(661, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(662, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(663, 1, 'en', 'core/base/tables', 'export', 'Export', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(664, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(665, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(666, 1, 'en', 'core/base/tables', 'print', 'Print', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(667, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(668, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(669, 1, 'en', 'core/base/tables', 'display', 'Display', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(670, 1, 'en', 'core/base/tables', 'all', 'All', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(671, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(672, 1, 'en', 'core/base/tables', 'action', 'Actions', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(673, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(674, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(675, 1, 'en', 'core/base/tables', 'save', 'Save', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(676, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(677, 1, 'en', 'core/base/tables', 'to', 'to', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(678, 1, 'en', 'core/base/tables', 'in', 'in', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(679, 1, 'en', 'core/base/tables', 'records', 'records', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(680, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(681, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(682, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(683, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(684, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(685, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(686, 1, 'en', 'core/base/tables', 'template', 'Template', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(687, 1, 'en', 'core/base/tables', 'email', 'Email', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(688, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(689, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(690, 1, 'en', 'core/base/tables', 'image', 'Image', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(691, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(692, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(693, 1, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(694, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(695, 1, 'en', 'core/base/tabs', 'file', 'Files', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(696, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(697, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(698, 1, 'vi', 'core/base/cache', 'cache_management', 'Qu???n l?? b??? nh??? ?????m', '2022-05-13 03:50:56', '2022-05-13 03:50:56'),
(699, 1, 'vi', 'core/base/cache', 'cache_commands', 'C??c l???nh xo?? b??? nh??? ?????m c?? b???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(700, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'X??a t???t c??? b??? ?????m hi???n c?? c???a ???ng d???ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(701, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'X??a c??c b??? nh??? ?????m c???a ???ng d???ng: c?? s??? d??? li???u, n???i dung t??nh... Ch???y l???nh n??y khi b???n th??? c???p nh???t d??? li???u nh??ng giao di???n kh??ng thay ?????i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(702, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'B??? ?????m ???? ???????c x??a', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(703, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'L??m m???i b??? ?????m giao di???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(704, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'L??m m???i b??? ?????m giao di???n gi??p ph???n giao di???n lu??n m???i nh???t', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(705, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'B??? ?????m giao di???n ???? ???????c l??m m???i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(706, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'X??a b??? nh??? ?????m c???a ph???n c???u h??nh', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(707, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'B???n c???n l??m m???i b??? ?????m c???u h??nh khi b???n t???o ra s??? thay ?????i n??o ???? ??? m??i tr?????ng th??nh ph???m.', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(708, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'B??? ?????m c???u h??nh ???? ???????c x??a', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(709, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xo?? cache ???????ng d???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(710, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'C???n th???c hi???n thao t??c n??y khi th???y kh??ng xu???t hi???n ???????ng d???n m???i.', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(711, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'B??? ?????m ??i???u h?????ng ???? b??? x??a', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(712, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xo?? l???ch s??? l???i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(713, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'L???ch s??? l???i ???? ???????c l??m s???ch', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(714, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xo?? l???ch s??? l???i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(715, 1, 'vi', 'core/base/enums', 'statuses.draft', 'B???n nh??p', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(716, 1, 'vi', 'core/base/enums', 'statuses.pending', '??ang ch??? x??? l??', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(717, 1, 'vi', 'core/base/errors', '401_title', 'Ba??n kh??ng co?? quy????n truy c????p trang na??y', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(718, 1, 'vi', 'core/base/errors', '401_msg', '<li>Ba??n kh??ng ????????c c????p quy????n truy c????p b????i qua??n tri?? vi??n.</li>\n	                <li>Ba??n s???? du??ng sai loa??i ta??i khoa??n.</li>\n	                <li>Ba??n kh??ng ????????c c????p quy????n ?????? co?? th???? truy c????p trang na??y</li>', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(719, 1, 'vi', 'core/base/errors', '404_title', 'Kh??ng ti??m th????y trang y??u c????u', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(720, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang ba??n y??u c????u kh??ng t????n ta??i.</li>\n	                <li>Li??n k????t ba??n v????a nh????n kh??ng co??n ????????c s???? du??ng.</li>\n	                <li>Trang na??y co?? th???? ??a?? ????????c chuy????n sang vi?? tri?? kha??c.</li>\n	                <li>Co?? th???? co?? l????i xa??y ra.</li>\n	                <li>Ba??n kh??ng ????????c c????p quy????n ?????? co?? th???? truy c????p trang na??y</li>', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(721, 1, 'vi', 'core/base/errors', '500_title', 'Kh??ng th???? ta??i trang', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(722, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang ba??n y??u c????u kh??ng t????n ta??i.</li>\n	                <li>Li??n k????t ba??n v????a nh????n kh??ng co??n ????????c s???? du??ng.</li>\n	                <li>Trang na??y co?? th???? ??a?? ????????c chuy????n sang vi?? tri?? kha??c.</li>\n	                <li>Co?? th???? co?? l????i xa??y ra.</li>\n	                <li>Ba??n kh??ng ????????c c????p quy????n ?????? co?? th???? truy c????p trang na??y</li>', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(723, 1, 'vi', 'core/base/errors', 'reasons', '??i???u n??y c?? th??? x???y ra v?? nhi???u l?? do.', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(724, 1, 'vi', 'core/base/errors', 'try_again', 'Vui l??ng th??? l???i trong v??i ph??t, ho???c quay tr??? l???i trang chu?? b???ng ca??ch <a href=\"http://cms.local/admin\"> nh???n v??o ????y </a>.', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(725, 1, 'vi', 'core/base/forms', 'choose_image', 'Ch???n ???nh', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(726, 1, 'vi', 'core/base/forms', 'actions', 'T??c v???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(727, 1, 'vi', 'core/base/forms', 'save', 'L??u', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(728, 1, 'vi', 'core/base/forms', 'save_and_continue', 'L??u & ch???nh s???a', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(729, 1, 'vi', 'core/base/forms', 'image', 'H??nh ???nh', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(730, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Ch??n ???????ng d???n h??nh ???nh ho???c nh???n n??t ????? ch???n h??nh', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(731, 1, 'vi', 'core/base/forms', 'create', 'T???o m???i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(732, 1, 'vi', 'core/base/forms', 'edit', 'S???a', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(733, 1, 'vi', 'core/base/forms', 'permalink', '????????ng d????n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(734, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(735, 1, 'vi', 'core/base/forms', 'cancel', 'Hu??y bo??', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(736, 1, 'vi', 'core/base/forms', 'character_remain', 'k?? t??? c??n l???i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(737, 1, 'vi', 'core/base/forms', 'template', 'Template', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(738, 1, 'vi', 'core/base/forms', 'choose_file', 'Ch???n t???p tin', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(739, 1, 'vi', 'core/base/forms', 'file', 'T???p tin', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(740, 1, 'vi', 'core/base/forms', 'content', 'N???i dung', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(741, 1, 'vi', 'core/base/forms', 'description', 'M?? t???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(742, 1, 'vi', 'core/base/forms', 'name', 'T??n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(743, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nh???p t??n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(744, 1, 'vi', 'core/base/forms', 'description_placeholder', 'M?? t??? ng???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(745, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(746, 1, 'vi', 'core/base/forms', 'icon', 'Bi???u t?????ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(747, 1, 'vi', 'core/base/forms', 'order_by', 'S???p x???p', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(748, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'S???p x???p', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(749, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(750, 1, 'vi', 'core/base/forms', 'is_featured', 'N???i b???t?', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(751, 1, 'vi', 'core/base/forms', 'is_default', 'M???c ?????nh?', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(752, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'V?? d???: fa fa-home', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(753, 1, 'vi', 'core/base/forms', 'update', 'C???p nh???t', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(754, 1, 'vi', 'core/base/forms', 'publish', 'Xu???t b???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(755, 1, 'vi', 'core/base/forms', 'remove_image', 'Xo?? ???nh', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(756, 1, 'vi', 'core/base/forms', 'add', 'Th??m', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(757, 1, 'vi', 'core/base/forms', 'add_short_code', 'Th??m shortcode', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(758, 1, 'vi', 'core/base/forms', 'alias', 'M?? thay th???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(759, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'M?? thay th???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(760, 1, 'vi', 'core/base/forms', 'basic_information', 'Th??ng tin c?? b???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(761, 1, 'vi', 'core/base/forms', 'link', 'Li??n k???t', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(762, 1, 'vi', 'core/base/forms', 'order', 'Th??? t???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(763, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(764, 1, 'vi', 'core/base/forms', 'title', 'Ti??u ?????', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(765, 1, 'vi', 'core/base/forms', 'value', 'Gi?? tr???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(766, 1, 'vi', 'core/base/forms', 'show_hide_editor', '???n/Hi???n tr??nh so???n th???o', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(767, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Th??ng tin c?? b???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(768, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Qu???n tr??? h??? th???ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(769, 1, 'vi', 'core/base/layouts', 'dashboard', 'B???ng ??i???u khi???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(770, 1, 'vi', 'core/base/layouts', 'widgets', 'Ti???n ??ch', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(771, 1, 'vi', 'core/base/layouts', 'plugins', 'Ti???n ??ch m??? r???ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(772, 1, 'vi', 'core/base/layouts', 'settings', 'C??i ?????t', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(773, 1, 'vi', 'core/base/layouts', 'setting_general', 'C?? b???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(774, 1, 'vi', 'core/base/layouts', 'system_information', 'Th??ng tin h??? th???ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(775, 1, 'vi', 'core/base/layouts', 'theme', 'Giao di???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(776, 1, 'vi', 'core/base/layouts', 'copyright', 'B???n quy???n :year &copy; :company. Phi??n b???n: <span>:version</span>', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(777, 1, 'vi', 'core/base/layouts', 'profile', 'Th??ng tin c?? nh??n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(778, 1, 'vi', 'core/base/layouts', 'logout', '????ng xu???t', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(779, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Kh??ng c?? k???t qu??? t??m ki???m, h??y th??? l???i v???i t??? kh??a kh??c.', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(780, 1, 'vi', 'core/base/layouts', 'home', 'Trang ch???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(781, 1, 'vi', 'core/base/layouts', 'search', 'T??m ki???m', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(782, 1, 'vi', 'core/base/layouts', 'add_new', 'Th??m m???i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(783, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(784, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang t???i xong trong', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(785, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngo??i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(786, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2022-05-13 03:50:57', '2022-05-13 03:50:57');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(787, 1, 'vi', 'core/base/mail', 'send-fail', 'G????i email kh??ng tha??nh c??ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(788, 1, 'vi', 'core/base/notices', 'create_success_message', 'T???o th??nh c??ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(789, 1, 'vi', 'core/base/notices', 'update_success_message', 'C???p nh???t th??nh c??ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(790, 1, 'vi', 'core/base/notices', 'delete_success_message', 'X??a th??nh c??ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(791, 1, 'vi', 'core/base/notices', 'success_header', 'Th??nh c??ng!', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(792, 1, 'vi', 'core/base/notices', 'error_header', 'L???i!', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(793, 1, 'vi', 'core/base/notices', 'no_select', 'Cho??n i??t nh????t 1 tr?????ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(794, 1, 'vi', 'core/base/notices', 'processing_request', 'H??? th???ng ??ang x??? l?? y??u c???u.', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(795, 1, 'vi', 'core/base/notices', 'error', 'L???i!', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(796, 1, 'vi', 'core/base/notices', 'success', 'Th??nh c??ng!', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(797, 1, 'vi', 'core/base/notices', 'info', 'Th??ng tin!', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(798, 1, 'vi', 'core/base/system', 'no_select', 'Ha??y cho??n i??t nh????t 1 tr??????ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(799, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Kh??ng th???? ta??i ????????c th??ng tin ng??????i du??ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(800, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quy????n qua??n tri?? vi??n cao nh????t ??a?? ????????c g???? bo??', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(801, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Kh??ng th??? g??? b??? quy???n qu???n tr??? c???p cao c???a ch??nh b???n!', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(802, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Ba??n kh??ng co?? quy????n xo??a qua??n tri?? vi??n c????p cao', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(803, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Kh??ng th???? ti??m th????y ng??????i du??ng v????i email na??y', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(804, 1, 'vi', 'core/base/system', 'supper_granted', 'Quy????n qua??n tri?? cao nh????t ??a?? ????????c ga??n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(805, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xo??a t????p tin log tha??nh c??ng!', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(806, 1, 'vi', 'core/base/system', 'get_member_success', 'Hi????n thi?? danh sa??ch tha??nh vi??n tha??nh c??ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(807, 1, 'vi', 'core/base/system', 'error_occur', 'C?? l???i d?????i ????y', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(808, 1, 'vi', 'core/base/system', 'role_and_permission', 'Ph??n quy????n h???? th????ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(809, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Qua??n ly?? nh????ng ph??n quy????n trong h???? th????ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(810, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sa??ch qua??n tri?? vi??n c????p cao', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(811, 1, 'vi', 'core/base/system', 'user.username', 'T??n ????ng nh????p', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(812, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(813, 1, 'vi', 'core/base/system', 'user.last_login', '????ng nh????p l????n cu????i	', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(814, 1, 'vi', 'core/base/system', 'user.add_user', 'Th??m qua??n tri?? vi??n c????p cao', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(815, 1, 'vi', 'core/base/system', 'user.cancel', 'Hu??y bo??', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(816, 1, 'vi', 'core/base/system', 'user.create', 'Th??m', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(817, 1, 'vi', 'core/base/system', 'options.features', 'Ki????m soa??t truy c????p ca??c ti??nh n??ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(818, 1, 'vi', 'core/base/system', 'options.feature_description', 'B????t/t????t ca??c ti??nh n??ng.', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(819, 1, 'vi', 'core/base/system', 'options.manage_super', 'Qua??n ly?? qua??n tri?? vi??n c????p cao', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(820, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Th??m/xo??a qua??n tri?? vi??n c????p cao', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(821, 1, 'vi', 'core/base/system', 'options.info', 'Th??ng tin h???? th????ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(822, 1, 'vi', 'core/base/system', 'options.info_description', 'Nh????ng th??ng tin v???? c????u hi??nh hi????n ta??i cu??a h???? th????ng.', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(823, 1, 'vi', 'core/base/system', 'info.title', 'Th??ng tin h???? th????ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(824, 1, 'vi', 'core/base/system', 'info.cache', 'B??? nh??? ?????m', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(825, 1, 'vi', 'core/base/system', 'info.environment', 'M??i tr?????ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(826, 1, 'vi', 'core/base/system', 'info.locale', 'Ng??n ng??? h??? th???ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(827, 1, 'vi', 'core/base/system', 'user_management', 'Qu???n l?? th??nh vi??n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(828, 1, 'vi', 'core/base/system', 'user_management_description', 'Qu???n l?? ng?????i d??ng trong h??? th???ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(829, 1, 'vi', 'core/base/system', 'app_size', 'K??ch th?????c ???ng d???ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(830, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'C?? th??? ghi b??? nh??? ?????m', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(831, 1, 'vi', 'core/base/system', 'cache_driver', 'Lo???i l??u tr??? b??? nh??? ?????m', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(832, 1, 'vi', 'core/base/system', 'copy_report', 'Sao ch??p b??o c??o', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(833, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(834, 1, 'vi', 'core/base/system', 'database', 'H??? th???ng d??? li???u', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(835, 1, 'vi', 'core/base/system', 'debug_mode', 'Ch??? ????? s???a l???i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(836, 1, 'vi', 'core/base/system', 'dependency_name', 'T??n g??i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(837, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(838, 1, 'vi', 'core/base/system', 'extra_information', 'Th??ng tin m??? r???ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(839, 1, 'vi', 'core/base/system', 'extra_stats', 'Th???ng k?? th??m', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(840, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(841, 1, 'vi', 'core/base/system', 'framework_version', 'Phi??n b???n framework', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(842, 1, 'vi', 'core/base/system', 'get_system_report', 'L???y th??ng tin h??? th???ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(843, 1, 'vi', 'core/base/system', 'installed_packages', 'C??c g??i ???? c??i ?????t v?? phi??n b???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(844, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(845, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(846, 1, 'vi', 'core/base/system', 'package_name', 'T??n g??i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(847, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(848, 1, 'vi', 'core/base/system', 'php_version', 'Phi??n b???n PHP', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(849, 1, 'vi', 'core/base/system', 'report_description', 'Vui l??ng chia s??? th??ng tin n??y nh???m m???c ????ch ??i???u tra nguy??n nh??n g??y l???i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(850, 1, 'vi', 'core/base/system', 'server_environment', 'M??i tr?????ng m??y ch???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(851, 1, 'vi', 'core/base/system', 'server_os', 'H??? ??i???u h??nh c???a m??y ch???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(852, 1, 'vi', 'core/base/system', 'server_software', 'Ph???n m???m', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(853, 1, 'vi', 'core/base/system', 'session_driver', 'Lo???i l??u tr??? phi??n l??m vi???c', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(854, 1, 'vi', 'core/base/system', 'ssl_installed', '???? c??i ?????t ch???ng ch??? SSL', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(855, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'C?? th??? l??u tr??? d??? li???u t???m', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(856, 1, 'vi', 'core/base/system', 'system_environment', 'M??i tr?????ng h??? th???ng', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(857, 1, 'vi', 'core/base/system', 'timezone', 'M??i gi???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(858, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(859, 1, 'vi', 'core/base/system', 'version', 'Phi??n b???n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(860, 1, 'vi', 'core/base/system', 'cms_version', 'Phi??n b???n CMS', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(861, 1, 'vi', 'core/base/tables', 'id', 'ID', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(862, 1, 'vi', 'core/base/tables', 'name', 'T??n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(863, 1, 'vi', 'core/base/tables', 'order_by', 'Th??? t???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(864, 1, 'vi', 'core/base/tables', 'status', 'Tr???ng th??i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(865, 1, 'vi', 'core/base/tables', 'created_at', 'Ng??y t???o', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(866, 1, 'vi', 'core/base/tables', 'updated_at', 'Ng??y c???p nh???t', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(867, 1, 'vi', 'core/base/tables', 'operations', 'T??c v???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(868, 1, 'vi', 'core/base/tables', 'url', 'URL', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(869, 1, 'vi', 'core/base/tables', 'author', 'Ng??????i ta??o', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(870, 1, 'vi', 'core/base/tables', 'column', 'C????t', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(871, 1, 'vi', 'core/base/tables', 'origin', 'Ba??n cu??', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(872, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay ??????i', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(873, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chu??', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(874, 1, 'vi', 'core/base/tables', 'activated', 'k??ch ho???t', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(875, 1, 'vi', 'core/base/tables', 'browser', 'Tr??nh duy???t', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(876, 1, 'vi', 'core/base/tables', 'deactivated', 'h???y k??ch ho???t', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(877, 1, 'vi', 'core/base/tables', 'description', 'M?? t???', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(878, 1, 'vi', 'core/base/tables', 'session', 'Phi??n', '2022-05-13 03:50:57', '2022-05-13 03:50:57'),
(879, 1, 'vi', 'core/base/tables', 'views', 'L?????t xem', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(880, 1, 'vi', 'core/base/tables', 'restore', 'Kh??i ph???c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(881, 1, 'vi', 'core/base/tables', 'edit', 'S???a', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(882, 1, 'vi', 'core/base/tables', 'delete', 'X??a', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(883, 1, 'vi', 'core/base/tables', 'action', 'H??nh ?????ng', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(884, 1, 'vi', 'core/base/tables', 'activate', 'K??ch ho???t', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(885, 1, 'vi', 'core/base/tables', 'add_new', 'Th??m m???i', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(886, 1, 'vi', 'core/base/tables', 'all', 'T???t c???', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(887, 1, 'vi', 'core/base/tables', 'cancel', 'H???y b???', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(888, 1, 'vi', 'core/base/tables', 'confirm_delete', 'X??c nh???n x??a', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(889, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'B???n c?? ch???c ch???n mu???n x??a b???n ghi n??y?', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(890, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(891, 1, 'vi', 'core/base/tables', 'deactivate', 'H???y k??ch ho???t', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(892, 1, 'vi', 'core/base/tables', 'delete_entry', 'X??a b???n ghi', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(893, 1, 'vi', 'core/base/tables', 'display', 'Hi???n th???', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(894, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(895, 1, 'vi', 'core/base/tables', 'export', 'Xu???t b???n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(896, 1, 'vi', 'core/base/tables', 'in', 'trong t???ng s???', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(897, 1, 'vi', 'core/base/tables', 'no_data', 'Kh??ng c?? d??? li???u ????? hi???n th???', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(898, 1, 'vi', 'core/base/tables', 'no_record', 'Kh??ng c?? d??? li???u', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(899, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(900, 1, 'vi', 'core/base/tables', 'print', 'In', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(901, 1, 'vi', 'core/base/tables', 'records', 'b???n ghi', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(902, 1, 'vi', 'core/base/tables', 'reload', 'T???i l???i', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(903, 1, 'vi', 'core/base/tables', 'reset', 'L??m m???i', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(904, 1, 'vi', 'core/base/tables', 'save', 'L??u', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(905, 1, 'vi', 'core/base/tables', 'show_from', 'Hi???n th??? t???', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(906, 1, 'vi', 'core/base/tables', 'template', 'Giao di???n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(907, 1, 'vi', 'core/base/tables', 'to', '?????n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(908, 1, 'vi', 'core/base/tables', 'view', 'Xem chi ti???t', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(909, 1, 'vi', 'core/base/tables', 'email', 'Email', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(910, 1, 'vi', 'core/base/tables', 'image', 'H??nh ???nh', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(911, 1, 'vi', 'core/base/tables', 'is_featured', 'N???i b???t', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(912, 1, 'vi', 'core/base/tables', 'last_login', 'L???n cu???i ????ng nh???p', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(913, 1, 'vi', 'core/base/tables', 'order', 'Th??? t???', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(914, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(915, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(916, 1, 'vi', 'core/base/tables', 'title', 'Ti??u ?????', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(917, 1, 'vi', 'core/base/tabs', 'detail', 'Chi ti???t', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(918, 1, 'vi', 'core/base/tabs', 'file', 'T???p tin', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(919, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi ch??', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(920, 1, 'vi', 'core/base/tabs', 'revision', 'L???ch s??? thay ?????i', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(921, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(922, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(923, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(924, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(925, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(926, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(927, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(928, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(929, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(930, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(931, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(932, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(933, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(934, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(935, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.today', 'Today', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(936, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.yesterday', 'Yesterday', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(937, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_week', 'This Week', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(938, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_7_days', 'Last 7 Days', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(939, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_month', 'This Month', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(940, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_30_days', 'Last 30 Days', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(941, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_year', 'This Year', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(942, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'H???y b???', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(943, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'M??? r???ng', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(944, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'B???n c?? ch???c?', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(945, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'V??ng, ???n ti???n ??ch n??y', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(946, 1, 'vi', 'core/dashboard/dashboard', 'hide', '???n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(947, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'B???n c?? ch???c ch???n mu???n ???n ti???n ??ch n??y? N?? s??? kh??ng ???????c hi???n th??? tr??n trang ch??? n???a!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(948, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', '???n ti???n ??ch th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(949, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Qu???n l?? ti???n ??ch', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(950, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'L??m m???i', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(951, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'L??u ti???n ??ch th??nh c??ng', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(952, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'C???p nh???t v??? tr?? ti???n ??ch th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(953, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Ti???n ??ch n??y kh??ng t???n t???i!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(954, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'To??n m??n h??nh', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(955, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang qu???n tr???', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(956, 1, 'en', 'core/media/media', 'filter', 'Filter', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(957, 1, 'en', 'core/media/media', 'everything', 'Everything', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(958, 1, 'en', 'core/media/media', 'image', 'Image', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(959, 1, 'en', 'core/media/media', 'video', 'Video', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(960, 1, 'en', 'core/media/media', 'document', 'Document', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(961, 1, 'en', 'core/media/media', 'view_in', 'View in', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(962, 1, 'en', 'core/media/media', 'all_media', 'All media', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(963, 1, 'en', 'core/media/media', 'trash', 'Trash', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(964, 1, 'en', 'core/media/media', 'recent', 'Recent', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(965, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(966, 1, 'en', 'core/media/media', 'upload', 'Upload', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(967, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(968, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(969, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(970, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search in current folder', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(971, 1, 'en', 'core/media/media', 'sort', 'Sort', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(972, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(973, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(974, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(975, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(976, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(977, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(978, 1, 'en', 'core/media/media', 'actions', 'Actions', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(979, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(980, 1, 'en', 'core/media/media', 'insert', 'Insert', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(981, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(982, 1, 'en', 'core/media/media', 'create', 'Create', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(983, 1, 'en', 'core/media/media', 'rename', 'Rename', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(984, 1, 'en', 'core/media/media', 'close', 'Close', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(985, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(986, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(987, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(988, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(989, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(990, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(991, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(992, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(993, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(994, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(995, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(996, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(997, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(998, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(999, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1000, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1001, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1002, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1003, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1004, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1005, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1006, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1007, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1008, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1009, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1010, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1011, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1012, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1013, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1014, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1015, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1016, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1017, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1018, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1019, 1, 'en', 'core/media/media', 'add', 'Add media', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1020, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1021, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1022, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1023, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1024, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1025, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1026, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1027, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1028, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1029, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1030, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1031, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1032, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1033, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1034, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1035, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1036, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1037, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1038, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1039, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1040, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1041, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1042, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1043, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1044, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1045, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1046, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1047, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1048, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1049, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1050, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1051, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1052, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1053, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1054, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1055, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1056, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1057, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1058, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1059, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1060, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1061, 1, 'en', 'core/media/media', 'download_link', 'Download', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1062, 1, 'en', 'core/media/media', 'url', 'URL', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1063, 1, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1064, 1, 'en', 'core/media/media', 'downloading', 'Downloading...', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1065, 1, 'vi', 'core/media/media', 'filter', 'L???c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1066, 1, 'vi', 'core/media/media', 'everything', 'T???t c???', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1067, 1, 'vi', 'core/media/media', 'image', 'H??nh ???nh', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1068, 1, 'vi', 'core/media/media', 'video', 'Phim', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1069, 1, 'vi', 'core/media/media', 'document', 'T??i li???u', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1070, 1, 'vi', 'core/media/media', 'view_in', 'Ch??? ????? xem', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1071, 1, 'vi', 'core/media/media', 'all_media', 'T???t c??? t???p tin', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1072, 1, 'vi', 'core/media/media', 'trash', 'Th??ng r??c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1073, 1, 'vi', 'core/media/media', 'recent', 'G???n ????y', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1074, 1, 'vi', 'core/media/media', 'favorites', '???????c g???n d???u sao', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1075, 1, 'vi', 'core/media/media', 'upload', 'T???i l??n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1076, 1, 'vi', 'core/media/media', 'create_folder', 'T???o th?? m???c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1077, 1, 'vi', 'core/media/media', 'refresh', 'L??m m???i', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1078, 1, 'vi', 'core/media/media', 'empty_trash', 'D???n th??ng r??c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1079, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'T??m ki???m t???p tin v?? th?? m???c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1080, 1, 'vi', 'core/media/media', 'sort', 'S???p x???p', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1081, 1, 'vi', 'core/media/media', 'file_name_asc', 'T??n t???p tin - ASC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1082, 1, 'vi', 'core/media/media', 'file_name_desc', 'T??n t???p tin - DESC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1083, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ng??y t???i l??n - ASC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1084, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ng??y t???i l??n - DESC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1085, 1, 'vi', 'core/media/media', 'size_asc', 'K??ch th?????c - ASC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1086, 1, 'vi', 'core/media/media', 'size_desc', 'K??ch th?????c - DESC', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1087, 1, 'vi', 'core/media/media', 'actions', 'H??nh ?????ng', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1088, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Kh??ng c?? t???p tin n??o ???????c ch???n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1089, 1, 'vi', 'core/media/media', 'insert', 'Ch??n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1090, 1, 'vi', 'core/media/media', 'folder_name', 'T??n th?? m???c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1091, 1, 'vi', 'core/media/media', 'create', 'T???o', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1092, 1, 'vi', 'core/media/media', 'rename', '?????i t??n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1093, 1, 'vi', 'core/media/media', 'close', '????ng', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1094, 1, 'vi', 'core/media/media', 'save_changes', 'L??u thay ?????i', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1095, 1, 'vi', 'core/media/media', 'move_to_trash', '????a v??o th??ng r??c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1096, 1, 'vi', 'core/media/media', 'confirm_trash', 'B???n c?? ch???c ch???n mu???n b??? nh???ng t???p tin n??y v??o th??ng r??c?', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1097, 1, 'vi', 'core/media/media', 'confirm', 'X??c nh???n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1098, 1, 'vi', 'core/media/media', 'confirm_delete', 'X??a t???p tin', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1099, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'H??nh ?????ng n??y kh??ng th??? kh??i ph???c. B???n c?? ch???c ch???n mu???n x??a c??c t???p tin n??y?', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1100, 1, 'vi', 'core/media/media', 'empty_trash_title', 'D???n s???ch th??ng r??c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1101, 1, 'vi', 'core/media/media', 'empty_trash_description', 'H??nh ?????ng n??y kh??ng th??? kh??i ph???c. B???n c?? ch???c ch???n mu???n d???n s???ch th??ng r??c?', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1102, 1, 'vi', 'core/media/media', 'up_level', 'Quay l???i m???t c???p', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1103, 1, 'vi', 'core/media/media', 'upload_progress', 'Ti???n tr??nh t???i l??n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1104, 1, 'vi', 'core/media/media', 'folder_created', 'T???o th?? m???c th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1105, 1, 'vi', 'core/media/media', 'gallery', 'Th?? vi???n t???p tin', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1106, 1, 'vi', 'core/media/media', 'trash_error', 'C?? l???i khi x??a t???p tin/th?? m???c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1107, 1, 'vi', 'core/media/media', 'trash_success', 'X??a t???p tin/th?? m???c th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1108, 1, 'vi', 'core/media/media', 'restore_error', 'C?? l???i trong qu?? tr??nh kh??i ph???c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1109, 1, 'vi', 'core/media/media', 'restore_success', 'Kh??i ph???c th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1110, 1, 'vi', 'core/media/media', 'copy_success', 'Sao ch??p th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1111, 1, 'vi', 'core/media/media', 'delete_success', 'X??a th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1112, 1, 'vi', 'core/media/media', 'favorite_success', 'Th??m d???u sao th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1113, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'B??? d???u sao th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1114, 1, 'vi', 'core/media/media', 'rename_error', 'C?? l???i trong qu?? tr??nh ?????i t??n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1115, 1, 'vi', 'core/media/media', 'rename_success', '?????i t??n th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1116, 1, 'vi', 'core/media/media', 'invalid_action', 'H??nh ?????ng kh??ng h???p l???!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1117, 1, 'vi', 'core/media/media', 'file_not_exists', 'T???p tin kh??ng t???n t???i!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1118, 1, 'vi', 'core/media/media', 'download_file_error', 'C?? l???i trong qu?? tr??nh t???i xu???ng t???p tin!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1119, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'H??y b???t ZipArchive extension ????? t???i t???p tin!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1120, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Kh??ng th??? t???i t???p tin!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1121, 1, 'vi', 'core/media/media', 'invalid_request', 'Y??u c???u kh??ng h???p l???!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1122, 1, 'vi', 'core/media/media', 'add_success', 'Th??m th??nh c??ng!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1123, 1, 'vi', 'core/media/media', 'file_too_big', 'T???p tin qu?? l???n. Gi???i h???n t???i l??n l?? :size bytes', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1124, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Lo???i t???p tin kh??ng h???p l??? ho???c kh??ng th??? x??c ?????nh lo???i t???p tin!', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1125, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1126, 1, 'vi', 'core/media/media', 'menu_name', 'Qu???n l?? t???p tin', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1127, 1, 'vi', 'core/media/media', 'add', 'Th??m t???p tin', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1128, 1, 'vi', 'core/media/media', 'javascript.name', 'T??n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1129, 1, 'vi', 'core/media/media', 'javascript.url', '???????ng d???n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1130, 1, 'vi', 'core/media/media', 'javascript.full_url', '???????ng d???n tuy???t ?????i', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1131, 1, 'vi', 'core/media/media', 'javascript.size', 'K??ch th?????c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1132, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Lo???i', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1133, 1, 'vi', 'core/media/media', 'javascript.created_at', '???????c t???i l??n l??c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1134, 1, 'vi', 'core/media/media', 'javascript.updated_at', '???????c ch???nh s???a l??c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1135, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'B???n ch??a ch???n t???p tin n??o', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1136, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'M??? li??n k???t', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1137, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1138, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'B???n c?? th??? k??o th??? t???p tin v??o ????y ????? t???i l??n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1139, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Ho???c c?? th??? b???m n??t T???i l??n ??? ph??a tr??n', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1140, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1141, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hi???n t???i kh??ng c?? t???p tin n??o trong th??ng r??c', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1142, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'X??a t???p tin s??? ??em t???p tin l??u v??o th??ng r??c. X??a t???p tin trong th??ng r??c s??? x??a v??nh vi???n.', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1143, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1144, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'B???n ch??a ?????t t???p tin n??o v??o m???c y??u th??ch', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1145, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Th??m t???p tin v??o m???c y??u th??ch ????? t??m ki???m ch??ng d??? d??ng sau n??y.', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1146, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1147, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'B???n ch??a m??? t???p tin n??o.', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1148, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'M???c n??y hi???n th??? c??c t???p tin b???n ???? xem g???n ????y.', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1149, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2022-05-13 03:50:58', '2022-05-13 03:50:58'),
(1150, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Th?? m???c tr???ng', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1151, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Th?? m???c n??y ch??a c?? t???p tin n??o', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1152, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', '???????ng d???n c???a c??c t???p tin ???? ???????c sao ch??p v??o clipboard', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1153, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'L???i', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1154, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Th??nh c??ng', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1155, 1, 'vi', 'core/media/media', 'javascript.download.error', 'B???n ch??a ch???n t???p tin n??o ho???c t???p tin n??y kh??ng cho ph??p t???i v???', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1156, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem tr?????c', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1157, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao ch??p ???????ng d???n', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1158, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', '?????i t??n', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1159, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nh??n b???n', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1160, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Y??u th??ch', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1161, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'X??a kh???i m???c y??u th??ch', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1162, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'T???i xu???ng', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1163, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuy???n v??o th??ng r??c', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1164, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'X??a ho??n to??n', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1165, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Kh??i ph???c', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1166, 1, 'vi', 'core/media/media', 'empty_trash_success', 'D???n s???ch th??ng r??c th??nh c??ng', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1167, 1, 'vi', 'core/media/media', 'name_invalid', 'T??n th?? m???c ch???a k?? t??? kh??ng h???p l???', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1168, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1169, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1170, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1171, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1172, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1173, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1174, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1175, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1176, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1177, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1178, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1179, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1180, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1181, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1182, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1183, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1184, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2022-05-13 03:50:59', '2022-05-13 03:50:59');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1185, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1186, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1187, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1188, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1189, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1190, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1191, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1192, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1193, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1194, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1195, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1196, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1197, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1198, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1199, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1200, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1201, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1202, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1203, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1204, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1205, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1206, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1207, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1208, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1209, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1210, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1211, 1, 'en', 'core/setting/setting', 'general.select', '??? Select ???', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1212, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1213, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1214, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1215, 1, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1216, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1217, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1218, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1219, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1220, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1221, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1222, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1223, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1224, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1225, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1226, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1227, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1228, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1229, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1230, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1231, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1232, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1233, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1234, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1235, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1236, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1237, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1238, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1239, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1240, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1241, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1242, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1243, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1244, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1245, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1246, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1247, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1248, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1249, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1250, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1251, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1252, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1253, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1254, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1255, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1256, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1257, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1258, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1259, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1260, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1261, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1262, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1263, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1264, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1265, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1266, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1267, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1268, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1269, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1270, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1271, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1272, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1273, 1, 'en', 'core/setting/setting', 'media.aws_endpoint', 'AWS Endpoint (Optional)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1274, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1275, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1276, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1277, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1278, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1279, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1280, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1281, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1282, 1, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1283, 1, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1284, 1, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1285, 1, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1286, 1, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1287, 1, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1288, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1289, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1290, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1291, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1292, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1293, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1294, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1295, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1296, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1297, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1298, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1299, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1300, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1301, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1302, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1303, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1304, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1305, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1306, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1307, 1, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1308, 1, 'en', 'core/setting/setting', 'media.bunnycdn_hostname', 'Hostname', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1309, 1, 'en', 'core/setting/setting', 'media.bunnycdn_zone', 'Zone Name (The name of your storage zone)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1310, 1, 'en', 'core/setting/setting', 'media.bunnycdn_key', 'FTP & API Access Password (The storage zone API Access Password)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1311, 1, 'en', 'core/setting/setting', 'media.bunnycdn_region', 'Region (The storage zone region)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1312, 1, 'en', 'core/setting/setting', 'media.optional', 'Optional', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1313, 1, 'en', 'core/setting/setting', 'media.sizes', 'Media thumbnails sizes', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1314, 1, 'en', 'core/setting/setting', 'media.media_sizes_helper', 'Set width or height to 0 if you just want to crop by width or height. Need to click on \"Generate thumbnails\" to apply changes.', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1315, 1, 'en', 'core/setting/setting', 'media.width', 'Width', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1316, 1, 'en', 'core/setting/setting', 'media.height', 'Height', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1317, 1, 'en', 'core/setting/setting', 'media.default_size_value', 'Default: :size', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1318, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1319, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1320, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1321, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1322, 1, 'en', 'core/setting/setting', 'template', 'Template', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1323, 1, 'en', 'core/setting/setting', 'description', 'Description', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1324, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1325, 1, 'en', 'core/setting/setting', 'send', 'Send', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1326, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1327, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1328, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1329, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1330, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1331, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1332, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1333, 1, 'en', 'core/setting/setting', 'saving', 'Saving...', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1334, 1, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1335, 1, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1336, 1, 'en', 'core/setting/setting', 'generate', 'Generate', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1337, 1, 'en', 'core/setting/setting', 'generate_thumbnails', 'Generate thumbnails', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1338, 1, 'en', 'core/setting/setting', 'generate_thumbnails_success', 'Generate thumbnails successfully. :count files are generated!', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1339, 1, 'en', 'core/setting/setting', 'generate_thumbnails_error', 'We are unable to regenerate thumbnail for these files :count files!', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1340, 1, 'en', 'core/setting/setting', 'generate_thumbnails_description', 'Are you sure you want to re-generate thumbnails for all images? It will take time so please DO NOT leave this page, wait until it is finished.', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1341, 1, 'en', 'core/setting/setting', 'enable_chunk_description', 'Chunk size upload is used to upload large file size.', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1342, 1, 'en', 'core/setting/setting', 'watermark_description', 'Watermark is just added to new uploaded images, it won\'t be added to existing images. Disable watermark won\'t remove watermark from existing images.', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1343, 1, 'vi', 'core/setting/setting', 'title', 'Ca??i ??????t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1344, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao di???n', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1345, 1, 'vi', 'core/setting/setting', 'general.description', 'C????u hi??nh nh????ng th??ng tin ca??i ??????t website.', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1346, 1, 'vi', 'core/setting/setting', 'general.title', 'Th??ng tin chung', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1347, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Th??ng tin chung', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1348, 1, 'vi', 'core/setting/setting', 'general.site_title', 'T??n trang', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1349, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email qua??n tri?? vi??n', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1350, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'C???u hi??nh SEO', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1351, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Ti??u ????? SEO', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1352, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'M?? t??? SEO', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1353, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1354, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1355, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'T??n trang (t????i ??a 120 ki?? t????)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1356, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1357, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'V?? d???: UA-42767940-2', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1358, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'M?? x??c nh???n trang web d??ng cho Google Webmaster Tool', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1359, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Ti??u ????? SEO (t????i ??a 120 ki?? t????)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1360, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'M?? t??? SEO (t????i ??a 120 ki?? t????)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1361, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho ph??p thay ?????i giao di???n qu???n tr????', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1362, 1, 'vi', 'core/setting/setting', 'general.enable', 'B???t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1363, 1, 'vi', 'core/setting/setting', 'general.disable', 'T???t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1364, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'B???t b??? nh??? ?????m?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1365, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Th???i gian l??u b??? nh??? ?????m (ph??t)', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1366, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Th???i gian l??u s?? ????? trang trong b??? nh??? ?????m', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1367, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang qu???n tr???', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1368, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Ti??u ????? trang qu???n tr???', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1369, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Ti??u ????? hi???n th??? tr??n th??? tr??nh duy???t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1370, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'B??? so???n th???o v??n b???n', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1371, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'B??? nh??? ?????m', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1372, 1, 'vi', 'core/setting/setting', 'general.yes', 'B???t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1373, 1, 'vi', 'core/setting/setting', 'general.no', 'T???t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1374, 1, 'vi', 'core/setting/setting', 'email.subject', 'Ti??u ?????', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1375, 1, 'vi', 'core/setting/setting', 'email.content', 'N???i dung', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1376, 1, 'vi', 'core/setting/setting', 'email.title', 'C???u h??nh email template', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1377, 1, 'vi', 'core/setting/setting', 'email.description', 'C???u tr??c file template s??? d???ng HTML v?? c??c bi???n trong h??? th???ng.', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1378, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Kh??i ph???c v??? m???c ?????nh', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1379, 1, 'vi', 'core/setting/setting', 'email.back', 'Tr??? l???i trang c??i ?????t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1380, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Kh??i ph???c m???c ?????nh th??nh c??ng', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1381, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'X??c nh???n kh??i ph???c m???c ?????nh?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1382, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'B???n c?? ch???c ch???n mu???n kh??i ph???c v??? b???n m???c ?????nh?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1383, 1, 'vi', 'core/setting/setting', 'email.continue', 'Ti???p t???c', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1384, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'T??n ng?????i g???i', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1385, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'T??n', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1386, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email c???a ng?????i g???i', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1387, 1, 'vi', 'core/setting/setting', 'email.port', 'C???ng', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1388, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'V?? d???: 587', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1389, 1, 'vi', 'core/setting/setting', 'email.host', 'M??y ch???', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1390, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'V?? d???: smtp.gmail.com', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1391, 1, 'vi', 'core/setting/setting', 'email.username', 'T??n ????ng nh???p', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1392, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'T??n ????ng nh???p v??o m??y ch??? mail', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1393, 1, 'vi', 'core/setting/setting', 'email.password', 'M???t kh???u', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1394, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'M???t kh???u ????ng nh???p v??o m??y ch??? mail', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1395, 1, 'vi', 'core/setting/setting', 'email.encryption', 'M?? ho??', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1396, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'T??n mi???n', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1397, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'T??n mi???n', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1398, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chu???i b?? m???t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1399, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chu???i b?? m???t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1400, 1, 'vi', 'core/setting/setting', 'email.template_title', 'M???u giao di???n email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1401, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao di???n m???c ?????nh cho t???t c??? email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1402, 1, 'vi', 'core/setting/setting', 'email.template_header', 'M???u cho ph???n tr??n c???a email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1403, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Ph???n tr??n c???a t???t c??? email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1404, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'M???u cho ph???n d?????i c???a email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1405, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Ph???n d?????i c???a t???t c??? email', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1406, 1, 'vi', 'core/setting/setting', 'save_settings', 'L??u c??i ?????t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1407, 1, 'vi', 'core/setting/setting', 'template', 'M???u', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1408, 1, 'vi', 'core/setting/setting', 'description', 'M?? t???', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1409, 1, 'vi', 'core/setting/setting', 'enable', 'B???t', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1410, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'G???i th??? nghi???m', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1411, 1, 'en', 'core/table/general', 'operations', 'Operations', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1412, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1413, 1, 'en', 'core/table/general', 'display', 'Display', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1414, 1, 'en', 'core/table/general', 'all', 'All', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1415, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1416, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1417, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1418, 1, 'en', 'core/table/general', 'to', 'to', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1419, 1, 'en', 'core/table/general', 'in', 'in', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1420, 1, 'en', 'core/table/general', 'records', 'records', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1421, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1422, 1, 'en', 'core/table/general', 'no_record', 'No record', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1423, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1424, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1425, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1426, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1427, 1, 'en', 'core/table/general', 'delete', 'Delete', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1428, 1, 'en', 'core/table/general', 'close', 'Close', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1429, 1, 'en', 'core/table/general', 'contains', 'Contains', '2022-05-13 03:50:59', '2022-05-13 03:50:59'),
(1430, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1431, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1432, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1433, 1, 'en', 'core/table/general', 'value', 'Value', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1434, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1435, 1, 'en', 'core/table/general', 'reset', 'Reset', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1436, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1437, 1, 'en', 'core/table/general', 'apply', 'Apply', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1438, 1, 'en', 'core/table/general', 'filters', 'Filters', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1439, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1440, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1441, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1442, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1443, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1444, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1445, 1, 'en', 'core/table/general', 'search', 'Search...', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1446, 1, 'en', 'core/table/table', 'operations', 'Operations', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1447, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1448, 1, 'en', 'core/table/table', 'display', 'Display', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1449, 1, 'en', 'core/table/table', 'all', 'All', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1450, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1451, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1452, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1453, 1, 'en', 'core/table/table', 'to', 'to', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1454, 1, 'en', 'core/table/table', 'in', 'in', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1455, 1, 'en', 'core/table/table', 'records', 'records', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1456, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1457, 1, 'en', 'core/table/table', 'no_record', 'No record', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1458, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1459, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1460, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1461, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1462, 1, 'en', 'core/table/table', 'delete', 'Delete', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1463, 1, 'en', 'core/table/table', 'close', 'Close', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1464, 1, 'en', 'core/table/table', 'contains', 'Contains', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1465, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1466, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1467, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1468, 1, 'en', 'core/table/table', 'value', 'Value', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1469, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1470, 1, 'en', 'core/table/table', 'reset', 'Reset', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1471, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1472, 1, 'en', 'core/table/table', 'apply', 'Apply', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1473, 1, 'en', 'core/table/table', 'filters', 'Filters', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1474, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1475, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1476, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1477, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1478, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1479, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1480, 1, 'en', 'core/table/table', 'search', 'Search...', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1481, 1, 'vi', 'core/table/general', 'operations', 'H??nh ?????ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1482, 1, 'vi', 'core/table/general', 'loading_data', '??ang t???i d??? li???u t??? h??? th???ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1483, 1, 'vi', 'core/table/general', 'display', 'Hi???n th???', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1484, 1, 'vi', 'core/table/general', 'all', 'T???t c???', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1485, 1, 'vi', 'core/table/general', 'edit_entry', 'S???a', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1486, 1, 'vi', 'core/table/general', 'delete_entry', 'Xo??', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1487, 1, 'vi', 'core/table/general', 'show_from', 'Hi???n th??? t???', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1488, 1, 'vi', 'core/table/general', 'to', '?????n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1489, 1, 'vi', 'core/table/general', 'in', 'trong t???ng s???', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1490, 1, 'vi', 'core/table/general', 'records', 'b???n ghi', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1491, 1, 'vi', 'core/table/general', 'no_data', 'Kh??ng c?? d??? li???u ????? hi???n th???', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1492, 1, 'vi', 'core/table/general', 'no_record', 'kh??ng c?? b???n ghi n??o', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1493, 1, 'vi', 'core/table/general', 'loading', '??ang t???i d??? li???u t??? h??? th???ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1494, 1, 'vi', 'core/table/general', 'confirm_delete', 'X??c nh???n xo??', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1495, 1, 'vi', 'core/table/general', 'confirm_delete_msg', 'B???n c?? ch???c ch???n mu???n xo?? b???n ghi n??y?', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1496, 1, 'vi', 'core/table/general', 'cancel', 'Hu??? b???', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1497, 1, 'vi', 'core/table/general', 'delete', 'Xo??', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1498, 1, 'vi', 'core/table/general', 'close', '????ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1499, 1, 'vi', 'core/table/general', 'is_equal_to', 'B???ng v???i', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1500, 1, 'vi', 'core/table/general', 'greater_than', 'L???n h??n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1501, 1, 'vi', 'core/table/general', 'less_than', 'Nh??? h??n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1502, 1, 'vi', 'core/table/general', 'value', 'Gi?? tr???', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1503, 1, 'vi', 'core/table/general', 'select_field', 'Ch???n tr?????ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1504, 1, 'vi', 'core/table/general', 'reset', 'L??m m???i', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1505, 1, 'vi', 'core/table/general', 'add_additional_filter', 'Th??m b??? l???c', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1506, 1, 'vi', 'core/table/general', 'apply', '??p d???ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1507, 1, 'vi', 'core/table/general', 'select_option', 'L???a ch???n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1508, 1, 'vi', 'core/table/general', 'filters', 'L???c d??? li???u', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1509, 1, 'vi', 'core/table/general', 'bulk_change', 'Thay ?????i h??ng lo???t', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1510, 1, 'vi', 'core/table/general', 'bulk_actions', 'H??nh ?????ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1511, 1, 'vi', 'core/table/general', 'contains', 'Bao g???m', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1512, 1, 'vi', 'core/table/general', 'filtered', '(???? ???????c l???c t??? _MAX_ b???n ghi)', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1513, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1514, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1515, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1516, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1517, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1518, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1519, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1520, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1521, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1522, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1523, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1524, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1525, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1526, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1527, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1528, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1529, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1530, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1531, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1532, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1533, 1, 'en', 'packages/menu/menu', 'title_placeholder', 'Title', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1534, 1, 'en', 'packages/menu/menu', 'icon_placeholder', 'Icon', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1535, 1, 'en', 'packages/menu/menu', 'url_placeholder', 'URL', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1536, 1, 'en', 'packages/menu/menu', 'css_class_placeholder', 'CSS class', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1537, 1, 'vi', 'packages/menu/menu', 'name', 'Menu', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1538, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hu??y bo??', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1539, 1, 'vi', 'packages/menu/menu', 'add_link', 'Th??m li??n k???t', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1540, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Th??m v??o tr??nh ????n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1541, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Th??ng tin c?? b???n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1542, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'M??? li??n k???t trong tab m???i', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1543, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1544, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Li??n k???t t??y ch???n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1545, 1, 'vi', 'packages/menu/menu', 'icon', 'Bi???u t?????ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1546, 1, 'vi', 'packages/menu/menu', 'key_name', 'T??n menu (key::key)', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1547, 1, 'vi', 'packages/menu/menu', 'remove', 'X??a', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1548, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'M??? li??n k???t trong tab hi???n t???i', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1549, 1, 'vi', 'packages/menu/menu', 'structure', 'C???u tr??c tr??nh ????n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1550, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1551, 1, 'vi', 'packages/menu/menu', 'title', 'Ti??u ?????', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1552, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1553, 1, 'vi', 'packages/menu/menu', 'create', 'T???o tr??nh ????n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1554, 1, 'vi', 'packages/menu/menu', 'edit', 'S???a tr??nh ????n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1555, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1556, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1557, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1558, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1559, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1560, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1561, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1562, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1563, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1564, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1565, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1566, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1567, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1568, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1569, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1570, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1571, 1, 'en', 'packages/page/pages', 'settings.select', '??? Select ???', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1572, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1573, 1, 'vi', 'packages/page/pages', 'create', 'Th??m trang', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1574, 1, 'vi', 'packages/page/pages', 'edit', 'S????a trang', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1575, 1, 'vi', 'packages/page/pages', 'form.name', 'Ti??u ????? trang', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1576, 1, 'vi', 'packages/page/pages', 'form.note', 'N????i dung ghi chu??', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1577, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'T??n trang (t???i ??a 120 k?? t???)', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1578, 1, 'vi', 'packages/page/pages', 'form.content', 'N???i dung', '2022-05-13 03:51:00', '2022-05-13 03:51:00');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1579, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Cho??n i??t nh????t 1 trang ?????? th????c hi????n ha??nh ??????ng na??y!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1580, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'C????p nh????t tha??nh c??ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1581, 1, 'vi', 'packages/page/pages', 'deleted', 'Xo??a trang tha??nh c??ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1582, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Kh??ng th???? xo??a trang', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1583, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1584, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1585, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'S???a trang n??y', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1586, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1587, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1588, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1589, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1590, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1591, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1592, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1593, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1594, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1595, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1596, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1597, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1598, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1599, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1600, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1601, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1602, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1603, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1604, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1605, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1606, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1607, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1608, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1609, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1610, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1611, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1612, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1613, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1614, 1, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1615, 1, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1616, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'K??ch ho???t', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1617, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'T??c gi???', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1618, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phi??n b???n', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1619, 1, 'vi', 'packages/plugin-management/plugin', 'activated', '???? k??ch ho???t', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1620, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'H???y k??ch ho???t', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1621, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', '???? v?? hi???u', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1622, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'K??ch ho???t', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1623, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'G??i m??? r???ng kh??ng h???p l???', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1624, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'C???p nh???t tr???ng th??i g??i m??? r???ng th??nh c??ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1625, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui l??ng k??ch ho???t c??c ti???n ??ch m??? r???ng :plugins tr?????c khi k??ch ho???t ti???n ??ch n??y', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1626, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Ti???n ??ch m??? r???ng', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1627, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1628, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1629, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1630, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1631, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1632, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'T???i ??u ho?? b??? m??y t??m ki???m (SEO)', '2022-05-13 03:51:00', '2022-05-13 03:51:00'),
(1633, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Ch???nh s???a SEO', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1634, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thi???t l???p c??c th??? m?? t??? gi??p ng?????i d??ng d??? d??ng t??m th???y tr??n c??ng c??? t??m ki???m nh?? Google.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1635, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Ti??u ????? trang', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1636, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'M?? t??? trang', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1637, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1638, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1639, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1640, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1641, 1, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1642, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1643, 1, 'en', 'packages/slug/slug', 'prefix_for', 'Prefix for :name', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1644, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1645, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1646, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1647, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1648, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1649, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1650, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1651, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1652, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1653, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1654, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1655, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1656, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1657, 1, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1658, 1, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1659, 1, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1660, 1, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1661, 1, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1662, 1, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1663, 1, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1664, 1, 'en', 'packages/theme/theme', 'custom_html', 'Custom HTML', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1665, 1, 'en', 'packages/theme/theme', 'custom_header_html', 'Header HTML', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1666, 1, 'en', 'packages/theme/theme', 'custom_header_html_placeholder', 'HTML in header of page, no special tags: script, style, iframe...', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1667, 1, 'en', 'packages/theme/theme', 'custom_body_html', 'Body HTML', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1668, 1, 'en', 'packages/theme/theme', 'custom_body_html_placeholder', 'HTML in body of page, no special tags: script, style, iframe...', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1669, 1, 'en', 'packages/theme/theme', 'custom_footer_html', 'Footer HTML', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1670, 1, 'en', 'packages/theme/theme', 'custom_footer_html_placeholder', 'HTML in footer of page, no special tags: script, style, iframe...', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1671, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1672, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1673, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1674, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1675, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1676, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1677, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1678, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1679, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1680, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1681, 1, 'en', 'packages/theme/theme', 'settings.redirect_404_to_homepage', 'Redirect all not found requests to homepage?', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1682, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1683, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1684, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1685, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1686, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1687, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1688, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1689, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1690, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1691, 1, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1692, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1693, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1694, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1695, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1696, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1697, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1698, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1699, 1, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1700, 1, 'vi', 'packages/theme/theme', 'activated', '???? k??ch ho???t', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1701, 1, 'vi', 'packages/theme/theme', 'active', 'K??ch ho???t', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1702, 1, 'vi', 'packages/theme/theme', 'active_success', 'K??ch ho???t giao di???n th??nh c??ng!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1703, 1, 'vi', 'packages/theme/theme', 'author', 'T??c gi???', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1704, 1, 'vi', 'packages/theme/theme', 'description', 'M?? t???', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1705, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao di???n', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1706, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tu??? ch???n giao di???n', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1707, 1, 'vi', 'packages/theme/theme', 'version', 'Phi??n b???n', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1708, 1, 'vi', 'packages/theme/theme', 'save_changes', 'L??u thay ?????i', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1709, 1, 'vi', 'packages/theme/theme', 'developer_mode', '??ang k??ch ho???t ch??? ????? th??? nghi???m', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1710, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tu??? ch???nh CSS', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1711, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1712, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1713, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1714, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1715, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1716, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1717, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1718, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1719, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1720, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1721, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1722, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1723, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1724, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1725, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1726, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1727, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1728, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1729, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1730, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1731, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1732, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1733, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1734, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1735, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1736, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1737, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1738, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1739, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1740, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1741, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1742, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1743, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1744, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1745, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1746, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1747, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1748, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1749, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1750, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1751, 1, 'vi', 'packages/widget/global', 'name', 'Widgets', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1752, 1, 'vi', 'packages/widget/global', 'create', 'New widget', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1753, 1, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1754, 1, 'vi', 'packages/widget/global', 'available', 'Ti???n ??ch c?? s???n', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1755, 1, 'vi', 'packages/widget/global', 'delete', 'X??a', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1756, 1, 'vi', 'packages/widget/global', 'instruction', '????? k??ch ho???t ti???n ??ch, h??y k??o n?? v??o sidebar ho???c nh???n v??o n??. ????? h???y k??ch ho???t ti???n ??ch v?? x??a c??c thi???t l???p c???a ti???n ??ch, k??o n?? quay tr??? l???i.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1757, 1, 'vi', 'packages/widget/global', 'number_post_display', 'S??? b??i vi???t s??? hi???n th???', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1758, 1, 'vi', 'packages/widget/global', 'number_tag_display', 'S??? th??? s??? hi???n th???', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1759, 1, 'vi', 'packages/widget/global', 'select_menu', 'L???a ch???n tr??nh ????n', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1760, 1, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu t??y ch???nh', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1761, 1, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Th??m menu t??y ch???nh v??o khu v???c ti???n ??ch c???a b???n', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1762, 1, 'vi', 'packages/widget/global', 'widget_recent_post', 'B??i vi???t g???n ????y', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1763, 1, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Ti???n ??ch b??i vi???t g???n ????y', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1764, 1, 'vi', 'packages/widget/global', 'widget_tag', 'Th???', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1765, 1, 'vi', 'packages/widget/global', 'widget_tag_description', 'Th??? ph??? bi???n, s??? d???ng nhi???u', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1766, 1, 'vi', 'packages/widget/global', 'widget_text', 'V??n b???n', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1767, 1, 'vi', 'packages/widget/global', 'widget_text_description', 'V??n b???n t??y ?? ho???c HTML.', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1768, 1, 'vi', 'packages/widget/global', 'delete_success', 'Xo?? ti???n ??ch th??nh c??ng', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1769, 1, 'vi', 'packages/widget/global', 'save_success', 'L??u ti???n ??ch th??nh c??ng!', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1770, 1, 'en', 'plugins/ads/ads', 'name', 'Ads', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1771, 1, 'en', 'plugins/ads/ads', 'create', 'New ads', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1772, 1, 'en', 'plugins/ads/ads', 'edit', 'Edit ads', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1773, 1, 'en', 'plugins/ads/ads', 'location', 'Location', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1774, 1, 'en', 'plugins/ads/ads', 'url', 'URL', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1775, 1, 'en', 'plugins/ads/ads', 'expired_at', 'Expired at', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1776, 1, 'en', 'plugins/ads/ads', 'key', 'Key', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1777, 1, 'en', 'plugins/ads/ads', 'shortcode', 'Shortcode', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1778, 1, 'en', 'plugins/ads/ads', 'clicked', 'Clicked', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1779, 1, 'en', 'plugins/ads/ads', 'not_set', 'Not set', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1780, 1, 'en', 'plugins/ads/ads', 'adblock_warning', 'If you are using Adblock browser extension, you need to disable this extension on your site first. It may block your ads if it is enabled on your site! <br /> Tips: Image name SHOULD NOT contain some ads keywords (ad, promotion...)', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1781, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1782, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1783, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1784, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1785, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1786, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1787, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1788, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1789, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1790, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1791, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1792, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1793, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1794, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1795, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1796, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1797, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1798, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1799, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1800, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1801, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1802, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1803, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1804, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1805, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1806, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1807, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung b??nh', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1808, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'T??? l??? tho??t', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1809, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phi??n', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1810, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'L?????t xem', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1811, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phi??n', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1812, 1, 'vi', 'plugins/analytics/analytics', 'views', 'l?????t xem', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1813, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Ng?????i truy c???p', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1814, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'l?????t gh?? th??m', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1815, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Th??ng tin c??i ?????t kh??ng h???p l???. T??i li???u h?????ng d???n t???i ????y: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1816, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'L?????t kh??ch m???i', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1817, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'T??? l??? kh??ch m???i', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1818, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ng??y b???t ?????u :start_date kh??ng th??? sau ng??y k???t th??c :end_date', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1819, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'B???n ph???i cung c???p View ID h???p l??. T??i li???u h?????ng d???n t???i ????y: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1820, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', '????? xem d??? li???u th???ng k?? Google Analytics, b???n c???n l???y th??ng tin Client ID v?? th??m n?? v??o trong ph???n c??i ?????t. B???n c??ng c???n th??ng tin x??c th???c d???ng JSON. T??i li???u h?????ng d???n t???i ????y: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1821, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1822, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1823, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1824, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1825, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1826, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1827, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1828, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1829, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Tr??nh duy???t truy c???p nhi???u', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1830, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Th???ng k?? truy c???p', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1831, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang ???????c xem nhi???u nh???t', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1832, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang gi???i thi???u nhi???u', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1833, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1834, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1835, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1836, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1837, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1838, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1839, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1840, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1841, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1842, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1843, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1844, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1845, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1846, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1847, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1848, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1849, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1850, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1851, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1852, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1853, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1854, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1855, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1856, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1857, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1858, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1859, 1, 'vi', 'plugins/audit-log/history', 'name', 'L???ch s??? ho???t ?????ng', '2022-05-13 03:51:01', '2022-05-13 03:51:01'),
(1860, 1, 'vi', 'plugins/audit-log/history', 'created', ' ???? t???o', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1861, 1, 'vi', 'plugins/audit-log/history', 'updated', ' ???? c???p nh???t', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1862, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' ???? x??a', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1863, 1, 'vi', 'plugins/audit-log/history', 'attached', '????nh k??m', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1864, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao l??u', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1865, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh m???c', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1866, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay ?????i m???t kh???u', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1867, 1, 'vi', 'plugins/audit-log/history', 'contact', 'li??n h???', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1868, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung m??? r???ng', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1869, 1, 'vi', 'plugins/audit-log/history', 'logged in', '????ng nh???p', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1870, 1, 'vi', 'plugins/audit-log/history', 'logged out', '????ng xu???t', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1871, 1, 'vi', 'plugins/audit-log/history', 'menu', 'tr??nh ????n', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1872, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'kh???i h??? th???ng', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1873, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1874, 1, 'vi', 'plugins/audit-log/history', 'post', 'b??i vi???t', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1875, 1, 'vi', 'plugins/audit-log/history', 'shared', '???? chia s???', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1876, 1, 'vi', 'plugins/audit-log/history', 'tag', 'th???', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1877, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'v??o h??? th???ng', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1878, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'c???p nh???t t??i kho???n', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1879, 1, 'vi', 'plugins/audit-log/history', 'user', 'th??nh vi??n', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1880, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'L???ch s??? ho???t ?????ng', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1881, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1882, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1883, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1884, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1885, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1886, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1887, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1888, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1889, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1890, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1891, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1892, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1893, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1894, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1895, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1896, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1897, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1898, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1899, 1, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1900, 1, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1901, 1, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1902, 1, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1903, 1, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1904, 1, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1905, 1, 'en', 'plugins/backup/backup', 'important_message4', 'It is not a full backup, it is just back up uploaded files and your database.', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1906, 1, 'en', 'plugins/backup/backup', 'cannot_restore_database', 'Cannot restore database. The database backup is missing!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1907, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao l??u c?? s??? d??? li???u v?? th?? m???c /uploads', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1908, 1, 'vi', 'plugins/backup/backup', 'create', 'T???o b???n sao l??u', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1909, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'T???o b???n sao l??u th??nh c??ng!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1910, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'T???o', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1911, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'X??a b???n sao l??u th??nh c??ng!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1912, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'T???o sao l??u', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1913, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao l??u', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1914, 1, 'vi', 'plugins/backup/backup', 'restore', 'Kh??i ph???c b???n sao l??u', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1915, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Kh??i ph???c b???n sao l??u th??nh c??ng', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1916, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Kh??i ph???c', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1917, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'B???n c?? ch???c ch???n mu???n kh??i ph???c h??? th???ng v??? th???i ??i???m t???o b???n sao l??u n??y?', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1918, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Kh??i ph???c b???n sao l??u n??y', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1919, 1, 'vi', 'plugins/backup/backup', 'download_database', 'T???i v??? b???n sao l??u CSDL', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1920, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'T???i v??? b???n sao l??u th?? m???c uploads', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1921, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao l??u', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1922, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Ch??o kh??ch, n???u b???n th???y trang demo b??? ph?? ho???i, h??y t???i <a href=\":link\">trang sao l??u</a> v?? kh??i ph???c b???n sao l??u cu???i c??ng. C???m ??n b???n nhi???u!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1923, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1924, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1925, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1926, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1927, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1928, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1929, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1930, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1931, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1932, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1933, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1934, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1935, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1936, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1937, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1938, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1939, 1, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1940, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1941, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2022-05-13 03:51:02', '2022-05-13 03:51:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1942, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1943, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1944, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1945, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1946, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1947, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1948, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1949, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1950, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1951, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1952, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1953, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1954, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1955, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1956, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1957, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1958, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1959, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1960, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1961, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1962, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1963, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1964, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1965, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1966, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1967, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1968, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1969, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1970, 1, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1971, 1, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1972, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1973, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1974, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1975, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1976, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1977, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1978, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1979, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1980, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1981, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1982, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1983, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1984, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1985, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1986, 1, 'vi', 'plugins/blog/categories', 'create', 'Th??m danh mu??c m????i', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1987, 1, 'vi', 'plugins/blog/categories', 'edit', 'S????a danh mu??c', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1988, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh m???c', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1989, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'S???a danh m???c n??y', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1990, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh m???c', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1991, 1, 'vi', 'plugins/blog/posts', 'create', 'Th??m ba??i vi???t', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1992, 1, 'vi', 'plugins/blog/posts', 'edit', 'S????a ba??i vi???t', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1993, 1, 'vi', 'plugins/blog/posts', 'form.name', 'T??n', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1994, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'T??n b??i vi???t (T???i ??a 120 k?? t???)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1995, 1, 'vi', 'plugins/blog/posts', 'form.description', 'M?? t???', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1996, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'M?? t??? ng???n cho b??i vi???t (T???i ??a 400 k?? t???)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1997, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuy??n m???c', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1998, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'T??? kh??a', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(1999, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Th??m t??? kh??a', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2000, 1, 'vi', 'plugins/blog/posts', 'form.content', 'N???i dung', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2001, 1, 'vi', 'plugins/blog/posts', 'form.note', 'N????i dung ghi chu??', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2002, 1, 'vi', 'plugins/blog/posts', 'form.format_type', '?????nh d???ng', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2003, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xo??a ba??i vi????t tha??nh c??ng', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2004, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Kh??ng th???? xo??a ba??i vi????t', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2005, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'B??i vi???t', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2006, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'S???a b??i vi???t n??y', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2007, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hi???n t???i kh??ng c?? b??i vi???t m???i!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2008, 1, 'vi', 'plugins/blog/posts', 'posts', 'B??i vi???t', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2009, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'B??i vi???t g???n ????y', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2010, 1, 'vi', 'plugins/blog/posts', 'author', 'T??c gi???', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2011, 1, 'vi', 'plugins/blog/tags', 'create', 'Th??m th??? m????i', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2012, 1, 'vi', 'plugins/blog/tags', 'edit', 'S????a th???', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2013, 1, 'vi', 'plugins/blog/tags', 'form.name', 'T??n', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2014, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'T??n th??? (T???i ??a 120 k?? t???)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2015, 1, 'vi', 'plugins/blog/tags', 'form.description', 'M?? t???', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2016, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'M?? t??? ng???n cho tag (T???i ??a 400 k?? t???)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2017, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuy??n m???c', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2018, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Cho??n i??t nh????t 1 ba??i vi????t ?????? th????c hi????n ha??nh ??????ng na??y!', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2019, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Kh??ng th???? xo??a th???', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2020, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xo??a th??? tha??nh c??ng', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2021, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Th???', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2022, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'S???a th??? n??y', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2023, 1, 'vi', 'plugins/blog/tags', 'menu', 'Th???', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2024, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2025, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2026, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2027, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2028, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2029, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2030, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2031, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2032, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2033, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2034, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2035, 1, 'en', 'plugins/captcha/captcha', 'numbers.0', 'Zero', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2036, 1, 'en', 'plugins/captcha/captcha', 'numbers.1', 'One', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2037, 1, 'en', 'plugins/captcha/captcha', 'numbers.2', 'Two', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2038, 1, 'en', 'plugins/captcha/captcha', 'numbers.3', 'Three', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2039, 1, 'en', 'plugins/captcha/captcha', 'numbers.4', 'Four', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2040, 1, 'en', 'plugins/captcha/captcha', 'numbers.5', 'Five', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2041, 1, 'en', 'plugins/captcha/captcha', 'numbers.6', 'Six', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2042, 1, 'en', 'plugins/captcha/captcha', 'numbers.7', 'Seven', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2043, 1, 'en', 'plugins/captcha/captcha', 'numbers.8', 'Eight', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2044, 1, 'en', 'plugins/captcha/captcha', 'numbers.9', 'Nine', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2045, 1, 'en', 'plugins/captcha/captcha', 'numbers.10', 'Ten', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2046, 1, 'en', 'plugins/captcha/captcha', 'numbers.11', 'Eleven', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2047, 1, 'en', 'plugins/captcha/captcha', 'numbers.12', 'Twelve', '2022-05-13 03:51:02', '2022-05-13 03:51:02'),
(2048, 1, 'en', 'plugins/captcha/captcha', 'operands.+', 'plus', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2049, 1, 'en', 'plugins/captcha/captcha', 'operands.-', 'minus', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2050, 1, 'en', 'plugins/captcha/captcha', 'operands.*', 'times', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2051, 1, 'en', 'plugins/captcha/captcha', 'operands./', 'divided by', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2052, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2053, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2054, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2055, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2056, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2057, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2058, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2059, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2060, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2061, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2062, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2063, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2064, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2065, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2066, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2067, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2068, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2069, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2070, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2071, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2072, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2073, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2074, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2075, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2076, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2077, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2078, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2079, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2080, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2081, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2082, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2083, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2084, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2085, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2086, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2087, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2088, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2089, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2090, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2091, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2092, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2093, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2094, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2095, 1, 'en', 'plugins/contact/contact', 'settings.title', 'Contact', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2096, 1, 'en', 'plugins/contact/contact', 'settings.description', 'Settings for contact plugin', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2097, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords', 'Blacklist keywords', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2098, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords_placeholder', 'keywords...', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2099, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords_helper', 'Blacklist contact requests if it includes those keywords in the content field (separate by comma).', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2100, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains', 'Blacklist email domains', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2101, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains_placeholder', 'domain...', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2102, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains_helper', 'Blacklist contact requests if the email domain is in blacklist domains (separate by comma).', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2103, 1, 'en', 'plugins/contact/contact', 'settings.enable_math_captcha', 'Enable math captcha?', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2104, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2105, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2106, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2107, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2108, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2109, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2110, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2111, 1, 'vi', 'plugins/contact/contact', 'menu', 'Li??n h????', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2112, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem li??n h????', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2113, 1, 'vi', 'plugins/contact/contact', 'tables.phone', '??i????n thoa??i', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2114, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2115, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Ho?? t??n', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2116, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Th???i gian', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2117, 1, 'vi', 'plugins/contact/contact', 'tables.address', '??i??a ?????a ch???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2118, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Ti??u ?????', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2119, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'N????i dung', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2120, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Th??ng tin li??n h????', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2121, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Th??ng tin li??n h???? m????i', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2122, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2123, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Li??n h??? n??y ???????c g???i t???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2124, 1, 'vi', 'plugins/contact/contact', 'form_address', '?????a ch???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2125, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Th?? ??i???n t???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2126, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Th??ng ??i???p', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2127, 1, 'vi', 'plugins/contact/contact', 'form_name', 'H??? t??n', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2128, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'S??? ??i???n tho???i', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2129, 1, 'vi', 'plugins/contact/contact', 'message_content', 'N???i dung th??ng ??i???p', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2130, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Nh???ng tr?????ng c?? d???u (<span style=\"color: red\">*</span>) l?? b???t bu???c.', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2131, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'G???i tin nh???n', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2132, 1, 'vi', 'plugins/contact/contact', 'sender', 'Ng?????i g???i', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2133, 1, 'vi', 'plugins/contact/contact', 'sender_address', '?????a ch???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2134, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Th?? ??i???n t???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2135, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'S??? ??i???n tho???i', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2136, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Th?? ???????c g???i t???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2137, 1, 'vi', 'plugins/contact/contact', 'address', '?????a ch???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2138, 1, 'vi', 'plugins/contact/contact', 'message', 'Li??n h???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2139, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'B???n c?? <span class=\"bold\">:count</span> tin nh???n m???i', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2140, 1, 'vi', 'plugins/contact/contact', 'phone', '??i???n tho???i', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2141, 1, 'vi', 'plugins/contact/contact', 'statuses.read', '???? ?????c', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2142, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Ch??a ?????c', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2143, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem t???t c???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2144, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Li??n h???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2145, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'C???u h??nh th??ng tin cho m???c li??n h???', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2146, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Th??ng b??o t???i admin', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2147, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'M???u n???i dung email g???i t???i admin khi c?? li??n h??? m???i', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2148, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2149, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2150, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2151, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2152, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2153, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2154, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2155, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2156, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2157, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2158, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.style', 'Style', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2159, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.full_width', 'Full width', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2160, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.minimal', 'Minimal', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2161, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2162, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2163, 1, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2164, 1, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2165, 1, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2166, 1, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2167, 1, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2168, 1, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2169, 1, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2170, 1, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2171, 1, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2172, 1, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2173, 1, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2174, 1, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2175, 1, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2176, 1, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2177, 1, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2178, 1, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2179, 1, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2180, 1, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2181, 1, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2182, 1, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2183, 1, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2184, 1, 'en', 'plugins/ecommerce/bulk-import', 'name', 'Bulk Import', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2185, 1, 'en', 'plugins/ecommerce/bulk-import', 'loading_text', 'Importing', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2186, 1, 'en', 'plugins/ecommerce/bulk-import', 'imported_successfully', 'Imported successfully.', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2187, 1, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file_mime', 'Please choose the file mime :types', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2188, 1, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file', 'Please choose the file', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2189, 1, 'en', 'plugins/ecommerce/bulk-import', 'start_import', 'Start Import', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2190, 1, 'en', 'plugins/ecommerce/bulk-import', 'note', 'Note!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2191, 1, 'en', 'plugins/ecommerce/bulk-import', 'warning_before_importing', 'If this is your first time using this feature, please read the documentation or contact the Administrator for access to the correct functionality!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2192, 1, 'en', 'plugins/ecommerce/bulk-import', 'results', 'Result: :success successes, :failed failures', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2193, 1, 'en', 'plugins/ecommerce/bulk-import', 'failures', 'Failures', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2194, 1, 'en', 'plugins/ecommerce/bulk-import', 'tables.import', 'Import', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2195, 1, 'en', 'plugins/ecommerce/bulk-import', 'template', 'Template', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2196, 1, 'en', 'plugins/ecommerce/bulk-import', 'rules', 'Rules', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2197, 1, 'en', 'plugins/ecommerce/bulk-import', 'choose_file_with_mime', 'Choose file with mime: (:types)', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2198, 1, 'en', 'plugins/ecommerce/bulk-import', 'choose_file', 'Choose file', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2199, 1, 'en', 'plugins/ecommerce/bulk-import', 'menu', 'Import products', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2200, 1, 'en', 'plugins/ecommerce/bulk-import', 'download-csv-file', 'Download CSV template', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2201, 1, 'en', 'plugins/ecommerce/bulk-import', 'download-excel-file', 'Download Excel template', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2202, 1, 'en', 'plugins/ecommerce/bulk-import', 'downloading', 'Downloading...', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2203, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.input_error', 'Input error', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2204, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.number_not_allowed', 'Number is not allowed!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2205, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.allowed_input', 'Allowed input', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2206, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_decimal', 'Only numbers or decimals are accepted and greater than or equal to :min.', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2207, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_whole_number', 'Only numbers are accepted and greater than or equal to :min.', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2208, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_list', 'Please pick a value from the drop-down list.', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2209, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.pick_from_list', 'Pick from list', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2210, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.value_not_in_list', 'Value is not in list.', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2211, 1, 'en', 'plugins/ecommerce/bulk-import', 'import_failed_description', 'Import failed, please check the errors below!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2212, 1, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2213, 1, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2214, 1, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2215, 1, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2216, 1, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2217, 1, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2218, 1, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2219, 1, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2220, 1, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2221, 1, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2222, 1, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2223, 1, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2224, 1, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2225, 1, 'en', 'plugins/ecommerce/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2226, 1, 'en', 'plugins/ecommerce/currency', 'enable_auto_detect_visitor_currency', 'Enable auto-detect visitor currency?', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2227, 1, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2228, 1, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2229, 1, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2230, 1, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2231, 1, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2232, 1, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2233, 1, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2234, 1, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2235, 1, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2236, 1, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2237, 1, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2238, 1, 'en', 'plugins/ecommerce/customer', 'phone', 'Phone', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2239, 1, 'en', 'plugins/ecommerce/customer', 'phone_placeholder', 'Phone', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2240, 1, 'en', 'plugins/ecommerce/customer', 'avatar', 'Avatar', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2241, 1, 'en', 'plugins/ecommerce/customer', 'dob', 'Date of birth', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2242, 1, 'en', 'plugins/ecommerce/customer', 'statuses.activated', 'Activated', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2243, 1, 'en', 'plugins/ecommerce/customer', 'statuses.locked', 'Locked', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2244, 1, 'en', 'plugins/ecommerce/customer', 'email_verified', 'Email verified?', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2245, 1, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2246, 1, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2247, 1, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2248, 1, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2249, 1, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2250, 1, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2251, 1, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2252, 1, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2253, 1, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2254, 1, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2255, 1, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2256, 1, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2257, 1, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2258, 1, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2259, 1, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2260, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2261, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2262, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2263, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2264, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.amount', 'Amount - Fixed', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2265, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.percentage', 'Discount %', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2266, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.shipping', 'Free shipping', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2267, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.same-price', 'Same price', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2268, 1, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2269, 1, 'en', 'plugins/ecommerce/discount', 'create_coupon_code', 'Create coupon code', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2270, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_promotion', 'Create discount promotion', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2271, 1, 'en', 'plugins/ecommerce/discount', 'generate_coupon_code', 'Generate coupon code', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2272, 1, 'en', 'plugins/ecommerce/discount', 'customers_will_enter_this_coupon_code_when_they_checkout', 'Customers will enter this coupon code when they checkout', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2273, 1, 'en', 'plugins/ecommerce/discount', 'select_type_of_discount', 'Select type of discount', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2274, 1, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2275, 1, 'en', 'plugins/ecommerce/discount', 'promotion', 'Promotion', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2276, 1, 'en', 'plugins/ecommerce/discount', 'can_be_used_with_promotion', 'Can be used with promotion', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2277, 1, 'en', 'plugins/ecommerce/discount', 'unlimited_coupon', 'Unlimited coupon', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2278, 1, 'en', 'plugins/ecommerce/discount', 'enter_number', 'Enter number', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2279, 1, 'en', 'plugins/ecommerce/discount', 'coupon_type', 'Coupon type', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2280, 1, 'en', 'plugins/ecommerce/discount', 'percentage_discount', 'Percentage discount (%)', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2281, 1, 'en', 'plugins/ecommerce/discount', 'free_shipping', 'Free shipping', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2282, 1, 'en', 'plugins/ecommerce/discount', 'same_price', 'Same price', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2283, 1, 'en', 'plugins/ecommerce/discount', 'apply_for', 'apply for', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2284, 1, 'en', 'plugins/ecommerce/discount', 'all_orders', 'All orders', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2285, 1, 'en', 'plugins/ecommerce/discount', 'order_amount_from', 'Order amount from', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2286, 1, 'en', 'plugins/ecommerce/discount', 'product_collection', 'Product collection', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2287, 1, 'en', 'plugins/ecommerce/discount', 'product', 'Product', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2288, 1, 'en', 'plugins/ecommerce/discount', 'customer', 'Customer', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2289, 1, 'en', 'plugins/ecommerce/discount', 'variant', 'Variant', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2290, 1, 'en', 'plugins/ecommerce/discount', 'search_product', 'Search product', '2022-05-13 03:51:03', '2022-05-13 03:51:03'),
(2291, 1, 'en', 'plugins/ecommerce/discount', 'no_products_found', 'No products found!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2292, 1, 'en', 'plugins/ecommerce/discount', 'search_customer', 'Search customer', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2293, 1, 'en', 'plugins/ecommerce/discount', 'no_customer_found', 'No customer found!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2294, 1, 'en', 'plugins/ecommerce/discount', 'one_time_per_order', 'One time per order', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2295, 1, 'en', 'plugins/ecommerce/discount', 'one_time_per_product_in_cart', 'One time per product in cart', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2296, 1, 'en', 'plugins/ecommerce/discount', 'number_of_products', 'Number of products required to apply', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2297, 1, 'en', 'plugins/ecommerce/discount', 'selected_products', 'Selected products', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2298, 1, 'en', 'plugins/ecommerce/discount', 'selected_customers', 'Selected customers', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2299, 1, 'en', 'plugins/ecommerce/discount', 'time', 'Time', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2300, 1, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2301, 1, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2302, 1, 'en', 'plugins/ecommerce/discount', 'never_expired', 'Never expired', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2303, 1, 'en', 'plugins/ecommerce/discount', 'save', 'Save', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2304, 1, 'en', 'plugins/ecommerce/discount', 'enter_promotion_name', 'Enter promotion name', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2305, 1, 'en', 'plugins/ecommerce/discount', 'enter_coupon_name', 'Enter coupon name', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2306, 1, 'en', 'plugins/ecommerce/discount', 'cancel', 'Cancel', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2307, 1, 'en', 'plugins/ecommerce/discount', 'is', 'Is', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2308, 1, 'en', 'plugins/ecommerce/discount', 'when_shipping_fee_less_than', 'when shipping fee less than', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2309, 1, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2310, 1, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2311, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2312, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2313, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2314, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2315, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2316, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2317, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2318, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2319, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2320, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2321, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2322, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2323, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2324, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2325, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2022-05-13 03:51:04', '2022-05-13 03:51:04');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2326, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2327, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_lb', 'Pound (lb)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2328, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_oz', 'Ounce (oz)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2329, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2330, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2331, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_inch', 'Inch', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2332, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2333, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2334, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2335, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2336, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2337, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2338, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2339, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2340, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2341, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2342, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2343, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2344, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2345, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2346, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2347, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2348, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2349, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2350, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2351, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2352, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2353, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2354, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2355, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2356, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2357, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country...', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2358, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2359, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2360, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2361, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2362, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2363, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2364, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2365, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2366, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.verify_customer_email', 'Verify customer\'s email?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2367, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.minimum_order_amount', 'Minimum order amount to place an order (:currency).', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2368, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_guest_checkout', 'Enable guest checkout?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2369, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.show_number_of_products', 'Show number of products in the product single', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2370, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.payment_method_cod_minimum_amount', 'Minimum order amount - :currency (Optional)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2371, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.review.max_file_size', 'Review max file size (MB)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2372, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.review.max_file_number', 'Review max file number', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2373, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.using_custom_font_for_invoice', 'Using custom font for invoice?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2374, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.invoice_font_family', 'Invoice font family (Only work for Latin language)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2375, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_invoice_stamp', 'Enable invoice stamp?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2376, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.make_phone_field_at_the_checkout_optional', 'Make phone field at the checkout optional?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2377, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.disable_order_invoice_until_order_confirmed', 'Disable order invoice until order confirmed?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2378, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.vat_number', 'VAT number', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2379, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_recaptcha_in_register_page', 'Enable Recaptcha in the registration page?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2380, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_recaptcha_in_register_page_description', 'Need to setup Captcha in Admin -> Settings -> General first.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2381, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.show_out_of_stock_products', 'Show out of stock products?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2382, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.default_tax_rate', 'Default tax rate', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2383, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.default_tax_rate_description', 'Important: it will be applied if no tax selected in product.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2384, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.how_to_display_product_variation_images', 'How to display product variation images?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2385, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.only_variation_images', 'Only variation images', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2386, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.variation_images_and_main_product_images', 'Variation images + main product images', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2387, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.load_countries_states_cities_from_location_plugin', 'Load countries, states, cities from plugin location?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2388, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_wishlist', 'Enable wishlist?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2389, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_compare', 'Enable compare?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2390, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_order_tracking', 'Enable order tracking?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2391, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.recently_viewed.enable', 'Enable customer recently viewed products?', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2392, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.recently_viewed.max', 'Maximum number of customer recently viewed products', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2393, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.recently_viewed.max_helper', 'If you set 0, it will save all products.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2394, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2395, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2396, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2397, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2398, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2399, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2400, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2401, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2402, 1, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2403, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2404, 1, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2405, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2406, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2407, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2408, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2409, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2410, 1, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2411, 1, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2412, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2413, 1, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2414, 1, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2415, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2416, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2417, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2418, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_of_cross_sale_product', 'Number of cross sale products in product detail page', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2419, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2420, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_the_checkout_page', 'Logo in the checkout page (Default is the main logo)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2421, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_invoices', 'Logo in invoices (Default is the main logo)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2422, 1, 'en', 'plugins/ecommerce/ecommerce', 'basic_settings', 'Basic settings', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2423, 1, 'en', 'plugins/ecommerce/ecommerce', 'advanced_settings', 'Advanced settings', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2424, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2425, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2426, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2427, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2428, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2429, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2430, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2431, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2432, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2433, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2434, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2435, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2436, 1, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2437, 1, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2438, 1, 'en', 'plugins/ecommerce/email', 'view_order', 'View order', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2439, 1, 'en', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'or <a href=\":link\">Go to our shop</a>', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2440, 1, 'en', 'plugins/ecommerce/email', 'order_number', 'Order number: <strong>:order_id</strong>', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2441, 1, 'en', 'plugins/ecommerce/email', 'order_information', 'Order information:', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2442, 1, 'en', 'plugins/ecommerce/export', 'products.name', 'Export products', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2443, 1, 'en', 'plugins/ecommerce/export', 'products.title', 'Export Products (CSV)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2444, 1, 'en', 'plugins/ecommerce/export', 'products.total_products', 'Total products', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2445, 1, 'en', 'plugins/ecommerce/export', 'products.total_variations', 'Total variations', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2446, 1, 'en', 'plugins/ecommerce/export', 'start_export', 'Start export', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2447, 1, 'en', 'plugins/ecommerce/export', 'exporting', 'Exporting...', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2448, 1, 'en', 'plugins/ecommerce/export', 'export', 'Export', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2449, 1, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2450, 1, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2451, 1, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2452, 1, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2453, 1, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2454, 1, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2455, 1, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2456, 1, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2457, 1, 'en', 'plugins/ecommerce/order', 'menu', 'Orders', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2458, 1, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2459, 1, 'en', 'plugins/ecommerce/order', 'cancel_error', 'The order is delivering or completed', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2460, 1, 'en', 'plugins/ecommerce/order', 'cancel_success', 'You do cancel the order successful', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2461, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2462, 1, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2463, 1, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2464, 1, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2465, 1, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2466, 1, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2467, 1, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2468, 1, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2469, 1, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2470, 1, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2471, 1, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2472, 1, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2473, 1, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2474, 1, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2475, 1, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2476, 1, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2477, 1, 'en', 'plugins/ecommerce/order', 'return', 'Return', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2478, 1, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2479, 1, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2480, 1, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2481, 1, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2482, 1, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2483, 1, 'en', 'plugins/ecommerce/order', 'system', 'System', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2484, 1, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2485, 1, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2486, 1, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2487, 1, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2488, 1, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2489, 1, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2490, 1, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2491, 1, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2492, 1, 'en', 'plugins/ecommerce/order', 'address_country_required', 'The country field is required.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2493, 1, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2494, 1, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2495, 1, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2496, 1, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2497, 1, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2498, 1, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2499, 1, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2500, 1, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2501, 1, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2502, 1, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2503, 1, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2504, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2505, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2506, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2507, 1, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2508, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2509, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2510, 1, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2511, 1, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2512, 1, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2513, 1, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2514, 1, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2515, 1, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2516, 1, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2517, 1, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2518, 1, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2519, 1, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2520, 1, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2521, 1, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2522, 1, 'en', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2523, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2524, 1, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2525, 1, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2526, 1, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2527, 1, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2528, 1, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2529, 1, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2530, 1, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2531, 1, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2532, 1, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2533, 1, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2534, 1, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2535, 1, 'en', 'plugins/ecommerce/order', 'print_invoice', 'Print invoice', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2536, 1, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2022-05-13 03:51:04', '2022-05-13 03:51:04'),
(2537, 1, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2538, 1, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2539, 1, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2540, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2541, 1, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2542, 1, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2543, 1, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2544, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2545, 1, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2546, 1, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2547, 1, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2548, 1, 'en', 'plugins/ecommerce/order', 'history', 'History', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2549, 1, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2550, 1, 'en', 'plugins/ecommerce/order', 'from', 'from', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2551, 1, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2552, 1, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2553, 1, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2554, 1, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2555, 1, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2556, 1, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2557, 1, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2558, 1, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2559, 1, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2560, 1, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2561, 1, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2562, 1, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2563, 1, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2564, 1, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2565, 1, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2566, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2567, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2568, 1, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2569, 1, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2570, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2571, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2572, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2573, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2574, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2575, 1, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2576, 1, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2577, 1, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2578, 1, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2579, 1, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2580, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2581, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2582, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2583, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2584, 1, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2585, 1, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2586, 1, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2587, 1, 'en', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'The email could not be found so it can\'t send a recovery email to the customer.', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2588, 1, 'en', 'plugins/ecommerce/order', 'payment_info', 'Payment Info', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2589, 1, 'en', 'plugins/ecommerce/order', 'payment_method_refund_automatic', 'Your customer will be refunded using :method automatically.', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2590, 1, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2591, 1, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2592, 1, 'en', 'plugins/ecommerce/order', 'create_a_new_product', 'Create a new product', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2593, 1, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2594, 1, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2595, 1, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2596, 1, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2597, 1, 'en', 'plugins/ecommerce/order', 'note_for_order', 'Note for order...', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2598, 1, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2599, 1, 'en', 'plugins/ecommerce/order', 'add_discount', 'Add discount', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2600, 1, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2601, 1, 'en', 'plugins/ecommerce/order', 'add_shipping_fee', 'Add shipping fee', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2602, 1, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2603, 1, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2604, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_and_create_order', 'Confirm payment and create order', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2605, 1, 'en', 'plugins/ecommerce/order', 'paid', 'Paid', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2606, 1, 'en', 'plugins/ecommerce/order', 'pay_later', 'Pay later', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2607, 1, 'en', 'plugins/ecommerce/order', 'customer_information', 'Customer information', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2608, 1, 'en', 'plugins/ecommerce/order', 'create_new_customer', 'Create new customer', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2609, 1, 'en', 'plugins/ecommerce/order', 'no_customer_found', 'No customer found!', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2610, 1, 'en', 'plugins/ecommerce/order', 'customer', 'Customer', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2611, 1, 'en', 'plugins/ecommerce/order', 'orders', 'order(s)', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2612, 1, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping Address', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2613, 1, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2614, 1, 'en', 'plugins/ecommerce/order', 'name', 'Name', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2615, 1, 'en', 'plugins/ecommerce/order', 'price', 'Price', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2616, 1, 'en', 'plugins/ecommerce/order', 'sku_optional', 'SKU (optional)', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2617, 1, 'en', 'plugins/ecommerce/order', 'with_storehouse_management', 'With storehouse management?', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2618, 1, 'en', 'plugins/ecommerce/order', 'quantity', 'Quantity', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2619, 1, 'en', 'plugins/ecommerce/order', 'allow_customer_checkout_when_this_product_out_of_stock', 'Allow customer checkout when this product out of stock?', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2620, 1, 'en', 'plugins/ecommerce/order', 'address', 'Address', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2621, 1, 'en', 'plugins/ecommerce/order', 'phone', 'Phone', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2622, 1, 'en', 'plugins/ecommerce/order', 'country', 'Country', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2623, 1, 'en', 'plugins/ecommerce/order', 'state', 'State', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2624, 1, 'en', 'plugins/ecommerce/order', 'city', 'City', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2625, 1, 'en', 'plugins/ecommerce/order', 'zip_code', 'Zip code', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2626, 1, 'en', 'plugins/ecommerce/order', 'discount_based_on', 'Discount based on', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2627, 1, 'en', 'plugins/ecommerce/order', 'or_coupon_code', 'Or coupon code', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2628, 1, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2629, 1, 'en', 'plugins/ecommerce/order', 'how_to_select_configured_shipping', 'How to select configured shipping?', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2630, 1, 'en', 'plugins/ecommerce/order', 'please_add_customer_information_with_the_complete_shipping_address_to_see_the_configured_shipping_rates', 'Please add customer information with the complete shipping address to see the configured shipping rates', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2631, 1, 'en', 'plugins/ecommerce/order', 'free_shipping', 'Free shipping', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2632, 1, 'en', 'plugins/ecommerce/order', 'custom', 'Custom', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2633, 1, 'en', 'plugins/ecommerce/order', 'email', 'Email', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2634, 1, 'en', 'plugins/ecommerce/order', 'create_order', 'Create order', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2635, 1, 'en', 'plugins/ecommerce/order', 'close', 'Close', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2636, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_is_paid_for_this_order', 'Confirm payment is paid for this order', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2637, 1, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_paid_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Paid. Once the order has been created, you cannot change the payment method or status', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2638, 1, 'en', 'plugins/ecommerce/order', 'select_payment_method', 'Select payment method', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2639, 1, 'en', 'plugins/ecommerce/order', 'cash_on_delivery_cod', 'Cash on delivery (COD)', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2640, 1, 'en', 'plugins/ecommerce/order', 'bank_transfer', 'Bank transfer', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2641, 1, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2642, 1, 'en', 'plugins/ecommerce/order', 'confirm_that_payment_for_this_order_will_be_paid_later', 'Confirm that payment for this order will be paid later', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2643, 1, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_pending_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Pending. Once the order has been created, you cannot change the payment method or status', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2644, 1, 'en', 'plugins/ecommerce/order', 'pending_amount', 'Pending amount', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2645, 1, 'en', 'plugins/ecommerce/order', 'update_email', 'Update email', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2646, 1, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2647, 1, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2648, 1, 'en', 'plugins/ecommerce/order', 'create_a_new_order', 'Create a new order', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2649, 1, 'en', 'plugins/ecommerce/order', 'search_or_create_new_product', 'Search or create a new product', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2650, 1, 'en', 'plugins/ecommerce/order', 'search_or_create_new_customer', 'Search or create a new customer', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2651, 1, 'en', 'plugins/ecommerce/order', 'discount_description', 'Discount description', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2652, 1, 'en', 'plugins/ecommerce/order', 'cant_select_out_of_stock_product', 'Cannot select out of stock product!', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2653, 1, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2654, 1, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2655, 1, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2656, 1, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2657, 1, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2658, 1, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2659, 1, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2660, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2661, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2662, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_required', 'Stripe\'s name is required!', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2663, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_max', 'Stripe\'s name is too long!', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2664, 1, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2665, 1, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2666, 1, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2667, 1, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2668, 1, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2669, 1, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2670, 1, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2671, 1, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2672, 1, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2673, 1, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2674, 1, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2675, 1, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2676, 1, 'en', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2677, 1, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2678, 1, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2022-05-13 03:51:05', '2022-05-13 03:51:05');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2679, 1, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2680, 1, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2681, 1, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2682, 1, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2683, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2684, 1, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2685, 1, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2686, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2687, 1, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2688, 1, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2689, 1, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2690, 1, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2691, 1, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2692, 1, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2693, 1, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2694, 1, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2695, 1, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2696, 1, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2697, 1, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2698, 1, 'en', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2699, 1, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2700, 1, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2701, 1, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2702, 1, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2703, 1, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2704, 1, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2705, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2706, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2707, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2708, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2709, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2710, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2711, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2712, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2713, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2714, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2715, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2716, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2717, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2718, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2719, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2720, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2721, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2722, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2723, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2724, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2725, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2726, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2727, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2728, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2729, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2730, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2731, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2732, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2733, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2734, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2735, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2736, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2737, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2738, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2739, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2740, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2741, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2742, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2743, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2744, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2745, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2746, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2747, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2748, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2749, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2750, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2751, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2752, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2753, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2754, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2755, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2756, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2757, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2758, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2759, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2760, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_image_from_product_variation', 'Use image from product variation (for Visual Swatch only)', '2022-05-13 03:51:05', '2022-05-13 03:51:05'),
(2761, 1, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2762, 1, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2763, 1, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2764, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2765, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2766, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2767, 1, 'en', 'plugins/ecommerce/product-categories', 'name', 'Product categories', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2768, 1, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2769, 1, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2770, 1, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2771, 1, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2772, 1, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Product categories', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2773, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2774, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2775, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2776, 1, 'en', 'plugins/ecommerce/product-categories', 'total_products', 'Total products: :total', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2777, 1, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2778, 1, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2779, 1, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2780, 1, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2781, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2782, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2783, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2784, 1, 'en', 'plugins/ecommerce/product-label', 'name', 'Product labels', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2785, 1, 'en', 'plugins/ecommerce/product-label', 'create', 'New product label', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2786, 1, 'en', 'plugins/ecommerce/product-label', 'edit', 'Edit product label', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2787, 1, 'en', 'plugins/ecommerce/product-label', 'color', 'Color', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2788, 1, 'en', 'plugins/ecommerce/product-label', 'color_placeholder', 'Example: #f0f0f0', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2789, 1, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2790, 1, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2791, 1, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2792, 1, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2793, 1, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2794, 1, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2795, 1, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2796, 1, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2797, 1, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2798, 1, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2799, 1, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2800, 1, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2801, 1, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2802, 1, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2803, 1, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2804, 1, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2805, 1, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2806, 1, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2807, 1, 'en', 'plugins/ecommerce/products', 'form.date.end', 'From date', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2808, 1, 'en', 'plugins/ecommerce/products', 'form.date.start', 'To date', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2809, 1, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2810, 1, 'en', 'plugins/ecommerce/products', 'form.collections', 'Product collections', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2811, 1, 'en', 'plugins/ecommerce/products', 'form.labels', 'Labels', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2812, 1, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2813, 1, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2814, 1, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2815, 1, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2816, 1, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2817, 1, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2818, 1, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2819, 1, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2820, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2821, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2822, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2823, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2824, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2825, 1, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2826, 1, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2827, 1, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2828, 1, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2829, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2830, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2831, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2832, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2833, 1, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2834, 1, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2835, 1, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2836, 1, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2837, 1, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2838, 1, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2839, 1, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2840, 1, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2841, 1, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2842, 1, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2843, 1, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2844, 1, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2845, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2846, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2847, 1, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2848, 1, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2849, 1, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2850, 1, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2851, 1, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2852, 1, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2853, 1, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2854, 1, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2855, 1, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2856, 1, 'en', 'plugins/ecommerce/products', 'form.stock_status', 'Stock status', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2857, 1, 'en', 'plugins/ecommerce/products', 'form.auto_generate_sku', 'Auto generate SKU?', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2858, 1, 'en', 'plugins/ecommerce/products', 'form.featured_image', 'Featured image (optional)', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2859, 1, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2860, 1, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2861, 1, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2862, 1, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2863, 1, 'en', 'plugins/ecommerce/products', 'sku', 'SKU', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2864, 1, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2865, 1, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2866, 1, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2867, 1, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2868, 1, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2869, 1, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2870, 1, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2871, 1, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2872, 1, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2873, 1, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2874, 1, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2875, 1, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2876, 1, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2877, 1, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2878, 1, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2879, 1, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2880, 1, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2881, 1, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2882, 1, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2883, 1, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2884, 1, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2885, 1, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2886, 1, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2887, 1, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2888, 1, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2889, 1, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2890, 1, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2891, 1, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2892, 1, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2893, 1, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2894, 1, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2895, 1, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2896, 1, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2897, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2898, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2899, 1, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2900, 1, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2901, 1, 'en', 'plugins/ecommerce/products', 'delete_variations_confirmation', 'Are you sure you want to delete those variations? This action cannot be undo.', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2902, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2903, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2904, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2905, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2906, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2907, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2908, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.in_stock', 'In stock', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2909, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.out_of_stock', 'Out of stock', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2910, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.on_backorder', 'On backorder', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2911, 1, 'en', 'plugins/ecommerce/products', 'stock_status', 'Stock status', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2912, 1, 'en', 'plugins/ecommerce/products', 'processing', 'Processing...', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2913, 1, 'en', 'plugins/ecommerce/products', 'delete_selected_variations', 'Delete selected variations', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2914, 1, 'en', 'plugins/ecommerce/products', 'delete_variations', 'Delete variations', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2915, 1, 'en', 'plugins/ecommerce/products', 'category', 'Category', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2916, 1, 'en', 'plugins/ecommerce/products', 'product_price_flash_sale_warning', 'This product is in flash sale <strong>:name</strong> so its price is <strong>:price</strong>.', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2917, 1, 'en', 'plugins/ecommerce/products', 'product_price_discount_warning', 'This product is in discount <strong>:name</strong> so its price is <strong>:price</strong>.', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2918, 1, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2919, 1, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2920, 1, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2921, 1, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2922, 1, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2923, 1, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2924, 1, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2022-05-13 03:51:06', '2022-05-13 03:51:06'),
(2925, 1, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2926, 1, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2927, 1, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top Selling Products', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2928, 1, 'en', 'plugins/ecommerce/reports', 'ranges.today', 'Today', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2929, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_week', 'This week', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2930, 1, 'en', 'plugins/ecommerce/reports', 'ranges.last_7_days', 'Last 7 days', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2931, 1, 'en', 'plugins/ecommerce/reports', 'ranges.last_30_days', 'Last 30 days', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2932, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_month', 'This month', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2933, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_year', 'This year', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2934, 1, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2935, 1, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2936, 1, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2937, 1, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2938, 1, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2939, 1, 'en', 'plugins/ecommerce/reports', 'sales_reports', 'Sales Reports', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2940, 1, 'en', 'plugins/ecommerce/reports', 'total_earnings', 'Total Earnings', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2941, 1, 'en', 'plugins/ecommerce/reports', 'recent_orders', 'Recent Orders', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2942, 1, 'en', 'plugins/ecommerce/reports', 'statistics', 'Statistics', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2943, 1, 'en', 'plugins/ecommerce/reports', 'items_earning_sales', 'Items Earning Sales: :value', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2944, 1, 'en', 'plugins/ecommerce/reports', 'revenue', 'Revenue', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2945, 1, 'en', 'plugins/ecommerce/reports', 'orders', 'Orders', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2946, 1, 'en', 'plugins/ecommerce/reports', 'products', 'Products', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2947, 1, 'en', 'plugins/ecommerce/reports', 'customers', 'Customers', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2948, 1, 'en', 'plugins/ecommerce/reports', 'earnings', 'Earnings', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2949, 1, 'en', 'plugins/ecommerce/reports', 'date_range_format_value', 'From :from to :to', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2950, 1, 'en', 'plugins/ecommerce/reports', 'select_range', 'Select Range', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2951, 1, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2952, 1, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2953, 1, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2954, 1, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2955, 1, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2956, 1, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2957, 1, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2958, 1, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2959, 1, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2960, 1, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2961, 1, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2962, 1, 'en', 'plugins/ecommerce/review', 'user', 'User', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2963, 1, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2964, 1, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2965, 1, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2966, 1, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2967, 1, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2968, 1, 'en', 'plugins/ecommerce/review', 'images', 'Images', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2969, 1, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2970, 1, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2971, 1, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2972, 1, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2973, 1, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2974, 1, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2975, 1, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2976, 1, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2977, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2978, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2979, 1, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2980, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2981, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2982, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2983, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2984, 1, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2985, 1, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2986, 1, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2987, 1, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2988, 1, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2989, 1, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2990, 1, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2991, 1, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2992, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2993, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2994, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.pending', 'Pending', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2995, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.arrange_shipment', 'Arrange shipment', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2996, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.ready_to_be_shipped_out', 'Ready to be shipped out', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2997, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2998, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(2999, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3000, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3001, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3002, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3003, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3004, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3005, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3006, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3007, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3008, 1, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3009, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3010, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3011, 1, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3012, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3013, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3014, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3015, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3016, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3017, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3018, 1, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3019, 1, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3020, 1, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3021, 1, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3022, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3023, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3024, 1, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3025, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_weight', 'Based on product\'s weight (:unit)', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3026, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_price', 'Based on product\'s price', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3027, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3028, 1, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3029, 1, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3030, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3031, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3032, 1, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3033, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3034, 1, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3035, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3036, 1, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3037, 1, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3038, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3039, 1, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3040, 1, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3041, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2022-05-13 03:51:07', '2022-05-13 03:51:07'),
(3042, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3043, 1, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3044, 1, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3045, 1, 'en', 'plugins/ecommerce/shipping', 'updated_at', 'Last Update', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3046, 1, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3047, 1, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3048, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3049, 1, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3050, 1, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3051, 1, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3052, 1, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3053, 1, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3054, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2022-05-13 03:51:08', '2022-05-13 03:51:08');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3055, 1, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3056, 1, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3057, 1, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to : :status . Updated by: %user_name%', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3058, 1, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3059, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3060, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3061, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3062, 1, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3063, 1, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3064, 1, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3065, 1, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3066, 1, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3067, 1, 'en', 'plugins/ecommerce/shipping', 'warehouse', 'Warehouse', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3068, 1, 'en', 'plugins/ecommerce/shipping', 'delivery_note', 'Delivery note', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3069, 1, 'en', 'plugins/ecommerce/shipping', 'shipments', 'Shipments', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3070, 1, 'en', 'plugins/ecommerce/shipping', 'order_id', 'Order ID', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3071, 1, 'en', 'plugins/ecommerce/shipping', 'not_available', 'Not available', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3072, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_amount', 'Shipping Amount', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3073, 1, 'en', 'plugins/ecommerce/shipping', 'additional_shipment_information', 'Additional shipment information', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3074, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_company_name', 'Shipping Company Name', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3075, 1, 'en', 'plugins/ecommerce/shipping', 'tracking_id', 'Tracking ID', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3076, 1, 'en', 'plugins/ecommerce/shipping', 'tracking_link', 'Tracking Link', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3077, 1, 'en', 'plugins/ecommerce/shipping', 'estimate_date_shipped', 'Estimate Date Shipped', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3078, 1, 'en', 'plugins/ecommerce/shipping', 'date_shipped', 'Date Shipped', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3079, 1, 'en', 'plugins/ecommerce/shipping', 'add_note', 'Add note...', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3080, 1, 'en', 'plugins/ecommerce/shipping', 'view_order', 'View Order :order_id', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3081, 1, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3082, 1, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3083, 1, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3084, 1, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3085, 1, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3086, 1, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3087, 1, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3088, 1, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3089, 1, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3090, 1, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3091, 1, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3092, 1, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3093, 1, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3094, 1, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3095, 1, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3096, 1, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3097, 1, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3098, 1, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3099, 1, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3100, 1, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3101, 1, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2022-05-13 03:51:08', '2022-05-13 03:51:08'),
(3102, 1, 'vi', 'plugins/ecommerce/brands', 'name', 'Th????ng hi???u', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3103, 1, 'vi', 'plugins/ecommerce/brands', 'create', 'Th??m th????ng hi???u m???i', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3104, 1, 'vi', 'plugins/ecommerce/brands', 'edit', 'S???a th????ng hi???u', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3105, 1, 'vi', 'plugins/ecommerce/brands', 'form.name', 'T??n', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3106, 1, 'vi', 'plugins/ecommerce/brands', 'form.name_placeholder', 'T??n th????ng hi???u (t???i ??a 255 k?? t???)', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3107, 1, 'vi', 'plugins/ecommerce/brands', 'form.description', 'M?? t???', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3108, 1, 'vi', 'plugins/ecommerce/brands', 'form.description_placeholder', 'M?? t??? ng???n cho th????ng hi???u n??y (t???i ??a 400 k?? t???)', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3109, 1, 'vi', 'plugins/ecommerce/brands', 'form.website', 'Website', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3110, 1, 'vi', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3111, 1, 'vi', 'plugins/ecommerce/brands', 'form.is_featured', 'N???i b???t?', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3112, 1, 'vi', 'plugins/ecommerce/brands', 'logo', 'Logo', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3113, 1, 'vi', 'plugins/ecommerce/brands', 'website', 'Website', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3114, 1, 'vi', 'plugins/ecommerce/brands', 'notices.no_select', 'Kh??ng c?? b???n ghi n??o ???????c ch???n!', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3115, 1, 'vi', 'plugins/ecommerce/brands', 'notices.update_success_message', 'C???p nh???t th??nh c??ng', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3116, 1, 'vi', 'plugins/ecommerce/brands', 'cannot_delete', 'Xo?? kh??ng th??nh c??ng', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3117, 1, 'vi', 'plugins/ecommerce/brands', 'brand_deleted', 'Xo?? th????ng hi???u th??nh c??ng', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3118, 1, 'vi', 'plugins/ecommerce/brands', 'menu', 'Th????ng hi???u', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3119, 1, 'vi', 'plugins/ecommerce/brands', 'intro.title', 'Qu???n l?? danh s??ch th????ng hi???u', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3120, 1, 'vi', 'plugins/ecommerce/brands', 'intro.description', 'C??c th????ng hi???u c???a s???n ph???m nh?? Nike, Adidas, Bitis ...', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3121, 1, 'vi', 'plugins/ecommerce/brands', 'intro.button_text', 'T???o th????ng hi???u', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3122, 1, 'vi', 'plugins/ecommerce/brands', 'no_brand', 'Kh??ng c?? th????ng hi???u', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3123, 1, 'vi', 'plugins/ecommerce/currencies', 'name', 'Ti???n t???', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3124, 1, 'vi', 'plugins/ecommerce/currencies', 'create', 'Th??m lo???i ti???n t??? m???i', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3125, 1, 'vi', 'plugins/ecommerce/currencies', 'edit', 'S???a ti???n t???', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3126, 1, 'vi', 'plugins/ecommerce/currencies', 'list', 'Danh s??ch ti???n t???', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3127, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.title', 'T??n', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3128, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.code', 'M??', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3129, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.symbol', 'K?? hi???u', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3130, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.is_prefix_symbol', 'S??? d???ng k?? hi???u tr?????c s??? ti???n', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3131, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.status', 'Tr???ng th??i', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3132, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.order', 'S???p x???p', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3133, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.title', 'Ti??u ?????', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3134, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.code', 'M??', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3135, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.symbol', 'K?? hi???u', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3136, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.is_prefix_symbol', 'S??? d???ng k?? hi???u tr?????c s??? ti???n', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3137, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.status', 'Tr???ng th??i', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3138, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.order', 'S???p x???p', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3139, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.decimals', 'S??? k?? t??? sau d???u ph??n c??ch', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3140, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.activated', '???? k??ch ho???t', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3141, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.deactivated', '???? b??? hu??? k??ch ho???t', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3142, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.yes', 'C??', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3143, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.no', 'Kh??ng', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3144, 1, 'vi', 'plugins/ecommerce/currency', 'currencies', 'Ti???n t???', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3145, 1, 'vi', 'plugins/ecommerce/currency', 'setting_description', 'C??c lo???i ti???n t??? ???????c s??? d???ng tr??n website.', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3146, 1, 'vi', 'plugins/ecommerce/currency', 'name', 'T??n', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3147, 1, 'vi', 'plugins/ecommerce/currency', 'symbol', 'K?? hi???u', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3148, 1, 'vi', 'plugins/ecommerce/currency', 'number_of_decimals', 'S??? th???p ph??n', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3149, 1, 'vi', 'plugins/ecommerce/currency', 'exchange_rate', 'T??? gi??', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3150, 1, 'vi', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'V??? tr?? k?? hi???u', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3151, 1, 'vi', 'plugins/ecommerce/currency', 'is_default', 'M???c ?????nh?', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3152, 1, 'vi', 'plugins/ecommerce/currency', 'remove', 'Xo??', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3153, 1, 'vi', 'plugins/ecommerce/currency', 'new_currency', 'Th??m ti???n t??? m???i', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3154, 1, 'vi', 'plugins/ecommerce/currency', 'save_settings', 'L??u c??i ?????t', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3155, 1, 'vi', 'plugins/ecommerce/currency', 'before_number', 'Tr?????c s???', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3156, 1, 'vi', 'plugins/ecommerce/currency', 'after_number', 'Sau s???', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3157, 1, 'vi', 'plugins/ecommerce/customer', 'name', 'Kh??ch h??ng', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3158, 1, 'vi', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3159, 1, 'vi', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3160, 1, 'vi', 'plugins/ecommerce/customer', 'email', 'Email', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3161, 1, 'vi', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3162, 1, 'vi', 'plugins/ecommerce/customer', 'password', 'Password', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3163, 1, 'vi', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3164, 1, 'vi', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3165, 1, 'vi', 'plugins/ecommerce/customer', 'intro.title', 'Qu???n l?? danh s??ch kh??ch h??ng', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3166, 1, 'vi', 'plugins/ecommerce/customer', 'intro.description', 'Khi kh??ch h??ng ?????t h??ng, b???n s??? bi???t ???????c th??ng tin v?? l???ch s??? mua h??ng c???a kh??ch h??ng.', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3167, 1, 'vi', 'plugins/ecommerce/customer', 'intro.button_text', 'T???o kh??ch h??ng', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3168, 1, 'vi', 'plugins/ecommerce/discount', 'name', 'Khuy???n m??i', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3169, 1, 'vi', 'plugins/ecommerce/discount', 'invalid_coupon', 'M?? khuy???n m??i kh??ng h???p l??? ho???c ???? h???t h???n!', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3170, 1, 'vi', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'M?? khuy???n m??i n??y kh??ng th??? s??? d???ng chung v???i ch????ng tr??nh khuy???n m??i!', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3171, 1, 'vi', 'plugins/ecommerce/discount', 'not_used', 'Ch??a s??? d???ng m?? gi???m gi?? n??y', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3172, 1, 'vi', 'plugins/ecommerce/discount', 'detail', 'Detail', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3173, 1, 'vi', 'plugins/ecommerce/discount', 'used', 'Used', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3174, 1, 'vi', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3175, 1, 'vi', 'plugins/ecommerce/discount', 'end_date', 'End date', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3176, 1, 'vi', 'plugins/ecommerce/discount', 'intro.title', 'Ch????ng tr??nh khuy???n m??i', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3177, 1, 'vi', 'plugins/ecommerce/discount', 'intro.description', 'T???o ra c??c m?? coupon, c??i ?????t m???t s???n ph???m, ho???c m???t nh??m s???n ph???m khuy???n m??i d??nh cho c??c kh??ch h??ng th??n thi???t c???a b???n.', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3178, 1, 'vi', 'plugins/ecommerce/discount', 'intro.button_text', 'T???o khuy???n m??i', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3179, 1, 'vi', 'plugins/ecommerce/discount', 'create', 'Create discount', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3180, 1, 'vi', 'plugins/ecommerce/discount', 'expired', 'Expired', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3181, 1, 'vi', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2022-05-13 03:51:09', '2022-05-13 03:51:09'),
(3182, 1, 'vi', 'plugins/ecommerce/discount', 'can', 'can', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3183, 1, 'vi', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3184, 1, 'vi', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3185, 1, 'vi', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3186, 1, 'vi', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3187, 1, 'vi', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3188, 1, 'vi', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3189, 1, 'vi', 'plugins/ecommerce/discount', 'enums.type-options.amount', 'Amount - Fixed', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3190, 1, 'vi', 'plugins/ecommerce/discount', 'enums.type-options.percentage', 'Discount %', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3191, 1, 'vi', 'plugins/ecommerce/discount', 'enums.type-options.shipping', 'Free shipping', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3192, 1, 'vi', 'plugins/ecommerce/discount', 'enums.type-options.same-price', 'Same price', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3193, 1, 'vi', 'plugins/ecommerce/discount', 'discount', 'Discount', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3194, 1, 'vi', 'plugins/ecommerce/discount', 'create_coupon_code', 'T???o m?? khuy???n m??i', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3195, 1, 'vi', 'plugins/ecommerce/discount', 'create_discount_promotion', 'Create discount promotion', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3196, 1, 'vi', 'plugins/ecommerce/discount', 'generate_coupon_code', 'Generate coupon code', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3197, 1, 'vi', 'plugins/ecommerce/discount', 'customers_will_enter_this_coupon_code_when_they_checkout', 'Customers will enter this coupon code when they checkout', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3198, 1, 'vi', 'plugins/ecommerce/discount', 'select_type_of_discount', 'Select type of discount', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3199, 1, 'vi', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3200, 1, 'vi', 'plugins/ecommerce/discount', 'promotion', 'Promotion', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3201, 1, 'vi', 'plugins/ecommerce/discount', 'can_be_used_with_promotion', 'Can be used with promotion', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3202, 1, 'vi', 'plugins/ecommerce/discount', 'unlimited_coupon', 'Unlimited coupon', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3203, 1, 'vi', 'plugins/ecommerce/discount', 'enter_number', 'Enter number', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3204, 1, 'vi', 'plugins/ecommerce/discount', 'coupon_type', 'Coupon type', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3205, 1, 'vi', 'plugins/ecommerce/discount', 'percentage_discount', 'Percentage discount (%)', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3206, 1, 'vi', 'plugins/ecommerce/discount', 'free_shipping', 'Free shipping', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3207, 1, 'vi', 'plugins/ecommerce/discount', 'same_price', 'Same price', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3208, 1, 'vi', 'plugins/ecommerce/discount', 'apply_for', 'apply for', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3209, 1, 'vi', 'plugins/ecommerce/discount', 'all_orders', 'All orders', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3210, 1, 'vi', 'plugins/ecommerce/discount', 'order_amount_from', 'Order amount from', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3211, 1, 'vi', 'plugins/ecommerce/discount', 'product_collection', 'Product collection', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3212, 1, 'vi', 'plugins/ecommerce/discount', 'product', 'Product', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3213, 1, 'vi', 'plugins/ecommerce/discount', 'customer', 'Customer', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3214, 1, 'vi', 'plugins/ecommerce/discount', 'variant', 'Variant', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3215, 1, 'vi', 'plugins/ecommerce/discount', 'search_product', 'Search product', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3216, 1, 'vi', 'plugins/ecommerce/discount', 'no_products_found', 'No products found!', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3217, 1, 'vi', 'plugins/ecommerce/discount', 'search_customer', 'Search customer', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3218, 1, 'vi', 'plugins/ecommerce/discount', 'no_customer_found', 'No customer found!', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3219, 1, 'vi', 'plugins/ecommerce/discount', 'one_time_per_order', 'One time per order', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3220, 1, 'vi', 'plugins/ecommerce/discount', 'one_time_per_product_in_cart', 'One time per product in cart', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3221, 1, 'vi', 'plugins/ecommerce/discount', 'number_of_products', 'Number of products required to apply', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3222, 1, 'vi', 'plugins/ecommerce/discount', 'selected_products', 'Selected products', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3223, 1, 'vi', 'plugins/ecommerce/discount', 'selected_customers', 'Selected customers', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3224, 1, 'vi', 'plugins/ecommerce/discount', 'time', 'Time', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3225, 1, 'vi', 'plugins/ecommerce/discount', 'never_expired', 'Never expired', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3226, 1, 'vi', 'plugins/ecommerce/discount', 'save', 'Save', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3227, 1, 'vi', 'plugins/ecommerce/discount', 'enter_promotion_name', 'Enter promotion name', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3228, 1, 'vi', 'plugins/ecommerce/discount', 'enter_coupon_name', 'Enter coupon name', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3229, 1, 'vi', 'plugins/ecommerce/discount', 'cancel', 'Cancel', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3230, 1, 'vi', 'plugins/ecommerce/discount', 'is', 'Is', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3231, 1, 'vi', 'plugins/ecommerce/discount', 'when_shipping_fee_less_than', 'when shipping fee less than', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3232, 1, 'vi', 'plugins/ecommerce/ecommerce', 'settings', 'C??i ?????t', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3233, 1, 'vi', 'plugins/ecommerce/ecommerce', 'name', 'Th????ng m???i ??i???n t???', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3234, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3235, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3236, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3237, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3238, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3239, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3240, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3241, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3242, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3243, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3244, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_address', '?????a ch??? c???a h??ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3245, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_phone', 'S??? ??i???n tho???i c???a h??ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3246, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_id', 'M?? ????n h??ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3247, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_token', 'Chu???i m?? ho?? ????n h??ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3248, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_name', 'T??n kh??ch h??ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3249, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_email', 'Email kh??ch h??ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3250, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_phone', 'S??? ??i???n tho???i kh??ch h??ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3251, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_address', '?????a ch??? kh??ch h??ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3252, 1, 'vi', 'plugins/ecommerce/ecommerce', 'product_list', 'Danh s??ch s???n ph???m trong ????n h??ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3253, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Chi ti???t thanh to??n', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3254, 1, 'vi', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Ph????ng th???c v???n chuy???n', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3255, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_method', 'Ph????ng th???c thanh to??n', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3256, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Ti??u chu???n & ?????nh d???ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3257, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'C??c ti??u chu???n v?? c??c ?????nh d???ng ???????c s??? d???ng ????? t??nh to??n nh???ng th??? nh?? gi?? c??? s???n ph???m, tr???ng l?????ng v???n chuy???n v?? th???i gian ????n h??ng ???????c ?????t.', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3258, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Ch???nh s???a ?????nh d???ng m?? ????n h??ng (t??y ch???n)', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3259, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'M?? ????n h??ng m???c ?????nh b???t ?????u t??? :number. B???n c?? th??? thay ?????i chu???i b???t ?????u ho???c k???t th??c ????? t???o m?? ????n h??ng theo ?? b???n, v?? d??? \"DH-:number\" ho???c \":number-A\"', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3260, 1, 'vi', 'plugins/ecommerce/ecommerce', 'start_with', 'B???t ?????u b???ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3261, 1, 'vi', 'plugins/ecommerce/ecommerce', 'end_with', 'K???t th??c b???ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3262, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'M?? ????n h??ng c???a b???n s??? hi???n th??? theo m???u', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3263, 1, 'vi', 'plugins/ecommerce/ecommerce', 'weight_unit', '????n v??? c??n n???ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3264, 1, 'vi', 'plugins/ecommerce/ecommerce', 'height_unit', '????n v??? chi???u d??i/chi???u cao', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3265, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_title', 'X??c nh???n ????n h??ng', '2022-05-13 03:51:10', '2022-05-13 03:51:10'),
(3266, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_description', '???????c g???i khi kh??ch h??ng t???o ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3267, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_title', 'H???y ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3268, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_description', '???????c g???i khi kh??ch h??ng h???y ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3269, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'X??c nh???n giao h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3270, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_description', '???????c g???i ?????n kh??ch h??ng khi b???t ?????u giao h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3271, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_title', 'Th??ng b??o c?? ????n h??ng m???i', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3272, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_description', '???????c g???i cho qu???n tr??? vi??n khi c?? kh??ch mua h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3273, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_title', 'X??c nh???n ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3274, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_description', 'Email ???????c g???i ?????n kh??ch h??ng khi ????n h??ng x??c nh???n', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3275, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_title', 'X??c nh???n thanh to??n', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3276, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Email ???????c g???i ?????n kh??ch h??ng khi ????n h??ng x??c nh???n thanh to??n', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3277, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_title', '????n h??ng ??ang ch??? ho??n t???t', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3278, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_description', 'Email nh???c nh??? kh??ch h??ng ho??n t???t ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3279, 1, 'vi', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'ho???c <a href=\":link\">Truy c???p website</a>', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3280, 1, 'vi', 'plugins/ecommerce/email', 'order_information', 'Th??ng tin ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3281, 1, 'vi', 'plugins/ecommerce/email', 'order_number', 'M?? ????n h??ng: <strong>:order_id</strong>', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3282, 1, 'vi', 'plugins/ecommerce/email', 'view_order', 'Xem ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3283, 1, 'vi', 'plugins/ecommerce/order', 'statuses.pending', 'Ch??a x??? l??', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3284, 1, 'vi', 'plugins/ecommerce/order', 'statuses.processing', '??ang x??? l??', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3285, 1, 'vi', 'plugins/ecommerce/order', 'statuses.completed', 'Ho??n th??nh', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3286, 1, 'vi', 'plugins/ecommerce/order', 'statuses.canceled', 'B??? hu???', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3287, 1, 'vi', 'plugins/ecommerce/order', 'name', '????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3288, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_order', '????n h??ng ch??a ho??n t???t', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3289, 1, 'vi', 'plugins/ecommerce/order', 'order_id', 'M?? ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3290, 1, 'vi', 'plugins/ecommerce/order', 'customer_label', 'Kh??ch h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3291, 1, 'vi', 'plugins/ecommerce/order', 'amount', 'T???ng c???ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3292, 1, 'vi', 'plugins/ecommerce/order', 'shipping_amount', 'Ph?? v???n chuy???n', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3293, 1, 'vi', 'plugins/ecommerce/order', 'payment_method', 'Ph????ng th???c thanh to??n', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3294, 1, 'vi', 'plugins/ecommerce/order', 'payment_status_label', 'Tr???ng th??i thanh to??n', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3295, 1, 'vi', 'plugins/ecommerce/order', 'manage_orders', 'Qu???n l?? ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3296, 1, 'vi', 'plugins/ecommerce/order', 'order_intro_description', 'M???t khi c???a h??ng c???a b???n c?? ????n ?????t h??ng, ????y s??? l?? n??i b???n x??? l?? v?? theo d??i nh???ng ????n ?????t h??ng ????.', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3297, 1, 'vi', 'plugins/ecommerce/order', 'create_new_order', 'T???o ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3298, 1, 'vi', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Qu???n l?? ????n h??ng ch??a ho??n t???t', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3299, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', '????n h??ng ch??a ho??n t???t l?? ????n h??ng ???????c t???o khi kh??ch h??ng th??m s???n ph???m v??o gi??? h??ng, ti???n h??nh ??i???n th??ng tin mua h??ng nh??ng kh??ng ho??n t???t qu?? tr??nh thanh to??n.', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3300, 1, 'vi', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'Kh??ng t??m th???y email n??n kh??ng th??? g???i email kh??i ph???c cho kh??ch h??ng.', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3301, 1, 'vi', 'plugins/ecommerce/order', 'menu', '????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3302, 1, 'vi', 'plugins/ecommerce/order', 'order_information', 'Th??ng tin ????n h??ng', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3303, 1, 'vi', 'plugins/ecommerce/order', 'create', 'Create an order', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3304, 1, 'vi', 'plugins/ecommerce/order', 'cancel_error', 'The order is delivering or completed', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3305, 1, 'vi', 'plugins/ecommerce/order', 'cancel_success', 'You do cancel the order successful', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3306, 1, 'vi', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3307, 1, 'vi', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3308, 1, 'vi', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3309, 1, 'vi', 'plugins/ecommerce/order', 'created', 'Created', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3310, 1, 'vi', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3311, 1, 'vi', 'plugins/ecommerce/order', 'return', 'Return', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3312, 1, 'vi', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3313, 1, 'vi', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3314, 1, 'vi', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3315, 1, 'vi', 'plugins/ecommerce/order', 'products', 'product(s)', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3316, 1, 'vi', 'plugins/ecommerce/order', 'default', 'Default', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3317, 1, 'vi', 'plugins/ecommerce/order', 'system', 'System', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3318, 1, 'vi', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3319, 1, 'vi', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3320, 1, 'vi', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3321, 1, 'vi', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2022-05-13 03:51:11', '2022-05-13 03:51:11'),
(3322, 1, 'vi', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3323, 1, 'vi', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3324, 1, 'vi', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3325, 1, 'vi', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3326, 1, 'vi', 'plugins/ecommerce/order', 'address_country_required', 'The country field is required.', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3327, 1, 'vi', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3328, 1, 'vi', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3329, 1, 'vi', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3330, 1, 'vi', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3331, 1, 'vi', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3332, 1, 'vi', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3333, 1, 'vi', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3334, 1, 'vi', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3335, 1, 'vi', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3336, 1, 'vi', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3337, 1, 'vi', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3338, 1, 'vi', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3339, 1, 'vi', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3340, 1, 'vi', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3341, 1, 'vi', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3342, 1, 'vi', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3343, 1, 'vi', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3344, 1, 'vi', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3345, 1, 'vi', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3346, 1, 'vi', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3347, 1, 'vi', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3348, 1, 'vi', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3349, 1, 'vi', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3350, 1, 'vi', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3351, 1, 'vi', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3352, 1, 'vi', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3353, 1, 'vi', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3354, 1, 'vi', 'plugins/ecommerce/order', 'view_all', 'View all', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3355, 1, 'vi', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3356, 1, 'vi', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3357, 1, 'vi', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3358, 1, 'vi', 'plugins/ecommerce/order', 'completed', 'Completed', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3359, 1, 'vi', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3360, 1, 'vi', 'plugins/ecommerce/order', 'sku', 'SKU', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3361, 1, 'vi', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3362, 1, 'vi', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3363, 1, 'vi', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3364, 1, 'vi', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3365, 1, 'vi', 'plugins/ecommerce/order', 'tax', 'Tax', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3366, 1, 'vi', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3367, 1, 'vi', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3368, 1, 'vi', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3369, 1, 'vi', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3370, 1, 'vi', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3371, 1, 'vi', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3372, 1, 'vi', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3373, 1, 'vi', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3374, 1, 'vi', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3375, 1, 'vi', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3376, 1, 'vi', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3377, 1, 'vi', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3378, 1, 'vi', 'plugins/ecommerce/order', 'refund', 'Refund', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3379, 1, 'vi', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2022-05-13 03:51:12', '2022-05-13 03:51:12'),
(3380, 1, 'vi', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3381, 1, 'vi', 'plugins/ecommerce/order', 'history', 'History', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3382, 1, 'vi', 'plugins/ecommerce/order', 'order_number', 'Order number', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3383, 1, 'vi', 'plugins/ecommerce/order', 'from', 'from', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3384, 1, 'vi', 'plugins/ecommerce/order', 'status', 'Status', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3385, 1, 'vi', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3386, 1, 'vi', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3387, 1, 'vi', 'plugins/ecommerce/order', 'staff', 'Staff', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3388, 1, 'vi', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3389, 1, 'vi', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3390, 1, 'vi', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3391, 1, 'vi', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3392, 1, 'vi', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3393, 1, 'vi', 'plugins/ecommerce/order', 'resend', 'Resend', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3394, 1, 'vi', 'plugins/ecommerce/order', 'default_store', 'Default store', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3395, 1, 'vi', 'plugins/ecommerce/order', 'update_address', 'Update address', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3396, 1, 'vi', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3397, 1, 'vi', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3398, 1, 'vi', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3399, 1, 'vi', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3400, 1, 'vi', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3401, 1, 'vi', 'plugins/ecommerce/order', 'send', 'Send', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3402, 1, 'vi', 'plugins/ecommerce/order', 'update', 'Update', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3403, 1, 'vi', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3404, 1, 'vi', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3405, 1, 'vi', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3406, 1, 'vi', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3407, 1, 'vi', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3408, 1, 'vi', 'plugins/ecommerce/order', 'save_note', 'Save note', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3409, 1, 'vi', 'plugins/ecommerce/order', 'order_note', 'Order note', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3410, 1, 'vi', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3411, 1, 'vi', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3412, 1, 'vi', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3413, 1, 'vi', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3414, 1, 'vi', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3415, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3416, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2022-05-13 03:51:13', '2022-05-13 03:51:13');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3417, 1, 'vi', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3418, 1, 'vi', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3419, 1, 'vi', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3420, 1, 'vi', 'plugins/ecommerce/order', 'payment_info', 'Payment Info', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3421, 1, 'vi', 'plugins/ecommerce/order', 'payment_method_refund_automatic', 'Your customer will be refunded using :method automatically.', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3422, 1, 'vi', 'plugins/ecommerce/order', 'order', 'Order', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3423, 1, 'vi', 'plugins/ecommerce/order', 'create_a_new_product', 'Create a new product', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3424, 1, 'vi', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3425, 1, 'vi', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3426, 1, 'vi', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3427, 1, 'vi', 'plugins/ecommerce/order', 'note', 'Note', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3428, 1, 'vi', 'plugins/ecommerce/order', 'note_for_order', 'Note for order...', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3429, 1, 'vi', 'plugins/ecommerce/order', 'add_discount', 'Add discount', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3430, 1, 'vi', 'plugins/ecommerce/order', 'discount', 'Discount', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3431, 1, 'vi', 'plugins/ecommerce/order', 'add_shipping_fee', 'Add shipping fee', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3432, 1, 'vi', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3433, 1, 'vi', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3434, 1, 'vi', 'plugins/ecommerce/order', 'confirm_payment_and_create_order', 'Confirm payment and create order', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3435, 1, 'vi', 'plugins/ecommerce/order', 'paid', 'Paid', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3436, 1, 'vi', 'plugins/ecommerce/order', 'pay_later', 'Pay later', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3437, 1, 'vi', 'plugins/ecommerce/order', 'customer_information', 'Customer information', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3438, 1, 'vi', 'plugins/ecommerce/order', 'create_new_customer', 'Create new customer', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3439, 1, 'vi', 'plugins/ecommerce/order', 'no_customer_found', 'No customer found!', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3440, 1, 'vi', 'plugins/ecommerce/order', 'customer', 'Customer', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3441, 1, 'vi', 'plugins/ecommerce/order', 'orders', 'order(s)', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3442, 1, 'vi', 'plugins/ecommerce/order', 'shipping_address', 'Shipping Address', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3443, 1, 'vi', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3444, 1, 'vi', 'plugins/ecommerce/order', 'price', 'Price', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3445, 1, 'vi', 'plugins/ecommerce/order', 'sku_optional', 'SKU (optional)', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3446, 1, 'vi', 'plugins/ecommerce/order', 'with_storehouse_management', 'With storehouse management?', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3447, 1, 'vi', 'plugins/ecommerce/order', 'quantity', 'Quantity', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3448, 1, 'vi', 'plugins/ecommerce/order', 'allow_customer_checkout_when_this_product_out_of_stock', 'Allow customer checkout when this product out of stock?', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3449, 1, 'vi', 'plugins/ecommerce/order', 'address', 'Address', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3450, 1, 'vi', 'plugins/ecommerce/order', 'phone', 'Phone', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3451, 1, 'vi', 'plugins/ecommerce/order', 'country', 'Country', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3452, 1, 'vi', 'plugins/ecommerce/order', 'state', 'State', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3453, 1, 'vi', 'plugins/ecommerce/order', 'city', 'City', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3454, 1, 'vi', 'plugins/ecommerce/order', 'zip_code', 'Zip code', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3455, 1, 'vi', 'plugins/ecommerce/order', 'discount_based_on', 'Discount based on', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3456, 1, 'vi', 'plugins/ecommerce/order', 'or_coupon_code', 'Or coupon code', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3457, 1, 'vi', 'plugins/ecommerce/order', 'description', 'Description', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3458, 1, 'vi', 'plugins/ecommerce/order', 'how_to_select_configured_shipping', 'How to select configured shipping?', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3459, 1, 'vi', 'plugins/ecommerce/order', 'please_add_customer_information_with_the_complete_shipping_address_to_see_the_configured_shipping_rates', 'Please add customer information with the complete shipping address to see the configured shipping rates', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3460, 1, 'vi', 'plugins/ecommerce/order', 'free_shipping', 'Free shipping', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3461, 1, 'vi', 'plugins/ecommerce/order', 'custom', 'Custom', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3462, 1, 'vi', 'plugins/ecommerce/order', 'email', 'Email', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3463, 1, 'vi', 'plugins/ecommerce/order', 'create_order', 'Create order', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3464, 1, 'vi', 'plugins/ecommerce/order', 'close', 'Close', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3465, 1, 'vi', 'plugins/ecommerce/order', 'confirm_payment_is_paid_for_this_order', 'Confirm payment is paid for this order', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3466, 1, 'vi', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_paid_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Paid. Once the order has been created, you cannot change the payment method or status', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3467, 1, 'vi', 'plugins/ecommerce/order', 'select_payment_method', 'Select payment method', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3468, 1, 'vi', 'plugins/ecommerce/order', 'cash_on_delivery_cod', 'Cash on delivery (COD)', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3469, 1, 'vi', 'plugins/ecommerce/order', 'bank_transfer', 'Bank transfer', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3470, 1, 'vi', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3471, 1, 'vi', 'plugins/ecommerce/order', 'confirm_that_payment_for_this_order_will_be_paid_later', 'Confirm that payment for this order will be paid later', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3472, 1, 'vi', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_pending_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Pending. Once the order has been created, you cannot change the payment method or status', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3473, 1, 'vi', 'plugins/ecommerce/order', 'pending_amount', 'Pending amount', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3474, 1, 'vi', 'plugins/ecommerce/order', 'update_email', 'Update email', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3475, 1, 'vi', 'plugins/ecommerce/order', 'save', 'Save', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3476, 1, 'vi', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3477, 1, 'vi', 'plugins/ecommerce/order', 'create_a_new_order', 'Create a new order', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3478, 1, 'vi', 'plugins/ecommerce/order', 'search_or_create_new_product', 'Search or create a new product', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3479, 1, 'vi', 'plugins/ecommerce/order', 'search_or_create_new_customer', 'Search or create a new customer', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3480, 1, 'vi', 'plugins/ecommerce/order', 'discount_description', 'Discount description', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3481, 1, 'vi', 'plugins/ecommerce/order', 'cant_select_out_of_stock_product', 'Cannot select out of stock product!', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3482, 1, 'vi', 'plugins/ecommerce/payment', 'name', 'Thanh to??n', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3483, 1, 'vi', 'plugins/ecommerce/payment', 'payment_method', 'Ph????ng th???c thanh to??n', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3484, 1, 'vi', 'plugins/ecommerce/payment', 'view_payment', 'Xem thanh to??n #', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3485, 1, 'vi', 'plugins/ecommerce/payment', 'charge_id', 'M?? giao d???ch', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3486, 1, 'vi', 'plugins/ecommerce/payment', 'amount', 'S??? ti???n', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3487, 1, 'vi', 'plugins/ecommerce/payment', 'currency', '????n v??? ti???n t???', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3488, 1, 'vi', 'plugins/ecommerce/payment', 'user', 'Ng?????i d??ng', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3489, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_required', 'T??n c???a ph????ng th???c PayPal l?? b???t bu???c!', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3490, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_max', 'T??n c???a ph????ng th???c PayPal qu?? d??i!', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3491, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_required', 'T??n c???a ph????ng th???c Stripe l?? b???t bu???c!', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3492, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_max', 'T??n c???a ph????ng th???c Stripe qu?? d??i!', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3493, 1, 'vi', 'plugins/ecommerce/payment', 'status', 'Tr???ng th??i', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3494, 1, 'vi', 'plugins/ecommerce/payment', 'enabled', 'B???t', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3495, 1, 'vi', 'plugins/ecommerce/payment', 'disabled', 'T???t', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3496, 1, 'vi', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3497, 1, 'vi', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3498, 1, 'vi', 'plugins/ecommerce/payment', 'mode', 'Ch??? ?????', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3499, 1, 'vi', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3500, 1, 'vi', 'plugins/ecommerce/payment', 'live', 'Live', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3501, 1, 'vi', 'plugins/ecommerce/payment', 'enable_payment_log', 'B???t l??u nh???t k?? thanh to??n', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3502, 1, 'vi', 'plugins/ecommerce/payment', 'yes', 'C??', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3503, 1, 'vi', 'plugins/ecommerce/payment', 'no', 'Kh??ng', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3504, 1, 'vi', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3505, 1, 'vi', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3506, 1, 'vi', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3507, 1, 'vi', 'plugins/ecommerce/payment', 'action', 'H??nh ?????ng', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3508, 1, 'vi', 'plugins/ecommerce/payment', 'go_back', 'Quay l???i', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3509, 1, 'vi', 'plugins/ecommerce/payment', 'view', 'Xem', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3510, 1, 'vi', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Thanh to??n khi nh???n h??ng (COD)', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3511, 1, 'vi', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Th??ng qua chuy???n kho???n ng??n h??ng', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3512, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_cart', 'Thanh to??n b???ng th???', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3513, 1, 'vi', 'plugins/ecommerce/payment', 'card_number', 'S??? th???', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3514, 1, 'vi', 'plugins/ecommerce/payment', 'full_name', 'T??n tr??n th???', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3515, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Thanh to??n th??ng qua PayPal', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3516, 1, 'vi', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3517, 1, 'vi', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3518, 1, 'vi', 'plugins/ecommerce/payment', 'details', 'Chi ti???t', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3519, 1, 'vi', 'plugins/ecommerce/payment', 'payer_name', 'Ng?????i thanh to??n', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3520, 1, 'vi', 'plugins/ecommerce/payment', 'email', '?????a ch??? email', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3521, 1, 'vi', 'plugins/ecommerce/payment', 'phone', '??i???n tho???i', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3522, 1, 'vi', 'plugins/ecommerce/payment', 'country', 'Qu???c gia', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3523, 1, 'vi', 'plugins/ecommerce/payment', 'shipping_address', '?????a ch??? giao h??ng', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3524, 1, 'vi', 'plugins/ecommerce/payment', 'payment_details', 'Chi ti???t giao d???ch', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3525, 1, 'vi', 'plugins/ecommerce/payment', 'card', 'Th???', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3526, 1, 'vi', 'plugins/ecommerce/payment', 'address', '?????a ch???', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3527, 1, 'vi', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Kh??ng th??? l???y m?? Stripe ????? thanh to??n', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3528, 1, 'vi', 'plugins/ecommerce/payment', 'new_payment', 'Thanh to??n cho ????n h??ng :id', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3529, 1, 'vi', 'plugins/ecommerce/payment', 'payment_id', 'M?? thanh to??n', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3530, 1, 'vi', 'plugins/ecommerce/prices', 'name', 'Price', '2022-05-13 03:51:13', '2022-05-13 03:51:13'),
(3531, 1, 'vi', 'plugins/ecommerce/prices', 'create', 'New price', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3532, 1, 'vi', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3533, 1, 'vi', 'plugins/ecommerce/prices', 'list', 'List price', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3534, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3535, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3536, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3537, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3538, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3539, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3540, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3541, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3542, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3543, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3544, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3545, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3546, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3547, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3548, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3549, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3550, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3551, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3552, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3553, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3554, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3555, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3556, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3557, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3558, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3559, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3560, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3561, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3562, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3563, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3564, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3565, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3566, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3567, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3568, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3569, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3570, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3571, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3572, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3573, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3574, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3575, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3576, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3577, 1, 'vi', 'plugins/ecommerce/product-attributes', 'name', 'Thu???c t??nh s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3578, 1, 'vi', 'plugins/ecommerce/product-attributes', 'create', 'T???o', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3579, 1, 'vi', 'plugins/ecommerce/product-attributes', 'edit', 'S???a', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3580, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.title', 'Qu???n l?? danh s??ch thu???c t??nh s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3581, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.description', 'C??c thu???c t??nh c???a s???n ph???m nh?? m??u s???c, k??ch th?????c ...', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3582, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'T???o thu???c t??nh s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3583, 1, 'vi', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3584, 1, 'vi', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3585, 1, 'vi', 'plugins/ecommerce/product-categories', 'name', 'Danh m???c s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3586, 1, 'vi', 'plugins/ecommerce/product-categories', 'none', 'Kh??ng c??', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3587, 1, 'vi', 'plugins/ecommerce/product-categories', 'menu', 'Danh m???c s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3588, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.title', 'Qu???n l?? danh s??ch danh m???c s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3589, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.description', 'Danh m???c s???n ph???m nh?? qu???n ??o, gi??y d??p, linh ki???n ??i???n t??? ...', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3590, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.button_text', 'T???o danh m???c s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3591, 1, 'vi', 'plugins/ecommerce/product-categories', 'total_products', 'T???ng s???n ph???m: :total', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3592, 1, 'vi', 'plugins/ecommerce/product-collections', 'name', 'Nh??m s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3593, 1, 'vi', 'plugins/ecommerce/product-collections', 'create', 'Th??m nh??m s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3594, 1, 'vi', 'plugins/ecommerce/product-collections', 'edit', 'S???a nh??m s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3595, 1, 'vi', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3596, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.title', 'Qu???n l?? nh??m s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3597, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.description', 'Nh??m s???n ph???m gi??p qu???n l?? s???n ph???m v?? kh??ch h??ng t??m ki???m s???n ph???m m???t c??ch d??? d??ng.', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3598, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.button_text', 'T???o nh??m s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3599, 1, 'vi', 'plugins/ecommerce/products', 'name', 'S???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3600, 1, 'vi', 'plugins/ecommerce/products', 'create', 'Th??m s???n ph???m m???i', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3601, 1, 'vi', 'plugins/ecommerce/products', 'edit', 'S???a s???n ph???m - :name', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3602, 1, 'vi', 'plugins/ecommerce/products', 'form.name', 'T??n s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3603, 1, 'vi', 'plugins/ecommerce/products', 'form.name_placeholder', 'T??n s???n ph???m (T???i ??a 120 ch??? c??i)', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3604, 1, 'vi', 'plugins/ecommerce/products', 'form.description', 'M?? t??? ng???n', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3605, 1, 'vi', 'plugins/ecommerce/products', 'form.description_placeholder', 'M?? t??? ng???n g???n cho s???n ph???m (T???i ??a 400 ch??? c??i)', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3606, 1, 'vi', 'plugins/ecommerce/products', 'form.categories', 'Danh m???c', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3607, 1, 'vi', 'plugins/ecommerce/products', 'form.content', 'Chi ti???t s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3608, 1, 'vi', 'plugins/ecommerce/products', 'form.price', 'Gi?? c?? b???n', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3609, 1, 'vi', 'plugins/ecommerce/products', 'form.price_sale', 'Gi?? gi???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3610, 1, 'vi', 'plugins/ecommerce/products', 'form.quantity', 'S??? l?????ng', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3611, 1, 'vi', 'plugins/ecommerce/products', 'form.brand', 'Th????ng hi???u', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3612, 1, 'vi', 'plugins/ecommerce/products', 'form.width', 'R???ng', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3613, 1, 'vi', 'plugins/ecommerce/products', 'form.height', 'Cao', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3614, 1, 'vi', 'plugins/ecommerce/products', 'form.weight', 'C??n n???ng', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3615, 1, 'vi', 'plugins/ecommerce/products', 'form.image', 'H??nh ???nh', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3616, 1, 'vi', 'plugins/ecommerce/products', 'form.product_type.title', 'Lo???i s???n ph???m', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3617, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.title', 'T??nh tr???ng kho', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3618, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.in_stock', 'C??n h??ng', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3619, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.out_stock', 'H???t h??ng', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3620, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Cho ph??p ?????t h??ng khi h???t', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3621, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.title', 'Qu???n l?? kho', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3622, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'Kh??ng qu???n l?? kho', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3623, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'Qu???n l?? kho', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3624, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'S??? l?????ng', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3625, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.title', 'Giao h??ng', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3626, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.length', 'Chi???u d??i', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3627, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.wide', 'Chi???u r???ng', '2022-05-13 03:51:14', '2022-05-13 03:51:14'),
(3628, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.height', 'Chi???u cao', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3629, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.weight', 'C??n n???ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3630, 1, 'vi', 'plugins/ecommerce/products', 'form.date.start', 'Ng??y b???t ?????u', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3631, 1, 'vi', 'plugins/ecommerce/products', 'form.date.end', 'Ng??y k???t th??c', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3632, 1, 'vi', 'plugins/ecommerce/products', 'form.tags', 'Nh??n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3633, 1, 'vi', 'plugins/ecommerce/products', 'form.tax', 'Thu???', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3634, 1, 'vi', 'plugins/ecommerce/products', 'price', 'Gi?? c?? b???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3635, 1, 'vi', 'plugins/ecommerce/products', 'price_sale', 'Gi?? gi???m', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3636, 1, 'vi', 'plugins/ecommerce/products', 'quantity', 'S??? l?????ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3637, 1, 'vi', 'plugins/ecommerce/products', 'type', 'Lo???i s???n ph???m', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3638, 1, 'vi', 'plugins/ecommerce/products', 'image', '???nh', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3639, 1, 'vi', 'plugins/ecommerce/products', 'sku', 'M?? s???n ph???m', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3640, 1, 'vi', 'plugins/ecommerce/products', 'brand', 'Th????ng hi???u', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3641, 1, 'vi', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3642, 1, 'vi', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3643, 1, 'vi', 'plugins/ecommerce/products', 'products', 'S???n ph???m', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3644, 1, 'vi', 'plugins/ecommerce/products', 'menu', 'S???n ph???m', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3645, 1, 'vi', 'plugins/ecommerce/products', 'control.button_add_image', 'Th??m h??nh ???nh', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3646, 1, 'vi', 'plugins/ecommerce/products', 'overview', 'T???ng quan', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3647, 1, 'vi', 'plugins/ecommerce/products', 'attributes', 'Thu???c t??nh', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3648, 1, 'vi', 'plugins/ecommerce/products', 'product_has_variations', 'S???n ph???m c?? nhi???u phi??n b???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3649, 1, 'vi', 'plugins/ecommerce/products', 'manage_products', 'Qu???n l?? danh s??ch s???n ph???m', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3650, 1, 'vi', 'plugins/ecommerce/products', 'add_new_product', 'T???o s???n ph???m', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3651, 1, 'vi', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'B???t ?????u b??n h??ng b???ng vi???c th??m s???n ph???m.', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3652, 1, 'vi', 'plugins/ecommerce/reports', 'name', 'B??o c??o', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3653, 1, 'vi', 'plugins/ecommerce/reports', 'widget.order.title', '????n h??ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3654, 1, 'vi', 'plugins/ecommerce/reports', 'count.revenue', 'Doanh thu h??m nay', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3655, 1, 'vi', 'plugins/ecommerce/reports', 'count.orders', '????n h??ng h??m nay', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3656, 1, 'vi', 'plugins/ecommerce/reports', 'count.products', 'S???n ph???m', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3657, 1, 'vi', 'plugins/ecommerce/reports', 'count.customers', 'Kh??ch h??ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3658, 1, 'vi', 'plugins/ecommerce/reports', 'product_name', 'T??n s???n ph???m', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3659, 1, 'vi', 'plugins/ecommerce/reports', 'quantity', 'S??? l?????ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3660, 1, 'vi', 'plugins/ecommerce/reports', 'revenue_statistics', 'Th???ng k?? doanh thu', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3661, 1, 'vi', 'plugins/ecommerce/reports', 'top_selling_products', 'S???n ph???m b??n ch???y trong th??ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3662, 1, 'vi', 'plugins/ecommerce/review', 'name', '????nh gi??', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3663, 1, 'vi', 'plugins/ecommerce/review', 'list_review', 'Kh??ch h??ng ????nh gi??', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3664, 1, 'vi', 'plugins/ecommerce/review', 'add_review', 'Th??m ????nh gi??', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3665, 1, 'vi', 'plugins/ecommerce/review', 'delete_review', 'X??a ????nh gi??', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3666, 1, 'vi', 'plugins/ecommerce/review', 'create_review', 'T???o ????nh gi??', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3667, 1, 'vi', 'plugins/ecommerce/review', 'please_select_rating', 'Ch???n ????nh gi??', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3668, 1, 'vi', 'plugins/ecommerce/review', 'comment', 'B??nh lu???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3669, 1, 'vi', 'plugins/ecommerce/review', 'approve', 'Ch???p thu???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3670, 1, 'vi', 'plugins/ecommerce/review', 'approved', '???? ch???p thu???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3671, 1, 'vi', 'plugins/ecommerce/review', 'disapprove', 'Kh??ng ch???p thu???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3672, 1, 'vi', 'plugins/ecommerce/review', 'disapproved', '???? kh??ng ch???p thu???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3673, 1, 'vi', 'plugins/ecommerce/review', 'product', 'S???n ph???m', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3674, 1, 'vi', 'plugins/ecommerce/review', 'user', 'Ng?????i d??ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3675, 1, 'vi', 'plugins/ecommerce/review', 'star', 'Sao', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3676, 1, 'vi', 'plugins/ecommerce/review', 'status', 'Tr???ng th??i', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3677, 1, 'vi', 'plugins/ecommerce/review', 'intro.title', 'Qu???n l?? danh s??ch nh???n x??t c???a kh??ch h??ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3678, 1, 'vi', 'plugins/ecommerce/review', 'intro.description', 'L??u tr??? c??c nh???n x??t, ????nh gi?? c???a kh??ch h??ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3679, 1, 'vi', 'plugins/ecommerce/shipping', 'name', 'Ph?? v???n chuy???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3680, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping', 'V???n chuy???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3681, 1, 'vi', 'plugins/ecommerce/shipping', 'title', 'Title', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3682, 1, 'vi', 'plugins/ecommerce/shipping', 'country', 'Qu???c gia', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3683, 1, 'vi', 'plugins/ecommerce/shipping', 'state', 'State', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3684, 1, 'vi', 'plugins/ecommerce/shipping', 'city', 'City', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3685, 1, 'vi', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3686, 1, 'vi', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3687, 1, 'vi', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3688, 1, 'vi', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3689, 1, 'vi', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3690, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3691, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping #', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3692, 1, 'vi', 'plugins/ecommerce/shipping', 'status', 'Status', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3693, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping_methods', 'Ph????ng th???c v???n chuy???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3694, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping_method', 'T???o ph????ng th???c v???n chuy???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3695, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'S???a ph????ng th???c v???n chuy???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3696, 1, 'vi', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Th??m khu v???c v???n chuy???n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3697, 1, 'vi', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3698, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3699, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3700, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3701, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3702, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3703, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3704, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3705, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3706, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3707, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3708, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3709, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3710, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3711, 1, 'vi', 'plugins/ecommerce/store-locator', 'name', '?????a ch??? c???a h??ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3712, 1, 'vi', 'plugins/ecommerce/store-locator', 'description', '?????a ch??? n??y s??? xu???t hi???n tr??n ho?? ????n c???a b???n v?? s??? ???????c s??? d???ng ????? t??nh to??n m???c gi?? v???n chuy???n c???a b???n.', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3713, 1, 'vi', 'plugins/ecommerce/store-locator', 'shop_name', 'T??n c???a h??ng', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3714, 1, 'vi', 'plugins/ecommerce/store-locator', 'phone', '??i???n tho???i', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3715, 1, 'vi', 'plugins/ecommerce/store-locator', 'address', '?????a ch???', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3716, 1, 'vi', 'plugins/ecommerce/tax', 'name', 'Thu???', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3717, 1, 'vi', 'plugins/ecommerce/tax', 'create', 'T???o thu???', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3718, 1, 'vi', 'plugins/ecommerce/tax', 'edit', 'Ch???nh s???a thu??? :title', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3719, 1, 'vi', 'plugins/ecommerce/tax', 'title', 'Ti??u ?????', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3720, 1, 'vi', 'plugins/ecommerce/tax', 'percentage', 'T??? l??? ph???n tr??m %', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3721, 1, 'vi', 'plugins/ecommerce/tax', 'priority', 'Th??? t??? ??u ti??n', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3722, 1, 'vi', 'plugins/ecommerce/tax', 'select_tax', '-- l???a ch???n --', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3723, 1, 'en', 'plugins/faq/faq-category', 'name', 'Categories', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3724, 1, 'en', 'plugins/faq/faq-category', 'create', 'New category', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3725, 1, 'en', 'plugins/faq/faq-category', 'edit', 'Edit category', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3726, 1, 'en', 'plugins/faq/faq', 'name', 'FAQ', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3727, 1, 'en', 'plugins/faq/faq', 'create', 'New faq', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3728, 1, 'en', 'plugins/faq/faq', 'edit', 'Edit faq', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3729, 1, 'en', 'plugins/faq/faq', 'question', 'Question', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3730, 1, 'en', 'plugins/faq/faq', 'answer', 'Answer', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3731, 1, 'en', 'plugins/faq/faq', 'category', 'Category', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3732, 1, 'en', 'plugins/faq/faq', 'all', 'All', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3733, 1, 'en', 'plugins/faq/faq', 'faq_schema_config', 'FAQ schema configuration (:link)', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3734, 1, 'en', 'plugins/faq/faq', 'learn_more', 'Learn more', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3735, 1, 'en', 'plugins/faq/faq', 'settings.title', 'FAQ', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3736, 1, 'en', 'plugins/faq/faq', 'settings.description', 'Settings for FAQ', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3737, 1, 'en', 'plugins/faq/faq', 'settings.enable_faq_schema', 'Enable FAQ Schema?', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3738, 1, 'en', 'plugins/faq/faq', 'settings.enable_faq_schema_description', 'Learn more: https://developers.google.com/search/docs/data-types/faqpage', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3739, 1, 'en', 'plugins/faq/faq', 'select_category', 'Select a category', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3740, 1, 'en', 'plugins/faq/faq', 'add_item', 'Add item', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3741, 1, 'en', 'plugins/language/language', 'name', 'Languages', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3742, 1, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3743, 1, 'en', 'plugins/language/language', 'select_language', 'Select language', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3744, 1, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3745, 1, 'en', 'plugins/language/language', 'language_name', 'Language name', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3746, 1, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3747, 1, 'en', 'plugins/language/language', 'locale', 'Locale', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3748, 1, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3749, 1, 'en', 'plugins/language/language', 'language_code', 'Language code', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3750, 1, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2022-05-13 03:51:15', '2022-05-13 03:51:15'),
(3751, 1, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3752, 1, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3753, 1, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3754, 1, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3755, 1, 'en', 'plugins/language/language', 'flag', 'Flag', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3756, 1, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3757, 1, 'en', 'plugins/language/language', 'order', 'Order', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3758, 1, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3759, 1, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3760, 1, 'en', 'plugins/language/language', 'code', 'Code', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3761, 1, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3762, 1, 'en', 'plugins/language/language', 'actions', 'Actions', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3763, 1, 'en', 'plugins/language/language', 'translations', 'Translations', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3764, 1, 'en', 'plugins/language/language', 'edit', 'Edit', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3765, 1, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3766, 1, 'en', 'plugins/language/language', 'delete', 'Delete', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3767, 1, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3768, 1, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3769, 1, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3770, 1, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3771, 1, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3772, 1, 'en', 'plugins/language/language', 'settings', 'Settings', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3773, 1, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3774, 1, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3775, 1, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3776, 1, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3777, 1, 'en', 'plugins/language/language', 'language_display', 'Language display', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3778, 1, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3779, 1, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3780, 1, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3781, 1, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3782, 1, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3783, 1, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3784, 1, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3785, 1, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3786, 1, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3787, 1, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3788, 1, 'en', 'plugins/language/language', 'show_all', 'Show all', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3789, 1, 'en', 'plugins/language/language', 'change_language', 'Language', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3790, 1, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3791, 1, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3792, 1, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3793, 1, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2022-05-13 03:51:16', '2022-05-13 03:51:16');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3794, 1, 'en', 'plugins/language/language', 'language_auto_detect_user_language', 'Auto detect user language?', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3795, 1, 'en', 'plugins/location/bulk-import', 'name', 'Bulk Import', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3796, 1, 'en', 'plugins/location/bulk-import', 'loading_text', 'Importing', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3797, 1, 'en', 'plugins/location/bulk-import', 'imported_successfully', 'Imported successfully.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3798, 1, 'en', 'plugins/location/bulk-import', 'please_choose_the_file_mime', 'Please choose the file mime :types', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3799, 1, 'en', 'plugins/location/bulk-import', 'please_choose_the_file', 'Please choose the file', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3800, 1, 'en', 'plugins/location/bulk-import', 'start_import', 'Start Import', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3801, 1, 'en', 'plugins/location/bulk-import', 'note', 'Note!', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3802, 1, 'en', 'plugins/location/bulk-import', 'warning_before_importing', 'If this is your first time using this feature, please read the documentation or contact the Administrator for access to the correct functionality!', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3803, 1, 'en', 'plugins/location/bulk-import', 'results', 'Result: :success successes, :failed failures', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3804, 1, 'en', 'plugins/location/bulk-import', 'failures', 'Failures', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3805, 1, 'en', 'plugins/location/bulk-import', 'tables.import', 'Import', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3806, 1, 'en', 'plugins/location/bulk-import', 'template', 'Template', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3807, 1, 'en', 'plugins/location/bulk-import', 'rules', 'Rules', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3808, 1, 'en', 'plugins/location/bulk-import', 'choose_file_with_mime', 'Choose file with mime: (:types)', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3809, 1, 'en', 'plugins/location/bulk-import', 'choose_file', 'Choose file', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3810, 1, 'en', 'plugins/location/bulk-import', 'menu', 'Import locations', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3811, 1, 'en', 'plugins/location/bulk-import', 'download-csv-file', 'Download CSV template', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3812, 1, 'en', 'plugins/location/bulk-import', 'download-excel-file', 'Download Excel template', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3813, 1, 'en', 'plugins/location/bulk-import', 'downloading', 'Downloading...', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3814, 1, 'en', 'plugins/location/bulk-import', 'export.template.input_error', 'Input error', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3815, 1, 'en', 'plugins/location/bulk-import', 'export.template.number_not_allowed', 'Number is not allowed!', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3816, 1, 'en', 'plugins/location/bulk-import', 'export.template.allowed_input', 'Allowed input', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3817, 1, 'en', 'plugins/location/bulk-import', 'export.template.prompt_decimal', 'Only numbers or decimals are accepted and greater than or equal to :min.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3818, 1, 'en', 'plugins/location/bulk-import', 'export.template.prompt_whole_number', 'Only numbers are accepted and greater than or equal to :min.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3819, 1, 'en', 'plugins/location/bulk-import', 'export.template.prompt_list', 'Please pick a value from the drop-down list.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3820, 1, 'en', 'plugins/location/bulk-import', 'export.template.pick_from_list', 'Pick from list', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3821, 1, 'en', 'plugins/location/bulk-import', 'export.template.value_not_in_list', 'Value is not in list.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3822, 1, 'en', 'plugins/location/bulk-import', 'export.template.max_text_length', 'Max text length', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3823, 1, 'en', 'plugins/location/bulk-import', 'export.template.prompt_max_text_length', 'Only accept text with length less than or equal to :max.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3824, 1, 'en', 'plugins/location/bulk-import', 'import_failed_description', 'Import failed, please check the errors below!', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3825, 1, 'en', 'plugins/location/bulk-import', 'available_enable_multi_language', 'Only available when you enable \"Is Multi Language?\"', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3826, 1, 'en', 'plugins/location/bulk-import', 'import_type_required_if', 'The :attribute field is required when \"Import Type\" is :value.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3827, 1, 'en', 'plugins/location/bulk-import', 'import_available_data', 'Import available data', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3828, 1, 'en', 'plugins/location/bulk-import', 'import', 'Import', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3829, 1, 'en', 'plugins/location/bulk-import', 'import_available_data_confirmation', 'Import available data confirmation', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3830, 1, 'en', 'plugins/location/bulk-import', 'import_available_data_confirmation_content', 'Do you really want to import states/cities for this country?', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3831, 1, 'en', 'plugins/location/city', 'name', 'Cities', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3832, 1, 'en', 'plugins/location/city', 'create', 'New city', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3833, 1, 'en', 'plugins/location/city', 'edit', 'Edit city', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3834, 1, 'en', 'plugins/location/city', 'state', 'State', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3835, 1, 'en', 'plugins/location/city', 'select_state', 'Select state...', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3836, 1, 'en', 'plugins/location/city', 'select_city', 'Select city...', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3837, 1, 'en', 'plugins/location/city', 'country', 'Country', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3838, 1, 'en', 'plugins/location/city', 'select_country', 'Select country...', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3839, 1, 'en', 'plugins/location/city', 'city', 'City', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3840, 1, 'en', 'plugins/location/country', 'name', 'Countries', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3841, 1, 'en', 'plugins/location/country', 'create', 'New country', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3842, 1, 'en', 'plugins/location/country', 'edit', 'Edit country', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3843, 1, 'en', 'plugins/location/country', 'nationality', 'Nationality', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3844, 1, 'en', 'plugins/location/country', 'code', 'Country ISO code', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3845, 1, 'en', 'plugins/location/country', 'code_placeholder', 'ISO country code, uppercase. Ex: US.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3846, 1, 'en', 'plugins/location/country', 'code_helper', 'Find country ISO code from here: https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3847, 1, 'en', 'plugins/location/location', 'name', 'Locations', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3848, 1, 'en', 'plugins/location/location', 'create', 'New location', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3849, 1, 'en', 'plugins/location/location', 'edit', 'Edit location', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3850, 1, 'en', 'plugins/location/location', 'all_states', 'All states', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3851, 1, 'en', 'plugins/location/location', 'abbreviation', 'Abbreviation', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3852, 1, 'en', 'plugins/location/location', 'abbreviation_placeholder', 'E.g: CA', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3853, 1, 'en', 'plugins/location/state', 'name', 'States', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3854, 1, 'en', 'plugins/location/state', 'create', 'New state', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3855, 1, 'en', 'plugins/location/state', 'edit', 'Edit state', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3856, 1, 'en', 'plugins/location/state', 'country', 'Country', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3857, 1, 'en', 'plugins/location/state', 'select_country', 'Select a country...', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3858, 1, 'en', 'plugins/location/state', 'state', 'State', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3859, 1, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3860, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3861, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3862, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3863, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3864, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3865, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3866, 1, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3867, 1, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3868, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3869, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3870, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list', 'Mailchimp List', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3871, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3872, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3873, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list', 'Sendgrid List', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3874, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3875, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3876, 1, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3877, 1, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3878, 1, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3879, 1, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3880, 1, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3881, 1, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3882, 1, 'en', 'plugins/payment/payment', 'user', 'User', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3883, 1, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3884, 1, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3885, 1, 'en', 'plugins/payment/payment', 'action', 'Action', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3886, 1, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3887, 1, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3888, 1, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3889, 1, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Fast and safe online payment via PayPal.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3890, 1, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3891, 1, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3892, 1, 'en', 'plugins/payment/payment', 'details', 'Details', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3893, 1, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3894, 1, 'en', 'plugins/payment/payment', 'email', 'Email', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3895, 1, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3896, 1, 'en', 'plugins/payment/payment', 'country', 'Country', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3897, 1, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3898, 1, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3899, 1, 'en', 'plugins/payment/payment', 'card', 'Card', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3900, 1, 'en', 'plugins/payment/payment', 'address', 'Address', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3901, 1, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3902, 1, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3903, 1, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3904, 1, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3905, 1, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3906, 1, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3907, 1, 'en', 'plugins/payment/payment', 'use', 'Use', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3908, 1, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3909, 1, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3910, 1, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3911, 1, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3912, 1, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3913, 1, 'en', 'plugins/payment/payment', 'update', 'Update', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3914, 1, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3915, 1, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3916, 1, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3917, 1, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3918, 1, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3919, 1, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3920, 1, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3921, 1, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3922, 1, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3923, 1, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3924, 1, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3925, 1, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3926, 1, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3927, 1, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3928, 1, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3929, 1, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3930, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2022-05-13 03:51:16', '2022-05-13 03:51:16'),
(3931, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3932, 1, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3933, 1, 'en', 'plugins/payment/payment', 'name', 'Payments', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3934, 1, 'en', 'plugins/payment/payment', 'create', 'New payment', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3935, 1, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3936, 1, 'en', 'plugins/payment/payment', 'information', 'Information', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3937, 1, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3938, 1, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3939, 1, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3940, 1, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3941, 1, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3942, 1, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3943, 1, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3944, 1, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3945, 1, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3946, 1, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3947, 1, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3948, 1, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3949, 1, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3950, 1, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3951, 1, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3952, 1, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3953, 1, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3954, 1, 'en', 'plugins/payment/payment', 'total', 'Total', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3955, 1, 'en', 'plugins/payment/payment', 'status', 'Status', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3956, 1, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3957, 1, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3958, 1, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3959, 1, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3960, 1, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3961, 1, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3962, 1, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3963, 1, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3964, 1, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3965, 1, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3966, 1, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3967, 1, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3968, 1, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3969, 1, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3970, 1, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3971, 1, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3972, 1, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3973, 1, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3974, 1, 'en', 'plugins/payment/payment', 'refunds.description', 'Description', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3975, 1, 'en', 'plugins/payment/payment', 'refunds.refunded_at', 'Refunded at', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3976, 1, 'en', 'plugins/payment/payment', 'refunds.error_message', 'Error message', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3977, 1, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3978, 1, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3979, 1, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3980, 1, 'en', 'plugins/payment/payment', 'amount_refunded', 'Amount refunded', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3981, 1, 'en', 'plugins/payment/payment', 'amount_remaining', 'Amount remaining', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3982, 1, 'en', 'plugins/payment/payment', 'paid_at', 'Paid At', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3983, 1, 'en', 'plugins/payment/payment', 'invalid_settings', 'Settings for :name are invalid!', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3984, 1, 'en', 'plugins/payment/payment', 'view_transaction', 'Transaction \":charge_id\"', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3985, 1, 'en', 'plugins/payment/payment', 'payment_description', 'Pay for your order #:order_id at :site_url', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3986, 1, 'vi', 'plugins/payment/payment', 'payments', 'Thanh to??n', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3987, 1, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh to??n th??nh c??ng!', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3988, 1, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh to??n #', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3989, 1, 'vi', 'plugins/payment/payment', 'charge_id', 'M?? thanh to??n', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3990, 1, 'vi', 'plugins/payment/payment', 'amount', 'S??? ti???n', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3991, 1, 'vi', 'plugins/payment/payment', 'currency', 'Lo???i ti???n t???', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3992, 1, 'vi', 'plugins/payment/payment', 'user', 'Ng?????i d??ng', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3993, 1, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3994, 1, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3995, 1, 'vi', 'plugins/payment/payment', 'action', 'H??nh ?????ng', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3996, 1, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh to??n qua th???', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3997, 1, 'vi', 'plugins/payment/payment', 'card_number', 'S??? th???', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3998, 1, 'vi', 'plugins/payment/payment', 'full_name', 'H??? t??n', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(3999, 1, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh to??n qua PayPal', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4000, 1, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4001, 1, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4002, 1, 'vi', 'plugins/payment/payment', 'details', 'Chi ti???t', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4003, 1, 'vi', 'plugins/payment/payment', 'payer_name', 'T??n ng?????i mua', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4004, 1, 'vi', 'plugins/payment/payment', 'email', 'Email', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4005, 1, 'vi', 'plugins/payment/payment', 'phone', '??i???n tho???i', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4006, 1, 'vi', 'plugins/payment/payment', 'country', 'Qu???c gia', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4007, 1, 'vi', 'plugins/payment/payment', 'shipping_address', '?????a ch??? giao h??ng', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4008, 1, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi ti???t thanh to??n', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4009, 1, 'vi', 'plugins/payment/payment', 'card', 'Th???', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4010, 1, 'vi', 'plugins/payment/payment', 'address', '?????a ch???', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4011, 1, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Kh??ng th??? l???y m?? Stripe ????? thanh to??n.', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4012, 1, 'vi', 'plugins/payment/payment', 'payment_id', 'M?? thanh to??n', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4013, 1, 'vi', 'plugins/payment/payment', 'payment_methods', 'Ph????ng th???c thanh to??n', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4014, 1, 'vi', 'plugins/payment/payment', 'transactions', 'L???ch s??? giao d???ch', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4015, 1, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'C??i ?????t c??c ph????ng th???c thanh to??n cho website', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4016, 1, 'vi', 'plugins/payment/payment', 'paypal_description', 'Kh??ch h??ng c?? th??? mua h??ng v?? thanh to??n tr???c ti???p th??ng qua c???ng thanh to??n PayPal', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4017, 1, 'vi', 'plugins/payment/payment', 'use', 'D??ng', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4018, 1, 'vi', 'plugins/payment/payment', 'stripe_description', 'Kh??ch h??ng c?? th??? mua h??ng v?? thanh to??n b???ng Visa, Credit card th??ng qua c???ng thanh to??n Stripe', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4019, 1, 'vi', 'plugins/payment/payment', 'edit', 'Ch???nh s???a', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4020, 1, 'vi', 'plugins/payment/payment', 'settings', 'C??i ?????t', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4021, 1, 'vi', 'plugins/payment/payment', 'activate', 'K??ch ho???t', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4022, 1, 'vi', 'plugins/payment/payment', 'deactivate', 'Hu??? k??ch ho???t', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4023, 1, 'vi', 'plugins/payment/payment', 'update', 'C???p nh???t', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4024, 1, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'H?????ng d???n c???u h??nh :name', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4025, 1, 'vi', 'plugins/payment/payment', 'configuration_requirement', '????? s??? d???ng :name b???n c???n', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4026, 1, 'vi', 'plugins/payment/payment', 'service_registration', '????ng k?? d???ch v??? v???i :name', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4027, 1, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi ho??n t???t c??c b?????c ????ng k?? t???i :name, b???n s??? c?? c??c th??ng s??? Client ID, Client Secret', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4028, 1, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nh???p c??c th??ng s??? Client ID, Secret v??o ?? b??n ph???i', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4029, 1, 'vi', 'plugins/payment/payment', 'method_name', 'T??n ph????ng th???c', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4030, 1, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui l??ng cung c???p th??ng tin', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4031, 1, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4032, 1, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4033, 1, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4034, 1, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4035, 1, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4036, 1, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4037, 1, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4038, 1, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh to??n online qua :name', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4039, 1, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Ch??? ????? th??? nghi???m', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4040, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Hu??? k??ch ho???t ph????ng th???c', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4041, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'B???n c?? ch???c ch???n mu???n hu??? ph????ng th???c th??nh to??n n??y?', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4042, 1, 'vi', 'plugins/payment/payment', 'agree', '?????ng ??', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4043, 1, 'vi', 'plugins/payment/payment', 'name', 'Thanh to??n', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4044, 1, 'vi', 'plugins/payment/payment', 'create', 'Th??m thanh to??n m???i', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4045, 1, 'vi', 'plugins/payment/payment', 'go_back', 'Tr??? l???i', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4046, 1, 'vi', 'plugins/payment/payment', 'information', 'Th??ng tin', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4047, 1, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4048, 1, 'vi', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4049, 1, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh to??n khi giao h??ng (COD)', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4050, 1, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuy???n kho???n qua ng??n h??ng', '2022-05-13 03:51:17', '2022-05-13 03:51:17'),
(4051, 1, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Ch??a ho??n t???t', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4052, 1, 'vi', 'plugins/payment/payment', 'statuses.completed', '???? ho??n th??nh', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4053, 1, 'vi', 'plugins/payment/payment', 'statuses.refunding', '??ang ho??n ti???n', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4054, 1, 'vi', 'plugins/payment/payment', 'statuses.refunded', '???? ho??n ti???n', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4055, 1, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian l???n', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4056, 1, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Th???t b???i', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4057, 1, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'H?????ng d???n kh??ch h??ng thanh to??n tr???c ti???p. C?? th??? ch???n thanh to??n khi giao h??ng ho???c chuy???n kho???n', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4058, 1, 'vi', 'plugins/payment/payment', 'payment_method_description', 'H?????ng d???n thanh to??n ??? (Hi???n th??? ??? trang th??ng b??o mua h??ng th??nh c??ng v?? trang thanh to??n)', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4059, 1, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh to??n khi nh???n h??ng (COD)', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4060, 1, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuy???n kho???n qua ng??n h??ng', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4061, 1, 'vi', 'plugins/payment/payment', 'payment_pending', 'Th???c hi???n th??nh c??ng. Thanh to??n c???a b???n ??ang ???????c x??? l?? v?? s??? ???????c x??c nh???n b???i nh??n vi??n.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4062, 1, 'vi', 'plugins/payment/payment', 'created_at', 'Ng??y t???o', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4063, 1, 'vi', 'plugins/payment/payment', 'payment_channel', 'Ph????ng th???c thanh to??n', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4064, 1, 'vi', 'plugins/payment/payment', 'total', 'T???ng c???ng', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4065, 1, 'vi', 'plugins/payment/payment', 'status', 'Tr???ng th??i', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4066, 1, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Ph????ng th???c thanh to??n m???c ?????nh', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4067, 1, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4068, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit', 'Edit slider', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4069, 1, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4070, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4071, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4072, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4073, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4074, 1, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4075, 1, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4076, 1, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4077, 1, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4078, 1, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4079, 1, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4080, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4081, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4082, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4083, 1, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4084, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4085, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4086, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4087, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4088, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4089, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4090, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4091, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4092, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4093, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4094, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4095, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4096, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4097, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4098, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4099, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4100, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4101, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4102, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4103, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4104, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4105, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4106, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4107, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4108, 1, 'en', 'plugins/testimonial/testimonial', 'name', 'Testimonials', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4109, 1, 'en', 'plugins/testimonial/testimonial', 'create', 'New testimonial', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4110, 1, 'en', 'plugins/testimonial/testimonial', 'edit', 'Edit testimonial', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4111, 1, 'en', 'plugins/testimonial/testimonial', 'company', 'Position/Company', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4112, 1, 'vi', 'plugins/testimonial/testimonial', 'name', 'Nh???n x??t c???a kh??ch h??ng', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4113, 1, 'vi', 'plugins/testimonial/testimonial', 'create', 'Th??m nh???n x??t m???i', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4114, 1, 'vi', 'plugins/testimonial/testimonial', 'edit', 'S???a nh???n x??t', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4115, 1, 'vi', 'plugins/testimonial/testimonial', 'company', 'Ch???c v???/C??ng ty', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4116, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4117, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4118, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4119, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4120, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4121, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4122, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4123, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4124, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4125, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4126, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4127, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4128, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4129, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4130, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4131, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4132, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4133, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4134, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4135, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4136, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4137, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4138, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4139, 1, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4140, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4141, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4142, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4143, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4144, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4145, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4146, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4147, 1, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4148, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4149, 1, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4150, 1, 'en', 'plugins/translation/translation', 'download', 'Download', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4151, 1, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4152, 1, 'en', 'plugins/translation/translation', 'theme_translations_instruction', 'Click on text to translate. Do NOT translate variables, Eg. :username, :query, :link...', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4153, 1, 'vi', 'auth', 'failed', 'Kh??ng t??m th???y th??ng tin ????ng nh???p h???p l???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4154, 1, 'vi', 'auth', 'throttle', '????ng nh???p kh??ng ????ng qu?? nhi???u l???n. Vui l??ng th??? l???i sau :seconds gi??y.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4155, 1, 'vi', 'auth', 'password', 'M???t kh???u kh??ng ch??nh x??c', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4156, 1, 'vi', 'pagination', 'previous', '&laquo; Tr?????c', '2022-05-13 03:51:18', '2022-05-13 03:51:18');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4157, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4158, 1, 'vi', 'passwords', 'reset', 'M???t kh???u ???? ???????c c???p nh???t!', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4159, 1, 'vi', 'passwords', 'sent', 'Ch??ng t??i ???? g???i cho b???n ???????ng d???n thay ?????i m???t kh???u!', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4160, 1, 'vi', 'passwords', 'token', 'M?? x??c nh???n m???t kh???u kh??ng h???p l???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4161, 1, 'vi', 'passwords', 'user', 'Kh??ng t??m th???y th??nh vi??n v???i ?????a ch??? email n??y.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4162, 1, 'vi', 'validation', 'accepted', 'Tr?????ng :attribute ph???i ???????c ch???p nh???n.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4163, 1, 'vi', 'validation', 'active_url', 'Tr?????ng :attribute kh??ng ph???i l?? m???t URL h???p l???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4164, 1, 'vi', 'validation', 'after', 'Tr?????ng :attribute ph???i l?? m???t ng??y sau ng??y :date.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4165, 1, 'vi', 'validation', 'after_or_equal', 'Tr?????ng :attribute ph???i l?? th???i gian b???t ?????u sau ho???c ????ng b???ng :date.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4166, 1, 'vi', 'validation', 'alpha', 'Tr?????ng :attribute ch??? c?? th??? ch???a c??c ch??? c??i.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4167, 1, 'vi', 'validation', 'alpha_dash', 'Tr?????ng :attribute ch??? c?? th??? ch???a ch??? c??i, s??? v?? d???u g???ch ngang.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4168, 1, 'vi', 'validation', 'alpha_num', 'Tr?????ng :attribute ch??? c?? th??? ch???a ch??? c??i v?? s???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4169, 1, 'vi', 'validation', 'array', 'Tr?????ng :attribute ph???i l?? d???ng m???ng.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4170, 1, 'vi', 'validation', 'before', 'Tr?????ng :attribute ph???i l?? m???t ng??y tr?????c ng??y :date.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4171, 1, 'vi', 'validation', 'before_or_equal', 'Tr?????ng :attribute ph???i l?? th???i gian b???t ?????u tr?????c ho???c ????ng b???ng :date.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4172, 1, 'vi', 'validation', 'between.array', 'Tr?????ng :attribute ph???i c?? t??? :min - :max ph???n t???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4173, 1, 'vi', 'validation', 'between.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute ph???i t??? :min - :max kB.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4174, 1, 'vi', 'validation', 'between.numeric', 'Tr?????ng :attribute ph???i n???m trong kho???ng :min - :max.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4175, 1, 'vi', 'validation', 'between.string', 'Tr?????ng :attribute ph???i t??? :min - :max k?? t???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4176, 1, 'vi', 'validation', 'boolean', 'Tr?????ng :attribute ph???i l?? true ho???c false.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4177, 1, 'vi', 'validation', 'confirmed', 'Gi?? tr??? x??c nh???n trong tr?????ng :attribute kh??ng kh???p.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4178, 1, 'vi', 'validation', 'date', 'Tr?????ng :attribute kh??ng ph???i l?? ?????nh d???ng c???a ng??y-th??ng.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4179, 1, 'vi', 'validation', 'date_equals', 'Tr?????ng :attribute ph???i l?? m???t ng??y b???ng v???i :date.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4180, 1, 'vi', 'validation', 'date_format', 'Tr?????ng :attribute kh??ng gi???ng v???i ?????nh d???ng :format.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4181, 1, 'vi', 'validation', 'different', 'Tr?????ng :attribute v?? :other ph???i kh??c nhau.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4182, 1, 'vi', 'validation', 'digits', '????? d??i c???a tr?????ng :attribute ph???i g???m :digits ch??? s???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4183, 1, 'vi', 'validation', 'digits_between', '????? d??i c???a tr?????ng :attribute ph???i n???m trong kho???ng :min and :max ch??? s???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4184, 1, 'vi', 'validation', 'dimensions', 'Tr?????ng :attribute c?? k??ch th?????c kh??ng h???p l???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4185, 1, 'vi', 'validation', 'distinct', 'Tr?????ng :attribute c?? gi?? tr??? tr??ng l???p.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4186, 1, 'vi', 'validation', 'email', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? email h???p l???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4187, 1, 'vi', 'validation', 'ends_with', 'Tr?????ng :attribute ph???i k???t th??c b???ng m???t trong nh???ng gi?? tr??? sau: :values', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4188, 1, 'vi', 'validation', 'exists', 'Gi?? tr??? ???? ch???n trong tr?????ng :attribute kh??ng h???p l???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4189, 1, 'vi', 'validation', 'file', 'Tr?????ng :attribute ph???i l?? m???t t???p tin.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4190, 1, 'vi', 'validation', 'filled', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4191, 1, 'vi', 'validation', 'gt.array', 'M???ng :attribute ph???i c?? nhi???u h??n :value ph???n t???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4192, 1, 'vi', 'validation', 'gt.file', 'Dung l?????ng tr?????ng :attribute ph???i l???n h??n :value kilobytes.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4193, 1, 'vi', 'validation', 'gt.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i l???n h??n :value.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4194, 1, 'vi', 'validation', 'gt.string', '????? d??i tr?????ng :attribute ph???i nhi???u h??n :value k?? t???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4195, 1, 'vi', 'validation', 'gte.array', 'M???ng :attribute ph???i c?? ??t nh???t :value ph???n t???.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4196, 1, 'vi', 'validation', 'gte.file', 'Dung l?????ng tr?????ng :attribute ph???i l???n h??n ho???c b???ng :value kilobytes.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4197, 1, 'vi', 'validation', 'gte.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i l???n h??n ho???c b???ng :value.', '2022-05-13 03:51:18', '2022-05-13 03:51:18'),
(4198, 1, 'vi', 'validation', 'gte.string', '????? d??i tr?????ng :attribute ph???i l???n h??n ho???c b???ng :value k?? t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4199, 1, 'vi', 'validation', 'image', 'Tr?????ng :attribute ph???i l?? ?????nh d???ng h??nh ???nh.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4200, 1, 'vi', 'validation', 'in', 'Gi?? tr??? ???? ch???n trong tr?????ng :attribute kh??ng h???p l???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4201, 1, 'vi', 'validation', 'in_array', 'Tr?????ng :attribute ph???i thu???c t???p cho ph??p: :other.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4202, 1, 'vi', 'validation', 'integer', 'Tr?????ng :attribute ph???i l?? m???t s??? nguy??n.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4203, 1, 'vi', 'validation', 'ip', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? IP.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4204, 1, 'vi', 'validation', 'ipv4', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? IPv4.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4205, 1, 'vi', 'validation', 'ipv6', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? IPv6.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4206, 1, 'vi', 'validation', 'json', 'Tr?????ng :attribute ph???i l?? m???t chu???i JSON.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4207, 1, 'vi', 'validation', 'lt.array', 'M???ng :attribute ph???i c?? ??t h??n :value ph???n t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4208, 1, 'vi', 'validation', 'lt.file', 'Dung l?????ng tr?????ng :attribute ph???i nh??? h??n :value kilobytes.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4209, 1, 'vi', 'validation', 'lt.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i nh??? h??n :value.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4210, 1, 'vi', 'validation', 'lt.string', '????? d??i tr?????ng :attribute ph???i nh??? h??n :value k?? t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4211, 1, 'vi', 'validation', 'lte.array', 'M???ng :attribute kh??ng ???????c c?? nhi???u h??n :value ph???n t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4212, 1, 'vi', 'validation', 'lte.file', 'Dung l?????ng tr?????ng :attribute ph???i nh??? h??n ho???c b???ng :value kilobytes.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4213, 1, 'vi', 'validation', 'lte.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i nh??? h??n ho???c b???ng :value.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4214, 1, 'vi', 'validation', 'lte.string', '????? d??i tr?????ng :attribute ph???i nh??? h??n ho???c b???ng :value k?? t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4215, 1, 'vi', 'validation', 'max.array', 'Tr?????ng :attribute kh??ng ???????c l???n h??n :max ph???n t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4216, 1, 'vi', 'validation', 'max.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute kh??ng ???????c l???n h??n :max kB.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4217, 1, 'vi', 'validation', 'max.numeric', 'Tr?????ng :attribute kh??ng ???????c l???n h??n :max.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4218, 1, 'vi', 'validation', 'max.string', 'Tr?????ng :attribute kh??ng ???????c l???n h??n :max k?? t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4219, 1, 'vi', 'validation', 'mimes', 'Tr?????ng :attribute ph???i l?? m???t t???p tin c?? ?????nh d???ng: :values.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4220, 1, 'vi', 'validation', 'mimetypes', 'Tr?????ng :attribute ph???i l?? m???t t???p tin c?? ?????nh d???ng: :values.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4221, 1, 'vi', 'validation', 'min.array', 'Tr?????ng :attribute ph???i c?? t???i thi???u :min ph???n t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4222, 1, 'vi', 'validation', 'min.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute ph???i t???i thi???u :min kB.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4223, 1, 'vi', 'validation', 'min.numeric', 'Tr?????ng :attribute ph???i t???i thi???u l?? :min.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4224, 1, 'vi', 'validation', 'min.string', 'Tr?????ng :attribute ph???i c?? t???i thi???u :min k?? t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4225, 1, 'vi', 'validation', 'multiple_of', 'Tr?????ng :attribute ph???i l?? b???i s??? c???a :value', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4226, 1, 'vi', 'validation', 'not_in', 'Gi?? tr??? ???? ch???n trong tr?????ng :attribute kh??ng h???p l???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4227, 1, 'vi', 'validation', 'not_regex', 'Tr?????ng :attribute c?? ?????nh d???ng kh??ng h???p l???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4228, 1, 'vi', 'validation', 'numeric', 'Tr?????ng :attribute ph???i l?? m???t s???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4229, 1, 'vi', 'validation', 'password', 'M???t kh???u kh??ng ????ng.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4230, 1, 'vi', 'validation', 'present', 'Tr?????ng :attribute ph???i ???????c cung c???p.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4231, 1, 'vi', 'validation', 'prohibited', 'Tr?????ng :attribute b??? c???m.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4232, 1, 'vi', 'validation', 'prohibited_if', 'Tr?????ng :attribute b??? c???m khi :other l?? :value.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4233, 1, 'vi', 'validation', 'prohibited_unless', 'Tr?????ng :attribute b??? c???m tr??? khi :other l?? m???t trong :values.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4234, 1, 'vi', 'validation', 'regex', 'Tr?????ng :attribute c?? ?????nh d???ng kh??ng h???p l???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4235, 1, 'vi', 'validation', 'required', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4236, 1, 'vi', 'validation', 'required_if', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi tr?????ng :other l?? :value.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4237, 1, 'vi', 'validation', 'required_unless', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng tr??? khi :other l?? :values.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4238, 1, 'vi', 'validation', 'required_with', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi m???t trong :values c?? gi?? tr???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4239, 1, 'vi', 'validation', 'required_with_all', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi t???t c??? :values c?? gi?? tr???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4240, 1, 'vi', 'validation', 'required_without', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi m???t trong :values kh??ng c?? gi?? tr???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4241, 1, 'vi', 'validation', 'required_without_all', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi t???t c??? :values kh??ng c?? gi?? tr???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4242, 1, 'vi', 'validation', 'same', 'Tr?????ng :attribute v?? :other ph???i gi???ng nhau.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4243, 1, 'vi', 'validation', 'size.array', 'Tr?????ng :attribute ph???i ch???a :size ph???n t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4244, 1, 'vi', 'validation', 'size.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute ph???i b???ng :size kB.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4245, 1, 'vi', 'validation', 'size.numeric', 'Tr?????ng :attribute ph???i b???ng :size.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4246, 1, 'vi', 'validation', 'size.string', 'Tr?????ng :attribute ph???i ch???a :size k?? t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4247, 1, 'vi', 'validation', 'starts_with', 'Tr?????ng :attribute ph???i ???????c b???t ?????u b???ng m???t trong nh???ng gi?? tr??? sau: :values', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4248, 1, 'vi', 'validation', 'string', 'Tr?????ng :attribute ph???i l?? m???t chu???i k?? t???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4249, 1, 'vi', 'validation', 'timezone', 'Tr?????ng :attribute ph???i l?? m???t m??i gi??? h???p l???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4250, 1, 'vi', 'validation', 'unique', 'Tr?????ng :attribute ???? c?? trong c?? s??? d??? li???u.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4251, 1, 'vi', 'validation', 'uploaded', 'Tr?????ng :attribute t???i l??n th???t b???i.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4252, 1, 'vi', 'validation', 'url', 'Tr?????ng :attribute kh??ng gi???ng v???i ?????nh d???ng m???t URL.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4253, 1, 'vi', 'validation', 'uuid', 'Tr?????ng :attribute ph???i l?? m???t chu???i UUID h???p l???.', '2022-05-13 03:51:19', '2022-05-13 03:51:19'),
(4254, 1, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2022-05-13 03:51:19', '2022-05-13 03:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$VruKr1lAop4rE9Cdcvzby.Cb4LCT16HuWO46pU27W.kFUv9ogaGla', '1GfKs8NliOq2uVPr01N5Oso3EtMGwYoDjluabQrDtkILhbRuU2Fe9ZIPmCx7', '2022-05-13 03:50:51', '2022-06-06 14:04:52', 'System', 'Admin', 'botble', NULL, 1, 1, NULL, '2022-06-06 14:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(4, 'CustomMenuWidget', 'footer_sidebar', 'shopwise-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft h\\u1eefu \\u00edch\",\"menu_id\":\"lien-ket-huu-ich\"}', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(5, 'CustomMenuWidget', 'footer_sidebar', 'shopwise-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c\",\"menu_id\":\"danh-muc\"}', '2022-05-13 03:50:52', '2022-05-13 03:50:52'),
(6, 'CustomMenuWidget', 'footer_sidebar', 'shopwise-vi', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"T\\u00e0i kho\\u1ea3n\",\"menu_id\":\"tai-khoan\"}', '2022-05-13 03:50:52', '2022-05-13 03:50:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `ads_translations`
--
ALTER TABLE `ads_translations`
  ADD PRIMARY KEY (`lang_code`,`ads_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_status_index` (`status`),
  ADD KEY `categories_created_at_index` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities_backup`
--
ALTER TABLE `cities_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities_translations`
--
ALTER TABLE `cities_translations`
  ADD PRIMARY KEY (`lang_code`,`cities_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_backup`
--
ALTER TABLE `countries_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_translations`
--
ALTER TABLE `countries_translations`
  ADD PRIMARY KEY (`lang_code`,`countries_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tags_translations`
--
ALTER TABLE `ec_product_tags_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_tags_id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_translations`
--
ALTER TABLE `faqs_translations`
  ADD PRIMARY KEY (`lang_code`,`faqs_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories_translations`
--
ALTER TABLE `faq_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`faq_categories_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `language_meta_backup`
--
ALTER TABLE `language_meta_backup`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_reference_id_index` (`reference_id`),
  ADD KEY `menu_nodes_reference_type_index` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_index` (`status`),
  ADD KEY `posts_author_id_index` (`author_id`),
  ADD KEY `posts_author_type_index` (`author_type`),
  ADD KEY `posts_created_at_index` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states_backup`
--
ALTER TABLE `states_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states_translations`
--
ALTER TABLE `states_translations`
  ADD PRIMARY KEY (`lang_code`,`states_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials_translations`
--
ALTER TABLE `testimonials_translations`
  ADD PRIMARY KEY (`lang_code`,`testimonials_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities_backup`
--
ALTER TABLE `cities_backup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries_backup`
--
ALTER TABLE `countries_backup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `language_meta_backup`
--
ALTER TABLE `language_meta_backup`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states_backup`
--
ALTER TABLE `states_backup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4255;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
