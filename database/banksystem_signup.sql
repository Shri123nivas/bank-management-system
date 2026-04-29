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
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup` (
  `formno` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`formno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES ('1629','feersf','assad','Feb 6, 2026','Male','asdcdasd'),('22','45g4545hy','4g5w43h6','Jan 7, 2026','Male','554g454'),('2242','t5t543t54','t54t35t4','Jan 8, 2026','Male','ttt'),('2614','golu pawar','baburao','Jan 23, 2026','Male','golu@123'),('2631','Mayur Rithe','Ganesh','Jan 14, 2004','Male','mayur@gmail.com'),('4024','om jadhav','yash','Jan 5, 2026','Male','s3s3s3'),('427','shrinivas patil','anant patil','Oct 13, 2026','Male','shripatil1234@gmail.com'),('5548','yash patekar','harish','Jan 7, 2026','Male','da12'),('5688','shrinivas patil','anant','Jan 6, 2026','Male','asd@12'),('6003','resg','serf','Feb 6, 2026','Male','shrinivaspatil1310@gmail.com'),('7229','xgsdfx','fsdxfvdv','Feb 5, 2026','Male','gfdxmj@gmail.com'),('7531','shrinivas patil','anant','Oct 13, 2005','Male','shripatil1310@gmail.com'),('7584','dsfegz','aefer','Feb 5, 2026','Male','shripatil1310@gmail.com'),('7606','adesd','weads','Feb 13, 2026','Male','shripatil1310@gmail.com'),('7881','r3erwe','r4egrger','Feb 5, 2026','Male','fwesfer'),('9874','sfedgd','sgrs','Feb 9, 2026','Male','shripatil1310@gmail.com');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
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
