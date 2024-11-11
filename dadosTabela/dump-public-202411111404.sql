-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: public
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_film` int DEFAULT NULL,
  `episode_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `opening_crawl` varchar(1000) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `producer` varchar(100) DEFAULT NULL,
  `release_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_character` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `mass` varchar(255) DEFAULT NULL,
  `hair_color` varchar(255) DEFAULT NULL,
  `skin_color` varchar(255) DEFAULT NULL,
  `eye_color` varchar(255) DEFAULT NULL,
  `birth_year` varchar(255) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (145,1,'Luke Skywalker','172','77','blond','fair','blue','19BBY','male','https://swapi.dev/api/people/1/'),(146,2,'C-3PO','167','75','n/a','gold','yellow','112BBY','n/a','https://swapi.dev/api/people/2/'),(147,3,'R2-D2','96','32','n/a','white, blue','red','33BBY','n/a','https://swapi.dev/api/people/3/'),(148,4,'Darth Vader','202','136','none','white','yellow','41.9BBY','male','https://swapi.dev/api/people/4/'),(149,5,'Leia Organa','150','49','brown','light','brown','19BBY','female','https://swapi.dev/api/people/5/'),(150,6,'Owen Lars','178','120','brown, grey','light','blue','52BBY','male','https://swapi.dev/api/people/6/'),(151,7,'Beru Whitesun lars','165','75','brown','light','blue','47BBY','female','https://swapi.dev/api/people/7/'),(152,8,'R5-D4','97','32','n/a','white, red','red','unknown','n/a','https://swapi.dev/api/people/8/'),(153,9,'Biggs Darklighter','183','84','black','light','brown','24BBY','male','https://swapi.dev/api/people/9/'),(154,10,'Obi-Wan Kenobi','182','77','auburn, white','fair','blue-gray','57BBY','male','https://swapi.dev/api/people/10/'),(155,12,'Wilhuff Tarkin','180','unknown','auburn, grey','fair','blue','64BBY','male','https://swapi.dev/api/people/12/'),(156,13,'Chewbacca','228','112','brown','unknown','blue','200BBY','male','https://swapi.dev/api/people/13/'),(157,14,'Han Solo','180','80','brown','fair','brown','29BBY','male','https://swapi.dev/api/people/14/'),(158,15,'Greedo','173','74','n/a','green','black','44BBY','male','https://swapi.dev/api/people/15/'),(159,16,'Jabba Desilijic Tiure','175','1,358','n/a','green-tan, brown','orange','600BBY','hermaphrodite','https://swapi.dev/api/people/16/'),(160,18,'Wedge Antilles','170','77','brown','fair','hazel','21BBY','male','https://swapi.dev/api/people/18/'),(161,19,'Jek Tono Porkins','180','110','brown','fair','blue','unknown','male','https://swapi.dev/api/people/19/'),(162,81,'Raymus Antilles','188','79','brown','light','brown','unknown','male','https://swapi.dev/api/people/81/'),(163,20,'Yoda','66','17','white','green','brown','896BBY','male','https://swapi.dev/api/people/20/'),(164,21,'Palpatine','170','75','grey','pale','yellow','82BBY','male','https://swapi.dev/api/people/21/'),(165,22,'Boba Fett','183','78.2','black','fair','brown','31.5BBY','male','https://swapi.dev/api/people/22/'),(166,23,'IG-88','200','140','none','metal','red','15BBY','none','https://swapi.dev/api/people/23/'),(167,24,'Bossk','190','113','none','green','red','53BBY','male','https://swapi.dev/api/people/24/'),(168,25,'Lando Calrissian','177','79','black','dark','brown','31BBY','male','https://swapi.dev/api/people/25/'),(169,26,'Lobot','175','79','none','light','blue','37BBY','male','https://swapi.dev/api/people/26/'),(170,11,'Anakin Skywalker','188','84','blond','fair','blue','41.9BBY','male','https://swapi.dev/api/people/11/'),(171,33,'Nute Gunray','191','90','none','mottled green','red','unknown','male','https://swapi.dev/api/people/33/'),(172,35,'Padmé Amidala','185','45','brown','light','brown','46BBY','female','https://swapi.dev/api/people/35/'),(173,46,'Ayla Secura','178','55','none','blue','hazel','48BBY','female','https://swapi.dev/api/people/46/'),(174,51,'Mace Windu','188','84','none','dark','brown','72BBY','male','https://swapi.dev/api/people/51/'),(175,52,'Ki-Adi-Mundi','198','82','white','pale','yellow','92BBY','male','https://swapi.dev/api/people/52/'),(176,53,'Kit Fisto','196','87','none','green','black','unknown','male','https://swapi.dev/api/people/53/'),(177,54,'Eeth Koth','171','unknown','black','brown','brown','unknown','male','https://swapi.dev/api/people/54/'),(178,55,'Adi Gallia','184','50','none','dark','blue','unknown','female','https://swapi.dev/api/people/55/'),(179,56,'Saesee Tiin','188','unknown','none','pale','orange','unknown','male','https://swapi.dev/api/people/56/'),(180,58,'Plo Koon','188','80','none','orange','black','22BBY','male','https://swapi.dev/api/people/58/'),(181,63,'Poggle the Lesser','183','80','none','green','yellow','unknown','male','https://swapi.dev/api/people/63/'),(182,64,'Luminara Unduli','170','56.2','black','yellow','blue','58BBY','female','https://swapi.dev/api/people/64/'),(183,67,'Dooku','193','80','white','fair','brown','102BBY','male','https://swapi.dev/api/people/67/'),(184,68,'Bail Prestor Organa','191','unknown','black','tan','brown','67BBY','male','https://swapi.dev/api/people/68/'),(185,75,'R4-P17','96','unknown','none','silver, red','red, blue','unknown','female','https://swapi.dev/api/people/75/'),(186,78,'Shaak Ti','178','57','none','red, blue, white','black','unknown','female','https://swapi.dev/api/people/78/'),(187,79,'Grievous','216','159','none','brown, white','green, yellow','unknown','male','https://swapi.dev/api/people/79/'),(188,80,'Tarfful','234','136','brown','brown','blue','unknown','male','https://swapi.dev/api/people/80/'),(189,82,'Sly Moore','178','48','none','pale','white','unknown','female','https://swapi.dev/api/people/82/'),(190,83,'Tion Medon','206','80','none','grey','black','unknown','male','https://swapi.dev/api/people/83/'),(191,32,'Qui-Gon Jinn','193','89','brown','fair','blue','92BBY','male','https://swapi.dev/api/people/32/'),(192,34,'Finis Valorum','170','unknown','blond','fair','blue','91BBY','male','https://swapi.dev/api/people/34/'),(193,36,'Jar Jar Binks','196','66','none','orange','orange','52BBY','male','https://swapi.dev/api/people/36/'),(194,37,'Roos Tarpals','224','82','none','grey','orange','unknown','male','https://swapi.dev/api/people/37/'),(195,38,'Rugor Nass','206','unknown','none','green','orange','unknown','male','https://swapi.dev/api/people/38/'),(196,39,'Ric Olié','183','unknown','brown','fair','blue','unknown','male','https://swapi.dev/api/people/39/'),(197,40,'Watto','137','unknown','black','blue, grey','yellow','unknown','male','https://swapi.dev/api/people/40/'),(198,41,'Sebulba','112','40','none','grey, red','orange','unknown','male','https://swapi.dev/api/people/41/'),(199,42,'Quarsh Panaka','183','unknown','black','dark','brown','62BBY','male','https://swapi.dev/api/people/42/'),(200,43,'Shmi Skywalker','163','unknown','black','fair','brown','72BBY','female','https://swapi.dev/api/people/43/'),(201,44,'Darth Maul','175','80','none','red','yellow','54BBY','male','https://swapi.dev/api/people/44/'),(202,47,'Ratts Tyerel','79','15','none','grey, blue','unknown','unknown','male','https://swapi.dev/api/people/47/'),(203,48,'Dud Bolt','94','45','none','blue, grey','yellow','unknown','male','https://swapi.dev/api/people/48/'),(204,49,'Gasgano','122','unknown','none','white, blue','black','unknown','male','https://swapi.dev/api/people/49/'),(205,50,'Ben Quadinaros','163','65','none','grey, green, yellow','orange','unknown','male','https://swapi.dev/api/people/50/'),(206,57,'Yarael Poof','264','unknown','none','white','yellow','unknown','male','https://swapi.dev/api/people/57/'),(207,59,'Mas Amedda','196','unknown','none','blue','blue','unknown','male','https://swapi.dev/api/people/59/'),(208,60,'Gregar Typho','185','85','black','dark','brown','unknown','male','https://swapi.dev/api/people/60/'),(209,61,'Cordé','157','unknown','brown','light','brown','unknown','female','https://swapi.dev/api/people/61/'),(210,62,'Cliegg Lars','183','unknown','brown','fair','blue','82BBY','male','https://swapi.dev/api/people/62/'),(211,65,'Barriss Offee','166','50','black','yellow','blue','40BBY','female','https://swapi.dev/api/people/65/'),(212,66,'Dormé','165','unknown','brown','light','brown','unknown','female','https://swapi.dev/api/people/66/'),(213,69,'Jango Fett','183','79','black','tan','brown','66BBY','male','https://swapi.dev/api/people/69/'),(214,70,'Zam Wesell','168','55','blonde','fair, green, yellow','yellow','unknown','female','https://swapi.dev/api/people/70/'),(215,71,'Dexter Jettster','198','102','none','brown','yellow','unknown','male','https://swapi.dev/api/people/71/'),(216,72,'Lama Su','229','88','none','grey','black','unknown','male','https://swapi.dev/api/people/72/'),(217,73,'Taun We','213','unknown','none','grey','black','unknown','female','https://swapi.dev/api/people/73/'),(218,74,'Jocasta Nu','167','unknown','white','fair','blue','unknown','female','https://swapi.dev/api/people/74/'),(219,76,'Wat Tambor','193','48','none','green, grey','unknown','unknown','male','https://swapi.dev/api/people/76/'),(220,77,'San Hill','191','unknown','none','grey','gold','unknown','male','https://swapi.dev/api/people/77/'),(221,27,'Ackbar','180','83','none','brown mottle','orange','41BBY','male','https://swapi.dev/api/people/27/'),(222,28,'Mon Mothma','150','unknown','auburn','fair','blue','48BBY','female','https://swapi.dev/api/people/28/'),(223,29,'Arvel Crynyd','unknown','unknown','brown','fair','brown','unknown','male','https://swapi.dev/api/people/29/'),(224,30,'Wicket Systri Warrick','88','20','brown','brown','brown','8BBY','male','https://swapi.dev/api/people/30/'),(225,31,'Nien Nunb','160','68','none','grey','black','unknown','male','https://swapi.dev/api/people/31/'),(226,45,'Bib Fortuna','180','unknown','none','pale','pink','unknown','male','https://swapi.dev/api/people/45/');
