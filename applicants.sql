-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
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

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

CREATE TABLE `applicants` (
	`ID` INT(11) NOT NULL AUTO_INCREMENT,
	`LastName` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`FirstName` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`MiddleName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`DateOfBirth` DATE NULL DEFAULT NULL,
	`Address` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`PhoneNumber` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`Email` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`Gender` ENUM('Male','Female') NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`Nationality` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`Photo` BLOB NULL DEFAULT NULL,
	PRIMARY KEY (`ID`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=22
;
