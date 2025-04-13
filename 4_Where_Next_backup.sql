-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: where_next
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `Customer_Name` varchar(255) DEFAULT NULL,
  `Payment_Terms_Days` int DEFAULT NULL,
  `Address_Number` int DEFAULT NULL,
  `Address_Line_1` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Post_Code` varchar(255) DEFAULT NULL,
  `Location_ID` int DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1001,'The National Three Peaks Challenge',30,12,'Primrose Lane','Cambridge','CB1 2AB',150),(1002,'The Ourea Events',30,22,'Mtaa wa Serengeti','Arusha','11101',49),(1003,'Adventure Racing',30,8,'Ashford Crescent','Manchester','M1 3ZD',150),(1004,'London Marathon Events',60,23,'Elm Street','Bristol','BS3 7HJ',150),(1005,'The Great Run Company',30,125,'Maplewood Drive','Springfield','IL 62704',170),(1006,'Rock ‘n’ Roll Marathon Series',30,32,'Birch Lane','Vancouver','BC V5K 1Z9',152),(1007,'Disney Sports',30,45,'Rue des Lilas','Paris','75012',118),(1008,'Spartan Race',30,15,'Rue des Palmiers','Marrakech','40000',35),(1009,'Tough Mudder',30,45,'Windmill Close','Birmingham','B5 4FS',150),(1010,'Xterra',30,34,'Safari Lane','Nairobi','10010',26),(1011,'Ultra Trail du Mont-Blanc (UTMB)',30,17,'Avenue de la Liberté','Lyon','69003',118),(1012,'Ironman',30,10,'Via delle Colline','Florence','50123',124),(1013,'Cycle Events',30,28,'Boulevard des Étoiles','Bordeaux','33000',118),(1014,'TransRockies',30,789,'Pinecrest Avenue','Dallas','TX 75201',170),(1015,'Cancer Research UK',30,99,'Rosewood Avenue','London','W1C 4QS',150),(1016,'British Heart Foundation',60,17,'Brookfield Drive','Edinburgh','EH2 4RD',150),(1017,'Oxfam',60,12,'Calle del Sol','Madrid','28013',145),(1018,'G Adventures',30,25,'Elmwood Road','London','SW3 4TD',150),(1019,'Intrepid Travel',30,45,'Soi Sukhumvit 21','BangKok','10110',97),(1020,'Explore Worldwide',30,32,'Mango Lane','Mumbai','400001',66),(1021,'The Duke of Edinburgh’s Award (DofE)',30,34,'Heather Road','Liverpool','L4 6BN',150),(1022,'The Scout Association',30,27,'Hilltop Gardens','Oxford','OX1 4AF',150),(1023,'Girlguiding UK',30,56,'Oakwood Crescent','Leeds','LS2 8HT',150),(1024,'Youth Adventure Trust',30,10,'Maple Street','Glasgow','G3 6DJ',150),(1025,'The National Trust',30,15,'Rosewood Avenue','London','W1C 3QS',150),(1026,'Camp America',30,742,'Evergreen Terrace','Springfield','IL 62701',170),(1027,'Wild Camping',60,18,'Rosebury Avenue','Manchester','M1 2AB',150),(1028,'Adventure Trust for Girls',30,8,'Avenida de la Rosa','Barcelona','8015',145);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_location`
--

