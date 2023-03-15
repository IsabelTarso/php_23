-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: aluno
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.11-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Department_Info`
--

DROP TABLE IF EXISTS `Department_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department_Info` (
  `department_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(175) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department_Info`
--

LOCK TABLES `Department_Info` WRITE;
/*!40000 ALTER TABLE `Department_Info` DISABLE KEYS */;
/*!40000 ALTER TABLE `Department_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Main_Info`
--

DROP TABLE IF EXISTS `Main_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Main_Info` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(4) DEFAULT NULL,
  `product_id` tinyint(4) DEFAULT NULL,
  `department_id` tinyint(4) DEFAULT NULL,
  `alt_who` varchar(225) DEFAULT NULL,
  `alt_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `NewTable_FK` (`user_id`),
  KEY `Main_Info_FK` (`product_id`),
  KEY `Main_Info_FK_1` (`department_id`),
  CONSTRAINT `Main_Info_FK` FOREIGN KEY (`product_id`) REFERENCES `Product_Info` (`product_id`),
  CONSTRAINT `Main_Info_FK_1` FOREIGN KEY (`department_id`) REFERENCES `Department_Info` (`department_id`),
  CONSTRAINT `NewTable_FK` FOREIGN KEY (`user_id`) REFERENCES `User_Info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Main_Info`
--

LOCK TABLES `Main_Info` WRITE;
/*!40000 ALTER TABLE `Main_Info` DISABLE KEYS */;
/*!40000 ALTER TABLE `Main_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pessoas`
--

DROP TABLE IF EXISTS `Pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pessoas` (
  `user_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `telefone` tinyint(4) DEFAULT NULL,
  `cpf/cnpj` tinyint(4) DEFAULT NULL,
  `nacionalidade` varchar(100) DEFAULT NULL,
  `estado civil` varchar(100) DEFAULT NULL,
  `cnae` varchar(100) DEFAULT NULL,
  `data_abertura_empresas` varchar(100) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `etnia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `Pessoas_FK` FOREIGN KEY (`user_id`) REFERENCES `User_Info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoas`
--

LOCK TABLES `Pessoas` WRITE;
/*!40000 ALTER TABLE `Pessoas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product_Info`
--

DROP TABLE IF EXISTS `Product_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product_Info` (
  `product_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `product_status` decimal(1,0) NOT NULL DEFAULT 1 COMMENT '0 - Inactive\r\n1 - Active',
  `product_seekage` decimal(10,0) DEFAULT 5 COMMENT '0 - 3 --> Low\r\n4 - 6 --> Medium\r\n7 - 10 --> High',
  `product_type` varchar(125) NOT NULL,
  `product_cost` float NOT NULL,
  `product_price` float NOT NULL,
  `product_profit` float DEFAULT NULL,
  `product_start` date NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product_Info`
--

LOCK TABLES `Product_Info` WRITE;
/*!40000 ALTER TABLE `Product_Info` DISABLE KEYS */;
/*!40000 ALTER TABLE `Product_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Info`
--

DROP TABLE IF EXISTS `User_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Info` (
  `user_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `user_status` decimal(10,0) NOT NULL DEFAULT 1 COMMENT '0 - Inactive\r\n1 - Active',
  `user_fullname` varchar(255) NOT NULL,
  `user_mail` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(555) NOT NULL,
  `user_rank` varchar(155) DEFAULT NULL,
  `department_id` tinyint(4) DEFAULT NULL,
  `log_first` datetime DEFAULT NULL,
  `log_last` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `User_Info_FK` (`department_id`),
  CONSTRAINT `User_Info_FK` FOREIGN KEY (`department_id`) REFERENCES `Department_Info` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Info`
--

LOCK TABLES `User_Info` WRITE;
/*!40000 ALTER TABLE `User_Info` DISABLE KEYS */;
/*!40000 ALTER TABLE `User_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `id_cidade` tinyint(4) NOT NULL,
  `população` varchar(100) DEFAULT NULL,
  `ultimo_senso` varchar(100) DEFAULT NULL,
  `renda_per_capita` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereço`
--

DROP TABLE IF EXISTS `endereço`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereço` (
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `numero` varchar(100) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `cep` varchar(100) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `id_estado` varchar(100) NOT NULL,
  `id_cidade` varchar(100) DEFAULT NULL,
  `id_endereços` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereço`
--

LOCK TABLES `endereço` WRITE;
/*!40000 ALTER TABLE `endereço` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereço` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id_estado` tinyint(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'aluno'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-14 21:59:06
