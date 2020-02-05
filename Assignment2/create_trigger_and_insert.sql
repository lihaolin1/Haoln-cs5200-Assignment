-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: cs5200-spring2020-haolin-a2.ccgpqnp6qpps.us-east-2.rds.amazonaws.com    Database: innodb
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `street1` varchar(100) DEFAULT NULL,
  `street2` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `add_primary` tinyint(4) DEFAULT NULL,
  `add_person_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `add_person_id_idx` (`add_person_id`),
  CONSTRAINT `add_person_id` FOREIGN KEY (`add_person_id`) REFERENCES `person` (`personid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'123 Adam St',NULL,' Alton',NULL,'01234',1,12),(2,'234 Birch St',NULL,'Boston',NULL,'02345',0,12),(3,'345 Charles St',NULL,'Chelms',NULL,'03455',1,23),(4,'456 Down St',NULL,'Dalton',NULL,'04566',0,23),(5,'543 East St',NULL,'Everett',NULL,'01112',0,23),(6,'654 Frank St',NULL,'Foulton',NULL,'04322',1,34);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developer` (
  `developer_id` int(11) NOT NULL AUTO_INCREMENT,
  `developerkey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`developer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES (1,'4321rewq'),(2,'5432trew'),(3,'6543ytre');
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implement_view`
--