DROP TABLE IF EXISTS `delivery_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_location` (
  `Location_id` int NOT NULL AUTO_INCREMENT,
  `Country` varchar(255) DEFAULT NULL,
  `Continent` varchar(255) DEFAULT NULL,
  `Delivery_Lead_Time_days` int DEFAULT NULL,
  PRIMARY KEY (`Location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_location`
--

LOCK TABLES `delivery_location` WRITE;
/*!40000 ALTER TABLE `delivery_location` DISABLE KEYS */;
INSERT INTO `delivery_location` VALUES (1,'Algeria','Africa',90),(2,'Angola','Africa',90),(3,'Benin','Africa',90),(4,'Botswana','Africa',90),(5,'Burkina Faso','Africa',90),(6,'Burundi','Africa',90),(7,'Cabo Verde (Cape Verde)','Africa',90),(8,'Cameroon','Africa',90),(9,'Central African Republic','Africa',90),(10,'Chad','Africa',90),(11,'Comoros','Africa',90),(12,'Congo, Democratic Republic of the','Africa',90),(13,'Congo, Republic of the','Africa',90),(14,'Djibouti','Africa',90),(15,'Egypt','Africa',90),(16,'Equatorial Guinea','Africa',90),(17,'Eritrea','Africa',90),(18,'Eswatini (Swaziland)','Africa',90),(19,'Ethiopia','Africa',90),(20,'Gabon','Africa',90),(21,'Gambia','Africa',90),(22,'Ghana','Africa',90),(23,'Guinea','Africa',90),(24,'Guinea-Bissau','Africa',90),(25,'Ivory Coast (Côte d\'Ivoire)','Africa',90),(26,'Kenya','Africa',90),(27,'Lesotho','Africa',90),(28,'Liberia','Africa',90),(29,'Libya','Africa',90),(30,'Madagascar','Africa',90),(31,'Malawi','Africa',90),(32,'Mali','Africa',90),(33,'Mauritania','Africa',90),(34,'Mauritius','Africa',90),(35,'Morocco','Africa',90),(36,'Mozambique','Africa',90),(37,'Namibia','Africa',90),(38,'Niger','Africa',90),(39,'Nigeria','Africa',90),(40,'Rwanda','Africa',90),(41,'São Tomé and Príncipe','Africa',90),(42,'Senegal','Africa',90),(43,'Seychelles','Africa',90),(44,'Sierra Leone','Africa',90),(45,'Somalia','Africa',90),(46,'South Africa','Africa',90),(47,'South Sudan','Africa',90),(48,'Sudan','Africa',90),(49,'Tanzania','Africa',90),(50,'Togo','Africa',90),(51,'Tunisia','Africa',90),(52,'Uganda','Africa',90),(53,'Zambia','Africa',90),(54,'Zimbabwe','Africa',90),(55,'Afghanistan','Asia',90),(56,'Armenia','Asia',90),(57,'Azerbaijan','Asia',90),(58,'Bahrain','Asia',90),(59,'Bangladesh','Asia',90),(60,'Bhutan','Asia',90),(61,'Brunei','Asia',90),(62,'Cambodia','Asia',90),(63,'China','Asia',90),(64,'Cyprus','Asia',90),(65,'Georgia','Asia',90),(66,'India','Asia',90),(67,'Indonesia','Asia',90),(68,'Iran','Asia',90),(69,'Iraq','Asia',90),(70,'Israel','Asia',90),(71,'Japan','Asia',90),(72,'Jordan','Asia',90),(73,'Kazakhstan','Asia',90),(74,'Kuwait','Asia',90),(75,'Kyrgyzstan','Asia',90),(76,'Laos','Asia',90),(77,'Lebanon','Asia',90),(78,'Malaysia','Asia',90),(79,'Maldives','Asia',90),(80,'Mongolia','Asia',90),(81,'Myanmar (Burma)','Asia',90),(82,'Nepal','Asia',90),(83,'North Korea','Asia',90),(84,'Oman','Asia',90),(85,'Pakistan','Asia',90),(86,'Palestine','Asia',90),(87,'Philippines','Asia',90),(88,'Qatar','Asia',90),(89,'Russia (partly in Asia)','Asia',90),(90,'Saudi Arabia','Asia',90),(91,'Singapore','Asia',90),(92,'South Korea','Asia',90),(93,'Sri Lanka','Asia',90),(94,'Syria','Asia',90),(95,'Taiwan','Asia',90),(96,'Tajikistan','Asia',90),(97,'Thailand','Asia',90),(98,'Timor-Leste (East Timor)','Asia',90),(99,'Turkey (partly in Asia)','Asia',90),(100,'Turkmenistan','Asia',90),(101,'United Arab Emirates','Asia',90),(102,'Uzbekistan','Asia',90),(103,'Vietnam','Asia',90),(104,'Yemen','Asia',90),(105,'Albania','Europe',14),(106,'Andorra','Europe',14),(107,'Austria','Europe',14),(108,'Belarus','Europe',14),(109,'Belgium','Europe',14),(110,'Bosnia and Herzegovina','Europe',14),(111,'Bulgaria','Europe',14),(112,'Croatia','Europe',14),(113,'Cyprus (also in Asia)','Europe',14),(114,'Czech Republic (Czechia)','Europe',14),(115,'Denmark','Europe',14),(116,'Estonia','Europe',14),(117,'Finland','Europe',14),(118,'France','Europe',14),(119,'Germany','Europe',14),(120,'Greece','Europe',14),(121,'Hungary','Europe',14),(122,'Iceland','Europe',14),(123,'Ireland','Europe',14),(124,'Italy','Europe',14),(125,'Kosovo','Europe',14),(126,'Latvia','Europe',14),(127,'Liechtenstein','Europe',14),(128,'Lithuania','Europe',14),(129,'Luxembourg','Europe',14),(130,'Malta','Europe',14),(131,'Moldova','Europe',14),(132,'Monaco','Europe',14),(133,'Montenegro','Europe',14),(134,'Netherlands','Europe',14),(135,'North Macedonia','Europe',14),(136,'Norway','Europe',14),(137,'Poland','Europe',14),(138,'Portugal','Europe',14),(139,'Romania','Europe',14),(140,'Russia (partly in Europe)','Europe',14),(141,'San Marino','Europe',14),(142,'Serbia','Europe',14),(143,'Slovakia','Europe',14),(144,'Slovenia','Europe',14),(145,'Spain','Europe',14),(146,'Sweden','Europe',14),(147,'Switzerland','Europe',14),(148,'Turkey (partly in Europe)','Europe',14),(149,'Ukraine','Europe',14),(150,'United Kingdom','Europe',5),(151,'Vatican City (Holy See)','Europe',14),(152,'Canada','North America',60),(153,'Costa Rica','North America',60),(154,'Cuba','North America',60),(155,'Dominica','North America',60),(156,'Dominican Republic','North America',60),(157,'El Salvador','North America',60),(158,'Grenada','North America',60),(159,'Guatemala','North America',60),(160,'Haiti','North America',60),(161,'Honduras','North America',60),(162,'Jamaica','North America',60),(163,'Mexico','North America',60),(164,'Nicaragua','North America',60),(165,'Panama','North America',60),(166,'Saint Kitts and Nevis','North America',60),(167,'Saint Lucia','North America',60),(168,'Saint Vincent and the Grenadines','North America',60),(169,'Trinidad and Tobago','North America',60),(170,'United States','North America',60),(171,'Argentina','South America',60),(172,'Bolivia','South America',60),(173,'Brazil','South America',60),(174,'Chile','South America',60),(175,'Colombia','South America',60),(176,'Ecuador','South America',60),(177,'Guyana','South America',60),(178,'Paraguay','South America',60),(179,'Peru','South America',60),(180,'Suriname','South America',60),(181,'Uruguay','South America',60),(182,'Venezuela','South America',60),(183,'Australia','Oceania',90),(184,'Fiji','Oceania',90),(185,'Kiribati','Oceania',90),(186,'Marshall Islands','Oceania',90),(187,'Micronesia (Federated States of)','Oceania',90),(188,'Nauru','Oceania',90),(189,'New Zealand','Oceania',90),(190,'Palau','Oceania',90),(191,'Papua New Guinea','Oceania',90),(192,'Samoa','Oceania',90),(193,'Solomon Islands','Oceania',90),(194,'Tonga','Oceania',90),(195,'Tuvalu','Oceania',90),(196,'Vanuatu','Oceania',90),(197,'Algeria','Africa',90),(198,'Angola','Africa',90),(199,'Benin','Africa',90),(200,'Botswana','Africa',90),(201,'Burkina Faso','Africa',90),(202,'Burundi','Africa',90),(203,'Cabo Verde (Cape Verde)','Africa',90),(204,'Cameroon','Africa',90),(205,'Central African Republic','Africa',90),(206,'Chad','Africa',90),(207,'Comoros','Africa',90),(208,'Congo, Democratic Republic of the','Africa',90),(209,'Congo, Republic of the','Africa',90),(210,'Djibouti','Africa',90),(211,'Egypt','Africa',90),(212,'Equatorial Guinea','Africa',90),(213,'Eritrea','Africa',90),(214,'Eswatini (Swaziland)','Africa',90),(215,'Ethiopia','Africa',90),(216,'Gabon','Africa',90),(217,'Gambia','Africa',90),(218,'Ghana','Africa',90),(219,'Guinea','Africa',90),(220,'Guinea-Bissau','Africa',90),(221,'Ivory Coast (Côte d\'Ivoire)','Africa',90),(222,'Kenya','Africa',90),(223,'Lesotho','Africa',90),(224,'Liberia','Africa',90),(225,'Libya','Africa',90),(226,'Madagascar','Africa',90),(227,'Malawi','Africa',90),(228,'Mali','Africa',90),(229,'Mauritania','Africa',90),(230,'Mauritius','Africa',90),(231,'Morocco','Africa',90),(232,'Mozambique','Africa',90),(233,'Namibia','Africa',90),(234,'Niger','Africa',90),(235,'Nigeria','Africa',90),(236,'Rwanda','Africa',90),(237,'São Tomé and Príncipe','Africa',90),(238,'Senegal','Africa',90),(239,'Seychelles','Africa',90),(240,'Sierra Leone','Africa',90),(241,'Somalia','Africa',90),(242,'South Africa','Africa',90),(243,'South Sudan','Africa',90),(244,'Sudan','Africa',90),(245,'Tanzania','Africa',90),(246,'Togo','Africa',90),(247,'Tunisia','Africa',90),(248,'Uganda','Africa',90),(249,'Zambia','Africa',90),(250,'Zimbabwe','Africa',90),(251,'Afghanistan','Asia',90),(252,'Armenia','Asia',90),(253,'Azerbaijan','Asia',90),(254,'Bahrain','Asia',90),(255,'Bangladesh','Asia',90),(256,'Bhutan','Asia',90),(257,'Brunei','Asia',90),(258,'Cambodia','Asia',90),(259,'China','Asia',90),(260,'Cyprus','Asia',90),(261,'Georgia','Asia',90),(262,'India','Asia',90),(263,'Indonesia','Asia',90),(264,'Iran','Asia',90),(265,'Iraq','Asia',90),(266,'Israel','Asia',90),(267,'Japan','Asia',90),(268,'Jordan','Asia',90),(269,'Kazakhstan','Asia',90),(270,'Kuwait','Asia',90),(271,'Kyrgyzstan','Asia',90),(272,'Laos','Asia',90),(273,'Lebanon','Asia',90),(274,'Malaysia','Asia',90),(275,'Maldives','Asia',90),(276,'Mongolia','Asia',90),(277,'Myanmar (Burma)','Asia',90),(278,'Nepal','Asia',90),(279,'North Korea','Asia',90),(280,'Oman','Asia',90),(281,'Pakistan','Asia',90),(282,'Palestine','Asia',90),(283,'Philippines','Asia',90),(284,'Qatar','Asia',90),(285,'Russia (partly in Asia)','Asia',90),(286,'Saudi Arabia','Asia',90),(287,'Singapore','Asia',90),(288,'South Korea','Asia',90),(289,'Sri Lanka','Asia',90),(290,'Syria','Asia',90),(291,'Taiwan','Asia',90),(292,'Tajikistan','Asia',90),(293,'Thailand','Asia',90),(294,'Timor-Leste (East Timor)','Asia',90),(295,'Turkey (partly in Asia)','Asia',90),(296,'Turkmenistan','Asia',90),(297,'United Arab Emirates','Asia',90),(298,'Uzbekistan','Asia',90),(299,'Vietnam','Asia',90),(300,'Yemen','Asia',90),(301,'Albania','Europe',14),(302,'Andorra','Europe',14),(303,'Austria','Europe',14),(304,'Belarus','Europe',14),(305,'Belgium','Europe',14),(306,'Bosnia and Herzegovina','Europe',14),(307,'Bulgaria','Europe',14),(308,'Croatia','Europe',14),(309,'Cyprus (also in Asia)','Europe',14),(310,'Czech Republic (Czechia)','Europe',14),(311,'Denmark','Europe',14),(312,'Estonia','Europe',14),(313,'Finland','Europe',14),(314,'France','Europe',14),(315,'Germany','Europe',14),(316,'Greece','Europe',14),(317,'Hungary','Europe',14),(318,'Iceland','Europe',14),(319,'Ireland','Europe',14),(320,'Italy','Europe',14),(321,'Kosovo','Europe',14),(322,'Latvia','Europe',14),(323,'Liechtenstein','Europe',14),(324,'Lithuania','Europe',14),(325,'Luxembourg','Europe',14),(326,'Malta','Europe',14),(327,'Moldova','Europe',14),(328,'Monaco','Europe',14),(329,'Montenegro','Europe',14),(330,'Netherlands','Europe',14),(331,'North Macedonia','Europe',14),(332,'Norway','Europe',14),(333,'Poland','Europe',14),(334,'Portugal','Europe',14),(335,'Romania','Europe',14),(336,'Russia (partly in Europe)','Europe',14),(337,'San Marino','Europe',14),(338,'Serbia','Europe',14),(339,'Slovakia','Europe',14),(340,'Slovenia','Europe',14),(341,'Spain','Europe',14),(342,'Sweden','Europe',14),(343,'Switzerland','Europe',14),(344,'Turkey (partly in Europe)','Europe',14),(345,'Ukraine','Europe',14),(346,'United Kingdom','Europe',5),(347,'Vatican City (Holy See)','Europe',14),(348,'Canada','North America',60),(349,'Costa Rica','North America',60),(350,'Cuba','North America',60),(351,'Dominica','North America',60),(352,'Dominican Republic','North America',60),(353,'El Salvador','North America',60),(354,'Grenada','North America',60),(355,'Guatemala','North America',60),(356,'Haiti','North America',60),(357,'Honduras','North America',60),(358,'Jamaica','North America',60),(359,'Mexico','North America',60),(360,'Nicaragua','North America',60),(361,'Panama','North America',60),(362,'Saint Kitts and Nevis','North America',60),(363,'Saint Lucia','North America',60),(364,'Saint Vincent and the Grenadines','North America',60),(365,'Trinidad and Tobago','North America',60),(366,'United States','North America',60),(367,'Argentina','South America',60),(368,'Bolivia','South America',60),(369,'Brazil','South America',60),(370,'Chile','South America',60),(371,'Colombia','South America',60),(372,'Ecuador','South America',60),(373,'Guyana','South America',60),(374,'Paraguay','South America',60),(375,'Peru','South America',60),(376,'Suriname','South America',60),(377,'Uruguay','South America',60),(378,'Venezuela','South America',60),(379,'Australia','Oceania',90),(380,'Fiji','Oceania',90),(381,'Kiribati','Oceania',90),(382,'Marshall Islands','Oceania',90),(383,'Micronesia (Federated States of)','Oceania',90),(384,'Nauru','Oceania',90),(385,'New Zealand','Oceania',90),(386,'Palau','Oceania',90),(387,'Papua New Guinea','Oceania',90),(388,'Samoa','Oceania',90),(389,'Solomon Islands','Oceania',90),(390,'Tonga','Oceania',90),(391,'Tuvalu','Oceania',90),(392,'Vanuatu','Oceania',90);
/*!40000 ALTER TABLE `delivery_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freight_cost`
--

DROP TABLE IF EXISTS `freight_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freight_cost` (
  `Freight_Cost_ID` int NOT NULL,
  `Freight_Provider_ID` int DEFAULT NULL,
  `Continent` varchar(255) DEFAULT NULL,
  `Price_per_kg` float DEFAULT NULL,
  `Lead_Time_days` int DEFAULT NULL,
  PRIMARY KEY (`Freight_Cost_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freight_cost`
--

LOCK TABLES `freight_cost` WRITE;
/*!40000 ALTER TABLE `freight_cost` DISABLE KEYS */;
INSERT INTO `freight_cost` VALUES (1,2001,'Africa',20,2),(2,2001,'Asia',20,2),(3,2001,'Europe',20,2),(4,2001,'North America',20,2),(5,2001,'Oceania',20,2),(6,2002,'Africa',2.4,10),(7,2002,'Asia',2.3,12),(8,2002,'Europe',1.1,5),(9,2002,'North America',1.8,8),(10,2002,'Oceania',3.1,20),(11,2003,'Europe',10,2),(12,2003,'North America',10,2),(13,2004,'Africa',15,3),(14,2004,'Asia',15,3),(15,2004,'Europe',15,3),(16,2004,'North America',15,3),(17,2004,'Oceania',15,3),(18,2005,'Africa',8,20),(19,2005,'Asia',9,20),(20,2005,'Europe',5,10),(21,2005,'North America',7,15),(22,2005,'Oceania',10,30),(23,2006,'Africa',5,15),(24,2006,'Asia',5,15),(25,2007,'Oceania',6,12),(26,2008,'Europe',1.5,6),(27,2008,'North America',4,30),(28,2009,'Africa',4,10),(29,2009,'Asia',5,12),(30,2009,'Europe',3,4),(31,2009,'North America',5,20),(32,2009,'Oceania',7,25),(33,2010,'Africa',5,8),(34,2010,'Asia',5,10),(35,2010,'Europe',2,5),(36,2010,'North America',3,15),(37,2010,'Oceania',8,25),(38,2011,'Europe',2,6);
/*!40000 ALTER TABLE `freight_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freight_provider`
--

DROP TABLE IF EXISTS `freight_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freight_provider` (
  `Freight_Provider_ID` int NOT NULL,
  `Freight_Provider_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Freight_Provider_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freight_provider`
--

LOCK TABLES `freight_provider` WRITE;
/*!40000 ALTER TABLE `freight_provider` DISABLE KEYS */;
INSERT INTO `freight_provider` VALUES (2001,'DHL Supply Chain & Global Forwarding'),(2002,'Kuehne + Nagel'),(2003,'UPS Supply Chain Solutions'),(2004,'FedEx Logistics'),(2005,'C.H. Robinson'),(2006,'XPO Logistics'),(2007,'DB Schenker'),(2008,'GEODIS'),(2009,'DSV'),(2010,'Expeditors International'),(2011,'DPD');
/*!40000 ALTER TABLE `freight_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mueslitally`
--

DROP TABLE IF EXISTS `mueslitally`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mueslitally` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `last_update` timestamp NULL DEFAULT NULL,
  `QtySold` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mueslitally`
--

LOCK TABLES `mueslitally` WRITE;
/*!40000 ALTER TABLE `mueslitally` DISABLE KEYS */;
INSERT INTO `mueslitally` VALUES (1,'2024-10-01 12:01:29',385);
/*!40000 ALTER TABLE `mueslitally` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_ID` int NOT NULL,
  `Supplier_ID` int DEFAULT NULL,
  `Product_Name` varchar(255) DEFAULT NULL,
  `Weight_kg` float DEFAULT NULL,
  `Purchase_Price` float DEFAULT NULL,
  `Sales_Price` float DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (12345,3001,'Porridge Oats',0.1,0.5,1.5),(12346,3001,'Coffee sachet',0.005,0.2,0.45),(12347,3001,'Muelsi',0.1,0.5,1.5),(12348,3001,'Teabag',0.005,0.2,0.45),(12349,3006,'Chicken Curry with Rice ',0.3,1.85,3.25),(12350,3006,'Plain Rice ',0.3,0.4,1),(12351,3006,'Thai Green Curry',0.3,1.25,3.35),(12352,3006,'Sweet and Sour Chicken',0.3,1.65,3.3),(12353,3006,'Veg Stir Fry',0.3,0.25,3.1),(12354,3009,'Mac & Cheese',0.3,0.75,2.5),(12355,3009,'Spagetti Bolognese ',0.3,1.5,3.5),(12356,3009,'Beef Stroganoff',0.3,1.25,3.15),(12357,3011,'Baked Beans',0.3,0.56,1.75),(12358,3011,'Baked Beans with Bacon',0.3,0.85,2),(12359,3012,'Chilli Con Carne',0.3,0.45,1.6),(12360,3012,'Black Bean Stew',0.3,0.35,1.5),(12361,3004,'Veg Stew',0.3,0.35,2.5),(12362,3004,'Chicken Stew',0.3,1.85,3.25),(12363,3004,'Sausage Stew',0.3,1.85,3.25),(12364,3007,'Fruit & Nut bar',0.05,0.3,0.85),(12365,3007,'Orange Electrolyte Powders',0.04,0.2,0.75),(12366,3007,'Lemon Electrolyte Powders',0.04,0.2,0.75),(12368,3009,'Tuna Pasta',0.3,2.1,3.5),(12369,3006,'Lentil Curry',0.3,1.75,3.1),(12370,3005,'Plain Pasta',0.3,0.75,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_product_insert` AFTER INSERT ON `product` FOR EACH ROW BEGIN
    INSERT INTO ProductLogs (LogMessage)
    VALUES (CONCAT('New product added: ', NEW.Product_Name));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_product_update` AFTER UPDATE ON `product` FOR EACH ROW BEGIN
    INSERT INTO ProductLogs (LogMessage)
    VALUES (CONCAT('Product Info Updated: ', NEW.Product_Name));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_product_delete` AFTER DELETE ON `product` FOR EACH ROW BEGIN
    INSERT INTO ProductLogs (LogMessage)
    VALUES (CONCAT('Product Info Deleted: ', OLD.Product_Name));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_details` (
  `Product_ID` int DEFAULT NULL,
  `Meal_Type` varchar(255) DEFAULT NULL,
  `Main_Protein` varchar(255) DEFAULT NULL,
  `Allergens` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_details`
--

LOCK TABLES `product_details` WRITE;
/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
INSERT INTO `product_details` VALUES (12345,'Breakfast ','None','None'),(12346,'Drink','None','None'),(12347,'Breakfast ','None','Milk'),(12348,'Drink','None','None'),(12349,'Hot Meal ','Chicken','Nuts'),(12350,'Side','None','None'),(12351,'Hot Meal ','Chicken','Soya'),(12352,'Hot Meal ','Chicken','Nuts'),(12353,'Hot Meal ','None','None'),(12354,'Hot Meal ','None','Milk, gluten, egg'),(12355,'Hot Meal ','Beef','Gluten'),(12356,'Hot Meal ','Beef','Gluten, Celery'),(12357,'Breakfast ','None','None'),(12358,'Breakfast ','Pork ','None'),(12359,'Hot Meal ','Beef','None'),(12360,'Hot Meal ','None','None'),(12361,'Hot Meal ','None','Celery'),(12362,'Hot Meal ','Chicken','Celery'),(12363,'Hot Meal ','Pork','Milk'),(12364,'Snack','None','Nuts'),(12365,'Drink','None','None'),(12366,'Drink','None','None'),(12367,'Snack','None','None');
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlogs`
--

DROP TABLE IF EXISTS `productlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productlogs` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `LogMessage` varchar(255) DEFAULT NULL,
  `LogDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlogs`
--

LOCK TABLES `productlogs` WRITE;
/*!40000 ALTER TABLE `productlogs` DISABLE KEYS */;
INSERT INTO `productlogs` VALUES (1,'New product added: Tuna Pasta','2024-10-01 11:47:06'),(2,'New product added: Lentil Curry','2024-10-01 11:52:31'),(3,'New product added: Plain Pasta','2024-10-01 11:52:57'),(4,'Product Info Updated: Spagetti Bolognese ','2024-10-01 11:55:04'),(5,'Product Info Deleted: Cherry Energy Gel ','2024-10-01 11:55:48');
/*!40000 ALTER TABLE `productlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `OrderID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Total_Weight` float DEFAULT NULL,
  `FreightCostID` int DEFAULT NULL,
  `Total_Freight_Cost` float DEFAULT NULL,
  `Total_goods_cost` float DEFAULT NULL,
  `TotalSalesAmount` float DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (10001,1019,'2024-01-20',12347,25,2.5,7,5.75,37.5,43.25),(10002,1028,'2024-01-15',12357,50,15,38,30,87.5,117.5),(10003,1010,'2024-02-16',12367,75,4.5,23,22.5,63.75,86.25),(10004,1019,'2024-02-25',12359,80,24,19,216,128,344),(10005,1017,'2024-03-14',12355,30,9,11,90,97.5,187.5),(10006,1008,'2024-03-15',12366,500,20,13,300,375,675),(10007,1023,'2024-03-20',12351,45,13.5,20,67.5,150.75,218.25),(10008,1027,'2024-04-01',12352,55,16.5,26,24.75,181.5,206.25),(10009,1006,'2024-04-05',12367,625,37.5,16,562.5,531.25,1093.75),(10010,1002,'2024-04-08',12363,35,10.5,28,42,113.75,155.75),(10011,1023,'2024-04-17',12347,300,30,26,45,450,495),(10012,1027,'2024-04-30',12361,15,4.5,35,9,37.5,46.5),(10013,1002,'2024-05-03',12360,25,7.5,1,150,37.5,187.5),(10014,1013,'2024-05-04',12366,325,13,8,14.3,243.75,258.05),(10015,1027,'2024-05-05',12360,5,1.5,20,7.5,7.5,15),(10016,1023,'2024-05-06',12356,50,15,8,16.5,157.5,174),(10017,1027,'2024-05-12',12346,90,0.45,26,0.68,40.5,41.18),(10018,1014,'2024-05-21',12353,45,13.5,21,94.5,139.5,234),(10019,1023,'2024-05-25',12354,100,30,26,45,250,295),(10020,1022,'2024-06-04',12358,30,9,11,90,60,150),(10021,1027,'2024-06-19',12347,60,6,20,30,90,120),(10022,1015,'2024-06-23',12363,50,15,35,30,162.5,192.5),(10023,1001,'2024-06-25',12349,50,15,15,225,162.5,387.5),(10024,1021,'2024-06-26',12362,600,180,8,198,1950,2148),(10025,1013,'2024-06-30',12364,68,3.4,15,51,57.8,108.8);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `Supplier_ID` int NOT NULL,
  `Supplier_Name` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Inbound_Lead_Time_days` int DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (3001,'Nestlé Professional','UK',14),(3002,'Campbell\'s Soup Company','USA',70),(3003,'Hormel Foods','UK',15),(3004,'ConAgra Brands','France',70),(3005,'Kraft Heinz','Spain',24),(3006,'Tasty Bite','India',55),(3007,'Mountain House','Lithuania',35),(3008,'Backpacker\'s Pantry','Lithuania',30),(3009,'Chef’s Choice','UK',45),(3010,'Loma Linda','Thailand',70),(3011,'The Good Bean','UK',20),(3012,'Goya Foods','Brazil',45),(3013,'Luzianne','India',60);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_procurement`
--

DROP TABLE IF EXISTS `vw_procurement`;
/*!50001 DROP VIEW IF EXISTS `vw_procurement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_procurement` AS SELECT 
 1 AS `Product_ID`,
 1 AS `Product_Name`,
 1 AS `Purchase_Price`,
 1 AS `Supplier_Name`,
 1 AS `Location`,
 1 AS `Inbound_Lead_Time_days`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_product_info`
--

DROP TABLE IF EXISTS `vw_product_info`;
/*!50001 DROP VIEW IF EXISTS `vw_product_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_product_info` AS SELECT 
 1 AS `Product_ID`,
 1 AS `Product_Name`,
 1 AS `Weight_kg`,
 1 AS `Sales_Price`,
 1 AS `Supplier_Name`,
 1 AS `Inbound_Lead_Time_days`,
 1 AS `Meal_type`,
 1 AS `Main_Protein`,
 1 AS `Allergens`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_sales_data`
--

DROP TABLE IF EXISTS `vw_sales_data`;
/*!50001 DROP VIEW IF EXISTS `vw_sales_data`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_sales_data` AS SELECT 
 1 AS `Order_Date`,
 1 AS `Qty`,
 1 AS `product_Name`,
 1 AS `Customer_name`,
 1 AS `Country`,
 1 AS `Freight_Cost_Per_KG`,
 1 AS `Lead_Time_days`,
 1 AS `Freight_Provider_name`,
 1 AS `Total_Freight_Cost`,
 1 AS `Total_Goods_cost`,
 1 AS `TotalSalesAmount`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_procurement`
--

/*!50001 DROP VIEW IF EXISTS `vw_procurement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_procurement` AS select `product`.`Product_ID` AS `Product_ID`,`product`.`Product_Name` AS `Product_Name`,`product`.`Purchase_Price` AS `Purchase_Price`,`supplier`.`Supplier_Name` AS `Supplier_Name`,`supplier`.`Location` AS `Location`,`supplier`.`Inbound_Lead_Time_days` AS `Inbound_Lead_Time_days` from (`product` join `supplier` on((`product`.`Supplier_ID` = `supplier`.`Supplier_ID`))) where (`supplier`.`Location` = 'UK') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_product_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_product_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_product_info` AS select `product`.`Product_ID` AS `Product_ID`,`product`.`Product_Name` AS `Product_Name`,`product`.`Weight_kg` AS `Weight_kg`,`product`.`Sales_Price` AS `Sales_Price`,`supplier`.`Supplier_Name` AS `Supplier_Name`,`supplier`.`Inbound_Lead_Time_days` AS `Inbound_Lead_Time_days`,`product_details`.`Meal_Type` AS `Meal_type`,`product_details`.`Main_Protein` AS `Main_Protein`,`product_details`.`Allergens` AS `Allergens` from ((`product` join `supplier` on((`product`.`Supplier_ID` = `supplier`.`Supplier_ID`))) join `product_details` on((`product`.`Product_ID` = `product_details`.`Product_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_sales_data`
--

/*!50001 DROP VIEW IF EXISTS `vw_sales_data`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_sales_data` AS select `sales`.`Order_Date` AS `Order_Date`,`sales`.`Qty` AS `Qty`,`product`.`Product_Name` AS `product_Name`,`customers`.`Customer_Name` AS `Customer_name`,`delivery_location`.`Country` AS `Country`,`freight_cost`.`Price_per_kg` AS `Freight_Cost_Per_KG`,`freight_cost`.`Lead_Time_days` AS `Lead_Time_days`,`freight_provider`.`Freight_Provider_Name` AS `Freight_Provider_name`,`sales`.`Total_Freight_Cost` AS `Total_Freight_Cost`,`sales`.`Total_goods_cost` AS `Total_Goods_cost`,`sales`.`TotalSalesAmount` AS `TotalSalesAmount` from (((((`sales` join `customers` on((`sales`.`CustomerID` = `customers`.`CustomerID`))) join `delivery_location` on((`customers`.`Location_ID` = `delivery_location`.`Location_id`))) join `freight_cost` on((`sales`.`FreightCostID` = `freight_cost`.`Freight_Cost_ID`))) join `freight_provider` on((`freight_cost`.`Freight_Provider_ID` = `freight_provider`.`Freight_Provider_ID`))) join `product` on((`sales`.`Product_ID` = `product`.`Product_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-01 15:29:18