LOCK TABLES `filmsCharacters` WRITE;
/*!40000 ALTER TABLE `filmsCharacters` DISABLE KEYS */;
INSERT INTO `filmsCharacters` VALUES (63,35,145),(64,35,146),(65,35,147),(66,35,148),(67,35,149),(68,35,150),(69,35,151),(70,35,152),(71,35,153),(72,35,154),(73,35,155),(74,35,156),(75,35,157),(76,35,158),(77,35,159),(78,35,160),(79,35,161),(80,35,162),(81,36,145),(82,36,146),(83,36,147),(84,36,148),(85,36,149),(86,36,154),(87,36,156),(88,36,157),(89,36,160),(90,36,163),(91,36,164),(92,36,165),(93,36,166),(94,36,167),(95,36,168),(96,36,169),(97,37,145),(98,37,146),(99,37,147),(100,37,148),(101,37,149),(102,37,150),(103,37,151),(104,37,154),(105,37,170),(106,37,155),(107,37,156),(108,37,163),(109,37,164),(110,37,171),(111,37,172),(112,37,173),(113,37,174),(114,37,175),(115,37,176),(116,37,177),(117,37,178),(118,37,179),(119,37,180),(120,37,181),(121,37,182),(122,37,183),(123,37,184),(124,37,185),(125,37,186),(126,37,187),(127,37,188),(128,37,162),(129,37,189),(130,37,190),(131,38,146),(132,38,147),(133,38,154),(134,38,170),(135,38,159),(136,38,163),(137,38,164),(138,38,191),(139,38,171),(140,38,192),(141,38,172),(142,38,193),(143,38,194),(144,38,195),(145,38,196),(146,38,197),(147,38,198),(148,38,199),(149,38,200),(150,38,201),(151,38,173),(152,38,202),(153,38,203),(154,38,204),(155,38,205),(156,38,174),(157,38,175),(158,38,176),(159,38,177),(160,38,178),(161,38,179),(162,38,206),(163,38,180),(164,38,207),(165,39,146),(166,39,147),(167,39,150),(168,39,151),(169,39,154),(170,39,170),(171,39,163),(172,39,164),(173,39,165),(174,39,171),(175,39,172),(176,39,193),(177,39,197),(178,39,200),(179,39,173),(180,39,174),(181,39,175),(182,39,176),(183,39,180),(184,39,207),(185,39,208),(186,39,209),(187,39,210),(188,39,181),(189,39,182),(190,39,211),(191,39,212),(192,39,183),(193,39,184),(194,39,213),(195,39,214),(196,39,215),(197,39,216),(198,39,217),(199,39,218),(200,39,185),(201,39,219),(202,39,220),(203,39,186),(204,39,189),(205,40,145),(206,40,146),(207,40,147),(208,40,148),(209,40,149),(210,40,154),(211,40,156),(212,40,157),(213,40,159),(214,40,160),(215,40,163),(216,40,164),(217,40,165),(218,40,168),(219,40,221),(220,40,222),(221,40,223),(222,40,224),(223,40,225),(224,40,226);
/*!40000 ALTER TABLE `filmsCharacters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `data_hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personagem`
--

DROP TABLE IF EXISTS `personagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personagem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_per` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personagem`
--

/*!40000 ALTER TABLE `personagem` ENABLE KEYS */;
UNLOCK TABLES;
