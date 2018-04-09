-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: skladiste
-- ------------------------------------------------------
-- Server version	10.1.30-MariaDB

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
-- Current Database: `skladiste`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `skladiste` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `skladiste`;

--
-- Table structure for table `proizvod`
--

DROP TABLE IF EXISTS `proizvod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proizvod` (
  `sifra_proizvoda` int(11) NOT NULL,
  `naziv` char(30) DEFAULT NULL,
  `sifra_skladista` int(11) DEFAULT NULL,
  PRIMARY KEY (`sifra_proizvoda`),
  KEY `sifra_skladista` (`sifra_skladista`),
  CONSTRAINT `proizvod_ibfk_1` FOREIGN KEY (`sifra_skladista`) REFERENCES `skladisno_mjesto` (`sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proizvod`
--

LOCK TABLES `proizvod` WRITE;
/*!40000 ALTER TABLE `proizvod` DISABLE KEYS */;
/*!40000 ALTER TABLE `proizvod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radnik`
--

DROP TABLE IF EXISTS `radnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radnik` (
  `sifra_radnika` int(11) NOT NULL,
  `ime` char(30) DEFAULT NULL,
  `sifra_skladista` int(11) DEFAULT NULL,
  PRIMARY KEY (`sifra_radnika`),
  KEY `sifra_skladista` (`sifra_skladista`),
  CONSTRAINT `radnik_ibfk_1` FOREIGN KEY (`sifra_skladista`) REFERENCES `skladisno_mjesto` (`sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radnik`
--

LOCK TABLES `radnik` WRITE;
/*!40000 ALTER TABLE `radnik` DISABLE KEYS */;
/*!40000 ALTER TABLE `radnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skladisno_mjesto`
--

DROP TABLE IF EXISTS `skladisno_mjesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skladisno_mjesto` (
  `sifra_skladista` int(11) NOT NULL,
  `naziv` char(30) DEFAULT NULL,
  `mjesto` enum('zagreb','rijeka','sisak') DEFAULT NULL,
  PRIMARY KEY (`sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skladisno_mjesto`
--

LOCK TABLES `skladisno_mjesto` WRITE;
/*!40000 ALTER TABLE `skladisno_mjesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `skladisno_mjesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voditelj`
--

DROP TABLE IF EXISTS `voditelj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voditelj` (
  `sifra_radnika` int(11) NOT NULL,
  `sifra_skladista` int(11) NOT NULL,
  PRIMARY KEY (`sifra_radnika`,`sifra_skladista`),
  KEY `sifra_radnika` (`sifra_radnika`),
  KEY `sifra_skladista` (`sifra_skladista`),
  CONSTRAINT `voditelj_ibfk_1` FOREIGN KEY (`sifra_radnika`) REFERENCES `radnik` (`sifra_radnika`),
  CONSTRAINT `voditelj_ibfk_2` FOREIGN KEY (`sifra_skladista`) REFERENCES `skladisno_mjesto` (`sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voditelj`
--

LOCK TABLES `voditelj` WRITE;
/*!40000 ALTER TABLE `voditelj` DISABLE KEYS */;
/*!40000 ALTER TABLE `voditelj` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 12:46:21
