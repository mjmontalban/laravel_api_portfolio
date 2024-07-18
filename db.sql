-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 18, 2024 at 10:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flag` int(11) NOT NULL DEFAULT 0 COMMENT '1 - soft deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`, `del_flag`) VALUES
(1, 1, 'awdawdw', 'adawdwadaw', '2024-07-17 15:29:15', '2024-07-17 17:00:31', 1),
(2, 1, 'test blog', 'test content', '2024-07-17 15:52:29', '2024-07-17 16:07:28', 1),
(3, 1, 'this is my blog', 'the content is nothing', '2024-07-17 17:00:46', '2024-07-17 17:03:28', 1),
(4, 1, 'blog 2', 'test 2', '2024-07-17 17:01:49', '2024-07-17 17:03:29', 1),
(5, 1, '1', '1', '2024-07-17 17:03:33', '2024-07-17 17:03:40', 1),
(6, 1, 'this is my frst blog', 'this is for my personal interrest', '2024-07-18 04:04:26', '2024-07-18 04:04:26', 0),
(7, 1, 'this is my frst blog 2', 'this is for my personal interrest', '2024-07-18 04:04:48', '2024-07-18 04:04:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `udpated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flag` int(11) NOT NULL DEFAULT 0 COMMENT '1 - soft deleted',
  `commenter_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `text`, `created_at`, `udpated_at`, `del_flag`, `commenter_user_id`) VALUES
(1, 1, 'test comment', '2024-07-17 15:38:34', '2024-07-17 15:38:34', 0, NULL),
(2, 1, 'test 2', '2024-07-17 15:39:02', '2024-07-17 15:39:02', 0, NULL),
(3, 2, 'hahahahaahha', '2024-07-17 15:56:38', '2024-07-17 15:56:38', 0, 1),
(4, 2, 'yohohoh', '2024-07-17 15:56:46', '2024-07-17 15:56:46', 0, 1),
(5, 3, 'hahahahahah seriously ?', '2024-07-17 17:00:56', '2024-07-17 17:00:56', 0, 1),
(6, 3, 'Hellowwww', '2024-07-17 17:01:11', '2024-07-17 17:01:11', 0, 1),
(7, 3, 'hellowww', '2024-07-17 17:01:37', '2024-07-17 17:01:37', 0, 1),
(8, 4, 'Hi', '2024-07-17 17:01:53', '2024-07-17 17:01:53', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'mj', 'fb982fc8f06ddf5c342940bb4f2a5f3f17de8a1ba5f961a5ee7a5766b0605e8e', '[\"*\"]', NULL, '2024-07-17 19:12:32', '2024-07-17 19:12:32'),
(2, 'App\\Models\\User', 2, 'mj', 'b32863e0584a466f908bd29b3d0abe165a29132c583df80b42c0d4fdf4106207', '[\"*\"]', NULL, '2024-07-17 19:13:36', '2024-07-17 19:13:36'),
(3, 'App\\Models\\User', 1, 'mj', '78df05b4779c2b8b768ef5c8ddef91d8fb2119160682bfcfb7c7c6d96c14776a', '[\"*\"]', NULL, '2024-07-17 19:32:15', '2024-07-17 19:32:15'),
(4, 'App\\Models\\User', 1, 'mj', '84984cddcf081ebd9fb511d8a21bbe036124ac5a0fcf8e24c0885d2246176c4b', '[\"*\"]', NULL, '2024-07-17 19:32:21', '2024-07-17 19:32:21'),
(5, 'App\\Models\\User', 1, 'mj', 'f537af41fe5adb1732dc4c3240c0b126ac858d860e4d0bbfb81fa5629a3156e4', '[\"*\"]', NULL, '2024-07-17 19:32:25', '2024-07-17 19:32:25'),
(6, 'App\\Models\\User', 1, 'mj', 'b1db70f5c9caff143622035e5557731223ce1d0eb0007d6a783666134681db2b', '[\"*\"]', NULL, '2024-07-17 19:32:30', '2024-07-17 19:32:30'),
(7, 'App\\Models\\User', 1, 'mj', '29ea5d87a0501ba5ab55b042c7aab5bd05867d5cb0b4d941bd899dcfd505be1b', '[\"*\"]', '2024-07-17 20:04:48', '2024-07-17 19:53:10', '2024-07-17 20:04:48'),
(8, 'App\\Models\\User', 1, 'mj', '9718492fb762192c70e45bd05a899aedd44eb53f153dbc98967153b54439add3', '[\"*\"]', NULL, '2024-07-17 22:44:25', '2024-07-17 22:44:25'),
(9, 'App\\Models\\User', 1, 'mj', 'a8cea19178f43ddb1369be369e579580acff692f4b26994f463beb89f05b876e', '[\"*\"]', NULL, '2024-07-17 22:50:26', '2024-07-17 22:50:26'),
(10, 'App\\Models\\User', 1, 'mj', '5e953f7910cf0bec002f3d222eff3f0487762cf1b3925e657c18dd2eef2c36f1', '[\"*\"]', NULL, '2024-07-17 22:50:47', '2024-07-17 22:50:47'),
(11, 'App\\Models\\User', 1, 'mj', 'ad0fb77744b6831e9b1c933bd399f9961bd7139f0b02551892ed36370332c7cc', '[\"*\"]', NULL, '2024-07-17 22:51:52', '2024-07-17 22:51:52'),
(12, 'App\\Models\\User', 1, 'mj', '0b7bac6e41277ca632e1f5048ccf883d2625cfd5cafce2618d5e5d761110f5cc', '[\"*\"]', NULL, '2024-07-17 22:51:58', '2024-07-17 22:51:58'),
(13, 'App\\Models\\User', 1, 'mj', '9970146fd792be4cc37648545c17ccb608f4f341a4db8b205ed30571d075f562', '[\"*\"]', NULL, '2024-07-17 22:53:05', '2024-07-17 22:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mj', 'mj@gmail.com', NULL, '$2y$10$dBdaecj/r5b9eb3yNj1Q2uAzZVwUx4L2wYuMY6Ldyp7Mw467Brqsy', 'yuIkUZBRYQjq0QSAKyei8LOuEjporUQdqergCDcQEGN2dGxccivkJCZRnt9C', '2024-07-18 03:12:32', '2024-07-18 14:31:22'),
(2, 'mj', 'mj2@gmail.com', NULL, '$2y$10$cCP.2788ZPv8QwPtp7lSzeJ0uK0poKuVfySwix7EhArzzlrGpz1gq', NULL, '2024-07-18 03:13:36', '2024-07-18 03:13:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
