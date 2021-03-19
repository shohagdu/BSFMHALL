-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 02:28 AM
-- Server version: 10.1.38-MariaDB
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
-- Database: `medilife_special_hospital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_chart_of_accounts`
--

CREATE TABLE `acc_chart_of_accounts` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `details` varchar(100) NOT NULL DEFAULT '',
  `code` int(11) UNSIGNED NOT NULL,
  `type_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'meaning type of chart ids, Like income, expense, asset , liabilities &amp; equity 1 = asset, 3 = income, 4 = Expense',
  `head_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0 = Main, 1 = User Generated, 2 = System Generated',
  `opt_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Operation Type. 1 = Credit, 2 = Debit',
  `vat_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 = No Vat, 1 = Vat Exclude, 2 = Vat Include',
  `adjustment_group` tinyint(1) UNSIGNED DEFAULT '0' COMMENT 'To handle show hide from adjustment entry panel. 0 = False, 1 = True',
  `branch_id` smallint(6) UNSIGNED DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0 = delete, 1 = active, 3 = inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_chart_of_accounts`
--

INSERT INTO `acc_chart_of_accounts` (`id`, `name`, `parent_id`, `details`, `code`, `type_id`, `head_type`, `opt_type`, `vat_type`, `adjustment_group`, `branch_id`, `created_time`, `updated_at`, `created_at`, `is_active`) VALUES
(1, 'Asset', NULL, '', 10000000, 1, 0, 1, 0, 0, NULL, '2018-11-01 15:27:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'Current Asset', 1, '', 10100000, 1, 1, 1, 0, 0, NULL, '2018-11-01 15:28:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'Fixed Asset', 1, '', 10200000, 1, 1, 1, 0, 0, NULL, '2018-11-01 15:28:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, 'Bank Group', 2, '', 10101000, 1, 1, 1, 0, 0, NULL, '2018-11-01 15:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(5, 'Cash & cash Equivalent', 2, '', 10102000, 1, 1, 1, 0, 0, NULL, '2018-11-01 15:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(6, 'Main Cash', 5, '', 10102001, 1, 2, 1, 0, 0, NULL, '2018-11-01 15:34:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(7, 'IFIC BANK', 4, '', 10101001, 1, 2, 1, 0, 0, NULL, '2018-11-01 15:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(8, 'Income', NULL, '', 30000000, 3, 0, 1, 0, 0, NULL, '2018-11-01 15:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(9, 'Direct Income', 8, '', 30100000, 3, 1, 1, 0, 0, NULL, '2018-11-01 15:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(10, 'Indirect Income', 8, '', 30200000, 3, 1, 1, 0, 0, NULL, '2018-11-01 15:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(20, 'Expense', NULL, '', 40000000, 3, 0, 1, 0, 0, NULL, '2018-11-01 15:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(26, 'অন্যান্য ব্যয়', 20, '', 40106000, 4, 1, 1, 0, 0, NULL, '2018-11-01 15:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(102, 'Ashim Gharami', 4, 'Customer Group', 10101051, 1, 1, 1, 0, 0, NULL, '2019-01-08 14:54:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(114, 'Account Receiveable', 2, '', 10103000, 1, 1, 1, 0, 0, NULL, '2018-11-01 15:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(127, NULL, 114, 'Employee Group', 10103013, 1, 2, 1, 0, 0, NULL, '2019-02-19 11:36:31', '2019-02-19 11:36:31', '2019-02-19 11:36:31', 1),
(128, NULL, 114, 'Employee Group', 10103002, 1, 2, 1, 0, 0, NULL, '2019-02-19 11:38:01', '2019-02-19 11:38:01', '2019-02-19 11:38:01', 1),
(129, NULL, 114, 'Employee Group', 10103003, 1, 2, 1, 0, 0, NULL, '2019-02-19 12:39:40', '2019-02-19 12:39:40', '2019-02-19 12:39:40', 1),
(130, NULL, 114, 'Employee Group', 10103004, 1, 2, 1, 0, 0, NULL, '2019-02-19 12:39:47', '2019-02-19 12:39:47', '2019-02-19 12:39:47', 1),
(131, NULL, 114, 'Employee Group', 10103005, 1, 2, 1, 0, 0, NULL, '2019-02-19 12:40:21', '2019-02-19 12:40:21', '2019-02-19 12:40:21', 1),
(132, NULL, 114, 'Employee Group', 10103006, 1, 2, 1, 0, 0, NULL, '2019-02-19 12:40:28', '2019-02-19 12:40:28', '2019-02-19 12:40:28', 1),
(133, NULL, 114, 'Employee Group', 10103007, 1, 2, 1, 0, 0, NULL, '2019-02-19 12:40:39', '2019-02-19 12:40:39', '2019-02-19 12:40:39', 1),
(134, NULL, 114, 'Employee Group', 10103008, 1, 2, 1, 0, 0, NULL, '2019-02-19 12:44:05', '2019-02-19 12:44:05', '2019-02-19 12:44:05', 1),
(135, NULL, 114, 'Employee Group', 10103009, 1, 2, 1, 0, 0, NULL, '2019-02-19 13:03:05', '2019-02-19 13:03:05', '2019-02-19 13:03:05', 1),
(136, NULL, 114, 'Employee Group', 10103010, 1, 2, 1, 0, 0, NULL, '2019-02-19 13:04:10', '2019-02-19 13:04:10', '2019-02-19 13:04:10', 1),
(137, NULL, 114, 'Employee Group', 10103011, 1, 2, 1, 0, 0, NULL, '2019-02-19 13:05:07', '2019-02-19 13:05:07', '2019-02-19 13:05:07', 1),
(138, NULL, 114, 'Employee Group', 10103012, 1, 2, 1, 0, 0, NULL, '2019-02-19 13:05:25', '2019-02-19 13:05:25', '2019-02-19 13:05:25', 1),
(139, NULL, 114, 'Employee Group', 10103013, 1, 2, 1, 0, 0, NULL, '2019-02-19 13:06:15', '2019-02-19 13:06:15', '2019-02-19 13:06:15', 1),
(140, NULL, 114, 'Employee Group', 10103014, 1, 2, 1, 0, 0, NULL, '2019-02-19 13:07:36', '2019-02-19 13:07:36', '2019-02-19 13:07:36', 1),
(141, NULL, 114, 'Employee Group', 10103015, 1, 2, 1, 0, 0, NULL, '2019-02-19 13:08:10', '2019-02-19 13:08:10', '2019-02-19 13:08:10', 1),
(142, NULL, 114, 'Employee Group', 10103016, 1, 2, 1, 0, 0, NULL, '2019-02-19 13:50:48', '2019-02-19 13:50:48', '2019-02-19 13:50:48', 1),
(144, NULL, 114, 'Employee Group', 10103017, 1, 2, 1, 0, 0, NULL, '2019-03-01 04:16:17', '2019-03-01 04:16:17', '2019-03-01 04:16:17', 1),
(168, NULL, 114, 'Employee Group', 10103018, 1, 2, 1, 0, 0, NULL, '2019-03-01 04:30:15', '2019-03-01 04:30:15', '2019-03-01 04:30:15', 1),
(169, NULL, 114, 'Employee Group', 10103019, 1, 2, 1, 0, 0, NULL, '2019-03-01 04:32:10', '2019-03-01 04:32:10', '2019-03-01 04:32:10', 1),
(171, NULL, 114, 'Employee Group', 10103020, 1, 2, 1, 0, 0, NULL, '2019-03-29 04:36:22', '2019-03-29 04:36:22', '2019-03-29 04:36:22', 1),
(172, NULL, 114, 'Employee Group', 10103021, 1, 2, 1, 0, 0, NULL, '2019-04-06 22:57:50', '2019-04-06 22:57:50', '2019-04-06 22:57:50', 1),
(173, NULL, 114, 'Employee Group', 10103022, 1, 2, 1, 0, 0, NULL, '2019-06-23 20:51:42', '2019-06-23 20:51:42', '2019-06-23 20:51:42', 1),
(176, NULL, 114, 'Employee Group', 10103023, 1, 2, 1, 0, 0, NULL, '2019-07-03 11:47:49', '2019-07-03 11:47:49', '2019-07-03 11:47:49', 1),
(177, NULL, 114, 'Employee Group', 10103024, 1, 2, 1, 0, 0, NULL, '2019-07-03 12:03:24', '2019-07-03 12:03:24', '2019-07-03 12:03:24', 1),
(187, NULL, 114, 'Employee Group', 10103025, 1, 2, 1, 0, 0, NULL, '2020-01-04 06:59:28', '2020-01-04 06:59:28', '2020-01-04 06:59:28', 1),
(188, NULL, 114, 'Employee Group', 10103026, 1, 2, 1, 0, 0, NULL, '2020-01-06 23:30:39', '2020-01-06 23:30:39', '2020-01-06 23:30:39', 1),
(189, NULL, 114, 'Employee Group', 10103027, 1, 2, 1, 0, 0, NULL, '2020-01-06 23:40:05', '2020-01-06 23:40:05', '2020-01-06 23:40:05', 1),
(190, NULL, 114, 'Employee Group', 10103028, 1, 2, 1, 0, 0, NULL, '2020-01-06 23:43:33', '2020-01-06 23:43:33', '2020-01-06 23:43:33', 1),
(191, NULL, 114, 'Employee Group', 10103029, 1, 2, 1, 0, 0, NULL, '2020-01-20 23:26:34', '2020-01-20 23:26:34', '2020-01-20 23:26:34', 1),
(192, NULL, 114, 'Employee Group', 10103030, 1, 2, 1, 0, 0, NULL, '2020-01-20 23:34:06', '2020-01-20 23:34:06', '2020-01-20 23:34:06', 1),
(193, NULL, 114, 'Employee Group', 10103031, 1, 2, 1, 0, 0, NULL, '2020-01-20 23:36:22', '2020-01-20 23:36:22', '2020-01-20 23:36:22', 1),
(194, NULL, 114, 'Employee Group', 10103032, 1, 2, 1, 0, 0, NULL, '2020-01-20 23:44:52', '2020-01-20 23:44:52', '2020-01-20 23:44:52', 1),
(195, NULL, 114, 'Employee Group', 10103033, 1, 2, 1, 0, 0, NULL, '2020-01-20 23:49:15', '2020-01-20 23:49:15', '2020-01-20 23:49:15', 1),
(196, NULL, 114, 'Employee Group', 10103034, 1, 2, 1, 0, 0, NULL, '2020-01-20 23:52:49', '2020-01-20 23:52:49', '2020-01-20 23:52:49', 1),
(197, NULL, 114, 'Employee Group', 10103035, 1, 2, 1, 0, 0, NULL, '2020-01-20 23:57:04', '2020-01-20 23:57:04', '2020-01-20 23:57:04', 1),
(198, NULL, 114, 'Employee Group', 10103036, 1, 2, 1, 0, 0, NULL, '2020-01-21 00:00:09', '2020-01-21 00:00:09', '2020-01-21 00:00:09', 1),
(199, NULL, 114, 'Employee Group', 10103037, 1, 2, 1, 0, 0, NULL, '2020-01-21 00:00:17', '2020-01-21 00:00:17', '2020-01-21 00:00:17', 1),
(200, NULL, 114, 'Employee Group', 10103038, 1, 2, 1, 0, 0, NULL, '2020-01-21 00:23:24', '2020-01-21 00:23:24', '2020-01-21 00:23:24', 1),
(201, NULL, 114, 'Employee Group', 10103039, 1, 2, 1, 0, 0, NULL, '2020-01-21 00:32:16', '2020-01-21 00:32:16', '2020-01-21 00:32:16', 1),
(202, NULL, 114, 'Employee Group', 10103040, 1, 2, 1, 0, 0, NULL, '2020-01-21 01:03:33', '2020-01-21 01:03:33', '2020-01-21 01:03:33', 1),
(203, NULL, 114, 'Employee Group', 10103041, 1, 2, 1, 0, 0, NULL, '2020-01-21 01:06:02', '2020-01-21 01:06:02', '2020-01-21 01:06:02', 1),
(204, NULL, 114, 'Employee Group', 10103042, 1, 2, 1, 0, 0, NULL, '2020-12-14 05:25:32', '2020-12-14 05:25:32', '2020-12-14 05:25:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `all_sttings`
--

CREATE TABLE `all_sttings` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` tinyint(4) UNSIGNED DEFAULT NULL COMMENT '1= Department, 2= Designation, 3 = Degree, 4 = Nationality , 5 = leave category, 6 = Program Ctg, 7 = Deduction Ctg, 8 = Earning Ctg, 9 = Bank Information, 10 = Product Unit, 11 = Product Ctg, 12 = Product Sub Ctg,13 = cadre ctg, 14 = program_type, 15 = program_style,16 = program_description_setup ,18=work area',
  `is_default` tinyint(1) UNSIGNED DEFAULT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `leave_balance` tinyint(3) UNSIGNED DEFAULT NULL,
  `has_leave_limit` tinyint(4) DEFAULT NULL COMMENT '1 = yes, other wise no limit',
  `display_position` int(11) UNSIGNED DEFAULT NULL,
  `rate_vumika` int(11) UNSIGNED DEFAULT NULL,
  `rate_chart_work_area` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `is_active` tinyint(4) UNSIGNED NOT NULL DEFAULT '1' COMMENT ' 0= delete, 1= active,  2= inactive',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_sttings`
--

INSERT INTO `all_sttings` (`id`, `type`, `is_default`, `title`, `abbreviation`, `parent_id`, `leave_balance`, `has_leave_limit`, `display_position`, `rate_vumika`, `rate_chart_work_area`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 'S.S.C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-14 01:32:33', NULL),
(2, 3, NULL, 'H.S.C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2019-02-28 07:37:11'),
(3, 5, 1, 'Sick Leave', NULL, NULL, 10, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(4, 5, 1, 'Casual Leave', NULL, NULL, 5, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(5, 5, NULL, 'Hello', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-02-28 05:25:58', '2019-02-28 06:00:02'),
(6, 5, NULL, 'asdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-02-28 06:23:26', '2019-02-28 06:32:28'),
(7, 5, NULL, 'Marternity Leave', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-28 06:37:27', '2019-03-01 23:19:59'),
(8, 5, NULL, 'Leave Without Pay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-28 06:52:17', '2019-03-01 23:20:13'),
(9, 1, NULL, 'Anesthesiology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-28 06:59:31', '2019-12-21 05:14:54'),
(10, 1, NULL, 'Accident & Emergency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-28 06:59:58', '2019-12-21 05:14:36'),
(11, 1, NULL, 'Cancer Surgery (OncoSurgery)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-28 07:04:00', '2019-12-21 05:15:11'),
(12, 2, NULL, 'Director', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-28 07:04:37', '2019-12-21 05:15:49'),
(13, 4, NULL, 'বাংলাদেশ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-28 07:15:49', '2019-09-21 21:05:05'),
(14, 6, NULL, 'নাটক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-02-28 07:40:59', '2019-09-08 23:38:49'),
(15, 7, 1, 'PF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-28 07:49:54', '2019-03-31 21:21:10'),
(16, 8, 1, 'Basic Salary', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-28 07:52:20', '2019-03-31 21:19:32'),
(17, 9, NULL, 'Sonali Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-02-28 18:57:03', '2019-02-28 21:45:00'),
(18, 5, NULL, 'Leave With Pay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-01 23:20:23', '2019-03-01 23:20:23'),
(19, 5, NULL, 'Special Leave', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-01 23:20:35', '2019-03-01 23:20:35'),
(20, 6, NULL, 'সঙ্গীত', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-02 06:31:58', '2019-09-07 01:51:26'),
(21, 10, NULL, 'PIece', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 02:08:50', '2019-03-23 02:09:05'),
(22, 10, NULL, 'KG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 02:09:21', '2019-03-23 02:09:21'),
(23, 11, NULL, 'Machineries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 04:18:49', '2019-04-13 16:01:18'),
(24, 12, NULL, 'Scaner', NULL, 54, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 04:56:52', '2019-04-13 16:04:41'),
(25, 12, NULL, 'Printer', NULL, 54, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 04:57:31', '2019-04-13 16:04:06'),
(26, 12, NULL, 'Fax', NULL, 54, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 04:58:43', '2019-04-13 16:03:49'),
(27, 12, NULL, 'Computer', NULL, 54, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-04-13 16:03:32'),
(28, 13, NULL, 'BCS (Administration)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(29, 13, NULL, 'BCS (Foreign Affairs)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(30, 13, NULL, 'BCS (Taxation)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(31, 13, NULL, 'BCS (Police)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(32, 13, NULL, 'BCS (Audit & Accounts)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(33, 13, NULL, 'BCS (Customs & Excise)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(34, 13, NULL, 'BCS (Cooperatives)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(35, 13, NULL, 'BCS (Economic)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(36, 13, NULL, ' BCS (Food)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(37, 13, NULL, 'BCS (Information)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(38, 13, NULL, 'BCS (Family Planning)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(39, 13, NULL, 'BCS (Postal)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(40, 13, NULL, 'BCS (Railway Transportation & Commercial)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(41, 13, NULL, 'BCS (Ansar)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(42, 13, NULL, 'BCS (Trade)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(43, 8, 1, 'House Rent', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-31 21:19:44', '2019-03-31 21:19:44'),
(44, 8, 1, 'Medical', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-31 21:19:55', '2019-03-31 21:19:55'),
(45, 8, 1, 'Allowance', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-31 21:20:21', '2019-03-31 21:20:21'),
(46, 8, NULL, 'TA', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-31 21:20:32', '2019-03-31 21:20:32'),
(47, 8, NULL, 'DA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-31 21:20:38', '2019-04-05 20:47:30'),
(48, 7, NULL, 'Loan', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-31 21:21:21', '2019-03-31 21:21:21'),
(49, 7, 1, 'Advance Income Tax deduction', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-31 21:24:44', '2019-03-31 21:24:44'),
(50, 7, 1, 'Health Insurance Premium', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-31 21:30:09', '2019-03-31 21:30:09'),
(51, 11, NULL, 'Equipment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-04-13 16:01:39', '2019-04-13 16:01:39'),
(52, 11, NULL, 'Accessories', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-04-13 16:02:10', '2019-04-13 16:02:10'),
(53, 11, NULL, 'Furniture', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-04-13 16:02:50', '2019-04-13 16:02:50'),
(54, 11, NULL, 'Office Equipment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-04-13 16:03:07', '2019-04-13 16:03:07'),
(55, 12, NULL, 'Photocopier', NULL, 54, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-04-13 16:05:02', '2019-04-13 16:05:02'),
(56, 10, NULL, 'Dozen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-04-13 16:05:57', '2019-04-13 16:10:03'),
(57, 12, NULL, 'Chair', NULL, 53, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-04-23 23:20:27', '2019-04-23 23:20:27'),
(58, 12, NULL, 'Table', NULL, 53, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-04-23 23:20:38', '2019-04-23 23:20:38'),
(59, 2, NULL, 'Chairmain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-04-24 21:40:18', '2019-12-21 05:15:39'),
(60, 14, NULL, 'গানের', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-07-05 23:12:40', '2019-09-09 00:15:57'),
(61, 16, NULL, 'গ্রন্হনা', NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, '2019-07-06 00:22:21', '2019-09-11 22:04:07'),
(62, 16, NULL, 'উপস্থাপনা', NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, NULL, '2019-07-06 00:22:35', '2019-09-11 22:01:38'),
(63, 16, NULL, 'প্রাসঙ্গিক কথা', NULL, NULL, NULL, NULL, 3, NULL, NULL, 0, NULL, '2019-07-06 00:22:47', '2019-09-11 22:06:49'),
(64, 16, NULL, 'আলোচনা', NULL, NULL, NULL, NULL, 4, NULL, NULL, 0, NULL, '2019-07-06 00:22:58', '2019-09-11 22:00:34'),
(65, 16, NULL, 'গান', NULL, NULL, NULL, NULL, 5, NULL, NULL, 0, NULL, '2019-07-06 00:23:07', '2019-09-11 22:03:58'),
(66, 16, NULL, 'কবিতা', NULL, NULL, NULL, NULL, 6, NULL, NULL, 0, NULL, '2019-07-06 00:23:16', '2019-09-11 22:02:01'),
(67, 16, NULL, 'নাট্যাংশ', NULL, NULL, NULL, NULL, 7, NULL, NULL, 0, NULL, '2019-07-06 00:23:26', '2019-09-11 22:05:09'),
(68, 14, NULL, 'মহিলাদের অনুষ্ঠান', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-07-06 00:30:05', '2019-09-09 00:16:17'),
(69, 14, NULL, 'শিশু', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-07-06 00:30:31', '2019-09-09 00:16:27'),
(70, 14, NULL, 'বিশ্ববিদ্যালয়ের ছাত্র-ছাত্রী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-07-06 00:30:53', '2019-09-09 00:16:10'),
(71, 14, NULL, 'সমসাময়িক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-07-06 00:31:20', '2019-09-09 00:16:32'),
(72, 14, NULL, 'বার্ষিক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-07-06 00:31:42', '2019-09-09 00:16:06'),
(73, 15, NULL, 'ম্যাগাজিন ও কম্পোজিট অনুষ্ঠান', NULL, NULL, NULL, NULL, 4, NULL, NULL, 1, NULL, '2019-07-06 00:32:22', '2019-09-19 01:00:04'),
(74, 15, NULL, 'সংগীত', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2019-07-06 00:32:41', '2019-07-06 00:32:41'),
(77, 15, NULL, 'নাটক', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, NULL, '2019-07-18 15:15:13', '2019-07-18 15:15:13'),
(78, 15, NULL, 'কথিকা , সাহিত্য , সাস্থ্য ,কৃষি, খেলাধুলা,ধর্মীয়  আলোচনা', NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, NULL, '2019-07-18 15:18:15', '2019-07-18 15:18:50'),
(79, 15, NULL, 'সাধারন আলোচনা', NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(80, 15, NULL, 'সাক্ষাৎকার', NULL, NULL, NULL, NULL, 8, NULL, NULL, 1, NULL, '2019-07-18 15:20:12', '2019-07-18 15:24:54'),
(81, 15, NULL, 'চিঠিপত্র/ এস এম এস / ইমেইল', NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, NULL, '2019-07-18 15:21:47', '2019-07-18 15:25:02'),
(82, 15, NULL, 'শিশু কিশোর ও যুব সমাজের জন্য অনুষ্ঠান', NULL, NULL, NULL, NULL, 10, NULL, NULL, 1, NULL, '2019-07-18 15:22:35', '2019-07-18 15:22:35'),
(83, 15, NULL, 'কবিতা(রচনা/পাঠ)', NULL, NULL, NULL, NULL, 13, NULL, NULL, 1, NULL, '2019-07-18 15:23:18', '2019-07-18 15:23:18'),
(84, 15, NULL, 'গল্প(রচনা/পাঠ)', NULL, NULL, NULL, NULL, 14, NULL, NULL, 1, NULL, '2019-07-18 15:23:37', '2019-07-18 15:23:37'),
(85, 15, NULL, 'ম্যাগাজিন ও কম্পোজিট অনুষ্ঠান', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(86, 15, NULL, 'বহি: রেকর্ডিং ও স্পট রিপোটিং', NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(87, 15, NULL, 'ফোন-ইন-প্রোগ্রাম', NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(88, 15, NULL, 'বিতর্ক', NULL, NULL, NULL, NULL, 11, NULL, NULL, 1, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(89, 15, NULL, 'বিচারক', NULL, NULL, NULL, NULL, 12, NULL, NULL, 1, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(90, 15, NULL, 'ধারা বর্ণনা', NULL, NULL, NULL, NULL, 15, NULL, NULL, 1, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(91, 15, NULL, 'অনুষ্ঠান ঘোষনা/উপস্থাপনা', NULL, NULL, NULL, NULL, 16, NULL, NULL, 1, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(92, 15, NULL, 'সংবাদ', NULL, NULL, NULL, NULL, 17, NULL, NULL, 1, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(93, 15, NULL, 'বর্হিবিশ্ব সংবাদ', NULL, NULL, NULL, NULL, 18, NULL, NULL, 1, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(94, 15, NULL, 'ধর্মীয় অনুষ্ঠান', NULL, NULL, NULL, NULL, 19, NULL, NULL, 1, NULL, '2019-07-18 15:19:57', '2019-07-18 15:19:57'),
(95, 17, NULL, 'Technician', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(96, 17, NULL, 'Technician-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(97, 19, NULL, 'testingt', NULL, 93, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-06 01:53:18', '2019-09-06 02:05:47'),
(98, 19, NULL, 'লঘু সংগীত পরিবেশনা (কন্ঠ বা যন্ত্র সঙ্গীত)', NULL, 74, NULL, NULL, 1, 367, '[\"328\",\"329\"]', 1, NULL, '2019-09-06 02:09:06', '2019-09-16 04:42:00'),
(99, 19, NULL, 'দলগত সংগীত পরিবেশনা, লোক সঙ্গীত সম্প্রদায়/সঙ্গীতগোষ্ঠী', NULL, 74, NULL, NULL, 2, 369, '[\"328\"]', 1, NULL, '2019-09-06 02:27:06', '2019-09-06 03:55:31'),
(100, 19, NULL, 'নাট্য শিল্পী', NULL, 77, NULL, NULL, 1, 377, '[\"334\"]', 1, NULL, '2019-09-06 03:56:04', '2019-09-06 03:56:04'),
(101, 19, NULL, 'দলগত নাটক পরিবেশনা', NULL, 77, NULL, NULL, 2, 378, '[\"334\"]', 1, NULL, '2019-09-06 03:57:06', '2019-09-06 03:57:06'),
(102, 19, NULL, 'অনুষ্ঠান গবেষনা, প্রন্হনা ও উপস্থাপনা/পরিচালনা', NULL, 73, NULL, NULL, 1, 376, '[\"340\",\"333\"]', 1, NULL, '2019-09-06 03:58:34', '2019-09-06 03:58:34'),
(103, 19, NULL, 'উচ্চাঙ্গ সঙ্গীত(কন্ঠ বা যন্ত্র সঙ্গীত)', NULL, 74, NULL, NULL, 3, 370, '[\"328\",\"329\"]', 1, NULL, '2019-09-06 08:04:55', '2019-09-06 08:04:55'),
(104, 19, NULL, 'সঙ্গীত পরিচালনা ও সুর সংযোজনা(একই ব্যাক্তি)', NULL, 74, NULL, NULL, 4, 372, '[\"330\"]', 1, NULL, '2019-09-06 08:06:27', '2019-09-06 16:23:05'),
(105, 19, NULL, 'গীতি নকশা রচনা (গ্রন্থনা ও গান রচনা)', NULL, 74, NULL, NULL, 5, 373, '[\"331\"]', 1, NULL, '2019-09-06 16:28:22', '2019-09-06 16:28:22'),
(106, 19, NULL, 'সঙ্গীত পরিচালনা ‍ও সুর সংযোজনা (গীতি নকশার ক্ষেত্রে)', NULL, 74, NULL, NULL, 6, 372, '[\"330\"]', 1, NULL, '2019-09-06 16:30:21', '2019-09-06 16:30:21'),
(107, 19, NULL, 'গীতি আলেখ্য (গ্রন্থনা)', NULL, 74, NULL, NULL, 7, 374, '[\"332\"]', 1, NULL, '2019-09-06 16:30:46', '2019-09-06 16:30:46'),
(108, 19, NULL, 'গান রচনা', NULL, 74, NULL, NULL, 8, 373, '[\"331\"]', 1, NULL, '2019-09-06 16:31:26', '2019-09-06 16:31:26'),
(109, 19, NULL, 'রয়েলটি', NULL, 74, NULL, NULL, 9, 451, '[\"331\"]', 1, NULL, '2019-09-06 16:32:04', '2019-09-06 16:32:04'),
(110, 19, NULL, 'গান রচনা (সর্বস্বত্ত্ব ক্রয়)', NULL, 74, NULL, NULL, 10, 373, '[\"331\"]', 1, NULL, '2019-09-06 16:32:26', '2019-09-06 16:32:26'),
(111, 19, NULL, 'বিশ্ব সঙ্গীত গ্রন্থনা ও উপস্থাপনা', NULL, 74, NULL, NULL, 11, 375, '[\"333\",\"332\"]', 1, NULL, '2019-09-06 16:33:51', '2019-09-06 16:33:51'),
(112, 19, NULL, 'বিশ্ব সঙ্গীত গ্রন্থনা', NULL, 74, NULL, NULL, 12, 374, '[\"332\"]', 1, NULL, '2019-09-06 16:34:13', '2019-09-06 16:34:13'),
(113, 19, NULL, 'বিশ্ব সঙ্গীত উপস্থাপনা', NULL, 74, NULL, NULL, 13, 376, '[\"333\"]', 1, NULL, '2019-09-06 16:34:39', '2019-09-06 16:34:39'),
(114, 19, NULL, 'স্টাফ নোটেশন', NULL, 74, NULL, NULL, 14, 453, '[\"329\"]', 1, NULL, '2019-09-06 16:35:04', '2019-09-06 16:35:04'),
(115, 19, NULL, 'সঙ্গীতে যন্ত্র সঙ্গতকরণ', NULL, 74, NULL, NULL, 15, 453, '[\"329\"]', 1, NULL, '2019-09-06 16:35:32', '2019-09-06 16:35:32'),
(116, 19, NULL, 'যাত্রাদল কর্তৃক যাত্রা পরিবেশনা', NULL, 77, NULL, NULL, 3, 379, '[\"334\"]', 1, NULL, '2019-09-06 16:50:47', '2019-09-06 16:50:47'),
(117, 19, NULL, 'নাটক প্রযোজনা', NULL, 77, NULL, NULL, 4, 380, '[\"336\"]', 1, NULL, '2019-09-06 16:51:08', '2019-09-06 16:51:08'),
(118, 19, NULL, 'নাটকের পান্ডুলিপি রচনা (মৌলিক):', NULL, 77, NULL, NULL, 5, 381, '[\"335\"]', 1, NULL, '2019-09-06 16:51:37', '2019-09-06 16:51:37'),
(119, 19, NULL, 'নাটকের পান্ডুলিপি রচনা (অন্য লেখকের কাহিনী অনুবাদ/ভাবানুবাদ/রুপান্তর)', NULL, 77, NULL, NULL, 6, 382, '[\"337\"]', 1, NULL, '2019-09-06 16:52:03', '2019-09-06 16:53:19'),
(120, 19, NULL, 'নাটকের মূল কাহিনীকার/গল্প লেখক (দেশী ও বিদেশী)', NULL, 77, NULL, NULL, 7, 385, '[\"338\"]', 1, NULL, '2019-09-06 16:55:36', '2019-09-06 16:55:36'),
(121, 19, NULL, 'জীবন্তিকা রচনা', NULL, 77, NULL, NULL, 8, 387, '[\"332\"]', 1, NULL, '2019-09-06 16:55:53', '2019-09-06 16:55:53'),
(122, 19, NULL, 'বিশেষ ধরনের গবেষণাধর্মী জীবন্তিকা', NULL, 77, NULL, NULL, 9, 388, '[\"339\",\"332\"]', 1, NULL, '2019-09-06 16:56:07', '2019-09-06 16:56:07'),
(123, 19, NULL, 'স্টক ক্যারেক্টার প্রতিদিন প্রচারিত হয় এ জাতীয় অনুষ্ঠানের জন্য', NULL, 77, NULL, NULL, 10, 377, '[\"334\"]', 1, NULL, '2019-09-06 16:56:27', '2019-09-06 16:56:27'),
(124, 19, NULL, 'সাধারণ, সাহিত্য, কৃষি, স্বাস্থ্য, বিজ্ঞান, ধর্মীয় প্রচারমূলক কথিকা (রচনা ও পাঠ)।', NULL, 78, NULL, NULL, 1, 0, '[\"333\",\"332\"]', 1, NULL, '2019-09-06 16:56:57', '2019-09-06 16:56:57'),
(125, 19, NULL, 'বিশেষ গবেষণামূলক কথিকা (রচনা ও পাঠ)', NULL, 78, NULL, NULL, 2, 389, '[\"333\",\"332\"]', 1, NULL, '2019-09-06 16:57:27', '2019-09-06 16:57:27'),
(126, 19, NULL, 'সাময়িক প্রসঙ্গ খেলাধুলা, ধর্মীয় ইত্যাদি আলোচনা অনুষ্ঠান পরিচালনা', NULL, 78, NULL, NULL, 3, 390, '[\"340\"]', 1, NULL, '2019-09-06 16:57:48', '2019-09-06 16:57:48'),
(127, 19, NULL, 'সাময়িক প্রসঙ্গ খেলাধুলা, ধর্মীয় ইত্যাদি আলোচনা অনুষ্ঠানে অংশগ্রহণ', NULL, 78, NULL, NULL, 4, 391, '[\"341\"]', 1, NULL, '2019-09-06 16:58:10', '2019-09-06 16:58:40'),
(128, 19, NULL, 'পর্যালোচনা/দৈনিক পত্রিকার সম্পাদকীয় নিয়ে প্রতিবেদন।', NULL, 78, NULL, NULL, 5, 392, '[\"342\"]', 1, NULL, '2019-09-06 16:58:57', '2019-09-06 16:58:57'),
(129, 19, NULL, 'অনুষ্ঠান গবেষণা, গ্রন্থনা ও উপস্থাপনা/ পরিচালনা', NULL, 73, NULL, NULL, 1, NULL, NULL, 0, NULL, '2019-09-06 16:59:58', '2019-09-09 02:21:32'),
(130, 19, NULL, 'অনুষ্ঠান গবেষণা ও গ্রন্থনা', NULL, 73, NULL, NULL, 2, 395, '[\"339\",\"332\"]', 1, NULL, '2019-09-06 17:00:16', '2019-09-06 17:00:16'),
(131, 19, NULL, 'অনুষ্ঠান উপস্থাপনা/ পরিচালনা', NULL, 73, NULL, NULL, 3, 376, '[\"340\",\"333\"]', 1, NULL, '2019-09-06 17:00:47', '2019-09-06 17:00:47'),
(132, 19, NULL, 'সঙ্গীত শিক্ষার আসর পরিচালনা (শিশু কিশোর ও সাধারণ)', NULL, 73, NULL, NULL, 4, 396, '[\"328\"]', 1, NULL, '2019-09-06 17:01:11', '2019-09-06 17:01:11'),
(133, 19, NULL, 'সঙ্গীত আসরে অংশগ্রহণ (সর্বোচ্চ ৬ জন || শিশু, কিশোর ও সাধারণ)', NULL, 73, NULL, NULL, 5, 420, '[\"340\"]', 1, NULL, '2019-09-06 17:02:03', '2019-09-09 02:23:04'),
(134, 19, NULL, 'দৈনিক আসর ভিত্তিক অনুষ্ঠান পরিচালনা।', NULL, 73, NULL, NULL, 6, 398, '[\"340\"]', 1, NULL, '2019-09-06 17:02:22', '2019-09-06 17:02:22'),
(135, 19, NULL, 'সাপ্তাহিক আসর ভিত্তিক অনুষ্ঠান পরিচালনা', NULL, 73, NULL, NULL, 7, 398, '[\"340\"]', 1, NULL, '2019-09-06 17:02:41', '2019-09-06 17:02:41'),
(136, 19, NULL, '৬ ঘণ্টা বা ততোধিক সময়ের অনুষ্ঠান ঘোষণা (পান্ডুলিপিসহ)', NULL, 91, NULL, NULL, 1, 420, '[\"333\",\"332\"]', 1, NULL, '2019-09-06 17:03:44', '2019-09-06 17:03:44'),
(137, 19, NULL, 'অনুর্ধ্ব ৬ ঘণ্টা সময়ের অনুষ্ঠান ঘোষণা (পান্ডুলিপিসহ', NULL, 91, NULL, NULL, 2, 421, '[\"333\",\"332\"]', 1, NULL, '2019-09-06 17:03:59', '2019-09-06 17:03:59'),
(138, 19, NULL, 'অনুষ্ঠান ঘোষণা/উপস্থাপনা (পান্ডুলিপি বিহীন)', NULL, 91, NULL, NULL, 3, 422, '[\"333\"]', 1, NULL, '2019-09-06 17:04:12', '2019-09-06 17:04:12'),
(139, 19, NULL, 'ইংরেজী আবহাওয়া বার্তা গ্রন্থনা ও পাঠ', NULL, 91, NULL, NULL, 4, 423, '[\"333\",\"332\"]', 1, NULL, '2019-09-06 17:04:26', '2019-09-06 17:04:26'),
(140, 19, NULL, 'সংবাদ প্রবাহ/ইংরেজি নিউজ রীল গ্রন্থনা ও উপস্থাপনা', NULL, 91, NULL, NULL, 5, 424, '[\"333\"]', 1, NULL, '2019-09-06 17:04:41', '2019-09-06 17:04:41'),
(141, 19, NULL, 'সংবাদ প্রবাহ/ইংরেজি নিউজ রীল গ্রন্থনা', NULL, 91, NULL, NULL, 6, 425, '[\"332\"]', 1, NULL, '2019-09-06 17:04:59', '2019-09-06 17:04:59'),
(142, 19, NULL, 'সংবাদ প্রবাহ/ইংরেজী নিউজ রীল উপস্থাপনা', NULL, 91, NULL, NULL, 7, 426, '[\"333\"]', 1, NULL, '2019-09-06 17:05:12', '2019-09-06 17:05:12'),
(143, 15, NULL, 'ভ্রমন ও দৈনিক ভাতা', NULL, NULL, NULL, NULL, 20, NULL, NULL, 1, NULL, '2019-09-06 17:06:15', '2019-09-06 17:06:15'),
(144, 15, NULL, 'আন্তর্জাতিক প্রতিযোগিতার জন্য অনুষ্ঠান', NULL, NULL, NULL, NULL, 21, NULL, NULL, 1, NULL, '2019-09-06 17:06:50', '2019-09-06 17:06:50'),
(145, 15, NULL, 'শব্দ সম্পাদনা/বাণীবদ্ধকরন', NULL, NULL, NULL, NULL, 22, NULL, NULL, 1, NULL, '2019-09-06 17:07:28', '2019-09-06 17:07:28'),
(146, 19, NULL, 'ভ্রমন ভাতা', NULL, 143, NULL, NULL, 1, 457, '[\"456\"]', 1, NULL, '2019-09-06 17:09:30', '2019-09-06 17:09:30'),
(147, 19, NULL, 'দৈনিক ভাতা', NULL, 143, NULL, NULL, 2, 457, '[\"456\"]', 1, NULL, '2019-09-06 17:09:55', '2019-09-06 17:09:55'),
(148, 16, NULL, 'কন্ঠশিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:38:15', '2019-09-11 22:01:45'),
(149, 16, NULL, 'যন্ত্রশিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:38:30', '2019-09-11 22:07:31'),
(150, 16, NULL, 'সঙ্গীত পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:38:49', '2019-09-11 22:07:35'),
(151, 16, NULL, 'সুর সংযোজন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:39:00', '2019-09-11 22:07:40'),
(152, 16, NULL, 'নাট্যশিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:39:27', '2019-09-11 22:05:03'),
(153, 16, NULL, 'দলীয় পরিবেশনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:39:40', '2019-09-11 22:04:49'),
(154, 16, NULL, 'প্রযোজনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:39:52', '2019-09-11 22:06:40'),
(155, 16, NULL, 'পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:40:00', '2019-09-11 22:06:00'),
(156, 16, NULL, 'পরিবেশনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:40:12', '2019-09-11 22:06:11'),
(157, 16, NULL, 'অনুবাদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:40:21', '2019-09-11 21:59:52'),
(158, 16, NULL, 'আলোচনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:40:30', '2019-09-11 22:00:29'),
(159, 16, NULL, 'আলোচক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:40:47', '2019-09-11 22:00:22'),
(160, 16, NULL, 'পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:40:56', '2019-09-11 22:06:16'),
(161, 16, NULL, 'গবেষনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:41:06', '2019-09-11 22:02:12'),
(162, 16, NULL, 'প্রতিবেদন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:41:16', '2019-09-11 22:06:21'),
(163, 16, NULL, 'প্রশ্নোত্তর', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:41:32', '2019-09-11 22:06:45'),
(164, 16, NULL, 'অংশগ্রহন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:41:46', '2019-09-11 22:00:04'),
(165, 16, NULL, 'আবৃত্তি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:41:59', '2019-09-11 22:00:16'),
(166, 16, NULL, 'অনুলিপি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:42:12', '2019-09-11 21:59:58'),
(167, 6, NULL, 'কবিতা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:51:46', '2019-09-08 23:38:39'),
(168, 6, NULL, 'গল্প পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:51:57', '2019-09-08 23:38:44'),
(169, 6, NULL, 'উপস্থাপনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:52:10', '2019-09-08 23:38:31'),
(170, 6, NULL, 'সংবাদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 01:52:24', '2019-09-08 23:38:58'),
(171, 20, NULL, 'রবীন্দ্র সঙ্গীত', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 04:29:22', '2019-09-08 23:42:05'),
(172, 21, NULL, 'স্বাধীনতা দিবস পুরস্কার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:02:17', '2019-09-07 06:04:20'),
(173, 21, NULL, 'রাস্ট্রীয় বীরত্বসূচক খেতাব', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:02:51', '2019-09-07 06:03:49'),
(174, 21, NULL, 'একুশে পদক পুরস্কার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:03:11', '2019-09-07 06:04:50'),
(175, 21, NULL, 'বাংলা একাডেমী সাহিত্য পুরস্কার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:05:21', '2019-09-07 06:05:21'),
(176, 21, NULL, 'জাতীয় ক্রীড়া পুরস্কার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:05:49', '2019-09-07 06:05:49'),
(177, 21, NULL, 'বঙ্গবন্ধু জাতীয় কৃষি পুরস্কার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:06:32', '2019-09-07 06:06:32'),
(178, 21, NULL, 'শিশু একাডেমী পুরস্কার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:06:53', '2019-09-07 06:06:53'),
(179, 18, NULL, 'গ্রন্হনাকারী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 06:27:05', '2019-09-09 09:43:23'),
(180, 18, NULL, 'কন্ঠশিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 06:27:23', '2019-09-09 09:42:33'),
(181, 18, NULL, 'গীতিকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 06:27:33', '2019-09-09 09:42:47'),
(182, 18, NULL, 'সুরকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 06:27:42', '2019-09-09 09:42:09'),
(183, 18, NULL, 'উপস্থাপক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 06:27:55', '2019-09-09 09:42:22'),
(184, 18, NULL, 'উপন্যাসিক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 06:28:16', '2019-09-09 09:42:16'),
(185, 18, NULL, 'কবি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-07 06:28:24', '2019-09-09 09:42:39'),
(186, 22, NULL, 'ডাক্তার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:41:03', '2019-09-07 06:41:03'),
(187, 22, NULL, 'শিক্ষক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:41:32', '2019-09-07 06:41:32'),
(188, 6, NULL, 'যন্ত্রী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:39:22', '2019-10-17 11:01:56'),
(189, 6, NULL, 'নাট্যশিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:40:04', '2019-10-17 11:01:38'),
(190, 6, NULL, 'আবৃত্তিকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:40:21', '2019-10-17 11:00:54'),
(191, 6, NULL, 'গল্প পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-08 23:40:42', '2019-10-17 11:01:16'),
(192, 6, NULL, 'অনুষ্ঠান উপস্থাপক/ ঘোষক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:41:04', '2019-10-17 11:30:07'),
(193, 6, NULL, 'ধারাভাষ্যকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:41:20', '2019-10-17 11:29:09'),
(194, 6, NULL, 'সংবাদ পাঠক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:41:36', '2019-10-17 11:02:26'),
(195, 20, NULL, 'নজরুল সঙ্গীত', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:49:56', '2019-09-08 23:49:56'),
(196, 20, NULL, 'আধুনিক গান', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:50:22', '2019-09-08 23:50:22'),
(197, 20, NULL, 'উচ্চাঙ্গ', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:51:11', '2019-09-08 23:51:11'),
(198, 20, NULL, 'লালন গীতি', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:51:41', '2019-09-08 23:51:41'),
(199, 20, NULL, 'হাসন রাজার গান', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:52:10', '2019-09-08 23:52:10'),
(200, 20, NULL, 'মরমী', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:52:34', '2019-09-08 23:52:34'),
(201, 20, NULL, 'আঞ্চলিক', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:52:58', '2019-09-08 23:52:58'),
(202, 20, NULL, 'বাউল', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:53:16', '2019-09-08 23:53:16'),
(203, 20, NULL, 'লোকগীতি', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:54:34', '2019-09-08 23:54:34'),
(204, 20, NULL, 'ভাওয়াইয়া', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:54:55', '2019-09-08 23:54:55'),
(205, 20, NULL, 'মুর্শিদী', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:55:15', '2019-09-08 23:55:15'),
(206, 20, NULL, 'ভাটিয়ালি', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:55:31', '2019-09-08 23:55:31'),
(207, 20, NULL, 'গম্ভীরা', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:55:54', '2019-09-08 23:55:54'),
(208, 20, NULL, 'জারী', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:56:21', '2019-09-08 23:56:21'),
(209, 20, NULL, 'সারি', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:56:40', '2019-09-08 23:56:40'),
(210, 20, NULL, 'কবিগান', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:56:57', '2019-09-08 23:56:57'),
(211, 20, NULL, 'পালাগান', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:57:20', '2019-09-08 23:57:20'),
(212, 20, NULL, 'কাওয়ালী', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:57:40', '2019-09-08 23:57:40'),
(213, 20, NULL, 'উচ্চাঙ্গ', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:58:58', '2019-09-08 23:58:58'),
(214, 20, NULL, 'সেতার', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:59:22', '2019-09-08 23:59:22'),
(215, 20, NULL, 'গীটার', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-08 23:59:39', '2019-09-08 23:59:39'),
(216, 20, NULL, 'এস্রাজ', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:00:05', '2019-09-09 00:00:05'),
(217, 20, NULL, 'তানপুরা', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:00:30', '2019-09-09 00:00:30'),
(218, 20, NULL, 'অর্গান/ কী-বোর্ড', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:00:57', '2019-09-09 00:00:57'),
(219, 20, NULL, 'তবলা', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:01:20', '2019-09-09 00:01:20'),
(220, 20, NULL, 'বেহালা', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:01:41', '2019-09-09 00:01:41'),
(221, 20, NULL, 'বাঁশী', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:02:04', '2019-09-09 00:02:04'),
(222, 20, NULL, 'ক্লারিওনেট', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:02:29', '2019-09-09 00:02:29'),
(223, 20, NULL, 'দোতরা', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:02:55', '2019-09-09 00:02:55'),
(224, 20, NULL, 'এ্যার্কোডিয়ান', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:03:21', '2019-09-09 00:03:21'),
(225, 20, NULL, 'কঙ্গো/ বঙ্গো', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:03:54', '2019-09-09 00:03:54'),
(226, 20, NULL, 'পারকেশন', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:04:29', '2019-09-09 00:04:29'),
(227, 20, NULL, 'ম্যান্ডোলিন', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:04:55', '2019-09-09 00:04:55'),
(228, 20, NULL, 'ভাইব্রোফোন', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:05:24', '2019-09-09 00:05:24'),
(229, 20, NULL, 'রাবাব', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:05:46', '2019-09-09 00:05:46'),
(230, 20, NULL, 'সারেঙ্গী', NULL, 188, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:06:07', '2019-09-09 00:06:07'),
(231, 20, NULL, 'বাংলা', NULL, 192, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:06:32', '2019-09-09 00:06:32'),
(232, 20, NULL, 'ইংরেজি', NULL, 192, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:07:11', '2019-09-09 00:07:11'),
(233, 20, NULL, 'হিন্দি', NULL, 192, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:07:33', '2019-09-09 00:07:33'),
(234, 20, NULL, 'নেপালি', NULL, 192, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:07:53', '2019-09-09 00:07:53'),
(235, 20, NULL, 'আরবি', NULL, 192, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:08:12', '2019-09-09 00:08:12'),
(236, 20, NULL, 'ধারাবর্ণনা', NULL, 192, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:08:45', '2019-09-09 00:08:45'),
(237, 20, NULL, 'ক্রিকেট', NULL, 193, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:09:13', '2019-09-09 00:09:13'),
(238, 20, NULL, 'ফুটবল', NULL, 193, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:09:47', '2019-09-09 00:09:47'),
(239, 20, NULL, 'হকি', NULL, 193, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:10:06', '2019-09-09 00:10:06'),
(240, 20, NULL, 'ভলিবল', NULL, 193, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:10:34', '2019-09-09 00:10:34'),
(241, 20, NULL, 'ব্যান্ডবিটন', NULL, 193, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:11:22', '2019-09-09 00:11:22'),
(242, 20, NULL, 'টেনিস', NULL, 193, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:11:47', '2019-09-09 00:11:47'),
(243, 20, NULL, 'অন্যান্য', NULL, 193, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:12:07', '2019-09-09 00:12:07'),
(244, 20, NULL, 'বাংলা', NULL, 194, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:13:28', '2019-09-09 00:13:28'),
(245, 20, NULL, 'ইংরেজি', NULL, 194, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:13:43', '2019-09-09 00:13:43'),
(246, 20, NULL, 'হিন্দি', NULL, 194, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:14:01', '2019-09-09 00:14:01'),
(247, 20, NULL, 'নেপালি', NULL, 194, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:14:22', '2019-09-09 00:14:22'),
(248, 20, NULL, 'আরবি', NULL, 194, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:14:46', '2019-09-09 00:14:46'),
(249, 14, NULL, 'সঙ্গীত', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:17:23', '2019-09-09 00:17:23'),
(250, 14, NULL, 'নাটক/ স্পট/ জীবন্তিকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:17:49', '2019-09-09 00:17:49'),
(251, 14, NULL, 'কবিতা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:19:43', '2019-09-09 00:19:43'),
(252, 14, NULL, 'গল্প/ ইতিহাস/ বর্ণনা পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:20:01', '2019-09-09 00:20:01'),
(253, 14, NULL, 'ম্যাগাজিন/ কম্পোজিট/ জাতীয় দিবস/ বিশেষ অনুষ্ঠান', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:20:24', '2019-09-09 00:20:24'),
(254, 14, NULL, 'কথিকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:20:46', '2019-09-09 00:20:46'),
(255, 14, NULL, 'প্রামাণ্য/ সরেজমিন প্রতিবেদনমূলক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:21:23', '2019-09-09 00:21:23'),
(256, 14, NULL, 'আলোচনা/ সাক্ষাতকারভিত্তিক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:21:45', '2019-09-09 00:21:45'),
(257, 14, NULL, 'ফোন-ইন প্রোগ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:22:00', '2019-09-09 00:22:00'),
(258, 14, NULL, 'শিশু/ কিশোর/ নারী/ যুব সমাজ কেন্দ্রিক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:22:17', '2019-09-09 00:22:17'),
(259, 14, NULL, 'সামাজিক উন্নয়নমূলক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:22:32', '2019-09-09 00:22:32'),
(260, 14, NULL, 'ইসলামিক/ ধর্মীয় অনুষ্ঠান', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:22:45', '2019-09-09 00:22:45'),
(261, 14, NULL, 'মুক্তিযুদ্ধভিত্তিক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:23:01', '2019-09-09 00:23:01'),
(262, 14, NULL, 'সংসদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:23:16', '2019-09-09 00:23:16'),
(263, 14, NULL, 'রাষ্ট্রীয় অনুষ্ঠান/ ভাষণ/ সংবাদ সম্মেলন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:23:35', '2019-09-09 00:23:35'),
(264, 14, NULL, 'শিক্ষামূলক/ শিক্ষার আসরভিত্তিক অনুষ্ঠান', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:23:59', '2019-09-09 00:23:59'),
(265, 14, NULL, 'সংবাদ/ খেলাধুলা/ বিশ্বঘটনা পর্যালোচনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:24:16', '2019-09-09 00:24:16'),
(266, 14, NULL, 'বিতর্ক/ তথ্যবহুল প্রতিযোগীতামূলক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:24:37', '2019-09-09 00:24:37'),
(267, 14, NULL, 'ধারাবাহিক আসরভিত্তিক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:25:05', '2019-09-09 00:25:05'),
(268, 14, NULL, 'শ্রোতা অনুরোধ/ ফিডব্যাক/ সেতুবন্ধনমূলক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:25:22', '2019-09-09 00:25:22'),
(269, 14, NULL, 'প্রচারণা/ জিঙ্গেল/ প্রোমো/ বিজ্ঞপ্তি/ ঘোষণা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:25:40', '2019-09-09 10:29:43'),
(270, 14, NULL, 'বিজ্ঞাপন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 00:26:02', '2019-09-09 00:26:02'),
(271, 19, NULL, 'কবিতা রচনা ও পাঠ', NULL, 83, NULL, NULL, NULL, 412, '[\"352\",\"351\"]', 1, NULL, '2019-09-09 02:15:30', '2019-09-09 02:15:30'),
(272, 19, NULL, 'সরজমিনে প্রতিবেদন গ্রহণের জন্য', NULL, 86, NULL, NULL, 1, 392, '[\"342\"]', 1, NULL, '2019-09-09 02:28:56', '2019-09-09 02:33:05'),
(273, 19, NULL, 'ফোন-ইন-প্রোগ্রাম পরিচালনা', NULL, 87, NULL, NULL, 1, 394, '[\"340\"]', 1, NULL, '2019-09-09 03:31:44', '2019-09-09 03:31:44'),
(274, 19, NULL, 'ফোন-ইন-প্রোগ্রামে বিশেষজ্ঞের অংশগ্রহণ', NULL, 87, NULL, NULL, 2, 399, '[\"341\"]', 0, NULL, '2019-09-09 03:38:21', '2019-09-22 01:05:27'),
(275, 19, NULL, 'ফোন-ইন-প্রোগ্রামে বিশেষজ্ঞের অংশগ্রহণ', NULL, 87, NULL, NULL, 2, 399, '[\"352\"]', 1, NULL, '2019-09-09 03:38:25', '2019-09-09 03:38:25'),
(276, 19, NULL, 'আলোচনা অনুষ্ঠান সঞ্চালনার জন্য', NULL, 79, NULL, NULL, 1, 400, '[\"344\"]', 1, NULL, '2019-09-09 03:41:12', '2019-09-09 03:42:56'),
(277, 19, NULL, 'আলোচনা অনুষ্ঠানে অংশগ্রহণের জন্য', NULL, 79, NULL, NULL, 2, 400, '[\"344\"]', 1, NULL, '2019-09-09 03:41:41', '2019-09-09 03:41:41'),
(278, 19, NULL, 'সাক্ষাৎকার অনুষ্ঠানে সাক্ষাৎকার গ্রহণের জন্য (গ্রন্থনাসহ)', NULL, 80, NULL, NULL, 1, 402, '[\"341\"]', 1, NULL, '2019-09-09 03:42:09', '2019-09-09 03:42:09'),
(279, 19, NULL, 'সাক্ষাৎকার প্রদান', NULL, 80, NULL, NULL, 2, 403, '[\"343\"]', 1, NULL, '2019-09-09 03:42:32', '2019-09-09 03:42:32'),
(280, 19, NULL, 'শ্রোতাদের চিঠিপত্র/ এসএমএস/ ই-মেইল জবাব বাছাইসহ গ্রন্থনা ও উপস্থাপনা', NULL, 81, NULL, NULL, 1, 404, '[\"333\",\"332\"]', 1, NULL, '2019-09-09 03:44:12', '2019-09-09 03:44:12'),
(281, 19, NULL, 'শ্রোতাদের চিঠিপত্র/ এসএমএস/ ই-মেইল জবাব বাছাইসহ গ্রন্থনা', NULL, 81, NULL, NULL, 2, 404, '[\"332\"]', 1, NULL, '2019-09-09 03:44:36', '2019-09-09 03:44:36'),
(282, 19, NULL, 'শ্রোতাদের চিঠিপত্র/ এসএমএস/ ই-মেইল জবাব উপস্থাপনা', NULL, 81, NULL, NULL, 3, 406, '[\"333\"]', 1, NULL, '2019-09-09 03:44:56', '2019-09-09 03:44:56'),
(283, 19, NULL, 'স্কুল বিতর্ক পরিচালনা', NULL, 88, NULL, NULL, 1, 407, '[\"349\"]', 1, NULL, '2019-09-09 03:52:30', '2019-09-09 03:52:30'),
(284, 19, NULL, 'স্কুল বিতর্কের বিচারকের দায়িত্ব পালন', NULL, 88, NULL, NULL, 2, 408, '[\"347\"]', 1, NULL, '2019-09-09 03:52:59', '2019-09-09 03:52:59'),
(285, 19, NULL, 'স্কুল বিতর্কে অংশগ্রহণকারী', NULL, 88, NULL, NULL, 3, 409, '[\"348\"]', 1, NULL, '2019-09-09 03:53:58', '2019-09-09 03:53:58'),
(286, 19, NULL, 'স্কুল বিতর্ক অনুষ্ঠানে সহায়তা', NULL, 88, NULL, NULL, 4, 410, '[\"366\"]', 1, NULL, '2019-09-09 03:54:31', '2019-09-09 03:54:31'),
(287, 19, NULL, 'কলেজ/ বিশ্ববিদ্যালয় বির্তক পরিচালনা', NULL, 88, NULL, NULL, 5, 407, '[\"346\"]', 1, NULL, '2019-09-09 04:08:24', '2019-09-09 04:08:24'),
(288, 19, NULL, 'কলেজ/ বিশ্ববিদ্যালয় বিতর্কের বিচারকের দায়িত্ব পালন', NULL, 88, NULL, NULL, 6, 408, '[\"347\"]', 1, NULL, '2019-09-09 04:08:51', '2019-09-09 04:08:51'),
(289, 19, NULL, 'কলেজ/ বিশ্ববিদ্যালয় বিতর্কে অংশগ্রহণ', NULL, 88, NULL, NULL, 7, 409, '[\"348\"]', 1, NULL, '2019-09-09 04:09:21', '2019-09-09 04:09:21'),
(290, 19, NULL, 'কলেজ/ বিশ্ববিদ্যালয় বিতর্ক অনুষ্ঠানে সহায়তাকারী', NULL, 88, NULL, NULL, 8, 410, '[\"366\"]', 1, NULL, '2019-09-09 04:09:57', '2019-09-09 04:09:57'),
(291, 19, NULL, 'গীতিকার নির্বাচন/ শিল্পী নির্বাচন/শ্রেণী উন্নয়ন/ কণ্ঠস্বর পরীক্ষায় দায়িত্ব পালন', NULL, 89, NULL, NULL, 1, 411, '[\"350\"]', 1, NULL, '2019-09-09 04:10:35', '2019-09-09 04:10:35'),
(292, 19, NULL, 'শিশু ও কিশোর', NULL, 82, NULL, NULL, 1, 401, '[\"345\"]', 1, NULL, '2019-09-09 04:14:44', '2019-09-09 04:14:44'),
(293, 19, NULL, 'স্কুল ব্রডকাস্ট (স্কুলের ছাত্র/ছাত্রী', NULL, 82, NULL, NULL, 2, 401, '[\"345\"]', 1, NULL, '2019-09-09 04:15:06', '2019-09-09 04:15:06'),
(294, 19, NULL, 'কলেজ, বিশ্ববিদ্যালয়ের ও যুব সমাজের জন্য অনুষ্ঠান (কলেজ, বিশ্ব বিদ্যালয়ের ছাত্র-ছাত্রী)', NULL, 82, NULL, NULL, 3, 401, '[\"345\"]', 1, NULL, '2019-09-09 04:15:29', '2019-09-09 04:15:29'),
(295, 19, NULL, 'কবিতা আবৃত্তি', NULL, 83, NULL, NULL, 2, 413, '[\"352\"]', 1, NULL, '2019-09-09 04:16:38', '2019-09-09 04:16:38'),
(296, 19, NULL, 'গল্প রচনা ও পাঠ', NULL, 84, NULL, NULL, 1, 414, '[\"333\",\"338\"]', 1, NULL, '2019-09-09 04:17:06', '2019-09-09 04:17:06'),
(297, 19, NULL, 'গল্প রচনা', NULL, 84, NULL, NULL, 2, 415, '[\"338\"]', 1, NULL, '2019-09-09 04:17:29', '2019-09-09 04:17:29'),
(298, 19, NULL, 'গল্প পাঠ', NULL, 84, NULL, NULL, 3, 416, '[\"333\"]', 1, NULL, '2019-09-09 04:17:47', '2019-09-09 04:17:47'),
(299, 19, NULL, 'ফুটবল/ হকি/ভলিবল/ ব্যাডমিন্টন/টেনিস ও অন্যান্য দেশি ও বিদেশি খেলাধুলারজন্য', NULL, 90, NULL, NULL, 1, 417, '[\"353\"]', 1, NULL, '2019-09-09 04:18:56', '2019-09-09 04:18:56'),
(300, 19, NULL, 'ক্রিকেট', NULL, 90, NULL, NULL, 2, 418, '[\"353\"]', 1, NULL, '2019-09-09 04:19:15', '2019-09-09 04:19:15'),
(301, 19, NULL, 'রাষ্ট্রীয় ও অন্যান্য জাতীয় অনুষ্ঠানাদি', NULL, 90, NULL, NULL, 3, 417, '[\"353\"]', 1, NULL, '2019-09-09 04:19:40', '2019-09-09 04:19:40'),
(302, 19, NULL, 'ধারা বর্ণনায় সহযোগিতা ও স্কোর সংগ্রহ', NULL, 90, NULL, NULL, 4, 419, '[\"366\"]', 1, NULL, '2019-09-09 04:20:01', '2019-09-09 04:20:01'),
(303, 19, NULL, '১০ মিনিটের উর্ধ্বে  সময়ের জন্য সংবাদ বুলেটিন পাঠ', NULL, 92, NULL, NULL, 1, 427, '[\"354\"]', 1, NULL, '2019-09-09 04:22:03', '2019-09-09 04:22:03'),
(304, 19, NULL, '১০ মিনিটের সংবাদ বুলেটিন পাঠ', NULL, 92, NULL, NULL, 2, 428, '[\"354\"]', 1, NULL, '2019-09-09 04:22:28', '2019-09-09 04:22:28'),
(305, 19, NULL, '৫ মিনিটের সংবাদ বুলেটিন পাঠ/সংবাদ পর্যালোচনা পাঠ', NULL, 92, NULL, NULL, 3, 429, '[\"354\"]', 1, NULL, '2019-09-09 04:22:53', '2019-09-09 04:22:53'),
(306, 19, NULL, 'সংবাদ পর্যালোচনা লেখা', NULL, 92, NULL, NULL, 4, 429, '[\"355\"]', 1, NULL, '2019-09-09 04:23:10', '2019-09-09 04:23:10'),
(307, 19, NULL, 'সংবাদ অনুবাদ', NULL, 92, NULL, NULL, 5, 430, '[\"360\"]', 1, NULL, '2019-09-09 04:24:17', '2019-09-09 04:24:17'),
(308, 19, NULL, 'সংবাদ অনুলিপি', NULL, 92, NULL, NULL, 6, 431, '[\"357\"]', 1, NULL, '2019-09-09 04:24:34', '2019-09-09 04:24:34'),
(309, 19, NULL, 'মহানগর/জেলা/উপজেলা সংবাদ দাতা কর্তৃক সংবাদ প্রেরণ (সংবাদ প্রচার সাপেক্ষে)', NULL, 92, NULL, NULL, 7, 432, '[\"358\"]', 1, NULL, '2019-09-09 04:25:03', '2019-09-09 04:25:03'),
(310, 19, NULL, 'স্পট রিপোর্টিং (প্রতি সংবাদ সরাসরি প্রচার সাপেক্ষে)', NULL, 92, NULL, NULL, 8, 433, '[\"359\"]', 1, NULL, '2019-09-09 04:25:21', '2019-09-09 04:25:21'),
(311, 19, NULL, 'বহির্বিশ্ব কার্যক্রমের সংবাদ,  ১০ মিনিটের সংবাদ বুলেটিন পাঠ', NULL, 93, NULL, NULL, 1, 434, '[\"354\"]', 1, NULL, '2019-09-09 04:26:02', '2019-09-09 04:26:02'),
(312, 19, NULL, 'বহির্বিশ্ব কার্যক্রমের সংবাদ, ৫ মিনিটের সংবাদ বুলেটিন পাঠ', NULL, 93, NULL, NULL, 2, 435, '[\"354\"]', 1, NULL, '2019-09-09 04:26:20', '2019-09-09 04:26:20'),
(313, 19, NULL, 'বহির্বিশ্ব কার্যক্রমের সংবাদ, ১০ মিনিটের সংবাদ বুলেটিন অনুবাদ', NULL, 93, NULL, NULL, 3, 436, '[\"360\"]', 1, NULL, '2019-09-09 04:26:48', '2019-09-09 04:26:48'),
(314, 19, NULL, 'বহির্বিশ্ব কার্যক্রমের সংবাদ, ৫ মিনিটের সংবাদ বুলেটিন অনুবাদ', NULL, 93, NULL, NULL, 4, 392, '[\"356\"]', 1, NULL, '2019-09-09 04:27:10', '2019-09-09 04:27:10'),
(315, 19, NULL, 'তেলাওয়াত', NULL, 94, NULL, NULL, 1, 438, '[\"361\"]', 1, NULL, '2019-09-09 04:27:36', '2019-09-09 04:27:36'),
(316, 19, NULL, 'তরজমা', NULL, 94, NULL, NULL, 2, 439, '[\"361\"]', 1, NULL, '2019-09-09 04:27:55', '2019-09-09 04:27:55'),
(317, 19, NULL, 'রমজান মাসে প্রতিদিন একজন উচ্চমানের সুকণ্ঠি হাফেজ কর্তৃক ৩০ পারা কোরআন তেলাওয়াত করা', NULL, 94, NULL, NULL, 3, 440, '[\"361\"]', 1, NULL, '2019-09-09 04:28:26', '2019-09-09 04:28:26'),
(318, 19, NULL, 'মিলাদ মাহ্ফিল পরিচালনা', NULL, 94, NULL, NULL, 4, 441, '[\"341\"]', 1, NULL, '2019-09-09 04:28:49', '2019-09-09 04:28:49'),
(319, 19, NULL, 'সেহরী অনুষ্ঠান পরিচালনা', NULL, 94, NULL, NULL, 5, 372, '[\"362\"]', 1, NULL, '2019-09-09 04:29:09', '2019-09-09 04:29:09'),
(320, 19, NULL, 'সালাম, দরূদ, মোনাজাতে অংশগ্রহণ', NULL, 94, NULL, NULL, 6, 443, '[\"362\"]', 1, NULL, '2019-09-09 04:29:29', '2019-09-09 04:29:29'),
(321, 19, NULL, 'কোরআন শিক্ষার আসর পরিচালনাকারী', NULL, 94, NULL, NULL, 7, 444, '[\"341\"]', 1, NULL, '2019-09-09 04:29:52', '2019-09-09 04:29:52'),
(322, 19, NULL, 'কোরআন শিক্ষার আসরে অংশগ্রহণকারী (সর্বোচ্চ ৬ জন)', NULL, 94, NULL, NULL, 8, 445, '[\"362\"]', 1, NULL, '2019-09-09 04:30:18', '2019-09-09 04:30:18'),
(323, 19, NULL, 'বাইবেল, ত্রিপিটক ও গীতাপাঠ', NULL, 94, NULL, NULL, 9, 446, '[\"332\"]', 1, NULL, '2019-09-09 04:30:35', '2019-09-09 04:30:35'),
(324, 19, NULL, 'আন্তর্জাতিক প্রতিযোগিতার অনুষ্ঠানে অংশগ্রহণের পান্ডুলিপি লেখা ও অনুবাদ', NULL, 144, NULL, NULL, 1, 447, '[\"364\",\"332\"]', 1, NULL, '2019-09-09 04:31:52', '2019-09-09 04:31:52'),
(325, 19, NULL, 'আন্তর্জাতিক প্রতিযোগিতার অনুষ্ঠানের অংশগ্রহণের পান্ডুলিপি লেখা (শুধুমাত্র)', NULL, 144, NULL, NULL, 2, 447, '[\"332\"]', 1, NULL, '2019-09-09 04:32:15', '2019-09-09 04:32:15'),
(326, 19, NULL, 'আন্তর্জাতিক প্রতিযোগিতার অনুষ্ঠানে অংশগ্রহণের পান্ডুলিপি অনুবাদ (শুধুমাত্র)', NULL, 144, NULL, NULL, 3, 449, '[\"364\"]', 1, NULL, '2019-09-09 04:32:36', '2019-09-09 04:32:36'),
(327, 19, NULL, 'রেকর্ডিং/এডিটিং/মিক্সিং', NULL, 145, NULL, NULL, 1, 450, '[\"365\"]', 1, NULL, '2019-09-09 04:33:06', '2019-09-09 04:33:06'),
(328, 18, NULL, 'কন্ঠশিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:46:40', '2019-09-09 09:47:26'),
(329, 18, NULL, 'যন্ত্র শিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:47:09', '2019-09-09 09:47:09'),
(330, 18, NULL, 'সুরকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:47:46', '2019-09-09 09:47:46'),
(331, 18, NULL, 'গীতিকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:48:03', '2019-09-09 09:48:03'),
(332, 18, NULL, 'গ্রন্থনাকারী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:48:19', '2019-09-09 09:48:19'),
(333, 18, NULL, 'উপস্থাপক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:48:36', '2019-09-09 09:48:36'),
(334, 18, NULL, 'নাট্যশিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:48:54', '2019-09-09 09:48:54'),
(335, 18, NULL, 'নাট্যকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:49:26', '2019-09-09 09:49:26'),
(336, 18, NULL, 'নাট্য প্রযোজক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:50:16', '2019-09-09 09:50:16'),
(337, 18, NULL, 'নাট্যরূপকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:50:30', '2019-09-09 09:50:30'),
(338, 18, NULL, 'লেখক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:51:03', '2019-09-09 09:51:03'),
(339, 18, NULL, 'গবেষক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:51:20', '2019-09-09 09:51:20'),
(340, 18, NULL, 'অনুষ্ঠান পরিচালক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:51:41', '2019-09-09 09:51:41'),
(341, 18, NULL, 'আলোচক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:52:02', '2019-09-09 09:52:02'),
(342, 18, NULL, 'প্রতিবেদক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:52:39', '2019-09-09 09:52:39'),
(343, 18, NULL, 'সঞ্চালক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:53:28', '2019-09-09 09:53:28'),
(344, 18, NULL, 'সঞ্চালক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:53:32', '2019-09-09 09:53:32'),
(345, 18, NULL, 'অনুষ্ঠানে অংশগ্রহণকারী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:54:30', '2019-09-09 09:54:30'),
(346, 18, NULL, 'বিতর্ক পরিচালক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:54:49', '2019-09-09 09:54:49'),
(347, 18, NULL, 'বিতর্কের বিচারক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:55:08', '2019-09-09 09:55:08'),
(348, 18, NULL, 'বিতর্কে অংশগ্রহণকারী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:55:34', '2019-09-09 09:55:34'),
(349, 18, NULL, 'বিতর্ক পরিচালক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-09 09:55:55', '2019-09-22 01:09:01'),
(350, 18, NULL, 'অডিশন বিচারক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:56:15', '2019-09-09 09:56:15'),
(351, 18, NULL, 'কবি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:56:33', '2019-09-09 09:56:33'),
(352, 18, NULL, 'আবৃত্তিকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:57:17', '2019-09-09 09:57:17'),
(353, 18, NULL, 'ধারাভাষ্যকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:57:41', '2019-09-09 09:57:41'),
(354, 18, NULL, 'সংবাদ পাঠক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:58:02', '2019-09-09 09:58:02'),
(355, 18, NULL, 'সংবাদ পর্যালোচক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:58:25', '2019-09-09 09:58:25'),
(356, 18, NULL, 'সংবাদ অনুবাদক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:58:43', '2019-09-09 09:58:43'),
(357, 18, NULL, 'সংবাদ অনুলিপিকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:59:10', '2019-09-09 09:59:10'),
(358, 18, NULL, 'সাংবাদিক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:59:25', '2019-09-09 09:59:25'),
(359, 18, NULL, 'স্পট রিপোর্টার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 09:59:45', '2019-09-09 09:59:45'),
(360, 18, NULL, 'সংবাদ অনুবাদক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-09 10:00:10', '2019-09-22 01:06:23'),
(361, 18, NULL, 'ক্বারী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 10:00:43', '2019-09-09 10:00:43'),
(362, 18, NULL, 'ইসলামিক চিন্তাবিদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 10:01:04', '2019-09-09 10:01:04'),
(363, 18, NULL, 'ধর্মগুরু', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 10:01:20', '2019-09-09 10:01:20'),
(364, 18, NULL, 'অনুবাদক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 10:01:35', '2019-09-09 10:01:35'),
(365, 18, NULL, 'শব্দ সম্পাদক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 10:02:06', '2019-09-09 10:02:06'),
(366, 18, NULL, 'সহযোগী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-09 10:02:19', '2019-09-09 10:02:19'),
(367, 16, NULL, 'সঙ্গীত পরিবেশনা/ যন্ত্র সঙ্গীত পরিবেশনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:08:34', '2019-10-21 07:42:30'),
(368, 16, NULL, 'যন্ত্র শিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-11 22:08:49', '2019-09-16 04:42:55'),
(369, 16, NULL, 'দলগত সঙ্গীত পরিবেশনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:09:09', '2019-09-11 22:09:09'),
(370, 16, NULL, 'সঙ্গীত পরিবেশনা (উচ্চাঙ্গ)/ যন্ত্রশিল্পী (উচ্চাঙ্গ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:09:30', '2019-10-21 07:41:44'),
(371, 16, NULL, 'যন্ত্র শিল্পী (উচ্চাঙ্গ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-11 22:09:49', '2019-09-16 04:51:46');
INSERT INTO `all_sttings` (`id`, `type`, `is_default`, `title`, `abbreviation`, `parent_id`, `leave_balance`, `has_leave_limit`, `display_position`, `rate_vumika`, `rate_chart_work_area`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(372, 16, NULL, 'সুরকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:10:00', '2019-09-11 22:10:00'),
(373, 16, NULL, 'গীতিকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:10:12', '2019-09-11 22:10:12'),
(374, 16, NULL, 'গ্রন্থনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:10:30', '2019-09-11 22:10:30'),
(375, 16, NULL, 'গ্রন্থনা ও উপস্থাপনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:10:45', '2019-09-11 22:10:45'),
(376, 16, NULL, 'উপস্থাপনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:11:54', '2019-09-11 22:11:54'),
(377, 16, NULL, 'নাট্যশিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:12:09', '2019-09-11 22:12:09'),
(378, 16, NULL, 'দলগত নাটক পরিবেশনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:12:22', '2019-09-11 22:12:22'),
(379, 16, NULL, 'যাত্রা পরিবেশনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:12:35', '2019-09-11 22:12:35'),
(380, 16, NULL, 'নাটক প্রযোজনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:12:52', '2019-09-11 22:12:52'),
(381, 16, NULL, 'নাট্যকার (মৌলিক)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:13:08', '2019-09-11 22:13:08'),
(382, 16, NULL, 'নাট্যরূপ (অনুবাদ/ ভাবানুবাদ/ রূপান্তর)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:13:49', '2019-09-17 03:00:00'),
(383, 16, NULL, 'নাট্যরূপ (ভাবানুবাদ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-11 22:14:51', '2019-09-17 03:00:17'),
(384, 16, NULL, 'নাট্যরূপ (রূপান্তর)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-09-11 22:15:14', '2019-09-17 03:00:30'),
(385, 16, NULL, 'নাটকের মূল কাহিনীকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:18:42', '2019-09-11 22:18:42'),
(386, 16, NULL, 'নাটকের মূল গল্প লেখক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:19:03', '2019-09-11 22:19:03'),
(387, 16, NULL, 'জীবন্তিকা রচনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:19:17', '2019-09-11 22:19:17'),
(388, 16, NULL, 'গবেষণাধর্মী জীবন্তিকা রচনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:19:31', '2019-09-11 22:19:31'),
(389, 16, NULL, 'কথিকা রচনা ও পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:19:56', '2019-09-11 22:19:56'),
(390, 16, NULL, 'আলোচনা অনুষ্ঠান পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:20:08', '2019-09-11 22:20:08'),
(391, 16, NULL, 'আলোচনা অনুষ্ঠানে অংশগ্রহণ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:20:29', '2019-09-11 22:20:29'),
(392, 16, NULL, 'প্রতিবেদন তৈরি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:20:48', '2019-09-11 22:20:48'),
(393, 16, NULL, 'গবেষণা, গ্রন্থনা ও উপস্থাপনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:21:03', '2019-09-11 22:21:03'),
(394, 16, NULL, 'পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:21:13', '2019-09-11 22:21:13'),
(395, 16, NULL, 'গবেষণা ও গ্রন্থনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:21:35', '2019-09-11 22:21:35'),
(396, 16, NULL, 'সঙ্গীত আসর পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:22:08', '2019-09-11 22:22:08'),
(397, 16, NULL, 'সঙ্গীত আসরে অংশগ্রহণ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:22:28', '2019-09-11 22:22:28'),
(398, 16, NULL, 'আসর পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:22:43', '2019-09-11 22:22:43'),
(399, 16, NULL, 'বিশেষজ্ঞের অংশগ্রহণ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:23:25', '2019-09-11 22:23:25'),
(400, 16, NULL, 'সঞ্চালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:23:39', '2019-09-11 22:23:39'),
(401, 16, NULL, 'অংশগ্রহণ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:23:53', '2019-09-11 22:23:53'),
(402, 16, NULL, 'সাক্ষাৎকার গ্রহণ (গ্রন্থনাসহ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:24:08', '2019-09-11 22:24:08'),
(403, 16, NULL, 'সাক্ষাৎকার প্রদান', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:24:23', '2019-09-11 22:24:23'),
(404, 16, NULL, 'জবাব বাছাইসহ গ্রন্থনা ও উপস্থাপনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:24:36', '2019-09-11 22:24:36'),
(405, 16, NULL, 'জবাব বাছাইসহ গ্রন্থনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:24:52', '2019-09-11 22:24:52'),
(406, 16, NULL, 'জবাব উপস্থাপনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:25:01', '2019-09-11 22:25:01'),
(407, 16, NULL, 'বিতর্ক পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:25:26', '2019-09-11 22:25:26'),
(408, 16, NULL, 'বিতর্কের বিচারক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:25:43', '2019-09-11 22:25:43'),
(409, 16, NULL, 'বিতর্কে অংশগ্রহণ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:25:58', '2019-09-11 22:25:58'),
(410, 16, NULL, 'বিতর্কে সহায়তা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:26:13', '2019-09-11 22:26:13'),
(411, 16, NULL, 'অডিশন বিচারক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:26:52', '2019-09-11 22:26:52'),
(412, 16, NULL, 'কবিতা রচনা ও পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:27:03', '2019-09-11 22:27:03'),
(413, 16, NULL, 'আবৃত্তি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:27:14', '2019-09-11 22:27:14'),
(414, 16, NULL, 'গল্প রচনা ও পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:28:15', '2019-09-11 22:28:15'),
(415, 16, NULL, 'গল্প রচনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:28:32', '2019-09-11 22:28:32'),
(416, 16, NULL, 'গল্প পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:28:43', '2019-09-11 22:28:43'),
(417, 16, NULL, 'ধারাভাষ্য', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:28:56', '2019-09-11 22:28:56'),
(418, 16, NULL, 'ধারাভাষ্য (ক্রিকেট)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:29:11', '2019-09-11 22:29:11'),
(419, 16, NULL, 'ধারাভাষ্যে সহযোগিতা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:29:22', '2019-09-11 22:29:22'),
(420, 16, NULL, 'অনুষ্ঠান ঘোষণা (৬ ঘণ্টা বা ততোধিক) (পান্ডুলিপিসহ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:29:55', '2019-09-11 22:29:55'),
(421, 16, NULL, 'অনুষ্ঠান ঘোষণা (অনুর্ধ্ব ৬ ঘণ্টা) (পান্ডুলিপিসহ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:30:09', '2019-09-11 22:30:09'),
(422, 16, NULL, 'অনুষ্ঠান ঘোষণা/উপস্থাপনা (পান্ডুলিপি বিহীন)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:30:22', '2019-09-11 22:30:22'),
(423, 16, NULL, 'ইংরেজী আবহাওয়া বার্তা গ্রন্থনা ও পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:30:35', '2019-09-11 22:30:35'),
(424, 16, NULL, 'সংবাদ গ্রন্থনা ও উপস্থাপনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:30:51', '2019-09-11 22:30:51'),
(425, 16, NULL, 'সংবাদ গ্রন্থনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:31:04', '2019-09-11 22:31:04'),
(426, 16, NULL, 'সংবাদ উপস্থাপনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:31:21', '2019-09-11 22:31:21'),
(427, 16, NULL, 'সংবাদ বুলেটিন (১০ মিনিট উর্ধ্বে) পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:31:37', '2019-09-11 22:31:37'),
(428, 16, NULL, 'সংবাদ বুলেটিন (১০ মিনিট) পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:31:51', '2019-09-11 22:31:51'),
(429, 16, NULL, 'সংবাদ বুলেটিন (৫ মিনিট) পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:32:02', '2019-09-11 22:32:02'),
(430, 16, NULL, 'সংবাদ অনুবাদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:32:14', '2019-09-11 22:32:14'),
(431, 16, NULL, 'সংবাদ অনুলিপি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:32:30', '2019-09-11 22:32:30'),
(432, 16, NULL, 'সংবাদ প্রেরণ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:32:40', '2019-09-11 22:32:40'),
(433, 16, NULL, 'স্পট রিপোর্টিং', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:32:57', '2019-09-11 22:32:57'),
(434, 16, NULL, 'বহির্বিশ্ব কার্যক্রমের সংবাদ বুলেটিন (১০ মিনিট) পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:33:18', '2019-09-11 22:33:18'),
(435, 16, NULL, 'বহির্বিশ্ব কার্যক্রমের সংবাদ বুলেটিন (৫ মিনিট) পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:33:33', '2019-09-11 22:33:33'),
(436, 16, NULL, 'বহির্বিশ্ব কার্যক্রমের সংবাদ বুলেটিন (১০ মিনিট) অনুবাদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:34:12', '2019-09-11 22:34:12'),
(437, 16, NULL, 'বহির্বিশ্ব কার্যক্রমের সংবাদ বুলেটিন (৫ মিনিট) অনুবাদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:34:22', '2019-09-11 22:34:22'),
(438, 16, NULL, 'তেলাওয়াত', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:35:07', '2019-09-11 22:35:07'),
(439, 16, NULL, 'তরজমা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:35:39', '2019-09-11 22:35:39'),
(440, 16, NULL, 'তরজমা (রমজান মাস)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:36:29', '2019-09-11 22:36:29'),
(441, 16, NULL, 'মিলাদ মাহ্ফিল পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:36:41', '2019-09-11 22:36:41'),
(442, 16, NULL, 'সেহরী অনুষ্ঠান পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:36:52', '2019-09-11 22:36:52'),
(443, 16, NULL, 'সালাম, দরূদ, মোনাজাতে অংশগ্রহণ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:37:19', '2019-09-11 22:37:19'),
(444, 16, NULL, 'কোরআন শিক্ষার আসর পরিচালনাকারী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:37:37', '2019-09-11 22:37:37'),
(445, 16, NULL, 'কোরআন শিক্ষার আসরে অংশগ্রহণকারী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:37:48', '2019-09-11 22:37:48'),
(446, 16, NULL, 'বাইবেল, ত্রিপিটক ও গীতা পাঠ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:38:01', '2019-09-11 22:38:01'),
(447, 16, NULL, 'আন্তর্জাতিক প্রতিযোগিতার অনুষ্ঠানে অংশগ্রহণের পান্ডুলিপি লেখা ও অনুবাদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:38:18', '2019-09-11 22:38:18'),
(448, 16, NULL, 'আন্তর্জাতিক প্রতিযোগিতার অনুষ্ঠানের অংশগ্রহণের পান্ডুলিপি লেখা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:38:31', '2019-09-11 22:38:31'),
(449, 16, NULL, 'আন্তর্জাতিক প্রতিযোগিতার অনুষ্ঠানে অংশগ্রহণের পান্ডুলিপি অনুবাদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:38:43', '2019-09-11 22:38:43'),
(450, 16, NULL, 'শব্দ সম্পাদনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-11 22:38:54', '2019-09-11 22:38:54'),
(451, 16, NULL, 'রয়েলিটি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-16 22:45:23', '2019-09-16 22:45:23'),
(452, 16, NULL, 'সঙ্গীত পরিবেশনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-17 03:16:54', '2019-10-21 07:40:54'),
(453, 16, NULL, 'যন্ত্রশিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-17 03:18:07', '2019-09-17 03:18:07'),
(454, 16, NULL, 'উপস্থাপনা/ পরিচালনা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-19 00:58:09', '2019-09-19 00:58:09'),
(455, 16, NULL, 'সংবাদ পর্যালোচনা লেখা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-19 00:59:04', '2019-09-19 00:59:04'),
(456, 18, NULL, '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-22 01:07:51', '2019-09-22 01:07:51'),
(457, 16, NULL, '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-22 01:08:05', '2019-09-22 01:08:05'),
(458, 6, NULL, 'সংবাদ অনুুবাদক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-10-17 11:04:50', '2019-10-17 11:04:50'),
(459, 6, NULL, 'সুরকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-10-17 11:19:17', '2019-10-17 11:19:17'),
(460, 6, NULL, 'গীতিকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-10-17 11:27:44', '2019-10-17 11:27:44'),
(461, 6, NULL, 'নাট্য প্রযোজক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-10-17 11:28:28', '2019-10-17 11:28:28'),
(462, 6, NULL, 'নাট্যকার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-10-17 11:28:47', '2019-10-17 11:28:47'),
(463, 6, NULL, 'রেকর্ডিস্ট', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-11-04 12:21:45', '2019-11-04 12:21:45'),
(464, 6, NULL, 'শব্দ সম্পাদক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-11-04 12:22:19', '2019-11-04 12:22:19'),
(465, 6, NULL, 'সংগীত পরিচালক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-11-04 12:22:58', '2019-11-04 12:22:58'),
(466, 6, NULL, 'সংগীত প্রযোজক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-11-04 12:23:17', '2019-11-04 12:23:17'),
(467, 6, NULL, 'অভিনয় শিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-11-04 12:23:51', '2019-11-04 12:23:51'),
(468, 6, NULL, 'চলচ্চিত্র পরিচালক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-11-04 12:24:12', '2019-11-04 12:24:12'),
(469, 6, NULL, 'কণ্ঠশিল্পী', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-11-04 12:28:40', '2019-11-04 12:28:40'),
(470, 2, NULL, 'Doctor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-04 19:57:37', '2019-12-21 05:16:02'),
(471, 2, NULL, 'Nourse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-04 19:57:48', '2019-12-21 05:16:20'),
(472, 2, NULL, 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-04 19:57:59', '2019-12-21 05:16:12'),
(473, 30, NULL, 'Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-21 07:04:10', '2019-12-21 07:04:10'),
(474, 31, NULL, 'Celebrating the National Days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-21 07:05:19', '2021-02-12 05:50:22'),
(475, 32, NULL, 'careful_one', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 03:44:58', '2019-12-26 21:38:49'),
(476, 32, NULL, 'careful_two', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 03:45:16', '2019-12-26 21:39:10'),
(477, 33, NULL, 'Home Page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 04:10:55', '2019-12-25 04:10:55'),
(478, 33, NULL, 'About', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 04:11:32', '2019-12-25 04:11:32'),
(479, 33, NULL, 'Chairman Message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 04:11:50', '2019-12-25 04:11:50'),
(480, 31, NULL, 'Annual Sports', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:38:14', '2021-02-12 05:51:52'),
(481, 31, NULL, 'Blood Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:38:29', '2019-12-25 09:38:29'),
(482, 31, NULL, 'Cafeteria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:38:39', '2019-12-25 09:38:39'),
(483, 31, NULL, 'Chemotherapy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:38:48', '2019-12-25 09:38:48'),
(484, 31, NULL, 'Corporate Client', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:38:57', '2019-12-25 09:38:57'),
(485, 31, NULL, 'Day Care', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:39:07', '2019-12-25 09:39:07'),
(486, 31, NULL, 'Death Certificate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:39:20', '2019-12-25 09:39:20'),
(487, 31, NULL, 'Departments-Services-Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:39:32', '2019-12-25 09:39:32'),
(488, 31, NULL, 'Dietician', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:39:41', '2019-12-25 09:39:41'),
(489, 31, NULL, 'Discharge Protocol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:39:50', '2019-12-25 09:39:50'),
(490, 31, NULL, 'Emergency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:39:58', '2019-12-25 09:39:58'),
(491, 31, NULL, 'Hospital Location Map', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:40:07', '2019-12-25 09:40:07'),
(492, 31, NULL, 'Investigation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:40:15', '2019-12-25 09:40:15'),
(493, 31, NULL, 'Medical Records', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:40:30', '2019-12-25 09:40:30'),
(494, 31, NULL, 'Mortuary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:40:40', '2019-12-25 09:40:40'),
(495, 31, NULL, 'Online payment Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:40:53', '2019-12-25 09:40:53'),
(496, 31, NULL, 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:41:02', '2019-12-25 09:41:02'),
(497, 31, NULL, 'Physiotherapy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:41:10', '2019-12-25 09:41:10'),
(498, 31, NULL, 'Prayer Room', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:41:23', '2019-12-25 09:41:23'),
(499, 31, NULL, 'Psychosocial Counseling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:41:34', '2019-12-25 09:41:34'),
(500, 31, NULL, 'Report Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:41:42', '2019-12-25 09:41:42'),
(501, 31, NULL, 'Room Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:41:51', '2019-12-25 09:41:51'),
(502, 31, NULL, 'Vaccination', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:41:58', '2019-12-25 09:41:58'),
(503, 31, NULL, 'Visiting Hours & Rules', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:42:07', '2019-12-25 09:42:07'),
(504, 31, NULL, 'Your Enquiry / Feedback', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:42:15', '2019-12-25 09:42:15'),
(505, 1, NULL, 'CARDIAC ANESTHESIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:47:22', '2019-12-25 09:47:22'),
(506, 1, NULL, 'Cardiac Surgery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:47:34', '2019-12-25 09:47:34'),
(507, 1, NULL, 'Cardiology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:47:42', '2019-12-25 09:47:42'),
(508, 1, NULL, 'Clinical Hematology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:47:52', '2019-12-25 09:47:52'),
(509, 1, NULL, 'Critical Care', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:48:01', '2019-12-25 09:48:01'),
(510, 1, NULL, 'Dentistry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:48:09', '2019-12-25 09:48:09'),
(511, 1, NULL, 'Dermatology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:48:17', '2019-12-25 09:48:17'),
(512, 1, NULL, 'Diabetes & Endocrinology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:48:26', '2019-12-25 09:48:26'),
(513, 1, NULL, 'Dietetics & Nutrition', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:48:36', '2019-12-25 09:48:36'),
(514, 1, NULL, 'ENT & Head Neck Surgery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:48:45', '2019-12-25 09:48:45'),
(515, 1, NULL, 'Family Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:48:54', '2019-12-25 09:48:54'),
(516, 1, NULL, 'Gastroenterology , Liver & Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:49:04', '2020-01-20 23:24:47'),
(517, 1, NULL, 'General Surgery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:49:31', '2019-12-25 09:49:31'),
(518, 1, NULL, 'HAEMODIALYSIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:49:41', '2019-12-25 09:49:41'),
(519, 1, NULL, 'Health Screening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:49:50', '2019-12-25 09:49:50'),
(520, 1, NULL, 'Lab Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:50:00', '2019-12-25 09:50:00'),
(521, 1, NULL, 'Laparoscopic Surgery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:50:10', '2019-12-25 09:50:10'),
(522, 1, NULL, 'Neonatology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:50:18', '2019-12-25 09:50:18'),
(523, 1, NULL, 'Nephrology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:50:25', '2019-12-25 09:50:25'),
(524, 1, NULL, 'Neurology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:50:32', '2019-12-25 09:50:32'),
(525, 1, NULL, 'Neurosurgery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:50:42', '2019-12-25 09:50:42'),
(526, 1, NULL, 'Nuclear Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:50:51', '2019-12-25 09:50:51'),
(527, 1, NULL, 'Obstetrics & Gynaecology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:51:01', '2019-12-25 09:51:01'),
(528, 1, NULL, 'Oncology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:51:09', '2019-12-25 09:51:09'),
(529, 1, NULL, 'Ophthalmology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:51:17', '2019-12-25 09:51:17'),
(530, 1, NULL, 'Orthopedics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:51:23', '2019-12-25 09:51:23'),
(531, 1, NULL, 'Paediatric Neurology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:51:32', '2019-12-25 09:51:32'),
(532, 1, NULL, 'Paediatric Surgery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:51:42', '2019-12-25 09:51:42'),
(533, 1, NULL, 'Paediatrics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:51:48', '2019-12-25 09:51:48'),
(534, 1, NULL, 'Physical Medicine &    Rehabilitation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:52:01', '2019-12-25 09:52:01'),
(535, 1, NULL, 'Plastic Surgery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:52:10', '2019-12-25 09:52:10'),
(536, 1, NULL, 'Psychiatry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:52:18', '2019-12-25 09:52:18'),
(537, 1, NULL, 'Psychosocial   Counseling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:52:32', '2019-12-25 09:52:32'),
(538, 1, NULL, 'Radiology and Imaging', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:52:47', '2019-12-25 09:52:47'),
(539, 1, NULL, 'Respiratory Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:52:57', '2019-12-25 09:52:57'),
(540, 1, NULL, 'Thoracic Surgery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:53:09', '2019-12-25 09:53:09'),
(541, 1, NULL, 'Trauma Surgery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:53:20', '2019-12-25 09:53:20'),
(542, 1, NULL, 'Urology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:53:26', '2019-12-25 09:53:26'),
(543, 1, NULL, 'Vaccination Centre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-25 09:53:35', '2019-12-25 09:53:35'),
(544, 32, NULL, 'careful_three', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-26 21:32:28', '2019-12-26 21:39:27'),
(545, 32, NULL, 'careful_four', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-26 21:32:49', '2019-12-26 21:39:45'),
(546, 32, NULL, 'careful_six', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-26 21:33:06', '2019-12-26 21:40:26'),
(547, 32, NULL, 'careful_five', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-26 21:33:28', '2019-12-26 21:40:07'),
(548, 2, NULL, 'Reception', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-04 06:47:21', '2020-01-04 06:47:21'),
(549, 1, NULL, 'Gynae & Obs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-04 07:00:38', '2020-01-06 23:24:01'),
(550, 30, NULL, 'Gynaecology & Obstetric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-04 07:01:36', '2020-01-06 23:22:18'),
(551, 13, NULL, ' BCS (Health)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-03-23 05:03:55', '2019-03-23 05:03:55'),
(552, 30, NULL, 'ENT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-06 23:20:44', '2020-01-06 23:20:44'),
(553, 30, NULL, 'SURGERY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-06 23:21:28', '2020-01-06 23:21:28'),
(554, 1, NULL, 'ENT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-06 23:24:14', '2020-01-06 23:24:14'),
(555, 30, NULL, 'Cilinical & Interventional Cardiology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 00:58:07', '2020-01-20 00:58:07'),
(556, 30, NULL, 'Neurology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 01:12:27', '2020-01-20 01:12:27'),
(557, 30, NULL, 'Chest , Asthma & Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 01:16:03', '2020-01-20 01:16:03'),
(558, 1, NULL, 'Chest , Asthema & Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 01:19:28', '2020-01-20 01:19:28'),
(559, 30, NULL, 'Anesthesiology & Pain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 03:21:57', '2020-01-20 03:21:57'),
(560, 1, NULL, 'General Kidney & Urology Surgeon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 03:35:06', '2020-01-20 03:35:06'),
(561, 30, NULL, 'General Kidney & Urology Surgeon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 03:36:01', '2020-01-20 03:36:01'),
(562, 30, NULL, 'Gastroenterology , Liver & Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 23:25:20', '2020-01-20 23:25:20'),
(563, 30, NULL, 'Orthopaedic Surgeon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 23:33:10', '2020-01-20 23:33:10'),
(564, 1, NULL, 'Pediatric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 23:43:40', '2020-01-20 23:43:40'),
(565, 1, NULL, 'Child - Pediatric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 23:43:48', '2020-01-20 23:43:48'),
(566, 30, NULL, 'Child - Pediatric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 23:45:48', '2020-01-20 23:45:48'),
(567, 30, NULL, 'Medicine , Diabetic , Rheumatic Faver & Heart-Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-20 23:55:50', '2020-01-20 23:55:50'),
(568, 30, NULL, 'Children Sugery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-21 00:24:44', '2020-01-21 00:24:44'),
(569, 30, NULL, 'Skin , Allergy , Sex & Leprosy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-21 00:31:26', '2020-01-21 00:31:26'),
(570, 30, NULL, 'Skin , Allergy , Sex', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-21 01:02:34', '2020-01-21 01:02:34'),
(571, 1, NULL, 'Emergency Services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-07-18 02:07:51', '2020-07-18 02:07:51'),
(572, 1, NULL, 'Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-07-18 02:11:57', '2020-07-18 02:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `branch_infos`
--

CREATE TABLE `branch_infos` (
  `id` mediumint(6) UNSIGNED NOT NULL,
  `name` varchar(70) NOT NULL,
  `abbreviation` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(80) NOT NULL,
  `address` varchar(150) NOT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0 = delete, 1 = active, 2 = inactive ',
  `sorting` mediumint(6) UNSIGNED DEFAULT NULL,
  `parent_id` mediumint(6) UNSIGNED DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL COMMENT '1= AM, 2= FM',
  `fequencey` varchar(50) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch_infos`
