-- MySQL dump 10.17  Distrib 10.3.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: concrete5
-- ------------------------------------------------------
-- Server version	10.3.18-MariaDB-1:10.3.18+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AreaLayoutColumns`
--

DROP TABLE IF EXISTS `AreaLayoutColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT 0,
  `arID` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutColumnDisplayID` int(11) DEFAULT 0,
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutColumns`
--

LOCK TABLES `AreaLayoutColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutColumns` DISABLE KEYS */;
INSERT INTO `AreaLayoutColumns` VALUES (1,1,0,2,1),(2,1,1,3,2),(3,1,2,4,3),(4,2,0,5,4),(5,2,1,6,5),(6,3,0,7,6),(7,3,1,8,7),(8,3,2,9,8);
/*!40000 ALTER TABLE `AreaLayoutColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutCustomColumns`
--

DROP TABLE IF EXISTS `AreaLayoutCustomColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutCustomColumns`
--

LOCK TABLES `AreaLayoutCustomColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutCustomColumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutCustomColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutPresets`
--

DROP TABLE IF EXISTS `AreaLayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutPresets`
--

LOCK TABLES `AreaLayoutPresets` WRITE;
/*!40000 ALTER TABLE `AreaLayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutThemeGridColumns`
--

DROP TABLE IF EXISTS `AreaLayoutThemeGridColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT 0,
  `arLayoutColumnOffset` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutThemeGridColumns`
--

LOCK TABLES `AreaLayoutThemeGridColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutThemeGridColumns` DISABLE KEYS */;
INSERT INTO `AreaLayoutThemeGridColumns` VALUES (1,4,0),(2,4,0),(3,4,0),(4,4,0),(5,8,0),(6,4,0),(7,4,0),(8,4,0);
/*!40000 ALTER TABLE `AreaLayoutThemeGridColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayouts`
--

DROP TABLE IF EXISTS `AreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT 0,
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT 0,
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayouts`
--

LOCK TABLES `AreaLayouts` WRITE;
/*!40000 ALTER TABLE `AreaLayouts` DISABLE KEYS */;
INSERT INTO `AreaLayouts` VALUES (1,0,0,0,12,1),(2,0,0,0,12,1),(3,0,0,0,12,1);
/*!40000 ALTER TABLE `AreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutsUsingPresets`
--

DROP TABLE IF EXISTS `AreaLayoutsUsingPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutsUsingPresets`
--

LOCK TABLES `AreaLayoutsUsingPresets` WRITE;
/*!40000 ALTER TABLE `AreaLayoutsUsingPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutsUsingPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionAssignments`
--

LOCK TABLES `AreaPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `AreaPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

LOCK TABLES `AreaPermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `btID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

LOCK TABLES `AreaPermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT 0,
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT 0,
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT 0,
  `arParentID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,138,'Main',0,0,0,0),(2,138,'Main : 1',0,0,0,1),(3,138,'Main : 2',0,0,0,1),(4,138,'Main : 3',0,0,0,1),(5,138,'Main : 4',0,0,0,1),(6,138,'Main : 5',0,0,0,1),(7,138,'Main : 6',0,0,0,1),(8,138,'Main : 7',0,0,0,1),(9,138,'Main : 8',0,0,0,1),(10,139,'Main',0,0,0,0),(11,152,'Main',0,0,0,0),(12,153,'Main',0,0,0,0),(13,154,'Main',0,0,0,0),(14,1,'Header Site Title',0,0,1,0),(15,155,'Main',0,0,0,0),(16,1,'Header Navigation',0,0,1,0),(17,1,'Main',0,0,0,0),(18,1,'Page Footer',0,0,0,0),(19,156,'Main',0,0,0,0),(20,1,'Footer Legal',0,0,1,0),(21,157,'Main',0,0,0,0),(22,1,'Footer Navigation',0,0,1,0),(23,158,'Main',0,0,0,0),(24,1,'Footer Contact',0,0,1,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` int(11) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  UNIQUE KEY `UNIQ_A2A0CC67FA0337B` (`akCategoryHandle`),
  KEY `IDX_A2A0CC67CE45CBB0` (`pkgID`),
  KEY `pkgID` (`pkgID`,`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  CONSTRAINT `FK_A2A0CC67CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL),(4,'site',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL,
  `akIsInternal` tinyint(1) NOT NULL,
  `akIsSearchableIndexed` tinyint(1) NOT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  `akCategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_DCA32C62A12CFE33` (`atID`),
  KEY `IDX_DCA32C62B059B76B` (`akCategoryID`),
  KEY `pkgID` (`pkgID`),
  CONSTRAINT `FK_DCA32C62A12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  CONSTRAINT `FK_DCA32C62B059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  CONSTRAINT `FK_DCA32C62CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,0,0,1,1,NULL,'pagekey'),(2,'meta_description','Meta Description',1,0,0,2,1,NULL,'pagekey'),(3,'meta_keywords','Meta Keywords',1,0,0,2,1,NULL,'pagekey'),(4,'desktop_priority','Desktop Priority',1,1,0,6,1,NULL,'pagekey'),(5,'is_desktop','Is Desktop',1,1,0,3,1,NULL,'pagekey'),(6,'icon_dashboard','Dashboard Icon',1,1,0,2,1,NULL,'pagekey'),(7,'exclude_nav','Exclude From Nav',1,0,0,3,1,NULL,'pagekey'),(8,'exclude_page_list','Exclude From Page List',1,0,0,3,1,NULL,'pagekey'),(9,'header_extra_content','Header Extra Content',1,0,0,2,1,NULL,'pagekey'),(10,'tags','Tags',1,0,1,7,1,NULL,'pagekey'),(11,'is_featured','Is Featured',1,0,0,3,1,NULL,'pagekey'),(12,'exclude_search_index','Exclude From Search Index',1,0,0,3,1,NULL,'pagekey'),(13,'exclude_sitemapxml','Exclude From sitemap.xml',1,0,0,3,1,NULL,'pagekey'),(14,'profile_private_messages_enabled','I would like to receive private messages.',1,0,0,3,2,NULL,'userkey'),(15,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,0,0,3,2,NULL,'userkey'),(16,'width','Width',1,0,0,6,3,NULL,'filekey'),(17,'height','Height',1,0,0,6,3,NULL,'filekey'),(18,'account_profile_links','Personal Links',1,0,0,14,2,NULL,'userkey'),(19,'duration','Duration',1,0,0,6,3,NULL,'filekey');
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `asDisplayOrder` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `asID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`,`asID`),
  KEY `IDX_222F72D8B6561A7E` (`akID`),
  KEY `IDX_222F72D8A463E8B6` (`asID`),
  CONSTRAINT `FK_222F72D8A463E8B6` FOREIGN KEY (`asID`) REFERENCES `AttributeSets` (`asID`),
  CONSTRAINT `FK_222F72D8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (0,1,1),(1,2,1),(1,7,2),(2,8,2),(2,9,1),(4,10,2),(0,11,2),(3,12,2),(3,13,1);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asDisplayOrder` int(10) unsigned NOT NULL,
  `asIsLocked` tinyint(1) NOT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`asID`),
  KEY `IDX_FCA02D5FB059B76B` (`akCategoryID`),
  KEY `asHandle` (`asHandle`),
  KEY `pkgID` (`pkgID`),
  CONSTRAINT `FK_FCA02D5FB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  CONSTRAINT `FK_FCA02D5FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'seo','SEO',0,0,1,NULL),(2,'navigation','Navigation and Indexing',0,0,1,NULL);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `akCategoryID` int(10) unsigned NOT NULL,
  `atID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akCategoryID`,`atID`),
  KEY `IDX_49A9CABEB059B76B` (`akCategoryID`),
  KEY `IDX_49A9CABEA12CFE33` (`atID`),
  CONSTRAINT `FK_49A9CABEA12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  CONSTRAINT `FK_49A9CABEB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,9),(1,10),(1,11),(1,12),(1,13),(1,15),(2,1),(2,2),(2,3),(2,4),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,13),(2,14),(2,15),(3,1),(3,2),(3,3),(3,4),(3,6),(3,7),(3,9),(3,10),(3,11),(3,12),(3,13),(3,15),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,13),(4,15);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `UNIQ_53580A7F46AA0F38` (`atHandle`),
  KEY `IDX_53580A7FCE45CBB0` (`pkgID`),
  KEY `pkgID` (`pkgID`,`atID`),
  CONSTRAINT `FK_53580A7FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',NULL),(2,'textarea','Text Area',NULL),(3,'boolean','Checkbox',NULL),(4,'date_time','Date/Time',NULL),(5,'image_file','Image/File',NULL),(6,'number','Number',NULL),(7,'select','Select',NULL),(8,'address','Address',NULL),(9,'telephone','Phone Number',NULL),(10,'url','URL',NULL),(11,'email','Email',NULL),(12,'rating','Rating',NULL),(13,'topics','Topics',NULL),(14,'social_links','Social Links',NULL),(15,'express','Express Entity',NULL);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `IDX_DCCE7864B6561A7E` (`akID`),
  CONSTRAINT `FK_DCCE7864B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(17,3),(19,3),(20,3),(21,3),(22,3),(23,3),(26,3),(27,3),(28,3),(29,3),(38,3),(39,3),(40,3),(42,3),(45,3),(46,3),(47,3),(48,3),(49,3),(50,3),(52,3),(53,3),(54,3),(55,3),(56,3),(57,3),(58,3),(59,3),(60,3),(61,3),(62,3),(71,3),(72,3),(73,3),(74,3),(75,3),(76,3),(77,3),(78,3),(79,3),(80,3),(81,3),(82,3),(83,3),(84,3),(85,3),(86,3),(87,3),(88,3),(89,3),(90,3),(91,3),(92,3),(93,3),(94,3),(95,3),(96,3),(97,3),(98,3),(99,3),(100,3),(101,3),(102,3),(103,3),(104,3),(105,3),(106,3),(107,3),(108,3),(110,3),(111,3),(112,3),(113,3),(114,3),(115,3),(116,3),(117,4),(124,4),(118,5),(125,5),(1,6),(41,6),(120,6),(121,6),(122,6),(123,6),(9,7),(16,7),(18,7),(24,7),(30,7),(31,7),(32,7),(33,7),(34,7),(35,7),(36,7),(37,7),(43,7),(51,7),(63,7),(65,7),(66,7),(67,7),(68,7),(69,7),(70,7),(119,7),(126,7),(25,12),(44,12),(64,12),(109,12);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthenticationTypes`
--

DROP TABLE IF EXISTS `AuthenticationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthenticationTypes`
--

LOCK TABLES `AuthenticationTypes` WRITE;
/*!40000 ALTER TABLE `AuthenticationTypes` DISABLE KEYS */;
INSERT INTO `AuthenticationTypes` VALUES (1,'concrete','Standard',1,0,0),(2,'community','concrete5.org',0,0,0),(3,'facebook','Facebook',0,0,0),(4,'twitter','Twitter',0,0,0),(5,'google','Google',0,0,0);
/*!40000 ALTER TABLE `AuthenticationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BannedWords`
--

DROP TABLE IF EXISTS `BannedWords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BannedWords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BannedWords`
--

LOCK TABLES `BannedWords` WRITE;
/*!40000 ALTER TABLE `BannedWords` DISABLE KEYS */;
INSERT INTO `BannedWords` VALUES (1,'fuck'),(2,'shit'),(3,'bitch'),(4,'ass');
/*!40000 ALTER TABLE `BannedWords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowPermissionAssignments`
--

LOCK TABLES `BasicWorkflowPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT 0,
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT 0,
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT 0,
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowProgressData`
--

LOCK TABLES `BasicWorkflowProgressData` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockFeatureAssignments`
--

DROP TABLE IF EXISTS `BlockFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `faID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockFeatureAssignments`
--

LOCK TABLES `BlockFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `BlockFeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockPermissionAssignments`
--

LOCK TABLES `BlockPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BlockPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `btID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypeSetBlockTypes`
--

DROP TABLE IF EXISTS `BlockTypeSetBlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT 0,
  `btsID` int(10) unsigned NOT NULL DEFAULT 0,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypeSetBlockTypes`
--

LOCK TABLES `BlockTypeSetBlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypeSetBlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypeSetBlockTypes` VALUES (14,1,0),(30,1,1),(32,1,2),(17,1,3),(31,1,4),(24,1,5),(13,2,0),(23,2,1),(33,2,2),(35,2,3),(34,2,4),(15,2,5),(41,2,6),(25,2,7),(36,2,8),(40,2,9),(21,3,0),(37,3,1),(16,3,2),(19,4,0),(20,4,1),(39,5,0),(5,5,1),(26,5,2),(27,5,3),(28,5,4),(18,6,0),(38,6,1),(42,6,2),(43,6,3),(29,6,4),(6,7,0),(8,7,1),(9,7,2),(10,7,3),(11,7,4),(12,7,5),(7,7,6);
/*!40000 ALTER TABLE `BlockTypeSetBlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypeSets`
--

DROP TABLE IF EXISTS `BlockTypeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypeSets`
--

LOCK TABLES `BlockTypeSets` WRITE;
/*!40000 ALTER TABLE `BlockTypeSets` DISABLE KEYS */;
INSERT INTO `BlockTypeSets` VALUES (1,'Basic','basic',0,0),(2,'Navigation','navigation',0,0),(3,'Forms','form',0,0),(4,'Express','express',0,0),(5,'Social Networking','social',0,0),(6,'Multimedia','multimedia',0,0),(7,'Desktop','core_desktop',0,0);
/*!40000 ALTER TABLE `BlockTypeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL,
  `btID` int(11) NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `btCopyWhenPropagate` tinyint(1) NOT NULL,
  `btIncludeAll` tinyint(1) NOT NULL,
  `btIsInternal` tinyint(1) NOT NULL,
  `btSupportsInlineEdit` tinyint(1) NOT NULL,
  `btSupportsInlineAdd` tinyint(1) NOT NULL,
  `btDisplayOrder` int(11) NOT NULL,
  `btInterfaceHeight` int(11) NOT NULL,
  `btInterfaceWidth` int(11) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`btID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (0,1,'core_area_layout','Area Layout','Proxy block for area layouts.',0,0,1,1,1,0,400,400,0),(0,2,'core_page_type_composer_control_output','Composer Control','Proxy block for blocks that need to be output through composer.',0,0,1,0,0,0,400,400,0),(0,3,'core_scrapbook_display','Scrapbook Display','Proxy block for blocks pasted through the scrapbook.',0,0,1,0,0,0,400,400,0),(0,4,'core_stack_display','Stack Display','Proxy block for stacks added through the UI.',0,0,1,0,0,0,400,400,0),(0,5,'core_conversation','Conversation','Displays conversations on a page.',1,0,0,0,0,0,400,400,0),(0,6,'desktop_app_status','concrete5 Status Messages','Displays alerts about your concrete5 site and package updates.',0,0,0,0,0,0,400,400,0),(0,7,'desktop_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',0,0,0,0,0,0,400,400,0),(0,8,'desktop_site_activity','Site Activity','Displays a graph of recent activity on your site.',0,0,0,0,0,0,560,450,0),(0,9,'desktop_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',0,0,0,0,0,0,100,300,0),(0,10,'desktop_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',0,0,0,0,0,0,100,300,0),(0,11,'desktop_latest_form','Latest Form','Shows the latest form submission.',0,0,0,0,0,0,400,400,0),(0,12,'desktop_waiting_for_me','Waiting for Me','Displays workflow actions waiting for you.',0,0,0,0,0,0,560,450,0),(0,13,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',0,0,0,0,0,0,350,800,0),(0,14,'content','Content','HTML/WYSIWYG Editor Content.',0,0,0,1,1,0,465,600,0),(0,15,'date_navigation','Date Navigation','Displays a list of months to filter a page list by.',0,0,0,0,0,0,450,400,0),(0,16,'external_form','External Form','Include external forms in the filesystem and place them on pages.',0,0,0,0,0,0,175,370,0),(0,17,'file','File','Link to files stored in the asset library.',0,0,0,0,0,0,320,300,0),(0,18,'page_attribute_display','Page Attribute Display','Displays the value of a page attribute for the current page.',0,0,0,0,0,0,365,500,0),(0,19,'express_entry_list','Express Entry List','Add a searchable Express entry list to a page.',0,0,0,0,0,0,400,640,0),(0,20,'express_entry_detail','Express Entry Detail','Add an Express entry detail display to a page.',0,0,0,0,0,0,400,640,0),(0,21,'express_form','Form','Build simple forms and surveys.',0,0,0,0,0,0,480,640,0),(0,22,'form','Legacy Form','Build simple forms and surveys.',1,0,0,0,0,0,430,420,0),(0,23,'page_title','Page Title','Displays a Page\'s Title',0,0,0,0,0,0,500,470,0),(0,24,'feature','Feature','Displays an icon, a title, and a short paragraph description.',0,0,0,0,0,0,520,400,0),(0,25,'topic_list','Topic List','Displays a list of your site\'s topics, allowing you to click on them to filter a page list.',0,0,0,0,0,0,400,400,0),(0,26,'social_links','Social Links','Allows users to add social icons to their website',0,0,0,0,0,0,400,400,0),(0,27,'testimonial','Testimonial','Displays a quote or paragraph next to biographical information and a person\'s picture.',0,0,0,0,0,0,560,450,0),(0,28,'share_this_page','Share This Page','Allows users to share this page with social networks.',0,0,0,0,0,0,400,400,0),(0,29,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',0,0,0,0,0,0,460,400,0),(1,30,'html','HTML','For adding HTML by hand.',0,0,0,0,0,0,500,600,0),(1,31,'horizontal_rule','Horizontal Rule','Adds a thin hairline horizontal divider to the page.',0,0,0,0,0,0,400,400,0),(0,32,'image','Image','Adds images and onstates from the library to pages.',0,0,0,0,0,0,550,400,0),(0,33,'faq','FAQ','Frequently Asked Questions Block',0,0,0,0,0,0,465,600,0),(0,34,'next_previous','Next & Previous Nav','Navigate through sibling pages.',0,0,0,0,0,0,400,430,0),(0,35,'page_list','Page List','List pages based on type, area.',0,0,0,0,0,0,350,800,0),(0,36,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',0,0,0,0,0,0,550,400,0),(0,37,'search','Search','Add a search box to your site.',0,0,0,0,0,0,420,400,0),(1,38,'image_slider','Image Slider','Display your images and captions in an attractive slideshow format.',0,0,0,0,0,0,550,600,0),(0,39,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',0,0,0,0,0,0,400,420,0),(0,40,'switch_language','Switch Language','Adds a front-end language switcher to your website.',0,0,0,0,0,0,150,500,0),(0,41,'tags','Tags','List pages based on type, area.',0,0,0,0,0,0,439,450,0),(0,42,'video','Video Player','Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',0,0,0,0,0,0,270,320,0),(0,43,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',0,0,0,0,0,0,490,400,0);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2019-10-03 15:10:42','2019-10-03 15:10:42',NULL,'0',6,1,NULL),(2,'','2019-10-03 15:10:43','2019-10-03 15:10:43',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjIiO3M6OToiACoAX3RhYmxlIjtzOjE2OiJidENvcmVBcmVhTGF5b3V0IjtzOjEwOiJhckxheW91dElEIjtzOjE6IjEiO30='),(3,'','2019-10-03 15:10:44','2019-10-03 15:10:44',NULL,'0',11,1,NULL),(4,'','2019-10-03 15:10:44','2019-10-03 15:10:44',NULL,'0',9,1,NULL),(5,'','2019-10-03 15:10:45','2019-10-03 15:10:45',NULL,'0',8,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjUiO3M6OToiACoAX3RhYmxlIjtzOjIxOiJidERlc2t0b3BTaXRlQWN0aXZpdHkiO3M6NToidHlwZXMiO3M6ODI6IlsiZm9ybV9zdWJtaXNzaW9ucyIsInN1cnZleV9yZXN1bHRzIiwic2lnbnVwcyIsImNvbnZlcnNhdGlvbl9tZXNzYWdlcyIsIndvcmtmbG93Il0iO30='),(6,'','2019-10-03 15:10:45','2019-10-03 15:10:45',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjYiO3M6OToiACoAX3RhYmxlIjtzOjE2OiJidENvcmVBcmVhTGF5b3V0IjtzOjEwOiJhckxheW91dElEIjtzOjE6IjIiO30='),(7,'','2019-10-03 15:10:47','2019-10-03 15:10:47',NULL,'0',36,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjE6IjciO3M6OToiACoAX3RhYmxlIjtzOjEyOiJidFJzc0Rpc3BsYXkiO3M6NToidGl0bGUiO3M6OToiVHV0b3JpYWxzIjtzOjM6InVybCI7czo0ODoiaHR0cDovL2RvY3VtZW50YXRpb24uY29uY3JldGU1Lm9yZy9yc3MvdHV0b3JpYWxzIjtzOjEwOiJkYXRlRm9ybWF0IjtzOjA6IiI7czoxNDoiaXRlbXNUb0Rpc3BsYXkiO3M6MToiMSI7czoxMToic2hvd1N1bW1hcnkiO3M6MToiMSI7czoxNzoibGF1bmNoSW5OZXdXaW5kb3ciO3M6MToiMSI7fQ=='),(8,'','2019-10-03 15:10:47','2019-10-03 15:10:47',NULL,'0',10,1,NULL),(9,'','2019-10-03 15:10:47','2019-10-03 15:10:47',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjkiO3M6OToiACoAX3RhYmxlIjtzOjE2OiJidENvcmVBcmVhTGF5b3V0IjtzOjEwOiJhckxheW91dElEIjtzOjE6IjMiO30='),(10,'','2019-10-03 15:10:48','2019-10-03 15:10:48',NULL,'0',7,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjEwIjtzOjk6IgAqAF90YWJsZSI7czoyMzoiYnREZXNrdG9wTmV3c2Zsb3dMYXRlc3QiO3M6NDoic2xvdCI7czoxOiJBIjt9'),(11,'','2019-10-03 15:10:48','2019-10-03 15:10:48',NULL,'0',7,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjExIjtzOjk6IgAqAF90YWJsZSI7czoyMzoiYnREZXNrdG9wTmV3c2Zsb3dMYXRlc3QiO3M6NDoic2xvdCI7czoxOiJCIjt9'),(12,'','2019-10-03 15:10:49','2019-10-03 15:10:49',NULL,'0',7,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjEyIjtzOjk6IgAqAF90YWJsZSI7czoyMzoiYnREZXNrdG9wTmV3c2Zsb3dMYXRlc3QiO3M6NDoic2xvdCI7czoxOiJDIjt9'),(13,'','2019-10-03 15:10:49','2019-10-03 15:10:49',NULL,'0',36,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjEzIjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRSc3NEaXNwbGF5IjtzOjU6InRpdGxlIjtzOjIzOiJOZXdzIGZyb20gY29uY3JldGU1Lm9yZyI7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly93d3cuY29uY3JldGU1Lm9yZy9yc3MvYmxvZyI7czoxMDoiZGF0ZUZvcm1hdCI7czowOiIiO3M6MTQ6Iml0ZW1zVG9EaXNwbGF5IjtzOjE6IjMiO3M6MTE6InNob3dTdW1tYXJ5IjtzOjE6IjEiO3M6MTc6ImxhdW5jaEluTmV3V2luZG93IjtzOjE6IjEiO30='),(14,'','2019-10-03 15:10:52','2019-10-03 15:10:52',NULL,'0',12,1,NULL),(15,'','2019-10-03 15:11:02','2019-10-03 15:11:02',NULL,'0',12,1,NULL),(16,'','2019-10-03 15:11:10','2019-10-03 15:11:10',NULL,'0',2,1,NULL);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeKeys`
--

DROP TABLE IF EXISTS `CollectionAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_1E3E5B79B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeKeys`
--

LOCK TABLES `CollectionAttributeKeys` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeKeys` DISABLE KEYS */;
INSERT INTO `CollectionAttributeKeys` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13);
/*!40000 ALTER TABLE `CollectionAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL,
  `cvID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `IDX_BB9995FCB6561A7E` (`akID`),
  KEY `IDX_BB9995FCA2A82A5D` (`avID`),
  CONSTRAINT `FK_BB9995FCA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_BB9995FCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (2,1,6,1),(3,1,3,2),(4,1,3,3),(5,1,3,4),(6,1,3,5),(8,1,3,6),(9,1,3,7),(10,1,3,8),(11,1,7,9),(11,1,3,10),(12,1,3,11),(13,1,3,12),(14,1,3,13),(15,1,3,14),(16,1,3,15),(16,1,7,16),(17,1,3,17),(17,1,7,18),(19,1,3,19),(20,1,3,20),(22,1,3,21),(25,1,3,22),(26,1,3,23),(27,1,7,24),(27,1,12,25),(28,1,3,26),(29,1,3,27),(31,1,3,28),(32,1,3,29),(32,1,7,30),(34,1,7,31),(35,1,7,32),(36,1,7,33),(37,1,7,34),(38,1,7,35),(39,1,7,36),(41,1,7,37),(42,1,3,38),(43,1,3,39),(44,1,3,40),(46,1,6,41),(48,1,3,42),(50,1,7,43),(50,1,12,44),(50,1,3,45),(51,1,3,46),(52,1,3,47),(53,1,3,48),(54,1,3,49),(55,1,3,50),(55,1,7,51),(56,1,3,52),(57,1,3,53),(58,1,3,54),(60,1,3,55),(61,1,3,56),(62,1,3,57),(63,1,3,58),(64,1,3,59),(65,1,3,60),(66,1,3,61),(67,1,3,62),(67,1,7,63),(67,1,12,64),(69,1,7,65),(70,1,7,66),(71,1,7,67),(72,1,7,68),(73,1,7,69),(74,1,7,70),(76,1,3,71),(82,1,3,72),(83,1,3,73),(84,1,3,74),(85,1,3,75),(86,1,3,76),(88,1,3,77),(89,1,3,78),(90,1,3,79),(91,1,3,80),(92,1,3,81),(94,1,3,82),(95,1,3,83),(96,1,3,84),(97,1,3,85),(99,1,3,86),(100,1,3,87),(104,1,3,88),(105,1,3,89),(106,1,3,90),(107,1,3,91),(109,1,3,92),(110,1,3,93),(111,1,3,94),(112,1,3,95),(113,1,3,96),(115,1,3,97),(116,1,3,98),(117,1,3,99),(118,1,3,100),(119,1,3,101),(120,1,3,102),(121,1,3,103),(122,1,3,104),(124,1,3,105),(125,1,3,106),(126,1,3,107),(127,1,3,108),(129,1,12,109),(130,1,3,110),(131,1,3,111),(132,1,3,112),(133,1,3,113),(134,1,3,114),(135,1,3,115),(137,1,3,116),(138,1,4,117),(138,1,5,118),(138,1,7,119),(140,1,6,120),(143,1,6,121),(149,1,6,122),(150,1,6,123),(152,1,4,124),(152,1,5,125),(152,1,7,126);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `ak_meta_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_meta_keywords` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_desktop_priority` decimal(14,4) DEFAULT 0.0000,
  `ak_is_desktop` tinyint(1) DEFAULT 0,
  `ak_icon_dashboard` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_exclude_nav` tinyint(1) DEFAULT 0,
  `ak_exclude_page_list` tinyint(1) DEFAULT 0,
  `ak_header_extra_content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT 0,
  `ak_exclude_search_index` tinyint(1) DEFAULT 0,
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (2,NULL,NULL,NULL,0.0000,0,'fa fa-th-large',0,0,NULL,NULL,0,0,0),(3,NULL,NULL,'pages, add page, delete page, copy, move, alias',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(4,NULL,NULL,'pages, add page, delete page, copy, move, alias',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(5,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(6,NULL,NULL,'find page, search page, search, find, pages, sitemap',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(8,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(9,NULL,NULL,'file, file attributes, title, attribute, description, rename',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(10,NULL,NULL,'files, category, categories',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(11,NULL,NULL,'new file set',0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(12,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(13,NULL,NULL,'find, search, people, delete user, remove user, change password, password',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(14,NULL,NULL,'user, group, people, permissions, expire, badges',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(15,NULL,NULL,'user attributes, user data, gather data, registration data',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(16,NULL,NULL,'new user, create',0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(17,NULL,NULL,'new user group, new group, group, create',0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(19,NULL,NULL,'group set',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(20,NULL,NULL,'community, points, karma',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(22,NULL,NULL,'action, community actions',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(25,NULL,NULL,'forms, log, error, email, mysql, exception, survey',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(26,NULL,NULL,'forms, questions, response, data',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(27,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0),(28,NULL,NULL,'questions, quiz, response',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(29,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(31,NULL,NULL,'new theme, theme, active theme, change theme, template, css',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(32,NULL,NULL,'page types',0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(34,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(35,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(36,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(37,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(38,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(39,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(41,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(42,NULL,NULL,'page attributes, custom',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(43,NULL,NULL,'single, page, custom, application',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(44,NULL,NULL,'atom, rss, feed, syndication',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(46,NULL,NULL,NULL,0.0000,0,'icon-bullhorn',0,0,NULL,NULL,0,0,0),(48,NULL,NULL,'stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(50,NULL,NULL,'edit stacks, view stacks, all stacks',0.0000,0,NULL,1,0,NULL,NULL,0,1,0),(51,NULL,NULL,'block, refresh, custom',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(52,NULL,NULL,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(53,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(54,NULL,NULL,'update, upgrade',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(55,NULL,NULL,'concrete5.org, my account, marketplace',0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(56,NULL,NULL,'buy theme, new theme, marketplace, template',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(57,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(58,NULL,NULL,'dashboard, configuration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(60,NULL,NULL,'website name, title',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(61,NULL,NULL,'accessibility, easy mode',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(62,NULL,NULL,'sharing, facebook, twitter',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(63,NULL,NULL,'logo, favicon, iphone, icon, bookmark',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(64,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(65,NULL,NULL,'translate, translation, internationalization, multilingual',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(66,NULL,NULL,'timezone, profile, locale',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(67,NULL,NULL,'site attributes',0.0000,0,NULL,1,0,NULL,NULL,0,1,0),(69,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(70,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(71,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(72,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(73,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(74,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0),(76,NULL,NULL,'multilingual, localization, internationalization, i18n',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(82,NULL,NULL,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(83,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(84,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(85,NULL,NULL,'pretty, slug',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(86,NULL,NULL,'configure search, site search, search option',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(88,NULL,NULL,'file options, file manager, upload, modify',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(89,NULL,NULL,'security, files, media, extension, manager, upload',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(90,NULL,NULL,'images, picture, responsive, retina',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(91,NULL,NULL,'uploading, upload, images, image, resizing, manager',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(92,NULL,NULL,'security, alternate storage, hide files',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(94,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(95,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(96,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(97,NULL,NULL,'queries, database, mysql',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(99,NULL,NULL,'editors, hide site, offline, private, public, access',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(100,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(104,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(105,NULL,NULL,'security, registration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(106,NULL,NULL,'antispam, block spam, security',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(107,NULL,NULL,'lock site, under construction, hide, hidden',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(109,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(110,NULL,NULL,'member profile, member page, community, forums, social, avatar',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(111,NULL,NULL,'signup, new user, community, public registration, public, registration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(112,NULL,NULL,'auth, authentication, types, oauth, facebook, login, registration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(113,NULL,NULL,'global, password, reset, change password, force, sign out',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(115,NULL,NULL,'smtp, mail settings',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(116,NULL,NULL,'email server, mail settings, mail configuration, external, internal',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(117,NULL,NULL,'test smtp, test mail',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(118,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(119,NULL,NULL,'conversations',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(120,NULL,NULL,'conversations',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(121,NULL,NULL,'conversations ratings, ratings, community, community points',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(122,NULL,NULL,'conversations bad words, banned words, banned, bad words, bad, words, list',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(124,NULL,NULL,'attribute configuration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(125,NULL,NULL,'attributes, sets',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(126,NULL,NULL,'attributes, types',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(127,NULL,NULL,'topics, tags, taxonomy',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(129,NULL,NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,1,0),(130,NULL,NULL,'overrides, system info, debug, support, help',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(131,NULL,NULL,'errors, exceptions, develop, support, help',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(132,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(133,NULL,NULL,'network, proxy server',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(134,NULL,NULL,'database, entities, doctrine, orm',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(135,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(137,NULL,NULL,'upgrade, new version, update',0.0000,0,NULL,0,0,NULL,NULL,0,0,0),(138,NULL,NULL,NULL,2.0000,1,NULL,0,0,NULL,NULL,0,0,0),(140,NULL,NULL,NULL,0.0000,0,'fa fa-trash-o',0,0,NULL,NULL,0,0,0),(143,NULL,NULL,NULL,0.0000,0,'fa fa-briefcase',0,0,NULL,NULL,0,0,0),(149,NULL,NULL,NULL,0.0000,0,'fa fa-edit',0,0,NULL,NULL,0,0,0),(150,NULL,NULL,NULL,0.0000,0,'fa fa-th',0,0,NULL,NULL,0,0,0),(152,NULL,NULL,NULL,1.0000,1,NULL,1,0,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlockStyles` VALUES (138,1,13,'Main',1);
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbRelationID` int(10) unsigned DEFAULT 0,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  `isOriginal` tinyint(1) NOT NULL DEFAULT 0,
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT 0,
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT 0,
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT 0,
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT 0,
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`),
  KEY `cbRelationID` (`cbRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (138,1,1,'Main',1,0,1,0,0,0,0,0),(138,1,2,'Main',2,1,1,0,0,0,0,0),(138,1,3,'Main : 1',3,0,1,0,0,0,0,0),(138,1,4,'Main : 2',4,0,1,0,0,0,0,0),(138,1,5,'Main : 3',5,0,1,0,0,0,0,0),(138,1,6,'Main',6,2,1,0,0,0,0,0),(138,1,7,'Main : 4',7,0,1,0,0,0,0,0),(138,1,8,'Main : 5',8,0,1,0,0,0,0,0),(138,1,9,'Main',9,3,1,0,0,0,0,0),(138,1,10,'Main : 6',10,0,1,0,0,0,0,0),(138,1,11,'Main : 7',11,0,1,0,0,0,0,0),(138,1,12,'Main : 8',12,0,1,0,0,0,0,0),(138,1,13,'Main',13,4,1,0,0,0,0,0),(139,1,14,'Main',14,0,1,0,0,0,0,0),(152,1,15,'Main',15,0,1,0,0,0,0,0),(153,1,16,'Main',16,0,1,0,0,0,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksCacheSettings`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksCacheSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT 0,
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT 0,
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT 0,
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksCacheSettings`
--

LOCK TABLES `CollectionVersionBlocksCacheSettings` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksCacheSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlocksCacheSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

LOCK TABLES `CollectionVersionBlocksOutputCache` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocksOutputCache` VALUES (138,1,1,'Main','\n    <div class=\"alert alert-info\">\n        The latest version of concrete5 is <strong>8.2.1</strong>. You are currently running concrete5 version <strong>8.1.0</strong>.        <a class=\"pull-right btn btn-info btn-xs\" href=\"http://localhost:8081/index.php/dashboard/system/backup/update\">Update</a>\n    </div>\n    ',1570256513),(138,1,4,'Main : 2','\n<div class=\"ccm-block-desktop-featured-addon\">\n	<div class=\"ccm-block-desktop-featured-addon-inner\">\n\n	<h6>Featured Add-On</h6/>\n\n	<img src=\"https://www.concrete5.org/files/9015/3752/9516/toess_lab_news_letter_icon.png\" width=\"80\" height=\"80\" />\n	<h3>toesslab.ch - Newsletter</h3>\n	<p>Send stylish newsletters to your registered users or any user group of your site.\r\n\r\nDo you have the Public Registration Feature enabled on your website? Then this plugin is a must!</p>\n	<a href=\"https://www.concrete5.org/marketplace/addons/toesslab-newsletter\" class=\"btn btn-default btn-lg\">Learn More</a>\n\n	</div>\n</div>\n\n',1570177315),(138,1,7,'Main : 4','\n<div class=\"ccm-block-rss-displayer-wrapper\">\n    <div class=\"ccm-block-rss-displayer\">\n\n\n    <div class=\"ccm-block-rss-displayer-header\">\n    	<h5>Tutorials</h5>\n    </div>\n\n		\n		<div class=\"ccm-block-rss-displayer-item\">\n			<div class=\"ccm-block-rss-displayer-item-title\">\n				<a href=\"https://documentation.concrete5.org/tutorials/how-users-can-reset-their-own-password\" target=\"_blank\" >\n					How users can reset their own password				</a>\n			</div>\n			<div class=\"ccm-block-rss-displayer-item-date\">Jun 25, 2019</div>\n			<div class=\"ccm-block-rss-displayer-item-summary\">\n				If you need help resetting your password, this tutorial explains how to reset passwords by sending a link to reset it.			</div>\n		</div>\n	\n    </div>\n\n</div>',1570173718),(138,1,8,'Main : 5','\n	<div class=\"ccm-block-desktop-featured-theme\">\n		<div class=\"ccm-block-desktop-featured-theme-inner\">\n\n			<img src=\"https://www.concrete5.org/files/2814/8094/4373/Eternity-600x560-new.jpg\" style=\"height: 250px\" />\n\n			<div class=\"ccm-block-desktop-featured-theme-description\">\n\n				<h6>Featured Theme</h6/>\n\n				<h3>Eternity 5.7</h3>\n				<p>An elegant, clean and responsive theme suitable for any type of business.</p>\n				<div class=\"btn-group\">\n					<a href=\"https://www.concrete5.org/marketplace/themes/eternity-5.7\" class=\"btn btn-info\">$45.00</a>\n					<a href=\"https://www.concrete5.org/marketplace/themes/eternity-5.7\" class=\"btn btn-info\">Learn More</a>\n				</div>\n			</div>\n\n		</div>\n	</div>\n\n',1570177319),(138,1,10,'Main : 6','<div class=\"ccm-block-dashboard-newsflow-latest-wrapper\">\n    <div class=\"ccm-block-dashboard-newsflow-latest\">\n        <h3><span style=\"font-size: 18px;\">Love concrete5?</span></h3>\r\n<p>Capterra is offering a $10 gift card to users who write a qualifying review</p>\r\n<p><a href=\"https://review.capterra.com/SS-concrete5-161651-3235753008\" target=\"_blank\">Submit review</a></p>    </div>\n</div>\n\n',1570177321),(138,1,11,'Main : 7','<div class=\"ccm-block-dashboard-newsflow-latest-wrapper\">\n    <div class=\"ccm-block-dashboard-newsflow-latest\">\n        <h3>Multi-Site Management</h3>\r\n<p>Running a few related installs with workflow and deployment needs?</p>\r\n<p><a href=\"https://www.concrete5.org/about/blog/core-roadmap/multi-site-management-franchises-and-such\">Let us know!</a></p>    </div>\n</div>\n\n',1570177321),(138,1,12,'Main : 8','<div class=\"ccm-block-dashboard-newsflow-latest-wrapper\">\n    <div class=\"ccm-block-dashboard-newsflow-latest\">\n        \n<div id=\"deal-of-day-0\" class=\"deal-of-day\">\n	<h6>Marketplace Deal of the Day</h6>\n		<div class=\"deal\">\n			<a href=\"http://www.concrete5.org/marketplace/deal/\" target=\"_blank\"><h4>Page Transitions :: 10 Pack</h4></a>\n			<div class=\"deal-summary\">\n				\n						\n						<p class=\"deal-of-day-offer-description\">\n							10 licenses for Animated Page Transitions at only $3 a pop!						</p>\n						<!--<p class=\"deal-of-day-offer-addons\">\n												Addon:\n						\n						<span>Animated Page Transitions</span>						//-->\n						</p>\n						\n										<div class=\"deal-link\">\n					<a class=\"btn btn-default\" href=\"http://www.concrete5.org/marketplace/deal/\" target=\"_blank\">\n						$30.00 - Get the Deal \n					</a>\n				</div>\n			</div>\n		</div>\n		</div>    </div>\n</div>\n\n',1570177322),(138,1,13,'Main','\n<div class=\"ccm-block-rss-displayer-wrapper\">\n    <div class=\"ccm-block-rss-displayer\">\n\n\n    <div class=\"ccm-block-rss-displayer-header\">\n    	<h5>News from concrete5.org</h5>\n    </div>\n\n		\n		<div class=\"ccm-block-rss-displayer-item\">\n			<div class=\"ccm-block-rss-displayer-item-title\">\n				<a href=\"https://www.concrete5.org/about/blog/community-blog/concrete5-852-now-available\" target=\"_blank\" >\n					concrete5 8.5.2 is Now Available!				</a>\n			</div>\n			<div class=\"ccm-block-rss-displayer-item-date\">Oct 2, 2019</div>\n			<div class=\"ccm-block-rss-displayer-item-summary\">\n				Version 8.5.2 of concrete5 is now available.			</div>\n		</div>\n	\n		\n		<div class=\"ccm-block-rss-displayer-item\">\n			<div class=\"ccm-block-rss-displayer-item-title\">\n				<a href=\"https://www.concrete5.org/about/blog/community-blog/october-2019-town-hall-meeting\" target=\"_blank\" >\n					October 2019 town hall meeting				</a>\n			</div>\n			<div class=\"ccm-block-rss-displayer-item-date\">Sep 15, 2019</div>\n			<div class=\"ccm-block-rss-displayer-item-summary\">\n				Our next online town hall meeting will be on Tuesday (2019/10/01, 2019 October 01) at 9:30am Pacific Daylight Time.			</div>\n		</div>\n	\n		\n		<div class=\"ccm-block-rss-displayer-item\">\n			<div class=\"ccm-block-rss-displayer-item-title\">\n				<a href=\"https://www.concrete5.org/about/blog/community-blog/septemeber-2019-town-hall-meeting\" target=\"_blank\" >\n					September 2019 town hall meeting				</a>\n			</div>\n			<div class=\"ccm-block-rss-displayer-item-date\">Aug 13, 2019</div>\n			<div class=\"ccm-block-rss-displayer-item-summary\">\n				Our next online town hall meeting will be on Tuesday (2019/09/10, 2019 September 10) at 9:30am Pacific Daylight Time.			</div>\n		</div>\n	\n    </div>\n\n</div>',1570173725);
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionFeatureAssignments`
--

DROP TABLE IF EXISTS `CollectionVersionFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `faID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionFeatureAssignments`
--

LOCK TABLES `CollectionVersionFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `CollectionVersionFeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `cRelationID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionThemeCustomStyles`
--

DROP TABLE IF EXISTS `CollectionVersionThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT 0,
  `scvlID` int(10) unsigned DEFAULT 0,
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionThemeCustomStyles`
--

LOCK TABLES `CollectionVersionThemeCustomStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionThemeCustomStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionThemeCustomStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `cvName` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT 0,
  `cvIsNew` tinyint(1) NOT NULL DEFAULT 0,
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT 0,
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvActivateDatetime` datetime DEFAULT NULL,
  `cvPublishDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','','','2019-10-03 15:06:56','2019-10-03 15:06:56','Initial Version',1,0,1,NULL,3,4,NULL,NULL),(2,1,'Dashboard','dashboard','','2019-10-03 15:08:22','2019-10-03 15:08:22','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(3,1,'Sitemap','sitemap','Whole world at a glance.','2019-10-03 15:08:23','2019-10-03 15:08:23','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(4,1,'Full Sitemap','full','','2019-10-03 15:08:23','2019-10-03 15:08:23','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(5,1,'Flat View','explore','','2019-10-03 15:08:24','2019-10-03 15:08:24','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(6,1,'Page Search','search','','2019-10-03 15:08:25','2019-10-03 15:08:25','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(7,1,'Files','files','All documents and images.','2019-10-03 15:08:25','2019-10-03 15:08:25','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(8,1,'File Manager','search','','2019-10-03 15:08:26','2019-10-03 15:08:26','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(9,1,'Attributes','attributes','','2019-10-03 15:08:26','2019-10-03 15:08:26','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(10,1,'File Sets','sets','','2019-10-03 15:08:27','2019-10-03 15:08:27','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(11,1,'Add File Set','add_set','','2019-10-03 15:08:27','2019-10-03 15:08:27','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(12,1,'Members','users','Add and manage the user accounts and groups on your website.','2019-10-03 15:08:28','2019-10-03 15:08:28','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(13,1,'Search Users','search','','2019-10-03 15:08:28','2019-10-03 15:08:28','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(14,1,'User Groups','groups','','2019-10-03 15:08:29','2019-10-03 15:08:29','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(15,1,'Attributes','attributes','','2019-10-03 15:08:29','2019-10-03 15:08:29','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(16,1,'Add User','add','','2019-10-03 15:08:30','2019-10-03 15:08:30','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(17,1,'Add Group','add_group','','2019-10-03 15:08:31','2019-10-03 15:08:31','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(18,1,'Move Multiple Groups','bulkupdate','','2019-10-03 15:08:31','2019-10-03 15:08:31','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(19,1,'Group Sets','group_sets','','2019-10-03 15:08:32','2019-10-03 15:08:32','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(20,1,'Community Points','points',NULL,'2019-10-03 15:08:33','2019-10-03 15:08:33','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(21,1,'Assign Points','assign',NULL,'2019-10-03 15:08:33','2019-10-03 15:08:33','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(22,1,'Actions','actions',NULL,'2019-10-03 15:08:34','2019-10-03 15:08:34','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(23,1,'Express','express','Express Data Objects','2019-10-03 15:08:34','2019-10-03 15:08:34','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(24,1,'View Entries','entries','','2019-10-03 15:08:35','2019-10-03 15:08:35','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(25,1,'Reports','reports','Get data from forms and logs.','2019-10-03 15:08:35','2019-10-03 15:08:35','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(26,1,'Form Results','forms','Get submission data.','2019-10-03 15:08:36','2019-10-03 15:08:36','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(27,1,'Form Results','legacy','Get submission data.','2019-10-03 15:08:37','2019-10-03 15:08:37','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(28,1,'Surveys','surveys','','2019-10-03 15:08:37','2019-10-03 15:08:37','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(29,1,'Logs','logs','','2019-10-03 15:08:38','2019-10-03 15:08:38','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(30,1,'Pages & Themes','pages','Reskin your site.','2019-10-03 15:08:39','2019-10-03 15:08:39','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(31,1,'Themes','themes','Reskin your site.','2019-10-03 15:08:39','2019-10-03 15:08:39','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(32,1,'Inspect','inspect','','2019-10-03 15:08:40','2019-10-03 15:08:40','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(33,1,'Page Types','types','','2019-10-03 15:08:41','2019-10-03 15:08:41','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(34,1,'Organize Page Type Order','organize','','2019-10-03 15:08:41','2019-10-03 15:08:41','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(35,1,'Add Page Type','add','','2019-10-03 15:08:42','2019-10-03 15:08:42','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(36,1,'Compose Form','form','','2019-10-03 15:08:43','2019-10-03 15:08:43','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(37,1,'Defaults and Output','output','','2019-10-03 15:08:43','2019-10-03 15:08:43','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(38,1,'Page Type Attributes','attributes','','2019-10-03 15:08:44','2019-10-03 15:08:44','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(39,1,'Page Type Permissions','permissions','','2019-10-03 15:08:44','2019-10-03 15:08:44','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(40,1,'Page Templates','templates','Form factors for pages in your site.','2019-10-03 15:08:45','2019-10-03 15:08:45','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(41,1,'Add Page Template','add','Add page templates to your site.','2019-10-03 15:08:45','2019-10-03 15:08:45','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(42,1,'Attributes','attributes','','2019-10-03 15:08:46','2019-10-03 15:08:46','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(43,1,'Single Pages','single','','2019-10-03 15:08:46','2019-10-03 15:08:46','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(44,1,'RSS Feeds','feeds','','2019-10-03 15:08:47','2019-10-03 15:08:47','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(45,1,'Conversations','conversations','','2019-10-03 15:08:47','2019-10-03 15:08:47','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(46,1,'Messages','messages','','2019-10-03 15:08:48','2019-10-03 15:08:48','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(47,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2019-10-03 15:08:49','2019-10-03 15:08:49','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(48,1,'Stacks & Global Areas','stacks','Share content across your site.','2019-10-03 15:08:49','2019-10-03 15:08:49','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(49,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2019-10-03 15:08:50','2019-10-03 15:08:50','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(50,1,'Stack List','list','','2019-10-03 15:08:51','2019-10-03 15:08:51','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(51,1,'Block Types','types','Manage the installed block types in your site.','2019-10-03 15:08:52','2019-10-03 15:08:52','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(52,1,'Extend concrete5','extend','','2019-10-03 15:08:52','2019-10-03 15:08:52','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(53,1,'Add Functionality','install','Install add-ons & themes.','2019-10-03 15:08:53','2019-10-03 15:08:53','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(54,1,'Update Add-Ons','update','Update your installed packages.','2019-10-03 15:08:53','2019-10-03 15:08:53','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(55,1,'Connect to the Community','connect','Connect to the concrete5 community.','2019-10-03 15:08:54','2019-10-03 15:08:54','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(56,1,'Get More Themes','themes','Download themes from concrete5.org.','2019-10-03 15:08:54','2019-10-03 15:08:54','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(57,1,'Get More Add-Ons','addons','Download add-ons from concrete5.org.','2019-10-03 15:08:55','2019-10-03 15:08:55','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(58,1,'System & Settings','system','Secure and setup your site.','2019-10-03 15:08:56','2019-10-03 15:08:56','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(59,1,'Basics','basics','Basic information about your website.','2019-10-03 15:08:56','2019-10-03 15:08:56','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(60,1,'Name & Attributes','name','','2019-10-03 15:08:57','2019-10-03 15:08:57','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(61,1,'Accessibility','accessibility','','2019-10-03 15:08:58','2019-10-03 15:08:58','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(62,1,'Social Links','social','','2019-10-03 15:08:58','2019-10-03 15:08:58','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(63,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2019-10-03 15:08:59','2019-10-03 15:08:59','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(64,1,'Rich Text Editor','editor','','2019-10-03 15:09:00','2019-10-03 15:09:00','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(65,1,'Languages','multilingual','','2019-10-03 15:09:00','2019-10-03 15:09:00','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(66,1,'Time Zone','timezone','','2019-10-03 15:09:01','2019-10-03 15:09:01','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(67,1,'Custom Attributes','attributes','','2019-10-03 15:09:01','2019-10-03 15:09:01','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(68,1,'Express','express','Express','2019-10-03 15:09:01','2019-10-03 15:09:01','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(69,1,'Data Objects','entities','','2019-10-03 15:09:02','2019-10-03 15:09:02','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(70,1,'Attributes','attributes','','2019-10-03 15:09:02','2019-10-03 15:09:02','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(71,1,'Associations','associations','','2019-10-03 15:09:03','2019-10-03 15:09:03','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(72,1,'Forms','forms','','2019-10-03 15:09:04','2019-10-03 15:09:04','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(73,1,'Customize Search','customize_search','','2019-10-03 15:09:04','2019-10-03 15:09:04','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(74,1,'Customize Search','order_entries','','2019-10-03 15:09:05','2019-10-03 15:09:05','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(75,1,'Custom Entry Locations','entries','','2019-10-03 15:09:06','2019-10-03 15:09:06','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(76,1,'Multilingual','multilingual','Run your site in multiple languages.','2019-10-03 15:09:06','2019-10-03 15:09:06','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(77,1,'Multilingual Setup','setup','','2019-10-03 15:09:07','2019-10-03 15:09:07','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(78,1,'Copy Languages','copy','','2019-10-03 15:09:07','2019-10-03 15:09:07','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(79,1,'Page Report','page_report','','2019-10-03 15:09:08','2019-10-03 15:09:08','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(80,1,'Translate Site Interface','translate_interface','','2019-10-03 15:09:09','2019-10-03 15:09:09','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(81,1,'SEO & Statistics','seo','Enable pretty URLs and tracking codes.','2019-10-03 15:09:10','2019-10-03 15:09:10','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(82,1,'URLs and Redirection','urls','','2019-10-03 15:09:10','2019-10-03 15:09:10','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(83,1,'Bulk SEO Updater','bulk','','2019-10-03 15:09:11','2019-10-03 15:09:11','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(84,1,'Tracking Codes','codes','','2019-10-03 15:09:12','2019-10-03 15:09:12','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(85,1,'Excluded URL Word List','excluded','','2019-10-03 15:09:12','2019-10-03 15:09:12','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(86,1,'Search Index','searchindex','','2019-10-03 15:09:13','2019-10-03 15:09:13','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(87,1,'Files','files','','2019-10-03 15:09:13','2019-10-03 15:09:13','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(88,1,'File Manager Permissions','permissions','','2019-10-03 15:09:14','2019-10-03 15:09:14','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(89,1,'Allowed File Types','filetypes','','2019-10-03 15:09:14','2019-10-03 15:09:14','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(90,1,'Thumbnails','thumbnails','','2019-10-03 15:09:15','2019-10-03 15:09:15','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(91,1,'Image Uploading','image_uploading','','2019-10-03 15:09:15','2019-10-03 15:09:15','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(92,1,'File Storage Locations','storage','','2019-10-03 15:09:16','2019-10-03 15:09:16','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(93,1,'Optimization','optimization','Keep your site running well.','2019-10-03 15:09:17','2019-10-03 15:09:17','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(94,1,'Cache & Speed Settings','cache','','2019-10-03 15:09:17','2019-10-03 15:09:17','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(95,1,'Clear Cache','clearcache','','2019-10-03 15:09:18','2019-10-03 15:09:18','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(96,1,'Automated Jobs','jobs','','2019-10-03 15:09:18','2019-10-03 15:09:18','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(97,1,'Database Query Log','query_log','','2019-10-03 15:09:19','2019-10-03 15:09:19','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(98,1,'Permissions & Access','permissions','Control who sees and edits your site.','2019-10-03 15:09:19','2019-10-03 15:09:19','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(99,1,'Site Access','site','','2019-10-03 15:09:20','2019-10-03 15:09:20','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(100,1,'Task Permissions','tasks','','2019-10-03 15:09:20','2019-10-03 15:09:20','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(101,1,'User Permissions','users','','2019-10-03 15:09:21','2019-10-03 15:09:21','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(102,1,'Advanced Permissions','advanced','','2019-10-03 15:09:21','2019-10-03 15:09:21','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(103,1,'Workflows','workflows','','2019-10-03 15:09:22','2019-10-03 15:09:22','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(104,1,'IP Blacklist','blacklist','','2019-10-03 15:09:23','2019-10-03 15:09:23','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(105,1,'Captcha Setup','captcha','','2019-10-03 15:09:23','2019-10-03 15:09:23','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(106,1,'Spam Control','antispam','','2019-10-03 15:09:24','2019-10-03 15:09:24','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(107,1,'Maintenance Mode','maintenance','','2019-10-03 15:09:24','2019-10-03 15:09:24','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(108,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2019-10-03 15:09:25','2019-10-03 15:09:25','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(109,1,'Login Destination','postlogin','','2019-10-03 15:09:26','2019-10-03 15:09:26','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(110,1,'Public Profiles','profiles','','2019-10-03 15:09:27','2019-10-03 15:09:27','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(111,1,'Public Registration','open','','2019-10-03 15:09:27','2019-10-03 15:09:27','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(112,1,'Authentication Types','authentication','','2019-10-03 15:09:28','2019-10-03 15:09:28','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(113,1,'Global Password Reset','global_password_reset','Signs out all users, resets all passwords and forces users to choose a new one','2019-10-03 15:09:28','2019-10-03 15:09:28','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(114,1,'Notification Settings','notification','','2019-10-03 15:09:29','2019-10-03 15:09:29','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(115,1,'Email','mail','Control how your site send and processes mail.','2019-10-03 15:09:29','2019-10-03 15:09:29','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(116,1,'SMTP Method','method','','2019-10-03 15:09:30','2019-10-03 15:09:30','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(117,1,'Test Mail Settings','test','','2019-10-03 15:09:30','2019-10-03 15:09:30','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(118,1,'Email Importers','importers','','2019-10-03 15:09:31','2019-10-03 15:09:31','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(119,1,'Conversations','conversations','Manage your conversations settings','2019-10-03 15:09:31','2019-10-03 15:09:31','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(120,1,'Settings','settings','','2019-10-03 15:09:32','2019-10-03 15:09:32','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(121,1,'Community Points','points','','2019-10-03 15:09:33','2019-10-03 15:09:33','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(122,1,'Banned Words','bannedwords','','2019-10-03 15:09:33','2019-10-03 15:09:33','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(123,1,'Conversation Permissions','permissions','','2019-10-03 15:09:34','2019-10-03 15:09:34','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(124,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2019-10-03 15:09:35','2019-10-03 15:09:35','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(125,1,'Sets','sets','Group attributes into sets for easier organization','2019-10-03 15:09:35','2019-10-03 15:09:35','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(126,1,'Types','types','Choose which attribute types are available for different items.','2019-10-03 15:09:36','2019-10-03 15:09:36','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(127,1,'Topics','topics','','2019-10-03 15:09:36','2019-10-03 15:09:36','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(128,1,'Add Topic Tree','add','','2019-10-03 15:09:37','2019-10-03 15:09:37','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(129,1,'Environment','environment','Advanced settings for web developers.','2019-10-03 15:09:37','2019-10-03 15:09:37','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(130,1,'Environment Information','info','','2019-10-03 15:09:38','2019-10-03 15:09:38','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(131,1,'Debug Settings','debug','','2019-10-03 15:09:39','2019-10-03 15:09:39','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(132,1,'Logging Settings','logging','','2019-10-03 15:09:39','2019-10-03 15:09:39','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(133,1,'Proxy Server','proxy','','2019-10-03 15:09:40','2019-10-03 15:09:40','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(134,1,'Database Entities','entities','','2019-10-03 15:09:40','2019-10-03 15:09:40','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(135,1,'Backup & Restore','backup','Backup or restore your website.','2019-10-03 15:09:41','2019-10-03 15:09:41','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(136,1,'Backup Database','backup','','2019-10-03 15:09:41','2019-10-03 15:09:41','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(137,1,'Update concrete5','update','','2019-10-03 15:09:42','2019-10-03 15:09:42','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(138,1,'Welcome','welcome','','2019-10-03 15:09:42','2019-10-03 15:09:42','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(139,1,'Waiting for Me','me','','2019-10-03 15:09:48','2019-10-03 15:09:48','Initial Version',1,0,1,NULL,3,2,NULL,NULL),(140,1,'Trash','!trash','','2019-10-03 15:10:52','2019-10-03 15:10:52','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(141,1,'Login','login','','2019-10-03 15:10:53','2019-10-03 15:10:53','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(142,1,'Register','register','','2019-10-03 15:10:53','2019-10-03 15:10:53','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(143,1,'My Account','account','','2019-10-03 15:10:54','2019-10-03 15:10:54','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(144,1,'Edit Profile','edit_profile','Edit your user profile and change password.','2019-10-03 15:10:55','2019-10-03 15:10:55','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(145,1,'Profile Picture','avatar','Specify a new image attached to posts or edits.','2019-10-03 15:10:55','2019-10-03 15:10:55','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(146,1,'Private Messages','messages','Inbox for site-specific messages.','2019-10-03 15:10:56','2019-10-03 15:10:56','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(147,1,'Page Forbidden','page_forbidden','','2019-10-03 15:10:56','2019-10-03 15:10:56','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(148,1,'Download File','download_file','','2019-10-03 15:10:57','2019-10-03 15:10:57','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(149,1,'Drafts','!drafts','','2019-10-03 15:10:58','2019-10-03 15:10:58','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(150,1,'Stacks','!stacks','','2019-10-03 15:10:59','2019-10-03 15:10:59','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(151,1,'Page Not Found','page_not_found','','2019-10-03 15:11:00','2019-10-03 15:11:00','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(152,1,'Welcome Back','desktop','','2019-10-03 15:11:00','2019-10-03 15:11:00','Initial Version',1,0,1,NULL,3,0,NULL,NULL),(153,1,'',NULL,NULL,'2019-10-03 15:11:10','2019-10-03 15:11:10','Initial Version',1,0,NULL,NULL,3,4,NULL,NULL),(154,1,'Header Site Title','header-site-title',NULL,'2019-10-04 06:14:00','2019-10-04 06:14:00','Initial Version',1,0,NULL,NULL,3,0,NULL,NULL),(155,1,'Header Navigation','header-navigation',NULL,'2019-10-04 06:14:03','2019-10-04 06:14:03','Initial Version',1,0,NULL,NULL,3,0,NULL,NULL),(156,1,'Footer Legal','footer-legal',NULL,'2019-10-04 06:14:05','2019-10-04 06:14:05','Initial Version',1,0,NULL,NULL,3,0,NULL,NULL),(157,1,'Footer Navigation','footer-navigation',NULL,'2019-10-04 06:14:06','2019-10-04 06:14:06','Initial Version',1,0,NULL,NULL,3,0,NULL,NULL),(158,1,'Footer Contact','footer-contact',NULL,'2019-10-04 06:14:08','2019-10-04 06:14:08','Initial Version',1,0,NULL,NULL,3,0,NULL,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2019-10-03 15:06:56','2019-10-03 15:11:09',NULL),(2,'2019-10-03 15:08:22','2019-10-03 15:08:22','dashboard'),(3,'2019-10-03 15:08:23','2019-10-03 15:08:23','sitemap'),(4,'2019-10-03 15:08:23','2019-10-03 15:08:24','full'),(5,'2019-10-03 15:08:24','2019-10-03 15:08:24','explore'),(6,'2019-10-03 15:08:25','2019-10-03 15:08:25','search'),(7,'2019-10-03 15:08:25','2019-10-03 15:08:26','files'),(8,'2019-10-03 15:08:26','2019-10-03 15:08:26','search'),(9,'2019-10-03 15:08:26','2019-10-03 15:08:27','attributes'),(10,'2019-10-03 15:08:27','2019-10-03 15:08:27','sets'),(11,'2019-10-03 15:08:27','2019-10-03 15:08:28','add_set'),(12,'2019-10-03 15:08:28','2019-10-03 15:08:28','users'),(13,'2019-10-03 15:08:28','2019-10-03 15:08:29','search'),(14,'2019-10-03 15:08:29','2019-10-03 15:08:29','groups'),(15,'2019-10-03 15:08:29','2019-10-03 15:08:30','attributes'),(16,'2019-10-03 15:08:30','2019-10-03 15:08:31','add'),(17,'2019-10-03 15:08:31','2019-10-03 15:08:31','add_group'),(18,'2019-10-03 15:08:31','2019-10-03 15:08:32','bulkupdate'),(19,'2019-10-03 15:08:32','2019-10-03 15:08:32','group_sets'),(20,'2019-10-03 15:08:33','2019-10-03 15:08:33','points'),(21,'2019-10-03 15:08:33','2019-10-03 15:08:34','assign'),(22,'2019-10-03 15:08:34','2019-10-03 15:08:34','actions'),(23,'2019-10-03 15:08:34','2019-10-03 15:08:35','express'),(24,'2019-10-03 15:08:35','2019-10-03 15:08:35','entries'),(25,'2019-10-03 15:08:35','2019-10-03 15:08:36','reports'),(26,'2019-10-03 15:08:36','2019-10-03 15:08:37','forms'),(27,'2019-10-03 15:08:37','2019-10-03 15:08:37','legacy'),(28,'2019-10-03 15:08:37','2019-10-03 15:08:38','surveys'),(29,'2019-10-03 15:08:38','2019-10-03 15:08:39','logs'),(30,'2019-10-03 15:08:39','2019-10-03 15:08:39','pages'),(31,'2019-10-03 15:08:39','2019-10-03 15:08:40','themes'),(32,'2019-10-03 15:08:40','2019-10-03 15:08:41','inspect'),(33,'2019-10-03 15:08:41','2019-10-03 15:08:41','types'),(34,'2019-10-03 15:08:41','2019-10-03 15:08:42','organize'),(35,'2019-10-03 15:08:42','2019-10-03 15:08:43','add'),(36,'2019-10-03 15:08:43','2019-10-03 15:08:43','form'),(37,'2019-10-03 15:08:43','2019-10-03 15:08:44','output'),(38,'2019-10-03 15:08:44','2019-10-03 15:08:44','attributes'),(39,'2019-10-03 15:08:44','2019-10-03 15:08:45','permissions'),(40,'2019-10-03 15:08:45','2019-10-03 15:08:45','templates'),(41,'2019-10-03 15:08:45','2019-10-03 15:08:46','add'),(42,'2019-10-03 15:08:46','2019-10-03 15:08:46','attributes'),(43,'2019-10-03 15:08:46','2019-10-03 15:08:47','single'),(44,'2019-10-03 15:08:47','2019-10-03 15:08:47','feeds'),(45,'2019-10-03 15:08:47','2019-10-03 15:08:48','conversations'),(46,'2019-10-03 15:08:48','2019-10-03 15:08:49','messages'),(47,'2019-10-03 15:08:49','2019-10-03 15:08:49','blocks'),(48,'2019-10-03 15:08:49','2019-10-03 15:08:50','stacks'),(49,'2019-10-03 15:08:50','2019-10-03 15:08:51','permissions'),(50,'2019-10-03 15:08:51','2019-10-03 15:08:51','list'),(51,'2019-10-03 15:08:52','2019-10-03 15:08:52','types'),(52,'2019-10-03 15:08:52','2019-10-03 15:08:53','extend'),(53,'2019-10-03 15:08:53','2019-10-03 15:08:53','install'),(54,'2019-10-03 15:08:53','2019-10-03 15:08:54','update'),(55,'2019-10-03 15:08:54','2019-10-03 15:08:54','connect'),(56,'2019-10-03 15:08:54','2019-10-03 15:08:55','themes'),(57,'2019-10-03 15:08:55','2019-10-03 15:08:56','addons'),(58,'2019-10-03 15:08:56','2019-10-03 15:08:56','system'),(59,'2019-10-03 15:08:56','2019-10-03 15:08:57','basics'),(60,'2019-10-03 15:08:57','2019-10-03 15:08:58','name'),(61,'2019-10-03 15:08:58','2019-10-03 15:08:58','accessibility'),(62,'2019-10-03 15:08:58','2019-10-03 15:08:59','social'),(63,'2019-10-03 15:08:59','2019-10-03 15:08:59','icons'),(64,'2019-10-03 15:09:00','2019-10-03 15:09:00','editor'),(65,'2019-10-03 15:09:00','2019-10-03 15:09:00','multilingual'),(66,'2019-10-03 15:09:01','2019-10-03 15:09:01','timezone'),(67,'2019-10-03 15:09:01','2019-10-03 15:09:01','attributes'),(68,'2019-10-03 15:09:01','2019-10-03 15:09:02','express'),(69,'2019-10-03 15:09:02','2019-10-03 15:09:02','entities'),(70,'2019-10-03 15:09:02','2019-10-03 15:09:03','attributes'),(71,'2019-10-03 15:09:03','2019-10-03 15:09:03','associations'),(72,'2019-10-03 15:09:04','2019-10-03 15:09:04','forms'),(73,'2019-10-03 15:09:04','2019-10-03 15:09:05','customize_search'),(74,'2019-10-03 15:09:05','2019-10-03 15:09:06','order_entries'),(75,'2019-10-03 15:09:06','2019-10-03 15:09:06','entries'),(76,'2019-10-03 15:09:06','2019-10-03 15:09:07','multilingual'),(77,'2019-10-03 15:09:07','2019-10-03 15:09:07','setup'),(78,'2019-10-03 15:09:07','2019-10-03 15:09:08','copy'),(79,'2019-10-03 15:09:08','2019-10-03 15:09:09','page_report'),(80,'2019-10-03 15:09:09','2019-10-03 15:09:10','translate_interface'),(81,'2019-10-03 15:09:10','2019-10-03 15:09:10','seo'),(82,'2019-10-03 15:09:10','2019-10-03 15:09:11','urls'),(83,'2019-10-03 15:09:11','2019-10-03 15:09:12','bulk'),(84,'2019-10-03 15:09:12','2019-10-03 15:09:12','codes'),(85,'2019-10-03 15:09:12','2019-10-03 15:09:13','excluded'),(86,'2019-10-03 15:09:13','2019-10-03 15:09:13','searchindex'),(87,'2019-10-03 15:09:13','2019-10-03 15:09:14','files'),(88,'2019-10-03 15:09:14','2019-10-03 15:09:14','permissions'),(89,'2019-10-03 15:09:14','2019-10-03 15:09:15','filetypes'),(90,'2019-10-03 15:09:15','2019-10-03 15:09:15','thumbnails'),(91,'2019-10-03 15:09:15','2019-10-03 15:09:16','image_uploading'),(92,'2019-10-03 15:09:16','2019-10-03 15:09:16','storage'),(93,'2019-10-03 15:09:17','2019-10-03 15:09:17','optimization'),(94,'2019-10-03 15:09:17','2019-10-03 15:09:18','cache'),(95,'2019-10-03 15:09:18','2019-10-03 15:09:18','clearcache'),(96,'2019-10-03 15:09:18','2019-10-03 15:09:19','jobs'),(97,'2019-10-03 15:09:19','2019-10-03 15:09:19','query_log'),(98,'2019-10-03 15:09:19','2019-10-03 15:09:20','permissions'),(99,'2019-10-03 15:09:20','2019-10-03 15:09:20','site'),(100,'2019-10-03 15:09:20','2019-10-03 15:09:21','tasks'),(101,'2019-10-03 15:09:21','2019-10-03 15:09:21','users'),(102,'2019-10-03 15:09:21','2019-10-03 15:09:22','advanced'),(103,'2019-10-03 15:09:22','2019-10-03 15:09:22','workflows'),(104,'2019-10-03 15:09:23','2019-10-03 15:09:23','blacklist'),(105,'2019-10-03 15:09:23','2019-10-03 15:09:24','captcha'),(106,'2019-10-03 15:09:24','2019-10-03 15:09:24','antispam'),(107,'2019-10-03 15:09:24','2019-10-03 15:09:25','maintenance'),(108,'2019-10-03 15:09:25','2019-10-03 15:09:26','registration'),(109,'2019-10-03 15:09:26','2019-10-03 15:09:27','postlogin'),(110,'2019-10-03 15:09:27','2019-10-03 15:09:27','profiles'),(111,'2019-10-03 15:09:27','2019-10-03 15:09:28','open'),(112,'2019-10-03 15:09:28','2019-10-03 15:09:28','authentication'),(113,'2019-10-03 15:09:28','2019-10-03 15:09:29','global_password_reset'),(114,'2019-10-03 15:09:29','2019-10-03 15:09:29','notification'),(115,'2019-10-03 15:09:29','2019-10-03 15:09:30','mail'),(116,'2019-10-03 15:09:30','2019-10-03 15:09:30','method'),(117,'2019-10-03 15:09:30','2019-10-03 15:09:31','test'),(118,'2019-10-03 15:09:31','2019-10-03 15:09:31','importers'),(119,'2019-10-03 15:09:31','2019-10-03 15:09:32','conversations'),(120,'2019-10-03 15:09:32','2019-10-03 15:09:33','settings'),(121,'2019-10-03 15:09:33','2019-10-03 15:09:33','points'),(122,'2019-10-03 15:09:33','2019-10-03 15:09:34','bannedwords'),(123,'2019-10-03 15:09:34','2019-10-03 15:09:34','permissions'),(124,'2019-10-03 15:09:35','2019-10-03 15:09:35','attributes'),(125,'2019-10-03 15:09:35','2019-10-03 15:09:36','sets'),(126,'2019-10-03 15:09:36','2019-10-03 15:09:36','types'),(127,'2019-10-03 15:09:36','2019-10-03 15:09:37','topics'),(128,'2019-10-03 15:09:37','2019-10-03 15:09:37','add'),(129,'2019-10-03 15:09:37','2019-10-03 15:09:38','environment'),(130,'2019-10-03 15:09:38','2019-10-03 15:09:38','info'),(131,'2019-10-03 15:09:39','2019-10-03 15:09:39','debug'),(132,'2019-10-03 15:09:39','2019-10-03 15:09:40','logging'),(133,'2019-10-03 15:09:40','2019-10-03 15:09:40','proxy'),(134,'2019-10-03 15:09:40','2019-10-03 15:09:41','entities'),(135,'2019-10-03 15:09:41','2019-10-03 15:09:41','backup'),(136,'2019-10-03 15:09:41','2019-10-03 15:09:42','backup'),(137,'2019-10-03 15:09:42','2019-10-03 15:09:42','update'),(138,'2019-10-03 15:09:42','2019-10-03 15:09:43','welcome'),(139,'2019-10-03 15:09:48','2019-10-03 15:09:49','me'),(140,'2019-10-03 15:10:52','2019-10-03 15:10:52','!trash'),(141,'2019-10-03 15:10:53','2019-10-03 15:10:53','login'),(142,'2019-10-03 15:10:53','2019-10-03 15:10:54','register'),(143,'2019-10-03 15:10:54','2019-10-03 15:10:54','account'),(144,'2019-10-03 15:10:55','2019-10-03 15:10:55','edit_profile'),(145,'2019-10-03 15:10:55','2019-10-03 15:10:56','avatar'),(146,'2019-10-03 15:10:56','2019-10-03 15:10:56','messages'),(147,'2019-10-03 15:10:56','2019-10-03 15:10:57','page_forbidden'),(148,'2019-10-03 15:10:57','2019-10-03 15:10:57','download_file'),(149,'2019-10-03 15:10:58','2019-10-03 15:10:59','!drafts'),(150,'2019-10-03 15:10:59','2019-10-03 15:11:00','!stacks'),(151,'2019-10-03 15:11:00','2019-10-03 15:11:00','page_not_found'),(152,'2019-10-03 15:11:00','2019-10-03 15:11:01','desktop'),(153,'2019-10-03 15:11:10','2019-10-03 15:11:10',NULL),(154,'2019-10-04 06:14:00','2019-10-04 06:14:00','header-site-title'),(155,'2019-10-04 06:14:03','2019-10-04 06:14:03','header-navigation'),(156,'2019-10-04 06:14:05','2019-10-04 06:14:05','footer-legal'),(157,'2019-10-04 06:14:06','2019-10-04 06:14:06','footer-navigation'),(158,'2019-10-04 06:14:08','2019-10-04 06:14:08','footer-contact');
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('','concrete','security.token.encryption','d4b662882ef781a6c8d4d422e0cfc585a03fce3fe3b9ab00a2abbe3ac500e38f'),('','concrete','security.token.jobs','35f5b5652975640c2919bbe7cac5ccb2402a802ae5d9b37db31b80368c55ac99'),('','concrete','security.token.validation','22f056a0880b37a2e98b31453c325e5aea77ab76695f39d6fd261e1a53b08b2b');
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConfigStore`
--

DROP TABLE IF EXISTS `ConfigStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `cfValue` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConfigStore`
--

LOCK TABLES `ConfigStore` WRITE;
/*!40000 ALTER TABLE `ConfigStore` DISABLE KEYS */;
INSERT INTO `ConfigStore` VALUES ('NEWSFLOW_LAST_VIEWED','2019-10-03 15:11:15','0',1,0);
/*!40000 ALTER TABLE `ConfigStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationDiscussions`
--

DROP TABLE IF EXISTS `ConversationDiscussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationDiscussions`
--

LOCK TABLES `ConversationDiscussions` WRITE;
/*!40000 ALTER TABLE `ConversationDiscussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationDiscussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationEditors`
--

DROP TABLE IF EXISTS `ConversationEditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationEditors`
--

LOCK TABLES `ConversationEditors` WRITE;
/*!40000 ALTER TABLE `ConversationEditors` DISABLE KEYS */;
INSERT INTO `ConversationEditors` VALUES (1,'plain_text','Plain Text',1,0),(2,'markdown','Markdown',0,0),(3,'redactor','Redactor',0,0);
/*!40000 ALTER TABLE `ConversationEditors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFeatureDetailAssignments`
--

DROP TABLE IF EXISTS `ConversationFeatureDetailAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFeatureDetailAssignments`
--

LOCK TABLES `ConversationFeatureDetailAssignments` WRITE;
/*!40000 ALTER TABLE `ConversationFeatureDetailAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationFeatureDetailAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFlaggedMessageTypes`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFlaggedMessageTypes`
--

LOCK TABLES `ConversationFlaggedMessageTypes` WRITE;
/*!40000 ALTER TABLE `ConversationFlaggedMessageTypes` DISABLE KEYS */;
INSERT INTO `ConversationFlaggedMessageTypes` VALUES (1,'spam');
/*!40000 ALTER TABLE `ConversationFlaggedMessageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFlaggedMessages`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFlaggedMessages`
--

LOCK TABLES `ConversationFlaggedMessages` WRITE;
/*!40000 ALTER TABLE `ConversationFlaggedMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationFlaggedMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageAttachments`
--

DROP TABLE IF EXISTS `ConversationMessageAttachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageAttachments`
--

LOCK TABLES `ConversationMessageAttachments` WRITE;
/*!40000 ALTER TABLE `ConversationMessageAttachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageAttachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageNotifications`
--

DROP TABLE IF EXISTS `ConversationMessageNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageNotifications` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_559DE1CBED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageNotifications`
--

LOCK TABLES `ConversationMessageNotifications` WRITE;
/*!40000 ALTER TABLE `ConversationMessageNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageRatings`
--

DROP TABLE IF EXISTS `ConversationMessageRatings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvMessageRatingIP` tinyblob DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageRatings`
--

LOCK TABLES `ConversationMessageRatings` WRITE;
/*!40000 ALTER TABLE `ConversationMessageRatings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageRatings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessages`
--

DROP TABLE IF EXISTS `ConversationMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob DEFAULT NULL,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageBody` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT 0,
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT 0,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessages`
--

LOCK TABLES `ConversationMessages` WRITE;
/*!40000 ALTER TABLE `ConversationMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationPermissionAddMessageAccessList`
--

DROP TABLE IF EXISTS `ConversationPermissionAddMessageAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationPermissionAddMessageAccessList`
--

LOCK TABLES `ConversationPermissionAddMessageAccessList` WRITE;
/*!40000 ALTER TABLE `ConversationPermissionAddMessageAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationPermissionAddMessageAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationPermissionAssignments`
--

DROP TABLE IF EXISTS `ConversationPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationPermissionAssignments`
--

LOCK TABLES `ConversationPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `ConversationPermissionAssignments` DISABLE KEYS */;
INSERT INTO `ConversationPermissionAssignments` VALUES (0,67,92),(0,68,93),(0,69,97),(0,70,95),(0,71,94),(0,72,96),(0,73,98),(0,74,99);
/*!40000 ALTER TABLE `ConversationPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationRatingTypes`
--

DROP TABLE IF EXISTS `ConversationRatingTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationRatingTypes`
--

LOCK TABLES `ConversationRatingTypes` WRITE;
/*!40000 ALTER TABLE `ConversationRatingTypes` DISABLE KEYS */;
INSERT INTO `ConversationRatingTypes` VALUES (1,'up_vote','Up Vote',1,0),(2,'down_vote','Down Vote',0,0);
/*!40000 ALTER TABLE `ConversationRatingTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationSubscriptions`
--

DROP TABLE IF EXISTS `ConversationSubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationSubscriptions`
--

LOCK TABLES `ConversationSubscriptions` WRITE;
/*!40000 ALTER TABLE `ConversationSubscriptions` DISABLE KEYS */;
INSERT INTO `ConversationSubscriptions` VALUES (0,1,'S');
/*!40000 ALTER TABLE `ConversationSubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Conversations`
--

DROP TABLE IF EXISTS `Conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT 0,
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT 0,
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT 1,
  `cnvMessagesTotal` int(10) unsigned DEFAULT 0,
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT 0,
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `cnvMaxFilesGuest` int(11) DEFAULT 0,
  `cnvMaxFilesRegistered` int(11) DEFAULT 0,
  `cnvMaxFileSizeGuest` int(11) DEFAULT 0,
  `cnvMaxFileSizeRegistered` int(11) DEFAULT 0,
  `cnvFileExtensions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `cnvEnableSubscription` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Conversations`
--

LOCK TABLES `Conversations` WRITE;
/*!40000 ALTER TABLE `Conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `Conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressAttributeKeys`
--

DROP TABLE IF EXISTS `ExpressAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressAttributeKeys` (
  `entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_8C881F181257D5D` (`entity_id`),
  CONSTRAINT `FK_8C881F181257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`),
  CONSTRAINT `FK_8C881F1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressAttributeKeys`
--

LOCK TABLES `ExpressAttributeKeys` WRITE;
/*!40000 ALTER TABLE `ExpressAttributeKeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntities`
--

DROP TABLE IF EXISTS `ExpressEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntities` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `default_view_form_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `default_edit_form_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plural_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supports_custom_display_order` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `result_column_set` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:object)',
  `include_in_public_list` tinyint(1) NOT NULL,
  `entity_results_node_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BC772AA6918020D9` (`handle`),
  UNIQUE KEY `UNIQ_BC772AA6547D6B2D` (`default_view_form_id`),
  UNIQUE KEY `UNIQ_BC772AA6C7DEC56D` (`default_edit_form_id`),
  KEY `IDX_BC772AA6CE45CBB0` (`pkgID`),
  CONSTRAINT `FK_BC772AA6547D6B2D` FOREIGN KEY (`default_view_form_id`) REFERENCES `ExpressForms` (`id`),
  CONSTRAINT `FK_BC772AA6C7DEC56D` FOREIGN KEY (`default_edit_form_id`) REFERENCES `ExpressForms` (`id`),
  CONSTRAINT `FK_BC772AA6CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntities`
--

LOCK TABLES `ExpressEntities` WRITE;
/*!40000 ALTER TABLE `ExpressEntities` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntityAssociationSelectedEntries`
--

DROP TABLE IF EXISTS `ExpressEntityAssociationSelectedEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityAssociationSelectedEntries` (
  `id` int(11) NOT NULL,
  `exSelectedEntryID` int(11) NOT NULL,
  PRIMARY KEY (`id`,`exSelectedEntryID`),
  KEY `IDX_1F9C570CBF396750` (`id`),
  KEY `IDX_1F9C570CC7B1F65C` (`exSelectedEntryID`),
  CONSTRAINT `FK_1F9C570CBF396750` FOREIGN KEY (`id`) REFERENCES `ExpressEntityEntryAssociations` (`id`),
  CONSTRAINT `FK_1F9C570CC7B1F65C` FOREIGN KEY (`exSelectedEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntityAssociationSelectedEntries`
--

LOCK TABLES `ExpressEntityAssociationSelectedEntries` WRITE;
/*!40000 ALTER TABLE `ExpressEntityAssociationSelectedEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntityAssociationSelectedEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntityAssociations`
--

DROP TABLE IF EXISTS `ExpressEntityAssociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityAssociations` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `source_entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `target_entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `is_owned_by_association` tinyint(1) NOT NULL,
  `is_owning_association` tinyint(1) NOT NULL,
  `target_property_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inversed_by_property_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `association_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_98A0F796E9BBEE93` (`source_entity_id`),
  KEY `IDX_98A0F796B5910F71` (`target_entity_id`),
  CONSTRAINT `FK_98A0F796B5910F71` FOREIGN KEY (`target_entity_id`) REFERENCES `ExpressEntities` (`id`),
  CONSTRAINT `FK_98A0F796E9BBEE93` FOREIGN KEY (`source_entity_id`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntityAssociations`
--

LOCK TABLES `ExpressEntityAssociations` WRITE;
/*!40000 ALTER TABLE `ExpressEntityAssociations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntityAssociations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntityEntries`
--

DROP TABLE IF EXISTS `ExpressEntityEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityEntries` (
  `exEntryID` int(11) NOT NULL AUTO_INCREMENT,
  `exEntryDisplayOrder` int(11) NOT NULL,
  `exEntryDateCreated` datetime NOT NULL,
  `exEntryEntityID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  PRIMARY KEY (`exEntryID`),
  KEY `IDX_B8AE3531AFC87D03` (`exEntryEntityID`),
  CONSTRAINT `FK_B8AE3531AFC87D03` FOREIGN KEY (`exEntryEntityID`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntityEntries`
--

LOCK TABLES `ExpressEntityEntries` WRITE;
/*!40000 ALTER TABLE `ExpressEntityEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntityEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntityEntryAssociations`
--

DROP TABLE IF EXISTS `ExpressEntityEntryAssociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityEntryAssociations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exEntryID` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_25B3A0826DCB6296` (`exEntryID`),
  KEY `IDX_25B3A082EFB9C8A5` (`association_id`),
  CONSTRAINT `FK_25B3A0826DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  CONSTRAINT `FK_25B3A082EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntityEntryAssociations`
--

LOCK TABLES `ExpressEntityEntryAssociations` WRITE;
/*!40000 ALTER TABLE `ExpressEntityEntryAssociations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntityEntryAssociations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntityEntryAttributeValues`
--

DROP TABLE IF EXISTS `ExpressEntityEntryAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityEntryAttributeValues` (
  `exEntryID` int(11) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`exEntryID`,`akID`),
  KEY `IDX_6DB641546DCB6296` (`exEntryID`),
  KEY `IDX_6DB64154B6561A7E` (`akID`),
  KEY `IDX_6DB64154A2A82A5D` (`avID`),
  CONSTRAINT `FK_6DB641546DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  CONSTRAINT `FK_6DB64154A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_6DB64154B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntityEntryAttributeValues`
--

LOCK TABLES `ExpressEntityEntryAttributeValues` WRITE;
/*!40000 ALTER TABLE `ExpressEntityEntryAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntityEntryAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressFormFieldSetAssociationControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetAssociationControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetAssociationControls` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `association_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `association_entity_label_mask` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E6DF21BBEFB9C8A5` (`association_id`),
  CONSTRAINT `FK_E6DF21BBBF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E6DF21BBEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressFormFieldSetAssociationControls`
--

LOCK TABLES `ExpressFormFieldSetAssociationControls` WRITE;
/*!40000 ALTER TABLE `ExpressFormFieldSetAssociationControls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressFormFieldSetAssociationControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressFormFieldSetAttributeKeyControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetAttributeKeyControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetAttributeKeyControls` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8481F9D1B6561A7E` (`akID`),
  CONSTRAINT `FK_8481F9D1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_8481F9D1BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressFormFieldSetAttributeKeyControls`
--

LOCK TABLES `ExpressFormFieldSetAttributeKeyControls` WRITE;
/*!40000 ALTER TABLE `ExpressFormFieldSetAttributeKeyControls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressFormFieldSetAttributeKeyControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressFormFieldSetControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetControls` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `field_set_id` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `custom_label` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E42868A43ABF811A` (`field_set_id`),
  CONSTRAINT `FK_E42868A43ABF811A` FOREIGN KEY (`field_set_id`) REFERENCES `ExpressFormFieldSets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressFormFieldSetControls`
--

LOCK TABLES `ExpressFormFieldSetControls` WRITE;
/*!40000 ALTER TABLE `ExpressFormFieldSetControls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressFormFieldSetControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressFormFieldSetTextControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetTextControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetTextControls` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `headline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_DB5A209ABF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressFormFieldSetTextControls`
--

LOCK TABLES `ExpressFormFieldSetTextControls` WRITE;
/*!40000 ALTER TABLE `ExpressFormFieldSetTextControls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressFormFieldSetTextControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressFormFieldSets`
--

DROP TABLE IF EXISTS `ExpressFormFieldSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `position` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A33BBBEC5FF69B7D` (`form_id`),
  CONSTRAINT `FK_A33BBBEC5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `ExpressForms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressFormFieldSets`
--

LOCK TABLES `ExpressFormFieldSets` WRITE;
/*!40000 ALTER TABLE `ExpressFormFieldSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressFormFieldSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressForms`
--

DROP TABLE IF EXISTS `ExpressForms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressForms` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D09031A81257D5D` (`entity_id`),
  CONSTRAINT `FK_8D09031A81257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressForms`
--

LOCK TABLES `ExpressForms` WRITE;
/*!40000 ALTER TABLE `ExpressForms` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressForms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureAssignments`
--

DROP TABLE IF EXISTS `FeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureAssignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureAssignments`
--

LOCK TABLES `FeatureAssignments` WRITE;
/*!40000 ALTER TABLE `FeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureCategories`
--

DROP TABLE IF EXISTS `FeatureCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureCategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureCategories`
--

LOCK TABLES `FeatureCategories` WRITE;
/*!40000 ALTER TABLE `FeatureCategories` DISABLE KEYS */;
INSERT INTO `FeatureCategories` VALUES (1,'collection_version',0),(2,'gathering_item',0);
/*!40000 ALTER TABLE `FeatureCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT 1,
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Features`
--

LOCK TABLES `Features` WRITE;
/*!40000 ALTER TABLE `Features` DISABLE KEYS */;
INSERT INTO `Features` VALUES (1,'title',1,0,0),(2,'link',1,0,0),(3,'author',1,0,0),(4,'date_time',1,0,0),(5,'image',500,1,0),(6,'conversation',10,1,0),(7,'description',1,0,0),(8,'featured',1000,0,0);
/*!40000 ALTER TABLE `Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeKeys`
--

DROP TABLE IF EXISTS `FileAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_BC5C7BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeKeys`
--

LOCK TABLES `FileAttributeKeys` WRITE;
/*!40000 ALTER TABLE `FileAttributeKeys` DISABLE KEYS */;
INSERT INTO `FileAttributeKeys` VALUES (16),(17),(19);
/*!40000 ALTER TABLE `FileAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `IDX_BBECEAA4B6561A7E` (`akID`),
  KEY `IDX_BBECEAA4A2A82A5D` (`avID`),
  CONSTRAINT `FK_BBECEAA4A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_BBECEAA4B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileImageThumbnailPaths`
--

DROP TABLE IF EXISTS `FileImageThumbnailPaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileImageThumbnailPaths` (
  `fileID` int(10) unsigned NOT NULL,
  `fileVersionID` int(10) unsigned NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageLocationID` int(10) unsigned NOT NULL,
  `path` longtext COLLATE utf8_unicode_ci NOT NULL,
  `isBuilt` tinyint(1) NOT NULL,
  UNIQUE KEY `thumbnailPathID` (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileImageThumbnailPaths`
--

LOCK TABLES `FileImageThumbnailPaths` WRITE;
/*!40000 ALTER TABLE `FileImageThumbnailPaths` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileImageThumbnailPaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileImageThumbnailTypes`
--

DROP TABLE IF EXISTS `FileImageThumbnailTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftTypeWidth` int(11) NOT NULL,
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL,
  `ftTypeID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileImageThumbnailTypes`
--

LOCK TABLES `FileImageThumbnailTypes` WRITE;
/*!40000 ALTER TABLE `FileImageThumbnailTypes` DISABLE KEYS */;
INSERT INTO `FileImageThumbnailTypes` VALUES ('file_manager_listing','File Manager Thumbnails',60,60,1,1),('file_manager_detail','File Manager Detail Thumbnails',400,NULL,1,2);
/*!40000 ALTER TABLE `FileImageThumbnailTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionAssignments`
--

LOCK TABLES `FilePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FilePermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FilePermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypeAccessList`
--

LOCK TABLES `FilePermissionFileTypeAccessList` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FilePermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypeAccessListCustom`
--

LOCK TABLES `FilePermissionFileTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT 0,
  `gID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT 0,
  `ak_width` decimal(14,4) DEFAULT 0.0000,
  `ak_height` decimal(14,4) DEFAULT 0.0000,
  `ak_duration` decimal(14,4) DEFAULT 0.0000,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT 0,
  `fsSearchRequest` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fsResultColumns` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocationTypes`
--

DROP TABLE IF EXISTS `FileStorageLocationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeHandle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `pkgID` int(11) NOT NULL,
  PRIMARY KEY (`fslTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocationTypes`
--

LOCK TABLES `FileStorageLocationTypes` WRITE;
/*!40000 ALTER TABLE `FileStorageLocationTypes` DISABLE KEYS */;
INSERT INTO `FileStorageLocationTypes` VALUES ('default','Default',1,0),('local','Local',2,0);
/*!40000 ALTER TABLE `FileStorageLocationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslIsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
INSERT INTO `FileStorageLocations` VALUES ('Default','O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}',1,1);
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileUsageRecord`
--

DROP TABLE IF EXISTS `FileUsageRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileUsageRecord` (
  `file_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL,
  PRIMARY KEY (`file_id`,`block_id`,`collection_id`,`collection_version_id`),
  KEY `block` (`block_id`),
  KEY `collection_version` (`collection_id`,`collection_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileUsageRecord`
--

LOCK TABLES `FileUsageRecord` WRITE;
/*!40000 ALTER TABLE `FileUsageRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileUsageRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT 0,
  `fvID` int(10) unsigned NOT NULL DEFAULT 0,
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT 0,
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fvID` int(11) NOT NULL,
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDateAdded` datetime NOT NULL,
  `fvActivateDateTime` datetime NOT NULL,
  `fvIsApproved` tinyint(1) NOT NULL,
  `fvAuthorUID` int(11) NOT NULL,
  `fvSize` bigint(20) NOT NULL,
  `fvApproverUID` int(11) NOT NULL,
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvExtension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(11) NOT NULL,
  `fvTags` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL,
  `fvHasDetailThumbnail` tinyint(1) NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fID`,`fvID`),
  KEY `IDX_D7B5A13AE3111F45` (`fID`),
  KEY `fvFilename` (`fvFilename`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  CONSTRAINT `FK_D7B5A13AE3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime NOT NULL,
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fOverrideSetPermissions` tinyint(1) NOT NULL,
  `ocID` int(10) unsigned NOT NULL,
  `folderTreeNodeID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `fslID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`),
  CONSTRAINT `FK_C7F46F5DB81D3903` FOREIGN KEY (`fslID`) REFERENCES `FileStorageLocations` (`fslID`),
  CONSTRAINT `FK_C7F46F5DFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringConfiguredDataSources`
--

DROP TABLE IF EXISTS `GatheringConfiguredDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringConfiguredDataSources`
--

LOCK TABLES `GatheringConfiguredDataSources` WRITE;
/*!40000 ALTER TABLE `GatheringConfiguredDataSources` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringConfiguredDataSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringDataSources`
--

DROP TABLE IF EXISTS `GatheringDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringDataSources`
--

LOCK TABLES `GatheringDataSources` WRITE;
/*!40000 ALTER TABLE `GatheringDataSources` DISABLE KEYS */;
INSERT INTO `GatheringDataSources` VALUES (1,'Site Page','page',0,0),(2,'RSS Feed','rss_feed',0,1),(3,'Flickr Feed','flickr_feed',0,2),(4,'Twitter','twitter',0,3);
/*!40000 ALTER TABLE `GatheringDataSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemFeatureAssignments`
--

DROP TABLE IF EXISTS `GatheringItemFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemFeatureAssignments`
--

LOCK TABLES `GatheringItemFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `GatheringItemFeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItemFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemSelectedTemplates`
--

DROP TABLE IF EXISTS `GatheringItemSelectedTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT 0,
  `gatID` int(10) unsigned NOT NULL DEFAULT 0,
  `gatTypeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemSelectedTemplates`
--

LOCK TABLES `GatheringItemSelectedTemplates` WRITE;
/*!40000 ALTER TABLE `GatheringItemSelectedTemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItemSelectedTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplateFeatures`
--

DROP TABLE IF EXISTS `GatheringItemTemplateFeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplateFeatures`
--

LOCK TABLES `GatheringItemTemplateFeatures` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplateFeatures` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplateFeatures` VALUES (4,1,1),(10,2,1),(13,3,1),(16,4,1),(19,5,1),(23,7,1),(29,11,1),(33,12,1),(37,13,1),(42,14,1),(47,15,1),(53,17,1),(56,18,1),(63,21,1),(64,22,1),(3,1,2),(9,2,2),(12,3,2),(15,4,2),(18,5,2),(21,6,2),(25,8,2),(27,9,2),(41,13,3),(46,14,3),(51,16,3),(55,17,3),(62,20,3),(66,22,3),(2,1,4),(8,2,4),(14,4,4),(17,5,4),(31,11,4),(35,12,4),(39,13,4),(44,14,4),(61,20,4),(5,1,5),(22,6,5),(24,8,5),(26,9,5),(28,10,5),(32,11,5),(36,12,5),(40,13,5),(45,14,5),(49,15,5),(50,16,5),(59,19,5),(65,22,5),(20,5,6),(1,1,7),(7,2,7),(11,3,7),(30,11,7),(34,12,7),(38,13,7),(43,14,7),(48,15,7),(52,16,7),(54,17,7),(57,18,7),(58,19,7),(60,20,7),(6,1,8);
/*!40000 ALTER TABLE `GatheringItemTemplateFeatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplateTypes`
--

DROP TABLE IF EXISTS `GatheringItemTemplateTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplateTypes`
--

LOCK TABLES `GatheringItemTemplateTypes` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplateTypes` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplateTypes` VALUES (1,'tile',0),(2,'detail',0);
/*!40000 ALTER TABLE `GatheringItemTemplateTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplates`
--

DROP TABLE IF EXISTS `GatheringItemTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `gatFixedSlotWidth` int(10) unsigned DEFAULT 0,
  `gatFixedSlotHeight` int(10) unsigned DEFAULT 0,
  `gatForceDefault` int(10) unsigned DEFAULT 0,
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplates`
--

LOCK TABLES `GatheringItemTemplates` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplates` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplates` VALUES (1,'featured','Featured Item',0,6,2,1,0,1),(2,'title_date_description','Title Date & Description',0,0,0,0,0,1),(3,'title_description','Title & Description',0,0,0,0,0,1),(4,'title_date','Title & Date',0,0,0,0,0,1),(5,'title_date_comments','Title, Date & Comments',1,0,0,0,0,1),(6,'thumbnail','Thumbnail',0,0,0,0,0,1),(7,'basic','Basic',0,0,0,0,0,2),(8,'image_sharing_link','Image Sharing Link',0,0,0,0,0,2),(9,'image_conversation','Image Conversation',0,0,0,0,0,2),(10,'image','Large Image',0,0,0,0,0,2),(11,'masthead_image_left','Masthead Image Left',0,0,0,0,0,1),(12,'masthead_image_right','Masthead Image Right',0,0,0,0,0,1),(13,'masthead_image_byline_right','Masthead Image Byline Right',0,0,0,0,0,1),(14,'masthead_image_byline_left','Masthead Image Byline Left',0,0,0,0,0,1),(15,'image_masthead_description_center','Image Masthead Description Center',0,0,0,0,0,1),(16,'image_byline_description_center','Image Byline Description Center',0,0,0,0,0,1),(17,'masthead_byline_description','Masthead Byline Description',0,0,0,0,0,1),(18,'masthead_description','Masthead Description',0,0,0,0,0,1),(19,'thumbnail_description_center','Thumbnail & Description Center',0,0,0,0,0,1),(20,'tweet','Tweet',0,0,0,0,0,1),(21,'vimeo','Vimeo',0,0,0,0,0,1),(22,'image_overlay_headline','Image Overlay Headline',0,0,0,0,0,1);
/*!40000 ALTER TABLE `GatheringItemTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItems`
--

DROP TABLE IF EXISTS `GatheringItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gaiSlotWidth` int(10) unsigned DEFAULT 1,
  `gaiSlotHeight` int(10) unsigned DEFAULT 1,
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `gaiIsDeleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItems`
--

LOCK TABLES `GatheringItems` WRITE;
/*!40000 ALTER TABLE `GatheringItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringPermissionAssignments`
--

DROP TABLE IF EXISTS `GatheringPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringPermissionAssignments`
--

LOCK TABLES `GatheringPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `GatheringPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gatherings`
--

DROP TABLE IF EXISTS `Gatherings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gatherings`
--

LOCK TABLES `Gatherings` WRITE;
/*!40000 ALTER TABLE `Gatherings` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gatherings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT 0,
  `gsID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSetGroups`
--

LOCK TABLES `GroupSetGroups` WRITE;
/*!40000 ALTER TABLE `GroupSetGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSetGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSets`
--

LOCK TABLES `GroupSets` WRITE;
/*!40000 ALTER TABLE `GroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT 0,
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT 0,
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT 0,
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT 0,
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT 0,
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT 0,
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT 0,
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT 0,
  `gPath` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Guest',0),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Registered Users',0),(3,'Administrators','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Administrators',0);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSetJobs`
--

DROP TABLE IF EXISTS `JobSetJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT 0,
  `jID` int(10) unsigned NOT NULL DEFAULT 0,
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSetJobs`
--

LOCK TABLES `JobSetJobs` WRITE;
/*!40000 ALTER TABLE `JobSetJobs` DISABLE KEYS */;
INSERT INTO `JobSetJobs` VALUES (1,1,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0);
/*!40000 ALTER TABLE `JobSetJobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSets`
--

DROP TABLE IF EXISTS `JobSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT 0,
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSets`
--

LOCK TABLES `JobSets` WRITE;
/*!40000 ALTER TABLE `JobSets` DISABLE KEYS */;
INSERT INTO `JobSets` VALUES (1,'Default',0,NULL,0,'days',0);
/*!40000 ALTER TABLE `JobSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `jLastStatusText` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT 0,
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT 0,
  `isScheduled` smallint(6) NOT NULL DEFAULT 0,
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately','2019-10-03 15:08:20',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0),(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2019-10-03 15:08:21',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0),(3,'Check Automated Groups','Automatically add users to groups and assign badges.','2019-10-03 15:08:21',NULL,0,NULL,0,'ENABLED','check_automated_groups',0,0,'days',0),(4,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2019-10-03 15:08:21',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0),(5,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2019-10-03 15:08:21',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0),(6,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2019-10-03 15:08:21',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0),(7,'Update Gatherings','Loads new items into gatherings.','2019-10-03 15:08:21',NULL,0,NULL,0,'ENABLED','update_gatherings',0,0,'days',0),(8,'Update Statistics Trackers','Scan the sitemap for file usage and stack usage to update statistics trackers','2019-10-03 15:08:21',NULL,0,NULL,0,'ENABLED','update_statistics',0,0,'days',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `jlError` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LegacyAttributeKeys`
--

DROP TABLE IF EXISTS `LegacyAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LegacyAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_740BA2BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LegacyAttributeKeys`
--

LOCK TABLES `LegacyAttributeKeys` WRITE;
/*!40000 ALTER TABLE `LegacyAttributeKeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `LegacyAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message','',NULL,NULL,NULL,0,'',0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT 0,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT 0,
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT 0,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualPageRelations`
--

DROP TABLE IF EXISTS `MultilingualPageRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualPageRelations` (
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpRelationID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualPageRelations`
--

LOCK TABLES `MultilingualPageRelations` WRITE;
/*!40000 ALTER TABLE `MultilingualPageRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualPageRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualTranslations`
--

DROP TABLE IF EXISTS `MultilingualTranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT 0,
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `msgstr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `msgstrPlurals` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `flags` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualTranslations`
--

LOCK TABLES `MultilingualTranslations` WRITE;
/*!40000 ALTER TABLE `MultilingualTranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualTranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NotificationAlerts`
--

DROP TABLE IF EXISTS `NotificationAlerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotificationAlerts` (
  `naID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naIsArchived` tinyint(1) NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `nID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`naID`),
  KEY `IDX_E11C7408FD71026C` (`uID`),
  KEY `IDX_E11C7408ED024EFD` (`nID`),
  CONSTRAINT `FK_E11C7408ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`),
  CONSTRAINT `FK_E11C7408FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotificationAlerts`
--

LOCK TABLES `NotificationAlerts` WRITE;
/*!40000 ALTER TABLE `NotificationAlerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `NotificationAlerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NotificationPermissionSubscriptionList`
--

DROP TABLE IF EXISTS `NotificationPermissionSubscriptionList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotificationPermissionSubscriptionList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotificationPermissionSubscriptionList`
--

LOCK TABLES `NotificationPermissionSubscriptionList` WRITE;
/*!40000 ALTER TABLE `NotificationPermissionSubscriptionList` DISABLE KEYS */;
/*!40000 ALTER TABLE `NotificationPermissionSubscriptionList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NotificationPermissionSubscriptionListCustom`
--

DROP TABLE IF EXISTS `NotificationPermissionSubscriptionListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotificationPermissionSubscriptionListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `nSubscriptionIdentifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`nSubscriptionIdentifier`),
  KEY `peID` (`peID`),
  KEY `nSubscriptionIdentifier` (`nSubscriptionIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotificationPermissionSubscriptionListCustom`
--

LOCK TABLES `NotificationPermissionSubscriptionListCustom` WRITE;
/*!40000 ALTER TABLE `NotificationPermissionSubscriptionListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `NotificationPermissionSubscriptionListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notifications`
--

DROP TABLE IF EXISTS `Notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notifications` (
  `nID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nDate` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`nID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notifications`
--

LOCK TABLES `Notifications` WRITE;
/*!40000 ALTER TABLE `Notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `Notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OauthUserMap`
--

DROP TABLE IF EXISTS `OauthUserMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OauthUserMap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OauthUserMap`
--

LOCK TABLES `OauthUserMap` WRITE;
/*!40000 ALTER TABLE `OauthUserMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `OauthUserMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgVersion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL,
  `pkgAvailableVersion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgDescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `UNIQ_62C3A2F1F2D49DB1` (`pkgHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
INSERT INTO `Packages` VALUES (2,'bacluc_gryfenberg_theme','0.5.0',1,NULL,'Gryfenberg Theme for Scout Group Gryfenberg','2019-10-04 06:25:50','Gryfenberg Theme');
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageFeeds`
--

DROP TABLE IF EXISTS `PageFeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageFeeds` (
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL,
  `iconFID` int(10) unsigned NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL,
  `ptID` int(10) unsigned NOT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL,
  `pfContentToDisplay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) NOT NULL,
  PRIMARY KEY (`pfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageFeeds`
--

LOCK TABLES `PageFeeds` WRITE;
/*!40000 ALTER TABLE `PageFeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageFeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `cPath` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ppID` int(11) NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL,
  `ppIsCanonical` tinyint(1) NOT NULL,
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL,
  PRIMARY KEY (`ppID`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES ('/dashboard',1,2,1,1),('/dashboard/sitemap',2,3,1,1),('/dashboard/sitemap/full',3,4,1,1),('/dashboard/sitemap/explore',4,5,1,1),('/dashboard/sitemap/search',5,6,1,1),('/dashboard/files',6,7,1,1),('/dashboard/files/search',7,8,1,1),('/dashboard/files/attributes',8,9,1,1),('/dashboard/files/sets',9,10,1,1),('/dashboard/files/add_set',10,11,1,1),('/dashboard/users',11,12,1,1),('/dashboard/users/search',12,13,1,1),('/dashboard/users/groups',13,14,1,1),('/dashboard/users/attributes',14,15,1,1),('/dashboard/users/add',15,16,1,1),('/dashboard/users/add_group',16,17,1,1),('/dashboard/users/groups/bulkupdate',17,18,1,1),('/dashboard/users/group_sets',18,19,1,1),('/dashboard/users/points',19,20,1,1),('/dashboard/users/points/assign',20,21,1,1),('/dashboard/users/points/actions',21,22,1,1),('/dashboard/express',22,23,1,1),('/dashboard/express/entries',23,24,1,1),('/dashboard/reports',24,25,1,1),('/dashboard/reports/forms',25,26,1,1),('/dashboard/reports/forms/legacy',26,27,1,1),('/dashboard/reports/surveys',27,28,1,1),('/dashboard/reports/logs',28,29,1,1),('/dashboard/pages',29,30,1,1),('/dashboard/pages/themes',30,31,1,1),('/dashboard/pages/themes/inspect',31,32,1,1),('/dashboard/pages/types',32,33,1,1),('/dashboard/pages/types/organize',33,34,1,1),('/dashboard/pages/types/add',34,35,1,1),('/dashboard/pages/types/form',35,36,1,1),('/dashboard/pages/types/output',36,37,1,1),('/dashboard/pages/types/attributes',37,38,1,1),('/dashboard/pages/types/permissions',38,39,1,1),('/dashboard/pages/templates',39,40,1,1),('/dashboard/pages/templates/add',40,41,1,1),('/dashboard/pages/attributes',41,42,1,1),('/dashboard/pages/single',42,43,1,1),('/dashboard/pages/feeds',43,44,1,1),('/dashboard/conversations',44,45,1,1),('/dashboard/conversations/messages',45,46,1,1),('/dashboard/blocks',46,47,1,1),('/dashboard/blocks/stacks',47,48,1,1),('/dashboard/blocks/permissions',48,49,1,1),('/dashboard/blocks/stacks/list',49,50,1,1),('/dashboard/blocks/types',50,51,1,1),('/dashboard/extend',51,52,1,1),('/dashboard/extend/install',52,53,1,1),('/dashboard/extend/update',53,54,1,1),('/dashboard/extend/connect',54,55,1,1),('/dashboard/extend/themes',55,56,1,1),('/dashboard/extend/addons',56,57,1,1),('/dashboard/system',57,58,1,1),('/dashboard/system/basics',58,59,1,1),('/dashboard/system/basics/name',59,60,1,1),('/dashboard/system/basics/accessibility',60,61,1,1),('/dashboard/system/basics/social',61,62,1,1),('/dashboard/system/basics/icons',62,63,1,1),('/dashboard/system/basics/editor',63,64,1,1),('/dashboard/system/basics/multilingual',64,65,1,1),('/dashboard/system/basics/timezone',65,66,1,1),('/dashboard/system/basics/attributes',66,67,1,1),('/dashboard/system/express',67,68,1,1),('/dashboard/system/express/entities',68,69,1,1),('/dashboard/system/express/entities/attributes',69,70,1,1),('/dashboard/system/express/entities/associations',70,71,1,1),('/dashboard/system/express/entities/forms',71,72,1,1),('/dashboard/system/express/entities/customize_search',72,73,1,1),('/dashboard/system/express/entities/order_entries',73,74,1,1),('/dashboard/system/express/entries',74,75,1,1),('/dashboard/system/multilingual',75,76,1,1),('/dashboard/system/multilingual/setup',76,77,1,1),('/dashboard/system/multilingual/copy',77,78,1,1),('/dashboard/system/multilingual/page_report',78,79,1,1),('/dashboard/system/multilingual/translate_interface',79,80,1,1),('/dashboard/system/seo',80,81,1,1),('/dashboard/system/seo/urls',81,82,1,1),('/dashboard/system/seo/bulk',82,83,1,1),('/dashboard/system/seo/codes',83,84,1,1),('/dashboard/system/seo/excluded',84,85,1,1),('/dashboard/system/seo/searchindex',85,86,1,1),('/dashboard/system/files',86,87,1,1),('/dashboard/system/files/permissions',87,88,1,1),('/dashboard/system/files/filetypes',88,89,1,1),('/dashboard/system/files/thumbnails',89,90,1,1),('/dashboard/system/files/image_uploading',90,91,1,1),('/dashboard/system/files/storage',91,92,1,1),('/dashboard/system/optimization',92,93,1,1),('/dashboard/system/optimization/cache',93,94,1,1),('/dashboard/system/optimization/clearcache',94,95,1,1),('/dashboard/system/optimization/jobs',95,96,1,1),('/dashboard/system/optimization/query_log',96,97,1,1),('/dashboard/system/permissions',97,98,1,1),('/dashboard/system/permissions/site',98,99,1,1),('/dashboard/system/permissions/tasks',99,100,1,1),('/dashboard/system/permissions/users',100,101,1,1),('/dashboard/system/permissions/advanced',101,102,1,1),('/dashboard/system/permissions/workflows',102,103,1,1),('/dashboard/system/permissions/blacklist',103,104,1,1),('/dashboard/system/permissions/captcha',104,105,1,1),('/dashboard/system/permissions/antispam',105,106,1,1),('/dashboard/system/permissions/maintenance',106,107,1,1),('/dashboard/system/registration',107,108,1,1),('/dashboard/system/registration/postlogin',108,109,1,1),('/dashboard/system/registration/profiles',109,110,1,1),('/dashboard/system/registration/open',110,111,1,1),('/dashboard/system/registration/authentication',111,112,1,1),('/dashboard/system/registration/global_password_reset',112,113,1,1),('/dashboard/system/registration/notification',113,114,1,1),('/dashboard/system/mail',114,115,1,1),('/dashboard/system/mail/method',115,116,1,1),('/dashboard/system/mail/method/test',116,117,1,1),('/dashboard/system/mail/importers',117,118,1,1),('/dashboard/system/conversations',118,119,1,1),('/dashboard/system/conversations/settings',119,120,1,1),('/dashboard/system/conversations/points',120,121,1,1),('/dashboard/system/conversations/bannedwords',121,122,1,1),('/dashboard/system/conversations/permissions',122,123,1,1),('/dashboard/system/attributes',123,124,1,1),('/dashboard/system/attributes/sets',124,125,1,1),('/dashboard/system/attributes/types',125,126,1,1),('/dashboard/system/attributes/topics',126,127,1,1),('/dashboard/system/attributes/topics/add',127,128,1,1),('/dashboard/system/environment',128,129,1,1),('/dashboard/system/environment/info',129,130,1,1),('/dashboard/system/environment/debug',130,131,1,1),('/dashboard/system/environment/logging',131,132,1,1),('/dashboard/system/environment/proxy',132,133,1,1),('/dashboard/system/environment/entities',133,134,1,1),('/dashboard/system/backup',134,135,1,1),('/dashboard/system/backup/backup',135,136,1,1),('/dashboard/system/backup/update',136,137,1,1),('/dashboard/welcome',137,138,1,1),('/dashboard/welcome/me',138,139,1,1),('/!trash',139,140,1,1),('/login',140,141,1,1),('/register',141,142,1,1),('/account',142,143,1,1),('/account/edit_profile',143,144,1,1),('/account/avatar',144,145,1,1),('/account/messages',145,146,1,1),('/page_forbidden',146,147,1,1),('/download_file',147,148,1,1),('/!drafts',148,149,1,1),('/!stacks',149,150,1,1),('/page_not_found',150,151,1,1),('/account/welcome',151,152,1,0),('/!stacks/header-site-title',152,154,1,1),('/!stacks/header-navigation',153,155,1,1),('/!stacks/footer-legal',154,156,1,1),('/!stacks/footer-navigation',155,157,1,1),('/!stacks/footer-contact',156,158,1,1);
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionAssignments`
--

LOCK TABLES `PagePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PagePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PagePermissionAssignments` VALUES (1,1,69),(1,2,70),(1,3,71),(1,4,72),(1,5,73),(1,6,74),(1,7,75),(1,8,77),(1,9,78),(1,10,79),(1,11,80),(1,12,81),(1,13,82),(1,14,83),(1,15,84),(1,16,85),(1,17,86),(1,18,76),(2,1,50),(141,1,48),(142,1,49),(149,1,51),(149,2,52),(149,3,53),(149,4,54),(149,5,55),(149,6,56),(149,7,57),(149,8,59),(149,9,60),(149,10,61),(149,11,62),(149,12,63),(149,13,64),(149,14,65),(149,15,66),(149,16,67),(149,17,68),(149,18,58);
/*!40000 ALTER TABLE `PagePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessList`
--

LOCK TABLES `PagePermissionPageTypeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `ptID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessListCustom`
--

LOCK TABLES `PagePermissionPageTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `name` tinyint(1) DEFAULT 0,
  `publicDateTime` tinyint(1) DEFAULT 0,
  `uID` tinyint(1) DEFAULT 0,
  `description` tinyint(1) DEFAULT 0,
  `paths` tinyint(1) DEFAULT 0,
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

LOCK TABLES `PagePermissionPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `akID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAttributeAccessListCustom`
--

LOCK TABLES `PagePermissionPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessList`
--

LOCK TABLES `PagePermissionThemeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessListCustom`
--

LOCK TABLES `PagePermissionThemeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPath` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (139,'','Waiting for Me','','/dashboard/welcome/me','2019-10-03 15:09:48','2019-10-03 15:10:52',NULL,0),(1,'','Home','',NULL,'2019-10-03 15:06:56','2019-10-03 15:11:10',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTemplates`
--

DROP TABLE IF EXISTS `PageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTemplates` (
  `pTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL,
  `pkgID` int(11) NOT NULL,
  PRIMARY KEY (`pTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTemplates`
--

LOCK TABLES `PageTemplates` WRITE;
/*!40000 ALTER TABLE `PageTemplates` DISABLE KEYS */;
INSERT INTO `PageTemplates` VALUES (1,'core_stack','','Stack',1,0),(2,'desktop','','Desktop',1,0),(3,'dashboard_full','','Dashboard Full',1,0),(4,'full','full.png','Full',0,0),(5,'blank','blank.png','Blank',0,0),(6,'left_sidebar','left_sidebar.png','Left Sidebar',0,0),(7,'right_sidebar','right_sidebar.png','Right Sidebar',0,0);
/*!40000 ALTER TABLE `PageTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeCustomStyles`
--

DROP TABLE IF EXISTS `PageThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT 0,
  `scvlID` int(10) unsigned DEFAULT 0,
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeCustomStyles`
--

LOCK TABLES `PageThemeCustomStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeCustomStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageThemeCustomStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'elemental','Elemental','Elegant, spacious theme with support for blogs, portfolios, layouts and more.',0,1),(3,'bacluc_gryfenberg_theme','Bootstrap Boilerplate Theme','Base Theme for new Concrete 5.7.x sites',2,1);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerControlTypes`
--

DROP TABLE IF EXISTS `PageTypeComposerControlTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerControlTypes`
--

LOCK TABLES `PageTypeComposerControlTypes` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerControlTypes` DISABLE KEYS */;
INSERT INTO `PageTypeComposerControlTypes` VALUES (1,'core_page_property','Built-In Property',0),(2,'collection_attribute','Custom Attribute',0),(3,'block','Block',0);
/*!40000 ALTER TABLE `PageTypeComposerControlTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerFormLayoutSetControls`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSetControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT 0,
  `ptComposerControlTypeID` int(10) unsigned DEFAULT 0,
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT 0,
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT 0,
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerFormLayoutSetControls`
--

LOCK TABLES `PageTypeComposerFormLayoutSetControls` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSetControls` DISABLE KEYS */;
INSERT INTO `PageTypeComposerFormLayoutSetControls` VALUES (1,1,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,'Page Name',NULL,NULL,1),(2,1,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:4:\"font\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(3,1,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(4,1,1,'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"list-alt\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(5,1,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',4,NULL,NULL,NULL,0),(6,2,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":15:{s:7:\"\0*\0btID\";i:14;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:14;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:33:\"\0*\0ptComposerControlIconFormatter\";N;s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,'Body',NULL,NULL,0);
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSetControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerFormLayoutSets`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT 0,
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerFormLayoutSets`
--

LOCK TABLES `PageTypeComposerFormLayoutSets` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSets` DISABLE KEYS */;
INSERT INTO `PageTypeComposerFormLayoutSets` VALUES (1,5,'Basics','',0),(2,5,'Content','',1);
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerOutputBlocks`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT 0,
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT 0,
  `bID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerOutputBlocks`
--

LOCK TABLES `PageTypeComposerOutputBlocks` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerOutputBlocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageTypeComposerOutputBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerOutputControls`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT 0,
  `ptID` int(10) unsigned DEFAULT 0,
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerOutputControls`
--

LOCK TABLES `PageTypeComposerOutputControls` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerOutputControls` DISABLE KEYS */;
INSERT INTO `PageTypeComposerOutputControls` VALUES (1,4,5,6),(2,5,5,6),(3,6,5,6),(4,7,5,6);
/*!40000 ALTER TABLE `PageTypeComposerOutputControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePageTemplateDefaultPages`
--

DROP TABLE IF EXISTS `PageTypePageTemplateDefaultPages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT 0,
  `ptID` int(10) unsigned NOT NULL DEFAULT 0,
  `cID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePageTemplateDefaultPages`
--

LOCK TABLES `PageTypePageTemplateDefaultPages` WRITE;
/*!40000 ALTER TABLE `PageTypePageTemplateDefaultPages` DISABLE KEYS */;
INSERT INTO `PageTypePageTemplateDefaultPages` VALUES (4,5,153);
/*!40000 ALTER TABLE `PageTypePageTemplateDefaultPages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePageTemplates`
--

DROP TABLE IF EXISTS `PageTypePageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT 0,
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePageTemplates`
--

LOCK TABLES `PageTypePageTemplates` WRITE;
/*!40000 ALTER TABLE `PageTypePageTemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageTypePageTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePermissionAssignments`
--

DROP TABLE IF EXISTS `PageTypePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePermissionAssignments`
--

LOCK TABLES `PageTypePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PageTypePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PageTypePermissionAssignments` VALUES (1,60,9),(1,61,9),(1,62,9),(1,63,9),(1,64,31),(2,60,9),(2,61,9),(2,62,9),(2,63,9),(2,64,32),(3,60,9),(3,61,9),(3,62,9),(3,63,9),(3,64,33),(4,60,9),(4,61,9),(4,62,9),(4,63,9),(4,64,34),(5,60,9),(5,61,9),(5,62,9),(5,63,9),(5,64,36);
/*!40000 ALTER TABLE `PageTypePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePublishTargetTypes`
--

DROP TABLE IF EXISTS `PageTypePublishTargetTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePublishTargetTypes`
--

LOCK TABLES `PageTypePublishTargetTypes` WRITE;
/*!40000 ALTER TABLE `PageTypePublishTargetTypes` DISABLE KEYS */;
INSERT INTO `PageTypePublishTargetTypes` VALUES (1,'parent_page','Always publish below a certain page',0),(2,'page_type','Choose from pages of a certain type',0),(3,'all','Choose from all pages when publishing',0);
/*!40000 ALTER TABLE `PageTypePublishTargetTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT 0,
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT 1,
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteTypeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `siteTypeID` (`siteTypeID`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'Stack','core_stack',3,0,'A',1,0,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(2,'Stack Category','core_stack_category',3,0,'A',1,0,1,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(3,'Desktop','core_desktop',3,0,'A',1,0,2,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(4,'Dashboard Full','dashboard_full',3,0,'A',1,0,3,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(5,'Page','page',3,4,'A',0,1,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":6:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}',1);
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `wpID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageWorkflowProgress`
--

LOCK TABLES `PageWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `PageWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `siteTreeID` int(10) unsigned DEFAULT 0,
  `ptID` int(10) unsigned NOT NULL DEFAULT 0,
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT 0,
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT 0,
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT 1,
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT 0,
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT 0,
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT 0,
  `cIsActive` tinyint(1) NOT NULL DEFAULT 1,
  `cChildren` int(10) unsigned NOT NULL DEFAULT 0,
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  `cParentID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT 0,
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT -1,
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT 0,
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `siteTreeID` (`siteTreeID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,1,5,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,11,0,0,0,0,-1,'0',0,0),(2,0,0,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,11,0,0,0,0,-1,'0',0,1),(3,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,0,-1,'0',0,1),(4,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,3,0,0,-1,'0',0,1),(5,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,3,0,0,-1,'0',0,1),(6,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,3,0,0,-1,'0',0,1),(7,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,0,-1,'0',0,1),(8,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,7,0,0,-1,'0',0,1),(9,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,7,0,0,-1,'0',0,1),(10,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,7,0,0,-1,'0',0,1),(11,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,7,0,0,-1,'0',0,1),(12,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,7,3,2,0,0,-1,'0',0,1),(13,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,12,0,0,-1,'0',0,1),(14,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,1,1,12,0,0,-1,'0',0,1),(15,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,12,0,0,-1,'0',0,1),(16,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,12,0,0,-1,'0',0,1),(17,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,12,0,0,-1,'0',0,1),(18,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups/bulkupdate.php',0,NULL,0,1,0,0,14,0,0,-1,'0',0,1),(19,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,12,0,0,-1,'0',0,1),(20,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/view.php',0,NULL,0,1,2,6,12,0,0,-1,'0',0,1),(21,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/assign.php',0,NULL,0,1,0,0,20,0,0,-1,'0',0,1),(22,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/actions.php',0,NULL,0,1,0,1,20,0,0,-1,'0',0,1),(23,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/express/view.php',0,NULL,0,1,1,4,2,0,0,-1,'0',0,1),(24,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/express/entries.php',0,NULL,0,1,0,0,23,0,0,-1,'0',0,1),(25,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,3,5,2,0,0,-1,'0',0,1),(26,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,1,0,25,0,0,-1,'0',0,1),(27,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms/legacy.php',0,NULL,0,1,0,0,26,0,0,-1,'0',0,1),(28,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,1,25,0,0,-1,'0',0,1),(29,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,2,25,0,0,-1,'0',0,1),(30,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,6,6,2,0,0,-1,'0',0,1),(31,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,1,0,30,0,0,-1,'0',0,1),(32,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,0,31,0,0,-1,'0',0,1),(33,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,6,1,30,0,0,-1,'0',0,1),(34,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/organize.php',0,NULL,0,1,0,0,33,0,0,-1,'0',0,1),(35,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,1,33,0,0,-1,'0',0,1),(36,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/form.php',0,NULL,0,1,0,2,33,0,0,-1,'0',0,1),(37,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/output.php',0,NULL,0,1,0,3,33,0,0,-1,'0',0,1),(38,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/attributes.php',0,NULL,0,1,0,4,33,0,0,-1,'0',0,1),(39,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/permissions.php',0,NULL,0,1,0,5,33,0,0,-1,'0',0,1),(40,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/view.php',0,NULL,0,1,1,2,30,0,0,-1,'0',0,1),(41,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/add.php',0,NULL,0,1,0,0,40,0,0,-1,'0',0,1),(42,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,3,30,0,0,-1,'0',0,1),(43,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,4,30,0,0,-1,'0',0,1),(44,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/feeds.php',0,NULL,0,1,0,5,30,0,0,-1,'0',0,1),(45,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/view.php',0,NULL,0,1,1,7,2,0,0,-1,'0',0,1),(46,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/messages.php',0,NULL,0,1,0,0,45,0,0,-1,'0',0,1),(47,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,8,2,0,0,-1,'0',0,1),(48,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,47,0,0,-1,'0',0,1),(49,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,47,0,0,-1,'0',0,1),(50,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,48,0,0,-1,'0',0,1),(51,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,47,0,0,-1,'0',0,1),(52,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,9,2,0,0,-1,'0',0,1),(53,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,52,0,0,-1,'0',0,1),(54,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,52,0,0,-1,'0',0,1),(55,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,52,0,0,-1,'0',0,1),(56,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,52,0,0,-1,'0',0,1),(57,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/addons.php',0,NULL,0,1,0,4,52,0,0,-1,'0',0,1),(58,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,13,10,2,0,0,-1,'0',0,1),(59,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,8,0,58,0,0,-1,'0',0,1),(60,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/name.php',0,NULL,0,1,0,0,59,0,0,-1,'0',0,1),(61,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/accessibility.php',0,NULL,0,1,0,1,59,0,0,-1,'0',0,1),(62,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/social.php',0,NULL,0,1,0,2,59,0,0,-1,'0',0,1),(63,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,3,59,0,0,-1,'0',0,1),(64,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,4,59,0,0,-1,'0',0,1),(65,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,5,59,0,0,-1,'0',0,1),(66,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,6,59,0,0,-1,'0',0,1),(67,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/attributes.php',0,NULL,0,1,0,7,59,0,0,-1,'0',0,1),(68,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/view.php',0,NULL,0,1,2,1,58,0,0,-1,'0',0,1),(69,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities.php',0,NULL,0,1,5,0,68,0,0,-1,'0',0,1),(70,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/attributes.php',0,NULL,0,1,0,0,69,0,0,-1,'0',0,1),(71,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/associations.php',0,NULL,0,1,0,1,69,0,0,-1,'0',0,1),(72,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/forms.php',0,NULL,0,1,0,2,69,0,0,-1,'0',0,1),(73,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/customize_search.php',0,NULL,0,1,0,3,69,0,0,-1,'0',0,1),(74,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/order_entries.php',0,NULL,0,1,0,4,69,0,0,-1,'0',0,1),(75,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entries.php',0,NULL,0,1,0,1,68,0,0,-1,'0',0,1),(76,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/view.php',0,NULL,0,1,4,2,58,0,0,-1,'0',0,1),(77,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/setup.php',0,NULL,0,1,0,0,76,0,0,-1,'0',0,1),(78,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/copy.php',0,NULL,0,1,0,1,76,0,0,-1,'0',0,1),(79,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/page_report.php',0,NULL,0,1,0,2,76,0,0,-1,'0',0,1),(80,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/translate_interface.php',0,NULL,0,1,0,3,76,0,0,-1,'0',0,1),(81,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,3,58,0,0,-1,'0',0,1),(82,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,81,0,0,-1,'0',0,1),(83,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk.php',0,NULL,0,1,0,1,81,0,0,-1,'0',0,1),(84,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/codes.php',0,NULL,0,1,0,2,81,0,0,-1,'0',0,1),(85,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,81,0,0,-1,'0',0,1),(86,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/searchindex.php',0,NULL,0,1,0,4,81,0,0,-1,'0',0,1),(87,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/view.php',0,NULL,0,1,5,4,58,0,0,-1,'0',0,1),(88,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/permissions.php',0,NULL,0,1,0,0,87,0,0,-1,'0',0,1),(89,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/filetypes.php',0,NULL,0,1,0,1,87,0,0,-1,'0',0,1),(90,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/thumbnails.php',0,NULL,0,1,0,2,87,0,0,-1,'0',0,1),(91,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/image_uploading.php',0,NULL,0,1,0,3,87,0,0,-1,'0',0,1),(92,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/storage.php',0,NULL,0,1,0,4,87,0,0,-1,'0',0,1),(93,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,4,5,58,0,0,-1,'0',0,1),(94,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,93,0,0,-1,'0',0,1),(95,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clearcache.php',0,NULL,0,1,0,1,93,0,0,-1,'0',0,1),(96,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,93,0,0,-1,'0',0,1),(97,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/query_log.php',0,NULL,0,1,0,3,93,0,0,-1,'0',0,1),(98,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,9,6,58,0,0,-1,'0',0,1),(99,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,98,0,0,-1,'0',0,1),(100,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,1,98,0,0,-1,'0',0,1),(101,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,2,98,0,0,-1,'0',0,1),(102,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,3,98,0,0,-1,'0',0,1),(103,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/workflows.php',0,NULL,0,1,0,4,98,0,0,-1,'0',0,1),(104,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/blacklist.php',0,NULL,0,1,0,5,98,0,0,-1,'0',0,1),(105,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,6,98,0,0,-1,'0',0,1),(106,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,7,98,0,0,-1,'0',0,1),(107,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance.php',0,NULL,0,1,0,8,98,0,0,-1,'0',0,1),(108,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,6,7,58,0,0,-1,'0',0,1),(109,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,108,0,0,-1,'0',0,1),(110,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,108,0,0,-1,'0',0,1),(111,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/open.php',0,NULL,0,1,0,2,108,0,0,-1,'0',0,1),(112,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/authentication.php',0,NULL,0,1,0,3,108,0,0,-1,'0',0,1),(113,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/global_password_reset.php',0,NULL,0,1,0,4,108,0,0,-1,'0',0,1),(114,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/notification.php',0,NULL,0,1,0,5,108,0,0,-1,'0',0,1),(115,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,8,58,0,0,-1,'0',0,1),(116,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,1,0,115,0,0,-1,'0',0,1),(117,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method/test.php',0,NULL,0,1,0,0,116,0,0,-1,'0',0,1),(118,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,115,0,0,-1,'0',0,1),(119,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/view.php',0,NULL,0,1,4,9,58,0,0,-1,'0',0,1),(120,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/settings.php',0,NULL,0,1,0,0,119,0,0,-1,'0',0,1),(121,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/points.php',0,NULL,0,1,0,1,119,0,0,-1,'0',0,1),(122,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/bannedwords.php',0,NULL,0,1,0,2,119,0,0,-1,'0',0,1),(123,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/permissions.php',0,NULL,0,1,0,3,119,0,0,-1,'0',0,1),(124,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,3,10,58,0,0,-1,'0',0,1),(125,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,124,0,0,-1,'0',0,1),(126,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,124,0,0,-1,'0',0,1),(127,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/view.php',0,NULL,0,1,1,2,124,0,0,-1,'0',0,1),(128,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/add.php',0,NULL,0,1,0,0,127,0,0,-1,'0',0,1),(129,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,11,58,0,0,-1,'0',0,1),(130,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,129,0,0,-1,'0',0,1),(131,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,129,0,0,-1,'0',0,1),(132,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,129,0,0,-1,'0',0,1),(133,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,3,129,0,0,-1,'0',0,1),(134,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/entities.php',0,NULL,0,1,0,4,129,0,0,-1,'0',0,1),(135,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/view.php',0,NULL,0,1,2,12,58,0,0,-1,'0',0,1),(136,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/backup.php',0,NULL,0,1,0,0,135,0,0,-1,'0',0,1),(137,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/update.php',0,NULL,0,1,0,1,135,0,0,-1,'0',0,1),(138,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/welcome.php',0,NULL,0,1,1,0,2,0,0,-1,'0',0,1),(139,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,0,138,0,0,-1,'0',0,1),(140,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(141,0,0,0,1,0,NULL,NULL,NULL,1,141,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(142,0,0,0,1,0,NULL,NULL,NULL,1,142,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(143,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/view.php',0,NULL,0,1,3,0,0,0,0,-1,'0',0,1),(144,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/edit_profile.php',0,NULL,0,1,0,0,143,0,0,-1,'0',0,1),(145,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/avatar.php',0,NULL,0,1,0,1,143,0,0,-1,'0',0,1),(146,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages.php',0,NULL,0,1,0,2,143,0,0,-1,'0',0,1),(147,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(148,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(149,1,0,0,1,0,NULL,NULL,NULL,1,149,'OVERRIDE','/!drafts/view.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(150,1,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,5,0,0,0,0,-1,'0',0,1),(151,1,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(152,1,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/desktop.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(153,1,5,1,NULL,0,NULL,NULL,NULL,1,153,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(154,1,1,0,NULL,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,150,0,0,-1,'0',0,1),(155,1,1,0,NULL,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,150,0,0,-1,'0',0,1),(156,1,1,0,NULL,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,150,0,0,-1,'0',0,1),(157,1,1,0,NULL,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,150,0,0,-1,'0',0,1),(158,1,1,0,NULL,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,150,0,0,-1,'0',0,1);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccess`
--

LOCK TABLES `PermissionAccess` WRITE;
/*!40000 ALTER TABLE `PermissionAccess` DISABLE KEYS */;
INSERT INTO `PermissionAccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1);
/*!40000 ALTER TABLE `PermissionAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntities`
--

LOCK TABLES `PermissionAccessEntities` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntities` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntities` VALUES (1,1),(2,1),(6,1),(7,2),(3,5),(4,6),(5,7);
/*!40000 ALTER TABLE `PermissionAccessEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `gsID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroupSets`
--

LOCK TABLES `PermissionAccessEntityGroupSets` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `gID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

LOCK TABLES `PermissionAccessEntityGroups` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroups` VALUES (1,1,3),(2,2,1),(3,6,2);
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

LOCK TABLES `PermissionAccessEntityTypeCategories` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES (1,1),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(2,1),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(3,1),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(4,1),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),(4,21),(4,22),(4,23),(5,1),(5,15),(6,5),(6,6),(7,21),(7,22);
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

LOCK TABLES `PermissionAccessEntityTypes` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0),(7,'conversation_message_author','Message Author',0);
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

