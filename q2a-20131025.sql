-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2013 at 05:39 AM
-- Server version: 5.5.29
-- PHP Version: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `faq`
--

-- --------------------------------------------------------

--
-- Table structure for table `qa_blobs`
--

CREATE TABLE `qa_blobs` (
  `blobid` bigint(20) unsigned NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `content` mediumblob,
  `filename` varchar(255) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `cookieid` bigint(20) unsigned DEFAULT NULL,
  `createip` int(10) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`blobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_cache`
--

CREATE TABLE `qa_cache` (
  `type` char(8) CHARACTER SET ascii NOT NULL,
  `cacheid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob NOT NULL,
  `created` datetime NOT NULL,
  `lastread` datetime NOT NULL,
  PRIMARY KEY (`type`,`cacheid`),
  KEY `lastread` (`lastread`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_categories`
--

CREATE TABLE `qa_categories` (
  `categoryid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned DEFAULT NULL,
  `title` varchar(80) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `content` varchar(800) NOT NULL DEFAULT '',
  `qcount` int(10) unsigned NOT NULL DEFAULT '0',
  `position` smallint(5) unsigned NOT NULL,
  `backpath` varchar(804) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`),
  UNIQUE KEY `parentid` (`parentid`,`tags`),
  UNIQUE KEY `parentid_2` (`parentid`,`position`),
  KEY `backpath` (`backpath`(200))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qa_categorymetas`
--

CREATE TABLE `qa_categorymetas` (
  `categoryid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`categoryid`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_contentwords`
--

CREATE TABLE `qa_contentwords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  `count` tinyint(3) unsigned NOT NULL,
  `type` enum('Q','A','C','NOTE') NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_contentwords`
--

INSERT INTO `qa_contentwords` (`postid`, `wordid`, `count`, `type`, `questionid`) VALUES
(4, 140, 1, 'Q', 4),
(5, 141, 1, 'Q', 5),
(7, 185, 1, 'Q', 7),
(7, 153, 1, 'Q', 7),
(7, 154, 1, 'Q', 7),
(7, 186, 2, 'Q', 7),
(7, 187, 1, 'Q', 7),
(7, 151, 1, 'Q', 7),
(7, 188, 1, 'Q', 7),
(7, 189, 1, 'Q', 7),
(7, 190, 1, 'Q', 7),
(7, 164, 1, 'Q', 7),
(7, 191, 1, 'Q', 7),
(7, 192, 1, 'Q', 7),
(7, 193, 1, 'Q', 7),
(7, 194, 1, 'Q', 7),
(7, 152, 1, 'Q', 7),
(7, 195, 1, 'Q', 7),
(7, 196, 1, 'Q', 7),
(7, 157, 1, 'Q', 7),
(7, 197, 1, 'Q', 7),
(7, 145, 1, 'Q', 7),
(7, 167, 3, 'Q', 7),
(7, 182, 1, 'Q', 7),
(7, 198, 1, 'Q', 7),
(7, 199, 1, 'Q', 7),
(7, 200, 1, 'Q', 7),
(7, 201, 1, 'Q', 7),
(7, 168, 2, 'Q', 7),
(7, 202, 1, 'Q', 7),
(7, 203, 1, 'Q', 7),
(7, 204, 1, 'Q', 7),
(7, 205, 1, 'Q', 7),
(7, 206, 1, 'Q', 7),
(7, 179, 1, 'Q', 7),
(9, 155, 4, 'Q', 9),
(9, 156, 4, 'Q', 9),
(9, 157, 8, 'Q', 9),
(9, 158, 2, 'Q', 9),
(9, 159, 5, 'Q', 9),
(9, 160, 2, 'Q', 9),
(9, 202, 3, 'Q', 9),
(9, 203, 2, 'Q', 9),
(9, 168, 7, 'Q', 9),
(9, 204, 2, 'Q', 9),
(9, 205, 3, 'Q', 9),
(9, 206, 2, 'Q', 9),
(9, 179, 3, 'Q', 9),
(9, 191, 2, 'Q', 9),
(9, 192, 2, 'Q', 9),
(9, 193, 2, 'Q', 9),
(9, 194, 5, 'Q', 9),
(9, 152, 4, 'Q', 9),
(9, 195, 2, 'Q', 9),
(9, 196, 2, 'Q', 9),
(9, 197, 3, 'Q', 9),
(9, 173, 3, 'Q', 9),
(9, 174, 3, 'Q', 9),
(9, 150, 5, 'Q', 9),
(9, 175, 2, 'Q', 9),
(9, 161, 1, 'Q', 9),
(9, 154, 3, 'Q', 9),
(9, 147, 3, 'Q', 9),
(9, 162, 6, 'Q', 9),
(9, 163, 3, 'Q', 9),
(9, 164, 3, 'Q', 9),
(9, 165, 1, 'Q', 9),
(9, 145, 3, 'Q', 9),
(9, 167, 9, 'Q', 9),
(9, 182, 4, 'Q', 9),
(9, 198, 2, 'Q', 9),
(9, 199, 2, 'Q', 9),
(9, 200, 2, 'Q', 9),
(9, 201, 2, 'Q', 9),
(9, 247, 1, 'Q', 9),
(9, 148, 5, 'Q', 9),
(9, 248, 1, 'Q', 9),
(9, 244, 1, 'Q', 9),
(9, 222, 3, 'Q', 9),
(9, 223, 3, 'Q', 9),
(9, 169, 3, 'Q', 9),
(9, 213, 2, 'Q', 9),
(9, 224, 1, 'Q', 9),
(9, 225, 1, 'Q', 9),
(9, 226, 1, 'Q', 9),
(9, 234, 2, 'Q', 9),
(9, 188, 3, 'Q', 9),
(9, 235, 2, 'Q', 9),
(9, 236, 3, 'Q', 9),
(9, 146, 1, 'Q', 9),
(9, 149, 1, 'Q', 9),
(9, 151, 2, 'Q', 9),
(9, 153, 2, 'Q', 9),
(9, 232, 1, 'Q', 9),
(9, 241, 1, 'Q', 9),
(9, 242, 1, 'Q', 9),
(9, 237, 1, 'Q', 9),
(9, 230, 1, 'Q', 9),
(9, 238, 1, 'Q', 9),
(9, 190, 2, 'Q', 9),
(9, 216, 2, 'Q', 9),
(9, 239, 1, 'Q', 9),
(9, 240, 1, 'Q', 9),
(9, 185, 2, 'Q', 9),
(9, 186, 3, 'Q', 9),
(9, 187, 1, 'Q', 9),
(9, 189, 2, 'Q', 9),
(9, 249, 1, 'Q', 9),
(9, 220, 1, 'Q', 9),
(9, 221, 1, 'Q', 9),
(9, 184, 1, 'Q', 9),
(9, 176, 1, 'Q', 9),
(9, 177, 1, 'Q', 9),
(9, 178, 1, 'Q', 9),
(9, 180, 1, 'Q', 9),
(9, 181, 1, 'Q', 9),
(9, 183, 1, 'Q', 9),
(9, 166, 2, 'Q', 9),
(9, 170, 2, 'Q', 9),
(9, 171, 2, 'Q', 9),
(9, 172, 2, 'Q', 9),
(9, 250, 1, 'Q', 9),
(9, 251, 1, 'Q', 9),
(9, 252, 1, 'Q', 9),
(9, 253, 1, 'Q', 9),
(9, 254, 1, 'Q', 9),
(9, 255, 1, 'Q', 9),
(9, 256, 1, 'Q', 9),
(9, 257, 1, 'Q', 9),
(9, 258, 1, 'Q', 9),
(9, 259, 1, 'Q', 9),
(9, 260, 1, 'Q', 9),
(9, 214, 1, 'Q', 9),
(9, 215, 1, 'Q', 9),
(9, 217, 1, 'Q', 9),
(9, 218, 1, 'Q', 9),
(9, 219, 1, 'Q', 9),
(11, 166, 1, 'A', 9),
(11, 155, 1, 'A', 9),
(11, 215, 2, 'A', 9),
(11, 261, 1, 'A', 9),
(11, 145, 1, 'A', 9),
(11, 146, 1, 'A', 9),
(11, 147, 1, 'A', 9),
(11, 148, 2, 'A', 9),
(11, 149, 1, 'A', 9),
(11, 150, 1, 'A', 9),
(11, 151, 1, 'A', 9),
(11, 152, 1, 'A', 9),
(11, 153, 1, 'A', 9),
(11, 154, 1, 'A', 9),
(11, 237, 1, 'A', 9),
(11, 156, 2, 'A', 9),
(11, 230, 1, 'A', 9),
(11, 205, 1, 'A', 9),
(11, 238, 1, 'A', 9),
(11, 190, 1, 'A', 9),
(11, 216, 2, 'A', 9),
(11, 239, 1, 'A', 9),
(11, 240, 1, 'A', 9),
(11, 213, 1, 'A', 9),
(11, 214, 1, 'A', 9),
(11, 163, 1, 'A', 9),
(11, 217, 1, 'A', 9),
(11, 218, 1, 'A', 9),
(11, 219, 1, 'A', 9),
(11, 186, 1, 'A', 9),
(14, 185, 2, 'Q', 14),
(14, 189, 2, 'Q', 14),
(14, 249, 1, 'Q', 14),
(14, 202, 1, 'Q', 14),
(14, 155, 2, 'Q', 14),
(14, 157, 3, 'Q', 14),
(14, 156, 1, 'Q', 14),
(14, 158, 1, 'Q', 14),
(14, 159, 1, 'Q', 14),
(14, 160, 1, 'Q', 14),
(14, 176, 1, 'Q', 14),
(14, 177, 1, 'Q', 14),
(14, 178, 1, 'Q', 14),
(14, 152, 1, 'Q', 14),
(14, 179, 1, 'Q', 14),
(14, 180, 1, 'Q', 14),
(14, 181, 1, 'Q', 14),
(14, 174, 1, 'Q', 14),
(14, 182, 1, 'Q', 14),
(14, 183, 1, 'Q', 14),
(14, 153, 1, 'Q', 14),
(14, 154, 1, 'Q', 14),
(14, 186, 2, 'Q', 14),
(14, 187, 1, 'Q', 14),
(14, 151, 1, 'Q', 14),
(14, 188, 1, 'Q', 14),
(14, 190, 1, 'Q', 14),
(14, 164, 1, 'Q', 14),
(14, 213, 1, 'Q', 14),
(14, 224, 1, 'Q', 14),
(14, 225, 1, 'Q', 14),
(14, 222, 1, 'Q', 14),
(14, 223, 1, 'Q', 14),
(14, 226, 1, 'Q', 14),
(16, 185, 1, 'Q', 16),
(16, 189, 1, 'Q', 16),
(16, 249, 1, 'Q', 16),
(16, 202, 2, 'Q', 16),
(16, 155, 2, 'Q', 16),
(16, 157, 5, 'Q', 16),
(16, 173, 3, 'Q', 16),
(16, 174, 3, 'Q', 16),
(16, 150, 5, 'Q', 16),
(16, 175, 3, 'Q', 16),
(16, 220, 1, 'Q', 16),
(16, 221, 1, 'Q', 16),
(16, 182, 2, 'Q', 16),
(16, 222, 2, 'Q', 16),
(16, 223, 2, 'Q', 16),
(16, 184, 1, 'Q', 16),
(16, 168, 2, 'Q', 16),
(16, 250, 3, 'Q', 16),
(16, 251, 3, 'Q', 16),
(16, 252, 3, 'Q', 16),
(16, 253, 3, 'Q', 16),
(16, 197, 4, 'Q', 16),
(16, 254, 3, 'Q', 16),
(16, 255, 3, 'Q', 16),
(16, 256, 3, 'Q', 16),
(16, 257, 3, 'Q', 16),
(16, 258, 3, 'Q', 16),
(16, 259, 3, 'Q', 16),
(16, 260, 3, 'Q', 16),
(16, 166, 1, 'Q', 16),
(16, 262, 1, 'Q', 16),
(16, 169, 1, 'Q', 16),
(16, 172, 1, 'Q', 16),
(16, 183, 1, 'Q', 16),
(16, 263, 1, 'Q', 16),
(16, 191, 1, 'Q', 16),
(16, 192, 1, 'Q', 16),
(16, 193, 1, 'Q', 16),
(16, 194, 1, 'Q', 16),
(16, 152, 3, 'Q', 16),
(16, 195, 1, 'Q', 16),
(16, 196, 1, 'Q', 16),
(16, 145, 3, 'Q', 16),
(16, 146, 2, 'Q', 16),
(16, 147, 2, 'Q', 16),
(16, 148, 2, 'Q', 16),
(16, 149, 2, 'Q', 16),
(16, 151, 2, 'Q', 16),
(16, 153, 2, 'Q', 16),
(16, 154, 2, 'Q', 16),
(16, 167, 3, 'Q', 16),
(16, 198, 1, 'Q', 16),
(16, 199, 1, 'Q', 16),
(16, 200, 1, 'Q', 16),
(16, 201, 1, 'Q', 16),
(16, 213, 1, 'Q', 16),
(16, 224, 1, 'Q', 16),
(16, 225, 1, 'Q', 16),
(16, 226, 1, 'Q', 16),
(16, 156, 3, 'Q', 16),
(16, 158, 1, 'Q', 16),
(16, 159, 1, 'Q', 16),
(16, 160, 1, 'Q', 16),
(16, 237, 1, 'Q', 16),
(16, 230, 1, 'Q', 16),
(16, 205, 1, 'Q', 16),
(16, 238, 1, 'Q', 16),
(16, 190, 1, 'Q', 16),
(16, 216, 1, 'Q', 16),
(16, 239, 1, 'Q', 16),
(16, 240, 1, 'Q', 16),
(17, 185, 1, 'Q', 17),
(17, 189, 1, 'Q', 17),
(17, 249, 1, 'Q', 17),
(17, 202, 2, 'Q', 17),
(17, 155, 2, 'Q', 17),
(17, 157, 5, 'Q', 17),
(17, 173, 3, 'Q', 17),
(17, 174, 3, 'Q', 17),
(17, 150, 5, 'Q', 17),
(17, 175, 3, 'Q', 17),
(17, 220, 1, 'Q', 17),
(17, 221, 1, 'Q', 17),
(17, 182, 2, 'Q', 17),
(17, 222, 2, 'Q', 17),
(17, 223, 2, 'Q', 17),
(17, 184, 1, 'Q', 17),
(17, 168, 2, 'Q', 17),
(17, 250, 3, 'Q', 17),
(17, 251, 3, 'Q', 17),
(17, 252, 3, 'Q', 17),
(17, 253, 3, 'Q', 17),
(17, 197, 4, 'Q', 17),
(17, 254, 3, 'Q', 17),
(17, 255, 3, 'Q', 17),
(17, 256, 3, 'Q', 17),
(17, 257, 3, 'Q', 17),
(17, 258, 3, 'Q', 17),
(17, 259, 3, 'Q', 17),
(17, 260, 3, 'Q', 17),
(17, 166, 1, 'Q', 17),
(17, 262, 1, 'Q', 17),
(17, 169, 1, 'Q', 17),
(17, 172, 1, 'Q', 17),
(17, 183, 1, 'Q', 17),
(17, 263, 1, 'Q', 17),
(17, 191, 1, 'Q', 17),
(17, 192, 1, 'Q', 17),
(17, 193, 1, 'Q', 17),
(17, 194, 1, 'Q', 17),
(17, 152, 3, 'Q', 17),
(17, 195, 1, 'Q', 17),
(17, 196, 1, 'Q', 17),
(17, 145, 3, 'Q', 17),
(17, 146, 2, 'Q', 17),
(17, 147, 2, 'Q', 17),
(17, 148, 2, 'Q', 17),
(17, 149, 2, 'Q', 17),
(17, 151, 2, 'Q', 17),
(17, 153, 2, 'Q', 17),
(17, 154, 2, 'Q', 17),
(17, 167, 3, 'Q', 17),
(17, 198, 1, 'Q', 17),
(17, 199, 1, 'Q', 17),
(17, 200, 1, 'Q', 17),
(17, 201, 1, 'Q', 17),
(17, 213, 1, 'Q', 17),
(17, 224, 1, 'Q', 17),
(17, 225, 1, 'Q', 17),
(17, 226, 1, 'Q', 17),
(17, 156, 3, 'Q', 17),
(17, 158, 1, 'Q', 17),
(17, 159, 1, 'Q', 17),
(17, 160, 1, 'Q', 17),
(17, 237, 1, 'Q', 17),
(17, 230, 1, 'Q', 17),
(17, 205, 1, 'Q', 17),
(17, 238, 1, 'Q', 17),
(17, 190, 1, 'Q', 17),
(17, 216, 1, 'Q', 17),
(17, 239, 1, 'Q', 17),
(17, 240, 1, 'Q', 17),
(19, 322, 1, 'Q', 19),
(8, 267, 1, 'Q', 8),
(8, 268, 1, 'Q', 8),
(8, 269, 1, 'Q', 8),
(8, 270, 1, 'Q', 8),
(8, 29, 4, 'Q', 8),
(8, 271, 1, 'Q', 8),
(8, 272, 1, 'Q', 8),
(8, 17, 1, 'Q', 8),
(8, 273, 1, 'Q', 8),
(8, 274, 1, 'Q', 8),
(8, 275, 1, 'Q', 8),
(8, 276, 1, 'Q', 8),
(8, 277, 1, 'Q', 8),
(8, 87, 2, 'Q', 8),
(8, 92, 1, 'Q', 8),
(8, 278, 1, 'Q', 8),
(8, 279, 1, 'Q', 8),
(8, 280, 1, 'Q', 8),
(8, 281, 2, 'Q', 8),
(8, 116, 2, 'Q', 8),
(8, 282, 1, 'Q', 8),
(8, 211, 2, 'Q', 8),
(8, 283, 2, 'Q', 8),
(8, 85, 1, 'Q', 8),
(8, 86, 1, 'Q', 8),
(8, 82, 1, 'Q', 8),
(8, 212, 1, 'Q', 8),
(8, 284, 1, 'Q', 8),
(8, 285, 1, 'Q', 8),
(8, 286, 1, 'Q', 8),
(8, 287, 1, 'Q', 8),
(8, 288, 1, 'Q', 8),
(8, 289, 1, 'Q', 8),
(8, 290, 1, 'Q', 8),
(8, 291, 2, 'Q', 8),
(8, 69, 2, 'Q', 8),
(8, 70, 2, 'Q', 8),
(8, 292, 1, 'Q', 8),
(8, 293, 1, 'Q', 8),
(8, 113, 1, 'Q', 8),
(8, 294, 1, 'Q', 8),
(8, 295, 1, 'Q', 8),
(8, 296, 2, 'Q', 8),
(8, 297, 2, 'Q', 8),
(8, 58, 1, 'Q', 8),
(8, 298, 1, 'Q', 8),
(8, 4, 1, 'Q', 8),
(8, 299, 1, 'Q', 8),
(8, 300, 1, 'Q', 8),
(8, 301, 1, 'Q', 8),
(8, 302, 1, 'Q', 8),
(8, 303, 1, 'Q', 8),
(8, 304, 1, 'Q', 8),
(8, 305, 1, 'Q', 8),
(8, 306, 1, 'Q', 8),
(8, 307, 1, 'Q', 8),
(8, 35, 1, 'Q', 8),
(8, 308, 1, 'Q', 8),
(8, 61, 1, 'Q', 8),
(8, 309, 1, 'Q', 8),
(8, 28, 1, 'Q', 8),
(8, 310, 1, 'Q', 8),
(8, 311, 1, 'Q', 8),
(8, 312, 1, 'Q', 8),
(8, 67, 1, 'Q', 8),
(8, 313, 1, 'Q', 8),
(8, 314, 1, 'Q', 8),
(13, 138, 1, 'A', 8),
(13, 315, 1, 'A', 8),
(18, 317, 1, 'A', 8),
(21, 326, 1, 'Q', 21),
(22, 328, 1, 'NOTE', 21),
(22, 329, 1, 'NOTE', 21),
(23, 173, 1, 'Q', 23),
(23, 174, 1, 'Q', 23),
(23, 150, 1, 'Q', 23),
(23, 175, 1, 'Q', 23),
(23, 185, 1, 'Q', 23),
(23, 189, 1, 'Q', 23),
(23, 249, 1, 'Q', 23),
(23, 202, 1, 'Q', 23),
(23, 155, 1, 'Q', 23),
(23, 157, 2, 'Q', 23),
(23, 166, 1, 'Q', 23),
(23, 167, 1, 'Q', 23),
(23, 168, 2, 'Q', 23),
(23, 169, 1, 'Q', 23),
(23, 170, 1, 'Q', 23),
(23, 162, 1, 'Q', 23),
(23, 171, 1, 'Q', 23),
(23, 159, 1, 'Q', 23),
(23, 148, 2, 'Q', 23),
(23, 172, 1, 'Q', 23),
(23, 213, 1, 'Q', 23),
(23, 214, 1, 'Q', 23),
(23, 215, 1, 'Q', 23),
(23, 216, 1, 'Q', 23),
(23, 163, 1, 'Q', 23),
(23, 217, 1, 'Q', 23),
(23, 218, 1, 'Q', 23),
(23, 219, 1, 'Q', 23),
(23, 186, 1, 'Q', 23),
(23, 220, 1, 'Q', 23),
(23, 221, 1, 'Q', 23),
(23, 182, 1, 'Q', 23),
(23, 222, 1, 'Q', 23),
(23, 223, 1, 'Q', 23),
(23, 184, 1, 'Q', 23),
(25, 366, 1, 'NOTE', 19),
(20, 367, 1, 'A', 19),
(26, 220, 1, 'Q', 26),
(26, 221, 1, 'Q', 26),
(26, 182, 1, 'Q', 26),
(26, 222, 1, 'Q', 26),
(26, 223, 1, 'Q', 26),
(26, 157, 1, 'Q', 26),
(26, 184, 1, 'Q', 26),
(26, 168, 3, 'Q', 26),
(26, 202, 1, 'Q', 26),
(26, 203, 1, 'Q', 26),
(26, 204, 1, 'Q', 26),
(26, 205, 1, 'Q', 26),
(26, 206, 1, 'Q', 26),
(26, 179, 1, 'Q', 26),
(26, 145, 1, 'Q', 26),
(26, 146, 1, 'Q', 26),
(26, 147, 1, 'Q', 26),
(26, 148, 2, 'Q', 26),
(26, 149, 1, 'Q', 26),
(26, 150, 1, 'Q', 26),
(26, 151, 1, 'Q', 26),
(26, 152, 1, 'Q', 26),
(26, 153, 1, 'Q', 26),
(26, 154, 1, 'Q', 26),
(26, 166, 1, 'Q', 26),
(26, 167, 1, 'Q', 26),
(26, 169, 1, 'Q', 26),
(26, 170, 1, 'Q', 26),
(26, 162, 1, 'Q', 26),
(26, 171, 1, 'Q', 26),
(26, 159, 1, 'Q', 26),
(26, 172, 1, 'Q', 26),
(27, 85, 1, 'Q', 27),
(27, 44, 1, 'Q', 27),
(27, 19, 1, 'Q', 27),
(27, 20, 1, 'Q', 27),
(27, 371, 1, 'Q', 27),
(27, 34, 2, 'Q', 27),
(27, 372, 1, 'Q', 27),
(27, 373, 2, 'Q', 27),
(27, 96, 2, 'Q', 27),
(27, 54, 1, 'Q', 27),
(27, 374, 1, 'Q', 27),
(27, 375, 1, 'Q', 27),
(27, 376, 1, 'Q', 27),
(27, 23, 1, 'Q', 27),
(27, 212, 1, 'Q', 27),
(27, 15, 4, 'Q', 27),
(27, 377, 1, 'Q', 27),
(27, 369, 1, 'Q', 27),
(27, 265, 1, 'Q', 27),
(27, 60, 1, 'Q', 27),
(27, 29, 2, 'Q', 27),
(27, 378, 1, 'Q', 27),
(27, 379, 1, 'Q', 27),
(27, 51, 1, 'Q', 27),
(27, 380, 1, 'Q', 27),
(27, 381, 1, 'Q', 27),
(27, 133, 1, 'Q', 27),
(27, 382, 1, 'Q', 27),
(27, 383, 1, 'Q', 27),
(27, 384, 1, 'Q', 27),
(27, 90, 1, 'Q', 27),
(27, 91, 1, 'Q', 27),
(27, 385, 1, 'Q', 27);

-- --------------------------------------------------------

--
-- Table structure for table `qa_cookies`
--

CREATE TABLE `qa_cookies` (
  `cookieid` bigint(20) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `createip` int(10) unsigned NOT NULL,
  `written` datetime DEFAULT NULL,
  `writeip` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cookieid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_cookies`
--

INSERT INTO `qa_cookies` (`cookieid`, `created`, `createip`, `written`, `writeip`) VALUES
(1875076761638634850, '2013-09-03 17:15:10', 0, '2013-09-03 17:15:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_iplimits`
--

CREATE TABLE `qa_iplimits` (
  `ip` int(10) unsigned NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `ip` (`ip`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_iplimits`
--

INSERT INTO `qa_iplimits` (`ip`, `action`, `period`, `count`) VALUES
(0, 'A', 382833, 2),
(0, 'L', 384061, 1),
(0, 'Q', 383720, 1),
(0, 'R', 384061, 1),
(0, 'V', 383721, 2),
(0, 'W', 382712, 2),
(175112364, 'A', 383025, 1),
(175112364, 'F', 383024, 1),
(175112364, 'L', 383455, 1),
(175112364, 'Q', 383001, 2),
(175112364, 'R', 383024, 1),
(175112364, 'V', 383025, 1),
(175112443, 'A', 383025, 1),
(175112443, 'Q', 383025, 1),
(175112443, 'R', 383025, 1),
(175112551, 'A', 382689, 1),
(175112551, 'L', 382688, 1),
(175112551, 'Q', 382689, 1),
(2130706433, 'L', 383511, 5),
(2130706433, 'Q', 383218, 1),
(2130706433, 'R', 382837, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qa_messages`
--

CREATE TABLE `qa_messages` (
  `messageid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('PUBLIC','PRIVATE') NOT NULL DEFAULT 'PRIVATE',
  `fromuserid` int(10) unsigned NOT NULL,
  `touserid` int(10) unsigned NOT NULL,
  `content` varchar(8000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`messageid`),
  KEY `type` (`type`,`fromuserid`,`touserid`,`created`),
  KEY `touserid` (`touserid`,`type`,`created`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `qa_messages`
--

INSERT INTO `qa_messages` (`messageid`, `type`, `fromuserid`, `touserid`, `content`, `format`, `created`) VALUES
(1, 'PUBLIC', 1, 1, 'kk', '', '2013-08-29 16:40:19'),
(2, 'PUBLIC', 1, 1, 'kkkkk', '', '2013-08-29 16:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `qa_options`
--

CREATE TABLE `qa_options` (
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_options`
--

INSERT INTO `qa_options` (`title`, `content`) VALUES
('allow_change_usernames', '0'),
('allow_close_questions', '1'),
('allow_login_email_only', '0'),
('allow_multi_answers', '1'),
('allow_no_category', '0'),
('allow_no_sub_category', '0'),
('allow_private_messages', '0'),
('allow_self_answer', '1'),
('allow_user_walls', '0'),
('allow_view_q_bots', '1'),
('approve_user_required', ''),
('avatar_allow_gravatar', '0'),
('avatar_allow_upload', '0'),
('avatar_default_blobid', ''),
('avatar_default_height', ''),
('avatar_default_show', '0'),
('avatar_default_width', ''),
('avatar_message_list_size', '20'),
('avatar_profile_size', '200'),
('avatar_q_list_size', '0'),
('avatar_q_page_a_size', '40'),
('avatar_q_page_c_size', '20'),
('avatar_q_page_q_size', '50'),
('avatar_store_size', '200'),
('avatar_users_size', '30'),
('block_bad_words', ''),
('block_ips_write', ''),
('cache_acount', '4'),
('cache_ccount', ''),
('cache_flaggedcount', '0'),
('cache_qcount', '13'),
('cache_queuedcount', ''),
('cache_tagcount', '9'),
('cache_uapprovecount', '6'),
('cache_unaqcount', '10'),
('cache_unselqcount', '10'),
('cache_unupaqcount', '13'),
('cache_userpointscount', '7'),
('captcha_module', 'reCAPTCHA'),
('captcha_on_anon_post', '1'),
('captcha_on_feedback', '1'),
('captcha_on_register', '1'),
('captcha_on_reset_password', '1'),
('captcha_on_unapproved', ''),
('captcha_on_unconfirmed', '0'),
('columns_tags', '3'),
('columns_users', '2'),
('comment_on_as', '1'),
('comment_on_qs', '1'),
('confirm_user_emails', '1'),
('confirm_user_required', ''),
('custom_answer', ''),
('custom_ask', ''),
('custom_comment', ''),
('custom_footer', ''),
('custom_header', '<!--<style>\n.right-button {\n    text-align: center; padding: 12px;\n}\n.right-button a{\n    color: #fff; background-color: #9d9d9d; padding: 12px;  border-radius: 3px;\n}\n.right-button a:link{\n    text-decoration: none;\n}\n.right-button a:hover{\n    color: #fff;\n    background-color: #7e7e7e;\n    padding: 12px;\n     border-radius: 3px;\n}\n</style>\n\n<p style="float: right; padding-right: 10px; padding-top:35px;"><b  class="right-button"> <a href="http://sphinx.oupeng.com/" target="_blank">↺ 回到开发者中心</a></b></p>-->'),
('custom_home_content', ''),
('custom_home_heading', ''),
('custom_in_head', ''),
('custom_register', ''),
('custom_sidebar', '<style>\n.sidebar-button{\n border-radius: 3px; \n  height: 32px; \n  background-color: #62717f;\n  padding: 12px;\n  color: #eee; \n text-align: center;\n font-size: 18px;\n}\n.sidebar-button a{\n color: #eee; \n text-decoration:none;\n}\n</style>\n\n<p class="sidebar-button"><b style="font-family: arial; font-size: 20px; padding-right: 10px;">?</b><a href="/q2a/faq">查看常见问题解答</a></p>\n\n<p style="padding-left: 5px; font-size: 12px;">欢迎来到 Sphinx HTML5 游戏引擎的问答专区 ，有什么不明白的问题或 BUG 反馈的可以尽管在这里提问，你将会收到 Sphinx 内核开发团队的回答。</p>\n\n<!--<p align="center"><img src="http://localhost:8888/sphinx-download.png" /></p>--><br>\n<p style="font-size: 19px; line-height: 0px;"><b>1.1 模拟器版本主要更新</b></p>\n<p style="font-size: 10px; border-radius: 2px; padding: 8px; background-color: #fbfbfb; border: 1px solid #dadada;">· 优化资源的管理，减少不必要的图片编解码过程<br>\n· 优化纹理图片的管理，仅对小图片做atlas<br>\n· 解决了内存不足后再也不能加载资源的问题<br>\n· 解决了嵌入BASE64格式的图片不能显示的问题<br>\n· 优化了圆、多边形、线的绘制性能<br>\n· 优化了渐变效果的绘图性能<br>\n· 解决了Canvas自己画自己的问题</p>\n<p style="font-size: 10px; font-style: italic; color: #ccc;">（模拟器和打包SDK同步更新）</p>'),
('custom_sidepanel', ''),
('custom_welcome', ''),
('db_version', '56'),
('do_ask_check_qs', '0'),
('do_close_on_select', '0'),
('do_complete_tags', '1'),
('do_count_q_views', '1'),
('do_example_tags', '1'),
('editor_for_as', 'WYSIWYG Editor'),
('editor_for_cs', ''),
('editor_for_qs', 'WYSIWYG Editor'),
('email_privacy', '隐私：你的邮箱地址不会被共享或者出售给第三方。'),
('embed_smileys', '1'),
('embed_smileys_animated', ''),
('embed_smileys_css', '.smiley-button {\n         cursor:pointer !important;\n        }\n       .smiley-box {\n         background: none repeat scroll 0 0 rgba(255, 255, 255, 0.8) !important;\n         border: 1px solid black !important;\n         padding: 10px !important;\n         display: none;\n          width: 378px;\n         margin: 7px 0 0 20px;\n         z-index: 1000 !important;\n         position: absolute !important;\n        }\n       .wmd-button-bar{\n          min-height:16px;\n          width:auto !important;\n          margin-right:36px !important;\n         position:relative !important;\n       }\n       .wmd-button-bar .smiley-button {\n          position:absolute !important;\n         right:-25px !important;\n         top:3px !important;\n       }\n       .wmd-button-bar .smiley-box {\n         margin: 24px 0 0 169px !important;\n        }\n       .smiley-child {\n         margin:4px !important;\n          cursor:pointer !important;\n        }'),
('embed_smileys_editor_button', ''),
('embed_smileys_markdown_button', '1'),
('event_logger_to_database', ''),
('event_logger_to_files', ''),
('extra_field_active', '0'),
('extra_field_display', '0'),
('extra_field_label', ''),
('extra_field_prompt', ''),
('facebook_app_id', ''),
('facebook_app_secret', ''),
('faq_css', '.notify-container {\n  left: 0;\n  right: 0;\n top: 0;\n padding: 0;\n position: fixed;\n  width: 100%;\n  z-index: 10000;\n}\n.notify {\n background-color: #F6DF30;\n  color: #444444;\n font-weight: bold;\n  width: 100%;\n  text-align: center;\n font-family: sans-serif;\n  font-size: 14px;\n  padding: 10px 0;\n  position:relative;\n}\n.notify-close {\n  color: #735005;\n cursor: pointer;\n  font-size: 18px;\n  line-height: 18px;\n  padding: 0 3px;\n position: absolute;\n right: 8px;\n text-decoration: none;\n  top: 8px;\n}\n.qa-faq-section-title {\n font-size:125%;\n font-weight:bold;\n margin:10px 0 5px;\n  cursor:pointer;\n}\n.qa-faq-section-text {\n  display:none;\n margin:0 0 10px 10px;\n}'),
('faq_list_type', ''),
('faq_notify_show', ''),
('faq_notify_text', 'First time here?  Checkout the ^faq!'),
('faq_page_slug', 'FAQ'),
('faq_page_title', '常见问题解答'),
('faq_page_url', 'faq'),
('faq_post_html', '<br/>如果还有任何其他问题，欢迎 <a href="http://10.112.0.172:8888/q2a/index.php/ask" target="_blank">提问</a> 或者给我们 <a href="^qa_path(feedback)">提供反馈</a>.'),
('faq_pre_html', 'The following is basic information about our forum.  Please read this before posting questions or answers if you are unfamiliar with this sort of forum.  Click on any question to show or hide the answer.'),
('faq_section_0', 'Most importantly, questions should be <strong>relevant to our community</strong>.  Before you ask, please make sure to search for a similar question. You can search for questions by their title or tags.'),
('faq_section_0_title', 'What kinds of questions can I ask here?'),
('faq_section_1', 'Please avoid asking questions that are not related to our community, too subjective or argumentative.'),
('faq_section_1_title', 'What kinds of questions should be avoided?'),
('faq_section_2', '^site_title is a <strong>question and answer</strong> site - it is <strong>not</strong> a discussion group. Please avoid holding debates in your answers as they tend to dilute the quality of  the forum. <br/><br/>For brief discussion, or to thank someone for their answer, please post comments, not answers.'),
('faq_section_2_title', 'What should I avoid in my answers?'),
('faq_section_3', 'The short answer is: <strong>you.</strong>  This website is moderated by the users.  Points system allows users to earn rights to perform a variety of moderation tasks.'),
('faq_section_3_title', 'Who moderates this community?'),
('faq_section_4', 'When a question or answer is voted up, the user who posted it will gain points. These points serve as a rough measure of the community trust in that person. Various moderation tasks are gradually assigned to the users based on those points. <br/><br/>For example, if you ask an interesting question or useful answer, it  will likely be voted up. On the other hand if the question is poorly-worded or the answer is misleading - it will likely be voted down. Each up vote on a question will generate <strong>^qa_opt(points_per_q_voted_up) points</strong>, whereas each vote against will subtract <strong>^qa_opt(points_per_q_voted_down) points</strong>. The following table lists points gained per activity:<br/><br/>^pointstable<br/><br/>The following table lists point requirements for each type of moderation task. <br/><br/>^privilegestable'),
('faq_section_4_title', 'How does point system work?'),
('faq_section_5', 'The picture that appears in user profiles is called a <strong>gravatar</strong>, which means <strong>globally recognized avatar</strong>.<br/><br/>Here is how it works: You upload your picture (or your favorite alter ego image) to the website <a href="http://gravatar.com"><strong>gravatar.com</strong></a> from where we later retrieve your image using a cryptographic key based on your email address.<br/><br/>This way all the websites you trust can show your image next to your posts and your email address remains private.<br/><br/>Please <strong>personalize your account with an image</strong> - just register at <a href="http://gravatar.com"><strong>gravatar.com</strong></a> (just please be sure to use the same email address that you used to register with us). The default gray image is generated automatically.'),
('faq_section_5_title', 'How to change my picture (gravatar), and what is gravatar?'),
('faq_section_6', 'Please <a href="^qa_path(ask)">ask your question</a> and help make our community better!'),
('faq_section_6_title', 'Still have questions?'),
('faq_section_7', ''),
('featured_questions_list', '8'),
('featured_question_css', '.qa-q-list-item-featured {\n    background-color:#fcfde9;\n    padding: 10px;\n    border: 1px solid #ece2c9;\n    /*border-radius: 8px;*/\n    margin-bottom: 10px;\n}'),
('feedback_email', 'jingtaol@oupeng.com'),
('feedback_enabled', '1'),
('feed_for_activity', '1'),
('feed_for_hot', '0'),
('feed_for_qa', '0'),
('feed_for_questions', '1'),
('feed_for_search', '0'),
('feed_for_tag_qs', '0'),
('feed_for_unanswered', '1'),
('feed_full_text', '1'),
('feed_number_items', '20'),
('feed_per_category', '1'),
('flagging_hide_after', '5'),
('flagging_notify_every', '2'),
('flagging_notify_first', '1'),
('flagging_of_posts', '1'),
('follow_on_as', '1'),
('form_security_salt', 'xqnul2cyrinl9ztsgvrw762cu2gn3ci6'),
('from_email', 'no-reply@example.com'),
('home_description', 'Opera, Opera Software, Oupeng, 欧朋, 欧朋浏览器, Sphinx, 斯芬克斯, 游戏引擎, HTML5, Game Engine, HTML5 Game Engine, Sphinx 游戏引擎, 游戏'),
('hot_weight_answers', '100'),
('hot_weight_a_age', '100'),
('hot_weight_q_age', '100'),
('hot_weight_views', '100'),
('hot_weight_votes', '100'),
('lang_filter_enable', '0'),
('lang_filter_entries', 'test'),
('links_in_new_window', '0'),
('logo_height', ''),
('logo_show', '1'),
('logo_url', 'http://localhost:8888/q2a-logo.png'),
('logo_width', ''),
('mailing_body', '\n\n\n--\nSphinx\nhttp://localhost:8888/q2a/'),
('mailing_enabled', ''),
('mailing_from_email', 'no-reply@example.com'),
('mailing_from_name', 'Sphinx'),
('mailing_last_userid', ''),
('mailing_per_minute', '500'),
('mailing_subject', '来自 Sphinx 的消息'),
('markdown_editor_css', ''),
('markdown_highlightjs', ''),
('match_ask_check_qs', '3'),
('match_example_tags', '4'),
('max_copy_user_updates', '10'),
('max_len_q_title', '200'),
('max_num_q_tags', '5'),
('max_rate_ip_as', '50'),
('max_rate_ip_cs', '40'),
('max_rate_ip_flags', '10'),
('max_rate_ip_logins', '20'),
('max_rate_ip_messages', '10'),
('max_rate_ip_qs', '20'),
('max_rate_ip_registers', '5'),
('max_rate_ip_uploads', '20'),
('max_rate_ip_votes', '600'),
('max_rate_user_as', '25'),
('max_rate_user_cs', '20'),
('max_rate_user_flags', '5'),
('max_rate_user_messages', '5'),
('max_rate_user_qs', '10'),
('max_rate_user_uploads', '10'),
('max_rate_user_votes', '300'),
('max_store_user_updates', '50'),
('min_len_a_content', '12'),
('min_len_c_content', '12'),
('min_len_q_content', '0'),
('min_len_q_title', '10'),
('min_num_q_tags', '1'),
('moderate_anon_post', ''),
('moderate_by_points', ''),
('moderate_edited_again', ''),
('moderate_notify_admin', '1'),
('moderate_points_limit', '150'),
('moderate_unapproved', ''),
('moderate_unconfirmed', ''),
('moderate_update_time', '1'),
('moderate_users', ''),
('mouseover_content_max_len', '480'),
('mouseover_content_on', '1'),
('nav_activity', '0'),
('nav_ask', '1'),
('nav_categories', '0'),
('nav_home', ''),
('nav_hot', '0'),
('nav_qa_is_home', '0'),
('nav_questions', '1'),
('nav_tags', '0'),
('nav_unanswered', '1'),
('nav_users', '0'),
('neat_urls', '0'),
('notice_visitor', ''),
('notice_welcome', '注册成功！'),
('notify_admin_q_post', '1'),
('notify_users_default', '1'),
('pages_prev_next', '3'),
('page_size_activity', '20'),
('page_size_ask_check_qs', '5'),
('page_size_ask_tags', '5'),
('page_size_home', '10'),
('page_size_hot_qs', '20'),
('page_size_qs', '20'),
('page_size_q_as', '15'),
('page_size_search', '10'),
('page_size_tags', '30'),
('page_size_tag_qs', '20'),
('page_size_una_qs', '20'),
('page_size_users', '20'),
('page_size_wall', '10'),
('permit_anon_view_ips', '70'),
('permit_anon_view_ips_points', ''),
('permit_close_q', '70'),
('permit_delete_hidden', '40'),
('permit_delete_hidden_points', ''),
('permit_edit_a', '100'),
('permit_edit_a_points', ''),
('permit_edit_c', '70'),
('permit_edit_c_points', ''),
('permit_edit_q', '70'),
('permit_edit_q_points', ''),
('permit_edit_silent', '40'),
('permit_edit_silent_points', ''),
('permit_flag', '110'),
('permit_flag_points', ''),
('permit_hide_show', '70'),
('permit_hide_show_points', ''),
('permit_moderate', '100'),
('permit_moderate_points', ''),
('permit_post_a', '150'),
('permit_post_a_points', ''),
('permit_post_c', '150'),
('permit_post_c_points', ''),
('permit_post_q', '150'),
('permit_post_q_points', ''),
('permit_post_wall', '110'),
('permit_post_wall_points', ''),
('permit_retag_cat', '70'),
('permit_retag_cat_points', ''),
('permit_select_a', '100'),
('permit_select_a_points', ''),
('permit_view_q_page', '150'),
('permit_view_voters_flaggers', '20'),
('permit_view_voters_flaggers_points', ''),
('permit_vote_a', '120'),
('permit_vote_a_points', ''),
('permit_vote_down', '120'),
('permit_vote_down_points', ''),
('permit_vote_q', '120'),
('permit_vote_q_points', ''),
('points_a_selected', '30'),
('points_a_voted_max_gain', '20'),
('points_a_voted_max_loss', '5'),
('points_base', '100'),
('points_multiple', '10'),
('points_per_a_voted', ''),
('points_per_a_voted_down', '2'),
('points_per_a_voted_up', '2'),
('points_per_q_voted', ''),
('points_per_q_voted_down', '1'),
('points_per_q_voted_up', '1'),
('points_post_a', '4'),
('points_post_q', '2'),
('points_q_voted_max_gain', '10'),
('points_q_voted_max_loss', '3'),
('points_select_a', '3'),
('points_to_titles', ''),
('points_vote_down_a', '1'),
('points_vote_down_q', '1'),
('points_vote_on_a', ''),
('points_vote_on_q', ''),
('points_vote_up_a', '1'),
('points_vote_up_q', '1'),
('q_urls_remove_accents', '0'),
('q_urls_title_length', '50'),
('recaptcha_private_key', ''),
('recaptcha_public_key', ''),
('register_notify_admin', ''),
('search_module', ''),
('show_a_c_links', '1'),
('show_a_form_immediate', 'if_no_as'),
('show_custom_answer', '0'),
('show_custom_ask', '0'),
('show_custom_comment', '0'),
('show_custom_footer', '0'),
('show_custom_header', '1'),
('show_custom_home', '0'),
('show_custom_in_head', '0'),
('show_custom_register', '0'),
('show_custom_sidebar', '1'),
('show_custom_sidepanel', '0'),
('show_custom_welcome', '0'),
('show_c_reply_buttons', '1'),
('show_fewer_cs_count', '5'),
('show_fewer_cs_from', '10'),
('show_full_date_days', '7'),
('show_home_description', '1'),
('show_message_history', '1'),
('show_notice_visitor', '0'),
('show_notice_welcome', '1'),
('show_selected_first', '1'),
('show_url_links', '1'),
('show_user_points', '1'),
('show_user_titles', '1'),
('show_view_counts', '0'),
('show_view_count_q_page', '0'),
('show_when_created', '1'),
('site_language', 'zh'),
('site_maintenance', '0'),
('site_theme', 'Snow'),
('site_theme_mobile', 'Snow'),
('site_title', 'Sphinx'),
('site_url', 'http://localhost:8888/q2a/'),
('smtp_active', '0'),
('smtp_address', ''),
('smtp_authenticate', '0'),
('smtp_password', '19950801'),
('smtp_port', '25'),
('smtp_secure', ''),
('smtp_username', 'admin'),
('sort_answers_by', 'created'),
('suspend_register_users', ''),
('tags_or_categories', 'tc'),
('tag_cloud_count_tags', '100'),
('tag_cloud_font_size', '18'),
('tag_cloud_size_popular', '1'),
('tag_separator_comma', '0'),
('theme_switch_default', 'Snow'),
('theme_switch_enable', ''),
('theme_switch_enable_mobile', ''),
('theme_switch_mobile', ''),
('theme_switch_text', 'Choose theme:'),
('theme_switch_title', 'Theme'),
('votes_separated', '0'),
('voting_on_as', '1'),
('voting_on_qs', '1'),
('voting_on_q_page_only', '0'),
('wysiwyg_editor_upload_all', '0'),
('wysiwyg_editor_upload_images', '0'),
('wysiwyg_editor_upload_max_size', '1048576'),
('xml_sitemap_show_categories', '1'),
('xml_sitemap_show_category_qs', '1'),
('xml_sitemap_show_questions', '1'),
('xml_sitemap_show_tag_qs', '1'),
('xml_sitemap_show_users', '1');

-- --------------------------------------------------------

--
-- Table structure for table `qa_pages`
--

CREATE TABLE `qa_pages` (
  `pageid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `nav` char(1) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  `permit` tinyint(3) unsigned DEFAULT NULL,
  `tags` varchar(200) NOT NULL,
  `heading` varchar(800) DEFAULT NULL,
  `content` mediumtext,
  PRIMARY KEY (`pageid`),
  UNIQUE KEY `position` (`position`),
  KEY `tags` (`tags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qa_postmetas`
--

CREATE TABLE `qa_postmetas` (
  `postid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`postid`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_posts`
--

CREATE TABLE `qa_posts` (
  `postid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('Q','A','C','Q_HIDDEN','A_HIDDEN','C_HIDDEN','Q_QUEUED','A_QUEUED','C_QUEUED','NOTE') NOT NULL,
  `parentid` int(10) unsigned DEFAULT NULL,
  `categoryid` int(10) unsigned DEFAULT NULL,
  `catidpath1` int(10) unsigned DEFAULT NULL,
  `catidpath2` int(10) unsigned DEFAULT NULL,
  `catidpath3` int(10) unsigned DEFAULT NULL,
  `acount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amaxvote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `selchildid` int(10) unsigned DEFAULT NULL,
  `closedbyid` int(10) unsigned DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `cookieid` bigint(20) unsigned DEFAULT NULL,
  `createip` int(10) unsigned DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `lastip` int(10) unsigned DEFAULT NULL,
  `upvotes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `downvotes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `netvotes` smallint(6) NOT NULL DEFAULT '0',
  `lastviewip` int(10) unsigned DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `hotness` float DEFAULT NULL,
  `flagcount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `format` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `title` varchar(800) DEFAULT NULL,
  `content` varchar(8000) DEFAULT NULL,
  `tags` varchar(800) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `notify` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `type` (`type`,`created`),
  KEY `type_2` (`type`,`acount`,`created`),
  KEY `type_4` (`type`,`netvotes`,`created`),
  KEY `type_5` (`type`,`views`,`created`),
  KEY `type_6` (`type`,`hotness`),
  KEY `type_7` (`type`,`amaxvote`,`created`),
  KEY `parentid` (`parentid`,`type`),
  KEY `userid` (`userid`,`type`,`created`),
  KEY `selchildid` (`selchildid`,`type`,`created`),
  KEY `closedbyid` (`closedbyid`),
  KEY `catidpath1` (`catidpath1`,`type`,`created`),
  KEY `catidpath2` (`catidpath2`,`type`,`created`),
  KEY `catidpath3` (`catidpath3`,`type`,`created`),
  KEY `categoryid` (`categoryid`,`type`,`created`),
  KEY `createip` (`createip`,`created`),
  KEY `updated` (`updated`,`type`),
  KEY `flagcount` (`flagcount`,`created`,`type`),
  KEY `catidpath1_2` (`catidpath1`,`updated`,`type`),
  KEY `catidpath2_2` (`catidpath2`,`updated`,`type`),
  KEY `catidpath3_2` (`catidpath3`,`updated`,`type`),
  KEY `categoryid_2` (`categoryid`,`updated`,`type`),
  KEY `lastuserid` (`lastuserid`,`updated`,`type`),
  KEY `lastip` (`lastip`,`updated`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `qa_posts`
--

INSERT INTO `qa_posts` (`postid`, `type`, `parentid`, `categoryid`, `catidpath1`, `catidpath2`, `catidpath3`, `acount`, `amaxvote`, `selchildid`, `closedbyid`, `userid`, `cookieid`, `createip`, `lastuserid`, `lastip`, `upvotes`, `downvotes`, `netvotes`, `lastviewip`, `views`, `hotness`, `flagcount`, `format`, `created`, `updated`, `updatetype`, `title`, `content`, `tags`, `name`, `notify`) VALUES
(4, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 1, -1, 175112364, 2, 23169400000, 0, 'markdown', '2013-09-03 16:47:12', NULL, NULL, 'testtesttesttesttesttesttesttest', 'testtest', 'testtest', NULL, '@'),
(5, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 1, -1, NULL, 1, 23169000000, 0, 'markdown', '2013-09-03 16:47:22', NULL, NULL, 'testtesttesttesttesttesttesttest', 'testtesttesttesttesttesttesttesttesttest', '', NULL, NULL),
(6, 'Q_HIDDEN', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 15, 1, NULL, NULL, 1, NULL, 0, 1, -1, NULL, 1, 23169000000, 0, 'markdown', '2013-09-03 16:53:48', '2013-09-07 17:30:34', 'H', 'padding-left: 5px;', 'Nullam quis risus eget urna mollis ornare vel eu leo. Sed posuere consectetur est at lobortis. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.', '', NULL, '@'),
(7, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 1, 23201000000, 0, 'markdown', '2013-09-03 16:54:02', NULL, NULL, 'Adipiscing', 'Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Nulla vitae elit libero, a pharetra augue.', '', NULL, '@'),
(8, 'Q', NULL, NULL, NULL, NULL, NULL, 2, 0, 18, NULL, NULL, 1875076761638634850, NULL, 1, NULL, 2, 0, 2, NULL, 110, 23362100000, 0, 'markdown', '2013-09-03 17:15:10', '2013-09-11 17:56:45', 'H', '[求助] bug回馈', '安卓4.12 ，富士通f-02e ，tegra3,1080p，虚拟按键，横屏使用使用公测版Sphinx 模拟器 测试Cut the Rope（割绳子）时，游戏强制为1200*800，触摸点与游戏内显示触摸痕迹有位移，导致如附件效果\n另询ios版发布时间', '', 'anonymous', NULL),
(9, 'Q', NULL, NULL, NULL, NULL, NULL, 1, 0, 11, NULL, 2, NULL, NULL, NULL, NULL, 0, 1, -1, 175112364, 15, 23191300000, 0, 'markdown', '2013-09-03 17:38:28', NULL, NULL, 'Pellentesque Lorem Ipsum Nullam Vulputate', 'Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Maecenas faucibus mollis interdum. Sed posuere consectetur est at lobortis. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit.\n\nNulla vitae elit libero, a pharetra augue. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper.\n\nMaecenas faucibus mollis interdum. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Etiam porta sem malesuada magna mollis euismod. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Aenean lacinia bibendum nulla sed consectetur.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec id elit non mi porta gravida at eget metus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec id elit non mi porta gravida at eget metus. Cras justo odio, dapibus ac facilisis in, egestas eget quam.', '', NULL, '@'),
(11, 'A', 9, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, 1, NULL, 0, 0, 0, NULL, 0, NULL, 0, 'markdown', '2013-09-03 17:54:18', '2013-09-04 11:44:03', 'S', NULL, 'Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam.', NULL, NULL, '@'),
(13, 'A', 8, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, 175112364, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, '', '2013-09-04 15:48:34', NULL, NULL, NULL, 'test gravatar', NULL, NULL, '@'),
(14, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, 175112364, NULL, NULL, 1, 0, 1, 175112364, 1, 23217500000, 0, '', '2013-09-04 15:48:59', NULL, NULL, 'test gravatar', 'Aenean lacinia bibendum nulla sed consectetur. Sed posuere consectetur est at lobortis. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum.', '', NULL, NULL),
(15, 'NOTE', 6, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, '', '2013-09-07 17:30:25', NULL, NULL, NULL, 'none.', NULL, NULL, NULL),
(16, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, 175112364, NULL, NULL, 0, 0, 0, NULL, 0, 23306000000, 0, 'html', '2013-09-10 17:30:26', NULL, NULL, 'Inceptos Venenatis Consectetur Vulputate Nullam', '<div>\n  Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum.</div>\n<div>\n  &nbsp;</div>\n<div>\n Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>\n<div>\n  &nbsp;</div>\n<div>\n Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis. Nullam quis risus eget urna mollis ornare vel eu leo. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</div>', 'sphinx', NULL, NULL),
(17, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, 175112364, NULL, NULL, 0, 0, 0, 175112364, 1, 23306400000, 0, 'html', '2013-09-10 17:30:27', NULL, NULL, 'Inceptos Venenatis Consectetur Vulputate Nullam', '<div>\n Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum.</div>\n<div>\n  &nbsp;</div>\n<div>\n Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>\n<div>\n  &nbsp;</div>\n<div>\n Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis. Nullam quis risus eget urna mollis ornare vel eu leo. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</div>', 'sphinx', NULL, NULL),
(18, 'A', 8, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, 175112364, 1, NULL, 0, 0, 0, NULL, 0, NULL, 0, '', '2013-09-11 17:22:59', '2013-10-02 22:16:55', 'S', NULL, 'asdasdasdasdasdasdasd', NULL, NULL, '@'),
(19, 'Q', NULL, NULL, NULL, NULL, NULL, 1, 0, 20, 25, 6, NULL, 175112443, 1, NULL, 0, 1, -1, NULL, 18, 23330500000, 0, '', '2013-09-11 17:30:14', '2013-10-02 07:31:48', 'C', '今天今天今天今天今天今天温度？', 'RT', '温度', NULL, '@'),
(20, 'A', 19, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 6, NULL, 175112443, 1, NULL, 0, 0, 0, NULL, 0, NULL, 0, '', '2013-09-11 17:30:30', '2013-10-02 07:32:17', 'E', NULL, 'itsatestitsatestitsatestitsatestitsatestitsatestitsatest', NULL, NULL, '@'),
(21, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 22, 1, NULL, 2130706433, 1, 2130706433, 0, 0, 0, 2130706433, 1, 23462800000, 0, '', '2013-09-19 18:41:12', '2013-09-19 18:41:26', 'C', 'asdasdasasdadsdasdasd', 'asdsda', 'adasda', NULL, '@'),
(22, 'NOTE', 21, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, 2130706433, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, '', '2013-09-19 18:41:26', NULL, NULL, NULL, 'no reason.', NULL, NULL, NULL),
(23, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1, 23548300000, 0, '', '2013-09-24 17:28:50', NULL, NULL, 'Maecenasssss', 'Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'maecenas', NULL, '@'),
(24, 'Q_HIDDEN', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, 1, NULL, 0, 0, 0, NULL, 1, 23679200000, 0, '', '2013-10-02 07:15:03', '2013-10-10 16:52:32', 'H', 'How can I solve this profiler issue?', 'Hi all, I''m a dev from Oslo Opera HQ, indeed the emulator is unable running on my Nexus S phone, so please check what went wrong on it, thanks.\n\n \n\n- Anonymous', 'device,mobile', NULL, '@'),
(25, 'NOTE', 19, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, '', '2013-10-02 07:31:48', NULL, NULL, NULL, 'spam', NULL, NULL, NULL),
(26, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1, 23690000000, 0, '', '2013-10-02 22:16:41', NULL, NULL, '为什么？？？？?????', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo. Donec id elit non mi porta gravida at eget metus.', 'sphinx,mobile', NULL, '@'),
(27, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1, 23824400000, 0, '', '2013-10-10 16:51:41', NULL, NULL, 'Sphinx 在手机端一直连接不到远程调试是怎么回事', 'Sphinx在手机端一直连接不到远程调试是怎么回事，已是同一个局域网咯，但是还是无法连接上。', '调试,debugger', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qa_posttags`
--

CREATE TABLE `qa_posttags` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  `postcreated` datetime NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`,`postcreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_posttags`
--

INSERT INTO `qa_posttags` (`postid`, `wordid`, `postcreated`) VALUES
(4, 140, '2013-09-03 16:47:12'),
(16, 85, '2013-09-10 17:30:26'),
(17, 85, '2013-09-10 17:30:27'),
(19, 323, '2013-09-11 17:30:14'),
(21, 327, '2013-09-19 18:41:12'),
(23, 173, '2013-09-24 17:28:50'),
(26, 85, '2013-10-02 22:16:41'),
(26, 365, '2013-10-02 22:16:41'),
(27, 386, '2013-10-10 16:51:41'),
(27, 387, '2013-10-10 16:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `qa_sharedevents`
--

CREATE TABLE `qa_sharedevents` (
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  `lastpostid` int(10) unsigned NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `updated` datetime NOT NULL,
  KEY `entitytype` (`entitytype`,`entityid`,`updated`),
  KEY `questionid` (`questionid`,`entitytype`,`entityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_sharedevents`
--

INSERT INTO `qa_sharedevents` (`entitytype`, `entityid`, `questionid`, `lastpostid`, `updatetype`, `lastuserid`, `updated`) VALUES
('Q', 1, 1, 1, NULL, 1, '2013-08-28 17:02:08'),
('T', 3, 1, 1, NULL, 1, '2013-08-28 17:02:08'),
('Q', 1, 1, 1, 'E', 1, '2013-08-28 17:05:08'),
('U', 1, 1, 1, 'E', 1, '2013-08-28 17:05:08'),
('Q', 1, 1, 2, NULL, 1, '2013-08-28 17:06:11'),
('U', 1, 1, 2, NULL, 1, '2013-08-28 17:06:11'),
('Q', 3, 3, 3, NULL, 1, '2013-08-29 01:03:56'),
('U', 1, 3, 3, NULL, 1, '2013-08-29 01:03:56'),
('Q', 4, 4, 4, NULL, 1, '2013-09-03 16:47:12'),
('U', 1, 4, 4, NULL, 1, '2013-09-03 16:47:12'),
('T', 140, 4, 4, NULL, 1, '2013-09-03 16:47:12'),
('Q', 5, 5, 5, NULL, 1, '2013-09-03 16:47:22'),
('U', 1, 5, 5, NULL, 1, '2013-09-03 16:47:22'),
('Q', 6, 6, 6, NULL, 1, '2013-09-03 16:53:48'),
('U', 1, 6, 6, NULL, 1, '2013-09-03 16:53:48'),
('Q', 7, 7, 7, NULL, 1, '2013-09-03 16:54:02'),
('U', 1, 7, 7, NULL, 1, '2013-09-03 16:54:02'),
('Q', 9, 9, 9, NULL, 2, '2013-09-03 17:38:28'),
('U', 2, 9, 9, NULL, 2, '2013-09-03 17:38:28'),
('Q', 1, 1, 10, NULL, 1, '2013-09-03 17:54:04'),
('U', 1, 1, 10, NULL, 1, '2013-09-03 17:54:04'),
('Q', 9, 9, 11, NULL, 1, '2013-09-03 17:54:19'),
('U', 1, 9, 11, NULL, 1, '2013-09-03 17:54:19'),
('Q', 9, 9, 11, 'S', 1, '2013-09-04 11:44:03'),
('U', 1, 9, 11, 'S', 1, '2013-09-04 11:44:03'),
('U', 1, 8, 12, NULL, 1, '2013-09-04 14:56:27'),
('U', 1, 8, 8, 'E', 1, '2013-09-04 14:57:57'),
('U', 1, 8, 13, NULL, 1, '2013-09-04 15:48:34'),
('Q', 14, 14, 14, NULL, 1, '2013-09-04 15:48:59'),
('U', 1, 14, 14, NULL, 1, '2013-09-04 15:48:59'),
('U', 1, 8, 13, 'S', 1, '2013-09-04 16:48:58'),
('Q', 6, 6, 6, 'C', 1, '2013-09-07 17:30:25'),
('U', 1, 6, 6, 'C', 1, '2013-09-07 17:30:25'),
('Q', 16, 16, 16, NULL, 1, '2013-09-10 17:30:27'),
('U', 1, 16, 16, NULL, 1, '2013-09-10 17:30:27'),
('T', 85, 16, 16, NULL, 1, '2013-09-10 17:30:27'),
('Q', 17, 17, 17, NULL, 1, '2013-09-10 17:30:27'),
('U', 1, 17, 17, NULL, 1, '2013-09-10 17:30:27'),
('T', 85, 17, 17, NULL, 1, '2013-09-10 17:30:27'),
('U', 1, 8, 18, NULL, 1, '2013-09-11 17:22:59'),
('U', 6, 19, 19, NULL, 6, '2013-09-11 17:30:15'),
('T', 323, 19, 19, NULL, 6, '2013-09-11 17:30:15'),
('U', 6, 19, 20, NULL, 6, '2013-09-11 17:30:31'),
('U', 1, 8, 8, 'H', 1, '2013-09-11 17:56:45'),
('U', 1, 8, 18, 'H', 1, '2013-09-19 18:40:52'),
('Q', 21, 21, 21, NULL, 1, '2013-09-19 18:41:12'),
('U', 1, 21, 21, NULL, 1, '2013-09-19 18:41:12'),
('T', 327, 21, 21, NULL, 1, '2013-09-19 18:41:12'),
('Q', 21, 21, 21, 'C', 1, '2013-09-19 18:41:26'),
('U', 1, 21, 21, 'C', 1, '2013-09-19 18:41:26'),
('Q', 23, 23, 23, NULL, 1, '2013-09-24 17:28:50'),
('U', 1, 23, 23, NULL, 1, '2013-09-24 17:28:50'),
('T', 173, 23, 23, NULL, 1, '2013-09-24 17:28:50'),
('U', 1, 8, 13, 'S', 1, '2013-10-01 23:34:45'),
('U', 1, 8, 13, 'S', 1, '2013-10-01 23:35:36'),
('U', 1, 8, 13, 'S', 1, '2013-10-01 23:35:38'),
('U', 1, 8, 13, 'S', 1, '2013-10-01 23:36:01'),
('U', 1, 8, 13, 'S', 1, '2013-10-01 23:37:31'),
('U', 1, 8, 13, 'S', 1, '2013-10-01 23:43:04'),
('U', 1, 8, 13, 'S', 1, '2013-10-01 23:43:09'),
('U', 1, 8, 13, 'S', 1, '2013-10-01 23:47:23'),
('U', 1, 8, 13, 'S', 1, '2013-10-01 23:49:00'),
('U', 1, 8, 18, 'S', 1, '2013-10-01 23:50:50'),
('U', 1, 8, 13, 'S', 1, '2013-10-01 23:50:52'),
('U', 1, 8, 18, 'S', 1, '2013-10-01 23:50:53'),
('U', 1, 8, 18, 'S', 1, '2013-10-01 23:51:08'),
('Q', 19, 19, 20, 'S', 1, '2013-10-01 23:51:36'),
('U', 1, 19, 20, 'S', 1, '2013-10-01 23:51:36'),
('Q', 19, 19, 20, 'S', 1, '2013-10-01 23:51:40'),
('U', 1, 19, 20, 'S', 1, '2013-10-01 23:51:40'),
('Q', 24, 24, 24, NULL, 1, '2013-10-02 07:15:04'),
('U', 1, 24, 24, NULL, 1, '2013-10-02 07:15:04'),
('T', 364, 24, 24, NULL, 1, '2013-10-02 07:15:04'),
('T', 365, 24, 24, NULL, 1, '2013-10-02 07:15:04'),
('Q', 8, 8, 13, 'S', 1, '2013-10-02 07:22:10'),
('U', 1, 8, 13, 'S', 1, '2013-10-02 07:22:10'),
('Q', 19, 19, 19, 'C', 1, '2013-10-02 07:31:48'),
('U', 1, 19, 19, 'C', 1, '2013-10-02 07:31:48'),
('Q', 19, 19, 20, 'S', 1, '2013-10-02 07:32:00'),
('U', 1, 19, 20, 'S', 1, '2013-10-02 07:32:00'),
('Q', 19, 19, 20, 'E', 1, '2013-10-02 07:32:17'),
('U', 1, 19, 20, 'E', 1, '2013-10-02 07:32:17'),
('Q', 8, 8, 18, 'S', 1, '2013-10-02 07:40:18'),
('U', 1, 8, 18, 'S', 1, '2013-10-02 07:40:18'),
('Q', 8, 8, 18, 'S', 1, '2013-10-02 07:40:25'),
('U', 1, 8, 18, 'S', 1, '2013-10-02 07:40:25'),
('Q', 26, 26, 26, NULL, 1, '2013-10-02 22:16:41'),
('U', 1, 26, 26, NULL, 1, '2013-10-02 22:16:41'),
('T', 365, 26, 26, NULL, 1, '2013-10-02 22:16:41'),
('T', 85, 26, 26, NULL, 1, '2013-10-02 22:16:41'),
('Q', 8, 8, 18, 'S', 1, '2013-10-02 22:16:53'),
('U', 1, 8, 18, 'S', 1, '2013-10-02 22:16:53'),
('Q', 8, 8, 18, 'S', 1, '2013-10-02 22:16:55'),
('U', 1, 8, 18, 'S', 1, '2013-10-02 22:16:55'),
('Q', 27, 27, 27, NULL, 1, '2013-10-10 16:51:41'),
('U', 1, 27, 27, NULL, 1, '2013-10-10 16:51:41'),
('T', 386, 27, 27, NULL, 1, '2013-10-10 16:51:41'),
('T', 387, 27, 27, NULL, 1, '2013-10-10 16:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `qa_tagmetas`
--

CREATE TABLE `qa_tagmetas` (
  `tag` varchar(80) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`tag`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_tagwords`
--

CREATE TABLE `qa_tagwords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_tagwords`
--

INSERT INTO `qa_tagwords` (`postid`, `wordid`) VALUES
(4, 140),
(16, 85),
(17, 85),
(19, 320),
(19, 321),
(21, 327),
(23, 173),
(26, 85),
(26, 365),
(27, 23),
(27, 212),
(27, 386);

-- --------------------------------------------------------

--
-- Table structure for table `qa_titlewords`
--

CREATE TABLE `qa_titlewords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_titlewords`
--

INSERT INTO `qa_titlewords` (`postid`, `wordid`) VALUES
(4, 139),
(5, 139),
(7, 184),
(9, 187),
(9, 220),
(9, 221),
(9, 145),
(9, 246),
(14, 138),
(14, 315),
(16, 316),
(16, 190),
(16, 157),
(16, 246),
(16, 145),
(17, 316),
(17, 190),
(17, 157),
(17, 246),
(17, 145),
(19, 318),
(19, 319),
(19, 320),
(19, 321),
(19, 62),
(8, 1),
(8, 2),
(8, 264),
(8, 265),
(8, 266),
(21, 325),
(23, 330),
(26, 113),
(26, 368),
(26, 369),
(26, 370),
(27, 85),
(27, 44),
(27, 19),
(27, 20),
(27, 371),
(27, 34),
(27, 372),
(27, 373),
(27, 96),
(27, 54),
(27, 374),
(27, 375),
(27, 376),
(27, 23),
(27, 212),
(27, 15),
(27, 377),
(27, 369),
(27, 265),
(27, 60);

-- --------------------------------------------------------

--
-- Table structure for table `qa_userevents`
--

CREATE TABLE `qa_userevents` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  `lastpostid` int(10) unsigned NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `updated` datetime NOT NULL,
  KEY `userid` (`userid`,`updated`),
  KEY `questionid` (`questionid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_userevents`
--

INSERT INTO `qa_userevents` (`userid`, `entitytype`, `entityid`, `questionid`, `lastpostid`, `updatetype`, `lastuserid`, `updated`) VALUES
(2, '-', 0, 9, 11, NULL, 1, '2013-09-03 17:54:19'),
(2, 'Q', 1, 1, 1, NULL, 1, '2013-08-28 17:02:08'),
(2, 'Q', 1, 1, 1, 'E', 1, '2013-08-28 17:05:08'),
(2, 'Q', 1, 1, 2, NULL, 1, '2013-08-28 17:06:11'),
(2, 'Q', 1, 1, 10, NULL, 1, '2013-09-03 17:54:04'),
(1, '-', 0, 3, 3, 'H', 1, '2013-09-04 14:49:25'),
(1, '-', 0, 1, 1, 'H', 1, '2013-09-04 14:49:36'),
(1, '-', 0, 1, 2, 'H', 1, '2013-09-04 14:49:40'),
(1, '-', 0, 1, 10, 'H', 1, '2013-09-04 14:49:42'),
(1, '-', 0, 6, 6, 'H', 1, '2013-09-07 17:30:34'),
(6, '-', 0, 19, 20, 'S', 1, '2013-10-01 23:51:36'),
(6, '-', 0, 19, 20, 'S', 1, '2013-10-01 23:51:40'),
(6, '-', 0, 19, 19, 'C', 1, '2013-10-02 07:31:48'),
(6, '-', 0, 19, 20, 'S', 1, '2013-10-02 07:32:00'),
(6, '-', 0, 19, 20, 'E', 1, '2013-10-02 07:32:17'),
(1, 'Q', 8, 8, 13, 'S', 1, '2013-10-02 07:22:10'),
(1, 'Q', 8, 8, 18, 'S', 1, '2013-10-02 07:40:18'),
(1, 'Q', 8, 8, 18, 'S', 1, '2013-10-02 07:40:25'),
(1, 'Q', 24, 24, 24, NULL, 1, '2013-10-02 07:15:04'),
(1, 'Q', 8, 8, 18, 'S', 1, '2013-10-02 22:16:53'),
(1, 'Q', 8, 8, 18, 'S', 1, '2013-10-02 22:16:55'),
(1, '-', 0, 24, 24, 'H', 1, '2013-10-10 16:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `qa_userfavorites`
--

CREATE TABLE `qa_userfavorites` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `nouserevents` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`userid`,`entitytype`,`entityid`),
  KEY `userid` (`userid`,`nouserevents`),
  KEY `entitytype` (`entitytype`,`entityid`,`nouserevents`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_userfavorites`
--

INSERT INTO `qa_userfavorites` (`userid`, `entitytype`, `entityid`, `nouserevents`) VALUES
(1, 'Q', 8, 0),
(1, 'Q', 24, 0),
(2, 'Q', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_userfields`
--

CREATE TABLE `qa_userfields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `content` varchar(40) DEFAULT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  `permit` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `qa_userfields`
--

INSERT INTO `qa_userfields` (`fieldid`, `title`, `content`, `position`, `flags`, `permit`) VALUES
(1, 'name', NULL, 1, 0, NULL),
(3, 'website', NULL, 2, 2, NULL),
(4, 'about', NULL, 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qa_userlevels`
--

CREATE TABLE `qa_userlevels` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  UNIQUE KEY `userid` (`userid`,`entitytype`,`entityid`),
  KEY `entitytype` (`entitytype`,`entityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_userlimits`
--

CREATE TABLE `qa_userlimits` (
  `userid` int(10) unsigned NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `userid` (`userid`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_userlimits`
--

INSERT INTO `qa_userlimits` (`userid`, `action`, `period`, `count`) VALUES
(1, 'A', 383025, 1),
(1, 'F', 383024, 1),
(1, 'Q', 383720, 1),
(1, 'V', 383721, 2),
(1, 'W', 382712, 2),
(2, 'Q', 382833, 1),
(2, 'V', 382854, 1),
(3, 'V', 383024, 2),
(6, 'A', 383025, 1),
(6, 'Q', 383025, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qa_userlogins`
--

CREATE TABLE `qa_userlogins` (
  `userid` int(10) unsigned NOT NULL,
  `source` varchar(16) CHARACTER SET ascii NOT NULL,
  `identifier` varbinary(1024) NOT NULL,
  `identifiermd5` binary(16) NOT NULL,
  KEY `source` (`source`,`identifiermd5`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_usermeta`
--

CREATE TABLE `qa_usermeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  UNIQUE KEY `user_id` (`user_id`,`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qa_usermetas`
--

CREATE TABLE `qa_usermetas` (
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`userid`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_usernotices`
--

CREATE TABLE `qa_usernotices` (
  `noticeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `content` varchar(8000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`noticeid`),
  KEY `userid` (`userid`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qa_userpoints`
--

CREATE TABLE `qa_userpoints` (
  `userid` int(10) unsigned NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `qposts` mediumint(9) NOT NULL DEFAULT '0',
  `aposts` mediumint(9) NOT NULL DEFAULT '0',
  `cposts` mediumint(9) NOT NULL DEFAULT '0',
  `aselects` mediumint(9) NOT NULL DEFAULT '0',
  `aselecteds` mediumint(9) NOT NULL DEFAULT '0',
  `qupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `aupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `adownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qvoteds` int(11) NOT NULL DEFAULT '0',
  `avoteds` int(11) NOT NULL DEFAULT '0',
  `upvoteds` int(11) NOT NULL DEFAULT '0',
  `downvoteds` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `points` (`points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_userpoints`
--

INSERT INTO `qa_userpoints` (`userid`, `points`, `qposts`, `aposts`, `cposts`, `aselects`, `aselecteds`, `qupvotes`, `qdownvotes`, `aupvotes`, `adownvotes`, `qvoteds`, `avoteds`, `upvoteds`, `downvoteds`, `bonus`) VALUES
(1, 1040, 10, 3, 0, 0, 2, 1, 2, 0, 0, -1, 0, 2, 3, 0),
(2, 180, 1, 0, 0, 1, 0, 1, 3, 0, 0, -1, 0, 0, 1, 0),
(3, 120, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 180, 1, 1, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0),
(7, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_userprofile`
--

CREATE TABLE `qa_userprofile` (
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  UNIQUE KEY `userid` (`userid`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_userprofile`
--

INSERT INTO `qa_userprofile` (`userid`, `title`, `content`) VALUES
(1, 'about', ''),
(1, 'location', ''),
(1, 'name', ''),
(1, 'website', ''),
(4, 'about', ''),
(4, 'location', ''),
(4, 'name', ''),
(4, 'website', '');

-- --------------------------------------------------------

--
-- Table structure for table `qa_users`
--

CREATE TABLE `qa_users` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `createip` int(10) unsigned NOT NULL,
  `email` varchar(80) NOT NULL,
  `handle` varchar(20) NOT NULL,
  `avatarblobid` bigint(20) unsigned DEFAULT NULL,
  `avatarwidth` smallint(5) unsigned DEFAULT NULL,
  `avatarheight` smallint(5) unsigned DEFAULT NULL,
  `passsalt` binary(16) DEFAULT NULL,
  `passcheck` binary(20) DEFAULT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `loggedin` datetime NOT NULL,
  `loginip` int(10) unsigned NOT NULL,
  `written` datetime DEFAULT NULL,
  `writeip` int(10) unsigned DEFAULT NULL,
  `emailcode` char(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sessioncode` char(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sessionsource` varchar(16) CHARACTER SET ascii DEFAULT '',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wallposts` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `email` (`email`),
  KEY `handle` (`handle`),
  KEY `level` (`level`),
  KEY `created` (`created`,`level`,`flags`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `qa_users`
--

;

-- --------------------------------------------------------

--
-- Table structure for table `qa_uservotes`
--

CREATE TABLE `qa_uservotes` (
  `postid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  UNIQUE KEY `userid` (`userid`,`postid`),
  KEY `postid` (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_uservotes`
--

INSERT INTO `qa_uservotes` (`postid`, `userid`, `vote`, `flag`) VALUES
(8, 1, 1, 0),
(9, 1, -1, 0),
(19, 1, -1, 0),
(4, 2, -1, 0),
(5, 2, -1, 0),
(6, 2, -1, 0),
(7, 2, 1, 0),
(8, 2, 0, 0),
(8, 3, 1, 0),
(14, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_widgets`
--

CREATE TABLE `qa_widgets` (
  `widgetid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `place` char(2) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `tags` varchar(800) CHARACTER SET ascii NOT NULL,
  `title` varchar(80) NOT NULL,
  PRIMARY KEY (`widgetid`),
  UNIQUE KEY `position` (`position`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `qa_widgets`
--

INSERT INTO `qa_widgets` (`widgetid`, `place`, `position`, `tags`, `title`) VALUES
(2, 'MT', 1, 'all', 'Ask Box');

-- --------------------------------------------------------

--
-- Table structure for table `qa_words`
--

CREATE TABLE `qa_words` (
  `wordid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(80) NOT NULL,
  `titlecount` int(10) unsigned NOT NULL DEFAULT '0',
  `contentcount` int(10) unsigned NOT NULL DEFAULT '0',
  `tagwordcount` int(10) unsigned NOT NULL DEFAULT '0',
  `tagcount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wordid`),
  KEY `word` (`word`),
  KEY `tagcount` (`tagcount`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=388 ;

--
-- Dumping data for table `qa_words`
--

INSERT INTO `qa_words` (`wordid`, `word`, `titlecount`, `contentcount`, `tagwordcount`, `tagcount`) VALUES
(1, '求', 1, 0, 0, 0),
(2, '助', 1, 0, 0, 0),
(3, 'profiler', 0, 0, 0, 0),
(4, '内', 0, 1, 0, 0),
(5, '容', 0, 0, 0, 0),
(6, '解', 0, 0, 0, 0),
(7, '读', 0, 0, 0, 0),
(8, '及', 0, 0, 0, 0),
(9, '优', 0, 0, 0, 0),
(10, '化', 0, 0, 0, 0),
(11, '建', 0, 0, 0, 0),
(12, '议', 0, 0, 0, 0),
(13, '以', 0, 0, 0, 0),
(14, '下', 0, 0, 0, 0),
(15, '是', 1, 1, 0, 0),
(16, '我', 0, 0, 0, 0),
(17, '通', 0, 1, 0, 0),
(18, '过', 0, 0, 0, 0),
(19, '手', 1, 1, 0, 0),
(20, '机', 1, 1, 0, 0),
(21, 'sphinx，', 0, 0, 0, 0),
(22, '联', 0, 0, 0, 0),
(23, '调', 1, 1, 1, 0),
(24, '分', 0, 0, 0, 0),
(25, '析', 0, 0, 0, 0),
(26, '的', 0, 0, 0, 0),
(27, '结', 0, 0, 0, 0),
(28, '果', 0, 1, 0, 0),
(29, '，', 0, 2, 0, 0),
(30, '能', 0, 0, 0, 0),
(31, '否', 0, 0, 0, 0),
(32, '介', 0, 0, 0, 0),
(33, '绍', 0, 0, 0, 0),
(34, '一', 1, 1, 0, 0),
(35, '如', 0, 1, 0, 0),
(36, '何', 0, 0, 0, 0),
(37, '去', 0, 0, 0, 0),
(38, '这', 0, 0, 0, 0),
(39, '些', 0, 0, 0, 0),
(40, '数', 0, 0, 0, 0),
(41, '据', 0, 0, 0, 0),
(42, '而', 0, 0, 0, 0),
(43, '且', 0, 0, 0, 0),
(44, '在', 1, 1, 0, 0),
(45, '哪', 0, 0, 0, 0),
(46, '看', 0, 0, 0, 0),
(47, '出', 0, 0, 0, 0),
(48, '可', 0, 0, 0, 0),
(49, '难', 0, 0, 0, 0),
(50, '道', 0, 0, 0, 0),
(51, '个', 0, 1, 0, 0),
(52, '引', 0, 0, 0, 0),
(53, '擎', 0, 0, 0, 0),
(54, '不', 1, 1, 0, 0),
(55, '支', 0, 0, 0, 0),
(56, '持', 0, 0, 0, 0),
(57, 'jquery', 0, 0, 0, 0),
(58, '点', 0, 1, 0, 0),
(59, '击', 0, 0, 0, 0),
(60, '事', 1, 1, 0, 0),
(61, '件', 0, 1, 0, 0),
(62, '？', 1, 0, 0, 0),
(63, '，jquery', 0, 0, 0, 0),
(64, '本', 0, 0, 0, 0),
(65, '人', 0, 0, 0, 0),
(66, '开', 0, 0, 0, 0),
(67, '发', 0, 1, 0, 0),
(68, 'h5', 0, 0, 0, 0),
(69, '游', 0, 1, 0, 0),
(70, '戏', 0, 1, 0, 0),
(71, '访', 0, 0, 0, 0),
(72, '问', 0, 0, 0, 0),
(73, '地', 0, 0, 0, 0),
(74, '址', 0, 0, 0, 0),
(75, 'www', 0, 0, 0, 0),
(76, '86waimai', 0, 0, 0, 0),
(77, 'com', 0, 0, 0, 0),
(78, '其', 0, 0, 0, 0),
(79, '他', 0, 0, 0, 0),
(80, '浏', 0, 0, 0, 0),
(81, '览', 0, 0, 0, 0),
(82, '器', 0, 1, 0, 0),
(83, '正', 0, 0, 0, 0),
(84, '常', 0, 0, 0, 0),
(85, 'sphinx', 1, 2, 3, 3),
(86, '模', 0, 1, 0, 0),
(87, '拟', 0, 1, 0, 0),
(88, '竟', 0, 0, 0, 0),
(89, '然', 0, 0, 0, 0),
(90, '无', 0, 1, 0, 0),
(91, '法', 0, 1, 0, 0),
(92, '按', 0, 1, 0, 0),
(93, '钮', 0, 0, 0, 0),
(94, '？？！', 0, 0, 0, 0),
(95, '很', 0, 0, 0, 0),
(96, '接', 1, 1, 0, 0),
(97, '近', 0, 0, 0, 0),
(98, '当', 0, 0, 0, 0),
(99, '里', 0, 0, 0, 0),
(100, '题', 0, 0, 0, 0),
(101, '们', 0, 0, 0, 0),
(102, '了', 0, 0, 0, 0),
(103, '貌', 0, 0, 0, 0),
(104, '似', 0, 0, 0, 0),
(105, 'main', 0, 0, 0, 0),
(106, 'css', 0, 0, 0, 0),
(107, '那', 0, 0, 0, 0),
(108, 'pointer', 0, 0, 0, 0),
(109, 'events', 0, 0, 0, 0),
(110, '属', 0, 0, 0, 0),
(111, '性', 0, 0, 0, 0),
(112, '因', 0, 0, 0, 0),
(113, '为', 1, 1, 0, 0),
(114, 'presto', 0, 0, 0, 0),
(115, '核', 0, 0, 0, 0),
(116, '用', 0, 1, 0, 0),
(117, 'display', 0, 0, 0, 0),
(118, 'none，', 0, 0, 0, 0),
(119, '取', 0, 0, 0, 0),
(120, '代', 0, 0, 0, 0),
(121, 'opacity', 0, 0, 0, 0),
(122, '0', 0, 0, 0, 0),
(123, 'none', 0, 0, 0, 0),
(124, '方', 0, 0, 0, 0),
(125, '案', 0, 0, 0, 0),
(126, '要', 0, 0, 0, 0),
(127, '针', 0, 0, 0, 0),
(128, '对', 0, 0, 0, 0),
(129, 'hack', 0, 0, 0, 0),
(130, '话', 0, 0, 0, 0),
(131, '参', 0, 0, 0, 0),
(132, '考', 0, 0, 0, 0),
(133, '网', 0, 1, 0, 0),
(134, '页', 0, 0, 0, 0),
(135, 'user', 0, 0, 0, 0),
(136, 'kenny', 0, 0, 0, 0),
(137, 'testtestestest', 0, 0, 0, 0),
(138, 'test', 1, 1, 0, 0),
(139, 'testtesttesttesttesttesttesttest', 2, 0, 0, 0),
(140, 'testtest', 0, 1, 1, 1),
(141, 'testtesttesttesttesttesttesttesttesttest', 0, 1, 0, 0),
(142, 'padding', 0, 0, 0, 0),
(143, 'left', 0, 0, 0, 0),
(144, '5px', 0, 0, 0, 0),
(145, 'nullam', 3, 6, 0, 0),
(146, 'quis', 0, 5, 0, 0),
(147, 'risus', 0, 5, 0, 0),
(148, 'eget', 0, 6, 0, 0),
(149, 'urna', 0, 5, 0, 0),
(150, 'mollis', 0, 6, 0, 0),
(151, 'ornare', 0, 7, 0, 0),
(152, 'vel', 0, 7, 0, 0),
(153, 'eu', 0, 7, 0, 0),
(154, 'leo', 0, 7, 0, 0),
(155, 'sed', 0, 6, 0, 0),
(156, 'posuere', 0, 5, 0, 0),
(157, 'consectetur', 2, 7, 0, 0),
(158, 'est', 0, 4, 0, 0),
(159, 'at', 0, 6, 0, 0),
(160, 'lobortis', 0, 4, 0, 0),
(161, 'morbi', 0, 1, 0, 0),
(162, 'porta', 0, 3, 0, 0),
(163, 'ac', 0, 3, 0, 0),
(164, 'vestibulum', 0, 3, 0, 0),
(165, 'eros', 0, 1, 0, 0),
(166, 'donec', 0, 6, 0, 0),
(167, 'id', 0, 6, 0, 0),
(168, 'elit', 0, 6, 0, 0),
(169, 'non', 0, 5, 0, 0),
(170, 'mi', 0, 3, 0, 0),
(171, 'gravida', 0, 3, 0, 0),
(172, 'metus', 0, 5, 0, 0),
(173, 'maecenas', 0, 4, 1, 1),
(174, 'faucibus', 0, 5, 0, 0),
(175, 'interdum', 0, 4, 0, 0),
(176, 'vivamus', 0, 2, 0, 0),
(177, 'sagittis', 0, 2, 0, 0),
(178, 'lacus', 0, 2, 0, 0),
(179, 'augue', 0, 4, 0, 0),
(180, 'laoreet', 0, 2, 0, 0),
(181, 'rutrum', 0, 2, 0, 0),
(182, 'dolor', 0, 7, 0, 0),
(183, 'auctor', 0, 4, 0, 0),
(184, 'adipiscing', 1, 5, 0, 0),
(185, 'aenean', 0, 6, 0, 0),
(186, 'quam', 0, 5, 0, 0),
(187, 'pellentesque', 1, 3, 0, 0),
(188, 'sem', 0, 3, 0, 0),
(189, 'lacinia', 0, 6, 0, 0),
(190, 'venenatis', 2, 6, 0, 0),
(191, 'praesent', 0, 4, 0, 0),
(192, 'commodo', 0, 4, 0, 0),
(193, 'cursus', 0, 4, 0, 0),
(194, 'magna', 0, 4, 0, 0),
(195, 'scelerisque', 0, 4, 0, 0),
(196, 'nisl', 0, 4, 0, 0),
(197, 'et', 0, 4, 0, 0),
(198, 'nibh', 0, 4, 0, 0),
(199, 'ultricies', 0, 4, 0, 0),
(200, 'vehicula', 0, 4, 0, 0),
(201, 'ut', 0, 4, 0, 0),
(202, 'nulla', 0, 7, 0, 0),
(203, 'vitae', 0, 3, 0, 0),
(204, 'libero', 0, 3, 0, 0),
(205, 'a', 0, 6, 0, 0),
(206, 'pharetra', 0, 3, 0, 0),
(207, '来', 0, 0, 0, 0),
(208, '自', 0, 0, 0, 0),
(209, '中', 0, 0, 0, 0),
(210, '文', 0, 0, 0, 0),
(211, '测', 0, 1, 0, 0),
(212, '试', 1, 2, 1, 0),
(213, 'cras', 0, 6, 0, 0),
(214, 'justo', 0, 3, 0, 0),
(215, 'odio', 0, 3, 0, 0),
(216, 'dapibus', 0, 5, 0, 0),
(217, 'facilisis', 0, 3, 0, 0),
(218, 'in', 0, 3, 0, 0),
(219, 'egestas', 0, 3, 0, 0),
(220, 'lorem', 1, 5, 0, 0),
(221, 'ipsum', 1, 5, 0, 0),
(222, 'sit', 0, 6, 0, 0),
(223, 'amet', 0, 6, 0, 0),
(224, 'mattis', 0, 4, 0, 0),
(225, 'purus', 0, 4, 0, 0),
(226, 'fermentum', 0, 4, 0, 0),
(227, 'duis', 0, 0, 0, 0),
(228, 'luctus', 0, 0, 0, 0),
(229, 'nisi', 0, 0, 0, 0),
(230, 'erat', 0, 4, 0, 0),
(231, 'porttitor', 0, 0, 0, 0),
(232, 'ligula', 0, 1, 0, 0),
(233, 'nec', 0, 0, 0, 0),
(234, 'etiam', 0, 1, 0, 0),
(235, 'malesuada', 0, 1, 0, 0),
(236, 'euismod', 0, 1, 0, 0),
(237, 'integer', 0, 4, 0, 0),
(238, 'ante', 0, 4, 0, 0),
(239, 'velit', 0, 4, 0, 0),
(240, 'aliquet', 0, 4, 0, 0),
(241, 'felis', 0, 1, 0, 0),
(242, 'semper', 0, 1, 0, 0),
(243, 'curabitur', 0, 0, 0, 0),
(244, 'blandit', 0, 1, 0, 0),
(245, 'tempus', 0, 0, 0, 0),
(246, 'vulputate', 3, 0, 0, 0),
(247, 'diam', 0, 1, 0, 0),
(248, 'varius', 0, 1, 0, 0),
(249, 'bibendum', 0, 5, 0, 0),
(250, 'cum', 0, 3, 0, 0),
(251, 'sociis', 0, 3, 0, 0),
(252, 'natoque', 0, 3, 0, 0),
(253, 'penatibus', 0, 3, 0, 0),
(254, 'magnis', 0, 3, 0, 0),
(255, 'dis', 0, 3, 0, 0),
(256, 'parturient', 0, 3, 0, 0),
(257, 'montes', 0, 3, 0, 0),
(258, 'nascetur', 0, 3, 0, 0),
(259, 'ridiculus', 0, 3, 0, 0),
(260, 'mus', 0, 3, 0, 0),
(261, 'dui', 0, 1, 0, 0),
(262, 'ullamcorper', 0, 2, 0, 0),
(263, 'fringilla', 0, 2, 0, 0),
(264, 'bug', 1, 0, 0, 0),
(265, '回', 2, 1, 0, 0),
(266, '馈', 1, 0, 0, 0),
(267, '安', 0, 1, 0, 0),
(268, '卓', 0, 1, 0, 0),
(269, '4', 0, 1, 0, 0),
(270, '12', 0, 1, 0, 0),
(271, '富', 0, 1, 0, 0),
(272, '士', 0, 1, 0, 0),
(273, 'f', 0, 1, 0, 0),
(274, '02e', 0, 1, 0, 0),
(275, '，tegra3', 0, 1, 0, 0),
(276, '1080p，', 0, 1, 0, 0),
(277, '虚', 0, 1, 0, 0),
(278, '键', 0, 1, 0, 0),
(279, '横', 0, 1, 0, 0),
(280, '屏', 0, 1, 0, 0),
(281, '使', 0, 1, 0, 0),
(282, '公', 0, 1, 0, 0),
(283, '版', 0, 1, 0, 0),
(284, 'cut', 0, 1, 0, 0),
(285, 'the', 0, 1, 0, 0),
(286, 'rope（', 0, 1, 0, 0),
(287, '割', 0, 1, 0, 0),
(288, '绳', 0, 1, 0, 0),
(289, '子', 0, 1, 0, 0),
(290, '）', 0, 1, 0, 0),
(291, '时', 0, 1, 0, 0),
(292, '强', 0, 1, 0, 0),
(293, '制', 0, 1, 0, 0),
(294, '1200', 0, 1, 0, 0),
(295, '800，', 0, 1, 0, 0),
(296, '触', 0, 1, 0, 0),
(297, '摸', 0, 1, 0, 0),
(298, '与', 0, 1, 0, 0),
(299, '显', 0, 1, 0, 0),
(300, '示', 0, 1, 0, 0),
(301, '痕', 0, 1, 0, 0),
(302, '迹', 0, 1, 0, 0),
(303, '有', 0, 1, 0, 0),
(304, '位', 0, 1, 0, 0),
(305, '移', 0, 1, 0, 0),
(306, '导', 0, 1, 0, 0),
(307, '致', 0, 1, 0, 0),
(308, '附', 0, 1, 0, 0),
(309, '效', 0, 1, 0, 0),
(310, '另', 0, 1, 0, 0),
(311, '询', 0, 1, 0, 0),
(312, 'ios', 0, 1, 0, 0),
(313, '布', 0, 1, 0, 0),
(314, '间', 0, 1, 0, 0),
(315, 'gravatar', 1, 1, 0, 0),
(316, 'inceptos', 2, 0, 0, 0),
(317, 'asdasdasdasdasdasdasd', 0, 1, 0, 0),
(318, '今', 1, 0, 0, 0),
(319, '天', 1, 0, 0, 0),
(320, '温', 1, 0, 1, 0),
(321, '度', 1, 0, 1, 0),
(322, 'rt', 0, 1, 0, 0),
(323, '温度', 0, 0, 0, 1),
(324, '哈', 0, 0, 0, 0),
(325, 'asdasdasasdadsdasdasd', 1, 0, 0, 0),
(326, 'asdsda', 0, 1, 0, 0),
(327, 'adasda', 0, 0, 1, 1),
(328, 'no', 0, 1, 0, 0),
(329, 'reason', 0, 1, 0, 0),
(330, 'maecenasssss', 1, 0, 0, 0),
(331, 'how', 0, 0, 0, 0),
(332, 'can', 0, 0, 0, 0),
(333, 'i', 0, 0, 0, 0),
(334, 'solve', 0, 0, 0, 0),
(335, 'this', 0, 0, 0, 0),
(336, 'issue', 0, 0, 0, 0),
(337, 'hi', 0, 0, 0, 0),
(338, 'all', 0, 0, 0, 0),
(339, 'im', 0, 0, 0, 0),
(340, 'dev', 0, 0, 0, 0),
(341, 'from', 0, 0, 0, 0),
(342, 'oslo', 0, 0, 0, 0),
(343, 'opera', 0, 0, 0, 0),
(344, 'hq', 0, 0, 0, 0),
(345, 'indeed', 0, 0, 0, 0),
(346, 'emulator', 0, 0, 0, 0),
(347, 'is', 0, 0, 0, 0),
(348, 'unable', 0, 0, 0, 0),
(349, 'running', 0, 0, 0, 0),
(350, 'on', 0, 0, 0, 0),
(351, 'my', 0, 0, 0, 0),
(352, 'nexus', 0, 0, 0, 0),
(353, 's', 0, 0, 0, 0),
(354, 'phone', 0, 0, 0, 0),
(355, 'so', 0, 0, 0, 0),
(356, 'please', 0, 0, 0, 0),
(357, 'check', 0, 0, 0, 0),
(358, 'what', 0, 0, 0, 0),
(359, 'went', 0, 0, 0, 0),
(360, 'wrong', 0, 0, 0, 0),
(361, 'it', 0, 0, 0, 0),
(362, 'thanks', 0, 0, 0, 0),
(363, 'anonymous', 0, 0, 0, 0),
(364, 'device', 0, 0, 0, 0),
(365, 'mobile', 0, 0, 1, 1),
(366, 'spam', 0, 1, 0, 0),
(367, 'itsatestitsatestitsatestitsatestitsatestitsatestitsatest', 0, 1, 0, 0),
(368, '什', 1, 0, 0, 0),
(369, '么', 2, 1, 0, 0),
(370, '？？？？', 1, 0, 0, 0),
(371, '端', 1, 1, 0, 0),
(372, '直', 1, 1, 0, 0),
(373, '连', 1, 1, 0, 0),
(374, '到', 1, 1, 0, 0),
(375, '远', 1, 1, 0, 0),
(376, '程', 1, 1, 0, 0),
(377, '怎', 1, 1, 0, 0),
(378, '已', 0, 1, 0, 0),
(379, '同', 0, 1, 0, 0),
(380, '局', 0, 1, 0, 0),
(381, '域', 0, 1, 0, 0),
(382, '咯', 0, 1, 0, 0),
(383, '但', 0, 1, 0, 0),
(384, '还', 0, 1, 0, 0),
(385, '上', 0, 1, 0, 0),
(386, 'debugger', 0, 0, 1, 1),
(387, '调试', 0, 0, 0, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `qa_categorymetas`
--
ALTER TABLE `qa_categorymetas`
  ADD CONSTRAINT `qa_categorymetas_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `qa_categories` (`categoryid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_contentwords`
--
ALTER TABLE `qa_contentwords`
  ADD CONSTRAINT `qa_contentwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_contentwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_postmetas`
--
ALTER TABLE `qa_postmetas`
  ADD CONSTRAINT `qa_postmetas_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_posts`
--
ALTER TABLE `qa_posts`
  ADD CONSTRAINT `qa_posts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_posts_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `qa_posts` (`postid`),
  ADD CONSTRAINT `qa_posts_ibfk_3` FOREIGN KEY (`categoryid`) REFERENCES `qa_categories` (`categoryid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_posts_ibfk_4` FOREIGN KEY (`closedbyid`) REFERENCES `qa_posts` (`postid`);

--
-- Constraints for table `qa_posttags`
--
ALTER TABLE `qa_posttags`
  ADD CONSTRAINT `qa_posttags_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_posttags_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_tagwords`
--
ALTER TABLE `qa_tagwords`
  ADD CONSTRAINT `qa_tagwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_tagwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_titlewords`
--
ALTER TABLE `qa_titlewords`
  ADD CONSTRAINT `qa_titlewords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_titlewords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_userevents`
--
ALTER TABLE `qa_userevents`
  ADD CONSTRAINT `qa_userevents_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userfavorites`
--
ALTER TABLE `qa_userfavorites`
  ADD CONSTRAINT `qa_userfavorites_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userlevels`
--
ALTER TABLE `qa_userlevels`
  ADD CONSTRAINT `qa_userlevels_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userlimits`
--
ALTER TABLE `qa_userlimits`
  ADD CONSTRAINT `qa_userlimits_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userlogins`
--
ALTER TABLE `qa_userlogins`
  ADD CONSTRAINT `qa_userlogins_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_usermetas`
--
ALTER TABLE `qa_usermetas`
  ADD CONSTRAINT `qa_usermetas_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_usernotices`
--
ALTER TABLE `qa_usernotices`
  ADD CONSTRAINT `qa_usernotices_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userprofile`
--
ALTER TABLE `qa_userprofile`
  ADD CONSTRAINT `qa_userprofile_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_uservotes`
--
ALTER TABLE `qa_uservotes`
  ADD CONSTRAINT `qa_uservotes_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_uservotes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;