--

INSERT INTO `branch_infos` (`id`, `name`, `abbreviation`, `mobile`, `email`, `address`, `is_active`, `sorting`, `parent_id`, `type`, `fequencey`, `title`, `start_time`, `end_time`, `created_at`, `created_by`, `created_ip`, `updated_at`, `updated_by`, `updated_ip`) VALUES
(1, 'Medilife Specialized Hospital Ltd (Head Office)', 'HO', '01839706458', 'medilifespecializedhospital16@gmail.com', '4.5 Mitford Road , Mitford Tower , Dhaka', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 08:33:54', 1, '103.107.38.167', '2020-04-08 08:33:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_infos`
--

CREATE TABLE `company_infos` (
  `id` int(11) NOT NULL,
  `com_name` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `apps_name` varchar(60) DEFAULT NULL,
  `address` text CHARACTER SET utf8,
  `email` varchar(80) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `helpline` varchar(50) DEFAULT NULL,
  `apps_link` varchar(300) DEFAULT NULL,
  `web_address` varchar(80) DEFAULT NULL,
  `reg_no` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `trade_licence` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL,
  `vat_reg_no` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tax_reg_no` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `company_logo` text CHARACTER SET utf8,
  `default_email_send` varchar(300) DEFAULT NULL,
  `company_sologan` text CHARACTER SET utf8,
  `ins_date` date DEFAULT NULL,
  `com_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta_description` varchar(160) DEFAULT NULL,
  `meta_subject` text,
  `abstract` varchar(300) DEFAULT NULL,
  `copyright_info` varchar(300) DEFAULT NULL,
  `app_owner` varchar(300) DEFAULT NULL,
  `author` varchar(300) DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `twitter` varchar(500) DEFAULT NULL,
  `leader_img` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_infos`
--

INSERT INTO `company_infos` (`id`, `com_name`, `apps_name`, `address`, `email`, `mobile`, `helpline`, `apps_link`, `web_address`, `reg_no`, `trade_licence`, `vat_reg_no`, `tax_reg_no`, `company_logo`, `default_email_send`, `company_sologan`, `ins_date`, `com_date`, `updated_at`, `status`, `meta_description`, `meta_subject`, `abstract`, `copyright_info`, `app_owner`, `author`, `facebook`, `twitter`, `leader_img`) VALUES
(6, 'Bangamata Sheikh Fazilatunnesa Mujib Hall', 'BSFMH', '176 New Market - Pilkhana Rd, Dhaka 1205 New Market - Pilkhana Rd, Dhaka 1205', 'info@bangamata.du.ac.com', '01819128809', '+88 09666911463 / 4020', 'https://www.facebook.com/', 'bangamata.du.ac.com', '123', '1234', '452', '454', 'logo.png', 'mdali.asnk@gmail.com', 'Sefty First our main sign', '2018-09-20', '2021-03-19 00:49:17', '2021-02-05 18:44:55', 1, NULL, NULL, NULL, 'https://www.du.ac.bd/', NULL, 'University of Dhaka', 'https://www.facebook.com/hwlloTheWorld', 'https://www.twitter/hwlloTheWorld', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd'),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', 0, 0, 'www.mymensingh.gov.bd'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd'),
(13, 8, 'Netrokona', 'নেত্রকোণা', 24.870955, 90.727887, 'www.netrokona.gov.bd'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd'),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd'),
(18, 5, 'Bogura', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd'),
(22, 5, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd'),
(35, 1, 'Barishal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd'),
(43, 2, 'Chattogram', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd'),
(44, 2, 'Cumilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd'),
(47, 2, 'Khagrachhari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd'),
(52, 7, 'Moulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd'),
(57, 4, 'Jashore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`) VALUES
(1, 'Barishal', 'বরিশাল'),
(2, 'Chattogram', 'চট্টগ্রাম'),
(3, 'Dhaka', 'ঢাকা'),
(4, 'Khulna', 'খুলনা'),
(5, 'Rajshahi', 'রাজশাহী'),
(6, 'Rangpur', 'রংপুর'),
(7, 'Sylhet', 'সিলেট'),
(8, 'Mymensingh', 'ময়মনসিংহ');

