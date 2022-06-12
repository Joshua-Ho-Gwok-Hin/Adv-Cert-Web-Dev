-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: abc_jobs
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `marital_status_id` tinyint DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_profile_edit` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_type_id` int DEFAULT '2',
  `likes` int DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (9,'James','Bond','james@bond.com','F','1989-03-15','Singapore','Singapore',1,'2022-04-12 20:26:32','2022-06-05 18:51:50',1,0),(10,'Hello','Kitty','hello@kitty.com','F','1989-12-31','Singapore','Lion',1,'2022-04-13 01:48:24','2022-04-29 20:31:32',2,0),(13,'Peter','Pan','peter@pan.com','M','1989-12-31','Singapore','Singapore',1,'2022-04-16 12:45:25','2022-05-18 16:11:55',1,0),(14,'Happy','Birthday','happy@birthday.com','M','1989-12-31','Singapore','Singapore',1,'2022-04-19 18:14:16','2022-04-29 20:31:32',2,0),(15,'Burger','King','burger@king.com','M','1989-12-31','Singapore','Singapore',1,'2022-04-20 17:15:23','2022-04-29 20:31:32',2,0),(16,'Green','Tea','green@tea.com','F','1987-12-31','Singapore','Singapore',1,'2022-04-22 11:27:06','2022-04-29 20:31:32',2,0),(18,'Magic','Carpet','magic@carpet.com','F','1987-12-31','Singapore','Singapore',1,'2022-04-22 11:30:42','2022-04-29 20:31:32',2,0),(20,'Dasani','Water','dasani@water.com','F','1987-12-31','Singapore','Singapore',1,'2022-04-25 18:06:29','2022-04-29 20:31:32',2,0),(28,'Navy','Blue','navy@blue.com','M','1987-12-31','Singapore','Singapore',1,'2022-04-29 19:47:53','2022-04-29 20:31:32',2,0),(29,'Abc','De','abc@de.com','F','1989-12-31','Singapore','Singapore',1,'2022-06-05 18:54:30','2022-06-05 18:54:30',2,0),(30,'Copy','Right','copy@right.com','M','1989-12-31','Singapore','Singapore',1,'2022-06-09 12:21:30','2022-06-09 12:24:05',2,0),(31,'EverFresh','Wipes','everfresh@wipes.com','M','1989-12-31','Singapore','Singapore',1,'2022-06-10 13:06:47','2022-06-10 13:08:20',2,0);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 14:55:13
