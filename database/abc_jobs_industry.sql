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
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industry` (
  `industry_id` tinyint NOT NULL AUTO_INCREMENT,
  `industry` varchar(100) NOT NULL,
  PRIMARY KEY (`industry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (1,'Accounting'),(2,'Airlines/Aviation'),(3,'Alternative Dispute Resolution'),(4,'Alternative Medicine'),(5,'Animation'),(6,'Apparel/Fashion'),(7,'Architecture/Planning'),(8,'Arts/Crafts'),(9,'Automotive'),(10,'Aviation/Aerospace'),(11,'Banking/Mortgage'),(12,'Biotechnology/Greentech'),(13,'Broadcast Media'),(14,'Building Materials'),(15,'Business Supplies/Equipment'),(16,'Capital Markets/Hedge Fund/Private Equity'),(17,'Chemicals'),(18,'Civic/Social Organization'),(19,'Civil Engineering'),(20,'Commercial Real Estate'),(21,'Computer Games'),(22,'Computer Hardware'),(23,'Computer Networking'),(24,'Computer Software/Engineering'),(25,'Computer/Network Security'),(26,'Construction'),(27,'Consumer Electronics'),(28,'Consumer Goods'),(29,'Consumer Services'),(30,'Cosmetics'),(31,'Dairy'),(32,'Defense/Space'),(33,'Design'),(34,'E-Learning'),(35,'Education Management'),(36,'Electrical/Electronic Manufacturing'),(37,'Entertainment/Movie Production'),(38,'Environmental Services'),(39,'Events Services'),(40,'Executive Office'),(41,'Facilities Services'),(42,'Farming'),(43,'Financial Services'),(44,'Fine Art'),(45,'Fishery'),(46,'Food Production'),(47,'Food/Beverages'),(48,'Fundraising'),(49,'Furniture'),(50,'Gambling/Casinos'),(51,'Glass/Ceramics/Concrete'),(52,'Government Administration'),(53,'Government Relations'),(54,'Graphic Design/Web Design'),(55,'Health/Fitness'),(56,'Higher Education/Acadamia'),(57,'Hospital/Health Care'),(58,'Hospitality'),(59,'Human Resources/HR'),(60,'Import/Export'),(61,'Individual/Family Services'),(62,'Industrial Automation'),(63,'Information Services'),(64,'Information Technology/IT'),(65,'Insurance'),(66,'International Affairs'),(67,'International Trade/Development'),(68,'Internet'),(69,'Investment Banking/Venture'),(70,'Investment Management/Hedge Fund/Private Equity'),(71,'Judiciary'),(72,'Law Enforcement'),(73,'Law Practice/Law Firms'),(74,'Legal Services'),(75,'Legislative Office'),(76,'Leisure/Travel'),(77,'Library'),(78,'Logistics/Procurement'),(79,'Luxury Goods/Jewelry'),(80,'Machinery'),(81,'Management Consulting'),(82,'Maritime'),(83,'Market Research'),(84,'Marketing/Advertising/Sales'),(85,'Mechanical or Industrial Engineering'),(86,'Media Production'),(87,'Medical Equipment'),(88,'Medical Practice'),(89,'Mental Health Care'),(90,'Military Industry'),(91,'Mining/Metals'),(92,'Motion Pictures/Film'),(93,'Museums/Institutions'),(94,'Music'),(95,'Nanotechnology'),(96,'Newspapers/Journalism'),(97,'Non-Profit/Volunteering'),(98,'Oil/Energy/Solar/Greentech'),(99,'Online Publishing'),(100,'Other Industry'),(101,'Outsourcing/Offshoring'),(102,'Package/Freight Delivery'),(103,'Packaging/Containers'),(104,'Paper/Forest Products'),(105,'Performing Arts'),(106,'Pharmaceuticals'),(107,'Philanthropy'),(108,'Photography'),(109,'Plastics'),(110,'Political Organization'),(111,'Primary/Secondary Education'),(112,'Printing'),(113,'Professional Training'),(114,'Program Development'),(115,'Public Relations/PR'),(116,'Public Safety'),(117,'Publishing Industry'),(118,'Railroad Manufacture'),(119,'Ranching'),(120,'Real Estate/Mortgage'),(121,'Recreational Facilities/Services'),(122,'Religious Institutions'),(123,'Renewables/Environment'),(124,'Research Industry'),(125,'Restaurants'),(127,'Retail Industry');
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
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
