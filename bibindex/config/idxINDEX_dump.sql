-- MySQL dump 10.11
--
-- Host: 137.138.4.146    Database: inspirehep
-- ------------------------------------------------------
-- Server version	5.0.95-log

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
-- Dumping data for table `idxINDEX`
--

INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (1,'global','global','2013-01-18 12:55:14','en');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (2,'collection','collection','2013-01-18 06:24:23','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (3,'author','author','2013-01-18 12:33:35','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (4,'keyword','keyword','2013-01-18 07:24:13','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (5,'reference','reference','2013-01-18 14:52:22','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (6,'reportnumber','reportnumber','2013-01-18 07:24:13','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (7,'title','title','2013-01-18 07:24:13','en');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (8,'year','year','2013-01-17 13:50:18','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (9,'journal','journal','2013-01-18 07:24:13','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (10,'affiliation','affiliation','2013-01-17 13:50:18','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (11,'collaboration','collaboration','2013-01-17 13:50:18','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (12,'exactauthor','exactauthor','2013-01-18 12:33:35','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (14,'caption','caption','2013-01-18 07:24:13','en');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (13,'fulltext','fulltext','2013-01-17 10:21:34','en');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (15,'firstauthor','firstauthor','2013-01-18 12:33:35','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (16,'address','address','2013-01-17 13:50:18','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (17,'postalcode','postal code','2013-01-17 13:50:18','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (18,'subject','subject','2013-01-17 13:50:18','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (19,'exactfirstauthor','exactfirstauthor','2013-01-18 12:33:35','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (20,'authorcount','This index contains number of authors of the record.','2013-01-18 12:33:35','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (21,'hepdataparent','','2013-01-17 23:06:46','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (22,'note','','2013-01-18 12:55:14','');
INSERT INTO `idxINDEX` (`id`, `name`, `description`, `last_updated`, `stemming_language`) VALUES (23,'publisher','','0000-00-00 00:00:00','');

--
-- Dumping data for table `idxINDEX_field`
--

INSERT INTO `idxINDEX_field` VALUES (1,1,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (2,9,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (3,3,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (4,5,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (5,8,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (6,6,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (7,2,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (8,10,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (9,13,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (10,15,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (11,16,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (12,17,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (14,23,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (13,22,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (15,24,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (16,25,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (17,26,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (10,30,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (1,25,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (19,38,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (18,7,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (20,39,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (21,43,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (22,44,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (9,45,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
INSERT INTO `idxINDEX_field` VALUES (23,46,'[.,:;?!\"]','[!\"#$\\%&\'()*+,-./:;<=>?@[\\]^\\_`{|}~]');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-18 15:16:09
