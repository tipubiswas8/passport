-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2024 at 08:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `passport`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_16_120548_create_oauth_auth_codes_table', 1),
(5, '2024_08_16_120549_create_oauth_access_tokens_table', 1),
(6, '2024_08_16_120550_create_oauth_refresh_tokens_table', 1),
(7, '2024_08_16_120551_create_oauth_clients_table', 1),
(8, '2024_08_16_120552_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('063fecef340a5266d56ac536cfee32efec41c962ee9c23fb9272c504373477f0d161b9f19ce35729', 1, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-16 10:13:47', '2024-08-16 10:13:48', '2025-08-16 16:13:47'),
('0baafdb6f5024662df0f981db63a0b92047477a77d0e6de5ef9362a7e24d6dc3eadb9c0e0c6d3868', 1, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-16 14:22:21', '2024-08-16 14:22:21', '2025-08-16 20:22:21'),
('160aa2184a6e403ee7e2690400c95caa93d7e347bf8c0b9352d2e936de3f5093def4b374f109c004', 2, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-18 12:24:08', '2024-08-18 12:24:08', '2025-08-18 18:24:08'),
('19c3fb9c25ad0671c3b52cf08e1855d80049f3aa3f313bf273d48b6c942619bbfdb05bd319fe85de', 2, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-18 12:15:51', '2024-08-18 12:15:51', '2025-08-18 18:15:51'),
('1d85a002e38bc08e7ea16ab61afa07d0b290233b56232be912c9e756673d00eab0dbb45de1934988', 1, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-16 10:17:32', '2024-08-16 10:17:32', '2025-08-16 16:17:32'),
('2465766b4682a4c4fa8d3a00d967be25df8981fd3d5231b8d7d7aad44a0c1360a16b3f21aca96e35', 2, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-18 12:11:49', '2024-08-18 12:11:49', '2025-08-18 18:11:49'),
('3c66d4e2c705e568960e92aeae4d19cfe8e03ac80f658948027c9f58d816256a85359a5b602a1a56', 2, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-18 12:23:59', '2024-08-18 12:23:59', '2025-08-18 18:23:59'),
('642802c994fa51aa11c863bb30f10398436ecad199c971d5aa84a672746c5e52dc692b6cb33ac5d0', 2, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-16 09:51:06', '2024-08-16 09:51:06', '2025-08-16 15:51:06'),
('6d2bb35f660c391108d4fdbd76ba4a61b64fc40f394af5d0d35cabffcb01d542dc5048d00e652ac3', 1, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-16 10:29:19', '2024-08-16 10:29:19', '2025-08-16 16:29:19'),
('748c1f339c7f6f07f2ff2a1edc5da5afbe755b8aa9ebcf01c86e69bb96ba8ba583e0ea95a7db82e9', 2, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-16 09:55:39', '2024-08-16 09:55:39', '2025-08-16 15:55:39'),
('94d8d668ed18d404a8278132e27e10c62c8ceef8f3d79049500b5a3ba0444446a270f0b5fc9fa93d', 1, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-16 12:18:28', '2024-08-16 12:18:29', '2025-08-16 18:18:28'),
('aa9a78625a93e39c7101189b51129c70aecddc646533d1da725c04be07f3732b3af71e317062b9c7', 5, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-18 12:35:17', '2024-08-18 12:35:17', '2025-08-18 18:35:17'),
('c17a3c1ce7bd9a0d53230c86a2c4bb056f90f16e5889fd7b00c564fee9f3d81c4b049745b734fdb6', 2, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-16 10:01:56', '2024-08-16 10:01:56', '2025-08-16 16:01:56'),
('d48ffec87364ca9f80573e21923dd6871a130bf36c660afc4defe2cd1e9fc5c77cfd8cdffa97f155', 1, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-16 14:20:56', '2024-08-16 14:20:56', '2025-08-16 20:20:56'),
('df64bff76f675c842b3ce91c71a8eb5a576ef66da8af4bb21c766bb2f9b5b78007138243de1200df', 2, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-18 12:15:45', '2024-08-18 12:15:46', '2025-08-18 18:15:45'),
('f6db918684a7ed6db00e9ca81a991d983dd8b58ed788b9f723db891e3beab271d382a36caea7def9', 2, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', 'Access Token', '[]', 0, '2024-08-18 12:30:39', '2024-08-18 12:30:39', '2025-08-18 18:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('9cc7cfa1-7cae-4360-8a1a-6f832faabc94', NULL, 'Access Token', 'kXRw6SaHGgZM9WGnDftzPFXQbWtpF5oJQjgaPaVE', NULL, 'http://localhost', 1, 0, 0, '2024-08-16 08:52:38', '2024-08-16 08:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '9cc7cfa1-7cae-4360-8a1a-6f832faabc94', '2024-08-16 08:52:38', '2024-08-16 08:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EqwWrWqt2ESeVT6FbFzz1ZWw3gHTHQHtmUYVRmlK', NULL, '127.0.0.1', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmZ6elpkQmxkckRFQXBWenJQN2NkRlJCanNLZWYwOHUzZXI5YWwzYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1723822487),
('RCx830MglKSc9JDPjINqzpQpPZe1StfuS5uk6DYZ', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDI4OUlldzhudWdRbHhhMk9qNmR3WmpKMG9PUEFQMkpBS2NWSk1mciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1723820078),
('RSr7a4CagzWzV3hrn6vhlWSGgw0y4GVhMNNy3LkY', NULL, '127.0.0.1', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGRubVk1cXJLeE9hQ2xCcURSSXVhUDJHM20wM0pCUXQwTlNWT29TYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1723822412),
('wETn0gBvFg4yXm5b98PwM527syOfv8WLpj0cPqrx', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZUIxU21ua05QUkFDSUx1bUdhV0xKTEVBYkxWZ0t6TWJMd2VES1pTMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1723839029),
('X30JVchQokJUgcsWcLr6QHHEAHm8lgylLUnkoDmy', NULL, '127.0.0.1', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjUxTTljRzZhOTIwTGRuNENGUVRqUU5EMVRBVmtkYm9qemo5T0o2MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1723823213);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tipu', 'tipu', 'tipu@gmail.com', 111111, NULL, '$2y$12$bABr/ahStdgR9fIFV2QBuuDeileYlDeUOpJJjN1UHPO4E5nXsK65e', NULL, '2024-08-16 08:44:30', '2024-08-16 08:44:30'),
(2, 'Biswas', 'biswas', 'biswas@gmail.com', 199999999, NULL, '$2y$12$c.TSmuGlwmMShyaIymji3e7nV04dIKq5pup94aQkLWs/f8mvMTs6K', NULL, '2024-08-16 08:44:50', '2024-08-16 08:44:50'),
(5, 'Sohel', 'sohel', 'sohel@gmail.com', 123456789, NULL, '$2y$12$40iVKhqJ/D7HobfqpJukQOZoGCzS1laJ1TG4bAbn8V2YyxGlgVMuq', NULL, '2024-08-18 12:33:14', '2024-08-18 12:33:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
