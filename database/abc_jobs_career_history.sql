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
-- Table structure for table `career_history`
--

DROP TABLE IF EXISTS `career_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career_history` (
  `career_id` tinyint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `position` varchar(60) NOT NULL,
  `company` varchar(60) NOT NULL,
  `year_start` year NOT NULL,
  `year_end` year NOT NULL,
  PRIMARY KEY (`career_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_history`
--

LOCK TABLES `career_history` WRITE;
/*!40000 ALTER TABLE `career_history` DISABLE KEYS */;
INSERT INTO `career_history` VALUES (1,55,'Senior Financial Analyst','Yoveo',2020,2022),(2,47,'Cost Accountant','Kwinu',2018,2021),(3,54,'Computer Systems Analyst III','Oodoo',2018,2021),(4,46,'Professor','Brainsphere',2018,2022),(5,65,'Engineer I','Lazz',2020,2022),(6,69,'Budget/Accounting Analyst IV','Mita',2019,2020),(7,53,'Programmer Analyst III','Twinder',2018,2019),(8,65,'Payment Adjustment Coordinator','Dynabox',2018,2020),(9,25,'Geological Engineer','Edgeblab',2020,2020),(10,49,'Dental Hygienist','Yadel',2018,2019),(11,69,'VP Product Management','Tambee',2020,2022),(12,42,'Systems Administrator I','Janyx',2019,2022),(13,68,'Human Resources Manager','Demivee',2018,2020),(14,59,'Paralegal','Gabvine',2020,2021),(15,34,'Dental Hygienist','Ntag',2019,2020),(16,49,'Administrative Assistant II','Dazzlesphere',2019,2020),(17,65,'Accounting Assistant I','Eamia',2020,2020),(18,35,'Senior Quality Engineer','Youbridge',2018,2019),(19,43,'Librarian','Thoughtblab',2018,2019),(20,64,'Research Nurse','Wikibox',2020,2020),(21,35,'Registered Nurse','Youtags',2019,2020),(22,35,'Data Coordiator','Feedbug',2020,2021),(23,31,'Help Desk Technician','Mymm',2018,2020),(24,34,'Compensation Analyst','Livetube',2020,2022),(25,40,'Research Assistant II','Kanoodle',2020,2022),(26,64,'Automation Specialist II','Gigazoom',2019,2020),(27,75,'Registered Nurse','Edgeblab',2020,2021),(28,51,'Senior Cost Accountant','Innotype',2021,2022),(29,73,'Senior Sales Associate','Mita',2020,2022),(30,57,'Budget/Accounting Analyst IV','Quinu',2019,2022),(31,29,'Nurse Practicioner','Edgewire',2018,2019),(32,53,'VP Quality Control','Jaloo',2019,2020),(33,70,'Research Assistant I','Cogilith',2020,2021),(34,40,'Office Assistant II','Reallinks',2019,2020),(35,53,'Accounting Assistant IV','Twimm',2020,2021),(36,75,'Desktop Support Technician','Fadeo',2020,2020),(37,27,'Recruiting Manager','Zoozzy',2018,2019),(38,38,'Analyst Programmer','Wordtune',2020,2022),(39,35,'Budget/Accounting Analyst II','LiveZ',2021,2022),(40,30,'Marketing Assistant','Photospace',2020,2022),(41,54,'Nurse','Skilith',2019,2020),(42,62,'VP Accounting','Twimm',2020,2021),(43,58,'Compensation Analyst','Linklinks',2019,2022),(44,62,'GIS Technical Architect','Dabshots',2021,2022),(45,51,'Compensation Analyst','Jamia',2019,2020),(46,29,'Director of Sales','Youfeed',2019,2020),(47,62,'Database Administrator IV','Tagfeed',2019,2020),(48,40,'Information Systems Manager','Flipstorm',2018,2019),(49,47,'Senior Cost Accountant','Shuffledrive',2021,2022),(50,36,'Software Test Engineer I','Twinder',2018,2020),(51,30,'Business Systems Development Analyst','Eadel',2019,2020),(52,73,'Cost Accountant','Jayo',2019,2020),(53,63,'Nurse Practicioner','Photobean',2019,2020),(54,39,'Assistant Professor','Chatterbridge',2018,2022),(55,58,'Sales Representative','Chatterpoint',2018,2019),(56,49,'Software Test Engineer II','Youtags',2020,2021),(57,50,'Media Manager IV','Tekfly',2020,2021),(58,60,'Nurse','Wikibox',2020,2022),(60,43,'Physical Therapy Assistant','Browsecat',2019,2020),(61,72,'Administrative Officer','Chatterbridge',2019,2021),(62,56,'Computer Systems Analyst I','Myworks',2018,2020),(63,27,'Account Executive','Jayo',2020,2022),(64,61,'VP Marketing','Mydeo',2021,2022),(65,75,'Compensation Analyst','Viva',2018,2020),(66,69,'Physical Therapy Assistant','Devpoint',2018,2019),(67,34,'Registered Nurse','Gigabox',2019,2022),(68,38,'Associate Professor','Zoomlounge',2019,2020),(69,71,'Structural Analysis Engineer','Gabvine',2018,2022),(70,62,'Marketing Manager','Flashset',2018,2019),(71,45,'Statistician II','Browsetype',2019,2020),(72,64,'Physical Therapy Assistant','Miboo',2018,2019),(73,55,'Editor','Skinix',2020,2020),(74,26,'Civil Engineer','Livefish',2020,2021),(75,54,'Analyst Programmer','Youspan',2021,2022),(76,60,'Assistant Media Planner','Vimbo',2018,2020),(77,55,'Actuary','Oyoyo',2019,2020),(78,73,'Quality Control Specialist','Twinte',2018,2019),(79,70,'Dental Hygienist','Yambee',2018,2020),(80,44,'Physical Therapy Assistant','Linkbridge',2018,2019),(81,61,'Analog Circuit Design manager','Minyx',2018,2020),(82,32,'Statistician IV','Topicstorm',2019,2020),(83,74,'Software Engineer II','Vimbo',2019,2022),(84,39,'Human Resources Manager','Flipbug',2018,2021),(85,53,'Librarian','Vinder',2021,2022),(86,48,'Food Chemist','Skivee',2019,2020),(87,32,'Structural Analysis Engineer','Rhynyx',2020,2022),(89,72,'Programmer II','Linktype',2018,2019),(91,68,'Cost Accountant','Devcast',2020,2020),(92,37,'Product Engineer','Gabtype',2020,2022),(93,54,'Web Designer IV','Einti',2018,2018),(94,62,'GIS Technical Architect','Zoomlounge',2019,2019),(95,36,'Health Coach III','Photospace',2020,2020),(96,68,'Staff Scientist','Youfeed',2020,2021),(97,43,'Database Administrator III','Ailane',2020,2022),(98,49,'Environmental Specialist','Tagopia',2021,2020),(99,45,'Assistant Media Planner','Centizu',2021,2022);
/*!40000 ALTER TABLE `career_history` ENABLE KEYS */;
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