-- --------------------------------------------------------

--
-- Table structure for table `emplooyee_overwrite_off_on_days`
--

CREATE TABLE `emplooyee_overwrite_off_on_days` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `station_id` mediumint(6) UNSIGNED DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `employee_id` varchar(300) DEFAULT NULL,
  `department_id` varchar(300) DEFAULT NULL,
  `overwrite_type` tinyint(1) UNSIGNED NOT NULL COMMENT '1 = Off day/Holiday, 2 = Onday  ',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emplooyee_overwrite_off_on_days`
--

INSERT INTO `emplooyee_overwrite_off_on_days` (`id`, `title`, `station_id`, `from_date`, `to_date`, `start_time`, `end_time`, `employee_id`, `department_id`, `overwrite_type`, `created_at`, `created_by`, `created_ip`, `updated_at`, `updated_by`, `updated_ip`) VALUES
(1, 'International Labour Day', 1, '2019-05-01', '2019-05-01', '00:00:00', '17:00:00', NULL, '[\"10\",\"11\"]', 2, '0000-00-00 00:00:00', 2019, '::1', '2019-04-28 00:25:23', 1, '::1'),
(2, 'Budhha Purnima', 1, '2019-05-19', '2019-05-19', '09:00:00', '17:00:00', NULL, '[\"9\",\"10\",\"11\"]', 1, '2019-04-27 22:14:58', 1, '::1', '2019-04-28 00:24:47', 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) UNSIGNED NOT NULL,
  `chart_of_acc_no` int(11) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `station_id` mediumint(6) UNSIGNED DEFAULT NULL,
  `emp_name` varchar(120) NOT NULL,
  `emp_short_name` varchar(30) DEFAULT NULL,
  `father_name` varchar(120) DEFAULT NULL,
  `mother_name` varchar(120) DEFAULT NULL,
  `is_bcs_cadre` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '1 = yes',
  `govt_id` varchar(30) DEFAULT NULL,
  `cadre_ctg` int(11) UNSIGNED DEFAULT NULL,
  `cadre_batch` varchar(10) DEFAULT NULL,
  `cadre_date` date DEFAULT NULL,
  `cadre_go_date` date DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `gender` tinyint(3) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `religion` tinyint(3) UNSIGNED DEFAULT NULL,
  `marital_status` tinyint(3) UNSIGNED DEFAULT NULL,
  `blood_group` tinyint(3) UNSIGNED DEFAULT NULL,
  `physical_disability` tinyint(2) UNSIGNED DEFAULT NULL,
  `disability_details` varchar(150) DEFAULT NULL,
  `nationality` tinyint(3) UNSIGNED DEFAULT NULL,
  `national_id` varchar(21) DEFAULT NULL,
  `birth_certificate_no` varchar(20) DEFAULT NULL,
  `driving_license_no` varchar(30) DEFAULT NULL,
  `passport_no` varchar(20) DEFAULT NULL,
  `department_id` mediumint(6) DEFAULT NULL,
  `designation_id` mediumint(6) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `prl_date` date DEFAULT NULL,
  `lpr_date` date DEFAULT NULL,
  `reporting_person` bigint(20) UNSIGNED DEFAULT NULL,
  `is_roster_duty` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '1 = Yes',
  `time_table` text COMMENT '{{''checked'':0,''day'':''Sat'',''start_time'':''9:00'',''end_time'':''5:00''},{''checked'':1,''day'':''Sun'',''start_time'':''9:00'',''end_time'':''5:00''}}',
  `leave_balance` text COMMENT '{{''pascal_year'':20,''is_active'':1, ''is_current'':1, ''sorting'':1, ''balance_info'':{{''checked'':0,''leave_type'':1,''balance'':10},{''checked'':0,''leave_type'':2,''balance'':20}}},{''pascal_year'':20,''is_active'':1, ''is_current'':0, ''sorting'':1, ''balance_info'':{{''checked'':0,''leave_type'':1,''balance'':10},{''checked'':0,''leave_type'':2,''balance'':20}}}}',
  `is_same_present_parmaent_add` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '1 = Yes ',
  `present_address` varchar(500) DEFAULT NULL COMMENT '{''district'':1,''upazila'':50,''post_office'':''dhk'',''vill_road'':''109/6,Dhanmond,Dhaka''}',
  `parmanent_address` varchar(500) DEFAULT NULL COMMENT '{''district'':1,''upazila'':50,''post_office'':''dhk'',''vill_road'':''109/6,Dhanmond,Dhaka''}',
  `office_mobile` varchar(30) DEFAULT NULL,
  `office_email` varchar(50) DEFAULT NULL,
  `office_extention` varchar(15) DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL,
  `signature` varchar(80) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 = delete, 1 = active, 2 = inactive, 3 = terminate, 4 = OSD   ',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL,
  `speciality` int(11) UNSIGNED DEFAULT NULL,
  `show_website` tinyint(1) DEFAULT NULL COMMENT '1=yes,2=no',
  `display_position` mediumint(6) DEFAULT NULL,
  `degree_details` text,
  `visiting_info` text,
  `biography` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `chart_of_acc_no`, `employee_id`, `station_id`, `emp_name`, `emp_short_name`, `father_name`, `mother_name`, `is_bcs_cadre`, `govt_id`, `cadre_ctg`, `cadre_batch`, `cadre_date`, `cadre_go_date`, `mobile`, `email`, `gender`, `birth_date`, `religion`, `marital_status`, `blood_group`, `physical_disability`, `disability_details`, `nationality`, `national_id`, `birth_certificate_no`, `driving_license_no`, `passport_no`, `department_id`, `designation_id`, `join_date`, `prl_date`, `lpr_date`, `reporting_person`, `is_roster_duty`, `time_table`, `leave_balance`, `is_same_present_parmaent_add`, `present_address`, `parmanent_address`, `office_mobile`, `office_email`, `office_extention`, `image`, `signature`, `is_active`, `created_by`, `created_at`, `created_ip`, `updated_by`, `updated_at`, `updated_ip`, `speciality`, `show_website`, `display_position`, `degree_details`, `visiting_info`, `biography`) VALUES
(10, 142, 201903010001, 1, 'Dr. Md. Haris Uddin', 'Dr. Haris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', 1, '1970-01-01', 1, 1, NULL, 1, NULL, 13, NULL, NULL, NULL, NULL, 517, 470, '2019-04-10', '2019-04-18', '2019-04-02', 201903010001, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"10:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":\"1\",\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-20 03:31:45', '103.107.38.167', NULL, '2020-01-20 03:31:45', NULL, 561, 1, 2, 'MBBS , MS (Urology)\r\nSir Solimullah Medical College & Mitford Hospital , Dhaka', '3.00pm To 6.00pm', NULL),
(11, 144, 201903010002, 1, 'Dr. Rajib Kumer Saha', 'Dr. Rjiba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01836976455', 'medilifespecializedhospital16@gmail.com', 2, '2019-03-13', 2, 1, 2, 1, NULL, 13, NULL, NULL, NULL, NULL, 558, 12, '2019-04-10', '1970-01-01', '2019-04-17', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Tue\",\"start_time\":\"09:30:00\",\"end_time\":\"17:30:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-20 01:21:36', '103.107.38.167', NULL, '2020-01-20 01:21:36', NULL, 557, 1, NULL, 'MBBS , BCS (Health) , MRCP (UK) , MCPS (Medicine) , MD (Chest Disease)\r\nSir Salimullah Medical College & Mitford Hospital , Dhaka', '3.00pm Tpo 6.00pm', NULL),
(12, 171, 201903010003, 1, 'Assit. Prof . Dr. Rezaul Haque', 'Dr. Rezaul Haque', NULL, NULL, NULL, '12', 28, '2', '2019-03-30', '2019-03-29', '01742588888', 'medilifespecializedhospital16@gmail.com', 1, '2019-03-20', 2, 1, 3, 2, NULL, 13, NULL, NULL, NULL, NULL, 558, 12, '2019-03-06', '2019-03-08', '2019-03-07', 201903010002, 1, '[{\"checked\":1,\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":1,\"type_id\":\"4\",\"limit\":\"6\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '01839707645', 'shohag@bater.gov.bd', '127', NULL, NULL, 1, 1, '2020-01-20 03:19:25', '103.107.38.167', NULL, '2020-01-20 03:19:25', NULL, 557, 1, NULL, 'MBSS , BCS , MD (Chest)\r\nNational Institute Of Diseases Of The  Chest & Hospital\r\nMohakhali, Dhaka', '3.00pm To 6.00pm', NULL),
(13, 172, 201904010004, 1, 'Assit.Prof. Dr. Dr. Md. Shahin Wadud', 'Dr. Shahin Wadud', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', 1, '2019-04-07', 1, 1, 1, 2, NULL, 13, NULL, NULL, NULL, NULL, 524, 470, '2019-04-07', '2019-04-07', '2019-04-09', 201904010004, NULL, '[{\"checked\":1,\"day\":\"Sat\",\"start_time\":\"17:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Sun\",\"start_time\":\"17:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Mon\",\"start_time\":\"17:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"17:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Wed\",\"start_time\":\"17:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Thu\",\"start_time\":\"17:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"17:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":1,\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"5\",\"remaining\":\"0\"},{\"checked\":1,\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"5\",\"remaining\":\"0\"},{\"checked\":1,\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"5\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"5\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"5\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"5\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '018300', 'w', 'ww', 'image_201904010004.png', 'signature_201904010004.png', 1, 1, '2020-01-20 01:11:46', '103.107.38.167', NULL, '2020-01-20 01:11:46', NULL, 556, 1, NULL, 'MBBS , MD (Neurology)\r\nDhaka National Medical College & Hospital', '3.00pm To 6.00pm', NULL),
(14, 173, 201906010005, 1, 'Assit. Prof. Dr. Md. M. A. SAKIB', 'Dr. SAKIB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01839707645', 'medilifespecializedhospital16@gmail.com', 1, '1990-06-14', 1, 1, 1, 1, NULL, 13, NULL, NULL, NULL, NULL, 507, 12, '2019-06-20', '2028-06-08', '2019-06-24', 201903010003, NULL, '[{\"checked\":1,\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":1,\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":\"1\",\"upazila\":\"145\",\"post_office\":null,\"vill_road\":null}', '{\"district\":\"1\",\"upazila\":\"147\",\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-20 00:59:17', '103.107.38.167', NULL, '2020-01-20 00:59:17', NULL, 555, 1, NULL, 'MBBS , D-CARD (DU), FCPS (Cardiiology-Course)\r\nDhaka National Medical College & Hospital', '3.00pm To 6.00pm', NULL),
(15, 176, 201907010006, 1, 'Assot.Prof. Khondokar A. B. M. Abdullah Al-HASAN', 'Dr. Abdullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01839707645', 'medilifespecializedhospital16@gmail.com', 1, '2015-07-08', 2, 1, NULL, 2, NULL, 13, NULL, NULL, NULL, NULL, 11, 12, '2019-12-19', '2019-12-25', '2019-12-19', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '0183', NULL, NULL, 'image_201907010006.png', '', 1, 1, '2020-01-20 23:21:48', '103.107.38.167', NULL, '2020-01-20 23:21:48', NULL, 553, 1, NULL, 'MBBS , BCS (Health) , FCPS (Surgery)\r\nCancer Surgeon & Laparoscopy Specialist\r\nNational Institute of Cancer Research & Hospital', '3.00pm To 6.00pm', NULL),
(16, 177, 201907020007, 1, 'Assit. Prof. Dr. Mosharraf Hoassain', 'Dr. Mosharraf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01819128809', 'dr.mosharraf1978@gmail.com', 1, '2019-07-12', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 9, 59, '2019-12-12', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-20 03:21:02', '103.107.38.167', NULL, '2020-01-20 03:21:02', NULL, 559, 1, 1, 'MBBS (DHAKA) , DA (DHAKA) \r\nAdvance Pain Management Training in JAPAN\r\nDhaka National Medical College & Hospital', '3.00pm To 6.00pm', NULL),
(17, 187, 202001010008, 1, 'Asst. Prof. Dr. Murshida Parvin', 'Parvin', 'Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01712834877', NULL, NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 549, 470, '2016-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":\"9\",\"upazila\":\"202\",\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-04 06:59:28', '103.107.38.167', NULL, '2020-01-04 06:59:28', NULL, 550, 1, NULL, 'MBBS , BCS (Health) , FCPS (Gyane)\r\nAssitant Professor\r\nGynaecology & Obstetric\r\nSir Salimullah Medical Collage & Hospital', '2.30 pm To 5.00pm', '<p>test</p>'),
(18, 188, 202001010009, 1, 'Dr. Md. Tawhidul Islam', 'Dr. Md. Tawhid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742788888', NULL, 1, '1970-01-01', 1, 1, NULL, 1, NULL, 13, NULL, NULL, NULL, NULL, 554, 470, '2020-01-07', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-06 23:30:39', '103.107.38.167', NULL, '2020-01-06 23:30:39', NULL, 552, 1, NULL, 'MBBS , DLO , FCPS (ENT)\r\nAssitant Professor\r\nSir Salimullah Medical Collage & Hospital', NULL, NULL),
(19, 189, 202001010010, 1, 'Dr. Md. Mustafizur Rahman', 'Dr. Md . Mustafizur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742788888', NULL, 1, '1970-01-01', 1, 1, NULL, 1, NULL, 13, NULL, NULL, NULL, NULL, 554, 470, '2020-01-07', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-12-14 05:31:29', '103.107.38.167', NULL, '2020-12-14 05:31:29', NULL, 552, 1, NULL, 'MBBS, DLO (BSMMU) . MCPS (ENT) , FCPS (ENT)', NULL, NULL),
(20, 190, 202001010011, 1, 'Prof. Dr. Md. Habibur Rahman (Dulal)', 'Dulal Sir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742788888', NULL, 1, '1970-01-01', 1, NULL, NULL, 1, NULL, 13, NULL, NULL, NULL, NULL, 542, 470, '2020-01-07', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-06 23:43:33', '103.107.38.167', NULL, '2020-01-06 23:43:33', NULL, 561, 1, NULL, 'MBBS . FCPS (Surgery) , MS (Urology)\r\nProfessor\r\nDept. Urology\r\nBangabandhu Sheikh Mujib Medical University , Dhaka', '3.00pm-6.00pm', NULL),
(21, 191, 202001010012, 1, 'Assot . Prof . Dr . S. K. SAHA', 'Dr. S.K.Saha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 516, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-20 23:26:34', '103.107.38.167', NULL, '2020-01-20 23:26:34', NULL, 562, 1, NULL, 'MBBS , MD (Gastroenterology)', '3.00pm To 6.00pm', NULL),
(22, 192, 202001010013, 1, 'Assit . Prof . A B M Zakir Uddin', 'Dr. Zakir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 530, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-20 23:34:06', '103.107.38.167', NULL, '2020-01-20 23:34:06', NULL, 563, 1, NULL, 'MBBS , D-ortho , MS (Ortho)\r\nMugda Medical College Hospital , Dhaka', NULL, NULL),
(23, 193, 202001010014, 1, 'Associate . Prof . Dr . Maksuda Farida Akter (Mili)', 'Dr. Mili', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 549, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-12-14 05:14:42', '103.107.38.167', NULL, '2020-12-14 05:14:42', NULL, 550, 1, NULL, 'MBBS , FCPS (Gynae)\r\nInfertility & Laparoscopy Surgeon\r\nSir Solimullah Medical College & Mitford Hospital , Dhaka', '3.00pm To 6.00pm', NULL),
(24, 194, 202001010015, 1, 'Assit . Prof . Dr . Nadira Dilruba Haque', 'Dr. Nadira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 533, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-20 23:44:52', '103.107.38.167', NULL, '2020-01-20 23:44:52', NULL, 566, 1, NULL, 'MBBS , FCPS (Child)\r\nSir Solimullah Medical College & Mitford Hospital , Dhaka', '3.00pm To 6.00pm', NULL),
(25, 195, 202001010016, 1, 'Assit . Prof . Dr . Papiya Sultan', 'Dr. Papiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 549, 470, '2017-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-20 23:49:15', '103.107.38.167', NULL, '2020-01-20 23:49:15', NULL, 550, 1, NULL, 'MBBS , BCS (Health) , FCPS (Gynae)\r\nSir Solimullah Medical College & Mitford Hospital , Dhaka', '3.00pm To 6.00pm', NULL),
(26, 196, 202001010017, 1, 'Assot . Prof . Dr. Kanol Saha', 'Dr. Kanol Saha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 524, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-20 23:52:50', '103.107.38.167', NULL, '2020-01-20 23:52:50', NULL, 556, 1, NULL, 'MBBS , BCS (Health) , MD (Neurology)\r\nDhaka Medical College Hospital', '3.00pm To 6.00pm', NULL),
(27, 197, 202001010018, 1, 'Assit. Prof . Dr . A. K. M. Anamul Haque', 'Dr. Anamul', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 507, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-20 23:57:04', '103.107.38.167', NULL, '2020-01-20 23:57:04', NULL, 567, NULL, NULL, 'MBBS , D-Card , CCD , MD \r\nNational Heart-Disease Institute & Hospital', '4.00pm To 7.00pm', NULL),
(28, 198, 202001010019, 1, 'Dr . Tanvir Haider Chowdhury', 'Dr. Tanvir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 530, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-01-21 00:00:09', '103.107.38.167', 1, '2020-12-14 05:13:50', NULL, 563, 1, NULL, 'MBBS , D-orttho , A-O Basic\r\nDisable Disease Expart & Orthopedic Surgeon\r\nSir Solimullah Medical COllege & Mitford Hospital , Dhaka', '3.00pm To 6.00pm', NULL),
(29, 199, 202001010020, 1, 'Dr . Tanvir Haider Chowdhury', 'Dr. Tanvir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 530, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-21 00:00:18', '103.107.38.167', NULL, '2020-01-21 00:00:18', NULL, 563, 1, NULL, 'MBBS , D-Ortho , A-O Basic\r\nDisabled Disease Expart & Orthopedic Surgeon\r\nSir Solimullah Medical College & Mitford Hospital , Dhaka', '3.00pm To 6.00pm', NULL),
(30, 200, 202001010021, 1, 'Assit . Prof . Dr. Nazmus Shakib Ferdous Manisha', 'Dr. Manisha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 532, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-21 00:29:03', '103.107.38.167', NULL, '2020-01-21 00:29:03', NULL, 568, 1, NULL, 'MBBS , MS (Children Surgery) , BCS (health) , FCPS (Final Part)\r\nDhaka Medical College & Hospital', '3.00pm To 6.00pm', NULL),
(31, 201, 202001010022, 1, 'Assit . Prof . Dr . Md . Maksudur Rahman', 'Dr . Maksudur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 511, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-21 00:34:44', '103.107.38.167', NULL, '2020-01-21 00:34:44', NULL, 569, 1, NULL, 'MBBS , BCS (Health) , DDV (Darma) . MCPS\r\nWho Traind in Srilanka , Thailand & London\r\nSir Solimullah Medical College & Mitford Hospital , Dhaka', '3.00pm To 6.00pm', NULL),
(32, 202, 202001010023, 1, 'Assot . Prof . Md . Mustafizur Rahman', 'Dr . Mustafiz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 511, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-21 01:03:33', '103.107.38.167', NULL, '2020-01-21 01:03:33', NULL, 570, 1, NULL, 'MBBS , DDV (PG Hospital)\r\nDhaka National Medical College & Hospital', '3.00pm To 6.00pm', NULL),
(33, 203, 202001010024, 1, 'Dr . Prodip Malaker', 'Dr . Prodip', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhospital16@gmail.com', NULL, '1970-01-01', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 533, 470, '2018-01-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-21 01:06:03', '103.107.38.167', NULL, '2020-01-21 01:06:03', NULL, 566, 1, NULL, 'MBBS , BCS (Health) , FCPS (FP, Paed) , MD (C , Paed) \r\nRegistran Paediatrics\r\nSir Solimullah Medical College & Mitford Hospital , Dhaka', '3.00pm To 6.00pm', NULL),
(34, 204, 202012010001, 1, 'Dr. Sheikh Anisur Rahman', 'Dr. Anis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01742588888', 'medilifespecializedhopital16@gmail.com', 1, '1970-01-01', 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 530, 470, '2016-11-01', '1970-01-01', '1970-01-01', NULL, NULL, '[{\"checked\":\"\",\"day\":\"Sat\",\"start_time\":\"14:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Sun\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Mon\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Tue\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Wed\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Thu\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"},{\"checked\":\"\",\"day\":\"Fri\",\"start_time\":\"09:00:00\",\"end_time\":\"17:00:00\"}]', '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', NULL, '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', '{\"district\":null,\"upazila\":null,\"post_office\":null,\"vill_road\":null}', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-12-14 05:25:32', '103.107.38.167', NULL, '2020-12-14 05:25:32', NULL, 563, 1, NULL, 'MBBS , BCS (Health) , D. Ortho\r\n\r\nDhaka Medical College & Hospital', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance_application`
--

