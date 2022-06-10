-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: online_movie_ticket_booking_system
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_movie_id` int NOT NULL,
  `booking_screen_id` int NOT NULL,
  `booking_user_id` int NOT NULL,
  `booking_date` varchar(45) NOT NULL,
  `booking_snacks` varchar(100) DEFAULT NULL,
  `booking_price` double NOT NULL,
  `booking_payment_status` varchar(45) NOT NULL,
  `booking_code` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_screen_id_idx` (`booking_screen_id`),
  KEY `booking_user_id_idx` (`booking_user_id`),
  KEY `booking_movie_id_idx` (`booking_movie_id`),
  CONSTRAINT `booking_movie_id` FOREIGN KEY (`booking_movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `booking_screen_id` FOREIGN KEY (`booking_screen_id`) REFERENCES `screen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `booking_user_id` FOREIGN KEY (`booking_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (31,10,71,15,'1647058976253','popcorn-large,popcorn-large,',658,'1','450448'),(33,9,51,15,'1647059935203','popcorn-large,',509,'1','977276'),(34,10,71,15,'1647061275080','popcorn,popcorn,popcorn + pepsi,',697,'1','680723'),(35,11,69,15,'1647061370873','popcorn-large,popcorn-large,',658,'1','932512'),(36,10,71,46,'1647061845313','popcorn-large,popcorn-large,',658,'1','969094'),(37,9,51,46,'1647061915029','popcorn,popcorn,',498,'1','408813'),(38,12,60,47,'1647062771221','popcorn-large,popcorn-large,',598,'1','782814'),(39,9,54,47,'1647064782393','popcorn + pepsi,',299,'1','315762'),(40,12,73,47,'1647065036941','popcorn-large,',509,'1','818016'),(41,10,71,48,'1647065643161','popcorn + pepsi,',559,'1','804545'),(44,11,81,15,'1647493238340','popcorn-large,',249,'1','106466'),(45,11,88,15,'1647944060298','',960,'1','565314'),(46,11,88,15,'1647944159594','popcorn + pepsi,popcorn + pepsi,',848,'1','454853'),(47,11,86,15,'1648040291688','',900,'1','279143'),(48,6,93,15,'1651840823556','popcorn,',399,'1','183788'),(49,4,92,18,'1651844196762','',600,'1','258147'),(50,6,94,15,'1651866964489','popcorn-large,popcorn + pepsi,',648,'1','608940'),(51,6,94,15,'1651899585892','popcorn-large,popcorn-large,',658,'1','417413'),(52,6,94,15,'1651899877223','',300,'1','987710'),(53,20,100,15,'1651903718734','',990,'1','584504'),(54,20,98,15,'1651903751694','',900,'1','406896'),(55,20,98,46,'1651903820705','popcorn-large,popcorn-large,popcorn-large,',1787,'1','567831');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(45) NOT NULL,
  `movie_language` varchar(45) NOT NULL,
  `movie_hours` time NOT NULL,
  `movie_genre` varchar(45) NOT NULL,
  `movie_banner` varchar(45) NOT NULL,
  `movie_trailer_link` varchar(45) NOT NULL,
  `movie_release_date` date NOT NULL,
  `movie_description` text NOT NULL,
  `movie_image` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (4,'RRR-Rise Roar Revolt','Hindi','03:04:00','Action / Drama','RRR_banner.jpg','https://youtu.be/GY4BgdUSpbE','2022-03-25','RRR is an Indian Telugu-language period action drama film directed by S. S. Rajamouli, and produced by D. V. V. Danayya of DVV Entertainments. The film stars N. T. Rama Rao Jr. and Ram Charan in lead roles, while Ajay Devgn and Alia Bhatt make cameo appearances[5][6] while Samuthirakani, Alison Doody, Ray Stevenson, Olivia Morris and Shriya Saran play supporting roles. It is a fictional story about two Indian revolutionaries, Alluri Sitarama Raju (Charan) and Komaram Bheem (Rama Rao), who fought against the British Raj and Nizam of Hyderabad respectively.','RRR_image.jpg'),(5,'Bachhan Pandey','Hindi','02:35:00','Action / Comedy','Bachchan_Pandey_banner.jpg','https://youtu.be/4d8m59ct2wQ','2022-03-18','Bachchhan Paandey is an upcoming Indian Hindi-language action comedy film directed by Farhad Samji, written by Nischay Kuttanda and Farhad Samji and produced by Sajid Nadiadwala. It stars Akshay Kumar, Kriti Sanon, Jacqueline Fernandez and Arshad Warsi. It is a remake of the 2014 Tamil film Jigarthanda which itself was inspired by the 2006 South Korean movie A Dirty Carnival. The film is scheduled to be released theatrically on 18 March 2022.','Bachchan_Pandey_Image.jpeg'),(6,'Jersey','Hindi','02:50:00','Drama / Sports','Jersey_Poster.jpeg','https://youtu.be/BT0zd0kmTxM','2022-04-14','Jersey is an upcoming Indian Hindi-language sports drama film written and directed by Gowtam Tinnanuri, being his Hindi directorial debut and the remake of his 2019 Telugu film of the same title. It stars Shahid Kapoor as a former cricketer who returns to the game for his son\'s wish of a jersey, alongside Mrunal Thakur and Pankaj Kapoor. The film is produced by Geetha Arts, Dil Raju Production, Sithara Entertainments and Brat Films.','Jersey_Image.jpg'),(9,'Pushpa - The Rise','Hindi','02:58:00','cmd / Drama / Thriller','pushpa_banner.jpg','https://youtu.be/Gs9TQr1D9Ps','2021-12-17','Pushpa: The Rise – Part 01 is a 2021 Indian Telugu-language action drama film written and directed by Sukumar. Produced by Mythri Movie Makers in association with Muttamsetty Media, it stars Allu Arjun as the titular character alongside Fahadh Faasil (in his Telugu debut) and Rashmika Mandanna while Jagadeesh Prathap Bandari, Sunil, Rao Ramesh, Dhananjaya, Anasuya Bharadwaj, Ajay and Ajay Ghosh play supporting roles. The first of two cinematic parts, the film depicts the rise of a coolie in the smuggling syndicate of red sandalwood, a rare wood that grows only in the Seshachalam Hills of Andhra Pradesh state.','Pushpa_image.jpg'),(10,'Gangubai Kathiavadi','Hindi','02:34:00','Drama / Crime Film','Gangubai_Kathiawadi_Banner.jpg','https://youtu.be/N1ZwRv3vJJY','2022-02-25','Gangubai Kathiawadi is a 2022 Indian Hindi-language biographical crime drama film directed by Sanjay Leela Bhansali and produced by Jayantilal Gada and Sanjay Leela Bhansali. The film stars Alia Bhatt as the titular character while Shantanu Maheshwari, Vijay Raaz, Indira Tiwari and Seema Pahwa play pivotal roles with Ajay Devgn featuring in an extended cameo appearance. The narrative walks through the life of young Ganga who in no time marks her own territory and becomes Gangubai – a madame in the red light area of Kamathipura.','Gangubai_Kathiavadi_Image.jpg'),(11,'The Batman','English','02:55:00','Action / Superhero / Mystery','The_Batman_Banner.jpg','https://youtu.be/mqqft2x_Aa4','2022-03-04','The Batman is a 2022 American superhero film based on the DC Comics character Batman. Produced by DC Films, 6th & Idaho, and Dylan Clark Productions, and distributed by Warner Bros. Pictures, it is a reboot of the Batman film franchise. The film was directed by Matt Reeves, who wrote the screenplay with Peter Craig. It stars Robert Pattinson as Bruce Wayne / Batman alongside Zoë Kravitz, Paul Dano, Jeffrey Wright, John Turturro, Peter Sarsgaard, Andy Serkis, and Colin Farrell. The film sees Batman, who has been fighting crime in Gotham City for two years, uncover corruption while pursuing the Riddler (Dano), a serial killer who targets Gotham\'s elite.','The_Batman_Poster.jpg'),(12,'Badhai Do ','Hindi','02:00:00','Comedy / Drama','badhai_do_poster.jpeg','https://youtu.be/HpMsvH7DpPc','2022-02-11','Badhaai Do (transl. Felicitations Due) is a 2022 Indian Hindi-language comedy drama film written by Suman Adhikary and Akshat Ghildial, and directed by Harshavardhan Kulkarni. The film is produced by Junglee Pictures, and serves as a spiritual sequel of the 2018 film Badhaai Ho. It stars Rajkummar Rao and Bhumi Pednekar as a couple in a lavender marriage.[5][6] The principal photography began on 5 January 2021 in Dehradun. Badhaai Do was theatrically released on 11 February 2022.','badhaai_do_image.jpg'),(13,'The Kashmir Files','Hindi','02:50:00','Historical Film / Thriller','The_Kashmir_File_Banner.jpeg','https://youtu.be/A179apttY58','2022-03-11','\n\nThe Kashmir Files is a 2022 Indian Hindi-language drama film written and directed by Vivek Agnihotri. Produced by Zee Studios, the film depicts the exodus of Kashmiri Pandits during the Kashmir Insurgency. It stars Anupam Kher, Darshan Kumar, Mithun Chakraborty and Agnihotri\'s wife Pallavi Joshi. It had a special premier on 4 March 2022 but the release of the film was suspended by a permanent prohibitory injunction, after a ruling in favor of a lawsuit filed by the widow of a Indian Armed Forces squadron leader. The order stated that the film contained incorrect material and required deletion or amendment of scenes related to the plantiff\'s husband. The release was made with the restrain on certain scenes in place.','The_Kashmir_Files_Image.jpeg'),(17,'Bhool Bhulaiyaa 2','Hindi','02:35:00','Horror / Comedy','Bhul_bhulaiyaa_2_banner.jpg','https://youtu.be/P2KRKxAb2ek','2022-05-20','Bhool Bhulaiyaa 2 is a forthcoming Indian Hindi-language parody horror film that is an independent continuation of Priyadarshan’s 2007 famous ghastliness comedy film Bhool Bhulaiyaa, which itself is a revamp of the 1993 faction exemplary Malayalam film Manichitrathazhu. The film is directed by Priyadarshan.','Bhool_bhulaiyaa_2_poster.jpg'),(18,'Jayeshbhai Jordaar','Hindi','02:04:00','Comedy / Drama','Jayeshbhai_Jordar_banner.jpeg','https://youtu.be/fppJtxJ7RWY','2022-05-13','Jayeshbhai Jordaar is an upcoming Indian Hindi-language comedy-drama film written and directed by Divyang Thakkar, and produced by Aditya Chopra and Maneesh Sharma under Yash Raj Films. The film stars Ranveer Singh in the titular role as the son of a traditional Gujarati sarpanch, who believes in equal rights between males and females in society. It also stars Shalini Pandey while Boman Irani and Ratna Pathak Shah play supporting roles.','Jayeshbhai_Jordar_poster.jpg'),(19,'Anek','Hindi','02:05:00','Action / Thriller / Drama','Anek_banner.jpg','https://youtu.be/Vhldo272vO8','2022-05-27','\'Anek\', which is helmed by Anubhav Sinha, mainly revolves around the violence and the injustice that the people of North East India have to suffer. And Ayushmann has stepped into the shoes of an undercover cop who goes on a mission to help two opposite sides in the region to agree to a peaceful compromise.','Anek_poster.jpg'),(20,'KGF chapter 2','Hindi','02:58:00','Action / Drama / Crime film','kgf2_banner.jpg','https://youtu.be/JKa05nyUmuQ','2022-04-14','The film stars Yash, Sanjay Dutt, Raveena Tandon, Srinidhi Shetty and Prakash Raj. It follows the assassin Rocky, who after establishing himself as the kingpin of the Kolar Gold Fields, must retain his supremacy over adversaries and government officials, while also coming to terms with his past.','kgf2_poster.jpg'),(21,'Doctor Strange in the Multiverse of Madness','Hindi','02:30:00','Horror / Action / Adventure / Science fiction','Doctor_Strange_banner.jpg','https://youtu.be/aWzlQ2N6qqg','2022-05-06','Doctor Strange in the Multiverse of Madness is a 2022 American superhero film based on the Marvel Comics featuring the character Doctor Strange. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the sequel to Doctor Strange (2016) and the 28th film in the Marvel Cinematic Universe (MCU). The film was directed by Sam Raimi, written by Michael Waldron, and stars Benedict Cumberbatch as Stephen Strange, alongside Elizabeth Olsen, Chiwetel Ejiofor, Benedict Wong, Xochitl Gomez, Michael Stuhlbarg, and Rachel McAdams. In the film, Strange travels into the multiverse to protect America Chavez (Gomez), a teenager capable of travelling between universes, from Wanda Maximoff (Olsen).','Doctor_Strange_poster.jpg');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_title` varchar(45) NOT NULL,
  `role_description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (10,'Administrator','This is an Administrator'),(11,'Customer','This is a Customer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen`
--

DROP TABLE IF EXISTS `screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `screen_movie_id` int NOT NULL,
  `screen_show_start_time` varchar(45) NOT NULL,
  `private_screen_booking` tinyint NOT NULL,
  `screen_no` int NOT NULL,
  `screen_show_end_time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `screen_movie_id` (`screen_movie_id`),
  CONSTRAINT `screen_movie_id_fk` FOREIGN KEY (`screen_movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen`
--

LOCK TABLES `screen` WRITE;
/*!40000 ALTER TABLE `screen` DISABLE KEYS */;
INSERT INTO `screen` VALUES (51,9,'1647145817674',0,1,'1647154920000'),(52,11,'1647156605230',0,1,'1647165900000'),(53,12,'1647251133537',0,1,'1647263700000'),(54,9,'1647268252808',0,1,'1647277320000'),(55,9,'1647315952783',0,1,'1647325020000'),(56,10,'1647334850517',0,1,'1647345360000'),(57,11,'1647347415011',0,1,'1647356700000'),(58,9,'1647054940856',0,2,'1647064020000'),(59,11,'1647077409996',0,2,'1647086700000'),(60,12,'1647096329997',0,2,'1647108900000'),(61,10,'1647146458961',0,2,'1647156960000'),(62,12,'1647160213943',0,2,'1647172800000'),(63,11,'1647174637399',0,2,'1647183900000'),(64,11,'1647185454098',0,2,'1647194700000'),(65,12,'1647242115814',0,2,'1647254700000'),(66,10,'1647263738157',0,2,'1647274260000'),(69,11,'1647099056251',0,3,'1647108300000'),(70,9,'1647144912733',0,3,'1647154020000'),(71,10,'1647156626063',0,3,'1647167160000'),(72,11,'1647167410982',0,3,'1647176700000'),(73,12,'1647181825710',0,3,'1647194399999'),(74,11,'1647252943085',0,3,'1647262200000'),(75,12,'1647330005108',0,3,'1647342600000'),(76,10,'1647318627272',0,3,'1647329160000'),(77,9,'1647343818222',0,3,'1647352920000'),(78,13,'1647405033735',0,3,'1647414600000'),(79,13,'1647417647197',0,1,'1647427200000'),(80,12,'1647491403598',0,2,'1647504000000'),(81,11,'1647595826584',0,3,'1647605100000'),(83,5,'1648009831251',0,1,'1648020300000'),(84,13,'1648042253890',0,1,'1648051800000'),(85,9,'1647959410934',0,1,'1647968520000'),(86,11,'1648089034115',0,1,'1648098300000'),(87,10,'1648099857122',0,1,'1648110360000'),(88,11,'1648124116403',0,3,'1648133400000'),(89,11,'1648096230597',0,3,'1648105500000'),(90,11,'1648110646326',0,3,'1648119900000'),(91,11,'1648135810058',0,3,'1648145100000'),(92,4,'1651856421909',0,2,'1651865160000'),(93,6,'1651943709109',0,2,'1651953300000'),(94,6,'1651909831849',0,3,'1651919400000'),(95,4,'1651933806370',0,2,'1651942560000'),(97,20,'1651995304927',0,1,'1652004420000'),(98,20,'1652009446919',0,2,'1652018520000'),(99,20,'1652002215280',0,3,'1652011319999'),(100,20,'1651926652270',0,1,'1651935720000'),(103,20,'1652070652094',0,2,'1652079720000'),(104,20,'1652074228767',0,3,'1652083320000'),(105,20,'1652193037634',0,1,'1652202120000'),(106,20,'1652177702295',0,3,'1652186820000'),(107,20,'1652272241972',0,2,'1652281320000');
/*!40000 ALTER TABLE `screen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seat_price` double NOT NULL,
  `seat_show_id` int NOT NULL,
  `seat_type` varchar(45) NOT NULL,
  `seat_booking_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `seat_screen_id_idx` (`seat_show_id`),
  KEY `seat_booking_id_idx` (`seat_booking_id`),
  CONSTRAINT `seat_booking_id` FOREIGN KEY (`seat_booking_id`) REFERENCES `booking` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `seat_screen_id` FOREIGN KEY (`seat_show_id`) REFERENCES `screen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (163,180,71,'B5',31),(164,180,71,'B6',31),(167,180,51,'B4',33),(168,180,51,'B3',33),(169,150,71,'C5',34),(170,150,71,'C6',34),(171,180,69,'B5',35),(172,180,69,'B6',35),(173,180,71,'B2',36),(174,180,71,'B3',36),(175,150,51,'C5',37),(176,150,51,'C6',37),(177,150,60,'C6',38),(178,150,60,'C7',38),(179,100,54,'E5',39),(180,180,73,'B5',40),(181,180,73,'B6',40),(182,180,71,'B7',41),(183,180,71,'B8',41),(189,100,81,'E4',44),(190,180,88,'B5',45),(191,180,88,'B6',45),(192,150,88,'C3',45),(193,150,88,'C2',45),(194,100,88,'E5',45),(195,100,88,'E6',45),(196,100,88,'E7',45),(197,150,88,'C5',46),(198,150,88,'C6',46),(199,150,88,'C7',46),(200,180,86,'B2',47),(201,180,86,'B3',47),(202,180,86,'B6',47),(203,180,86,'B5',47),(204,180,86,'B4',47),(205,150,93,'C3',48),(206,150,93,'C2',48),(207,200,92,'A2',49),(208,200,92,'A2',49),(209,200,92,'A2',49),(210,150,94,'C6',50),(211,150,94,'C7',50),(212,180,94,'B2',51),(213,180,94,'B3',51),(214,150,94,'C3',52),(215,150,94,'C2',52),(216,180,100,'B3',53),(217,180,100,'B2',53),(218,150,100,'C2',53),(219,150,100,'C3',53),(220,150,100,'C1',53),(221,180,100,'B1',53),(222,150,98,'C2',54),(223,150,98,'C3',54),(224,150,98,'C6',54),(225,150,98,'C5',54),(226,150,98,'C4',54),(227,150,98,'C7',54),(228,200,98,'A2',55),(229,200,98,'A3',55),(230,200,98,'A1',55),(231,200,98,'A4',55),(232,180,98,'B2',55),(233,180,98,'B3',55),(234,180,98,'B1',55);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snack`
--

DROP TABLE IF EXISTS `snack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snack` (
  `id` int NOT NULL AUTO_INCREMENT,
  `snack_amount` double NOT NULL,
  `snack_type` varchar(45) NOT NULL,
  `snack_description` text NOT NULL,
  `snack_offer` varchar(45) NOT NULL,
  `snack_image` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snack`
--

LOCK TABLES `snack` WRITE;
/*!40000 ALTER TABLE `snack` DISABLE KEYS */;
INSERT INTO `snack` VALUES (1,99,'popcorn','salty popcorn','-','popcorn_small.jpg'),(2,149,'popcorn-large','large salty popcorn','-','popcorn_large.jpg'),(3,199,'popcorn + pepsi','combo of popcorn and coke','combo','combo.jpg');
/*!40000 ALTER TABLE `snack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_role_id` int NOT NULL,
  `user_phone_number` varchar(12) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` char(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_role_id_idx` (`user_role_id`),
  CONSTRAINT `user_role_id` FOREIGN KEY (`user_role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (15,'utsav',11,'7069152544','utsavsuthar24@gmail.com','$2b$10$mKhCw.HPX5c77UKjKyTU6.Yy64Ne1uFK2gRKyh91TLi7mAqwkJTRu'),(18,'Admin',10,'0000000000','admin@gmail.com','$2b$10$/I6OT69z4B8focjD1Bwxdu0b6gbpV///K9JUQ.hJf00EwygI.BVaK'),(29,'admin1',10,'0000000001','admin@admin.com','admin'),(43,'vivek',11,'7069052535','vivek@gmail.com','$2b$10$IdXv.9XwPCYat9pgZ3oORegYrGAXBeHdBnO3oPH6F94XbJgSRZM5O'),(46,'harsh',11,'9979154219','harsh@gmail.com','$2b$10$ZlBJNj1vNFERejZGADIJiOoA9lOm8kkoF34quajXcL.KfLVqSMggi'),(47,'rahil',11,'9979631883','rahil@gmail.com','$2b$10$ZY6f3wQei0gv7f6SS3U90eL9YfVyjWJmOPVYjz24Y0nHdiXUEGkJW'),(48,'utsav1',11,'7069052544','utsavsuthar24@gmail.com','$2b$10$mcV.mnFPEQPsAv3ZbqGvNuWyv.IHkVi.iU.e4jQi26MhGfWl90ya2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 11:44:44
