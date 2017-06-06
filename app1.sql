-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2017 at 02:34 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ask_a_certifications`
--

CREATE TABLE `ask_a_certifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `sub_category` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `certification` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `user` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Wait'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ask_a_certifications`
--

INSERT INTO `ask_a_certifications` (`id`, `deleted_at`, `created_at`, `updated_at`, `category`, `sub_category`, `certification`, `user`, `status`) VALUES
(1, '2017-04-20 20:32:54', '2017-04-20 20:32:47', '2017-04-20 20:32:54', 1, 1, 1, 1, ''),
(10, '2017-04-24 19:06:37', '2017-04-22 11:01:16', '2017-04-24 19:06:37', 1, 1, 2, 1, 'OK'),
(11, '2017-04-24 19:06:42', '2017-04-22 11:01:57', '2017-04-24 19:06:42', 1, 1, 2, 1, 'Wait'),
(12, '2017-04-24 19:06:47', '2017-04-22 11:21:39', '2017-04-24 19:06:47', 1, 1, 2, 1, 'Wait'),
(13, '2017-04-24 19:06:51', '2017-04-22 11:26:48', '2017-04-24 19:06:51', 1, 1, 2, 1, 'Wait'),
(14, '2017-04-24 19:05:44', '2017-04-22 11:31:54', '2017-04-24 19:05:44', 1, 1, 2, 2, 'OK'),
(15, '2017-04-24 19:05:49', '2017-04-22 11:53:02', '2017-04-24 19:05:49', 1, 1, 2, 1, 'Wait'),
(16, '2017-04-24 19:05:53', '2017-04-22 12:21:54', '2017-04-24 19:05:53', 1, 1, 2, 1, 'Wait'),
(17, '2017-04-24 19:06:22', '2017-04-22 12:23:02', '2017-04-24 19:06:22', 1, 1, 2, 1, 'Wait'),
(18, '2017-04-24 19:06:55', '2017-04-22 12:25:01', '2017-04-24 19:06:55', 1, 1, 2, 1, 'Wait'),
(19, '2017-04-24 19:05:38', '2017-04-22 12:35:08', '2017-04-24 19:05:38', 1, 1, 2, 1, 'Wait'),
(20, '2017-04-24 19:07:01', '2017-04-22 12:42:22', '2017-04-24 19:07:01', 1, 1, 2, 2, 'OK'),
(21, '2017-04-24 19:07:08', '2017-04-22 12:43:37', '2017-04-24 19:07:08', 1, 1, 2, 2, 'OK'),
(22, '2017-04-24 19:07:12', '2017-04-22 12:47:15', '2017-04-24 19:07:12', 1, 1, 2, 2, 'Wait'),
(23, '2017-04-27 15:29:14', '2017-04-24 19:07:38', '2017-04-27 15:29:14', 1, 1, 2, 1, 'OK'),
(24, '2017-04-27 13:26:07', '2017-04-27 13:08:45', '2017-04-27 13:26:07', 1, 1, 2, 1, 'OK'),
(25, '2017-04-27 15:29:10', '2017-04-27 13:26:01', '2017-04-27 15:29:10', 1, 1, 2, 1, 'OK'),
(26, NULL, '2017-04-27 15:29:40', '2017-04-27 15:29:48', 1, 1, 2, 1, 'OK'),
(27, NULL, '2017-04-27 15:32:58', '2017-04-27 15:35:06', 1, 1, 2, 3, 'OK'),
(28, NULL, '2017-04-29 13:38:18', '2017-04-29 13:38:36', 1, 1, 2, 1, 'OK'),
(29, NULL, '2017-05-04 10:06:31', '2017-05-04 10:11:44', 1, 1, 2, 4, 'OK'),
(30, NULL, '2017-05-04 10:23:43', '2017-05-04 10:24:50', 1, 1, 3, 4, 'OK');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `logo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `deleted_at`, `created_at`, `updated_at`, `title`, `logo`) VALUES
(1, NULL, '2017-04-20 11:39:37', '2017-04-20 11:39:37', 'Network', 1);

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `logo` int(11) NOT NULL,
  `sub_categories` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `duration` decimal(15,3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `deleted_at`, `created_at`, `updated_at`, `title`, `logo`, `sub_categories`, `duration`) VALUES
(1, '2017-04-20 12:42:36', '2017-04-20 12:42:31', '2017-04-20 12:42:36', '', 0, 1, '999999999999.999'),
(2, NULL, '2017-04-20 12:46:20', '2017-04-27 14:00:32', 'ISO', 3, 1, '0.010'),
(3, NULL, '2017-05-04 10:15:38', '2017-05-04 10:15:38', 'CCNA', 0, 1, '0.200');

-- --------------------------------------------------------

--
-- Table structure for table `certifs`
--

CREATE TABLE `certifs` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `certification` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `user` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `score` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `total` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `certifs`
--

INSERT INTO `certifs` (`id`, `deleted_at`, `created_at`, `updated_at`, `certification`, `user`, `score`, `subject`, `status`, `total`) VALUES
(1, '2017-04-24 19:05:24', '2017-04-23 15:09:18', '2017-04-24 19:05:24', 2, 1, 0, 1, 1, 0),
(2, '2017-04-24 19:05:20', '2017-04-23 15:19:08', '2017-04-24 19:05:20', 2, 2, 0, 3, 1, 0),
(3, '2017-04-24 19:05:15', '2017-04-23 18:05:01', '2017-04-24 19:05:15', 2, 2, 0, 1, 1, 0),
(4, '2017-04-24 19:05:09', '2017-04-24 07:53:19', '2017-04-24 19:05:09', 2, 2, 0, 1, 1, 0),
(5, '2017-04-27 15:29:22', '2017-04-24 19:08:00', '2017-04-27 15:29:22', 2, 1, 0, 2, 0, 2),
(6, '2017-04-27 13:24:07', '2017-04-27 13:09:03', '2017-04-27 13:24:07', 2, 1, 0, 1, 1, 0),
(7, '2017-04-27 13:36:47', '2017-04-27 13:26:15', '2017-04-27 13:36:47', 2, 1, 0, 2, 1, 0),
(8, '2017-04-27 15:29:19', '2017-04-27 13:45:28', '2017-04-27 15:29:19', 2, 1, 0, 2, 0, 2),
(9, NULL, '2017-04-27 15:29:48', '2017-04-27 15:29:48', 2, 1, 2, 2, 0, 2),
(10, NULL, '2017-04-27 15:35:06', '2017-04-27 15:35:06', 2, 3, 1, 3, 0, 1),
(11, NULL, '2017-04-29 13:38:36', '2017-04-29 13:38:36', 2, 1, 2, 2, 0, 2),
(12, NULL, '2017-05-01 07:55:18', '2017-05-01 07:55:18', 2, 1, 0, 2, 1, 0),
(13, NULL, '2017-05-04 10:11:44', '2017-05-04 10:11:44', 2, 4, 0, 2, 1, 0),
(14, NULL, '2017-05-04 10:24:50', '2017-05-04 10:24:50', 3, 4, 1, 4, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(2, 'Visitor', '[]', '#000', NULL, '2017-04-20 13:58:13', '2017-04-20 13:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ali Hosni', 'Super Admin', 'Male', '0021653137142', '', 'hosni.exe@gmail.com', 1, 'Tunis', '', 'Software engineer', '1994-10-10', '2017-04-20', '2017-04-20', '0.000', NULL, '2017-04-20 09:55:56', '2017-04-20 10:04:00'),
(2, 'Bilel', 'Client', 'Male', '0021653137142', '', 'Mkademi@ali.com', 2, 'Tunis', '', 'About user / biography', '2017-04-20', '2017-04-20', '2017-04-20', '0.000', NULL, '2017-04-20 13:47:46', '2017-04-20 19:31:26'),
(3, 'Amine', 'Client', 'Male', '0021653137142', '', 'ali@ali.com', 2, 'Tunis', '', 'About user / biography', '2017-04-27', '2017-04-27', '2017-04-27', '0.000', NULL, '2017-04-27 15:31:17', '2017-04-27 15:31:17'),
(4, 'helmi', 'Client', 'Male', '0021653137142', '', 'helmi@helmi.com', 2, 'Tunis', '', 'About user / biography', '2017-05-04', '2017-05-04', '2017-05-04', '0.000', NULL, '2017-05-04 10:06:05', '2017-05-04 10:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Certifica', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(2, 'sitename_part1', '', 'Certi', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(3, 'sitename_part2', '', 'Fica', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(4, 'sitename_short', '', 'CF', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(5, 'site_description', '', 'Certica is a Platform for Certification in cooperation with enterprises.', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(6, 'sidebar_search', '', '1', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(7, 'show_messages', '', '1', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(8, 'show_notifications', '', '1', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(9, 'show_tasks', '', '1', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(10, 'show_rightsidebar', '', '1', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(11, 'skin', '', 'skin-white', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(12, 'layout', '', 'fixed', '2017-04-20 09:55:25', '2017-04-20 10:36:08'),
(13, 'default_email', '', 'hosni.exe@gmail.com', '2017-04-20 09:55:25', '2017-04-20 10:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(17, 'Ask_a_certifications', 'ask_a_certifications', 'fa fa-share', 'module', 0, 0, '2017-04-20 20:30:32', '2017-04-20 20:30:32'),
(2, 'Users', 'users', 'fa-group', 'module', 0, 7, '2017-04-20 09:55:24', '2017-04-20 19:56:39'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 12, '2017-04-20 09:55:24', '2017-04-20 19:57:21'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 0, 8, '2017-04-20 09:55:24', '2017-04-20 19:57:08'),
(5, 'Employees', 'employees', 'fa-group', 'module', 0, 9, '2017-04-20 09:55:24', '2017-04-20 19:57:15'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 0, 10, '2017-04-20 09:55:24', '2017-04-20 19:57:18'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 0, 11, '2017-04-20 09:55:24', '2017-04-20 19:57:20'),
(12, 'Sub_categories', 'sub_categories', 'fa fa-align-center', 'module', 0, 2, '2017-04-20 11:55:06', '2017-04-20 13:31:38'),
(18, 'Certifs', 'certifs', 'fa fa-credit-card', 'module', 0, 0, '2017-04-23 14:12:45', '2017-04-23 14:12:45'),
(11, 'Categories', 'categories', 'fa fa-reorder', 'module', 0, 1, '2017-04-20 11:34:10', '2017-04-20 13:31:38'),
(13, 'Certifications', 'certifications', 'fa fa-th-large', 'module', 0, 3, '2017-04-20 12:34:04', '2017-04-20 13:31:38'),
(14, 'Subjects', 'subjects', 'fa fa-qrcode', 'module', 0, 4, '2017-04-20 13:04:36', '2017-04-20 13:31:38'),
(15, 'Questions', 'questions', 'fa fa-adn', 'module', 0, 5, '2017-04-20 13:13:28', '2017-04-20 13:31:38'),
(16, 'Responses', 'responses', 'fa fa-smile-o', 'module', 0, 6, '2017-04-20 13:21:05', '2017-04-20 13:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2017-04-20 09:55:20', '2017-04-20 09:55:25'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2017-04-20 09:55:21', '2017-04-20 09:55:25'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2017-04-20 09:55:21', '2017-04-20 09:55:25'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2017-04-20 09:55:21', '2017-04-20 09:55:25'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2017-04-20 09:55:21', '2017-04-20 09:55:25'),
(16, 'Ask_a_certifications', 'Ask_a_certifications', 'ask_a_certifications', 'certification', 'Ask_a_certification', 'Ask_a_certificationsController', 'fa-share', 1, '2017-04-20 20:13:31', '2017-04-20 20:30:32'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2017-04-20 09:55:23', '2017-04-20 09:55:25'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2017-04-20 09:55:23', '2017-04-20 09:55:25'),
(11, 'Sub_categories', 'Sub_categories', 'sub_categories', 'title', 'Sub_category', 'Sub_categoriesController', 'fa-align-center', 1, '2017-04-20 11:43:01', '2017-04-20 11:55:06'),
(10, 'Categories', 'Categories', 'categories', 'title', 'Category', 'CategoriesController', 'fa-reorder', 1, '2017-04-20 11:32:20', '2017-04-20 11:34:10'),
(12, 'Certifications', 'Certifications', 'certifications', 'title', 'Certification', 'CertificationsController', 'fa-th-large', 1, '2017-04-20 12:30:59', '2017-04-20 12:34:04'),
(13, 'Subjects', 'Subjects', 'subjects', 'title', 'Subject', 'SubjectsController', 'fa-qrcode', 1, '2017-04-20 12:51:47', '2017-04-20 13:17:38'),
(14, 'Questions', 'Questions', 'questions', 'content', 'Question', 'QuestionsController', 'fa-adn', 1, '2017-04-20 13:10:38', '2017-04-20 13:13:28'),
(15, 'Responses', 'Responses', 'responses', 'content', 'Response', 'ResponsesController', 'fa-smile-o', 1, '2017-04-20 13:19:07', '2017-04-20 13:21:05'),
(17, 'Certifs', 'Certifs', 'certifs', 'certification', 'Certif', 'CertifsController', 'fa-credit-card', 1, '2017-04-23 14:04:51', '2017-04-23 14:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(5, 'type', 'User Type', 1, 7, 0, 'Client', 0, 0, 0, '["Employee","Client"]', 0, '2017-04-20 09:55:20', '2017-04-20 13:51:34'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '["Male","Female"]', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2017-04-20 09:55:21', '2017-04-20 09:55:21'),
(75, 'certification', 'Certification', 17, 7, 0, '', 0, 0, 0, '@certifications', 0, '2017-04-23 14:06:26', '2017-04-23 14:06:26'),
(74, 'status', 'Status', 16, 7, 0, 'Wait', 0, 0, 0, '["OK","Wait","Denied"]', 4, '2017-04-20 20:39:46', '2017-04-20 20:52:44'),
(73, 'user', 'User', 16, 7, 0, '', 0, 0, 0, '@users', 5, '2017-04-20 20:29:58', '2017-04-20 20:29:58'),
(72, 'certification', 'Certification', 16, 7, 0, '', 0, 0, 0, '@certifications', 3, '2017-04-20 20:17:36', '2017-04-20 20:17:36'),
(71, 'sub_category', 'Sub category', 16, 7, 0, '', 0, 0, 0, '@sub_categories', 2, '2017-04-20 20:15:58', '2017-04-20 20:15:58'),
(70, 'category', 'Category', 16, 7, 0, '', 0, 0, 0, '@categories', 1, '2017-04-20 20:14:46', '2017-04-20 20:14:46'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2017-04-20 09:55:23', '2017-04-20 09:55:23'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2017-04-20 09:55:23', '2017-04-20 09:55:23'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2017-04-20 09:55:23', '2017-04-20 09:55:23'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2017-04-20 09:55:23', '2017-04-20 09:55:23'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2017-04-20 09:55:23', '2017-04-20 09:55:23'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2017-04-20 09:55:23', '2017-04-20 09:55:23'),
(54, 'title', 'Title', 10, 16, 0, '', 0, 12, 0, '', 0, '2017-04-20 11:33:19', '2017-04-20 12:35:28'),
(55, 'logo', 'Logo', 10, 12, 0, '', 0, 0, 0, '', 0, '2017-04-20 11:33:53', '2017-04-20 11:33:53'),
(56, 'title', 'Title', 11, 22, 0, '', 0, 12, 0, '', 0, '2017-04-20 11:45:17', '2017-04-20 11:45:17'),
(57, 'logo', 'Logo', 11, 12, 0, '', 0, 0, 0, '', 0, '2017-04-20 11:47:39', '2017-04-20 11:47:39'),
(58, 'categorie', 'Categorie', 11, 7, 0, '', 0, 0, 0, '@categories', 0, '2017-04-20 11:54:23', '2017-04-20 11:54:23'),
(59, 'title', 'Title', 12, 16, 0, '', 0, 12, 0, '', 0, '2017-04-20 12:31:35', '2017-04-20 12:31:35'),
(60, 'logo', 'Logo', 12, 12, 0, '', 0, 0, 0, '', 0, '2017-04-20 12:32:37', '2017-04-20 12:32:37'),
(61, 'sub_categories', 'Sub categories', 12, 7, 0, '', 0, 0, 0, '@sub_categories', 0, '2017-04-20 12:33:48', '2017-04-20 12:33:48'),
(62, 'duration', 'Duration', 12, 6, 0, '', 0, 5, 0, '', 0, '2017-04-20 12:40:27', '2017-04-20 12:49:28'),
(63, 'title', 'Title', 13, 7, 0, '', 0, 2, 0, '["A","B","C","D","E","F"]', 0, '2017-04-20 12:52:42', '2017-04-20 13:06:34'),
(64, 'certifications', 'Certifications', 13, 7, 0, '', 0, 0, 0, '@certifications', 0, '2017-04-20 13:04:10', '2017-04-20 13:04:10'),
(65, 'content', 'Content', 14, 21, 0, '', 0, 0, 0, '', 0, '2017-04-20 13:11:38', '2017-04-20 13:11:38'),
(66, 'subject', 'Subject', 14, 7, 0, '', 0, 256, 0, '@subjects', 0, '2017-04-20 13:12:56', '2017-04-24 18:50:15'),
(67, 'content', 'Content', 15, 21, 0, '', 0, 0, 0, '', 0, '2017-04-20 13:19:29', '2017-04-20 13:19:29'),
(68, 'type', 'Type', 15, 7, 0, '', 0, 0, 0, '["Correct","Incorrect"]', 0, '2017-04-20 13:20:04', '2017-04-20 13:20:04'),
(69, 'question', 'Question', 15, 7, 0, '', 0, 0, 0, '@questions', 0, '2017-04-20 13:20:54', '2017-04-20 13:20:54'),
(76, 'user', 'User', 17, 7, 0, '', 0, 0, 0, '@users', 0, '2017-04-23 14:07:11', '2017-04-23 14:07:11'),
(77, 'score', 'Score', 17, 13, 0, '', 0, 11, 0, '', 0, '2017-04-23 14:09:09', '2017-04-27 13:06:03'),
(78, 'subject', 'Subject', 17, 7, 0, '', 0, 0, 0, '@subjects', 0, '2017-04-23 14:10:53', '2017-04-23 14:10:53'),
(79, 'status', 'Status', 17, 13, 0, '1', 0, 11, 0, '', 0, '2017-04-27 13:03:10', '2017-04-27 13:03:10'),
(80, 'total', 'Total', 17, 13, 0, '', 0, 11, 0, '', 0, '2017-04-27 13:05:41', '2017-04-27 13:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(2, 'Checkbox', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(3, 'Currency', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(4, 'Date', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(5, 'Datetime', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(6, 'Decimal', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(7, 'Dropdown', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(8, 'Email', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(9, 'File', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(10, 'Float', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(11, 'HTML', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(12, 'Image', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(13, 'Integer', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(14, 'Mobile', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(15, 'Multiselect', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(16, 'Name', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(17, 'Password', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(18, 'Radio', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(19, 'String', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(20, 'Taginput', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(21, 'Textarea', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(22, 'TextField', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(23, 'URL', '2017-04-20 09:55:20', '2017-04-20 09:55:20'),
(24, 'Files', '2017-04-20 09:55:20', '2017-04-20 09:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hosni.exe@gmail.com', 'aa9853f26695bcb98066a566aa10b1b5f623d535ba1a95a5352255efaa5eb710', '2017-04-20 10:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(2, 'Client', 'Client', 'Client', NULL, '2017-04-20 13:36:52', '2017-04-20 13:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `subject` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `deleted_at`, `created_at`, `updated_at`, `content`, `subject`) VALUES
(3, NULL, '2017-04-24 19:22:29', '2017-04-26 22:42:59', 'What\'s your number?', 2),
(2, NULL, '2017-04-24 18:50:39', '2017-04-24 18:50:39', 'What\'s your name?', 2),
(4, NULL, '2017-04-27 15:37:58', '2017-04-27 15:37:58', 'Type des cables?', 3),
(5, NULL, NULL, NULL, 'Who are you ?', 2),
(6, NULL, NULL, '2017-05-01 12:51:29', 'What\'s your dad name?', 3),
(7, NULL, NULL, '2017-05-04 10:20:09', 'role de la deuxiemme couche osi', 4);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `deleted_at`, `created_at`, `updated_at`, `content`, `type`, `question`) VALUES
(6, NULL, '2017-04-25 23:02:08', '2017-04-30 12:56:23', 'bilel', 'Incorrect', 2),
(7, NULL, '2017-04-26 22:43:12', '2017-04-30 12:55:46', '53137142', 'Correct', 3),
(8, NULL, '2017-04-26 22:43:24', '2017-04-26 22:43:24', '3463634643', 'Incorrect', 3),
(5, NULL, '2017-04-24 19:50:56', '2017-04-24 19:50:56', 'Ali', 'Correct', 2),
(9, NULL, '2017-04-27 15:38:41', '2017-04-27 15:38:41', 'Coaxial', 'Correct', 4),
(10, NULL, '2017-04-27 15:39:05', '2017-04-27 15:39:05', 'RG45', 'Correct', 4),
(11, NULL, '2017-05-04 10:18:49', '2017-05-04 10:18:49', 'trame', 'Correct', 7),
(12, NULL, '2017-05-04 10:19:23', '2017-05-04 10:19:23', 'incorre', 'Incorrect', 7);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(2, 'CLIENT', 'CLIENT', 'Limit access', 1, 2, NULL, '2017-04-20 19:30:01', '2017-04-20 19:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(2, 1, 2, 1, 1, 1, 1, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(3, 1, 3, 1, 1, 1, 1, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(4, 1, 4, 1, 1, 1, 1, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(5, 1, 5, 1, 1, 1, 1, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(6, 1, 6, 1, 1, 1, 1, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(7, 1, 7, 1, 1, 1, 1, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(8, 1, 8, 1, 1, 1, 1, '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(9, 1, 9, 1, 1, 1, 1, '2017-04-20 11:30:05', '2017-04-20 11:30:05'),
(10, 1, 10, 1, 1, 1, 1, '2017-04-20 11:34:10', '2017-04-20 11:34:10'),
(11, 1, 11, 1, 1, 1, 1, '2017-04-20 11:55:06', '2017-04-20 11:55:06'),
(12, 1, 12, 1, 1, 1, 1, '2017-04-20 12:34:04', '2017-04-20 12:34:04'),
(13, 1, 13, 1, 1, 1, 1, '2017-04-20 13:04:36', '2017-04-20 13:04:36'),
(14, 1, 14, 1, 1, 1, 1, '2017-04-20 13:13:28', '2017-04-20 13:13:28'),
(15, 1, 15, 1, 1, 1, 1, '2017-04-20 13:21:05', '2017-04-20 13:21:05'),
(16, 2, 1, 0, 0, 0, 0, '2017-04-20 19:30:01', '2017-04-20 19:30:01'),
(17, 2, 2, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(18, 2, 3, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(19, 2, 4, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(20, 2, 5, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(21, 2, 7, 1, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(22, 2, 8, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(23, 2, 11, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(24, 2, 10, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(25, 2, 12, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(26, 2, 13, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(27, 2, 14, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(28, 2, 15, 0, 0, 0, 0, '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(29, 1, 16, 1, 1, 1, 1, '2017-04-20 20:30:32', '2017-04-20 20:30:32'),
(30, 2, 16, 1, 1, 1, 1, '2017-04-20 20:32:29', '2017-04-20 20:32:29'),
(31, 1, 17, 1, 1, 1, 1, '2017-04-23 14:12:45', '2017-04-23 14:12:45'),
(32, 2, 17, 1, 0, 0, 0, '2017-04-23 14:13:06', '2017-04-23 14:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(2, 1, 2, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(3, 1, 3, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(4, 1, 4, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(5, 1, 5, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(6, 1, 6, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(7, 1, 7, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(8, 1, 8, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(9, 1, 9, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(10, 1, 10, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(11, 1, 11, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(12, 1, 12, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(13, 1, 13, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(14, 1, 14, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(15, 1, 15, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(16, 1, 16, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(17, 1, 17, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(18, 1, 18, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(19, 1, 19, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(20, 1, 20, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(21, 1, 21, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(22, 1, 22, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(23, 1, 23, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(24, 1, 24, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(25, 1, 25, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(26, 1, 26, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(27, 1, 27, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(28, 1, 28, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(29, 1, 29, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(30, 1, 30, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(31, 1, 31, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(32, 1, 32, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(33, 1, 33, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(34, 1, 34, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(35, 1, 35, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(36, 1, 36, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(37, 1, 37, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(38, 1, 38, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(39, 1, 39, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(40, 1, 40, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(41, 1, 41, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(42, 1, 42, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(43, 1, 43, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(44, 1, 44, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(45, 1, 45, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(46, 1, 46, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(47, 1, 47, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(48, 1, 48, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(49, 1, 49, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(50, 1, 50, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(51, 1, 51, 'write', '2017-04-20 09:55:25', '2017-04-20 09:55:25'),
(52, 1, 52, 'write', '2017-04-20 10:49:04', '2017-04-20 10:49:04'),
(53, 1, 53, 'write', '2017-04-20 11:29:44', '2017-04-20 11:29:44'),
(54, 1, 54, 'write', '2017-04-20 11:33:19', '2017-04-20 11:33:19'),
(55, 1, 55, 'write', '2017-04-20 11:33:54', '2017-04-20 11:33:54'),
(56, 1, 56, 'write', '2017-04-20 11:45:17', '2017-04-20 11:45:17'),
(57, 1, 57, 'write', '2017-04-20 11:47:39', '2017-04-20 11:47:39'),
(58, 1, 58, 'write', '2017-04-20 11:54:24', '2017-04-20 11:54:24'),
(59, 1, 59, 'write', '2017-04-20 12:31:35', '2017-04-20 12:31:35'),
(60, 1, 60, 'write', '2017-04-20 12:32:37', '2017-04-20 12:32:37'),
(61, 1, 61, 'write', '2017-04-20 12:33:49', '2017-04-20 12:33:49'),
(62, 1, 62, 'write', '2017-04-20 12:40:27', '2017-04-20 12:40:27'),
(63, 1, 63, 'write', '2017-04-20 12:52:42', '2017-04-20 12:52:42'),
(64, 1, 64, 'write', '2017-04-20 13:04:11', '2017-04-20 13:04:11'),
(65, 1, 65, 'write', '2017-04-20 13:11:38', '2017-04-20 13:11:38'),
(66, 1, 66, 'write', '2017-04-20 13:12:56', '2017-04-20 13:12:56'),
(67, 1, 67, 'write', '2017-04-20 13:19:30', '2017-04-20 13:19:30'),
(68, 1, 68, 'write', '2017-04-20 13:20:04', '2017-04-20 13:20:04'),
(69, 1, 69, 'write', '2017-04-20 13:20:55', '2017-04-20 13:20:55'),
(70, 2, 1, 'invisible', '2017-04-20 19:30:01', '2017-04-20 19:30:01'),
(71, 2, 2, 'invisible', '2017-04-20 19:30:01', '2017-04-20 19:30:01'),
(72, 2, 3, 'invisible', '2017-04-20 19:30:01', '2017-04-20 19:30:01'),
(73, 2, 4, 'invisible', '2017-04-20 19:30:01', '2017-04-20 19:30:01'),
(74, 2, 5, 'invisible', '2017-04-20 19:30:01', '2017-04-20 19:30:01'),
(75, 2, 6, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(76, 2, 7, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(77, 2, 8, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(78, 2, 9, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(79, 2, 10, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(80, 2, 11, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(81, 2, 12, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(82, 2, 13, 'invisible', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(83, 2, 14, 'invisible', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(84, 2, 15, 'invisible', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(85, 2, 16, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(86, 2, 17, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(87, 2, 18, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(88, 2, 19, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(89, 2, 20, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(90, 2, 21, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(91, 2, 22, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(92, 2, 23, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(93, 2, 24, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(94, 2, 25, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(95, 2, 26, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(96, 2, 27, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(97, 2, 28, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(98, 2, 29, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(99, 2, 30, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(100, 2, 31, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(101, 2, 32, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(102, 2, 33, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(103, 2, 34, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(104, 2, 46, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(105, 2, 47, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(106, 2, 48, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(107, 2, 49, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(108, 2, 50, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(109, 2, 51, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(110, 2, 56, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(111, 2, 57, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(112, 2, 58, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(113, 2, 54, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(114, 2, 55, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(115, 2, 59, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(116, 2, 60, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(117, 2, 61, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(118, 2, 62, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(119, 2, 63, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(120, 2, 64, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(121, 2, 65, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(122, 2, 66, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(123, 2, 67, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(124, 2, 68, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(125, 2, 69, 'readonly', '2017-04-20 19:30:02', '2017-04-20 19:30:02'),
(126, 1, 70, 'write', '2017-04-20 20:14:47', '2017-04-20 20:14:47'),
(127, 1, 71, 'write', '2017-04-20 20:15:58', '2017-04-20 20:15:58'),
(128, 1, 72, 'write', '2017-04-20 20:17:36', '2017-04-20 20:17:36'),
(129, 1, 73, 'write', '2017-04-20 20:29:59', '2017-04-20 20:29:59'),
(130, 2, 73, 'invisible', '2017-04-20 20:32:29', '2017-04-20 20:32:29'),
(131, 2, 72, 'write', '2017-04-20 20:32:29', '2017-04-20 20:32:29'),
(132, 2, 71, 'write', '2017-04-20 20:32:29', '2017-04-20 20:32:29'),
(133, 2, 70, 'write', '2017-04-20 20:32:29', '2017-04-20 20:32:29'),
(134, 1, 74, 'write', '2017-04-20 20:39:47', '2017-04-20 20:39:47'),
(135, 2, 74, 'readonly', '2017-04-20 20:50:51', '2017-04-20 20:50:51'),
(136, 1, 75, 'write', '2017-04-23 14:06:27', '2017-04-23 14:06:27'),
(137, 1, 76, 'write', '2017-04-23 14:07:11', '2017-04-23 14:07:11'),
(138, 1, 77, 'write', '2017-04-23 14:09:09', '2017-04-23 14:09:09'),
(139, 1, 78, 'write', '2017-04-23 14:10:53', '2017-04-23 14:10:53'),
(140, 2, 75, 'readonly', '2017-04-23 14:13:06', '2017-04-23 14:13:06'),
(141, 2, 76, 'invisible', '2017-04-23 14:13:06', '2017-04-23 14:13:06'),
(142, 2, 77, 'readonly', '2017-04-23 14:13:06', '2017-04-23 14:13:06'),
(143, 2, 78, 'invisible', '2017-04-23 14:13:06', '2017-04-23 14:13:06'),
(144, 1, 79, 'write', '2017-04-27 13:03:10', '2017-04-27 13:03:10'),
(145, 1, 80, 'write', '2017-04-27 13:05:42', '2017-04-27 13:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, NULL),
(4, 2, 2, NULL, NULL),
(8, 1, 3, NULL, NULL),
(6, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `certifications` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `deleted_at`, `created_at`, `updated_at`, `title`, `certifications`) VALUES
(1, '2017-04-20 13:05:21', '2017-04-20 13:05:12', '2017-04-20 13:05:21', 'A', 2),
(2, NULL, '2017-04-20 13:07:01', '2017-04-20 13:07:01', 'A', 2),
(3, NULL, '2017-04-20 13:07:07', '2017-04-20 13:07:07', 'B', 2),
(4, NULL, '2017-05-04 10:19:57', '2017-05-04 10:19:57', 'A', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `logo` int(11) NOT NULL,
  `categorie` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `deleted_at`, `created_at`, `updated_at`, `title`, `logo`, `categorie`) VALUES
(1, NULL, '2017-04-20 11:57:25', '2017-04-20 11:57:25', 'Cisco', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'reseau.jpg', 'C:\\wamp64\\www\\la1\\storage\\uploads\\2017-04-20-123931-reseau.jpg', 'jpg', 'network', 1, 'nwphjvvcyqk4g8sjrpx2', 0, NULL, '2017-04-20 11:39:31', '2017-04-20 11:41:40'),
(2, 'Cisco_logo.png', 'C:\\wamp64\\www\\la1\\storage\\uploads\\2017-04-20-125535-Cisco_logo.png', 'png', '', 1, 'hk3akgpcx1fo9mpa38xz', 0, '2017-04-20 11:57:56', '2017-04-20 11:55:35', '2017-04-20 11:57:56'),
(3, 'Cisco_logo.jpg', 'C:\\wamp64\\www\\la1\\storage\\uploads\\2017-04-20-125718-Cisco_logo.jpg', 'jpg', '', 1, 'otyurq09zvehinrpu4o4', 0, NULL, '2017-04-20 11:57:18', '2017-04-20 11:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Client',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ali Hosni', 1, 'hosni.exe@gmail.com', '$2y$10$doMhlpeBnjrCTvFn4/1FHO/BjUw0iurcbVU.xM9EEEYerwoKCPWia', 'Employee', 'LVosdgIdsKPd7ETs3tbgMBuuqUs8Fb3CLkESTSxvn3FHaKydI5YPnDYWiKrh', NULL, '2017-04-20 09:55:56', '2017-04-29 13:46:21'),
(2, 'Bilel', 2, 'Mkademi@ali.com', '$2y$10$qtMCIdADNvx8qv/digqcLuSCkyucQh0SephRIZ1GwhkXsD/exD8JO', 'Employee', 'lA7V2IUVPpiYLpHeexzUIcpM0Bq6isRBQ2vSu1jd0ODshGomdBXPWrFtUeJo', NULL, '2017-04-20 13:47:46', '2017-04-20 19:38:53'),
(3, 'Amine', 3, 'ali@ali.com', '$2y$10$lyZApSnF.dN8bVtbWKemvOdovtUS0CVZEutdjN3aPBn6pVpXIXTuS', 'Employee', 'umcAFSk4l7vBVouGuPDkpHzb578WwMNTardFsZg5ZxVdMgkgiFznuGzpezz7', '2017-05-04 10:14:43', '2017-04-27 15:31:17', '2017-05-04 10:14:43'),
(4, 'helmi', 4, 'helmi@helmi.com', '$2y$10$e1aE4WwS.CMwv2eGYlzjv.AGoKULxR4LDDqWvsougS5vZEmMu2rLq', 'Employee', 'aJax8fdaNWMpwFsDvtBoyLPO7z9spMzUX2a4yQN6de7xXEkOuKyBRcDri6df', NULL, '2017-05-04 10:06:05', '2017-05-04 10:06:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ask_a_certifications`
--
ALTER TABLE `ask_a_certifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ask_a_certifications_category_foreign` (`category`),
  ADD KEY `ask_a_certifications_sub_category_foreign` (`sub_category`),
  ADD KEY `ask_a_certifications_certification_foreign` (`certification`),
  ADD KEY `ask_a_certifications_user_foreign` (`user`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certifications_sub_categories_foreign` (`sub_categories`);

--
-- Indexes for table `certifs`
--
ALTER TABLE `certifs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certifs_certification_foreign` (`certification`),
  ADD KEY `certifs_user_foreign` (`user`),
  ADD KEY `certifs_subject_foreign` (`subject`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_subject_foreign` (`subject`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responses_question_foreign` (`question`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_certifications_foreign` (`certifications`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_categorie_foreign` (`categorie`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `ask_a_certifications`
--
ALTER TABLE `ask_a_certifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `certifs`
--
ALTER TABLE `certifs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
