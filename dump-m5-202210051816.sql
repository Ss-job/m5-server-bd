-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: m5
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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
-- Table structure for table `coin_catalogs`
--

DROP TABLE IF EXISTS `coin_catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_catalogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `catalog_img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_catalogs`
--

LOCK TABLES `coin_catalogs` WRITE;
/*!40000 ALTER TABLE `coin_catalogs` DISABLE KEYS */;
INSERT INTO `coin_catalogs` VALUES (1,'Bullion coins','Lion sedge_1.png'),(2,'Exclusive coins','South Vietnamese Dong_1.png'),(3,'Commemorative coins','Canadian Beaver_1.png');
/*!40000 ALTER TABLE `coin_catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coins`
--

DROP TABLE IF EXISTS `coins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `compocition_id` int(10) unsigned NOT NULL,
  `quality_id` int(10) unsigned NOT NULL,
  `denomination` decimal(10,2) NOT NULL,
  `currency_unit_id` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `coin_catalog_id` int(10) unsigned NOT NULL,
  `currency_id` varchar(100) NOT NULL,
  `avers` varchar(100) NOT NULL,
  `revers` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coins`
--

LOCK TABLES `coins` WRITE;
/*!40000 ALTER TABLE `coins` DISABLE KEYS */;
INSERT INTO `coins` VALUES (1,'Canadian Beaver','\"Canadian beaver\". Unique coin with the image of a beaver. Face value - 5 cents. Created under Elizabeth II.','In the center of the obverse is a portrait of Queen Elizabeth II, the profile is directed to the right. The inscription on the left semicircle (English) ELIZABETH II, on the right semicircle D · G · REGINA (ELIZABETH II QUEEN by the Grace of GOD) with dots. Below is a mint mark.\r\n\r\nIn the center of the coin reverse is a Canadian beaver on a rock sticking out of the water. At the top is a semicircle with the inscription \"5 cents\" between two maple leaves. At the bottom in two lines is the inscription CANADA (CANADA) and the year of minting.\r\n',1,1,1,5.00,'16',1965,4.54,40.00,3,'1','Canadian Beaver_1.png','Canadian Beaver_2.png'),(2,'Looney','\"Looney\". Unique coin with the image of a goat. Canadian dollar symbol.','The reverse of the coin depicts a black goat - a symbol of Canada and an inscription divided into the lower and upper semicircle \"Canadian dollar\".\r\n\r\nThe obverse depicts Queen Elizabeth II. The inscription on the left semicircle (English) ELIZABETH II, on the right semicircle D · G · REGINA (ELIZABETH II QUEEN by the Grace of GOD) with dots. Below is the year of coinage.\r\n',1,2,1,1.00,'11',1970,5.40,65.00,3,'1','Looney_1.png','Looney_2.png'),(3,'Jefferson','Unique coin featuring Thomas Jefferson, the 3rd American president. Face value - 5 cents.','The obverse of the coin depicts a bust of the 3rd American president, Thomas Jefferson. The inscription on the right semicircle \"IN GOD WE TRUST\". Below is the inscription “FREEDOM” and the year of minting. Under the image of Jefferson was a monogram of an engraver. The initials of the engraver FS first appeared on coins in 1966.\r\n\r\nThe reverse side shows the Jefferson Monticello estate, as well as the inscription: on the top - the motto “E PLURIBUS UNUM”, on the bottom - the inscriptions “MONTICELLO”, “FIVE CENTS” and “UNITED STATES OF AMERICA”.\r\n',2,1,1,5.00,'16',1966,3.54,35.00,3,'1','Jefferson_1.png','Jefferson_2.png'),(4,'Kennedy','The unique coin is made in honor of the assassination of the 35th president of Texas.','On November 22, 1963, in connection with the assassination of the 35th President John F. Kennedy in Dallas (Texas), it was decided to perpetuate the memory of President Kennedy on a coin.\r\n\r\nOn the obverse to the right is a portrait of the 35th President of the United States, John F. Kennedy. Captions: FREEDOM / IN GOD WE TRUST / 1993.\r\n\r\nThe reverse depicts the US state emblem (bald eagle with a shield) in the ring of stars. Captions: UNITED STATES OF AMERICA / E PLURIBUS UNUM / HALF DOLLAR.\r\n',2,1,1,1.00,'17',1963,4.30,43.00,3,'1','Kennedy_1.png','Kennedy_2.png'),(5,'Canadian Cent','\"Canadian cent.\" A unique coin with the image of maple leaves - symbols of Canada. Face value - 1 cent.','On May 3, 2012, the Department of the Treasury of Canada announced the cessation of production of a 1 cent coin. The latest issues of the famous 1-cent maple leaf were minted in 2012.\r\n\r\nOn the reverse, in the center of the coin are two maple leaves (the symbol of Canada), the year of issue is 2012 on the left. The upper part of the coin shows the denomination: 1 cent (1 cent), in the lower part of the inscription in a semicircle: CANADA.\r\n\r\nOn the obverse in the center of the coin on the right is a portrait of Queen Elizabeth II. Along the edge of the coin there is an inscription: Elizabeth II D G REGINA.\r\n',1,3,1,1.00,'16',1965,2.70,8.00,3,'1','Canadian Cent_1.png','Canadian Cent_2.png'),(6,'A penny','\"A penny\". A unique coin with a shield image with 13 vertical stripes.','Minted from 1793 to the present day.\r\n\r\nIn 1959, on the 150th anniversary of the birth of Lincoln, the reverse design was changed. Instead of wheat spikelets, the image of the Lincoln Memorial was depicted on the coin. On the surviving copies you can see the image of the statue of the 16th American president between the columns. Coins of this type were minted in multi-billion copies until 2008.\r\n\r\nAnother round date (200 years since the birth) was marked by the minting of 4 coins, which symbolized the periods of life of Abraham Lincoln.\r\n\r\nIn 2010, the design of the coin was changed - the reverse depicts a shield with 13 vertical stripes, symbolizing the state and national unity.\r\n',2,3,1,1.00,'16',1793,5.10,8.00,3,'1','A penny_1.png','A penny_2.png'),(7,'25 cents','Unique coin depicting a caribou (reindeer). The face value of the coin is equal to a quarter of the Canadian dollar.','The obverse depicts Queen Elizabeth II. The caribou (reindeer) is depicted on the reverse.\r\n\r\nA modern design (with a deer) has been used since the time of King George VI, when the design of other Canadian coins also changed.\r\n\r\nUnder previous kings, a different design was used for coins from 5 to 50 cents. On the reverse side was the name of the coin in small letters, framed by maple leaves, with a crown at the top.\r\n\r\nOrdinary quarters are minted with a caribou on the back.\r\n\r\nIn 2004, Memorial Day was released. The reverse shows a poppy flower.\r\n',1,1,1,25.00,'16',1966,5.70,80.00,3,'1','25 cents_1.png','25 cents_2.png'),(8,'Dim Sum','Dim Sum is a 10-cent coin of the United States that has been minted from 1946 to the present. This is a unique coin with the image of a torch, oak and olive branches.','The obverse of the coin depicts a portrait of the 32nd President of the United States, Franklin D. Roosevelt, and the reverse depicts a torch, oak and olive branches above the motto “E pluribus unum” - “Out of many.”\r\n\r\nAfter the death of Franklin Roosevelt in 1945, it was decided to put his image on a coin to perpetuate his memory. The choice of a coin denomination of 10 cents was due to the fact that in 1938 Roosevelt made a lot of efforts to create the National Fund Fund, which is half joking, and since 1979 it has been officially called the “March of ten cents”.\r\n',2,1,1,10.00,'16',1946,4.25,10.00,3,'1','Dim Sum_1.png','Dim Sum_2.png'),(9,'South Vietnamese Dong','Currency of the Republic of Vietnam in 1955-1975 Coin with the image of wheat.','Currency of the Republic of Vietnam in 1955-1975.\r\n\r\nOn the front side, we see wheat, and on the back, a unit symbolizing money.\r\n\r\nThe monetary unit of South Vietnam was originally the Indochinese piastre, issued by the Institute of Emissions of the States of Cambodia, Laos and Vietnam. Banknotes of the graduating institute were issued in three types: Cambodian, Lao and Vietnamese. The inscriptions on the banknotes of all samples were made in four languages: French, Khmer, Lao and Vietnamese. Vietnamese-style banknotes depicted a pattern, as well as the inscription “VIÊN PHÁT-HÀNH”. Piastres previously issued by the French Bank of Indochina were also in circulation.\r\n',3,1,1,1.00,'15',1955,5.05,56.00,2,'1','South Vietnamese Dong_1.png','South Vietnamese Dong_2.png'),(10,'The British Antelope','Unique coin depicting an antelope. British South African gold coin with a face value of 1/2 pound. It has been produced since 1952.','On one side of the coin is the head of King George VI, turned to the left. Also at the top in a semicircle is the inscription GEORGIVS SEXTVS REX.\r\n\r\nOn the other side of the coin is an Antelope. Around it is the inscription SOUTH AFRICA 1952 SUID AFRICA, dotted with dots. Below is the nominal value.\r\n',4,2,1,0.50,'8',1952,6.30,78.00,2,'1','The British Antelope_1.png','The British Antelope_2.png'),(11,'Cron','A unique coin depicting a Knorr Viking ship at sea.','Coin 1 crown was issued from August 1, 1934 to March 25, 1941, during the first period of Estonia’s independence.\r\n\r\nOn the obverse of the coin in the center is a large state seal, the emblem of Estonia, crowned with an arched text with the inscription “Eesti Vabariik”, and on the lower edge - the year of issue “1934”.\r\n\r\nThe reverse depicts a Viking ship Knarr in the sea, under which appears the inscription 1 crown.\r\n\r\nIn 2012, a single crown coin.\r\n\r\n1934 was recognized as \"the most beautiful coin ever circulated in Estonia.\"\r\n',5,2,1,0.50,'8',1934,5.67,79.00,2,'1','Cron_1.png','Cron_2.png'),(12,'Franc','Unique coin with the image of a walking elephant. \"Frank\" of the Belgian Congo.','On the reverse of the coin in its central part there is an inscription in French: \"2 francs\" - 2 francs, framed by a five-pointed star. Along the edge from left to right there is an inscription in French and Dutch in two lines: “BANQUE DU CONGO BELGE”, “BANQUE VAN BELGISCH CONGO” - Bank of the Belgian Congo. The edge of the coin is decorated with decorative teeth.\r\n\r\nOn the reverse of the coin in the central part is a walking elephant. The year of minting is located under it: 1947. The edge is uneven.\r\n',6,2,1,2.00,'14',1947,5.45,68.00,2,'1','Franc_1.png','Franc_2.png'),(13,'Stork','Unique coin with the image of a flying stork. French coin at 2 two francs 1997.','Two francs by Georges Gynemer - a commemorative coin of two French francs, issued in 1997 in honor of the famous pilot of the First World War, Georges Gynemer, on the occasion of the 80th anniversary of the officer cross of the Legion of Honor and his death: shot down in flight by a German plane.\r\n\r\nThey are painted by engravers of the workshop of coins and medals under the direction of the general engraver of coins Pierre Rodier 4.\r\n\r\nThe obverse depicts a portrait of Georges Gainemer in a flight suit and pilot\'s glasses, raised to his forehead. The inscription GEORGES GUYNEMER 1894-1917 in a semicircle at the top of the coin. And also the year of release below.\r\n\r\nThe reverse shows a flying stork. Also below the arc is the inscription LIBERTÉ ÉGALITÉ FRATERNITÉ, separated by dots. And the face value at the top of the coin.\r\n',7,3,1,2.00,'14',1997,6.57,54.00,2,'1','Stork_1.png','Stork_2.png'),(14,'Gyeonggi','\"Gyeonggi\". Coin with the image of five kangaroos - symbols of Australia.','The first Australian coin with a nominal value of 1 dollar was introduced on May 13, 1984 to replace a one-dollar banknote.\r\n\r\nThe portraits of Elizabeth II on the obverse of the 1984, 1985 and 1988 coins were made by Arnold Machin, and on the 1999 coins by Ian Rank-Broadley.\r\n\r\nThe reverse of the coin depicts five kangaroos symbolizing Australia. The drawing was designed by Stuart Devlin in 1966.\r\n\r\nThe first Australian $ 1 coin was introduced on May 13, 1984 to replace a one-dollar bill.\r\n\r\nThis is currently the most common coin denomination in Australia.\r\n',8,2,1,1.00,'11',1984,4.76,97.00,2,'1','Gyeonggi_1.png','Gyeonggi_2.png'),(15,'Bolivian Peso','Boliviano Coin with the image of Bolivia.','By 1987, the Bolivian peso had completely depreciated and was replaced by a new boliviano during another monetary reform.\r\n\r\nOld banknotes were printed and used as a \"bargaining chip.\" And in 1988, they began to mint a real coin.\r\n\r\nThis currency is still in circulation.\r\n\r\nAt the top of one of the sides of the coin in a semicircle is the inscription REPUBLICADE BOLIVIA. At the bottom of the coin, an arc depicts 10 stars.\r\n\r\nAbove, on the other side of the coin, the inscription PESO BOLIVIANO is located in an arc. In the middle is an image of face value. At the bottom of the year, framed on both sides by branches.\r\n',9,3,1,1.00,'13',1988,3.62,54.00,2,'1','Bolivian Peso_1.png','Bolivian Peso_2.png'),(16,'Botswana','\"Botswana\". Coin with the image of a bird.','Coin of state of Botswana 1976.\r\n\r\nTranslated from Botswana, its name means “let it rain”\r\n\r\nAfter gaining independence from the United Kingdom in 1966, Botswana was a member of currency unions.\r\n\r\nIn 2005, as a result of inflation, the currency fell by 12%, but it still remains one of the “strong” currencies on the African continent.\r\n',10,3,1,1.00,'12',1976,4.28,62.00,2,'1','Botswana_1.png','Botswana_2.png'),(17,'Virginia','Virginia Coin with the image of a seahorse. Coin created during the reign of Elizabeth II.','The obverse depicts Her Majesty Queen Elizabeth II. At the top of the coin is the inscription British Virgin Islands Queen Elizabeth II 2014.\r\n\r\nThe reverse depicts a beautiful seahorse with a tail wrapped around a coral.\r\n\r\nThe choice of seahorse reflects the marine heritage of the British Virgin Islands. The British Virgin Islands, located in the Caribbean Sea and consisting of more than 60 islands, are known for their coral reefs, which are home to a wide variety of animal species, including seahorses.\r\n\r\nSeahorse is the name given to 54 species of marine fish in the genus Hippocampus, which comes from the ancient Greek hippos, which means “horse”, and Campos - “sea monster”.\r\n',11,1,1,5.00,'11',2014,6.98,108.00,2,'1','Virginia_1.png','Virginia_2.png'),(18,'Theobroma Cocoa','Coin with a lion in the center of the shield. Ghana coin, published in 1967.','The reverse depicts a runaway lion in the center of a shield divided into four parts, separating the date and the face value. The inscription at the top of the coin is TWENTY\r\n\r\nAs for the images inside the coat of arms:\r\nupper left: sword (used by chieftains) and staff (used by a linguist for ceremonial events)\r\ntop right: OSU castle at sea (Presidential Palace),\r\nbottom left: cocoa tree (agricultural wealth of Ghana).\r\nBottom right: a gold mine (rich in industrial minerals and natural resources) in Ghana.\r\n\r\nThe Golden Lion and George intersect in the center (a permanent connection between Ghana and the Commonwealth of Nations).\r\n',12,3,1,20.00,'10',1962,4.76,54.00,2,'1','Theobroma Cocoa_1.png','Theobroma Cocoa_2.png'),(19,'Coin of the Weimar Republic','The Hindenburg Coin with the coat of arms of the Weimar Republic.','On the obverse, in the center of the coin, at the top is the coat of arms of the Weimar Republic. In the center below is the coat of arms of the Hindenburg family. This is a shield divided into 4 fields - in the upper left and lower right corners there is a head of a bull.\r\n\r\nOn the reverse side is a portrait of Paul von Hindenburg (1847–1934), Field Marshal, President of the Weimar Republic in 1925–1934 (right). Along the edge of the coin is a semicircle of date: 1847-1927 and the inscription: * * REICHSPRASIDENT * VON * HINDENBURG •. At the bottom left of the portrait is a letter denoting a German mint.\r\n',13,4,1,5.00,'9',1927,4.76,14.00,2,'1','Coin of the Weimar Republic_1.png','Coin of the Weimar Republic_2.png'),(20,'Scientist','Silver Egyptian coin with the image of the god Thoth. Silver Egyptian coin.','Face value one pound. It has been produced since 1981.\r\n\r\nThe coin shows the name of the country and its meaning in Arabic. Also depicted is the Egyptian god Thoth.\r\n\r\nOn the other side is a travel plate left by a radiant sun gear and splatter.\r\n\r\nThe Egyptian pound is often shortened as LE or L. E., which means livre égyptienne (French for Egyptian pound).\r\n',14,3,1,1.00,'8',1981,3.95,112.00,2,'1','Scientist_1.png','Scientist_2.png'),(21,'Lion sedge','Indian coin with the image of a lion Ashoka. Face value 1 one rupee. 1975 edition.','It depicts the lion Ashok on his pedestal. It is surrounded by the inscription of the name of the country in two languages, meaning and date, surrounded by stylized stalks of grain.\r\n\r\nThe rupee (from Sanskrit silver) is an Indian historical silver coin, put into circulation in the 15th century, as well as the monetary unit of a number of countries in South Asia.\r\n\r\nAfter the British conquest of Burma in 1852, the Indian rupee became its currency.\r\n\r\nIn 1938, Burma became an independent British colony.\r\n\r\nA year earlier, the release of the Burmese rupee, which lasted until 1952, began.\r\n\r\nIn 1952, the Burmese rupee was replaced by a kyat.\r\n\r\nThe rupee remained the currency of Portuguese possessions in India until 1959, when it was replaced by the escudos of Portuguese India.\r\n',15,3,1,1.00,'7',1975,4.95,76.00,1,'1','Lion sedge_1.png','Lion sedge_2.png'),(22,'Rial','Iranian silver coin with the image of a lion. Face value 5000 five thousand dinars (5 five taps). 1928 year.','It depicts a bust of Reza Shah, whose head is turned to the right.\r\n\r\nOn the other side is a lion with a saber in front of the radiant sun. Above it is a crown.\r\n\r\nBefore the monetary reform of 1932, the currency of Iran was fog. (1 fog = 10 clicks, 1 crane = 1000 dinars.)\r\n\r\nCurrently, the name \"fog\" is used to denote the amount of 10 reais.\r\n',16,3,1,5000.00,'6',1928,6.12,98.00,1,'1','Rial_1.png','Rial_2.png'),(23,'ISK','Icelandic coin with a picture of a fish. Face value 1 Icelandic krona','Initially, the krone consisted of 100 Eire (ISL. EYRIR, MN. CH. ISL. Aurar), but since January 1, 1995 Eire has not been used in monetary circulation.\r\n\r\nFrom January 1, 1999, in accordance with Law No. 36 of April 27, 1998, amounts must be rounded to 50 Eire.\r\n\r\nCoin minting in Krona began in 1925.\r\n\r\nInitially, all coins had a monogram of King Christian X.\r\n\r\nIceland was declared a Republic in 1944, and in 1946 it began to mint coins without royal symbols.\r\n\r\nIcelandic coins were minted by the Royal Mint of Denmark, the Royal Mint of Great Britain and a private mint in Birmingham.\r\n',17,1,1,1.00,'5',2007,5.42,78.00,1,'1','ISK_1.png','ISK_2.png'),(24,'Yemen','Coin of South Arabia (Yemen) with the image of a viral boat. Coin in 25 twenty five fils.','An octagonal star with dots is depicted on one side of the coin.\r\n\r\nOn the other side, a sailboat divides bills into English and Arabic.\r\n\r\nUntil 1951, Indian rupee and East African shilling traded in the British colony of Aden.\r\n\r\nIn 1951, East African shilling was declared the only legal tender in Aden.\r\n\r\nIn 1959, the Federation of the United Arab Emirates of the South was formed, which was transformed into the Federation of South Arabia in 1962.\r\n\r\nAden joined the Federation in 1963.\r\n\r\nIn April 1965, the South Arabian Dinar was issued and published by the South Arabian Monetary Authority.\r\n\r\nEast African shillings were exchanged for dinars until July 1, 1965 at a ratio of 20 shillings = 1 dinar.\r\n\r\nDinar was equated to pound.\r\n',18,1,1,25.00,'4',1964,5.47,69.00,1,'1','Yemen_1.png','Yemen_2.png'),(25,'Woman','1 yuan Chinese coin with a picture of a woman. 1986 edition.','On one side of the coin is a woman sitting on a stone. Doves fly around her\r\n\r\nOn the other side is a Chinese weapon with stars.\r\n\r\nToday, the term \"yuan\" usually refers to the main unit of account of the renminbi (renminbi), the currency of the People’s Republic of China.\r\n\r\nYuan banknotes start at one yuan and go up to 100 yuan.\r\n\r\nThe yuan symbol is also used in Chinese to denote the monetary units of Japan (yen) and Korea (won) and is used to convert the currency to the dollar, as well as to some other currencies; for example, the US dollar is called in Chinese meiyuan.\r\n',19,1,1,1.00,'3',1986,6.02,48.00,1,'1','Woman_1.png','Woman_2.png'),(26,'Alligator','Chinese coin with the image of an alligator. 5 yuan Chinese coin. 1998 edition.','It depicts a Chinese alligator on the banks of the river.\r\n\r\nOn the other side is a Chinese weapon with stars. It is surrounded by hieroglyphs and a coin release date.\r\n',19,1,1,5.00,'3',1998,7.24,78.00,1,'1','Alligator_1.png','Alligator_2.png'),(27,'The Golden Panda','Chinese coin with the image of two pandas. 5 yuan Chinese coin. 1993 edition.','On one side of the coin are two pandas. At the top of the coin are Chinese characters in an arc.\r\n\r\nOn the other side is a Chinese weapon with stars, surrounded by hieroglyphs. Below is written the year of release.\r\n\r\nChinese Golden Panda, launched in 1982.\r\n\r\nCoins (front side) remain unchanged since 1992\r\n\r\nThere is also a Silver Panda investment coin series, made in a similar design.\r\n',19,1,1,5.00,'3',1993,7.24,82.00,1,'1','The Golden Panda_1.png','The Golden Panda_2.png'),(28,'Costa Rica','Costa - African coin with the image of manatee. Costa Rican coin of 100 columns. It has been produced since 1974.','On one side of the coin is a shield with a sailing ship in front of the mountains. Below is the release date of the coin.\r\n\r\nOn the other side of the coin is a manatee among algae.\r\n\r\nThe Costa Rican coin is the monetary unit of Costa Rica.\r\n\r\nUntil 2017, the All-Russian classifier of currencies is the \"Costa Rican Colony\".\r\n',20,1,1,100.00,'2',1974,5.24,78.00,1,'1','Costa Rica_1.png','Costa Rica_2.png'),(29,'Year of the children','Costa is an African coin depicting three chicks in a nest. Costa Rican coin of 100 columns. It has been produced since 1979.','On one side of the coin are 3 chicks in a nest, symbolizing the International Year of Children.\r\n\r\nOn the other side is a shield with a sailing ship in front of the mountains, the shining sun behind the mountains.\r\n\r\nIn circulation are banknotes: 1000 columns of series A and B (red, polymer), 2000 columns (blue with a shark of Mauro Fernandez on one side and a bull shark on the back), 5000 columns of series A and B (yellow with Alfredo González Flores) with one side and capuchin monkeys on the back), 10,000 columns (green), 20,000 columns and 50,000 columns.\r\n\r\nIn the monetary circulation of the country are coins in denominations of 500, 100, 50, 25, 20, 10, 5 and 1 column.\r\n',20,1,1,100.00,'2',1979,5.24,72.00,1,'1','Year of the children_1.png','Year of the children_2.png'),(30,'Sailboat','Portuguese silver coin with the image of a sailing ship. ','Portuguese silver coin in 5 five escudos. It has been produced since 1933.\r\nOn one side of the coin is a sailing ship floating in the sea.\r\nOn the other side of the coin is a shield with smaller shields in front of a stylized globe.\r\n',21,3,1,5.00,'1',1933,4.40,134.00,1,'1','Sailboat_1.png','Sailboat_2.png');
/*!40000 ALTER TABLE `coins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compositions`
--

DROP TABLE IF EXISTS `compositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compositions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositions`
--

LOCK TABLES `compositions` WRITE;
/*!40000 ALTER TABLE `compositions` DISABLE KEYS */;
INSERT INTO `compositions` VALUES (1,'nickel'),(2,'gold'),(3,'Steel'),(4,'silver');
/*!40000 ALTER TABLE `compositions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'CANADA'),(2,' UNITED STATES OF AMERICA'),(3,'the Republic of Vietnam'),(4,'British South Africa'),(5,'Estonia'),(6,'the Belgian Congo'),(7,'France'),(8,'Australia'),(9,'Bolivia'),(10,'Botswana'),(11,'British Virgin Islands'),(12,'Ghana'),(13,'the Weimar Republic'),(14,'Egypt'),(15,'India'),(16,'Iran'),(17,'Iceland'),(18,'Yemen'),(19,'China'),(20,'Costa Rica'),(21,'Portugal');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `symbol` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'$');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_units`
--

DROP TABLE IF EXISTS `currency_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_units`
--

LOCK TABLES `currency_units` WRITE;
/*!40000 ALTER TABLE `currency_units` DISABLE KEYS */;
INSERT INTO `currency_units` VALUES (1,'escudos'),(2,'columns'),(3,'yuan'),(4,'fils'),(5,'Icelandic krona'),(6,'dinars'),(7,'rupee'),(8,'pound'),(9,'Mark'),(10,'pesewas'),(11,'dollar'),(12,'thebe'),(13,'PESO'),(14,'francs'),(15,'dong'),(16,'cent'),(17,'HALF DOLLAR');
/*!40000 ALTER TABLE `currency_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualities`
--

DROP TABLE IF EXISTS `qualities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualities`
--

LOCK TABLES `qualities` WRITE;
/*!40000 ALTER TABLE `qualities` DISABLE KEYS */;
INSERT INTO `qualities` VALUES (1,'BU');
/*!40000 ALTER TABLE `qualities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'm5'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-05 18:16:21
