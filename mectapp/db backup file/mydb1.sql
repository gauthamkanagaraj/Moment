-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 09:04 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add bio', 1, 'add_bio'),
(2, 'Can change bio', 1, 'change_bio'),
(3, 'Can delete bio', 1, 'delete_bio'),
(4, 'Can view bio', 1, 'view_bio'),
(5, 'Can add comment', 2, 'add_comment'),
(6, 'Can change comment', 2, 'change_comment'),
(7, 'Can delete comment', 2, 'delete_comment'),
(8, 'Can view comment', 2, 'view_comment'),
(9, 'Can add darkmode', 3, 'add_darkmode'),
(10, 'Can change darkmode', 3, 'change_darkmode'),
(11, 'Can delete darkmode', 3, 'delete_darkmode'),
(12, 'Can view darkmode', 3, 'view_darkmode'),
(13, 'Can add followers_group', 4, 'add_followers_group'),
(14, 'Can change followers_group', 4, 'change_followers_group'),
(15, 'Can delete followers_group', 4, 'delete_followers_group'),
(16, 'Can view followers_group', 4, 'view_followers_group'),
(17, 'Can add followers_people', 5, 'add_followers_people'),
(18, 'Can change followers_people', 5, 'change_followers_people'),
(19, 'Can delete followers_people', 5, 'delete_followers_people'),
(20, 'Can view followers_people', 5, 'view_followers_people'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add joinrequest', 7, 'add_joinrequest'),
(26, 'Can change joinrequest', 7, 'change_joinrequest'),
(27, 'Can delete joinrequest', 7, 'delete_joinrequest'),
(28, 'Can view joinrequest', 7, 'view_joinrequest'),
(29, 'Can add like', 8, 'add_like'),
(30, 'Can change like', 8, 'change_like'),
(31, 'Can delete like', 8, 'delete_like'),
(32, 'Can view like', 8, 'view_like'),
(33, 'Can add notificationcount', 9, 'add_notificationcount'),
(34, 'Can change notificationcount', 9, 'change_notificationcount'),
(35, 'Can delete notificationcount', 9, 'delete_notificationcount'),
(36, 'Can view notificationcount', 9, 'view_notificationcount'),
(37, 'Can add ntime', 10, 'add_ntime'),
(38, 'Can change ntime', 10, 'change_ntime'),
(39, 'Can delete ntime', 10, 'delete_ntime'),
(40, 'Can view ntime', 10, 'view_ntime'),
(41, 'Can add posts', 11, 'add_posts'),
(42, 'Can change posts', 11, 'change_posts'),
(43, 'Can delete posts', 11, 'delete_posts'),
(44, 'Can view posts', 11, 'view_posts'),
(45, 'Can add privatepost', 12, 'add_privatepost'),
(46, 'Can change privatepost', 12, 'change_privatepost'),
(47, 'Can delete privatepost', 12, 'delete_privatepost'),
(48, 'Can view privatepost', 12, 'view_privatepost'),
(49, 'Can add privatereply', 13, 'add_privatereply'),
(50, 'Can change privatereply', 13, 'change_privatereply'),
(51, 'Can delete privatereply', 13, 'delete_privatereply'),
(52, 'Can view privatereply', 13, 'view_privatereply'),
(53, 'Can add userid', 14, 'add_userid'),
(54, 'Can change userid', 14, 'change_userid'),
(55, 'Can delete userid', 14, 'delete_userid'),
(56, 'Can view userid', 14, 'view_userid'),
(57, 'Can add logout', 15, 'add_logout'),
(58, 'Can change logout', 15, 'change_logout'),
(59, 'Can delete logout', 15, 'delete_logout'),
(60, 'Can view logout', 15, 'view_logout'),
(61, 'Can add log entry', 16, 'add_logentry'),
(62, 'Can change log entry', 16, 'change_logentry'),
(63, 'Can delete log entry', 16, 'delete_logentry'),
(64, 'Can view log entry', 16, 'view_logentry'),
(65, 'Can add permission', 17, 'add_permission'),
(66, 'Can change permission', 17, 'change_permission'),
(67, 'Can delete permission', 17, 'delete_permission'),
(68, 'Can view permission', 17, 'view_permission'),
(69, 'Can add group', 18, 'add_group'),
(70, 'Can change group', 18, 'change_group'),
(71, 'Can delete group', 18, 'delete_group'),
(72, 'Can view group', 18, 'view_group'),
(73, 'Can add user', 19, 'add_user'),
(74, 'Can change user', 19, 'change_user'),
(75, 'Can delete user', 19, 'delete_user'),
(76, 'Can view user', 19, 'view_user'),
(77, 'Can add content type', 20, 'add_contenttype'),
(78, 'Can change content type', 20, 'change_contenttype'),
(79, 'Can delete content type', 20, 'delete_contenttype'),
(80, 'Can view content type', 20, 'view_contenttype'),
(81, 'Can add session', 21, 'add_session'),
(82, 'Can change session', 21, 'change_session'),
(83, 'Can delete session', 21, 'delete_session'),
(84, 'Can view session', 21, 'view_session');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$x76BTK79V3GI$AR9YPmpZsx7gKDFnHoXrKRGKQZaA2V1grrDbjIZ3g5Q=', '2020-10-14 06:10:04.930545', 1, 'ram', '', '', 'ramsankarssc@gmail.com', 1, 1, '2020-10-14 06:09:36.076660');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-10-14 06:15:20.123308', '1', 'userid object (1)', 1, '[{\"added\": {}}]', 14, 1),
(2, '2020-10-14 06:15:54.248716', '1', 'ntime object (1)', 1, '[{\"added\": {}}]', 10, 1),
(3, '2020-10-14 06:16:18.441327', '1', 'notificationcount object (1)', 1, '[{\"added\": {}}]', 9, 1),
(4, '2020-10-14 06:16:35.039338', '1', 'logout object (1)', 1, '[{\"added\": {}}]', 15, 1),
(5, '2020-10-14 06:16:44.470407', '1', 'darkmode object (1)', 1, '[{\"added\": {}}]', 3, 1),
(6, '2020-10-14 06:22:20.914408', '1', 'bio object (1)', 1, '[{\"added\": {}}]', 1, 1),
(7, '2020-10-14 06:27:16.044472', '1', 'userid object (1)', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(16, 'admin', 'logentry'),
(18, 'auth', 'group'),
(17, 'auth', 'permission'),
(19, 'auth', 'user'),
(20, 'contenttypes', 'contenttype'),
(1, 'mectworkplace', 'bio'),
(2, 'mectworkplace', 'comment'),
(3, 'mectworkplace', 'darkmode'),
(4, 'mectworkplace', 'followers_group'),
(5, 'mectworkplace', 'followers_people'),
(6, 'mectworkplace', 'group'),
(7, 'mectworkplace', 'joinrequest'),
(8, 'mectworkplace', 'like'),
(15, 'mectworkplace', 'logout'),
(9, 'mectworkplace', 'notificationcount'),
(10, 'mectworkplace', 'ntime'),
(11, 'mectworkplace', 'posts'),
(12, 'mectworkplace', 'privatepost'),
(13, 'mectworkplace', 'privatereply'),
(14, 'mectworkplace', 'userid'),
(21, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-13 06:11:40.865985'),
(2, 'auth', '0001_initial', '2020-09-13 06:11:43.857690'),
(3, 'admin', '0001_initial', '2020-09-13 06:12:09.520662'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-13 06:12:23.635170'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-13 06:12:24.011384'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-13 06:12:26.695461'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-13 06:12:29.518566'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-13 06:12:29.879021'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-13 06:12:29.979240'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-13 06:12:31.689447'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-13 06:12:31.839535'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-13 06:12:32.075439'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-13 06:12:32.377450'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-13 06:12:32.713089'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-13 06:12:33.250395'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-13 06:12:33.829537'),
(17, 'mectworkplace', '0001_initial', '2020-09-13 06:13:09.469587'),
(18, 'mectworkplace', '0002_logout', '2020-09-13 06:13:10.741241'),
(19, 'sessions', '0001_initial', '2020-09-13 06:13:13.153696');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_bio`
--

CREATE TABLE `mectworkplace_bio` (
  `userid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `acctype` int(11) NOT NULL,
  `designation` int(11) NOT NULL,
  `profilepic` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mectworkplace_bio`
--

INSERT INTO `mectworkplace_bio` (`userid`, `name`, `mobile`, `acctype`, `designation`, `profilepic`) VALUES
(1, 'Palaninatharaja M', '9894094155', 0, 0, 'static/images/profile-user.png'),
(2, 'Kumaraguruparan G', '9865207240', 0, 1, 'static/images/profile-user.png'),
(3, 'KANAGARAJ G', '8667231316', 0, 1, 'static/images/profile-user.png'),
(4, 'Julius Fusic S', '9600663383', 0, 2, 'static/images/profile-user.png'),
(5, 'PARTHASARATHI S', '9843634674', 0, 2, 'static/images/profile-user.png'),
(6, 'RAMESH H', '9486633256', 0, 2, 'static/images/profile-user.png'),
(7, 'GANESH M A', '7598493800', 0, 2, 'static/images/profile-user.png'),
(8, 'SHEIK MASTHAN S A R', '9790935992', 0, 2, 'static/images/profile-user.png'),
(10, 'PRAVEEN KUMAR B', '8939041890', 0, 2, 'static/images/profile-user.png'),
(11, 'DEVARAJAN M M', '9443639739', 0, 2, 'static/images/profile-user.png'),
(12, 'MANIKANDAN S', '9629395025', 0, 2, 'static/images/profile-user.png');

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_comment`
--

CREATE TABLE `mectworkplace_comment` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `commentdata` varchar(45) DEFAULT NULL,
  `commenttime` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_darkmode`
--

CREATE TABLE `mectworkplace_darkmode` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mectworkplace_darkmode`
--

INSERT INTO `mectworkplace_darkmode` (`id`, `userid`, `dark`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 10, 0),
(10, 11, 0),
(11, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_followers_group`
--

CREATE TABLE `mectworkplace_followers_group` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_followers_people`
--

CREATE TABLE `mectworkplace_followers_people` (
  `id` int(11) NOT NULL,
  `id_to_follow` int(11) NOT NULL,
  `id_follow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_group`
--

CREATE TABLE `mectworkplace_group` (
  `groupid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `groupname` varchar(45) NOT NULL,
  `groupdp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mectworkplace_group`
--

INSERT INTO `mectworkplace_group` (`groupid`, `adminid`, `groupname`, `groupdp`) VALUES
(7, 0, 'MECT - General', 'static/group/MECT - General.png'),
(8, 0, 'Sensors and IOT', 'static/group/Sensors and IoT.png'),
(10, 0, 'Robotics', 'static/group/Robotics.png'),
(11, 0, 'Control and Automation', 'static/group/Control and Automation.png'),
(12, 0, 'Tutor Ward', 'static/group/Tutor Ward.png'),
(13, 0, 'Placement', 'static/group/Placement.png'),
(14, 0, 'MIS', 'static/group/MIS.png'),
(15, 0, 'Entrepreneurship', 'static/group/Entrepreneurship.png'),
(16, 0, 'Project', 'static/group/Project.png'),
(17, 0, 'Theory', 'static/group/Theory.png'),
(18, 0, 'Laboratory courses', 'static/group/Laboratory Courses.png'),
(19, 0, 'Theory cum Practical', 'static/group/Theory cum Practical.png'),
(20, 0, 'Time Table', 'static/group/Time Table.png'),
(21, 0, 'Office', 'static/group/Office.png'),
(22, 0, 'COE', 'static/group/COE.png'),
(23, 0, 'MECT Association', 'static/group/MECT Association.png'),
(24, 0, '5S', 'static/group/5S.png'),
(25, 0, 'Industry Interaction', 'static/group/Industry Interaction.png'),
(26, 0, 'GATE Exam', 'static/group/GATE Exam.png'),
(27, 0, 'Center for robotics', 'static/group/Center for Robotics.png'),
(28, 0, 'Product development lab', 'static/group/Product Development Lab.png'),
(29, 0, 'Measurement and Control lab', 'static/group/Measurement and Control Lab.png'),
(30, 0, 'Mechatronics Workshop', 'static/group/Mechatronics Workshop.png'),
(31, 0, 'Sensors Lab', 'static/group/Sensors Lab.png'),
(32, 0, 'Modelling and Simulation Lab', 'static/group/Modelling and Simulation Lab.png'),
(33, 0, 'Bosch Automation Lab', 'static/group/Bosch Automation Lab.png');

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_joinrequest`
--

CREATE TABLE `mectworkplace_joinrequest` (
  `id` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `groupd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_like`
--

CREATE TABLE `mectworkplace_like` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `liketime` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_logout`
--

CREATE TABLE `mectworkplace_logout` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `lflag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mectworkplace_logout`
--

INSERT INTO `mectworkplace_logout` (`id`, `userid`, `lflag`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 10, 1),
(10, 11, 1),
(11, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_notificationcount`
--

CREATE TABLE `mectworkplace_notificationcount` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `nocount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mectworkplace_notificationcount`
--

INSERT INTO `mectworkplace_notificationcount` (`id`, `userid`, `nocount`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 10, 0),
(10, 11, 0),
(11, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_ntime`
--

CREATE TABLE `mectworkplace_ntime` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ptime` varchar(50) NOT NULL,
  `etime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mectworkplace_ntime`
--

INSERT INTO `mectworkplace_ntime` (`id`, `userid`, `ptime`, `etime`) VALUES
(1, 1, '0', '0'),
(2, 2, '0', '0'),
(3, 3, '0', '0'),
(4, 4, '0', '0'),
(5, 5, '0', '0'),
(6, 6, '0', '0'),
(7, 7, '0', '0'),
(8, 8, '0', '0'),
(9, 10, '0', '0'),
(10, 11, '0', '0'),
(11, 12, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_posts`
--

CREATE TABLE `mectworkplace_posts` (
  `postid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `groupid` int(11) NOT NULL,
  `postdata` varchar(500) DEFAULT NULL,
  `imgdata` varchar(100) DEFAULT NULL,
  `posttime` varchar(35) DEFAULT NULL,
  `likecount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_privatepost`
--

CREATE TABLE `mectworkplace_privatepost` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_privatereply`
--

CREATE TABLE `mectworkplace_privatereply` (
  `id` int(11) NOT NULL,
  `idfrom` int(11) NOT NULL,
  `idto` int(11) NOT NULL,
  `replydata` varchar(200) NOT NULL,
  `replytime` varchar(35) DEFAULT NULL,
  `postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mectworkplace_userid`
--

CREATE TABLE `mectworkplace_userid` (
  `userid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mectworkplace_userid`
--

INSERT INTO `mectworkplace_userid` (`userid`, `email`, `password`) VALUES
(1, 'pnatharaja@tce.edu', '$pbkdf2-sha256$29000$HgPAeG/tvTcmZMxZS0kJwQ$lY48vGa2Ak9gg9g1OWOp70gPRCDNHwvTxG.lciQO4EM'),
(2, 'gkgmech@tce.edu', '$pbkdf2-sha256$29000$Oaf0fo/x3ptzDkEIoXSO8Q$uV4aPl3admK.F9UDcQSfXAWY7ONT228sy5npkyniSTE'),
(3, 'gkmech@tce.edu', '$pbkdf2-sha256$29000$QChFSMnZ.7.3tpaScs455w$Zgc8v48/uvouwXA8OhikoigoBnc2.MzP2m8L5697EVg'),
(4, 'sjf@tce.edu', '$pbkdf2-sha256$29000$upeyNsaYEwLAGONcqxWidA$VWtbcwjWmBwJS7XA3A5cuf3pUjXg9zBqCwWkUBHaBHk'),
(5, 'parthasarathi_s@tce.edu', '$pbkdf2-sha256$29000$bG0t5RyjVEpJibG21tr7nw$fYmr1XSRhmgUjtjXciuTxsZya3TGsq85bszGGXy26ok'),
(6, 'rameshh@tce.edu', '$pbkdf2-sha256$29000$grC2lvLemzMmhPDeG2PsPQ$PWnHVlifDT8Fqpln3bD4gvUEDYvmRN/xfykwNTDDudU'),
(7, 'ganeshma2015@tce.edu', '$pbkdf2-sha256$29000$dS5F6N07h/CeEyIEAACAcA$IlYJ0Hyhn4h5RdIchrZ0CojoKOefD161AmUIDstWx90'),
(8, 'sarsmech@tce.edu', '$pbkdf2-sha256$29000$WWsNgZASYoyRMsbY23uPsQ$YvJ8z5jyfWftdL3P4wMHcANUhBdhOnRpj53sEOKULHk'),
(10, 'bpkmech@tce.edu', '$pbkdf2-sha256$29000$11qrVYpRCoGQcu5dS.n93w$s.mUnyCTiDXMvzKySEGCPXOMdLM/zCy7ifFOiinAUHs'),
(11, 'mmdmech@tce.edu', '$pbkdf2-sha256$29000$aM0ZI.S8F2KMESKEUCpFyA$ms5EmrPYnXcIJK1K.2CmFuczvituo9aKDHBBoC/XUrY'),
(12, 'smmect@tce.edu', '$pbkdf2-sha256$29000$CqFUKuV8TwkBgPC.NwYgRA$YGnDKtAqwcRD7lmD6KvoAbGNPq4O97wRI52OK4suL/c');

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
-- Indexes for table `mectworkplace_bio`
--
ALTER TABLE `mectworkplace_bio`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD KEY `fk_bio_id1_idx` (`userid`);

--
-- Indexes for table `mectworkplace_comment`
--
ALTER TABLE `mectworkplace_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_posts1_idx` (`postid`),
  ADD KEY `fk_comment_id1_id` (`userid`);

--
-- Indexes for table `mectworkplace_darkmode`
--
ALTER TABLE `mectworkplace_darkmode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mectworkplace_followers_group`
--
ALTER TABLE `mectworkplace_followers_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_followers_group_groups1_idx` (`groupid`);

--
-- Indexes for table `mectworkplace_followers_people`
--
ALTER TABLE `mectworkplace_followers_people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_followers_people_id1_idx` (`id_to_follow`),
  ADD KEY `fk_followers_people_id2_idx` (`id_follow`);

--
-- Indexes for table `mectworkplace_group`
--
ALTER TABLE `mectworkplace_group`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `mectworkplace_group_groupname_ff0f5fc2_uniq` (`groupname`),
  ADD KEY `fk_groups_id1_idx` (`adminid`);

--
-- Indexes for table `mectworkplace_joinrequest`
--
ALTER TABLE `mectworkplace_joinrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_joinrequest_id1_idx` (`personid`),
  ADD KEY `fk_joinrequest_groups1_idx` (`groupd`);

--
-- Indexes for table `mectworkplace_like`
--
ALTER TABLE `mectworkplace_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_like_posts1_idx` (`postid`),
  ADD KEY `fk_like_id1_idx` (`userid`);

--
-- Indexes for table `mectworkplace_logout`
--
ALTER TABLE `mectworkplace_logout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mectworkplace_notificationcount`
--
ALTER TABLE `mectworkplace_notificationcount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mectworkplace_ntime`
--
ALTER TABLE `mectworkplace_ntime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mectworkplace_posts`
--
ALTER TABLE `mectworkplace_posts`
  ADD PRIMARY KEY (`postid`),
  ADD KEY `fk_posts_groups1_idx` (`groupid`),
  ADD KEY `fk_posts_id1_idx` (`userid`);

--
-- Indexes for table `mectworkplace_privatepost`
--
ALTER TABLE `mectworkplace_privatepost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mectworkplace_privatereply`
--
ALTER TABLE `mectworkplace_privatereply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_privatereply_id1_idx` (`idfrom`),
  ADD KEY `fk_privatereply_id2_idx` (`idto`);

--
-- Indexes for table `mectworkplace_userid`
--
ALTER TABLE `mectworkplace_userid`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `mectworkplace_comment`
--
ALTER TABLE `mectworkplace_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mectworkplace_darkmode`
--
ALTER TABLE `mectworkplace_darkmode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mectworkplace_followers_group`
--
ALTER TABLE `mectworkplace_followers_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mectworkplace_followers_people`
--
ALTER TABLE `mectworkplace_followers_people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mectworkplace_group`
--
ALTER TABLE `mectworkplace_group`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `mectworkplace_joinrequest`
--
ALTER TABLE `mectworkplace_joinrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mectworkplace_like`
--
ALTER TABLE `mectworkplace_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mectworkplace_logout`
--
ALTER TABLE `mectworkplace_logout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mectworkplace_notificationcount`
--
ALTER TABLE `mectworkplace_notificationcount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mectworkplace_ntime`
--
ALTER TABLE `mectworkplace_ntime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mectworkplace_posts`
--
ALTER TABLE `mectworkplace_posts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mectworkplace_privatepost`
--
ALTER TABLE `mectworkplace_privatepost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mectworkplace_privatereply`
--
ALTER TABLE `mectworkplace_privatereply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mectworkplace_userid`
--
ALTER TABLE `mectworkplace_userid`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