LOCK TABLES `PermissionAccessEntityUsers` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityUsers` VALUES (7,1);
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `pdID` int(10) unsigned NOT NULL DEFAULT 0,
  `accessType` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessList`
--

LOCK TABLES `PermissionAccessList` WRITE;
/*!40000 ALTER TABLE `PermissionAccessList` DISABLE KEYS */;
INSERT INTO `PermissionAccessList` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,1,0,10),(27,1,0,10),(27,2,0,10),(28,1,0,10),(28,2,0,10),(29,1,0,10),(30,1,0,10),(31,3,0,10),(32,3,0,10),(33,3,0,10),(34,3,0,10),(35,1,0,10),(36,3,0,10),(37,2,0,10),(38,1,0,10),(38,2,0,10),(39,1,0,10),(40,1,0,10),(41,1,0,10),(42,1,0,10),(43,1,0,10),(44,1,0,10),(45,1,0,10),(46,1,0,10),(47,1,0,10),(48,2,0,10),(49,2,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10),(60,1,0,10),(61,1,0,10),(62,1,0,10),(63,1,0,10),(64,1,0,10),(65,1,0,10),(66,1,0,10),(67,1,0,10),(68,1,0,10),(69,2,0,10),(70,1,0,10),(71,1,0,10),(72,1,0,10),(73,1,0,10),(74,1,0,10),(75,1,0,10),(76,1,0,10),(77,1,0,10),(78,1,0,10),(79,1,0,10),(80,1,0,10),(81,1,0,10),(82,1,0,10),(83,1,0,10),(84,1,0,10),(85,1,0,10),(86,1,0,10),(87,1,0,10),(88,1,0,10),(89,1,0,10),(90,1,0,10),(91,1,0,10),(92,2,0,10),(93,2,0,10),(94,1,0,10),(94,5,0,10),(95,1,0,10),(95,5,0,10),(96,1,0,10),(96,6,0,10),(97,1,0,10),(98,1,0,10),(99,1,0,10),(100,1,0,10),(100,7,0,10);
/*!40000 ALTER TABLE `PermissionAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `wfID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessWorkflows`
--

LOCK TABLES `PermissionAccessWorkflows` WRITE;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAssignments`
--

LOCK TABLES `PermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PermissionAssignments` DISABLE KEYS */;
INSERT INTO `PermissionAssignments` VALUES (1,19),(2,20),(3,75),(4,76),(5,77),(6,79),(7,80),(8,81),(9,92),(10,94),(11,95),(12,96),(13,97),(14,98),(15,99),(16,100),(17,101),(18,102),(19,103),(20,104),(21,105),(22,106),(29,107),(30,108),(100,82);
/*!40000 ALTER TABLE `PermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionDurationObjects`
--

LOCK TABLES `PermissionDurationObjects` WRITE;
/*!40000 ALTER TABLE `PermissionDurationObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionDurationObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeyCategories`
--

LOCK TABLES `PermissionKeyCategories` WRITE;
/*!40000 ALTER TABLE `PermissionKeyCategories` DISABLE KEYS */;
INSERT INTO `PermissionKeyCategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'user',NULL),(5,'file_folder',NULL),(6,'file',NULL),(7,'area',NULL),(8,'block_type',NULL),(9,'block',NULL),(10,'admin',NULL),(11,'notification',NULL),(12,'sitemap',NULL),(13,'marketplace_newsflow',NULL),(14,'basic_workflow',NULL),(15,'page_type',NULL),(16,'gathering',NULL),(17,'group_tree_node',NULL),(18,'express_tree_node',NULL),(19,'category_tree_node',NULL),(20,'topic_tree_node',NULL),(21,'conversation',NULL),(22,'conversation_message',NULL),(23,'multilingual_section',NULL);
/*!40000 ALTER TABLE `PermissionKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT 0,
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeys`
--

LOCK TABLES `PermissionKeys` WRITE;
/*!40000 ALTER TABLE `PermissionKeys` DISABLE KEYS */;
INSERT INTO `PermissionKeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0),(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(9,'edit_page_template','Change Page Template',0,0,'Ability to change just the page template for this page.',1,0),(10,'edit_page_page_type','Edit Page Type',0,0,'Change the type of an existing page.',1,0),(11,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(12,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(13,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(14,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(15,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(16,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(17,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(18,'edit_page_multilingual_settings','Edit Multilingual Settings',0,0,'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.',1,0),(19,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',8,0),(20,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',8,0),(21,'view_area','View Area',0,0,'Can view the area and its contents.',7,0),(22,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',7,0),(23,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',7,0),(24,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',7,0),(25,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',7,0),(26,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',7,0),(27,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',7,0),(28,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',7,0),(29,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',7,0),(30,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',9,0),(31,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',9,0),(32,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',9,0),(33,'edit_block_cache_settings','Edit Cache Settings',0,0,'Controls whether users can change the block cache settings for this block instance.',9,0),(34,'edit_block_name','Edit Name',0,0,'Controls whether users can change the block\'s name (rarely used.)',9,0),(35,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',9,0),(36,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',9,0),(37,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',9,0),(38,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',9,0),(39,'view_file_folder_file','View Files',0,0,'View files within folder in the site.',5,0),(40,'search_file_folder','Search File Folder',0,0,'See this file folder in the file manager',5,0),(41,'edit_file_folder','Edit File Folder',0,0,'Edit a file folder.',5,0),(42,'edit_file_folder_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',5,0),(43,'edit_file_folder_file_contents','Edit File Contents',0,0,'Can edit or replace files in folder.',5,0),(44,'copy_file_folder_files','Copy File',0,0,'Can copy files in file folder.',5,0),(45,'edit_file_folder_permissions','Edit File Access',0,0,'Can edit access to file folder.',5,0),(46,'delete_file_folder','Delete File Set',0,0,'Can delete file folder.',5,0),(47,'delete_file_folder_files','Delete File',0,0,'Can delete files in folder.',5,0),(48,'add_file','Add File',0,1,'Can add files to folder.',5,0),(49,'view_file','View Files',0,0,'Can view and download files.',6,0),(50,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',6,0),(51,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(52,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',6,0),(53,'copy_file','Copy File',0,0,'Can copy file.',6,0),(54,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',6,0),(55,'delete_file','Delete File',0,0,'Can delete file.',6,0),(56,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0),(57,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0),(58,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0),(59,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0),(60,'add_page_type','Add Pages of This Type',0,0,'',15,0),(61,'edit_page_type','Edit Page Type',0,0,'',15,0),(62,'delete_page_type','Delete Page Type',0,0,'',15,0),(63,'edit_page_type_permissions','Edit Page Type Permissions',0,0,'',15,0),(64,'edit_page_type_drafts','Edit Page Type Drafts',0,0,'',15,0),(65,'view_topic_tree_node','View Topic Tree Node',0,0,'',20,0),(66,'view_category_tree_node','View Category Tree Node',0,0,'',19,0),(67,'add_conversation_message','Add Message to Conversation',0,1,'',21,0),(68,'add_conversation_message_attachments','Add Message Attachments',0,0,'',21,0),(69,'edit_conversation_permissions','Edit Conversation Permissions',0,0,'',21,0),(70,'delete_conversation_message','Delete Message',0,0,'',21,0),(71,'edit_conversation_message','Edit Message',0,0,'',21,0),(72,'rate_conversation_message','Rate Message',0,0,'',21,0),(73,'flag_conversation_message','Flag Message',0,0,'',21,0),(74,'approve_conversation_message','Approve Message',0,0,'',21,0),(75,'edit_user_properties','Edit User Details',0,1,NULL,4,0),(76,'view_user_attributes','View User Attributes',0,1,NULL,4,0),(77,'activate_user','Activate/Deactivate User',1,0,NULL,4,0),(78,'sudo','Sign in as User',0,0,NULL,4,0),(79,'upgrade','Upgrade concrete5',0,0,NULL,10,0),(80,'access_group_search','Access Group Search',0,0,NULL,4,0),(81,'delete_user','Delete User',1,0,NULL,4,0),(82,'notify_in_notification_center','Notify in Notification Center',0,1,'Controls who receives updates in the notification center.',11,0),(83,'view_express_entries','View Entries',0,0,NULL,18,0),(84,'add_express_entries','Add Entry',0,0,NULL,18,0),(85,'edit_express_entries','Edit Entry',0,0,NULL,18,0),(86,'delete_express_entries','Delete Entry',0,0,NULL,18,0),(87,'search_users_in_group','Search User Group',0,0,NULL,17,0),(88,'edit_group','Edit Group',0,0,NULL,17,0),(89,'assign_group','Assign Group',0,0,NULL,17,0),(90,'add_sub_group','Add Child Group',0,0,NULL,17,0),(91,'edit_group_permissions','Edit Group Permissions',0,0,NULL,17,0),(92,'access_page_type_permissions','Access Page Type Permissions',0,0,NULL,10,0),(93,'access_task_permissions','Access Task Permissions',0,0,NULL,10,0),(94,'access_sitemap','Access Sitemap',0,0,NULL,12,0),(95,'access_page_defaults','Access Page Type Defaults',0,0,NULL,10,0),(96,'customize_themes','Customize Themes',0,0,NULL,10,0),(97,'manage_layout_presets','Manage Layout Presets',0,0,NULL,10,0),(98,'empty_trash','Empty Trash',0,0,NULL,10,0),(99,'add_topic_tree','Add Topic Tree',0,0,NULL,10,0),(100,'remove_topic_tree','Remove Topic Tree',0,0,NULL,10,0),(101,'view_in_maintenance_mode','View Site in Maintenance Mode',0,0,'Ability to see and use the website when concrete5 is in maintenance mode.',10,0),(102,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0),(103,'install_packages','Install Packages',0,0,NULL,13,0),(104,'view_newsflow','View Newsflow',0,0,NULL,13,0),(105,'access_user_search_export','Export Site Users',0,0,'Controls whether a user can export site users or not',4,0),(106,'access_user_search','Access User Search',0,0,'Controls whether a user can view the search user interface.',4,0),(107,'edit_gatherings','Edit Gatherings',0,0,'Can edit the footprint and items in all gatherings.',10,0),(108,'edit_gathering_items','Edit Gathering Items',0,0,'',16,0);
/*!40000 ALTER TABLE `PermissionKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT 0,
  `itemID` int(10) unsigned NOT NULL DEFAULT 0,
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT 1,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `displayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PrivateMessageNotifications`
--

DROP TABLE IF EXISTS `PrivateMessageNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PrivateMessageNotifications` (
  `msgID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_1AB97592ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PrivateMessageNotifications`
--

LOCK TABLES `PrivateMessageNotifications` WRITE;
/*!40000 ALTER TABLE `PrivateMessageNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `PrivateMessageNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueueMessages`
--

DROP TABLE IF EXISTS `QueueMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueueMessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `FK_7C04D76477B5BAE` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueueMessages`
--

LOCK TABLES `QueueMessages` WRITE;
/*!40000 ALTER TABLE `QueueMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueueMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuePageDuplicationRelations`
--

DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `originalCID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuePageDuplicationRelations`
--

LOCK TABLES `QueuePageDuplicationRelations` WRITE;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Queues`
--

DROP TABLE IF EXISTS `Queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT 30,
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Queues`
--

LOCK TABLES `Queues` WRITE;
/*!40000 ALTER TABLE `Queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `Queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SavedFileSearchQueries`
--

DROP TABLE IF EXISTS `SavedFileSearchQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SavedFileSearchQueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SavedFileSearchQueries`
--

LOCK TABLES `SavedFileSearchQueries` WRITE;
/*!40000 ALTER TABLE `SavedFileSearchQueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SavedFileSearchQueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SavedPageSearchQueries`
--

DROP TABLE IF EXISTS `SavedPageSearchQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SavedPageSearchQueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SavedPageSearchQueries`
--

LOCK TABLES `SavedPageSearchQueries` WRITE;
/*!40000 ALTER TABLE `SavedPageSearchQueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SavedPageSearchQueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SavedUserSearchQueries`
--

DROP TABLE IF EXISTS `SavedUserSearchQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SavedUserSearchQueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SavedUserSearchQueries`
--

LOCK TABLES `SavedUserSearchQueries` WRITE;
/*!40000 ALTER TABLE `SavedUserSearchQueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SavedUserSearchQueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  `sessionLifeTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sessions`
--

LOCK TABLES `Sessions` WRITE;
/*!40000 ALTER TABLE `Sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiblingPageRelations`
--

DROP TABLE IF EXISTS `SiblingPageRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiblingPageRelations` (
  `mpRelationID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiblingPageRelations`
--

LOCK TABLES `SiblingPageRelations` WRITE;
/*!40000 ALTER TABLE `SiblingPageRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiblingPageRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob DEFAULT NULL,
  `date_access` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ipFrom` (`ipFrom`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteAttributeKeys`
--

DROP TABLE IF EXISTS `SiteAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_63D1E182B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteAttributeKeys`
--

LOCK TABLES `SiteAttributeKeys` WRITE;
/*!40000 ALTER TABLE `SiteAttributeKeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteAttributeValues`
--

DROP TABLE IF EXISTS `SiteAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteAttributeValues` (
  `siteID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteID`,`akID`),
  KEY `IDX_67658AF7521D8435` (`siteID`),
  KEY `IDX_67658AF7B6561A7E` (`akID`),
  KEY `IDX_67658AF7A2A82A5D` (`avID`),
  CONSTRAINT `FK_67658AF7521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  CONSTRAINT `FK_67658AF7A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_67658AF7B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteAttributeValues`
--

LOCK TABLES `SiteAttributeValues` WRITE;
/*!40000 ALTER TABLE `SiteAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteLocales`
--

DROP TABLE IF EXISTS `SiteLocales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteLocales` (
  `siteLocaleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msIsDefault` tinyint(1) NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `siteID` int(10) unsigned DEFAULT NULL,
  `siteTreeID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteLocaleID`),
  UNIQUE KEY `UNIQ_2527AB2CF9431B4B` (`siteTreeID`),
  KEY `IDX_2527AB2C521D8435` (`siteID`),
  CONSTRAINT `FK_2527AB2C521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  CONSTRAINT `FK_2527AB2CF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTreeTrees` (`siteTreeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteLocales`
--

LOCK TABLES `SiteLocales` WRITE;
/*!40000 ALTER TABLE `SiteLocales` DISABLE KEYS */;
INSERT INTO `SiteLocales` VALUES (1,1,'en','US',2,'(n != 1)','one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, â€¦',1,1);
/*!40000 ALTER TABLE `SiteLocales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteSearchIndexAttributes`
--

DROP TABLE IF EXISTS `SiteSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteSearchIndexAttributes` (
  `siteID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteSearchIndexAttributes`
--

LOCK TABLES `SiteSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `SiteSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTreeTrees`
--

DROP TABLE IF EXISTS `SiteTreeTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTreeTrees` (
  `siteLocaleID` int(10) unsigned DEFAULT NULL,
  `siteTreeID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`siteTreeID`),
  UNIQUE KEY `UNIQ_A4B9696EACD624CD` (`siteLocaleID`),
  CONSTRAINT `FK_A4B9696EACD624CD` FOREIGN KEY (`siteLocaleID`) REFERENCES `SiteLocales` (`siteLocaleID`),
  CONSTRAINT `FK_A4B9696EF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTrees` (`siteTreeID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTreeTrees`
--

LOCK TABLES `SiteTreeTrees` WRITE;
/*!40000 ALTER TABLE `SiteTreeTrees` DISABLE KEYS */;
INSERT INTO `SiteTreeTrees` VALUES (1,1);
/*!40000 ALTER TABLE `SiteTreeTrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTrees`
--

DROP TABLE IF EXISTS `SiteTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTrees` (
  `siteTreeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteHomePageID` int(10) unsigned NOT NULL,
  `treeType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`siteTreeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTrees`
--

LOCK TABLES `SiteTrees` WRITE;
/*!40000 ALTER TABLE `SiteTrees` DISABLE KEYS */;
INSERT INTO `SiteTrees` VALUES (1,1,'sitetree');
/*!40000 ALTER TABLE `SiteTrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTypes`
--

DROP TABLE IF EXISTS `SiteTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTypes` (
  `siteTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTypeThemeID` int(11) NOT NULL,
  `siteTypeHomePageTemplateID` int(11) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteTypeID`),
  UNIQUE KEY `UNIQ_7CBFE97576D39A3C` (`siteTypeHandle`),
  UNIQUE KEY `UNIQ_7CBFE975C7F74FC3` (`siteTypeName`),
  KEY `IDX_7CBFE975CE45CBB0` (`pkgID`),
  CONSTRAINT `FK_7CBFE975CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTypes`
--

LOCK TABLES `SiteTypes` WRITE;
/*!40000 ALTER TABLE `SiteTypes` DISABLE KEYS */;
INSERT INTO `SiteTypes` VALUES (1,'default','Default Site Type',0,0,NULL);
/*!40000 ALTER TABLE `SiteTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sites`
--

DROP TABLE IF EXISTS `Sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sites` (
  `siteID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeID` int(10) unsigned NOT NULL,
  `siteIsDefault` tinyint(1) NOT NULL,
  `siteHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTypeID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteID`),
  UNIQUE KEY `UNIQ_7DC18567D84E1976` (`siteHandle`),
  KEY `IDX_7DC18567E9548DF7` (`siteTypeID`),
  CONSTRAINT `FK_7DC18567E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sites`
--

LOCK TABLES `Sites` WRITE;
/*!40000 ALTER TABLE `Sites` DISABLE KEYS */;
INSERT INTO `Sites` VALUES (1,3,1,'default',1);
/*!40000 ALTER TABLE `Sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialLinks`
--

DROP TABLE IF EXISTS `SocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialLinks` (
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slID` int(11) NOT NULL AUTO_INCREMENT,
  `siteID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slID`),
  KEY `IDX_84EBA2B4521D8435` (`siteID`),
  CONSTRAINT `FK_84EBA2B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialLinks`
--

LOCK TABLES `SocialLinks` WRITE;
/*!40000 ALTER TABLE `SocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StackUsageRecord`
--

DROP TABLE IF EXISTS `StackUsageRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StackUsageRecord` (
  `stack_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL,
  PRIMARY KEY (`stack_id`,`block_id`,`collection_id`,`collection_version_id`),
  KEY `block` (`block_id`),
  KEY `collection_version` (`collection_id`,`collection_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StackUsageRecord`
--

LOCK TABLES `StackUsageRecord` WRITE;
/*!40000 ALTER TABLE `StackUsageRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `StackUsageRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT 0,
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT 0,
  `siteTreeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Header Site Title',20,154,0,1),(2,'Header Navigation',20,155,0,1),(3,'Footer Legal',20,156,0,1),(4,'Footer Navigation',20,157,0,1),(5,'Footer Contact',20,158,0,1);
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerCustomCssRecords`
--

DROP TABLE IF EXISTS `StyleCustomizerCustomCssRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sccRecordID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerCustomCssRecords`
--

LOCK TABLES `StyleCustomizerCustomCssRecords` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerCustomCssRecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerCustomCssRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerInlineStylePresets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerInlineStylePresets`
--

LOCK TABLES `StyleCustomizerInlineStylePresets` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerInlineStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerInlineStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerInlineStyleSets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStyleSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(11) NOT NULL AUTO_INCREMENT,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) NOT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundPosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerInlineStyleSets`
--

LOCK TABLES `StyleCustomizerInlineStyleSets` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerInlineStyleSets` DISABLE KEYS */;
INSERT INTO `StyleCustomizerInlineStyleSets` VALUES (1,'concrete5-org-stories','','',0,'','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0);
/*!40000 ALTER TABLE `StyleCustomizerInlineStyleSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerValueLists`
--

DROP TABLE IF EXISTS `StyleCustomizerValueLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerValueLists`
--

LOCK TABLES `StyleCustomizerValueLists` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerValueLists` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerValueLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerValues`
--

DROP TABLE IF EXISTS `StyleCustomizerValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerValues`
--

LOCK TABLES `StyleCustomizerValues` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemContentEditorSnippets`
--

DROP TABLE IF EXISTS `SystemContentEditorSnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemContentEditorSnippets`
--

LOCK TABLES `SystemContentEditorSnippets` WRITE;
/*!40000 ALTER TABLE `SystemContentEditorSnippets` DISABLE KEYS */;
INSERT INTO `SystemContentEditorSnippets` VALUES ('page_name','Page Name',1,0),('user_name','User Name',1,0);
/*!40000 ALTER TABLE `SystemContentEditorSnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemDatabaseMigrations`
--

DROP TABLE IF EXISTS `SystemDatabaseMigrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemDatabaseMigrations`
--

LOCK TABLES `SystemDatabaseMigrations` WRITE;
/*!40000 ALTER TABLE `SystemDatabaseMigrations` DISABLE KEYS */;
INSERT INTO `SystemDatabaseMigrations` VALUES ('20140919000000'),('20140930000000'),('20141017000000'),('20141024000000'),('20141113000000'),('20141219000000'),('20150109000000'),('20150504000000'),('20150515000000'),('20150610000000'),('20150612000000'),('20150615000000'),('20150616000000'),('20150619000000'),('20150622000000'),('20150623000000'),('20150713000000'),('20150731000000'),('20151221000000'),('20160107000000'),('20160213000000'),('20160314000000'),('20160412000000'),('20160615000000'),('20160725000000'),('20161109000000'),('20161203000000'),('20161208000000'),('20161216000000'),('20161216100000'),('20170118000000'),('20170123000000');
/*!40000 ALTER TABLE `SystemDatabaseMigrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemDatabaseQueryLog`
--

DROP TABLE IF EXISTS `SystemDatabaseQueryLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemDatabaseQueryLog`
--

LOCK TABLES `SystemDatabaseQueryLog` WRITE;
/*!40000 ALTER TABLE `SystemDatabaseQueryLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemDatabaseQueryLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TopicTrees`
--

DROP TABLE IF EXISTS `TopicTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TopicTrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT 0,
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TopicTrees`
--

LOCK TABLES `TopicTrees` WRITE;
/*!40000 ALTER TABLE `TopicTrees` DISABLE KEYS */;
/*!40000 ALTER TABLE `TopicTrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeFileNodes`
--

DROP TABLE IF EXISTS `TreeFileNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeFileNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeNodeID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeFileNodes`
--

LOCK TABLES `TreeFileNodes` WRITE;
/*!40000 ALTER TABLE `TreeFileNodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TreeFileNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeGroupNodes`
--

DROP TABLE IF EXISTS `TreeGroupNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeGroupNodes`
--

LOCK TABLES `TreeGroupNodes` WRITE;
/*!40000 ALTER TABLE `TreeGroupNodes` DISABLE KEYS */;
INSERT INTO `TreeGroupNodes` VALUES (2,1),(3,2),(4,3);
/*!40000 ALTER TABLE `TreeGroupNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodePermissionAssignments`
--

DROP TABLE IF EXISTS `TreeNodePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodePermissionAssignments`
--

LOCK TABLES `TreeNodePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `TreeNodePermissionAssignments` DISABLE KEYS */;
INSERT INTO `TreeNodePermissionAssignments` VALUES (1,87,87),(1,88,88),(1,89,89),(1,90,90),(1,91,91),(5,83,28),(5,84,24),(5,85,25),(5,86,26),(6,83,23),(6,84,27),(6,85,25),(6,86,26),(7,39,38),(7,40,39),(7,41,40),(7,42,41),(7,43,42),(7,44,43),(7,45,44),(7,46,46),(7,47,45),(7,48,47),(7,66,35);
/*!40000 ALTER TABLE `TreeNodePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodeTypes`
--

DROP TABLE IF EXISTS `TreeNodeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodeTypes`
--

LOCK TABLES `TreeNodeTypes` WRITE;
/*!40000 ALTER TABLE `TreeNodeTypes` DISABLE KEYS */;
INSERT INTO `TreeNodeTypes` VALUES (1,'group',0),(2,'category',0),(3,'express_entry_category',0),(4,'express_entry_results',0),(5,'topic',0),(6,'file',0),(7,'file_folder',0),(8,'search_preset',0);
/*!40000 ALTER TABLE `TreeNodeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodes`
--

DROP TABLE IF EXISTS `TreeNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT 0,
  `treeID` int(10) unsigned DEFAULT 0,
  `treeNodeParentID` int(10) unsigned DEFAULT 0,
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT 0,
  `treeNodeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `treeNodeOverridePermissions` tinyint(1) DEFAULT 0,
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodes`
--

LOCK TABLES `TreeNodes` WRITE;
/*!40000 ALTER TABLE `TreeNodes` DISABLE KEYS */;
INSERT INTO `TreeNodes` VALUES (1,1,1,0,0,'','2019-10-03 15:06:25','2019-10-03 15:06:25',1,1),(2,1,1,1,0,'','2019-10-03 15:06:25','2019-10-03 15:06:25',0,1),(3,1,1,1,1,'','2019-10-03 15:06:26','2019-10-03 15:06:26',0,1),(4,1,1,1,2,'','2019-10-03 15:06:26','2019-10-03 15:06:26',0,1),(5,3,2,0,0,'','2019-10-03 15:06:52','2019-10-03 15:06:52',1,5),(6,3,2,5,0,'Forms','2019-10-03 15:06:54','2019-10-03 15:06:54',1,6),(7,7,3,0,0,'','2019-10-03 15:11:06','2019-10-03 15:11:06',1,7);
/*!40000 ALTER TABLE `TreeNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeSearchQueryNodes`
--

DROP TABLE IF EXISTS `TreeSearchQueryNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeSearchQueryNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `savedSearchID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`treeNodeID`),
  KEY `savedSearchID` (`savedSearchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeSearchQueryNodes`
--

LOCK TABLES `TreeSearchQueryNodes` WRITE;
/*!40000 ALTER TABLE `TreeSearchQueryNodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TreeSearchQueryNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeTypes`
--

DROP TABLE IF EXISTS `TreeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeTypes`
--

LOCK TABLES `TreeTypes` WRITE;
/*!40000 ALTER TABLE `TreeTypes` DISABLE KEYS */;
INSERT INTO `TreeTypes` VALUES (1,'group',0),(2,'express_entry_results',0),(3,'topic',0),(4,'file_manager',0);
/*!40000 ALTER TABLE `TreeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trees`
--

DROP TABLE IF EXISTS `Trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT 0,
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trees`
--

LOCK TABLES `Trees` WRITE;
/*!40000 ALTER TABLE `Trees` DISABLE KEYS */;
INSERT INTO `Trees` VALUES (1,1,'2019-10-03 15:06:25',1),(2,2,'2019-10-03 15:06:53',5),(3,4,'2019-10-03 15:11:06',7);
/*!40000 ALTER TABLE `Trees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `uakProfileDisplay` tinyint(1) NOT NULL,
  `uakProfileEdit` tinyint(1) NOT NULL,
  `uakProfileEditRequired` tinyint(1) NOT NULL,
  `uakRegisterEdit` tinyint(1) NOT NULL,
  `uakRegisterEditRequired` tinyint(1) NOT NULL,
  `uakMemberListDisplay` tinyint(1) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_28970033B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (0,1,0,1,0,0,14),(0,1,0,1,0,0,15),(0,0,0,0,0,0,18);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`uID`,`akID`),
  KEY `IDX_4DB68CA6FD71026C` (`uID`),
  KEY `IDX_4DB68CA6B6561A7E` (`akID`),
  KEY `IDX_4DB68CA6A2A82A5D` (`avID`),
  CONSTRAINT `FK_4DB68CA6A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_4DB68CA6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_4DB68CA6FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob DEFAULT NULL,
  `ipTo` tinyblob DEFAULT NULL,
  `banCode` tinyint(1) NOT NULL DEFAULT 1,
  `expires` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `gID` int(10) unsigned NOT NULL DEFAULT 0,
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `uName` tinyint(1) DEFAULT 0,
  `uEmail` tinyint(1) DEFAULT 0,
  `uPassword` tinyint(1) DEFAULT 0,
  `uAvatar` tinyint(1) DEFAULT 0,
  `uTimezone` tinyint(1) DEFAULT 0,
  `uDefaultLanguage` tinyint(1) DEFAULT 0,
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAccessList`
--

LOCK TABLES `UserPermissionEditPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `akID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionEditPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessList`
--

LOCK TABLES `UserPermissionViewAttributeAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `akID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionViewAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointActions`
--

DROP TABLE IF EXISTS `UserPointActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `upaIsActive` tinyint(1) NOT NULL DEFAULT 1,
  `gBadgeID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointActions`
--

LOCK TABLES `UserPointActions` WRITE;
/*!40000 ALTER TABLE `UserPointActions` DISABLE KEYS */;
INSERT INTO `UserPointActions` VALUES (1,'won_badge','Won a Badge',5,0,1,1,0);
/*!40000 ALTER TABLE `UserPointActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointHistory`
--

DROP TABLE IF EXISTS `UserPointHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT 0,
  `upaID` int(11) DEFAULT 0,
  `upPoints` int(11) DEFAULT 0,
  `object` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointHistory`
--

LOCK TABLES `UserPointHistory` WRITE;
/*!40000 ALTER TABLE `UserPointHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPointHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT 0,
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `uToID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT 0,
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT 0,
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT 0,
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT 0,
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSignupNotifications`
--

DROP TABLE IF EXISTS `UserSignupNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSignupNotifications` (
  `usID` int(10) unsigned DEFAULT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  KEY `IDX_7FB1DF5B7B18287E` (`usID`),
  CONSTRAINT `FK_7FB1DF5B7B18287E` FOREIGN KEY (`usID`) REFERENCES `UserSignups` (`usID`),
  CONSTRAINT `FK_7FB1DF5BED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSignupNotifications`
--

LOCK TABLES `UserSignupNotifications` WRITE;
/*!40000 ALTER TABLE `UserSignupNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSignupNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSignups`
--

DROP TABLE IF EXISTS `UserSignups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSignups` (
  `usID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `createdBy` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`usID`),
  UNIQUE KEY `UNIQ_FEB5D909FD71026C` (`uID`),
  KEY `IDX_FEB5D909D3564642` (`createdBy`),
  CONSTRAINT `FK_FEB5D909D3564642` FOREIGN KEY (`createdBy`) REFERENCES `Users` (`uID`),
  CONSTRAINT `FK_FEB5D909FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSignups`
--

LOCK TABLES `UserSignups` WRITE;
/*!40000 ALTER TABLE `UserSignups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSignups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT 0,
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserWorkflowProgress`
--

DROP TABLE IF EXISTS `UserWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserWorkflowProgress` (
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `wpID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserWorkflowProgress`
--

LOCK TABLES `UserWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `UserWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` tinyint(1) NOT NULL,
  `uIsFullRecord` tinyint(1) NOT NULL,
  `uIsValidated` tinyint(1) NOT NULL DEFAULT -1,
  `uDateAdded` datetime NOT NULL,
  `uLastPasswordChange` datetime NOT NULL,
  `uHasAvatar` tinyint(1) NOT NULL,
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT 0,
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT 0,
  `uPreviousLogin` int(10) unsigned DEFAULT 0,
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT 0,
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT 0,
  `uLastIP` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uIsPasswordReset` tinyint(1) NOT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `UNIQ_D5428AED28459686` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','admin@example.com','$2a$12$fMLWSNXjQQASXE1nV96M8.xxfMTjEwUXRBsVOCUIEtIRsvP/gY2/a',1,1,1,'2019-10-03 15:06:26','2019-10-03 15:06:26',0,1570171560,1570170107,1570115186,2,1,'c0a81001',NULL,NULL,0);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT 0,
  `wpApproved` tinyint(1) NOT NULL DEFAULT 0,
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT 0,
  `wrID` int(11) NOT NULL DEFAULT 0,
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgress`
--

LOCK TABLES `WorkflowProgress` WRITE;
/*!40000 ALTER TABLE `WorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressCategories`
--

LOCK TABLES `WorkflowProgressCategories` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressCategories` DISABLE KEYS */;
INSERT INTO `WorkflowProgressCategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `WorkflowProgressCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `object` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressHistory`
--

LOCK TABLES `WorkflowProgressHistory` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgressHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressNotifications`
--

DROP TABLE IF EXISTS `WorkflowProgressNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressNotifications` (
  `wpID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_EC39CA81ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressNotifications`
--

LOCK TABLES `WorkflowProgressNotifications` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgressNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowRequestObjects`
--

LOCK TABLES `WorkflowRequestObjects` WRITE;
/*!40000 ALTER TABLE `WorkflowRequestObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowRequestObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTypes`
--

LOCK TABLES `WorkflowTypes` WRITE;
/*!40000 ALTER TABLE `WorkflowTypes` DISABLE KEYS */;
INSERT INTO `WorkflowTypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `WorkflowTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workflows`
--

LOCK TABLES `Workflows` WRITE;
/*!40000 ALTER TABLE `Workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_DA949740A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akDefaultCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akHasCustomCountries` tinyint(1) NOT NULL,
  `customCountries` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_5A737B61B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `value` tinyint(1) NOT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_5D5F70A9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (1,9),(1,16),(1,18),(1,24),(1,25),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,43),(1,44),(1,51),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,109),(1,118),(0,119),(1,125),(1,126);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akCheckedByDefault` tinyint(1) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_78025F47B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (0,5),(0,7),(0,8),(0,11),(0,12),(0,13),(1,14),(1,15);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `value` datetime DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_DF75412AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_C6B3B63AB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_3484F81EA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES ('fa fa-th-large',1),('pages, add page, delete page, copy, move, alias',2),('pages, add page, delete page, copy, move, alias',3),('pages, add page, delete page, copy, move, alias, bulk',4),('find page, search page, search, find, pages, sitemap',5),('add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',6),('file, file attributes, title, attribute, description, rename',7),('files, category, categories',8),('new file set',10),('users, groups, people, find, delete user, remove user, change password, password',11),('find, search, people, delete user, remove user, change password, password',12),('user, group, people, permissions, expire, badges',13),('user attributes, user data, gather data, registration data',14),('new user, create',15),('new user group, new group, group, create',17),('group set',19),('community, points, karma',20),('action, community actions',21),('forms, log, error, email, mysql, exception, survey',22),('forms, questions, response, data',23),('questions, quiz, response',26),('forms, log, error, email, mysql, exception, survey, history',27),('new theme, theme, active theme, change theme, template, css',28),('page types',29),('page attributes, custom',38),('single, page, custom, application',39),('atom, rss, feed, syndication',40),('icon-bullhorn',41),('stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',42),('edit stacks, view stacks, all stacks',45),('block, refresh, custom',46),('add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',47),('add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',48),('update, upgrade',49),('concrete5.org, my account, marketplace',50),('buy theme, new theme, marketplace, template',52),('buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',53),('dashboard, configuration',54),('website name, title',55),('accessibility, easy mode',56),('sharing, facebook, twitter',57),('logo, favicon, iphone, icon, bookmark',58),('tinymce, content block, fonts, editor, content, overlay',59),('translate, translation, internationalization, multilingual',60),('timezone, profile, locale',61),('site attributes',62),('multilingual, localization, internationalization, i18n',71),('vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',72),('bulk, seo, change keywords, engine, optimization, search',73),('traffic, statistics, google analytics, quant, pageviews, hits',74),('pretty, slug',75),('configure search, site search, search option',76),('file options, file manager, upload, modify',77),('security, files, media, extension, manager, upload',78),('images, picture, responsive, retina',79),('uploading, upload, images, image, resizing, manager',80),('security, alternate storage, hide files',81),('cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',82),('cache option, turn off cache, no cache, page cache, caching',83),('index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',84),('queries, database, mysql',85),('editors, hide site, offline, private, public, access',86),('security, actions, administrator, admin, package, marketplace, search',87),('security, lock ip, lock out, block ip, address, restrict, access',88),('security, registration',89),('antispam, block spam, security',90),('lock site, under construction, hide, hidden',91),('profile, login, redirect, specific, dashboard, administrators',92),('member profile, member page, community, forums, social, avatar',93),('signup, new user, community, public registration, public, registration',94),('auth, authentication, types, oauth, facebook, login, registration',95),('global, password, reset, change password, force, sign out',96),('smtp, mail settings',97),('email server, mail settings, mail configuration, external, internal',98),('test smtp, test mail',99),('email server, mail settings, mail configuration, private message, message system, import, email, message',100),('conversations',101),('conversations',102),('conversations ratings, ratings, community, community points',103),('conversations bad words, banned words, banned, bad words, bad, words, list',104),('attribute configuration',105),('attributes, sets',106),('attributes, types',107),('topics, tags, taxonomy',108),('overrides, system info, debug, support, help',110),('errors, exceptions, develop, support, help',111),('email, logging, logs, smtp, pop, errors, mysql, log',112),('network, proxy server',113),('database, entities, doctrine, orm',114),('export, backup, database, sql, mysql, encryption, restore',115),('upgrade, new version, update',116),('fa fa-trash-o',120),('fa fa-briefcase',121),('fa fa-edit',122),('fa fa-th',123);
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atEmptySettings`
--

DROP TABLE IF EXISTS `atEmptySettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atEmptySettings` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_ED1BF189B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atEmptySettings`
--

LOCK TABLES `atEmptySettings` WRITE;
/*!40000 ALTER TABLE `atEmptySettings` DISABLE KEYS */;
INSERT INTO `atEmptySettings` VALUES (4),(16),(17),(18),(19);
/*!40000 ALTER TABLE `atEmptySettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atExpress`
--

DROP TABLE IF EXISTS `atExpress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atExpress` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_CFAF40F1A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atExpress`
--

LOCK TABLES `atExpress` WRITE;
/*!40000 ALTER TABLE `atExpress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atExpress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atExpressSelectedEntries`
--

DROP TABLE IF EXISTS `atExpressSelectedEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atExpressSelectedEntries` (
  `avID` int(10) unsigned NOT NULL,
  `exEntryID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`exEntryID`),
  KEY `IDX_C9D404BBA2A82A5D` (`avID`),
  KEY `IDX_C9D404BB6DCB6296` (`exEntryID`),
  CONSTRAINT `FK_C9D404BB6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  CONSTRAINT `FK_C9D404BBA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atExpress` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atExpressSelectedEntries`
--

LOCK TABLES `atExpressSelectedEntries` WRITE;
/*!40000 ALTER TABLE `atExpressSelectedEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atExpressSelectedEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atExpressSettings`
--

DROP TABLE IF EXISTS `atExpressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atExpressSettings` (
  `exEntityID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_E8F67F0FCE2D7284` (`exEntityID`),
  CONSTRAINT `FK_E8F67F0FB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_E8F67F0FCE2D7284` FOREIGN KEY (`exEntityID`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atExpressSettings`
--

LOCK TABLES `atExpressSettings` WRITE;
/*!40000 ALTER TABLE `atExpressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atExpressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `fID` int(10) unsigned DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `IDX_73D17D61E3111F45` (`fID`),
  CONSTRAINT `FK_73D17D61A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_73D17D61E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFileSettings`
--

DROP TABLE IF EXISTS `atFileSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFileSettings` (
  `akFileManagerMode` int(11) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_EADD86C8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFileSettings`
--

LOCK TABLES `atFileSettings` WRITE;
/*!40000 ALTER TABLE `atFileSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFileSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `value` decimal(14,4) DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_41BA30B5A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
INSERT INTO `atNumber` VALUES (2.0000,117),(1.0000,124);
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelect`
--

DROP TABLE IF EXISTS `atSelect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelect` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_9CD8C521A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelect`
--

LOCK TABLES `atSelect` WRITE;
/*!40000 ALTER TABLE `atSelect` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionLists`
--

DROP TABLE IF EXISTS `atSelectOptionLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionLists` (
  `avSelectOptionListID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`avSelectOptionListID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionLists`
--

LOCK TABLES `atSelectOptionLists` WRITE;
/*!40000 ALTER TABLE `atSelectOptionLists` DISABLE KEYS */;
INSERT INTO `atSelectOptionLists` VALUES (1);
/*!40000 ALTER TABLE `atSelectOptionLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `avSelectOptionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isEndUserAdded` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `displayOrder` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avSelectOptionID`),
  KEY `IDX_797414B0CB59257C` (`avSelectOptionListID`),
  CONSTRAINT `FK_797414B0CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `avSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`avSelectOptionID`),
  KEY `IDX_40C97EC3A2A82A5D` (`avID`),
  KEY `IDX_40C97EC3E584C274` (`avSelectOptionID`),
  CONSTRAINT `FK_40C97EC3A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSelect` (`avID`),
  CONSTRAINT `FK_40C97EC3E584C274` FOREIGN KEY (`avSelectOptionID`) REFERENCES `atSelectOptions` (`avSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL,
  `akSelectAllowOtherValues` tinyint(1) NOT NULL,
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) unsigned DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `UNIQ_5D514424CB59257C` (`avSelectOptionListID`),
  CONSTRAINT `FK_5D514424B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_5D514424CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
INSERT INTO `atSelectSettings` VALUES (1,1,'display_asc',1,10);
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectedSocialLinks`
--

DROP TABLE IF EXISTS `atSelectedSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectedSocialLinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `IDX_10743709A2A82A5D` (`avID`),
  CONSTRAINT `FK_10743709A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSocialLinks` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectedSocialLinks`
--

LOCK TABLES `atSelectedSocialLinks` WRITE;
/*!40000 ALTER TABLE `atSelectedSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectedSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectedTopics`
--

DROP TABLE IF EXISTS `atSelectedTopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectedTopics` (
  `avTreeTopicNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avTreeTopicNodeID`),
  KEY `IDX_E42A7D5BA2A82A5D` (`avID`),
  CONSTRAINT `FK_E42A7D5BA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atTopic` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectedTopics`
--

LOCK TABLES `atSelectedTopics` WRITE;
/*!40000 ALTER TABLE `atSelectedTopics` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectedTopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSocialLinks`
--

DROP TABLE IF EXISTS `atSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSocialLinks` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_1431EC8AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSocialLinks`
--

LOCK TABLES `atSocialLinks` WRITE;
/*!40000 ALTER TABLE `atSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextSettings`
--

DROP TABLE IF EXISTS `atTextSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextSettings` (
  `akTextPlaceholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_951A10CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextSettings`
--

LOCK TABLES `atTextSettings` WRITE;
/*!40000 ALTER TABLE `atTextSettings` DISABLE KEYS */;
INSERT INTO `atTextSettings` VALUES ('',1);
/*!40000 ALTER TABLE `atTextSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_A6EA10D6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES ('',2),('',3),('',6),('',9);
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTopic`
--

DROP TABLE IF EXISTS `atTopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTopic` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_BABDD1FAA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTopic`
--

LOCK TABLES `atTopic` WRITE;
/*!40000 ALTER TABLE `atTopic` DISABLE KEYS */;
/*!40000 ALTER TABLE `atTopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTopicSettings`
--

DROP TABLE IF EXISTS `atTopicSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTopicSettings` (
  `akTopicParentNodeID` int(11) NOT NULL,
  `akTopicTreeID` int(11) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_830FD2FEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTopicSettings`
--

LOCK TABLES `atTopicSettings` WRITE;
/*!40000 ALTER TABLE `atTopicSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atTopicSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authTypeConcreteCookieMap`
--

DROP TABLE IF EXISTS `authTypeConcreteCookieMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authTypeConcreteCookieMap`
--

LOCK TABLES `authTypeConcreteCookieMap` WRITE;
/*!40000 ALTER TABLE `authTypeConcreteCookieMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `authTypeConcreteCookieMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT 0,
  `fOnstateID` int(10) unsigned DEFAULT 0,
  `maxWidth` int(10) unsigned DEFAULT 0,
  `maxHeight` int(10) unsigned DEFAULT 0,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT 0,
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreAreaLayout`
--

DROP TABLE IF EXISTS `btCoreAreaLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreAreaLayout`
--

LOCK TABLES `btCoreAreaLayout` WRITE;
/*!40000 ALTER TABLE `btCoreAreaLayout` DISABLE KEYS */;
INSERT INTO `btCoreAreaLayout` VALUES (2,1),(6,2),(9,3);
/*!40000 ALTER TABLE `btCoreAreaLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreConversation`
--

DROP TABLE IF EXISTS `btCoreConversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreConversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT 1,
  `paginate` tinyint(1) NOT NULL DEFAULT 1,
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT 50,
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT 1,
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT 1,
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreConversation`
--

LOCK TABLES `btCoreConversation` WRITE;
/*!40000 ALTER TABLE `btCoreConversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreConversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCorePageTypeComposerControlOutput`
--

DROP TABLE IF EXISTS `btCorePageTypeComposerControlOutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCorePageTypeComposerControlOutput`
--

LOCK TABLES `btCorePageTypeComposerControlOutput` WRITE;
/*!40000 ALTER TABLE `btCorePageTypeComposerControlOutput` DISABLE KEYS */;
INSERT INTO `btCorePageTypeComposerControlOutput` VALUES (16,1);
/*!40000 ALTER TABLE `btCorePageTypeComposerControlOutput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNavigation`
--

DROP TABLE IF EXISTS `btDateNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT 0,
  `redirectToResults` tinyint(1) DEFAULT 0,
  `cParentID` int(10) unsigned NOT NULL DEFAULT 0,
  `cTargetID` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNavigation`
--

LOCK TABLES `btDateNavigation` WRITE;
/*!40000 ALTER TABLE `btDateNavigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDateNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDesktopNewsflowLatest`
--

DROP TABLE IF EXISTS `btDesktopNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDesktopNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDesktopNewsflowLatest`
--

LOCK TABLES `btDesktopNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDesktopNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDesktopNewsflowLatest` VALUES (10,'A'),(11,'B'),(12,'C');
/*!40000 ALTER TABLE `btDesktopNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDesktopSiteActivity`
--

DROP TABLE IF EXISTS `btDesktopSiteActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDesktopSiteActivity` (
  `bID` int(10) unsigned NOT NULL,
  `types` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDesktopSiteActivity`
--

LOCK TABLES `btDesktopSiteActivity` WRITE;
/*!40000 ALTER TABLE `btDesktopSiteActivity` DISABLE KEYS */;
INSERT INTO `btDesktopSiteActivity` VALUES (5,'[\"form_submissions\",\"survey_results\",\"signups\",\"conversation_messages\",\"workflow\"]');
/*!40000 ALTER TABLE `btDesktopSiteActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExpressEntryDetail`
--

DROP TABLE IF EXISTS `btExpressEntryDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExpressEntryDetail` (
  `bID` int(10) unsigned NOT NULL,
  `exEntityID` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `exSpecificEntryID` int(10) unsigned NOT NULL,
  `exEntryAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exFormID` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entryMode` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`bID`,`exEntityID`,`exSpecificEntryID`,`exFormID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExpressEntryDetail`
--

LOCK TABLES `btExpressEntryDetail` WRITE;
/*!40000 ALTER TABLE `btExpressEntryDetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExpressEntryDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExpressEntryList`
--

DROP TABLE IF EXISTS `btExpressEntryList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExpressEntryList` (
  `bID` int(10) unsigned NOT NULL,
  `exEntityID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detailPage` int(10) unsigned NOT NULL DEFAULT 0,
  `linkedProperties` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `columns` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayLimit` int(11) DEFAULT 20,
  `enableSearch` int(11) DEFAULT 0,
  `enableKeywordSearch` int(11) DEFAULT 0,
  `headerBackgroundColor` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `tableName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT 0,
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExpressEntryList`
--

LOCK TABLES `btExpressEntryList` WRITE;
/*!40000 ALTER TABLE `btExpressEntryList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExpressEntryList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExpressForm`
--

DROP TABLE IF EXISTS `btExpressForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExpressForm` (
  `bID` int(10) unsigned NOT NULL,
  `exFormID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `submitLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT 0,
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT 1,
  `redirectCID` int(11) DEFAULT 0,
  `replyToEmailControlID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addFilesToSet` int(11) DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExpressForm`
--

LOCK TABLES `btExpressForm` WRITE;
/*!40000 ALTER TABLE `btExpressForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExpressForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFaq`
--

DROP TABLE IF EXISTS `btFaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFaq`
--

LOCK TABLES `btFaq` WRITE;
/*!40000 ALTER TABLE `btFaq` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFaq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFaqEntries`
--

DROP TABLE IF EXISTS `btFaqEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaqEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFaqEntries`
--

LOCK TABLES `btFaqEntries` WRITE;
/*!40000 ALTER TABLE `btFaqEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFaqEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFeature`
--

DROP TABLE IF EXISTS `btFeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFeature`
--

LOCK TABLES `btFeature` WRITE;
/*!40000 ALTER TABLE `btFeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT 0,
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT 0,
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT 1,
  `redirectCID` int(11) DEFAULT 0,
  `addFilesToSet` int(11) DEFAULT 0,
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `uID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT 0,
  `msqID` int(10) unsigned DEFAULT 0,
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT 0,
  `bID` int(10) unsigned DEFAULT 0,
  `questionSetId` int(10) unsigned DEFAULT 0,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) unsigned DEFAULT 1000,
  `width` int(10) unsigned DEFAULT 50,
  `height` int(10) unsigned DEFAULT 3,
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT 0,
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btImageSlider`
--

DROP TABLE IF EXISTS `btImageSlider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT 0,
  `timeout` int(10) unsigned DEFAULT NULL,
  `speed` int(10) unsigned DEFAULT NULL,
  `noAnimate` int(10) unsigned DEFAULT NULL,
  `pause` int(10) unsigned DEFAULT NULL,
  `maxWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btImageSlider`
--

LOCK TABLES `btImageSlider` WRITE;
/*!40000 ALTER TABLE `btImageSlider` DISABLE KEYS */;
/*!40000 ALTER TABLE `btImageSlider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btImageSliderEntries`
--

DROP TABLE IF EXISTS `btImageSliderEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT 0,
  `fID` int(10) unsigned DEFAULT 0,
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT 0,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btImageSliderEntries`
--

LOCK TABLES `btImageSliderEntries` WRITE;
/*!40000 ALTER TABLE `btImageSliderEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btImageSliderEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT 1,
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT 0,
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT 0,
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT 1,
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageAttributeDisplay`
--

DROP TABLE IF EXISTS `btPageAttributeDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  `delimiter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageAttributeDisplay`
--

LOCK TABLES `btPageAttributeDisplay` WRITE;
/*!40000 ALTER TABLE `btPageAttributeDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageAttributeDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) unsigned NOT NULL DEFAULT 1,
  `cThis` tinyint(1) NOT NULL DEFAULT 0,
  `cThisParent` tinyint(1) NOT NULL DEFAULT 0,
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT 0,
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT 0,
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT 0,
  `filterDateOption` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) unsigned NOT NULL DEFAULT 0,
  `filterDateStart` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT 0,
  `includeName` tinyint(1) NOT NULL DEFAULT 1,
  `includeDescription` tinyint(1) NOT NULL DEFAULT 1,
  `includeDate` tinyint(1) NOT NULL DEFAULT 0,
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT 0,
  `paginate` tinyint(1) NOT NULL DEFAULT 0,
  `displayAliases` tinyint(1) NOT NULL DEFAULT 1,
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT 0,
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT 0,
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT 0,
  `truncateSummaries` int(11) DEFAULT 0,
  `displayFeaturedOnly` tinyint(1) DEFAULT 0,
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT 0,
  `truncateChars` int(11) DEFAULT 128,
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageTitle`
--

DROP TABLE IF EXISTS `btPageTitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT 0,
  `useFilterTitle` int(10) unsigned DEFAULT 0,
  `useFilterTopic` int(10) unsigned DEFAULT 0,
  `useFilterTag` int(10) unsigned DEFAULT 0,
  `useFilterDate` int(10) unsigned DEFAULT 0,
  `topicTextFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagTextFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateTextFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageTitle`
--

LOCK TABLES `btPageTitle` WRITE;
/*!40000 ALTER TABLE `btPageTitle` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageTitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT 5,
  `showSummary` tinyint(1) NOT NULL DEFAULT 1,
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
INSERT INTO `btRssDisplay` VALUES (7,'Tutorials','http://documentation.concrete5.org/rss/tutorials','',1,1,1),(13,'News from concrete5.org','http://www.concrete5.org/rss/blog','',3,1,1);
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btShareThisPage`
--

DROP TABLE IF EXISTS `btShareThisPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT 0,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btShareThisPage`
--

LOCK TABLES `btShareThisPage` WRITE;
/*!40000 ALTER TABLE `btShareThisPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btShareThisPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSocialLinks`
--

DROP TABLE IF EXISTS `btSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT 0,
  `slID` int(10) unsigned DEFAULT 0,
  `displayOrder` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSocialLinks`
--

LOCK TABLES `btSocialLinks` WRITE;
/*!40000 ALTER TABLE `btSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT 0,
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT 0,
  `uID` int(10) unsigned DEFAULT 0,
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSwitchLanguage`
--

DROP TABLE IF EXISTS `btSwitchLanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSwitchLanguage`
--

LOCK TABLES `btSwitchLanguage` WRITE;
/*!40000 ALTER TABLE `btSwitchLanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSwitchLanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT 10,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTestimonial`
--

DROP TABLE IF EXISTS `btTestimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT 0,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTestimonial`
--

LOCK TABLES `btTestimonial` WRITE;
/*!40000 ALTER TABLE `btTestimonial` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTestimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTopicList`
--

DROP TABLE IF EXISTS `btTopicList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTopicList` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT 0,
  `cParentID` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTopicList`
--

LOCK TABLES `btTopicList` WRITE;
/*!40000 ALTER TABLE `btTopicList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTopicList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT 0,
  `oggfID` int(10) unsigned DEFAULT 0,
  `posterfID` int(10) unsigned DEFAULT 0,
  `mp4fID` int(10) unsigned DEFAULT 0,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT 0,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controls` int(10) unsigned DEFAULT NULL,
  `iv_load_policy` int(10) unsigned DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT 0,
  `modestbranding` tinyint(1) NOT NULL DEFAULT 0,
  `rel` tinyint(1) NOT NULL DEFAULT 0,
  `showinfo` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaPage`
--

DROP TABLE IF EXISTS `gaPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gaPage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaPage`
--

LOCK TABLES `gaPage` WRITE;
/*!40000 ALTER TABLE `gaPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gaPage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-04  6:46:30
