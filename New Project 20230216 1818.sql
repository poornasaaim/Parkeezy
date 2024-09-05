-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema parkingslot
--

CREATE DATABASE IF NOT EXISTS parkingslot;
USE parkingslot;

--
-- Definition of table `application`
--

DROP TABLE IF EXISTS `application`;
CREATE TABLE `application` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `slot1` varchar(45) DEFAULT NULL,
  `slot2` varchar(45) DEFAULT NULL,
  `slot3` varchar(45) DEFAULT NULL,
  `slot4` varchar(45) DEFAULT NULL,
  `slot5` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `pin` longtext,
  `status` varchar(45) DEFAULT NULL,
  `status1` varchar(45) DEFAULT NULL,
  `status2` varchar(45) DEFAULT NULL,
  `status3` varchar(45) DEFAULT NULL,
  `slotcount` varchar(45) DEFAULT NULL,
  `slot1status` varchar(45) DEFAULT NULL,
  `slot2status` varchar(45) DEFAULT NULL,
  `slot3status` varchar(45) DEFAULT NULL,
  `slot4status` varchar(45) DEFAULT NULL,
  `slot5status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` (`id`,`name`,`slot1`,`slot2`,`slot3`,`slot4`,`slot5`,`location`,`address`,`pin`,`status`,`status1`,`status2`,`status3`,`slotcount`,`slot1status`,`slot2status`,`slot3status`,`slot4status`,`slot5status`) VALUES 
 (1,'karthickk','22',NULL,NULL,NULL,NULL,'gfgdf','hfh','hfghfghh',' ',' ',' ',' ',NULL,NULL,NULL,NULL,NULL,NULL),
 (2,'vengat','22','hf','fhfghfg','hfgfg','fghfg','hfghfgh','hgfhfgh','hfghgf','Activate',' ',' ',' ',NULL,NULL,NULL,NULL,NULL,NULL),
 (3,'ram parking','r1','r2','r3','','','tambaram','tambaram','https://www.google.com/maps/place/Tambaram,+Chennai,+Tamil+Nadu/@12.922088,80.077936,13z/data=!4m6!3m5!1s0x3a525f14844aad0f:0xe16d3a66c4ce38d4!8m2!3d12.9249308!4d80.1000026!16zL20vMDVnYzM5','Activate',' ',' ',' ','3','Available','Available','',NULL,NULL),
 (4,'dhinesh','e','ee','eee','eeee','eeeee','anna nagar','hgfghfhgf','https://www.google.com/maps/place/Anna+Nagar,+Chennai,+Tamil+Nadu/@13.0899834,80.1900769,14z/data=!4m15!1m8!3m7!1s0x3a5264078822719b:0xbda01077b89581e2!2sAnna+Nagar,+Chennai,+Tamil+Nadu!3b1!8m2!3d13.0849557!4d80.2101342!16zL20vMDcwOWx5!3m5!1s0x3a5264078822719b:0xbda01077b89581e2!8m2!3d13.0849557!4d80.2101342!16zL20vMDcwOWx5','Activate',' ',' ',' ','5','Available','Available','Available','Available','Available'),
 (5,'karthick','s1','s1','','','','tnagar','tnagar','https://www.google.com/maps/place/Spiro+Prime+Tech+Services/@13.0365073,80.2142796,15z/data=!4m10!1m2!2m1!1sspiro+tnagar!3m6!1s0x3a5266ffc02eef73:0x7614807e2c4fb4e6!8m2!3d13.0365076!4d80.2307587!15sCgxzcGlybyB0bmFnYXKSARNyZXNlYXJjaF9mb3VuZGF0aW9u4AEA!16s%2Fg%2F1tfqjtgw','Activate','20',' ',' ','2','Booked','Booked','Available','Available','Available');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;


--
-- Definition of table `newuserreg`
--

DROP TABLE IF EXISTS `newuserreg`;
CREATE TABLE `newuserreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `pass1` varchar(45) DEFAULT NULL,
  `pass2` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newuserreg`
--

