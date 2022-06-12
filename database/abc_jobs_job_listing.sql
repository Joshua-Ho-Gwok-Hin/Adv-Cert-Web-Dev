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
-- Table structure for table `job_listing`
--

DROP TABLE IF EXISTS `job_listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_listing` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `job_industry_id` tinyint NOT NULL,
  `employment_type` tinyint NOT NULL,
  `salary_range_id` tinyint NOT NULL,
  `job_company` varchar(60) DEFAULT NULL,
  `job_title` varchar(100) NOT NULL,
  `job_short` varchar(300) NOT NULL,
  `job_long` varchar(1000) DEFAULT NULL,
  `job_status` tinyint(1) NOT NULL,
  `job_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `job_last_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`job_id`),
  KEY `job_pay_range_idx` (`salary_range_id`),
  KEY `job_type_idx` (`employment_type`),
  KEY `job_industry_idx` (`job_industry_id`),
  CONSTRAINT `job_industry` FOREIGN KEY (`job_industry_id`) REFERENCES `industry` (`industry_id`),
  CONSTRAINT `job_pay_range` FOREIGN KEY (`salary_range_id`) REFERENCES `salary_range` (`salary_range_id`),
  CONSTRAINT `job_type` FOREIGN KEY (`employment_type`) REFERENCES `employment_type` (`employment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_listing`
--

LOCK TABLES `job_listing` WRITE;
/*!40000 ALTER TABLE `job_listing` DISABLE KEYS */;
INSERT INTO `job_listing` VALUES (1,57,9,5,3,'Myworks','Senior Cost Accountant','Toxic effect of taipan venom, undetermined, subs encntr','Sunburn',1,'2021-07-09 14:09:33','2022-03-20 10:37:29'),(2,10,4,1,5,'Innotype','Assistant Manager','External constrict of unsp eyelid and periocular area, init','Phthirus pubis [pubic louse]',0,'2022-02-13 03:31:05','2022-03-20 10:37:29'),(3,92,4,6,3,'Miboo','Health Coach III','Ped on rolr-skt inj in clsn w nonmtr vehicle in traf, sqla','Intestinal infection due to enteroinvasive E. coli',0,'2021-03-23 04:50:21','2022-03-20 10:37:29'),(4,19,2,1,3,'Yombu','VP Marketing','Displ transverse fx shaft of unsp ulna, 7thK','Blister of hand(s) except finger(s) alone, without mention of infection',0,'2021-12-16 18:38:25','2022-03-20 10:37:29'),(5,73,6,5,1,'Feednation','Payment Adjustment Coordinator','External constriction of upper arm','Vascular abnormalities of conjunctiva',0,'2022-03-06 20:20:42','2022-03-20 10:37:29'),(6,73,8,6,5,'Skyba','Senior Cost Accountant','Chronic embolism and thombos of deep vein of low extrm, bi','Cord around neck with compression, complicating labor and delivery, unspecified as to episode of care or not applicable',1,'2021-09-21 18:59:27','2022-03-20 10:37:29'),(7,81,9,3,6,'Gevee','Safety Technician I','Cholesteatoma of tympanum, unspecified ear','Screening for lipoid disorders',1,'2022-02-11 17:53:22','2022-03-20 10:37:29'),(8,52,5,1,3,'Gabvine','Structural Analysis Engineer','Civilian in water injured by military watercraft, init','Pituitary dwarfism',1,'2021-05-19 07:48:42','2022-03-20 10:37:29'),(9,89,8,4,3,'Skalith','Legal Assistant','Contusion of diaphragm, subsequent encounter','Hemorrhage from throat',0,'2021-10-01 16:41:02','2022-03-20 10:37:29'),(10,61,1,1,4,'Skibox','Librarian','Other tear of medial meniscus, current injury, right knee','Accidental fall from or out of building or other structure',1,'2021-06-30 12:39:56','2022-03-20 10:37:29');
/*!40000 ALTER TABLE `job_listing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 14:55:14
