-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2017 at 09:11 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mfugo`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `vet_id` int(10) UNSIGNED NOT NULL,
  `farmer_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datebooked` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `vet_id`, `farmer_id`, `description`, `image`, `datebooked`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'nhgsaytghaj hbgsaydtwytdysgb b szbjdxhuswhdnm', 'image', '2017-07-21', 1, '2017-07-08 08:18:55', '2017-08-23 17:32:30'),
(2, 1, 10, 'yellow eyes', 'image', '2017-08-16', 1, '2017-08-23 14:52:21', '2017-08-23 14:52:21'),
(3, 1, 10, 'fggy', 'image', '2017-08-16', 1, '2017-08-23 16:50:28', '2017-08-23 16:50:28'),
(16, 1, 1, 'kmskms', 'booking4.PNG', '7200282', 1, '2017-08-23 17:06:11', '2017-08-23 17:06:11'),
(17, 1, 10, 'parto', 'booking17.PNG', '2017-08-10', 1, '2017-08-23 17:06:26', '2017-09-13 15:42:49'),
(18, 1, 10, 'on heat', 'booking18.PNG', '2017-09-13', 0, '2017-09-14 20:31:46', '2017-09-14 20:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `cows`
--

CREATE TABLE `cows` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `farmer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cows`
--

INSERT INTO `cows` (`id`, `tag`, `gender`, `dob`, `farmer_id`, `created_at`, `updated_at`) VALUES
(1, 'naki', 'male', '2017-07-06', 10, '2017-07-08 08:03:20', '2017-07-08 08:03:20'),
(2, 'ndume', 'male', '2017-07-06', 9, '2017-07-08 10:48:43', '2017-07-08 10:48:43'),
(3, 'shishio', 'male', '2017-07-20', 10, '2017-07-26 07:26:37', '2017-07-26 07:26:37'),
(4, 'josh', 'male', '2017-07-15', 10, '2017-07-26 09:24:40', '2017-07-26 09:24:40'),
(5, 'kise', 'male', '2017-08-23', 10, '2017-08-23 14:53:17', '2017-08-23 14:53:17'),
(6, 'kamaci', 'male', '2013-08-16', 10, '2017-08-23 23:42:54', '2017-08-23 23:42:54'),
(7, 'kamaci', 'male', '2013-08-16', 10, '2017-08-23 23:54:14', '2017-08-23 23:54:14'),
(8, 'kamaci', 'male', '2013-08-16', 10, '2017-08-23 23:54:32', '2017-08-23 23:54:32'),
(9, 'kamaci', 'male', '2013-08-16', 10, '2017-08-23 23:59:42', '2017-08-23 23:59:42'),
(10, 'Angie', 'male', '2016-11-03', 10, '2017-09-13 20:25:08', '2017-09-13 20:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `healths`
--

CREATE TABLE `healths` (
  `id` int(10) UNSIGNED NOT NULL,
  `cow_id` int(10) UNSIGNED NOT NULL,
  `disease` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medicine` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_treated` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `healths`
--

INSERT INTO `healths` (`id`, `cow_id`, `disease`, `medicine`, `description`, `comment`, `date_treated`, `created_at`, `updated_at`) VALUES
(2, 1, 'Cocofiod', 'yellow', 'in fever', 'attanded late', '2017-07-27', '2017-07-28 00:38:07', '2017-07-28 00:38:07'),
(3, 1, 'jhbj', 'm mkn', 'knmkmn', 'mkm', '2017-07-27', '2017-07-28 00:46:39', '2017-07-28 00:46:39'),
(4, 1, 'yy', 'yy', 'gg', 'gf', '2017-07-27', '2017-07-28 00:50:06', '2017-07-28 00:50:06'),
(5, 3, 'plo', 'kkik', 'uii', 'ji', '2017-07-27', '2017-07-28 02:02:42', '2017-07-28 02:02:42'),
(6, 1, 'digana', '2 injections of trapelet', 'it was inactive and not eating well', 'come back after two weeks', '2017-08-12', '2017-08-12 23:10:01', '2017-08-12 23:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_06_012506_create_people_table', 1),
(4, '2017_06_06_012523_create_cows_table', 1),
(5, '2017_06_06_012550_create_books_table', 1),
(8, '2017_07_10_231916_create_milk_records_table', 2),
(10, '2017_07_27_172412_create_healths_table', 3),
(11, '2017_08_23_045648_create_trendings_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `milk_records`
--

CREATE TABLE `milk_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `cow_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_recorded` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `milk_records`
--

