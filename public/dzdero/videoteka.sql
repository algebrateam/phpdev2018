-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: videoteka
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
-- Current Database: `videoteka`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `videoteka` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `videoteka`;

--
-- Table structure for table `cjenik`
--

DROP TABLE IF EXISTS `cjenik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cjenik` (
  `sifra_cjenika` int(11) NOT NULL,
  `kategorija` varchar(30) DEFAULT NULL,
  `cijena` float DEFAULT NULL,
  PRIMARY KEY (`sifra_cjenika`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cjenik`
--

LOCK TABLES `cjenik` WRITE;
/*!40000 ALTER TABLE `cjenik` DISABLE KEYS */;
/*!40000 ALTER TABLE `cjenik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clanovi`
--

DROP TABLE IF EXISTS `clanovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clanovi` (
  `clanski_broj` int(11) NOT NULL,
  `ime` varchar(30) DEFAULT NULL,
  `prezime` varchar(30) DEFAULT NULL,
  `adresa` varchar(30) DEFAULT NULL,
  `telefon` char(15) DEFAULT NULL,
  `datum_uclanjenja` datetime DEFAULT NULL,
  PRIMARY KEY (`clanski_broj`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clanovi`
--

LOCK TABLES `clanovi` WRITE;
/*!40000 ALTER TABLE `clanovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `clanovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmovi`
--

DROP TABLE IF EXISTS `filmovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filmovi` (
  `sifra_filma` int(11) NOT NULL,
  `naziv` varchar(30) DEFAULT NULL,
  `reziser` varchar(30) DEFAULT NULL,
  `glavni_glumci` varchar(100) DEFAULT NULL,
  `godina_izdanja` int(11) DEFAULT NULL,
  `kolicina_dvd` int(11) DEFAULT NULL,
  `kolicina_vhs` int(11) DEFAULT NULL,
  `slika_naslovnice` blob,
  `sifra_zanra` int(11) DEFAULT NULL,
  PRIMARY KEY (`sifra_filma`),
  KEY `sifra_zanra` (`sifra_zanra`),
  CONSTRAINT `filmovi_ibfk_1` FOREIGN KEY (`sifra_zanra`) REFERENCES `zanr` (`sifra_zanra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmovi`
--

LOCK TABLES `filmovi` WRITE;
/*!40000 ALTER TABLE `filmovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `filmovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posudba`
--

DROP TABLE IF EXISTS `posudba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posudba` (
  `clanski_broj` int(11) NOT NULL,
  `sifra_filma` int(11) NOT NULL,
  `datum_posudbe` datetime NOT NULL,
  `datum_povrata` datetime DEFAULT NULL,
  `sifra_cjenika` int(11) NOT NULL,
  PRIMARY KEY (`clanski_broj`,`sifra_filma`,`datum_posudbe`),
  KEY `clanski_broj` (`clanski_broj`),
  KEY `sifra_filma` (`sifra_filma`),
  KEY `sifra_cjenika` (`sifra_cjenika`),
  CONSTRAINT `posudba_ibfk_1` FOREIGN KEY (`clanski_broj`) REFERENCES `clanovi` (`clanski_broj`),
  CONSTRAINT `posudba_ibfk_2` FOREIGN KEY (`sifra_filma`) REFERENCES `filmovi` (`sifra_filma`),
  CONSTRAINT `posudba_ibfk_3` FOREIGN KEY (`sifra_cjenika`) REFERENCES `cjenik` (`sifra_cjenika`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posudba`
--

LOCK TABLES `posudba` WRITE;
/*!40000 ALTER TABLE `posudba` DISABLE KEYS */;
/*!40000 ALTER TABLE `posudba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zanr`
--

DROP TABLE IF EXISTS `zanr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zanr` (
  `sifra_zanra` int(11) NOT NULL,
  `naziv` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sifra_zanra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zanr`
--

LOCK TABLES `zanr` WRITE;
/*!40000 ALTER TABLE `zanr` DISABLE KEYS */;
/*!40000 ALTER TABLE `zanr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 12:42:12