/*!40000 ALTER TABLE `newuserreg` DISABLE KEYS */;
INSERT INTO `newuserreg` (`id`,`name`,`email`,`mobile`,`pass1`,`pass2`,`type`,`number`,`status`) VALUES 
 (1,'karthick','vengat@gmail.com','54554353','111','111','light commercial','5we','not activate'),
 (2,'','','','','','','','not activate'),
 (3,'ram','admin@gmail.com','55','gg','5456',NULL,NULL,'not activate');
/*!40000 ALTER TABLE `newuserreg` ENABLE KEYS */;


--
-- Definition of table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ids` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `parkingname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `address` longtext NOT NULL,
  `pin` longtext NOT NULL,
  `slot` varchar(45) NOT NULL,
  `cost` varchar(45) NOT NULL,
  `cardnum` varchar(45) NOT NULL,
  `expnum` varchar(45) NOT NULL,
  `expyear` varchar(45) NOT NULL,
  `cvv` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `status1` varchar(45) NOT NULL,
  `status2` varchar(45) NOT NULL,
  `usermail` varchar(45) NOT NULL,
  `presenttime` varchar(45) NOT NULL,
  `relievingtime` varchar(45) NOT NULL,
  `parkedornot` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`id`,`ids`,`time`,`parkingname`,`location`,`address`,`pin`,`slot`,`cost`,`cardnum`,`expnum`,`expyear`,`cvv`,`username`,`status1`,`status2`,`usermail`,`presenttime`,`relievingtime`,`parkedornot`) VALUES 
 (9,'5','16/02/2023','karthick','tnagar','tnagar','https://www.google.com/maps/place/Spiro+Prime+Tech+Services/@13.0365073,80.2142796,15z/data=!4m10!1m2!2m1!1sspiro+tnagar!3m6!1s0x3a5266ffc02eef73:0x7614807e2c4fb4e6!8m2!3d13.0365076!4d80.2307587!15sCgxzcGlybyB0bmFnYXKSARNyZXNlYXJjaF9mb3VuZGF0aW9u4AEA!16s%2Fg%2F1tfqjtgw','s1','20','458652','32','3363','254','tamil','2GDHH','1','vengat@gmail.com','Downloaded','16/02/2023 18:04:59','relieved'),
 (10,'5','16/02/2023','karthick','tnagar','tnagar','https://www.google.com/maps/place/Spiro+Prime+Tech+Services/@13.0365073,80.2142796,15z/data=!4m10!1m2!2m1!1sspiro+tnagar!3m6!1s0x3a5266ffc02eef73:0x7614807e2c4fb4e6!8m2!3d13.0365076!4d80.2307587!15sCgxzcGlybyB0bmFnYXKSARNyZXNlYXJjaF9mb3VuZGF0aW9u4AEA!16s%2Fg%2F1tfqjtgw','s1','20','87578756','09','2023','897','vengat','GG726','1','vengat@gmail.com','','','');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`name`,`email`,`mobile`,`pass`,`status`) VALUES 
 (1,'karthickk','vengat@gmail.com','8489827741','11',' ');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `votinglist`
--

DROP TABLE IF EXISTS `votinglist`;
CREATE TABLE `votinglist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vname` varchar(45) DEFAULT NULL,
  `vemail` varchar(45) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `voterid` varchar(105) DEFAULT NULL,
  `thumb` varchar(105) DEFAULT NULL,
  `aadhornum` varchar(45) DEFAULT NULL,
  `address` longtext,
  `status` varchar(45) DEFAULT NULL,
  `boothname` varchar(45) DEFAULT NULL,
  `boothid` varchar(45) DEFAULT NULL,
  `boothlocation` varchar(150) DEFAULT NULL,
  `boothofficername` varchar(45) DEFAULT NULL,
  `candidatename` varchar(45) DEFAULT NULL,
  `assembly` varchar(45) DEFAULT NULL,
  `electiontype` varchar(75) DEFAULT NULL,
  `electiontime` varchar(45) DEFAULT NULL,
  `electiondate` varchar(45) DEFAULT NULL,
  `Partiesname` varchar(45) DEFAULT NULL,
  `partiessymbol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votinglist`
--

/*!40000 ALTER TABLE `votinglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `votinglist` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
