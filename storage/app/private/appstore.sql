-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2025 at 07:05 AM
-- Server version: 12.0.0-MariaDB-log
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'have access to admin panel (in the admin panel)', NULL, NULL),
(2, 'admin.role.read', 'have access to read one or all roles (in the admin panel)', NULL, NULL),
(3, 'admin.role.create', 'have access to create a new role (in the admin panel)', NULL, NULL),
(4, 'admin.role.edit', 'have access to edit roles (in the admin panel)', NULL, NULL),
(5, 'admin.role.delete', 'have access to delete roles (in the admin panel)', NULL, NULL),
(6, 'admin.permission.read', 'have access to read one or all permissions (in the admin panel)', NULL, NULL),
(7, 'admin.permission.create', 'have access to create a new permission (in the admin panel)', NULL, NULL),
(8, 'admin.permission.edit', 'have access to edit permissions (in the admin panel)', NULL, NULL),
(9, 'admin.permission.delete', 'have access to delete permissions (in the admin panel)', NULL, NULL),
(10, 'admin.setting.read', 'have access to setting parts and read them (in the admin panel)', NULL, NULL),
(11, 'admin.setting.edit', 'have access to edit settings (in the admin panel)', NULL, NULL),
(12, 'admin.setting.info.read', 'have access to information of the app (in the admin panel)', NULL, NULL),
(13, 'admin.setting.cache.read', 'have access to the caches (in the admin panel)', NULL, NULL),
(14, 'admin.setting.cache.create', 'have access to cache determined data (in the admin panel)', NULL, NULL),
(15, 'admin.setting.cache.delete', 'have access to delete determined caches (in the admin panel)', NULL, NULL),
(16, 'admin.setting.log.read', 'have access to the logs (in the admin panel)', NULL, NULL),
(17, 'admin.setting.log.clear', 'have access to clear log files (in the admin panel)', NULL, NULL),
(18, 'admin.setting.log.delete', 'have access to delete log files (in the admin panel)', NULL, NULL),
(19, 'admin.user.read', 'have access to read one or all users (in the admin panel)', NULL, NULL),
(20, 'admin.user.create', 'have access to create a new user (in the admin panel)', NULL, NULL),
(21, 'admin.user.edit', 'have access to edit users (in the admin panel)', NULL, NULL),
(22, 'admin.user.delete', 'have access to delete users (in the admin panel)', NULL, NULL),
(23, 'panel', 'have access to user panel', NULL, NULL),
(24, 'panel.user.read', 'have access to read one or all related users (in the user panel)', NULL, NULL),
(25, 'panel.user.create', 'have access to create a new user (in the user panel)', NULL, NULL),
(26, 'panel.user.edit', 'have access to edit related users (in the user panel)', NULL, NULL),
(27, 'panel.user.delete', 'have access to delete related users (in the user panel)', NULL, NULL),
(28, 'panel.profile.edit', 'have access to edit profile data (in the user panel)', NULL, NULL),
(29, 'panel.profile.towfactor', 'have access to enable\\disable two factor authentication (in the user panel)', NULL, NULL),
(30, 'panel.profile.delete', 'have access to delete the account (in the user panel)', NULL, NULL),
(31, 'admin.blog.category.read', 'have access to read one or all blog categories (in the admin panel)', NULL, NULL),
(32, 'admin.blog.category.create', 'have access to create a new blog category (in the admin panel)', NULL, NULL),
(33, 'admin.blog.category.edit', 'have access to edit blog categories (in the admin panel)', NULL, NULL),
(34, 'admin.blog.category.delete', 'have access to delete blog categories (in the admin panel)', NULL, NULL),
(35, 'admin.blog.post.read', 'have access to read one or all blog posts (in the admin panel)', NULL, NULL),
(36, 'admin.blog.post.create', 'have access to create a new blog post (in the admin panel)', NULL, NULL),
(37, 'admin.blog.post.edit', 'have access to edit blog posts (in the admin panel)', NULL, NULL),
(38, 'admin.blog.post.delete', 'have access to delete blog posts (in the admin panel)', NULL, NULL),
(39, 'admin.blog.post.trash', 'have access to delete blog posts from database (in the admin panel)', NULL, NULL),
(40, 'admin.blog.annotation.read', 'have access to read one or all blog annotations (in the admin panel)', NULL, NULL),
(41, 'admin.blog.annotation.create', 'have access to create a new blog annotation (in the admin panel)', NULL, NULL),
(42, 'admin.blog.annotation.edit', 'have access to edit blog annotations (in the admin panel)', NULL, NULL),
(43, 'admin.blog.annotation.delete', 'have access to delete blog annotations (in the admin panel)', NULL, NULL),
(44, 'admin.blog.annotation.trash', 'have access to delete blog annotations from database (in the admin panel)', NULL, NULL),
(45, 'admin.product.property.read', 'have access to read one or all product properties (in the admin panel)', NULL, NULL),
(46, 'admin.product.property.create', 'have access to create a new product property (in the admin panel)', NULL, NULL),
(47, 'admin.product.property.edit', 'have access to edit product properties (in the admin panel)', NULL, NULL),
(48, 'admin.product.property.delete', 'have access to delete product properties (in the admin panel)', NULL, NULL),
(49, 'admin.product.read', 'have access to read one or all product (in the admin panel)', NULL, NULL),
(50, 'admin.product.create', 'have access to create a new product (in the admin panel)', NULL, NULL),
(51, 'admin.product.edit', 'have access to edit product (in the admin panel)', NULL, NULL),
(52, 'admin.product.delete', 'have access to delete product (in the admin panel)', NULL, NULL),
(53, 'admin.product.trash', 'have access to delete product from database (in the admin panel)', NULL, NULL),
(54, 'panel.product.read', 'have access to read one or all product (in the client panel)', NULL, NULL),
(55, 'panel.product.create', 'have access to create a new product (in the client panel)', NULL, NULL),
(56, 'panel.product.edit', 'have access to edit product (in the client panel)', NULL, NULL),
(57, 'panel.product.delete', 'have access to delete product (in the client panel)', NULL, NULL),
(58, 'panel.product.trash', 'have access to delete product from database (in the client panel)', NULL, NULL),
(59, 'admin.tag.read', 'have access to read one or all tags (in the admin panel)', NULL, NULL),
(60, 'admin.tag.create', 'have access to create a new tag (in the admin panel)', NULL, NULL),
(61, 'admin.tag.edit', 'have access to edit tags (in the admin panel)', NULL, NULL),
(62, 'admin.tag.delete', 'have access to delete tags (in the admin panel)', NULL, NULL),
(63, 'admin.seo.site.edit', 'have access to edit the site seo (in the admin panel)', NULL, NULL),
(64, 'admin.seo.general.edit', 'have access to edit seo of the general part of the app (in the admin panel)', NULL, NULL),
(65, 'admin.seo.sitemap.edit', 'have access to generate or edit the type of sitemap (in the admin panel)', NULL, NULL),
(66, 'admin.seo.robot.edit', 'have access to edit robot.txt file (in the admin panel)', NULL, NULL),
(67, 'admin.comment.read', 'have access to read one or all comments (in the admin panel)', NULL, NULL),
(68, 'admin.comment.create', 'have access to create a new comment or reply (in the admin panel)', NULL, NULL),
(69, 'admin.comment.edit', 'have access to edit comments (in the admin panel)', NULL, NULL),
(70, 'admin.comment.delete', 'have access to delete comments (in the admin panel)', NULL, NULL),
(71, 'admin.comment.trash', 'have access to delete comments from database (in the admin panel)', NULL, NULL),
(72, 'panel.comment.read', 'have access to read one or all comments (in the user panel)', NULL, NULL),
(73, 'panel.comment.edit', 'have access to edit comments (in the user panel)', NULL, NULL),
(74, 'panel.comment.delete', 'have access to delete comments (in the user panel)', NULL, NULL),
(75, 'client.comment.create', 'have access to create a new comment (from website)', NULL, NULL),
(76, 'admin.questionnaire.form.read', 'have access to read one or all questionnaire forms (in the admin panel)', NULL, NULL),
(77, 'admin.questionnaire.form.create', 'have access to create a new questionnaire form (in the admin panel)', NULL, NULL),
(78, 'admin.questionnaire.form.edit', 'have access to edit questionnaire forms (in the admin panel)', NULL, NULL),
(79, 'admin.questionnaire.form.delete', 'have access to delete questionnaire forms (in the admin panel)', NULL, NULL),
(80, 'admin.questionnaire.form.trash', 'have access to delete questionnaire forms from database (in the admin panel)', NULL, NULL),
(81, 'admin.questionnaire.inbox.read', 'have access to read one or all questionnaire inboxes (in the admin panel)', NULL, NULL),
(82, 'admin.questionnaire.inbox.create', 'have access to create a new questionnaire inbox (in the admin panel)', NULL, NULL),
(83, 'admin.questionnaire.inbox.edit', 'have access to edit questionnaire inboxes (in the admin panel)', NULL, NULL),
(84, 'admin.questionnaire.inbox.delete', 'have access to delete questionnaire inboxes (in the admin panel)', NULL, NULL),
(85, 'admin.questionnaire.inbox.trash', 'have access to delete questionnaire inboxes from database (in the admin panel)', NULL, NULL),
(86, 'admin.questionnaire.inbox.export', 'have access to export one or all questionnaire inboxes (in the admin panel)', NULL, NULL),
(87, 'client.questionnaire.inbox.read', 'have access to read one or all questionnaire inboxes (in the client panel)', NULL, NULL),
(88, 'admin.menu.read', 'have access to read one or all menu (in the admin panel)', NULL, NULL),
(89, 'admin.menu.create', 'have access to create a new menu (in the admin panel)', NULL, NULL),
(90, 'admin.menu.edit', 'have access to edit menu (in the admin panel)', NULL, NULL),
(91, 'admin.menu.delete', 'have access to delete menu (in the admin panel)', NULL, NULL),
(92, 'admin.menu.trash', 'have access to delete menu from database (in the admin panel)', NULL, NULL),
(93, 'admin.notifier.read', 'have access to read one or all notifications (in the admin panel)', NULL, NULL),
(94, 'admin.notifier.create', 'have access to create a new notification (in the admin panel)', NULL, NULL),
(95, 'admin.notifier.edit', 'have access to edit notifications (in the admin panel)', NULL, NULL),
(96, 'admin.notifier.delete', 'have access to delete notifications (in the admin panel)', NULL, NULL),
(97, 'admin.notifier.trash', 'have access to delete notifications from database (in the admin panel)', NULL, NULL),
(98, 'admin.gadget.read', 'have access to read one or all gadgets (in the admin panel)', NULL, NULL),
(99, 'admin.gadget.create', 'have access to create a new gadget (in the admin panel)', NULL, NULL),
(100, 'admin.gadget.edit', 'have access to edit gadgets (in the admin panel)', NULL, NULL),
(101, 'admin.gadget.delete', 'have access to delete gadgets (in the admin panel)', NULL, NULL),
(102, 'admin.gadget.trash', 'have access to delete gadgets from database (in the admin panel)', NULL, NULL),
(103, 'admin.page.read', 'have access to read one or all pages (in the admin panel)', NULL, NULL),
(104, 'admin.page.create', 'have access to create a new page (in the admin panel)', NULL, NULL),
(105, 'admin.page.edit', 'have access to edit pages (in the admin panel)', NULL, NULL),
(106, 'admin.page.delete', 'have access to delete pages (in the admin panel)', NULL, NULL),
(107, 'admin.page.trash', 'have access to delete pages from database (in the admin panel)', NULL, NULL),
(108, 'admin.company.read', 'have access to read one or all companies (in the admin panel)', NULL, NULL),
(109, 'admin.company.create', 'have access to create a new company (in the admin panel)', NULL, NULL),
(110, 'admin.company.edit', 'have access to edit companies (in the admin panel)', NULL, NULL),
(111, 'admin.company.delete', 'have access to delete companies (in the admin panel)', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission_models`
--

CREATE TABLE `auth_permission_models` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission_role`
--

CREATE TABLE `auth_permission_role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission_role`
--

INSERT INTO `auth_permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 41),
(1, 43),
(1, 42),
(1, 40),
(1, 44),
(1, 32),
(1, 34),
(1, 33),
(1, 31),
(1, 36),
(1, 38),
(1, 37),
(1, 35),
(1, 39),
(1, 68),
(1, 70),
(1, 69),
(1, 67),
(1, 71),
(1, 109),
(1, 111),
(1, 110),
(1, 108),
(1, 99),
(1, 101),
(1, 100),
(1, 98),
(1, 102),
(1, 89),
(1, 91),
(1, 90),
(1, 88),
(1, 92),
(1, 94),
(1, 96),
(1, 95),
(1, 93),
(1, 97),
(1, 104),
(1, 106),
(1, 105),
(1, 103),
(1, 107),
(1, 7),
(1, 9),
(1, 8),
(1, 6),
(1, 50),
(1, 52),
(1, 51),
(1, 46),
(1, 48),
(1, 47),
(1, 45),
(1, 49),
(1, 53),
(1, 77),
(1, 79),
(1, 78),
(1, 76),
(1, 80),
(1, 82),
(1, 84),
(1, 83),
(1, 86),
(1, 81),
(1, 85),
(1, 3),
(1, 5),
(1, 4),
(1, 2),
(1, 64),
(1, 66),
(1, 63),
(1, 65),
(1, 14),
(1, 15),
(1, 13),
(1, 11),
(1, 12),
(1, 17),
(1, 18),
(1, 16),
(1, 10),
(1, 60),
(1, 62),
(1, 61),
(1, 59),
(1, 20),
(1, 22),
(1, 21),
(1, 19),
(1, 75),
(1, 87),
(1, 23),
(1, 74),
(1, 73),
(1, 72),
(1, 55),
(1, 57),
(1, 56),
(1, 54),
(1, 58),
(1, 30),
(1, 28),
(1, 29),
(1, 25),
(1, 27),
(1, 26),
(1, 24),
(2, 1),
(2, 41),
(2, 43),
(2, 42),
(2, 40),
(2, 44),
(2, 32),
(2, 34),
(2, 33),
(2, 31),
(2, 36),
(2, 38),
(2, 37),
(2, 35),
(2, 39),
(2, 68),
(2, 70),
(2, 69),
(2, 67),
(2, 71),
(2, 109),
(2, 111),
(2, 110),
(2, 108),
(2, 99),
(2, 101),
(2, 100),
(2, 98),
(2, 102),
(2, 89),
(2, 91),
(2, 90),
(2, 88),
(2, 92),
(2, 94),
(2, 96),
(2, 95),
(2, 93),
(2, 97),
(2, 104),
(2, 106),
(2, 105),
(2, 103),
(2, 107),
(2, 7),
(2, 9),
(2, 8),
(2, 6),
(2, 50),
(2, 52),
(2, 51),
(2, 46),
(2, 48),
(2, 47),
(2, 45),
(2, 49),
(2, 53),
(2, 77),
(2, 79),
(2, 78),
(2, 76),
(2, 80),
(2, 82),
(2, 84),
(2, 83),
(2, 86),
(2, 81),
(2, 85),
(2, 3),
(2, 5),
(2, 4),
(2, 2),
(2, 64),
(2, 66),
(2, 63),
(2, 65),
(2, 14),
(2, 15),
(2, 13),
(2, 11),
(2, 12),
(2, 17),
(2, 18),
(2, 16),
(2, 10),
(2, 60),
(2, 62),
(2, 61),
(2, 59),
(2, 20),
(2, 22),
(2, 21),
(2, 19),
(2, 75),
(2, 87),
(2, 23),
(2, 74),
(2, 73),
(2, 72),
(2, 55),
(2, 57),
(2, 56),
(2, 54),
(2, 58),
(2, 30),
(2, 28),
(2, 29),
(2, 25),
(2, 27),
(2, 26),
(2, 24),
(3, 1),
(3, 41),
(3, 43),
(3, 42),
(3, 40),
(3, 44),
(3, 32),
(3, 34),
(3, 33),
(3, 31),
(3, 36),
(3, 38),
(3, 37),
(3, 35),
(3, 39),
(3, 68),
(3, 70),
(3, 69),
(3, 67),
(3, 71),
(3, 109),
(3, 111),
(3, 110),
(3, 108),
(3, 99),
(3, 101),
(3, 100),
(3, 98),
(3, 102),
(3, 89),
(3, 91),
(3, 90),
(3, 88),
(3, 92),
(3, 94),
(3, 96),
(3, 95),
(3, 93),
(3, 97),
(3, 104),
(3, 106),
(3, 105),
(3, 103),
(3, 107),
(3, 7),
(3, 9),
(3, 8),
(3, 6),
(3, 50),
(3, 52),
(3, 51),
(3, 46),
(3, 48),
(3, 47),
(3, 45),
(3, 49),
(3, 53),
(3, 77),
(3, 79),
(3, 78),
(3, 76),
(3, 80),
(3, 82),
(3, 84),
(3, 83),
(3, 86),
(3, 81),
(3, 85),
(3, 3),
(3, 5),
(3, 4),
(3, 2),
(3, 64),
(3, 66),
(3, 63),
(3, 65),
(3, 14),
(3, 15),
(3, 13),
(3, 11),
(3, 12),
(3, 17),
(3, 18),
(3, 16),
(3, 10),
(3, 60),
(3, 62),
(3, 61),
(3, 59),
(3, 20),
(3, 22),
(3, 21),
(3, 19),
(3, 75),
(3, 87),
(3, 23),
(3, 74),
(3, 73),
(3, 72),
(3, 55),
(3, 57),
(3, 56),
(3, 54),
(3, 58),
(3, 30),
(3, 28),
(3, 29),
(3, 25),
(3, 27),
(3, 26),
(3, 24),
(4, 75),
(4, 87),
(4, 23),
(4, 74),
(4, 73),
(4, 72),
(4, 55),
(4, 57),
(4, 56),
(4, 54),
(4, 58),
(4, 30),
(4, 28),
(4, 29),
(4, 25),
(4, 27),
(4, 26),
(4, 24);

-- --------------------------------------------------------

--
-- Table structure for table `auth_roles`
--

CREATE TABLE `auth_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hierarchy` float NOT NULL DEFAULT 15,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_roles`
--

INSERT INTO `auth_roles` (`id`, `title`, `description`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'a user who is owner of the app and access to all parts of the app', 0, NULL, NULL),
(2, 'administrator', 'a user can access to all parts of the app', 1, NULL, NULL),
(3, 'admin', 'users can access to all parts of the app but can not edit the owner and administrator user', 2, NULL, NULL),
(4, 'user', 'regular users that just make an account', 50, NULL, NULL),
(5, 'abandonment', 'accounts that are banned and have no accessibility', 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_role_models`
--

CREATE TABLE `auth_role_models` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_role_models`
--

INSERT INTO `auth_role_models` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'Lareon\\CMS\\App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_annotations`
--

CREATE TABLE `blog_annotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `parent_id`, `title`, `slug`, `excerpt`, `body`, `featured_image`, `created_at`, `updated_at`) VALUES
(1, 0, 'general', 'general', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_post`
--

CREATE TABLE `blog_category_post` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `template` varchar(50) DEFAULT NULL,
  `publish_status` tinyint(4) NOT NULL DEFAULT 1,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_important`
--

CREATE TABLE `blog_post_important` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `hierarchy` float NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('barsa_store_cache_57a8d4d9e7eb2f6e02e058f442e4201c', 'i:1;', 1759302301),
('barsa_store_cache_57a8d4d9e7eb2f6e02e058f442e4201c:timer', 'i:1759302301;', 1759302301);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('barsa_store_cache_allPermissionsGates', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:111:{i:0;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:5:\"admin\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:5:\"admin\";s:2:\"id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:28:\"admin.blog.annotation.create\";s:2:\"id\";i:41;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:28:\"admin.blog.annotation.create\";s:2:\"id\";i:41;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:28:\"admin.blog.annotation.delete\";s:2:\"id\";i:43;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:28:\"admin.blog.annotation.delete\";s:2:\"id\";i:43;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.blog.annotation.edit\";s:2:\"id\";i:42;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.blog.annotation.edit\";s:2:\"id\";i:42;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.blog.annotation.read\";s:2:\"id\";i:40;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.blog.annotation.read\";s:2:\"id\";i:40;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:27:\"admin.blog.annotation.trash\";s:2:\"id\";i:44;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:27:\"admin.blog.annotation.trash\";s:2:\"id\";i:44;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.blog.category.create\";s:2:\"id\";i:32;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.blog.category.create\";s:2:\"id\";i:32;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.blog.category.delete\";s:2:\"id\";i:34;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.blog.category.delete\";s:2:\"id\";i:34;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:8;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.blog.category.edit\";s:2:\"id\";i:33;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.blog.category.edit\";s:2:\"id\";i:33;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:9;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.blog.category.read\";s:2:\"id\";i:31;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.blog.category.read\";s:2:\"id\";i:31;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:10;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.blog.post.create\";s:2:\"id\";i:36;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.blog.post.create\";s:2:\"id\";i:36;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:11;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.blog.post.delete\";s:2:\"id\";i:38;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.blog.post.delete\";s:2:\"id\";i:38;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:12;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.blog.post.edit\";s:2:\"id\";i:37;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.blog.post.edit\";s:2:\"id\";i:37;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:13;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.blog.post.read\";s:2:\"id\";i:35;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.blog.post.read\";s:2:\"id\";i:35;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:14;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.blog.post.trash\";s:2:\"id\";i:39;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.blog.post.trash\";s:2:\"id\";i:39;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:15;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.comment.create\";s:2:\"id\";i:68;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.comment.create\";s:2:\"id\";i:68;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:16;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.comment.delete\";s:2:\"id\";i:70;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.comment.delete\";s:2:\"id\";i:70;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:17;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.comment.edit\";s:2:\"id\";i:69;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.comment.edit\";s:2:\"id\";i:69;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:18;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.comment.read\";s:2:\"id\";i:67;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.comment.read\";s:2:\"id\";i:67;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:19;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.comment.trash\";s:2:\"id\";i:71;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.comment.trash\";s:2:\"id\";i:71;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:20;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.company.create\";s:2:\"id\";i:109;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.company.create\";s:2:\"id\";i:109;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:21;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.company.delete\";s:2:\"id\";i:111;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.company.delete\";s:2:\"id\";i:111;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:22;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.company.edit\";s:2:\"id\";i:110;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.company.edit\";s:2:\"id\";i:110;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:23;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.company.read\";s:2:\"id\";i:108;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.company.read\";s:2:\"id\";i:108;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:24;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.gadget.create\";s:2:\"id\";i:99;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.gadget.create\";s:2:\"id\";i:99;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:25;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.gadget.delete\";s:2:\"id\";i:101;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.gadget.delete\";s:2:\"id\";i:101;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:26;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.gadget.edit\";s:2:\"id\";i:100;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.gadget.edit\";s:2:\"id\";i:100;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:27;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.gadget.read\";s:2:\"id\";i:98;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.gadget.read\";s:2:\"id\";i:98;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:28;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.gadget.trash\";s:2:\"id\";i:102;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.gadget.trash\";s:2:\"id\";i:102;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:29;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.menu.create\";s:2:\"id\";i:89;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.menu.create\";s:2:\"id\";i:89;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:30;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.menu.delete\";s:2:\"id\";i:91;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.menu.delete\";s:2:\"id\";i:91;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:31;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.menu.edit\";s:2:\"id\";i:90;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.menu.edit\";s:2:\"id\";i:90;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:32;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.menu.read\";s:2:\"id\";i:88;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.menu.read\";s:2:\"id\";i:88;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:33;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.menu.trash\";s:2:\"id\";i:92;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.menu.trash\";s:2:\"id\";i:92;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:34;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.notifier.create\";s:2:\"id\";i:94;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.notifier.create\";s:2:\"id\";i:94;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:35;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.notifier.delete\";s:2:\"id\";i:96;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.notifier.delete\";s:2:\"id\";i:96;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:36;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.notifier.edit\";s:2:\"id\";i:95;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.notifier.edit\";s:2:\"id\";i:95;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:37;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.notifier.read\";s:2:\"id\";i:93;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.notifier.read\";s:2:\"id\";i:93;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:38;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.notifier.trash\";s:2:\"id\";i:97;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.notifier.trash\";s:2:\"id\";i:97;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:39;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.page.create\";s:2:\"id\";i:104;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.page.create\";s:2:\"id\";i:104;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:40;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.page.delete\";s:2:\"id\";i:106;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.page.delete\";s:2:\"id\";i:106;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:41;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.page.edit\";s:2:\"id\";i:105;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.page.edit\";s:2:\"id\";i:105;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:42;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.page.read\";s:2:\"id\";i:103;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.page.read\";s:2:\"id\";i:103;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:43;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.page.trash\";s:2:\"id\";i:107;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.page.trash\";s:2:\"id\";i:107;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:44;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:23:\"admin.permission.create\";s:2:\"id\";i:7;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:23:\"admin.permission.create\";s:2:\"id\";i:7;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:45;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:23:\"admin.permission.delete\";s:2:\"id\";i:9;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:23:\"admin.permission.delete\";s:2:\"id\";i:9;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:46;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.permission.edit\";s:2:\"id\";i:8;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.permission.edit\";s:2:\"id\";i:8;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:47;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.permission.read\";s:2:\"id\";i:6;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.permission.read\";s:2:\"id\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:48;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.product.create\";s:2:\"id\";i:50;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.product.create\";s:2:\"id\";i:50;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:49;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.product.delete\";s:2:\"id\";i:52;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.product.delete\";s:2:\"id\";i:52;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:50;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.product.edit\";s:2:\"id\";i:51;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.product.edit\";s:2:\"id\";i:51;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:51;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:29:\"admin.product.property.create\";s:2:\"id\";i:46;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:29:\"admin.product.property.create\";s:2:\"id\";i:46;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:52;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:29:\"admin.product.property.delete\";s:2:\"id\";i:48;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:29:\"admin.product.property.delete\";s:2:\"id\";i:48;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:53;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:27:\"admin.product.property.edit\";s:2:\"id\";i:47;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:27:\"admin.product.property.edit\";s:2:\"id\";i:47;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:54;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:27:\"admin.product.property.read\";s:2:\"id\";i:45;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:27:\"admin.product.property.read\";s:2:\"id\";i:45;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:55;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.product.read\";s:2:\"id\";i:49;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.product.read\";s:2:\"id\";i:49;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:56;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.product.trash\";s:2:\"id\";i:53;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.product.trash\";s:2:\"id\";i:53;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:57;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.form.create\";s:2:\"id\";i:77;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.form.create\";s:2:\"id\";i:77;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:58;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.form.delete\";s:2:\"id\";i:79;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.form.delete\";s:2:\"id\";i:79;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:59;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:29:\"admin.questionnaire.form.edit\";s:2:\"id\";i:78;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:29:\"admin.questionnaire.form.edit\";s:2:\"id\";i:78;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:60;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:29:\"admin.questionnaire.form.read\";s:2:\"id\";i:76;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:29:\"admin.questionnaire.form.read\";s:2:\"id\";i:76;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:61;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.form.trash\";s:2:\"id\";i:80;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.form.trash\";s:2:\"id\";i:80;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:62;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.create\";s:2:\"id\";i:82;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.create\";s:2:\"id\";i:82;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:63;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.delete\";s:2:\"id\";i:84;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.delete\";s:2:\"id\";i:84;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:64;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.inbox.edit\";s:2:\"id\";i:83;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.inbox.edit\";s:2:\"id\";i:83;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:65;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.export\";s:2:\"id\";i:86;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.export\";s:2:\"id\";i:86;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:66;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.inbox.read\";s:2:\"id\";i:81;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.inbox.read\";s:2:\"id\";i:81;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:67;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.inbox.trash\";s:2:\"id\";i:85;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.inbox.trash\";s:2:\"id\";i:85;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:68;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.role.create\";s:2:\"id\";i:3;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.role.create\";s:2:\"id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:69;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.role.delete\";s:2:\"id\";i:5;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.role.delete\";s:2:\"id\";i:5;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:70;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.role.edit\";s:2:\"id\";i:4;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.role.edit\";s:2:\"id\";i:4;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:71;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.role.read\";s:2:\"id\";i:2;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.role.read\";s:2:\"id\";i:2;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:72;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.seo.general.edit\";s:2:\"id\";i:64;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.seo.general.edit\";s:2:\"id\";i:64;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:73;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.seo.robot.edit\";s:2:\"id\";i:66;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.seo.robot.edit\";s:2:\"id\";i:66;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:74;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.seo.site.edit\";s:2:\"id\";i:63;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.seo.site.edit\";s:2:\"id\";i:63;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:75;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.seo.sitemap.edit\";s:2:\"id\";i:65;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.seo.sitemap.edit\";s:2:\"id\";i:65;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:76;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.setting.cache.create\";s:2:\"id\";i:14;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.setting.cache.create\";s:2:\"id\";i:14;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:77;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.setting.cache.delete\";s:2:\"id\";i:15;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.setting.cache.delete\";s:2:\"id\";i:15;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:78;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.setting.cache.read\";s:2:\"id\";i:13;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.setting.cache.read\";s:2:\"id\";i:13;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:79;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.setting.edit\";s:2:\"id\";i:11;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.setting.edit\";s:2:\"id\";i:11;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:80;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:23:\"admin.setting.info.read\";s:2:\"id\";i:12;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:23:\"admin.setting.info.read\";s:2:\"id\";i:12;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:81;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:23:\"admin.setting.log.clear\";s:2:\"id\";i:17;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:23:\"admin.setting.log.clear\";s:2:\"id\";i:17;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:82;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.setting.log.delete\";s:2:\"id\";i:18;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.setting.log.delete\";s:2:\"id\";i:18;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:83;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.setting.log.read\";s:2:\"id\";i:16;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.setting.log.read\";s:2:\"id\";i:16;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:84;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.setting.read\";s:2:\"id\";i:10;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.setting.read\";s:2:\"id\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:85;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.tag.create\";s:2:\"id\";i:60;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.tag.create\";s:2:\"id\";i:60;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:86;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.tag.delete\";s:2:\"id\";i:62;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.tag.delete\";s:2:\"id\";i:62;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:87;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:14:\"admin.tag.edit\";s:2:\"id\";i:61;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:14:\"admin.tag.edit\";s:2:\"id\";i:61;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:88;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:14:\"admin.tag.read\";s:2:\"id\";i:59;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:14:\"admin.tag.read\";s:2:\"id\";i:59;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:89;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.user.create\";s:2:\"id\";i:20;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.user.create\";s:2:\"id\";i:20;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:90;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.user.delete\";s:2:\"id\";i:22;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.user.delete\";s:2:\"id\";i:22;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:91;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.user.edit\";s:2:\"id\";i:21;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.user.edit\";s:2:\"id\";i:21;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:92;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.user.read\";s:2:\"id\";i:19;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.user.read\";s:2:\"id\";i:19;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:93;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"client.comment.create\";s:2:\"id\";i:75;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"client.comment.create\";s:2:\"id\";i:75;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:94;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:31:\"client.questionnaire.inbox.read\";s:2:\"id\";i:87;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:31:\"client.questionnaire.inbox.read\";s:2:\"id\";i:87;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:95;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:5:\"panel\";s:2:\"id\";i:23;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:5:\"panel\";s:2:\"id\";i:23;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:96;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"panel.comment.delete\";s:2:\"id\";i:74;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"panel.comment.delete\";s:2:\"id\";i:74;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:97;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"panel.comment.edit\";s:2:\"id\";i:73;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"panel.comment.edit\";s:2:\"id\";i:73;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:98;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"panel.comment.read\";s:2:\"id\";i:72;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"panel.comment.read\";s:2:\"id\";i:72;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:99;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"panel.product.create\";s:2:\"id\";i:55;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"panel.product.create\";s:2:\"id\";i:55;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:100;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"panel.product.delete\";s:2:\"id\";i:57;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"panel.product.delete\";s:2:\"id\";i:57;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:101;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"panel.product.edit\";s:2:\"id\";i:56;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"panel.product.edit\";s:2:\"id\";i:56;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:102;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"panel.product.read\";s:2:\"id\";i:54;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"panel.product.read\";s:2:\"id\";i:54;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:103;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"panel.product.trash\";s:2:\"id\";i:58;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"panel.product.trash\";s:2:\"id\";i:58;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:104;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"panel.profile.delete\";s:2:\"id\";i:30;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"panel.profile.delete\";s:2:\"id\";i:30;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:105;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"panel.profile.edit\";s:2:\"id\";i:28;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"panel.profile.edit\";s:2:\"id\";i:28;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:106;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:23:\"panel.profile.towfactor\";s:2:\"id\";i:29;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:23:\"panel.profile.towfactor\";s:2:\"id\";i:29;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:107;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"panel.user.create\";s:2:\"id\";i:25;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"panel.user.create\";s:2:\"id\";i:25;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:108;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"panel.user.delete\";s:2:\"id\";i:27;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"panel.user.delete\";s:2:\"id\";i:27;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:109;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"panel.user.edit\";s:2:\"id\";i:26;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"panel.user.edit\";s:2:\"id\";i:26;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:110;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"panel.user.read\";s:2:\"id\";i:24;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"panel.user.read\";s:2:\"id\";i:24;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2074323768);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('barsa_store_cache_captcha_0726c64369f53afb93ce370d92979688', 'a:5:{i:0;s:1:\"4\";i:1;s:1:\"3\";i:2;s:1:\"1\";i:3;s:1:\"9\";i:4;s:1:\"3\";}', 1758969280),
('barsa_store_cache_captcha_0ad50ac80dbbae7aac880a3768e014ba', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"8\";i:4;s:1:\"2\";}', 1758963829),
('barsa_store_cache_captcha_1131c37c1d045f3111fa3b197feb9cbe', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"6\";i:2;s:1:\"6\";i:3;s:1:\"4\";i:4;s:1:\"2\";}', 1758970285),
('barsa_store_cache_captcha_1429bb64369e434c3abd2ddf8c030781', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"8\";i:3;s:1:\"7\";i:4;s:1:\"8\";}', 1759293594),
('barsa_store_cache_captcha_1b0a12079e03900beff7bbdeb5be20b2', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"3\";i:2;s:1:\"6\";i:3;s:1:\"8\";i:4;s:1:\"9\";}', 1759036330),
('barsa_store_cache_captcha_21fad66518e1fe9726d517c70733c8ec', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"1\";i:2;s:1:\"8\";i:3;s:1:\"8\";i:4;s:1:\"8\";}', 1759134240),
('barsa_store_cache_captcha_2d141ccb65c221f7b960db5182f5515a', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"9\";i:2;s:1:\"6\";i:3;s:1:\"3\";i:4;s:1:\"6\";}', 1758964109),
('barsa_store_cache_captcha_35dbb980db1d802dcfed3e589b6c2fdd', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"6\";i:2;s:1:\"2\";i:3;s:1:\"4\";i:4;s:1:\"6\";}', 1759134330),
('barsa_store_cache_captcha_361e542e23fbb94533c2a51ef3f72f03', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"4\";i:2;s:1:\"6\";i:3;s:1:\"9\";i:4;s:1:\"7\";}', 1758964187),
('barsa_store_cache_captcha_3ae9b56a701356159f1f21e1ab890b62', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"9\";i:2;s:1:\"4\";i:3;s:1:\"9\";i:4;s:1:\"3\";}', 1759038511),
('barsa_store_cache_captcha_4160c5fcdb2d761ff8cd9b398432e480', 'a:5:{i:0;s:1:\"8\";i:1;s:1:\"9\";i:2;s:1:\"8\";i:3;s:1:\"7\";i:4;s:1:\"4\";}', 1759134431),
('barsa_store_cache_captcha_424e51bb450540ef14580122fb18bd46', 'a:5:{i:0;s:1:\"4\";i:1;s:1:\"3\";i:2;s:1:\"9\";i:3;s:1:\"1\";i:4;s:1:\"2\";}', 1759140061),
('barsa_store_cache_captcha_46138acc4029f30cdbff04c4656eaace', 'a:5:{i:0;s:1:\"4\";i:1;s:1:\"7\";i:2;s:1:\"2\";i:3;s:1:\"8\";i:4;s:1:\"8\";}', 1759129221),
('barsa_store_cache_captcha_47463863cf923082676c31677535f1ec', 'a:5:{i:0;s:1:\"7\";i:1;s:1:\"3\";i:2;s:1:\"7\";i:3;s:1:\"1\";i:4;s:1:\"8\";}', 1758964182),
('barsa_store_cache_captcha_4b6d18154a85a62f81276a3be16c6dfd', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"7\";i:2;s:1:\"8\";i:3;s:1:\"8\";i:4;s:1:\"4\";}', 1759130809),
('barsa_store_cache_captcha_541535c8475f1d01a792c852ea4888f5', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"7\";i:2;s:1:\"7\";i:3;s:1:\"6\";i:4;s:1:\"9\";}', 1758964209),
('barsa_store_cache_captcha_5a0992558f310444fcdecf2f48df4ff9', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"6\";i:4;s:1:\"9\";}', 1759134156),
('barsa_store_cache_captcha_611c625ad3ecbde109c5a854ad8c1b46', 'a:5:{i:0;s:1:\"8\";i:1;s:1:\"9\";i:2;s:1:\"4\";i:3;s:1:\"2\";i:4;s:1:\"2\";}', 1758964198),
('barsa_store_cache_captcha_67a6d0dd4463c8d8dfcce6b922a5afe9', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"8\";i:2;s:1:\"9\";i:3;s:1:\"1\";i:4;s:1:\"4\";}', 1758964482),
('barsa_store_cache_captcha_6ea856b6fad5cf0caddeccad29747eb7', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"8\";i:2;s:1:\"2\";i:3;s:1:\"9\";i:4;s:1:\"3\";}', 1758964301),
('barsa_store_cache_captcha_6f42358861b21a7e4daeeaeae7c6c9d6', 'a:5:{i:0;s:1:\"7\";i:1;s:1:\"7\";i:2;s:1:\"8\";i:3;s:1:\"7\";i:4;s:1:\"6\";}', 1759143698),
('barsa_store_cache_captcha_756229a6cf47f5c06190e3edf4b054ec', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"9\";i:4;s:1:\"1\";}', 1758964040),
('barsa_store_cache_captcha_7afac323af8642d0bdac0e946a1cf5c3', 'a:5:{i:0;s:1:\"4\";i:1;s:1:\"2\";i:2;s:1:\"1\";i:3;s:1:\"4\";i:4;s:1:\"2\";}', 1758964093),
('barsa_store_cache_captcha_7b025c71f4c60a9363c7fbeb21c9d945', 'a:5:{i:0;s:1:\"7\";i:1;s:1:\"2\";i:2;s:1:\"1\";i:3;s:1:\"8\";i:4;s:1:\"4\";}', 1758963844),
('barsa_store_cache_captcha_7be57aedd1d5ca6c81201b385cc1fd40', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"8\";i:2;s:1:\"9\";i:3;s:1:\"6\";i:4;s:1:\"8\";}', 1759048031),
('barsa_store_cache_captcha_81b612102a9aea36bd4d91bab09927fb', 'a:5:{i:0;s:1:\"8\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"2\";i:4;s:1:\"7\";}', 1759143654),
('barsa_store_cache_captcha_8312aeef967003d7e3eca8397034f7dd', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"3\";i:4;s:1:\"4\";}', 1758964518),
('barsa_store_cache_captcha_8ac6179b5ae8500d98d2d83ed7e86abb', 'a:5:{i:0;s:1:\"7\";i:1;s:1:\"1\";i:2;s:1:\"6\";i:3;s:1:\"8\";i:4;s:1:\"7\";}', 1759134380),
('barsa_store_cache_captcha_8af3dff6a859e8e15fe4bcee45c8925d', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"7\";i:2;s:1:\"7\";i:3;s:1:\"4\";i:4;s:1:\"2\";}', 1758971139),
('barsa_store_cache_captcha_9185961e4ca81e2f7efad297b2f1c6ec', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"7\";i:2;s:1:\"7\";i:3;s:1:\"2\";i:4;s:1:\"3\";}', 1759130059),
('barsa_store_cache_captcha_94f95812d1d191273061301b4c8c34a8', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"3\";i:2;s:1:\"8\";i:3;s:1:\"6\";i:4;s:1:\"6\";}', 1758971168),
('barsa_store_cache_captcha_96e79cd8182402777f73b9083055a042', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"9\";i:2;s:1:\"3\";i:3;s:1:\"6\";i:4;s:1:\"2\";}', 1759142371),
('barsa_store_cache_captcha_97093cf114ef7ad33ec10134607caba3', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"2\";i:2;s:1:\"1\";i:3;s:1:\"9\";i:4;s:1:\"9\";}', 1759142336),
('barsa_store_cache_captcha_9917643231c79d42eaebaca05fd4b74e', 'a:5:{i:0;s:1:\"4\";i:1;s:1:\"2\";i:2;s:1:\"8\";i:3;s:1:\"8\";i:4;s:1:\"6\";}', 1759140102),
('barsa_store_cache_captcha_9c7e4bf2482eebefdf6aefd528ee1627', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"9\";i:2;s:1:\"2\";i:3;s:1:\"4\";i:4;s:1:\"2\";}', 1758963882),
('barsa_store_cache_captcha_a5291684dbd8610b5f560623713bfb37', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"3\";i:4;s:1:\"9\";}', 1759056046),
('barsa_store_cache_captcha_acd8e919eb46d298d2e934c508140e68', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"9\";i:4;s:1:\"8\";}', 1758969154),
('barsa_store_cache_captcha_ad6e090908526b44c552ebed80467c8a', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"8\";i:2;s:1:\"4\";i:3;s:1:\"8\";i:4;s:1:\"4\";}', 1758964234),
('barsa_store_cache_captcha_affe29a09fccebb3a32f6ff6dc371aaa', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"1\";i:2;s:1:\"6\";i:3;s:1:\"4\";i:4;s:1:\"6\";}', 1758964400),
('barsa_store_cache_captcha_b032c76195fb6d97391b47312e84ef7a', 'a:5:{i:0;s:1:\"7\";i:1;s:1:\"8\";i:2;s:1:\"8\";i:3;s:1:\"7\";i:4;s:1:\"7\";}', 1759141858),
('barsa_store_cache_captcha_b328e41e0a3e7ea76918acb3c93b1e37', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"8\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:1:\"7\";}', 1758964294),
('barsa_store_cache_captcha_b93bdfff99368b6a01558fff2fffffb0', 'a:5:{i:0;s:1:\"8\";i:1;s:1:\"1\";i:2;s:1:\"7\";i:3;s:1:\"8\";i:4;s:1:\"7\";}', 1759134368),
('barsa_store_cache_captcha_bd3aff6443c6ebe8ac5690f052a68e40', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"2\";i:2;s:1:\"8\";i:3;s:1:\"4\";i:4;s:1:\"1\";}', 1758963977),
('barsa_store_cache_captcha_bea98b4a0ef4a328a245534b95a095d1', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"3\";i:2;s:1:\"2\";i:3;s:1:\"6\";i:4;s:1:\"1\";}', 1759129341),
('barsa_store_cache_captcha_bf1c0db291c69c1ef08276b22cb0d096', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"3\";i:2;s:1:\"9\";i:3;s:1:\"7\";i:4;s:1:\"6\";}', 1759134278),
('barsa_store_cache_captcha_c2e363e0cda684f602772d0272c99800', 'a:5:{i:0;s:1:\"8\";i:1;s:1:\"8\";i:2;s:1:\"3\";i:3;s:1:\"9\";i:4;s:1:\"3\";}', 1759140087),
('barsa_store_cache_captcha_c326575e1900e2bf81c2078de19ccaff', 'a:5:{i:0;s:1:\"8\";i:1;s:1:\"1\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"9\";}', 1759134585),
('barsa_store_cache_captcha_c986770265cdb5e21948c36f2775b4da', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"9\";i:2;s:1:\"6\";i:3;s:1:\"4\";i:4;s:1:\"3\";}', 1759134567),
('barsa_store_cache_captcha_c9915f8a78cca2f98132ee87115ca3e7', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"1\";i:2;s:1:\"3\";i:3;s:1:\"2\";i:4;s:1:\"6\";}', 1759134599),
('barsa_store_cache_captcha_c996908e044c85c06734b84b6aad6bbe', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"9\";i:4;s:1:\"6\";}', 1759045837),
('barsa_store_cache_captcha_cb4d8c5abc7e57b56710366f9afb50dd', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"7\";i:2;s:1:\"8\";i:3;s:1:\"9\";i:4;s:1:\"6\";}', 1759045837),
('barsa_store_cache_captcha_d0233230cbe0dda101a5a3fa12ddae34', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"4\";i:2;s:1:\"7\";i:3;s:1:\"1\";i:4;s:1:\"1\";}', 1758969316),
('barsa_store_cache_captcha_d5db6b070b3180d8ad9dff5319aeb025', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"4\";i:2;s:1:\"7\";i:3;s:1:\"9\";i:4;s:1:\"7\";}', 1759134083),
('barsa_store_cache_captcha_d7fbbb44dd55f49910e56258d7bf2117', 'a:5:{i:0;s:1:\"4\";i:1;s:1:\"9\";i:2;s:1:\"7\";i:3;s:1:\"1\";i:4;s:1:\"3\";}', 1759134144),
('barsa_store_cache_captcha_dfb69c203fdd0cc08a30be7f5432fe00', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"6\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"9\";}', 1759134022),
('barsa_store_cache_captcha_e3136b27def9e1aa8ce6389f3e26b423', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"3\";i:2;s:1:\"3\";i:3;s:1:\"1\";i:4;s:1:\"7\";}', 1759048029),
('barsa_store_cache_captcha_ec417114514a707f30d2b4b07bf52956', 'a:5:{i:0;s:1:\"8\";i:1;s:1:\"7\";i:2;s:1:\"1\";i:3;s:1:\"9\";i:4;s:1:\"8\";}', 1759134352),
('barsa_store_cache_captcha_ed862c1c4852c747bee7baf64955561b', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"6\";i:2;s:1:\"9\";i:3;s:1:\"4\";i:4;s:1:\"3\";}', 1758964044),
('barsa_store_cache_captcha_f00968aafa3dbcda1655d51951828068', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"7\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"8\";}', 1759300516),
('barsa_store_cache_captcha_f393683102784d317882343c51a5a12c', 'a:5:{i:0;s:1:\"4\";i:1;s:1:\"6\";i:2;s:1:\"7\";i:3;s:1:\"3\";i:4;s:1:\"9\";}', 1758971174),
('barsa_store_cache_captcha_fb9556d328da972f014c40e2940bce3c', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"4\";i:2;s:1:\"6\";i:3;s:1:\"6\";i:4;s:1:\"7\";}', 1758969217),
('barsa_store_cache_captcha_fc15def2ce3baea5865253d9a69088e4', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"3\";i:3;s:1:\"2\";i:4;s:1:\"8\";}', 1759292830),
('barsa_store_cache_captcha_fd5802079641d03b61fedee9214a2a80', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"1\";i:2;s:1:\"4\";i:3;s:1:\"9\";i:4;s:1:\"2\";}', 1759032271),
('barsa_store_cache_captcha_fd9caa9cc4256aad9ade6be8760b8dec', 'a:5:{i:0;s:1:\"7\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"8\";}', 1759129868),
('barsa_store_cache_data_app_Data_theme_general', 'a:3:{s:5:\"email\";a:3:{s:4:\"icon\";s:4:\"mail\";s:4:\"type\";s:7:\"mailto:\";s:5:\"items\";a:1:{i:0;a:2:{s:5:\"title\";s:18:\"info@barsasoft.com\";s:4:\"href\";s:18:\"info@barsasoft.com\";}}}s:5:\"phone\";a:3:{s:4:\"icon\";s:5:\"phone\";s:4:\"type\";s:4:\"tel:\";s:5:\"items\";a:2:{i:0;a:2:{s:5:\"title\";s:12:\"(21)43000090\";s:4:\"href\";s:14:\"00982143000090\";}i:1;a:2:{s:5:\"title\";s:12:\"(21)91304846\";s:4:\"href\";s:14:\"00982191304846\";}}}s:7:\"address\";a:3:{s:4:\"icon\";s:15:\"marker-location\";s:4:\"type\";s:0:\"\";s:5:\"items\";a:1:{i:0;a:2:{s:5:\"title\";s:114:\"تهران – خیابان شیراز جنوبی – کوچه آقاعلیخانی شرقی پلاک 5 واحد 2\";s:4:\"href\";s:37:\"https://goo.gl/maps/NBZUyzbHLsb9h5Zd9\";}}}}', 1758972221),
('barsa_store_cache_data_app_Data_theme_social', 'a:2:{i:0;a:3:{s:5:\"title\";s:9:\"instagram\";s:3:\"url\";s:31:\"https://instagram.com/barsanesh\";s:4:\"icon\";s:9:\"instagram\";}i:1;a:3:{s:5:\"title\";s:8:\"linkedin\";s:3:\"url\";s:43:\"https://www.linkedin.com/company/barsanesh/\";s:4:\"icon\";s:8:\"linkedin\";}}', 1758972221);

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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `national_id` varchar(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `telephone` char(20) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `email` char(200) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `url`, `national_id`, `title`, `telephone`, `phone`, `email`, `type`, `created_at`, `updated_at`) VALUES
(1, 'https://barsasoft.com', '10103109580', 'برسا نوین رای', '02191304846', '02143000090', 'info@barsasoft.com', 1, NULL, NULL),
(2, 'https://tinaksoft.com/', '10102964987', 'تیناک', '02191304847', '02143000091', 'indfo@tinaksoft.com', 1, '2025-09-23 01:39:07', '2025-09-23 01:39:07');

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
-- Table structure for table `gadgets`
--

CREATE TABLE `gadgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `classes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `label`, `classes`, `created_at`, `updated_at`) VALUES
(1, 'main-en', 'menu_1750587275', NULL, '2025-09-15 03:26:19', '2025-09-15 03:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `pre_icon` varchar(255) DEFAULT NULL,
  `next_icon` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `classes` varchar(255) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `position`, `title`, `subtitle`, `pre_icon`, `next_icon`, `image`, `url`, `classes`, `attributes`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 3, 'سوالات شما', NULL, NULL, NULL, NULL, '/faq', NULL, NULL, NULL, NULL),
(3, 1, NULL, 1, 'درباره برسا استور', NULL, NULL, NULL, NULL, '/about', NULL, NULL, NULL, NULL),
(4, 1, NULL, 2, 'تماس با ما', NULL, NULL, NULL, NULL, '/contact', NULL, NULL, NULL, NULL),
(7, 1, NULL, 0, 'صفحه نخست', NULL, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meta_models`
--

CREATE TABLE `meta_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `stance` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(145, '0001_01_01_000100_create_users_table', 1),
(146, '0001_01_01_000101_create_cache_table', 1),
(147, '0001_01_01_000102_create_jobs_table', 1),
(148, '0001_01_01_100000__create_permissions_table', 1),
(149, '0001_01_01_100001_create_roles_table', 1),
(150, '0001_01_02_000001_create_user_metas_table', 1),
(151, '2025_03_26_145720_create_blog_categories_table', 1),
(152, '2025_03_26_145730_create_blog_posts_table', 1),
(153, '2025_03_27_084057_create_tags_table', 1),
(154, '2025_03_27_130732_create_blog_annotations_table', 1),
(155, '2025_03_31_103546_create_seo_sites_table', 1),
(156, '2025_03_31_103550_create_seo_models_table', 1),
(157, '2025_03_31_103556_create_seo_generals_table', 1),
(158, '2025_03_31_104933_create_seo_sitemaps_table', 1),
(159, '2025_04_08_050451_create_pages_table', 1),
(160, '2025_04_09_051057_create_questionnaire_forms_table', 1),
(161, '2025_04_09_055522_create_questionnaire_form_rules_table', 1),
(162, '2025_04_09_061323_create_questionnaire_form_announcements_table', 1),
(163, '2025_04_09_071107_create_questionnaire_inboxes_table', 1),
(164, '2025_04_15_112451_create_comments_table', 1),
(165, '2025_04_27_071337_create_settings_table', 1),
(166, '2025_04_27_130717_create_menus_table', 1),
(167, '2025_04_27_130724_create_menu_items_table', 1),
(168, '2025_04_29_074615_create_notifier_items_table', 1),
(169, '2025_04_29_074627_create_notifier_users_table', 1),
(170, '2025_05_03_103154_create_gadgets_table', 1),
(171, '2025_05_05_103146_create_restrict_ips_table', 1),
(172, '2025_05_18_095627_add_two_factor_columns_to_users_table', 1),
(173, '2025_09_17_065110_create_companies_table', 1),
(174, '2025_09_17_065119_create_products_table', 1),
(175, '2025_09_17_065425_create_product_property_groups_table', 1),
(176, '2025_09_17_065431_create_product_properties_table', 1),
(177, '2025_09_17_070418_create_product_version_table', 1),
(178, '2025_09_20_100701_create_products_properties_table', 1),
(179, '2025_09_21_064408_create_meta_models_table', 1),
(180, '2025_09_22_081850_add_company_id_column_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifier_items`
--

CREATE TABLE `notifier_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifier_users`
--

CREATE TABLE `notifier_users` (
  `notifier_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `receive_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `featured_image` varchar(200) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `publish_status` tinyint(4) NOT NULL DEFAULT 1,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `label`, `parent_id`, `title`, `slug`, `body`, `excerpt`, `featured_image`, `template`, `publish_status`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'home page', 0, 'صفحه نخست', 'home', NULL, 'ولین و جامع‌ترین پایگاه نرم‌افزارهای سازمانی مبتنی بر سیستم‌ساز، برای ارتقای کارایی، ساده‌سازی فرایندها و رشد هوشمند سازمان‌ها', '/storage/uploads/pages/laratek-featured_image.jpg', NULL, 1, NULL, '2025-09-14 20:26:19', '2025-09-14 20:26:19', NULL),
(2, 'blog index', 0, 'لاگ', 'blog', NULL, NULL, '/storage/uploads/pages/blog-featured_image.jpg', NULL, 1, NULL, '2025-09-14 20:26:19', '2025-09-14 20:26:19', NULL),
(3, 'products index', 0, 'محصولات', 'products', NULL, NULL, '/storage/uploads/pages/services-featured_image.jpg', NULL, 1, NULL, '2025-09-14 20:26:19', '2025-09-14 20:26:19', NULL),
(9, 'search page', 0, 'جستجو', 'search', NULL, NULL, '/storage/uploads/pages/team-featured_image.jpg', NULL, 1, NULL, '2025-09-14 20:26:19', '2025-09-14 20:26:19', NULL),
(10, NULL, 0, 'تماس با ما', 'contact', NULL, NULL, '/storage/uploads/pages/contact-featured_image.jpg', 'contact', 1, NULL, '2025-09-14 20:26:19', '2025-09-14 20:26:19', NULL),
(11, NULL, 0, 'درباره برسا استور', 'about', '<section id=\"about-barsa\">\r\n<h2>درباره برسا نوین‌رای</h2>\r\n<p>\r\n        شرکت <strong>برسا نوین‌رای</strong> در سال ۱۳۸۴ با تمرکز بر توسعه راهکارهای اداری و سازمانی تأسیس شد. \r\n        بنیان‌گذاران این شرکت، از تحلیل‌گران، مدیران پروژه و برنامه‌نویسان ارشد با تجربه در بزرگ‌ترین شرکت‌های نرم‌افزاری کشور هستند، \r\n        که با تلفیق تخصص و تجربه خود، پلتفرم <strong>سیستم‌ساز برسا</strong> را طراحی و ارائه کردند.\r\n    </p>\r\n    <p>\r\n        پلتفرم سیستم‌ساز برسا با قابلیت توسعه نرم‌افزارهای سازمانی با حداقل کدنویسی (Low-code) این امکان را به سازمان‌ها، شرکت‌ها و توسعه‌دهندگان می‌دهد \r\n        که سامانه‌های اختصاصی و متناسب با نیاز خود را طراحی و پیاده‌سازی کنند. طی سال‌ها، صدها پروژه در حوزه‌های مختلف مانند مدیریت فرایند، منابع انسانی، مالی، لجستیک و دولت الکترونیک با استفاده از این پلتفرم پیاده‌سازی شده‌اند.\r\n    </p>\r\n</section>\r\n\r\n<section id=\"about-new-site\">\r\n    <h2>معرفی وب‌سایت محصولات ساخته‌شده با برسا</h2>\r\n    <p>\r\n        با توجه به تنوع و گستردگی نرم‌افزارهای توسعه یافته، این وب‌سایت جدید راه‌اندازی شده است. \r\n        هدف آن ایجاد فضایی رسمی و متمرکز برای معرفی نرم‌افزارهای ساخته‌شده با سیستم‌ساز برسا است، \r\n        به طوری که شرکت‌ها و افراد توسعه‌دهنده بتوانند محصولات خود را معرفی کرده، دستاوردهایشان را به نمایش بگذارند و با دیگران به اشتراک بگذارند.\r\n    </p>\r\n    <p>\r\n        این بستر فرصتی برای نمایش حرفه‌ای محصولات، ایجاد شبکه ارتباطی میان تولیدکنندگان و کاربران بالقوه، و الهام‌گیری برای توسعه پروژه‌های جدید فراهم می‌آورد. \r\n        ثبت محصول در این سایت، امکان دیده‌شدن، تقویت اعتبار و ایجاد فرصت‌های همکاری جدید را برای توسعه‌دهندگان فراهم می‌کند. \r\n        این سایت، ویترین محصولات هوشمند و نوآورانه ساخته‌شده با سیستم‌ساز برسا است و بستری برای تعامل حرفه‌ای در اکوسیستم نرم‌افزاری کشور ارائه می‌دهد.\r\n    </p>\r\n    <p>\r\n        از تمامی شرکت‌ها و افرادی که با استفاده از سیستم‌ساز برسا نرم‌افزاری تولید کرده‌اند، دعوت می‌شود جهت معرفی محصول خود در این وب‌سایت اقدام نمایند.\r\n    </p>\r\n</section>', NULL, '/storage/uploads/pages/about-featured_image.jpg', 'about', 1, NULL, '2025-09-14 20:26:19', '2025-09-27 06:49:37', NULL),
(12, NULL, 0, 'سوالات شما', 'faq', NULL, NULL, '/storage/uploads/pages/about-featured_image.jpg', 'about', 1, NULL, '2025-09-14 20:26:19', '2025-09-14 20:26:19', NULL);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(20) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`features`)),
  `features_soon` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`features_soon`)),
  `requirements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`requirements`)),
  `catalog` varchar(255) DEFAULT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT 0,
  `recommend_type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `company_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `featured_image`, `images`, `features`, `features_soon`, `requirements`, `catalog`, `publish`, `recommend_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'نرم‌افزار ERP', '1758443215-jn0', 'سیستم یکپارچه برای مدیریت و خودکارسازی فرآیندهای کلیدی سازمان.', 'ERP یا Enterprise Resource Planning ابزاری استراتژیک است که تمام بخش‌های یک سازمان (منابع انسانی، مالی، تدارکات، تولید، فروش و ...) را در یک بستر یکپارچه گرد هم می‌آورد. این نرم‌افزار با حذف داده‌های جزیره‌ای و اتصال فرآیندها، باعث افزایش بهره‌وری، کاهش هزینه‌ها و تصمیم‌گیری دقیق‌تر می‌شود.', '/storage/uploads/products/factory/erp-icon.jpg', NULL, '[\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u06cc\\u06a9\\u067e\\u0627\\u0631\\u0686\\u0647 \\u0641\\u0631\\u0622\\u06cc\\u0646\\u062f\\u0647\\u0627\\u06cc \\u0633\\u0627\\u0632\\u0645\\u0627\\u0646\\u06cc\",\"\\u0645\\u0627\\u0698\\u0648\\u0644\\u200c\\u0647\\u0627\\u06cc \\u0642\\u0627\\u0628\\u0644 \\u0633\\u0641\\u0627\\u0631\\u0634\\u06cc\\u200c\\u0633\\u0627\\u0632\\u06cc\",\"\\u062f\\u0627\\u0634\\u0628\\u0648\\u0631\\u062f \\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a\\u06cc \\u0648 \\u06af\\u0632\\u0627\\u0631\\u0634\\u200c\\u0647\\u0627\\u06cc \\u0644\\u062d\\u0638\\u0647\\u200c\\u0627\\u06cc\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0648 \\u0632\\u0646\\u062c\\u06cc\\u0631\\u0647 \\u062a\\u0623\\u0645\\u06cc\\u0646\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u0645\\u0646\\u0627\\u0628\\u0639 \\u0627\\u0646\\u0633\\u0627\\u0646\\u06cc \\u0648 \\u062d\\u0642\\u0648\\u0642 \\u0648 \\u062f\\u0633\\u062a\\u0645\\u0632\\u062f\",\"\\u062d\\u0633\\u0627\\u0628\\u062f\\u0627\\u0631\\u06cc \\u0648 \\u0645\\u0627\\u0644\\u06cc \\u06cc\\u06a9\\u067e\\u0627\\u0631\\u0686\\u0647\",\"\\u067e\\u0634\\u062a\\u06cc\\u0628\\u0627\\u0646\\u06cc \\u0686\\u0646\\u062f \\u0632\\u0628\\u0627\\u0646\\u0647 \\u0648 \\u0686\\u0646\\u062f \\u0627\\u0631\\u0632\\u06cc\",\"\\u0642\\u0627\\u0628\\u0644\\u06cc\\u062a \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0647 \\u0633\\u0627\\u06cc\\u0631 \\u0633\\u06cc\\u0633\\u062a\\u0645\\u200c\\u0647\\u0627 (API Integration)\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u067e\\u0631\\u0648\\u0698\\u0647\\u200c\\u0647\\u0627 \\u0648 \\u0628\\u0631\\u0646\\u0627\\u0645\\u0647\\u200c\\u0631\\u06cc\\u0632\\u06cc \\u0645\\u0646\\u0627\\u0628\\u0639\",\"\\u0627\\u0645\\u0646\\u06cc\\u062a \\u0628\\u0627\\u0644\\u0627 \\u0648 \\u06a9\\u0646\\u062a\\u0631\\u0644 \\u062f\\u0633\\u062a\\u0631\\u0633\\u06cc\"]', '[\"\\u0647\\u0648\\u0634 \\u0645\\u0635\\u0646\\u0648\\u0639\\u06cc \\u0628\\u0631\\u0627\\u06cc \\u067e\\u06cc\\u0634\\u200c\\u0628\\u06cc\\u0646\\u06cc \\u062a\\u0642\\u0627\\u0636\\u0627 (Forecasting)\",\"\\u0627\\u062a\\u0648\\u0645\\u0627\\u0633\\u06cc\\u0648\\u0646 \\u0647\\u0648\\u0634\\u0645\\u0646\\u062f \\u0632\\u0646\\u062c\\u06cc\\u0631\\u0647 \\u062a\\u0623\\u0645\\u06cc\\u0646 (Smart Supply Chain)\",\"\\u06cc\\u06a9\\u067e\\u0627\\u0631\\u0686\\u06af\\u06cc \\u0628\\u0627 \\u0627\\u06cc\\u0646\\u062a\\u0631\\u0646\\u062a \\u0627\\u0634\\u06cc\\u0627 (IoT) \\u0628\\u0631\\u0627\\u06cc \\u06a9\\u0646\\u062a\\u0631\\u0644 \\u0644\\u062d\\u0638\\u0647\\u200c\\u0627\\u06cc \\u062a\\u0648\\u0644\\u06cc\\u062f \\u0648 \\u0627\\u0646\\u0628\\u0627\\u0631\",\"\\u062a\\u062d\\u0644\\u06cc\\u0644 \\u0628\\u0644\\u0627\\u062f\\u0631\\u0646\\u06af (Real-Time Analytics) \\u0628\\u0631\\u0627\\u06cc \\u062a\\u0635\\u0645\\u06cc\\u0645\\u200c\\u06af\\u06cc\\u0631\\u06cc \\u0633\\u0631\\u06cc\\u0639\",\"\\u0627\\u062a\\u0648\\u0645\\u0627\\u0633\\u06cc\\u0648\\u0646 \\u0631\\u0628\\u0627\\u062a\\u06cc\\u06a9 \\u0641\\u0631\\u0622\\u06cc\\u0646\\u062f\\u0647\\u0627 (RPA) \\u0628\\u0631\\u0627\\u06cc \\u062d\\u0630\\u0641 \\u06a9\\u0627\\u0631\\u0647\\u0627\\u06cc \\u062a\\u06a9\\u0631\\u0627\\u0631\\u06cc\",\"\\u067e\\u0634\\u062a\\u06cc\\u0628\\u0627\\u0646\\u06cc \\u06a9\\u0627\\u0645\\u0644 \\u0686\\u0646\\u062f\\u0632\\u0628\\u0627\\u0646\\u0647 \\u0648 \\u0686\\u0646\\u062f\\u0648\\u0627\\u062d\\u062f \\u067e\\u0648\\u0644\\u06cc\"]', '[\"\\u067e\\u0627\\u06cc\\u06af\\u0627\\u0647 \\u062f\\u0627\\u062f\\u0647: MySQL \\u06cc\\u0627 MariaDB\",\"\\u0634\\u062a\\u06cc\\u0628\\u0627\\u0646\\u06cc \\u0627\\u0632 WebSocket \\u0628\\u0631\\u0627\\u06cc \\u0627\\u0631\\u062a\\u0628\\u0627\\u0637 \\u0644\\u062d\\u0638\\u0647\\u200c\\u0627\\u06cc \\u0628\\u0627 \\u0645\\u0634\\u062a\\u0631\\u06cc\\u0627\\u0646\",\"DNS \\u0648 \\u062f\\u0627\\u0645\\u0646\\u0647 \\u0645\\u0639\\u062a\\u0628\\u0631 \\u0628\\u0631\\u0627\\u06cc \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0627 \\u0648\\u0628\\u200c\\u0633\\u0627\\u06cc\\u062a\\/\\u0627\\u067e\\u0644\\u06cc\\u06a9\\u06cc\\u0634\\u0646\"]', 'https://barsasoft.com/uploads/images/catalogues/e-goverment-cat.pdf', 1, 3, '2025-09-20 18:26:55', '2025-09-23 03:59:33', NULL),
