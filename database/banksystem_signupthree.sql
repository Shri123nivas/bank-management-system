-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: banksystem
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `signupthree`
--

DROP TABLE IF EXISTS `signupthree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signupthree` (
  `formno` varchar(10) DEFAULT NULL,
  `accounttype` varchar(30) DEFAULT NULL,
  `cardnumber` varchar(20) DEFAULT NULL,
  `pinnumber` varchar(10) DEFAULT NULL,
  `facility` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signupthree`
--

LOCK TABLES `signupthree` WRITE;
/*!40000 ALTER TABLE `signupthree` DISABLE KEYS */;
INSERT INTO `signupthree` VALUES ('5688','Saving','5040936016227788','6167',''),('5548','Saving','5040936031659006','995','ATM '),('4024','Saving','5040935993023364','922','ATM '),('22','Saving','5040936047537932','7412',''),('2242','Saving','5040936000151537','2827',''),('2614','Saving','5040936000088430','3011','ATM Mobile Banking Email Alerts Cheque Book '),('2631','Saving','5040935937683000','5015','ATM Email Alerts '),('427','Current','5040935931553188','5500',''),('7229','Saving','5040935935593080','8455','ATM Mobile Banking '),('7881','Saving','5040936039872693','714','ATM '),('1629','Saving','5043047300','3032','ATM '),('7531','Saving','5011162103','4998',NULL),('7531','Saving','5042666227','4713',NULL),('7531','Saving','5040522011','4666',NULL),('7531','Saving','5101306353','5240',NULL),('7531','Saving','5002623083','8494',NULL),('7606','Saving','5120575942','2848',NULL),('6003','Saving','5024164370','774',NULL),('9874','Saving','5057735817','161',NULL),('7584','Saving','5038422325','2596',NULL);
/*!40000 ALTER TABLE `signupthree` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-12  9:48:27
