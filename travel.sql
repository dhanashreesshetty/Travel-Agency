-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2019 at 11:44 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add station', 7, 'add_station'),
(26, 'Can change station', 7, 'change_station'),
(27, 'Can delete station', 7, 'delete_station'),
(28, 'Can view station', 7, 'view_station'),
(29, 'Can add train', 8, 'add_train'),
(30, 'Can change train', 8, 'change_train'),
(31, 'Can delete train', 8, 'delete_train'),
(32, 'Can view train', 8, 'view_train'),
(33, 'Can add profile', 9, 'add_profile'),
(34, 'Can change profile', 9, 'change_profile'),
(35, 'Can delete profile', 9, 'delete_profile'),
(36, 'Can view profile', 9, 'view_profile'),
(37, 'Can add reservations', 10, 'add_reservations'),
(38, 'Can change reservations', 10, 'change_reservations'),
(39, 'Can delete reservations', 10, 'delete_reservations'),
(40, 'Can view reservations', 10, 'view_reservations');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$OEAF7DSvQy8k$Yu+ZMlHlvSHMP3cQpuixUi6rRNnUtQ/zLhb8TEsW6Ho=', '2019-04-17 16:16:57.921885', 1, 'travel', '', '', '', 1, 1, '2019-04-12 09:12:43.507201'),
(2, 'pbkdf2_sha256$150000$YuhxJhoETNP0$ajaMCPxDkk03ufecIEjtE0Ab+O/1vUXLfYZ/oUPJy04=', '2019-04-16 11:54:04.393674', 0, 'dhanashree', '', '', 'shettydhanashree65@gmail.com', 0, 1, '2019-04-12 16:31:53.939169'),
(3, 'pbkdf2_sha256$150000$tK2gp22c0Hqe$apHar3ErlLhxEywISmynqZ+VT4MdZvoRYB7SXOO6zKQ=', '2019-04-16 04:54:49.830035', 0, 'Neelam', '', '', '2017.neelam.somai@ves.ac.in', 0, 1, '2019-04-16 04:54:39.674053');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-04-12 09:54:51.526274', '1', 'Station object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2019-04-12 09:55:13.398807', '2', 'Station object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2019-04-12 09:56:39.040997', '3', 'Station object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2019-04-12 09:57:15.920596', '4', 'Station object (4)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2019-04-12 09:58:25.267481', '5', 'Station object (5)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2019-04-12 10:22:55.532345', '1', 'Train object (1)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2019-04-12 10:22:56.031816', '2', 'Train object (2)', 1, '[{\"added\": {}}]', 8, 1),
(8, '2019-04-12 10:23:09.750981', '1', 'Train object (1)', 3, '', 8, 1),
(9, '2019-04-12 10:28:58.070969', '3', 'Devagiri Express', 1, '[{\"added\": {}}]', 8, 1),
(10, '2019-04-12 12:04:49.195986', '3', 'Devagiri Express', 2, '[{\"changed\": {\"fields\": [\"source\", \"destination\", \"source_stn\", \"dest_stn\"]}}]', 8, 1),
(11, '2019-04-12 12:06:30.572474', '4', 'Devagiri Express', 1, '[{\"added\": {}}]', 8, 1),
(12, '2019-04-12 12:06:46.878878', '3', 'Devagiri Express', 2, '[]', 8, 1),
(13, '2019-04-12 12:07:59.453881', '5', 'Udyan Express', 1, '[{\"added\": {}}]', 8, 1),
(14, '2019-04-12 12:13:24.198171', '6', 'Nagarcoil Express', 1, '[{\"added\": {}}]', 8, 1),
(15, '2019-04-12 12:14:10.510976', '7', 'Nagarcoil Express', 1, '[{\"added\": {}}]', 8, 1),
(16, '2019-04-16 04:57:01.951312', '7', 'Nagarcoil Express', 2, '[{\"changed\": {\"fields\": [\"price\"]}}]', 8, 1),
(17, '2019-04-16 04:57:13.682030', '5', 'Udyan Express', 2, '[{\"changed\": {\"fields\": [\"price\"]}}]', 8, 1),
(18, '2019-04-17 16:18:35.366089', '8', 'Lucknow Express', 1, '[{\"added\": {}}]', 8, 1),
(19, '2019-04-17 16:19:57.401618', '9', 'Raptisagar Express', 1, '[{\"added\": {}}]', 8, 1),
(20, '2019-04-17 16:21:09.082717', '10', 'Raptisagar Express', 1, '[{\"added\": {}}]', 8, 1),
(21, '2019-04-17 16:27:38.451388', '11', 'Shatabdi Express', 1, '[{\"added\": {}}]', 8, 1),
(22, '2019-04-17 16:28:33.709397', '12', 'Shatabdi Express', 1, '[{\"added\": {}}]', 8, 1),
(23, '2019-04-17 16:30:02.522978', '13', 'Kaveri Express', 1, '[{\"added\": {}}]', 8, 1),
(24, '2019-04-17 16:31:33.981701', '14', 'Kaveri Express', 1, '[{\"added\": {}}]', 8, 1),
(25, '2019-04-17 16:35:29.123923', '15', 'Gorakhpur Express', 1, '[{\"added\": {}}]', 8, 1),
(26, '2019-04-17 16:38:00.551080', '16', 'Gorakhpur Jn Secunderabad Jn Express', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'website', 'profile'),
(10, 'website', 'reservations'),
(7, 'website', 'station'),
(8, 'website', 'train');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-04-12 09:10:47.366186'),
(2, 'auth', '0001_initial', '2019-04-12 09:10:50.174781'),
(3, 'admin', '0001_initial', '2019-04-12 09:10:57.785288'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-04-12 09:11:02.073199'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-12 09:11:02.341335'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-12 09:11:03.597247'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-12 09:11:04.700732'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-12 09:11:06.101274'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-12 09:11:06.243050'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-12 09:11:07.572518'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-12 09:11:07.712487'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-12 09:11:07.783317'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-12 09:11:09.055641'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-12 09:11:10.490528'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-04-12 09:11:12.612657'),
(16, 'auth', '0011_update_proxy_permissions', '2019-04-12 09:11:12.676424'),
(17, 'sessions', '0001_initial', '2019-04-12 09:11:13.155128'),
(18, 'website', '0001_initial', '2019-04-12 09:38:38.281070'),
(19, 'website', '0002_auto_20190412_1546', '2019-04-12 10:16:23.130116'),
(20, 'website', '0003_train_number', '2019-04-13 11:22:37.970562'),
(21, 'website', '0004_train_price', '2019-04-13 11:31:04.762963'),
(22, 'website', '0005_profile', '2019-04-16 11:28:53.828046'),
(23, 'website', '0006_delete_profile', '2019-04-17 15:05:22.336913'),
(24, 'website', '0007_auto_20190417_2035', '2019-04-17 15:05:23.261595'),
(25, 'website', '0008_auto_20190417_2128', '2019-04-17 15:59:01.338552');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0diwib7pnrwaq9spzm7ap0y4vhwizygy', 'YzUxZmEwY2ZiN2Y1MzcyYzNmMDkxYWZiZjQxNDNhNmFmOTYzZGNiMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMGRiYzk5ZjRhNWIyN2EyNTBkNDRiOTI2YTU0NjEwZWYwOWQ5MTI2In0=', '2019-05-01 16:16:57.981295'),
('10ebrm062xdc33hjrosttbasdlk66785', 'MmVmY2ZkYTg5YTc1ZWExYTc0ZWI5YmNiODBhNWU4ZTdkOGIyN2VjODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDFiYzg4NGFlYmVhZjIzZDlkY2ViNTkxMWM5ZTE3Nzg4ZDUxMzdhIn0=', '2019-04-30 05:02:28.683165'),
('6toshe663tooofpfr47ntgymjzimn0aa', 'YzUxZmEwY2ZiN2Y1MzcyYzNmMDkxYWZiZjQxNDNhNmFmOTYzZGNiMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMGRiYzk5ZjRhNWIyN2EyNTBkNDRiOTI2YTU0NjEwZWYwOWQ5MTI2In0=', '2019-04-26 10:29:41.378484'),
('ftuzmubrefuh4a3za6uyi86663bjk9o1', 'MmVmY2ZkYTg5YTc1ZWExYTc0ZWI5YmNiODBhNWU4ZTdkOGIyN2VjODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDFiYzg4NGFlYmVhZjIzZDlkY2ViNTkxMWM5ZTE3Nzg4ZDUxMzdhIn0=', '2019-04-30 11:54:04.451560');

-- --------------------------------------------------------

--
-- Table structure for table `website_profile`
--

CREATE TABLE `website_profile` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactno` int(11) NOT NULL,
  `reserved` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `website_reservations`
--

CREATE TABLE `website_reservations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nta` int(11) NOT NULL,
  `ntc` int(11) NOT NULL,
  `source` longtext NOT NULL,
  `destination` longtext NOT NULL,
  `source_stn` longtext NOT NULL,
  `dest_stn` longtext NOT NULL,
  `doj` datetime(6) NOT NULL,
  `totalfare` int(11) NOT NULL,
  `aadhaarno` int(11) NOT NULL,
  `contactno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `website_station`
--

CREATE TABLE `website_station` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_station`
--

INSERT INTO `website_station` (`id`, `name`) VALUES
(1, 'Bengaluru Junction'),
(2, 'CSMT'),
(3, 'Nampally'),
(4, 'Lucknow Junction'),
(5, 'Chennai Central');

-- --------------------------------------------------------

--
-- Table structure for table `website_train`
--

CREATE TABLE `website_train` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `source` longtext NOT NULL,
  `destination` longtext NOT NULL,
  `d_time` datetime(6) NOT NULL,
  `a_time` datetime(6) NOT NULL,
  `seats` int(11) NOT NULL,
  `dest_stn` longtext NOT NULL,
  `source_stn` longtext NOT NULL,
  `number` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_train`
--

INSERT INTO `website_train` (`id`, `name`, `source`, `destination`, `d_time`, `a_time`, `seats`, `dest_stn`, `source_stn`, `number`, `price`) VALUES
(2, 'Udyan Express', 'Mumbai', 'Bengaluru', '2019-04-12 08:10:00.000000', '2019-04-12 09:00:00.000000', 96, 'Bengaluru Junction', 'CSMT', 0, 0),
(3, 'Devagiri Express', 'Hyderabad', 'Mumbai', '2019-04-12 10:28:00.000000', '2019-04-12 03:05:00.000000', 91, 'CSMT', 'Nampally', 0, 0),
(4, 'Devagiri Express', 'Mumbai', 'Hyderabad', '2019-04-12 12:06:20.000000', '2019-04-12 12:06:22.000000', 100, 'Nampally', 'CSMT', 0, 0),
(5, 'Udyan Express', 'Bengaluru', 'Mumbai', '2019-04-12 12:07:50.000000', '2019-04-12 12:07:53.000000', 56, 'CSMT', 'Bengaluru Junction', 0, 500),
(6, 'Nagarcoil Express', 'Mumbai', 'Bengaluru', '2019-04-12 12:13:16.000000', '2019-04-12 12:13:18.000000', 92, 'Bengaluru Junction', 'CSMT', 0, 0),
(7, 'Nagarcoil Express', 'Bengaluru', 'Mumbai', '2019-04-12 12:14:01.000000', '2019-04-12 12:14:04.000000', 100, 'CSMT', 'Bengaluru Junction', 0, 500),
(8, 'Lucknow Express', 'Chennai', 'Lucknow', '2019-04-17 16:17:56.000000', '2019-04-17 16:18:08.000000', 165, 'Lucknow Nr.', 'Chennai Central', 0, 1000),
(9, 'Raptisagar Express', 'Chennai', 'Lucknow', '2019-04-17 16:19:34.000000', '2019-04-17 16:19:37.000000', 180, 'Lucknow Nr.', 'Chennai Central', 0, 1000),
(10, 'Raptisagar Express', 'Lucknow', 'Chennai', '2019-04-17 16:20:38.000000', '2019-04-17 16:20:41.000000', 150, 'Chenna Central', 'Lucknow Nr.', 0, 1000),
(11, 'Shatabdi Express', 'Chennai', 'Bengaluru', '2019-04-17 16:27:15.000000', '2019-04-17 16:27:18.000000', 200, 'Bengaluru Junction', 'Chennai Central', 0, 400),
(12, 'Shatabdi Express', 'Bengaluru', 'Chennai', '2019-04-17 16:28:17.000000', '2019-04-17 16:28:20.000000', 200, 'Chennai Central', 'Bengaluru Junction', 0, 400),
(13, 'Kaveri Express', 'Chennai', 'Bengaluru', '2019-04-17 16:29:00.000000', '2019-04-17 05:45:00.000000', 142, 'Bengaluru Junction', 'Chennai Central', 0, 400),
(14, 'Kaveri Express', 'Bengaluru', 'Chennai', '2019-04-17 04:42:00.000000', '2019-04-17 11:55:00.000000', 142, 'Chennai Central', 'Bengaluru Junction', 0, 400),
(15, 'Gorakhpur Express', 'Hyderabad', 'Lucknow', '2019-04-17 02:33:00.000000', '2019-04-17 08:10:00.000000', 232, 'Badshahnagar', 'Secunderabad Junction', 0, 800),
(16, 'Gorakhpur Jn Secunderabad Jn Express', 'Lucknow', 'Hyderabad', '2019-04-17 10:52:00.000000', '2019-04-17 01:15:00.000000', 282, 'Secunderabad', 'Badshahnagar', 0, 800);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `website_profile`
--
ALTER TABLE `website_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_reservations`
--
ALTER TABLE `website_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_station`
--
ALTER TABLE `website_station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_train`
--
ALTER TABLE `website_train`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `website_profile`
--
ALTER TABLE `website_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_reservations`
--
ALTER TABLE `website_reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_station`
--
ALTER TABLE `website_station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `website_train`
--
ALTER TABLE `website_train`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
