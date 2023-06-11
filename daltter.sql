-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2023 at 02:38 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daltter`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint NOT NULL,
  `title` varchar(32) NOT NULL,
  `article_html` text NOT NULL,
  `author` varchar(32) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `article_html`, `author`, `created_at`) VALUES
(6, 'adsadasd', 'sadasdsadsad', 'asdasdsadsad', '2023-06-12'),
(8, 'asdasdasd', 'dasdsad', 'sdasd', '2023-06-12'),
(9, 'SDFSDF', 'SDFSDFS', 'SDFSDFSDFSDF', '2023-06-12'),
(10, 'asdasd', 'asdas', 'asdsa', '2023-06-12'),
(13, 'asdsadsa', 'asdasda', 'asdsadsa', '2023-06-12'),
(15, 'sdfsdfsdf', 'fsdfdsfsdf', 'sdfsdfsdfsd', '2023-06-12'),
(16, 'asdasdsada', 'asdsadasdas', 'asdasdsa', '2023-06-12'),
(17, 'asdsadsa', 'asdasdasd', 'asdasdas', '2023-06-12'),
(18, 'asdasdsa', 'asdasdas', 'asdsadas', '2023-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `id` int NOT NULL,
  `secret` varchar(45) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `id` int NOT NULL,
  `amount_of_money` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `amount_of_money`, `user_id`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 11),
(13, 0, 0),
(14, 0, 0),
(15, 100000, 15),
(16, 0, 16),
(17, 5, 17),
(18, 100000005, 18),
(19, 1000005, 19),
(20, 1000005, 20),
(21, 1000039, 21);

-- --------------------------------------------------------

--
-- Table structure for table `history_of_transactions`
--

CREATE TABLE `history_of_transactions` (
  `id` int NOT NULL,
  `method` varchar(32) NOT NULL,
  `amount_of_money` int NOT NULL,
  `time` timestamp NOT NULL,
  `user_info_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` int NOT NULL,
  `visits` int NOT NULL DEFAULT '0',
  `authenticated_users` int DEFAULT '0',
  `unauthenticated_users` int DEFAULT '0',
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `visits`, `authenticated_users`, `unauthenticated_users`, `date`) VALUES
(1, 123, 11, 112, '2023-06-09'),
(2, 432, 400, 32, '2023-06-10'),
(3, 4, 1, 3, '2023-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int NOT NULL,
  `pricing` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  `days_to_expire` int DEFAULT NULL,
  `site_name` varchar(45) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `started` tinyint NOT NULL DEFAULT '0',
  `country_tags` varchar(64) DEFAULT NULL,
  `theme_tags` varchar(64) DEFAULT NULL,
  `amount_of_messages_per_day` int NOT NULL,
  `user_id` int NOT NULL,
  `mode` varchar(4) DEFAULT NULL,
  `paused` tinyint DEFAULT '0',
  `expired` tinyint NOT NULL DEFAULT '0',
  `statistics_id` int DEFAULT NULL,
  `sub_duration` int DEFAULT '14',
  `price_per_message` float NOT NULL DEFAULT '0',
  `amount_of_messages_already_sent` int DEFAULT '0',
  `activated` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `pricing`, `created_at`, `days_to_expire`, `site_name`, `url`, `started`, `country_tags`, `theme_tags`, `amount_of_messages_per_day`, `user_id`, `mode`, `paused`, `expired`, `statistics_id`, `sub_duration`, `price_per_message`, `amount_of_messages_already_sent`, `activated`) VALUES
(2, 18, '2023-03-27 15:46:43', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'portugal:spain', NULL, 1000, 11, NULL, 0, 0, 11, 14, 0, 0, 0),
(14, 18, '2023-03-27 16:11:51', 14, 'Daltter tourism', 'http://daltter.tk', 0, 'portugal:spain', NULL, 1000, 11, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(15, 18, '2023-03-27 16:13:26', 14, 'Daltter tourism', 'http://daltter.tk', 0, 'portugal:spain', NULL, 1000, 11, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(16, 18, '2023-03-27 16:15:51', 14, 'Daltter tourism', 'http://daltter.tk', 0, 'portugal:spain', NULL, 1000, 11, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(17, 18, '2023-03-26 21:00:00', 14, 'Daltter tourism', 'http://daltter.tk', 0, 'portugal:spain', NULL, 1000, 11, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(18, 18, '2023-03-26 21:00:00', 14, 'Daltter tourism', 'http://daltter.tk', 0, 'portugal:spain', NULL, 1000, 11, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(19, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, 8, 14, 0, 0, 0),
(20, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(21, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(22, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(23, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(24, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(25, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(26, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(27, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(28, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(29, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(30, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'portugal:spain:niger', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(31, 0, '2023-04-04 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'games', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(32, 35, '2023-04-05 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'games:music', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(33, 35, '2023-04-05 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'games:music', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(34, 35, '2023-04-05 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'games:music', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(35, 35, '2023-04-05 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'games:music', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(36, 35, '2023-04-05 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'games:music', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(38, 35, '2023-04-05 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'games:music', NULL, 100, 15, 'AI', 0, 0, NULL, 14, 0, 0, 0),
(39, 42, '2023-04-05 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'games:music', 'check', 100, 15, 'AI', 0, 0, 9, 14, 0, 0, 0),
(40, 35, '2023-04-05 21:00:00', 30, 'Daltter tourism', 'http://google.com/', 0, 'games:music', NULL, 100, 15, 'AI', 0, 0, 10, 14, 0, 0, 0),
(41, 1386, '2023-05-27 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'music:games', 'check', 11, 18, 'AI', 0, 0, 11, 14, 9, 0, 0),
(42, 34300, '2023-05-28 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games:music', NULL, 50, 19, 'AI', 0, 0, 12, 14, 49, 0, 0),
(43, 34300, '2023-05-28 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games:music', NULL, 50, 19, 'AI', 0, 0, 13, 14, 49, 0, 0),
(44, 0, '2023-05-28 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games:music', 'check', 50, 19, 'AI', 0, 0, 14, 14, 0, 0, 0),
(45, 11760, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk/confirmation', 0, 'games:music', NULL, 30, 19, 'AI', 0, 0, 15, 14, 28, 0, 0),
(46, 11760, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk/confirmation', 0, 'games:music', NULL, 30, 19, 'AI', 0, 0, 16, 14, 28, 0, 0),
(47, 40600, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games:music', 'check', 50, 19, 'AI', 0, 0, 17, 14, 58, 0, 0),
(48, 6300, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games:music', '', 10, 19, 'AI', 0, 0, 18, 14, 9, 0, 0),
(49, 560, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, '', '', 10, 19, 'AI', 0, 0, 19, 14, 4, 0, 0),
(50, 560, '2023-05-29 21:00:00', 14, 'Daltter Marketing', 'https://daltter.tk/update_sub_information', 0, 'games:music', NULL, 10, 20, 'AI', 0, 0, 20, 14, 4, 0, 0),
(51, 0, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, '', NULL, 20, 20, 'AI', 0, 0, 21, 14, 0, 0, 0),
(52, 0, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, '', NULL, 20, 20, 'AI', 0, 0, 22, 14, 0, 0, 0),
(53, 0, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, '', NULL, 20, 20, 'AI', 0, 0, 23, 14, 0, 0, 0),
(54, 8, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, '', NULL, 20, 20, 'NONE', 0, 0, 24, 14, 0, 0, 0),
(55, 0, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games', NULL, 20, 20, 'AI', 0, 0, 25, 14, 0, 0, 0),
(56, 0, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games', NULL, 20, 20, 'AI', 0, 0, 26, 14, 0, 0, 0),
(57, 0, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games', NULL, 20, 20, 'AI', 0, 0, 27, 14, 0, 0, 0),
(58, 0, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games', NULL, 20, 20, 'AI', 0, 0, 28, 14, 0, 0, 0),
(59, 0, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games', '', 20, 20, 'AI', 0, 0, 29, 14, 0, 0, 0),
(60, 0, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games', '', 20, 20, 'AI', 0, 0, 30, 14, 0, 0, 0),
(61, 0, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'games', '', 20, 20, 'AI', 0, 0, 31, 14, 0, 0, 0),
(62, -144, '2023-05-29 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, 'music:pivo', '', 20, 20, 'AI', 0, 0, 32, 14, 0.3425, 0, 0),
(63, 8, '2023-05-30 21:00:00', 14, 'Daltter tourism', 'https://daltter.tk', 0, NULL, NULL, 20, 21, 'NONE', 0, 0, 33, 14, 0.334054, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_statistics`
--

