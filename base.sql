-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
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


-- Listage de la structure de la base pour we_love_food
CREATE DATABASE IF NOT EXISTS `we_love_food` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `we_love_food`;

-- Listage de la structure de table we_love_food. recipes
CREATE TABLE IF NOT EXISTS `recipes` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `recipe` text NOT NULL,
  `author` varchar(512) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table we_love_food.recipes : 2 rows
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` (`recipe_id`, `title`, `recipe`, `author`, `is_enabled`) VALUES
	(0, 'Cordon bleu', 'Ici nous présentons la recette du cordon bleu.', 'Céline', 0),
	(1, 'Steak frites', 'Présentation du steak frites :\r\n- 2 princées de sel\r\n- des frites\r\n- un steak', 'Jean', 1);
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;

-- Listage de la structure de table we_love_food. users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(64) NOT NULL,
  `email` varchar(512) NOT NULL,
  `password` varchar(512) NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table we_love_food.users : 2 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`, `full_name`, `email`, `password`, `age`) VALUES
	(0, 'CHING', 'celine.ching@gmail.com', 'azerty', 33),
	(1, 'Galzin', 'jean.galzin@gmail.com', 'azerty', 19);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
