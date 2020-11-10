-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2020 at 01:13 PM
-- Server version: 10.3.25-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuggiin_fleetcartNew`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, '7cl32tL0TkSJ7oiIKpBAdi323OYZq4sH', 1, '2020-07-23 06:50:42', '2020-07-23 01:20:42', '2020-07-23 01:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `is_filterable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attribute_set_id`, `is_filterable`, `created_at`, `updated_at`, `slug`) VALUES
(1, 1, 0, '2020-09-15 12:01:40', '2020-09-15 12:01:40', 'kg');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_categories`
--

CREATE TABLE `attribute_categories` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sets`
--

CREATE TABLE `attribute_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_sets`
--

INSERT INTO `attribute_sets` (`id`, `created_at`, `updated_at`) VALUES
(1, '2020-09-15 12:01:22', '2020-09-15 12:01:22'),
(2, '2020-09-15 15:59:03', '2020-09-15 15:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set_translations`
--

CREATE TABLE `attribute_set_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_set_translations`
--

INSERT INTO `attribute_set_translations` (`id`, `attribute_set_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'GRAM'),
(2, 2, 'en', 'fmcg');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'KG');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_translations`
--

CREATE TABLE `attribute_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'samsung', 1, '2020-07-25 10:38:31', '2020-07-25 10:38:31'),
(2, 'dell', 1, '2020-07-25 10:53:54', '2020-07-25 10:53:54'),
(3, 'lenevo', 1, '2020-07-25 10:56:04', '2020-07-25 10:56:04'),
(4, 'nokia', 1, '2020-07-25 11:00:30', '2020-07-25 11:00:30'),
(5, 'apple', 1, '2020-07-25 11:02:08', '2020-07-25 11:02:08'),
(6, 'nike', 1, '2020-07-25 11:02:33', '2020-07-25 11:02:33'),
(7, 'adidas', 1, '2020-07-25 11:02:50', '2020-07-25 11:02:50'),
(8, 'reebok', 1, '2020-07-25 11:03:07', '2020-07-25 11:03:07'),
(9, 'hp', 1, '2020-07-25 11:03:39', '2020-07-25 11:03:39'),
(10, 'msi', 1, '2020-07-25 11:03:59', '2020-07-25 11:03:59'),
(11, 'boat', 1, '2020-07-25 11:04:18', '2020-07-25 11:04:18'),
(12, 'jbl', 1, '2020-07-25 11:05:04', '2020-07-25 11:05:04'),
(13, 'spykar', 1, '2020-07-25 11:05:16', '2020-07-25 11:05:16'),
(14, 'levis', 1, '2020-07-25 11:06:29', '2020-07-25 11:06:29'),
(15, 'red-chief', 1, '2020-07-25 11:06:53', '2020-07-25 11:06:53'),
(16, 'us-polo-assn', 1, '2020-07-27 10:38:47', '2020-07-27 10:38:47'),
(17, 'india-gate', 1, '2020-07-27 14:28:49', '2020-07-27 14:28:49'),
(18, 'aashirvad', 1, '2020-07-27 14:35:22', '2020-07-27 14:35:22'),
(19, 'haldiram', 1, '2020-07-27 15:01:46', '2020-07-27 15:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `brand_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Samsung'),
(2, 2, 'en', 'DELL'),
(3, 3, 'en', 'LENEVO'),
(4, 4, 'en', 'NOKIA'),
(5, 5, 'en', 'APPLE'),
(6, 6, 'en', 'NIKE'),
(7, 7, 'en', 'ADIDAS'),
(8, 8, 'en', 'REEBOK'),
(9, 9, 'en', 'HP'),
(10, 10, 'en', 'MSI'),
(11, 11, 'en', 'BOAT'),
(12, 12, 'en', 'JBL'),
(13, 13, 'en', 'SPYKAR'),
(14, 14, 'en', 'LEVI\'S'),
(15, 15, 'en', 'RED CHIEF'),
(16, 16, 'en', 'U.S. POLO. ASSN.'),
(17, 17, 'en', 'INDIA GATE'),
(18, 18, 'en', 'AASHIRVAAD'),
(19, 19, 'en', 'HALDIRAM');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_searchable` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `position`, `is_searchable`, `is_active`, `created_at`, `updated_at`) VALUES
(2, NULL, 'electronic', 35, 1, 1, '2020-07-24 12:31:39', '2020-09-22 13:00:13'),
(3, NULL, 'mens-fashion', 56, 1, 1, '2020-07-24 12:37:46', '2020-09-22 13:00:13'),
(4, NULL, 'womens-fashion', 75, 1, 1, '2020-07-24 12:38:22', '2020-09-22 13:00:13'),
(5, NULL, 'kids', 94, 1, 1, '2020-07-24 12:38:38', '2020-09-22 13:00:13'),
(6, 2, 'mobiles', 43, 0, 1, '2020-07-24 12:41:07', '2020-09-22 13:00:13'),
(7, 6, 'smart-phones', 44, 0, 1, '2020-07-24 12:41:43', '2020-09-22 13:00:13'),
(10, 6, 'android', 45, 0, 1, '2020-07-24 12:43:12', '2020-09-22 13:00:13'),
(11, 6, 'iphone', 46, 0, 1, '2020-07-24 12:43:28', '2020-09-22 13:00:13'),
(12, 6, 'brand', 47, 0, 1, '2020-07-24 12:43:57', '2020-09-22 13:00:13'),
(13, 6, 'refurbished', 48, 0, 1, '2020-07-24 12:45:16', '2020-09-22 13:00:13'),
(14, 2, 'mobile-accessories', 49, 0, 1, '2020-07-24 12:46:37', '2020-09-22 13:00:13'),
(15, 14, 'cases-covers', 55, 0, 1, '2020-07-24 12:47:23', '2020-09-22 13:00:13'),
(16, 14, 'cables', 54, 0, 1, '2020-07-24 12:47:57', '2020-09-22 13:00:13'),
(17, 14, 'chargers', 53, 0, 1, '2020-07-24 12:48:20', '2020-09-22 13:00:13'),
(18, 14, 'power-bank', 52, 0, 1, '2020-07-24 12:49:32', '2020-09-22 13:00:13'),
(20, 14, 'head', 50, 0, 1, '2020-07-24 12:52:08', '2020-09-22 13:00:13'),
(21, 14, 'screen-protector', 51, 0, 1, '2020-07-24 12:52:53', '2020-09-22 13:00:13'),
(22, 2, 'laptops', 36, 0, 1, '2020-07-24 12:56:16', '2020-09-22 13:00:13'),
(23, 22, 'mac-book', 37, 0, 1, '2020-07-24 12:56:48', '2020-09-22 13:00:13'),
(24, 22, 'gaming', 38, 0, 1, '2020-07-24 12:57:09', '2020-09-22 13:00:13'),
(25, 2, 'computer-accessories', 39, 0, 1, '2020-07-24 12:58:00', '2020-09-22 13:00:13'),
(26, 25, 'monitor', 40, 0, 1, '2020-07-24 12:58:27', '2020-09-22 13:00:13'),
(27, 25, 'keyboard', 41, 0, 1, '2020-07-24 12:58:46', '2020-09-22 13:00:13'),
(28, 25, 'mouse', 42, 0, 1, '2020-07-24 12:59:18', '2020-09-22 13:00:13'),
(29, 3, 'clothes', 57, 0, 1, '2020-07-24 13:02:35', '2020-09-22 13:00:13'),
(30, 29, 'shirts', 58, 0, 1, '2020-07-24 13:02:50', '2020-09-22 13:00:13'),
(31, 29, 't-shirts', 59, 0, 1, '2020-07-24 13:03:06', '2020-09-22 13:00:13'),
(32, 29, 'jeans', 60, 0, 1, '2020-07-24 13:03:20', '2020-09-22 13:00:13'),
(33, 29, 'sports', 61, 0, 1, '2020-07-24 13:04:33', '2020-09-22 13:00:13'),
(34, 3, 'mens-fashion-accessories', 62, 0, 1, '2020-07-24 13:05:20', '2020-09-22 13:00:13'),
(35, 34, 'belts', 64, 0, 1, '2020-07-24 13:05:35', '2020-09-22 13:00:13'),
(36, 34, 'hair-gel', 65, 0, 1, '2020-07-24 13:06:09', '2020-09-22 13:00:13'),
(39, 34, 'tie', 66, 0, 1, '2020-07-24 13:11:09', '2020-09-22 13:00:13'),
(40, 34, 'body-perfume', 67, 0, 1, '2020-07-24 13:11:38', '2020-09-22 13:00:13'),
(41, 3, 'shoes', 68, 0, 1, '2020-07-24 13:12:36', '2020-09-22 13:00:13'),
(42, 41, 'sneakers', 69, 0, 1, '2020-07-24 13:13:28', '2020-09-22 13:00:13'),
(43, 41, 'sports-shoes', 70, 0, 1, '2020-07-24 13:13:52', '2020-09-22 13:00:13'),
(44, 3, 'hot-clothes', 71, 0, 1, '2020-07-24 13:15:49', '2020-09-22 13:00:13'),
(45, 44, 'jackets', 73, 0, 1, '2020-07-24 13:17:38', '2020-09-22 13:00:13'),
(46, 44, 'sweaters', 74, 0, 1, '2020-07-24 13:17:57', '2020-09-22 13:00:13'),
(47, 44, 'leather-jackets', 72, 0, 1, '2020-07-24 13:18:28', '2020-09-22 13:00:13'),
(48, 34, 'watches', 63, 0, 1, '2020-07-24 13:20:37', '2020-09-22 13:00:13'),
(49, 4, 'clothes-KRSK1Z8S', 87, 0, 1, '2020-07-24 13:23:11', '2020-09-22 13:00:13'),
(50, 49, 'shirts-hZRUORsx', 88, 0, 1, '2020-07-24 13:23:26', '2020-09-22 13:00:13'),
(51, 49, 't-shirts-k1YzOSKD', 89, 0, 1, '2020-07-24 13:23:41', '2020-09-22 13:00:13'),
(52, 49, 'jeans-uEPWoNWC', 90, 0, 1, '2020-07-24 13:23:54', '2020-09-22 13:00:13'),
(53, 49, 'kurtas-suits', 91, 0, 1, '2020-07-24 13:26:20', '2020-09-22 13:00:13'),
(54, 49, 'skirts-palazzos', 92, 0, 1, '2020-07-24 13:26:54', '2020-09-22 13:00:13'),
(55, 49, 'lehenga', 93, 0, 1, '2020-07-24 13:27:15', '2020-09-22 13:00:13'),
(56, 4, 'womens-fashion-accessories', 79, 0, 1, '2020-07-24 13:28:07', '2020-09-22 13:00:13'),
(57, 56, 'handbags-wallets', 80, 0, 1, '2020-07-24 13:28:45', '2020-09-22 13:00:13'),
(58, 56, 'sunglasses', 81, 0, 1, '2020-07-24 13:29:15', '2020-09-22 13:00:13'),
(59, 56, 'watches-ssJAJ75o', 82, 0, 1, '2020-07-24 13:29:37', '2020-09-22 13:00:13'),
(60, 4, 'beauty-personal-care', 83, 0, 1, '2020-07-24 13:30:34', '2020-09-22 13:00:13'),
(61, 60, 'make-up', 86, 0, 1, '2020-07-24 13:31:01', '2020-09-22 13:00:13'),
(62, 60, 'skin-care', 84, 0, 1, '2020-07-24 13:31:34', '2020-09-22 13:00:13'),
(63, 60, 'hair-care', 85, 0, 1, '2020-07-24 13:31:59', '2020-09-22 13:00:13'),
(64, 4, 'shoes-mTVuEaqe', 76, 0, 1, '2020-07-24 13:32:30', '2020-09-22 13:00:13'),
(65, 64, 'snea', 77, 0, 1, '2020-07-24 13:32:47', '2020-09-22 13:00:13'),
(66, 64, 'sports-shoes-A0KHezyQ', 78, 0, 1, '2020-07-24 13:33:12', '2020-09-22 13:00:13'),
(67, 5, 'boy', 95, 0, 1, '2020-07-24 13:35:14', '2020-09-22 13:00:13'),
(68, 5, 'girl', 103, 0, 1, '2020-07-24 13:35:29', '2020-09-22 13:00:13'),
(69, 67, 'shirts-QOWvXOhj', 98, 0, 1, '2020-07-24 13:35:50', '2020-09-22 13:00:13'),
(70, 67, 't-shirts-wPucAO0R', 99, 0, 1, '2020-07-24 13:38:16', '2020-09-22 13:00:13'),
(71, 67, 'pants', 100, 0, 1, '2020-07-24 13:38:31', '2020-09-22 13:00:13'),
(72, 67, 'partywear', 101, 0, 1, '2020-07-24 13:40:06', '2020-09-22 13:00:13'),
(73, 67, 'sports-activewear', 102, 0, 1, '2020-07-24 13:40:33', '2020-09-22 13:00:13'),
(74, 67, 'nightwear', 97, 0, 1, '2020-07-24 13:40:52', '2020-09-22 13:00:13'),
(75, 67, 'winterwear', 96, 0, 1, '2020-07-24 13:41:10', '2020-09-22 13:00:13'),
(76, 68, 't-shirts-tops', 109, 0, 1, '2020-07-24 13:41:48', '2020-09-22 13:00:13'),
(77, 68, 'skirts-shorts', 104, 0, 1, '2020-07-24 13:42:41', '2020-09-22 13:00:13'),
(78, 68, 'partywear-TWLB4DnA', 105, 0, 1, '2020-07-24 13:43:05', '2020-09-22 13:00:13'),
(80, 68, 'nightwear-l4kgbFyk', 106, 0, 1, '2020-07-24 13:44:36', '2020-09-22 13:00:13'),
(81, 68, 'sports-activewear-mXrgO8iK', 107, 0, 1, '2020-07-24 13:45:19', '2020-09-22 13:00:13'),
(82, 68, 'jeans-trousers', 108, 0, 1, '2020-07-24 13:45:54', '2020-09-22 13:00:13'),
(83, NULL, 'home-appliances', 0, 0, 1, '2020-07-24 13:48:07', '2020-09-22 13:00:13'),
(84, 83, 'bed', 1, 0, 1, '2020-07-24 13:49:17', '2020-09-22 13:00:13'),
(85, 83, 'bath', 4, 0, 1, '2020-07-24 13:49:32', '2020-09-22 13:00:13'),
(86, 83, 'home-decor', 10, 0, 1, '2020-07-24 13:50:11', '2020-09-22 13:00:13'),
(87, 83, 'kitchen-dining', 11, 0, 1, '2020-07-24 13:50:41', '2020-09-22 13:00:13'),
(88, 87, 'cups-mugs', 12, 0, 1, '2020-07-24 13:52:58', '2020-09-22 13:00:13'),
(89, 87, 'trays-platters', 13, 0, 1, '2020-07-24 13:53:25', '2020-09-22 13:00:13'),
(90, 87, 'cookware-bakeware', 14, 0, 1, '2020-07-24 13:53:52', '2020-09-22 13:00:13'),
(91, 87, 'coasters', 15, 0, 1, '2020-07-24 13:54:24', '2020-09-22 13:00:13'),
(92, 84, 'bedsheets', 2, 0, 1, '2020-07-24 13:54:52', '2020-09-22 13:00:13'),
(93, 85, 'pillows-pillows-covers', 7, 0, 1, '2020-07-24 13:55:17', '2020-09-22 13:00:13'),
(94, 84, 'matters-protector', 3, 0, 1, '2020-07-24 13:56:25', '2020-09-22 13:00:13'),
(95, 85, 'bath-towels', 5, 0, 1, '2020-07-24 14:00:00', '2020-09-22 13:00:13'),
(96, 85, 'towel-set', 6, 0, 1, '2020-07-24 14:01:24', '2020-09-22 13:00:13'),
(97, 85, 'shower-curtains', 8, 0, 1, '2020-07-24 14:02:23', '2020-09-22 13:00:13'),
(98, 85, 'bathroom-accessories', 9, 0, 1, '2020-07-24 14:03:21', '2020-09-22 13:00:13'),
(100, NULL, 'backpacks', 29, 0, 1, '2020-07-27 13:27:04', '2020-09-22 13:00:13'),
(101, 100, 'leather-backpacks', 31, 0, 1, '2020-07-27 13:29:23', '2020-09-22 13:00:13'),
(102, 100, 'laptop-backpacks', 32, 0, 1, '2020-07-27 13:30:48', '2020-09-22 13:00:13'),
(103, 100, 'casual-backpacks', 33, 0, 1, '2020-07-27 13:31:16', '2020-09-22 13:00:13'),
(105, 100, 'sports-backpacks', 30, 0, 1, '2020-07-27 13:31:55', '2020-09-22 13:00:13'),
(106, NULL, 'jewellery', 26, 0, 1, '2020-07-27 13:46:14', '2020-09-22 13:00:13'),
(107, 106, 'mens-jewellery', 28, 0, 1, '2020-07-27 13:47:08', '2020-09-22 13:00:13'),
(108, 106, 'womens-jewellery', 27, 0, 1, '2020-07-27 13:47:45', '2020-09-22 13:00:13'),
(109, NULL, 'essentials', 16, 0, 1, '2020-07-27 13:48:25', '2020-09-22 13:00:13'),
(110, 109, 'mens-essential', 17, 0, 1, '2020-07-27 13:49:25', '2020-09-22 13:00:13'),
(111, 109, 'womens-essentials', 18, 0, 1, '2020-07-27 13:50:16', '2020-09-22 13:00:13'),
(112, 109, 'kids-essentials', 19, 0, 1, '2020-07-27 13:56:49', '2020-09-22 13:00:13'),
(113, NULL, 'grocery', 20, 0, 1, '2020-07-27 14:06:52', '2020-09-22 13:00:13'),
(114, 113, 'rice', 21, 0, 1, '2020-07-27 14:07:16', '2020-09-22 13:00:13'),
(115, 113, 'pulse', 22, 0, 1, '2020-07-27 14:12:59', '2020-09-22 13:00:13'),
(116, 113, 'dry-fruits', 23, 0, 1, '2020-07-27 14:13:55', '2020-09-22 13:00:13'),
(117, NULL, 'food', 24, 0, 1, '2020-09-15 11:57:44', '2020-09-22 13:00:13'),
(118, NULL, 'fmcg', 25, 0, 1, '2020-09-15 11:58:08', '2020-09-22 13:00:13'),
(119, NULL, 'food-bmZIyESU', 34, 1, 1, '2020-09-15 15:53:53', '2020-09-22 13:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(2, 2, 'en', 'Electronic'),
(3, 3, 'en', 'Men\'s Fashion'),
(4, 4, 'en', 'Women\"s Fashion'),
(5, 5, 'en', 'Kid\'s'),
(6, 6, 'en', 'Mobiles'),
(7, 7, 'en', 'Smart Phones'),
(10, 10, 'en', 'Android'),
(11, 11, 'en', 'iphone'),
(12, 12, 'en', 'Brands'),
(13, 13, 'en', 'Refurbished'),
(14, 14, 'en', 'Mobile Accessories'),
(15, 15, 'en', 'Cases & Covers'),
(16, 16, 'en', 'Cables'),
(17, 17, 'en', 'Chargers'),
(18, 18, 'en', 'Power Bank'),
(20, 20, 'en', 'Headphones'),
(21, 21, 'en', 'Screen Protector'),
(22, 22, 'en', 'Laptops'),
(23, 23, 'en', 'Mac Book'),
(24, 24, 'en', 'Gaming'),
(25, 25, 'en', 'Computer Accessories'),
(26, 26, 'en', 'Monitor'),
(27, 27, 'en', 'Keyboard'),
(28, 28, 'en', 'Mouse'),
(29, 29, 'en', 'Clothes'),
(30, 30, 'en', 'Shirts'),
(31, 31, 'en', 'T-Shirts'),
(32, 32, 'en', 'Jeans'),
(33, 33, 'en', 'Sports'),
(34, 34, 'en', 'Men\'s Fashion Accessories'),
(35, 35, 'en', 'Belts'),
(36, 36, 'en', 'Hair Gel'),
(39, 39, 'en', 'Tie'),
(40, 40, 'en', 'Body Perfume'),
(41, 41, 'en', 'Shoes'),
(42, 42, 'en', 'Sneakers'),
(43, 43, 'en', 'Sports Shoes'),
(44, 44, 'en', 'Hot Clothes'),
(45, 45, 'en', 'Jackets'),
(46, 46, 'en', 'Sweaters'),
(47, 47, 'en', 'Leather Jackets'),
(48, 48, 'en', 'Watches'),
(49, 49, 'en', 'Clothes'),
(50, 50, 'en', 'Shirts'),
(51, 51, 'en', 'T-Shirts'),
(52, 52, 'en', 'Jeans'),
(53, 53, 'en', 'Kurtas & Suits'),
(54, 54, 'en', 'Skirts & Palazzos'),
(55, 55, 'en', 'Lehenga'),
(56, 56, 'en', 'Women\"s Fashion Accessories'),
(57, 57, 'en', 'Handbags & Wallets'),
(58, 58, 'en', 'Sunglasses'),
(59, 59, 'en', 'Watches'),
(60, 60, 'en', 'Beauty & Personal Care'),
(61, 61, 'en', 'Make Up'),
(62, 62, 'en', 'Skin Care'),
(63, 63, 'en', 'Hair Care'),
(64, 64, 'en', 'Shoes'),
(65, 65, 'en', 'Snea'),
(66, 66, 'en', 'Sports Shoes'),
(67, 67, 'en', 'Boy'),
(68, 68, 'en', 'Girl'),
(69, 69, 'en', 'Shirts'),
(70, 70, 'en', 'T-Shirts'),
(71, 71, 'en', 'Jeans & Trousers'),
(72, 72, 'en', 'Partywear'),
(73, 73, 'en', 'Sports & Activewear'),
(74, 74, 'en', 'Nightwear'),
(75, 75, 'en', 'Winterwear'),
(76, 76, 'en', 'T-Shirts & Tops'),
(77, 77, 'en', 'Skirts & Shorts'),
(78, 78, 'en', 'Partywear'),
(80, 80, 'en', 'Nightwear'),
(81, 81, 'en', 'Sports & Activewear'),
(82, 82, 'en', 'Jeans & Trousers'),
(83, 83, 'en', 'Home Appliances'),
(84, 84, 'en', 'Bed'),
(85, 85, 'en', 'Bath'),
(86, 86, 'en', 'Home Decor'),
(87, 87, 'en', 'Kitchen & Dining'),
(88, 88, 'en', 'Cups & Mugs'),
(89, 89, 'en', 'Trays & Platters'),
(90, 90, 'en', 'Cookware & Bakeware'),
(91, 91, 'en', 'Coasters'),
(92, 92, 'en', 'Bedsheets'),
(93, 93, 'en', 'Pillows & Pillows Covers'),
(94, 94, 'en', 'Matters Protector'),
(95, 95, 'en', 'Bath Towels'),
(96, 96, 'en', 'Towel Set'),
(97, 97, 'en', 'Shower Curtains'),
(98, 98, 'en', 'Bathroom Accessories'),
(100, 100, 'en', 'Backpacks'),
(101, 101, 'en', 'Leather Backpacks'),
(102, 102, 'en', 'Laptop Backpacks'),
(103, 103, 'en', 'Casual Backpacks'),
(105, 105, 'en', 'Sports Backpacks'),
(106, 106, 'en', 'Jewellery'),
(107, 107, 'en', 'Men\'s Jewellery'),
(108, 108, 'en', 'Women\"s Jewellery'),
(109, 109, 'en', 'Essentials'),
(110, 110, 'en', 'Men\'s Essentials'),
(111, 111, 'en', 'Women\"s Essentials'),
(112, 112, 'en', 'Kid\'s Essentials'),
(113, 113, 'en', 'GROCERY'),
(114, 114, 'en', 'Rice'),
(115, 115, 'en', 'Pulse'),
(116, 116, 'en', 'Dry Fruits'),
(117, 117, 'en', 'FOOD'),
(118, 118, 'en', 'FMCG'),
(119, 119, 'en', 'food');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(18,4) UNSIGNED DEFAULT NULL,
  `is_percent` tinyint(1) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL,
  `minimum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `maximum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `usage_limit_per_coupon` int(10) UNSIGNED DEFAULT NULL,
  `usage_limit_per_customer` int(10) UNSIGNED DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_translations`
--

CREATE TABLE `coupon_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cross_sell_products`
--

CREATE TABLE `cross_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `cross_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `currency`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', 1.0000, '2020-07-23 01:20:43', '2020-07-25 15:48:56'),
(2, 'INR', 1.0000, '2020-07-28 12:06:12', '2020-07-28 12:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `entity_files`
--

CREATE TABLE `entity_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entity_files`
--

INSERT INTO `entity_files` (`id`, `file_id`, `entity_type`, `entity_id`, `zone`, `created_at`, `updated_at`) VALUES
(1, 20, 'Modules\\Category\\Entities\\Category', 99, 'logo', '2020-07-26 16:23:09', '2020-07-26 16:23:09'),
(2, 20, 'Modules\\Category\\Entities\\Category', 99, 'banner', '2020-07-26 16:23:09', '2020-07-26 16:23:09'),
(14, 35, 'Modules\\Product\\Entities\\Product', 17, 'base_image', '2020-07-27 08:21:36', '2020-07-27 08:21:36'),
(15, 36, 'Modules\\Product\\Entities\\Product', 17, 'additional_images', '2020-07-27 08:21:36', '2020-07-27 08:21:36'),
(16, 37, 'Modules\\Product\\Entities\\Product', 17, 'additional_images', '2020-07-27 08:21:36', '2020-07-27 08:21:36'),
(17, 38, 'Modules\\Product\\Entities\\Product', 16, 'base_image', '2020-07-27 08:23:43', '2020-07-27 08:23:43'),
(18, 38, 'Modules\\Product\\Entities\\Product', 16, 'additional_images', '2020-07-27 08:23:43', '2020-07-27 08:23:43'),
(19, 39, 'Modules\\Product\\Entities\\Product', 16, 'additional_images', '2020-07-27 08:23:43', '2020-07-27 08:23:43'),
(20, 42, 'Modules\\Product\\Entities\\Product', 15, 'base_image', '2020-07-27 08:27:06', '2020-07-27 08:27:06'),
(21, 42, 'Modules\\Product\\Entities\\Product', 15, 'additional_images', '2020-07-27 08:27:06', '2020-07-27 08:27:06'),
(22, 43, 'Modules\\Product\\Entities\\Product', 15, 'additional_images', '2020-07-27 08:27:06', '2020-07-27 08:27:06'),
(23, 44, 'Modules\\Product\\Entities\\Product', 15, 'additional_images', '2020-07-27 08:27:06', '2020-07-27 08:27:06'),
(24, 45, 'Modules\\Product\\Entities\\Product', 14, 'base_image', '2020-07-27 08:43:48', '2020-07-27 08:43:48'),
(25, 47, 'Modules\\Product\\Entities\\Product', 14, 'additional_images', '2020-07-27 08:43:48', '2020-07-27 08:43:48'),
(26, 48, 'Modules\\Product\\Entities\\Product', 14, 'additional_images', '2020-07-27 08:43:48', '2020-07-27 08:43:48'),
(27, 46, 'Modules\\Product\\Entities\\Product', 14, 'additional_images', '2020-07-27 08:43:48', '2020-07-27 08:43:48'),
(28, 49, 'Modules\\Product\\Entities\\Product', 13, 'base_image', '2020-07-27 08:46:08', '2020-07-27 08:46:08'),
(29, 50, 'Modules\\Product\\Entities\\Product', 13, 'additional_images', '2020-07-27 08:46:08', '2020-07-27 08:46:08'),
(30, 51, 'Modules\\Product\\Entities\\Product', 13, 'additional_images', '2020-07-27 08:46:08', '2020-07-27 08:46:08'),
(31, 52, 'Modules\\Product\\Entities\\Product', 13, 'additional_images', '2020-07-27 08:46:08', '2020-07-27 08:46:08'),
(32, 53, 'Modules\\Product\\Entities\\Product', 12, 'base_image', '2020-07-27 08:52:51', '2020-07-27 08:52:51'),
(33, 56, 'Modules\\Product\\Entities\\Product', 12, 'additional_images', '2020-07-27 08:52:51', '2020-07-27 08:52:51'),
(34, 55, 'Modules\\Product\\Entities\\Product', 12, 'additional_images', '2020-07-27 08:52:51', '2020-07-27 08:52:51'),
(35, 57, 'Modules\\Product\\Entities\\Product', 12, 'additional_images', '2020-07-27 08:52:51', '2020-07-27 08:52:51'),
(36, 58, 'Modules\\Product\\Entities\\Product', 11, 'base_image', '2020-07-27 09:00:03', '2020-07-27 09:00:03'),
(37, 58, 'Modules\\Product\\Entities\\Product', 11, 'additional_images', '2020-07-27 09:00:03', '2020-07-27 09:00:03'),
(38, 59, 'Modules\\Product\\Entities\\Product', 11, 'additional_images', '2020-07-27 09:00:03', '2020-07-27 09:00:03'),
(39, 60, 'Modules\\Product\\Entities\\Product', 11, 'additional_images', '2020-07-27 09:00:03', '2020-07-27 09:00:03'),
(40, 62, 'Modules\\Product\\Entities\\Product', 10, 'base_image', '2020-07-27 09:03:38', '2020-07-27 09:03:38'),
(41, 65, 'Modules\\Product\\Entities\\Product', 10, 'additional_images', '2020-07-27 09:03:38', '2020-07-27 09:03:38'),
(42, 64, 'Modules\\Product\\Entities\\Product', 10, 'additional_images', '2020-07-27 09:03:38', '2020-07-27 09:03:38'),
(43, 63, 'Modules\\Product\\Entities\\Product', 10, 'additional_images', '2020-07-27 09:03:38', '2020-07-27 09:03:38'),
(44, 66, 'Modules\\Product\\Entities\\Product', 9, 'base_image', '2020-07-27 09:05:55', '2020-07-27 09:05:55'),
(45, 69, 'Modules\\Product\\Entities\\Product', 9, 'additional_images', '2020-07-27 09:05:55', '2020-07-27 09:05:55'),
(46, 68, 'Modules\\Product\\Entities\\Product', 9, 'additional_images', '2020-07-27 09:05:55', '2020-07-27 09:05:55'),
(47, 67, 'Modules\\Product\\Entities\\Product', 9, 'additional_images', '2020-07-27 09:05:55', '2020-07-27 09:05:55'),
(48, 70, 'Modules\\Product\\Entities\\Product', 8, 'base_image', '2020-07-27 10:03:01', '2020-07-27 10:03:01'),
(49, 71, 'Modules\\Product\\Entities\\Product', 8, 'additional_images', '2020-07-27 10:03:01', '2020-07-27 10:03:01'),
(50, 72, 'Modules\\Product\\Entities\\Product', 8, 'additional_images', '2020-07-27 10:03:01', '2020-07-27 10:03:01'),
(51, 73, 'Modules\\Product\\Entities\\Product', 7, 'base_image', '2020-07-27 10:09:28', '2020-07-27 10:09:28'),
(52, 75, 'Modules\\Product\\Entities\\Product', 7, 'additional_images', '2020-07-27 10:09:28', '2020-07-27 10:09:28'),
(53, 74, 'Modules\\Product\\Entities\\Product', 7, 'additional_images', '2020-07-27 10:09:28', '2020-07-27 10:09:28'),
(54, 76, 'Modules\\Product\\Entities\\Product', 6, 'base_image', '2020-07-27 10:11:32', '2020-07-27 10:11:32'),
(55, 77, 'Modules\\Product\\Entities\\Product', 6, 'additional_images', '2020-07-27 10:11:32', '2020-07-27 10:11:32'),
(56, 78, 'Modules\\Product\\Entities\\Product', 6, 'additional_images', '2020-07-27 10:11:32', '2020-07-27 10:11:32'),
(57, 79, 'Modules\\Product\\Entities\\Product', 6, 'additional_images', '2020-07-27 10:11:32', '2020-07-27 10:11:32'),
(58, 80, 'Modules\\Product\\Entities\\Product', 5, 'base_image', '2020-07-27 10:14:05', '2020-07-27 10:14:05'),
(59, 81, 'Modules\\Product\\Entities\\Product', 5, 'additional_images', '2020-07-27 10:14:05', '2020-07-27 10:14:05'),
(60, 82, 'Modules\\Product\\Entities\\Product', 5, 'additional_images', '2020-07-27 10:14:05', '2020-07-27 10:14:05'),
(61, 83, 'Modules\\Product\\Entities\\Product', 4, 'base_image', '2020-07-27 10:16:57', '2020-07-27 10:16:57'),
(62, 85, 'Modules\\Product\\Entities\\Product', 4, 'additional_images', '2020-07-27 10:16:57', '2020-07-27 10:16:57'),
(63, 84, 'Modules\\Product\\Entities\\Product', 4, 'additional_images', '2020-07-27 10:16:57', '2020-07-27 10:16:57'),
(64, 86, 'Modules\\Product\\Entities\\Product', 3, 'base_image', '2020-07-27 10:19:15', '2020-07-27 10:19:15'),
(65, 87, 'Modules\\Product\\Entities\\Product', 2, 'base_image', '2020-07-27 10:21:23', '2020-07-27 10:21:23'),
(66, 88, 'Modules\\Product\\Entities\\Product', 2, 'additional_images', '2020-07-27 10:21:23', '2020-07-27 10:21:23'),
(67, 89, 'Modules\\Product\\Entities\\Product', 1, 'base_image', '2020-07-27 10:22:57', '2020-07-27 10:22:57'),
(68, 24, 'Modules\\Product\\Entities\\Product', 21, 'base_image', '2020-07-27 10:23:54', '2020-07-27 10:23:54'),
(69, 25, 'Modules\\Product\\Entities\\Product', 20, 'base_image', '2020-07-27 10:29:28', '2020-07-27 10:29:28'),
(70, 26, 'Modules\\Product\\Entities\\Product', 20, 'additional_images', '2020-07-27 10:29:28', '2020-07-27 10:29:28'),
(71, 27, 'Modules\\Product\\Entities\\Product', 20, 'additional_images', '2020-07-27 10:29:28', '2020-07-27 10:29:28'),
(72, 28, 'Modules\\Product\\Entities\\Product', 20, 'additional_images', '2020-07-27 10:29:28', '2020-07-27 10:29:28'),
(73, 29, 'Modules\\Product\\Entities\\Product', 19, 'base_image', '2020-07-27 10:29:41', '2020-07-27 10:29:41'),
(74, 29, 'Modules\\Product\\Entities\\Product', 19, 'additional_images', '2020-07-27 10:29:41', '2020-07-27 10:29:41'),
(75, 30, 'Modules\\Product\\Entities\\Product', 19, 'additional_images', '2020-07-27 10:29:41', '2020-07-27 10:29:41'),
(76, 32, 'Modules\\Product\\Entities\\Product', 18, 'base_image', '2020-07-27 10:29:54', '2020-07-27 10:29:54'),
(77, 32, 'Modules\\Product\\Entities\\Product', 18, 'additional_images', '2020-07-27 10:29:54', '2020-07-27 10:29:54'),
(78, 33, 'Modules\\Product\\Entities\\Product', 18, 'additional_images', '2020-07-27 10:29:54', '2020-07-27 10:29:54'),
(79, 107, 'Modules\\Product\\Entities\\Product', 22, 'base_image', '2020-07-27 14:38:59', '2020-07-27 14:38:59'),
(80, 109, 'Modules\\Product\\Entities\\Product', 23, 'base_image', '2020-07-27 14:42:33', '2020-07-27 14:42:33'),
(81, 112, 'Modules\\Product\\Entities\\Product', 24, 'base_image', '2020-07-27 14:49:44', '2020-07-27 14:49:44'),
(82, 113, 'Modules\\Category\\Entities\\Category', 22, 'logo', '2020-07-27 14:50:58', '2020-07-27 14:50:58'),
(83, 114, 'Modules\\Category\\Entities\\Category', 6, 'logo', '2020-07-27 14:53:49', '2020-07-27 14:53:49'),
(85, 115, 'Modules\\Product\\Entities\\Product', 25, 'base_image', '2020-07-27 14:55:16', '2020-07-27 14:55:16'),
(86, 116, 'Modules\\Category\\Entities\\Category', 48, 'logo', '2020-07-27 14:58:57', '2020-07-27 14:58:57'),
(87, 117, 'Modules\\Product\\Entities\\Product', 26, 'base_image', '2020-07-27 15:05:31', '2020-07-27 15:05:31'),
(88, 118, 'Modules\\Product\\Entities\\Product', 27, 'base_image', '2020-07-27 15:08:46', '2020-07-27 15:08:46'),
(89, 119, 'Modules\\Category\\Entities\\Category', 3, 'logo', '2020-07-27 16:30:25', '2020-07-27 16:30:25'),
(90, 120, 'Modules\\Category\\Entities\\Category', 106, 'logo', '2020-07-27 16:33:19', '2020-07-27 16:33:19'),
(91, 121, 'Modules\\Category\\Entities\\Category', 113, 'logo', '2020-07-27 16:35:48', '2020-07-27 16:35:48'),
(92, 122, 'Modules\\Category\\Entities\\Category', 59, 'logo', '2020-07-27 16:44:16', '2020-07-27 16:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(20, 1, 'personnel.png', 'public_storage', 'media/Agykbivo5MdXg0ruayaunOR8DLGnl8vH8fwnzisl.png', 'png', 'image/png', '41399', '2020-07-26 16:17:10', '2020-07-26 16:17:10'),
(21, 1, 'YNwjRRdm8RyQRq6jF4JUdwJaCMWFvKBaeqed78Vg.webp', 'public_storage', 'media/8aXBqJd3Rqx3RUdktg1IKauo1X7ne2Lb6ErgDoY4.webp', 'webp', 'image/webp', '45062', '2020-07-26 17:12:02', '2020-07-26 17:12:02'),
(22, 1, 'poKEWxtCIC1lbh9ldsVP5ED2WnhyjGkQHvdsW5YM.webp', 'public_storage', 'media/cajEm3D5qUpJfi12N2tH6CwlBDyqQBBnDYI1OjbA.webp', 'webp', 'image/webp', '9964', '2020-07-26 17:24:49', '2020-07-26 17:24:49'),
(23, 1, 'cpX550XTke137wP71XC4bd6vGf68l6emVynXq3HJ.webp', 'public_storage', 'media/StHfNzK6OlJb832CTvqoijGhp9mO349D13GUDk0D.webp', 'webp', 'image/webp', '1610', '2020-07-26 17:26:42', '2020-07-26 17:26:42'),
(24, 1, 'LENEVO BANNER.jpg', 'public_storage', 'media/JlsxTOdtf8nDBBkYZvISQeNCbX8j4a0oqX9IdFMF.jpeg', 'jpeg', 'image/jpeg', '382266', '2020-07-26 17:33:39', '2020-07-26 17:33:39'),
(25, 1, 'KfHRX0bFpPiquCMEvPpPhFEJZdzfh0A1lohB7yT6.webp', 'public_storage', 'media/w7VJJEnLjiw0jBcAw5pUEgKkHhbqSG0iWE1FKs0N.webp', 'webp', 'image/webp', '37568', '2020-07-27 08:11:24', '2020-07-27 08:11:24'),
(26, 1, 'NtnP9ktQfOAl3K4LGxAm7R3SrXkkEQdE6vbRiGRe.webp', 'public_storage', 'media/ENwZUB7b94Fz2DercfwNkkqDk6sIrgU9DYOTVd3f.webp', 'webp', 'image/webp', '60270', '2020-07-27 08:12:20', '2020-07-27 08:12:20'),
(27, 1, 'PiXLXLbAdkjhNVju7SEqb8WZfqedTo7XVW9s6NAX.webp', 'public_storage', 'media/vMsrdD733adtBC4auTthekIc4uoEyot7PW4WOLdy.webp', 'webp', 'image/webp', '71010', '2020-07-27 08:12:21', '2020-07-27 08:12:21'),
(28, 1, 'msY35C8ab6WGMYZQHhQYzKOXbInZn0u1VHlaflfT.webp', 'public_storage', 'media/k1EFJwTec2ilzhmQKt6QQbu8fkx6tBaZ92M0lDkm.webp', 'webp', 'image/webp', '53624', '2020-07-27 08:12:24', '2020-07-27 08:12:24'),
(29, 1, 'Wr2V4ds4Ymqse06rBe4SCliGFTA6EesLO9OD9fZ2.webp', 'public_storage', 'media/DjHZaYFvZcvQCjIBSAYcIOUlHnIrAg5XakdxReJI.webp', 'webp', 'image/webp', '34486', '2020-07-27 08:14:24', '2020-07-27 08:14:24'),
(30, 1, 'QgdKYPumIqadvJEfiuU0lULhI1WrX4VDMLHVh2S8 (1).webp', 'public_storage', 'media/XYEW61XYP4bkg65KSbvZnDqJGvtn9fW7Xe8YVOCH.webp', 'webp', 'image/webp', '15436', '2020-07-27 08:14:47', '2020-07-27 08:14:47'),
(31, 1, 'Wr2V4ds4Ymqse06rBe4SCliGFTA6EesLO9OD9fZ2.webp', 'public_storage', 'media/5sjOswH0njQRWs9IiGeUjbqbXqIzY5gJ5L0UDtHN.webp', 'webp', 'image/webp', '34486', '2020-07-27 08:14:47', '2020-07-27 08:14:47'),
(32, 1, '81KPk6ZeglL._SL1500_.jpg', 'public_storage', 'media/QbPndjlSjOMGs6G6kOMNsoPjtEpao0KOw7pwzeLg.jpeg', 'jpeg', 'image/jpeg', '109612', '2020-07-27 08:18:40', '2020-07-27 08:18:40'),
(33, 1, 'HP-Spectre-X360-15-bl075nr-Z4Z37UA-Laptop-Core-i7-7th-Gen16-GB512-GB-SSDWindows-102-GB.jpg', 'public_storage', 'media/KFtuZKUYsVB04xuc6dtZ4280WN7cMjiLuAslWbf4.jpeg', 'jpeg', 'image/jpeg', '6249', '2020-07-27 08:18:57', '2020-07-27 08:18:57'),
(34, 1, 'hp_spectre_x360_13_2019_main-100812335-large.3x2.jpg', 'public_storage', 'media/eC4QI9tOoZr5D8yHu1crJKYdNr9CD2HTJiNLdXij.jpeg', 'jpeg', 'image/jpeg', '119236', '2020-07-27 08:18:57', '2020-07-27 08:18:57'),
(35, 1, 'MSI-GS65-Stealth-006-screen.jpg', 'public_storage', 'media/Bjyb2a6TD9LjrttOCO0wOwYJRHAUQ5sdjm1Ej18m.jpeg', 'jpeg', 'image/jpeg', '25009', '2020-07-27 08:20:58', '2020-07-27 08:20:58'),
(36, 1, 'dsc04169_final-100796414-large.jpg', 'public_storage', 'media/p8RrO2Y8bIxS3G5c0agKfP7uDz2Jor6Qci2ExWGn.jpeg', 'jpeg', 'image/jpeg', '213442', '2020-07-27 08:21:15', '2020-07-27 08:21:15'),
(37, 1, 'trbLrwLNXC6rexvkGAxTbS.jpg', 'public_storage', 'media/wIGx7IjU8NLaubgdTMnDR5IDNKs6EazT0s2O02zd.jpeg', 'jpeg', 'image/jpeg', '688121', '2020-07-27 08:21:22', '2020-07-27 08:21:22'),
(38, 1, '81o5D+KGcQL._SL1500_.jpg', 'public_storage', 'media/0t75f4rJil0Yok9GeJxB0h1t8FI6zVSSXfpMuqkE.jpeg', 'jpeg', 'image/jpeg', '112970', '2020-07-27 08:23:12', '2020-07-27 08:23:12'),
(39, 1, 'msi-modern-14db-863x800-1573046161.webp', 'public_storage', 'media/tbvDpPWeB9UXcWtpSjeWPzQVS3ced3DfyuqwMrbn.webp', 'webp', 'image/webp', '64996', '2020-07-27 08:23:28', '2020-07-27 08:23:28'),
(40, 1, 'maxresdefault.jpg', 'public_storage', 'media/z6UZr0oQOvcChI1pjztC1FqNPkPS6jRdCcI12WK0.jpeg', 'jpeg', 'image/jpeg', '87613', '2020-07-27 08:23:28', '2020-07-27 08:23:28'),
(42, 1, '907462001633186790A448E5A5DE6084.jpg', 'public_storage', 'media/A6CBovlbAkmYDUFLnivcdU3DTA27PFzyp1DOaeLF.jpeg', 'jpeg', 'image/jpeg', '76230', '2020-07-27 08:26:04', '2020-07-27 08:26:04'),
(43, 1, '9380.jpg', 'public_storage', 'media/HaNX2hkKMl7TGWgCM3GrV1Bn2OXUxJTN7bPr6dAd.jpeg', 'jpeg', 'image/jpeg', '23960', '2020-07-27 08:26:44', '2020-07-27 08:26:44'),
(44, 1, 'dell-xps-13-9380-2.jpg', 'public_storage', 'media/ZdwAdFY2lF0c0Sv7PXQiXprDIkJhQZuAlNoY5CcN.jpeg', 'jpeg', 'image/jpeg', '353945', '2020-07-27 08:26:44', '2020-07-27 08:26:44'),
(45, 1, 'HP-Elite-Dragonfly-Notebook-PC.jpg', 'public_storage', 'media/cmZ0wDfy2KD0fTEouBFbCvpLxEWTdgsBjLSFG0CY.jpeg', 'jpeg', 'image/jpeg', '406906', '2020-07-27 08:43:02', '2020-07-27 08:43:02'),
(46, 1, 'download.jpg', 'public_storage', 'media/b180aZNWJ0ZilnYcwxJPSpWetwP2nl3lMpcx3cWR.jpeg', 'jpeg', 'image/jpeg', '6509', '2020-07-27 08:43:32', '2020-07-27 08:43:32'),
(47, 1, 'hqdefault.jpg', 'public_storage', 'media/0g5lzch5bjXt6Zlmnjw1IQ1Ab08aVmrdpLiNfevN.jpeg', 'jpeg', 'image/jpeg', '22455', '2020-07-27 08:43:33', '2020-07-27 08:43:33'),
(48, 1, 'dims.jpg', 'public_storage', 'media/Y4iKKiqPBlUx00xxXevagJ211JvollMCbJ74HKsA.jpeg', 'jpeg', 'image/jpeg', '344311', '2020-07-27 08:43:33', '2020-07-27 08:43:33'),
(49, 1, 'Apple_new-macbook-air-wallpaper-screen_03182020_LP_hero.jpg.og.jpg', 'public_storage', 'media/fSa3syJMvmIBwIcAK6LU6ofcfBzPK3NlEbXHPZhA.jpeg', 'jpeg', 'image/jpeg', '152090', '2020-07-27 08:45:29', '2020-07-27 08:45:29'),
(50, 1, 'apple-macbook-air-2019-13.3-with-touch-id-.jpg', 'public_storage', 'media/Dg0nm6jAU7NAaIbS0O0ZTvAMlJQfHwebOqZQhd84.jpeg', 'jpeg', 'image/jpeg', '9656', '2020-07-27 08:45:48', '2020-07-27 08:45:48'),
(51, 1, 'macbook-air-13-7.jpg', 'public_storage', 'media/4BpQIv0Egl9bIkj5iRPNWGlImcbTuCch3lKG7UF0.jpeg', 'jpeg', 'image/jpeg', '57637', '2020-07-27 08:45:49', '2020-07-27 08:45:49'),
(52, 1, 'og__wmayxefn276q.png', 'public_storage', 'media/PZvVcfA29nouL0XPu5sI2RIplQAgMlOCfSR0BYOy.png', 'png', 'image/png', '307877', '2020-07-27 08:45:51', '2020-07-27 08:45:51'),
(53, 1, 'Samsung-Galaxy-Note-10-500x500.webp', 'public_storage', 'media/RakERKH65LAnrzPo83ObLH8j16uAFCdevib9VjlT.webp', 'webp', 'image/webp', '15048', '2020-07-27 08:52:01', '2020-07-27 08:52:01'),
(54, 1, 'samsung-galaxy-note-10-plus-18.webp', 'public_storage', 'media/ks6ucRFxQlfSgTc5UQfCB6VQLMzTbAEAHDUXDPHa.webp', 'webp', 'image/webp', '20436', '2020-07-27 08:52:23', '2020-07-27 08:52:23'),
(55, 1, 'galaxy-note10_camera_kv_s.webp', 'public_storage', 'media/hahK0raabrPNxUOqMpNdJQHzDaBJm4wU4q2giGDZ.webp', 'webp', 'image/webp', '44718', '2020-07-27 08:52:23', '2020-07-27 08:52:23'),
(56, 1, 'khPCG8ppmygqYeBFXaheb3-480-80.jpg', 'public_storage', 'media/qJRPEKQtkP3svACEOhzw5rHPPePP14L9NgvNhG3y.jpeg', 'jpeg', 'image/jpeg', '11222', '2020-07-27 08:52:24', '2020-07-27 08:52:24'),
(57, 1, 'note10.0.jpg', 'public_storage', 'media/wqmBoHzKgFnQuA7DTIfmq2mvlqirfHx1NVxWuLTp.jpeg', 'jpeg', 'image/jpeg', '56506', '2020-07-27 08:52:25', '2020-07-27 08:52:25'),
(58, 1, '61gor7EwOlL._AC_SX569_.jpg', 'public_storage', 'media/WIwQyzUvZdnCn89bm3uyKcvi7E5UYa98slWUEpxU.jpeg', 'jpeg', 'image/jpeg', '49870', '2020-07-27 08:59:04', '2020-07-27 08:59:04'),
(59, 1, '71IUWVlNaeL._AC_SL1500_.jpg', 'public_storage', 'media/76Gvtl5KvVRI23BK69QcGTlAPWTDeLZUMH7KxxFK.jpeg', 'jpeg', 'image/jpeg', '94687', '2020-07-27 08:59:33', '2020-07-27 08:59:33'),
(60, 1, 'Global-ASUS-ROG-Phone-ZS600KL-Gaming-Phone-8GB-128GB-512GB-3Camera-4K-UHD-6-0-Screen.jpg', 'public_storage', 'media/KWF32TWvZhidi0PIMgggVqAAFa8kElDDjO7Y5X1N.jpeg', 'jpeg', 'image/jpeg', '44299', '2020-07-27 08:59:33', '2020-07-27 08:59:33'),
(61, 1, 'maxresdefault (1).jpg', 'public_storage', 'media/NfSKwDRUSF8zhk3ij5xGuYbYSAs7pLDTndMdlVWe.jpeg', 'jpeg', 'image/jpeg', '82512', '2020-07-27 08:59:34', '2020-07-27 08:59:34'),
(62, 1, 'refurb-iphone-xs-max-silver.jpg', 'public_storage', 'media/noJwHcKMW13eDCWxPoLJUCF8GJ3pQ9UDQnLzTyg1.jpeg', 'jpeg', 'image/jpeg', '94714', '2020-07-27 09:02:55', '2020-07-27 09:02:55'),
(63, 1, '51vyIPkLbHL._AC_SY350_.jpg', 'public_storage', 'media/L3XLj1CXbmzC7Q703OaSal95mdkWjf8fq0qGwQrC.jpeg', 'jpeg', 'image/jpeg', '27723', '2020-07-27 09:03:23', '2020-07-27 09:03:23'),
(64, 1, '0009709_apple-iphone-xs-max-a2101-65-gold-space-grey-silver_610.jpeg', 'public_storage', 'media/jmtMHluB7jSfuMidevTpSwC7tBvKacPQ9ddP6jZ4.jpeg', 'jpeg', 'image/jpeg', '44178', '2020-07-27 09:03:23', '2020-07-27 09:03:23'),
(65, 1, 'apple-iphone-xs-max-7-back2.webp', 'public_storage', 'media/gHJC9KNUpgiVlUdpPCH9SwarjSsJvgOfzrbfwGiB.webp', 'webp', 'image/webp', '51074', '2020-07-27 09:03:24', '2020-07-27 09:03:24'),
(66, 1, '71XWG48C-NL._UX569_.jpg', 'public_storage', 'media/opPnB3zG6c51wmSFzFOsHW1uHLRe0KMK6sjAndfM.jpeg', 'jpeg', 'image/jpeg', '16918', '2020-07-27 09:05:12', '2020-07-27 09:05:12'),
(67, 1, 'download (1).jpg', 'public_storage', 'media/YJGUZv57nMQnNS9WJqcdrILORlthUYMAWEGBwYvH.jpeg', 'jpeg', 'image/jpeg', '5603', '2020-07-27 09:05:33', '2020-07-27 09:05:33'),
(68, 1, '81yhy9ZKcWL._AC_UL320_SR208,320_.jpg', 'public_storage', 'media/3RGoOaVJuJfrvu6rWcnvvh2XzlMGfjlSyU8Zc8qC.jpeg', 'jpeg', 'image/jpeg', '12035', '2020-07-27 09:05:33', '2020-07-27 09:05:33'),
(69, 1, 'maxresdefault (2).jpg', 'public_storage', 'media/FOFS8Z91lYd4buUOUKMta6lILumFEBZhl98RF5JB.jpeg', 'jpeg', 'image/jpeg', '89205', '2020-07-27 09:05:35', '2020-07-27 09:05:35'),
(70, 1, '857440001-dynamic1-pdp.jpg', 'public_storage', 'media/68MIx2z7BIbPkKyqq3lTGAr1UM2ZWOfuLa6nx7aV.jpeg', 'jpeg', 'image/jpeg', '24531', '2020-07-27 09:59:45', '2020-07-27 09:59:45'),
(71, 1, '9298589_fpx.jpg', 'public_storage', 'media/p2caah3vTTfWnneLCLa0Hrtc1BKt082gz2blVZmO.jpeg', 'jpeg', 'image/jpeg', '24061', '2020-07-27 10:01:11', '2020-07-27 10:01:11'),
(72, 1, '100907_65816-0116_PROD_1_RDCTSN.jpg', 'public_storage', 'media/ZRpPeUioA2n9O1pDJPY82Q16BLGwCgKxxG8D2iV6.jpeg', 'jpeg', 'image/jpeg', '439821', '2020-07-27 10:01:13', '2020-07-27 10:01:13'),
(73, 1, 'rBVaVF7JFhyASmQXAADjZU84MGg498.jpg', 'public_storage', 'media/I3EXIFa68twJK8krLzGLninHNiwBSsfexd4aVwKy.jpeg', 'jpeg', 'image/jpeg', '25379', '2020-07-27 10:08:16', '2020-07-27 10:08:16'),
(74, 1, '4-Pcs-Set-Mens-Polo-Solid-Casual-Short-Sleeve-Cotton-Polo-Shirt-Men-Fashion-Slim-Fit.webp', 'public_storage', 'media/Y9HQru1yIIeXUuo0Ajyh4LuclupCHLIaJgpdzHao.webp', 'webp', 'image/webp', '44178', '2020-07-27 10:09:15', '2020-07-27 10:09:15'),
(75, 1, '2020-Brand-Quality-2-Pieces-Lot-Polos-Men-Solid-Slim-Fit-Deer-Embroidery-Polo-Shirt-Men.webp', 'public_storage', 'media/KMjGLdd1dgg7qLsoru7YFf3ilBJWOxfU0d8riIqk.webp', 'webp', 'image/webp', '31250', '2020-07-27 10:09:15', '2020-07-27 10:09:15'),
(76, 1, '346563-00-d-738630.jpg', 'public_storage', 'media/4EKl84DvHqX9VXBNH3ftIJa6QCNAs8S0hz3EG8ZE.jpeg', 'jpeg', 'image/jpeg', '101629', '2020-07-27 10:10:58', '2020-07-27 10:10:58'),
(77, 1, 'EF8904_3_a2f3.jpg', 'public_storage', 'media/ViU55dUFPAZxTS5WNfJREWVJoIyZJzDJPGGthZJR.jpeg', 'jpeg', 'image/jpeg', '78313', '2020-07-27 10:11:17', '2020-07-27 10:11:17'),
(78, 1, '4-zoom-desktop.jpg', 'public_storage', 'media/a3wRQlhPbmSXbM3QobhzND5hWfrqHfqiT3F8xCNr.jpeg', 'jpeg', 'image/jpeg', '200823', '2020-07-27 10:11:17', '2020-07-27 10:11:17'),
(79, 1, '346563-03-d-738633.jpg', 'public_storage', 'media/G8U0xCLhC2d3fJJ4HOC263V7msTB2ccryo72cfMJ.jpeg', 'jpeg', 'image/jpeg', '73695', '2020-07-27 10:11:18', '2020-07-27 10:11:18'),
(80, 1, 'NIKE-AIR-MAX-270-Parent-child-Shoes-Original-Comfortable-Men-And-Kids-Running-Shoes-Lightweight-Sports.jpg_640x640_15454213-c3be-40f6-a07b-73d2fab33507_800x.webp', 'public_storage', 'media/c3Uv0KN6nlYoK4akiPDUJ9o32dai61XC98v32YD4.webp', 'webp', 'image/webp', '16910', '2020-07-27 10:13:27', '2020-07-27 10:13:27'),
(81, 1, 'NIKE-AIR-MAX-270-Parent-child-Shoes-Original-Comfortable-Men-And-Kids-Running-Shoes-Lightweight-Sports.webp', 'public_storage', 'media/5VyGYgibb6l9VRFvXrcqZwj9H61VUWzlBdmChZRH.webp', 'webp', 'image/webp', '62526', '2020-07-27 10:13:43', '2020-07-27 10:13:43'),
(82, 1, 'HTB1KdBzXznuK1RkSmFPq6AuzFXau.jpg_q50.jpg', 'public_storage', 'media/0x2UQBeRZTifHNAwCeMJhJJSZlfB8b15vi6DCWLj.jpeg', 'jpeg', 'image/jpeg', '25240', '2020-07-27 10:13:43', '2020-07-27 10:13:43'),
(83, 1, 'unnamed.jpg', 'public_storage', 'media/ReFVUgctVSPF8oWW8v2nIsFzFxmAmZV4mS8cxh6N.jpeg', 'jpeg', 'image/jpeg', '64137', '2020-07-27 10:16:19', '2020-07-27 10:16:19'),
(84, 1, '6446acd19e96d1a40d7b9183de34b639dc8f23ac_400_400.jpeg', 'public_storage', 'media/BaEqKVc9i2kyGtIul7nDg3ICs0zf6kBTTTlOCjDa.jpeg', 'jpeg', 'image/jpeg', '23697', '2020-07-27 10:16:43', '2020-07-27 10:16:43'),
(85, 1, 'LongKeeper-Brand-Vintage-Square-Sunglasses-Men-Flat-Top-Glasses-Tony-Stark-Iron-Man-Sunglasses-Women-Goggles.jpg', 'public_storage', 'media/ETw9ZowrcDab9XOTxseSbEaX76fTLzUceRJ7WnRq.jpeg', 'jpeg', 'image/jpeg', '133989', '2020-07-27 10:16:43', '2020-07-27 10:16:43'),
(86, 1, '0f52f7d5a97ceaf6017497c5f22b1e7a.jpg', 'public_storage', 'media/lN4JwKTxmG7CgY20xtIxKAogLBEWipDrRDWLC0hG.jpeg', 'jpeg', 'image/jpeg', '72237', '2020-07-27 10:19:04', '2020-07-27 10:19:04'),
(87, 1, 'apple_mac_mini_2018_review_thumb1200_4-3.jpg', 'public_storage', 'media/fHqr7oI6IAoXuTIwHZYWZdqKzz8jahErCdPNY3DA.jpeg', 'jpeg', 'image/jpeg', '74780', '2020-07-27 10:20:44', '2020-07-27 10:20:44'),
(88, 1, 'mac-mini-gallery-5.jpg', 'public_storage', 'media/kO7iD85NfBbELdWRPy7DBfVCJ0o7AboWz8OQ8Rv6.jpeg', 'jpeg', 'image/jpeg', '556279', '2020-07-27 10:21:06', '2020-07-27 10:21:06'),
(89, 1, 'black18597-fanmis-original-imaf4sztfxq4kg5v.jpeg', 'public_storage', 'media/fHdHhQmrwOW6oxpWHXwLioKKdAZaCofNkE8jr3HX.jpeg', 'jpeg', 'image/jpeg', '58984', '2020-07-27 10:22:39', '2020-07-27 10:22:39'),
(90, 1, 'sI7VgfyGD34wV72X3pk8CCCI3QrpsZu1TiEM3kJ6.webp', 'public_storage', 'media/gDeF5vaaYBiBkKJiQ4Os6B13V3ZnPZW5qNggzf8v.webp', 'webp', 'image/webp', '10110', '2020-07-27 11:28:23', '2020-07-27 11:28:23'),
(91, 1, 'kTJZ8JjEO16NYuj28aN9f88c1SKIm9ELvYOE8pvC.webp', 'public_storage', 'media/hjCpyap8eLWOnkgnW8POU7x7mwgsinacvmx7ktQ6.webp', 'webp', 'image/webp', '16076', '2020-07-27 11:29:55', '2020-07-27 11:29:55'),
(92, 1, 'yAaq3dHTWLOlac12ioxGgVrZ3xtrIhKnL5r3roIl.webp', 'public_storage', 'media/ScFSL6FvZctPjYRWIfjKz6051ToItX1AH5vxnOOc.webp', 'webp', 'image/webp', '7720', '2020-07-27 11:31:05', '2020-07-27 11:31:05'),
(93, 1, 'sI7VgfyGD34wV72X3pk8CCCI3QrpsZu1TiEM3kJ6.webp', 'public_storage', 'media/y7S6mNydeyyUY9nwazOxVdayX0sg1R8weGIHUKbu.webp', 'webp', 'image/webp', '10110', '2020-07-27 11:33:52', '2020-07-27 11:33:52'),
(94, 1, 'kTJZ8JjEO16NYuj28aN9f88c1SKIm9ELvYOE8pvC.webp', 'public_storage', 'media/1yZgegkBFWta9f4kT0RTpY3S6q37Yl4cP2qBshBn.webp', 'webp', 'image/webp', '16076', '2020-07-27 11:34:48', '2020-07-27 11:34:48'),
(95, 1, '33206849551_1200920969_b.jpg', 'public_storage', 'media/OUpfcTvzMLugJr8xOwe3RGcv5RQBGo8JSh67gZwN.jpeg', 'jpeg', 'image/jpeg', '365149', '2020-07-27 11:39:40', '2020-07-27 11:39:40'),
(96, 1, 'shutterstock_1685221642.0.jpg', 'public_storage', 'media/fg5Xq3bNBHs7XjDokP4kyx1EZPMZWRhRr68yg1G1.jpeg', 'jpeg', 'image/jpeg', '241979', '2020-07-27 11:43:46', '2020-07-27 11:43:46'),
(97, 1, 'kTJZ8JjEO16NYuj28aN9f88c1SKIm9ELvYOE8pvC.webp', 'public_storage', 'media/2cAkQSEAZ0QcKQY5rSgtHMTkQrw1Bg0N6gP1dYmo.webp', 'webp', 'image/webp', '16076', '2020-07-27 11:46:31', '2020-07-27 11:46:31'),
(98, 1, 'shutterstock_1685221642.0.jpg', 'public_storage', 'media/4W5qFY9yTOoPq4web4sO5V86cxuQkFg1krSFVcsx.jpeg', 'jpeg', 'image/jpeg', '241979', '2020-07-27 11:46:48', '2020-07-27 11:46:48'),
(99, 1, '33206849551_1200920969_b.jpg', 'public_storage', 'media/tj4PoapJM8CIZPoeSeF1yjFtUFZzWlMakjOly8xl.jpeg', 'jpeg', 'image/jpeg', '365149', '2020-07-27 11:47:13', '2020-07-27 11:47:13'),
(100, 1, 'shutterstock_1685221642.0.jpg', 'public_storage', 'media/XdjuFwIjRNHl9jzn3R8ihAt81J4PO3zI6CLzW6W0.jpeg', 'jpeg', 'image/jpeg', '241979', '2020-07-27 11:51:52', '2020-07-27 11:51:52'),
(101, 1, 'photo-1516594798947-e65505dbb29d.jpg', 'public_storage', 'media/3TObGkAGdQqXAnGcxgcDaZJZOosBSRf4bmSouih2.jpeg', 'jpeg', 'image/jpeg', '144541', '2020-07-27 12:00:21', '2020-07-27 12:00:21'),
(102, 1, 'yAaq3dHTWLOlac12ioxGgVrZ3xtrIhKnL5r3roIl.webp', 'public_storage', 'media/BVC0mitQDH6mzU10tFyQ6D1pZWETG4yuwOMFaZGb.webp', 'webp', 'image/webp', '7720', '2020-07-27 13:02:29', '2020-07-27 13:02:29'),
(103, 1, '71kCNvUUx5L._SL1500_.jpg', 'public_storage', 'media/p85TQElvXZrnPOUZasQFHwJOvLOYRbpXrDFPGBFo.jpeg', 'jpeg', 'image/jpeg', '188683', '2020-07-27 14:27:24', '2020-07-27 14:27:24'),
(104, 1, 'ezgif.com-webp-to-png.png', 'public_storage', 'media/iORUxfEeQuiJr7RBwvdlYHAByE4ly48gXxi2e23W.png', 'png', 'image/png', '118987', '2020-07-27 14:31:09', '2020-07-27 14:31:09'),
(105, 1, 'ezgif.com-webp-to-png (1).png', 'public_storage', 'media/rX3zGbuUDRf136ZpP7LC2qaWQS8UlFOTPz7DMHLK.png', 'png', 'image/png', '55364', '2020-07-27 14:32:06', '2020-07-27 14:32:06'),
(106, 1, 'ezgif.com-webp-to-png (2).png', 'public_storage', 'media/OjuJf6wvDsZLLJhiargeHtbeGIwnikhX9BUOHoQi.png', 'png', 'image/png', '47334', '2020-07-27 14:36:21', '2020-07-27 14:36:21'),
(107, 1, 'atta-ashrivad.jpg', 'public_storage', 'media/1cni9Cov4COiHu8GSeP4hyTBkPlJYVdmyJF3EurZ.jpeg', 'jpeg', 'image/jpeg', '210935', '2020-07-27 14:38:36', '2020-07-27 14:38:36'),
(108, 1, 'ezgif.com-webp-to-png (3).png', 'public_storage', 'media/vdBW2XXMbJToiUaHOhYmNhIBJgm6gQpvBe0FQIOo.png', 'png', 'image/png', '84065', '2020-07-27 14:40:03', '2020-07-27 14:40:03'),
(109, 1, '71kCNvUUx5L._SL1500_.jpg', 'public_storage', 'media/LxZiMIDOsVSkk7D4szMXiQMmxyhd2hTB8wdOBQWN.jpeg', 'jpeg', 'image/jpeg', '188683', '2020-07-27 14:41:44', '2020-07-27 14:41:44'),
(110, 1, 'ezgif.com-webp-to-png (4).png', 'public_storage', 'media/ApitlB7im3UvEzud4Sx0TYze3G48c0nQrpm6Hs3n.png', 'png', 'image/png', '171717', '2020-07-27 14:41:46', '2020-07-27 14:41:46'),
(111, 1, 'ezgif.com-webp-to-png (5).png', 'public_storage', 'media/xWDib7EapvbIt3UUNeaajtZVIOoCHAXuOJIqfD4O.png', 'png', 'image/png', '28300', '2020-07-27 14:43:13', '2020-07-27 14:43:13'),
(112, 1, '285-yellow-dal-tadka-aashirvaad-original-imaez9spyeznqcv9.jpeg', 'public_storage', 'media/tdrFMWlvWdK4k0fgNRgEBn9puV05rHjuXutlvBBl.jpeg', 'jpeg', 'image/jpeg', '18381', '2020-07-27 14:49:15', '2020-07-27 14:49:15'),
(113, 1, 'ezgif.com-webp-to-png (6).png', 'public_storage', 'media/1lkOZG2bYDd4KjhXPArj4zXju2wqmN8VHfhD26vt.png', 'png', 'image/png', '13469', '2020-07-27 14:50:02', '2020-07-27 14:50:02'),
(114, 1, 'ezgif.com-webp-to-png (7).png', 'public_storage', 'media/HAZrjGCJgehgJs9Mmc7ptt8l5wkKIzcJtDANl9Fp.png', 'png', 'image/png', '12245', '2020-07-27 14:53:26', '2020-07-27 14:53:26'),
(115, 1, 'Almonds.jpg', 'public_storage', 'media/tvH0HOPfPBMMcUyEuhM25ur7rNvW9TMuTlyeWoie.jpeg', 'jpeg', 'image/jpeg', '18253', '2020-07-27 14:54:24', '2020-07-27 14:54:24'),
(116, 1, 'ezgif.com-webp-to-png (9).png', 'public_storage', 'media/guzoY2jgFgh1xXkor2PgIt4wD1xitcbxiRSOGjT6.png', 'png', 'image/png', '7638', '2020-07-27 14:58:43', '2020-07-27 14:58:43'),
(117, 1, '91E8K+4iSvL._SY606_.jpg', 'public_storage', 'media/n7dAcKd84a6yuePWCSTDJiRj90SJwMQGZucCmVFC.jpeg', 'jpeg', 'image/jpeg', '71010', '2020-07-27 15:05:08', '2020-07-27 15:05:08'),
(118, 1, '91fV+3IkjKL._SL1500_.jpg', 'public_storage', 'media/claqox2ZeApts3cIicwlsmCC8kjy6tWBfzS17Kvm.jpeg', 'jpeg', 'image/jpeg', '290703', '2020-07-27 15:08:19', '2020-07-27 15:08:19'),
(119, 1, 'ezgif.com-webp-to-png (10).png', 'public_storage', 'media/Tk4oNTPtSgdSqAcUuROou9TFuWBME6DVRxGDRH2f.png', 'png', 'image/png', '11257', '2020-07-27 16:30:11', '2020-07-27 16:30:11'),
(120, 1, 'jewellery (1).jpg', 'public_storage', 'media/cOaqMDZ0Uxxcdcp3zaW4witGROJwGE4q0wt6uTdi.jpeg', 'jpeg', 'image/jpeg', '6644', '2020-07-27 16:33:09', '2020-07-27 16:33:09'),
(121, 1, 'download (2) (1).jpg', 'public_storage', 'media/BUsXjMlXIrSKcnT1SRGpAhoO5uosgeToxteGhU0h.jpeg', 'jpeg', 'image/jpeg', '14905', '2020-07-27 16:35:40', '2020-07-27 16:35:40'),
(122, 1, 'ezgif.com-webp-to-png (12).png', 'public_storage', 'media/McKIOvtk8RLznze3mIbcjpPsnpxt463L3P94SymT.png', 'png', 'image/png', '7638', '2020-07-27 16:43:41', '2020-07-27 16:43:41'),
(123, 1, 'ezgif.com-webp-to-png (13).png', 'public_storage', 'media/qRXurgwJgy3myLk9GzU7oug0qSVxHsmKXbkEaw8w.png', 'png', 'image/png', '88893', '2020-07-28 06:59:38', '2020-07-28 06:59:38'),
(124, 1, 'ezgif.com-webp-to-png (14).png', 'public_storage', 'media/iDiSaFHOqL3qJ7Rik12TGEJZvlTBnqFdmK3lBVUv.png', 'png', 'image/png', '68000', '2020-07-28 07:01:10', '2020-07-28 07:01:10'),
(125, 1, 'ezgif.com-webp-to-png (15).png', 'public_storage', 'media/xjsJLASExj5kwrjMNvUcTwt5qTBLlprdG1WVhQK8.png', 'png', 'image/png', '82778', '2020-07-28 07:08:05', '2020-07-28 07:08:05'),
(126, 1, 'ezgif.com-webp-to-png (17).png', 'public_storage', 'media/CchkAI2TRfCusuLrL5uXbvHVOsFC9SS1Lhw5PB0G.png', 'png', 'image/png', '56201', '2020-07-28 07:09:27', '2020-07-28 07:09:27'),
(127, 1, 'ezgif.com-webp-to-png (18).png', 'public_storage', 'media/bC7AYup3qR7BbmoMBjzOmv8gAuDkrnSJzWRfJzrg.png', 'png', 'image/png', '81179', '2020-07-28 07:10:46', '2020-07-28 07:10:46'),
(128, 1, 'ezgif.com-webp-to-png (19).png', 'public_storage', 'media/ae24sDm8v2Ecgh6zpNXdhWdMw0gK1YbHJkuXUpXQ.png', 'png', 'image/png', '118364', '2020-07-28 07:23:21', '2020-07-28 07:23:21'),
(129, 1, 'WhatsApp Image 2020-07-26 at 02.07.42.jpg', 'public_storage', 'media/R92GxJFyLB3F4IgLiqKILOmkPNhnlDDpQFI0xYkp.jpeg', 'jpeg', 'image/jpeg', '21726', '2020-07-28 07:39:41', '2020-07-28 07:39:41'),
(130, 1, 'WhatsApp Image 2020-07-26 at 02.07.42.jpeg', 'public_storage', 'media/ISZD3R88b9pJG8JZXoAkp1UAXeTDWShWIdlQpy7B.jpeg', 'jpeg', 'image/jpeg', '27720', '2020-07-28 07:40:43', '2020-07-28 07:40:43'),
(131, 1, 'ezgif.com-webp-to-png (20).png', 'public_storage', 'media/a3xDgSJeUV2cFpuLY7Ssjsbakd60vF52AhDks41V.png', 'png', 'image/png', '17306', '2020-07-28 07:46:58', '2020-07-28 07:46:58'),
(132, 1, '20200811_184841-removebg-preview (1).png', 'public_storage', 'media/Pu68CGLa7a7qXIc6wVsA9nh1iC5qL4AgbuvwWYzA.png', 'png', 'image/png', '149529', '2020-08-11 18:04:04', '2020-08-11 18:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `created_at`, `updated_at`) VALUES
(1, '2020-07-28 06:53:39', '2020-07-28 06:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_products`
--

INSERT INTO `flash_sale_products` (`id`, `flash_sale_id`, `product_id`, `end_date`, `price`, `qty`, `position`) VALUES
(1, 1, 27, '2031-01-09', 100.0000, 20, 0),
(2, 1, 7, '2027-07-29', 200.0000, 33, 1),
(3, 1, 18, '2025-07-17', 34566.0000, 33, 2);

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_product_orders`
--

CREATE TABLE `flash_sale_product_orders` (
  `flash_sale_product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_translations`
--

CREATE TABLE `flash_sale_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_translations`
--

INSERT INTO `flash_sale_translations` (`id`, `flash_sale_id`, `locale`, `campaign_name`) VALUES
(1, 1, 'en', 'Flash sale');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-25 16:03:22', '2020-07-25 16:03:22'),
(3, 1, '2020-07-27 13:12:51', '2020-07-27 13:12:51'),
(4, 1, '2020-07-27 15:45:43', '2020-07-27 15:45:43'),
(5, 1, '2020-07-27 15:46:19', '2020-07-27 15:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT 0,
  `is_fluid` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `category_id`, `page_id`, `type`, `url`, `icon`, `target`, `position`, `is_root`, `is_fluid`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2020-07-25 16:03:22', '2020-07-25 16:03:22'),
(3, 1, 1, NULL, NULL, 'url', '/products', NULL, '_self', 0, 0, 0, 1, '2020-07-27 07:16:09', '2020-07-27 11:13:37'),
(4, 1, 1, NULL, NULL, 'url', '/brands', NULL, '_self', 1, 0, 0, 1, '2020-07-27 07:17:11', '2020-07-27 11:13:37'),
(5, 1, 1, NULL, 1, 'page', NULL, NULL, '_self', 2, 0, 0, 1, '2020-07-27 11:12:31', '2020-07-27 11:16:19'),
(6, 1, 1, NULL, 2, 'page', NULL, NULL, '_self', 3, 0, 0, 1, '2020-07-27 11:13:31', '2020-07-27 11:17:47'),
(8, 1, 1, NULL, 4, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-07-27 11:21:49', '2020-07-27 11:21:49'),
(9, 3, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2020-07-27 13:12:51', '2020-07-27 13:12:51'),
(10, 3, 9, 2, NULL, 'category', NULL, NULL, '_self', 0, 0, 1, 1, '2020-07-27 13:16:41', '2020-07-27 15:58:29'),
(11, 3, 9, 3, NULL, 'category', NULL, NULL, '_self', 1, 0, 1, 1, '2020-07-27 13:20:06', '2020-07-27 15:58:31'),
(12, 3, 9, 4, NULL, 'category', NULL, NULL, '_self', 2, 0, 1, 1, '2020-07-27 13:20:47', '2020-07-27 15:58:31'),
(13, 3, 9, 83, NULL, 'category', NULL, NULL, '_self', 3, 0, 1, 1, '2020-07-27 13:22:36', '2020-07-27 15:58:31'),
(14, 3, 9, 5, NULL, 'category', NULL, NULL, '_self', 4, 0, 1, 1, '2020-07-27 13:22:57', '2020-07-27 15:58:31'),
(15, 3, 9, 100, NULL, 'category', NULL, NULL, '_self', 5, 0, 1, 1, '2020-07-27 13:33:01', '2020-07-27 15:58:31'),
(16, 3, 9, 109, NULL, 'category', NULL, NULL, '_self', 6, 0, 1, 1, '2020-07-27 13:55:22', '2020-07-27 15:58:31'),
(17, 3, 9, 106, NULL, 'category', NULL, NULL, '_self', 7, 0, 1, 1, '2020-07-27 13:55:42', '2020-07-27 15:58:31'),
(18, 3, 9, 113, NULL, 'category', NULL, NULL, '_self', 8, 0, 1, 1, '2020-07-27 14:16:49', '2020-07-27 15:58:31'),
(19, 4, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2020-07-27 15:45:43', '2020-07-27 15:45:43'),
(20, 5, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2020-07-27 15:46:19', '2020-07-27 15:46:19'),
(21, 5, 20, NULL, 1, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-07-27 15:50:01', '2020-07-27 15:50:01'),
(22, 5, 20, NULL, 5, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-07-27 15:50:57', '2020-07-27 15:50:57'),
(23, 5, 20, NULL, 2, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-07-27 15:51:33', '2020-07-27 15:51:33'),
(24, 5, 20, NULL, 3, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-07-27 15:51:53', '2020-07-27 15:51:53'),
(25, 5, 20, NULL, 4, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-07-27 15:52:54', '2020-07-27 15:52:54'),
(26, 3, 10, 2, NULL, 'category', NULL, NULL, '_self', 0, 0, 0, 1, '2020-07-27 15:57:59', '2020-07-27 15:58:31'),
(27, 3, 10, 2, NULL, 'category', NULL, NULL, '_self', 1, 0, 0, 1, '2020-07-27 15:59:15', '2020-07-27 15:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_translations`
--

CREATE TABLE `menu_item_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_item_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_translations`
--

INSERT INTO `menu_item_translations` (`id`, `menu_item_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'root'),
(3, 3, 'en', 'Shop'),
(4, 4, 'en', 'Brands'),
(5, 5, 'en', 'About Us'),
(6, 6, 'en', 'FAQ'),
(8, 8, 'en', 'Terms Of Use'),
(9, 9, 'en', 'root'),
(10, 10, 'en', 'Electronic'),
(11, 11, 'en', 'Men\'s Fashion'),
(12, 12, 'en', 'Women\"s Fashion'),
(13, 13, 'en', 'Home Appliances'),
(14, 14, 'en', 'Kid\'s'),
(15, 15, 'en', 'Backpacks'),
(16, 16, 'en', 'Essentials'),
(17, 17, 'en', 'Jewellery'),
(18, 18, 'en', 'GROCERY'),
(19, 19, 'en', 'root'),
(20, 20, 'en', 'root'),
(21, 21, 'en', 'ABOUT US'),
(22, 22, 'en', 'Privacy & Policy'),
(23, 23, 'en', 'FAQ'),
(24, 24, 'en', 'Return Policy'),
(25, 25, 'en', 'Terms & Conditions'),
(26, 26, 'en', 'Laptops'),
(27, 27, 'en', 'Mobile Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Primary Menu'),
(3, 3, 'en', 'Category Menu'),
(4, 4, 'en', 'Footer Menu 2'),
(5, 5, 'en', 'Footer Menu 1');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `entity_type`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Brand\\Entities\\Brand', 1, '2020-07-25 10:38:31', '2020-07-25 10:38:31'),
(2, 'Modules\\Brand\\Entities\\Brand', 2, '2020-07-25 10:53:54', '2020-07-25 10:53:54'),
(3, 'Modules\\Brand\\Entities\\Brand', 3, '2020-07-25 10:56:04', '2020-07-25 10:56:04'),
(4, 'Modules\\Brand\\Entities\\Brand', 4, '2020-07-25 11:00:30', '2020-07-25 11:00:30'),
(5, 'Modules\\Brand\\Entities\\Brand', 5, '2020-07-25 11:02:08', '2020-07-25 11:02:08'),
(6, 'Modules\\Brand\\Entities\\Brand', 6, '2020-07-25 11:02:33', '2020-07-25 11:02:33'),
(7, 'Modules\\Brand\\Entities\\Brand', 7, '2020-07-25 11:02:50', '2020-07-25 11:02:50'),
(8, 'Modules\\Brand\\Entities\\Brand', 8, '2020-07-25 11:03:07', '2020-07-25 11:03:07'),
(9, 'Modules\\Brand\\Entities\\Brand', 9, '2020-07-25 11:03:39', '2020-07-25 11:03:39'),
(10, 'Modules\\Brand\\Entities\\Brand', 10, '2020-07-25 11:03:59', '2020-07-25 11:03:59'),
(11, 'Modules\\Brand\\Entities\\Brand', 11, '2020-07-25 11:04:18', '2020-07-25 11:04:18'),
(12, 'Modules\\Brand\\Entities\\Brand', 12, '2020-07-25 11:05:04', '2020-07-25 11:05:04'),
(13, 'Modules\\Brand\\Entities\\Brand', 13, '2020-07-25 11:05:16', '2020-07-25 11:05:16'),
(14, 'Modules\\Brand\\Entities\\Brand', 14, '2020-07-25 11:06:29', '2020-07-25 11:06:29'),
(15, 'Modules\\Brand\\Entities\\Brand', 15, '2020-07-25 11:06:53', '2020-07-25 11:06:53'),
(16, 'Modules\\Product\\Entities\\Product', 1, '2020-07-25 14:21:48', '2020-07-25 14:21:48'),
(17, 'Modules\\Product\\Entities\\Product', 2, '2020-07-25 14:44:09', '2020-07-25 14:44:09'),
(18, 'Modules\\Product\\Entities\\Product', 3, '2020-07-25 14:54:07', '2020-07-25 14:54:07'),
(19, 'Modules\\Product\\Entities\\Product', 4, '2020-07-25 14:58:54', '2020-07-25 14:58:54'),
(20, 'Modules\\Product\\Entities\\Product', 5, '2020-07-25 15:04:01', '2020-07-25 15:04:01'),
(21, 'Modules\\Product\\Entities\\Product', 6, '2020-07-25 15:06:28', '2020-07-25 15:06:28'),
(22, 'Modules\\Product\\Entities\\Product', 7, '2020-07-25 15:10:12', '2020-07-25 15:10:12'),
(23, 'Modules\\Product\\Entities\\Product', 8, '2020-07-25 15:18:37', '2020-07-25 15:18:37'),
(24, 'Modules\\Product\\Entities\\Product', 9, '2020-07-25 15:39:44', '2020-07-25 15:39:44'),
(25, 'Modules\\Product\\Entities\\Product', 10, '2020-07-25 15:41:06', '2020-07-25 15:41:06'),
(26, 'Modules\\Product\\Entities\\Product', 11, '2020-07-25 15:41:55', '2020-07-25 15:41:55'),
(27, 'Modules\\Product\\Entities\\Product', 12, '2020-07-25 15:47:27', '2020-07-25 15:47:27'),
(28, 'Modules\\Product\\Entities\\Product', 13, '2020-07-25 15:49:36', '2020-07-25 15:49:36'),
(29, 'Modules\\Product\\Entities\\Product', 14, '2020-07-25 15:52:10', '2020-07-25 15:52:10'),
(30, 'Modules\\Product\\Entities\\Product', 15, '2020-07-25 15:53:22', '2020-07-25 15:53:22'),
(31, 'Modules\\Product\\Entities\\Product', 16, '2020-07-25 15:57:09', '2020-07-25 15:57:09'),
(32, 'Modules\\Product\\Entities\\Product', 17, '2020-07-25 15:58:02', '2020-07-25 15:58:02'),
(33, 'Modules\\Product\\Entities\\Product', 18, '2020-07-25 16:00:09', '2020-07-25 16:00:09'),
(34, 'Modules\\Product\\Entities\\Product', 19, '2020-07-25 16:01:17', '2020-07-25 16:01:17'),
(35, 'Modules\\Product\\Entities\\Product', 20, '2020-07-25 16:02:27', '2020-07-25 16:02:27'),
(36, 'Modules\\Product\\Entities\\Product', 21, '2020-07-26 17:34:27', '2020-07-26 17:34:27'),
(37, 'Modules\\Brand\\Entities\\Brand', 16, '2020-07-27 10:38:47', '2020-07-27 10:38:47'),
(38, 'Modules\\Page\\Entities\\Page', 1, '2020-07-27 10:59:26', '2020-07-27 10:59:26'),
(39, 'Modules\\Page\\Entities\\Page', 2, '2020-07-27 11:03:24', '2020-07-27 11:03:24'),
(40, 'Modules\\Page\\Entities\\Page', 3, '2020-07-27 11:04:28', '2020-07-27 11:04:28'),
(41, 'Modules\\Page\\Entities\\Page', 4, '2020-07-27 11:05:14', '2020-07-27 11:05:14'),
(42, 'Modules\\Page\\Entities\\Page', 5, '2020-07-27 11:06:12', '2020-07-27 11:06:12'),
(43, 'Modules\\Brand\\Entities\\Brand', 17, '2020-07-27 14:28:49', '2020-07-27 14:28:49'),
(44, 'Modules\\Product\\Entities\\Product', 22, '2020-07-27 14:33:27', '2020-07-27 14:33:27'),
(45, 'Modules\\Brand\\Entities\\Brand', 18, '2020-07-27 14:35:22', '2020-07-27 14:35:22'),
(46, 'Modules\\Product\\Entities\\Product', 23, '2020-07-27 14:42:33', '2020-07-27 14:42:33'),
(47, 'Modules\\Product\\Entities\\Product', 24, '2020-07-27 14:47:05', '2020-07-27 14:47:05'),
(48, 'Modules\\Product\\Entities\\Product', 25, '2020-07-27 14:54:43', '2020-07-27 14:54:43'),
(49, 'Modules\\Brand\\Entities\\Brand', 19, '2020-07-27 15:01:46', '2020-07-27 15:01:46'),
(50, 'Modules\\Product\\Entities\\Product', 26, '2020-07-27 15:04:51', '2020-07-27 15:04:51'),
(51, 'Modules\\Product\\Entities\\Product', 27, '2020-07-27 15:08:46', '2020-07-27 15:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data_translations`
--

CREATE TABLE `meta_data_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_data_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data_translations`
--

INSERT INTO `meta_data_translations` (`id`, `meta_data_id`, `locale`, `meta_title`, `meta_description`) VALUES
(1, 1, 'en', NULL, NULL),
(2, 2, 'en', NULL, NULL),
(3, 3, 'en', NULL, NULL),
(4, 4, 'en', NULL, NULL),
(5, 5, 'en', NULL, NULL),
(6, 6, 'en', NULL, NULL),
(7, 7, 'en', NULL, NULL),
(8, 8, 'en', NULL, NULL),
(9, 9, 'en', NULL, NULL),
(10, 10, 'en', NULL, NULL),
(11, 11, 'en', NULL, NULL),
(12, 12, 'en', NULL, NULL),
(13, 13, 'en', NULL, NULL),
(14, 14, 'en', NULL, NULL),
(15, 15, 'en', NULL, NULL),
(16, 16, 'en', NULL, NULL),
(17, 17, 'en', NULL, NULL),
(18, 18, 'en', NULL, NULL),
(19, 19, 'en', NULL, NULL),
(20, 20, 'en', NULL, NULL),
(21, 21, 'en', NULL, NULL),
(22, 22, 'en', NULL, NULL),
(23, 23, 'en', NULL, NULL),
(24, 24, 'en', NULL, NULL),
(25, 25, 'en', NULL, NULL),
(26, 26, 'en', NULL, NULL),
(27, 27, 'en', NULL, NULL),
(28, 28, 'en', NULL, NULL),
(29, 29, 'en', NULL, NULL),
(30, 30, 'en', NULL, NULL),
(31, 31, 'en', NULL, NULL),
(32, 32, 'en', NULL, NULL),
(33, 33, 'en', NULL, NULL),
(34, 34, 'en', NULL, NULL),
(35, 35, 'en', NULL, NULL),
(36, 36, 'en', NULL, NULL),
(37, 37, 'en', NULL, NULL),
(38, 38, 'en', NULL, NULL),
(39, 39, 'en', NULL, NULL),
(40, 40, 'en', NULL, NULL),
(41, 41, 'en', NULL, NULL),
(42, 42, 'en', NULL, NULL),
(43, 43, 'en', NULL, NULL),
(44, 44, 'en', NULL, NULL),
(45, 45, 'en', NULL, NULL),
(46, 46, 'en', NULL, NULL),
(47, 47, 'en', NULL, NULL),
(48, 48, 'en', NULL, NULL),
(49, 49, 'en', NULL, NULL),
(50, 50, 'en', NULL, NULL),
(51, 51, 'en', NULL, NULL);

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
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_14_200250_create_settings_table', 1),
(3, '2014_10_26_162751_create_files_table', 1),
(4, '2014_10_30_191858_create_pages_table', 1),
(5, '2014_11_31_125848_create_page_translations_table', 1),
(6, '2015_02_27_105241_create_entity_files_table', 1),
(7, '2015_11_20_184604486385_create_translations_table', 1),
(8, '2015_11_20_184604743083_create_translation_translations_table', 1),
(9, '2017_05_29_155126144426_create_products_table', 1),
(10, '2017_05_30_155126416338_create_product_translations_table', 1),
(11, '2017_08_02_153217_create_options_table', 1),
(12, '2017_08_02_153348_create_option_translations_table', 1),
(13, '2017_08_02_153406_create_option_values_table', 1),
(14, '2017_08_02_153736_create_option_value_translations_table', 1),
(15, '2017_08_03_156576_create_product_options_table', 1),
(16, '2017_08_17_170128_create_related_products_table', 1),
(17, '2017_08_17_175236_create_up_sell_products_table', 1),
(18, '2017_08_17_175828_create_cross_sell_products_table', 1),
(19, '2017_11_09_141332910964_create_categories_table', 1),
(20, '2017_11_09_141332931539_create_category_translations_table', 1),
(21, '2017_11_26_083614526622_create_meta_data_table', 1),
(22, '2017_11_26_083614526828_create_meta_data_translations_table', 1),
(23, '2018_01_24_125642_create_product_categories_table', 1),
(24, '2018_02_04_150917488267_create_coupons_table', 1),
(25, '2018_02_04_150917488698_create_coupon_translations_table', 1),
(26, '2018_03_11_181317_create_coupon_products_table', 1),
(27, '2018_03_15_091937_create_coupon_categories_table', 1),
(28, '2018_04_18_154028776225_create_reviews_table', 1),
(29, '2018_05_17_115822452977_create_currency_rates_table', 1),
(30, '2018_07_03_124153537506_create_sliders_table', 1),
(31, '2018_07_03_124153537695_create_slider_translations_table', 1),
(32, '2018_07_03_133107770172_create_slider_slides_table', 1),
(33, '2018_07_03_133107770486_create_slider_slide_translations_table', 1),
(34, '2018_07_28_190524758357_create_attribute_sets_table', 1),
(35, '2018_07_28_190524758497_create_attribute_set_translations_table', 1),
(36, '2018_07_28_190524758646_create_attributes_table', 1),
(37, '2018_07_28_190524758877_create_attribute_translations_table', 1),
(38, '2018_07_28_190524759461_create_product_attributes_table', 1),
(39, '2018_08_01_001919718631_create_tax_classes_table', 1),
(40, '2018_08_01_001919718935_create_tax_class_translations_table', 1),
(41, '2018_08_01_001919723551_create_tax_rates_table', 1),
(42, '2018_08_01_001919723781_create_tax_rate_translations_table', 1),
(43, '2018_08_03_195922206748_create_attribute_values_table', 1),
(44, '2018_08_03_195922207019_create_attribute_value_translations_table', 1),
(45, '2018_08_04_190524764275_create_product_attribute_values_table', 1),
(46, '2018_08_07_135631306565_create_orders_table', 1),
(47, '2018_08_07_135631309451_create_order_products_table', 1),
(48, '2018_08_07_135631309512_create_order_product_options_table', 1),
(49, '2018_08_07_135631309624_create_order_product_option_values_table', 1),
(50, '2018_09_11_213926106353_create_transactions_table', 1),
(51, '2018_09_19_081602135631_create_order_taxes_table', 1),
(52, '2018_09_19_103745_create_setting_translations_table', 1),
(53, '2018_10_01_224852175056_create_wish_lists_table', 1),
(54, '2018_10_04_185608_create_search_terms_table', 1),
(55, '2018_11_03_160015_create_menus_table', 1),
(56, '2018_11_03_160138_create_menu_translations_table', 1),
(57, '2018_11_03_160753_create_menu_items_table', 1),
(58, '2018_11_03_160804_create_menu_item_translation_table', 1),
(59, '2019_02_05_162605_add_position_to_slider_slides_table', 1),
(60, '2019_02_09_164343_remove_file_id_from_slider_slides_table', 1),
(61, '2019_02_09_164434_add_file_id_to_slider_slide_translations_table', 1),
(62, '2019_02_14_103408_create_attribute_categories_table', 1),
(63, '2019_08_09_164759_add_slug_column_to_attributes_table', 1),
(64, '2019_11_01_201511_add_special_price_type_column_to_products_table', 1),
(65, '2019_11_23_193101_add_value_column_to_order_product_options_table', 1),
(66, '2020_01_04_211424_add_icon_column_to_menu_items_table', 1),
(67, '2020_01_05_160502_add_direction_column_to_slider_slide_translations_table', 1),
(68, '2020_01_05_234014_add_speed_column_to_sliders_table', 1),
(69, '2020_01_05_235014_add_fade_column_to_sliders_table', 1),
(70, '2020_01_15_000346259038_create_flash_sales_table', 1),
(71, '2020_01_15_000346259349_create_flash_sale_translations_table', 1),
(72, '2020_01_23_011234_create_flash_sale_products_table', 1),
(73, '2020_01_30_015722_create_flash_sale_product_orders_table', 1),
(74, '2020_02_22_215943_delete_meta_keywords_column_from_meta_data_translations_table', 1),
(75, '2020_03_05_214602901973_create_brands_table', 1),
(76, '2020_03_05_214602902369_create_brand_translations_table', 1),
(77, '2020_03_06_234605_add_brand_id_column_to_products_table', 1),
(78, '2020_04_06_211526_add_note_column_to_orders_table', 1),
(79, '2020_04_28_034118164376_create_tags_table', 1),
(80, '2020_04_28_034118164618_create_tag_translations_table', 1),
(81, '2020_04_28_225657_create_product_tags_table', 1),
(82, '2020_05_10_041616_create_updater_scripts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 1,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_translations`
--

CREATE TABLE `option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `price_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_value_translations`
--

CREATE TABLE `option_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(18,4) UNSIGNED NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` decimal(18,4) UNSIGNED NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `discount` decimal(18,4) UNSIGNED NOT NULL,
  `total` decimal(18,4) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` decimal(18,4) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `line_total` decimal(18,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_options`
--

CREATE TABLE `order_product_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_option_values`
--

CREATE TABLE `order_product_option_values` (
  `order_product_option_id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_taxes`
--

CREATE TABLE `order_taxes` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 1, '2020-07-27 10:59:26', '2020-07-27 10:59:26'),
(2, 'faq', 1, '2020-07-27 11:03:24', '2020-07-27 11:03:24'),
(3, 'return-policy', 1, '2020-07-27 11:04:28', '2020-07-27 11:04:28'),
(4, 'terms-conditions', 1, '2020-07-27 11:05:14', '2020-07-27 11:05:14'),
(5, 'privacy-policy', 1, '2020-07-27 11:06:12', '2020-07-27 11:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `name`, `body`) VALUES
(1, 1, 'en', 'ABOUT US', '<h1 style=\"text-align: center;\">About Us</h1>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/HmOKyObsMLWvxahqNqsnvjox2PYfZJMPNxuHMs29.jpeg\" alt=\"\" width=\"100%\" height=\"100%\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n<li>In luctus nunc id lectus pellentesque lacinia.</li>\r\n<li>Pellentesque laoreet mi molestie tortor aliquam, sed hendrerit nisi consectetur.</li>\r\n<li>Nam sed sapien sed lacus placerat euismod in consectetur ex.</li>\r\n<li>Sed et odio ultrices, semper sem sed, scelerisque libero.</li>\r\n<li>Proin ut ex varius libero viverra pellentesque.</li>\r\n</ul>'),
(2, 2, 'en', 'FAQ', '<h1 style=\"text-align: center;\">Help &amp; FAQ</h1>\r\n<p>&nbsp;</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>What does LOREM mean?</h4>\r\n<p>&lsquo;Lorem ipsum dolor sit amet, consectetur adipisici elit&hellip;&rsquo; (complete text) is dummy text that is not meant to mean anything. It is used as a placeholder in magazine layouts, for example, in order to give an impression of the finished document. The text is intentionally unintelligible so that the viewer is not distracted by the content. The language is not real Latin and even the first word &lsquo;Lorem&rsquo; does not exist. It is said that the lorem ipsum text has been common among typesetters since the 16th century.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Why do we use Lorem Ipsum?</h4>\r\n<p>Many times, readers will get distracted by readable text when looking at the layout of a page. Instead of using filler text that says &ldquo;Insert content here,&rdquo; Lorem Ipsum uses a normal distribution of letters, making it resemble standard English. This makes it easier for designers to focus on visual elements, as opposed to what the text on a page actually says. Lorem Ipsum is absolutely necessary in most design cases, too. Web design projects like landing pages, website redesigns and so on only look as intended when they\'re fully-fleshed out with content.</p>'),
(3, 3, 'en', 'Return Policy', '<h1 style=\"text-align: center;\">Return Policy</h1>\r\n<p>&nbsp;</p>\r\n<p>Studio Lorem Ipsum will accept returns of UNWORN MERCHANDISE within 14 days of receipt of your order. If 14 days have gone by since receipt of your order, unfortunately we can&rsquo;t offer you a refund or exchange.</p>\r\n<p>&nbsp;</p>\r\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\r\n<p>&nbsp;</p>\r\n<p>To complete your return, we require a receipt or proof of purchase.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Refunds (if applicable)</h4>\r\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.<br />If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Late or missing refunds (if applicable)</h4>\r\n<ul>\r\n<li>If you haven&rsquo;t received a refund yet, first check your bank account again.</li>\r\n<li>Then contact your credit card company, it may take some time before your refund is officially posted.</li>\r\n<li>Next contact your bank. There is often some processing time before a refund is posted.</li>\r\n<li>If you&rsquo;ve done all of this and you still have not received your refund yet, please contact us.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Gifts</h4>\r\n<p>If the item was marked as a gift when purchased and shipped directly to you, you&rsquo;ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\r\n<p>&nbsp;</p>\r\n<p>If the item wasn&rsquo;t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and he will find out about your return.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Shipping</h4>\r\n<p>To return your product, you can request to return the product within 14 days of receipt of your order, and we will email you the return label which you can use to ship the product. Once your return is received and inspected, the refund will be processed to your original method of payment.</p>'),
(4, 4, 'en', 'Terms & Conditions', '<h1 style=\"text-align: center;\">Terms of Service</h1>\r\n<p>&nbsp;</p>\r\n<p>This website is operated by a.season. Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to a.season. a.season offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</p>\r\n<p>&nbsp;</p>\r\n<p>By visiting our site and/ or purchasing something from us, you engage in our &ldquo;Service&rdquo; and agree to be bound by the following terms and conditions (&ldquo;Terms of Service&rdquo;, &ldquo;Terms&rdquo;), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Online Store Terms</h4>\r\n<p>By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>General Conditions</h4>\r\n<p>We reserve the right to refuse service to anyone for any reason at any time.<br />You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>License</h4>\r\n<p>You must not:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Republish material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Sell, rent or sub-license material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Reproduce, duplicate or copy material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Redistribute content from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Disclaimer</h4>\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>limit or exclude our or your liability for death or personal injury;</li>\r\n<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>'),
(5, 5, 'en', 'Privacy & Policy', '<h1 style=\"text-align: center;\">Privacy Policy</h1>\r\n<p>&nbsp;</p>\r\n<p>Your privacy is as important to us as it is to you. We know you hate SPAM and so do we. That is why we will never sell or share your information with anyone without your express permission. We respect your rights and will do everything in our power to protect your personal information. In the interest of full disclosure, we provide this notice explaining our online information collection practices. This privacy notice discloses the privacy practices for <a href=\"https://envaysoft.com/\">EnvaySoft</a>&nbsp;(herein known as we, us and our company) and applies solely to information collected by this web site.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Information Collection, Use, and Sharing</h4>\r\n<p>We are the sole owners of the information collected on this site. We only have access to information that you voluntarily give us via email or other direct contact from you. We will not sell or rent this information to anyone. We will use your information to respond to you, regarding the reason you contacted us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request, e.g. to ship an order.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Disclosure</h4>\r\n<p>This site uses Google web analytics service. Google may record mouse clicks, mouse movements, scrolling activity as well as text you type in this website. This site does not use Google to collect any personally identifiable information entered in this website. Google does track your browsing habits across web sites which do not use Google services.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Security</h4>\r\n<p>We take precautions to protect your information. When you submit sensitive information via the website, your information is protected both online and offline.</p>\r\n<p>Wherever we collect sensitive information (such as credit card data), that information is encrypted and transmitted to us in a secure way. You can verify this by looking for a closed lock icon at the bottom of your web browser, or looking for &ldquo;https&rdquo; at the beginning of the address of the web page.</p>\r\n<p>While we use encryption to protect sensitive information transmitted online, we also protect your information offline. Only employees who need the information to perform a specific job (for example, billing or customer service) are granted access to personally identifiable information. The computers/servers in which we store personally identifiable information are kept in a secure environment.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Email Policy</h4>\r\n<p>The following are situations in which you may provide Your Information to us:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>\r\n<p>When you fill out forms or fields through our Services.</p>\r\n</li>\r\n<li>\r\n<p>When you register for an account with our Service.</p>\r\n</li>\r\n<li>\r\n<p>When you create a subscription for our newsletter or Services.</p>\r\n</li>\r\n<li>\r\n<p>When you provide responses to a survey.</p>\r\n</li>\r\n<li>\r\n<p>When you answer questions on a quiz.</p>\r\n</li>\r\n<li>\r\n<p>When you join or enroll in an event through our Services.</p>\r\n</li>\r\n<li>\r\n<p>When you order services or products from, or through our Service.</p>\r\n</li>\r\n<li>\r\n<p>When you provide information to us through a third-party application, service or Website.</p>\r\n</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'VN0vR7IZYAukJKdEVYxqcaFDvlSylSHj', '2020-07-23 07:26:07', '2020-07-23 07:26:07'),
(2, 1, 'v9Zu0oT75bnKpS3RZcL3YI1qV8vqBFJS', '2020-07-23 14:22:13', '2020-07-23 14:22:13'),
(3, 1, 'Xgbg3tIddVurOn4GVd7jjqFjC9hTJ9Ll', '2020-07-24 11:53:56', '2020-07-24 11:53:56'),
(4, 1, '65hMUVHMZCA8rxxk4jeTlDfT5RcsAV91', '2020-07-25 10:36:11', '2020-07-25 10:36:11'),
(5, 1, 'yBJxnlmPs2SWyKmnIjWZnsHXV48o4p2D', '2020-07-25 14:17:09', '2020-07-25 14:17:09'),
(6, 1, 'TuahqrdsPLhRNaWJeNtdPTOKIuAzCaj2', '2020-07-25 14:39:30', '2020-07-25 14:39:30'),
(8, 1, 'xQrICzTOnSMphlfTB9clQT5Rr6iA855k', '2020-07-26 14:15:39', '2020-07-26 14:15:39'),
(9, 1, '9KBK6EQVQPxJaSAfM54c3oSaHXNck7a5', '2020-07-26 15:01:30', '2020-07-26 15:01:30'),
(10, 1, 'G15vZZh9GiYOnLoRZxRCBiwJOSw6B2Jj', '2020-07-27 07:08:12', '2020-07-27 07:08:12'),
(11, 1, 'UwjjClfvBVyD2PfyiCKmVC36e2rf8C8U', '2020-07-27 12:15:51', '2020-07-27 12:15:51'),
(12, 1, 'kyRZNfZdRl2xiHNK65yULtGcUGgPpCrM', '2020-07-27 17:07:22', '2020-07-27 17:07:22'),
(13, 1, 'kh46asBG6MJ0fzjeiEmvSV63d5PaL2Cm', '2020-07-28 06:40:13', '2020-07-28 06:40:13'),
(14, 1, 'MZjU6zaTQpu6AcPqE7B6W4FNZ7GzxRR7', '2020-07-28 12:05:12', '2020-07-28 12:05:12'),
(15, 1, '0kGY34W3XZCjWUDNVVjQLYwPvYkjmwIC', '2020-07-29 16:00:16', '2020-07-29 16:00:16'),
(16, 1, '0rTYIIxGmbEnS6eGAQt7uSj6LJl3iaEF', '2020-07-31 08:17:36', '2020-07-31 08:17:36'),
(17, 1, 'UeWmFDnq0oAYX8VIn3PNjaaaue1p0E5i', '2020-08-01 14:30:19', '2020-08-01 14:30:19'),
(18, 1, 'LNSpICwWODcOBZqJBD6GzSxChf4YLDVK', '2020-08-01 14:34:11', '2020-08-01 14:34:11'),
(20, 1, 'TAQCWKtPu58GfnWUqMMl4Wn0wdqUNYq0', '2020-08-05 17:44:38', '2020-08-05 17:44:38'),
(23, 1, 'LakP6KGU7Nl35boeMzas23fgrxtzg9X8', '2020-08-07 21:28:19', '2020-08-07 21:28:19'),
(24, 1, 'Fje1Dfg70LYGeiAIAObmijOjIngcDKrO', '2020-08-11 17:56:04', '2020-08-11 17:56:04'),
(25, 1, 'COZOZakGWR6qjwoev9L9juqgZDcAynyC', '2020-08-16 13:07:31', '2020-08-16 13:07:31'),
(26, 1, '9oJgIjDgEcPzFpPaFjKw1CPFzyW3zQHg', '2020-09-05 13:27:42', '2020-09-05 13:27:42'),
(28, 1, 'xPPALVMGQDvrHtzXQS8VsGF6u7mdceoL', '2020-09-13 12:20:01', '2020-09-13 12:20:01'),
(29, 1, 'd8N1n282X88GyG4qzmYQY49LvnR3m8he', '2020-09-15 11:54:45', '2020-09-15 11:54:45'),
(30, 1, 'sR2Gadewg9Rxes7Imo60hRSOCsUAq7va', '2020-09-15 15:12:03', '2020-09-15 15:12:03'),
(31, 1, 'yEWRZ02PbtTAGi0QtDfeUWhgIfRxAGqH', '2020-09-21 20:41:47', '2020-09-21 20:41:47'),
(33, 1, 'Ay5RfSf1pU8TJobhhuSVuiyhegJ9YAHz', '2020-09-27 10:33:39', '2020-09-27 10:33:39'),
(34, 1, 'YHkmLF1ZHsIRvIuoFiSxINQ7BELchHE4', '2020-09-29 13:03:12', '2020-09-29 13:03:12'),
(35, 1, 'v5Iup8SOz6fgJsKKEu1zJ4qaXvRgKmC8', '2020-10-17 14:06:32', '2020-10-17 14:06:32'),
(36, 1, '50FMpYlIioxqVuEZlSUY5Ph4Fm1rV5tM', '2020-10-18 12:33:41', '2020-10-18 12:33:41'),
(37, 1, 'qrvKEm48yn1GJEUquGEUrhCmK4XqsJGY', '2020-10-19 10:16:06', '2020-10-19 10:16:06'),
(38, 1, 'x4dyDzQcsffiF8JWb6weudEGak6GZMkN', '2020-11-10 15:50:16', '2020-11-10 15:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `special_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `special_price_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price_start` date DEFAULT NULL,
  `special_price_end` date DEFAULT NULL,
  `selling_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` tinyint(1) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `viewed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `new_from` datetime DEFAULT NULL,
  `new_to` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `tax_class_id`, `slug`, `price`, `special_price`, `special_price_type`, `special_price_start`, `special_price_end`, `selling_price`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `is_active`, `new_from`, `new_to`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'fanmis-mens-luxury-analog-quartz-gold-wrist-watches', 10.0000, NULL, 'fixed', '2020-07-24', '2020-07-31', 10.0000, '6SJL492G', 0, NULL, 1, 7, 1, NULL, NULL, NULL, '2020-07-25 14:21:48', '2020-08-19 15:43:50'),
(2, 5, NULL, 'new-apple-mac-mini-36ghz-quad-core-8th-generation', 900.0000, NULL, 'fixed', NULL, NULL, 900.0000, 'TRG63QZK', 0, NULL, 1, 2, 1, NULL, NULL, NULL, '2020-07-25 14:44:09', '2020-08-23 17:08:44'),
(3, 6, NULL, 'hot-mens-parka-coats-men-winter-warm-hooded', 500.0000, NULL, 'fixed', NULL, NULL, 500.0000, NULL, 0, NULL, 1, 2, 1, NULL, NULL, NULL, '2020-07-25 14:54:07', '2020-08-19 15:39:32'),
(4, NULL, NULL, 'tony-stark-sunglasses-men-eye-wear-vintage-retro-mens-glasses', 550.0000, NULL, 'fixed', NULL, NULL, 550.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 14:58:54', '2020-07-25 15:58:34'),
(5, 6, NULL, 'nike-air-max-270-parent-child-shoes-original', 600.0000, NULL, 'fixed', NULL, NULL, 600.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 15:04:01', '2020-07-25 15:07:00'),
(6, 7, NULL, 'adidas-men-s-running-shoe-ef8904', 700.0000, NULL, 'fixed', NULL, NULL, 700.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 15:06:28', '2020-07-25 15:06:28'),
(7, 6, NULL, 'men-embroidery-polo-giraffe-shirt', 400.0000, NULL, 'fixed', NULL, NULL, 400.0000, NULL, 0, NULL, 1, 3, 1, NULL, NULL, NULL, '2020-07-25 15:10:12', '2020-10-03 17:33:04'),
(8, 14, NULL, 'dudalina-men-long-sleeve-shirt-men-casual-men-shirt-social-plus-size-m-5xl', 350.0000, NULL, 'fixed', NULL, NULL, 350.0000, NULL, 0, NULL, 1, 3, 1, NULL, NULL, NULL, '2020-07-25 15:18:37', '2020-08-23 16:32:58'),
(9, 5, NULL, 'fossil-gen-5-carlyle-stainless-steel-touchscreen-smartwatch', 5000.0000, NULL, 'fixed', NULL, NULL, 5000.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 15:39:44', '2020-07-25 15:39:44'),
(10, 5, NULL, 'apple-iphone-xs-max-64gb-white', 82000.0000, NULL, 'fixed', NULL, NULL, 82000.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 15:41:06', '2020-07-25 15:41:06'),
(11, NULL, NULL, 'asus-rog-gaming-phone-zs600kl-snapdragon-845-8gbram-128gb-storage', 110000.0000, NULL, 'fixed', NULL, NULL, 110000.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 15:41:55', '2020-07-25 15:43:12'),
(12, 1, NULL, 'samsung-galaxy-note-10-plus-factory-unlocked-cell-phone-with-256gb-us-warranty-aura-white-note10', 90000.0000, NULL, 'fixed', NULL, NULL, 90000.0000, NULL, 0, NULL, 1, 3, 1, NULL, NULL, NULL, '2020-07-25 15:47:27', '2020-09-29 13:06:12'),
(13, 5, NULL, 'apple-macbook-air-13-inch-8gb-ram-256gb-storage-16ghz-intel-core-i5-gold', 200000.0000, NULL, 'fixed', NULL, NULL, 200000.0000, NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2020-07-25 15:49:36', '2020-08-19 14:29:26'),
(14, 9, NULL, 'hp-elite-dragonfly-notebook-pc8th-generation-core-i5', 50000.0000, NULL, 'fixed', NULL, NULL, 50000.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 15:52:10', '2020-07-25 15:52:10'),
(15, 2, NULL, 'dell-xps-13-9380-133-4k-uhd-3840x2160-multi-touch-ips-display-intel-core-i7-8565u', 70000.0000, NULL, 'fixed', NULL, NULL, 70000.0000, NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2020-07-25 15:53:22', '2020-08-19 14:14:44'),
(16, 10, NULL, 'msi-modern-14-a10m-460-14-ultra-thin-and-light-professional-laptop-intel-core-i5', 55000.0000, NULL, 'fixed', NULL, NULL, 55000.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 15:57:09', '2020-07-25 15:57:09'),
(17, 10, NULL, 'msi-gs65-stealth-006-156-144hz-intel-core-i7-8750h-nvidia-rtx-2060', 65000.0000, NULL, 'fixed', NULL, NULL, 65000.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 15:58:02', '2020-07-25 15:58:21'),
(18, 9, NULL, 'hp-spectre-x360-2-in-1-156-4k-ultra-hd-touch-screen-laptop-intel-i7-8th-genhp-spectre-x360-2-in-1-156-4k-ultra-hd-touch-screen-laptop-intel-i7-8th-gen', 60000.0000, NULL, 'fixed', NULL, NULL, 60000.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 16:00:09', '2020-07-25 16:00:09'),
(19, 14, NULL, 'new-spring-summer-thin-casual-jacket-mens-fashion', 1500.0000, NULL, 'fixed', NULL, NULL, 1500.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 16:01:17', '2020-07-25 16:01:17'),
(20, 15, NULL, 'williampolo-fashion-men-leather-belts-solid-buckle', 400.0000, NULL, 'fixed', NULL, NULL, 400.0000, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-07-25 16:02:27', '2020-07-25 16:02:27'),
(21, 5, NULL, 'apple-imac-pro-27-with-5k-retina-display', 120000.0000, NULL, 'fixed', NULL, NULL, 120000.0000, NULL, 0, NULL, 1, 4, 1, NULL, NULL, NULL, '2020-07-26 17:34:27', '2020-08-23 19:46:52'),
(22, 18, NULL, 'india-gate-chakki-atta', 275.0000, NULL, 'fixed', NULL, NULL, 275.0000, NULL, 0, NULL, 1, 5, 1, NULL, NULL, NULL, '2020-07-27 14:33:27', '2020-09-27 10:28:35'),
(23, 17, NULL, 'india-gate-family-farm-broken-mogra-basmati-rice', 338.0000, NULL, 'fixed', NULL, NULL, 338.0000, NULL, 0, NULL, 1, 6, 1, NULL, NULL, NULL, '2020-07-27 14:42:33', '2020-09-27 10:30:39'),
(24, 18, NULL, 'aashirvaad-family-farm-arhar-daltoor-dal', 90.0000, NULL, 'fixed', NULL, NULL, 90.0000, NULL, 0, NULL, 1, 7, 1, NULL, NULL, NULL, '2020-07-27 14:47:05', '2020-09-20 16:12:38'),
(25, 18, NULL, 'aashirvaad-family-farm-almonds', 250.0000, NULL, 'fixed', NULL, NULL, 250.0000, NULL, 0, NULL, 1, 4, 1, NULL, NULL, NULL, '2020-07-27 14:54:43', '2020-10-03 18:12:48'),
(26, 19, NULL, 'haldirams-aloo-bhujia-namkeen', 150.0000, NULL, 'fixed', NULL, NULL, 150.0000, NULL, 0, NULL, 1, 3, 1, NULL, NULL, NULL, '2020-07-27 15:04:51', '2020-09-12 22:02:00'),
(27, 19, NULL, 'haldirams-moong-dal-namkeen', 160.0000, NULL, 'fixed', NULL, NULL, 160.0000, NULL, 0, NULL, 1, 8, 1, NULL, NULL, NULL, '2020-07-27 15:08:46', '2020-10-03 18:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `product_attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(2, 2),
(2, 22),
(2, 23),
(3, 3),
(3, 44),
(3, 45),
(5, 41),
(5, 42),
(5, 43),
(6, 41),
(6, 42),
(6, 43),
(7, 3),
(7, 29),
(7, 31),
(8, 3),
(8, 29),
(8, 30),
(9, 48),
(10, 6),
(10, 7),
(10, 11),
(10, 12),
(11, 6),
(11, 7),
(11, 10),
(11, 12),
(12, 2),
(12, 6),
(12, 7),
(12, 10),
(12, 12),
(13, 22),
(13, 23),
(13, 24),
(14, 22),
(15, 2),
(15, 22),
(16, 2),
(16, 22),
(17, 2),
(17, 22),
(18, 2),
(18, 22),
(19, 3),
(19, 44),
(19, 45),
(20, 34),
(20, 35),
(21, 2),
(21, 22),
(22, 113),
(23, 113),
(24, 113),
(24, 115),
(25, 113),
(25, 116),
(26, 113),
(27, 113);

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `short_description`) VALUES
(1, 1, 'en', 'Fanmis Men\'s Luxury Analog Quartz Gold Wrist Watches', '<h1 id=\"title\" class=\"a-size-large a-spacing-none a-color-secondary\" style=\"text-align: center;\"><span id=\"productTitle\" class=\"a-size-large\">Men\'s Luxury Analog Quartz Gold Wrist Watches</span></h1>\r\n<p>&nbsp;</p>\r\n<div id=\"dp_productDescription_container_div\" class=\"celwidget\" data-feature-name=\"productDescription\" data-cel-widget=\"dp_productDescription_container_div\">\r\n<div id=\"productDescription_feature_div\" class=\"a-row feature\" data-feature-name=\"productDescription\" data-template-name=\"productDescription\" data-cel-widget=\"productDescription_feature_div\">\r\n<div id=\"productDescription\" class=\"a-section a-spacing-small\">\r\n<h4>Product Description:</h4>\r\n<h4>Highlights:</h4>\r\n<p>Original Japanese Movement: provide precise and accurate time keeping<br />Stainless Steel Strap and Stainless Steel Case Cover<br />German High Hardness Mineral Glass, not easy to wear<br />30M Water Resistant - 3ATM: Daily Use Waterproof, Handwash<br />Calendar Date Window<br />Classic Business Casual Dress Watch Design. Combines quality, leading edge fashion, and value.<br /><br />Features:</p>\r\n<p><br />Stainless Steel case and Stainless Steel case back<br />German High Hardness Mineral Glass<br />Calendar Date Window<br />30M Waterproof<br />Stainless Steel Strap<br /><br />Specification:</p>\r\n<p><br />Dial Color: Black<br />Dial Case Diameter: 1.57 inch / 4.0 cm<br />Dial Case Thickness: 0.43 inch / 1.1 cm<br />Band Color: Gold<br />Band Width: 0.79 inch / 2 cm<br />Band Length: 8.7 inch / 22 cm.<br />Band Clasp Type: Fold Over Clasp<br />Watch Weight: 3.39 oz / 96 g<br /><br />**NOTE**:<br />If mist or droplets found inside watch surface, please contact manufacturer immediately.<br />Clean the strap by a soft cloth on regular bases is highly recommended.<br />Too much water contact will shorter watch life.<br /><br />What Is In The Package:<br />Watch x 1</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"detailBullets\" class=\"celwidget\" data-feature-name=\"detailBullets\" data-cel-widget=\"detailBullets\">\r\n<div id=\"detailBulletsWrapper_feature_div\" class=\"a-section a-spacing-none feature\" data-feature-name=\"detailBullets\" data-template-name=\"detailBullets\" data-cel-widget=\"detailBulletsWrapper_feature_div\">\r\n<div id=\"detailBullets_feature_div\">\r\n<ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none\">\r\n<li><span class=\"a-list-item\"><span class=\"a-text-bold\">Department:&nbsp;</span>Mens</span></li>\r\n<li><span class=\"a-list-item\"><span class=\"a-text-bold\">Manufacturer:&nbsp;</span>Fanmis</span></li>\r\n<li><span class=\"a-list-item\"><span class=\"a-text-bold\">Package Dimensions:&nbsp;</span>3.2 x 2.8 x 2.4 inches</span></li>\r\n<li><span class=\"a-list-item\"><span class=\"a-text-bold\">ASIN:&nbsp;</span>B06XHJY5XZ</span></li>\r\n<li><span class=\"a-list-item\"><span class=\"a-text-bold\">UNSPSC Code:&nbsp;</span>54110000</span></li>\r\n<li><span class=\"a-list-item\"><span class=\"a-text-bold\">Item model number:&nbsp;</span>4331787063</span></li>\r\n<li><span class=\"a-list-item\"><span class=\"a-text-bold\">Batteries:&nbsp;</span>1 LR44 batteries required.</span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', NULL),
(2, 2, 'en', 'New Apple Mac Mini (3.6GHz Quad-core 8th-Generation)', '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"text-align: center;\"><span id=\"productTitle\" class=\"a-size-large\">Mac Mini (3.6GHz Quad-core 8th-Generation)</span></h1>\r\n<h4>&nbsp;</h4>\r\n<h4><span class=\"a-size-large\">Details:</span></h4>\r\n<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n<li><span class=\"a-list-item\">Eighth-generation quad-core Intel Core i3</span></li>\r\n<li><span class=\"a-list-item\">Intel UHD Graphics 630</span></li>\r\n<li><span class=\"a-list-item\">8GB 2666MHz DDR4</span></li>\r\n<li><span class=\"a-list-item\">Ultrafast SSD storage</span></li>\r\n<li><span class=\"a-list-item\">Four Thunderbolt 3 (USB-C) ports, one HDMI 2.0 port, and two USB 3 ports</span></li>\r\n<li><span class=\"a-list-item\">Gigabit Ethernet and 802.11ac Wi-Fi</span></li>\r\n<li><span class=\"a-list-item\">The latest version of macOS</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h4><span class=\"a-size-large\">Specifications:<br /><br /></span></h4>\r\n<table class=\"a-bordered\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p><strong>Processor</strong></p>\r\n</td>\r\n<td style=\"text-align: right;\">\r\n<p>3.6GHz quad-core Intel Core i3, 6MB shared L3 cache</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p><strong>Connections and Expansion</strong></p>\r\n</td>\r\n<td style=\"text-align: right;\">\r\n<p>Four Thunderbolt 3 (USB-C) ports with support for: DisplayPort, Thunderbolt (up to 40 Gbps), USB 3.1 Gen 2 (up to 10 Gbps), Thunderbolt 2, HDMI, DVI, and VGA supported using adapters (sold separately), Two USB 3 ports (up to 5 Gbps), HDMI 2.0 port, Gigabit Ethernet port (configurable to 10Gb Ethernet), 3.5 mm headphone jack</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p><strong>Wireless</strong></p>\r\n</td>\r\n<td style=\"text-align: right;\">\r\n<p>802.11ac Wi-Fi wireless networking IEEE 802.11a/b/g/n compatible, Bluetooth 5.0 wireless technology</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p><strong>In the Box</strong></p>\r\n</td>\r\n<td style=\"text-align: right;\">\r\n<p>Mac mini, Power cord</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL),
(3, 3, 'en', 'Hot Mens Parka Coats Men Winter Warm Hooded', '<h1 class=\"product-title-text\" style=\"text-align: center;\">Hot Mens Parka Coats Men Winter Warm Hooded</h1>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/A5gyeRPTAlypEKW4DwSKqtBn6kE9FwpCY7Prk6kl.webp\" alt=\"\" width=\"800\" height=\"800\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/A5gyeRPTAlypEKW4DwSKqtBn6kE9FwpCY7Prk6kl.webp\" alt=\"\" width=\"800\" height=\"800\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/MmyFGY9CN8vxPOlsR2GGDiWPN34syp2NKUAACeKk.webp\" alt=\"\" width=\"800\" height=\"800\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/SECgFYrrSpC2bLSsL3hUAnzKhnFwAXOsRcQJKh35.webp\" alt=\"\" width=\"751\" height=\"1680\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/PB2khzC9L7qXkpJjxLF1FdVtWaAgvRk2fNrGLpH2.jpeg\" alt=\"\" width=\"751\" height=\"1099\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/cJnQFJSLoSujJXMTmbDGKjx4diDwneZ4Rmg14uDT.webp\" alt=\"\" width=\"751\" height=\"1116\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/WsjufDKdOjsE1RhUwka7HsOFaDEt1QCbqtoH7bYb.webp\" alt=\"\" width=\"751\" height=\"804\" /></p>\r\n<h4>&nbsp;</h4>\r\n<h4>Product Details:</h4>\r\n<ul class=\"product-specs-list util-clearfix\">\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Brand Name:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"CARSONYEUNG\">CARSONYEUNG</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Closure Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"zipper\">zipper</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Item Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Outerwear &amp; Coats\">Outerwear &amp; Coats</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Model Number:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"JK-LMMY90\">JK-LMMY90</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Sleeve Style:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"REGULAR\">REGULAR</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Thickness:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Thick （Winter)\">Thick （Winter)</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Hooded:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Yes\">Yes</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Outerwear Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Jackets\">Jackets</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Detachable Part:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"NONE\">NONE</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Lining Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Polyester / Cotton\">Polyester / Cotton</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Loose\">Loose</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Pattern Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Patchwork\">Patchwork</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Gender:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"MEN\">MEN</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Clothing Length:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"REGULAR\">REGULAR</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Decoration:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Fur\">Fur</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Style:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Casual\">Casual</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Cashmere\">Cashmere</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"COTTON\">COTTON</span></li>\r\n<li class=\"product-prop line-limit-length\" data-spm-anchor-id=\"a2g0o.detail.0.i9.696a5636PMl9Gb\"><span class=\"property-title\">Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Polyester\">Polyester</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL),
(4, 4, 'en', 'Tony Stark Sunglasses Men Eye wear Vintage Retro Men\'s Glasses', '<h1 class=\"product-title-text\" style=\"text-align: center;\" data-spm-anchor-id=\"a2g0o.detail.1000016.i2.7ef533f6zOUVzr\">Tony Stark Sunglasses Men Eyewear Vintage</h1>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/eRvQ2k76QOuyaiPr1uqZEAcwilmbOXdI0f5GH4ZY.webp\" alt=\"\" width=\"791\" height=\"702\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/OfyAlffXwx4ngtxH7CYRWXslDMd54mCqTUoBoHQj.webp\" alt=\"\" width=\"791\" height=\"756\" /></p>\r\n<h4><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/GnlbQ9iET15vQCwIBl1fGsOgGUd324xNfUhyfBeM.jpeg\" alt=\"\" width=\"791\" height=\"799\" /></h4>\r\n<h4>Description:</h4>\r\n<ul class=\"product-specs-list util-clearfix\">\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Brand Name:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"QUISVIKER\">QUISVIKER</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Gender:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"MEN\">MEN</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Style:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Square\">Square</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Department Name:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Adult\">Adult</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Frame Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Polycarbonate\">Polycarbonate</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Lenses Optical Attribute:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"UV400\">UV400</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Eyewear Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Sunglasses\">Sunglasses</span></li>\r\n<li class=\"product-prop line-limit-length\" data-spm-anchor-id=\"a2g0o.detail.0.i10.7ef533f6zOUVzr\"><span class=\"property-title\">Item Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Eyewear\">Eyewear</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL),
(5, 5, 'en', 'NIKE AIR MAX 270 Parent-child Shoes Original', '<h1 style=\"text-align: center;\">NIKE AIR MAX 270 Parent-child Shoes Original</h1>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/wXwFumuJQdKli3082r2Q1TpZsx9mSOE1rsv7MkVP.webp\" alt=\"\" width=\"800\" height=\"800\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/235wgGXN54ZrCKgybOu1RUhof8Af5aY6ZrZedLoc.webp\" alt=\"\" width=\"800\" height=\"800\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/Io9Ttk7d3zUQRK0mgOUssSk4PIBWOTnn9FxZaF8Z.webp\" alt=\"\" width=\"800\" height=\"800\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/kx0evIkVQcxJSaRzTnug5uQ9gvyA8yM66aTfdFWr.webp\" alt=\"\" width=\"899\" height=\"800\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/FE5rz4R6qLimH9kycMScahauGH24oTkWLavbl1vN.jpeg\" alt=\"\" width=\"951\" height=\"877\" /></p>\r\n<h4>&nbsp;</h4>\r\n<h4>Product Description:</h4>\r\n<ul class=\"product-specs-list util-clearfix\">\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Brand Name:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Nike\">Nike</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Outsole Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Rubber\">Rubber</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Insole Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Rubber\">Rubber</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Fit:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Fits true to size, take your normal size\">Fits true to size, take your normal size</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Upper Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Mesh (Air mesh)\">Mesh (Air mesh)</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Closure Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Lace-Up\">Lace-Up</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Pattern Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Solid\">Solid</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Season:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"All season\">All season</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Feature:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Breathable\">Breathable</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Lining Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Synthetic\">Synthetic</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Gender:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Unisex\">Unisex</span></li>\r\n<li class=\"product-prop line-limit-length\" data-spm-anchor-id=\"a2g0o.detail.0.i11.55833eabDKX37C\"><span class=\"property-title\">Age Range:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Adult and Children\">Adult and Children</span></li>\r\n</ul>', NULL),
(6, 6, 'en', 'Adidas Men \'S Running Shoe EF8904', '<h1 style=\"text-align: center;\">Adidas Men \'S Running Shoe EF8904</h1>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/udWBWxvGZCydWCMhAUa0YJQIQBLjVXllceGsrguY.jpeg\" alt=\"\" width=\"1024\" height=\"1024\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/we7hnAcjBSMwJ0zKRjpQPoygAjebz54qEkP9IDpn.jpeg\" alt=\"\" width=\"1024\" height=\"1024\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL),
(7, 7, 'en', 'Men Embroidery Polo Giraffe Shirt', '<h1 style=\"text-align: center;\"><strong>Men Embroidery Polo Giraffe Shirt</strong></h1>\r\n<p>&nbsp;</p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/DCq8AMAGWvrOEoiTzSNyppctxjtwWe0Zkx4cQm63.jpeg\" alt=\"\" width=\"939\" height=\"685\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/P6pdoyg8mnAqquWhjrOJCeQRxXqvV6i80XPpGKhF.webp\" alt=\"\" width=\"800\" height=\"800\" /></strong></p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/5zNSmedzgmOgROSdtuOpzJKR5pWjXX1AiBviPH09.webp\" alt=\"\" width=\"800\" height=\"800\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/o53cFafZBlRzPguxjY0xIPDaIm9mycHzOqkcwSq4.jpeg\" alt=\"\" width=\"800\" height=\"533\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/7YrbStW9v5L0aTQ3cbhH9ReZmXFW6GuJ2ssLiN2D.jpeg\" alt=\"\" width=\"800\" height=\"533\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/IenhwyIgdQOO8mUS3nUL7ytzSrWcj00A7hx4mJs4.jpeg\" alt=\"\" width=\"800\" height=\"533\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/4zUyt5iQAAN5NWVWWi99wfrNZWFex4pxOYpkcG52.jpeg\" alt=\"\" width=\"800\" height=\"533\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/X6bREi32rbaLkikZnCIOSlzHI2XPOlYIM3idbYcy.jpeg\" alt=\"\" width=\"800\" height=\"533\" /></strong></p>\r\n<h3>&nbsp;</h3>\r\n<h3><strong>Specifications:</strong></h3>\r\n<p>&nbsp;</p>\r\n<ul class=\"product-specs-list util-clearfix\">\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Brand Name:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"GustOmerD\">GustOmerD</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Sleeve Length(cm):&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Short\">Short</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Slim\">Slim</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Style:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Casual\">Casual</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Decoration:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Embroidery\">Embroidery</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Decoration:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Epaulet\">Epaulet</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Pattern Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Solid\">Solid</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Cotton Blends\">Cotton Blends</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Feature:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Anti-Pilling\">Anti-Pilling</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Color Style:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Solid\">Solid</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">style:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"polo giraffe\">polo giraffe</span></li>\r\n<li class=\"product-prop line-limit-length\" data-spm-anchor-id=\"a2g0o.detail.0.i10.7f7a510ctURkbX\"><span class=\"property-title\">fashion:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Deer embroidery\">Deer embroidery</span></li>\r\n</ul>', NULL),
(8, 8, 'en', 'LEVIS Men Long Sleeve Shirt Men Casual Men Shirt Social Plus Size M-5XL', '<h1 style=\"text-align: center;\"><strong>LEVI\'S Men Long Sleeve Shirt</strong></h1>', NULL),
(9, 9, 'en', 'Fossil Gen 5 Carlyle Stainless Steel Touchscreen Smartwatch', '<p><span class=\"a-list-item\">Smartwatches powered with Wear OS by Google work with iPhone and Android Phones ; Circumference: 200+/ 5mm</span></p>\r\n<p><span class=\"a-list-item\">Extend your battery life for multiple days with new, smart battery modes; magnetic USB rapid charger included; charge up to 80 percent in under an hour</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\"><img src=\"/storage/media/HTWqZMZOKcgm4DCeFctVRDF9iS5hFeBV6mNep3jP.jpeg\" alt=\"\" width=\"800\" height=\"450\" /></span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\"><img src=\"/storage/media/KYl4fY1zsRvFFbWQr2JX0RgEh8G9d0AOgo20Fopg.jpeg\" alt=\"\" width=\"800\" height=\"450\" /></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">Heart Rate &amp; Activity Tracking using Google Fit; Built in GPS for distance tracking; Swimproof design 3ATM; Google Assistant it&rsquo;s your own personal Google, always ready to help; Speed through checkout with your watch using Google Pay</span></p>\r\n<p><span class=\"a-list-item\">This is one smart watch now with a speaker for audible alerts and taking phone calls, Google Assistant responses and more; receive smartphone notifications and alerts; microphone; download third party apps with 8GB of storage and 1G RAM memory capacity</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">Case size: 44mm; Band size: 22mm; interchangeable with all Fossil 22mm bands; Screen Size: 1.28\" display with 416x416 resolution; touchscreen functionality; Connectivity: Bluetooth(R) 4.1 Low Energy and Wi Fi 802.11 b/g/n; wireless syncing; imported</span></p>\r\n<p><span class=\"a-list-item\">Processor: Qualcomm Snapdragon Wear 3100</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\"><img src=\"/storage/media/pBeUAzU8rKCvCjawqEJLQuBiMVbXhfx5XcWB4K2v.jpeg\" alt=\"\" width=\"800\" height=\"300\" /></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong><span class=\"a-list-item\"><img src=\"/storage/media/UrvsEZtsLR3OsdYqwtkUTCLfleshK9laGPf9vt8W.jpeg\" alt=\"\" width=\"800\" height=\"300\" /></span></strong></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"a-list-item\">Specifications:</span></strong></p>\r\n<p>&nbsp;</p>\r\n<table id=\"technicalSpecifications_section_1\" class=\"a-keyvalue a-spacing-mini\">\r\n<tbody>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Brand, Seller, or Collection Name</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">Fossil</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Model number</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">FTW4024</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Part Number</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">FTW4024</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Model Year</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">2019</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Item Shape</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">Round</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Case diameter</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">44 millimeters</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Case Thickness</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">12 millimeters</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Band Material</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">Stainless Steel</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Band length</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">Mens Standard</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Band width</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">22 millimeters</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Band Color</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">Gray</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\"><span class=\"a-declarative\" data-action=\"a-popover\" data-a-popover=\"{&quot;cache&quot;:&quot;true&quot;,&quot;name&quot;:&quot;Calendar&quot;,&quot;width&quot;:&quot;500&quot;,&quot;header&quot;:&quot;Calendar&quot;,&quot;position&quot;:&quot;triggerRight&quot;,&quot;scrollable&quot;:&quot;true&quot;,&quot;url&quot;:&quot;/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-name_calendar_type&quot;}\"><a class=\"a-link-normal a-popover-trigger\" href=\"https://www.amazon.com/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-name_calendar_type\" target=\"_blank\" rel=\"noopener\">Calendar</a></span></th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">Day-Date-Month</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Item weight</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">2.82 Ounces</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\"><span class=\"a-declarative\" data-action=\"a-popover\" data-a-popover=\"{&quot;cache&quot;:&quot;true&quot;,&quot;name&quot;:&quot;Movement&quot;,&quot;width&quot;:&quot;500&quot;,&quot;header&quot;:&quot;Movement&quot;,&quot;position&quot;:&quot;triggerRight&quot;,&quot;scrollable&quot;:&quot;true&quot;,&quot;url&quot;:&quot;/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-name_watch_movement_type&quot;}\"><a class=\"a-link-normal a-popover-trigger\" href=\"https://www.amazon.com/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-name_watch_movement_type\" target=\"_blank\" rel=\"noopener\">Movement</a></span></th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">Touchscreen</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Water resistant depth</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">30 Meters</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-span5 a-size-base\" style=\"text-align: left;\">Warranty</th>\r\n<td class=\"a-span7 a-size-base\" style=\"text-align: right;\">\r\n<p>Please review the manufacturer&rsquo;s website for warranty information.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL),
(10, 10, 'en', 'Apple iPhone XS Max, 64GB -white', '<p><span class=\"a-list-item\">CARRIER - This phone is locked to Simple Mobile from Tracfone, which means this device can only be used on the Simple Mobile wireless network.</span></p>\r\n<p><span class=\"a-list-item\">PLANS - Simple Mobile offers a variety of coverage plans, including 30-Day Unlimited Talk, Text &amp; Data. No activation fees, no credit checks, and no hassles on a nationwide lightning-fast network. For more information or plan options, please visit the Simple Mobile website.</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">ACTIVATION - You&rsquo;ll receive a Simple Mobile SIM kit with this iPhone. Follow the instructions to get service activated with the Simple Mobile plan of your choice.</span></p>\r\n<p><span class=\"a-list-item\">6.5-inch Super Retina display (OLED) with HDR</span></p>\r\n<p><span class=\"a-list-item\">IP68 dust and water resistant (maximum depth of 2 meters up to 30 minutes)</span></p>\r\n<p><span class=\"a-list-item\">12MP dual cameras with dual OIS and 7MP TrueDepth front camera&mdash;Portrait mode, Portrait Lighting, Depth Control, and Smart HDR</span></p>\r\n<p><span class=\"a-list-item\">Face ID for secure authentication and Apple Pay</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<div class=\"a-row a-expander-container a-expander-inline-container\" aria-live=\"polite\">\r\n<div class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" aria-expanded=\"true\">\r\n<p><span class=\"a-list-item\">A12 Bionic with next-generation Neural Engine</span></p>\r\n<p><span class=\"a-list-item\">Wireless charging&mdash;works with Qi chargers</span></p>\r\n<p><span class=\"a-list-item\">iOS 12 with Memoji, Screen Time, Siri Shortcuts, and Group FaceTime</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong><span class=\"a-list-item\">Specifications:</span></strong></span></p>\r\n<div class=\"a-column a-span6\">\r\n<table id=\"tech-specs-table-left\" class=\"a-bordered tech-spec-theme\">\r\n<tbody>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"text-align: left;\">\r\n<p>Display</p>\r\n</td>\r\n<td style=\"text-align: right;\">\r\n<p>6.5-inch Super Retina HD display with HDR and True Tone</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"text-align: left;\">\r\n<p>Capacity</p>\r\n</td>\r\n<td style=\"text-align: right;\">\r\n<p>64GB, 256GB, 512GB</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"text-align: left;\">\r\n<p>Splash, Water, and Dust Resistant</p>\r\n</td>\r\n<td style=\"text-align: right;\">\r\n<p>All-glass and stainless steel design, water and dust resistant (rated IP68)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"text-align: left;\">\r\n<p>Camera &amp; Video</p>\r\n</td>\r\n<td style=\"text-align: right;\">\r\n<p>Dual 12MP cameras with Portrait mode, Depth Control, Portrait Lighting, Smart HDR, and 4K video up to 60 fps</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"text-align: left;\">\r\n<p>Front Camera</p>\r\n</td>\r\n<td style=\"text-align: right;\">\r\n<p>7MP TrueDepth front camera with Portrait mode, Depth Control, Portrait Lighting, and Smart HDR</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"a-column a-span6 a-span-last\">\r\n<table id=\"tech-specs-table-right\" class=\"a-bordered tech-spec-theme\">\r\n<tbody>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"width: 131.667px;\">\r\n<p>Power and Battery</p>\r\n</td>\r\n<td style=\"width: 461.667px; text-align: right;\">\r\n<p>Talk time (wireless): Up to 25 hours; Internet use: Up to 13 hours; Video playback (wireless): Up to 15 hours; Audio playback (wireless): Up to 65 hours</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"width: 131.667px;\">\r\n<p>In the Box</p>\r\n</td>\r\n<td style=\"width: 461.667px; text-align: right;\">\r\n<p>iPhone with iOS 12, EarPods with Lightning Connector, Lightning to USB Cable, USB Power Adapter, Documentation</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"width: 131.667px;\">\r\n<p>Height</p>\r\n</td>\r\n<td style=\"width: 461.667px; text-align: right;\">\r\n<p>6.20 inches (157.5 mm)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"width: 131.667px;\">\r\n<p>Width</p>\r\n</td>\r\n<td style=\"width: 461.667px; text-align: right;\">\r\n<p>3.05 inches (77.4 mm)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"width: 131.667px;\">\r\n<p>Depth</p>\r\n</td>\r\n<td style=\"width: 461.667px; text-align: right;\">\r\n<p>0.30 inch (7.7 mm)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"a-text-bold\" style=\"width: 131.667px;\">\r\n<p>Weight</p>\r\n</td>\r\n<td style=\"width: 461.667px; text-align: right;\">\r\n<p>7.34 ounces (208 grams)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL),
(11, 11, 'en', 'ASUS ROG Gaming Phone ZS600KL (Snapdragon 845, 8GBRAM, 128GB Storage', '<p><span class=\"a-list-item\">For USA Buyers : This Smartphone is compatible/will work with any GSM Networks such as AT&amp;T, T-Mobile. For exact 2G GSM, 3G, 4G/LTE compatibility, please check with your network provider in advance prior to your purchase. This phone WILL NOT WORK with any CDMA Networks such as VERIZON, SPRINT, US CELLULAR.</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">Dual-SIM (dual standby), Network Compatibility : SIM CARD 1 [ 2G GSM | 3G UMTS 800(B6) / 800(B19) / 850(B5) / 900(B8) / 1700|2100(B4) / 1800(B3) / 1900(B2) / 2100(B1) | 4G LTE 700(B12) / 700(B13) / 700(B17) / 700(B28) / 700(B29) / 800(B18) / 800(B19) / 800(B20) / 850(B5) / 900(B8) / 1500(B32) / 1700|2100(B4) / 1800(B3) / 1900(B2) / 2100(B1) / 2600(B7) | TD-LTE : 1900(B39) / 2000(B34) / 2300(B40) / 2500(B41) / 2600(B38) / 5900(B46) ] and SIM CARD 2 [ 2G GSM ]</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">6\" AMOLED FHD+ Full View Display (2160x1080) 90Hz, 1ms response time</span></p>\r\n<p><span class=\"a-list-item\">128GB Storage, 8GB LPDDR4X RAM, 4000mAh Battery and support Quick Charge 4.0 fast charging</span></p>\r\n<p><span class=\"a-list-item\">Octa-core Qualcomm Snapdragon 845 Overclocked to 2.96Ghz, Programmable ultrasonic AirTrigger touch sensors gives you 2 extra fingers for gaming, 8MP Front Cameras / 12MP with OIS/EIS+ 8MP Wide-angle Rear Cameras</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong><span class=\"a-list-item\">Specifications:</span></strong></span></p>\r\n<p>&nbsp;</p>\r\n<table id=\"productDetails_techSpec_section_1\" class=\"a-keyvalue prodDetTable\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Brand Name</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">ASUS</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Item Weight</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">7 ounces</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Product Dimensions</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">3 x 0.3 x 6.2 inches</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Item model number</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">90AZ01Q1-M00380</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Batteries</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">1 Lithium ion batteries required. (included)</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Color</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">Black</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Manufacturer Part Number</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">90AZ01Q1-M00380</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL),
(12, 12, 'en', 'Samsung Galaxy Note 10+ Plus Factory Unlocked Cell Phone with 256GB (U.S. Warranty), Aura White/ Note10+', '<div id=\"descriptionAndDetails\" class=\"a-section a-spacing-extra-large\">\r\n<div id=\"productDescription_feature_div\" class=\"celwidget\" data-feature-name=\"productDescription\" data-cel-widget=\"productDescription_feature_div\">\r\n<div id=\"productDescription_feature_div\" class=\"a-row feature\" data-feature-name=\"productDescription\" data-template-name=\"productDescription\" data-cel-widget=\"productDescription_feature_div\">\r\n<div id=\"productDescription\" class=\"a-section a-spacing-small\">\r\n<p>This Samsung Galaxy Note 10 Plus N975U 256GB Factory Unlocked Smartphone is in new-other condition. It is 100% functional and in near perfect cosmetic condition with the possibility of a few light hair marks. It does NOT come in its original packaging.</p>\r\n<p>Communicate effectively with this unlocked Samsung Galaxy Note10+ smartphone. The 12GB of RAM ensure fast processing speed, while the 256GB hard drive offers ample storage space for media and documents. This Samsung Galaxy Note10+ has a 4300 mAh battery that provides intelligent power for all-day use, and the Bluetooth connectivity lets you access music and other media wirelessly.</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">Fast-charging, long-lasting intelligent power and super speed processing outlast whatever you throw at Note 10+. S pen&rsquo;s newest Evolution gives you the power of air gestures, a remote shutter and playlist button and handwriting-to-text, all in One Magic wand.</span></p>\r\n<p><span class=\"a-list-item\">6.8&rdquo; Nearly Bezel-less Infinity Display* Ultrasonic In-Display Fingerprint ID</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">Bluetooth, Air Action Wireless Gestures, Handwriting-to-Text</span></p>\r\n<p><span class=\"a-list-item\">With a full set of Pro lenses, super-stabilization, live video bokeh and precision audio recording, Note 10+ is a studio in your pocket | 10MP Selfie Camera with Dual Pixel 12MP Wide, 12MP 2x Zoom, 16MP Ultra Wide</span></p>\r\n<p><span class=\"a-list-item\">256GB Storage / 12GB RAM 4,300mAh Superfast Charging, All-Day Battery, Wireless PowerShare</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong><span class=\"a-list-item\">Specifications:</span></strong></span></p>\r\n<p>&nbsp;</p>\r\n<table id=\"productDetails_detailBullets_sections1\" class=\"a-keyvalue prodDetTable\" style=\"height: 133px;\" role=\"presentation\">\r\n<tbody>\r\n<tr style=\"height: 19px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left; height: 19px; width: 149.875px;\">Product Dimensions</th>\r\n<td class=\"a-size-base\" style=\"height: 19px; width: 300.542px; text-align: right;\">6.4 x 3 x 0.3 inches</td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left; height: 19px; width: 149.875px;\">Item Weight</th>\r\n<td class=\"a-size-base\" style=\"height: 19px; width: 300.542px; text-align: right;\">2.08 ounces</td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left; height: 19px; width: 149.875px;\">Shipping Weight</th>\r\n<td class=\"a-size-base\" style=\"height: 19px; width: 300.542px; text-align: right;\">15.2 ounces</td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left; height: 19px; width: 149.875px;\">ASIN</th>\r\n<td class=\"a-size-base\" style=\"height: 19px; width: 300.542px; text-align: right;\">B07Z435SXK</td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left; height: 19px; width: 149.875px;\">California residents</th>\r\n<td class=\"a-size-base\" style=\"height: 19px; width: 300.542px; text-align: right;\"><a href=\"https://www.amazon.com/gp/help/customer/display.html/ref=dp_prop65_warn?ie=UTF8&amp;nodeId=3234041\">Click here</a>&nbsp;for Proposition 65 warning</td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left; height: 19px; width: 149.875px;\">Item model number</th>\r\n<td class=\"a-size-base\" style=\"height: 19px; width: 300.542px; text-align: right;\">SM-N975UZWAXAA</td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left; height: 19px; width: 149.875px;\">Batteries</th>\r\n<td class=\"a-size-base\" style=\"height: 19px; width: 300.542px; text-align: right;\">1 Lithium ion batteries required. (included)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"renewedProgramDescriptionBtf_feature_div\" class=\"celwidget\" data-feature-name=\"renewedProgramDescriptionBtf\" data-cel-widget=\"renewedProgramDescriptionBtf_feature_div\"></div>', NULL),
(13, 13, 'en', 'Apple MacBook Air (13-inch, 8GB RAM, 256GB Storage, 1.6GHz Intel Core i5) - Gold', '<p>For the first time, you can now use the Apple MacBook Air (2019) in any environment. Thanks to True Tone, the screen automatically adapts to the amount of light in the room. Your eyes will thank you for that. Thanks to Touch ID, you won\'t need to enter a password, because you can unlock the MacBook Air with a single touch. Thanks to its convenient 13-inch size, you can easily put it in your bag and carry it from the lecture hall to the canteen. Use the 128GB SSD to store all your reports. And after that, you\'ll still have enough space for your holiday pictures.</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Specifications:</strong></span></p>\r\n<p>&nbsp;</p>\r\n<table class=\"a-bordered\" style=\"height: 516px;\">\r\n<tbody>\r\n<tr style=\"height: 97px;\">\r\n<td style=\"text-align: left; height: 97px; width: 79.2188px;\">\r\n<p><strong>Display</strong></p>\r\n</td>\r\n<td style=\"height: 97px; width: 447.219px;\">\r\n<p>13.3-inch (diagonal) LED-backlit display with IPS technology; 2560-by-1600 native resolution at 227 pixels per inch with support for millions of colors; True Tone technology</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 75px;\">\r\n<td style=\"text-align: left; height: 75px; width: 79.2188px;\">\r\n<p><strong>Processor</strong></p>\r\n</td>\r\n<td style=\"height: 75px; width: 447.219px;\">\r\n<p>1.6GHz dual-core Intel Core i5, Turbo Boost up to 3.6GHz, with 4MB L3 cache</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 97px;\">\r\n<td style=\"text-align: left; height: 97px; width: 79.2188px;\">\r\n<p><strong>Graphics and Video Support</strong></p>\r\n</td>\r\n<td style=\"height: 97px; width: 447.219px;\">\r\n<p>Intel UHD Graphics 617, support for Thunderbolt 3&ndash;enabled external graphics processors (eGPUs)</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 97px;\">\r\n<td style=\"text-align: left; height: 97px; width: 79.2188px;\">\r\n<p><strong>Charging and Expansion</strong></p>\r\n</td>\r\n<td style=\"height: 97px; width: 447.219px;\">\r\n<p>Two Thunderbolt 3 (USB-C) ports with support for:, Charging, DisplayPort, Thunderbolt (up to 40 Gbps), USB-C 3.1 Gen 2 (up to 10 Gbps)</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 75px;\">\r\n<td style=\"text-align: left; height: 75px; width: 79.2188px;\">\r\n<p><strong>Wireless</strong></p>\r\n</td>\r\n<td style=\"height: 75px; width: 447.219px;\">\r\n<p>802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible. Bluetooth 4.2 wireless technology</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 75px;\">\r\n<td style=\"text-align: left; height: 75px; width: 79.2188px;\">\r\n<p><strong>In the Box</strong></p>\r\n</td>\r\n<td style=\"height: 75px; width: 447.219px;\">\r\n<p>13-inch MacBook Air, 30W USB-C Power Adapter, USB-C Charge Cable (2 m)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL),
(14, 14, 'en', 'HP Elite Dragonfly Notebook PC (8th generation Core i5)', '<p>The Dragonfly is made from magnesium alloy, which has been CNC&rsquo;ed by robots to get its sharp corner design. The design is a lot more sleek, more ThinkPad-esque if you will, than the curvy Air. Its size is smaller, too: 11.9 x 7.8 x 0.6 inches versus the 12 x 8.4 x 0.2-to-0.6 inches of the MacBook Air. HP\'s overall package is notably smaller while keeping the same screen size: 13.3 inches.</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Specifications:</strong></span></p>\r\n<p>&nbsp;</p>\r\n<table id=\"productDetails_techSpec_section_1\" class=\"a-keyvalue prodDetTable\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Screen Size</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">13.3 inches</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Max Screen Resolution</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">1280 x 800</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Processor</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">1.6 GHz Intel Core i5</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">RAM</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">16 GB LPDDR3</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Hard Drive</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">Flash Memory Solid State</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Chipset Brand</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">Intel</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Card Description</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">Integrated</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Graphics Card Ram Size</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">1</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Number of USB 3.0 Ports</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">2</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Average Battery Life (in hours)</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">1 days</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL);
INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `short_description`) VALUES
(15, 15, 'en', 'Dell XPS 13 9380, 13.3\" 4K UHD (3840X2160) Multi-Touch IPS Display, Intel Core i7-8565U', '<p><span class=\"a-list-item\">World\'s smallest 13-inch laptop; The smaller, thinner, lighter 4K Ultra HD XPS 13 is ready for take-off and also Star performances with the new 8th Gen Intel Core processors, more Cores mean increased performance.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">World\'s most innovative HD Webcam; we\'ve miniaturised the HD Webcam to fit it into the top inginityedge border making the 13-inch laptop more gorgeous than ever.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">Next-gen Dell Cinema; colors burst, sound rumbles, streaming is Seamless and Dell has combined specialized hardware and software to make every scene more stunning.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">Recycle-friendly: 90% of the laptop\'s Parts can be easily recycled or reused, and the white bamboo Packaging trays are 100% recyclable.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">The XPS 13 is cut from a single block of aluminum, so it\'s more durable than a machine that\'s pieced together. Inspired by the aerospace industry, The carbon fiber and woven glass fiber of the palm rest allow for maximum strength and minimal weight. Corning Gorilla Glass 4 is tough, damage resistant, durable and elegant and better able to withstand damage from drops.</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span style=\"text-decoration: underline;\"><span class=\"a-list-item\">Specifications:</span></span></strong></p>\r\n<table id=\"productDetails_techSpec_section_1\" class=\"a-keyvalue prodDetTable\" style=\"border-collapse: collapse; float: left; height: 210px; width: 378px;\" role=\"presentation\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"height: 21px; width: 156.219px; text-align: left;\">Screen Size</th>\r\n<td class=\"a-size-base\" style=\"height: 21px; width: 193.219px; text-align: right;\">13.3 inches</td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"height: 21px; width: 156.219px; text-align: left;\">Max Screen Resolution</th>\r\n<td class=\"a-size-base\" style=\"height: 21px; width: 193.219px; text-align: right;\">3840X2160 pixels</td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"height: 21px; width: 156.219px; text-align: left;\">Processor</th>\r\n<td class=\"a-size-base\" style=\"height: 21px; width: 193.219px; text-align: right;\">1.8 GHz Core i7 8550U</td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"height: 21px; width: 156.219px; text-align: left;\">RAM</th>\r\n<td class=\"a-size-base\" style=\"height: 21px; width: 193.219px; text-align: right;\">16 GB LPDDR3</td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"height: 21px; width: 156.219px; text-align: left;\">Memory Speed</th>\r\n<td class=\"a-size-base\" style=\"height: 21px; width: 193.219px; text-align: right;\">4.6 GHz</td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"height: 21px; width: 156.219px; text-align: left;\">Hard Drive</th>\r\n<td class=\"a-size-base\" style=\"height: 21px; width: 193.219px; text-align: right;\">512 GB SSD</td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"height: 21px; width: 156.219px; text-align: left;\">Graphics Coprocessor</th>\r\n<td class=\"a-size-base\" style=\"height: 21px; width: 193.219px; text-align: right;\">Intel UHD Graphics</td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"height: 21px; width: 156.219px; text-align: left;\">Chipset Brand</th>\r\n<td class=\"a-size-base\" style=\"height: 21px; width: 193.219px; text-align: right;\">intel</td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"height: 21px; width: 156.219px; text-align: left;\">Card Description</th>\r\n<td class=\"a-size-base\" style=\"height: 21px; width: 193.219px; text-align: right;\">Integrated</td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"height: 21px; width: 156.219px; text-align: left;\">Wireless Type</th>\r\n<td class=\"a-size-base\" style=\"height: 21px; width: 193.219px; padding-left: 120px; text-align: right;\">802.11ac</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL),
(16, 16, 'en', 'MSI Modern 14 A10M-460 14\" Ultra Thin and Light Professional Laptop Intel Core i5', '<p><span class=\"a-list-item\">14\" THIN BEZEL Full HD IPS-Level 72% NTSC UMA</span></p>\r\n<p><span class=\"a-list-item\">CORE i5-10210U 1. 6 - 4. 2GHz Intel 9560 Jefferson Peak (2x2 802. 11 ac)</span></p>\r\n<p><span class=\"a-list-item\">HDD 512GB NV Me SSD 8GB (8G*1)DDR4 2666MHz 1 Sockets; Max Memory 32GB</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">USB 3. 2 Gen 1 Type C *2 USB 3. 2 Gen1 *2 White backlight 84 Key 720p HD Webcam</span></p>\r\n<p><span class=\"a-list-item\">O/S Win 10 PRO Battery /Hours 4 cell (50Wh) Li-Polymer 720p HD Webcam Touch Pad Multi Touch Keyboard White backlight 84 Key</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong><span class=\"a-list-item\">Specifications:</span></strong></span></p>\r\n<p>&nbsp;</p>\r\n<table id=\"productDetails_techSpec_section_1\" class=\"a-keyvalue prodDetTable\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Screen Size</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">14.1 inches</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Max Screen Resolution</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">1920 x 1080 pixels</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Processor</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">3.4 GHz Intel Core i5</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">RAM</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">8 GB DDR4</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Memory Speed</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">2666 MHz</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Hard Drive</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">Flash Memory Solid State</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Chipset Brand</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">NVIDIA</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Card Description</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">Dedicated</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Wireless Type</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">802.11ac</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Number of USB 2.0 Ports</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">2</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Number of USB 3.0 Ports</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">2</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Average Battery Life (in hours)</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">8 hours</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL),
(17, 17, 'en', 'MSI GS65 Stealth-006 15.6\" 144Hz , Intel Core i7-8750H, NVIDIA RTX 2060', '<p><span class=\"a-list-item\">MSI GS65 Stealth THIN-051 15.6\" 144Hz 7ms Ultra Thin 4.9mm Bezel Gaming Laptop GTX 1060 6G i7-8750H (6 Cores) 16GB 256GB SSD RGB KB VR Ready, Metal Chassis, Matte Black with Gold Diamond Cut. Battery (Cell):4-Cell. Battery (Type): Li-Polymer.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">Display: 15.6 inches Fhd, Anti Glare Wide View Angle 144Hz 3ms 72 percent NTSC</span></p>\r\n<p><span class=\"a-list-item\">Processor: Intel Core i7 8750H 2.2: 4.1GHz</span></p>\r\n<p><span class=\"a-list-item\">Graphics: NVIDIA GeForce RTX 2060 6G GDDR6</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">Memory: 16GB (16G*1) DDR4 2666MHz, 2 Sockets; Max Memory 32GB</span></p>\r\n<p><span class=\"a-list-item\">Storage: 512GB NVMe SSD.Audio:Nahimic 3.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong><span class=\"a-list-item\">Specifications:</span></strong></span></p>\r\n<p>&nbsp;</p>\r\n<table id=\"productDetails_techSpec_section_1\" class=\"a-keyvalue prodDetTable\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Screen Size</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">15.6 inches</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Screen Resolution</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">1920 x 1080 (Full HD)</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Max Screen Resolution</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">1920 x 1080</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Processor</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">2.2 GHz Intel Core i7</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">RAM</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">16 GB SO-DIMM</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Memory Speed</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">2666 MHz</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Hard Drive</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">512 GB Flash Memory Solid State</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Graphics Coprocessor</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">NVIDIA GeForce RTX 2060</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Chipset Brand</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">NVIDIA</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Card Description</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">Dedicated</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Graphics Card Ram Size</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">6 GB</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Wireless Type</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">Bluetooth</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Number of USB 3.0 Ports</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">4</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Average Battery Life (in hours)</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">4 hours</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', NULL),
(18, 18, 'en', 'HP Spectre x360 2-in-1 15.6\" 4K Ultra HD Touch-Screen Laptop, Intel i7 8th GenHP Spectre x360 2-in-1 15.6\" 4K Ultra HD Touch-Screen Laptop, Intel i7 8th Gen', '<p><span class=\"a-list-item\">LATEST 8TH GENERATION CPU: Intel Core i7-8500</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">UNMATCHED PERFORMANCE:16 GB DDR4-2133 SDRAM (2 x 8 GB) of system memory for intense multitasking and gaming, smoothly run your graphics-heavy PC games and video-editing</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"a-list-item\">SUPERIOR SPEED and Advanced Wireless connectivity: Fast Data Access with 512GB solid state drive PCIe NVMe 4x3 Lane, a flash-based SSD with no moving parts, resulting in faster start-up times data access. Advanced Wireless Connectivity: Intel 802.11ac (2x2) Wi-Fi and Bluetooth 4.2 Combo</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span style=\"text-decoration: underline;\"><span class=\"a-list-item\">Specification:</span></span></strong></p>\r\n<table id=\"productDetails_techSpec_section_1\" class=\"a-keyvalue prodDetTable\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Screen Size</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">15.6 inches</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Screen Resolution</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">3840 x 2160</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Max Screen Resolution</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">3840 x 2160</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Processor</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">1.8 GHz Intel Core i7</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">RAM</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">16 GB DDR</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Memory Speed</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">2400 MHz</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Hard Drive</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">512 GB SSD</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Graphics Coprocessor</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">NVIDIA GeForce MX150</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Chipset Brand</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">NVIDIA</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Card Description</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">Dedicated</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Graphics Card Ram Size</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">2 GB</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Wireless Type</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">802.11ac</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Average Battery Life (in hours)</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">13 hours</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL),
(19, 19, 'en', 'New Spring Summer Thin Casual Jacket Mens Fashion', '<h1 class=\"product-title-text\" style=\"text-align: center;\">New Spring Summer Thin Casual Jacket</h1>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/4oyrUCHB4M7E1SQXKPuE63PwRl6v3wStyojLpoAD.webp\" alt=\"\" width=\"800\" height=\"800\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/4XUINjoY4ralSEZHZsYd2i9dRvnsSpdySGmctkEO.jpeg\" alt=\"\" width=\"800\" height=\"800\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/VatTAZY0axk6iUY9I0dPVrdIVfM3WFrsp4C3nk2A.jpeg\" alt=\"\" width=\"791\" height=\"1257\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/aWpqJPdbSqe3XQieeHIxdGnMt6URvGHEZw62sRYF.jpeg\" alt=\"\" width=\"791\" height=\"1350\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/MURwWxJ9PfD3pdS48GIUHCVCTwqvsc5yolI4WUER.jpeg\" alt=\"\" width=\"791\" height=\"546\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/iZcVvug0ejIvXc5WmpMnSQrkhuxzsUEYlgqheE5a.jpeg\" alt=\"\" width=\"791\" height=\"654\" /></p>\r\n<h4>&nbsp;</h4>\r\n<h4>Product Details:</h4>\r\n<ul class=\"product-specs-list util-clearfix\">\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Brand Name:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"woodvoice\">woodvoice</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Closure Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"zipper\">zipper</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"REGULAR\">REGULAR</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Model Number:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"HT5575\">HT5575</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Pattern Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Solid\">Solid</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Sleeve Style:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"REGULAR\">REGULAR</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Clothing Length:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"REGULAR\">REGULAR</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Thickness:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"STANDARD\">STANDARD</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Hooded:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"No\">No</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Decoration:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"NONE\">NONE</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Style:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Smart Casual\">Smart Casual</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Polyester\">Polyester</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Collar:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Turn-down Collar\">Turn-down Collar</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Detachable Part:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"NONE\">NONE</span></li>\r\n<li class=\"product-prop line-limit-length\" data-spm-anchor-id=\"a2g0o.detail.0.i10.5e5441b8wYhFgc\"><span class=\"property-title\">Lining Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Polyester\">Polyester</span></li>\r\n</ul>', NULL),
(20, 20, 'en', 'WILLIAMPOLO Fashion Men Leather Belts Solid Buckle', '<h1 style=\"text-align: center;\">WILLIAMPOLO Fashion Men Leather Belts</h1>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/Gc5ijdc3xrrouR07T0EE684JsrmxoeafESS0Xs1h.webp\" alt=\"\" width=\"967\" height=\"925\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/RY8FhNfdvJfYnegktGv8FRJjv09k1Hmw8xKzYtBf.webp\" alt=\"\" width=\"967\" height=\"1029\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/Nods3wgFuQGdxelMZp4jIvWZb5dS2247qz3xHqai.webp\" alt=\"\" width=\"967\" height=\"969\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/Ci1xJ8U1hthlFHfnmp5HmgSz8rkd85Ewl7Ch91QF.webp\" alt=\"\" width=\"967\" height=\"640\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/atBPIcKbGFnsAU8DYu9Jg4oLzuAGxV67ggR0Mpl0.webp\" alt=\"\" width=\"967\" height=\"552\" /></p>\r\n<p>&nbsp;</p>\r\n<h3>&nbsp;</h3>\r\n<h4>Product Details:</h4>\r\n<ul class=\"product-specs-list util-clearfix\">\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Brand Name:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"WILLIAMPOLO\">WILLIAMPOLO</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Belts Material:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Cowskin\">Cowskin</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Gender:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"MEN\">MEN</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Department Name:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Adult\">Adult</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Model Number:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"WILLIAMPOLO-18221-223\">WILLIAMPOLO-18221-223</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Pattern Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Solid\">Solid</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Item Type:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Belts\">Belts</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Belt Width:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"3.5cm\">3.5cm</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Buckle Length:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"7cm\">7cm</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Style:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Fashion\">Fashion</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">Buckle Width:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"4cm\">4cm</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">feature:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"strap male genuine leather\">strap male genuine leather</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">feature 1:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"belt luxury men belts for dresses\">belt luxury men belts for dresses</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">feature 2:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"luxury brand mens belt\">luxury brand mens belt</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">feature 3:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"fashion man 2019 leather belt\">fashion man 2019 leather belt</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">feature 4:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"belt buckles for men\">belt buckles for men</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">feature 5:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Fashion Automatic head designer belt\">Fashion Automatic head designer belt</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">feature 6:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Automatic Buckle strap male genuine leather\">Automatic Buckle strap male genuine leather</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">feature 7:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"designer belts men high quality\">designer belts men high quality</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">style:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"Business/fashion\">Business/fashion</span></li>\r\n<li class=\"product-prop line-limit-length\"><span class=\"property-title\">style 1:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"men belts genuine leather luxury\">men belts genuine leather luxury</span></li>\r\n<li class=\"product-prop line-limit-length\" data-spm-anchor-id=\"a2g0o.detail.0.i9.ea8b66a1sGcujA\"><span class=\"property-title\">style 2:&nbsp;</span><span class=\"property-desc line-limit-length\" title=\"belts for male luxury designer brand\">belts for male luxury designer brand</span></li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL),
(21, 21, 'en', 'Apple iMac Pro 27\" with 5K Retina Display', '<h1 class=\"default\" style=\"text-align: center;\">Apple iMac Pro 27\" with 5K Retina Display</h1>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/93J8ZQDfSCJrYqsoK3RT54GYS7fnIoboiwxbHQLa.jpeg\" alt=\"\" width=\"499\" height=\"419\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/6m272OVdVzgWeqAzM5RhHpSSXg7X1vCMyFhz8pHu.jpeg\" alt=\"\" width=\"499\" height=\"412\" /></p>\r\n<h2 class=\"default\">&nbsp;</h2>\r\n<h4 class=\"default\">Product description:</h4>\r\n<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n<li><span class=\"a-list-item\">Apple 27\" iMac Pro with Retina 5K Display (Late 2017) - Magic Keyboard with Numeric Keypad (Space Gray) - Magic Mouse 2 (Space Gray) - Lightning to USB Cable - Power Cord - Apple 1 Year Warranty (90 Days Technical Support)</span></li>\r\n<li><span class=\"a-list-item\">Operating System: macOS</span></li>\r\n<li><span class=\"a-list-item\">Processor: Intel Xeon W 10-Core 3.0GHz (turbo 4.5GHz) 23.75MB cache</span></li>\r\n<li><span class=\"a-list-item\">Memory: 64GB DDR4 SDRAM 2666 MHz ECC</span></li>\r\n<li><span class=\"a-list-item\">Available Memory Slots: None</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<div id=\"productDescription\" class=\"a-section a-spacing-small\">\r\n<p>The vision is brighter than ever A desktop experience that draws you in and keeps you there. This is the idea behind today\'s iMac. And now that idea is more powerful than ever. The new iMac is packed with all-new processors, the latest graphics technologies, innovative storage and higher-bandwidth connectivity. And it all comes to life on the brightest and most colorful Retina display iMac has ever seen.</p>\r\n<p>&nbsp;</p>\r\n<p>So you get an even more immersive experience - and a scintillating new way to take it all in. Performance - Think fast - We did Performance boosts across the board Faster and more powerful than ever, iMac is now equipped with Xeon processor and the latest high-performance graphics. Graphics that render you speechless iMac features powerful new AMD Radeon Pro Vega 64 graphics that make a spectacle of everything you see. The 27-inch iMac with Retina 5K display is loaded with up to 8GB of dedicated VRAM.</p>\r\n<p>&nbsp;</p>\r\n<p>It delivers visual effects and 3D graphics that exhibit raw power in its most polished form. On top of that, you get advanced video editing capabilities. Now you can edit multicam projects in Final Cut Pro X with up to five streams of full-resolution 4K video. Accelerate your every move An all-new Intel Xeon W 8-Core Intel Core processor in your iMac. It\'s more speed than iMac has ever reached before. And Turbo Boost gives you even more power when you\'re using processor-intensive applications like L.</p>\r\n<h4>&nbsp;</h4>\r\n<h4>Technical Details:</h4>\r\n<table id=\"productDetails_techSpec_section_1\" class=\"a-keyvalue prodDetTable\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Screen Size</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">27 inches</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Processor</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">intel_xeon</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">RAM</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">64 GB</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Hard Drive</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">1 TB flash_memory_solid_state</td>\r\n</tr>\r\n<tr>\r\n<th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"text-align: left;\">Card Description</th>\r\n<td class=\"a-size-base\" style=\"text-align: right;\">Dedicated</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', NULL),
(22, 22, 'en', 'INDIA GATE - Chakki Atta', '<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\"><strong>Key Features</strong></div>\r\n<div class=\"product-attribute__attr--description\">&nbsp;</div>\r\n<div class=\"product-attribute__attr--description\">Picked from the finest wheat fields<br />100% whole wheat Atta<br />Get the super quality taste<br />Imparts a good aroma and a fluffy look<br />Also helps prevent weight gain</div>\r\n<div class=\"product-attribute__attr--description\">&nbsp;</div>\r\n</div>\r\n<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\">Weight 10 kg</div>\r\n</div>', NULL),
(23, 23, 'en', 'INDIA GATE - Family Farm Broken Mogra Basmati Rice', '<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\"><strong>Key Features</strong></div>\r\n<div class=\"product-attribute__attr--description\">&nbsp;</div>\r\n<div class=\"product-attribute__attr--description\">Carefully selected for the highest quality<br />Rich aroma and taste<br />Widely used in cooking for an authentic Indian taste<br />A perfect fit for everyday consumption</div>\r\n</div>\r\n<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\">Weight - 10 kg</div>\r\n</div>', NULL),
(24, 24, 'en', 'AASHIRVAAD - Family Farm Arhar Dal/Toor Dal', '<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Key Features</strong></div>\r\n<div class=\"product-attribute__attr--name\">&nbsp;</div>\r\n<div class=\"product-attribute__attr--description\">Carefully picked for the highest quality<br />Wholesome, healthy and nutritious<br />Rich source of essential nutrients, dietary fibres and protein<br />Commonly used in preparing sambar and dal recipes that pairs well with rice or parantha</div>\r\n</div>\r\n<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\">Weight - 1 kg</div>\r\n</div>', NULL),
(25, 25, 'en', 'AASHIRVAAD - Family Farm Almonds', '<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\"><strong>Key Features</strong></div>\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\">&nbsp;</div>\r\n<div class=\"product-attribute__attr--description\">Crunchy almonds<br />Nutritious and tasty</div>\r\n</div>\r\n<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\">Unit 500 g</div>\r\n</div>', NULL),
(26, 26, 'en', 'Haldiram\'s Aloo Bhujia Namkeen', '<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\"><strong>Key Features</strong></div>\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\">&nbsp;</div>\r\n<div class=\"product-attribute__attr--description\">Spicy blend of tasty ingredients<br />Trans fat free<br />Cholesterol free<br />Popular snack</div>\r\n<div class=\"product-attribute__attr--description\">&nbsp;</div>\r\n</div>\r\n<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\"><strong>Ingredients</strong></div>\r\n<div class=\"product-attribute__attr--name\">&nbsp;</div>\r\n<div class=\"product-attribute__attr--description\">Potatoes (44 %), Edible Vegetable Oil, Coriander Powder, Mace Powder, Gram Pulse Flour, Tepary Beans Flour, Rice Powder, Edible Starch, Edible Common Salt Powder, Coriander Powder, Cumin Powder, Mango Powder, Garlic Powder, Onion Powder, Lemon Powder, Ginger Powder, Red Chilli Powder, Nutmeg Powder, Mint Leaves Powder, Acidity Regulator (INS330).</div>\r\n<div class=\"product-attribute__attr--description\">&nbsp;</div>\r\n</div>\r\n<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\">Weight - 400 g</div>\r\n</div>', NULL),
(27, 27, 'en', 'Haldiram\'s Moong Dal Namkeen', '<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\"><strong>Key Features</strong></div>\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\">&nbsp;</div>\r\n<div class=\"product-attribute__attr--description\">0% Trans-fat<br />0% Cholesterol</div>\r\n<div class=\"product-attribute__attr--description\">&nbsp;</div>\r\n</div>\r\n<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\"><strong>Ingredients</strong></div>\r\n<div class=\"product-attribute__attr--name\" style=\"text-align: center;\">&nbsp;</div>\r\n<div class=\"product-attribute__attr--description\">Split Green Gram (74%), Edible Oil and Edible Common Salt Powder</div>\r\n</div>\r\n<div class=\"product-attribute__attr\">\r\n<div class=\"product-attribute__attr--name\">&nbsp;</div>\r\n<div class=\"product-attribute__attr--description\">Weight - 200 g</div>\r\n</div>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `related_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `reviewer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `permissions`, `created_at`, `updated_at`) VALUES
(1, '{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true,\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.filters.index\":true,\"admin.filters.create\":true,\"admin.filters.edit\":true,\"admin.filters.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.tags.index\":true,\"admin.tags.create\":true,\"admin.tags.edit\":true,\"admin.tags.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.transactions.index\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.reports.index\":true,\"admin.settings.edit\":true,\"admin.storefront.edit\":true}', '2020-07-23 01:20:42', '2020-07-23 01:20:42'),
(2, NULL, '2020-07-23 01:20:42', '2020-07-23 01:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Admin'),
(2, 2, 'en', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` int(10) UNSIGNED NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_terms`
--

INSERT INTO `search_terms` (`id`, `term`, `results`, `hits`, `created_at`, `updated_at`) VALUES
(1, 'Hot Mens Parka Coats Men Winter Warm Hooded', 1, 11, '2020-07-25 14:55:28', '2020-07-26 17:11:26'),
(2, 'qwqewweqeqweqwewqwqeqwqw', 0, 1, '2020-07-26 16:23:44', '2020-07-26 16:23:44'),
(3, 'haldi', 2, 1, '2020-08-11 19:26:16', '2020-08-11 19:26:16'),
(4, 'men', 8, 2, '2020-08-11 19:26:46', '2020-08-21 19:26:02'),
(5, 'Vegetables', 0, 1, '2020-09-11 17:18:28', '2020-09-11 17:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_translatable` tinyint(1) NOT NULL DEFAULT 0,
  `plain_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `is_translatable`, `plain_value`, `created_at`, `updated_at`) VALUES
(1, 'store_name', 1, NULL, '2020-07-23 01:20:42', '2020-07-23 01:20:42'),
(2, 'store_email', 0, 's:23:\"support@freshbasket.com\";', '2020-07-23 01:20:42', '2020-08-11 17:59:38'),
(3, 'search_engine', 0, 's:5:\"mysql\";', '2020-07-23 01:20:42', '2020-07-23 01:20:42'),
(4, 'algolia_app_id', 0, 'N;', '2020-07-23 01:20:42', '2020-07-23 01:20:42'),
(5, 'algolia_secret', 0, 'N;', '2020-07-23 01:20:42', '2020-07-23 01:20:42'),
(6, 'active_theme', 0, 's:10:\"Storefront\";', '2020-07-23 01:20:42', '2020-07-23 01:20:42'),
(7, 'supported_countries', 0, 'a:1:{i:0;s:2:\"IN\";}', '2020-07-23 01:20:42', '2020-07-28 12:07:09'),
(8, 'default_country', 0, 's:2:\"IN\";', '2020-07-23 01:20:42', '2020-07-28 12:07:09'),
(9, 'supported_locales', 0, 'a:1:{i:0;s:2:\"en\";}', '2020-07-23 01:20:42', '2020-07-23 01:20:42'),
(10, 'default_locale', 0, 's:2:\"en\";', '2020-07-23 01:20:42', '2020-07-23 01:20:42'),
(11, 'default_timezone', 0, 's:12:\"Asia/Kolkata\";', '2020-07-23 01:20:42', '2020-07-28 12:07:09'),
(12, 'customer_role', 0, 's:1:\"2\";', '2020-07-23 01:20:42', '2020-07-28 12:05:59'),
(13, 'reviews_enabled', 0, 's:1:\"1\";', '2020-07-23 01:20:42', '2020-07-28 12:05:59'),
(14, 'auto_approve_reviews', 0, 's:1:\"1\";', '2020-07-23 01:20:42', '2020-07-28 12:05:59'),
(15, 'cookie_bar_enabled', 0, 's:1:\"1\";', '2020-07-23 01:20:42', '2020-07-28 12:05:59'),
(16, 'supported_currencies', 0, 'a:1:{i:0;s:3:\"INR\";}', '2020-07-23 01:20:42', '2020-07-28 12:06:12'),
(17, 'default_currency', 0, 's:3:\"INR\";', '2020-07-23 01:20:42', '2020-07-28 12:06:12'),
(18, 'send_order_invoice_email', 0, 'b:0;', '2020-07-23 01:20:42', '2020-07-23 01:20:42'),
(19, 'newsletter_enabled', 0, 's:1:\"0\";', '2020-07-23 01:20:42', '2020-07-28 12:05:59'),
(20, 'local_pickup_cost', 0, 's:1:\"0\";', '2020-07-23 01:20:42', '2020-07-28 12:05:59'),
(21, 'flat_rate_cost', 0, 's:1:\"0\";', '2020-07-23 01:20:42', '2020-07-28 12:05:59'),
(22, 'free_shipping_label', 1, NULL, '2020-07-23 01:20:42', '2020-07-23 01:20:42'),
(23, 'local_pickup_label', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(24, 'flat_rate_label', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(25, 'paypal_label', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(26, 'paypal_description', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(27, 'stripe_label', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(28, 'stripe_description', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(29, 'razorpay_label', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(30, 'razorpay_description', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(31, 'instamojo_label', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(32, 'instamojo_description', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(33, 'cod_label', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(34, 'cod_description', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(35, 'bank_transfer_label', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(36, 'bank_transfer_description', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(37, 'check_payment_label', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(38, 'check_payment_description', 1, NULL, '2020-07-23 01:20:43', '2020-07-23 01:20:43'),
(39, 'storefront_copyright_text', 1, 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";', '2020-07-23 01:20:43', '2020-07-27 12:16:26'),
(40, 'storefront_welcome_text', 1, NULL, '2020-07-27 12:16:25', '2020-07-27 12:16:25'),
(41, 'storefront_address', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(42, 'storefront_navbar_text', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(43, 'storefront_footer_menu_one_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(44, 'storefront_footer_menu_two_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(45, 'storefront_feature_1_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(46, 'storefront_feature_1_subtitle', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(47, 'storefront_feature_2_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(48, 'storefront_feature_2_subtitle', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(49, 'storefront_feature_3_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(50, 'storefront_feature_3_subtitle', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(51, 'storefront_feature_4_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(52, 'storefront_feature_4_subtitle', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(53, 'storefront_feature_5_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(54, 'storefront_feature_5_subtitle', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(55, 'storefront_product_page_banner_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(56, 'storefront_slider_banner_1_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(57, 'storefront_slider_banner_2_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(58, 'storefront_three_column_full_width_banners_1_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(59, 'storefront_three_column_full_width_banners_2_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(60, 'storefront_three_column_full_width_banners_3_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(61, 'storefront_featured_categories_section_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(62, 'storefront_featured_categories_section_subtitle', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(63, 'storefront_product_tabs_1_section_tab_1_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(64, 'storefront_product_tabs_1_section_tab_2_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(65, 'storefront_product_tabs_1_section_tab_3_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(66, 'storefront_product_tabs_1_section_tab_4_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(67, 'storefront_two_column_banners_1_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(68, 'storefront_two_column_banners_2_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(69, 'storefront_product_grid_section_tab_1_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(70, 'storefront_product_grid_section_tab_2_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(71, 'storefront_product_grid_section_tab_3_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(72, 'storefront_product_grid_section_tab_4_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(73, 'storefront_three_column_banners_1_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(74, 'storefront_three_column_banners_2_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(75, 'storefront_three_column_banners_3_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(76, 'storefront_product_tabs_2_section_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(77, 'storefront_product_tabs_2_section_tab_1_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(78, 'storefront_product_tabs_2_section_tab_2_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(79, 'storefront_product_tabs_2_section_tab_3_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(80, 'storefront_product_tabs_2_section_tab_4_title', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(81, 'storefront_one_column_banner_file_id', 1, NULL, '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(82, 'storefront_theme_color', 0, 's:4:\"blue\";', '2020-07-27 12:16:26', '2020-07-28 08:05:49'),
(83, 'storefront_custom_theme_color', 0, 's:7:\"#000000\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(84, 'storefront_mail_theme_color', 0, 's:4:\"blue\";', '2020-07-27 12:16:26', '2020-07-28 08:05:49'),
(85, 'storefront_custom_mail_theme_color', 0, 's:7:\"#000000\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(86, 'storefront_slider', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(87, 'storefront_terms_page', 0, 's:1:\"4\";', '2020-07-27 12:16:26', '2020-07-28 07:50:50'),
(88, 'storefront_privacy_page', 0, 's:1:\"5\";', '2020-07-27 12:16:26', '2020-07-28 07:50:50'),
(89, 'storefront_primary_menu', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-27 13:24:01'),
(90, 'storefront_category_menu', 0, 's:1:\"3\";', '2020-07-27 12:16:26', '2020-07-27 13:24:01'),
(91, 'storefront_footer_menu_one', 0, 's:1:\"5\";', '2020-07-27 12:16:26', '2020-07-28 07:50:50'),
(92, 'storefront_footer_menu_two', 0, 's:1:\"4\";', '2020-07-27 12:16:26', '2020-07-28 07:50:50'),
(93, 'storefront_features_section_enabled', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 07:50:50'),
(94, 'storefront_feature_1_icon', 0, 's:17:\"las la-headphones\";', '2020-07-27 12:16:26', '2020-07-28 07:50:50'),
(95, 'storefront_feature_2_icon', 0, 's:18:\"las la-credit-card\";', '2020-07-27 12:16:26', '2020-07-28 07:50:50'),
(96, 'storefront_feature_3_icon', 0, 's:17:\"las la-shield-alt\";', '2020-07-27 12:16:26', '2020-07-28 07:50:50'),
(97, 'storefront_feature_4_icon', 0, 's:12:\"las la-truck\";', '2020-07-27 12:16:26', '2020-07-28 07:50:50'),
(98, 'storefront_feature_5_icon', 0, 's:21:\"las la-calendar-minus\";', '2020-07-27 12:16:26', '2020-07-28 07:50:50'),
(99, 'storefront_product_page_banner_call_to_action_url', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(100, 'storefront_product_page_banner_open_in_new_window', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(101, 'storefront_facebook_link', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(102, 'storefront_twitter_link', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(103, 'storefront_instagram_link', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(104, 'storefront_youtube_link', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(105, 'storefront_slider_banner_1_call_to_action_url', 0, 's:1:\"#\";', '2020-07-27 12:16:26', '2020-07-27 14:32:24'),
(106, 'storefront_slider_banner_1_open_in_new_window', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(107, 'storefront_slider_banner_2_call_to_action_url', 0, 's:1:\"#\";', '2020-07-27 12:16:26', '2020-07-27 14:32:24'),
(108, 'storefront_slider_banner_2_open_in_new_window', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(109, 'storefront_three_column_full_width_banners_enabled', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-27 14:43:34'),
(110, 'storefront_three_column_full_width_banners_1_call_to_action_url', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(111, 'storefront_three_column_full_width_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(112, 'storefront_three_column_full_width_banners_2_call_to_action_url', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(113, 'storefront_three_column_full_width_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(114, 'storefront_three_column_full_width_banners_3_call_to_action_url', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(115, 'storefront_three_column_full_width_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(116, 'storefront_featured_categories_section_enabled', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-27 14:45:56'),
(117, 'storefront_featured_categories_section_category_1_category_id', 0, 's:3:\"113\";', '2020-07-27 12:16:26', '2020-07-27 16:41:12'),
(118, 'storefront_featured_categories_section_category_1_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-27 14:45:56'),
(119, 'storefront_featured_categories_section_category_1_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(120, 'storefront_featured_categories_section_category_2_category_id', 0, 's:2:\"22\";', '2020-07-27 12:16:26', '2020-07-27 16:41:12'),
(121, 'storefront_featured_categories_section_category_2_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-27 16:36:26'),
(122, 'storefront_featured_categories_section_category_2_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(123, 'storefront_featured_categories_section_category_3_category_id', 0, 's:2:\"59\";', '2020-07-27 12:16:26', '2020-07-27 16:41:12'),
(124, 'storefront_featured_categories_section_category_3_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-27 16:41:12'),
(125, 'storefront_featured_categories_section_category_3_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(126, 'storefront_featured_categories_section_category_4_category_id', 0, 's:1:\"6\";', '2020-07-27 12:16:26', '2020-07-27 16:41:12'),
(127, 'storefront_featured_categories_section_category_4_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-27 16:41:12'),
(128, 'storefront_featured_categories_section_category_4_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(129, 'storefront_featured_categories_section_category_5_category_id', 0, 's:1:\"3\";', '2020-07-27 12:16:26', '2020-07-27 16:41:12'),
(130, 'storefront_featured_categories_section_category_5_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-27 16:41:12'),
(131, 'storefront_featured_categories_section_category_5_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(132, 'storefront_featured_categories_section_category_6_category_id', 0, 's:3:\"106\";', '2020-07-27 12:16:26', '2020-07-27 16:41:12'),
(133, 'storefront_featured_categories_section_category_6_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-27 16:41:12'),
(134, 'storefront_featured_categories_section_category_6_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(135, 'storefront_product_tabs_1_section_enabled', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 06:48:36'),
(136, 'storefront_product_tabs_1_section_tab_1_product_type', 0, 's:15:\"custom_products\";', '2020-07-27 12:16:26', '2020-07-28 06:48:36'),
(137, 'storefront_product_tabs_1_section_tab_1_category_id', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(138, 'storefront_product_tabs_1_section_tab_1_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(139, 'storefront_product_tabs_1_section_tab_2_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-28 06:48:36'),
(140, 'storefront_product_tabs_1_section_tab_2_category_id', 0, 's:3:\"106\";', '2020-07-27 12:16:26', '2020-07-28 06:48:36'),
(141, 'storefront_product_tabs_1_section_tab_2_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(142, 'storefront_product_tabs_1_section_tab_3_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-28 06:48:36'),
(143, 'storefront_product_tabs_1_section_tab_3_category_id', 0, 's:1:\"2\";', '2020-07-27 12:16:26', '2020-07-28 06:48:36'),
(144, 'storefront_product_tabs_1_section_tab_3_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(145, 'storefront_product_tabs_1_section_tab_4_product_type', 0, 's:15:\"custom_products\";', '2020-07-27 12:16:26', '2020-07-28 06:48:36'),
(146, 'storefront_product_tabs_1_section_tab_4_category_id', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(147, 'storefront_product_tabs_1_section_tab_4_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(148, 'storefront_top_brands_section_enabled', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-28 06:49:45'),
(149, 'storefront_flash_sale_and_vertical_products_section_enabled', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 06:57:25'),
(150, 'storefront_flash_sale_title', 0, 's:17:\"Best <b>Deals</b>\";', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(151, 'storefront_active_flash_sale_campaign', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(152, 'storefront_vertical_products_1_title', 0, 's:7:\"Grocery\";', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(153, 'storefront_vertical_products_1_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(154, 'storefront_vertical_products_1_category_id', 0, 's:3:\"113\";', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(155, 'storefront_vertical_products_1_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(156, 'storefront_vertical_products_2_title', 0, 's:11:\"Electronics\";', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(157, 'storefront_vertical_products_2_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(158, 'storefront_vertical_products_2_category_id', 0, 's:1:\"2\";', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(159, 'storefront_vertical_products_2_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(160, 'storefront_vertical_products_3_title', 0, 's:12:\"Best Product\";', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(161, 'storefront_vertical_products_3_product_type', 0, 's:15:\"custom_products\";', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(162, 'storefront_vertical_products_3_category_id', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(163, 'storefront_vertical_products_3_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(164, 'storefront_two_column_banners_enabled', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 07:01:49'),
(165, 'storefront_two_column_banners_1_call_to_action_url', 0, 's:75:\"http://fleetcart.fuggi.in/products/apple-imac-pro-27-with-5k-retina-display\";', '2020-07-27 12:16:26', '2020-07-28 07:01:49'),
(166, 'storefront_two_column_banners_1_open_in_new_window', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 07:01:49'),
(167, 'storefront_two_column_banners_2_call_to_action_url', 0, 's:86:\"http://fleetcart.fuggi.in/products/fanmis-mens-luxury-analog-quartz-gold-wrist-watches\";', '2020-07-27 12:16:26', '2020-07-28 07:01:49'),
(168, 'storefront_two_column_banners_2_open_in_new_window', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 07:01:49'),
(169, 'storefront_product_grid_section_enabled', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 07:06:23'),
(170, 'storefront_product_grid_section_tab_1_product_type', 0, 's:15:\"custom_products\";', '2020-07-27 12:16:26', '2020-07-28 07:06:23'),
(171, 'storefront_product_grid_section_tab_1_category_id', 0, 's:1:\"2\";', '2020-07-27 12:16:26', '2020-07-28 07:06:23'),
(172, 'storefront_product_grid_section_tab_1_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(173, 'storefront_product_grid_section_tab_2_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-28 07:06:23'),
(174, 'storefront_product_grid_section_tab_2_category_id', 0, 's:3:\"113\";', '2020-07-27 12:16:26', '2020-07-28 07:06:23'),
(175, 'storefront_product_grid_section_tab_2_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(176, 'storefront_product_grid_section_tab_3_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-28 07:06:23'),
(177, 'storefront_product_grid_section_tab_3_category_id', 0, 's:2:\"22\";', '2020-07-27 12:16:26', '2020-07-28 07:06:23'),
(178, 'storefront_product_grid_section_tab_3_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(179, 'storefront_product_grid_section_tab_4_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-28 07:06:23'),
(180, 'storefront_product_grid_section_tab_4_category_id', 0, 's:1:\"3\";', '2020-07-27 12:16:26', '2020-07-28 07:06:23'),
(181, 'storefront_product_grid_section_tab_4_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(182, 'storefront_three_column_banners_enabled', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 07:11:04'),
(183, 'storefront_three_column_banners_1_call_to_action_url', 0, 's:1:\"#\";', '2020-07-27 12:16:26', '2020-07-28 07:11:04'),
(184, 'storefront_three_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(185, 'storefront_three_column_banners_2_call_to_action_url', 0, 's:1:\"#\";', '2020-07-27 12:16:26', '2020-07-28 07:11:04'),
(186, 'storefront_three_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(187, 'storefront_three_column_banners_3_call_to_action_url', 0, 's:1:\"#\";', '2020-07-27 12:16:26', '2020-07-28 07:11:04'),
(188, 'storefront_three_column_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(189, 'storefront_product_tabs_2_section_enabled', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 07:20:38'),
(190, 'storefront_product_tabs_2_section_tab_1_product_type', 0, 's:15:\"latest_products\";', '2020-07-27 12:16:26', '2020-07-28 07:20:38'),
(191, 'storefront_product_tabs_2_section_tab_1_category_id', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(192, 'storefront_product_tabs_2_section_tab_1_products_limit', 0, 's:2:\"10\";', '2020-07-27 12:16:26', '2020-07-28 07:20:38'),
(193, 'storefront_product_tabs_2_section_tab_2_product_type', 0, 's:24:\"recently_viewed_products\";', '2020-07-27 12:16:26', '2020-07-28 07:22:33'),
(194, 'storefront_product_tabs_2_section_tab_2_category_id', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(195, 'storefront_product_tabs_2_section_tab_2_products_limit', 0, 's:2:\"10\";', '2020-07-27 12:16:26', '2020-07-28 07:22:33'),
(196, 'storefront_product_tabs_2_section_tab_3_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-28 07:22:33'),
(197, 'storefront_product_tabs_2_section_tab_3_category_id', 0, 's:1:\"2\";', '2020-07-27 12:16:26', '2020-07-28 07:22:33'),
(198, 'storefront_product_tabs_2_section_tab_3_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(199, 'storefront_product_tabs_2_section_tab_4_product_type', 0, 's:17:\"category_products\";', '2020-07-27 12:16:26', '2020-07-28 07:22:33'),
(200, 'storefront_product_tabs_2_section_tab_4_category_id', 0, 's:2:\"83\";', '2020-07-27 12:16:26', '2020-07-28 07:22:33'),
(201, 'storefront_product_tabs_2_section_tab_4_products_limit', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(202, 'storefront_one_column_banner_enabled', 0, 's:1:\"1\";', '2020-07-27 12:16:26', '2020-07-28 07:23:34'),
(203, 'storefront_one_column_banner_call_to_action_url', 0, 's:1:\"#\";', '2020-07-27 12:16:26', '2020-07-28 07:23:34'),
(204, 'storefront_one_column_banner_open_in_new_window', 0, 's:1:\"0\";', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(205, 'storefront_footer_tags', 0, 'a:9:{i:0;s:1:\"2\";i:1;s:1:\"4\";i:2;s:1:\"8\";i:3;s:1:\"9\";i:4;s:1:\"1\";i:5;s:1:\"5\";i:6;s:1:\"3\";i:7;s:1:\"7\";i:8;s:1:\"6\";}', '2020-07-27 12:16:26', '2020-07-28 07:57:48'),
(206, 'storefront_featured_categories_section_category_1_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(207, 'storefront_featured_categories_section_category_2_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(208, 'storefront_featured_categories_section_category_3_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(209, 'storefront_featured_categories_section_category_4_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(210, 'storefront_featured_categories_section_category_5_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(211, 'storefront_featured_categories_section_category_6_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(212, 'storefront_product_tabs_1_section_tab_1_products', 0, 'a:5:{i:0;s:2:\"27\";i:1;s:2:\"13\";i:2;s:2:\"23\";i:3;s:2:\"10\";i:4;s:1:\"2\";}', '2020-07-27 12:16:26', '2020-07-28 06:48:36'),
(213, 'storefront_product_tabs_1_section_tab_2_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(214, 'storefront_product_tabs_1_section_tab_3_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(215, 'storefront_product_tabs_1_section_tab_4_products', 0, 'a:5:{i:0;s:1:\"6\";i:1;s:2:\"12\";i:2;s:1:\"8\";i:3;s:1:\"1\";i:4;s:1:\"3\";}', '2020-07-27 12:16:26', '2020-07-28 06:48:36'),
(216, 'storefront_top_brands', 0, 'a:1:{i:0;s:2:\"18\";}', '2020-07-27 12:16:26', '2020-07-28 06:49:29'),
(217, 'storefront_vertical_products_1_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(218, 'storefront_vertical_products_2_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(219, 'storefront_vertical_products_3_products', 0, 'a:6:{i:0;s:1:\"7\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"4\";i:4;s:2:\"13\";i:5;s:2:\"10\";}', '2020-07-27 12:16:26', '2020-07-28 06:57:11'),
(220, 'storefront_product_grid_section_tab_1_products', 0, 'a:12:{i:0;s:2:\"27\";i:1;s:2:\"26\";i:2;s:1:\"6\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"5\";i:6;s:1:\"1\";i:7;s:1:\"8\";i:8;s:2:\"13\";i:9;s:1:\"7\";i:10;s:2:\"24\";i:11;s:2:\"25\";}', '2020-07-27 12:16:26', '2020-07-28 07:06:23'),
(221, 'storefront_product_grid_section_tab_2_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(222, 'storefront_product_grid_section_tab_3_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(223, 'storefront_product_grid_section_tab_4_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(224, 'storefront_product_tabs_2_section_tab_1_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(225, 'storefront_product_tabs_2_section_tab_2_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(226, 'storefront_product_tabs_2_section_tab_3_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(227, 'storefront_product_tabs_2_section_tab_4_products', 0, 'N;', '2020-07-27 12:16:26', '2020-07-27 12:16:26'),
(228, 'storefront_three_column_full_width_banners_background_file_id', 0, 's:3:\"108\";', '2020-07-27 14:43:34', '2020-07-27 14:43:34'),
(229, 'storefront_header_logo', 1, NULL, '2020-07-28 07:40:05', '2020-07-28 07:40:05'),
(230, 'storefront_favicon', 0, 's:3:\"130\";', '2020-07-28 07:40:05', '2020-07-28 07:41:02'),
(231, 'storefront_accepted_payment_methods_image', 0, 's:3:\"131\";', '2020-07-28 07:47:09', '2020-07-28 07:47:09'),
(232, 'welcome_email', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(233, 'admin_order_email', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(234, 'order_status_email', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(235, 'invoice_email', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(236, 'maintenance_mode', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(237, 'allowed_ips', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(238, 'store_tagline', 1, NULL, '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(239, 'bank_transfer_instructions', 1, NULL, '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(240, 'check_payment_instructions', 1, NULL, '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(241, 'store_phone', 0, 's:13:\"+919886999933\";', '2020-07-28 12:05:59', '2020-08-11 17:59:38'),
(242, 'store_address_1', 0, 's:78:\"1C48, Kanakashree Nagar, Ingaligi Road, Old Malapana Gidi(P) Hosapete- 583 239\";', '2020-07-28 12:05:59', '2020-08-11 17:59:38'),
(243, 'store_address_2', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(244, 'store_city', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(245, 'store_country', 0, 's:2:\"IN\";', '2020-07-28 12:05:59', '2020-07-28 12:06:44'),
(246, 'store_state', 0, 's:2:\"PB\";', '2020-07-28 12:05:59', '2020-08-11 17:59:38'),
(247, 'store_zip', 0, 's:6:\"583239\";', '2020-07-28 12:05:59', '2020-08-11 17:59:38'),
(248, 'currency_rate_exchange_service', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(249, 'fixer_access_key', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(250, 'forge_api_key', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(251, 'currency_data_feed_api_key', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(252, 'auto_refresh_currency_rates', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(253, 'auto_refresh_currency_rate_frequency', 0, 's:5:\"daily\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(254, 'mail_from_address', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(255, 'mail_from_name', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(256, 'mail_host', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(257, 'mail_port', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(258, 'mail_username', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(259, 'mail_password', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(260, 'mail_encryption', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(261, 'mailchimp_api_key', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(262, 'mailchimp_list_id', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(263, 'custom_header_assets', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(264, 'custom_footer_assets', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(265, 'facebook_login_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(266, 'facebook_login_app_id', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(267, 'facebook_login_app_secret', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(268, 'google_login_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(269, 'google_login_client_id', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(270, 'google_login_client_secret', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(271, 'free_shipping_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(272, 'free_shipping_min_amount', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(273, 'local_pickup_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(274, 'flat_rate_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(275, 'paypal_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(276, 'paypal_test_mode', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(277, 'paypal_client_id', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(278, 'paypal_secret', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(279, 'stripe_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(280, 'stripe_publishable_key', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(281, 'stripe_secret_key', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(282, 'razorpay_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(283, 'razorpay_key_id', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(284, 'razorpay_key_secret', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(285, 'instamojo_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(286, 'instamojo_test_mode', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(287, 'instamojo_api_key', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(288, 'instamojo_auth_token', 0, 'N;', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(289, 'cod_enabled', 0, 's:1:\"1\";', '2020-07-28 12:05:59', '2020-08-11 18:00:42'),
(290, 'bank_transfer_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59'),
(291, 'check_payment_enabled', 0, 's:1:\"0\";', '2020-07-28 12:05:59', '2020-07-28 12:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', 's:11:\"FreshBasket\";'),
(2, 22, 'en', 's:13:\"Free Shipping\";'),
(3, 23, 'en', 's:12:\"Local Pickup\";'),
(4, 24, 'en', 's:9:\"Flat Rate\";'),
(5, 25, 'en', 's:6:\"PayPal\";'),
(6, 26, 'en', 's:28:\"Pay via your PayPal account.\";'),
(7, 27, 'en', 's:6:\"Stripe\";'),
(8, 28, 'en', 's:29:\"Pay via credit or debit card.\";'),
(9, 29, 'en', 's:8:\"Razorpay\";'),
(10, 30, 'en', 's:74:\"Pay securely by Credit or Debit card or Internet Banking through Razorpay.\";'),
(11, 31, 'en', 's:9:\"Instamojo\";'),
(12, 32, 'en', 's:16:\"CC/DB/NB/Wallets\";'),
(13, 33, 'en', 's:16:\"Cash On Delivery\";'),
(14, 34, 'en', 's:28:\"Pay with cash upon delivery.\";'),
(15, 35, 'en', 's:13:\"Bank Transfer\";'),
(16, 36, 'en', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(17, 37, 'en', 's:19:\"Check / Money Order\";'),
(18, 38, 'en', 's:33:\"Please send a check to our store.\";'),
(19, 40, 'en', 'N;'),
(20, 41, 'en', 's:57:\"C/o. Milatservices Pvt Ltd. Beehama ganderbal J&K  191201\";'),
(21, 42, 'en', 's:27:\"Free shipping over Rs.1000+\";'),
(22, 43, 'en', 's:12:\"Our Services\";'),
(23, 44, 'en', 's:11:\"Information\";'),
(24, 39, 'en', 's:47:\"Copyright ©fuggi.in 2020. All rights reserved.\";'),
(25, 45, 'en', 's:12:\"24/7 SUPPORT\";'),
(26, 46, 'en', 's:18:\"Support every time\";'),
(27, 47, 'en', 's:14:\"ACCEPT PAYMENT\";'),
(28, 48, 'en', 's:44:\"Visa, Paypal, Master, PayTm, UPI, Netbanking\";'),
(29, 49, 'en', 's:15:\"SECURED PAYMENT\";'),
(30, 50, 'en', 's:12:\"100% secured\";'),
(31, 51, 'en', 's:13:\"FREE SHIPPING\";'),
(32, 52, 'en', 's:18:\"Order over Rs.1000\";'),
(33, 53, 'en', 's:14:\"30 DAYS RETURN\";'),
(34, 54, 'en', 's:17:\"30 days guarantee\";'),
(35, 55, 'en', 'N;'),
(36, 56, 'en', 's:3:\"104\";'),
(37, 57, 'en', 's:3:\"105\";'),
(38, 58, 'en', 's:3:\"106\";'),
(39, 59, 'en', 's:3:\"110\";'),
(40, 60, 'en', 's:3:\"111\";'),
(41, 61, 'en', 's:36:\"Top Categories in Sales and Trending\";'),
(42, 62, 'en', 's:107:\"Last Month upto 1500+ Products Sales From this catagory. You can choose a product from here and save money.\";'),
(43, 63, 'en', 's:8:\"Featured\";'),
(44, 64, 'en', 's:7:\"Special\";'),
(45, 65, 'en', 's:11:\"New Arrival\";'),
(46, 66, 'en', 's:6:\"Latest\";'),
(47, 67, 'en', 's:3:\"123\";'),
(48, 68, 'en', 's:3:\"124\";'),
(49, 69, 'en', 's:20:\"Weak selling product\";'),
(50, 70, 'en', 's:7:\"Grocery\";'),
(51, 71, 'en', 's:7:\"Laptops\";'),
(52, 72, 'en', 's:7:\"Fashion\";'),
(53, 73, 'en', 's:3:\"125\";'),
(54, 74, 'en', 's:3:\"126\";'),
(55, 75, 'en', 's:3:\"127\";'),
(56, 76, 'en', 's:16:\"Hot Best Sellers\";'),
(57, 77, 'en', 's:15:\"Latest Products\";'),
(58, 78, 'en', 's:15:\"Recently Viewed\";'),
(59, 79, 'en', 's:7:\"On Sale\";'),
(60, 80, 'en', 's:11:\"Top Selling\";'),
(61, 81, 'en', 's:3:\"128\";'),
(62, 229, 'en', 's:3:\"132\";'),
(63, 238, 'en', 's:31:\"buy new prodiucts and sell them\";'),
(64, 239, 'en', 'N;'),
(65, 240, 'en', 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `speed` int(11) DEFAULT NULL,
  `autoplay` tinyint(1) DEFAULT NULL,
  `autoplay_speed` int(11) DEFAULT NULL,
  `fade` tinyint(1) NOT NULL DEFAULT 0,
  `dots` tinyint(1) DEFAULT NULL,
  `arrows` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `speed`, `autoplay`, `autoplay_speed`, `fade`, `dots`, `arrows`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 3000, 0, 1, 1, '2020-07-27 11:52:36', '2020-07-27 11:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slides`
--

CREATE TABLE `slider_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_new_window` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slides`
--

INSERT INTO `slider_slides` (`id`, `slider_id`, `options`, `call_to_action_url`, `open_in_new_window`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 1, 0, '2020-07-27 11:52:36', '2020-07-27 11:52:36'),
(2, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 1, '2020-07-27 11:52:36', '2020-07-27 12:01:45'),
(3, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 2, '2020-07-27 11:52:36', '2020-07-27 12:01:45'),
(4, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 3, '2020-07-27 13:02:44', '2020-07-27 13:02:44'),
(5, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 4, '2020-07-27 13:02:44', '2020-07-27 13:02:44'),
(6, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 5, '2020-07-27 13:02:44', '2020-07-27 13:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slide_translations`
--

CREATE TABLE `slider_slide_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_slide_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slide_translations`
--

INSERT INTO `slider_slide_translations` (`id`, `slider_slide_id`, `locale`, `file_id`, `caption_1`, `caption_2`, `call_to_action_text`, `direction`) VALUES
(1, 1, 'en', 98, '<b>GROCERY</b>FRUITS', 'Fruits at best prices', 'SHOP NOW', 'left'),
(2, 2, 'en', 101, '<b>GROCERY</b> FRESH VEGITABLES>', 'Fresh Vegetable at best prices', 'BUY NOW', 'right'),
(3, 3, 'en', 99, '<b>GROCERY</b> FRESH VEGITABLES', 'Fresh Vegetable', 'ORDER NOW', 'left'),
(4, 4, 'en', 93, '<b>XIAOMI</b> SPEAKER', 'There are a upgrade for the quality and control in the home', 'SHOP NOW', 'left'),
(5, 5, 'en', 97, '<b>3D</b> Virtual Reality', 'VR 3D glasses with remote control gamepad at best price', 'BUY NOW', 'left'),
(6, 6, 'en', 102, '<b>DJI</b> MAVIC PRO', 'The creative\'s shop for flying cameras and flight controllers', 'ORDER NOW', 'left');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Main Slider');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'hd-tv', '2020-07-28 07:54:43', '2020-07-28 07:54:43'),
(2, 'aata', '2020-07-28 07:54:59', '2020-07-28 07:54:59'),
(3, 'mobile', '2020-07-28 07:55:10', '2020-07-28 07:55:10'),
(4, 'electronics', '2020-07-28 07:55:44', '2020-07-28 07:55:44'),
(5, 'hot-deals', '2020-07-28 07:56:03', '2020-07-28 07:56:03'),
(6, 'watches', '2020-07-28 07:56:21', '2020-07-28 07:56:21'),
(7, 'smartphones', '2020-07-28 07:56:40', '2020-07-28 07:56:40'),
(8, 'fashions', '2020-07-28 07:56:56', '2020-07-28 07:56:56'),
(9, 'gadgets', '2020-07-28 07:57:16', '2020-07-28 07:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

CREATE TABLE `tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_translations`
--

INSERT INTO `tag_translations` (`id`, `tag_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'HD TV'),
(2, 2, 'en', 'AATA'),
(3, 3, 'en', 'Mobile'),
(4, 4, 'en', 'Electronics'),
(5, 5, 'en', 'Hot deals'),
(6, 6, 'en', 'Watches'),
(7, 7, 'en', 'Smartphones'),
(8, 8, 'en', 'Fashions'),
(9, 9, 'en', 'Gadgets');

-- --------------------------------------------------------

--
-- Table structure for table `tax_classes`
--

CREATE TABLE `tax_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `based_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class_translations`
--

CREATE TABLE `tax_class_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_translations`
--

CREATE TABLE `tax_rate_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2020-07-23 14:22:03', '2020-07-23 14:22:03'),
(2, NULL, 'ip', '49.36.138.194', '2020-07-23 14:22:03', '2020-07-23 14:22:03'),
(3, NULL, 'global', NULL, '2020-07-25 10:31:33', '2020-07-25 10:31:33'),
(4, NULL, 'ip', '132.154.117.198', '2020-07-25 10:31:33', '2020-07-25 10:31:33'),
(5, 1, 'user', NULL, '2020-07-25 10:31:33', '2020-07-25 10:31:33'),
(6, NULL, 'global', NULL, '2020-07-25 10:33:06', '2020-07-25 10:33:06'),
(7, NULL, 'ip', '132.154.117.198', '2020-07-25 10:33:06', '2020-07-25 10:33:06'),
(8, 1, 'user', NULL, '2020-07-25 10:33:06', '2020-07-25 10:33:06'),
(9, NULL, 'global', NULL, '2020-07-25 10:34:58', '2020-07-25 10:34:58'),
(10, NULL, 'ip', '132.154.117.198', '2020-07-25 10:34:58', '2020-07-25 10:34:58'),
(11, 1, 'user', NULL, '2020-07-25 10:34:58', '2020-07-25 10:34:58'),
(12, NULL, 'global', NULL, '2020-07-25 14:15:22', '2020-07-25 14:15:22'),
(13, NULL, 'ip', '132.154.117.198', '2020-07-25 14:15:22', '2020-07-25 14:15:22'),
(14, 1, 'user', NULL, '2020-07-25 14:15:22', '2020-07-25 14:15:22'),
(15, NULL, 'global', NULL, '2020-07-25 14:39:13', '2020-07-25 14:39:13'),
(16, NULL, 'ip', '132.154.117.198', '2020-07-25 14:39:13', '2020-07-25 14:39:13'),
(17, 1, 'user', NULL, '2020-07-25 14:39:13', '2020-07-25 14:39:13'),
(18, NULL, 'global', NULL, '2020-07-27 11:55:02', '2020-07-27 11:55:02'),
(19, NULL, 'ip', '139.167.97.18', '2020-07-27 11:55:02', '2020-07-27 11:55:02'),
(20, NULL, 'global', NULL, '2020-07-27 12:15:25', '2020-07-27 12:15:25'),
(21, NULL, 'ip', '139.167.97.18', '2020-07-27 12:15:25', '2020-07-27 12:15:25'),
(22, 1, 'user', NULL, '2020-07-27 12:15:25', '2020-07-27 12:15:25'),
(23, NULL, 'global', NULL, '2020-07-27 20:00:49', '2020-07-27 20:00:49'),
(24, NULL, 'ip', '139.167.113.165', '2020-07-27 20:00:49', '2020-07-27 20:00:49'),
(25, NULL, 'global', NULL, '2020-07-29 15:55:20', '2020-07-29 15:55:20'),
(26, NULL, 'ip', '139.167.110.254', '2020-07-29 15:55:20', '2020-07-29 15:55:20'),
(27, 1, 'user', NULL, '2020-07-29 15:55:20', '2020-07-29 15:55:20'),
(28, NULL, 'global', NULL, '2020-07-31 08:17:16', '2020-07-31 08:17:16'),
(29, NULL, 'ip', '139.167.33.208', '2020-07-31 08:17:16', '2020-07-31 08:17:16'),
(30, 1, 'user', NULL, '2020-07-31 08:17:16', '2020-07-31 08:17:16'),
(31, NULL, 'global', NULL, '2020-08-01 12:37:04', '2020-08-01 12:37:04'),
(32, NULL, 'ip', '157.42.37.200', '2020-08-01 12:37:04', '2020-08-01 12:37:04'),
(33, 1, 'user', NULL, '2020-08-01 12:37:04', '2020-08-01 12:37:04'),
(34, NULL, 'global', NULL, '2020-08-01 12:37:59', '2020-08-01 12:37:59'),
(35, NULL, 'ip', '157.42.37.200', '2020-08-01 12:37:59', '2020-08-01 12:37:59'),
(36, 1, 'user', NULL, '2020-08-01 12:37:59', '2020-08-01 12:37:59'),
(37, NULL, 'global', NULL, '2020-08-01 12:38:15', '2020-08-01 12:38:15'),
(38, NULL, 'ip', '157.42.37.200', '2020-08-01 12:38:15', '2020-08-01 12:38:15'),
(39, 1, 'user', NULL, '2020-08-01 12:38:15', '2020-08-01 12:38:15'),
(40, NULL, 'global', NULL, '2020-08-01 12:38:37', '2020-08-01 12:38:37'),
(41, NULL, 'ip', '157.42.37.200', '2020-08-01 12:38:37', '2020-08-01 12:38:37'),
(42, 1, 'user', NULL, '2020-08-01 12:38:37', '2020-08-01 12:38:37'),
(43, NULL, 'global', NULL, '2020-08-01 12:40:58', '2020-08-01 12:40:58'),
(44, NULL, 'ip', '157.42.37.200', '2020-08-01 12:40:58', '2020-08-01 12:40:58'),
(45, 1, 'user', NULL, '2020-08-01 12:40:58', '2020-08-01 12:40:58'),
(46, NULL, 'global', NULL, '2020-08-01 13:45:31', '2020-08-01 13:45:31'),
(47, NULL, 'ip', '157.42.37.200', '2020-08-01 13:45:31', '2020-08-01 13:45:31'),
(48, 1, 'user', NULL, '2020-08-01 13:45:31', '2020-08-01 13:45:31'),
(49, NULL, 'global', NULL, '2020-08-01 13:45:49', '2020-08-01 13:45:49'),
(50, NULL, 'ip', '157.42.37.200', '2020-08-01 13:45:49', '2020-08-01 13:45:49'),
(51, 1, 'user', NULL, '2020-08-01 13:45:49', '2020-08-01 13:45:49'),
(52, NULL, 'global', NULL, '2020-08-01 16:00:52', '2020-08-01 16:00:52'),
(53, NULL, 'ip', '103.74.108.7', '2020-08-01 16:00:52', '2020-08-01 16:00:52'),
(54, 1, 'user', NULL, '2020-08-01 16:00:52', '2020-08-01 16:00:52'),
(55, NULL, 'global', NULL, '2020-08-01 16:01:04', '2020-08-01 16:01:04'),
(56, NULL, 'ip', '103.74.108.7', '2020-08-01 16:01:04', '2020-08-01 16:01:04'),
(57, 1, 'user', NULL, '2020-08-01 16:01:04', '2020-08-01 16:01:04'),
(58, NULL, 'global', NULL, '2020-08-01 16:01:24', '2020-08-01 16:01:24'),
(59, NULL, 'ip', '103.74.108.7', '2020-08-01 16:01:24', '2020-08-01 16:01:24'),
(60, 1, 'user', NULL, '2020-08-01 16:01:24', '2020-08-01 16:01:24'),
(61, NULL, 'global', NULL, '2020-08-24 17:00:24', '2020-08-24 17:00:24'),
(62, NULL, 'ip', '132.154.93.59', '2020-08-24 17:00:24', '2020-08-24 17:00:24'),
(63, NULL, 'global', NULL, '2020-08-24 17:00:51', '2020-08-24 17:00:51'),
(64, NULL, 'ip', '132.154.93.59', '2020-08-24 17:00:51', '2020-08-24 17:00:51'),
(65, NULL, 'global', NULL, '2020-08-24 17:01:05', '2020-08-24 17:01:05'),
(66, NULL, 'ip', '132.154.93.59', '2020-08-24 17:01:05', '2020-08-24 17:01:05'),
(67, NULL, 'global', NULL, '2020-08-24 17:01:23', '2020-08-24 17:01:23'),
(68, NULL, 'ip', '132.154.93.59', '2020-08-24 17:01:23', '2020-08-24 17:01:23'),
(69, NULL, 'global', NULL, '2020-08-24 17:01:37', '2020-08-24 17:01:37'),
(70, NULL, 'ip', '132.154.93.59', '2020-08-24 17:01:37', '2020-08-24 17:01:37'),
(71, NULL, 'global', NULL, '2020-09-05 10:52:21', '2020-09-05 10:52:21'),
(72, NULL, 'ip', '106.220.156.168', '2020-09-05 10:52:21', '2020-09-05 10:52:21'),
(73, 1, 'user', NULL, '2020-09-05 10:52:21', '2020-09-05 10:52:21'),
(74, NULL, 'global', NULL, '2020-09-05 13:26:54', '2020-09-05 13:26:54'),
(75, NULL, 'ip', '139.167.179.47', '2020-09-05 13:26:54', '2020-09-05 13:26:54'),
(76, NULL, 'global', NULL, '2020-09-10 16:28:26', '2020-09-10 16:28:26'),
(77, NULL, 'ip', '132.154.122.2', '2020-09-10 16:28:26', '2020-09-10 16:28:26'),
(78, NULL, 'global', NULL, '2020-09-10 16:28:42', '2020-09-10 16:28:42'),
(79, NULL, 'ip', '132.154.122.2', '2020-09-10 16:28:42', '2020-09-10 16:28:42'),
(80, NULL, 'global', NULL, '2020-09-10 16:29:23', '2020-09-10 16:29:23'),
(81, NULL, 'ip', '132.154.122.2', '2020-09-10 16:29:23', '2020-09-10 16:29:23'),
(82, NULL, 'global', NULL, '2020-09-10 16:29:34', '2020-09-10 16:29:34'),
(83, NULL, 'ip', '132.154.122.2', '2020-09-10 16:29:34', '2020-09-10 16:29:34'),
(84, NULL, 'global', NULL, '2020-09-11 17:20:45', '2020-09-11 17:20:45'),
(85, NULL, 'ip', '106.76.78.150', '2020-09-11 17:20:45', '2020-09-11 17:20:45'),
(86, 1, 'user', NULL, '2020-09-11 17:20:45', '2020-09-11 17:20:45'),
(87, NULL, 'global', NULL, '2020-09-11 17:22:23', '2020-09-11 17:22:23'),
(88, NULL, 'ip', '106.76.78.202', '2020-09-11 17:22:23', '2020-09-11 17:22:23'),
(89, NULL, 'global', NULL, '2020-09-12 22:06:20', '2020-09-12 22:06:20'),
(90, NULL, 'ip', '42.108.239.121', '2020-09-12 22:06:20', '2020-09-12 22:06:20'),
(91, NULL, 'global', NULL, '2020-09-12 22:06:29', '2020-09-12 22:06:29'),
(92, NULL, 'ip', '42.108.239.121', '2020-09-12 22:06:29', '2020-09-12 22:06:29'),
(93, NULL, 'global', NULL, '2020-09-12 22:09:50', '2020-09-12 22:09:50'),
(94, NULL, 'ip', '42.108.237.44', '2020-09-12 22:09:50', '2020-09-12 22:09:50'),
(95, NULL, 'global', NULL, '2020-09-12 22:10:06', '2020-09-12 22:10:06'),
(96, NULL, 'ip', '42.108.237.44', '2020-09-12 22:10:06', '2020-09-12 22:10:06'),
(97, NULL, 'global', NULL, '2020-09-12 22:17:37', '2020-09-12 22:17:37'),
(98, NULL, 'ip', '42.108.237.44', '2020-09-12 22:17:37', '2020-09-12 22:17:37'),
(99, NULL, 'global', NULL, '2020-09-21 20:40:02', '2020-09-21 20:40:02'),
(100, NULL, 'ip', '47.15.7.113', '2020-09-21 20:40:02', '2020-09-21 20:40:02'),
(101, 1, 'user', NULL, '2020-09-21 20:40:02', '2020-09-21 20:40:02'),
(102, NULL, 'global', NULL, '2020-09-27 10:32:58', '2020-09-27 10:32:58'),
(103, NULL, 'ip', '157.43.203.24', '2020-09-27 10:32:58', '2020-09-27 10:32:58'),
(104, 1, 'user', NULL, '2020-09-27 10:32:58', '2020-09-27 10:32:58'),
(105, NULL, 'global', NULL, '2020-10-18 23:48:06', '2020-10-18 23:48:06'),
(106, NULL, 'ip', '106.210.247.105', '2020-10-18 23:48:06', '2020-10-18 23:48:06'),
(107, 1, 'user', NULL, '2020-10-18 23:48:06', '2020-10-18 23:48:06'),
(108, NULL, 'global', NULL, '2020-10-18 23:48:27', '2020-10-18 23:48:27'),
(109, NULL, 'ip', '106.210.247.105', '2020-10-18 23:48:27', '2020-10-18 23:48:27'),
(110, 1, 'user', NULL, '2020-10-18 23:48:27', '2020-10-18 23:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translation_translations`
--

CREATE TABLE `translation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `translation_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updater_scripts`
--

CREATE TABLE `updater_scripts` (
  `id` int(10) UNSIGNED NOT NULL,
  `script` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updater_scripts`
--

INSERT INTO `updater_scripts` (`id`, `script`) VALUES
(1, 'V2_0_0');

-- --------------------------------------------------------

--
-- Table structure for table `up_sell_products`
--

CREATE TABLE `up_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `up_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `permissions`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'all', 'admin@host.com', '$2y$10$.0LLl3hYNaBSb6HxOA1dfux3jrqh9WEkOvuGa0E5lTNvaTVFm2O5e', NULL, '2020-11-10 15:50:16', '2020-07-23 01:20:42', '2020-11-10 15:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-23 01:20:42', '2020-07-23 01:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`),
  ADD KEY `attributes_attribute_set_id_index` (`attribute_set_id`);

--
-- Indexes for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD PRIMARY KEY (`attribute_id`,`category_id`),
  ADD KEY `attribute_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_set_translations_attribute_set_id_locale_unique` (`attribute_set_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_value_translations_attribute_value_id_locale_unique` (`attribute_value_id`,`locale`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_translations_brand_id_locale_unique` (`brand_id`,`locale`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_code_index` (`code`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`coupon_id`,`category_id`,`exclude`),
  ADD KEY `coupon_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`coupon_id`,`product_id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`);

--
-- Indexes for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD PRIMARY KEY (`product_id`,`cross_sell_product_id`),
  ADD KEY `cross_sell_products_cross_sell_product_id_foreign` (`cross_sell_product_id`);

--
-- Indexes for table `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_rates_currency_unique` (`currency`);

--
-- Indexes for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_files_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `entity_files_file_id_index` (`file_id`),
  ADD KEY `entity_files_zone_index` (`zone`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_filename_index` (`filename`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_products_flash_sale_id_foreign` (`flash_sale_id`),
  ADD KEY `flash_sale_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD PRIMARY KEY (`flash_sale_product_id`,`order_id`),
  ADD KEY `flash_sale_product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flash_sale_translations_flash_sale_id_locale_unique` (`flash_sale_id`,`locale`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_menu_id_index` (`menu_id`);

--
-- Indexes for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_item_translations_menu_item_id_locale_unique` (`menu_item_id`,`locale`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_translations_menu_id_locale_unique` (`menu_id`,`locale`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_data_entity_type_entity_id_index` (`entity_type`,`entity_id`);

--
-- Indexes for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_data_translations_meta_data_id_locale_unique` (`meta_data_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_translations_option_id_locale_unique` (`option_id`,`locale`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_values_option_id_index` (`option_id`);

--
-- Indexes for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_value_translations_option_value_id_locale_unique` (`option_value_id`,`locale`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_coupon_id_index` (`coupon_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_product_options_order_product_id_option_id_unique` (`order_product_id`,`option_id`),
  ADD KEY `order_product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD PRIMARY KEY (`order_product_option_id`,`option_value_id`),
  ADD KEY `order_product_option_values_option_value_id_foreign` (`option_value_id`);

--
-- Indexes for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `order_taxes_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_index` (`product_id`),
  ADD KEY `product_attributes_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`product_attribute_id`,`attribute_value_id`),
  ADD KEY `product_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`product_id`,`option_id`),
  ADD KEY `product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`);
ALTER TABLE `product_translations` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`product_id`,`related_product_id`),
  ADD KEY `related_products_related_product_id_foreign` (`related_product_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewer_id_index` (`reviewer_id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_translations_role_id_locale_unique` (`role_id`,`locale`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `search_terms_term_unique` (`term`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_slide_translations_slider_slide_id_locale_unique` (`slider_slide_id`,`locale`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_translations_slider_id_locale_unique` (`slider_id`,`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`);

--
-- Indexes for table `tax_classes`
--
ALTER TABLE `tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_class_translations_tax_class_id_locale_unique` (`tax_class_id`,`locale`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_tax_class_id_index` (`tax_class_id`);

--
-- Indexes for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rate_translations_tax_rate_id_locale_unique` (`tax_rate_id`,`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_order_id_unique` (`order_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_key_index` (`key`);

--
-- Indexes for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translation_translations_translation_id_locale_unique` (`translation_id`,`locale`);

--
-- Indexes for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD PRIMARY KEY (`product_id`,`up_sell_product_id`),
  ADD KEY `up_sell_products_up_sell_product_id_foreign` (`up_sell_product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `entity_files`
--
ALTER TABLE `entity_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_translations`
--
ALTER TABLE `option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product_options`
--
ALTER TABLE `order_product_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_slides`
--
ALTER TABLE `slider_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tag_translations`
--
ALTER TABLE `tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tax_classes`
--
ALTER TABLE `tax_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation_translations`
--
ALTER TABLE `translation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD CONSTRAINT `attribute_categories_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD CONSTRAINT `attribute_set_translations_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD CONSTRAINT `attribute_value_translations_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD CONSTRAINT `coupon_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_categories_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD CONSTRAINT `coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD CONSTRAINT `cross_sell_products_cross_sell_product_id_foreign` FOREIGN KEY (`cross_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cross_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD CONSTRAINT `entity_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD CONSTRAINT `flash_sale_products_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD CONSTRAINT `flash_sale_product_orders_flash_sale_product_id_foreign` FOREIGN KEY (`flash_sale_product_id`) REFERENCES `flash_sale_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD CONSTRAINT `flash_sale_translations_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD CONSTRAINT `menu_item_translations_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD CONSTRAINT `meta_data_translations_meta_data_id_foreign` FOREIGN KEY (`meta_data_id`) REFERENCES `meta_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD CONSTRAINT `option_translations_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD CONSTRAINT `option_value_translations_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD CONSTRAINT `order_product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_options_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD CONSTRAINT `order_product_option_values_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_option_values_order_product_option_id_foreign` FOREIGN KEY (`order_product_option_id`) REFERENCES `order_product_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD CONSTRAINT `order_taxes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_taxes_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_products`
--
ALTER TABLE `related_products`
  ADD CONSTRAINT `related_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_products_related_product_id_foreign` FOREIGN KEY (`related_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD CONSTRAINT `role_translations_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD CONSTRAINT `slider_slides_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD CONSTRAINT `slider_slide_translations_slider_slide_id_foreign` FOREIGN KEY (`slider_slide_id`) REFERENCES `slider_slides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_translations_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD CONSTRAINT `tax_class_translations_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD CONSTRAINT `tax_rate_translations_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `throttle`
--
ALTER TABLE `throttle`
  ADD CONSTRAINT `throttle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD CONSTRAINT `translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD CONSTRAINT `up_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_sell_products_up_sell_product_id_foreign` FOREIGN KEY (`up_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
