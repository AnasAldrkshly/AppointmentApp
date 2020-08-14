-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Aug 14, 2020 at 12:22 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `experts`
--

DROP TABLE IF EXISTS `experts`;
CREATE TABLE IF NOT EXISTS `experts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expert` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone_offset` int(11) NOT NULL,
  `work_from` time NOT NULL,
  `work_to` time NOT NULL,
  `work_from_gmt` time NOT NULL,
  `work_to_gmt` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experts`
--

INSERT INTO `experts` (`id`, `name`, `expert`, `country`, `timezone_name`, `timezone_offset`, `work_from`, `work_to`, `work_from_gmt`, `work_to_gmt`, `created_at`, `updated_at`) VALUES
(1, 'William Jordan', 'Doctor', 'Anabar', 'New Zealand Standard Time', 12, '06:00:00', '12:00:00', '18:00:00', '05:00:00', '2020-08-10 21:00:00', '2020-08-10 21:00:00'),
(2, 'Quasi Shawa', 'Civil engineer', 'Syria', 'Eastern European Summer Time', 3, '06:00:00', '12:00:00', '03:00:00', '09:00:00', '2020-08-10 21:00:00', '2020-08-10 21:00:00'),
(3, 'Shimaa Badawy', 'Computer Engineer', 'Egypt', 'Eastern European Standard Time', 2, '13:00:00', '14:00:00', '11:00:00', '13:00:00', '2020-08-10 21:00:00', '2020-08-10 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_08_11_184118_create_experts_table', 1),
(2, '2020_08_11_184145_create_reservations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ex_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `duration` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `ex_id`, `username`, `date`, `duration`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 2, 'Anas', '2020-08-12', 30, '07:00:00', '07:30:00', '2020-08-11 21:00:00', '2020-08-11 21:00:00'),
(2, 2, 'Ahmad', '2020-08-12', 30, '07:30:00', '08:00:00', '2020-08-11 21:00:00', '2020-08-11 21:00:00'),
(3, 2, 'Anas', '2020-08-15', 60, '08:00:00', '09:00:00', '2020-08-13 03:09:09', '2020-08-13 03:09:09'),
(4, 2, 'Anas', '2020-08-13', 60, '04:00:00', '05:00:00', '2020-08-13 07:42:25', '2020-08-13 07:42:25'),
(5, 2, 'Anas', '2020-08-11', 60, '08:00:00', '09:00:00', '2020-08-13 19:21:36', '2020-08-13 19:21:36'),
(6, 2, 'Anas', '2020-08-11', 60, '08:00:00', '09:00:00', '2020-08-14 01:39:26', '2020-08-14 01:39:26'),
(7, 2, 'Anas', '2020-08-11', 15, '03:00:00', '03:15:00', '2020-08-14 01:40:49', '2020-08-14 01:40:49'),
(8, 2, 'Anas', '2020-08-11', 60, '08:00:00', '09:00:00', '2020-08-14 01:42:30', '2020-08-14 01:42:30'),
(9, 2, 'Anas', '2020-08-11', 60, '08:00:00', '09:00:00', '2020-08-14 01:42:34', '2020-08-14 01:42:34'),
(10, 2, 'Anas', '2020-08-11', 60, '08:00:00', '09:00:00', '2020-08-14 01:44:15', '2020-08-14 01:44:15'),
(11, 2, 'Anas', '2020-08-11', 60, '08:00:00', '09:00:00', '2020-08-14 01:46:39', '2020-08-14 01:46:39'),
(12, 3, 'Anas', '2020-08-11', 15, '11:00:00', '11:15:00', '2020-08-14 01:47:32', '2020-08-14 01:47:32'),
(13, 2, 'Anas', '2020-08-11', 60, '03:00:00', '04:00:00', '2020-08-14 02:56:58', '2020-08-14 02:56:58'),
(14, 2, 'Anas', '2020-08-09', 15, '03:00:00', '03:15:00', '2020-08-14 04:36:52', '2020-08-14 04:36:52'),
(15, 2, 'Anas', '2020-08-15', 60, '08:00:00', '09:00:00', '2020-08-14 05:52:52', '2020-08-14 05:52:52'),
(16, 2, 'Anas', '2020-08-24', 60, '11:00:00', '12:00:00', '2020-08-14 06:07:10', '2020-08-14 06:07:10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
