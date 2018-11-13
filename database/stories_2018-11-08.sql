# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.22)
# Database: byuhonors
# Generation Time: 2018-11-08 18:46:33 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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
	(2,'Dennis','Cutchins','2018-09-03 14:39:55','Associate Director','Honors Program','\"I would love to see Honors arts students hanging out with Honors engineering students and figuring out ways to do projects together.\"','Dr. Cutchins has spent the greater part of his career steeped in interdisciplinary research. He specializes in Adaptation Studies, which combines film and literature and history. As a child, Cutchins vividly remembers watching a cartoon adaptation of J.R.R. Tolkien’s “The Hobbit” and being disappointed. “From a fairly early age I realized that there was a relationship there and that it was complicated,” he said.\r\n<br><br>\r\nClick <a href=\"/stories/6/Welcome%20Dr.%20Dennis%20Cutchins!\">here</a> to read the whole story.','/img/spotlight/1-1536007195174-spotlight-dennis-cutchins-2.jpg','',2),
	(3,'Elina','Chun','2018-10-09 17:22:18','Nursing','Management Minor','Elina is a College of Nursing Scholar for 2018-2019 school year and a senior Honors student.','<p>Elina is a College of Nursing Scholar for 2018-2019 school year and a senior Honors student.  She is a member of the Sigma Theta Tau.  She is now finishing up her Honors Thesis, \"Student Perspectives on Working in Interdisciplinary Teams to Improve Maternal and Newborn Care Using mHealth Solutions\" and will be publishing it at the end of the semester. She enjoys the Honors Program because she gets to learn with and from other passionate Honors students.</p>↵<p><b>Plan after graduation</b>: The University of Utah Doctor of Nursing Practice, Family Nurse Practitioner specialty track.</p>','/img/spotlight/1-1539105737872-spotlight-elina-chun.jpg','December 2018',0),
	(4,'Emily','Menden','2018-10-17 21:44:15','Computer Science','','Computationally Modeling the Trophic Cascade in Yellowstone National Park','<p>In 2017, Emily received an ORCA grant to perform research on the cascading effects of perturbations on edges in networks, specifically regarding the ecological network in Yellowstone National Park.  In the same year Emily also received the computer science InsideSales scholarship which is given to a student in Computer Science who has exhibited academic excellence and talent in the field of Computer Science. For three years, Emily has been the John B. Garrick scholarship recipient for computational research in environmental studies.</p><p><b>Plan after Graduation</b>: Emily has accepted a job with Instructure, Inc. doing Big Data management and infrastructure. Her specific specific role will be in creating streaming services which will robustly handle streaming terabytes of data daily.</p>','/img/spotlight/1-1539812654507-spotlight-emily-menden.jpg','December 2018',0),
	(7,'Jonathan','Dutson','2018-10-30 11:41:31','Computer Science','Philosophy and Information Technology','I’ve never considered myself a strong writer, so I was slightly nervous for the HONRS 320 class, but it ended up being one of my favorite classes that semester.','<p>Jonathan has completed internships with Goldman Sachs and Microsoft. He is planning on getting his Master’s degree in Computer Science at BYU.</p>\n\n<p><b>Rewarding part of the Honors Journey</b>: I loved the Great Questions essay class (HONRS 320). I’ve never considered myself a strong writer, so I was slightly nervous for the class, but it ended up being one of my favorite classes that semester. It was fun to examine an important question from the perspective of a variety of disciplines, and the class helped me develop confidence as a writer. </p>','/img/spotlight/1-1540921291282-spotlight-jonathan-dutson.jpg','',0);

/*!40000 ALTER TABLE `spotlight` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