DROP TABLE IF EXISTS `implement_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `implement_view` (
  `personid` int(11) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `developerid1` int(11) DEFAULT NULL,
  `wrwebsiteid` int(11) DEFAULT NULL,
  `webrole` int(11) DEFAULT NULL,
  `wname` varchar(45) DEFAULT NULL,
  `visits` int(11) DEFAULT NULL,
  `wupdate` date DEFAULT NULL,
  `webpriviledge` int(11) DEFAULT NULL,
  `pid_use` int(11) DEFAULT '0',
  `title` varchar(45) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `pagepriviledgeid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implement_view`
--

LOCK TABLES `implement_view` WRITE;
/*!40000 ALTER TABLE `implement_view` DISABLE KEYS */;
INSERT INTO `implement_view` VALUES (12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',1,123,'Home',123434,'2020-02-07',4,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',1,123,'Home',123434,'2020-02-07',4,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',2,123,'Home',123434,'2020-02-07',4,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',2,123,'Home',123434,'2020-02-07',4,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',3,123,'Home',123434,'2020-02-07',4,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',3,123,'Home',123434,'2020-02-07',4,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',4,123,'Home',123434,'2020-02-07',4,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',4,123,'Home',123434,'2020-02-07',4,3),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',1,123,'Home',123434,'2020-02-07',5,3),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',2,123,'Home',123434,'2020-02-07',5,3),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',3,123,'Home',123434,'2020-02-07',5,3),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',4,123,'Home',123434,'2020-02-07',5,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,567,4,'CNET',5433455,'2020-02-07',2,123,'Home',123434,'2020-02-07',3,1),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,567,4,'CNET',5433455,'2020-02-07',2,123,'Home',123434,'2020-02-07',3,2),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,567,4,'CNET',5433455,'2020-02-07',2,123,'Home',123434,'2020-02-07',3,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,567,4,'CNET',5433455,'2020-02-07',3,123,'Home',123434,'2020-02-07',3,1),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,567,4,'CNET',5433455,'2020-02-07',3,123,'Home',123434,'2020-02-07',3,2),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,567,4,'CNET',5433455,'2020-02-07',3,123,'Home',123434,'2020-02-07',3,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,678,4,'Gizmodo',4322345,'2020-02-07',2,234,'About',234545,'2020-02-07',3,1),(12,'Alice','Wonder','alice','alice@wonder.com',1,678,4,'Gizmodo',4322345,'2020-02-07',2,234,'About',234545,'2020-02-07',3,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,678,4,'Gizmodo',4322345,'2020-02-07',2,234,'About',234545,'2020-02-07',3,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,678,4,'Gizmodo',4322345,'2020-02-07',3,234,'About',234545,'2020-02-07',3,1),(12,'Alice','Wonder','alice','alice@wonder.com',1,678,4,'Gizmodo',4322345,'2020-02-07',3,234,'About',234545,'2020-02-07',3,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,678,4,'Gizmodo',4322345,'2020-02-07',3,234,'About',234545,'2020-02-07',3,3),(23,'Bob','Marley','bob','bob@marley.com',2,678,2,'Gizmodo',4322345,'2020-02-07',1,234,'About',234545,'2020-02-07',4,2),(23,'Bob','Marley','bob','bob@marley.com',2,678,2,'Gizmodo',4322345,'2020-02-07',1,234,'About',234545,'2020-02-07',4,3),(23,'Bob','Marley','bob','bob@marley.com',2,678,2,'Gizmodo',4322345,'2020-02-07',2,234,'About',234545,'2020-02-07',4,2),(23,'Bob','Marley','bob','bob@marley.com',2,678,2,'Gizmodo',4322345,'2020-02-07',2,234,'About',234545,'2020-02-07',4,3),(23,'Bob','Marley','bob','bob@marley.com',2,678,2,'Gizmodo',4322345,'2020-02-07',3,234,'About',234545,'2020-02-07',4,2),(23,'Bob','Marley','bob','bob@marley.com',2,678,2,'Gizmodo',4322345,'2020-02-07',3,234,'About',234545,'2020-02-07',4,3),(23,'Bob','Marley','bob','bob@marley.com',2,678,2,'Gizmodo',4322345,'2020-02-07',4,234,'About',234545,'2020-02-07',4,2),(23,'Bob','Marley','bob','bob@marley.com',2,678,2,'Gizmodo',4322345,'2020-02-07',4,234,'About',234545,'2020-02-07',4,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,678,1,'Gizmodo',4322345,'2020-02-07',1,234,'About',234545,'2020-02-07',5,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,678,1,'Gizmodo',4322345,'2020-02-07',2,234,'About',234545,'2020-02-07',5,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,678,1,'Gizmodo',4322345,'2020-02-07',3,234,'About',234545,'2020-02-07',5,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,678,1,'Gizmodo',4322345,'2020-02-07',4,234,'About',234545,'2020-02-07',5,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,345,4,'Wikipedia',3456654,'2020-02-07',2,345,'Contact',345656,'2020-02-07',5,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,345,4,'Wikipedia',3456654,'2020-02-07',3,345,'Contact',345656,'2020-02-07',5,3),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',1,345,'Contact',345656,'2020-02-07',3,1),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',1,345,'Contact',345656,'2020-02-07',3,2),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',1,345,'Contact',345656,'2020-02-07',3,3),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',2,345,'Contact',345656,'2020-02-07',3,1),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',2,345,'Contact',345656,'2020-02-07',3,2),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',2,345,'Contact',345656,'2020-02-07',3,3),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',3,345,'Contact',345656,'2020-02-07',3,1),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',3,345,'Contact',345656,'2020-02-07',3,2),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',3,345,'Contact',345656,'2020-02-07',3,3),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',4,345,'Contact',345656,'2020-02-07',3,1),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',4,345,'Contact',345656,'2020-02-07',3,2),(23,'Bob','Marley','bob','bob@marley.com',2,345,2,'Wikipedia',3456654,'2020-02-07',4,345,'Contact',345656,'2020-02-07',3,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,345,1,'Wikipedia',3456654,'2020-02-07',1,345,'Contact',345656,'2020-02-07',4,2),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,345,1,'Wikipedia',3456654,'2020-02-07',1,345,'Contact',345656,'2020-02-07',4,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,345,1,'Wikipedia',3456654,'2020-02-07',2,345,'Contact',345656,'2020-02-07',4,2),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,345,1,'Wikipedia',3456654,'2020-02-07',2,345,'Contact',345656,'2020-02-07',4,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,345,1,'Wikipedia',3456654,'2020-02-07',3,345,'Contact',345656,'2020-02-07',4,2),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,345,1,'Wikipedia',3456654,'2020-02-07',3,345,'Contact',345656,'2020-02-07',4,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,345,1,'Wikipedia',3456654,'2020-02-07',4,345,'Contact',345656,'2020-02-07',4,2),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,345,1,'Wikipedia',3456654,'2020-02-07',4,345,'Contact',345656,'2020-02-07',4,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,456,1,'CNN',6543345,'2020-02-07',1,456,'Preferences',456776,'2020-02-07',4,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,456,1,'CNN',6543345,'2020-02-07',1,456,'Preferences',456776,'2020-02-07',4,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,456,1,'CNN',6543345,'2020-02-07',2,456,'Preferences',456776,'2020-02-07',4,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,456,1,'CNN',6543345,'2020-02-07',2,456,'Preferences',456776,'2020-02-07',4,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,456,1,'CNN',6543345,'2020-02-07',3,456,'Preferences',456776,'2020-02-07',4,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,456,1,'CNN',6543345,'2020-02-07',3,456,'Preferences',456776,'2020-02-07',4,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,456,1,'CNN',6543345,'2020-02-07',4,456,'Preferences',456776,'2020-02-07',4,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,456,1,'CNN',6543345,'2020-02-07',4,456,'Preferences',456776,'2020-02-07',4,3),(23,'Bob','Marley','bob','bob@marley.com',2,456,4,'CNN',6543345,'2020-02-07',2,456,'Preferences',456776,'2020-02-07',5,3),(23,'Bob','Marley','bob','bob@marley.com',2,456,4,'CNN',6543345,'2020-02-07',3,456,'Preferences',456776,'2020-02-07',5,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',1,456,'Preferences',456776,'2020-02-07',3,1),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',1,456,'Preferences',456776,'2020-02-07',3,2),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',1,456,'Preferences',456776,'2020-02-07',3,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',2,456,'Preferences',456776,'2020-02-07',3,1),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',2,456,'Preferences',456776,'2020-02-07',3,2),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',2,456,'Preferences',456776,'2020-02-07',3,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',3,456,'Preferences',456776,'2020-02-07',3,1),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',3,456,'Preferences',456776,'2020-02-07',3,2),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',3,456,'Preferences',456776,'2020-02-07',3,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',4,456,'Preferences',456776,'2020-02-07',3,1),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',4,456,'Preferences',456776,'2020-02-07',3,2),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,456,2,'CNN',6543345,'2020-02-07',4,456,'Preferences',456776,'2020-02-07',3,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',1,567,'Profile',567878,'2020-02-07',3,1),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',1,567,'Profile',567878,'2020-02-07',3,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',1,567,'Profile',567878,'2020-02-07',3,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',2,567,'Profile',567878,'2020-02-07',3,1),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',2,567,'Profile',567878,'2020-02-07',3,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',2,567,'Profile',567878,'2020-02-07',3,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',3,567,'Profile',567878,'2020-02-07',3,1),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',3,567,'Profile',567878,'2020-02-07',3,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',3,567,'Profile',567878,'2020-02-07',3,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',4,567,'Profile',567878,'2020-02-07',3,1),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',4,567,'Profile',567878,'2020-02-07',3,2),(12,'Alice','Wonder','alice','alice@wonder.com',1,567,2,'CNET',5433455,'2020-02-07',4,567,'Profile',567878,'2020-02-07',3,3),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',1,567,'Profile',567878,'2020-02-07',4,2),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',1,567,'Profile',567878,'2020-02-07',4,3),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',2,567,'Profile',567878,'2020-02-07',4,2),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',2,567,'Profile',567878,'2020-02-07',4,3),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',3,567,'Profile',567878,'2020-02-07',4,2),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',3,567,'Profile',567878,'2020-02-07',4,3),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',4,567,'Profile',567878,'2020-02-07',4,2),(23,'Bob','Marley','bob','bob@marley.com',2,567,1,'CNET',5433455,'2020-02-07',4,567,'Profile',567878,'2020-02-07',4,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,567,4,'CNET',5433455,'2020-02-07',2,567,'Profile',567878,'2020-02-07',5,3),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,567,4,'CNET',5433455,'2020-02-07',3,567,'Profile',567878,'2020-02-07',5,3),(12,'Alice','Wonder','alice','alice@wonder.com',1,123,1,'Facebook',1234234,'2020-02-07',1,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Alice','Wonder','alice','alice@wonder.com',1,123,1,'Facebook',1234234,'2020-02-07',2,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Alice','Wonder','alice','alice@wonder.com',1,123,1,'Facebook',1234234,'2020-02-07',3,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Alice','Wonder','alice','alice@wonder.com',1,123,1,'Facebook',1234234,'2020-02-07',4,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Alice','Wonder','alice','alice@wonder.com',1,234,2,'Twitter',4321543,'2020-02-07',1,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Alice','Wonder','alice','alice@wonder.com',1,234,2,'Twitter',4321543,'2020-02-07',2,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Alice','Wonder','alice','alice@wonder.com',1,234,2,'Twitter',4321543,'2020-02-07',3,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Alice','Wonder','alice','alice@wonder.com',1,234,2,'Twitter',4321543,'2020-02-07',4,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Bob','Marley','bob','bob@marley.com',2,234,1,'Twitter',4321543,'2020-02-07',1,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Bob','Marley','bob','bob@marley.com',2,234,1,'Twitter',4321543,'2020-02-07',2,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Bob','Marley','bob','bob@marley.com',2,234,1,'Twitter',4321543,'2020-02-07',3,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Bob','Marley','bob','bob@marley.com',2,234,1,'Twitter',4321543,'2020-02-07',4,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Bob','Marley','bob','bob@marley.com',2,123,4,'Facebook',1234234,'2020-02-07',2,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Bob','Marley','bob','bob@marley.com',2,123,4,'Facebook',1234234,'2020-02-07',3,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,234,4,'Twitter',4321543,'2020-02-07',2,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,234,4,'Twitter',4321543,'2020-02-07',3,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,123,2,'Facebook',1234234,'2020-02-07',1,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,123,2,'Facebook',1234234,'2020-02-07',2,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,123,2,'Facebook',1234234,'2020-02-07',3,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Charlie','Garcia','charlie','chuch@garcia.com',3,123,2,'Facebook',1234234,'2020-02-07',4,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `implement_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `websitepid` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  KEY `websitepid_idx` (`websitepid`),
  CONSTRAINT `websitepid` FOREIGN KEY (`websitepid`) REFERENCES `website` (`website_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (123,'Home','Landing page','2020-01-03','2020-02-07',123434,567),(234,'About','Website description','2020-01-03','2020-02-07',234545,678),(345,'Contact','Addresses, phones, and contact info','2020-01-03','2020-02-07',345656,345),(456,'Preferences','Where users can configure their preferences','2020-01-03','2020-02-07',456776,456),(567,'Profile','Users can configure their personal informatio','2020-01-03','2020-02-07',567878,567);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_priviledge`
--

DROP TABLE IF EXISTS `page_priviledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_priviledge` (
  `pagepid` int(11) NOT NULL AUTO_INCREMENT,
  `pagepriviledgeid` int(11) DEFAULT NULL,
  `ppdeveloperid` int(11) DEFAULT NULL,
  `pppageid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pagepid`),
  KEY `pagepriviledgeid_idx` (`pagepriviledgeid`),
  KEY `ppdeveloperid_idx` (`ppdeveloperid`),
  KEY `pppageid_idx` (`pppageid`),
  CONSTRAINT `pagepriviledgeid` FOREIGN KEY (`pagepriviledgeid`) REFERENCES `priviledge` (`priviledge_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ppdeveloperid` FOREIGN KEY (`ppdeveloperid`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pppageid` FOREIGN KEY (`pppageid`) REFERENCES `page` (`page_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_priviledge`
--

LOCK TABLES `page_priviledge` WRITE;
/*!40000 ALTER TABLE `page_priviledge` DISABLE KEYS */;
INSERT INTO `page_priviledge` VALUES (28,2,1,123),(29,3,1,123),(30,2,2,234),(31,3,2,234),(32,2,3,345),(33,3,3,345),(34,2,1,456),(35,3,1,456),(36,2,2,567),(37,3,2,567),(38,3,2,123),(39,3,3,234),(40,3,1,345),(41,3,2,456),(42,3,3,567),(43,1,3,123),(44,2,3,123),(45,3,3,123),(46,1,1,234),(47,2,1,234),(48,3,1,234),(49,1,2,345),(50,2,2,345),(51,3,2,345),(52,1,3,456),(53,2,3,456),(54,3,3,456),(55,1,1,567),(56,2,1,567),(57,3,1,567);
/*!40000 ALTER TABLE `page_priviledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_role`
--

DROP TABLE IF EXISTS `page_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_role` (
  `pagerid` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `developer_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pagerid`),
  KEY `developer_id` (`developer_id`),
  KEY `role_id` (`role_id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `developer_id` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `page_id` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_role`
--

LOCK TABLES `page_role` WRITE;
/*!40000 ALTER TABLE `page_role` DISABLE KEYS */;
INSERT INTO `page_role` VALUES (1,4,1,123),(2,4,2,234),(3,4,3,345),(4,4,1,456),(5,4,2,567),(6,5,2,123),(7,5,3,234),(8,5,1,345),(9,5,2,456),(10,5,3,567),(11,3,3,123),(12,3,1,234),(13,3,2,345),(14,3,3,456),(15,3,1,567);
/*!40000 ALTER TABLE `page_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`haolin`@`%`*/ /*!50003 TRIGGER `innodb`.`page_role_AFTER_INSERT` AFTER INSERT ON `page_role` FOR EACH ROW
BEGIN
	set @var = new.developer_id;
    set @var2 = new.page_id;
	IF new.role_id = 1 then
		/*update website_priviledge set webpriviledge = 1234;*/
        /*INSERT into page_priviledge(pagepid,pagepriviledge,developerppid,pppageid) values (new.pagepid,1234,new.developerppid,new.pppageid);*/
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (1, @var, @var2);
        #INSERT into page_priviledge(pagepriviledgeid,ppdeveloperid) values (1,@var);
        #INSERT into page_priviledge(ppdeveloperid) select developer_id from page_role;
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (2, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (3, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (4, @var, @var2);
	ELSEIF new.role_id = 2 then
		/*update website_priviledge set webpriviledge = 1234;*/
        /*INSERT into page_priviledge(pagepid,pagepriviledge,developerppid,pppageid) values (new.pagepid,1234,new.developerppid,new.pppageid);*/
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (1, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (2, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (3, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (4, @var, @var2);
        #INSERT into page_priviledge(ppdeveloperid) select developer_id from page_role;
	ELSEIF new.role_id = 3 then
		/*update website_priviledge set webpriviledge = 123;*/
        /*INSERT into page_priviledge(pagepid,pagepriviledge,developerppid,pppageid) values (new.pagepid,123,new.developerppid,new.pppageid);*/
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (1, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (2, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (3, @var, @var2);
        #INSERT into page_priviledge(ppdeveloperid) select developer_id from page_role;
	ELSEIF new.role_id = 4 then
		/*update website_priviledge set webpriviledge = 23;*/
        /*INSERT into page_priviledge(pagepid,pagepriviledge,developerppid,pppageid) values (new.pagepid,23,new.developerppid,new.pppageid);*/
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (2, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (3, @var, @var2);
        #INSERT into page_priviledge(ppdeveloperid) select developer_id from page_role;
	ELSEIF new.role_id = 5 then
		/*update website_priviledge set webpriviledge = 3;*/
        /*INSERT into page_priviledge(pagepid,pagepriviledge,developerppid,pppageid) values (new.pagepid,3,new.developerppid,new.pppageid);*/
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (3, @var, @var2);
        #INSERT into page_priviledge(ppdeveloperid) select developer_id from page_role;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`haolin`@`%`*/ /*!50003 TRIGGER `innodb`.`page_role_AFTER_UPDATE` AFTER UPDATE ON `page_role` FOR EACH ROW
BEGIN
	set @var = new.developer_id;
    set @var2 = new.page_id;
    delete from page_priviledge where ppdeveloperid = @var;
	IF new.role_id = 1 then
		/*update website_priviledge set webpriviledge = 1234;*/
        /*INSERT into page_priviledge(pagepid,pagepriviledge,developerppid,pppageid) values (new.pagepid,1234,new.developerppid,new.pppageid);*/
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (1, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (2, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (3, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (4, @var, @var2);
	ELSEIF new.role_id = 2 then
		/*update website_priviledge set webpriviledge = 1234;*/
        /*INSERT into page_priviledge(pagepid,pagepriviledge,developerppid,pppageid) values (new.pagepid,1234,new.developerppid,new.pppageid);*/
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (1, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (2, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (3, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (4, @var, @var2);
	ELSEIF new.role_id = 3 then
		/*update website_priviledge set webpriviledge = 123;*/
        /*INSERT into page_priviledge(pagepid,pagepriviledge,developerppid,pppageid) values (new.pagepid,123,new.developerppid,new.pppageid);*/
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (1, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (2, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (3, @var, @var2);
	ELSEIF new.role_id = 4 then
		/*update website_priviledge set webpriviledge = 23;*/
        /*INSERT into page_priviledge(pagepid,pagepriviledge,developerppid,pppageid) values (new.pagepid,23,new.developerppid,new.pppageid);*/
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (2, @var, @var2);
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (3, @var, @var2);
	ELSEIF new.role_id = 5 then
		/*update website_priviledge set webpriviledge = 3;*/
        /*INSERT into page_priviledge(pagepid,pagepriviledge,developerppid,pppageid) values (new.pagepid,3,new.developerppid,new.pppageid);*/
        INSERT into page_priviledge(pagepriviledgeid, ppdeveloperid, pppageid) values (3, @var, @var2);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`haolin`@`%`*/ /*!50003 TRIGGER `innodb`.`page_role_AFTER_DELETE` AFTER DELETE ON `page_role` FOR EACH ROW
BEGIN
	set @var = old.developer_id;
    delete from page_priviledge where ppdeveloperid = @var;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `personid` int(11) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `developer_person_generalization` int(11) DEFAULT NULL,
  `user_person_generalization` int(11) DEFAULT NULL,
  PRIMARY KEY (`personid`),
  KEY `developer_person_generalization_idx` (`developer_person_generalization`),
  KEY `user_person_generalization_idx` (`user_person_generalization`),
  CONSTRAINT `developer_person_generalization` FOREIGN KEY (`developer_person_generalization`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_person_generalization` FOREIGN KEY (`user_person_generalization`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (12,'Alice','Wonder','alice','alice','alice@wonder.com','',1,NULL),(23,'Bob','Marley','bob','bob','bob@marley.com','',2,NULL),(34,'Charlie','Garcia','charlie','charlie','chuch@garcia.com',NULL,3,NULL),(45,'Dan','Martin','dan','dan','dan@martin.com',NULL,NULL,1),(56,'Ed','Karaz','ed','ed','ed@kar.com',NULL,NULL,2);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone` (
  `phone_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) DEFAULT NULL,
  `ph_primary` tinyint(4) DEFAULT NULL,
  `pho_person_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`phone_id`),
  KEY `pho_person_id_idx` (`pho_person_id`),
  CONSTRAINT `pho_person_id` FOREIGN KEY (`pho_person_id`) REFERENCES `person` (`personid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,'123-234-3456',1,12),(2,'234-345-4566',0,12),(3,'345-456-5677',1,23),(4,'321-432-5435',1,34),(5,'432-432-5433',0,34),(6,'543-543-6544',0,34);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priviledge`
--

DROP TABLE IF EXISTS `priviledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priviledge` (
  `priviledge_id` int(11) NOT NULL AUTO_INCREMENT,
  `priviledg_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`priviledge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priviledge`
--

LOCK TABLES `priviledge` WRITE;
/*!40000 ALTER TABLE `priviledge` DISABLE KEYS */;
INSERT INTO `priviledge` VALUES (1,'create'),(2,'read'),(3,'update'),(4,'delete');
/*!40000 ALTER TABLE `priviledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'owner'),(2,'admin'),(3,'writer'),(4,'editor'),(5,'reviewer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_agreement` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL),(2,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website` (
  `website_id` int(11) NOT NULL AUTO_INCREMENT,
  `wname` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `creates` date DEFAULT NULL,
  `wupdate` date DEFAULT NULL,
  `visits` int(11) DEFAULT NULL,
  `developerwebid` int(11) DEFAULT NULL,
  PRIMARY KEY (`website_id`),
  KEY `developerid_idx` (`developerwebid`),
  CONSTRAINT `developerwebid` FOREIGN KEY (`developerwebid`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=679 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
INSERT INTO `website` VALUES (123,'Facebook','an online social media and social networking service','2020-01-03','2020-02-07',1234234,1),(234,'Twitter','an online news and social networking service','2020-01-03','2020-02-07',4321543,2),(345,'Wikipedia','a free online encyclopedia','2020-01-03','2020-02-07',3456654,3),(456,'CNN','an American basic cable and satellite television news channel','2020-01-03','2020-02-07',6543345,1),(567,'CNET','an American media website that publishes reviews, news, articles, blogs, podcasts and videos on tech','2020-01-03','2020-02-07',5433455,2),(678,'Gizmodo','a design, technology, science and science fiction website that also writes articles on politics','2020-01-03','2020-02-07',4322345,3);
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_priviledge`
--

DROP TABLE IF EXISTS `website_priviledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_priviledge` (
  `webpid` int(11) NOT NULL AUTO_INCREMENT,
  `webpriviledge` int(11) DEFAULT NULL,
  `developerid` int(11) DEFAULT NULL,
  `wpwebsiteid` int(11) DEFAULT NULL,
  PRIMARY KEY (`webpid`),
  KEY `webpriviledge_idx` (`webpriviledge`),
  KEY `developerid_idx` (`developerid`),
  KEY `wpwebsiteid_idx` (`wpwebsiteid`),
  CONSTRAINT `developerid` FOREIGN KEY (`developerid`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `webpriviledge` FOREIGN KEY (`webpriviledge`) REFERENCES `priviledge` (`priviledge_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wpwebsiteid` FOREIGN KEY (`wpwebsiteid`) REFERENCES `website` (`website_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_priviledge`
--

LOCK TABLES `website_priviledge` WRITE;
/*!40000 ALTER TABLE `website_priviledge` DISABLE KEYS */;
INSERT INTO `website_priviledge` VALUES (71,1,1,123),(72,2,1,123),(73,3,1,123),(74,4,1,123),(75,1,1,456),(76,2,1,456),(77,3,1,456),(78,4,1,456),(79,1,2,234),(80,2,2,234),(81,3,2,234),(82,4,2,234),(83,1,2,567),(84,2,2,567),(85,3,2,567),(86,4,2,567),(87,1,3,345),(88,2,3,345),(89,3,3,345),(90,4,3,345),(91,1,3,678),(92,2,3,678),(93,3,3,678),(94,4,3,678),(95,2,2,123),(96,3,2,123),(97,2,2,456),(98,3,2,456),(99,2,3,234),(100,3,3,234),(101,2,3,567),(102,3,3,567),(103,2,1,345),(104,3,1,345),(105,2,1,678),(106,3,1,678),(107,1,3,123),(108,2,3,123),(109,3,3,123),(110,4,3,123),(111,1,3,456),(112,2,3,456),(113,3,3,456),(114,4,3,456),(115,1,1,234),(116,2,1,234),(117,3,1,234),(118,4,1,234),(119,1,1,567),(120,2,1,567),(121,3,1,567),(122,4,1,567),(123,1,2,345),(124,2,2,345),(125,3,2,345),(126,4,2,345),(127,1,2,678),(128,2,2,678),(129,3,2,678),(130,4,2,678);
/*!40000 ALTER TABLE `website_priviledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_role`
--

DROP TABLE IF EXISTS `website_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_role` (
  `webrid` int(11) NOT NULL AUTO_INCREMENT,
  `webrole` int(11) DEFAULT NULL,
  `developerwid` int(11) DEFAULT NULL,
  `wrwebsiteid` int(11) DEFAULT NULL,
  PRIMARY KEY (`webrid`),
  KEY `webrole_idx` (`webrole`),
  KEY `developerwid_idx` (`developerwid`),
  KEY `wrwebsiteid_idx` (`wrwebsiteid`),
  CONSTRAINT `developerwid` FOREIGN KEY (`developerwid`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `webrole` FOREIGN KEY (`webrole`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wrwebsiteid` FOREIGN KEY (`wrwebsiteid`) REFERENCES `website` (`website_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_role`
--

LOCK TABLES `website_role` WRITE;
/*!40000 ALTER TABLE `website_role` DISABLE KEYS */;
INSERT INTO `website_role` VALUES (1,1,1,123),(2,1,1,456),(3,1,2,234),(4,1,2,567),(5,1,3,345),(6,1,3,678),(7,4,2,123),(8,4,2,456),(9,4,3,234),(10,4,3,567),(11,4,1,345),(12,4,1,678),(13,2,3,123),(14,2,3,456),(15,2,1,234),(16,2,1,567),(17,2,2,345),(18,2,2,678);
/*!40000 ALTER TABLE `website_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`haolin`@`%`*/ /*!50003 TRIGGER `innodb`.`website_role_AFTER_INSERT` AFTER INSERT ON `website_role` FOR EACH ROW 
BEGIN
	set @var = new.developerwid;
    set @var2 = new.wrwebsiteid;
    IF new.webrole = 1 then
		/*update website_priviledge set webpriviledge = 1234;*/
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (1,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (2,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (3,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (4,@var,@var2);
	ELSEIF new.webrole = 2 then
		/*update website_priviledge set webpriviledge = 1234;*/
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (1,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (2,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (3,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (4,@var,@var2);
	ELSEIF new.webrole = 3 then
		/*update website_priviledge set webpriviledge = 123;*/
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (1,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (2,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (3,@var,@var2);
	ELSEIF new.webrole = 4 then
		/*update website_priviledge set webpriviledge = 23;*/
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (2,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (3,@var,@var2);
	ELSEIF new.webrole = 5 then
		/*update website_priviledge set webpriviledge = 3;*/
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (3,@var,@var2);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`haolin`@`%`*/ /*!50003 TRIGGER `innodb`.`website_role_AFTER_UPDATE` AFTER UPDATE ON `website_role` FOR EACH ROW
BEGIN
	set @var = new.developerwid;
	set @var2 = new.wrwebsiteid;
	delete from website_priviledge where developerid = @var;
    IF new.webrole = 1 then
		/*update website_priviledge set webpriviledge = 1234;*/
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (1,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (2,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (3,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (4,@var,@var2);
	ELSEIF new.webrole = 2 then
		/*update website_priviledge set webpriviledge = 1234;*/
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (1,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (2,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (3,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (4,@var,@var2);
	ELSEIF new.webrole = 3 then
		/*update website_priviledge set webpriviledge = 123;*/
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (1,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (2,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (3,@var,@var2);
	ELSEIF new.webrole = 4 then
		/*update website_priviledge set webpriviledge = 23;*/
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (2,@var,@var2);
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (3,@var,@var2);
	ELSEIF new.webrole = 5 then
		/*update website_priviledge set webpriviledge = 3;*/
        INSERT into website_priviledge(webpriviledge,developerid,wpwebsiteid) values (3,@var,@var2);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`haolin`@`%`*/ /*!50003 TRIGGER `innodb`.`website_role_AFTER_DELETE` AFTER DELETE ON `website_role` FOR EACH ROW
BEGIN
	set @var = old.developerwid;
    delete from website_priviledge where developerid = @var;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widget` (
  `widget_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `width` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `cssclass` varchar(45) DEFAULT NULL,
  `cssstyle` varchar(45) DEFAULT NULL,
  `text` varchar(45) DEFAULT NULL,
  `widget_order` int(11) DEFAULT NULL,
  `youtobeurl` varchar(45) DEFAULT NULL,
  `youtobesharble` tinyint(4) DEFAULT NULL,
  `youtobeexpandable` tinyint(4) DEFAULT NULL,
  `imagesc` varchar(45) DEFAULT NULL,
  `headingsize` int(11) DEFAULT NULL,
  `html` varchar(45) DEFAULT NULL,
  `DTYPE` varchar(45) NOT NULL,
  `pageid` int(11) DEFAULT NULL,
  PRIMARY KEY (`widget_id`),
  KEY `pageid_idx` (`pageid`),
  CONSTRAINT `pageid` FOREIGN KEY (`pageid`) REFERENCES `page` (`page_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget`
--

LOCK TABLES `widget` WRITE;
/*!40000 ALTER TABLE `widget` DISABLE KEYS */;
INSERT INTO `widget` VALUES (123,'head123',NULL,NULL,NULL,NULL,'Welcome',0,NULL,NULL,NULL,NULL,NULL,NULL,'heading',123),(234,'post234',NULL,NULL,NULL,NULL,'<p>Lorem</p>',0,NULL,NULL,NULL,NULL,NULL,NULL,'html',234),(345,'head345',NULL,NULL,NULL,NULL,'Hi',1,NULL,NULL,NULL,NULL,NULL,NULL,'heading',345),(456,'intro456',NULL,NULL,NULL,NULL,'<h1>Hi</h1>',2,NULL,NULL,NULL,NULL,NULL,NULL,'html',345),(567,'image345','50','100',NULL,NULL,NULL,3,NULL,NULL,NULL,'/img/567.png',NULL,NULL,'image',345),(678,'video456','400','300',NULL,NULL,NULL,0,'https://youtu.be/h67VX51QXiQ',NULL,NULL,NULL,NULL,NULL,'youtube',456);
/*!40000 ALTER TABLE `widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_CNET_type`
--

DROP TABLE IF EXISTS `widget_CNET_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widget_CNET_type` (
  `pid_use` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_CNET_type`
--

LOCK TABLES `widget_CNET_type` WRITE;
/*!40000 ALTER TABLE `widget_CNET_type` DISABLE KEYS */;
INSERT INTO `widget_CNET_type` VALUES (123),(123),(123),(123),(123),(123),(123),(123),(123),(123),(123),(123),(123),(123),(123),(123),(123),(123),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567),(567);
/*!40000 ALTER TABLE `widget_CNET_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'innodb'
--

--
-- Dumping routines for database 'innodb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-04 19:06:35
