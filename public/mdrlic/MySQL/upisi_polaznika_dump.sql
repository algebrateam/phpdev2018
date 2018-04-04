-- 3.4 Zadaca, zadatak 3.1

-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: upisi_polaznika
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
-- Table structure for table `polaznici`
--

DROP TABLE IF EXISTS `polaznici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polaznici` (
  `Sifra_polaznika` int(11) NOT NULL,
  `Ime_polaznika` varchar(50) NOT NULL,
  `Prezime_polaznika` varchar(50) NOT NULL,
  `Mjesto_stanovanja` char(25) DEFAULT NULL,
  PRIMARY KEY (`Sifra_polaznika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polaznici`
--

LOCK TABLES `polaznici` WRITE;
/*!40000 ALTER TABLE `polaznici` DISABLE KEYS */;
INSERT INTO `polaznici` VALUES (1,'Ana','Milić','Zagreb'),(2,'Sanja','Tarak','Split'),(3,'Mladen','Gork','Osijek'),(4,'Ivana','Matkić','Split'),(5,'Marina','Anić','Osijek'),(6,'Ivica','Limac','Split');
/*!40000 ALTER TABLE `polaznici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecajevi`
--

DROP TABLE IF EXISTS `tecajevi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecajevi` (
  `Sifra_tecaja` char(10) NOT NULL,
  `Naziv_tecaja` varchar(50) NOT NULL,
  PRIMARY KEY (`Sifra_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecajevi`
--

LOCK TABLES `tecajevi` WRITE;
/*!40000 ALTER TABLE `tecajevi` DISABLE KEYS */;
INSERT INTO `tecajevi` VALUES ('001','Računalni operator - uredsko poslovanje'),('002','Specijalist poslovne primjene računala'),('003','Grafički dizajner'),('N01','SQL - osnove'),('P01','Osnove rada PC računala'),('P02','Microsoft Word');
/*!40000 ALTER TABLE `tecajevi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upisi`
--

DROP TABLE IF EXISTS `upisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upisi` (
  `Sifra_polaznika` int(11) NOT NULL,
  `Sifra_tecaja` char(10) NOT NULL,
  PRIMARY KEY (`Sifra_polaznika`,`Sifra_tecaja`),
  KEY `Sifra_polaznika_idx` (`Sifra_polaznika`),
  KEY `Sifra_tecaja_idx` (`Sifra_tecaja`),
  CONSTRAINT `upisi_ibfk_1` FOREIGN KEY (`Sifra_polaznika`) REFERENCES `polaznici` (`Sifra_polaznika`),
  CONSTRAINT `upisi_ibfk_2` FOREIGN KEY (`Sifra_tecaja`) REFERENCES `tecajevi` (`Sifra_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upisi`
--

LOCK TABLES `upisi` WRITE;
/*!40000 ALTER TABLE `upisi` DISABLE KEYS */;
INSERT INTO `upisi` VALUES (1,'P01'),(2,'P02'),(3,'N01'),(4,'001'),(5,'002'),(6,'003');
/*!40000 ALTER TABLE `upisi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-03 11:26:16
