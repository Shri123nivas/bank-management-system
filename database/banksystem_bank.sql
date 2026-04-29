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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `pin` varchar(10) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES ('6167','Tue Jan 13 18:50:52 IST 2026','Deposit','250000'),('6167','Tue Jan 13 18:51:03 IST 2026','Withdrawl','1100'),('6167','Tue Jan 13 18:51:08 IST 2026','Withdrawl','1002'),('995','Tue Jan 13 18:56:20 IST 2026','Deposit','2000'),('995','Tue Jan 13 18:56:26 IST 2026','Withdrawl','10'),('995','Tue Jan 13 18:56:31 IST 2026','withdrawl','100'),('922','Fri Jan 16 14:07:17 IST 2026','Deposit','5000'),('922','Fri Jan 16 14:07:25 IST 2026','Withdrawl','1200'),('7412','Fri Jan 16 14:22:42 IST 2026','Deposit','2000'),('2827','Mon Jan 19 12:17:03 IST 2026','Deposit','20000'),('2827','Mon Jan 19 12:17:11 IST 2026','Withdrawl','2000'),('3011','Tue Jan 20 13:07:23 IST 2026','Deposit','50000'),('3011','Tue Jan 20 13:07:30 IST 2026','Withdrawl','10000'),('3011','Tue Jan 20 13:07:48 IST 2026','Deposit','2500'),('3011','Tue Jan 20 13:07:55 IST 2026','Withdrawl','100'),('3011','Tue Jan 20 13:09:07 IST 2026','Withdrawl','2000'),('5015','Tue Jan 20 13:14:45 IST 2026','Deposit','5000'),('5015','Tue Jan 20 13:17:19 IST 2026','Withdrawl','2000'),('5500','Sat Jan 31 21:00:50 IST 2026','Deposit','2000'),('5500','Sat Jan 31 21:16:08 IST 2026','Deposit','5000'),('5500','Sat Jan 31 21:16:15 IST 2026','Withdrawl','200'),('5500','Sat Jan 31 21:16:21 IST 2026','withdrawl','500'),('8455','Mon Feb 16 13:23:56 IST 2026','Deposit','5000'),('8455','Mon Feb 16 13:24:32 IST 2026','Withdrawl','1000'),('8455','Mon Feb 16 13:24:45 IST 2026','withdrawl','1000');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
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
