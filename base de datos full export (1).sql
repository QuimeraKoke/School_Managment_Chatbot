-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: asistente_icco
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id_cursos` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_cursos`),
  UNIQUE KEY `id_cursos_UNIQUE` (`id_cursos`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'4a'),(2,'4b'),(3,'4c'),(4,'4d');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario` (
  `id_horario` int NOT NULL AUTO_INCREMENT,
  `id_cursos` int NOT NULL,
  `id_materia` int NOT NULL,
  `dia` text,
  `hora_inicio` varchar(45) NOT NULL,
  `hora_final` varchar(45) NOT NULL,
  PRIMARY KEY (`id_horario`,`id_cursos`,`id_materia`),
  KEY `fk_cursos_has_materia_materia1_idx` (`id_materia`),
  KEY `fk_cursos_has_materia_cursos1_idx` (`id_cursos`),
  CONSTRAINT `fk_cursos_has_materia_cursos1` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`),
  CONSTRAINT `fk_cursos_has_materia_materia1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (1,1,14,'Lunes','8:00','9:30'),(2,1,5,'Lunes','9:50','11:20'),(3,1,7,'Lunes','11:30','13:00'),(4,1,20,'Lunes','13:45','15:15'),(5,1,19,'Lunes','13:45','15:15'),(6,1,20,'Lunes','15:30','17:00'),(7,1,19,'Lunes','15:30','17:00'),(8,1,8,'Lunes','8:00','9:30'),(9,1,16,'Martes','9:50','11:20'),(10,1,18,'Martes','11:30','13:00'),(11,1,6,'Martes','11:30','13:00'),(12,1,18,'Martes','13:45','15:15'),(13,1,6,'Martes','13:45','15:15'),(14,1,2,'Martes','15:30','17:00'),(15,1,18,'Miercoles','8:00','9:30'),(16,1,6,'Miercoles','8:00','9:30'),(17,1,2,'Miercoles','9:50','11:20'),(18,1,1,'Miercoles','11:30','13:00'),(19,1,15,'Miercoles','13:45','14:30'),(20,1,21,'Jueves','8:00','9:30'),(21,1,22,'Jueves','8:00','9:30'),(22,1,4,'Jueves','9:50','11:20'),(23,1,1,'Jueves','11:30','13:00'),(24,1,20,'Jueves','13:45','15:15'),(25,1,19,'Jueves','13:45','15:15'),(26,1,2,'Jueves','15:30','17:00'),(27,1,1,'Viernes','8:00','9:30'),(28,1,3,'Viernes','9:50','11:20'),(29,1,21,'Viernes','11:30','13:00'),(30,1,22,'Viernes','11:30','13:00'),(31,1,21,'Viernes','13:45','15:15'),(32,1,22,'Viernes','13:45','15:15'),(43,2,1,'Lunes','8:00','9:30'),(44,2,23,'Lunes','9:50','11:20'),(45,2,24,'Lunes','11:30','13:00'),(46,2,3,'Lunes','13:45','15:15'),(47,2,5,'Lunes','15:30','17:00'),(48,2,25,'Martes','8:00','9:30'),(49,2,2,'Martes','9:50','11:20'),(50,2,1,'Martes','11:30','13:00'),(51,2,26,'Martes','13:45','15:15'),(52,2,26,'Martes','15:30','17:00'),(53,2,13,'Miercoles','8:00','9:30'),(54,2,7,'Miercoles','9:50','10:35'),(55,2,8,'Miercoles','10:35','11:20'),(56,2,25,'Miercoles','11:30','13:00'),(57,2,15,'Miercoles','13:45','14:30'),(58,2,27,'Jueves','8:00','9:30'),(59,2,16,'Jueves','9:50','11:20'),(60,2,4,'Jueves','11:30','13:00'),(61,2,26,'Jueves','13:45','15:15'),(62,2,14,'Jueves','15:30','17:00'),(63,2,2,'Viernes','8:00','9:30'),(64,2,23,'Viernes','9:50','11:20'),(65,2,23,'Viernes','11:30','13:00'),(66,2,25,'Viernes','13:45','15:15'),(67,3,9,'Lunes','8:00','9:30'),(68,3,9,'Lunes','9:50','11:20'),(69,3,9,'Lunes','11:30','13:00'),(70,3,4,'Lunes','13:45','15:15'),(71,3,11,'Lunes','15:15','17:00'),(72,3,13,'Martes','8:00','9:30'),(73,3,12,'Martes','9:50','11:20'),(74,3,14,'Martes','11:30','13:00'),(75,3,1,'Martes','13:45','15:15'),(76,3,12,'Martes','15:15','17:00'),(77,3,2,'Miercoles','8:00','9:30'),(78,3,10,'Miercoles','9:50','11:20'),(79,3,8,'Miercoles','11:30','12:15'),(80,3,7,'Miercoles','12:15','13:00'),(81,3,15,'Miercoles','13:45','2:30'),(82,3,17,'Jueves','8:00','9:30'),(83,3,17,'Jueves','9:50','11:20'),(84,3,17,'Jueves','11:30','13:00'),(85,3,3,'Jueves','13:45','15:15'),(86,3,16,'Jueves','15:30','17:00'),(87,3,1,'Viernes','8:00','9:30'),(88,3,2,'Viernes','9:50','11:20'),(89,3,10,'Viernes','11:30','13:00'),(90,3,5,'Viernes','13:45','15:15'),(91,4,2,'Lunes','8:00','9:30'),(92,4,3,'Lunes','9:50','11:20'),(93,4,10,'Lunes','11:30','13:00'),(94,4,10,'Lunes','13:45','14:30'),(95,4,9,'Lunes','14:30','15:15'),(96,4,4,'Lunes','15:30','17:00'),(97,4,17,'Martes','8:00','9:30'),(98,4,17,'Martes','9:50','11:20'),(99,4,7,'Martes','11:30','12:15'),(100,4,8,'Martes','12:15','13:00'),(101,4,12,'Martes','13:45','15:15'),(102,4,2,'Martes','15:30','17:00'),(103,4,12,'Miercoles','8:00','9:30'),(104,4,1,'Miercoles','9:50','11:20'),(105,4,5,'Miercoles','11:30','13:00'),(106,4,15,'Miercoles','13:45','14:30'),(107,4,17,'Jueves','8:00','9:30'),(108,4,1,'Jueves','9:50','11:20'),(109,4,10,'Jueves','11:30','13:00'),(110,4,9,'Jueves','13:45','15:15'),(111,4,9,'Jueves','15:30','17:00'),(112,4,14,'Viernes','8:00','9:30'),(113,4,11,'Viernes','9:50','11:20'),(114,4,16,'Viernes','11:30','13:00'),(115,4,13,'Viernes','13:45','15:15');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_materia`),
  UNIQUE KEY `id_materia_UNIQUE` (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Lenguaje'),(2,'Matematicas'),(3,'Ed_ciudadana'),(4,'C_ciudadania'),(5,'Ed_fisica'),(6,'dif_artes'),(7,'Taller_matematica'),(8,'Talller_lenguaje'),(9,'Conv_redes'),(10,'Electronica2'),(11,'Seguridad_laboral'),(12,'Nvas_tecnologias'),(13,'Emprendimiento'),(14,'Ingles'),(15,'Orientacion'),(16,'Filosofia'),(17,'Redes'),(18,'dif_musica'),(19,'dif_mat'),(20,'dif_lenguaje'),(21,'dif_historia'),(22,'dif_ciencias'),(23,'enfermeria'),(24,'entorno'),(25,'urgencias'),(26,'infecciones'),(27,'medicamentos');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_trabajo`
--

DROP TABLE IF EXISTS `tipo_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_trabajo` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `tipo` text NOT NULL,
  PRIMARY KEY (`id_tipo`),
  UNIQUE KEY `id_tipo_UNIQUE` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_trabajo`
--

LOCK TABLES `tipo_trabajo` WRITE;
/*!40000 ALTER TABLE `tipo_trabajo` DISABLE KEYS */;
INSERT INTO `tipo_trabajo` VALUES (7,'Prueba'),(8,'Tarea'),(9,'Proyecto');
/*!40000 ALTER TABLE `tipo_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajos`
--

DROP TABLE IF EXISTS `trabajos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajos` (
  `id_trabajos` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `id_cursos` int NOT NULL,
  `id_materia` int NOT NULL,
  `id_tipo` int NOT NULL,
  PRIMARY KEY (`id_trabajos`,`id_materia`,`id_tipo`),
  UNIQUE KEY `id_trabajos_UNIQUE` (`id_trabajos`),
  KEY `fk_trabajos_cursos1_idx` (`id_cursos`),
  KEY `fk_trabajos_materia1_idx` (`id_materia`),
  KEY `fk_trabajos_tipo_trabajo1_idx` (`id_tipo`),
  CONSTRAINT `fk_trabajos_cursos1` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`),
  CONSTRAINT `fk_trabajos_materia1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`),
  CONSTRAINT `fk_trabajos_tipo_trabajo1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_trabajo` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajos`
--

LOCK TABLES `trabajos` WRITE;
/*!40000 ALTER TABLE `trabajos` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-24 21:55:20
