-- MySQL dump 10.17  Distrib 10.3.13-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: films
-- ------------------------------------------------------
-- Server version	10.3.13-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_flm`
--

DROP TABLE IF EXISTS `act_flm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_flm` (
  `id_act` int(11) NOT NULL,
  `id_flm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_flm`
--

LOCK TABLES `act_flm` WRITE;
/*!40000 ALTER TABLE `act_flm` DISABLE KEYS */;
INSERT INTO `act_flm` VALUES (1,2),(2,6),(3,4),(4,1),(4,4),(4,8),(5,3),(6,3),(7,7),(8,5),(8,6),(9,4),(10,1),(11,2),(12,1),(13,1),(13,8),(14,4),(15,3);
/*!40000 ALTER TABLE `act_flm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surmane` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `age` int(5) DEFAULT 36,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Љг«ЁЄ®ў ','Њ аЁп',32),(2,'Ѓ®­¤ аҐ­Є®','‘в ­Ёб« ў',42),(3,'Џ ­дЁ«®ў','ЌЁЄЁв ',35),(4,'ЏаЁ«гз­л©','Џ ўҐ«',31),(5,'ЂавҐ¬мҐў ','‹о¤¬Ё« ',51),(6,'‚ бЁ«мҐў','Ђ­ в®«Ё©',54),(7,'Љ«Ё¬®ў ','…Є вҐаЁ­ ',32),(8,'ђ в­ЁЄ®ў','Ђ«ҐЄб ­¤а',36),(9,'ЂЄбҐ­®ў ','‹оЎ®ўм',29),(10,'Ђ­в®­','• Ў а®ў',43),(11,'ЂўҐаЁ­','Њ ЄбЁ¬',43),(12,'‹®§ ','…ўЈҐ­Ёп',34),(13,'ЊгжҐ­ЁҐжҐ','ЂЈ в ',30),(14,'ђ §г¬®ўбЄ п','Љ аЁ­ ',28),(15,'„®Ўа®­а ў®ў','”Ґ¤®а',56);
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `release_y` int(11) DEFAULT 2001,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'‡ Єалв п иЄ®« ',2011),(2,'‘Є«Ёд®б®ўбЄЁ©',2012),(3,'‘ў вл',2008),(4,'Њ ¦®а',2012),(5,'Њ®бЄ®ўбЄ п Ў®а§ п',2014),(6,'Љ ЇЁв ­и ',2016),(7,'Њ®«®¤Ґ¦Є ',2014),(8,'ЉўҐбв',2018);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flm_prd`
--

DROP TABLE IF EXISTS `flm_prd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flm_prd` (
  `id_fim` int(11) NOT NULL,
  `id_prd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flm_prd`
--

LOCK TABLES `flm_prd` WRITE;
/*!40000 ALTER TABLE `flm_prd` DISABLE KEYS */;
INSERT INTO `flm_prd` VALUES (1,2),(1,3),(2,1),(3,1),(3,2),(4,2),(5,1),(5,3),(6,2),(7,2),(8,1),(8,2);
/*!40000 ALTER TABLE `flm_prd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producer`
--

DROP TABLE IF EXISTS `producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surmane` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `age` int(5) DEFAULT 36,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producer`
--

LOCK TABLES `producer` WRITE;
/*!40000 ALTER TABLE `producer` DISABLE KEYS */;
INSERT INTO `producer` VALUES (1,'Asadulin','Oleg',32),(2,'ѓ®а®ЎҐж','Њ аЄ',32),(3,'Ља б­®ў ','ћ«Ёп',29);
/*!40000 ALTER TABLE `producer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-24 15:05:25
