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
-- Table structure for table `cjenik`
--

DROP TABLE IF EXISTS `cjenik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cjenik` (
  `Sifra_cjenika` int(11) NOT NULL,
  `Kategorija` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Cijena` float DEFAULT NULL,
  PRIMARY KEY (`Sifra_cjenika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
  `Clanski_broj` int(11) NOT NULL,
  `Ime` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Prezime` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Adresa` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Telefon` char(15) COLLATE utf8_bin DEFAULT NULL,
  `Datum_uclanjenja` datetime DEFAULT NULL,
  PRIMARY KEY (`Clanski_broj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
  `Sifra_filma` int(11) NOT NULL,
  `Naziv` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Reziser` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Glavni_glumci` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Godina_izdanja` int(11) DEFAULT NULL,
  `Kolicina_DVD` int(11) DEFAULT NULL,
  `Kolicina_VHS` int(11) DEFAULT NULL,
  `Slika_naslovnice` blob,
  `Sifra_zanra` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sifra_filma`),
  KEY `Sifra_zanra` (`Sifra_zanra`),
  CONSTRAINT `Fil_zan_fk` FOREIGN KEY (`Sifra_zanra`) REFERENCES `zanr` (`Sifra_zanra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
  `Clanski_broj` int(11) NOT NULL,
  `Sifra_filma` int(11) NOT NULL,
  `Datum_posudbe` datetime NOT NULL,
  `Datum_povratka` datetime DEFAULT NULL,
  `Sifra_cjenika` int(11) NOT NULL,
  PRIMARY KEY (`Clanski_broj`,`Sifra_filma`,`Datum_posudbe`),
  KEY `Clanski_broj` (`Clanski_broj`),
  KEY `Sifra_filma` (`Sifra_filma`),
  KEY `Sifra_cjenika` (`Sifra_cjenika`),
  CONSTRAINT `Pos_cje_fk` FOREIGN KEY (`Sifra_cjenika`) REFERENCES `cjenik` (`Sifra_cjenika`),
  CONSTRAINT `Pos_cla_fk` FOREIGN KEY (`Clanski_broj`) REFERENCES `clanovi` (`Clanski_broj`),
  CONSTRAINT `Pos_fil_fk` FOREIGN KEY (`Sifra_filma`) REFERENCES `filmovi` (`Sifra_filma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
  `Sifra_zanra` int(11) NOT NULL,
  `Naziv` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Sifra_zanra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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

-- Dump completed on 2018-03-28 21:49:13
