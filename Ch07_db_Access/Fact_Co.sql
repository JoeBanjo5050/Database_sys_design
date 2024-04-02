#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=C:/Users/leebr/Documents/MS_in_CS/CSCI 6410 Database Systems Design/Ch07_db_Access/Ch07_Fact.mdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=movedb
#   storageengine=MyISAM
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=LONGTEXT
#   datetimetype=DATETIME
#

CREATE DATABASE IF NOT EXISTS `movedb`;
USE `movedb`;

#
# Table structure for table 'AUTHOR'
#

DROP TABLE IF EXISTS `AUTHOR`;

CREATE TABLE `AUTHOR` (
  `AU_ID` INTEGER NOT NULL DEFAULT 0, 
  `AU_FNAME` VARCHAR(30), 
  `AU_LNAME` VARCHAR(30), 
  `AU_BIRTHYEAR` INTEGER DEFAULT 0, 
  INDEX (`AU_ID`), 
  PRIMARY KEY (`AU_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'AUTHOR'
#

INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (185, 'Benson', 'Reeves', 1990);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (218, 'Rachel', 'Beatney', 1983);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (229, 'Carmine', 'Salvadore', NULL);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (251, 'Hugo', 'Bruer', 1972);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (262, 'Xia', 'Chiang', NULL);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (273, 'Reba', 'Durante', 1969);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (284, 'Trina', 'Tankersly', 1961);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (383, 'Neal', 'Walsh', 1980);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (394, 'Robert', 'Lake', 1982);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (438, 'Perry', 'Pearson', 1986);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (460, 'Connie', 'Paulsen', 1983);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (559, 'Rachel', 'McGill', NULL);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (581, 'Manish', 'Aggerwal', 1984);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (592, 'Lawrence', 'Sheel', 1976);
INSERT INTO `AUTHOR` (`AU_ID`, `AU_FNAME`, `AU_LNAME`, `AU_BIRTHYEAR`) VALUES (603, 'Julia', 'Palca', 1988);
# 15 records

#
# Table structure for table 'BOOK'
#

DROP TABLE IF EXISTS `BOOK`;

CREATE TABLE `BOOK` (
  `BOOK_NUM` INTEGER NOT NULL DEFAULT 0, 
  `BOOK_TITLE` VARCHAR(120) NOT NULL, 
  `BOOK_YEAR` INTEGER DEFAULT 0, 
  `BOOK_COST` DECIMAL(8,2) DEFAULT 0, 
  `BOOK_SUBJECT` VARCHAR(120), 
  `PAT_ID` INTEGER DEFAULT 0, 
  INDEX (`BOOK_NUM`), 
  INDEX (`PAT_ID`), 
  PRIMARY KEY (`BOOK_NUM`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'BOOK'
#

INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5235, 'Beginner\'s Guide to JAVA', 2014, 59.95, 'Programming', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5236, 'Database in the Cloud', 2014, 79.95, 'Cloud', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5237, 'Mastering the database environment', 2015, 89.95, 'Database', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5238, 'Conceptual Programming', 2015, 59.95, 'Programming', 1229);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5239, 'J++ in Mobile Apps', 2015, 49.95, 'Programming', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5240, 'iOS Programming', 2015, 79.95, 'Programming', 1212);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5241, 'JAVA First Steps', 2015, 49.95, 'Programming', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5242, 'C# in Middleware Deployment', 2015, 59.95, 'Middleware', 1228);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5243, 'DATABASES in Theory', 2015, 129.95, 'Database', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5244, 'Cloud-based Mobile Applications', 2015, 69.95, 'Cloud', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5245, 'The Golden Road to Platform independence', 2016, 119.95, 'Middleware', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5246, 'Capture the Cloud', 2016, 69.95, 'Cloud', 1172);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5247, 'Shining Through the Cloud: Sun Programming', 2016, 109.95, 'Programming', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5248, 'What You Always Wanted to Know About Database, But Were Afraid to Ask', 2016, 49.95, 'Database', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5249, 'Starlight Applications', 2016, 69.95, 'Cloud', 1207);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5250, 'Reengineering the Middle Tier', 2016, 89.95, 'Middleware', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5251, 'Thoughts on Revitalizing Ruby', 2016, 59.95, 'Programming', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5252, 'Beyond the Database Veil', 2016, 69.95, 'Database', 1229);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5253, 'Virtual Programming for Virtual Environments', 2016, 79.95, 'Programming', NULL);
INSERT INTO `BOOK` (`BOOK_NUM`, `BOOK_TITLE`, `BOOK_YEAR`, `BOOK_COST`, `BOOK_SUBJECT`, `PAT_ID`) VALUES (5254, 'Coding Style for Maintenance', 2017, 49.95, 'Programming', NULL);
# 20 records

#
# Table structure for table 'CHECKOUT'
#

DROP TABLE IF EXISTS `CHECKOUT`;

CREATE TABLE `CHECKOUT` (
  `CHECK_NUM` INTEGER NOT NULL, 
  `BOOK_NUM` INTEGER, 
  `PAT_ID` INTEGER, 
  `CHECK_OUT_DATE` DATETIME, 
  `CHECK_DUE_DATE` DATETIME, 
  `CHECK_IN_DATE` DATETIME, 
  INDEX (`BOOK_NUM`), 
  INDEX (`CHECK_NUM`), 
  INDEX (`PAT_ID`), 
  PRIMARY KEY (`CHECK_NUM`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'CHECKOUT'
#

INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91001, 5235, 1165, '2017-03-31 00:00:00', '2017-04-14 00:00:00', '2017-04-09 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91002, 5238, 1209, '2017-03-31 00:00:00', '2017-04-07 00:00:00', '2017-04-05 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91003, 5240, 1160, '2017-03-31 00:00:00', '2017-04-14 00:00:00', '2017-04-09 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91004, 5237, 1160, '2017-03-31 00:00:00', '2017-04-14 00:00:00', '2017-04-03 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91005, 5236, 1202, '2017-03-31 00:00:00', '2017-04-07 00:00:00', '2017-04-08 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91006, 5235, 1203, '2017-04-05 00:00:00', '2017-04-12 00:00:00', '2017-04-13 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91007, 5244, 1174, '2017-04-05 00:00:00', '2017-04-12 00:00:00', '2017-04-08 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91008, 5248, 1181, '2017-04-05 00:00:00', '2017-04-12 00:00:00', '2017-04-06 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91009, 5242, 1170, '2017-04-05 00:00:00', '2017-04-19 00:00:00', '2017-04-09 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91010, 5235, 1161, '2017-04-05 00:00:00', '2017-04-19 00:00:00', '2017-04-05 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91011, 5236, 1181, '2017-04-05 00:00:00', '2017-04-12 00:00:00', '2017-04-11 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91012, 5249, 1181, '2017-04-08 00:00:00', '2017-04-15 00:00:00', '2017-04-12 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91013, 5240, 1160, '2017-04-10 00:00:00', '2017-04-24 00:00:00', '2017-04-19 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91014, 5236, 1204, '2017-04-11 00:00:00', '2017-04-18 00:00:00', '2017-04-19 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91015, 5237, 1204, '2017-04-11 00:00:00', '2017-04-18 00:00:00', '2017-04-13 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91016, 5236, 1183, '2017-04-13 00:00:00', '2017-04-27 00:00:00', '2017-04-14 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91017, 5240, 1184, '2017-04-14 00:00:00', '2017-04-21 00:00:00', '2017-04-22 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91018, 5236, 1170, '2017-04-14 00:00:00', '2017-04-28 00:00:00', '2017-04-14 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91019, 5246, 1171, '2017-04-14 00:00:00', '2017-04-21 00:00:00', '2017-04-17 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91020, 5254, 1185, '2017-04-16 00:00:00', '2017-04-23 00:00:00', '2017-04-23 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91021, 5238, 1185, '2017-04-16 00:00:00', '2017-04-23 00:00:00', '2017-04-21 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91022, 5252, 1171, '2017-04-16 00:00:00', '2017-04-23 00:00:00', '2017-04-19 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91023, 5249, 1207, '2017-04-16 00:00:00', '2017-04-23 00:00:00', '2017-04-19 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91024, 5235, 1209, '2017-04-21 00:00:00', '2017-04-28 00:00:00', '2017-04-29 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91025, 5246, 1172, '2017-04-21 00:00:00', '2017-04-28 00:00:00', '2017-04-27 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91026, 5254, 1161, '2017-04-21 00:00:00', '2017-05-04 00:00:00', '2017-04-26 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91027, 5243, 1161, '2017-04-21 00:00:00', '2017-05-04 00:00:00', '2017-04-26 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91028, 5236, 1183, '2017-04-22 00:00:00', '2017-05-05 00:00:00', '2017-04-30 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91029, 5244, 1203, '2017-04-22 00:00:00', '2017-04-29 00:00:00', '2017-04-26 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91030, 5242, 1207, '2017-04-22 00:00:00', '2017-04-29 00:00:00', '2017-04-30 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91031, 5252, 1165, '2017-04-23 00:00:00', '2017-05-06 00:00:00', '2017-04-30 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91032, 5238, 1172, '2017-04-23 00:00:00', '2017-04-30 00:00:00', '2017-04-26 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91033, 5235, 1174, '2017-04-23 00:00:00', '2017-04-30 00:00:00', '2017-04-23 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91034, 5240, 1185, '2017-04-23 00:00:00', '2017-04-30 00:00:00', '2017-05-01 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91035, 5248, 1165, '2017-04-24 00:00:00', '2017-05-07 00:00:00', '2017-04-25 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91036, 5237, 1202, '2017-04-24 00:00:00', '2017-04-30 00:00:00', '2017-04-28 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91037, 5235, 1210, '2017-04-28 00:00:00', '2017-05-04 00:00:00', '2017-05-01 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91038, 5238, 1215, '2017-04-28 00:00:00', '2017-05-04 00:00:00', '2017-04-30 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91039, 5240, 1222, '2017-04-28 00:00:00', '2017-05-04 00:00:00', '2017-05-06 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91040, 5237, 1228, '2017-04-28 00:00:00', '2017-05-04 00:00:00', '2017-05-05 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91041, 5236, 1211, '2017-04-28 00:00:00', '2017-05-04 00:00:00', '2017-04-30 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91042, 5235, 1220, '2017-04-29 00:00:00', '2017-05-05 00:00:00', '2017-05-05 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91043, 5244, 1226, '2017-04-29 00:00:00', '2017-05-05 00:00:00', '2017-05-07 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91044, 5248, 1219, '2017-04-30 00:00:00', '2017-05-07 00:00:00', '2017-05-08 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91045, 5242, 1210, '2017-04-30 00:00:00', '2017-05-07 00:00:00', '2017-05-04 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91046, 5235, 1225, '2017-04-30 00:00:00', '2017-05-07 00:00:00', '2017-05-03 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91047, 5236, 1218, '2017-04-30 00:00:00', '2017-05-07 00:00:00', '2017-05-07 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91048, 5249, 1229, '2017-05-04 00:00:00', '2017-05-11 00:00:00', '2017-05-06 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91049, 5240, 1214, '2017-05-04 00:00:00', '2017-05-11 00:00:00', '2017-05-04 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91050, 5236, 1220, '2017-05-08 00:00:00', '2017-05-15 00:00:00', '2017-05-13 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91051, 5237, 1222, '2017-05-08 00:00:00', '2017-05-15 00:00:00', '2017-05-15 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91052, 5236, 1213, '2017-05-08 00:00:00', '2017-05-15 00:00:00', '2017-05-08 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91053, 5240, 1212, '2017-05-09 00:00:00', '2017-05-16 00:00:00', NULL);
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91054, 5236, 1221, '2017-05-09 00:00:00', '2017-05-16 00:00:00', '2017-05-11 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91055, 5246, 1221, '2017-05-09 00:00:00', '2017-05-16 00:00:00', '2017-05-10 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91056, 5254, 1224, '2017-05-10 00:00:00', '2017-05-17 00:00:00', '2017-05-15 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91057, 5238, 1224, '2017-05-10 00:00:00', '2017-05-17 00:00:00', '2017-05-11 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91058, 5252, 1171, '2017-05-10 00:00:00', '2017-05-17 00:00:00', '2017-05-15 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91059, 5249, 1207, '2017-05-10 00:00:00', '2017-05-17 00:00:00', NULL);
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91060, 5235, 1209, '2017-05-15 00:00:00', '2017-05-22 00:00:00', '2017-05-18 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91061, 5246, 1172, '2017-05-15 00:00:00', '2017-05-22 00:00:00', NULL);
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91062, 5254, 1223, '2017-05-15 00:00:00', '2017-05-22 00:00:00', '2017-05-16 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91063, 5243, 1223, '2017-05-15 00:00:00', '2017-05-22 00:00:00', '2017-05-20 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91064, 5236, 1183, '2017-05-17 00:00:00', '2017-05-31 00:00:00', '2017-05-21 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91065, 5244, 1210, '2017-05-17 00:00:00', '2017-05-24 00:00:00', '2017-05-17 00:00:00');
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91066, 5242, 1228, '2017-05-19 00:00:00', '2017-05-26 00:00:00', NULL);
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91067, 5252, 1229, '2017-05-24 00:00:00', '2017-05-31 00:00:00', NULL);
INSERT INTO `CHECKOUT` (`CHECK_NUM`, `BOOK_NUM`, `PAT_ID`, `CHECK_OUT_DATE`, `CHECK_DUE_DATE`, `CHECK_IN_DATE`) VALUES (91068, 5238, 1229, '2017-05-24 00:00:00', '2017-05-31 00:00:00', NULL);
# 68 records

#
# Table structure for table 'PATRON'
#

DROP TABLE IF EXISTS `PATRON`;

CREATE TABLE `PATRON` (
  `PAT_ID` INTEGER NOT NULL DEFAULT 0, 
  `PAT_FNAME` VARCHAR(20) NOT NULL, 
  `PAT_LNAME` VARCHAR(20) NOT NULL, 
  `PAT_TYPE` VARCHAR(10) NOT NULL, 
  INDEX (`PAT_ID`), 
  PRIMARY KEY (`PAT_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'PATRON'
#

INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1160, 'robert', 'carter', 'Faculty');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1161, 'Kelsey', 'Koch', 'Faculty');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1165, 'Cedric', 'Baldwin', 'Faculty');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1166, 'Vera', 'Alvarado', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1167, 'Alan', 'Martin', 'FACULTY');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1170, 'Cory', 'Barry', 'faculty');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1171, 'Peggy', 'Marsh', 'STUDENT');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1172, 'Tony', 'Miles', 'STUDENT');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1174, 'Betsy', 'Malone', 'STUDENT');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1180, 'Nadine', 'Blair', 'STUDENT');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1181, 'Allen', 'Horne', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1182, 'Jamal', 'Melendez', 'STUDENT');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1183, 'Helena', 'Hughes', 'Faculty');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1184, 'Jimmie', 'Love', 'StudenT');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1185, 'Sandra', 'Yang', 'student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1200, 'Lorenzo', 'Torres', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1201, 'Shelby', 'Noble', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1202, 'Holly', 'Anthony', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1203, 'Tyler', 'Pope', 'STUDENT');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1204, 'Thomas', 'Duran', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1205, 'Claire', 'Gomez', 'student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1207, 'Iva', 'Ramos', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1208, 'Ollie', 'Cantrell', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1209, 'Rena', 'Mathis', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1210, 'Keith', 'Cooley', 'STUdent');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1211, 'Jerald', 'Gaines', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1212, 'Iva', 'McClain', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1213, 'Desiree', 'Rivas', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1214, 'Marina', 'King', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1215, 'Maureen', 'Downs', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1218, 'Angel', 'Terrell', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1219, 'Desiree', 'Harrington', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1220, 'Carlton', 'Morton', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1221, 'Gloria', 'Pitts', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1222, 'Zach', 'Kelly', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1223, 'Jose', 'Hays', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1224, 'Jewel', 'England', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1225, 'Wilfred', 'Fuller', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1226, 'Jeff', 'Owens', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1227, 'Alicia', 'Dickson', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1228, 'Homer', 'Goodman', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1229, 'Gerald', 'Burke', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1237, 'Brandi', 'Larson', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1238, 'Erika', 'Bowen', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1239, 'Elton', 'Irwin', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1240, 'Jan', 'Joyce', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1241, 'Irene', 'West', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1242, 'Mario', 'King', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1243, 'Roberto', 'Kennedy', 'Student');
INSERT INTO `PATRON` (`PAT_ID`, `PAT_FNAME`, `PAT_LNAME`, `PAT_TYPE`) VALUES (1244, 'Leon', 'Richmond', 'Student');
# 50 records

#
# Table structure for table 'WRITES'
#

DROP TABLE IF EXISTS `WRITES`;

CREATE TABLE `WRITES` (
  `BOOK_NUM` INTEGER NOT NULL DEFAULT 0, 
  `AU_ID` INTEGER NOT NULL DEFAULT 0, 
  INDEX (`AU_ID`), 
  INDEX (`BOOK_NUM`), 
  PRIMARY KEY (`BOOK_NUM`, `AU_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'WRITES'
#

INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5235, 273);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5236, 383);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5237, 185);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5238, 603);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5239, 229);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5239, 460);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5239, 592);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5240, 218);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5241, 460);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5241, 559);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5242, 581);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5243, 251);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5244, 262);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5244, 284);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5245, 394);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5246, 251);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5247, 394);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5248, 229);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5249, 262);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5250, 383);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5250, 438);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5251, 460);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5252, 262);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5253, 185);
INSERT INTO `WRITES` (`BOOK_NUM`, `AU_ID`) VALUES (5254, 559);
# 25 records
