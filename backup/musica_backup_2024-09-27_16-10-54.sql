-- MySQL dump 10.13  Distrib 5.7.44, for osx10.15 (x86_64)
--
-- Host: localhost    Database: musica
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `albuns`
--

DROP TABLE IF EXISTS `albuns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albuns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `ano_lancamento` int DEFAULT NULL,
  `id_artista` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_artista` (`id_artista`),
  CONSTRAINT `albuns_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artistas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albuns`
--

LOCK TABLES `albuns` WRITE;
/*!40000 ALTER TABLE `albuns` DISABLE KEYS */;
INSERT INTO `albuns` VALUES (1,'The Life of Pablo ',2016,1),(2,'Concentrado',1980,2),(3,'Brothers in Arms',1977,3),(4,'Making Movie',1977,3),(5,'Reckless 30th Anniversary',1959,4),(6,'Dire Straits',1978,3),(7,'Communiqué',1979,3),(8,'Making Movies',1980,3),(9,'Love Over Gold',1982,3),(10,'On Every Street',1991,3);
/*!40000 ALTER TABLE `albuns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artistas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `nacionalidade` varchar(100) DEFAULT NULL,
  `tipo_artista` enum('Solo','Banda') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Kanye West',NULL,'Solo'),(2,'GNR',NULL,'Solo'),(3,'Dire Straits',NULL,'Solo'),(4,'Bryan Adams',NULL,'Solo');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musicas`
--

DROP TABLE IF EXISTS `musicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musicas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `duracao` time DEFAULT NULL,
  `id_album` int DEFAULT NULL,
  `letra` text,
  PRIMARY KEY (`id`),
  KEY `id_album` (`id_album`),
  CONSTRAINT `musicas_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `albuns` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicas`
--

LOCK TABLES `musicas` WRITE;
/*!40000 ALTER TABLE `musicas` DISABLE KEYS */;
INSERT INTO `musicas` VALUES (4,'Walk of Life','00:04:13',3,'Here comes Johnny singing oldies, goldies\r\nBe-Bop-A-Lula, Baby What I Say\r\nHere comes Johnny singing I Gotta Woman\r\nDown in the tunnels, trying to make it pay\r\nHe got the action, he got the motion\r\nYeah, the boy can play\r\nDedication devotion\r\nTurning all the night time into the day\r\n\r\nHe do the song about the sweet lovin\' woman\r\nHe do the song about the knife\r\nHe do the walk, he do the walk of life\r\n\r\nHere comes Johnny and he\'ll tell you the story\r\nHand me down mu walkin\' shoes\r\nHere come Johnny with the power and the glory\r\nBackbeat the talkin\' blues\r\nHe got the action, he got the motion\r\nYeah, the boy can play\r\nDedication devotion\r\nTurning all the night time into the day\r\n\r\nHe do the song about the sweet lovin\' woman\r\nHe do the song about the knife\r\nHe do the walk, he do the walk of life\r\n\r\nHere comes Johnny singing oldies, goldies\r\nBe-Bop-A-Lula, Baby What I Say\r\nHere comes Johnny singing I Gotta Woman\r\nDown in the tunnels, trying to make it pay\r\nHe got the action, he got the motion\r\nYeah the boy can play\r\nDecidation devotion\r\nTurning all the night time into the day\r\n\r\nAnd after all the violence and double talk\r\nThere\'s just a song in all the trouble and the strife\r\nYou do the walk, you do the walk of life'),(5,'Run to you','00:03:53',5,'She says her love for me could never die\r\nBut that\'d change if she ever found out about you and I\r\nOh, but her love is cold\r\nWouldn\'t hurt her if she didn\'t know\r\n\r\n\'Cause when it gets too much\r\nI need to feel your touch\r\n\r\nI\'m gonna run to you\r\nI\'m gonna run to you\r\n\'Cause when the feeling\'s right\r\nI\'m gonna run all night\r\nI\'m gonna run to you\r\n\r\nShe\'s got a heart of gold, she\'d never let me down\r\nBut you\'re the one that always turns me on\r\nYou keep me coming around\r\nI know her love is true\r\nBut it\'s so damn easy making love to you\r\n\r\nI got my mind made up\r\nI need to feel your touch\r\n\r\nI\'m gonna run to you\r\nYeah, I\'m gonna run to you\r\n\'Cause when the feeling\'s right\r\nI\'m gonna stay all night\r\nI\'m gonna run to you\r\n\r\nYeah, I\'m gonna run to you\r\nOh, when the feelings right\r\nI\'m gonna run all night\r\nI\'m gonna run to you\r\n\r\nYeah, I\'m gonna run to you\r\nYeah, I\'m gonna run to you\r\n\'Cause when the feeling\'s right\r\nI\'m gonna stay all night\r\nI\'m gonna run to you\r\n\r\nOh, I\'m gonna run to you\r\nYeah, when the feelings right\r\nI\'m gonna stay all night\r\nOh, when the feeling\'s right, oh\r\nOh, yeah, when the feeling\'s right, now\r\nI\'m gonna run to you\r\nOh, oh\r\nI\'m gonna run to you\r\nYeah, yeah\r\nOh, gonna run to you, run to you\r\nI\'m gonna run to you'),(6,'Somebody','00:04:44',5,'I been lookin\' for someone\r\nBetween the fire and the flame\r\nWe\'re all lookin\' for somethin\'\r\nTo ease the pain\r\nNow, who can you turn to\r\nWhen it\'s all black and white\r\nAnd the winners are losers\r\nYou see it every night\r\n\r\nI need somebody\r\nSomebody like you\r\nEverybody needs somebody\r\n\r\nI need somebody\r\nHey, what about you?\r\nEverybody needs somebody\r\nWhen you\'re out on the front line\r\nAnd you\'re watchin\' them fall\r\nIt doesn\'t take long to realize\r\nIt ain\'t worth fightin\' for\r\n\r\nI thought I saw the Madonna\r\nWhen you walked in the room\r\nWell, your eyes were like diamonds\r\nAnd they cut right through - oh, they cut right through\r\n\r\nI need somebody\r\nSomebody like you\r\nEverybody needs somebody\r\nI need somebody\r\nHey, what about you?\r\nWe all need somebody\r\n\r\nAnother night; another lesson learned\r\nIt\'s the distance that keeps us sane\r\nBut when the silence leads to sorrow\r\nWe do it all again - all again\r\n\r\nI need somebody\r\nSomebody like you\r\nEverybody needs somebody\r\nOh, yeah\r\nI need somebody\r\nHey, what about you?\r\nEverybody needs somebody\r\n\r\nI need somebody\r\nSomebody like you\r\nEverybody needs somebody\r\nAt least somebody\r\nI need somebody\r\nHey, what about you?\r\nWe all need somebody\r\n\r\nI need somebody\r\nEverybody needs somebody\r\nI need somebody\r\nEverybody needs somebody'),(7,'Heaven','00:04:03',5,'Oh, thinkin\' about all our younger years\r\nThere was only you and me\r\nWe were young and wild and free\r\n\r\nNow nothin\' can take you away from me\r\nWe\'ve been down that road before\r\nBut that\'s over now\r\nYou keep me comin\' back for more\r\n\r\nBaby, you\'re all that I want\r\nWhen you\'re lyin\' here in my arms\r\nI\'m findin\' it hard to believe\r\nWe\'re in heaven\r\n\r\nAnd love is all that I need\r\nAnd I found it there in your heart\r\nIt isn\'t too hard to see\r\nWe\'re in heaven\r\n\r\nOh, once in your life you find someone\r\nWho will turn your world around\r\nBring you up when you\'re feelin\' down\r\n\r\nYeah, nothin\' could change what you mean to me\r\nOh, there\'s lots that I could say\r\nBut just hold me now\r\n\'Cause our love will light the way\r\n\r\nAnd, baby, you\'re all that I want\r\nWhen you\'re lyin\' here in my arms\r\nI\'m findin\' it hard to believe\r\nWe\'re in heaven\r\n\r\nYeah, love is all that I need\r\nAnd I found it there in your heart\r\nIt isn\'t too hard to see\r\nWe\'re in heaven\r\n\r\nI\'ve been waitin\' for so long\r\nFor somethin\' to arrive\r\nFor love to come along\r\n\r\nNow our dreams are comin\' true\r\nThrough the good times and the bad\r\nYeah, I\'ll be standin\' there by you\r\n\r\nAnd, baby, you\'re all that I want\r\nWhen you\'re lyin\' here in my arms\r\nI\'m findin\' it hard to believe\r\nWe\'re in heaven\r\n\r\nAnd love is all that I need\r\nAnd I found it there in your heart\r\nIt isn\'t too hard to see\r\nWe\'re in heaven, heaven\r\n\r\nYou\'re all that I want\r\nYou\'re all that I need\r\n\r\nWe\'re in heaven\r\nWe\'re in heaven\r\nWe\'re in heaven'),(8,'Summer of \'69','00:03:32',5,'I got my first real six-string\r\nBought it at the five-and-dime\r\nPlayed it \'til my fingers bled\r\nWas the summer of \'69\r\n\r\nMe and some guys from school\r\nHad a band and we tried real hard.\r\nJimmy quit, Jody got married\r\nI should\'ve known we\'d never get far\r\n\r\nOh, when I look back now\r\nThat summer seemed to last forever\r\nAnd if I had the choice\r\nYeah, I\'d always wanna be there\r\nThose were the best days of my life\r\n\r\nAin\'t no use in complainin\'\r\nWhen you\'ve got a job to do\r\nSpent my evenings down at the drive-in\r\nAnd that\'s when I met you, yeah\r\n\r\nStandin\' on your mama\'s porch\r\nYou told me that you\'d wait forever\r\nOh, and when you held my hand\r\nI knew that it was now or never\r\nThose were the best days of my life\r\n\r\nOh, yeah.\r\nBack in the summer of \'69, oh.\r\n\r\nMan we were killin\' time\r\nWe were young and restless\r\nWe needed to unwind\r\nI guess nothin\' can last forever, forever, no! yeah!\r\n\r\nAnd now the times are changin\'\r\nLook at everything that\'s come and gone\r\nSometimes when I play that old six-string\r\nI think about you, wonder what went wrong\r\n\r\nStandin\' on your mama\'s porch\r\nYou told me that it\'d last forever\r\nOh, and when you held my hand\r\nI knew that it was now or never\r\nThose were the best days of my life\r\n\r\nOh, yeah.\r\nBack in the summer of \'69, oh.\r\nIt was the summer of \'69, oh, yeah.\r\nMe and my baby in \'69, oh.\r\nIt was the summer, the summer, the summer of \'69, yeah.'),(9,'One Night Love Affair','00:04:32',5,'You\'re the silent type\r\nAnd you caught my eye\r\nBut I never thought that I\'d be touchin\' you\r\nHow was I to know?\r\nI\'d let my feelin\'s go\r\nAnd that I\'d be yours before the night was through\r\n\r\nOne night love affair\r\nTryin\' to make like we don\'t care\r\nWe were both reachin\' out for somethin\'\r\nOne night love affair\r\nPretendin\' it ain\'t there\r\nOh, and now we\'re left with nothin\'\r\n\r\nWhen the mornin\' breaks\r\nWe go our separate ways\r\nIf the night was made for love, it ain\'t for keeps\r\nBut I lose control\r\nAs I watch you go\r\nAll my senses say I\'m in this much too deep\r\nNow you\'re outta reach\r\n\r\nOne night love affair\r\nTryin\' to make like we don\'t care\r\nWe were both reachin\' out for somethin\'\r\nOne night love affair\r\nPretendin\' it ain\'t there\r\nOh, and now we\'re left with nothin\'\r\n\r\nOne night love affair\r\nTryin\' to make like we don\'t care\r\nWe were both reachin\' out for somethin\'\r\nOne night love affair\r\nPretendin\' it ain\'t there\r\nOh, and now we\'re left with nothin\''),(10,'Saint Pablo','00:06:12',1,'Yeah, 9:08 L.A. time\r\nBack in the lab and shit\r\nMy wife said, I can\'t say no to nobody\r\nAnd at this rate we gon\' both die broke\r\nGot friends that ask me for money knowin\' I\'m in debt\r\nAnd like my wife said, I still didn\'t say no\r\nPeople tryna say I\'m goin\' crazy on Twitter\r\nMy friends\' best advice was to stay low\r\nI guess it\'s hard to decipher all of the bills\r\nEspecially when you got family members on payroll\r\nThe media said it was outlandish spendin\'\r\nThe media said he\'s way out of control\r\nI just feel like I\'m the only one not pretendin\'\r\nI\'m not out of control, I\'m just not in they control\r\nI know I\'m the most influential\r\nThat TIME cover was just confirmation\r\nThis generation\'s closest thing to Einstein\r\nSo don\'t worry about me, I\'m fine\r\nI can see a thousand years from now in real life\r\nSkate on the paradigm and shift it when I feel like\r\nTroll conventional thought, don\'t need to question\r\nI know it\'s antiquated so sometimes I get aggressive\r\nThank God For Jay Electra, he down with the mission\r\nDid it with with no permission, on our own conditions\r\nMost Blacks with money have been beaten to submission\r\nYeezy with the big house, did it way different\r\nNever listen to Hollywood producers\r\nDon\'t stare at money too long, it\'s Medusa\r\nThe ultimate Gemini has survived\r\nI wasn\'t supposed to make it past 25\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nThe night sky, yeah, I feel like I\'m home, yeah, yeah\r\nI\'ve been wakin\' the spirits of millions more to come\r\nA million illegally downloaded my truth over the drums\r\nI believe in the children, listen to the kids, bro\r\nIf the phone ringin\', go and get your kids hoe\r\nBrother Don Muhammad told the minister about the presentation\r\nHe sat back and smiled\r\nBlack on black lies is worse than black on black crime\r\nThe Jews share their truth on how to make a dime\r\nMost black men couldn\'t balance a checkbook\r\nBut buy a new car, talkin\' \'bout \"How my neck look?\"\r\nWell, it all looks great\r\n400 years later, we buyin\' our own chains\r\nThe light is before us brothers, so the devil workin\' hard\r\nReal family stick together and see through the mirage\r\nThe smokescreens, perceptions of false reality\r\nWho the real owner if your boss gets a salary?\r\nI am one with the people\r\nI am one with the people (Real)\r\nI\'ve been woken from enlightened man\'s dream\r\nCheckin\' Instagram comments to crowdsource my self esteem\r\nLet me not say too much or do too much\r\n\'Cause if I\'m up way too much, I\'m out of touch\r\nI\'m prayin\' an out-of-body experience will happen\r\nSo the people can see my light, now it\'s not just rappin\'\r\nGod, I have humbled myself before the court\r\nDrop my ego and confidence was my last resort\r\nI kno-I know he got a plan, I know I\'m on your beams\r\nOne set of footsteps, you was carryin\' me\r\nWhen I turned on the news and they was buryin\' me\r\nOne set of footsteps, you was carryin\' me\r\nWhen I was negotiatin\' with Apple, it was Larry and me\r\nTold Tim Cook to call me, I was scary to see\r\nI would\'ve took a 100 million and gave 20 to Hov\r\nI heard it\'s the way they did it when we only had a stove\r\nBut it\'s better that I stayed at home with my folks\r\n\'Cause if Jay a billionaire then I\'ma never go broke\r\nOnly thing I ask is next time I\'m on stage we all go\r\nWe all go\r\nNot just by myself, lookin\' for niggas like where\'s Waldo\r\nShe got the same shoes as my wife but she copped \'em at Aldo\r\nModern day MJ with a off-the-wall flow\r\nNightlife, walk all over me\r\nWalk all over me\r\nI\'m deliverin\' everything I\'ve ever sent to you\'ll bring\r\nFly, fly, fly overseas\r\nFly overseas\r\nOh, anywhere, everything but in between\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nPlease face me when I speak\r\nPlease say to me somethin\' before you leave\r\nYou\'ve been treatin\' me like I\'m invisible\r\nNow I\'m visible to you\r\nOh, the invisible truths they sold\r\nI can\'t quite understand the games you play\r\nUnderstand, understand\r\nUnderstand I\'m standin\' under oath\r\nAnd I promised I, I wouldn\'t fall anymore\r\nBut I\'m cryin\' at the bar\r\nI\'m wishin\' that you saw my scars, man\r\nI\'m wishin\' that you came down here\r\nAnd stood by me\r\nAnd look at me like you knew me\r\nBut I feel so alone\r\nLike I don\'t know anyone except the night sky above\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nAnd you wonder where is God in your nightlife');
/*!40000 ALTER TABLE `musicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtores`
--

DROP TABLE IF EXISTS `produtores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtores`
--

LOCK TABLES `produtores` WRITE;
/*!40000 ALTER TABLE `produtores` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27 17:10:54
