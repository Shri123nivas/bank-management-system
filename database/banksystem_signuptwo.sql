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
-- Table structure for table `signuptwo`
--

DROP TABLE IF EXISTS `signuptwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signuptwo` (
  `formno` varchar(10) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `income` varchar(30) DEFAULT NULL,
  `education` varchar(30) DEFAULT NULL,
  `occupation` varchar(30) DEFAULT NULL,
  `pan` varchar(20) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `seniorcitizen` varchar(5) DEFAULT NULL,
  `existingaccount` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signuptwo`
--

LOCK TABLES `signuptwo` WRITE;
/*!40000 ALTER TABLE `signuptwo` DISABLE KEYS */;
INSERT INTO `signuptwo` VALUES ('5688','Hindu','General','Null','Non-Graduate','Salaried','frrw','ar','No','No'),('5548','Hindu','General','Null','Non-Graduate','Salaried','afds','wefs','No','No'),('4024','Hindu','OBC','<1,50,000','Non-Graduate','Salaried','3df45','f4545f5','No','No'),('22','Hindu','General','Null','Non-Graduate','Salaried','t46y65y','4g565g','No','No'),('2242','Hindu','General','Null','Non-Graduate','Salaried','556t54','t5tt34','No','No'),('2614','Hindu','OBC','Null','Non-Graduate','Salaried','584884898484484','5959559599595','No','No'),('2631','Hindu','SC','<1,50,000','Non-Graduate','Salaried','123456789','123456789','No','No'),('427','Hindu','General','Null','Non-Graduate','Salaried','3ewra','aweraw','No','No'),('7229','Hindu','General','Null','Non-Graduate','Salaried','cfoiikgijvibk','mi hgj85gjkbh','No','No'),('7881','Hindu','General','Null','Non-Graduate','Salaried','ye4rygtd45t44r4r44','3edwrwfa','No','No'),('1629','Hindu','General','Null','Non-Graduate','Salaried','ertfdfse','ewfdews','No','No'),('7531','Hindu','General','Null','Non-Graduate','Salaried','fsdfew','sfdfer','No','No'),('7606','Hindu','General','Null','Non-Graduate','Salaried','ew','awqSAX','No','No'),('6003','Hindu','General','Null','Non-Graduate','Salaried','weafdsawef','daWD','No','No'),('9874','Hindu','General','Null','Non-Graduate','Salaried','wreerfe','wetr','No','No'),('7584','Hindu','General','Null','Non-Graduate','Salaried','4w6ts','awrw','No','No');
/*!40000 ALTER TABLE `signuptwo` ENABLE KEYS */;
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
