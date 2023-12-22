-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_tp_final
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `oradores`
--

DROP TABLE IF EXISTS `oradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `fecha` timestamp(6) NOT NULL,
  `tema` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oradores`
--

LOCK TABLES `oradores` WRITE;
/*!40000 ALTER TABLE `oradores` DISABLE KEYS */;
INSERT INTO `oradores` VALUES (1,'Maria','Barles','mariawarrior@gmail.com','2023-12-20 14:38:00.000000','Uno'),(2,'Alejandro','Perez','alejandroperez@gmail.com','2023-12-21 15:40:00.000000','Dos'),(3,'Leonardo','SÃ¡nchez','leonardosanchez@gmail.com','2023-12-22 15:40:00.000000','Tres'),(4,'MarÃ­a InÃ©s','BarlÃ©s','mariawarrior@gmail.com','2023-12-27 18:13:00.000000','Cuatro'),(5,'Facundo','Cabral','facu@gmail.com','2023-12-30 18:13:00.000000','Cinco'),(6,'Mica','Castro','mc@gmail.com','2023-12-21 16:45:00.000000','Ocho'),(7,'Cami','Fernandez','cf@gmail.com','2023-12-20 16:54:00.000000','Nueve'),(8,'Juan','Gomez','jg@gmail.com','2023-12-30 17:30:00.000000','Diez'),(9,'Sebastian','Rodriguez','sr@gmail.com','2023-12-28 17:30:00.000000','Once'),(10,'Pedro','Ranco','pr@gmail.com','2023-12-25 17:40:00.000000','Doce'),(11,'Mila','Mar','mm@gmail.com','2023-12-17 18:00:00.000000','Trece'),(12,'Facundo','Cabral','facu@gmail.com','2023-12-20 19:20:00.000000','Catorce'),(13,'Pedro','Ranco','pr@gmail.com','2023-12-21 19:40:00.000000','Catorce'),(14,'Pedro','Ranco','pr@gmail.com','2023-12-21 19:40:00.000000','Catorce'),(15,'Facundo','Cabral','facu@gmail.com','2023-12-20 20:40:00.000000','UNO'),(16,'Facundo','Cabral','facu@gmail.com','2023-12-20 20:40:00.000000','UNO'),(17,'Facundo','Cabral','facu@gmail.com','2023-12-20 21:00:00.000000','DOS'),(18,'Pedro','Ranco','pr@gmail.com','2023-12-20 21:20:00.000000','tres'),(19,'Facundo','Cabral','facu@gmail.com','2023-12-21 13:35:00.000000','Cuatro'),(20,'Juan','Gomez','jg@gmail.com','2023-12-07 13:00:00.000000','Siete'),(21,'Juan','Gomez','jg@gmail.com','2023-12-07 13:00:00.000000','Siete'),(22,'Pedro','Ranco','pr@gmail.com','2023-12-08 14:08:00.000000','Ocho'),(23,'Sebastian','Rodriguez','sr@gmail.com','2023-12-09 14:20:00.000000','Nueve'),(24,'Mila','Mar','mm@gmail.com','2023-12-01 16:13:00.000000','1'),(25,'Mila','Mar','mm@gmail.com','2023-12-02 15:20:00.000000','2'),(26,'Cami','Fernandez','cf@gmail.com','2023-12-22 15:40:00.000000','hola'),(27,'Cami','Fernandez','cf@gmail.com','2023-12-22 15:40:00.000000','hola');
/*!40000 ALTER TABLE `oradores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21 15:30:22
