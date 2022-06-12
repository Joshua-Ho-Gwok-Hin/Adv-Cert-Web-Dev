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
-- Table structure for table `sent_email`
--

DROP TABLE IF EXISTS `sent_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sent_email` (
  `sent_email_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` smallint NOT NULL,
  `email_subject` varchar(300) DEFAULT NULL,
  `email_content` varchar(1000) DEFAULT NULL,
  `sent_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sent_email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sent_email`
--

LOCK TABLES `sent_email` WRITE;
/*!40000 ALTER TABLE `sent_email` DISABLE KEYS */;
INSERT INTO `sent_email` VALUES (1,3,'Drainage of Right Pelvic Bone, Open Approach','Benign neoplasm of thymus','2021-04-24 14:08:47'),(2,4,'Extirpation of Matter from Vulva, Open Approach','Open fracture of base of skull without mention of intracranial injury, with no loss of consciousness','2021-05-30 01:34:14'),(3,5,'Tomo Nucl Med Imag of Head & Neck using Indium 111','Blizzard (snow) (ice)','2022-01-03 13:03:25'),(4,2,'Removal of Nonaut Sub from Cerv Jt, Perc Approach','Thoracic aneurysm without mention of rupture','2021-06-16 05:08:14'),(5,5,'Restrict R Thyroid Art w Extralum Dev, Perc Endo','Other and unspecified intracranial hemorrhage following injury without mention of open intracranial wound, with prolonged [more than 24 hours] loss of consciousness without return to pre-existing conscious level','2022-02-23 07:19:10'),(6,2,'Extirpate matter from Perineum Subcu/Fascia, Open','Old disruption of anterior cruciate ligament','2021-12-16 20:04:08'),(7,4,'Extirpation of Matter from Aortic Body, Perc Endo Approach','Suspected damage to fetus from viral disease in the mother, affecting management of mother, antepartum condition or complication','2021-04-01 04:07:36'),(8,3,'Insertion of Monitor Dev into Pulm Trunk, Perc Approach','Benign neoplasm of eye, part unspecified','2021-11-01 02:10:31'),(9,3,'Supplement L Int Iliac Art with Synth Sub, Open Approach','Steroid responders borderline glaucoma','2021-09-29 03:02:45'),(10,2,'Plain Radiography of L Com Carotid using L Osm Contrast','Blisters, epidermal loss [second degree] of axilla','2021-11-13 20:34:53');
/*!40000 ALTER TABLE `sent_email` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 14:55:12
