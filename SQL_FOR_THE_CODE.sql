-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2020 at 02:05 PM
-- Server version: 10.3.14-MariaDB-log
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_covids`
--

CREATE TABLE `data_covids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `update_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` int(11) NOT NULL DEFAULT 0,
  `isolation` int(11) NOT NULL DEFAULT 0,
  `total_recovered` int(11) NOT NULL DEFAULT 1,
  `death` int(11) NOT NULL DEFAULT 0,
  `icu` int(11) NOT NULL DEFAULT 0,
  `occupied_icu` int(11) NOT NULL DEFAULT 0,
  `ventilator` int(11) NOT NULL DEFAULT 0,
  `occupied_ventilator` int(11) NOT NULL DEFAULT 0,
  `isolation_bed` int(11) DEFAULT 0,
  `occupied_isolation_bed` int(11) NOT NULL DEFAULT 0,
  `tested` int(11) NOT NULL DEFAULT 0,
  `facility_count` int(11) NOT NULL DEFAULT 0,
  `hotline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_covids`
--

INSERT INTO `data_covids` (`id`, `update_date`, `confirmed`, `isolation`, `total_recovered`, `death`, `icu`, `occupied_icu`, `ventilator`, `occupied_ventilator`, `isolation_bed`, `occupied_isolation_bed`, `tested`, `facility_count`, `hotline`, `created_at`, `updated_at`) VALUES
(3, '2020-03-31T07:25:54.865317Z', 5, 4, 1, 0, 0, 0, 0, 0, 0, 0, 1060, 34, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-03-31 22:27:19', '2020-03-31 22:27:19'),
(5, '2020-04-01T11:42:23.640412Z', 5, 4, 1, 0, 0, 0, 0, 0, 0, 0, 1131, 48, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-01 07:04:21', '2020-04-01 07:04:21'),
(6, '2020-01-27', 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 4, 0, NULL, NULL, NULL),
(16, '2020-01-28', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 35, 0, NULL, NULL, NULL),
(8, '2020-01-30', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 0, NULL, NULL, NULL),
(9, '2020-02-02', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 6, 0, NULL, NULL, NULL),
(10, '2020-02-03', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 14, 0, NULL, NULL, NULL),
(11, '2020-02-04', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 18, 0, NULL, NULL, NULL),
(12, '2020-02-12', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 20, 0, NULL, NULL, NULL),
(13, '2020-02-13', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 23, 0, NULL, NULL, NULL),
(14, '2020-02-14', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 24, 0, NULL, NULL, NULL),
(15, '2020-02-16', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 34, 0, NULL, NULL, NULL),
(17, '2020-02-19', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 210, 0, NULL, NULL, NULL),
(18, '2020-02-20', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 212, 0, NULL, NULL, NULL),
(19, '2020-02-23', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 216, 0, NULL, NULL, NULL),
(20, '2020-02-24', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 217, 0, NULL, NULL, NULL),
(21, '2020-02-26', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 221, 0, NULL, NULL, NULL),
(22, '2020-02-28', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 224, 0, NULL, NULL, NULL),
(23, '2020-03-01', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 243, 0, NULL, NULL, NULL),
(24, '2020-03-02', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 425, 0, NULL, NULL, NULL),
(25, '2020-03-03', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 433, 0, NULL, NULL, NULL),
(26, '2020-03-04', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 437, 0, NULL, NULL, NULL),
(27, '2020-03-10', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 445, 0, NULL, NULL, NULL),
(28, '2020-03-11', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 447, 0, NULL, NULL, NULL),
(29, '2020-03-12', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 450, 0, NULL, NULL, NULL),
(30, '2020-03-13', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 456, 0, NULL, NULL, NULL),
(31, '2020-03-15', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 467, 0, NULL, NULL, NULL),
(32, '2020-03-16', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 478, 0, NULL, NULL, NULL),
(33, '2020-03-17', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 496, 0, NULL, NULL, NULL),
(34, '2020-03-18', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 512, 0, NULL, NULL, NULL),
(35, '2020-03-19', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 529, 0, NULL, NULL, NULL),
(36, '2020-03-20', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 546, 0, NULL, NULL, NULL),
(37, '2020-03-22', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 572, 0, NULL, NULL, NULL),
(38, '2020-03-23', 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 610, 0, NULL, NULL, NULL),
(39, '2020-03-25', 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 687, 0, NULL, NULL, NULL),
(40, '2020-03-26', 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 758, 0, NULL, NULL, NULL),
(41, '2020-03-27', 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 802, 0, NULL, NULL, NULL),
(42, '2020-03-28', 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 870, 0, NULL, NULL, NULL),
(43, '2020-03-29', 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 917, 0, NULL, NULL, NULL),
(45, '2020-04-01T18:01:42.486295Z', 5, 4, 1, 0, 0, 0, 0, 0, 2782, 0, 1184, 49, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-02 05:00:26', '2020-04-02 05:00:26'),
(46, '2020-04-02T10:49:16.001137', 6, 5, 1, 0, 0, 0, 0, 0, 2782, 0, 1184, 49, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-03 02:42:54', '2020-04-03 02:42:54'),
(48, '2020-04-02T10:49:16.001137Z', 6, 5, 1, 0, 0, 0, 0, 0, 2782, 0, 1356, 120, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-03 05:03:08', '2020-04-03 05:03:08'),
(55, '2020-04-04T11:48:40.886514Z', 6, 5, 1, 0, 0, 0, 0, 0, 2533, 0, 1356, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-04 04:01:03', '2020-04-04 04:01:03'),
(54, '2020-04-04T10:49:55.880861Z', 6, 5, 1, 0, 0, 0, 0, 0, 2533, 0, 1356, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-04 03:01:02', '2020-04-04 03:01:02'),
(53, '2020-04-04T09:59:08.773198Z', 8, 4, 1, 0, 0, 0, 0, 0, 2533, 0, 1133, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-04 02:01:02', '2020-04-04 02:01:02'),
(52, '2020-04-03T17:34:42.736927Z', 6, 5, 1, 0, 0, 0, 0, 0, 2782, 0, 1356, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-03 10:01:02', '2020-04-03 10:01:02'),
(56, '2020-04-04T12:56:56.414151Z', 9, 69, 1, 0, 0, 0, 0, 0, 2533, 0, 1521, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-04 05:01:02', '2020-04-04 05:01:02'),
(57, '2020-04-04T15:52:39.541139Z', 9, 69, 1, 0, 0, 0, 0, 0, 2533, 0, 1521, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-04 08:01:05', '2020-04-04 08:01:05'),
(58, '2020-04-04T16:04:15.195630Z', 9, 69, 1, 0, 0, 0, 0, 0, 2533, 0, 1521, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-04 09:01:02', '2020-04-04 09:01:02'),
(59, '2020-04-04T18:18:07.853321Z', 9, 69, 1, 0, 0, 0, 0, 0, 2533, 0, 1521, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-04 11:01:02', '2020-04-04 11:01:02'),
(66, '2020-04-07T12:38:29.872538Z', 9, 100, 1, 0, 0, 0, 0, 0, 2533, 0, 2122, 126, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-07 05:01:02', '2020-04-07 05:01:02'),
(65, '2020-04-06T12:30:54.156103Z', 9, 107, 1, 0, 0, 0, 0, 0, 2533, 0, 1890, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-06 05:01:02', '2020-04-06 05:01:02'),
(62, '2020-04-05T13:22:23.793864Z', 9, 113, 1, 0, 0, 0, 0, 0, 2533, 0, 1656, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-05 06:01:03', '2020-04-05 06:01:03'),
(67, '2020-04-08T13:03:45.254671Z', 9, 134, 1, 0, 0, 0, 0, 0, 2533, 0, 2366, 126, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-08 06:01:02', '2020-04-08 06:01:02'),
(64, '2020-04-06T04:43:49.211005Z', 9, 113, 1, 0, 0, 0, 0, 0, 2533, 0, 1642, 123, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-05 23:01:02', '2020-04-05 23:01:02'),
(68, '2020-04-09T11:59:41.933320Z', 9, 117, 1, 0, 0, 0, 0, 0, 2533, 0, 2895, 126, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-09 04:01:02', '2020-04-09 04:01:02'),
(69, '2020-04-10T13:46:54.665912Z', 9, 125, 1, 0, 0, 0, 0, 0, 2533, 0, 3525, 126, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-10 06:01:02', '2020-04-10 06:01:02'),
(70, '2020-04-11T11:35:05.830394Z', 9, 82, 1, 0, 0, 0, 0, 0, 2533, 0, 4426, 126, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-11 04:01:02', '2020-04-11 04:01:02'),
(71, '2020-04-12T09:12:09.128311Z', 12, 82, 1, 0, 0, 0, 0, 0, 2533, 0, 4426, 127, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-12 02:01:02', '2020-04-12 02:01:02'),
(72, '2020-04-12T18:19:49.171726Z', 12, 85, 1, 0, 0, 0, 0, 0, 2533, 0, 4426, 127, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-12 11:01:02', '2020-04-12 11:01:02'),
(73, '2020-04-13T11:01:24.003851Z', 14, 85, 1, 0, 0, 0, 0, 0, 2533, 0, 4426, 127, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-13 04:01:03', '2020-04-13 04:01:03'),
(74, '2020-04-13T15:21:58.706997Z', 14, 103, 1, 0, 0, 0, 0, 0, 2533, 0, 5691, 127, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-13 08:01:02', '2020-04-13 08:01:02'),
(75, '2020-04-14T08:45:05.164760Z', 16, 103, 1, 0, 0, 0, 0, 0, 2533, 0, 5691, 127, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-14 01:01:02', '2020-04-14 01:01:02'),
(76, '2020-04-15T13:18:10.535245Z', 16, 117, 1, 0, 0, 0, 0, 0, 2533, 0, 6871, 127, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-15 06:01:02', '2020-04-15 06:01:02'),
(77, '2020-04-16T14:39:30.467862Z', 16, 103, 1, 0, 0, 0, 0, 0, 2533, 0, 7240, 127, '9851255834, 9851255837, 9851255839 :8 AM – 8 PM: 1115:(6 AM – 10 PM)', '2020-04-16 07:01:03', '2020-04-16 07:01:03'),
(78, '2020-04-17 19:37:18', 30, 90, 1, 0, 0, 0, 0, 0, 0, 0, 7702, 0, ' ', '2020-04-17 06:20:36', '2020-04-17 06:20:36'),
(79, '2020-04-18 16:17:49', 30, 117, 2, 0, 0, 0, 0, 0, 0, 0, 8017, 0, ' ', '2020-04-18 03:01:03', '2020-04-18 03:01:03'),
(80, '2020-04-18 20:09:20', 31, 117, 2, 0, 0, 0, 0, 0, 0, 0, 8017, 0, ' ', '2020-04-18 07:01:03', '2020-04-18 07:01:03'),
(81, '2020-04-18 21:11:21', 31, 117, 2, 0, 0, 0, 0, 0, 0, 0, 8017, 0, ' ', '2020-04-18 08:01:03', '2020-04-18 08:01:03'),
(82, '2020-04-19 16:22:03', 31, 103, 4, 0, 0, 0, 0, 0, 0, 0, 8081, 0, ' ', '2020-04-19 03:01:02', '2020-04-19 03:01:02'),
(83, '2020-04-20 16:21:01', 31, 111, 4, 0, 0, 0, 0, 0, 0, 0, 8414, 0, ' ', '2020-04-20 03:01:04', '2020-04-20 03:01:04'),
(84, '2020-04-21 16:26:21', 32, 107, 4, 0, 0, 0, 0, 0, 0, 0, 8763, 0, ' ', '2020-04-21 03:01:03', '2020-04-21 03:01:03'),
(85, '2020-04-21 19:35:14', 43, 107, 4, 0, 0, 0, 0, 0, 0, 0, 8774, 0, ' ', '2020-04-21 05:57:04', '2020-04-21 05:57:04'),
(86, '2020-04-21 19:59:17', 42, 107, 4, 0, 0, 0, 0, 0, 0, 0, 8773, 0, ' ', '2020-04-21 07:01:03', '2020-04-21 07:01:03'),
(87, '2020-04-22 16:25:46', 45, 95, 7, 0, 0, 0, 0, 0, 0, 0, 9011, 0, ' ', '2020-04-22 04:01:03', '2020-04-22 04:01:03'),
(88, '2020-04-23 11:06:52', 45, 95, 7, 0, 0, 0, 0, 0, 0, 0, 9011, 0, ' ', '2020-04-22 22:01:04', '2020-04-22 22:01:04'),
(89, '2020-04-23 16:25:30', 47, 86, 9, 0, 0, 0, 0, 0, 0, 0, 9199, 0, ' ', '2020-04-23 03:01:03', '2020-04-23 03:01:03'),
(90, '2020-04-23 20:26:58', 48, 86, 9, 0, 0, 0, 0, 0, 0, 0, 9200, 0, ' ', '2020-04-23 07:01:03', '2020-04-23 07:01:03'),
(91, '2020-04-24 16:27:57', 48, 89, 10, 0, 0, 0, 0, 0, 0, 0, 9407, 0, ' ', '2020-04-24 03:01:03', '2020-04-24 03:01:03'),
(92, '2020-04-24 20:25:01', 49, 89, 10, 0, 0, 0, 0, 0, 0, 0, 9408, 0, ' ', '2020-04-24 07:01:03', '2020-04-24 07:01:03'),
(93, '2020-04-25 16:24:19', 49, 87, 12, 0, 0, 0, 0, 0, 0, 0, 9666, 0, ' ', '2020-04-25 03:01:02', '2020-04-25 03:01:02'),
(94, '2020-04-26 12:40:26', 51, 87, 12, 0, 0, 0, 0, 0, 0, 0, 9668, 0, ' ', '2020-04-25 23:00:51', '2020-04-25 23:00:51'),
(95, '2020-04-26 16:23:10', 51, 110, 16, 0, 0, 0, 0, 0, 0, 0, 9931, 0, ' ', '2020-04-26 03:01:02', '2020-04-26 03:01:02'),
(96, '2020-04-26 18:47:53', 52, 110, 16, 0, 0, 0, 0, 0, 0, 0, 9932, 0, ' ', '2020-04-26 06:01:02', '2020-04-26 06:01:02'),
(97, '2020-04-27 16:23:17', 52, 106, 16, 0, 0, 0, 0, 0, 0, 0, 10471, 0, ' ', '2020-04-27 03:01:03', '2020-04-27 03:01:03'),
(98, '2020-04-28 16:25:29', 54, 107, 16, 0, 0, 0, 0, 0, 0, 0, 10807, 0, ' ', '2020-04-28 03:01:02', '2020-04-28 03:01:02'),
(99, '2020-04-29 16:22:38', 57, 87, 16, 0, 0, 0, 0, 0, 0, 0, 11524, 0, ' ', '2020-04-29 03:01:03', '2020-04-29 03:01:03'),
(100, '2020-04-30 16:43:51', 57, 80, 16, 0, 0, 0, 0, 0, 0, 0, 12011, 0, ' ', '2020-04-30 03:01:04', '2020-04-30 03:01:04'),
(101, '2020-05-01 14:19:00', 59, 80, 16, 0, 0, 0, 0, 0, 0, 0, 12013, 0, ' ', '2020-05-01 01:01:03', '2020-05-01 01:01:03'),
(102, '2020-05-01 16:23:08', 59, 94, 16, 0, 0, 0, 0, 0, 0, 0, 12577, 0, ' ', '2020-05-01 03:01:02', '2020-05-01 03:01:02'),
(103, '2020-05-02 16:25:49', 59, 89, 16, 0, 0, 0, 0, 0, 0, 0, 13098, 0, ' ', '2020-05-02 03:01:02', '2020-05-02 03:01:02'),
(104, '2020-05-03 16:26:29', 69, 77, 16, 0, 0, 0, 0, 0, 0, 0, 13414, 0, ' ', '2020-05-03 03:01:02', '2020-05-03 03:01:02'),
(105, '2020-05-03 19:46:35', 75, 77, 16, 0, 0, 0, 0, 0, 0, 0, 13420, 0, ' ', '2020-05-03 06:44:12', '2020-05-03 06:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `data_globals`
--

CREATE TABLE `data_globals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `update_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_infected_global` int(11) NOT NULL,
  `total_recovered_global` int(11) NOT NULL,
  `total_deaths_global` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_globals`
--

INSERT INTO `data_globals` (`id`, `update_date`, `total_infected_global`, `total_recovered_global`, `total_deaths_global`, `created_at`, `updated_at`) VALUES
(1, '2020-04-01T12:04:10.263082Z', 783360, 184952, 37203, '2020-04-01 06:44:26', '2020-04-01 06:44:26'),
(2, '2020-04-01T15:20:07.492591Z', 823626, 185226, 40598, '2020-04-01 11:16:32', '2020-04-01 11:16:32'),
(3, '2020-04-02T03:53:50.692973Z', 827419, 194286, 40777, '2020-04-02 04:21:18', '2020-04-02 04:21:18'),
(4, '2020-04-02T10:42:55.653007Z', 856386, 202627, 41956, '2020-04-02 05:00:26', '2020-04-02 05:00:26'),
(5, '2020-04-02T13:06:19.951679Z', 857641, 203011, 42006, '2020-04-02 08:51:34', '2020-04-02 08:51:34'),
(6, '2020-04-03T03:27:10.553612Z', 900306, 212991, 45693, '2020-04-03 02:35:18', '2020-04-03 02:35:18'),
(7, '2020-04-03T15:09:26.428574Z', 972640, 222332, 50325, '2020-04-03 07:17:57', '2020-04-03 07:17:57'),
(8, '2020-04-05T00:07:45.523741Z', 1056159, 246174, 57206, '2020-04-04 17:01:03', '2020-04-04 17:01:03'),
(9, '2020-04-05T13:28:26.147764Z', 1133758, 253821, 62784, '2020-04-05 06:01:04', '2020-04-05 06:01:04'),
(10, '2020-04-06T12:14:17.915682Z', 1174866, 271882, 64541, '2020-04-06 05:01:02', '2020-04-06 05:01:02'),
(11, '2020-04-07T13:42:06.523779Z', 1247244, 293839, 69213, '2020-04-07 06:01:03', '2020-04-07 06:01:03'),
(12, '2020-04-08T10:29:52.596693Z', 1317130, 308653, 74304, '2020-04-08 03:01:03', '2020-04-08 03:01:03'),
(13, '2020-04-09T07:52:31.404000Z', 1395136, 331132, 81580, '2020-04-09 00:01:02', '2020-04-09 00:01:02'),
(14, '2020-04-10T05:18:55.076486Z', 1436198, 356673, 85522, '2020-04-09 23:01:03', '2020-04-09 23:01:03'),
(15, '2020-04-11T10:53:18.867712Z', 1569504, 382049, 95269, '2020-04-11 03:01:02', '2020-04-11 03:01:02'),
(16, '2020-04-12T09:08:09.800078Z', 1614951, 405606, 99887, '2020-04-12 02:01:02', '2020-04-12 02:01:02'),
(17, '2020-04-13T04:05:06.788725Z', 1699595, 405606, 106138, '2020-04-12 21:01:03', '2020-04-12 21:01:03'),
(18, '2020-04-14T10:25:22.180949Z', 1812734, 456737, 113675, '2020-04-14 03:01:03', '2020-04-14 03:01:03'),
(19, '2020-04-15T03:42:34.555823Z', 1848439, 478932, 117217, '2020-04-14 20:01:03', '2020-04-14 20:01:03'),
(20, '2020-04-16T08:44:56.384832Z', 1918138, 516010, 123126, '2020-04-16 01:01:04', '2020-04-16 01:01:04'),
(21, '2020-04-17T10:38:30.637658Z', 2034802, 555533, 135163, '2020-04-17 03:01:05', '2020-04-17 03:01:05'),
(22, '2020-04-18T10:34:40.270720Z', 2121675, 579212, 142299, '2020-04-18 03:01:04', '2020-04-18 03:01:04'),
(23, '2020-04-21T05:00:41.116731Z', 2319066, 652150, 157970, '2020-04-20 21:01:02', '2020-04-20 21:01:02'),
(24, '2020-04-22T03:46:53.343987Z', 2402250, 690445, 163097, '2020-04-21 20:01:04', '2020-04-21 20:01:04'),
(25, '2020-04-22T11:28:03.678087Z', 2436743, 690445, 165310, '2020-04-22 04:01:03', '2020-04-22 04:01:03'),
(26, '2020-04-23T10:21:01.353553Z', 2510177, 727861, 172241, '2020-04-23 03:01:04', '2020-04-23 03:01:04'),
(27, '2020-04-24T10:28:02.712563Z', 2591015, 727861, 178686, '2020-04-24 03:01:04', '2020-04-24 03:01:04'),
(28, '2020-04-25T10:42:56.169629Z', 2686785, 727861, 184681, '2020-04-25 03:01:03', '2020-04-25 03:01:03'),
(29, '2020-04-26T10:35:50.295587Z', 2774135, 727861, 190871, '2020-04-26 03:01:03', '2020-04-26 03:01:03'),
(30, '2020-04-28T10:42:01.147341Z', 2883603, 727861, 198842, '2020-04-28 03:01:03', '2020-04-28 03:01:03'),
(31, '2020-05-02T10:42:19.327201Z', 3233191, 727861, 227489, '2020-05-02 03:01:03', '2020-05-02 03:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_31_054559_nepal_data', 1),
(4, '2020_04_01_092350_data_global', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_covids`
--
ALTER TABLE `data_covids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `update_date` (`update_date`);

--
-- Indexes for table `data_globals`
--
ALTER TABLE `data_globals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `total_infected_global` (`total_infected_global`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_covids`
--
ALTER TABLE `data_covids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `data_globals`
--
ALTER TABLE `data_globals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
