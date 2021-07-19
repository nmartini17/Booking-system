CREATE DATABASE  IF NOT EXISTS `booking` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `booking`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: booking
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `users_id` int NOT NULL,
  `booking_date` date NOT NULL,
  `days` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `booking_status` int NOT NULL,
  `item_id` int NOT NULL,
  PRIMARY KEY (`users_id`,`item_id`),
  KEY `fk_booking_item1_idx` (`item_id`),
  CONSTRAINT `fk_booking_item1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  CONSTRAINT `fk_booking_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) DEFAULT NULL,
  `description` varchar(120) DEFAULT NULL,
  `room_number` int NOT NULL,
  `item_type` varchar(45) NOT NULL,
  `item_tag` varchar(20) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_item_room1_idx` (`room_number`),
  CONSTRAINT `fk_item_room1` FOREIGN KEY (`room_number`) REFERENCES `room` (`room_number`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Oculus Quest 2','Avanceret alt-i-en VR-headset',212,'VR-headset','vr-1'),(2,'Oculus Quest 2','Avanceret alt-i-en VR-headset',212,'VR-headset','vr-2'),(3,'Oculus Quest 2','Avanceret alt-i-en VR-headset',212,'VR-headset','vr-3'),(4,'Oculus Quest 2','Avanceret alt-i-en VR-headset',212,'VR-headset','vr-4'),(5,'Oculus Quest 2','Avanceret alt-i-en VR-headset',212,'VR-headset','vr-5'),(6,'Oculus Rift S','VR-headset til PC',212,'VR-headset','vr-6'),(7,'Oculus Rift S','VR-headset til PC',212,'VR-headset','vr-7'),(8,'Arbejdsstation PC','PC til at evt. videoredigering eller virtual reality',212,'Arbejdscomputer','pc-1'),(9,'HP','Printer til at printe store plakater med',212,'Plakatprinter','print-1'),(10,'Creatlity CR-10 S5','Print lige det du vil med en 3D printer',210,'3D printer','3d-print-1'),(11,'Creatlity CR-10 S5','Print lige det du vil med en 3D printer',210,'3D printer','3d-print-2'),(12,'Creatlity CR-10 S5','Print lige det du vil med en 3D printer',210,'3D printer','3d-print-3'),(13,'Creatlity CR-10 S5','Print lige det du vil med en 3D printer',210,'3D printer','3d-print-4'),(14,'Creatlity CR-10 S5','Print lige det du vil med en 3D printer',210,'3D printer','3d-print-5'),(15,'Creatlity CR-10 S5','Print lige det du vil med en 3D printer',210,'3D printer','3d-print-6'),(16,'Creatlity CR-10 S5','Print lige det du vil med en 3D printer',210,'3D printer','3d-print-7'),(17,'Creatlity CR-10 S5','Print lige det du vil med en 3D printer',210,'3D printer','3d-print-8'),(18,'Canon EOS 90D','Digitalkamera til at filme reklamer eller andet projektarbejde',212,'Digitalkamera','camera-1'),(19,'Canon EOS 90D','Digitalkamera til at filme reklamer eller andet projektarbejde',212,'Digitalkamera','camera-2'),(20,'Canon EOS 90D','Digitalkamera til at filme reklamer eller andet projektarbejde',212,'Digitalkamera','camera-3'),(21,'Panasonic 4K','Digitalkamera til at filme reklamer eller andet projektarbejde i 4K',212,'Digitalkamera 4K','camera-4'),(22,'Fotostudio','Fotostudio til at lave alt muligt',212,'Fotostudio','studio-1');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_number` int NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`room_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (210,'Makerlab'),(212,'Medialab');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'student',
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `points` int DEFAULT '50',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'barbie@world.dk','jensen','student','Barbie','12123434',50),(2,'ken@world.com','jensen','student','Ken','34341212',50),(3,'robin@gotham.com','batman','admin','Robin','11111111',50),(4,'jaes@jaes.dk','123','student','Marcus','12345678',50),(5,'a@a.dk','123','student','a','12345678',50),(6,'test1','123','student','test1','12345678',50),(7,'nicolai@gmail.com','123','student','a','12345656',50);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-25 12:44:48
