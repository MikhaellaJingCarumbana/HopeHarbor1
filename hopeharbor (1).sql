-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 06:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hopeharbor`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminstaff_adminstaff`
--

CREATE TABLE `adminstaff_adminstaff` (
  `UserID` bigint(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `UserType` varchar(12) NOT NULL,
  `Username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminstaff_adminstaff`
--

INSERT INTO `adminstaff_adminstaff` (`UserID`, `FirstName`, `LastName`, `EmailAddress`, `Password`, `UserType`, `Username`) VALUES
(1, 'Mikhaella Jing', 'Carumbana', 'mikhaellajing.carumbana@cit.edu', '123', 'admin', 'Admin-Jing'),
(2, 'Mikhaila Jasmin', 'Pantoja', 'mjpantoja@gmail.com', '12345', 'admin', 'Admin-Gwapa'),
(3, 'Jomar', 'Magdalaga', 'jomar.magdalaga@cit.edu', '12345', 'admin', 'admin-Jomar'),
(4, 'Jing', 'Beifong', 'jinglebellrocks@gmail.com', '123312', 'beneficiary', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add beneficiary', 7, 'add_beneficiary'),
(26, 'Can change beneficiary', 7, 'change_beneficiary'),
(27, 'Can delete beneficiary', 7, 'delete_beneficiary'),
(28, 'Can view beneficiary', 7, 'view_beneficiary'),
(29, 'Can add address', 8, 'add_address'),
(30, 'Can change address', 8, 'change_address'),
(31, 'Can delete address', 8, 'delete_address'),
(32, 'Can view address', 8, 'view_address'),
(33, 'Can add amount_ tracker', 9, 'add_amount_tracker'),
(34, 'Can change amount_ tracker', 9, 'change_amount_tracker'),
(35, 'Can delete amount_ tracker', 9, 'delete_amount_tracker'),
(36, 'Can view amount_ tracker', 9, 'view_amount_tracker'),
(37, 'Can add currency', 10, 'add_currency'),
(38, 'Can change currency', 10, 'change_currency'),
(39, 'Can delete currency', 10, 'delete_currency'),
(40, 'Can view currency', 10, 'view_currency'),
(41, 'Can add dik', 11, 'add_dik'),
(42, 'Can change dik', 11, 'change_dik'),
(43, 'Can delete dik', 11, 'delete_dik'),
(44, 'Can view dik', 11, 'view_dik'),
(45, 'Can add goods_ tracker', 12, 'add_goods_tracker'),
(46, 'Can change goods_ tracker', 12, 'change_goods_tracker'),
(47, 'Can delete goods_ tracker', 12, 'delete_goods_tracker'),
(48, 'Can view goods_ tracker', 12, 'view_goods_tracker'),
(49, 'Can add goods detail', 13, 'add_goodsdetail'),
(50, 'Can change goods detail', 13, 'change_goodsdetail'),
(51, 'Can delete goods detail', 13, 'delete_goodsdetail'),
(52, 'Can view goods detail', 13, 'view_goodsdetail'),
(53, 'Can add cash details', 14, 'add_cashdetails'),
(54, 'Can change cash details', 14, 'change_cashdetails'),
(55, 'Can delete cash details', 14, 'delete_cashdetails'),
(56, 'Can view cash details', 14, 'view_cashdetails'),
(57, 'Can add donor', 15, 'add_donor'),
(58, 'Can change donor', 15, 'change_donor'),
(59, 'Can delete donor', 15, 'delete_donor'),
(60, 'Can view donor', 15, 'view_donor'),
(61, 'Can add admin staff', 16, 'add_adminstaff'),
(62, 'Can change admin staff', 16, 'change_adminstaff'),
(63, 'Can delete admin staff', 16, 'delete_adminstaff'),
(64, 'Can view admin staff', 16, 'view_adminstaff'),
(65, 'Can add goods details', 13, 'add_goodsdetails'),
(66, 'Can change goods details', 13, 'change_goodsdetails'),
(67, 'Can delete goods details', 13, 'delete_goodsdetails'),
(68, 'Can view goods details', 13, 'view_goodsdetails'),
(69, 'Can add support ticket', 17, 'add_supportticket'),
(70, 'Can change support ticket', 17, 'change_supportticket'),
(71, 'Can delete support ticket', 17, 'delete_supportticket'),
(72, 'Can view support ticket', 17, 'view_supportticket'),
(73, 'Can add feedback', 18, 'add_feedback'),
(74, 'Can change feedback', 18, 'change_feedback'),
(75, 'Can delete feedback', 18, 'delete_feedback'),
(76, 'Can view feedback', 18, 'view_feedback');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$pZPxbr4dmbRaAoY3hbKUzV$BhdYfYl6ePD91SAdCl8uqyV4VHdgN++R3xPPDQZ/FS8=', '2023-10-05 14:14:39.614412', 1, 'Admin', '', '', 'mikhaellajing.carumbana@cit.edu', 1, 1, '2023-10-05 14:14:01.771306'),
(2, 'pbkdf2_sha256$600000$FsK6GrhAPJH1URwpvP9BSJ$m7Ds0RhTZW3/8XQJ4OdOTDC3RuKlEff8rvT3Oi12z2c=', '2023-10-05 15:15:52.000000', 1, 'jingbeifong', 'Jing', 'Beifong', 'jingbeifong@gmail.com', 1, 1, '2023-10-05 15:14:51.000000'),
(3, 'pbkdf2_sha256$600000$mBkZmfEon9vvULAgJgkkTU$8CIeB6aOTpRf013t+xobxlklv5CHacfbLn18WLdNbLI=', '2023-10-06 03:14:52.000000', 1, 'Jomar', 'Jomar', 'Magdalaga', 'jomar.magdalaga@cit.edu', 1, 1, '2023-10-06 03:14:30.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_address`
--

CREATE TABLE `beneficiary_address` (
  `id` bigint(20) NOT NULL,
  `house_number` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beneficiary_address`
--

INSERT INTO `beneficiary_address` (`id`, `house_number`, `city`, `state`, `barangay`, `street`) VALUES
(1, '#2036', 'CEBU CITY', 'Cebu', ' ', ' '),
(2, '#2036', 'Cebu City', 'Cebu', 'Capitol Site', 'M. Velez Street'),
(3, '#2021', 'CEBU CITY', 'CEBU', 'Sambag II', 'M.Velez');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_beneficiary`
--

CREATE TABLE `beneficiary_beneficiary` (
  `UserID` bigint(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `UserType` varchar(12) NOT NULL,
  `Needs` varchar(200) NOT NULL,
  `Address_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beneficiary_beneficiary`
--

INSERT INTO `beneficiary_beneficiary` (`UserID`, `FirstName`, `LastName`, `EmailAddress`, `Password`, `UserType`, `Needs`, `Address_id`) VALUES
(1, 'Jinguuu', 'Bells', 'jingbells@gmail.com', '123', 'beneficiary', 'Food', 2),
(2, 'JingleBells', 'Bellbell', 'jinglebellrocks@gmail.com', '1234', 'beneficiary', 'Food', 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-05 15:14:53.287672', '2', 'jingbeifong', 1, '[{\"added\": {}}]', 4, 1),
(2, '2023-10-05 15:16:14.225769', '2', 'jingbeifong', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Last login\"]}}]', 4, 1),
(3, '2023-10-05 15:16:17.700553', '2', 'jingbeifong', 2, '[]', 4, 1),
(4, '2023-10-05 15:18:21.591232', '1', '#2036, CEBU CITY, Cebu', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-10-05 15:22:44.511734', '2', '#2036, M. Velez Street, Capitol Site, Cebu City, Cebu', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-10-05 15:22:46.084686', '1', 'Jinguuu Bells', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-10-05 17:01:35.177277', '3', 'Jingle Bells', 1, '[{\"added\": {}}]', 15, 1),
(8, '2023-10-05 17:01:42.035722', '3', 'Jingle Bells', 2, '[{\"changed\": {\"fields\": [\"UserType\"]}}]', 15, 1),
(9, '2023-10-05 17:15:25.423005', '1', 'Admin-Jing', 1, '[{\"added\": {}}]', 16, 1),
(10, '2023-10-06 01:12:10.213467', '3', '#2021, M.Velez, Sambag II, CEBU CITY, CEBU', 1, '[{\"added\": {}}]', 8, 1),
(11, '2023-10-06 01:12:13.426258', '2', 'JingleBells Bellbell', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-10-06 01:12:17.063293', '2', 'JingleBells Bellbell', 2, '[]', 7, 1),
(13, '2023-10-06 01:13:13.317974', '2', 'Admin-Gwapa', 1, '[{\"added\": {}}]', 16, 1),
(14, '2023-10-06 01:14:08.108595', '4', 'Rowen Reyes', 1, '[{\"added\": {}}]', 15, 1),
(15, '2023-10-06 02:30:58.232102', '6', 'asdasd asdasda', 1, '[{\"added\": {}}]', 15, 1),
(16, '2023-10-06 02:31:12.633327', '1', 'CashDetails object (1)', 1, '[{\"added\": {}}]', 14, 1),
(17, '2023-10-06 03:12:38.202659', '2', 'CashDetails object (2)', 1, '[{\"added\": {}}]', 14, 1),
(18, '2023-10-06 03:14:31.722333', '3', 'Jomar', 1, '[{\"added\": {}}]', 4, 1),
(19, '2023-10-06 03:14:54.662672', '3', 'Jomar', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\", \"Last login\"]}}]', 4, 1),
(20, '2023-10-06 03:15:08.310409', '2', 'jingbeifong', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 1),
(21, '2023-10-06 04:17:10.226598', '3', 'admin-Jomar', 1, '[{\"added\": {}}]', 16, 1),
(22, '2023-10-06 04:35:36.650862', '1', 'Amount_Tracker object (1)', 1, '[{\"added\": {}}]', 9, 1),
(23, '2023-10-07 02:03:05.777311', '1', 'Currency object (1)', 1, '[{\"added\": {}}]', 10, 1),
(24, '2023-10-07 02:06:04.438845', '2', 'Euro', 1, '[{\"added\": {}}]', 10, 1),
(25, '2023-10-07 02:20:03.731933', '8', 'Dante Alighieri', 1, '[{\"added\": {}}]', 15, 1),
(26, '2023-10-07 02:20:25.691592', '3', 'CashDetails object (3)', 1, '[{\"added\": {}}]', 14, 1),
(27, '2023-10-07 02:21:20.880762', '3', 'US Dollar', 1, '[{\"added\": {}}]', 10, 1),
(28, '2023-10-07 04:22:06.907183', '1', 'Support Ticket 1 - confirmed', 1, '[{\"added\": {}}]', 17, 1),
(29, '2023-10-07 04:23:48.726642', '1', 'Feedback 1 - Ticket: Support Ticket Beifong - confirmed, Admin: Admin-Jing', 1, '[{\"added\": {}}]', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(16, 'AdminStaff', 'adminstaff'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'Beneficiary', 'address'),
(7, 'Beneficiary', 'beneficiary'),
(5, 'contenttypes', 'contenttype'),
(9, 'Donor', 'amount_tracker'),
(14, 'Donor', 'cashdetails'),
(10, 'Donor', 'currency'),
(11, 'Donor', 'dik'),
(15, 'Donor', 'donor'),
(13, 'Donor', 'goodsdetails'),
(12, 'Donor', 'goods_tracker'),
(18, 'Feedback', 'feedback'),
(6, 'sessions', 'session'),
(17, 'SupportTicket', 'supportticket');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-05 14:12:56.140931'),
(2, 'auth', '0001_initial', '2023-10-05 14:12:57.516640'),
(3, 'admin', '0001_initial', '2023-10-05 14:12:57.889960'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-05 14:12:57.922199'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-05 14:12:57.948643'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-05 14:12:58.132496'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-05 14:12:58.288945'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-05 14:12:58.409200'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-05 14:12:58.436712'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-05 14:12:58.623082'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-05 14:12:58.629466'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-05 14:12:58.642431'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-05 14:12:58.677658'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-05 14:12:58.729370'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-05 14:12:58.797594'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-05 14:12:58.825387'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-05 14:12:58.906580'),
(18, 'sessions', '0001_initial', '2023-10-05 14:12:59.009887'),
(19, 'Beneficiary', '0001_initial', '2023-10-05 14:57:46.091522'),
(20, 'Donor', '0001_initial', '2023-10-05 14:57:46.471696'),
(21, 'Beneficiary', '0002_address_barangay_address_street', '2023-10-05 15:21:30.986741'),
(22, 'Donor', '0002_remove_cashdetails_donorid', '2023-10-05 16:57:59.382332'),
(23, 'Donor', '0003_donor_donationtype', '2023-10-05 17:00:41.898381'),
(24, 'Donor', '0004_alter_donor_usertype', '2023-10-05 17:03:23.022821'),
(25, 'Beneficiary', '0003_alter_beneficiary_usertype', '2023-10-05 17:05:06.038418'),
(26, 'AdminStaff', '0001_initial', '2023-10-05 17:12:39.700090'),
(27, 'AdminStaff', '0002_alter_adminstaff_usertype', '2023-10-05 17:14:05.671239'),
(28, 'Donor', '0005_alter_donor_usertype', '2023-10-06 02:32:24.098295'),
(29, 'Donor', '0006_cashdetails_donor_alter_donor_usertype', '2023-10-06 02:52:56.569442'),
(30, 'Donor', '0007_remove_cashdetails_amount_remove_cashdetails_date_and_more', '2023-10-06 02:52:56.973776'),
(31, 'Donor', '0008_cashdetails_amount_cashdetails_date', '2023-10-06 02:52:57.043719'),
(32, 'Donor', '0009_alter_cashdetails_amount_alter_cashdetails_date', '2023-10-06 02:52:57.062355'),
(33, 'Donor', '0010_alter_cashdetails_amount_alter_cashdetails_date', '2023-10-06 02:52:57.065899'),
(34, 'Donor', '0011_cashdetails_donorid', '2023-10-06 02:52:57.282151'),
(35, 'AdminStaff', '0003_alter_adminstaff_usertype', '2023-10-06 04:15:45.241839'),
(36, 'Donor', '0012_alter_amount_tracker_amount_and_more', '2023-10-06 04:30:42.675377'),
(37, 'Donor', '0013_rename_goodsdetail_goodsdetails', '2023-10-06 04:30:42.816681'),
(38, 'Donor', '0014_remove_currency_currencytype', '2023-10-07 02:02:15.627620'),
(39, 'Donor', '0015_currency_currencytype', '2023-10-07 02:05:27.830299'),
(40, 'Donor', '0016_currency_donorid', '2023-10-07 02:19:03.311231'),
(41, 'Donor', '0017_rename_donorid_currency_cashdid', '2023-10-07 02:19:03.810831'),
(42, 'Donor', '0018_remove_currency_cashdid', '2023-10-07 02:19:03.994013'),
(43, 'Donor', '0019_alter_cashdetails_donorid', '2023-10-07 02:19:04.361726'),
(44, 'SupportTicket', '0001_initial', '2023-10-07 04:18:51.949862'),
(45, 'Feedback', '0001_initial', '2023-10-07 04:18:52.232592'),
(46, 'Feedback', '0002_initial', '2023-10-07 04:18:52.374407');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('k52t0dx066wyw32rok2yoxo84a1rchtk', '.eJxVjMsOwiAQRf-FtSFIZ4Bx6d5vIMOjUjWQlHZl_HfbpAvd3nPOfQvP61L82vPspyQu4ixOv1vg-Mx1B-nB9d5kbHWZpyB3RR60y1tL-XU93L-Dwr1sNWnmRJxNdIoCRsOgBktDInRklB0xc4RMGCBqB6AQNj1oNiM6Z0F8vuOBN5A:1qoP7f:TksQzy6EZ0zXtZCWrLBF0RDDp75eErneWtphXVg9sk4', '2023-10-19 14:14:39.622486');

-- --------------------------------------------------------

--
-- Table structure for table `donor_amount_tracker`
--

CREATE TABLE `donor_amount_tracker` (
  `id` bigint(20) NOT NULL,
  `Amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor_amount_tracker`
--

INSERT INTO `donor_amount_tracker` (`id`, `Amount`) VALUES
(1, 2245678);

-- --------------------------------------------------------

--
-- Table structure for table `donor_cashdetails`
--

CREATE TABLE `donor_cashdetails` (
  `id` bigint(20) NOT NULL,
  `Amount` double NOT NULL,
  `Date` date NOT NULL,
  `donorID_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor_cashdetails`
--

INSERT INTO `donor_cashdetails` (`id`, `Amount`, `Date`, `donorID_id`) VALUES
(3, 2000, '2023-10-07', 8);

-- --------------------------------------------------------

--
-- Table structure for table `donor_currency`
--

CREATE TABLE `donor_currency` (
  `CurrencyID` bigint(20) NOT NULL,
  `CurrencyType` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor_currency`
--

INSERT INTO `donor_currency` (`CurrencyID`, `CurrencyType`) VALUES
(3, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `donor_dik`
--

CREATE TABLE `donor_dik` (
  `DikID` bigint(20) NOT NULL,
  `DikType` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_donor`
--

CREATE TABLE `donor_donor` (
  `UserID` bigint(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `UserType` varchar(12) NOT NULL,
  `DonationType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor_donor`
--

INSERT INTO `donor_donor` (`UserID`, `FirstName`, `LastName`, `EmailAddress`, `Password`, `UserType`, `DonationType`) VALUES
(3, 'Jingle', 'Bells', 'rock@gmail.com', '123', 'beneficiary', 'cash'),
(4, 'Rowen', 'Reyes', 'rowenreyes@gmail.com', '12345', 'donor', 'cash'),
(6, 'asdasd', 'asdasda', 'asdasd', 'asdasda', 'donor', 'cash'),
(8, 'Dante', 'Alighieri', 'danteinferno@gmail.com', '1234', 'donor', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `donor_goodsdetails`
--

CREATE TABLE `donor_goodsdetails` (
  `id` bigint(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Expiry` date NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_goods_tracker`
--

CREATE TABLE `donor_goods_tracker` (
  `id` bigint(20) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_feedback`
--

CREATE TABLE `feedback_feedback` (
  `FeedbackID` bigint(20) NOT NULL,
  `Contents` varchar(500) NOT NULL,
  `AdminName_id` bigint(20) NOT NULL,
  `SupportTicket_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_feedback`
--

INSERT INTO `feedback_feedback` (`FeedbackID`, `Contents`, `AdminName_id`, `SupportTicket_id`) VALUES
(1, 'Hey, this is admin-Jing, your Support Ticket has been confirmed', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supportticket_supportticket`
--

CREATE TABLE `supportticket_supportticket` (
  `adminstaff_ptr_id` bigint(20) NOT NULL,
  `TicketID` bigint(20) NOT NULL,
  `Contents` varchar(500) NOT NULL,
  `ConfirmationType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supportticket_supportticket`
--

INSERT INTO `supportticket_supportticket` (`adminstaff_ptr_id`, `TicketID`, `Contents`, `ConfirmationType`) VALUES
(4, 1, 'Hey I have some concerns', 'confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminstaff_adminstaff`
--
ALTER TABLE `adminstaff_adminstaff`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `beneficiary_address`
--
ALTER TABLE `beneficiary_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_beneficiary`
--
ALTER TABLE `beneficiary_beneficiary`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `Beneficiary_benefici_Address_id_24817f6e_fk_Beneficia` (`Address_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `donor_amount_tracker`
--
ALTER TABLE `donor_amount_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor_cashdetails`
--
ALTER TABLE `donor_cashdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Donor_cashdetails_donorID_id_3d1bef71_fk_Donor_donor_UserID` (`donorID_id`);

--
-- Indexes for table `donor_currency`
--
ALTER TABLE `donor_currency`
  ADD PRIMARY KEY (`CurrencyID`);

--
-- Indexes for table `donor_dik`
--
ALTER TABLE `donor_dik`
  ADD PRIMARY KEY (`DikID`);

--
-- Indexes for table `donor_donor`
--
ALTER TABLE `donor_donor`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `donor_goodsdetails`
--
ALTER TABLE `donor_goodsdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor_goods_tracker`
--
ALTER TABLE `donor_goods_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_feedback`
--
ALTER TABLE `feedback_feedback`
  ADD PRIMARY KEY (`FeedbackID`),
  ADD UNIQUE KEY `AdminName_id` (`AdminName_id`),
  ADD UNIQUE KEY `SupportTicket_id` (`SupportTicket_id`);

--
-- Indexes for table `supportticket_supportticket`
--
ALTER TABLE `supportticket_supportticket`
  ADD PRIMARY KEY (`TicketID`),
  ADD UNIQUE KEY `adminstaff_ptr_id` (`adminstaff_ptr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminstaff_adminstaff`
--
ALTER TABLE `adminstaff_adminstaff`
  MODIFY `UserID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_address`
--
ALTER TABLE `beneficiary_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `beneficiary_beneficiary`
--
ALTER TABLE `beneficiary_beneficiary`
  MODIFY `UserID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `donor_amount_tracker`
--
ALTER TABLE `donor_amount_tracker`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donor_cashdetails`
--
ALTER TABLE `donor_cashdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donor_currency`
--
ALTER TABLE `donor_currency`
  MODIFY `CurrencyID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donor_dik`
--
ALTER TABLE `donor_dik`
  MODIFY `DikID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_donor`
--
ALTER TABLE `donor_donor`
  MODIFY `UserID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donor_goodsdetails`
--
ALTER TABLE `donor_goodsdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_goods_tracker`
--
ALTER TABLE `donor_goods_tracker`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_feedback`
--
ALTER TABLE `feedback_feedback`
  MODIFY `FeedbackID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supportticket_supportticket`
--
ALTER TABLE `supportticket_supportticket`
  MODIFY `TicketID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `beneficiary_beneficiary`
--
ALTER TABLE `beneficiary_beneficiary`
  ADD CONSTRAINT `Beneficiary_benefici_Address_id_24817f6e_fk_Beneficia` FOREIGN KEY (`Address_id`) REFERENCES `beneficiary_address` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `donor_cashdetails`
--
ALTER TABLE `donor_cashdetails`
  ADD CONSTRAINT `Donor_cashdetails_donorID_id_3d1bef71_fk_Donor_donor_UserID` FOREIGN KEY (`donorID_id`) REFERENCES `donor_donor` (`UserID`);

--
-- Constraints for table `feedback_feedback`
--
ALTER TABLE `feedback_feedback`
  ADD CONSTRAINT `Feedback_feedback_AdminName_id_64125e0d_fk_AdminStaf` FOREIGN KEY (`AdminName_id`) REFERENCES `adminstaff_adminstaff` (`UserID`),
  ADD CONSTRAINT `Feedback_feedback_SupportTicket_id_238f264e_fk_SupportTi` FOREIGN KEY (`SupportTicket_id`) REFERENCES `supportticket_supportticket` (`TicketID`);

--
-- Constraints for table `supportticket_supportticket`
--
ALTER TABLE `supportticket_supportticket`
  ADD CONSTRAINT `SupportTicket_suppor_adminstaff_ptr_id_774bd09d_fk_AdminStaf` FOREIGN KEY (`adminstaff_ptr_id`) REFERENCES `adminstaff_adminstaff` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