CREATE TABLE `subscription_statistics` (
  `id` int NOT NULL,
  `visits` int DEFAULT '0',
  `url` varchar(32) NOT NULL,
  `date` date NOT NULL,
  `formatted_url` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscription_statistics`
--

INSERT INTO `subscription_statistics` (`id`, `visits`, `url`, `date`, `formatted_url`) VALUES
(1, 0, 'adfasf', '2023-04-06', NULL),
(2, 0, 'adfasf', '2023-04-06', NULL),
(3, 0, 'adfasf', '2023-04-06', NULL),
(4, 0, 'http://google.com/', '2023-04-06', 'https://api.daltter.tk/url_visits.php?id=6'),
(5, 0, 'http://google.com/', '2023-04-06', 'https://api.daltter.tk/url_visits.php?id=6'),
(6, 0, 'http://google.com/', '2023-04-06', 'https://api.daltter.tk/url_visits.php?id=6'),
(8, 1, 'http://google.com/', '2023-04-06', 'https://api.daltter.tk/url_visits.php?id=8'),
(9, 0, 'http://google.com/', '2023-04-06', 'https://api.daltter.tk/url_visits.php?id=9'),
(10, 0, 'http://google.com/', '2023-04-06', 'https://api.daltter.tk/url_visits.php?id=10'),
(11, 0, 'https://daltter.tk', '2023-05-28', 'https://api.daltter.tk/url_visits.php?id=11'),
(12, 0, 'https://daltter.tk', '2023-05-29', 'https://api.daltter.tk/url_visits.php?id=12'),
(13, 0, 'https://daltter.tk', '2023-05-29', 'https://api.daltter.tk/url_visits.php?id=13'),
(14, 0, 'https://daltter.tk', '2023-05-29', 'https://api.daltter.tk/url_visits.php?id=14'),
(15, 0, 'https://daltter.tk/confirmation', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=15'),
(16, 0, 'https://daltter.tk/confirmation', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=16'),
(17, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=17'),
(18, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=18'),
(19, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=19'),
(20, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=20'),
(21, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=21'),
(22, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=22'),
(23, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=23'),
(24, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=24'),
(25, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=25'),
(26, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=26'),
(27, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=27'),
(28, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=28'),
(29, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=29'),
(30, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=30'),
(31, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=31'),
(32, 0, 'https://daltter.tk', '2023-05-30', 'https://api.daltter.tk/url_visits.php?id=32'),
(33, 0, 'https://daltter.tk', '2023-05-31', 'https://api.daltter.tk/url_visits.php?id=33');

-- --------------------------------------------------------

--
-- Stand-in structure for view `subscription_view`
-- (See below for the actual view)
--
CREATE TABLE `subscription_view` (
`sub_id` int
,`country_tags` varchar(64)
,`price_per_message` float
,`pricing` int
,`user_id` int
,`email` varchar(32)
,`formatted_url` varchar(64)
,`url` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `sub_orders`
--

CREATE TABLE `sub_orders` (
  `id` int NOT NULL,
  `html` text,
  `title` text,
  `emails_to` text,
  `amount_of_messages` int NOT NULL,
  `sub_id` int NOT NULL,
  `daily_updated` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sub_orders`
--

INSERT INTO `sub_orders` (`id`, `html`, `title`, `emails_to`, `amount_of_messages`, `sub_id`, `daily_updated`) VALUES
(7, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2:', 1000, 2, 0),
(8, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2:', 1000, 2, 0),
(9, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2:', 1000, 2, 0),
(10, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2:', 1000, 2, 0),
(11, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2:', 1000, 2, 0),
(12, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(13, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(14, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(15, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(16, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(17, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(18, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(19, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(20, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(21, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(22, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(23, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(24, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(25, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(26, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(27, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(28, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(29, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(30, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 19, 0),
(31, '<html>', NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:privet:privet:privet:privet:privet:', 100, 39, 0),
(32, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 100, 40, 0),
(33, NULL, NULL, 'gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:privet:privet:privet:privet:privet:', 11, 41, 0),
(34, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 50, 42, 0),
(35, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 50, 43, 0),
(36, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:privet:privet:privet:privet:privet:', 50, 44, 0),
(37, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 30, 45, 0);
INSERT INTO `sub_orders` (`id`, `html`, `title`, `emails_to`, `amount_of_messages`, `sub_id`, `daily_updated`) VALUES
(38, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 30, 46, 0),
(39, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:privet:privet:privet:privet:privet:', 50, 47, 0),
(40, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 10, 48, 0),
(41, NULL, NULL, 'gmail1:gmail2:', 10, 49, 0),
(42, '<p> Hello World!</p>', NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 10, 50, 0),
(43, NULL, NULL, '', 20, 51, 0),
(44, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 20, 52, 0),
(45, NULL, NULL, ':gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 20, 53, 0),
(46, NULL, NULL, 'gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:', 20, 54, 0),
(47, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:', 20, 55, 0),
(48, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:', 20, 56, 0),
(49, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:', 20, 57, 0),
(50, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:', 20, 58, 0),
(51, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:', 20, 59, 0),
(52, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:', 20, 60, 0),
(53, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:', 20, 61, 0),
(54, NULL, NULL, 'gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail2gmail1:gmail1:gmail2:', 20, 62, 0),
(55, NULL, NULL, 'yandex1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:yandex2gmail1:', 20, 63, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int NOT NULL,
  `full_name` varchar(45) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `created` timestamp NOT NULL,
  `confirmed` tinyint NOT NULL DEFAULT '0',
  `role` varchar(45) NOT NULL DEFAULT 'ROLE_USER',
  `two_step` tinyint NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `full_name`, `email`, `password`, `created`, `confirmed`, `role`, `two_step`, `ip_address`) VALUES
(1, '', '109231@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-03-27 13:48:38', 0, 'ROLE_USER', 0, ''),
(2, 'kirill', 'ggsgsgsd@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-03-27 13:49:08', 0, 'ROLE_USER', 0, ''),
(3, 'kirill', 'ggsgsg3sd@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-03-27 13:51:09', 0, 'ROLE_USER', 0, ''),
(4, 'kirill', 'ggsgsg3s2d@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-03-27 13:52:22', 0, 'ROLE_USER', 0, ''),
(5, 'kirill', 'ggsgsg32s2d@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-03-27 13:52:45', 0, 'ROLE_USER', 0, ''),
(6, 'kirill', 'ggsgs1g32s2d@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-03-27 13:53:46', 0, 'ROLE_USER', 0, ''),
(7, 'kirill', 'gg1sgs1g32s2d@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-03-27 13:55:40', 0, 'ROLE_USER', 0, ''),
(8, 'kirill', 'gg1sg1s1g32s2d@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-03-27 13:56:19', 0, 'ROLE_USER', 0, ''),
(9, 'kirill', 'gg1sg11s1g32s2d@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-03-27 13:56:41', 0, 'ROLE_USER', 0, ''),
(10, 'kirill', 'gg1sg112s1g32s2d@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-03-27 14:00:46', 0, 'ROLE_USER', 0, ''),
(11, 'kirill', 'kolom@gmail.com', 'ee95a16d763ab0d26ee62c53056df928', '2023-03-27 14:01:28', 1, 'ROLE_USER', 0, ''),
(12, 'Vasyl ...', 'alex@syn.co', '098f6bcd4621d373cade4e832627b4f6', '2023-04-05 19:47:47', 0, 'ROLE_USER', 0, ''),
(15, 'Vasyl ...', 'alex@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-04-05 19:53:02', 1, 'ROLE_USER', 0, ''),
(16, 'Vasyl ...', 'alex@gmil.com', '098f6bcd4621d373cade4e832627b4f6', '2023-04-05 19:53:35', 0, 'ROLE_USER', 0, ''),
(17, 'Vasyl ...', 'alex1351@gmil.com', '098f6bcd4621d373cade4e832627b4f6', '2023-05-28 14:31:19', 1, 'ROLE_USER', 0, '127.0.0.1'),
(18, 'Vasyl ...', 'kirillak@gmil.com', '098f6bcd4621d373cade4e832627b4f6', '2023-05-28 14:39:05', 1, 'ROLE_USER', 0, '127.0.0.1'),
(19, 'Kirillka', 'random@rambler.ru', '098f6bcd4621d373cade4e832627b4f6', '2023-05-29 16:40:58', 1, 'ROLE_USER', 0, '127.0.0.1'),
(20, 'Kirillka', 'ktoto1@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-05-30 19:59:41', 1, 'ROLE_USER', 0, '127.0.0.1'),
(21, 'Kirillka', 'ktoto2@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2023-05-30 21:00:12', 1, 'ROLE_USER', 0, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `verification_token`
--

CREATE TABLE `verification_token` (
  `id` int NOT NULL,
  `verification_token` varchar(45) NOT NULL,
  `user_info_id` int NOT NULL,
  `sended_at` timestamp NOT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `verification_token`
--

INSERT INTO `verification_token` (`id`, `verification_token`, `user_info_id`, `sended_at`, `confirmed_at`) VALUES
(3, 'c57b2SeKO4WX4Im', 9, '2023-03-27 13:56:41', NULL),
(4, 'qFb2EwyJZD1gOgo', 10, '2023-03-27 14:00:46', NULL),
(5, 'T4lJF92Dej5BSxk', 11, '2023-03-27 14:01:28', '2023-03-27 14:04:15'),
(6, '0JF58xX8ImEY16w', 12, '2023-04-05 19:47:48', NULL),
(7, 'CpfzfvLtk4KFsdM', 14, '2023-04-05 19:49:30', NULL),
(8, 'qQM8ZQJ0s2eiggL', 15, '2023-04-05 19:53:02', '2023-04-05 19:54:22'),
(9, 'vaCk4hsV2YKzMia', 16, '2023-04-05 19:53:35', NULL),
(10, 'O3eWA9GTYByO9ru', 17, '2023-05-28 14:31:19', '2023-05-28 14:31:57'),
(11, 'A1WK4gz5vRsK0Ll', 18, '2023-05-28 14:39:05', '2023-05-28 14:40:09');

-- --------------------------------------------------------

--
-- Structure for view `subscription_view`
--
DROP TABLE IF EXISTS `subscription_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `subscription_view`  AS SELECT `s`.`id` AS `sub_id`, `s`.`country_tags` AS `country_tags`, `s`.`price_per_message` AS `price_per_message`, `s`.`pricing` AS `pricing`, `ui`.`id` AS `user_id`, `ui`.`email` AS `email`, `ss`.`formatted_url` AS `formatted_url`, `ss`.`url` AS `url` FROM ((`subscription` `s` left join `subscription_statistics` `ss` on((`s`.`statistics_id` = `ss`.`id`))) left join `user_info` `ui` on((`ui`.`id` = `s`.`user_id`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_of_transactions`
--
ALTER TABLE `history_of_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_id_idx` (`id`),
  ADD UNIQUE KEY `subscription_idx` (`id`,`theme_tags`,`country_tags`,`days_to_expire`,`url`,`created_at`,`statistics_id`);

--
-- Indexes for table `subscription_statistics`
--
ALTER TABLE `subscription_statistics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_statistics_idx` (`id`,`url`,`date`,`visits`,`formatted_url`);

--
-- Indexes for table `sub_orders`
--
ALTER TABLE `sub_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `user_info_idx` (`id`,`full_name`,`email`,`password`,`created`,`confirmed`,`role`,`two_step`);

--
-- Indexes for table `verification_token`
--
ALTER TABLE `verification_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `authentication`
--
ALTER TABLE `authentication`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `history_of_transactions`
--
ALTER TABLE `history_of_transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `subscription_statistics`
--
ALTER TABLE `subscription_statistics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sub_orders`
--
ALTER TABLE `sub_orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `verification_token`
--
ALTER TABLE `verification_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
