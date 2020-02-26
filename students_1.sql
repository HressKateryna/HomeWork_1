-- MySQL dump 10.17  Distrib 10.3.13-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: students
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
-- Table structure for table `gr_tch`
--

DROP TABLE IF EXISTS `gr_tch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gr_tch` (
  `id_gr` int(11) NOT NULL,
  `id_tch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gr_tch`
--

LOCK TABLES `gr_tch` WRITE;
/*!40000 ALTER TABLE `gr_tch` DISABLE KEYS */;
INSERT INTO `gr_tch` VALUES 
(1,1),
(1,2),
(2,3),
(2,1),
(3,1),
(3,2),
(3,4),
(4,2),
(4,1),
(5,1),
(5,2),
(5,4),
(6,3),
(6,2),
(6,1),
(6,4);
/*!40000 ALTER TABLE `gr_tch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groops`
--

DROP TABLE IF EXISTS `groops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groops`
--

LOCK TABLES `groops` WRITE;
/*!40000 ALTER TABLE `groops` DISABLE KEYS */;
INSERT INTO `groops` VALUES 
(1,'TO'),
(2,'RPZ'),
(3,'OPK'),
(4,'GM'),
(5,'VV'),
(6,'ZA');
/*!40000 ALTER TABLE `groops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_gr`
--

DROP TABLE IF EXISTS `st_gr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `st_gr` (
  `id_st` int(11) NOT NULL,
  `id_gr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_gr`
--

LOCK TABLES `st_gr` WRITE;
/*!40000 ALTER TABLE `st_gr` DISABLE KEYS */;
INSERT INTO `st_gr` VALUES 
(1,2),
(2,3),
(2,5),
(3,6),
(3,3),
(4,1),
(4,4),
(5,1),
(5,6),
(6,2),
(7,3),
(7,4),
(8,2),
(9,4),
(10,4);
/*!40000 ALTER TABLE `st_gr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES 
(1,'Artem','Plaksa',17),
(2,'Nikita','Dolenko',18),
(3,'Dadia','Garbuz',17),
(4,'Alisa','Gura',19),
(5,'Oleg','Chaika',21),
(6,'Akim','Skiba',18),
(7,'Dima','Nagorniy',19),
(8,'Nazar','Chernov',18),
(9,'Pasha','Matvienko',19),
(10,'Sonia','Moskalenko',17);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `midlename` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES 
(1,'Daria','Olekseevna','Tishenko'),
(2,'Olena','Sergeevna','Korpan'),
(3,'Inna','Ivanovna','Boznuk'),
(4,'Nikolay','Aleksandrovich','Petrik');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-26 11:49:05
