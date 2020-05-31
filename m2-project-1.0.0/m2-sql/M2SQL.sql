-- MySQL dump 10.13  Distrib 8.0.19, for FreeBSD11.3 (amd64)
--
-- Host: localhost    Database: metin2
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acce`
--

DROP TABLE IF EXISTS `acce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acce` (
  `pid` int NOT NULL,
  `time` timestamp NOT NULL DEFAULT '2000-12-31 23:00:00',
  `x` int NOT NULL,
  `y` int NOT NULL,
  `item_vnum` int NOT NULL,
  `item_uid` int NOT NULL,
  `item_count` smallint NOT NULL,
  `item_abs_chance` smallint NOT NULL,
  `success` varbinary(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acce`
--

LOCK TABLES `acce` WRITE;
/*!40000 ALTER TABLE `acce` DISABLE KEYS */;
/*!40000 ALTER TABLE `acce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `password` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `social_id` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'contact@asikoo.xyz',
  `create_time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `status` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'OK',
  `securitycode` varchar(192) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `availDt` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `mileage` int NOT NULL DEFAULT '0',
  `cash` int NOT NULL DEFAULT '0',
  `gold_expire` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `silver_expire` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `safebox_expire` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `autoloot_expire` datetime NOT NULL DEFAULT '2030-12-31 23:59:59',
  `fish_mind_expire` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `marriage_fast_expire` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `money_drop_rate_expire` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `last_play` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `login` (`login`) USING BTREE,
  KEY `social_id` (`social_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=59536 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT IGNORE INTO `account` VALUES (1,'asikoo','*98E1AE238461FEB88F0B9F447BDA292CDFC3AA99','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-31 11:18:03'),(11,'playerone','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-25 20:54:08'),(12,'playertwo','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-29 16:57:47'),(13,'playerthree','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-25 23:10:49'),(14,'playerfour','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-24 00:10:18'),(15,'playerfive','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-26 07:05:47'),(16,'playersix','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-23 22:22:49'),(17,'playerseven','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-25 21:12:35'),(18,'playereight','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00'),(19,'playernine','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-23 17:49:45'),(20,'playerten','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-25 22:27:22'),(4,'veltor','*3F45D03FB42F67684F712E29B2EB2DB242563886','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-31 01:55:38'),(5,'kijaru','*60C3BDAA00D5CF4CA2BF8D712FBE5AF27E3CBD7D','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00'),(2,'player','*957D0549970CA499A7ACAE4F5CED8ED65FEB44B9','1234567','contact@asikoo.xyz','2001-01-01 00:00:00','OK','','2001-01-01 00:00:00',0,0,'2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2030-12-31 23:59:59','2001-01-01 00:00:00','2001-01-01 00:00:00','2001-01-01 00:00:00','2020-05-31 11:18:07');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL DEFAULT '0',
  `admin` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT IGNORE INTO `admin` VALUES (1,'192.168.0.16','dPm\"21pe6D4GKH*??45lJD');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affect`
--

DROP TABLE IF EXISTS `affect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `affect` (
  `dwPID` int unsigned NOT NULL DEFAULT '0',
  `bType` smallint unsigned NOT NULL DEFAULT '0',
  `bApplyOn` tinyint unsigned NOT NULL DEFAULT '0',
  `lApplyValue` int NOT NULL DEFAULT '0',
  `dwFlag` int unsigned NOT NULL DEFAULT '0',
  `lDuration` int NOT NULL DEFAULT '0',
  `lSPCost` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`dwPID`,`bType`,`bApplyOn`,`lApplyValue`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affect`
--

LOCK TABLES `affect` WRITE;
/*!40000 ALTER TABLE `affect` DISABLE KEYS */;
INSERT IGNORE INTO `affect` VALUES (118,540,0,0,0,1892018653,0),(118,559,64,6,0,31532243,0),(118,559,96,44,0,31532243,0),(118,559,21,17,0,31532243,0),(123,110,19,48,25,175,0),(123,111,95,28,31,26,0),(123,110,21,44,0,175,0),(118,559,6,1088,0,31532243,0),(118,559,8,392,0,31532243,0);
/*!40000 ALTER TABLE `affect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banword`
--

DROP TABLE IF EXISTS `banword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banword` (
  `word` varbinary(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banword`
--

LOCK TABLES `banword` WRITE;
/*!40000 ALTER TABLE `banword` DISABLE KEYS */;
INSERT IGNORE INTO `banword` VALUES (_binary 'ancule'),(_binary 'anculer'),(_binary 'anculez'),(_binary 'aryan'),(_binary 'asshole'),(_binary 'bastard'),(_binary 'bastards'),(_binary 'batar'),(_binary 'batard'),(_binary 'bitch'),(_binary 'bitches'),(_binary 'bitching'),(_binary 'bitchy'),(_binary 'bite'),(_binary 'boob'),(_binary 'boobie'),(_binary 'boobies'),(_binary 'boobs'),(_binary 'booby'),(_binary 'boobys'),(_binary 'branler'),(_binary 'branlete'),(_binary 'branlette'),(_binary 'branlez'),(_binary 'branller'),(_binary 'branllete'),(_binary 'branllette'),(_binary 'branllez'),(_binary 'bullshit'),(_binary 'bullshitter'),(_binary 'bullshitters'),(_binary 'bullshitting'),(_binary 'chatte'),(_binary 'chickenshit'),(_binary 'chickenshits'),(_binary 'clit'),(_binary 'clitoris'),(_binary 'cock'),(_binary 'cockhead'),(_binary 'cocks'),(_binary 'cocksuck'),(_binary 'cocksucker'),(_binary 'cocksucking'),(_binary 'conar'),(_binary 'conard'),(_binary 'conase'),(_binary 'conasse'),(_binary 'connar'),(_binary 'connard'),(_binary 'connase'),(_binary 'connasse'),(_binary 'criss'),(_binary 'cumming'),(_binary 'cunt'),(_binary 'cuntree'),(_binary 'cuntry'),(_binary 'cunts'),(_binary 'dipshit'),(_binary 'dipshits'),(_binary 'dumbfuck'),(_binary 'dumbfucks'),(_binary 'dumbshit'),(_binary 'dumbshits'),(_binary 'encule'),(_binary 'enculer'),(_binary 'enculez'),(_binary 'fag'),(_binary 'faggot'),(_binary 'faggots'),(_binary 'faggy'),(_binary 'fags'),(_binary 'fdp'),(_binary 'filsdepute'),(_binary 'fuck'),(_binary 'fucka'),(_binary 'fucke'),(_binary 'fucked'),(_binary 'fucken'),(_binary 'fucker'),(_binary 'fuckers'),(_binary 'fuckface'),(_binary 'fuckhead'),(_binary 'fuckheads'),(_binary 'fuckhed'),(_binary 'fuckin'),(_binary 'fucking'),(_binary 'fucks'),(_binary 'fuckup'),(_binary 'fuckups'),(_binary 'fukk'),(_binary 'fukka'),(_binary 'golem'),(_binary 'goniff'),(_binary 'gueule'),(_binary 'heb'),(_binary 'hebe'),(_binary 'hebes'),(_binary 'kike'),(_binary 'kikes'),(_binary 'kunt'),(_binary 'kuntree'),(_binary 'kuntry'),(_binary 'kunts'),(_binary 'levrete'),(_binary 'levrette'),(_binary 'merd'),(_binary 'merde'),(_binary 'motherfuck'),(_binary 'motherfucken'),(_binary 'motherfucker'),(_binary 'motherfuckers'),(_binary 'motherfuckin'),(_binary 'motherfucking'),(_binary 'necrofile'),(_binary 'necrophile'),(_binary 'nigga'),(_binary 'niggah'),(_binary 'niggahs'),(_binary 'niggard'),(_binary 'niggardly'),(_binary 'niggas'),(_binary 'niggaz'),(_binary 'nigger'),(_binary 'niggers'),(_binary 'pd'),(_binary 'pedofile'),(_binary 'pedophile'),(_binary 'penis'),(_binary 'petace'),(_binary 'petasse'),(_binary 'pettace'),(_binary 'pettasse'),(_binary 'piper'),(_binary 'pipeuse'),(_binary 'pipez'),(_binary 'piss'),(_binary 'porn'),(_binary 'porno'),(_binary 'pornography'),(_binary 'pouf'),(_binary 'pouff'),(_binary 'pouffiace'),(_binary 'pouffiasse'),(_binary 'poufiace'),(_binary 'poufiasse'),(_binary 'prostipute'),(_binary 'pussy'),(_binary 'putain'),(_binary 'pute'),(_binary 'putin'),(_binary 'puttain'),(_binary 'putte'),(_binary 'puttin'),(_binary 'p�d�'),(_binary 'salaud'),(_binary 'salaupe'),(_binary 'salop'),(_binary 'salope'),(_binary 'saloppe'),(_binary 'scatofile'),(_binary 'scatophile'),(_binary 'schlimazel'),(_binary 'schlimiel'),(_binary 'shit'),(_binary 'shitface'),(_binary 'shitfaced'),(_binary 'shithead'),(_binary 'shitheads'),(_binary 'shithed'),(_binary 'shits'),(_binary 'shitting'),(_binary 'shitty'),(_binary 'slut'),(_binary 'sluts'),(_binary 'slutty'),(_binary 'sodomie'),(_binary 'sodomisateur'),(_binary 'tabanac'),(_binary 'tabarnak'),(_binary 'tepu'),(_binary 'tg'),(_binary 'titties'),(_binary 'titty'),(_binary 'vagina'),(_binary 'vaginal'),(_binary 'whore'),(_binary 'whores'),(_binary 'whoring'),(_binary 'yeule'),(_binary 'zoofile'),(_binary 'zoophile');
/*!40000 ALTER TABLE `banword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_exception`
--

DROP TABLE IF EXISTS `block_exception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_exception` (
  `login` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_exception`
--

LOCK TABLES `block_exception` WRITE;
/*!40000 ALTER TABLE `block_exception` DISABLE KEYS */;
INSERT IGNORE INTO `block_exception` VALUES (1);
/*!40000 ALTER TABLE `block_exception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootlog`
--

DROP TABLE IF EXISTS `bootlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootlog` (
  `time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `hostname` char(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'UNKNOWN',
  `channel` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootlog`
--

LOCK TABLES `bootlog` WRITE;
/*!40000 ALTER TABLE `bootlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cash` varchar(255) CHARACTER SET big5 COLLATE big5_chinese_ci DEFAULT NULL,
  `prices` varchar(255) CHARACTER SET big5 COLLATE big5_chinese_ci DEFAULT NULL,
  `no` varchar(255) CHARACTER SET big5 COLLATE big5_chinese_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET big5 COLLATE big5_chinese_ci DEFAULT NULL,
  `lock` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_empire`
--

DROP TABLE IF EXISTS `change_empire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `change_empire` (
  `change_count` int NOT NULL DEFAULT '0',
  `account_id` int DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`change_count`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_empire`
--

LOCK TABLES `change_empire` WRITE;
/*!40000 ALTER TABLE `change_empire` DISABLE KEYS */;
/*!40000 ALTER TABLE `change_empire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_name`
--

DROP TABLE IF EXISTS `change_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `change_name` (
  `pid` int unsigned NOT NULL DEFAULT '0',
  `old_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `new_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `ip` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_name`
--

LOCK TABLES `change_name` WRITE;
/*!40000 ALTER TABLE `change_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `change_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command_log`
--

DROP TABLE IF EXISTS `command_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `command_log` (
  `userid` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `server` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ip` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `port` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `username` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `command` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '2001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command_log`
--

LOCK TABLES `command_log` WRITE;
/*!40000 ALTER TABLE `command_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `command_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_item`
--

DROP TABLE IF EXISTS `craft_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `craft_item` (
  `vnum` int NOT NULL,
  `count` tinyint NOT NULL,
  `lvl_min_craft` tinyint DEFAULT NULL,
  `plvl_min` tinyint DEFAULT NULL,
  `prob` tinyint NOT NULL,
  `cost` int DEFAULT NULL,
  `id_refine` int DEFAULT NULL,
  `type` enum('Arme','Armure','Bijou','ItemShop','Autre') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Arme',
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_item`
--

LOCK TABLES `craft_item` WRITE;
/*!40000 ALTER TABLE `craft_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_refine`
--

DROP TABLE IF EXISTS `craft_refine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `craft_refine` (
  `id` int NOT NULL DEFAULT '0',
  `vnum1` int DEFAULT NULL,
  `count1` tinyint DEFAULT NULL,
  `vnum2` int DEFAULT NULL,
  `count2` tinyint DEFAULT NULL,
  `vnum3` int DEFAULT NULL,
  `count3` tinyint DEFAULT NULL,
  `vnum4` int DEFAULT NULL,
  `count4` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_refine`
--

LOCK TABLES `craft_refine` WRITE;
/*!40000 ALTER TABLE `craft_refine` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_refine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cube`
--

DROP TABLE IF EXISTS `cube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cube` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `x` int unsigned NOT NULL DEFAULT '0',
  `y` int unsigned NOT NULL DEFAULT '0',
  `item_vnum` int unsigned NOT NULL DEFAULT '0',
  `item_uid` int unsigned NOT NULL DEFAULT '0',
  `item_count` int unsigned NOT NULL DEFAULT '0',
  `success` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `item_vnum` (`item_vnum`) USING BTREE,
  KEY `item_uid` (`item_uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cube`
--

LOCK TABLES `cube` WRITE;
/*!40000 ALTER TABLE `cube` DISABLE KEYS */;
/*!40000 ALTER TABLE `cube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dragon_slay_log`
--

DROP TABLE IF EXISTS `dragon_slay_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dragon_slay_log` (
  `1` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `2` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `3` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `4` timestamp NOT NULL DEFAULT '2000-12-31 23:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dragon_slay_log`
--

LOCK TABLES `dragon_slay_log` WRITE;
/*!40000 ALTER TABLE `dragon_slay_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dragon_slay_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drop_common`
--

DROP TABLE IF EXISTS `drop_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drop_common` (
  `rank` smallint unsigned DEFAULT '0',
  `item_vnum` bigint unsigned DEFAULT '0',
  `level_start` int unsigned DEFAULT '0',
  `level_end` int unsigned DEFAULT '1000',
  `prob` bigint unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drop_common`
--

LOCK TABLES `drop_common` WRITE;
/*!40000 ALTER TABLE `drop_common` DISABLE KEYS */;
INSERT IGNORE INTO `drop_common` VALUES (0,11,1,15,1600),(1,11,1,15,2100),(2,11,1,15,2400),(3,11,1,15,4000),(0,12,1,15,800),(1,12,1,15,1000),(2,12,1,15,1200),(3,12,1,15,2000),(0,20,1,15,4000),(1,20,1,15,5200),(2,20,1,15,6000),(3,20,1,15,10000),(0,21,1,15,1600),(1,21,1,15,2100),(2,21,1,15,2400),(3,21,1,15,4000),(0,22,1,15,800),(1,22,1,15,1000),(2,22,1,15,1200),(3,22,1,15,2000),(0,30,1,15,4000),(1,30,1,15,5200),(2,30,1,15,6000),(3,30,1,15,10000),(0,31,1,15,1600),(1,31,1,15,2100),(2,31,1,15,2400),(3,31,1,15,4000),(0,32,1,15,800),(1,32,1,15,1000),(2,32,1,15,1200),(3,32,1,15,2000),(0,40,5,15,4000),(1,40,5,15,5200),(2,40,5,15,6000),(3,40,5,15,10000),(0,41,5,15,1600),(1,41,5,15,2100),(2,41,5,15,2400),(3,41,5,15,4000),(0,42,5,15,800),(1,42,5,15,1000),(2,42,5,15,1200),(3,42,5,15,2000),(0,50,5,15,2000),(1,50,5,15,2600),(2,50,5,15,3000),(3,50,5,15,5000),(0,51,5,15,800),(1,51,5,15,1000),(2,51,5,15,1200),(3,51,5,15,2000),(0,3000,1,15,4000),(1,3000,1,15,5200),(2,3000,1,15,6000),(3,3000,1,15,10000),(0,3001,1,15,1600),(1,3001,1,15,2100),(2,3001,1,15,2400),(3,3001,1,15,4000),(0,3002,1,15,800),(1,3002,1,15,1000),(2,3002,1,15,1200),(3,3002,1,15,2000),(0,3010,1,15,4000),(1,3010,1,15,5200),(2,3010,1,15,6000),(3,3010,1,15,10000),(0,3011,1,15,1600),(1,3011,1,15,2100),(2,3011,1,15,2400),(3,3011,1,15,4000),(0,3012,1,15,800),(1,3012,1,15,1000),(2,3012,1,15,1200),(3,3012,1,15,2000),(0,3020,1,15,4000),(1,3020,1,15,5200),(2,3020,1,15,6000),(3,3020,1,15,10000),(0,3021,1,15,1600),(1,3021,1,15,2100),(2,3021,1,15,2400),(3,3021,1,15,4000),(0,3022,1,15,800),(1,3022,1,15,1000),(2,3022,1,15,1200),(3,3022,1,15,2000),(0,3030,5,15,4000),(1,3030,5,15,5200),(2,3030,5,15,6000),(3,3030,5,15,10000),(0,3031,5,15,1600),(1,3031,5,15,2100),(2,3031,5,15,2400),(3,3031,5,15,4000),(0,3032,5,15,800),(1,3032,5,15,1000),(2,3032,5,15,1200),(3,3032,5,15,2000),(0,3040,5,15,2000),(1,3040,5,15,2600),(2,3040,5,15,3000),(3,3040,5,15,5000),(0,3041,5,15,800),(1,3041,5,15,1000),(2,3041,5,15,1200),(3,3041,5,15,2000),(0,3042,5,15,200),(1,3042,5,15,300),(2,3042,5,15,300),(3,3042,5,15,500),(0,1001,1,15,1600),(1,1001,1,15,2100),(2,1001,1,15,2400),(3,1001,1,15,4000),(0,1002,1,15,800),(1,1002,1,15,1000),(2,1002,1,15,1200),(3,1002,1,15,2000),(0,4000,1,15,4000),(1,4000,1,15,5200),(2,4000,1,15,6000),(3,4000,1,15,10000),(0,4001,1,15,1600),(1,4001,1,15,2100),(2,4001,1,15,2400),(3,4001,1,15,4000),(0,4002,1,15,800),(1,4002,1,15,1000),(2,4002,1,15,1200),(3,4002,1,15,2000),(0,1010,1,15,4000),(1,1010,1,15,5200),(2,1010,1,15,6000),(3,1010,1,15,10000),(0,1011,1,15,1600),(1,1011,1,15,2100),(2,1011,1,15,2400),(3,1011,1,15,4000),(0,1012,1,15,800),(1,1012,1,15,1000),(2,1012,1,15,1200),(3,1012,1,15,2000),(0,4010,5,15,4000),(1,4010,5,15,5200),(2,4010,5,15,6000),(3,4010,5,15,10000),(0,4011,5,15,1600),(1,4011,5,15,2100),(2,4011,5,15,2400),(3,4011,5,15,4000),(0,4012,5,15,800),(1,4012,5,15,1000),(2,4012,5,15,1200),(3,4012,5,15,2000),(0,1020,5,15,2000),(1,1020,5,15,2600),(2,1020,5,15,3000),(3,1020,5,15,5000),(0,1021,5,15,800),(1,1021,5,15,1000),(2,1021,5,15,1200),(3,1021,5,15,2000),(0,2000,1,15,4000),(1,2000,1,15,5200),(2,2000,1,15,6000),(3,2000,1,15,10000),(0,2001,1,15,1600),(1,2001,1,15,2100),(2,2001,1,15,2400),(3,2001,1,15,4000),(0,2002,1,15,800),(1,2002,1,15,1000),(2,2002,1,15,1200),(3,2002,1,15,2000),(0,2010,1,15,4000),(1,2010,1,15,5200),(2,2010,1,15,6000),(3,2010,1,15,10000),(0,2011,1,15,1600),(1,2011,1,15,2100),(2,2011,1,15,2400),(3,2011,1,15,4000),(0,2012,1,15,800),(1,2012,1,15,1000),(2,2012,1,15,1200),(3,2012,1,15,2000),(0,2020,1,15,4000),(1,2020,1,15,5200),(2,2020,1,15,6000),(3,2020,1,15,10000),(0,2021,1,15,1600),(1,2021,1,15,2100),(2,2021,1,15,2400),(3,2021,1,15,4000),(0,2022,1,15,800),(1,2022,1,15,1000),(2,2022,1,15,1200),(3,2022,1,15,2000),(0,2030,5,15,4000),(1,2030,5,15,5200),(2,2030,5,15,6000),(3,2030,5,15,10000),(0,2031,5,15,1600),(1,2031,5,15,2100),(2,2031,5,15,2400),(3,2031,5,15,4000),(0,2032,5,15,800),(1,2032,5,15,1000),(2,2032,5,15,1200),(3,2032,5,15,2000),(0,2040,5,15,2000),(1,2040,5,15,2600),(2,2040,5,15,3000),(3,2040,5,15,5000),(0,2041,5,15,800),(1,2041,5,15,1000),(2,2041,5,15,1200),(3,2041,5,15,2000),(0,2042,5,15,200),(1,2042,5,15,300),(2,2042,5,15,300),(3,2042,5,15,500),(0,5000,1,15,4000),(1,5000,1,15,5200),(2,5000,1,15,6000),(3,5000,1,15,10000),(0,5001,1,15,1600),(1,5001,1,15,2100),(2,5001,1,15,2400),(3,5001,1,15,4000),(0,5002,1,15,800),(1,5002,1,15,1000),(2,5002,1,15,1200),(3,5002,1,15,2000),(0,5010,1,15,4000),(1,5010,1,15,5200),(2,5010,1,15,6000),(3,5010,1,15,10000),(0,5011,1,15,1600),(1,5011,1,15,2100),(2,5011,1,15,2400),(3,5011,1,15,4000),(0,5012,1,15,800),(1,5012,1,15,1000),(2,5012,1,15,1200),(3,5012,1,15,2000),(0,5020,5,15,2000),(1,5020,5,15,2600),(2,5020,5,15,3000),(3,5020,5,15,5000),(0,5021,5,15,800),(1,5021,5,15,1000),(2,5021,5,15,1200),(3,5021,5,15,2000),(0,5022,5,15,200),(1,5022,5,15,300),(2,5022,5,15,300),(3,5022,5,15,500),(0,7001,1,15,1600),(1,7001,1,15,2100),(2,7001,1,15,2400),(3,7001,1,15,4000),(0,7002,1,15,800),(1,7002,1,15,1000),(2,7002,1,15,1200),(3,7002,1,15,2000),(0,7010,1,15,4000),(1,7010,1,15,5200),(2,7010,1,15,6000),(3,7010,1,15,10000),(0,7011,1,15,1600),(1,7011,1,15,2100),(2,7011,1,15,2400),(3,7011,1,15,4000),(0,7012,1,15,800),(1,7012,1,15,1000),(2,7012,1,15,1200),(3,7012,1,15,2000),(0,7020,1,15,4000),(1,7020,1,15,5200),(2,7020,1,15,6000),(3,7020,1,15,10000),(0,7021,1,15,1600),(1,7021,1,15,2100),(2,7021,1,15,2400),(3,7021,1,15,4000),(0,7022,1,15,800),(1,7022,1,15,1000),(2,7022,1,15,1200),(3,7022,1,15,2000),(0,7030,1,15,4000),(1,7030,1,15,5200),(2,7030,1,15,6000),(3,7030,1,15,10000),(0,7031,1,15,1600),(1,7031,1,15,2100),(2,7031,1,15,2400),(3,7031,1,15,4000),(0,7032,1,15,800),(1,7032,1,15,1000),(2,7032,1,15,1200),(3,7032,1,15,2000),(0,7040,5,15,2000),(1,7040,5,15,2600),(2,7040,5,15,3000),(3,7040,5,15,5000),(0,7041,5,15,800),(1,7041,5,15,1000),(2,7041,5,15,1200),(3,7041,5,15,2000),(0,11200,1,15,1600),(1,11200,1,15,2100),(2,11200,1,15,2400),(3,11200,1,15,4000),(0,11201,1,15,300),(1,11201,1,15,400),(2,11201,1,15,400),(3,11201,1,15,700),(0,11202,1,15,200),(1,11202,1,15,200),(2,11202,1,15,200),(3,11202,1,15,400),(0,11210,5,15,1600),(1,11210,5,15,2100),(2,11210,5,15,2400),(3,11210,5,15,4000),(0,11211,5,15,300),(1,11211,5,15,400),(2,11211,5,15,400),(3,11211,5,15,700),(0,11212,5,15,200),(1,11212,5,15,200),(2,11212,5,15,200),(3,11212,5,15,400),(0,11220,10,20,1600),(1,11220,10,20,2100),(2,11220,10,20,2400),(3,11220,10,20,4000),(0,11221,10,20,300),(1,11221,10,20,400),(2,11221,10,20,400),(3,11221,10,20,700),(0,11222,10,20,200),(1,11222,10,20,200),(2,11222,10,20,200),(3,11222,10,20,400),(0,11400,1,15,1600),(1,11400,1,15,2100),(2,11400,1,15,2400),(3,11400,1,15,4000),(0,11401,1,15,300),(1,11401,1,15,400),(2,11401,1,15,400),(3,11401,1,15,700),(0,11402,1,15,200),(1,11402,1,15,200),(2,11402,1,15,200),(3,11402,1,15,400),(0,11410,5,15,1600),(1,11410,5,15,2100),(2,11410,5,15,2400),(3,11410,5,15,4000),(0,11411,5,15,300),(1,11411,5,15,400),(2,11411,5,15,400),(3,11411,5,15,700),(0,11412,5,15,200),(1,11412,5,15,200),(2,11412,5,15,200),(3,11412,5,15,400),(0,11420,10,20,1600),(1,11420,10,20,2100),(2,11420,10,20,2400),(3,11420,10,20,4000),(0,11421,10,20,300),(1,11421,10,20,400),(2,11421,10,20,400),(3,11421,10,20,700),(0,11422,10,20,200),(1,11422,10,20,200),(2,11422,10,20,200),(3,11422,10,20,400),(0,11600,1,15,1600),(1,11600,1,15,2100),(2,11600,1,15,2400),(3,11600,1,15,4000),(0,11601,1,15,300),(1,11601,1,15,400),(2,11601,1,15,400),(3,11601,1,15,700),(0,11602,1,15,200),(1,11602,1,15,200),(2,11602,1,15,200),(3,11602,1,15,400),(0,11610,5,15,1600),(1,11610,5,15,2100),(2,11610,5,15,2400),(3,11610,5,15,4000),(0,11611,5,15,300),(1,11611,5,15,400),(2,11611,5,15,400),(3,11611,5,15,700),(0,11612,5,15,200),(1,11612,5,15,200),(2,11612,5,15,200),(3,11612,5,15,400),(0,11620,10,20,1600),(1,11620,10,20,2100),(2,11620,10,20,2400),(3,11620,10,20,4000),(0,11621,10,20,300),(1,11621,10,20,400),(2,11621,10,20,400),(3,11621,10,20,700),(0,11622,10,20,200),(1,11622,10,20,200),(2,11622,10,20,200),(3,11622,10,20,400),(0,11800,1,15,1600),(1,11800,1,15,2100),(2,11800,1,15,2400),(3,11800,1,15,4000),(0,11801,1,15,300),(1,11801,1,15,400),(2,11801,1,15,400),(3,11801,1,15,700),(0,11802,1,15,200),(1,11802,1,15,200),(2,11802,1,15,200),(3,11802,1,15,400),(0,11810,5,15,1600),(1,11810,5,15,2100),(2,11810,5,15,2400),(3,11810,5,15,4000),(0,11811,5,15,300),(1,11811,5,15,400),(2,11811,5,15,400),(3,11811,5,15,700),(0,11812,5,15,200),(1,11812,5,15,200),(2,11812,5,15,200),(3,11812,5,15,400),(0,11820,10,20,1600),(1,11820,10,20,2100),(2,11820,10,20,2400),(3,11820,10,20,4000),(0,11821,10,20,300),(1,11821,10,20,400),(2,11821,10,20,400),(3,11821,10,20,700),(0,11822,10,20,200),(1,11822,10,20,200),(2,11822,10,20,200),(3,11822,10,20,400),(0,14000,5,20,100),(1,14000,5,20,0),(2,14000,5,20,0),(3,14000,5,20,100),(0,14002,5,20,0),(1,14002,5,20,0),(2,14002,5,20,0),(3,14002,5,20,0),(0,14020,5,20,100),(1,14020,5,20,0),(2,14020,5,20,0),(3,14020,5,20,100),(0,14021,5,20,0),(1,14021,5,20,0),(2,14021,5,20,0),(3,14021,5,20,0),(0,14022,5,20,0),(1,14022,5,20,0),(2,14022,5,20,0),(3,14022,5,20,0),(0,14040,5,20,100),(1,14040,5,20,100),(2,14040,5,20,100),(3,14040,5,20,200),(0,14041,5,20,100),(1,14041,5,20,0),(2,14041,5,20,0),(3,14041,5,20,100),(0,14042,5,20,0),(1,14042,5,20,0),(2,14042,5,20,0),(3,14042,5,20,100),(0,14060,5,20,100),(1,14060,5,20,100),(2,14060,5,20,0),(3,14060,5,20,100),(0,14061,5,20,0),(1,14061,5,20,0),(2,14061,5,20,0),(3,14061,5,20,0),(0,14062,5,20,0),(1,14062,5,20,0),(2,14062,5,20,0),(3,14062,5,20,0),(0,15000,5,20,800),(1,15000,5,20,400),(2,15000,5,20,500),(3,15000,5,20,800),(0,15002,5,20,0),(1,15002,5,20,0),(2,15002,5,20,0),(3,15002,5,20,0),(0,15020,5,20,800),(1,15020,5,20,400),(2,15020,5,20,500),(3,15020,5,20,800),(0,15021,5,20,100),(1,15021,5,20,100),(2,15021,5,20,100),(3,15021,5,20,100),(0,15022,5,20,0),(1,15022,5,20,0),(2,15022,5,20,0),(3,15022,5,20,0),(0,15040,5,20,200),(1,15040,5,20,100),(2,15040,5,20,100),(3,15040,5,20,200),(0,15041,5,20,0),(1,15041,5,20,0),(2,15041,5,20,0),(3,15041,5,20,0),(0,15042,5,20,0),(1,15042,5,20,0),(2,15042,5,20,0),(3,15042,5,20,0),(0,15060,5,20,200),(1,15060,5,20,100),(2,15060,5,20,100),(3,15060,5,20,200),(0,15061,5,20,0),(1,15061,5,20,0),(2,15061,5,20,0),(3,15061,5,20,0),(0,15062,5,20,0),(1,15062,5,20,0),(2,15062,5,20,0),(3,15062,5,20,0),(0,17000,5,20,800),(1,17000,5,20,400),(2,17000,5,20,500),(3,17000,5,20,800),(0,17002,5,20,0),(1,17002,5,20,0),(2,17002,5,20,0),(3,17002,5,20,0),(0,17020,5,20,800),(1,17020,5,20,400),(2,17020,5,20,500),(3,17020,5,20,800),(0,17021,5,20,100),(1,17021,5,20,100),(2,17021,5,20,100),(3,17021,5,20,100),(0,17022,5,20,0),(1,17022,5,20,0),(2,17022,5,20,0),(3,17022,5,20,0),(0,17040,5,20,200),(1,17040,5,20,100),(2,17040,5,20,100),(3,17040,5,20,200),(0,17041,5,20,0),(1,17041,5,20,0),(2,17041,5,20,0),(3,17041,5,20,0),(0,17042,5,20,0),(1,17042,5,20,0),(2,17042,5,20,0),(3,17042,5,20,0),(0,17060,5,20,200),(1,17060,5,20,100),(2,17060,5,20,100),(3,17060,5,20,200),(0,17061,5,20,0),(1,17061,5,20,0),(2,17061,5,20,0),(3,17061,5,20,0),(0,17062,5,20,0),(1,17062,5,20,0),(2,17062,5,20,0),(3,17062,5,20,0),(0,16000,5,20,800),(1,16000,5,20,400),(2,16000,5,20,500),(3,16000,5,20,800),(0,16002,5,20,0),(1,16002,5,20,0),(2,16002,5,20,0),(3,16002,5,20,0),(0,16020,5,20,800),(1,16020,5,20,400),(2,16020,5,20,500),(3,16020,5,20,800),(0,16021,5,20,100),(1,16021,5,20,100),(2,16021,5,20,100),(3,16021,5,20,100),(0,16022,5,20,0),(1,16022,5,20,0),(2,16022,5,20,0),(3,16022,5,20,0),(0,16040,5,20,200),(1,16040,5,20,100),(2,16040,5,20,100),(3,16040,5,20,200),(0,16041,5,20,0),(1,16041,5,20,0),(2,16041,5,20,0),(3,16041,5,20,0),(0,16042,5,20,0),(1,16042,5,20,0),(2,16042,5,20,0),(3,16042,5,20,0),(0,16060,5,20,200),(1,16060,5,20,100),(2,16060,5,20,100),(3,16060,5,20,200),(0,16061,5,20,0),(1,16061,5,20,0),(2,16061,5,20,0),(3,16061,5,20,0),(0,16062,5,20,0),(1,16062,5,20,0),(2,16062,5,20,0),(3,16062,5,20,0),(0,60,15,35,1100),(1,60,15,35,1000),(2,60,15,35,1200),(3,60,15,35,1600),(0,61,15,35,200),(1,61,15,35,200),(2,61,15,35,200),(3,61,15,35,300),(0,62,15,35,100),(1,62,15,35,100),(2,62,15,35,100),(3,62,15,35,200),(0,70,20,35,1100),(1,70,20,35,1000),(2,70,20,35,1200),(3,70,20,35,1600),(0,71,20,35,200),(1,71,20,35,200),(2,71,20,35,200),(3,71,20,35,300),(0,72,20,35,100),(1,72,20,35,100),(2,72,20,35,100),(3,72,20,35,200),(0,80,20,35,1100),(1,80,20,35,1000),(2,80,20,35,1200),(3,80,20,35,1600),(0,81,20,35,200),(1,81,20,35,200),(2,81,20,35,200),(3,81,20,35,300),(0,82,20,35,100),(1,82,20,35,100),(2,82,20,35,100),(3,82,20,35,200),(0,90,20,35,800),(1,90,20,35,800),(2,90,20,35,900),(3,90,20,35,1200),(0,91,20,35,200),(1,91,20,35,200),(2,91,20,35,200),(3,91,20,35,200),(0,92,20,35,100),(1,92,20,35,100),(2,92,20,35,100),(3,92,20,35,100),(0,4020,15,35,1100),(1,4020,15,35,1000),(2,4020,15,35,1200),(3,4020,15,35,1600),(0,4021,15,35,200),(1,4021,15,35,200),(2,4021,15,35,200),(3,4021,15,35,300),(0,4022,15,35,100),(1,4022,15,35,100),(2,4022,15,35,100),(3,4022,15,35,200),(0,1030,20,35,1100),(1,1030,20,35,1000),(2,1030,20,35,1200),(3,1030,20,35,1600),(0,1031,20,35,200),(1,1031,20,35,200),(2,1031,20,35,200),(3,1031,20,35,300),(0,1032,20,35,100),(1,1032,20,35,100),(2,1032,20,35,100),(3,1032,20,35,200),(0,1040,20,35,1100),(1,1040,20,35,1000),(2,1040,20,35,1200),(3,1040,20,35,1600),(0,1041,20,35,200),(1,1041,20,35,200),(2,1041,20,35,200),(3,1041,20,35,300),(0,1042,20,35,100),(1,1042,20,35,100),(2,1042,20,35,100),(3,1042,20,35,200),(0,1050,20,35,800),(1,1050,20,35,800),(2,1050,20,35,900),(3,1050,20,35,1200),(0,1051,20,35,200),(1,1051,20,35,200),(2,1051,20,35,200),(3,1051,20,35,200),(0,1052,20,35,100),(1,1052,20,35,100),(2,1052,20,35,100),(3,1052,20,35,100),(0,3050,15,35,1100),(1,3050,15,35,1000),(2,3050,15,35,1200),(3,3050,15,35,1600),(0,3051,15,35,200),(1,3051,15,35,200),(2,3051,15,35,200),(3,3051,15,35,300),(0,3052,15,35,100),(1,3052,15,35,100),(2,3052,15,35,100),(3,3052,15,35,200),(0,3060,20,35,1100),(1,3060,20,35,1000),(2,3060,20,35,1200),(3,3060,20,35,1600),(0,3061,20,35,200),(1,3061,20,35,200),(2,3061,20,35,200),(3,3061,20,35,300),(0,3062,20,35,100),(1,3062,20,35,100),(2,3062,20,35,100),(3,3062,20,35,200),(0,3070,20,35,1100),(1,3070,20,35,1000),(2,3070,20,35,1200),(3,3070,20,35,1600),(0,3071,20,35,200),(1,3071,20,35,200),(2,3071,20,35,200),(3,3071,20,35,300),(0,3072,20,35,100),(1,3072,20,35,100),(2,3072,20,35,100),(3,3072,20,35,200),(0,3080,20,35,800),(1,3080,20,35,800),(2,3080,20,35,900),(3,3080,20,35,1200),(0,3081,20,35,200),(1,3081,20,35,200),(2,3081,20,35,200),(3,3081,20,35,200),(0,3082,20,35,100),(1,3082,20,35,100),(2,3082,20,35,100),(3,3082,20,35,100),(0,2050,15,35,1100),(1,2050,15,35,1000),(2,2050,15,35,1200),(3,2050,15,35,1600),(0,2051,15,35,200),(1,2051,15,35,200),(2,2051,15,35,200),(3,2051,15,35,300),(0,2052,15,35,100),(1,2052,15,35,100),(2,2052,15,35,100),(3,2052,15,35,200),(0,2060,20,35,1100),(1,2060,20,35,1000),(2,2060,20,35,1200),(3,2060,20,35,1600),(0,2061,20,35,200),(1,2061,20,35,200),(2,2061,20,35,200),(3,2061,20,35,300),(0,2062,20,35,100),(1,2062,20,35,100),(2,2062,20,35,100),(3,2062,20,35,200),(0,2070,20,35,1100),(1,2070,20,35,1000),(2,2070,20,35,1200),(3,2070,20,35,1600),(0,2071,20,35,200),(1,2071,20,35,200),(2,2071,20,35,200),(3,2071,20,35,300),(0,2072,20,35,100),(1,2072,20,35,100),(2,2072,20,35,100),(3,2072,20,35,200),(0,2080,20,35,800),(1,2080,20,35,800),(2,2080,20,35,900),(3,2080,20,35,1200),(0,2081,20,35,200),(1,2081,20,35,200),(2,2081,20,35,200),(3,2081,20,35,200),(0,2082,20,35,100),(1,2082,20,35,100),(2,2082,20,35,100),(3,2082,20,35,100),(0,5030,5,35,1100),(1,5030,5,35,1000),(2,5030,5,35,1200),(3,5030,5,35,1600),(0,5031,5,35,200),(1,5031,5,35,200),(2,5031,5,35,200),(3,5031,5,35,300),(0,5032,5,35,100),(1,5032,5,35,100),(2,5032,5,35,100),(3,5032,5,35,200),(0,5040,15,35,1100),(1,5040,15,35,1000),(2,5040,15,35,1200),(3,5040,15,35,1600),(0,5041,15,35,200),(1,5041,15,35,200),(2,5041,15,35,200),(3,5041,15,35,300),(0,5042,15,35,100),(1,5042,15,35,100),(2,5042,15,35,100),(3,5042,15,35,200),(0,5050,20,35,800),(1,5050,20,35,800),(2,5050,20,35,900),(3,5050,20,35,1200),(0,5051,20,35,200),(1,5051,20,35,200),(2,5051,20,35,200),(3,5051,20,35,200),(0,5052,20,35,100),(1,5052,20,35,100),(2,5052,20,35,100),(3,5052,20,35,100),(0,7050,15,35,1100),(1,7050,15,35,1000),(2,7050,15,35,1200),(3,7050,15,35,1600),(0,7051,15,35,200),(1,7051,15,35,200),(2,7051,15,35,200),(3,7051,15,35,300),(0,7052,15,35,100),(1,7052,15,35,100),(2,7052,15,35,100),(3,7052,15,35,200),(0,7060,20,35,1100),(1,7060,20,35,1000),(2,7060,20,35,1200),(3,7060,20,35,1600),(0,7061,20,35,200),(1,7061,20,35,200),(2,7061,20,35,200),(3,7061,20,35,300),(0,7062,20,35,100),(1,7062,20,35,100),(2,7062,20,35,100),(3,7062,20,35,200),(0,7070,20,35,1100),(1,7070,20,35,1000),(2,7070,20,35,1200),(3,7070,20,35,1600),(0,7071,20,35,200),(1,7071,20,35,200),(2,7071,20,35,200),(3,7071,20,35,300),(0,7072,20,35,100),(1,7072,20,35,100),(2,7072,20,35,100),(3,7072,20,35,200),(0,7080,20,35,800),(1,7080,20,35,800),(2,7080,20,35,900),(3,7080,20,35,1200),(0,7081,20,35,200),(1,7081,20,35,200),(2,7081,20,35,200),(3,7081,20,35,200),(0,7082,20,35,100),(1,7082,20,35,100),(2,7082,20,35,100),(3,7082,20,35,100),(0,11230,15,40,500),(1,11230,15,40,1000),(2,11230,15,40,1300),(3,11230,15,40,1900),(0,11231,15,40,100),(1,11231,15,40,200),(2,11231,15,40,200),(3,11231,15,40,300),(0,11232,15,40,100),(1,11232,15,40,100),(2,11232,15,40,100),(3,11232,15,40,200),(0,11240,20,40,500),(1,11240,20,40,1000),(2,11240,20,40,1300),(3,11240,20,40,1900),(0,11241,20,40,100),(1,11241,20,40,200),(2,11241,20,40,200),(3,11241,20,40,300),(0,11242,20,40,100),(1,11242,20,40,100),(2,11242,20,40,100),(3,11242,20,40,200),(0,11250,20,40,100),(1,11250,20,40,200),(2,11250,20,40,300),(3,11250,20,40,500),(0,11251,20,40,0),(1,11251,20,40,100),(2,11251,20,40,100),(3,11251,20,40,100),(0,11252,20,40,0),(1,11252,20,40,0),(2,11252,20,40,0),(3,11252,20,40,100),(0,11430,15,40,500),(1,11430,15,40,1000),(2,11430,15,40,1300),(3,11430,15,40,1900),(0,11431,15,40,100),(1,11431,15,40,200),(2,11431,15,40,200),(3,11431,15,40,300),(0,11432,15,40,100),(1,11432,15,40,100),(2,11432,15,40,100),(3,11432,15,40,200),(0,11440,20,40,500),(1,11440,20,40,1000),(2,11440,20,40,1300),(3,11440,20,40,1900),(0,11441,20,40,100),(1,11441,20,40,200),(2,11441,20,40,200),(3,11441,20,40,300),(0,11442,20,40,100),(1,11442,20,40,100),(2,11442,20,40,100),(3,11442,20,40,200),(0,11450,20,40,100),(1,11450,20,40,200),(2,11450,20,40,300),(3,11450,20,40,500),(0,11451,20,40,0),(1,11451,20,40,100),(2,11451,20,40,100),(3,11451,20,40,100),(0,11452,20,40,0),(1,11452,20,40,0),(2,11452,20,40,0),(3,11452,20,40,100),(0,11630,15,40,500),(1,11630,15,40,1000),(2,11630,15,40,1300),(3,11630,15,40,1900),(0,11631,15,40,100),(1,11631,15,40,200),(2,11631,15,40,200),(3,11631,15,40,300),(0,11632,15,40,100),(1,11632,15,40,100),(2,11632,15,40,100),(3,11632,15,40,200),(0,11640,20,40,500),(1,11640,20,40,1000),(2,11640,20,40,1300),(3,11640,20,40,1900),(0,11641,20,40,100),(1,11641,20,40,200),(2,11641,20,40,200),(3,11641,20,40,300),(0,11642,20,40,100),(1,11642,20,40,100),(2,11642,20,40,100),(3,11642,20,40,200),(0,11650,20,40,100),(1,11650,20,40,200),(2,11650,20,40,300),(3,11650,20,40,500),(0,11651,20,40,0),(1,11651,20,40,100),(2,11651,20,40,100),(3,11651,20,40,100),(0,11652,20,40,0),(1,11652,20,40,0),(2,11652,20,40,0),(3,11652,20,40,100),(0,11830,15,40,500),(1,11830,15,40,1000),(2,11830,15,40,1300),(3,11830,15,40,1900),(0,11831,15,40,100),(1,11831,15,40,200),(2,11831,15,40,200),(3,11831,15,40,300),(0,11832,15,40,100),(1,11832,15,40,100),(2,11832,15,40,100),(3,11832,15,40,200),(0,11840,20,40,500),(1,11840,20,40,1000),(2,11840,20,40,1300),(3,11840,20,40,1900),(0,11841,20,40,100),(1,11841,20,40,200),(2,11841,20,40,200),(3,11841,20,40,300),(0,11842,20,40,100),(1,11842,20,40,100),(2,11842,20,40,100),(3,11842,20,40,200),(0,11850,20,40,100),(1,11850,20,40,200),(2,11850,20,40,300),(3,11850,20,40,500),(0,11851,20,40,0),(1,11851,20,40,100),(2,11851,20,40,100),(3,11851,20,40,100),(0,11852,20,40,0),(1,11852,20,40,0),(2,11852,20,40,0),(3,11852,20,40,100),(0,14080,15,40,0),(1,14080,15,40,0),(2,14080,15,40,0),(3,14080,15,40,0),(0,14081,15,40,0),(1,14081,15,40,0),(2,14081,15,40,0),(3,14081,15,40,0),(0,14082,15,40,0),(1,14082,15,40,0),(2,14082,15,40,0),(3,14082,15,40,0),(0,14100,15,40,0),(1,14100,15,40,0),(2,14100,15,40,0),(3,14100,15,40,0),(0,14101,15,40,0),(1,14101,15,40,0),(2,14101,15,40,0),(3,14101,15,40,0),(0,14102,15,40,0),(1,14102,15,40,0),(2,14102,15,40,0),(3,14102,15,40,0),(0,14120,20,40,0),(1,14120,20,40,0),(2,14120,20,40,0),(3,14120,20,40,0),(0,14121,20,50,0),(1,14121,20,50,0),(2,14121,20,50,0),(3,14121,20,50,0),(0,14122,20,50,0),(1,14122,20,50,0),(2,14122,20,50,0),(3,14122,20,50,0),(0,14140,20,50,0),(1,14140,20,50,0),(2,14140,20,50,0),(3,14140,20,50,0),(0,14141,20,50,0),(1,14141,20,50,0),(2,14141,20,50,0),(3,14141,20,50,0),(0,14142,20,50,0),(1,14142,20,50,0),(2,14142,20,50,0),(3,14142,20,50,0),(0,15080,15,40,200),(1,15080,15,40,200),(2,15080,15,40,200),(3,15080,15,40,400),(0,15081,15,40,0),(1,15081,15,40,100),(2,15081,15,40,100),(3,15081,15,40,100),(0,15082,15,40,0),(1,15082,15,40,0),(2,15082,15,40,0),(3,15082,15,40,0),(0,15100,15,40,200),(1,15100,15,40,200),(2,15100,15,40,200),(3,15100,15,40,400),(0,15101,15,40,0),(1,15101,15,40,100),(2,15101,15,40,100),(3,15101,15,40,100),(0,15102,15,40,0),(1,15102,15,40,0),(2,15102,15,40,0),(3,15102,15,40,0),(0,15120,20,40,100),(1,15120,20,40,200),(2,15120,20,40,200),(3,15120,20,40,200),(0,15121,20,50,0),(1,15121,20,50,0),(2,15121,20,50,0),(3,15121,20,50,100),(0,15122,20,50,0),(1,15122,20,50,0),(2,15122,20,50,0),(3,15122,20,50,0),(0,15140,20,50,100),(1,15140,20,50,200),(2,15140,20,50,200),(3,15140,20,50,200),(0,15141,20,50,0),(1,15141,20,50,0),(2,15141,20,50,0),(3,15141,20,50,100),(0,15142,20,50,0),(1,15142,20,50,0),(2,15142,20,50,0),(3,15142,20,50,0),(0,17080,15,40,200),(1,17080,15,40,200),(2,17080,15,40,200),(3,17080,15,40,400),(0,17081,15,40,0),(1,17081,15,40,100),(2,17081,15,40,100),(3,17081,15,40,100),(0,17082,15,40,0),(1,17082,15,40,0),(2,17082,15,40,0),(3,17082,15,40,0),(0,17100,15,40,200),(1,17100,15,40,200),(2,17100,15,40,200),(3,17100,15,40,400),(0,17101,15,40,0),(1,17101,15,40,100),(2,17101,15,40,100),(3,17101,15,40,100),(0,17102,15,40,0),(1,17102,15,40,0),(2,17102,15,40,0),(3,17102,15,40,0),(0,17120,20,40,100),(1,17120,20,40,200),(2,17120,20,40,200),(3,17120,20,40,200),(0,17121,20,50,0),(1,17121,20,50,0),(2,17121,20,50,0),(3,17121,20,50,100),(0,17122,20,50,0),(1,17122,20,50,0),(2,17122,20,50,0),(3,17122,20,50,0),(0,17140,20,50,100),(1,17140,20,50,200),(2,17140,20,50,200),(3,17140,20,50,200),(0,17141,20,50,0),(1,17141,20,50,0),(2,17141,20,50,0),(3,17141,20,50,100),(0,17142,20,50,0),(1,17142,20,50,0),(2,17142,20,50,0),(3,17142,20,50,0),(0,16080,15,40,200),(1,16080,15,40,200),(2,16080,15,40,200),(3,16080,15,40,400),(0,16081,15,40,0),(1,16081,15,40,100),(2,16081,15,40,100),(3,16081,15,40,100),(0,16082,15,40,0),(1,16082,15,40,0),(2,16082,15,40,0),(3,16082,15,40,0),(0,16100,15,40,200),(1,16100,15,40,200),(2,16100,15,40,200),(3,16100,15,40,400),(0,16101,15,40,0),(1,16101,15,40,100),(2,16101,15,40,100),(3,16101,15,40,100),(0,16102,15,40,0),(1,16102,15,40,0),(2,16102,15,40,0),(3,16102,15,40,0),(0,16120,20,40,100),(1,16120,20,40,200),(2,16120,20,40,200),(3,16120,20,40,200),(0,16121,20,50,0),(1,16121,20,50,0),(2,16121,20,50,0),(3,16121,20,50,100),(0,16122,20,50,0),(1,16122,20,50,0),(2,16122,20,50,0),(3,16122,20,50,0),(0,16140,20,50,100),(1,16140,20,50,200),(2,16140,20,50,200),(3,16140,20,50,200),(0,16141,20,50,0),(1,16141,20,50,0),(2,16141,20,50,0),(3,16141,20,50,100),(0,16142,20,50,0),(1,16142,20,50,0),(2,16142,20,50,0),(3,16142,20,50,0),(1,100,45,99,300),(2,100,45,70,500),(3,100,40,99,1300),(0,12343,1,21,100),(1,101,45,99,100),(2,101,45,70,100),(3,101,40,99,300),(0,12483,1,21,100),(1,102,45,99,0),(2,102,45,70,0),(3,102,40,99,100),(0,12623,1,21,100),(1,110,45,70,300),(2,110,45,70,500),(3,110,40,99,1300),(0,27001,1,20,30000),(1,112,45,70,100),(2,112,45,70,100),(3,112,40,99,300),(0,27002,20,40,25000),(1,113,45,70,0),(2,113,45,70,0),(3,113,40,99,100),(0,27003,35,89,20000),(1,120,50,70,300),(2,120,50,75,500),(3,120,45,70,1300),(0,27001,1,18,30000),(1,121,50,70,100),(2,121,50,75,100),(3,121,45,70,300),(0,27002,1,18,25000),(1,122,50,70,0),(2,122,50,75,0),(3,122,45,70,100),(0,27003,1,18,20000),(1,130,50,70,100),(2,130,50,75,100),(3,130,45,70,300),(0,27004,1,40,20000),(1,131,50,70,0),(2,131,50,75,100),(3,131,45,70,100),(0,27005,1,89,15000),(1,132,50,70,0),(2,132,50,75,0),(3,132,45,70,100),(0,27006,1,89,10000),(1,1060,45,99,300),(2,1060,45,70,500),(3,1060,40,99,1300),(0,50318,10,25,100),(1,1061,45,70,100),(2,1061,45,70,100),(3,1061,40,70,300),(0,50319,26,40,100),(1,1062,45,70,0),(2,1062,45,70,0),(3,1062,40,70,100),(0,50320,41,55,100),(1,1070,45,70,300),(2,1070,45,70,500),(3,1070,40,70,1300),(0,50321,56,80,100),(1,1071,45,70,100),(2,1071,45,70,100),(3,1071,40,70,300),(0,25040,20,99,500),(1,1072,45,70,0),(2,1072,45,70,0),(3,1072,40,99,100),(0,70102,1,99,0),(1,1080,50,75,300),(2,1080,50,75,500),(3,1080,45,70,1300),(0,50311,10,99,0),(1,1081,50,75,100),(2,1081,50,75,100),(3,1081,45,99,300),(0,50312,10,99,0),(1,1082,50,75,0),(2,1082,50,75,0),(3,1082,45,70,100),(0,50313,10,99,0),(1,1090,50,75,100),(2,1090,50,75,100),(3,1090,45,70,300),(0,50301,1,99,200),(1,1091,50,75,0),(2,1091,50,75,100),(3,1091,45,99,100),(0,50302,1,99,100),(1,1092,50,75,0),(2,1092,50,57,0),(3,1092,45,70,100),(0,50303,1,99,100),(1,3090,45,70,300),(2,3090,45,70,500),(3,3090,40,70,1300),(0,50304,1,99,0),(1,3091,45,70,100),(2,3091,45,70,100),(3,3091,40,99,300),(0,50305,1,99,0),(1,3092,45,70,0),(2,3092,45,70,0),(3,3092,40,99,100),(0,50306,1,99,0),(1,3100,45,70,300),(2,3100,45,70,500),(3,3100,40,99,1300),(0,50083,40,99,0),(1,3101,45,70,100),(2,3101,45,70,100),(3,3101,40,70,300),(0,50006,30,99,100),(1,3102,45,70,0),(2,3102,45,70,0),(3,3102,40,70,100),(0,50012,30,99,100),(1,50012,30,99,100),(2,50012,30,99,100),(3,50012,30,99,100),(0,50007,1,65,200),(1,3110,50,70,300),(2,3110,50,70,500),(3,3110,45,70,1300),(0,50013,1,65,200),(1,50013,1,65,200),(2,50013,1,65,200),(3,50013,1,65,200),(0,50054,25,65,1000),(1,3111,50,75,100),(2,3111,50,75,100),(3,3111,45,70,300),(0,50055,35,75,1000),(1,3112,50,75,0),(2,3112,50,75,0),(3,3112,45,70,100),(0,50056,50,99,1000),(1,3120,50,75,100),(2,3120,50,75,100),(3,3120,45,70,300),(0,50061,25,99,100),(1,3121,50,75,0),(2,3121,50,75,100),(3,3121,45,70,100),(0,27104,10,40,2000),(1,3122,50,70,0),(2,3122,50,75,0),(3,3122,45,70,100),(0,27105,40,99,1000),(1,2090,45,70,300),(2,2090,45,70,500),(3,2090,40,70,1300),(0,50600,30,99,0),(1,2091,45,70,100),(2,2091,45,70,100),(3,2091,40,70,300),(0,70104,10,99,500),(1,2092,45,70,0),(2,2092,45,70,0),(3,2092,40,70,100),(0,70105,20,99,400),(1,2100,45,70,300),(2,2100,45,70,500),(3,2100,40,70,1300),(0,70106,30,99,300),(1,2101,45,70,100),(2,2101,45,70,100),(3,2101,40,70,300),(0,70107,50,99,200),(1,2102,45,70,0),(2,2102,45,70,0),(3,2102,40,70,100),(0,27110,1,49,5000),(1,2110,50,75,300),(2,2110,50,75,500),(3,2110,45,70,1300),(0,27111,50,99,500),(1,2111,50,75,100),(2,2111,50,75,100),(3,2111,45,70,300),(0,22000,1,99,2500),(1,2112,50,75,0),(2,2112,50,75,0),(3,2112,45,70,100),(0,22010,1,99,2000),(1,2120,50,75,100),(2,2120,50,75,100),(3,2120,45,70,300),(0,50314,20,99,0),(1,2121,50,75,0),(2,2121,50,75,100),(3,2121,45,70,100),(0,50315,30,99,100),(1,2122,50,75,0),(2,2122,50,75,0),(3,2122,45,70,100),(0,50316,50,99,100),(1,5060,45,70,300),(2,5060,45,7,500),(3,5060,40,99,1300),(1,5061,45,70,100),(2,5061,45,70,100),(3,5061,40,70,300),(1,5062,45,70,0),(2,5062,45,70,0),(3,5062,40,70,100),(1,5070,50,70,300),(2,5070,50,70,500),(3,5070,40,70,1300),(1,5071,50,70,100),(2,5071,50,70,100),(3,5071,40,70,300),(1,5072,50,70,0),(2,5072,50,70,0),(3,5072,40,70,100),(1,5080,50,70,300),(2,5080,50,70,500),(3,5080,45,70,1300),(1,5081,50,70,100),(2,5081,50,70,100),(3,5081,45,70,300),(1,5082,50,70,0),(2,5082,50,70,0),(3,5082,45,70,100),(1,14160,45,70,0),(2,14160,45,70,0),(3,14160,40,65,0),(1,14161,45,70,0),(2,14161,45,70,0),(3,14161,40,65,0),(1,14162,45,70,0),(2,14162,45,70,0),(3,14162,40,65,0),(1,14180,45,70,0),(2,14180,45,70,0),(3,14180,45,70,0),(1,14181,45,70,0),(2,14181,45,70,0),(3,14181,45,70,0),(1,14182,45,70,0),(2,14182,45,70,0),(3,14182,45,70,0),(1,14200,50,70,0),(2,14200,50,75,0),(3,14200,50,75,0),(1,14201,50,70,0),(2,14201,50,75,0),(3,14201,50,75,0),(1,14202,50,70,0),(2,14202,50,75,0),(3,14202,50,75,0),(1,15160,45,70,100),(2,15160,45,70,100),(3,15160,40,65,200),(1,15161,45,70,0),(2,15161,45,70,0),(3,15161,40,65,100),(1,15162,45,70,0),(2,15162,45,70,0),(3,15162,40,65,0),(1,15180,45,70,100),(2,15180,45,70,100),(3,15180,45,70,200),(1,15181,45,70,0),(2,15181,45,70,0),(3,15181,45,70,100),(1,15182,45,70,0),(2,15182,45,70,0),(3,15182,45,70,0),(1,15200,50,70,0),(2,15200,50,70,0),(3,15200,45,70,100),(1,15201,50,70,0),(2,15201,50,70,0),(3,15201,45,70,0),(1,15202,50,70,0),(2,15202,50,70,0),(3,15202,45,70,0),(1,15220,50,70,0),(2,15220,50,70,0),(3,15220,50,70,100),(1,15221,50,70,0),(2,15221,50,70,0),(3,15221,50,70,0),(1,15222,50,70,0),(2,15222,50,70,0),(3,15222,50,99,0),(1,17160,45,70,100),(2,17160,45,70,100),(3,17160,40,65,200),(1,17161,45,70,0),(2,17161,45,70,0),(3,17161,40,65,100),(1,17162,45,70,0),(2,17162,45,70,0),(3,17162,40,65,0),(1,17180,45,70,100),(2,17180,45,70,100),(3,17180,45,70,200),(1,17181,45,70,0),(2,17181,45,70,0),(3,17181,45,70,100),(1,17182,45,70,0),(2,17182,45,70,0),(3,17182,45,70,0),(1,17200,50,70,100),(2,17200,50,75,100),(3,17200,50,70,200),(1,17201,50,70,0),(2,17201,50,75,0),(3,17201,50,70,100),(1,17202,50,70,0),(2,17202,50,75,0),(3,17202,50,75,0),(1,16160,45,70,100),(2,16160,45,70,100),(3,16160,40,65,200),(1,16161,45,70,0),(2,16161,45,70,0),(3,16161,40,65,100),(1,16162,45,70,0),(2,16162,45,70,0),(3,16162,40,65,0),(1,16180,45,70,100),(2,16180,45,70,100),(3,16180,45,70,200),(1,16181,45,70,0),(2,16181,45,70,0),(3,16181,45,70,100),(1,16182,45,70,0),(2,16182,45,70,0),(3,16182,45,70,0),(1,16200,50,70,100),(2,16200,50,75,100),(3,16200,50,75,200),(1,16201,50,70,0),(2,16201,50,75,0),(3,16201,50,75,100),(1,16202,50,70,0),(2,16202,50,75,0),(3,16202,50,75,0),(1,12222,15,41,0),(2,12222,15,41,100),(3,12222,15,41,100),(1,12362,15,41,0),(2,12362,15,41,100),(3,12362,15,41,100),(1,12502,15,41,0),(2,12502,15,41,100),(3,12502,15,41,100),(1,12642,15,41,0),(2,12642,15,41,100),(3,12642,15,41,100),(1,27001,1,20,30000),(2,12242,35,99,0),(3,12242,35,99,100),(1,27002,20,40,25000),(2,12382,35,99,0),(3,12382,35,99,100),(1,27003,35,89,20000),(2,12522,35,99,0),(3,12522,35,99,100),(1,27001,1,18,30000),(2,12662,35,99,0),(3,12662,35,99,100),(1,27002,1,18,25000),(2,27001,1,20,30000),(3,27001,1,20,30000),(1,27003,1,18,20000),(2,27002,20,40,25000),(3,27002,20,40,25000),(1,27004,1,40,20000),(2,27003,35,89,20000),(3,27003,35,89,10000),(1,27005,1,89,15000),(2,27001,1,18,30000),(3,27001,1,18,30000),(1,27006,1,89,10000),(2,27002,1,18,25000),(3,27002,1,18,25000),(1,50318,10,25,100),(2,27003,1,18,20000),(3,27003,1,18,10000),(1,50319,26,40,100),(2,27004,1,40,20000),(3,27004,1,40,20000),(1,50320,41,55,100),(2,27005,1,89,15000),(3,27005,1,89,15000),(1,50321,56,80,100),(2,27006,1,89,10000),(3,27006,1,89,10000),(1,25040,30,99,500),(2,50318,10,25,100),(3,50318,10,25,1000),(1,70102,1,99,0),(2,50319,26,40,100),(3,50319,26,40,200),(1,50311,10,99,0),(2,50320,41,55,100),(3,50320,41,55,200),(1,50312,10,99,0),(2,50321,56,80,100),(3,50321,56,80,200),(1,50313,10,99,0),(2,25040,40,99,500),(3,25040,50,99,1000),(1,50301,1,99,200),(2,70102,1,99,0),(3,70102,1,99,0),(1,50302,1,99,100),(2,50311,10,99,0),(3,50311,10,99,0),(1,50303,1,99,100),(2,50312,10,99,0),(3,50312,10,99,0),(1,50304,1,99,0),(2,50313,10,99,0),(3,50313,10,99,0),(1,50305,1,99,0),(2,50301,1,99,200),(3,50301,1,99,200),(1,50306,1,99,0),(2,50302,1,99,100),(3,50302,1,99,100),(1,50083,40,99,0),(2,50303,1,99,100),(3,50303,1,99,100),(1,50006,30,99,100),(2,50304,1,99,0),(3,50304,1,99,0),(1,50007,1,99,200),(2,50305,1,99,0),(3,50305,1,99,0),(1,50054,25,65,4000),(2,50306,1,99,0),(3,50306,1,99,0),(1,50055,35,75,2000),(2,50083,40,99,0),(3,50083,40,99,0),(1,50056,50,99,1000),(2,25100,40,99,100),(3,25100,40,99,100),(1,50061,25,99,100),(2,50006,30,99,100),(3,50006,30,99,100),(1,27104,10,40,2000),(2,50007,1,65,200),(3,50007,1,65,200),(1,27105,40,99,1000),(2,50054,25,65,4000),(3,50054,25,99,4000),(1,50600,30,99,0),(2,50055,35,75,2000),(3,50055,35,75,2000),(1,70104,10,99,500),(2,50056,50,99,1000),(3,50056,50,99,1000),(1,70105,20,99,400),(2,50061,25,99,100),(3,50061,25,99,100),(1,70106,30,99,300),(2,27104,10,40,2000),(3,27104,10,40,2000),(1,70107,50,99,200),(2,27105,40,99,1000),(3,27105,40,99,1000),(1,27110,1,49,5000),(2,50600,30,99,0),(3,50600,30,99,0),(1,27111,50,99,500),(2,70104,10,99,500),(3,70104,10,99,500),(1,22000,1,99,2500),(2,70105,20,99,400),(3,70105,20,99,400),(1,22010,1,99,2000),(2,70106,30,99,300),(3,70106,30,99,300),(1,50314,20,99,200),(2,70107,50,99,200),(3,70107,50,99,200),(1,50315,30,99,100),(2,27110,1,49,5000),(3,27110,1,49,5000),(1,50316,50,99,100),(2,27111,50,99,1000),(3,27111,50,99,1000),(1,72723,90,99,200),(2,22000,1,99,2500),(3,22000,1,99,2500),(1,72727,90,99,200),(2,22010,1,99,2000),(3,22010,1,99,2000),(2,50314,20,99,200),(3,50314,20,99,200),(2,50315,30,99,100),(3,50315,30,99,100),(2,50316,50,99,100),(3,50316,50,99,100),(2,72723,90,99,500),(3,72723,90,99,500),(2,72727,90,99,500),(3,72727,90,99,500);
/*!40000 ALTER TABLE `drop_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drop_default`
--

DROP TABLE IF EXISTS `drop_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drop_default` (
  `mob_vnum` bigint unsigned DEFAULT '0',
  `item_vnum` bigint unsigned DEFAULT '0',
  `count` int unsigned DEFAULT '0',
  `prob` int unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drop_default`
--

LOCK TABLES `drop_default` WRITE;
/*!40000 ALTER TABLE `drop_default` DISABLE KEYS */;
INSERT IGNORE INTO `drop_default` VALUES (103,1012,1,200),(103,4012,1,200),(103,11402,1,200),(103,16022,1,200),(104,32,1,200),(104,52,1,200),(104,15002,1,200),(104,2022,1,200),(104,16002,1,200),(105,11602,1,200),(105,12482,1,200),(105,15022,1,200),(105,16062,1,200),(107,12342,1,200),(107,11401,1,200),(107,17022,1,200),(107,17002,1,200),(109,11802,1,200),(109,12622,1,200),(109,15042,1,200),(109,5012,1,200),(109,7032,1,200),(111,50721,1,1000),(112,50723,1,1000),(113,50721,1,1000),(115,50723,1,1000),(131,50722,1,2000),(132,50723,1,1000),(139,50724,1,1000),(140,50726,1,1000),(143,50723,1,1000),(151,1013,1,4000),(151,4013,1,4000),(151,11403,1,4000),(151,16023,1,4000),(151,1014,1,4000),(151,4014,1,4000),(151,11404,1,4000),(151,16024,1,4000),(152,33,1,4000),(152,53,1,4000),(152,15003,1,4000),(152,2023,1,4000),(152,16003,1,4000),(152,34,1,4000),(152,54,1,4000),(152,15004,1,4000),(152,2024,1,4000),(152,16004,1,4000),(153,11803,1,4000),(153,12623,1,4000),(153,15043,1,4000),(153,5013,1,4000),(153,7033,1,4000),(153,11804,1,4000),(153,12624,1,4000),(153,15044,1,4000),(153,5014,1,4000),(153,7034,1,4000),(154,11211,1,12000),(154,11212,1,8000),(154,11213,1,4000),(154,11411,1,12000),(154,11412,1,8000),(154,11413,1,4000),(155,11611,1,12000),(155,11612,1,8000),(155,11613,1,4000),(155,11811,1,12000),(155,11812,1,8000),(155,11813,1,4000),(191,71,1,4000),(191,70,1,8000),(191,11611,1,4000),(191,11610,1,8000),(191,72,1,300),(191,11612,1,200),(191,15002,1,400),(191,16042,1,400),(191,27002,30,100000),(191,27003,20,50000),(191,27005,20,50000),(191,27006,10,50000),(191,30070,1,400000),(192,4021,1,4000),(192,4020,1,8000),(192,11411,1,4000),(192,11410,1,8000),(192,1031,1,300),(192,1032,1,200),(192,15042,1,500),(192,27002,30,100000),(192,27003,20,50000),(192,27005,20,50000),(192,27006,10,50000),(192,30004,1,400000),(193,7051,1,4000),(193,7050,1,8000),(193,11831,1,4000),(193,11830,1,8000),(193,7061,1,300),(193,7062,1,200),(193,15062,1,500),(193,17042,1,500),(193,27002,30,100000),(193,27003,20,50000),(193,27005,20,50000),(193,27006,10,50000),(193,30072,1,400000),(194,3051,1,4000),(194,3050,1,8000),(194,11211,1,4000),(194,11210,1,8000),(194,3062,1,300),(194,11212,1,200),(194,15042,1,500),(194,17022,1,500),(194,27002,30,100000),(194,27003,20,50000),(194,27005,20,50000),(194,27006,10,50000),(194,30037,1,400000),(301,50722,1,2000),(302,8001,30,12000),(302,50724,1,1000),(331,16083,1,4000),(331,16103,1,4000),(331,16123,1,4000),(331,16143,1,4000),(332,4021,1,4000),(332,4020,1,4000),(332,2051,1,4000),(332,2050,1,4000),(332,15122,1,4000),(333,3041,1,4000),(333,3040,1,4000),(333,2041,1,4000),(333,2050,1,4000),(333,15122,1,4000),(334,11234,1,6000),(334,11233,1,4000),(334,11434,1,6000),(334,11433,1,4000),(334,11634,1,6000),(334,11633,1,4000),(334,11834,1,6000),(334,11833,1,4000),(391,61,1,200),(391,60,1,200),(391,12641,1,200),(391,12640,1,200),(391,15062,1,200),(392,4021,1,200),(392,4020,1,200),(392,2051,1,200),(392,2050,1,200),(392,15122,1,100),(393,3041,1,4000),(393,3040,1,8000),(393,2041,1,4000),(393,2050,1,8000),(393,15122,1,200),(393,27002,30,100000),(393,27003,20,50000),(393,27005,20,50000),(393,27006,10,50000),(394,62,1,4000),(394,61,1,8000),(394,92,1,4000),(394,11222,1,8000),(394,15062,1,200),(394,27002,30,100000),(394,27003,20,50000),(394,27005,20,50000),(394,27006,10,50000),(401,50724,1,1000),(403,50007,1,500),(403,8001,30,4000),(405,50721,1,1000),(431,12222,1,4000),(431,12223,1,4000),(431,12362,1,4000),(431,12363,1,4000),(431,50009,1,2000),(432,12502,1,4000),(432,12503,1,4000),(432,12642,1,4000),(432,12643,1,4000),(432,50009,1,2000),(433,7072,1,4000),(433,7052,1,4000),(433,4022,1,4000),(433,1042,1,4000),(433,50009,1,2000),(434,61,1,4000),(434,12640,1,4000),(434,91,1,4000),(434,15060,1,4000),(434,50009,1,2000),(435,16041,1,4000),(435,7050,1,4000),(435,15141,1,4000),(435,11820,1,4000),(435,50009,1,2000),(436,71,1,4000),(436,5040,1,4000),(436,12501,1,4000),(436,17100,1,4000),(436,15102,1,4000),(436,50009,1,2000),(491,4021,1,4000),(491,12360,1,8000),(491,13001,1,4000),(491,15080,1,8000),(491,17082,1,200),(491,27002,30,100000),(491,27003,20,50000),(491,27005,20,50000),(491,27006,10,50000),(492,61,1,4000),(492,12640,1,8000),(492,91,1,4000),(492,15060,1,8000),(492,27002,30,100000),(492,27003,20,50000),(492,27005,20,50000),(492,27006,10,50000),(493,16041,1,4000),(493,7050,1,8000),(493,15141,1,4000),(493,11820,1,8000),(493,27002,30,100000),(493,27003,20,50000),(493,27005,20,50000),(493,27006,10,50000),(494,71,1,4000),(494,5040,1,8000),(494,12501,1,4000),(494,17100,1,8000),(494,15102,1,200),(494,27002,30,100000),(494,27003,20,50000),(494,27005,20,50000),(494,27006,10,50000),(502,50724,1,1000),(503,50013,1,500),(503,8001,50,20000),(503,50721,1,1000),(504,50725,1,1000),(531,17083,1,8000),(531,17103,1,6000),(531,17123,1,4000),(531,17143,1,4000),(531,50008,1,2000),(532,16083,1,4000),(532,16103,1,4000),(532,16123,1,4000),(532,16143,1,4000),(532,50008,1,2000),(533,2073,1,4000),(533,292,1,4000),(533,2152,1,4000),(533,50008,1,2000),(534,3072,1,8000),(534,3073,1,4000),(534,290,1,6000),(534,2150,1,4000),(534,11244,1,2000),(534,11243,1,4000),(534,11444,1,2000),(534,11443,1,4000),(534,11644,1,2000),(534,11643,1,4000),(534,11844,1,2000),(534,11843,1,4000),(534,50008,1,2000),(591,1042,1,200),(591,2072,1,200),(591,11432,1,200),(591,15122,1,200),(591,27002,50,100000),(591,27003,30,50000),(591,27005,30,50000),(591,27006,20,50000),(601,7082,1,8000),(601,5052,1,8000),(601,14082,1,4000),(601,14102,1,4000),(601,14122,1,4000),(601,14142,1,4000),(602,93,1,8000),(602,1053,1,8000),(602,1172,1,8000),(603,71,1,4000),(603,5040,1,8000),(603,12501,1,4000),(603,17100,1,8000),(603,15102,1,4000),(604,1042,1,4000),(604,2072,1,4000),(604,11422,1,4000),(604,15122,1,4000),(631,50722,1,1000),(632,50726,1,1000),(633,1042,1,200),(633,2072,1,200),(633,11432,1,200),(633,15122,1,200),(634,1042,1,200),(634,2072,1,200),(634,11422,1,200),(634,15122,1,200),(635,50722,1,1000),(636,50721,1,4000),(691,27002,200,400000),(691,27003,100,400000),(691,27005,200,400000),(691,27006,100,400000),(691,90010,1,40000),(702,50725,1,1000),(703,103,1,200),(703,112,1,200),(703,1062,1,200),(703,11642,1,200),(703,16162,1,200),(703,50724,1,1000),(704,50723,1,2000),(705,50724,1,1000),(707,50723,1,1000),(731,50726,1,2000),(733,50725,1,2000),(736,50725,1,2000),(737,50727,1,800),(791,27002,200,400000),(791,27003,100,400000),(791,27005,200,400000),(791,27006,100,400000),(791,90012,1,50000),(792,27002,200,400000),(792,27003,100,400000),(792,27005,200,400000),(792,27006,100,400000),(792,90012,1,200000),(901,1042,1,200),(901,2072,1,200),(901,11442,1,200),(901,15122,1,200),(902,27110,1,1000),(902,50008,1,200),(903,50723,1,1000),(904,27110,1,1000),(904,50008,1,200),(905,27110,1,1000),(905,50008,1,200),(905,50722,1,2000),(906,50006,1,1000),(906,8004,100,20000),(906,50723,1,2000),(907,5062,1,200),(907,11652,1,200),(907,2092,1,200),(907,11452,1,200),(907,15122,1,200),(907,70049,1,100),(907,50728,1,1000),(1001,50728,1,1000),(1002,50012,1,400),(1002,8005,100,20000),(1002,50724,1,1000),(1003,50721,1,2000),(1032,50012,1,900),(1032,8005,100,20000),(1061,50724,1,2000),(1061,30193,1,200),(1062,30193,1,200),(1063,50726,1,2000),(1063,30193,1,200),(1064,30193,1,200),(1065,50728,1,2000),(1066,50724,1,2000),(1068,50721,1,4000),(1068,14004,1,800),(1068,14024,1,800),(1068,14044,1,800),(1068,14064,1,800),(1068,1110,1,800),(1068,2130,1,800),(1068,7140,1,800),(1068,13120,1,100),(1069,50725,1,2000),(1069,14084,1,800),(1069,14104,1,800),(1069,14124,1,800),(1069,14144,1,800),(1069,7140,1,800),(1069,5100,1,800),(1069,160,1,800),(1069,13100,1,100),(1070,50727,1,1000),(1070,14084,1,800),(1070,14104,1,800),(1070,14124,1,800),(1070,14144,1,800),(1070,2130,1,800),(1070,5100,1,800),(1070,13080,1,100),(1071,50721,1,4000),(1071,14164,1,800),(1071,14184,1,800),(1071,14204,1,800),(1071,3140,1,800),(1071,1110,1,800),(1071,2130,1,800),(1071,7140,1,800),(1071,160,1,800),(1071,240,1,800),(1071,13060,1,100),(1091,130,1,25000),(1091,1090,1,25000),(1091,2120,1,25000),(1091,7120,1,25000),(1091,5080,1,25000),(1091,131,1,20000),(1091,1091,1,20000),(1091,2121,1,20000),(1091,7121,1,20000),(1091,5081,1,20000),(1091,132,1,15000),(1091,1092,1,15000),(1091,2122,1,15000),(1091,7122,1,15000),(1091,5082,1,15000),(1091,27002,30,150000),(1091,27003,50,200000),(1091,27005,30,150000),(1091,27006,20,100000),(1091,50300,1,400000),(1093,50082,1,100000),(1101,90011,1,900),(1102,90011,1,100),(1102,50728,1,1000),(1103,102,1,200),(1103,112,1,200),(1103,1072,1,200),(1103,11252,1,200),(1103,15122,1,200),(1103,70050,1,100),(1103,90011,1,200),(1103,50722,1,1000),(1104,50723,1,2000),(1105,2092,1,200),(1105,7092,1,200),(1105,11852,1,200),(1105,15142,1,200),(1105,70048,1,100),(1105,90011,1,300),(1105,50725,1,2000),(1106,102,1,200),(1106,112,1,200),(1106,1072,1,200),(1106,11252,1,200),(1106,15122,1,200),(1106,70051,1,100),(1106,90011,1,400),(1106,50728,1,1000),(1107,50721,1,2000),(1131,50060,1,800),(1131,27987,1,100),(1131,50901,1,2100),(1131,14045,1,100),(1131,11885,1,700),(1131,11685,1,700),(1131,50124,1,700),(1131,30198,1,900),(1132,50060,1,800),(1132,27987,1,100),(1132,50901,1,2100),(1132,30048,1,500),(1132,14085,1,900),(1132,11485,1,700),(1132,11285,1,700),(1132,50124,1,700),(1133,50901,1,2100),(1133,30088,1,800),(1133,50060,1,800),(1133,27987,1,100),(1133,14105,1,900),(1133,11885,1,700),(1133,11685,1,700),(1133,50124,1,700),(1134,50901,1,2100),(1134,30089,1,300),(1134,50060,1,800),(1134,70049,1,100),(1134,16163,1,800),(1134,11485,1,700),(1134,11285,1,700),(1134,50124,1,700),(1135,50901,1,2100),(1135,30090,1,500),(1135,50060,1,800),(1135,27987,1,100),(1135,16164,1,600),(1135,11886,1,400),(1135,11686,1,400),(1135,50124,1,700),(1136,50901,1,2100),(1136,30014,1,500),(1136,50060,1,800),(1136,27987,1,100),(1136,14125,1,600),(1136,11486,1,100),(1136,11286,1,100),(1136,50124,1,700),(1137,19,1,400),(1137,1009,1,400),(1137,2009,1,400),(1137,3009,1,400),(1137,5009,1,400),(1137,7009,1,400),(1137,30050,1,100),(1137,27105,10,300),(1137,50009,1,300),(1137,27987,1,100),(1137,11886,1,100),(1137,11686,1,100),(1137,11486,1,100),(1137,11286,1,100),(1137,50124,1,700),(1137,30198,1,100),(1192,11294,1,50000),(1192,11494,1,50000),(1192,11694,1,50000),(1192,11894,1,50000),(1192,13066,1,50000),(1192,13086,1,50000),(1192,13106,1,50000),(1192,13126,1,50000),(1192,15187,1,50000),(1192,15167,1,50000),(1192,15207,1,50000),(1192,15227,1,50000),(1192,16207,1,50000),(1192,16187,1,50000),(1192,17147,1,50000),(1192,17167,1,50000),(1192,17187,1,50000),(1192,17207,1,50000),(1192,28430,1,50000),(1192,28431,1,50000),(1192,28432,1,50000),(1192,28433,1,50000),(1192,28434,1,50000),(1192,28435,1,50000),(1192,28436,1,50000),(1192,28437,1,50000),(1192,28438,1,50000),(1192,28439,1,50000),(1192,28440,1,50000),(1192,28441,1,50000),(1192,28442,1,50000),(1192,28443,1,50000),(1192,70031,1,50000),(1192,30190,1,400000),(1192,30190,5,100000),(1301,90012,1,200),(1301,12260,1,2500),(1301,12390,1,2500),(1301,12530,1,5000),(1301,12670,1,5000),(1302,90012,1,300),(1302,12260,1,5000),(1302,12390,1,5000),(1302,12530,1,2500),(1302,12670,1,2500),(1303,90012,1,100),(1304,27002,200,400000),(1304,27003,100,400000),(1304,27005,200,400000),(1304,27006,100,400000),(1304,90010,1,300000),(1305,15162,1,200),(1305,16162,1,200),(1305,12382,1,200),(1305,17142,1,200),(1305,90012,1,400),(1305,12260,1,700),(1305,12390,1,700),(1305,12530,1,700),(1305,12670,1,700),(1401,50723,1,2000),(1402,50726,1,2000),(1403,50725,1,2000),(1403,11290,1,100),(1403,11490,1,100),(1403,11890,1,100),(1403,11690,1,100),(1403,70003,1,100),(1403,70005,1,100),(1403,70008,1,100),(1403,70038,1,100),(1403,170,1,100),(1403,250,1,100),(1403,1120,1,100),(1403,2180,1,100),(1403,3150,1,100),(1403,7150,1,100),(1501,30195,1,1000),(1502,50722,1,1000),(1502,30195,1,1000),(1503,50723,1,4000),(1503,30195,1,1000),(1601,50728,1,2000),(1601,30194,1,1000),(1602,50721,1,4000),(1602,30194,1,1000),(1603,50722,1,2000),(1603,30194,1,1000),(1603,11290,1,300),(1603,11490,1,300),(1603,11890,1,300),(1603,11690,1,300),(1603,170,1,300),(1603,250,1,300),(1603,1120,1,300),(1603,2180,1,300),(1603,3150,1,300),(1603,7150,1,300),(1901,27002,200,400000),(1901,27003,100,400000),(1901,27005,200,400000),(1901,27006,100,400000),(1901,90010,1,200000),(2001,50721,1,2000),(2002,50725,1,1000),(2003,50725,1,1000),(2003,50009,1,200),(2004,50721,1,2000),(2005,50727,1,800),(2031,50722,1,1000),(2033,50727,1,800),(2034,50726,1,2000),(2035,50726,1,2000),(2061,50724,1,2000),(2061,104,1,500),(2061,114,1,500),(2061,124,1,500),(2061,134,1,500),(2061,13006,1,500),(2061,13194,1,500),(2061,13205,1,500),(2061,13060,1,500),(2061,13100,1,500),(2062,50721,1,4000),(2062,1064,1,500),(2062,1074,1,500),(2062,1084,1,500),(2062,1094,1,500),(2062,12626,1,500),(2062,12645,1,500),(2062,12664,1,500),(2062,13080,1,500),(2062,13120,1,500),(2063,50724,1,2000),(2063,2094,1,500),(2063,2104,1,500),(2063,2114,1,500),(2063,2124,1,500),(2063,12486,1,500),(2063,12505,1,500),(2063,12524,1,500),(2063,13120,1,100),(2064,50722,1,2000),(2064,3094,1,500),(2064,3104,1,500),(2064,3114,1,500),(2064,3124,1,500),(2064,12346,1,500),(2064,12365,1,500),(2064,12384,1,500),(2064,13120,1,100),(2065,50723,1,2000),(2065,50009,1,200),(2065,5064,1,500),(2065,5074,1,500),(2065,5084,1,500),(2065,12206,1,500),(2065,12225,1,500),(2065,12244,1,500),(2065,13100,1,100),(2091,27002,200,400000),(2091,27003,100,400000),(2091,27005,200,400000),(2091,27006,100,400000),(2091,90011,1,60000),(2102,50722,1,2000),(2103,50721,1,4000),(2104,50724,1,1000),(2105,50013,1,1000),(2105,8002,100,40000),(2105,30081,1,1000),(2105,50009,1,200),(2105,50722,1,2000),(2106,50726,1,1000),(2106,50009,1,200),(2107,50006,1,700),(2107,8003,50,40000),(2107,30082,1,1000),(2107,50725,1,2000),(2108,92,1,200),(2108,2082,1,200),(2108,11841,1,200),(2108,15122,1,200),(2108,27002,30,50000),(2108,27003,20,25000),(2108,27005,20,50000),(2108,27006,10,25000),(2108,70008,1,100),(2108,50728,1,800),(2131,16004,1,500),(2131,16024,1,500),(2131,16044,1,500),(2131,16064,1,500),(2131,13006,1,500),(2131,13194,1,500),(2131,13205,1,500),(2131,13100,1,100),(2131,50009,1,100),(2131,50727,1,2000),(2132,16084,1,500),(2132,16104,1,500),(2132,16124,1,500),(2132,16144,1,500),(2132,17164,1,500),(2132,17184,1,500),(2132,17204,1,500),(2132,13080,1,100),(2132,50009,1,100),(2132,50726,1,4000),(2133,50725,1,4000),(2133,15164,1,500),(2133,15184,1,500),(2133,15204,1,500),(2133,15224,1,500),(2133,17104,1,500),(2133,17124,1,500),(2133,17144,1,500),(2133,13080,1,100),(2133,50009,1,100),(2134,50727,1,2000),(2134,15084,1,500),(2134,15104,1,500),(2134,15124,1,500),(2134,15144,1,500),(2134,16164,1,500),(2134,16184,1,500),(2134,16204,1,500),(2134,13060,1,100),(2134,50009,1,100),(2135,15004,1,500),(2135,15024,1,500),(2135,15044,1,500),(2135,15064,1,500),(2135,17044,1,500),(2135,17064,1,500),(2135,13060,1,100),(2135,50009,1,100),(2135,50725,1,4000),(2191,27002,200,400000),(2191,27003,100,400000),(2191,27005,200,400000),(2191,27006,100,400000),(2191,90012,1,80000),(2201,90010,1,900),(2201,50722,1,1000),(2202,90010,1,100),(2202,50727,1,2000),(2203,90010,1,200),(2203,50728,1,1000),(2204,90010,1,300),(2204,12280,1,0),(2204,12400,1,0),(2204,12540,1,0),(2204,12680,1,0),(2205,90010,1,400),(2205,50723,1,4000),(2205,12280,1,0),(2205,12400,1,0),(2205,12540,1,0),(2205,12680,1,0),(2206,27002,200,400000),(2206,27003,100,400000),(2206,27005,200,400000),(2206,27006,100,400000),(2206,90012,1,200000),(2301,50727,1,2000),(2302,50726,1,1000),(2302,30192,1,500),(2303,50725,1,2000),(2303,30192,1,500),(2304,30192,1,500),(2311,50728,1,800),(2311,30197,1,300),(2312,50724,1,1000),(2312,30197,1,300),(2313,50726,1,1000),(2313,30197,1,300),(2313,17204,1,300),(2313,17205,1,300),(2313,17206,1,300),(2313,3140,1,300),(2313,1110,1,300),(2313,2130,1,300),(2313,7140,1,300),(2313,5100,1,300),(2313,160,1,300),(2313,240,1,300),(2314,50727,1,800),(2314,30197,1,300),(2314,16204,1,300),(2314,16205,1,300),(2314,16206,1,300),(2314,3140,1,600),(2314,1110,1,600),(2314,2130,1,600),(2314,7140,1,600),(2314,5100,1,600),(2314,160,1,600),(2314,240,1,600),(2315,50728,1,1000),(2315,11291,1,300),(2315,11491,1,300),(2315,11891,1,300),(2315,11691,1,300),(2315,27987,1,900),(2315,14204,1,900),(2315,14205,1,900),(2315,14206,1,900),(2315,3140,1,100),(2315,1110,1,100),(2315,2130,1,100),(2315,7140,1,100),(2315,5100,1,100),(2315,160,1,100),(2315,240,1,100),(2401,250,1,700),(2401,12525,1,400),(2401,50060,1,400),(2401,27987,1,500),(2401,50721,5,600),(2401,50725,5,600),(2401,70050,1,200),(2401,166,1,800),(2401,164,1,100),(2401,15185,1,300),(2401,254,1,900),(2401,255,1,500),(2401,70031,1,400),(2401,11485,1,100),(2401,11285,1,100),(2401,190,1,400),(2401,180,1,400),(2401,50124,1,200),(2401,50121,1,600),(2402,1120,1,700),(2402,2180,1,700),(2402,8005,30,600),(2402,8005,60,400),(2402,12385,1,400),(2402,14184,1,200),(2402,27987,1,500),(2402,50722,5,600),(2402,50726,5,600),(2402,1106,1,800),(2402,2136,1,800),(2402,2184,1,900),(2402,1124,1,900),(2402,70031,1,700),(2402,11885,1,100),(2402,11685,1,100),(2402,2170,1,400),(2402,1130,1,400),(2402,50124,1,200),(2402,50120,1,600),(2403,7150,1,100),(2403,12665,1,800),(2403,14164,1,300),(2403,17163,1,800),(2403,27987,1,100),(2403,50723,5,1200),(2403,50727,5,1200),(2403,5096,1,200),(2403,7136,1,200),(2403,11885,1,800),(2403,11685,1,400),(2403,15224,1,300),(2403,7154,1,100),(2403,7155,1,100),(2403,70031,1,700),(2403,5120,1,400),(2403,50124,1,200),(2403,50122,1,600),(2404,30199,1,100),(2404,170,1,100),(2404,174,1,900),(2404,50060,1,800),(2404,50724,5,1200),(2404,50728,5,1200),(2404,70048,1,200),(2404,70051,1,300),(2404,3146,1,100),(2404,3136,1,100),(2404,11285,1,600),(2404,11485,1,200),(2404,15085,1,800),(2404,12245,1,800),(2404,3152,1,100),(2404,70031,1,700),(2404,181,1,500),(2404,191,1,500),(2404,1131,1,500),(2404,5121,1,500),(2404,2171,1,500),(2404,50120,1,200),(2404,50121,1,200),(2404,50122,1,200),(2411,251,1,900),(2411,12526,1,100),(2411,14204,1,200),(2411,50060,1,800),(2411,27987,1,100),(2411,50721,5,600),(2411,50725,5,600),(2411,156,1,100),(2411,246,1,100),(2411,2144,1,100),(2411,70031,1,100),(2411,182,1,100),(2411,192,1,100),(2411,50121,1,600),(2411,30196,1,200),(2412,1121,1,900),(2412,2181,1,900),(2412,8005,35,1600),(2412,8005,55,800),(2412,12386,1,100),(2412,14186,1,200),(2412,27987,1,100),(2412,50009,1,300),(2412,50722,5,700),(2412,50726,5,700),(2412,144,1,100),(2412,1116,1,100),(2412,2146,1,100),(2412,70031,1,100),(2412,2170,1,100),(2412,1130,1,100),(2412,50120,1,600),(2412,30196,1,300),(2413,30199,1,100),(2413,30196,1,700),(2413,7151,1,100),(2413,12666,1,100),(2413,14166,1,200),(2413,15164,1,300),(2413,17164,1,400),(2413,17183,1,600),(2413,27987,1,100),(2413,50009,1,300),(2413,50723,5,1200),(2413,50727,5,1200),(2413,154,1,100),(2413,5106,1,100),(2413,7146,1,200),(2413,7144,1,200),(2413,70031,1,100),(2413,5122,1,100),(2413,50122,1,600),(2414,30199,1,200),(2414,30196,1,700),(2414,182,1,200),(2414,192,1,200),(2414,1132,1,200),(2414,5122,1,200),(2414,2172,1,200),(2414,50120,1,400),(2414,50121,1,400),(2414,50122,1,400),(2491,30179,1,400000),(2491,30196,1,1000),(2492,30179,1,400000),(2492,30179,2,100000),(2492,30190,1,100000),(2492,13063,1,100000),(2492,14206,1,50000),(2492,27987,1,100000),(2492,70051,1,50000),(2492,13083,1,100000),(2492,70050,1,50000),(2492,13103,1,100000),(2492,15165,1,30000),(2492,16203,1,50000),(2492,17184,1,50000),(2492,17203,1,30000),(2492,13123,1,50000),(2492,14143,1,30000),(2492,15204,1,30000),(2492,16184,1,50000),(2494,30179,1,400000),(2495,30179,1,400000),(2495,30179,3,100000),(2495,30190,1,100000),(2495,11691,1,30000),(2495,11491,1,30000),(2495,11891,1,30000),(2495,11291,1,30000),(2495,13064,1,100000),(2495,13084,1,30000),(2495,13104,1,100000),(2495,16204,1,50000),(2495,17204,1,30000),(2495,13124,1,100000),(2495,15205,1,30000),(2495,70050,1,50000),(2495,70051,1,50000),(2495,50009,1,100000),(2495,27987,1,100000),(5002,27002,100,400000),(5002,27003,50,400000),(5002,27005,100,400000),(5002,27006,50,400000),(5101,50722,1,2000),(5104,50721,1,1000),(5111,50723,1,2000),(5114,50722,1,1000),(5115,50725,1,1000),(5116,50726,1,1000),(5121,50726,1,1000),(5122,50723,1,1000),(5125,50724,1,1000),(5126,50721,1,2000),(5127,50722,1,2000),(5161,50057,1,200000),(5162,50058,1,200000),(5163,50059,1,200000),(8001,28041,1,10000),(8001,28042,1,10000),(8001,28043,1,10000),(8001,50300,1,100000),(8001,70024,1,8000),(8001,28040,1,10000),(8001,27002,50,60000),(8001,27003,30,20000),(8001,27005,30,40000),(8001,27006,20,10000),(8001,50300,1,100000),(8001,28130,1,10000),(8001,28131,1,10000),(8001,28132,1,10000),(8001,28133,1,10000),(8001,28134,1,10000),(8001,28135,1,10000),(8001,28136,1,10000),(8001,28137,1,10000),(8001,28138,1,10000),(8001,28139,1,10000),(8001,28140,1,10000),(8001,28141,1,10000),(8001,28142,1,10000),(8001,28143,1,10000),(8001,28030,1,10000),(8001,28031,1,10000),(8001,28032,1,10000),(8001,28033,1,10000),(8001,28034,1,10000),(8001,28035,1,10000),(8001,28036,1,10000),(8001,28037,1,10000),(8001,28038,1,10000),(8001,28039,1,10000),(8001,50300,1,100000),(8002,28034,1,10000),(8002,28035,1,10000),(8002,28036,1,10000),(8002,28037,1,10000),(8002,28038,1,10000),(8002,28039,1,10000),(8002,28040,1,10000),(8002,28041,1,10000),(8002,28042,1,10000),(8002,28043,1,10000),(8002,50300,1,100000),(8002,50300,1,100000),(8002,50300,1,75000),(8002,70024,1,10000),(8002,28033,1,10000),(8002,27002,50,60000),(8002,27003,30,20000),(8002,27005,30,40000),(8002,27006,20,10000),(8002,50300,1,100000),(8002,28130,1,10000),(8002,28131,1,10000),(8002,28132,1,10000),(8002,28133,1,10000),(8002,28134,1,10000),(8002,28135,1,10000),(8002,28136,1,10000),(8002,28137,1,10000),(8002,28138,1,10000),(8002,28139,1,10000),(8002,28140,1,10000),(8002,28141,1,10000),(8002,28142,1,10000),(8002,28143,1,10000),(8002,28030,1,10000),(8002,28031,1,10000),(8002,28032,1,10000),(8003,27002,50,60000),(8003,27003,30,20000),(8003,27005,30,40000),(8003,27006,20,20000),(8003,50300,1,100000),(8003,28130,1,10000),(8003,28131,1,10000),(8003,28132,1,10000),(8003,28133,1,10000),(8003,28134,1,10000),(8003,28135,1,10000),(8003,28136,1,10000),(8003,28137,1,10000),(8003,28138,1,10000),(8003,28139,1,10000),(8003,28140,1,10000),(8003,28141,1,10000),(8003,28142,1,10000),(8003,28143,1,10000),(8003,28030,1,10000),(8003,28031,1,10000),(8003,28032,1,10000),(8003,28033,1,10000),(8003,28034,1,10000),(8003,28035,1,10000),(8003,28036,1,10000),(8003,28037,1,10000),(8003,28038,1,10000),(8003,28039,1,10000),(8003,28040,1,10000),(8003,28041,1,10000),(8003,28042,1,10000),(8003,28043,1,10000),(8003,50300,1,100000),(8003,50300,1,100000),(8003,70024,1,8000),(8004,27002,50,60000),(8004,27003,30,20000),(8004,27005,30,40000),(8004,27006,20,10000),(8004,50300,1,100000),(8004,70014,1,5000),(8004,70037,1,5000),(8004,28130,1,10000),(8004,28131,1,10000),(8004,28132,1,10000),(8004,28133,1,10000),(8004,28134,1,10000),(8004,28135,1,10000),(8004,28136,1,10000),(8004,28137,1,10000),(8004,28138,1,10000),(8004,28139,1,10000),(8004,28140,1,10000),(8004,28141,1,10000),(8004,28142,1,10000),(8004,28143,1,10000),(8004,28030,1,10000),(8004,28031,1,10000),(8004,28032,1,10000),(8004,28033,1,10000),(8004,28034,1,10000),(8004,28035,1,10000),(8004,28036,1,10000),(8004,28037,1,10000),(8004,28038,1,10000),(8004,28039,1,10000),(8004,28040,1,10000),(8004,28041,1,10000),(8004,28042,1,10000),(8004,28043,1,10000),(8004,28230,1,10000),(8004,28231,1,10000),(8004,28232,1,10000),(8004,28233,1,10000),(8004,28234,1,10000),(8004,28235,1,10000),(8004,28236,1,10000),(8004,28237,1,10000),(8004,28238,1,10000),(8004,28239,1,10000),(8004,28240,1,10000),(8004,28241,1,10000),(8004,28242,1,10000),(8004,28243,1,10000),(8004,50300,1,100000),(8004,50300,1,100000),(8004,70024,1,15000),(8005,27002,50,60000),(8005,27003,30,20000),(8005,27005,30,40000),(8005,27006,20,10000),(8005,50300,1,100000),(8005,70014,1,10000),(8005,70037,1,10000),(8005,28130,1,10000),(8005,28131,1,10000),(8005,28132,1,10000),(8005,28133,1,10000),(8005,28134,1,10000),(8005,28135,1,10000),(8005,28136,1,10000),(8005,28137,1,10000),(8005,28138,1,10000),(8005,28139,1,10000),(8005,28140,1,10000),(8005,28141,1,10000),(8005,28142,1,10000),(8005,28143,1,10000),(8005,28030,1,10000),(8005,28031,1,10000),(8005,28032,1,10000),(8005,28033,1,10000),(8005,28034,1,10000),(8005,28035,1,10000),(8005,28036,1,10000),(8005,28037,1,10000),(8005,28038,1,10000),(8005,28039,1,10000),(8005,28040,1,10000),(8005,28041,1,10000),(8005,28042,1,10000),(8005,28043,1,10000),(8005,28230,1,10000),(8005,28231,1,10000),(8005,28232,1,10000),(8005,28233,1,10000),(8005,28234,1,10000),(8005,28235,1,10000),(8005,28236,1,10000),(8005,28237,1,10000),(8005,28238,1,10000),(8005,28239,1,10000),(8005,28240,1,10000),(8005,28241,1,10000),(8005,28242,1,10000),(8005,28243,1,10000),(8005,50300,1,100000),(8005,50300,1,100000),(8005,70024,1,15000),(8006,27002,50,60000),(8006,27003,30,20000),(8006,27005,30,40000),(8006,27006,20,10000),(8006,50300,1,10000),(8006,70014,1,5000),(8006,70037,1,5000),(8006,28130,1,4000),(8006,28131,1,4000),(8006,28132,1,4000),(8006,28133,1,4000),(8006,28134,1,4000),(8006,28135,1,4000),(8006,28136,1,4000),(8006,28137,1,4000),(8006,28138,1,4000),(8006,28139,1,4000),(8006,28140,1,4000),(8006,28141,1,4000),(8006,28142,1,4000),(8006,28143,1,4000),(8006,28230,1,2000),(8006,28231,1,2000),(8006,28232,1,2000),(8006,28233,1,2000),(8006,28234,1,2000),(8006,28235,1,2000),(8006,28236,1,2000),(8006,28237,1,2000),(8006,28238,1,2000),(8006,28239,1,2000),(8006,28240,1,2000),(8006,28241,1,2000),(8006,28242,1,2000),(8006,28243,1,2000),(8006,28330,1,1000),(8006,28331,1,1000),(8006,28332,1,1000),(8006,28333,1,1000),(8006,28334,1,1000),(8006,28335,1,1000),(8006,28336,1,1000),(8006,28337,1,1000),(8006,28338,1,1000),(8006,28339,1,1000),(8006,28340,1,1000),(8006,28341,1,1000),(8006,28342,1,1000),(8006,28343,1,1000),(8006,50300,1,100000),(8006,50300,1,100000),(8006,70024,1,15000),(8006,50513,1,30000),(8007,28241,1,4000),(8007,28242,1,4000),(8007,28243,1,4000),(8007,28330,1,2000),(8007,28331,1,2000),(8007,28332,1,2000),(8007,28333,1,2000),(8007,28334,1,2000),(8007,28335,1,2000),(8007,28336,1,2000),(8007,28337,1,2000),(8007,28338,1,2000),(8007,28339,1,2000),(8007,28340,1,2000),(8007,28341,1,2000),(8007,28342,1,2000),(8007,28343,1,2000),(8007,50300,1,100000),(8007,50300,1,100000),(8007,70024,1,15000),(8007,28240,1,4000),(8007,27002,50,60000),(8007,27003,30,20000),(8007,27005,30,40000),(8007,27006,20,10000),(8007,50300,1,100000),(8007,70014,1,5000),(8007,70037,1,5000),(8007,28130,1,6000),(8007,28131,1,6000),(8007,28132,1,6000),(8007,28133,1,6000),(8007,28134,1,6000),(8007,28135,1,6000),(8007,28136,1,6000),(8007,28137,1,6000),(8007,28138,1,6000),(8007,28139,1,6000),(8007,28140,1,6000),(8007,28141,1,6000),(8007,28142,1,6000),(8007,28143,1,6000),(8007,28230,1,4000),(8007,28231,1,4000),(8007,28232,1,4000),(8007,28233,1,4000),(8007,28234,1,4000),(8007,28235,1,4000),(8007,28236,1,4000),(8007,28237,1,4000),(8007,28238,1,40000),(8007,28239,1,4000),(8007,28240,1,4000),(8007,50513,1,30000),(8008,28341,1,2000),(8008,28342,1,2000),(8008,28343,1,2000),(8008,28430,1,1000),(8008,28431,1,1000),(8008,28432,1,1000),(8008,28433,1,1000),(8008,28434,1,1000),(8008,28435,1,1000),(8008,28436,1,1000),(8008,28437,1,1000),(8008,28438,1,1000),(8008,28439,1,1000),(8008,28440,1,1000),(8008,28441,1,1000),(8008,28442,1,1000),(8008,28443,1,1000),(8008,50300,1,100000),(8008,50300,1,100000),(8008,70024,1,15000),(8008,28340,1,2000),(8008,27002,50,60000),(8008,27003,30,20000),(8008,27005,30,40000),(8008,27006,20,10000),(8008,50300,1,100000),(8008,70014,1,5000),(8008,70037,1,5000),(8008,28230,1,4000),(8008,28231,1,4000),(8008,28232,1,4000),(8008,28233,1,4000),(8008,28234,1,4000),(8008,28235,1,4000),(8008,28236,1,4000),(8008,28237,1,4000),(8008,28238,1,4000),(8008,28239,1,4000),(8008,28240,1,4000),(8008,28241,1,4000),(8008,28242,1,4000),(8008,28243,1,4000),(8008,28330,1,2000),(8008,28331,1,2000),(8008,28332,1,2000),(8008,28333,1,2000),(8008,28334,1,2000),(8008,28335,1,2000),(8008,28336,1,2000),(8008,28337,1,2000),(8008,28338,1,2000),(8008,28339,1,2000),(8008,50513,1,30000),(8009,100,1,6000),(8009,1060,1,6000),(8009,2090,1,6000),(8009,7090,1,6000),(8009,5050,1,6000),(8009,101,1,5000),(8009,1061,1,5000),(8009,2091,1,5000),(8009,7091,1,5000),(8009,5051,1,5000),(8009,102,1,5000),(8009,1062,1,5000),(8009,2092,1,5000),(8009,7092,1,5000),(8009,5052,1,5000),(8009,28440,1,1000),(8009,28441,1,1000),(8009,28442,1,1000),(8009,28443,1,1000),(8009,50513,1,40000),(8009,50300,1,100000),(8009,50300,1,100000),(8009,70024,1,20000),(8009,28439,1,1000),(8009,27002,50,60000),(8009,27003,30,20000),(8009,27005,30,40000),(8009,27006,20,10000),(8009,50300,1,100000),(8009,70014,1,5000),(8009,70037,1,5000),(8009,28230,1,4000),(8009,28231,1,4000),(8009,28232,1,4000),(8009,28233,1,4000),(8009,28234,1,4000),(8009,28235,1,4000),(8009,28236,1,4000),(8009,28237,1,4000),(8009,28238,1,4000),(8009,28239,1,4000),(8009,28240,1,4000),(8009,28241,1,4000),(8009,28242,1,4000),(8009,28243,1,4000),(8009,28330,1,2000),(8009,28331,1,2000),(8009,28332,1,2000),(8009,28333,1,2000),(8009,28334,1,2000),(8009,28335,1,2000),(8009,28336,1,2000),(8009,28337,1,2000),(8009,28338,1,20000),(8009,28339,1,2000),(8009,28340,1,2000),(8009,28341,1,2000),(8009,28342,1,2000),(8009,28343,1,2000),(8009,28430,1,1000),(8009,28431,1,1000),(8009,28432,1,1000),(8009,28433,1,1000),(8009,28434,1,1000),(8009,28435,1,1000),(8009,28436,1,1000),(8009,28437,1,1000),(8009,28438,1,1000),(8010,110,1,6000),(8010,1070,1,6000),(8010,2100,1,6000),(8010,7100,1,6000),(8010,5060,1,6000),(8010,111,1,5000),(8010,1071,1,5000),(8010,2101,1,5000),(8010,7101,1,5000),(8010,5061,1,5000),(8010,28437,1,1000),(8010,28438,1,1000),(8010,28439,1,1000),(8010,28440,1,1000),(8010,28441,1,1000),(8010,28442,1,1000),(8010,28443,1,1000),(8010,50513,1,40000),(8010,50300,1,100000),(8010,50300,1,100000),(8010,27002,50,60000),(8010,27003,30,20000),(8010,27005,30,40000),(8010,27006,20,10000),(8010,50300,1,100000),(8010,70014,1,5000),(8010,70037,1,5000),(8010,28230,1,4000),(8010,28231,1,4000),(8010,28232,1,4000),(8010,28233,1,4000),(8010,28234,1,4000),(8010,28235,1,4000),(8010,28236,1,4000),(8010,28237,1,4000),(8010,28238,1,4000),(8010,28239,1,4000),(8010,28240,1,4000),(8010,28241,1,4000),(8010,28242,1,4000),(8010,28243,1,4000),(8010,28330,1,2000),(8010,28331,1,2000),(8010,28332,1,2000),(8010,28333,1,2000),(8010,28334,1,2000),(8010,28335,1,2000),(8010,28336,1,2000),(8010,28337,1,2000),(8010,28338,1,2000),(8010,28339,1,2000),(8010,28340,1,2000),(8010,28341,1,2000),(8010,28342,1,2000),(8010,28343,1,2000),(8010,28430,1,1000),(8010,28431,1,1000),(8010,28432,1,1000),(8010,28433,1,1000),(8010,28434,1,1000),(8010,28435,1,1000),(8010,28436,1,1000),(8010,70024,1,20000),(8011,120,1,6000),(8011,1080,1,6000),(8011,2110,1,6000),(8011,7110,1,6000),(8011,5070,1,6000),(8011,121,1,5000),(8011,1081,1,5000),(8011,2111,1,5000),(8011,7111,1,5000),(8011,5071,1,5000),(8011,122,1,5000),(8011,1082,1,5000),(8011,2112,1,5000),(8011,7112,1,5000),(8011,5072,1,5000),(8011,27002,50,60000),(8011,27003,30,20000),(8011,27005,30,40000),(8011,27006,20,10000),(8011,50300,1,100000),(8011,70014,1,5000),(8011,70037,1,5000),(8011,28230,1,4000),(8011,28231,1,4000),(8011,28232,1,4000),(8011,28233,1,4000),(8011,28234,1,4000),(8011,28235,1,4000),(8011,28236,1,4000),(8011,28237,1,4000),(8011,28238,1,4000),(8011,28239,1,4000),(8011,28240,1,4000),(8011,28241,1,4000),(8011,28242,1,4000),(8011,28243,1,4000),(8011,28330,1,2000),(8011,28331,1,2000),(8011,28332,1,2000),(8011,28333,1,2000),(8011,28334,1,2000),(8011,28335,1,2000),(8011,28336,1,2000),(8011,28337,1,2000),(8011,28338,1,2000),(8011,28339,1,2000),(8011,28340,1,2000),(8011,28341,1,2000),(8011,28342,1,2000),(8011,28343,1,2000),(8011,28430,1,1000),(8011,28431,1,1000),(8011,28432,1,1000),(8011,28433,1,1000),(8011,28434,1,1000),(8011,28435,1,1000),(8011,28436,1,1000),(8011,28437,1,1000),(8011,28438,1,1000),(8011,28439,1,1000),(8011,28440,1,1000),(8011,28441,1,1000),(8011,28442,1,1000),(8011,28443,1,1000),(8011,50513,1,40000),(8011,50300,1,100000),(8011,50300,1,100000),(8011,70024,1,20000),(8012,130,1,6000),(8012,1090,1,6000),(8012,2120,1,6000),(8012,7120,1,6000),(8012,5080,1,6000),(8012,131,1,5000),(8012,1091,1,5000),(8012,2121,1,5000),(8012,7121,1,5000),(8012,5081,1,5000),(8012,132,1,5000),(8012,1092,1,5000),(8012,2122,1,5000),(8012,7122,1,5000),(8012,5082,1,5000),(8012,27002,50,60000),(8012,27003,30,20000),(8012,27005,30,40000),(8012,27006,20,10000),(8012,50300,1,100000),(8012,70014,1,5000),(8012,70037,1,5000),(8012,28230,1,4000),(8012,28231,1,4000),(8012,28232,1,4000),(8012,28233,1,4000),(8012,28234,1,4000),(8012,28235,1,4000),(8012,28236,1,4000),(8012,28237,1,4000),(8012,28238,1,4000),(8012,28239,1,4000),(8012,28240,1,4000),(8012,28241,1,4000),(8012,28242,1,4000),(8012,28243,1,4000),(8012,28330,1,2000),(8012,28331,1,2000),(8012,28332,1,2000),(8012,28333,1,2000),(8012,28334,1,2000),(8012,28335,1,2000),(8012,28336,1,2000),(8012,28337,1,2000),(8012,28338,1,2000),(8012,28339,1,2000),(8012,28340,1,2000),(8012,28341,1,2000),(8012,28342,1,2000),(8012,28343,1,2000),(8012,28430,1,1000),(8012,28431,1,1000),(8012,28432,1,1000),(8012,28433,1,1000),(8012,28434,1,1000),(8012,28435,1,1000),(8012,28436,1,1000),(8012,28437,1,1000),(8012,28438,1,1000),(8012,28439,1,1000),(8012,28440,1,1000),(8012,28441,1,1000),(8012,28442,1,1000),(8012,28443,1,1000),(8012,11272,1,3000),(8012,11472,1,3000),(8012,11672,1,3000),(8012,11872,1,3000),(8012,13041,1,6000),(8012,50513,1,45000),(8012,50300,1,100000),(8012,50300,1,100000),(8012,70024,1,20000),(8012,12262,1,7000),(8012,12392,1,7000),(8012,12532,1,7000),(8012,12672,1,7000),(8013,130,1,6000),(8013,1090,1,6000),(8013,2120,1,6000),(8013,7120,1,6000),(8013,5080,1,6000),(8013,131,1,5000),(8013,1091,1,5000),(8013,2121,1,5000),(8013,7121,1,5000),(8013,5081,1,5000),(8013,132,1,5000),(8013,1092,1,5000),(8013,2122,1,5000),(8013,7122,1,5000),(8013,5082,1,5000),(8013,27002,50,60000),(8013,27003,30,20000),(8013,27005,30,40000),(8013,27006,20,10000),(8013,50300,1,100000),(8013,70014,1,5000),(8013,70037,1,5000),(8013,28230,1,4000),(8013,28231,1,4000),(8013,28232,1,4000),(8013,28233,1,4000),(8013,28234,1,4000),(8013,28235,1,4000),(8013,28236,1,4000),(8013,28237,1,4000),(8013,28238,1,4000),(8013,28239,1,4000),(8013,28240,1,4000),(8013,28241,1,4000),(8013,28242,1,4000),(8013,28243,1,4000),(8013,28330,1,2000),(8013,28331,1,2000),(8013,28332,1,2000),(8013,28333,1,2000),(8013,28334,1,2000),(8013,28335,1,2000),(8013,28336,1,2000),(8013,28337,1,2000),(8013,28338,1,2000),(8013,28339,1,2000),(8013,28340,1,2000),(8013,28341,1,2000),(8013,28342,1,2000),(8013,28343,1,2000),(8013,28430,1,1000),(8013,28431,1,1000),(8013,28432,1,1000),(8013,28433,1,1000),(8013,28434,1,1000),(8013,28435,1,1000),(8013,28436,1,1000),(8013,28437,1,1000),(8013,28438,1,1000),(8013,28439,1,1000),(8013,28440,1,1000),(8013,28441,1,1000),(8013,28442,1,1000),(8013,28443,1,1000),(8013,11280,1,3000),(8013,11480,1,3000),(8013,11680,1,3000),(8013,11880,1,3000),(8013,50513,1,40000),(8013,50300,1,100000),(8013,50300,1,100000),(8013,70024,1,20000),(8014,130,1,6000),(8014,1090,1,6000),(8014,2120,1,6000),(8014,7120,1,6000),(8014,5080,1,6000),(8014,131,1,5000),(8014,1091,1,5000),(8014,2121,1,5000),(8014,7121,1,5000),(8014,5081,1,5000),(8014,132,1,5000),(8014,1092,1,5000),(8014,2122,1,5000),(8014,7122,1,5000),(8014,5082,1,5000),(8014,27002,50,60000),(8014,27003,30,20000),(8014,27005,30,40000),(8014,27006,20,10000),(8014,50300,1,100000),(8014,70014,1,5000),(8014,70037,1,5000),(8014,28230,1,4000),(8014,28231,1,4000),(8014,28232,1,4000),(8014,28233,1,4000),(8014,28234,1,4000),(8014,28235,1,4000),(8014,28236,1,4000),(8014,28237,1,4000),(8014,28238,1,4000),(8014,28239,1,4000),(8014,28240,1,4000),(8014,28241,1,4000),(8014,28242,1,4000),(8014,28243,1,4000),(8014,28330,1,2000),(8014,28331,1,2000),(8014,28332,1,2000),(8014,28333,1,2000),(8014,28334,1,2000),(8014,28335,1,2000),(8014,28336,1,2000),(8014,28337,1,2000),(8014,28338,1,2000),(8014,28339,1,2000),(8014,28340,1,2000),(8014,28341,1,2000),(8014,28342,1,2000),(8014,28343,1,2000),(8014,28430,1,1000),(8014,28431,1,1000),(8014,28432,1,1000),(8014,28433,1,1000),(8014,28434,1,1000),(8014,28435,1,1000),(8014,28436,1,1000),(8014,28437,1,1000),(8014,28438,1,1000),(8014,28439,1,1000),(8014,28440,1,1000),(8014,28441,1,1000),(8014,28442,1,1000),(8014,28443,1,1000),(8014,11280,1,3000),(8014,11480,1,3000),(8014,11680,1,3000),(8014,11880,1,3000),(8014,11283,1,2000),(8014,11483,1,2000),(8014,11683,1,2000),(8014,11863,1,2000),(8014,50513,1,40000),(8014,50300,1,100000),(8014,50300,1,100000),(8014,70024,1,25000),(8015,110,1,6000),(8015,1070,1,6000),(8015,2100,1,6000),(8015,7100,1,6000),(8015,5060,1,6000),(8015,111,1,5000),(8015,1071,1,5000),(8015,2101,1,5000),(8015,7101,1,5000),(8015,5061,1,5000),(8015,28440,1,1000),(8015,28441,1,1000),(8015,28442,1,1000),(8015,28443,1,1000),(8015,50513,1,40000),(8015,50300,1,100000),(8015,50300,1,100000),(8015,70024,1,25000),(8015,28439,1,1000),(8015,27002,50,60000),(8015,27003,30,20000),(8015,27005,30,40000),(8015,27006,20,10000),(8015,50300,1,100000),(8015,70014,1,5000),(8015,70037,1,5000),(8015,28230,1,4000),(8015,28231,1,4000),(8015,28232,1,4000),(8015,28233,1,4000),(8015,28234,1,4000),(8015,28235,1,4000),(8015,28236,1,4000),(8015,28237,1,4000),(8015,28238,1,4000),(8015,28239,1,4000),(8015,28240,1,4000),(8015,28241,1,4000),(8015,28242,1,4000),(8015,28243,1,4000),(8015,28330,1,2000),(8015,28331,1,2000),(8015,28332,1,2000),(8015,28333,1,2000),(8015,28334,1,2000),(8015,28335,1,2000),(8015,28336,1,2000),(8015,28337,1,2000),(8015,28338,1,2000),(8015,28339,1,2000),(8015,28340,1,2000),(8015,28341,1,2000),(8015,28342,1,2000),(8015,28343,1,2000),(8015,28430,1,1000),(8015,28431,1,1000),(8015,28432,1,1000),(8015,28433,1,1000),(8015,28434,1,1000),(8015,28435,1,1000),(8015,28436,1,1000),(8015,28437,1,1000),(8015,28438,1,1000),(8016,120,1,6000),(8016,1080,1,6000),(8016,2110,1,6000),(8016,7110,1,6000),(8016,5070,1,6000),(8016,121,1,5000),(8016,1081,1,5000),(8016,2111,1,5000),(8016,7111,1,5000),(8016,5071,1,5000),(8016,122,1,5000),(8016,1082,1,5000),(8016,2112,1,5000),(8016,7112,1,5000),(8016,5072,1,5000),(8016,27002,50,60000),(8016,27003,30,20000),(8016,27005,30,40000),(8016,27006,20,10000),(8016,50300,1,100000),(8016,70014,1,5000),(8016,70037,1,5000),(8016,28230,1,4000),(8016,28231,1,4000),(8016,28232,1,4000),(8016,28233,1,4000),(8016,28234,1,4000),(8016,28235,1,4000),(8016,28236,1,4000),(8016,28237,1,4000),(8016,28238,1,4000),(8016,28239,1,4000),(8016,28240,1,4000),(8016,28241,1,4000),(8016,28242,1,4000),(8016,28243,1,4000),(8016,28330,1,2000),(8016,28331,1,2000),(8016,28332,1,2000),(8016,28333,1,2000),(8016,28334,1,2000),(8016,28335,1,2000),(8016,28336,1,2000),(8016,28337,1,2000),(8016,28338,1,2000),(8016,28339,1,2000),(8016,28340,1,2000),(8016,28341,1,2000),(8016,28342,1,2000),(8016,28343,1,2000),(8016,28430,1,1000),(8016,28431,1,1000),(8016,28432,1,1000),(8016,28433,1,1000),(8016,28434,1,1000),(8016,28435,1,1000),(8016,28436,1,1000),(8016,28437,1,1000),(8016,28438,1,1000),(8016,28439,1,1000),(8016,28440,1,1000),(8016,28441,1,1000),(8016,28442,1,1000),(8016,28443,1,1000),(8016,11270,1,3000),(8016,11470,1,3000),(8016,11670,1,3000),(8016,11870,1,3000),(8016,50513,1,40000),(8016,50300,1,100000),(8016,50300,1,100000),(8016,70024,1,25000),(8017,130,1,6000),(8017,1090,1,6000),(8017,2120,1,6000),(8017,7120,1,6000),(8017,5080,1,6000),(8017,131,1,5000),(8017,1091,1,5000),(8017,2121,1,5000),(8017,7121,1,5000),(8017,5081,1,5000),(8017,132,1,5000),(8017,1092,1,5000),(8017,2122,1,5000),(8017,7122,1,5000),(8017,5082,1,5000),(8017,27002,50,60000),(8017,27003,30,20000),(8017,27005,30,40000),(8017,27006,20,10000),(8017,50300,1,100000),(8017,70014,1,5000),(8017,70037,1,5000),(8017,28230,1,4000),(8017,28231,1,4000),(8017,28232,1,4000),(8017,28233,1,4000),(8017,28234,1,4000),(8017,28235,1,4000),(8017,28236,1,4000),(8017,28237,1,4000),(8017,28238,1,4000),(8017,28239,1,4000),(8017,28240,1,4000),(8017,28241,1,4000),(8017,28242,1,4000),(8017,28243,1,4000),(8017,28330,1,2000),(8017,28331,1,2000),(8017,28332,1,2000),(8017,28333,1,2000),(8017,28334,1,2000),(8017,28335,1,2000),(8017,28336,1,2000),(8017,28337,1,2000),(8017,28338,1,2000),(8017,28339,1,2000),(8017,28340,1,2000),(8017,28341,1,2000),(8017,28342,1,2000),(8017,28343,1,2000),(8017,28430,1,1000),(8017,28431,1,1000),(8017,28432,1,1000),(8017,28433,1,1000),(8017,28434,1,1000),(8017,28435,1,1000),(8017,28436,1,1000),(8017,28437,1,1000),(8017,28438,1,1000),(8017,28439,1,1000),(8017,28440,1,1000),(8017,28441,1,1000),(8017,28442,1,1000),(8017,28443,1,1000),(8017,11272,1,3000),(8017,11472,1,3000),(8017,11672,1,3000),(8017,11872,1,3000),(8017,13041,1,6000),(8017,50513,1,40000),(8017,50300,1,100000),(8017,50300,1,100000),(8017,70024,1,25000),(8018,130,1,6000),(8018,1090,1,6000),(8018,2120,1,6000),(8018,7120,1,6000),(8018,5080,1,6000),(8018,131,1,5000),(8018,1091,1,5000),(8018,2121,1,5000),(8018,7121,1,5000),(8018,5081,1,5000),(8018,132,1,5000),(8018,1092,1,5000),(8018,2122,1,5000),(8018,7122,1,5000),(8018,5082,1,5000),(8018,27002,50,60000),(8018,27003,30,20000),(8018,27005,30,40000),(8018,27006,20,10000),(8018,50300,1,100000),(8018,70014,1,5000),(8018,70037,1,5000),(8018,28230,1,4000),(8018,28231,1,4000),(8018,28232,1,4000),(8018,28233,1,4000),(8018,28234,1,4000),(8018,28235,1,4000),(8018,28236,1,4000),(8018,28237,1,4000),(8018,28238,1,4000),(8018,28239,1,4000),(8018,28240,1,4000),(8018,28241,1,4000),(8018,28242,1,4000),(8018,28243,1,4000),(8018,28330,1,2000),(8018,28331,1,2000),(8018,28332,1,2000),(8018,28333,1,2000),(8018,28334,1,2000),(8018,28335,1,2000),(8018,28336,1,2000),(8018,28337,1,2000),(8018,28338,1,2000),(8018,28339,1,2000),(8018,28340,1,2000),(8018,28341,1,2000),(8018,28342,1,2000),(8018,28343,1,2000),(8018,28430,1,1000),(8018,28431,1,1000),(8018,28432,1,1000),(8018,28433,1,1000),(8018,28434,1,1000),(8018,28435,1,1000),(8018,28436,1,1000),(8018,28437,1,1000),(8018,28438,1,1000),(8018,28439,1,1000),(8018,28440,1,1000),(8018,28441,1,1000),(8018,28442,1,1000),(8018,28443,1,1000),(8018,11280,1,3000),(8018,11480,1,3000),(8018,11680,1,3000),(8018,11880,1,3000),(8018,50513,1,40000),(8018,50300,1,100000),(8018,50300,1,100000),(8018,70024,1,25000),(8019,130,1,6000),(8019,1090,1,6000),(8019,2120,1,6000),(8019,7120,1,6000),(8019,5080,1,6000),(8019,131,1,5000),(8019,1091,1,5000),(8019,2121,1,5000),(8019,7121,1,5000),(8019,5081,1,5000),(8019,132,1,5000),(8019,1092,1,5000),(8019,2122,1,5000),(8019,7122,1,5000),(8019,5082,1,5000),(8019,27002,50,60000),(8019,27003,30,20000),(8019,27005,30,40000),(8019,27006,20,10000),(8019,50300,1,100000),(8019,70014,1,5000),(8019,70037,1,5000),(8019,28230,1,4000),(8019,28231,1,4000),(8019,28232,1,4000),(8019,28233,1,4000),(8019,28234,1,4000),(8019,28235,1,4000),(8019,28236,1,4000),(8019,28237,1,4000),(8019,28238,1,4000),(8019,28239,1,4000),(8019,28240,1,4000),(8019,28241,1,4000),(8019,28242,1,4000),(8019,28243,1,4000),(8019,28330,1,2000),(8019,28331,1,2000),(8019,28332,1,2000),(8019,28333,1,2000),(8019,28334,1,2000),(8019,28335,1,2000),(8019,28336,1,2000),(8019,28337,1,2000),(8019,28338,1,2000),(8019,28339,1,2000),(8019,28340,1,2000),(8019,28341,1,2000),(8019,28342,1,2000),(8019,28343,1,2000),(8019,28430,1,1000),(8019,28431,1,1000),(8019,28432,1,1000),(8019,28433,1,1000),(8019,28434,1,1000),(8019,28435,1,1000),(8019,28436,1,1000),(8019,28437,1,1000),(8019,28438,1,1000),(8019,28439,1,1000),(8019,28440,1,1000),(8019,28441,1,1000),(8019,28442,1,1000),(8019,28443,1,1000),(8019,11280,1,3000),(8019,11480,1,3000),(8019,11680,1,3000),(8019,11880,1,3000),(8019,11283,1,2000),(8019,11483,1,2000),(8019,11683,1,2000),(8019,11863,1,2000),(8019,50513,1,40000),(8019,50300,1,100000),(8019,50300,1,100000),(8019,70024,1,25000),(8024,3140,1,10000),(8024,3141,1,5000),(8024,1110,1,10000),(8024,1111,1,5000),(8024,2130,1,10000),(8024,2131,1,5000),(8024,7140,1,10000),(8024,7141,1,5000),(8024,5100,1,10000),(8024,5101,1,5000),(8024,160,1,10000),(8024,161,1,5000),(8024,240,1,10000),(8024,241,1,5000),(8024,27002,50,100000),(8024,27003,30,200000),(8024,27005,30,100000),(8024,27006,20,150000),(8024,70014,1,1000),(8024,70037,1,1000),(8024,13060,1,5000),(8024,13080,1,5000),(8024,13080,1,5000),(8024,13120,1,5000),(8024,50300,1,100000),(8024,13062,1,2000),(8024,13082,1,2000),(8024,13082,1,2000),(8024,13122,1,2000),(8024,28330,1,2000),(8024,28331,1,2000),(8024,28332,1,2000),(8024,28333,1,2000),(8024,28334,1,2000),(8024,28335,1,2000),(8024,28336,1,2000),(8024,28337,1,2000),(8024,28338,1,2000),(8024,28339,1,2000),(8024,28340,1,2000),(8024,28341,1,2000),(8024,28342,1,2000),(8024,28343,1,2000),(8024,28430,1,1000),(8024,28431,1,1000),(8024,28432,1,1000),(8024,28433,1,1000),(8024,28434,1,1000),(8024,28435,1,1000),(8024,28436,1,1000),(8024,28437,1,1000),(8024,28438,1,1000),(8024,28439,1,1000),(8024,28440,1,1000),(8024,28441,1,1000),(8024,28442,1,1000),(8024,28443,1,1000),(8024,11283,1,3000),(8024,11483,1,3000),(8024,11683,1,3000),(8024,11863,1,3000),(8024,50513,1,50000),(8024,70038,1,4000),(8024,70043,1,1000),(8024,50300,1,100000),(8024,50300,1,100000),(8024,70024,1,25000),(8025,3140,1,6000),(8025,3141,1,5000),(8025,1110,1,6000),(8025,1111,1,5000),(8025,2130,1,6000),(8025,2131,1,5000),(8025,7140,1,6000),(8025,7141,1,5000),(8025,5100,1,6000),(8025,5101,1,5000),(8025,160,1,6000),(8025,161,1,5000),(8025,240,1,6000),(8025,241,1,5000),(8025,27002,50,60000),(8025,27003,30,20000),(8025,27005,30,40000),(8025,27006,20,10000),(8025,70014,1,5000),(8025,70037,1,5000),(8025,13060,1,6000),(8025,13080,1,6000),(8025,13080,1,6000),(8025,13120,1,6000),(8025,50300,1,100000),(8025,13062,1,4000),(8025,13082,1,4000),(8025,13082,1,4000),(8025,13122,1,4000),(8025,28330,1,2000),(8025,28331,1,2000),(8025,28332,1,2000),(8025,28333,1,2000),(8025,28334,1,2000),(8025,28335,1,2000),(8025,28336,1,2000),(8025,28337,1,2000),(8025,28338,1,2000),(8025,28339,1,2000),(8025,28340,1,2000),(8025,28341,1,2000),(8025,28342,1,2000),(8025,28343,1,2000),(8025,28430,1,1000),(8025,28431,1,1000),(8025,28432,1,1000),(8025,28433,1,1000),(8025,28434,1,1000),(8025,28435,1,1000),(8025,28436,1,1000),(8025,28437,1,1000),(8025,28438,1,1000),(8025,28439,1,1000),(8025,28440,1,1000),(8025,28441,1,1000),(8025,28442,1,1000),(8025,28443,1,1000),(8025,11283,1,3000),(8025,11483,1,3000),(8025,11683,1,3000),(8025,11863,1,3000),(8025,50513,1,50000),(8025,70038,1,4000),(8025,70043,1,2000),(8025,50300,1,100000),(8025,50300,1,100000),(8025,70024,1,30000),(8026,3140,1,6000),(8026,3141,1,5000),(8026,1110,1,6000),(8026,1111,1,5000),(8026,2130,1,6000),(8026,2131,1,5000),(8026,7140,1,6000),(8026,7141,1,5000),(8026,5100,1,6000),(8026,5101,1,5000),(8026,160,1,6000),(8026,161,1,5000),(8026,240,1,6000),(8026,241,1,5000),(8026,27002,50,60000),(8026,27003,30,20000),(8026,27005,30,40000),(8026,27006,20,10000),(8026,70014,1,5000),(8026,70037,1,5000),(8026,13060,1,6000),(8026,13080,1,6000),(8026,13080,1,6000),(8026,13120,1,6000),(8026,50300,1,100000),(8026,13062,1,5000),(8026,13082,1,5000),(8026,13082,1,5000),(8026,13122,1,5000),(8026,28330,1,2000),(8026,28331,1,2000),(8026,28332,1,2000),(8026,28333,1,2000),(8026,28334,1,2000),(8026,28335,1,2000),(8026,28336,1,2000),(8026,28337,1,2000),(8026,28338,1,2000),(8026,28339,1,2000),(8026,28340,1,2000),(8026,28341,1,2000),(8026,28342,1,2000),(8026,28343,1,2000),(8026,28430,1,1000),(8026,28431,1,1000),(8026,28432,1,1000),(8026,28433,1,1000),(8026,28434,1,1000),(8026,28435,1,1000),(8026,28436,1,1000),(8026,28437,1,1000),(8026,28438,1,1000),(8026,28439,1,1000),(8026,28440,1,1000),(8026,28441,1,1000),(8026,28442,1,1000),(8026,28443,1,1000),(8026,11283,1,5000),(8026,11483,1,5000),(8026,11683,1,5000),(8026,11863,1,5000),(8026,70038,1,5000),(8026,70048,1,8000),(8026,70043,1,20000),(8026,70005,1,5000),(8026,27992,1,5000),(8026,27993,1,5000),(8026,27994,1,5000),(8026,50513,1,50000),(8026,50300,1,100000),(8026,50300,1,100000),(8026,70024,1,30000),(8026,11680,1,2000),(8026,11280,1,2000),(8026,11880,1,2000),(8026,11480,1,2000),(8026,25041,1,5000),(8027,3140,1,6000),(8027,3141,1,5000),(8027,1110,1,6000),(8027,1111,1,5000),(8027,2130,1,6000),(8027,2131,1,5000),(8027,7140,1,6000),(8027,7141,1,5000),(8027,5100,1,6000),(8027,5101,1,5000),(8027,160,1,6000),(8027,161,1,5000),(8027,240,1,6000),(8027,241,1,5000),(8027,27002,50,60000),(8027,27003,30,20000),(8027,27005,30,40000),(8027,27006,20,10000),(8027,70014,1,5000),(8027,70037,1,5000),(8027,13060,1,4000),(8027,13080,1,4000),(8027,13080,1,4000),(8027,13120,1,4000),(8027,50300,1,100000),(8027,13062,1,4000),(8027,13082,1,4000),(8027,13082,1,4000),(8027,13122,1,4000),(8027,28330,1,2000),(8027,28331,1,2000),(8027,28332,1,2000),(8027,28333,1,2000),(8027,28334,1,2000),(8027,28335,1,2000),(8027,28336,1,2000),(8027,28337,1,2000),(8027,28338,1,2000),(8027,28339,1,2000),(8027,28340,1,2000),(8027,28341,1,2000),(8027,28342,1,2000),(8027,28343,1,2000),(8027,28430,1,1000),(8027,28431,1,1000),(8027,28432,1,1000),(8027,28433,1,1000),(8027,28434,1,1000),(8027,28435,1,1000),(8027,28436,1,1000),(8027,28437,1,1000),(8027,28438,1,1000),(8027,28439,1,1000),(8027,28440,1,1000),(8027,28441,1,1000),(8027,28442,1,1000),(8027,28443,1,1000),(8027,11283,1,5000),(8027,11483,1,5000),(8027,11683,1,5000),(8027,11863,1,5000),(8027,70038,1,5000),(8027,70048,1,8000),(8027,70043,1,3000),(8027,70005,1,20000),(8027,27992,1,5000),(8027,27993,1,5000),(8027,27994,1,5000),(8027,27987,1,3000),(8027,70103,1,3000),(8027,50513,1,50000),(8027,50300,1,100000),(8027,50300,1,100000),(8027,70024,1,35000),(8027,11290,1,1000),(8027,11490,1,1000),(8027,11690,1,1000),(8027,11890,1,1000),(8027,11680,1,2000),(8027,7130,1,3000),(8027,7131,1,2000),(8027,7132,1,1000),(8027,2140,1,3000),(8027,2141,1,2000),(8027,2142,1,1000),(8027,140,1,3000),(8027,141,1,2000),(8027,142,1,1000),(8027,3130,1,3000),(8027,3131,1,2000),(8027,3132,1,1000),(8027,1100,1,3000),(8027,1101,1,2000),(8027,1102,1,1000),(8027,5090,1,3000),(8027,5091,1,2000),(8027,5092,1,1000),(8027,150,1,3000),(8027,151,1,2000),(8027,152,1,1000),(8027,11280,1,2000),(8027,11880,1,2000),(8027,11480,1,2000),(8027,25041,1,5000),(8051,30500,1,100000),(8051,30506,1,100000),(8051,30512,1,100000),(8051,30518,1,100000),(8051,145,1,80000),(8051,156,1,50000),(8051,1107,1,20000),(8051,7145,1,80000),(8051,11296,1,50000),(8051,11497,1,20000),(8051,70012,1,30000),(8051,39006,1,30000),(8051,25040,1,10000),(8051,70048,1,40000),(8051,70037,1,50000),(8051,70014,1,50000),(8051,72006,1,40000),(8051,39002,1,40000),(8051,27002,50,100000),(8051,27003,30,200000),(8051,27005,30,100000),(8051,27006,20,150000),(8051,50300,1,400000),(8051,70014,1,1000),(8051,70037,1,1000),(8051,100300,1,1000),(8052,30501,1,100000),(8052,30507,1,100000),(8052,30513,1,100000),(8052,30519,1,100000),(8052,146,1,50000),(8052,157,1,20000),(8052,5105,1,80000),(8052,7146,1,50000),(8052,11297,1,20000),(8052,70012,1,30000),(8052,39006,1,30000),(8052,25040,1,10000),(8052,70048,1,40000),(8052,70037,1,50000),(8052,70014,1,50000),(8052,72006,1,40000),(8052,39002,1,40000),(8052,27002,50,100000),(8052,27003,30,200000),(8052,27005,30,100000),(8052,27006,20,150000),(8052,50300,1,400000),(8052,70014,1,1000),(8052,70037,1,1000),(8052,100300,1,1000),(8053,30502,1,100000),(8053,30508,1,100000),(8053,30514,1,100000),(8053,30520,1,100000),(8053,147,1,20000),(8053,3145,1,80000),(8053,5106,1,50000),(8053,7147,1,20000),(8053,11895,1,80000),(8053,70012,1,30000),(8053,39006,1,30000),(8053,25040,1,10000),(8053,70048,1,40000),(8053,70037,1,50000),(8053,70014,1,50000),(8053,72006,1,40000),(8053,39002,1,40000),(8053,27002,50,100000),(8053,27003,30,200000),(8053,27005,30,100000),(8053,27006,20,150000),(8053,50300,1,400000),(8053,70014,1,1000),(8053,70037,1,1000),(8053,100300,1,1000),(8054,30503,1,100000),(8054,30509,1,100000),(8054,30515,1,100000),(8054,30521,1,100000),(8054,2145,1,80000),(8054,3146,1,50000),(8054,5107,1,20000),(8054,11695,1,80000),(8054,11896,1,50000),(8054,70012,1,30000),(8054,39006,1,30000),(8054,25040,1,42000),(8054,70048,1,40000),(8054,70037,1,50000),(8054,70014,1,50000),(8054,72006,1,40000),(8054,39002,1,40000),(8054,27002,50,100000),(8054,27003,30,200000),(8054,27005,30,100000),(8054,27006,20,150000),(8054,50300,1,400000),(8054,70014,1,1000),(8054,70037,1,1000),(8054,100300,1,1000),(8055,30504,1,100000),(8055,30510,1,100000),(8055,30516,1,100000),(8055,30522,1,100000),(8055,1105,1,80000),(8055,2146,1,50000),(8055,3147,1,20000),(8055,11495,1,80000),(8055,11696,1,50000),(8055,11897,1,20000),(8055,70012,1,30000),(8055,39006,1,30000),(8055,25040,1,10000),(8055,70048,1,40000),(8055,70037,1,50000),(8055,70014,1,50000),(8055,72006,1,40000),(8055,39002,1,40000),(8055,27002,50,100000),(8055,27003,30,200000),(8055,27005,30,100000),(8055,27006,20,150000),(8055,50300,1,400000),(8055,70014,1,1000),(8055,70037,1,1000),(8055,100300,1,1000),(8056,30505,1,100000),(8056,30511,1,100000),(8056,30517,1,100000),(8056,30523,1,100000),(8056,155,1,80000),(8056,1106,1,50000),(8056,2147,1,20000),(8056,11295,1,80000),(8056,11496,1,50000),(8056,11697,1,20000),(8056,70012,1,30000),(8056,39006,1,30000),(8056,25040,1,10000),(8056,70048,1,40000),(8056,70037,1,50000),(8056,70014,1,50000),(8056,72006,1,40000),(8056,39002,1,40000),(8056,27002,50,100000),(8056,27003,30,200000),(8056,27005,30,100000),(8056,27006,20,150000),(8056,50300,1,400000),(8056,70014,1,1000),(8056,70037,1,1000),(8056,100300,1,1000),(11506,50117,1,40000),(11506,182,1,10000),(11506,192,1,25000),(11506,1132,1,10000),(11506,2172,1,25000),(11506,3162,1,10000),(11506,5122,1,25000),(11506,183,1,10000),(11506,193,1,25000),(11506,1133,1,10000),(11506,2173,1,25000),(11506,3163,1,10000),(11506,5123,1,25000),(11506,11293,1,10000),(11506,11294,1,50000),(11506,11693,1,20000),(11506,11694,1,50000),(11506,11493,1,20000),(11506,11494,1,50000),(11506,11893,1,20000),(11506,11894,1,50000),(11507,50117,1,40000),(11507,182,1,20000),(11507,192,1,20000),(11507,1132,1,20000),(11507,2172,1,20000),(11507,3162,1,20000),(11507,5122,1,20000),(11507,183,1,20000),(11507,193,1,20000),(11507,1133,1,20000),(11507,2173,1,20000),(11507,3163,1,20000),(11507,5123,1,20000),(11507,11293,1,20000),(11507,11294,1,20000),(11507,11693,1,20000),(11507,11694,1,20000),(11507,11493,1,20000),(11507,11494,1,20000),(11507,11893,1,20000),(11507,11894,1,20000),(11508,50117,1,40000),(11508,182,1,20000),(11508,192,1,20000),(11508,1132,1,20000),(11508,2172,1,20000),(11508,3162,1,20000),(11508,5122,1,20000),(11508,183,1,20000),(11508,193,1,20000),(11508,1133,1,20000),(11508,2173,1,20000),(11508,3163,1,20000),(11508,5123,1,20000),(11508,11293,1,20000),(11508,11294,1,20000),(11508,11693,1,20000),(11508,11694,1,20000),(11508,11493,1,20000),(11508,11494,1,20000),(11508,11893,1,20000),(11508,11894,1,20000),(11509,50117,1,40000),(11509,182,1,20000),(11509,192,1,20000),(11509,1132,1,20000),(11509,2172,1,20000),(11509,3162,1,20000),(11509,5122,1,20000),(11509,183,1,20000),(11509,193,1,20000),(11509,1133,1,20000),(11509,2173,1,20000),(11509,3163,1,20000),(11509,5123,1,20000),(11509,11293,1,20000),(11509,11294,1,20000),(11509,11693,1,20000),(11509,11694,1,20000),(11509,11493,1,20000),(11509,11494,1,20000),(11509,11893,1,20000),(11509,11894,1,20000),(11510,50117,1,40000),(11510,182,1,20000),(11510,192,1,20000),(11510,1132,1,20000),(11510,2172,1,20000),(11510,3162,1,20000),(11510,5122,1,20000),(11510,183,1,20000),(11510,193,1,20000),(11510,1133,1,20000),(11510,2173,1,20000),(11510,3163,1,20000),(11510,5123,1,20000),(11510,11293,1,20000),(11510,11294,1,20000),(11510,11693,1,20000),(11510,11694,1,20000),(11510,11493,1,20000),(11510,11494,1,20000),(11510,11893,1,20000),(11510,11894,1,20000),(11041,50726,1,2000),(2475,171,1,700),(2475,12246,1,100),(2475,14141,1,100),(2475,16183,1,200),(2475,50060,1,800),(2475,50009,1,300),(2475,50724,5,1200),(2475,50728,5,1200),(2475,244,1,300),(2475,146,1,200),(2475,1114,1,300),(2475,5104,1,300),(2475,70031,1,100),(2431,13063,1,100),(2431,14206,1,100),(2431,50060,1,800),(2431,27987,1,100),(2431,50721,5,1200),(2431,50725,5,1200),(2431,70051,1,300),(2431,16065,1,400),(2431,70031,1,100),(2432,13083,1,100),(2432,8005,10,900),(2432,8005,20,300),(2432,27987,1,100),(2432,50722,5,1200),(2432,50726,5,1200),(2432,70050,1,300),(2432,17104,1,200),(2432,70031,1,100),(2433,13103,1,100),(2433,15165,1,100),(2433,16203,1,100),(2433,17184,1,200),(2433,17203,1,300),(2433,27987,1,100),(2433,50723,5,1200),(2433,50727,5,1200),(2433,17105,1,300),(2433,70031,1,100),(2434,13123,1,100),(2434,14143,1,100),(2434,15204,1,200),(2434,16184,1,100),(2434,50060,1,800),(2434,27987,1,100),(2434,50724,5,1200),(2434,50728,5,1200),(2434,70031,1,100),(2451,11690,1,600),(2451,11691,1,500),(2451,13064,1,100),(2451,50060,1,800),(2451,27987,1,100),(2451,50721,5,1200),(2451,50725,5,1200),(2451,70031,1,100),(2452,11490,1,600),(2452,11491,1,500),(2452,13084,1,100),(2452,8005,10,900),(2452,8005,20,300),(2452,27987,1,100),(2452,50009,1,300),(2452,50722,5,1200),(2452,50726,5,1200),(2452,70031,1,100),(2453,11890,1,600),(2453,11891,1,500),(2453,13104,1,100),(2453,16204,1,100),(2453,17204,1,100),(2453,27987,1,100),(2453,50009,1,300),(2453,70031,1,100),(2454,11290,1,600),(2454,11291,1,500),(2454,13124,1,100),(2454,15205,1,100),(2454,50060,1,800),(2454,50009,1,300),(2454,70051,1,300),(2454,70050,1,300),(2454,70031,1,100),(2501,50722,1,100),(2502,50723,1,100),(2503,50724,1,100),(2504,50725,1,100),(2505,50726,1,100),(2506,50727,1,100),(2506,12260,1,200),(2506,12390,1,200),(2506,12530,1,200),(2506,12670,1,200),(2506,11280,1,500),(2506,11880,1,500),(2506,11480,1,500),(2506,11680,1,500),(2507,50728,1,100),(2507,12260,1,200),(2507,12390,1,200),(2507,12530,1,200),(2507,12670,1,200),(2507,11280,1,500),(2507,11880,1,500),(2507,11480,1,500),(2507,11680,1,500),(2541,50722,1,200),(2541,50723,1,200),(2541,12260,1,200),(2541,12390,1,200),(2541,12530,1,200),(2541,12670,1,200),(2541,14180,1,500),(2541,14200,1,0),(2541,16180,1,500),(2541,16200,1,0),(2541,17180,1,500),(2541,17200,1,0),(2542,50722,1,200),(2542,50723,1,200),(2542,12260,1,400),(2542,12390,1,400),(2542,12530,1,400),(2542,12670,1,400),(2542,14220,1,100),(2542,16220,1,100),(2542,17220,1,100),(2543,50724,1,200),(2543,50725,1,200),(2543,13060,1,200),(2543,13080,1,200),(2543,13100,1,200),(2543,13120,1,200),(2543,14180,1,500),(2543,14200,1,0),(2543,16180,1,500),(2543,16200,1,0),(2543,17180,1,500),(2543,17200,1,0),(2544,50724,1,200),(2544,50725,1,200),(2544,12280,1,100),(2544,12400,1,100),(2544,12540,1,100),(2544,12680,1,100),(2545,50726,1,200),(2545,50727,1,200),(2545,13140,1,0),(2545,13060,1,300),(2545,13080,1,300),(2545,13100,1,300),(2545,13120,1,300),(2546,50726,1,200),(2546,50727,1,200),(2546,13140,1,200),(2546,14220,1,200),(2546,16220,1,200),(2546,17220,1,200),(2546,14180,1,500),(2546,14200,1,0),(2546,16180,1,500),(2546,16200,1,0),(2546,17180,1,500),(2546,17200,1,0),(2547,50728,1,200),(2547,12280,1,0),(2547,12400,1,0),(2547,12540,1,0),(2547,12680,1,0),(2547,13140,1,0),(2547,11290,1,200),(2547,11490,1,200),(2547,11890,1,200),(2547,11690,1,200),(2591,12281,1,500),(2591,12401,1,800),(2591,12541,1,800),(2591,12681,1,800),(2591,13141,1,800),(2591,14220,1,800),(2591,16220,1,800),(2591,17220,1,800),(2591,11291,1,100),(2591,11491,1,100),(2591,11891,1,100),(2591,11691,1,100),(2597,12282,1,0),(2597,12402,1,100),(2597,12542,1,100),(2597,12682,1,100),(2597,13142,1,100),(2597,14220,1,100),(2597,16220,1,100),(2597,17220,1,100),(2597,11291,1,100),(2597,11491,1,100),(2597,11891,1,100),(2597,11691,1,100),(2598,50186,1,100000),(2598,12283,1,200),(2598,12403,1,200),(2598,12543,1,200),(2598,12683,1,200),(2598,13143,1,200),(2598,14220,1,200),(2598,16220,1,200),(2598,17220,1,200),(2598,11291,1,200),(2598,11491,1,200),(2598,11891,1,200),(2598,11691,1,200),(2598,3140,1,400),(2598,1110,1,400),(2598,2130,1,400),(2598,7140,1,400),(2598,5100,1,400),(2598,160,1,400),(2598,240,1,400),(1093,30319,1,100000),(1401,50723,1,2000),(1401,50067,1,4000),(1401,50068,1,2000),(1402,50067,1,4000),(1402,50068,1,2000),(1501,50067,1,3000),(1501,50068,1,2000),(1502,50067,1,3000),(1502,50068,1,2000),(1503,50723,1,4000),(1503,50067,1,3000),(1503,50068,1,2000),(1601,50067,1,3000),(1601,50068,1,2000),(1602,50067,1,4000),(1602,50068,1,3000),(1403,50067,1,16000),(1403,50068,1,12000),(1603,50067,1,16000),(1603,50068,1,12000),(2094,30327,1,100000),(2071,0,1,500),(2071,0,1,500),(2071,0,1,500),(2071,0,1,500),(2071,0,1,500),(2071,13194,1,500),(2071,13205,1,500),(2071,0,1,500),(2071,0,1,500),(2072,0,1,500),(2072,0,1,500),(2072,0,1,500),(2072,0,1,500),(2072,0,1,500),(2072,0,1,500),(2072,0,1,500),(2072,0,1,500),(2072,0,1,500),(2073,0,1,500),(2073,0,1,500),(2073,0,1,500),(2073,0,1,500),(2073,0,1,500),(2073,0,1,500),(2073,0,1,500),(2073,0,1,100),(2074,0,1,500),(2074,0,1,500),(2074,0,1,500),(2074,0,1,500),(2074,0,1,500),(2074,0,1,500),(2074,0,1,500),(2074,0,1,100),(2075,0,1,500),(2075,0,1,500),(2075,0,1,500),(2075,0,1,500),(2075,0,1,500),(2075,0,1,500),(2075,0,1,100),(2076,0,1,500),(2076,0,1,500),(2076,0,1,500),(2076,0,1,500),(2076,0,1,500),(2076,0,1,500),(2076,0,1,100),(2091,30326,1,50000),(3001,50721,1,1000),(3002,50722,1,1000),(3003,50723,1,1000),(3004,50724,1,1000),(3005,50725,1,1000),(3090,50726,1,1000),(3090,70012,1,15000),(3090,39006,1,15000),(3090,25040,1,10000),(3090,70048,1,20000),(3090,70037,1,25000),(3090,70014,1,25000),(3090,70043,1,20000),(3090,39002,1,20000),(3090,27002,50,100000),(3090,27003,30,200000),(3090,27005,30,100000),(3090,27006,20,150000),(3090,70014,1,1000),(3090,70037,1,1000),(3090,50254,1,100000),(3090,145,1,15000),(3090,146,1,10000),(3090,155,1,15000),(3090,156,1,10000),(3090,1105,1,15000),(3090,1106,1,10000),(3090,2145,1,15000),(3090,2146,1,10000),(3090,3145,1,15000),(3090,3146,1,10000),(3090,5105,1,15000),(3090,5106,1,10000),(3090,7145,1,15000),(3090,7146,1,10000),(3090,11295,1,15000),(3090,11296,1,10000),(3090,11495,1,15000),(3090,11496,1,10000),(3090,11695,1,15000),(3090,11696,1,10000),(3090,11895,1,15000),(3090,11896,1,10000),(3090,30500,1,40000),(3090,30501,1,40000),(3090,30502,1,40000),(3090,30503,1,40000),(3090,30504,1,40000),(3090,30505,1,40000),(3090,30506,1,40000),(3090,30507,1,40000),(3090,30508,1,40000),(3090,30509,1,40000),(3090,30510,1,40000),(3090,30511,1,40000),(3090,30512,1,40000),(3090,30513,1,40000),(3090,30514,1,40000),(3090,30515,1,40000),(3090,30516,1,40000),(3090,30517,1,40000),(3090,30518,1,40000),(3090,30519,1,40000),(3090,30520,1,40000),(3090,30521,1,40000),(3090,30522,1,40000),(3090,30523,1,40000),(3091,50727,1,1000),(3091,70012,1,15000),(3091,39006,1,15000),(3091,25040,1,10000),(3091,70048,1,20000),(3091,70037,1,25000),(3091,70014,1,25000),(3091,70043,1,20000),(3091,39002,1,20000),(3091,27002,50,100000),(3091,27003,30,200000),(3091,27005,30,100000),(3091,27006,20,150000),(3091,70014,1,1000),(3091,70037,1,1000),(3091,50254,1,400000),(3091,145,1,15000),(3091,146,1,10000),(3091,155,1,15000),(3091,156,1,10000),(3091,1105,1,15000),(3091,1106,1,10000),(3091,2145,1,15000),(3091,2146,1,10000),(3091,3145,1,15000),(3091,3146,1,10000),(3091,5105,1,15000),(3091,5106,1,10000),(3091,7145,1,15000),(3091,7146,1,10000),(3091,11295,1,15000),(3091,11296,1,10000),(3091,11495,1,15000),(3091,11496,1,10000),(3091,11695,1,15000),(3091,11696,1,10000),(3091,11895,1,15000),(3091,11896,1,10000),(3091,30500,1,40000),(3091,30501,1,40000),(3091,30502,1,40000),(3091,30503,1,40000),(3091,30504,1,40000),(3091,30505,1,40000),(3091,30506,1,40000),(3091,30507,1,40000),(3091,30508,1,40000),(3091,30509,1,40000),(3091,30510,1,40000),(3091,30511,1,40000),(3091,30512,1,40000),(3091,30513,1,40000),(3091,30514,1,40000),(3091,30515,1,40000),(3091,30516,1,40000),(3091,30517,1,40000),(3091,30518,1,40000),(3091,30519,1,40000),(3091,30520,1,40000),(3091,30521,1,40000),(3091,30522,1,40000),(3091,30523,1,40000),(3101,50728,1,1000),(3102,50721,1,1000),(3103,50722,1,1000),(3104,50723,1,1000),(3105,50724,1,1000),(3190,50725,1,1000),(3190,70012,1,15000),(3190,39006,1,15000),(3190,25040,1,10000),(3190,70048,1,20000),(3190,70037,1,25000),(3190,70014,1,25000),(3190,70043,1,20000),(3190,39002,1,20000),(3190,27002,50,100000),(3190,27003,30,200000),(3190,27005,30,100000),(3190,27006,20,150000),(3190,70014,1,1000),(3190,70037,1,1000),(3190,50254,1,100000),(3190,145,1,15000),(3190,146,1,10000),(3190,155,1,15000),(3190,156,1,10000),(3190,1105,1,15000),(3190,1106,1,10000),(3190,2145,1,15000),(3190,2146,1,10000),(3190,3145,1,15000),(3190,3146,1,10000),(3190,5105,1,15000),(3190,5106,1,10000),(3190,7145,1,15000),(3190,7146,1,10000),(3190,11295,1,15000),(3190,11296,1,10000),(3190,11495,1,15000),(3190,11496,1,10000),(3190,11695,1,15000),(3190,11696,1,10000),(3190,11895,1,15000),(3190,11896,1,10000),(3190,30500,1,40000),(3190,30501,1,40000),(3190,30502,1,40000),(3190,30503,1,40000),(3190,30504,1,40000),(3190,30505,1,40000),(3190,30506,1,40000),(3190,30507,1,40000),(3190,30508,1,40000),(3190,30509,1,40000),(3190,30510,1,40000),(3190,30511,1,40000),(3190,30512,1,40000),(3190,30513,1,40000),(3190,30514,1,40000),(3190,30515,1,40000),(3190,30516,1,40000),(3190,30517,1,40000),(3190,30518,1,40000),(3190,30519,1,40000),(3190,30520,1,40000),(3190,30521,1,40000),(3190,30522,1,40000),(3190,30523,1,40000),(3191,50726,1,1000),(3191,70012,1,15000),(3191,39006,1,15000),(3191,25040,1,10000),(3191,70048,1,20000),(3191,70037,1,25000),(3191,70014,1,25000),(3191,70043,1,20000),(3191,39002,1,20000),(3191,27002,50,100000),(3191,27003,30,200000),(3191,27005,30,100000),(3191,27006,20,150000),(3191,70014,1,1000),(3191,70037,1,1000),(3191,50254,1,400000),(3191,145,1,30000),(3191,146,1,20000),(3191,155,1,30000),(3191,156,1,20000),(3191,1105,1,30000),(3191,1106,1,20000),(3191,2145,1,30000),(3191,2146,1,20000),(3191,3145,1,30000),(3191,3146,1,20000),(3191,5105,1,30000),(3191,5106,1,20000),(3191,7145,1,30000),(3191,7146,1,20000),(3191,11295,1,30000),(3191,11296,1,20000),(3191,11495,1,30000),(3191,11496,1,20000),(3191,11695,1,30000),(3191,11696,1,20000),(3191,11895,1,30000),(3191,11896,1,20000),(3191,30500,1,60000),(3191,30501,1,60000),(3191,30502,1,60000),(3191,30503,1,60000),(3191,30504,1,60000),(3191,30505,1,60000),(3191,30506,1,60000),(3191,30507,1,60000),(3191,30508,1,60000),(3191,30509,1,60000),(3191,30510,1,60000),(3191,30511,1,60000),(3191,30512,1,60000),(3191,30513,1,60000),(3191,30514,1,60000),(3191,30515,1,60000),(3191,30516,1,60000),(3191,30517,1,60000),(3191,30518,1,60000),(3191,30519,1,60000),(3191,30520,1,60000),(3191,30521,1,60000),(3191,30522,1,60000),(3191,30523,1,60000),(3201,50727,1,1000),(3202,50728,1,1000),(3203,50721,1,1000),(3204,50722,1,1000),(3205,50723,1,1000),(3290,50724,1,1000),(3290,70012,1,15000),(3290,39006,1,15000),(3290,25040,1,10000),(3290,70048,1,20000),(3290,70037,1,25000),(3290,70014,1,25000),(3290,70043,1,20000),(3290,39002,1,20000),(3290,27002,50,100000),(3290,27003,30,200000),(3290,27005,30,100000),(3290,27006,20,150000),(3290,70014,1,1000),(3290,70037,1,1000),(3290,50254,1,100000),(3290,145,1,15000),(3290,146,1,10000),(3290,155,1,15000),(3290,156,1,10000),(3290,1105,1,15000),(3290,1106,1,10000),(3290,2145,1,15000),(3290,2146,1,10000),(3290,3145,1,15000),(3290,3146,1,10000),(3290,5105,1,15000),(3290,5106,1,10000),(3290,7145,1,15000),(3290,7146,1,10000),(3290,11295,1,15000),(3290,11296,1,10000),(3290,11495,1,15000),(3290,11496,1,10000),(3290,11695,1,15000),(3290,11696,1,10000),(3290,11895,1,15000),(3290,11896,1,10000),(3290,30500,1,40000),(3290,30501,1,40000),(3290,30502,1,40000),(3290,30503,1,40000),(3290,30504,1,40000),(3290,30505,1,40000),(3290,30506,1,40000),(3290,30507,1,40000),(3290,30508,1,40000),(3290,30509,1,40000),(3290,30510,1,40000),(3290,30511,1,40000),(3290,30512,1,40000),(3290,30513,1,40000),(3290,30514,1,40000),(3290,30515,1,40000),(3290,30516,1,40000),(3290,30517,1,40000),(3290,30518,1,40000),(3290,30519,1,40000),(3290,30520,1,40000),(3290,30521,1,40000),(3290,30522,1,40000),(3290,30523,1,40000),(3291,50725,1,1000),(3291,70012,1,15000),(3291,39006,1,15000),(3291,25040,1,10000),(3291,70048,1,20000),(3291,70037,1,25000),(3291,70014,1,25000),(3291,70043,1,20000),(3291,39002,1,20000),(3291,27002,50,100000),(3291,27003,30,200000),(3291,27005,30,100000),(3291,27006,20,150000),(3291,70014,1,1000),(3291,70037,1,1000),(3291,50254,1,400000),(3291,145,1,30000),(3291,146,1,20000),(3291,155,1,30000),(3291,156,1,20000),(3291,1105,1,30000),(3291,1106,1,20000),(3291,2145,1,30000),(3291,2146,1,20000),(3291,3145,1,30000),(3291,3146,1,20000),(3291,5105,1,30000),(3291,5106,1,20000),(3291,7145,1,30000),(3291,7146,1,20000),(3291,11295,1,30000),(3291,11296,1,20000),(3291,11495,1,30000),(3291,11496,1,20000),(3291,11695,1,30000),(3291,11696,1,20000),(3291,11895,1,30000),(3291,11896,1,20000),(3291,30500,1,60000),(3291,30501,1,60000),(3291,30502,1,60000),(3291,30503,1,60000),(3291,30504,1,60000),(3291,30505,1,60000),(3291,30506,1,60000),(3291,30507,1,60000),(3291,30508,1,60000),(3291,30509,1,60000),(3291,30510,1,60000),(3291,30511,1,60000),(3291,30512,1,60000),(3291,30513,1,60000),(3291,30514,1,60000),(3291,30515,1,60000),(3291,30516,1,60000),(3291,30517,1,60000),(3291,30518,1,60000),(3291,30519,1,60000),(3291,30520,1,60000),(3291,30521,1,60000),(3291,30522,1,60000),(3291,30523,1,60000),(3301,50726,1,1000),(3302,50727,1,1000),(3303,50728,1,1000),(3304,50721,1,1000),(3305,50722,1,1000),(3390,50723,1,1000),(3390,70012,1,15000),(3390,39006,1,15000),(3390,25040,1,10000),(3390,70048,1,20000),(3390,70037,1,25000),(3390,70014,1,25000),(3390,70043,1,20000),(3390,39002,1,20000),(3390,27002,50,100000),(3390,27003,30,200000),(3390,27005,30,100000),(3390,27006,20,150000),(3390,70014,1,1000),(3390,70037,1,1000),(3390,50254,1,100000),(3390,145,1,15000),(3390,146,1,10000),(3390,155,1,15000),(3390,156,1,10000),(3390,1105,1,15000),(3390,1106,1,10000),(3390,2145,1,15000),(3390,2146,1,10000),(3390,3145,1,15000),(3390,3146,1,10000),(3390,5105,1,15000),(3390,5106,1,10000),(3390,7145,1,15000),(3390,7146,1,10000),(3390,11295,1,15000),(3390,11296,1,10000),(3390,11495,1,15000),(3390,11496,1,10000),(3390,11695,1,15000),(3390,11696,1,10000),(3390,11895,1,15000),(3390,11896,1,10000),(3390,30500,1,40000),(3390,30501,1,40000),(3390,30502,1,40000),(3390,30503,1,40000),(3390,30504,1,40000),(3390,30505,1,40000),(3390,30506,1,40000),(3390,30507,1,40000),(3390,30508,1,40000),(3390,30509,1,40000),(3390,30510,1,40000),(3390,30511,1,40000),(3390,30512,1,40000),(3390,30513,1,40000),(3390,30514,1,40000),(3390,30515,1,40000),(3390,30516,1,40000),(3390,30517,1,40000),(3390,30518,1,40000),(3390,30519,1,40000),(3390,30520,1,40000),(3390,30521,1,40000),(3390,30522,1,40000),(3390,30523,1,40000),(3391,50724,1,1000),(3391,70012,1,15000),(3391,39006,1,15000),(3391,25040,1,10000),(3391,70048,1,20000),(3391,70037,1,25000),(3391,70014,1,25000),(3391,70043,1,20000),(3391,39002,1,20000),(3391,27002,50,100000),(3391,27003,30,200000),(3391,27005,30,100000),(3391,27006,20,150000),(3391,70014,1,1000),(3391,70037,1,1000),(3391,50254,1,400000),(3391,145,1,30000),(3391,146,1,20000),(3391,155,1,30000),(3391,156,1,20000),(3391,1105,1,30000),(3391,1106,1,20000),(3391,2145,1,30000),(3391,2146,1,20000),(3391,3145,1,30000),(3391,3146,1,20000),(3391,5105,1,30000),(3391,5106,1,20000),(3391,7145,1,30000),(3391,7146,1,20000),(3391,11295,1,30000),(3391,11296,1,20000),(3391,11495,1,30000),(3391,11496,1,20000),(3391,11695,1,30000),(3391,11696,1,20000),(3391,11895,1,30000),(3391,11896,1,20000),(3391,30500,1,60000),(3391,30501,1,60000),(3391,30502,1,60000),(3391,30503,1,60000),(3391,30504,1,60000),(3391,30505,1,60000),(3391,30506,1,60000),(3391,30507,1,60000),(3391,30508,1,60000),(3391,30509,1,60000),(3391,30510,1,60000),(3391,30511,1,60000),(3391,30512,1,60000),(3391,30513,1,60000),(3391,30514,1,60000),(3391,30515,1,60000),(3391,30516,1,60000),(3391,30517,1,60000),(3391,30518,1,60000),(3391,30519,1,60000),(3391,30520,1,60000),(3391,30521,1,60000),(3391,30522,1,60000),(3391,30523,1,60000),(3401,50725,1,1000),(3402,50726,1,1000),(3403,50727,1,1000),(3404,50728,1,1000),(3405,50721,1,1000),(3490,50722,1,1000),(3490,70012,1,15000),(3490,39006,1,15000),(3490,25040,1,10000),(3490,70048,1,20000),(3490,70037,1,25000),(3490,70014,1,25000),(3490,70043,1,20000),(3490,39002,1,20000),(3490,27002,50,100000),(3490,27003,30,200000),(3490,27005,30,100000),(3490,27006,20,150000),(3490,70014,1,1000),(3490,70037,1,1000),(3490,50254,1,100000),(3490,145,1,15000),(3490,146,1,10000),(3490,155,1,15000),(3490,156,1,10000),(3490,1105,1,15000),(3490,1106,1,10000),(3490,2145,1,15000),(3490,2146,1,10000),(3490,3145,1,15000),(3490,3146,1,10000),(3490,5105,1,15000),(3490,5106,1,10000),(3490,7145,1,15000),(3490,7146,1,10000),(3490,11295,1,15000),(3490,11296,1,10000),(3490,11495,1,15000),(3490,11496,1,10000),(3490,11695,1,15000),(3490,11696,1,10000),(3490,11895,1,15000),(3490,11896,1,10000),(3490,30500,1,40000),(3490,30501,1,40000),(3490,30502,1,40000),(3490,30503,1,40000),(3490,30504,1,40000),(3490,30505,1,40000),(3490,30506,1,40000),(3490,30507,1,40000),(3490,30508,1,40000),(3490,30509,1,40000),(3490,30510,1,40000),(3490,30511,1,40000),(3490,30512,1,40000),(3490,30513,1,40000),(3490,30514,1,40000),(3490,30515,1,40000),(3490,30516,1,40000),(3490,30517,1,40000),(3490,30518,1,40000),(3490,30519,1,40000),(3490,30520,1,40000),(3490,30521,1,40000),(3490,30522,1,40000),(3490,30523,1,40000),(3491,50723,1,1000),(3491,70012,1,15000),(3491,39006,1,15000),(3491,25040,1,10000),(3491,70048,1,20000),(3491,70037,1,25000),(3491,70014,1,25000),(3491,70043,1,20000),(3491,39002,1,20000),(3491,27002,50,100000),(3491,27003,30,200000),(3491,27005,30,100000),(3491,27006,20,150000),(3491,70014,1,1000),(3491,70037,1,1000),(3491,50254,1,400000),(3491,145,1,30000),(3491,146,1,20000),(3491,155,1,30000),(3491,156,1,20000),(3491,1105,1,30000),(3491,1106,1,20000),(3491,2145,1,30000),(3491,2146,1,20000),(3491,3145,1,30000),(3491,3146,1,20000),(3491,5105,1,30000),(3491,5106,1,20000),(3491,7145,1,30000),(3491,7146,1,20000),(3491,11295,1,30000),(3491,11296,1,20000),(3491,11495,1,30000),(3491,11496,1,20000),(3491,11695,1,30000),(3491,11696,1,20000),(3491,11895,1,30000),(3491,11896,1,20000),(3491,30500,1,60000),(3491,30501,1,60000),(3491,30502,1,60000),(3491,30503,1,60000),(3491,30504,1,60000),(3491,30505,1,60000),(3491,30506,1,60000),(3491,30507,1,60000),(3491,30508,1,60000),(3491,30509,1,60000),(3491,30510,1,60000),(3491,30511,1,60000),(3491,30512,1,60000),(3491,30513,1,60000),(3491,30514,1,60000),(3491,30515,1,60000),(3491,30516,1,60000),(3491,30517,1,60000),(3491,30518,1,60000),(3491,30519,1,60000),(3491,30520,1,60000),(3491,30521,1,60000),(3491,30522,1,60000),(3491,30523,1,60000),(3501,50724,1,1000),(3502,50725,1,1000),(3503,50726,1,1000),(3504,50727,1,1000),(3505,50728,1,1000),(3590,50726,1,1000),(3590,70012,1,15000),(3590,39006,1,15000),(3590,25040,1,10000),(3590,70048,1,20000),(3590,70037,1,25000),(3590,70014,1,25000),(3590,70043,1,20000),(3590,39002,1,20000),(3590,27002,50,100000),(3590,27003,30,200000),(3590,27005,30,100000),(3590,27006,20,150000),(3590,70014,1,1000),(3590,70037,1,1000),(3590,50254,1,100000),(3590,145,1,30000),(3590,146,1,20000),(3590,155,1,30000),(3590,156,1,20000),(3590,1105,1,30000),(3590,1106,1,20000),(3590,2145,1,30000),(3590,2146,1,20000),(3590,3145,1,30000),(3590,3146,1,20000),(3590,5105,1,30000),(3590,5106,1,20000),(3590,7145,1,30000),(3590,7146,1,20000),(3590,11295,1,30000),(3590,11296,1,20000),(3590,11495,1,30000),(3590,11496,1,20000),(3590,11695,1,30000),(3590,11696,1,20000),(3590,11895,1,30000),(3590,11896,1,20000),(3590,30500,1,60000),(3590,30501,1,60000),(3590,30502,1,60000),(3590,30503,1,60000),(3590,30504,1,60000),(3590,30505,1,60000),(3590,30506,1,60000),(3590,30507,1,60000),(3590,30508,1,60000),(3590,30509,1,60000),(3590,30510,1,60000),(3590,30511,1,60000),(3590,30512,1,60000),(3590,30513,1,60000),(3590,30514,1,60000),(3590,30515,1,60000),(3590,30516,1,60000),(3590,30517,1,60000),(3590,30518,1,60000),(3590,30519,1,60000),(3590,30520,1,60000),(3590,30521,1,60000),(3590,30522,1,60000),(3590,30523,1,60000),(3591,50727,1,1000),(3591,70012,1,15000),(3591,39006,1,15000),(3591,25040,1,10000),(3591,70048,1,20000),(3591,70037,1,25000),(3591,70014,1,25000),(3591,70043,1,20000),(3591,39002,1,20000),(3591,27002,50,100000),(3591,27003,30,200000),(3591,27005,30,100000),(3591,27006,20,150000),(3591,70014,1,1000),(3591,70037,1,1000),(3591,50254,1,400000),(3591,145,1,30000),(3591,146,1,20000),(3591,155,1,30000),(3591,156,1,20000),(3591,1105,1,30000),(3591,1106,1,20000),(3591,2145,1,30000),(3591,2146,1,20000),(3591,3145,1,30000),(3591,3146,1,20000),(3591,5105,1,30000),(3591,5106,1,20000),(3591,7145,1,30000),(3591,7146,1,20000),(3591,11295,1,30000),(3591,11296,1,20000),(3591,11495,1,30000),(3591,11496,1,20000),(3591,11695,1,30000),(3591,11696,1,20000),(3591,11895,1,30000),(3591,11896,1,20000),(3591,30500,1,60000),(3591,30501,1,60000),(3591,30502,1,60000),(3591,30503,1,60000),(3591,30504,1,60000),(3591,30505,1,60000),(3591,30506,1,60000),(3591,30507,1,60000),(3591,30508,1,60000),(3591,30509,1,60000),(3591,30510,1,60000),(3591,30511,1,60000),(3591,30512,1,60000),(3591,30513,1,60000),(3591,30514,1,60000),(3591,30515,1,60000),(3591,30516,1,60000),(3591,30517,1,60000),(3591,30518,1,60000),(3591,30519,1,60000),(3591,30520,1,60000),(3591,30521,1,60000),(3591,30522,1,60000),(3591,30523,1,60000),(3551,50721,1,1000),(3552,50722,1,1000),(3553,50723,1,1000),(3554,50724,1,1000),(3555,50725,1,1000),(3595,50728,1,1000),(3595,70012,1,15000),(3595,39006,1,15000),(3595,25040,1,10000),(3595,70048,1,20000),(3595,70037,1,25000),(3595,70014,1,25000),(3595,70043,1,20000),(3595,39002,1,20000),(3595,27002,50,100000),(3595,27003,30,200000),(3595,27005,30,100000),(3595,27006,20,150000),(3595,70014,1,1000),(3595,70037,1,1000),(3595,50254,1,100000),(3595,145,1,15000),(3595,146,1,10000),(3595,155,1,15000),(3595,156,1,10000),(3595,1105,1,15000),(3595,1106,1,10000),(3595,2145,1,15000),(3595,2146,1,10000),(3595,3145,1,15000),(3595,3146,1,10000),(3595,5105,1,15000),(3595,5106,1,10000),(3595,7145,1,15000),(3595,7146,1,10000),(3595,11295,1,15000),(3595,11296,1,10000),(3595,11495,1,15000),(3595,11496,1,10000),(3595,11695,1,15000),(3595,11696,1,10000),(3595,11895,1,15000),(3595,11896,1,10000),(3595,30500,1,40000),(3595,30501,1,40000),(3595,30502,1,40000),(3595,30503,1,40000),(3595,30504,1,40000),(3595,30505,1,40000),(3595,30506,1,40000),(3595,30507,1,40000),(3595,30508,1,40000),(3595,30509,1,40000),(3595,30510,1,40000),(3595,30511,1,40000),(3595,30512,1,40000),(3595,30513,1,40000),(3595,30514,1,40000),(3595,30515,1,40000),(3595,30516,1,40000),(3595,30517,1,40000),(3595,30518,1,40000),(3595,30519,1,40000),(3595,30520,1,40000),(3595,30521,1,40000),(3595,30522,1,40000),(3595,30523,1,40000),(3596,50721,1,1000),(3596,70012,1,15000),(3596,39006,1,15000),(3596,25040,1,10000),(3596,70048,1,20000),(3596,70037,1,25000),(3596,70014,1,25000),(3596,70043,1,20000),(3596,39002,1,20000),(3596,27002,50,100000),(3596,27003,30,200000),(3596,27005,30,100000),(3596,27006,20,150000),(3596,70014,1,1000),(3596,70037,1,1000),(3596,50254,1,400000),(3596,145,1,30000),(3596,146,1,20000),(3596,155,1,30000),(3596,156,1,20000),(3596,1105,1,30000),(3596,1106,1,20000),(3596,2145,1,30000),(3596,2146,1,20000),(3596,3145,1,30000),(3596,3146,1,20000),(3596,5105,1,30000),(3596,5106,1,20000),(3596,7145,1,30000),(3596,7146,1,20000),(3596,11295,1,30000),(3596,11296,1,20000),(3596,11495,1,30000),(3596,11496,1,20000),(3596,11695,1,30000),(3596,11696,1,20000),(3596,11895,1,30000),(3596,11896,1,20000),(3596,30500,1,60000),(3596,30501,1,60000),(3596,30502,1,60000),(3596,30503,1,60000),(3596,30504,1,60000),(3596,30505,1,60000),(3596,30506,1,60000),(3596,30507,1,60000),(3596,30508,1,60000),(3596,30509,1,60000),(3596,30510,1,60000),(3596,30511,1,60000),(3596,30512,1,60000),(3596,30513,1,60000),(3596,30514,1,60000),(3596,30515,1,60000),(3596,30516,1,60000),(3596,30517,1,60000),(3596,30518,1,60000),(3596,30519,1,60000),(3596,30520,1,60000),(3596,30521,1,60000),(3596,30522,1,60000),(3596,30523,1,60000),(3601,50722,1,1000),(3602,50723,1,1000),(3603,50724,1,1000),(3604,50725,1,1000),(3605,50726,1,1000),(3690,50727,1,1000),(3690,70012,1,15000),(3690,39006,1,15000),(3690,25040,1,10000),(3690,70048,1,20000),(3690,70037,1,25000),(3690,70014,1,25000),(3690,70043,1,20000),(3690,39002,1,20000),(3690,27002,50,100000),(3690,27003,30,200000),(3690,27005,30,100000),(3690,27006,20,150000),(3690,70014,1,1000),(3690,70037,1,1000),(3690,50254,1,100000),(3690,145,1,15000),(3690,146,1,10000),(3690,155,1,15000),(3690,156,1,10000),(3690,1105,1,15000),(3690,1106,1,10000),(3690,2145,1,15000),(3690,2146,1,10000),(3690,3145,1,15000),(3690,3146,1,10000),(3690,5105,1,15000),(3690,5106,1,10000),(3690,7145,1,15000),(3690,7146,1,10000),(3690,11295,1,15000),(3690,11296,1,10000),(3690,11495,1,15000),(3690,11496,1,10000),(3690,11695,1,15000),(3690,11696,1,10000),(3690,11895,1,15000),(3690,11896,1,10000),(3690,30500,1,40000),(3690,30501,1,40000),(3690,30502,1,40000),(3690,30503,1,40000),(3690,30504,1,40000),(3690,30505,1,40000),(3690,30506,1,40000),(3690,30507,1,40000),(3690,30508,1,40000),(3690,30509,1,40000),(3690,30510,1,40000),(3690,30511,1,40000),(3690,30512,1,40000),(3690,30513,1,40000),(3690,30514,1,40000),(3690,30515,1,40000),(3690,30516,1,40000),(3690,30517,1,40000),(3690,30518,1,40000),(3690,30519,1,40000),(3690,30520,1,40000),(3690,30521,1,40000),(3690,30522,1,40000),(3690,30523,1,40000),(3691,50728,1,1000),(3691,70012,1,15000),(3691,39006,1,15000),(3691,25040,1,10000),(3691,70048,1,20000),(3691,70037,1,25000),(3691,70014,1,25000),(3691,70043,1,20000),(3691,39002,1,20000),(3691,27002,50,100000),(3691,27003,30,200000),(3691,27005,30,100000),(3691,27006,20,150000),(3691,70014,1,1000),(3691,70037,1,1000),(3691,50254,1,400000),(3691,145,1,30000),(3691,146,1,20000),(3691,155,1,30000),(3691,156,1,20000),(3691,1105,1,30000),(3691,1106,1,20000),(3691,2145,1,30000),(3691,2146,1,20000),(3691,3145,1,30000),(3691,3146,1,20000),(3691,5105,1,30000),(3691,5106,1,20000),(3691,7145,1,30000),(3691,7146,1,20000),(3691,11295,1,30000),(3691,11296,1,20000),(3691,11495,1,30000),(3691,11496,1,20000),(3691,11695,1,30000),(3691,11696,1,20000),(3691,11895,1,30000),(3691,11896,1,20000),(3691,30500,1,60000),(3691,30501,1,60000),(3691,30502,1,60000),(3691,30503,1,60000),(3691,30504,1,60000),(3691,30505,1,60000),(3691,30506,1,60000),(3691,30507,1,60000),(3691,30508,1,60000),(3691,30509,1,60000),(3691,30510,1,60000),(3691,30511,1,60000),(3691,30512,1,60000),(3691,30513,1,60000),(3691,30514,1,60000),(3691,30515,1,60000),(3691,30516,1,60000),(3691,30517,1,60000),(3691,30518,1,60000),(3691,30519,1,60000),(3691,30520,1,60000),(3691,30521,1,60000),(3691,30522,1,60000),(3691,30523,1,60000),(3701,50721,1,1000),(3702,50722,1,1000),(3703,50723,1,1000),(3704,50724,1,1000),(3705,50725,1,1000),(3790,50726,1,1000),(3790,70012,1,15000),(3790,39006,1,15000),(3790,25040,1,10000),(3790,70048,1,20000),(3790,70037,1,25000),(3790,70014,1,25000),(3790,70043,1,20000),(3790,39002,1,20000),(3790,27002,50,100000),(3790,27003,30,200000),(3790,27005,30,100000),(3790,27006,20,150000),(3790,70014,1,1000),(3790,70037,1,1000),(3790,50254,1,100000),(3790,145,1,15000),(3790,146,1,10000),(3790,155,1,15000),(3790,156,1,10000),(3790,1105,1,15000),(3790,1106,1,10000),(3790,2145,1,15000),(3790,2146,1,10000),(3790,3145,1,15000),(3790,3146,1,10000),(3790,5105,1,15000),(3790,5106,1,10000),(3790,7145,1,15000),(3790,7146,1,10000),(3790,11295,1,15000),(3790,11296,1,10000),(3790,11495,1,15000),(3790,11496,1,10000),(3790,11695,1,15000),(3790,11696,1,10000),(3790,11895,1,15000),(3790,11896,1,10000),(3790,30500,1,40000),(3790,30501,1,40000),(3790,30502,1,40000),(3790,30503,1,40000),(3790,30504,1,40000),(3790,30505,1,40000),(3790,30506,1,40000),(3790,30507,1,40000),(3790,30508,1,40000),(3790,30509,1,40000),(3790,30510,1,40000),(3790,30511,1,40000),(3790,30512,1,40000),(3790,30513,1,40000),(3790,30514,1,40000),(3790,30515,1,40000),(3790,30516,1,40000),(3790,30517,1,40000),(3790,30518,1,40000),(3790,30519,1,40000),(3790,30520,1,40000),(3790,30521,1,40000),(3790,30522,1,40000),(3790,30523,1,40000),(3791,50727,1,1000),(3791,70012,1,15000),(3791,39006,1,15000),(3791,25040,1,10000),(3791,70048,1,20000),(3791,70037,1,25000),(3791,70014,1,25000),(3791,70043,1,20000),(3791,39002,1,20000),(3791,27002,50,100000),(3791,27003,30,200000),(3791,27005,30,100000),(3791,27006,20,150000),(3791,70014,1,1000),(3791,70037,1,1000),(3791,50254,1,400000),(3791,145,1,30000),(3791,146,1,20000),(3791,155,1,30000),(3791,156,1,20000),(3791,1105,1,30000),(3791,1106,1,20000),(3791,2145,1,30000),(3791,2146,1,20000),(3791,3145,1,30000),(3791,3146,1,20000),(3791,5105,1,30000),(3791,5106,1,20000),(3791,7145,1,30000),(3791,7146,1,20000),(3791,11295,1,30000),(3791,11296,1,20000),(3791,11495,1,30000),(3791,11496,1,20000),(3791,11695,1,30000),(3791,11696,1,20000),(3791,11895,1,30000),(3791,11896,1,20000),(3791,30500,1,60000),(3791,30501,1,60000),(3791,30502,1,60000),(3791,30503,1,60000),(3791,30504,1,60000),(3791,30505,1,60000),(3791,30506,1,60000),(3791,30507,1,60000),(3791,30508,1,60000),(3791,30509,1,60000),(3791,30510,1,60000),(3791,30511,1,60000),(3791,30512,1,60000),(3791,30513,1,60000),(3791,30514,1,60000),(3791,30515,1,60000),(3791,30516,1,60000),(3791,30517,1,60000),(3791,30518,1,60000),(3791,30519,1,60000),(3791,30520,1,60000),(3791,30521,1,60000),(3791,30522,1,60000),(3791,30523,1,60000),(3801,50728,1,1000),(3802,50721,1,1000),(3803,50722,1,1000),(3804,50723,1,1000),(3805,50724,1,1000),(3890,50725,1,1000),(3890,70012,1,15000),(3890,39006,1,15000),(3890,25040,1,10000),(3890,70048,1,20000),(3890,70037,1,25000),(3890,70014,1,25000),(3890,70043,1,20000),(3890,39002,1,20000),(3890,27002,50,100000),(3890,27003,30,200000),(3890,27005,30,100000),(3890,27006,20,150000),(3890,70014,1,1000),(3890,70037,1,1000),(3890,50254,1,100000),(3890,145,1,15000),(3890,146,1,10000),(3890,155,1,15000),(3890,156,1,10000),(3890,1105,1,15000),(3890,1106,1,10000),(3890,2145,1,15000),(3890,2146,1,10000),(3890,3145,1,15000),(3890,3146,1,10000),(3890,5105,1,15000),(3890,5106,1,10000),(3890,7145,1,15000),(3890,7146,1,10000),(3890,11295,1,15000),(3890,11296,1,10000),(3890,11495,1,15000),(3890,11496,1,10000),(3890,11695,1,15000),(3890,11696,1,10000),(3890,11895,1,15000),(3890,11896,1,10000),(3890,30500,1,40000),(3890,30501,1,40000),(3890,30502,1,40000),(3890,30503,1,40000),(3890,30504,1,40000),(3890,30505,1,40000),(3890,30506,1,40000),(3890,30507,1,40000),(3890,30508,1,40000),(3890,30509,1,40000),(3890,30510,1,40000),(3890,30511,1,40000),(3890,30512,1,40000),(3890,30513,1,40000),(3890,30514,1,40000),(3890,30515,1,40000),(3890,30516,1,40000),(3890,30517,1,40000),(3890,30518,1,40000),(3890,30519,1,40000),(3890,30520,1,40000),(3890,30521,1,40000),(3890,30522,1,40000),(3890,30523,1,40000),(3891,50726,1,1000),(3891,70012,1,15000),(3891,39006,1,15000),(3891,25040,1,10000),(3891,70048,1,20000),(3891,70037,1,25000),(3891,70014,1,25000),(3891,70043,1,20000),(3891,39002,1,20000),(3891,27002,50,100000),(3891,27003,30,200000),(3891,27005,30,100000),(3891,50300,1,400000),(3891,70014,1,1000),(3891,70037,1,1000),(3891,50254,1,400000),(3891,145,1,30000),(3891,146,1,20000),(3891,155,1,30000),(3891,156,1,20000),(3891,1105,1,30000),(3891,1106,1,20000),(3891,2145,1,30000),(3891,2146,1,20000),(3891,3145,1,30000),(3891,3146,1,20000),(3891,5105,1,30000),(3891,5106,1,20000),(3891,7145,1,30000),(3891,7146,1,20000),(3891,11295,1,30000),(3891,11296,1,20000),(3891,11495,1,30000),(3891,11496,1,20000),(3891,11695,1,30000),(3891,11696,1,20000),(3891,11895,1,30000),(3891,11896,1,20000),(3891,30500,1,60000),(3891,30501,1,60000),(3891,30502,1,60000),(3891,30503,1,60000),(3891,30504,1,60000),(3891,30505,1,60000),(3891,30506,1,60000),(3891,30507,1,60000),(3891,30508,1,60000),(3891,30509,1,60000),(3891,30510,1,60000),(3891,30511,1,60000),(3891,30512,1,60000),(3891,30513,1,60000),(3891,30514,1,60000),(3891,30515,1,60000),(3891,30516,1,60000),(3891,30517,1,60000),(3891,30518,1,60000),(3891,30519,1,60000),(3891,30520,1,60000),(3891,30521,1,60000),(3891,30522,1,60000),(3891,30523,1,60000),(6091,50726,1,1000),(6091,70012,1,15000),(6091,39006,1,15000),(6091,25040,1,10000),(6091,70048,1,20000),(6091,70037,1,25000),(6091,70014,1,25000),(6091,70043,1,20000),(6091,39002,1,20000),(6091,27002,50,100000),(6091,27003,30,200000),(6091,27005,30,100000),(6091,50300,1,400000),(6091,70014,1,1000),(6091,70037,1,1000),(6091,50254,1,400000),(6091,145,1,30000),(6091,146,1,20000),(6091,155,1,30000),(6091,156,1,20000),(6091,1105,1,30000),(6091,1106,1,20000),(6091,2145,1,30000),(6091,2146,1,20000),(6091,3145,1,30000),(6091,3146,1,20000),(6091,5105,1,30000),(6091,5106,1,20000),(6091,7145,1,30000),(6091,7146,1,20000),(6091,11295,1,30000),(6091,11296,1,20000),(6091,11495,1,30000),(6091,11496,1,20000),(6091,11695,1,30000),(6091,11696,1,20000),(6091,11895,1,30000),(6091,11896,1,20000),(6091,30500,1,60000),(6091,30501,1,60000),(6091,30502,1,60000),(6091,30503,1,60000),(6091,30504,1,60000),(6091,30505,1,60000),(6091,30506,1,60000),(6091,30507,1,60000),(6091,30508,1,60000),(6091,30509,1,60000),(6091,30510,1,60000),(6091,30511,1,60000),(6091,30512,1,60000),(6091,30513,1,60000),(6091,30514,1,60000),(6091,30515,1,60000),(6091,30516,1,60000),(6091,30517,1,60000),(6091,30518,1,60000),(6091,30519,1,60000),(6091,30520,1,60000),(6091,30521,1,60000),(6091,30522,1,60000),(6091,30523,1,60000);
/*!40000 ALTER TABLE `drop_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drop_mob_group_kill`
--

DROP TABLE IF EXISTS `drop_mob_group_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drop_mob_group_kill` (
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `mob_vnum` bigint unsigned DEFAULT '0',
  `kill_per_drop` int unsigned DEFAULT '0',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drop_mob_group_kill`
--

LOCK TABLES `drop_mob_group_kill` WRITE;
/*!40000 ALTER TABLE `drop_mob_group_kill` DISABLE KEYS */;
INSERT IGNORE INTO `drop_mob_group_kill` VALUES (100,131,400),(101,134,400),(102,138,400),(103,141,400),(104,301,800),(105,304,350),(106,401,1000),(107,404,800),(108,405,500),(109,406,300),(110,502,2000),(111,503,500),(112,504,400),(113,631,400),(114,632,600),(115,633,1200),(116,636,500),(117,637,900),(118,691,1),(119,701,300),(120,702,500),(121,703,200),(122,704,500),(123,706,100),(124,707,40),(125,734,700),(126,736,300),(127,737,300),(128,791,1),(129,901,500),(130,902,400),(131,904,450),(132,905,900),(133,906,250),(134,907,200),(135,1002,200),(136,1003,100),(137,1004,50),(138,1061,0),(139,1063,10000),(140,1064,10000),(141,1065,40000),(142,1066,0),(143,1068,0),(144,1069,0),(145,1070,0),(146,1071,0),(147,1092,1),(148,1104,350),(149,1105,700),(150,1106,1000),(151,1107,300),(152,1301,400),(153,1302,800),(154,1303,1000),(155,1304,1),(156,1305,350),(157,1401,0),(158,1402,1500),(159,1403,500),(160,1501,100),(161,1502,100),(162,1503,3000),(163,1601,0),(164,1602,1000),(165,1603,2000),(166,1901,1),(167,1902,1),(168,1904,1),(169,1905,1),(170,1906,1),(171,2003,1000),(172,2004,1000),(173,2005,500),(174,2033,300),(175,2034,500),(176,2035,300),(177,2036,90),(178,2091,1),(179,2102,400),(180,2103,1000),(181,2104,800),(182,2105,500),(183,2106,700),(184,2107,400),(185,2108,100),(186,2191,1),(187,2201,0),(188,2202,1000),(189,2203,1000),(190,2204,1000),(191,2205,500),(192,2206,1),(193,2301,0),(194,2302,2000),(195,2303,1000),(196,2304,15000),(197,2305,10000),(198,2311,800),(199,2312,800),(200,2313,1000),(201,2314,6000),(202,2315,3000),(203,5002,1),(204,5004,1),(205,5101,550),(206,5102,250),(207,5103,250),(208,5104,100),(209,5111,550),(210,5112,300),(211,5113,250),(212,5114,100),(213,5115,100),(214,5121,550),(215,5122,300),(216,5123,250),(217,5124,100),(218,5125,80),(219,5126,30),(220,5161,10),(221,5162,10),(222,5163,10),(223,3001,400),(224,3002,300),(225,3003,250),(226,3004,200),(227,3005,150),(228,3090,1),(229,3091,1),(230,3101,400),(231,3102,300),(232,3103,250),(233,3104,200),(234,3105,150),(235,3190,1),(236,3191,1),(237,3201,400),(238,3202,300),(239,3203,250),(240,3204,200),(241,3205,150),(242,3290,1),(243,3291,1),(244,3301,400),(245,3302,300),(246,3303,250),(247,3304,200),(248,3305,150),(249,3390,1),(250,3391,1),(251,3401,400),(252,3402,300),(253,3403,250),(254,3404,200),(255,3405,150),(256,3490,1),(257,3491,1),(258,3501,400),(259,3502,300),(260,3503,250),(261,3504,200),(262,3505,150),(263,3590,1),(264,3591,1),(265,3551,400),(266,3552,300),(267,3553,250),(268,3554,200),(269,3555,150),(270,3595,1),(271,3596,1),(272,3601,400),(273,3602,300),(274,3603,250),(275,3604,200),(276,3605,150),(277,3690,1),(278,3691,1),(279,3701,400),(280,3702,300),(281,3703,250),(282,3704,200),(283,3705,150),(284,3790,1),(285,3791,1),(286,3801,400),(287,3802,300),(288,3803,250),(289,3804,200),(290,3805,150),(291,3890,1),(292,3891,1),(293,6001,1000),(294,6002,1000),(295,6003,500),(296,6004,500),(297,6005,100),(298,6006,100),(299,6007,100),(300,6008,50),(301,6009,50);
/*!40000 ALTER TABLE `drop_mob_group_kill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drop_mob_group_level`
--

DROP TABLE IF EXISTS `drop_mob_group_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drop_mob_group_level` (
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `mob_vnum` bigint unsigned NOT NULL DEFAULT '0',
  `level_start` bigint unsigned NOT NULL DEFAULT '0',
  `level_end` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drop_mob_group_level`
--

LOCK TABLES `drop_mob_group_level` WRITE;
/*!40000 ALTER TABLE `drop_mob_group_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `drop_mob_group_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drop_mob_item_kill`
--

DROP TABLE IF EXISTS `drop_mob_item_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drop_mob_item_kill` (
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `item_vnum` bigint unsigned NOT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `part_prob` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drop_mob_item_kill`
--

LOCK TABLES `drop_mob_item_kill` WRITE;
/*!40000 ALTER TABLE `drop_mob_item_kill` DISABLE KEYS */;
INSERT IGNORE INTO `drop_mob_item_kill` VALUES (100,7160,1,25),(101,5110,1,25),(101,290,1,15),(102,1170,1,25),(103,13192,1,25),(103,13193,1,20),(103,3210,1,15),(104,16082,1,25),(104,16102,1,20),(104,16122,1,15),(104,16142,1,10),(105,11232,1,65),(105,11233,1,35),(105,11432,1,65),(105,11433,1,35),(105,11632,1,65),(105,11633,1,35),(105,11832,1,65),(105,11833,1,35),(106,15082,1,25),(106,15102,1,20),(106,15122,1,15),(106,15142,1,10),(107,5042,1,65),(107,5032,1,35),(107,12222,1,35),(107,12223,1,15),(107,12362,1,35),(107,12363,1,15),(107,12502,1,35),(107,12503,1,15),(107,12642,1,35),(107,12643,1,15),(108,7072,1,1),(108,7052,1,1),(108,4022,1,1),(108,1042,1,1),(109,82,1,65),(109,83,1,35),(110,17082,1,25),(110,17102,1,20),(110,17122,1,15),(110,17142,1,10),(111,2072,1,10),(111,290,1,10),(111,2150,1,15),(112,3072,1,65),(112,3073,1,35),(112,290,1,40),(112,2150,1,20),(112,11242,1,35),(112,11243,1,15),(112,11442,1,35),(112,11443,1,15),(112,11642,1,35),(112,11643,1,15),(112,11842,1,35),(112,11843,1,15),(113,7082,1,20),(113,5052,1,10),(113,14082,1,25),(113,14102,1,20),(113,14122,1,15),(113,14142,1,10),(114,92,1,10),(114,1052,1,10),(114,1170,1,10),(115,3082,1,10),(115,1170,1,10),(116,7092,1,65),(116,7093,1,35),(117,5062,1,65),(117,5063,1,35),(118,50070,1,100),(119,2082,1,35),(119,15162,1,32),(119,15182,1,16),(119,15202,1,12),(119,15222,1,8),(120,11252,1,30),(120,11452,1,30),(120,11652,1,30),(120,11852,1,30),(120,11253,1,60),(120,11453,1,60),(120,11653,1,60),(120,11853,1,60),(120,3210,1,40),(121,15163,1,25),(121,15183,1,20),(121,15203,1,15),(121,15223,1,10),(121,3210,1,20),(122,1062,1,65),(122,1063,1,35),(123,102,1,65),(123,103,1,35),(123,12242,1,45),(123,12243,1,30),(123,12382,1,35),(123,12383,1,20),(123,12522,1,25),(123,12523,1,20),(123,12662,1,20),(123,12663,1,15),(124,3092,1,65),(124,3093,1,35),(124,16162,1,54),(124,16163,1,27),(124,16182,1,36),(124,16183,1,18),(124,16202,1,18),(124,16203,1,9),(125,11260,1,65),(125,11261,1,35),(125,11460,1,65),(125,11461,1,35),(125,11660,1,65),(125,11661,1,35),(125,11860,1,65),(125,11861,1,35),(126,122,1,65),(126,123,1,35),(127,3111,1,65),(127,3112,1,35),(128,50071,1,100),(129,15162,1,12),(129,15182,1,9),(129,15202,1,6),(129,15222,1,3),(130,17162,1,18),(130,17163,1,9),(130,17182,1,12),(130,17183,1,6),(130,17202,1,6),(130,17203,1,3),(131,132,1,6),(131,133,1,3),(131,1092,1,6),(131,1093,1,3),(132,2122,1,65),(132,2123,1,35),(133,12242,1,6),(133,12243,1,3),(133,12382,1,6),(133,12383,1,3),(133,12522,1,6),(133,12523,1,3),(133,12662,1,6),(133,12663,1,3),(134,3122,1,65),(134,3123,1,30),(135,2122,1,35),(136,1092,1,65),(136,1093,1,35),(136,14162,1,54),(136,14163,1,27),(136,14182,1,36),(136,14183,1,18),(136,14202,1,18),(136,14203,1,9),(137,3122,1,65),(137,3123,1,35),(139,11270,1,10),(139,11470,1,10),(139,11670,1,10),(139,11870,1,10),(139,11271,1,1),(139,11471,1,1),(139,11671,1,1),(139,11871,1,1),(140,11272,1,1),(140,11472,1,1),(140,11672,1,1),(140,11872,1,1),(140,11271,1,10),(140,11471,1,10),(140,11671,1,10),(140,11871,1,10),(141,3140,1,1),(141,1110,1,1),(141,2130,1,1),(141,7140,1,1),(141,5100,1,1),(141,160,1,1),(141,240,1,1),(141,150,1,1),(141,5090,1,1),(141,140,1,1),(141,3130,1,1),(141,1100,1,1),(141,7130,1,1),(141,2140,1,1),(147,50081,1,100),(148,12242,1,6),(148,12382,1,6),(148,12522,1,6),(148,12662,1,6),(148,12243,1,3),(148,12383,1,3),(148,12523,1,3),(148,12663,1,3),(149,11262,1,6),(149,11263,1,3),(149,11462,1,6),(149,11463,1,3),(149,11662,1,6),(149,11663,1,3),(149,11862,1,6),(149,11863,1,3),(150,1092,1,60),(150,1093,1,30),(150,50009,1,10),(151,3123,1,60),(151,3124,1,30),(151,50009,1,10),(152,16160,1,18),(152,16161,1,9),(152,16180,1,12),(152,16181,1,6),(152,16200,1,6),(152,16201,1,3),(153,5082,1,65),(153,5083,1,35),(154,2122,1,1),(155,50078,1,100),(156,7122,1,65),(156,7123,1,35),(158,11273,1,20),(158,11473,1,20),(158,11673,1,20),(158,11873,1,20),(158,11274,1,10),(158,11474,1,10),(158,11674,1,10),(158,11874,1,10),(159,11290,1,5),(159,11490,1,5),(159,11890,1,5),(159,11690,1,5),(159,170,1,1),(159,250,1,1),(159,1120,1,1),(159,2180,1,1),(159,3150,1,1),(159,7150,1,1),(160,8002,100,1),(161,8002,100,1),(162,11282,1,1),(162,11882,1,1),(162,11482,1,1),(162,11682,1,1),(164,11271,1,20),(164,11471,1,20),(164,11671,1,20),(164,11871,1,20),(164,11272,1,10),(164,11472,1,10),(164,11672,1,10),(164,11872,1,10),(165,3140,1,1),(165,1110,1,1),(165,2130,1,1),(165,7140,1,1),(165,5100,1,1),(165,160,1,1),(165,240,1,1),(166,50077,1,100),(167,0,2,100),(167,50006,15,30),(167,50007,20,40),(167,50012,10,15),(167,50013,15,20),(167,50011,5,5),(168,50006,15,30),(168,50007,20,40),(168,50012,10,15),(168,50013,15,20),(168,50011,5,5),(169,50006,15,30),(169,50007,20,40),(169,50012,10,15),(169,50013,15,20),(169,50011,5,5),(170,50006,15,30),(170,50007,20,40),(170,50012,10,15),(170,50013,15,20),(170,50011,5,5),(171,7102,1,1),(172,5072,1,1),(173,12242,1,1),(173,12382,1,1),(173,12522,1,1),(173,12662,1,1),(174,112,1,65),(174,113,1,35),(175,1072,1,1),(176,11260,1,1),(176,11460,1,1),(176,11660,1,1),(176,11860,1,1),(177,3112,1,65),(177,3113,1,35),(178,50073,1,100),(179,12222,1,6),(179,12362,1,6),(179,12502,1,6),(179,12642,1,6),(179,12223,1,3),(179,12363,1,3),(179,12503,1,3),(179,12643,1,3),(180,14160,1,18),(180,14161,1,9),(180,14180,1,12),(180,14181,1,6),(180,14200,1,6),(180,14201,1,3),(181,1062,1,65),(181,1063,1,35),(181,7160,1,40),(181,5110,1,20),(182,2092,1,65),(182,2093,1,35),(182,7160,1,20),(182,5110,1,40),(183,1062,1,65),(183,1063,1,35),(184,13202,1,65),(184,13203,1,35),(185,17162,1,18),(185,17163,1,9),(185,17182,1,12),(185,17183,1,6),(185,17202,1,6),(185,17203,1,3),(186,50076,1,100),(188,50009,1,10),(189,132,1,65),(189,133,1,35),(190,1092,1,65),(190,1093,1,35),(191,3123,1,65),(191,3124,1,35),(192,50079,1,100),(194,50008,1,1),(195,11270,1,30),(195,11470,1,30),(195,11670,1,30),(195,11870,1,30),(195,11271,1,20),(195,11471,1,20),(195,11671,1,20),(195,11871,1,20),(195,11272,1,10),(195,11472,1,10),(195,11672,1,10),(195,11872,1,10),(195,50008,1,20),(196,11280,1,1),(196,11880,1,1),(196,11480,1,1),(196,11680,1,1),(197,3140,1,1),(197,1110,1,1),(197,2130,1,1),(197,7140,1,1),(197,5100,1,1),(197,160,1,1),(197,240,1,1),(197,150,1,1),(197,5090,1,1),(197,140,1,1),(197,3130,1,1),(197,1100,1,1),(197,7130,1,1),(197,2140,1,1),(198,50008,1,1),(199,50008,1,1),(200,11272,1,20),(200,11472,1,20),(200,11672,1,20),(200,11872,1,20),(200,11273,1,10),(200,11473,1,10),(200,11673,1,10),(200,11873,1,10),(200,50008,1,20),(201,11280,1,1),(201,11880,1,1),(201,11480,1,1),(201,11680,1,1),(202,3140,1,1),(202,1110,1,1),(202,2130,1,1),(202,7140,1,1),(202,5100,1,1),(202,160,1,1),(202,240,1,1),(202,150,1,1),(202,5090,1,1),(202,140,1,1),(202,3130,1,1),(202,1100,1,1),(202,7130,1,1),(202,2140,1,1),(203,134,1,46),(203,135,1,20),(203,1094,1,46),(203,1095,1,20),(203,3124,1,46),(203,3125,1,20),(203,2124,1,46),(203,2125,1,20),(203,5084,1,46),(203,5085,1,20),(203,7124,1,46),(203,7125,1,20),(203,11263,1,46),(203,11264,1,20),(203,11463,1,46),(203,11464,1,20),(203,11663,1,46),(203,11664,1,20),(203,11863,1,46),(203,11864,1,20),(203,13203,1,46),(203,13204,1,20),(203,70038,1,40),(203,70048,1,40),(203,70050,1,40),(203,70051,1,40),(203,70012,1,40),(203,70037,1,40),(203,70014,1,40),(203,25040,1,40),(204,30202,1,1),(205,50050,1,20),(206,50050,1,20),(207,5042,1,65),(207,82,1,65),(207,83,1,35),(207,5032,1,35),(207,50050,1,100),(208,7073,1,20),(208,7053,1,20),(208,4023,1,20),(208,1043,1,20),(208,50050,1,20),(209,50050,1,20),(210,50050,1,20),(211,7083,1,20),(211,5053,1,10),(211,50050,1,30),(212,93,1,20),(212,1053,1,20),(212,50050,1,40),(213,3083,1,20),(213,50050,1,20),(214,50050,1,20),(215,50050,1,20),(216,7103,1,20),(216,50050,1,20),(217,5073,1,20),(217,50050,1,20),(218,113,1,65),(218,114,1,35),(218,50050,1,100),(219,3113,1,65),(219,3114,1,35),(219,50050,1,100),(220,74,1,10),(220,1034,1,10),(220,2064,1,10),(220,3064,1,10),(220,5044,1,10),(220,7064,1,10),(221,104,1,10),(221,1064,1,10),(221,2094,1,10),(221,3094,1,10),(221,5064,1,10),(221,7094,1,10),(221,11253,1,10),(221,11453,1,10),(221,11653,1,10),(221,11853,1,10),(222,134,1,10),(222,1094,1,10),(222,2124,1,10),(222,5084,1,10),(222,3124,1,10),(222,7124,1,10),(222,11272,1,10),(222,11472,1,10),(222,11672,1,10),(222,11872,1,10),(223,30500,1,100),(223,30512,1,100),(224,30500,1,100),(224,30512,1,100),(225,30500,1,100),(225,30512,1,100),(226,30500,1,100),(226,30512,1,100),(227,30500,1,100),(227,30512,1,100),(228,30500,1,100),(228,30512,1,100),(229,30500,1,100),(229,30512,1,100),(230,30506,1,100),(230,30510,1,100),(230,30522,1,100),(231,30506,1,100),(231,30510,1,100),(231,30522,1,100),(232,30506,1,100),(232,30510,1,100),(232,30522,1,100),(233,30506,1,100),(233,30510,1,100),(233,30522,1,100),(234,30506,1,100),(234,30510,1,100),(234,30522,1,100),(235,30506,1,100),(235,30510,1,100),(235,30522,1,100),(236,30506,1,100),(236,30510,1,100),(236,30522,1,100),(237,30504,1,100),(237,30516,1,100),(237,30521,1,100),(238,30504,1,100),(238,30516,1,100),(238,30521,1,100),(239,30504,1,100),(239,30516,1,100),(239,30521,1,100),(240,30504,1,100),(240,30516,1,100),(240,30521,1,100),(241,30504,1,100),(241,30516,1,100),(241,30521,1,100),(242,30504,1,100),(242,30516,1,100),(242,30521,1,100),(243,30504,1,100),(243,30516,1,100),(243,30521,1,100),(244,30503,1,100),(244,30509,1,100),(244,30513,1,100),(244,30523,1,100),(245,30503,1,100),(245,30509,1,100),(245,30513,1,100),(245,30523,1,100),(246,30503,1,100),(246,30509,1,100),(246,30513,1,100),(246,30523,1,100),(247,30503,1,100),(247,30509,1,100),(247,30513,1,100),(247,30523,1,100),(248,30503,1,100),(248,30509,1,100),(248,30513,1,100),(248,30523,1,100),(249,30503,1,100),(249,30509,1,100),(249,30513,1,100),(249,30523,1,100),(250,30503,1,100),(250,30509,1,100),(250,30513,1,100),(250,30523,1,100),(251,30501,1,100),(251,30511,1,100),(251,30520,1,100),(252,30501,1,100),(252,30511,1,100),(252,30520,1,100),(253,30501,1,100),(253,30511,1,100),(253,30520,1,100),(254,30501,1,100),(254,30511,1,100),(254,30520,1,100),(255,30501,1,100),(255,30511,1,100),(255,30520,1,100),(256,30501,1,100),(256,30511,1,100),(256,30520,1,100),(257,30501,1,100),(257,30511,1,100),(257,30520,1,100),(258,30508,1,100),(259,30508,1,100),(260,30508,1,100),(261,30508,1,100),(262,30508,1,100),(263,30508,1,100),(264,30508,1,100),(265,30508,1,100),(265,30513,1,100),(265,30519,1,100),(266,30508,1,100),(266,30513,1,100),(266,30519,1,100),(267,30508,1,100),(267,30513,1,100),(267,30519,1,100),(268,30508,1,100),(268,30513,1,100),(268,30519,1,100),(269,30508,1,100),(269,30513,1,100),(269,30519,1,100),(270,30508,1,100),(270,30513,1,100),(270,30519,1,100),(271,30508,1,100),(271,30513,1,100),(271,30519,1,100),(272,30505,1,100),(272,30515,1,100),(273,30505,1,100),(273,30515,1,100),(274,30505,1,100),(274,30515,1,100),(275,30505,1,100),(275,30515,1,100),(276,30505,1,100),(276,30515,1,100),(277,30505,1,100),(277,30515,1,100),(278,30505,1,100),(278,30515,1,100),(279,30502,1,100),(279,30514,1,100),(279,30518,1,100),(280,30502,1,100),(280,30514,1,100),(280,30518,1,100),(281,30502,1,100),(281,30514,1,100),(281,30518,1,100),(282,30502,1,100),(282,30514,1,100),(282,30518,1,100),(283,30502,1,100),(283,30514,1,100),(283,30518,1,100),(284,30502,1,100),(284,30514,1,100),(284,30518,1,100),(285,30502,1,100),(285,30514,1,100),(285,30518,1,100),(286,30507,1,100),(286,30517,1,100),(286,30519,1,100),(287,30507,1,100),(287,30517,1,100),(287,30519,1,100),(288,30507,1,100),(288,30517,1,100),(288,30519,1,100),(289,30507,1,100),(289,30517,1,100),(289,30519,1,100),(290,30507,1,100),(290,30517,1,100),(290,30519,1,100),(291,30507,1,100),(291,30517,1,100),(291,30519,1,100),(292,30507,1,100),(292,30517,1,100),(292,30519,1,100),(293,30506,1,100),(293,30510,1,100),(293,30522,1,100),(294,30504,1,100),(294,30516,1,100),(294,30521,1,100),(295,30503,1,100),(295,30509,1,100),(295,30513,1,100),(296,30506,1,100),(296,30510,1,100),(296,30522,1,100),(297,30504,1,100),(297,30516,1,100),(297,30521,1,100),(297,30550,1,10),(298,30503,1,100),(298,30509,1,100),(298,30513,1,100),(298,30550,1,50),(299,30506,1,100),(299,30510,1,100),(299,30522,1,100),(299,30550,1,60),(300,30504,1,100),(300,30516,1,100),(300,30521,1,100),(300,30550,1,80),(301,30503,1,100),(301,30509,1,100),(301,30513,1,100),(301,30550,1,100);
/*!40000 ALTER TABLE `drop_mob_item_kill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drop_mob_item_level`
--

DROP TABLE IF EXISTS `drop_mob_item_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drop_mob_item_level` (
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `item_vnum` bigint unsigned NOT NULL DEFAULT '0',
  `count` int unsigned NOT NULL DEFAULT '0',
  `prob` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drop_mob_item_level`
--

LOCK TABLES `drop_mob_item_level` WRITE;
/*!40000 ALTER TABLE `drop_mob_item_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `drop_mob_item_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fish_log`
--

DROP TABLE IF EXISTS `fish_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fish_log` (
  `time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `player_id` int unsigned NOT NULL DEFAULT '0',
  `map_index` tinyint NOT NULL DEFAULT '0',
  `fish_id` int unsigned NOT NULL DEFAULT '0',
  `fishing_level` int NOT NULL DEFAULT '0',
  `waiting_time` int NOT NULL DEFAULT '0',
  `success` tinyint NOT NULL DEFAULT '0',
  `size` smallint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fish_log`
--

LOCK TABLES `fish_log` WRITE;
/*!40000 ALTER TABLE `fish_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fish_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gmhost`
--

DROP TABLE IF EXISTS `gmhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gmhost` (
  `mIP` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mIP`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gmhost`
--

LOCK TABLES `gmhost` WRITE;
/*!40000 ALTER TABLE `gmhost` DISABLE KEYS */;
INSERT IGNORE INTO `gmhost` VALUES (''),('ALL');
/*!40000 ALTER TABLE `gmhost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gmlist`
--

DROP TABLE IF EXISTS `gmlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gmlist` (
  `mID` int unsigned NOT NULL AUTO_INCREMENT,
  `mAccount` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mContactIP` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mServerIP` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'ALL',
  `mAuthority` enum('IMPLEMENTOR','GOD','HIGH_WIZARD','WIZARD','LOW_WIZARD','PLAYER') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'PLAYER',
  PRIMARY KEY (`mID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gmlist`
--

LOCK TABLES `gmlist` WRITE;
/*!40000 ALTER TABLE `gmlist` DISABLE KEYS */;
INSERT IGNORE INTO `gmlist` VALUES (1,'asikoo','ASIKOO','','ALL','IMPLEMENTOR'),(5,'kijaru','Kijaru','','ALL','IMPLEMENTOR'),(11,'playerone','PlayerOne','','ALL','IMPLEMENTOR'),(6,'asikoo','OOKISA','','ALL','IMPLEMENTOR'),(12,'playertwo','PlayerTwo','','ALL','IMPLEMENTOR'),(13,'playerthree','PlayerThree','','ALL','IMPLEMENTOR'),(14,'playerfour','PlayerFour','','ALL','IMPLEMENTOR'),(15,'playerfive','PlayerFive','','ALL','IMPLEMENTOR'),(16,'playersix','PlayerSix','','ALL','IMPLEMENTOR'),(17,'playerseven','PlayerSeven','','ALL','IMPLEMENTOR'),(18,'playereight','PlayerEight','','ALL','IMPLEMENTOR'),(19,'playernine','PlayerNine','','ALL','IMPLEMENTOR'),(20,'playerten','PlayerTen','','ALL','IMPLEMENTOR'),(4,'veltor','Veltor88','','ALL','IMPLEMENTOR');
/*!40000 ALTER TABLE `gmlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goldlog`
--

DROP TABLE IF EXISTS `goldlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goldlog` (
  `date` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0000-00-00',
  `time` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '00:00:00',
  `pid` int unsigned NOT NULL DEFAULT '0',
  `what` int NOT NULL DEFAULT '0',
  `how` set('BUY','SELL','SHOP_SELL','SHOP_BUY','EXCHANGE_TAKE','EXCHANGE_GIVE','QUEST') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `hint` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  KEY `date_idx` (`date`) USING BTREE,
  KEY `pid_idx` (`pid`) USING BTREE,
  KEY `what_idx` (`what`) USING BTREE,
  KEY `how_idx` (`how`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldlog`
--

LOCK TABLES `goldlog` WRITE;
/*!40000 ALTER TABLE `goldlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `goldlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild`
--

DROP TABLE IF EXISTS `guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `sp` smallint NOT NULL DEFAULT '1000',
  `master` int unsigned NOT NULL DEFAULT '0',
  `level` tinyint DEFAULT NULL,
  `exp` int DEFAULT NULL,
  `skill_point` tinyint NOT NULL DEFAULT '0',
  `skill` tinyblob,
  `win` int NOT NULL DEFAULT '0',
  `draw` int NOT NULL DEFAULT '0',
  `loss` int NOT NULL DEFAULT '0',
  `ladder_point` int NOT NULL DEFAULT '0',
  `gold` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild`
--

LOCK TABLES `guild` WRITE;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
INSERT IGNORE INTO `guild` VALUES (20,'MiaW',0,118,21,624999,20,_binary '\0\0\0\0\0\0\0\0\0\0\0\0',0,0,0,20000,0),(21,'RedNation',0,133,28,127907,27,_binary '\0\0\0\0\0\0\0\0\0\0\0\0',0,0,0,27000,0);
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_comment`
--

DROP TABLE IF EXISTS `guild_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `guild_id` int unsigned DEFAULT NULL,
  `name` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `notice` tinyint DEFAULT NULL,
  `content` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `aaa` (`notice`,`id`,`guild_id`) USING BTREE,
  KEY `guild_id` (`guild_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_comment`
--

LOCK TABLES `guild_comment` WRITE;
/*!40000 ALTER TABLE `guild_comment` DISABLE KEYS */;
INSERT IGNORE INTO `guild_comment` VALUES (7,20,'ASIKOO',0,'Hello MiaW !\0','2020-05-10 14:22:59'),(8,20,'ASIKOO',0,'MiaW Party !\0','2020-05-10 14:33:17');
/*!40000 ALTER TABLE `guild_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_grade`
--

DROP TABLE IF EXISTS `guild_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_grade` (
  `guild_id` int NOT NULL DEFAULT '0',
  `grade` tinyint NOT NULL DEFAULT '0',
  `name` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `auth` set('ADD_MEMBER','REMOVE_MEMEBER','NOTICE','USE_SKILL') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`guild_id`,`grade`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_grade`
--

LOCK TABLES `guild_grade` WRITE;
/*!40000 ALTER TABLE `guild_grade` DISABLE KEYS */;
INSERT IGNORE INTO `guild_grade` VALUES (20,15,'Membre',''),(20,14,'Membre',''),(20,13,'Membre',''),(20,12,'Membre','USE_SKILL'),(20,11,'Membre','NOTICE'),(20,10,'Membre','ADD_MEMBER,REMOVE_MEMEBER'),(20,9,'Membre','NOTICE'),(20,8,'Membre','NOTICE'),(20,7,'Membre',''),(20,6,'Membre','NOTICE'),(20,5,'3D','NOTICE'),(20,4,'2D','NOTICE'),(20,3,'Mapper',''),(20,2,'Dev','NOTICE'),(20,1,'Chef','ADD_MEMBER,REMOVE_MEMEBER,NOTICE,USE_SKILL'),(21,1,'Chef.','ADD_MEMBER,REMOVE_MEMEBER,NOTICE,USE_SKILL'),(21,2,'Membre.',''),(21,3,'Membre.',''),(21,4,'Membre.',''),(21,5,'Membre.',''),(21,6,'Membre.',''),(21,7,'Membre.',''),(21,8,'Membre.',''),(21,9,'Membre.',''),(21,10,'Membre.',''),(21,11,'Membre.',''),(21,12,'Membre.',''),(21,13,'Membre.',''),(21,14,'Membre.',''),(21,15,'Membre.','');
/*!40000 ALTER TABLE `guild_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_member`
--

DROP TABLE IF EXISTS `guild_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_member` (
  `pid` int unsigned NOT NULL DEFAULT '0',
  `guild_id` int unsigned NOT NULL DEFAULT '0',
  `grade` tinyint DEFAULT NULL,
  `is_general` tinyint(1) NOT NULL DEFAULT '0',
  `offer` int unsigned DEFAULT NULL,
  PRIMARY KEY (`guild_id`,`pid`) USING BTREE,
  UNIQUE KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_member`
--

LOCK TABLES `guild_member` WRITE;
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
INSERT IGNORE INTO `guild_member` VALUES (121,20,15,0,0),(118,20,1,1,9999999),(122,20,15,0,0),(132,20,15,0,0),(133,21,1,0,15127907),(123,20,15,0,0);
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_war`
--

DROP TABLE IF EXISTS `guild_war`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_war` (
  `id_from` int NOT NULL DEFAULT '0',
  `id_to` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_from`,`id_to`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_war`
--

LOCK TABLES `guild_war` WRITE;
/*!40000 ALTER TABLE `guild_war` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_war` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_war_bet`
--

DROP TABLE IF EXISTS `guild_war_bet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_war_bet` (
  `login` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `gold` int unsigned NOT NULL DEFAULT '0',
  `guild` int NOT NULL DEFAULT '0',
  `war_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`war_id`,`login`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_war_bet`
--

LOCK TABLES `guild_war_bet` WRITE;
/*!40000 ALTER TABLE `guild_war_bet` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_war_bet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_war_reservation`
--

DROP TABLE IF EXISTS `guild_war_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_war_reservation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `guild1` int unsigned NOT NULL DEFAULT '0',
  `guild2` int unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `warprice` int unsigned NOT NULL DEFAULT '0',
  `initscore` int unsigned NOT NULL DEFAULT '0',
  `started` tinyint(1) NOT NULL DEFAULT '0',
  `bet_from` int unsigned NOT NULL DEFAULT '0',
  `bet_to` int unsigned NOT NULL DEFAULT '0',
  `winner` int NOT NULL DEFAULT '-1',
  `power1` int NOT NULL DEFAULT '0',
  `power2` int NOT NULL DEFAULT '0',
  `handicap` int NOT NULL DEFAULT '0',
  `result1` int NOT NULL DEFAULT '0',
  `result2` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_war_reservation`
--

LOCK TABLES `guild_war_reservation` WRITE;
/*!40000 ALTER TABLE `guild_war_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_war_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hack_crc_log`
--

DROP TABLE IF EXISTS `hack_crc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hack_crc_log` (
  `time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `login` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `name` char(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ip` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `server` char(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `why` char(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `crc` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_crc_log`
--

LOCK TABLES `hack_crc_log` WRITE;
/*!40000 ALTER TABLE `hack_crc_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `hack_crc_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hack_log`
--

DROP TABLE IF EXISTS `hack_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hack_log` (
  `time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `login` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `name` char(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ip` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `server` char(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `why` char(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_log`
--

LOCK TABLES `hack_log` WRITE;
/*!40000 ALTER TABLE `hack_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `hack_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hackshield_log`
--

DROP TABLE IF EXISTS `hackshield_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hackshield_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `account_id` int DEFAULT NULL,
  `login` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `pid` int DEFAULT NULL,
  `name` char(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `reason` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ip` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hackshield_log`
--

LOCK TABLES `hackshield_log` WRITE;
/*!40000 ALTER TABLE `hackshield_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `hackshield_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `highscore`
--

DROP TABLE IF EXISTS `highscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `highscore` (
  `pid` int NOT NULL DEFAULT '0',
  `board` varchar(0) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `value` varchar(0) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `highscore`
--

LOCK TABLES `highscore` WRITE;
/*!40000 ALTER TABLE `highscore` DISABLE KEYS */;
/*!40000 ALTER TABLE `highscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horse_name`
--

DROP TABLE IF EXISTS `horse_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horse_name` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horse_name`
--

LOCK TABLES `horse_name` WRITE;
/*!40000 ALTER TABLE `horse_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `horse_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iptocountry`
--

DROP TABLE IF EXISTS `iptocountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iptocountry` (
  `IP_FROM` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `IP_TO` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `COUNTRY_NAME` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iptocountry`
--

LOCK TABLES `iptocountry` WRITE;
/*!40000 ALTER TABLE `iptocountry` DISABLE KEYS */;
INSERT IGNORE INTO `iptocountry` VALUES ('127.0.0.1','127.0.0.1','localhost ');
/*!40000 ALTER TABLE `iptocountry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int unsigned NOT NULL DEFAULT '0',
  `window` enum('INVENTORY','EQUIPMENT','SAFEBOX','MALL','DRAGON_SOUL_INVENTORY','BELT_INVENTORY') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'INVENTORY',
  `pos` smallint unsigned NOT NULL DEFAULT '0',
  `count` tinyint unsigned NOT NULL DEFAULT '0',
  `vnum` int unsigned NOT NULL DEFAULT '0',
  `bind` int unsigned NOT NULL DEFAULT '0',
  `socket0` int unsigned NOT NULL DEFAULT '0',
  `socket1` int unsigned NOT NULL DEFAULT '0',
  `socket2` int unsigned NOT NULL DEFAULT '0',
  `socket3` int unsigned NOT NULL DEFAULT '0',
  `socket4` int unsigned NOT NULL DEFAULT '0',
  `socket5` int unsigned NOT NULL DEFAULT '0',
  `attrtype0` tinyint NOT NULL DEFAULT '0',
  `attrvalue0` smallint NOT NULL DEFAULT '0',
  `attrtype1` tinyint NOT NULL DEFAULT '0',
  `attrvalue1` smallint NOT NULL DEFAULT '0',
  `attrtype2` tinyint NOT NULL DEFAULT '0',
  `attrvalue2` smallint NOT NULL DEFAULT '0',
  `attrtype3` tinyint NOT NULL DEFAULT '0',
  `attrvalue3` smallint NOT NULL DEFAULT '0',
  `attrtype4` tinyint NOT NULL DEFAULT '0',
  `attrvalue4` smallint NOT NULL DEFAULT '0',
  `attrtype5` tinyint NOT NULL DEFAULT '0',
  `attrvalue5` smallint NOT NULL DEFAULT '0',
  `attrtype6` tinyint NOT NULL DEFAULT '0',
  `attrvalue6` smallint NOT NULL DEFAULT '0',
  `applytype0` tinyint NOT NULL DEFAULT '0',
  `applyvalue0` smallint NOT NULL DEFAULT '0',
  `applytype1` tinyint NOT NULL DEFAULT '0',
  `applyvalue1` smallint NOT NULL DEFAULT '0',
  `applytype2` tinyint NOT NULL DEFAULT '0',
  `applyvalue2` smallint NOT NULL DEFAULT '0',
  `applytype3` int NOT NULL DEFAULT '0',
  `applyvalue3` int NOT NULL DEFAULT '0',
  `applytype4` int NOT NULL DEFAULT '0',
  `applyvalue4` int NOT NULL DEFAULT '0',
  `applytype5` int NOT NULL DEFAULT '0',
  `applyvalue5` int NOT NULL DEFAULT '0',
  `applytype6` int NOT NULL DEFAULT '0',
  `applyvalue6` int NOT NULL DEFAULT '0',
  `applytype7` int NOT NULL DEFAULT '0',
  `applyvalue7` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `owner_id_idx` (`owner_id`) USING BTREE,
  KEY `item_vnum_index` (`vnum`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=210000007 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT IGNORE INTO `item` VALUES (50000390,123,'INVENTORY',1,1,10,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001186,133,'INVENTORY',24,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001207,133,'INVENTORY',22,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001198,133,'INVENTORY',9,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001178,133,'INVENTORY',20,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001107,121,'EQUIPMENT',0,1,20919,0,1,1,1,0,0,0,1,2000,9,20,23,10,39,10,53,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001111,121,'EQUIPMENT',1,1,12699,0,0,0,0,0,0,0,7,8,10,30,11,30,28,15,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001116,121,'EQUIPMENT',8,1,72702,0,0,8,2983,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001109,121,'EQUIPMENT',2,1,15449,0,0,0,0,0,0,0,1,2000,2,80,8,8,7,8,15,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001108,121,'EQUIPMENT',10,1,13149,0,0,0,0,0,0,0,3,12,27,15,39,10,48,1,49,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000015,120,'INVENTORY',8,1,13000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001190,133,'INVENTORY',27,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000012,120,'INVENTORY',2,1,11200,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000013,120,'INVENTORY',3,1,12200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000019,120,'INVENTORY',13,1,15000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000011,120,'INVENTORY',1,1,3000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000815,133,'INVENTORY',49,1,16209,0,0,0,0,0,0,0,1,2000,2,80,15,10,16,10,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001188,133,'INVENTORY',25,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000818,133,'EQUIPMENT',26,1,18089,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000010,120,'INVENTORY',0,1,10,0,1,0,0,0,0,0,18,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30000047,120,'EQUIPMENT',4,1,19,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001112,121,'EQUIPMENT',3,1,14209,0,0,0,0,0,0,0,1,2000,2,80,16,10,23,10,25,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001113,121,'EQUIPMENT',6,1,17549,0,0,0,0,0,0,0,8,20,25,10,41,5,22,20,21,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001176,133,'INVENTORY',19,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000014,120,'INVENTORY',4,1,50187,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000017,120,'INVENTORY',10,1,16000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000016,120,'INVENTORY',9,1,14000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000018,120,'INVENTORY',12,1,17000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001110,121,'EQUIPMENT',4,1,469,0,1,1,1,0,0,0,9,20,15,10,16,10,22,20,5,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000812,133,'INVENTORY',43,1,12699,0,0,0,0,0,0,0,7,8,10,30,11,30,28,15,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001128,133,'INVENTORY',29,1,55703,0,0,1,0,0,0,0,1,1,1,16,1,12,1,15748,1,15840,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001189,133,'INVENTORY',26,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001053,129,'EQUIPMENT',6,1,17209,0,0,0,0,0,0,0,8,20,25,10,41,5,22,20,21,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000816,133,'EQUIPMENT',7,1,72701,0,0,43,1138,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000814,133,'EQUIPMENT',6,1,17549,0,0,0,0,0,0,0,8,20,25,10,41,5,22,20,21,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000379,123,'INVENTORY',0,1,10,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000381,123,'EQUIPMENT',0,1,11200,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000044,118,'INVENTORY',12,1,70024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000989,133,'INVENTORY',38,1,71185,0,1591308737,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000393,123,'INVENTORY',18,7,27053,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001052,129,'EQUIPMENT',3,1,14209,0,0,0,0,0,0,0,1,2000,2,80,16,10,23,10,25,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001130,133,'INVENTORY',32,197,70038,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001157,118,'INVENTORY',16,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000813,133,'INVENTORY',47,1,14209,0,0,0,0,0,0,0,1,2000,2,80,16,10,23,10,25,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000805,123,'INVENTORY',24,1,16000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001206,133,'INVENTORY',1,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000807,123,'INVENTORY',26,1,15000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001204,133,'INVENTORY',3,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000387,123,'EQUIPMENT',6,1,17000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000811,133,'EQUIPMENT',4,1,469,0,1,1,1,0,0,0,9,20,15,10,16,10,22,20,5,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000385,123,'EQUIPMENT',3,1,14000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000389,123,'INVENTORY',14,1,50188,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000391,123,'INVENTORY',16,35,27051,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000392,123,'INVENTORY',17,20,27052,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000384,123,'EQUIPMENT',10,1,13000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001076,129,'INVENTORY',4,1,479,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000808,133,'INVENTORY',45,1,20919,0,1,1,1,0,0,0,1,2000,9,20,23,10,39,10,53,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001051,129,'EQUIPMENT',1,1,12719,0,0,0,0,0,0,0,7,8,10,30,11,30,28,15,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000803,123,'INVENTORY',22,1,13000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000394,123,'INVENTORY',19,6,27054,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000589,118,'EQUIPMENT',5,1,16209,0,0,0,0,0,0,0,1,2000,2,80,15,10,16,10,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001197,133,'INVENTORY',11,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000388,123,'EQUIPMENT',2,1,15000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000380,123,'INVENTORY',3,1,3000,0,1,0,0,0,0,0,18,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000382,123,'EQUIPMENT',1,1,12200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001205,133,'INVENTORY',2,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001184,133,'INVENTORY',23,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000041,118,'INVENTORY',13,1,30301,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30000670,123,'INVENTORY',28,1,10,0,1,0,0,0,0,0,19,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001203,133,'INVENTORY',4,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000395,123,'INVENTORY',2,1,27005,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50000386,123,'EQUIPMENT',5,1,16000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001199,133,'INVENTORY',8,1,5009,0,1,0,0,0,0,0,15,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000027,122,'EQUIPMENT',26,1,18089,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000022,122,'EQUIPMENT',3,1,14209,0,0,0,0,0,0,0,1,2000,2,80,16,10,23,10,25,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000025,122,'EQUIPMENT',7,1,72701,0,0,23,1780,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000019,122,'EQUIPMENT',2,1,15449,0,0,0,0,0,0,0,1,2000,2,80,8,8,7,8,15,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000017,122,'EQUIPMENT',0,1,20919,0,1,1,1,0,0,0,1,2000,9,20,23,10,39,10,53,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000018,122,'EQUIPMENT',10,1,13149,0,0,0,0,0,0,0,3,12,27,15,39,10,48,1,49,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000024,122,'EQUIPMENT',5,1,16209,0,0,0,0,0,0,0,1,2000,2,80,15,10,16,10,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(130000017,122,'EQUIPMENT',6,1,17109,0,0,0,0,0,0,0,8,20,25,10,41,5,22,20,21,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000999,133,'INVENTORY',37,1,71197,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000806,123,'INVENTORY',25,1,17000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000066,133,'EQUIPMENT',8,1,71011,0,0,0,1593475465,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000798,123,'INVENTORY',4,1,10,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000993,133,'INVENTORY',42,1,71187,0,1591011869,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001174,133,'INVENTORY',18,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001057,129,'EQUIPMENT',26,1,18089,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001159,118,'INVENTORY',3,1,5349,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001200,133,'INVENTORY',7,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000987,133,'INVENTORY',33,1,71184,0,1591011878,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001193,133,'INVENTORY',15,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001202,133,'INVENTORY',5,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000997,133,'INVENTORY',40,1,71193,0,1591011885,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001194,133,'INVENTORY',14,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001195,133,'INVENTORY',13,1,5009,0,1,0,0,0,0,0,16,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001192,133,'INVENTORY',16,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001115,121,'EQUIPMENT',7,1,72701,0,0,8,1783,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000020,122,'EQUIPMENT',4,1,469,0,1,1,1,0,0,0,9,20,15,10,16,10,22,20,5,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001054,129,'EQUIPMENT',5,1,16209,0,0,0,0,0,0,0,1,2000,2,80,15,10,16,10,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000810,133,'INVENTORY',46,1,15449,0,0,0,0,0,0,0,1,2000,2,80,8,8,7,8,15,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001191,133,'INVENTORY',17,1,5009,0,1,0,0,0,0,0,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000585,118,'EQUIPMENT',4,1,5349,0,1,1,1,0,0,0,9,20,15,10,16,10,22,20,5,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000804,123,'INVENTORY',23,1,14000,0,0,0,0,0,0,0,23,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000005,133,'EQUIPMENT',0,1,20919,0,1,1,1,0,0,0,1,2000,9,20,23,10,39,10,53,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000008,133,'INVENTORY',52,1,469,0,1,1,1,0,0,0,9,20,15,10,16,10,22,20,5,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000010,133,'EQUIPMENT',3,1,14209,0,0,0,0,0,0,0,1,2000,2,80,16,10,23,10,25,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000006,133,'EQUIPMENT',10,1,13149,0,0,0,0,0,0,0,3,12,27,15,39,10,48,1,49,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000801,123,'INVENTORY',11,1,12200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000809,133,'INVENTORY',51,1,13149,0,0,0,0,0,0,0,3,12,27,15,39,10,48,1,49,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001049,129,'EQUIPMENT',2,1,15449,0,0,0,0,0,0,0,1,2000,2,80,8,8,7,8,15,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000985,133,'INVENTORY',39,1,71183,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30000727,118,'EQUIPMENT',0,1,20949,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000007,133,'EQUIPMENT',2,1,15449,0,0,0,0,0,0,0,1,2000,2,80,8,8,7,8,15,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000588,118,'EQUIPMENT',6,1,17209,0,0,0,0,0,0,0,8,20,25,10,41,5,22,20,21,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001165,118,'INVENTORY',9,1,5349,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001056,129,'EQUIPMENT',8,1,72702,0,0,0,2500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000026,122,'EQUIPMENT',8,1,72702,0,0,23,2980,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000068,118,'EQUIPMENT',7,1,71011,0,0,0,1593475499,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000591,118,'EQUIPMENT',8,1,72702,0,0,18,830,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000046,133,'INVENTORY',48,1,40008,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000012,133,'EQUIPMENT',5,1,16209,0,0,0,0,0,0,0,1,2000,2,80,15,10,16,10,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001160,118,'INVENTORY',4,1,5349,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000584,118,'EQUIPMENT',2,1,15449,0,0,0,0,0,0,0,1,2000,2,80,8,8,7,8,15,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000032,118,'INVENTORY',6,1,30301,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000043,118,'INVENTORY',7,1,30301,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001172,133,'INVENTORY',10,1,5009,0,1,0,0,0,0,0,22,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000800,123,'INVENTORY',7,1,11200,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000799,123,'INVENTORY',10,1,3000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000052,118,'INVENTORY',15,1,30324,0,1590969578,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000586,118,'EQUIPMENT',1,1,12729,0,0,0,0,0,0,0,7,8,10,30,11,30,28,15,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000042,118,'INVENTORY',11,1,30301,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000817,133,'INVENTORY',54,1,72702,0,0,0,2343,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001091,133,'INVENTORY',44,1,52045,0,1591029475,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001117,121,'EQUIPMENT',26,1,18089,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001182,133,'INVENTORY',0,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001158,118,'INVENTORY',2,1,5349,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001201,133,'INVENTORY',6,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001047,129,'EQUIPMENT',0,1,20939,0,1,1,1,0,0,0,1,2000,9,20,23,10,39,10,53,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000921,133,'INVENTORY',28,1,70102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000595,123,'EQUIPMENT',4,1,19,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001170,118,'INVENTORY',10,1,55705,0,0,4,0,0,0,0,1,10,1,17,1,4,1,4319,1,4320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001150,129,'INVENTORY',0,1,55706,0,0,14,0,0,0,0,1,12,1,26,1,21,1,2853,1,2880,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000583,118,'EQUIPMENT',10,1,13149,0,0,0,0,0,0,0,3,12,27,15,39,10,48,1,49,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000587,118,'EQUIPMENT',3,1,14209,0,0,0,0,0,0,0,1,2000,2,80,16,10,23,10,25,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30000139,118,'INVENTORY',0,1,55701,0,1,82,0,0,0,0,1,60,1,48,1,70,1,2280,1,2880,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000592,118,'EQUIPMENT',26,1,18089,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000941,118,'DRAGON_SOUL_INVENTORY',864,1,162000,0,86400,0,0,0,0,0,3,1,0,0,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001055,129,'EQUIPMENT',7,1,72701,0,0,0,1300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000009,133,'EQUIPMENT',1,1,12699,0,0,0,0,0,0,0,7,8,10,30,11,30,28,15,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000021,122,'EQUIPMENT',1,1,12699,0,0,0,0,0,0,0,7,8,10,30,11,30,28,15,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001209,133,'INVENTORY',31,200,27003,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001196,133,'INVENTORY',12,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000048,133,'INVENTORY',53,1,30324,0,1590969573,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000995,133,'INVENTORY',41,1,71193,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000983,133,'INVENTORY',34,1,71182,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000981,133,'EQUIPMENT',23,1,71165,0,1590939266,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001208,133,'INVENTORY',30,194,27003,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000991,133,'INVENTORY',36,1,71186,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001001,133,'INVENTORY',35,1,71198,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001048,129,'EQUIPMENT',10,1,13149,0,0,0,0,0,0,0,3,12,27,15,39,10,48,1,49,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001164,118,'INVENTORY',8,1,5349,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001156,118,'INVENTORY',1,1,55704,0,0,5,0,0,0,0,1,15,1,3,1,10,1,7196,1,7200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001188,123,'INVENTORY',21,1,80006,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001050,129,'EQUIPMENT',4,1,479,0,1,1,1,0,0,0,9,20,15,10,16,10,22,20,5,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90000058,118,'INVENTORY',14,1,72701,0,0,28,1800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001075,129,'INVENTORY',3,1,479,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001161,118,'INVENTORY',5,1,5349,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10000977,122,'EQUIPMENT',23,1,71118,0,1590939229,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30001180,133,'INVENTORY',21,1,5009,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30000669,123,'INVENTORY',27,1,50188,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001114,121,'EQUIPMENT',5,1,16209,0,0,0,0,0,0,0,1,2000,2,80,15,10,16,10,24,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10001167,123,'INVENTORY',31,10,30400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_attr`
--

DROP TABLE IF EXISTS `item_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_attr` (
  `apply` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','CURSE_PCT','MAX_STAMINA','ATTBONUS_WARRIOR','ATTBONUS_ASSASSIN','ATTBONUS_SURA','ATTBONUS_SHAMAN','ATTBONUS_MONSTER','MALL_ATTBONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATTBONUS_PER','MELEE_MAGIC_ATTBONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','ANTI_CRITICAL_PCT','ANTI_PENETRATE_PCT','ANTI_RESIST_MAGIC','ATTBONUS_WOLFMAN','RESIST_WOLFMAN','RESIST_CLAW') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'MAX_HP',
  `prob` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lv1` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lv2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lv3` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lv4` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lv5` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `weapon` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `body` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `wrist` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `foots` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `neck` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `head` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `shield` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ear` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_attr`
--

LOCK TABLES `item_attr` WRITE;
/*!40000 ALTER TABLE `item_attr` DISABLE KEYS */;
INSERT IGNORE INTO `item_attr` VALUES ('MAX_HP','35','500','1000','1500','1500','2000','0','5','5','5','5','0','0','0'),('MAX_SP','35','10','50','80','100','200','0','0','5','5','5','0','0','0'),('CON','11','2','4','6','8','12','5','0','0','0','0','0','5','0'),('INT','11','2','4','6','8','12','5','0','0','0','0','0','5','0'),('STR','11','2','4','6','8','12','5','0','0','0','0','0','5','0'),('DEX','11','2','4','6','8','12','5','0','0','0','0','0','5','0'),('ATT_SPEED','8','1','2','3','5','8','0','0','0','5','0','5','0','0'),('MOV_SPEED','18','2','4','6','10','20','0','0','0','5','0','0','0','5'),('CAST_SPEED','8','2','4','6','10','20','5','5','0','0','0','0','0','0'),('HP_REGEN','65','4','8','12','20','30','0','0','0','0','5','5','0','0'),('SP_REGEN','65','4','8','12','20','30','0','0','0','0','5','5','0','0'),('POISON_PCT','8','1','2','3','5','8','5','0','0','0','0','5','0','0'),('STUN_PCT','18','1','2','3','5','8','5','0','0','5','5','0','0','0'),('SLOW_PCT','35','1','2','3','5','8','5','0','0','5','0','0','0','0'),('CRITICAL_PCT','18','1','2','3','5','10','5','0','0','5','5','0','0','0'),('PENETRATE_PCT','30','1','2','3','5','10','5','0','5','0','5','0','0','0'),('ATTBONUS_HUMAN','10','1','2','3','5','10','5','0','5','0','0','5','5','5'),('ATTBONUS_ANIMAL','35','2','4','6','10','20','5','0','5','0','0','5','5','5'),('ATTBONUS_ORC','35','2','4','6','10','20','5','0','5','0','0','5','5','5'),('ATTBONUS_MILGYO','35','2','4','6','10','20','5','0','5','0','0','5','5','5'),('ATTBONUS_UNDEAD','35','2','4','6','10','20','5','0','5','0','0','5','5','5'),('ATTBONUS_DEVIL','35','2','4','6','10','20','5','0','5','0','0','5','5','5'),('STEAL_HP','50','1','2','3','5','10','0','5','5','0','0','0','0','0'),('STEAL_SP','50','1','2','3','5','10','0','5','0','0','5','5','0','0'),('MANA_BURN_PCT','18','1','2','3','5','10','0','0','5','0','0','0','0','5'),('BLOCK','10','2','4','6','10','15','0','0','0','0','0','0','5','0'),('DODGE','10','2','4','6','10','15','0','0','0','5','0','5','0','0'),('RESIST_SWORD','18','2','4','6','10','15','0','5','0','5','5','0','0','5'),('RESIST_TWOHAND','18','2','4','6','10','15','0','5','0','5','5','0','0','5'),('RESIST_DAGGER','18','2','4','6','10','15','0','5','0','5','5','0','0','5'),('RESIST_BELL','18','2','4','6','10','15','0','5','0','5','5','0','0','5'),('RESIST_FAN','18','2','4','6','10','15','0','5','0','5','5','0','0','5'),('RESIST_BOW','18','2','4','6','10','15','0','5','0','5','5','0','0','5'),('RESIST_FIRE','18','2','4','6','10','15','0','5','5','0','0','5','0','0'),('RESIST_ELEC','18','2','4','6','10','15','0','5','5','0','0','5','0','0'),('RESIST_MAGIC','25','2','4','6','10','15','0','5','5','0','0','5','0','0'),('RESIST_WIND','18','2','4','6','10','15','0','5','5','0','0','5','0','0'),('REFLECT_MELEE','18','1','2','3','6','10','0','5','0','0','0','0','5','0'),('POISON_REDUCE','18','1','2','3','4','5','0','0','0','0','0','0','0','5'),('EXP_DOUBLE_BONUS','10','2','4','6','8','20','0','0','0','5','5','0','5','0'),('GOLD_DOUBLE_BONUS','10','2','4','6','8','20','0','0','0','5','5','0','5','0'),('ITEM_DROP_BONUS','7','2','4','6','8','20','0','0','5','0','0','0','0','5'),('IMMUNE_STUN','3','1','1','1','1','1','0','0','0','0','0','0','1','0'),('IMMUNE_SLOW','3','1','1','1','1','1','0','0','0','0','0','0','1','0'),('ATT_GRADE_BONUS','0','5','10','15','30','50','0','5','0','0','0','0','0','0'),('RESIST_WARRIOR','0','5','5','6','10','15','0','5','0','0','5','0','0','0'),('RESIST_ASSASSIN','0','5','5','6','10','15','0','5','0','0','5','0','0','0'),('RESIST_SURA','0','5','5','6','10','15','0','5','0','0','5','0','0','0'),('RESIST_SHAMAN','0','5','5','6','10','15','0','5','0','0','5','0','0','0');
/*!40000 ALTER TABLE `item_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_attr_rare`
--

DROP TABLE IF EXISTS `item_attr_rare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_attr_rare` (
  `apply` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','CURSE_PCT','MAX_STAMINA','ATTBONUS_WARRIOR','ATTBONUS_ASSASSIN','ATTBONUS_SURA','ATTBONUS_SHAMAN','ATTBONUS_MONSTER','MALL_ATTBONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATTBONUS_PER','MELEE_MAGIC_ATTBONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','ANTI_CRITICAL_PCT','ANTI_PENETRATE_PCT','ANTI_RESIST_MAGIC','ATTBONUS_WOLFMAN','RESIST_WOLFMAN','RESIST_CLAW') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'MAX_HP',
  `prob` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lv1` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lv2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lv3` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lv4` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lv5` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `weapon` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `body` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `wrist` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `foots` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `neck` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `head` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `shield` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ear` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_attr_rare`
--

LOCK TABLES `item_attr_rare` WRITE;
/*!40000 ALTER TABLE `item_attr_rare` DISABLE KEYS */;
INSERT IGNORE INTO `item_attr_rare` VALUES ('MAX_HP','1','500','1000','1500','1500','2000','5','5','5','5','5','5','5','5'),('MAX_SP','1','10','50','80','100','200','5','5','5','5','5','5','5','5'),('CON','1','2','4','6','8','12','5','5','5','5','5','5','5','5'),('INT','1','2','4','6','8','12','5','5','5','5','5','5','5','5'),('STR','1','2','4','6','8','12','5','5','5','5','5','5','5','5'),('DEX','1','2','4','6','8','12','5','5','5','5','5','5','5','5'),('CRITICAL_PCT','1','1','2','3','5','10','5','5','5','5','5','5','5','5'),('PENETRATE_PCT','1','1','2','3','5','10','5','5','5','5','5','5','5','5'),('ATT_GRADE_BONUS','1','50','50','50','50','50','5','5','5','5','5','5','5','5'),('','1','10','10','10','10','10','5','5','5','5','5','5','5','5'),('','1','10','10','10','10','10','5','5','5','5','5','5','5','5'),('','1','10','10','10','10','10','5','5','5','5','5','5','5','5'),('','1','10','10','10','10','10','5','5','5','5','5','5','5','5'),('','1','10','10','10','10','10','5','5','5','5','5','5','5','5'),('RESIST_WARRIOR','1','5','5','5','5','5','5','5','5','5','5','5','5','5'),('RESIST_ASSASSIN','1','5','5','5','5','5','5','5','5','5','5','5','5','5'),('RESIST_SURA','1','5','5','5','5','5','5','5','5','5','5','5','5','5'),('RESIST_SHAMAN','1','5','5','5','5','5','5','5','5','5','5','5','5','5'),('ATT_SPEED','1','1','2','3','5','8','5','5','5','5','5','5','5','5'),('MOV_SPEED','1','2','4','6','10','20','5','5','5','5','5','5','5','5');
/*!40000 ALTER TABLE `item_attr_rare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_award`
--

DROP TABLE IF EXISTS `item_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_award` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `login` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `vnum` int unsigned NOT NULL DEFAULT '0',
  `count` int unsigned NOT NULL DEFAULT '0',
  `given_time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `taken_time` datetime DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `why` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `socket0` int NOT NULL DEFAULT '0',
  `socket1` int NOT NULL DEFAULT '0',
  `socket2` int NOT NULL DEFAULT '0',
  `mall` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid_idx` (`pid`) USING BTREE,
  KEY `given_time_idx` (`given_time`) USING BTREE,
  KEY `taken_time_idx` (`taken_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_award`
--

LOCK TABLES `item_award` WRITE;
/*!40000 ALTER TABLE `item_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_proto`
--

DROP TABLE IF EXISTS `item_proto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_proto` (
  `vnum` int unsigned NOT NULL DEFAULT '0',
  `type` tinyint NOT NULL DEFAULT '0',
  `subtype` tinyint NOT NULL DEFAULT '0',
  `name` varbinary(24) NOT NULL DEFAULT 'Noname',
  `locale_name` varbinary(24) NOT NULL DEFAULT 'Noname',
  `gold` bigint DEFAULT '0',
  `shop_buy_price` bigint unsigned NOT NULL DEFAULT '0',
  `weight` tinyint DEFAULT '0',
  `size` tinyint DEFAULT '0',
  `flag` int DEFAULT '0',
  `wearflag` int DEFAULT '0',
  `antiflag` int DEFAULT '0',
  `immuneflag` set('PARA','CURSE','STUN','SLEEP','SLOW','POISON','TERROR') CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '',
  `refined_vnum` int unsigned NOT NULL DEFAULT '0',
  `refine_set` smallint unsigned NOT NULL DEFAULT '0',
  `magic_pct` tinyint NOT NULL DEFAULT '0',
  `socket_pct` tinyint NOT NULL DEFAULT '0',
  `addon_type` smallint NOT NULL DEFAULT '0',
  `limittype0` tinyint DEFAULT '0',
  `limitvalue0` int DEFAULT '0',
  `limittype1` tinyint DEFAULT '0',
  `limitvalue1` int DEFAULT '0',
  `applytype0` tinyint DEFAULT '0',
  `applyvalue0` int DEFAULT '0',
  `applytype1` tinyint DEFAULT '0',
  `applyvalue1` int DEFAULT '0',
  `applytype2` tinyint DEFAULT '0',
  `applyvalue2` int DEFAULT '0',
  `value0` int DEFAULT '0',
  `value1` int DEFAULT '0',
  `value2` int DEFAULT '0',
  `value3` int DEFAULT '0',
  `value4` int DEFAULT '0',
  `value5` int DEFAULT '0',
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_proto`
--

LOCK TABLES `item_proto` WRITE;
/*!40000 ALTER TABLE `item_proto` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_proto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land`
--

DROP TABLE IF EXISTS `land`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land` (
  `id` int NOT NULL AUTO_INCREMENT,
  `map_index` int NOT NULL DEFAULT '0',
  `x` int NOT NULL DEFAULT '0',
  `y` int NOT NULL DEFAULT '0',
  `width` int NOT NULL DEFAULT '0',
  `height` int NOT NULL DEFAULT '0',
  `guild_id` int unsigned NOT NULL DEFAULT '0',
  `guild_level_limit` tinyint NOT NULL DEFAULT '0',
  `price` int unsigned NOT NULL DEFAULT '0',
  `enable` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land`
--

LOCK TABLES `land` WRITE;
/*!40000 ALTER TABLE `land` DISABLE KEYS */;
INSERT IGNORE INTO `land` VALUES (1,1,20200,10000,3000,3000,0,10,65000000,'YES'),(2,1,23500,13600,3000,3000,0,10,65000000,'YES'),(3,1,27600,10900,3000,3000,0,10,65000000,'YES'),(4,1,55600,9600,3000,3000,0,10,65000000,'YES'),(5,1,57100,3800,3000,3000,0,10,65000000,'YES'),(6,1,60900,5200,3000,3000,0,10,65000000,'YES'),(7,1,66100,7900,3000,3000,0,10,65000000,'YES'),(8,1,81400,16800,3000,3000,0,10,65000000,'YES'),(9,1,90700,20400,3000,3000,20,10,50000000,'YES'),(10,1,94300,23700,3000,3000,0,10,50000000,'YES'),(11,1,10800,108500,3000,3000,0,10,40000000,'YES'),(12,1,5900,108500,3000,3000,0,10,40000000,'YES'),(13,1,7700,104300,3000,3000,0,10,40000000,'YES'),(14,1,23400,46200,3000,3000,0,10,70000000,'YES'),(15,1,17200,44400,3000,3000,0,10,70000000,'YES'),(16,1,20000,40100,3000,3000,0,10,70000000,'YES'),(17,1,25800,36900,3000,3000,0,10,70000000,'YES'),(18,1,16900,35800,3000,3000,0,10,70000000,'YES'),(19,21,29400,11400,3000,3000,0,10,50000000,'YES'),(20,21,33600,12700,3000,3000,0,10,50000000,'YES'),(21,21,36300,16300,3000,3000,0,10,50000000,'YES'),(22,21,55900,17200,3000,3000,0,10,50000000,'YES'),(23,21,72800,8500,3000,3000,0,10,65000000,'YES'),(24,21,76300,5400,3000,3000,0,10,65000000,'YES'),(25,21,77600,10200,3000,3000,0,10,65000000,'YES'),(26,21,84200,47200,3000,3000,0,10,70000000,'YES'),(27,21,87800,61000,3000,3000,0,10,70000000,'YES'),(28,21,32100,113800,3000,3000,0,10,45000000,'YES'),(29,21,28800,117200,3000,3000,0,10,45000000,'YES'),(30,21,24400,118700,3000,3000,0,10,45000000,'YES'),(31,21,22600,114400,3000,3000,0,10,45000000,'YES'),(32,21,34800,92300,3000,3000,0,10,70000000,'YES'),(33,21,37500,89000,3000,3000,0,10,70000000,'YES'),(34,21,35100,73600,3000,3000,0,10,70000000,'YES'),(35,21,35400,69200,3000,3000,0,10,70000000,'YES'),(36,21,35400,55600,3000,3000,0,10,70000000,'YES'),(37,41,66100,9400,3000,3000,0,10,45000000,'YES'),(38,41,70300,7900,3000,3000,0,10,45000000,'YES'),(39,41,73600,11500,3000,3000,0,10,45000000,'YES'),(40,41,70900,15100,3000,3000,0,10,45000000,'YES'),(41,41,71800,61900,3000,3000,0,10,65000000,'YES'),(42,41,77000,64100,3000,3000,0,10,65000000,'YES'),(43,41,60700,66800,3000,3000,0,10,65000000,'YES'),(44,41,74500,68200,3000,3000,0,10,65000000,'YES'),(45,41,67900,110800,3000,3000,0,10,40000000,'YES'),(46,41,67900,115700,3000,3000,0,10,40000000,'YES'),(47,41,62800,114800,3000,3000,0,10,40000000,'YES'),(48,41,16600,95300,3000,3000,0,10,65000000,'YES'),(49,41,5400,94100,3000,3000,0,10,50000000,'YES'),(50,41,18600,89300,3000,3000,0,10,65000000,'YES'),(51,41,4600,89800,3000,3000,0,10,50000000,'YES'),(52,41,11200,36000,3000,3000,0,10,70000000,'YES'),(53,41,8200,31800,3000,3000,0,10,70000000,'YES'),(54,41,12000,29200,3000,3000,0,10,70000000,'YES'),(55,4,9600,13100,3000,3000,0,10,70000000,'YES'),(56,4,16100,15600,3000,3000,0,10,70000000,'YES'),(57,4,9100,19500,3000,3000,0,10,70000000,'YES'),(58,4,14900,19500,3000,3000,0,10,70000000,'YES'),(59,4,27700,19500,3000,3000,0,10,65000000,'YES'),(60,4,23600,23000,3000,3000,0,10,65000000,'YES'),(61,4,31800,24200,3000,3000,0,10,65000000,'YES'),(62,4,27900,27300,3000,3000,0,10,65000000,'YES'),(63,4,35500,35400,3000,3000,0,10,40000000,'YES'),(64,4,32800,39300,3000,3000,0,10,40000000,'YES'),(65,4,39700,39600,3000,3000,0,10,40000000,'YES'),(66,4,36100,42700,3000,3000,0,10,40000000,'YES'),(67,4,24400,39000,3000,3000,0,10,50000000,'YES'),(68,4,19900,41600,3000,3000,0,10,50000000,'YES'),(69,4,14400,41700,3000,3000,0,10,50000000,'YES'),(70,4,10200,39100,3000,3000,0,10,50000000,'YES'),(71,4,7700,34600,3000,3000,0,10,50000000,'YES'),(72,4,8400,29500,3000,3000,0,10,50000000,'YES'),(73,24,7100,5200,3000,3000,0,10,40000000,'YES'),(74,24,12800,4800,3000,3000,0,10,40000000,'YES'),(75,24,9700,9900,3000,3000,0,10,40000000,'YES'),(76,24,14500,13300,3000,3000,0,10,40000000,'YES'),(77,24,36900,26000,3000,3000,0,10,50000000,'YES'),(78,24,38600,29800,3000,3000,0,10,50000000,'YES'),(79,24,36500,33900,3000,3000,0,10,50000000,'YES'),(80,24,33600,38600,3000,3000,0,10,50000000,'YES'),(81,24,30900,33500,3000,3000,0,10,50000000,'YES'),(82,24,25700,33500,3000,3000,0,10,70000000,'YES'),(83,24,25600,37800,3000,3000,0,10,70000000,'YES'),(84,24,20900,37800,3000,3000,0,10,70000000,'YES'),(85,24,20900,33700,3000,3000,0,10,70000000,'YES'),(86,24,14200,33700,3000,3000,0,10,65000000,'YES'),(87,24,10000,37100,3000,3000,0,10,65000000,'YES'),(88,24,5800,34800,3000,3000,0,10,65000000,'YES'),(89,24,8800,29800,3000,3000,0,10,65000000,'YES'),(90,24,10500,26100,3000,3000,0,10,65000000,'YES'),(91,44,5400,7700,3000,3000,0,10,40000000,'YES'),(92,44,9700,7300,3000,3000,0,10,40000000,'YES'),(93,44,5500,11500,3000,3000,0,10,40000000,'YES'),(94,44,5100,15500,3000,3000,0,10,40000000,'YES'),(95,44,8900,17900,3000,3000,0,10,40000000,'YES'),(96,44,22200,15600,3000,3000,0,10,50000000,'YES'),(97,44,43000,3700,3000,3000,0,10,70000000,'YES'),(98,44,38900,27200,3000,3000,0,10,50000000,'YES'),(99,44,30200,29900,3000,3000,0,10,50000000,'YES'),(100,44,40000,34500,3000,3000,0,10,50000000,'YES'),(101,44,32800,37000,3000,3000,0,10,50000000,'YES'),(102,44,40600,39300,3000,3000,0,10,50000000,'YES'),(103,44,35600,40600,3000,3000,0,10,50000000,'YES'),(104,44,18500,33600,3000,3000,0,10,70000000,'YES'),(105,44,17300,38500,3000,3000,0,10,70000000,'YES'),(106,44,13500,39400,3000,3000,0,10,70000000,'YES'),(107,44,9100,38700,3000,3000,0,10,65000000,'YES'),(108,44,5000,36300,3000,3000,0,10,65000000,'YES'),(109,6,11600,18700,3000,3000,0,10,65000000,'YES'),(110,6,11000,14400,3000,3000,0,10,65000000,'YES'),(111,6,10700,10600,3000,3000,0,10,65000000,'YES'),(112,6,14600,10000,3000,3000,0,10,65000000,'YES'),(113,6,12300,35900,3000,3000,0,10,65000000,'YES'),(114,6,16700,38800,3000,3000,0,10,65000000,'YES'),(115,6,30700,38900,3000,3000,0,10,65000000,'YES'),(116,6,36800,40100,3000,3000,0,10,65000000,'YES'),(117,6,39800,36500,3000,3000,0,10,50000000,'YES'),(118,6,32000,35200,3000,3000,0,10,50000000,'YES'),(119,6,38500,25300,3000,3000,0,10,40000000,'YES'),(120,6,38900,14900,3000,3000,0,10,40000000,'YES'),(121,6,37700,10600,3000,3000,0,10,40000000,'YES'),(122,6,32500,9800,3000,3000,0,10,70000000,'YES'),(123,6,26700,10000,3000,3000,0,10,70000000,'YES'),(124,26,11600,18700,3000,3000,0,10,65000000,'YES'),(125,26,11000,14400,3000,3000,0,10,65000000,'YES'),(126,26,10700,10600,3000,3000,0,10,65000000,'YES'),(127,26,14600,10000,3000,3000,0,10,65000000,'YES'),(128,26,12300,35900,3000,3000,0,10,65000000,'YES'),(129,26,16700,38800,3000,3000,0,10,65000000,'YES'),(130,26,30700,38900,3000,3000,0,10,65000000,'YES'),(131,26,36800,40100,3000,3000,0,10,65000000,'YES'),(132,26,39800,36500,3000,3000,0,10,50000000,'YES'),(133,26,32000,35200,3000,3000,0,10,50000000,'YES'),(134,26,38500,25300,3000,3000,0,10,40000000,'YES'),(135,26,38900,14900,3000,3000,0,10,40000000,'YES'),(136,26,37700,10600,3000,3000,0,10,40000000,'YES'),(137,26,32500,9800,3000,3000,0,10,70000000,'YES'),(138,26,26700,10000,3000,3000,0,10,70000000,'YES'),(139,46,11600,18700,3000,3000,0,10,65000000,'YES'),(140,46,11000,14400,3000,3000,0,10,65000000,'YES'),(141,46,10700,10600,3000,3000,0,10,65000000,'YES'),(142,46,14600,10000,3000,3000,0,10,65000000,'YES'),(143,46,12300,35900,3000,3000,0,10,65000000,'YES'),(144,46,16700,38800,3000,3000,0,10,65000000,'YES'),(145,46,30700,38900,3000,3000,0,10,65000000,'YES'),(146,46,36800,40100,3000,3000,0,10,65000000,'YES'),(147,46,39800,36500,3000,3000,0,10,50000000,'YES'),(148,46,32000,35200,3000,3000,0,10,50000000,'YES'),(149,46,38500,25300,3000,3000,0,10,40000000,'YES'),(150,46,38900,14900,3000,3000,0,10,40000000,'YES'),(151,46,37700,10600,3000,3000,0,10,40000000,'YES'),(152,46,32500,9800,3000,3000,0,10,70000000,'YES'),(153,46,26700,10000,3000,3000,0,10,70000000,'YES');
/*!40000 ALTER TABLE `land` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levellog`
--

DROP TABLE IF EXISTS `levellog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levellog` (
  `name` char(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `level` int unsigned NOT NULL,
  `time` datetime DEFAULT '2001-01-01 00:00:00',
  `account_id` int DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `playtime` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`level`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levellog`
--

LOCK TABLES `levellog` WRITE;
/*!40000 ALTER TABLE `levellog` DISABLE KEYS */;
/*!40000 ALTER TABLE `levellog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locale`
--

DROP TABLE IF EXISTS `locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locale` (
  `mKey` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mValue` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mKey`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locale`
--

LOCK TABLES `locale` WRITE;
/*!40000 ALTER TABLE `locale` DISABLE KEYS */;
INSERT IGNORE INTO `locale` VALUES ('SKILL_POWER_BY_LEVEL_TYPE0','0 5 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 50 52 54 56 58 60 63 66 69 72 82 85 88 91 94 98 102 106 110 115 125 125 125 125 125'),('SKILL_POWER_BY_LEVEL_TYPE1','0 5 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 50 52 54 56 58 60 63 66 69 72 82 85 88 91 94 98 102 106 110 115 125 125 125 125 125'),('SKILL_POWER_BY_LEVEL_TYPE2','0 5 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 50 52 54 56 58 60 63 66 69 72 82 85 88 91 94 98 102 106 110 115 125 125 125 125 125'),('SKILL_POWER_BY_LEVEL_TYPE3','0 5 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 50 52 54 56 58 60 63 66 69 72 82 85 88 91 94 98 102 106 110 115 125 125 125 125 125'),('SKILL_POWER_BY_LEVEL_TYPE4','0 5 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 50 52 54 56 58 60 63 66 69 72 82 85 88 91 94 98 102 106 110 115 125 125 125 125 125'),('SKILL_POWER_BY_LEVEL_TYPE5','0 5 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 50 52 54 56 58 60 63 66 69 72 82 85 88 91 94 98 102 106 110 115 125 125 125 125 125'),('SKILL_POWER_BY_LEVEL_TYPE6','0 5 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 50 52 54 56 58 60 63 66 69 72 82 85 88 91 94 98 102 106 110 115 125 125 125 125 125'),('SKILL_POWER_BY_LEVEL_TYPE7','0 5 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 50 52 54 56 58 60 63 66 69 72 82 85 88 91 94 98 102 106 110 115 125 125 125 125 125'),('LOCALE','france'),('DB_NAME_COLUMN','locale_name'),('SKILL_DAMAGE_BY_LEVEL_UNDER_90','0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0'),('SKILL_DAMAGE_BY_LEVEL_UNDER_45','0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0'),('SKILL_POWER_BY_LEVEL','0 5 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 50 52 54 56 58 60 63 66 69 72 82 85 88 91 94 98 102 106 110 115 125 125 125 125 125');
/*!40000 ALTER TABLE `locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `type` enum('ITEM','CHARACTER') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'ITEM',
  `time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `who` int unsigned NOT NULL DEFAULT '0',
  `x` int unsigned NOT NULL DEFAULT '0',
  `y` int unsigned NOT NULL DEFAULT '0',
  `what` int NOT NULL DEFAULT '0',
  `how` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `hint` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ip` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `vnum` int NOT NULL DEFAULT '0',
  KEY `who_idx` (`who`) USING BTREE,
  KEY `what_idx` (`what`) USING BTREE,
  KEY `how_idx` (`how`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_destroy`
--

DROP TABLE IF EXISTS `log_destroy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_destroy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `vnum` int NOT NULL,
  `count_before` int NOT NULL,
  `count_after` int NOT NULL,
  `count` int NOT NULL,
  `map_index` int NOT NULL DEFAULT '0',
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1235 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_destroy`
--

LOCK TABLES `log_destroy` WRITE;
/*!40000 ALTER TABLE `log_destroy` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_destroy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_drop`
--

DROP TABLE IF EXISTS `log_drop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_drop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `vnum` int NOT NULL,
  `count_before` int NOT NULL,
  `count_after` int NOT NULL,
  `count` int NOT NULL,
  `map_index` int NOT NULL DEFAULT '0',
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=428 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_drop`
--

LOCK TABLES `log_drop` WRITE;
/*!40000 ALTER TABLE `log_drop` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_drop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_drop_cheque`
--

DROP TABLE IF EXISTS `log_drop_cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_drop_cheque` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `cheque_before` bigint NOT NULL,
  `cheque_after` bigint NOT NULL,
  `cheque` int NOT NULL,
  `map_index` int NOT NULL DEFAULT '0',
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_drop_cheque`
--

LOCK TABLES `log_drop_cheque` WRITE;
/*!40000 ALTER TABLE `log_drop_cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_drop_cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_drop_gold`
--

DROP TABLE IF EXISTS `log_drop_gold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_drop_gold` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `gold_before` bigint NOT NULL,
  `gold_after` bigint NOT NULL,
  `gold` int NOT NULL,
  `map_index` int NOT NULL DEFAULT '0',
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_drop_gold`
--

LOCK TABLES `log_drop_gold` WRITE;
/*!40000 ALTER TABLE `log_drop_gold` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_drop_gold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_exchange`
--

DROP TABLE IF EXISTS `log_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_exchange` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid_from` int NOT NULL,
  `pid_to` int NOT NULL,
  `vnum` int NOT NULL,
  `from_count_before` int NOT NULL,
  `from_count_after` int NOT NULL,
  `to_count_before` int NOT NULL,
  `to_count_after` int NOT NULL,
  `count` int NOT NULL,
  `map_index` int NOT NULL DEFAULT '0',
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_exchange`
--

LOCK TABLES `log_exchange` WRITE;
/*!40000 ALTER TABLE `log_exchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_exchange_cheque`
--

DROP TABLE IF EXISTS `log_exchange_cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_exchange_cheque` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid_from` int NOT NULL,
  `pid_to` int NOT NULL,
  `from_count_before` bigint NOT NULL,
  `from_count_after` bigint NOT NULL,
  `to_count_before` bigint NOT NULL,
  `to_count_after` bigint NOT NULL,
  `cheque` bigint NOT NULL,
  `map_index` int NOT NULL,
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_exchange_cheque`
--

LOCK TABLES `log_exchange_cheque` WRITE;
/*!40000 ALTER TABLE `log_exchange_cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_exchange_cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_exchange_gold`
--

DROP TABLE IF EXISTS `log_exchange_gold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_exchange_gold` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid_from` int NOT NULL,
  `pid_to` int NOT NULL,
  `from_count_before` bigint NOT NULL,
  `from_count_after` bigint NOT NULL,
  `to_count_before` bigint NOT NULL,
  `to_count_after` bigint NOT NULL,
  `gold` bigint NOT NULL,
  `map_index` int NOT NULL,
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_exchange_gold`
--

LOCK TABLES `log_exchange_gold` WRITE;
/*!40000 ALTER TABLE `log_exchange_gold` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_exchange_gold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_fish`
--

DROP TABLE IF EXISTS `log_fish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_fish` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `vnum` int NOT NULL,
  `map_index` int NOT NULL,
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_fish`
--

LOCK TABLES `log_fish` WRITE;
/*!40000 ALTER TABLE `log_fish` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_fish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_ore`
--

DROP TABLE IF EXISTS `log_ore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_ore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `ore` int NOT NULL,
  `vnum` int NOT NULL,
  `count` int NOT NULL,
  `map_index` int NOT NULL,
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_ore`
--

LOCK TABLES `log_ore` WRITE;
/*!40000 ALTER TABLE `log_ore` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_ore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_pickup`
--

DROP TABLE IF EXISTS `log_pickup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_pickup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `vnum` int NOT NULL,
  `count_before` int NOT NULL,
  `count_after` int NOT NULL,
  `count` int NOT NULL,
  `map_index` int NOT NULL DEFAULT '0',
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=805 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_pickup`
--

LOCK TABLES `log_pickup` WRITE;
/*!40000 ALTER TABLE `log_pickup` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_pickup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_pickup_cheque`
--

DROP TABLE IF EXISTS `log_pickup_cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_pickup_cheque` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `cheque_before` bigint NOT NULL,
  `cheque_after` bigint NOT NULL,
  `cheque` int NOT NULL,
  `map_index` int NOT NULL DEFAULT '0',
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6699 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_pickup_cheque`
--

LOCK TABLES `log_pickup_cheque` WRITE;
/*!40000 ALTER TABLE `log_pickup_cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_pickup_cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_pickup_gold`
--

DROP TABLE IF EXISTS `log_pickup_gold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_pickup_gold` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `gold_before` bigint NOT NULL,
  `gold_after` bigint NOT NULL,
  `gold` int NOT NULL,
  `map_index` int NOT NULL DEFAULT '0',
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8663 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_pickup_gold`
--

LOCK TABLES `log_pickup_gold` WRITE;
/*!40000 ALTER TABLE `log_pickup_gold` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_pickup_gold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_refine`
--

DROP TABLE IF EXISTS `log_refine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_refine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `old_vnum` int NOT NULL,
  `new_vnum` int NOT NULL,
  `map_index` int NOT NULL,
  `map_x` int NOT NULL,
  `map_y` int NOT NULL,
  `map_z` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_refine`
--

LOCK TABLES `log_refine` WRITE;
/*!40000 ALTER TABLE `log_refine` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_refine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginlog` (
  `type` enum('LOGIN','LOGOUT') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `channel` tinyint DEFAULT NULL,
  `account_id` int unsigned DEFAULT NULL,
  `pid` int unsigned DEFAULT NULL,
  `level` smallint DEFAULT NULL,
  `job` tinyint DEFAULT NULL,
  `playtime` int unsigned DEFAULT NULL,
  KEY `pid` (`pid`,`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog`
--

LOCK TABLES `loginlog` WRITE;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog2`
--

DROP TABLE IF EXISTS `loginlog2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginlog2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` enum('VALID','INVALID') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `is_gm` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `login_time` datetime DEFAULT '2001-01-01 00:00:00',
  `channel` tinyint DEFAULT NULL,
  `account_id` int unsigned DEFAULT NULL,
  `pid` int unsigned DEFAULT NULL,
  `ip` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `client_version` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `logout_time` datetime DEFAULT '2001-01-01 00:00:00',
  `playtime` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`,`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2109 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog2`
--

LOCK TABLES `loginlog2` WRITE;
/*!40000 ALTER TABLE `loginlog2` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lotto_list`
--

DROP TABLE IF EXISTS `lotto_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lotto_list` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `pid` int unsigned DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotto_list`
--

LOCK TABLES `lotto_list` WRITE;
/*!40000 ALTER TABLE `lotto_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `lotto_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marriage`
--

DROP TABLE IF EXISTS `marriage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marriage` (
  `is_married` tinyint NOT NULL DEFAULT '0',
  `pid1` int unsigned NOT NULL DEFAULT '0',
  `pid2` int unsigned NOT NULL DEFAULT '0',
  `love_point` int DEFAULT NULL,
  `time` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid1`,`pid2`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marriage`
--

LOCK TABLES `marriage` WRITE;
/*!40000 ALTER TABLE `marriage` DISABLE KEYS */;
INSERT IGNORE INTO `marriage` VALUES (1,118,119,-48861,1588615960);
/*!40000 ALTER TABLE `marriage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_list`
--

DROP TABLE IF EXISTS `messenger_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_list` (
  `account` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `companion` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`account`,`companion`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_list`
--

LOCK TABLES `messenger_list` WRITE;
/*!40000 ALTER TABLE `messenger_list` DISABLE KEYS */;
INSERT IGNORE INTO `messenger_list` VALUES ('ASIKOO','Player'),('ASIKOO','PlayerOne'),('ASIKOO','PlayerSix'),('ASIKOO','PlayerTwo'),('Player','ASIKOO'),('PlayerOne','ASIKOO'),('PlayerOne','PlayerTwo'),('PlayerSix','ASIKOO'),('PlayerTwo','ASIKOO'),('PlayerTwo','PlayerOne');
/*!40000 ALTER TABLE `messenger_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mob_proto`
--

DROP TABLE IF EXISTS `mob_proto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mob_proto` (
  `vnum` int NOT NULL DEFAULT '0',
  `name` varchar(24) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT 'Noname',
  `locale_name` varbinary(24) NOT NULL DEFAULT 'Noname',
  `type` tinyint NOT NULL DEFAULT '0',
  `rank` tinyint NOT NULL DEFAULT '0',
  `battle_type` tinyint(1) NOT NULL DEFAULT '0',
  `level` smallint NOT NULL DEFAULT '1',
  `size` set('SMALL','MEDIUM','BIG') CHARACTER SET big5 COLLATE big5_chinese_ci DEFAULT NULL,
  `ai_flag` set('AGGR','NOMOVE','COWARD','NOATTSHINSU','NOATTCHUNJO','NOATTJINNO','ATTMOB','BERSERK','STONESKIN','GODSPEED','DEATHBLOW','REVIVE') CHARACTER SET big5 COLLATE big5_chinese_ci DEFAULT NULL,
  `mount_capacity` tinyint DEFAULT NULL,
  `setRaceFlag` set('ANIMAL','UNDEAD','DEVIL','HUMAN','ORC','MILGYO','INSECT','FIRE','ICE','DESERT') CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '',
  `setImmuneFlag` set('STUN','SLOW','FALL','CURSE','POISON','TERROR') CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '',
  `on_click` tinyint NOT NULL DEFAULT '0',
  `empire` tinyint NOT NULL DEFAULT '0',
  `drop_item` int unsigned NOT NULL DEFAULT '0',
  `resurrection_vnum` int unsigned NOT NULL DEFAULT '0',
  `folder` varchar(100) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '',
  `st` smallint unsigned NOT NULL DEFAULT '0',
  `dx` smallint unsigned NOT NULL DEFAULT '0',
  `ht` smallint unsigned NOT NULL DEFAULT '0',
  `iq` smallint unsigned NOT NULL DEFAULT '0',
  `damage_min` smallint unsigned NOT NULL DEFAULT '0',
  `damage_max` smallint unsigned NOT NULL DEFAULT '0',
  `max_hp` int unsigned NOT NULL DEFAULT '0',
  `regen_cycle` tinyint unsigned NOT NULL DEFAULT '0',
  `regen_percent` tinyint unsigned NOT NULL DEFAULT '0',
  `exp` int unsigned NOT NULL DEFAULT '0',
  `gold_min` int NOT NULL DEFAULT '0',
  `gold_max` int NOT NULL DEFAULT '0',
  `def` smallint unsigned NOT NULL DEFAULT '0',
  `attack_speed` smallint unsigned NOT NULL DEFAULT '100',
  `move_speed` smallint unsigned NOT NULL DEFAULT '100',
  `aggressive_hp_pct` tinyint unsigned NOT NULL DEFAULT '0',
  `aggressive_sight` smallint unsigned NOT NULL DEFAULT '0',
  `attack_range` smallint unsigned NOT NULL DEFAULT '0',
  `polymorph_item` int unsigned NOT NULL DEFAULT '0',
  `enchant_curse` tinyint unsigned NOT NULL DEFAULT '0',
  `enchant_slow` tinyint unsigned NOT NULL DEFAULT '0',
  `enchant_poison` tinyint unsigned NOT NULL DEFAULT '0',
  `enchant_stun` tinyint unsigned NOT NULL DEFAULT '0',
  `enchant_critical` tinyint unsigned NOT NULL DEFAULT '0',
  `enchant_penetrate` tinyint unsigned NOT NULL DEFAULT '0',
  `resist_sword` tinyint NOT NULL DEFAULT '0',
  `resist_twohand` tinyint NOT NULL DEFAULT '0',
  `resist_dagger` tinyint NOT NULL DEFAULT '0',
  `resist_bell` tinyint NOT NULL DEFAULT '0',
  `resist_fan` tinyint NOT NULL DEFAULT '0',
  `resist_bow` tinyint NOT NULL DEFAULT '0',
  `resist_claw` tinyint NOT NULL,
  `resist_fire` tinyint NOT NULL DEFAULT '0',
  `resist_elect` tinyint NOT NULL DEFAULT '0',
  `resist_magic` tinyint NOT NULL DEFAULT '0',
  `resist_wind` tinyint NOT NULL DEFAULT '0',
  `resist_poison` tinyint NOT NULL DEFAULT '0',
  `resist_bleeding` tinyint NOT NULL,
  `dam_multiply` float(4,0) DEFAULT NULL,
  `summon` int DEFAULT NULL,
  `drain_sp` int DEFAULT NULL,
  `mob_color` int DEFAULT NULL,
  `skill_level0` tinyint unsigned DEFAULT NULL,
  `skill_vnum0` int unsigned DEFAULT NULL,
  `skill_level1` tinyint unsigned DEFAULT NULL,
  `skill_vnum1` int unsigned DEFAULT NULL,
  `skill_level2` tinyint unsigned DEFAULT NULL,
  `skill_vnum2` int unsigned DEFAULT NULL,
  `skill_level3` tinyint unsigned DEFAULT NULL,
  `skill_vnum3` int unsigned DEFAULT NULL,
  `skill_level4` tinyint unsigned DEFAULT NULL,
  `skill_vnum4` int unsigned DEFAULT NULL,
  `sp_berserk` tinyint NOT NULL DEFAULT '0',
  `sp_stoneskin` tinyint NOT NULL DEFAULT '0',
  `sp_godspeed` tinyint NOT NULL DEFAULT '0',
  `sp_deathblow` tinyint NOT NULL DEFAULT '0',
  `sp_revive` tinyint NOT NULL DEFAULT '0',
  `skill_range` tinyint NOT NULL,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mob_proto`
--

LOCK TABLES `mob_proto` WRITE;
/*!40000 ALTER TABLE `mob_proto` DISABLE KEYS */;
/*!40000 ALTER TABLE `mob_proto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monarch`
--

DROP TABLE IF EXISTS `monarch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monarch` (
  `empire` int unsigned NOT NULL DEFAULT '0',
  `pid` int unsigned DEFAULT '0',
  `name` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `windate` datetime DEFAULT '2001-01-01 00:00:00',
  `money` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`empire`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monarch`
--

LOCK TABLES `monarch` WRITE;
/*!40000 ALTER TABLE `monarch` DISABLE KEYS */;
/*!40000 ALTER TABLE `monarch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monarch_candidacy`
--

DROP TABLE IF EXISTS `monarch_candidacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monarch_candidacy` (
  `vote` bigint NOT NULL DEFAULT '0',
  `pid` int unsigned NOT NULL DEFAULT '0',
  `account_id` int unsigned NOT NULL DEFAULT '0',
  `date` bigint DEFAULT '0',
  `windate` bigint DEFAULT '0',
  `name` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'NONAME',
  `empire` int DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monarch_candidacy`
--

LOCK TABLES `monarch_candidacy` WRITE;
/*!40000 ALTER TABLE `monarch_candidacy` DISABLE KEYS */;
/*!40000 ALTER TABLE `monarch_candidacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monarch_election`
--

DROP TABLE IF EXISTS `monarch_election`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monarch_election` (
  `pid2` int unsigned NOT NULL DEFAULT '0',
  `account_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid2`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monarch_election`
--

LOCK TABLES `monarch_election` WRITE;
/*!40000 ALTER TABLE `monarch_election` DISABLE KEYS */;
/*!40000 ALTER TABLE `monarch_election` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_log`
--

DROP TABLE IF EXISTS `money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `money_log` (
  `time` datetime DEFAULT NULL,
  `type` enum('MONSTER','SHOP','REFINE','QUEST','GUILD','MISC','KILL','DROP') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `vnum` int NOT NULL DEFAULT '0',
  `gold` bigint NOT NULL DEFAULT '0',
  KEY `type` (`type`,`vnum`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_log`
--

LOCK TABLES `money_log` WRITE;
/*!40000 ALTER TABLE `money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myshop_pricelist`
--

DROP TABLE IF EXISTS `myshop_pricelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myshop_pricelist` (
  `owner_id` int unsigned NOT NULL DEFAULT '0',
  `item_vnum` int unsigned NOT NULL DEFAULT '0',
  `price` bigint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `list_id` (`owner_id`,`item_vnum`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myshop_pricelist`
--

LOCK TABLES `myshop_pricelist` WRITE;
/*!40000 ALTER TABLE `myshop_pricelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `myshop_pricelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_petsystem`
--

DROP TABLE IF EXISTS `new_petsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_petsystem` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` int NOT NULL DEFAULT '1',
  `evolution` int NOT NULL DEFAULT '1',
  `exp` int NOT NULL DEFAULT '0',
  `expi` int NOT NULL DEFAULT '0',
  `bonus0` int NOT NULL DEFAULT '0',
  `bonus1` int NOT NULL DEFAULT '0',
  `bonus2` int NOT NULL DEFAULT '0',
  `skill0` int NOT NULL DEFAULT '-1',
  `skill0lv` int NOT NULL DEFAULT '0',
  `skill1` int NOT NULL DEFAULT '-1',
  `skill1lv` int NOT NULL DEFAULT '0',
  `skill2` int NOT NULL DEFAULT '-1',
  `skill2lv` int NOT NULL DEFAULT '0',
  `duration` int NOT NULL DEFAULT '0',
  `tduration` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_petsystem`
--

LOCK TABLES `new_petsystem` WRITE;
/*!40000 ALTER TABLE `new_petsystem` DISABLE KEYS */;
INSERT IGNORE INTO `new_petsystem` VALUES (30000139,'MiaW',82,3,3417488,66500,60,48,70,8,20,12,20,17,20,2280,2880),(30001150,'Meley',14,0,0,10000,12,26,21,0,0,-1,0,-1,0,2853,2880),(10001024,'Singe',1,0,0,0,2,17,14,0,0,-1,0,-1,0,17273,17280),(10001128,'ASIKOO',1,0,8,0,1,16,12,0,0,0,0,-1,0,15748,15840),(30001156,'MiaW',5,0,1119,0,15,3,10,0,0,-1,0,-1,0,7196,7200),(30001170,'MiaW',4,0,336,0,10,17,4,0,0,0,0,0,0,4319,4320);
/*!40000 ALTER TABLE `new_petsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object`
--

DROP TABLE IF EXISTS `object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object` (
  `id` int NOT NULL AUTO_INCREMENT,
  `land_id` int NOT NULL DEFAULT '0',
  `vnum` int unsigned NOT NULL DEFAULT '0',
  `map_index` int NOT NULL DEFAULT '0',
  `x` int NOT NULL DEFAULT '0',
  `y` int NOT NULL DEFAULT '0',
  `x_rot` float NOT NULL DEFAULT '0',
  `y_rot` float NOT NULL DEFAULT '0',
  `z_rot` float NOT NULL DEFAULT '0',
  `life` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object`
--

LOCK TABLES `object` WRITE;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT IGNORE INTO `object` VALUES (28,9,14100,1,502363,916764,0,0,0,0),(29,9,14200,1,502678,917069,0,0,324,0),(30,9,14300,1,503010,916880,0,0,0,0),(31,9,14301,1,503104,917021,0,0,0,0),(32,9,14306,1,503104,917271,0,0,0,0),(33,9,14400,1,502846,917111,0,0,0,0),(34,9,14061,1,501075,917996,0,0,88,0),(35,9,14307,1,501224,917804,0,0,0,0),(36,9,14307,1,501327,917814,0,0,0,0),(37,9,14307,1,501413,917818,0,0,0,0),(38,9,14307,1,501204,918182,0,0,0,0),(39,9,14300,1,501097,918217,0,0,0,0),(40,9,14304,1,501159,917764,0,0,191,0),(41,9,14404,1,501403,917660,0,0,0,0),(42,9,14013,1,501196,918553,0,0,109,0),(43,9,14302,1,501130,918329,0,0,0,0),(44,9,14303,1,501343,918709,0,0,0,0),(45,9,14305,1,501494,918924,0,0,82,0),(46,9,14402,1,501238,918861,0,0,0,0),(47,9,14303,1,501670,918916,0,0,0,0),(48,9,14304,1,501836,918717,0,0,91,0),(49,9,14302,1,501892,918478,0,0,76,0),(50,9,14052,1,502981,918698,0,0,209,0),(51,9,14301,1,501214,917556,0,0,0,0),(52,9,14308,1,501112,917625,0,0,0,0),(53,9,14408,1,501998,918591,0,0,0,0);
/*!40000 ALTER TABLE `object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_proto`
--

DROP TABLE IF EXISTS `object_proto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_proto` (
  `vnum` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `price` int unsigned NOT NULL DEFAULT '0',
  `materials` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `upgrade_vnum` int unsigned NOT NULL DEFAULT '0',
  `upgrade_limit_time` int unsigned NOT NULL DEFAULT '0',
  `life` int NOT NULL DEFAULT '0',
  `reg_1` int NOT NULL DEFAULT '0',
  `reg_2` int NOT NULL DEFAULT '0',
  `reg_3` int NOT NULL DEFAULT '0',
  `reg_4` int NOT NULL DEFAULT '0',
  `npc` int unsigned NOT NULL DEFAULT '0',
  `group_vnum` int unsigned NOT NULL DEFAULT '0',
  `dependent_group` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_proto`
--

LOCK TABLES `object_proto` WRITE;
/*!40000 ALTER TABLE `object_proto` DISABLE KEYS */;
INSERT IGNORE INTO `object_proto` VALUES (14013,'?? ???',20000000,'90010,20/90011,30/90012,20',0,0,0,-10,-10,10,10,20044,2,1),(14014,'??? ???',20000000,'90010,20/90011,30/90012,20',0,0,0,-10,-10,10,10,20045,2,1),(14015,'???? ???',20000000,'90010,20/90011,30/90012,20',0,0,0,-10,-10,10,10,20046,2,1),(14043,'????? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20060,3,1),(14045,'??? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20062,3,1),(14046,'?? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20063,3,1),(14047,'? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20064,3,1),(14048,'? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20065,3,1),(14049,'?? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20066,3,1),(14050,'??? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20067,3,1),(14051,'?? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20068,3,1),(14052,'?? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20069,3,1),(14053,'?? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20070,3,1),(14054,'??? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20071,3,1),(14055,'?? ???',20000000,'90010,15/90011,20/90012,25',0,0,0,-10,-10,10,10,20072,3,1),(14061,'?? ??',25000000,'90010,25/90011,25/90012,25',0,0,0,-10,-10,10,10,20077,4,1),(14062,'?? ??',500000000,'90010,50/90011,50/90012,50',0,0,0,-10,-10,10,10,20078,4,4),(14063,'?? ??',750000000,'90010,75/90011,75/90012,75',0,0,0,-10,-10,10,10,20079,4,4),(14100,'?(1)',20000000,'90010,20/90011,30/90012,25',0,0,0,-10,-10,10,10,0,1,0),(14110,'?(2)',20000000,'90010,20/90011,30/90012,25',0,0,0,-10,-10,10,10,0,1,0),(14120,'?(3)',20000000,'90010,20/90011,30/90012,25',0,0,0,-10,-10,10,10,0,1,0),(14200,'?? ??',3000000,'90011,5/90012,5',0,0,0,-10,-10,10,10,0,0,1),(14300,'?1',300000,'90010,5',0,0,0,-10,-10,10,10,0,0,0),(14301,'?2',300000,'90010,5',0,0,0,-10,-10,10,10,0,0,0),(14302,'?3',300000,'90010,7',0,0,0,-10,-10,10,10,0,0,0),(14303,'?4',300000,'90010,7',0,0,0,-10,-10,10,10,0,0,0),(14304,'?5',300000,'90010,7',0,0,0,-10,-10,10,10,0,0,0),(14305,'?6',300000,'90010,8',0,0,0,-10,-10,10,10,0,0,0),(14306,'?7',300000,'90010,8',0,0,0,-10,-10,10,10,0,0,0),(14307,'?8',300000,'90010,8',0,0,0,-10,-10,10,10,0,0,0),(14308,'?9',300000,'90010,9',0,0,0,-10,-10,10,10,0,0,0),(14309,'?10',300000,'90010,9',0,0,0,-10,-10,10,10,0,0,0),(14400,'??1',2000000,'90011,5',0,0,0,0,0,0,0,0,0,0),(14401,'??2',2000000,'90011,5',0,0,0,0,0,0,0,0,0,0),(14402,'??3',2000000,'90011,7',0,0,0,0,0,0,0,0,0,0),(14403,'??4',2000000,'90011,7',0,0,0,0,0,0,0,0,0,0),(14404,'??5',2000000,'90011,7',0,0,0,0,0,0,0,0,0,0),(14405,'??6',2000000,'90011,9',0,0,0,0,0,0,0,0,0,0),(14406,'??7',2000000,'90011,9',0,0,0,0,0,0,0,0,0,0),(14407,'??8',2000000,'90011,9',0,0,0,0,0,0,0,0,0,0),(14408,'??9',2000000,'90011,9',0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `object_proto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcbang_ip`
--

DROP TABLE IF EXISTS `pcbang_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcbang_ip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pcbang_id` int NOT NULL DEFAULT '0',
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '000.000.000.000',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ip` (`ip`) USING BTREE,
  KEY `pcbang_id` (`pcbang_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcbang_ip`
--

LOCK TABLES `pcbang_ip` WRITE;
/*!40000 ALTER TABLE `pcbang_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcbang_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcbang_loginlog`
--

DROP TABLE IF EXISTS `pcbang_loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcbang_loginlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `pcbang_id` int NOT NULL DEFAULT '0',
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '000.000.000.000',
  `pid` int unsigned DEFAULT NULL,
  `play_time` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `pcbang_id` (`pcbang_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcbang_loginlog`
--

LOCK TABLES `pcbang_loginlog` WRITE;
/*!40000 ALTER TABLE `pcbang_loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcbang_loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL DEFAULT '0',
  `name` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME',
  `job` tinyint unsigned NOT NULL DEFAULT '0',
  `voice` tinyint unsigned NOT NULL DEFAULT '0',
  `dir` tinyint NOT NULL DEFAULT '0',
  `x` int NOT NULL DEFAULT '0',
  `y` int NOT NULL DEFAULT '0',
  `z` int NOT NULL DEFAULT '0',
  `map_index` int NOT NULL DEFAULT '0',
  `exit_x` int NOT NULL DEFAULT '0',
  `exit_y` int NOT NULL DEFAULT '0',
  `exit_map_index` int NOT NULL DEFAULT '0',
  `hp` smallint NOT NULL DEFAULT '0',
  `mp` smallint NOT NULL DEFAULT '0',
  `stamina` smallint NOT NULL DEFAULT '0',
  `random_hp` smallint unsigned NOT NULL DEFAULT '0',
  `random_sp` smallint unsigned NOT NULL DEFAULT '0',
  `playtime` int NOT NULL DEFAULT '0',
  `level` tinyint unsigned NOT NULL DEFAULT '0',
  `level_step` tinyint(1) NOT NULL DEFAULT '0',
  `st` smallint NOT NULL DEFAULT '0',
  `ht` smallint NOT NULL DEFAULT '0',
  `dx` smallint NOT NULL DEFAULT '0',
  `iq` smallint NOT NULL DEFAULT '0',
  `exp` int NOT NULL DEFAULT '0',
  `gold` bigint NOT NULL DEFAULT '0',
  `gaya` int NOT NULL DEFAULT '0',
  `stat_point` smallint NOT NULL DEFAULT '0',
  `skill_point` smallint NOT NULL DEFAULT '0',
  `quickslot` tinyblob,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0.0.0.0',
  `part_main` int NOT NULL DEFAULT '0',
  `part_base` int NOT NULL DEFAULT '0',
  `part_hair` int NOT NULL DEFAULT '0',
  `part_acce` smallint unsigned NOT NULL DEFAULT '0',
  `skill_group` tinyint NOT NULL DEFAULT '0',
  `skill_level` blob,
  `alignment` int NOT NULL DEFAULT '0',
  `last_play` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `change_name` tinyint(1) NOT NULL DEFAULT '0',
  `mobile` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `sub_skill_point` smallint NOT NULL DEFAULT '0',
  `stat_reset_count` tinyint NOT NULL DEFAULT '0',
  `horse_hp` smallint NOT NULL DEFAULT '0',
  `horse_stamina` smallint NOT NULL DEFAULT '0',
  `horse_level` tinyint unsigned NOT NULL DEFAULT '0',
  `horse_hp_droptime` int unsigned NOT NULL DEFAULT '0',
  `horse_riding` tinyint(1) NOT NULL DEFAULT '0',
  `horse_skill_point` smallint NOT NULL DEFAULT '0',
  `cheque` int NOT NULL DEFAULT '0' COMMENT 'ENABLE_CHEQUE_SYSTEM',
  `envanter` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `account_id_idx` (`account_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT IGNORE INTO `player` VALUES (129,20,'PlayerTen',2,0,0,480522,955246,0,1,480522,955246,1,20206,5551,875,10956,4731,628,250,0,5,3,3,5,0,9999799999,0,354,249,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',20939,1,1,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',3030,'2020-05-26 06:24:37',0,'',191,0,50,200,30,1590643093,0,0,0,0),(120,1,'OOKISA',4,0,0,472314,963691,0,1,472314,963691,1,10720,4742,820,9960,4482,8,250,0,6,4,3,3,0,1,0,354,142,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',0,0,0,0,1,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',35,'2020-05-14 19:29:41',0,'',241,0,0,0,0,0,0,0,0,0),(121,11,'PlayerOne',0,0,0,856210,10185,0,112,856210,10185,112,18204,5978,900,8964,5478,115,250,0,6,4,3,3,0,1129999999,0,354,249,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',20919,0,0,0,2,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',400,'2020-05-25 21:12:51',0,'',191,0,50,200,30,1590692097,0,0,199,0),(122,12,'PlayerTwo',0,0,0,88009,614333,0,77,88009,614333,77,14844,4982,880,9213,4482,46,250,0,34,4,3,3,0,0,0,326,249,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',20919,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',205,'2020-05-29 14:45:41',0,'',191,0,50,200,30,1591014271,0,0,0,0),(123,2,'Player',4,0,0,474506,945165,0,1,474506,945165,1,1537,59,830,864,504,252,25,3,6,4,3,3,23369,1999903472,1,75,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',11200,1,1,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',1728,'2020-05-31 11:28:47',0,'',16,0,0,0,0,0,0,0,0,0),(118,1,'ASIKOO',7,0,0,474469,945482,0,1,474469,945482,1,19224,6001,960,10156,4769,2955,250,0,61,20,3,6,0,9998347016,999999,283,247,_binary '\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',20949,0,0,0,2,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',250000,'2020-05-31 11:28:45',0,'',191,0,48,200,30,1590990262,0,0,998,9),(132,16,'PlayerSix',0,0,0,476836,954571,0,1,476836,954571,1,9724,5489,809,8964,5229,22,250,0,6,4,3,3,0,0,0,354,249,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',110,'2020-05-23 22:24:12',0,'',241,0,0,0,0,0,0,0,0,0),(130,19,'PlayerNine',5,0,0,52295,166629,0,21,52295,166629,21,1606,621,815,836,361,29,20,0,4,3,6,3,0,0,0,57,19,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',145,'2020-05-23 18:12:01',0,'',11,0,0,0,0,0,0,0,0,0),(133,4,'Veltor88',0,0,0,87779,614740,0,77,87779,614740,77,24538,5480,1485,10458,4980,759,250,2,125,125,119,3,140,1997991300,0,0,249,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',20919,0,0,0,1,_binary '\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',2163,'2020-05-31 02:08:43',0,'',191,0,50,200,30,1591013993,0,0,0,0),(134,15,'Joueur',0,0,0,856044,10073,0,112,856044,10073,112,1768,740,820,1008,480,94,25,0,6,4,3,3,0,0,0,72,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',340,'2020-05-26 07:09:39',0,'',16,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_deleted`
--

DROP TABLE IF EXISTS `player_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_deleted` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL DEFAULT '0',
  `name` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME',
  `job` tinyint unsigned NOT NULL DEFAULT '0',
  `voice` tinyint unsigned NOT NULL DEFAULT '0',
  `dir` tinyint NOT NULL DEFAULT '0',
  `x` int NOT NULL DEFAULT '0',
  `y` int NOT NULL DEFAULT '0',
  `z` int NOT NULL DEFAULT '0',
  `map_index` int NOT NULL DEFAULT '0',
  `exit_x` int NOT NULL DEFAULT '0',
  `exit_y` int NOT NULL DEFAULT '0',
  `exit_map_index` int NOT NULL DEFAULT '0',
  `hp` smallint NOT NULL DEFAULT '0',
  `mp` smallint NOT NULL DEFAULT '0',
  `stamina` smallint NOT NULL DEFAULT '0',
  `random_hp` smallint unsigned NOT NULL DEFAULT '0',
  `random_sp` smallint unsigned NOT NULL DEFAULT '0',
  `playtime` int NOT NULL DEFAULT '0',
  `level` tinyint unsigned NOT NULL DEFAULT '0',
  `level_step` tinyint(1) NOT NULL DEFAULT '0',
  `st` smallint NOT NULL DEFAULT '0',
  `ht` smallint NOT NULL DEFAULT '0',
  `dx` smallint NOT NULL DEFAULT '0',
  `iq` smallint NOT NULL DEFAULT '0',
  `exp` int NOT NULL DEFAULT '0',
  `gold` bigint NOT NULL DEFAULT '0',
  `gaya` int NOT NULL DEFAULT '0',
  `stat_point` smallint NOT NULL DEFAULT '0',
  `skill_point` smallint NOT NULL DEFAULT '0',
  `quickslot` tinyblob,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0.0.0.0',
  `part_main` int NOT NULL DEFAULT '0',
  `part_base` int NOT NULL DEFAULT '0',
  `part_hair` int NOT NULL DEFAULT '0',
  `part_acce` int unsigned NOT NULL DEFAULT '0',
  `skill_group` tinyint NOT NULL DEFAULT '0',
  `skill_level` blob,
  `alignment` int NOT NULL DEFAULT '0',
  `last_play` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `change_name` tinyint(1) NOT NULL DEFAULT '0',
  `mobile` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `sub_skill_point` smallint NOT NULL DEFAULT '0',
  `stat_reset_count` tinyint NOT NULL DEFAULT '0',
  `horse_hp` smallint NOT NULL DEFAULT '0',
  `horse_stamina` smallint NOT NULL DEFAULT '0',
  `horse_level` tinyint unsigned NOT NULL DEFAULT '0',
  `horse_hp_droptime` int unsigned NOT NULL DEFAULT '0',
  `horse_riding` tinyint(1) NOT NULL DEFAULT '0',
  `horse_skill_point` smallint NOT NULL DEFAULT '0',
  `cheque` int NOT NULL DEFAULT '0' COMMENT 'ENABLE_CHEQUE_SYSTEM',
  `envanter` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account_id_idx` (`account_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_deleted`
--

LOCK TABLES `player_deleted` WRITE;
/*!40000 ALTER TABLE `player_deleted` DISABLE KEYS */;
INSERT IGNORE INTO `player_deleted` VALUES (108,2,'Veltor88',0,0,0,471207,954492,0,1,471207,954492,1,760,260,1505,0,0,81,1,1,6,4,3,3,14808,74205,0,1,0,_binary 'B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',0,0,0,0,1,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',1023,'2020-04-30 21:51:05',0,'',40,0,50,200,30,1588535137,0,0,0,0),(109,2,'Veltor88',0,0,0,496122,956627,0,1,496122,956627,1,1480,421,880,320,161,28,9,1,18,14,3,3,7551,17708,0,3,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',11200,0,0,0,1,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',745,'2020-04-30 22:22:25',0,'',0,0,0,0,0,0,0,0,0,0),(110,2,'Veltor',0,0,0,459555,953730,0,0,0,0,0,760,260,800,0,0,0,1,0,6,4,3,3,0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'2001-01-01 00:00:00',0,'',0,0,0,0,0,0,0,0,0,0),(112,1,'ASIKOO',5,0,0,339862,866231,0,3,339862,866231,3,1658,716,945,888,456,157,25,3,4,3,6,3,200,19698021,0,75,24,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','82.64.248.79',0,0,0,10004,2,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',620,'2020-05-04 16:31:08',0,'',16,0,50,200,30,1588608912,1,0,0,0),(113,1,'ASIKOO',7,0,0,957175,269750,0,41,957175,269750,41,2481,848,860,1056,528,10,25,0,3,64,3,6,0,0,0,12,4,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','82.64.248.79',0,0,0,0,2,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02\025\0\00\00\00\00\00\04064\00\00\00\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',25,'2020-05-04 18:00:22',0,'',16,0,0,0,0,0,0,0,0,0),(114,1,'ASIKOO',7,0,0,51896,166880,0,0,0,0,0,860,320,800,0,0,0,1,0,3,4,3,6,0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',1,1,1,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'2001-01-01 00:00:00',0,'',0,0,0,0,0,0,0,0,0,0),(115,1,'ASIKOO',5,0,0,957114,254912,0,0,0,0,0,770,260,800,0,0,0,1,0,4,3,6,3,0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',1,1,1,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'2001-01-01 00:00:00',0,'',0,0,0,0,0,0,0,0,0,0),(116,1,'ASIKOO',0,0,0,459990,953711,0,0,0,0,0,760,260,800,0,0,0,1,0,6,4,3,3,0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','0.0.0.0',0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'2001-01-01 00:00:00',0,'',0,0,0,0,0,0,0,0,0,0),(117,1,'ASIKOO',7,0,0,470392,952211,0,1,470392,952211,1,2630,1220,820,1770,900,8,46,2,3,4,3,6,6892700,0,0,137,41,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','82.64.248.79',0,0,0,0,2,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',40,'2020-05-04 19:00:44',0,'',37,0,0,0,0,0,0,0,0,0),(119,4,'Veltor88',0,0,0,289744,553963,0,63,289744,553963,63,11596,752,1505,546,252,683,15,0,6,4,3,3,6055915,1996175800,0,42,14,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',11299,0,0,0,1,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',5503,'2020-05-22 14:09:17',0,'',6,0,50,200,30,1590408180,1,0,0,1),(124,4,'Veltor88',2,0,0,459890,953818,0,1,459890,953818,1,1330,552,815,560,252,19,15,0,5,3,3,5,0,0,0,42,14,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',95,'2020-05-22 14:29:32',0,'',6,0,50,200,30,1590408587,0,0,0,0),(125,4,'Veltor88',7,0,0,473728,955360,0,1,473728,955360,1,9914,1148,880,574,308,24,15,0,3,4,3,6,0,0,0,42,14,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',11899,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',75,'2020-05-22 14:55:07',0,'',6,0,50,200,30,1590409826,0,0,0,0),(126,4,'Veltor88',0,0,0,451371,946001,0,1,451371,946001,1,11554,766,900,504,266,6,15,0,6,4,3,3,0,0,0,42,14,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',11299,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',30,'2020-05-22 15:07:14',0,'',6,0,50,200,30,1590411621,0,0,0,0),(127,4,'Veltor88',5,0,0,477027,958719,0,1,477027,958719,1,5344,686,1400,574,266,178,15,0,4,3,6,3,1361,1201448995,99,42,14,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',20929,0,0,0,2,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',855,'2020-05-22 19:12:31',0,'',6,0,50,195,30,1590412655,0,0,0,0),(128,4,'Veltor88',2,0,0,476980,952698,0,1,476980,952698,1,9768,1100,1485,518,280,43,15,0,5,3,3,5,0,2998911997,0,42,14,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',20939,0,0,0,2,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',200,'2020-05-22 23:57:49',0,'',6,0,50,200,30,1590443016,0,0,0,0),(131,4,'Veltor88',0,0,0,474077,954678,0,1,474077,954678,1,1348,554,880,588,294,81,15,0,6,4,3,3,0,98063999,0,42,14,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',0,0,0,0,1,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',330,'2020-05-23 22:11:11',0,'',6,0,50,200,30,1590445764,0,0,0,0),(135,4,'Veltor',2,0,0,348427,882955,0,3,348427,882955,3,1634,756,815,864,456,14,25,0,5,3,3,5,0,0,0,72,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',65,'2020-05-25 23:31:47',0,'',0,0,0,0,0,0,0,0,0,0),(136,13,'Ukana',0,0,0,348411,882786,0,3,348411,882786,3,1792,692,820,1032,432,19,25,0,6,4,3,3,0,0,0,72,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','77.153.42.225',0,0,0,0,0,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',70,'2020-05-25 23:32:05',0,'',0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `player_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_index`
--

DROP TABLE IF EXISTS `player_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_index` (
  `id` int NOT NULL DEFAULT '0',
  `pid1` int NOT NULL DEFAULT '0',
  `pid2` int NOT NULL DEFAULT '0',
  `pid3` int NOT NULL DEFAULT '0',
  `pid4` int NOT NULL DEFAULT '0',
  `pid5` int NOT NULL DEFAULT '0',
  `empire` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid1_key` (`pid1`) USING BTREE,
  KEY `pid2_key` (`pid2`) USING BTREE,
  KEY `pid3_key` (`pid3`) USING BTREE,
  KEY `pid4_key` (`pid4`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_index`
--

LOCK TABLES `player_index` WRITE;
/*!40000 ALTER TABLE `player_index` DISABLE KEYS */;
INSERT IGNORE INTO `player_index` VALUES (11,121,0,0,0,0,1),(4,133,0,0,0,0,1),(1,118,120,0,0,0,1),(12,122,0,0,0,0,1),(2,123,0,0,0,0,1),(20,129,0,0,0,0,3),(19,130,0,0,0,0,2),(16,132,0,0,0,0,1),(14,0,0,0,0,0,1),(17,0,0,0,0,0,0),(15,134,0,0,0,0,1),(13,0,0,0,0,0,1);
/*!40000 ALTER TABLE `player_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_rank`
--

DROP TABLE IF EXISTS `player_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_rank` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL DEFAULT '0',
  `d_player` int NOT NULL DEFAULT '0',
  `d_monster` int NOT NULL,
  `k_player` int NOT NULL DEFAULT '0',
  `k_monster` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_rank`
--

LOCK TABLES `player_rank` WRITE;
/*!40000 ALTER TABLE `player_rank` DISABLE KEYS */;
INSERT IGNORE INTO `player_rank` VALUES (1,133,0,0,0,0);
/*!40000 ALTER TABLE `player_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest`
--

DROP TABLE IF EXISTS `quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest` (
  `dwPID` int unsigned NOT NULL DEFAULT '0',
  `szName` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szState` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lValue` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`dwPID`,`szName`,`szState`) USING BTREE,
  KEY `pid_idx` (`dwPID`) USING BTREE,
  KEY `name_idx` (`szName`) USING BTREE,
  KEY `state_idx` (`szState`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest`
--

LOCK TABLES `quest` WRITE;
/*!40000 ALTER TABLE `quest` DISABLE KEYS */;
INSERT IGNORE INTO `quest` VALUES (0,'spider_lair_ongoing_1','',1),(0,'spider_lair_start_time_1','',1590883196),(0,'spider_lair_end_time_1','',1590884396),(0,'spider_lair_leader_1','',118),(118,'spider_dungeon_3floor_boss','retry_limit_time',1590887996),(133,'spider_dungeon_3floor_boss','retry_limit_time',1590887996),(122,'spider_dungeon_3floor_boss','retry_limit_time',1590759566),(0,'king_vid','',26360),(0,'remain_egg1','',9),(0,'spider_dead1','',1),(123,'system_gaya','gaya_time_world_4',1590934781),(134,'subquest_16','__status',695801987),(134,'subquest_15','__status',695801987),(134,'subquest_13','__status',695801987),(134,'subquest_12','__status',695801987),(134,'skill_group','__status',1349952704),(134,'make_herb_lv25','__status',695801987),(134,'levelup','select',1),(134,'levelup','remain',25),(134,'levelup','current',25),(134,'levelup','buttonstate',1),(134,'his_daughters_wedding','__status',695801987),(123,'subquest_16','__status',695801987),(123,'subquest_15','__status',695801987),(123,'subquest_13','__status',695801987),(123,'subquest_12','__status',695801987),(123,'make_herb_lv25','__status',695801987),(123,'levelup','select',1),(123,'levelup','remain',25),(123,'levelup','current',25),(123,'levelup','buttonstate',1),(123,'his_daughters_wedding','__status',695801987),(134,'main_quest_lv1','__status',-596781658),(134,'main_quest_flame_lv103','__status',668443392),(134,'M2Start','__status',-351010838),(122,'spider_dungeon_3floor_key','__status',-1393546546),(122,'skill_group','__status',1349952704),(122,'spider_dungeon_3floor_boss','__status',718844017),(122,'purgatory_ticket','__status',-1382368045),(122,'main_quest_flame_lv103','__status',668443392),(122,'his_daughters_wedding','__status',695801987),(122,'dragon_lair_weekly','__status',1929663828),(122,'collect_quest_lv30','__status',695801987),(122,'akuma','__status',695801987),(122,'acce_mission','__status',695801987),(122,'M2Start','__status',-351010838),(129,'spider_dungeon_3floor_key','__status',-1393546546),(129,'spider_dungeon_3floor_boss','__status',1056859706),(129,'skill_group','__status',1349952704),(129,'purgatory_ticket','__status',-1382368045),(129,'main_quest_flame_lv103','__status',668443392),(129,'his_daughters_wedding','__status',695801987),(129,'dragon_lair_weekly','__status',1929663828),(129,'collect_quest_lv30','__status',695801987),(129,'akuma','__status',695801987),(129,'M2Start','__status',-351010838),(129,'acce_mission','__status',695801987),(121,'spider_dungeon_3floor_key','__status',-1393546546),(121,'spider_dungeon_3floor_boss','__status',1056859706),(121,'purgatory_ticket','__status',-1382368045),(121,'main_quest_flame_lv103','__status',668443392),(121,'his_daughters_wedding','__status',695801987),(121,'dragon_lair_weekly','__status',1929663828),(121,'collect_quest_lv30','__status',695801987),(121,'akuma','__status',695801987),(121,'acce_mission','__status',695801987),(121,'M2Start','__status',-351010838),(123,'skill_group','__status',1349952704),(123,'M2Start','__status',-351010838),(123,'main_quest_flame_lv103','__status',668443392),(133,'spider_dungeon_3floor_key','__status',-1393546546),(133,'spider_dungeon_3floor_boss','__status',718844017),(133,'main_quest_flame_lv103','__status',668443392),(133,'purgatory_ticket','__status',-1382368045),(133,'collect_quest_lv30','__status',695801987),(133,'dragon_lair_weekly','__status',1929663828),(133,'his_daughters_wedding','__status',563807169),(133,'akuma','__status',695801987),(133,'acce_mission','__status',695801987),(133,'M2Start','__status',-351010838),(118,'spider_dungeon_3floor_boss','__status',1056859706),(118,'spider_dungeon_3floor_key','__status',-1393546546),(118,'purgatory_ticket','__status',-1382368045),(118,'main_quest_flame_lv103','__status',668443392),(118,'akuma','__status',695801987),(118,'collect_quest_lv30','__status',695801987),(118,'dragon_lair_weekly','__status',1929663828),(118,'his_daughters_wedding','__status',695801987),(118,'M2Start','__status',-351010838),(118,'acce_mission','__status',695801987),(0,'oxevent_status','',0);
/*!40000 ALTER TABLE `quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_reward_log`
--

DROP TABLE IF EXISTS `quest_reward_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_reward_log` (
  `quest_name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `player_id` int unsigned DEFAULT NULL,
  `player_level` int unsigned DEFAULT NULL,
  `reward_type` enum('EXP','ITEM') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `reward_value1` int unsigned DEFAULT NULL,
  `reward_value2` int DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  KEY `player_id` (`player_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_reward_log`
--

LOCK TABLES `quest_reward_log` WRITE;
/*!40000 ALTER TABLE `quest_reward_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_reward_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refine_proto`
--

DROP TABLE IF EXISTS `refine_proto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refine_proto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vnum0` int unsigned NOT NULL DEFAULT '0',
  `count0` smallint NOT NULL DEFAULT '0',
  `vnum1` int unsigned NOT NULL DEFAULT '0',
  `count1` smallint NOT NULL DEFAULT '0',
  `vnum2` int unsigned NOT NULL DEFAULT '0',
  `count2` smallint NOT NULL DEFAULT '0',
  `vnum3` int unsigned NOT NULL DEFAULT '0',
  `count3` smallint NOT NULL DEFAULT '0',
  `vnum4` int unsigned NOT NULL DEFAULT '0',
  `count4` smallint NOT NULL DEFAULT '0',
  `cost` int NOT NULL DEFAULT '0',
  `src_vnum` int unsigned NOT NULL DEFAULT '0',
  `result_vnum` int unsigned NOT NULL DEFAULT '0',
  `prob` smallint NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=703 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refine_proto`
--

LOCK TABLES `refine_proto` WRITE;
/*!40000 ALTER TABLE `refine_proto` DISABLE KEYS */;
INSERT IGNORE INTO `refine_proto` VALUES (1,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(2,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(3,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(4,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(5,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(6,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(7,30053,1,0,0,0,0,0,0,0,0,30000,0,0,70),(8,30073,2,0,0,0,0,0,0,0,0,45000,0,0,70),(9,30033,2,0,0,0,0,0,0,0,0,75000,0,0,70),(10,0,0,0,0,0,0,0,0,0,0,1000,0,0,70),(11,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(12,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(13,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(14,30030,2,0,0,0,0,0,0,0,0,13000,0,0,70),(15,30075,2,0,0,0,0,0,0,0,0,20000,0,0,70),(16,30056,2,27799,1,0,0,0,0,0,0,40000,0,0,70),(17,30022,2,27987,1,0,0,0,0,0,0,70000,0,0,70),(18,30067,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(19,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(20,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(21,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(22,0,0,0,0,0,0,0,0,0,0,10000,0,0,60),(23,30079,1,0,0,0,0,0,0,0,0,20000,0,0,70),(24,30015,1,0,0,0,0,0,0,0,0,30000,0,0,70),(25,30016,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(26,30089,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(27,30091,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(28,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(29,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(30,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(31,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(32,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(33,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(34,30034,2,0,0,0,0,0,0,0,0,30000,0,0,70),(35,30011,2,0,0,0,0,0,0,0,0,45000,0,0,70),(36,30035,2,0,0,0,0,0,0,0,0,75000,0,0,70),(37,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(38,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(39,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(40,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(41,30052,2,0,0,0,0,0,0,0,0,13000,0,0,70),(42,30046,2,0,0,0,0,0,0,0,0,20000,0,0,70),(43,30045,2,27799,1,0,0,0,0,0,0,40000,0,0,70),(44,30025,2,27987,1,0,0,0,0,0,0,70000,0,0,70),(45,30058,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(46,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(47,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(48,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(49,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(50,30083,2,0,0,0,0,0,0,0,0,20000,0,0,70),(51,30060,2,0,0,0,0,0,0,0,0,30000,0,0,70),(52,30061,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(53,30088,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(54,30019,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(55,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(56,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(57,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(58,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(59,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(60,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(61,30070,2,0,0,0,0,0,0,0,0,30000,0,0,70),(62,30072,2,0,0,0,0,0,0,0,0,45000,0,0,70),(63,30017,2,0,0,0,0,0,0,0,0,75000,0,0,70),(64,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(65,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(66,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(67,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(68,30041,1,0,0,0,0,0,0,0,0,13000,0,0,70),(69,30008,2,0,0,0,0,0,0,0,0,20000,0,0,70),(70,30057,1,27799,1,0,0,0,0,0,0,40000,0,0,70),(71,30081,1,27987,1,0,0,0,0,0,0,70000,0,0,70),(72,30077,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(73,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(74,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(75,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(76,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(77,30009,2,0,0,0,0,0,0,0,0,20000,0,0,70),(78,30039,2,0,0,0,0,0,0,0,0,30000,0,0,70),(79,30040,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(80,30048,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(81,30090,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(82,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(83,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(84,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(85,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(86,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(87,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(88,30031,1,0,0,0,0,0,0,0,0,30000,0,0,70),(89,30032,2,0,0,0,0,0,0,0,0,45000,0,0,70),(90,30033,2,0,0,0,0,0,0,0,0,75000,0,0,70),(91,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(92,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(93,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(94,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(95,30008,2,0,0,0,0,0,0,0,0,13000,0,0,70),(96,30075,2,0,0,0,0,0,0,0,0,20000,0,0,70),(97,30006,2,27799,1,0,0,0,0,0,0,40000,0,0,70),(98,30022,1,27987,1,0,0,0,0,0,0,70000,0,0,70),(99,30067,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(100,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(101,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(102,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(103,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(104,30079,1,0,0,0,0,0,0,0,0,20000,0,0,70),(105,30015,1,0,0,0,0,0,0,0,0,30000,0,0,70),(106,30086,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(107,30050,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(108,30091,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(109,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(110,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(111,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(112,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(113,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(114,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(115,30071,2,0,0,0,0,0,0,0,0,30000,0,0,70),(116,30018,2,0,0,0,0,0,0,0,0,45000,0,0,70),(117,30017,2,0,0,0,0,0,0,0,0,75000,0,0,70),(118,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(119,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(120,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(121,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(122,30005,2,0,0,0,0,0,0,0,0,13000,0,0,70),(123,30076,2,0,0,0,0,0,0,0,0,20000,0,0,70),(124,30051,1,27799,1,0,0,0,0,0,0,40000,0,0,70),(125,30081,1,27987,1,0,0,0,0,0,0,70000,0,0,70),(126,30047,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(127,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(128,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(129,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(130,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(131,30009,1,0,0,0,0,0,0,0,0,20000,0,0,70),(132,30080,1,0,0,0,0,0,0,0,0,30000,0,0,70),(133,30040,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(134,30049,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(135,30090,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(136,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(137,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(138,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(139,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(140,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(141,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(142,30038,1,0,0,0,0,0,0,0,0,30000,0,0,70),(143,30023,2,0,0,0,0,0,0,0,0,45000,0,0,70),(144,30074,2,0,0,0,0,0,0,0,0,75000,0,0,70),(145,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(146,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(147,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(148,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(149,30007,2,0,0,0,0,0,0,0,0,13000,0,0,70),(150,30078,2,0,0,0,0,0,0,0,0,20000,0,0,70),(151,30045,2,27799,1,0,0,0,0,0,0,40000,0,0,70),(152,30055,2,27987,1,0,0,0,0,0,0,70000,0,0,70),(153,30047,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(154,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(155,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(156,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(157,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(158,30059,2,0,0,0,0,0,0,0,0,20000,0,0,70),(159,30080,2,0,0,0,0,0,0,0,0,30000,0,0,70),(160,30085,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(161,30014,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(162,30042,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(163,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(164,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(165,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(166,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(167,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(168,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(169,30010,2,0,0,0,0,0,0,0,0,30000,0,0,70),(170,30031,1,0,0,0,0,0,0,0,0,45000,0,0,70),(171,30032,2,0,0,0,0,0,0,0,0,75000,0,0,70),(172,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(173,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(174,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(175,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(176,30021,2,0,0,0,0,0,0,0,0,13000,0,0,70),(177,30008,2,0,0,0,0,0,0,0,0,20000,0,0,70),(178,30057,2,27799,1,0,0,0,0,0,0,40000,0,0,70),(179,30006,2,27987,1,0,0,0,0,0,0,70000,0,0,70),(180,30022,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(181,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(182,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(183,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(184,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(185,30082,2,0,0,0,0,0,0,0,0,20000,0,0,70),(186,30079,2,0,0,0,0,0,0,0,0,30000,0,0,70),(187,30087,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(188,30086,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(189,30050,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(190,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(191,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(192,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(193,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(194,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(195,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(196,30038,2,0,0,0,0,0,0,0,0,30000,0,0,70),(197,30011,2,0,0,0,0,0,0,0,0,45000,0,0,70),(198,30074,1,0,0,0,0,0,0,0,0,75000,0,0,70),(199,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(200,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(201,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(202,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(203,30007,2,0,0,0,0,0,0,0,0,13000,0,0,70),(204,30046,2,0,0,0,0,0,0,0,0,20000,0,0,70),(205,30045,2,27799,1,0,0,0,0,0,0,40000,0,0,70),(206,30055,2,27987,1,0,0,0,0,0,0,70000,0,0,70),(207,30058,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(208,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(209,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(210,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(211,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(212,30059,2,0,0,0,0,0,0,0,0,20000,0,0,70),(213,30060,2,0,0,0,0,0,0,0,0,30000,0,0,70),(214,30061,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(215,30014,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(216,30042,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(217,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(218,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(219,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(220,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(221,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(222,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(223,30071,2,0,0,0,0,0,0,0,0,30000,0,0,70),(224,30023,1,0,0,0,0,0,0,0,0,45000,0,0,70),(225,30074,2,0,0,0,0,0,0,0,0,75000,0,0,70),(226,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(227,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(228,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(229,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(230,30005,1,0,0,0,0,0,0,0,0,13000,0,0,70),(231,30078,1,0,0,0,0,0,0,0,0,20000,0,0,70),(232,30051,1,27799,1,0,0,0,0,0,0,40000,0,0,70),(233,30055,2,27987,1,0,0,0,0,0,0,70000,0,0,70),(234,30047,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(235,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(236,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(237,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(238,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(239,30059,2,0,0,0,0,0,0,0,0,20000,0,0,70),(240,30080,2,0,0,0,0,0,0,0,0,30000,0,0,70),(241,30085,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(242,30049,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(243,30042,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(244,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(245,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(246,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(247,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(248,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(249,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(250,30070,2,0,0,0,0,0,0,0,0,30000,0,0,70),(251,30018,2,0,0,0,0,0,0,0,0,45000,0,0,70),(252,30017,2,0,0,0,0,0,0,0,0,75000,0,0,70),(253,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(254,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(255,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(256,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(257,30041,2,0,0,0,0,0,0,0,0,13000,0,0,70),(258,30076,2,0,0,0,0,0,0,0,0,20000,0,0,70),(259,30051,2,27799,1,0,0,0,0,0,0,40000,0,0,70),(260,30081,2,27987,1,0,0,0,0,0,0,70000,0,0,70),(261,30077,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(262,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(263,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(264,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(265,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(266,30009,2,0,0,0,0,0,0,0,0,20000,0,0,70),(267,30039,2,0,0,0,0,0,0,0,0,30000,0,0,70),(268,30040,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(269,30048,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(270,30090,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(271,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(272,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(273,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(274,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(275,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(276,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(277,30010,1,0,0,0,0,0,0,0,0,30000,0,0,70),(278,30072,2,0,0,0,0,0,0,0,0,45000,0,0,70),(279,30032,1,0,0,0,0,0,0,0,0,75000,0,0,70),(280,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(281,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(282,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(283,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(284,30021,1,0,0,0,0,0,0,0,0,13000,0,0,70),(285,30008,1,0,0,0,0,0,0,0,0,20000,0,0,70),(286,30057,1,27799,1,0,0,0,0,0,0,40000,0,0,70),(287,30006,2,27987,1,0,0,0,0,0,0,70000,0,0,70),(288,30077,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(289,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(290,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(291,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(292,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(293,30082,2,0,0,0,0,0,0,0,0,20000,0,0,70),(294,30039,2,0,0,0,0,0,0,0,0,30000,0,0,70),(295,30087,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(296,30086,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(297,30050,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(298,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(299,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(300,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(301,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(302,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(303,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(304,30053,1,0,0,0,0,0,0,0,0,30000,0,0,70),(305,30073,1,0,0,0,0,0,0,0,0,45000,0,0,70),(306,30035,2,0,0,0,0,0,0,0,0,75000,0,0,70),(307,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(308,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(309,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(310,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(311,30030,2,0,0,0,0,0,0,0,0,13000,0,0,70),(312,30075,2,0,0,0,0,0,0,0,0,20000,0,0,70),(313,30056,2,27799,1,0,0,0,0,0,0,40000,0,0,70),(314,30025,2,27987,1,0,0,0,0,0,0,70000,0,0,70),(315,30067,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(316,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(317,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(318,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(319,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(320,30083,2,0,0,0,0,0,0,0,0,20000,0,0,70),(321,30015,2,0,0,0,0,0,0,0,0,30000,0,0,70),(322,30016,2,27992,1,0,0,0,0,0,0,45000,0,0,70),(323,30089,2,27993,1,0,0,0,0,0,0,90000,0,0,70),(324,30019,2,27994,1,0,0,0,0,0,0,150000,0,0,70),(325,0,0,0,0,0,0,0,0,0,0,600,0,0,90),(326,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(327,0,0,0,0,0,0,0,0,0,0,2500,0,0,90),(328,0,0,0,0,0,0,0,0,0,0,5000,0,0,90),(329,0,0,0,0,0,0,0,0,0,0,10000,0,0,80),(330,0,0,0,0,0,0,0,0,0,0,20000,0,0,70),(331,30034,2,0,0,0,0,0,0,0,0,30000,0,0,70),(332,30073,2,0,0,0,0,0,0,0,0,45000,0,0,70),(333,30035,2,0,0,0,0,0,0,0,0,75000,0,0,70),(334,0,0,0,0,0,0,0,0,0,0,1000,0,0,90),(335,0,0,0,0,0,0,0,0,0,0,2000,0,0,90),(336,0,0,0,0,0,0,0,0,0,0,4000,0,0,90),(337,0,0,0,0,0,0,0,0,0,0,8000,0,0,80),(338,30052,2,0,0,0,0,0,0,0,0,13000,0,0,70),(339,30046,2,0,0,0,0,0,0,0,0,20000,0,0,70),(340,30056,2,27799,1,0,0,0,0,0,0,40000,0,0,70),(341,30025,2,27987,1,0,0,0,0,0,0,70000,0,0,70),(342,30058,2,27987,1,0,0,0,0,0,0,120000,0,0,70),(343,0,0,0,0,0,0,0,0,0,0,1200,0,0,90),(344,0,0,0,0,0,0,0,0,0,0,2500,0,0,80),(345,0,0,0,0,0,0,0,0,0,0,5000,0,0,70),(346,0,0,0,0,0,0,0,0,0,0,10000,0,0,70),(347,30083,2,0,0,0,0,0,0,0,0,20000,0,0,70),(348,30060,2,0,0,0,0,0,0,0,0,30000,0,0,70),(349,30061,2,30193,2,0,0,0,0,0,0,45000,0,0,70),(350,30088,2,30193,4,0,0,0,0,0,0,90000,0,0,70),(351,30019,2,30193,8,0,0,0,0,0,0,150000,0,0,70),(352,0,0,0,0,0,0,0,0,0,0,3000,0,0,90),(353,0,0,0,0,0,0,0,0,0,0,6000,0,0,90),(354,0,0,0,0,0,0,0,0,0,0,12000,0,0,90),(355,0,0,0,0,0,0,0,0,0,0,25000,0,0,80),(356,0,0,0,0,0,0,0,0,0,0,40000,0,0,70),(357,0,0,0,0,0,0,0,0,0,0,60000,0,0,70),(358,0,0,0,0,0,0,0,0,0,0,90000,0,0,70),(359,0,0,0,0,0,0,0,0,0,0,120000,0,0,70),(360,0,0,0,0,0,0,0,0,0,0,150000,0,0,70),(400,30192,2,0,0,0,0,0,0,0,0,20000,0,0,70),(401,30194,2,0,0,0,0,0,0,0,0,30000,0,0,70),(501,25040,2,70031,1,0,0,0,0,0,0,100000,0,0,100),(502,0,0,0,0,0,0,0,0,0,0,120000,0,0,90),(503,0,0,0,0,0,0,0,0,0,0,140000,0,0,90),(504,0,0,0,0,0,0,0,0,0,0,170000,0,0,80),(505,0,0,0,0,0,0,0,0,0,0,200000,0,0,70),(506,0,0,0,0,0,0,0,0,0,0,240000,0,0,70),(507,30050,2,0,0,0,0,0,0,0,0,290000,0,0,70),(508,30083,2,27992,1,0,0,0,0,0,0,340000,0,0,70),(509,30040,2,27993,1,0,0,0,0,0,0,410000,0,0,70),(510,30089,2,27994,1,0,0,0,0,0,0,500000,0,0,70),(530,71123,3,71129,4,0,0,0,0,0,0,200000,0,0,100),(531,0,0,0,0,0,0,0,0,0,0,7500,0,0,90),(532,0,0,0,0,0,0,0,0,0,0,15000,0,0,80),(533,0,0,0,0,0,0,0,0,0,0,25000,0,0,70),(534,30196,2,0,0,0,0,0,0,0,0,40000,0,0,60),(535,30090,3,0,0,0,0,0,0,0,0,65000,0,0,50),(536,30195,2,0,0,0,0,0,0,0,0,90000,0,0,40),(537,30197,4,27992,1,0,0,0,0,0,0,120000,0,0,30),(538,30198,2,27993,1,0,0,0,0,0,0,150000,0,0,20),(539,30199,2,27994,1,0,0,0,0,0,0,200000,0,0,10),(601,51001,10,0,0,0,0,0,0,0,0,100000,0,0,90),(602,51001,15,0,0,0,0,0,0,0,0,125000,0,0,90),(603,51001,20,0,0,0,0,0,0,0,0,150000,0,0,80),(604,51001,30,0,0,0,0,0,0,0,0,180000,0,0,70),(605,51001,45,0,0,0,0,0,0,0,0,225000,0,0,70),(606,51001,65,0,0,0,0,0,0,0,0,270000,0,0,70),(607,51001,95,0,0,0,0,0,0,0,0,320000,0,0,70),(608,51001,140,0,0,0,0,0,0,0,0,400000,0,0,70),(609,51001,200,0,0,0,0,0,0,0,0,500000,0,0,70),(610,51001,100,70031,3,25040,2,0,0,0,0,5000000,0,0,100),(701,0,0,0,0,0,0,0,0,0,0,500000,0,0,70),(702,0,0,0,0,0,0,0,0,0,0,2000000,0,0,70);
/*!40000 ALTER TABLE `refine_proto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinelog`
--

DROP TABLE IF EXISTS `refinelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refinelog` (
  `pid` int unsigned DEFAULT NULL,
  `item_name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `item_id` int NOT NULL DEFAULT '0',
  `step` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `is_success` tinyint(1) NOT NULL DEFAULT '0',
  `setType` set('SOCKET','POWER','ROD','GUILD','SCROLL','HYUNIRON','GOD_SCROLL') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinelog`
--

LOCK TABLES `refinelog` WRITE;
/*!40000 ALTER TABLE `refinelog` DISABLE KEYS */;
INSERT IGNORE INTO `refinelog` VALUES (108,'Glaive+0',90000016,'0','2020-04-30 16:20:43',1,'POWER');
/*!40000 ALTER TABLE `refinelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_player`
--

DROP TABLE IF EXISTS `report_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_player` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid_from` int NOT NULL DEFAULT '0',
  `pid_to` int NOT NULL DEFAULT '0',
  `reason` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `state` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_player`
--

LOCK TABLES `report_player` WRITE;
/*!40000 ALTER TABLE `report_player` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safebox`
--

DROP TABLE IF EXISTS `safebox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `safebox` (
  `account_id` int unsigned NOT NULL DEFAULT '0',
  `size` tinyint unsigned NOT NULL DEFAULT '0',
  `password` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `gold` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safebox`
--

LOCK TABLES `safebox` WRITE;
/*!40000 ALTER TABLE `safebox` DISABLE KEYS */;
INSERT IGNORE INTO `safebox` VALUES (1,1,'123456',0),(2,1,'',0);
/*!40000 ALTER TABLE `safebox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `vnum` int NOT NULL DEFAULT '0',
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Noname',
  `npc_vnum` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT IGNORE INTO `shop` VALUES (1,'Arme',9001),(2,'Pêcheur',9009),(3,'Marchande',9003),(4,'Armure',9002),(5,'Alchimiste',20001),(7,'Magasinier',9005),(8,'Animatrice',9004),(9,'Ambulant',20042),(10,'Deokbae',20015),(11,'Palfrenier',20349);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_item`
--

DROP TABLE IF EXISTS `shop_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_item` (
  `shop_vnum` int NOT NULL DEFAULT '0',
  `item_vnum` int NOT NULL DEFAULT '0',
  `count` tinyint unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `vnum_unique` (`shop_vnum`,`item_vnum`,`count`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_item`
--

LOCK TABLES `shop_item` WRITE;
/*!40000 ALTER TABLE `shop_item` DISABLE KEYS */;
INSERT IGNORE INTO `shop_item` VALUES (1,20,1),(1,40,1),(1,60,1),(1,80,1),(1,1040,1),(1,2010,1),(1,2030,1),(1,2050,1),(1,2070,1),(1,3010,1),(1,3030,1),(1,3050,1),(1,3070,1),(1,4000,1),(1,4010,1),(1,4020,1),(1,5010,1),(1,5030,1),(1,6000,1),(1,7010,1),(1,7030,1),(1,7050,1),(1,8000,100),(1,8000,200),(2,27400,1),(2,27600,1),(2,27610,1),(2,27800,5),(2,27800,50),(2,27801,5),(2,27801,50),(3,14000,1),(3,15000,1),(3,16000,1),(3,17000,1),(3,27001,5),(3,27001,20),(3,27001,200),(3,27002,5),(3,27002,20),(3,27002,200),(3,27003,5),(3,27003,20),(3,27003,200),(3,27004,5),(3,27004,20),(3,27004,200),(3,27005,5),(3,27005,20),(3,27005,200),(3,27006,5),(3,27006,20),(3,27006,200),(3,27007,5),(3,27007,20),(3,27007,200),(3,27008,5),(3,27008,20),(3,27008,200),(3,50200,1),(3,50901,10),(3,70061,1),(3,70062,1),(3,70063,1),(3,70064,1),(3,79501,1),(3,79502,1),(4,11200,1),(4,11220,1),(4,11230,1),(4,11400,1),(4,11420,1),(4,11430,1),(4,11600,1),(4,11620,1),(4,11630,1),(4,11800,1),(4,11820,1),(4,11830,1),(4,12200,1),(4,12340,1),(4,12480,1),(4,12620,1),(4,13000,1),(4,21000,1),(4,21500,1),(5,100100,1),(5,100200,1),(7,80003,1),(7,80004,1),(7,80005,1),(7,80006,1),(7,80007,1),(8,50100,100),(8,50101,100),(8,50102,100),(8,50103,100),(8,50104,100),(8,50105,100),(9,11901,1),(9,11902,1),(9,11903,1),(9,11904,1),(9,50201,1),(9,50202,1),(10,29101,1),(11,50054,1),(11,50055,1),(11,50056,1);
/*!40000 ALTER TABLE `shop_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shout_log`
--

DROP TABLE IF EXISTS `shout_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shout_log` (
  `time` datetime DEFAULT '2001-01-01 00:00:00',
  `channel` tinyint DEFAULT NULL,
  `empire` tinyint DEFAULT NULL,
  `shout` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  KEY `time_idx` (`time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shout_log`
--

LOCK TABLES `shout_log` WRITE;
/*!40000 ALTER TABLE `shout_log` DISABLE KEYS */;
INSERT IGNORE INTO `shout_log` VALUES ('2020-04-30 15:25:29',1,1,'ASIKOO : cc'),('2020-05-01 01:38:01',1,1,'ASIKOO : test'),('2020-05-05 00:11:50',1,1,'ASIKOO : fgfdg'),('2020-05-07 15:13:44',1,1,'ASIKOO : hh'),('2020-05-22 00:09:50',1,1,'ASIKOO : cc'),('2020-05-22 08:42:28',1,1,'ASIKOO : jj'),('2020-05-22 08:50:35',1,1,'ASIKOO : avant'),('2020-05-22 08:56:49',1,1,'ASIKOO : hjhj'),('2020-05-22 09:02:43',1,1,'Player : test'),('2020-05-22 09:08:39',1,1,'ASIKOO : après'),('2020-05-22 09:08:45',1,1,'Player : après'),('2020-05-22 09:15:04',1,1,'Player : après'),('2020-05-22 09:15:17',1,1,'ASIKOO : après'),('2020-05-22 22:50:39',1,1,'ASIKOO : cc'),('2020-05-22 22:56:14',1,3,'PlayerTen : ff');
/*!40000 ALTER TABLE `shout_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_proto`
--

DROP TABLE IF EXISTS `skill_proto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_proto` (
  `dwVnum` int NOT NULL DEFAULT '0',
  `szName` varbinary(32) NOT NULL DEFAULT '',
  `bType` tinyint NOT NULL DEFAULT '0',
  `bLevelStep` tinyint NOT NULL DEFAULT '0',
  `bMaxLevel` tinyint NOT NULL DEFAULT '0',
  `bLevelLimit` tinyint unsigned NOT NULL DEFAULT '0',
  `szPointOn` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `szPointPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szSPCostPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szDurationPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szDurationSPCostPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szCooldownPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szMasterBonusPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szAttackGradePoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `setFlag` set('ATTACK','USE_MELEE_DAMAGE','COMPUTE_ATTGRADE','SELFONLY','USE_MAGIC_DAMAGE','USE_HP_AS_COST','COMPUTE_MAGIC_DAMAGE','SPLASH','GIVE_PENALTY','USE_ARROW_DAMAGE','PENETRATE','IGNORE_TARGET_RATING','ATTACK_SLOW','ATTACK_STUN','HP_ABSORB','SP_ABSORB','ATTACK_FIRE_CONT','REMOVE_BAD_AFFECT','REMOVE_GOOD_AFFECT','CRUSH','ATTACK_POISON','TOGGLE','DISABLE_BY_POINT_UP','CRUSH_LONG','WIND','ELEC','FIRE') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `setAffectFlag` enum('YMIR','INVISIBILITY','SPAWN','POISON','SLOW','STUN','DUNGEON_READY','FORCE_VISIBLE','BUILDING_CONSTRUCTION_SMALL','BUILDING_CONSTRUCTION_LARGE','BUILDING_UPGRADE','MOV_SPEED_POTION','ATT_SPEED_POTION','FISH_MIDE','JEONGWIHON','GEOMGYEONG','CHEONGEUN','GYEONGGONG','EUNHYUNG','GWIGUM','TERROR','JUMAGAP','HOSIN','BOHO','KWAESOK','MANASHIELD','MUYEONG','REVIVE_INVISIBLE','FIRE','GICHEON','JEUNGRYEOK') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'YMIR',
  `szPointOn2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONE',
  `szPointPoly2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szDurationPoly2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `setAffectFlag2` enum('YMIR','INVISIBILITY','SPAWN','POISON','SLOW','STUN','DUNGEON_READY','FORCE_VISIBLE','BUILDING_CONSTRUCTION_SMALL','BUILDING_CONSTRUCTION_LARGE','BUILDING_UPGRADE','MOV_SPEED_POTION','ATT_SPEED_POTION','FISH_MIDE','JEONGWIHON','GEOMGYEONG','CHEONGEUN','GYEONGGONG','EUNHYUNG','GWIGUM','TERROR','JUMAGAP','HOSIN','BOHO','KWAESOK','MANASHIELD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'YMIR',
  `szPointOn3` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONE',
  `szPointPoly3` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szDurationPoly3` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szGrandMasterAddSPCostPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `prerequisiteSkillVnum` int NOT NULL DEFAULT '0',
  `prerequisiteSkillLevel` int NOT NULL DEFAULT '0',
  `eSkillType` enum('NORMAL','MELEE','RANGE','MAGIC') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NORMAL',
  `iMaxHit` tinyint NOT NULL DEFAULT '0',
  `szSplashAroundDamageAdjustPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `dwTargetRange` int NOT NULL DEFAULT '1000',
  `dwSplashRange` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dwVnum`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_proto`
--

LOCK TABLES `skill_proto` WRITE;
/*!40000 ALTER TABLE `skill_proto` DISABLE KEYS */;
INSERT IGNORE INTO `skill_proto` VALUES (1,_binary '�￬��',1,1,1,0,'HP','-( 1.1*atk + (0.5*atk +  1.5 * str)*k)','40+100*k','','','12','-( 1.1*atk + (0.5*atk +  1.5 * str)*k)','','ATTACK,USE_MELEE_DAMAGE','','NONE','','','','','','','40+100*k',0,0,'MELEE',5,'1',0,0),(2,_binary '�ȹ�ǳ��',1,1,1,0,'HP','-(3*atk + (0.8*atk + str*5 + dex*3 +con)*k)','50+130*k','','','15','-(3*atk + (0.8*atk + str*5 + dex*3 +con)*k)','','ATTACK,USE_MELEE_DAMAGE','','NONE','','','','','','','50+130*k',0,0,'MELEE',12,'1',0,200),(3,_binary '����ȥ',1,1,1,0,'ATT_SPEED','50*k','50+140*k','60+90*k','','63+90*k','50*k','','SELFONLY','JEONGWIHON','MOV_SPEED','20*k','60+90*k','','','','','50+140*k',0,0,'NORMAL',1,'1',0,0),(4,_binary '�˰�',1,1,1,0,'ATT_GRADE','(100 + str + lv * 3)*k','100+200*k','30+50*k','','0','(100 + str + lv * 3)*k','','SELFONLY,TOGGLE','GEOMGYEONG','NONE','','','','','','','100+200*k',0,0,'NORMAL',1,'1',0,0),(5,_binary 'źȯ��',1,1,1,0,'HP','-(2*atk + (atk + dex*3 + str*7 + con)*k)','60+120*k','','','12','-(2*atk + (atk + dex*3 + str*7 + con)*k)','','ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH','','MOV_SPEED','150','3','','','','','60+120*k',0,0,'MELEE',4,'1',0,200),(6,_binary '����A��',1,1,1,0,'HP','-(3*atk + (atk + 1.5*str)*k)*1.07','300+150*k','','','18','-( 3*atk + (atk +  1.5 * str)*k)*1.07','','ATTACK,USE_MELEE_DAMAGE','','NONE','','','','','','','300+150*k',0,0,'MELEE',5,'1',0,0),(16,_binary '�����',1,1,1,0,'HP','-(2.3*atk + (4*atk  + str*4 + con)*k)','60+120*k','','','15','-(2.3*atk + (4*atk  + str*4 + con)*k)','','ATTACK,USE_MELEE_DAMAGE','','NONE','','','','','','','60+120*k',0,0,'MELEE',4,'1',0,100),(17,_binary '�ݻ�Ÿ��',1,1,1,0,'HP','-(2.3*atk + (3*atk + str*4 + con*3)*k)','60+150*k','','','15','-(2.3*atk + (3*atk + str*4 + con*3)*k)','','ATTACK,USE_MELEE_DAMAGE','','NONE','','','','','','','60+150*k',0,0,'MELEE',8,'1',0,200),(18,_binary '������',1,1,1,0,'HP','-(2*atk + (2*atk + 2*dex + 2*con + str*4)*k)','50+140*k','','','25','-(2*atk + (2*atk + 2*dex + 2*con + str*4)*k)','','ATTACK,USE_MELEE_DAMAGE,SELFONLY,SPLASH,ATTACK_STUN','','NONE','100+k*1000/6','2','','','','','50+140*k',0,0,'MELEE',10,'1',0,400),(19,_binary 'õ����',1,1,1,0,'DEF_GRADE','(200 + str*0.2 + con*0.5 ) *k','80+220*k','60+90*k','','63+90*k','(200 + str*0.2 + con*0.5 ) *k','','SELFONLY','CHEONGEUN','MOV_SPEED','-(1+9*k)','60+90*k','','','','','80+220*k',0,0,'NORMAL',1,'1',0,0),(20,_binary '��ǳ',1,1,1,0,'HP','-(2*atk + (atk + dex*3 + str*5 + con)*k)','40+120*k','','','20','-(2*atk + (atk + dex*3 + str*5 + con)*k)','','ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH','','NONE','','','','','','','40+120*k',0,0,'MELEE',10,'0.5',1200,200),(21,_binary '���˵���',1,1,1,0,'HP','-(2*atk + (2*atk + 2*dex + 2*con + str*4)*k)*1.1','300+180*k','','','18','-(2*atk + (2*atk + 2*dex + 2*con + str*4)*k)*1.1','','ATTACK,USE_MELEE_DAMAGE','','NONE','','','','','','','300+180*k',0,0,'MELEE',10,'1',0,400),(31,_binary '�Ͻ�',2,1,1,0,'HP','-(atk + (1.2 * atk + number(500, 700) + dex*4+ str*4 )*k)','40+160*k','','','15','-(atk + (1.2 * atk + number(500, 700) + dex*4+ str*4 )*k)','','ATTACK,USE_MELEE_DAMAGE','','NONE','','','','','','','40+160*k',0,0,'MELEE',6,'0.8',0,0),(32,_binary '�ý�ź��',2,1,1,0,'HP','-(atk + (1.6* atk + number(200,300) + dex*7 + str*7)*k)','40+160*k','','','20','-(atk + (1.6* atk + number(200,300) + dex*7 + str*7)*k)','','ATTACK,USE_MELEE_DAMAGE','','NONE','','','','','','','40+160*k',0,0,'MELEE',6,'0.8',800,0),(33,_binary '������',2,1,1,0,'HP','-(2*atk + (0.5*atk + dex*9 + str*7)*k)','50+140*k','','','25','-(2*atk + (0.5*atk + dex*9 + str*7)*k)','','ATTACK,USE_MELEE_DAMAGE,ATTACK_POISON','','NONE','40*k','','','','','','50+140*k',0,0,'MELEE',12,'0.8',0,0),(34,_binary '������',2,1,1,0,'NONE','','30+60*k','15+30*k','','60','','','SELFONLY','EUNHYUNG','NONE','','','','','','','30+60*k',0,0,'NORMAL',1,'1',0,0),(35,_binary '�����',2,1,1,0,'HP','-(lv*2+(atk + str*3 + dex*18)*k)','40+130*k','','','25','-(lv*2+(atk + str*3 + dex*18)*k)','','ATTACK,USE_MELEE_DAMAGE,SPLASH,ATTACK_POISON','','NONE','60*k','5+25*k','','','','','40+130*k',0,0,'MAGIC',0,'0.5',800,200),(36,_binary '�漶��',2,1,1,0,'HP','-((lv*2+(atk + str*3 + dex*18)*k)*1.1)','300+180*k','','','18','-((lv*2+(atk + str*3 + dex*18)*k)*1.1)','','ATTACK,USE_MELEE_DAMAGE,ATTACK_POISON','','NONE','60*k','5+25*k','','','','','300+180*k',0,0,'MELEE',6,'0.5',800,0),(46,_binary '����',2,1,1,0,'HP','-(atk + 0.2*atk*floor(2+k*6)+ (0.8*atk+dex*8*ar) *k)','40+130*k','','','15','-(atk + 0.2*atk*floor(2+k*6)+ (0.8*atk+dex*8*ar) *k)','','ATTACK,USE_ARROW_DAMAGE','','NONE','','','','','','','40+130*k',0,0,'RANGE',1,'1',2500,0),(47,_binary '���ݼ�',2,1,1,0,'HP','-(atk + (1.7*atk + dex*2+ str*2)*k)','30+130*k','','','12','-(atk + (1.7*atk + dex*2+ str*2)*k)','','ATTACK,USE_ARROW_DAMAGE','','NONE','','','','','','','30+130*k',0,0,'RANGE',8,'1',2500,0),(48,_binary 'ȭ����',2,1,1,0,'HP','-(1.5*atk + (2.6*atk + number(100, 300))*k)','50+130*k','','','25','-(1.5*atk + (2.6*atk + number(100, 300))*k)','','ATTACK,SPLASH,USE_ARROW_DAMAGE','','NONE','','','','','','','50+130*k',0,0,'RANGE',12,'0.6',2500,300),(49,_binary '�����',2,1,1,0,'NONE','-((lv*2+(3*dex+100)+str*2+iq*2)*k)','60+220*k','3+(90*k)/10','','4+8*k','-((lv*2+(3*dex+300)+str*2+iq*2)*k)','','SELFONLY','GYEONGGONG','MOV_SPEED','lv*2+(3*dex+number(100,300))+str*2+iq*2)*k','3+(90*k)/10','','','','','60+220*k',0,0,'NORMAL',1,'1',0,200),(50,_binary '�����',2,1,1,0,'HP','-(atk + (1.2*atk + number(100, 200)+dex*6+str*2)*k)','40+160*k','','','25','-(atk + (1.2*atk + number(100, 200)+dex*6+str*2)*k)','','ATTACK,SPLASH,USE_ARROW_DAMAGE,CRUSH,ATTACK_POISON','','NONE','80*k','15+30*k','','','','','40+160*k',0,0,'RANGE',12,'0.5',2500,300),(51,_binary '����ź',2,1,1,0,'HP','-((atk + (1.2*atk + number(100, 200)+dex*6+str*2)*k)*1.1)','200+200*k','','','18','-((atk + (1.2*atk + number(100, 200)+dex*6+str*2)*k)*1.1)','','ATTACK,USE_ARROW_DAMAGE,ATTACK_POISON','','NONE','80*k','15+30*k','','','','','200+200*k',0,0,'NORMAL',5,'0.5',0,0),(61,_binary '�����',3,1,1,0,'HP','-(atk + 2*lv + iq*2 + ( 2*atk + str*4 + iq*14) * k)','30+140*k','','','10','-(atk + 2*lv + iq*2 + ( 2*atk + str*4 + iq*14) * k)','','ATTACK,USE_MELEE_DAMAGE,PENETRATE','','NONE','1+k*9','','','','','','30+140*k',0,0,'MELEE',4,'1',0,0),(62,_binary '�����',3,1,1,0,'HP','-(1.1 * atk + 2*lv + iq*2+(1.5*atk + str + iq*12) * k)','50+150*k','','','15','-(1.1 * atk + 2*lv + iq*2+(1.5*atk + str + iq*12) * k)','','ATTACK,USE_MELEE_DAMAGE,SELFONLY,SPLASH,IGNORE_TARGET_RATING','','NONE','1+k*9','','','','','','50+150*k',0,0,'MELEE',12,'1',0,500),(63,_binary '�Ͱ�',3,1,1,0,'ATT_GRADE','(3 * iq + 2 * lv)*k','20+240*k','50+100*k','2+23*k','0','(3 * iq + 2 * lv)*k','','SELFONLY,TOGGLE','GWIGUM','HIT_HP_RECOVER','10*k','50+80*k','','','','','20+240*k',0,0,'NORMAL',1,'1',0,0),(64,_binary '����',3,1,1,0,'DODGE','1 + 29 * k','60+120*k','60+100*k','','100','1 + 29 * k','','SELFONLY','TERROR','NONE','','','','','','','60+120*k',0,0,'NORMAL',1,'1',0,0),(65,_binary '�ָ���',3,1,1,0,'DEF_GRADE','(iq+30)*k','70+170*k','30+120*k','','33+140*k','(iq+30)*k','','SELFONLY','JUMAGAP','REFLECT_MELEE','(iq/4+10)*k','30+120*k','','','','','70+170*k',0,0,'NORMAL',1,'1',0,0),(66,_binary '�Ĺ���',3,1,1,0,'HP','-(40 +5*lv + 2*iq+(10*iq + 7*mwep + number(50,100) )*ar*k)','30+120*k','','','12','-(40 +5*lv + 2*iq+(10*iq + 7*mwep + number(50,100) )*ar*k)','','ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH,REMOVE_GOOD_AFFECT','','NONE','10+40*k','7+23*k','','','','','30+120*k',0,0,'NORMAL',5,'0.6',1800,200),(76,_binary '����',3,1,1,0,'HP','-(40 +5*lv + 2*iq +(13*iq + 6*mwep + number(50,100) )*ar*k)','30+140*k','','','7','-(40 +5*lv + 2*iq +(13*iq + 6*mwep + number(50,100) )*ar*k)','','ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH','','NONE','','','','','','','30+140*k',0,0,'MAGIC',5,'0.6',1500,200),(77,_binary 'ȭ����',3,1,1,0,'HP','-(5*lv + 2*iq+(10*iq + 6*mwep + str*4 + con*2 + number(180,200) )*k)','60+140*k','','','12','-(5*lv + 2*iq+(10*iq + 6*mwep + str*4 + con*2 + number(180,200) )*k)','','ATTACK,SELFONLY,COMPUTE_MAGIC_DAMAGE,SPLASH','','NONE','','','','','','','60+140*k',0,0,'MAGIC',15,'0.8',0,500),(78,_binary '������',3,1,1,0,'HP','-(30+ 2*lv + 2*iq+(7*iq + 6*mwep + number(200,500))*ar*k)','20+30*k','40+30*k','5+40*k','43+30*k','-(30+ 2*lv + 2*iq+(7*iq + 6*mwep + number(200,500))*ar*k)','','ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH,TOGGLE','','NONE','','','','','','','20+30*k',0,0,'MAGIC',1,'1',800,0),(79,_binary '��ż�ȣ',3,1,1,0,'DEF_GRADE','(0.5*iq+15)*k','20+30*k','60+120*k','5+10*k','63+120*k','(0.5*iq+15)*k','','SELFONLY,TOGGLE','MANASHIELD','MANASHIELD','100-((iq*0.84)*k)','60+120*k','','','','','20+30*k',0,0,'MAGIC',1,'0.8',0,0),(80,_binary '���Ӹ���',3,1,1,0,'HP','-(40 + 2* lv + 2*iq +(2 * con + 2 * dex + 13*iq + 6*mwep + number(180, 200))*ar*k)','40+120*k','','','12','-(40 + 2* lv + 2*iq +(2 * con + 2 * dex + 13*iq + 6*mwep + number(180, 200))*ar*k)','','ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH,ATTACK_SLOW','','NONE','333+300*k','10+10*k','','','','','40+120*k',0,0,'MAGIC',9,'0.8',1200,400),(81,_binary '��ȯ��',3,1,1,0,'HP','-(120 + 6*lv + (5 * con + 5 * dex + 29*iq + 9*mwep)*ar*k)','80+220*k','','','24','-(120 + 6*lv + (5 * con + 5 * dex + 29*iq + 9*mwep)*ar*k)','','ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH','','NONE','','','','','','','80+220*k',0,0,'MAGIC',9,'0.4',1500,200),(91,_binary '���ĺ�',4,1,1,0,'HP','-(70 + 4*lv + (20*iq+5*mwep+50)*ar*k)','30+160*k','','','7','-(70 + 4*lv + (20*iq+5*mwep+50)*ar*k)','','ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH','','NONE','','','','','','','30+160*k',0,0,'MAGIC',5,'0.5',1800,201),(92,_binary '���Ļ�',4,1,1,0,'HP','-(60 + 5*lv + (18*iq + 6*mwep + 120)*ar*k)','50+160*k','','','8','-(60 + 5*lv + (18*iq + 6*mwep + 120)*ar*k)','','ATTACK,ATTACK_FIRE_CONT','','NONE','lv+5*iq *k','iq*0.2*k','','','','','50+160*k',0,0,'MAGIC',10,'0.8',0,0),(93,_binary '�з���',4,1,1,0,'HP','-(70 + 3*lv + (22*iq+13*mwep+100)*ar*k)','50+160*k','','','20','-(70 + 3*lv + (22*iq+13*mwep+100)*ar*k)','','ATTACK,SELFONLY,SPLASH,ATTACK_FIRE_CONT','','NONE','lv+5*iq *k','iq*0.2*k','','','','','50+160*k',0,0,'MAGIC',15,'0.8',0,500),(94,_binary 'ȣ��',4,1,1,0,'RESIST_NORMAL','(iq*0.3+5)*(2*k+0.5)/(k+1.5)','40+160*k','60+200*k','','10','(iq*0.3+5)*(2*k+0.5)/(k+1.5)','','','HOSIN','NONE','','','','','','','40+160*k',0,0,'NORMAL',1,'1',800,0),(95,_binary '�ݻ�',4,1,1,0,'REFLECT_MELEE','5+(iq*0.3 + 5)*k','40+160*k','60+200*k','','10','5+(iq*0.3 + 5)*k','','','BOHO','NONE','','','','','','','40+160*k',0,0,'NORMAL',1,'1',1000,0),(96,_binary '��õ���',4,1,1,0,'CRITICAL','(iq*0.3+5)*(2*k+0.5)/(k+1.5)','40+160*k','60+100*k','','10','(iq*0.3+5)*(2*k+0.5)/(k+1.5)','','','GICHEON','NONE','','','','','','','40+160*k',0,0,'NORMAL',1,'1',1000,0),(106,_binary '������',4,1,1,0,'HP','-(60 + 4*lv + (7*iq+8*mwep+number(iq*5,iq*15))*ar*k)','30+150*k','','','7','-(60 + 4*lv + (7*iq+8*mwep+number(iq*5,iq*15))*ar*k)','','ATTACK,SPLASH','','NONE','','','','','','','30+150*k',0,0,'MAGIC',5,'0.6',1800,200),(107,_binary '����',4,1,1,0,'HP','-(40 + 4*lv + (13*iq+7*mwep+number(iq*5,iq*16))*ar*k)','50+150*k','','','15','-(40 + 4*lv + (13*iq+7*mwep+number(iq*5,iq*16))*ar*k)','','ATTACK,SPLASH,ATTACK_STUN','','NONE','50+1000*k/6','5','','','','','50+150*k',0,0,'MAGIC',15,'0.8',1500,400),(108,_binary '���ڰ�',4,1,1,0,'HP','-(50 + 5*lv + (6*iq+6*mwep+number(1,800))*ar*k) * (1-chain*0.13)','40+180*k','','','10','-(50 + 5*lv + (6*iq+6*mwep+number(1,800))*ar*k) * (1-chain*0.13)','','ATTACK','','NONE','','','','','','','40+180*k',0,0,'MAGIC',7,'0.8',2500,0),(109,_binary '������',4,1,1,0,'HP','200+4*lv+(10*iq+6*mwep+number(600,800))*k','40+200*k','','','10','200+4*lv+(10*iq+6*mwep+number(600,800))*k','','REMOVE_BAD_AFFECT','','NONE','20+80*k','0','','','','','40+200*k',0,0,'NORMAL',1,'1',1000,0),(110,_binary '���',4,1,1,0,'MOV_SPEED','5 + 35*k','60+120*k','60+100*k','','10','5 + 35*k','','','KWAESOK','CASTING_SPEED','3+33*k','60+100*k','','','','','60+120*k',0,0,'NORMAL',1,'1',1000,0),(111,_binary '���¼�',4,1,1,0,'ATT_GRADE','5+(iq*0.2 +15)*k','60+120*k','60+100*k','','10','5+(iq*0.2 +15)*k','','','JEUNGRYEOK','NONE','','','','','','','60+120*k',0,0,'NORMAL',1,'1',1000,0),(121,_binary '��ַ�',0,1,40,0,'NONE','','','','','','','','DISABLE_BY_POINT_UP','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(122,_binary '�����',0,1,2,0,'NONE','','','','','','','','DISABLE_BY_POINT_UP','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(124,_binary 'ä����',0,1,40,0,'NONE','','','','','','','','DISABLE_BY_POINT_UP','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(125,_binary '����',0,1,40,0,'NONE','','','10+1000*k','','','','','DISABLE_BY_POINT_UP','YMIR','NONE','','','YMIR','','','','',0,0,'NORMAL',0,'1',1000,0),(126,_binary '�ż���',0,1,20,0,'NONE','','','','','','','','DISABLE_BY_POINT_UP','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(127,_binary 'õ����',0,1,20,0,'NONE','','','','','','','','DISABLE_BY_POINT_UP','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(128,_binary '�����',0,1,20,0,'NONE','','','','','','','','DISABLE_BY_POINT_UP','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(129,_binary '�а���',0,1,40,0,'NONE','','','','','','','','DISABLE_BY_POINT_UP','','NONE','','','','NONE','','','',0,0,'NORMAL',0,'1',0,0),(130,_binary '�¸�',0,1,1,0,'NONE','','','','','','','','DISABLE_BY_POINT_UP','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(131,_binary '����ȯ',0,1,10,0,'NONE','','','','','','','','DISABLE_BY_POINT_UP','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(137,_binary '����',5,1,1,50,'HP','-(atk+(2*atk*k))','60+80*k','','','5-(4*k)','','','ATTACK,USE_MELEE_DAMAGE,CRUSH','','NONE','','','','','','','',0,0,'MELEE',10,'1',300,0),(138,_binary '����',5,1,1,52,'HP','-(2.4*(200+1.5*lv)+(3*200*k))','60+120*k','','','15','','','ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH_LONG','','MOV_SPEED','50','5','','','','','',0,0,'MELEE',6,'1',400,100),(139,_binary 'Ż��',5,1,1,55,'HP','-(2*(200+1.5*lv)+(3*200*k))','60+160*k','','','20','','','ATTACK,USE_MELEE_DAMAGE,SELFONLY,SPLASH,CRUSH','','NONE','','','','','','','',0,0,'MELEE',12,'1',400,250),(140,_binary '����(Ȱ)',5,1,1,50,'HP','-(atk+(2*atk*k))','60+80*k','','','10','','','ATTACK,USE_ARROW_DAMAGE,CRUSH','','NONE','','','','','','','',0,0,'',5,'1',2500,0),(151,_binary '���',0,1,7,0,'NONE','','','','','','','','','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(152,_binary '�������',0,1,7,0,'MAX_HP','maxhp*0.2*k','150+150*k','300','','600','','','','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(153,_binary '������ູ',0,1,7,0,'MAX_SP','maxsp*0.2*k','150+150*k','300','','600','','','','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(154,_binary '���ְ�',0,1,7,0,'DEF_GRADE','odef*0.1*k','150+150*k','180','','480','','','','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(155,_binary '����ȭ',0,1,7,0,'MOV_SPEED','15*k','150+150*k','180','','480','','','','','ATT_SPEED','15*k','180','','','','','',0,0,'NORMAL',0,'1',0,0),(156,_binary '����Ǻг�',0,1,7,0,'CRITICAL','50*k','150+150*k','180','','480','','','SELFONLY','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(157,_binary '�ֹ���',0,1,7,0,'CASTING_SPEED','50*k','150+150*k','180','','480','','','SELFONLY','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(158,_binary '����̵�',0,1,3,0,'NONE','','','','','','','','SELFONLY','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(159,_binary '�����ǹ�',0,1,5,0,'NONE','','','','','','','','SELFONLY','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(160,_binary '����ȭ',0,1,5,0,'NONE','3*k','80-12*k','300','','','','','SELFONLY','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(161,_binary '�����ǹ�',0,1,2,0,'NONE','','50','','','','','','','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(162,_binary '�����̵�',0,1,2,0,'NONE','','20','','','','','','','','NONE','','','','','','','',0,0,'NORMAL',0,'1',0,0),(256,_binary 'CRUSH200��ų',0,1,1,0,'HP','-5*k*atk','','','','2','','','ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH','','NONE','','','','','','','',0,0,'MELEE',0,'1',0,300),(257,_binary '�Ϲݹ���350��ų',0,1,1,0,'HP','-5*k*atk','','','','5','','','ATTACK,USE_MELEE_DAMAGE,SPLASH','','NONE','','','','','','','',0,0,'MELEE',0,'1',0,525),(258,_binary 'CRUSH300��ų',0,1,1,0,'HP','-5*k*atk','','','','7','','','ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH','','NONE','','','','','','','',0,0,'MELEE',0,'1',0,450),(259,_binary '�Ϲݹ���200��ų',0,1,1,0,'HP','-5*k*atk','','','','9','','','ATTACK,USE_MELEE_DAMAGE,SPLASH','','NONE','','','','','','','',0,0,'MELEE',0,'1',0,300),(260,_binary 'CURSH400��ų',0,1,1,0,'HP','-5*k*atk','','','','10','','','ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH','','NONE','','','','','','','',0,0,'MELEE',0,'1',0,600),(261,_binary '��250��ų',0,1,1,0,'HP','-5*k*atk','','','','9','','','ATTACK,USE_MELEE_DAMAGE,SPLASH,ATTACK_POISON','','NONE','80','','','','','','',0,0,'MELEE',0,'1',0,375),(262,_binary 'SLOW300��ų',0,1,1,0,'HP','-5*k*atk','','','','12','','','ATTACK,USE_MELEE_DAMAGE,SPLASH','','MOV_SPEED','-20','10','','','','','',0,0,'MELEE',0,'1',0,450),(221,_binary 'Sword Spin Ward',6,1,1,0,'NONE','24*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(222,_binary 'Ambush Ward',6,1,1,0,'NONE','24*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(223,_binary 'Finger Strike Ward',6,1,1,0,'NONE','24*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(224,_binary 'Shooting Dragon Ward',6,1,1,0,'NONE','24*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(225,_binary 'Spirit Strike Ward',6,1,1,0,'NONE','24*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(226,_binary 'Fire Arrow Ward',6,1,1,0,'NONE','24*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(227,_binary 'Dark Strike Ward',6,1,1,0,'NONE','24*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(228,_binary 'Summon Lightning Ward',6,1,1,0,'NONE','24*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(229,_binary 'Wolfs Breath Ward',6,1,1,0,'NONE','24*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(236,_binary 'Sword Spin Boost',6,1,1,0,'NONE','16*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(237,_binary 'Ambush Boost',6,1,1,0,'NONE','16*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(238,_binary 'Finger Strike Boost',6,1,1,0,'NONE','16*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(239,_binary 'Shooting Dragon Boost',6,1,1,0,'NONE','16*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(240,_binary 'Spirit Strike Boost',6,1,1,0,'NONE','16*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(241,_binary 'Fire Arrow Boost',6,1,1,0,'NONE','16*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(242,_binary 'Dark Strike Boost',6,1,1,0,'NONE','16*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(243,_binary 'Summon Lightning Boost',6,1,1,0,'NONE','16*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0),(244,_binary 'Wolfs Breath Boost',6,1,1,0,'NONE','16*k','','','','','','',NULL,'YMIR','NONE','','','YMIR','NONE','','','',0,0,'NORMAL',0,'1',1000,0);
/*!40000 ALTER TABLE `skill_proto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_pool`
--

DROP TABLE IF EXISTS `sms_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_pool` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server` int NOT NULL DEFAULT '0',
  `sender` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `receiver` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mobile` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sent` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  `msg` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sent_idx` (`sent`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_pool`
--

LOCK TABLES `sms_pool` WRITE;
/*!40000 ALTER TABLE `sms_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spam_db`
--

DROP TABLE IF EXISTS `spam_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spam_db` (
  `word` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `score` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `type` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spam_db`
--

LOCK TABLES `spam_db` WRITE;
/*!40000 ALTER TABLE `spam_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `spam_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speed_hack`
--

DROP TABLE IF EXISTS `speed_hack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speed_hack` (
  `pid` int unsigned DEFAULT NULL,
  `time` datetime DEFAULT '2001-01-01 00:00:00',
  `x` int unsigned NOT NULL DEFAULT '0',
  `y` int unsigned NOT NULL DEFAULT '0',
  `hack_count` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speed_hack`
--

LOCK TABLES `speed_hack` WRITE;
/*!40000 ALTER TABLE `speed_hack` DISABLE KEYS */;
/*!40000 ALTER TABLE `speed_hack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `string`
--

DROP TABLE IF EXISTS `string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `string` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `string`
--

LOCK TABLES `string` WRITE;
/*!40000 ALTER TABLE `string` DISABLE KEYS */;
INSERT IGNORE INTO `string` VALUES (1,'ASIKOO','test 1'),(2,'OOKISA','test 2');
/*!40000 ALTER TABLE `string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcard_log`
--

DROP TABLE IF EXISTS `vcard_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vcard_log` (
  `vcard_id` int unsigned NOT NULL AUTO_INCREMENT,
  `x` int unsigned NOT NULL DEFAULT '0',
  `y` int unsigned NOT NULL DEFAULT '0',
  `hostname` char(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'UNKNOWN',
  `giver_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `giver_ip` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `taker_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `taker_ip` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`vcard_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcard_log`
--

LOCK TABLES `vcard_log` WRITE;
/*!40000 ALTER TABLE `vcard_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcard_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-31 12:15:58
