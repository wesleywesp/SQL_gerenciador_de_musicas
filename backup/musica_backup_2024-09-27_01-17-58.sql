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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albuns`
--

LOCK TABLES `albuns` WRITE;
/*!40000 ALTER TABLE `albuns` DISABLE KEYS */;
INSERT INTO `albuns` VALUES (1,'The Life of Pablo ',2016,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Kanye West',NULL,'Solo');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicas`
--

LOCK TABLES `musicas` WRITE;
/*!40000 ALTER TABLE `musicas` DISABLE KEYS */;
INSERT INTO `musicas` VALUES (1,'Saint Pablo','00:06:12',1,'Yeah, 9:08 L.A. time\r\nBack in the lab and shit\r\nMy wife said, I can\'t say no to nobody\r\nAnd at this rate we gon\' both die broke\r\nGot friends that ask me for money knowin\' I\'m in debt\r\nAnd like my wife said, I still didn\'t say no\r\nPeople tryna say I\'m goin\' crazy on Twitter\r\nMy friends\' best advice was to stay low\r\nI guess it\'s hard to decipher all of the bills\r\nEspecially when you got family members on payroll\r\nThe media said it was outlandish spendin\'\r\nThe media said he\'s way out of control\r\nI just feel like I\'m the only one not pretendin\'\r\nI\'m not out of control, I\'m just not in they control\r\nI know I\'m the most influential\r\nThat TIME cover was just confirmation\r\nThis generation\'s closest thing to Einstein\r\nSo don\'t worry about me, I\'m fine\r\nI can see a thousand years from now in real life\r\nSkate on the paradigm and shift it when I feel like\r\nTroll conventional thought, don\'t need to question\r\nI know it\'s antiquated so sometimes I get aggressive\r\nThank God For Jay Electra, he down with the mission\r\nDid it with with no permission, on our own conditions\r\nMost Blacks with money have been beaten to submission\r\nYeezy with the big house, did it way different\r\nNever listen to Hollywood producers\r\nDon\'t stare at money too long, it\'s Medusa\r\nThe ultimate Gemini has survived\r\nI wasn\'t supposed to make it past 25\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nThe night sky, yeah, I feel like I\'m home, yeah, yeah\r\nI\'ve been wakin\' the spirits of millions more to come\r\nA million illegally downloaded my truth over the drums\r\nI believe in the children, listen to the kids, bro\r\nIf the phone ringin\', go and get your kids hoe\r\nBrother Don Muhammad told the minister about the presentation\r\nHe sat back and smiled\r\nBlack on black lies is worse than black on black crime\r\nThe Jews share their truth on how to make a dime\r\nMost black men couldn\'t balance a checkbook\r\nBut buy a new car, talkin\' \'bout \"How my neck look?\"\r\nWell, it all looks great\r\n400 years later, we buyin\' our own chains\r\nThe light is before us brothers, so the devil workin\' hard\r\nReal family stick together and see through the mirage\r\nThe smokescreens, perceptions of false reality\r\nWho the real owner if your boss gets a salary?\r\nI am one with the people\r\nI am one with the people (Real)\r\nI\'ve been woken from enlightened man\'s dream\r\nCheckin\' Instagram comments to crowdsource my self esteem\r\nLet me not say too much or do too much\r\n\'Cause if I\'m up way too much, I\'m out of touch\r\nI\'m prayin\' an out-of-body experience will happen\r\nSo the people can see my light, now it\'s not just rappin\'\r\nGod, I have humbled myself before the court\r\nDrop my ego and confidence was my last resort\r\nI kno-I know he got a plan, I know I\'m on your beams\r\nOne set of footsteps, you was carryin\' me\r\nWhen I turned on the news and they was buryin\' me\r\nOne set of footsteps, you was carryin\' me\r\nWhen I was negotiatin\' with Apple, it was Larry and me\r\nTold Tim Cook to call me, I was scary to see\r\nI would\'ve took a 100 million and gave 20 to Hov\r\nI heard it\'s the way they did it when we only had a stove\r\nBut it\'s better that I stayed at home with my folks\r\n\'Cause if Jay a billionaire then I\'ma never go broke\r\nOnly thing I ask is next time I\'m on stage we all go\r\nWe all go\r\nNot just by myself, lookin\' for niggas like where\'s Waldo\r\nShe got the same shoes as my wife but she copped \'em at Aldo\r\nModern day MJ with a off-the-wall flow\r\nNightlife, walk all over me\r\nWalk all over me\r\nI\'m deliverin\' everything I\'ve ever sent to you\'ll bring\r\nFly, fly, fly overseas\r\nFly overseas\r\nOh, anywhere, everything but in between\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nPlease face me when I speak\r\nPlease say to me somethin\' before you leave\r\nYou\'ve been treatin\' me like I\'m invisible\r\nNow I\'m visible to you\r\nOh, the invisible truths they sold\r\nI can\'t quite understand the games you play\r\nUnderstand, understand\r\nUnderstand I\'m standin\' under oath\r\nAnd I promised I, I wouldn\'t fall anymore\r\nBut I\'m cryin\' at the bar\r\nI\'m wishin\' that you saw my scars, man\r\nI\'m wishin\' that you came down here\r\nAnd stood by me\r\nAnd look at me like you knew me\r\nBut I feel so alone\r\nLike I don\'t know anyone except the night sky above\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nAnd you wonder where is God in your nightlife'),(2,'Saint Pablo','00:06:12',1,'Yeah, 9:08 L.A. time\r\nBack in the lab and shit\r\nMy wife said, I can\'t say no to nobody\r\nAnd at this rate we gon\' both die broke\r\nGot friends that ask me for money knowin\' I\'m in debt\r\nAnd like my wife said, I still didn\'t say no\r\nPeople tryna say I\'m goin\' crazy on Twitter\r\nMy friends\' best advice was to stay low\r\nI guess it\'s hard to decipher all of the bills\r\nEspecially when you got family members on payroll\r\nThe media said it was outlandish spendin\'\r\nThe media said he\'s way out of control\r\nI just feel like I\'m the only one not pretendin\'\r\nI\'m not out of control, I\'m just not in they control\r\nI know I\'m the most influential\r\nThat TIME cover was just confirmation\r\nThis generation\'s closest thing to Einstein\r\nSo don\'t worry about me, I\'m fine\r\nI can see a thousand years from now in real life\r\nSkate on the paradigm and shift it when I feel like\r\nTroll conventional thought, don\'t need to question\r\nI know it\'s antiquated so sometimes I get aggressive\r\nThank God For Jay Electra, he down with the mission\r\nDid it with with no permission, on our own conditions\r\nMost Blacks with money have been beaten to submission\r\nYeezy with the big house, did it way different\r\nNever listen to Hollywood producers\r\nDon\'t stare at money too long, it\'s Medusa\r\nThe ultimate Gemini has survived\r\nI wasn\'t supposed to make it past 25\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nThe night sky, yeah, I feel like I\'m home, yeah, yeah\r\nI\'ve been wakin\' the spirits of millions more to come\r\nA million illegally downloaded my truth over the drums\r\nI believe in the children, listen to the kids, bro\r\nIf the phone ringin\', go and get your kids hoe\r\nBrother Don Muhammad told the minister about the presentation\r\nHe sat back and smiled\r\nBlack on black lies is worse than black on black crime\r\nThe Jews share their truth on how to make a dime\r\nMost black men couldn\'t balance a checkbook\r\nBut buy a new car, talkin\' \'bout \"How my neck look?\"\r\nWell, it all looks great\r\n400 years later, we buyin\' our own chains\r\nThe light is before us brothers, so the devil workin\' hard\r\nReal family stick together and see through the mirage\r\nThe smokescreens, perceptions of false reality\r\nWho the real owner if your boss gets a salary?\r\nI am one with the people\r\nI am one with the people (Real)\r\nI\'ve been woken from enlightened man\'s dream\r\nCheckin\' Instagram comments to crowdsource my self esteem\r\nLet me not say too much or do too much\r\n\'Cause if I\'m up way too much, I\'m out of touch\r\nI\'m prayin\' an out-of-body experience will happen\r\nSo the people can see my light, now it\'s not just rappin\'\r\nGod, I have humbled myself before the court\r\nDrop my ego and confidence was my last resort\r\nI kno-I know he got a plan, I know I\'m on your beams\r\nOne set of footsteps, you was carryin\' me\r\nWhen I turned on the news and they was buryin\' me\r\nOne set of footsteps, you was carryin\' me\r\nWhen I was negotiatin\' with Apple, it was Larry and me\r\nTold Tim Cook to call me, I was scary to see\r\nI would\'ve took a 100 million and gave 20 to Hov\r\nI heard it\'s the way they did it when we only had a stove\r\nBut it\'s better that I stayed at home with my folks\r\n\'Cause if Jay a billionaire then I\'ma never go broke\r\nOnly thing I ask is next time I\'m on stage we all go\r\nWe all go\r\nNot just by myself, lookin\' for niggas like where\'s Waldo\r\nShe got the same shoes as my wife but she copped \'em at Aldo\r\nModern day MJ with a off-the-wall flow\r\nNightlife, walk all over me\r\nWalk all over me\r\nI\'m deliverin\' everything I\'ve ever sent to you\'ll bring\r\nFly, fly, fly overseas\r\nFly overseas\r\nOh, anywhere, everything but in between\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nPlease face me when I speak\r\nPlease say to me somethin\' before you leave\r\nYou\'ve been treatin\' me like I\'m invisible\r\nNow I\'m visible to you\r\nOh, the invisible truths they sold\r\nI can\'t quite understand the games you play\r\nUnderstand, understand\r\nUnderstand I\'m standin\' under oath\r\nAnd I promised I, I wouldn\'t fall anymore\r\nBut I\'m cryin\' at the bar\r\nI\'m wishin\' that you saw my scars, man\r\nI\'m wishin\' that you came down here\r\nAnd stood by me\r\nAnd look at me like you knew me\r\nBut I feel so alone\r\nLike I don\'t know anyone except the night sky above\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nAnd you wonder where is God in your nightlife'),(3,'Saint Pablo','06:12:00',1,'Yeah, 9:08 L.A. time\r\nBack in the lab and shit\r\nMy wife said, I can\'t say no to nobody\r\nAnd at this rate we gon\' both die broke\r\nGot friends that ask me for money knowin\' I\'m in debt\r\nAnd like my wife said, I still didn\'t say no\r\nPeople tryna say I\'m goin\' crazy on Twitter\r\nMy friends\' best advice was to stay low\r\nI guess it\'s hard to decipher all of the bills\r\nEspecially when you got family members on payroll\r\nThe media said it was outlandish spendin\'\r\nThe media said he\'s way out of control\r\nI just feel like I\'m the only one not pretendin\'\r\nI\'m not out of control, I\'m just not in they control\r\nI know I\'m the most influential\r\nThat TIME cover was just confirmation\r\nThis generation\'s closest thing to Einstein\r\nSo don\'t worry about me, I\'m fine\r\nI can see a thousand years from now in real life\r\nSkate on the paradigm and shift it when I feel like\r\nTroll conventional thought, don\'t need to question\r\nI know it\'s antiquated so sometimes I get aggressive\r\nThank God For Jay Electra, he down with the mission\r\nDid it with with no permission, on our own conditions\r\nMost Blacks with money have been beaten to submission\r\nYeezy with the big house, did it way different\r\nNever listen to Hollywood producers\r\nDon\'t stare at money too long, it\'s Medusa\r\nThe ultimate Gemini has survived\r\nI wasn\'t supposed to make it past 25\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nThe night sky, yeah, I feel like I\'m home, yeah, yeah\r\nI\'ve been wakin\' the spirits of millions more to come\r\nA million illegally downloaded my truth over the drums\r\nI believe in the children, listen to the kids, bro\r\nIf the phone ringin\', go and get your kids hoe\r\nBrother Don Muhammad told the minister about the presentation\r\nHe sat back and smiled\r\nBlack on black lies is worse than black on black crime\r\nThe Jews share their truth on how to make a dime\r\nMost black men couldn\'t balance a checkbook\r\nBut buy a new car, talkin\' \'bout \"How my neck look?\"\r\nWell, it all looks great\r\n400 years later, we buyin\' our own chains\r\nThe light is before us brothers, so the devil workin\' hard\r\nReal family stick together and see through the mirage\r\nThe smokescreens, perceptions of false reality\r\nWho the real owner if your boss gets a salary?\r\nI am one with the people\r\nI am one with the people (Real)\r\nI\'ve been woken from enlightened man\'s dream\r\nCheckin\' Instagram comments to crowdsource my self esteem\r\nLet me not say too much or do too much\r\n\'Cause if I\'m up way too much, I\'m out of touch\r\nI\'m prayin\' an out-of-body experience will happen\r\nSo the people can see my light, now it\'s not just rappin\'\r\nGod, I have humbled myself before the court\r\nDrop my ego and confidence was my last resort\r\nI kno-I know he got a plan, I know I\'m on your beams\r\nOne set of footsteps, you was carryin\' me\r\nWhen I turned on the news and they was buryin\' me\r\nOne set of footsteps, you was carryin\' me\r\nWhen I was negotiatin\' with Apple, it was Larry and me\r\nTold Tim Cook to call me, I was scary to see\r\nI would\'ve took a 100 million and gave 20 to Hov\r\nI heard it\'s the way they did it when we only had a stove\r\nBut it\'s better that I stayed at home with my folks\r\n\'Cause if Jay a billionaire then I\'ma never go broke\r\nOnly thing I ask is next time I\'m on stage we all go\r\nWe all go\r\nNot just by myself, lookin\' for niggas like where\'s Waldo\r\nShe got the same shoes as my wife but she copped \'em at Aldo\r\nModern day MJ with a off-the-wall flow\r\nNightlife, walk all over me\r\nWalk all over me\r\nI\'m deliverin\' everything I\'ve ever sent to you\'ll bring\r\nFly, fly, fly overseas\r\nFly overseas\r\nOh, anywhere, everything but in between\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nPlease face me when I speak\r\nPlease say to me somethin\' before you leave\r\nYou\'ve been treatin\' me like I\'m invisible\r\nNow I\'m visible to you\r\nOh, the invisible truths they sold\r\nI can\'t quite understand the games you play\r\nUnderstand, understand\r\nUnderstand I\'m standin\' under oath\r\nAnd I promised I, I wouldn\'t fall anymore\r\nBut I\'m cryin\' at the bar\r\nI\'m wishin\' that you saw my scars, man\r\nI\'m wishin\' that you came down here\r\nAnd stood by me\r\nAnd look at me like you knew me\r\nBut I feel so alone\r\nLike I don\'t know anyone except the night sky above\r\nYeah, you\'re lookin\' at the church in the night sky\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky\r\nAnd you wonder where is God in your nightlife\r\nYeah, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nWonderin\' whether God\'s gonna say hi\r\nOh, you\'re lookin\' at the church in the night sky (Father, Father, Father)\r\nAnd you wonder where is God in your nightlife');
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

-- Dump completed on 2024-09-27  2:17:58
