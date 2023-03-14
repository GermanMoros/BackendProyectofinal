-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa_ropa
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `username` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(45) NOT NULL,
  `apellido_nombre` varchar(45) NOT NULL,
  `estado` enum('A','B') NOT NULL DEFAULT 'A',
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `id_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('','$2b$10$j.AlbnX8NP74Geibh2ALqen6jzao.IG3LmlhQgu9KL5JylUrYHK8S','','','A','2023-03-03 01:41:56',NULL),('elmascapito','$2b$10$edoRi87yMnOO3WxEQiAA.uKqvh5c7idQHeouysPc.OmidQRNi8TO6','elmascapo@gmail.com','german garmendia ','A','2023-03-10 14:46:15',NULL),('ELPEPE','$2b$10$rJAUudsX7QJZzgAl3MMW2uo1CbrDfpWIdF7esQyBPLhx1b3Rc4VCO','elpepe@gmail.com','el pepe','A','2023-03-12 21:37:28',NULL),('elreydelflow','$2b$10$M.IqFANp9K.PiHJLKuKLWeNrkPVW21rZf4v6N57zyuaqypPYaV1Ba','elreydelflow@gmail.com','el rey del flow ','A','2023-03-08 15:07:27',NULL),('Javi','$2b$10$jIRtaSjd3bFyL8yRvUKC/uxidzdooqyMggaELLdbqe1BVxmAPLNuK','javitorres@gmail.com','Javi','A','2023-03-09 10:25:38',NULL),('javiitorres126','$2b$10$UWFof9hph3q85qthzCl7NuCCfjfiZH92EcFzjyzRxjpW0hTLV7FTm','javi_elmascapo',' Torres Javier','A','2023-03-01 11:15:55',NULL),('javitorres','$2b$10$7XK4Jogh796LXdMjevFrduj2.pqlgPDWlFlKgIp9pnI.c9UVWn14i','javiertorres@gmail.com','javier torres','A','2023-03-08 14:39:17',NULL),('Javitorres123','$2b$10$cyVMYj5OlORDLj1G8sGnh./BSlxEdPLyFr5oMrdaeNPJgmD.v6XOi','javier.torres@gmail.com','Javier Torres','A','2023-03-05 23:20:07',NULL),('juanpedro','$2b$10$8k/Y4g5LF8xINREdTdp/hOgabdmnqc5J/laVMXL9kTNtZcO9ECco6','juanpedro@gmail.com','juan pedro picapiedra','A','2023-03-08 14:45:07',NULL),('pablito123','$2b$10$BaVcDKV3lc9VvpAbutV21e73BLuniCTRhhOujM3x8ImAt7Qi/sUK2','pablo_Perez@gmail.com','pablo perez ','A','2023-03-10 14:13:17',NULL),('pedroponcho','$2b$10$vgAfu.j2x0EWndQu.pQulek7rq3AbfNxsnTkpDSG6i/Jio9N2ocSW','pedroponcho@gmail.com','pedro poncho gutierrez ','A','2023-03-08 14:45:48',NULL),('pepe','$2b$10$qrSlaq8GUx4UbWHaqNj36O2GOOyuRhBKjgZmrakPugk/2k.STgXfi','olakease@gmail.com','pepe','A','2023-03-06 18:36:13',NULL),('pepito123','$2b$10$thJrQv4o14H.gvRVmPvzPOxHVngyVEEZBv/29fSx7WsdB3y1RbylS','pepito@gmail.com','pepito torres','A','2023-03-05 23:36:39',NULL),('prueba1','$2b$10$KPNjbCn4hc1kxwR0y.R3jeTl7P5h6UTMjUaPmOVY4v0mr68YQjdJe','prueba@gmail.com','prueba pruebita','A','2023-03-05 23:22:41',NULL),('Userprueba','$2b$10$4A2v7uWkUMO/OLj.gYKOD.kofNCFmE5bpDF3tle5gGsjScjEq425S','emaildeprueba@gmail.com','prueba para practicar','A','2023-03-10 15:50:22',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-14 13:51:27
