CREATE DATABASE  IF NOT EXISTS `sistema_biblioteca_simple_2021_02` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sistema_biblioteca_simple_2021_02`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_biblioteca_simple_2021_02
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `idAlumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  PRIMARY KEY (`idAlumno`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'Elba ','Flores','74859685','elbafloreso@gmail.com','2000-10-10','2010-10-10 00:00:00'),(2,'Juan','Perez Lopez','87474747','juanPerez@gmail.com','1997-10-10','2010-10-10 00:00:00'),(30,'Pedro Luis','Perez','74859685','elbafloreso@gmail.com','2000-10-09','2021-05-10 15:47:48'),(31,'Carlos Alexandro','Vera Torres','72844057','carlitosvera@gmail.com','2003-09-09','2021-09-30 15:16:20'),(32,'Carlita Fiorella','Vera Torres','72844047','fiorellavera@gmail.com','2003-09-09','2021-09-30 15:19:07'),(33,'Giovanna Martizaa','Torres Salazar','72855099','giovana@gmail.com','1975-06-12','2021-09-30 15:21:39'),(35,'Felix Kylian','Quimbembe','72660786','felixquimbenbe@gmail.com','1996-09-06','2021-10-23 15:02:28'),(36,'Jennyfer Milagros','Vera Torres','72822011','Jenny@gmail.com','1995-04-03','2021-11-13 14:49:44'),(38,'Martiza Estela','Torres','72855012','martiza@gmail.com','1972-12-04','2021-11-13 14:54:40'),(39,'Nicolas','Gonzales','72833048','Nicolaz@gmail.com','1993-03-01','2021-11-13 14:56:55'),(40,'Marlene Rosaa','Torres Salazar','72855061','marlene69@gmail.com','1969-08-03','2021-11-16 10:31:25'),(41,'Carlos Orlando','Vera Rodriguez','72855123','orlando1234@gmail.com','1972-08-04','2021-11-16 10:40:02');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `nacionalidad` varchar(100) DEFAULT NULL,
  `grado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Luis','Perez','2020-10-11','2021-11-27 00:00:00','Argentina','Autor'),(2,'Juana','Perez','1995-10-11','2021-11-27 00:00:00','Argentina','Autor'),(3,'Pedro','Perez','1970-10-11','2021-05-06 00:00:00','Peruana','Autor'),(4,'Jorge','asasa','1990-10-10','2021-05-06 00:00:00','Argentina','Licenciado'),(5,'Juana','Perez','1995-10-11','2021-05-06 00:00:00','Peruana','Autor'),(7,'Daniel','Ruiz','2000-09-12','2021-11-27 11:12:49','Cuba','Autor');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editorial` (
  `idEditorial` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` text,
  `pais` varchar(45) DEFAULT NULL,
  `fechaCreacion` date DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  PRIMARY KEY (`idEditorial`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'Isai Lazo','Av Lima 123','Perú','1998-10-08','2021-05-06 00:00:00'),(2,'Editorial Lima','Av Tacna 747','Brasil','1995-01-01','2021-05-06 00:00:00');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `idLibro` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `serie` varchar(100) DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLibro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'Trilce SAC',2020,'Estrategia','47147','2021-11-27 00:00:00','Perú'),(2,'Fuente Ovejuna',2021,'Estrategia','74744','2021-05-06 00:00:00','Perú'),(3,'La ciudad y los perros',2021,'Novela','81741','2021-05-06 00:00:00','Perú'),(4,'Trilce',2014,'Romance','008','2021-11-27 00:00:00','Argentina'),(5,'La Llorona Dos',2013,'Terror','11045','2021-11-27 00:00:00','USA');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro_tiene_autor`
--

DROP TABLE IF EXISTS `libro_tiene_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro_tiene_autor` (
  `lidLibro` int(11) NOT NULL,
  `idAutor` int(11) NOT NULL,
  PRIMARY KEY (`lidLibro`,`idAutor`),
  KEY `fk_libro_has_autor_autor1_idx` (`idAutor`),
  KEY `fk_libro_has_autor_libro_idx` (`lidLibro`),
  CONSTRAINT `fk_libro_has_autor_autor1` FOREIGN KEY (`idAutor`) REFERENCES `autor` (`idAutor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_libro_has_autor_libro` FOREIGN KEY (`lidLibro`) REFERENCES `libro` (`idLibro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro_tiene_autor`
--

LOCK TABLES `libro_tiene_autor` WRITE;
/*!40000 ALTER TABLE `libro_tiene_autor` DISABLE KEYS */;
INSERT INTO `libro_tiene_autor` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `libro_tiene_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opcion`
--

DROP TABLE IF EXISTS `opcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opcion` (
  `idOpcion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `tipo` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`idOpcion`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opcion`
--

LOCK TABLES `opcion` WRITE;
/*!40000 ALTER TABLE `opcion` DISABLE KEYS */;
INSERT INTO `opcion` VALUES (1,'Registro de Alumno','1',1),(2,'Registro de Libro','1',1),(3,'Registro de Usuario','1',1),(4,'Registro de Autor','1',1),(5,'Registro de Sala','1',1),(6,'Registro de Proveedor','1',1),(7,'Crud Alumno','1',1),(8,'Crud Libro','1',1),(9,'Crud Usuario','1',1),(10,'Crud Autor','1',1),(11,'Crud Sala','1',1),(12,'Crud Proveedor','1',1),(13,'Consulta Alumno','1',1),(14,'Consulta Libro','1',1),(15,'Consulta Usuario','1',1),(16,'Consulta Autor','1',1),(17,'Consulta Sala','1',1),(18,'Consulta Proveedor','1',1),(19,'Reporte Alumno','1',1),(20,'Reporte Libro','1',1),(21,'Reporte Usuario','1',1),(22,'Reporte Autor','1',1),(23,'Reporte Sala','1',1),(24,'Reporte Proveedor','1',1);
/*!40000 ALTER TABLE `opcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `idPrestamo` int(11) NOT NULL AUTO_INCREMENT,
  `fechaPrestamo` datetime DEFAULT NULL,
  `fechaDevolucion` datetime DEFAULT NULL,
  `fechaDevuelto` datetime DEFAULT NULL,
  `idAlumno` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idPrestamo`),
  KEY `fk_prestamo_alumno1_idx` (`idAlumno`),
  KEY `fk_prestamo_usuario1_idx` (`idUsuario`),
  CONSTRAINT `fk_prestamo_alumno1` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prestamo_usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo_tiene_libro`
--

DROP TABLE IF EXISTS `prestamo_tiene_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo_tiene_libro` (
  `idPrestamo` int(11) NOT NULL,
  `idLibro` int(11) NOT NULL,
  PRIMARY KEY (`idPrestamo`,`idLibro`),
  KEY `fk_prestamo_has_libro_libro1_idx` (`idLibro`),
  KEY `fk_prestamo_has_libro_prestamo1_idx` (`idPrestamo`),
  CONSTRAINT `fk_prestamo_has_libro_libro1` FOREIGN KEY (`idLibro`) REFERENCES `libro` (`idLibro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prestamo_has_libro_prestamo1` FOREIGN KEY (`idPrestamo`) REFERENCES `prestamo` (`idPrestamo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo_tiene_libro`
--

LOCK TABLES `prestamo_tiene_libro` WRITE;
/*!40000 ALTER TABLE `prestamo_tiene_libro` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamo_tiene_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` char(9) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Luis','Quispe','74747478','Av Lima 141','97474747','luis@gmail.com','Brasil','2021-05-06 00:00:00'),(2,'María','Kimpempe','98747474','Av Lima 874','977777778','kimpepemari@gmail.com','Perú','2021-05-06 00:00:00'),(4,'Mark','Advincula','72811294','Av. Independencia','987654321','Markadv@gmail,com','Argentino','2021-11-27 00:00:00');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revista`
--

DROP TABLE IF EXISTS `revista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revista` (
  `idRevista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `frecuencia` varchar(200) DEFAULT NULL,
  `pais` varchar(200) DEFAULT NULL,
  `estado` smallint(1) DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `fechaCreacion` date DEFAULT NULL,
  PRIMARY KEY (`idRevista`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revista`
--

LOCK TABLES `revista` WRITE;
/*!40000 ALTER TABLE `revista` DISABLE KEYS */;
INSERT INTO `revista` VALUES (1,'Gente','Semanal','Perú',1,'2021-05-06 00:00:00','2021-05-06'),(3,'Etiqueta Negra','Semanal','Perú',1,'2021-05-06 00:00:00','2021-05-06');
/*!40000 ALTER TABLE `revista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Bibliotecologo','1');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol_has_opcion`
--

DROP TABLE IF EXISTS `rol_has_opcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol_has_opcion` (
  `idrol` int(11) NOT NULL,
  `idopcion` int(11) NOT NULL,
  PRIMARY KEY (`idrol`,`idopcion`),
  KEY `fk_rol_has_opcion_opcion1_idx` (`idopcion`),
  KEY `fk_rol_has_opcion_rol1_idx` (`idrol`),
  CONSTRAINT `fk_rol_has_opcion_opcion1` FOREIGN KEY (`idopcion`) REFERENCES `opcion` (`idOpcion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rol_has_opcion_rol1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_has_opcion`
--

LOCK TABLES `rol_has_opcion` WRITE;
/*!40000 ALTER TABLE `rol_has_opcion` DISABLE KEYS */;
INSERT INTO `rol_has_opcion` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);
/*!40000 ALTER TABLE `rol_has_opcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala` (
  `idSala` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(45) DEFAULT NULL,
  `piso` smallint(1) DEFAULT NULL,
  `capacidad` varchar(45) DEFAULT NULL,
  `recursos` text,
  `estado` smallint(1) DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  PRIMARY KEY (`idSala`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,'A01',1,'30 alumno','tablet plumones',1,'2021-05-06 00:00:00'),(2,'C04',8,'20','Libros',4,'2021-11-27 00:00:00');
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `separacion`
--

DROP TABLE IF EXISTS `separacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `separacion` (
  `idSeparacion` int(11) NOT NULL AUTO_INCREMENT,
  `fechaSeparacion` datetime DEFAULT NULL,
  `fechaInicio` datetime DEFAULT NULL,
  `fechaFin` datetime DEFAULT NULL,
  `estado` smallint(1) DEFAULT NULL,
  `idAlumno` int(11) NOT NULL,
  `idSala` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idSeparacion`),
  KEY `fk_separacion_alumno1_idx` (`idAlumno`),
  KEY `fk_separacion_sala1_idx` (`idSala`),
  KEY `fk_separacion_usuario1_idx` (`idUsuario`),
  CONSTRAINT `fk_separacion_alumno1` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_separacion_sala1` FOREIGN KEY (`idSala`) REFERENCES `sala` (`idSala`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_separacion_usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `separacion`
--

LOCK TABLES `separacion` WRITE;
/*!40000 ALTER TABLE `separacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `separacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `login` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `direccion` text,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Luis Alberto','Sanchez Quispe ','74747474','luis','luis','luis@gmail.com','2000-10-10','Av Lima 123'),(2,'luis','perez','74859614','luis','luis','luis@gmail.com','2010-10-10','av lima sssss'),(3,'luis','perez','74859614','luis','luis','luis@gmail.com','2010-10-10','av lima sssss'),(5,'Luis Alberto','Vera Quispe','74747474','luis','luis','luis@gmail.com','2000-10-10','Av Lima 123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_has_rol`
--

DROP TABLE IF EXISTS `usuario_has_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_has_rol` (
  `idUsuario` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`,`idRol`),
  KEY `fk_usuario_has_rol_rol1_idx` (`idRol`),
  KEY `fk_usuario_has_rol_usuario1_idx` (`idUsuario`),
  CONSTRAINT `fk_usuario_has_rol_rol1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_has_rol_usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_has_rol`
--

LOCK TABLES `usuario_has_rol` WRITE;
/*!40000 ALTER TABLE `usuario_has_rol` DISABLE KEYS */;
INSERT INTO `usuario_has_rol` VALUES (1,1);
/*!40000 ALTER TABLE `usuario_has_rol` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 15:42:10
