# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.22)
# Database: byuhonors
# Generation Time: 2018-09-04 19:59:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table directory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directory`;

CREATE TABLE `directory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `show_more` tinyint(1) DEFAULT '0' COMMENT 'Set to default value (false/0)',
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `office` varchar(255) DEFAULT NULL,
  `image_path` varchar(500) DEFAULT NULL,
  `coordinator` tinyint(1) DEFAULT NULL,
  `faculty` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `advisor` tinyint(1) DEFAULT NULL,
  `bio_link` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directory` WRITE;
/*!40000 ALTER TABLE `directory` DISABLE KEYS */;

INSERT INTO `directory` (`id`, `first_name`, `last_name`, `title`, `college`, `department`, `category`, `description`, `show_more`, `phone`, `email`, `office`, `image_path`, `coordinator`, `faculty`, `admin`, `advisor`, `bio_link`)
VALUES
	(3,'Julie','Radle','Program Administrator','Brigham Young University','Honors Program','Administration','Julie oversees all Honors program curriculum, operations, budgets, scholarships, and communications. She is the liaison for teaching assistants, Alcuin Fellows, Honors Coordinators and faculty.  She coordinates a variety of special events, seminars, and projects, including Late Summer Honors (LSH) and assessment. Julie is responsible for the Great Questions Essay Requirement and teaches the Great Questions essay tutorial course (HONRS 320).',0,'(801) 422-3038','julie_radle@byu.edu','102A MSRB','/img/directory/julie_radle.jpg',0,0,1,0,NULL),
	(4,'Vika','Filimoeatu','Advisement Center Manager','Brigham Young University','Honors Program','Administration','Vika manages all aspects of student advisement for the Honors Program. She supervises the student-to-student advising and works directly with students through the steps they take to produce their Honors theses. She advises Honors Student Advisory Council (HSAC) and teaches the leadership class (HONRS 391R) that HSAC leaders take during their service. She also oversees the Experiential Learning Requirement.',0,'(801) 422-1997','vika_filimoeatu@byu.edu','102B MSRB','/img/directory/vika_filimoeatu.jpg',0,0,1,1,NULL),
	(5,'Spencer','Magleby','Associate Dean and Director','Brigham Young University','Honors Program','Administration','Mechanical Engineering Professor Spencer Magleby is an Associate Dean of Undergraduate Education and oversees the University Honors Program.\n<br><br>\nHe came to BYU in 1989 after 6 years in the military aircraft industry developing tools for advanced aircraft design and manufacture, concurrent engineering methods, and interdisciplinary design teams. At BYU he has pursued research in design of products that use new mechanism technologies, design tools and processes that bridge engineering and business, and engineering team formation and management. He has helped oversee more than 200 student design projects through his involvement with the Capstone and Interdisciplinary Product Development programs, making him an excellent choice to prepare our Honors students for the demands of the 21st century. Professor Magleby also has supervisory responsibility National Scholarships and Prestigious Fellowships, and the Cambridge Pembroke-King\'s Programme.',0,'(801) 422-3151','magleby@byu.edu','350C MSRB','/img/directory/spencer_magleby.jpg',0,1,1,0,NULL),
	(6,'Collin','Myers','Advisor','Marriott School of Business','Honors Program','Advisors','Collin is a senior within the Marriott School of Business. He studies Finance and plans to begin his career with J.P. Morgan\'s Corporate & Investment Banking division. He enjoys reading, SCUBA diving, and trying new food. He considers his participation in the Honors Program to be one of the most fulfilling experiences of his college years and is thankful to work in a position where he can help other students through the Program.',0,'(801) 422-5497','honors@byu.edu','102 MSRB','/img/directory/collin_myers.jpg',0,0,0,1,NULL),
	(7,'Andrew','Orme','Advisor','College of Engineering','Honors Program','Advisors','A recent graduate of the Honors Program, Andrew is pursuing Master\'s Degree in Mechanical Engineering. He researches jet engine design and is exploring new computational methods to better characterize compressor performance.  He will work for the Air Force following his graduation.  He joined the Honors Program as a freshman in 2011 and served on the Honors Student Leadership Council last year, where he worked on planning and executing Honors Program Events.  He loves the outdoors, airplanes, and everything BYU!',0,'(801) 422-5497','honors@byu.edu','102 MSRB','/img/directory/andrew_orme.jpg',0,0,0,1,NULL),
	(8,'Danielle','Wardinsky','Advisor','Fine Arts and Communications | Humanities','Honors Program','Advisors','Danielle is a News Media student in the Communications program. She served on the Honors Student Leadership Council and loves getting to serve the Honors student community as an adviser. Her hobbies include watching great movies, spending money in Target, and searching for the best Mexican food in Utah Valley. She plans to continue her weather woman dreams and study Meteorology after graduating at BYU. ',0,'(801) 422-5497','honors@byu.edu','102 MSRB','/img/directory/danielle_wardinsky.jpg',0,0,0,1,NULL),
	(9,'Aaron','Eastley','Associate Professor','Humanities','English','Alcuin Fellows, 2018-2020','',0,'(801) 422-1695 ','aaron_eastley@byu.edu','4119 JFSB','/img/directory/aaron_eastley.jpg',0,1,0,0,NULL),
	(10,'Paul','Richards','Associate Professor','Engineering','Civil and Environmental Engineering','Alcuin Fellows, 2018-2020','',0,'(801) 422-6333','prichards@byu.edu','368N CB','/img/directory/paul_richards.jpg',0,1,0,0,NULL),
	(11,'Julianne','Grose','Associate Professor','Life Sciences','Micro and Molecular Biology','Alcuin Fellows, 2018-2020','',0,'(801) 422-4940','grosejulianne@gmail.com','3140 LSB','/img/directory/julianne_grose.jpg',0,1,0,0,NULL),
	(12,'John','Bennion','Professor','Humanities','English','Alcuin Fellows, 2018-2020','Because students are curious, bright, disciplined, and I have learned from them. Also because Honors gives me latitude in curriculum design.',0,'(801) 422-3419 ','john_bennion@byu.edu','4125 JFSB','/img/directory/john_bennion.jpg',0,1,0,0,NULL),
	(13,'Cynthia','Hallen','Associate Professor','Humanities','Linguistics and English Language','Alcuin Fellows, 2018-2020','',0,'(801) 422-2020','cynthia_hallen@byu.edu','4073 JFSB','/img/directory/cynthia_hallen.jpg',0,1,0,0,NULL),
	(14,'Patrick','Steffen','Professor','FHSS','Psychology','Alcuin Fellows, 2018-2020','',0,'(801) 422-7757','steffen@byu.edu','284 TLRB','/img/directory/patrick_steffen.jpg',0,1,0,0,NULL),
	(15,'John','Colton','Associate Professor','Physical and Mathematical Sciences','Physics','Alcuin Fellows, 2018-2020','',0,'(801) 422-0572','john_colton@byu.edu','N335 ESC','/img/directory/john_colton.jpg',0,1,0,0,NULL),
	(16,'Evan','Ward','Associate Professor','FHSS','History','Alcuin Fellows, 2018-2020','',0,'(801) 422-8056','evan_ward@byu.edu','2155 JFSB','/img/directory/evan_ward.jpg',0,1,0,0,NULL),
	(17,'Dennis','Cutchins','Associate Professor','Humanities','English','Alcuin Fellows, 2017-2019','',0,'(801) 422-9042','dennis_cutchins@byu.edu','4167 JFSB','/img/directory/dennis_cutchins.jpg',0,1,1,0,NULL),
	(18,'Brian','Poole','Associate Professor','Life Sciences','MMBio','Alcuin Fellows, 2017-2019','',0,'(801) 422-8092','brian_poole@byu.edu','3138 LSB','/img/directory/brian_poole.jpg',0,1,0,0,NULL),
	(19,'Mark','Purves','Associate Professor','Humanities','Russian','Alcuin Fellows, 2017-2019','',0,'(801) 422-8330','mark_purves@byu.edu','3094 JFSB','/img/directory/mark_purves.jpg',0,1,0,0,NULL),
	(20,'Michael','Call','Associate Professor','Humanities','Comparative Arts and Letters','Alcuin Fellows, 2017-2019','',0,'(801) 422-1616','michael_j_call@byu.edu','3039 JFSB','/img/directory/michael_call.jpg',0,1,0,0,NULL),
	(21,'Samuel','Otterstrom','Professor','FHSS','Geography','Alcuin Fellows, 2016-2018','',0,'(801) 422-7751','samuel_otterstrom@byu.edu','690F SWKT','/img/directory/samuel_otterstrom.jpg',0,1,0,0,NULL),
	(22,'Richard','Gill','Associate Professor','Life Sciences','Biology','Alcuin Fellows, 2015-2017','',0,'(801) 422-3856','rgill@byu.edu','4144 LSB','/img/directory/richard_gill.jpg',0,1,0,0,NULL),
	(23,'Eric','Huntsman',NULL,NULL,'Ancient Near East Studies',NULL,NULL,0,'801-735-7545','eric_huntsman@byu.edu','365F JSB',NULL,1,NULL,NULL,NULL,NULL),
	(24,'Kelly','Loosli',NULL,NULL,'Animation',NULL,NULL,0,'801-422-1825','kelly_loosli@byu.edu','D581 HFAC',NULL,1,NULL,NULL,NULL,NULL),
	(25,'Charles','Nuckolls',NULL,NULL,'Anthropology',NULL,NULL,0,'801-422-6110','charles_nuckolls@byu.edu','884 SWKT',NULL,1,NULL,NULL,NULL,NULL),
	(26,'Kirk','Larsen',NULL,NULL,'Area Studies Programs',NULL,NULL,0,'801-422-3445','kwlarsen67@gmail.com','2151 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(27,'Daniel','Barney',NULL,NULL,'Art',NULL,NULL,0,'801-422-1581','daniel_barney@byu.net','3116-D JKB',NULL,1,NULL,NULL,NULL,NULL),
	(28,'Martha','Peacock',NULL,NULL,'Art History-Curatorial Studies',NULL,NULL,0,'(801) 422-2149','martha_peacock@byu.edu','3053 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(29,'Stephen','Ricks',NULL,NULL,'Asian and Near Eastern Lang',NULL,NULL,0,'801-422-5428','Stephen_Ricks@byu.edu','3055 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(30,'Eric','Hyer',NULL,NULL,'Asian Studies',NULL,NULL,0,'(801) 422-4699','eric_hyer@byu.edu','780 SWKT',NULL,1,NULL,NULL,NULL,NULL),
	(31,'Steven','Peck',NULL,NULL,'Biology',NULL,NULL,0,'801-422-4145','slp3141@gmail.com','4145 LSB',NULL,1,NULL,NULL,NULL,NULL),
	(32,'Dean','Wheeler',NULL,NULL,'Chemical Engineering',NULL,NULL,0,'801-422-4126','dean_wheeler@byu.edu','350H CB',NULL,1,NULL,NULL,NULL,NULL),
	(33,'Merritt','Andrus',NULL,NULL,'Chemistry and Bio Chemistry',NULL,NULL,0,'801-422-8171','mbandrus@chem.byu.edu','C-410 BNSN',NULL,1,NULL,NULL,NULL,NULL),
	(34,'Michael','Scott',NULL,NULL,'Civil and Environmental Engineering',NULL,NULL,0,'801-422-6324','michael.scott@byu.edu','370 CB',NULL,1,NULL,NULL,NULL,NULL),
	(35,'Cecilia','Peek',NULL,NULL,'Classical Studies',NULL,NULL,0,'801-422-4564','cecilia_peek@byu.edu','3035 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(36,'David','McPherson',NULL,NULL,'Communication Disorders',NULL,NULL,0,'801-318-7508','david_mcpherson@byu.edu','129 TLRB',NULL,1,NULL,NULL,NULL,NULL),
	(37,'Tom','Robinson',NULL,NULL,'Communications',NULL,NULL,0,'801-422-3977','tom_robinson@byu.edu','305 BRMB',NULL,1,NULL,NULL,NULL,NULL),
	(38,'Larry','Peer',NULL,NULL,'Comparative Literature',NULL,NULL,0,'(801) 422-5529','larry_peer@byu.edu','3023 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(39,'Seth','Holladay',NULL,NULL,'Computer Science',NULL,NULL,0,'801-422-6490','seth_holladay@byu.edu','2220 TMCB',NULL,1,NULL,NULL,NULL,NULL),
	(40,'Clifton','Farnsworth',NULL,NULL,'Construction-Facilities Management',NULL,NULL,0,'801-422-6494','clifton_farnsworth@byu.edu','230 SNLB',NULL,1,NULL,NULL,NULL,NULL),
	(41,'Justin','Kunz',NULL,NULL,'Design',NULL,NULL,0,'949-419-7849','justin.kunz@byu.edu','F-533 HFAC',NULL,1,NULL,NULL,NULL,NULL),
	(42,'John','Stovall',NULL,NULL,'Economics',NULL,NULL,0,'801-422-7539','johnestovall@byu.edu','137 FOB',NULL,1,NULL,NULL,NULL,NULL),
	(43,'Bryant','Jensen',NULL,NULL,'Education-Teacher Ed',NULL,NULL,0,'801-422-3241','bryant_jensen@byu.edu','206T MCKB',NULL,1,NULL,NULL,NULL,NULL),
	(44,'Karl','Warnick',NULL,NULL,'Electrical and Computer Engineering',NULL,NULL,0,'801-422-1732','warnick@byu.edu','459 CB',NULL,1,NULL,NULL,NULL,NULL),
	(45,'John','Talbot',NULL,NULL,'English',NULL,NULL,0,'801-422-8235','John_Talbot@byu.edu','4198 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(46,'Heather','Belnap',NULL,NULL,'European Studies',NULL,NULL,0,'801-422-8242','heather_belnap@byu.edu','3051 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(47,'James','George',NULL,NULL,'Exercise Science',NULL,NULL,0,'801-422-8778','jim@byu.edu','228-A SFH',NULL,1,NULL,NULL,NULL,NULL),
	(48,'Brian','Hill',NULL,NULL,'Experience Design and Mngmnt',NULL,NULL,0,'801-422-1287','Brian_Hill@byu.edu','W-453 TNRB',NULL,1,NULL,NULL,NULL,NULL),
	(49,'Thomas','Draper',NULL,NULL,'Family Life, School of',NULL,NULL,0,'(801) 422-4438','draper@byu.edu','2102B JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(50,'Hal','Heaton',NULL,NULL,'Finance',NULL,NULL,0,'801-368-9734','halheaton@byu.edu','612 TNRB',NULL,1,NULL,NULL,NULL,NULL),
	(51,'Nicolaas','Unlandt',NULL,NULL,'French',NULL,NULL,0,'801-422-2895','nicolaas_unlandt@byu.edu','3123 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(52,'Samuel','Otterstrom',NULL,NULL,'Geography',NULL,NULL,0,'801-422-7751','samuel_otterstrom@byu.edu','690F SWKT',NULL,1,NULL,NULL,NULL,NULL),
	(53,'Brooks','Britt',NULL,NULL,'Geological Sciences',NULL,NULL,0,'(801) 422-7316','brooks_britt@byu.edu','S387 ESC',NULL,1,NULL,NULL,NULL,NULL),
	(54,'Mark','Purves',NULL,NULL,'German and Slavic',NULL,NULL,0,'801-422-8330','mark_purves@byu.edu','3094 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(55,'Brent','Barson',NULL,NULL,'Graphic Design',NULL,NULL,0,'801-422-7291','brent_barson@byu.edu','C502E HFAC',NULL,1,NULL,NULL,NULL,NULL),
	(56,'Len','Novilla',NULL,NULL,'Health Science (Public Health)',NULL,NULL,0,'801-422-9356','len_novilla@byu.edu','2064 LSB',NULL,1,NULL,NULL,NULL,NULL),
	(57,'Aaron','Skabelund',NULL,NULL,'History',NULL,NULL,0,'801-422-6838','aaron_skabelund@byu.edu','2140 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(58,'Robert T','Barrett',NULL,NULL,'Illustration',NULL,NULL,0,'801-422-6646','robert_barrett@byu.edu','F-543 HFAC',NULL,1,NULL,NULL,NULL,NULL),
	(59,'Richard E','Fry',NULL,NULL,'Industrial Design',NULL,NULL,0,'801-422-4445','rfry@byu.edu','265 CTB',NULL,1,NULL,NULL,NULL,NULL),
	(60,'Rayman','Meservy',NULL,NULL,'Information Systems',NULL,NULL,0,'801-362-2083','rayman_meservy@byu.edu','788 TNRB',NULL,1,NULL,NULL,NULL,NULL),
	(61,'Derek','Hansen',NULL,NULL,'Information Tech',NULL,NULL,0,'801-422-7467','dlhansen@byu.edu','265 B CTB',NULL,1,NULL,NULL,NULL,NULL),
	(62,'Francesca','Lawson',NULL,NULL,'Interdisciplinary Humanities',NULL,NULL,0,'801-422-5547','Francesca_Lawson@byu.edu','3034 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(63,'Randy','Page',NULL,NULL,'International Development',NULL,NULL,0,'801-422-1131','randy_page@byu.edu','2030 LSB',NULL,1,NULL,NULL,NULL,NULL),
	(64,'Ray','Christensen',NULL,NULL,'International Relations',NULL,NULL,0,'(801) 422-5133','ray_christensen@byu.edu','775 SWKT',NULL,1,NULL,NULL,NULL,NULL),
	(65,'Ilona','Klein',NULL,NULL,'Italian',NULL,NULL,0,'(801) 422-2016','ilona_klein@byu.edu','3141 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(66,'Jeffrey','Shumway',NULL,NULL,'Latin American Studies',NULL,NULL,0,'801-422-8943','jshumway@byu.edu','2143 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(67,'Cynthia','Hallen',NULL,NULL,'Linguistics and English Lang',NULL,NULL,0,'801-874-8997','cynthia_hallen@byu.edu','4073 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(68,'Mark','Hansen',NULL,NULL,'Management (Strategy, Entrepreneurship, HR)',NULL,NULL,0,'801-422-4362','mh_hansen@byu.edu','578 TNRB',NULL,1,NULL,NULL,NULL,NULL),
	(69,'Michael','Miles',NULL,NULL,'Manufacturing Engineering (MET)',NULL,NULL,0,'801-422-1858','mmiles@byu.edu','265 CTB',NULL,1,NULL,NULL,NULL,NULL),
	(70,'Paul','Jenkins',NULL,NULL,'Mathematics',NULL,NULL,0,'801-422-5868','jenkins@math.byu.edu','282 TMCB',NULL,1,NULL,NULL,NULL,NULL),
	(71,'Blake Ellis','Peterson',NULL,NULL,'Mathematics Education',NULL,NULL,0,'801-422-7784','blake@byu.edu','193B TMCB',NULL,1,NULL,NULL,NULL,NULL),
	(72,'Brian','Jensen',NULL,NULL,'Mechanical Engineering',NULL,NULL,0,'801-422-6030','bdjensen@byu.edu','455 A CTB',NULL,1,NULL,NULL,NULL,NULL),
	(73,'Quinn','Mecham',NULL,NULL,'MESA',NULL,NULL,0,'','qmecham@byu.edu','770 SWKT',NULL,1,NULL,NULL,NULL,NULL),
	(74,'R Paul','Evans',NULL,NULL,'Micro and Molecular Biology',NULL,NULL,0,'801-422-3259','evansp@byu.edu','3139 LSB',NULL,1,NULL,NULL,NULL,NULL),
	(75,'Steven','Johnson',NULL,NULL,'Music',NULL,NULL,0,'801-422-3217','steven_johnson@byu.edu','E-563 HFAC',NULL,1,NULL,NULL,NULL,NULL),
	(76,'Rebekka','Matheson',NULL,NULL,'Neuroscience',NULL,NULL,0,'801-422-2954','rebekka_matheson@byu.edu','1030 SWKT',NULL,1,NULL,NULL,NULL,NULL),
	(77,'Deborah','Himes',NULL,NULL,'Nursing',NULL,NULL,0,'801-422-6066','Deborah-Himes@byu.edu','426 SWKT',NULL,1,NULL,NULL,NULL,NULL),
	(78,'Jeff','Tessem',NULL,NULL,'Nutrition, Dietetics, Food Science',NULL,NULL,0,'801-422-9082','jeffery_tessem@byu.edu','S-243 ESC',NULL,1,NULL,NULL,NULL,NULL),
	(79,'Joe','Parry',NULL,NULL,'Philosophy',NULL,NULL,0,'801-422-3138','joseph_parry@byu.edu','3030 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(80,'Paul','Adams',NULL,NULL,'Photography',NULL,NULL,0,'801-422-8742','paulfkcc@hotmail.com','D-501C HFAC',NULL,1,NULL,NULL,NULL,NULL),
	(81,'Lawrence','Rees',NULL,NULL,'Physics and Astronomy',NULL,NULL,0,'(801) 422-4307','lawrence_rees@byu.edu','N-357 ESC',NULL,1,NULL,NULL,NULL,NULL),
	(82,'Jeff','Edwards',NULL,NULL,'Physiology-Developmental Bio',NULL,NULL,0,'801-422-8080','Jeffrey_Edwards@byu.edu','3046 LSB',NULL,1,NULL,NULL,NULL,NULL),
	(83,'Craig','Coleman',NULL,NULL,'Plant and Wildlife Sciences',NULL,NULL,0,'(801) 422-5145','Craig_Coleman@byu.edu','5134 LSB',NULL,1,NULL,NULL,NULL,NULL),
	(84,'John','Holbein',NULL,NULL,'Political Science',NULL,NULL,0,'801-422-7800','john_holbein@byu.edu','744 SWKT',NULL,1,NULL,NULL,NULL,NULL),
	(85,'Bruce','Brown',NULL,NULL,'Psychology',NULL,NULL,0,'801-422-6365','bruce_brown@byu.edu','1098 SWKT',NULL,1,NULL,NULL,NULL,NULL),
	(86,'Len','Novilla',NULL,NULL,'Public Health',NULL,NULL,0,'801-422-9356','len_novilla@byu.edu','2064 LSB',NULL,1,NULL,NULL,NULL,NULL),
	(87,'Michael','Cope',NULL,NULL,'Sociology',NULL,NULL,0,'801-422-9265','michaelrcope@byu.edu','2034 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(88,'Gregory','Stallings',NULL,NULL,'Spanish and Portuguese Lang',NULL,NULL,0,'801-422-1273','gregory_stallings@byu.edu','3166 JFSB',NULL,1,NULL,NULL,NULL,NULL),
	(89,'Del','Scott',NULL,NULL,'Statistics',NULL,NULL,0,'(801) 422-7054','scottd@byu.edu','223C TMCB',NULL,1,NULL,NULL,NULL,NULL),
	(90,'Steven','Shumway',NULL,NULL,'Technology Engineering Ed (TEE)',NULL,NULL,0,'801-422-6496','steve_shumway@byu.edu','230 SNLB',NULL,1,NULL,NULL,NULL,NULL),
	(91,'Dean','Duncan',NULL,NULL,'Theater & Media Arts',NULL,NULL,0,'801-422-3437','dean_duncan@byu.edu','F-347 HFAC',NULL,1,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `directory` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table knex_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `knex_migrations`;

CREATE TABLE `knex_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `knex_migrations` WRITE;
/*!40000 ALTER TABLE `knex_migrations` DISABLE KEYS */;

INSERT INTO `knex_migrations` (`id`, `name`, `batch`, `migration_time`)
VALUES
	(1,'20180531164243_spotlight.js',1,'2018-06-11 11:38:53'),
	(2,'20180611112112_stories.js',1,'2018-06-11 11:38:53'),
	(3,'20180611112142_admin.js',1,'2018-06-11 11:38:53'),
	(4,'20180611120445_spotlight.js',2,'2018-06-11 12:06:11'),
	(5,'20180611125242_spotlight.js',3,'2018-06-11 12:55:35'),
	(6,'20180619104711_spotlight.js',4,'2018-06-19 10:51:06'),
	(7,'20180619105515_spotlight.js',5,'2018-06-19 10:57:09'),
	(8,'20180619105700_spotlight.js',5,'2018-06-19 10:57:09');

/*!40000 ALTER TABLE `knex_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table knex_migrations_lock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `knex_migrations_lock`;

CREATE TABLE `knex_migrations_lock` (
  `is_locked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `knex_migrations_lock` WRITE;
/*!40000 ALTER TABLE `knex_migrations_lock` DISABLE KEYS */;

INSERT INTO `knex_migrations_lock` (`is_locked`)
VALUES
	(0);

/*!40000 ALTER TABLE `knex_migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table spotlight
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spotlight`;

CREATE TABLE `spotlight` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `minor` varchar(255) DEFAULT NULL,
  `short_text` varchar(255) DEFAULT NULL,
  `long_text` varchar(10000) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `graduation` varchar(255) DEFAULT NULL,
  `category` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `spotlight` WRITE;
/*!40000 ALTER TABLE `spotlight` DISABLE KEYS */;

INSERT INTO `spotlight` (`id`, `first_name`, `last_name`, `created`, `major`, `minor`, `short_text`, `long_text`, `image_path`, `graduation`, `category`)
VALUES
	(1,'Greiciani','Celerino Da Silva','2018-08-14 21:01:04','PDBio','Family Life','Offering home-based care, volunteering at local clinics, and teaching children and adolescents on HIV and other health related topics.','I went to Livingstone in Zambia, Africa last May with a BYU group arranged by the Kennedy Center. We offered home-based care, volunteered at local clinics, taught children and adolescents on HIV and other health related topics. The best of all, we spent time playing with the kids from many different neighborhoods. The kids just love you so much, and I felt great accomplishment by serving these people in partnership with Africa Impact Foundation. Also, we got to visit Victoria Falls, Chobe Safari, lion walk, and more.','/img/spotlight/1-1534302063690-spotlight-greiciani_celerino_da_silva.jpg','April 2019',0),
	(2,'Dennis','Cutchins','2018-09-03 14:39:55','Associate Director','Honors Program','\"I would love to see Honors arts students hanging out with Honors engineering students and figuring out ways to do projects together.\"','Dr. Cutchins has spent the greater part of his career steeped in interdisciplinary research. He specializes in Adaptation Studies, which combines film and literature and history. As a child, Cutchins vividly remembers watching a cartoon adaptation of J.R.R. Tolkien’s “The Hobbit” and being disappointed. “From a fairly early age I realized that there was a relationship there and that it was complicated,” he said.\r\n<br><br>\r\nClick <a href=\"/stories/6/Welcome_Dr._Dennis_Cutchins!\">here</a> to read the whole story.','/img/spotlight/1-1536007195174-spotlight-dennis-cutchins-2.jpg','',2);

/*!40000 ALTER TABLE `spotlight` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table stories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stories`;

CREATE TABLE `stories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `text` varchar(10000) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `link_text` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;

INSERT INTO `stories` (`id`, `title`, `subtitle`, `description`, `created`, `text`, `link`, `image_path`, `link_text`, `author`, `category`)
VALUES
	(1,'Honors Student Commencement Speaker','','Ashton Omdahl, an August 2018 Honors Graduate, exhibits excellence in every part of his life- not just in academics. ','2018-08-31 22:02:52','<p>Every morning at 5:45 a.m., bleary-eyed but awake nevertheless, Ashton Omdahl rolled out of bed to exercise with the BYU Triathlon club. He didn’t love the early mornings, but he appreciates the discipline they gave him. For Ashton, triathlon, like so many other things at BYU, was merely a balancing act.\r\n</p>\r\n<p>\r\nAshton served in the Canada Edmonton Mission before heading to BYU, where he began his major in bioinformatics and minors in mathematics and computer science. He participated in the Honors Program and the BYU Triathlon Club, played the violin in the BYU University Orchestra and BYU String Orchestra, and served as president for the Bioinformatics Research Group.\r\nIn 2016, Ashton interned with the Max Planck Institute for Chemical Ecology in Jena, Germany. On campus, he was a mentored research assistant in Dr. Stephen Piccolo’s Bioinformatics Lab where he designed, constructed, and implemented a computer tool to standardize breast cancer treatment datasets using a standard vocabulary from the National Cancer Institute. His passion is research, but he has more than his fair share of hobbies.\r\n</p>\r\n<p>\r\nWith so much on his plate, Ashton found himself struggling to balance everything. He said, “For a while at BYU I missed out on social opportunities in exchange for my goals in music, academics, and triathlon. Over time, I learned how to find balance in developing cherished relationships with friends while still pursuing my other goals. Ultimately, for me, it boiled down to what I was most committed to, and that\'s what happened.”\r\n</p>\r\n<p>\r\nFor Ashton, the BYU experience was intensely academic, and peppered with what he calls “paradigm-shifting moments” that changed his learning experience at BYU. For him, the Honors Program facilitated such changes. Hl said, “I found a community of people who loved to learn and think deeply and to speak about it articulately and made good friends there. I took classes that changed my perspective on the world and myself and motivated me to live gratefully. I also learned to be confident in myself as a student and a writer. Further, the program provided motivation and a framework for producing worthwhile independent research. So, all together, the Honors experience helped me grow in my intellectual skills, my interpersonal skills, my leadership ability and my desire to serve.”\r\nConcluding his long list of achievements at BYU was Ashton’s graduation with University Honors and speaking at Commencement. Despite his laundry list of academic accomplishments, he cites Honors as the “structured environment” that helped him get familiar with the academic publishing process and show him the power of interdisciplinarity. \r\n</p>\r\n<p>\r\n“All disciplines add value and are important because they help you see things differently and in a new way,” Ashton said.\r\n</p>\r\n<p>\r\nIn his commencement speech, Ashton shared three truths he gleaned from his time at BYU:\r\n</p>\n<ul>\r\n<li>Fearlessly facing truth about ourselves has the potential to transform our hearts, from sinner to saint.\r\n</li>\r\n<li>Facing the truth, even if very difficult, can expand our secular knowledge.\r\n</li>\r\n<li>Fully facing the inconvenient truth can change how we treat others and treat life in the most essential ways.\r\n</li>\n</ul>\r\n<p>These truths, just a few of the undoubtedly many he gathered during his short time at BYU, pave the way for his future. Up next for Ashton is a PhD in Biomedical Engineering from Johns Hopkins. He hopes his PhD research will drive medical innovations in precision medicine that he could scale-up and help people around the world. When asked why he loved his field, he answered, “Because it’s hard. May seem odd to say, but I love the mental challenge it provides and the potential for solving real-world problems.”\r\nAshton says he’s excited to “go forth and serve” with the knowledge and perspective he gained at BYU. Thinking of the future, he says, “I commit to look forward, facing life’s truths with renewed resolve.”\r\n</p>\r\n<p>\r\nWATCH Ashton’s full commencement address here:\r\n <div class=\"row justify-content-md-center\"><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xO-5WLQvixE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe></div>\n<br>\r\n<img src=\"https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/40455067_10216634131942937_1954168664655659008_o.jpg?_nc_cat=0&oh=2c9384ef7a8f93ef93b31cec729244f9&oe=5C2B437E\" alt=\"BYU Excellence Footer\" class=\"img-fluid\">\n','/stories/1/Honors_Student_Commencement_Speaker','/img/stories/6-1535752971671-story-ashton-omdahl.jpg','Read Story','Abigail Norton',0),
	(2,'Late Summer Honors','','Incoming Freshman took a challenging one week course and experienced being a part of the Honors community','2018-08-31 22:26:16','</p>\r\nCongratulations to the incoming freshman who participated in Late Summer Honors 2018. It was wonderful getting to know you and seeing the results of all of your hard work. \r\n</p>\r\n<p>\r\nLate Summer Honors is a program aimed at introducing incoming freshmen to the Honors Program. Students have the opportunity to work with faculty from across the university to explore great questions, take field trips beyond campus, and learn more about interdisciplinary thinking.\r\n</p>\r\n<br>\r\n<p>\r\nStudents spent their week on campus exploring one of the following subjects:\r\n</p>\r\n<ul>\r\n<li> “The Peace of Wild Things: Nature, Poetry & Grace” taught by Dr. Peter Leman\r\n</li>\r\n<li>\r\n“What Does it Mean to be Human: A Scientific & Spiritual Journey into Human Origins” taught by Dr. Jamie Jensen and Dr. Seth Bybee\r\n</li>\r\n<li>\r\n“Can Well-behaved Women Make History?” taught by Dr. Heather Belnap\r\n</li>\r\n<li>\r\n“Transitions to Peace: Healing on a National Scale” taught by Professor Natalie Romeri-Lewis\r\n</li>\r\n<li>\r\n“What are the Odds? Probablility in Math and the Humanities” taught by Dr. Todd Fisher and Dr. Michael Call\r\n</li>\r\n<li>\r\n“Riding Provo/Writing Provo” taught by Dr. Joey Franklin and Dr. Jamin Rowan\r\n</li>\r\n<li>\r\n“How Do We Know What We Know? Our Understanding of the Natural World” taught by Dr. James Patterson\r\n</li>\r\n<li>\r\n“Inklings & Influence: Lewis, Tolkein, and the Power of Allegory” taught by Dr. Aaron Eastley\r\n</li>\r\n<li>\r\n“Why Stress? Understanding Stress, Health, and the Plan of Salvation” taught by Dr. Patrick Steffen\r\n</li>\r\n<li>\r\n“Go Towards the Light: Photography and Visual Communication in the 21st Century” taught by Dr. Paul Adams\r\n</li>\r\n<li>\r\n“The Mathematics of Secrecy” taught by Dr. Paul Jenkins and Dr. Darrin Doud\r\n</li>\r\n</ul>\r\n<br>\r\n<p>\r\nAmazing devotional and fireside speakers also introduced them to the spirit of disciple-scholarship at BYU.\r\n</p>\r\n<p>\r\nLike the Honors Program, the experience is not just about the classes – Honors is about connecting with a community!  Together students sang karaoke at The Wall, played games on the Maeser Quad, danced the night away at the WSC, and so much more! It\'s been a great week, and we are excited to welcome these students to the BYU Honors community of scholars!\r\n</p>\r\n<p>\r\nCheck out the BYU Honors Program Facebook page for all of our <a href=\"https://www.facebook.com/pg/ByuHonors/photos/?ref=page_internal\" target=\"_blank\"> Late Summer Honors photos </a>.\r\n</p>\r\n\r\n','/stories/2/Late_Summer_Honors','/img/stories/6-1535754375892-story-late-summer-honors.jpg','Learn More','Abigail Norton',1),
	(3,'Thinking Like an Expert','','Check out one of our new Honors courses that combines Linguistics and Genetics','2018-08-31 20:17:33','<div class=\"row justify-content-md-center\"><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5pSZT-u53gU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe></div>\r\n\r\n<br>\r\n<p><i>The interdisciplinary thinking the BYU Honors Program strives to cultivate in its students and faculty is exemplified in our HONRS 200 level classes - the Unexpected Connections courses. Classes are team-taught by professors from two different disciplines who choose their section’s unique focus and curriculum. Students are able to engage in an exceptional interdisciplinary learning environment and make unexpected connections of their own during the course. </i> \r\n</p>\r\n<p>\r\nStarting Fall 2018, a new section of HONRS 220 will be offered to students in the Honors Program. For the combination of Biology and Letters, we brought in Dr. Julianne Grose, Associate Professor of MM Bio, and Dr. Cynthia L. Hallen, Associate Professor of Linguistics, as faculty experts to explore the connections between the biology of life and how language is alive. \r\n</p>\r\n<p>\r\nWith Dr. Grose’s background in Microbiology & Molecular Biology, she will instruct students on the basic elements of life and dive into the structure and function of DNA. Dr. Hallen’s expertise in Linguistics will help students explore the nuances of language and creativity. Both Dr. Grose and Hallen are excited about the unexpected connections they have found between their two disciplines, and are looking forward to sharing these with students this Fall. \r\n</p>\r\n<p>\r\n<b> Do you want to be published in a scientific journal because of your research on DNA? \r\n</p>\r\n<p>\r\nDo you want to go on a field trip to Southern Utah and analyze the petroglyphs and pictographs of an ancient civilization?\r\n</p>\r\n<p>\r\nDo you want to understand the nuances of your own psychology and use of language by analyzing your academic papers, mission emails, and social media posts?\r\n</p>\r\n<p>\r\nWould you rather have a Final that is fun and provides real-world training and not having to stand in the Testing Center lines during the dead of winter?\r\n</p>\r\n<p>\r\nTake this class! </b>\r\n</p>\r\n<p>\r\nTo add this class to your schedule for Fall Semester 2018, look for HONRS 220- Unexpected Connections: Biology and Letters, section 02 at 8:00-9:15 AM TTh. \r\n</p>\r\n','/stories/3/Thinking_Like_an_Expert','/img/stories/6-1535746653023-story-academic-excellence.jpg','Click Here','Madison Allred',2),
	(4,'Empowering Teens in Cambodia','','See how Madison, a Honors Student, is applying skills learned in the Honors Program to create a project for the Khmer people','2018-08-31 20:25:02','<i>The Honors Program strives to build skills of inquiry in our students throughout our courses. Here we highlight students who go into the world and apply these skills, typically through their thesis research or their Leadership Development Experience. </i> </p>\r\n<p>\r\nMadison Allred is a Junior in the Geography: Global Studies program, minoring in Business Management and International Development. For her Leadership Development Experience, she helped create a non-profit educational program for teenagers aged 14-18 in Cambodia called Mitt Chhlat. \r\n</p>\r\n<p>\r\nMitt Chhlat began as an interdisciplinary team Madison was placed in during her IAS 220 – “Introduction to International Development” class. Her team all had connections to and a passion for helping the people of Cambodia, and they primarily wanted to combat sex trafficking. “I am grateful that the Honors Program has taught me to dig deeper. I could see this horrible problem from the surface, but I knew from my classes that this was a symptom of a much larger problem. There were probably multiple contributing factors, and in order to find an effective solution we needed to discover as many as possible.”\r\n</p>\r\n<p>\r\n<div class=\"row my-3 shadow\">\r\n\r\n<div class=\"col col-12 col-lg-6 px-0 mb-sm-3 mb-md-0\">\r\n\r\n<img src=\"https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/30705557_1993366904007671_3121811990008299520_o.jpg?_nc_cat=0&oh=6e2022cc9c0961116c6d88e44368e588&oe=5BED6243\" alt=\"Mitt Chhlat Team\" class=\"w-100\">\r\n\r\n</div>\r\n\r\n\r\n<div class=\"col col-12 col-lg-6 px-4 px-sm-3 px-xl-5 mt-3\">\r\n\r\n<table style=\"height: 100%;\">\r\n\r\n<tbody>\r\n\r\n<tr>\r\n\r\n<td class=\"align-middle\">\r\n\r\n<h3>Mitt Chhlat Founding Members</h3>\r\n\r\n<p>Libby Malone, Madison Allred, Linda Ngyuen, Melody Allred, Meadow Wedekind, Marieka Creek</p>\r\n\r\n</td>\r\n\r\n</tr>\r\n\r\n</tbody>\r\n\r\n</table>\r\n\r\n\r\n\r\n</div>\r\n\r\n</div>\r\n\r\n<p>\r\nAs Madison’s team researched sex trafficking in Cambodia, they found many unexpected connections about what contributed to this societal problem. \r\n</p>\r\n<p>\r\n“As I was researching the issue, I found that one problem led to another. Sex trafficking is accepted in Khmer [Cambodian] society for many reasons, including: the conflicting social expectations of men and women regarding sexually promiscuity and chastity, the legal status and judicial representation available to women, the effects of poverty on family social structure, the general health knowledge and curriculum structure in schools, Cambodia’s neighboring countries, etc. We even found that the genocide coordinated by the Khmer Rouge in the early 1970’s still had a powerful effect on Cambodian society today and had led to the cultivation of a sex trafficking accepting society.” \r\n</p>\r\n<p>\r\n\r\nHer team ended up focusing on one key factor- sexual health education. \r\n</p>\r\n\r\n<p>\r\n\r\n“Our group decided that the way we could be the most effective was by creating and implementing a sexual health education curriculum that combats social stigma. From our research, many Khmer teens were lead into prostitution from a lack of education, and men solicited prostitutes not knowing the possible repercussions. We also are designing our curriculum to combat toxic masculinity and empower women in the rising generation.” \r\n</p>\r\n<p>\r\n\r\nThe team of six decided to call their organization Mitt Chhlat, or “Smart Friend” in Khmer.  The students sought the mentorship of BYU’s International Development instructor and experienced Human Rights lawyer Natalie Romeri-Lewis, who recently taught a Late Summer Honors program course. With Professor Romeri-Lewis’ expertise and guidance, the team of BYU students were able to successfully raise funds and in May-July 2018, conducted a successful pilot program at an orphanage in Phnom Penh. \r\n</p>\r\n<div class=\"row my-3 shadow\">\r\n\r\n\r\n\r\n\r\n<div class=\"col col-12 col-md-6 px-4 px-sm-3 px-xl-5 mt-3\">\r\n\r\n<table style=\"height: 100%;\">\r\n\r\n<tbody>\r\n\r\n<tr>\r\n\r\n<td class=\"align-middle\">\r\n\r\n<h3>Mitt Chhlat Pilot Program</h3>\r\n\r\n<p>Mitt Chhlat teachers headed to orphanage in Phnom Penh</p>\r\n\r\n</td>\r\n\r\n</tr>\r\n\r\n</tbody>\r\n\r\n</table>\r\n\r\n\r\n\r\n</div>\r\n<div class=\"col col-12 col-md-6 px-0  mb-md-0 text-right\">\r\n\r\n<img src=\"https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/33508367_990381911139020_3686781441347158016_n.jpg?_nc_cat=0&oh=c5edb5da9a03dfe2b227cff11e1fd1c2&oe=5C2A68D1\" alt=\"Mitt Chhlat Pilot\" class=\"w-100 d-block d-lg-none float-right\">\r\n<img src=\"https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/33508367_990381911139020_3686781441347158016_n.jpg?_nc_cat=0&oh=c5edb5da9a03dfe2b227cff11e1fd1c2&oe=5C2A68D1\" alt=\"Mitt Chhlat Pilot\" class=\"w-75 d-none d-lg-block float-right\">\r\n\r\n</div>\r\n</div>\r\n<p>\r\nCreating Mitt Chhlat and implementing the sexual health curriculum was a perfect fit for Madison’s Leadership Development Experience. \r\n<ul>\r\n<li>She impacted the community by creating jobs for local Cambodians who taught the course and will be future administrators of their organization.  </li>\r\n<li>Madison developed leadership qualities by advocating for the adjustment of curriculum to fit local needs, and her Business Management training aided in several behind the scenes aspects of their organization. </li>\r\n<li>She had to problem solve almost every day as she worked with local stakeholders, several NGO’s, and the Cambodian government. </li>\r\n<li>Madison also developed leadership by collaborating with an interdisciplinary team comprised of Sociology, Political Science, Geography, Public Health, and Mechanical Engineering majors. </li>\r\n</ul>\r\n</p>\r\n<p>\r\n“Honors has given me the intellectual training I required to reach my goals. Without that training, I wouldn’t be able to ask the necessary questions needed to make change in the world.”\r\n</p>\r\n<p>\r\n\r\nMadison is looking forward to expanding her work in Cambodia through her Honors Thesis. \r\n</p>\n<img src=\"https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/40455067_10216634131942937_1954168664655659008_o.jpg?_nc_cat=0&oh=2c9384ef7a8f93ef93b31cec729244f9&oe=5C2B437E\" alt=\"BYU Excellence Footer\" class=\"img-fluid\">\r\n','/stories/4/Empowering_Teens_in_Cambodia','/img/stories/6-1535747101549-story-madison-allred.jpg','Read More','Madison Allred',3),
	(5,'Congrats June and August Graduates!','','See where they\'re headed','2018-09-01 19:12:22','<p>Congratulations to our June and August 2018 grads!  The Honors Program celebrated our graduates just before Commencement Exercises on August 16th at the Honors Graduation & Luncheon. \r\n</p>\r\n<p>\r\nThe Luncheon was hosted in the Hinckley Center where Honors faculty and members of University administration came together to congratulate the Honors graduates. Dagan Pielstick, an August Honors graduate, gave an exceptional piano performance of “Intermezzo No. 2 in A major, Op. 118” by Johannes Brahms. The keynote address was given by August Honors graduate Katie Johnson Stanley. Katie spoke about experiences she had with unexpected connections throughout her undergraduate education, and highlighted the insights she gained in her Honors 200 level “Unexpected Connections” courses. She also included some hilarious unexpected connections she made during one of BYU student’s favorite pastimes – dating. Dr. Spencer Magleby, the Associate Dean and Director of the Honors Program, congratulated the Honors graduates and awarded the students their 2018 University Honors medallions. \r\n</p>\r\n<p>\r\nLater that afternoon, June Honors graduate Ashton Omdahl gave the student address at the University Commencement Exercises in the Marriott Center. \r\n</p>\r\n<p>\r\nOur June and August Honors graduates exemplify the standards of the BYU Honors Program and are moving on to great things. Of the graduates, 55% will be pursuing graduate degrees at various academic institutions including MIT, Oxford, John Hopkins and Cambridge. The remaining 45% of the graduates are entering the workforce in primarily the education, nonprofit, and business sectors. \r\n</p>\r\n<p>\r\n\r\n<h2>Honors Graduates </p> <p>June & August 2018 </h2>\r\n</p>\r\n<table class=\"table\">\r\n  <thead>\r\n    <tr>\r\n      <th scope=\"col\">Name</th>\r\n      <th scope=\"col\">Major</th>\r\n      <th scope=\"col\">Thesis Title</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td scope=\"row\">Thomas Barlow</td>\r\n      <td>Mechanical Engineering</td>\r\n      <td>\"Design for Maintainability in Developing Communities -- A Case Study on the Uros Islands\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">David Bates</td>\r\n      <td>Political Sciences</td>\r\n      <td>\"Effectiveness of Different Regime Types in Preserving Common Resources: Evidence from a Lab Experiment\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Amanda Buessecker </td>\r\n      <td>Art History and Curatorial Sciences</td>\r\n      <td>\"Public Art Commissions and Alberta’s Regionalism\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Micah Cozzens</td>\r\n      <td>English</td>\r\n      <td>\"Understanding Arthurian Romance’s Peripheral Witch: How to Write an Unconstrained Woman in YA Fiction\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Robert Drury</td>\r\n      <td>Nutritional Science</td>\r\n      <td>\"College Students’ Understandings of, Perceptions Toward, and Usage of Canned Foods Based on Exposure to Canned Foods During Childhood\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Kaylee Dudley</td>\r\n      <td>Statistics</td>\r\n      <td>\"Examining Multimorbidities Using Association Rule Learning\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Rebecca Evans</td>\r\n      <td>English</td>\r\n      <td>\"Otherwise Known as Attempting Christianity\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Morgan Fronk</td>\r\n      <td>Physiology & Developmental Biology</td>\r\n      <td>\"Identifying the 5’ End of the Camta1 Genes in Zebrafish\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Marissa Getts</td>\r\n      <td>Sociology</td>\r\n      <td>\"Informing Social Impact: Enabling Everyday Changemakers Through Research\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Madison Grant</td>\r\n      <td>Linguistics</td>\r\n      <td>\"A Sociolinguistic Approach to ‘Ordinary Meaning’ in Legal Contexts\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Teron Haynie</td>\r\n      <td>Neuroscience</td>\r\n      <td>\"Synthesis of Candidate Natural Killer T-Cell Ligands\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">India Henrichsen</td>\r\n      <td>Neuroscience</td>\r\n      <td>\"Irish Dance in the State of Utah: A History\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Stephen Hunsaker, Jr.</td>\r\n      <td>Political Science</td>\r\n      <td>\"Reducing the Constraints to School Access and Progress: Assessing the Effects of a School Scholarship Program in Malawi\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Lauren Johnson</td>\r\n      <td>Elementary Education</td>\r\n      <td>\"Poverty and Empowerment Discourse in Utah Dual Immersion Classrooms\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Erin Kaseda</td>\r\n      <td>Neuroscience</td>\r\n      <td>\"Self Regulation, Threat Perception, and Perceived Parental Support: an fMRI Investigation of Children with ADHD\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Ashton Omdahl</td>\r\n      <td>Bioinformatics</td>\r\n      <td>\"Genomewide Evaluation of cis-Elements and Cognate Transcription Factors in Nicotiana attenuate Predicts 27 Unique Transcription Factor-Binding Site Pairs\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Caroline Palmer</td>\r\n      <td>Anthropology</td>\r\n      <td>\"Gender and Religion in a Shifting Social Landscape: Final Phase Mortuary Practices, A.D. 600-700\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Louise Paulsen</td>\r\n      <td>Political Science</td>\r\n      <td>\"Are Danes Just Xenophobes? Examining the Establishment of Anti-Immigration Parties in Denmark and Sweden\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Sierra Phillips</td>\r\n      <td>Psychology</td>\r\n      <td>\"Introspection on the Evolution of Goals in Relation to Emotional Experiences\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Dagan Pielstick</td>\r\n      <td>Mechanical Engineering</td>\r\n      <td>\"Similarities and Differences in the Neural Processing of Speech and Song in Religious Music\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Mary-Margaret Pilling</td>\r\n      <td>Art History and Curatorial Studies</td>\r\n      <td>\"The Significance of Cloth in the Narrative of the Life of Christ: As Represented in Dieric Bout’s The Life of Christ Altarpiece\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Carlee Reber</td>\r\n      <td>Interdisciplinary Humanities</td>\r\n      <td>\"Ecology in The Book of Mormon\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Eliza Riley</td>\r\n      <td>Political Science</td>\r\n      <td>\"28 Years of Independence: Post-Communist Attitudes Toward Markets, Privatization, and Redistribution\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Kylan Rutherford</td>\r\n      <td>Economics</td>\r\n      <td>\"Grafting Democracy: British Policy in the Burma Independence Process\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Kassandra Schreiber</td>\r\n      <td>Interdisciplinary Humanities</td>\r\n      <td>\"Sacred Time in the Work of Makoto Shinkai\"</td>\r\n    </tr>\r\n<tr>\r\n      <td scope=\"row\">Kate Johnson Stanley</td>\r\n      <td>English</td>\r\n      <td>\"Lydia D. Alder: The Life of the Mormon Poet, Suffragist, and Missionary\"</td>\r\n    </tr>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n','/stories/5/Congrats_June_and_August_Graduates!','/img/stories/6-1535742741859-story-honors-graduation.jpg','See where they\'re headed','Madison Allred',4),
	(6,'Welcome Dr. Dennis Cutchins!','','Meet our new Associate Director!','2018-08-03 14:30:19','<p>\r\nDr. Dennis Cutchins knows exactly what book he would bring if he were stranded on a desert island. Herman Melville’s magnum opus, “Moby Dick.” “Every time I read it I find new stuff in it,” he said. “It’s actually a really cool, rich book that you could read multiple times and still get something out of.”\r\n</p>\r\n<p>\r\nA trip to Cutchins’ office would lead you to believe he’s taken Melville’s words, “I try all things, I achieve what I can,” to heart. His office walls are lined with thousands of books, from Native American History to hefty anthologies, plus a sizeable stack of VHS tapes, and DVDs. In the first five minutes of chatting with Dennis he showed me his collection of vintage toys: Planet of the Apes, a Borg Ship, and handheld video games to name a few, plus a Freddie Mercury figurine that launched him into a rendition of Queen’s “I Want To Break Free.”\r\n</p>\r\n<p>\r\nCutchins’ lightheartedness and insightful nature are just some of the things he’ll bring to the table when he officially steps into his role as Associate Director of the Honors Program this fall. He is a self-proclaimed “learning nerd” who hopes to draw students to the program with his big vision for program development.  \r\n</p>\r\n<p>\r\nOne of Cutchins’ plans is to continue to foster the interdisciplinary environment of the Honors Program. “My natural inclination is toward interdisciplinarity,” he said.\r\n</p>\r\n<p>\r\nCutchins has spent the greater part of his career steeped in interdisciplinary research. He specializes in Adaptation Studies, which combines film and literature and history. As a child, Cutchins vividly remembers watching a cartoon adaptation of J.R.R. Tolkien’s “The Hobbit” and being disappointed. “From a fairly early age I realized that there was a relationship there and that it was complicated,” he said.\r\n</p>\r\n<p>\r\nA study of that relationship, what is now known as Adaptation Studies, came into being during Cutchins’ career. “It fun to get in on the ground floor,” he said. Since the start of his career, Cutchins has published dozens of papers and contributed to multiple books on the subject.\r\n</p>\r\n<p>\r\nGoing forward, Cutchins also hopes to draw in students from across the university. “I would love to see Honors arts students hanging out with Honors engineering students and figuring out ways to do projects together,” he said. In Winter 2019, Cutchins is slated to teach an Honors Unexpected Connections course alongside microbiology and molecular biology professor Dr. Brian M. Poole. These classes are aimed at helping students see connections between opposing disciplines. \r\n</p>\r\n<p>\r\nCutchins hopes to attract other “learning nerds” to the Honors Program and offers the following advice to anyone considering enrolling: “If you want to be in a place surrounded by the most innovative professors, the most innovative students, and the most inspiring learners, it’s Honors.”\r\n</p>','/stories/6/Welcome_Dr._Dennis_Cutchins!','/img/stories/1-1536006619062-story-dennis-cutchins.jpg','Read Story','Abigail Norton',4);

/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `hash`, `username`, `name`, `role`)
VALUES
	(1,'lopze.94@gmail.com','$2b$10$BmlpNUKfgmC.Z4DgyH42Ku.9nxkb5t7WYCjKvP6wW.rhrDaj6gp3K','lopze94','Josue Lopez','admin'),
	(2,'honors@byu.edu','$2b$10$aBY2iV/..D1xJhUxkp/.VO7./7SbwDGZbOkkQaoAVF3sY27UECorG','byuhonorsprogram','BYU Honors Program','user'),
	(3,'vika_filimoeatu@byu.edu','$2b$10$pG6owVzoTuQKP8LlAtYgQexj8IKenCL6pEuv10KDDZm6JPd/Zt1oi','vikafilimoeatu','Vika Filimoeatu','user'),
	(4,'julie_radle@byu.edu','$2b$10$5SDLT0O6miA9jGwPSw2cQ.dsYuy4nFwYaBilJe3AIbLwIohsyyppO','julieradle','Julie Radle','user'),
	(5,'abigailnorton1996@gmail.com','$2b$10$Z/dUk4MnfHkWk9H72VKGQuwEiqrmtKT175Po/L6hevd8rVnj5DNXG','aenorton','Abigail Norton','user'),
	(6,'allred.madison@gmail.com','$2b$10$8qbEb9TSXp5txGieMWIHoumhTrNrbBtPqHUHaSvclrjHqwtES2Xiu','allred.madison','Madison Allred','user');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
