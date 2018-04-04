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
-- Table structure for table `odjeli`
--

DROP TABLE IF EXISTS `odjeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odjeli` (
  `Sifra_odjela` varchar(10) NOT NULL,
  `Ime_zaposlenika` varchar(50) NOT NULL,
  `Prezime_zaposlenika` varchar(50) NOT NULL,
  PRIMARY KEY (`Sifra_odjela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `Sifra_odjela` varchar(10) NOT NULL,
  `Sifra_zaposlenika` bigint(20) NOT NULL,
  PRIMARY KEY (`Sifra_zaposlenika`,`Sifra_odjela`),
  KEY `Sifra_zaposlenika` (`Sifra_zaposlenika`),
  KEY `Sifra_odjela` (`Sifra_odjela`),
  CONSTRAINT `Sef_Odj_fk` FOREIGN KEY (`Sifra_odjela`) REFERENCES `odjeli` (`Sifra_odjela`),
  CONSTRAINT `Sef_zap_fk` FOREIGN KEY (`Sifra_zaposlenika`) REFERENCES `zaposlenici` (`Sifra_zaposlenika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `Sifra_zaposlenika` bigint(20) NOT NULL,
  `Ime` varchar(50) NOT NULL,
  `Prezime` varchar(50) NOT NULL,
  `Sifra_odjela` varchar(10) NOT NULL,
  PRIMARY KEY (`Sifra_zaposlenika`),
  KEY `Sifra_odjela` (`Sifra_odjela`),
  CONSTRAINT `Zaposlenici_fk` FOREIGN KEY (`Sifra_odjela`) REFERENCES `odjeli` (`Sifra_odjela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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

-- Dump completed on 2018-03-28 21:49:27
