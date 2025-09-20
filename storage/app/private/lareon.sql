-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2025 at 01:26 PM
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
-- Database: `lareon`
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
(45, 'admin.service.read', 'have access to read one or all services (in the admin panel)', NULL, NULL),
(46, 'admin.service.create', 'have access to create a new service (in the admin panel)', NULL, NULL),
(47, 'admin.service.edit', 'have access to edit services (in the admin panel)', NULL, NULL),
(48, 'admin.service.delete', 'have access to delete services (in the admin panel)', NULL, NULL),
(49, 'admin.service.trash', 'have access to delete services from database (in the admin panel)', NULL, NULL),
(50, 'admin.service.price.read', 'have access to read one or all price of services (in the admin panel)', NULL, NULL),
(51, 'admin.service.price.create', 'have access to create a new price of a service (in the admin panel)', NULL, NULL),
(52, 'admin.service.price.edit', 'have access to edit price of a services (in the admin panel)', NULL, NULL),
(53, 'admin.service.price.delete', 'have access to delete price of a services (in the admin panel)', NULL, NULL),
(54, 'admin.service.price.trash', 'have access to delete services from database (in the admin panel)', NULL, NULL),
(55, 'admin.portfolio.read', 'have access to read one or all portfolios (in the admin panel)', NULL, NULL),
(56, 'admin.portfolio.create', 'have access to create a new portfolio (in the admin panel)', NULL, NULL),
(57, 'admin.portfolio.edit', 'have access to edit portfolios (in the admin panel)', NULL, NULL),
(58, 'admin.portfolio.delete', 'have access to delete portfolios (in the admin panel)', NULL, NULL),
(59, 'admin.portfolio.trash', 'have access to delete services from database (in the admin panel)', NULL, NULL),
(60, 'panel.portfolio.read', 'have access to read one or all portfolios (in the panel panel)', NULL, NULL),
(61, 'panel.portfolio.create', 'have access to create a new portfolio (in the panel panel)', NULL, NULL),
(62, 'panel.portfolio.edit', 'have access to edit portfolios (in the panel panel)', NULL, NULL),
(63, 'panel.portfolio.delete', 'have access to delete portfolios (in the panel panel)', NULL, NULL),
(64, 'admin.tag.read', 'have access to read one or all tags (in the admin panel)', NULL, NULL),
(65, 'admin.tag.create', 'have access to create a new tag (in the admin panel)', NULL, NULL),
(66, 'admin.tag.edit', 'have access to edit tags (in the admin panel)', NULL, NULL),
(67, 'admin.tag.delete', 'have access to delete tags (in the admin panel)', NULL, NULL),
(68, 'admin.seo.site.edit', 'have access to edit the site seo (in the admin panel)', NULL, NULL),
(69, 'admin.seo.general.edit', 'have access to edit seo of the general part of the app (in the admin panel)', NULL, NULL),
(70, 'admin.seo.sitemap.edit', 'have access to generate or edit the type of sitemap (in the admin panel)', NULL, NULL),
(71, 'admin.seo.robot.edit', 'have access to edit robot.txt file (in the admin panel)', NULL, NULL),
(72, 'admin.comment.read', 'have access to read one or all comments (in the admin panel)', NULL, NULL),
(73, 'admin.comment.create', 'have access to create a new comment or reply (in the admin panel)', NULL, NULL),
(74, 'admin.comment.edit', 'have access to edit comments (in the admin panel)', NULL, NULL),
(75, 'admin.comment.delete', 'have access to delete comments (in the admin panel)', NULL, NULL),
(76, 'admin.comment.trash', 'have access to delete comments from database (in the admin panel)', NULL, NULL),
(77, 'panel.comment.read', 'have access to read one or all comments (in the user panel)', NULL, NULL),
(78, 'panel.comment.edit', 'have access to edit comments (in the user panel)', NULL, NULL),
(79, 'panel.comment.delete', 'have access to delete comments (in the user panel)', NULL, NULL),
(80, 'client.comment.create', 'have access to create a new comment (from website)', NULL, NULL),
(81, 'admin.questionnaire.form.read', 'have access to read one or all questionnaire forms (in the admin panel)', NULL, NULL),
(82, 'admin.questionnaire.form.create', 'have access to create a new questionnaire form (in the admin panel)', NULL, NULL),
(83, 'admin.questionnaire.form.edit', 'have access to edit questionnaire forms (in the admin panel)', NULL, NULL),
(84, 'admin.questionnaire.form.delete', 'have access to delete questionnaire forms (in the admin panel)', NULL, NULL),
(85, 'admin.questionnaire.form.trash', 'have access to delete questionnaire forms from database (in the admin panel)', NULL, NULL),
(86, 'admin.questionnaire.inbox.read', 'have access to read one or all questionnaire inboxes (in the admin panel)', NULL, NULL),
(87, 'admin.questionnaire.inbox.create', 'have access to create a new questionnaire inbox (in the admin panel)', NULL, NULL),
(88, 'admin.questionnaire.inbox.edit', 'have access to edit questionnaire inboxes (in the admin panel)', NULL, NULL),
(89, 'admin.questionnaire.inbox.delete', 'have access to delete questionnaire inboxes (in the admin panel)', NULL, NULL),
(90, 'admin.questionnaire.inbox.trash', 'have access to delete questionnaire inboxes from database (in the admin panel)', NULL, NULL),
(91, 'admin.questionnaire.inbox.export', 'have access to export one or all questionnaire inboxes (in the admin panel)', NULL, NULL),
(92, 'client.questionnaire.inbox.read', 'have access to read one or all questionnaire inboxes (in the client panel)', NULL, NULL),
(93, 'admin.menu.read', 'have access to read one or all menu (in the admin panel)', NULL, NULL),
(94, 'admin.menu.create', 'have access to create a new menu (in the admin panel)', NULL, NULL),
(95, 'admin.menu.edit', 'have access to edit menu (in the admin panel)', NULL, NULL),
(96, 'admin.menu.delete', 'have access to delete menu (in the admin panel)', NULL, NULL),
(97, 'admin.menu.trash', 'have access to delete menu from database (in the admin panel)', NULL, NULL),
(98, 'admin.notifier.read', 'have access to read one or all notifications (in the admin panel)', NULL, NULL),
(99, 'admin.notifier.create', 'have access to create a new notification (in the admin panel)', NULL, NULL),
(100, 'admin.notifier.edit', 'have access to edit notifications (in the admin panel)', NULL, NULL),
(101, 'admin.notifier.delete', 'have access to delete notifications (in the admin panel)', NULL, NULL),
(102, 'admin.notifier.trash', 'have access to delete notifications from database (in the admin panel)', NULL, NULL),
(103, 'admin.gadget.read', 'have access to read one or all gadgets (in the admin panel)', NULL, NULL),
(104, 'admin.gadget.create', 'have access to create a new gadget (in the admin panel)', NULL, NULL),
(105, 'admin.gadget.edit', 'have access to edit gadgets (in the admin panel)', NULL, NULL),
(106, 'admin.gadget.delete', 'have access to delete gadgets (in the admin panel)', NULL, NULL),
(107, 'admin.gadget.trash', 'have access to delete gadgets from database (in the admin panel)', NULL, NULL),
(108, 'admin.skill.read', 'have access to read one or all skills (in the admin panel)', NULL, NULL),
(109, 'admin.skill.create', 'have access to create a new skill (in the admin panel)', NULL, NULL),
(110, 'admin.skill.edit', 'have access to edit skills (in the admin panel)', NULL, NULL),
(111, 'admin.skill.delete', 'have access to delete skills (in the admin panel)', NULL, NULL),
(112, 'admin.skill.trash', 'have access to delete skills from database (in the admin panel)', NULL, NULL),
(113, 'admin.page.read', 'have access to read one or all pages (in the admin panel)', NULL, NULL),
(114, 'admin.page.create', 'have access to create a new page (in the admin panel)', NULL, NULL),
(115, 'admin.page.edit', 'have access to edit pages (in the admin panel)', NULL, NULL),
(116, 'admin.page.delete', 'have access to delete pages (in the admin panel)', NULL, NULL),
(117, 'admin.page.trash', 'have access to delete pages from database (in the admin panel)', NULL, NULL),
(118, 'admin.team.read', 'have access to read one or all teams (in the admin panel)', NULL, NULL),
(119, 'admin.team.create', 'have access to create a new team (in the admin panel)', NULL, NULL),
(120, 'admin.team.edit', 'have access to edit teams (in the admin panel)', NULL, NULL),
(121, 'admin.team.delete', 'have access to delete teams (in the admin panel)', NULL, NULL),
(122, 'admin.team.trash', 'have access to delete teams from database (in the admin panel)', NULL, NULL),
(123, 'admin.testimonial.read', 'have access to read one or all testimonials (in the admin panel)', NULL, NULL),
(124, 'admin.testimonial.create', 'have access to create a new blog testimonial (in the admin panel)', NULL, NULL),
(125, 'admin.testimonial.edit', 'have access to edit testimonials (in the admin panel)', NULL, NULL),
(126, 'admin.testimonial.delete', 'have access to delete testimonials (in the admin panel)', NULL, NULL);

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
(1, 73),
(1, 75),
(1, 74),
(1, 72),
(1, 76),
(1, 104),
(1, 106),
(1, 105),
(1, 103),
(1, 107),
(1, 94),
(1, 96),
(1, 95),
(1, 93),
(1, 97),
(1, 99),
(1, 101),
(1, 100),
(1, 98),
(1, 102),
(1, 114),
(1, 116),
(1, 115),
(1, 113),
(1, 117),
(1, 7),
(1, 9),
(1, 8),
(1, 6),
(1, 56),
(1, 58),
(1, 57),
(1, 55),
(1, 59),
(1, 82),
(1, 84),
(1, 83),
(1, 81),
(1, 85),
(1, 87),
(1, 89),
(1, 88),
(1, 91),
(1, 86),
(1, 90),
(1, 3),
(1, 5),
(1, 4),
(1, 2),
(1, 69),
(1, 71),
(1, 68),
(1, 70),
(1, 46),
(1, 48),
(1, 47),
(1, 51),
(1, 53),
(1, 52),
(1, 50),
(1, 54),
(1, 45),
(1, 49),
(1, 14),
(1, 15),
(1, 13),
(1, 11),
(1, 12),
(1, 17),
(1, 18),
(1, 16),
(1, 10),
(1, 109),
(1, 111),
(1, 110),
(1, 108),
(1, 112),
(1, 65),
(1, 67),
(1, 66),
(1, 64),
(1, 119),
(1, 121),
(1, 120),
(1, 118),
(1, 122),
(1, 124),
(1, 126),
(1, 125),
(1, 123),
(1, 20),
(1, 22),
(1, 21),
(1, 19),
(1, 80),
(1, 92),
(1, 23),
(1, 79),
(1, 78),
(1, 77),
(1, 61),
(1, 63),
(1, 62),
(1, 60),
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
(2, 73),
(2, 75),
(2, 74),
(2, 72),
(2, 76),
(2, 104),
(2, 106),
(2, 105),
(2, 103),
(2, 107),
(2, 94),
(2, 96),
(2, 95),
(2, 93),
(2, 97),
(2, 99),
(2, 101),
(2, 100),
(2, 98),
(2, 102),
(2, 114),
(2, 116),
(2, 115),
(2, 113),
(2, 117),
(2, 7),
(2, 9),
(2, 8),
(2, 6),
(2, 56),
(2, 58),
(2, 57),
(2, 55),
(2, 59),
(2, 82),
(2, 84),
(2, 83),
(2, 81),
(2, 85),
(2, 87),
(2, 89),
(2, 88),
(2, 91),
(2, 86),
(2, 90),
(2, 3),
(2, 5),
(2, 4),
(2, 2),
(2, 69),
(2, 71),
(2, 68),
(2, 70),
(2, 46),
(2, 48),
(2, 47),
(2, 51),
(2, 53),
(2, 52),
(2, 50),
(2, 54),
(2, 45),
(2, 49),
(2, 14),
(2, 15),
(2, 13),
(2, 11),
(2, 12),
(2, 17),
(2, 18),
(2, 16),
(2, 10),
(2, 109),
(2, 111),
(2, 110),
(2, 108),
(2, 112),
(2, 65),
(2, 67),
(2, 66),
(2, 64),
(2, 119),
(2, 121),
(2, 120),
(2, 118),
(2, 122),
(2, 124),
(2, 126),
(2, 125),
(2, 123),
(2, 20),
(2, 22),
(2, 21),
(2, 19),
(2, 80),
(2, 92),
(2, 23),
(2, 79),
(2, 78),
(2, 77),
(2, 61),
(2, 63),
(2, 62),
(2, 60),
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
(3, 73),
(3, 75),
(3, 74),
(3, 72),
(3, 76),
(3, 104),
(3, 106),
(3, 105),
(3, 103),
(3, 107),
(3, 94),
(3, 96),
(3, 95),
(3, 93),
(3, 97),
(3, 99),
(3, 101),
(3, 100),
(3, 98),
(3, 102),
(3, 114),
(3, 116),
(3, 115),
(3, 113),
(3, 117),
(3, 7),
(3, 9),
(3, 8),
(3, 6),
(3, 56),
(3, 58),
(3, 57),
(3, 55),
(3, 59),
(3, 82),
(3, 84),
(3, 83),
(3, 81),
(3, 85),
(3, 87),
(3, 89),
(3, 88),
(3, 91),
(3, 86),
(3, 90),
(3, 3),
(3, 5),
(3, 4),
(3, 2),
(3, 69),
(3, 71),
(3, 68),
(3, 70),
(3, 46),
(3, 48),
(3, 47),
(3, 51),
(3, 53),
(3, 52),
(3, 50),
(3, 54),
(3, 45),
(3, 49),
(3, 14),
(3, 15),
(3, 13),
(3, 11),
(3, 12),
(3, 17),
(3, 18),
(3, 16),
(3, 10),
(3, 109),
(3, 111),
(3, 110),
(3, 108),
(3, 112),
(3, 65),
(3, 67),
(3, 66),
(3, 64),
(3, 119),
(3, 121),
(3, 120),
(3, 118),
(3, 122),
(3, 124),
(3, 126),
(3, 125),
(3, 123),
(3, 20),
(3, 22),
(3, 21),
(3, 19),
(3, 80),
(3, 92),
(3, 23),
(3, 79),
(3, 78),
(3, 77),
(3, 61),
(3, 63),
(3, 62),
(3, 60),
(3, 30),
(3, 28),
(3, 29),
(3, 25),
(3, 27),
(3, 26),
(3, 24),
(4, 80),
(4, 92),
(4, 23),
(4, 79),
(4, 78),
(4, 77),
(4, 61),
(4, 63),
(4, 62),
(4, 60),
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
(2, 'Lareon\\CMS\\App\\Models\\User', 1),
(2, 'Lareon\\CMS\\App\\Models\\User', 2);

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
  `publish_status` varchar(255) NOT NULL DEFAULT 'published',
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
('laratek_cache_57a8d4d9e7eb2f6e02e058f442e4201c', 'i:1;', 1757824220),
('laratek_cache_57a8d4d9e7eb2f6e02e058f442e4201c:timer', 'i:1757824219;', 1757824219);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laratek_cache_allPermissionsGates', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:126:{i:0;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:5:\"admin\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:5:\"admin\";s:2:\"id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:28:\"admin.blog.annotation.create\";s:2:\"id\";i:41;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:28:\"admin.blog.annotation.create\";s:2:\"id\";i:41;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:28:\"admin.blog.annotation.delete\";s:2:\"id\";i:43;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:28:\"admin.blog.annotation.delete\";s:2:\"id\";i:43;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.blog.annotation.edit\";s:2:\"id\";i:42;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.blog.annotation.edit\";s:2:\"id\";i:42;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.blog.annotation.read\";s:2:\"id\";i:40;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.blog.annotation.read\";s:2:\"id\";i:40;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:27:\"admin.blog.annotation.trash\";s:2:\"id\";i:44;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:27:\"admin.blog.annotation.trash\";s:2:\"id\";i:44;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.blog.category.create\";s:2:\"id\";i:32;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.blog.category.create\";s:2:\"id\";i:32;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.blog.category.delete\";s:2:\"id\";i:34;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.blog.category.delete\";s:2:\"id\";i:34;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:8;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.blog.category.edit\";s:2:\"id\";i:33;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.blog.category.edit\";s:2:\"id\";i:33;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:9;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.blog.category.read\";s:2:\"id\";i:31;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.blog.category.read\";s:2:\"id\";i:31;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:10;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.blog.post.create\";s:2:\"id\";i:36;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.blog.post.create\";s:2:\"id\";i:36;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:11;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.blog.post.delete\";s:2:\"id\";i:38;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.blog.post.delete\";s:2:\"id\";i:38;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:12;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.blog.post.edit\";s:2:\"id\";i:37;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.blog.post.edit\";s:2:\"id\";i:37;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:13;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.blog.post.read\";s:2:\"id\";i:35;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.blog.post.read\";s:2:\"id\";i:35;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:14;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.blog.post.trash\";s:2:\"id\";i:39;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.blog.post.trash\";s:2:\"id\";i:39;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:15;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.comment.create\";s:2:\"id\";i:73;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.comment.create\";s:2:\"id\";i:73;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:16;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.comment.delete\";s:2:\"id\";i:75;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.comment.delete\";s:2:\"id\";i:75;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:17;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.comment.edit\";s:2:\"id\";i:74;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.comment.edit\";s:2:\"id\";i:74;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:18;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.comment.read\";s:2:\"id\";i:72;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.comment.read\";s:2:\"id\";i:72;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:19;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.comment.trash\";s:2:\"id\";i:76;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.comment.trash\";s:2:\"id\";i:76;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:20;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.gadget.create\";s:2:\"id\";i:104;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.gadget.create\";s:2:\"id\";i:104;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:21;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.gadget.delete\";s:2:\"id\";i:106;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.gadget.delete\";s:2:\"id\";i:106;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:22;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.gadget.edit\";s:2:\"id\";i:105;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.gadget.edit\";s:2:\"id\";i:105;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:23;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.gadget.read\";s:2:\"id\";i:103;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.gadget.read\";s:2:\"id\";i:103;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:24;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.gadget.trash\";s:2:\"id\";i:107;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.gadget.trash\";s:2:\"id\";i:107;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:25;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.menu.create\";s:2:\"id\";i:94;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.menu.create\";s:2:\"id\";i:94;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:26;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.menu.delete\";s:2:\"id\";i:96;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.menu.delete\";s:2:\"id\";i:96;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:27;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.menu.edit\";s:2:\"id\";i:95;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.menu.edit\";s:2:\"id\";i:95;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:28;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.menu.read\";s:2:\"id\";i:93;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.menu.read\";s:2:\"id\";i:93;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:29;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.menu.trash\";s:2:\"id\";i:97;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.menu.trash\";s:2:\"id\";i:97;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:30;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.notifier.create\";s:2:\"id\";i:99;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.notifier.create\";s:2:\"id\";i:99;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:31;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.notifier.delete\";s:2:\"id\";i:101;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.notifier.delete\";s:2:\"id\";i:101;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:32;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.notifier.edit\";s:2:\"id\";i:100;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.notifier.edit\";s:2:\"id\";i:100;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:33;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.notifier.read\";s:2:\"id\";i:98;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.notifier.read\";s:2:\"id\";i:98;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:34;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.notifier.trash\";s:2:\"id\";i:102;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.notifier.trash\";s:2:\"id\";i:102;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:35;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.page.create\";s:2:\"id\";i:114;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.page.create\";s:2:\"id\";i:114;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:36;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.page.delete\";s:2:\"id\";i:116;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.page.delete\";s:2:\"id\";i:116;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:37;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.page.edit\";s:2:\"id\";i:115;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.page.edit\";s:2:\"id\";i:115;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:38;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.page.read\";s:2:\"id\";i:113;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.page.read\";s:2:\"id\";i:113;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:39;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.page.trash\";s:2:\"id\";i:117;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.page.trash\";s:2:\"id\";i:117;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:40;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:23:\"admin.permission.create\";s:2:\"id\";i:7;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:23:\"admin.permission.create\";s:2:\"id\";i:7;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:41;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:23:\"admin.permission.delete\";s:2:\"id\";i:9;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:23:\"admin.permission.delete\";s:2:\"id\";i:9;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:42;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.permission.edit\";s:2:\"id\";i:8;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.permission.edit\";s:2:\"id\";i:8;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:43;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.permission.read\";s:2:\"id\";i:6;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.permission.read\";s:2:\"id\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:44;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.portfolio.create\";s:2:\"id\";i:56;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.portfolio.create\";s:2:\"id\";i:56;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:45;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.portfolio.delete\";s:2:\"id\";i:58;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.portfolio.delete\";s:2:\"id\";i:58;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:46;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.portfolio.edit\";s:2:\"id\";i:57;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.portfolio.edit\";s:2:\"id\";i:57;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:47;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.portfolio.read\";s:2:\"id\";i:55;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.portfolio.read\";s:2:\"id\";i:55;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:48;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"admin.portfolio.trash\";s:2:\"id\";i:59;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"admin.portfolio.trash\";s:2:\"id\";i:59;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:49;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.form.create\";s:2:\"id\";i:82;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.form.create\";s:2:\"id\";i:82;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:50;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.form.delete\";s:2:\"id\";i:84;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.form.delete\";s:2:\"id\";i:84;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:51;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:29:\"admin.questionnaire.form.edit\";s:2:\"id\";i:83;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:29:\"admin.questionnaire.form.edit\";s:2:\"id\";i:83;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:52;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:29:\"admin.questionnaire.form.read\";s:2:\"id\";i:81;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:29:\"admin.questionnaire.form.read\";s:2:\"id\";i:81;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:53;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.form.trash\";s:2:\"id\";i:85;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.form.trash\";s:2:\"id\";i:85;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:54;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.create\";s:2:\"id\";i:87;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.create\";s:2:\"id\";i:87;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:55;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.delete\";s:2:\"id\";i:89;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.delete\";s:2:\"id\";i:89;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:56;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.inbox.edit\";s:2:\"id\";i:88;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.inbox.edit\";s:2:\"id\";i:88;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:57;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.export\";s:2:\"id\";i:91;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:32:\"admin.questionnaire.inbox.export\";s:2:\"id\";i:91;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:58;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.inbox.read\";s:2:\"id\";i:86;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:30:\"admin.questionnaire.inbox.read\";s:2:\"id\";i:86;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:59;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.inbox.trash\";s:2:\"id\";i:90;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:31:\"admin.questionnaire.inbox.trash\";s:2:\"id\";i:90;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:60;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.role.create\";s:2:\"id\";i:3;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.role.create\";s:2:\"id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:61;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.role.delete\";s:2:\"id\";i:5;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.role.delete\";s:2:\"id\";i:5;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:62;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.role.edit\";s:2:\"id\";i:4;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.role.edit\";s:2:\"id\";i:4;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:63;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.role.read\";s:2:\"id\";i:2;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.role.read\";s:2:\"id\";i:2;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:64;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.seo.general.edit\";s:2:\"id\";i:69;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.seo.general.edit\";s:2:\"id\";i:69;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:65;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.seo.robot.edit\";s:2:\"id\";i:71;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.seo.robot.edit\";s:2:\"id\";i:71;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:66;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.seo.site.edit\";s:2:\"id\";i:68;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.seo.site.edit\";s:2:\"id\";i:68;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:67;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.seo.sitemap.edit\";s:2:\"id\";i:70;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.seo.sitemap.edit\";s:2:\"id\";i:70;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:68;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.service.create\";s:2:\"id\";i:46;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.service.create\";s:2:\"id\";i:46;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:69;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"admin.service.delete\";s:2:\"id\";i:48;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"admin.service.delete\";s:2:\"id\";i:48;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:70;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.service.edit\";s:2:\"id\";i:47;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.service.edit\";s:2:\"id\";i:47;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:71;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.service.price.create\";s:2:\"id\";i:51;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.service.price.create\";s:2:\"id\";i:51;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:72;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.service.price.delete\";s:2:\"id\";i:53;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.service.price.delete\";s:2:\"id\";i:53;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:73;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.service.price.edit\";s:2:\"id\";i:52;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.service.price.edit\";s:2:\"id\";i:52;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:74;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.service.price.read\";s:2:\"id\";i:50;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.service.price.read\";s:2:\"id\";i:50;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:75;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:25:\"admin.service.price.trash\";s:2:\"id\";i:54;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:25:\"admin.service.price.trash\";s:2:\"id\";i:54;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:76;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.service.read\";s:2:\"id\";i:45;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.service.read\";s:2:\"id\";i:45;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:77;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:19:\"admin.service.trash\";s:2:\"id\";i:49;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:19:\"admin.service.trash\";s:2:\"id\";i:49;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:78;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.setting.cache.create\";s:2:\"id\";i:14;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.setting.cache.create\";s:2:\"id\";i:14;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:79;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:26:\"admin.setting.cache.delete\";s:2:\"id\";i:15;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:26:\"admin.setting.cache.delete\";s:2:\"id\";i:15;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:80;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.setting.cache.read\";s:2:\"id\";i:13;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.setting.cache.read\";s:2:\"id\";i:13;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:81;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.setting.edit\";s:2:\"id\";i:11;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.setting.edit\";s:2:\"id\";i:11;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:82;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:23:\"admin.setting.info.read\";s:2:\"id\";i:12;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:23:\"admin.setting.info.read\";s:2:\"id\";i:12;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:83;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:23:\"admin.setting.log.clear\";s:2:\"id\";i:17;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:23:\"admin.setting.log.clear\";s:2:\"id\";i:17;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:84;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.setting.log.delete\";s:2:\"id\";i:18;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.setting.log.delete\";s:2:\"id\";i:18;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:85;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.setting.log.read\";s:2:\"id\";i:16;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.setting.log.read\";s:2:\"id\";i:16;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:86;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.setting.read\";s:2:\"id\";i:10;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.setting.read\";s:2:\"id\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:87;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.skill.create\";s:2:\"id\";i:109;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.skill.create\";s:2:\"id\";i:109;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:88;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"admin.skill.delete\";s:2:\"id\";i:111;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"admin.skill.delete\";s:2:\"id\";i:111;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:89;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.skill.edit\";s:2:\"id\";i:110;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.skill.edit\";s:2:\"id\";i:110;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:90;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.skill.read\";s:2:\"id\";i:108;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.skill.read\";s:2:\"id\";i:108;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:91;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.skill.trash\";s:2:\"id\";i:112;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.skill.trash\";s:2:\"id\";i:112;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:92;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.tag.create\";s:2:\"id\";i:65;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.tag.create\";s:2:\"id\";i:65;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:93;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.tag.delete\";s:2:\"id\";i:67;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.tag.delete\";s:2:\"id\";i:67;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:94;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:14:\"admin.tag.edit\";s:2:\"id\";i:66;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:14:\"admin.tag.edit\";s:2:\"id\";i:66;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:95;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:14:\"admin.tag.read\";s:2:\"id\";i:64;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:14:\"admin.tag.read\";s:2:\"id\";i:64;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:96;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.team.create\";s:2:\"id\";i:119;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.team.create\";s:2:\"id\";i:119;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:97;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.team.delete\";s:2:\"id\";i:121;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.team.delete\";s:2:\"id\";i:121;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:98;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.team.edit\";s:2:\"id\";i:120;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.team.edit\";s:2:\"id\";i:120;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:99;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.team.read\";s:2:\"id\";i:118;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.team.read\";s:2:\"id\";i:118;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:100;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:16:\"admin.team.trash\";s:2:\"id\";i:122;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:16:\"admin.team.trash\";s:2:\"id\";i:122;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:101;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.testimonial.create\";s:2:\"id\";i:124;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.testimonial.create\";s:2:\"id\";i:124;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:102;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:24:\"admin.testimonial.delete\";s:2:\"id\";i:126;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:24:\"admin.testimonial.delete\";s:2:\"id\";i:126;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:103;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.testimonial.edit\";s:2:\"id\";i:125;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.testimonial.edit\";s:2:\"id\";i:125;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:104;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"admin.testimonial.read\";s:2:\"id\";i:123;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"admin.testimonial.read\";s:2:\"id\";i:123;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:105;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.user.create\";s:2:\"id\";i:20;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.user.create\";s:2:\"id\";i:20;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:106;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"admin.user.delete\";s:2:\"id\";i:22;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"admin.user.delete\";s:2:\"id\";i:22;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:107;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.user.edit\";s:2:\"id\";i:21;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.user.edit\";s:2:\"id\";i:21;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:108;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"admin.user.read\";s:2:\"id\";i:19;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"admin.user.read\";s:2:\"id\";i:19;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:109;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:21:\"client.comment.create\";s:2:\"id\";i:80;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:21:\"client.comment.create\";s:2:\"id\";i:80;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:110;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:31:\"client.questionnaire.inbox.read\";s:2:\"id\";i:92;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:31:\"client.questionnaire.inbox.read\";s:2:\"id\";i:92;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:111;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:5:\"panel\";s:2:\"id\";i:23;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:5:\"panel\";s:2:\"id\";i:23;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:112;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"panel.comment.delete\";s:2:\"id\";i:79;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"panel.comment.delete\";s:2:\"id\";i:79;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:113;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"panel.comment.edit\";s:2:\"id\";i:78;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"panel.comment.edit\";s:2:\"id\";i:78;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:114;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"panel.comment.read\";s:2:\"id\";i:77;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"panel.comment.read\";s:2:\"id\";i:77;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:115;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"panel.portfolio.create\";s:2:\"id\";i:61;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"panel.portfolio.create\";s:2:\"id\";i:61;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:116;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:22:\"panel.portfolio.delete\";s:2:\"id\";i:63;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:22:\"panel.portfolio.delete\";s:2:\"id\";i:63;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:117;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"panel.portfolio.edit\";s:2:\"id\";i:62;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"panel.portfolio.edit\";s:2:\"id\";i:62;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:118;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"panel.portfolio.read\";s:2:\"id\";i:60;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"panel.portfolio.read\";s:2:\"id\";i:60;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:119;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:20:\"panel.profile.delete\";s:2:\"id\";i:30;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:20:\"panel.profile.delete\";s:2:\"id\";i:30;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:120;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:18:\"panel.profile.edit\";s:2:\"id\";i:28;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:18:\"panel.profile.edit\";s:2:\"id\";i:28;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:121;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:23:\"panel.profile.towfactor\";s:2:\"id\";i:29;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:23:\"panel.profile.towfactor\";s:2:\"id\";i:29;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:122;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"panel.user.create\";s:2:\"id\";i:25;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"panel.user.create\";s:2:\"id\";i:25;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:123;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:17:\"panel.user.delete\";s:2:\"id\";i:27;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:17:\"panel.user.delete\";s:2:\"id\";i:27;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:124;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"panel.user.edit\";s:2:\"id\";i:26;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"panel.user.edit\";s:2:\"id\";i:26;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:125;O:35:\"Teksite\\Authorize\\Models\\Permission\":33:{s:13:\"\0*\0connection\";s:7:\"mariadb\";s:8:\"\0*\0table\";s:16:\"auth_permissions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:5:\"title\";s:15:\"panel.user.read\";s:2:\"id\";i:24;}s:11:\"\0*\0original\";a:2:{s:5:\"title\";s:15:\"panel.user.read\";s:2:\"id\";i:24;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:5:\"title\";i:1;s:11:\"description\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2073101288);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laratek_cache_captcha_9f12ba41cdbc6302a6ab7e9ab215dac4', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"4\";i:2;s:1:\"6\";i:3;s:1:\"3\";i:4;s:1:\"3\";}', 1757741350),
('laratek_cache_data_app_Data_theme_general_email', 's:16:\"info@laratek.net\";', 1757851452),
('laratek_cache_data_app_Data_theme_social', 'a:3:{i:0;a:3:{s:5:\"title\";s:9:\"instagram\";s:3:\"url\";s:30:\"https://instagram.com/teksite_\";s:4:\"icon\";s:9:\"instagram\";}i:1;a:3:{s:5:\"title\";s:8:\"linkedin\";s:3:\"url\";s:41:\"https://www.linkedin.com/company/89620425\";s:4:\"icon\";s:8:\"linkedin\";}i:2;a:3:{s:5:\"title\";s:8:\"whatsapp\";s:3:\"url\";s:26:\"https://wa.me/989960820360\";s:4:\"icon\";s:8:\"whatsapp\";}}', 1757851452);

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
(1, 'main-en', 'menu_1750587275', NULL, '2025-09-04 10:59:57', '2025-09-04 10:59:57');

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
(1, 1, NULL, 2, 'with laratek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 1, 5, 'team', NULL, NULL, NULL, NULL, '/team', NULL, NULL, NULL, NULL),
(3, 1, 1, 4, 'about', NULL, NULL, NULL, NULL, '/about', NULL, NULL, NULL, NULL),
(4, 1, 1, 3, 'contact', NULL, NULL, NULL, NULL, '/contact', NULL, NULL, NULL, NULL),
(5, 1, NULL, 1, 'blog', NULL, NULL, NULL, NULL, '/blog', NULL, NULL, NULL, NULL),
(6, 1, NULL, 0, 'services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(292, '0001_01_01_000000_create_users_table', 1),
(293, '0001_01_01_000001_create_cache_table', 1),
(294, '0001_01_01_000002_create_jobs_table', 1),
(295, '0001_01_01_100000__create_permissions_table', 1),
(296, '0001_01_01_100001_create_roles_table', 1),
(297, '0001_01_02_000001_create_user_metas_table', 1),
(298, '2025_03_26_145720_create_blog_categories_table', 1),
(299, '2025_03_26_145730_create_blog_posts_table', 1),
(300, '2025_03_27_084057_create_tags_table', 1),
(301, '2025_03_27_130732_create_blog_annotations_table', 1),
(302, '2025_03_31_103546_create_seo_sites_table', 1),
(303, '2025_03_31_103550_create_seo_models_table', 1),
(304, '2025_03_31_103556_create_seo_generals_table', 1),
(305, '2025_03_31_104933_create_seo_sitemaps_table', 1),
(306, '2025_04_08_050451_create_pages_table', 1),
(307, '2025_04_09_051057_create_questionnaire_forms_table', 1),
(308, '2025_04_09_055522_create_questionnaire_form_rules_table', 1),
(309, '2025_04_09_061323_create_questionnaire_form_announcements_table', 1),
(310, '2025_04_09_071107_create_questionnaire_inboxes_table', 1),
(311, '2025_04_15_112451_create_comments_table', 1),
(312, '2025_04_27_071337_create_settings_table', 1),
(313, '2025_04_27_130717_create_menus_table', 1),
(314, '2025_04_27_130724_create_menu_items_table', 1),
(315, '2025_04_29_074615_create_notifier_items_table', 1),
(316, '2025_04_29_074627_create_notifier_users_table', 1),
(317, '2025_05_03_103154_create_gadgets_table', 1),
(318, '2025_05_05_103146_create_restrict_ips_table', 1),
(319, '2025_05_18_095627_add_two_factor_columns_to_users_table', 1),
(320, '2025_06_21_053612_add_api_token_column_users_table', 1),
(321, '2025_06_21_161548_create_teams_table', 1),
(322, '2025_06_21_161648_create_services_table', 1),
(323, '2025_09_04_162553_create_portfolio_groups_table', 1),
(324, '2025_09_04_162601_create_portfolios_table', 1),
(325, '2025_09_04_162615_create_portfolio_services_table', 1),
(326, '2025_09_06_063244_create_skills_table', 1),
(327, '2025_09_06_063414_create_skill_users_table', 1),
(328, '2025_09_08_151603_create_testimonials_table', 1);

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
  `featured_image` varchar(50) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `publish_status` varchar(255) NOT NULL DEFAULT 'published',
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `label`, `parent_id`, `title`, `slug`, `body`, `excerpt`, `featured_image`, `template`, `publish_status`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'home page', 0, 'laratek', '/', NULL, NULL, NULL, 'null', 'published', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57', NULL),
(2, 'blog index', 0, 'blog', 'blog', NULL, NULL, NULL, 'null', 'published', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57', NULL),
(3, 'services index', 0, 'services', 'services', NULL, NULL, NULL, 'null', 'published', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57', NULL),
(4, 'portfolios index', 0, 'portfolios', 'portfolios', NULL, NULL, NULL, 'null', 'published', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57', NULL),
(5, 'team index', 0, 'team', 'team', NULL, NULL, NULL, 'team', 'published', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57', NULL),
(10, NULL, 0, 'contact', 'contact', NULL, NULL, NULL, 'contact', 'published', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57', NULL),
(11, NULL, 0, 'about', 'about', NULL, NULL, NULL, 'about', 'published', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57', NULL);

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
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` text DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `first_image` varchar(255) DEFAULT NULL,
  `second_image` varchar(255) DEFAULT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gallery`)),
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `group_id`, `user_id`, `slug`, `title`, `body`, `featured_image`, `video`, `first_image`, `second_image`, `gallery`, `url`, `type`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'tzdieg1757068438', 'Barsa Novin Ray Brochure', NULL, '/storage/uploads/portfolios/brochure/b-1.jpg', NULL, '/storage/uploads/portfolios/brochure/b-1.jpg', '/storage/uploads/portfolios/brochure/b-2.jpg', '[\"/storage/uploads/portfolios/brochure/b-1.jpg\", \"/storage/uploads/portfolios/brochure/b-2.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(2, 2, 2, '3x1cqj1757068439', 'Barsa Catalog', NULL, '/storage/uploads/portfolios/catalog/k-1.jpg', NULL, '/storage/uploads/portfolios/catalog/k-1.jpg', '/storage/uploads/portfolios/catalog/k-2.jpg', '[\"/storage/uploads/portfolios/catalog/k-1.jpg\", \"/storage/uploads/portfolios/catalog/k-2.jpg\", \"/storage/uploads/portfolios/catalog/k-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(3, 2, 2, '92648z1757068440', 'Vafa Rahimi Brand Letterhead', NULL, '/storage/uploads/portfolios/letterhead/l-1.jpg', NULL, '/storage/uploads/portfolios/letterhead/l-1.jpg', '/storage/uploads/portfolios/letterhead/l-1-3.jpg', '[\"/storage/uploads/portfolios/letterhead/l-1.jpg\", \"/storage/uploads/portfolios/letterhead/l-1-2.jpg\", \"/storage/uploads/portfolios/letterhead/l-1-3.jpg\", \"/storage/uploads/portfolios/letterhead/l-1-4.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(4, 2, 2, 'utxmql1757068441', 'TemTeam Brand Letterhead', NULL, '/storage/uploads/portfolios/letterhead/l-2-2.jpg', NULL, '/storage/uploads/portfolios/letterhead/l-2-2.jpg', '/storage/uploads/portfolios/letterhead/l-2.jpg', '[\"/storage/uploads/portfolios/letterhead/l-2-2.jpg\", \"/storage/uploads/portfolios/letterhead/l-2.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(5, 2, 2, 'p4e9bh1757068443', 'Sarmasazan Brand Letterhead', NULL, '/storage/uploads/portfolios/letterhead/l-3-2.jpg', NULL, '/storage/uploads/portfolios/letterhead/l-3-2.jpg', '/storage/uploads/portfolios/letterhead/l-3.jpg', '[\"/storage/uploads/portfolios/letterhead/l-3.jpg\", \"/storage/uploads/portfolios/letterhead/l-3-3.jpg\", \"/storage/uploads/portfolios/letterhead/l-3-2.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(6, 2, 2, 'tolf8t1757068444', 'Royal House Group Letterhead', NULL, '/storage/uploads/portfolios/letterhead/l-4.jpg', NULL, '/storage/uploads/portfolios/letterhead/l-4.jpg', '/storage/uploads/portfolios/letterhead/l-4-2.jpg', '[\"/storage/uploads/portfolios/letterhead/l-4.jpg\", \"/storage/uploads/portfolios/letterhead/l-4-2.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(7, 3, 2, 'tm3mcz1757068445', 'Business Card', NULL, '/storage/uploads/portfolios/visit-card/v-2.jpg', NULL, '/storage/uploads/portfolios/visit-card/v-2.jpg', '/storage/uploads/portfolios/visit-card/v-2-front.jpg', '[\"/storage/uploads/portfolios/visit-card/v-2.jpg\", \"/storage/uploads/portfolios/visit-card/v-2-front.jpg\", \"/storage/uploads/portfolios/visit-card/v-2-back.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(8, 3, 2, 'zegi5u1757068446', 'Karana Decor Business Card', NULL, '/storage/uploads/portfolios/visit-card/v-3.jpg', NULL, '/storage/uploads/portfolios/visit-card/v-3.jpg', '/storage/uploads/portfolios/visit-card/v-3-front.jpg', '[\"/storage/uploads/portfolios/visit-card/v-3.jpg\", \"/storage/uploads/portfolios/visit-card/v-3-front.jpg\", \"/storage/uploads/portfolios/visit-card/v-3-back.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(9, 3, 2, 'uzdnjf1757068447', 'JG Glasses Business Card', NULL, '/storage/uploads/portfolios/visit-card/v-4.jpg', NULL, '/storage/uploads/portfolios/visit-card/v-4.jpg', '/storage/uploads/portfolios/visit-card/v-4-front.jpg', '[\"/storage/uploads/portfolios/visit-card/v-4.jpg\", \"/storage/uploads/portfolios/visit-card/v-4-front.jpg\", \"/storage/uploads/portfolios/visit-card/v-4-back.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(10, 3, 2, 'lhu4lv1757068448', 'Behdiss Business Card', NULL, '/storage/uploads/portfolios/visit-card/v-5.jpg', NULL, '/storage/uploads/portfolios/visit-card/v-5.jpg', '/storage/uploads/portfolios/visit-card/v-5.jpg', '[\"/storage/uploads/portfolios/visit-card/v-5.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(11, 3, 2, 'q7ui681757068449', 'Vafa Rahimi Business Card', NULL, '/storage/uploads/portfolios/visit-card/v-6.jpg', NULL, '/storage/uploads/portfolios/visit-card/v-6.jpg', '/storage/uploads/portfolios/visit-card/v-6-front.jpg', '[\"/storage/uploads/portfolios/visit-card/v-6.jpg\", \"/storage/uploads/portfolios/visit-card/v-6-front.jpg\", \"/storage/uploads/portfolios/visit-card/v-6-back.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(12, 3, 2, 'ohgu7f1757068450', 'TemTeam Business Card', NULL, '/storage/uploads/portfolios/visit-card/v-7.jpg', NULL, '/storage/uploads/portfolios/visit-card/v-7.jpg', '/storage/uploads/portfolios/visit-card/v-7-front.jpg', '[\"/storage/uploads/portfolios/visit-card/v-7.jpg\", \"/storage/uploads/portfolios/visit-card/v-7-front.jpg\", \"/storage/uploads/portfolios/visit-card/v-7-back.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(13, 4, 2, 'irmdyv1757068451', 'Grad Greeting Card', NULL, '/storage/uploads/portfolios/greeting-card/c-1.jpg', NULL, '/storage/uploads/portfolios/greeting-card/c-1.jpg', '/storage/uploads/portfolios/greeting-card/c-1-l.jpg', '[\"/storage/uploads/portfolios/greeting-card/c-1.jpg\", \"/storage/uploads/portfolios/greeting-card/c-1-l.jpg\", \"/storage/uploads/portfolios/greeting-card/c-1-r.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(14, 4, 2, 'uesktc1757068452', 'Women’s Day Greeting Card', NULL, '/storage/uploads/portfolios/greeting-card/c-2-m.jpg', NULL, '/storage/uploads/portfolios/greeting-card/c-2-m.jpg', '/storage/uploads/portfolios/greeting-card/c-2.jpg', '[\"/storage/uploads/portfolios/greeting-card/c-2.jpg\", \"/storage/uploads/portfolios/greeting-card/c-2-m.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(15, 4, 2, 'ily8ja1757068453', 'Men’s Day Greeting Card', NULL, '/storage/uploads/portfolios/greeting-card/c-3-m.jpg', NULL, '/storage/uploads/portfolios/greeting-card/c-3-m.jpg', '/storage/uploads/portfolios/greeting-card/c-3.jpg', '[\"/storage/uploads/portfolios/greeting-card/c-3.jpg\", \"/storage/uploads/portfolios/greeting-card/c-3-m.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(16, 4, 2, '5i5fuu1757068454', 'Eid Greeting Card', NULL, '/storage/uploads/portfolios/greeting-card/c-4-m.jpg', NULL, '/storage/uploads/portfolios/greeting-card/c-4-m.jpg', '/storage/uploads/portfolios/greeting-card/c-4.jpg', '[\"/storage/uploads/portfolios/greeting-card/c-4.jpg\", \"/storage/uploads/portfolios/greeting-card/c-4-m.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(17, 5, 2, 'oiheh51757068455', 'JG Logo', NULL, '/storage/uploads/portfolios/logo/l-1-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-1-m.jpg', '/storage/uploads/portfolios/logo/l-1.jpg', '[\"/storage/uploads/portfolios/logo/l-1-m.jpg\", \"/storage/uploads/portfolios/logo/l-1.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(18, 5, 2, 'p0eaq01757068456', 'TemTeam Logo', NULL, '/storage/uploads/portfolios/logo/l-2-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-2-m.jpg', '/storage/uploads/portfolios/logo/l-2.jpg', '[\"/storage/uploads/portfolios/logo/l-2-m.jpg\", \"/storage/uploads/portfolios/logo/l-2.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(19, 5, 2, 'tut3c71757068457', 'Roham Teb Vista Logo', NULL, '/storage/uploads/portfolios/logo/l-3-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-3-m.jpg', '/storage/uploads/portfolios/logo/l-3.jpg', '[\"/storage/uploads/portfolios/logo/l-3-m.jpg\", \"/storage/uploads/portfolios/logo/l-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(20, 5, 2, 'qegbik1757068458', 'Vafa Rahimi Logo', NULL, '/storage/uploads/portfolios/logo/l-4-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-4-m.jpg', '/storage/uploads/portfolios/logo/l-4.jpg', '[\"/storage/uploads/portfolios/logo/l-4-m.jpg\", \"/storage/uploads/portfolios/logo/l-4.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(21, 5, 2, 'uplvpf1757068459', 'Brandware Logo', NULL, '/storage/uploads/portfolios/logo/l-5-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-5-m.jpg', '/storage/uploads/portfolios/logo/l-5.jpg', '[\"/storage/uploads/portfolios/logo/l-5-m.jpg\", \"/storage/uploads/portfolios/logo/l-5.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(22, 5, 2, 'panzqb1757068460', 'Zaramani Logo', NULL, '/storage/uploads/portfolios/logo/l-6-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-6-m.jpg', '/storage/uploads/portfolios/logo/l-6.jpg', '[\"/storage/uploads/portfolios/logo/l-6-m.jpg\", \"/storage/uploads/portfolios/logo/l-6.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(23, 5, 2, 'ctbcx41757068461', 'Termeh Ten Logo', NULL, '/storage/uploads/portfolios/logo/l-7-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-7-m.jpg', '/storage/uploads/portfolios/logo/l-7.jpg', '[\"/storage/uploads/portfolios/logo/l-7-m.jpg\", \"/storage/uploads/portfolios/logo/l-7.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(24, 5, 2, 'z4f9pi1757068462', 'Karana Home Logo', NULL, '/storage/uploads/portfolios/logo/l-8-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-8-m.jpg', '/storage/uploads/portfolios/logo/l-8.jpg', '[\"/storage/uploads/portfolios/logo/l-8-m.jpg\", \"/storage/uploads/portfolios/logo/l-8.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(25, 5, 2, '1tsifr1757068463', 'Eeseh Logo', NULL, '/storage/uploads/portfolios/logo/l-9-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-9-m.jpg', '/storage/uploads/portfolios/logo/l-9.jpg', '[\"/storage/uploads/portfolios/logo/l-9-m.jpg\", \"/storage/uploads/portfolios/logo/l-9.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(26, 5, 2, 'rcjqsz1757068464', 'Blue Logo', NULL, '/storage/uploads/portfolios/logo/l-10-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-10-m.jpg', '/storage/uploads/portfolios/logo/l-10.jpg', '[\"/storage/uploads/portfolios/logo/l-10-m.jpg\", \"/storage/uploads/portfolios/logo/l-10.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(27, 5, 2, 'hojuj01757068465', 'RHG Logo', NULL, '/storage/uploads/portfolios/logo/l-11-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-11-m.jpg', '/storage/uploads/portfolios/logo/l-11.jpg', '[\"/storage/uploads/portfolios/logo/l-11-m.jpg\", \"/storage/uploads/portfolios/logo/l-11.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(28, 5, 2, 'zxwmbb1757068466', 'Karana Kids Logo', NULL, '/storage/uploads/portfolios/logo/l-12-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-12-m.jpg', '/storage/uploads/portfolios/logo/l-12.jpg', '[\"/storage/uploads/portfolios/logo/l-12-m.jpg\", \"/storage/uploads/portfolios/logo/l-12.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(29, 5, 2, 'kurtba1757068467', 'Raya Marketing Logo', NULL, '/storage/uploads/portfolios/logo/l-13-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-13-m.jpg', '/storage/uploads/portfolios/logo/l-13.jpg', '[\"/storage/uploads/portfolios/logo/l-13-m.jpg\", \"/storage/uploads/portfolios/logo/l-13.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(30, 5, 2, 'gzn2aj1757068468', 'IAOCB Logo', NULL, '/storage/uploads/portfolios/logo/l-14-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-14-m.jpg', '/storage/uploads/portfolios/logo/l-14.jpg', '[\"/storage/uploads/portfolios/logo/l-14-m.jpg\", \"/storage/uploads/portfolios/logo/l-14.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(31, 5, 2, 'tgcqjk1757068469', 'Tip Set Logo', NULL, '/storage/uploads/portfolios/logo/l-15-m.jpg', NULL, '/storage/uploads/portfolios/logo/l-15-m.jpg', '/storage/uploads/portfolios/logo/l-15.jpg', '[\"/storage/uploads/portfolios/logo/l-15-m.jpg\", \"/storage/uploads/portfolios/logo/l-15.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(32, 6, 2, '4dvwk11757068470', 'Green Space Support Association QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-1-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-1-m.jpg', '/storage/uploads/portfolios/qr-code/q-1.jpg', '[\"/storage/uploads/portfolios/qr-code/q-1-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-1.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(33, 6, 2, 'wg6f1c1757068471', 'Kids Game QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-2-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-2-m.jpg', '/storage/uploads/portfolios/qr-code/q-2.jpg', '[\"/storage/uploads/portfolios/qr-code/q-2-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-2.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(34, 6, 2, 'rnnpfq1757068472', 'Sun Pet QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-3-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-3-m.jpg', '/storage/uploads/portfolios/qr-code/q-3.jpg', '[\"/storage/uploads/portfolios/qr-code/q-3-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(35, 6, 2, 'zkqpdt1757068473', 'Techno Security QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-4-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-4-m.jpg', '/storage/uploads/portfolios/qr-code/q-4-m.jpg', '[\"/storage/uploads/portfolios/qr-code/q-4-m.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(36, 6, 2, 'p3kl5o1757068474', 'Coffee House QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-5-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-5-m.jpg', '/storage/uploads/portfolios/qr-code/q-5.jpg', '[\"/storage/uploads/portfolios/qr-code/q-5-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-5.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(37, 6, 2, 'fmiyz31757068475', 'Psychiatric Counseling QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-6-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-6-m.jpg', '/storage/uploads/portfolios/qr-code/q-6.jpg', '[\"/storage/uploads/portfolios/qr-code/q-6-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-6.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(38, 6, 2, 'l0akes1757068476', 'Karpardaz Consultants QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-7-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-7-m.jpg', '/storage/uploads/portfolios/qr-code/q-7.jpg', '[\"/storage/uploads/portfolios/qr-code/q-7-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-7.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(39, 6, 2, 'syrrui1757068477', 'ACP Coffee Shop QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-8-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-8-m.jpg', '/storage/uploads/portfolios/qr-code/q-8.jpg', '[\"/storage/uploads/portfolios/qr-code/q-8-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-8.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(40, 6, 2, 'zmbowo1757068478', 'QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-9-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-9-m.jpg', '/storage/uploads/portfolios/qr-code/q-9.jpg', '[\"/storage/uploads/portfolios/qr-code/q-9-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-9.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(41, 6, 2, 'iyyzwo1757068479', 'Super Protein Soil QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-10-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-10-m.jpg', '/storage/uploads/portfolios/qr-code/q-10.jpg', '[\"/storage/uploads/portfolios/qr-code/q-10-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-10.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(42, 6, 2, '0o1tgp1757068480', 'Swan Farm QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-11-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-11-m.jpg', '/storage/uploads/portfolios/qr-code/q-11.jpg', '[\"/storage/uploads/portfolios/qr-code/q-11-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-11.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(43, 7, 2, 'j6irxl1757068481', 'Karana Instagram Post', NULL, '/storage/uploads/portfolios/post-story/p-1-m.jpg', NULL, '/storage/uploads/portfolios/post-story/p-1-m.jpg', '/storage/uploads/portfolios/post-story/p-1.jpg', '[\"/storage/uploads/portfolios/post-story/p-1-m.jpg\", \"/storage/uploads/portfolios/post-story/p-1.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(44, 7, 2, 'cik2sx1757068482', 'Karana Instagram Post', NULL, '/storage/uploads/portfolios/post-story/p-2-m.jpg', NULL, '/storage/uploads/portfolios/post-story/p-2-m.jpg', '/storage/uploads/portfolios/post-story/p-2.jpg', '[\"/storage/uploads/portfolios/post-story/p-2-m.jpg\", \"/storage/uploads/portfolios/post-story/p-2.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(45, 7, 2, 'zcdvpu1757068483', 'Karana Instagram Post', NULL, '/storage/uploads/portfolios/post-story/p-3-m.jpg', NULL, '/storage/uploads/portfolios/post-story/p-3-m.jpg', '/storage/uploads/portfolios/post-story/p-3.jpg', '[\"/storage/uploads/portfolios/post-story/p-3-m.jpg\", \"/storage/uploads/portfolios/post-story/p-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(46, 7, 2, 'bcvzeh1757068484', 'Grad Instagram Post', NULL, '/storage/uploads/portfolios/post-story/p-4-m.jpg', NULL, '/storage/uploads/portfolios/post-story/p-4-m.jpg', '/storage/uploads/portfolios/post-story/p-4.jpg', '[\"/storage/uploads/portfolios/post-story/p-4-m.jpg\", \"/storage/uploads/portfolios/post-story/p-4.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(47, 7, 2, '5g29ij1757068485', 'Grad Instagram Post', NULL, '/storage/uploads/portfolios/post-story/p-5-m.jpg', NULL, '/storage/uploads/portfolios/post-story/p-5-m.jpg', '/storage/uploads/portfolios/post-story/p-5.jpg', '[\"/storage/uploads/portfolios/post-story/p-5-m.jpg\", \"/storage/uploads/portfolios/post-story/p-5.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(48, 7, 2, 'rfaoye1757068486', 'Swan Instagram Post', NULL, '/storage/uploads/portfolios/post-story/p-6-m.jpg', NULL, '/storage/uploads/portfolios/post-story/p-6-m.jpg', '/storage/uploads/portfolios/post-story/p-6.jpg', '[\"/storage/uploads/portfolios/post-story/p-6-2.jpg\", \"/storage/uploads/portfolios/post-story/p-6.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(49, 7, 2, 'ahj9701757068487', 'Vafa Rahimi Story', NULL, '/storage/uploads/portfolios/post-story/s-1-m.jpg', NULL, '/storage/uploads/portfolios/post-story/s-1-m.jpg', '/storage/uploads/portfolios/post-story/s-1.jpg', '[\"/storage/uploads/portfolios/post-story/s-1-m.jpg\", \"/storage/uploads/portfolios/post-story/s-1.jpg\", \"/storage/uploads/portfolios/post-story/s-1-2.jpg\", \"/storage/uploads/portfolios/post-story/s-1-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(50, 7, 2, 'iuye2p1757068488', 'Paramount Story', NULL, '/storage/uploads/portfolios/post-story/s-2-m.jpg', NULL, '/storage/uploads/portfolios/post-story/s-2-m.jpg', '/storage/uploads/portfolios/post-story/s-2.jpg', '[\"/storage/uploads/portfolios/post-story/s-2-m.jpg\", \"/storage/uploads/portfolios/post-story/s-2.jpg\", \"/storage/uploads/portfolios/post-story/s-2-2.jpg\", \"/storage/uploads/portfolios/post-story/s-2-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(51, 7, 2, 'cyolbh1757068489', 'Grad Brand Story', NULL, '/storage/uploads/portfolios/post-story/s-3-m.jpg', NULL, '/storage/uploads/portfolios/post-story/s-3-m.jpg', '/storage/uploads/portfolios/post-story/s-3.jpg', '[\"/storage/uploads/portfolios/post-story/s-3-m.jpg\", \"/storage/uploads/portfolios/post-story/s-3.jpg\", \"/storage/uploads/portfolios/post-story/s-3-2.jpg\", \"/storage/uploads/portfolios/post-story/s-3-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(52, 7, 2, 'd0s3f71757068490', 'Instagram Story', NULL, '/storage/uploads/portfolios/post-story/s-4-m.jpg', NULL, '/storage/uploads/portfolios/post-story/s-4-m.jpg', '/storage/uploads/portfolios/post-story/s-4.jpg', '[\"/storage/uploads/portfolios/post-story/s-4-m.jpg\", \"/storage/uploads/portfolios/post-story/s-4.jpg\", \"/storage/uploads/portfolios/post-story/s-4-2.jpg\", \"/storage/uploads/portfolios/post-story/s-4-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(53, 7, 2, '7mmjer1757068492', 'Instagram Story', NULL, '/storage/uploads/portfolios/post-story/s-5-m.jpg', NULL, '/storage/uploads/portfolios/post-story/s-5-m.jpg', '/storage/uploads/portfolios/post-story/s-5.jpg', '[\"/storage/uploads/portfolios/post-story/s-5-m.jpg\", \"/storage/uploads/portfolios/post-story/s-5.jpg\", \"/storage/uploads/portfolios/post-story/s-5-2.jpg\", \"/storage/uploads/portfolios/post-story/s-5-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(54, 8, 2, 'enmjqe1757068493', 'Art of Aesthetics Poster', NULL, '/storage/uploads/portfolios/poster/p-1-m.jpg', NULL, '/storage/uploads/portfolios/poster/p-1-m.jpg', '/storage/uploads/portfolios/poster/p-1.jpg', '[\"/storage/uploads/portfolios/poster/p-1-m.jpg\", \"/storage/uploads/portfolios/poster/p-1.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(55, 8, 2, '4w7yir1757068494', 'Grad Poster', NULL, '/storage/uploads/portfolios/poster/p-2-m.jpg', NULL, '/storage/uploads/portfolios/poster/p-2-m.jpg', '/storage/uploads/portfolios/poster/p-2.jpg', '[\"/storage/uploads/portfolios/poster/p-2-m.jpg\", \"/storage/uploads/portfolios/poster/p-2.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(56, 8, 2, 'zbbvhh1757068495', 'Karana Poster', NULL, '/storage/uploads/portfolios/poster/p-3-m.jpg', NULL, '/storage/uploads/portfolios/poster/p-3-m.jpg', '/storage/uploads/portfolios/poster/p-3.jpg', '[\"/storage/uploads/portfolios/poster/p-3-m.jpg\", \"/storage/uploads/portfolios/poster/p-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(57, 8, 2, 'zmxgsc1757068496', 'Human Resources Poster', NULL, '/storage/uploads/portfolios/poster/p-4-m.jpg', NULL, '/storage/uploads/portfolios/poster/p-4-m.jpg', '/storage/uploads/portfolios/poster/p-4.jpg', '[\"/storage/uploads/portfolios/poster/p-4-m.jpg\", \"/storage/uploads/portfolios/poster/p-4.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(58, 8, 2, 'banand1757068497', 'Engineer Zaban Poster', NULL, '/storage/uploads/portfolios/poster/p-5-m.jpg', NULL, '/storage/uploads/portfolios/poster/p-5-m.jpg', '/storage/uploads/portfolios/poster/p-5.jpg', '[\"/storage/uploads/portfolios/poster/p-5-m.jpg\", \"/storage/uploads/portfolios/poster/p-5.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(59, 8, 2, 'fisb481757068498', 'Behdid Glasses Banner', NULL, '/storage/uploads/portfolios/banner/s-1-m.jpg', NULL, '/storage/uploads/portfolios/banner/s-1-m.jpg', '/storage/uploads/portfolios/banner/s-1.jpg', '[\"/storage/uploads/portfolios/banner/s-1-m.jpg\", \"/storage/uploads/portfolios/banner/s-1.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(60, 8, 2, 'nbc2s21757068499', 'Karana Decor Banner', NULL, '/storage/uploads/portfolios/banner/s-2-m.jpg', NULL, '/storage/uploads/portfolios/banner/s-2-m.jpg', '/storage/uploads/portfolios/banner/s-2.jpg', '[\"/storage/uploads/portfolios/banner/s-2-m.jpg\", \"/storage/uploads/portfolios/banner/s-2.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(61, 8, 2, 'rpiiaq1757068500', 'Karana Decor Banner', NULL, '/storage/uploads/portfolios/banner/s-3-m.jpg', NULL, '/storage/uploads/portfolios/banner/s-3-m.jpg', '/storage/uploads/portfolios/banner/s-3.jpg', '[\"/storage/uploads/portfolios/banner/s-3-m.jpg\", \"/storage/uploads/portfolios/banner/s-3.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(62, 8, 2, 'hqn9xl1757068501', 'Behdid Glasses Website Banner', NULL, '/storage/uploads/portfolios/banner/s-4-m.jpg', NULL, '/storage/uploads/portfolios/banner/s-4-m.jpg', '/storage/uploads/portfolios/banner/s-4.jpg', '[\"/storage/uploads/portfolios/banner/s-4-m.jpg\", \"/storage/uploads/portfolios/banner/s-4.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(63, 8, 2, 'qvecoe1757068502', 'Barsa Seminar Banner', NULL, '/storage/uploads/portfolios/banner/s-5-m.jpg', NULL, '/storage/uploads/portfolios/banner/s-5-m.jpg', '/storage/uploads/portfolios/banner/s-5.jpg', '[\"/storage/uploads/portfolios/banner/s-5-m.jpg\", \"/storage/uploads/portfolios/banner/s-5.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(64, 8, 2, '7xbart1757068503', 'Helsa Website Banner', NULL, '/storage/uploads/portfolios/banner/s-6-m.jpg', NULL, '/storage/uploads/portfolios/banner/s-6-m.jpg', '/storage/uploads/portfolios/banner/s-6.jpg', '[\"/storage/uploads/portfolios/banner/s-6-m.jpg\", \"/storage/uploads/portfolios/banner/s-6.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(65, 8, 2, '19aipl1757068504', 'Behdid Glasses Website Banner', NULL, '/storage/uploads/portfolios/banner/s-7-m.jpg', NULL, '/storage/uploads/portfolios/banner/s-7-m.jpg', '/storage/uploads/portfolios/banner/s-7.jpg', '[\"/storage/uploads/portfolios/banner/s-7-m.jpg\", \"/storage/uploads/portfolios/banner/s-7.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(66, 8, 2, 'z6ql981757068505', 'Grad Website Banner', NULL, '/storage/uploads/portfolios/banner/s-8-m.jpg', NULL, '/storage/uploads/portfolios/banner/s-8-m.jpg', '/storage/uploads/portfolios/banner/s-8.jpg', '[\"/storage/uploads/portfolios/banner/s-8-m.jpg\", \"/storage/uploads/portfolios/banner/s-8.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(67, 8, 2, '8on6em1757068506', 'Barsa E-Government Banner', NULL, '/storage/uploads/portfolios/banner/s-9-m.jpg', NULL, '/storage/uploads/portfolios/banner/s-9-m.jpg', '/storage/uploads/portfolios/banner/s-9.jpg', '[\"/storage/uploads/portfolios/banner/s-9-m.jpg\", \"/storage/uploads/portfolios/banner/s-9.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(68, 8, 2, 'tb43ud1757068507', 'Samira Shop Website Banner', NULL, '/storage/uploads/portfolios/banner/s-10-m.jpg', NULL, '/storage/uploads/portfolios/banner/s-10-m.jpg', '/storage/uploads/portfolios/banner/s-10.jpg', '[\"/storage/uploads/portfolios/banner/s-10-m.jpg\", \"/storage/uploads/portfolios/banner/s-10.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(69, 1, 1, 'azubqt1757068508', '123Parse Design Website', NULL, '/storage/uploads/portfolios/website/123parse-m-1.jpg', NULL, '/storage/uploads/portfolios/website/123pare.jpg', '/storage/uploads/portfolios/website/123parse-mobile.jpg', '[\"/storage/uploads/portfolios/website/123parse-m-1.jpg\", \"/storage/uploads/portfolios/website/123parse-m-2.jpg\", \"/storage/uploads/portfolios/website/123parse-m-3.jpg\"]', 'https://123parse.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(70, 1, 1, 'hg2cgk1757068509', 'IsIran Website Design', NULL, '/storage/uploads/portfolios/website/isiran-m-1.jpg', NULL, '/storage/uploads/portfolios/website/isiran.jpg', '/storage/uploads/portfolios/website/isiran-mobile.jpg', '[\"/storage/uploads/portfolios/website/isiran-m-1.jpg\", \"/storage/uploads/portfolios/website/isiran-m-2.jpg\", \"/storage/uploads/portfolios/website/isiran-m-3.jpg\"]', 'https://ir-repair.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(71, 1, 1, 'wizioi1757068510', 'SwanFarm Website Design', NULL, '/storage/uploads/portfolios/website/swans-m-1.jpg', NULL, '/storage/uploads/portfolios/website/swans.jpg', '/storage/uploads/portfolios/website/swans.jpg', '[\"/storage/uploads/portfolios/website/swans-m-1.jpg\", \"/storage/uploads/portfolios/website/swans-m-2.jpg\", \"/storage/uploads/portfolios/website/swans-m-3.jpg\"]', 'https://swansfarm.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(72, 1, 1, 'djplcx1757068511', 'Barsa Novin Ray Website Design', NULL, '/storage/uploads/portfolios/website/barsa-m-1.jpg', NULL, '/storage/uploads/portfolios/website/barsa.jpg', '/storage/uploads/portfolios/website/barsa-mobile.jpg', '[\"/storage/uploads/portfolios/website/barsa-m-1.jpg\", \"/storage/uploads/portfolios/website/barsa-m-2.jpg\", \"/storage/uploads/portfolios/website/barsa-m-3.jpg\"]', 'https://barsasoft.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(73, 1, 1, 'a9kaux1757068512', 'Barsa Educational Website Design', NULL, '/storage/uploads/portfolios/website/barsa-training-m-1.jpg', NULL, '/storage/uploads/portfolios/website/barsa-training.jpg', '/storage/uploads/portfolios/website/barsa-training-mobile.jpg', '[\"/storage/uploads/portfolios/website/barsa-training-m-1.jpg\", \"/storage/uploads/portfolios/website/barsa-training-m-2.jpg\", \"/storage/uploads/portfolios/website/barsa-training-m-3.jpg\"]', 'https://training.barsasoft.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(74, 1, 1, '1uveu21757068513', 'Paytakht Imaging Center Website Design', NULL, '/storage/uploads/portfolios/website/paytakht-m-1.jpg', NULL, '/storage/uploads/portfolios/website/paytakht.jpg', '/storage/uploads/portfolios/website/paytakht-mobile.jpg', '[\"/storage/uploads/portfolios/website/paytakht-m-1.jpg\", \"/storage/uploads/portfolios/website/paytakht-m-2.jpg\", \"/storage/uploads/portfolios/website/paytakht-m-3.jpg\"]', 'https://paytakht-mic.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(75, 1, 1, 'cpelpp1757068514', 'Orchid Cosmos Website Design', NULL, '/storage/uploads/portfolios/website/orchidcoms-m-1.jpg', NULL, '/storage/uploads/portfolios/website/orchidcoms.jpg', '/storage/uploads/portfolios/website/orchidcoms-mpbile.jpg', '[\"/storage/uploads/portfolios/website/orchidcoms-m-1.jpg\", \"/storage/uploads/portfolios/website/orchidcoms-m-2.jpg\", \"/storage/uploads/portfolios/website/orchidcoms-m-3.jpg\"]', 'https://orchidcosms.com/', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(76, 1, 1, 'auju2b1757068515', 'MollaSadra Registration Website Design', NULL, '/storage/uploads/portfolios/website/sabt-mollasadra-m-1.jpg', NULL, '/storage/uploads/portfolios/website/sabt-mollasadra.jpg', '/storage/uploads/portfolios/website/sabt-mollasadra.jpg', '[\"/storage/uploads/portfolios/website/sabt-mollasadra-m-1.jpg\", \"/storage/uploads/portfolios/website/sabt-mollasadra-m-2.jpg\", \"/storage/uploads/portfolios/website/sabt-mollasadra-m-3.jpg\"]', 'https://sabtmollasadra.com/', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(77, 1, 1, 'on9i9s1757068516', 'Ipecoy Website Design', NULL, '/storage/uploads/portfolios/website/epicoy-m-1.jpg', NULL, '/storage/uploads/portfolios/website/epicoy.jpg', '/storage/uploads/portfolios/website/epicoy-mobile.jpg', '[\"/storage/uploads/portfolios/website/epicoy-m-1.jpg\", \"/storage/uploads/portfolios/website/epicoy-m-2.jpg\", \"/storage/uploads/portfolios/website/epicoy-m-3.jpg\"]', 'https://epicoy.com/', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(78, 1, 1, 'scsunu1757068517', 'Mother Ultrasound Website Design', NULL, '/storage/uploads/portfolios/website/mothersono-m-1.jpg', NULL, '/storage/uploads/portfolios/website/mothersono.jpg', '/storage/uploads/portfolios/website/mothersono-mobile.jpg', '[\"/storage/uploads/portfolios/website/mothersono-m-1.jpg\", \"/storage/uploads/portfolios/website/mothersono-m-2.jpg\", \"/storage/uploads/portfolios/website/mothersono-m-3.jpg\"]', 'https://mothersono.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(79, 1, 1, 'ulncxr1757068518', 'SwanFarm Website Design', NULL, '/storage/uploads/portfolios/website/swansfarm-m-1.jpg', NULL, '/storage/uploads/portfolios/website/swansfarm.jpg', '/storage/uploads/portfolios/website/swansfarm-mobile.jpg', '[\"/storage/uploads/portfolios/website/swansfarm-m-1.jpg\", \"/storage/uploads/portfolios/website/swansfarm-m-2.jpg\", \"/storage/uploads/portfolios/website/swansfarm-m-3.jpg\"]', 'https://swansfarm.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(80, 1, 1, 'ezq3j21757068519', 'Nuivestone Website Design', NULL, '/storage/uploads/portfolios/website/nuivestone-m-1.jpg', NULL, '/storage/uploads/portfolios/website/nuivestone.jpg', '/storage/uploads/portfolios/website/nuivestone-mobile.jpg', '[\"/storage/uploads/portfolios/website/nuivestone-m-1.jpg\", \"/storage/uploads/portfolios/website/nuivestone-m-2.jpg\", \"/storage/uploads/portfolios/website/nuivestone-m-3.jpg\"]', 'https://nivestone.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(81, 1, 1, 'k1uwzb1757068520', 'Euroasia Website Design', NULL, '/storage/uploads/portfolios/website/euroasia-m-1.jpg', NULL, '/storage/uploads/portfolios/website/euroasia.jpg', '/storage/uploads/portfolios/website/euroasia-mobile.jpg', '[\"/storage/uploads/portfolios/website/euroasia-m-1.jpg\"]', 'https://euroasia.molasadra.holdings', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(82, 1, 1, '5dcn9t1757068521', 'Expo Exhibition Website Design', NULL, '/storage/uploads/portfolios/website/expo-m-1.jpg', NULL, '/storage/uploads/portfolios/website/expo.jpg', '/storage/uploads/portfolios/website/expo-mobie.jpg', '[\"/storage/uploads/portfolios/website/expo-m-1.jpg\", \"/storage/uploads/portfolios/website/expo-m-2.jpg\"]', 'https://expo.molasadra.holdings', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(83, 1, 1, 'lq3wgz1757068522', 'Pad Render Website Design', NULL, '/storage/uploads/portfolios/website/pudrender-m-1.jpg', NULL, '/storage/uploads/portfolios/website/pudrender-mobile.jpg', '/storage/uploads/portfolios/website/pudrender-mobile.jpg', '[\"/storage/uploads/portfolios/website/pudrender-m-1.jpg\", \"/storage/uploads/portfolios/website/pudrender-m-2.jpg\", \"/storage/uploads/portfolios/website/pudrender-m-3.jpg\"]', 'https://pudrender.ir', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(84, 1, 1, 'qf1ijg1757068523', 'Merit Market Website Design', NULL, '/storage/uploads/portfolios/website/merit-m-1.jpg', NULL, '/storage/uploads/portfolios/website/merit.jpg', '/storage/uploads/portfolios/website/merit-mobile.jpg', '[\"/storage/uploads/portfolios/website/merit-m-1.jpg\", \"/storage/uploads/portfolios/website/merit-m-2.jpg\", \"/storage/uploads/portfolios/website/merit-m-3.jpg\"]', 'https://meritmarket.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(85, 1, 1, 'putuoe1757068524', 'vavijeh Ahil Website Design', NULL, '/storage/uploads/portfolios/website/vavijeahil-m-1.jpg', NULL, '/storage/uploads/portfolios/website/vavijeahil.jpg', '/storage/uploads/portfolios/website/vavijeahil-mobile.jpg', '[\"/storage/uploads/portfolios/website/vavijeahil-m-1.jpg\", \"/storage/uploads/portfolios/website/vavijeahil-m-2.jpg\", \"/storage/uploads/portfolios/website/vavijeahil-m-3.jpg\"]', 'https://vavihehahil.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(86, 1, 1, 'i6iid01757068525', 'Eskan Pars Website Design', NULL, '/storage/uploads/portfolios/website/eskanpars-m-1.jpg', NULL, '/storage/uploads/portfolios/website/eskanpars.jpg', '/storage/uploads/portfolios/website/eskanpars-mobile.jpg', '[\"/storage/uploads/portfolios/website/eskanpars-m-1.jpg\", \"/storage/uploads/portfolios/website/eskanpars-m-2.jpg\", \"/storage/uploads/portfolios/website/eskanpars-m-3.jpg\"]', 'https://eskanpars.ir', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(87, 1, 1, '1evi6m1757068526', 'Rasha Clinic Website Design', NULL, '/storage/uploads/portfolios/website/rashaclinic-m-1.jpg', NULL, '/storage/uploads/portfolios/website/rashaclinic.jpg', '/storage/uploads/portfolios/website/rashaclinic-mobile.jpg', '[\"/storage/uploads/portfolios/website/rashaclinic-m-1.jpg\", \"/storage/uploads/portfolios/website/rashaclinic-m-2.jpg\", \"/storage/uploads/portfolios/website/rashaclinic-m-3.jpg\"]', 'https://rasha-clinic.com', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(88, 1, 1, 'wkc1wg1757068527', 'Givland Website Design', NULL, '/storage/uploads/portfolios/website/givland-m-1.jpg', NULL, '/storage/uploads/portfolios/website/givland.jpg', '/storage/uploads/portfolios/website/givland-mobile.jpg', '[\"/storage/uploads/portfolios/website/givland-m-1.jpg\", \"/storage/uploads/portfolios/website/givland-m-2.jpg\", \"/storage/uploads/portfolios/website/givland-m-3.jpg\"]', 'https://govland.ir', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(89, 1, 1, 'xzffds1757068528', 'Ab-Tech Website Design', NULL, '/storage/uploads/portfolios/website/abtec-m-1.jpg', NULL, '/storage/uploads/portfolios/website/abtec.jpg', '/storage/uploads/portfolios/website/abtec-mobile.jpg', '[\"/storage/uploads/portfolios/website/abtec-m-1.jpg\", \"/storage/uploads/portfolios/website/abtec-m-2.jpg\", \"/storage/uploads/portfolios/website/abtec-m-3.jpg\"]', 'https://abtec-co.ir', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(90, 1, 1, 'fwgat11757068529', 'Coin City Website Design', NULL, '/storage/uploads/portfolios/website/shareseke-m-1.jpg', NULL, '/storage/uploads/portfolios/website/shareseke.jpg', '/storage/uploads/portfolios/website/shareseke-mobile.jpg', '[\"/storage/uploads/portfolios/website/shareseke-m-1.jpg\", \"/storage/uploads/portfolios/website/shareseke-m-2.jpg\", \"/storage/uploads/portfolios/website/shareseke-m-3.jpg\"]', 'http://shahresekeh.com/', 'web', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(91, 6, 2, 'frw1um1757068530', 'Bamahaha Cafe QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-12-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-12-m.jpg', '/storage/uploads/portfolios/qr-code/q-12.jpg', '[\"/storage/uploads/portfolios/qr-code/q-12-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-12.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(92, 6, 2, 'hxkkr01757068531', 'Risen Devil Escape Room QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-13-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-13-m.jpg', '/storage/uploads/portfolios/qr-code/q-13.jpg', '[\"/storage/uploads/portfolios/qr-code/q-13-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-13.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(96, 6, 2, 'othcw91757068533', 'Sara Bread QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-14-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-14-m.jpg', '/storage/uploads/portfolios/qr-code/q-14.jpg', '[\"/storage/uploads/portfolios/qr-code/q-14-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-14.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(97, 6, 2, 'c0m80x1757068534', 'Masturan Gallery QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-15-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-15-m.jpg', '/storage/uploads/portfolios/qr-code/q-15.jpg', '[\"/storage/uploads/portfolios/qr-code/q-15-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-15.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(98, 6, 2, 'm5mha61757068535', 'QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-16-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-16-m.jpg', '/storage/uploads/portfolios/qr-code/q-16.jpg', '[\"/storage/uploads/portfolios/qr-code/q-16-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-16.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(99, 6, 2, '5skhzj1757068536', 'Ruhani Sculpture QR Code', NULL, '/storage/uploads/portfolios/qr-code/q-17-m.jpg', NULL, '/storage/uploads/portfolios/qr-code/q-17-m.jpg', '/storage/uploads/portfolios/qr-code/q-17.jpg', '[\"/storage/uploads/portfolios/qr-code/q-17-m.jpg\", \"/storage/uploads/portfolios/qr-code/q-17.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(101, 3, 2, '5pm4zu1757068537', 'MNM Business Card', NULL, '/storage/uploads/portfolios/visit-card/v-8.jpg', NULL, '/storage/uploads/portfolios/visit-card/v-8.jpg', '/storage/uploads/portfolios/visit-card/v-8-front.jpg', '[\"/storage/uploads/portfolios/visit-card/v-8.jpg\", \"/storage/uploads/portfolios/visit-card/v-8-front.jpg\"]', NULL, 'graphic', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(103, 9, 2, 'bydzm61757068538', 'Store Introduction Reel', NULL, '/storage/uploads/portfolios/videos/balsa-1.jpg', '/storage/uploads/portfolios/videos/balsa-1.mp4', '/storage/uploads/portfolios/videos/balsa-1.jpg', NULL, '[]', NULL, 'video', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(104, 9, 2, 'ozclld1757068539', 'Product Introduction Reel', NULL, '/storage/uploads/portfolios/videos/balsa-2.jpg', '/storage/uploads/portfolios/videos/balsa-2.mp4', NULL, NULL, '[]', NULL, 'video', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(105, 9, 2, '2vicni1757068540', 'Product Introduction Reel', NULL, '/storage/uploads/portfolios/videos/balsa-3.jpg', '/storage/uploads/portfolios/videos/balsa-3.mp4', NULL, NULL, '[]', NULL, 'video', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(106, 9, 2, '1mljza1757068541', 'Store Products Introduction Reel', NULL, '/storage/uploads/portfolios/videos/balsa-4.jpg', '/storage/uploads/portfolios/videos/balsa-4.mp4', NULL, NULL, '[]', NULL, 'video', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(107, 9, 2, 'nnahi31757068542', 'Introduction Reel', NULL, '/storage/uploads/portfolios/videos/balsa-5.jpg', '/storage/uploads/portfolios/videos/balsa-5.mp4', NULL, NULL, '[]', NULL, 'video', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(108, 9, 2, '54xfnn1757068543', 'Products Reel', NULL, '/storage/uploads/portfolios/videos/balsa-6.jpg', '/storage/uploads/portfolios/videos/balsa-6.mp4', NULL, NULL, '[]', NULL, 'video', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(109, 9, 2, '28ridn1757068544', 'Store Introduction Story', NULL, '/storage/uploads/portfolios/videos/balsa-7.jpg', '/storage/uploads/portfolios/videos/balsa-7.mp4', NULL, NULL, '[]', NULL, 'video', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(110, 9, 2, 'tmdrol1757068545', 'Iran Story', NULL, '/storage/uploads/portfolios/videos/balsa-8.jpg', '/storage/uploads/portfolios/videos/balsa-8.mp4', NULL, NULL, '[]', NULL, 'video', '2025-09-04 07:29:57', '2025-09-04 07:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_groups`
--

CREATE TABLE `portfolio_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_groups`
--

INSERT INTO `portfolio_groups` (`id`, `title`, `slug`, `featured_image`, `body`, `excerpt`, `created_at`, `updated_at`) VALUES
(1, 'web design', 'gr-port-1757008782', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(2, 'office sets', 'gr-port-1757009128', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(3, 'visit card', 'gr-port-1757009141', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(4, 'graphic designs', 'gr-port-1757009153', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(5, 'logo', 'gr-port-1757009183', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(6, 'QR code', 'gr-port-1757009203', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(7, 'social media', 'gr-port-1757009211', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(8, 'banner and poster', 'gr-port-1757009223', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(9, 'video and reels', 'gr-port-1757009237', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(10, 'application', 'gr-port-1757009249', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(11, 'custom cms', 'gr-port-1757009259', NULL, NULL, NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_group_service`
--

CREATE TABLE `portfolio_group_service` (
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_group_service`
--

INSERT INTO `portfolio_group_service` (`service_id`, `group_id`) VALUES
(2, 1),
(5, 1),
(6, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(3, 5),
(1, 6),
(4, 6),
(1, 7),
(1, 8),
(7, 10),
(2, 11),
(6, 11);

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
(1, 'contact', NULL, 'contact', 0, 0, 1, '2025-09-09 00:55:03', '2025-09-09 00:56:20');

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
  `indexable` enum('index','noindex') NOT NULL DEFAULT 'index',
  `followable` enum('follow','nofollow') NOT NULL DEFAULT 'follow',
  `seo_type` varchar(255) NOT NULL DEFAULT 'WebPage',
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_models`
--

INSERT INTO `seo_models` (`id`, `model_type`, `model_id`, `title`, `description`, `keywords`, `conical_url`, `indexable`, `followable`, `seo_type`, `schema`, `created_at`, `updated_at`) VALUES
(2, 'Lareon\\Modules\\Page\\App\\Models\\Page', 2, 'blog', NULL, '[\"\"]', 'http://127.0.0.1:8000/blog', 'index', 'follow', 'webPag', '[]', '2025-06-19 07:10:07', '2025-06-19 07:10:07'),
(3, 'Lareon\\Modules\\Page\\App\\Models\\Page', 3, 'services', NULL, '[\"\"]', 'http://127.0.0.1:8000/services', 'index', 'follow', 'webPag', '[]', '2025-06-19 07:10:07', '2025-06-19 07:10:07'),
(10, 'Lareon\\Modules\\Page\\App\\Models\\Page', 10, 'contact', NULL, '[\"\"]', 'http://127.0.0.1:8000/contact', 'index', 'follow', 'webPag', '[]', '2025-06-19 07:10:07', '2025-06-19 07:10:07'),
(11, 'Lareon\\Modules\\Page\\App\\Models\\Page', 11, 'about', 'llaratek is goog', '[\"laravel\", \"laratek\", \"lareon\"]', 'http://127.0.0.1:8000/about', 'index', 'follow', 'webPag', '[]', '2025-06-19 07:10:07', '2025-06-19 07:10:07'),
(12, 'Lareon\\Modules\\Page\\App\\Models\\Page', 12, 'consultation', NULL, '[\"\"]', 'http://127.0.0.1:8000/consultation', 'index', 'follow', 'webPag', '[]', '2025-06-19 07:10:07', '2025-06-19 07:10:07'),
(13, 'Lareon\\Modules\\Service\\App\\Models\\Service', 1, NULL, NULL, '[\"\"]', NULL, 'index', 'follow', 'webPage', '[]', '2025-09-13 02:39:40', '2025-09-13 02:39:40'),
(14, 'Lareon\\Modules\\Service\\App\\Models\\Service', 2, NULL, NULL, '[\"\"]', NULL, 'index', 'follow', 'webPage', '[]', '2025-09-13 02:57:24', '2025-09-13 02:57:24'),
(15, 'Lareon\\Modules\\Service\\App\\Models\\Service', 3, NULL, NULL, '[\"\"]', NULL, 'index', 'follow', 'webPage', '[]', '2025-09-13 03:11:22', '2025-09-13 03:11:22'),
(16, 'Lareon\\Modules\\Service\\App\\Models\\Service', 4, NULL, NULL, '[\"\"]', NULL, 'index', 'follow', 'webPage', '[]', '2025-09-13 03:32:09', '2025-09-13 03:32:09'),
(17, 'Lareon\\Modules\\Service\\App\\Models\\Service', 5, NULL, NULL, '[\"\"]', NULL, 'index', 'follow', 'webPage', '[]', '2025-09-13 03:49:06', '2025-09-13 03:49:06'),
(18, 'Lareon\\Modules\\Service\\App\\Models\\Service', 6, NULL, NULL, '[\"\"]', NULL, 'index', 'follow', 'webPage', '[]', '2025-09-13 04:08:05', '2025-09-13 04:08:05'),
(19, 'Lareon\\Modules\\Service\\App\\Models\\Service', 7, NULL, NULL, '[\"\"]', NULL, 'index', 'follow', 'webPage', '[]', '2025-09-13 04:22:21', '2025-09-13 04:22:21'),
(20, 'Lareon\\Modules\\Service\\App\\Models\\Service', 8, NULL, NULL, '[\"\"]', NULL, 'index', 'follow', 'webPage', '[]', '2025-09-13 04:52:58', '2025-09-13 04:52:58');

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
  `active` timestamp NULL DEFAULT '2025-09-13 01:57:57',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_sitemaps`
--

INSERT INTO `seo_sitemaps` (`id`, `model_type`, `model_id`, `group`, `url`, `priority`, `changefreq`, `lastmod`, `image`, `video`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Lareon\\Modules\\Page\\App\\Models\\Page', 2, 'pages', 'http://127.0.0.1:8000/blog', 0.5, 'weekly', '2025-06-19 09:57:03', '[null]', NULL, '2025-06-19 07:10:07', '2025-06-19 07:10:07', '2025-06-19 07:10:07'),
(3, 'Lareon\\Modules\\Page\\App\\Models\\Page', 3, 'pages', 'http://127.0.0.1:8000/services', 0.5, 'yearly', '2025-06-19 09:57:03', '[null]', NULL, '2025-06-19 07:10:07', '2025-06-19 07:10:07', '2025-06-19 07:10:07'),
(10, 'Lareon\\Modules\\Page\\App\\Models\\Page', 10, 'pages', 'http://127.0.0.1:8000/contact', 0.5, 'yearly', '2025-06-19 09:57:03', '[null]', NULL, '2025-06-19 07:10:07', '2025-06-19 07:10:07', '2025-06-19 07:10:07'),
(11, 'Lareon\\Modules\\Page\\App\\Models\\Page', 11, 'pages', 'http://127.0.0.1:8000/about', 0.5, 'yearly', '2025-06-19 10:05:53', '[null]', NULL, '2025-06-19 07:10:07', '2025-06-19 07:10:07', '2025-06-19 07:10:07'),
(12, 'Lareon\\Modules\\Page\\App\\Models\\Page', 12, 'pages', 'http://127.0.0.1:8000/consultation', 0.5, 'yearly', '2025-06-19 09:58:10', '[null]', NULL, '2025-06-19 07:10:07', '2025-06-19 07:10:07', '2025-06-19 07:10:07'),
(13, 'Lareon\\Modules\\Service\\App\\Models\\Service', 1, 'services', 'http://lareon.test/services/graphic-design', 0.5, 'hourly', '2025-09-13 02:39:40', '[]', NULL, '2025-09-04 07:29:57', '2025-09-13 02:39:40', '2025-09-13 02:39:40'),
(14, 'Lareon\\Modules\\Service\\App\\Models\\Service', 2, 'services', 'http://lareon.test/services/web-design', 0.5, 'hourly', '2025-09-14 02:18:13', '[]', NULL, '2025-09-04 07:29:57', '2025-09-13 02:57:24', '2025-09-14 02:18:13'),
(15, 'Lareon\\Modules\\Service\\App\\Models\\Service', 3, 'services', 'http://lareon.test/services/logo-design', 0.5, 'hourly', '2025-09-14 04:18:10', '[]', NULL, '2025-09-10 02:03:33', '2025-09-13 03:11:22', '2025-09-14 04:18:10'),
(16, 'Lareon\\Modules\\Service\\App\\Models\\Service', 4, 'services', 'http://lareon.test/services/qr-code', 0.5, 'hourly', '2025-09-14 04:52:32', '[]', NULL, '2025-09-10 05:22:55', '2025-09-13 03:32:09', '2025-09-14 04:52:32'),
(17, 'Lareon\\Modules\\Service\\App\\Models\\Service', 5, 'services', 'http://lareon.test/services/wordpress', 0.5, 'hourly', '2025-09-14 07:38:28', '[]', NULL, '2025-09-10 06:22:50', '2025-09-13 03:49:06', '2025-09-14 07:38:28'),
(18, 'Lareon\\Modules\\Service\\App\\Models\\Service', 6, 'services', 'http://lareon.test/services/custom-cms', 0.5, 'hourly', '2025-09-13 04:08:05', '[]', NULL, '2025-09-10 07:31:11', '2025-09-13 04:08:05', '2025-09-13 04:08:05'),
(19, 'Lareon\\Modules\\Service\\App\\Models\\Service', 7, 'services', 'http://lareon.test/services/web-application', 0.5, 'yearly', '2025-09-13 04:22:20', '[]', NULL, '2025-09-13 04:22:20', '2025-09-13 04:22:20', '2025-09-13 04:22:21'),
(20, 'Lareon\\Modules\\Service\\App\\Models\\Service', 8, 'services', 'http://lareon.test/services/catalog', 0.5, 'yearly', '2025-09-13 04:54:15', '[]', NULL, '2025-09-13 04:52:58', '2025-09-13 04:52:58', '2025-09-13 04:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `seo_site_en`
--

CREATE TABLE `seo_site_en` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`value`)),
  `state` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`features`)),
  `callouts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`callouts`)),
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `template` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `excerpt`, `introduction`, `body`, `featured_image`, `banner`, `features`, `callouts`, `team_id`, `template`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'graphic design', 'graphic-design', NULL, '<p>\r\nAt LARATEK, we transform your ideas into powerful visuals through innovative and effective graphic design. Every project is carefully crafted to reflect your brand identity while capturing attention and inspiring engagement. Whether you’re a startup building your presence or an established business refreshing your look, our designs deliver clarity, impact, and lasting impression. By blending modern design trends with strategic thinking, we create visuals that are not only aesthetically striking but also aligned with your business goals. With LARATEK, your brand’s story is told through designs that connect, inspire, and stand out.\r\n</p>', '<p>\r\nAt LARATEK, we transform your ideas into powerful visuals through innovative and effective graphic design. Every project is carefully crafted to reflect your brand identity while capturing attention and inspiring engagement. Whether you’re a startup building your presence or an established business refreshing your look, our designs deliver clarity, impact, and lasting impression. By blending modern design trends with strategic thinking, we create visuals that are not only aesthetically striking but also aligned with your business goals. With LARATEK, your brand’s story is told through designs that connect, inspire, and stand out.\r\n</p><h2>\r\nUnderstanding Graphic Design and Its Importance\r\n</h2>\r\n<p>\r\nGraphic design is the art and practice of combining text, images, colors, and layouts to communicate ideas visually. It plays a crucial role in branding, marketing, and digital communication, helping businesses deliver messages that are both effective and memorable. Good graphic design not only enhances aesthetics but also improves user experience and strengthens a brand’s identity.\r\n</p>\r\n<h3>\r\nLogo Design\r\n</h3>\r\n<p>\r\nA logo is the foundation of a brand’s identity. It is a symbol that represents the business and creates instant recognition. Professional logo design focuses on simplicity, versatility, and memorability to ensure it works across different platforms and materials.\r\n</p>\r\n<h3>\r\nBrand Identity Design\r\n</h3>\r\n<p>\r\nBeyond a logo, brand identity includes color schemes, typography, patterns, and guidelines that ensure consistency in all visual materials. A strong identity helps businesses build trust and maintain a cohesive presence across online and offline channels.\r\n</p>\r\n<h3>\r\nPrint Design\r\n</h3>\r\n<p>\r\nPrint design includes business cards, brochures, posters, flyers, and banners. Despite the digital shift, print materials remain an effective way to reach audiences at events, in stores, or through direct marketing. Quality design ensures printed materials leave a professional and lasting impression.\r\n</p>\r\n<h3>\r\nDigital and Web Graphics\r\n</h3>\r\n<p>\r\nDigital design covers a wide range of online assets such as website banners, social media posts, email templates, and digital ads. These designs need to be optimized for screen viewing while remaining visually appealing and aligned with brand guidelines.\r\n</p>\r\n<h3>\r\nSocial Media Graphics\r\n</h3>\r\n<p>\r\nWith the growing importance of platforms like Instagram, Facebook, and LinkedIn, social media graphics play a vital role in engaging audiences. Well-designed templates and visuals boost brand visibility and help maintain a consistent style across posts and campaigns.\r\n</p>\r\n<h3>\r\nInfographics\r\n</h3>\r\n<p>\r\nInfographics are visual tools that present complex data or processes in a simple, engaging way. They combine illustrations, icons, and concise text to make information easy to understand and share.\r\n</p>\r\n<h3>\r\nPoster and Banner Design\r\n</h3>\r\n<p>\r\nPosters and banners are commonly used for advertising, promotions, or events. Their effectiveness relies on bold typography, strong imagery, and clear messaging that captures attention quickly.\r\n</p>\r\n<h3>\r\nQR Code and Innovative Designs\r\n</h3>\r\n<p>\r\nModern graphic design also includes interactive and innovative solutions like QR codes, AR elements, and dynamic visuals. These tools bridge the gap between offline and online marketing, enhancing user interaction and engagement.\r\n</p>\r\n<h2>\r\nHow LARATEK Delivers Graphic Design\r\n</h2>\r\n<p>\r\nAt LARATEK, we approach graphic design with both creativity and strategy. Every project begins with understanding your brand, audience, and goals. We then create tailored designs — from logos and brand identities to print and digital assets — that ensure consistency and impact. Our focus is on delivering designs that not only look professional but also help your business communicate effectively and grow.\r\n</p>', '/storage/uploads/services/graphic-featured_image.jpg', '/storage/uploads/banners/bg-graphic.jpg', '[{\"title\":\"Creative Graphic Design\",\"image\":\"\\/storage\\/uploads\\/services\\/graphic-intro.svg\",\"body\":\"We create visually compelling designs that merge creativity with purpose. From logos to digital assets, every element is crafted to deliver your message with clarity and impact.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Engaging Visual Experiences\",\"image\":\"\\/storage\\/uploads\\/services\\/graphic-creative.svg\",\"body\":\"We design graphics that not only capture attention but also invite interaction. Our work blends creativity with usability to create lasting connections with your audience.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Innovative Brand Identity\",\"image\":\"\\/storage\\/uploads\\/services\\/graphic-visual.jpg\",\"body\":\"We develop distinctive visual identities that strengthen your brand and stand out in today\\u2019s competitive market, combining bold ideas with modern aesthetics.\",\"link_title\":null,\"link_address\":null}]', '[{\"title\":null,\"image\":\"\\/storage\\/uploads\\/services\\/graphic-led.svg\",\"body\":\"Visuals that capture attention and leave a lasting impression.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Fast & Creative\",\"image\":null,\"body\":\"Smart design solutions crafted with style, speed, and precision to elevate your brand.\\\"\",\"link_title\":null,\"link_address\":null}]', 2, NULL, '2025-09-04 07:29:57', '2025-09-13 02:39:40', NULL),
(2, 'web desgin', 'web-design', NULL, '<p>\r\nAt LARATEK, we transform your vision into modern, functional, and user-friendly websites that truly reflect your brand identity. Every website we design is tailored to deliver an exceptional user experience, ensuring it is fast, responsive, and visually engaging across all devices. Whether you are a startup launching your first digital presence or an established business looking to enhance your online platform, our team combines the latest web technologies with strategic design thinking to create websites that perform seamlessly and look impressive. From wireframe to launch, we focus on delivering web solutions that are secure, scalable, and aligned with your business goals. With LARATEK, your brand comes alive online through websites that attract, engage, and convert visitors into loyal customers.\r\n</p>', '<h2>\r\nComprehensive Website Design Services\r\n</h2>\r\n<p>\r\nWebsite design is more than just visuals. It is about creating an online platform that is functional, responsive, user-friendly, and optimized for performance. At LARATEK, we offer a range of website design services tailored to your business needs, ensuring every project delivers an exceptional online experience.\r\n</p>\r\n<h3>\r\nWordPress Development\r\n</h3>\r\n<p>\r\nWordPress is a versatile and widely-used platform for building websites. We create custom WordPress themes and plugins designed specifically for your brand, allowing your website to be both unique and fully functional. Every WordPress site we develop is optimized for performance, secure, and easy to manage.\r\n</p>\r\n<h3>\r\nCustom CMS Solutions\r\n</h3>\r\n<p>\r\nFor clients with specific requirements, we design and build custom Content Management Systems (CMS). A custom CMS provides full control over website functionality, allowing businesses to manage content, users, and workflows efficiently. This solution is tailored to meet unique business needs and scalable for future growth.\r\n</p>\r\n<h3>\r\nResponsive & Mobile-Friendly Design\r\n</h3>\r\n<p>\r\nWith the increasing use of mobile devices, responsive design is crucial. Every website we design automatically adjusts to different screen sizes and devices, ensuring a seamless experience for all users. Our designs prioritize usability, readability, and intuitive navigation.\r\n</p>\r\n<h3>\r\nPerformance & Optimization\r\n</h3>\r\n<p>\r\nWebsite speed and performance are key factors for both user experience and search engine ranking. We optimize code, images, and assets, and implement best practices to ensure fast loading times, smooth interactions, and reliable performance across all platforms.\r\n</p>\r\n<h3>\r\nUser Experience & Accessibility\r\n</h3>\r\n<p>\r\nA great website should not only look good but also be easy and enjoyable to use. We focus on intuitive layouts, clear navigation, and accessible design that meets modern standards, ensuring all users can interact with your website effectively.\r\n</p>\r\n<h3>\r\nSecurity & Maintenance\r\n</h3>\r\n<p>\r\nProtecting your website and data is critical. We implement secure coding practices, regular updates, and maintenance strategies to safeguard your site from vulnerabilities and ensure it operates smoothly over time.\r\n</p>\r\n<h2>\r\nHow LARATEK Delivers Website Design\r\n</h2>\r\n<p>\r\nAt LARATEK, we combine creativity, technical expertise, and strategic thinking to deliver websites that perform, engage, and convert. Whether it’s a WordPress site, custom plugin, or fully custom CMS, every project is designed to meet your unique business goals while offering an exceptional user experience.\r\n</p>', '/storage/uploads/services/website-featured_image.jpg', '/storage/uploads/banners/bg-website.jpg', '[{\"title\":\"Responsive & Adaptive Design\",\"image\":\"\\/storage\\/uploads\\/services\\/website-responsive.svg\",\"body\":\"We optimize every aspect of your website for fast loading and smooth interactions. Our focus on performance ensures your visitors stay longer and enjoy a reliable, high-speed experience.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Performance & Speed\",\"image\":\"\\/storage\\/uploads\\/services\\/website-speed.jpg\",\"body\":\"We optimize every aspect of your website for fast loading and smooth interactions. Our focus on performance ensures your visitors stay longer and enjoy a reliable, high-speed experience.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Scalable & Future-Ready\",\"image\":\"\\/storage\\/uploads\\/services\\/website-scalable.jpg\",\"body\":\"Our websites are built with scalability and flexibility, allowing your platform to grow and adapt as your business evolves.\",\"link_title\":null,\"link_address\":null}]', '[{\"title\":null,\"image\":\"\\/storage\\/uploads\\/services\\/website-led.svg\",\"body\":\"Websites that attract attention and leave a lasting impression.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Built for Users\",\"image\":null,\"body\":\"Our websites are designed to be straightforward, responsive, and easy to use, making it simple for visitors to find what they need.\",\"link_title\":null,\"link_address\":null}]', 1, NULL, '2025-09-04 07:29:57', '2025-09-14 02:18:13', NULL),
(3, 'logo design', 'logo-design', NULL, '<p>\r\nAt LARATEK, we believe a logo is more than just a symbol—it is the cornerstone of your brand identity. A well-designed logo communicates your values, connects with your audience, and sets your business apart in a crowded market. We combine creativity with strategic thinking to create logos that are memorable, versatile, and impactful across all platforms, from digital media to print materials. Every element—from color palette and typography to iconography—is carefully considered to ensure your logo reflects your brand personality accurately. Whether launching a new brand or refreshing an existing one, our team crafts logos that tell your story and make a lasting impression. With LARATEK, your brand comes to life through a logo that is unique, professional, and designed to resonate with your audience.\r\n</p>', '<h2>\r\nWhat is a Logo and Why It Matters\r\n</h2>\r\n<p>\r\nA logo is the visual representation of a brand, company, or organization. It is often the first thing people notice and serves as the cornerstone of brand recognition. A strong logo communicates the values, personality, and purpose of a business in a single glance. Beyond aesthetics, logos help build trust, create loyalty, and distinguish your brand in a crowded market. A well-crafted logo not only leaves a lasting impression but also provides a foundation for your entire visual identity, influencing how your audience perceives your company across all platforms and materials.\r\n</p>\r\n<h3>\r\nTypes of Logos\r\n</h3>\r\n<p>\r\nLogos come in various styles, each serving a specific purpose:\r\n</p>\r\n<ul>\r\n<li>\r\n<h4>\r\nWordmark (Logotype)\r\n</h4>\r\n<p>\r\nA text-based logo using the full brand name with unique typography. This style emphasizes simplicity and clarity. Examples: Google, Coca-Cola, FedEx.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nLettermark (Monogram)\r\n</h4>\r\n<p>\r\nA logo made from the initials of a brand name, ideal for companies with long or complex names. Examples: IBM, HP, CNN.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nIcon or Symbol\r\n</h4>\r\n<p>\r\nA graphic symbol that represents the brand without text. This type often becomes instantly recognizable as a standalone image. Examples: Apple, Twitter, Nike.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nCombination Mark\r\n</h4>\r\n<p>\r\nA hybrid logo combining text and a symbol, offering versatility and multiple ways to use the brand identity. Examples: Adidas, Burger King, Doritos.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nEmblem\r\n</h4>\r\n<p>\r\nText integrated into a symbol, badge, or crest, often providing a traditional or formal look. Examples: Starbucks, Harley-Davidson, NFL logos.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nAbstract Logos\r\n</h4>\r\n<p>\r\nUnique geometric or conceptual symbols that do not directly represent objects but convey brand values creatively. Examples: Pepsi, BP, Mitsubishi.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nMascot Logos\r\n</h4>\r\n<p>\r\nLogos featuring a character or mascot that represents the brand and creates a friendly, approachable image. Examples: KFC, Michelin, Mailchimp.\r\n</p>\r\n</li>\r\n</ul>\r\n<h3>\r\nResponsive Logos\r\n</h3>\r\n<p>\r\nResponsive logos are designed to adapt seamlessly to different screen sizes and devices. With the rise of mobile and tablet browsing, it is essential that a logo remains legible, recognizable, and visually appealing on every platform. Responsive logos may have multiple versions or simplified elements for smaller screens, ensuring that the brand identity stays consistent while maintaining visual clarity. This approach helps businesses create a professional and cohesive presence across websites, social media, apps, and print materials.\r\n</p>\r\n<h2>\r\nHow LARATEK Creates Logos\r\n</h2>\r\n<p>\r\nAt LARATEK, we combine creativity, strategic thinking, and technical design expertise to craft logos that truly represent your brand. Our process includes in-depth research, conceptualization, and multiple iterations to ensure that your logo is not only aesthetically pleasing but also versatile and functional across all media. From the initial sketches to final digital files, we create logos that are memorable, meaningful, and ready to strengthen your brand identity online, in print, and across responsive platforms.\r\n</p>', '/storage/uploads/services/logo-featured_image.jpg', '/storage/uploads/banners/bg-logo.jpg', '[{\"title\":\"Memorable Brand Identity\",\"image\":\"\\/storage\\/uploads\\/services\\/logo-brand.svg\",\"body\":\"We craft logos that make a lasting impression, ensuring your brand stands out and is easily recognized by your audience.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Versatile & Scalable Designs\",\"image\":\"\\/storage\\/uploads\\/services\\/logo-versatile.svg\",\"body\":\"Our logos are designed to work across all mediums\\u2014digital, print, and responsive platforms\\u2014adapting seamlessly to every context.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Creative & Strategic Approach\",\"image\":\"\\/storage\\/uploads\\/services\\/logo-creative.jpg\",\"body\":\"We combine creativity with strategic thinking to create logos that not only look great but also communicate your brand\\u2019s values effectively.\",\"link_title\":null,\"link_address\":null}]', '[{\"title\":null,\"image\":\"\\/storage\\/uploads\\/services\\/logo-led.svg\",\"body\":\"Make your brand instantly recognizable\",\"link_title\":null,\"link_address\":null},{\"title\":\"Start with a Strong Logo\",\"image\":null,\"body\":\"Design a clear and simple logo that works in every format and communicates your brand effectively.\",\"link_title\":null,\"link_address\":null}]', 2, NULL, '2025-09-10 02:03:33', '2025-09-14 04:18:10', NULL),
(4, 'qr code design', 'qr-code', NULL, '<p>\r\nAt LARATEK, we create QR codes that are not only functional but also visually aligned with your brand identity. Every QR code we design is crafted to ensure seamless scanning while reflecting your company’s style and personality. Whether you need QR codes for marketing campaigns, product packaging, or digital interactions, our team combines creativity and technical precision to produce codes that are both practical and visually appealing. With LARATEK, your QR codes become an interactive bridge between your brand and your audience, enhancing engagement and providing a modern, memorable experience.\r\n</p>', '<h2>\r\nWhat is a QR Code and Why It Matters\r\n</h2>\r\n<p>\r\nA QR Code (Quick Response Code) is a two-dimensional barcode that stores information, which can be quickly scanned using a smartphone or QR reader. QR codes are widely used for linking to websites, sharing contact information, making payments, accessing apps, and engaging in marketing campaigns. They provide a fast and convenient way for users to interact with digital content, bridging the physical and digital worlds.\r\n</p>\r\n<h3>\r\nTypes of QR Codes\r\n</h3>\r\n<p>\r\nThere are several types of QR codes, each serving a specific purpose:\r\n</p>\r\n<ul>\r\n<li>\r\n<p>\r\n<strong>Static QR Codes </strong> – Contain fixed information that cannot be changed after generation. Ideal for business cards, product packaging, or static content.    \r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Dynamic QR Codes </strong> – Allow editing the linked content even after printing or distribution. Perfect for marketing campaigns, promotions, or events where information may change.    \r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>vCard QR Codes </strong> – Store contact information for easy saving directly to a smartphone.    \r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Wi-Fi QR Codes </strong> – Enable users to connect to a Wi-Fi network instantly.    \r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Social Media QR Codes </strong> – Direct users to social media profiles or pages.    \r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Payment QR Codes </strong> – Facilitate secure and fast digital transactions.    \r\n</p>\r\n</li>\r\n</ul>\r\n<h3>\r\nTypes of QR Code Designs\r\n</h3>\r\n<P>\r\nQR Codes can also be customized in style and design to reflect brand identity. The main types include:\r\n</P>\r\n<ul>\r\n<li>\r\n<h4>\r\nLogo QR Code\r\n</h4>\r\n<p>\r\nA QR code that incorporates your logo or brand element into the design, maintaining scannability while enhancing brand recognition.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nArtistic QR Code\r\n</h4>\r\n<p>\r\nA visually creative QR code with patterns, colors, or illustrations, designed to stand out and attract attention while remaining functional.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nStandard QR Code\r\n</h4>\r\n<p>\r\nThe classic black-and-white design that focuses purely on functionality and reliability across all devices.\r\n</p>\r\n</li>\r\n</ul>\r\n<h2>\r\nHow LARATEK Designs QR Codes\r\n</h2>\r\n<p>\r\nAt LARATEK, we create QR codes that are fully functional, scannable, and visually aligned with your brand. Our team ensures that each code works flawlessly while incorporating design elements, colors, and styles that reflect your brand identity. We produce static, dynamic, logo, artistic, and standard QR codes for marketing, product packaging, events, and digital interactions, making every QR code a professional extension of your brand.\r\n</p>', '/storage/uploads/services/qrcode-featured_image.jpg', '/storage/uploads/banners/bg-qrcode.jpg', '[{\"title\":\"Interactive & Engaging Codes\",\"image\":\"\\/storage\\/uploads\\/services\\/qrcode-enage.svg\",\"body\":\"We design QR codes that encourage interaction, making it easy for your audience to connect with your brand and access your content.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Customizable & Brand-Aligned\",\"image\":\"\\/storage\\/uploads\\/services\\/qrcode-customize.svg\",\"body\":\"Our QR codes are fully customizable, incorporating brand colors, logos, and styles to ensure every code reflects your identity.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Reliable & Scannable\",\"image\":\"\\/storage\\/uploads\\/services\\/qrcode-scannable.jpg\",\"body\":\"We ensure each QR code works flawlessly across all devices, maintaining quick and accurate scanning for a seamless user experience.\",\"link_title\":null,\"link_address\":null}]', '[{\"title\":null,\"image\":\"\\/storage\\/uploads\\/services\\/qrcode-led.svg\",\"body\":\"Scan your brand into the future.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Make Every Scan Memorable\",\"image\":null,\"body\":\"Create QR codes that are clear, functional, and visually engaging, helping your audience interact effortlessly with your brand.\",\"link_title\":null,\"link_address\":null}]', 2, NULL, '2025-09-10 05:22:55', '2025-09-14 04:52:32', NULL),
(5, 'wordpress', 'wordpress', NULL, '<p>\r\nAt LARATEK, we specialize in creating WordPress websites tailored to your business needs. We work with both ready-made and custom WordPress themes to deliver a site that matches your brand identity perfectly. Additionally, we develop custom plugins to add unique functionality and enhance the performance of your website. Every website we build is visually appealing, responsive, and optimized for an exceptional user experience. With LARATEK, your WordPress site combines modern design, reliable performance, and easy management to engage your audience and support your business growth.\r\n</p>', '<h2>\r\nWhat is Website Design and Why It Matters\r\n</h2>\r\n<p>\r\nWebsite design is the process of planning, creating, and structuring the visual and functional elements of a website. A well-designed website is not only visually appealing but also easy to navigate, fast, and optimized for all devices. Having a professional website is essential for businesses today, as it establishes credibility, communicates your brand’s message, and serves as a central platform for connecting with customers.\r\n</p>\r\n<p>\r\nIf you are selling products or services through social media, directing your audience to your website allows them to view your full range of offerings or complete payments securely, which builds greater trust and confidence in your brand. Websites are a key tool for marketing, sales, customer support, and building long-term relationships with your audience.\r\n</p>\r\n<h3>\r\nOptimized Structure and SEO-Friendly Design\r\n</h3>\r\n<p>\r\nA good website must be structurally optimized and SEO-friendly. This means using clean code, fast-loading pages, logical navigation, and mobile responsiveness to ensure search engines can easily index the content. SEO-friendly websites increase visibility, attract more organic traffic, and provide a better experience for users, which helps improve engagement and conversion rates.\r\n</p>\r\n<h3>\r\nWordPress Website Design – Ready-Made and Custom Themes\r\n</h3>\r\n<p>\r\nWordPress allows for flexible website creation using both ready-made and custom themes. Ready-made themes are pre-designed templates that offer a quick, cost-effective solution while maintaining professional standards. Custom WordPress themes are built from scratch to match your brand identity precisely and provide unique functionality. Both approaches allow for responsive design, visually appealing layouts, and smooth user experience.\r\n</p>\r\n<h3>\r\nCustom WordPress Plugins\r\n</h3>\r\n<p>\r\nPlugins extend the functionality of WordPress websites, enabling features that are not available by default. Custom plugins can be developed to meet the specific needs of your business, such as specialized forms, e-commerce functionality, interactive elements, or integrations with third-party services. This ensures your website performs exactly as required and provides a tailored experience for your users.\r\n</p>\r\n<h2>\r\nHow LARATEK Builds WordPress Websites\r\n</h2>\r\n<p>\r\nAt LARATEK, we combine creativity, technical expertise, and strategic thinking to deliver high-quality WordPress websites. We can:\r\n</p>\r\n<ul class=\"list-disk list-inside text\">\r\n<li>\r\nDesign fully custom WordPress themes that perfectly reflect your brand identity.\r\n</li>\r\n<li>\r\nDevelop custom plugins to extend functionality and meet your unique requirements.\r\n</li>\r\n<li>\r\nOptimize websites for performance, responsiveness, and SEO best practices.\r\n</li>\r\n<li>\r\nImplement ready-made themes when a fast and effective solution is needed.\r\n</li>\r\n<li>\r\nEnsure smooth user experience, clean design, and modern visual aesthetics.\r\n</li>\r\n</ul>\r\n<p>\r\nOur process focuses on creating WordPress websites that are not only attractive but also functional, scalable, and fully aligned with your business goals. With LARATEK, your WordPress site becomes a powerful tool to attract, engage, and convert your audience.\r\n</p>', '/storage/uploads/services/wp-featured_image.jpg', '/storage/uploads/banners/bg-wp.jpg', '[{\"title\":\"Responsive & User-Friendly\",\"image\":\"\\/storage\\/uploads\\/services\\/wp-responsive.svg\",\"body\":\"We design WordPress websites that look great and perform flawlessly on all devices, providing an effortless experience for your users.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Custom Themes & Plugins\",\"image\":\"\\/storage\\/uploads\\/services\\/wp-constum.svg\",\"body\":\"Our team develops both custom WordPress themes and plugins, ensuring unique design and functionality tailored to your business needs.\",\"link_title\":null,\"link_address\":null},{\"title\":\"SEO & Performance Optimized\",\"image\":\"\\/storage\\/uploads\\/services\\/wp-optimize.jpg\",\"body\":\"We build websites that are structurally optimized, fast, and SEO-friendly, helping your site attract more traffic and engage your audience effectively.\",\"link_title\":null,\"link_address\":null}]', '[{\"title\":null,\"image\":\"\\/storage\\/uploads\\/services\\/wp-led.svg\",\"body\":\"Bring your brand online with style and efficiency.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Start Your WordPress Journey\",\"image\":null,\"body\":\"Create a website that is visually appealing, fully functional, and optimized for users and search engines alike. Let your audience experience your brand online seamlessly.\",\"link_title\":null,\"link_address\":null}]', 1, NULL, '2025-09-10 06:22:50', '2025-09-14 07:38:28', NULL),
(6, 'custom cms', 'custom-cms', NULL, '<p>\r\nAt LARATEK, we specialize in creating fully customized Content Management Systems (CMS) that are built to meet your unique business requirements. Unlike off-the-shelf solutions, a custom CMS allows you complete control over your website’s functionality, design, and user experience. Whether you need a complex web application, a content-heavy platform, or a unique digital solution, our team combines technical expertise and strategic design to deliver a CMS that is scalable, secure, and fully aligned with your business goals. With LARATEK, your digital platform is powerful, flexible, and designed to grow with your business.\r\n</p>', '<h2>\r\nWhat is a Custom CMS and Why It Matters\r\n</h2>\r\n<p>\r\nA Content Management System (CMS) is a platform that allows you to manage, edit, and publish content on your website without deep technical knowledge. A custom CMS, however, is specifically built for your business needs, giving you complete control over functionality, design, and user experience. It allows for scalability, unique workflows, and features that generic platforms cannot provide. Having a custom CMS ensures your website or web application aligns perfectly with your business goals and brand identity.\r\n</p>\r\n<h3>\r\nBenefits of a Custom CMS\r\n</h3>\r\n<p>\r\nA custom CMS offers numerous advantages:\r\n</p>\r\n<ul>\r\n<li>\r\n<p>\r\n<strong>Tailored Functionality</strong>: Built specifically for your requirements.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Enhanced Performance</strong>: Optimized code ensures fast loading and smooth operation.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>User-Friendly</strong>: Intuitive interfaces make content management easy for your team.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>SEO-Ready & Structurally Optimized</strong>: Clean HTML, optimized structure, and best SEO practices built-in.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Scalable & Extensible</strong>: Easier to add new features or integrate with other platforms like CRM through APIs.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Modern Technology Stack</strong>: Developed with the latest technologies and frameworks such as PHP, Laravel, C#, .NET, JavaScript, TypeScript, React, Next.js to ensure reliability and future-proofing.\r\n</p>\r\n</li>\r\n</ul>\r\n<h3>\r\nDesign & Development Approach\r\n</h3>\r\n<p>\r\nAt LARATEK, all custom CMS solutions are designed for maximum performance and usability. Every platform is developed with clean code and optimized HTML structure to be fast, responsive, and fully SEO-friendly. The interfaces are intuitive and tailored for the end-user, ensuring effortless management of your content.\r\n</p>\r\n<h4>\r\nIntegration & Extensibility\r\n</h4>\r\n<p>\r\nCustom CMS platforms developed by LARATEK can easily integrate with other systems, such as CRM platforms, e-commerce systems, or third-party APIs. Our clean coding standards and modern development practices ensure seamless integration, robust performance, and long-term maintainability.\r\n</p>\r\n<h2>\r\nHow LARATEK Builds Custom CMS Platforms\r\n</h2>\r\n<p>\r\nWe combine modern technologies, design thinking, and development best practices to deliver CMS platforms that are fully aligned with your business needs. Whether it’s a content-heavy website, complex web application, or interactive platform, we build solutions that are:\r\n</p>\r\n<ul class=\"list-disk list-inside text\">\r\n<li>\r\nFully customized to your requirements\r\n</li>\r\n<li>\r\nScalable and extensible for future growth\r\n</li>\r\n<li>\r\nFast, responsive, and user-friendly\r\n</li>\r\n<li>\r\nSEO-optimized and structurally clean\r\n</li>\r\n<li>\r\nEasily integrable with other platforms via APIs\r\n</li>\r\n</ul>\r\n<p>\r\nWith LARATEK, your custom CMS becomes a powerful tool for managing content, engaging users, and supporting your business operations efficiently and effectively.\r\n</p>', '/storage/uploads/services/custom-cms-featured_image.jpg', '/storage/uploads/banners/bg-custom-cms.jpg', '{\"1\":{\"title\":\"Fully Customizable Solutions\",\"image\":null,\"body\":\"We create CMS platforms tailored to your unique business needs, ensuring every feature and design element is exactly as you require.\",\"link_title\":null,\"link_address\":null},\"2\":{\"title\":\"High Performance & SEO Optimized\",\"image\":null,\"body\":\"Our custom CMS solutions are fast, responsive, and built with clean, SEO-friendly code for maximum visibility and user engagement.\",\"link_title\":null,\"link_address\":null},\"3\":{\"title\":\"Scalable & Integrable\",\"image\":null,\"body\":\"CMS platforms from LARATEK are easy to expand and can seamlessly integrate with other systems, like CRM or e-commerce platforms, via clean API connections.\\\"\",\"link_title\":null,\"link_address\":null}}', '{\"0\":{\"title\":null,\"image\":\"\\/storage\\/uploads\\/services\\/custom-cms-led.svg\",\"body\":\"Empower your business with a fully customized CMS.\",\"link_title\":null,\"link_address\":null},\"2\":{\"title\":\"Transform Your Digital Platform\",\"image\":null,\"body\":\"Build a CMS that perfectly fits your business processes, offers seamless content management, and delivers an outstanding user experience. Take full control of your digital presence with LARATEK.\",\"link_title\":null,\"link_address\":null}}', 1, NULL, '2025-09-10 07:31:11', '2025-09-13 04:08:05', NULL),
(7, 'Custom Web Application', 'web-application', NULL, '<p>\r\nAt LARATEK, we create custom web applications designed to solve specific business challenges and streamline your operations. Whether you need a Customer Relationship Management (CRM) system, e-commerce platform, booking system, project management tool, or a fully interactive web portal, we deliver solutions that are precisely tailored to your goals. Each application is developed with modern technologies and frameworks, ensuring high performance, responsive design, and a user-friendly interface. Our team focuses on creating scalable, secure, and efficient applications that enhance productivity, engagement, and overall business success.\r\n</p>', '<h2>\r\nWhat is a Custom Web Application\r\n</h2>\r\n<p>\r\nA custom web application is a software solution accessible through a web browser that is tailored to the specific needs of your business. Unlike standard software or mobile apps, web applications run on multiple devices without requiring installation, making them easy to access and update. They allow for centralized management, real-time collaboration, and flexible functionality that adapts to your unique workflows.\r\n</p>\r\n<h3>\r\nBenefits of Web Applications\r\n</h3>\r\n<p>\r\nCustom web applications offer several advantages over traditional desktop software or mobile apps:\r\n</p>\r\n<ul class=\"list-disk list-inside text\">\r\n<li>\r\n<p>\r\n<strong>Accessibility Anywhere</strong>\r\n<br>\r\n: Users can access the application from any device with an internet connection.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Real-Time Collaboration</strong>\r\n<br>\r\n: Multiple users can work simultaneously, enhancing productivity and teamwork.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Centralized Updates</strong>\r\n<br>\r\n: Updates and maintenance are done in one place without needing individual installations.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Scalability</strong>\r\n<br>\r\n: Web applications can grow with your business, adding new features or modules as needed.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Integration Capabilities</strong>\r\n<br>\r\n: Easily connect with other platforms, databases, or services to streamline your business processes.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Cost-Effectiveness</strong>\r\n<br>\r\n: Avoids the complexity of distributing software or apps to multiple devices while maintaining flexibility.\r\n</p>\r\n</li>\r\n</ul>\r\n<h3>\r\nTypes of Web Applications You Can Build\r\n</h3>\r\n<p>\r\nThere is a wide variety of web applications that can be created to suit business needs, including:\r\n</p>\r\n<ul class=\"list-disk list-inside text\">\r\n<li>\r\n<h4>\r\nCustomer Relationship Management (CRM) Systems\r\n</h4>\r\n<p>\r\nManage clients, sales pipelines, and customer interactions.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nE-Commerce Platforms\r\n</h4>\r\n<p>\r\nOnline stores with payment processing, inventory management, and product catalogs.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nBooking & Reservation Systems\r\n</h4>\r\n<p>\r\nFor services, appointments, or events.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nProject Management Tools\r\n</h4>\r\n<p>\r\nTrack tasks, deadlines, and team collaboration efficiently.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nInventory & Supply Chain Management Systems\r\n</h4>\r\n<p>\r\nOrganize and monitor resources and logistics.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nInteractive Web Portals\r\n</h4>\r\n<p>\r\nFor clients, employees, or partners to access information and tools.\r\n</p>\r\n</li>\r\n<li>\r\n<h4>\r\nCustom Dashboards & Analytics Platforms\r\n</h4>\r\n<p>\r\nReal-time reporting and insights tailored to business metrics.\r\n</p>\r\n</li>\r\n</ul>\r\n<h2>\r\nHow LARATEK Builds Custom Web Applications\r\n</h2>\r\n<p>\r\nAt LARATEK, we focus on understanding your business processes to create web applications that are functional, efficient, and tailored to your operations. We ensure that every application is scalable, user-friendly, and designed to enhance workflow, collaboration, and overall productivity. Whether you need a simple interactive tool or a complex enterprise system, our solutions are built to meet your exact requirements.\r\n</p>', '/storage/uploads/services/custom-app-featured_image.jpg', '/storage/uploads/banners/bg-custom-apps.jpg', '{\"1\":{\"title\":\"Tailored Solutions for Business Needs\",\"image\":null,\"body\":\"We deliver web applications specifically designed to align with your organizational requirements, ensuring optimal functionality and workflow efficiency.\",\"link_title\":null,\"link_address\":null},\"2\":{\"title\":\"High Performance & Scalability\",\"image\":null,\"body\":\"Our applications are built to handle increasing demands seamlessly, providing fast, reliable, and scalable solutions that grow with your business.\",\"link_title\":null,\"link_address\":null},\"3\":{\"title\":\"Seamless Integration & Extensibility\",\"image\":null,\"body\":\"LARATEK\\u2019s web applications are developed to integrate smoothly with other platforms and services, offering flexibility for future expansion and system interoperability.\",\"link_title\":null,\"link_address\":null}}', '{\"1\":{\"title\":null,\"image\":\"\\/storage\\/uploads\\/services\\/custom-app-led.svg\",\"body\":\"Empower your operations with a tailored web application.\",\"link_title\":null,\"link_address\":null},\"2\":{\"title\":\"Elevate Your Digital Capabilities\",\"image\":null,\"body\":\"Develop a web application that precisely addresses your business processes, enhances productivity, and ensures seamless user interaction. Partner with LARATEK to create a solution that drives efficiency and supports your long-term strategic goals.\\\"\",\"link_title\":null,\"link_address\":null}}', 1, NULL, '2025-09-13 04:22:20', '2025-09-13 04:22:20', NULL),
(8, 'catalog and brochure', 'catalog', NULL, '<p>\r\nAt LARATEK, we design catalogs and brochures that clearly present your products, services, and brand information while maintaining an engaging and visually appealing layout. Each piece is structured for easy reading and quick comprehension, making it simple for your audience to navigate your offerings. We pay attention to hierarchy, spacing, and visual flow to ensure that every element guides the reader naturally. From product catalogs to marketing brochures, our goal is to combine clarity with attractive design, creating materials that are not only informative but also visually coherent and enjoyable to explore.\r\n</p>', '<h2>\r\nWhat are Catalogs and Brochures\r\n</h2>\r\n<p>\r\nCatalogs and brochures are printed or digital materials used to present products, services, or company information in a structured and accessible way. They provide essential details, helping audiences understand offerings quickly and easily. Unlike general marketing content, catalogs and brochures organize information visually and hierarchically, making it easier for readers to navigate and retain key points.\r\n</p>\r\n<h3>\r\nTypes of Catalogs and Brochures\r\n</h3>\r\n<p>\r\nThere are several types of catalogs and brochures that can be created depending on your needs:\r\n</p>\r\n<ul class=\"list-disk list-inside text\">\r\n<li>\r\n<p>\r\n<strong>Product Catalogs</strong> – Detailed listings of products with descriptions, images, and specifications.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Marketing Brochures</strong> – Designed to introduce services, promotions, or brand stories in a visually appealing way.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Corporate Brochures</strong> – Focused on company profile, history, achievements, and values.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Digital Brochures & E-Catalogs</strong> – Interactive versions optimized for online viewing and sharing.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\nMini-Catalogs or Flyers – Compact formats to highlight selected products or offers.\r\n</p>\r\n</li>\r\n</ul>\r\n<h3>\r\nBenefits of Using Catalogs and Brochures\r\n</h3>\r\n<p>\r\nUsing well-designed catalogs and brochures provides multiple advantages:\r\n</p>\r\n<ul class=\"list-disk list-inside text\">\r\n<li>\r\n<p>\r\n<strong>Clear Communication</strong>: Present information in a structured and easy-to-read format.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Visual Appeal</strong>: Attractive layouts and design elements draw attention and improve engagement.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Brand Consistency</strong>: Reinforce your brand identity across materials.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Informative</strong>: Provide comprehensive product or service details in one place.\r\n</p>\r\n</li>\r\n<li>\r\n<p>\r\n<strong>Versatile Usage</strong>: Suitable for in-person distribution, trade shows, or digital sharing.\r\n</p>\r\n</li>\r\n</ul>\r\n<h2>\r\nHow LARATEK Designs Catalogs and Brochures\r\n</h2>\r\n<p>\r\nAt LARATEK, we focus on creating materials that are both clear and visually engaging. We carefully structure content, select typography, images, and layout to guide the reader naturally through the material. Whether it’s a detailed product catalog or a marketing brochure, we ensure the final design is informative, visually coherent, and aligns with your brand identity.\r\n</p>', '/storage/uploads/services/catalog-featured_image.jpg', '/storage/uploads/banners/bg-catalog.jpg', '[{\"title\":\"Structured & Clear Presentation\",\"image\":null,\"body\":\"We organize content in a logical and coherent way, ensuring that readers can easily understand and navigate your information.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Visually Balanced Design\",\"image\":null,\"body\":\"Our designs focus on layout, typography, and imagery to create materials that are aesthetically appealing and easy to follow.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Brand-Aligned Communication\",\"image\":null,\"body\":\"Every catalog or brochure is crafted to maintain consistency with your brand identity, reinforcing your message across all materials.\",\"link_title\":null,\"link_address\":null}]', '[{\"title\":null,\"image\":\"\\/storage\\/uploads\\/services\\/catalog-led.svg\",\"body\":\"Present your brand and offerings with clarity and style.\",\"link_title\":null,\"link_address\":null},{\"title\":\"Enhance Your Brand Materials\",\"image\":null,\"body\":\"Create catalogs and brochures that clearly communicate your offerings while maintaining a professional and cohesive design.\",\"link_title\":null,\"link_address\":null}]', 2, NULL, '2025-09-13 04:52:58', '2025-09-13 04:54:15', NULL);

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
('eC7vFrodPBHF7YejtbTAz6JeSh2bFmDs9eRYPxbI', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY2s3dXpLTTJKcEh4bWlDQlZDSG4wTmwyY3VLeEFGVTdKOUdtYWhFQSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyOiJodHRwOi8vbGFyZW9uLnRlc3QvdGthZG1pbi9zZXJ2aWNlcy81L2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1757848110);

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
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'laravel', '/storage/uploads/skills/laravel-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(2, 'wordpress', '/storage/uploads/skills/wordpress-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(3, 'react', '/storage/uploads/skills/react-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(4, 'nextjs', '/storage/uploads/skills/nextjs-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(5, 'php', '/storage/uploads/skills/php-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(6, 'seo', '/storage/uploads/skills/seo-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(7, 'linux', '/storage/uploads/skills/linux-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(8, 'CI/CD', '/storage/uploads/skills/github-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(9, 'html', '/storage/uploads/skills/html-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(10, 'css', '/storage/uploads/skills/css-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(11, 'javascript', '/storage/uploads/skills/javascript-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(12, 'typescript', '/storage/uploads/skills/typescript-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(13, 'mysql', '/storage/uploads/skills/mysql-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(14, 'photoshop', '/storage/uploads/skills/photoshop-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(15, 'illustrator', '/storage/uploads/skills/illustrator-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(16, 'indesign', '/storage/uploads/skills/indesign-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(17, 'after effect', '/storage/uploads/skills/afftereffect-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(18, 'premiere', '/storage/uploads/skills/premier-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(19, 'coreldraw', '/storage/uploads/skills/coreldraw-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(20, 'figma', '/storage/uploads/skills/figma-icon.png', '2025-09-04 07:29:57', '2025-09-04 07:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `skill_user`
--

CREATE TABLE `skill_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_user`
--

INSERT INTO `skill_user` (`user_id`, `skill_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20);

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
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `label`, `featured_image`, `excerpt`, `url`, `linkedin`, `whatsapp`, `telegram`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'sina zangiband', 'web developer', '/storage/uploads/team/sina_zangiband.png', NULL, '/profiles/09126037279', 'https://ir.linkedin.com/in/sina-zangiband-335027257', 'https://wa.me/989126037279', 'https://t.me/sina_zangiband', 'sina.zangiband@gmail.com', '+989126037279', '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(2, 'sara shojaei', 'graphic designer', '/storage/uploads/team/sara_shojaei.jpg', NULL, '/profiles/09030791271', 'https://www.linkedin.com/in/sara-shojaei93/', 'http://wa.me/989030791271', 'https://t.me/Ssara93graphic', 'http://lareon.test/services/sr93.sh@gmail.com', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `gender` varchar(20) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `gender`, `position`, `featured_image`, `created_at`, `updated_at`) VALUES
(1, 'Sarah L.', 'The attention to detail in the designs was impressive. Everything looked professional yet creative.', 'female', 'Marketing Manager', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(2, 'Daniel R.', 'I just told them the vibe I wanted, and they completely nailed it. Couldn’t be happier.', 'male', 'Freelancer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(3, 'Olivia M.', 'Our brand finally looks consistent across all materials. The designs are classy and timeless.', 'female', 'CEO of BrightTech', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(4, 'James P.', 'They listened carefully to my ideas and transformed them into designs I didn’t even imagine.', 'male', 'Startup Founder', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(5, 'Emma C.', 'Super easy to work with and very responsive. I got exactly what I needed in no time.', 'female', 'Small Business Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(6, 'Michael B.', 'The logo perfectly reflects our brand’s values. It feels modern but also very professional.', 'male', 'Company Director', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(7, 'Hannah W.', 'I’ve had logos made before, but this one feels unique and actually memorable.', 'female', 'Shop Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(8, 'David S.', 'Quick turnaround and outstanding creativity. I get compliments on the logo all the time.', 'male', 'Entrepreneur', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(9, 'Linda T.', 'I wanted something simple but meaningful. They delivered exactly that.', 'female', 'Blogger', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(10, 'Robert K.', 'Our new logo gave us the confidence to rebrand completely. It was the missing piece.', 'male', 'Nonprofit Manager', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(11, 'Emily F.', 'The QR code wasn’t just functional—it actually looked stylish on our packaging.', 'female', 'Product Manager', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(12, 'Chris J.', 'I didn’t even know QR codes could be customized like this. Customers love scanning it.', 'male', 'Café Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(13, 'Jason L.', 'It’s both practical and visually appealing. Perfect for our business cards.', 'male', 'Event Organizer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(14, 'Sophia M.', 'The design blended so well with our branding that people thought it was part of the logo.', 'female', 'Brand Consultant', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(15, 'Kevin H.', 'Clean, professional, and easy to scan. Exactly what we needed.', 'male', 'IT Specialist', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(16, 'Laura D.', 'Our stationery now feels cohesive and professional, perfect for client meetings.', 'female', 'Business Consultant', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(17, 'Ahmed K.', 'I never thought business cards could feel this premium. Clients notice the difference.', 'male', 'Architect', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(18, 'Jessica P.', 'The design gave our company a much more trustworthy image.', 'female', 'HR Manager', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(19, 'Tom G.', 'They customized every detail, even the envelopes. It feels so branded now.', 'male', 'Startup Founder', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(20, 'Rachel N.', 'Beautiful, minimal, and professional. Exactly what I wanted.', 'female', 'Lawyer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(21, 'Benjamin R.', 'The catalog was stunning—our products finally look as premium as they are.', 'male', 'E-commerce Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(22, 'Natalie S.', 'The brochures helped us land more clients at our trade show. They stood out.', 'female', 'Marketing Coordinator', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(23, 'Mark W.', 'I loved how organized and visually appealing the design was.', 'male', 'Sales Executive', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(24, 'Irene L.', 'Customers keep the catalog because it feels like a magazine.', 'female', 'Boutique Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(25, 'Ethan P.', 'Perfect mix of clean layout and bold visuals.', 'male', 'Startup CEO', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(26, 'Zoe B.', 'Our event poster got so much attention on social media.', 'female', 'Event Planner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(27, 'Ryan T.', 'The banner at our booth made us look bigger than we actually are.', 'male', 'Startup Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(28, 'Lucy C.', 'The design was vibrant but still professional. People loved taking photos with it.', 'female', 'PR Manager', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(29, 'Paul D.', 'I’ve worked with designers before, but this was on another level.', 'male', 'Restaurant Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(30, 'Sophia K.', 'Fast delivery and the poster was exactly what we envisioned.', 'female', 'Teacher', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(31, 'Mia L.', 'Our Instagram feed finally looks consistent and professional.', 'female', 'Influencer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(32, 'Aaron F.', 'Templates saved us so much time—we just drop in content now.', 'male', 'Gym Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(33, 'Clara V.', 'The posts are getting more engagement thanks to the eye-catching designs.', 'female', 'Marketing Assistant', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(34, 'George P.', 'The templates made my small brand look big.', 'male', 'Online Seller', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(35, 'Isabella W.', 'Creative, trendy, and easy to use. Couldn’t ask for more.', 'female', 'Content Creator', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(36, 'Oliver J.', 'Our exhibition stand was a showstopper. People kept visiting our booth.', 'male', 'Business Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(37, 'Sophia R.', 'It was designed to be practical but also really attractive.', 'female', 'Event Manager', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(38, 'Patrick K.', 'The stand gave us a professional look that competitors envied.', 'male', 'Trade Fair Exhibitor', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(39, 'Ella S.', 'So easy to set up, and it looked amazing in real life.', 'female', 'Artist', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(40, 'Henry L.', 'Clean, bold design that matched our branding perfectly.', 'male', 'Product Developer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(41, 'Victoria M.', 'The images made our site feel alive and unique.', 'female', 'Startup Founder', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(42, 'Leo B.', 'No more stock photos—we finally look authentic.', 'male', 'Photographer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(43, 'Daniela P.', 'The visuals load fast and look sharp on every device.', 'female', 'Blogger', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(44, 'Andrew G.', 'Perfect balance of creativity and professionalism.', 'male', 'Lawyer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(45, 'Charlotte K.', 'Customers mentioned how much they liked the fresh look of our website.', 'female', 'Shop Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(46, 'Tom R.', 'Our new site is modern, fast, and easy to navigate. Huge improvement.', 'male', 'Tech Startup CEO', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(47, 'Clara H.', 'The WordPress site is easy to manage and looks amazing.', 'female', 'Blogger', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(48, 'Adam M.', 'They customized everything exactly the way I wanted.', 'male', 'Shop Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(49, 'Emily K.', 'Fast, responsive, and super user-friendly.', 'female', 'Online Coach', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(50, 'Richard J.', 'I can now update my site myself without needing a developer.', 'male', 'Consultant', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(51, 'Sophia L.', 'The design looks premium, but it’s still simple to use.', 'female', 'Photographer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(52, 'Alice B.', 'I get compliments on the design almost every day.', 'female', 'Restaurant Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(53, 'George H.', 'They really understood what our business needed and delivered perfectly.', 'male', 'Consultant', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(54, 'Sophie D.', 'Simple, clean, and professional—exactly what I was looking for.', 'female', 'Freelancer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(55, 'Matthew P.', 'The whole process was smooth and stress-free.', 'male', 'Nonprofit Director', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(56, 'Clara H.', 'The WordPress site is easy to manage and looks amazing.', 'female', 'Blogger', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(57, 'Adam M.', 'They customized everything exactly the way I wanted.', 'male', 'Shop Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(58, 'Emily K.', 'Fast, responsive, and super user-friendly.', 'female', 'Online Coach', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(59, 'Richard J.', 'I can now update my site myself without needing a developer.', 'male', 'Consultant', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(60, 'Sophia L.', 'The design looks premium, but it’s still simple to use.', 'female', 'Photographer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(61, 'Sophia G.', 'From logo to website, everything felt consistent. A complete brand transformation.', 'female', 'Startup Founder', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(62, 'Mark T.', 'They handled both our site and our stationery. It all ties together beautifully.', 'male', 'Business Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(63, 'Hannah P.', 'I love how our brochures match the website design. Everything feels unified.', 'female', 'Designer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(64, 'Robert J.', 'They created our stand, banners, and website. The result? A professional image everywhere.', 'male', 'Event Manager', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(65, 'Emily N.', 'We rebranded completely—logo, website, social media templates. It was a smooth process.', 'female', 'CEO', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(66, 'Daniel W.', 'I didn’t have to hire multiple people. They did everything from graphics to coding.', 'male', 'Small Business Owner', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(67, 'Laura H.', 'Our digital and print designs finally look like they belong together.', 'female', 'Marketing Director', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(68, 'Ethan B.', 'They managed both creative design and technical coding seamlessly.', 'male', 'Product Manager', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(69, 'Isabella R.', 'It feels like we have a single, strong brand identity now.', 'female', 'Nonprofit Leader', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(70, 'Chris L.', 'Having one team for both design and development saved us time and money.', 'male', 'Startup CEO', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(71, 'Michael R.', 'Custom coding gave us features we couldn’t find in any template.', 'male', 'SaaS Founder', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(72, 'Nina S.', 'The site runs lightning fast. You can tell it was coded well.', 'female', 'Business Analyst', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(73, 'Kevin D.', 'We needed something unique, and they delivered perfectly.', 'male', 'Engineer', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(74, 'Anna F.', 'The code is clean and easy to maintain. Our dev team is impressed.', 'female', 'CTO', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57'),
(75, 'John P.', 'Finally a site that works exactly the way we wanted.', 'male', 'Entrepreneur', NULL, '2025-09-04 07:29:57', '2025-09-04 07:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` char(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `telegram_id` bigint(20) UNSIGNED DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `api_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parent_id`, `slug`, `name`, `nick_name`, `email`, `phone`, `telegram_id`, `featured_image`, `email_verified_at`, `phone_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `api_token`, `created_at`, `updated_at`) VALUES
(1, NULL, '09126037279', 'Sina Zangiband', 'Administrator', 'sina.zangiband@gmail.com', '09126037279', NULL, '/storage/uploads/users/sina_zangiband.png', '2025-09-13 01:58:01', '2025-09-13 01:58:01', '$2y$12$5Kkn8WiHFrfba3Zb/CDp4eV/Yjwx9h/XtioXeIqp44.ooWaFw8bbS', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '09030791271', 'sara shojaei', 'admin', 'sara.shojaei@gmail.com', '09030791271', NULL, '/storage/uploads/users/sara_shojaei.png', '2025-09-13 01:58:01', '2025-09-13 01:58:01', '$2y$12$/FGtL6xF8CZuAMHehJU14.NecEKDk5BK5348KDHGHz8i3n584yZUq', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, 1, 'social', '{\"email\": {\"value\": \"sina.zangiband@gmail.com\"}, \"phone\": {\"value\": \"09126037279\", \"active\": \"1\"}, \"github\": {\"value\": \"https://github.com/teksite\", \"active\": \"1\"}, \"gitlab\": {\"value\": null}, \"address\": {\"value\": null}, \"twitter\": {\"value\": null}, \"website\": {\"value\": null}, \"facebook\": {\"value\": null}, \"linkedin\": {\"value\": \"https://ir.linkedin.com/in/sina-zangiband-335027257\", \"active\": \"1\"}, \"telegram\": {\"value\": \"https://t.me/sina_zangiband\", \"active\": \"1\"}, \"whatsapp\": {\"value\": \"https://wa.me/989126037279\", \"active\": \"1\"}, \"instagram\": {\"value\": \"http://instagram.com/teksite_\", \"active\": \"1\"}, \"pinterest\": {\"value\": null}, \"wikipedia\": {\"value\": null}}', NULL, '2025-09-04 07:29:57', '2025-09-11 01:43:05'),
(2, 2, 'social', '{\"email\": {\"value\": \"sina.zangiband@gmail.com\"}, \"phone\": {\"value\": \"09126037279\", \"active\": \"1\"}, \"github\": {\"value\": \"https://github.com/teksite\", \"active\": \"1\"}, \"gitlab\": {\"value\": null}, \"address\": {\"value\": null}, \"twitter\": {\"value\": null}, \"website\": {\"value\": null}, \"facebook\": {\"value\": null}, \"linkedin\": {\"value\": \"https://ir.linkedin.com/in/sara-shojaei93\", \"active\": \"1\"}, \"telegram\": {\"value\": \"https://t.me/Sarahchica\", \"active\": \"1\"}, \"whatsapp\": {\"value\": \"https://wa.me/989030791271\", \"active\": \"1\"}, \"instagram\": {\"value\": \"http://instagram.com/sara-shojaei93\", \"active\": \"1\"}, \"pinterest\": {\"value\": null}, \"wikipedia\": {\"value\": null}}', NULL, '2025-09-04 07:29:57', '2025-09-11 01:14:02'),
(3, 2, 'images', '{\"image_1\": {\"value\": \"/storage/uploads/users/sara_shojaei-2.png\", \"active\": \"1\"}}', NULL, '2025-09-11 00:24:38', '2025-09-11 01:14:02'),
(4, 2, 'general', '{\"about\": {\"value\": \"\\\"I was born in 1993 and hold a Bachelor’s degree in Textile Design. My passion has always been in art and graphic design, where creativity and detail come together. Throughout my career, client satisfaction has been my top priority, and I take pride in delivering designs that meet and often exceed expectations. For me, graphic design is not only work—it’s also a source of joy and inspiration.\", \"active\": \"1\"}, \"company\": {\"value\": null}}', NULL, '2025-09-11 00:59:13', '2025-09-11 01:14:02'),
(5, 1, 'general', '{\"about\": {\"value\": \"I was born in 1993 and hold a Bachelor’s degree in Textile Design. My passion has always been in art and graphic design, where creativity and detail come together. Throughout my career, client satisfaction has been my top priority, and I take pride in delivering designs that meet and often exceed expectations. For me, graphic design is not only work—it’s also a source of joy and inspiration.\", \"active\": \"1\"}, \"company\": {\"value\": null}}', NULL, '2025-09-11 01:23:36', '2025-09-11 01:43:05'),
(6, 1, 'images', '{\"image_1\": {\"value\": \"/storage/uploads/users/sina_zangiband-2.png\", \"active\": \"1\"}}', NULL, '2025-09-11 01:23:36', '2025-09-11 01:43:05');

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
  ADD UNIQUE KEY `blog_posts_title_unique` (`title`),
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
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_group_id_foreign` (`group_id`),
  ADD KEY `portfolios_user_id_foreign` (`user_id`);

--
-- Indexes for table `portfolio_groups`
--
ALTER TABLE `portfolio_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolio_groups_slug_unique` (`slug`);

--
-- Indexes for table `portfolio_group_service`
--
ALTER TABLE `portfolio_group_service`
  ADD PRIMARY KEY (`service_id`,`group_id`),
  ADD KEY `portfolio_group_service_group_id_foreign` (`group_id`);

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
-- Indexes for table `seo_site_en`
--
ALTER TABLE `seo_site_en`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seo_site_en_key_unique` (`key`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_title_unique` (`title`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`),
  ADD KEY `services_team_id_foreign` (`team_id`);

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
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skills_title_unique` (`title`);

--
-- Indexes for table `skill_user`
--
ALTER TABLE `skill_user`
  ADD PRIMARY KEY (`user_id`,`skill_id`),
  ADD KEY `skill_user_skill_id_foreign` (`skill_id`);

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
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_slug_unique` (`slug`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_parent_id_foreign` (`parent_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `notifier_items`
--
ALTER TABLE `notifier_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `portfolio_groups`
--
ALTER TABLE `portfolio_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `questionnaire_forms`
--
ALTER TABLE `questionnaire_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questionnaire_form_announcements`
--
ALTER TABLE `questionnaire_form_announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questionnaire_form_rules`
--
ALTER TABLE `questionnaire_form_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `seo_site`
--
ALTER TABLE `seo_site`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_sitemaps`
--
ALTER TABLE `seo_sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `seo_site_en`
--
ALTER TABLE `seo_site_en`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `portfolio_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `portfolios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `portfolio_group_service`
--
ALTER TABLE `portfolio_group_service`
  ADD CONSTRAINT `portfolio_group_service_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `portfolio_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `portfolio_group_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `skill_user`
--
ALTER TABLE `skill_user`
  ADD CONSTRAINT `skill_user_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skill_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag_models`
--
ALTER TABLE `tag_models`
  ADD CONSTRAINT `tag_models_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD CONSTRAINT `user_meta_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
