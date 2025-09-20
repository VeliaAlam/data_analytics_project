-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: localhost    Database: data_analytics_project
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `country_continent_mapping`
--

DROP TABLE IF EXISTS `country_continent_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_continent_mapping` (
  `country` text,
  `continent` text,
  `category` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_continent_mapping`
--

LOCK TABLES `country_continent_mapping` WRITE;
/*!40000 ALTER TABLE `country_continent_mapping` DISABLE KEYS */;
INSERT INTO `country_continent_mapping` VALUES ('Palau','Oceania','Top 5'),('El Salvador','North America','Bottom 5'),('Colombia','South America','Top 5'),('South Africa','Africa','84.0'),('United Arab Emirates','Asia','Top 5'),('Thailand','Asia','61.0'),('Kiribati','Oceania','Bottom 5'),('Guyana','South America','Bottom 5'),('Argentina','South America','Top 5'),('India','Asia','101.0'),('Afghanistan','Asia','Bottom 5'),('Portugal','Europe','31.0'),('Sudan','Africa','143.0'),('Egypt','Africa','Top 5'),('Iceland','Europe','Top 5'),('North Macedonia','Europe','Bottom 5'),('Honduras','North America','Bottom 5'),('Canada','North America','Top 5'),('Albania','Europe','Bottom 5'),('Nicaragua','North America','Bottom 5'),('Bolivia (Plurinational State of)','South America','Bottom 5'),('Guatemala','North America','Bottom 5'),('United Kingdom of Great Britain and Northern Ireland','Europe','10.0'),('Venezuela (Bolivarian Republic of)','South America','Bottom 5'),('Tunisia','Africa','Top 5'),('New Zealand','Oceania','Top 5'),('Antigua and Barbuda','North America','Top 5'),('Marshall Islands','Oceania','Top 5'),('Mali','Africa','Bottom 5'),('Republic of Korea','Asia','Top 5'),('Uruguay','South America','Top 5'),('Ukraine','Europe','Bottom 5'),('Switzerland','Europe','Top 5'),('Bosnia and Herzegovina','Europe','Bottom 5'),('Australia','Oceania','Top 5'),('Mexico','North America','65.0'),('Sweden','Europe','4.0'),('Brazil','South America','67.0'),('Denmark','Europe','Top 5'),('Seychelles','Africa','Top 5'),('Vanuatu','Oceania','Bottom 5'),('Tonga','Oceania','Top 5'),('Panama','North America','Top 5'),('Mauritius','Africa','Top 5'),('Hong Kong, China','Asia','Top 5'),('Iraq','Asia','98.0'),('Peru','South America','Top 5'),('United States of America','North America','Top 5'),('Indonesia','Asia','88.0'),('Algeria','Africa','Top 5'),('Chad','Africa','Bottom 5'),('Suriname','South America','Bottom 5'),('France','Europe','20.0'),('Poland','Europe','26.0'),('Somalia','Africa','Bottom 5'),('Yemen','Asia','Bottom 5'),('Norway','Europe','Top 5'),('Solomon Islands','Oceania','Bottom 5'),('Cambodia','Asia','Bottom 5'),('Paraguay','South America','Bottom 5'),('Spain','Europe','22.0'),('Papua New Guinea','Oceania','Bottom 5'),('Finland','Europe','9.0'),('Ireland','Europe','8.0'),('Japan','Asia','Top 5'),('Chile','South America','Top 5'),('Russian Federation','Asia','60.0'),('Micronesia (Federated States of)','Oceania','Bottom 5'),('Morocco','Africa','92.0'),('Saudi Arabia','Asia','28.0'),('China','Asia','62.0'),('Germany','Europe','Top 5'),('Republic of Moldova','Europe','Bottom 5'),('Singapore','Asia','Top 5'),('Pakistan','Asia','Bottom 5');
/*!40000 ALTER TABLE `country_continent_mapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-19 16:30:07
