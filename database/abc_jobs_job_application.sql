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
-- Table structure for table `job_application`
--

DROP TABLE IF EXISTS `job_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_application` (
  `job_id` int NOT NULL,
  `user_id` int NOT NULL,
  `asking_salary` int DEFAULT NULL,
  `cover_letter` varchar(1000) DEFAULT NULL,
  `attach_cv` varchar(50) DEFAULT NULL,
  `applied_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `apply_last_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`job_id`,`user_id`),
  KEY `applied_for_idx` (`job_id`),
  CONSTRAINT `applied_for` FOREIGN KEY (`job_id`) REFERENCES `job_listing` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_application`
--

LOCK TABLES `job_application` WRITE;
/*!40000 ALTER TABLE `job_application` DISABLE KEYS */;
INSERT INTO `job_application` VALUES (1,36,5440,'Reposition Right Rib, External Approach',NULL,'2022-03-20 10:42:04','2021-05-02 09:24:50'),(1,56,5844,'Division of Trochlear Nerve, Open Approach',NULL,'2022-03-20 10:42:04','2022-01-12 23:25:48'),(1,67,3697,'Reattachment of Upper Tooth, Single, External Approach',NULL,'2022-03-20 10:42:04','2021-06-17 20:29:27'),(1,75,3960,'Division of Right Trunk Muscle, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2021-11-11 05:50:07'),(2,39,5234,'Plain Radiography of Right Upper Extremity Veins using High Osmolar Contrast',NULL,'2022-03-20 10:42:04','2021-12-05 12:10:07'),(2,40,7295,'Release Sigmoid Colon, Open Approach',NULL,'2022-03-20 10:42:04','2021-08-14 15:50:06'),(2,42,6475,'Replacement of Left Parietal Bone with Autologous Tissue Substitute, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2021-07-27 05:23:16'),(2,49,4575,'Removal of Infusion Device from Cranial Cavity, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-08-06 22:39:42'),(2,55,6391,'Tomographic (Tomo) Nuclear Medicine Imaging of Pelvis using Technetium 99m (Tc-99m)',NULL,'2022-03-20 10:42:04','2021-08-15 22:29:34'),(2,63,4017,'Replacement of Right Innominate Vein with Autologous Tissue Substitute, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2021-12-27 03:27:20'),(2,68,4483,'Replacement of Cystic Duct with Autologous Tissue Substitute, Open Approach',NULL,'2022-03-20 10:42:04','2021-05-11 11:53:09'),(3,34,4411,'Bypass Right Atrium to Pulmonary Trunk with Zooplastic Tissue, Open Approach',NULL,'2022-03-20 10:42:04','2021-05-08 18:57:26'),(3,41,3023,'Excision of Right Sublingual Gland, Open Approach',NULL,'2022-03-20 10:42:04','2022-01-26 08:55:25'),(3,49,4093,'Drainage of Right Knee Joint with Drainage Device, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2022-01-29 20:02:54'),(3,50,7474,'High Dose Rate (HDR) Brachytherapy of Larynx using Iodine 125 (I-125)',NULL,'2022-03-20 10:42:04','2021-09-19 16:14:30'),(3,52,4434,'Drainage of Mesentery, Percutaneous Endoscopic Approach, Diagnostic',NULL,'2022-03-20 10:42:04','2021-04-17 05:52:42'),(3,58,6185,'Revision of External Fixation Device in Left Metacarpocarpal Joint, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2021-06-01 12:36:17'),(3,59,5364,'Reposition Hypoglossal Nerve, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2021-05-21 18:28:21'),(4,26,3049,'Removal of Drainage Device from Right Tarsal Joint, Open Approach',NULL,'2022-03-20 10:42:04','2021-12-03 09:58:28'),(4,29,6717,'Replacement of Right Lower Arm Subcutaneous Tissue and Fascia with Nonautologous Tissue Substitute, Open Approach',NULL,'2022-03-20 10:42:04','2021-04-18 22:44:24'),(4,36,3427,'Replacement of Uvula with Nonautologous Tissue Substitute, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-05-10 02:09:52'),(4,40,7023,'Stereotactic Other Photon Radiosurgery of Neck Lymphatics',NULL,'2022-03-20 10:42:04','2021-05-24 10:35:29'),(4,42,3210,'Drainage of Left Eustachian Tube, Via Natural or Artificial Opening Endoscopic, Diagnostic',NULL,'2022-03-20 10:42:04','2021-08-31 03:37:54'),(4,45,3982,'Control Bleeding in Lower Jaw, Open Approach',NULL,'2022-03-20 10:42:04','2021-12-07 22:50:40'),(4,48,3214,'Supplement of Abdomen Subcutaneous Tissue and Fascia with Autologous Tissue Substitute, Open Approach',NULL,'2022-03-20 10:42:04','2021-10-27 11:04:03'),(5,34,5876,'Replacement of Left Ulnar Artery with Autologous Tissue Substitute, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2022-03-03 03:14:17'),(5,35,6385,'Removal of Monitoring Device from Upper Intestinal Tract, Via Natural or Artificial Opening Endoscopic',NULL,'2022-03-20 10:42:04','2021-10-10 17:27:14'),(5,43,4918,'Destruction of Right Basilic Vein, Open Approach',NULL,'2022-03-20 10:42:04','2021-08-24 15:27:28'),(5,44,4823,'Occlusion of Anus with Intraluminal Device, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-03-24 23:41:16'),(5,53,6553,'Removal of External Fixation Device from Right Upper Femur, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-12-13 06:16:34'),(5,63,5038,'Low Dose Rate (LDR) Brachytherapy of Prostate using Iodine 125 (I-125)',NULL,'2022-03-20 10:42:04','2021-06-18 10:56:11'),(6,25,6733,'Removal of Nonautologous Tissue Substitute from Upper Jaw, Open Approach',NULL,'2022-03-20 10:42:04','2021-08-25 16:10:54'),(6,28,3882,'Drainage of Epiglottis, Via Natural or Artificial Opening Endoscopic, Diagnostic',NULL,'2022-03-20 10:42:04','2021-04-27 16:09:07'),(6,55,6695,'Excision of Right Lung, Via Natural or Artificial Opening Endoscopic, Diagnostic',NULL,'2022-03-20 10:42:04','2022-02-27 10:39:51'),(6,63,6578,'Replacement of Bladder Neck with Autologous Tissue Substitute, Via Natural or Artificial Opening',NULL,'2022-03-20 10:42:04','2021-08-11 07:30:10'),(6,72,6630,'Insertion of Monitoring Device into Thoracic Aorta, Descending, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-05-08 03:54:49'),(6,75,4294,'Drainage of Spinal Meninges, Open Approach, Diagnostic',NULL,'2022-03-20 10:42:04','2021-09-01 09:14:37'),(7,25,6946,'Destruction of Right Femoral Shaft, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2021-03-16 17:39:32'),(7,29,4407,'Supplement Left Large Intestine with Autologous Tissue Substitute, Via Natural or Artificial Opening Endoscopic',NULL,'2022-03-20 10:42:04','2022-02-25 21:43:00'),(7,35,7057,'Replacement of Skull with Synthetic Substitute, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-11-29 11:49:47'),(7,43,7143,'Supplement Left 5th Toe with Nonautologous Tissue Substitute, Open Approach',NULL,'2022-03-20 10:42:04','2021-06-28 14:23:45'),(7,57,4939,'Replacement of Esophagus with Synthetic Substitute, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2021-04-01 21:49:03'),(7,59,3596,'Transfusion of Autologous Plasma Cryoprecipitate into Central Artery, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-12-22 01:05:51'),(7,60,4870,'Drainage of Peroneal Nerve, Open Approach',NULL,'2022-03-20 10:42:04','2021-03-13 07:34:24'),(7,62,4333,'Supplement Left Fallopian Tube with Nonautologous Tissue Substitute, Open Approach',NULL,'2022-03-20 10:42:04','2021-07-01 14:18:26'),(7,66,6526,'Replacement of Pharynx with Autologous Tissue Substitute, Via Natural or Artificial Opening',NULL,'2022-03-20 10:42:04','2021-06-21 02:53:07'),(7,72,3284,'Occlusion of Right Colic Artery, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-10-26 11:34:40'),(8,31,4622,'Supplement Right Shoulder Region with Autologous Tissue Substitute, Open Approach',NULL,'2022-03-20 10:42:04','2021-05-30 23:48:23'),(8,35,5707,'Inspection of Mouth and Throat, Via Natural or Artificial Opening',NULL,'2022-03-20 10:42:04','2021-04-15 22:56:47'),(8,50,3783,'Release Left Metatarsal, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2021-04-03 05:47:19'),(8,62,4063,'Resection of Prepuce, Open Approach',NULL,'2022-03-20 10:42:04','2021-05-31 17:10:55'),(8,63,4537,'Bypass Right Femoral Artery to Foot Artery with Synthetic Substitute, Open Approach',NULL,'2022-03-20 10:42:04','2021-03-25 23:03:30'),(8,65,3578,'Supplement Right External Carotid Artery with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2021-08-01 20:41:59'),(8,67,5547,'Drainage of Clitoris, Open Approach',NULL,'2022-03-20 10:42:04','2021-11-27 21:47:44'),(9,31,4335,'Removal of Synthetic Substitute from Left Sternoclavicular Joint, Open Approach',NULL,'2022-03-20 10:42:04','2021-10-25 10:40:17'),(9,34,3472,'Repair Right Thorax Muscle, Percutaneous Endoscopic Approach',NULL,'2022-03-20 10:42:04','2022-01-14 18:15:41'),(9,50,4972,'Occlusion of Bladder with Intraluminal Device, Via Natural or Artificial Opening Endoscopic',NULL,'2022-03-20 10:42:04','2021-05-28 17:15:41'),(9,51,7029,'Insertion of Other Device into Right Upper Extremity, Open Approach',NULL,'2022-03-20 10:42:04','2021-10-10 17:19:39'),(9,62,6715,'Drainage of Right Fibula, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-05-29 14:24:47'),(9,70,4345,'Drainage of Right Common Iliac Artery with Drainage Device, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-06-30 16:27:51'),(10,29,6891,'Supplement Left Hip Joint with Nonautologous Tissue Substitute, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-07-03 09:01:47'),(10,30,7416,'Inspection of Kidney, Via Natural or Artificial Opening',NULL,'2022-03-20 10:42:04','2021-06-13 15:00:42'),(10,34,5996,'Plain Radiography of Right Renal Vein using Other Contrast',NULL,'2022-03-20 10:42:04','2022-02-06 17:01:32'),(10,38,4030,'Revision of Infusion Device in Thoracolumbar Vertebral Disc, External Approach',NULL,'2022-03-20 10:42:04','2021-08-09 09:18:39'),(10,45,4301,'Division of Left Orbit, Open Approach',NULL,'2022-03-20 10:42:04','2021-10-18 17:01:00'),(10,54,6287,'Removal of Infusion Device from Right Upper Extremity, Percutaneous Approach',NULL,'2022-03-20 10:42:04','2021-03-24 20:08:01');
/*!40000 ALTER TABLE `job_application` ENABLE KEYS */;
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
