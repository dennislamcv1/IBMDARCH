-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: 172.21.151.111    Database: webproducts
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog` (
  `product_name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity_in_stock` int DEFAULT NULL,
  `date_added` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES ('T-Shirt','Clothing','M','Red',19.99,100,'2025-04-08'),('Jeans','Clothing','L','Blue',49.99,50,'2025-04-08'),('Jacket','Outerwear','M','Black',89.99,30,'2025-04-08'),('Sneakers','Footwear','8','White',59.99,200,'2025-04-08'),('Sweater','Clothing','L','Grey',29.99,75,'2025-04-08'),('Dress','Clothing','S','Black',59.99,20,'2025-04-08'),('Hoodie','Clothing','M','Navy',39.99,150,'2025-04-08'),('Shorts','Clothing','L','Khaki',25.99,80,'2025-04-08'),('Scarf','Accessories','One Size','Red',15.99,200,'2025-04-08'),('Gloves','Accessories','One Size','Black',9.99,150,'2025-04-08'),('Boots','Footwear','9','Brown',89.99,40,'2025-04-08'),('T-Shirt','Clothing','S','Green',17.99,120,'2025-04-08'),('Leggings','Clothing','M','Black',29.99,130,'2025-04-08'),('Cap','Accessories','One Size','Blue',19.99,90,'2025-04-08'),('Socks','Accessories','One Size','White',5.99,500,'2025-04-08'),('Blouse','Clothing','M','White',39.99,70,'2025-04-08'),('Skirt','Clothing','S','Pink',24.99,60,'2025-04-08'),('Sweater','Clothing','XL','Beige',35.99,50,'2025-04-08'),('Raincoat','Outerwear','L','Yellow',69.99,30,'2025-04-08'),('Polo','Clothing','M','Red',22.99,200,'2025-04-08'),('Cargo Pants','Clothing','L','Olive',34.99,80,'2025-04-08'),('Blazer','Clothing','L','Black',89.99,40,'2025-04-08'),('Chinos','Clothing','M','Navy',45.99,90,'2025-04-08'),('Boots','Footwear','10','Black',79.99,60,'2025-04-08'),('Sneakers','Footwear','7','Grey',69.99,100,'2025-04-08'),('Shirt','Clothing','S','Blue',27.99,75,'2025-04-08'),('Puffer Jacket','Outerwear','M','Red',99.99,25,'2025-04-08'),('Tank Top','Clothing','S','White',14.99,150,'2025-04-08'),('Joggers','Clothing','M','Black',39.99,120,'2025-04-08'),('Tracksuit','Clothing','L','Black',59.99,60,'2025-04-08'),('Fleece Jacket','Outerwear','XL','Grey',79.99,35,'2025-04-08');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23 20:39:08
