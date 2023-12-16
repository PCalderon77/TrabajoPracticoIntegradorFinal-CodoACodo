-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: integrador_cac
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
  `id_orador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `apellido` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `tema` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `fecha_alta` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_orador`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oradores`
--

LOCK TABLES `oradores` WRITE;
/*!40000 ALTER TABLE `oradores` DISABLE KEYS */;
INSERT INTO `oradores` VALUES (1,'Juan','Perez','juanperex@gmail.com','Tema de Juan Perez','2023-11-22 18:30:00'),(2,'Juan','Perez','juanperex@gmail.com','Tema de Juan Perez','2023-11-22 18:30:00'),(3,'Juan 1','Perez 1','juanperez1@gmail.com','Tema de Juan Perez 1','2023-11-22 16:30:00'),(4,'Juan 2','Perez 2','juanperez2@gmail.com','Tema de Juan Perez 2','2023-11-22 17:30:00'),(5,'Juan 3','Perez 3','juanperez3@gmail.com','Tema de Juan Perez 3','2023-11-22 18:30:00'),(6,'Juan 4','Perez 4','juanperez4@gmail.com','Tema de Juan Perez 4','2023-11-22 19:30:00'),(7,'Juan 5','Perez 5','juanperez5@gmail.com','Tema de Juan Perez 5','2023-11-22 20:30:00'),(8,'Juan 1','Perez 1','juanperez1@gmail.com','Tema de Juan Perez 1','2023-11-22 16:30:00'),(9,'Juan 2','Perez 2','juanperez2@gmail.com','Tema de Juan Perez 2','2023-11-22 17:30:00'),(10,'Juan 3','Perez 3','juanperez3@gmail.com','Tema de Juan Perez 3','2023-11-22 18:30:00'),(11,'Juan 4','Perez 4','juanperez4@gmail.com','Tema de Juan Perez 4','2023-11-22 19:30:00'),(12,'Juan 5','Perez 5','juanperez5@gmail.com','Tema de Juan Perez 5','2023-11-22 20:30:00'),(13,'Juan 1','Perez 1','juanperez1@gmail.com','Tema de Juan Perez 1','2023-11-22 16:30:00'),(14,'Juan 2','Perez 2','juanperez2@gmail.com','Tema de Juan Perez 2','2023-11-22 17:30:00'),(15,'Juan 3','Perez 3','juanperez3@gmail.com','Tema de Juan Perez 3','2023-11-22 18:30:00'),(16,'Juan 4','Perez 4','juanperez4@gmail.com','Tema de Juan Perez 4','2023-11-22 19:30:00'),(17,'Juan 5','Perez 5','juanperez5@gmail.com','Tema de Juan Perez 5','2023-11-22 20:30:00'),(18,'Juan 6','Perez 6','juanperez6@gmail.com','Tema de Juan Perez 6','2023-11-22 04:30:00'),(19,'Juan 7','Perez 7','juanperez7@gmail.com','Tema de Juan Perez 7','2023-11-22 22:30:00'),(20,'Juan 8','Perez 8','juanperez8@gmail.com','Tema de Juan Perez 8','2023-11-22 23:30:00'),(21,'Juan 9','Perez 9','juanperez9@gmail.com','Tema de Juan Perez 9','2023-11-23 00:30:00'),(22,'Juan 10','Perez 10','juanperez10@gmail.com','Tema de Juan Perez 10','2023-11-23 01:30:00'),(23,'Steve','Jobs','stevejobs1@gmail.com','Tema de Steve Jobs','2023-11-22 16:30:00'),(24,'Bill','Gates','bilgates2@gmail.com','Tema de Bill Gates','2023-11-22 17:30:00'),(25,'Ada','Lovelace','adalovelace3@gmail.com','Tema de Ada Lovelace','2023-11-22 18:30:00'),(26,'Juan 4','Perez 4','juanperez4@gmail.com','Tema de Juan Perez 4','2023-11-22 19:30:00'),(27,'Juan 5','Perez 5','juanperez5@gmail.com','Tema de Juan Perez 5','2023-11-22 20:30:00'),(28,'Juan 6','Perez 6','juanperez6@gmail.com','Tema de Juan Perez 6','2023-11-22 04:30:00'),(29,'Juan 7','Perez 7','juanperez7@gmail.com','Tema de Juan Perez 7','2023-11-22 22:30:00'),(30,'Juan 8','Perez 8','juanperez8@gmail.com','Tema de Juan Perez 8','2023-11-22 23:30:00'),(31,'Juan 9','Perez 9','juanperez9@gmail.com','Tema de Juan Perez 9','2023-11-23 00:30:00'),(32,'Juan 10','Perez 10','juanperez10@gmail.com','Tema de Juan Perez 10','2023-11-23 01:30:00');
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

-- Dump completed on 2023-11-12 19:20:09
