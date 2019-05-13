-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: fse_taskmanager
-- ------------------------------------------------------
-- Server version	5.7.9-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (39),(39);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_task`
--

DROP TABLE IF EXISTS `parent_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parent_task` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_task` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_task`
--

LOCK TABLES `parent_task` WRITE;
/*!40000 ALTER TABLE `parent_task` DISABLE KEYS */;
INSERT INTO `parent_task` VALUES (1,'parent task1');
/*!40000 ALTER TABLE `parent_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project` varchar(45) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'project1 edit',14,'2019-04-23','2019-04-19'),(2,'ADCBCC',10,'2019-04-22','2019-04-20'),(3,'project1',6,'2019-04-30','2019-04-22'),(4,'sadfds',5,'2019-04-27','2019-04-24'),(5,'hjgjg',7,'2019-04-27','2019-04-26'),(6,'new ',19,'2019-05-01','2019-04-24'),(7,'sas',8,'2019-05-03','2019-04-25'),(8,'asadsad',15,'2019-04-23','2019-04-12'),(9,'cxvvvvvv',13,'2019-05-22','2019-05-04'),(10,'hjkh',18,'2019-04-16','2019-04-04'),(11,'sad',15,'2019-04-25','2019-04-25'),(12,'asadsad',7,'2019-05-02','2019-04-25'),(13,'new project',19,'2019-05-03','2019-04-30'),(14,'new project 2',19,'2019-05-03','2019-04-30'),(15,'new ',6,'2019-05-17','2019-04-30T06:56:30.385Z'),(16,'asdfdasfddsfs',8,'2019-05-25','2019-05-22');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `delete_flag` int(11) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `FKksfdm3p03yqyjlnxkb7ixjh2a` (`parent_id`),
  KEY `FKk8qrwowg31kx7hp93sru1pdqa` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,0,'2019-05-10T09:54:50.689Z',12,'2019-05-09T09:54:50.689Z','task1',1,4,'1'),(2,0,'2019-06-28',19,'2019-05-09T11:21:01.511Z','task2',1,1,'1'),(3,0,'2019-05-30',3,'2019-05-02','task3',1,14,'0'),(4,0,'2019-06-27',9,'2019-05-30','task new',1,1,'0'),(5,0,'2019-05-30',14,'2019-05-13T04:53:39.306Z','task with id',1,1,'1'),(6,0,'2019-05-14T05:21:34.079Z',15,'2019-05-13T05:21:34.079Z','dsfsdf',1,9,'0'),(7,0,'2019-05-22',10,'2019-05-13T05:24:06.939Z','kjklj',1,1,'1'),(8,0,'2019-05-23',13,'2019-05-13T05:26:22.714Z','is tak',1,1,'0');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'a','a',1,13,8),(3,'c','c',3,11,0),(4,'d','d',5,0,0),(5,'bbb','bbfdfgfd',123,15,0),(6,'c','c',3,12,0),(7,'c','c',3,1,0),(8,'a','a',1,14,0),(9,'c','c',3,16,0);
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

-- Dump completed on 2019-05-13 15:28:14
