-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_messageboard
CREATE DATABASE IF NOT EXISTS `db_messageboard` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_messageboard`;

-- Dumping structure for table db_messageboard.conversations
CREATE TABLE IF NOT EXISTS `conversations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `inbox_hash` varchar(191) NOT NULL,
  `last_message` text NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(191) DEFAULT NULL,
  `modified_id` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_messageboard.conversations: ~1 rows (approximately)
INSERT INTO `conversations` (`id`, `sender_id`, `recipient_id`, `inbox_hash`, `last_message`, `created`, `modified`, `created_ip`, `modified_id`) VALUES
	(1, 1, 2, '840334302023', 'Yoo Wazzup', '2023-04-30 12:40:19', '2023-04-30 12:40:20', NULL, NULL);

-- Dumping structure for table db_messageboard.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `inbox_hash` varchar(191) NOT NULL,
  `message` text,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `created_ip` varchar(191) DEFAULT NULL,
  `modified_id` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_messageboard.messages: ~2 rows (approximately)
INSERT INTO `messages` (`id`, `sender_id`, `inbox_hash`, `message`, `created`, `modified`, `created_ip`, `modified_id`) VALUES
	(1, 1, '840334302023', 'Hello', '2023-04-30 12:45:42', '2023-04-30 12:45:44', NULL, NULL),
	(2, 2, '840334302023', 'Yoo Wazzup', '2023-04-30 12:46:07', '2023-04-30 12:46:10', NULL, NULL);

