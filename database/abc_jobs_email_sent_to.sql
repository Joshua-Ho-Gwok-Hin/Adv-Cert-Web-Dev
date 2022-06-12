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
-- Table structure for table `email_sent_to`
--

DROP TABLE IF EXISTS `email_sent_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_sent_to` (
  `sent_email_id` int NOT NULL,
  `email_address` varchar(50) NOT NULL,
  KEY `recipients_idx` (`email_address`),
  KEY `email_id_idx` (`sent_email_id`),
  CONSTRAINT `email_id` FOREIGN KEY (`sent_email_id`) REFERENCES `sent_email` (`sent_email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_sent_to`
--

LOCK TABLES `email_sent_to` WRITE;
/*!40000 ALTER TABLE `email_sent_to` DISABLE KEYS */;
INSERT INTO `email_sent_to` VALUES (7,'lspenceley0@dagondesign.com'),(7,'ckalf1@bloglovin.com'),(5,'nscannell2@yellowpages.com'),(4,'ldesavery3@npr.org'),(2,'ndefries4@miibeian.gov.cn'),(5,'dlaux5@thetimes.co.uk'),(10,'adykes6@aboutads.info'),(1,'htodaro7@chicagotribune.com'),(2,'jblaes8@naver.com'),(9,'mmantle9@list-manage.com'),(10,'mcurleya@hud.gov'),(6,'catlayb@moonfruit.com'),(7,'fbenglec@va.gov'),(5,'ijillinsd@imdb.com'),(3,'hfoskewe@dyndns.org'),(5,'fpeacockef@usgs.gov'),(8,'cmackeggg@bandcamp.com'),(1,'rpoelh@census.gov'),(8,'pmcilwricki@unesco.org'),(4,'mkingettj@toplist.cz'),(9,'ilambournek@homestead.com'),(7,'khaquinl@cam.ac.uk'),(1,'twavellm@businessweek.com'),(5,'ubellfieldn@prlog.org'),(8,'rtommeoo@seesaa.net'),(7,'rvasilicp@aboutads.info'),(6,'akinigq@engadget.com'),(8,'stomichr@oaic.gov.au'),(4,'epeebless@comcast.net'),(1,'jgadsdont@diigo.com'),(9,'cfurmanu@woothemes.com'),(4,'lbuistv@sitemeter.com'),(9,'mmacmeanmaw@sakura.ne.jp'),(8,'astrainx@vimeo.com'),(8,'asebrensy@devhub.com'),(1,'clittlecotez@hc360.com'),(10,'yayre10@ftc.gov'),(5,'kdorin11@bbc.co.uk'),(9,'siacopini12@sphinn.com'),(6,'smurison13@dyndns.org'),(1,'vmcilvaney14@photobucket.com'),(9,'jrampley15@bluehost.com'),(9,'lgavrielly16@angelfire.com'),(4,'edrever17@latimes.com'),(6,'pmarqyes18@google.es'),(10,'cmassen19@bravesites.com'),(4,'tdaniau1a@wiley.com'),(7,'tcasado1b@ed.gov'),(1,'vleebeter1c@flavors.me'),(7,'zorring1d@deviantart.com'),(9,'jkarlmann1e@boston.com'),(10,'lpolsin1f@businessweek.com'),(3,'ckingerby1g@tmall.com'),(6,'daitcheson1h@wix.com'),(1,'jkohter1i@biblegateway.com'),(9,'gdegoix1j@buzzfeed.com'),(4,'ekummerlowe1k@yelp.com'),(8,'jklousner1l@opera.com'),(6,'tpolfer1m@bigcartel.com'),(8,'pfowler1n@unesco.org'),(3,'aruzek1o@marriott.com'),(3,'atorrie1p@amazon.co.uk'),(7,'dqueenborough1q@deviantart.com'),(4,'tsoppit1r@cargocollective.com'),(3,'crupp1s@huffingtonpost.com'),(8,'amullord1t@shinystat.com'),(3,'aburleton1u@admin.ch'),(9,'gkippax1v@arizona.edu'),(1,'mocorren1w@reverbnation.com'),(3,'eaiken1x@icio.us'),(3,'pgoodacre1y@bbb.org'),(1,'agleave1z@51.la'),(10,'jmedwell20@about.me'),(6,'jpaddy21@princeton.edu'),(5,'bjerzak22@wired.com'),(7,'jpresho23@army.mil'),(9,'cgoldes24@samsung.com'),(8,'lfidgeon25@mapquest.com'),(4,'ddurdy26@creativecommons.org'),(4,'ktulip27@mac.com'),(7,'cscrimshaw28@mozilla.com'),(9,'cmacpadene29@ca.gov'),(5,'tambrogioni2a@digg.com'),(1,'fbrookwell2b@cam.ac.uk'),(10,'tcardinale2c@typepad.com'),(9,'bmacaskill2d@bloglovin.com'),(10,'rflecknoe2e@flickr.com'),(3,'ihearn2f@paginegialle.it'),(5,'ilycett2g@apache.org'),(9,'jnorquay2h@comcast.net'),(6,'mhowe2i@flavors.me'),(5,'mhuxstep2j@nymag.com'),(2,'agroneway2k@google.es'),(1,'kbraznell2l@msu.edu'),(7,'edyerson2m@ucla.edu'),(8,'dagates2n@cisco.com'),(6,'jmoulton2o@dedecms.com'),(7,'rrodge2p@nps.gov'),(5,'gdomenget2q@uiuc.edu'),(8,'bbatting2r@yellowpages.com');
/*!40000 ALTER TABLE `email_sent_to` ENABLE KEYS */;
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