(2, 1, 1, 'نرم‌افزار CRM', '1758443326-fgz', 'ابزاری برای مدیریت مشتریان، فروش و بازاریابی جهت افزایش رضایت و وفاداری.', 'CRM یا Customer Relationship Management نرم‌افزاری است که سازمان را قادر می‌سازد ارتباطی پایدار و هوشمندانه با مشتریان برقرار کند. این سیستم تاریخچه تعاملات مشتریان را ذخیره کرده، فرآیندهای بازاریابی و فروش را خودکار می‌کند و با تحلیل داده‌ها به افزایش فروش و وفاداری مشتریان کمک می‌کند.', '/storage/uploads/products/factory/crm-icon.jpg', NULL, '[\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u067e\\u0631\\u0648\\u0641\\u0627\\u06cc\\u0644 \\u0645\\u0634\\u062a\\u0631\\u06cc\\u0627\\u0646\",\"\\u062b\\u0628\\u062a \\u062a\\u0627\\u0631\\u06cc\\u062e\\u0686\\u0647 \\u062a\\u0645\\u0627\\u0633\\u200c\\u0647\\u0627 \\u0648 \\u062a\\u0639\\u0627\\u0645\\u0644\\u0627\\u062a\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u0641\\u0631\\u0635\\u062a\\u200c\\u0647\\u0627\\u06cc \\u0641\\u0631\\u0648\\u0634\",\"\\u06a9\\u0645\\u067e\\u06cc\\u0646\\u200c\\u0647\\u0627\\u06cc \\u0628\\u0627\\u0632\\u0627\\u0631\\u06cc\\u0627\\u0628\\u06cc \\u062e\\u0648\\u062f\\u06a9\\u0627\\u0631\",\"\\u06cc\\u06a9\\u067e\\u0627\\u0631\\u0686\\u06af\\u06cc \\u0628\\u0627 \\u0627\\u06cc\\u0645\\u06cc\\u0644 \\u0648 \\u0634\\u0628\\u06a9\\u0647\\u200c\\u0647\\u0627\\u06cc \\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u06cc\",\"\\u062a\\u062d\\u0644\\u06cc\\u0644 \\u0631\\u0641\\u062a\\u0627\\u0631 \\u0645\\u0634\\u062a\\u0631\\u06cc\\u0627\\u0646\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u067e\\u0634\\u062a\\u06cc\\u0628\\u0627\\u0646\\u06cc \\u0648 \\u062a\\u06cc\\u06a9\\u062a\\u06cc\\u0646\\u06af\",\"\\u06af\\u0632\\u0627\\u0631\\u0634\\u200c\\u06af\\u06cc\\u0631\\u06cc \\u067e\\u06cc\\u0634\\u0631\\u0641\\u062a\\u0647 \\u0648 \\u062f\\u0627\\u0634\\u0628\\u0648\\u0631\\u062f \\u0641\\u0631\\u0648\\u0634\",\"\\u0645\\u0627\\u0698\\u0648\\u0644 \\u0648\\u0641\\u0627\\u062f\\u0627\\u0631\\u06cc \\u0648 \\u0627\\u0645\\u062a\\u06cc\\u0627\\u0632\\u062f\\u0647\\u06cc \\u0645\\u0634\\u062a\\u0631\\u06cc\",\"\\u0627\\u067e\\u0644\\u06cc\\u06a9\\u06cc\\u0634\\u0646 \\u0645\\u0648\\u0628\\u0627\\u06cc\\u0644 \\u0628\\u0631\\u0627\\u06cc \\u062a\\u06cc\\u0645 \\u0641\\u0631\\u0648\\u0634\"]', '[\"\\u0686\\u062a\\u200c\\u0628\\u0627\\u062a \\u0648 \\u067e\\u0634\\u062a\\u06cc\\u0628\\u0627\\u0646\\u06cc \\u062e\\u0648\\u062f\\u06a9\\u0627\\u0631 \\u0628\\u0627 \\u0647\\u0648\\u0634 \\u0645\\u0635\\u0646\\u0648\\u0639\\u06cc\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u0633\\u0641\\u0631 \\u0645\\u0634\\u062a\\u0631\\u06cc (Customer Journey Mapping)\",\"\\u0627\\u062a\\u0648\\u0645\\u0627\\u0633\\u06cc\\u0648\\u0646 \\u0628\\u0627\\u0632\\u0627\\u0631\\u06cc\\u0627\\u0628\\u06cc \\u0647\\u0645\\u0647\\u200c\\u06a9\\u0627\\u0646\\u0627\\u0644\\u0647 (Omnichannel Marketing Automation)\"]', '[\"\\u0631\\u0645: \\u062d\\u062f\\u0627\\u0642\\u0644 8GB\",\"CPU: \\u062d\\u062f\\u0627\\u0642\\u0644 4 \\u0647\\u0633\\u062a\\u0647\",\"\\u067e\\u0627\\u06cc\\u06af\\u0627\\u0647 \\u062f\\u0627\\u062f\\u0647: PostgreSQL\"]', 'https://barsasoft.com/uploads/images/catalogues/Catalog-SystemSaz.pdf', 1, 2, '2025-09-20 18:28:46', '2025-09-23 01:06:31', NULL),
(3, 1, 1, 'نرم‌افزار مکاتبات اداری', '1758443551-blm', 'سامانه‌ای برای مدیریت هوشمند نامه‌ها، بخشنامه‌ها و مکاتبات درون‌سازمانی.', 'اتوماسیون اداری یا نرم‌افزار مکاتبات، سیستم هوشمندی است که فرآیند ثبت، ارجاع، پیگیری و بایگانی نامه‌ها و مستندات سازمانی را ساده و سریع می‌کند. این نرم‌افزار به حذف کاغذ، افزایش شفافیت و تسهیل ارتباطات داخلی و خارجی کمک می‌کند و پیگیری مکاتبات را بسیار آسان می‌سازد.\r\n\r\nاتوماسیون اداری یا نرم‌افزار مکاتبات، سیستم هوشمندی است که فرآیند ثبت، ارجاع، پیگیری و بایگانی نامه‌ها و مستندات سازمانی را ساده و سریع می‌کند. این نرم‌افزار به حذف کاغذ، افزایش شفافیت و تسهیل ارتباطات داخلی و خارجی کمک می‌کند و پیگیری مکاتبات را بسیار آسان می‌سازد.', '/storage/uploads/products/factory/automation-icon.jpg', NULL, '[\"\\u062b\\u0628\\u062a \\u0648 \\u0634\\u0645\\u0627\\u0631\\u0647\\u200c\\u06af\\u0630\\u0627\\u0631\\u06cc \\u062e\\u0648\\u062f\\u06a9\\u0627\\u0631 \\u0646\\u0627\\u0645\\u0647\\u200c\\u0647\\u0627\",\"\\u0627\\u0631\\u062c\\u0627\\u0639 \\u0647\\u0648\\u0634\\u0645\\u0646\\u062f \\u0628\\u0647 \\u06a9\\u0627\\u0631\\u0628\\u0631\\u0627\\u0646 \\u06cc\\u0627 \\u0648\\u0627\\u062d\\u062f\\u0647\\u0627\",\"\\u0627\\u0645\\u06a9\\u0627\\u0646 \\u067e\\u06cc\\u06af\\u06cc\\u0631\\u06cc \\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u06a9\\u0627\\u062a\\u0628\\u0627\\u062a\",\"\\u0628\\u0627\\u06cc\\u06af\\u0627\\u0646\\u06cc \\u062f\\u06cc\\u062c\\u06cc\\u062a\\u0627\\u0644 \\u0627\\u0633\\u0646\\u0627\\u062f\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u06a9\\u0627\\u0631\\u062a\\u0627\\u0628\\u0644 \\u0648 \\u0648\\u0638\\u0627\\u06cc\\u0641\",\"\\u0627\\u0645\\u06a9\\u0627\\u0646 \\u0627\\u0645\\u0636\\u0627\\u06cc \\u062f\\u06cc\\u062c\\u06cc\\u062a\\u0627\\u0644\",\"\\u0633\\u0637\\u0648\\u062d \\u062f\\u0633\\u062a\\u0631\\u0633\\u06cc \\u0648 \\u0645\\u062d\\u0631\\u0645\\u0627\\u0646\\u06af\\u06cc\",\"\\u06af\\u0632\\u0627\\u0631\\u0634\\u200c\\u06af\\u06cc\\u0631\\u06cc \\u0648 \\u0622\\u0645\\u0627\\u0631\\u06af\\u06cc\\u0631\\u06cc \\u067e\\u06cc\\u0634\\u0631\\u0641\\u062a\\u0647\",\"\\u062c\\u0633\\u062a\\u062c\\u0648\\u06cc \\u0633\\u0631\\u06cc\\u0639 \\u062f\\u0631 \\u0645\\u06a9\\u0627\\u062a\\u0628\\u0627\\u062a\",\"\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0647 \\u0633\\u0627\\u0645\\u0627\\u0646\\u0647\\u200c\\u0647\\u0627\\u06cc \\u062f\\u06cc\\u06af\\u0631 (ERP\\u060c \\u0645\\u0627\\u0644\\u06cc \\u0648 \\u2026)\"]', NULL, NULL, NULL, 1, 1, '2025-09-20 18:32:31', '2025-09-21 02:27:54', NULL),
(4, 1, 1, '4. نرم‌افزار مالی و حسابداری', '1758443620-hnc', 'راهکار جامع برای مدیریت امور مالی، حسابداری و گزارش‌های اقتصادی سازمان.', 'نرم‌افزار مالی و حسابداری، ابزاری برای ثبت و مدیریت تراکنش‌ها، بودجه‌بندی، محاسبه سود و زیان و ارائه گزارش‌های مالی است. این سیستم باعث می‌شود مدیران بتوانند با دقت بالاتر، وضعیت مالی سازمان را رصد کرده و تصمیم‌های اقتصادی درست‌تری بگیرند.', '/storage/uploads/products/factory/finance-icon.jpg', NULL, '[\"\\u062b\\u0628\\u062a \\u0633\\u0646\\u062f \\u062d\\u0633\\u0627\\u0628\\u062f\\u0627\\u0631\\u06cc \\u062e\\u0648\\u062f\\u06a9\\u0627\\u0631 \\u0648 \\u062f\\u0633\\u062a\\u06cc\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u062d\\u0633\\u0627\\u0628\\u200c\\u0647\\u0627\\u06cc \\u0628\\u0627\\u0646\\u06a9\\u06cc \\u0648 \\u0635\\u0646\\u062f\\u0648\\u0642\",\"\\u062b\\u0628\\u062a \\u0648 \\u06a9\\u0646\\u062a\\u0631\\u0644 \\u0647\\u0632\\u06cc\\u0646\\u0647\\u200c\\u0647\\u0627 \\u0648 \\u062f\\u0631\\u0622\\u0645\\u062f\\u0647\\u0627\",\"\\u062a\\u0631\\u0627\\u0632\\u0646\\u0627\\u0645\\u0647 \\u0648 \\u06af\\u0632\\u0627\\u0631\\u0634\\u200c\\u0647\\u0627\\u06cc \\u0645\\u0627\\u0644\\u06cc \\u0627\\u0633\\u062a\\u0627\\u0646\\u062f\\u0627\\u0631\\u062f\",\"\\u0645\\u062d\\u0627\\u0633\\u0628\\u0647 \\u0645\\u0627\\u0644\\u06cc\\u0627\\u062a \\u0648 \\u0627\\u0631\\u0632\\u0634 \\u0627\\u0641\\u0632\\u0648\\u062f\\u0647\",\"\\u0628\\u0648\\u062f\\u062c\\u0647\\u200c\\u0628\\u0646\\u062f\\u06cc \\u0648 \\u067e\\u06cc\\u0634\\u200c\\u0628\\u06cc\\u0646\\u06cc \\u0645\\u0627\\u0644\\u06cc\",\"\\u06cc\\u06a9\\u067e\\u0627\\u0631\\u0686\\u06af\\u06cc \\u0628\\u0627 \\u0633\\u06cc\\u0633\\u062a\\u0645 \\u062d\\u0642\\u0648\\u0642 \\u0648 \\u062f\\u0633\\u062a\\u0645\\u0632\\u062f\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u0686\\u06a9\\u200c\\u0647\\u0627 \\u0648 \\u0627\\u0633\\u0646\\u0627\\u062f \\u062f\\u0631\\u06cc\\u0627\\u0641\\u062a\\u0646\\u06cc\\/\\u067e\\u0631\\u062f\\u0627\\u062e\\u062a\\u0646\\u06cc\",\"\\u0686\\u0646\\u062f \\u0627\\u0631\\u0632\\u06cc \\u0648 \\u0686\\u0646\\u062f \\u0634\\u0631\\u06a9\\u062a\\u06cc\",\"\\u06af\\u0632\\u0627\\u0631\\u0634\\u200c\\u06af\\u06cc\\u0631\\u06cc \\u0644\\u062d\\u0638\\u0647\\u200c\\u0627\\u06cc \\u0648 \\u062a\\u062d\\u0644\\u06cc\\u0644\\u06cc\"]', NULL, NULL, NULL, 1, 1, '2025-09-20 18:33:40', '2025-09-20 18:33:46', NULL),
(5, 1, 1, 'نرم‌افزار منابع انسانی (HRM)', '1758443698-8jx', 'ابزاری برای مدیریت کارکنان، حضور و غیاب، حقوق و دستمزد و ارزیابی عملکرد.', 'نرم‌افزار منابع انسانی یا HRM به سازمان کمک می‌کند فرآیندهای مرتبط با کارکنان (از جذب و استخدام تا آموزش و ارزیابی عملکرد) را به صورت یکپارچه مدیریت کند. این سیستم باعث بهبود تجربه کارکنان، کاهش خطاهای انسانی و افزایش بهره‌وری می‌شود.', '/storage/uploads/products/factory/hr-icon.jpg', NULL, '[\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u067e\\u0631\\u0648\\u0646\\u062f\\u0647 \\u067e\\u0631\\u0633\\u0646\\u0644\\u06cc\",\"\\u062b\\u0628\\u062a \\u0648 \\u06a9\\u0646\\u062a\\u0631\\u0644 \\u062d\\u0636\\u0648\\u0631 \\u0648 \\u063a\\u06cc\\u0627\\u0628\",\"\\u0645\\u062d\\u0627\\u0633\\u0628\\u0647 \\u0648 \\u067e\\u0631\\u062f\\u0627\\u062e\\u062a \\u062d\\u0642\\u0648\\u0642 \\u0648 \\u062f\\u0633\\u062a\\u0645\\u0632\\u062f\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u0645\\u0631\\u062e\\u0635\\u06cc\\u200c\\u0647\\u0627 \\u0648 \\u0645\\u0623\\u0645\\u0648\\u0631\\u06cc\\u062a\\u200c\\u0647\\u0627\",\"\\u0627\\u0631\\u0632\\u06cc\\u0627\\u0628\\u06cc \\u0639\\u0645\\u0644\\u06a9\\u0631\\u062f \\u06a9\\u0627\\u0631\\u06a9\\u0646\\u0627\\u0646\",\"\\u0645\\u0627\\u0698\\u0648\\u0644 \\u062c\\u0630\\u0628 \\u0648 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u0622\\u0645\\u0648\\u0632\\u0634 \\u0648 \\u062a\\u0648\\u0633\\u0639\\u0647 \\u06a9\\u0627\\u0631\\u06a9\\u0646\\u0627\\u0646\",\"\\u0645\\u062f\\u06cc\\u0631\\u06cc\\u062a \\u0622\\u0645\\u0648\\u0632\\u0634 \\u0648 \\u062a\\u0648\\u0633\\u0639\\u0647 \\u06a9\\u0627\\u0631\\u06a9\\u0646\\u0627\\u0646\",\"\\u06cc\\u06a9\\u067e\\u0627\\u0631\\u0686\\u06af\\u06cc \\u0628\\u0627 \\u0633\\u06cc\\u0633\\u062a\\u0645 \\u0645\\u0627\\u0644\\u06cc \\u0648 ERP\",\"\\u0627\\u067e\\u0644\\u06cc\\u06a9\\u06cc\\u0634\\u0646 \\u06a9\\u0627\\u0631\\u0645\\u0646\\u062f\\u0627\\u0646 \\u0628\\u0631\\u0627\\u06cc \\u062f\\u0631\\u062e\\u0648\\u0627\\u0633\\u062a\\u200c\\u0647\\u0627\"]', NULL, NULL, NULL, 1, 1, '2025-09-20 18:34:58', '2025-09-20 18:35:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_properties`
--

CREATE TABLE `products_properties` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_properties`
--

INSERT INTO `products_properties` (`product_id`, `property_id`) VALUES
(3, 1),
(1, 4),
(4, 4),
(1, 5),
(4, 5),
(2, 7),
(2, 8),
(5, 9),
(2, 11),
(3, 11),
(4, 11),
(1, 12),
(5, 12),
(1, 16),
(4, 19),
(1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `product_properties`
--

CREATE TABLE `product_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_properties`
--

INSERT INTO `product_properties` (`id`, `group_id`, `title`, `icon`, `created_at`, `updated_at`) VALUES
(1, 1, 'انبار و تدارکات', NULL, '2025-09-19 16:14:38', '2025-09-19 16:14:38'),
(2, 1, 'پخش', NULL, '2025-09-19 16:14:43', '2025-09-19 16:14:43'),
(3, 1, 'حسابداری مدیریت', NULL, '2025-09-19 16:14:46', '2025-09-19 16:14:46'),
(4, 1, 'خرده فروشی', NULL, '2025-09-19 16:14:50', '2025-09-19 16:14:50'),
(5, 1, 'سرمایه انسانی', NULL, '2025-09-19 16:14:52', '2025-09-19 16:14:52'),
(6, 1, 'عمومی و زیرساخت', NULL, '2025-09-19 16:14:56', '2025-09-19 16:14:56'),
(7, 1, 'فروش و خدمات', NULL, '2025-09-19 16:14:58', '2025-09-19 16:14:58'),
(8, 1, 'مالی', NULL, '2025-09-19 16:15:01', '2025-09-19 16:15:01'),
(9, 1, 'مدیریت کارخانه', NULL, '2025-09-19 16:15:04', '2025-09-19 16:15:04'),
(10, 2, 'آموزش', NULL, '2025-09-19 16:15:28', '2025-09-19 16:15:28'),
(11, 2, 'استخراج نفت و گاز', NULL, '2025-09-19 16:15:31', '2025-09-19 16:15:31'),
(12, 2, 'بانک‌ها، موسسات اعتباری و لیزینگ', NULL, '2025-09-19 16:15:35', '2025-09-19 16:15:35'),
(13, 2, 'پالایشگاه', NULL, '2025-09-19 16:15:38', '2025-09-19 16:15:38'),
(14, 2, 'پیمانکاری', NULL, '2025-09-19 16:15:43', '2025-09-19 16:15:43'),
(15, 2, 'تجهیزات پزشکی و دندانپزشکی', NULL, '2025-09-19 16:15:46', '2025-09-19 16:15:46'),
(16, 2, 'تجهیزات صنعتی', NULL, '2025-09-19 16:15:49', '2025-09-19 16:15:49'),
(17, 2, 'تولید پوشاک، کفش و چرم', NULL, '2025-09-19 16:15:52', '2025-09-19 16:15:52'),
(18, 2, 'تولید چوب، فرآورده‌های چوبی و مبلمان', NULL, '2025-09-19 16:15:54', '2025-09-19 16:15:54'),
(19, 2, 'تولید خودرو، بدنه و قطعه سازی', NULL, '2025-09-19 16:16:00', '2025-09-19 16:16:00'),
(20, 2, 'تولید مواد شیمیایی، پتروشیمی و پالایشی', NULL, '2025-09-19 16:16:03', '2025-09-19 16:16:03'),
(21, 2, 'تولید و ریخته‌گری آهن و فولاد پایه', NULL, '2025-09-19 16:16:06', '2025-09-19 16:16:06'),
(22, 2, 'خدمات مالی', NULL, '2025-09-19 16:16:08', '2025-09-19 16:16:08'),
(23, 2, 'خرده فروشی', NULL, '2025-09-19 16:16:11', '2025-09-19 16:16:11'),
(24, 2, 'خودرو، تجهیزات حمل و نقل و قطعات وابسته', NULL, '2025-09-19 16:16:14', '2025-09-19 16:16:14'),
(25, 2, 'دارو و فراورده های دارویی', NULL, '2025-09-19 16:16:17', '2025-09-19 16:16:17'),
(26, 2, 'دامپروری، پرورش و فراوری آبزی و طیور', NULL, '2025-09-19 16:16:19', '2025-09-19 16:16:19'),
(27, 2, 'رستوران و تهیه غذا', NULL, '2025-09-19 16:16:24', '2025-09-19 16:16:24'),
(28, 2, 'سازمان ها و ادارات استانی و شهری', NULL, '2025-09-19 16:16:26', '2025-09-19 16:16:26'),
(29, 2, 'گردشگری و اقامتی', NULL, '2025-09-19 16:16:29', '2025-09-19 16:16:29'),
(30, 2, 'گردشگری و اقامتی', NULL, '2025-09-19 16:16:32', '2025-09-19 16:16:32'),
(31, 2, 'لوازم خانگی', NULL, '2025-09-19 16:16:35', '2025-09-19 16:16:35'),
(32, 2, 'مواد غذایی', NULL, '2025-09-19 16:16:38', '2025-09-19 16:16:38'),
(33, 2, 'مواد معدنی غیر فلزی- سیمان، گچ و آهک', NULL, '2025-09-19 16:16:40', '2025-09-19 16:16:40'),
(34, 2, 'نساجی', NULL, '2025-09-19 16:16:43', '2025-09-19 16:16:43'),
(35, 2, 'هلدینگ و تامین سرمایه', NULL, '2025-09-19 16:16:47', '2025-09-19 16:16:47'),
(36, 2, 'کاشی و سرامیک و سنگ', NULL, '2025-09-19 16:16:50', '2025-09-19 16:16:50'),
(37, 2, 'کاغذ، کارتن و بسته بندی', NULL, '2025-09-19 16:16:53', '2025-09-19 16:16:53'),
(38, 2, 'کشاورزی و جنگلداری', NULL, '2025-09-19 16:16:56', '2025-09-19 16:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_property_groups`
--

CREATE TABLE `product_property_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_property_groups`
--

INSERT INTO `product_property_groups` (`id`, `title`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'حوزه', NULL, '2025-09-19 16:13:58', '2025-09-19 16:13:58'),
(2, 'صنایع', NULL, '2025-09-19 16:14:05', '2025-09-19 16:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_versions`
--

CREATE TABLE `product_versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `release_type` tinyint(4) NOT NULL,
  `changes` text DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_versions`
--

INSERT INTO `product_versions` (`id`, `product_id`, `title`, `release_type`, `changes`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'v1', 1, NULL, '2025-09-05 17:00:00', '2025-09-23 03:23:09', '2025-09-23 03:23:09'),
(2, 1, 'v1.1', 2, NULL, '2025-09-04 17:00:00', '2025-09-23 03:24:55', '2025-09-23 03:24:55'),
(3, 1, 'v1.2', 1, NULL, '2025-09-02 17:00:00', '2025-09-23 03:26:14', '2025-09-23 03:26:14'),
(4, 1, 'v1.2', 1, NULL, '2025-09-12 17:00:00', '2025-09-23 03:27:18', '2025-09-23 03:27:18'),
(5, 1, 'v2.1', 1, NULL, '2025-09-11 17:00:00', '2025-09-23 03:29:17', '2025-09-23 03:29:17'),
(6, 1, 'v2.2', 1, NULL, '2025-09-10 17:00:00', '2025-09-23 03:29:44', '2025-09-23 03:29:44'),
(7, 1, 'v2.3-1', 1, NULL, '2025-09-09 17:00:00', '2025-09-23 03:30:28', '2025-09-23 03:30:40'),
(8, 1, 'v2.5', 2, NULL, '2025-09-21 17:00:00', '2025-09-23 03:30:52', '2025-09-23 03:38:27'),
(9, 1, '2.6', 1, NULL, '2025-09-24 17:00:00', '2025-09-23 03:39:49', '2025-09-23 03:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire_forms`
--

CREATE TABLE `questionnaire_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `has_file` tinyint(1) NOT NULL DEFAULT 0,
  `response_client` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionnaire_forms`
--

INSERT INTO `questionnaire_forms` (`id`, `title`, `body`, `template`, `has_file`, `response_client`, `active`, `created_at`, `updated_at`) VALUES
(1, 'contact', NULL, 'contact', 0, 0, 1, '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(2, 'demo', NULL, 'demo', 0, 0, 1, '2025-09-23 22:46:45', '2025-09-23 22:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire_form_announcements`
--

CREATE TABLE `questionnaire_form_announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `emails` text DEFAULT NULL,
  `phones` text DEFAULT NULL,
  `telegram_ids` varchar(255) DEFAULT NULL,
  `urls` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionnaire_form_announcements`
--

INSERT INTO `questionnaire_form_announcements` (`id`, `form_id`, `emails`, `phones`, `telegram_ids`, `urls`, `created_at`, `updated_at`) VALUES
(1, 2, 'sina.zangiband@gmail.com', NULL, NULL, NULL, '2025-09-23 22:46:45', '2025-09-23 22:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire_form_rules`
--

CREATE TABLE `questionnaire_form_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `rules` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rules`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionnaire_form_rules`
--

INSERT INTO `questionnaire_form_rules` (`id`, `form_id`, `rules`, `created_at`, `updated_at`) VALUES
(1, 1, '[{\"field\":\"name\",\"rules\":\"required|string|max:100\"},{\"field\":\"company\",\"rules\":\"nullable|string|max:100\"},{\"field\":\"phone\",\"rules\":\"required|string|max:15\"},{\"field\":\"email\",\"rules\":\"required|string|email\"},{\"field\":\"message\",\"rules\":\"required|string|max:500\"}]', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(2, 2, '[{\"field\":\"name\",\"rules\":\"required|string\"},{\"field\":\"company\",\"rules\":\"required|string\"},{\"field\":\"email\",\"rules\":\"required|string|email\"},{\"field\":\"phone\",\"rules\":\"required|string|not_in:09190370572,09121353821\"},{\"field\":\"activities\",\"rules\":\"nullable|string\"},{\"field\":\"software\",\"rules\":\"required|array\"},{\"field\":\"software.*\",\"rules\":\"required|string\"},{\"field\":\"fromWhere\",\"rules\":\"nullable|string\"}]', '2025-09-23 22:46:45', '2025-09-23 22:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire_inboxes`
--

CREATE TABLE `questionnaire_inboxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `url` varchar(255) DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`note`)),
  `ip_address` varchar(45) NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restrict_ips`
--

CREATE TABLE `restrict_ips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `type` varchar(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_general`
--

CREATE TABLE `seo_general` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_models`
--

CREATE TABLE `seo_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`keywords`)),
  `conical_url` varchar(255) DEFAULT NULL,
  `indexable` tinyint(4) NOT NULL DEFAULT 1,
  `followable` tinyint(4) NOT NULL DEFAULT 1,
  `seo_type` varchar(255) NOT NULL DEFAULT 'WebPage',
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_models`
--

INSERT INTO `seo_models` (`id`, `model_type`, `model_id`, `title`, `description`, `keywords`, `conical_url`, `indexable`, `followable`, `seo_type`, `schema`, `created_at`, `updated_at`) VALUES
(1, 'Lareon\\Modules\\Page\\App\\Models\\Page', 1, 'Laratek – Graphic Design & Website Development Services', 'Creative logo & QR code design, WordPress sites, and custom CMS solutions by Laratek. Modern digital services for brands that want to stand out', '[\"\"]', NULL, 1, 1, 'webPage', '[]', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(2, 'Lareon\\Modules\\Page\\App\\Models\\Page', 2, 'Blog – Insights on Design & Web Development by Laratek', 'Explore the Laratek blog for articles on design trends, WordPress tips, and custom CMS solutions. Learn, get inspired, and grow your digital presence.', '[\"\"]', 'https://laratek.net//blog', 1, 1, 'webPage', '[]', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(10, 'Lareon\\Modules\\Page\\App\\Models\\Page', 10, 'Contact Us – Get in Touch with Laratek', 'Have a project in mind? Contact Laratek today for graphic design, WordPress websites, and custom CMS solutions. We’re here to help your business grow.', '[\"\"]', 'https://laratek.net//contact', 1, 1, 'webPage', '[]', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(11, 'Lareon\\Modules\\Page\\App\\Models\\Page', 11, 'About Us – Learn More About Laratek', 'laratek is googLaratek is a creative team specializing in graphic design, WordPress, and custom CMS. Learn more about our story, vision, and commitment to clients.', '[\"laravel\", \"laratek\", \"lareon\"]', 'https://laratek.net//about', 1, 1, 'webPage', '[]', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(12, 'Lareon\\Modules\\Page\\App\\Models\\Page', 12, 'consultation', NULL, '[\"\"]', 'https://laratek.net/consultation', 1, 1, 'webPag', '[]', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(22, 'Lareon\\Modules\\Page\\App\\Models\\Page', 5, 'Our Team – Meet the Experts Behind Laratek', 'Discover the Laratek team of skilled designers and developers who bring your ideas to life with expertise in graphics, WordPress, and custom CMS.', '[\"\"]', NULL, 1, 1, 'webPage', '[]', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(23, 'Lareon\\Modules\\Page\\App\\Models\\Page', 4, 'Portfolios – Our Creative Works at Laratek', 'Discover Laratek’s portfolio showcasing graphic design, WordPress, and custom CMS works. Real projects that highlight creativity and innovation.', '[\"\"]', NULL, 1, 1, 'webPage', '[]', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(26, 'Lareon\\Modules\\Product\\App\\Models\\Product', 1, NULL, NULL, '[\"\"]', NULL, 0, 0, 'webPage', '[]', '2025-09-23 00:57:23', '2025-09-23 00:57:23'),
(27, 'Lareon\\Modules\\Product\\App\\Models\\Product', 2, NULL, NULL, '[\"\"]', NULL, 0, 0, 'webPage', '[]', '2025-09-23 01:06:31', '2025-09-23 01:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `seo_site`
--

CREATE TABLE `seo_site` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`value`)),
  `state` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_site`
--

INSERT INTO `seo_site` (`id`, `key`, `value`, `state`, `created_at`, `updated_at`) VALUES
(1, 'website', '{\"title\":\"Laratek\",\"description\":\"Laratek is a creative studio offering logo design, QR codes, web design, WordPress, and custom CMS solutions to help brands stand out online.\",\"currency\":\"EUR\",\"language\":\"en\"}', '1', '2025-09-15 09:51:15', '2025-09-15 09:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `seo_sitemaps`
--

CREATE TABLE `seo_sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(50) NOT NULL DEFAULT 'pages',
  `url` varchar(255) NOT NULL,
  `priority` decimal(3,1) NOT NULL DEFAULT 0.5,
  `changefreq` enum('always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT 'monthly',
  `lastmod` timestamp NULL DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`image`)),
  `video` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`video`)),
  `active` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_sitemaps`
--

INSERT INTO `seo_sitemaps` (`id`, `model_type`, `model_id`, `group`, `url`, `priority`, `changefreq`, `lastmod`, `image`, `video`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Lareon\\Modules\\Page\\App\\Models\\Page', 2, 'pages', 'https://laratek.net/blog', 0.5, 'weekly', '2025-09-14 21:03:42', '[]', NULL, '2025-09-04 00:29:57', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(3, 'Lareon\\Modules\\Page\\App\\Models\\Page', 3, 'pages', 'https://laratek.net/services', 0.6, 'yearly', '2025-09-14 20:55:02', '[]', NULL, '2025-09-04 00:29:57', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(10, 'Lareon\\Modules\\Page\\App\\Models\\Page', 10, 'pages', 'https://laratek.net/contact', 0.7, 'yearly', '2025-09-14 20:09:39', '[]', NULL, '2025-09-04 00:29:57', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(11, 'Lareon\\Modules\\Page\\App\\Models\\Page', 11, 'pages', 'http://app-store.test/about', 0.7, 'yearly', '2025-09-27 06:49:37', '[]', NULL, NULL, '2025-09-14 23:56:19', '2025-09-27 06:49:37'),
(21, 'Lareon\\Modules\\Page\\App\\Models\\Page', 1, 'pages', 'https://laratek.net/home', 0.4, 'yearly', '2025-09-14 19:53:18', '[]', NULL, '2025-09-04 00:29:57', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(23, 'Lareon\\Modules\\Page\\App\\Models\\Page', 4, 'pages', 'https://laratek.net/portfolios', 0.8, 'monthly', '2025-09-14 20:33:13', '[]', NULL, '2025-09-04 00:29:57', '2025-09-14 23:56:19', '2025-09-14 23:56:19'),
(26, 'Lareon\\Modules\\Page\\App\\Models\\Page', 0, 'pages', '/', 0.8, 'yearly', '2025-09-09 21:38:50', NULL, NULL, '2025-09-04 00:29:57', '2025-09-04 00:29:57', '2025-09-04 00:29:57'),
(27, 'Lareon\\Modules\\Product\\App\\Models\\Product', 1, 'products', 'http://app-store.test/products/1758443215-jn0', 0.5, 'yearly', '2025-09-23 03:59:33', '[]', NULL, '2025-09-23 03:59:33', '2025-09-23 00:57:23', '2025-09-23 03:59:33'),
(28, 'Lareon\\Modules\\Product\\App\\Models\\Product', 2, 'products', 'http://app-store.test/products/1758443326-fgz', 0.5, 'yearly', '2025-09-23 01:06:31', '[]', NULL, '2025-09-23 01:06:31', '2025-09-23 01:06:31', '2025-09-23 01:06:31');

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
('5kM1u2Wk0W1XUamcasHFdlLGdJWmgcx5jcZpLvhP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRXd4QkY2eU56RFRKdGRkenJPZWtMVWRkM3VoRlJrWm9ad3hMamJNWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly9hcHAtc3RvcmUudGVzdC90a2FkbWluL2FwcGVhcmFuY2UvbWVudXMvMS9pdGVtcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1759302295);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`value`)),
  `state` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag_models`
--

CREATE TABLE `tag_models` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `phone_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `company_id`) VALUES
(1, 'Sina Zangiband', 'sina.zangiband@gmail.com', '09126037279', '2025-09-24 03:46:03', '2025-09-24 03:46:03', '$2y$12$paveuPB7GrPNU8fHkarEduxPv4u2h8j3qI25xMUEzZl1jC1Sa7fWW', NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(30) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`value`)),
  `state` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `user_id`, `key`, `value`, `state`, `created_at`, `updated_at`) VALUES
(1, 1, 'social', '{\"instagram\":{\"active\":\"1\",\"value\":\"http:\\/\\/instagram.com\\/teksite_\"},\"linkedin\":{\"active\":\"1\",\"value\":\"https:\\/\\/ir.linkedin.com\\/in\\/sina-zangiband-335027257\"},\"whatsapp\":{\"active\":\"1\",\"value\":\"https:\\/\\/wa.me\\/989126037279\"},\"telegram\":{\"active\":\"1\",\"value\":\"https:\\/\\/t.me\\/sina_zangiband\"},\"twitter\":{\"value\":null},\"facebook\":{\"value\":null},\"wikipedia\":{\"value\":null},\"pinterest\":{\"value\":null},\"email\":{\"value\":\"sina.zangiband@gmail.com\"},\"phone\":{\"active\":\"1\",\"value\":\"09126037279\"},\"address\":{\"value\":null},\"github\":{\"active\":\"1\",\"value\":\"https:\\/\\/github.com\\/teksite\"},\"gitlab\":{\"value\":null},\"website\":{\"value\":null}}', NULL, '2025-09-15 03:26:19', '2025-09-15 09:52:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permissions_title_unique` (`title`);

--
-- Indexes for table `auth_permission_models`
--
ALTER TABLE `auth_permission_models`
  ADD KEY `auth_permission_models_permission_id_foreign` (`permission_id`),
  ADD KEY `auth_permission_models_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `auth_permission_role`
--
ALTER TABLE `auth_permission_role`
  ADD KEY `auth_permission_role_role_id_foreign` (`role_id`),
  ADD KEY `auth_permission_role_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `auth_roles`
--
ALTER TABLE `auth_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_roles_title_unique` (`title`);

--
-- Indexes for table `auth_role_models`
--
ALTER TABLE `auth_role_models`
  ADD KEY `auth_role_models_role_id_foreign` (`role_id`),
  ADD KEY `auth_role_models_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `blog_annotations`
--
ALTER TABLE `blog_annotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_title_unique` (`title`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `blog_category_post`
--
ALTER TABLE `blog_category_post`
  ADD PRIMARY KEY (`category_id`,`post_id`),
  ADD KEY `blog_category_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_posts_slug_unique` (`slug`),
  ADD KEY `blog_posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `blog_post_important`
--
ALTER TABLE `blog_post_important`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_post_important_post_id_unique` (`post_id`);

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
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`),
  ADD KEY `comments_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_national_id_unique` (`national_id`),
  ADD UNIQUE KEY `companies_url_unique` (`url`),
  ADD UNIQUE KEY `companies_telephone_unique` (`telephone`),
  ADD UNIQUE KEY `companies_phone_unique` (`phone`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gadgets_label_unique` (`label`),
  ADD KEY `gadgets_label_index` (`label`);

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
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_label_unique` (`label`),
  ADD KEY `menus_label_index` (`label`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `meta_models`
--
ALTER TABLE `meta_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_models_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifier_items`
--
ALTER TABLE `notifier_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifier_items_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `notifier_users`
--
ALTER TABLE `notifier_users`
  ADD UNIQUE KEY `notifier_users_notifier_id_user_id_unique` (`notifier_id`,`user_id`),
  ADD KEY `notifier_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_company_id_foreign` (`company_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `products_properties`
--
ALTER TABLE `products_properties`
  ADD UNIQUE KEY `products_properties_product_id_property_id_unique` (`product_id`,`property_id`),
  ADD KEY `products_properties_property_id_foreign` (`property_id`);

--
-- Indexes for table `product_properties`
--
ALTER TABLE `product_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_properties_group_id_foreign` (`group_id`);

--
-- Indexes for table `product_property_groups`
--
ALTER TABLE `product_property_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_property_groups_title_unique` (`title`);

--
-- Indexes for table `product_versions`
--
ALTER TABLE `product_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_versions_product_id_foreign` (`product_id`);

--
-- Indexes for table `questionnaire_forms`
--
ALTER TABLE `questionnaire_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `questionnaire_forms_title_unique` (`title`);

--
-- Indexes for table `questionnaire_form_announcements`
--
ALTER TABLE `questionnaire_form_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionnaire_form_announcements_form_id_foreign` (`form_id`);

--
-- Indexes for table `questionnaire_form_rules`
--
ALTER TABLE `questionnaire_form_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionnaire_form_rules_form_id_foreign` (`form_id`);

--
-- Indexes for table `questionnaire_inboxes`
--
ALTER TABLE `questionnaire_inboxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionnaire_inboxes_form_id_foreign` (`form_id`),
  ADD KEY `questionnaire_inboxes_user_id_foreign` (`user_id`);

--
-- Indexes for table `restrict_ips`
--
ALTER TABLE `restrict_ips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restrict_ips_ip_address_type_index` (`ip_address`,`type`);

--
-- Indexes for table `seo_general`
--
ALTER TABLE `seo_general`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seo_general_key_unique` (`key`);

--
-- Indexes for table `seo_models`
--
ALTER TABLE `seo_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_models_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `seo_site`
--
ALTER TABLE `seo_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seo_site_key_unique` (`key`);

--
-- Indexes for table `seo_sitemaps`
--
ALTER TABLE `seo_sitemaps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_sitemaps_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_title_unique` (`title`);

--
-- Indexes for table `tag_models`
--
ALTER TABLE `tag_models`
  ADD PRIMARY KEY (`tag_id`,`model_id`,`model_type`),
  ADD KEY `tag_models_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_meta_user_id_key_unique` (`user_id`,`key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `auth_roles`
--
ALTER TABLE `auth_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_annotations`
--
ALTER TABLE `blog_annotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_post_important`
--
ALTER TABLE `blog_post_important`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gadgets`
--
ALTER TABLE `gadgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `meta_models`
--
ALTER TABLE `meta_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `notifier_items`
--
ALTER TABLE `notifier_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_properties`
--
ALTER TABLE `product_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_property_groups`
--
ALTER TABLE `product_property_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_versions`
--
ALTER TABLE `product_versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `questionnaire_forms`
--
ALTER TABLE `questionnaire_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questionnaire_form_announcements`
--
ALTER TABLE `questionnaire_form_announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questionnaire_form_rules`
--
ALTER TABLE `questionnaire_form_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questionnaire_inboxes`
--
ALTER TABLE `questionnaire_inboxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restrict_ips`
--
ALTER TABLE `restrict_ips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_general`
--
ALTER TABLE `seo_general`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_models`
--
ALTER TABLE `seo_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `seo_site`
--
ALTER TABLE `seo_site`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo_sitemaps`
--
ALTER TABLE `seo_sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_permission_models`
--
ALTER TABLE `auth_permission_models`
  ADD CONSTRAINT `auth_permission_models_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_permission_role`
--
ALTER TABLE `auth_permission_role`
  ADD CONSTRAINT `auth_permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `auth_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_role_models`
--
ALTER TABLE `auth_role_models`
  ADD CONSTRAINT `auth_role_models_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `auth_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_category_post`
--
ALTER TABLE `blog_category_post`
  ADD CONSTRAINT `blog_category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `blog_post_important`
--
ALTER TABLE `blog_post_important`
  ADD CONSTRAINT `blog_post_important_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifier_items`
--
ALTER TABLE `notifier_items`
  ADD CONSTRAINT `notifier_items_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `notifier_users`
--
ALTER TABLE `notifier_users`
  ADD CONSTRAINT `notifier_users_notifier_id_foreign` FOREIGN KEY (`notifier_id`) REFERENCES `notifier_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifier_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_properties`
--
ALTER TABLE `products_properties`
  ADD CONSTRAINT `products_properties_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_properties_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `product_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_properties`
--
ALTER TABLE `product_properties`
  ADD CONSTRAINT `product_properties_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `product_property_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_versions`
--
ALTER TABLE `product_versions`
  ADD CONSTRAINT `product_versions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questionnaire_form_announcements`
--
ALTER TABLE `questionnaire_form_announcements`
  ADD CONSTRAINT `questionnaire_form_announcements_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `questionnaire_forms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questionnaire_form_rules`
--
ALTER TABLE `questionnaire_form_rules`
  ADD CONSTRAINT `questionnaire_form_rules_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `questionnaire_forms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questionnaire_inboxes`
--
ALTER TABLE `questionnaire_inboxes`
  ADD CONSTRAINT `questionnaire_inboxes_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `questionnaire_forms` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `questionnaire_inboxes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tag_models`
--
ALTER TABLE `tag_models`
  ADD CONSTRAINT `tag_models_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD CONSTRAINT `user_meta_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