-- Dumping structure for table db_messageboard.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `photo` text,
  `name` varchar(191) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `hubby` text,
  `last_login_time` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_ip` varchar(191) DEFAULT NULL,
  `modified_ip` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_messageboard.users: ~42 rows (approximately)
INSERT INTO `users` (`id`, `email`, `password`, `photo`, `name`, `gender`, `birthday`, `hubby`, `last_login_time`, `created`, `modified`, `created_ip`, `modified_ip`) VALUES
	(1, 'dj.degamo.p@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', '1682753980_3213213.jpg', 'Dan Jovit Degamo', 'male', '2018-03-05', 'dsaddsadsadsadsadsadsadsadsadsa', '2023-04-30 03:38:36', '2023-04-30 09:38:36', '2023-04-30 03:38:36', NULL, '::1'),
	(2, 'mark@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', '1682782555_421321523521.jpg', 'Mark Renson Escabas', 'male', '2023-04-19', 'dsadsadsadsadsad dsadjsoaidjoas jdsaj ;ldsaj; djsa;lk dsadsadsadsa', '2023-04-29 09:35:20', '2023-04-29 15:35:55', '2023-04-29 09:35:55', NULL, '::1'),
	(3, 'levan@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'levan sugar', NULL, NULL, NULL, '2023-04-29 11:44:17', '2023-04-29 17:44:17', '2023-04-29 11:44:17', '::1', NULL),
	(4, 'dj.degamo.p321321@gmail.com', 'e5c3642ab3336cf874431b8ca151e8257679bbae', NULL, 'yawa3213', NULL, NULL, NULL, NULL, '2023-04-29 09:41:52', '2023-04-29 09:41:52', '::1', NULL),
	(5, 'dsadsa@gmail.com', 'e6e4e13509c8c4becc5872f14d3ca716fec4c629', NULL, 'Dan Jo3123', NULL, NULL, NULL, NULL, '2023-04-29 09:43:04', '2023-04-29 09:43:04', '::1', NULL),
	(6, 'yawa@gmail.com', '3d2a2e0be7bf84d074b6a04d4f1d29bb00d62df4', NULL, 'Dan Jo321321', NULL, NULL, NULL, NULL, '2023-04-29 09:44:27', '2023-04-29 09:44:27', '::1', NULL),
	(7, 'yawa3213@gmail.com', '1b64e1a0f6619a449c0b2c261f6f54d76cc044df', NULL, 'Dan Jovit dsad', NULL, NULL, NULL, NULL, '2023-04-29 09:45:27', '2023-04-29 09:45:27', '::1', NULL),
	(8, 'dj.degamo.p321321321@gmail.com', 'e0ffabd3a93ea975bc2bf6b378adc76d8109fa28', NULL, 'Dan Jovit', NULL, NULL, NULL, NULL, '2023-04-29 09:47:54', '2023-04-29 09:47:54', '::1', NULL),
	(9, 'lucky@gmail.com', 'c53b4ff08d290cdfa26cac35cebfeebf6442e74a', NULL, 'lucky', NULL, NULL, NULL, NULL, '2023-04-29 09:51:39', '2023-04-29 09:51:39', '::1', NULL),
	(10, 'paul@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', '1682846006_3213213.jpg', 'John Paul Escabas', 'male', '1970-01-01', 'Playing basketball ', '2023-04-30 02:10:59', '2023-04-30 09:13:26', '2023-04-30 03:13:26', '::1', '::1'),
	(11, 'karen@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'karen inoc', NULL, NULL, NULL, NULL, '2023-04-29 10:01:46', '2023-04-29 10:01:46', '::1', NULL),
	(12, 'karen321321@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'karen inoc', NULL, NULL, NULL, NULL, '2023-04-29 10:03:47', '2023-04-29 10:03:47', '::1', NULL),
	(13, 'karen3213dsadsad21@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'karen inoc', NULL, NULL, NULL, NULL, '2023-04-29 10:04:21', '2023-04-29 10:04:21', '::1', NULL),
	(14, 'lenard@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'lenard ', NULL, NULL, NULL, NULL, '2023-04-29 10:05:28', '2023-04-29 10:05:28', '::1', NULL),
	(15, 'lenard213@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'lenard ', NULL, NULL, NULL, NULL, '2023-04-29 10:13:07', '2023-04-29 10:13:07', '::1', NULL),
	(16, 'hermel@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Hermel Tura', NULL, NULL, NULL, NULL, '2023-04-29 10:16:55', '2023-04-29 10:16:55', '::1', NULL),
	(17, 'cheremae@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Cheremae', NULL, NULL, NULL, NULL, '2023-04-29 10:18:49', '2023-04-29 10:18:49', '::1', NULL),
	(18, 'vince@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', '1682785869_321321321.jpg', 'Vince Quinaging', 'male', '2023-04-17', 'dsadsadsadsa', NULL, '2023-04-29 16:31:09', '2023-04-29 10:31:09', '::1', NULL),
	(19, 'jeremay@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Jeremay', NULL, NULL, NULL, NULL, '2023-04-29 10:37:00', '2023-04-29 10:37:00', '::1', NULL),
	(20, 'jeremay123@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Jeremay', NULL, NULL, NULL, NULL, '2023-04-29 10:37:33', '2023-04-29 10:37:33', '::1', NULL),
	(21, 'jeremay44@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Jeremay', NULL, NULL, NULL, NULL, '2023-04-29 10:38:52', '2023-04-29 10:38:52', '::1', NULL),
	(22, 'jeremay55@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Jeremay', NULL, NULL, NULL, NULL, '2023-04-29 10:41:17', '2023-04-29 10:41:17', '::1', NULL),
	(23, 'jeremay33@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Jeremay', NULL, NULL, NULL, NULL, '2023-04-29 10:41:32', '2023-04-29 10:41:32', '::1', NULL),
	(24, 'jeremay11@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Jeremay', NULL, NULL, NULL, NULL, '2023-04-29 10:42:01', '2023-04-29 10:42:01', '::1', NULL),
	(25, 'kentoy@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Kentoy123', NULL, NULL, NULL, NULL, '2023-04-29 10:43:13', '2023-04-29 10:43:13', '::1', NULL),
	(26, 'mari@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'maria', NULL, NULL, NULL, NULL, '2023-04-29 10:50:06', '2023-04-29 10:50:06', '::1', NULL),
	(27, 'gian@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Gian Naborda', NULL, NULL, NULL, NULL, '2023-04-29 10:54:52', '2023-04-29 10:54:52', '::1', NULL),
	(28, 'charles@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Charles David', NULL, NULL, NULL, NULL, '2023-04-29 11:09:18', '2023-04-29 11:09:18', '::1', NULL),
	(29, 'dionne@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Dionne Francis', NULL, NULL, NULL, NULL, '2023-04-29 11:10:12', '2023-04-29 11:10:12', '::1', NULL),
	(30, 'dionne123@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Dionne Francis', NULL, NULL, NULL, NULL, '2023-04-29 11:10:26', '2023-04-29 11:10:26', '::1', NULL),
	(31, 'dionn33@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Dionne Francis', NULL, NULL, NULL, NULL, '2023-04-29 11:12:01', '2023-04-29 11:12:01', '::1', NULL),
	(32, 'dionne3@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Dionne Francis', NULL, NULL, NULL, NULL, '2023-04-29 11:13:12', '2023-04-29 11:13:12', '::1', NULL),
	(33, 'francis@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Francis', NULL, NULL, NULL, NULL, '2023-04-29 11:13:50', '2023-04-29 11:13:50', '::1', NULL),
	(34, 'precious@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Precious Micah', NULL, NULL, NULL, NULL, '2023-04-29 11:14:27', '2023-04-29 11:14:27', '::1', NULL),
	(35, 'juaning@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Juaning', NULL, NULL, NULL, NULL, '2023-04-29 11:16:15', '2023-04-29 11:16:15', '::1', NULL),
	(36, 'kakay@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Kakay', NULL, NULL, NULL, NULL, '2023-04-29 11:18:19', '2023-04-29 11:18:19', '::1', NULL),
	(37, 'test@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'test123', NULL, NULL, NULL, NULL, '2023-04-29 11:20:24', '2023-04-29 11:20:24', '::1', NULL),
	(38, 'cleofe@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', '1682789136_321321321.jpg', 'Cleofe', 'male', '2023-04-26', 'the quick brown fox jump over the lazy dog near by the river bank', NULL, '2023-04-29 17:25:36', '2023-04-29 11:25:36', '::1', NULL),
	(39, '', '', NULL, '', NULL, NULL, NULL, '2023-04-29 11:40:56', '2023-04-29 11:40:56', '2023-04-29 11:40:56', NULL, NULL),
	(41, 'richmond@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Richmond Emeliano', NULL, NULL, NULL, NULL, '2023-04-29 11:48:13', '2023-04-29 11:48:13', '::1', NULL),
	(42, 'primitivo@gmail.com', '08eaf313dda75d67e553cdf78805e9f140dcb0f4', NULL, 'Primitivo', NULL, NULL, NULL, NULL, '2023-04-29 11:52:24', '2023-04-29 11:52:24', '::1', NULL),
	(43, 'archelle@gmail.com', '6d5bdc5e277b2043ff4bb37fc8c4acb73debd554', '1682791921_3213213.jpg', 'Archelle Ando', 'male', '2018-03-05', 'dsadsadsadsad', NULL, '2023-04-29 18:12:40', '2023-04-29 12:12:40', '::1', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