CREATE TABLE `employee_attendance_application` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `type` tinyint(3) UNSIGNED ZEROFILL DEFAULT NULL COMMENT '1 = Manual App. 2 = Late Arrival App, 3 = Early Departure App',
  `reason` varchar(300) DEFAULT NULL,
  `comments` text,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0 = delete, 1 = pending, 2 = approved, 3 = denied, 4 = Cancelled, 5 = Recommended,  ',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance_info`
--

CREATE TABLE `employee_attendance_info` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `is_late` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0 = No Late, 1 = Late ',
  `is_late_approved` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0 = No approve, 1 = Approved',
  `is_early_departure` int(11) DEFAULT NULL COMMENT '0 = No Early Departure, 1 = Early Departure',
  `is_early_departure_approved` int(11) DEFAULT NULL COMMENT '0 = No approve, 1 = Approved',
  `record_type` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '1 = System , 2 = Manual ',
  `is_active` tinyint(4) DEFAULT '1' COMMENT '0 = delete, 1 = active, 2 =  delete  ',
  `determine_schedule` varchar(100) DEFAULT NULL COMMENT '{''intime: ''09:00:00'', ''end_time'': ''17:00:00''}',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_attendance_info`
--

INSERT INTO `employee_attendance_info` (`id`, `employee_id`, `attendance_date`, `start_time`, `end_time`, `is_late`, `is_late_approved`, `is_early_departure`, `is_early_departure_approved`, `record_type`, `is_active`, `determine_schedule`, `created_at`, `created_by`, `created_ip`, `updated_at`, `updated_by`, `updated_ip`) VALUES
(7, 201903010003, '2019-04-28', '02:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 11:49:18', 1, '::1', '2019-04-28 14:11:26', 1, '::1'),
(8, 201903010002, '2019-04-28', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 2, NULL, '2019-04-28 11:49:18', 1, '::1', NULL, NULL, NULL),
(10, 201903010001, '2019-04-28', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 11:49:18', 1, '::1', '2019-04-28 14:11:26', 1, '::1'),
(12, 201903010003, '2019-04-29', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 11:26:45', 1, '::1', NULL, NULL, NULL),
(13, 201903010002, '2019-04-29', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 11:26:45', 1, '::1', NULL, NULL, NULL),
(14, 201903010001, '2019-04-29', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 11:26:45', 1, '::1', NULL, NULL, NULL),
(15, 201904010004, '2019-04-28', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 11:47:44', 1, '::1', NULL, NULL, NULL),
(16, 201903010003, '2019-04-09', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 11:48:24', 1, '::1', NULL, NULL, NULL),
(17, 201903010002, '2019-04-09', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 11:48:24', 1, '::1', NULL, NULL, NULL),
(18, 201903010001, '2019-04-09', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 11:48:24', 1, '::1', NULL, NULL, NULL),
(19, 201903010003, '2019-04-30', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 12:36:47', 1, '::1', '2019-04-29 00:14:12', 1, '::1'),
(20, 201903010002, '2019-04-30', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 2, NULL, '2019-04-28 12:36:47', 1, '::1', '2019-04-29 00:14:12', 1, '::1'),
(21, 201903010001, '2019-04-30', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 12:36:48', 1, '::1', '2019-04-29 00:14:12', 1, '::1'),
(22, 201903010003, '2019-05-01', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 12:37:30', 1, '::1', NULL, NULL, NULL),
(23, 201903010002, '2019-05-01', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 12:37:30', 1, '::1', NULL, NULL, NULL),
(24, 201903010001, '2019-05-01', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 12:37:30', 1, '::1', NULL, NULL, NULL),
(25, 201903010001, '2019-05-03', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 12:47:50', 1, '::1', NULL, NULL, NULL),
(26, 201903010003, '2019-05-03', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 12:48:16', 1, '::1', NULL, NULL, NULL),
(27, 201903010001, '2019-05-03', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 12:48:16', 1, '::1', NULL, NULL, NULL),
(28, 201903010001, '2019-05-03', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 12:48:16', 1, '::1', NULL, NULL, NULL),
(29, 201903010002, '2019-05-04', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 13:23:02', 1, '::1', NULL, NULL, NULL),
(31, 201903010001, '2019-05-04', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 13:23:12', 1, '::1', NULL, NULL, NULL),
(32, 201903010003, '2019-05-04', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 13:23:12', 1, '::1', NULL, NULL, NULL),
(33, 201903010002, '2019-05-05', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 2, NULL, '2019-04-28 13:23:36', 1, '::1', NULL, NULL, NULL),
(34, 201903010003, '2019-05-05', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 13:44:16', 1, '::1', '2019-04-28 21:47:38', 1, '::1'),
(35, 201903010002, '2019-05-05', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 2, NULL, '2019-04-28 13:31:52', 1, '::1', '2019-04-28 13:53:57', 1, '::1'),
(36, 201903010001, '2019-05-05', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-04-28 13:44:17', 1, '::1', '2019-04-28 21:47:38', 1, '::1'),
(37, 201903010002, '2019-05-05', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 2, NULL, '2019-04-28 13:57:21', 1, '::1', '2019-04-28 21:47:38', 1, '::1'),
(38, 201903010003, '2019-05-14', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-05-14 12:36:48', 1, '::1', NULL, NULL, NULL),
(39, 201903010002, '2019-05-14', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-05-14 12:36:48', 1, '::1', NULL, NULL, NULL),
(40, 201903010001, '2019-05-14', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-05-14 12:36:48', 1, '::1', NULL, NULL, NULL),
(41, 201903010003, '2019-06-18', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-06-18 07:30:13', 1, '::1', NULL, NULL, NULL),
(42, 201903010002, '2019-06-18', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-06-18 07:30:13', 1, '::1', NULL, NULL, NULL),
(43, 201903010001, '2019-06-18', '09:00:00', '05:00:00', 0, 0, 0, 0, 1, 1, NULL, '2019-06-18 07:30:13', 1, '::1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance_row_data`
--

CREATE TABLE `employee_attendance_row_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_type` tinyint(1) UNSIGNED NOT NULL COMMENT '1 = IN, 2 = OUT',
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1' COMMENT '0 = delete, 1 = active, 2 = inactive  ',
  `is_process` tinyint(3) UNSIGNED DEFAULT '1' COMMENT '1 =process pending, 2 = process complete',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave_infos`
--

CREATE TABLE `employee_leave_infos` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `leave_type_id` int(11) UNSIGNED NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `leave_reason` varchar(500) DEFAULT NULL,
  `is_leave_share` tinyint(4) DEFAULT NULL COMMENT '0 = no, 1 = yes',
  `leave_share_info` text,
  `comments` text,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 = delete, 1 = pending,2 = recommanded, 3 = denied, 4 = Cancelled, 5 =  Completed',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_leave_infos`
--

