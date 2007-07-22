-- MySQL dump 10.13  Distrib 5.5.39, for Win64 (x86)
--
-- Host: localhost    Database: antrix_world
-- ------------------------------------------------------
-- Server version	5.5.39

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `acct` int(30) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gm` varchar(50) NOT NULL,
  `flags` int(30) NOT NULL,
  `banned` int(30) NOT NULL,
  `lastlogin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `lastip` varchar(50) NOT NULL,
  PRIMARY KEY (`acct`,`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_agents`
--

DROP TABLE IF EXISTS `ai_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ai_agents` (
  `entryId` int(6) NOT NULL DEFAULT '0',
  `AI_AGENT` int(2) NOT NULL DEFAULT '0',
  `procEvent` int(2) NOT NULL DEFAULT '0',
  `procChance` int(3) NOT NULL DEFAULT '0',
  `procCount` int(6) NOT NULL DEFAULT '0',
  `spellId` int(6) NOT NULL DEFAULT '0',
  `spellType` int(2) NOT NULL DEFAULT '0',
  `spelltargetType` int(2) NOT NULL DEFAULT '0',
  `spellCooldown` int(8) NOT NULL DEFAULT '0',
  `floatMisc1` float NOT NULL DEFAULT '0',
  `Misc2` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entryId`,`AI_AGENT`,`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_agents`
--

LOCK TABLES `ai_agents` WRITE;
/*!40000 ALTER TABLE `ai_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `ai_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_threattospellid`
--

DROP TABLE IF EXISTS `ai_threattospellid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ai_threattospellid` (
  `spellId` int(5) NOT NULL DEFAULT '0',
  `mod` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_threattospellid`
--

LOCK TABLES `ai_threattospellid` WRITE;
/*!40000 ALTER TABLE `ai_threattospellid` DISABLE KEYS */;
/*!40000 ALTER TABLE `ai_threattospellid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areatriggers`
--

DROP TABLE IF EXISTS `areatriggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areatriggers` (
  `AreaTriggerid` bigint(20) NOT NULL DEFAULT '0',
  `Type` int(100) DEFAULT NULL,
  `Mapid` int(100) DEFAULT NULL,
  `Screen` int(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `required_honor_rank` int(5) NOT NULL,
  `required_level` int(5) NOT NULL,
  PRIMARY KEY (`AreaTriggerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areatriggers`
--

LOCK TABLES `areatriggers` WRITE;
/*!40000 ALTER TABLE `areatriggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `areatriggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctionhouse`
--

DROP TABLE IF EXISTS `auctionhouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctionhouse` (
  `entryid` int(32) NOT NULL AUTO_INCREMENT,
  `auctioneer` bigint(64) unsigned NOT NULL DEFAULT '0',
  `AHid` int(32) NOT NULL DEFAULT '0',
  UNIQUE KEY `entryid` (`entryid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctionhouse`
--

LOCK TABLES `auctionhouse` WRITE;
/*!40000 ALTER TABLE `auctionhouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctionhouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctions`
--

DROP TABLE IF EXISTS `auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctions` (
  `auctionId` int(32) NOT NULL AUTO_INCREMENT,
  `auctionhouse` int(32) DEFAULT NULL,
  `item` bigint(10) DEFAULT NULL,
  `owner` bigint(10) DEFAULT NULL,
  `buyout` int(32) DEFAULT NULL,
  `time` int(32) DEFAULT NULL,
  `bidder` bigint(10) DEFAULT NULL,
  `bid` int(32) DEFAULT NULL,
  `deposit` int(32) DEFAULT NULL,
  PRIMARY KEY (`auctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=37544 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions`
--

LOCK TABLES `auctions` WRITE;
/*!40000 ALTER TABLE `auctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `acct` int(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT '',
  `race` smallint(3) unsigned NOT NULL,
  `class` smallint(3) unsigned NOT NULL,
  `gender` tinyint(1) unsigned NOT NULL,
  `level` int(3) unsigned NOT NULL,
  `xp` int(30) unsigned NOT NULL,
  `exploration_data` longtext NOT NULL,
  `skills` longtext NOT NULL,
  `watched_faction_index` bigint(40) unsigned NOT NULL,
  `selected_pvp_title` int(30) unsigned NOT NULL,
  `available_pvp_titles` int(30) unsigned NOT NULL,
  `gold` int(30) unsigned NOT NULL,
  `ammo_id` int(30) unsigned NOT NULL,
  `available_prof_points` int(30) unsigned NOT NULL,
  `available_talent_points` int(30) unsigned NOT NULL,
  `current_hp` int(30) unsigned NOT NULL,
  `current_power` int(30) unsigned NOT NULL,
  `pvprank` int(30) unsigned NOT NULL,
  `bytes` int(30) unsigned NOT NULL,
  `bytes2` int(30) unsigned NOT NULL,
  `player_flags` int(30) unsigned NOT NULL,
  `player_bytes` int(30) unsigned NOT NULL,
  `positionX` float NOT NULL DEFAULT '0',
  `positionY` float NOT NULL DEFAULT '0',
  `positionZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` int(8) unsigned NOT NULL DEFAULT '0',
  `zoneId` int(8) unsigned NOT NULL DEFAULT '0',
  `taximask` longtext NOT NULL,
  `banned` int(6) unsigned NOT NULL DEFAULT '0',
  `banReason` varchar(50) NOT NULL,
  `timestamp` text NOT NULL,
  `online` int(11) DEFAULT NULL,
  `bindpositionX` float NOT NULL DEFAULT '0',
  `bindpositionY` float NOT NULL DEFAULT '0',
  `bindpositionZ` float NOT NULL DEFAULT '0',
  `bindmapId` int(8) unsigned NOT NULL DEFAULT '0',
  `bindzoneId` int(8) unsigned NOT NULL DEFAULT '0',
  `isResting` int(1) NOT NULL DEFAULT '0',
  `restState` int(5) NOT NULL DEFAULT '0',
  `restTime` int(5) NOT NULL DEFAULT '0',
  `playedtime` longtext NOT NULL,
  `deathstate` int(2) NOT NULL DEFAULT '0',
  `TalentResetTimes` int(3) NOT NULL DEFAULT '0',
  `first_login` tinyint(1) NOT NULL DEFAULT '0',
  `forced_rename_pending` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `publicNote` varchar(32) NOT NULL DEFAULT '',
  `officerNote` varchar(32) NOT NULL DEFAULT '',
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `guildRank` int(10) unsigned NOT NULL DEFAULT '0',
  `charterId` int(10) NOT NULL,
  `totalstableslots` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_id` int(10) NOT NULL DEFAULT '0',
  `entrypointmap` int(4) NOT NULL DEFAULT '0',
  `entrypointx` float NOT NULL DEFAULT '0',
  `entrypointy` float NOT NULL DEFAULT '0',
  `entrypointz` float NOT NULL DEFAULT '0',
  `entrypointo` float NOT NULL DEFAULT '0',
  `entrypointinstance` int(10) NOT NULL DEFAULT '0',
  `taxi_path` int(10) NOT NULL DEFAULT '0',
  `taxi_lastnode` int(10) NOT NULL DEFAULT '0',
  `taxi_mountid` int(10) NOT NULL DEFAULT '0',
  `transporter` int(10) NOT NULL DEFAULT '0',
  `transporter_xdiff` float NOT NULL DEFAULT '0',
  `transporter_ydiff` float NOT NULL DEFAULT '0',
  `transporter_zdiff` float NOT NULL DEFAULT '0',
  `spells` longtext NOT NULL,
  `deleted_spells` longtext NOT NULL,
  `reputation` longtext NOT NULL,
  `actions` longtext NOT NULL,
  `auras` longtext NOT NULL,
  `finished_quests` longtext NOT NULL,
  `lastDailyReset` int(30) NOT NULL,
  `killsToday` int(10) NOT NULL DEFAULT '0',
  `killsYesterday` int(10) NOT NULL DEFAULT '0',
  `killsLifeTime` int(10) NOT NULL DEFAULT '0',
  `honorToday` int(10) NOT NULL DEFAULT '0',
  `honorYesterday` int(10) NOT NULL DEFAULT '0',
  `honorPoints` int(10) NOT NULL DEFAULT '0',
  `difficulty` int(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `guid` (`guid`),
  KEY `acct` (`acct`),
  KEY `guildid` (`guildid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charters`
--

DROP TABLE IF EXISTS `charters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charters` (
  `charterId` int(30) NOT NULL,
  `leaderGuid` int(20) unsigned NOT NULL DEFAULT '0',
  `guildName` varchar(32) NOT NULL DEFAULT '',
  `itemGuid` bigint(40) unsigned NOT NULL DEFAULT '0',
  `signer1` int(10) unsigned NOT NULL DEFAULT '0',
  `signer2` int(10) unsigned NOT NULL DEFAULT '0',
  `signer3` int(10) unsigned NOT NULL DEFAULT '0',
  `signer4` int(10) unsigned NOT NULL DEFAULT '0',
  `signer5` int(10) unsigned NOT NULL DEFAULT '0',
  `signer6` int(10) unsigned NOT NULL DEFAULT '0',
  `signer7` int(10) unsigned NOT NULL DEFAULT '0',
  `signer8` int(10) unsigned NOT NULL DEFAULT '0',
  `signer9` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charterId`),
  UNIQUE KEY `leaderGuid` (`leaderGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 18432 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charters`
--

LOCK TABLES `charters` WRITE;
/*!40000 ALTER TABLE `charters` DISABLE KEYS */;
/*!40000 ALTER TABLE `charters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientaddons`
--

DROP TABLE IF EXISTS `clientaddons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientaddons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `crc` bigint(50) DEFAULT NULL,
  `banned` int(1) NOT NULL DEFAULT '0',
  `showinlist` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientaddons`
--

LOCK TABLES `clientaddons` WRITE;
/*!40000 ALTER TABLE `clientaddons` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientaddons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corpses`
--

DROP TABLE IF EXISTS `corpses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corpses` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `positionX` float NOT NULL DEFAULT '0',
  `positionY` float NOT NULL DEFAULT '0',
  `positionZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `zoneId` int(11) NOT NULL DEFAULT '38',
  `mapId` int(11) NOT NULL DEFAULT '0',
  `instanceId` int(11) NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corpses`
--

LOCK TABLES `corpses` WRITE;
/*!40000 ALTER TABLE `corpses` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_formations`
--

DROP TABLE IF EXISTS `creature_formations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_formations` (
  `creature_sqlid` int(30) NOT NULL,
  `followtarget_sqlid` int(30) NOT NULL,
  `follow_angle` float NOT NULL,
  `follow_dist` float NOT NULL,
  PRIMARY KEY (`creature_sqlid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_formations`
--

LOCK TABLES `creature_formations` WRITE;
/*!40000 ALTER TABLE `creature_formations` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_formations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_names`
--

DROP TABLE IF EXISTS `creature_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_names` (
  `entry` int(20) unsigned NOT NULL DEFAULT '0',
  `creature_name` varchar(100) NOT NULL DEFAULT '',
  `Subname` varchar(100) NOT NULL DEFAULT '',
  `Flags1` int(30) unsigned DEFAULT '0',
  `type` int(30) DEFAULT '0',
  `Family` int(30) DEFAULT '0',
  `Rank` int(30) DEFAULT '0',
  `unk4` int(30) DEFAULT '0',
  `SpellDataID` int(30) DEFAULT NULL,
  `displayid` int(30) DEFAULT '0',
  `unk2` float NOT NULL DEFAULT '1',
  `unk3` float NOT NULL DEFAULT '1',
  `Civilian` tinyint(30) DEFAULT NULL,
  `Leader` tinyint(30) DEFAULT NULL,
  UNIQUE KEY `entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_names`
--

LOCK TABLES `creature_names` WRITE;
/*!40000 ALTER TABLE `creature_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_proto`
--

DROP TABLE IF EXISTS `creature_proto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_proto` (
  `entry` int(30) unsigned NOT NULL,
  `level` int(30) unsigned NOT NULL,
  `faction` int(30) unsigned NOT NULL,
  `health` int(30) unsigned NOT NULL,
  `mana` int(30) unsigned NOT NULL,
  `scale` float NOT NULL,
  `npcflags` int(30) unsigned NOT NULL,
  `attacktime` int(30) unsigned NOT NULL,
  `mindamage` float NOT NULL,
  `maxdamage` float NOT NULL,
  `rangedattacktime` int(30) unsigned NOT NULL,
  `rangedmindamage` float unsigned NOT NULL,
  `rangedmaxdamage` float unsigned NOT NULL,
  `mountdisplayid` int(30) unsigned NOT NULL,
  `item1slotdisplay` int(30) unsigned NOT NULL,
  `item1info1` int(30) unsigned NOT NULL,
  `item1info2` int(30) unsigned NOT NULL,
  `item2slotdisplay` int(30) unsigned NOT NULL,
  `item2info1` int(30) unsigned NOT NULL,
  `item2info2` int(30) unsigned NOT NULL,
  `item3slotdisplay` int(30) unsigned NOT NULL,
  `item3info1` int(30) unsigned NOT NULL,
  `item3info2` int(30) unsigned NOT NULL,
  `respawntime` int(30) unsigned NOT NULL,
  `resistance0_armor` int(30) unsigned NOT NULL,
  `resistance1` int(30) unsigned NOT NULL,
  `resistance2` int(30) unsigned NOT NULL,
  `resistance3` int(30) unsigned NOT NULL,
  `resistance4` int(30) unsigned NOT NULL,
  `resistance5` int(30) unsigned NOT NULL,
  `resistance6` int(30) unsigned NOT NULL,
  `combat_reach` float NOT NULL,
  `bounding_radius` float NOT NULL,
  `auras` longtext NOT NULL,
  `boss` int(11) unsigned NOT NULL,
  PRIMARY KEY (`entry`),
  UNIQUE KEY `ID` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_proto`
--

LOCK TABLES `creature_proto` WRITE;
/*!40000 ALTER TABLE `creature_proto` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_proto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_quest_finisher`
--

DROP TABLE IF EXISTS `creature_quest_finisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_quest_finisher` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_quest_finisher`
--

LOCK TABLES `creature_quest_finisher` WRITE;
/*!40000 ALTER TABLE `creature_quest_finisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_quest_finisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_quest_starter`
--

DROP TABLE IF EXISTS `creature_quest_starter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_quest_starter` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_quest_starter`
--

LOCK TABLES `creature_quest_starter` WRITE;
/*!40000 ALTER TABLE `creature_quest_starter` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_quest_starter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_spawns`
--

DROP TABLE IF EXISTS `creature_spawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_spawns` (
  `id` int(30) unsigned NOT NULL,
  `entry` int(30) NOT NULL,
  `Map` int(30) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `o` float NOT NULL,
  `movetype` int(30) NOT NULL,
  `displayid` int(30) unsigned NOT NULL,
  `factionid` int(30) NOT NULL,
  `flags` int(30) NOT NULL,
  `bytes` int(30) unsigned NOT NULL,
  `bytes2` int(30) unsigned NOT NULL,
  `emote_state` int(30) NOT NULL,
  `npc_respawn_link` int(30) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `map` (`Map`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_spawns`
--

LOCK TABLES `creature_spawns` WRITE;
/*!40000 ALTER TABLE `creature_spawns` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_spawns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_waypoints`
--

DROP TABLE IF EXISTS `creature_waypoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_waypoints` (
  `creatureid` int(10) NOT NULL DEFAULT '0',
  `waypointid` int(2) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `waittime` int(6) NOT NULL DEFAULT '0',
  `flags` int(3) NOT NULL DEFAULT '0',
  `forwardemoteoneshot` int(1) NOT NULL DEFAULT '0',
  `forwardemoteid` int(4) NOT NULL DEFAULT '0',
  `backwardemoteoneshot` int(1) NOT NULL DEFAULT '0',
  `backwardemoteid` int(4) NOT NULL DEFAULT '0',
  `forwardskinid` int(10) NOT NULL DEFAULT '0',
  `backwardskinid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`creatureid`,`waypointid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_waypoints`
--

LOCK TABLES `creature_waypoints` WRITE;
/*!40000 ALTER TABLE `creature_waypoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_waypoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creatureloot`
--

DROP TABLE IF EXISTS `creatureloot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creatureloot` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `entryid` int(11) unsigned NOT NULL DEFAULT '0',
  `itemid` int(11) unsigned NOT NULL DEFAULT '25',
  `percentchance` float NOT NULL DEFAULT '100',
  PRIMARY KEY (`index`),
  KEY `i_creature_loot_creatureid` (`entryid`)
) ENGINE=MyISAM AUTO_INCREMENT=827980 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creatureloot`
--

LOCK TABLES `creatureloot` WRITE;
/*!40000 ALTER TABLE `creatureloot` DISABLE KEYS */;
/*!40000 ALTER TABLE `creatureloot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fishing`
--

DROP TABLE IF EXISTS `fishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fishing` (
  `Zone` int(11) unsigned NOT NULL DEFAULT '0',
  `MinSkill` int(11) unsigned DEFAULT NULL,
  `MaxSkill` int(11) unsigned DEFAULT NULL,
  UNIQUE KEY `Zone` (`Zone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fishing`
--

LOCK TABLES `fishing` WRITE;
/*!40000 ALTER TABLE `fishing` DISABLE KEYS */;
/*!40000 ALTER TABLE `fishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fishingloot`
--

DROP TABLE IF EXISTS `fishingloot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fishingloot` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `entryid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemid` int(10) unsigned NOT NULL DEFAULT '0',
  `percentchance` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`index`),
  UNIQUE KEY `index` (`index`)
) ENGINE=MyISAM AUTO_INCREMENT=2275 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fishingloot`
--

LOCK TABLES `fishingloot` WRITE;
/*!40000 ALTER TABLE `fishingloot` DISABLE KEYS */;
/*!40000 ALTER TABLE `fishingloot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_names`
--

DROP TABLE IF EXISTS `gameobject_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_names` (
  `entry` int(20) unsigned NOT NULL DEFAULT '0',
  `Type` int(100) unsigned NOT NULL DEFAULT '0',
  `DisplayID` int(100) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(100) NOT NULL DEFAULT '0',
  `sound0` int(30) NOT NULL DEFAULT '0',
  `sound1` int(30) NOT NULL DEFAULT '0',
  `sound2` int(30) NOT NULL DEFAULT '0',
  `sound3` int(30) NOT NULL DEFAULT '0',
  `sound4` int(30) NOT NULL DEFAULT '0',
  `sound5` int(30) NOT NULL DEFAULT '0',
  `sound6` int(30) NOT NULL DEFAULT '0',
  `sound7` int(30) NOT NULL DEFAULT '0',
  `sound8` int(30) NOT NULL DEFAULT '0',
  `sound9` int(30) NOT NULL DEFAULT '0',
  `unknown1` int(30) NOT NULL DEFAULT '0',
  `unknown2` int(30) NOT NULL DEFAULT '0',
  `unknown3` int(30) NOT NULL DEFAULT '0',
  `unknown4` int(30) NOT NULL DEFAULT '0',
  `unknown5` int(30) NOT NULL DEFAULT '0',
  `unknown6` int(30) NOT NULL DEFAULT '0',
  `unknown7` int(30) NOT NULL DEFAULT '0',
  `unknown8` int(30) NOT NULL DEFAULT '0',
  `unknown9` int(30) NOT NULL DEFAULT '0',
  `unknown10` int(30) NOT NULL DEFAULT '0',
  `unknown11` int(30) NOT NULL DEFAULT '0',
  `unknown12` int(30) NOT NULL DEFAULT '0',
  `unknown13` int(30) NOT NULL DEFAULT '0',
  `unknown14` int(30) NOT NULL DEFAULT '0',
  UNIQUE KEY `entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_names`
--

LOCK TABLES `gameobject_names` WRITE;
/*!40000 ALTER TABLE `gameobject_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_quest_finisher`
--

DROP TABLE IF EXISTS `gameobject_quest_finisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_quest_finisher` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_quest_finisher`
--

LOCK TABLES `gameobject_quest_finisher` WRITE;
/*!40000 ALTER TABLE `gameobject_quest_finisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_quest_finisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_quest_item_binding`
--

DROP TABLE IF EXISTS `gameobject_quest_item_binding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_quest_item_binding` (
  `gameobject_entry` int(11) NOT NULL DEFAULT '0',
  `quest_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_quest_item_binding`
--

LOCK TABLES `gameobject_quest_item_binding` WRITE;
/*!40000 ALTER TABLE `gameobject_quest_item_binding` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_quest_item_binding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_quest_pickup_binding`
--

DROP TABLE IF EXISTS `gameobject_quest_pickup_binding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_quest_pickup_binding` (
  `gameobject_entry` int(11) NOT NULL DEFAULT '0',
  `quest_id` int(11) NOT NULL DEFAULT '0',
  `required_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_quest_pickup_binding`
--

LOCK TABLES `gameobject_quest_pickup_binding` WRITE;
/*!40000 ALTER TABLE `gameobject_quest_pickup_binding` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_quest_pickup_binding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_quest_starter`
--

DROP TABLE IF EXISTS `gameobject_quest_starter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_quest_starter` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_quest_starter`
--

LOCK TABLES `gameobject_quest_starter` WRITE;
/*!40000 ALTER TABLE `gameobject_quest_starter` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_quest_starter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_spawns`
--

DROP TABLE IF EXISTS `gameobject_spawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_spawns` (
  `ID` int(30) unsigned NOT NULL,
  `Entry` int(10) unsigned NOT NULL DEFAULT '0',
  `Map` int(10) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `Facing` float NOT NULL DEFAULT '0',
  `o1` float NOT NULL DEFAULT '0',
  `o2` float NOT NULL DEFAULT '0',
  `o3` float NOT NULL DEFAULT '0',
  `o4` float NOT NULL DEFAULT '0',
  `State` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Faction` int(10) unsigned NOT NULL DEFAULT '0',
  `Scale` float NOT NULL DEFAULT '0',
  `state_npc_link` int(30) NOT NULL,
  UNIQUE KEY `ID` (`ID`),
  KEY `Map` (`Map`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_spawns`
--

LOCK TABLES `gameobject_spawns` WRITE;
/*!40000 ALTER TABLE `gameobject_spawns` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_spawns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_tickets`
--

DROP TABLE IF EXISTS `gm_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_tickets` (
  `guid` int(6) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `level` int(6) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `timestamp` text,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_tickets`
--

LOCK TABLES `gm_tickets` WRITE;
/*!40000 ALTER TABLE `gm_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graveyards`
--

DROP TABLE IF EXISTS `graveyards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graveyards` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `o` float NOT NULL,
  `zoneid` int(10) NOT NULL DEFAULT '0',
  `adjacentzoneid` int(10) NOT NULL DEFAULT '0',
  `mapid` int(10) NOT NULL DEFAULT '0',
  `factionid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=386 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graveyards`
--

LOCK TABLES `graveyards` WRITE;
/*!40000 ALTER TABLE `graveyards` DISABLE KEYS */;
INSERT INTO `graveyards` VALUES (1,-9115,423,93.6419,4.0817,12,1519,0,3,'Elwynn Forest'),(2,-9271,-2305,69.5811,4.0817,44,0,0,3,'Lakeshire'),(3,-10774.3,-1189.67,32.9692,4.0817,10,0,0,3,'Darkshire'),(4,-10546.9,1197.24,31.7101,4.0817,40,0,0,3,'Sentinel Hill'),(5,-5687,-515,396.274,4.0817,1,1537,0,3,'Kharanos'),(6,-5351.23,-2881.58,341.031,4.0817,38,0,0,3,'Loch Modan'),(7,-3289.12,-2435.99,18.5966,4.0817,11,0,0,3,'Wetlands'),(8,-6289.91,-3493.11,251.339,4.0817,3,0,0,3,'Badlands'),(9,-592.601,-2523.49,91.8176,4.0817,17,0,1,3,'The Barrens'),(10,-1443.49,1973.37,85.5681,4.0817,405,0,1,3,'Kodo Graveyard'),(11,233.458,-4793.73,10.1905,4.0817,14,1637,1,3,'Razor Hill'),(12,1357.1,-4412.01,28.4431,4.0817,14,1637,1,3,'Durotar'),(13,-2944.56,-153.215,65.8427,4.0817,215,0,1,3,'Red Cloud Mesa'),(14,6739.19,209.993,23.3211,4.0817,148,0,1,3,'Darkshore'),(15,-11110.4,-1833.24,71.8642,4.0817,41,0,0,3,'Morgan s Plot'),(16,-4656,-1765,-41.2877,4.0817,400,0,1,3,'Thousand Needles'),(17,-6432.26,-278.292,3.78629,4.0817,1377,0,1,3,'Valor s Rest'),(18,-2175.19,-342.027,-5.37017,4.0817,215,0,1,3,'Bloodhoof Village'),(19,10054.3,2117.12,1329.8,4.0817,1657,0,1,3,'Darnassus'),(20,9701.25,945.62,1291.39,4.0817,141,1657,1,3,'Dolanaar'),(21,2633.41,-629.735,107.577,4.0817,331,0,1,3,'Astranaar'),(22,10384.8,811.531,1317.54,4.0817,141,1657,1,3,'Aldrassil'),(23,1882.94,1629.11,94.3531,4.0817,85,1497,0,3,'Deathknell'),(24,1822.61,214.674,59.7544,4.0817,85,1497,0,3,'Ruins of Lordaeron'),(25,516.194,1589.81,127.399,4.0817,130,0,0,3,'The Sepulcher'),(26,-18.6777,-981.171,55.8377,4.0817,267,0,0,3,'Tarren Mill'),(27,-1472.29,-2617.96,49.2121,4.0817,45,0,0,3,'Arathi Highlands'),(28,-6164.23,336.321,399.742,4.0817,1,1537,0,3,'Coldridge Valley'),(29,-5680.04,-518.92,396.274,4.0817,1,1537,0,3,'Kharanos'),(30,-5049.45,-809.697,495.127,4.0817,1,1537,0,3,'Gates of Ironforge'),(31,-6805,-2287.19,280.752,4.0817,3,0,0,3,'Badlands'),(32,-9403.25,-2037.69,58.3634,4.0817,44,0,0,3,'Redridge Mountains'),(33,-8935.33,-188.646,80.2796,4.0817,12,1519,0,3,'Northshire Valley'),(34,-9339.46,171.408,61.5637,4.0817,12,1519,0,3,'Elwynn Forest'),(35,-9151.98,410.944,93.1324,4.0817,12,1519,0,3,'Elwynn Forest'),(36,-10567.8,-3377.2,22.2576,4.0817,8,0,0,3,'Stonard'),(37,-14285,288.447,32.3193,4.0817,33,0,0,3,'The Cape of Stranglethorn'),(38,8706,965,12.6923,4.0817,141,0,1,3,'Rut theran Village'),(39,-732.799,-592.502,22.8785,4.0817,267,0,0,3,'Southshore'),(40,-3525.71,-4315.46,6.98795,4.0817,15,0,1,3,'Dustwallow Marsh'),(41,-7190.95,-3944.65,9.20883,4.0817,440,0,1,3,'Gadgetzan'),(42,-2517.75,-1972.64,91.7849,4.0817,17,0,1,3,'Southern Barrens'),(43,-1081.4,-3478.68,63.6295,4.0817,17,0,1,3,'Ratchet'),(44,2348.67,492.027,33.3693,4.0817,85,1497,0,3,'Brill'),(45,-4596.4,3229.43,8.97498,4.0817,357,0,1,3,'Feathermoon Stronghold'),(46,-4439.97,370.153,51.3567,4.0817,357,0,1,3,'Camp Mojache'),(47,-5530.28,-3459.28,-45.7628,4.0817,400,0,1,3,'Thousand Needles'),(48,323.513,-2227.2,137.771,4.0817,47,0,0,3,'Aerie Peak'),(49,2681.06,-4009.75,107.833,4.0817,16,0,1,3,'Azshara'),(50,-10846.6,-2949.49,13.245,4.0817,4,0,0,3,'Dreadmaul Hold'),(51,-11542.6,-228.637,27.8548,4.0817,33,0,0,3,'Stranglethorn Vale'),(52,898.261,434.53,65.792,4.0817,406,0,1,3,'Webwinder Path'),(53,2604.52,-543.39,88.9996,4.0817,85,1497,0,3,'Faol s Rest'),(54,3806.54,-1600.29,218.813,4.0817,361,0,1,3,'Morlos Aran'),(55,-7205.56,-2436.67,-218.156,4.0817,490,0,1,3,'The Marshlands'),(56,4291.28,96.9557,42.9213,4.0817,148,0,1,3,'Twilight Vale'),(57,-3347.72,-856.713,1.05959,4.0817,11,0,0,3,'Baradin Bay'),(58,908.323,-1520.29,55.0371,4.0817,28,0,0,3,'Chillwind Camp'),(59,2116.79,-5287.34,81.2067,4.0817,139,0,0,3,'Light s Hope Chapel'),(60,6875.76,-4661.54,701.036,4.0817,618,0,1,3,'Everlook'),(61,2421.72,-2953.62,123.472,4.0817,331,0,1,3,'Nightsong Woods'),(62,1750.34,-669.79,44.5185,4.0817,85,1497,0,3,'The Bulwark'),(63,16310.3,16268.9,19.2292,4.0817,876,0,1,3,'GM Island'),(64,2942.76,-6037.13,4.01579,4.0817,16,0,1,3,'Southridge Beach'),(65,908.323,-1520.29,55.0371,4.0817,28,0,0,3,'Chillwind Camp'),(66,4788.78,-6845,89.7527,4.0817,16,0,1,3,'Legash Encampment'),(67,-3127.69,-3046.94,33.7892,4.0817,15,0,1,3,'Dustwallow Marsh'),(68,-7490.45,-2132.62,142.471,4.0817,46,51,0,3,'Flame Crest'),(69,7426,-2809,463.894,4.0817,493,0,1,3,'Moonglade'),(70,1392,-3701,76.8411,4.0817,139,0,0,3,'Darrowshire'),(71,5935.47,-1217.75,383.22,4.0817,361,0,1,3,'Irontree Woods'),(72,-6450.61,-1113.51,308.162,4.0817,51,0,0,3,'Thorium Point'),(73,-778,-4985,19.0062,4.0817,14,1637,1,3,'Sen jin Village'),(74,-634.635,-4296.03,40.5153,4.0817,14,1637,1,3,'Valley of Trials'),(75,-291,-4374,106.59,4.0817,47,0,0,3,'The Overlook Cliffs'),(76,1035.27,-2104.28,122.945,4.0817,17,0,1,3,'Mor shan Base Camp'),(77,1459.17,-1858.67,124.448,4.0817,331,0,1,3,'Silverwing Grove'),(78,101.144,-184.934,192.697,4.0817,36,0,0,3,'Growless Cave'),(79,536.495,-1085.72,149.545,4.0817,36,0,0,3,'Alterac Mountains'),(80,-4590.41,1632.08,93.9638,4.0817,357,0,1,3,'Dire Maul'),(81,1177.78,-4464.24,21.3597,4.0817,14,1637,1,3,'Durotar'),(82,-981.917,-74.6465,20.4909,4.0817,1638,0,1,3,'Thunder Bluff'),(83,-5165.52,-874.664,507.142,4.0817,1,1537,0,3,'Gates of Ironforge'),(84,1780.11,221.761,59.3442,4.0817,85,1497,0,3,'Ruins of Lordaeron'),(85,-9552.46,-1374.05,51.2978,4.0817,12,1519,0,3,'Eastvale Logging Camp'),(86,1236.89,-2411.99,60.7066,4.0817,28,0,0,3,'Caer Darrow'),(87,-831.881,-3518.52,72.5374,4.0817,45,0,0,3,'Hammerfall'),(88,-1215.59,-2531.75,21.6381,4.0817,45,0,0,3,'Refuge Pointe'),(89,2647.55,-4014.39,105.904,4.0817,139,0,0,3,'Blackwood Lake'),(90,-6831.32,891.437,33.7702,4.0817,1377,0,1,3,'Cenarion Hold'),(91,-10606.8,294.048,31.8466,4.0817,10,0,0,3,'Raven Hill'),(92,10458.5,-6364.61,39.7907,4.0817,3430,3487,530,3,'Sunstrider Isle'),(93,-7991.57,1557.8,5.01986,4.0817,1377,0,1,3,'The Scarab Wall'),(94,8936.56,-7439.9,8.3249,4.0817,3430,3487,530,3,'Farstrider Retreat'),(95,7694.18,-6730.11,48.5174,4.0817,3433,0,530,3,'Ghostlands'),(96,7015.23,-7300,45.2103,4.0817,3433,0,530,3,'Ghostlands'),(97,6730.49,-7936.89,150.245,4.0817,3433,0,530,3,'Ghostlands'),(98,-4123.14,-13660.1,74.581,4.0817,3524,3557,530,3,'Ammen Vale'),(99,158.06,2562.73,76.3447,4.0817,3483,0,530,3,'Hellfire Peninsula'),(100,-803.012,2702.59,106.687,4.0817,3483,0,530,3,'Honor Hold'),(101,9500,-6966.66,18.1827,4.0817,3430,3487,530,3,'The Dead Scar'),(102,8709.46,-6671.76,70.336,4.0817,3430,3487,530,3,'Fairbreeze Village'),(103,-4312.78,-12441,17.1672,4.0817,3524,3557,530,3,'Azuremyst Isle'),(104,-3324.31,-12089.9,28.2816,4.0817,3524,3557,530,3,'Azuremyst Isle'),(105,-2020.59,-11983.5,32.5854,4.0817,3525,0,530,3,'Bloodmyst Isle'),(106,-1754.21,-11067.3,76.3371,4.0817,3525,0,530,3,'Vindicator s Rest'),(107,1978.47,-3655.89,119.786,4.0817,139,0,0,3,'Eastern Plaguelands'),(108,335.886,7625.12,22.7737,4.0817,3521,0,530,3,'Zangarmarsh'),(109,-2499.9,6812.86,22.0149,4.0817,3518,0,530,3,'Nagrand'),(110,181.475,4361.58,116.929,4.0817,3483,0,530,3,'Temple of Telhamat'),(111,-695.875,4118.21,63.0812,4.0817,3483,0,530,3,'Falcon Watch'),(112,742.628,2887.71,8.74075,4.0817,3483,0,530,3,'Stonescythe Canyon'),(113,101.144,-184.934,192.697,4.0817,36,0,0,3,'Growless Cave'),(114,540.31,3932.88,175.219,4.0817,3483,0,530,3,'Mag har Post'),(115,540.98,3144.23,9.01128,4.0817,3483,0,530,3,'Stonescythe Canyon'),(116,582.864,2954.06,5.63896,4.0817,3483,0,530,3,'Stonescythe Canyon'),(117,742.628,2887.71,8.74075,4.0817,3483,0,530,3,'Stonescythe Canyon'),(118,1148.44,1798.14,115.928,4.0817,3483,0,530,3,'The Abyssal Shelf'),(119,851.694,1688.06,89.7413,4.0817,3483,0,530,3,'The Abyssal Shelf'),(120,608.097,1778.63,103.861,4.0817,3483,0,530,3,'The Abyssal Shelf'),(121,354.618,1952.75,24.0142,4.0817,3483,0,530,3,'Hellfire Peninsula'),(122,107.712,1841.23,21.6667,4.0817,3483,0,530,3,'The Legion Front'),(123,274.599,1674.63,-5.50907,4.0817,3483,0,530,3,'The Legion Front'),(124,60.881,1542.69,17.2558,4.0817,3483,0,530,3,'Hellfire Peninsula'),(125,-92.8317,1350.91,-12.6829,4.0817,3483,0,530,3,'Hellfire Peninsula'),(126,134.528,1230.39,2.46611,4.0817,3483,0,530,3,'Hellfire Peninsula'),(127,298.666,1225.23,-1.37024,4.0817,3483,0,530,3,'Hellfire Peninsula'),(128,386.682,1044.78,26.3317,4.0817,3483,0,530,3,'Hellfire Peninsula'),(129,337.84,853.218,13.813,4.0817,3483,0,530,3,'Hellfire Peninsula'),(130,60.3844,725.155,14.8662,4.0817,3483,0,530,3,'Hellfire Peninsula'),(131,-213.512,730.684,-1.21942,4.0817,3483,0,530,3,'Hellfire Peninsula'),(132,-570.327,675.785,-0.81186,4.0817,3483,0,530,3,'Hellfire Peninsula'),(133,-958.584,803.907,1.95012,4.0817,3483,0,530,3,'Hellfire Peninsula'),(134,-827.569,1194.34,16.1594,4.0817,3483,0,530,3,'Hellfire Peninsula'),(135,-465.075,1272.1,12.4109,4.0817,3483,0,530,3,'Hellfire Peninsula'),(136,-668.975,1516.19,18.0938,4.0817,3483,0,530,3,'Void Ridge'),(137,-1278.37,1381.71,9.43431,4.0817,3483,0,530,3,'Void Ridge'),(138,-1306.28,2478.4,57.0979,4.0817,3483,0,530,3,'Hellfire Peninsula'),(139,-1497.4,2657.17,-53.356,4.0817,3483,0,530,3,'Expedition Armory'),(140,-1445.7,3050.23,-16.3693,4.0817,3483,0,530,3,'The Warp Fields'),(141,-1510.36,3281.81,-16.5862,4.0817,3483,0,530,3,'The Warp Fields'),(142,248.339,7084.93,36.6211,4.0817,3521,0,530,3,'Twin Spire Ruins'),(143,211.315,6200.03,22.3586,4.0817,3521,0,530,3,'Zangarmarsh'),(144,1286.73,7883.12,10.5754,4.0817,3521,0,530,3,'Zangarmarsh'),(145,-212.452,5579.67,22.2861,4.0817,3521,0,530,3,'Cenarion Refuge'),(146,1011.16,5039.57,-27.2596,4.0817,3521,0,530,3,'The Dead Mire'),(147,781.713,4987.82,-12.2221,4.0817,3521,0,530,3,'The Dead Mire'),(148,1001.9,5714.57,-9.33086,4.0817,3521,0,530,3,'The Dead Mire'),(149,1394.98,7756.5,11.8316,4.0817,3521,0,530,3,'Zangarmarsh'),(150,1412.41,8430.12,-4.31167,4.0817,3521,0,530,3,'Zangarmarsh'),(151,1398.58,7763.03,8.27597,4.0817,3521,0,530,3,'Zangarmarsh'),(152,1317.5,8135.39,-3.34051,4.0817,3521,0,530,3,'Zangarmarsh'),(153,1706.28,8407.81,-24.7207,4.0817,3521,0,530,3,'Ango rosh Stronghold'),(154,1348.2,8677.57,6.73334,4.0817,3521,0,530,3,'Zangarmarsh'),(155,1838.93,8496.51,-19.2404,4.0817,3521,0,530,3,'Ango rosh Stronghold'),(156,1347.02,8679.23,6.5805,4.0817,3521,0,530,3,'Zangarmarsh'),(157,1104.4,8781.98,-10.9985,4.0817,3521,0,530,3,'Zangarmarsh'),(158,747.447,8702.9,6.19002,4.0817,3521,0,530,3,'Zangarmarsh'),(159,381.31,9113.74,-4.32158,4.0817,3521,0,530,3,'Zangarmarsh'),(160,702.758,8927.53,-2.76773,4.0817,3521,0,530,3,'Zangarmarsh'),(161,223.55,9132.74,-11.2427,4.0817,3521,0,530,3,'Zangarmarsh'),(162,32.157,9120.4,-16.5454,4.0817,3521,0,530,3,'Zangarmarsh'),(163,-160.425,9053.54,4.52803,4.0817,3521,0,530,3,'Zangarmarsh'),(164,-1066.97,8066.54,-38.9822,4.0817,3518,0,530,3,'Northwind Cleft'),(165,-1654.37,7938.99,-46.2106,4.0817,3518,0,530,3,'Halaa'),(166,-1793.42,4931.61,-22.2098,4.0817,3519,0,530,3,'Terokkar Forest'),(167,-2540.15,3866.65,10.0412,4.0817,3519,0,530,3,'Raastok Glade'),(168,-699.699,8883.16,185.34,4.0817,3518,0,530,3,'Warmaul Hill'),(169,-1000.13,9045.47,91.6882,4.0817,3518,0,530,3,'Warmaul Hill'),(170,-1983.42,9361.21,72.7727,4.0817,3518,0,530,3,'Nagrand'),(171,-2153.3,9323.71,52.5836,4.0817,3518,0,530,3,'Nagrand'),(172,-2619.46,8953.7,-11.71,4.0817,3518,0,530,3,'Nagrand'),(173,-2799.85,8785.75,-42.808,4.0817,3518,0,530,3,'Nagrand'),(174,-2984.12,8700.11,-53.429,4.0817,3518,0,530,3,'Nagrand'),(175,-2989.35,8445.13,-36.1422,4.0817,3518,0,530,3,'Nagrand'),(176,-3122.56,8079.49,-49.1322,4.0817,3518,0,530,3,'Nagrand'),(177,-3155.75,7316.31,-25.8292,4.0817,3518,0,530,3,'Nagrand'),(178,-3244.7,7079.02,-49.7009,4.0817,3518,0,530,3,'Nagrand'),(179,-2987.35,7045.47,-53.9469,4.0817,3518,0,530,3,'Nagrand'),(180,-2962.33,6796.88,-51.1737,4.0817,3518,0,530,3,'Nagrand'),(181,-3040.6,6534.85,98.9149,4.0817,3518,0,530,3,'Kil sorrow Fortress'),(182,-3379.58,6206.48,-3.6654,4.0817,3519,0,530,3,'Terokkar Forest'),(183,-3621.98,6225.18,-19.6565,4.0817,3519,0,530,3,'Terokkar Forest'),(184,-3898.57,6147.65,-36.9816,4.0817,3519,0,530,3,'Terokkar Forest'),(185,-3844.34,5931.41,-25.1268,4.0817,3519,0,530,3,'Terokkar Forest'),(186,-3801.34,5618.75,-27.0187,4.0817,3519,0,530,3,'Terokkar Forest'),(187,-3910.99,5404.07,-35.8346,4.0817,3519,0,530,3,'The Bone Wastes'),(188,-3886.29,5149.57,-59.4969,4.0817,3519,0,530,3,'The Bone Wastes'),(189,-3990.14,4869.48,-107.895,4.0817,3519,0,530,3,'The Bone Wastes'),(190,-3904.3,4591.4,-46.3185,4.0817,3519,0,530,3,'The Bone Wastes'),(191,-4024.3,4421.72,-49.6202,4.0817,3519,0,530,3,'Terokkar Forest'),(192,-3965.06,4128.62,0.234531,4.0817,3519,0,530,3,'Terokkar Forest'),(193,-2415.76,1811.62,-1.03827,4.0817,3520,0,530,3,'Shadowmoon Valley'),(194,-2319.13,1749.94,-13.3954,4.0817,3520,0,530,3,'Shadowmoon Valley'),(195,-2447.42,1612.81,-27.3879,4.0817,3520,0,530,3,'Shadowmoon Valley'),(196,-2650.24,1666.66,9.50848,4.0817,3520,0,530,3,'Shadowmoon Valley'),(197,-4151.09,3425.82,292.965,4.0817,3519,0,530,3,'Blackwind Valley'),(198,-2667.79,3046.76,-7.50784,4.0817,3520,0,530,3,'Shadowmoon Valley'),(199,-2375.42,2848.08,-70.0744,4.0817,3540,0,530,3,'Twisting Nether'),(200,-2205.61,2968.3,-69.6146,4.0817,3540,0,530,3,'Twisting Nether'),(201,-2098.93,3116.51,-51.0518,4.0817,3519,0,530,3,'Terokkar Forest'),(202,-2047.74,3278.56,-61.7716,4.0817,3519,0,530,3,'Terokkar Forest'),(203,-2059,3560.39,-74.1911,4.0817,3519,0,530,3,'Terokkar Forest'),(204,-1876.5,3700.5,-18.8745,4.0817,3519,0,530,3,'Terokkar Forest'),(205,0,0,-1189.81,4.0817,3483,0,530,3,'Hellfire Peninsula'),(206,-1289.79,9166.72,218.117,4.0817,3518,0,530,3,'The Twilight Ridge'),(207,-856.214,6600.06,173.564,4.0817,3518,0,530,3,'Elemental Plateau'),(208,-2033.53,8479.53,-0.444271,4.0817,3518,0,530,3,'Nagrand'),(209,700.091,2207.99,288.51,4.0817,3483,0,530,3,'Throne of Kil jaeden'),(210,-249.765,1023.32,41.6667,4.0817,3483,0,530,3,'The Stair of Destiny'),(211,-3648.33,5116.13,-22.7089,4.0817,3519,0,530,3,'Auchindoun'),(212,874.911,7284.72,23.0023,4.0817,3521,0,530,3,'Zangarmarsh'),(213,337.125,8616.87,24.1361,4.0817,3521,0,530,3,'Zangarmarsh'),(214,4363.88,3093.74,132.969,4.0817,3523,0,530,3,'The Stormspire'),(215,3032.44,3594.28,145.806,4.0817,3523,0,530,3,'Area 52'),(216,-2999.23,2439.06,62.341,4.0817,3520,0,530,3,'Shadowmoon Village'),(217,-4022.99,2048.58,96.8575,4.0817,3520,0,530,3,'Wildhammer Stronghold'),(218,1955.9,6768.81,164.023,4.0817,3522,0,530,3,'Sylvanaar'),(219,2218.9,6017.35,135.921,4.0817,3522,0,530,3,'Thunderlord Stronghold'),(220,-3962.35,3667.08,289.088,4.0817,3519,0,530,3,'Blackwind Valley'),(221,-2652.66,1484.21,23.1527,4.0817,3520,0,530,3,'Shadowmoon Valley'),(222,-2477.69,1386.24,47.421,4.0817,3520,0,530,3,'Shadowmoon Valley'),(223,-2459.08,1277.57,33.6144,4.0817,3520,0,530,3,'Shadowmoon Valley'),(224,-2464.28,1074.65,33.3692,4.0817,3520,0,530,3,'Shadowmoon Valley'),(225,-2597.45,1040.72,40.4363,4.0817,3520,0,530,3,'Shadowmoon Valley'),(226,-2753.67,966.146,-3.6132,4.0817,3520,0,530,3,'Shadowmoon Valley'),(227,-2721.16,711.034,-21.3212,4.0817,3520,0,530,3,'Shadowmoon Valley'),(228,-2752.54,509.309,-25.5289,4.0817,3520,0,530,3,'Shadowmoon Valley'),(229,-3004.49,482.051,-15.285,4.0817,3520,0,530,3,'Shadowmoon Valley'),(230,-2997.38,207.579,3.01474,4.0817,3520,0,530,3,'Shadowmoon Valley'),(231,-4084.62,120.513,63.1184,4.0817,3520,0,530,3,'Shadowmoon Valley'),(232,-4231.62,58.6267,6.84955,4.0817,3520,0,530,3,'Shadowmoon Valley'),(233,-4445.81,224.844,94.9099,4.0817,3520,0,530,3,'Shadowmoon Valley'),(234,-4507.6,553.553,123.951,4.0817,3520,0,530,3,'Shadowmoon Valley'),(235,-4445.43,863.558,6.49986,4.0817,3520,0,530,3,'Netherwing Fields'),(236,-4791.52,1082.18,-8.79358,4.0817,3520,0,530,3,'Netherwing Fields'),(237,-4618.17,1850.61,153.303,4.0817,3520,0,530,3,'Shadowmoon Valley'),(238,-4568.14,2023.8,89.6597,4.0817,3520,0,530,3,'Shadowmoon Valley'),(239,-4541.32,2281.76,17.979,4.0817,3520,0,530,3,'Shadowmoon Valley'),(240,-4408.89,2328.78,31.728,4.0817,3520,0,530,3,'Shadowmoon Valley'),(241,1933,7389.18,364.941,4.0817,3522,0,530,3,'Vortex Pinnacle'),(242,2356.31,7345.09,363.442,4.0817,3522,0,530,3,'Vortex Pinnacle'),(243,2825.15,7269.15,365.266,4.0817,3522,0,530,3,'Forge Camp: Wrath'),(244,3199.99,7264.96,146.993,4.0817,3522,0,530,3,'Blade s Edge Mountains'),(245,3432.89,7312.38,138.71,4.0817,3522,0,530,3,'Raven s Wood'),(246,3753.24,7118.03,141.365,4.0817,3522,0,530,3,'Raven s Wood'),(247,3797.19,6900.24,141.658,4.0817,3522,0,530,3,'Raven s Wood'),(248,3839.15,6586.81,134.665,4.0817,3522,0,530,3,'Grishnath'),(249,3477.33,6500.25,133.395,4.0817,3522,0,530,3,'Raven s Wood'),(250,3664.81,6205.21,262.368,4.0817,3522,0,530,3,'Bash ir Landing'),(251,3989.04,6089.92,262.605,4.0817,3522,0,530,3,'Bash ir Landing'),(252,4095.11,5811.89,259.778,4.0817,3522,0,530,3,'Felstorm Point'),(253,4152.64,5499.22,274.249,4.0817,3522,0,530,3,'Felstorm Point'),(254,4120.71,5214.15,264.997,4.0817,3522,0,530,3,'The Signing Ridge'),(255,4086.35,4849.9,266.545,4.0817,3522,0,530,3,'The Signing Ridge'),(256,3926.2,4825.28,264.974,4.0817,3522,0,530,3,'The Signing Ridge'),(257,3733.34,4735.75,241.414,4.0817,3522,0,530,3,'Skald'),(258,3455.31,4468.35,154.198,4.0817,3522,0,530,3,'Broken Wilds'),(259,3323.6,4503.88,152.428,4.0817,3522,0,530,3,'Broken Wilds'),(260,2877.52,4738.91,278.92,4.0817,3522,0,530,3,'Forge Camp: Anger'),(261,2653,5100.26,275.421,4.0817,3522,0,530,3,'Ridge of Madness'),(262,2344.62,5072.5,267.939,4.0817,3522,0,530,3,'Ridge of Madness'),(263,2251.08,4907.94,140.469,4.0817,3522,0,530,3,'Vekhaar Stand'),(264,2274.35,4725.43,160.179,4.0817,3522,0,530,3,'Blade s Edge Mountains'),(265,2102.66,4685.08,140.251,4.0817,3522,0,530,3,'Mok Nathal Village'),(266,1914.58,4677.85,133.398,4.0817,3522,0,530,3,'Vekhaar Stand'),(267,1771.94,4585.16,144.841,4.0817,3522,0,530,3,'Veil Vekh'),(268,1621.04,4563.14,137.216,4.0817,3522,0,530,3,'Veil Vekh'),(269,1606.36,4792.58,138.904,4.0817,3522,0,530,3,'Vekhaar Stand'),(270,1596.31,4948.65,169.925,4.0817,3522,0,530,3,'Vekhaar Stand'),(271,1616.9,5077.05,174.748,4.0817,3522,0,530,3,'Trogma s Claim'),(272,3491.41,4127.39,119.768,4.0817,3523,0,530,3,'The Crumbling Waste'),(273,3578.56,3957.1,117.991,4.0817,3523,0,530,3,'The Crumbling Waste'),(274,3586.96,3717.31,114.6,4.0817,3523,0,530,3,'The Crumbling Waste'),(275,3640.77,352.84,103.858,4.0817,3523,0,530,3,'The Crumbling Waste'),(276,3520.2,3511.7,125.479,4.0817,3523,0,530,3,'Ruins of Enkaat'),(277,3399.31,3400.41,102.136,4.0817,3523,0,530,3,'The Crumbling Waste'),(278,3271.49,3366.92,105.545,4.0817,3523,0,530,3,'Netherstorm'),(279,3188.37,3257.08,88.3148,4.0817,3523,0,530,3,'The Crumbling Waste'),(280,3022.79,3163.7,118.86,4.0817,3523,0,530,3,'The Crumbling Waste'),(281,2943.66,3056.64,113.385,4.0817,3523,0,530,3,'The Crumbling Waste'),(282,2846.52,2955.54,113.449,4.0817,3523,0,530,3,'The Crumbling Waste'),(283,2815.3,2830.89,75.4329,4.0817,3523,0,530,3,'The Crumbling Waste'),(284,2695.05,2940.24,94.6529,4.0817,3523,0,530,3,'The Crumbling Waste'),(285,2570.5,3135.96,108.157,4.0817,3523,0,530,3,'The Crumbling Waste'),(286,2511.98,3275.15,99.7674,4.0817,3523,0,530,3,'The Crumbling Waste'),(287,2449.93,3377.49,114.96,4.0817,3523,0,530,3,'The Crumbling Waste'),(288,2519.66,3538.7,120.709,4.0817,3523,0,530,3,'The Crumbling Waste'),(289,2479.84,3695.68,106.605,4.0817,3523,0,530,3,'The Crumbling Waste'),(290,2433.44,3835.28,95.6042,4.0817,3523,0,530,3,'The Heap'),(291,2403.43,3995.29,99.0321,4.0817,3523,0,530,3,'The Crumbling Waste'),(292,2477.41,4151.27,114.135,4.0817,3523,0,530,3,'The Crumbling Waste'),(293,2535.26,4396.42,103.363,4.0817,3523,0,530,3,'The Crumbling Waste'),(294,2719.93,4456.6,101.212,4.0817,3523,0,530,3,'The Crumbling Waste'),(295,2916.15,4444.49,111.565,4.0817,3523,0,530,3,'The Crumbling Waste'),(296,3069.1,4357.14,118.812,4.0817,3523,0,530,3,'The Crumbling Waste'),(297,3091.8,4146.84,125.181,4.0817,3523,0,530,3,'The Crumbling Waste'),(298,3221.17,4069.1,102.671,4.0817,3523,0,530,3,'The Crumbling Waste'),(299,3355.79,4149.28,138.087,4.0817,3523,0,530,3,'The Crumbling Waste'),(300,3980.61,4262.21,129.993,4.0817,3523,0,530,3,'The Crumbling Waste'),(301,3799.93,4217.95,105.808,4.0817,3523,0,530,3,'The Crumbling Waste'),(302,3744.13,4010.94,101.939,4.0817,3523,0,530,3,'The Crumbling Waste'),(303,3796.27,3772.19,100.353,4.0817,3523,0,530,3,'The Crumbling Waste'),(304,4049.61,3692.78,101.661,4.0817,3523,0,530,3,'The Crumbling Waste'),(305,4152.53,3886.21,120.431,4.0817,3523,0,530,3,'Manaforge Ara'),(306,4235.16,4080.62,95.3036,4.0817,3523,0,530,3,'The Crumbling Waste'),(307,4169.83,4209.06,117.895,4.0817,3523,0,530,3,'The Crumbling Waste'),(308,3836.08,3477.26,75.412,4.0817,3523,0,530,3,'The Crumbling Waste'),(309,3994.95,3538.27,121.792,4.0817,3523,0,530,3,'The Crumbling Waste'),(310,4211.4,3632,124.094,4.0817,3523,0,530,3,'The Crumbling Waste'),(311,4395.24,3708.62,95.6164,4.0817,3523,0,530,3,'The Crumbling Waste'),(312,4580.69,3584,94.033,4.0817,3523,0,530,3,'The Crumbling Waste'),(313,4793.19,3527.37,102.017,4.0817,3523,0,530,3,'The Crumbling Waste'),(314,4903.71,3323.86,101.859,4.0817,3523,0,530,3,'The Crumbling Waste'),(315,4945.87,3110.83,98.0965,4.0817,3523,0,530,3,'Eco-Dome Farfield'),(316,5156.75,2974.21,75.4612,4.0817,3523,0,530,3,'Eco-Dome Farfield'),(317,5204.7,2868.11,53.9315,4.0817,3523,0,530,3,'Eco-Dome Farfield'),(318,5019.97,2798.73,51.2722,4.0817,3523,0,530,3,'Eco-Dome Farfield'),(319,4885.18,2663.13,85.2444,4.0817,3523,0,530,3,'Netherstone'),(320,4853.17,2354.02,101.436,4.0817,3523,0,530,3,'The Crumbling Waste'),(321,4680.81,2287.48,129.047,4.0817,3523,0,530,3,'The Crumbling Waste'),(322,4522.44,2280.28,136.765,4.0817,3523,0,530,3,'The Crumbling Waste'),(323,4436.57,2485.48,90.1471,4.0817,3523,0,530,3,'The Crumbling Waste'),(324,4448.3,2658.15,111.544,4.0817,3523,0,530,3,'The Crumbling Waste'),(325,4285.06,2837.04,100.961,4.0817,3523,0,530,3,'The Stormspire'),(326,4136.62,2699.33,100.346,4.0817,3523,0,530,3,'The Crumbling Waste'),(327,3975.24,2807.44,115.994,4.0817,3523,0,530,3,'The Stormspire'),(328,3931.79,3020.67,103.842,4.0817,3523,0,530,3,'The Stormspire'),(329,3895.88,3257.64,120.084,4.0817,3523,0,530,3,'The Crumbling Waste'),(330,3629.32,3097.21,111.865,4.0817,3523,0,530,3,'Eco-Dome Midrealm'),(331,3476.45,3293.56,95.2325,4.0817,3523,0,530,3,'The Crumbling Waste'),(332,3348.41,3172.06,90.9979,4.0817,3523,0,530,3,'The Crumbling Waste'),(333,3216.28,2992.5,124.193,4.0817,3523,0,530,3,'The Crumbling Waste'),(334,3008.05,2902.59,74.1978,4.0817,3523,0,530,3,'The Crumbling Waste'),(335,2860.47,2735.28,87.7933,4.0817,3523,0,530,3,'The Crumbling Waste'),(336,2863.8,2537.41,104.721,4.0817,3523,0,530,3,'The Crumbling Waste'),(337,2856.08,2297.04,98.8206,4.0817,3523,0,530,3,'The Crumbling Waste'),(338,2834.86,2040.24,92.1341,4.0817,3523,0,530,3,'The Crumbling Waste'),(339,2868.81,1848.69,96.9383,4.0817,3523,0,530,3,'The Tempest Rift'),(340,2895.75,1708.09,105.052,4.0817,3523,0,530,3,'The Tempest Rift'),(341,3110.67,1624.43,112.188,4.0817,3523,0,530,3,'The Tempest Rift'),(342,3276.02,1726.59,101.664,4.0817,3523,0,530,3,'The Tempest Rift'),(343,3332.26,1986.97,95.2601,4.0817,3523,0,530,3,'The Vortex Fields'),(344,3315.85,2185.52,109.184,4.0817,3523,0,530,3,'The Vortex Fields'),(345,3384.58,2376.22,73.8488,4.0817,3523,0,530,3,'The Crumbling Waste'),(346,3492.84,2570.84,139.119,4.0817,3523,0,530,3,'The Crumbling Waste'),(347,3590.41,2677.08,135.727,4.0817,3523,0,530,3,'The Crumbling Waste'),(348,3740.94,2696.99,113.251,4.0817,3523,0,530,3,'The Crumbling Waste'),(349,3737.85,2894.69,100.685,4.0817,3523,0,530,3,'The Crumbling Waste'),(350,3850.8,2556.63,75.1947,4.0817,3523,0,530,3,'Ethereum Staging Grounds'),(351,3649.02,2405.76,74.7964,4.0817,3523,0,530,3,'Ethereum Staging Grounds'),(352,3546.97,2219.76,92.3245,4.0817,3523,0,530,3,'Ethereum Staging Grounds'),(353,3550.01,2002.35,92.6225,4.0817,3523,0,530,3,'Voidwind Plateau'),(354,3509.69,1762.49,75.1458,4.0817,3523,0,530,3,'Voidwind Plateau'),(355,3645.26,1712.66,106.572,4.0817,3523,0,530,3,'Voidwind Plateau'),(356,3681.18,1558.56,103.807,4.0817,3523,0,530,3,'Voidwind Plateau'),(357,3775.55,1437.54,-152.88,4.0817,3523,0,530,3,'Celestial Ridge'),(358,3969.01,1336.41,-143.136,4.0817,3523,0,530,3,'Celestial Ridge'),(359,4166.45,1329.15,-150.287,4.0817,3523,0,530,3,'Celestial Ridge'),(360,4199.54,1484.24,-127.591,4.0817,3523,0,530,3,'Celestial Ridge'),(361,4258.28,1672.84,113.242,4.0817,3523,0,530,3,'Celestial Ridge'),(362,4362.23,1927.16,97.0053,4.0817,3523,0,530,3,'Voidwind Plateau'),(363,4347.15,2143.36,118.021,4.0817,3523,0,530,3,'Voidwind Plateau'),(364,4246.96,2450.75,90.9939,4.0817,3523,0,530,3,'Voidwind Plateau'),(365,4116.44,2331.31,93.833,4.0817,3523,0,530,3,'Ethereum Staging Grounds'),(366,3972.86,2444.21,102.406,4.0817,3523,0,530,3,'Ethereum Staging Grounds'),(367,2486.85,1981.84,88.0831,4.0817,3523,0,530,3,'Chapel Yard'),(368,2568.91,2143.99,99.0477,4.0817,3523,0,530,3,'Kirin Var Village'),(369,2648.16,2353.63,92.5609,4.0817,3523,0,530,3,'The Crumbling Waste'),(370,2659.25,2547.14,110.432,4.0817,3523,0,530,3,'The Crumbling Waste'),(371,2599.03,2713,104.399,4.0817,3523,0,530,3,'Manaforge Coruu'),(372,2473.63,2964.98,106.197,4.0817,3523,0,530,3,'Manaforge Coruu'),(373,2209.18,2901.68,93.8214,4.0817,3523,0,530,3,'Manaforge Coruu'),(374,2164.32,2667.39,78.0574,4.0817,3523,0,530,3,'Manaforge Coruu'),(375,2087,2442.42,72.1118,4.0817,3523,0,530,3,'The Crumbling Waste'),(376,2079.82,2227.04,68.5153,4.0817,3523,0,530,3,'Kirin Var Village'),(377,2240.18,2067.8,61.9474,4.0817,3523,0,530,3,'Kirin Var Village'),(378,552.188,1995.15,103.703,4.0817,3483,0,530,3,'Hellfire Peninsula'),(379,3065,5426.42,148.487,4.0817,3522,0,530,3,'Ruuan Weald'),(380,3872.66,5514.41,271.81,4.0817,3522,0,530,3,'Felstorm Point'),(381,2296.35,7023.23,364.134,4.0817,3522,0,530,3,'Vortex Pinnacle'),(382,2312.27,5083.93,272.498,4.0817,3522,0,530,3,'Ridge of Madness'),(383,101.144,-184.934,192.697,4.0817,36,0,0,3,'Growless Cave'),(384,2980.19,1869.82,143.607,4.0817,3523,0,530,3,'Cosmowrench'),(385,-1272.42,2436.85,64.0262,4.0817,3483,0,530,3,'Hellfire Peninsula');
/*!40000 ALTER TABLE `graveyards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_ranks`
--

DROP TABLE IF EXISTS `guild_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_ranks` (
  `guildId` int(6) unsigned NOT NULL DEFAULT '0',
  `rankId` int(1) NOT NULL DEFAULT '0',
  `rankName` varchar(255) NOT NULL DEFAULT '',
  `rankRights` int(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_ranks`
--

LOCK TABLES `guild_ranks` WRITE;
/*!40000 ALTER TABLE `guild_ranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guilds`
--

DROP TABLE IF EXISTS `guilds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guilds` (
  `guildId` bigint(20) NOT NULL AUTO_INCREMENT,
  `guildName` varchar(32) NOT NULL DEFAULT '',
  `leaderGuid` bigint(20) NOT NULL DEFAULT '0',
  `emblemStyle` int(10) NOT NULL DEFAULT '0',
  `emblemColor` int(10) NOT NULL DEFAULT '0',
  `borderStyle` int(10) NOT NULL DEFAULT '0',
  `borderColor` int(10) NOT NULL DEFAULT '0',
  `backgroundColor` int(10) NOT NULL DEFAULT '0',
  `guildInfo` varchar(100) NOT NULL DEFAULT '',
  `motd` varchar(100) NOT NULL DEFAULT '',
  `createdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`guildId`),
  UNIQUE KEY `guildId` (`guildId`)
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guilds`
--

LOCK TABLES `guilds` WRITE;
/*!40000 ALTER TABLE `guilds` DISABLE KEYS */;
/*!40000 ALTER TABLE `guilds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instances`
--

DROP TABLE IF EXISTS `instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instances` (
  `instanceid` int(11) NOT NULL DEFAULT '0',
  `mapid` int(11) NOT NULL DEFAULT '0',
  `npc_data` longtext NOT NULL,
  `player_data` longtext NOT NULL,
  `creation` int(15) NOT NULL DEFAULT '0',
  `expire` int(15) NOT NULL DEFAULT '0',
  `difficulty` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`instanceid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instances`
--

LOCK TABLES `instances` WRITE;
/*!40000 ALTER TABLE `instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipbans`
--

DROP TABLE IF EXISTS `ipbans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipbans` (
  `ip` varchar(50) NOT NULL,
  `time` int(30) NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipbans`
--

LOCK TABLES `ipbans` WRITE;
/*!40000 ALTER TABLE `ipbans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipbans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemloot`
--

DROP TABLE IF EXISTS `itemloot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemloot` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `entryid` int(11) unsigned NOT NULL DEFAULT '0',
  `itemid` int(11) unsigned NOT NULL DEFAULT '25',
  `percentchance` float NOT NULL DEFAULT '1',
  PRIMARY KEY (`index`),
  KEY `i_gameobj_loot_entry` (`entryid`)
) ENGINE=MyISAM AUTO_INCREMENT=2460 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemloot`
--

LOCK TABLES `itemloot` WRITE;
/*!40000 ALTER TABLE `itemloot` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemloot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itempages`
--

DROP TABLE IF EXISTS `itempages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itempages` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `next_page` int(20) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempages`
--

LOCK TABLES `itempages` WRITE;
/*!40000 ALTER TABLE `itempages` DISABLE KEYS */;
/*!40000 ALTER TABLE `itempages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `entry` int(255) unsigned NOT NULL DEFAULT '0',
  `class` int(30) NOT NULL DEFAULT '0',
  `subclass` int(30) NOT NULL DEFAULT '0',
  `field4` int(10) NOT NULL DEFAULT '-1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name2` varchar(255) NOT NULL DEFAULT '',
  `name3` varchar(255) NOT NULL DEFAULT '',
  `name4` varchar(255) NOT NULL DEFAULT '',
  `displayid` int(70) unsigned NOT NULL DEFAULT '0',
  `quality` int(30) NOT NULL DEFAULT '0',
  `flags` int(30) NOT NULL DEFAULT '0',
  `buyprice` int(30) NOT NULL DEFAULT '0',
  `sellprice` int(30) NOT NULL DEFAULT '0',
  `inventorytype` int(30) NOT NULL DEFAULT '0',
  `allowableclass` int(30) NOT NULL DEFAULT '0',
  `allowablerace` int(30) NOT NULL DEFAULT '0',
  `itemlevel` int(30) NOT NULL DEFAULT '0',
  `requiredlevel` int(30) NOT NULL DEFAULT '0',
  `RequiredSkill` int(30) NOT NULL DEFAULT '0',
  `RequiredSkillRank` int(30) NOT NULL DEFAULT '0',
  `RequiredSkillSubRank` int(30) NOT NULL DEFAULT '0',
  `RequiredPlayerRank1` int(30) NOT NULL DEFAULT '0',
  `RequiredPlayerRank2` int(30) NOT NULL DEFAULT '0',
  `RequiredFaction` int(30) NOT NULL DEFAULT '0',
  `RequiredFactionStanding` int(30) NOT NULL DEFAULT '0',
  `Unique` int(30) NOT NULL DEFAULT '0',
  `maxcount` int(30) NOT NULL DEFAULT '0',
  `ContainerSlots` int(30) NOT NULL DEFAULT '0',
  `stat_type1` int(30) NOT NULL DEFAULT '0',
  `stat_value1` int(30) NOT NULL DEFAULT '0',
  `stat_type2` int(30) NOT NULL DEFAULT '0',
  `stat_value2` int(30) NOT NULL DEFAULT '0',
  `stat_type3` int(30) NOT NULL DEFAULT '0',
  `stat_value3` int(30) NOT NULL DEFAULT '0',
  `stat_type4` int(30) NOT NULL DEFAULT '0',
  `stat_value4` int(30) NOT NULL DEFAULT '0',
  `stat_type5` int(30) NOT NULL DEFAULT '0',
  `stat_value5` int(30) NOT NULL DEFAULT '0',
  `stat_type6` int(30) NOT NULL DEFAULT '0',
  `stat_value6` int(30) NOT NULL DEFAULT '0',
  `stat_type7` int(30) NOT NULL DEFAULT '0',
  `stat_value7` int(30) NOT NULL DEFAULT '0',
  `stat_type8` int(30) NOT NULL DEFAULT '0',
  `stat_value8` int(30) NOT NULL DEFAULT '0',
  `stat_type9` int(30) NOT NULL DEFAULT '0',
  `stat_value9` int(30) NOT NULL DEFAULT '0',
  `stat_type10` int(30) NOT NULL DEFAULT '0',
  `stat_value10` int(30) NOT NULL DEFAULT '0',
  `dmg_min1` float NOT NULL DEFAULT '0',
  `dmg_max1` float NOT NULL DEFAULT '0',
  `dmg_type1` int(30) NOT NULL DEFAULT '0',
  `dmg_min2` float NOT NULL DEFAULT '0',
  `dmg_max2` float NOT NULL DEFAULT '0',
  `dmg_type2` int(30) NOT NULL DEFAULT '0',
  `dmg_min3` float NOT NULL DEFAULT '0',
  `dmg_max3` float NOT NULL DEFAULT '0',
  `dmg_type3` int(30) NOT NULL DEFAULT '0',
  `dmg_min4` float NOT NULL DEFAULT '0',
  `dmg_max4` float NOT NULL DEFAULT '0',
  `dmg_type4` int(30) NOT NULL DEFAULT '0',
  `dmg_min5` float NOT NULL DEFAULT '0',
  `dmg_max5` float NOT NULL DEFAULT '0',
  `dmg_type5` int(30) NOT NULL DEFAULT '0',
  `armor` int(30) NOT NULL DEFAULT '0',
  `holy_res` int(30) NOT NULL DEFAULT '0',
  `fire_res` int(30) NOT NULL DEFAULT '0',
  `nature_res` int(30) NOT NULL DEFAULT '0',
  `frost_res` int(30) NOT NULL DEFAULT '0',
  `shadow_res` int(30) NOT NULL DEFAULT '0',
  `arcane_res` int(30) NOT NULL DEFAULT '0',
  `delay` int(30) NOT NULL DEFAULT '0',
  `ammo_type` int(30) NOT NULL DEFAULT '0',
  `range` float NOT NULL DEFAULT '0',
  `spellid_1` int(30) NOT NULL DEFAULT '0',
  `spelltrigger_1` int(30) NOT NULL DEFAULT '0',
  `spellcharges_1` int(30) NOT NULL DEFAULT '0',
  `spellcooldown_1` int(30) NOT NULL DEFAULT '0',
  `spellcategory_1` int(30) NOT NULL DEFAULT '0',
  `spellcategorycooldown_1` int(30) NOT NULL DEFAULT '0',
  `spellid_2` int(30) NOT NULL DEFAULT '0',
  `spelltrigger_2` int(30) NOT NULL DEFAULT '0',
  `spellcharges_2` int(30) NOT NULL DEFAULT '0',
  `spellcooldown_2` int(30) NOT NULL DEFAULT '0',
  `spellcategory_2` int(30) NOT NULL DEFAULT '0',
  `spellcategorycooldown_2` int(30) NOT NULL DEFAULT '0',
  `spellid_3` int(30) NOT NULL DEFAULT '0',
  `spelltrigger_3` int(30) NOT NULL DEFAULT '0',
  `spellcharges_3` int(30) NOT NULL DEFAULT '0',
  `spellcooldown_3` int(30) NOT NULL DEFAULT '0',
  `spellcategory_3` int(30) NOT NULL DEFAULT '0',
  `spellcategorycooldown_3` int(30) NOT NULL DEFAULT '0',
  `spellid_4` int(30) NOT NULL DEFAULT '0',
  `spelltrigger_4` int(30) NOT NULL DEFAULT '0',
  `spellcharges_4` int(30) NOT NULL DEFAULT '0',
  `spellcooldown_4` int(30) NOT NULL DEFAULT '0',
  `spellcategory_4` int(30) NOT NULL DEFAULT '0',
  `spellcategorycooldown_4` int(30) NOT NULL DEFAULT '0',
  `spellid_5` int(30) NOT NULL DEFAULT '0',
  `spelltrigger_5` int(30) NOT NULL DEFAULT '0',
  `spellcharges_5` int(30) NOT NULL DEFAULT '0',
  `spellcooldown_5` int(30) NOT NULL DEFAULT '0',
  `spellcategory_5` int(30) NOT NULL DEFAULT '0',
  `spellcategorycooldown_5` int(30) NOT NULL DEFAULT '0',
  `bonding` int(30) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `page_id` int(30) NOT NULL DEFAULT '0',
  `page_language` int(30) NOT NULL DEFAULT '0',
  `page_material` int(30) NOT NULL DEFAULT '0',
  `quest_id` int(30) NOT NULL DEFAULT '0',
  `lock_id` int(30) NOT NULL DEFAULT '0',
  `lock_material` int(30) NOT NULL DEFAULT '0',
  `sheathID` int(30) NOT NULL DEFAULT '0',
  `randomprop` int(30) NOT NULL DEFAULT '0',
  `unk203_1` int(11) NOT NULL DEFAULT '0',
  `block` int(30) NOT NULL DEFAULT '0',
  `itemset` int(30) NOT NULL DEFAULT '0',
  `MaxDurability` int(30) NOT NULL DEFAULT '0',
  `ZoneNameID` int(30) NOT NULL DEFAULT '0',
  `mapid` int(30) DEFAULT NULL,
  `bagfamily` int(30) NOT NULL DEFAULT '0',
  `TotemCategory` int(30) DEFAULT NULL,
  `socket_color_1` int(30) DEFAULT NULL,
  `unk201_3` int(30) NOT NULL DEFAULT '0',
  `socket_color_2` int(30) DEFAULT NULL,
  `unk201_5` int(30) NOT NULL DEFAULT '0',
  `socket_color_3` int(30) DEFAULT NULL,
  `unk201_7` int(30) NOT NULL DEFAULT '0',
  `socket_bonus` int(30) DEFAULT NULL,
  `GemProperties` int(30) DEFAULT NULL,
  `ItemExtendedCost` int(30) DEFAULT NULL,
  `ReqDisenchantSkill` int(30) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`entry`),
  UNIQUE KEY `entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lootrandomprop`
--

DROP TABLE IF EXISTS `lootrandomprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lootrandomprop` (
  `entryid` int(11) NOT NULL DEFAULT '0',
  `propid` int(11) NOT NULL DEFAULT '0',
  `percentchance` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lootrandomprop`
--

LOCK TABLES `lootrandomprop` WRITE;
/*!40000 ALTER TABLE `lootrandomprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `lootrandomprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailbox`
--

DROP TABLE IF EXISTS `mailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailbox` (
  `message_id` int(30) NOT NULL DEFAULT '0',
  `message_type` int(30) NOT NULL DEFAULT '0',
  `player_guid` int(30) NOT NULL DEFAULT '0',
  `sender_guid` int(30) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  `money` int(30) NOT NULL DEFAULT '0',
  `attached_item_guid` bigint(30) NOT NULL DEFAULT '0',
  `cod` int(30) NOT NULL DEFAULT '0',
  `stationary` int(30) NOT NULL DEFAULT '0',
  `expiry_time` int(30) NOT NULL DEFAULT '0',
  `delivery_time` int(30) NOT NULL DEFAULT '0',
  `copy_made` int(30) NOT NULL DEFAULT '0',
  `read_flag` int(30) NOT NULL DEFAULT '0',
  `deleted_flag` int(30) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailbox`
--

LOCK TABLES `mailbox` WRITE;
/*!40000 ALTER TABLE `mailbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_gossip_textid`
--

DROP TABLE IF EXISTS `npc_gossip_textid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_gossip_textid` (
  `entryid` int(30) NOT NULL DEFAULT '0',
  `textid` int(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entryid`),
  UNIQUE KEY `index` (`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_gossip_textid`
--

LOCK TABLES `npc_gossip_textid` WRITE;
/*!40000 ALTER TABLE `npc_gossip_textid` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_gossip_textid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_text`
--

DROP TABLE IF EXISTS `npc_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_text` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `prob0` float NOT NULL DEFAULT '0',
  `text0_0` longtext NOT NULL,
  `text0_1` longtext NOT NULL,
  `lang0` int(20) unsigned NOT NULL DEFAULT '0',
  `em0_0` int(20) unsigned NOT NULL DEFAULT '0',
  `em0_1` int(20) unsigned NOT NULL DEFAULT '0',
  `em0_2` int(20) unsigned NOT NULL DEFAULT '0',
  `em0_3` int(20) unsigned NOT NULL DEFAULT '0',
  `em0_4` int(20) unsigned NOT NULL DEFAULT '0',
  `em0_5` int(20) unsigned NOT NULL DEFAULT '0',
  `prob1` float NOT NULL DEFAULT '0',
  `text1_0` longtext NOT NULL,
  `text1_1` longtext NOT NULL,
  `lang1` int(20) unsigned NOT NULL DEFAULT '0',
  `em1_0` int(20) unsigned NOT NULL DEFAULT '0',
  `em1_1` int(20) unsigned NOT NULL DEFAULT '0',
  `em1_2` int(20) unsigned NOT NULL DEFAULT '0',
  `em1_3` int(20) unsigned NOT NULL DEFAULT '0',
  `em1_4` int(20) unsigned NOT NULL DEFAULT '0',
  `em1_5` int(20) unsigned NOT NULL DEFAULT '0',
  `prob2` float NOT NULL DEFAULT '0',
  `text2_0` longtext NOT NULL,
  `text2_1` longtext NOT NULL,
  `lang2` int(20) unsigned NOT NULL DEFAULT '0',
  `em2_0` int(20) unsigned NOT NULL DEFAULT '0',
  `em2_1` int(20) unsigned NOT NULL DEFAULT '0',
  `em2_2` int(20) unsigned NOT NULL DEFAULT '0',
  `em2_3` int(20) unsigned NOT NULL DEFAULT '0',
  `em2_4` int(20) unsigned NOT NULL DEFAULT '0',
  `em2_5` int(20) unsigned NOT NULL DEFAULT '0',
  `prob3` float NOT NULL DEFAULT '0',
  `text3_0` longtext NOT NULL,
  `text3_1` longtext NOT NULL,
  `lang3` int(20) unsigned NOT NULL DEFAULT '0',
  `em3_0` int(20) unsigned NOT NULL DEFAULT '0',
  `em3_1` int(20) unsigned NOT NULL DEFAULT '0',
  `em3_2` int(20) unsigned NOT NULL DEFAULT '0',
  `em3_3` int(20) unsigned NOT NULL DEFAULT '0',
  `em3_4` int(20) unsigned NOT NULL DEFAULT '0',
  `em3_5` int(20) unsigned NOT NULL DEFAULT '0',
  `prob4` float NOT NULL DEFAULT '0',
  `text4_0` longtext NOT NULL,
  `text4_1` longtext NOT NULL,
  `lang4` int(20) unsigned NOT NULL DEFAULT '0',
  `em4_0` int(20) unsigned NOT NULL DEFAULT '0',
  `em4_1` int(20) unsigned NOT NULL DEFAULT '0',
  `em4_2` int(20) unsigned NOT NULL DEFAULT '0',
  `em4_3` int(20) unsigned NOT NULL DEFAULT '0',
  `em4_4` int(20) unsigned NOT NULL DEFAULT '0',
  `em4_5` int(20) unsigned NOT NULL DEFAULT '0',
  `prob5` float NOT NULL DEFAULT '0',
  `text5_0` longtext NOT NULL,
  `text5_1` longtext NOT NULL,
  `lang5` int(20) unsigned NOT NULL DEFAULT '0',
  `em5_0` int(20) unsigned NOT NULL DEFAULT '0',
  `em5_1` int(20) unsigned NOT NULL DEFAULT '0',
  `em5_2` int(20) unsigned NOT NULL DEFAULT '0',
  `em5_3` int(20) unsigned NOT NULL DEFAULT '0',
  `em5_4` int(20) unsigned NOT NULL DEFAULT '0',
  `em5_5` int(20) unsigned NOT NULL DEFAULT '0',
  `prob6` float NOT NULL DEFAULT '0',
  `text6_0` longtext NOT NULL,
  `text6_1` longtext NOT NULL,
  `lang6` int(20) unsigned NOT NULL DEFAULT '0',
  `em6_0` int(20) unsigned NOT NULL DEFAULT '0',
  `em6_1` int(20) unsigned NOT NULL DEFAULT '0',
  `em6_2` int(20) unsigned NOT NULL DEFAULT '0',
  `em6_3` int(20) unsigned NOT NULL DEFAULT '0',
  `em6_4` int(20) unsigned NOT NULL DEFAULT '0',
  `em6_5` int(20) unsigned NOT NULL DEFAULT '0',
  `prob7` float NOT NULL DEFAULT '0',
  `text7_0` longtext NOT NULL,
  `text7_1` longtext NOT NULL,
  `lang7` int(20) unsigned NOT NULL DEFAULT '0',
  `em7_0` int(20) unsigned NOT NULL DEFAULT '0',
  `em7_1` int(20) unsigned NOT NULL DEFAULT '0',
  `em7_2` int(20) unsigned NOT NULL DEFAULT '0',
  `em7_3` int(20) unsigned NOT NULL DEFAULT '0',
  `em7_4` int(20) unsigned NOT NULL DEFAULT '0',
  `em7_5` int(20) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_text`
--

LOCK TABLES `npc_text` WRITE;
/*!40000 ALTER TABLE `npc_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectloot`
--

DROP TABLE IF EXISTS `objectloot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objectloot` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `entryid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `percentchance` float DEFAULT NULL,
  PRIMARY KEY (`index`),
  KEY `entryid` (`entryid`)
) ENGINE=MyISAM AUTO_INCREMENT=53071 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectloot`
--

LOCK TABLES `objectloot` WRITE;
/*!40000 ALTER TABLE `objectloot` DISABLE KEYS */;
/*!40000 ALTER TABLE `objectloot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petdefaultspells`
--

DROP TABLE IF EXISTS `petdefaultspells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petdefaultspells` (
  `entry` int(11) NOT NULL DEFAULT '0',
  `spell` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petdefaultspells`
--

LOCK TABLES `petdefaultspells` WRITE;
/*!40000 ALTER TABLE `petdefaultspells` DISABLE KEYS */;
/*!40000 ALTER TABLE `petdefaultspells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercooldownitems`
--

DROP TABLE IF EXISTS `playercooldownitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercooldownitems` (
  `OwnerGuid` bigint(10) NOT NULL DEFAULT '0',
  `ItemEntry` int(10) NOT NULL DEFAULT '0',
  `SpellID` int(10) NOT NULL DEFAULT '0',
  `SpellCategory` int(10) NOT NULL DEFAULT '0',
  `CooldownTimeStamp` int(11) NOT NULL DEFAULT '0',
  `Cooldown` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercooldownitems`
--

LOCK TABLES `playercooldownitems` WRITE;
/*!40000 ALTER TABLE `playercooldownitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercooldownitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercooldownsecurity`
--

DROP TABLE IF EXISTS `playercooldownsecurity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercooldownsecurity` (
  `OwnerGuid` bigint(10) NOT NULL DEFAULT '0',
  `SpellID` int(10) NOT NULL DEFAULT '0',
  `TimeStamp` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 123904 kB; InnoDB free: 123904 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercooldownsecurity`
--

LOCK TABLES `playercooldownsecurity` WRITE;
/*!40000 ALTER TABLE `playercooldownsecurity` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercooldownsecurity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo`
--

DROP TABLE IF EXISTS `playercreateinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo` (
  `Index` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `factiontemplate` int(5) NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mapID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zoneID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `positionX` float NOT NULL DEFAULT '0',
  `positionY` float NOT NULL DEFAULT '0',
  `positionZ` float NOT NULL DEFAULT '0',
  `displayID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BaseStrength` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseAgility` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseStamina` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseIntellect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseSpirit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseHealth` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseMana` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseRage` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseFocus` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseEnergy` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attackpower` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mindmg` float NOT NULL DEFAULT '0',
  `maxdmg` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`Index`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo`
--

LOCK TABLES `playercreateinfo` WRITE;
/*!40000 ALTER TABLE `playercreateinfo` DISABLE KEYS */;
INSERT INTO `playercreateinfo` VALUES (1,1,1,1,0,12,-8949.95,-132.493,83.5312,49,23,20,22,20,20,60,0,1000,0,0,29,5,6),(2,2,2,1,1,14,-618.518,-4251.67,38.718,51,26,17,24,17,23,80,0,1000,0,0,35,6,6),(3,3,3,1,0,1,-6240.32,331.033,382.758,53,25,16,25,19,19,90,0,1000,0,0,33,5,6),(4,4,4,1,1,141,10311.3,832.463,1326.41,55,20,25,21,20,20,50,0,1000,0,0,21,4,4),(5,5,5,1,0,85,1676.35,1677.45,121.67,57,22,18,23,18,25,70,0,1000,0,0,27,4,5),(6,6,6,1,1,215,-2917.58,-257.98,52.9968,59,28,15,24,15,22,80,0,1000,0,0,39,6,7),(7,7,115,1,0,1,-6240.32,331.033,382.758,1563,18,23,21,23,20,50,0,1000,0,0,10,3,4),(8,8,116,1,1,14,-618.518,-4251.67,38.718,1478,24,22,23,16,21,70,0,1000,0,0,29,5,7),(9,1,1,2,0,12,-8949.95,-132.493,83.5312,49,22,20,22,20,21,58,80,0,0,0,27,4,5),(10,3,3,2,0,1,-6240.32,331.033,382.758,53,24,16,25,19,20,88,79,0,0,0,31,5,6),(11,2,2,3,1,14,-618.518,-4251.67,38.718,51,23,20,23,17,24,76,82,0,0,0,25,4,5),(12,3,3,3,0,1,-6240.32,331.033,382.758,53,22,19,24,19,20,86,84,0,0,0,24,4,5),(15,4,4,3,1,141,10311.3,832.463,1326.41,55,17,28,20,20,21,46,85,0,0,0,26,4,5),(16,6,6,3,1,215,-2917.58,-257.98,52.9968,59,25,18,23,15,23,76,80,0,0,0,16,5,7),(17,8,116,3,1,14,-618.518,-4251.67,38.718,1478,21,25,22,16,22,66,81,0,0,0,16,5,7),(18,1,1,4,0,12,-8949.95,-132.493,83.5312,49,21,23,21,20,20,55,0,0,0,100,27,10,13),(19,2,2,4,1,14,-618.518,-4251.67,38.718,51,24,20,23,17,23,75,0,0,0,100,30,4,4),(20,3,3,4,0,1,-6240.32,331.033,382.758,53,23,19,24,19,19,85,0,0,0,100,30,4,4),(21,4,4,4,1,141,10311.3,832.463,1326.41,55,18,28,20,20,20,45,0,0,0,100,30,4,4),(22,5,5,4,0,85,1676.35,1677.45,121.67,57,20,21,22,18,25,65,0,0,0,100,30,4,4),(23,7,115,4,0,1,-6340.32,331.033,382.758,1563,16,26,20,23,20,45,0,0,0,100,30,4,4),(24,8,116,4,1,14,-618.518,-4251.67,38.718,1478,22,25,22,16,21,65,0,0,0,100,30,4,4),(25,1,1,5,0,12,-8949.95,-132.493,83.5312,49,20,20,20,22,23,52,160,0,0,0,30,4,4),(26,3,3,5,0,1,-6240.32,331.033,382.758,53,22,16,23,21,22,82,145,0,0,0,30,4,4),(27,4,4,5,1,141,10311.3,832.463,1326.41,55,17,25,19,22,23,51,160,0,0,0,30,4,4),(28,5,5,5,0,85,1676.35,1677.45,121.67,57,19,18,21,20,28,62,130,0,0,0,30,4,4),(29,8,116,5,1,14,-618.518,-4251.67,38.718,1478,21,22,21,18,24,62,128,0,0,0,30,4,4),(30,2,2,7,1,14,-618.518,-4251.67,38.718,51,24,17,23,18,25,77,73,0,0,0,30,4,4),(31,6,6,7,1,215,-2917.58,-257.98,52.9968,59,26,15,23,16,24,77,71,0,0,0,30,4,4),(32,8,116,7,1,14,-618.518,-4251.67,38.718,1478,22,22,22,17,23,67,72,0,0,0,30,4,4),(34,1,1,8,0,12,-8949.95,-132.493,83.5312,49,20,20,20,23,22,52,165,0,0,0,30,4,4),(35,5,5,8,0,85,1676.35,1677.45,121.67,57,19,18,21,21,27,62,135,0,0,0,30,4,4),(36,7,115,8,0,1,-6340.32,331.033,382.758,1563,15,23,19,26,22,51,210,0,0,0,30,4,4),(37,8,116,8,1,14,-618.518,-4251.67,38.718,1478,21,22,21,19,23,62,119,0,0,0,30,4,4),(38,1,1,9,0,12,-8949.95,-132.493,83.5312,49,20,20,21,22,22,53,140,0,0,0,30,4,4),(39,2,2,9,1,14,-618.518,-4251.67,38.718,51,23,17,23,19,25,73,109,0,0,0,30,4,4),(40,5,5,9,0,85,1676.35,1677.45,121.67,57,19,18,22,20,27,63,110,0,0,0,30,4,4),(41,7,115,9,0,1,-6340.32,331.033,382.758,1563,15,23,20,25,22,43,185,0,0,0,30,4,4),(42,4,4,11,1,141,10311.3,832.463,1326.41,55,18,25,19,22,22,53,100,0,0,0,30,4,4),(43,6,6,11,1,215,-2917.58,-257.98,52.9968,59,26,15,22,17,24,74,67,0,0,0,30,4,4),(44,11,1629,1,530,0,-3961.64,-13931.2,100.615,16125,24,17,21,21,22,50,0,1000,0,100,31,1092010000,1094110000),(45,11,1629,2,530,0,-3961.64,-13931.2,100.615,16125,23,17,21,21,23,48,95,1000,0,100,29,1091580000,1093670000),(46,11,1629,3,530,0,-3961.64,-13931.2,100.615,16125,21,20,20,21,23,46,100,1000,0,100,23,1082390000,1086580000),(47,11,1629,5,530,0,-3961.64,-13931.2,100.615,16125,21,17,19,23,25,51,175,1000,0,100,11,1075810000,1083160000),(48,11,1629,7,530,0,-3961.64,-13931.2,100.615,16125,22,17,20,22,24,47,105,1000,0,100,26,1083240000,1087430000),(49,11,1629,8,530,0,-3961.64,-13931.2,100.615,16125,21,17,19,24,24,51,180,1000,0,100,11,1084810000,1089010000),(50,10,1610,2,530,0,10349.6,-6357.29,33.4026,15476,19,22,20,24,20,38,140,1000,0,100,21,1089160000,1091930000),(51,10,1610,3,530,0,10349.6,-6357.29,33.4026,15476,17,25,19,24,20,45,145,1000,0,100,24,1081050000,1083690000),(52,10,1610,4,530,0,10349.6,-6357.29,33.4026,15476,18,25,19,24,19,44,0,1000,0,100,25,1081530000,1083930000),(53,10,1610,5,530,0,10349.6,-6357.29,33.4026,15476,17,22,18,26,22,50,220,1000,0,100,7,1073320000,1081920000),(54,10,1610,8,530,0,10349.6,-6357.29,33.4026,15476,17,22,18,27,2,50,225,1000,0,100,7,1083070000,1087270000),(55,10,1610,9,530,0,10349.6,-6357.29,33.4026,15476,17,22,19,26,21,42,200,1000,0,100,7,1072060000,1077100000),(56,10,1610,1,530,0,10349.6,-6357.29,33.4026,15476,24,17,21,21,22,50,0,1000,0,100,31,1092010000,1094110000);
/*!40000 ALTER TABLE `playercreateinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_bars`
--

DROP TABLE IF EXISTS `playercreateinfo_bars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_bars` (
  `race` int(2) DEFAULT NULL,
  `class` int(2) DEFAULT NULL,
  `button` int(4) DEFAULT NULL,
  `action` int(4) DEFAULT NULL,
  `type` int(4) DEFAULT NULL,
  `misc` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_bars`
--

LOCK TABLES `playercreateinfo_bars` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_bars` DISABLE KEYS */;
INSERT INTO `playercreateinfo_bars` VALUES (0,1,72,6603,0,0),(0,1,73,78,0,0),(0,1,83,117,128,0),(0,2,0,6603,0,0),(0,2,2,635,0,0),(0,2,1,20154,0,0),(0,2,11,159,128,0),(0,2,10,2070,128,0),(0,3,0,6603,0,0),(0,3,2,75,0,0),(0,3,1,2973,0,0),(0,3,10,4604,128,0),(0,3,11,159,128,0),(0,4,0,6603,0,0),(0,4,1,1752,0,0),(0,4,2,2098,0,0),(0,4,11,2070,128,0),(0,5,0,6603,0,0),(0,5,1,585,0,0),(0,5,2,2050,0,0),(0,5,10,4540,128,0),(0,5,11,159,128,0),(0,7,0,6603,0,0),(0,7,1,403,0,0),(0,7,2,331,0,0),(0,7,10,4604,128,0),(0,7,11,159,128,0),(0,8,0,6603,0,0),(0,8,1,133,0,0),(0,8,2,168,0,0),(0,8,10,2070,128,0),(0,8,11,159,128,0),(0,11,0,6603,0,0),(0,11,1,5176,0,0),(0,11,2,5185,0,0),(0,11,11,159,128,0),(0,11,10,4536,128,0),(0,9,1,686,0,0),(0,9,2,687,0,0),(0,9,10,4604,128,0),(0,9,11,159,128,0),(0,9,0,6603,0,0),(0,4,3,2764,0,0),(11,1,0,6603,0,0),(11,1,72,6603,0,0),(11,1,73,78,0,0),(11,1,74,28880,0,0),(11,1,83,4540,0,128),(11,1,84,6603,0,0),(11,1,96,6603,0,0),(11,1,108,6603,0,0),(11,2,0,6603,0,0),(11,2,1,20154,0,0),(11,2,2,635,0,0),(11,2,3,28880,0,0),(11,2,10,159,0,128),(11,2,11,4540,0,128),(11,2,83,4540,0,128),(11,3,0,6603,0,0),(11,3,1,2973,0,0),(11,3,2,75,0,0),(11,3,3,28880,0,0),(11,3,10,159,0,128),(11,3,11,4540,0,128),(11,3,72,6603,0,0),(11,3,73,2973,0,0),(11,3,74,75,0,0),(11,3,82,159,0,128),(11,3,83,4540,0,128),(11,5,0,6603,0,0),(11,5,1,585,0,0),(11,5,2,2050,0,0),(11,5,3,28880,0,0),(11,5,10,159,0,128),(11,5,11,4540,0,128),(11,5,83,4540,0,128),(11,7,0,6603,0,0),(11,7,1,403,0,0),(11,7,2,331,0,0),(11,7,3,28880,0,0),(11,7,10,159,0,128),(11,7,11,4540,0,128),(11,8,0,6603,0,0),(11,8,1,133,0,0),(11,8,2,168,0,0),(11,8,3,28880,0,0),(11,8,10,159,0,128),(11,8,11,4540,0,128),(11,8,83,4540,0,128),(10,2,0,6603,0,0),(10,2,1,20154,0,0),(10,2,2,635,0,0),(10,2,3,28734,0,0),(10,2,4,28730,0,0),(10,2,10,159,0,128),(10,2,11,20857,0,128),(10,3,0,6603,0,0),(10,3,1,2973,0,0),(10,3,2,75,0,0),(10,3,3,28734,0,0),(10,3,4,28730,0,0),(10,3,10,159,0,128),(10,3,11,20857,0,128),(10,4,0,6603,0,0),(10,4,1,1752,0,0),(10,4,2,2098,0,0),(10,4,3,2764,0,0),(10,4,4,28734,0,0),(10,4,5,25046,0,0),(10,4,11,20857,0,128),(10,5,0,6603,0,0),(10,5,1,585,0,0),(10,5,2,2050,0,0),(10,5,3,28734,0,0),(10,5,4,28730,0,0),(10,5,10,159,0,128),(10,5,11,20857,0,128),(10,8,0,6603,0,0),(10,8,1,133,0,0),(10,8,2,168,0,0),(10,8,3,28734,0,0),(10,8,4,28730,0,0),(10,8,10,159,0,128),(10,8,11,20857,0,128),(10,9,0,6603,0,0),(10,9,1,686,0,0),(10,9,2,687,0,0),(10,9,3,28734,0,0),(10,9,4,28730,0,0),(10,9,10,159,0,128),(10,9,11,20857,0,128);
/*!40000 ALTER TABLE `playercreateinfo_bars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_items`
--

DROP TABLE IF EXISTS `playercreateinfo_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_items` (
  `indexid` int(4) NOT NULL DEFAULT '0',
  `protoid` int(4) NOT NULL DEFAULT '0',
  `slotid` int(10) NOT NULL DEFAULT '0',
  `amount` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_items`
--

LOCK TABLES `playercreateinfo_items` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercreateinfo_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_skills`
--

DROP TABLE IF EXISTS `playercreateinfo_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_skills` (
  `indexid` int(4) NOT NULL DEFAULT '0',
  `skillid` int(5) NOT NULL DEFAULT '0',
  `level` int(4) NOT NULL DEFAULT '0',
  `maxlevel` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_skills`
--

LOCK TABLES `playercreateinfo_skills` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_skills` DISABLE KEYS */;
INSERT INTO `playercreateinfo_skills` VALUES (1,183,5,5),(1,754,5,5),(1,433,1,1),(1,98,300,300),(1,415,1,1),(1,95,1,5),(1,43,1,5),(1,26,5,5),(1,44,1,5),(1,413,1,1),(1,414,1,1),(1,54,1,5),(1,162,1,5),(9,183,5,5),(9,754,5,5),(9,433,1,1),(9,98,300,300),(9,415,1,1),(9,594,5,5),(9,95,1,5),(9,160,1,5),(9,413,1,1),(9,414,1,1),(9,54,1,5),(9,162,1,5),(18,173,1,5),(18,183,5,5),(18,754,5,5),(18,98,300,300),(18,415,1,1),(18,95,1,5),(18,176,1,5),(18,38,5,5),(18,253,5,5),(18,414,1,1),(18,162,1,5),(25,183,5,5),(25,228,1,5),(25,754,5,5),(25,98,300,300),(25,415,1,1),(25,95,1,5),(25,56,5,5),(25,54,1,5),(25,162,1,5),(34,183,5,5),(34,228,1,5),(34,754,5,5),(34,8,5,5),(34,98,300,300),(34,415,1,1),(34,95,1,5),(34,6,5,5),(34,136,1,5),(34,162,1,5),(38,173,1,5),(38,183,5,5),(38,228,1,5),(38,754,5,5),(38,593,5,5),(38,98,300,300),(38,354,5,5),(38,415,1,1),(38,95,1,5),(38,162,1,5),(2,172,1,5),(2,183,5,5),(2,109,300,300),(2,433,1,1),(2,125,5,5),(2,415,1,1),(2,95,1,5),(2,43,1,5),(2,26,5,5),(2,44,1,5),(2,413,1,1),(2,414,1,1),(2,162,1,5),(11,183,5,5),(11,109,300,300),(11,125,5,5),(11,415,1,1),(11,95,1,5),(11,44,1,5),(11,51,5,5),(11,414,1,1),(11,45,1,5),(11,163,5,5),(11,162,1,5),(19,173,1,5),(19,183,5,5),(19,109,300,300),(19,125,5,5),(19,415,1,1),(19,95,1,5),(19,176,1,5),(19,38,5,5),(19,253,5,5),(19,414,1,1),(19,162,1,5),(30,183,5,5),(30,109,300,300),(30,433,1,1),(30,125,5,5),(30,374,5,5),(30,375,5,5),(30,415,1,1),(30,95,1,5),(30,136,1,5),(30,414,1,1),(30,54,1,5),(30,162,1,5),(39,173,1,5),(39,183,5,5),(39,228,1,5),(39,109,300,300),(39,593,5,5),(39,125,5,5),(39,354,5,5),(39,415,1,1),(39,95,1,5),(39,162,1,5),(3,172,1,5),(3,183,5,5),(3,433,1,1),(3,98,300,300),(3,415,1,1),(3,95,1,5),(3,26,5,5),(3,44,1,5),(3,101,5,5),(3,111,300,300),(3,413,1,1),(3,414,1,1),(3,54,1,5),(3,162,1,5),(10,183,5,5),(10,433,1,1),(10,98,300,300),(10,415,1,1),(10,594,5,5),(10,95,1,5),(10,101,5,5),(10,111,300,300),(10,160,1,5),(10,413,1,1),(10,414,1,1),(10,54,1,5),(10,162,1,5),(12,183,5,5),(12,98,300,300),(12,415,1,1),(12,95,1,5),(12,44,1,5),(12,51,5,5),(12,101,5,5),(12,111,300,300),(12,414,1,1),(12,163,5,5),(12,46,1,5),(12,162,1,5),(20,173,1,5),(20,183,5,5),(20,98,300,300),(20,415,1,1),(20,95,1,5),(20,176,1,5),(20,38,5,5),(20,101,5,5),(20,111,300,300),(20,253,5,5),(2,414,1,1),(20,162,1,5),(26,183,5,5),(26,228,1,5),(26,98,300,300),(26,415,1,1),(26,95,1,5),(26,56,5,5),(26,101,5,5),(26,111,300,300),(26,54,1,5),(26,162,1,5),(4,173,1,5),(4,183,5,5),(4,433,1,1),(4,98,300,300),(4,415,1,1),(4,95,1,5),(4,43,1,5),(4,26,5,5),(4,113,300,300),(4,413,1,1),(4,414,1,1),(4,54,1,5),(4,126,5,5),(4,162,1,5),(15,173,1,5),(15,183,5,5),(15,98,300,300),(15,415,1,1),(15,95,1,5),(15,51,5,5),(15,113,300,300),(15,414,1,1),(15,45,1,5),(15,163,5,5),(15,126,5,5),(15,162,1,5),(21,173,1,5),(21,183,5,5),(21,98,300,300),(21,415,1,1),(21,95,1,5),(21,176,1,5),(21,38,5,5),(21,113,300,300),(21,253,5,5),(21,414,1,1),(21,126,5,5),(21,162,1,5),(27,183,5,5),(27,228,1,5),(27,98,300,300),(27,415,1,1),(27,95,1,5),(27,56,5,5),(27,113,300,300),(27,54,1,5),(27,126,5,5),(27,162,1,5),(42,173,1,5),(42,183,5,5),(42,574,5,5),(42,573,5,5),(42,98,300,300),(42,415,1,1),(42,95,1,5),(42,113,300,300),(42,136,1,5),(42,414,1,1),(42,126,5,5),(42,162,1,5),(5,173,1,5),(5,183,5,5),(5,220,5,5),(5,109,300,300),(5,433,1,1),(5,415,1,1),(5,673,300,300),(5,95,1,5),(5,43,1,5),(5,55,1,5),(5,26,5,5),(5,413,1,1),(5,414,1,1),(5,162,1,5),(22,173,1,5),(22,183,5,5),(22,220,5,5),(22,109,300,300),(22,415,1,1),(22,673,300,300),(22,95,1,5),(22,176,1,5),(22,38,5,5),(22,253,5,5),(22,414,1,1),(22,162,1,5),(28,183,5,5),(28,220,5,5),(28,228,1,5),(28,109,300,300),(28,415,1,1),(28,673,300,300),(28,95,1,5),(28,56,5,5),(28,54,1,5),(28,162,1,5),(35,183,5,5),(35,220,5,5),(35,228,1,5),(35,109,300,300),(35,8,5,5),(35,415,1,1),(35,673,300,300),(35,95,1,5),(35,6,5,5),(35,136,1,5),(35,162,1,5),(40,173,1,5),(40,183,5,5),(40,220,5,5),(40,228,1,5),(40,109,300,300),(40,593,5,5),(40,354,5,5),(40,415,1,1),(40,673,300,300),(40,95,1,5),(40,162,1,5),(6,183,5,5),(6,109,300,300),(6,124,5,5),(6,433,1,1),(6,415,1,1),(6,95,1,5),(6,26,5,5),(6,44,1,5),(6,115,300,300),(6,160,1,5),(6,413,1,1),(6,414,1,1),(6,54,1,5),(6,162,1,5),(16,183,5,5),(16,109,300,300),(16,124,5,5),(16,415,1,1),(16,95,1,5),(16,44,1,5),(16,51,5,5),(16,115,300,300),(16,414,1,1),(16,163,5,5),(16,46,1,5),(16,162,1,5),(31,183,5,5),(31,109,300,300),(31,124,5,5),(31,433,1,1),(31,374,5,5),(31,375,5,5),(31,415,1,1),(31,95,1,5),(31,115,300,300),(31,136,1,5),(31,414,1,1),(31,54,1,5),(31,162,1,5),(43,183,5,5),(43,574,5,5),(43,109,300,300),(43,124,5,5),(43,573,5,5),(43,415,1,1),(43,95,1,5),(43,115,300,300),(43,136,1,5),(43,414,1,1),(43,54,1,5),(43,162,1,5),(7,173,1,5),(7,183,5,5),(7,433,1,1),(7,98,300,300),(7,415,1,1),(7,95,1,5),(7,43,1,5),(7,753,5,5),(7,26,5,5),(7,313,300,300),(7,413,1,1),(7,414,1,1),(7,54,1,5),(7,162,1,5),(23,173,1,5),(23,183,5,5),(23,98,300,300),(23,415,1,1),(23,95,1,5),(23,753,5,5),(23,176,1,5),(23,38,5,5),(23,253,5,5),(23,313,300,300),(23,414,1,1),(23,162,1,5),(36,183,5,5),(36,228,1,5),(36,8,5,5),(36,98,300,300),(36,415,1,1),(36,95,1,5),(36,753,5,5),(36,6,5,5),(36,136,1,5),(36,313,300,300),(36,162,1,5),(41,173,1,5),(41,183,5,5),(41,228,1,5),(41,593,5,5),(41,98,300,300),(41,354,5,5),(41,415,1,1),(41,95,1,5),(41,753,5,5),(41,313,300,300),(41,162,1,5),(8,173,1,5),(8,183,5,5),(8,109,300,300),(8,433,1,1),(8,315,300,300),(8,415,1,1),(8,95,1,5),(8,733,5,5),(8,176,1,5),(8,26,5,5),(8,44,1,5),(8,413,1,1),(8,414,1,1),(8,162,1,5),(17,183,5,5),(17,109,300,300),(17,315,300,300),(17,415,1,1),(17,95,1,5),(17,733,5,5),(17,44,1,5),(17,51,5,5),(17,414,1,1),(17,45,1,5),(17,163,5,5),(17,162,1,5),(24,173,1,5),(24,183,5,5),(24,109,300,300),(24,315,300,300),(24,415,1,1),(24,95,1,5),(24,733,5,5),(24,176,1,5),(24,38,5,5),(24,253,5,5),(24,414,1,1),(24,162,1,5),(29,183,5,5),(29,228,1,5),(29,109,300,300),(29,315,300,300),(29,415,1,1),(29,95,1,5),(29,733,5,5),(29,56,5,5),(29,54,1,5),(29,162,1,5),(32,183,5,5),(32,109,300,300),(32,433,1,1),(32,315,300,300),(32,374,5,5),(32,375,5,5),(32,415,1,1),(32,95,1,5),(32,733,5,5),(32,136,1,5),(32,414,1,1),(32,54,1,5),(32,162,1,5),(37,183,5,5),(37,228,1,5),(37,109,300,300),(37,8,5,5),(37,315,300,300),(37,415,1,1),(37,95,1,5),(37,733,5,5),(37,6,5,5),(37,136,1,5),(37,162,1,5),(44,759,300,300),(44,26,5,5),(44,45,0,5),(44,414,1,1),(44,413,1,1),(44,313,0,0),(44,140,0,0),(44,473,0,1),(44,137,0,0),(44,433,1,1),(44,26,0,5),(44,415,1,1),(44,139,0,0),(44,315,0,0),(44,46,0,5),(44,293,0,0),(44,257,0,5),(44,229,0,0),(44,769,0,5),(44,762,0,0),(44,54,1,5),(44,136,0,5),(44,98,300,300),(44,760,5,5),(44,186,0,0),(44,43,1,5),(44,165,0,0),(44,160,0,5),(44,197,0,0),(44,109,0,0),(44,393,0,0),(44,755,0,0),(44,226,0,5),(44,183,5,5),(44,173,0,5),(44,172,0,5),(44,164,0,0),(44,142,0,1),(44,141,0,0),(44,138,0,0),(44,118,0,0),(44,115,0,0),(44,176,0,5),(44,55,1,5),(44,333,0,0),(44,95,1,5),(44,673,0,0),(44,182,0,0),(44,171,0,0),(44,356,0,0),(44,202,0,0),(44,113,0,0),(44,111,0,0),(44,44,0,5),(44,162,1,5),(44,185,0,0),(44,129,0,0),(45,759,300,300),(45,414,1,1),(45,413,1,1),(45,313,0,0),(45,140,0,0),(45,137,0,0),(45,433,1,1),(45,594,5,5),(45,415,1,1),(45,139,0,0),(45,315,0,0),(45,293,0,0),(45,229,0,0),(45,769,0,5),(45,762,0,0),(45,54,1,5),(45,98,300,300),(45,760,5,5),(45,186,0,0),(45,43,0,5),(45,165,0,0),(45,160,1,5),(45,197,0,0),(45,109,0,0),(45,393,0,0),(45,755,0,0),(45,184,0,5),(45,183,5,5),(45,172,0,5),(45,164,0,0),(45,142,0,1),(45,141,0,0),(45,138,0,0),(45,115,0,0),(45,55,0,5),(45,333,0,0),(45,95,1,5),(45,673,0,0),(45,182,0,0),(45,171,0,0),(45,356,0,0),(45,202,0,0),(45,113,0,0),(45,111,0,0),(45,44,0,5),(45,162,1,5),(45,267,0,5),(45,185,0,0),(45,129,0,0),(46,759,300,300),(46,45,0,5),(46,414,1,1),(46,413,0,0),(46,313,0,0),(46,140,0,0),(46,473,0,1),(46,137,0,0),(46,415,1,1),(46,139,0,0),(46,315,0,0),(46,46,0,5),(46,229,0,0),(46,769,0,5),(46,762,0,0),(46,136,0,5),(46,98,300,300),(46,760,5,5),(46,51,5,5),(46,186,0,0),(46,43,1,5),(46,165,0,0),(46,197,0,0),(46,109,0,0),(46,393,0,0),(46,755,0,0),(46,226,1,5),(46,183,5,5),(46,173,0,5),(46,172,0,5),(46,164,0,0),(46,163,5,5),(46,142,0,1),(46,141,0,0),(46,138,0,0),(46,118,0,0),(46,115,0,0),(46,176,0,5),(46,55,0,5),(46,333,0,0),(46,95,1,5),(46,673,0,0),(46,182,0,0),(46,171,0,0),(46,356,0,0),(46,202,0,0),(46,113,0,0),(46,111,0,0),(46,50,0,5),(46,44,0,5),(46,162,1,5),(46,261,0,5),(46,185,0,0),(46,129,0,0),(47,759,300,300),(47,78,0,5),(47,613,0,5),(47,313,0,0),(47,140,0,0),(47,137,0,0),(47,415,1,1),(47,139,0,0),(47,315,0,0),(47,769,0,5),(47,762,0,0),(47,54,1,5),(47,136,0,5),(47,98,300,300),(47,760,5,5),(47,186,0,0),(47,165,0,0),(47,197,0,0),(47,109,0,0),(47,393,0,0),(47,755,0,0),(47,228,1,5),(47,183,5,5),(47,173,0,5),(47,164,0,0),(47,142,0,1),(47,141,0,0),(47,138,0,0),(47,115,0,0),(47,333,0,0),(47,95,1,5),(47,673,0,0),(47,182,0,0),(47,171,0,0),(47,356,0,0),(47,202,0,0),(47,113,0,0),(47,111,0,0),(47,56,5,5),(47,162,1,5),(47,185,0,0),(47,129,0,0),(48,759,300,300),(48,414,1,1),(48,413,0,0),(48,313,0,0),(48,140,0,0),(48,473,0,1),(48,137,0,0),(48,433,1,1),(48,415,1,1),(48,375,5,5),(48,374,5,5),(48,373,0,5),(48,139,0,0),(48,315,0,0),(48,769,0,5),(48,762,0,0),(48,54,1,5),(48,136,1,5),(48,98,300,300),(48,760,5,5),(48,186,0,0),(48,165,0,0),(48,160,0,5),(48,197,0,0),(48,109,0,0),(48,393,0,0),(48,755,0,0),(48,183,5,5),(48,173,0,5),(48,172,0,5),(48,164,0,0),(48,142,0,1),(48,141,0,0),(48,138,0,0),(48,118,0,5),(48,115,0,0),(48,333,0,0),(48,95,1,5),(48,673,0,0),(48,182,0,0),(48,171,0,0),(48,356,0,0),(48,202,0,0),(48,113,0,0),(48,111,0,0),(48,44,0,5),(48,162,1,5),(48,185,0,0),(48,129,0,0),(49,759,300,300),(49,313,0,0),(49,140,0,0),(49,137,0,0),(49,415,1,1),(49,139,0,0),(49,315,0,0),(49,8,5,5),(49,769,0,5),(49,762,0,0),(49,136,1,5),(49,98,300,300),(49,760,5,5),(49,186,0,0),(49,43,0,5),(49,165,0,0),(49,197,0,0),(49,109,0,0),(49,393,0,0),(49,755,0,0),(49,228,1,5),(49,183,5,5),(49,173,0,5),(49,164,0,0),(49,142,0,1),(49,141,0,0),(49,138,0,0),(49,115,0,0),(49,6,5,5),(49,333,0,0),(49,95,1,5),(49,673,0,0),(49,182,0,0),(49,171,0,0),(49,356,0,0),(49,202,0,0),(49,113,0,0),(49,111,0,0),(49,162,1,5),(49,237,0,5),(49,185,0,0),(49,129,0,0),(50,759,0,0),(50,756,5,5),(50,414,1,1),(50,413,1,1),(50,313,0,0),(50,140,0,0),(50,137,300,300),(50,433,1,1),(50,594,5,5),(50,415,1,1),(50,139,0,0),(50,315,0,0),(50,293,0,0),(50,229,0,0),(50,769,0,5),(50,762,0,0),(50,54,0,5),(50,98,0,0),(50,186,0,0),(50,43,1,5),(50,165,0,0),(50,160,0,5),(50,197,0,0),(50,109,300,300),(50,393,0,0),(50,755,0,0),(50,184,0,5),(50,183,5,5),(50,172,0,5),(50,164,0,0),(50,142,0,1),(50,14,0,0),(50,138,0,0),(50,115,0,0),(50,55,1,5),(50,333,0,0),(50,95,1,5),(50,673,0,0),(50,182,0,0),(50,171,0,0),(50,356,0,0),(50,202,0,0),(50,113,0,0),(50,111,0,0),(50,44,0,5),(50,162,1,5),(50,267,0,5),(50,185,0,0),(50,129,0,0),(51,759,0,0),(51,756,5,5),(51,45,1,5),(51,414,1,1),(51,413,0,0),(51,313,0,0),(51,140,0,0),(51,473,0,1),(51,137,300,300),(51,415,1,1),(51,139,0,0),(51,315,0,0),(51,46,0,5),(51,229,0,0),(51,769,0,5),(51,762,0,0),(51,136,0,5),(51,98,0,0),(51,51,5,5),(51,186,0,0),(51,43,0,5),(51,165,0,0),(51,197,0,0),(51,109,300,300),(51,393,0,0),(51,755,0,0),(51,226,0,5),(51,183,5,5),(51,173,1,5),(51,172,0,5),(51,164,0,0),(51,163,5,5),(51,142,0,1),(51,141,0,0),(51,138,0,0),(51,118,0,0),(51,115,0,0),(51,176,0,5),(51,55,0,5),(51,333,0,0),(51,95,1,5),(51,673,0,0),(51,182,0,0),(51,171,0,0),(51,356,0,0),(51,202,0,0),(51,113,0,0),(51,111,0,0),(51,50,0,5),(51,44,0,5),(51,162,1,5),(51,261,0,5),(51,185,0,0),(51,129,0,0),(52,759,0,0),(52,756,5,5),(52,45,0,5),(52,414,1,1),(52,313,0,0),(52,253,5,5),(52,140,0,0),(52,473,0,1),(52,137,300,300),(52,633,0,5),(52,415,1,1),(52,139,0,0),(52,315,0,0),(52,46,0,5),(52,769,0,5),(52,762,0,0),(52,54,0,5),(52,98,0,0),(52,186,0,0),(52,43,0,5),(52,165,0,0),(52,197,0,0),(52,109,300,300),(52,393,0,0),(52,755,0,0),(52,226,0,5),(52,183,5,5),(52,173,1,5),(52,164,0,0),(52,142,0,1),(52,141,0,0),(52,138,0,0),(52,118,0,0),(52,115,0,0),(52,39,0,5),(52,38,5,5),(52,176,1,5),(52,333,0,0),(52,95,1,5),(52,673,0,0),(52,182,0,0),(52,171,0,0),(52,356,0,0),(52,202,0,0),(52,113,0,0),(52,111,0,0),(52,162,1,5),(52,40,0,5),(52,185,0,0),(52,129,0,0),(53,759,0,0),(53,78,0,5),(53,756,5,5),(53,613,0,5),(53,313,0,0),(53,140,0,0),(53,137,300,300),(53,415,1,1),(53,139,0,0),(53,315,0,0),(53,769,0,5),(53,762,0,0),(53,54,1,5),(53,136,0,5),(53,98,0,0),(53,186,0,0),(53,165,0,0),(53,197,0,0),(53,109,300,300),(53,393,0,0),(53,755,0,0),(53,228,1,5),(53,183,5,5),(53,173,0,5),(53,164,0,0),(53,142,0,1),(53,141,0,0),(53,138,0,0),(53,115,0,0),(53,333,0,0),(53,95,1,5),(53,673,0,0),(53,182,0,0),(53,171,0,0),(53,356,0,0),(53,202,0,0),(53,113,0,0),(53,111,0,0),(53,56,5,5),(53,162,1,5),(53,185,0,0),(53,129,0,0),(54,759,0,0),(54,756,5,5),(54,313,0,0),(54,140,0,0),(54,137,300,300),(54,415,1,1),(54,139,0,0),(54,315,0,0),(54,8,5,5),(54,769,0,5),(54,762,0,0),(54,136,1,5),(54,98,0,0),(54,186,0,0),(54,43,0,5),(54,165,0,0),(54,197,0,0),(54,109,300,300),(54,393,0,0),(54,755,0,0),(54,228,1,5),(54,183,5,5),(54,173,0,5),(54,164,0,0),(54,142,0,1),(54,141,0,0),(54,138,0,0),(54,115,0,0),(54,6,5,5),(54,333,0,0),(54,95,1,5),(54,673,0,0),(54,182,0,0),(54,171,0,0),(54,356,0,0),(54,202,0,0),(54,113,0,0),(54,111,0,0),(54,162,1,5),(54,237,0,5),(54,185,0,0),(54,129,0,0),(55,759,0,0),(55,593,5,5),(55,756,5,5),(55,313,0,0),(55,140,0,0),(55,137,300,300),(55,415,1,1),(55,355,0,5),(55,354,5,5),(55,139,0,0),(55,315,0,0),(55,769,0,5),(55,762,0,0),(55,136,0,5),(55,98,0,0),(55,186,0,0),(55,43,0,5),(55,165,0,0),(55,197,0,0),(55,109,300,300),(55,393,0,0),(55,755,0,0),(55,228,1,5),(55,183,5,5),(55,173,1,5),(55,164,0,0),(55,142,0,1),(55,141,0,0),(55,138,0,0),(55,115,0,0),(55,333,0,0),(55,95,1,5),(55,673,0,0),(55,182,0,0),(55,171,0,0),(55,356,0,0),(55,202,0,0),(55,113,0,0),(55,111,0,0),(55,162,1,5),(55,185,0,0),(55,129,0,0),(56,759,0,0),(56,756,5,5),(56,414,1,1),(56,413,1,1),(56,313,0,0),(56,140,0,0),(56,137,300,300),(56,433,1,1),(56,594,5,5),(56,415,1,1),(56,139,0,0),(56,315,0,0),(56,293,0,0),(56,229,0,0),(56,769,0,5),(56,762,0,0),(56,54,0,5),(56,98,0,0),(56,186,0,0),(56,43,1,5),(56,165,0,0),(56,160,0,5),(56,197,0,0),(56,109,300,300),(56,393,0,0),(56,755,0,0),(56,184,0,5),(56,183,5,5),(56,172,0,5),(56,164,0,0),(56,142,0,1),(56,141,0,0),(56,138,0,0),(56,115,0,0),(56,55,1,5),(56,333,0,0),(56,95,1,5),(56,673,0,0),(56,182,0,0),(56,171,0,0),(56,356,0,0),(56,202,0,0),(56,113,0,0),(56,111,0,0),(56,44,0,5),(56,162,1,5),(56,267,0,5),(56,185,0,0),(56,129,0,0);
/*!40000 ALTER TABLE `playercreateinfo_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_spells`
--

DROP TABLE IF EXISTS `playercreateinfo_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_spells` (
  `indexid` int(4) NOT NULL DEFAULT '0',
  `spellid` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_spells`
--

LOCK TABLES `playercreateinfo_spells` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_spells` DISABLE KEYS */;
INSERT INTO `playercreateinfo_spells` VALUES (1,2382),(1,3365),(1,3050),(1,6233),(1,6246),(1,6247),(1,9125),(1,2479),(1,6477),(1,6478),(1,6603),(1,7266),(1,7267),(1,7355),(1,8386),(1,21651),(1,21652),(1,22027),(1,22810),(1,20599),(1,20600),(1,20597),(1,20598),(1,20864),(1,9116),(1,668),(1,9078),(1,204),(1,81),(1,522),(1,107),(1,5301),(1,201),(1,78),(1,2457),(1,196),(1,8737),(1,9077),(1,198),(1,203),(9,2382),(9,3365),(9,3050),(9,6233),(9,6246),(9,6247),(9,9125),(9,2479),(9,6477),(9,6478),(9,6603),(9,7266),(9,7267),(9,7355),(9,8386),(9,21651),(9,21652),(9,22027),(9,22810),(9,20599),(9,20600),(9,20597),(9,20598),(9,20864),(9,9116),(9,668),(9,9078),(9,635),(9,20154),(9,204),(9,81),(9,522),(9,107),(9,199),(9,8737),(9,9077),(9,198),(9,203),(18,1180),(18,2382),(18,3365),(18,3050),(18,6233),(18,6246),(18,6247),(18,9125),(18,2479),(18,6477),(18,6478),(18,6603),(18,7266),(18,7267),(18,7355),(18,8386),(18,21651),(18,21652),(18,22027),(18,22810),(18,20599),(18,20600),(18,20597),(18,20598),(18,20864),(18,668),(18,9078),(18,204),(18,81),(18,522),(18,16092),(18,2567),(18,2764),(18,1752),(18,21184),(18,2098),(18,9077),(18,203),(25,2382),(25,3365),(25,3050),(25,6233),(25,6246),(25,6247),(25,9125),(25,2479),(25,6477),(25,6478),(25,6603),(25,7266),(25,7267),(25,7355),(25,8386),(25,21651),(25,21652),(25,22027),(25,22810),(25,5009),(25,5019),(25,20599),(25,20600),(25,20597),(25,20598),(25,20864),(25,668),(25,9078),(25,204),(25,81),(25,522),(25,2050),(25,585),(25,198),(25,203),(34,2382),(34,3365),(34,3050),(34,6233),(34,6246),(34,6247),(34,9125),(34,2479),(34,6477),(34,6478),(34,6603),(34,7266),(34,7267),(34,7355),(34,8386),(34,21651),(34,21652),(34,22027),(34,22810),(34,5009),(34,5019),(34,20599),(34,20600),(34,20597),(34,20598),(34,20864),(34,133),(34,668),(34,9078),(34,204),(34,81),(34,522),(34,168),(34,227),(34,203),(38,1180),(38,2382),(38,3365),(38,3050),(38,6233),(38,6246),(38,6247),(38,9125),(38,2479),(38,6477),(38,6478),(38,6603),(38,7266),(38,7267),(38,7355),(38,8386),(38,21651),(38,21652),(38,22027),(38,22810),(38,5009),(38,5019),(38,20599),(38,20600),(38,20597),(38,20598),(38,20864),(38,686),(38,668),(38,687),(38,9078),(38,204),(38,81),(38,522),(38,203),(2,197),(2,2382),(2,3365),(2,3050),(2,6233),(2,6246),(2,6247),(2,9125),(2,2479),(2,6477),(2,6478),(2,6603),(2,7266),(2,7267),(2,7355),(2,8386),(2,21651),(2,21652),(2,22027),(2,22810),(2,669),(2,9116),(2,21563),(2,20572),(2,20573),(2,20574),(2,9078),(2,204),(2,81),(2,522),(2,107),(2,5301),(2,201),(2,78),(2,2457),(2,196),(2,8737),(2,9077),(2,203),(11,2382),(11,3365),(11,3050),(11,6233),(11,6246),(11,6247),(11,9125),(11,2479),(11,6477),(11,6478),(11,6603),(11,7266),(11,7267),(11,7355),(11,8386),(11,21651),(11,21652),(11,22027),(11,22810),(11,669),(11,20572),(11,20573),(11,20574),(11,20576),(11,9078),(11,204),(11,81),(11,522),(11,13358),(11,24949),(11,196),(11,2973),(11,9077),(11,264),(11,75),(11,203),(19,1180),(19,2382),(19,3365),(19,3050),(19,6233),(19,6246),(19,6247),(19,9125),(19,2479),(19,6477),(19,6478),(19,6603),(19,7266),(19,7267),(19,7355),(19,8386),(19,21651),(19,21652),(19,22027),(19,22810),(19,669),(19,21563),(19,20572),(19,20573),(19,20574),(19,9078),(19,204),(19,81),(19,522),(19,16092),(19,2567),(19,2764),(19,1752),(19,21184),(19,2098),(19,9077),(19,203),(30,2382),(30,3365),(30,3050),(30,6233),(30,6246),(30,6247),(30,9125),(30,2479),(30,6477),(30,6478),(30,6603),(30,7266),(30,7267),(30,7355),(30,8386),(30,21651),(30,21652),(30,22027),(30,22810),(30,669),(30,9116),(30,21563),(30,20572),(30,20573),(30,20574),(30,331),(30,403),(30,9078),(30,204),(30,81),(30,522),(30,107),(30,227),(30,9077),(30,198),(30,203),(39,1180),(39,2382),(39,3365),(39,3050),(39,6233),(39,6246),(39,6247),(39,9125),(39,2479),(39,6477),(39,6478),(39,6603),(39,7266),(39,7267),(39,7355),(39,8386),(39,2161),(39,21652),(39,22027),(39,22810),(39,5009),(39,5019),(39,669),(39,686),(39,20572),(39,20573),(39,20574),(39,20575),(39,687),(39,9078),(39,204),(39,81),(39,522),(39,203),(3,197),(3,2382),(3,3365),(3,3050),(3,6233),(3,6246),(3,6247),(3,9125),(3,2479),(3,6477),(3,6478),(3,6603),(3,7266),(3,7267),(3,7355),(3,8386),(3,21651),(3,21652),(3,22027),(3,22810),(3,9116),(3,668),(3,9078),(3,204),(3,81),(3,522),(3,107),(3,5301),(3,78),(3,2457),(3,196),(3,2481),(3,20596),(3,20595),(3,20594),(3,672),(3,8737),(3,9077),(3,198),(3,203),(10,2382),(10,3365),(10,3050),(10,6233),(10,6246),(10,6247),(10,9125),(10,2479),(10,6477),(10,6478),(10,6603),(10,7266),(10,7267),(10,7355),(10,8386),(10,21651),(10,21652),(10,22027),(10,22810),(10,9116),(10,668),(10,9078),(10,635),(10,20154),(10,204),(10,81),(10,522),(10,107),(10,2481),(10,20596),(10,20595),(10,20594),(10,672),(10,199),(10,8737),(10,9077),(10,198),(10,203),(12,2382),(12,3365),(12,3050),(12,6233),(12,6246),(12,6247),(12,9125),(12,2479),(12,6477),(12,6478),(12,6603),(12,7266),(12,7267),(12,7355),(12,8386),(12,21651),(12,21652),(12,22027),(12,22810),(12,668),(12,9078),(12,204),(12,81),(12,522),(12,13358),(12,24949),(12,196),(12,2973),(12,2481),(12,20596),(12,20595),(12,20594),(12,672),(12,9077),(12,75),(12,266),(12,203),(20,1180),(20,2382),(20,3365),(20,3050),(20,6233),(20,6246),(20,6247),(20,9125),(20,2479),(20,6477),(20,6478),(20,6603),(20,7266),(20,7267),(20,7355),(20,8386),(20,21651),(20,21652),(20,22027),(20,22810),(20,668),(20,9078),(20,204),(20,81),(20,522),(20,16092),(20,2567),(20,2764),(20,1752),(20,21184),(20,2481),(20,20596),(20,20595),(20,20594),(20,672),(20,2098),(20,9077),(20,203),(26,2382),(26,3365),(26,3050),(26,6233),(26,6246),(26,6247),(26,9125),(26,2479),(26,6477),(26,6478),(26,6603),(26,7266),(26,7267),(26,7355),(26,8386),(26,21651),(26,21652),(26,22027),(26,22810),(26,5009),(26,5019),(26,668),(26,9078),(26,204),(26,81),(26,522),(26,2050),(26,585),(26,2481),(26,20596),(26,20595),(26,20594),(26,672),(26,198),(26,203),(4,1180),(4,2382),(4,3365),(4,3050),(4,6233),(4,6246),(4,6247),(4,9125),(4,2479),(4,6477),(4,6478),(4,6603),(4,7266),(4,7267),(4,7355),(4,8386),(4,21651),(4,21652),(4,22027),(4,22810),(4,9116),(4,668),(4,9078),(4,204),(4,81),(4,522),(4,107),(4,5301),(4,201),(4,78),(4,2457),(4,671),(4,8737),(4,9077),(4,198),(4,20580),(4,20583),(4,20582),(4,20585),(4,21009),(4,203),(15,1180),(15,2382),(15,3365),(15,3050),(15,6233),(15,6246),(15,6247),(15,9125),(15,2479),(15,6477),(15,6478),(15,6603),(15,7266),(15,7267),(15,7355),(15,8386),(15,21651),(15,21652),(15,22027),(15,22810),(15,668),(15,9078),(15,204),(15,81),(15,522),(15,13358),(15,24949),(15,2973),(15,671),(15,9077),(15,264),(15,75),(15,20580),(15,20583),(15,20582),(15,20585),(15,21009),(15,203),(21,1180),(21,2382),(21,3365),(21,3050),(21,6233),(21,6246),(21,6247),(21,9125),(21,2479),(21,6477),(21,6478),(21,6603),(21,7266),(21,7267),(21,7355),(21,8386),(21,21651),(21,21652),(21,22027),(21,22810),(21,668),(21,9078),(21,204),(21,81),(21,522),(21,16092),(21,2567),(21,2764),(21,1752),(21,21184),(21,671),(21,2098),(21,9077),(21,20580),(21,20583),(21,20582),(21,20585),(21,21009),(21,203),(27,2382),(27,3365),(27,3050),(27,6233),(27,6246),(27,6247),(27,9125),(27,2479),(27,6477),(27,6478),(27,6603),(27,7266),(27,7267),(27,7355),(27,8386),(27,21651),(27,21652),(27,22027),(27,22810),(27,5009),(27,5019),(27,668),(27,9078),(27,204),(27,81),(27,522),(27,2050),(27,585),(27,671),(27,198),(27,20580),(27,20583),(27,20582),(27,20585),(27,21009),(27,203),(42,1180),(42,2382),(42,3365),(42,3050),(42,6233),(42,6246),(42,6247),(42,9125),(42,2479),(42,6477),(42,6478),(42,6603),(42,7266),(42,7267),(42,7355),(42,8386),(42,21651),(42,21652),(42,22027),(42,22810),(42,5176),(42,5185),(42,668),(42,9078),(42,204),(42,81),(42,522),(42,671),(42,227),(42,9077),(42,20580),(42,20583),(42,20582),(42,20585),(42,21009),(42,203),(5,1180),(5,2382),(5,3365),(5,3050),(5,6233),(5,6246),(5,6247),(5,9125),(5,2479),(5,6477),(5,6478),(5,6603),(5,7266),(5,7267),(5,7355),(5,8386),(5,21651),(5,21652),(5,22027),(5,22810),(5,5227),(5,7744),(5,20577),(5,20579),(5,669),(5,9116),(5,9078),(5,17737),(5,204),(5,81),(5,522),(5,107),(5,5301),(5,201),(5,202),(5,78),(5,2457),(5,8737),(5,9077),(5,203),(22,1180),(22,2382),(22,3365),(22,3050),(22,6233),(22,6246),(22,6247),(22,9125),(22,2479),(22,6477),(22,6478),(22,6603),(22,7266),(22,7267),(22,7355),(22,8386),(22,21651),(22,21652),(22,22027),(22,22810),(22,5227),(22,7744),(22,20577),(22,20579),(22,669),(22,9078),(22,17737),(22,204),(22,81),(22,522),(22,16092),(22,2567),(22,2764),(22,1752),(22,21184),(22,2098),(22,9077),(22,203),(28,2382),(28,3365),(28,3050),(28,6233),(28,6246),(28,6247),(28,9125),(28,2479),(28,6477),(28,6478),(28,6603),(28,7266),(28,7267),(28,7355),(28,8386),(28,21651),(28,21652),(28,22027),(28,22810),(28,5227),(28,7744),(28,20577),(28,20579),(28,5009),(28,5019),(28,669),(28,9078),(28,17737),(28,204),(28,81),(28,522),(28,2050),(28,585),(28,198),(28,203),(35,2382),(35,3365),(35,3050),(35,6233),(35,6246),(35,6247),(35,9125),(35,2479),(35,6477),(35,6478),(35,6603),(35,7266),(35,7267),(35,7355),(35,8386),(35,21651),(35,21652),(35,22027),(35,22810),(35,5227),(35,7744),(35,20577),(35,20579),(35,5009),(35,5019),(35,669),(35,133),(35,9078),(35,17737),(35,204),(35,81),(35,522),(35,168),(35,227),(35,203),(40,1180),(40,2382),(40,3365),(40,3050),(40,6233),(40,6246),(40,6247),(40,9125),(40,2479),(40,6477),(40,6478),(40,6603),(40,7266),(40,7267),(40,7355),(40,8386),(40,21651),(40,21652),(40,22027),(40,22810),(40,5227),(40,7744),(40,20577),(40,20579),(40,5009),(40,5019),(40,669),(40,686),(40,687),(40,9078),(40,17737),(40,204),(40,81),(40,522),(40,203),(6,2382),(6,3365),(6,3050),(6,6233),(6,6246),(6,6247),(6,9125),(6,2479),(6,6477),(6,6478),(6,6603),(6,7266),(6,7267),(6,7355),(6,8386),(6,21651),(6,21652),(6,22027),(6,22810),(6,669),(6,20549),(6,20550),(6,20551),(6,20552),(6,9116),(6,9078),(6,204),(6,81),(6,522),(6,107),(6,5301),(6,78),(6,2457),(6,196),(6,670),(6,199),(6,8737),(6,9077),(6,198),(6,203),(16,2382),(16,3365),(16,3050),(16,6233),(16,6246),(16,6247),(16,9125),(16,2479),(16,6477),(16,6478),(16,6603),(16,7266),(16,7267),(16,7355),(16,8386),(16,21651),(16,21652),(16,22027),(16,22810),(16,669),(16,20549),(16,20550),(16,20551),(16,20552),(16,9078),(16,204),(16,81),(16,522),(16,13358),(16,24949),(16,196),(16,2973),(16,670),(16,9077),(16,75),(16,266),(16,203),(31,2382),(31,3365),(31,3050),(31,6233),(31,6246),(31,6247),(31,9125),(31,2479),(31,6477),(31,6478),(31,6603),(31,7266),(31,7267),(31,7355),(31,8386),(31,21651),(31,21652),(31,22027),(31,22810),(31,669),(31,20549),(31,20550),(31,20551),(31,20552),(31,9116),(31,331),(31,403),(31,9078),(31,204),(31,81),(31,522),(31,107),(31,670),(31,227),(31,9077),(31,198),(31,203),(43,2382),(43,3365),(43,3050),(43,6233),(43,6246),(43,6247),(43,9125),(43,2479),(43,6477),(43,6478),(43,6603),(43,7266),(43,7267),(43,7355),(43,8386),(43,21651),(43,21652),(43,22027),(43,22810),(43,5176),(43,669),(43,20549),(43,20550),(43,20551),(43,20552),(43,5185),(43,9078),(43,204),(43,81),(43,522),(43,670),(43,227),(43,9077),(43,198),(43,203),(7,1180),(7,2382),(7,3365),(7,3050),(7,6233),(7,6246),(7,6247),(7,9125),(7,2479),(7,6477),(7,6478),(7,6603),(7,7266),(7,7267),(7,7355),(7,8386),(7,21651),(7,21652),(7,22027),(7,22810),(7,9116),(7,668),(7,9078),(7,204),(7,81),(7,522),(7,107),(7,5301),(7,201),(7,20589),(7,20591),(7,20593),(7,20592),(7,78),(7,2457),(7,7340),(7,8737),(7,9077),(7,198),(7,203),(23,1180),(23,2382),(23,3365),(23,3050),(23,6233),(23,6246),(23,6247),(23,9125),(23,2479),(23,6477),(23,6478),(23,6603),(23,7266),(23,7267),(23,7355),(23,8386),(23,21651),(23,21652),(23,22027),(23,22810),(23,668),(23,9078),(23,204),(23,81),(23,522),(23,16092),(23,20589),(23,20591),(23,20593),(23,20592),(23,2567),(23,2764),(23,1752),(23,21184),(23,2098),(23,7340),(23,9077),(23,203),(36,2382),(36,3365),(36,3050),(36,6233),(36,6246),(36,6247),(36,9125),(36,2479),(36,6477),(36,6478),(36,6603),(36,7266),(36,7267),(36,7355),(36,8386),(36,21651),(36,21652),(36,22027),(36,22810),(36,5009),(36,5019),(36,133),(36,668),(36,9078),(36,204),(36,81),(36,522),(36,20589),(36,20591),(36,20593),(36,20592),(36,168),(36,227),(36,7340),(36,203),(41,1180),(41,2382),(41,3365),(41,3050),(41,6233),(41,6246),(41,6247),(41,9125),(41,2479),(41,6477),(41,6478),(41,6603),(41,7266),(41,7267),(41,7355),(41,8386),(41,21651),(41,21652),(41,22027),(41,22810),(41,5009),(41,5019),(41,686),(41,668),(41,687),(41,9078),(41,204),(41,81),(41,522),(41,20589),(41,20591),(41,20593),(41,20592),(41,7340),(41,203),(8,1180),(8,2382),(8,3365),(8,3050),(8,6233),(8,6246),(8,6247),(8,9125),(8,2479),(8,6477),(8,6478),(8,6603),(8,7266),(8,7267),(8,7355),(8,8386),(8,21651),(8,21652),(8,22027),(8,22810),(8,669),(8,9116),(8,7341),(8,9078),(8,204),(8,81),(8,522),(8,107),(8,5301),(8,23301),(8,20555),(8,20557),(8,20558),(8,26290),(8,26296),(8,2567),(8,2764),(8,78),(8,2457),(8,196),(8,8737),(8,9077),(8,203),(17,2382),(17,3365),(17,3050),(17,6233),(17,6246),(17,6247),(17,9125),(17,2479),(17,6477),(17,6478),(17,6603),(17,7266),(17,7267),(17,7355),(17,8386),(17,21651),(17,21652),(17,22027),(17,22810),(17,669),(17,7341),(17,9078),(17,204),(17,81),(17,522),(17,13358),(17,24949),(17,23301),(17,20554),(17,20555),(17,20557),(17,20558),(17,26290),(17,196),(17,2973),(17,9077),(17,264),(17,75),(17,203),(24,1180),(24,2382),(24,3365),(24,3050),(24,6233),(24,6246),(24,6247),(24,9125),(24,2479),(24,6477),(24,6478),(24,6603),(24,7266),(24,7267),(24,7355),(24,8386),(24,21651),(24,21652),(24,22027),(24,22810),(24,669),(24,7341),(24,9078),(24,204),(24,81),(24,522),(24,16092),(24,23301),(24,20555),(24,20557),(24,20558),(24,26290),(24,26297),(24,2567),(24,2764),(24,1752),(24,21184),(24,2098),(24,9077),(24,203),(29,2382),(29,3365),(29,3050),(29,6233),(29,6246),(29,6247),(29,9125),(29,2479),(29,6477),(29,6478),(29,6603),(29,7266),(29,7267),(29,7355),(29,8386),(29,21651),(29,21652),(29,22027),(29,22810),(29,5009),(29,5019),(29,669),(29,7341),(29,9078),(29,204),(29,81),(29,522),(29,23301),(29,20554),(29,20555),(29,20557),(29,20558),(29,26290),(29,2050),(29,585),(29,198),(29,203),(32,2382),(32,3365),(32,3050),(32,6233),(32,6246),(32,6247),(32,9125),(32,2479),(32,6477),(32,6478),(32,6603),(32,7266),(32,7267),(32,7355),(32,8386),(32,21651),(32,21652),(32,22027),(32,22810),(32,669),(32,9116),(32,7341),(32,331),(32,403),(32,9078),(32,204),(32,81),(32,522),(32,107),(32,23301),(32,20554),(32,20555),(32,20557),(32,20558),(32,26290),(32,227),(32,9077),(32,198),(32,203),(37,2382),(37,3365),(37,3050),(37,6233),(37,6246),(37,6247),(37,9125),(37,2479),(37,6477),(37,6478),(37,6603),(37,7266),(37,7267),(37,7355),(37,8386),(37,21651),(37,21652),(37,22027),(37,22810),(37,5009),(37,5019),(37,669),(37,133),(37,7341),(37,9078),(37,204),(37,81),(37,522),(37,23301),(37,20554),(37,20555),(37,20557),(37,20558),(37,26290),(37,168),(37,227),(37,203),(42,27764),(43,27764),(30,27763),(31,27763),(32,27763),(9,27762),(10,27762),(44,29932),(44,78),(44,2457),(44,9077),(44,8737),(44,9116),(44,9078),(44,198),(44,668),(44,20579),(44,28875),(44,28880),(44,201),(44,6247),(44,6246),(44,6233),(44,2382),(44,8386),(44,3050),(44,3365),(44,7355),(44,7267),(44,7266),(44,2479),(44,6603),(44,6478),(44,6477),(44,9125),(44,21652),(44,21651),(44,22810),(44,22027),(44,202),(44,522),(44,81),(44,204),(44,32215),(44,5301),(44,107),(44,203),(45,29932),(45,9077),(45,8737),(45,9116),(45,635),(45,20154),(45,9078),(45,198),(45,668),(45,20579),(45,28875),(45,28880),(45,199),(45,6247),(45,6246),(45,6233),(45,2382),(45,8386),(45,3050),(45,3365),(45,7355),(45,7267),(45,7266),(45,2479),(45,6603),(45,6478),(45,6477),(45,27762),(45,9125),(45,21652),(45,21651),(45,22810),(45,22027),(45,522),(45,81),(45,204),(45,107),(45,203),(46,29932),(46,9077),(46,9078),(46,668),(46,20579),(46,28875),(46,28880),(46,2973),(46,201),(46,5011),(46,6247),(46,6246),(46,6233),(46,2382),(46,8386),(46,3050),(46,3365),(46,7355),(46,7267),(46,7266),(46,34082),(46,2479),(46,6603),(46,6478),(46,6477),(46,9125),(46,21652),(46,21651),(46,22810),(46,22027),(46,75),(46,522),(46,81),(46,204),(46,13358),(46,24949),(46,203),(47,29932),(47,9078),(47,198),(47,668),(47,20579),(47,28878),(47,28875),(47,28880),(47,5019),(47,5009),(47,6247),(47,6246),(47,6233),(47,2382),(47,8386),(47,3050),(47,3365),(47,7355),(47,7267),(47,7266),(47,2479),(47,6603),(47,6478),(47,6477),(47,9125),(47,21652),(47,21651),(47,22810),(47,22027),(47,522),(47,81),(47,204),(47,585),(47,2050),(47,203),(48,29932),(48,9077),(48,9116),(48,9078),(48,403),(48,331),(48,198),(48,227),(48,668),(48,20579),(48,28878),(48,28875),(48,28880),(48,6247),(48,6246),(48,6233),(48,27763),(48,2382),(48,8386),(48,3050),(48,3365),(48,7355),(48,7267),(48,7266),(48,2479),(48,6603),(48,6478),(48,6477),(48,9125),(48,21652),(48,21651),(48,22810),(48,22027),(48,522),(48,81),(48,204),(48,107),(48,203),(49,29932),(49,9078),(49,133),(49,227),(49,668),(49,20579),(49,28878),(49,28875),(49,28880),(49,5019),(49,5009),(49,6247),(49,6246),(49,6233),(49,2382),(49,8386),(49,3050),(49,3365),(49,7355),(49,7267),(49,7266),(49,2479),(49,6603),(49,6478),(49,6477),(49,9125),(49,21652),(49,21651),(49,22810),(49,22027),(49,168),(49,522),(49,81),(49,204),(49,203),(50,28877),(50,822),(50,28734),(50,28730),(50,9077),(50,8737),(50,813),(50,9116),(50,635),(50,20154),(50,9078),(50,201),(50,669),(50,6247),(50,6246),(50,6233),(50,2382),(50,8386),(50,3050),(50,3365),(50,7355),(50,7267),(50,7266),(50,2479),(50,6603),(50,6478),(50,6477),(50,27762),(50,9125),(50,21652),(50,21651),(50,22810),(50,22027),(50,202),(50,522),(50,81),(50,204),(50,107),(50,203),(51,28877),(51,822),(51,28734),(51,28730),(51,264),(51,9077),(51,813),(51,9078),(51,2973),(51,669),(51,6247),(51,6246),(51,6233),(51,2382),(51,8386),(51,3050),(51,3365),(51,7355),(51,7267),(51,7266),(51,34082),(51,2479),(51,6603),(51,6478),(51,6477),(51,9125),(51,21652),(51,21651),(51,22810),(51,22027),(51,1180),(51,75),(51,522),(51,81),(51,204),(51,13358),(51,24949),(51,203),(52,25046),(52,28877),(52,822),(52,28734),(52,9077),(52,2098),(52,813),(52,9078),(52,669),(52,6247),(52,6246),(52,6233),(52,2382),(52,8386),(52,3050),(52,3365),(52,7355),(52,7267),(52,7266),(52,2479),(52,6603),(52,6478),(52,6477),(52,9125),(52,21652),(52,21651),(52,22810),(52,22027),(52,1180),(52,1752),(52,21184),(52,2567),(52,2764),(52,522),(52,81),(52,204),(52,16092),(52,203),(53,28877),(53,822),(53,28734),(53,28730),(53,813),(53,9078),(53,198),(53,669),(53,5019),(53,5009),(53,6247),(53,6246),(53,6233),(53,2382),(53,8386),(53,3050),(53,3365),(53,7355),(53,7267),(53,7266),(53,2479),(53,6603),(53,6478),(53,6477),(53,9125),(53,21652),(53,21651),(53,22810),(53,22027),(53,522),(53,81),(53,204),(53,585),(53,2050),(53,203),(54,28877),(54,822),(54,28734),(54,28730),(54,813),(54,9078),(54,133),(54,227),(54,669),(54,5019),(54,5009),(54,6247),(54,6246),(54,6233),(54,2382),(54,8386),(54,3050),(54,3365),(54,7355),(54,7267),(54,7266),(54,2479),(54,6603),(54,6478),(54,6477),(54,9125),(54,21652),(54,21651),(54,22810),(54,22027),(54,168),(54,522),(54,81),(54,204),(54,203),(55,686),(55,28877),(55,822),(55,28734),(55,28730),(55,813),(55,9078),(55,687),(55,669),(55,5019),(55,5009),(55,6247),(55,6246),(55,6233),(55,2382),(55,8386),(55,3050),(55,3365),(55,7355),(55,7267),(55,7266),(55,2479),(55,6603),(55,6478),(55,6477),(55,9125),(55,21652),(55,21651),(55,22810),(55,22027),(55,1180),(55,522),(55,81),(55,204),(55,203),(56,28877),(56,822),(56,28734),(56,28730),(56,9077),(56,8737),(56,813),(56,9116),(56,9078),(56,201),(56,669),(56,6247),(56,6246),(56,6233),(56,2382),(56,8386),(56,3050),(56,3365),(56,7355),(56,7267),(56,7266),(56,2479),(56,6603),(56,6478),(56,6477),(56,27762),(56,9125),(56,21652),(56,21651),(56,22810),(56,22027),(56,202),(56,522),(56,81),(56,204),(56,107),(56,203);
/*!40000 ALTER TABLE `playercreateinfo_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playeritems`
--

DROP TABLE IF EXISTS `playeritems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playeritems` (
  `ownerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `creator` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `charges` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `randomprop` int(10) unsigned NOT NULL DEFAULT '0',
  `itemtext` int(10) unsigned NOT NULL DEFAULT '0',
  `durability` int(10) unsigned NOT NULL DEFAULT '0',
  `containerslot` int(11) DEFAULT '-1',
  `slot` int(10) NOT NULL DEFAULT '0',
  `enchantments` longtext NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `guid` (`guid`),
  KEY `ownerguid` (`ownerguid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playeritems`
--

LOCK TABLES `playeritems` WRITE;
/*!40000 ALTER TABLE `playeritems` DISABLE KEYS */;
/*!40000 ALTER TABLE `playeritems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerpets`
--

DROP TABLE IF EXISTS `playerpets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playerpets` (
  `ownerguid` bigint(20) NOT NULL DEFAULT '0',
  `petnumber` int(11) NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT '',
  `entryid` bigint(20) NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  `xp` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `actionbar` varchar(200) NOT NULL DEFAULT '',
  `nextloyaltyupdate` int(11) NOT NULL DEFAULT '0',
  `summon` int(11) NOT NULL DEFAULT '0',
  `autocastspell` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerpets`
--

LOCK TABLES `playerpets` WRITE;
/*!40000 ALTER TABLE `playerpets` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerpets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerpetspells`
--

DROP TABLE IF EXISTS `playerpetspells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playerpetspells` (
  `ownerguid` bigint(20) NOT NULL DEFAULT '0',
  `petnumber` int(4) NOT NULL DEFAULT '0',
  `spellid` int(4) NOT NULL DEFAULT '0',
  `flags` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerpetspells`
--

LOCK TABLES `playerpetspells` WRITE;
/*!40000 ALTER TABLE `playerpetspells` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerpetspells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playersummonspells`
--

DROP TABLE IF EXISTS `playersummonspells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playersummonspells` (
  `ownerguid` bigint(20) NOT NULL DEFAULT '0',
  `entryid` int(4) NOT NULL DEFAULT '0',
  `spellid` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playersummonspells`
--

LOCK TABLES `playersummonspells` WRITE;
/*!40000 ALTER TABLE `playersummonspells` DISABLE KEYS */;
/*!40000 ALTER TABLE `playersummonspells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pvpareas`
--

DROP TABLE IF EXISTS `pvpareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvpareas` (
  `AreaID` int(5) NOT NULL DEFAULT '0',
  `AreaName` varchar(255) NOT NULL DEFAULT '',
  `PvPType` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AreaID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pvpareas`
--

LOCK TABLES `pvpareas` WRITE;
/*!40000 ALTER TABLE `pvpareas` DISABLE KEYS */;
INSERT INTO `pvpareas` VALUES (1,'Dun Morogh',1),(2,'Longshore',1),(3,'Badlands',3),(4,'Blasted Lands',3),(7,'Blackwater Cove',3),(8,'Swamp of Sorrows',3),(9,'Northshire Valley',1),(10,'Duskwood',3),(11,'Wetlands',3),(12,'Elwynn Forest',1),(13,'The World Tree',3),(14,'Durotar',2),(15,'Dustwallow Marsh',3),(16,'Azshara',3),(17,'The Barrens',2),(18,'Crystal Lake',1),(19,'Zul\'Gurub',3),(20,'Moonbrook',1),(21,'Kul Tiras',0),(22,'Programmer Isle',0),(23,'Northshire River',1),(24,'Northshire Abbey',1),(25,'Blackrock Mountain',3),(26,'Lighthouse',1),(28,'Western Plaguelands',3),(30,'Nine',3),(32,'The Cemetary',3),(33,'Stranglethorn Vale',3),(34,'Echo Ridge Mine',1),(35,'Booty Bay',0),(36,'Alterac Mountains',3),(37,'Lake Nazferiti',3),(38,'Loch Modan',1),(40,'Westfall',1),(41,'Deadwind Pass',3),(42,'Darkshire',1),(43,'Wild Shore',3),(44,'Redridge Mountains',3),(45,'Arathi Highlands',3),(46,'Burning Steppes',3),(47,'The Hinterlands',3),(49,'Dead Man\'s Hole',0),(51,'Searing Gorge',3),(53,'Thieves Camp',1),(54,'Jasperlode Mine',1),(55,'Valley of Heroes',1),(56,'Heroes\'Vigil',1),(57,'Fargodeep Mine',1),(59,'Northshire Vineyards',1),(60,'Forest\'s Edge',1),(61,'Thunder Falls',1),(62,'Brackwell Pumpkin Patch',1),(63,'The Stonefield Farm',1),(64,'The Maclure Vineyards',1),(65,'***On Map Dungeon***',0),(66,'***On Map Dungeon***',0),(67,'***On Map Dungeon***',0),(68,'Lake Everstill',3),(69,'Lakeshire',3),(70,'Stonewatch',3),(71,'Stonewatch Falls',3),(72,'The Dark Portal',3),(73,'The Tainted Scar',3),(74,'Pool of Tears',3),(75,'Stonard',3),(76,'Fallow Sanctuary',3),(77,'Anvilmar',1),(80,'Stormwind Mountains',1),(81,'Jeff NE Quadrant Changed',0),(82,'Jeff NW Quadrant',0),(83,'Jeff SE Quadrant',0),(84,'Jeff SW Quadrant',0),(85,'Tirisfal Glades',2),(86,'Stone Cairn Lake',1),(87,'Goldshire',1),(88,'Eastvale Logging Camp',1),(89,'Mirror Lake Orchard',1),(91,'Tower of Azora',1),(92,'Mirror Lake',1),(93,'Vul\'Gol Ogre Mound',3),(94,'Raven Hill',3),(95,'Redridge Canyons',3),(96,'Tower of Ilgalar',3),(97,'Alther\'s Mill',3),(98,'Rethban Caverns',3),(99,'Rebel Camp',3),(100,'Nesingwary\'s Expedition',3),(101,'Kurzen\'s Compound',3),(102,'Ruins of Zul\'Kunda',3),(103,'Ruins of Zul\'Mamwe',3),(104,'The Vile Reef',3),(105,'Mosh\'Ogg Ogre Mound',3),(106,'The Stockpile',3),(107,'Saldean\'s Farm',1),(108,'Sentinel Hill',1),(109,'Furlbrow\'s Pumpkin Farm',1),(111,'Jangolode Mine',1),(113,'Gold Coast Quarry',1),(115,'Westfall Lighthouse',1),(116,'Misty Valley',3),(117,'Grom\'gol Base Camp',3),(118,'Whelgar\'s Excavation Site',3),(120,'Westbrook Garrison',1),(121,'Tranquil Gardens Cemetery',3),(122,'Zuuldaia Ruins',3),(123,'Bal\'lal Ruins',3),(125,'Kal\'ai Ruins',3),(126,'Tkashi Ruins',3),(127,'Balia\'mah Ruins',3),(128,'Ziata\'jai Ruins',3),(129,'Mizjah Ruins',3),(130,'Silverpine Forest',2),(131,'Kharanos',1),(132,'Coldridge Valley',1),(133,'Gnomeregan',1),(134,'Gol\'Bolar Quarry',1),(135,'Frostmane Hold',1),(136,'The Grizzled Den',1),(137,'Brewnall Village',1),(138,'Misty Pine Refuge',1),(139,'Eastern Plaguelands',3),(141,'Teldrassil',1),(142,'Ironband\'s Excavation Site',1),(143,'Mo\'grosh Stronghold',1),(144,'Thelsamar',1),(145,'Algaz Gate',1),(146,'Stonewrought Dam',1),(147,'The Farstrider Lodge',1),(148,'Darkshore',1),(149,'Silver Stream Mine',1),(150,'Menethil Harbor',1),(151,'Designer Island',0),(152,'The Bulwark',2),(153,'Ruins of Lordaeron',2),(154,'Deathknell',2),(155,'Night Web\'s Hollow',2),(156,'Solliden Farmstead',2),(157,'Agamand Mills',2),(158,'Agamand Family Crypt',2),(159,'Brill',2),(160,'Whispering Gardens',2),(161,'Terrace of Repose',2),(162,'Brightwater Lake',2),(163,'Gunther\'s Retreat',2),(164,'Garren\'s Haunt',2),(165,'Balnir Farmstead',2),(166,'Cold Hearth Manor',2),(167,'Crusader Outpost',2),(168,'The North Coast',2),(169,'Whispering Shore',2),(170,'Lordamere Lake',2),(172,'Fenris Isle',2),(173,'Faol\'s Rest',2),(186,'Dolanaar',1),(187,'Darnassus',1),(188,'Shadowglen',1),(189,'Steelgrill\'s Depot',1),(190,'Hearthglen',3),(192,'Northridge Lumber Camp',3),(193,'Ruins of Andorhal',3),(195,'School of Necromancy',3),(196,'Uther\'s Tomb',3),(197,'Sorrow Hill',3),(198,'The Weeping Cave',3),(199,'Felstone Field',3),(200,'Dalson\'s Tears',3),(201,'Gahrron\'s Withering',3),(202,'The Writhing Haunt',3),(203,'Mardenholde Keep',3),(204,'Pyrewood Village',2),(205,'Dun Modr',3),(206,'Westfall',1),(207,'The Great Sea',3),(208,' Ironcladcove',0),(209,'Shadowfang Keep',2),(210,'***On Map Dungeon***',0),(211,'Iceflow Lake',1),(212,'Helm\'s Bed Lake',1),(213,'Deep Elem Mine',2),(214,'The Great Sea',3),(215,'Mulgore',2),(219,'Alexston Farmstead',1),(220,'Red Cloud Mesa',2),(221,'Camp Narache',2),(222,'Bloodhoof Village',2),(223,'Stonebull Lake',2),(224,'Ravaged Caravan',2),(225,'Red Rocks',2),(226,'The Skittering Dark',2),(227,'Valgan\'s Field',2),(228,'The Sepulcher',2),(229,'Olsen\'s Farthing',2),(230,'The Greymane Wall',2),(231,'Beren\'s Peril',2),(232,'The Dawning Isles',2),(233,'Ambermill',2),(235,'Fenris Keep',2),(236,'Shadowfang Keep',2),(237,'The Decrepit Ferry',2),(238,'Malden\'s Orchard',2),(239,'The Ivar Patch',2),(240,'The Dead Field',2),(241,'The Rotting Orchard',3),(242,'Brightwood Grove',3),(243,'Forlorn Rowe',3),(244,'The Whipple Estate',3),(245,'The Yorgen Farmstead',3),(246,'The Cauldron',3),(247,'Grimesilt Dig Site',3),(249,'Dreadmaul Rock',3),(250,'Ruins of Thaurissan',3),(251,'Flame Crest',3),(252,'Blackrock Stronghold',3),(253,'The Pillar of Ash',3),(254,'Blackrock Mountain',3),(255,'Altar of Storms',3),(256,'Aldrassil',1),(257,'Shadowthread Cave',1),(258,'Fel Rock',1),(259,'Lake Al\'Ameth',1),(260,'Starbreeze Village',1),(261,'Gnarlpine Hold',1),(262,'Ban\'ethil Barrow Den',1),(263,'The Cleft',1),(264,'The Oracle Glade',1),(265,'Wellspring River',1),(266,'Wellspring Lake',1),(267,'Hillsbrad Foothills',3),(268,'Azshara Crater',3),(269,'Dun Algaz',1),(271,'Southshore',3),(272,'Tarren Mill',3),(275,'Durnholde Keep',3),(276,' Stonewrought Pass',3),(277,'The Foothill Caverns',3),(278,'Lordamere Internment Camp',3),(279,'Dalaran',3),(280,'Strahnbrad',3),(281,'Ruins of Alterac',3),(282,'Crushridge Hold',3),(283,'Slaughter Hollow',3),(284,'The Uplands',3),(285,'Southpoint Tower',3),(286,'Hillsbrad Fields',3),(287,'Hillsbrad',3),(288,'Azurelode Mine',3),(289,'Nethander Stead',3),(290,'Dun Garok',3),(293,'Thoradin\'s Wall',3),(294,'Eastern Strand',3),(295,'Western Strand',3),(296,'South Seas',3),(297,'Jaguero Isle',3),(298,'Baradin Bay',3),(299,'Menethil Bay',3),(300,'Misty Reed Strand',3),(301,'The Savage Coast',3),(302,'The Crystal Shore',3),(303,'Shell Beach',3),(305,'North Tide\'s Run',2),(306,'South Tide\'s Run',2),(307,'The Overlook Cliffs',3),(308,'The Forbidding Sea',3),(309,'Ironbeard\'s Tomb',3),(310,'Crystalvein Mine',3),(311,'Ruins of Aboraz',3),(312,'Janeiro\'s Point',3),(313,'Northfold Manor',3),(314,'Go\'Shek Farm',3),(315,'Dabyrie\'s Farmstead',3),(316,'Boulderfist Hall',3),(317,'Witherbark Village',3),(318,'Drywhisker Gorge',3),(320,'Refuge Pointe',3),(321,'Hammerfall',3),(322,'Blackwater Shipwrecks',3),(323,'O\'Breen\'s Camp',3),(324,'Stromgarde Keep',3),(325,'The Tower of Arathor',3),(326,'The Sanctum',3),(327,'Faldir\'s Cove',3),(328,'The Drowned Reef',3),(330,'Thandol Span',3),(331,'Ashenvale',3),(332,'The Great Sea',3),(333,'Circle of East Binding',3),(334,'Circle of West Binding',3),(335,'Circle of Inner Binding',3),(336,'Circle of Outer Binding',3),(337,'Apocryphan\'s Rest',3),(338,'Angor Fortress',3),(339,'Lethlor Ravine',3),(340,'Kargath',3),(341,'Camp Kosh',3),(342,'Camp Boff',3),(343,'Camp Wurg',3),(344,'Camp Cagg',3),(345,'Agmond\'s End',3),(346,'Hammertoe\'s Digsite',3),(347,'Dustbelch Grotto',3),(348,'Aerie Peak',3),(349,'Wildhammer Keep',3),(350,'Quel\'Danil Lodge',3),(351,'Skulk Rock',3),(352,'Zun\'watha',3),(353,'Shadra\'Alor',3),(354,'Jintha\'Alor',3),(355,'The Altar of Zul',3),(356,'Seradane',3),(357,'Feralas',3),(358,'Brambleblade Ravine',2),(359,'Bael Modan',2),(360,'The Venture Co. Mine',2),(361,'Felwood',3),(362,'Razor Hill',2),(363,'Valley of Trials',2),(364,'The Den',2),(365,'Burning Blade Coven',2),(366,'Kolkar Crag',2),(367,'Sen\'jin Village',2),(368,'Echo Isles',2),(369,'Thunder Ridge',2),(370,'Drygulch Ravine',2),(371,'Dustwind Cave',2),(372,'Tiragarde Keep',2),(373,'Scuttle Coast',2),(374,'Bladefist Bay',2),(375,'Deadeye Shore',2),(377,'Southfury River',2),(378,'Camp Taurajo',2),(379,'Far Watch Post',2),(380,'The Crossroads',2),(381,'Boulder Lode Mine',2),(382,'The Sludge Fen',2),(383,'The Dry Hills',2),(384,'Dreadmist Peak',2),(385,'Northwatch Hold',2),(386,'The Forgotten Pools',2),(387,'Lushwater Oasis',2),(388,'The Stagnant Oasis',2),(390,'Field of Giants',2),(391,'The Merchant Coast',2),(392,'Ratchet',2),(393,'Darkspear Strand',2),(394,'Darrowmere Lake',3),(395,'Caer Darrow',3),(396,'Winterhoof Water Well',2),(397,'Thunderhorn Water Well',2),(398,'Wildmane Water Well',2),(399,'Skyline Ridge',2),(400,'Thousand Needles',3),(401,'The Tidus Stair',2),(403,'Shady Rest Inn',3),(404,'Bael\'dun Digsite',2),(405,'Desolace',3),(406,'Stonetalon Mountains',3),(407,'Orgrimmar',1),(408,'Gillijim\'s Isle',0),(409,'Island of Doctor Lapidis',0),(410,'Razorwind Canyon',2),(411,'Bathran\'s Haunt',3),(412,'The Ruins of Ordil\'Aran',3),(413,'Maestra\'s Post',3),(414,'The Zram Strand',3),(415,'Astranaar',3),(416,'The Shrine of Aessina',3),(417,'Fire Scar Shrine',3),(418,'The Ruins of Stardust',3),(419,'The Howling Vale',3),(420,'Silverwind Refuge',3),(421,'Mystral Lake',3),(422,'Fallen Sky Lake',3),(424,'Iris Lake',3),(425,'Moonwell',3),(426,'Raynewood Retreat',3),(427,'The Shady Nook',3),(428,'Night Run',3),(429,'Xavian',3),(430,'Satyrnaar',3),(431,'Splintertree Post',3),(432,'The Dor\'Danil Barrow Den',3),(433,'Falfarren River',3),(434,'Felfire Hill',3),(435,'Demon Fall Canyon',3),(436,'Demon Fall Ridge',3),(437,'Warsong Lumber Camp',3),(438,'Bough Shadow',3),(439,'The Shimmering Flats',3),(440,'Tanaris',3),(441,'Lake Falathim',3),(442,'Auberdine',1),(443,'Ruins of Mathystra',1),(444,'Tower of Althalaxx',1),(445,'Cliffspring Falls',1),(446,'Bashal\'Aran',1),(447,'Ameth\'Aran',1),(448,'Grove of the Ancients',1),(449,'The Master\'s Glaive',1),(450,'Remtravel\'s Excavation',1),(452,'Mist\'s Edge',1),(453,'The Long Wash',1),(454,'Wildbend River',1),(455,'Blackwood Den',1),(456,'Cliffspring River',1),(457,'The Veiled Sea',3),(458,'Gold Road',2),(459,'Scarlet Watch Post',2),(460,'Sun Rock Retreat',3),(461,'Windshear Crag',3),(463,'Cragpool Lake',3),(464,'Mirkfallon Lake',3),(465,'The Charred Vale',3),(466,'Valley of the Bloodfuries',3),(467,'Stonetalon Peak',3),(468,'The Talon Den',3),(469,'Greatwood Vale',3),(470,'Thunder Bluff',2),(471,'Brave Wind Mesa',2),(472,'Fire Stone Mesa',2),(473,'Mantle Rock',2),(474,'Hunter Rise',2),(475,'Spirit Rise',2),(476,'Elder Rise',2),(477,'Ruins of Jubuwal',3),(478,'Pools of Arlithrien',1),(479,'The Rustmaul Dig Site',3),(480,'Camp E\'thok',3),(481,'Splithoof Crag',3),(482,'Highperch',3),(483,'The Screeching Canyon',3),(484,'Freewind Post',3),(485,'The Great Lift',3),(486,'Galak Hold',3),(487,'Roguefeather Den',3),(488,'The Weathered Nook',3),(489,'Thalanaar',3),(490,'Un\'Goro Crater',3),(491,'Razorfen Kraul',3),(492,'Raven Hill Cemetery',3),(493,'Moonglade',3),(495,'DELETE ME',0),(496,'Brackenwall Village',3),(497,'Swamplight Manor',3),(498,'Bloodfen Burrow',3),(499,'Darkmist Cavern',3),(500,'Moggle Point',3),(501,'Beezil\'s Wreck',3),(502,'Witch Hill',3),(503,'Sentry Point',3),(504,'North Point Tower',3),(505,'West Point Tower',3),(506,'Lost Point',3),(507,'Bluefen',3),(508,'Stonemaul Ruins',3),(509,'The Den of Flame',3),(510,'The Dragonmurk',3),(511,'Wyrmbog',3),(512,'Onyxia\'s Lair',3),(513,'Theramore Isle',3),(514,'Foothold Citadel',3),(515,'Ironclad Prison',3),(516,'Dustwallow Bay',3),(517,'Tidefury Cove',3),(518,'Dreadmurk Shore',3),(536,'Addle\'s Stead',3),(537,'Fire Plume Ridge',3),(538,'Lakkari Tar Pits',3),(539,'Terror Run',3),(540,'The Slithering Scar',3),(541,'Marshal\'s Refuge',3),(542,'Fungal Rock',3),(543,'Golakka Hot Springs',3),(556,'The Loch',1),(576,'Beggar\'s Haunt',3),(596,'Kodo Graveyard',3),(597,'Ghost Walker Post',3),(598,'Sar\'theris Strand',3),(599,'Thunder Axe Fortress',3),(600,'Bolgan\'s Hole',3),(602,'Mannoroc Coven',3),(603,'Sargeron',3),(604,'Magram Village',3),(606,'Gelkis Village',3),(607,'Valley of Spears',3),(608,'Nijel\'s Point',3),(609,'Kolkar Village',3),(616,'Hyjal',3),(618,'Winterspring',3),(636,'Blackwolf River',3),(637,'Kodo Rock',2),(638,'Hidden Path',2),(639,'Spirit Rock',2),(640,'Shrine of the Dormant Flame',2),(656,'Lake Elune\'ara',3),(657,'The Harborage',3),(676,'Outland',3),(696,'Craftsmen\'s Terrace',1),(697,'Tradesmen\'s Terrace',1),(698,'The Temple Gardens',1),(699,'Temple of Elune',1),(700,'Cenarion Enclave',1),(701,'Warrior\'s Terrace',1),(702,'Rut\'theran Village',1),(716,'Ironband\'s Compound',1),(717,'The Stockade',1),(718,'Wailing Caverns',2),(719,'Blackfathom Deeps',3),(720,'Fray Island',2),(721,'Gnomeregan',1),(722,'Razorfen Downs',3),(736,'Ban\'ethil Hollow',1),(796,'Scarlet Monastery',2),(797,'Jerod\'s Landing',1),(798,'Ridgepoint Tower',1),(799,'The Darkened Bank',3),(800,'Coldridge Pass',1),(801,'Chill Breeze Valley',1),(802,'Shimmer Ridge',1),(803,'Amberstill Ranch',1),(804,'The Tundrid Hills',1),(805,'South Gate Pass',1),(806,'South Gate Outpost',1),(807,'North Gate Pass',1),(808,'North Ga e Outpost',1),(809,'Gates of Ironforge',1),(810,'Stillwater Pond',2),(811,'Nightmare Vale',2),(812,'Venomweb Vale',2),(813,'The Bulwark',3),(814,'Southfury River',2),(815,'Southfury River',2),(816,'Razormane Grounds',2),(817,'Skull Rock',2),(818,'Palemane Rock',2),(819,'Windfury Ridge',2),(820,'The Golden Plains',2),(821,'The Rolling Plains',2),(836,'Dun Algaz',1),(837,'Dun Algaz',1),(838,'North Gate Pass',1),(839,'South Gate Pass',1),(856,'Twilight Grove',3),(876,'GM Island',0),(877,'Delete ME',0),(878,'Southfury River',2),(879,'Southfury River',2),(880,'Thandol Span',3),(881,'Thandol Span',3),(896,'Purgation Isle',3),(916,'The Jansen Stead',1),(917,'The Dead Acre',1),(918,'The Molsen Farm',1),(919,'Stendel\'s Pond',1),(920,'The Dagger Hills',1),(921,'Demont\'s Place',1),(922,'The Dust Plains',1),(923,'Stonesplinter Valley',1),(924,'Valley of Kings',1),(925,'Algaz Station',1),(926,'Bucklebree Farm',2),(927,'The Shining Strand',2),(928,'North Tide\'s Hollow',2),(936,'Grizzlepaw Ridge',1),(956,'The Verdant Fields',0),(976,'Gadgetzan',0),(977,'Steamwheedle Port',3),(978,'Zul\'Farrak',3),(979,'Sandsorrow Watch',3),(980,'Thistleshrub Valley',3),(981,'The Gaping Chasm',3),(982,'The Noxious Lair',3),(983,'Dunemaul Compound',3),(984,'Eastmoon Ruins',3),(985,'Waterspring Field',3),(986,'Zalashji\'s Den',3),(987,'Land\'s End Beach',3),(988,'Wavestrider Beach',3),(989,'Uldum',3),(990,'Valley of the Watchers',3),(991,'Gunstan\'s Post',3),(992,'Southmoon Ruins',3),(996,'Render\'s Camp',3),(997,'Render\'s Valley',3),(998,'Render\'s Rock',3),(999,'Stonewatch Tower',3),(1000,'Galardell Valley',3),(1001,'Lakeridge Highway',3),(1002,'Three Corners',3),(1016,'Direforge Hill',3),(1017,'Raptor Ridge',3),(1018,'Black Channel Marsh',3),(1019,'The Green Belt',3),(1020,'Mosshide Fen',3),(1021,'Thelgen Rock',3),(1022,'Bluegill Marsh',3),(1023,'Saltspray Glen',3),(1024,'Sundown Marsh',3),(1025,'The Green Belt',3),(1036,'Angerfang Encampment',3),(1037,'Grim Batol',3),(1038,'Dragonmaw Gates',3),(1039,'The Lost Fleet',3),(1056,'Darrow Hill',3),(1057,'Thoradin\'s Wall',3),(1076,'Webwinder Path',3),(1097,'The Hushed Bank',3),(1098,'Manor Mistmantle',3),(1099,'Camp Mojache',3),(1100,'Grimtotem Compound',3),(1101,'The Writhing Deep',3),(1102,'Wildwind Lake',3),(1103,'Gordunni Outpost',3),(1104,'Mok\'Gordun',3),(1105,'Feral Scar Vale',3),(1106,'Frayfeather Highlands',3),(1107,'Idlewind Lake',3),(1108,'The Forgotten Coast',3),(1109,'East Pillar',3),(1110,'West Pillar',3),(1111,'Dream Bough',3),(1112,'Jademir Lake',3),(1113,'Oneiros',3),(1114,'Ruins of Ravenwind',3),(1115,'Rage Scar Hold',3),(1116,'Feathermoon Stronghold',3),(1117,'Ruins of Solarsal',3),(1118,'Lower Wilds',3),(1119,'The Twin Colossals',3),(1120,'Sardor Isle',3),(1121,'Isle of Dread',3),(1136,'High Wilderness',3),(1137,'Lower Wilds',3),(1156,'Southern Barrens',2),(1157,'Southern Gold Road',2),(1176,'Zul\'Farrak',3),(1196,'Alcaz Island',3),(1216,'Timbermaw Hold',3),(1217,'Vanndir Encampment',3),(1218,'TESTAzshara',3),(1219,'Legash Encampment',3),(1220,'Thalassian Base Camp',3),(1221,'Ruins of Eldarath',3),(1222,'Hetaera\'s Clutch',3),(1223,'Temple of Zin-Malor',3),(1224,'Bear\'s Head',3),(1225,'Ursolan',3),(1226,'Temple of Arkkoran',3),(1227,'Bay of Storms',3),(1228,'The Shattered Strand',3),(1229,'Tower of Eldara',3),(1230,'Jagged Reef',3),(1231,'Southridge Beach',3),(1232,'Ravencrest Monument',3),(1233,'Forlorn Ridge',3),(1234,'Lake Mennar',3),(1235,'Shadowsong Shrine',3),(1236,'Haldarr Encampment',3),(1237,'Valormok',3),(1256,'The Ruined Reaches',3),(1276,'The Talondeep Path',3),(1277,'The Talondeep Path',3),(1296,'Rocktusk Farm',2),(1297,'Jaggedswine Farm',2),(1316,'Razorfen Downs',3),(1336,'Lost Rigger Cove',3),(1337,'Uldaman',3),(1338,'Lordamere Lake',3),(1339,'Lordamere Lake',3),(1357,'Gallows\' Corner',3),(1377,'Silithus',3),(1397,'Emerald Forest',3),(1417,'Sunken Temple',3),(1437,'Dreadmaul Hold',3),(1438,'Nethergarde Keep',3),(1439,'Dreadmaul Post',3),(1440,'Serpent\'s Coil',3),(1441,'Altar of Storms',3),(1442,'Firewatch Ridge',3),(1443,'The Slag Pit',3),(1444,'The Sea of Cinder ',3),(1445,'Blackrock Mountain',3),(1446,'Thorium Point',3),(1457,'Garrison Armory',3),(1477,'The Temple of Atal\'Hakkar',3),(1497,'Undercity',2),(1517,'Uldaman',3),(1518,'Not Used Deadmines',1),(1519,'Stormwind City',1),(1537,'Ironforge',1),(1557,'Splithoof Hold',3),(1577,'The Cape of Stranglethorn',3),(1578,'Southern Savage Coast',3),(1579,' The Deadmines 002',1),(1580,' Ironclad Cove 003',0),(1581,'The Deadmines',1),(1582,'Ironclad Cove',3),(1583,'Blackrock Spire',3),(1584,'Blackrock Depths',3),(1597,'Raptor Grounds',2),(1598,'Grol\'dom Farm',2),(1599,'Mor\'shan Base Camp',2),(1600,'Honor\'s Stand',2),(1601,'Blackthorn Ridge',2),(1602,'Bramblescar',2),(1603,'Agama\'gor',2),(1617,'Valley of Heroes',1),(1637,'Orgrimmar',2),(1638,'Thunder Bluff',2),(1639,'Elder Rise',2),(1640,'Spirit Rise',2),(1641,'Hunter Rise',2),(1657,'Darnassus',1),(1658,'Cenarion Enclave',1),(1659,'Craftsmen\'s Terrace',1),(1660,'Warrior\'s Terrace',1),(1661,'The Temple Gardens',1),(1662,'Tradesmen\'s Terrace',1),(1677,'Gavin\'s Naze',3),(1678,'Sofera\'s Naze',3),(1679,'Corrahn\'s Dagger',3),(1680,'The Headland',3),(1681,'Misty Shore',3),(1682,'Dandred\'s Fold',3),(1683,'Growless Cave',3),(1684,'Chillwind Point',3),(1697,'Raptor Grounds',2),(1698,'Bramblescar',2),(1699,'Thorn Hill',2),(1700,'Agama\'gor',2),(1701,'Blackthorn Ridge',2),(1702,'Honor\'s Stand',2),(1703,'The Mor\'shan Rampart',2),(1704,'Grol\'dom Farm',2),(1717,'Razorfen Kraul',3),(1718,'The Great Lift',3),(1737,'Mistvale Valley',3),(1738,'Nek\'mani Wellspring',3),(1739,'Bloodsail Compound',3),(1740,'Venture Co. Base Camp',3),(1741,'Gurubashi Arena',3),(1742,'Spirit Den',3),(1757,'The Crimson Veil',3),(1758,'The Riptide',3),(1759,'The Damsel\'s Luck',3),(1760,'Venture Co. Operations Center',3),(1761,'Deadwood Village',3),(1762,'Felpaw Village',3),(1763,'Jaedenar',3),(1764,'Bloodvenom River',3),(1765,'Bloodvenom Falls',3),(1766,'Shatter Scar Vale',3),(1767,'Irontree Woods',3),(1768,'Irontree Cavern',3),(1769,'Timbermaw Hold',3),(1770,'Shadow Hold',3),(1771,'Shrine of the Deceiver',3),(1777,'Itharius\'s Cave',3),(1778,'Sorrowmurk',3),(1779,'Draenil\'dur Village',3),(1780,'Splinterspear Junction',3),(1797,'Stagalbog',3),(1798,'The Shifting Mire',3),(1817,'Stagalbog Cave',3),(1837,'Witherbark Caverns',3),(1857,'Thoradin\'s Wall',3),(1858,'Boulder\'gor',3),(1877,'Valley of Fangs',3),(1878,'The Dustbowl',3),(1879,'Mirage Flats',3),(1880,'Featherbeard\'s Hovel',3),(1881,'Shindigger\'s Camp',3),(1882,'Plaguemist Ravine',3),(1883,'Valorwind Lake',3),(1884,'Agol\'watha',3),(1885,'Hiri\'watha',3),(1886,'The Creeping Ruin',3),(1887,'Bogen\'s Ledge',3),(1897,'The Maker\'s Terrace',3),(1898,'Dustwind Gulch',3),(1917,'Shaol\'watha',3),(1937,'Noonshade Ruins',3),(1938,'Broken Pillar',3),(1939,'Abyssal Sands',3),(1940,'Southbreak Shore',3),(1941,'Caverns of Time',3),(1942,'The Marshlands',3),(1943,'Ironstone Plateau',2),(1957,'Blackchar Cave',3),(1958,'Tanner Camp',3),(1959,'Dustfire Valley',3),(1977,'Zul\'Gurub',3),(1978,'Misty Reed Post',3),(1997,'Bloodvenom Post',3),(1998,'Talonbranch Glade',3),(2017,'Stratholme',3),(2037,'Shadowfang Keep 003',2),(2057,'Scholomance',3),(2077,'Twilight Vale',1),(2078,'Twilight Shore',1),(2079,'Alcaz Island',1),(2097,'Darkcloud Pinnacle',3),(2098,'Dawning Wood Catacombs',3),(2099,'Stonewatch Keep',3),(2100,'Maraudon',3),(2101,'Stoutlager Inn',1),(2102,'Thunderbrew Distillery',1),(2103,'Menethil Keep',3),(2104,'Deepwater Tavern',3),(2117,'Shadow Grave',2),(2118,'Brill Town Hall',2),(2119,'Gallows\' End Tavern',2),(2137,'The Pools of Vision',2),(2138,'Dreadmist Den',2),(2157,'Bael\'dun Keep',2),(2158,'Emberstrife\'s Den',3),(2159,'Onyxia\'s Lair',3),(2160,'Windshear Mine',3),(2161,'Roland\'s Doom',3),(2177,'Battle Ring',4),(2197,'The Pools of Vision',2),(2198,'Shadowbreak Ravine',3),(2217,'Broken Spear Village',3),(2237,'Whitereach Post',3),(2238,'Gornia',3),(2239,'Zane\'s Eye Crater',3),(2240,'Mirage Raceway',3),(2241,'Frostsaber Rock',3),(2242,'The Hidden Grove',3),(2243,'Timbermaw Post',3),(2244,'Winterfall Village',3),(2245,'Mazthoril',3),(2246,'Frostfire Hot Sprin s',3),(2247,'Ice Thistle Hills',3),(2248,'Dun Mandarr',3),(2249,'Frostwhisper Gorge',3),(2250,'Owl Wing Thicket',3),(2251,'Lake Kel\'Theril',3),(2252,'The Ruins of Kel\'Theril',3),(2253,'Starfall Village',3),(2254,'Ban\'Thallow Barrow Den',3),(2255,'Everlook',3),(2256,'Darkwhisper Gorge',3),(2257,'Deeprun Tram',1),(2258,'The Fungal Vale',0),(2259,'The Marris Stead',3),(2260,'The Marris Stead',3),(2261,'The Undercroft',3),(2262,'Darrowshire',3),(2263,'Crown Guard Tower',3),(2264,'Corin\'s Crossing',3),(2265,'Scarlet Base Camp',3),(2266,'Tyr\'s Hand',3),(2267,'The Scarlet Basilica',3),(2268,'Light\'s Hope Chapel',3),(2269,'Browman Mill',3),(2270,'The Noxious Glade',3),(2271,'Eastwall Tower',3),(2272,'Northdale',3),(2273,'Zul\'Mashar',3),(2274,'Mazra\'Alor',3),(2275,'Northpass Tower',3),(2276,'Quel\'Lithien Lodge',3),(2277,'Plaguewood',3),(2278,'Scourgehold',3),(2279,'Stratholme',3),(2280,' Stratholme',3),(2297,'Darrowmere Lake',3),(2298,'Caer Darrow',3),(2299,'Darrowmere Lake',3),(2300,'Caverns of Time',3),(2301,'Thistlefur Village',3),(2302,'The Quagmire',3),(2303,'Windbreak Canyon',3),(2317,'South Seas',3),(2318,'The Great Sea',3),(2319,'The Great Sea',3),(2320,'The Great Sea',3),(2321,'The Great Sea',3),(2322,'The Veiled Sea',3),(2323,'The Veiled Sea',3),(2324,'The Veiled Sea',3),(2325,'The Veiled Sea',3),(2326,'The Veiled Sea',3),(2337,'Razor Hill Barracks',2),(2338,'South Seas',3),(2339,'The Great Sea',3),(2357,'Bloodtooth Camp',3),(2358,'Forest Song',3),(2359,'Greenpaw Village',3),(2360,'Silverwing Outpost',3),(2361,'Nighthaven',3),(2362,'Shrine of Remulos',3),(2363,'Stormrage Barrow Dens',3),(2364,'The Great Sea',3),(2365,'The Great Sea',3),(2366,'The Black Morass',3),(2367,'Old Hillsbrad Foothills',3),(2368,'Tarren Mill',3),(2369,'Southshore',3),(2370,'Durnholde Keep',3),(2371,'Dun Garok',3),(2372,'Hillsbrad Fields',3),(2373,'Eastern Strand',3),(2374,'Nethander Stead',3),(2375,'Darrow Hill',3),(2376,'Southpoint Tower',3),(2377,'Thoradin\'s Wall',3),(2378,'Western Strand',3),(2379,'Azurelode Mine',3),(2397,'The Great Sea',3),(2398,'The Great Sea',3),(2399,'The Great Sea',3),(2400,'The Forbidding Sea',3),(2401,'The Forbidding Sea',3),(2402,'The Forbidding Sea',3),(2403,'The Forbidding Sea',3),(2404,'Tethris Aran',3),(2405,'Ethel Rethor',3),(2406,'Ranazjar Isle',3),(2407,'Kormek\'s Hut',3),(2408,'Shadowprey Village',3),(2417,'Blackrock Pass',3),(2418,'Morgan\'s Vigil',3),(2419,'Slither Rock',3),(2420,'Terror Wing Path',3),(2421,'Draco\'dar',3),(2437,'Ragefire Chasm',2),(2457,'Nightsong Woods',3),(2477,'The Veiled Sea',3),(2478,'Morlos\'Aran',3),(2479,'Emerald Sanctuary',3),(2480,'Jadefire Glen',3),(2481,'Ruins of Constellas',3),(2497,'Bitter Reaches',3),(2517,'Rise of the Defiler',3),(2518,'Lariss Pavilion',3),(2519,'Woodpaw Hills',3),(2520,'Woodpaw Den',3),(2521,'Verdantis River',3),(2522,'Ruins of Isildien',3),(2537,'Grimtotem Post',3),(2538,'Camp Aparaje',3),(2539,'Malaka\'jin',3),(2540,'Boulderslide Ravine',3),(2541,'Sishir Canyon',3),(2557,'Dire Maul',3),(2558,'Deadwind Ravine',3),(2559,'Diamondhead River',3),(2560,'Ariden\'s Camp',3),(2561,'The Vice',3),(2562,'Karazhan',3),(2563,'Morgan\'s Plot',3),(2577,'Dire Maul',3),(2597,'Alterac Valley',3),(2617,'Scrabblescrew\'s Camp',3),(2618,'Jadefire Run',3),(2619,'Thondroril River',3),(2620,'Thondroril River',3),(2621,'Lake Mereldar',3),(2622,'Pestilent Scar',3),(2623,'The Infectis Scar',3),(2624,'Blackwood Lake',3),(2625,'Eastwall Gate',3),(2626,'Terrorweb Tunnel',3),(2627,'Terrordale',3),(2637,'Kargathia Keep',3),(2657,'Valley of Bones',3),(2677,'Blackwing Lair',3),(2697,'Deadman\'s Crossing',3),(2717,'Molten Core',3),(2737,'The Scarab Wall',3),(2738,'Southwind Village',3),(2739,'Twilight Base Camp',3),(2740,'The Crystal Vale',3),(2741,'The Scarab Dais',3),(2742,'Hive\'Ashi',3),(2743,'Hive\'Zora',3),(2744,'Hive\'Regal',3),(2757,'Shrine of the Fallen Warrior',2),(2777,' Alterac Valley',3),(2797,'Blackfathom Deeps',3),(2817,'***On Map Dungeon***',0),(2837,'The Master\'s Cellar',3),(2838,'Stonewrought Pass',3),(2839,'Alterac Valley',3),(2857,'The Rumble Cage',3),(2870,'Chunk Test',0),(2897,'Zoram\'gar Outpost',3),(2917,'Hall of Legends',2),(2918,'Champions\' Hall',1),(2937,'Grosh\'gok Compound',3),(2938,'Sleeping Gorge',3),(2957,'Irondeep Mine',3),(2958,'Stonehearth Outpost',3),(2959,'Dun Baldar',3),(2960,'Icewing Pass',3),(2961,'Frostwolf Village',3),(2962,'Tower Point',3),(2963,'Coldtooth Mine',3),(2964,'Winterax Hold',3),(2977,'Iceblood Garrison',3),(2978,'Frostwolf Keep',3),(2979,'Tor\'kren Farm',3),(3017,'Frost Dagger Pass',3),(3037,'Ironstone Camp',3),(3038,'Weazel\'s Crater',3),(3039,'Tahonda Ruins',3),(3057,'Field of Strife',3),(3058,'Icewing Cavern',3),(3077,'Valor\'s Rest',3),(3097,'The Swarming Pillar',3),(3098,'Twilight Post',3),(3099,'Twilight Outpost',3),(3100,'Ravaged Twilight Camp',3),(3117,'Shalzaru\'s Lair',3),(3137,'Talrendis Point',3),(3138,'Rethress Sanctum',3),(3139,'Moon Horror Den',3),(3140,'Scalebeard\'s Cave',3),(3157,'Boulderslide Cavern',3),(3177,'Warsong Labor Camp',3),(3197,'Chillwind Camp',3),(3217,'The Maul',4),(3237,'The Maul',4),(3257,'Bones of Grakkarond',3),(3277,'Warsong Gulch',3),(3297,'Frostwolf Graveyard',3),(3298,'Frostwolf Pass',3),(3299,'Dun Baldar Pass',3),(3300,'Iceblood Graveyard',3),(3301,'Snowfall Graveyard',3),(3302,'Stonehearth Graveyard',3),(3303,'Stormpike Graveyard',3),(3304,'Icewing Bunker',3),(3305,'Stonehearth Bunker',3),(3306,'Wildpaw Ridge',3),(3317,'Revantusk Village',3),(3318,'Rock of Durotan',3),(3319,'Silverwing Grove',3),(3320,'Warsong Lumber Mill',3),(3321,'Silverwing Hold',3),(3337,'Wildpaw Cavern',3),(3338,'The Veiled Cleft',3),(3357,'Yojamba Isle',3),(3358,'Arathi Basin',3),(3377,'The Coil',3),(3378,'Altar of Hir\'eek',3),(3379,'Shadra\'zaar',3),(3380,'Hakkari Grounds',3),(3381,'Naze of Shirvallah',3),(3382,'Temple of Bethekk',3),(3383,'The Bloodfire Pit',3),(3384,'Altar of the Blood God',3),(3397,'Zanza\'s Rise',3),(3398,'Edge of Madness',3),(3417,'Trollbane Hall',3),(3418,'Defiler\'s Den',3),(3419,'Pagle\'s Pointe',3),(3420,'Farm',3),(3421,'Blacksmith',3),(3422,'Lumber Mill',3),(3423,'Gold Mine',3),(3424,'Stables',3),(3425,'Cenarion Hold',0),(3426,'Staghelm Point',3),(3427,'Bronzebeard Encampment',3),(3446,'Twilight\'s Run',3),(3447,'Ortell\'s Hideout',3),(3522,'Blade\'s Edge Mountains',3),(3483,'Hellfire Peninsula',3),(3518,'Nagrand',3),(3523,'Netherstorm',3),(3520,'Shadowmoon Valley',3),(3519,'Terokkar Forest',3),(3521,'Zangarmarsh',3),(3703,'Shattrath City',0);
/*!40000 ALTER TABLE `pvpareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questlog`
--

DROP TABLE IF EXISTS `questlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questlog` (
  `index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `player_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` int(20) unsigned NOT NULL DEFAULT '0',
  `time_left` int(10) NOT NULL DEFAULT '0',
  `explored_area1` int(20) unsigned NOT NULL DEFAULT '0',
  `explored_area2` int(20) unsigned NOT NULL DEFAULT '0',
  `explored_area3` int(20) unsigned NOT NULL DEFAULT '0',
  `explored_area4` int(20) unsigned NOT NULL DEFAULT '0',
  `mob_kill1` int(20) NOT NULL DEFAULT '0',
  `mob_kill2` int(20) NOT NULL DEFAULT '0',
  `mob_kill3` int(20) NOT NULL DEFAULT '0',
  `mob_kill4` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`index`),
  KEY `index` (`index`)
) ENGINE=MyISAM AUTO_INCREMENT=9623886 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questlog`
--

LOCK TABLES `questlog` WRITE;
/*!40000 ALTER TABLE `questlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `questlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quests`
--

DROP TABLE IF EXISTS `quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quests` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `ZoneId` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestSort` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestFlags` int(11) unsigned NOT NULL DEFAULT '0',
  `MinLevel` int(11) unsigned NOT NULL DEFAULT '0',
  `MaxLevel` int(11) unsigned NOT NULL DEFAULT '0',
  `Type` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredRaces` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredClass` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredTradeskill` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredRepFaction` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredRepValue` int(11) unsigned NOT NULL DEFAULT '0',
  `LimitTime` int(11) unsigned NOT NULL DEFAULT '0',
  `SpecialFlags` int(11) unsigned NOT NULL DEFAULT '0',
  `PrevQuestId` int(11) unsigned NOT NULL DEFAULT '0',
  `NextQuestId` int(11) unsigned NOT NULL DEFAULT '0',
  `srcItem` int(11) unsigned NOT NULL DEFAULT '0',
  `SrcItemCount` int(11) unsigned NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Details` text NOT NULL,
  `Objectives` text NOT NULL,
  `CompletionText` text NOT NULL,
  `IncompleteText` text NOT NULL,
  `EndText` text NOT NULL,
  `ObjectiveText1` text NOT NULL,
  `ObjectiveText2` text NOT NULL,
  `ObjectiveText3` text NOT NULL,
  `ObjectiveText4` text NOT NULL,
  `ReqItemId1` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqItemId2` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqItemId3` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqItemId4` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount1` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount2` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount3` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount4` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqKillMobOrGOId1` int(11) NOT NULL DEFAULT '0',
  `ReqKillMobOrGOId2` int(11) NOT NULL DEFAULT '0',
  `ReqKillMobOrGOId3` int(11) NOT NULL DEFAULT '0',
  `ReqKillMobOrGOId4` int(11) NOT NULL DEFAULT '0',
  `ReqKillMobOrGOCount1` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqKillMobOrGOCount2` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqKillMobOrGOCount3` int(11) unsigned NOT NULL DEFAULT '0',
  `ReqKillMobOrGOCount4` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId1` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId2` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId3` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId4` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId5` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId6` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount1` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount2` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount3` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount4` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount5` int(11) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount6` int(11) unsigned NOT NULL DEFAULT '0',
  `RewItemId1` int(11) unsigned NOT NULL DEFAULT '0',
  `RewItemId2` int(11) unsigned NOT NULL DEFAULT '0',
  `RewItemId3` int(11) unsigned NOT NULL DEFAULT '0',
  `RewItemId4` int(11) unsigned NOT NULL DEFAULT '0',
  `RewItemCount1` int(11) unsigned NOT NULL DEFAULT '0',
  `RewItemCount2` int(11) unsigned NOT NULL DEFAULT '0',
  `RewItemCount3` int(11) unsigned NOT NULL DEFAULT '0',
  `RewItemCount4` int(11) unsigned NOT NULL DEFAULT '0',
  `RewRepFaction1` int(11) unsigned NOT NULL DEFAULT '0',
  `RewRepFaction2` int(11) unsigned NOT NULL DEFAULT '0',
  `RewRepValue1` int(11) unsigned NOT NULL DEFAULT '0',
  `RewRepValue2` int(11) unsigned NOT NULL DEFAULT '0',
  `RewMoney` int(11) unsigned NOT NULL DEFAULT '0',
  `RewXP` int(11) unsigned NOT NULL DEFAULT '0',
  `RewSpell` int(11) unsigned NOT NULL DEFAULT '0',
  `CastSpell` int(11) NOT NULL DEFAULT '0',
  `PointMapId` int(11) unsigned NOT NULL DEFAULT '0',
  `PointX` float NOT NULL DEFAULT '0',
  `PointY` float NOT NULL DEFAULT '0',
  `PointOpt` int(2) unsigned NOT NULL DEFAULT '0',
  `RequiredMoney` int(11) NOT NULL DEFAULT '0',
  `ExploreTrigger1` int(11) NOT NULL DEFAULT '0',
  `ExploreTrigger2` int(11) NOT NULL DEFAULT '0',
  `ExploreTrigger3` int(11) NOT NULL DEFAULT '0',
  `ExploreTrigger4` int(11) NOT NULL DEFAULT '0',
  `RequiredQuest1` int(11) NOT NULL DEFAULT '0',
  `RequiredQuest2` int(11) NOT NULL DEFAULT '0',
  `RequiredQuest3` int(11) NOT NULL DEFAULT '0',
  `RequiredQuest4` int(11) NOT NULL DEFAULT '0',
  `ReceiveItemId1` int(11) NOT NULL DEFAULT '0',
  `ReceiveItemId2` int(11) NOT NULL DEFAULT '0',
  `ReceiveItemId3` int(11) NOT NULL DEFAULT '0',
  `ReceiveItemId4` int(11) NOT NULL DEFAULT '0',
  `ReceiveItemCount1` int(11) NOT NULL DEFAULT '0',
  `ReceiveItemCount2` int(11) NOT NULL DEFAULT '0',
  `ReceiveItemCount3` int(11) NOT NULL DEFAULT '0',
  `ReceiveItemCount4` int(11) NOT NULL DEFAULT '0',
  `IsRepeatable` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`),
  UNIQUE KEY `entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quests`
--

LOCK TABLES `quests` WRITE;
/*!40000 ALTER TABLE `quests` DISABLE KEYS */;
/*!40000 ALTER TABLE `quests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recall`
--

DROP TABLE IF EXISTS `recall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recall` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `locname` varchar(10) NOT NULL DEFAULT '',
  `mapid` mediumint(8) NOT NULL DEFAULT '0',
  `positionX` float NOT NULL DEFAULT '0',
  `positionY` float NOT NULL DEFAULT '0',
  `positionZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recall`
--

LOCK TABLES `recall` WRITE;
/*!40000 ALTER TABLE `recall` DISABLE KEYS */;
INSERT INTO `recall` VALUES (1,'sunr',1,-180.949,-296.467,11.5384),(3,'thun',1,-1196.22,29.0941,176.949),(4,'darn',1,9951.52,2280.32,1341.39),(5,'cross',1,-443.128,-2598.87,96.2114),(6,'orgr',1,1676.21,-4315.29,61.5293),(7,'neth',0,-10996.9,-3427.67,61.996),(8,'thel',0,-5395.57,-3015.79,327.58),(9,'storm',0,-8913.23,554.633,93.7944),(10,'iron',0,-4981.25,-881.542,501.66),(11,'oldiron',0,-4843.94,-1064.63,502.04),(12,'under',0,1586.48,239.562,-52.149),(13,'gmisl',1,16222.1,16252.1,12.5872),(14,'desi',451,16303.5,-16173.5,40.4365),(15,'prog',451,16391.8,16341.2,69.44),(16,'darn',1,10037.6,2496.8,1318.4),(17,'auberdine',1,6497.35,788.197,8.15309),(18,'exodar',530,-4003.11,-11875.4,-0.748712),(19,'silvermoon',530,9408.76,-7277.49,14.1932),(20,'menethil',0,-3771.26,-732.714,8.08046),(21,'gromgol',0,-12426.2,216.954,31.2917),(22,'bootybay',0,-14295.8,523.848,8.83148),(23,'pvparena',0,-13226.3,232.452,33.3056),(24,'MCore',409,1079.49,-472.869,-107.618),(25,'darkportal',0,-11853.1,-3201.72,-28.0021),(26,'Rag',409,749.271,-739.457,-213.93),(27,'Vael',469,-7512.68,-1032.16,408.586),(28,'Nef',469,-7529.8,-1283.53,476.799),(29,'goldshire',0,-9461.96,61.7461,55.8598),(30,'northshire',0,-8946.27,-136.768,83.7322),(31,'arena',0,-13282,123.899,25.7096),(32,'Outlands',530,-246.724,956.06,84.3575),(33,'VanCleef',0,-11208.2,1676.35,24.5614),(34,'S-Arena1',1,2958.76,-4794.2,235.976),(35,'oldif',0,-4821.02,-977.204,464.71),(36,'ashen',1,6410.85,537.733,13.66),(37,'astranaar',1,2806.67,-269.968,107.092),(38,'nijels',1,247.606,1250.49,192.166),(39,'feathermoo',1,-4371.86,3289.06,13.5693),(40,'bwl',469,-7644.86,-1087.15,407.859),(41,'epl',0,2282.71,-5308.8,87.0337),(42,'naxx',0,3105.04,-3718.22,133.376),(44,'botanica',530,3346.05,1534.27,179.689),(45,'coilfang',530,727.109,6850.94,-67.8074),(46,'strmspr',530,4196.62,3011.49,339.309),(47,'mulgore',1,-849.909,-53.1284,-13.1069),(48,'westfall',0,-10435.1,1143.32,38.335),(51,'uberjail',1,-8432.63,1510.86,31.9076),(50,'CoT',1,-8471.13,-4236.79,-194.851);
/*!40000 ALTER TABLE `recall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation_creature_onkill`
--

DROP TABLE IF EXISTS `reputation_creature_onkill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputation_creature_onkill` (
  `creature_id` int(30) NOT NULL,
  `faction_change` int(30) NOT NULL,
  `change_deltamin` int(30) NOT NULL,
  `change_deltamax` int(30) NOT NULL,
  KEY `index` (`creature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation_creature_onkill`
--

LOCK TABLES `reputation_creature_onkill` WRITE;
/*!40000 ALTER TABLE `reputation_creature_onkill` DISABLE KEYS */;
/*!40000 ALTER TABLE `reputation_creature_onkill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation_faction_onkill`
--

DROP TABLE IF EXISTS `reputation_faction_onkill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputation_faction_onkill` (
  `faction_id` int(30) NOT NULL,
  `change_factionid` int(30) NOT NULL,
  `change_deltamin` int(30) NOT NULL,
  `change_deltamax` int(30) NOT NULL,
  KEY `factindex` (`faction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation_faction_onkill`
--

LOCK TABLES `reputation_faction_onkill` WRITE;
/*!40000 ALTER TABLE `reputation_faction_onkill` DISABLE KEYS */;
INSERT INTO `reputation_faction_onkill` VALUES (87,87,-5,-6),(87,21,25,26);
/*!40000 ALTER TABLE `reputation_faction_onkill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skinningloot`
--

DROP TABLE IF EXISTS `skinningloot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skinningloot` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `entryid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemid` int(10) unsigned NOT NULL DEFAULT '0',
  `percentchance` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`index`),
  UNIQUE KEY `index` (`index`)
) ENGINE=MyISAM AUTO_INCREMENT=2911 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skinningloot`
--

LOCK TABLES `skinningloot` WRITE;
/*!40000 ALTER TABLE `skinningloot` DISABLE KEYS */;
/*!40000 ALTER TABLE `skinningloot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social`
--

DROP TABLE IF EXISTS `social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social` (
  `guid` int(6) NOT NULL DEFAULT '0',
  `socialguid` int(6) NOT NULL DEFAULT '0',
  `flags` varchar(21) NOT NULL DEFAULT '',
  `noticed` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`socialguid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social`
--

LOCK TABLES `social` WRITE;
/*!40000 ALTER TABLE `social` DISABLE KEYS */;
/*!40000 ALTER TABLE `social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spellextra`
--

DROP TABLE IF EXISTS `spellextra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spellextra` (
  `Id` int(32) NOT NULL AUTO_INCREMENT,
  `specialtype` int(32) DEFAULT NULL,
  `enchantableslots` int(32) DEFAULT NULL,
  `ExtraFlags` int(32) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=39417 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spellextra`
--

LOCK TABLES `spellextra` WRITE;
/*!40000 ALTER TABLE `spellextra` DISABLE KEYS */;
INSERT INTO `spellextra` VALUES (13163,4,NULL,NULL),(13165,4,NULL,NULL),(14318,4,NULL,NULL),(5118,4,NULL,NULL),(14319,4,NULL,NULL),(13161,4,NULL,NULL),(14320,4,NULL,NULL),(13159,4,NULL,NULL),(20043,4,NULL,NULL),(14321,4,NULL,NULL),(20190,4,NULL,NULL),(14322,4,NULL,NULL),(25296,4,NULL,NULL),(1978,5,NULL,NULL),(13549,5,NULL,NULL),(13550,5,NULL,NULL),(3043,5,NULL,NULL),(13551,5,NULL,NULL),(14275,5,NULL,NULL),(13552,5,NULL,NULL),(30493,NULL,NULL,1),(33808,NULL,NULL,1),(3018,NULL,NULL,1),(2764,NULL,NULL,1),(5019,NULL,NULL,1),(5938,NULL,NULL,1),(5940,NULL,NULL,1),(26741,NULL,NULL,1),(26679,NULL,NULL,1),(37074,NULL,NULL,1),(32645,NULL,NULL,1),(32684,NULL,NULL,1),(408,NULL,NULL,1),(8643,NULL,NULL,1),(27615,NULL,NULL,1),(30621,NULL,NULL,1),(30832,NULL,NULL,1),(32864,NULL,NULL,1),(16511,NULL,NULL,1),(17347,NULL,NULL,1),(17348,NULL,NULL,1),(26864,NULL,NULL,1),(30478,NULL,NULL,1),(37331,NULL,NULL,1),(1943,NULL,NULL,1),(8639,NULL,NULL,1),(8640,NULL,NULL,1),(11273,NULL,NULL,1),(11274,NULL,NULL,1),(11275,NULL,NULL,1),(14874,NULL,NULL,1),(14903,NULL,NULL,1),(15583,NULL,NULL,1),(26867,NULL,NULL,1),(8647,NULL,NULL,1),(8649,NULL,NULL,1),(8650,NULL,NULL,1),(11197,NULL,NULL,1),(11198,NULL,NULL,1),(26866,NULL,NULL,1),(30965,NULL,NULL,1),(8818,NULL,NULL,1),(28911,NULL,NULL,1),(29433,NULL,NULL,1),(37066,NULL,NULL,1),(1766,NULL,NULL,1),(1767,NULL,NULL,1),(1768,NULL,NULL,1),(1769,NULL,NULL,1),(11978,NULL,NULL,1),(15610,NULL,NULL,1),(15614,NULL,NULL,1),(17748,NULL,NULL,1),(18425,NULL,NULL,1),(27613,NULL,NULL,1),(27814,NULL,NULL,1),(29560,NULL,NULL,1),(29586,NULL,NULL,1),(30460,NULL,NULL,1),(31402,NULL,NULL,1),(32105,NULL,NULL,1),(33424,NULL,NULL,1),(34802,NULL,NULL,1),(36033,NULL,NULL,1),(38625,NULL,NULL,1),(38768,NULL,NULL,1),(39043,NULL,NULL,1),(5171,NULL,NULL,1),(6434,NULL,NULL,1),(6774,NULL,NULL,1),(30470,NULL,NULL,1),(2070,NULL,NULL,1),(6770,NULL,NULL,1),(11297,NULL,NULL,1),(30980,NULL,NULL,1),(1776,NULL,NULL,1),(1777,NULL,NULL,1),(3232,NULL,NULL,1),(8629,NULL,NULL,1),(11285,NULL,NULL,1),(11286,NULL,NULL,1),(12540,NULL,NULL,1),(13579,NULL,NULL,1),(24698,NULL,NULL,1),(28456,NULL,NULL,1),(29425,NULL,NULL,1),(34940,NULL,NULL,1),(36862,NULL,NULL,1),(38764,NULL,NULL,1),(38863,NULL,NULL,1),(921,NULL,NULL,1),(1804,NULL,NULL,1),(1805,NULL,NULL,1),(1806,NULL,NULL,1),(6461,NULL,NULL,1),(6463,NULL,NULL,1),(2098,NULL,NULL,1),(6760,NULL,NULL,1),(6761,NULL,NULL,1),(6762,NULL,NULL,1),(8623,NULL,NULL,1),(8624,NULL,NULL,1),(11299,NULL,NULL,1),(11300,NULL,NULL,1),(15691,NULL,NULL,1),(15692,NULL,NULL,1),(26865,NULL,NULL,1),(27611,NULL,NULL,1),(31016,NULL,NULL,1),(1752,NULL,NULL,1),(1757,NULL,NULL,1),(1758,NULL,NULL,1),(1759,NULL,NULL,1),(1760,NULL,NULL,1),(8621,NULL,NULL,1),(11293,NULL,NULL,1),(11294,NULL,NULL,1),(14873,NULL,NULL,1),(15581,NULL,NULL,1),(15667,NULL,NULL,1),(19472,NULL,NULL,1),(24824,NULL,NULL,1),(26861,NULL,NULL,1),(26862,NULL,NULL,1),(32217,NULL,NULL,1),(34428,NULL,NULL,1),(20243,NULL,NULL,1),(30016,NULL,NULL,1),(30017,NULL,NULL,1),(30022,NULL,NULL,1),(36891,NULL,NULL,1),(36894,NULL,NULL,1),(38849,NULL,NULL,1),(38967,NULL,NULL,1),(8242,NULL,NULL,1),(15655,NULL,NULL,1),(23922,NULL,NULL,1),(23923,NULL,NULL,1),(23924,NULL,NULL,1),(23925,NULL,NULL,1),(25258,NULL,NULL,1),(29684,NULL,NULL,1),(30356,NULL,NULL,1),(30688,NULL,NULL,1),(12331,NULL,NULL,1),(23880,NULL,NULL,1),(23881,NULL,NULL,1),(23885,NULL,NULL,1),(23886,NULL,NULL,1),(23887,NULL,NULL,1),(23888,NULL,NULL,1),(23889,NULL,NULL,1),(23890,NULL,NULL,1),(23891,NULL,NULL,1),(23892,NULL,NULL,1),(23893,NULL,NULL,1),(23894,NULL,NULL,1),(25251,NULL,NULL,1),(25252,NULL,NULL,1),(25253,NULL,NULL,1),(30335,NULL,NULL,1),(30339,NULL,NULL,1),(30340,NULL,NULL,1),(30475,NULL,NULL,1),(30476,NULL,NULL,1),(31997,NULL,NULL,1),(31998,NULL,NULL,1),(35123,NULL,NULL,1),(35125,NULL,NULL,1),(35947,NULL,NULL,1),(35948,NULL,NULL,1),(39071,NULL,NULL,1),(39072,NULL,NULL,1),(9347,NULL,NULL,1),(12294,NULL,NULL,1),(13737,NULL,NULL,1),(15708,NULL,NULL,1),(16856,NULL,NULL,1),(17547,NULL,NULL,1),(19643,NULL,NULL,1),(21551,NULL,NULL,1),(21552,NULL,NULL,1),(21553,NULL,NULL,1),(24573,NULL,NULL,1),(24816,NULL,NULL,1),(25248,NULL,NULL,1),(26652,NULL,NULL,1),(27580,NULL,NULL,1),(29572,NULL,NULL,1),(30330,NULL,NULL,1),(31911,NULL,NULL,1),(32736,NULL,NULL,1),(35054,NULL,NULL,1),(37335,NULL,NULL,1),(39171,NULL,NULL,1),(6552,NULL,NULL,1),(6554,NULL,NULL,1),(6555,NULL,NULL,1),(10887,NULL,NULL,1),(12555,NULL,NULL,1),(13491,NULL,NULL,1),(15615,NULL,NULL,1),(19639,NULL,NULL,1),(25595,NULL,NULL,1),(36470,NULL,NULL,1),(38313,NULL,NULL,1),(20253,NULL,NULL,1),(20614,NULL,NULL,1),(20615,NULL,NULL,1),(25273,NULL,NULL,1),(25274,NULL,NULL,1),(27826,NULL,NULL,1),(30153,NULL,NULL,1),(30195,NULL,NULL,1),(30197,NULL,NULL,1),(1464,NULL,NULL,1),(8820,NULL,NULL,1),(11430,NULL,NULL,1),(11604,NULL,NULL,1),(11605,NULL,NULL,1),(25241,NULL,NULL,1),(25242,NULL,NULL,1),(34620,NULL,NULL,1),(6174,NULL,NULL,1),(6175,NULL,NULL,1),(7160,NULL,NULL,1),(20647,NULL,NULL,1),(25234,NULL,NULL,1),(25236,NULL,NULL,1),(26651,NULL,NULL,1),(38948,NULL,NULL,1),(38959,NULL,NULL,1),(845,NULL,NULL,1),(5480,NULL,NULL,1),(5508,NULL,NULL,1),(5532,NULL,NULL,1),(7369,NULL,NULL,1),(11427,NULL,NULL,1),(11608,NULL,NULL,1),(11609,NULL,NULL,1),(15280,NULL,NULL,1),(15284,NULL,NULL,1),(15496,NULL,NULL,1),(15579,NULL,NULL,1),(15584,NULL,NULL,1),(15613,NULL,NULL,1),(15622,NULL,NULL,1),(15623,NULL,NULL,1),(15663,NULL,NULL,1),(15754,NULL,NULL,1),(16044,NULL,NULL,1),(17685,NULL,NULL,1),(19632,NULL,NULL,1),(19642,NULL,NULL,1),(19983,NULL,NULL,1),(20569,NULL,NULL,1),(20605,NULL,NULL,1),(20666,NULL,NULL,1),(20677,NULL,NULL,1),(20684,NULL,NULL,1),(20691,NULL,NULL,1),(22540,NULL,NULL,1),(25231,NULL,NULL,1),(26350,NULL,NULL,1),(27794,NULL,NULL,1),(29561,NULL,NULL,1),(29665,NULL,NULL,1),(30014,NULL,NULL,1),(30131,NULL,NULL,1),(30213,NULL,NULL,1),(30219,NULL,NULL,1),(30223,NULL,NULL,1),(30619,NULL,NULL,1),(31043,NULL,NULL,1),(31345,NULL,NULL,1),(31779,NULL,NULL,1),(34995,NULL,NULL,1),(37476,NULL,NULL,1),(37598,NULL,NULL,1),(38260,NULL,NULL,1),(38474,NULL,NULL,1),(39047,NULL,NULL,1),(39174,NULL,NULL,1),(694,NULL,NULL,1),(7400,NULL,NULL,1),(7402,NULL,NULL,1),(20559,NULL,NULL,1),(20560,NULL,NULL,1),(21008,NULL,NULL,1),(25266,NULL,NULL,1),(6572,NULL,NULL,1),(6574,NULL,NULL,1),(7379,NULL,NULL,1),(11600,NULL,NULL,1),(11601,NULL,NULL,1),(12170,NULL,NULL,1),(19130,NULL,NULL,1),(25269,NULL,NULL,1),(25288,NULL,NULL,1),(30357,NULL,NULL,1),(37517,NULL,NULL,1),(72,NULL,NULL,1),(1671,NULL,NULL,1),(1672,NULL,NULL,1),(11972,NULL,NULL,1),(18498,NULL,NULL,1),(33871,NULL,NULL,1),(35178,NULL,NULL,1),(36988,NULL,NULL,1),(38233,NULL,NULL,1),(7384,NULL,NULL,1),(7887,NULL,NULL,1),(11584,NULL,NULL,1),(11585,NULL,NULL,1),(14895,NULL,NULL,1),(17198,NULL,NULL,1),(24407,NULL,NULL,1),(24817,NULL,NULL,1),(32154,NULL,NULL,1),(37321,NULL,NULL,1),(37529,NULL,NULL,1),(7386,NULL,NULL,1),(7405,NULL,NULL,1),(8380,NULL,NULL,1),(11596,NULL,NULL,1),(11597,NULL,NULL,1),(11971,NULL,NULL,1),(13444,NULL,NULL,1),(15502,NULL,NULL,1),(15572,NULL,NULL,1),(16145,NULL,NULL,1),(21081,NULL,NULL,1),(24317,NULL,NULL,1),(25051,NULL,NULL,1),(25225,NULL,NULL,1),(27991,NULL,NULL,1),(30901,NULL,NULL,1),(35851,NULL,NULL,1),(1715,NULL,NULL,1),(7372,NULL,NULL,1),(7373,NULL,NULL,1),(9080,NULL,NULL,1),(25212,NULL,NULL,1),(26141,NULL,NULL,1),(26211,NULL,NULL,1),(27584,NULL,NULL,1),(29667,NULL,NULL,1),(30989,NULL,NULL,1),(31553,NULL,NULL,1),(38262,NULL,NULL,1),(38995,NULL,NULL,1),(20508,NULL,NULL,1),(22120,NULL,NULL,1),(22911,NULL,NULL,1),(24193,NULL,NULL,1),(24408,NULL,NULL,1),(25821,NULL,NULL,1),(29320,NULL,NULL,1),(31733,NULL,NULL,1),(32323,NULL,NULL,1),(33709,NULL,NULL,1),(34846,NULL,NULL,1),(35412,NULL,NULL,1),(35570,NULL,NULL,1),(35754,NULL,NULL,1),(36058,NULL,NULL,1),(36140,NULL,NULL,1),(36509,NULL,NULL,1),(37511,NULL,NULL,1),(38461,NULL,NULL,1),(772,NULL,NULL,1),(6546,NULL,NULL,1),(6547,NULL,NULL,1),(6548,NULL,NULL,1),(11572,NULL,NULL,1),(11573,NULL,NULL,1),(11574,NULL,NULL,1),(11977,NULL,NULL,1),(12054,NULL,NULL,1),(13318,NULL,NULL,1),(13443,NULL,NULL,1),(13445,NULL,NULL,1),(13738,NULL,NULL,1),(14087,NULL,NULL,1),(14118,NULL,NULL,1),(16393,NULL,NULL,1),(16403,NULL,NULL,1),(16406,NULL,NULL,1),(16509,NULL,NULL,1),(17153,NULL,NULL,1),(17504,NULL,NULL,1),(18075,NULL,NULL,1),(18078,NULL,NULL,1),(18106,NULL,NULL,1),(18200,NULL,NULL,1),(18202,NULL,NULL,1),(21949,NULL,NULL,1),(25208,NULL,NULL,1),(29574,NULL,NULL,1),(29578,NULL,NULL,1),(36965,NULL,NULL,1),(36991,NULL,NULL,1),(37662,NULL,NULL,1),(78,NULL,NULL,1),(284,NULL,NULL,1),(285,NULL,NULL,1),(1608,NULL,NULL,1),(11564,NULL,NULL,1),(11565,NULL,NULL,1),(11566,NULL,NULL,1),(11567,NULL,NULL,1),(25286,NULL,NULL,1),(25710,NULL,NULL,1),(25712,NULL,NULL,1),(29426,NULL,NULL,1),(29567,NULL,NULL,1),(29707,NULL,NULL,1),(30324,NULL,NULL,1),(31827,NULL,NULL,1),(421,NULL,NULL,1),(930,NULL,NULL,1),(2860,NULL,NULL,1),(10605,NULL,NULL,1),(12058,NULL,NULL,1),(15117,NULL,NULL,1),(15305,NULL,NULL,1),(15659,NULL,NULL,1),(16006,NULL,NULL,1),(16033,NULL,NULL,1),(16921,NULL,NULL,1),(20831,NULL,NULL,1),(21179,NULL,NULL,1),(22355,NULL,NULL,1),(23106,NULL,NULL,1),(23206,NULL,NULL,1),(24680,NULL,NULL,1),(25021,NULL,NULL,1),(25439,NULL,NULL,1),(25442,NULL,NULL,1),(27567,NULL,NULL,1),(28167,NULL,NULL,1),(28293,NULL,NULL,1),(28900,NULL,NULL,1),(31330,NULL,NULL,1),(31717,NULL,NULL,1),(32337,NULL,NULL,1),(33643,NULL,NULL,1),(36896,NULL,NULL,1),(37448,NULL,NULL,1),(39066,NULL,NULL,1),(8056,NULL,NULL,1),(8058,NULL,NULL,1),(10472,NULL,NULL,1),(10473,NULL,NULL,1),(12548,NULL,NULL,1),(15089,NULL,NULL,1),(15499,NULL,NULL,1),(19133,NULL,NULL,1),(21030,NULL,NULL,1),(21401,NULL,NULL,1),(22582,NULL,NULL,1),(23115,NULL,NULL,1),(25464,NULL,NULL,1),(29666,NULL,NULL,1),(34353,NULL,NULL,1),(37332,NULL,NULL,1),(37865,NULL,NULL,1),(38234,NULL,NULL,1),(39062,NULL,NULL,1),(370,NULL,NULL,1),(8012,NULL,NULL,1),(25756,NULL,NULL,1),(27626,NULL,NULL,1),(33625,NULL,NULL,1),(8050,NULL,NULL,1),(8052,NULL,NULL,1),(8053,NULL,NULL,1),(10447,NULL,NULL,1),(10448,NULL,NULL,1),(13729,NULL,NULL,1),(15039,NULL,NULL,1),(15096,NULL,NULL,1),(15616,NULL,NULL,1),(16804,NULL,NULL,1),(22423,NULL,NULL,1),(23038,NULL,NULL,1),(25456,NULL,NULL,1),(25457,NULL,NULL,1),(29228,NULL,NULL,1),(32967,NULL,NULL,1),(34354,NULL,NULL,1),(8042,NULL,NULL,1),(8044,NULL,NULL,1),(8045,NULL,NULL,1),(8046,NULL,NULL,1),(10412,NULL,NULL,1),(10413,NULL,NULL,1),(10414,NULL,NULL,1),(13281,NULL,NULL,1),(13728,NULL,NULL,1),(15501,NULL,NULL,1),(22885,NULL,NULL,1),(23114,NULL,NULL,1),(24685,NULL,NULL,1),(25025,NULL,NULL,1),(25454,NULL,NULL,1),(26194,NULL,NULL,1),(34914,NULL,NULL,1),(34916,NULL,NULL,1),(34917,NULL,NULL,1),(34918,NULL,NULL,1),(34919,NULL,NULL,1),(2691,NULL,NULL,1),(8129,NULL,NULL,1),(8131,NULL,NULL,1),(10874,NULL,NULL,1),(10875,NULL,NULL,1),(10876,NULL,NULL,1),(11981,NULL,NULL,1),(12745,NULL,NULL,1),(13321,NULL,NULL,1),(14033,NULL,NULL,1),(15785,NULL,NULL,1),(15800,NULL,NULL,1),(15980,NULL,NULL,1),(17615,NULL,NULL,1),(17630,NULL,NULL,1),(20817,NULL,NULL,1),(22189,NULL,NULL,1),(22936,NULL,NULL,1),(22947,NULL,NULL,1),(25379,NULL,NULL,1),(25380,NULL,NULL,1),(25779,NULL,NULL,1),(26046,NULL,NULL,1),(26049,NULL,NULL,1),(27992,NULL,NULL,1),(28301,NULL,NULL,1),(29310,NULL,NULL,1),(29405,NULL,NULL,1),(31729,NULL,NULL,1),(33385,NULL,NULL,1),(34930,NULL,NULL,1),(34931,NULL,NULL,1),(36484,NULL,NULL,1),(37159,NULL,NULL,1),(37176,NULL,NULL,1),(38883,NULL,NULL,1),(38884,NULL,NULL,1),(39020,NULL,NULL,1),(39136,NULL,NULL,1),(39262,NULL,NULL,1),(9484,NULL,NULL,1),(9485,NULL,NULL,1),(10955,NULL,NULL,1),(11444,NULL,NULL,1),(18137,NULL,NULL,1),(19308,NULL,NULL,1),(19309,NULL,NULL,1),(19310,NULL,NULL,1),(19311,NULL,NULL,1),(19312,NULL,NULL,1),(25477,NULL,NULL,1),(28376,NULL,NULL,1),(28377,NULL,NULL,1),(28378,NULL,NULL,1),(28379,NULL,NULL,1),(28380,NULL,NULL,1),(28381,NULL,NULL,1),(28382,NULL,NULL,1),(28385,NULL,NULL,1),(32861,NULL,NULL,1),(38379,NULL,NULL,1),(2944,NULL,NULL,1),(19276,NULL,NULL,1),(19277,NULL,NULL,1),(19278,NULL,NULL,1),(19279,NULL,NULL,1),(19280,NULL,NULL,1),(25467,NULL,NULL,1),(15407,NULL,NULL,1),(16568,NULL,NULL,1),(17165,NULL,NULL,1),(17311,NULL,NULL,1),(17312,NULL,NULL,1),(17313,NULL,NULL,1),(17314,NULL,NULL,1),(18807,NULL,NULL,1),(22919,NULL,NULL,1),(23953,NULL,NULL,1),(25387,NULL,NULL,1),(26044,NULL,NULL,1),(26143,NULL,NULL,1),(28310,NULL,NULL,1),(29407,NULL,NULL,1),(29570,NULL,NULL,1),(32417,NULL,NULL,1),(35507,NULL,NULL,1),(37276,NULL,NULL,1),(37330,NULL,NULL,1),(37621,NULL,NULL,1),(38243,NULL,NULL,1),(14914,NULL,NULL,1),(15261,NULL,NULL,1),(15262,NULL,NULL,1),(15263,NULL,NULL,1),(15264,NULL,NULL,1),(15265,NULL,NULL,1),(15266,NULL,NULL,1),(15267,NULL,NULL,1),(17140,NULL,NULL,1),(17141,NULL,NULL,1),(17142,NULL,NULL,1),(18165,NULL,NULL,1),(23860,NULL,NULL,1),(25384,NULL,NULL,1),(29522,NULL,NULL,1),(29563,NULL,NULL,1),(36947,NULL,NULL,1),(38585,NULL,NULL,1),(39323,NULL,NULL,1),(10797,NULL,NULL,1),(19296,NULL,NULL,1),(19299,NULL,NULL,1),(19302,NULL,NULL,1),(19303,NULL,NULL,1),(19304,NULL,NULL,1),(19305,NULL,NULL,1),(22822,NULL,NULL,1),(22823,NULL,NULL,1),(25446,NULL,NULL,1),(27636,NULL,NULL,1),(27765,NULL,NULL,1),(27768,NULL,NULL,1),(27769,NULL,NULL,1),(27770,NULL,NULL,1),(702,NULL,NULL,1),(1108,NULL,NULL,1),(2652,NULL,NULL,1),(2943,NULL,NULL,1),(6205,NULL,NULL,1),(7646,NULL,NULL,1),(8552,NULL,NULL,1),(9035,NULL,NULL,1),(11707,NULL,NULL,1),(11708,NULL,NULL,1),(11980,NULL,NULL,1),(12493,NULL,NULL,1),(12741,NULL,NULL,1),(17227,NULL,NULL,1),(18267,NULL,NULL,1),(19249,NULL,NULL,1),(19251,NULL,NULL,1),(19252,NULL,NULL,1),(19253,NULL,NULL,1),(19254,NULL,NULL,1),(19261,NULL,NULL,1),(19262,NULL,NULL,1),(19264,NULL,NULL,1),(19265,NULL,NULL,1),(19266,NULL,NULL,1),(19281,NULL,NULL,1),(19282,NULL,NULL,1),(19283,NULL,NULL,1),(19284,NULL,NULL,1),(19285,NULL,NULL,1),(21007,NULL,NULL,1),(25460,NULL,NULL,1),(25461,NULL,NULL,1),(25470,NULL,NULL,1),(25816,NULL,NULL,1),(27224,NULL,NULL,1),(28598,NULL,NULL,1),(30909,NULL,NULL,1),(8092,NULL,NULL,1),(8102,NULL,NULL,1),(8103,NULL,NULL,1),(8104,NULL,NULL,1),(8105,NULL,NULL,1),(8106,NULL,NULL,1),(10945,NULL,NULL,1),(10946,NULL,NULL,1),(10947,NULL,NULL,1),(13860,NULL,NULL,1),(15587,NULL,NULL,1),(17194,NULL,NULL,1),(17287,NULL,NULL,1),(20830,NULL,NULL,1),(25372,NULL,NULL,1),(25375,NULL,NULL,1),(26048,NULL,NULL,1),(31516,NULL,NULL,1),(37531,NULL,NULL,1),(38259,NULL,NULL,1),(451,NULL,NULL,1),(589,NULL,NULL,1),(593,NULL,NULL,1),(594,NULL,NULL,1),(861,NULL,NULL,1),(970,NULL,NULL,1),(992,NULL,NULL,1),(998,NULL,NULL,1),(2767,NULL,NULL,1),(5704,NULL,NULL,1),(6069,NULL,NULL,1),(10892,NULL,NULL,1),(10893,NULL,NULL,1),(10894,NULL,NULL,1),(11639,NULL,NULL,1),(14032,NULL,NULL,1),(15654,NULL,NULL,1),(17146,NULL,NULL,1),(19776,NULL,NULL,1),(23268,NULL,NULL,1),(23952,NULL,NULL,1),(24212,NULL,NULL,1),(25367,NULL,NULL,1),(25368,NULL,NULL,1),(27605,NULL,NULL,1),(30854,NULL,NULL,1),(30898,NULL,NULL,1),(32379,NULL,NULL,1),(32409,NULL,NULL,1),(32996,NULL,NULL,1),(34441,NULL,NULL,1),(34941,NULL,NULL,1),(34942,NULL,NULL,1),(37275,NULL,NULL,1),(585,NULL,NULL,1),(591,NULL,NULL,1),(598,NULL,NULL,1),(984,NULL,NULL,1),(1004,NULL,NULL,1),(6060,NULL,NULL,1),(10933,NULL,NULL,1),(10934,NULL,NULL,1),(25363,NULL,NULL,1),(25364,NULL,NULL,1),(35155,NULL,NULL,1),(31312,NULL,NULL,1),(31935,NULL,NULL,1),(32674,NULL,NULL,1),(32699,NULL,NULL,1),(32700,NULL,NULL,1),(32774,NULL,NULL,1),(37554,NULL,NULL,1),(38631,NULL,NULL,1),(24239,NULL,NULL,1),(24274,NULL,NULL,1),(24275,NULL,NULL,1),(27180,NULL,NULL,1),(32772,NULL,NULL,1),(37251,NULL,NULL,1),(37255,NULL,NULL,1),(37259,NULL,NULL,1),(20473,NULL,NULL,1),(20929,NULL,NULL,1),(20930,NULL,NULL,1),(25902,NULL,NULL,1),(25903,NULL,NULL,1),(25911,NULL,NULL,1),(25912,NULL,NULL,1),(25913,NULL,NULL,1),(25914,NULL,NULL,1),(27174,NULL,NULL,1),(27175,NULL,NULL,1),(27176,NULL,NULL,1),(32771,NULL,NULL,1),(33072,NULL,NULL,1),(33073,NULL,NULL,1),(33074,NULL,NULL,1),(35160,NULL,NULL,1),(36340,NULL,NULL,1),(38921,NULL,NULL,1),(879,NULL,NULL,1),(5614,NULL,NULL,1),(5615,NULL,NULL,1),(10312,NULL,NULL,1),(10313,NULL,NULL,1),(10314,NULL,NULL,1),(17147,NULL,NULL,1),(17149,NULL,NULL,1),(27138,NULL,NULL,1),(33632,NULL,NULL,1),(853,NULL,NULL,1),(5588,NULL,NULL,1),(5589,NULL,NULL,1),(10308,NULL,NULL,1),(13005,NULL,NULL,1),(32416,NULL,NULL,1),(37369,NULL,NULL,1),(39077,NULL,NULL,1),(3674,NULL,NULL,1),(14296,NULL,NULL,1),(20733,NULL,NULL,1),(1510,NULL,NULL,1),(1540,NULL,NULL,1),(3013,NULL,NULL,1),(14294,NULL,NULL,1),(14295,NULL,NULL,1),(22908,NULL,NULL,1),(27022,NULL,NULL,1),(30933,NULL,NULL,1),(34100,NULL,NULL,1),(35950,NULL,NULL,1),(19386,NULL,NULL,1),(24131,NULL,NULL,1),(24132,NULL,NULL,1),(24133,NULL,NULL,1),(24134,NULL,NULL,1),(24135,NULL,NULL,1),(24335,NULL,NULL,1),(24336,NULL,NULL,1),(26180,NULL,NULL,1),(26233,NULL,NULL,1),(26748,NULL,NULL,1),(27068,NULL,NULL,1),(27069,NULL,NULL,1),(3034,NULL,NULL,1),(14279,NULL,NULL,1),(14280,NULL,NULL,1),(27018,NULL,NULL,1),(31407,NULL,NULL,1),(37551,NULL,NULL,1),(39413,NULL,NULL,1),(19306,NULL,NULL,1),(20909,NULL,NULL,1),(20910,NULL,NULL,1),(27067,NULL,NULL,1),(2643,NULL,NULL,1),(14288,NULL,NULL,1),(14289,NULL,NULL,1),(14290,NULL,NULL,1),(14443,NULL,NULL,1),(18651,NULL,NULL,1),(20735,NULL,NULL,1),(21390,NULL,NULL,1),(25294,NULL,NULL,1),(27021,NULL,NULL,1),(29576,NULL,NULL,1),(30990,NULL,NULL,1),(31942,NULL,NULL,1),(34879,NULL,NULL,1),(34974,NULL,NULL,1),(36979,NULL,NULL,1),(37790,NULL,NULL,1),(38310,NULL,NULL,1),(38383,NULL,NULL,1),(1495,NULL,NULL,1),(14269,NULL,NULL,1),(14270,NULL,NULL,1),(14271,NULL,NULL,1),(36916,NULL,NULL,1),(2974,NULL,NULL,1),(14267,NULL,NULL,1),(14268,NULL,NULL,1),(19229,NULL,NULL,1),(27633,NULL,NULL,1),(32908,NULL,NULL,1),(35963,NULL,NULL,1),(3044,NULL,NULL,1),(14281,NULL,NULL,1),(14282,NULL,NULL,1),(14283,NULL,NULL,1),(14284,NULL,NULL,1),(14285,NULL,NULL,1),(14286,NULL,NULL,1),(14287,NULL,NULL,1),(27019,NULL,NULL,1),(34829,NULL,NULL,1),(35401,NULL,NULL,1),(36293,NULL,NULL,1),(36608,NULL,NULL,1),(36609,NULL,NULL,1),(36623,NULL,NULL,1),(38807,NULL,NULL,1),(38808,NULL,NULL,1),(1130,NULL,NULL,1),(14323,NULL,NULL,1),(14324,NULL,NULL,1),(14325,NULL,NULL,1),(31615,NULL,NULL,1),(34832,NULL,NULL,1),(13553,NULL,NULL,1),(13554,NULL,NULL,1),(13555,NULL,NULL,1),(25295,NULL,NULL,1),(27016,NULL,NULL,1),(31975,NULL,NULL,1),(35511,NULL,NULL,1),(36984,NULL,NULL,1),(38859,NULL,NULL,1),(38914,NULL,NULL,1),(39182,NULL,NULL,1),(3720,NULL,NULL,1),(3823,NULL,NULL,1),(4164,NULL,NULL,1),(4165,NULL,NULL,1),(7978,NULL,NULL,1),(10277,NULL,NULL,1),(13398,NULL,NULL,1),(15607,NULL,NULL,1),(15619,NULL,NULL,1),(15795,NULL,NULL,1),(16000,NULL,NULL,1),(16075,NULL,NULL,1),(19032,NULL,NULL,1),(19785,NULL,NULL,1),(22887,NULL,NULL,1),(23968,NULL,NULL,1),(23969,NULL,NULL,1),(23970,NULL,NULL,1),(25004,NULL,NULL,1),(27662,NULL,NULL,1),(29579,NULL,NULL,1),(29582,NULL,NULL,1),(30846,NULL,NULL,1),(31946,NULL,NULL,1),(32001,NULL,NULL,1),(32784,NULL,NULL,1),(33670,NULL,NULL,1),(33805,NULL,NULL,1),(33806,NULL,NULL,1),(33822,NULL,NULL,1),(34095,NULL,NULL,1),(34389,NULL,NULL,1),(35139,NULL,NULL,1),(35276,NULL,NULL,1),(35724,NULL,NULL,1),(36645,NULL,NULL,1),(36651,NULL,NULL,1),(38556,NULL,NULL,1),(38557,NULL,NULL,1),(38558,NULL,NULL,1),(38559,NULL,NULL,1),(38560,NULL,NULL,1),(38561,NULL,NULL,1),(38562,NULL,NULL,1),(38563,NULL,NULL,1),(38564,NULL,NULL,1),(38565,NULL,NULL,1),(38566,NULL,NULL,1),(38567,NULL,NULL,1),(38568,NULL,NULL,1),(38569,NULL,NULL,1),(38570,NULL,NULL,1),(38904,NULL,NULL,1),(39060,NULL,NULL,1),(39146,NULL,NULL,1),(39147,NULL,NULL,1),(39148,NULL,NULL,1),(39149,NULL,NULL,1),(39150,NULL,NULL,1),(39151,NULL,NULL,1),(39154,NULL,NULL,1),(39155,NULL,NULL,1),(39156,NULL,NULL,1),(75,NULL,NULL,1),(2973,NULL,NULL,1),(14260,NULL,NULL,1),(14261,NULL,NULL,1),(14262,NULL,NULL,1),(14263,NULL,NULL,1),(14264,NULL,NULL,1),(14265,NULL,NULL,1),(14266,NULL,NULL,1),(27014,NULL,NULL,1),(31566,NULL,NULL,1),(32915,NULL,NULL,1),(5422,NULL,NULL,1),(33745,NULL,NULL,1),(27243,NULL,NULL,1),(27285,NULL,NULL,1),(32863,NULL,NULL,1),(32865,NULL,NULL,1),(36123,NULL,NULL,1),(37826,NULL,NULL,1),(38252,NULL,NULL,1),(39367,NULL,NULL,1),(19397,NULL,NULL,1),(23308,NULL,NULL,1),(23309,NULL,NULL,1),(29722,NULL,NULL,1),(32231,NULL,NULL,1),(32707,NULL,NULL,1),(36832,NULL,NULL,1),(38401,NULL,NULL,1),(38918,NULL,NULL,1),(39083,NULL,NULL,1),(603,NULL,NULL,1),(18662,NULL,NULL,1),(18734,NULL,NULL,1),(30910,NULL,NULL,1),(30108,NULL,NULL,1),(30404,NULL,NULL,1),(30405,NULL,NULL,1),(31117,NULL,NULL,1),(34438,NULL,NULL,1),(34439,NULL,NULL,1),(35183,NULL,NULL,1),(6353,NULL,NULL,1),(17924,NULL,NULL,1),(27211,NULL,NULL,1),(30545,NULL,NULL,1),(17862,NULL,NULL,1),(17937,NULL,NULL,1),(27229,NULL,NULL,1),(6789,NULL,NULL,1),(17925,NULL,NULL,1),(17926,NULL,NULL,1),(27223,NULL,NULL,1),(28412,NULL,NULL,1),(30500,NULL,NULL,1),(30741,NULL,NULL,1),(32709,NULL,NULL,1),(33130,NULL,NULL,1),(34437,NULL,NULL,1),(35954,NULL,NULL,1),(38065,NULL,NULL,1),(1010,NULL,NULL,1),(1490,NULL,NULL,1),(11721,NULL,NULL,1),(11722,NULL,NULL,1),(27228,NULL,NULL,1),(36831,NULL,NULL,1),(711,NULL,NULL,1),(1949,NULL,NULL,1),(11683,NULL,NULL,1),(11684,NULL,NULL,1),(27213,NULL,NULL,1),(30859,NULL,NULL,1),(34659,NULL,NULL,1),(34660,NULL,NULL,1),(37428,NULL,NULL,1),(39131,NULL,NULL,1),(39132,NULL,NULL,1),(18265,NULL,NULL,1),(18879,NULL,NULL,1),(18880,NULL,NULL,1),(18881,NULL,NULL,1),(27264,NULL,NULL,1),(30911,NULL,NULL,1),(35195,NULL,NULL,1),(1098,NULL,NULL,1),(11725,NULL,NULL,1),(11726,NULL,NULL,1),(20882,NULL,NULL,1),(710,NULL,NULL,1),(8994,NULL,NULL,1),(18647,NULL,NULL,1),(24466,NULL,NULL,1),(27565,NULL,NULL,1),(30231,NULL,NULL,1),(35182,NULL,NULL,1),(37527,NULL,NULL,1),(37546,NULL,NULL,1),(37833,NULL,NULL,1),(38009,NULL,NULL,1),(38376,NULL,NULL,1),(38791,NULL,NULL,1),(1714,NULL,NULL,1),(11719,NULL,NULL,1),(12889,NULL,NULL,1),(13338,NULL,NULL,1),(15470,NULL,NULL,1),(25195,NULL,NULL,1),(5138,NULL,NULL,1),(6226,NULL,NULL,1),(11703,NULL,NULL,1),(11704,NULL,NULL,1),(17008,NULL,NULL,1),(17243,NULL,NULL,1),(17682,NULL,NULL,1),(25671,NULL,NULL,1),(25676,NULL,NULL,1),(25754,NULL,NULL,1),(25755,NULL,NULL,1),(26457,NULL,NULL,1),(26559,NULL,NULL,1),(26639,NULL,NULL,1),(27221,NULL,NULL,1),(29058,NULL,NULL,1),(29881,NULL,NULL,1),(30908,NULL,NULL,1),(32554,NULL,NULL,1),(34806,NULL,NULL,1),(35332,NULL,NULL,1),(36088,NULL,NULL,1),(36095,NULL,NULL,1),(26385,NULL,NULL,1),(29341,NULL,NULL,1),(5676,NULL,NULL,1),(17919,NULL,NULL,1),(17920,NULL,NULL,1),(17921,NULL,NULL,1),(17922,NULL,NULL,1),(17923,NULL,NULL,1),(27210,NULL,NULL,1),(29492,NULL,NULL,1),(30358,NULL,NULL,1),(30459,NULL,NULL,1),(689,NULL,NULL,1),(699,NULL,NULL,1),(709,NULL,NULL,1),(7651,NULL,NULL,1),(11699,NULL,NULL,1),(11700,NULL,NULL,1),(12693,NULL,NULL,1),(16375,NULL,NULL,1),(16414,NULL,NULL,1),(16608,NULL,NULL,1),(17173,NULL,NULL,1),(17238,NULL,NULL,1),(17620,NULL,NULL,1),(18084,NULL,NULL,1),(18557,NULL,NULL,1),(18817,NULL,NULL,1),(20743,NULL,NULL,1),(21170,NULL,NULL,1),(24300,NULL,NULL,1),(24435,NULL,NULL,1),(24585,NULL,NULL,1),(24618,NULL,NULL,1),(26693,NULL,NULL,1),(27219,NULL,NULL,1),(27220,NULL,NULL,1),(27994,NULL,NULL,1),(29155,NULL,NULL,1),(30412,NULL,NULL,1),(34107,NULL,NULL,1),(34696,NULL,NULL,1),(35748,NULL,NULL,1),(36224,NULL,NULL,1),(36655,NULL,NULL,1),(36825,NULL,NULL,1),(37992,NULL,NULL,1),(38817,NULL,NULL,1),(704,NULL,NULL,1),(7658,NULL,NULL,1),(7659,NULL,NULL,1),(11717,NULL,NULL,1),(16231,NULL,NULL,1),(27226,NULL,NULL,1),(1120,NULL,NULL,1),(8288,NULL,NULL,1),(8289,NULL,NULL,1),(11675,NULL,NULL,1),(18371,NULL,NULL,1),(27217,NULL,NULL,1),(32862,NULL,NULL,1),(35839,NULL,NULL,1),(16,NULL,NULL,1),(830,NULL,NULL,1),(5782,NULL,NULL,1),(6213,NULL,NULL,1),(6215,NULL,NULL,1),(6346,NULL,NULL,1),(12096,NULL,NULL,1),(12542,NULL,NULL,1),(12733,NULL,NULL,1),(22678,NULL,NULL,1),(26070,NULL,NULL,1),(26580,NULL,NULL,1),(26661,NULL,NULL,1),(27641,NULL,NULL,1),(27990,NULL,NULL,1),(29168,NULL,NULL,1),(29321,NULL,NULL,1),(30002,NULL,NULL,1),(30530,NULL,NULL,1),(30584,NULL,NULL,1),(30615,NULL,NULL,1),(31358,NULL,NULL,1),(31970,NULL,NULL,1),(32241,NULL,NULL,1),(33547,NULL,NULL,1),(33629,NULL,NULL,1),(33924,NULL,NULL,1),(34076,NULL,NULL,1),(34259,NULL,NULL,1),(38154,NULL,NULL,1),(38595,NULL,NULL,1),(38660,NULL,NULL,1),(39119,NULL,NULL,1),(39176,NULL,NULL,1),(39210,NULL,NULL,1),(39415,NULL,NULL,1),(980,NULL,NULL,1),(1014,NULL,NULL,1),(6217,NULL,NULL,1),(11711,NULL,NULL,1),(11712,NULL,NULL,1),(11713,NULL,NULL,1),(14868,NULL,NULL,1),(14875,NULL,NULL,1),(17771,NULL,NULL,1),(18235,NULL,NULL,1),(18236,NULL,NULL,1),(18237,NULL,NULL,1),(18266,NULL,NULL,1),(18277,NULL,NULL,1),(18279,NULL,NULL,1),(18280,NULL,NULL,1),(18671,NULL,NULL,1),(22965,NULL,NULL,1),(22966,NULL,NULL,1),(27218,NULL,NULL,1),(28608,NULL,NULL,1),(29930,NULL,NULL,1),(32418,NULL,NULL,1),(37334,NULL,NULL,1),(172,NULL,NULL,1),(6222,NULL,NULL,1),(6223,NULL,NULL,1),(7648,NULL,NULL,1),(11671,NULL,NULL,1),(11672,NULL,NULL,1),(13530,NULL,NULL,1),(16402,NULL,NULL,1),(17510,NULL,NULL,1),(18088,NULL,NULL,1),(18376,NULL,NULL,1),(18656,NULL,NULL,1),(21068,NULL,NULL,1),(23439,NULL,NULL,1),(23642,NULL,NULL,1),(24910,NULL,NULL,1),(25311,NULL,NULL,1),(25805,NULL,NULL,1),(27216,NULL,NULL,1),(30938,NULL,NULL,1),(31405,NULL,NULL,1),(32063,NULL,NULL,1),(32197,NULL,NULL,1),(32644,NULL,NULL,1),(33070,NULL,NULL,1),(37113,NULL,NULL,1),(37961,NULL,NULL,1),(38219,NULL,NULL,1),(38220,NULL,NULL,1),(38221,NULL,NULL,1),(38222,NULL,NULL,1),(38230,NULL,NULL,1),(39212,NULL,NULL,1),(348,NULL,NULL,1),(707,NULL,NULL,1),(1094,NULL,NULL,1),(2941,NULL,NULL,1),(7288,NULL,NULL,1),(9034,NULL,NULL,1),(9275,NULL,NULL,1),(11665,NULL,NULL,1),(11667,NULL,NULL,1),(11668,NULL,NULL,1),(11962,NULL,NULL,1),(12742,NULL,NULL,1),(15505,NULL,NULL,1),(15570,NULL,NULL,1),(15661,NULL,NULL,1),(15732,NULL,NULL,1),(17883,NULL,NULL,1),(20294,NULL,NULL,1),(20787,NULL,NULL,1),(20800,NULL,NULL,1),(20826,NULL,NULL,1),(25309,NULL,NULL,1),(27215,NULL,NULL,1),(29928,NULL,NULL,1),(36638,NULL,NULL,1),(37628,NULL,NULL,1),(37668,NULL,NULL,1),(38806,NULL,NULL,1),(30482,NULL,NULL,1),(34913,NULL,NULL,1),(35915,NULL,NULL,1),(35916,NULL,NULL,1),(246,NULL,NULL,1),(6146,NULL,NULL,1),(10371,NULL,NULL,1),(11436,NULL,NULL,1),(13747,NULL,NULL,1),(18972,NULL,NULL,1),(19137,NULL,NULL,1),(22356,NULL,NULL,1),(24415,NULL,NULL,1),(2948,NULL,NULL,1),(5010,NULL,NULL,1),(8444,NULL,NULL,1),(8445,NULL,NULL,1),(8446,NULL,NULL,1),(10205,NULL,NULL,1),(10206,NULL,NULL,1),(10207,NULL,NULL,1),(12871,NULL,NULL,1),(13878,NULL,NULL,1),(15241,NULL,NULL,1),(17195,NULL,NULL,1),(29515,NULL,NULL,1),(11366,NULL,NULL,1),(12505,NULL,NULL,1),(12522,NULL,NULL,1),(12523,NULL,NULL,1),(12524,NULL,NULL,1),(12525,NULL,NULL,1),(12526,NULL,NULL,1),(12527,NULL,NULL,1),(17273,NULL,NULL,1),(17274,NULL,NULL,1),(18809,NULL,NULL,1),(20228,NULL,NULL,1),(24995,NULL,NULL,1),(12355,NULL,NULL,1),(12494,NULL,NULL,1),(118,NULL,NULL,1),(228,NULL,NULL,1),(851,NULL,NULL,1),(5254,NULL,NULL,1),(6345,NULL,NULL,1),(6965,NULL,NULL,1),(12824,NULL,NULL,1),(12825,NULL,NULL,1),(12826,NULL,NULL,1),(12939,NULL,NULL,1),(13323,NULL,NULL,1),(14621,NULL,NULL,1),(15534,NULL,NULL,1),(27760,NULL,NULL,1),(28270,NULL,NULL,1),(28271,NULL,NULL,1),(28272,NULL,NULL,1),(29124,NULL,NULL,1),(29183,NULL,NULL,1),(29848,NULL,NULL,1),(5143,NULL,NULL,1),(5144,NULL,NULL,1),(5145,NULL,NULL,1),(7269,NULL,NULL,1),(7270,NULL,NULL,1),(8416,NULL,NULL,1),(8417,NULL,NULL,1),(8418,NULL,NULL,1),(8419,NULL,NULL,1),(10211,NULL,NULL,1),(10212,NULL,NULL,1),(10273,NULL,NULL,1),(10274,NULL,NULL,1),(15735,NULL,NULL,1),(15736,NULL,NULL,1),(15790,NULL,NULL,1),(15791,NULL,NULL,1),(22272,NULL,NULL,1),(22273,NULL,NULL,1),(25345,NULL,NULL,1),(25346,NULL,NULL,1),(31751,NULL,NULL,1),(2480,NULL,NULL,1),(6660,NULL,NULL,1),(7918,NULL,NULL,1),(7919,NULL,NULL,1),(8995,NULL,NULL,1),(8996,NULL,NULL,1),(8997,NULL,NULL,1),(9008,NULL,NULL,1),(15547,NULL,NULL,1),(15620,NULL,NULL,1),(16100,NULL,NULL,1),(16496,NULL,NULL,1),(16572,NULL,NULL,1),(16767,NULL,NULL,1),(16768,NULL,NULL,1),(16772,NULL,NULL,1),(16775,NULL,NULL,1),(16776,NULL,NULL,1),(16777,NULL,NULL,1),(16778,NULL,NULL,1),(16779,NULL,NULL,1),(16780,NULL,NULL,1),(17353,NULL,NULL,1),(18561,NULL,NULL,1),(19881,NULL,NULL,1),(20463,NULL,NULL,1),(22121,NULL,NULL,1),(22411,NULL,NULL,1),(22907,NULL,NULL,1),(23073,NULL,NULL,1),(23337,NULL,NULL,1),(25030,NULL,NULL,1),(25031,NULL,NULL,1),(25200,NULL,NULL,1),(26282,NULL,NULL,1),(28317,NULL,NULL,1),(6136,NULL,NULL,1),(7321,NULL,NULL,1),(12484,NULL,NULL,1),(12485,NULL,NULL,1),(12486,NULL,NULL,1),(15850,NULL,NULL,1),(16927,NULL,NULL,1),(18101,NULL,NULL,1),(20005,NULL,NULL,1),(19820,NULL,NULL,1),(22570,NULL,NULL,1),(22689,NULL,NULL,1),(9007,NULL,NULL,1),(9824,NULL,NULL,1),(9826,NULL,NULL,1),(22568,NULL,NULL,1),(22827,NULL,NULL,1),(22828,NULL,NULL,1),(22829,NULL,NULL,1),(22851,NULL,NULL,1),(22853,NULL,NULL,1),(22861,NULL,NULL,1),(22862,NULL,NULL,1),(27557,NULL,NULL,1),(31018,NULL,NULL,1),(17253,NULL,NULL,1),(17255,NULL,NULL,1),(17256,NULL,NULL,1),(17257,NULL,NULL,1),(17258,NULL,NULL,1),(17259,NULL,NULL,1),(17260,NULL,NULL,1),(17261,NULL,NULL,1),(3242,NULL,NULL,1),(3446,NULL,NULL,1),(8391,NULL,NULL,1),(24213,NULL,NULL,1),(24333,NULL,NULL,1),(770,NULL,NULL,1),(778,NULL,NULL,1),(1069,NULL,NULL,1),(2887,NULL,NULL,1),(2888,NULL,NULL,1),(6950,NULL,NULL,1),(9749,NULL,NULL,1),(9907,NULL,NULL,1),(13424,NULL,NULL,1),(13752,NULL,NULL,1),(16498,NULL,NULL,1),(16855,NULL,NULL,1),(16857,NULL,NULL,1),(17387,NULL,NULL,1),(17388,NULL,NULL,1),(17389,NULL,NULL,1),(17390,NULL,NULL,1),(17391,NULL,NULL,1),(17392,NULL,NULL,1),(20656,NULL,NULL,1),(21670,NULL,NULL,1),(1822,NULL,NULL,1),(1823,NULL,NULL,1),(1824,NULL,NULL,1),(9904,NULL,NULL,1),(22639,NULL,NULL,1),(24331,NULL,NULL,1),(24332,NULL,NULL,1),(27556,NULL,NULL,1),(27638,NULL,NULL,1),(2908,NULL,NULL,1),(8955,NULL,NULL,1),(9901,NULL,NULL,1),(3252,NULL,NULL,1),(27555,NULL,NULL,1),(5570,NULL,NULL,1),(24974,NULL,NULL,1),(24975,NULL,NULL,1),(24976,NULL,NULL,1),(24977,NULL,NULL,1),(2912,NULL,NULL,1),(8949,NULL,NULL,1),(8950,NULL,NULL,1),(8951,NULL,NULL,1),(9875,NULL,NULL,1),(9876,NULL,NULL,1),(16922,NULL,NULL,1),(21668,NULL,NULL,1),(25298,NULL,NULL,1),(1079,NULL,NULL,1),(9492,NULL,NULL,1),(9493,NULL,NULL,1),(9752,NULL,NULL,1),(9894,NULL,NULL,1),(9896,NULL,NULL,1),(1082,NULL,NULL,1),(1179,NULL,NULL,1),(1849,NULL,NULL,1),(2596,NULL,NULL,1),(3009,NULL,NULL,1),(3010,NULL,NULL,1),(3029,NULL,NULL,1),(3130,NULL,NULL,1),(3133,NULL,NULL,1),(3263,NULL,NULL,1),(5201,NULL,NULL,1),(5256,NULL,NULL,1),(5424,NULL,NULL,1),(7656,NULL,NULL,1),(7657,NULL,NULL,1),(8320,NULL,NULL,1),(9849,NULL,NULL,1),(9850,NULL,NULL,1),(10617,NULL,NULL,1),(12538,NULL,NULL,1),(14804,NULL,NULL,1),(15608,NULL,NULL,1),(16553,NULL,NULL,1),(16827,NULL,NULL,1),(16828,NULL,NULL,1),(16829,NULL,NULL,1),(16830,NULL,NULL,1),(16831,NULL,NULL,1),(16832,NULL,NULL,1),(17011,NULL,NULL,1),(17470,NULL,NULL,1),(19597,NULL,NULL,1),(24187,NULL,NULL,1),(28663,NULL,NULL,1),(28750,NULL,NULL,1),(2637,NULL,NULL,1),(18657,NULL,NULL,1),(18658,NULL,NULL,1),(5211,NULL,NULL,1),(6798,NULL,NULL,1),(8983,NULL,NULL,1),(21052,NULL,NULL,1),(25515,NULL,NULL,1),(8921,NULL,NULL,1),(8924,NULL,NULL,1),(8925,NULL,NULL,1),(8926,NULL,NULL,1),(8927,NULL,NULL,1),(8928,NULL,NULL,1),(8929,NULL,NULL,1),(9833,NULL,NULL,1),(9834,NULL,NULL,1),(9835,NULL,NULL,1),(15798,NULL,NULL,1),(20690,NULL,NULL,1),(21669,NULL,NULL,1),(22206,NULL,NULL,1),(23380,NULL,NULL,1),(24957,NULL,NULL,1),(26386,NULL,NULL,1),(27737,NULL,NULL,1),(2812,NULL,NULL,1),(5176,NULL,NULL,1),(5177,NULL,NULL,1),(5178,NULL,NULL,1),(5179,NULL,NULL,1),(5180,NULL,NULL,1),(6780,NULL,NULL,1),(8905,NULL,NULL,1),(9739,NULL,NULL,1),(9912,NULL,NULL,1),(10318,NULL,NULL,1),(12964,NULL,NULL,1),(13009,NULL,NULL,1),(16559,NULL,NULL,1),(16560,NULL,NULL,1),(17144,NULL,NULL,1),(18104,NULL,NULL,1),(19574,NULL,NULL,1),(20566,NULL,NULL,1),(20698,NULL,NULL,1),(21667,NULL,NULL,1),(21807,NULL,NULL,1),(21887,NULL,NULL,1),(21977,NULL,NULL,1),(23979,NULL,NULL,1),(24395,NULL,NULL,1),(24396,NULL,NULL,1),(24397,NULL,NULL,1),(26121,NULL,NULL,1),(26592,NULL,NULL,1),(27286,NULL,NULL,1),(27499,NULL,NULL,1),(28883,NULL,NULL,1),(29214,NULL,NULL,1),(4043,NULL,NULL,1),(9435,NULL,NULL,1),(9575,NULL,NULL,1),(11815,NULL,NULL,1),(22438,NULL,NULL,1),(22439,NULL,NULL,1),(23722,NULL,NULL,1),(25099,NULL,NULL,1),(27820,NULL,NULL,1),(24530,NULL,NULL,1),(17962,NULL,NULL,1),(18930,NULL,NULL,1),(18931,NULL,NULL,1),(18932,NULL,NULL,1),(315,NULL,NULL,1),(545,NULL,NULL,1),(899,NULL,NULL,1),(923,NULL,NULL,1),(951,NULL,NULL,1),(1940,NULL,NULL,1),(2136,NULL,NULL,1),(2137,NULL,NULL,1),(2138,NULL,NULL,1),(5648,NULL,NULL,1),(5649,NULL,NULL,1),(7101,NULL,NULL,1),(8412,NULL,NULL,1),(8413,NULL,NULL,1),(8598,NULL,NULL,1),(10197,NULL,NULL,1),(10199,NULL,NULL,1),(10419,NULL,NULL,1),(10420,NULL,NULL,1),(10833,NULL,NULL,1),(11113,NULL,NULL,1),(11264,NULL,NULL,1),(11891,NULL,NULL,1),(13018,NULL,NULL,1),(13019,NULL,NULL,1),(13020,NULL,NULL,1),(13021,NULL,NULL,1),(13339,NULL,NULL,1),(13340,NULL,NULL,1),(13341,NULL,NULL,1),(13342,NULL,NULL,1),(13374,NULL,NULL,1),(14105,NULL,NULL,1),(14145,NULL,NULL,1),(15040,NULL,NULL,1),(15091,NULL,NULL,1),(15095,NULL,NULL,1),(15574,NULL,NULL,1),(15744,NULL,NULL,1),(15878,NULL,NULL,1),(16046,NULL,NULL,1),(16067,NULL,NULL,1),(16144,NULL,NULL,1),(16407,NULL,NULL,1),(16454,NULL,NULL,1),(17145,NULL,NULL,1),(17277,NULL,NULL,1),(17368,NULL,NULL,1),(17372,NULL,NULL,1),(18085,NULL,NULL,1),(18091,NULL,NULL,1),(18092,NULL,NULL,1),(18204,NULL,NULL,1),(18276,NULL,NULL,1),(18396,NULL,NULL,1),(18398,NULL,NULL,1),(19260,NULL,NULL,1),(20229,NULL,NULL,1),(20565,NULL,NULL,1),(20623,NULL,NULL,1),(20679,NULL,NULL,1),(20795,NULL,NULL,1),(20832,NULL,NULL,1),(20869,NULL,NULL,1),(20883,NULL,NULL,1),(22424,NULL,NULL,1),(22893,NULL,NULL,1),(22920,NULL,NULL,1),(22940,NULL,NULL,1),(23039,NULL,NULL,1),(23113,NULL,NULL,1),(23269,NULL,NULL,1),(23331,NULL,NULL,1),(24857,NULL,NULL,1),(24993,NULL,NULL,1),(25028,NULL,NULL,1),(25049,NULL,NULL,1),(25907,NULL,NULL,1),(26102,NULL,NULL,1),(26458,NULL,NULL,1),(27808,NULL,NULL,1),(27812,NULL,NULL,1),(28457,NULL,NULL,1),(29644,NULL,NULL,1),(31378,NULL,NULL,1),(116,NULL,NULL,1),(205,NULL,NULL,1),(403,NULL,NULL,1),(529,NULL,NULL,1),(548,NULL,NULL,1),(686,NULL,NULL,1),(690,NULL,NULL,1),(695,NULL,NULL,1),(701,NULL,NULL,1),(705,NULL,NULL,1),(837,NULL,NULL,1),(915,NULL,NULL,1),(943,NULL,NULL,1),(1084,NULL,NULL,1),(1088,NULL,NULL,1),(1096,NULL,NULL,1),(1106,NULL,NULL,1),(2626,NULL,NULL,1),(3110,NULL,NULL,1),(5401,NULL,NULL,1),(6041,NULL,NULL,1),(6254,NULL,NULL,1),(6255,NULL,NULL,1),(6949,NULL,NULL,1),(7322,NULL,NULL,1),(7588,NULL,NULL,1),(7641,NULL,NULL,1),(7799,NULL,NULL,1),(7800,NULL,NULL,1),(7801,NULL,NULL,1),(7802,NULL,NULL,1),(8246,NULL,NULL,1),(8292,NULL,NULL,1),(8398,NULL,NULL,1),(8406,NULL,NULL,1),(8407,NULL,NULL,1),(8408,NULL,NULL,1),(9057,NULL,NULL,1),(9081,NULL,NULL,1),(9532,NULL,NULL,1),(9613,NULL,NULL,1),(9672,NULL,NULL,1),(9771,NULL,NULL,1),(10179,NULL,NULL,1),(10180,NULL,NULL,1),(10181,NULL,NULL,1),(10391,NULL,NULL,1),(10392,NULL,NULL,1),(11085,NULL,NULL,1),(11538,NULL,NULL,1),(11659,NULL,NULL,1),(11660,NULL,NULL,1),(11661,NULL,NULL,1),(11762,NULL,NULL,1),(11763,NULL,NULL,1),(12167,NULL,NULL,1),(12471,NULL,NULL,1),(12675,NULL,NULL,1),(12737,NULL,NULL,1),(12739,NULL,NULL,1),(13322,NULL,NULL,1),(13439,NULL,NULL,1),(13440,NULL,NULL,1),(13441,NULL,NULL,1),(13442,NULL,NULL,1),(13480,NULL,NULL,1),(13482,NULL,NULL,1),(13527,NULL,NULL,1),(13748,NULL,NULL,1),(13901,NULL,NULL,1),(14103,NULL,NULL,1),(14106,NULL,NULL,1),(14109,NULL,NULL,1),(14119,NULL,NULL,1),(14122,NULL,NULL,1),(14200,NULL,NULL,1),(14871,NULL,NULL,1),(14887,NULL,NULL,1),(15043,NULL,NULL,1),(15124,NULL,NULL,1),(15207,NULL,NULL,1),(15208,NULL,NULL,1),(15230,NULL,NULL,1),(15232,NULL,NULL,1),(15234,NULL,NULL,1),(15245,NULL,NULL,1),(15254,NULL,NULL,1),(15451,NULL,NULL,1),(15472,NULL,NULL,1),(15497,NULL,NULL,1),(15530,NULL,NULL,1),(15537,NULL,NULL,1),(15549,NULL,NULL,1),(15592,NULL,NULL,1),(15598,NULL,NULL,1),(15611,NULL,NULL,1),(15612,NULL,NULL,1),(15801,NULL,NULL,1),(15979,NULL,NULL,1),(16249,NULL,NULL,1),(16408,NULL,NULL,1),(16409,NULL,NULL,1),(16410,NULL,NULL,1),(16554,NULL,NULL,1),(16570,NULL,NULL,1),(16782,NULL,NULL,1),(16783,NULL,NULL,1),(16784,NULL,NULL,1),(16799,NULL,NULL,1),(17228,NULL,NULL,1),(17393,NULL,NULL,1),(17434,NULL,NULL,1),(17435,NULL,NULL,1),(17483,NULL,NULL,1),(17503,NULL,NULL,1),(17509,NULL,NULL,1),(17668,NULL,NULL,1),(17669,NULL,NULL,1),(18081,NULL,NULL,1),(18083,NULL,NULL,1),(18086,NULL,NULL,1),(18089,NULL,NULL,1),(18111,NULL,NULL,1),(18112,NULL,NULL,1),(18138,NULL,NULL,1),(18164,NULL,NULL,1),(18187,NULL,NULL,1),(18205,NULL,NULL,1),(18211,NULL,NULL,1),(18214,NULL,NULL,1),(18217,NULL,NULL,1),(18833,NULL,NULL,1),(19136,NULL,NULL,1),(19728,NULL,NULL,1),(19729,NULL,NULL,1),(19874,NULL,NULL,1),(20295,NULL,NULL,1),(20297,NULL,NULL,1),(20298,NULL,NULL,1),(20685,NULL,NULL,1),(20720,NULL,NULL,1),(20741,NULL,NULL,1),(20791,NULL,NULL,1),(20792,NULL,NULL,1),(20801,NULL,NULL,1),(20802,NULL,NULL,1),(20805,NULL,NULL,1),(20806,NULL,NULL,1),(20807,NULL,NULL,1),(20816,NULL,NULL,1),(20819,NULL,NULL,1),(20822,NULL,NULL,1),(20824,NULL,NULL,1),(20825,NULL,NULL,1),(20829,NULL,NULL,1),(21066,NULL,NULL,1),(21067,NULL,NULL,1),(21077,NULL,NULL,1),(21141,NULL,NULL,1),(21341,NULL,NULL,1),(21369,NULL,NULL,1),(21971,NULL,NULL,1),(22336,NULL,NULL,1),(22357,NULL,NULL,1),(22414,NULL,NULL,1),(22643,NULL,NULL,1),(22665,NULL,NULL,1),(22677,NULL,NULL,1),(22709,NULL,NULL,1),(22878,NULL,NULL,1),(22937,NULL,NULL,1),(23102,NULL,NULL,1),(23267,NULL,NULL,1),(23412,NULL,NULL,1),(23592,NULL,NULL,1),(24099,NULL,NULL,1),(24668,NULL,NULL,1),(24820,NULL,NULL,1),(24821,NULL,NULL,1),(24822,NULL,NULL,1),(24823,NULL,NULL,1),(24834,NULL,NULL,1),(24835,NULL,NULL,1),(24836,NULL,NULL,1),(24837,NULL,NULL,1),(24838,NULL,NULL,1),(24942,NULL,NULL,1),(25055,NULL,NULL,1),(25304,NULL,NULL,1),(25307,NULL,NULL,1),(25424,NULL,NULL,1),(25586,NULL,NULL,1),(25811,NULL,NULL,1),(25991,NULL,NULL,1),(26006,NULL,NULL,1),(26052,NULL,NULL,1),(26098,NULL,NULL,1),(26601,NULL,NULL,1),(27382,NULL,NULL,1),(27383,NULL,NULL,1),(27646,NULL,NULL,1),(27831,NULL,NULL,1),(28311,NULL,NULL,1),(28407,NULL,NULL,1),(28448,NULL,NULL,1),(28478,NULL,NULL,1),(28479,NULL,NULL,1),(28522,NULL,NULL,1),(28526,NULL,NULL,1),(28599,NULL,NULL,1),(28796,NULL,NULL,1),(29163,NULL,NULL,1),(29169,NULL,NULL,1),(29317,NULL,NULL,1),(29640,NULL,NULL,1),(31800,NULL,NULL,1),(1826,NULL,NULL,1),(5373,NULL,NULL,1),(10319,NULL,NULL,1),(20183,NULL,NULL,1),(20184,NULL,NULL,1),(20185,NULL,NULL,1),(20186,NULL,NULL,1),(20187,NULL,NULL,1),(20188,NULL,NULL,1),(20267,NULL,NULL,1),(20268,NULL,NULL,1),(20271,NULL,NULL,1),(20280,NULL,NULL,1),(20281,NULL,NULL,1),(20282,NULL,NULL,1),(20283,NULL,NULL,1),(20284,NULL,NULL,1),(20285,NULL,NULL,1),(20286,NULL,NULL,1),(20300,NULL,NULL,1),(20301,NULL,NULL,1),(20302,NULL,NULL,1),(20303,NULL,NULL,1),(20304,NULL,NULL,1),(20341,NULL,NULL,1),(20342,NULL,NULL,1),(20343,NULL,NULL,1),(20344,NULL,NULL,1),(20345,NULL,NULL,1),(20346,NULL,NULL,1),(20352,NULL,NULL,1),(20353,NULL,NULL,1),(20354,NULL,NULL,1),(20355,NULL,NULL,1),(20411,NULL,NULL,1),(20412,NULL,NULL,1),(20413,NULL,NULL,1),(20414,NULL,NULL,1),(20425,NULL,NULL,1),(20467,NULL,NULL,1),(20961,NULL,NULL,1),(20962,NULL,NULL,1),(20963,NULL,NULL,1),(20964,NULL,NULL,1),(20965,NULL,NULL,1),(20966,NULL,NULL,1),(20967,NULL,NULL,1),(20968,NULL,NULL,1),(21183,NULL,NULL,1),(21889,NULL,NULL,1),(23590,NULL,NULL,1),(24234,NULL,NULL,1),(25061,NULL,NULL,1),(25745,NULL,NULL,1),(25751,NULL,NULL,1),(25752,NULL,NULL,1),(25753,NULL,NULL,1),(25757,NULL,NULL,1),(25758,NULL,NULL,1),(25759,NULL,NULL,1),(25760,NULL,NULL,1),(25761,NULL,NULL,1),(25762,NULL,NULL,1),(25942,NULL,NULL,1),(25943,NULL,NULL,1),(25944,NULL,NULL,1),(25945,NULL,NULL,1),(27731,NULL,NULL,1),(133,NULL,NULL,1),(143,NULL,NULL,1),(145,NULL,NULL,1),(3140,NULL,NULL,1),(8400,NULL,NULL,1),(8401,NULL,NULL,1),(8402,NULL,NULL,1),(9053,NULL,NULL,1),(9487,NULL,NULL,1),(9488,NULL,NULL,1),(10148,NULL,NULL,1),(10149,NULL,NULL,1),(10150,NULL,NULL,1),(10151,NULL,NULL,1),(10578,NULL,NULL,1),(11839,NULL,NULL,1),(11921,NULL,NULL,1),(11985,NULL,NULL,1),(11988,NULL,NULL,1),(11989,NULL,NULL,1),(12466,NULL,NULL,1),(13140,NULL,NULL,1),(13375,NULL,NULL,1),(13438,NULL,NULL,1),(14034,NULL,NULL,1),(15228,NULL,NULL,1),(15242,NULL,NULL,1),(15243,NULL,NULL,1),(15285,NULL,NULL,1),(15536,NULL,NULL,1),(15662,NULL,NULL,1),(15665,NULL,NULL,1),(16101,NULL,NULL,1),(16250,NULL,NULL,1),(16412,NULL,NULL,1),(16413,NULL,NULL,1),(16415,NULL,NULL,1),(16788,NULL,NULL,1),(17203,NULL,NULL,1),(17290,NULL,NULL,1),(18082,NULL,NULL,1),(18105,NULL,NULL,1),(18108,NULL,NULL,1),(18199,NULL,NULL,1),(18392,NULL,NULL,1),(18796,NULL,NULL,1),(19391,NULL,NULL,1),(19816,NULL,NULL,1),(20420,NULL,NULL,1),(20678,NULL,NULL,1),(20692,NULL,NULL,1),(20714,NULL,NULL,1),(20793,NULL,NULL,1),(20797,NULL,NULL,1),(20808,NULL,NULL,1),(20811,NULL,NULL,1),(20815,NULL,NULL,1),(20823,NULL,NULL,1),(21072,NULL,NULL,1),(21159,NULL,NULL,1),(21162,NULL,NULL,1),(21230,NULL,NULL,1),(21402,NULL,NULL,1),(21549,NULL,NULL,1),(22088,NULL,NULL,1),(22425,NULL,NULL,1),(23024,NULL,NULL,1),(23411,NULL,NULL,1),(23512,NULL,NULL,1),(24374,NULL,NULL,1),(24611,NULL,NULL,1),(25306,NULL,NULL,1),(39416,NULL,NULL,1),(53,NULL,NULL,2),(703,NULL,NULL,2),(1329,NULL,NULL,2),(2589,NULL,NULL,2),(2590,NULL,NULL,2),(2591,NULL,NULL,2),(5221,NULL,NULL,2),(6785,NULL,NULL,2),(6787,NULL,NULL,2),(6800,NULL,NULL,2),(8627,NULL,NULL,2),(8631,NULL,NULL,2),(8632,NULL,NULL,2),(8633,NULL,NULL,2),(8676,NULL,NULL,2),(8721,NULL,NULL,2),(8724,NULL,NULL,2),(8725,NULL,NULL,2),(8992,NULL,NULL,2),(9829,NULL,NULL,2),(9830,NULL,NULL,2),(9866,NULL,NULL,2),(9867,NULL,NULL,2),(11267,NULL,NULL,2),(11268,NULL,NULL,2),(11269,NULL,NULL,2),(11279,NULL,NULL,2),(11280,NULL,NULL,2),(11281,NULL,NULL,2),(11289,NULL,NULL,2),(11290,NULL,NULL,2),(21987,NULL,NULL,2),(23959,NULL,NULL,2),(24825,NULL,NULL,2),(25300,NULL,NULL,2),(26839,NULL,NULL,2),(26863,NULL,NULL,2),(26884,NULL,NULL,2),(27001,NULL,NULL,2),(27002,NULL,NULL,2),(27005,NULL,NULL,2),(27441,NULL,NULL,2),(34411,NULL,NULL,2),(34412,NULL,NULL,2),(34413,NULL,NULL,2);
/*!40000 ALTER TABLE `spellextra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spelloverride`
--

DROP TABLE IF EXISTS `spelloverride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spelloverride` (
  `overrideId` int(30) NOT NULL DEFAULT '0',
  `spellId` int(30) NOT NULL DEFAULT '0',
  UNIQUE KEY `overrideId` (`overrideId`,`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spelloverride`
--

LOCK TABLES `spelloverride` WRITE;
/*!40000 ALTER TABLE `spelloverride` DISABLE KEYS */;
/*!40000 ALTER TABLE `spelloverride` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spells112`
--

DROP TABLE IF EXISTS `spells112`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spells112` (
  `Id` int(100) DEFAULT '0',
  `School` int(100) DEFAULT '0',
  `Category` int(100) DEFAULT '0',
  `field4` int(100) DEFAULT '0',
  `DispelType` int(100) DEFAULT '0',
  `MechanicsType` int(100) DEFAULT '0',
  `Attributes` int(100) DEFAULT '0',
  `AttributesEx` int(100) DEFAULT '0',
  `Flags3` int(100) DEFAULT '0',
  `field10` int(100) DEFAULT '0',
  `field11` int(100) DEFAULT '0',
  `UNK12` int(100) DEFAULT '0',
  `UNK13` int(100) DEFAULT '0',
  `Targets` int(100) DEFAULT '0',
  `TargetCreatureType` int(100) DEFAULT '0',
  `RequiresSpellFocus` int(100) DEFAULT '0',
  `CasterAuraState` int(100) DEFAULT '0',
  `TargetAuraState` int(100) DEFAULT '0',
  `CastingTimeIndex` int(100) DEFAULT '0',
  `RecoveryTime` int(100) DEFAULT '0',
  `CategoryRecoveryTime` int(100) DEFAULT '0',
  `InterruptFlags` int(100) DEFAULT '0',
  `AuraInterruptFlags` int(100) DEFAULT '0',
  `ChannelInterruptFlags` int(100) DEFAULT '0',
  `procFlags` int(100) DEFAULT '0',
  `procChance` int(100) DEFAULT '0',
  `procCharges` int(100) DEFAULT '0',
  `maxLevel` int(100) DEFAULT '0',
  `baseLevel` int(100) DEFAULT '0',
  `spellLevel` int(100) DEFAULT '0',
  `DurationIndex` int(100) DEFAULT '0',
  `powerType` int(100) DEFAULT '0',
  `manaCost` int(100) DEFAULT '0',
  `manaCostPerlevel` int(100) DEFAULT '0',
  `manaPerSecond` int(100) DEFAULT '0',
  `manaPerSecondPerLevel` int(100) DEFAULT '0',
  `rangeIndex` int(100) DEFAULT '0',
  `speed` float DEFAULT '0',
  `modalNextSpell` int(100) DEFAULT '0',
  `maxstack` int(100) DEFAULT '0',
  `Totem1` int(100) DEFAULT '0',
  `Totem2` int(100) DEFAULT '0',
  `Reagent1` int(100) DEFAULT '0',
  `Reagent2` int(100) DEFAULT '0',
  `Reagent3` int(100) DEFAULT '0',
  `Reagent4` int(100) DEFAULT '0',
  `Reagent5` int(100) DEFAULT '0',
  `Reagent6` int(100) DEFAULT '0',
  `Reagent7` int(100) DEFAULT '0',
  `Reagent8` int(100) DEFAULT '0',
  `ReagentCount1` int(100) DEFAULT '0',
  `ReagentCount2` int(100) DEFAULT '0',
  `ReagentCount3` int(100) DEFAULT '0',
  `ReagentCount4` int(100) DEFAULT '0',
  `ReagentCount5` int(100) DEFAULT '0',
  `ReagentCount6` int(100) DEFAULT '0',
  `ReagentCount7` int(100) DEFAULT '0',
  `ReagentCount8` int(100) DEFAULT '0',
  `EquippedItemClass` int(100) DEFAULT '0',
  `EquippedItemSubClass` int(100) DEFAULT '0',
  `RequiredItemFlags` int(100) DEFAULT '0',
  `Effect1` int(100) DEFAULT '0',
  `Effect2` int(100) DEFAULT '0',
  `Effect3` int(100) DEFAULT '0',
  `EffectDieSides1` int(100) DEFAULT '0',
  `EffectDieSides2` int(100) DEFAULT '0',
  `EffectDieSides3` int(100) DEFAULT '0',
  `EffectBaseDice1` int(100) DEFAULT '0',
  `EffectBaseDice2` int(100) DEFAULT '0',
  `EffectBaseDice3` int(100) DEFAULT '0',
  `EffectDicePerLevel1` float DEFAULT '0',
  `EffectDicePerLevel2` float DEFAULT '0',
  `EffectDicePerLevel3` float DEFAULT '0',
  `EffectRealPointsPerLevel1` float DEFAULT '0',
  `EffectRealPointsPerLevel2` float DEFAULT '0',
  `EffectRealPointsPerLevel3` float DEFAULT '0',
  `EffectBasePoints1` int(100) DEFAULT '0',
  `EffectBasePoints2` int(100) DEFAULT '0',
  `EffectBasePoints3` int(100) DEFAULT '0',
  `Effectunk1901` int(100) DEFAULT '0',
  `Effectunk1902` int(100) DEFAULT '0',
  `Effectunk1903` int(100) DEFAULT '0',
  `EffectImplicitTargetA1` int(100) DEFAULT '0',
  `EffectImplicitTargetA2` int(100) DEFAULT '0',
  `EffectImplicitTargetA3` int(100) DEFAULT '0',
  `EffectImplicitTargetB1` int(100) DEFAULT '0',
  `EffectImplicitTargetB2` int(100) DEFAULT '0',
  `EffectImplicitTargetB3` int(100) DEFAULT '0',
  `EffectRadiusIndex1` int(100) DEFAULT '0',
  `EffectRadiusIndex2` int(100) DEFAULT '0',
  `EffectRadiusIndex3` int(100) DEFAULT '0',
  `EffectApplyAuraName1` int(100) DEFAULT '0',
  `EffectApplyAuraName2` int(100) DEFAULT '0',
  `EffectApplyAuraName3` int(100) DEFAULT '0',
  `EffectAmplitude1` int(100) DEFAULT '0',
  `EffectAmplitude2` int(100) DEFAULT '0',
  `EffectAmplitude3` int(100) DEFAULT '0',
  `Effectunknown1` float DEFAULT '0',
  `Effectunknown2` float DEFAULT '0',
  `Effectunknown3` float DEFAULT '0',
  `EffectChainTarget1` int(100) DEFAULT '0',
  `EffectChainTarget2` int(100) DEFAULT '0',
  `EffectChainTarget3` int(100) DEFAULT '0',
  `EffectSpellGroupRelation1` int(100) DEFAULT '0',
  `EffectSpellGroupRelation2` int(100) DEFAULT '0',
  `EffectSpellGroupRelation3` int(100) DEFAULT '0',
  `EffectMiscValue1` int(100) DEFAULT '0',
  `EffectMiscValue2` int(100) DEFAULT '0',
  `EffectMiscValue3` int(100) DEFAULT '0',
  `EffectTriggerSpell1` int(100) DEFAULT '0',
  `EffectTriggerSpell2` int(100) DEFAULT '0',
  `EffectTriggerSpell3` int(100) DEFAULT '0',
  `EffectPointsPerComboPoint1` float DEFAULT '0',
  `EffectPointsPerComboPoint2` float DEFAULT '0',
  `EffectPointsPerComboPoint3` float DEFAULT '0',
  `SpellVisual` int(100) DEFAULT '0',
  `field114` int(100) DEFAULT '0',
  `dummy` int(100) DEFAULT '0',
  `CoSpell` int(100) DEFAULT '0',
  `spellPriority` int(100) DEFAULT '0',
  `Name` longtext,
  `NameAlt1` longtext,
  `NameAlt2` longtext,
  `NameAlt3` longtext,
  `NameAlt4` longtext,
  `NameAlt5` longtext,
  `NameAlt6` longtext,
  `NameAlt7` longtext,
  `NameFlags` longtext,
  `Rank` longtext,
  `RankAlt1` longtext,
  `RankAlt2` longtext,
  `RankAlt3` longtext,
  `RankAlt4` longtext,
  `RankAlt5` longtext,
  `RankAlt6` longtext,
  `RankAlt7` longtext,
  `RankFlags` longtext,
  `Description` longtext,
  `DescriptionAlt1` longtext,
  `DescriptionAlt2` longtext,
  `DescriptionAlt3` longtext,
  `DescriptionAlt4` longtext,
  `DescriptionAlt5` longtext,
  `DescriptionAlt6` longtext,
  `DescriptionAlt7` longtext,
  `DescriptionFlags` longtext,
  `BuffDescription` longtext,
  `BuffDescriptionAlt1` longtext,
  `BuffDescriptionAlt2` longtext,
  `BuffDescriptionAlt3` longtext,
  `BuffDescriptionAlt4` longtext,
  `BuffDescriptionAlt5` longtext,
  `BuffDescriptionAlt6` longtext,
  `BuffDescriptionAlt7` longtext,
  `Buffdescflags` int(100) DEFAULT '0',
  `ManaCostPercentage` int(100) DEFAULT '0',
  `unkflags` int(100) DEFAULT '0',
  `StartRecoveryTime` int(100) DEFAULT '0',
  `StartRecoveryCategory` int(100) DEFAULT '0',
  `SpellFamilyName` int(100) DEFAULT '0',
  `SpellGroupType` int(100) DEFAULT '0',
  `unkne` int(100) DEFAULT '0',
  `MaxTargets` int(100) DEFAULT '0',
  `Spell_Dmg_Type` int(100) DEFAULT '0',
  `FG` int(100) DEFAULT '0',
  `FH` int(100) DEFAULT '0',
  `dmg_multiplier_1` float DEFAULT '0',
  `dmg_multiplier_2` float DEFAULT '0',
  `dmg_multiplier_3` float DEFAULT '0',
  `FL` int(100) DEFAULT '0',
  `FM` int(100) DEFAULT '0',
  `FN` int(100) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spells112`
--

LOCK TABLES `spells112` WRITE;
/*!40000 ALTER TABLE `spells112` DISABLE KEYS */;
/*!40000 ALTER TABLE `spells112` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teleport_coords`
--

DROP TABLE IF EXISTS `teleport_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teleport_coords` (
  `id` int(16) NOT NULL DEFAULT '0',
  `name` char(255) NOT NULL DEFAULT '',
  `mapId` int(16) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `totrigger` int(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teleport_coords`
--

LOCK TABLES `teleport_coords` WRITE;
/*!40000 ALTER TABLE `teleport_coords` DISABLE KEYS */;
INSERT INTO `teleport_coords` VALUES (3561,'Teleport: Stormwind',0,-8913.23,554.633,93.7944,0),(3562,'Teleport: Ironforge',0,-4981.25,-881.542,501.66,0),(3563,'Teleport: Undercity',0,1586.48,239.562,-52.149,0),(3565,'Teleport: Darnassus',1,9951.52,2280.32,1341.39,0),(3566,'Teleport: Thunder Bluff',1,-1196.22,29.0941,176.949,0),(3567,'Teleport: Orgrimmar',1,1676.21,-4315.29,61.5293,0),(17334,'Portal Effect: Stormwind',0,-8913.23,554.633,93.7944,0),(17607,'Portal Effect: Ironforge',0,-4981.25,-881.542,501.66,0),(17608,'Portal Effect: Darnassus',1,9951.52,2280.32,1341.39,0),(17609,'Portal Effect: Orgrimmar',1,1676.21,-4315.29,61.5293,0),(17610,'Portal Effect: Thunder Bluff',1,-1196.22,29.0941,176.949,0),(17611,'Portal Effect: Undercity',0,1586.48,239.562,-52.149,0),(21128,'Portal Effect: Maraudon',349,428,15,-112,0),(31,'Teleport: Goldshire',0,-9458.81,64.826,55.957,0),(33,'Teleport: Westfall',0,-9839.9,884.804,27.454,0),(34,'Teleport: Duskwood',0,-9973.92,-1633.17,26.94,0),(35,'Teleport: Elwynn',0,-9760.26,678.23,27.021,0),(427,'Teleport: Scarlet Monastery',0,2889.91,-811.148,160.332,0),(428,'Teleport: Moonbrook',0,-11025.2,1497.86,43.1953,0),(442,'Teleport: Northshire Abbey',0,-8914.38,-135.35,80.45,0),(444,'Teleport: Westfall Lighthouse',0,-11409.9,1968.42,10.4271,0),(445,'Teleport: Darkshire',0,-10413.9,-1136.88,24.1288,0),(446,'Teleport: Raven Hill Cemetary',0,-10531.2,296.656,30.9649,0),(1936,'Teleport: Anvilmar',0,-6133.84,383.79,395.54,0),(4996,'[PH] Teleport to Orgrimmar',1,1676.21,-4315.29,61.5293,0),(4997,'[PH] Teleport to Booty Bay',0,-14319.3,442.7,22.94,0),(4998,'[PH] Teleport to Grom\'Gol',0,-12372.7,204,3.07,0),(4999,'[PH] Teleport to Ratchet',1,-994.248,-3830.1,7,0),(5000,'[PH] Teleport to Undercity',0,1586.48,239.562,-52.149,0),(6348,'[PH] Teleport to Menethil Harbor',0,-3761.54,-734.7,8.04,0),(6349,'[PH] Teleport to Auberdine',1,6426.77,398.89,10.96,0),(6483,'[PH] Teleport to Felwood',1,6200,-1035,387,0),(6484,'[PH] Teleport to Balthule',1,7245,-652,35,0),(6719,'[PH] Teleport to Theramore',1,-3717.96,-4406.17,23.12,0),(8735,'[PH] Teleport to Blackfathom Deeps',1,4127.5,867.8,9.69,0),(9268,'Teleport to Darnassus - Event',1,9951.52,2280.32,1341.39,0),(11362,'Teleport to Gnomeregan',0,-5183.1,602.77,409.11,0),(11409,'Teleport to Booty Bay',0,-14319.3,442.7,22.94,0),(12520,'Teleport from Azshara Tower',1,3648,-4702,122,0),(12510,'Teleport to Azshara Tower',1,3778,-4611,228,0),(12885,'Teleport to Razelikh',0,-11235,-2834,158,0),(13044,'Teleport to Ground',0,-11072,-2859,11,0),(13142,'Teleport to Razelikh',0,-11235,-2834,158,0),(18960,'Teleport: Moonglade',1,7979,-2500,489,0),(32272,'Silvermoon',530,9473.03,-7279.67,14.2285,0),(32270,'Silvermoon',530,9473.03,-7279.67,14.2285,0),(32271,'Exodar',530,-3987.29,-11846.6,-2.01903,0),(32268,'Exodar',530,-3987.29,-11846.6,-2.01903,0),(35715,'Shattrath',530,-1863.03,4998.05,-21.1847,0),(35718,'Shattrath',530,-1863.03,4998.05,-21.1847,0),(33728,'Shattrath',530,-1863.03,4998.05,-21.1847,0);
/*!40000 ALTER TABLE `teleport_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totemspells`
--

DROP TABLE IF EXISTS `totemspells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `totemspells` (
  `spellId` int(30) NOT NULL DEFAULT '0',
  `spellToCast1` int(30) NOT NULL DEFAULT '0',
  `spellToCast2` int(30) NOT NULL DEFAULT '0',
  `spellToCast3` int(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totemspells`
--

LOCK TABLES `totemspells` WRITE;
/*!40000 ALTER TABLE `totemspells` DISABLE KEYS */;
INSERT INTO `totemspells` VALUES (1535,8443,0,0),(2484,3600,0,0),(3599,3606,0,0),(5394,5672,0,0),(5675,5677,0,0),(5730,5728,0,0),(6363,6350,0,0),(6364,6351,0,0),(6365,6352,0,0),(6375,6371,0,0),(6377,6372,0,0),(6390,6397,0,0),(6391,6398,0,0),(6392,6399,0,0),(6495,0,0,0),(8071,8072,0,0),(8075,8076,0,0),(8143,8146,0,0),(8154,8156,0,0),(8155,8157,0,0),(8160,8162,0,0),(8161,8163,0,0),(8166,8167,0,0),(8170,8172,0,0),(8177,8179,0,0),(8181,8182,0,0),(8184,8185,0,0),(8190,8188,0,0),(8227,8230,0,0),(8249,8250,0,0),(8262,0,0,0),(8264,8266,0,0),(8376,8378,0,0),(8498,8504,0,0),(8499,8505,0,0),(8512,8514,0,0),(8835,8836,0,0),(10406,10403,0,0),(10407,10404,0,0),(10408,10405,0,0),(10427,10425,0,0),(10428,10426,0,0),(10437,10435,0,0),(10438,10436,0,0),(10442,10441,0,0),(10462,10460,0,0),(10463,10461,0,0),(10478,10476,0,0),(10479,10477,0,0),(10495,10491,0,0),(10496,10493,0,0),(10497,10494,0,0),(10526,10521,0,0),(10537,10534,0,0),(10538,10535,0,0),(10585,10582,0,0),(10586,10583,0,0),(10587,10584,0,0),(10595,10596,0,0),(10600,10598,0,0),(10601,10599,0,0),(10613,10607,0,0),(10614,10611,0,0),(10627,10626,0,0),(11314,11310,0,0),(11315,11311,0,0),(12506,12504,0,0),(15038,0,0,0),(15107,15108,0,0),(15111,15109,0,0),(15112,15110,0,0),(15786,3600,0,0),(15787,15789,0,0),(15867,0,0,0),(16190,16191,0,0),(16387,15036,0,0),(17354,17355,0,0),(17359,17360,0,0),(18975,18978,0,0),(22047,0,0,0),(23419,11311,0,0),(23420,10405,0,0),(23422,10461,0,0),(23423,10611,0,0),(25359,25360,0,0),(25361,25362,0,0),(25908,25909,0,0),(27621,10611,0,0),(27623,11311,0,0),(25508,25506,0,0),(25509,25507,0,0),(25577,25576,0,0),(25546,25538,0,0),(25547,25539,0,0),(25533,25530,0,0),(8187,8188,0,0),(25552,25551,0,0),(25525,25513,0,0),(25555,25554,0,0),(25528,25527,0,0),(25587,25582,0,0),(3738,2895,0,0),(25567,25566,0,0),(25570,25569,0,0),(25574,25573,0,0),(25560,25559,0,0),(25563,25562,0,0),(30706,30708,0,0);
/*!40000 ALTER TABLE `totemspells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainers` (
  `creature_id` int(11) NOT NULL DEFAULT '0',
  `SkillLine1` int(11) NOT NULL DEFAULT '0',
  `SkillLine2` int(11) NOT NULL DEFAULT '0',
  `SkillLine3` int(11) NOT NULL DEFAULT '0',
  `SkillLine4` int(11) NOT NULL DEFAULT '0',
  `SkillLine5` int(11) NOT NULL DEFAULT '0',
  `SkillLine6` int(11) NOT NULL DEFAULT '0',
  `SkillLine7` int(11) NOT NULL DEFAULT '0',
  `SkillLine8` int(11) NOT NULL DEFAULT '0',
  `SkillLine9` int(11) NOT NULL DEFAULT '0',
  `SkillLine10` int(11) NOT NULL DEFAULT '0',
  `SkillLine11` int(11) NOT NULL DEFAULT '0',
  `SkillLine12` int(11) NOT NULL DEFAULT '0',
  `SkillLine13` int(11) NOT NULL DEFAULT '0',
  `SkillLine14` int(11) NOT NULL DEFAULT '0',
  `SkillLine15` int(11) NOT NULL DEFAULT '0',
  `SkillLine16` int(11) NOT NULL DEFAULT '0',
  `SkillLine17` int(11) NOT NULL DEFAULT '0',
  `SkillLine18` int(11) NOT NULL DEFAULT '0',
  `SkillLine19` int(11) NOT NULL DEFAULT '0',
  `SkillLine20` int(11) NOT NULL DEFAULT '0',
  `MaxLvL` int(11) NOT NULL DEFAULT '0',
  `Class` int(11) DEFAULT NULL,
  `TalkText` varchar(150) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainerspelloverride`
--

DROP TABLE IF EXISTS `trainerspelloverride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainerspelloverride` (
  `spellid` int(10) unsigned NOT NULL DEFAULT '0',
  `cost` int(10) unsigned NOT NULL DEFAULT '0',
  `requiredspell` int(10) unsigned NOT NULL DEFAULT '0',
  `deletespell` int(10) unsigned NOT NULL DEFAULT '0',
  `requiredskill` int(10) unsigned NOT NULL DEFAULT '0',
  `requiredskillvalue` int(10) unsigned NOT NULL DEFAULT '0',
  `reqlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `requiredclass` int(10) NOT NULL DEFAULT '-1',
  UNIQUE KEY `spellid` (`spellid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainerspelloverride`
--

LOCK TABLES `trainerspelloverride` WRITE;
/*!40000 ALTER TABLE `trainerspelloverride` DISABLE KEYS */;
INSERT INTO `trainerspelloverride` VALUES (196,1000,0,0,0,0,0,71),(197,1000,0,0,0,0,0,7),(198,1000,0,0,0,0,0,1032),(199,1000,0,0,0,0,0,1025),(200,10000,0,0,0,0,20,7),(201,1000,0,0,0,0,0,398),(202,1000,0,0,0,0,0,7),(227,1000,0,0,0,0,0,277),(264,1000,0,0,0,0,0,13),(266,1000,0,0,0,0,0,13),(674,1980,0,0,0,0,20,13),(750,16000,0,0,0,0,40,3),(1180,1000,0,0,0,0,0,212),(1424,4000,0,0,0,0,0,13),(1810,500,1804,1804,633,50,0,-1),(1847,1000,0,0,0,0,0,398),(2021,500,2018,2018,164,50,0,-1),(2154,500,2108,2108,165,50,0,-1),(2177,100,0,0,165,55,0,-1),(2178,100,0,0,165,60,0,-1),(2179,1000,0,0,165,110,0,-1),(2180,1400,0,0,165,120,0,-1),(2181,650,0,0,165,100,0,-1),(2280,500,2259,2259,171,50,0,-1),(2338,50,0,0,165,15,0,-1),(2339,100,0,0,171,25,0,-1),(2340,100,0,0,171,40,0,-1),(2341,250,0,0,171,55,0,-1),(2373,500,2366,2366,182,50,0,-1),(2414,120,0,0,197,40,0,-1),(2415,25,0,0,197,1,0,-1),(2416,120,0,0,197,40,0,-1),(2417,220,0,0,197,91,0,-1),(2418,220,0,0,197,91,0,-1),(2419,150,0,0,197,60,0,-1),(2421,280,0,0,197,85,0,-1),(2422,370,0,0,197,95,0,-1),(2423,250,0,0,197,75,0,-1),(2424,360,0,0,197,100,0,-1),(2552,10000,3102,3102,185,125,0,-1),(2559,50,0,0,185,10,0,-1),(2561,100,0,0,185,50,0,-1),(2562,200,0,0,185,75,0,-1),(2563,150,0,0,185,80,0,-1),(2567,1000,0,0,0,0,0,5),(2582,500,2575,2575,186,50,0,-1),(2743,50,0,0,164,1,0,-1),(2744,100,0,0,164,35,0,-1),(2745,600,0,0,164,90,0,-1),(2746,280,0,0,164,65,0,-1),(2747,600,0,0,164,91,0,-1),(2749,1000,0,0,164,105,0,-1),(2750,1000,0,0,164,105,0,-1),(2751,1400,0,0,164,120,0,-1),(2752,1500,0,0,164,125,0,-1),(2753,2600,0,0,164,145,0,-1),(2754,50,0,0,164,15,0,-1),(2755,100,0,0,164,20,0,-1),(2756,100,0,0,164,25,0,-1),(2757,1000,0,0,164,110,0,-1),(2758,1000,0,0,164,115,0,-1),(2759,1400,0,0,164,120,0,-1),(2843,10000,0,0,40,150,0,-1),(2844,18000,2835,0,40,190,0,-1),(2883,100,0,0,165,40,0,-1),(2884,650,0,0,165,100,0,-1),(2886,550,0,0,165,85,0,-1),(2966,250,0,0,197,75,0,-1),(2967,200,0,0,197,65,0,-1),(2996,50,0,0,197,10,0,-1),(3118,280,0,0,164,65,0,-1),(3119,1500,0,0,164,125,0,-1),(3178,2700,0,0,171,175,0,-1),(3179,450,0,0,171,90,0,-1),(3181,900,0,0,171,120,0,-1),(3184,50,0,0,171,15,0,-1),(3185,1125,0,0,171,125,0,-1),(3186,1350,0,0,171,130,0,-1),(3280,500,3273,3273,129,50,0,-1),(3281,100,0,0,129,40,0,-1),(3282,250,0,0,129,80,0,-1),(3283,1000,0,0,129,115,0,-1),(3298,600,0,0,164,95,0,-1),(3299,100,0,0,164,35,0,-1),(3300,310,0,0,164,91,0,-1),(3301,1200,0,0,164,130,0,-1),(3314,180,0,0,186,65,0,-1),(3315,2250,0,0,186,155,0,-1),(3316,450,0,0,186,125,0,-1),(3317,180,0,0,186,75,0,-1),(3340,100,0,0,164,20,0,-1),(3341,100,0,0,164,25,0,-1),(3342,100,0,0,164,40,0,-1),(3343,250,0,0,164,45,0,-1),(3344,320,0,0,164,75,0,-1),(3345,1000,0,0,164,110,0,-1),(3346,1200,0,0,164,130,0,-1),(3347,1500,0,0,164,135,0,-1),(3348,1500,0,0,164,125,0,-1),(3412,500,2550,2550,185,50,0,-1),(3422,3000,0,0,40,100,0,-1),(3423,35000,3420,0,40,250,0,-1),(3458,580,0,0,171,110,0,-1),(3459,2520,0,0,171,165,0,-1),(3461,2430,0,0,171,160,0,-1),(3465,5000,3101,3101,171,125,0,-1),(3516,600,0,0,164,100,0,-1),(3521,3000,0,0,164,165,0,-1),(3522,3200,0,0,164,170,0,-1),(3524,2600,0,0,164,155,0,-1),(3525,4400,0,0,164,180,0,-1),(3539,5000,3100,3100,164,125,0,-1),(3568,5000,2576,2576,186,125,0,-1),(3571,5000,2368,2368,182,125,0,-1),(3596,2250,0,0,186,165,0,-1),(3674,0,0,0,0,0,255,-1),(3675,200000000,0,0,0,0,0,-1),(3781,2000,0,0,165,150,0,-1),(3782,75,0,0,165,25,0,-1),(3783,127,0,0,197,45,0,-1),(3784,150,0,0,165,55,0,-1),(3785,280,0,0,197,80,0,-1),(3786,500,0,0,165,75,0,-1),(3787,2000,0,0,165,150,0,-1),(3788,550,0,0,165,85,0,-1),(3789,500,0,0,165,80,0,-1),(3790,1800,0,0,165,145,0,-1),(3792,1500,0,0,165,125,0,-1),(3793,1200,0,0,165,130,0,-1),(3794,1500,0,0,165,135,0,-1),(3795,2500,0,0,165,160,0,-1),(3797,2800,0,0,165,180,0,-1),(3812,5000,3104,3104,165,125,0,-1),(3814,650,0,0,197,150,0,-1),(3819,650,0,0,165,100,0,-1),(3820,1800,0,0,165,150,0,-1),(3821,50,0,0,165,35,0,-1),(3874,450,0,0,197,125,0,-1),(3875,500,0,0,197,175,0,-1),(3876,110,0,0,197,35,0,-1),(3877,150,0,0,197,60,0,-1),(3878,220,0,0,197,91,0,-1),(3879,280,0,0,197,85,0,-1),(3880,270,0,0,197,80,0,-1),(3881,450,0,0,197,110,0,-1),(3882,450,0,0,197,110,0,-1),(3884,495,0,0,197,130,0,-1),(3886,450,0,0,197,125,0,-1),(3888,675,0,0,197,150,0,-1),(3889,1080,0,0,197,185,0,-1),(3890,425,0,0,197,110,0,-1),(3893,765,0,0,197,170,0,-1),(3912,500,3908,3908,197,50,0,-1),(3913,5000,3909,3909,197,125,0,-1),(3916,104,0,0,197,30,0,-1),(3984,104,0,0,202,30,0,-1),(3985,117,0,0,202,30,0,-1),(3986,135,0,0,202,50,0,-1),(3987,155,0,0,202,50,0,-1),(3988,190,0,0,202,60,0,-1),(3990,285,0,0,202,90,0,-1),(3991,202,0,0,202,65,0,-1),(3992,225,0,0,202,75,0,-1),(3993,225,0,0,202,75,0,-1),(3994,225,0,0,202,75,0,-1),(3995,270,0,0,202,85,0,-1),(3997,360,0,0,202,100,0,-1),(3998,378,0,0,202,105,0,-1),(3999,405,0,0,202,105,0,-1),(4000,405,0,0,202,105,0,-1),(4001,428,0,0,202,110,0,-1),(4003,450,0,0,202,120,0,-1),(4005,450,0,0,202,125,0,-1),(4006,450,0,0,202,125,0,-1),(4007,450,0,0,202,125,0,-1),(4008,520,0,0,202,125,0,-1),(4009,495,0,0,202,130,0,-1),(4010,540,0,0,202,140,0,-1),(4012,540,0,0,202,145,0,-1),(4013,675,0,0,202,150,0,-1),(4014,675,0,0,202,150,0,-1),(4016,720,0,0,202,160,0,-1),(4017,810,0,0,202,170,0,-1),(4018,900,0,0,202,175,0,-1),(4019,910,0,0,202,175,0,-1),(4022,1080,0,0,202,185,0,-1),(4023,1206,0,0,202,190,0,-1),(4040,500,4036,4036,202,50,0,-1),(4041,5000,4037,4037,202,125,0,-1),(5011,1000,0,0,0,0,0,13),(5768,5000,0,0,40,120,0,-1),(6459,500,0,0,202,135,0,-1),(6460,10000,6461,6461,633,125,0,-1),(6502,100,0,0,185,50,0,-1),(6503,300,0,0,185,125,0,-1),(6511,12600,0,0,40,170,0,-1),(6520,1000,0,0,164,115,0,-1),(6522,340,0,0,197,90,0,-1),(6662,2800,0,0,165,190,0,-1),(6691,510,0,0,197,135,0,-1),(7109,22000,0,0,0,0,40,3),(7146,1000,0,0,165,115,0,-1),(7148,2500,0,0,165,160,0,-1),(7152,2500,0,0,165,175,0,-1),(7157,2800,0,0,165,190,0,-1),(7180,450,0,0,171,90,0,-1),(7182,2340,0,0,171,155,0,-1),(7225,4400,0,0,164,185,0,-1),(7409,280,0,0,164,65,0,-1),(7415,500,7411,7411,333,50,0,-1),(7416,5000,7412,7412,333,125,0,-1),(7422,70,0,0,333,15,0,-1),(7429,100,0,0,333,20,0,-1),(7431,135,0,0,202,50,0,-1),(7441,100,0,0,333,45,0,-1),(7459,100,0,0,333,50,0,-1),(7461,500,0,0,333,70,0,-1),(7626,104,0,0,197,30,0,-1),(7627,104,0,0,197,30,0,-1),(7734,500,7620,7620,356,50,0,-1),(7736,10000,7731,7731,356,125,0,-1),(7749,150,0,0,333,60,0,-1),(7797,900,0,0,333,145,0,-1),(7819,600,0,0,164,95,0,-1),(7820,600,0,0,164,100,0,-1),(7838,360,0,0,171,80,0,-1),(7839,1350,0,0,171,130,0,-1),(7842,520,0,0,171,100,0,-1),(7846,1800,0,0,171,140,0,-1),(7862,1200,0,0,333,125,0,-1),(7925,10000,3274,3274,129,125,0,-1),(7930,5000,0,0,129,150,0,-1),(7936,250,0,0,129,80,0,-1),(8336,270,0,0,202,100,0,-1),(8466,120,0,0,197,40,0,-1),(8468,428,0,0,197,110,0,-1),(8490,1190,0,0,197,160,0,-1),(8491,900,0,0,197,175,0,-1),(8619,500,8613,8613,393,50,0,-1),(8620,5000,8617,8617,393,125,0,-1),(8695,14400,5763,0,40,190,0,-1),(8701,7200,8681,0,40,140,0,-1),(8737,10000,0,0,0,0,40,68),(8738,10800,0,0,0,0,40,68),(8759,540,0,0,197,140,0,-1),(8761,540,0,0,197,145,0,-1),(8763,720,0,0,197,160,0,-1),(8765,810,0,0,197,170,0,-1),(8767,900,0,0,197,175,0,-1),(8769,1800,0,0,164,150,0,-1),(8771,1260,0,0,197,190,0,-1),(8773,900,0,0,197,175,0,-1),(8775,1000,0,0,197,180,0,-1),(8777,50,0,0,197,15,0,-1),(8801,1300,0,0,197,195,0,-1),(8805,1850,0,0,197,210,0,-1),(8807,1080,0,0,197,185,0,-1),(8810,16000,8687,0,40,180,0,-1),(8881,100,0,0,164,30,0,-1),(9061,100,0,0,165,30,0,-1),(9063,100,0,0,165,30,0,-1),(9066,450,0,0,165,91,0,-1),(9069,600,0,0,165,95,0,-1),(9075,1400,0,0,165,120,0,-1),(9150,1500,0,0,165,125,0,-1),(9210,2000,0,0,165,150,0,-1),(9211,2500,0,0,165,175,0,-1),(9212,2800,0,0,165,180,0,-1),(9213,2800,0,0,165,185,0,-1),(9214,2800,0,0,165,195,0,-1),(9272,360,0,0,202,150,0,-1),(9786,50000,3538,3538,164,200,0,-1),(9917,5000,0,0,164,200,0,-1),(9922,3400,0,0,164,200,0,-1),(9924,3400,0,0,164,200,0,-1),(9925,3400,0,0,164,200,0,-1),(9927,5000,0,0,164,205,0,-1),(9929,5000,0,0,164,205,0,-1),(9932,6000,0,0,164,210,0,-1),(9936,6000,0,0,164,215,0,-1),(9955,8000,0,0,164,225,0,-1),(9960,9000,0,0,164,230,0,-1),(9962,9000,0,0,164,230,0,-1),(9969,10000,0,0,164,235,0,-1),(9978,10000,0,0,164,245,0,-1),(9982,10000,0,0,164,245,0,-1),(9984,100,0,0,164,30,0,-1),(9988,1200,0,0,164,125,0,-1),(9989,1200,0,0,164,130,0,-1),(9990,1500,0,0,164,135,0,-1),(9994,6000,0,0,164,210,0,-1),(10002,10000,0,0,164,230,0,-1),(10004,10000,0,0,164,235,0,-1),(10008,10000,0,0,164,245,0,-1),(10012,12000,0,0,164,250,0,-1),(10016,14000,0,0,164,260,0,-1),(10099,4500,0,0,186,175,0,-1),(10100,9000,0,0,186,230,0,-1),(10249,50000,3564,3564,186,200,0,-1),(10485,2800,0,0,165,200,0,-1),(10500,3500,0,0,165,205,0,-1),(10508,3500,0,0,165,205,0,-1),(10513,4000,0,0,165,210,0,-1),(10519,4000,0,0,165,210,0,-1),(10549,4600,0,0,165,230,0,-1),(10553,4300,0,0,165,230,0,-1),(10557,4600,0,0,165,235,0,-1),(10559,4600,0,0,165,235,0,-1),(10620,4000,0,0,165,225,0,-1),(10629,4000,0,0,165,225,0,-1),(10631,4300,0,0,165,230,0,-1),(10633,5500,0,0,165,250,0,-1),(10648,5500,0,0,165,250,0,-1),(10652,12000,0,0,165,255,0,-1),(10655,3500,0,0,165,200,0,-1),(10657,50000,0,0,165,225,0,-1),(10659,50000,0,0,165,225,0,-1),(10661,50000,0,0,165,225,0,-1),(10663,50000,3811,3811,165,200,0,-1),(10769,50000,8618,8618,393,200,0,-1),(10847,0,7924,7924,129,200,0,-1),(11344,29000,8691,0,40,220,0,-1),(11345,46000,11341,0,40,260,0,-1),(11346,43200,11342,0,40,300,0,-1),(11360,27900,2837,0,40,230,0,-1),(11361,43200,11357,0,40,270,0,-1),(11401,41400,8694,0,40,260,0,-1),(11483,3530,0,0,171,185,0,-1),(11484,3530,0,0,171,195,0,-1),(11486,3600,0,0,171,205,0,-1),(11488,3600,0,0,171,205,0,-1),(11491,4320,0,0,171,215,0,-1),(11495,4820,0,0,171,230,0,-1),(11496,5010,0,0,171,235,0,-1),(11497,4820,0,0,171,235,0,-1),(11498,5500,0,0,171,240,0,-1),(11501,5800,0,0,171,250,0,-1),(11536,250,0,0,171,50,0,-1),(11612,50000,3464,3464,171,200,0,-1),(11994,50000,3570,3570,182,200,0,-1),(12100,1650,0,0,197,205,0,-1),(12101,1650,0,0,197,205,0,-1),(12102,1850,0,0,197,210,0,-1),(12103,1850,0,0,197,210,0,-1),(12104,2000,0,0,197,215,0,-1),(12105,2000,0,0,197,215,0,-1),(12106,2000,0,0,197,215,0,-1),(12110,2200,0,0,197,225,0,-1),(12111,2200,0,0,197,225,0,-1),(12112,2200,0,0,97,225,0,-1),(12113,2200,0,0,197,225,0,-1),(12114,2200,0,0,197,225,0,-1),(12115,2400,0,0,197,230,0,-1),(12116,2400,0,0,197,230,0,-1),(12117,2400,0,0,197,230,0,-1),(12119,50,0,0,197,20,0,-1),(12120,300,0,0,197,75,0,-1),(12121,2600,0,0,197,235,0,-1),(12122,2600,0,0,197,235,0,-1),(12123,2600,0,0,197,235,0,-1),(12126,2800,0,0,197,240,0,-1),(12129,3100,0,0,197,245,0,-1),(12132,3600,0,0,197,250,0,-1),(12181,50000,3910,3910,197,200,0,-1),(12610,3580,0,0,171,200,0,-1),(12628,675,0,0,202,150,0,-1),(12629,900,0,0,202,175,0,-1),(12630,900,0,0,202,175,0,-1),(12631,900,0,0,202,175,0,-1),(12632,1170,0,0,202,195,0,-1),(12633,1350,0,0,202,200,0,-1),(12634,1440,0,0,202,205,0,-1),(12635,1440,0,0,202,205,0,-1),(12636,1530,0,0,202,210,0,-1),(12637,1300,0,0,202,215,0,-1),(12638,1300,0,0,202,215,0,-1),(12640,2750,0,0,202,230,0,-1),(12641,2600,0,0,202,235,0,-1),(12643,1300,0,0,202,245,0,-1),(12644,3100,0,0,202,245,0,-1),(12657,50000,4038,4038,202,200,0,-1),(12768,2600,0,0,202,205,0,-1),(12769,1500,0,0,202,205,0,-1),(12770,1500,0,0,202,205,0,-1),(12771,1500,0,0,202,205,0,-1),(12776,2800,0,0,202,225,0,-1),(12777,2400,0,0,202,230,0,-1),(12778,2250,0,0,202,235,0,-1),(12779,2800,0,0,202,240,0,-1),(12780,2600,0,0,202,245,0,-1),(12909,2000,0,0,164,200,0,-1),(12910,1500,0,0,202,210,0,-1),(12911,1500,0,0,202,205,0,-1),(12913,1800,0,0,202,210,0,-1),(12914,2000,0,0,202,215,0,-1),(12916,2200,0,0,202,225,0,-1),(12917,2400,0,0,202,230,0,-1),(12918,2600,0,0,202,235,0,-1),(12919,2800,0,0,202,240,0,-1),(13221,12000,0,0,40,160,0,-1),(13231,20000,13220,0,40,200,0,-1),(13232,33000,13228,0,40,240,0,-1),(13233,45000,13229,0,40,280,0,-1),(13373,100,0,0,333,40,0,-1),(13499,1350,0,0,333,130,0,-1),(13502,1350,0,0,333,130,0,-1),(13504,2000,0,0,333,140,0,-1),(13531,2160,0,0,333,145,0,-1),(13539,2000,0,0,333,140,0,-1),(13609,2100,0,0,333,145,0,-1),(13623,2200,0,0,333,150,0,-1),(13627,2200,0,0,333,150,0,-1),(13629,2250,0,0,333,155,0,-1),(13634,2250,0,0,333,155,0,-1),(13636,2250,0,0,333,155,0,-1),(13638,2300,0,0,333,160,0,-1),(13641,2300,0,0,333,160,0,-1),(13643,2400,0,0,333,165,0,-1),(13645,2500,0,0,333,170,0,-1),(13649,2500,0,0,333,170,0,-1),(13658,2600,0,0,333,175,0,-1),(13660,1350,0,0,333,180,0,-1),(13662,3240,0,0,333,180,0,-1),(13666,3000,0,0,333,185,0,-1),(13694,3100,0,0,333,190,0,-1),(13696,3500,0,0,333,200,0,-1),(13701,3500,0,0,333,200,0,-1),(13703,3600,0,0,333,200,0,-1),(13749,3780,0,0,333,205,0,-1),(13798,3780,0,0,333,205,0,-1),(13891,4500,0,0,333,225,0,-1),(13906,5010,0,0,333,230,0,-1),(13921,50000,7413,7413,333,200,0,-1),(13936,5010,0,0,333,235,0,-1),(13938,5500,0,0,333,240,0,-1),(13942,5800,0,0,333,245,0,-1),(13950,5800,0,0,333,250,0,-1),(14296,200000000,0,0,0,0,0,-1),(14363,200000000,0,0,0,0,0,-1),(14381,1800,0,0,164,150,0,-1),(14382,4400,0,0,164,200,0,-1),(14805,50,0,0,333,90,0,-1),(14808,200,0,0,333,230,0,-1),(14811,2340,0,0,333,160,0,-1),(14812,2880,0,0,333,175,0,-1),(14931,4000,0,0,165,225,0,-1),(14933,4000,0,0,165,225,0,-1),(15256,1350,0,0,202,200,0,-1),(15596,7200,0,0,333,265,0,-1),(15834,4820,0,0,171,230,0,-1),(15974,4400,0,0,164,180,0,-1),(15983,1000,0,0,0,0,0,7),(15984,1000,0,0,0,0,0,47),(15985,1000,0,0,0,0,0,7),(15986,1000,0,0,0,0,0,1115),(15987,1000,0,0,0,0,0,1027),(15988,1000,0,0,0,0,0,1501),(15989,1000,0,0,0,0,0,1493),(15991,9000,0,0,0,0,0,7),(15992,1000,0,0,0,0,0,1101),(15994,1000,0,0,0,0,0,13),(15995,1000,0,0,0,0,0,13),(15996,1000,0,0,0,0,0,13),(15997,1000,0,0,0,0,0,13),(16154,18000,0,0,186,250,0,-1),(16320,1000,0,0,0,0,40,3),(16668,10000,0,0,164,250,0,-1),(16669,10000,0,0,164,250,0,-1),(16670,10000,0,0,164,250,0,-1),(17182,4820,0,0,333,250,0,-1),(17184,60000,0,0,333,250,0,-1),(17581,5010,0,0,171,250,0,-1),(18249,0,7732,7732,356,200,0,-1),(18261,0,3413,3413,185,200,0,-1),(18470,2800,0,0,197,250,0,-1),(18471,4100,0,0,197,255,0,-1),(19147,4300,0,0,165,250,0,-1),(19148,4300,0,0,165,250,0,-1),(19568,3100,0,0,202,250,0,-1),(19670,600,0,0,164,100,0,-1),(19671,1800,0,0,164,150,0,-1),(19672,3400,0,0,164,200,0,-1),(19673,12000,0,0,164,275,0,-1),(19844,1350,0,0,202,250,0,-1),(20051,9200,0,0,333,290,0,-1),(20202,12000,0,0,164,275,0,-1),(20220,50000,0,0,2,200,0,-1),(20221,50000,0,0,202,200,0,-1),(20651,650,0,0,165,100,0,-1),(20652,1800,0,0,165,150,0,-1),(20653,2800,0,0,165,200,0,-1),(20733,200000000,0,0,0,0,0,-1),(20734,200000000,0,0,0,0,0,-1),(21176,4000,0,0,185,200,0,-1),(22332,4300,0,0,165,250,0,-1),(22809,4320,0,0,171,215,0,-1),(23095,1350,0,0,202,250,0,-1),(24656,12000,0,0,165,300,0,-1),(24657,12000,0,0,165,280,0,-1),(3304,50,0,0,186,65,0,-1),(16153,18000,0,0,186,250,0,-1),(3569,2250,0,0,186,165,0,-1),(10097,4500,0,0,186,175,0,-1),(3307,450,0,0,186,125,0,-1),(2659,200,0,0,186,65,0,-1),(10098,9000,0,0,186,230,0,-1),(2658,180,0,0,186,75,0,-1),(29686,90000,0,0,186,375,0,-1),(29360,36000,0,0,186,350,0,-1),(29356,40000,0,0,186,300,0,-1),(29358,40000,0,0,186,300,0,-1),(2657,0,0,0,186,1,0,-1),(29361,90000,0,0,186,375,0,-1),(35750,10000,0,0,186,300,0,-1),(35751,10000,0,0,186,300,0,-1),(28028,80000,0,0,333,350,0,-1),(28027,40000,0,0,333,325,0,-1),(32664,10000,0,0,333,300,0,-1),(27899,12500,0,333,305,0,0,-1),(34002,12500,0,0,333,300,35,-1),(34001,12500,0,0,333,305,35,-1),(27905,12500,0,0,333,315,35,-1),(27957,12500,0,0,333,315,35,-1),(33990,20000,0,0,333,320,35,-1),(33991,12500,0,0,333,300,35,-1),(34004,15000,0,0,333,310,35,-1),(27961,15000,0,0,333,310,35,-1),(33996,15000,0,0,333,310,35,-1),(33993,12500,0,0,333,305,35,-1),(33995,25000,0,0,333,340,35,-1),(27944,15000,0,0,333,310,35,-1),(28029,100000,0,0,333,275,50,-1),(11426,0,11426,0,6,1,0,-1),(10841,0,0,0,129,240,0,-1),(18629,0,0,0,129,260,0,-1),(18630,0,0,0,129,290,0,-1),(26772,18000,0,0,197,335,0,-1),(26771,20000,0,0,197,325,0,-1),(26770,200000,0,0,197,320,0,-1),(26746,15000,0,0,197,315,0,-1),(26765,15000,0,0,197,310,0,-1),(26764,15000,0,0,197,310,0,-1),(26745,20000,0,0,197,300,0,-1),(34983,45000,0,0,0,164,255,-1),(29550,22500,0,0,164,325,0,-1),(32284,22500,0,0,164,325,0,-1),(29556,19800,0,0,164,320,0,-1),(29565,19800,0,0,164,320,0,-1),(29553,18000,0,0,164,315,0,-1),(29548,18000,0,0,164,315,0,-1),(29549,18000,0,0,164,315,0,-1),(29552,16200,0,0,164,310,0,-1),(29557,16200,0,0,164,310,0,-1),(29547,13500,0,0,164,305,0,-1),(34982,10000,0,0,164,300,0,-1),(29551,13500,0,0,164,300,0,-1),(29545,135,0,0,164,300,0,-1),(32655,9000,0,0,164,300,0,-1),(29654,15000,0,0,164,300,0,-1),(34607,15000,0,0,164,300,0,-1),(20201,10000,0,0,164,300,0,-1),(30309,45000,0,0,333,350,0,-1),(30307,45000,0,0,333,350,0,-1),(30308,45000,0,0,333,350,0,-1),(30306,18000,0,0,333,325,0,-1),(30311,22500,0,0,333,325,0,-1),(30312,18000,0,0,333,320,0,-1),(30346,13500,0,0,333,310,0,-1),(30303,9000,0,0,333,300,0,-1),(30310,13500,0,0,333,300,0,-1),(30304,9000,0,0,333,300,0,-1),(30305,9000,0,0,333,300,0,-1),(19825,18000,0,0,333,290,0,-1),(19800,9000,0,0,333,285,0,-1),(19795,9000,0,0,333,275,0,-1),(38070,20000,0,0,171,325,0,-1),(28551,50000,0,0,171,325,0,-1),(33741,30000,0,0,171,315,0,-1),(0,25000,0,171,310,0,0,-1),(33733,25000,0,0,171,310,0,-1),(28544,25000,0,0,171,305,0,-1),(33740,20000,0,0,171,300,0,-1),(33738,25000,0,0,171,300,0,-1),(33732,20000,0,0,0,171,255,-1),(17573,17000,0,0,171,285,0,-1),(17572,20000,0,0,171,285,0,-1),(17557,2000,0,0,171,275,0,-1),(17556,18000,0,0,171,275,0,-1),(17555,15000,0,0,171,270,0,-1),(17553,15000,0,0,171,260,0,-1),(17552,15000,0,0,171,255,0,-1),(35540,20000,0,0,165,340,0,-1),(32465,25000,0,165,335,0,0,-1),(32469,25000,0,0,165,335,0,-1),(32473,25000,0,0,165,330,0,-1),(32481,25000,0,0,165,330,0,-1),(32468,20000,0,0,165,325,0,-1),(32464,20000,0,0,165,320,0,-1),(32472,20000,0,0,165,320,0,-1),(32480,20000,0,0,165,320,0,-1),(32471,18000,0,0,165,315,0,-1),(32463,18000,0,0,165,310,0,-1),(32467,18000,0,0,165,310,0,-1),(32479,18000,0,0,165,310,0,-1),(32462,15000,0,0,165,300,0,-1),(19102,15000,0,0,165,300,0,-1),(19091,15000,0,0,165,300,0,-1),(19103,15000,0,0,165,300,0,-1),(32466,15000,0,0,165,300,0,-1),(32470,15000,0,0,165,300,0,-1),(19098,15000,0,0,165,300,0,-1),(19092,15000,0,0,165,300,0,-1),(32478,15000,0,0,165,300,0,-1),(32456,15000,0,0,165,300,0,-1),(32454,10000,0,0,165,300,0,-1),(19082,15000,0,0,171,290,0,-1),(19083,15000,0,0,165,290,0,-1),(19072,10000,0,0,165,290,0,-1),(19065,10000,0,0,165,275,0,-1),(19071,10000,0,0,165,280,0,-1),(19055,10000,0,0,165,270,0,-1),(19052,10000,0,0,165,265,0,-1),(1329,0,1329,0,253,1,0,-1),(1120,1000,0,0,355,1,10,-1),(7658,4500,704,0,355,1,28,-1),(7659,9900,7658,0,355,1,42,-1),(27226,63000,11717,0,355,1,69,-1),(11717,19800,7659,0,355,1,56,-1),(8288,2700,0,0,355,1,24,-1),(8289,9000,0,0,355,1,38,-1),(11675,16200,8289,0,355,1,52,-1),(27217,51300,11675,0,355,1,67,-1),(6064,10800,6063,0,593,1,34,-1),(8018,100,8017,0,373,1,8,-1),(8019,1620,8018,0,373,1,0,-1),(10399,3150,8019,0,373,1,24,-1),(16314,8100,10399,0,373,1,34,-1),(16315,16200,16314,0,373,1,44,-1),(16316,26100,16315,0,0,0,54,-1),(25479,34200,16316,0,373,1,62,-1),(25485,79200,25479,0,373,1,70,-1),(10614,24300,10613,0,373,1,52,-1),(25585,30600,10614,0,373,1,61,-1),(25587,79200,25585,0,373,1,70,-1),(11113,0,11113,0,0,0,0,128),(24858,0,24858,0,0,0,0,1024),(2894,63900,0,0,373,1,68,64),(2062,52200,0,0,373,1,66,64),(32182,45000,28880,0,373,1,70,64),(3738,42300,0,0,373,1,64,64),(24398,34200,0,0,374,1,62,64),(33736,71100,24398,0,374,1,69,64),(26926,50,0,0,755,5,0,-1),(32178,100,0,0,755,20,0,-1),(32179,100,0,0,755,20,0,-1),(31252,100,0,0,755,20,0,-1),(25283,100,0,0,755,30,0,-1),(26928,100,0,0,755,30,0,-1),(25280,180,0,0,755,50,0,-1),(25490,270,0,0,755,50,0,-1),(26927,270,0,0,755,50,0,-1),(25278,180,0,0,755,50,0,-1),(32801,180,0,0,755,50,0,-1),(25284,360,0,0,755,60,0,-1),(37818,450,0,0,755,65,0,-1),(25287,360,0,0,755,70,0,-1),(36523,540,0,0,755,75,0,-1),(38175,585,0,0,755,80,0,-1),(25317,540,0,0,755,80,0,-1),(25305,900,0,0,755,90,0,-1),(25318,720,0,0,755,100,0,-1),(36524,720,0,0,755,105,0,-1),(25498,540,0,0,755,110,0,-1),(32807,540,0,0,755,110,0,-1),(25321,1350,0,0,755,120,0,-1),(25613,1080,0,0,755,135,0,-1),(25620,1800,0,0,755,170,0,-1),(32808,1800,0,0,755,175,0,-1),(34955,2250,0,0,755,180,0,-1),(25621,1800,0,0,755,180,0,-1),(34959,2700,0,0,755,200,0,-1),(26872,2250,0,0,755,200,0,-1),(26874,4500,0,0,755,210,0,-1),(26876,2700,0,0,755,220,0,-1),(32809,3150,0,0,755,225,0,-1),(26880,3150,0,0,755,225,0,-1),(36525,3600,0,0,755,230,0,-1),(26883,3600,0,0,755,235,0,-1),(26885,4500,0,0,755,240,0,-1),(26902,9000,0,0,755,260,0,-1),(36526,9000,0,0,755,265,0,-1),(26903,9000,0,0,755,275,0,-1),(34960,9000,0,0,755,280,0,-1),(26907,9000,0,0,755,280,0,-1),(26908,10800,0,0,755,280,0,-1),(26911,13500,0,0,755,290,0,-1),(34961,9000,0,0,755,290,0,-1),(26916,20000,0,0,755,310,0,-1),(31048,20000,0,0,755,310,0,-1),(31049,20000,0,0,755,310,0,-1),(31050,25000,0,0,755,320,0,-1),(38068,20000,0,0,755,325,0,-1),(31052,30000,0,0,755,335,0,-1),(31051,30000,0,0,755,335,0,-1),(10585,9000,8190,0,0,0,36,64),(32594,2250,32593,0,374,1,70,-1),(9954,10000,9788,0,164,225,0,-1),(9974,10000,9788,0,164,245,0,-1),(36122,10000,9788,0,164,260,0,-1),(36124,9000,9788,0,164,260,0,-1),(16655,9000,9788,0,164,290,0,-1),(36129,40000,9788,0,164,330,0,-1),(36130,40000,9788,0,164,330,0,-1),(34533,40000,9788,0,164,350,0,-1),(34529,90000,9788,0,164,350,0,-1),(34534,225000,9788,0,164,375,0,-1),(36257,450000,9788,0,164,375,0,-1),(36256,450000,9788,0,164,375,0,-1),(34530,225000,9788,0,164,375,0,-1),(10003,15000,9787,0,164,235,0,-1),(10007,15000,9787,0,164,245,0,-1),(10011,15000,9787,0,164,250,0,-1),(36125,10000,9787,0,164,260,0,-1),(36128,10000,9787,0,164,260,0,-1),(36126,10000,9787,0,164,260,0,-1),(10015,15000,9787,0,164,260,0,-1),(15292,18500,9787,0,164,265,0,-1),(36135,36000,17041,0,164,330,0,-1),(36134,36000,17041,0,164,330,0,-1),(34543,90000,17041,0,164,350,0,-1),(34541,90000,17041,0,164,350,0,-1),(34542,225000,17041,0,164,375,0,-1),(36261,450000,17041,0,164,375,0,-1),(34544,225000,17041,0,164,375,0,-1),(36260,450000,17041,0,164,375,0,-1),(36137,36000,17040,0,164,330,0,-1),(36136,36000,17040,0,164,330,0,-1),(34545,90000,17040,0,164,350,0,-1),(34547,90000,17040,0,164,350,0,-1),(34548,2250,17040,0,164,375,0,-1),(34546,225000,17040,0,164,375,0,-1),(36262,450000,17040,0,164,375,0,-1),(36263,450000,17040,0,164,375,0,-1),(36133,36000,17039,0,164,330,0,-1),(36131,36000,17039,0,164,330,0,-1),(34535,90000,17039,0,164,350,0,-1),(34538,90000,17039,0,164,350,0,-1),(36258,450000,17039,0,164,375,0,-1),(34537,225000,17039,0,164,375,0,-1);
/*!40000 ALTER TABLE `trainerspelloverride` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_data`
--

DROP TABLE IF EXISTS `transport_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_data` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `name` text,
  `period` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_data`
--

LOCK TABLES `transport_data` WRITE;
/*!40000 ALTER TABLE `transport_data` DISABLE KEYS */;
INSERT INTO `transport_data` VALUES (20808,'Ratchet and Booty Bay',350818),(164871,'Orgrimmar and Undercity',356284),(175080,'Grom\'Gol Base Camp and Orgrimmar',303463),(176231,'Menethil Harbor and Theramore Isle',329313),(176244,'Teldrassil and Auberdine',325171),(176310,'Menethil Harbor and Auberdine',295680),(176495,'Grom\'Gol Base Camp and Undercity',333044),(177233,'Forgotton Coast and Feathermoon Stronghold',317038),(181646,'Exodar Ship',259920);
/*!40000 ALTER TABLE `transport_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorials` (
  `playerId` int(20) unsigned NOT NULL DEFAULT '0',
  `tut0` int(20) unsigned NOT NULL DEFAULT '0',
  `tut1` int(20) unsigned NOT NULL DEFAULT '0',
  `tut2` int(20) unsigned NOT NULL DEFAULT '0',
  `tut3` int(20) unsigned NOT NULL DEFAULT '0',
  `tut4` int(20) unsigned NOT NULL DEFAULT '0',
  `tut5` int(20) unsigned NOT NULL DEFAULT '0',
  `tut6` int(20) unsigned NOT NULL DEFAULT '0',
  `tut7` int(20) unsigned NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5106699 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorials`
--

LOCK TABLES `tutorials` WRITE;
/*!40000 ALTER TABLE `tutorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `vendorGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `itemGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `amount` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather` (
  `zoneId` bigint(20) unsigned NOT NULL DEFAULT '0',
  `effect_none` bigint(20) unsigned NOT NULL DEFAULT '0',
  `effect_rain` bigint(20) unsigned NOT NULL DEFAULT '0',
  `effect_snow` bigint(20) unsigned NOT NULL DEFAULT '0',
  `effect_weak_rain` bigint(20) unsigned NOT NULL DEFAULT '0',
  `effect_unk` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`zoneId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather`
--

LOCK TABLES `weather` WRITE;
/*!40000 ALTER TABLE `weather` DISABLE KEYS */;
/*!40000 ALTER TABLE `weather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldmap_info`
--

DROP TABLE IF EXISTS `worldmap_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worldmap_info` (
  `mapid` int(10) NOT NULL DEFAULT '0',
  `screenid` int(10) DEFAULT '0',
  `type` int(10) DEFAULT '0',
  `maxplayers` int(10) DEFAULT '0',
  `minlevel` int(11) unsigned zerofill DEFAULT '00000000001',
  `repopx` float DEFAULT '0',
  `repopy` float DEFAULT '0',
  `repopz` float DEFAULT '0',
  `repopmapid` int(5) unsigned zerofill DEFAULT '00000',
  `area_name` varchar(100) DEFAULT '0',
  `flags` int(11) unsigned NOT NULL DEFAULT '0',
  `cooldown` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldmap_info`
--

LOCK TABLES `worldmap_info` WRITE;
/*!40000 ALTER TABLE `worldmap_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `worldmap_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-04 20:58:49
