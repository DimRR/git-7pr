/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Muhtasipov
-- ------------------------------------------------------
-- Server version	11.7.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `case1`
--

DROP TABLE IF EXISTS `case1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `case1` (
  `ID_citizenship` int(11) NOT NULL,
  `case_number` int(11) DEFAULT NULL,
  `opening_date` date DEFAULT NULL,
  PRIMARY KEY (`ID_citizenship`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case1`
--

LOCK TABLES `case1` WRITE;
/*!40000 ALTER TABLE `case1` DISABLE KEYS */;
INSERT INTO `case1` VALUES
(1,12345,'2023-01-15'),
(2,67890,'2022-11-01'),
(3,13579,'2023-03-01'),
(4,24680,'2022-09-10'),
(5,98765,'2023-02-20'),
(6,54321,'2023-04-01'),
(7,11223,'2022-12-01'),
(8,44556,'2023-05-10'),
(9,77889,'2023-01-01'),
(10,99001,'2022-10-01');
/*!40000 ALTER TABLE `case1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crimes`
--

DROP TABLE IF EXISTS `crimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `crimes` (
  `ID_citizenship` int(11) NOT NULL AUTO_INCREMENT,
  `ID_height` int(11) DEFAULT NULL,
  `hair_color` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_citizenship`),
  KEY `ID_height` (`ID_height`),
  CONSTRAINT `crimes_ibfk_1` FOREIGN KEY (`ID_citizenship`) REFERENCES `case1` (`ID_citizenship`),
  CONSTRAINT `crimes_ibfk_2` FOREIGN KEY (`ID_height`) REFERENCES `grouping` (`ID_height`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crimes`
--

LOCK TABLES `crimes` WRITE;
/*!40000 ALTER TABLE `crimes` DISABLE KEYS */;
INSERT INTO `crimes` VALUES
(1,1,'Blond','Krazha'),
(2,2,'Bryunet','Moshennichestvo'),
(3,3,'Ryzhiy','Vandalizm'),
(4,1,'Shaten','Debosh'),
(5,2,'Seryy','Huliganstvo'),
(6,3,'Chernyy','Poddelka'),
(7,1,'Belyy','Ukloneniye'),
(8,2,'Kashtanovyy','Narusheniye'),
(9,3,'Rozovyy','Obman'),
(10,1,'Fioletovyy','Bezbil_proyezd');
/*!40000 ALTER TABLE `crimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouping`
--

DROP TABLE IF EXISTS `grouping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `grouping` (
  `ID_height` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL,
  `quantity` varchar(32) DEFAULT NULL,
  `type_of_activity` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_height`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouping`
--

LOCK TABLES `grouping` WRITE;
/*!40000 ALTER TABLE `grouping` DISABLE KEYS */;
INSERT INTO `grouping` VALUES
(1,'Gruppa1','Мало','1'),
(2,'Gruppa2','Средне','2'),
(3,'Gruppa3','Много','3'),
(4,'Gruppa4','Очень мало','1'),
(5,'Gruppa5','Достаточно','2'),
(6,'Gruppa6','Очень много','3'),
(7,'Gruppa7','Несколько','1'),
(8,'Gruppa8','Значительно','3'),
(9,'Gruppa9','Немного','2'),
(10,'Gruppa10','Более чем','3');
/*!40000 ALTER TABLE `grouping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-04-12 11:47:45
