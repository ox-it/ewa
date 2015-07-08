CREATE DATABASE  IF NOT EXISTS `ewa_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ewa_db`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: ewa_db
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `ewa_acos`
--

DROP TABLE IF EXISTS `ewa_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_acos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(11) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_acos`
--

LOCK TABLES `ewa_acos` WRITE;
/*!40000 ALTER TABLE `ewa_acos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_affiliations`
--

DROP TABLE IF EXISTS `ewa_affiliations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_affiliations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_affiliations`
--

LOCK TABLES `ewa_affiliations` WRITE;
/*!40000 ALTER TABLE `ewa_affiliations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_affiliations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_affiliations_users`
--

DROP TABLE IF EXISTS `ewa_affiliations_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_affiliations_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `affiliation_id` int(11) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `affiliation_ix` (`affiliation_id`),
  KEY `user_ix` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_affiliations_users`
--

LOCK TABLES `ewa_affiliations_users` WRITE;
/*!40000 ALTER TABLE `ewa_affiliations_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_affiliations_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_aros`
--

DROP TABLE IF EXISTS `ewa_aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_aros` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(11) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_aros`
--

LOCK TABLES `ewa_aros` WRITE;
/*!40000 ALTER TABLE `ewa_aros` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_aros_acos`
--

DROP TABLE IF EXISTS `ewa_aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_aros_acos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(11) unsigned DEFAULT NULL,
  `aco_id` int(11) unsigned DEFAULT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_aros_acos`
--

LOCK TABLES `ewa_aros_acos` WRITE;
/*!40000 ALTER TABLE `ewa_aros_acos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_assertion_types`
--

DROP TABLE IF EXISTS `ewa_assertion_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_assertion_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_assertion_types`
--

LOCK TABLES `ewa_assertion_types` WRITE;
/*!40000 ALTER TABLE `ewa_assertion_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_assertion_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_assertion_types_assets`
--

DROP TABLE IF EXISTS `ewa_assertion_types_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_assertion_types_assets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text,
  `confidence` tinyint(1) DEFAULT '0',
  `assertion_type_id` int(11) unsigned DEFAULT '0',
  `asset_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `asset_ix` (`asset_id`),
  KEY `assertion_type_ix` (`assertion_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_assertion_types_assets`
--

LOCK TABLES `ewa_assertion_types_assets` WRITE;
/*!40000 ALTER TABLE `ewa_assertion_types_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_assertion_types_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_asset_types`
--

DROP TABLE IF EXISTS `ewa_asset_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_asset_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_asset_types`
--

LOCK TABLES `ewa_asset_types` WRITE;
/*!40000 ALTER TABLE `ewa_asset_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_asset_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_assets`
--

DROP TABLE IF EXISTS `ewa_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_assets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ordering` int(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `entry_id` int(11) NOT NULL,
  `asset_type_id` int(6) unsigned DEFAULT NULL,
  `markup` varchar(255) DEFAULT NULL,
  `tk_licence_type_id` int(6) unsigned DEFAULT NULL,
  `cc_licence_type_id` int(6) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `contacted_back` tinyint(2) unsigned DEFAULT '0',
  `file` varchar(200) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `basename` varchar(255) DEFAULT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `copyright` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_assets`
--

LOCK TABLES `ewa_assets` WRITE;
/*!40000 ALTER TABLE `ewa_assets` DISABLE KEYS */;
INSERT INTO `ewa_assets` VALUES (1,NULL,'test png','teset',0,NULL,NULL,NULL,NULL,NULL,0,'/srv/www/nsmsweb23.nsms.ox.ac.uk/2b72/htdocs/webroot/media/transfer/img/screen_shot_2014_09_30_at_17_09_11.png','img','screen_shot_2014_09_30_at_17_09_11.png','57169edf17a3b1dbe4c9013fc022b36a',0,0,'2014-12-23 17:56:04',0,'2014-12-23 17:56:04',0),(2,NULL,'','Engl. Robin.- robin Som., Cher., Surr., Dev., Lanc., York., Clyde, Dmf., Scot., Ire., roabin c.Scot., roberd, robinet (-), robin-breestie Gall., rob-robin Wellington, robin-redbreast Dmf., Ulster wspr. Ã°3.2.54..- redbreast Ulster wspr., ridbreast (-), ruddock Corn., York., Engl., Scot., ruddock Suff., n.Cy., reddock Dors., Devon, reddick Dors., ryddick Devon, ruddick Som., Devon, robin-reddock, robin riddick, robin-ruddock Glo., Suss., Hmp., Som., Devon, w.Cy., robin-hirdick, hirdick Som. (metath. of riddick) Ã°3.2.52..- red-robin Lanc., w.York., Devon, redereke Devon (not redeveke) robin-roid Perths., robin-ruck n. Engl., robin-rook Kent Ã°3.2.53..- bob Not., Som., e.Angl., bobby Som., War., Wor., Devon, bob-robin Som., Surr., bobby-eric, boberrick Som. (bob + riddick) Ã°4.5.13..- ploughman\'s bird York., farewell summer Dev., n.Cy., god\'s bird Donegal, god\'s cock Ulster, because it is considered beneficient; pausty-legs Dev. (cf. port. canela fina \"thin leg\"), spideog Ire.: Cavan, spiddiock n.w. Ulster, spidgeog Mullaslim (< gael).\r\n[white robin Ches. \"only if it lays white eggs\" (!) it never does; this is a name of the Chaffinch, 432; tommy-liden, thomas gierdet = Wren, 406]\r\n',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,'2015-01-07 12:59:23',0,'2015-01-07 12:59:23',0),(3,NULL,'','Engl. Robin.- robin Som., Cher., Surr., Dev., Lanc., York., Clyde, Dmf., Scot., Ire., roabin c.Scot., roberd, robinet (-), robin-breestie Gall., rob-robin Wellington, robin-redbreast Dmf., Ulster wspr. Ã°3.2.54..- redbreast Ulster wspr., ridbreast (-), ruddock Corn., York., Engl., Scot., ruddock Suff., n.Cy., reddock Dors., Devon, reddick Dors., ryddick Devon, ruddick Som., Devon, robin-reddock, robin riddick, robin-ruddock Glo., Suss., Hmp., Som., Devon, w.Cy., robin-hirdick, hirdick Som. (metath. of riddick) Ã°3.2.52..- red-robin Lanc., w.York., Devon, redereke Devon (not redeveke) robin-roid Perths., robin-ruck n. Engl., robin-rook Kent Ã°3.2.53..- bob Not., Som., e.Angl., bobby Som., War., Wor., Devon, bob-robin Som., Surr., bobby-eric, boberrick Som. (bob + riddick) Ã°4.5.13..- ploughman\'s bird York., farewell summer Dev., n.Cy., god\'s bird Donegal, god\'s cock Ulster, because it is considered beneficient; pausty-legs Dev. (cf. port. canela fina \"thin leg\"), spideog Ire.: Cavan, spiddiock n.w. Ulster, spidgeog Mullaslim (< gael).\r\n[white robin Ches. \"only if it lays white eggs\" (!) it never does; this is a name of the Chaffinch, 432; tommy-liden, thomas gierdet = Wren, 406]\r\n',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,'2015-01-07 12:59:29',0,'2015-01-07 12:59:29',0),(4,NULL,'','Engl. Robin.- robin Som., Cher., Surr., Dev., Lanc., York., Clyde, Dmf., Scot., Ire., roabin c.Scot., roberd, robinet (-), robin-breestie Gall., rob-robin Wellington, robin-redbreast Dmf., Ulster wspr. Ã°3.2.54..- redbreast Ulster wspr., ridbreast (-), ruddock Corn., York., Engl., Scot., ruddock Suff., n.Cy., reddock Dors., Devon, reddick Dors., ryddick Devon, ruddick Som., Devon, robin-reddock, robin riddick, robin-ruddock Glo., Suss., Hmp., Som., Devon, w.Cy., robin-hirdick, hirdick Som. (metath. of riddick) Ã°3.2.52..- red-robin Lanc., w.York., Devon, redereke Devon (not redeveke) robin-roid Perths., robin-ruck n. Engl., robin-rook Kent Ã°3.2.53..- bob Not., Som., e.Angl., bobby Som., War., Wor., Devon, bob-robin Som., Surr., bobby-eric, boberrick Som. (bob + riddick) Ã°4.5.13..- ploughman\'s bird York., farewell summer Dev., n.Cy., god\'s bird Donegal, god\'s cock Ulster, because it is considered beneficient; pausty-legs Dev. (cf. port. canela fina \"thin leg\"), spideog Ire.: Cavan, spiddiock n.w. Ulster, spidgeog Mullaslim (< gael).\r\n[white robin Ches. \"only if it lays white eggs\" (!) it never does; this is a name of the Chaffinch, 432; tommy-liden, thomas gierdet = Wren, 406]\r\n',0,NULL,NULL,NULL,NULL,NULL,0,'/srv/www/nsmsweb23.nsms.ox.ac.uk/2b72/htdocs/webroot/media/transfer/img/screen_shot_2014_12_18_at_11_08_31.png','img','screen_shot_2014_12_18_at_11_08_31.png','9e031958fdba31c1235616f572411abe',0,0,'2015-01-07 12:59:51',0,'2015-01-07 12:59:51',0),(5,NULL,'test','Engl. Robin.- robin Som., Cher., Surr., Dev., Lanc., York., Clyde, Dmf., Scot., Ire., roabin c.Scot., roberd, robinet (-), robin-breestie Gall., rob-robin Wellington, robin-redbreast Dmf., Ulster wspr. Ã°3.2.54..- redbreast Ulster wspr., ridbreast (-), ruddock Corn., York., Engl., Scot., ruddock Suff., n.Cy., reddock Dors., Devon, reddick Dors., ryddick Devon, ruddick Som., Devon, robin-reddock, robin riddick, robin-ruddock Glo., Suss., Hmp., Som., Devon, w.Cy., robin-hirdick, hirdick Som. (metath. of riddick) Ã°3.2.52..- red-robin Lanc., w.York., Devon, redereke Devon (not redeveke) robin-roid Perths., robin-ruck n. Engl., robin-rook Kent Ã°3.2.53..- bob Not., Som., e.Angl., bobby Som., War., Wor., Devon, bob-robin Som., Surr., bobby-eric, boberrick Som. (bob + riddick) Ã°4.5.13..- ploughman\'s bird York., farewell summer Dev., n.Cy., god\'s bird Donegal, god\'s cock Ulster, because it is considered beneficient; pausty-legs Dev. (cf. port. canela fina \"thin leg\"), spideog Ire.: Cavan, spiddiock n.w. Ulster, spidgeog Mullaslim (< gael).\r\n[white robin Ches. \"only if it lays white eggs\" (!) it never does; this is a name of the Chaffinch, 432; tommy-liden, thomas gierdet = Wren, 406]\r\n',0,NULL,NULL,NULL,NULL,NULL,0,'/srv/www/nsmsweb23.nsms.ox.ac.uk/2b72/htdocs/webroot/media/transfer/img/screen_shot_2014_12_18_at_11_08_31_2.png','img','screen_shot_2014_12_18_at_11_08_31_2.png','9e031958fdba31c1235616f572411abe',0,0,'2015-01-07 13:08:30',0,'2015-01-07 13:08:30',0),(6,NULL,'','This is a story',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,'2015-01-08 14:24:54',0,'2015-01-08 14:24:54',0),(7,NULL,'test text file','This is a story about a text file',0,NULL,NULL,NULL,NULL,NULL,0,'/srv/www/nsmsweb23.nsms.ox.ac.uk/2b72/htdocs/webroot/media/transfer/txt/test_for_ewa.txt','txt','test_for_ewa.txt','552e21cd4cd9918678e3c1a0df491bc3',0,0,'2015-01-08 14:27:27',0,'2015-01-08 14:27:27',0),(8,NULL,'test text file','This is a story about a text file',0,NULL,NULL,NULL,NULL,NULL,0,'/srv/www/nsmsweb23.nsms.ox.ac.uk/2b72/htdocs/webroot/media/transfer/txt/test_for_ewa_2.txt','txt','test_for_ewa_2.txt','552e21cd4cd9918678e3c1a0df491bc3',0,0,'2015-01-08 14:28:00',0,'2015-01-08 14:28:00',0),(9,NULL,'Pride of Kadavu','Endemic to islands of Kadavu',0,NULL,NULL,NULL,NULL,NULL,0,'/srv/www/nsmsweb23.nsms.ox.ac.uk/2b72/htdocs/webroot/media/transfer/img/94649644_rb1moulm_prideofkadavu.jpg','img','94649644_rb1moulm_prideofkadavu.jpg','e3309f1d1848edccc14e2c55852d4c64',0,0,'2015-01-23 10:31:19',0,'2015-01-23 10:31:19',0),(10,NULL,'','test story',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,'2015-01-27 09:14:30',0,'2015-01-27 09:14:30',0),(11,NULL,'','test story',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,'2015-01-27 09:14:33',0,'2015-01-27 09:14:33',0),(12,NULL,'test','test story',0,NULL,NULL,NULL,NULL,NULL,0,'/srv/www/nsmsweb23.nsms.ox.ac.uk/2b72/htdocs/webroot/media/transfer/img/2011_may_garay_community_feather_ornaments_crop_green.jpg','img','2011_may_garay_community_feather_ornaments_crop_green.jpg','fef5d2e3078b2dea4a809a89a0aca028',0,0,'2015-01-27 09:15:08',0,'2015-01-27 09:15:08',0),(13,NULL,'','The barn swallow is called a chitterling in the chilterns.',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,'2015-01-27 10:25:17',0,'2015-01-27 10:25:17',0),(14,NULL,'Boobook photo','When the Boobook calls at night it means that summer is nearly here.',0,NULL,NULL,NULL,NULL,NULL,0,'/srv/www/nsmsweb23.nsms.ox.ac.uk/2b72/htdocs/webroot/media/transfer/img/boobook.jpg','img','boobook.jpg','336e93b95fd7ef4283962d9f5bcb074e',0,0,'2015-01-28 09:08:17',0,'2015-01-28 09:08:17',0),(15,NULL,'Photo of a Souther Boobook','When the Boobook calls at night it means that summer is nearly here.',0,NULL,NULL,NULL,NULL,NULL,0,'/srv/www/nsmsweb23.nsms.ox.ac.uk/2b72/htdocs/webroot/media/transfer/img/boobook_2.jpg','img','boobook_2.jpg','336e93b95fd7ef4283962d9f5bcb074e',0,0,'2015-01-28 09:12:59',0,'2015-01-28 09:12:59',0),(16,NULL,'THis is a odd image to have','test an image',0,NULL,NULL,NULL,NULL,NULL,0,'/Users/richardb/Sites/ewa/webroot/media/transfer/img/2011_07_14_ictfc_adobe_feebies.jpg','img','2011_07_14_ictfc_adobe_feebies.jpg','f6c80842be3f09f2328ad88a011e3c78',0,0,'2015-02-16 14:12:27',3,'2015-02-16 14:12:27',3);
/*!40000 ALTER TABLE `ewa_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_assets_birds`
--

DROP TABLE IF EXISTS `ewa_assets_birds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_assets_birds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL DEFAULT '0',
  `bird_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_assets_birds`
--

LOCK TABLES `ewa_assets_birds` WRITE;
/*!40000 ALTER TABLE `ewa_assets_birds` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_assets_birds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_assets_breeds`
--

DROP TABLE IF EXISTS `ewa_assets_breeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_assets_breeds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned DEFAULT '0',
  `breed_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `asset_ix` (`asset_id`),
  KEY `breed_ix` (`breed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_assets_breeds`
--

LOCK TABLES `ewa_assets_breeds` WRITE;
/*!40000 ALTER TABLE `ewa_assets_breeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_assets_breeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_assets_languages`
--

DROP TABLE IF EXISTS `ewa_assets_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_assets_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned DEFAULT '0',
  `language_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `asset_ix` (`asset_id`),
  KEY `language_ix` (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_assets_languages`
--

LOCK TABLES `ewa_assets_languages` WRITE;
/*!40000 ALTER TABLE `ewa_assets_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_assets_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_assets_tk_label_types`
--

DROP TABLE IF EXISTS `ewa_assets_tk_label_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_assets_tk_label_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned DEFAULT '0',
  `tk_label_type_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `asset_ix` (`asset_id`),
  KEY `tk_label_type_ix` (`tk_label_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_assets_tk_label_types`
--

LOCK TABLES `ewa_assets_tk_label_types` WRITE;
/*!40000 ALTER TABLE `ewa_assets_tk_label_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_assets_tk_label_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_birds`
--

DROP TABLE IF EXISTS `ewa_birds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_birds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `conservation` text,
  `other` text,
  `genus_id` int(11) unsigned DEFAULT '0',
  `breed_id` int(11) unsigned DEFAULT '0',
  `common_id` int(11) unsigned DEFAULT '0',
  `biological` tinyint(1) DEFAULT '0',
  `mythological` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_birds`
--

LOCK TABLES `ewa_birds` WRITE;
/*!40000 ALTER TABLE `ewa_birds` DISABLE KEYS */;
INSERT INTO `ewa_birds` VALUES (1,23,'','Red, blue, and green\r\napproximately 45cm beak to tail','Habitat loss','Fijian name - Kaka, related to call',NULL,NULL,NULL,0,0,0,'2015-01-23 10:35:58',0,'2015-01-23 10:35:58',0),(2,26,'','Owl','','',NULL,NULL,NULL,0,0,0,'2015-01-28 09:09:43',0,'2015-01-28 09:09:43',0),(3,26,'','Owl','','',NULL,NULL,NULL,0,0,0,'2015-01-28 09:13:59',0,'2015-01-28 09:13:59',0);
/*!40000 ALTER TABLE `ewa_birds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_birds_entries`
--

DROP TABLE IF EXISTS `ewa_birds_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_birds_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `bird_id` int(11) unsigned DEFAULT '0',
  `ordering` int(4) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_birds_entries`
--

LOCK TABLES `ewa_birds_entries` WRITE;
/*!40000 ALTER TABLE `ewa_birds_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_birds_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_birds_folk_names`
--

DROP TABLE IF EXISTS `ewa_birds_folk_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_birds_folk_names` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bird_id` int(11) unsigned DEFAULT '0',
  `folk_name_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_birds_folk_names`
--

LOCK TABLES `ewa_birds_folk_names` WRITE;
/*!40000 ALTER TABLE `ewa_birds_folk_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_birds_folk_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_breeds`
--

DROP TABLE IF EXISTS `ewa_breeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_breeds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `genus_id` int(11) unsigned DEFAULT '0',
  `status_id` int(4) unsigned DEFAULT '0',
  `SpcRecID` int(4) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_breeds`
--

LOCK TABLES `ewa_breeds` WRITE;
/*!40000 ALTER TABLE `ewa_breeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_breeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_cc_licence_types`
--

DROP TABLE IF EXISTS `ewa_cc_licence_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_cc_licence_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_cc_licence_types`
--

LOCK TABLES `ewa_cc_licence_types` WRITE;
/*!40000 ALTER TABLE `ewa_cc_licence_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_cc_licence_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_collections`
--

DROP TABLE IF EXISTS `ewa_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_collections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `home_page` tinyint(1) DEFAULT '0',
  `file` varchar(200) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `basename` varchar(255) DEFAULT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_collections`
--

LOCK TABLES `ewa_collections` WRITE;
/*!40000 ALTER TABLE `ewa_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_collections_entries`
--

DROP TABLE IF EXISTS `ewa_collections_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_collections_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `collection_ix` (`collection_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_collections_entries`
--

LOCK TABLES `ewa_collections_entries` WRITE;
/*!40000 ALTER TABLE `ewa_collections_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_collections_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_comments`
--

DROP TABLE IF EXISTS `ewa_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_comments`
--

LOCK TABLES `ewa_comments` WRITE;
/*!40000 ALTER TABLE `ewa_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_commons`
--

DROP TABLE IF EXISTS `ewa_commons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_commons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `breed_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_commons`
--

LOCK TABLES `ewa_commons` WRITE;
/*!40000 ALTER TABLE `ewa_commons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_commons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_communities`
--

DROP TABLE IF EXISTS `ewa_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_communities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `location` varchar(250) NOT NULL DEFAULT '',
  `website` varchar(250) NOT NULL DEFAULT '',
  `file` varchar(200) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `basename` varchar(255) DEFAULT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_communities`
--

LOCK TABLES `ewa_communities` WRITE;
/*!40000 ALTER TABLE `ewa_communities` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_communities_users`
--

DROP TABLE IF EXISTS `ewa_communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_communities_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(11) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `community_ix` (`community_id`),
  KEY `user_ix` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_communities_users`
--

LOCK TABLES `ewa_communities_users` WRITE;
/*!40000 ALTER TABLE `ewa_communities_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_contributors`
--

DROP TABLE IF EXISTS `ewa_contributors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_contributors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `person_type_id` int(6) NOT NULL DEFAULT '0',
  `notes` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_contributors`
--

LOCK TABLES `ewa_contributors` WRITE;
/*!40000 ALTER TABLE `ewa_contributors` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_contributors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_countries`
--

DROP TABLE IF EXISTS `ewa_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_countries` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_countries`
--

LOCK TABLES `ewa_countries` WRITE;
/*!40000 ALTER TABLE `ewa_countries` DISABLE KEYS */;
INSERT INTO `ewa_countries` VALUES (1,'US','United States',0,NULL,0,NULL,0),(2,'CA','Canada',0,NULL,0,NULL,0),(3,'AF','Afghanistan',0,NULL,0,NULL,0),(4,'AL','Albania',0,NULL,0,NULL,0),(5,'DZ','Algeria',0,NULL,0,NULL,0),(6,'DS','American Samoa',0,NULL,0,NULL,0),(7,'AD','Andorra',0,NULL,0,NULL,0),(8,'AO','Angola',0,NULL,0,NULL,0),(9,'AI','Anguilla',0,NULL,0,NULL,0),(10,'AQ','Antarctica',0,NULL,0,NULL,0),(11,'AG','Antigua and/or Barbuda',0,NULL,0,NULL,0),(12,'AR','Argentina',0,NULL,0,NULL,0),(13,'AM','Armenia',0,NULL,0,NULL,0),(14,'AW','Aruba',0,NULL,0,NULL,0),(15,'AU','Australia',0,NULL,0,NULL,0),(16,'AT','Austria',0,NULL,0,NULL,0),(17,'AZ','Azerbaijan',0,NULL,0,NULL,0),(18,'BS','Bahamas',0,NULL,0,NULL,0),(19,'BH','Bahrain',0,NULL,0,NULL,0),(20,'BD','Bangladesh',0,NULL,0,NULL,0),(21,'BB','Barbados',0,NULL,0,NULL,0),(22,'BY','Belarus',0,NULL,0,NULL,0),(23,'BE','Belgium',0,NULL,0,NULL,0),(24,'BZ','Belize',0,NULL,0,NULL,0),(25,'BJ','Benin',0,NULL,0,NULL,0),(26,'BM','Bermuda',0,NULL,0,NULL,0),(27,'BT','Bhutan',0,NULL,0,NULL,0),(28,'BO','Bolivia',0,NULL,0,NULL,0),(29,'BA','Bosnia and Herzegovina',0,NULL,0,NULL,0),(30,'BW','Botswana',0,NULL,0,NULL,0),(31,'BV','Bouvet Island',0,NULL,0,NULL,0),(32,'BR','Brazil',0,NULL,0,NULL,0),(33,'IO','British lndian Ocean Territory',0,NULL,0,NULL,0),(34,'BN','Brunei Darussalam',0,NULL,0,NULL,0),(35,'BG','Bulgaria',0,NULL,0,NULL,0),(36,'BF','Burkina Faso',0,NULL,0,NULL,0),(37,'BI','Burundi',0,NULL,0,NULL,0),(38,'KH','Cambodia',0,NULL,0,NULL,0),(39,'CM','Cameroon',0,NULL,0,NULL,0),(40,'CV','Cape Verde',0,NULL,0,NULL,0),(41,'KY','Cayman Islands',0,NULL,0,NULL,0),(42,'CF','Central African Republic',0,NULL,0,NULL,0),(43,'TD','Chad',0,NULL,0,NULL,0),(44,'CL','Chile',0,NULL,0,NULL,0),(45,'CN','China',0,NULL,0,NULL,0),(46,'CX','Christmas Island',0,NULL,0,NULL,0),(47,'CC','Cocos (Keeling) Islands',0,NULL,0,NULL,0),(48,'CO','Colombia',0,NULL,0,NULL,0),(49,'KM','Comoros',0,NULL,0,NULL,0),(50,'CG','Congo',0,NULL,0,NULL,0),(51,'CK','Cook Islands',0,NULL,0,NULL,0),(52,'CR','Costa Rica',0,NULL,0,NULL,0),(53,'HR','Croatia (Hrvatska)',0,NULL,0,NULL,0),(54,'CU','Cuba',0,NULL,0,NULL,0),(55,'CY','Cyprus',0,NULL,0,NULL,0),(56,'CZ','Czech Republic',0,NULL,0,NULL,0),(57,'DK','Denmark',0,NULL,0,NULL,0),(58,'DJ','Djibouti',0,NULL,0,NULL,0),(59,'DM','Dominica',0,NULL,0,NULL,0),(60,'DO','Dominican Republic',0,NULL,0,NULL,0),(61,'TP','East Timor',0,NULL,0,NULL,0),(62,'EC','Ecuador',0,NULL,0,NULL,0),(63,'EG','Egypt',0,NULL,0,NULL,0),(64,'SV','El Salvador',0,NULL,0,NULL,0),(65,'GQ','Equatorial Guinea',0,NULL,0,NULL,0),(66,'ER','Eritrea',0,NULL,0,NULL,0),(67,'EE','Estonia',0,NULL,0,NULL,0),(68,'ET','Ethiopia',0,NULL,0,NULL,0),(69,'FK','Falkland Islands (Malvinas)',0,NULL,0,NULL,0),(70,'FO','Faroe Islands',0,NULL,0,NULL,0),(71,'FJ','Fiji',0,NULL,0,NULL,0),(72,'FI','Finland',0,NULL,0,NULL,0),(73,'FR','France',0,NULL,0,NULL,0),(74,'FX','France, Metropolitan',0,NULL,0,NULL,0),(75,'GF','French Guiana',0,NULL,0,NULL,0),(76,'PF','French Polynesia',0,NULL,0,NULL,0),(77,'TF','French Southern Territories',0,NULL,0,NULL,0),(78,'GA','Gabon',0,NULL,0,NULL,0),(79,'GM','Gambia',0,NULL,0,NULL,0),(80,'GE','Georgia',0,NULL,0,NULL,0),(81,'DE','Germany',0,NULL,0,NULL,0),(82,'GH','Ghana',0,NULL,0,NULL,0),(83,'GI','Gibraltar',0,NULL,0,NULL,0),(84,'GR','Greece',0,NULL,0,NULL,0),(85,'GL','Greenland',0,NULL,0,NULL,0),(86,'GD','Grenada',0,NULL,0,NULL,0),(87,'GP','Guadeloupe',0,NULL,0,NULL,0),(88,'GU','Guam',0,NULL,0,NULL,0),(89,'GT','Guatemala',0,NULL,0,NULL,0),(90,'GN','Guinea',0,NULL,0,NULL,0),(91,'GW','Guinea-Bissau',0,NULL,0,NULL,0),(92,'GY','Guyana',0,NULL,0,NULL,0),(93,'HT','Haiti',0,NULL,0,NULL,0),(94,'HM','Heard and Mc Donald Islands',0,NULL,0,NULL,0),(95,'HN','Honduras',0,NULL,0,NULL,0),(96,'HK','Hong Kong',0,NULL,0,NULL,0),(97,'HU','Hungary',0,NULL,0,NULL,0),(98,'IS','Iceland',0,NULL,0,NULL,0),(99,'IN','India',0,NULL,0,NULL,0),(100,'ID','Indonesia',0,NULL,0,NULL,0),(101,'IR','Iran (Islamic Republic of)',0,NULL,0,NULL,0),(102,'IQ','Iraq',0,NULL,0,NULL,0),(103,'IE','Ireland',0,NULL,0,NULL,0),(104,'IL','Israel',0,NULL,0,NULL,0),(105,'IT','Italy',0,NULL,0,NULL,0),(106,'CI','Ivory Coast',0,NULL,0,NULL,0),(107,'JM','Jamaica',0,NULL,0,NULL,0),(108,'JP','Japan',0,NULL,0,NULL,0),(109,'JO','Jordan',0,NULL,0,NULL,0),(110,'KZ','Kazakhstan',0,NULL,0,NULL,0),(111,'KE','Kenya',0,NULL,0,NULL,0),(112,'KI','Kiribati',0,NULL,0,NULL,0),(113,'KP','Korea, Democratic People\'s Republic of',0,NULL,0,NULL,0),(114,'KR','Korea, Republic of',0,NULL,0,NULL,0),(115,'XK','Kosovo',0,NULL,0,NULL,0),(116,'KW','Kuwait',0,NULL,0,NULL,0),(117,'KG','Kyrgyzstan',0,NULL,0,NULL,0),(118,'LA','Lao People\'s Democratic Republic',0,NULL,0,NULL,0),(119,'LV','Latvia',0,NULL,0,NULL,0),(120,'LB','Lebanon',0,NULL,0,NULL,0),(121,'LS','Lesotho',0,NULL,0,NULL,0),(122,'LR','Liberia',0,NULL,0,NULL,0),(123,'LY','Libyan Arab Jamahiriya',0,NULL,0,NULL,0),(124,'LI','Liechtenstein',0,NULL,0,NULL,0),(125,'LT','Lithuania',0,NULL,0,NULL,0),(126,'LU','Luxembourg',0,NULL,0,NULL,0),(127,'MO','Macau',0,NULL,0,NULL,0),(128,'MK','Macedonia',0,NULL,0,NULL,0),(129,'MG','Madagascar',0,NULL,0,NULL,0),(130,'MW','Malawi',0,NULL,0,NULL,0),(131,'MY','Malaysia',0,NULL,0,NULL,0),(132,'MV','Maldives',0,NULL,0,NULL,0),(133,'ML','Mali',0,NULL,0,NULL,0),(134,'MT','Malta',0,NULL,0,NULL,0),(135,'MH','Marshall Islands',0,NULL,0,NULL,0),(136,'MQ','Martinique',0,NULL,0,NULL,0),(137,'MR','Mauritania',0,NULL,0,NULL,0),(138,'MU','Mauritius',0,NULL,0,NULL,0),(139,'TY','Mayotte',0,NULL,0,NULL,0),(140,'MX','Mexico',0,NULL,0,NULL,0),(141,'FM','Micronesia, Federated States of',0,NULL,0,NULL,0),(142,'MD','Moldova, Republic of',0,NULL,0,NULL,0),(143,'MC','Monaco',0,NULL,0,NULL,0),(144,'MN','Mongolia',0,NULL,0,NULL,0),(145,'ME','Montenegro',0,NULL,0,NULL,0),(146,'MS','Montserrat',0,NULL,0,NULL,0),(147,'MA','Morocco',0,NULL,0,NULL,0),(148,'MZ','Mozambique',0,NULL,0,NULL,0),(149,'MM','Myanmar',0,NULL,0,NULL,0),(150,'NA','Namibia',0,NULL,0,NULL,0),(151,'NR','Nauru',0,NULL,0,NULL,0),(152,'NP','Nepal',0,NULL,0,NULL,0),(153,'NL','Netherlands',0,NULL,0,NULL,0),(154,'AN','Netherlands Antilles',0,NULL,0,NULL,0),(155,'NC','New Caledonia',0,NULL,0,NULL,0),(156,'NZ','New Zealand',0,NULL,0,NULL,0),(157,'NI','Nicaragua',0,NULL,0,NULL,0),(158,'NE','Niger',0,NULL,0,NULL,0),(159,'NG','Nigeria',0,NULL,0,NULL,0),(160,'NU','Niue',0,NULL,0,NULL,0),(161,'NF','Norfork Island',0,NULL,0,NULL,0),(162,'MP','Northern Mariana Islands',0,NULL,0,NULL,0),(163,'NO','Norway',0,NULL,0,NULL,0),(164,'OM','Oman',0,NULL,0,NULL,0),(165,'PK','Pakistan',0,NULL,0,NULL,0),(166,'PW','Palau',0,NULL,0,NULL,0),(167,'PA','Panama',0,NULL,0,NULL,0),(168,'PG','Papua New Guinea',0,NULL,0,NULL,0),(169,'PY','Paraguay',0,NULL,0,NULL,0),(170,'PE','Peru',0,NULL,0,NULL,0),(171,'PH','Philippines',0,NULL,0,NULL,0),(172,'PN','Pitcairn',0,NULL,0,NULL,0),(173,'PL','Poland',0,NULL,0,NULL,0),(174,'PT','Portugal',0,NULL,0,NULL,0),(175,'PR','Puerto Rico',0,NULL,0,NULL,0),(176,'QA','Qatar',0,NULL,0,NULL,0),(177,'RE','Reunion',0,NULL,0,NULL,0),(178,'RO','Romania',0,NULL,0,NULL,0),(179,'RU','Russian Federation',0,NULL,0,NULL,0),(180,'RW','Rwanda',0,NULL,0,NULL,0),(181,'KN','Saint Kitts and Nevis',0,NULL,0,NULL,0),(182,'LC','Saint Lucia',0,NULL,0,NULL,0),(183,'VC','Saint Vincent and the Grenadines',0,NULL,0,NULL,0),(184,'WS','Samoa',0,NULL,0,NULL,0),(185,'SM','San Marino',0,NULL,0,NULL,0),(186,'ST','Sao Tome and Principe',0,NULL,0,NULL,0),(187,'SA','Saudi Arabia',0,NULL,0,NULL,0),(188,'SN','Senegal',0,NULL,0,NULL,0),(189,'RS','Serbia',0,NULL,0,NULL,0),(190,'SC','Seychelles',0,NULL,0,NULL,0),(191,'SL','Sierra Leone',0,NULL,0,NULL,0),(192,'SG','Singapore',0,NULL,0,NULL,0),(193,'SK','Slovakia',0,NULL,0,NULL,0),(194,'SI','Slovenia',0,NULL,0,NULL,0),(195,'SB','Solomon Islands',0,NULL,0,NULL,0),(196,'SO','Somalia',0,NULL,0,NULL,0),(197,'ZA','South Africa',0,NULL,0,NULL,0),(198,'GS','South Georgia South Sandwich Islands',0,NULL,0,NULL,0),(199,'ES','Spain',0,NULL,0,NULL,0),(200,'LK','Sri Lanka',0,NULL,0,NULL,0),(201,'SH','St. Helena',0,NULL,0,NULL,0),(202,'PM','St. Pierre and Miquelon',0,NULL,0,NULL,0),(203,'SD','Sudan',0,NULL,0,NULL,0),(204,'SR','Suriname',0,NULL,0,NULL,0),(205,'SJ','Svalbarn and Jan Mayen Islands',0,NULL,0,NULL,0),(206,'SZ','Swaziland',0,NULL,0,NULL,0),(207,'SE','Sweden',0,NULL,0,NULL,0),(208,'CH','Switzerland',0,NULL,0,NULL,0),(209,'SY','Syrian Arab Republic',0,NULL,0,NULL,0),(210,'TW','Taiwan',0,NULL,0,NULL,0),(211,'TJ','Tajikistan',0,NULL,0,NULL,0),(212,'TZ','Tanzania, United Republic of',0,NULL,0,NULL,0),(213,'TH','Thailand',0,NULL,0,NULL,0),(214,'TG','Togo',0,NULL,0,NULL,0),(215,'TK','Tokelau',0,NULL,0,NULL,0),(216,'TO','Tonga',0,NULL,0,NULL,0),(217,'TT','Trinidad and Tobago',0,NULL,0,NULL,0),(218,'TN','Tunisia',0,NULL,0,NULL,0),(219,'TR','Turkey',0,NULL,0,NULL,0),(220,'TM','Turkmenistan',0,NULL,0,NULL,0),(221,'TC','Turks and Caicos Islands',0,NULL,0,NULL,0),(222,'TV','Tuvalu',0,NULL,0,NULL,0),(223,'UG','Uganda',0,NULL,0,NULL,0),(224,'UA','Ukraine',0,NULL,0,NULL,0),(225,'AE','United Arab Emirates',0,NULL,0,NULL,0),(226,'GB','United Kingdom',0,NULL,0,NULL,0),(227,'UM','United States minor outlying islands',0,NULL,0,NULL,0),(228,'UY','Uruguay',0,NULL,0,NULL,0),(229,'UZ','Uzbekistan',0,NULL,0,NULL,0),(230,'VU','Vanuatu',0,NULL,0,NULL,0),(231,'VA','Vatican City State',0,NULL,0,NULL,0),(232,'VE','Venezuela',0,NULL,0,NULL,0),(233,'VN','Vietnam',0,NULL,0,NULL,0),(234,'VG','Virigan Islands (British)',0,NULL,0,NULL,0),(235,'VI','Virgin Islands (U.S.)',0,NULL,0,NULL,0),(236,'WF','Wallis and Futuna Islands',0,NULL,0,NULL,0),(237,'EH','Western Sahara',0,NULL,0,NULL,0),(238,'YE','Yemen',0,NULL,0,NULL,0),(239,'YU','Yugoslavia',0,NULL,0,NULL,0),(240,'ZR','Zaire',0,NULL,0,NULL,0),(241,'ZM','Zambia',0,NULL,0,NULL,0),(242,'ZW','Zimbabwe',0,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ewa_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_countries_entries`
--

DROP TABLE IF EXISTS `ewa_countries_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_countries_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `point` varchar(20) NOT NULL DEFAULT '',
  `country_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `country_ix` (`country_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_countries_entries`
--

LOCK TABLES `ewa_countries_entries` WRITE;
/*!40000 ALTER TABLE `ewa_countries_entries` DISABLE KEYS */;
INSERT INTO `ewa_countries_entries` VALUES (1,'1.54454,34.232',3,1,0,NULL,0,NULL,0),(2,'2.45454,35.565',3,2,0,NULL,0,NULL,0),(3,'3.4546,39.4546',3,26,0,NULL,0,NULL,0),(4,'32.45454,6.7',3,25,0,NULL,0,NULL,0),(5,'32.444,10.565',3,24,0,NULL,0,NULL,0),(6,'45.2323,45.1213',3,16,0,NULL,0,NULL,0),(7,'45.0,68.5656',3,17,0,NULL,0,NULL,0),(8,'78.232,56.54',3,20,0,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ewa_countries_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_cultures`
--

DROP TABLE IF EXISTS `ewa_cultures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_cultures` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(6) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_cultures`
--

LOCK TABLES `ewa_cultures` WRITE;
/*!40000 ALTER TABLE `ewa_cultures` DISABLE KEYS */;
INSERT INTO `ewa_cultures` VALUES (1,'aesthetics',NULL,1,2,0,'2014-12-13 16:08:21',0,'2014-12-13 16:08:21',0),(2,'ceremonial/ ritual',NULL,3,4,0,'2014-12-13 16:08:42',0,'2014-12-13 16:08:42',0),(3,'sacred/ divine/ spirit world',NULL,5,6,0,'2014-12-13 16:09:10',0,'2014-12-13 16:09:10',0),(4,'communication',NULL,7,16,0,'2014-12-13 16:09:21',0,'2014-12-13 16:09:21',0),(5,'augurs',4,8,9,0,'2014-12-13 16:10:01',0,'2014-12-13 16:10:01',0),(6,'omens',4,10,11,0,'2014-12-13 16:10:22',0,'2014-12-13 16:10:22',0),(7,'messengers',4,12,13,0,'2014-12-13 16:11:26',0,'2014-12-13 16:11:26',0),(8,'teachings',4,14,15,0,'2014-12-13 16:11:48',0,'2014-12-13 16:11:48',0),(9,'hunting knowledge & practice',NULL,17,18,0,'2014-12-13 16:12:57',0,'2014-12-13 16:12:57',0),(10,'philosophies',NULL,19,20,0,'2014-12-13 16:13:23',0,'2014-12-13 16:13:23',0),(11,'stewardship',NULL,21,22,0,'2014-12-13 16:13:46',0,'2014-12-13 16:13:46',0),(12,'community law',NULL,23,24,0,'2014-12-13 16:14:09',0,'2014-12-13 16:14:09',0),(13,'religious beliefs & practices',NULL,25,26,0,'2014-12-13 16:14:33',0,'2014-12-13 16:14:33',0),(14,'proper conduct',NULL,27,28,0,'2014-12-13 16:14:46',0,'2014-12-13 16:14:46',0),(15,'taboos, proscriptions, prescriptions',NULL,29,30,0,'2014-12-13 16:15:42',0,'2014-12-13 16:15:42',0),(16,'political/ rights & responsibilities',NULL,31,32,0,'2014-12-13 16:16:16',0,'2014-12-13 16:16:16',0),(17,'birds as characters',NULL,33,34,0,'2014-12-13 16:16:35',0,'2014-12-13 16:16:35',0),(18,'bird call knowledge/ emulations',NULL,35,36,0,'2014-12-13 16:17:20',0,'2014-12-13 16:17:20',0),(19,'education, teaching & learning',NULL,37,38,0,'2014-12-13 16:17:44',0,'2014-12-13 16:17:44',0),(20,'kinship',NULL,39,40,0,'2014-12-13 16:17:56',0,'2014-12-13 16:17:56',0),(21,'birth/newborns',NULL,41,42,0,'2014-12-13 16:18:36',0,'2014-12-13 16:18:36',0),(22,'childhood',NULL,43,44,0,'2014-12-13 16:18:54',0,'2014-12-13 16:18:54',0),(23,'adulthood',NULL,45,46,0,'2014-12-13 16:19:16',0,'2014-12-13 16:19:16',0),(24,'elderhood',NULL,47,48,0,'2014-12-13 16:19:35',0,'2014-12-13 16:19:35',0),(25,'death',NULL,49,50,0,'2014-12-13 16:19:56',0,'2014-12-13 16:19:56',0),(26,'sickness',NULL,51,52,0,'2014-12-13 16:20:36',0,'2014-12-13 16:20:36',0),(27,'meanings',NULL,53,66,0,'2014-12-13 16:20:56',0,'2014-12-13 16:20:56',0),(28,'myths',27,54,55,0,'2014-12-13 16:23:50',0,'2014-12-13 16:21:18',0),(29,'historical',27,56,57,0,'2014-12-13 16:24:18',0,'2014-12-13 16:21:38',0),(30,'colloquialisms',27,58,59,0,'2014-12-13 16:24:48',0,'2014-12-13 16:22:04',0),(31,'symbolisms',27,60,61,0,'2014-12-13 16:25:26',0,'2014-12-13 16:22:20',0),(32,'ontologies',27,62,63,0,'2014-12-13 16:26:21',0,'2014-12-13 16:22:38',0),(33,'totems',27,64,65,0,'2014-12-13 16:26:51',0,'2014-12-13 16:22:49',0),(34,'naming',NULL,67,78,0,'2014-12-13 16:27:26',0,'2014-12-13 16:27:26',0),(35,'folk-names',34,68,69,0,'2014-12-13 16:28:02',0,'2014-12-13 16:28:02',0),(36,'literal translations/ etymologies',34,70,71,0,'2014-12-13 16:28:27',0,'2014-12-13 16:28:27',0),(37,'folk-taxonomies',34,72,73,0,'2014-12-13 16:28:51',0,'2014-12-13 16:28:51',0),(38,'toponyms or personal names',34,74,75,0,'2014-12-13 16:29:20',0,'2014-12-13 16:29:20',0),(39,'onomatopoeia',34,76,77,0,'2014-12-13 16:29:36',0,'2014-12-13 16:29:36',0);
/*!40000 ALTER TABLE `ewa_cultures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_cultures_entries`
--

DROP TABLE IF EXISTS `ewa_cultures_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_cultures_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `culture_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `checked` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `culture_ix` (`culture_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_cultures_entries`
--

LOCK TABLES `ewa_cultures_entries` WRITE;
/*!40000 ALTER TABLE `ewa_cultures_entries` DISABLE KEYS */;
INSERT INTO `ewa_cultures_entries` VALUES (1,1,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(2,2,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(3,3,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(4,4,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(5,5,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(6,6,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(7,7,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(8,8,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(9,9,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(10,10,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(11,11,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(12,12,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(13,13,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(14,14,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(15,15,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(16,16,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(17,17,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(18,18,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(19,19,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(20,20,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(21,21,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(22,22,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(23,23,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(24,24,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(25,25,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(26,26,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(27,27,25,1,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(28,28,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(29,29,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(30,30,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(31,31,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(32,32,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(33,33,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(34,34,25,1,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(35,35,25,1,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(36,36,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(37,37,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(38,38,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0),(39,39,25,0,0,'2015-01-27 10:30:27',0,'2015-01-27 10:30:27',0);
/*!40000 ALTER TABLE `ewa_cultures_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_ecologies`
--

DROP TABLE IF EXISTS `ewa_ecologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_ecologies` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(6) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_ecologies`
--

LOCK TABLES `ewa_ecologies` WRITE;
/*!40000 ALTER TABLE `ewa_ecologies` DISABLE KEYS */;
INSERT INTO `ewa_ecologies` VALUES (1,'behavioural observations',NULL,1,10,0,'2014-12-05 01:50:10',0,'2014-12-05 01:50:10',0),(2,' relations w/ other life and landscape',1,2,3,0,'2014-12-05 01:50:42',0,'2014-12-05 01:50:42',0),(3,'seasonality',1,4,5,0,'2014-12-05 01:52:39',0,'2014-12-05 01:52:39',0),(4,'migrations',1,6,7,0,'2014-12-05 01:53:14',0,'2014-12-05 01:53:14',0),(5,'life cycle traits',1,8,9,0,'2014-12-05 01:53:44',0,'2014-12-05 01:53:44',0),(6,'conservation issues',NULL,11,26,0,'2014-12-05 01:54:54',0,'2014-12-05 01:54:54',0),(7,'markers of environmental change (population-level observations)',6,12,13,0,'2014-12-05 01:55:26',0,'2014-12-05 01:55:26',0),(8,'threats',6,14,15,0,'2014-12-05 01:55:55',0,'2014-12-05 01:55:55',0),(9,'observed changes',6,16,17,0,'2014-12-05 01:56:46',0,'2014-12-05 01:56:46',0),(10,'success stories',6,18,19,0,'2014-12-05 01:57:33',0,'2014-12-05 01:57:33',0),(11,'lessons learned',6,20,21,0,'2014-12-05 01:58:05',0,'2014-12-05 01:58:05',0),(12,'important bird areas',6,22,23,0,'2014-12-05 01:59:40',0,'2014-12-05 01:59:40',0),(13,'protected areas',6,24,25,0,'2014-12-05 02:02:14',0,'2014-12-05 02:02:14',0),(14,'food webs',NULL,27,32,0,'2014-12-05 02:10:49',0,'2014-12-05 02:10:49',0),(15,'what the bird eats',14,28,29,0,'2014-12-05 02:11:13',0,'2014-12-05 02:11:13',0),(16,'what eats the bird',14,30,31,0,'2014-12-05 02:11:29',0,'2014-12-05 02:11:29',0),(17,'habitats',NULL,33,40,0,'2014-12-05 02:12:48',0,'2014-12-05 02:12:48',0),(18,'preferred habitats',17,34,35,0,'2014-12-05 02:13:17',0,'2014-12-05 02:13:17',0),(19,'crucial habitat threats/needs',17,36,37,0,'2014-12-05 02:14:13',0,'2014-12-05 02:14:13',0),(20,'names/descriptions of habitats',17,38,39,0,'2014-12-05 02:14:36',0,'2014-12-05 02:14:36',0),(21,'phenology (co-occurrence of ecological phenomena)',NULL,41,42,0,'2014-12-05 02:15:20',0,'2014-12-05 02:15:20',0),(22,'sex and reproduction',NULL,43,50,0,'2014-12-05 02:15:48',0,'2014-12-05 02:15:48',0),(23,'mating',22,44,45,0,'2014-12-05 02:16:27',0,'2014-12-05 02:16:27',0),(24,'nesting, eggs, young',22,46,47,0,'2014-12-05 02:17:00',0,'2014-12-05 02:17:00',0),(25,'sex differences',22,48,49,0,'2014-12-05 02:17:23',0,'2014-12-05 02:17:23',0);
/*!40000 ALTER TABLE `ewa_ecologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_ecologies_entries`
--

DROP TABLE IF EXISTS `ewa_ecologies_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_ecologies_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ecology_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `checked` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ecology_ix` (`ecology_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_ecologies_entries`
--

LOCK TABLES `ewa_ecologies_entries` WRITE;
/*!40000 ALTER TABLE `ewa_ecologies_entries` DISABLE KEYS */;
INSERT INTO `ewa_ecologies_entries` VALUES (1,0,22,0,0,'2015-01-22 15:44:32',0,'2015-01-22 15:44:32',0);
/*!40000 ALTER TABLE `ewa_ecologies_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_education_levels`
--

DROP TABLE IF EXISTS `ewa_education_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_education_levels` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_education_levels`
--

LOCK TABLES `ewa_education_levels` WRITE;
/*!40000 ALTER TABLE `ewa_education_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_education_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_entries`
--

DROP TABLE IF EXISTS `ewa_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `start` varchar(10) DEFAULT NULL,
  `end` varchar(10) DEFAULT NULL,
  `type_of_entry_id` int(6) unsigned NOT NULL,
  `place_name` varchar(255) DEFAULT NULL,
  `latlng` text,
  `submission_reason` text,
  `methodology` text,
  `other_information` text,
  `summary` text,
  `context` text,
  `reason_for_sharing` text,
  `supporting_project` text,
  `project_host` text,
  `page_count` int(6) unsigned DEFAULT NULL,
  `right_to_submit` tinyint(1) DEFAULT '0',
  `publish` tinyint(1) DEFAULT '0',
  `visibility` tinyint(2) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_entries`
--

LOCK TABLES `ewa_entries` WRITE;
/*!40000 ALTER TABLE `ewa_entries` DISABLE KEYS */;
INSERT INTO `ewa_entries` VALUES (1,'test entry by fsw',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'Just testing Richards pages here',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-18 09:13:25',0,'2014-11-17 19:06:58',0),(2,'test by richard',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-18 09:26:07',0,'2014-11-18 09:26:07',0),(3,'test',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,' TEST',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-18 09:44:34',0,'2014-11-18 09:44:34',0),(4,'test id = no 4',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-18 11:30:31',0,'2014-11-18 11:30:31',0),(5,'test id = no 5',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-18 11:31:10',0,'2014-11-18 11:31:10',0),(6,'test no 6',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'summary stuff',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-18 11:33:11',0,'2014-11-18 11:33:11',0),(7,'dsdsa',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'dsadas',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-18 11:48:09',0,'2014-11-18 11:48:09',0),(8,'test entry by fsw',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'some text here by fsw',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-18 15:33:51',0,'2014-11-18 15:33:51',0),(9,'dfsfd',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'fdsfds',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-18 15:59:31',0,'2014-11-18 15:59:31',0),(10,'joe test',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'kl;k;l\';\'l',NULL,NULL,NULL,NULL,NULL,0,0,0,0,'2014-11-19 10:22:16',0,'2014-11-19 10:22:16',0),(11,'joe test',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'kl;k;l\';\'l',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-19 10:22:25',0,'2014-11-19 10:22:25',0),(12,'test a title',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'some summ',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-19 11:24:28',0,'2014-11-19 11:24:28',0),(13,'joe test',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'kl;k;l\';\'l',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-19 11:24:44',0,'2014-11-19 11:24:44',0),(14,'dgfh',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'d',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-19 11:26:32',0,'2014-11-19 11:26:32',0),(15,'te',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-19 11:26:32',0,'2014-11-19 11:26:32',0),(16,'EWA Test Entry',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'A summary',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2014-11-19 15:50:26',0,'2014-11-19 15:50:26',0),(17,'hello mum',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,1,0,0,1,'2014-11-21 15:48:13',0,'2014-11-21 15:45:59',0),(18,'test desfayes','1881','',2,'uk','',NULL,'','','DeFayes folknames for a robin','','','','',NULL,1,0,0,0,'2015-01-07 13:03:59',0,'2015-01-07 12:58:55',0),(19,'tst again','','',2,NULL,NULL,NULL,'','some other data','summary stuff','this is the context','','','',NULL,1,0,0,0,'2015-01-08 14:45:37',0,'2015-01-08 14:24:38',0),(20,'Story of Bujote the Weaverbird',NULL,NULL,2,'Chaco, Paraguay','',NULL,NULL,NULL,'Ayoreo story of how Weaverbird Woman made bags',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2015-01-08 14:37:23',0,'2015-01-08 14:33:44',0),(21,'English names of Great Tit',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,'Gosler test data - English names of the Great Tit Parus major collated by Michel Desfayes',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2015-01-19 10:44:58',0,'2015-01-19 10:44:58',0),(22,'Felices test',NULL,NULL,2,'athens, ga','',NULL,NULL,NULL,'bla bla',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2015-01-22 15:45:02',0,'2015-01-22 15:43:01',0),(23,'Kadavu Shining Parrot',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,'Pride of Kadavu',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2015-01-23 10:28:20',0,'2015-01-23 10:28:20',0),(24,'test tues 27th',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2015-01-27 09:13:29',0,'2015-01-27 09:13:29',0),(25,'Folk name for barn swallow',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,'CHitterling',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2015-01-27 10:24:40',0,'2015-01-27 10:24:40',0),(26,'Pwelerrnge',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,'What the Southern Boobook says...',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2015-01-28 09:07:08',0,'2015-01-28 09:07:08',0),(27,'Testing not adding',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,'Anybody logged in can add an entry',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2015-02-20 11:06:16',1,'2015-02-20 11:06:16',1),(28,'Testing not adding',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,'tytryt',NULL,NULL,NULL,NULL,NULL,1,0,0,0,'2015-02-20 11:10:01',1,'2015-02-20 11:10:01',1);
/*!40000 ALTER TABLE `ewa_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_entries_genres`
--

DROP TABLE IF EXISTS `ewa_entries_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_entries_genres` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `genre_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `checked` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `genre_ix` (`genre_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_entries_genres`
--

LOCK TABLES `ewa_entries_genres` WRITE;
/*!40000 ALTER TABLE `ewa_entries_genres` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_entries_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_entries_keywords`
--

DROP TABLE IF EXISTS `ewa_entries_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_entries_keywords` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned DEFAULT '0',
  `keyword_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_ix` (`entry_id`),
  KEY `keyword_ix` (`keyword_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_entries_keywords`
--

LOCK TABLES `ewa_entries_keywords` WRITE;
/*!40000 ALTER TABLE `ewa_entries_keywords` DISABLE KEYS */;
INSERT INTO `ewa_entries_keywords` VALUES (1,1,1,0,'2015-01-05 12:21:35',0,'2015-01-05 12:21:35',0),(2,18,2,0,'2015-01-07 13:02:40',0,'2015-01-07 13:02:40',0),(3,23,3,0,'2015-01-23 10:38:25',0,'2015-01-23 10:38:25',0),(4,23,4,0,'2015-01-23 10:38:31',0,'2015-01-23 10:38:31',0),(5,23,5,0,'2015-01-23 10:38:35',0,'2015-01-23 10:38:35',0),(6,26,6,0,'2015-01-28 09:16:20',0,'2015-01-28 09:16:20',0),(7,26,7,0,'2015-01-28 09:16:27',0,'2015-01-28 09:16:27',0),(8,1,8,0,'2015-01-28 14:04:02',0,'2015-01-28 14:04:02',0),(9,1,9,0,'2015-01-28 14:04:33',0,'2015-01-28 14:04:33',0);
/*!40000 ALTER TABLE `ewa_entries_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_entries_languages`
--

DROP TABLE IF EXISTS `ewa_entries_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_entries_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned DEFAULT '0',
  `language_id` int(11) unsigned DEFAULT '0',
  `ordering` int(4) unsigned DEFAULT '0',
  `notes` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_ix` (`entry_id`),
  KEY `language_ix` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_entries_languages`
--

LOCK TABLES `ewa_entries_languages` WRITE;
/*!40000 ALTER TABLE `ewa_entries_languages` DISABLE KEYS */;
INSERT INTO `ewa_entries_languages` VALUES (1,1,481,5,'',0,'2014-11-24 15:01:45',0,'2014-11-18 09:35:17',0),(2,6,470,0,'',0,'2014-11-18 11:34:27',0,'2014-11-18 11:34:27',0),(3,8,NULL,0,'',0,'2014-11-18 15:34:59',0,'2014-11-18 15:34:32',0),(4,15,481,2,'Zulu notes',0,'2014-11-19 15:22:34',0,'2014-11-19 15:22:22',0),(5,16,NULL,0,'',0,'2014-11-19 15:51:50',0,'2014-11-19 15:51:50',0),(6,16,NULL,0,'',0,'2014-11-19 15:51:56',0,'2014-11-19 15:51:56',0),(7,16,92,0,'',0,'2014-11-19 15:52:04',0,'2014-11-19 15:52:04',0),(8,16,92,0,'',0,'2014-11-19 15:52:04',0,'2014-11-19 15:52:04',0),(9,16,17,0,'',0,'2014-11-19 15:54:04',0,'2014-11-19 15:54:04',0),(10,16,17,0,'',0,'2014-11-19 15:54:13',0,'2014-11-19 15:54:13',0),(11,16,17,0,'',0,'2014-11-19 15:54:16',0,'2014-11-19 15:54:16',0),(12,16,17,0,'',0,'2014-11-19 15:54:18',0,'2014-11-19 15:54:18',0),(13,8,NULL,0,'',0,'2014-11-19 21:24:03',0,'2014-11-19 21:24:03',0),(14,1,NULL,0,'',0,'2014-11-21 16:00:29',0,'2014-11-21 16:00:29',0),(15,1,NULL,0,'',0,'2014-11-21 16:00:44',0,'2014-11-21 16:00:44',0),(16,1,NULL,0,'',0,'2014-11-21 16:00:49',0,'2014-11-21 16:00:49',0),(17,1,NULL,0,'',0,'2014-11-21 16:01:01',0,'2014-11-21 16:01:01',0),(18,1,NULL,0,'',0,'2014-11-21 16:01:38',0,'2014-11-21 16:01:38',0),(38,1,17,0,'Test',0,'2014-11-24 15:02:45',0,'2014-11-24 15:02:24',0),(19,1,NULL,0,'Ancient language, in negative number realm',0,'2014-11-21 16:23:31',0,'2014-11-21 16:15:01',0),(20,1,138,0,'',0,'2014-11-21 16:15:19',0,'2014-11-21 16:15:19',0),(21,1,138,0,'',0,'2014-11-21 16:15:27',0,'2014-11-21 16:15:27',0),(22,1,0,0,'',0,'2014-11-21 16:15:36',0,'2014-11-21 16:15:36',0),(23,1,122,0,'',0,'2014-11-21 16:16:28',0,'2014-11-21 16:16:28',0),(24,1,NULL,0,'',0,'2014-11-21 17:13:56',0,'2014-11-21 17:13:56',0),(25,1,NULL,0,'',0,'2014-11-21 17:16:46',0,'2014-11-21 17:16:46',0),(26,1,NULL,0,'',0,'2014-11-21 17:16:48',0,'2014-11-21 17:16:48',0),(27,1,96,0,'',0,'2014-11-21 17:18:31',0,'2014-11-21 17:18:31',0),(28,1,96,0,'',0,'2014-11-21 17:56:55',0,'2014-11-21 17:56:55',0),(29,1,NULL,0,'',0,'2014-11-24 14:50:12',0,'2014-11-24 14:50:12',0),(30,1,NULL,0,'',0,'2014-11-24 14:50:19',0,'2014-11-24 14:50:19',0),(31,1,17,0,'Test',0,'2014-11-24 14:50:41',0,'2014-11-24 14:50:41',0),(32,1,17,0,'Test',0,'2014-11-24 14:50:44',0,'2014-11-24 14:50:44',0),(33,1,17,1,'hranrad',0,'2014-11-24 14:51:24',0,'2014-11-24 14:50:45',0),(34,1,17,0,'Test',0,'2014-11-24 14:54:54',0,'2014-11-24 14:54:54',0),(35,1,17,0,'Test',0,'2014-11-24 14:55:01',0,'2014-11-24 14:55:01',0),(36,1,17,0,'Test',0,'2014-11-24 14:55:12',0,'2014-11-24 14:55:12',0),(37,1,17,0,'Test',0,'2014-11-24 14:55:16',0,'2014-11-24 14:55:16',0),(39,1,17,0,'Test',0,'2014-11-24 15:02:26',0,'2014-11-24 15:02:26',0),(40,1,17,0,'Test',0,'2014-11-24 15:02:27',0,'2014-11-24 15:02:27',0),(41,1,17,0,'Test',0,'2014-11-24 15:02:28',0,'2014-11-24 15:02:28',0),(42,1,470,0,'',0,'2014-11-27 14:07:15',0,'2014-11-27 14:07:15',0),(43,1,470,0,'',0,'2014-11-27 14:07:29',0,'2014-11-27 14:07:29',0),(44,18,NULL,0,'',0,'2015-01-07 13:01:57',0,'2015-01-07 13:01:57',0),(45,19,133,2,'some notes about Finnish edited',0,'2015-01-08 14:31:48',0,'2015-01-08 14:31:31',0),(46,3,NULL,0,'',0,'2015-01-21 16:33:06',0,'2015-01-21 16:33:06',0),(47,22,NULL,0,'',0,'2015-01-22 15:44:11',0,'2015-01-22 15:44:11',0),(48,23,NULL,0,'Kadavu Dialect',0,'2015-01-23 10:37:23',0,'2015-01-23 10:37:23',0),(49,25,NULL,0,'',0,'2015-01-27 10:29:04',0,'2015-01-27 10:29:04',0),(50,26,NULL,0,'Language spoken around Barrow Creek in Central Australia, NT',0,'2015-01-28 09:11:31',0,'2015-01-28 09:11:19',0);
/*!40000 ALTER TABLE `ewa_entries_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_entries_tags`
--

DROP TABLE IF EXISTS `ewa_entries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_entries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned DEFAULT '0',
  `tag_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_ix` (`entry_id`),
  KEY `tag_ix` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_entries_tags`
--

LOCK TABLES `ewa_entries_tags` WRITE;
/*!40000 ALTER TABLE `ewa_entries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_entries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_entries_themes`
--

DROP TABLE IF EXISTS `ewa_entries_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_entries_themes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned DEFAULT '0',
  `theme_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_ix` (`entry_id`),
  KEY `theme_ix` (`theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_entries_themes`
--

LOCK TABLES `ewa_entries_themes` WRITE;
/*!40000 ALTER TABLE `ewa_entries_themes` DISABLE KEYS */;
INSERT INTO `ewa_entries_themes` VALUES (1,23,0,0,'2015-01-23 10:38:40',0,'2015-01-23 10:38:40',0),(2,26,0,0,'2015-01-28 09:16:36',0,'2015-01-28 09:16:36',0);
/*!40000 ALTER TABLE `ewa_entries_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_entries_usefuls`
--

DROP TABLE IF EXISTS `ewa_entries_usefuls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_entries_usefuls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `useful_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `checked` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `useful_ix` (`useful_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_entries_usefuls`
--

LOCK TABLES `ewa_entries_usefuls` WRITE;
/*!40000 ALTER TABLE `ewa_entries_usefuls` DISABLE KEYS */;
INSERT INTO `ewa_entries_usefuls` VALUES (1,1,23,1,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(2,2,23,1,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(3,3,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(4,4,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(5,5,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(6,6,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(7,7,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(8,8,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(9,9,23,1,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(10,10,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(11,11,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(12,12,23,1,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(13,13,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(14,14,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(15,15,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(16,16,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(17,17,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(18,18,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(19,19,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(20,20,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0),(21,21,23,0,0,'2015-01-23 10:38:01',0,'2015-01-23 10:38:01',0);
/*!40000 ALTER TABLE `ewa_entries_usefuls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_families`
--

DROP TABLE IF EXISTS `ewa_families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_families` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_families`
--

LOCK TABLES `ewa_families` WRITE;
/*!40000 ALTER TABLE `ewa_families` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_families` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_feedback`
--

DROP TABLE IF EXISTS `ewa_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_feedback`
--

LOCK TABLES `ewa_feedback` WRITE;
/*!40000 ALTER TABLE `ewa_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_folk_names`
--

DROP TABLE IF EXISTS `ewa_folk_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_folk_names` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_folk_names`
--

LOCK TABLES `ewa_folk_names` WRITE;
/*!40000 ALTER TABLE `ewa_folk_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_folk_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_genera`
--

DROP TABLE IF EXISTS `ewa_genera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_genera` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `family_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_genera`
--

LOCK TABLES `ewa_genera` WRITE;
/*!40000 ALTER TABLE `ewa_genera` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_genera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_genres`
--

DROP TABLE IF EXISTS `ewa_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_genres` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(6) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_genres`
--

LOCK TABLES `ewa_genres` WRITE;
/*!40000 ALTER TABLE `ewa_genres` DISABLE KEYS */;
INSERT INTO `ewa_genres` VALUES (1,'dance',NULL,1,2,0,'2014-11-19 18:05:28',0,'2014-11-14 04:41:06',0),(2,'poetry',NULL,3,4,0,'2014-11-14 04:41:59',0,'2014-11-14 04:41:59',0),(3,'jokes',NULL,5,6,0,'2014-11-14 04:43:18',0,'2014-11-14 04:43:18',0),(4,'sayings',NULL,7,8,0,'2014-11-14 04:43:48',0,'2014-11-14 04:43:48',0),(5,'expressions',NULL,9,10,0,'2014-11-14 04:44:33',0,'2014-11-14 04:44:33',0),(6,'recipes',NULL,11,12,0,'2014-11-14 04:44:59',0,'2014-11-14 04:44:59',0),(7,'advice',NULL,13,14,0,'2014-11-14 04:45:45',0,'2014-11-14 04:45:45',0),(8,'material arts',NULL,15,20,0,'2014-11-14 04:48:06',0,'2014-11-14 04:48:06',0),(9,'visual arts',NULL,21,28,0,'2014-11-14 04:48:52',0,'2014-11-14 04:48:52',0),(10,'songs/ music',NULL,29,30,0,'2014-12-05 01:34:15',0,'2014-11-14 04:49:23',0),(11,'stories',NULL,31,44,0,'2014-11-14 04:51:38',0,'2014-11-14 04:51:38',0),(12,'stories',NULL,NULL,NULL,1,'2014-11-14 19:46:09',0,'2014-11-14 19:45:36',0),(13,'oratory',NULL,45,46,0,'2014-12-05 01:34:36',0,'2014-12-05 01:34:36',0),(14,'drama',NULL,47,48,0,'2014-12-05 01:35:03',0,'2014-12-05 01:35:03',0),(15,'mnemonic devices',NULL,49,50,0,'2014-12-05 01:38:12',0,'2014-12-05 01:38:12',0),(16,'sculpture',8,16,17,0,'2014-12-05 01:42:11',0,'2014-12-05 01:42:11',0),(17,'useful arts/crafts',8,18,19,0,'2014-12-05 01:42:34',0,'2014-12-05 01:42:34',0),(18,'photography',9,22,23,0,'2014-12-05 01:43:37',0,'2014-12-05 01:43:37',0),(19,'painting/ drawing',9,24,25,0,'2014-12-05 01:44:16',0,'2014-12-05 01:44:16',0),(20,'cinema/ videography',9,26,27,0,'2014-12-05 01:44:39',0,'2014-12-05 01:44:39',0),(21,'community stories',11,32,33,0,'2014-12-05 01:45:31',0,'2014-12-05 01:45:31',0),(22,'literature fiction',11,34,35,0,'2014-12-05 01:47:44',0,'2014-12-05 01:47:44',0),(23,'family stories',11,36,37,0,'2014-12-05 01:48:00',0,'2014-12-05 01:48:00',0),(24,'personal narratives',11,38,39,0,'2014-12-05 01:48:29',0,'2014-12-05 01:48:29',0),(25,'oral histories',11,40,41,0,'2014-12-05 01:48:49',0,'2014-12-05 01:48:49',0),(26,'non-fiction',11,42,43,0,'2014-12-05 01:49:17',0,'2014-12-05 01:49:17',0);
/*!40000 ALTER TABLE `ewa_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_groups`
--

DROP TABLE IF EXISTS `ewa_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `user_id` int(11) unsigned DEFAULT '0',
  `location` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_groups`
--

LOCK TABLES `ewa_groups` WRITE;
/*!40000 ALTER TABLE `ewa_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_groups_users`
--

DROP TABLE IF EXISTS `ewa_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_groups_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_ix` (`group_id`),
  KEY `user_ix` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_groups_users`
--

LOCK TABLES `ewa_groups_users` WRITE;
/*!40000 ALTER TABLE `ewa_groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_interests`
--

DROP TABLE IF EXISTS `ewa_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_interests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_interests`
--

LOCK TABLES `ewa_interests` WRITE;
/*!40000 ALTER TABLE `ewa_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_interests_users`
--

DROP TABLE IF EXISTS `ewa_interests_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_interests_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `interest_id` int(11) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `interest_ix` (`interest_id`),
  KEY `user_ix` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_interests_users`
--

LOCK TABLES `ewa_interests_users` WRITE;
/*!40000 ALTER TABLE `ewa_interests_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_interests_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_keywords`
--

DROP TABLE IF EXISTS `ewa_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_keywords` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_keywords`
--

LOCK TABLES `ewa_keywords` WRITE;
/*!40000 ALTER TABLE `ewa_keywords` DISABLE KEYS */;
INSERT INTO `ewa_keywords` VALUES (1,'test keyword',0,'2015-01-05 12:21:35',0,'2015-01-05 12:21:35',0),(2,'folk names',0,'2015-01-07 13:02:40',0,'2015-01-07 13:02:40',0),(3,'parrot',0,'2015-01-23 10:38:25',0,'2015-01-23 10:38:25',0),(4,'Pacific',0,'2015-01-23 10:38:31',0,'2015-01-23 10:38:31',0),(5,'local name',0,'2015-01-23 10:38:35',0,'2015-01-23 10:38:35',0),(6,'Communication',0,'2015-01-28 09:16:20',0,'2015-01-28 09:16:20',0),(7,'Seasons',0,'2015-01-28 09:16:27',0,'2015-01-28 09:16:27',0),(8,'expression',0,'2015-01-28 14:04:02',0,'2015-01-28 14:04:02',0),(9,'andy',0,'2015-01-28 14:04:33',0,'2015-01-28 14:04:33',0);
/*!40000 ALTER TABLE `ewa_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_languages`
--

DROP TABLE IF EXISTS `ewa_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_languages` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `3letter` char(3) NOT NULL COMMENT 'ISO 639-2 Code',
  `2letter` varchar(2) DEFAULT NULL COMMENT 'ISO 639-1 Code',
  `title` varchar(255) DEFAULT NULL,
  `french_name` varchar(255) DEFAULT NULL,
  `ordering` int(4) unsigned DEFAULT '0',
  `notes` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `3letter` (`3letter`),
  KEY `2letter` (`2letter`)
) ENGINE=MyISAM AUTO_INCREMENT=485 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_languages`
--

LOCK TABLES `ewa_languages` WRITE;
/*!40000 ALTER TABLE `ewa_languages` DISABLE KEYS */;
INSERT INTO `ewa_languages` VALUES (1,'aar','aa','Afar','afar',0,NULL,0,NULL,0,NULL,0),(2,'abk','ab','Abkhazian','abkhaze',0,NULL,0,NULL,0,NULL,0),(3,'ace',NULL,'Achinese','aceh',0,NULL,0,NULL,0,NULL,0),(4,'ach',NULL,'Acoli','acoli',0,NULL,0,NULL,0,NULL,0),(5,'ada',NULL,'Adangme','adangme',0,NULL,0,NULL,0,NULL,0),(6,'ady',NULL,'Adyghe; Adygei','adyghé',0,NULL,0,NULL,0,NULL,0),(7,'afa',NULL,'Afro-Asiatic languages','afro-asiatiques, langues',0,NULL,0,NULL,0,NULL,0),(8,'afh',NULL,'Afrihili','afrihili',0,NULL,0,NULL,0,NULL,0),(9,'afr','af','Afrikaans','afrikaans',0,NULL,0,NULL,0,NULL,0),(10,'ain',NULL,'Ainu','aïnou',0,NULL,0,NULL,0,NULL,0),(11,'aka','ak','Akan','akan',0,NULL,0,NULL,0,NULL,0),(12,'akk',NULL,'Akkadian','akkadien',0,NULL,0,NULL,0,NULL,0),(13,'ale',NULL,'Aleut','aléoute',0,NULL,0,NULL,0,NULL,0),(14,'alg',NULL,'Algonquian languages','algonquines, langues',0,NULL,0,NULL,0,NULL,0),(15,'alt',NULL,'Southern Altai','altai du Sud',0,NULL,0,NULL,0,NULL,0),(16,'amh','am','Amharic','amharique',0,NULL,0,NULL,0,NULL,0),(17,'ang',NULL,'English, Old (ca.450-1100)','anglo-saxon (ca.450-1100)',0,NULL,0,NULL,0,NULL,0),(18,'anp',NULL,'Angika','angika',0,NULL,0,NULL,0,NULL,0),(19,'apa',NULL,'Apache languages','apaches, langues',0,NULL,0,NULL,0,NULL,0),(20,'ara','ar','Arabic','arabe',0,NULL,0,NULL,0,NULL,0),(21,'arc',NULL,'Official Aramaic (700-300 BCE); Imperial Aramaic (700-300 BCE)','araméen d\'empire (700-300 BCE)',0,NULL,0,NULL,0,NULL,0),(22,'arg','an','Aragonese','aragonais',0,NULL,0,NULL,0,NULL,0),(23,'arm','hy','Armenian','arménien',0,NULL,0,NULL,0,NULL,0),(24,'arn',NULL,'Mapudungun; Mapuche','mapudungun; mapuche; mapuce',0,NULL,0,NULL,0,NULL,0),(25,'arp',NULL,'Arapaho','arapaho',0,NULL,0,NULL,0,NULL,0),(26,'art',NULL,'Artificial languages','artificielles, langues',0,NULL,0,NULL,0,NULL,0),(27,'arw',NULL,'Arawak','arawak',0,NULL,0,NULL,0,NULL,0),(28,'asm','as','Assamese','assamais',0,NULL,0,NULL,0,NULL,0),(29,'ast',NULL,'Asturian; Bable; Leonese; Asturleonese','asturien; bable; léonais; asturoléonais',0,NULL,0,NULL,0,NULL,0),(30,'ath',NULL,'Athapascan languages','athapascanes, langues',0,NULL,0,NULL,0,NULL,0),(31,'aus',NULL,'Australian languages','australiennes, langues',0,NULL,0,NULL,0,NULL,0),(32,'ava','av','Avaric','avar',0,NULL,0,NULL,0,NULL,0),(33,'ave','ae','Avestan','avestique',0,NULL,0,NULL,0,NULL,0),(34,'awa',NULL,'Awadhi','awadhi',0,NULL,0,NULL,0,NULL,0),(35,'aym','ay','Aymara','aymara',0,NULL,0,NULL,0,NULL,0),(36,'aze','az','Azerbaijani','azéri',0,NULL,0,NULL,0,NULL,0),(37,'bad',NULL,'Banda languages','banda, langues',0,NULL,0,NULL,0,NULL,0),(38,'bai',NULL,'Bamileke languages','bamiléké, langues',0,NULL,0,NULL,0,NULL,0),(39,'bak','ba','Bashkir','bachkir',0,NULL,0,NULL,0,NULL,0),(40,'bal',NULL,'Baluchi','baloutchi',0,NULL,0,NULL,0,NULL,0),(41,'bam','bm','Bambara','bambara',0,NULL,0,NULL,0,NULL,0),(42,'ban',NULL,'Balinese','balinais',0,NULL,0,NULL,0,NULL,0),(43,'baq','eu','Basque','basque',0,NULL,0,NULL,0,NULL,0),(44,'bas',NULL,'Basa','basa',0,NULL,0,NULL,0,NULL,0),(45,'bat',NULL,'Baltic languages','baltes, langues',0,NULL,0,NULL,0,NULL,0),(46,'bej',NULL,'Beja; Bedawiyet','bedja',0,NULL,0,NULL,0,NULL,0),(47,'bel','be','Belarusian','biélorusse',0,NULL,0,NULL,0,NULL,0),(48,'bem',NULL,'Bemba','bemba',0,NULL,0,NULL,0,NULL,0),(49,'ben','bn','Bengali','bengali',0,NULL,0,NULL,0,NULL,0),(50,'ber',NULL,'Berber languages','berbères, langues',0,NULL,0,NULL,0,NULL,0),(51,'bho',NULL,'Bhojpuri','bhojpuri',0,NULL,0,NULL,0,NULL,0),(52,'bih','bh','Bihari','bihari',0,NULL,0,NULL,0,NULL,0),(53,'bik',NULL,'Bikol','bikol',0,NULL,0,NULL,0,NULL,0),(54,'bin',NULL,'Bini; Edo','bini; edo',0,NULL,0,NULL,0,NULL,0),(55,'bis','bi','Bislama','bichlamar',0,NULL,0,NULL,0,NULL,0),(56,'bla',NULL,'Siksika','blackfoot',0,NULL,0,NULL,0,NULL,0),(57,'bnt',NULL,'Bantu languages','bantou, langues',0,NULL,0,NULL,0,NULL,0),(58,'tib','bo','Tibetan','tibétain',0,NULL,0,NULL,0,NULL,0),(59,'bos','bs','Bosnian','bosniaque',0,NULL,0,NULL,0,NULL,0),(60,'bra',NULL,'Braj','braj',0,NULL,0,NULL,0,NULL,0),(61,'bre','br','Breton','breton',0,NULL,0,NULL,0,NULL,0),(62,'btk',NULL,'Batak languages','batak, langues',0,NULL,0,NULL,0,NULL,0),(63,'bua',NULL,'Buriat','bouriate',0,NULL,0,NULL,0,NULL,0),(64,'bug',NULL,'Buginese','bugi',0,NULL,0,NULL,0,NULL,0),(65,'bul','bg','Bulgarian','bulgare',0,NULL,0,NULL,0,NULL,0),(66,'byn',NULL,'Blin; Bilin','blin; bilen',0,NULL,0,NULL,0,NULL,0),(67,'cad',NULL,'Caddo','caddo',0,NULL,0,NULL,0,NULL,0),(68,'cai',NULL,'Central American Indian languages','amérindiennes de l\'Amérique centrale, langues',0,NULL,0,NULL,0,NULL,0),(69,'car',NULL,'Galibi Carib','karib; galibi; carib',0,NULL,0,NULL,0,NULL,0),(70,'cat','ca','Catalan; Valencian','catalan; valencien',0,NULL,0,NULL,0,NULL,0),(71,'cau',NULL,'Caucasian languages','caucasiennes, langues',0,NULL,0,NULL,0,NULL,0),(72,'ceb',NULL,'Cebuano','cebuano',0,NULL,0,NULL,0,NULL,0),(73,'cel',NULL,'Celtic languages','celtiques, langues; celtes, langues',0,NULL,0,NULL,0,NULL,0),(74,'cha','ch','Chamorro','chamorro',0,NULL,0,NULL,0,NULL,0),(75,'chb',NULL,'Chibcha','chibcha',0,NULL,0,NULL,0,NULL,0),(76,'che','ce','Chechen','tchétchène',0,NULL,0,NULL,0,NULL,0),(77,'chg',NULL,'Chagatai','djaghataï',0,NULL,0,NULL,0,NULL,0),(78,'chi','zh','Chinese','chinois',0,NULL,0,NULL,0,NULL,0),(79,'chk',NULL,'Chuukese','chuuk',0,NULL,0,NULL,0,NULL,0),(80,'chm',NULL,'Mari','mari',0,NULL,0,NULL,0,NULL,0),(81,'chn',NULL,'Chinook jargon','chinook, jargon',0,NULL,0,NULL,0,NULL,0),(82,'cho',NULL,'Choctaw','choctaw',0,NULL,0,NULL,0,NULL,0),(83,'chp',NULL,'Chipewyan; Dene Suline','chipewyan',0,NULL,0,NULL,0,NULL,0),(84,'chr',NULL,'Cherokee','cherokee',0,NULL,0,NULL,0,NULL,0),(85,'chu','cu','Church Slavic; Old Slavonic; Church Slavonic; Old Bulgarian; Old Church Slavonic','slavon d\'église; vieux slave; slavon liturgique; vieux bulgare',0,NULL,0,NULL,0,NULL,0),(86,'chv','cv','Chuvash','tchouvache',0,NULL,0,NULL,0,NULL,0),(87,'chy',NULL,'Cheyenne','cheyenne',0,NULL,0,NULL,0,NULL,0),(88,'cmc',NULL,'Chamic languages','chames, langues',0,NULL,0,NULL,0,NULL,0),(89,'cop',NULL,'Coptic','copte',0,NULL,0,NULL,0,NULL,0),(90,'cor','kw','Cornish','cornique',0,NULL,0,NULL,0,NULL,0),(91,'cos','co','Corsican','corse',0,NULL,0,NULL,0,NULL,0),(92,'cpe',NULL,'Creoles and pidgins, English based','créoles et pidgins basés sur l\'anglais',0,NULL,0,NULL,0,NULL,0),(93,'cpf',NULL,'Creoles and pidgins, French-based','créoles et pidgins basés sur le français',0,NULL,0,NULL,0,NULL,0),(94,'cpp',NULL,'Creoles and pidgins, Portuguese-based','créoles et pidgins basés sur le portugais',0,NULL,0,NULL,0,NULL,0),(95,'cre','cr','Cree','cree',0,NULL,0,NULL,0,NULL,0),(96,'crh',NULL,'Crimean Tatar; Crimean Turkish','tatar de Crimé',0,NULL,0,NULL,0,NULL,0),(97,'crp',NULL,'Creoles and pidgins','créoles et pidgins',0,NULL,0,NULL,0,NULL,0),(98,'csb',NULL,'Kashubian','kachoube',0,NULL,0,NULL,0,NULL,0),(99,'cus',NULL,'Cushitic languages','couchitiques, langues',0,NULL,0,NULL,0,NULL,0),(100,'wel','cy','Welsh','gallois',0,NULL,0,NULL,0,NULL,0),(101,'cze','cs','Czech','tchèque',0,NULL,0,NULL,0,NULL,0),(102,'dak',NULL,'Dakota','dakota',0,NULL,0,NULL,0,NULL,0),(103,'dan','da','Danish','danois',0,NULL,0,NULL,0,NULL,0),(104,'dar',NULL,'Dargwa','dargwa',0,NULL,0,NULL,0,NULL,0),(105,'day',NULL,'Land Dayak languages','dayak, langues',0,NULL,0,NULL,0,NULL,0),(106,'del',NULL,'Delaware','delaware',0,NULL,0,NULL,0,NULL,0),(107,'den',NULL,'Slave (Athapascan)','esclave (athapascan)',0,NULL,0,NULL,0,NULL,0),(108,'dgr',NULL,'Dogrib','dogrib',0,NULL,0,NULL,0,NULL,0),(109,'din',NULL,'Dinka','dinka',0,NULL,0,NULL,0,NULL,0),(110,'div','dv','Divehi; Dhivehi; Maldivian','maldivien',0,NULL,0,NULL,0,NULL,0),(111,'doi',NULL,'Dogri','dogri',0,NULL,0,NULL,0,NULL,0),(112,'dra',NULL,'Dravidian languages','dravidiennes, langues',0,NULL,0,NULL,0,NULL,0),(113,'dsb',NULL,'Lower Sorbian','bas-sorabe',0,NULL,0,NULL,0,NULL,0),(114,'dua',NULL,'Duala','douala',0,NULL,0,NULL,0,NULL,0),(115,'dum',NULL,'Dutch, Middle (ca.1050-1350)','néerlandais moyen (ca. 1050-1350)',0,NULL,0,NULL,0,NULL,0),(116,'dyu',NULL,'Dyula','dioula',0,NULL,0,NULL,0,NULL,0),(117,'dzo','dz','Dzongkha','dzongkha',0,NULL,0,NULL,0,NULL,0),(118,'efi',NULL,'Efik','efik',0,NULL,0,NULL,0,NULL,0),(119,'egy',NULL,'Egyptian (Ancient)','égyptien',0,NULL,0,NULL,0,NULL,0),(120,'eka',NULL,'Ekajuk','ekajuk',0,NULL,0,NULL,0,NULL,0),(121,'elx',NULL,'Elamite','élamite',0,NULL,0,NULL,0,NULL,0),(122,'eng','en','English','anglais',0,NULL,0,NULL,0,NULL,0),(123,'enm',NULL,'English, Middle (1100-1500)','anglais moyen (1100-1500)',0,NULL,0,NULL,0,NULL,0),(124,'epo','eo','Esperanto','espéranto',0,NULL,0,NULL,0,NULL,0),(125,'est','et','Estonian','estonien',0,NULL,0,NULL,0,NULL,0),(126,'ewe','ee','Ewe','éwé',0,NULL,0,NULL,0,NULL,0),(127,'ewo',NULL,'Ewondo','éwondo',0,NULL,0,NULL,0,NULL,0),(128,'fan',NULL,'Fang','fang',0,NULL,0,NULL,0,NULL,0),(129,'fao','fo','Faroese','féroïen',0,NULL,0,NULL,0,NULL,0),(130,'fat',NULL,'Fanti','fanti',0,NULL,0,NULL,0,NULL,0),(131,'fij','fj','Fijian','fidjien',0,NULL,0,NULL,0,NULL,0),(132,'fil',NULL,'Filipino; Pilipino','filipino; pilipino',0,NULL,0,NULL,0,NULL,0),(133,'fin','fi','Finnish','finnois',0,NULL,0,NULL,0,NULL,0),(134,'fiu',NULL,'Finno-Ugrian languages','finno-ougriennes, langues',0,NULL,0,NULL,0,NULL,0),(135,'fon',NULL,'Fon','fon',0,NULL,0,NULL,0,NULL,0),(136,'fre','fr','French','français',0,NULL,0,NULL,0,NULL,0),(137,'frm',NULL,'French, Middle (ca.1400-1600)','français moyen (1400-1600)',0,NULL,0,NULL,0,NULL,0),(138,'fro',NULL,'French, Old (842-ca.1400)','français ancien (842-ca.1400)',0,NULL,0,NULL,0,NULL,0),(139,'frr',NULL,'Northern Frisian','frison septentrional',0,NULL,0,NULL,0,NULL,0),(140,'frs',NULL,'Eastern Frisian','frison oriental',0,NULL,0,NULL,0,NULL,0),(141,'fry','fy','Western Frisian','frison occidental',0,NULL,0,NULL,0,NULL,0),(142,'ful','ff','Fulah','peul',0,NULL,0,NULL,0,NULL,0),(143,'fur',NULL,'Friulian','frioulan',0,NULL,0,NULL,0,NULL,0),(144,'gaa',NULL,'Ga','ga',0,NULL,0,NULL,0,NULL,0),(145,'gay',NULL,'Gayo','gayo',0,NULL,0,NULL,0,NULL,0),(146,'gba',NULL,'Gbaya','gbaya',0,NULL,0,NULL,0,NULL,0),(147,'gem',NULL,'Germanic languages','germaniques, langues',0,NULL,0,NULL,0,NULL,0),(148,'geo','ka','Georgian','géorgien',0,NULL,0,NULL,0,NULL,0),(149,'ger','de','German','allemand',0,NULL,0,NULL,0,NULL,0),(150,'gez',NULL,'Geez','guèze',0,NULL,0,NULL,0,NULL,0),(151,'gil',NULL,'Gilbertese','kiribati',0,NULL,0,NULL,0,NULL,0),(152,'gla','gd','Gaelic; Scottish Gaelic','gaélique; gaélique écossais',0,NULL,0,NULL,0,NULL,0),(153,'gle','ga','Irish','irlandais',0,NULL,0,NULL,0,NULL,0),(154,'glg','gl','Galician','galicien',0,NULL,0,NULL,0,NULL,0),(155,'glv','gv','Manx','manx; mannois',0,NULL,0,NULL,0,NULL,0),(156,'gmh',NULL,'German, Middle High (ca.1050-1500)','allemand, moyen haut (ca. 1050-1500)',0,NULL,0,NULL,0,NULL,0),(157,'goh',NULL,'German, Old High (ca.750-1050)','allemand, vieux haut (ca. 750-1050)',0,NULL,0,NULL,0,NULL,0),(158,'gon',NULL,'Gondi','gond',0,NULL,0,NULL,0,NULL,0),(159,'gor',NULL,'Gorontalo','gorontalo',0,NULL,0,NULL,0,NULL,0),(160,'got',NULL,'Gothic','gothique',0,NULL,0,NULL,0,NULL,0),(161,'grb',NULL,'Grebo','grebo',0,NULL,0,NULL,0,NULL,0),(162,'grc',NULL,'Greek, Ancient (to 1453)','grec ancien (jusqu\'à 1453)',0,NULL,0,NULL,0,NULL,0),(163,'gre','el','Greek, Modern (1453-)','grec moderne (après 1453)',0,NULL,0,NULL,0,NULL,0),(164,'grn','gn','Guarani','guarani',0,NULL,0,NULL,0,NULL,0),(165,'gsw',NULL,'Swiss German; Alemannic; Alsatian','suisse alémanique; alémanique; alsacien',0,NULL,0,NULL,0,NULL,0),(166,'guj','gu','Gujarati','goudjrati',0,NULL,0,NULL,0,NULL,0),(167,'gwi',NULL,'Gwich\'in','gwich\'in',0,NULL,0,NULL,0,NULL,0),(168,'hai',NULL,'Haida','haida',0,NULL,0,NULL,0,NULL,0),(169,'hat','ht','Haitian; Haitian Creole','haïtien; créole haïtien',0,NULL,0,NULL,0,NULL,0),(170,'hau','ha','Hausa','haoussa',0,NULL,0,NULL,0,NULL,0),(171,'haw',NULL,'Hawaiian','hawaïen',0,NULL,0,NULL,0,NULL,0),(172,'heb','he','Hebrew','hébreu',0,NULL,0,NULL,0,NULL,0),(173,'her','hz','Herero','herero',0,NULL,0,NULL,0,NULL,0),(174,'hil',NULL,'Hiligaynon','hiligaynon',0,NULL,0,NULL,0,NULL,0),(175,'him',NULL,'Himachali','himachali',0,NULL,0,NULL,0,NULL,0),(176,'hin','hi','Hindi','hindi',0,NULL,0,NULL,0,NULL,0),(177,'hit',NULL,'Hittite','hittite',0,NULL,0,NULL,0,NULL,0),(178,'hmn',NULL,'Hmong','hmong',0,NULL,0,NULL,0,NULL,0),(179,'hmo','ho','Hiri Motu','hiri motu',0,NULL,0,NULL,0,NULL,0),(180,'hrv','hr','Croatian','croate',0,NULL,0,NULL,0,NULL,0),(181,'hsb',NULL,'Upper Sorbian','haut-sorabe',0,NULL,0,NULL,0,NULL,0),(182,'hun','hu','Hungarian','hongrois',0,NULL,0,NULL,0,NULL,0),(183,'hup',NULL,'Hupa','hupa',0,NULL,0,NULL,0,NULL,0),(184,'iba',NULL,'Iban','iban',0,NULL,0,NULL,0,NULL,0),(185,'ibo','ig','Igbo','igbo',0,NULL,0,NULL,0,NULL,0),(186,'ice','is','Icelandic','islandais',0,NULL,0,NULL,0,NULL,0),(187,'ido','io','Ido','ido',0,NULL,0,NULL,0,NULL,0),(188,'iii','ii','Sichuan Yi; Nuosu','yi de Sichuan',0,NULL,0,NULL,0,NULL,0),(189,'ijo',NULL,'Ijo languages','ijo, langues',0,NULL,0,NULL,0,NULL,0),(190,'iku','iu','Inuktitut','inuktitut',0,NULL,0,NULL,0,NULL,0),(191,'ile','ie','Interlingue; Occidental','interlingue',0,NULL,0,NULL,0,NULL,0),(192,'ilo',NULL,'Iloko','ilocano',0,NULL,0,NULL,0,NULL,0),(193,'ina','ia','Interlingua (International Auxiliary Language Association)','interlingua (langue auxiliaire internationale)',0,NULL,0,NULL,0,NULL,0),(194,'inc',NULL,'Indic languages','indo-aryennes, langues',0,NULL,0,NULL,0,NULL,0),(195,'ind','id','Indonesian','indonésien',0,NULL,0,NULL,0,NULL,0),(196,'ine',NULL,'Indo-European languages','indo-européennes, langues',0,NULL,0,NULL,0,NULL,0),(197,'inh',NULL,'Ingush','ingouche',0,NULL,0,NULL,0,NULL,0),(198,'ipk','ik','Inupiaq','inupiaq',0,NULL,0,NULL,0,NULL,0),(199,'ira',NULL,'Iranian languages','iraniennes, langues',0,NULL,0,NULL,0,NULL,0),(200,'iro',NULL,'Iroquoian languages','iroquoises, langues',0,NULL,0,NULL,0,NULL,0),(201,'ita','it','Italian','italien',0,NULL,0,NULL,0,NULL,0),(202,'jav','jv','Javanese','javanais',0,NULL,0,NULL,0,NULL,0),(203,'jbo',NULL,'Lojban','lojban',0,NULL,0,NULL,0,NULL,0),(204,'jpn','ja','Japanese','japonais',0,NULL,0,NULL,0,NULL,0),(205,'jpr',NULL,'Judeo-Persian','judéo-persan',0,NULL,0,NULL,0,NULL,0),(206,'jrb',NULL,'Judeo-Arabic','judéo-arabe',0,NULL,0,NULL,0,NULL,0),(207,'kaa',NULL,'Kara-Kalpak','karakalpak',0,NULL,0,NULL,0,NULL,0),(208,'kab',NULL,'Kabyle','kabyle',0,NULL,0,NULL,0,NULL,0),(209,'kac',NULL,'Kachin; Jingpho','kachin; jingpho',0,NULL,0,NULL,0,NULL,0),(210,'kal','kl','Kalaallisut; Greenlandic','groenlandais',0,NULL,0,NULL,0,NULL,0),(211,'kam',NULL,'Kamba','kamba',0,NULL,0,NULL,0,NULL,0),(212,'kan','kn','Kannada','kannada',0,NULL,0,NULL,0,NULL,0),(213,'kar',NULL,'Karen languages','karen, langues',0,NULL,0,NULL,0,NULL,0),(214,'kas','ks','Kashmiri','kashmiri',0,NULL,0,NULL,0,NULL,0),(215,'kau','kr','Kanuri','kanouri',0,NULL,0,NULL,0,NULL,0),(216,'kaw',NULL,'Kawi','kawi',0,NULL,0,NULL,0,NULL,0),(217,'kaz','kk','Kazakh','kazakh',0,NULL,0,NULL,0,NULL,0),(218,'kbd',NULL,'Kabardian','kabardien',0,NULL,0,NULL,0,NULL,0),(219,'kha',NULL,'Khasi','khasi',0,NULL,0,NULL,0,NULL,0),(220,'khi',NULL,'Khoisan languages','khoïsan, langues',0,NULL,0,NULL,0,NULL,0),(221,'khm','km','Central Khmer','khmer central',0,NULL,0,NULL,0,NULL,0),(222,'kho',NULL,'Khotanese; Sakan','khotanais; sakan',0,NULL,0,NULL,0,NULL,0),(223,'kik','ki','Kikuyu; Gikuyu','kikuyu',0,NULL,0,NULL,0,NULL,0),(224,'kin','rw','Kinyarwanda','rwanda',0,NULL,0,NULL,0,NULL,0),(225,'kir','ky','Kirghiz; Kyrgyz','kirghiz',0,NULL,0,NULL,0,NULL,0),(226,'kmb',NULL,'Kimbundu','kimbundu',0,NULL,0,NULL,0,NULL,0),(227,'kok',NULL,'Konkani','konkani',0,NULL,0,NULL,0,NULL,0),(228,'kom','kv','Komi','kom',0,NULL,0,NULL,0,NULL,0),(229,'kon','kg','Kongo','kongo',0,NULL,0,NULL,0,NULL,0),(230,'kor','ko','Korean','coréen',0,NULL,0,NULL,0,NULL,0),(231,'kos',NULL,'Kosraean','kosrae',0,NULL,0,NULL,0,NULL,0),(232,'kpe',NULL,'Kpelle','kpellé',0,NULL,0,NULL,0,NULL,0),(233,'krc',NULL,'Karachay-Balkar','karatchai balkar',0,NULL,0,NULL,0,NULL,0),(234,'krl',NULL,'Karelian','carélien',0,NULL,0,NULL,0,NULL,0),(235,'kro',NULL,'Kru languages','krou, langues',0,NULL,0,NULL,0,NULL,0),(236,'kru',NULL,'Kurukh','kurukh',0,NULL,0,NULL,0,NULL,0),(237,'kua','kj','Kuanyama; Kwanyama','kuanyama; kwanyama',0,NULL,0,NULL,0,NULL,0),(238,'kum',NULL,'Kumyk','koumyk',0,NULL,0,NULL,0,NULL,0),(239,'kur','ku','Kurdish','kurde',0,NULL,0,NULL,0,NULL,0),(240,'kut',NULL,'Kutenai','kutenai',0,NULL,0,NULL,0,NULL,0),(241,'lad',NULL,'Ladino','judéo-espagnol',0,NULL,0,NULL,0,NULL,0),(242,'lah',NULL,'Lahnda','lahnda',0,NULL,0,NULL,0,NULL,0),(243,'lam',NULL,'Lamba','lamba',0,NULL,0,NULL,0,NULL,0),(244,'lao','lo','Lao','lao',0,NULL,0,NULL,0,NULL,0),(245,'lat','la','Latin','latin',0,NULL,0,NULL,0,NULL,0),(246,'lav','lv','Latvian','letton',0,NULL,0,NULL,0,NULL,0),(247,'lez',NULL,'Lezghian','lezghien',0,NULL,0,NULL,0,NULL,0),(248,'lim','li','Limburgan; Limburger; Limburgish','limbourgeois',0,NULL,0,NULL,0,NULL,0),(249,'lin','ln','Lingala','lingala',0,NULL,0,NULL,0,NULL,0),(250,'lit','lt','Lithuanian','lituanien',0,NULL,0,NULL,0,NULL,0),(251,'lol',NULL,'Mongo','mongo',0,NULL,0,NULL,0,NULL,0),(252,'loz',NULL,'Lozi','lozi',0,NULL,0,NULL,0,NULL,0),(253,'ltz','lb','Luxembourgish; Letzeburgesch','luxembourgeois',0,NULL,0,NULL,0,NULL,0),(254,'lua',NULL,'Luba-Lulua','luba-lulua',0,NULL,0,NULL,0,NULL,0),(255,'lub','lu','Luba-Katanga','luba-katanga',0,NULL,0,NULL,0,NULL,0),(256,'lug','lg','Ganda','ganda',0,NULL,0,NULL,0,NULL,0),(257,'lui',NULL,'Luiseno','luiseno',0,NULL,0,NULL,0,NULL,0),(258,'lun',NULL,'Lunda','lunda',0,NULL,0,NULL,0,NULL,0),(259,'luo',NULL,'Luo (Kenya and Tanzania)','luo (Kenya et Tanzanie)',0,NULL,0,NULL,0,NULL,0),(260,'lus',NULL,'Lushai','lushai',0,NULL,0,NULL,0,NULL,0),(261,'mac','mk','Macedonian','macédonien',0,NULL,0,NULL,0,NULL,0),(262,'mad',NULL,'Madurese','madourais',0,NULL,0,NULL,0,NULL,0),(263,'mag',NULL,'Magahi','magahi',0,NULL,0,NULL,0,NULL,0),(264,'mah','mh','Marshallese','marshall',0,NULL,0,NULL,0,NULL,0),(265,'mai',NULL,'Maithili','maithili',0,NULL,0,NULL,0,NULL,0),(266,'mak',NULL,'Makasar','makassar',0,NULL,0,NULL,0,NULL,0),(267,'mal','ml','Malayalam','malayalam',0,NULL,0,NULL,0,NULL,0),(268,'man',NULL,'Mandingo','mandingue',0,NULL,0,NULL,0,NULL,0),(269,'mao','mi','Maori','maori',0,NULL,0,NULL,0,NULL,0),(270,'map',NULL,'Austronesian languages','austronésiennes, langues',0,NULL,0,NULL,0,NULL,0),(271,'mar','mr','Marathi','marathe',0,NULL,0,NULL,0,NULL,0),(272,'mas',NULL,'Masai','massaï',0,NULL,0,NULL,0,NULL,0),(273,'mdf',NULL,'Moksha','moksa',0,NULL,0,NULL,0,NULL,0),(274,'mdr',NULL,'Mandar','mandar',0,NULL,0,NULL,0,NULL,0),(275,'men',NULL,'Mende','mendé',0,NULL,0,NULL,0,NULL,0),(276,'mga',NULL,'Irish, Middle (900-1200)','irlandais moyen (900-1200)',0,NULL,0,NULL,0,NULL,0),(277,'mic',NULL,'Mi\'kmaq; Micmac','mi\'kmaq; micmac',0,NULL,0,NULL,0,NULL,0),(278,'min',NULL,'Minangkabau','minangkabau',0,NULL,0,NULL,0,NULL,0),(279,'mis',NULL,'Uncoded languages','langues non codées',0,NULL,0,NULL,0,NULL,0),(280,'mkh',NULL,'Mon-Khmer languages','môn-khmer, langues',0,NULL,0,NULL,0,NULL,0),(281,'mlg','mg','Malagasy','malgache',0,NULL,0,NULL,0,NULL,0),(282,'mlt','mt','Maltese','maltais',0,NULL,0,NULL,0,NULL,0),(283,'mnc',NULL,'Manchu','mandchou',0,NULL,0,NULL,0,NULL,0),(284,'mni',NULL,'Manipuri','manipuri',0,NULL,0,NULL,0,NULL,0),(285,'mno',NULL,'Manobo languages','manobo, langues',0,NULL,0,NULL,0,NULL,0),(286,'moh',NULL,'Mohawk','mohawk',0,NULL,0,NULL,0,NULL,0),(287,'mon','mn','Mongolian','mongol',0,NULL,0,NULL,0,NULL,0),(288,'mos',NULL,'Mossi','moré',0,NULL,0,NULL,0,NULL,0),(289,'may','ms','Malay','malais',0,NULL,0,NULL,0,NULL,0),(290,'mul',NULL,'Multiple languages','multilingue',0,NULL,0,NULL,0,NULL,0),(291,'mun',NULL,'Munda languages','mounda, langues',0,NULL,0,NULL,0,NULL,0),(292,'mus',NULL,'Creek','muskogee',0,NULL,0,NULL,0,NULL,0),(293,'mwl',NULL,'Mirandese','mirandais',0,NULL,0,NULL,0,NULL,0),(294,'mwr',NULL,'Marwari','marvari',0,NULL,0,NULL,0,NULL,0),(295,'bur','my','Burmese','birman',0,NULL,0,NULL,0,NULL,0),(296,'myn',NULL,'Mayan languages','maya, langues',0,NULL,0,NULL,0,NULL,0),(297,'myv',NULL,'Erzya','erza',0,NULL,0,NULL,0,NULL,0),(298,'nah',NULL,'Nahuatl languages','nahuatl, langues',0,NULL,0,NULL,0,NULL,0),(299,'nai',NULL,'North American Indian languages','nord-amérindiennes, langues',0,NULL,0,NULL,0,NULL,0),(300,'nap',NULL,'Neapolitan','napolitain',0,NULL,0,NULL,0,NULL,0),(301,'nau','na','Nauru','nauruan',0,NULL,0,NULL,0,NULL,0),(302,'nav','nv','Navajo; Navaho','navaho',0,NULL,0,NULL,0,NULL,0),(303,'nbl','nr','Ndebele, South; South Ndebele','ndébélé du Sud',0,NULL,0,NULL,0,NULL,0),(304,'nde','nd','Ndebele, North; North Ndebele','ndébélé du Nord',0,NULL,0,NULL,0,NULL,0),(305,'ndo','ng','Ndonga','ndonga',0,NULL,0,NULL,0,NULL,0),(306,'nds',NULL,'Low German; Low Saxon; German, Low; Saxon, Low','bas allemand; bas saxon; allemand, bas; saxon, bas',0,NULL,0,NULL,0,NULL,0),(307,'nep','ne','Nepali','népalais',0,NULL,0,NULL,0,NULL,0),(308,'new',NULL,'Nepal Bhasa; Newari','nepal bhasa; newari',0,NULL,0,NULL,0,NULL,0),(309,'nia',NULL,'Nias','nias',0,NULL,0,NULL,0,NULL,0),(310,'nic',NULL,'Niger-Kordofanian languages','nigéro-kordofaniennes, langues',0,NULL,0,NULL,0,NULL,0),(311,'niu',NULL,'Niuean','niué',0,NULL,0,NULL,0,NULL,0),(312,'dut','nl','Dutch; Flemish','néerlandais; flamand',0,NULL,0,NULL,0,NULL,0),(313,'nno','nn','Norwegian Nynorsk; Nynorsk, Norwegian','norvégien nynorsk; nynorsk, norvégien',0,NULL,0,NULL,0,NULL,0),(314,'nob','nb','Bokmål, Norwegian; Norwegian Bokmål','norvégien bokmål',0,NULL,0,NULL,0,NULL,0),(315,'nog',NULL,'Nogai','nogaï; nogay',0,NULL,0,NULL,0,NULL,0),(316,'non',NULL,'Norse, Old','norrois, vieux',0,NULL,0,NULL,0,NULL,0),(317,'nor','no','Norwegian','norvégien',0,NULL,0,NULL,0,NULL,0),(318,'nqo',NULL,'N\'Ko','n\'ko',0,NULL,0,NULL,0,NULL,0),(319,'nso',NULL,'Pedi; Sepedi; Northern Sotho','pedi; sepedi; sotho du Nord',0,NULL,0,NULL,0,NULL,0),(320,'nub',NULL,'Nubian languages','nubiennes, langues',0,NULL,0,NULL,0,NULL,0),(321,'nwc',NULL,'Classical Newari; Old Newari; Classical Nepal Bhasa','newari classique',0,NULL,0,NULL,0,NULL,0),(322,'nya','ny','Chichewa; Chewa; Nyanja','chichewa; chewa; nyanja',0,NULL,0,NULL,0,NULL,0),(323,'nym',NULL,'Nyamwezi','nyamwezi',0,NULL,0,NULL,0,NULL,0),(324,'nyn',NULL,'Nyankole','nyankolé',0,NULL,0,NULL,0,NULL,0),(325,'nyo',NULL,'Nyoro','nyoro',0,NULL,0,NULL,0,NULL,0),(326,'nzi',NULL,'Nzima','nzema',0,NULL,0,NULL,0,NULL,0),(327,'oci','oc','Occitan (post 1500)','occitan (après 1500)',0,NULL,0,NULL,0,NULL,0),(328,'oji','oj','Ojibwa','ojibwa',0,NULL,0,NULL,0,NULL,0),(329,'ori','or','Oriya','oriya',0,NULL,0,NULL,0,NULL,0),(330,'orm','om','Oromo','galla',0,NULL,0,NULL,0,NULL,0),(331,'osa',NULL,'Osage','osage',0,NULL,0,NULL,0,NULL,0),(332,'oss','os','Ossetian; Ossetic','ossète',0,NULL,0,NULL,0,NULL,0),(333,'ota',NULL,'Turkish, Ottoman (1500-1928)','turc ottoman (1500-1928)',0,NULL,0,NULL,0,NULL,0),(334,'oto',NULL,'Otomian languages','otomi, langues',0,NULL,0,NULL,0,NULL,0),(335,'paa',NULL,'Papuan languages','papoues, langues',0,NULL,0,NULL,0,NULL,0),(336,'pag',NULL,'Pangasinan','pangasinan',0,NULL,0,NULL,0,NULL,0),(337,'pal',NULL,'Pahlavi','pahlavi',0,NULL,0,NULL,0,NULL,0),(338,'pam',NULL,'Pampanga; Kapampangan','pampangan',0,NULL,0,NULL,0,NULL,0),(339,'pan','pa','Panjabi; Punjabi','pendjabi',0,NULL,0,NULL,0,NULL,0),(340,'pap',NULL,'Papiamento','papiamento',0,NULL,0,NULL,0,NULL,0),(341,'pau',NULL,'Palauan','palau',0,NULL,0,NULL,0,NULL,0),(342,'peo',NULL,'Persian, Old (ca.600-400 B.C.)','perse, vieux (ca. 600-400 av. J.-C.)',0,NULL,0,NULL,0,NULL,0),(343,'per','fa','Persian','persan',0,NULL,0,NULL,0,NULL,0),(344,'phi',NULL,'Philippine languages','philippines, langues',0,NULL,0,NULL,0,NULL,0),(345,'phn',NULL,'Phoenician','phénicien',0,NULL,0,NULL,0,NULL,0),(346,'pli','pi','Pali','pali',0,NULL,0,NULL,0,NULL,0),(347,'pol','pl','Polish','polonais',0,NULL,0,NULL,0,NULL,0),(348,'pon',NULL,'Pohnpeian','pohnpei',0,NULL,0,NULL,0,NULL,0),(349,'por','pt','Portuguese','portugais',0,NULL,0,NULL,0,NULL,0),(350,'pra',NULL,'Prakrit languages','prâkrit, langues',0,NULL,0,NULL,0,NULL,0),(351,'pro',NULL,'Provençal, Old (to 1500);Occitan, Old (to 1500)','provençal ancien (jusqu\'à 1500); occitan ancien (jusqu\'à 1500)',0,NULL,0,NULL,0,NULL,0),(352,'pus','ps','Pushto; Pashto','pachto',0,NULL,0,NULL,0,NULL,0),(353,'que','qu','Quechua','quechua',0,NULL,0,NULL,0,NULL,0),(354,'raj',NULL,'Rajasthani','rajasthani',0,NULL,0,NULL,0,NULL,0),(355,'rap',NULL,'Rapanui','rapanui',0,NULL,0,NULL,0,NULL,0),(356,'rar',NULL,'Rarotongan; Cook Islands Maori','rarotonga; maori des îles Cook',0,NULL,0,NULL,0,NULL,0),(357,'roa',NULL,'Romance languages','romanes, langues',0,NULL,0,NULL,0,NULL,0),(358,'roh','rm','Romansh','romanche',0,NULL,0,NULL,0,NULL,0),(359,'rom',NULL,'Romany','tsigane',0,NULL,0,NULL,0,NULL,0),(360,'rum','ro','Romanian; Moldavian; Moldovan','roumain; moldave',0,NULL,0,NULL,0,NULL,0),(361,'run','rn','Rundi','rundi',0,NULL,0,NULL,0,NULL,0),(362,'rup',NULL,'Aromanian; Arumanian; Macedo-Romanian','aroumain; macédo-roumain',0,NULL,0,NULL,0,NULL,0),(363,'rus','ru','Russian','russe',0,NULL,0,NULL,0,NULL,0),(364,'sad',NULL,'Sandawe','sandawe',0,NULL,0,NULL,0,NULL,0),(365,'sag','sg','Sango','sango',0,NULL,0,NULL,0,NULL,0),(366,'sah',NULL,'Yakut','iakoute',0,NULL,0,NULL,0,NULL,0),(367,'sai',NULL,'South American Indian languages','sud-amérindiennes, langues',0,NULL,0,NULL,0,NULL,0),(368,'sal',NULL,'Salishan languages','salishennes, langues',0,NULL,0,NULL,0,NULL,0),(369,'sam',NULL,'Samaritan Aramaic','samaritain',0,NULL,0,NULL,0,NULL,0),(370,'san','sa','Sanskrit','sanskrit',0,NULL,0,NULL,0,NULL,0),(371,'sas',NULL,'Sasak','sasak',0,NULL,0,NULL,0,NULL,0),(372,'sat',NULL,'Santali','santal',0,NULL,0,NULL,0,NULL,0),(373,'scn',NULL,'Sicilian','sicilien',0,NULL,0,NULL,0,NULL,0),(374,'sco',NULL,'Scots','écossais',0,NULL,0,NULL,0,NULL,0),(375,'sel',NULL,'Selkup','selkoupe',0,NULL,0,NULL,0,NULL,0),(376,'sem',NULL,'Semitic languages','sémitiques, langues',0,NULL,0,NULL,0,NULL,0),(377,'sga',NULL,'Irish, Old (to 900)','irlandais ancien (jusqu\'à 900)',0,NULL,0,NULL,0,NULL,0),(378,'sgn',NULL,'Sign Languages','langues des signes',0,NULL,0,NULL,0,NULL,0),(379,'shn',NULL,'Shan','chan',0,NULL,0,NULL,0,NULL,0),(380,'sid',NULL,'Sidamo','sidamo',0,NULL,0,NULL,0,NULL,0),(381,'sin','si','Sinhala; Sinhalese','singhalais',0,NULL,0,NULL,0,NULL,0),(382,'sio',NULL,'Siouan languages','sioux, langues',0,NULL,0,NULL,0,NULL,0),(383,'sit',NULL,'Sino-Tibetan languages','sino-tibétaines, langues',0,NULL,0,NULL,0,NULL,0),(384,'sla',NULL,'Slavic languages','slaves, langues',0,NULL,0,NULL,0,NULL,0),(385,'slo','sk','Slovak','slovaque',0,NULL,0,NULL,0,NULL,0),(386,'slv','sl','Slovenian','slovène',0,NULL,0,NULL,0,NULL,0),(387,'sma',NULL,'Southern Sami','sami du Sud',0,NULL,0,NULL,0,NULL,0),(388,'sme','se','Northern Sami','sami du Nord',0,NULL,0,NULL,0,NULL,0),(389,'smi',NULL,'Sami languages','sames, langues',0,NULL,0,NULL,0,NULL,0),(390,'smj',NULL,'Lule Sami','sami de Lule',0,NULL,0,NULL,0,NULL,0),(391,'smn',NULL,'Inari Sami','sami d\'Inari',0,NULL,0,NULL,0,NULL,0),(392,'smo','sm','Samoan','samoan',0,NULL,0,NULL,0,NULL,0),(393,'sms',NULL,'Skolt Sami','sami skolt',0,NULL,0,NULL,0,NULL,0),(394,'sna','sn','Shona','shona',0,NULL,0,NULL,0,NULL,0),(395,'snd','sd','Sindhi','sindhi',0,NULL,0,NULL,0,NULL,0),(396,'snk',NULL,'Soninke','soninké',0,NULL,0,NULL,0,NULL,0),(397,'sog',NULL,'Sogdian','sogdien',0,NULL,0,NULL,0,NULL,0),(398,'som','so','Somali','somali',0,NULL,0,NULL,0,NULL,0),(399,'son',NULL,'Songhai languages','songhai, langues',0,NULL,0,NULL,0,NULL,0),(400,'sot','st','Sotho, Southern','sotho du Sud',0,NULL,0,NULL,0,NULL,0),(401,'spa','es','Spanish; Castilian','espagnol; castillan',0,NULL,0,NULL,0,NULL,0),(402,'alb','sq','Albanian','albanais',0,NULL,0,NULL,0,NULL,0),(403,'srd','sc','Sardinian','sarde',0,NULL,0,NULL,0,NULL,0),(404,'srn',NULL,'Sranan Tongo','sranan tongo',0,NULL,0,NULL,0,NULL,0),(405,'srp','sr','Serbian','serbe',0,NULL,0,NULL,0,NULL,0),(406,'srr',NULL,'Serer','sérère',0,NULL,0,NULL,0,NULL,0),(407,'ssa',NULL,'Nilo-Saharan languages','nilo-sahariennes, langues',0,NULL,0,NULL,0,NULL,0),(408,'ssw','ss','Swati','swati',0,NULL,0,NULL,0,NULL,0),(409,'suk',NULL,'Sukuma','sukuma',0,NULL,0,NULL,0,NULL,0),(410,'sun','su','Sundanese','soundanais',0,NULL,0,NULL,0,NULL,0),(411,'sus',NULL,'Susu','soussou',0,NULL,0,NULL,0,NULL,0),(412,'sux',NULL,'Sumerian','sumérien',0,NULL,0,NULL,0,NULL,0),(413,'swa','sw','Swahili','swahili',0,NULL,0,NULL,0,NULL,0),(414,'swe','sv','Swedish','suédois',0,NULL,0,NULL,0,NULL,0),(415,'syc',NULL,'Classical Syriac','syriaque classique',0,NULL,0,NULL,0,NULL,0),(416,'syr',NULL,'Syriac','syriaque',0,NULL,0,NULL,0,NULL,0),(417,'tah','ty','Tahitian','tahitien',0,NULL,0,NULL,0,NULL,0),(418,'tai',NULL,'Tai languages','tai, langues',0,NULL,0,NULL,0,NULL,0),(419,'tam','ta','Tamil','tamoul',0,NULL,0,NULL,0,NULL,0),(420,'tat','tt','Tatar','tatar',0,NULL,0,NULL,0,NULL,0),(421,'tel','te','Telugu','télougou',0,NULL,0,NULL,0,NULL,0),(422,'tem',NULL,'Timne','temne',0,NULL,0,NULL,0,NULL,0),(423,'ter',NULL,'Tereno','tereno',0,NULL,0,NULL,0,NULL,0),(424,'tet',NULL,'Tetum','tetum',0,NULL,0,NULL,0,NULL,0),(425,'tgk','tg','Tajik','tadjik',0,NULL,0,NULL,0,NULL,0),(426,'tgl','tl','Tagalog','tagalog',0,NULL,0,NULL,0,NULL,0),(427,'tha','th','Thai','thaï',0,NULL,0,NULL,0,NULL,0),(428,'tig',NULL,'Tigre','tigré',0,NULL,0,NULL,0,NULL,0),(429,'tir','ti','Tigrinya','tigrigna',0,NULL,0,NULL,0,NULL,0),(430,'tiv',NULL,'Tiv','tiv',0,NULL,0,NULL,0,NULL,0),(431,'tkl',NULL,'Tokelau','tokelau',0,NULL,0,NULL,0,NULL,0),(432,'tlh',NULL,'Klingon; tlhIngan-Hol','klingon',0,NULL,0,NULL,0,NULL,0),(433,'tli',NULL,'Tlingit','tlingit',0,NULL,0,NULL,0,NULL,0),(434,'tmh',NULL,'Tamashek','tamacheq',0,NULL,0,NULL,0,NULL,0),(435,'tog',NULL,'Tonga (Nyasa)','tonga (Nyasa)',0,NULL,0,NULL,0,NULL,0),(436,'ton','to','Tonga (Tonga Islands)','tongan (Îles Tonga)',0,NULL,0,NULL,0,NULL,0),(437,'tpi',NULL,'Tok Pisin','tok pisin',0,NULL,0,NULL,0,NULL,0),(438,'tsi',NULL,'Tsimshian','tsimshian',0,NULL,0,NULL,0,NULL,0),(439,'tsn','tn','Tswana','tswana',0,NULL,0,NULL,0,NULL,0),(440,'tso','ts','Tsonga','tsonga',0,NULL,0,NULL,0,NULL,0),(441,'tuk','tk','Turkmen','turkmène',0,NULL,0,NULL,0,NULL,0),(442,'tum',NULL,'Tumbuka','tumbuka',0,NULL,0,NULL,0,NULL,0),(443,'tup',NULL,'Tupi languages','tupi, langues',0,NULL,0,NULL,0,NULL,0),(444,'tur','tr','Turkish','turc',0,NULL,0,NULL,0,NULL,0),(445,'tut',NULL,'Altaic languages','altaïques, langues',0,NULL,0,NULL,0,NULL,0),(446,'tvl',NULL,'Tuvalu','tuvalu',0,NULL,0,NULL,0,NULL,0),(447,'twi','tw','Twi','twi',0,NULL,0,NULL,0,NULL,0),(448,'tyv',NULL,'Tuvinian','touva',0,NULL,0,NULL,0,NULL,0),(449,'udm',NULL,'Udmurt','oudmourte',0,NULL,0,NULL,0,NULL,0),(450,'uga',NULL,'Ugaritic','ougaritique',0,NULL,0,NULL,0,NULL,0),(451,'uig','ug','Uighur; Uyghur','ouïgour',0,NULL,0,NULL,0,NULL,0),(452,'ukr','uk','Ukrainian','ukrainien',0,NULL,0,NULL,0,NULL,0),(453,'umb',NULL,'Umbundu','umbundu',0,NULL,0,NULL,0,NULL,0),(454,'und',NULL,'Undetermined','indéterminée',0,NULL,0,NULL,0,NULL,0),(455,'urd','ur','Urdu','ourdou',0,NULL,0,NULL,0,NULL,0),(456,'uzb','uz','Uzbek','ouszbek',0,NULL,0,NULL,0,NULL,0),(457,'vai',NULL,'Vai','vaï',0,NULL,0,NULL,0,NULL,0),(458,'ven','ve','Venda','venda',0,NULL,0,NULL,0,NULL,0),(459,'vie','vi','Vietnamese','vietnamien',0,NULL,0,NULL,0,NULL,0),(460,'vol','vo','Volapük','volapük',0,NULL,0,NULL,0,NULL,0),(461,'vot',NULL,'Votic','vote',0,NULL,0,NULL,0,NULL,0),(462,'wak',NULL,'Wakashan languages','wakashanes, langues',0,NULL,0,NULL,0,NULL,0),(463,'wal',NULL,'Wolaitta; Wolaytta','wolaitta; wolaytta',0,NULL,0,NULL,0,NULL,0),(464,'war',NULL,'Waray','waray',0,NULL,0,NULL,0,NULL,0),(465,'was',NULL,'Washo','washo',0,NULL,0,NULL,0,NULL,0),(466,'wen',NULL,'Sorbian languages','sorabes, langues',0,NULL,0,NULL,0,NULL,0),(467,'wln','wa','Walloon','wallon',0,NULL,0,NULL,0,NULL,0),(468,'wol','wo','Wolof','wolof',0,NULL,0,NULL,0,NULL,0),(469,'xal',NULL,'Kalmyk; Oirat','kalmouk; oïrat',0,NULL,0,NULL,0,NULL,0),(470,'xho','xh','Xhosa','xhosa',0,NULL,0,NULL,0,NULL,0),(471,'yao',NULL,'Yao','yao',0,NULL,0,NULL,0,NULL,0),(472,'yap',NULL,'Yapese','yapois',0,NULL,0,NULL,0,NULL,0),(473,'yid','yi','Yiddish','yiddish',0,NULL,0,NULL,0,NULL,0),(474,'yor','yo','Yoruba','yoruba',0,NULL,0,NULL,0,NULL,0),(475,'ypk',NULL,'Yupik languages','yupik, langues',0,NULL,0,NULL,0,NULL,0),(476,'zap',NULL,'Zapotec','zapotèque',0,NULL,0,NULL,0,NULL,0),(477,'zbl',NULL,'Blissymbols; Blissymbolics; Bliss','symboles Bliss; Bliss',0,NULL,0,NULL,0,NULL,0),(478,'zen',NULL,'Zenaga','zenaga',0,NULL,0,NULL,0,NULL,0),(479,'zha','za','Zhuang; Chuang','zhuang; chuang',0,NULL,0,NULL,0,NULL,0),(480,'znd',NULL,'Zande languages','zandé, langues',0,NULL,0,NULL,0,NULL,0),(481,'zul','zu','Zulu','zoulou',0,NULL,0,NULL,0,NULL,0),(482,'zun',NULL,'Zuni','zuni',0,NULL,0,NULL,0,NULL,0),(483,'zxx',NULL,'No linguistic content; Not applicable','pas de contenu linguistique; non applicable',0,NULL,0,NULL,0,NULL,0),(484,'zza',NULL,'Zaza; Dimili; Dimli; Kirdki; Kirmanjki; Zazaki','zaza; dimili; dimli; kirdki; kirmanjki; zazaki',0,NULL,0,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ewa_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_languages_users`
--

DROP TABLE IF EXISTS `ewa_languages_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_languages_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `language_ix` (`language_id`),
  KEY `user_ix` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_languages_users`
--

LOCK TABLES `ewa_languages_users` WRITE;
/*!40000 ALTER TABLE `ewa_languages_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_languages_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_licence_types`
--

DROP TABLE IF EXISTS `ewa_licence_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_licence_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_licence_types`
--

LOCK TABLES `ewa_licence_types` WRITE;
/*!40000 ALTER TABLE `ewa_licence_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_licence_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_permissions`
--

DROP TABLE IF EXISTS `ewa_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT '',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_permissions`
--

LOCK TABLES `ewa_permissions` WRITE;
/*!40000 ALTER TABLE `ewa_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_person_types`
--

DROP TABLE IF EXISTS `ewa_person_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_person_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_person_types`
--

LOCK TABLES `ewa_person_types` WRITE;
/*!40000 ALTER TABLE `ewa_person_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_person_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_roles`
--

DROP TABLE IF EXISTS `ewa_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_roles`
--

LOCK TABLES `ewa_roles` WRITE;
/*!40000 ALTER TABLE `ewa_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_sent_emails`
--

DROP TABLE IF EXISTS `ewa_sent_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_sent_emails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject_line` varchar(250) NOT NULL DEFAULT '',
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `content` text,
  `return_email` varchar(100) DEFAULT '',
  `who_sent_it` varchar(250) NOT NULL DEFAULT '',
  `sent_successfully` tinyint(1) DEFAULT '0',
  `contact_back` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_sent_emails`
--

LOCK TABLES `ewa_sent_emails` WRITE;
/*!40000 ALTER TABLE `ewa_sent_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_sent_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_statuses`
--

DROP TABLE IF EXISTS `ewa_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_statuses` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_statuses`
--

LOCK TABLES `ewa_statuses` WRITE;
/*!40000 ALTER TABLE `ewa_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_tags`
--

DROP TABLE IF EXISTS `ewa_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_tags` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_tags`
--

LOCK TABLES `ewa_tags` WRITE;
/*!40000 ALTER TABLE `ewa_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_themes`
--

DROP TABLE IF EXISTS `ewa_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_themes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `file` varchar(200) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `basename` varchar(255) DEFAULT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_themes`
--

LOCK TABLES `ewa_themes` WRITE;
/*!40000 ALTER TABLE `ewa_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_tk_label_types`
--

DROP TABLE IF EXISTS `ewa_tk_label_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_tk_label_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_tk_label_types`
--

LOCK TABLES `ewa_tk_label_types` WRITE;
/*!40000 ALTER TABLE `ewa_tk_label_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_tk_label_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_tk_licence_types`
--

DROP TABLE IF EXISTS `ewa_tk_licence_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_tk_licence_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_tk_licence_types`
--

LOCK TABLES `ewa_tk_licence_types` WRITE;
/*!40000 ALTER TABLE `ewa_tk_licence_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ewa_tk_licence_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_type_of_entries`
--

DROP TABLE IF EXISTS `ewa_type_of_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_type_of_entries` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_type_of_entries`
--

LOCK TABLES `ewa_type_of_entries` WRITE;
/*!40000 ALTER TABLE `ewa_type_of_entries` DISABLE KEYS */;
INSERT INTO `ewa_type_of_entries` VALUES (1,'test entry type',1,'2014-11-21 15:46:48',0,'2014-11-17 17:28:29',0),(2,'test entry type',0,'2015-01-07 11:26:01',0,'2015-01-07 11:26:01',0);
/*!40000 ALTER TABLE `ewa_type_of_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_usefuls`
--

DROP TABLE IF EXISTS `ewa_usefuls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_usefuls` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(6) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_usefuls`
--

LOCK TABLES `ewa_usefuls` WRITE;
/*!40000 ALTER TABLE `ewa_usefuls` DISABLE KEYS */;
INSERT INTO `ewa_usefuls` VALUES (1,'material culture',NULL,1,10,0,'2014-12-05 02:38:22',0,'2014-12-05 02:38:22',0),(2,'adornment',1,2,3,0,'2014-12-05 02:38:54',0,'2014-12-05 02:38:54',0),(3,'crafts',1,4,5,0,'2014-12-05 02:54:50',0,'2014-12-05 02:54:50',0),(4,'clothing & fashion',1,6,7,0,'2014-12-05 02:55:27',0,'2014-12-05 02:55:27',0),(5,'tools for hunting & collecting',1,8,9,0,'2014-12-05 02:55:55',0,'2014-12-05 02:55:55',0),(6,'foods',NULL,11,16,0,'2014-12-05 02:56:43',0,'2014-12-05 02:56:43',0),(7,'getting foods',6,12,13,0,'2014-12-05 02:57:10',0,'2014-12-05 02:57:10',0),(8,'preparing foods',6,14,15,0,'2014-12-05 02:57:24',0,'2014-12-05 02:57:24',0),(9,'birds as companions/pets/display/fowling ',NULL,17,18,0,'2014-12-05 03:00:46',0,'2014-12-05 03:00:46',0),(10,'commercial',NULL,19,20,0,'2014-12-05 03:01:21',0,'2014-12-05 03:01:21',0),(11,'medicinals/ therapeutics',NULL,21,22,0,'2014-12-05 03:01:41',0,'2014-12-05 03:01:41',0),(12,'feathers',NULL,23,24,0,'2014-12-05 03:02:10',0,'2014-12-05 03:02:10',0),(13,'claws',NULL,25,26,0,'2014-12-05 03:02:36',0,'2014-12-05 03:02:36',0),(14,'meat',NULL,27,28,0,'2014-12-05 03:02:52',0,'2014-12-05 03:02:52',0),(15,'beaks',NULL,29,30,0,'2014-12-05 03:03:17',0,'2014-12-05 03:03:17',0),(16,'skins',NULL,31,32,0,'2014-12-05 03:03:36',0,'2014-12-05 03:03:36',0),(17,'eggs',NULL,33,34,0,'2014-12-05 03:03:55',0,'2014-12-05 03:03:55',0),(18,'nests',NULL,35,36,0,'2014-12-05 03:04:12',0,'2014-12-05 03:04:12',0),(19,'bones',NULL,37,38,0,'2014-12-05 03:04:34',0,'2014-12-05 03:04:34',0),(20,'fat',NULL,39,40,0,'2014-12-05 03:04:55',0,'2014-12-05 03:04:55',0),(21,'guano',NULL,41,42,0,'2014-12-05 03:05:10',0,'2014-12-05 03:05:10',0);
/*!40000 ALTER TABLE `ewa_usefuls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ewa_users`
--

DROP TABLE IF EXISTS `ewa_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ewa_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lastname` varchar(100) DEFAULT '',
  `firstname` varchar(100) DEFAULT '',
  `username` varchar(15) DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `gender` tinyint(2) unsigned DEFAULT NULL,
  `settlement` varchar(100) DEFAULT NULL,
  `country_id` int(6) unsigned DEFAULT NULL,
  `education_level_id` int(6) unsigned DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `biography` text,
  `password` varchar(250) NOT NULL DEFAULT '',
  `tokenhash` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `firstname_ix` (`firstname`),
  KEY `lastname_ix` (`lastname`),
  KEY `email_ix` (`email`),
  KEY `country_ix` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ewa_users`
--

LOCK TABLES `ewa_users` WRITE;
/*!40000 ALTER TABLE `ewa_users` DISABLE KEYS */;
INSERT INTO `ewa_users` VALUES (1,'','','richardb','',NULL,NULL,NULL,NULL,NULL,NULL,'$2a$10$36tyqcggJWmC88f5JfFiIORJniZzTSIPfhE4VUSgegx.RtW/ooA1i','',0,'2015-01-06 15:03:13',0,'2015-01-06 15:03:13',0),(2,'','','heidi','',NULL,NULL,NULL,NULL,NULL,NULL,'$2a$10$KKiz3dEWtvEnMnHJxpAN3.FCtBCxn.H7Yhg5W45AYsJaw1dhUZ5mm','',0,'2015-01-07 10:10:25',0,'2015-01-07 10:10:25',0),(3,'','','ewa_tester','',NULL,NULL,NULL,NULL,NULL,NULL,'$2a$10$yHwhr01Hyf3FpUJ6x7whj.6pIIrgWbEk5ttFfh3YvnafzSyYSoIKa','',0,'2015-01-07 19:09:06',0,'2015-01-07 19:09:06',0);
/*!40000 ALTER TABLE `ewa_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-20 15:23:24