INSERT INTO `employee_leave_infos` (`id`, `employee_id`, `leave_type_id`, `from_date`, `to_date`, `leave_reason`, `is_leave_share`, `leave_share_info`, `comments`, `status`, `created_by`, `created_at`, `created_ip`, `updated_by`, `updated_at`, `updated_ip`) VALUES
(1, 201903010002, 3, '2019-03-07', '2019-03-14', 'I am sick', 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_payrole_leave_assign`
--

CREATE TABLE `employee_payrole_leave_assign` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fiscal_year` mediumint(6) UNSIGNED DEFAULT NULL,
  `leave_info` text COMMENT '{{''type_id'':1,''limit'':20,''consume'':5,''remaining'':15},{''type_id'':2,''limit'':10,''consume'':5,''remaining'':10}}',
  `created_by` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_payrole_leave_assign`
--

INSERT INTO `employee_payrole_leave_assign` (`id`, `employee_id`, `fiscal_year`, `leave_info`, `created_by`, `created_at`, `created_ip`, `updated_by`, `updated_at`, `updated_ip`) VALUES
(1, 201904010004, 1, '[{\"checked\":1,\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"5\",\"remaining\":\"0\"},{\"checked\":1,\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"5\",\"remaining\":\"0\"},{\"checked\":1,\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"5\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"5\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"5\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"5\",\"remaining\":\"0\"}]', 1, '2019-04-10 11:34:10', '::1', 1, '2020-01-20 01:28:35', '103.107.38.167'),
(2, 201903010003, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":1,\"type_id\":\"4\",\"limit\":\"6\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2019-04-10 14:42:00', '::1', 1, '2020-01-20 01:30:09', '103.107.38.167'),
(3, 201906010005, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2019-06-24 00:10:59', '::1', 1, '2020-01-20 01:27:04', '103.107.38.167'),
(4, 201907010006, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2019-12-25 04:27:02', '::1', 1, '2020-01-20 01:26:09', '103.107.38.167'),
(5, 201907020007, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2019-12-25 04:50:13', '::1', 1, '2020-01-20 03:23:34', '103.107.38.167'),
(6, 201903010001, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2019-12-25 07:17:39', '::1', 1, '2020-01-20 03:39:11', '103.107.38.167'),
(7, 202001010008, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-04 07:03:28', '103.107.38.167', 1, '2020-01-06 23:35:51', '103.107.38.167'),
(8, 202001010009, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-06 23:32:56', '103.107.38.167', NULL, NULL, NULL),
(9, 202001010010, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-06 23:41:25', '103.107.38.167', NULL, NULL, NULL),
(10, 202001010011, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-06 23:46:06', '103.107.38.167', 1, '2020-12-14 05:20:18', '103.107.38.167'),
(11, 201903010002, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-20 01:23:13', '103.107.38.167', 1, '2020-01-20 01:31:03', '103.107.38.167'),
(12, 202001010012, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-20 23:29:23', '103.107.38.167', NULL, NULL, NULL),
(13, 202001010013, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-20 23:35:26', '103.107.38.167', NULL, NULL, NULL),
(14, 202001010014, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-20 23:39:36', '103.107.38.167', 1, '2020-01-20 23:48:06', '103.107.38.167'),
(15, 202001010015, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-20 23:47:22', '103.107.38.167', NULL, NULL, NULL),
(16, 202001010016, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-20 23:50:50', '103.107.38.167', NULL, NULL, NULL),
(17, 202001010017, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-20 23:54:22', '103.107.38.167', NULL, NULL, NULL),
(18, 202001010018, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-20 23:58:37', '103.107.38.167', NULL, NULL, NULL),
(19, 202001010020, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-21 00:02:26', '103.107.38.167', NULL, NULL, NULL),
(20, 202001010021, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-21 00:27:33', '103.107.38.167', 1, '2020-01-21 00:28:27', '103.107.38.167'),
(21, 202001010022, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-21 00:34:22', '103.107.38.167', NULL, NULL, NULL),
(22, 202001010019, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-21 00:37:46', '103.107.38.167', NULL, NULL, NULL),
(23, 202001010023, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-21 01:04:56', '103.107.38.167', NULL, NULL, NULL),
(24, 202001010024, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-01-21 01:21:06', '103.107.38.167', NULL, NULL, NULL),
(25, 202012010001, 1, '[{\"checked\":\"\",\"type_id\":\"3\",\"limit\":\"10\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"4\",\"limit\":\"5\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"7\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"8\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"18\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"},{\"checked\":\"\",\"type_id\":\"19\",\"limit\":\"No Limit\",\"consume\":\"0\",\"remaining\":\"0\"}]', 1, '2020-12-14 05:28:42', '103.107.38.167', 1, '2020-12-14 05:29:42', '103.107.38.167');

-- --------------------------------------------------------

--
-- Table structure for table `employee_payslip_infos`
--

CREATE TABLE `employee_payslip_infos` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `payrole_setup_month` mediumint(6) UNSIGNED NOT NULL,
  `generated_date` date DEFAULT NULL,
  `earning_info` text COMMENT '{''ctg_info'':{{''ctg_id'':1,''details'':''ctg wise details'',''amount'':''150''},{''ctg_id'':1,''details'':''ctg wise details'',''amount'':''150''}},''allowance_info'':''''}',
  `deduction_info` text,
  `is_modify` tinyint(1) DEFAULT NULL COMMENT '1 = modified',
  `is_active` tinyint(1) DEFAULT '1' COMMENT '0 = delete, 1 = active, 2 = inactive ',
  `is_maill_send` tinyint(1) DEFAULT NULL COMMENT '1 = send complete,',
  `is_pdf_bind` tinyint(1) DEFAULT NULL COMMENT '1 = pdf bind complete',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL,
  `generated_method` tinyint(1) DEFAULT '1' COMMENT '1 = manual , 2 = cron job'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_payslip_infos`
--

INSERT INTO `employee_payslip_infos` (`id`, `employee_id`, `payrole_setup_month`, `generated_date`, `earning_info`, `deduction_info`, `is_modify`, `is_active`, `is_maill_send`, `is_pdf_bind`, `created_by`, `created_at`, `created_ip`, `updated_by`, `updated_at`, `updated_ip`, `generated_method`) VALUES
(5, 201904010004, 1, '2019-04-07', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"60000.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"10\",\"earning_ctg_amount\":\"6000.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"5000.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"5\",\"deduction_ctg_amount\":\"3000.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"4000.00\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"500.00\"}]', NULL, 1, NULL, NULL, 1, '2019-04-07 08:02:46', '::1', NULL, NULL, NULL, 1),
(6, 201903010002, 1, '2019-04-07', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"500.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"200.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"15\",\"deduction_ctg_amount\":\"4.50\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"5\",\"deduction_ctg_amount\":\"1.50\"}]', NULL, 1, NULL, NULL, 1, '2019-04-07 08:02:46', '::1', NULL, NULL, NULL, 1),
(10, 201903010003, 1, '2019-04-07', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"6\",\"earning_ctg_amount\":\"50.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"6\",\"earning_ctg_amount\":\"12.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"6.9\",\"earning_ctg_amount\":\"100.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"100.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"1\",\"deduction_ctg_amount\":\"0.30\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"6\",\"deduction_ctg_amount\":\"1.80\"}]', NULL, 1, NULL, NULL, 1, '2019-04-07 09:06:24', '::1', NULL, NULL, NULL, 1),
(11, 201904010004, 2, '2019-04-12', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"60000.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"10\",\"earning_ctg_amount\":\"6000.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"5000.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"5\",\"deduction_ctg_amount\":\"3000.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"4000.00\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"500.00\"}]', NULL, 1, NULL, NULL, 1, '2019-04-12 06:16:38', '::1', NULL, NULL, NULL, 1),
(12, 201903010003, 2, '2019-04-29', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30000.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"6\",\"earning_ctg_amount\":\"50.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"6\",\"earning_ctg_amount\":\"12.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"6.9\",\"earning_ctg_amount\":\"100.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"1000.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"1\",\"deduction_ctg_amount\":\"1888.00\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"6\",\"deduction_ctg_amount\":\"2000.00\"}]', NULL, 1, NULL, NULL, 1, '2019-04-29 00:47:23', '::1', NULL, NULL, NULL, 1),
(13, 201904010004, 1, '2019-05-14', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-05-14 07:36:57', '::1', NULL, NULL, NULL, 1),
(14, 201903010003, 1, '2019-05-14', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-05-14 07:36:57', '::1', NULL, NULL, NULL, 1),
(15, 201903010002, 1, '2019-05-14', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-05-14 07:36:57', '::1', NULL, NULL, NULL, 1),
(16, 201903010002, 2, '2019-05-14', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"500.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"200.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"15\",\"deduction_ctg_amount\":\"4.50\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"5\",\"deduction_ctg_amount\":\"1.50\"}]', NULL, 1, NULL, NULL, 1, '2019-05-14 07:37:53', '::1', NULL, NULL, NULL, 1),
(17, 201903010001, 2, '2019-05-15', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"3\",\"earning_ctg_amount\":\"20.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"3\",\"earning_ctg_amount\":\"600.00\"},{\"earning_ctg\":\"47\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"10.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"48\",\"deduction_ctg_per\":\"12\",\"deduction_ctg_amount\":\"3.60\"}]', NULL, 1, NULL, NULL, 1, '2019-05-14 23:39:44', '::1', NULL, NULL, NULL, 1),
(18, 201904010004, 3, '2019-05-15', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"60000.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"10\",\"earning_ctg_amount\":\"6000.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"5000.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"5\",\"deduction_ctg_amount\":\"3000.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"4000.00\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"500.00\"}]', NULL, 1, NULL, NULL, 1, '2019-05-14 23:40:50', '::1', NULL, NULL, NULL, 1),
(19, 201903010003, 3, '2019-06-18', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30000.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"6\",\"earning_ctg_amount\":\"50.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"6\",\"earning_ctg_amount\":\"12.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"6.9\",\"earning_ctg_amount\":\"100.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"1000.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"1\",\"deduction_ctg_amount\":\"1888.00\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"6\",\"deduction_ctg_amount\":\"2000.00\"}]', NULL, 1, NULL, NULL, 1, '2019-06-18 07:28:19', '::1', NULL, NULL, NULL, 1),
(20, 201904010004, 1, '2019-06-19', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-06-18 21:25:15', '::1', NULL, NULL, NULL, 1),
(21, 201904010004, 1, '2019-06-19', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-06-18 21:25:15', '::1', NULL, NULL, NULL, 1),
(22, 201903010003, 1, '2019-06-19', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-06-18 21:25:15', '::1', NULL, NULL, NULL, 1),
(23, 201903010003, 1, '2019-06-19', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-06-18 21:25:15', '::1', NULL, NULL, NULL, 1),
(24, 201903010002, 1, '2019-06-19', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-06-18 21:25:15', '::1', NULL, NULL, NULL, 1),
(25, 201903010002, 1, '2019-06-19', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-06-18 21:25:15', '::1', NULL, NULL, NULL, 1),
(26, 201907020007, 3, '2019-07-17', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-07-17 11:52:25', '::1', NULL, NULL, NULL, 1),
(27, 201907010006, 3, '2019-07-17', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-07-17 11:52:25', '::1', NULL, NULL, NULL, 1),
(28, 201906010005, 3, '2019-07-17', NULL, NULL, NULL, 1, NULL, NULL, 1, '2019-07-17 11:52:25', '::1', NULL, NULL, NULL, 1),
(29, 201903010002, 3, '2019-07-17', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"500.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"200.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"15\",\"deduction_ctg_amount\":\"4.50\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"5\",\"deduction_ctg_amount\":\"1.50\"}]', NULL, 1, NULL, NULL, 1, '2019-07-17 11:52:25', '::1', NULL, NULL, NULL, 1),
(30, 201903010001, 3, '2019-07-17', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"3\",\"earning_ctg_amount\":\"20.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"3\",\"earning_ctg_amount\":\"600.00\"},{\"earning_ctg\":\"47\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"10.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"48\",\"deduction_ctg_per\":\"12\",\"deduction_ctg_amount\":\"3.60\"}]', NULL, 1, NULL, NULL, 1, '2019-07-17 11:52:25', '::1', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_infos`
--

CREATE TABLE `employee_salary_infos` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `pay_scal` varchar(20) DEFAULT NULL,
  `bank_Id` int(11) UNSIGNED DEFAULT NULL,
  `account_no` varchar(30) DEFAULT NULL,
  `payrole_earning_info` text,
  `payrole_deduction_info` text,
  `pf_inital_balance` decimal(10,2) DEFAULT NULL,
  `pf_deduction_per` decimal(3,2) DEFAULT NULL,
  `is_salary_assign` tinyint(4) DEFAULT NULL COMMENT '1 = assign complete ',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = delete, 1 = active, 2 = inactive',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `update_by` bigint(20) UNSIGNED DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `update_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_salary_infos`
--

INSERT INTO `employee_salary_infos` (`id`, `employee_id`, `basic_salary`, `pay_scal`, `bank_Id`, `account_no`, `payrole_earning_info`, `payrole_deduction_info`, `pf_inital_balance`, `pf_deduction_per`, `is_salary_assign`, `is_active`, `created_by`, `created_at`, `created_ip`, `update_by`, `update_at`, `update_ip`) VALUES
(1, 201903010003, '30000.00', '2015', 17, '33', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30000.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"6\",\"earning_ctg_amount\":\"50.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"6\",\"earning_ctg_amount\":\"12.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"6.9\",\"earning_ctg_amount\":\"100.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"1000.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"1\",\"deduction_ctg_amount\":\"1888.00\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"6\",\"deduction_ctg_amount\":\"2000.00\"}]', '3.00', '3.00', 1, 1, NULL, NULL, NULL, 1, '2019-04-28 23:53:18', '::1'),
(2, 201903010002, '30.00', '3', 17, '33', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"500.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"200.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"15\",\"deduction_ctg_amount\":\"4.50\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"5\",\"deduction_ctg_amount\":\"1.50\"}]', '3.00', '3.00', 1, 1, NULL, NULL, NULL, 1, '2019-04-05 08:09:56', '::1'),
(3, 201903010001, '30.00', '3', 17, '33', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"30.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"3\",\"earning_ctg_amount\":\"20.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"3\",\"earning_ctg_amount\":\"600.00\"},{\"earning_ctg\":\"47\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"10.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"0.00\"},{\"deduction_ctg\":\"48\",\"deduction_ctg_per\":\"12\",\"deduction_ctg_amount\":\"3.60\"}]', '3.00', '3.00', 1, 1, NULL, NULL, NULL, 1, '2019-04-06 02:37:51', '::1'),
(4, 201904010004, '60000.00', '2015', 17, '018300', '[{\"earning_ctg\":\"16\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"60000.00\"},{\"earning_ctg\":\"43\",\"earning_ctg_per\":\"10\",\"earning_ctg_amount\":\"6000.00\"},{\"earning_ctg\":\"44\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"0.00\"},{\"earning_ctg\":\"45\",\"earning_ctg_per\":\"0\",\"earning_ctg_amount\":\"5000.00\"}]', '[{\"deduction_ctg\":\"15\",\"deduction_ctg_per\":\"5\",\"deduction_ctg_amount\":\"3000.00\"},{\"deduction_ctg\":\"49\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"4000.00\"},{\"deduction_ctg\":\"50\",\"deduction_ctg_per\":\"0\",\"deduction_ctg_amount\":\"500.00\"}]', '50000.00', '5.00', 1, 1, NULL, NULL, NULL, 1, '2019-04-06 23:04:41', '::1'),
(5, 201906010005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 201907010006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 201907020007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 202001010008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 202001010009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 202001010010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 202001010011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 202001010012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 202001010013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 202001010014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 202001010015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 202001010016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 202001010017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 202001010018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 202001010019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 202001010020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 202001010021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 202001010022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 202001010023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 202001010024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 202012010001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employess_general_infos`
--

CREATE TABLE `employess_general_infos` (
  `id` int(11) NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `education_info` text,
  `training_info` text,
  `spouse_info` text,
  `children_info` text,
  `promotion_info` text,
  `job_history` text,
  `emergency_contact` text,
  `exit_feedback` text,
  `disciplinary_action` text,
  `expertise_info` text,
  `travel_info` text,
  `award_info` text,
  `deptamental_action` text,
  `is_active` tinyint(1) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(20) UNSIGNED DEFAULT NULL,
  `created_ip` varchar(15) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employess_general_infos`
--

INSERT INTO `employess_general_infos` (`id`, `employee_id`, `education_info`, `training_info`, `spouse_info`, `children_info`, `promotion_info`, `job_history`, `emergency_contact`, `exit_feedback`, `disciplinary_action`, `expertise_info`, `travel_info`, `award_info`, `deptamental_action`, `is_active`, `created_at`, `created_by`, `created_ip`, `updated_at`, `updated_by`, `updated_ip`) VALUES
(1, 201903010003, '[{\"degree_name\":\"1\",\"major_subject\":\"2\",\"institution\":\"Comilla Board\",\"passing_year\":\"2010\",\"result\":\"1st Class\",\"cgpa\":null,\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-31 17:42:38\"},{\"degree_name\":\"2\",\"major_subject\":\"15\",\"institution\":\"Feni Computer Institute\",\"passing_year\":\"2014\",\"result\":null,\"cgpa\":\"3.40\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-03-31 17:42:38\"}]', '[{\"training_type\":\"1\",\"training_title\":\"IDB\",\"institute_name\":\"BD News\",\"from_date\":\"30-03-2019\",\"to_date\":\"30-03-2019\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-30 07:54:38\"},{\"training_type\":\"2\",\"training_title\":\"Hello BD\",\"institute_name\":\"BDD\",\"from_date\":\"21-03-2019\",\"to_date\":\"21-03-2019\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-03-30 07:54:38\"}]', '{\"spouse_name\":\"ss\",\"spouse_occupation\":\"2\",\"spouse_mobile\":\"22\",\"spouse_designation\":\"2\",\"spouse_home_district\":\"1\",\"spouse_organization\":\"2\",\"spouse_address\":\"2\"}', '[{\"childName\":\"22\",\"childSex\":\"2\",\"child_birth_date\":\"13-03-2019\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-30 10:39:12\"}]', '[{\"promotion_designation\":\"12\",\"increment_date\":\"30-03-2019\",\"go_date\":\"30-03-2019\",\"nature_increment\":\"33\",\"pay_scale\":\"33\",\"sorting\":1,\"created_by\":null,\"created_time\":\"2019-03-30 19:27:52\"},{\"promotion_designation\":\"12\",\"increment_date\":\"30-03-2019\",\"go_date\":\"30-03-2019\",\"nature_increment\":\"33\",\"pay_scale\":\"333\",\"sorting\":2,\"created_by\":null,\"created_time\":\"2019-03-30 19:27:52\"}]', '[{\"organigation\":\"w\",\"post\":\"s\",\"office_address\":\"d\",\"department\":\"d\",\"job_from_date\":\"14-03-2019\",\"job_to_date\":\"12-03-2019\",\"job_payscale\":null,\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-30 19:29:24\"},{\"organigation\":\"s\",\"post\":\"sw\",\"office_address\":\"sw\",\"department\":\"sw\",\"job_from_date\":\"12-03-2019\",\"job_to_date\":\"25-03-2019\",\"job_payscale\":\"s\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-03-30 19:29:24\"},{\"organigation\":\"sw\",\"post\":\"s\",\"office_address\":\"s\",\"department\":\"s\",\"job_from_date\":\"20-03-2019\",\"job_to_date\":\"12-03-2019\",\"job_payscale\":\"ss\",\"sorting\":3,\"created_by\":1,\"created_time\":\"2019-03-30 19:29:24\"}]', '{\"emergencey_contact_person\":\"d3\",\"relation_contact_person\":\"x333\",\"emergency_contact_mobile\":\"333\",\"emergency_contact_email\":\"x3\",\"emergency_contact_address\":\"xx3\"}', '{\"reason_of_resignation\":\"22\",\"resignation_date\":\"06-03-2019\",\"new_work_place\":\"dd\",\"new_work_place_address\":\"d\",\"comments_employee\":\"d\",\"comments_authority\":\"d\"}', '{\"employee_action\":\"1\",\"punishment_date\":\"30-03-2019\",\"punishment\":\"d dd dd\",\"remarks\":\"d\"}', NULL, NULL, NULL, NULL, 1, '2019-03-31 11:42:38', 1, '', NULL, NULL, NULL),
(2, 201904010004, '[{\"degree_name\":\"1\",\"major_subject\":\"Science\",\"institution\":\"Dhaka\",\"passing_year\":\"2015\",\"result\":null,\"cgpa\":\"5.00\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-04-29 05:46:30\"},{\"degree_name\":\"2\",\"major_subject\":\"Science\",\"institution\":\"Dhaka\",\"passing_year\":\"2015\",\"result\":null,\"cgpa\":\"3.59\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-04-29 05:46:30\"}]', '[{\"training_type\":\"1\",\"training_title\":\"IDB\",\"institute_name\":\"IDB\",\"from_date\":\"01-04-2019\",\"to_date\":\"30-05-2019\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-04-29 05:42:02\"}]', '{\"spouse_name\":\"Laila\",\"spouse_occupation\":\"House Wife\",\"spouse_mobile\":\"0183777777\",\"spouse_designation\":null,\"spouse_home_district\":\"1\",\"spouse_organization\":null,\"spouse_address\":\"Dhaka\"}', '[{\"childName\":\"Salma Akther\",\"childSex\":\"2\",\"child_birth_date\":\"01-04-2019\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-04-29 05:42:51\"}]', '[{\"promotion_designation\":\"12\",\"increment_date\":\"01-04-2019\",\"go_date\":\"30-04-2019\",\"nature_increment\":null,\"pay_scale\":\"2015\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-04-29 05:43:16\"}]', '[{\"organigation\":\"Dhaka University\",\"post\":\"Manager\",\"office_address\":\"Dhaka\",\"department\":\"CSE\",\"job_from_date\":\"08-04-2019\",\"job_to_date\":\"30-04-2019\",\"job_payscale\":\"2015\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-04-29 05:44:02\"}]', '{\"emergencey_contact_person\":\"Md. Omar Faruk\",\"relation_contact_person\":\"Brother\",\"emergency_contact_mobile\":\"01839707645\",\"emergency_contact_email\":\"shohag@gmail.com\",\"emergency_contact_address\":\"Dhaka\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-04-28 23:46:30', 1, '', NULL, NULL, NULL),
(3, 201903010001, '[{\"degree_name\":\"1\",\"major_subject\":\"2\",\"institution\":\"Comilla Board\",\"passing_year\":\"2010\",\"result\":\"1st Class\",\"cgpa\":null,\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-31 17:42:38\"},{\"degree_name\":\"2\",\"major_subject\":\"15\",\"institution\":\"Feni Computer Institute\",\"passing_year\":\"2014\",\"result\":null,\"cgpa\":\"3.40\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-03-31 17:42:38\"}]', '[{\"training_type\":\"1\",\"training_title\":\"IDB\",\"institute_name\":\"BD News\",\"from_date\":\"30-03-2019\",\"to_date\":\"30-03-2019\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-30 07:54:38\"},{\"training_type\":\"2\",\"training_title\":\"Hello BD\",\"institute_name\":\"BDD\",\"from_date\":\"21-03-2019\",\"to_date\":\"21-03-2019\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-03-30 07:54:38\"}]', '{\"spouse_name\":\"ss\",\"spouse_occupation\":\"2\",\"spouse_mobile\":\"22\",\"spouse_designation\":\"2\",\"spouse_home_district\":\"1\",\"spouse_organization\":\"2\",\"spouse_address\":\"2\"}', '[{\"childName\":\"22\",\"childSex\":\"2\",\"child_birth_date\":\"13-03-2019\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-30 10:39:12\"}]', '[{\"promotion_designation\":\"12\",\"increment_date\":\"30-03-2019\",\"go_date\":\"30-03-2019\",\"nature_increment\":\"33\",\"pay_scale\":\"33\",\"sorting\":1,\"created_by\":null,\"created_time\":\"2019-03-30 19:27:52\"},{\"promotion_designation\":\"12\",\"increment_date\":\"30-03-2019\",\"go_date\":\"30-03-2019\",\"nature_increment\":\"33\",\"pay_scale\":\"333\",\"sorting\":2,\"created_by\":null,\"created_time\":\"2019-03-30 19:27:52\"}]', '[{\"organigation\":\"w\",\"post\":\"s\",\"office_address\":\"d\",\"department\":\"d\",\"job_from_date\":\"14-03-2019\",\"job_to_date\":\"12-03-2019\",\"job_payscale\":null,\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-30 19:29:24\"},{\"organigation\":\"s\",\"post\":\"sw\",\"office_address\":\"sw\",\"department\":\"sw\",\"job_from_date\":\"12-03-2019\",\"job_to_date\":\"25-03-2019\",\"job_payscale\":\"s\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-03-30 19:29:24\"},{\"organigation\":\"sw\",\"post\":\"s\",\"office_address\":\"s\",\"department\":\"s\",\"job_from_date\":\"20-03-2019\",\"job_to_date\":\"12-03-2019\",\"job_payscale\":\"ss\",\"sorting\":3,\"created_by\":1,\"created_time\":\"2019-03-30 19:29:24\"}]', '{\"emergencey_contact_person\":\"d3\",\"relation_contact_person\":\"x333\",\"emergency_contact_mobile\":\"333\",\"emergency_contact_email\":\"x3\",\"emergency_contact_address\":\"xx3\"}', '{\"reason_of_resignation\":\"22\",\"resignation_date\":\"06-03-2019\",\"new_work_place\":\"dd\",\"new_work_place_address\":\"d\",\"comments_employee\":\"d\",\"comments_authority\":\"d\"}', '{\"employee_action\":\"1\",\"punishment_date\":\"30-03-2019\",\"punishment\":\"d dd dd\",\"remarks\":\"d\"}', NULL, NULL, NULL, NULL, 1, '2019-03-31 11:42:38', 1, '', NULL, NULL, NULL),
(4, 201903010002, '[{\"degree_name\":\"1\",\"major_subject\":\"2\",\"institution\":\"Comilla Board\",\"passing_year\":\"2010\",\"result\":\"1st Class\",\"cgpa\":null,\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-31 17:42:38\"},{\"degree_name\":\"2\",\"major_subject\":\"15\",\"institution\":\"Feni Computer Institute\",\"passing_year\":\"2014\",\"result\":null,\"cgpa\":\"3.40\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-03-31 17:42:38\"}]', '[{\"training_type\":\"1\",\"training_title\":\"IDB\",\"institute_name\":\"BD News\",\"from_date\":\"30-03-2019\",\"to_date\":\"30-03-2019\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-30 07:54:38\"},{\"training_type\":\"2\",\"training_title\":\"Hello BD\",\"institute_name\":\"BDD\",\"from_date\":\"21-03-2019\",\"to_date\":\"21-03-2019\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-03-30 07:54:38\"}]', '{\"spouse_name\":\"ss\",\"spouse_occupation\":\"2\",\"spouse_mobile\":\"22\",\"spouse_designation\":\"2\",\"spouse_home_district\":\"1\",\"spouse_organization\":\"2\",\"spouse_address\":\"2\"}', '[{\"childName\":\"22\",\"childSex\":\"2\",\"child_birth_date\":\"13-03-2019\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-30 10:39:12\"}]', '[{\"promotion_designation\":\"12\",\"increment_date\":\"30-03-2019\",\"go_date\":\"30-03-2019\",\"nature_increment\":\"33\",\"pay_scale\":\"33\",\"sorting\":1,\"created_by\":null,\"created_time\":\"2019-03-30 19:27:52\"},{\"promotion_designation\":\"12\",\"increment_date\":\"30-03-2019\",\"go_date\":\"30-03-2019\",\"nature_increment\":\"33\",\"pay_scale\":\"333\",\"sorting\":2,\"created_by\":null,\"created_time\":\"2019-03-30 19:27:52\"}]', '[{\"organigation\":\"w\",\"post\":\"s\",\"office_address\":\"d\",\"department\":\"d\",\"job_from_date\":\"14-03-2019\",\"job_to_date\":\"12-03-2019\",\"job_payscale\":null,\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-03-30 19:29:24\"},{\"organigation\":\"s\",\"post\":\"sw\",\"office_address\":\"sw\",\"department\":\"sw\",\"job_from_date\":\"12-03-2019\",\"job_to_date\":\"25-03-2019\",\"job_payscale\":\"s\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-03-30 19:29:24\"},{\"organigation\":\"sw\",\"post\":\"s\",\"office_address\":\"s\",\"department\":\"s\",\"job_from_date\":\"20-03-2019\",\"job_to_date\":\"12-03-2019\",\"job_payscale\":\"ss\",\"sorting\":3,\"created_by\":1,\"created_time\":\"2019-03-30 19:29:24\"}]', '{\"emergencey_contact_person\":\"d3\",\"relation_contact_person\":\"x333\",\"emergency_contact_mobile\":\"333\",\"emergency_contact_email\":\"x3\",\"emergency_contact_address\":\"xx3\"}', '{\"reason_of_resignation\":\"22\",\"resignation_date\":\"06-03-2019\",\"new_work_place\":\"dd\",\"new_work_place_address\":\"d\",\"comments_employee\":\"d\",\"comments_authority\":\"d\"}', '{\"employee_action\":\"1\",\"punishment_date\":\"30-03-2019\",\"punishment\":\"d dd dd\",\"remarks\":\"d\"}', NULL, NULL, NULL, NULL, 1, '2019-03-31 11:42:38', 1, '', NULL, NULL, NULL),
(5, 201906010005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"title\":\"tt\",\"description\":\"r\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-09-22 03:03:47\",\"created_ip\":\"103.60.175.27\"}]', '[{\"id\":1,\"type\":\"2\",\"from_date\":\"11-09-2019\",\"to_date\":\"27-09-2019\",\"go_no\":\"t\",\"country\":\"13\",\"purpose\":\"t\",\"is_active\":1,\"created_by\":1,\"created_time\":\"2019-09-22 03:04:12\",\"created_ip\":\"103.60.175.27\"}]', '[{\"title\":\"national award\",\"description\":\"this is national award\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-09-22 04:20:50\",\"created_ip\":\"202.134.13.139\"},{\"title\":\"rt\",\"description\":\"uui\",\"sorting\":2,\"created_by\":1,\"created_time\":\"2019-09-22 04:20:50\",\"created_ip\":\"202.134.13.139\"}]', NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(8, 201907010006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(9, 201907020007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"title\":\"2\",\"description\":\"2\",\"sorting\":1,\"created_by\":1,\"created_time\":\"2019-12-14 11:00:04\",\"created_ip\":\"::1\"}]', '[{\"id\":1,\"type\":\"2\",\"from_date\":\"18-12-2019\",\"to_date\":\"11-12-2019\",\"go_no\":\"33\",\"country\":\"13\",\"purpose\":\"3\",\"is_active\":0,\"created_by\":1,\"created_time\":\"2019-12-14 10:59:21\",\"created_ip\":\"::1\",\"updated_by\":1,\"updated_time\":\"2019-12-14 10:59:26\",\"updated_ip\":\"::1\"}]', NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(19, 202001010008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(20, 202001010009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(21, 202001010010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(22, 202001010011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(23, 202001010012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(24, 202001010013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(25, 202001010014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(26, 202001010015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(27, 202001010016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(28, 202001010017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(29, 202001010018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(30, 202001010019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(31, 202001010020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(32, 202001010021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(33, 202001010022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(34, 202001010023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(35, 202001010024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL),
(36, 202012010001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fiscal_year`
--

CREATE TABLE `fiscal_year` (
  `id` mediumint(6) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL COMMENT '0 = delete,  1 = active, previous, 3 = next, ',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fiscal_year`
--

INSERT INTO `fiscal_year` (`id`, `title`, `start_date`, `end_date`, `is_active`, `created_by`, `created_at`, `created_ip`, `updated_by`, `updated_at`, `updated_ip`) VALUES
(1, '2019', '2019-01-01', '2019-12-31', 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_11_28_155128_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_openings`
--

CREATE TABLE `monthly_openings` (
  `id` int(11) NOT NULL,
  `fiscal_year_id` mediumint(6) UNSIGNED DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `modify_last_date` date DEFAULT NULL,
  `sorting` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '3' COMMENT '0 = delete, 1 = running, 2 = previous, 3 = next  ',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_ip` varchar(15) NOT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `monthly_openings`
--

INSERT INTO `monthly_openings` (`id`, `fiscal_year_id`, `title`, `start_date`, `end_date`, `modify_last_date`, `sorting`, `status`, `created_by`, `created_at`, `created_ip`, `updated_by`, `updated_at`, `updated_ip`) VALUES
(1, 1, 'January - 2019', '2019-01-01', '2019-01-31', '2019-02-10', 1, 2, 1, '2019-04-12 06:16:26', '::1', NULL, '2019-04-12 06:16:26', NULL),
(2, 1, 'Febuary - 2019', '2019-02-01', '2019-02-28', '2019-03-10', 2, 2, 1, '2019-05-14 23:40:38', '::1', NULL, '2019-05-14 23:40:38', NULL),
(3, 1, 'March- 2019', '2019-03-01', '2019-03-31', '2019-04-10', 3, 1, 1, '2019-05-14 23:40:30', '::1', NULL, '2019-05-14 23:40:30', NULL),
(6, 1, 'April-2019', '2019-04-01', '2019-04-30', '2019-05-10', 4, 3, 1, '2019-04-07 05:25:03', '::1', NULL, '2018-11-12 04:38:37', NULL),
(7, 1, 'May-2019', '2019-05-01', '2019-05-31', '2019-06-10', 5, 3, 1, '2019-04-07 05:25:10', '::1', NULL, '2019-02-28 09:31:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setup_days`
--

CREATE TABLE `setup_days` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `title_en` varchar(20) DEFAULT NULL,
  `title_bn` varchar(20) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setup_days`
--

INSERT INTO `setup_days` (`id`, `title_en`, `title_bn`, `position`) VALUES
(1, 'Saturday', 'শনিবার ', 1),
(2, 'Sunday', 'রবিবার ', 2),
(3, 'Monday', 'সোমবার', 3),
(4, 'Tuesday', 'মঙ্গলবার ', 4),
(5, 'Wednesday', 'বুধবার ', 5),
(6, 'Thursday', 'বৃহস্পতিবার ', 6),
(7, 'Friday', 'শুক্রবার', 7);

-- --------------------------------------------------------

--
-- Table structure for table `setup_fixed_time_point`
--

CREATE TABLE `setup_fixed_time_point` (
  `id` int(11) UNSIGNED NOT NULL,
  `day_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `station_id` mediumint(6) UNSIGNED DEFAULT NULL,
  `sub_station_id` mediumint(6) DEFAULT NULL,
  `type` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '1 = program , 2 = news ',
  `content` text COMMENT '{"odivison_id":[{"time":"","title":"","display_position":"","is_recorded":""},{"time":"","title":"","display_position":"","is_recorded":""}],"odivison_id_1":[{"time":"","title":"","display_position":"","is_recorded":""},{"time":"","title":"","display_position":"","is_recorded":""}]}',
  `onurup` text,
  `fixed_onustan_suchy` varchar(100) DEFAULT NULL,
  `torimasik_porikolpona` varchar(100) DEFAULT NULL,
  `bangla_son` varchar(100) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` timestamp NULL DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setup_fixed_time_point`
--

INSERT INTO `setup_fixed_time_point` (`id`, `day_id`, `station_id`, `sub_station_id`, `type`, `content`, `onurup`, `fixed_onustan_suchy`, `torimasik_porikolpona`, `bangla_son`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `is_active`) VALUES
(1, NULL, 2, 12, 1, '[{\"days\":[\"2\",\"5\"],\"time\":\"12:00 am\",\"stability\":\"40\",\"chank\":\"dsfg\",\"biboron\":\"sdfg\",\"comment\":\"sdfg\",\"sorting\":\"1\",\"is_recorded\":true},{\"days\":[\"3\"],\"time\":\"12:00 am\",\"stability\":\"৩\",\"chank\":\"৩\",\"biboron\":\"৩\",\"comment\":\"৩\",\"sorting\":\"2\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"12:10 am\",\"stability\":\"test\",\"chank\":\"1\",\"biboron\":\"1\",\"comment\":\"1\",\"sorting\":\"3\",\"is_recorded\":true}]', '[\"12\",\"13\"]', '1', '1', '১৪২৬', 1, '2019-09-20 12:29:06', '103.60.175.27', 1, '2019-09-22 02:28:13', '203.78.146.21', 0),
(2, NULL, 2, 12, 1, '[{\"days\":[\"1\"],\"time\":\"02:29 pm\",\"stability\":\"\",\"chank\":\"ljklj\",\"biboron\":\"kl;kl;k\",\"comment\":\"\",\"sorting\":\"1\",\"is_recorded\":true},{\"days\":[\"2\",\"4\"],\"time\":\"01:01 pm\",\"stability\":\"\",\"chank\":\"\",\"biboron\":\"\",\"comment\":\"\",\"sorting\":\"\",\"is_recorded\":false},{\"days\":null,\"time\":\"\",\"stability\":\"\",\"chank\":\"\",\"biboron\":\"\",\"comment\":\"\",\"sorting\":\"\",\"is_recorded\":false}]', '[\"13\"]', '1', '1', '১৪২৬', 1, '2019-09-22 00:11:45', '203.78.146.21', 1, '2019-09-22 02:28:17', '203.78.146.21', 0),
(3, NULL, 2, 12, 1, '[{\"days\":[\"1\"],\"time\":\"02:29 pm\",\"stability\":\"\",\"chank\":\"ljklj\",\"biboron\":\"kl;kl;k\",\"comment\":\"\",\"sorting\":\"1\",\"is_recorded\":true},{\"days\":[\"2\",\"4\"],\"time\":\"01:01 pm\",\"stability\":\"\",\"chank\":\"\'\",\"biboron\":\"\",\"comment\":\"\",\"sorting\":\"\",\"is_recorded\":false},{\"days\":null,\"time\":\"\",\"stability\":\"\",\"chank\":\"\",\"biboron\":\"\",\"comment\":\"\",\"sorting\":\"\",\"is_recorded\":false}]', '[\"13\"]', '1', '1', '১৪২৬', 1, '2019-09-22 00:11:45', '203.78.146.21', 1, '2019-09-22 02:28:23', '203.78.146.21', 0),
(4, NULL, 2, 12, 1, '[{\"days\":[\"1\"],\"time\":\"02:29 pm\",\"stability\":\"\",\"chank\":\"ljklj\",\"biboron\":\"kl;kl;k\",\"comment\":\"\",\"sorting\":\"1\",\"is_recorded\":true},{\"days\":[\"2\",\"4\"],\"time\":\"01:01 pm\",\"stability\":\"\",\"chank\":\"\';\';\",\"biboron\":\"\",\"comment\":\"\",\"sorting\":\"\",\"is_recorded\":false},{\"days\":null,\"time\":\"\",\"stability\":\"\",\"chank\":\"\",\"biboron\":\"\",\"comment\":\"\",\"sorting\":\"\",\"is_recorded\":false}]', '[\"13\"]', '1', '1', '১৪২৬', 1, '2019-09-22 00:11:45', '203.78.146.21', 1, '2019-09-22 02:28:29', '203.78.146.21', 0),
(5, NULL, 2, 12, 1, '[{\"days\":[\"8\"],\"time\":\"06:27 am\",\"stability\":\"2\",\"chank\":\"সূচক ধ্বনি\",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"1\",\"is_recorded\":false,\"week\":null,\"description\":\"\",\"projejeno\":\"201903010002\",\"tottabodane\":\"\"},{\"days\":[\"8\"],\"time\":\"06:29 am\",\"stability\":\"1\",\"chank\":\"উদ্বোধনী ঘোষণা\",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"2\",\"is_recorded\":true,\"week\":null,\"description\":\"\",\"projejeno\":\"\",\"tottabodane\":\"201904010004\"},{\"days\":[\"8\"],\"time\":\"06:30 am\",\"stability\":\"15\",\"chank\":\"ধর্মীয় (মুসলিম)\",\"biboron\":\"ক) পবিত্র কোরআন তেলাওয়াত খ) তরজমা গ) পথ ও পাথেয় ঘ) হামদ \\/ নাত\",\"comment\":\"\",\"sorting\":\"3\",\"is_recorded\":false,\"week\":null,\"description\":\"\",\"projejeno\":\"201904010004\",\"tottabodane\":\"\"},{\"days\":[\"1\",\"3\",\"5\"],\"time\":\"06:45 am\",\"stability\":\"5\",\"chank\":\"বাংলা অনুবাদসহ পবিত্র গীতা পাঠ \",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"4\",\"is_recorded\":false},{\"days\":[\"4\",\"6\"],\"time\":\"06:45 am\",\"stability\":\"5\",\"chank\":\"বাংলা অনুবাদসহ পবিত্র ত্রিপিটক পাঠ \",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"5\",\"is_recorded\":true,\"week\":null,\"description\":\"\",\"projejeno\":\"\",\"tottabodane\":\"\"},{\"days\":[\"2\"],\"time\":\"06:45 am\",\"stability\":\"5\",\"chank\":\"বাংলা অনুবাদসহ পবিত্র বাইবেল পাঠ\",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"6\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"06:45 am\",\"stability\":\"5\",\"chank\":\"দেশের গান\\/ জনকল্যাণমূলক বার্তা\\/ স্পট\\/ শ্লোগান\",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"7\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"06:50 am\",\"stability\":\"2\",\"chank\":\"আবহাওয়াবার্তা \",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"8\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"06:52 am\",\"stability\":\"3\",\"chank\":\"অনুষ্ঠান পরিচিতি ও দিনের বিশেষ বেতার অনুষ্ঠানের প্রমো \",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"9\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"06:55 am\",\"stability\":\"4\",\"chank\":\"ভোরের গান\",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"10\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"07:00 am\",\"stability\":\"20\",\"chank\":\"বাংলা সংবাদ \",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"11\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"07:20 am\",\"stability\":\"10\",\"chank\":\"সুখের ঠিকানা\",\"biboron\":\" (জনসংখ্যা, স্বাস্থ্য ও পুষ্টি সেল কর্তৃক প্রযোজিত অনুষ্ঠান)\",\"comment\":\"\",\"sorting\":\"12\",\"is_recorded\":false},{\"days\":[\"1\",\"5\"],\"time\":\"07:30 am\",\"stability\":\"10\",\"chank\":\"শেখ হাসিনার বিশেষ উদ্যোগ\",\"biboron\":\"সরকারের উন্নয়ন কর্মকান্ডের উপর ভিত্তি করে ম্যাগাজিন অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"13\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"07:30 am\",\"stability\":\"15\",\"chank\":\"বঙ্গবন্ধু ও বাংলাদেশ\",\"biboron\":\"বঙ্গবন্ধুর জীবনকর্ম ও      বাংলাদেশ নিয়ে অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"14\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"07:30 am\",\"stability\":\"10\",\"chank\":\"টেকসই উন্নয়নে বাংলাদেশ\",\"biboron\":\" এস ডি জি বিষয়ক উন্নয়নমূলক অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"15\",\"is_recorded\":false},{\"days\":[\"2\"],\"time\":\"07:30 am\",\"stability\":\"10\",\"chank\":\"বিবেকের জাগরণ\",\"biboron\":\"মুক্তিযুদ্ধ, জঙ্গিবাদ ও সমসাময়িক বিষয় নিয়ে ম্যাগাজিন অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"16\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"07:30 am\",\"stability\":\"10\",\"chank\":\"আমার বাংলা ভাষা\",\"biboron\":\" শুদ্ধ বাংলা ভাষা চর্চা বিষয়ক অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"17\",\"is_recorded\":false},{\"days\":[\"4\"],\"time\":\"07:30 am\",\"stability\":\"10\",\"chank\":\"মননে মুক্তিযুদ্ধ\",\"biboron\":\"মুক্তিযুদ্ধ বিষয়ক ম্যাগাজিন অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"18\",\"is_recorded\":false},{\"days\":[\"4\"],\"time\":\"07:30 am\",\"stability\":\"10\",\"chank\":\"ইতহিাস কথা কয়\",\"biboron\":\"স্বাধীনবাংলা বতোর কন্দ্রেরে ইতহিাস ও অনুষ্ঠানমালা নয়িে প্রচারতি অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"19\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"3\"],\"time\":\"07:40 am\",\"stability\":\"10\",\"chank\":\" বজ্রকন্ঠ\",\"biboron\":\"বঙ্গবন্ধুর কালজয়ী  ভাষণ নিয়ে বিশ্লেষণধর্মী আলোচনা\",\"comment\":\"\",\"sorting\":\"20\",\"is_recorded\":false},{\"days\":[\"4\",\"5\",\"6\"],\"time\":\"07:40 am\",\"stability\":\"10\",\"chank\":\"বঙ্গবন্ধুর স্বপ্ন ও বাংলাদেশ\",\"biboron\":\"নতুন প্রজন্মের চোখে বঙ্গবন্ধুর আর্দশ ও চেতনার উপর ভিত্তি করে অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"21\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"07:45 am\",\"stability\":\"5\",\"chank\":\"দুর্নীতির বিরুদ্ধে অনুষ্ঠান\",\"biboron\":\"দূর্নীতির বিরুদ্ধে জিরো টলারেন্স বিষয়ক বার্তা।\",\"comment\":\"\",\"sorting\":\"22\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"07:50 am\",\"stability\":\"10\",\"chank\":\"কৃষি সমাচার\",\"biboron\":\"(কৃষি বিষয়ক কার্যক্রম প্রযোজিত অনুষ্ঠান)\",\"comment\":\"\",\"sorting\":\"23\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"08:00 am\",\"stability\":\"10\",\"chank\":\"ইংরেজী সংবাদ\",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"24\",\"is_recorded\":false},{\"days\":[\"2\",\"3\",\"4\",\"5\"],\"time\":\"08:10 am\",\"stability\":\"5\",\"chank\":\"শতবর্ষে পিতা\",\"biboron\":\"বঙ্গবন্ধু প্রদত্ত ভাষণ, বঙ্গবন্ধুকে নিয়ে গান, কবিতা, সাক্ষাৎকার নিয়ে অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"25\",\"is_recorded\":false},{\"days\":[\"1\",\"6\"],\"time\":\"08:10 am\",\"stability\":\"5\",\"chank\":\"বিশ্ব নেত্রীবৃন্দের চোখে বঙ্গবন্ধ\",\"biboron\":\"জাতির পিতা বঙ্গবন্ধু সম্পর্কে বিশ্ব নেতৃত্বের ভাবনা নিয়ে গ্রন্থিত অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"26\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"08:10 am\",\"stability\":\"5\",\"chank\":\"এ সপ্তাহের গান\",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"26\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"08:15 am\",\"stability\":\"15\",\"chank\":\"সেরা গল্প\",\"biboron\":\"প্রখ্যাত সাহিত্যিকদের গল্প নিয়ে অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"27\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"08:15 am\",\"stability\":\"15\",\"chank\":\"সেই আমি এই আমি  \",\"biboron\":\"গান, নাটক, চলচ্চিত্র, সাহিত্য অঙ্গন অথবা দেশের সিনিয়র সিটিজেন\\/ সেলিব্রেটি\\/প্রথিতযশা ব্যক্তিদের  সাক্ষাতকারভিত্তিক স্মৃতিচারণমূলক অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"28\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"time\":\"08:15 am\",\"stability\":\"15\",\"chank\":\"ভক্তিমূলক নজরুল সঙ্গীত \",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"29\",\"is_recorded\":false},{\"days\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"],\"time\":\"08:30 am\",\"stability\":\"30\",\"chank\":\" দর্পণ   \",\"biboron\":\" জাতীয় ঐতিহ্য, শিল্প ও সংস্কৃতিবিষয়ক ম্যাগাজিন অনুষ্ঠান \",\"comment\":\"\",\"sorting\":\"30\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"08:30 am\",\"stability\":\"25\",\"chank\":\"ধরিত্রী কথা \",\"biboron\":\"জলবায়ু-পরিবেশ ও বিজ্ঞান-প্রযুক্তি বিষয়ক ম্যাগাজিন অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"31\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"08:55 am\",\"stability\":\"5\",\"chank\":\"উন্নয়ন বার্তা \",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"32\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"09:00 am\",\"stability\":\"5\",\"chank\":\"বাংলা সংবাদ \",\"biboron\":\"-\",\"comment\":\"\",\"sorting\":\"33\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"09:05 am\",\"stability\":\"55\",\"chank\":\" কলকাকলী \",\"biboron\":\" শিশু-কিশোরদের জন্য অনুষ্ঠান \",\"comment\":\"\",\"sorting\":\"34\",\"is_recorded\":false},{\"days\":[\"1\",\"4\",\"6\"],\"time\":\"09:05 am\",\"stability\":\"30\",\"chank\":\"সংগীত\",\"biboron\":\"সংগীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"35\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"09:05 am\",\"stability\":\"30\",\"chank\":\"জ্ঞান-পিপাসু\",\"biboron\":\"মাধ্যমিক স্কুলের ছাত্র-ছাত্রীদের  অংশগ্রহনে কুইজ বিতর্ক প্রতিযোগিতা। \",\"comment\":\"\",\"sorting\":\"36\",\"is_recorded\":false},{\"days\":[\"2\",\"3\"],\"time\":\"09:05 am\",\"stability\":\"30\",\"chank\":\"গানের আসর\",\"biboron\":\" শ্রোতাদের ভোটে নির্বাচিত শ্রেষ্ঠ গানের গ্রন্থিত অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"37\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"09:05 am\",\"stability\":\"20\",\"chank\":\"মন ছুটে যায়\",\"biboron\":\"ভ্রমণ ও পর্যটন বিষয়ক অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"38\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"09:25 am\",\"stability\":\"10\",\"chank\":\"সংগীত \",\"biboron\":\"সংগীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"39\",\"is_recorded\":false},{\"days\":[\"1\",\"2\"],\"time\":\"09:35 am\",\"stability\":\"10\",\"chank\":\"সংগীত \",\"biboron\":\"সংগীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"40\",\"is_recorded\":false},{\"days\":[\"3\",\"4\",\"6\"],\"time\":\"09:35 am\",\"stability\":\"25\",\"chank\":\"অগ্রযাত্রা\",\"biboron\":\" বাংলাদেশের উন্নয়ন নিয়ে প্রচারনামূলক অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"41\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"09:35 am\",\"stability\":\"10\",\"chank\":\"জনতার বঙ্গবন্ধু\",\"biboron\":\" বঙ্গবন্ধুকে নিয়ে জন সাধারণের ভাবনা নিয়ে প্রামান্য অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"42\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"09:35 am\",\"stability\":\"10\",\"chank\":\" চলমান মাইক্রোফোন\",\"biboron\":\"স্পট রিপোটিং \",\"comment\":\"\",\"sorting\":\"43\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"09:45 am\",\"stability\":\"15\",\"chank\":\"শিশুতোষ \",\"biboron\":\"শিশুতোষ নাটক\",\"comment\":\"\",\"sorting\":\"44\",\"is_recorded\":false},{\"days\":[\"2\",\"5\"],\"time\":\"09:45 am\",\"stability\":\"10\",\"chank\":\"সংগীত \",\"biboron\":\"সংগীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"45\",\"is_recorded\":false},{\"days\":[\"2\",\"5\"],\"time\":\"09:55 am\",\"stability\":\"5\",\"chank\":\"দেশের গান\\/ জনকল্যাণমূলক বার্তা\\/ স্পট\\/ স্লোগান\",\"biboron\":\"দেশের গান\\/ জনকল্যাণমূলক বার্তা\\/ স্পট\\/ স্লোগান\",\"comment\":\"\",\"sorting\":\"46\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"10:00 am\",\"stability\":\"5\",\"chank\":\"বাংলা  \",\"biboron\":\"বাংলা সংবাদ \",\"comment\":\"\",\"sorting\":\"47\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"3\",\"4\",\"6\"],\"time\":\"10:05 am\",\"stability\":\"15\",\"chank\":\"সংগীত\",\"biboron\":\" (বুকিং)(লঘু সুরে যন্ত্র সঙ্গীত)\",\"comment\":\"\",\"sorting\":\"48\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"10:05 am\",\"stability\":\"15\",\"chank\":\"হারানো সুর\",\"biboron\":\"দেশীয় বাদ্যযন্দ্র ব্যবহার করে সাক্ষাৎকার ভিত্তিক লোক গানের অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"49\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"10:05 am\",\"stability\":\"10\",\"chank\":\"সাপ্তাহিক \",\"biboron\":\"সাপ্তাহিক পরিক্রমা\",\"comment\":\"\",\"sorting\":\"50\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"10:15 am\",\"stability\":\"45\",\"chank\":\"মীনা ফোনো  \",\"biboron\":\"মীনা ফোনো লাইভ অনুষ্ঠান (১ম অংশ) \",\"comment\":\"\",\"sorting\":\"51\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"10:15 am\",\"stability\":\"5\",\"chank\":\"দেশের গান\",\"biboron\":\"দেশের গান\",\"comment\":\"\",\"sorting\":\"52\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"time\":\"10:20 am\",\"stability\":\"40\",\"chank\":\"সংগীত\",\"biboron\":\"সংগীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"53\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"10:20 am\",\"stability\":\"10\",\"chank\":\"সংগীত\",\"biboron\":\"সংগীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"54\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"10:30 am\",\"stability\":\"30\",\"chank\":\"সংগীত\",\"biboron\":\"সংগীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"55\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"11:00 am\",\"stability\":\"5\",\"chank\":\"বাংলা সংবাদ \",\"biboron\":\"বাংলা সংবাদ \",\"comment\":\"\",\"sorting\":\"56\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"11:05 am\",\"stability\":\"15\",\"chank\":\"মীনা ফোনো\",\"biboron\":\"মীনা ফোনো লাইভ অনুষ্ঠান (২য়অংশ)\",\"comment\":\"\",\"sorting\":\"57\",\"is_recorded\":false},{\"days\":[\"2\",\"3\",\"4\",\"5\",\"6\"],\"time\":\"11:05 am\",\"stability\":\"25\",\"chank\":\"সংগীত\",\"biboron\":\"সংগীত : (বুকিং)\",\"comment\":\"\",\"sorting\":\"58\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"11:05 am\",\"stability\":\"25\",\"chank\":\" কৈশোরের কলরব \",\"biboron\":\" কৈশোরের অগ্রদূত বেতার শ্রোতাক্লাবের (এআরএলসি) অংশগ্রহণে গোষ্ঠীভিত্তিক অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"59\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"11:05 am\",\"stability\":\"25\",\"chank\":\"ঐকতান \",\"biboron\":\" গোষ্ঠীভিত্তিক অনুষ্ঠান \",\"comment\":\"\",\"sorting\":\"60\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"11:05 am\",\"stability\":\"25\",\"chank\":\"দৃপ্ত শপথ \",\"biboron\":\" বিএনসিসি’র অনুষ্ঠান \",\"comment\":\"\",\"sorting\":\"61\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"11:20 am\",\"stability\":\"10\",\"chank\":\"সংগীত )\",\"biboron\":\"সংগীত : (বুকিং)\",\"comment\":\"\",\"sorting\":\"62\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"time\":\"11:30 am\",\"stability\":\"30\",\"chank\":\"স্বাস্থ্যই সুখের মূল\",\"biboron\":\"জনসংখ্যা কার্যক্রম প্রযোজিত অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"63\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"11:30 am\",\"stability\":\"10\",\"chank\":\"সংগীত\",\"biboron\":\"সংগীত\",\"comment\":\"\",\"sorting\":\"64\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"11:40 am\",\"stability\":\"10\",\"chank\":\"সংগীত\",\"biboron\":\"সংগীত\",\"comment\":\"\",\"sorting\":\"65\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"11:50 am\",\"stability\":\"10\",\"chank\":\"ভক্তিমূলক \",\"biboron\":\"ভক্তিমূলক গান\",\"comment\":\"\",\"sorting\":\"66\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"12:00 pm\",\"stability\":\"5\",\"chank\":\"বাংলা সংবাদ\",\"biboron\":\"বাংলা সংবাদ\",\"comment\":\"\",\"sorting\":\"67\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"12:05 pm\",\"stability\":\"5\",\"chank\":\"আবহাওয়া বার্তা\",\"biboron\":\"আবহাওয়া বার্তা\",\"comment\":\"\",\"sorting\":\"68\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"12:10 pm\",\"stability\":\"122\",\"chank\":\"বিরতী\",\"biboron\":\"বিরতী\",\"comment\":\"\",\"sorting\":\"69\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"02:12 pm\",\"stability\":\"2\",\"chank\":\"সূচক ধ্বনি\",\"biboron\":\" ধ্বনি\",\"comment\":\"\",\"sorting\":\"70\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"02:14 pm\",\"stability\":\"1\",\"chank\":\"উদ্বোধনী ঘোষণা\",\"biboron\":\"ঘোষণা\",\"comment\":\"\",\"sorting\":\"71\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"02:15 pm\",\"stability\":\"5\",\"chank\":\"অনুষ্ঠান পরিচিতি\",\"biboron\":\"অনুষ্ঠান পরিচিতি\\/হাইলাইটস\\/আবহাওয়া বার্তা\\/যন্ত্রসঙ্গীত\\/ জনকল্যানমূলক স্পট\\/ স্লোগান\",\"comment\":\"\",\"sorting\":\"72\",\"is_recorded\":false},{\"days\":[\"2\"],\"time\":\"02:20 pm\",\"stability\":\"40\",\"chank\":\"সময়ের কথন\",\"biboron\":\"সমসাময়িক গুরুত্বপূর্ণ বিষয়ে ফোন-ইন\\/আলোচনা অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"73\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"02:20 pm\",\"stability\":\"40\",\"chank\":\"রোগ জিজ্ঞাসা\",\"biboron\":\"স্বাস্থ্য বিষয়ক ফোন-ইন অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"74\",\"is_recorded\":false},{\"days\":[\"4\"],\"time\":\"02:20 pm\",\"stability\":\"40\",\"chank\":\"মহানায়কের কাব্যগাঁথা\",\"biboron\":\"বঙ্গবন্ধুর জীবন ও কর্ম নিয়ে ফোন-ইন- অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"75\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"3\",\"5\",\"6\",\"7\"],\"time\":\"02:20 pm\",\"stability\":\"40\",\"chank\":\" প্রিয় কথা প্রিয় গান\",\"biboron\":\"সংগীত বিষয়ক ফোন ইন অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"76\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"02:20 pm\",\"stability\":\"40\",\"chank\":\"ডিজিটাল বাংলাদেশ ও জনগণের দোরগোড়ায় সেবা\",\"biboron\":\"বাংলাদেশ বেতার ও এ টু আই প্রোগ্রামের মধ্যে সমঝোতা স্মারকের বিশেষ ফোন-ইন অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"77\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"02:20 pm\",\"stability\":\"40\",\"chank\":\"জীবন তথ্য \",\"biboron\":\"এফ এফ এল এর ফোন ইন অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"78\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"02:20 pm\",\"stability\":\"40\",\"chank\":\"হাত বাড়ালেই বন্ধু\",\"biboron\":\" প্রতিবন্ধী\\/অটিস্টিকদের সমস্যা ও সমাধান নিয়ে ফোন-ইন অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"79\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"02:20 pm\",\"stability\":\"20\",\"chank\":\"সঙ্গীত\",\"biboron\":\"সঙ্গীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"80\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"02:20 pm\",\"stability\":\"30\",\"chank\":\"সঙ্গীত\",\"biboron\":\"সঙ্গীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"81\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"02:20 pm\",\"stability\":\"40\",\"chank\":\"সঙ্গীত\",\"biboron\":\"সঙ্গীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"82\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"02:20 pm\",\"stability\":\"30\",\"chank\":\"আমরাও পারি\",\"biboron\":\"প্রতিবন্ধীদের নিয়ে গোষ্ঠীভিত্তিক অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"83\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"02:20 pm\",\"stability\":\"30\",\"chank\":\"প্রজম্ম কন্ঠ \",\"biboron\":\"তরুনদের অংশগ্রহণে অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"84\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"02:40 pm\",\"stability\":\"20\",\"chank\":\"প্রজন্মের চোখে বঙ্গবন্ধু\",\"biboron\":\"কলেজ-বিশ্ববিদ্যালয়ের ছাত্রছাত্রীদের অংশগ্রহণে বঙ্গবন্ধুকে নিয়ে অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"85\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"02:50 pm\",\"stability\":\"10\",\"chank\":\"সঙ্গীত\",\"biboron\":\"সঙ্গীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"86\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"03:00 pm\",\"stability\":\"5\",\"chank\":\"বাংলা \",\"biboron\":\"বাংলা সংবাদ\",\"comment\":\"\",\"sorting\":\"87\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"03:05 pm\",\"stability\":\"55\",\"chank\":\"এ সপ্তাহের নাটক\",\"biboron\":\"এ সপ্তাহের নাটক\",\"comment\":\"\",\"sorting\":\"88\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"03:05 pm\",\"stability\":\"25\",\"chank\":\" সুরঞ্জনা\",\"biboron\":\"কবিতা  আবৃত্তির অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"89\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"03:05 pm\",\"stability\":\"25\",\"chank\":\"কবিতা ও সাহিত্যে তুমি\",\"biboron\":\"বঙ্গবন্ধুকে নিয়ে রচিত কবিতা ও সাহিত্য বিষয়ক অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"90\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"03:05 pm\",\"stability\":\"25\",\"chank\":\"সাহিত্য প্রসঙ্গ\",\"biboron\":\"সাহিত্য বিষয়ক ম্যাগাজিন অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"91\",\"is_recorded\":false},{\"days\":[\"2\",\"3\",\"5\",\"6\"],\"time\":\"03:05 pm\",\"stability\":\"40\",\"chank\":\"এসো গড়ি ছোট পরিবার\",\"biboron\":\"জনসংখ্যা কার্যক্রম       প্রযোজিত অনুষ্ঠান \",\"comment\":\"\",\"sorting\":\"92\",\"is_recorded\":false},{\"days\":[\"4\"],\"time\":\"03:05 pm\",\"stability\":\"40\",\"chank\":\"এসো গড়ি ছোট পরিবার \",\"biboron\":\"জনসংখ্যা কার্যক্রম  প্রযোজিত ফোন-ইন অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"93\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"03:30 pm\",\"stability\":\"30\",\"chank\":\"আপনার স্বাস্থ্য\",\"biboron\":\" স্বাস্থ্য বিষয়ক ম্যাগাজিন অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"94\",\"is_recorded\":false},{\"days\":[\"3\",\"4\",\"5\"],\"time\":\"03:45 pm\",\"stability\":\"15\",\"chank\":\"নারীকণ্ঠ\",\"biboron\":\" মহিলাদের জন্য অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"95\",\"is_recorded\":false},{\"days\":[\"2\",\"6\"],\"time\":\"03:45 pm\",\"stability\":\"10\",\"chank\":\"সংগীত \",\"biboron\":\"সংগীত : (বুকিং)\",\"comment\":\"\",\"sorting\":\"96\",\"is_recorded\":false},{\"days\":[\"2\",\"6\"],\"time\":\"03:55 pm\",\"stability\":\"5\",\"chank\":\"উন্নয়নমূলক গান\\/ জনকল্যাণমূলক স্পট\\/ স্লোাগান\",\"biboron\":\"উন্নয়নমূলক গান\\/ জনকল্যাণমূলক স্পট\\/ স্লোাগান\",\"comment\":\"\",\"sorting\":\"97\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"04:00 pm\",\"stability\":\"5\",\"chank\":\"বাংলা সংবাদ\",\"biboron\":\"বাংলা সংবাদ\",\"comment\":\"\",\"sorting\":\"98\",\"is_recorded\":false},{\"days\":[\"4\",\"5\",\"6\"],\"time\":\"04:05 pm\",\"stability\":\"30\",\"chank\":\"অন্ধকারের চোরাগলি\",\"biboron\":\"মাদকবিরোধী ম্যাগাজিন অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"99\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"04:05 pm\",\"stability\":\"10\",\"chank\":\"তথ্য অধিকার আইন\",\"biboron\":\"তথ্য অধিকার আইন\",\"comment\":\"\",\"sorting\":\"100\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"04:05 pm\",\"stability\":\"20\",\"chank\":\"তারুন্যের শক্তি বাংলাদেশের সমৃদ্ধি\",\"biboron\":\"তরুন-যুবসমাজকে দক্ষ জনশক্তিতে রুপান্তর ও কর্মসংস্থানের নিশ্চয়তা নিয়ে অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"101\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"04:05 pm\",\"stability\":\"30\",\"chank\":\"কলধ্বনি\",\"biboron\":\" শিশু শিল্পীদের অংশগ্রহণে গানের অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"102\",\"is_recorded\":false},{\"days\":[\"2\"],\"time\":\"04:05 pm\",\"stability\":\"40\",\"chank\":\"ইসলাম ও জীবন\",\"biboron\":\"ফোন ইন-অনুষ্ঠান \",\"comment\":\"\",\"sorting\":\"103\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"04:15 pm\",\"stability\":\"20\",\"chank\":\"সংগীত \",\"biboron\":\"সংগীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"104\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"04:25 pm\",\"stability\":\"20\",\"chank\":\"সংগীত \",\"biboron\":\"সংগীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"105\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"04:35 pm\",\"stability\":\"15\",\"chank\":\"হেরার জ্যোতি \",\"biboron\":\"হেরার জ্যোতি \",\"comment\":\"\",\"sorting\":\"106\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"04:35 pm\",\"stability\":\"10\",\"chank\":\"আমি নারী আমি পারি\",\"biboron\":\"মহলিাদরে ম্যাগাজনি অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"107\",\"is_recorded\":false},{\"days\":[\"3\",\"4\",\"5\",\"6\"],\"time\":\"04:35 pm\",\"stability\":\"20\",\"chank\":\"সঙ্গীত  \",\"biboron\":\"সঙ্গীত: (বুকিং) \",\"comment\":\"\",\"sorting\":\"108\",\"is_recorded\":false},{\"days\":[\"2\"],\"time\":\"04:45 pm\",\"stability\":\"10\",\"chank\":\"সঙ্গীত  \",\"biboron\":\"সঙ্গীত: (বুকিং) \",\"comment\":\"\",\"sorting\":\"109\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"04:45 pm\",\"stability\":\"10\",\"chank\":\"আমার গ্রাম আমার শহর\",\"biboron\":\"প্রতিটি গ্রামে আধুনিক সুবিধা সম্প্রসারণ বিষয়ে প্রামান্য প্রতিবেদন।\",\"comment\":\"\",\"sorting\":\"110\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"04:50 pm\",\"stability\":\"5\",\"chank\":\"দেশের গান\",\"biboron\":\"দেশের গান\",\"comment\":\"\",\"sorting\":\"111\",\"is_recorded\":false},{\"days\":[\"1\",\"2\"],\"time\":\"04:55 pm\",\"stability\":\"5\",\"chank\":\"সময় হলো তথ্য জানার\",\"biboron\":\"তথ্য অধিকার বিষয়ক গান, কথিকা, প্রামাণ্য, স্পট\",\"comment\":\"\",\"sorting\":\"112\",\"is_recorded\":false},{\"days\":[\"3\",\"4\",\"5\"],\"time\":\"04:55 pm\",\"stability\":\"5\",\"chank\":\"সময় হলো তথ্য জানার\",\"biboron\":\" জঙ্গীবাদ ও সন্ত্রাস বিরোধী গান, কথিকা, প্রামাণ্য, স্পট\",\"comment\":\"\",\"sorting\":\"113\",\"is_recorded\":false},{\"days\":[\"6\",\"7\"],\"time\":\"04:55 pm\",\"stability\":\"5\",\"chank\":\"সময় হলো তথ্য জানার\",\"biboron\":\"মাদক বিরোধী তথ্য, গান, কথিকা, প্রামাণ্য, স্পট\",\"comment\":\"\",\"sorting\":\"114\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"05:00 pm\",\"stability\":\"5\",\"chank\":\"ইংরেজী সংবাদ\",\"biboron\":\"ইংরেজী সংবাদ\",\"comment\":\"\",\"sorting\":\"115\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"05:05 pm\",\"stability\":\"5\",\"chank\":\"বাণিজ্যিক সংবাদ\",\"biboron\":\"বাণিজ্যিক সংবাদ\",\"comment\":\"\",\"sorting\":\"116\",\"is_recorded\":false},{\"days\":[\"2\",\"3\",\"4\"],\"time\":\"05:10 pm\",\"stability\":\"20\",\"chank\":\"শিক্ষার্থীদের আসর\",\"biboron\":\"বিদ্যালয়ের ছাত্র-ছাত্রীদের জন্য  অনুষ্ঠান। \",\"comment\":\"\",\"sorting\":\"117\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"05:10 pm\",\"stability\":\"30\",\"chank\":\"সালগিত্তাল\",\"biboron\":\"গারোদের জন্য অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"118\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"05:10 pm\",\"stability\":\"30\",\"chank\":\"লেওয়া টানা\",\"biboron\":\"হাজংদের জন্য অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"119\",\"is_recorded\":false},{\"days\":[\"1\",\"6\"],\"time\":\"05:10 pm\",\"stability\":\"20\",\"chank\":\"সঙ্গীত\",\"biboron\":\"সঙ্গীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"120\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"05:10 pm\",\"stability\":\"20\",\"chank\":\"মনে রেখো মোর গান\",\"biboron\":\"ধ্রুপদী আধুনিক বাংলা গান নিয়ে অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"121\",\"is_recorded\":false},{\"days\":[\"1\",\"2\"],\"time\":\"05:30 pm\",\"stability\":\"10\",\"chank\":\"আরবী শিক্ষার আসর\",\"biboron\":\"আরবী শিক্ষার আসর\",\"comment\":\"\",\"sorting\":\"122\",\"is_recorded\":false},{\"days\":[\"3\",\"4\",\"6\"],\"time\":\"05:30 pm\",\"stability\":\"10\",\"chank\":\"লেট আস স্পিক ইংলিশ\",\"biboron\":\"লেট আস স্পিক ইংলিশ\",\"comment\":\"\",\"sorting\":\"123\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"05:30 pm\",\"stability\":\"10\",\"chank\":\"সংগীত \",\"biboron\":\"সংগীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"124\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"05:40 pm\",\"stability\":\"5\",\"chank\":\"সংগীত\",\"biboron\":\"তথ্য অধিকার বিষয়ক \",\"comment\":\"\",\"sorting\":\"125\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"05:45 pm\",\"stability\":\"5\",\"chank\":\"কথিকা \\/ বার্ষিকী\\/ সাধারণ কথিকা\\/সংগীত\",\"biboron\":\"কথিকা \\/ বার্ষিকী\\/ সাধারণ কথিকা\\/সংগীত\",\"comment\":\"\",\"sorting\":\"126\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"time\":\"05:50 pm\",\"stability\":\"10\",\"chank\":\"সঙ্গীত \",\"biboron\":\"সঙ্গীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"127\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"05:50 pm\",\"stability\":\"10\",\"chank\":\"সবুজ প্রান্তর\",\"biboron\":\"কৃষি বিষয়ক কার্যক্রম প্রযোজিত অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"128\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"06:00 pm\",\"stability\":\"5\",\"chank\":\"বাংলা সংবাদ\",\"biboron\":\"বাংলা সংবাদ\",\"comment\":\"\",\"sorting\":\"129\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"time\":\"06:05 pm\",\"stability\":\"30\",\"chank\":\"সোনালী ফসল\",\"biboron\":\"কৃষি বিষয়ক কার্যক্রম প্রযোজিত অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"130\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"06:05 pm\",\"stability\":\"30\",\"chank\":\"কৃষাণবধু\",\"biboron\":\"কৃষি বিষয়ক কার্যক্রম প্রযোজিত অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"131\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"4\",\"5\",\"6\"],\"time\":\"06:35 pm\",\"stability\":\"15\",\"chank\":\" সংগীত \",\"biboron\":\" সংগীত : (বুকিং)\",\"comment\":\"\",\"sorting\":\"132\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"06:35 pm\",\"stability\":\"15\",\"chank\":\"আহকামুল কোরআন\",\"biboron\":\"পবত্রি কোরআনে  ইসলামরে বধি-িবধিান সংক্রান্ত আয়াতসমূহরে বশ্লিষেণমূলক অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"133\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"06:35 pm\",\"stability\":\"15\",\"chank\":\"সার্ক সংবাদ\",\"biboron\":\"সার্ক সংবাদ\",\"comment\":\"\",\"sorting\":\"134\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"06:50 pm\",\"stability\":\"5\",\"chank\":\"আবহাওয়াবার্তা\\/ কর্ম-কমিশনের বিজ্ঞপ্তি\\/ জাতীয় অনুষ্ঠান সম্পর্কিত ঘোষণা\\/ হারানো বিজ্ঞপ্তি\",\"biboron\":\"আবহাওয়াবার্তা\\/ কর্ম-কমিশনের বিজ্ঞপ্তি\\/ জাতীয় অনুষ্ঠান সম্পর্কিত ঘোষণা\\/ হারানো বিজ্ঞপ্তি\",\"comment\":\"\",\"sorting\":\"135\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"06:55 pm\",\"stability\":\"5\",\"chank\":\"নিজস্ব অনুষ্ঠান পরিচিতি\\/দেশের গান\\/যন্ত্র সংগীত\",\"biboron\":\"নিজস্ব অনুষ্ঠান পরিচিতি\\/দেশের গান\\/যন্ত্র সংগীত\",\"comment\":\"\",\"sorting\":\"136\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"07:00 pm\",\"stability\":\"5\",\"chank\":\"স্থানীয় বাংলা সংবাদ \",\"biboron\":\"স্থানীয় বাংলা সংবাদ \",\"comment\":\"\",\"sorting\":\"137\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"4\",\"5\",\"6\",\"7\"],\"time\":\"07:05 pm\",\"stability\":\"25\",\"chank\":\"দেশ আমার মাটি আমার\",\"biboron\":\"কৃষি বিষয়ক কার্যক্রম  প্রযোজিত জাতীয় অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"138\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"07:05 pm\",\"stability\":\"85\",\"chank\":\"জলসা \",\"biboron\":\"দর্শকদের  উপস্থিতিতে  বিশেষ সংগীতানুষ্ঠান\\/ নাটমন্ডল\\/যাত্রা  (সজীব)\",\"comment\":\"\",\"sorting\":\"139\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"7\"],\"time\":\"07:30 pm\",\"stability\":\"35\",\"chank\":\"দুর্বার\",\"biboron\":\" সৈনিক ভাইদের জন্য জাতীয় অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"140\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"4\",\"5\",\"6\",\"7\"],\"time\":\"08:05 pm\",\"stability\":\"5\",\"chank\":\"খেলাধুলার সংবাদ\",\"biboron\":\"খেলাধুলার সংবাদ\",\"comment\":\"\",\"sorting\":\"141\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"4\",\"5\",\"6\"],\"time\":\"08:10 pm\",\"stability\":\"20\",\"chank\":\"সুখী সংসার\",\"biboron\":\"জনসংখ্যা কার্যক্রম প্রযোজিত অনুষ্ঠান \",\"comment\":\"\",\"sorting\":\"142\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"08:10 pm\",\"stability\":\"20\",\"chank\":\"ই-সমীপেষু\",\"biboron\":\"ই-সমীপেষু\",\"comment\":\"\",\"sorting\":\"143\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"08:30 pm\",\"stability\":\"20\",\"chank\":\"বাংলা সংবাদ \",\"biboron\":\"বাংলা সংবাদ \",\"comment\":\"\",\"sorting\":\"144\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"08:50 pm\",\"stability\":\"5\",\"chank\":\"বাংলা সংবাদ পর্যালোচনা \",\"biboron\":\"বাংলা সংবাদ পর্যালোচনা\",\"comment\":\"\",\"sorting\":\"145\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"08:55 pm\",\"stability\":\"10\",\"chank\":\"জাতীয় অনুষ্ঠান \\/ দেশের গান \",\"biboron\":\"জাতীয় অনুষ্ঠান \\/ দেশের গান \",\"comment\":\"\",\"sorting\":\"146\",\"is_recorded\":false},{\"days\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"7\"],\"time\":\"09:05 pm\",\"stability\":\"25\",\"chank\":\"উত্তরণ\",\"biboron\":\"রেডিও ম্যাগাজিন (শিল্প, সাহিত্য, সংস্কৃতি ও সমসাময়িক প্রসংগ নিয়ে সাজানো  ম্যাগাজিন)\",\"comment\":\"\",\"sorting\":\"147\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"09:05 pm\",\"stability\":\"25\",\"chank\":\"সমীপেষু\",\"biboron\":\"শ্রোতাদের চিঠিপত্রের জবাবের অনুষ্ঠান \",\"comment\":\"\",\"sorting\":\"148\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"09:30 pm\",\"stability\":\"10\",\"chank\":\"ইংরেজী সংবাদ \",\"biboron\":\"ইংরেজী সংবাদ \",\"comment\":\"\",\"sorting\":\"149\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"09:40 pm\",\"stability\":\"5\",\"chank\":\"ইংরেজী সংবাদ পর্যালোচনা\",\"biboron\":\"ইংরেজী সংবাদ পর্যালোচনা\",\"comment\":\"\",\"sorting\":\"150\",\"is_recorded\":false},{\"days\":[\"1\",\"3\",\"4\",\"5\",\"7\"],\"time\":\"09:45 pm\",\"stability\":\"15\",\"chank\":\"সংবাদ প্রবাহ \",\"biboron\":\"সংবাদ প্রবাহ \",\"comment\":\"\",\"sorting\":\"151\",\"is_recorded\":false},{\"days\":[\"2\"],\"time\":\"09:45 pm\",\"stability\":\"15\",\"chank\":\"নিউজরীল\",\"biboron\":\"নিউজরীল\",\"comment\":\"\",\"sorting\":\"152\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"09:45 pm\",\"stability\":\"10\",\"chank\":\"ইংরেজী সংবাদ সমীক্ষা \",\"biboron\":\"ইংরেজী সংবাদ সমীক্ষা \",\"comment\":\"\",\"sorting\":\"153\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"09:55 pm\",\"stability\":\"5\",\"chank\":\"মেগা প্রজেক্ট সমূহের উন্নয়ন অগ্রগতি প্রতিবেদন\",\"biboron\":\"মেগা প্রজেক্ট সমূহের উন্নয়ন অগ্রগতি প্রতিবেদন\",\"comment\":\"\",\"sorting\":\"154\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"10:00 pm\",\"stability\":\"15\",\"chank\":\"কবিতায় বঙ্গবন্ধু\",\"biboron\":\"ট্রান্সক্রিপশন সার্ভিস র্কতৃক সরবরাহকৃত।\",\"comment\":\"\",\"sorting\":\"155\",\"is_recorded\":false},{\"days\":[\"2\"],\"time\":\"10:00 pm\",\"stability\":\"60\",\"chank\":\"নিবেদন\",\"biboron\":\"শ্রোতাদের অনুরোধের গান নিয়ে অনুষ্ঠান \",\"comment\":\"\",\"sorting\":\"156\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"10:00 pm\",\"stability\":\"30\",\"chank\":\"রবিস্বর\",\"biboron\":\"নির্বাচিত রবীন্দ্র সংগীতেরগবেষণামূলক গ্রন্থিত অনুষ্ঠান। \",\"comment\":\"\",\"sorting\":\"157\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"10:00 pm\",\"stability\":\"20\",\"chank\":\"সেতু\",\"biboron\":\"শ্রোতা ক্লাব ভিত্তিক ম্যাগাজিন অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"158\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"10:00 pm\",\"stability\":\"30\",\"chank\":\"সংগীত \",\"biboron\":\"সংগীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"159\",\"is_recorded\":false},{\"days\":[\"4\"],\"time\":\"10:00 pm\",\"stability\":\"5\",\"chank\":\"বিশ্ব বেতারে বাংলাদেশ \",\"biboron\":\"মনিটরিং পরিদপ্তরের অনু:\",\"comment\":\"\",\"sorting\":\"160\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"10:00 pm\",\"stability\":\"5\",\"chank\":\"বাংলাদেশ ইন ওয়ার্ল্ড রেডিও\",\"biboron\":\"মনিটরিং পরিদপ্তরের অনুষ্ঠান\",\"comment\":\"\",\"sorting\":\"161\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"10:00 pm\",\"stability\":\"30\",\"chank\":\" ক্রীড়াঙ্গন\",\"biboron\":\"খেলাধুলা বিষয়ক ম্যাগাজিন অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"162\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"10:00 pm\",\"stability\":\"30\",\"chank\":\"দোলনচাঁপা\",\"biboron\":\"নির্বাচিত নজরুল সংগীতের  গবেষণামূলক বৈঠকী অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"163\",\"is_recorded\":false},{\"days\":[\"4\"],\"time\":\"10:05 pm\",\"stability\":\"25\",\"chank\":\" বন্ধন\",\"biboron\":\"আন্তঃবেতার সংগীতানুষ্ঠানÑ ট্রান্সক্রিপশন সার্ভিস সরবরাহকৃত।\",\"comment\":\"\",\"sorting\":\"164\",\"is_recorded\":false},{\"days\":[\"4\"],\"time\":\"10:05 pm\",\"stability\":\"25\",\"chank\":\"বিনিময়\",\"biboron\":\"নাট্যানুষ্ঠান (ট্রান্সক্রিপশন সার্ভিস সরবরাহকৃত)\",\"comment\":\"\",\"sorting\":\"165\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"10:05 pm\",\"stability\":\"55\",\"chank\":\"নাটক \",\"biboron\":\"নাটক \",\"comment\":\"\",\"sorting\":\"166\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"10:05 pm\",\"stability\":\"55\",\"chank\":\"যাত্রানুষ্ঠান \",\"biboron\":\"যাত্রানুষ্ঠান \",\"comment\":\"\",\"sorting\":\"167\",\"is_recorded\":false},{\"days\":[\"5\"],\"time\":\"10:05 pm\",\"stability\":\"55\",\"chank\":\"আন্তঃবেতার নাটক \",\"biboron\":\"আন্তঃবেতার নাটক \",\"comment\":\"\",\"sorting\":\"168\",\"is_recorded\":false},{\"days\":[\"4\"],\"time\":\"10:05 pm\",\"stability\":\"25\",\"chank\":\"সঙ্গীত\",\"biboron\":\"সঙ্গীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"169\",\"is_recorded\":false},{\"days\":[\"1\"],\"time\":\"10:15 pm\",\"stability\":\"45\",\"chank\":\"পরানের গান\",\"biboron\":\"আঞ্চলিক গানের অনুষ্ঠান।\",\"comment\":\"\",\"sorting\":\"170\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"10:20 pm\",\"stability\":\"10\",\"chank\":\"সঙ্গীত\",\"biboron\":\"সঙ্গীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"171\",\"is_recorded\":false},{\"days\":[\"3\"],\"time\":\"10:30 pm\",\"stability\":\"30\",\"chank\":\"রূপ- রূপান্তর\",\"biboron\":\"অনুবাদ নির্ভর নাটক\",\"comment\":\"\",\"sorting\":\"172\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"10:30 pm\",\"stability\":\"15\",\"chank\":\"জীবনের আলো\",\"biboron\":\"জীবনের আলো\",\"comment\":\"\",\"sorting\":\"173\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"10:30 pm\",\"stability\":\"15\",\"chank\":\"হৃদয়ে একাত্তর\",\"biboron\":\"মুক্তিযোদ্ধাদের সাক্ষাৎকার নিয়ে বিশেষ অনুষ্ঠান,  ট্রান্সক্রিপশন সার্ভিস সরবরাহকৃত।\",\"comment\":\"\",\"sorting\":\"174\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"10:30 pm\",\"stability\":\"15\",\"chank\":\"মানুষের গান মাটির গান\",\"biboron\":\"(আঞ্চলিক গানের অনুষ্ঠান) ট্রান্সক্রিপশন সার্ভিস সরবরাহকৃত।\",\"comment\":\"\",\"sorting\":\"175\",\"is_recorded\":false},{\"days\":[\"4\"],\"time\":\"10:30 pm\",\"stability\":\"30\",\"chank\":\"সঙ্গীত\",\"biboron\":\"সঙ্গীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"176\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"10:30 pm\",\"stability\":\"15\",\"chank\":\"এই আমার দেশ\",\"biboron\":\"(লোক সংস্কৃতি বিষয়ক অনুষ্ঠান )  ট্রান্সক্রিপশন সার্ভিস সরবরাহকৃত।\",\"comment\":\"\",\"sorting\":\"177\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"10:30 pm\",\"stability\":\"15\",\"chank\":\"সুরভী (জনপ্রিয় শিল্পীর একক গানের অনুষ্ঠান)\",\"biboron\":\"ট্রান্সক্রিপশন সার্ভিস সরবরাহকৃত।\",\"comment\":\"\",\"sorting\":\"178\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"10:30 pm\",\"stability\":\"15\",\"chank\":\" সঙ্গীত\",\"biboron\":\" সঙ্গীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"179\",\"is_recorded\":false},{\"days\":[\"6\"],\"time\":\"10:45 pm\",\"stability\":\"15\",\"chank\":\" সঙ্গীত\",\"biboron\":\"সঙ্গীত: (বুকিং)\",\"comment\":\"\",\"sorting\":\"180\",\"is_recorded\":false},{\"days\":[\"7\"],\"time\":\"10:45 pm\",\"stability\":\"15\",\"chank\":\"বাংলাদেশের উন্নয়ন নিয়ে প্রচারনামূলক নাটিকা\",\"biboron\":\"বাংলাদেশের উন্নয়ন নিয়ে প্রচারনামূলক নাটিকা\",\"comment\":\"\",\"sorting\":\"181\",\"is_recorded\":false},{\"days\":[\"4\"],\"time\":\"10:50 pm\",\"stability\":\"10\",\"chank\":\"সংগীত \",\"biboron\":\"সংগীত (বুকিং)\",\"comment\":\"\",\"sorting\":\"182\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"11:00 pm\",\"stability\":\"5\",\"chank\":\"বাংলা সংবাদ \",\"biboron\":\"বাংলা সংবাদ \",\"comment\":\"\",\"sorting\":\"183\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"11:05 pm\",\"stability\":\"2\",\"chank\":\"আবহাওয়াবার্তা \",\"biboron\":\"আবহাওয়াবার্তা \",\"comment\":\"\",\"sorting\":\"184\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"11:07 pm\",\"stability\":\"3\",\"chank\":\"পরবর্তী দিনের অনুষ্ঠান পরিচিতি\",\"biboron\":\"পরবর্তী দিনের অনুষ্ঠান পরিচিতি\",\"comment\":\"\",\"sorting\":\"185\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"11:10 pm\",\"stability\":\"10\",\"chank\":\"ভক্তিমূলক গান\",\"biboron\":\" (বুকিং)\",\"comment\":\"\",\"sorting\":\"186\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"11:20 pm\",\"stability\":\"5\",\"chank\":\"হামদ \\/ নাত\",\"biboron\":\"হামদ \\/ নাত\",\"comment\":\"\",\"sorting\":\"187\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"11:25 pm\",\"stability\":\"5\",\"chank\":\"পবিত্র কোরআন তেলাওয়াত\\/ তরজমা\\/সমাপ্তি ঘোষণা\\/জাতীয় সংগীত\",\"biboron\":\"পবিত্র কোরআন তেলাওয়াত\\/ তরজমা\\/সমাপ্তি ঘোষণা\\/জাতীয় সংগীত\",\"comment\":\"\",\"sorting\":\"188\",\"is_recorded\":false},{\"days\":[\"8\"],\"time\":\"11:30 pm\",\"stability\":\"00\",\"chank\":\"সমাপ্তি।\",\"biboron\":\"সমাপ্তি।\",\"comment\":\"\",\"sorting\":\"189\",\"is_recorded\":true,\"week\":null,\"description\":\"\",\"projejeno\":\"201903010002\",\"tottabodane\":\"201907010006\"}]', '[\"13\"]', '2', '4', '১৪২৬', 1, '2019-09-22 02:37:33', '203.78.146.21', 1, '2019-11-23 20:44:27', '::1', 1),
(6, NULL, 3, 31, 1, '[{\"days\":[\"3\"],\"time\":\"12:00 am\",\"week\":[\"7\"],\"chank\":\"1st\",\"biboron\":\"বিবরন\",\"description\":\"test\",\"stability\":\"1\",\"comment\":\"test\",\"sorting\":\"1\",\"is_recorded\":true},{\"days\":[\"2\"],\"time\":\"12:10 am\",\"week\":[\"7\"],\"chank\":\"1st\",\"biboron\":\"tst\",\"description\":\"test\",\"stability\":\"3\",\"comment\":\"\",\"sorting\":\"2\",\"is_recorded\":false}]', '[\"31\"]', '1', '1', '১৪২৬', 1, '2019-09-26 00:22:54', '202.134.13.134', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_history`
--

CREATE TABLE `sms_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) UNSIGNED DEFAULT NULL,
  `mobile_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1=pending, 2=send comple, 3 = Invalid Number',
  `success_status` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '1=success, 2=fail, 3 = Invalid Number, NULL= Not Send',
  `ins_date` datetime NOT NULL,
  `ins_by` int(11) UNSIGNED DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms_history`
--

INSERT INTO `sms_history` (`id`, `customer_id`, `mobile_number`, `msg`, `send_status`, `success_status`, `ins_date`, `ins_by`, `update_at`) VALUES
(1, 52, '01711170762', 'Your verification code is: 005687 Verification code validate 2019-01-25 17:58:03Thanks to Fab technology.', 1, NULL, '2019-01-25 12:58:03', NULL, NULL),
(2, 52, '01711170762', 'Your verification code is: 688542 Verification code validate 2019-01-25 17:59:08Thanks to Fab technology.', 1, NULL, '2019-01-25 12:59:08', NULL, NULL),
(3, 52, '01711170762', 'Your verification code is: 816109 Verification code validate 2019-01-25 18:04:26Thanks to Fab technology.', 1, NULL, '2019-01-25 13:04:26', NULL, NULL),
(4, 52, '01711170762', 'Your verification code is: 817355 Verification code validate 2019-01-25 19:34:46Thanks to Fab technology.', 1, NULL, '2019-01-25 14:34:46', NULL, NULL),
(5, 52, '01711170762', 'Your verification code is: 520109 Verification code validate 2019-01-25 19:37:10Thanks to Fab technology.', 1, NULL, '2019-01-25 14:37:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী'),
(2, 34, 'Bamna Upazila', 'বামনা'),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর'),
(4, 34, 'Betagi Upazila', 'বেতাগি'),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা'),
(6, 34, 'Taltali Upazila', 'তালতলী'),
(7, 35, 'Muladi Upazila', 'মুলাদি'),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ'),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা'),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর'),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ'),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা'),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী'),
(14, 35, 'Hizla Upazila', 'হিজলা'),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ '),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর'),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর'),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন'),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন'),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান'),
(21, 36, 'Lalmohan Upazila', 'লালমোহন'),
(22, 36, 'Manpura Upazila', 'মনপুরা'),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন'),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর'),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া'),
(26, 37, 'Nalchity Upazila', 'নালচিতি'),
(27, 37, 'Rajapur Upazila', 'রাজাপুর'),
(28, 38, 'Bauphal Upazila', 'বাউফল'),
(29, 38, 'Dashmina Upazila', 'দশমিনা'),
(30, 38, 'Galachipa Upazila', 'গলাচিপা'),
(31, 38, 'Kalapara Upazila', 'কালাপারা'),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ '),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর'),
(34, 38, 'Dumki Upazila', 'ডুমকি'),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি'),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া'),
(37, 39, 'Kaukhali', 'কাউখালি'),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া'),
(39, 39, 'Nazirpur', 'নাজিরপুর'),
(40, 39, 'Nesarabad', 'নেসারাবাদ'),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর'),
(42, 39, 'Zianagar', 'জিয়ানগর'),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর'),
(44, 40, 'Thanchi', 'থানচি'),
(45, 40, 'Lama', 'লামা'),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি '),
(47, 40, 'Ali kadam', 'আলী কদম'),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি '),
(49, 40, 'Ruma', 'রুমা'),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর'),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ'),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর'),
(53, 41, 'Nabinagar Upazila', 'নবীনগর'),
(54, 41, 'Sarail Upazila', 'সরাইল'),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন'),
(56, 41, 'Kasba Upazila', 'কসবা'),
(57, 41, 'Akhaura Upazila', 'আখাউরা'),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর'),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর'),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর'),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ'),
(62, 42, 'Haimchar', 'হাইমচর'),
(63, 42, 'Haziganj', 'হাজীগঞ্জ'),
(64, 42, 'Kachua', 'কচুয়া'),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর'),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ'),
(67, 42, 'Shahrasti', 'শাহরাস্তি'),
(68, 43, 'Anwara Upazila', 'আনোয়ারা'),
(69, 43, 'Banshkhali Upazila', 'বাশখালি'),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি'),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ'),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি'),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী'),
(74, 43, 'Lohagara Upazila', 'লোহাগারা'),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই'),
(76, 43, 'Patiya Upazila', 'পটিয়া'),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া'),
(78, 43, 'Raozan Upazila', 'রাউজান'),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ'),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া'),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড'),
(82, 44, 'Barura Upazila', 'বড়ুরা'),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া'),
(84, 44, 'Burichong Upazila', 'বুড়িচং'),
(85, 44, 'Chandina Upazila', 'চান্দিনা'),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম'),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি'),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার'),
(89, 44, 'Homna Upazila', 'হোমনা'),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর'),
(91, 44, 'Laksam Upazila', 'লাকসাম'),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ'),
(93, 44, 'Meghna Upazila', 'মেঘনা'),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর'),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট'),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ'),
(97, 44, 'Titas Upazila', 'তিতাস'),
(98, 45, 'Chakaria Upazila', 'চকরিয়া'),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর'),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া'),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী'),
(103, 45, 'Ramu Upazila', 'রামু'),
(104, 45, 'Teknaf Upazila', 'টেকনাফ'),
(105, 45, 'Ukhia Upazila', 'উখিয়া'),
(106, 45, 'Pekua Upazila', 'পেকুয়া'),
(107, 46, 'Feni Sadar', 'ফেনী সদর'),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া'),
(109, 46, 'Daganbhyan', 'দাগানভিয়া'),
(110, 46, 'Parshuram', 'পরশুরাম'),
(111, 46, 'Fhulgazi', 'ফুলগাজি'),
(112, 46, 'Sonagazi', 'সোনাগাজি'),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা '),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি'),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি'),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি'),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি'),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা'),
(119, 47, 'Panchhari Upazila', 'পানছড়ি'),
(120, 47, 'Ramgarh Upazila', 'রামগড়'),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর'),
(122, 48, 'Raipur Upazila', 'রায়পুর'),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ'),
(124, 48, 'Ramgati Upazila', 'রামগতি'),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর'),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর'),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ'),
(128, 49, 'Chatkhil Upazila', 'চাটখিল'),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ'),
(130, 49, 'Shenbag Upazila', 'শেনবাগ'),
(131, 49, 'Hatia Upazila', 'হাতিয়া'),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট '),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি'),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর '),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর'),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি'),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি'),
(138, 50, 'Barkal Upazila', 'বরকল'),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি'),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি'),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই'),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু'),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর '),
(144, 50, 'Kaukhali Upazila', 'কাউখালি'),
(145, 1, 'Dhamrai Upazila', 'ধামরাই'),
(146, 1, 'Dohar Upazila', 'দোহার'),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ'),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ'),
(149, 1, 'Savar Upazila', 'সাভার'),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর'),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী'),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা'),
(153, 2, 'Madhukhali Upazila', 'মধুখালি'),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা'),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড'),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন '),
(157, 2, 'Sadarpur Upazila', 'সদরপুর'),
(158, 2, 'Shaltha Upazila', 'শালথা'),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর'),
(160, 3, 'Kaliakior', 'কালিয়াকৈর'),
(161, 3, 'Kapasia', 'কাপাসিয়া'),
(162, 3, 'Sripur', 'শ্রীপুর'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ'),
(164, 3, 'Tongi', 'টঙ্গি'),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর'),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি'),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া'),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর'),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া'),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ'),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ'),
(172, 5, 'Islampur Upazila', 'ইসলামপুর'),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর'),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ'),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা'),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি '),
(177, 5, 'Narundi Police I.C', 'নারুন্দি'),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম'),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর'),
(180, 6, 'Bhairab Upazila', 'ভৈরব'),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর '),
(182, 6, 'Itna Upazila', 'ইটনা'),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ'),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি'),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর'),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর'),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন'),
(188, 6, 'Nikli Upazila', 'নিকলি'),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা'),
(190, 6, 'Tarail Upazila', 'তাড়াইল'),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর'),
(192, 7, 'Kalkini', 'কালকিনি'),
(193, 7, 'Rajoir', 'রাজইর'),
(194, 7, 'Shibchar', 'শিবচর'),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর'),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর'),
(197, 8, 'Shibalaya Upazila', 'শিবালয়'),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া'),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর'),
(200, 8, 'Ghior Upazila', 'ঘিওর'),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর'),
(202, 9, 'Lohajang Upazila', 'লোহাজং'),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর'),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর'),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান'),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি'),
(207, 9, 'Gazaria Upazila', 'গজারিয়া'),
(208, 10, 'Bhaluka', 'ভালুকা'),
(209, 10, 'Trishal', 'ত্রিশাল'),
(210, 10, 'Haluaghat', 'হালুয়াঘাট'),
(211, 10, 'Muktagachha', 'মুক্তাগাছা'),
(212, 10, 'Dhobaura', 'ধবারুয়া'),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া'),
(214, 10, 'Gaffargaon', 'গফরগাঁও'),
(215, 10, 'Gauripur', 'গৌরিপুর'),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ'),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর'),
(218, 10, 'Nandail', 'নন্দাইল'),
(219, 10, 'Phulpur', 'ফুলপুর'),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার'),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও'),
(222, 11, 'Bandar', 'বান্দার'),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর'),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ'),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ'),
(226, 12, 'Belabo Upazila', 'বেলাবো'),
(227, 12, 'Monohardi Upazila', 'মনোহরদি'),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর'),
(229, 12, 'Palash Upazila', 'পলাশ'),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর'),
(231, 12, 'Shibpur Upazila', 'শিবপুর'),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া'),
(233, 13, 'Atpara Upazilla', 'আটপাড়া'),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা'),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর'),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা'),
(237, 13, 'Madan Upazilla', 'মদন'),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ'),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর'),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা'),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি'),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি'),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট'),
(244, 14, 'Pangsha Upazila', 'পাংশা'),
(245, 14, 'Kalukhali Upazila', 'কালুখালি'),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর'),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর '),
(248, 15, 'Damudya Upazila', 'দামুদিয়া'),
(249, 15, 'Naria Upazila', 'নড়িয়া'),
(250, 15, 'Jajira Upazila', 'জাজিরা'),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ'),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট '),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি'),
(254, 16, 'Nakla Upazila', 'নাকলা'),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি'),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর'),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি'),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর'),
(259, 17, 'Sakhipur Upazila', 'সখিপুর'),
(260, 17, 'Basail Upazila', 'বসাইল'),
(261, 17, 'Madhupur Upazila', 'মধুপুর'),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল'),
(263, 17, 'Kalihati Upazila', 'কালিহাতি'),
(264, 17, 'Nagarpur Upazila', 'নগরপুর'),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর'),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর'),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার'),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর'),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি'),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর'),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি'),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট'),
(273, 55, 'Kachua Upazila', 'কচুয়া'),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট '),
(275, 55, 'Mongla Upazila', 'মংলা'),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ'),
(277, 55, 'Rampal Upazila', 'রামপাল'),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা'),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা'),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর'),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর '),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা'),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর'),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর'),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া '),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর'),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা'),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর '),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা'),
(290, 57, 'Sharsha Upazila', 'সারশা'),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর'),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর'),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর '),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা'),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা'),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা'),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা '),
(299, 59, 'Dacope Upazila', 'ডাকপে'),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া'),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া'),
(302, 59, 'Koyra Upazila', 'কয়ড়া'),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা'),
(304, 59, 'Phultala Upazila', 'ফুলতলা'),
(305, 59, 'Rupsa Upazila', 'রূপসা'),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর'),
(307, 60, 'Kumarkhali', 'কুমারখালি'),
(308, 60, 'Daulatpur', 'দৌলতপুর'),
(309, 60, 'Mirpur', 'মিরপুর'),
(310, 60, 'Bheramara', 'ভেরামারা'),
(311, 60, 'Khoksa', 'খোকসা'),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর'),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর'),
(314, 61, 'Shalikha Upazila', 'শালিখা'),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর'),
(316, 62, 'angni Upazila', 'আংনি'),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর'),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর'),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর'),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া'),
(321, 63, 'Kalia Upazilla', 'কালিয়া'),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর'),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি '),
(324, 64, 'Debhata Upazila', 'দেভাটা'),
(325, 64, 'Tala Upazila', 'তালা'),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া'),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর'),
(329, 18, 'Adamdighi', 'আদমদিঘী'),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর'),
(331, 18, 'Sherpur', 'শেরপুর'),
(332, 18, 'Dhunat', 'ধুনট'),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া'),
(334, 18, 'Gabtali', 'গাবতলি'),
(335, 18, 'Kahaloo', 'কাহালু'),
(336, 18, 'Nandigram', 'নন্দিগ্রাম'),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর'),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি'),
(339, 18, 'Shibganj', 'শিবগঞ্জ'),
(340, 18, 'Sonatala', 'সোনাতলা'),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর'),
(342, 19, 'Akkelpur', 'আক্কেলপুর'),
(343, 19, 'Kalai', 'কালাই'),
(344, 19, 'Khetlal', 'খেতলাল'),
(345, 19, 'Panchbibi', 'পাঁচবিবি'),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর'),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর'),
(348, 20, 'Manda Upazila', 'মান্দা'),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর'),
(350, 20, 'Atrai Upazila', 'আত্রাই'),
(351, 20, 'Raninagar Upazila', 'রাণীনগর'),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা'),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট '),
(354, 20, 'Sapahar Upazila', 'সাপাহার'),
(355, 20, 'Porsha Upazila', 'পোরশা'),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি'),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম'),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া'),
(360, 21, 'Lalpur Upazila', 'লালপুর'),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম'),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট'),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর'),
(365, 22, 'Nachole Upazila', 'নাচোল'),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর'),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ'),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া'),
(369, 23, 'Bera Upazila', 'বেড়া'),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা'),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর'),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর'),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী'),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর'),
(375, 23, 'Santhia Upazila', 'সাথিয়া'),
(376, 23, 'Sujanagar Upazila', 'সুজানগর'),
(377, 24, 'Bagha', 'বাঘা'),
(378, 24, 'Bagmara', 'বাগমারা'),
(379, 24, 'Charghat', 'চারঘাট'),
(380, 24, 'Durgapur', 'দুর্গাপুর'),
(381, 24, 'Godagari', 'গোদাগারি'),
(382, 24, 'Mohanpur', 'মোহনপুর'),
(383, 24, 'Paba', 'পবা'),
(384, 24, 'Puthia', 'পুঠিয়া'),
(385, 24, 'Tanore', 'তানোর'),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর'),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি'),
(388, 25, 'Chauhali Upazila', 'চৌহালি'),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা'),
(390, 25, 'Kazipur Upazila', 'কাজীপুর'),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ'),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর'),
(393, 25, 'Tarash Upazila', 'তারাশ'),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া'),
(395, 26, 'Birampur Upazila', 'বিরামপুর'),
(396, 26, 'Birganj', 'বীরগঞ্জ'),
(397, 26, 'Biral Upazila', 'বিড়াল'),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ'),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর'),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি'),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট'),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর'),
(403, 26, 'Kaharole Upazila', 'কাহারোল'),
(404, 26, 'Khansama Upazila', 'খানসামা'),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর'),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ'),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর'),
(408, 27, 'Fulchhari', 'ফুলছড়ি'),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর'),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ'),
(411, 27, 'Palashbari', 'পলাশবাড়ী'),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর'),
(413, 27, 'Saghata', 'সাঘাটা'),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ'),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর'),
(416, 28, 'Nageshwari', 'নাগেশ্বরী'),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি'),
(418, 28, 'Phulbari', 'ফুলবাড়ি'),
(419, 28, 'Rajarhat', 'রাজারহাট'),
(420, 28, 'Ulipur', 'উলিপুর'),
(421, 28, 'Chilmari', 'চিলমারি'),
(422, 28, 'Rowmari', 'রউমারি'),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর'),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর'),
(425, 29, 'Aditmari', 'আদিতমারি'),
(426, 29, 'Kaliganj', 'কালীগঞ্জ'),
(427, 29, 'Hatibandha', 'হাতিবান্ধা'),
(428, 29, 'Patgram', 'পাটগ্রাম'),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর'),
(430, 30, 'Saidpur', 'সৈয়দপুর'),
(431, 30, 'Jaldhaka', 'জলঢাকা'),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ'),
(433, 30, 'Domar', 'ডোমার'),
(434, 30, 'Dimla', 'ডিমলা'),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর'),
(436, 31, 'Debiganj', 'দেবীগঞ্জ'),
(437, 31, 'Boda', 'বোদা'),
(438, 31, 'Atwari', 'আটোয়ারি'),
(439, 31, 'Tetulia', 'তেতুলিয়া'),
(440, 32, 'Badarganj', 'বদরগঞ্জ'),
(441, 32, 'Mithapukur', 'মিঠাপুকুর'),
(442, 32, 'Gangachara', 'গঙ্গাচরা'),
(443, 32, 'Kaunia', 'কাউনিয়া'),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর'),
(445, 32, 'Pirgachha', 'পীরগাছা'),
(446, 32, 'Pirganj', 'পীরগঞ্জ'),
(447, 32, 'Taraganj', 'তারাগঞ্জ'),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর'),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ'),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি'),
(451, 33, 'Haripur Upazila', 'হরিপুর'),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল'),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ'),
(454, 51, 'Baniachang', 'বানিয়াচং'),
(455, 51, 'Bahubal', 'বাহুবল'),
(456, 51, 'Chunarughat', 'চুনারুঘাট'),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর'),
(458, 51, 'Lakhai', 'লাক্ষাই'),
(459, 51, 'Madhabpur', 'মাধবপুর'),
(460, 51, 'Nabiganj', 'নবীগঞ্জ'),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ'),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার'),
(463, 52, 'Barlekha', 'বড়লেখা'),
(464, 52, 'Juri', 'জুড়ি'),
(465, 52, 'Kamalganj', 'কামালগঞ্জ'),
(466, 52, 'Kulaura', 'কুলাউরা'),
(467, 52, 'Rajnagar', 'রাজনগর'),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল'),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর'),
(470, 53, 'Chhatak', 'ছাতক'),
(471, 53, 'Derai', 'দেড়াই'),
(472, 53, 'Dharampasha', 'ধরমপাশা'),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার'),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর'),
(475, 53, 'Jamalganj', 'জামালগঞ্জ'),
(476, 53, 'Sulla', 'সুল্লা'),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর'),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ'),
(479, 53, 'Tahirpur', 'তাহিরপুর'),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর'),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার'),
(482, 54, 'Bishwanath', 'বিশ্বনাথ'),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা'),
(484, 54, 'Balaganj', 'বালাগঞ্জ'),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ'),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ'),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ'),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট'),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর'),
(490, 54, 'Kanaighat', 'কানাইঘাট'),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ'),
(492, 54, 'Nobigonj', 'নবীগঞ্জ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 = admin/system user, 2 = customer',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = delete, 1 = active, 2 = inactive  ',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `verification_code` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity_verification_code` datetime DEFAULT NULL,
  `user_access_info` longtext COLLATE utf8mb4_unicode_ci,
  `user_access_updated_by` bigint(20) DEFAULT NULL,
  `user_access_updated_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` tinyint(3) DEFAULT '-1',
  `updated_by` mediumint(8) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `email`, `password`, `remember_token`, `type`, `is_active`, `status`, `verification_code`, `validity_verification_code`, `user_access_info`, `user_access_updated_by`, `user_access_updated_time`, `created_at`, `created_by`, `updated_by`, `updated_at`) VALUES
