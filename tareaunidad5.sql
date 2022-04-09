-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tareaunidad4
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `_id` varchar(50) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `createdAt` varchar(45) DEFAULT NULL,
  `updatedAt` varchar(45) DEFAULT NULL,
  `timestamp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES ('591f98703b90f7150a19c159','cat','Kittens lose their baby teeth!! At three to four months the incisors erupt. Then at four to six months, they lose their canines, premolars and molars. By the time they are seven months old, their adult teeth are fully developed. This is one of the ways a vet (or you) can tell the age of a kitten.','5a9ac18c7478810ea6c06381','2018-01-04T01:10:54.673Z','2020-08-23T20:20:01.611Z','2022-04-08T19:50:19.242Z'),('591f98783b90f7150a19c1be','cat','Of all the species of cats, the domestic cat is the only species able to hold its tail vertically while walking. All species of wild cats hold their tail horizontally or tucked between their legs while walking.','5a9ac18c7478810ea6c06381','2018-01-04T01:10:54.673Z','2020-08-23T20:20:01.611Z','2022-04-08T19:50:19.242Z'),('591f98a4d369931519ce366e','cat','Heat occurs several times a year and can last anywhere from 3 to 15 days.','5a9ac18c7478810ea6c06381','2018-01-04T01:10:54.673Z','2020-08-23T20:20:01.611Z','2022-04-08T19:50:19.242Z'),('59d297abc6671e0020957eb8','cat','Cats use their whiskers to judge whether they’ll fit through a space.','5a9ac18c7478810ea6c06381','2018-02-20T21:20:03.464Z','2020-08-23T20:20:01.611Z','2022-04-08T19:50:19.242Z'),('5b12d6f2cf4b960d5eb02eb0','horse','Horses have bigger eyes than any other mammal that lives on land.','5a9ac18c7478810ea6c06381','2018-06-02T17:42:10.760Z','2020-08-29T20:20:03.173Z','2022-04-08T19:52:16.300Z'),('5b7a02f82048fd0014e9d87d','dog','The most successful mountain rescue dog ever was a St Bernard named Barry, who lived during the early 1800’s and saved 40 lives.','5a9ac18c7478810ea6c06381','2018-08-19T23:53:28.201Z','2020-08-23T20:20:01.611Z','2022-04-08T19:52:31.565Z'),('5b7a03272048fd0014e9d884','dog','When a puppy is born, he is blind, deaf, and toothless.','5a9ac18c7478810ea6c06381','2018-08-19T23:54:15.487Z','2020-08-23T20:20:01.611Z','2022-04-08T19:52:31.565Z'),('6113716774db3300176f45b7','cat','Hi helllooooooooo.','6113714174db3300176f45a9','2021-08-11T06:42:47.777Z','2021-08-11T06:42:47.777Z','2022-04-08T19:50:19.242Z'),('61b38d569acbc245b53947a8','cat','Another fact.','61b11802f9c77cdad2d21bd3','2021-12-10T17:24:38.054Z','2021-12-10T17:24:38.054Z','2022-04-08T19:50:19.242Z'),('6238d384b18ea9c710f244b4','horse','Qaz.','6238cba5b18ea9c710f23f01','2022-03-21T19:35:32.875Z','2022-03-21T19:35:32.875Z','2022-04-08T19:52:16.300Z'),('623f6be571e71c79959d66f5','cat','12345.','623b03d11fbf24e1ca594a70','2022-03-26T19:39:17.331Z','2022-03-26T19:39:17.331Z','2022-04-08T19:50:19.242Z'),('624051282d044f255236880d','horse','Gjygggjj n.','623f694271e71c79959d660c','2022-03-27T11:57:28.688Z','2022-03-27T11:57:28.688Z','2022-04-08T19:52:16.300Z'),('624393c5f329dce574d3e97b','horse','Kjiflm.','6243309efade95100ddbfd49','2022-03-29T23:18:29.729Z','2022-03-29T23:18:29.729Z','2022-04-08T19:52:16.300Z'),('6245af904131009fe9494c34','dog','Собака друг человека.','623cbd91cb064016a9266902','2022-03-31T13:41:36.425Z','2022-03-31T13:41:36.425Z','2022-04-08T19:52:31.565Z'),('624c0a736674929831643c15','dog','Факт о Собаке.','623ce13e9f15f61ff4f483f9','2022-04-05T09:22:59.994Z','2022-04-05T09:22:59.994Z','2022-04-08T19:52:31.565Z');
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-08 23:33:51
