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
-- Table structure for table `proizvod`
--

DROP TABLE IF EXISTS `proizvod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proizvod` (
  `Sifra_proizvoda` int(11) NOT NULL,
  `Naziv` char(30) COLLATE utf8_bin DEFAULT NULL,
  `Sifra_skladista` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sifra_proizvoda`),
  KEY `Sifra_skladista` (`Sifra_skladista`),
  CONSTRAINT `Pro_skl_fk` FOREIGN KEY (`Sifra_skladista`) REFERENCES `skladisno_mjesto` (`Sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
  `Sifra_radnika` int(11) NOT NULL,
  `Ime` char(30) COLLATE utf8_bin DEFAULT NULL,
  `Prezime` char(30) COLLATE utf8_bin DEFAULT NULL,
  `Sifra_skladista` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sifra_radnika`),
  KEY `Sifra_skladista` (`Sifra_skladista`),
  CONSTRAINT `Rad_skl_fk` FOREIGN KEY (`Sifra_skladista`) REFERENCES `skladisno_mjesto` (`Sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
  `Sifra_skladista` int(11) NOT NULL,
  `Naziv` char(30) COLLATE utf8_bin DEFAULT NULL,
  `Mjesto` enum('Zagreb','Rijeka','Sisak') COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skladisno_mjesto`
--

LOCK TABLES `skladisno_mjesto` WRITE;
/*!40000 ALTER TABLE `skladisno_mjesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `skladisno_mjesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voditelji`
--

DROP TABLE IF EXISTS `voditelji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voditelji` (
  `Sifra_radnika` int(11) NOT NULL,
  `Sifra_skladista` int(11) NOT NULL,
  PRIMARY KEY (`Sifra_radnika`,`Sifra_skladista`),
  KEY `Sifra_radnika` (`Sifra_radnika`),
  KEY `Sifra_skladista` (`Sifra_skladista`),
  CONSTRAINT `Vod_rad_fk` FOREIGN KEY (`Sifra_radnika`) REFERENCES `radnik` (`Sifra_radnika`),
  CONSTRAINT `Vod_skl_fk` FOREIGN KEY (`Sifra_skladista`) REFERENCES `skladisno_mjesto` (`Sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voditelji`
--

LOCK TABLES `voditelji` WRITE;
/*!40000 ALTER TABLE `voditelji` DISABLE KEYS */;
/*!40000 ALTER TABLE `voditelji` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-28 21:48:22