INSERT INTO `milk_records` (`id`, `cow_id`, `quantity`, `date_recorded`, `created_at`, `updated_at`) VALUES
(1, 1, 23, '2017-07-25', '2017-07-26 03:51:34', '2017-07-26 03:51:34'),
(2, 1, 25, '2017-07-24', '2017-07-26 03:56:23', '2017-07-26 03:56:23'),
(3, 1, 3, '2017-07-25', '2017-07-26 05:15:52', '2017-07-26 05:15:52'),
(4, 4, 5, '2017-07-26', '2017-07-26 09:24:55', '2017-07-26 09:24:55'),
(5, 1, 2, '2017-07-26', '2017-07-27 02:47:22', '2017-07-27 02:47:22'),
(6, 1, 2, '2017-08-01', '2017-08-01 13:12:02', '2017-08-01 13:12:02'),
(7, 1, 5, '2017-08-12', '2017-08-12 23:08:02', '2017-08-12 23:08:02'),
(8, 1, 2, '2017-09-12', '2017-09-13 01:24:07', '2017-09-13 01:24:07'),
(9, 1, 2, '2017-09-13', '2017-09-13 15:43:25', '2017-09-13 15:43:25'),
(10, 10, 20, '2017-09-13', '2017-09-13 20:28:39', '2017-09-13 20:28:39'),
(11, 10, 25, '2017-09-14', '2017-09-14 20:29:38', '2017-09-14 20:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `lat` double NOT NULL DEFAULT '-0.42013',
  `longi` double NOT NULL DEFAULT '36.94759',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `fullname`, `phonenumber`, `location`, `role`, `lat`, `longi`, `password`, `created_at`, `updated_at`) VALUES
(1, 'angie', '0725419809', 'nyeri', 2, -0.42013, 36.94759, 'posh1234', '2017-06-30 10:11:34', '2017-06-30 10:11:34'),
(2, 'ee', '11', 'nyeri', 1, -0.42013, 36.94759, '11q', '2017-07-04 03:22:30', '2017-07-04 03:22:30'),
(5, 'patts', '0785', 'nyeri', 1, -0.42013, 36.94759, 'shi', '2017-07-04 03:35:00', '2017-07-04 03:35:00'),
(6, 'georg', '0725', 'nyeri', 1, -0.42013, 36.94759, 'bye', '2017-07-07 00:59:12', '2017-07-07 00:59:12'),
(7, 'vicky', '0708', 'nyeri', 1, -0.42013, 36.94759, '1234', '2017-07-08 07:48:59', '2017-07-08 07:48:59'),
(9, 'job qw', '098766', 'nyeri', 1, -0.42013, 36.94759, '167', '2017-07-08 08:01:18', '2017-07-08 08:01:18'),
(10, 'parto', '0727303794', 'nyeri', 1, -0.42013, 36.94759, '12345', '2017-07-08 08:01:43', '2017-07-08 08:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `trendings`
--

CREATE TABLE `trendings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vet_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trendings`
--

INSERT INTO `trendings` (`id`, `title`, `description`, `image`, `vet_id`, `created_at`, `updated_at`) VALUES
(3, 'vaccination', 'digana', 'trending3.PNG', 1, '2017-08-23 12:47:52', '2017-08-23 12:47:52'),
(4, 'education', 'make a good sailage', 'trending4.PNG', 1, '2017-08-23 13:51:24', '2017-08-23 13:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_farmer_id_foreign` (`farmer_id`),
  ADD KEY `books_vet_id_foreign` (`vet_id`);

--
-- Indexes for table `cows`
--
ALTER TABLE `cows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cows_farmer_id_foreign` (`farmer_id`);

--
-- Indexes for table `healths`
--
ALTER TABLE `healths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `healths_cow_id_foreign` (`cow_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milk_records`
--
ALTER TABLE `milk_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `milk_records_cow_id_foreign` (`cow_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `people_phonenumber_unique` (`phonenumber`);

--
-- Indexes for table `trendings`
--
ALTER TABLE `trendings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trendings_vet_id_foreign` (`vet_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cows`
--
ALTER TABLE `cows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `healths`
--
ALTER TABLE `healths`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `milk_records`
--
ALTER TABLE `milk_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `trendings`
--
ALTER TABLE `trendings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_farmer_id_foreign` FOREIGN KEY (`farmer_id`) REFERENCES `people` (`id`),
  ADD CONSTRAINT `books_vet_id_foreign` FOREIGN KEY (`vet_id`) REFERENCES `people` (`id`);

--
-- Constraints for table `cows`
--
ALTER TABLE `cows`
  ADD CONSTRAINT `cows_farmer_id_foreign` FOREIGN KEY (`farmer_id`) REFERENCES `people` (`id`);

--
-- Constraints for table `healths`
--
ALTER TABLE `healths`
  ADD CONSTRAINT `healths_cow_id_foreign` FOREIGN KEY (`cow_id`) REFERENCES `cows` (`id`);

--
-- Constraints for table `milk_records`
--
ALTER TABLE `milk_records`
  ADD CONSTRAINT `milk_records_cow_id_foreign` FOREIGN KEY (`cow_id`) REFERENCES `cows` (`id`);

--
-- Constraints for table `trendings`
--
ALTER TABLE `trendings`
  ADD CONSTRAINT `trendings_vet_id_foreign` FOREIGN KEY (`vet_id`) REFERENCES `people` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
