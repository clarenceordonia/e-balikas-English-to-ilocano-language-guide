-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2017 at 01:04 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtranslator`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_sample` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `image_sample`, `created_at`, `updated_at`) VALUES
(5, 'Basic Expressions', NULL, '2015-09-03 21:04:29', '2015-09-03 21:04:29'),
(6, 'Directions and Locations', NULL, '2015-09-03 21:04:52', '2015-09-03 21:04:52'),
(7, 'Emergency and Safety Needs', NULL, '2015-09-03 21:05:23', '2015-09-03 21:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `examples`
--

CREATE TABLE `examples` (
  `id` int(10) UNSIGNED NOT NULL,
  `translation` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `example` varchar(100) NOT NULL,
  `audio_sample` text,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `word` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `user`, `word`, `feedback`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'hello', 0, '2015-08-29 21:40:58', '2015-08-29 21:40:58'),
(2, 2, 3, 'This is nice!', 0, '2015-08-29 21:50:49', '2015-08-29 21:50:49'),
(3, 2, 3, 'Testing!', 0, '2015-08-29 22:22:40', '2015-08-29 22:22:40'),
(4, 2, 7, 'nice', 0, '2015-08-31 13:28:17', '2015-08-31 13:28:17'),
(5, 2, 7, 'nice', 0, '2015-08-31 13:28:50', '2015-08-31 13:28:50'),
(6, 2, 7, 'good ', 0, '2015-09-03 10:38:38', '2015-09-03 10:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_08_14_080547_db_ini', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `word` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `word`, `user`, `rate`, `created_at`, `updated_at`) VALUES
(1, 0, 16, 2, '2017-04-24 03:09:13', '2017-04-24 03:59:39'),
(2, 0, 15, 3, '2017-04-24 03:48:43', '2017-04-24 03:48:48'),
(3, 17, 16, 2, '2017-04-24 06:47:36', '2017-04-24 06:47:36'),
(4, 9, 16, 5, '2017-04-24 07:02:04', '2017-04-24 07:02:04'),
(5, 17, 2, 3, '2017-04-24 07:03:13', '2017-04-24 07:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `site_refs`
--

CREATE TABLE `site_refs` (
  `id` int(11) NOT NULL,
  `visits` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_refs`
--

INSERT INTO `site_refs` (`id`, `visits`, `created_at`, `updated_at`) VALUES
(1, 103, '2015-08-30 02:58:11', '2017-04-24 07:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `translation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pronunciation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `audio_sample` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `word`, `translation`, `pronunciation`, `audio_sample`, `created_at`, `updated_at`) VALUES
(11, 10, 'Tulong!', 'Tul-ong!', NULL, '2015-09-03 21:09:39', '2015-09-03 21:09:39'),
(12, 8, 'Naragsak nga Isasanbay', 'Na-rag-sak nga I-sa-san-bay', NULL, '2015-09-03 21:10:41', '2015-09-03 21:10:41'),
(13, 8, 'Naragsak nga Idadanon', 'Na-rag-sak nga I-da-da-non', NULL, '2015-09-03 23:10:16', '2015-09-03 23:10:16'),
(14, 11, 'Kablaaw', 'Kab-la-aw', NULL, '2015-09-03 23:11:35', '2015-09-03 23:11:35'),
(17, 14, 'Ti naganko ket <your name)', 'Ti na-gan-ko ket <your name>', NULL, '2015-09-03 23:21:00', '2015-09-03 23:21:00'),
(18, 14, '<your name> ti naganko', '<your name> ti na-gan-ko', NULL, '2015-09-03 23:24:48', '2015-09-03 23:24:48'),
(23, 17, 'Naragsakak a maamammoka', 'Na-rag-sak-ak a ma-am-am-mo-ka', NULL, '2015-09-04 05:30:20', '2015-09-04 05:30:20'),
(24, 18, 'Naimbag a bigat', 'Na-im-bag a bi-gat', NULL, '2015-09-04 05:33:25', '2015-09-04 05:33:25'),
(26, 20, 'Taga- (your place) ak', 'Ta-ga- (your place) ak', NULL, '2015-09-04 12:12:18', '2015-09-04 12:12:18'),
(27, 20, 'Naggapuak diay (your place)', 'Nag-ga-pu-ak di-ay (your place)', NULL, '2015-09-04 12:13:01', '2015-09-04 12:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `type`, `status`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@translator.com', 'admin', '$2y$10$o2KTxcQPSx3JiNZFw048Tu6dyHpXFenFBUZHA6HccXTUp3u9ZazL6', 1, 1, NULL, 'SEKCmoDNkHsRZuYojfu0zqVpBjBdBOnggY3DItnpr4Sx1tBI2oX9m4C1w6LU', '2015-08-19 11:53:01', '2017-04-24 07:03:47'),
(2, 'client1', 'client@translator.com', 'client', '$2y$10$o2KTxcQPSx3JiNZFw048Tu6dyHpXFenFBUZHA6HccXTUp3u9ZazL6', 2, 1, '/uploads/avatar/anubis.jpg', '7v1BhLxRgQhF97NTCn2qcMvfJQ1yMiHpFlGW205MGsShn8Zx0Z80U7bXzl0f', '2015-08-19 12:15:32', '2017-04-24 07:03:22'),
(15, 'test account', 'test@email.com', 'test', '$2y$10$nPIFtuTc8xP7Me4S5mqQpeycWFcLY5sBSXki/5rJtK7NcqKh6BS.u', 2, 1, NULL, 'pRjsUUdfNPVNvHUdunH4THhvVB023Mv4F3ZfqrlBvZj6MzhOJN3F3MEVcoBf', '2015-08-30 01:10:32', '2015-08-30 02:42:57'),
(16, 'test2', 'test2@email.com', 'test2', '$2y$10$o2KTxcQPSx3JiNZFw048Tu6dyHpXFenFBUZHA6HccXTUp3u9ZazL6', 2, 1, NULL, 'rhG6oNg5u55azSczQjjrMzXYDiAik3aKvVHwdaKbSY4oAJLm3l2PT3T8GEeQ', '2015-08-30 02:22:05', '2017-04-24 07:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `image_sample` text COLLATE utf8_unicode_ci,
  `hits` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `word`, `category`, `image_sample`, `hits`, `created_at`, `updated_at`) VALUES
(8, 'Welcome', 5, '/uploads/sample/image/welcome_1441320292261.png', 1, '2015-09-03 21:07:23', '2017-04-24 06:51:08'),
(9, 'You go straight ahead. ', 6, '/uploads/sample/image/you go straight ahead. _1441319837769.png', 5, '2015-09-03 21:08:16', '2017-04-24 07:02:04'),
(10, 'Help!', 7, '/uploads/sample/image/help!_1441320314148.png', 84, '2015-09-03 21:08:44', '2017-04-24 03:59:40'),
(11, 'Hello', 5, '/uploads/sample/image/hello_1441320328952.png', 2, '2015-09-03 23:11:01', '2017-04-24 03:58:34'),
(14, 'My name is ...', 5, '/uploads/sample/image/my name is ..._1441320273619.png', 1, '2015-09-03 23:19:59', '2015-09-04 12:15:58'),
(17, 'Pleased to meet you', 5, '/uploads/sample/image/pleased to meet you_1441320090116.png', 26, '2015-09-04 05:29:23', '2017-04-24 07:03:15'),
(18, 'Good morning', 5, '/uploads/sample/image/good morning_1441320342509.png', 1, '2015-09-04 05:32:28', '2017-04-24 07:00:25'),
(20, 'I\'m from ___.', 5, '/uploads/sample/image/_1441343371497.png', 0, '2015-09-04 12:09:31', '2015-09-04 12:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `word_of_the_day`
--

CREATE TABLE `word_of_the_day` (
  `word` int(11) NOT NULL,
  `day` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `word_of_the_day`
--

INSERT INTO `word_of_the_day` (`word`, `day`) VALUES
(9, '2017-04-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examples`
--
ALTER TABLE `examples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_refs`
--
ALTER TABLE `site_refs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_word_foreign` (`word`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `examples`
--
ALTER TABLE `examples`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `site_refs`
--
ALTER TABLE `site_refs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_word_foreign` FOREIGN KEY (`word`) REFERENCES `words` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
