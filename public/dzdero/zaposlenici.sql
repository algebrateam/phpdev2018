-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: zaposlenici
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
-- Current Database: `zaposlenici`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `zaposlenici` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `zaposlenici`;

--
-- Table structure for table `odjeli`
--

DROP TABLE IF EXISTS `odjeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odjeli` (
  `sifra_odjela` char(10) NOT NULL,
  `naziv_odjela` varchar(50) NOT NULL,
  `lokacija_odjela` varchar(50) NOT NULL,
  PRIMARY KEY (`sifra_odjela`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odjeli`
--

LOCK TABLES `odjeli` WRITE;
/*!40000 ALTER TABLE `odjeli` DISABLE KEYS */;
/*!40000 ALTER TABLE `odjeli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sefovi`
--

DROP TABLE IF EXISTS `sefovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sefovi` (
  `sifra_zaposlenika` bigint(20) NOT NULL DEFAULT '0',
  `sifra_odjela` char(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`sifra_zaposlenika`,`sifra_odjela`),
  KEY `sifra_zaposlenika` (`sifra_zaposlenika`),
  KEY `sifra_odjela` (`sifra_odjela`),
  CONSTRAINT `sefovi_ibfk_1` FOREIGN KEY (`sifra_odjela`) REFERENCES `odjeli` (`sifra_odjela`),
  CONSTRAINT `sefovi_ibfk_2` FOREIGN KEY (`sifra_zaposlenika`) REFERENCES `zaposlenici` (`sifra_zaposlenika`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sefovi`
--

LOCK TABLES `sefovi` WRITE;
/*!40000 ALTER TABLE `sefovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `sefovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaposlenici`
--

DROP TABLE IF EXISTS `zaposlenici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaposlenici` (
  `sifra_zaposlenika` bigint(20) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `sifra_odjela` char(10) NOT NULL,
  PRIMARY KEY (`sifra_zaposlenika`),
  KEY `sifra_odjela` (`sifra_odjela`),
  CONSTRAINT `zaposlenici_ibfk_1` FOREIGN KEY (`sifra_odjela`) REFERENCES `odjeli` (`sifra_odjela`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaposlenici`
--

LOCK TABLES `zaposlenici` WRITE;
/*!40000 ALTER TABLE `zaposlenici` DISABLE KEYS */;
/*!40000 ALTER TABLE `zaposlenici` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 12:04:47
