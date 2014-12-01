-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: musicstore
-- ------------------------------------------------------
-- Server version	5.5.40-0+wheezy1

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) NOT NULL,
  `album_name` text NOT NULL,
  `date_released` date DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (21,7,'Second','0000-00-00'),(22,1,'Live at Roadburn','0000-00-00'),(23,8,'A Grey Sigh In A Flower Husk','0000-00-00'),(24,1,'First','0000-00-00'),(25,1,'First & Second','0000-00-00'),(26,1,'Red Album','0000-00-00'),(27,1,'Blue Record','0000-00-00'),(28,9,'Advance And Vanquish','0000-00-00'),(29,3,'Battlecry Under A Wintersun','0000-00-00'),(30,3,'Fire Up The Blades','0000-00-00');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_name` text NOT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (7,'Baroness'),(8,'Unpersons'),(9,'3 Inches Of Blood');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_title` text NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (177,'Progressive Metal'),(178,'Progressive Metal'),(179,'Progressive Metal'),(180,'Progressive Metal'),(181,'Progressive Metal'),(182,'Progressive Metal'),(183,'Progressive Metal'),(184,'Progressive Metal'),(185,'Progressive Metal'),(186,'Progressive Metal'),(187,'Progressive Metal'),(188,'Progressive Metal'),(189,'Other'),(190,'Stoner/ Sludge Metal'),(191,'Stoner/ Sludge Metal'),(192,'Stoner/ Sludge Metal'),(193,'Stoner/ Sludge Metal'),(194,'Stoner/ Sludge Metal'),(195,'Stoner/ Sludge Metal'),(196,'Stoner/ Sludge Metal'),(197,'Stoner/ Sludge Metal'),(198,'Stoner/ Sludge Metal'),(199,'Stoner/ Sludge Metal'),(200,'Stoner/ Sludge Metal'),(201,'Stoner/ Sludge Metal'),(202,'Stoner/ Sludge Metal'),(203,'Stoner/ Sludge Metal'),(204,'Stoner/ Sludge Metal'),(205,'Metal'),(206,'Metal'),(207,'Metal'),(208,'Metal'),(209,'Metal'),(210,'Metal'),(211,'Metal'),(212,'Metal'),(213,'Metal'),(214,'Metal'),(215,'Metal'),(216,'Metal'),(217,'Metal'),(218,'Metal'),(219,'Metal'),(220,'Metal'),(221,'Metal'),(222,'Metal'),(223,'Metal'),(224,'Metal'),(225,'Metal'),(226,'Metal'),(227,'Metal'),(228,' '),(229,' '),(230,' '),(231,' '),(232,' '),(233,' '),(234,' '),(235,' '),(236,' '),(237,' '),(238,' '),(239,' '),(240,' '),(241,'Metal'),(242,'Metal'),(243,'Metal'),(244,'Metal'),(245,'Metal'),(246,'Metal'),(247,'Metal'),(248,'Metal'),(249,'Metal'),(250,'Metal'),(251,'Metal'),(252,'Metal'),(253,'Metal'),(254,'Metal'),(255,'Metal'),(256,'Metal'),(257,'Metal'),(258,'Metal'),(259,'Metal'),(260,'Metal'),(261,'Metal'),(262,'Metal'),(263,'Metal'),(264,'Metal');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `song_name` text NOT NULL,
  `mp3_path` text NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (177,21,7,'Vision','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2005 - Second/03 Baroness - Vision.mp3'),(178,1,1,'Red Sky','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2005 - Second/01 Baroness - Red Sky.mp3'),(179,1,1,'Son Of Sun','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2005 - Second/02 Baroness - Son Of Sun.mp3'),(180,22,1,'Isak (Live)','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Live at Roadburn 2009 (Bootleg)/02 Isak.mp3'),(181,2,1,'Rays On Pinion (Live)','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Live at Roadburn 2009 (Bootleg)/03 Rays On Pinion.mp3'),(182,2,1,'Wanderlust (Live)','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Live at Roadburn 2009 (Bootleg)/06 Wanderlust.mp3'),(183,2,1,'Red Sky (Live)','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Live at Roadburn 2009 (Bootleg)/04 Red Sky.mp3'),(184,2,1,'O\'Appalachia (Live)','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Live at Roadburn 2009 (Bootleg)/05 O\'Appalachia.mp3'),(185,2,1,'Tower Falls (Live)','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Live at Roadburn 2009 (Bootleg)/08 Tower Falls.mp3'),(186,2,1,'Unknown (Live)','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Live at Roadburn 2009 (Bootleg)/07 Unknown.mp3'),(187,2,1,'Coeur (Live)','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Live at Roadburn 2009 (Bootleg)/09 Coeur.mp3'),(188,2,1,'Grad (Live)','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Live at Roadburn 2009 (Bootleg)/10 Grad.mp3'),(189,2,1,'The Birthing (Live)','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Live at Roadburn 2009 (Bootleg)/01 The Birthing.mp3'),(190,23,8,'Dry Hand','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - A Grey Sigh In A Flower Husk (Baroness & Unpersons split)/05 Dry Hand.mp3'),(191,3,2,'Number','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - A Grey Sigh In A Flower Husk (Baroness & Unpersons split)/04 Number.mp3'),(192,3,1,'Teiresias','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - A Grey Sigh In A Flower Husk (Baroness & Unpersons split)/01 Teiresias.mp3'),(193,3,1,'Cavite','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - A Grey Sigh In A Flower Husk (Baroness & Unpersons split)/02 Cavite.mp3'),(194,3,2,'Black Finnegan','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - A Grey Sigh In A Flower Husk (Baroness & Unpersons split)/03 Black Finnegan.mp3'),(195,3,2,'A Small Gesture, A Thousand Small Happy Gestures','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - A Grey Sigh In A Flower Husk (Baroness & Unpersons split)/06 A Small Gesture, A Thousand Small Happy Gestures.mp3'),(196,24,1,'A Small Gesture, A Thousand Small Happy Gestures','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2003 - First/02 - Coeur.mp3'),(197,4,1,'A Small Gesture, A Thousand Small Happy Gestures','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2003 - First/01 - Tower Falls.mp3'),(198,4,1,'A Small Gesture, A Thousand Small Happy Gestures','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2003 - First/03 - Rise.mp3'),(199,25,1,'Vision','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2008 - First & Second (Remastered)/06 - Vision.mp3'),(200,5,1,'Coeur','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2008 - First & Second (Remastered)/02 - Coeur.mp3'),(201,5,1,'Tower Falls','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2008 - First & Second (Remastered)/01 - Tower Falls.mp3'),(202,5,1,'Red Sky','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2008 - First & Second (Remastered)/04 - Red Sky.mp3'),(203,5,1,'Son Of Sun','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2008 - First & Second (Remastered)/05 - Son Of Sun.mp3'),(204,5,1,'Rise','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2008 - First & Second (Remastered)/03 - Rise.mp3'),(205,26,1,'Wanderlust','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/06 - Wanderlust.mp3'),(206,6,1,'Wailing Wintery Wind','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/04 - Wailing Wintery Wind.mp3'),(207,6,1,'Hidden Track','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/11 - Hidden Track.mp3'),(208,6,1,'Teeth Of A Cogwheel','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/08 - Teeth Of A Cogwheel.mp3'),(209,6,1,'O\'appalachia','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/09 - O\'appalachia.mp3'),(210,6,1,'Cockroach En Fleur','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/05 - Cockroach En Fleur.mp3'),(211,6,1,'Grad','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/10 - Grad.mp3'),(212,6,1,'The Birthing','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/02 - The Birthing.mp3'),(213,6,1,'Isak','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/03 - Isak.mp3'),(214,6,1,'Aleph','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/07 - Aleph.mp3'),(215,6,1,'Rays On Pinion','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2007 - Red Album/01 - Rays On Pinion.mp3'),(216,27,1,'War, Wisdom, and Rhyme','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/09 War, Wisdom, and Rhyme.mp3'),(217,7,1,'Steel that Sleeps the Eye','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/04 Steel that Sleeps the Eye.mp3'),(218,7,1,'The Sweetest Curse','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/02 The Sweetest Curse.mp3'),(219,7,1,'O\'er Hell and Hide','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/08 O\'er Hell and Hide.mp3'),(220,7,1,'Bullhead\'s Lament','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/12 Bullhead\'s Lament.mp3'),(221,7,1,'Blackpowder Orchard','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/10 Blackpowder Orchard.mp3'),(222,7,1,'Swollen and Halo','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/05 Swollen and Halo.mp3'),(223,7,1,'The Gnashing','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/11 The Gnashing.mp3'),(224,7,1,'Bullhead\'s Psalm','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/01 Bullhead\'s Psalm.mp3'),(225,7,1,'Ogeechee Hymnal','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/06 Ogeechee Hymnal.mp3'),(226,7,1,'Jake Leg','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/03 Jake Leg.mp3'),(227,7,1,'A Horse Called Golgotha','/home/deathgrindfreak/bin/musicstore/music/Baroness [Discography HQ]/2009 - Blue Record (Deluxe Edition)/Blue Record/07 A Horse Called Golgotha.mp3'),(228,28,9,'Deadly sinners','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/02 - Deadly sinners.mp3'),(229,8,3,'Revenge is a vulture','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/03 - Revenge is a vulture.mp3'),(230,8,3,'The phantom of the crimson cloak','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/12 - The phantom of the crimson cloak.mp3'),(231,8,3,'Axes of evil','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/09 - Axes of evil.mp3'),(232,8,3,'Dominion of deceit','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/04 - Dominion of deceit.mp3'),(233,8,3,'Fear on the bridge (Upon the boiling sea I)','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/01 - Fear on the bridge (Upon the boiling sea I).mp3'),(234,8,3,'Swordmaster','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/08 - Swordmaster.mp3'),(235,8,3,'Wykydtron','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/07 - Wykydtron.mp3'),(236,8,3,'Isle of eternal despair (Upon the boiling sea III)','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/13 - Isle of eternal despair (Upon the boiling sea III).mp3'),(237,8,3,'Destroy the orcs','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/11 - Destroy the orcs.mp3'),(238,8,3,'Premonition of pain','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/05 - Premonition of pain.mp3'),(239,8,3,'Crazy nights','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/10 - Crazy nights.mp3'),(240,8,3,'Lord of the storm (Upon the boiling sea II)','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2004 - Advance And Vanquish/06 - Lord of the storm (Upon the boiling sea II).mp3'),(241,29,3,'Ride Darkhorse Ride','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/01-Ride Darkhorse Ride.mp3'),(242,9,3,'Skeletal Onslaught','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/05-Skeletal Onslaught.mp3'),(243,9,3,'Headwaters Of The River Of Blood','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/03-Headwaters Of The River Of Blood.mp3'),(244,9,3,'Journey To The Promiseland','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/06-Journey To The Promiseland.mp3'),(245,9,3,'Halls Of Heros','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/10-Halls Of Heros.mp3'),(246,9,3,'Blazing Fires Of Evermore','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/09-Blazing Fires Of Evermore.mp3'),(247,9,3,'Heir To The Chaos Throne','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/04-Heir To The Chaos Throne.mp3'),(248,9,3,'Lady Deathwish','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/07-Lady Deathwish.mp3'),(249,9,3,'Balls Of Ice','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/11-Balls Of Ice.mp3'),(250,9,3,'Curse Of The Lighthouse Keeper','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/08-Curse Of The Lighthouse Keeper.mp3'),(251,9,3,'Destroy The Orcs','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2002 - Battlecry Under A Wintersun/02-Destroy The Orcs.mp3'),(252,30,3,'The Hydra\'s Teeth','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/12-The Hydra\'s Teeth.mp3'),(253,10,3,'The Great Hall Of Feasting','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/08-The Great Hall Of Feasting.mp3'),(254,10,3,'God Of The Cold White Silence','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/05-God Of The Cold White Silence.mp3'),(255,10,3,'Trial Of Champions','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/04-Trial Of Champions.mp3'),(256,10,3,'Rejoice In The Fires Of Man\'s Demise','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/13-Rejoice In The Fires Of Man\'s Demise.mp3'),(257,10,3,'Infinite Legions','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/09-Infinite Legions.mp3'),(258,10,3,'Forest King','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/06-Forest King.mp3'),(259,10,3,'Night Marauders','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/02-Night Marauders.mp3'),(260,10,3,'Assassins Of The Light','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/10-Assassins Of The Light.mp3'),(261,10,3,'Black Spire','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/11-Black Spire.mp3'),(262,10,3,'Through The Horned Gate','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/01-Through The Horned Gate.mp3'),(263,10,3,'Demons Blade','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/07-Demons Blade.mp3'),(264,10,3,'The Goatriders Horde','/home/deathgrindfreak/bin/musicstore/music/3 Inches of Blood - Discography/2007 - Fire Up The Blades/03-The Goatriders Horde.mp3');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-30 22:03:16
