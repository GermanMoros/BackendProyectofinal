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
-- Table structure for table `buzosycamperas`
--

DROP TABLE IF EXISTS `buzosycamperas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buzosycamperas` (
  `idBuzosyCamperas` int NOT NULL AUTO_INCREMENT,
  `Talle` varchar(45) NOT NULL,
  `Color` varchar(45) NOT NULL,
  `Cantidad` int NOT NULL,
  `Estado` enum('A','B') DEFAULT 'A',
  PRIMARY KEY (`idBuzosyCamperas`),
  UNIQUE KEY `idBuzosyCamperas_UNIQUE` (`idBuzosyCamperas`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buzosycamperas`
--

LOCK TABLES `buzosycamperas` WRITE;
/*!40000 ALTER TABLE `buzosycamperas` DISABLE KEYS */;
INSERT INTO `buzosycamperas` VALUES (1,'S','Blanco',0,'A'),(2,'M','Blanco',116,'A'),(3,'L','Blanco',10,'B'),(4,'XL','Blanco',14,'A'),(5,'S','Rojo',8,'A'),(6,'M','Rojo',6,'A'),(9,'L','Rojo',12,'A'),(10,'XL','Rojo',10,'A'),(11,'S','Azul',13,'A'),(14,'M','Azul',10,'A'),(15,'L','Azul',116,'A'),(16,'XL','Azul',116,'A');
/*!40000 ALTER TABLE `buzosycamperas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanclas`
--

DROP TABLE IF EXISTS `chanclas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chanclas` (
  `idChanclas` int NOT NULL AUTO_INCREMENT,
  `Cantidad` int NOT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Talle` varchar(45) DEFAULT NULL,
  `Estado` enum('A','B') NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idChanclas`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanclas`
--

LOCK TABLES `chanclas` WRITE;
/*!40000 ALTER TABLE `chanclas` DISABLE KEYS */;
INSERT INTO `chanclas` VALUES (1,4,'Rojo','S','B'),(2,0,'Rojo','M','B'),(3,5,'Rojo','L','A'),(4,10,'Rojo','XL','B'),(5,2,'Blanco','S','B'),(6,1,'Blanco','M','A'),(7,123,'Blanco','L','A'),(8,12345,'Blanco','XL','A'),(9,123,'Plateado','L','A'),(10,14,'Turquesa','M','A'),(11,124,'verde','L','A'),(12,4,'Rojo','S','A'),(13,123,'Rojo','M','A');
/*!40000 ALTER TABLE `chanclas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Producto` varchar(45) NOT NULL,
  `Estado` enum('A','B') NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (5,'pinpon','el reino del muy muy lejano ','12414124242','Remeras','A'),(6,'javiitorres126','las hortensias','2131232321','Mallas','B'),(7,'elsaca chispa ','ituzainyork','1245124124','Mallas','B'),(8,'Pancho pistol','enfrentedelcasino','1231231231','Chanclas','A'),(9,'Delacruuuucito','mexico','123113123','Pantalones','A'),(10,'Hermaioni','ituzainyork','43534535','Buzos y Camperas','A');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mallas`
--

DROP TABLE IF EXISTS `mallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mallas` (
  `idMallas` int NOT NULL AUTO_INCREMENT,
  `Talle` varchar(45) NOT NULL,
  `Cantidad` int NOT NULL,
  `Color` varchar(45) NOT NULL,
  `Estado` enum('A','B') NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idMallas`),
  UNIQUE KEY `idMallas_UNIQUE` (`idMallas`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mallas`
--

LOCK TABLES `mallas` WRITE;
/*!40000 ALTER TABLE `mallas` DISABLE KEYS */;
INSERT INTO `mallas` VALUES (1,'S',4,'Rojo','B'),(2,'M',7,'Rojo','B'),(3,'L',19,'Rojo','A'),(4,'XL',27,'Rojo','A'),(5,'S',7,'Celeste','A'),(6,'M',89,'Celeste','A'),(7,'L',456,'Celeste','A'),(8,'XL',4,'Celeste','A'),(9,'S',2,'AZUL','A'),(10,'S',4,'BORDO','A'),(11,'S',3,'VIOLETA','A'),(12,'S',3,'Azul marino ','A');
/*!40000 ALTER TABLE `mallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pantalones`
--

DROP TABLE IF EXISTS `pantalones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pantalones` (
  `idPantalones` int NOT NULL AUTO_INCREMENT,
  `Color` varchar(45) NOT NULL,
  `Talle` varchar(5) NOT NULL,
  `Cantidad` int NOT NULL,
  `Estado` enum('A','B') DEFAULT 'A',
  PRIMARY KEY (`idPantalones`),
  UNIQUE KEY `idPantalones_UNIQUE` (`idPantalones`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pantalones`
--

LOCK TABLES `pantalones` WRITE;
/*!40000 ALTER TABLE `pantalones` DISABLE KEYS */;
INSERT INTO `pantalones` VALUES (1,'Turquesa','S',0,'B'),(2,'Turquesa','M',9,'A'),(3,'Turquesa','L',78,'A'),(4,'Turquesa','XL',12,'B'),(5,'Azul','S',2,'A'),(6,'Azul','M',1234,'A'),(7,'Azul','L',123123,'A'),(8,'Azul','XL',123,'B');
/*!40000 ALTER TABLE `pantalones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `buzosycamperas` varchar(45) DEFAULT NULL,
  `chanclas` varchar(45) DEFAULT NULL,
  `pantalones` varchar(45) DEFAULT NULL,
  `remeras` varchar(45) DEFAULT NULL,
  `mallas` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedores` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Producto` varchar(45) NOT NULL,
  `Estado` enum('A','B') NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idProveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'The old image','asd 1234','3698655625','Remeras','B'),(4,'patapata','elcentro','123131213','Pantalones','B'),(5,'Pancho','enfrente del casino','124124124','Remeras','B'),(7,'MetaRem','afuera del verbo','1235235','Mallas','A'),(13,'Hermaioni','Ituzainyork','123435345','Buzos y Camperas','A');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remeras`
--

DROP TABLE IF EXISTS `remeras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remeras` (
  `idRemeras` int NOT NULL AUTO_INCREMENT,
  `Talle` varchar(45) NOT NULL,
  `Cantidad` int NOT NULL,
  `Color` varchar(45) NOT NULL,
  `Estado` enum('A','B') DEFAULT 'A',
  PRIMARY KEY (`idRemeras`),
  UNIQUE KEY `idRemeras_UNIQUE` (`idRemeras`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remeras`
--

LOCK TABLES `remeras` WRITE;
/*!40000 ALTER TABLE `remeras` DISABLE KEYS */;
INSERT INTO `remeras` VALUES (1,'S',6,'Verde','B'),(2,'M',7,'Verde','B'),(3,'L',19,'Verde','A'),(4,'XL',21,'Verde','A'),(5,'S',9,'Negro','A'),(6,'M',4,'Negro','A'),(7,'L',789,'Negro','A'),(8,'XL',123,'Negro','A');
/*!40000 ALTER TABLE `remeras` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `usuarios_roles`
--

DROP TABLE IF EXISTS `usuarios_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_rol` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_roles`
--

LOCK TABLES `usuarios_roles` WRITE;
/*!40000 ALTER TABLE `usuarios_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-14 18:21:45
