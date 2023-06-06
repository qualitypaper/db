-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2023 at 07:31 PM
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
  `price_per_message` int NOT NULL DEFAULT '0',
  `amount_of_messages_already_sent` int DEFAULT '0',
  `activated` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Stand-in structure for view `subscription_view`
-- (See below for the actual view)
--
CREATE TABLE `subscription_view` (
`sub_id` int
,`country_tags` varchar(64)
,`price_per_message` int
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
-- AUTO_INCREMENT for table `authentication`
--
ALTER TABLE `authentication`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_of_transactions`
--
ALTER TABLE `history_of_transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_statistics`
--
ALTER TABLE `subscription_statistics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_orders`
--
ALTER TABLE `sub_orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verification_token`
--
ALTER TABLE `verification_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