(1, '201904010004', NULL, '$2y$10$LP43.conVmfL5GTZ/3lMBuPp68znJmzWK86RM3DXbtwAAC/5/7wGW', 'CVhHmFqIqG9CZhfBuvNLjYcfpvXdh9bdwy2wcXRkmw2KS7CHhoM14U7bx1JK', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-11-29 05:45:29', -1, 1, '2019-05-08 04:32:02'),
(3, '201907010006', NULL, '$2y$10$Tl6RVsUNK77MSC.hHElrPOjkKHjkY.Hv8kUQB26.dyFHq/ta9UdSC', 'gh1YX9jy0xiR3bbKDUFLyM2TahfMF9tXcC1VdayMHqMUu71xi8HrK0mDkn3n', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2019-07-03 11:47:49', 0, 1, '2019-12-07 03:52:18'),
(4, '201907020007', NULL, '$2y$10$IiuCUVxkUsLbb9rA2lKPz.Q89z3vNzOipelmG2oGVUWq07.5G/jOG', '7VUllNVbdRL76lidNubA5uXWRk1lNyWMiosY1BOHR9FlcrgTUCldqjsPI1iN', 1, 1, 0, NULL, NULL, '{\"human_resource\":{\"human_resource\":{\"employee_info\":{\"id\":[\"5\"],\"access_info\":[\"add\",\"edit\",\"delete\"]},\"employee_salary_assign\":{\"id\":[\"6\"],\"access_info\":[\"add\",\"edit\",\"delete\"]}},\"payroll\":{\"payroll_generate\":{\"id\":[\"8\"],\"access_info\":[\"add\",\"edit\",\"delete\"]},\"payroll_record\":{\"id\":[\"9\"],\"access_info\":[\"add\",\"edit\",\"delete\"]}},\"leave\":{\"employee_leave_app\":{\"id\":[\"11\"],\"access_info\":[\"add\",\"edit\",\"delete\"]}}},\"program\":{\"artist\":{\"artist_record\":{\"id\":[\"14\"],\"access_info\":[\"add\",\"edit\",\"delete\"]}},\"program\":{\"program_magazine_create\":{\"id\":[\"16\"],\"access_info\":[\"add\",\"edit\",\"delete\"]},\"program_planning_approved\":{\"id\":[\"17\"],\"access_info\":[\"add\",\"edit\",\"delete\"]},\"program_proposal_approved\":{\"id\":[\"18\"],\"access_info\":[\"add\",\"edit\",\"delete\"]},\"studio_booking_list\":{\"id\":[\"19\"],\"access_info\":[\"add\",\"edit\",\"delete\"]},\"gate_passed_list\":{\"id\":[\"20\"],\"access_info\":[\"add\",\"edit\",\"delete\"]},\"program_recording_list\":{\"id\":[\"21\"],\"access_info\":[\"add\",\"edit\",\"delete\"]}}}}', 201904010004, '2019-12-14 10:54:20', '2019-07-03 12:03:24', 1, 1, '2019-12-07 11:26:12'),
(14, '202001010008', NULL, '$2y$10$IrNanNgxJZCYtop5V/qReOU9mWX4ssTgDdtnh85MQL2CEyZ9Ok4zK', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-04 06:59:28', 1, NULL, '2020-01-04 06:59:28'),
(15, '202001010009', NULL, '$2y$10$OWkBoXdwV8VWSFVf2hPc/.YCs1j1X6XcO/t/g0abooGUeKeOPhWTW', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-06 23:30:39', 1, NULL, '2020-01-06 23:30:39'),
(16, '202001010010', NULL, '$2y$10$WMgeCM7t/9.V2SH5J5F5uercxlGz/0KxTAz0uxZ38nn6K0eZMiu5m', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-06 23:40:05', 1, NULL, '2020-01-06 23:40:05'),
(17, '202001010011', NULL, '$2y$10$5.wdf6q9rYG1PQGDiksTT.g6AH92Ycd.FbSNQeWBgoKoNBgEcbkku', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-06 23:43:33', 1, NULL, '2020-01-06 23:43:33'),
(18, '202001010012', NULL, '$2y$10$92ly9CVjOohpM4jOms52YeB79usmzdQ0HVBKb3FGFls4jnqsuN4zy', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-20 23:26:34', 1, NULL, '2020-01-20 23:26:34'),
(19, '202001010013', NULL, '$2y$10$UtTjS4BeafyQk8DVm1av9eWIv2ajqm95h3XQtD5OX061k4OLwdbgC', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-20 23:34:06', 1, NULL, '2020-01-20 23:34:06'),
(20, '202001010014', NULL, '$2y$10$DWcaZrzSneIr8ZS0oe4s6u9kpgqkjiFfqgAiSiGQXNJE587ChX99e', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-20 23:36:22', 1, NULL, '2020-01-20 23:36:22'),
(21, '202001010015', NULL, '$2y$10$dxne8J5lf5f1MFr7bKpsKO1BWs3dPMmgeQMhomes4jfrtRMcPDAya', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-20 23:44:52', 1, NULL, '2020-01-20 23:44:52'),
(22, '202001010016', NULL, '$2y$10$6p./vO774cX7xupTDDOZ6eUtA/nSqrktH.Xpnu8nz/UuYUAwvoks6', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-20 23:49:15', 1, NULL, '2020-01-20 23:49:15'),
(23, '202001010017', NULL, '$2y$10$hEGqVatHApYFpO5uhFoGA.8N4bdxxmAwwnz7oGsU9nzeOdbunv8ry', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-20 23:52:49', 1, NULL, '2020-01-20 23:52:49'),
(24, '202001010018', NULL, '$2y$10$yO3YyZsu8hs6Pe/fm8Cq6uZYgB8jKXRR222z5.nkp3.5VVJnWhTnO', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-20 23:57:04', 1, NULL, '2020-01-20 23:57:04'),
(25, '202001010019', NULL, '$2y$10$jGCjB0DdVKeZ0cNloFyv8O0ZxV9c4thXC56JoeEoPUcY5KQUWawou', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-21 00:00:09', 1, NULL, '2020-01-21 00:00:09'),
(26, '202001010020', NULL, '$2y$10$VKBOwi2w1PHHbc5oToe8Bu5w/3i3qc5KB/UkgaLEzu4EvPtzPEo5a', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-21 00:00:18', 1, NULL, '2020-01-21 00:00:18'),
(27, '202001010021', NULL, '$2y$10$osM.5gjf3drGhsw6hZeptO9uu7DRNp2uzW5lnfQlxOa/6mHyKxIYy', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-21 00:23:24', 1, NULL, '2020-01-21 00:23:24'),
(28, '202001010022', NULL, '$2y$10$A/DzUDfL3BatjlJ4RvQl2ebmoJhov0yntdtb5mglUxShxMcj3z7wq', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-21 00:32:16', 1, NULL, '2020-01-21 00:32:16'),
(29, '202001010023', NULL, '$2y$10$0cqIS38aFpjrG8hyYAHH7OAPUfKDkn.5tK/.ewnyRa4yB5F4abthO', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-21 01:03:33', 1, NULL, '2020-01-21 01:03:33'),
(30, '202001010024', NULL, '$2y$10$1SoVT2eyaWqLsX8c7bQpMOPyXcV8bdXHRH/hBsy7Y1eM3SFcuy3de', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-01-21 01:06:03', 1, NULL, '2020-01-21 01:06:03'),
(31, '202012010001', NULL, '$2y$10$KVAZT6nSiLmOtJViCAiw0uFQSLFET.8LQaRgHjq4fpcum0hOJe77y', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2020-12-14 05:25:32', 1, NULL, '2020-12-14 05:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_info`
--

CREATE TABLE `user_role_info` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `level` varchar(300) DEFAULT 'glyphicon glyphicon-',
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `type` enum('modules','main_menu','sub_menu') DEFAULT NULL COMMENT 'modules, main_menu, sub_meu',
  `link` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=delete, 1=active, 2=inactive',
  `display_position` mediumint(6) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updadate_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role_info`
--

INSERT INTO `user_role_info` (`id`, `title`, `level`, `parent_id`, `type`, `link`, `is_active`, `display_position`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updadate_ip`) VALUES
(1, 'Human Resource', 'glyphicon glyphicon-user', NULL, 'modules', 'human_resource', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Dashboard', 'glyphicon glyphicon-home', 1, 'main_menu', 'human_resource', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Human Resource', 'fa fa-lg fa-fw fa-bar-chart-o', 1, 'main_menu', 'human_resource', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Employee Record', NULL, 4, 'sub_menu', 'employee_info', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Employee Salary Assign', NULL, 4, 'sub_menu', 'employee_salary_assign', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Payroll', 'fa fa-lg fa-fw fa-list-alt', 1, 'main_menu', 'payroll', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Payroll Generate', NULL, 7, 'sub_menu', 'payroll_generate', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Payroll Record', NULL, 7, 'sub_menu', 'payroll_record', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Leave', 'fa fa-lg fa-fw fa-book', 1, 'main_menu', 'leave', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Leave', NULL, 10, 'sub_menu', 'employee_leave_app', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Program', 'fa fa-lg fa-fw fa-book', NULL, 'modules', 'program', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'শিল্পী', 'fa fa-lg fa-fw fa-user', 12, 'main_menu', 'artist', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'শিল্পীর তথ্য', NULL, 13, 'sub_menu', 'artist_record', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'অনুষ্ঠান', 'fa fa-lg fa-fw fa-folder-open', 12, 'main_menu', 'program', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, ' পরিকল্পনা (Planning)', NULL, 15, 'sub_menu', 'program_magazine_create', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(17, ' প্রস্তাব(Proposal)', NULL, 15, 'sub_menu', 'program_planning_approved', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'চুক্তি পত্র(Contract)', NULL, 15, 'sub_menu', 'program_proposal_approved', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'স্টুডিও বুকিং', NULL, 15, 'sub_menu', 'studio_booking_list', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'গেইট পাস', NULL, 15, 'sub_menu', 'gate_passed_list', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'রেকডিং লিস্ট', NULL, 15, 'sub_menu', 'program_recording_list', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website_content_info`
--

CREATE TABLE `website_content_info` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(80) DEFAULT NULL,
  `title_id` int(11) UNSIGNED DEFAULT NULL,
  `content_title` varchar(300) DEFAULT NULL,
  `content` longtext,
  `is_active` tinyint(1) DEFAULT '1',
  `display_position` int(10) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website_content_info`
--

INSERT INTO `website_content_info` (`id`, `type`, `title_id`, `content_title`, `content`, `is_active`, `display_position`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`) VALUES
(2, '1', 473, '3', '<p>333</p>', 1, NULL, 1, '2019-12-22 01:46:41', '::1', NULL, NULL, NULL),
(3, '1', 473, 'w', '<p>w</p>', 1, 1, 1, '2019-12-25 08:44:22', '::1', NULL, NULL, NULL),
(4, 'department', 473, 'te', '<p>t</p>', 0, 3, 1, '2019-12-25 08:53:41', '::1', 201904010004, '2019-12-25 09:05:16', '::1'),
(5, 'department', 9, 'Anaesthesia', '<ul>\n	<li>Kidney and Urology</li>\n	<li>Nephrology </li>\n	<li>Urology and Andology </li>\n	<li>Dialysis </li>\n</ul>', 1, 2, 1, '2019-12-25 09:05:31', '::1', NULL, NULL, NULL),
(6, 'services', 474, 'tt', '<p>tt</p>', 0, 2, 1, '2019-12-25 09:31:39', '::1', 201904010004, '2019-12-25 09:31:47', '::1'),
(7, 'services', 474, 'Celebrating the National Days and Other Occasions', '<p style=\"text-align:justify\">With due respect the hall has observed the Birth Day and the National chidren’s day on 17 March, the Birth day of Begum Fazilatunnessa on August 8, National Mourning on August 15, Independence Day on March 26, International Mother Language Day on February 21, Bengali New Year on April 14, on 1st July Dhaka University day on 25th May the birth and 27th August the death anniversary of the national poet Kazi Nazrul Islam. During the month of Ramadan special Iftar Party was arranged for the resident students. Special foods were also arranged for the students, staffs, officials of the hall on the occasion Shabe-Barat, Eid-ul-Fitre and Eid-ul-Azha. Milad Mahafil was arranged on the occasions of HolyEid-e-Milad-Un-Nabi. The Hall administration and Hall puja committee jointly organized Saraswati pooja where many students and guests participated spontaneously and enjoyed the event</p>', 1, 1, 1, '2019-12-25 09:31:56', '::1', NULL, NULL, NULL),
(8, 'carefully', 476, 'INFECTION CONTROL', '<p>One of our key clinical priorities is to protect our patients, visitors and staff from the risk of healthcare-associated infections caused by bacteria (germs). One of our key clinical priorities is to protect our patients, visitors and staff from the risk of healthcare-associated infections caused by bacteria (germs).</p>', 1, 1, 1, '2019-12-25 09:51:44', '::1', NULL, NULL, NULL),
(9, 'page_manage', 478, 'ABOUT MEDILIFE SPECIALIST HOSPITAL LTD', '<p>The department of surgical oncology is <strong>one </strong>of the most important division in the <strong>Medilife Specialized Hospital LTD,</strong> Dhaka, Bangladesh. It provides surgical inputs in the multidisciplinary management of cancers and performing ablation of solid tumour. Surgery remains the best modality, either by itself or in combination with adjuvant treatment of solid cancers. In our hospital this department provides surgical oncology OPD, diagnostic procedure and services as Endoscopy, Colonoscopy and various biopsy procedures and curative as well as palliative surgical procedures for a wide array of cancers with a team of experts and experienced skilled surgeons. The Division of Surgical Oncology offers a comprehensive approach involving specialiazed care cancer research related treatment of malignant tumours.There is an emphasis on research where our surgical oncologist engage in basic science and clinical studies of cancer prevention, experimental treatments, Molecular therapy and immunogenetic study. In addition there is Master in Surgery( MS) Residency course on Surgical oncology under supervision of BSMMU, Dhaka, Bangladesh.The vast experiences over 1000 major and 7500 minor surgical procedures every year has brought an unmatched excellence to the departmentIn addition to being pioneer in the field of surgical oncology in Bangladesh has a strong clinical and research aptitud.</p>', 1, 2, 1, '2019-12-25 10:15:01', '::1', NULL, NULL, NULL),
(10, 'page_manage', 477, 'Welcome to Bangamata Sheikh Fazilatunnesa Mujib Hall', '<p><span style=\"font-size:12pt\">মহিয়সী নারী বেগম ফজিলাতুন্নেছা মুজিব এর নাম অনুসারে ঢাকা বিশ্ববিদ্যালয়ে প্রতিষ্ঠিত হয় বঙ্গমাতা শেখ ফজিলাতুন্নেছা মুজিব হল। ২০০০ সালের ১৮ সেপ্টেম্বর হলের ভিত্তি প্রস্তর স্থাপন এবং ২০০১ সালের ০৭ মে হলের উদ্বোধন করেন প্রধানমন্ত্রী শেখ হাসিনা। হলের প্রথম প্রভোস্ট এবং প্রজেক্ট ডিরেক্টর হিসাবে দায়িত্ব পালন করেন অধ্যাপক ড. নাসরীন আহমাদ। </span></p>\n\n<p> </p>\n\n<p><span style=\"font-size:12pt\">হলের ছাত্রীরা আন্ত:হল<span style=\"font-family:SutonnyMJ\">, </span>আন্ত:বিশ্ববিদ্যালয় বহি:ক্রীড়া ও অভ্যন্তরীণক্রীড়া প্রতিযোগিতায় অংশগ্রহণ করে চ্যাম্পিয়ন ও রানারআপ হওয়ার গৌরব অর্জন করেছে। বিশ্ববিদ্যালয় ও জাতীয় পর্যায়ে সাহিত্য ও সাংস্কৃতিক অঙ্গনে হলের ছাত্রীরা নানা প্রতিভার স্বাক্ষর রাখছে।</span></p>\n\n<p> </p>\n\n<p><span style=\"font-size:12pt\">হলে ছাত্রীদের মুক্তচিন্তা বিকাশের জন্য রয়েছে বঙ্গমাতা ফজিলাতুন্নেছা ডিবেটিং ক্লাব। রয়েছে বাঁধন সংগঠন যারা আর্তমানবতার সেবায় বিনামূল্যে রক্তদান ও রক্তের গ্রুপ নির্ণয় করে থাকে। রেঞ্জার ইউনিট হলে ও বিশ্ববিদ্যালয়ে স্বেচ্ছাসেবকের দায়িত্ব পালন ও বিভিন্ন স্কিল প্রোগ্রামে অংশগ্রহণ করে থাকে।</span></p>\n\n<p> </p>\n\n<p><span style=\"font-size:12pt\">ছাত্রীদের পড়াশোনার সুবিধা বৃদ্ধির জন্য লাইব্রেরি ছাড়াও তিনটি পা<span style=\"font-size:11.0pt\">ঠ</span> কক্ষ রয়েছে। <span style=\"font-size:10.5pt\">এছাড়াও </span>নামাজ ও কোরআন তেলাওয়াতের জন্য কক্ষ রয়েছে। ছাত্রীদের নিয়মিত সাংস্কৃতিক কর্মকান্ড অনুশীলনের জন্য রয়েছে সংস্কৃতি চর্চা কক্ষ<span style=\"font-family:SutonnyMJ\">, </span>বিভিন্ন অনুষ্ঠান <span style=\"font-size:11.0pt\">উদযাপ</span>নের জন্য সুপ্রশস্ত অডিটোরিয়াম রয়েছে । অডিটোরিয়ামের একপাশে রয়েছে দৈনিক সংবাদপত্র পাঠের ব্যবস্থা। বিশ্ববিদ্যালয় থেকে প্রদানকৃত ইন্টারনেট সংযোগ থেকে হলের ছাত্রীরা ইন্টারনেট সুবিধা <span style=\"font-size:10.5pt\">পেয়ে থাকে</span>। <span style=\"font-size:10.5pt\">পাশাপাশি </span>হলের অভ্যন্তরে ফোন<span style=\"font-family:SutonnyMJ\">, </span>লন্ড্রি<span style=\"font-family:SutonnyMJ\">, </span>ফটোস্ট্যাট ও বিপনী রয়েছে।<span style=\"font-size:11.0pt\"> উল্লেখিত</span> কার্যক্রমে মার্চ ২০১৯ থেকে বঙ্গমাতা শেখ ফজিলাতুন্নেছা মুজিব হল সংসদও সার্বিক সহযোগিতা করছে।</span></p>\n\n<table class=\"table table-bordered\" style=\"width:40%\">\n	<tbody>\n		<tr>\n			<th colspan=\"2\" style=\"text-align:left; vertical-align:middle\">ছাত্র-ছাত্রীর সংখ্যা</th>\n		</tr>\n		<tr>\n		</tr>\n		<tr>\n			<td>আবাসিক</td>\n			<td>300</td>\n		</tr>\n		<tr>\n			<td>দ্বৈতাবাসিক</td>\n			<td>680</td>\n		</tr>\n		<tr>\n			<td>অনাবাসিক</td>\n			<td>1500</td>\n		</tr>\n		<tr>\n			<th>সর্বমোট</th>\n			<th>2480</th>\n		</tr>\n	</tbody>\n</table>', 1, 1, 1, '2019-12-25 10:18:04', '::1', NULL, NULL, NULL),
(11, 'department', 10, 'Accident and Emergency', '<ul>\n	<li>24 Hours Emergency</li>\n	<li>Hotline : 880 1742 5888887</li>\n</ul>', 1, 3, 1, '2019-12-25 15:53:57', '::1', NULL, NULL, NULL),
(12, 'services', 480, 'Annual Sports', '<p>The 18th Annual Sports Competition of Bangamata Sheikh Fazilatunnessa Mujib Hall was held on 13th January 2019 at the central sports ground of the University of Dhaka. Masuda Akter became the Champion and Rasma Akter Ety became the Runners-up of this Competition. The 17th Annual Indoor Games Competition of Bangamata Sheikh Fazilatunnessa Mujib Hall was held on 29 January, 2019 in the common room and at the Hall play ground. It was inaugurated by Professor Dr. Zakia Parveen, The Provost of the Hall. Riya Akter Shanta was the champion and Boby Barua the Runner’s-up.</p>', 1, NULL, 1, '2019-12-25 16:30:00', '::1', NULL, NULL, NULL),
(13, 'page_manage', 479, 'PROVOST MESSAGE', '<p style=\"text-align:justify\">For more than seven decades the Medilife Specialized Hospital LTD has been serving people from all walks of life with exceptional healthcare.With eminent doctors leading each practice in Medilife, we are committed to delivering world class healthcare to an increasing number of people who have come to consider Medilife their preferred choice of hospital. Our outstanding team of nursing, technical and support staff strive to ensure the best possible treatment outcomes as well as providing an unparalleled experience while at Medilife Specialized Hospital LTD</p>\n\n<p>With warm regards,<br />\nDr. (Mrs.) Zakia Parveen<strong>,</strong><br />\nDepartment of Soil, Water', 1, 1, 1, '2019-12-27 02:42:46', '::1', NULL, NULL, NULL),
(14, 'carefully', 475, 'Involuntary loss of urine', '<pre>\nMillions of women experience involuntary loss of urine called urinary incontinence (UI). Some women may lose a few drops of urine while running or coughing. Others may feel a strong, sudden urge to urinate just before losing a large amount of urine. Many women experience both symptoms. UI can be slightly bothersome or totally debilitating. For some women, the risk of public embarrassment keeps them from enjoying many activities with their family and friends. Urine loss can also occur during sexual activity and cause tremendous emotional distress. Women experience UI twice as often as men. Pregnancy and childbirth, menopause, and the structure</pre>', 0, NULL, 1, '2019-12-27 03:28:07', '::1', 201904010004, '2019-12-27 03:29:10', '::1'),
(15, 'carefully', 475, 'te', '<pre>\nMillions of women experience involuntary loss of urine called urinary incontinence (UI). Some women may lose a few drops of urine while running or coughing. Others may feel a strong, sudden urge to urinate just before losing a large amount of urine. Many women experience both symptoms. UI can be slightly bothersome or totally debilitating. For some women, the risk of public embarrassment keeps them from enjoying many activities with their family and friends. Urine loss can also occur during sexual activity and cause tremendous emotional distress. Women experience UI twice as often as men. Pregnancy and childbirth, menopause, and the structure</pre>', 0, NULL, 1, '2019-12-27 03:29:22', '::1', 201904010004, '2019-12-27 03:29:29', '::1'),
(16, 'carefully', 475, 'INVOLUNTARY LOSS OF URINE .....', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">Millions of women experience involuntary loss of urine called urinary incontinence (UI). Some women may lose a few drops of urine while running or coughing. Others may feel a strong, sudden urge to urinate just before losing a large amount of urine. Many women experience both symptoms. UI can be slightly bothersome or totally debilitating. For some women, the risk of public embarrassment keeps them from enjoying many activities with their family and friends. Urine loss can also occur during sexual activity and cause tremendous emotional distress. Women experience UI twice as often as men. Pregnancy and childbirth, menopause, and the structure sss</span></span></span></p>', 1, NULL, 1, '2019-12-27 03:29:41', '::1', NULL, NULL, NULL),
(17, 'carefully', 544, 'CANCER', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">Millions of people in Bangladesh get cancer each year. Whether you have cancer or are close to someone who does, understanding what to expect can help you cope.</span> Many cancer deaths could be prevented by making healthy choices like not smoking, staying at a healthy weight, eating right, keeping active, and getting recommended screening tests. Stay Away from Tobacco: Quitting tobacco is not easy, The sooner you quit, the more you can reduce your chances of getting cancer and other diseases.</span></span></p>', 1, NULL, 1, '2019-12-27 03:35:30', '::1', NULL, NULL, NULL),
(18, 'carefully', 545, 'BLOOD IN STOOL', '<p>Rectal bleeding (known medically as hematochezia) refers to the passage of red blood from the anus, often mixed with stool and/or blood clots.</p>', 1, NULL, 1, '2019-12-27 03:36:00', '::1', NULL, NULL, NULL),
(19, 'carefully', 547, 'BACK PAIN', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">Back pain is a very common complaint. According to the Mayo Clinic, approximately 80% of all Americans will have low back pain at least once in their lives.</span> Back pain is a common reason for absence from work and doctor visits. Although back pain may be painful and uncomfortable, it is not usually serious.<br />\n<span style=\"background-color:white\">Even though back pain can affect people of any age, it is significantly more common among adults aged between 35 and 55 years. Experts say that back pain is associated with the way our bones, muscles and ligaments in our backs work together.</span></span></span></p>', 1, NULL, 1, '2019-12-27 03:37:06', '::1', NULL, NULL, NULL),
(20, 'carefully', 546, 'CHEST PAIN', '<p>There are many causes of chest pain, and while many are not serious, it may be difficult to distinguish a heart attack, pulmonary embolus or aortic dissection,</p>', 1, NULL, 1, '2019-12-27 03:37:40', '::1', NULL, NULL, NULL),
(21, 'services', 485, 'Day Care', '<p style=\"text-align:justify\">The Day Care Unit is a unique wing of Medilife Hospital to help patients with specific need-based treatment in an out-patient basis. Patients in Day Care are those who undergo procedures not requiring overnight nursing care or stay in the hospital. Patients can have the procedure and then rest and be monitored in Day Care Unit for a few hours after the procedure. Afterwards, they can return home that same day. All beds in Day Care Unit are equipped with life supports.</p>\n\n<p><strong>BENEFITS OF DAY CARE UNIT</strong></p>\n\n<ul>\n	<li>Day Care Unit provides an effective option for treating patients with benefits like:</li>\n	<li>Saving time and money of patients and their families</li>\n	<li>Allowing patients to maintain communication and contact with home</li>\n	<li>Minimizing risks of developing hospital acquired infection</li>\n	<li>Avoiding night stay in the hospital, away from family</li>\n	<li>Spending justified amount of money for treatment, as required</li>\n</ul>', 1, 2, 1, '2020-01-04 12:39:12', '103.107.38.167', NULL, NULL, NULL),
(22, 'department', 571, 'Emergency Services', '<ul>\n	<li>24 Hours Emergency</li>\n	<li>Hotline : 880 1742 5888887</li>\n</ul>', 1, 1, 1, '2020-07-18 08:10:15', '103.205.71.20', NULL, NULL, NULL),
(23, 'department', 572, 'Medicine', '<ul>\n	<li>General Medicine AND Internal Medicine</li>\n	<li>Diabetology AND Endocrinology</li>\n	<li>Hematology</li>\n</ul>', 1, 2, 1, '2020-07-18 08:14:47', '103.205.71.20', NULL, NULL, NULL),
(24, 'department', 525, 'Details of Neuromedicine', '<p style=\"text-align:justify\">The Mediife Neurology and Stroke Clinic offer complete consultative services, diagnostic testing and treatment for a wide spectrum of neurological conditions, including diseases of the brain, spinal cord, peripheral nerves and muscles. Mediife Sepcialized Hospital is the leading hospital in the country to provide advanced and complete Neurology and Neurosurgery facilities within the department. The Neurology Department has experienced American Board Certified Neurologist. The department uses the latest technology and facilities, and is staffed by an experienced team of neurologists, nurses and technologists, who are devoted to patient care.</p>\n\n<p style=\"text-align:justify\">Medilife Neurology department has the following facilities:</p>\n\n<p>1. Outpatient clinic for all neurological diseases.</p>\n\n<p>2. Inpatient services with 24 hours hospital admission for all types of acute and chronic neurological problems, specially for acute stroke and acute neurological Problems.</p>\n\n<p>3. Investigation facilities for all types of common neurological diseases:</p>\n\n<ul>\n	<li>a. Plain Radiology</li>\n	<li>b. Neuroimaging facilities: CT scans MRI, MRA, NRV etc.</li>\n	<li>c. All biochemical and immunological investigations.</li>\n	<li>d. EEG and evoked potentials.</li>\n	<li>e. Nerve conduction studies, EMG and if necessary muscle and nerve biopsy.</li>\n	<li>f. Color Doppler study of neck arteries.</li>\n	<li>g. Cerebral angiography and possible stenting of the cerebral arteries.</li>\n	<li>h. All other neurology and Medicine related investigations.</li>\n</ul>', 1, NULL, 1, '2020-07-18 08:25:19', '103.205.71.20', NULL, NULL, NULL),
(25, 'services', 480, 'Annual Sports', '<p style=\"text-align:justify\">The 18th Annual Sports Competition of Bangamata Sheikh Fazilatunnessa Mujib Hall was held on 13th January 2019 at the central sports ground of the University of Dhaka. Masuda Akter became the Champion and Rasma Akter Ety became the Runners-up of this Competition. The 17th Annual Indoor Games Competition of Bangamata Sheikh Fazilatunnessa Mujib Hall was held on 29 January, 2019 in the common room and at the Hall play ground. It was inaugurated by Professor Dr. Zakia Parveen, The Provost of the Hall. Riya Akter Shanta was the champion and Boby Barua the Runner’s-up.</p>', 1, NULL, 1, '2020-07-18 10:07:24', '103.205.71.20', NULL, NULL, NULL),
(26, 'services', 490, 'EMERGENCY', '<p><strong>A Center of Excellence in Emergency Medicine of Bangladesh</strong></p>\n\n<p>Emergency Medicine (EM) is a relatively new and dynamic specialty. The idea of Emergency Medicine was first introduced during French revolution by the French military surgeon Dominique Jean Larrey (Father of Emergency Medicine), by his use of “flying carriages”, bringing injured soldiers from war fields to the nearest hospital. But, it was not until 1970 when the first residency training on EM was introduced at the University of Cincinnati. In 1971, the first Emergency Department (ED) was established at the University of Southern California. Finally, in 1979, Emergency Medicine was recognized as a separate specialty in the USA. In the UK, the College of Emergency Medicine (CEM) was formed in 2004.</p>\n\n<p> </p>\n\n<p> </p>', 1, NULL, 1, '2020-07-18 10:10:30', '103.205.71.20', NULL, NULL, NULL),
(27, 'services', 492, 'INVESTIGATION', '<ul>\n	<li>Laboratory (Pathology)           <br />\n	-  Specimen collection at Ground Floor<br />\n	 </li>\n	<li>Radiology', 1, NULL, 1, '2020-07-18 10:12:05', '103.205.71.20', NULL, NULL, NULL),
(28, 'services', 496, 'PHARMACY', '<p><strong>THE PHARMACY DEPARTMENT OF MEDILIFE SPECIALIZED  HOSPITAL LTD</strong></p>\n\n<p style=\"text-align:justify\">Medilife Hospital Pharmacy Department has placed a leading role in implementing advanced clinical pharmacist patient care services in Medilife Hospital where pharmacists work collaboratively with nurses and physicians directly on patient care areas to review medication orders and manage drug therapy.</p>\n\n<p style=\"text-align:justify\">The Pharmacy Department of Medilife Hospital provides a comprehensive range of pharmaceutical services to all patients. Its objective is to provide patient-focused pharmaceutical care in order to achieve definite outcomes that improve patients’ quality of life. The pharmacy department consists of a team of qualified, ...</p>', 1, NULL, 1, '2020-07-18 10:14:35', '103.205.71.20', NULL, NULL, NULL),
(29, 'services', 497, 'PHYSIOTHERAPY', '<p><u><strong>PHYSICAL MEDICINE', 1, NULL, 1, '2020-07-18 10:15:51', '103.205.71.20', NULL, NULL, NULL),
(30, 'services', 498, 'Prayer Room', '<p><u><strong>PRAYER ROOM</strong></u></p>\n\n<p>The prayer room for the Muslims (Male) is located at the ground floor in the hospitals lobby just beside Blood Bank and for the Female at 1<sup>st</sup> floor beside the Ultrasonography counter.</p>', 1, NULL, 1, '2020-07-18 10:16:37', '103.205.71.20', NULL, NULL, NULL),
(31, 'services', 499, 'PSYCHOSOCIAL COUNSELING', '<p><strong><u>Medilife Counseling Therapy (Counselor Service)</u></strong></p>\n\n<p>Provided in OPD (out-patient) and also for admitted patients (in-patient)</p>\n\n<p style=\"text-align:justify\">We offer Psychotherapy (Counseling) using various standard Psychological Theories for analysis of the underlying problem and provide treatment through Psychotherapeutic techniques. We serve patients with different kinds of Psychological and Behavioral problems. Such as - </p>\n\n<ul>\n	<li style=\"text-align: justify;\">Adults and children suffering with Anxiety Disorders like Phobia, Separation anxiety, Reactive attachment disorder, problems with abuse (Physical, Emotional, Sexual), Conversion, Obsessive compulsive disorder, Post traumatic stress disorder, Adjustment problem, Health anxiety etc.</li>\n	<li style=\"text-align: justify;\">Mentally challenged children with retardation and Developmental disorder, Attention deficit and hyper activity disorder, Autism, Behavioral problem of children and lack of attention.</li>\n	<li style=\"text-align: justify;\">Depression, Adolescent Mental Health Disorders, Impulse control disorders, Personality disorders, Psycho-sexual disorder, Eating disorders, Gender Identity disorder, Sleep disorder, Patients with Schizophrenia, Bipolar mood disorder, Substance abuse (Drug addiction), Psychological problems caused by chronic illness like Cardiac disease, Stroke, Cancer, AIDS etc.</li>\n</ul>', 1, NULL, 1, '2020-07-18 10:18:31', '103.205.71.20', NULL, NULL, NULL),
(32, 'services', 500, 'REPORT DELIVERY', '<p style=\"text-align:justify\">Report Delivery Service is located at the Ground Floor of the hospital’s lobby, providing 24 hours Service to deliver all kinds of investigation reports.</p>', 1, NULL, 1, '2020-07-18 10:20:38', '103.205.71.20', NULL, NULL, NULL),
(33, 'services', 501, 'ROOM CATEGORY', '<table style=\"width:75%\">\n	<tbody>\n		<tr>\n			<td>SL NO</td>\n			<td>TYPE OF CABIN/ROOM</td>\n			<td>RENT PER DAY (BDT)</td>\n		</tr>\n		<tr>\n			<td>01</td>\n			<td>VIP or Deluxe Suite</td>\n			<td>5,000.00</td>\n		</tr>\n		<tr>\n			<td>02</td>\n			<td>Standard Suite</td>\n			<td>4,500.00</td>\n		</tr>\n		<tr>\n			<td>03</td>\n			<td>Deluxe Single</td>\n			<td>3,500.00</td>\n		</tr>\n		<tr>\n			<td>04</td>\n			<td>Luxury Single</td>\n			<td>3,000.00</td>\n		</tr>\n		<tr>\n			<td>05</td>\n			<td>Standard Single</td>\n			<td>2,500.00</td>\n		</tr>\n		<tr>\n			<td>06</td>\n			<td>Double Bedded Room</td>\n			<td>2,000.00</td>\n		</tr>\n		<tr>\n			<td>07</td>\n			<td>General Ward (Male/Female)</td>\n			<td>2,000.00</td>\n		</tr>\n		<tr>\n			<td>08</td>\n			<td>ICU / CCU</td>\n			<td>5,500.00</td>\n		</tr>\n		<tr>\n			<td>09</td>\n			<td>KT ICU</td>\n			<td>5,000.00</td>\n		</tr>\n		<tr>\n			<td>10</td>\n			<td>CICU</td>\n			<td>9,000.00</td>\n		</tr>\n		<tr>\n			<td>11</td>\n			<td>CICU (Step Down)</td>\n			<td>5,000.00</td>\n		</tr>\n		<tr>\n			<td>12</td>\n			<td>NICU / PICU</td>\n			<td>5,500.00</td>\n		</tr>\n		<tr>\n			<td>13</td>\n			<td>NICU HDU</td>\n			<td>4,000.00</td>\n		</tr>\n		<tr>\n			<td>14</td>\n			<td>NICU Isolation HDU</td>\n			<td>6,000.00</td>\n		</tr>\n		<tr>\n			<td>15</td>\n			<td>NICU Isolation ICU</td>\n			<td>5,500.00</td>\n		</tr>\n		<tr>\n			<td>16</td>\n			<td>Nursery</td>\n			<td>4,000.00</td>\n		</tr>\n		<tr>\n			<td>17</td>\n			<td>Oncology Ward (3 Bedded)</td>\n			<td>4,000.00</td>\n		</tr>\n		<tr>\n			<td>18</td>\n			<td>Oncology Day Care</td>\n			<td>3,500.00</td>\n		</tr>\n		<tr>\n			<td>19</td>\n			<td>Ward (4 Bedded)</td>\n			<td>4,000.00</td>\n		</tr>\n		<tr>\n			<td>20</td>\n			<td>Ward (8 Bedded)</td>\n			<td>4,000.00</td>\n		</tr>\n		<tr>\n			<td>21</td>\n			<td>Ward (9 Bedded)</td>\n			<td>4,000.00</td>\n		</tr>\n		<tr>\n			<td>22</td>\n			<td>Ward (Post Cath)</td>\n			<td>4,000.00</td>\n		</tr>\n		<tr>\n			<td>23</td>\n			<td>Ward (Pre Cath)</td>\n			<td>4,000.00</td>\n		</tr>\n	</tbody>\n</table>', 1, NULL, 1, '2020-07-18 10:24:24', '103.205.71.20', NULL, NULL, NULL),
(34, 'department', 528, 'ONCOLOGY (MEDICAL, SURGICAL, RADIATION)', '<p>Medilife Hospital’s Oncology Unit/Cancer Care Centre is run by the most high-profile, dynamic group of physicians. Consultants, specialists and duty doctors with a full team of nurses and other care givers are fully committed to providing extensive, advanced, highly specialized medical treatment, support and care which is befitting of our hospital.</p>\n\n<p>The unit is divided into two parts – Medical Oncology and Radiation Oncology.  </p>\n\n<h3><strong>MEDICAL ONCOLOGY</strong></h3>\n\n<p>The Department of Medical Oncology is an integral part of our comprehensive Cancer Care Centre. Medical Oncology is treatment of cancer primarily with drugs and without surgical intervention. It deals with:</p>\n\n<ul>\n	<li>Chemotherapy</li>\n	<li>Hormone Therapy</li>\n	<li>Immunotherapy</li>\n	<li>Targeted Therapies</li>\n</ul>\n\n<p>A dedicated team of experienced and foreign trained medical oncologists, oncology nursing staff and pharmacy staff are involved in the up-to-date National Comprehensive Cancer Network (NCCN) guideline-wise management of cancer patients.</p>\n\n<p>Both solid and hematological malignancies are treated here. We have a standard, fully equipped 10-bedded day-care facility and a large indoor facility for a wide range of treatments for patients requiring chemotherapy and conservative medical management. </p>\n\n<h3><strong>RADIATION ONCOLOGY</strong></h3>\n\n<p>The Department of Radiation Oncology at our comprehensive Cancer Care Centre provides technologically advanced cancer care utilizing the most sophisticated radiation delivery systems including Bangladesh\'s only RapidArc </p>', 1, NULL, 1, '2020-07-18 10:36:29', '103.205.71.20', NULL, NULL, NULL),
(35, 'department', 524, 'NEUROLOGY', '<h3><strong>Specialization in the evaluation and treatment of disorders affecting the Nervous System</strong></h3>\n\n<p>The Neurology deparment at the state of the art United Hospital serves as the receiving point for the most seriously injured people from across the country and treats patients with brain and spine diseases from home and abroad.</p>\n\n<p>In addition to being a centre of excellence, the Neurology deparment aims to be an asset to national and international communities. Our physicians are experts in Neuroscience which is the scientific study of the nervous system.</p>\n\n<h3><strong>TYPES OF SPINAL DISEASE:</strong></h3>\n\n<ul>\n	<li>Neck pain and radiating pain in the upper limb</li>\n	<li>Low back pain and radiating pain down to lower limbs</li>\n	<li>Spinal tumor</li>\n	<li>Spinal fracture and dislocation</li>\n	<li>Infection of spine</li>\n	<li>Spinal injury</li>\n	<li>Congenital anomalies of spine and brain</li>\n</ul>', 1, NULL, 1, '2020-07-18 10:38:42', '103.205.71.20', NULL, NULL, NULL),
(36, 'department', 530, 'ORTHOPAEDICS', '<p style=\"text-align:justify\">Medilife Specialized Hospital Limited has one of best the orthopaedic department in the country, serving to provide 360º care as a Bone', 1, NULL, 1, '2020-07-18 10:43:35', '103.205.71.20', NULL, NULL, NULL),
(37, 'department', 521, 'LAPAROSCOPIC SURGERY', '<p><strong>What Is Laparoscopy?</strong></p>\n\n<p style=\"text-align:justify\">Laparoscopy (pronounced \"lap-a-ROSS-coe-pee\") is a surgical procedure performed through very small incisions in the abdomen, using specialized instruments. A pencil-thin instrument called a laparoscope is used, and it gives the surgeon a view on a TV monitor, of the inside of the abdominal cavity.</p>\n\n<p style=\"text-align:justify\">A laparoscope has lenses like a telescope to magnify body structures, a powerful light to illuminate them, and a miniature video camera. The camera sends images of the inside of the body to a TV monitor in the operating room. Specialized surgical instruments can be inserted through the laparoscope, and through small incisions nearby.</p>\n\n<p style=\"text-align:justify\"><strong>What are the uses of Laparoscopy?</strong></p>\n\n<p style=\"text-align:justify\">Laparoscopy can be used either to diagnose or to treat various conditions. Or it may be used to identify a problem and treat it in the same operation.</p>\n\n<p style=\"text-align:justify\">Diagnostic laparoscopy allows the doctor to look at structures inside the abdomen and see whether they appear normal or abnormal. It becomes valuable when physical examinations, lab tests, x-rays, and computerized scans don\'t show exactly what is wrong and a diagnosis requires a direct look inside the body.</p>', 1, NULL, 1, '2020-07-18 10:45:24', '103.205.71.20', NULL, NULL, NULL),
(38, 'department', 517, 'GENERAL SURGERY', '<h4>ABOUT THE DEPARTMENT</h4>\n\n<p style=\"text-align:justify\">Department of General', 1, NULL, 1, '2020-07-18 10:47:08', '103.205.71.20', NULL, NULL, NULL),
(39, 'department', 511, 'DERMATOLOGY', '<p style=\"text-align:justify\">Department of Dermatology of Medilife Specialized Hospital Limited provides advanced diagnosis and management of diseases of the skin, hair and nails, as well as venereal (sexually transmitted) diseases. The Department aims to deliver the highest quality of care to patients with skin disorders, including skin cancers, immune and allergic processes diseases of other organ systems with skin manifestations and venereal diseases.</p>', 1, NULL, 1, '2020-07-18 10:48:25', '103.205.71.20', NULL, NULL, NULL),
(40, 'department', 518, 'HAEMODIALYSIS', '<p style=\"text-align:justify\"><strong>Haemodialysis is a process of purifying the blood of a person whose kidneys are not working normally; this dialysis removes waste products such as creatinine, urea and free water from the blood when the kidneys are in a state of failure.</strong></p>\n\n<p style=\"text-align:justify\">Comprehensive renal replacement therapy options are available at United Hospital for patients with chronic kidney failure - more than 100 dialysis sessions per day.</p>', 1, NULL, 1, '2020-07-18 12:58:03', '202.134.10.142', NULL, NULL, NULL),
(41, 'department', 508, 'CLINICAL HEMATOLOGY', '<p>Clinical Hematology Department looks after people with problems in their blood. This includes leukemia, some forms of anemia (like Sickle Cell) and congenital (from birth) diseases like thalassaemia and hemophilia. Problems seen in Clinical Hematology include</p>\n\n<ul>\n	<li>Thalassaemia - a genetic problem with the blood</li>\n	<li>Bone marrow failure syndromes such as aplastic anemia</li>\n	<li>Blood cancers such as leukemias, lymphomas (cancer affecting lymph nodes) and multiple myeloma</li>\n	<li>Bleeding disorders like hemophilia and platelet related disorders</li>\n</ul>', 1, NULL, 1, '2020-07-18 12:59:42', '202.134.10.142', NULL, NULL, NULL),
(42, 'department', 507, 'CARDIOLOGY', '<h3><u><strong>ABOUT THE DEPARTMENT</strong></u></h3>\n\n<p>Our cardiologists provide 24 hour dedicated service and is the only hospital of Bangladesh.</p>', 1, NULL, 1, '2020-07-18 13:01:31', '202.134.10.142', NULL, NULL, NULL),
(43, 'department', 538, 'RADIOLOGY AND IMAGING', '<p style=\"text-align:justify\">The Radiology', 1, NULL, 1, '2020-07-18 13:04:53', '202.134.10.142', NULL, NULL, NULL),
(44, 'department', 542, 'UROLOGY', '<p style=\"text-align:justify\">The Department of Urology of Medilife  Hospital Limited is dedicated to providing state-of-the-art medical and surgical care for all specialties of male and female urology (both adult and paediatric).</p>\n\n<p style=\"text-align:justify\">CONSULTATION', 1, NULL, 1, '2020-07-18 13:08:07', '202.134.10.142', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website_gallary_info`
--

CREATE TABLE `website_gallary_info` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '1=photo,2=video,3=heading',
  `source_info` text,
  `content_info` text,
  `display_position` int(11) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website_gallary_info`
--

INSERT INTO `website_gallary_info` (`id`, `type`, `source_info`, `content_info`, `display_position`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`) VALUES
(1, 1, 'image_1586242516.jpg', NULL, 33, 0, 4294967295, '2020-04-07 06:55:16', '::1', 201904010004, '2020-04-07 07:31:23', '::1'),
(2, 1, 'image_1586261289.jpg', 'Free Campaign', 1, 1, 201904010004, '2020-04-07 07:01:35', '::1', 201904010004, '2020-04-07 12:08:10', '::1'),
(3, 3, 'heading_1612503241.jpg', 'banner image', 2, 1, 201904010004, '2020-04-07 07:35:20', '::1', 201904010004, '2021-02-05 05:34:01', '::1'),
(4, 2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/C0sUwnvjZjg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Medilife Hospital Hospital.', 1, 0, 201904010004, '2020-04-07 07:41:00', '::1', 201904010004, '2021-02-12 06:22:17', '::1'),
(5, 1, 'image_1586261313.jpg', 'Free Campaign', 2, 1, 201904010004, '2020-04-07 12:08:33', '::1', NULL, NULL, NULL),
(6, 1, 'image_1586321536.jpg', 'Free Campaign', 3, 1, 201904010004, '2020-04-07 12:08:45', '::1', 201904010004, '2020-04-08 04:52:18', '::1'),
(7, 1, 'image_1586261336.jpg', 'Free Campaign', 4, 1, 201904010004, '2020-04-07 12:08:56', '::1', NULL, NULL, NULL),
(8, 3, 'heading_1612503004.jpg', 'Banner 1', 4, 1, 201904010004, '2020-04-08 04:54:41', '::1', 201904010004, '2021-02-05 05:30:04', '::1'),
(9, 3, 'heading_1612503233.jpg', 'Banner 3', 3, 1, 201904010004, '2020-04-08 04:55:08', '::1', 201904010004, '2021-02-05 05:33:53', '::1'),
(10, 3, 'heading_1612506662.jpg', 'Banner 4', 1, 1, 201904010004, '2020-04-08 04:55:28', '::1', 201904010004, '2021-02-05 06:31:02', '::1'),
(11, 2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DyyMoIc4S9s\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Medilife Medical Evacuation & Air Ambulance do, bed    to bed transfer from hospital to hospital 24 hours, 365 days', 2, 0, 201904010004, '2020-04-08 05:08:36', '::1', 201904010004, '2021-02-12 06:22:20', '::1'),
(12, 2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IwdAdZjn2rc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Medilife Hospital Hospital.', 3, 0, 201904010004, '2020-04-08 05:09:11', '::1', 201904010004, '2021-02-12 06:22:25', '::1'),
(13, 2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/098kbvwp6DU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'বঙ্গমাতা শেখ ফজিলাতুন নেছা মুজিব । Bangamata Sheikh Fazilatunnesa Mujib Birthday', 1, 1, 201904010004, '2020-04-08 05:09:45', '::1', 201904010004, '2021-02-12 06:26:22', '::1'),
(14, 3, 'heading_1612506598.jpg', 'Banner 4', 1, 1, 201904010004, '2020-07-29 10:44:20', '58.145.189.237', 201904010004, '2021-02-05 06:29:58', '::1'),
(15, 2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/F8FcXW6Pf4w\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Bangamata Sheikh Fazilatunnesa Mujib (বঙ্গমাতা শেখ ফজিলাতুন্নেছা মুজিব)', 2, 1, 201904010004, '2021-02-12 06:25:05', '::1', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_chart_of_accounts`
--
ALTER TABLE `acc_chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_sttings`
--
ALTER TABLE `all_sttings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_infos`
--
ALTER TABLE `branch_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_infos`
--
ALTER TABLE `company_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emplooyee_overwrite_off_on_days`
--
ALTER TABLE `emplooyee_overwrite_off_on_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendance_application`
--
ALTER TABLE `employee_attendance_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendance_info`
--
ALTER TABLE `employee_attendance_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendance_row_data`
--
ALTER TABLE `employee_attendance_row_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leave_infos`
--
ALTER TABLE `employee_leave_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_payrole_leave_assign`
--
ALTER TABLE `employee_payrole_leave_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_payslip_infos`
--
ALTER TABLE `employee_payslip_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_infos`
--
ALTER TABLE `employee_salary_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employess_general_infos`
--
ALTER TABLE `employess_general_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fiscal_year`
--
ALTER TABLE `fiscal_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_openings`
--
ALTER TABLE `monthly_openings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup_days`
--
ALTER TABLE `setup_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup_fixed_time_point`
--
ALTER TABLE `setup_fixed_time_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_history`
--
ALTER TABLE `sms_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role_info`
--
ALTER TABLE `user_role_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_content_info`
--
ALTER TABLE `website_content_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_gallary_info`
--
ALTER TABLE `website_gallary_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_chart_of_accounts`
--
ALTER TABLE `acc_chart_of_accounts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `all_sttings`
--
ALTER TABLE `all_sttings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573;

--
-- AUTO_INCREMENT for table `branch_infos`
--
ALTER TABLE `branch_infos`
  MODIFY `id` mediumint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_infos`
--
ALTER TABLE `company_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `emplooyee_overwrite_off_on_days`
--
ALTER TABLE `emplooyee_overwrite_off_on_days`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `employee_attendance_application`
--
ALTER TABLE `employee_attendance_application`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_attendance_info`
--
ALTER TABLE `employee_attendance_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `employee_attendance_row_data`
--
ALTER TABLE `employee_attendance_row_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_leave_infos`
--
ALTER TABLE `employee_leave_infos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_payrole_leave_assign`
--
ALTER TABLE `employee_payrole_leave_assign`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employee_payslip_infos`
--
ALTER TABLE `employee_payslip_infos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employee_salary_infos`
--
ALTER TABLE `employee_salary_infos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `employess_general_infos`
--
ALTER TABLE `employess_general_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `fiscal_year`
--
ALTER TABLE `fiscal_year`
  MODIFY `id` mediumint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `monthly_openings`
--
ALTER TABLE `monthly_openings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setup_days`
--
ALTER TABLE `setup_days`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setup_fixed_time_point`
--
ALTER TABLE `setup_fixed_time_point`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sms_history`
--
ALTER TABLE `sms_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_role_info`
--
ALTER TABLE `user_role_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `website_content_info`
--
ALTER TABLE `website_content_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `website_gallary_info`
--
ALTER TABLE `website_gallary_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
