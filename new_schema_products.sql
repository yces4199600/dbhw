CREATE DATABASE  IF NOT EXISTS `new_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `new_schema`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: new_schema
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('SPY×FAMILY 間諜家家酒 1','https://im2.book.com.tw/image/getImage?i=https://www.books.com.tw/img/001/084/62/0010846281.jpg&v=5e145db5a&w=348&h=348','400','幹練間諜〈黃昏〉奉命組成「家庭」，以便潛入名校。然而他所找到的「女兒」是會讀心的超能力者！「妻子」是暗殺者？互相隱瞞真實身份的臨時家庭，挺身對抗考試與世界危機的痛快家庭喜劇！',3),('SPY×FAMILY 間諜家家酒 2','https://im2.book.com.tw/image/getImage?i=https://www.books.com.tw/img/001/085/54/0010855481.jpg&v=5e9590d4a&w=348&h=348','500','為了執行任務、守護東國和西國之間的和平，佛傑一家挑戰名校入學考試。但是若要接近目標戴斯蒙德，安妮亞必須成為獎學生才行！於是黃昏展開了「好朋友大作戰」。但是…？',4),('SPY×FAMILY 間諜家家酒 9','https://im2.book.com.tw/image/getImage?i=https://www.books.com.tw/img/001/092/38/0010923895.jpg&v=62710464a&w=348&h=348','500','約兒vs暗殺者集團的戰鬥進入尾聲…另一方面，豪華郵輪上被人安裝了炸彈－－！察覺危機的洛伊德與安妮亞各自盡力解決難題，不過…？',5),('543','6','6','6',6),('154','5','5','5',7);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-05  6:23:39
