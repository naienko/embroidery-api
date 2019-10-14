-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.67-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for threaddb
CREATE DATABASE IF NOT EXISTS `threaddb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `threaddb`;

-- Dumping structure for table threaddb.company
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table threaddb.identifier
CREATE TABLE IF NOT EXISTS `identifier` (
  `id` int(11) NOT NULL auto_increment,
  `number` int(11) default NULL,
  `name2` varchar(50) collate utf8_unicode_ci default NULL,
  `name3` varchar(50) collate utf8_unicode_ci default NULL,
  `name4` varchar(50) collate utf8_unicode_ci default NULL,
  `companyId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table threaddb.shoppinglist
CREATE TABLE IF NOT EXISTS `shoppinglist` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) NOT NULL,
  `fiberId` int(11) NOT NULL,
  `notes` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table threaddb.stash
CREATE TABLE IF NOT EXISTS `stash` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) NOT NULL,
  `fiberId` int(11) NOT NULL,
  `inUse` tinyint(4) NOT NULL default '0',
  `projectNotes` text collate utf8_unicode_ci,
  `otherNotes` text collate utf8_unicode_ci,
  `howMany` int(11) NOT NULL default '1',
  `partialHank` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table threaddb.type
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table threaddb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) collate utf8_unicode_ci NOT NULL,
  `password` varchar(60) collate utf8_unicode_ci NOT NULL,
  `email` varchar(150) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
