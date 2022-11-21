-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2022 at 06:21 PM
-- Server version: 8.0.26
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tanajisawant_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `canned_replies`
--

CREATE TABLE `canned_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` int NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `data` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `browser` varchar(255) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `data`, `timestamp`, `browser`, `login_time`) VALUES
(1, '113.193.135.187', '__ci_last_regenerate|i:1668527389;', '0000-00-00 00:00:00', '', '2022-11-15 15:49:49'),
(2, '113.193.135.187', '__ci_last_regenerate|i:1668527396;', '0000-00-00 00:00:00', '', '2022-11-15 15:49:56'),
(3, '113.193.135.187', '__ci_last_regenerate|i:1668527397;', '0000-00-00 00:00:00', '', '2022-11-15 15:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `all_agents` tinyint(1) NOT NULL DEFAULT '0',
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `all_agents`, `public`, `created_at`, `updated_at`) VALUES
(1, 'Technical Support', 1, 1, '2022-11-21 01:04:33', '2022-11-21 01:04:33'),
(2, 'Technical Support1', 0, 1, '2022-11-21 06:36:25', '2022-11-21 06:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `email_verifiers`
--

CREATE TABLE `email_verifiers` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `server_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `mime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `uuid`, `name`, `server_name`, `size`, `mime`, `extension`, `disk`, `path`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'abaa4f91-03d5-498a-b0f6-19da1e78b26d', 'logo2.png', '2e614e6c862ddc5716e73391a8e3a232.png', 66715, 'image/png', 'png', 'public', '2022/11', 2, '2022-11-20 06:29:19', '2022-11-20 06:29:19'),
(2, 'ae8bf2f6-820a-4be7-b117-e2d68c07bbe5', 'schedule for mba.jpeg', 'f0a840fbb35004d7d1c6cb6fa37a394f', 121875, 'image/jpeg', 'jpeg', 'private', 'tickets/2022/11', 2, '2022-11-20 06:29:51', '2022-11-20 06:29:51'),
(3, '9485043b-5feb-4a2e-8d33-2a018c6be9bc', 'Screenshot(6).png', '00fd743001ad465e3238bad86f3243c0.png', 78692, 'image/png', 'png', 'public', '2022/11', 3, '2022-11-21 06:39:39', '2022-11-21 06:39:39'),
(4, 'ea51138e-75dd-4955-964d-9d081dbf7510', 'contact.jpg', 'a87827c1a8b93507779ebd9f5dde931a.jpg', 6411, 'image/jpeg', 'jpg', 'public', '2022/11', 3, '2022-11-21 06:40:32', '2022-11-21 06:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Urgent', '#FF4E00', '2022-11-21 01:19:23', '2022-11-21 01:19:23'),
(2, 'Progress', '#2A8DDC', '2022-11-21 01:29:49', '2022-11-21 01:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `locale`, `name`) VALUES
(1, 'en', 'English'),
(2, 'MR', 'Marathi');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2020_06_01_000001_create_user_roles_table', 1),
(3, '2020_06_01_000002_create_users_table', 1),
(4, '2020_06_01_000004_create_password_resets_table', 1),
(5, '2020_06_01_000005_create_failed_jobs_table', 1),
(6, '2020_06_01_000006_create_settings_table', 1),
(7, '2020_06_01_000007_create_email_verifiers_table', 1),
(8, '2020_06_01_000008_create_languages_table', 1),
(9, '2020_06_01_000009_create_notifications_table', 1),
(10, '2020_10_16_193905_create_labels_table', 1),
(11, '2020_10_28_180001_create_files_table', 1),
(12, '2020_10_28_180002_create_statuses_table', 1),
(13, '2020_10_28_180003_create_priorities_table', 1),
(14, '2020_10_28_180004_create_departments_table', 1),
(15, '2020_10_28_180005_create_canned_replies_table', 1),
(16, '2020_10_28_185714_create_tickets_table', 1),
(17, '2020_10_28_185745_create_ticket_replies_table', 1),
(18, '2020_10_28_185924_create_ticket_attachments_table', 1),
(19, '2020_10_28_190949_create_ticket_labels_table', 1),
(20, '2020_10_28_191259_create_user_departments_table', 1),
(21, '2020_10_28_194213_add_dashboard_column_to_user_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'laradesk_auth_token', 'ccde3384a97a5c35e6b19da780883265ec265b997aec217f09f4c8b021009706', '[\"*\"]', '2022-11-10 10:29:09', '2022-11-10 10:28:53', '2022-11-10 10:29:09'),
(3, 'App\\Models\\User', 1, 'tsfc_auth_token', '6e24f66686a5a26e88b6692b3eb39e08a78d768a9e9dfbe4c09458a11723b417', '[\"*\"]', '2022-11-12 02:02:12', '2022-11-12 01:55:23', '2022-11-12 02:02:12'),
(4, 'App\\Models\\User', 1, 'tsfc_auth_token', 'c7056e3e70ce5f57f6f27163599e43b40232a616df81d4a514ca0492c2ba1926', '[\"*\"]', '2022-11-14 00:02:49', '2022-11-13 23:57:05', '2022-11-14 00:02:49'),
(12, 'App\\Models\\User', 1, 'tsfc_auth_token', 'ffe482dd661cdbaf212a581a06dd9613e92f9efb700fa020e1f3a548f5b617fb', '[\"*\"]', '2022-11-14 07:37:26', '2022-11-14 07:36:17', '2022-11-14 07:37:26'),
(15, 'App\\Models\\User', 1, 'tsfc_auth_token', '72d71f2dc1bac3ab2bf8032245076be8736334b7ce0cd09a7939325c70a6025a', '[\"*\"]', '2022-11-14 07:49:17', '2022-11-14 07:41:21', '2022-11-14 07:49:17'),
(18, 'App\\Models\\User', 1, 'tsfc_auth_token', '4d731c9662c05accd2aa33c13cae8e3a46b55895af32d01925433dab7a8424bb', '[\"*\"]', '2022-11-14 07:48:36', '2022-11-14 07:47:53', '2022-11-14 07:48:36'),
(20, 'App\\Models\\User', 1, 'tsfc_auth_token', '81442e66ca4d441ccc3e17d417f91b5386c01f5c55e5c7556854f7437d58d1b3', '[\"*\"]', '2022-11-15 02:24:18', '2022-11-15 02:24:08', '2022-11-15 02:24:18'),
(21, 'App\\Models\\User', 1, 'tsfc_auth_token', '08e3ce9bc2e017c1a080d49ea35a30a76f8650e042fc547a4f770ea7c431567d', '[\"*\"]', '2022-11-15 11:16:48', '2022-11-15 11:15:55', '2022-11-15 11:16:48'),
(24, 'App\\Models\\User', 2, 'i_janata_tharabra_auth_token', '8d6457dcd8b1f5350005713cb67402d07871ccecfedf2c70404f8c59330ed899', '[\"*\"]', '2022-11-20 06:32:40', '2022-11-20 06:21:00', '2022-11-20 06:32:40'),
(35, 'App\\Models\\User', 3, 'i_janata_tharabra_auth_token', 'ae2a0e1e0b7dd49f82a0669d06e3741d4427ff2bf15d7beac3b2848bffa5bfba', '[\"*\"]', '2022-11-21 06:53:21', '2022-11-21 06:37:15', '2022-11-21 06:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` bigint UNSIGNED NOT NULL,
  `value` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `value`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Low', '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
(2, 2, 'Medium', '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
(3, 3, 'High', '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
(4, 4, 'Urgent', '2022-11-10 10:25:41', '2022-11-10 10:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_env` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`key`, `value`, `is_env`, `created_at`, `updated_at`) VALUES
('app_background', 'default', 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('app_date_format', 'L', 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('app_date_locale', 'en', 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('app_default_role', '3', 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('app_https', '1', 1, '2022-11-10 10:25:41', '2022-11-14 00:33:44'),
('app_icon', 'default', 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('app_locale', 'en', 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('app_name', 'TSFC', 1, '2022-11-10 10:25:41', '2022-11-14 00:33:34'),
('app_timezone', 'UTC', 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('app_url', 'https://localhost', 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('app_user_registration', '0', 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mail_encryption', NULL, 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mail_from_address', NULL, 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mail_from_name', 'TSFC', 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mail_host', 'smtp.mailtrap.io', 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mail_mailer', 'smtp', 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mail_password', NULL, 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mail_port', '2525', 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mail_username', NULL, 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mailgun_domain', NULL, 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mailgun_endpoint', NULL, 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('mailgun_secret', NULL, 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('meta_description', 'A simple and clean platform that allows users to create tickets and get support from your staff', 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('meta_home_title', 'Laradesk - Helpdesk ticketing system', 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('meta_keywords', 'dashboard,laravel,vue,tailwindcss,spa', 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('recaptcha_enabled', '0', 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('recaptcha_private', NULL, 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('recaptcha_public', NULL, 0, '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
('sentry_dsn', NULL, 1, '2022-11-10 10:25:41', '2022-11-10 10:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Open', '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
(2, 'Pending', '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
(3, 'Resolved', '2022-11-10 10:25:41', '2022-11-10 10:25:41'),
(4, 'Closed', '2022-11-10 10:25:41', '2022-11-10 10:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `created_at`, `time`) VALUES
(1, '0000-00-00 00:00:00', 0),
(2, '0000-00-00 00:00:00', 0),
(3, '2022-11-21 09:46:03', 1),
(4, '2022-11-21 10:33:02', 1),
(5, '2022-11-21 11:33:02', 1),
(6, '2022-11-21 12:33:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint UNSIGNED DEFAULT NULL,
  `priority_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `agent_id` bigint UNSIGNED DEFAULT NULL,
  `closed_by` bigint UNSIGNED DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `uuid`, `subject`, `status_id`, `priority_id`, `department_id`, `user_id`, `agent_id`, `closed_by`, `closed_at`, `created_at`, `updated_at`) VALUES
(1, 'aa32484f-6d94-4a60-b87d-3bdf43144756', 'Renew SSL', 1, NULL, NULL, 1, NULL, NULL, NULL, '2022-11-12 01:55:55', '2022-11-12 01:55:55'),
(2, '505a5b7c-11ac-4aaa-9d07-ca7335f68b1e', 'complaint about road', 1, NULL, NULL, 2, NULL, NULL, NULL, '2022-11-20 06:24:29', '2022-11-20 06:24:29'),
(3, '277eee07-0e83-483c-b189-9bf633cbe7e8', 'complaint about road', 1, NULL, NULL, 2, NULL, NULL, NULL, '2022-11-20 06:25:00', '2022-11-20 06:25:00'),
(4, '63cb6442-d059-46c0-b3dd-18fb364496e6', 'complaint about road', 1, NULL, NULL, 2, NULL, NULL, NULL, '2022-11-20 06:29:55', '2022-11-20 06:29:55'),
(5, '', 'huiii', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(6, '', 'huiii', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(7, '', 'hei', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(8, '', 'hei', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(9, '1684254b-8ad9-4070-a044-772b24df3d9c', 'Road is not in good condition', 1, NULL, 1, 3, NULL, NULL, NULL, '2022-11-21 06:40:36', '2022-11-21 06:40:36'),
(10, '42cba49b-163c-4f8e-b9e6-a85ea914fa53', 'hi', 1, NULL, 1, 3, NULL, NULL, NULL, '2022-11-21 06:41:38', '2022-11-21 06:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_attachments`
--

CREATE TABLE `ticket_attachments` (
  `ticket_reply_id` bigint UNSIGNED NOT NULL,
  `file_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_attachments`
--

INSERT INTO `ticket_attachments` (`ticket_reply_id`, `file_id`) VALUES
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_labels`
--

CREATE TABLE `ticket_labels` (
  `ticket_id` bigint UNSIGNED NOT NULL,
  `label_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `ticket_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_replies`
--

INSERT INTO `ticket_replies` (`id`, `ticket_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'h', '2022-11-12 01:55:55', '2022-11-12 01:55:55'),
(2, 2, 2, 'Near swarget road is not in condition', '2022-11-20 06:24:29', '2022-11-20 06:24:29'),
(3, 3, 2, 'Near swarget road is not in condition', '2022-11-20 06:25:00', '2022-11-20 06:25:00'),
(4, 4, 2, 'hiiii', '2022-11-20 06:29:55', '2022-11-20 06:29:55'),
(5, 9, 3, 'Hello,<br>Near swargate road is not in good condition.<img src=\"https://tanajisawant.org/admin/public/storage/2022/11/a87827c1a8b93507779ebd9f5dde931a.jpg\" alt=\"contact.jpg\" width=\"100%\" height=\"100%\">', '2022-11-21 06:40:36', '2022-11-21 06:40:36'),
(6, 10, 3, 'road is not good condition', '2022-11-21 06:41:38', '2022-11-21 06:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int DEFAULT NULL,
  `is_verified` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `role_id`, `status`, `password`, `remember_token`, `created_at`, `updated_at`, `email_verified_at`, `phone_no`, `otp`, `is_verified`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, 1, 1, '$2y$10$.pL0zFZ8.GXjiB/OW9oIje9rmUSTGuFa1iHcW.tQORL9YvLpzKRHi', NULL, '2022-11-10 10:25:41', '2022-11-14 00:30:05', NULL, '7894561230', 123456, NULL),
(2, 'snehal', 'user@gmail.com', NULL, 2, 1, '$2y$10$z.QlWktzIXAK703obFXXOuuI1AgqOskffrcex/gVl0g3BPGHjZqU6', NULL, '2022-11-12 02:00:01', '2022-11-21 01:33:27', NULL, '1234567890', 123456, NULL),
(3, 'abc', 'abc@gmail.com', NULL, 3, 1, '$2y$10$pniU.rzqFTadrsYsk2UUleyjpRWYlieRvpLDPsl7hN7f5qRzWvhPK', NULL, '2022-11-15 11:16:47', '2022-11-15 11:16:47', NULL, '9175821280', 123456, 1),
(8, NULL, 'abc1@gmail.com', NULL, 3, 1, NULL, NULL, '2022-11-18 11:43:45', '2022-11-18 11:43:45', NULL, '7387070819', 123456, NULL),
(9, NULL, 'abc1@gmail.com', NULL, 3, 1, NULL, NULL, '2022-11-18 11:45:46', '2022-11-18 11:45:46', NULL, '65656454545765767', 123456, NULL),
(10, NULL, 'abc1@gmail.com', NULL, 3, 1, NULL, NULL, '2022-11-18 12:16:11', '2022-11-18 12:16:11', NULL, '6475768686', 123456, NULL),
(11, NULL, 'abc1@gmail.com', NULL, 3, 1, NULL, NULL, '2022-11-18 12:20:53', '2022-11-18 12:20:53', NULL, '123456789', 123456, NULL),
(12, NULL, 'abc1@gmail.com', NULL, 3, 1, NULL, NULL, '2022-11-19 05:15:59', '2022-11-19 05:15:59', NULL, '7387080819', 123456, NULL),
(15, NULL, 'abc1@gmail.com', NULL, 3, 1, NULL, NULL, '2022-11-19 11:12:41', '2022-11-19 11:12:41', NULL, '8975043175', 123456, NULL),
(16, 'Executive2', 'user2@gmail.com', NULL, 4, 1, '$2y$10$wjTGnlxD.6uSXrGMsTwu8O.T9D/Y7bYPofWHlmF4oeMtG4WdDdcdm', NULL, '2022-11-21 01:56:01', '2022-11-21 10:59:22', NULL, NULL, 123456, 1),
(17, NULL, 'abc1@gmail.com', NULL, 3, 1, NULL, NULL, '2022-11-21 10:00:29', '2022-11-21 10:00:29', NULL, '7387087091', 123456, NULL),
(18, NULL, 'abc1@gmail.com', NULL, 3, 1, NULL, NULL, '2022-11-21 11:34:06', '2022-11-21 11:34:06', NULL, '35787070819', 123456, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_departments`
--

CREATE TABLE `user_departments` (
  `user_id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_departments`
--

INSERT INTO `user_departments` (`user_id`, `department_id`) VALUES
(1, 2),
(16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL DEFAULT '2',
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dashboard_access` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `type`, `permissions`, `dashboard_access`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, '\"[]\"', 1, '2022-11-10 10:25:40', '2022-11-10 10:25:40'),
(2, 'User', 1, '\"[\\\"App.Http.Controllers.Api.Dashboard.StatsController\\\"]\"', 0, '2022-11-10 10:25:40', '2022-11-10 10:25:40'),
(3, 'Customer', 1, '\"[]\"', 0, '2022-11-10 10:25:40', '2022-11-10 10:25:40'),
(4, 'agent', 2, '\"[\\\"App.Http.Controllers.Api.Dashboard.StatsController\\\",\\\"App.Http.Controllers.Api.Dashboard.TicketController\\\",\\\"App.Http.Controllers.Api.Dashboard.CannedReplyController\\\"]\"', 1, '2022-11-21 02:02:34', '2022-11-21 03:07:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canned_replies`
--
ALTER TABLE `canned_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canned_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifiers`
--
ALTER TABLE `email_verifiers`
  ADD KEY `email_verifiers_email_index` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_foreign` (`user_id`),
  ADD KEY `files_uuid_index` (`uuid`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_status_id_foreign` (`status_id`),
  ADD KEY `tickets_priority_id_foreign` (`priority_id`),
  ADD KEY `tickets_department_id_foreign` (`department_id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_agent_id_foreign` (`agent_id`),
  ADD KEY `tickets_closed_by_foreign` (`closed_by`),
  ADD KEY `tickets_uuid_index` (`uuid`);

--
-- Indexes for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD PRIMARY KEY (`ticket_reply_id`,`file_id`),
  ADD KEY `ticket_attachments_file_id_foreign` (`file_id`);

--
-- Indexes for table `ticket_labels`
--
ALTER TABLE `ticket_labels`
  ADD PRIMARY KEY (`ticket_id`,`label_id`),
  ADD KEY `ticket_labels_label_id_foreign` (`label_id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_replies_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_departments`
--
ALTER TABLE `user_departments`
  ADD PRIMARY KEY (`user_id`,`department_id`),
  ADD KEY `user_departments_department_id_foreign` (`department_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `canned_replies`
--
ALTER TABLE `canned_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `canned_replies`
--
ALTER TABLE `canned_replies`
  ADD CONSTRAINT `canned_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_closed_by_foreign` FOREIGN KEY (`closed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `priorities` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD CONSTRAINT `ticket_attachments_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  ADD CONSTRAINT `ticket_attachments_ticket_reply_id_foreign` FOREIGN KEY (`ticket_reply_id`) REFERENCES `ticket_replies` (`id`);

--
-- Constraints for table `ticket_labels`
--
ALTER TABLE `ticket_labels`
  ADD CONSTRAINT `ticket_labels_label_id_foreign` FOREIGN KEY (`label_id`) REFERENCES `labels` (`id`),
  ADD CONSTRAINT `ticket_labels_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);

--
-- Constraints for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`);

--
-- Constraints for table `user_departments`
--
ALTER TABLE `user_departments`
  ADD CONSTRAINT `user_departments_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `user_departments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
