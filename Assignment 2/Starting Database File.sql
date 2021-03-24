CREATE DATABASE  IF NOT EXISTS `teleworks` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `teleworks`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: teleworks
-- ------------------------------------------------------
-- Server version	8.0.17

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
set sql_mode=(select replace(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
--
-- Table structure for table `consultants`
--

DROP TABLE IF EXISTS `consultants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultants` (
  `consultantID` int(11) NOT NULL,
  `firstName` text,
  `lastName` text,
  `email` text,
  `jobTitle` text,
  `businessPhone` text,
  `mobilePhone` text,
  PRIMARY KEY (`consultantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultants`
--

LOCK TABLES `consultants` WRITE;
/*!40000 ALTER TABLE `consultants` DISABLE KEYS */;
INSERT INTO `consultants` VALUES (1,'Tyrone','Banks','tbanks@teleworks.com','Senior Consultant','(249) 578-8770','(640) 133-3203'),(2,'Claire','Cameron','ccameron@teleworks.com','Senior Consultant','(332) 237-8327','(637) 299-3143'),(3,'Dean','Conner','dconner@teleworks.com','Senior Consultant','(490) 177-7685','(419) 523-5750'),(4,'Yoshio','Long','ylong@teleworks.com','Software Engineer','(643) 812-5568','(255) 547-3298'),(5,'Jameson','Lyons','jlyons@teleworks.com','Junior Consultant','(653) 746-9275','(835) 674-7730'),(6,'Prescott','Martin','pmartin@teleworks.com','Hardware Engineer','(691) 215-6715','(546) 511-3490'),(7,'Hiram','Paul','hpaul@teleworks.com','Junior Consultant','(732) 297-4554','(745) 720-5002'),(8,'Nell','Simon','nsimon@teleworks.com','Software Engineer','(831) 625-9022','(712) 608-9289'),(9,'Deacon','Solis','dsolis@teleworks.com','Senior Consultant','(836) 329-0317','(997) 266-1131'),(10,'Nicole','Williams','nwilliams@teleworks.com','Hardware Engineer','(879) 640-0050','(436) 678-2363'),(11,'Deborah','Zimmerman','dzimmerman@teleworks.com','Hardware Engineer','(930) 773-1006','(560) 595-1719');
/*!40000 ALTER TABLE `consultants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `contactName` text,
  `address` text,
  `city` text,
  `state` text,
  `postalCode` int(11) DEFAULT NULL,
  `phone` text,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alexandra N. Elliott','105-134 Nec, Road','Albuquerque','NM',87110,'(206) 555-4116'),(2,'Amal K. Travis','112-1471 Dui. Avenue','Kirkland','WA',98034,'(206) 555-4113'),(3,'Cherokee B. Melendez','1901 Magna. Rd.','Grand Rapids','MI',49506,'(616) 555-4123'),(4,'Cyrus R. Brooks','1975 Urna. Avenue','Mackinac Island','MI',49757,'(906) 555-4118'),(5,'Dana X. Rosario','217-8515 Imperdiet Avenue','Alexandria','VA',22305,'(703) 555-1843'),(6,'Deacon Q. Hart','2866 Dictum Av.','Grosse Pointe','MI',48230,'(313) 555-1724'),(7,'Dominic O. Bailey','336-7939 Accumsan Rd.','Birmingham','MI',48009,'(248) 555-7560'),(8,'Gary H. Blanchard','4264 Dignissim St.','Syosset','NY',11791,'(212) 528-5833'),(9,'Gray V. Clements','493-8715 Condimentum St.','East Michigan','MI',48823,'(517) 555-4119'),(10,'Hedda E. Lancaster','5052 Eu, Road','Benton Harbor','MI',49022,'(313) 555-0033'),(11,'Jamalia A. Byrd','547 Ultrices St.','Michigan ','LA ',44445,'(444) 344-2553'),(12,'Kyla Y. Howe','6173 Hendrerit Rd.','Wherever','IN',77777,'(217) 334-4553'),(13,'Leandra Q. Foreman','665-9171 Erat. Ave','Lander','WY',82520,'(206) 555-4117'),(14,'Maggie N. Davenport','709-6860 Quam Rd.','Seattle','WA',98128,'(465) 555-3829'),(15,'Maggy F. Miles','7135 Libero. Road','Traverse City','MI',49684,'(231) 555-3729'),(16,'Megan J. Atkinson','957-8312 Id, St.','Walla Walla','WA',99362,'(206) 555-4124'),(17,'Miriam H. Roberts','Ap #143-5881 Vulputate Rd.','San Francisco','CA',94117,'(206) 555-4121'),(18,'Oleg J. Knowles','Ap #202-8507 Quis Av.','Anchorage','AK',99508,'(206) 555-4122'),(19,'Olympia Z. Hester','Ap #205-6032 Montes, Rd.','Saint Louis','MO',63104,'(314) 555-0594'),(20,'Salvador E. Stafford','Ap #244-6969 Sed Av.','Beverly Hills','CA',90210,'(323) 555-8762'),(21,'Sean A. Reilly','Ap #548-3814 Auctor Street','Washington','DC ',20016,'(202) 555-3145'),(22,'Stewart Z. Hyde','Ap #579-598 Convallis Rd.','Seattle','WA',98128,'(206) 555-4112'),(23,'Sybil J. Rush','Ap #830-2087 Tortor St.','Albany','NY',12054,'(517) 555-6097'),(24,'Tashya S. Chan','Ap #934-4273 Egestas. Ave','Beverly Hills','CA',90210,'(323) 555-8762'),(25,'Taylor V. Dawson','P.O. Box 216, 7778 Dui St.','Santa Fe','CA',92067,'(619) 555-4578'),(26,'Vaughan B. Buckley','P.O. Box 430, 2975 Gravida Street','Traverse City','MI',49684,'(231) 555-4115'),(27,'Velma B. Mcmillan','P.O. Box 622, 4358 Orci Rd.','Ames ','OH',98938,'(224) 339-3232'),(28,'Veronica R. Page','P.O. Box 720, 1178 Ullamcorper. St.','Lansing','MI',48917,'(517) 555-4120'),(29,'Wang F. Duke','P.O. Box 896, 8407 Risus. St.','Detroit','MI',48214,'(313) 555-2841'),(30,'Willa Q. Harrington','P.O. Box 971, 9801 Ut Rd.','Butte','MT',59801,'(206) 555-4114'),(31,'Xenos G. Compton','P.O. Box 992, 7355 Non St.','Shelby','MI',49455,'(231) 774-2000');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuecategory`
--

DROP TABLE IF EXISTS `issuecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuecategory` (
  `categoryID` int(11) NOT NULL,
  `category` text,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuecategory`
--

LOCK TABLES `issuecategory` WRITE;
/*!40000 ALTER TABLE `issuecategory` DISABLE KEYS */;
INSERT INTO `issuecategory` VALUES (1,'Hardware/Phone'),(2,'Software/Voicemail'),(3,'Internet/Web');
/*!40000 ALTER TABLE `issuecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues` (
  `issueID` int(11) NOT NULL,
  `issueDescription` text,
  `dateOpened` text,
  `statusID` int(11) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `priorityID` int(11) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `consultantID` int(11) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,'Wifi not connecting.','1/1/2019',2,1,1,10,1),(2,'Cannot download apps.','1/3/2019',2,2,2,6,1),(3,'Alarm clock does not work','1/3/2019',1,2,5,9,1),(4,'Ringer does not work.','1/6/2019',1,2,3,18,1),(5,'Camera is not working.','1/8/2019',2,2,3,19,1),(6,'One key is broken.','1/8/2019',1,2,1,27,1),(7,'Screen-brightness not adjusting.','1/11/2019',2,3,4,24,2),(8,'Cannot delete apps.','1/12/2019',2,2,2,23,2),(9,'Locked out of account.','1/13/2019',2,2,5,28,2),(10,'Wifi not connecting.','1/15/2019',2,3,3,13,2),(11,'Wifi not connecting.','1/16/2019',2,1,3,15,2),(12,'Can not access menu on phone.','1/17/2019',2,3,1,16,2),(13,'Wifi not connecting.','1/19/2019',2,3,4,15,2),(14,'Browser not loading.','1/21/2019',2,2,5,6,2),(15,'Browser not loading.','1/22/2019',1,3,1,23,2),(16,'Cannot delete apps.','1/24/2019',2,2,3,30,2),(17,'Can not dial out of area.','1/26/2019',2,1,2,13,3),(18,'Locked out of phone.','1/26/2019',1,2,5,3,3),(19,'Alarm clock does not work','1/30/2019',2,1,5,24,3),(20,'Browser not loading.','1/31/2019',1,2,2,7,3),(21,'Cannot download apps.','2/1/2019',1,2,4,29,3),(22,'Browser not loading.','2/3/2019',1,2,2,27,3),(23,'Camera is not working.','2/6/2019',1,3,2,12,3),(24,'Locked out of phone.','2/7/2019',2,3,4,20,3),(25,'Cannot download apps.','2/7/2019',1,2,2,8,4),(26,'Phone automatically turning off.','2/7/2019',1,3,5,25,4),(27,'Can not access Web from phone.','2/9/2019',1,1,3,13,4),(28,'Cannot access Web from phone.','2/9/2019',1,3,2,11,4),(29,'Screen is frozen.','2/10/2019',2,1,1,14,4),(30,'Can not access Web from phone.','2/11/2019',1,2,3,8,4),(31,'Wifi not connecting.','2/11/2019',1,1,2,25,4),(32,'Can not access menu on phone.','2/13/2019',2,2,1,21,5),(33,'Ringer does not work.','2/14/2019',2,1,3,24,5),(34,'Can not access Web from phone.','2/18/2019',2,2,1,11,5),(35,'Phone will not turn on.','2/21/2019',1,2,3,20,5),(36,'Can not access menu on phone.','2/21/2019',2,2,5,5,6),(37,'Cannot delete apps.','2/22/2019',2,3,2,12,6),(38,'Screen is frozen.','2/24/2019',1,2,5,3,6),(39,'Locked out of phone.','2/26/2019',1,1,3,24,7),(40,'Lost password.','2/28/2019',2,2,4,27,7),(41,'Lost password.','3/2/2019',2,2,3,9,7),(42,'Camera is not working.','3/3/2019',1,1,4,25,7),(43,'Wifi not connecting.','3/3/2019',2,1,5,5,7),(44,'No light ','3/3/2019',2,3,4,30,7),(45,'Screen is frozen.','3/4/2019',2,1,1,12,7),(46,'Cannot delete apps.','3/9/2019',1,2,2,14,7),(47,'Locked out of account.','3/11/2019',1,3,2,14,7),(48,'Cannot download apps.','3/12/2019',1,3,2,21,7),(49,'Locked out of account.','3/14/2019',1,3,1,10,7),(50,'Screen is frozen.','3/14/2019',2,1,5,3,7),(51,'Cannot download apps.','3/14/2019',1,3,4,19,8),(52,'Cannot delete apps.','3/14/2019',2,1,3,9,8),(53,'Screen-brightness not adjusting.','3/18/2019',2,3,3,12,8),(54,'Screen-brightness not adjusting.','3/20/2019',2,3,2,9,8),(55,'Phone will not turn on.','3/21/2019',2,1,5,10,8),(56,'Cannot access voicemail.','3/21/2019',1,3,4,5,8),(57,'Screen-brightness not adjusting.','3/25/2019',1,1,5,14,9),(58,'Very bad','3/26/2019',2,2,4,22,9),(59,'Can not access voicemail.','3/26/2019',2,2,5,12,9),(60,'No light ','3/30/2019',2,2,4,21,9),(61,'Phone will not turn on.','5/13/2019',1,3,1,24,9),(62,'Phone will not turn on.','5/30/2019',1,1,2,23,9),(63,'Can not dial out of area.','6/1/2019',1,2,4,9,9),(64,'Wifi not connecting.','6/17/2019',2,2,4,1,9),(65,'Camera is not working.','7/5/2019',1,3,3,18,9),(66,'Locked out of phone.','7/5/2019',1,3,2,29,9),(67,'Can not access menu on phone.','7/20/2019',2,1,1,11,10),(68,'Screen-brightness not adjusting.','8/25/2019',1,3,4,22,10);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuestatus`
--

DROP TABLE IF EXISTS `issuestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuestatus` (
  `statusID` int(11) NOT NULL,
  `statusDescription` text,
  PRIMARY KEY (`statusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuestatus`
--

LOCK TABLES `issuestatus` WRITE;
/*!40000 ALTER TABLE `issuestatus` DISABLE KEYS */;
INSERT INTO `issuestatus` VALUES (1,'Closed'),(2,'Open');
/*!40000 ALTER TABLE `issuestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priority` (
  `priorityID` int(11) NOT NULL,
  `priorityLevel` text,
  PRIMARY KEY (`priorityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,'Low'),(2,'Standard'),(3,'Moderate'),(4,'High'),(5,'Critical');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-17 21:07:43
