-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for quinto
CREATE DATABASE IF NOT EXISTS `quinto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quinto`;

-- Dumping structure for table quinto.profiles
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `address` text,
  `email` varchar(100) DEFAULT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table quinto.profiles: ~2 rows (approximately)
INSERT INTO `profiles` (`id`, `uid`, `firstname`, `lastname`, `address`, `email`, `contact_number`, `birthday`, `date_created`, `date_modified`, `status`) VALUES
	(1, 'UID_695e0fa7b33e4', 'Jimuel', 'Quinto', 'Bangyas', 'admin@gmail.com', '09512444315', '2026-01-07', NULL, NULL, 1),
	(2, 'UID_695e101165798', 'Jimuel', 'Quinto', 'Bangyas', 'jimuel@gmail.com', '09512444315', '2003-04-18', NULL, '2026-01-07', 1);

-- Dumping structure for table quinto.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_unique` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table quinto.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `uid`, `username`, `password`, `date_created`, `date_modified`, `status`) VALUES
	(1, 'UID_695e0fa7b33e4', 'admin', '7488e331b8b64e5794da3fa4eb10ad5d', '2026-01-07', '2026-01-07', 1),
	(2, 'UID_695e101165798', 'kingkong', '827ccb0eea8a706c4c34a16891f84e7b', '2026-01-07', '2026-01-07', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
