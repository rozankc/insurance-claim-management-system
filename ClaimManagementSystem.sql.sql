-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: claim_management_system
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `claim`
--

DROP TABLE IF EXISTS `claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claim` (
  `claim_Number` varchar(30) NOT NULL,
  `policy_id` varchar(30) DEFAULT NULL,
  `history_id` varchar(30) DEFAULT NULL,
  `exposure_id` varchar(30) DEFAULT NULL,
  `FNOL_ID` varchar(30) DEFAULT NULL,
  `claimant_Fname` varchar(255) DEFAULT NULL,
  `claimant_Lname` varchar(255) DEFAULT NULL,
  `claim_State` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`claim_Number`),
  KEY `policy_id` (`policy_id`),
  KEY `history_id` (`history_id`),
  KEY `exposure_id` (`exposure_id`),
  KEY `FNOL_ID` (`FNOL_ID`),
  CONSTRAINT `claim_ibfk_1` FOREIGN KEY (`policy_id`) REFERENCES `policy` (`policy_id`) ON DELETE CASCADE,
  CONSTRAINT `claim_ibfk_2` FOREIGN KEY (`history_id`) REFERENCES `history` (`history_id`) ON DELETE CASCADE,
  CONSTRAINT `claim_ibfk_3` FOREIGN KEY (`exposure_id`) REFERENCES `exposure` (`exposure_id`) ON DELETE CASCADE,
  CONSTRAINT `claim_ibfk_4` FOREIGN KEY (`FNOL_ID`) REFERENCES `fnol` (`FNOL_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim`
--

LOCK TABLES `claim` WRITE;
/*!40000 ALTER TABLE `claim` DISABLE KEYS */;
INSERT INTO `claim` VALUES ('CLAIM-1234','POLID-1234','194115','EXPID-1234','FNOL-1234','Alex ','Johnson','ACTIVE\r'),('CLAIM-1235','POLID-1254','212236','EXPID-5678','FNOL-5678','Chris ','Brown','INACTIVE\r'),('CLAIM-1236','POLID-1239','235181','EXPID-9012','FNOL-9012','Casey ','Moore','ACTIVE\r'),('CLAIM-1237','POLID-1256','245826','EXPID-3456','FNOL-3456','Jane ','Brown','ACTIVE\r'),('CLAIM-1238','POLID-1246','234387','EXPID-7890','FNOL-7890','Morgan ','Jones','ACTIVE\r'),('CLAIM-1239','POLID-1257','229059','EXPID-7891','FNOL-7891','Jane ','Williams','ACTIVE\r'),('CLAIM-1240','POLID-1250','197701','EXPID-7892','FNOL-7892','Casey ','Miller','ACTIVE\r'),('CLAIM-1241','POLID-1255','198059','EXPID-7893','FNOL-7893','Pat ','Moore','ACTIVE\r'),('CLAIM-1242','POLID-1256','222372','EXPID-7894','FNOL-7894','Jamie ','Williams','ACTIVE\r'),('CLAIM-1243','POLID-1257','249630','EXPID-7895','FNOL-7895','Chris ','Moore','ACTIVE\r'),('CLAIM-1244','POLID-1258','215194','EXPID-7896','FNOL-7896','Jordan ','Brown','ACTIVE\r'),('CLAIM-1245','POLID-1234','229327','EXPID-7897','FNOL-7897','Chris ','Johnson','ACTIVE\r'),('CLAIM-1246','POLID-1254','231966','EXPID-7898','FNOL-7898','Taylor ','Smith','ACTIVE\r'),('CLAIM-1247','POLID-1239','204302','EXPID-7899','FNOL-7899','Casey ','Jones','ACTIVE\r'),('CLAIM-1248','POLID-1256','208188','EXPID-7900','FNOL-7900','John ','Davis','INACTIVE\r'),('CLAIM-1249','POLID-1246','214876','EXPID-7901','FNOL-7901','Chris ','Miller','INACTIVE\r'),('CLAIM-1250','POLID-1257','223278','EXPID-7902','FNOL-7902','Jamie ','Williams','INACTIVE\r'),('CLAIM-1251','POLID-1250','234254','EXPID-7903','FNOL-7903','Jamie ','Wilson','INACTIVE\r'),('CLAIM-1252','POLID-1255','197788','EXPID-7904','FNOL-7904','Casey ','Williams','ACTIVE\r'),('CLAIM-1253','POLID-1256','243725','EXPID-7905','FNOL-7905','Jordan ','Williams','ACTIVE\r'),('CLAIM-1254','POLID-1257','239769','EXPID-7906','FNOL-7906','Morgan ','Taylor','ACTIVE\r'),('CLAIM-1255','POLID-1258','209286','EXPID-7907','FNOL-7907','Pat ','Taylor','ACTIVE\r'),('CLAIM-1256','POLID-1234','241246','EXPID-7908','FNOL-7908','John ','Taylor','INACTIVE\r'),('CLAIM-1257','POLID-1254','228328','EXPID-7909','FNOL-7909','Jordan ','Smith','INACTIVE\r'),('CLAIM-1258','POLID-1239','211342','EXPID-7910','FNOL-7910','Casey ','Smith','INACTIVE\r');
/*!40000 ALTER TABLE `claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coveredpeople`
--

DROP TABLE IF EXISTS `coveredpeople`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coveredpeople` (
  `coveredPeople_id` varchar(30) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`coveredPeople_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coveredpeople`
--

LOCK TABLES `coveredpeople` WRITE;
/*!40000 ALTER TABLE `coveredpeople` DISABLE KEYS */;
INSERT INTO `coveredpeople` VALUES ('CovID-1234','Chris','Davis','Parent\r'),('CovID-3456','Jane','Brown','Parent\r'),('CovID-5678','Chris','Jones','Parent\r'),('CovID-7890','John','Wilson','Child\r'),('CovID-7891','Morgan','Moore','Self\r'),('CovID-7892','Jordan','Williams','Child\r'),('CovID-7893','Jamie','Moore','Child\r'),('CovID-7894','Morgan','Moore','Spouse\r'),('CovID-7895','Pat','Smith','Parent\r'),('CovID-7896','Taylor','Wilson','Child\r'),('CovID-7897','Pat','Wilson','Parent\r'),('CovID-7898','Chris','Brown','Self\r'),('CovID-7899','Jamie','Jones','Parent\r'),('CovID-7900','Jordan','Miller','Self\r'),('CovID-7901','Jamie','Miller','Parent\r'),('CovID-7902','Chris','Johnson','Child\r'),('CovID-7903','Jordan','Davis','Self\r'),('CovID-7904','Chris','Davis','Self\r'),('CovID-7905','Jamie','Brown','Parent\r'),('CovID-7906','Jordan','Wilson','Spouse\r'),('CovID-7907','Chris','Brown','Spouse\r'),('CovID-7908','Taylor','Jones','Self\r'),('CovID-7909','Casey','Smith','Child\r'),('CovID-7910','Anna','Cloud','Spouse\r'),('CovID-9012','Casey','Brown','Self\r');
/*!40000 ALTER TABLE `coveredpeople` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `employee_id` varchar(30) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES ('14ICP114','Casey','Wilson','casey.wilson@company.com','9689209693\r'),('15ICP003','Taylor','Williams','taylor.williams@outlook.com','9177369447\r'),('15ICP222','Alex','Miller','alex.miller@gmail.com','3642918421\r'),('15ICP262','Morgan','Johnson','morgan.johnson@outlook.com','9268035260\r'),('16ICP060','John','Smith','john.smith@yahoo.com','2313572190\r'),('16ICP098','Jane','Davis','jane.davis@gmail.com','2254198924\r'),('17ICP215','Jamie','Taylor','jamie.taylor@gmail.com','1382694599\r'),('17ICP234','Chris','Smith','chris.smith@company.com','9125745949\r'),('18ICP104','John','Miller','john.miller@outlook.com','3502572285\r'),('18ICP216','Jamie','Davis','jamie.davis@yahoo.com','1823177251\r'),('18ICP218','Pat','Williams','pat.williams@yahoo.com','2117472698\r'),('19ICP006','Jamie','Smith','jamie.smith@company.com','2019644141\r'),('19ICP098','Pat','Miller','pat.miller@company.com','6423143597\r'),('20ICP002','Morgan','Davis','morgan.davis@gmail.com','6386775582\r'),('20ICP024','Jordan','Moore','jordan.moore@gmail.com','4125227916\r'),('20ICP234','Jane','Johnson','jane.johnson@outlook.com','3772339480\r'),('21ICP006','Pat','Davis','pat.davis@gmail.com','5892482814\r'),('21ICP009','Pat','Miller','pat.miller@yahoo.com','6449204532\r'),('21ICP113','Casey','Miller','casey.miller@outlook.com','2888585032\r'),('22ICP024','Jordan','Wilson','jordan.wilson@gmail.com','2527468070\r'),('22ICP206','Jane','Jones','jane.jones@outlook.com','1515494068\r'),('22ICP329','Morgan','Jones','morgan.jones@company.com','3233808350\r'),('23ICP060','Alex','Moore','alex.moore@outlook.com','1781184028\r'),('24ICP104','Jake','Miller','jake.miller@outlook.com','9079944445\r'),('24ICP111','Pat','Miller','pat.miller@gmail.com','1893889474\r');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exposure`
--

DROP TABLE IF EXISTS `exposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure` (
  `exposure_id` varchar(30) NOT NULL,
  `exposureName` varchar(255) DEFAULT NULL,
  `policyCoverage_id` varchar(30) DEFAULT NULL,
  `FNOL_id` varchar(30) DEFAULT NULL,
  `financials_id` varchar(30) DEFAULT NULL,
  `exposureState` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`exposure_id`),
  KEY `policyCoverage_id` (`policyCoverage_id`),
  KEY `FNOL_id` (`FNOL_id`),
  KEY `financials_id` (`financials_id`),
  CONSTRAINT `exposure_ibfk_1` FOREIGN KEY (`policyCoverage_id`) REFERENCES `policycoverage` (`policyCoverage_id`) ON DELETE CASCADE,
  CONSTRAINT `exposure_ibfk_2` FOREIGN KEY (`FNOL_id`) REFERENCES `fnol` (`FNOL_id`) ON DELETE CASCADE,
  CONSTRAINT `exposure_ibfk_3` FOREIGN KEY (`financials_id`) REFERENCES `financial` (`financial_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exposure`
--

LOCK TABLES `exposure` WRITE;
/*!40000 ALTER TABLE `exposure` DISABLE KEYS */;
INSERT INTO `exposure` VALUES ('EXPID-1234','Collision','PCovID-1234','FNOL-1234','FinID-1234','Open\r'),('EXPID-3456','Comprehensive','PCovID-3456','FNOL-3456','FinID-3456','Open\r'),('EXPID-5678','Comprehensive','PCovID-5678','FNOL-5678','FinID-5678','Close\r'),('EXPID-7890','Collision','PCovID-7890','FNOL-7890','FinID-7890','Close\r'),('EXPID-7891','Collision','PCovID-1234','FNOL-1234','FinID-7891','Open\r'),('EXPID-7892','Comprehensive','PCovID-5678','FNOL-5678','FinID-7892','Open\r'),('EXPID-7893','Collision','PCovID-9012','FNOL-9012','FinID-7893','Open\r'),('EXPID-7894','Person Liability','PCovID-3456','FNOL-3456','FinID-7894','Close\r'),('EXPID-7895','Person Liability','PCovID-7890','FNOL-7890','FinID-7895','Open\r'),('EXPID-7896','Comprehensive','PCovID-1234','FNOL-1234','FinID-7896','Open\r'),('EXPID-7897','Collision','PCovID-5678','FNOL-5678','FinID-7897','Close\r'),('EXPID-7898','Comprehensive','PCovID-9012','FNOL-9012','FinID-7898','Open\r'),('EXPID-7899','Person Liability','PCovID-3456','FNOL-3456','FinID-7899','Close\r'),('EXPID-7900','Collision','PCovID-7890','FNOL-7890','FinID-7900','Open\r'),('EXPID-7901','Comprehensive','PCovID-1234','FNOL-1234','FinID-7901','Open\r'),('EXPID-7902','Person Liability','PCovID-5678','FNOL-5678','FinID-7902','Close\r'),('EXPID-7903','Comprehensive','PCovID-9012','FNOL-9012','FinID-7903','Open\r'),('EXPID-7904','Person Liability','PCovID-3456','FNOL-3456','FinID-7904','Close\r'),('EXPID-7905','Collision','PCovID-7890','FNOL-7890','FinID-7905','Open\r'),('EXPID-7906','Comprehensive','PCovID-1234','FNOL-1234','FinID-7906','Open\r'),('EXPID-7907','Person Liability','PCovID-5678','FNOL-5678','FinID-7907','Close\r'),('EXPID-7908','Comprehensive','PCovID-9012','FNOL-9012','FinID-7908','Close\r'),('EXPID-7909','Person Liability','PCovID-3456','FNOL-3456','FinID-7909','Open\r'),('EXPID-7910','Person Liability','PCovID-7890','FNOL-7890','FinID-7910','Close\r'),('EXPID-9012','Person Liability','PCovID-9012','FNOL-9012','FinID-9012','Open\r');
/*!40000 ALTER TABLE `exposure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial`
--

DROP TABLE IF EXISTS `financial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial` (
  `financial_id` varchar(30) NOT NULL,
  `paymentType` varchar(255) DEFAULT NULL,
  `paymentAmmount` varchar(30) DEFAULT NULL,
  `paymentStatus` varchar(10) DEFAULT NULL,
  `deductibleApplied` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`financial_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial`
--

LOCK TABLES `financial` WRITE;
/*!40000 ALTER TABLE `financial` DISABLE KEYS */;
INSERT INTO `financial` VALUES ('FinID-1234','Card','123.45','Paid','20\r'),('FinID-3456','Card','34.56','Paid','50\r'),('FinID-5678','Cash','56.78','Unpaid','30\r'),('FinID-7890','Cash','78.9','Unpaid','60\r'),('FinID-7891','Transfer','12.34','Paid','70\r'),('FinID-7892','Card','56.78','Unpaid','80\r'),('FinID-7893','Cash','90.12','Paid','90\r'),('FinID-7894','Transfer','34.56','Unpaid','20\r'),('FinID-7895','Card','78.9','Paid','30\r'),('FinID-7896','Cash','12.34','Unpaid','40\r'),('FinID-7897','Transfer','56.78','Paid','50\r'),('FinID-7898','Card','90.12','Unpaid','60\r'),('FinID-7899','Cash','34.56','Paid','70\r'),('FinID-7900','Transfer','78.9','Unpaid','80\r'),('FinID-7901','Card','12.34','Paid','90\r'),('FinID-7902','Cash','56.78','Unpaid','20\r'),('FinID-7903','Transfer','90.12','Paid','30\r'),('FinID-7904','Card','34.56','Unpaid','40\r'),('FinID-7905','Cash','78.9','Paid','50\r'),('FinID-7906','Transfer','12.34','Unpaid','60\r'),('FinID-7907','Card','56.78','Paid','70\r'),('FinID-7908','Cash','90.12','Unpaid','80\r'),('FinID-7909','Transfer','34.56','Paid','90\r'),('FinID-7910','Card','78.9','Unpaid','20\r'),('FinID-9012','Transfer','90.12','Paid','40\r');
/*!40000 ALTER TABLE `financial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnol`
--

DROP TABLE IF EXISTS `fnol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fnol` (
  `FNOL_id` varchar(30) NOT NULL,
  `lossType_id` varchar(30) DEFAULT NULL,
  `lossCause` varchar(255) DEFAULT NULL,
  `severity` varchar(10) DEFAULT NULL,
  `StateCode` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`FNOL_id`),
  KEY `lossType_id` (`lossType_id`),
  KEY `StateCode` (`StateCode`),
  CONSTRAINT `fnol_ibfk_1` FOREIGN KEY (`lossType_id`) REFERENCES `losstype` (`lossType_id`) ON DELETE CASCADE,
  CONSTRAINT `fnol_ibfk_2` FOREIGN KEY (`StateCode`) REFERENCES `lossstate` (`StateCode`),
  CONSTRAINT `fnol_ibfk_3` FOREIGN KEY (`StateCode`) REFERENCES `lossstate` (`StateCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnol`
--

LOCK TABLES `fnol` WRITE;
/*!40000 ALTER TABLE `fnol` DISABLE KEYS */;
INSERT INTO `fnol` VALUES ('FNOL-1234','LOSSID-1234','SELF DAMAGE','MEDIUM','CA\r'),('FNOL-3456','LOSSID-3456','SELF DAMAGE','LOW','FL\r'),('FNOL-5678','LOSSID-5678','SELF DAMAGE','LOW','NY\r'),('FNOL-7890','LOSSID-7890','THIRD PARTY','MEDIUM','PA\r'),('FNOL-7891','LOSSID-1234','SELF DAMAGE','MEDIUM','IL\r'),('FNOL-7892','LOSSID-5678','THIRD PARTY','LOW','OH\r'),('FNOL-7893','LOSSID-9012','SELF DAMAGE','HIGH','GA\r'),('FNOL-7894','LOSSID-3456','THIRD PARTY','MEDIUM','MI\r'),('FNOL-7895','LOSSID-7890','THIRD PARTY','LOW','NJ\r'),('FNOL-7896','LOSSID-1234','SELF DAMAGE','MEDIUM','VA\r'),('FNOL-7897','LOSSID-5678','SELF DAMAGE','LOW','WA\r'),('FNOL-7898','LOSSID-9012','THIRD PARTY','MEDIUM','NC\r'),('FNOL-7899','LOSSID-3456','SELF DAMAGE','HIGH','MA\r'),('FNOL-7900','LOSSID-7890','THIRD PARTY','MEDIUM','CO\r'),('FNOL-7901','LOSSID-1234','THIRD PARTY','LOW','TN\r'),('FNOL-7902','LOSSID-5678','SELF DAMAGE','LOW','MN\r'),('FNOL-7903','LOSSID-9012','THIRD PARTY','MEDIUM','MD\r'),('FNOL-7904','LOSSID-3456','THIRD PARTY','LOW','MO\r'),('FNOL-7905','LOSSID-7890','SELF DAMAGE','HIGH','IN\r'),('FNOL-7906','LOSSID-1234','THIRD PARTY','LOW','AZ\r'),('FNOL-7907','LOSSID-5678','SELF DAMAGE','MEDIUM','CT\r'),('FNOL-7908','LOSSID-9012','THIRD PARTY','HIGH','KY\r'),('FNOL-7909','LOSSID-3456','SELF DAMAGE','HIGH','LA\r'),('FNOL-7910','LOSSID-7890','THIRD PARTY','MEDIUM','AL\r'),('FNOL-9012','LOSSID-9012','THIRD PARTY','HIGH','TX\r');
/*!40000 ALTER TABLE `fnol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `history_id` varchar(30) NOT NULL,
  `employee_id` varchar(30) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `edited` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `history_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employer` (`employee_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES ('194115','18ICP104','2024-05-31 18:05:00','2023-05-25 23:56:00','2023-09-15 14:29:00'),('197701','17ICP215','2024-01-04 21:40:00','2024-10-09 20:39:00','2024-09-03 22:49:00'),('197788','22ICP206','2024-01-09 22:45:00','2024-02-08 15:56:00','2024-05-22 11:25:00'),('198059','18ICP218','2023-11-09 12:20:00','2023-03-13 02:13:00','2023-09-08 13:06:00'),('204302','19ICP098','2024-02-17 09:26:00','2024-06-05 20:32:00','2023-05-19 09:49:00'),('208188','20ICP024','2024-08-06 02:37:00','2023-07-22 06:46:00','2024-09-24 04:58:00'),('209286','16ICP098','2023-05-25 13:06:00','2023-11-28 18:33:00','2023-12-01 11:48:00'),('211342','24ICP104','2024-09-08 00:00:00','2023-05-03 10:29:00','2023-03-02 04:32:00'),('212236','21ICP113','2024-02-20 01:02:00','2024-10-01 23:28:00','2024-06-20 12:27:00'),('214876','16ICP060','2024-06-05 20:44:00','2023-02-14 05:21:00','2023-02-11 09:51:00'),('215194','24ICP111','2023-08-08 02:30:00','2023-09-07 18:01:00','2023-11-18 06:43:00'),('222372','22ICP329','2024-06-29 21:26:00','2024-08-16 01:44:00','2023-08-25 05:29:00'),('223278','15ICP222','2023-06-17 23:38:00','2023-12-19 07:41:00','2023-11-23 17:11:00'),('228328','19ICP006','2023-06-21 14:46:00','2023-11-30 21:29:00','2024-04-14 16:51:00'),('229059','15ICP003','2024-07-26 16:48:00','2024-01-06 10:56:00','2023-06-02 14:37:00'),('229327','21ICP006','2024-01-13 12:57:00','2023-03-24 06:31:00','2023-08-09 23:26:00'),('231966','17ICP234','2024-10-07 00:03:00','2024-08-26 00:23:00','2023-10-26 15:27:00'),('234254','15ICP262','2024-08-17 00:25:00','2023-05-15 21:31:00','2024-06-13 10:56:00'),('234387','18ICP216','2023-08-16 00:53:00','2024-04-17 21:13:00','2023-12-11 01:41:00'),('235181','20ICP002','2023-01-03 04:52:00','2024-02-27 18:57:00','2024-02-10 12:03:00'),('239769','22ICP024','2023-07-02 15:55:00','2023-08-26 04:27:00','2023-05-30 00:34:00'),('241246','20ICP234','2023-10-16 05:31:00','2023-12-18 18:26:00','2023-05-23 19:33:00'),('243725','23ICP060','2024-03-16 00:19:00','2024-09-28 09:35:00','2023-11-22 13:26:00'),('245826','14ICP114','2024-01-24 07:32:00','2024-06-27 14:45:00','2023-12-08 20:30:00'),('249630','21ICP009','2023-09-23 11:29:00','2024-04-24 21:12:00','2023-02-05 15:49:00');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lossstate`
--

DROP TABLE IF EXISTS `lossstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lossstate` (
  `StateCode` varchar(5) NOT NULL,
  `StateName` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`StateCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lossstate`
--

LOCK TABLES `lossstate` WRITE;
/*!40000 ALTER TABLE `lossstate` DISABLE KEYS */;
INSERT INTO `lossstate` VALUES ('AL','Alabama\r'),('AZ','Arizona\r'),('CA','California\r'),('CO','Collarodo\r'),('CT','Connecticut\r'),('FL','Florida\r'),('GA','Georgia\r'),('IL','Illinois\r'),('IN','Indiana\r'),('KY','Kentucky\r'),('LA','Loss Angelas\r'),('MA','Massachusetts\r'),('MD','Maryland\r'),('MI','Michigan\r'),('MN','Minnesota\r'),('MO','Missouri\r'),('NC','North Carolina\r'),('NJ','New Jersey\r'),('NY','New York\r'),('OH','Ohio\r'),('PA','Pennsylvania\r'),('TN','Tennessee\r'),('TX','Texas\r'),('VA','Virginia\r'),('WA','Washington\r');
/*!40000 ALTER TABLE `lossstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `losstype`
--

DROP TABLE IF EXISTS `losstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `losstype` (
  `lossType_id` varchar(30) NOT NULL,
  `lossTypeName` varchar(255) DEFAULT NULL,
  `lossCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lossType_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `losstype`
--

LOCK TABLES `losstype` WRITE;
/*!40000 ALTER TABLE `losstype` DISABLE KEYS */;
INSERT INTO `losstype` VALUES ('LOSSID-1234','Collision Damage','Auto\r'),('LOSSID-3456','Flood Damage','Personal\r'),('LOSSID-5678','Theft','Personal\r'),('LOSSID-7890','Hail Damage','Personal\r'),('LOSSID-9012','Hit-and-Run Damage','Auto\r');
/*!40000 ALTER TABLE `losstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy` (
  `policy_id` varchar(30) NOT NULL,
  `policyNumber` varchar(30) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `policyHolderName` varchar(255) DEFAULT NULL,
  `policyCoverage_id` varchar(30) NOT NULL,
  `coveredPeople_id` varchar(30) DEFAULT NULL,
  `vehicle_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`policy_id`,`policyCoverage_id`),
  KEY `policyCoverage_id` (`policyCoverage_id`),
  KEY `coveredPeople_id` (`coveredPeople_id`),
  KEY `vehicle_id` (`vehicle_id`),
  CONSTRAINT `policy_ibfk_1` FOREIGN KEY (`policyCoverage_id`) REFERENCES `policycoverage` (`policyCoverage_id`) ON DELETE CASCADE,
  CONSTRAINT `policy_ibfk_2` FOREIGN KEY (`coveredPeople_id`) REFERENCES `coveredpeople` (`coveredPeople_id`) ON DELETE CASCADE,
  CONSTRAINT `policy_ibfk_3` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicledetails` (`vehicle_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES ('POLID-1234','POL-LCOSZS',1,'Alex Johnson','PCovID-1234','CovID-1234','AZ-123-ABC\r'),('POLID-1234','POL-FPN5AH',1,'John Taylor','PCovID-7890','CovID-7908','CA-456-DEF\r'),('POLID-1234','POL-8MR0VI',1,'Chris Johnson','PCovID-7891','CovID-7897','NJ-234-DEF\r'),('POLID-1239','POL-S2OFH3',1,'Casey Jones','PCovID-5678','CovID-7899','MA-890-XYZ\r'),('POLID-1239','POL-HZYYEK',1,'Casey Smith','PCovID-7891','CovID-7910','NY-101-XYZ\r'),('POLID-1239','POL-WNPCUO',1,'Casey Moore','PCovID-9012','CovID-9012','FL-789-DEF\r'),('POLID-1246','POL-TLAWBF',0,'Chris Miller','PCovID-3456','CovID-7901','CO-456-ABC\r'),('POLID-1246','POL-IZKXTE',1,'Morgan Jones','PCovID-7890','CovID-7890','TX-234-XYZ\r'),('POLID-1250','POL-VS62ZA',0,'Casey Miller','PCovID-1234','CovID-7892','OH-890-ABC\r'),('POLID-1250','POL-PNPUVY',1,'Jamie Wilson','PCovID-7891','CovID-7903','MN-101-DEF\r'),('POLID-1254','POL-81KL5M',1,'Taylor Smith','PCovID-1234','CovID-7898','NC-567-ABC\r'),('POLID-1254','POL-QJ2HLW',0,'Chris Brown','PCovID-5678','CovID-5678','CA-456-XYZ\r'),('POLID-1254','POL-QHCVX4',1,'Jordan Smith','PCovID-7891','CovID-7909','FL-789-ABC\r'),('POLID-1255','POL-U554HD',1,'Casey Williams','PCovID-1234','CovID-7904','MD-234-ABC\r'),('POLID-1255','POL-RQENSX',1,'Pat Moore','PCovID-5678','CovID-7893','MI-123-XYZ\r'),('POLID-1256','POL-FT4Q0I',1,'Jane Brown','PCovID-3456','CovID-3456','NY-101-ABC\r'),('POLID-1256','POL-P888T8',0,'Jordan Williams','PCovID-5678','CovID-7905','MO-567-XYZ\r'),('POLID-1256','POL-130HAB',1,'John Davis','PCovID-7891','CovID-7900','WA-123-DEF\r'),('POLID-1256','POL-K1BVTV',0,'Jamie Johnson','PCovID-9012','CovID-7894','IL-456-DEF\r'),('POLID-1257','POL-3XDFVL',1,'Chris Moore','PCovID-3456','CovID-7895','GA-789-ABC\r'),('POLID-1257','POL-3TL6ZB',1,'Jamie Johnson','PCovID-7890','CovID-7902','TN-789-XYZ\r'),('POLID-1257','POL-A26IWL',0,'Jane Williams','PCovID-7891','CovID-7891','PA-567-DEF\r'),('POLID-1257','POL-ZSCCED',0,'Morgan Taylor','PCovID-9012','CovID-7906','IN-890-ABC\r'),('POLID-1258','POL-OGBQKH',0,'Pat Taylor','PCovID-3456','CovID-7907','AZ-123-XYZ\r'),('POLID-1258','POL-R3SFU1',0,'Jordan Brown','PCovID-7890','CovID-7896','VA-101-XYZ\r');
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policycoverage`
--

DROP TABLE IF EXISTS `policycoverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policycoverage` (
  `policyCoverage_id` varchar(30) NOT NULL,
  `coverageName` varchar(30) DEFAULT NULL,
  `coveredAmount` varchar(30) DEFAULT NULL,
  `deductible` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`policyCoverage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policycoverage`
--

LOCK TABLES `policycoverage` WRITE;
/*!40000 ALTER TABLE `policycoverage` DISABLE KEYS */;
INSERT INTO `policycoverage` VALUES ('PCovID-1234','Liability','28641.69','1920.14\r'),('PCovID-3456','Uninsured Motorist','29495.41','125.55\r'),('PCovID-5678','Collision','84243.92','720.88\r'),('PCovID-7890','Personal Injury Protection','55324.8','1693.53\r'),('PCovID-7891','Third party Liability','41615.24','583.02\r'),('PCovID-9012','Comprehensive','17770.7','1886.38\r');
/*!40000 ALTER TABLE `policycoverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicledetails`
--

DROP TABLE IF EXISTS `vehicledetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicledetails` (
  `vehicle_id` varchar(30) NOT NULL,
  `vehicleName` varchar(30) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `yearManufactured` date DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicledetails`
--

LOCK TABLES `vehicledetails` WRITE;
/*!40000 ALTER TABLE `vehicledetails` DISABLE KEYS */;
INSERT INTO `vehicledetails` VALUES ('AZ-123-ABC','Toyota Corolla','Coupe','2022-01-01','Black\r'),('AZ-123-XYZ','Tesla Model 3','SUV','1994-01-01','Blue\r'),('CA-456-DEF','Honda Civic','Coupe','2006-01-01','Grey\r'),('CA-456-XYZ','Tesla Model 3','Truck','2005-01-01','Blue\r'),('CO-456-ABC','Ford Focus','SUV','2018-01-01','White\r'),('FL-789-ABC','Toyota Corolla','SUV','2010-01-01','Silver\r'),('FL-789-DEF','Ford Focus','Coupe','2010-01-01','Grey\r'),('GA-789-ABC','Chevrolet Malibu','SUV','2022-01-01','Black\r'),('IL-456-DEF','Ford Focus','Coupe','1995-01-01','Black\r'),('IN-890-ABC','Ford Focus','SUV','2006-01-01','Silver\r'),('MA-890-XYZ','Toyota Corolla','Sedan','2020-01-01','Blue\r'),('MD-234-ABC','Chevrolet Malibu','SUV','1998-01-01','Silver\r'),('MI-123-XYZ','Ford Focus','Sedan','2022-01-01','Red\r'),('MN-101-DEF','Honda Civic','Truck','1993-01-01','Red\r'),('MO-567-XYZ','Honda Civic','Sedan','2012-01-01','Blue\r'),('NC-567-ABC','Honda Civic','Sedan','2023-01-01','White\r'),('NJ-234-DEF','Tesla Model 3','Truck','2020-01-01','Grey\r'),('NY-101-ABC','Toyota Corolla','SUV','2014-01-01','Red\r'),('NY-101-XYZ','Chevrolet Malibu','Truck','2000-01-01','Red\r'),('OH-890-ABC','Chevrolet Malibu','SUV','2007-01-01','Red\r'),('PA-567-DEF','Ford Focus','Truck','2010-01-01','Grey\r'),('TN-789-XYZ','Chevrolet Malibu','Coupe','2022-01-01','Red\r'),('TX-234-XYZ','Honda Civic','Truck','1991-01-01','Grey\r'),('VA-101-XYZ','Chevrolet Malibu','SUV','2009-01-01','White\r'),('WA-123-DEF','Toyota Corolla','Coupe','2007-01-01','Black\r');
/*!40000 ALTER TABLE `vehicledetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-08 20:49:39
