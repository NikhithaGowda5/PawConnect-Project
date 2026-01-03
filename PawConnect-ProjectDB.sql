CREATE DATABASE  IF NOT EXISTS `pawconnect` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pawconnect`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: pawconnect
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Admin_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin@pawconnect.com','admin123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adoption_applications`
--

DROP TABLE IF EXISTS `adoption_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adoption_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pet_id` int NOT NULL,
  `full_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` bigint NOT NULL,
  `address` varchar(250) NOT NULL,
  `message` varchar(250) DEFAULT NULL,
  `pet_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pet_id_idx` (`pet_id`),
  CONSTRAINT `pet_id` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`pet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adoption_applications`
--

LOCK TABLES `adoption_applications` WRITE;
/*!40000 ALTER TABLE `adoption_applications` DISABLE KEYS */;
INSERT INTO `adoption_applications` VALUES (1,1,'Nikhitha','nikhithaks2004@gmail.com',8904682844,'#138 24th main 3rd cross near karagadamma temple agara hsr layout bangalore','i love pets','Max'),(4,4,'nithya','nithya@gmail.com',8976543210,'Agara bangalore','i love pets and i will take care','Daisy'),(5,5,'Nikhitha','nikhithaks2004@gmail.com',8904682844,'#138 24th main 3rd cross near karagadamma temple agara hsr layout bangalore','i love pets','Rocky'),(6,17,'roshini','roshini@gmail.com',7060504030,'jp nagar bangalore','i love pets','Bella'),(7,1,'roshini','roshini@gmail.com',7060504030,'jp nagar,bangalore','i love pets','Max'),(8,17,'nithya','nithya@gmail.com',8976543210,'bangalore','i love pets','Bella'),(9,1,'roshini','roshini@gmail.com',7060504030,'jp nagar','i love pets','Max'),(10,10,'roshini','roshini@gmail.com',7060504030,'jp nagar','i love pets','Cleo'),(11,8,'Asha','asha@gmail.com',8010203040,'BTM ','i love pets','Simba'),(12,17,'Asha','asha@gmail.com',8010203040,'btm','love ptes','Bella'),(13,11,'Asha','asha@gmail.com',8010203040,'BTM ','i love birds','Rio'),(14,18,'nithya','nithya@gmail.com',8976543210,'Agara bangalore','i love pets','Cooper'),(15,10,'asha','asha@gmail.com',8010203040,'btm','i love pets','Cleo'),(16,23,'asha','asha@gmail.com',8010203040,'btm','i love birds','Sky'),(17,14,'nithya','nithya@gmail.com',8976543210,'Agara bangalore','i love fishes','Nemo'),(19,26,'Asha','asha@gmail.com',8010203040,'btm','i love fishes','Angel'),(20,3,'Asha','asha@gmail.com',8010203040,'btm','i love pets','Charlie'),(21,15,'nikhitha','nikhithaks2004@gmail.com',8904682844,'#138 24th main 3rd cross near karagadamma temple agara hsr layout bangalore','i love fishes','Splash'),(22,1,'roshini','roshini@gmail.com',7060504030,'jp nagar','i love pets','Max'),(23,21,'Asha','asha@gmail.com',8010203040,'btm','i love cats??','Smokey'),(24,11,'Asha','asha@gmail.com',8010203040,'#138 24th main 3rd cross near karagadamma temple agara hsr layout bangalore','We love birds','Rio'),(25,1,'Nishchitha','nishchithaks2002@gmail.com',9080706050,'agara','i love pets','Max'),(26,9,'Roshu','roshini997291@gmail.com',9050403020,'jp nagar','i love cats','Whiskers'),(28,7,'Roshu','roshini998601@gmail.com',9050403020,'jp nagar','i love cats','Mittens');
/*!40000 ALTER TABLE `adoption_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adoptions`
--

DROP TABLE IF EXISTS `adoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adoptions` (
  `adoption_id` int NOT NULL AUTO_INCREMENT,
  `pet_name` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `adoption_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`adoption_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adoptions`
--

LOCK TABLES `adoptions` WRITE;
/*!40000 ALTER TABLE `adoptions` DISABLE KEYS */;
INSERT INTO `adoptions` VALUES (1,'Cleo','asha','asha@gmail.com','8010203040','btm','i love pets','2025-12-22 10:43:47'),(2,'Sky','asha','asha@gmail.com','8010203040','btm','i love birds','2025-12-22 10:45:12'),(3,'Nemo','nithya','nithya@gmail.com','8976543210','Agara bangalore','i love fishes','2025-12-22 10:46:44'),(4,'Feather','nikhitha','nikhithaks2004@gmail.com','8904682844','hsr layout','i love being with birds','2025-12-22 10:48:05'),(5,'Angel','Asha','asha@gmail.com','8010203040','btm','i love fishes','2025-12-22 11:00:45'),(6,'Charlie','Asha','asha@gmail.com','8010203040','btm','i love pets','2025-12-22 12:14:43'),(7,'Splash','nikhitha','nikhithaks2004@gmail.com','8904682844','#138 24th main 3rd cross near karagadamma temple agara hsr layout bangalore','i love fishes','2025-12-22 13:29:59'),(8,'Max','roshini','roshini@gmail.com','7060504030','jp nagar','i love pets','2025-12-23 08:28:06'),(9,'Smokey','Asha','asha@gmail.com','8010203040','btm','i love cats??','2025-12-29 10:49:02'),(10,'Rio','Asha','asha@gmail.com','8010203040','#138 24th main 3rd cross near karagadamma temple agara hsr layout bangalore','We love birds','2025-12-29 11:38:06'),(11,'Max','Nishchitha','nishchithaks2002@gmail.com','9080706050','agara','i love pets','2025-12-29 14:26:00'),(12,'Whiskers','Roshu','roshini997291@gmail.com','9050403020','jp nagar','i love cats','2025-12-30 07:40:17'),(13,'Chloe','Roshu','roshini998601@gmail.com','9050403020','jp nagar','i love cats','2025-12-30 07:53:09'),(14,'Mittens','Roshu','roshini998601@gmail.com','9050403020','jp nagar','i love cats','2025-12-30 07:54:01');
/*!40000 ALTER TABLE `adoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,'ORD1765989171861','Premium Dog Food',1299,1,1299),(2,'ORD1765989171861','Grain-Free Cat Food',999,1,999),(3,'ORD1765989448112','Premium Dog Food',1299,1,1299),(4,'ORD1765989793923','Puppy Dry Food',1599,1,1599),(5,'ORD1765989793923','Premium Dog Food',1299,2,2598),(6,'ORD1765989793923','Grain-Free Cat Food',999,2,1998),(7,'ORD1765991552384','Premium Dog Food',1299,1,1299),(8,'ORD1765992742684','Premium Dog Food',1299,1,1299),(9,'ORD1765993209460','Premium Dog Food',1299,2,2598),(10,'ORD1765993681585','Premium Dog Food',1299,1,1299),(11,'ORD1766052402264','Puppy Dry Food',1599,1,1599),(12,'ORD1766052402264','Premium Dog Food',1299,2,2598),(13,'ORD1766052402264','Grain-Free Cat Food',999,1,999),(14,'ORD1766053782660','Premium Dog Food',1299,1,1299),(15,'ORD1766056718178','Premium Dog Food',1299,2,2598),(16,'ORD1766151026444','Premium Dog Food',1299,1,1299),(17,'ORD1766151077466','Premium Dog Food',1299,1,1299),(18,'ORD1766151168559','Premium Dog Food',1299,1,1299),(19,'ORD1766225025434','Premium Dog Food',1299,1,1299),(20,'ORD1766225200450','Premium Dog Food',1299,1,1299),(21,'ORD1766225965707','Premium Dog Food',1299,1,1299),(22,'ORD1766226535909','Premium Dog Food',1299,1,1299),(23,'ORD1766226632626','Premium Dog Food',1299,1,1299),(24,'ORD1766226708074','Premium Dog Food',1299,1,1299),(25,'ORD1766226954502','Grain-Free Cat Food',999,1,999),(26,'ORD1766226954502','Senior Dog Food',1399,1,1399),(27,'ORD1766226954502','Puppy Dry Food',1599,1,1599),(28,'ORD1766230008057','Premium Dog Food',1299,1,1299),(29,'ORD1766230008057','Grain-Free Cat Food',999,1,999),(30,'ORD1766230046278','Premium Dog Food',1299,1,1299),(31,'ORD1766230046278','Grain-Free Cat Food',999,1,999),(32,'ORD1766373428662','Catnip Toys Set',549,1,549),(33,'ORD1766373953888','Catnip Toys Set',549,1,549),(34,'ORD1766410301288','Premium Dog Food',1299,1,1299),(35,'ORD1766410301288','Grain-Free Cat Food',999,1,999),(36,'ORD1766483304330','Premium Dog Food',1299,1,1299),(37,'ORD1767004119575','Premium Dog Food',1299,1,1299),(38,'ORD1767008383298','Premium Dog Food',1299,2,2598),(39,'ORD1767018535930','Grain-Free Cat Food',999,1,999),(40,'ORD1767018836753','Puppy Dry Food',1599,1,1599),(41,'ORD1767019058894','Premium Dog Food',1299,1,1299),(42,'ORD1767019180473','Weight Management Cat Food',1199,1,1199),(43,'ORD1767019371494','Fish Food Flakes',299,1,299),(44,'ORD1767019418807','Kitten Wet Food',849,1,849),(45,'ORD1767020444498','Grain-Free Cat Food',999,1,999),(46,'ORD1767077776424','Premium Dog Food',1299,1,1299),(47,'ORD1767078569627','Puppy Dry Food',1599,1,1599),(48,'ORD1767080741326','Senior Dog Food',1399,1,1399),(49,'ORD1767080741382','Senior Dog Food',1399,1,1399),(50,'ORD1767080741384','Senior Dog Food',1399,1,1399),(51,'ORD1767080741385','Senior Dog Food',1399,1,1399),(52,'ORD1767080773720','Weight Management Cat Food',1199,1,1199),(53,'ORD1767080882058','Senior Dog Food',1399,1,1399),(54,'ORD1767081275285','Weight Management Cat Food',1199,1,1199);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` varchar(20) NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` double DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('ORD1765989171861','2025-12-17 16:32:51',2298),('ORD1765989448112','2025-12-17 16:37:28',1299),('ORD1765989793923','2025-12-17 16:43:13',6195),('ORD1765991552384','2025-12-17 17:12:32',1299),('ORD1765992742684','2025-12-17 17:32:23',1299),('ORD1765993209460','2025-12-17 17:40:09',2598),('ORD1765993681585','2025-12-17 17:48:01',1299),('ORD1766052402264','2025-12-18 10:06:42',5196),('ORD1766053782660','2025-12-18 10:29:43',1299),('ORD1766056718178','2025-12-18 11:18:38',2598),('ORD1766151026444','2025-12-19 13:30:26',1299),('ORD1766151077466','2025-12-19 13:31:17',1299),('ORD1766151168559','2025-12-19 13:32:48',1299),('ORD1766225025434','2025-12-20 10:03:45',1299),('ORD1766225200450','2025-12-20 10:06:40',1299),('ORD1766225965707','2025-12-20 10:19:25',1299),('ORD1766226535909','2025-12-20 10:28:56',1299),('ORD1766226632626','2025-12-20 10:30:32',1299),('ORD1766226708074','2025-12-20 10:31:48',1299),('ORD1766226954502','2025-12-20 10:35:54',3997),('ORD1766230008057','2025-12-20 11:26:48',2298),('ORD1766230046278','2025-12-20 11:27:26',2298),('ORD1766373428662','2025-12-22 03:17:08',549),('ORD1766373953888','2025-12-22 03:25:54',549),('ORD1766410301288','2025-12-22 13:31:41',2298),('ORD1766483304330','2025-12-23 09:48:24',1299),('ORD1767004119575','2025-12-29 10:28:39',1299),('ORD1767008383298','2025-12-29 11:39:43',2598),('ORD1767018535930','2025-12-29 14:28:55',999),('ORD1767018836753','2025-12-29 14:33:56',1599),('ORD1767019058894','2025-12-29 14:37:39',1299),('ORD1767019180473','2025-12-29 14:39:40',1199),('ORD1767019371494','2025-12-29 14:42:51',299),('ORD1767019418807','2025-12-29 14:43:38',849),('ORD1767020444498','2025-12-29 15:00:44',999),('ORD1767077776424','2025-12-30 06:56:16',1299),('ORD1767078569627','2025-12-30 07:09:29',1599),('ORD1767080741326','2025-12-30 07:45:56',1399),('ORD1767080741382','2025-12-30 07:45:56',1399),('ORD1767080741384','2025-12-30 07:45:56',1399),('ORD1767080741385','2025-12-30 07:45:56',1399),('ORD1767080773720','2025-12-30 07:46:13',1199),('ORD1767080882058','2025-12-30 07:48:02',1399),('ORD1767081275285','2025-12-30 07:54:35',1199);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `pet_id` int NOT NULL AUTO_INCREMENT,
  `petname` varchar(45) NOT NULL,
  `species` varchar(45) NOT NULL,
  `breed` varchar(100) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(45) NOT NULL,
  `location` varchar(100) NOT NULL,
  `imageUrl` varchar(300) NOT NULL,
  PRIMARY KEY (`pet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,'Max','Dog','Golden Retriever',2,'Male','Bangalore','https://tse3.mm.bing.net/th/id/OIP.9jp3vrVA5qHN5WLPI6ebQAHaLH?rs=1&pid=ImgDetMain&o=7&rm=3'),(3,'Charlie','Dog','German Shepherd',4,'Male','Delhi','https://thumbs.dreamstime.com/b/senior-german-shepherd-dog-headshot-against-blurry-green-background-portrait-beautiful-old-white-muzzle-188817290.jpg'),(4,'Daisy','Dog','Beagle',9,'Female','Chennai','https://tse4.mm.bing.net/th/id/OIP.strwfJDk3H1S6F2D3CSDUgHaHw?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),(5,'Rocky','Dog','Rottweiler',3,'Male','Hyderabad','https://tse4.mm.bing.net/th/id/OIP.6O-G-5WptNkv8335ymWBNwHaNL?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),(6,'Luna','Cat','Siamese',1,'Female','Pune','https://tse1.explicit.bing.net/th/id/OIP.dEMXTcBMUZDRUIE8E7nweAHaHi?rs=1'),(7,'Mittens','Cat','Domestic Shorthair',2,'Female','Kolkata','https://i.redd.it/81e8p94q1lv91.jpg'),(8,'Simba','Cat','Persian',6,'Male','Ahmedabad','https://st3.depositphotos.com/1594920/17246/i/450/depositphotos_172463450-stock-photo-persian-kitten-3-months-old.jpg'),(9,'Whiskers','Cat','Maine Coon',10,'Male','Jaipur','https://1.bp.blogspot.com/-ZQ9mwrVbSKg/YZppU_MWe8I/AAAAAAAAyuo/VWxm3244fM8vVtBLgnB9jQUVXXnou66dgCLcBGAsYHQ/s798/Maine%2BCoon.jpg'),(10,'Cleo','Cat','Bengal',4,'Female','Lucknow','https://dinoanimals.com/wp-content/uploads/2020/12/Bengal-cat-19.jpg'),(11,'Rio','Bird','Parrot',2,'Male','Bangalore','https://tse2.mm.bing.net/th/id/OIP.8UBYOlR_WLy5MjM8TSFx-wHaJN?rs=1'),(13,'Bubbles','Fish','Goldfish',1,'Unknown','Delhi','https://tse4.mm.bing.net/th/id/OIP.ceyEnmpB0BBGkHV_fknJ5QHaEh'),(14,'Nemo','Fish','Clownfish',2,'Male','Chennai','https://tse1.explicit.bing.net/th/id/OIP.LXy40lt24C-6jikAliYIyAHaFj'),(15,'Splash','Fish','Betta',3,'Male','Hyderabad','https://tse4.mm.bing.net/th/id/OIP.XNCqdBvIlz8dKGeHv9ZKnQHaHa'),(17,'Bella','Dog','Siberian Husky',4,'Female','Kolkata','https://th.bing.com/th/id/OIP.7YQmeo6ZRVP7tiVZ-LxNhgHaH1?o=7'),(18,'Cooper','Dog','Boxer',7,'Male','Ahmedabad','https://animalcorner.org/wp-content/uploads/2022/04/adorable-boxer-dog-posing-outdoor.jpg'),(19,'Oscar','Cat','British Shorthair',1,'Male','Surat','https://tse3.mm.bing.net/th/id/OIP.Eqh7QTgp1sXOgxr2pcJu0QHaE8?rs=1'),(21,'Smokey','Cat','Russian Blue',8,'Male','Indore','https://i.ytimg.com/vi/sxOHuHgJJVY/maxresdefault.jpg'),(22,'Kiwi','Bird','Lovebird',4,'Female','Goa','https://tse4.mm.bing.net/th/id/OIP.VsBhN5WWYcNWLVBXkdiABAAAAA?rs=1'),(23,'Sky','Bird','Cockatiel',3,'Male','Kochi','https://tse4.mm.bing.net/th/id/OIP.JjO-C-cypqzb1eoUGJPArQHaLH?rs=1'),(25,'Goldie','Fish','Golden Carp',2,'Unknown','Pune','https://thumbs.dreamstime.com/b/golden-carp-lake-72591890.jpg'),(26,'Angel','Fish','Angelfish',4,'Female','Kolkata','https://i0.wp.com/aquariumtidings.com/wp-content/uploads/2017/12/Depositphotos_67399819_original.jpg');
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (101,'Premium Dog Food','food','Nutritionally balanced adult dog food with real chicken',1299,'https://tse3.mm.bing.net/th/id/OIP.tyXDh-6GfWpnevGnd3rmTwHaKU?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),(102,'Grain-Free Cat Food','food','High-protein formula for indoor cats with salmon',999,'https://i5.walmartimages.com/asr/6ed276d9-367f-4c82-bc41-eaa026403735_3.668f8e07361b35a854e0beaad956ee9d.png'),(103,'Puppy Dry Food','food','Specially formulated for growing puppies',1599,'https://i5.walmartimages.com/asr/5206b93d-6d04-4b13-98a9-4058f7419d03.9ac8536e6a30e45b00fa0ed01ba9e76b.jpeg'),(104,'Senior Dog Food','food','Joint support for older dogs with glucosamine',1399,'https://th.bing.com/th/id/OPAC.VXgM2eZb79ZP4w474C474?w=592&h=550&o=5&dpr=1.3&pid=21.1&ucfimg=1'),(105,'Bird Seed Mix','food','Nutritious blend for pet birds and parrots',499,'https://m.media-amazon.com/images/I/81Q9NIks1BL.AC.jpg'),(106,'Fish Food Flakes','food','Complete nutrition for tropical fish',299,'https://m.media-amazon.com/images/I/81BMZZXwm0L.AC.jpg'),(107,'Dental Care Dog Food','food','Reduces tartar and maintains oral health',1699,'https://tse4.mm.bing.net/th/id/OIP.sy7YjimK2W3inJRnVvznzQHaHa?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),(108,'Weight Management Cat Food','food','Helps maintain healthy weight for cats',1199,'https://i5.walmartimages.com/asr/297459ae-645c-45d4-acd5-6b608fa74756_1.e7ea5b0c607eb4d3c300595005b362f3.jpeg'),(109,'Organic Dog Treats','food','Natural training treats for dogs',649,'https://www.rover.com/blog/wp-content/uploads/2021/04/best-organic-dog-treats-2.jpg'),(110,'Kitten Wet Food','food','High-moisture food for growing kittens',849,'https://m.media-amazon.com/images/I/81XeRHi9oWL.SL1500.jpg'),(111,'Rabbit Pellets','food','Complete nutrition for pet rabbits',399,'https://i5.walmartimages.com/seo/MENU-Premium-Rabbit-Food-Timothy-Hay-Pellets-Blend-Vitamin-Mineral-Fortified-4-lb-Bag_4c84c114-6606-4238-b619-be8088242ddd.fdfd6c9cb93342d5f37ae8886bb27b51.jpeg'),(112,'Hypoallergenic Dog Food','food','For dogs with sensitive stomachs',1899,'https://tse4.mm.bing.net/th/id/OIP.vX62ZlSCHz5ePk7t_gCZ3AHaHa?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),(113,'Hamster Food Mix','food','Balanced diet for small rodents',349,'https://down-ph.img.susercontent.com/file/ph-11134207-7r992-ln6vjodncl3be8'),(114,'Senior Cat Food','food','Kidney support for older cats',1299,'https://i5.walmartimages.com/seo/Nutrish-Senior-Healthy-Aging-Chicken-Chickpea-and-Salmon-Dry-Cat-Food-Rachael-Ray-13-lb-Bag_ce03a8b5-1f90-4876-971f-84bedeccd284.c93105517ce679ca5dc3429dfe4ca601.jpeg'),(115,'Large Breed Dog Food','food','For giant breed dogs 50kg+',2199,'https://i5.walmartimages.com/seo/Pure-Balance-Pro-Large-Breed-Chicken-Brown-Rice-Recipe-Dry-Dog-Food-16-lbs_38f7a1f2-fc61-4362-a35b-69fdf350645d.a7d18fc3cc8ed8744d12d6091146381e.jpeg'),(201,'Interactive Cat Toy','toys','Electronic feather toy for cats',599,'https://m.media-amazon.com/images/I/711vaJV1mFL.jpg'),(202,'Chew Bone Toy','toys','Durable rubber bone for dogs',399,'https://m.media-amazon.com/images/I/71aSf2AiBNL.AC_SS450.jpg'),(203,'Ball Launcher','toys','Automatic ball thrower for dogs',2499,'https://m.media-amazon.com/images/I/61+B4Bo6CjL.AC_SL1500.jpg'),(204,'Cat Tree','toys','Multi-level scratching and playing post',3999,'https://m.media-amazon.com/images/I/71hZo6NK-sL.AC.jpg'),(205,'Squeaky Toys Set','toys','6-piece squeaky toy collection',799,'https://cdn.shopify.com/s/files/1/2380/9337/products/product-image-555753250_grande.jpg?v=1535041886'),(206,'Laser Pointer','toys','Red dot laser for cat exercise',299,'https://cdn11.bigcommerce.com/s-g7j5rv61k1/images/stencil/1280x1280/products/479/655/SS1178-2__81967.1575924291.jpg?c=1'),(207,'Floating Fish Toy','toys','Interactive fish for cats to bat around',449,'https://tse4.mm.bing.net/th/id/OIP.y3HZmIvweaq_NZVOXe1vHQHaHa?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),(208,'Tug Rope Toy','toys','Cotton rope for interactive play',349,'https://petsolutionsintlnaturesbestwebsite.s3.ap-southeast-2.amazonaws.com/wp-content/uploads/2022/12/31115902/40274-1-WagTime-Rope-Toy-Rubber-Ball-Tug-Rope-Front_WEBB.jpg'),(209,'Bird Mirror Toy','toys','Safe mirror for pet birds',249,'https://m.media-amazon.com/images/I/61Qwe89IVyL.AC_SL1500.jpg'),(210,'Puzzle Feeder','toys','Mental stimulation toy for dogs',899,'https://m.media-amazon.com/images/I/41fckIM8zOL.jpg'),(211,'Catnip Toys Set','toys','3 organic catnip-filled toys',549,'https://i5.walmartimages.com/seo/Cat-Toy-Food-Junkeez-Catnip-Filled-Unique-Textures-Select-Character-Set-of-All-8-Toys_f6da1c1d-2fb8-4dde-ad4d-97b31f388e9c.98615a3a2990ddd9221c4123c975e037.jpeg'),(212,'Flying Disc','toys','Durable frisbee for outdoor play',299,'https://www.invento-hq.com/myfactory/CustomUpload/374O357O340O370O356O369O350O328O365O373O356O365O371O366O350O326O364O353O327O/380166_g1.jpg'),(213,'Hamster Wheel','toys','Silent spinner exercise wheel',699,'https://tse4.mm.bing.net/th/id/OIP.pvYd2CicH9RFU3XEp4_f4gHaHd?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3'),(214,'Bird Swing','toys','Natural wood perch swing',199,'https://m.media-amazon.com/images/I/51vBhB6V21L.AC.jpg'),(215,'Treat Dispenser Ball','toys','Rolling treat dispenser for dogs',649,'https://m.media-amazon.com/images/I/617-GJ5T7qL.AC_SL1500.jpg'),(301,'Flea & Tick Treatment','health','Monthly topical solution for dogs',899,'https://m.media-amazon.com/images/I/81iSpYCETgL.jpg'),(302,'Pet Shampoo','health','Gentle cleansing for sensitive skin',349,'https://tse3.mm.bing.net/th/id/OIP.fCBoR7KDuMkIKUmQq62LDQHaHa'),(303,'Dental Chews','health','Oral hygiene treats for dogs',599,'https://tse3.mm.bing.net/th/id/OIP.8wW6FVD6vCCWi4sZAnie7AHaHa'),(304,'Joint Supplements','health','Glucosamine for joint health',1199,'https://tse4.mm.bing.net/th/id/OIP.PTPOqBf0m-jhs8__do0cqQHaHa'),(305,'Ear Cleaner','health','Gentle ear cleaning solution',299,'https://m.media-amazon.com/images/I/81SwwIY1HrL.AC.jpg'),(306,'Worming Tablets','health','Deworming treatment for dogs',449,'https://tse4.mm.bing.net/th/id/OIP.Spsvb1smcBwrY1Qu3Y-7OQHaHa'),(307,'Skin & Coat Supplement','health','Omega-3 for healthy skin and fur',799,'https://k9vitality.in/cdn/shop/files/20_0fb6715a-0856-4e21-aaee-670833bcad05.png?v=1740664369'),(308,'Pet First Aid Kit','health','Emergency medical supplies for pets',1499,'https://tse3.mm.bing.net/th/id/OIP.p-_IqeLB-caCDOa5LG4jgwHaHL'),(309,'Calming Spray','health','Reduces anxiety during travel',549,'https://johnsons-vet.com/wp-content/uploads/2024/11/Calming-Spray-front.jpg'),(310,'Eye Drops','health','Gentle solution for eye care',399,'https://tse3.mm.bing.net/th/id/OIP.MhK8t2iFC3vNACesuxH43wHaHa'),(311,'Nail Clippers','health','Professional pet nail trimmer',249,'https://m.media-amazon.com/images/I/61ieUK5OVwL.AC.jpg'),(312,'Digestive Supplements','health','Probiotics for gut health',699,'https://m.media-amazon.com/images/I/719iSGEq4hL.AC.jpg'),(313,'Hot Spot Treatment','health','Spray for skin irritations',449,'https://m.media-amazon.com/images/I/71n6LSP6jCL.jpg'),(314,'Vitamin Supplements','health','Multivitamin for overall health',899,'https://tse4.mm.bing.net/th/id/OIP.oU_HL0GM2TwhWgzOMX--FQHaH-'),(315,'Dental Water Additive','health','Freshens breath in drinking water',399,'https://www.loyalpetzone.com/wp-content/uploads/2025/09/mpets-dental-water-additive-dogs-cats.jpg'),(401,'Pet Carrier','accessories','Ventilated travel carrier for small pets',1799,'https://m.media-amazon.com/images/I/71vlGnHqlWL.AC_SL1500.jpg'),(402,'Dog Leash','accessories','6ft reflective nylon leash',449,'https://m.media-amazon.com/images/I/81ES8agPgWL.AC_SL1500.jpg'),(403,'Orthopedic Pet Bed','accessories','Memory foam bed for joint support',2499,'https://tse1.mm.bing.net/th/id/OIP.hMd86AslLiLVXSZDDWNWDgHaHa'),(404,'Stainless Steel Food Bowl','accessories','Anti-slip stainless steel bowl set',699,'https://pawsandtails.pet/wp-content/uploads/2022/11/p-dietary-124407-web-3.jpg'),(405,'Adjustable Dog Collar','accessories','Nylon collar with quick-release buckle',349,'https://m.media-amazon.com/images/I/71TsNbaAaKL.SL1500.jpg'),(406,'Enclosed Litter Box','accessories','Privacy hood litter box for cats',1299,'https://m.media-amazon.com/images/I/718QaHFJaOL.AC.jpg'),(407,'Safety Pet Gate','accessories','Expandable gate for doorways',1899,'https://th.bing.com/th/id/OIP.-f6O2BtJsOlgpLcu8XaVLwHaHa'),(408,'Travel Water Bottle','accessories','Portable water dispenser for walks',499,'https://m.media-amazon.com/images/I/71HUg+Z5zuL.AC_SL1500.jpg'),(409,'GPS Pet Tracker','accessories','Real-time location tracking collar',3999,'https://tse4.mm.bing.net/th/id/OIP.9mFq-hfT1yFF3x4cj16gXAHaHa'),(410,'Cat Scratching Post','accessories','Sisal rope scratching surface',1499,'https://cdn.bmstores.co.uk/images/hpcProductImage/imgDetail1150/376820-kittykins-play-tree-scratching-post-cat-toy.jpg'),(411,'Pet Stroller','accessories','3-wheel stroller for small pets',4999,'https://m.media-amazon.com/images/I/71QD5K4gBuL._AC_UF894,1000_QL80_.jpg'),(412,'Food Storage Container','accessories','Airtight container for pet food',899,'https://tse1.mm.bing.net/th/id/OIP.LeYwco6eEXGUFEfdZ9YQRQHaHa'),(413,'Heated Pet Mat','accessories','Warm bed for cold weather',1799,'https://m.media-amazon.com/images/I/71bJrc+I8SL.AC_SL1500.jpg'),(414,'Automatic Pet Feeder','accessories','Programmable food dispenser',3499,'https://m.media-amazon.com/images/I/61+yHQu8RwL.AC.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Roshini','roshini@gmail.com','8877665544','f7c5097c718f3da6ed185fbb157dbd62b052a3812e544c3cba2290eef1afa93d'),(3,'Nikhitha','nikhithaks2004@gmail.com','8904682844','c75b947fad757d092013e6ed25dc3464451e53ec4668c87d6d07c8f466682f4c'),(4,'nithya','nithya@gmail.com','8976543210','ccb234af588646667f5a8a075be1eaffeb2cf3770e41e3934a7fff2f2cca298b'),(5,'Asha','asha@gmail.com','8010203040','3ce9c3268a5afa194f8f565a6413848a20b14c6648676e19fdcb33e7a97f0bf5'),(6,'Nishchitha','nishchithaks2002@gmail.com','9080706050','ccb234af588646667f5a8a075be1eaffeb2cf3770e41e3934a7fff2f2cca298b'),(7,'Roshu','roshini998601@gmail.com','9050403020','f7c5097c718f3da6ed185fbb157dbd62b052a3812e544c3cba2290eef1afa93d');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-03 19:01:30
