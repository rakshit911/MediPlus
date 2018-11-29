-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: adpproject
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease` (
  `name` varchar(50) NOT NULL,
  `medicines` varchar(50) DEFAULT NULL,
  `severity` int(2) DEFAULT NULL,
  `commoness` int(1) DEFAULT NULL,
  `time_to_recover` int(11) DEFAULT NULL,
  `home_remedies` varchar(500) DEFAULT NULL,
  `symptom1` varchar(30) DEFAULT NULL,
  `symptom2` varchar(30) DEFAULT NULL,
  `symptom3` varchar(30) DEFAULT NULL,
  `symptom4` varchar(30) DEFAULT NULL,
  `symptom5` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `symptom1` (`symptom1`),
  KEY `symptom2` (`symptom2`),
  KEY `symptom3` (`symptom3`),
  KEY `symptom4` (`symptom4`),
  KEY `symptom5` (`symptom5`),
  CONSTRAINT `disease_ibfk_1` FOREIGN KEY (`symptom1`) REFERENCES `symptoms` (`name`),
  CONSTRAINT `disease_ibfk_2` FOREIGN KEY (`symptom2`) REFERENCES `symptoms` (`name`),
  CONSTRAINT `disease_ibfk_3` FOREIGN KEY (`symptom3`) REFERENCES `symptoms` (`name`),
  CONSTRAINT `disease_ibfk_4` FOREIGN KEY (`symptom4`) REFERENCES `symptoms` (`name`),
  CONSTRAINT `disease_ibfk_5` FOREIGN KEY (`symptom5`) REFERENCES `symptoms` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `phone_no` int(13) DEFAULT NULL,
  `medical_degree1` varchar(30) DEFAULT NULL,
  `medical_degree2` varchar(30) DEFAULT NULL,
  `medical_degree3` varchar(30) DEFAULT NULL,
  `degree1_certificate` varchar(150) DEFAULT NULL,
  `degree2_certificate` varchar(150) DEFAULT NULL,
  `degree3_certificate` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`email`),
  KEY `address` (`address`),
  KEY `medical_degree1` (`medical_degree1`),
  KEY `medical_degree2` (`medical_degree2`),
  KEY `medical_degree3` (`medical_degree3`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`address`) REFERENCES `locality` (`l_id`),
  CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`medical_degree1`) REFERENCES `medical_degrees` (`name`),
  CONSTRAINT `doctor_ibfk_3` FOREIGN KEY (`medical_degree2`) REFERENCES `medical_degrees` (`name`),
  CONSTRAINT `doctor_ibfk_4` FOREIGN KEY (`medical_degree3`) REFERENCES `medical_degrees` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locality`
--

DROP TABLE IF EXISTS `locality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locality` (
  `l_id` int(11) NOT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locality`
--

LOCK TABLES `locality` WRITE;
/*!40000 ALTER TABLE `locality` DISABLE KEYS */;
/*!40000 ALTER TABLE `locality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_degrees`
--

DROP TABLE IF EXISTS `medical_degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical_degrees` (
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_degrees`
--

LOCK TABLES `medical_degrees` WRITE;
/*!40000 ALTER TABLE `medical_degrees` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_specialization`
--

DROP TABLE IF EXISTS `medical_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical_specialization` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_specialization`
--

LOCK TABLES `medical_specialization` WRITE;
/*!40000 ALTER TABLE `medical_specialization` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `phone_no` int(13) DEFAULT NULL,
  PRIMARY KEY (`email`),
  KEY `address` (`address`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`address`) REFERENCES `locality` (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptoms`
--

DROP TABLE IF EXISTS `symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symptoms` (
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptoms`
--

LOCK TABLES `symptoms` WRITE;
/*!40000 ALTER TABLE `symptoms` DISABLE KEYS */;
/*!40000 ALTER TABLE `symptoms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-06 16:42:10
