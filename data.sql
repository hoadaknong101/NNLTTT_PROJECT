-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: congty
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `duan`
--

DROP TABLE IF EXISTS `duan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duan` (
  `MaDA` int NOT NULL,
  `TenDA` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DiaDiem` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Phong` int NOT NULL,
  PRIMARY KEY (`MaDA`) USING BTREE,
  KEY `Phong_idx` (`Phong`) USING BTREE,
  CONSTRAINT `Phong` FOREIGN KEY (`Phong`) REFERENCES `phongban` (`MaPB`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duan`
--

LOCK TABLES `duan` WRITE;
/*!40000 ALTER TABLE `duan` DISABLE KEYS */;
INSERT INTO `duan` VALUES (1,'Lap trinh web chan vit','Quan 5',302),(2,'Thiet ke nha nuoi bo','Thu Duc',204),(4,'Tra cuu thong tin nha quan 1','Quan 1',202);
/*!40000 ALTER TABLE `duan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MaNV` int NOT NULL,
  `HoTen` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NgSinh` date DEFAULT NULL,
  `DiaChi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Phai` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Luong` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaNQL` int DEFAULT NULL,
  `MaPB` int DEFAULT NULL,
  `HinhAnh` blob,
  PRIMARY KEY (`MaNV`) USING BTREE,
  KEY `Phong_idx` (`MaPB`) USING BTREE,
  KEY `MaNV_idx` (`MaNQL`) USING BTREE,
  CONSTRAINT `MaNQL` FOREIGN KEY (`MaNQL`) REFERENCES `nhanvien` (`MaNV`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `MaPB` FOREIGN KEY (`MaPB`) REFERENCES `phongban` (`MaPB`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (18244429,'Phan Duy Thinh','2000-02-02','Lam Dong','nam','6900000',NULL,203,NULL),(18344057,'Nguyen Kha Banh','2000-07-07','Bac Ninh','nam','5670000',NULL,302,NULL),(18743331,'Dang Thuy Kieu','2000-01-06','Nha Trang','nu','6100000',NULL,301,NULL),(19110111,'Nguyen Kim Tuyen','2001-03-01','Ben Tre','nu','5900000',19110426,102,NULL),(19110365,'Pham Dinh Quoc Hoa','2001-01-01','Dak Nong','nam','6000000',NULL,203,NULL),(19110426,'Vo Nhat Phi','2001-04-17','An Giang','nam','6000000',NULL,301,_binary 'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿ\Û\0C\0\n\n\n\r\rÿ\Û\0C		\r\rÿÀ\0ñ\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0\á.%Ú¼75‘up\Ûú\Ğ\Ò\Ï>\ÕñŞµù‰úXÕ¹l\í\íC3.sŞŸAT†\ëMe,¦ª\Âfe\Æ:\\yj¦\n\Ñóv¤\â=\Şb­Bó3U·P	óZÏ—¨ô\'“\îƒQ\í-Ş‰	Q¬\İ+\r\n\ÌP\ã<TIÁ\0\Ô\Òü\Ü\æ eü\è,…U†jX\îDdfÚ “–\ÅK\'Rôs\îù±Š$H­@¬j([lƒ>´\"†N\ÛXƒU•²Ø«wœ\ÌpsPªª¶kR\È\çi©«|\Ç\"­¼\È\\Œó\éU\î0’t \å1ô\ëK÷\ÊA¨j6]«Le‰®äƒŠoŠ¶5’¸*8Õ·Š‘\ZIp\Ò1^\ÕB\éJÉ?\Z³ml\ÔS|\ç9¦˜ao›š¸\å\ã¥D!\Úrh7\nŠW5wCº²òONGVr3U\î&>g*v<\Õ\ÇGÌ‰k™Xö›@\ÔN‰r\Ä\Ú]7\ÈsÂ·J\Äı°1ö+r§ ó^q\r\Ë\Û\ÜG2<l¥n|qññ/tÛ’û¥Q±ù\î+\ê05œ\ãf|\Î*—,®™ô¶+x¿Z\ìõ?›O\çÒ¸\Í/ş?\ëık³\Ô\äøW§-\Ìc±Áİ¨\ÜÕ‹;m’¶\î¾óõ‰qş²º)³‹KdÁfZõŸ®\Í%I¯&±MÓ¯Ö½sG_/G\éQP\×cj§29÷¬y\å­=E·3V;\r\Ã\Ï\Î\â­\Ë~\ì\Öv›f\×wË\áj¿v6¥hx6\Ç3I)şšé‡\rHİ†©ò\ê!\çık\Ğt¶\Ò?¥y¬ó5Ş´ù9°>™¯N\ÑWm¢j\æªvR.J\Ãp\ÅM»\n*¼\ãi©7|k”\é\äö¨ü\Ì\æšI¦«b©“\â)‚\é²ñÚ¼\Ş\Ün\ËW x¿\â_-p0d\'\á[\Ó9\åñ\à\ã­J†¢_»BµnQg?)¦\î\Í\ß/Z‰›Ş³hdù«wIùX}+Ÿ\'œ\Ö\æ“÷‡Ò³ÀvZ9\ÜEt°ò+–\Ñşòı+¨·?-s3¢;	%gj\å\ÅøVŒ•¯I¶Ş…sYlyoŠ®7Jüw\ë\\\ÔGš\×ñ$»¥n{\ÖDµzTşÅ­ñ\Ø\Ù\ÒW-^™\á¸şX«Î´8³0ô¯Nğ\Ü*W%]\Îú\í­N\Øvú\ÔWe±RG\Â\íP\\ö®c\ÒFf \ß+}+\Ë<E k\Ãõ¯O\Ô	1·Ò¼§\ÄM‹\æú\×L59+6}së´ƒS«	6\â¨l*H©\â¸Húšøg¹\í“Ì¥ºTj»Éª\×\Z€LsU\×TN„šZ”\Ër}\ãLe%x¦,\ë\' óOó•=*‰Hƒ\Ì<ó\Í0\ÎV›5\Â?jj•«°\É<\âüšŠF\'\ØÒcQ\È\Ürx¤,B\Ä\Ç\ËSYª²\Íò\r81\ëR\ĞCU[‰74=Â¯Ö³®§3KÖ¥ Ô¹\Ñ-Œ\Ó\äm£=\ë66*\à\æ¬KušA©:±võÏ–J¡¦­\Çz¥q!’BsU\0r¶{\Õ\èæ‰¡ù›š\Í\ÜzS[JÑ¢‹ÿ\0.O\ÍRª¤±\0O\"³RB\İø(›h\â¢\Ì,J°¨ci.>\\UO´²±\ïLšc\'9\Å+¾„¾g\ÍÖŸ\æŒô¬\Ï0³u«)\Êõ¥blY•\Ãpµ™#a\Ï5qX¯z¥p£\ÍÈ§dR£\Î)<8©#u\îi²L¼ò+H”P¹\ÌY \×=\â\ÍI›\ÃòZ’H\r¸WO\"‡Lš\ã|X›ld\ÇZöp´\ìyxÄ¹5±8º_­vš–³\×\é\\U†~Ü¿Z\íu/ù÷k\è\å¹\ãEXá®¹jÄŸïŸ­m]u¬i¿\Ö\ZŞÇŸ\\ŸKÿ\0…ú×¬\Úüº<`zW•\é¾\é«Wª7\îtôS\éY\Ô:pÿ\0	\Ì_7\rõ¬ó÷j\íó\Î=j“)\Úy©ZL¥>X\àrMt*4\İI³†`@¬X 2Oõj\ÔñmÀ³³Š\İ;Œšh\É\Ú\Æ&\ÆKğ\Í\É\'5\ëZo\Ën•\ä¾_2\ís\ë^³aÅºVuv4£±-\É\é\Ïz‘›\åö\éU®›•ÿ\0zŸ$™®C¤M\Üõ£uG\æ8£\ÌQñ„»lXW#f»¡\âºoMş·Ö¹\Ëÿ\0G~U\Ó–_Ÿ*ô¨\×;sO¸bµ“\å95C¸ú\ÓI4gµ¾cBX\Ü\ÖŞ–ù\ÇÒ°¢\ë\í[Z_\ßJ\ÎkB\îvZ++©„\áGÒ¹-…uQ?\È+%l\íÈ®k\Ä\ÓG\ãWE#|¢¹/I…Z\"\\¥¡\å\Ú\Ñ>y\ÍW…C`Sõ)7ÍzKPCf½8iÆ›\æ¨ohkós^¡\áuùR¼\×C_™Mz†cùU±É®\nš³Ñ£±Ó©;qT\î\æ\ÅYfÛŸ­Rº“\ç¬\Ô\Ì\ÍI\ÆÏ¥y\'ˆ$o\í	0{×¬j’~å¾•\ä “ı9şµ\ÓL\ã¬\Ùõœ\×\İ*»I»¾i·ŒS‘\Çª_75ñ‘sè‘u¤y85j\Î\Ù\ÕFß’y©¡˜¨\â›HM\è^]\Ê\Ô\ï0ó\Îj›^m`)~\ÑŞ³\å+ \í\Çq§y 63\Ígµ\Ñ\Üq\ëMóˆ`sM!‘\áô¨&$9¨#ºQ\äæ‡˜69¤¾nN*Ğ˜m\Æj£)\ê*‘•º\Ò4\ìw`sT%ù€gkxd9\ëT.1¾«p$m\ç4¢`\ÄsUX¼\ZEm˜\Í¢-\É0^ıúT^n\ç¨fn§4\È\ØzÓ±H\ÑT¹\ÍA,Š«‚j.vÇ€y¬\é¦v=h°œ‹\ë7\ÍÖ¥VR\È{Ó„\ÔjÆƒH­õ¤w\n§=*¼.’N*™|\Ç\n­)\ãüà¤j\ä	5°½jT“\ËP3JÂº%š\á”\àUY&=\é\ÒI¸æ¡¸a\åŸ\\\Ó\åÖ‘¶ğj\r\ì}\é\Ø\ÌGšj|¬µ8«\n\äû—\ï\\Çˆ•¦³]\\\0˜¬=i‹Z¿¡\Íw\áejˆ\â\Ä+ÁS\îõ 3š»ó›\Ï®-²º§?Ş®\Æ\é·i\Ùö¯¬\ìx}&ÿ\0½bÉŸ0}kgP\êÕ‹7Ş®ˆlyµ-ş?!ú×¦\ß>\ÛÇµy®‡ÿ\0Qÿ\0¼+\Ñ53şŸJÆ¡\ÕG\á9Ë™Ö›·+R2†j‘\ã\ÛúVi\Øé¾ƒ4\ÈC]a\ÂóX^$\Ô>\×x\à6T\n\éceµ\Ó&•¿\Ö+‡ºù˜¾zšÖ¬\æ¨\Íoÿ\0\Ç\åzÅŸú˜ş•\å~\í@šõ+2|¯JÂ±\ÑE\è%\ãcZs”T\Ç,œ\Ôöv\ït\Â5\'š\å:v!lb›\é]Ş“ğg^\×!\Ûùl:\ãx©µO\Ş&\Ò\á5¶ş3ò\à\Ñup<W\Æ\ßv:Ë³\\ZÖ§\Ä;‹+Å¶R)\åHªZl>e²€y®¸½g¹•wUë¯“\áÇˆnl\Í\Ôzt­\0·\ãµq\Ò+C#F\êU\Ô\àƒÚ©j\ÆôEGº–µ±%ˆş\é­}/·Ò±£o”\n\Õ\Ódù\Èö¬\ç±H\ëô–\é\é]}¹ı\ØúW¥¾İ¸®ºÙ\Å®&uGb\ËI·5\Äø¾\à\"œúW[tÌªH5\ç^,˜¶\ìô\á«C©ğœM\Ñıñ4\ëcóT\Êj{_½^¢øO!|gU Ç¹—\Ü×«ø~\0¸\Åy†\×Ì™\çšõ:0–\ê1\Íyu7=jE\Öı+>\á·5]\ÉÂ³®\æ²[fv¥ÿ\0\íô¯!×¿\ä ÿ\0Zõ­bLY9\Î:×\êr4—O\ÎNk¶ÇŸ\\ú®\â\àÊµ3²j˜¹<ŠO¶m\Ç5ñœ¬úK£FI“µm¶Aš¢\×Y9\Í1nNz\ÕX\Ê\å\É$a>ıi\í2ÿ\0x\Ö|\×p\æ˜.zş™o\Ü\Zs1\Çš­€±&Ÿ,™qJ\È.>6bıjIr`\Õ•£={T†bÀsÏ­M…rò\ÎühšN2zU4b¤w§´»—¦Ì®`û@\ÍDò¨\ÙÀ<SY²E;\äñ\È1ŠlŒ¡\ÎÜš†Iª¬O1+1ü(Œ–b7UGœªf¢ûq_J,;š\ë·$gV\àª.Ö©h»p)\Ï\É$š¾Q6O&™¸n§3µ[v\Ö\â¦\Ã\è\\|\íùj(Ô«d\Ó>Õ´c½q¼ôÀ¤Ke¶“É¨›\ÍMeö•\ìvñd³0\\\nûO\á/\ìkg¬h6wú£•iüØŠ\Ò0r\Ø\ÎUw>y$Œ\àœ~\ß9Û‚r+\ìO‹¿±ôZ_\Ú.4™ƒ…„¯•õ\ê\Z%ó\Ãq®Ş¤)m¸\ãS˜ÄŠ‚)\ZAÚ·#ğ\Í\Å\Äa\Ñ	\rı\ÑX\Z¬ºl\Ï«†^¼Qk˜®2Øª:–>\Î~”Ï¶bqPj7Á-[\'W]û\è\æ­%\Ëc\Ì\ïN\İIûU\Ö3†\ÒGÒ¸\ë¹L\×\Î}ëª¶ÌšXÒ¾/Dxi\Ú\ç!}\ÉjÇ˜r+gRŒ©9\é+\ázW\\6<úÛšL\İGşõz®\0€ökƒğºƒyzgš\îu¬Æ¼sXU\Üë¡±‹xÁ«>W™…õ§\ØÚ´ò$as»Šô]\ámı\í\Ä2C˜À®YMEjn¢\ä\Ï2Õ­\åš$·‚\"\åz\ák\ãÀú\Ò[›ƒ§\Ï\äõ\Ş\â¿A¾\r~\Î6\ZT_k6©q<£!sŠô­wÀº<š\\–cOcd+ƒÒ¸ÿ\0´iR’‹4–sWG\åo†\í\Ü^mÁ\Î~•\ë:^“y~ C\ÈqÚ½kFı™l\ì|Ewup\ìĞ´„¤`\àc5\ë6^\r±\Ñ`X­-\ãNÛ«z•ÔµB…7\r\á¾\nø9&±x’\êá ·^DkÕ«Û¬~ø>\Ú\İ`M$9˜òkMlcTÁÀQD\nös~t\Ç\Ë\í\rls‘x\ÏAÔ¤º±–\â3‘˜qùWy¥kQ][ù7\n	©\ïTZe¾Œ£\00sQG\ZF\ä(¬ù˜\Î{\Å?¼3\ã)$¼¼µ_´g\0ûW#¢şÏºƒ©5\ÑO=3•½A¥u] ñNšD\Ú\äFj•Y.¡db_\Éog¥¼&\Ş4W\0\ãğWÄ»ˆ\ÆZ‘\Å˜p¾ı›M[\è%DÀpG5ñ—\Ç?„7\ŞÕ§\Ô\â&k9›v{©\Ïz\î\Â\ÉÉ»œÕ)\\iwT1\Èp*B\Ä×£c6‹·\ËZzoú\Ãô¬¸~\íi\éÿ\0\ëÒ±š:\"î«KnW]m òÖ¸\í/¹®¦İ¶\Æ>•\Å\Ô\é‰5äŸ»ü+\Î<U2«k½»ùg=+\Í<U6\é˜v«§ñRV‰\ÍIóHH«–¨w)>µJ<n\ç¥hZÿ\0=k\Ñ\èy°\ÖGe\áHG\Ú\ã5\ê¶\ß*Ú¼\ëÀ°yŒ®Ã¡¯G„\r˜úZó*?xö)\ì>Gù\rfM \İZ\êóY2˜ú\Öhİ˜ş\"˜-›×^L>\Ğüw¯Wñ\'üz7Ò¼š\ï™Ú»©ly8‰j}+ı›©M÷m\\şe<;«¶1jÿ\0•{4jb\ã\éV™v\ã*?*øOl}G+\Üñğ®²\Ç?elS…uœÿ\0Ç±¯z‡cR£š\Íd`B\Òö\Èj\'ƒ\É\á}_#0BøGX~V/Â½\ÂM=wt\æ‘,g\å¬ı°ùOO	\ê\İ<ª•¼#«\íÿ\0W^Ê¶i»°§ı–63O\Û!ò&¾\Õ\æ:x?V\Æ\à1^\Ä\ÖI¸\àS…’ÿ\0rŸ¶ˆ¬xòøCV<`Rÿ\0\Â!«\Õ\ìc^\ëKöT\çŠ^\İÕÿ\0„/SnqKÿ\0>¥Á¯`6¨;fš\Ñ\"»G·B<|¨\î\àU…øyu\"\åœf½K\Ê õzmæ“®3Ë—\áœ\Ì>{´\ÏøU\çş{\çŞ½M\à\Îp*\Z¯QS\í\Äy¡ø[·ş^sKÿ\0\nõW´W¢È£q\ÅQuajX`pÿ\0ğ¯×¼ô\Æø~ŸóŞ»–MÃ¥F\Ñ÷¬ş°\Íş”ó+\Z?\0Z²‘\ç°\âº\É0ª²6Óš\Ò5ÜŒ\ä\ß|gk\ãm,´¾bùÀ•=ù¯\ÓM6ö;\r>\Ú(†c\0\0:\nü\Ûğe\é·ñ.Ÿ&zL¢¿BôùMÆ‹o09\ÌjJõğ²\æWG™‰z˜.¼ó\æq‚A¯ñw\Ã\İ;^fi`L·SkÔµÉ·HA\â¹MQ¶© ×—^rŒ™\ÛF7‰\æV_	tûsª\í\ÎEyÅ„v\Öp½\â \ØWšú6ó\×Ş±ş!hgQğ¥\ÜJ›\å\Øv\ëŠ\ÎƒnC\áÙ¼d\İ>Rj;¯ƒw&\"±\r™\Ç\îø)u«\Üyº‚´H§\î\ã­{ß‡ü\r§hv©v\êvÿ\09­£˜û9\\^\Ã\Úh±¿u­Ä—n©iÔºõ¯_\Óÿ\0b»(\ì^)/\Îö8•õ|z|kó`)ô\ÅKö?›…\ÍS\Ï*7 ¾£\ä\Íş	Ÿ{\ã\rCë±¥¨\ëò\ä×¶\é\ßğI\Z+{­NG¼Q†™E{—u©t=AJò¬vš÷\İ*ó\í¶\êıÈ¯¡À\æ¼5>w‡•9]­€µ/ø%_‡´\Û\éz¬Ÿm\ïH>ZñÏŠ_ğOŸh0£\Ùjv÷k@\È5ú\Ï4;õ¯5ø¤¡f-‘\Í<V*T•Ç…Jo”ü²ğì¹¬\Ø\ê@jˆŠ¨s¸r+\êü-\Óô˜\ã]ŠÌ˜5\ÔkVb\Şá‡½R´\ÖO›9\â¾R¶eR«¶\Ç\Ğ\Ó\Â\Æ!…W\åh^:W+\â	~gEõ®–\Îö;\Ô2\ÜMc\ë«\'j\ç§\')]šrò%ªù¤÷\Í,–«\Î:úV¾©§41\ï\å\íYqHd \äW\Ó\ÒwŠ<ª¶¹—¨[\ãEf\Éyg­tm\ZœƒŞ©][Œ`\n\é\ĞÀÅµ€ù™İŠºb\\¬:\Õi”\Æ\Ç\Øİ¶\ã4€\è4M\rµ»Ô‚5=AÈ®ã§ƒõß„\í‰tÛ¹&°Ü©qn\Ç8\ç“ú×º|9/®U‚³…V§\í Ã¬ü-\×\á•W	n\Î2;õ¦•Ùœ\åcÊ¼¬\Úx\Û\ÃVºœ%JL£ \n\ã¾/x\'ûOF\×’P@>•…û&\êO\'†õ)>D§nOJô\ïJ³\æP€\×Lo¡ƒ÷–§Á¾(ıœüQ£\È÷–\ßk´\ÆAŒd×š^i×šl­\Ü€òM~€ø_\\he¶Ï˜¨H+\\\ßÄ¯\é~.\Ğo£\Ê\ÔIFÏ¥wS­Ü‡‡£nEhÙ·\ïU\Õtùô]Jk;„1\Ëme#½Ke\'\ï+¥µ$}¿Mm\Ä\Z\éc\'hæ¹6Aò\×D²¢¼ş§b©Í¶\Üı+\Ìu\éL—šô\rZ\ã÷$Wš\êón‘¾µ½=Ìª\ìg\ÇZv}«6\ß\æÏ­iZ!<¹\Ù=*\é¾Œ-º\×s	ùk—ğŒ>Eœ@Š\êC;×—/ˆö\é\ì$Ö±§û\Ç\ëZSIÖ²¦Ï˜MZ÷0<Pûl[\é^M3ık\ÔüY [6\\sƒ^S\'\Ì\Ç\ë]4\Õ\Ï/¹ú<¶\è’n\ì*9.\îƒÚ®¼9<ô¨$·_Jü\Ù4\Ñõœ\Åqpriñ\İc­*À¼úSÅ¾zVr\ß;q¤faÛŠ–8v€z\Ó\äL¨\ÇZ”.bó\Ï›)Œ©â¦ˆ`dŠ\Z1X1\Ç\"¦\0¸¥˜«db£XCŠ‘¡7\nTQ\Üz\â¦\ÚUh\"B\ãÖ«O‘\ĞU\Õ\íf4C\ãÚ¤_½\Í;¢\àT\ÛphlE†÷8ª³0\çšòõ5]¤æšˆÁr*)\"\Ü3Şœ\Òù¨\å¹\Ü1O”Œ™\æ™3â˜¬s\Å#|\İjYW*\Ü6:\n©#\Z»u†\ÇX¯\ËU\È\ê&›)µ¼Šd\êõ¯\Ğ…¾#MoÀö3)|°§\Ø\×\ç\Ş\ãE}Kû/ø©®4Y4\çl˜ù½¼\rK>S\Î\Ä\ÇK—\âI¶]7½r·«\æ©É®¿\ÅV»¥\rz\ä\ä„ò9®\\_»&uaŸº‘š<†\Éõ«—wQL¡N:\ÖU\Õ\Ç\Ù\Óæ±¤\Ô“º¼IJ\ÏCÓŒN–.ùJ€}+n\Æ\Ü\\ *k\Ï\á¾wa†$WW£\ë+c\Zù’c\ëY\ë-\Ít‰\×\Ûè»£Ry©.-cqŒS´Cq¤¾I’r\Ø9ŠPº\Ã\"°<æ½Àš\Ê\Ü[ªnE|\ë«jm8\ã5\è?|N‰t±;\ãw½l¾³…[\\òó\n>Ò\Ï’a‚zW\âË9>£\×C©j\égf]˜ô¯6\Õ5\å¸i	9¯sY8¨&„£;³‰ñ‹Vry¯%Õ®V\Öñ£cŒñ^•\â¯-¶\á¼õ¯8Ô´\Û}aŒ\ßhP\ß{“_+8³\éÔ¯¸š>¹öY\İò\çÖ¤‹|›\Ó+\Ì.¶\Ú+&\àY{ƒ]G„u¿1UŸJ)K•Øš›hk\êĞ·\Ù\ÊcµpÚ€š\Î>QŒW¢j\Ó#E…\ä\×©+e·p½«ê°²\æ‰\âÕ‹OS›R;±%O%À\Ø\Åc\ê\Í,wŠ}¬\Ò2.ñ\Â× `2\êmùÀ\ç5E„²±±[\Úı¥\ÎN#\ëF¥g\å[#\å9ô\ë@?\Â\ÍY´]z	d~$ùZ½ã†­¯ÃnF*¨ÖŒr}\Åx®3Û¢´ƒ\æSœš\Ëı«>+„	a&òğFj\ÒSzmû(\Îd³\Ön1…2`^\ã­hEa;9t\â¼\ë\àZü?Fœyr\Ü1³Ö°¾\"xá¯¡‰şAÖº\\n\Ì\Ö\ÇAğúù–[™\Ú@7ŒŸz»®ø\×G’K™¦H\×9\'u|ÿ\0ã¿Š·^Ó­\í\ìF\×~KW’ø‡\âf¯\â4<Ì«\Ü\ÅtBƒÜ‡^÷K_¼C‰<m}ymş¥Ÿ\Æ3\ïY:QXBbÜ’O>µ«§H\Ù®¾[+Sš”´;]3µn–ÛŠ\Â\ÒF\å\\÷­¦ÿ\0V3Ò¸^\ç£}\İboÜ‘^u©\ßk³×®Wh8\Ã^1iuÒõ9«J\ÈX8\Ík\é\ê\Ï2ÜŠÉ¶\äŠ\ß\Ñcó/cOÆµ©±…-]\ÏY\ĞSm¼@ö­¶¬\í/Jv­¹¯2[\Õ=ŠÓ·Z\Ïy7U\ëƒÁ¬\Éj¢L\Îc\Æ>\Î\ßJó	$!\Åz¦ı\Ë\nós·q\ÍvS<z÷¹úl\Ëò†¦ùJ\êx¤…ŒˆE*±^+ó£>¬‹\Éô\éFE$\Ò•\ÖnÔ¥©dÛR)6¦£ò\Ù9\Ï”H\ç¥f·‰>S\Å1±‚;T˜cšyS·46\ÆD\Ø\Å9[a\ëQ6F1I»Ö•Æ‹\Ï\ãK\å†\àTi ¤†Pdü)ŠLd–\å;Ui¥7+T\ä_—\îÒ¹šeF“‚*»7ÍŠ³\"şV_½š{—t+t¨–2\ÍRÇ‰\ê\ÂÃµi\Ş\Â\æ(\\FYP’O+­jÈ‡$\n¥qk\Ó#Š|ÁÌŠ¢p\İ\éù´\n¢œ\n[m@\î6v\rP¿İ§\É\ËgZG\Ú*Ğ®C4ÁHú×¯~Î¾$M\'\Ä\â\'m«&\ã/—gšõ/…\Z#¶­ùÛ†«\ĞÂ¾Yó\Õ\Ö6>Áñ5Õ¢Æ­¼eR+‘™¢xYÁâ¥¾Eº·W•\0À®^şùmÕ–);\Ôc\'\Í&^\Z&Fµ¨n¸(š\Íó:\îlU{Ë•YF9®?\ÇZ×“¦\È`˜£\ì8#Ö¼ˆSu%cĞ•NDz~$\Ñ<>\ß\ŞÄ…‡\0¸\Î\ê\ß´­Bf\Êú&\Úp\0q_\ë—z¶¡$š¶©9\ĞŠúöeøM\àˆ¼„\İIı³.\'\Ü*ú(\äµ99‘\æ\Ë0‡7)\éñ£Gÿ\0-	0MzŸ‰>\Õ	%»z\×\É:§Š\'øk\âk­\"\íÌ‘D\ÛQ\Ï~kÕ¼\ã\È5{4xd\İ^Ul4\é]IÔª)\êG\Õ\\\Ü|\à\æ·<$‘j\Ğ7û@Vnƒj5-=İ†s]w€tRuS\ÑXv¬p\Ñı\â±U\í\È\îz7\ÄI.!\Ñ\ã–2\Ø\Ç5\ã\×^\"h\à\ï\ÏnM}+\âOO\Â\ÒDsªq_|R\Ô.¼&n#x\Ê2“Œ÷¯SJnhò°µ!(É­\Îc\âÍ«i7>p«§µx_Å«?‰^X\ïE\ÓZ\Ã:‰b‰_\æ\Úy\æ­hº\Åç‰¼kq|\nY\Ã0b¡Á«_µ\Õ\İ\îµ\â\r2\ïM¿e³ò?‘¸\Ó\î`r\è8óTG=lD¢ô0şxûYñ\Å\í¾­3O\åôf\' \×\Ó>Uò÷\×\Ê\ß\0t³ı¡s.$`»™\Çzú«Â±´0”n¢¾J4«5\Ò\Ã\É\Î7gN\Ìò0=ª‹Y•¼\Å\'#œU¥Œ¬y\íQH©p»D[õ¦§)h¹jqº\í½œL<»vld\×\'%\ì±\Ü\ã\Éı\Şx\Ü\ë\Úe\ìctL§×­s-FÙœ\ÃÒ¾’œ”¢y\ÍX¹n©\ä†\Î\ÂÃ‘L\Õš\Ívœ\éUš\æ>3\Í6óPÿ\0GzzV¦mFÍ°dóŠ\ç|U¢\Ùx¹\"†ş1!l¡oZ\ÔK¿—\æl7¥6\íVH¯\Êqù\Ñ­L\\nq\"\Ò\ã†$µcj0\nóh\ß2¤m9f\Íz‰<\ÈaÌƒ21õ¯ñ\çŠ±m®Ÿkq]T\ï\'¡”½\Ó\Ç>$^ı«^xU÷¤Cš\äzU‹Û–¼º’f\Î\\æ ¯bŸ\Âyu\İ\Å^•«§õ¬¥\ëZšsc\'ª#J\Ühò\Z{\nÖ™²½kG?w\é[2}\ÏÂ¼¶µ={\ès>\"˜3\0;W;”ó].¸ÿ\09®]¿\Ö­v\Ò\Ø\â\Ä2õšüµ\Ğøb?3TO¥sÖµ\ÕøEöŠØ§Q\èUz®¢8E\\i7}*¿\Ë>\ï”W›-\Ïb;N\Ãk&\à…\Íi\Ü7^;\Ö=\ãuú\ÕÀ‰H\ã<l\á£#Ş¼õûık·ñ„¤·\ãŠ\â™~c^„6<lDµ?Ob„F	­3`-SJ\Ûj“\\rO¥~X“>°³öpZ ™‚\íPµ\á\É\çJ\âvnA4rš_Bè™Ÿ#ó¨$V\\\æ«Z\Ê\æ@3W\Î:\Öv³È¡P\İjwQ·Y˜D\Ô®\ç¥&.¤s|¢£…—q\İÖ¥fY­EörÄ‘RPŒÃœt¦\Æ\å[Šw”ÁqNû1\\Ò¥’]V-F\ë»4BÃƒVUU‡J‹Øƒ&\áN\ÓT[-[÷vŠa,¿•dXcŠ×™Z Cp*À‘\ä\ã*\Ç\ê*h\ã‡À\Ì\ß.EsÖ‰­İ”µ­\"G\åsB¼l1·£›Rnsÿ\0fg\Ï8¡´ÿ\0\İ\ç<\Õû…\n\Çm$7´R\ÎvI±¨ª·•\â·o4°\ÌYzÍ–\Ü}\ÜsZÅ•r¶Ÿ\r\â\äóW?v¾’ğÎ”¶>dS\ã‚Ex„ô\Û%¼I®€“…¯¡ü:\Ì\Úz•‡ÊŒ(\ÇÚ¥h\èD½\çbÎ§®]3	…\éŠ\ç\çó&\Îx\Ío\İO3Y\ÒH­\ĞW,Ş§\\\"¢´9MB\Å\Û8®{Yğ\ÏÛ´ùBŒ\ÈT\à¥w\Í\n\É&*¥·\åGS|’Lªò±ñŒ<>ÿ\0\Ú\Ò[Î­F\Ät¯^ø\ãK…z}Ó™™¦œcj\×i\â\Ï\é~%ºó&Œ,½\Ù{\Õ?\á.)˜\ç½}…\Ê\nlğ\å„|÷8/jK\ã\ízk·\Üe\æ½C\á?‚\î,-£f\ì€k¶\Ñ>\é6ñ¥\Ôp©“ny\ØøK\ÛhU\n3\ØW‰˜baUhz\Øzn™\Öx~!g`¡\ï]O„®\Z=Q=\ë\Ò\ß÷X\Öø?H‘¯\Êq^V\ãV/%\È\Ïv\Òf7Zzn®\âWÁı\Ç’\í”MŒ†®\ëISª/CWC/<\×\İ*J¤Shø\È\Õt\æ\ì~{|Uı—\ï4V‘´ò\Ñ,‡;—ŒW„\ê_õi¤òî¯˜\Ç\Ók1ü\ëõ{\Ä\Ú\r¾©b\Ğ\Í\Zºõò?Å‡÷šM\Ü\Ïh…\á9\Ú\0®J\ÕjĞ‡©BJ¶\ç‡ü:ğ%—„[[bI\å\äõ¯h\Óô3hk€ğ\îŸ5¼Œ÷kç¡¯bğ¿úe™C_1VN´›g³È´9©\Úkf tª\ísÔ•\Åvš–…µ¶óŠ\âµ\0-ò„\à\ÔF.&»¢”÷\É\"0l\×%¬LPA\ák\\NC“Xú”‘,lû|\Ç\Ï\ï\ádùO*´l\ÌË=›\Æqı\ê‚iš\Í@?<‡ªúTr\êMú\Æ\Ø?»Ş²\æ\Ô!ûYw—ŠõV§\íJ}\Ò#F?yj†¡vL(Zb²¢£\Ô5H`%£ù‹{\Öõ÷œ¹oÎ¬—{¾%ñ[\Ê\Å\å,»x¯™>,x\êÚ·”‡(¼ş5\ì_5Eµ†Fß€ \×Íº\Ç\Ú\ï%—®\æ&½45¹Á^e>z\ÑO ×¢y\ïQƒ\ïV¥\İ™Š\Ó\Ó\Æ\î\rg3ª\ç[¥±ÚŸJ\Òy˜«zb²4™\Õ\É\éWn®h\Ø\î+\ÍkS\Ò9mnS¼óŞ°\ÆY«KU—sş5–¿z»i­>£÷;U®\ÓÁğ–“}q–ı«\ĞünV\rØ¬ª3·®w0Ÿİ¯®)òeG_Â¢‰¿v=©\í 5\Ã%s\Ğ+\Ü1e&²o›\ËGc\Ç\"´§~8¬QÙ¸5q2‘Àxª\ãÎ¸l—5\Í\×A\âL	H®~½\Z{M}O\Ô) 5E¡ö­_õ•F»«ò¨\Èú\Ã5¬Õ¶ú\Ô3Z\í\È«4{“ sU\ÌmŞ«˜«™kIO#|Â¬4F˜\Ğ\äVw\æJ\äg\ëU\ÕwqW$·fµ\Z\Â\ÊÃŒT» N\Äj»x§¬[\â­6ô\æ£[l*\Î\å]\ã¥¤®)Z3·Š6ŸJ\ÍÈ’·Ì®0y«±\Û\Í1a.\Ù\"­G8¬œ‘-\æE\"«I\\zbµV\ßnj9m‹¤óş_<S\Õæ¯µ¶\Ş\ÕDœSS&\å9£,8REnƒŠ\Ö†¦\Én*¹€\Ì§‚MD\Ğ2\ç©\å…\à\Ó!ş”\\›£)¶‘Œ\Ö|–\âW\ËŠŞ’\r¤…UFµô­¡\'r“:Ÿ®›%°•\È,3^š\Úü·0ˆ\âŒEñ\Ç\æ¾±ÄŠÇ ®º\îğC	®\ë\èo¶\îXº¾\Él·Ö¡†ù\ä“\î\äV<,÷“*&Mz‡„|\×1¤\Ó:\Ö1NGD´G7onòFdÁ©\Ş/œ6“^®øjKR°Ã¸cÒ¼\âkv†é‘\réŠ¾Y^\Äs+¡\áÙ®Œ<ksÂ¾¹›\ç¸8U9\Åu–z3\Éf%D\É\ÍjX\Ìb]Œ¸#Š¸\ÂLr+˜Dj–ğ§\n1Zşğ\Í\ÍÁTe²}+£ğßƒe\Õ&I\0Œ3“^“­Ÿ†l\Õ\ÈU rkÑ§ƒ”÷9ªb£L\ç´?\0Ê»|\Õ\Ûßšì¬´\Ø4\Ì\ÚH®~o‰\Úg–G\ÚH\ë\Íp~3ø\ï¤h0»-\Ê\É(×·‡À\Â\Z´xµ±S©¢>€´¾Š8C;ª/¹¨.<e¤\Â\Û\r\Úô\Í|\âOÚ—S¸¹•!»a	<®&o\Ú\ìL]\çv9\ÏŞ¯e+ly–?M Ö¬µPV•‡Ö¹¯xn¨”Y3ô¯t\Ú\â\ëB‘Av\ÚO­{¯\Ãÿ\0\Úÿ\0Añ^-.\'X¥+·\ç=MDé©«3JrtŞƒ<}\á˜,\ÛÍ·\0s\ÈŞ®ø.3 ‘Úµµe\Äs)‰·E!\È=kj\Ç\Âr[\Â\nt\Û_3‰\Ãò\ÊñG¿F·:Õ”µ\İ	\Ïzó?i´²u\ê+Ö®4¹å‰”˜\Õ\ç\Z\ä\Æ\Ş\é\ío£l|¼W›(´\Îø\Èò;\Éwo¶y®z\ëZkw\ÚOl\×e¯Â¶ó\Ë\Ï\r\Ğ×•ø’\á\ÖW¶`õ\ëa*\ìv©©K’ÏµÜŸºJÂ¾ºI\åVf\Ú@\éš\ç\ïõF3¬„ş5\n_\ÈòÍ´\çšö\Ô]<\è¼Å›9ª:\Ô\ÑÁjI`\0ªV÷~\Ğ\Ùµ\Èø\Ã\Ä?gµ]şXóWİ“7Êµ<»\â\ç‰[³@\Ùş÷5\åÃ®:š\Ğñ£ı£¨K7PO;W±E(£Æ©«Šv\Ü.j=Õ½Ñ\êĞ±û\Ã\éTwVš\Ïz\ÎGU·§¾Õ©5)°ƒ\éUm\ÛjŠeüß»j\âµ\Ù\è^\Ê\æô…¦ª\Ñÿ\0¬¥™·H\r,#q\ÍvEY\\¤œ;có^\áu\Ûf•\æ¶q~ñ©¯Rğüa-•\ÍQcz?õkJ\ßt\Ñ\n)¸®Vw•&\éXÚ¡\Âû\Ö\Ä\í\Å`jòTŒ¤p$\'\í5‡ZZ\ä\Ì÷\'<\Ör\×|4G“VJ\ç\êJ\ÄÊ¾µŠsÒ´¾Z†\ê5\ä_“h}aV5óõ‘\íâ¥„c&£•‹6=*n\Z\İ\ÏjcKy\ÍX\0µq(fašq);“­\ÒsŞc\Ü2*‚ü½:Õˆ\çù}\êd‰d¾[t\íNHzz\Ó\Å8\ÍòŒk6“»½g¤2Q“NF\İ\\Ò¸\\X\íöõ52€´\Õ4¼\ÖL–L´’v¨\Ù\Ê\à\æœdİŠ\É\î@\ÖVnµh·\ËU¤ –\È2E$Nnõ6qM	\ì1š“v(o–¢f§v@÷\Ãcµ,¯s2F‹–\'£\ĞøFİ®5$UMtQ‹”ùK\æ±\ÚøÁ³¥Š·–A\Çjµ\'€/o¤\\+\í\Î:W¼øÂ±6›N™\àu¯D³ğ™Áò¥}rù4˜\Ö-@ù\çÁ\n\Î]Ñ± ó\Å{\î‡\à\Û]6\Õ“\ætVúE½’\â(\Ô}I0\Âô\Åzt0<«\ŞGlw>‘0¯4;I‘—\ËZò?xu$‘Ç†\ÎkÚœü\Ç5…®Y\Ç2–\Ít\Ë\r\Ü\æ\"g\évf\Êİ¡t\à\Z»§\èğ\Ü\\”u\çŠÙ¾³‹\Ï8¨­\ÂÚ¹\ÅDhF\æ¾\ŞM¾Ÿ4Vvj¨0Tb¾rı§~6O\áv‡Lµ}³¸$¶{W².¨q¿ñ\ï\í•\á\Í[V=^\É‚%;°kĞ¥dô9d¹µgš\Éñ[V˜0{\Æm\Ü\à5c\ßk—úš“-\Ï\rıæ¯/¼q}¦\ÌVB\ê}1U›\âµ\ä¸@Ò½>].s¿t÷+¡l™y\ï•H\ê7U\í=#ş~\ÃÀ«Å¤ñÚ‚–vbIü*?¶N±’p¥b7=?Z\Öô\Ô\ÈIÕ½9\æ¹µÉ­õå´¸‘dV\Ê\í5\Ã\\}¶ş@tK\ë^\İû>ü½ñFµÖ¡6\Ùşñ¡\Ú\ÅF7gß¿³¾±s«x\'E{¶-pñÅ5ôU³\á\Ú~•\â?,\ã\Ó\Ú\Ò\Ş„qF6ª¨\è+\Û!\ì\é\ÍpN*[›)8½\Å\Zœ\ã&¹x\"\ßÄ–ş`gNFtŠ\Ä\ç\ë–ı\ÎA+™\á¡>‡Dk\É |F\Ğ\ï4¸å”«.y¯µ»‹§vX\çŠûG\ãeœwZl’¯*’E|q¬3}±ø\êk‚V \ÏB««3—O¹‘\Zš=>X#Ú£w­n4cñ¦mù±Z}r\Å}W±†m\îù\n?^qñÃº\î¡j\Ñ\Ú\Ú;\înq^\Ë\äü\Ü\Z³~¦ˆ\æ*.\ærÁó \Ëğ\×\Ä\nyÓ¥…@\Ş\×aûú|\Øÿ\0v¾\Èò\×Ú¢{4s\Ê)úŠ\îY\Ô;\ß\ÙWw¹ñ¬ş\Ô\á5¤\Ëÿ\05I´»¨óºU¯´.4›icô¬\ïøElnù–q0÷Z\ÑgTº¢%•K£>Aû,«‚caø\ZÑ·‰†Ó´şUõªøH‘~kqş\ígj_tIh³OªŠk6£&Z\Ë\êA4\"Â³\ï¤Ê°>µô\ß	t¹\ì™ôª7?,.T²\İ2g¶3[\Ç‡İ²\'‡«mœ$l·\áR\ÛH¯n»ıœÄŒ|‹\ï\ÃQ¿gR |»…aÛŠ\í2„Ö’<×…«\Í{s¥©k¨ş¢½GDGµCkğ7\\´•²°5\Ò\Úø\'S±C¾\"GN+)U„¶g¥JŒ¢µ!_»L‘¸5vmö5\ÃBß•g\Ü\Ù\Ï|\ÑH?\nÅ¤ög_+\ìT™+Ö¤I\íŞ·\äÜ¹\Ìl?\n\åõ\Öm­@ªŒY„\Ú8\rY·\\z\Õ5«Zı\ë}j°]µ\èGcÆ©«?TV\\sHdY:\Õ6cDly¯\ÊyO°inXuùxªrKû\ÜT#6@ª²Gód\Ôò u7\ÈEc8;‰\Íj\İ.\Ü\Õ·,r\rTb\î@\ã<M»\éP¨\äŠFºXºšRi˜¯Òˆ®ƒ|¢«5ôR/<Qf\Êf>•‹@hn!E>9÷ªrK‰p:TĞŸ›­e(’h6 Ğ“†˜\åªò\\*qkŠ[“r\Ó\Ì3L\ã5Z9ƒv\Í;xô¥\ÊÀŸ\í½*˜P\É\'\Ìj“¿J\\­‘b\ÃH*)&\Ú\Õ\áÙ©’H[Š¥$iª—¥TmAŒ\Õy5%-Á­I\å4š`£5\éŸ\n4ñ{©D\Ş\â¼bk\æo¸3^\ÕğÎ¸¾\ÜÃŠõp4\ïU\\çª±¼#j±\ÙÆ§Ò»8ÀHÀ\ÉøofZ\êc¯»ŠI$yÜ•meùª\ÆÜ©ª³e£!zÖ–33¯$XÁõ®jú\èH¬\â¯jšmüÄ”<W+¨\Ø\êp\äm$VMjkdj-\å\Ü»Ÿ$Û³i—\ÖwBb_9¬››§Š·“\Ğ\Ş#\'\Ô\Ş7`+‡ñÌ‘jV\ï®õe\Ã]\rÔ»\Ëó\\G‰,õ¶eµ\ãÖˆšXù\ãOÁKY.¤¿\Ó\â*‰hÀ\â¼/şı\ê\ÍÅ©@½«\íÿ\0èº¤Q‘sn\ÇŞ¼“\Ä¶’öf‘À\ÎkÑM,a(#ƒî£‡5©¦ø{°\ÓnF:WZÚ¦¨û’\ßMr[§\Èk£ğÏƒüe­J†-:HW¹e\Å\är£\Â\ß\ì«^\ÛO¾øe§\Ú\éºx¶¶ˆ$j09ª>ø/~Ñ«jEQ± W¸xCá­¢ <\09¨\æ)htŸ4¿µ]oaò/½­t‘AS´\×1\á\ÛKD¦\Ìw®úÕ”Æ¼\ÖV»3n\Ç;w \\,lÑœ\ãµró\ŞKo)‚PUó^¦\Ò*/¸\Ï\Z\éğ\İD·`H§š\Ö(c\Ãş+ZO6›1sk\ã\ífÉ¾\İ\"¹\ÚÀóù\×\Ü\Ş µš|ˆı\Ôó_|Hğ´úN½3+–†C\Õ\âã–—=œ–§%²©\å\ÅAös»Eh­˜Q“’jO(yxÛŠğ¶=”f´eq\ëK\å¹<\n¶agÖ®BŠ3S¹h\ÌVHW\ç?7ÒŸ\Z½\Ï+A¬a‘²\Ã&®Cb!\åFf\ä5¡Ÿo¤¼y.Ù§¥ª\îlœ\n\ÑfùH\Î\rf]H\ëû°x¨zŒW] \à\ä\n\Íhä²:V”{š\ßim\íü¶\äÔ•\Ğ\Êk^µ\"F\Ì6õ­i!\İ8¤\Ì°\Õj\ÆBXL­òœfµtû`K¶i$…\älW\à‰á‡µk©¨‚\â\Ô\Ãó/\"©|\Ó6Ğµ \Ï!Tj»2H«U$º‚„JqØ‚\Ø(š|\Úl·VJÑ±hä˜•9À\æ¶\í\æF\Æ2j*¤vœ\"q3x^\Î\áp\Öiÿ\0|\ÖU\×\Â=+Rÿ\0YnW# ¯Uk\äË‹M4“râ´e‰§´iP„º¨~Íº%\ÓVx‰¬¯\Ù]<\ÌÃ¨°CØŠúe´\Ôh\É\Ï\áQµ˜@»)g˜˜»=NIà©µs¡Â¶\Ö\é1ÚbY&RGj™­Ñ—š\áf÷\Ö\ÆpnN5±ózf­\Én\0b£¥P‘ºú\ÑÙ÷Ğ¥{¹\ä^N3Ml\í\'=*\Å\Ñ\Ú³Y\Â\ä€\ÃUXkb‹¡\ÏzÌ\í\å`qW.#/\Ïjdv\ê“E„@\ÌÇ“À§Y\İùr\í\'“É¦<\Ë\Ï5F=\Şv\ïJ—oy\ÜÖ…´y³XbŠ­{\Õ\Ûkö\nlW,\â\Éh\ÛsŒ\Õ´‡&«É¨«uz¬u\Ãrù5Š¦Ùµ/›´‡½Cıª‹‘šÊ¼\ÔQ›óªwWI\å†-OÙ²›e6û\Ôj€Û§š\æd¿G4‚ü·n+UDgI¥òò\ÕN}@´Œ7V;]|Àc­2ù%w£Ùˆµyw±sš¤š™\ÅA\ç£\ÅSYŒrWDi«l+-½\Òù`°¯lıõi®5e¶o^s^\rc ¸2pOZú£öiğTvÉ¨¸°\à×¥ƒ§ûÃ’³²>«ğ\Ê\íŒ)\ê:\×Wr¾~\İë«…°+\ê‘\ãKroáª­\ÜÓ¦¹°)\Ïzfw3o®|¥¬™eY¸\'­\'‰oª±\'h\ç\×^.h› ñJL\Ú\'M©iğ\ã\'ÀxŠ\Ö%\íÀ¨µ/K/Ê£5›\\jÙ;\Ö6‰…p¯¸â©µÑ…o\ßi\ì¼\nÃ\×$‚)\\\ÔY>\Ëy&EtôjË“\Â\Ú1sa\ç\Õjfµ’>”¢9}*\ÔÌ¤\è\Z,-”Ó w\Ú+F\İcU	+\Zö\ÚG»62+gM\Ó\ÇqO™K§Ye¹k°\Ò\É\Ûô¬û%\Çz\Õ´qÿ\0Z\\\Ä\Ü\ê¬o(\nk¡±¾%—“Šó{[‡ITf»m\ã\Ì\Æ\ê¸=L¤u-\"È‡<q\\Ö¬Íµ\Æx\ÅmJ\ÅWÕ‹ªc$\×I™\çš\áòmec\é_+üV\Ôbº\Ô\Z4=+\êŸH°\Ú\Ì_¦\Ó_xòû\í> ¹\Û÷+\É\Çÿ\0õğ?h’:Tm!\éS\ÍD™ó:ŸBˆ\ä\Î\Ê[v;†zRM’ÀcŠz\áp{\Õ]’<`­Oö¢c\0zUx3\"\çµX…FˆÏ¥f\Ğ¹c]­÷V¸µÜ»•r)\ÒB\ÌKƒR\Û\Ì\Íò‘€*@u½¨\Ü‡Ò«ª†r?\Z¹r\Í\åñM±‡vñHwm\Î\ÅL\áœâ¶¡Š\ŞD\0i\'°‡\Ë8©\çBzjs¨fzUøY7#ŸZ\×LVn9«·š2Ã°¡É¨“CN\å‹u~p3\Ø\Õf\Ò\0­Ÿ,ª…nµ,v-· Tó!\İöºtVví‘–4\ë{VÊ0s\Å\\[\ä/Ö´¡²U\íÓ¥sÍ¢HJ·—‚yª\ŞQ^jÜªÛ±P•v<\nÈ’¥\Åû[€€dš—\ÌI£Px\"§kÔš«=©VÀ8§\ï\"^\Æ\ê\ÌÊ¼\n|w„.Oz%Eó8&\æ\Æ+Õ”N+\êY-ß 5›p\à¹Á«S\Ì!‡‘X3\ß‹\ÔĞ•Æ\ä÷÷\ØóŠ\Ëó”),i.wI\ÎkúVfÀ\'¼b¤ú’m89\ÅP—V9 p*ƒIòMS9f\ç4r–j\Ç?™Ş¤İ´œUH­O\æ\ã4Ä–’_Qš$˜ù|Öª,ôË‹±ş5…®\Í|S85E¯\Î\ìd\Ô\r!fbj\Ã®1\'”\Ù`pj­\ÄÌ¸\â³\ì\î\nœ“Š’\æ\èo\Í7r\Øyn˜¤ó¶÷ªşvFj4\äÖŠ:bó\Ü\Z™%ó?Z€IòŒõ¨w\în”¹Dh[\\Fnô¨5&T!’«®wJ}\Ã	6®sŠ\\ K¦\İ\È\×¨\Ø%€¯¿~\égMğM¶\ãóH¡|1\àM0j^#³…€(\\ù\×\ègƒş\Ïc \ÚÁÀT½Œl\Ï;¡\Û\é7¾L‹\Ï\ØZ\ß	c\Îk\Î#¸ò\Øñ]N™~\r°Ö½´y\îm\İ6\ìñWV\àcŠ\Äûu9/½\é™>0·7D(8\İ\Åy¶¯¥ù2zW¦j³‰¤9\Ë\ë+5Â¸ãŠ‡©´Y\æÍ£¼w\Ê\Ü\n\ï4½8\íTt§]i\é\"¡\î½\êõ¼¾T{s*yM9cW±H\ä \n\ç\æ°W\É\Ç5\Ù\êQ‰˜\Ö;ÚŠÍ«™\ËKeƒ‚¼SE˜ô®ŠK\İj´–\Â3\È\Å@\Ê\é\á°zÖ­­Ÿ—€EKf©\ĞV„P\Ü\n%’\Ú\Æyâ¦A\å\àS\á‡4ù­R}«C+ZÇºE5\Õ\ér•T|\×=fƒ\0w­\Ë?İ+H\î\'tr\\y\æ±5yv\ÆN{U¬–_j\Ê\Õ$Ü¬=«¢&\'\râ¹·\ÚJ¾¨k\ã¯Ù‹}Z\å‡v5õ\ï‰$\İŒ	¯’ş#1]ZE\ÇV5\å\ãş\ØÀüG\'o!|\Ó)QÖ›yk\ÏzG˜1\çšù\Ã\ŞR\Z\ç\å\ÍGoJÇ’EO~q\à\â­\Ãk¶=ªy¡šn$*ª\ÛA\Æ:\ÓM\Î$*¿s5\ã\\&\ì\È\İj[X\ÃF3Ö\\[p©\ã\ÛQ\Çnø©–z\Ör&å˜•\ÆENö\ë€…*¯\ÙeU\âµ`\\Â ŒšÍ°\æ2/O—g\Ş\ïW­ea\Ç\É5_Rc¿•UŠòE]\İ*9n7+›pH-òOZeæ°»98\Åf-\ì“9©…¬s`\ÉK”z’\Î\Ã\åV\ê²\É\Ú\0\í\\\ÔÑ¥¶L|S\â¾vN¬¥5\î\'h@\İ\êôf\È\æ¹\Èdfœ;œıi÷Ú @¨\ØúVr¦÷›ò*ö\ÕIdò\Ó®y¬»]\\°\ÃäŠ°/FùFj9\\¤\Í<ŒñÖ§’Üº©\ÅUûW\ï*0*\ì:²ŒŒ\n¨Á\İ\nQ\ĞÖ™—pê¬—q\ÇZ†iw>\âx5^F*\Ç½]\Ï7¨\ÍJbc#Ú°e‘Wõ«\×÷%U«Ÿ¸ºşU¢…\Å¦º,\ŞÕ—qódšr^¦M2²\ã4şm‘Bo˜;T+€Ş•bQ¸3U\Úó\Ç¡\ËA–|°#\ë\ÍR{-°zÕ™$òW$\ã5p\ä\ÊNhµ\Ğ\Z‘\Ün\È&‰\Øy]k)g>µ8œ2\áªyD\\,kŒóY—\×m=ª\ÍÒ«\ÍA\"£ \Ü3ZE\Åt˜\í\ÍD÷wZ|\ê¨8¬şŒj¹uUdŞ£škejY9©¥—j\ç8¡\ÇR9„’\\(\0Uc|wb ø«m\'5\0¸±Š| ]k·*?µ¹l\ÍDòq\×\Í\êœğM zGÁı@\Çâ¨†Üœõ¯¸|¨	,\ãRAm£5ñ—Á}Î¸7Î¸ÁÂšú“Àr•¸PX\ã<\×v\ZVLn®zÕªùw6+b\Ö\ímS¬(X(\ä\ãŞ%\Ç šö®x’¾\ÇDÚ¢ö<Ò®¤+™6\î•n;‚«\ÍQ65\Şñdl\Ó$u“­f‰1\Îi\Ñ\Ü\Ü6jYH\á6®EPi:ŠÒ¸ù¡°\äm²i²‰f\Ú\Ã©´i!=\r9\Î\å8l\Ö%\â\Ï¡•3XÈ¤\Í=¥[¥\Õ&ŒqŠm›™\ãŒš»å€\â²+˜Ä†&\å\éZ¶¸İŠl\ë\ä°R=juXX¹‰>®)\Æ\Â\Ö[pªª\Ó\Ş@\Ã\0V$šş™•:¥¸#±U‹MsK“‘©[\È=€Öƒ³{#F\Ş\ægµkÚ®\ç\æ±W^\Òc_øùR~´\æñ¶›geW¸\' QU.\à\ã%\Ğ\ì!Œ2\Ö~«§³#2ô\"¸\Æø¬‘\ÈBiWŒ\Ù^´É¾1\ã!ôK\Ã\Ïu­Ô£\Ü\æqwØ£\â+W]À¡#\Î+æ¿Š\Ú†ñ¥}zW\Ò_ »O›C¸?•y¿u?1\é0©\îrbbªBÉNœ¯c\æ+ˆö¶[i<f½OXğ-¬\Ï\æZG*\îº\×;q\à]AyKveÀ¯Tùtgµ\Z‰œÅ¬\rncÀ\æ¯Ár¬¥\É\Úz\nµq¢]\Ûñ$2Q¶±/7\Å&ÒŒ£\Ü\Z\ÂQ±¼f:\áU\ä\'­IX`t¤ˆ,Š3Ö¯E^:\n†_2$·„Œg¥[ÿ\0UóqQ«\r­õ¤™½òk\n\å˜\ïš\á€e\0S-\êÇ€jËŒ•\íH\ß{*%š·,’.\â£5§\Ùü“\æcwj¯–eÁj[xºæ€‘¶«aE9cfn*o-6õ¦E+©#µIJDBÛª?³•Á\rWwarzæš˜i\r1\Ø2Š¦Ğ—³V\Ól^ª²„f£qØ…c\Æ*u`#krzÔ–\è¿yœ`\nl¦9	\Ú\İ(±¥\Å*[½/\İ\èj„Ò·\İSD7Zá¹¢1\Ô%±»=\Û.q\ÍT[\æ\ç<\Ó<\à\Ä\ä\Õk©„v»ùO>\Ú\ØK©+“\é\\ô™_›9\İZS\Ü/,k\æ\á|¾\r6h­°Ë…\ÍQ7-<]6=)·/\"¦I²\Ãã½MXkµ,“\ÍPš\à#\ã8ª7—óš•«,]jbjª\Î&©\Ç>\æÁ,’\r¸­\ã©ó•~\áRGt\İê”‘I4£\ËR\ç=«¦Ñ¼®kE¾3\è\Ä`U´–\åE]˜mz¬vµ0#\Ë×¦h¿³±>^şxl¹\è\çš\îô¯€:ª¸[\Ùğ\Æ8?s¹\Æû•\ì¦ú7\Ì7tR~‚«¶›u1ıÕ¼¯ôS_c\èÿ\04\ÍÀÅ¤€¸ùKòk¸\Ò~\n\ØÇƒ%´H¿\îò+X©K\áDºJ;³\á?\Ã:œÅ”\ßR¦­]øGUuùl\äol\Zûò\ãÀ¾\Ñaf™À \0+\Îõ_Š\ÑoZ\Ö+´Ü©ù‘T\Z\é¬\ÆrQ]O!øc\â-I‡“¦\ÌsşÉ®›Iı›ük«L<­)\Ğ÷˜â¾o\Úk\Ã\Z)Úº&\Ò2S\çı®t‹˜ˆ‚l@\éÀ®\Ø\à\çmHw\èxÕŸ\ìq\ã\å\Ì\ÒAj:\ÍÈ­Hÿ\0c9¬Ud\Ô<Il›ye­ıOö¾\×ZD°e¶^›\ån+\Íu¿‰Ú©|-/5†ò\ÉùŒ\Æ+x\à\ãmD¡9=\îò#á–š-­n£¾e\ä•lV^—ûL[\éW\n­¦’õÖ¼ûSğş‘¨7œ\Ú\ã1ôf9¬Y4]0oK·°\'5\Ó%8¾`©ƒ­Qh}7\í7(‡J%q–«úO\ía.¡7:KmJ)8¯\Ğ\ít”º!\Ó\îu<mU8¯~ğ_ƒ_R‹ÌŸN‡C²T\áX\åİ±Şµ—,N7—ò|Lõ]\ãV›y§\Ç5\ÔOn[ \"›¬|~ğÎš\É4ŒÇ¸åš®„\í3\"6è—\\\Å÷ƒcše2·Ë¾•\Ç*\É1,ORŸöªğıµù‚Kyš,pØ­›\Ï\ÚMµ\Óa¼M:\èG\'*\Å{W†ø«\áºjšlI¤4m*õi89¬\É,üga‡\Ùbº†%Ú¥†kxZZ„p0r\Õ\Øô¿~×“\Ûñc§ğs\\„ßµ—ˆfbc\Ó\ç¾\Òk†ŸCñ”\ß+\èÑ“\ì´\È|;\ãM\Ã\Ê\Òã‹·J\Ù\Å\Ë/£~s´öœñ<ašKuˆö\rjiÿ\0´F£¬`\Ë{Duk\Ëõ?\0xòö`jBõÀ^)Ö¿üWynOÙ–6\'\éYIG¹Ÿ\Õi£\éüi~{¸e\İ\ïŠ\ëaøå£ˆü»© _Rf¾K·ıŸ|Z\ë÷övûÆ¡¾ıŸ|[³ÉŸF5°\ê\ÌeF+d}	\ã?‹^]£\Ö%Iº¸¯\'Ô¾!xvF`ui²O\'q®\"Ù¿\Å3fS\å¯|·5·gû)\ßJÀ\İ\ßl_L\Ö2§Ik\ÌkM\ÛEsM_\rx†d\ë\æ?YuŸğ¬ŸMU\ÓWr:\æ64\Ï\nüÑ¼.ª\ì<ù×£{\×b‘^\Ãò\Å\ä\Ï\æV­m\"\ÏZ…8\î\âs‹kª[ j39÷Zl\'·˜ùS\É!‚»4·\Ô%Q‹oüvˆô\ÍR9\"û×˜\êK¹\è(Cª9¨¼u\âKL¤\Â\á÷¶*Í¿/¯[«\â\ØŠ\é-o.\Şco*«sò\æ›y\á(n·4)\ã\'W4ªIlÍ£N“û&<z¥ô\ì\Şõ]ı7W9\âñ:\ÌC^F<m5¼º·k\äG\"°ş\ç5\ê~ğ\Ì> \Ô\ìf¨v\ŞÕ¶\Zr¨\ì}(İ£Á¬ôNh·\Í|ù\ï\Íi\ÛZ\ÜZ\ãuó~y¯§\à“ªZ J±g¦ñ^q\âÿ\0\Ù÷]\Ñ\ì\çkO&v\çk(5\èºUC\Éx\Ì*v<\Õg-\ÃL’¼Gsagr¥¦µ‚Sî‚¸k\Âô›¦E³ek\"\çXñ––‡\í–&Ş¥S5Ÿ²”´D}k\nŞ’:›ı3Hy\n7a<n‰k\Å\Ş\r—C\ÒWR³}\Ö\ç\ï#ŸœW?y\ã\ëù!e’){\î\\b²&ñF©x¢9ntnª\çŠ\Öv¾#*µ\éI~\íiú\ÔWm2`“[q(—\æp_z­£\éºDŠ\ÍjPú¯QLÿ\0„2\âI¦›@Õ„\Ù\åm%?¥*˜h\Çc†8¶™­Á}½T¹»H\Û\Ô\Ö	Ö¯ô{£o®X\Ëg&q\æc\å\'\ëVd‘n˜I	©\î\rpºm3Ñ…H\Í]\Z+¨³Vc\Ô)Ú¸ªpÆ¬9\\T\Ë\éQcFL·&E\\³—vwV>Lm‘\ÍN·W\0c5.\"\Ø\ØUYâˆÕ²¹5OO¸o›¾8©¤ºR@\Î\rG+\Ê\íxÁˆ\ÅP\âo0¿-jyq7lšµ-©GZvc&\Ê\ãÌŒ\ï$T\å°\Çi¥û \çbT\ÑÚ¶ß»\Í¹K¹¹§Ibx$|§¥$‡\Él\r=.%aU\Ç&\ìeı¸ôx8<VT“i²K±‰\'µv\ÛC\Ù\êGªj¸;T\Öo\Ú(\ïLº_2B{T;J÷§Ğ«[RÇ™º—\Ía\Ğ\ÕniF\\)\î…q$“-“\ÍW‘„„óŠ¿a¢\Ş\ê·Koi“Hİ”t¯kğ\ì\ß5×—w¬qœ;U\Æ:„nö<?Kğş¡«J\Ò\ÒIsĞª×¨øcö}\Ôõ\Ö[ıĞ©\çh\×\Ô~øm¤\èöğ­µ¢¢»Zš½Õ›€Ã°­\'EvtSŠ”­¹\ãºÁ#AŒO,d\ZA]\\Ckµ²\n¦\Ô\0V£\Û\ê>-¹Xm•‘	\ëŠôŸü+ƒHduM\ßx¯:0©^|¨ô\æ\è\á\áynq>øw{¬‘-\ØhÔŒüÇšô/Àº~\Ênœ\×Xl\â´A„}ª\Õ\ÃnÂ–½\êtb¯4|\í|\ÉÉµL¥-¬V«¶5UÚ¨M¾O”{Õ¹\â’f\É‘!06qŠ\ïö1‚\Ñj´\ç»0o</ö\ìù‡*\Ü\Z\àuoÙ»\Ã:…û^J²G+Lgì‹¾E\ã\ëYš¤w±Š§¥¬\Ìñ[ŸÙ\Âlå®\'<µ:\ÏöxğM»e\ì\ÚB¼ez™†fS¸j°?\'me\í&™Ô¤\ìp\Z‡ÁË¦µªiª»¿‰:Šå­¿goY±o&Fc\ï^¿qe(RBóX\Ó,ˆ\Úji­\Í\"\î\ïs€|M3\ÌoV5=¯\ÂO\Ùü\Ñ\èğ~+š\í\ÖÛ’´Ù·\éS\í¤\Ëu%\Ü\æ\àğf\Ã\ì\ÖqAÿ\0\\\Ô\nš\ãI\Ü9f\Åjy›zŠ†K\Å_½Ò¢U3Rmœ\íîœ–\à\ç\'Š\äo£i¦dO˜t®«\Äz¤l»cnqYZL(ÿ\062\İ\ëÌœµ:\ãt‰4]\0\Ãg\'š\Ù[s V…¤\r\ä*o²¸­b\ÚZ2WÔ —A†@OÒ¤d*0ƒò©\Ò\Ä<¼Õ¥µX\×\äZ|ó}I\åb«^3mWÚ®[\İ\Ø…@\Ö.\Ç!jİ¾Šıjo\"]‹)6\ìóF\Ñ+|\Ã5¥k¢…Œf®Ga=FkD´Ôc!mÁ\Û\Å*\è\âFfk¢…-¸Z¶°Ú…¯\çMÁH^Ñ£–¶ğ¼nÀùb·ôÿ\0\r\Ú\îbøV\ÚÁl«\àT^[Aóy£\éMPS7^}	\Û@´Š,¬j~•ƒ«[\Û4,#‹\çt­A­C´\äSS±l‘,k)\á£-©\â\Z\Üó\æğ}ö÷¹<–\é\Å2\ëZ‹ß°+\Ò#\Öq•Hr>•n\ÇR–fÿ\0R•\Ïõ\İ\ÎÏ¯Yls\Şø]Ÿû\ë\ç\ÏØšô}.Í›÷^Rª\ãŠFœ\ïÌ£º{i\"h\Ù\×½Œ6u¹\áâ±³©£\Ø\Çm{\É¥{ü¦³\î<e—‚õÕ£\Ş57ˆ<]cco,rN‹&8\æ¾nñç­a’Y\'½Q’p¹¬±ØºT!n¥\à²\çŒw’\Ğ\êµ\ïiúŞ©7\Ù09\Ï•\"¬œ:+©\ì\Ã5\å\Z\Ä[)¯œCó\ïWOg\ã2M¯u\'\ï\nø­\Ô\çrN\È\Ó2\á\ÙÓ´\Ãji\ê\Ñ5 \âm6\Ü1ò¨¯7\ÖşXH\Ï5„²[\Éü++\Ø-n\î=\Èr1À¨¼ÀXƒÚ½\nXé®·>\'\ÚW\Ã>Zš+ø³À~(ğ\ìlò[5Í°\à´C8\Ç\é\Ú\äº}ÀxÙ¡™O!²\r}²\ëŠT e=AÁø»\á\â\Ì`[;“ÿ\0-¡\ë×¥Œ§SIP\Å-\Ùó®¥\ãÆ¾‰¢¹+7¯š3\\ÅŒ\Ó\Ù\ê\r6— \Ú\ç-lü¯\á]g\Äoº×„\Ë\İZ\çQ´\ë˜\Ç\"¸-7{m\0\åS­Á½wJ…\Ñ\í\áñq–ˆ\ï-5¯µ1WŒÁ7ñF¥m\Ú\âE«•\én-\Ñ\æP\'ˆ\î\Ï{÷Â¿øc\ã’!¶\ÔLÖ¡L´\'¤‡Ö¼Š˜y^\Éº­mY\åWQ®\áŒT~H¯Kñ‡À¯x>Gyl\Ú\î\Ø‰¡ükÏ¦¶’)¶22‘\ÔF+ŠT\åOI\nQ–ÌŠ51ô¦<{˜ô²\È\Ñ6\Üt¦G#H\Õ\ØM\Çp\â¬ı£brx¨\Ì;r{T\É\nÈœô£”V#PUc\Í_†ñsœ•5ƒy™Sòö§\Ã\Ç\Îi4\'¹Ä“*h™Yv\çTK™TúŠ†h\åfû„\Ñ\Å-KÍ¼\îö¦}°¿|\ÖT\Ì\ÊÄŠ’\ÚC°d×§Ê…¢F‹6y¦–À¨Ô“‘šY»Tr\ëb%-,C$\ÛºŸøfO_ˆ\Éò­“\ä=…dhzj—Ê¯òÂ¤#Ò½»Àş}sm¦µµ_–I`\ã\ÔTÉªkšG™ˆ\ÅF’²\Ü\è4MGÂ¿\ãa}˜–¯WğV¹ªx›d±\Ø4÷\ŞÈªşø[£i7)Ÿfoo\Ø~ò\æa¹½\ë\Ö^+\niûv+M\ØiS«*’\æ\Ç%<eZ\Ò\äŠ9\ß\ßG¡À¨Fgu\áR³|;\àÿ\0^‹¥1Àyú\×C\áŸ\Ë\â\rIµ\rA~B~Un\Õ\êöp\Ågn‰\0\Ç\ÛB…LT\ìö=ê˜¸à©«|L\Ç\Ğüe¢Â«\Z‚Ã¾+a­ñ\ÈP?\n±Àg=(k·Ú¾–•%x­O—­Œ«ZW›2n¬\ÌÂ³M¨W\ÚmMp¶¨\Íc\Èÿ\0\é\'\ëZ8İ‘6ˆ\î-vŸ”Uv\Ó€5¸ÊŒ£¸\ÅFgE^ Söi\îW´q3aÓ:•¬Á\\ºf¬µ\ê\Ç\Ğ\æ«]jÑ¬}*%N%ª’fU\ä1¡!T\nË‘N\ãS\ŞjJ\ÌI¬;Y\Ì\à/J\ä—-\ÏBv/ù/>B¯4G\á¶™€¦\Ú\êeyaV$\×.b²j,\ÙI¢­×‡\Ãp¡sX7Zñ†\Êüµµ&®ñ“–ª×š\Ã<XŠ\çqI—\Ì\ÎbM9•\ËÒ²µ-.I gÚº®óU&¸!I•Š±W\ÔóKJ\"nc;³\Í_\Ñô’§;Hü+^ú\ãÎ˜/‘Ş´,TI\ã\åò\ŞG{Ÿº‹v£\ËU‰-U¸\Ú:\Ş2½*ô1†®k®0V9›\êeÿ\0gâ¥·³ùˆ\"µ\ÖıÚ³if¨¦¢O1Ÿo§\î\Ç\ì/\ZŒ-j\Ãdª¹\0f§[S\é\ÅW)\Ì\Ãl¢ò)©™\Ô+qtµ.Ktô«Q\ÚD­«ø\Ó\å&\æv*\ÊFÚ±”\åAWE¢ªü¡qI&\Ø\Ôò¥°^\æ9\Ó\äQ÷¿Z\É\Ô\"ß—<Vµö©!·8W™x\Ç\Æ\ÖûLqÍ¼\ç•…jÊš\Ü\ë£E\Ô\èw6W–­€B=kR\ÖòÁ[l¡y¯dñµˆ¹œ®:`\Õi>*¬1+<ıûš\ã,\ëú”»R‹»_)ö¢=Z\Ò°H¯™tß–\â`²\Íôl\Õ|nû2\Ë\ä\Ë\çq\Æ\riõ\Î\ÃXô±ô\İÏ,\ì\Ğ\ä©nü\×-¨ü^†Ô¸\åı‚\Õñ–­ño]\Ö&cŒœ\Ö$­¬\ëSy\Ó]O¹º\àñZ}b¬—ºtR\Ê\é\ŞòG¼|XøĞ¶\ë¶\Ñ\Å\Å\ÛtÁ\È¼fo\í_2\Ë|\Å\ï+W\Ã>‰.CJ\à\ËC]4¶\Æ\Ìym\ZˆÀâ¼ª’‚•Ş²>‹B4•’0´\İi«[\Î?Š»¿‡¶’ø‚e¿w‚Ey¾¹$ƒPH\íªn¹¯|ø=f°\Ø\ÄJa\Ørq^^+TKŸ\ÙÁ´v6š(A„\í>´Ù¼?*ı\ä\ÚŞµ\ß@˜Œzb«_B²`\â°QqWG\çù–:\í+3Î§³’6#Ÿ2°S\Ç5\Øê–¡_\î\×?uÏ¥k\Ï\ÎqX:\ØY{ñ²0wyŠQ\Ô2#5Àø\Ûà®\âxd\Ñ\Æû®õ\à\Z\ï\ï#{y\ÃÖª©˜c\ÅztqU)\è™\Ë\n²†\ÌùS^ğF³\à\éŒWÉº.@™z5ex[\Çwş\×!\Ô\ìlˆ\à‘\ê}Y­Z\Ûk\Ö2\Ù\ŞB²#>e\ä\Zùw\ã\Ã[¿Iö«}\Ói\ì~ğw\Ø\×\Ò`q*«G¹_<,\Ï\ĞÏ…,~&x>\×QŒ,\á	c\ë†\Ç\"“\Å	ü5\â\àX\Û%¤\íÏ˜ƒ\×\Å±¿\Å	|+\ãe\Ğ\ç“ş%ú‰\Â\äğ¯Ò¾øG+°\Ü7+\è\'‡…O‰5§S>rñ—\ìÉªiò<úT\Éw÷OZòkÁú#%íœq–W\İ)§¼øÄ¥H÷ªº—‡\ì58š\rJ\Ö+¥\Æa^E|®ÿ\0\Ã=:Xç¢›>‘Ju<´\Ø\åe\àŠú—\Åß³›¬o›Eu´›¯–\İ	¯ñG\Ã]S\Â3•½²‘c\ÏÁ¯®\Z¥\'fZxTÙœZü\ë’)¡95~\ë\ËD\àq\ì*´{O8®gt_±\Ì\\c`±\n8\Í5ô©¼¿”r*T\ÉmXñ\ÕôïšœÂ©\Æ8¦ª¨|\î\ÍN\í¸ƒ\í^Œº\ê1TgÚ¬Æ¿»f\ì*ó\Ïj\êô_	^ë–°ˆSÊ…\Û2JÃŒ T|:³µU{šŸôÛŸk\r3C\äiV¹i—czW\Óÿ\0´\×Öµam§[”C÷\Ü\0®;À¾şĞ‚\Ú\Â\Ò1g¦¦²1\Æ{–¯RÖ¾-x_\á\rŠi:a[³\Ã8\ê}I¬9=½Oyû§ƒN1r|ª\ç³iZMŸ…tÒ±m3\íù¤\Çz\ãµ+\Èno7H\êü÷=+\ço~\ÕR\Ü[¼V\êT“‚A®ÃŸ^fÿ\0H`\Î\Ç-^„¥Jœi£\éğ9l\é{\ÒZŸ`iš¢d*§J\é#Ô•£5\âşñ\Ô!ŠC\"±aœ)¯@‚ów¯SWDr\ã({úoö€\Ú0j)5/—¬!xy4Æ¾^›º× \ê\é¹\å{s^;¡óy\ÍVyƒH\ÍYm©*qº¢:’sóg5›«\Ø\ÙQV5µ™Tƒ\ĞV|Ú›n\È5B[­\ÍÁ\Æj	wz\ÊU™¬pñ\ê^“QcÒª]jG\Ë j©b½MU›\æÏ­b\êÈµF(w\Ú<\ã\ÇZ|6!›q<\Ô0/9V¥¹V^k;\İ\êh´#û(Û\ÕF\â)²§ğ­)˜§|U9\ã-Ş¯@3\ä%ˆªó«š\Ğk|\Ô3X³¼Vv,\ÈÜ¥¹ª·l«À<Ö…\Ä\">•›>\Z²“4Š»)\áy\îjÅ¿n8¨˜ƒÚ…[Š\á_\Òö5a\0ŠÔ…F\ÑYv ñZ°ô®¤s´É£‹wN•¡g	\ÅW‡\à“V£¸\ÃL\ÈÒ6â¥DO½\Ígı§v2p*¤<sSp6^ú%^\0ª²j‘)û£5‰-\Ñ\ÇCTd¸|“Œ\n—\"\ã#¥m`mÀ8¬KWÚ­—À®sPÖ–\ÕrÏŒ{\×	\â\Ïùp•ˆ“+¦\"+©\èRÃ¹;|q\â±9:\ç<×j\Z«\ÜH\åd#\'Ö®^]M¨IºV8¬ÿ\0±†~5\äN¢œµ>Š…MÚ‡qcs\ïY\Ø\Ü\ËVaõ®\Ği(ø ó\ïZ\Ö:,j™*	¦ªF(\ì<\á¼3\'\\œŠ––l6H¯Lm1~àª²Yª7	\ÇzO­¢\Z\Ü\ã\íü-,»S&ºm/\Ã\ŞYS³ó±§\é‹p\àWKœ^\Åeó1\Ï<\×,ñ,\İD\çš8\ìc\â5óq\ØVö¨—,S.\É#Šë®­\á`\ê\Ç\æ+\Ô,’kv\\\rş¸÷®XOšW:\á\Âú\n\ß\êE\ä]\Ë_DøOGû¬C@8\ã~\Ó\äã¹¯xğ\Ë…F:\n*>gc›ùU¢\Ö|Å†MS¼¼0ğÃZµ;~\ï9Á¨®gZ\Ö%l\ï\Z¦ô±\àS…\çb½®G.r29®j=^+\Ä-¼Œk–ñWˆİ›\æ\Ìgø³\\D¾(•c\Ä~SÀ\æ¹\î\îz\Õ2\Øb©r\Í¦n\áºf\Ù ~\İj¨Â¹¥yv©]G/˜²0-\Û<WS¥ø‰\Ì\ËÁ\àôj\Ú:3ó|Ï†q[Ô¦¯n\ê\Ü\îgZ\Ã\Ö4\È5\İ>[\Ôó\"‘Jı3]<Àyz\æ³\î£1\ç\İJ£¦Ô |]7gº>uğ\ÏÃ›\ß	|dĞ­ ‰ç¶’ñZ9t\0ô¯\ĞûX?v¸×ƒøO[¯XK\åohœ6\ì}\Ş\r{ô2\0¬1\É\ç5ú>\n¿¶¢›\Ü\í§&\Ñ*\ÜZt2	K\ê\İ*¡!¤\0w«\Æ1Wow¯G¡®…{¨\ÚÕ—\Ëm•›«H·¶\æ\È\â3\Ç\ï5gU™\á\Ø_Ö£ûB\É+Â±8\ÏF£7™\å*ø\'¥ë…¤\Ó?\ÑnO;	Êšñÿ\0ü5\Öü,\Ä\Ü\Ú3D8 \È5õRX3I½i\éR_a\áH\îcIÂœ\ínEy5²\èI\Ş\'§O(hÏŒz\åJZ\Ìwt\Â\ZÜá¿ˆ\ç…dM*\à«C\Í}+©j\ĞF\àGk¢ö\n*I<4\\hŠ¡(®_\ì©=Q¿öŠ}\ÎP‡Zz^{®\\¥½´—¶\0X\×<šôŸ?³ş³ñzø]…6\Ú*š\ä}\Ë\à?ƒ~ø{§G„Ftÿ\0–\î¿9>¿:8YTW6­‹„6>\à‰môøµ\rF\ß\ìp)S²N­^‘§Y\Çkaİ¢\Û\Ã\n(ö¯iø\é©­Z\ÓI·!’<¼˜<c#ÿ\0¯^\ã\íP3.™e–uÿ\0XGoò+\Â\ÆK\ÙË•T(\Ë2«\É\Ğ\ÏñW\Æ¨-e³\ÒKA™£ş*ñ[]ŸRœ\Ë,\Ï+±\ÎK\×s¬i	c	Fÿ\0Z\ãV¸«m\ç!c\'\×\"	)n~…‡Á\Ò\Â\ÓJR¹’[‡S–\ÇÖ–;©-\î\Ëª}k^\r µ¨8\ÈäŠ£n»NEv®^Vh\ÛGÕŸ³ßˆ-\ï\í\ÕD\æÀ\Ï\Í_@Y\Ü#M´5|ğª\ëQğŞ¡ö\ÛI\ÙQyÛ8ô¯‚~1Á-€m@•»<c?JÒœ\ÔOFNW=\Ù\åÜ½{\ÕI>f\Î\n\â,~!E|øF;k^\Ï\Äk>\íÇŠ\í\çLò}•™¼2Ô¾G}Õ™­ñ»8¿C\Æ\î)s\\¦‚²\"ŒóOP¿›ö\İ<w´7}L\Ù4\Ğd{T+oœóVcucÉ©¼µõ\Å¸£µ\í\ßg\Ï©öªt9ª÷MÁ¥r&ºó1•\n\ÌFqL‘…3\ÌSTU‹J\ëM’\áUO¨·\r¦¡š\á21M±™š„ÿ\0)9Á¬¸\ã21\ëS_\Í\æ6\0À©ô\Ûf\ÚX\İk	\ZEØ®\Ö|{\Ó#„\î­	óQ·šÏ”\Ö\äğ)U¯G61Š\Ï7Gj¹c‘sWbct²/*[uu_›5j8\Ò5â¹¹<Qc!bF#©«QBü\İj¯œ )\Ór;TXDóG\Z¦v\æ¹-zı\áÜ©ò\ÖŞ¥|ğÛ³˜¯<\ÖuGvlõ\å\âªòlz¸:|Û˜:´\Ò\Ï3eÛ­sZ…¹PKü\×Eu<mcÇ¥a^M¹@^ry¯Ô“\ÜúzqŒv2Tlm\â­Cj½vsW-\íQğ3ƒS\Í—\Û\"¡\êjP’\Ê1Zz|A£\Çİªğ\È%\Ó7\Û5\çH2[\æ¨\Ü)~\îEJ.–Lm<Q4\é8&‘BX³G÷;\Ô\ÓH\É.\â>z¡F?6GZ´\×1\íY1’kqp\Íj\Ò%óT–6œTŠØ³º»vnC\Í…o\İü óY\İ\Å\èuFZ\Z\Ş\Ò\Ö6\Ş\ã‚z×¨YÂ¶¬ñ|ÉkŒğ´bk1\Îdô®Š+\é-$7¶s\Í\ÄI\É\ØÖ“[‹c\ÜÒ¼\Ó\Æ\Ş%Q¡n˜<\Ó>!xt%óR@7y¯&\Õuó\âLˆ\äı\à÷­ùyƒI^\ì«\â\rY¤c	\Ë\ÄOÒ\"\Ôye\İ+1®\èfùŸ?zµô\ÖX@,\Øa\ÅLà¢v•hi\ÛÙˆ\ØG\Óğ§\ŞY•\åO4‚ùU·©ùd\á˜Wn\æ¶æ¥©oB×šò¦bW¿4\Âh\Ã!\à\×q\0\å¢9=k ğ-­Ö¿«Cc\n3«6€Wn\ÊRP?5\Ïò(\Î.½z·Á\í-\Z;\ËÇ?Â­]¥\Å\ãÙ¬Œ¨de\É\Ú+Z\ËEµğş–\Ö\èª02Gr+1ÿ\0x\ä/-Ş¿PÀ\ÒöTR?;…>_uœ-ŸÄ›»Bhÿ\0²\çMŒºõ®\ßFñG\Û\0Wˆ\Æ}\ÅP¹–\Î&VUaÇ½e\İx–\ÒÌRH\ß\ì¥z—*\Öv:oj±YÅ½\Èf¼‡\Å_\Z“E¸[ ˜ô4¾<Ä(UM2†6\É\à×Zü\rñb\Ë\æO\Ú;‰sÖšpüd¿¼»c\å\É\n\î“W›\â-ı\âş\ïÎ™ı9­m\áö­j\È.4D\ÇM\Õ\éğ¼c/¦¬rgû”µ\Êl\î<E©8cnÑ¡şø­û]3Rsr¸^‹Šõ•\Ò<À\Ä[„?•H\ÚòStúUlN§M\á}\ËÀ\Ş³\Ñ4¸;x\Õr£›\ÔÕSTK{y$v\å¶>”\Ë\íB\Î\ÒÉ¦¸W=Nk\Ë<añ/J¸\Ó\î, “t\ÒŠs\ÍsNJ•&Ñ¿,\êË—\Ìó/j\æ\â}GX•°ó;,y?•pšŸ®\ÓL}#n%½\ëGRYõ-ImqşÖ‹\ë$µµ$\rœŠü\ÇQÎ¬Ó²œp´T­«\ïÁ°A\Í7\ï	¹\í^m\â\Í\"\ÕCÁ\ÆA\ÅzL&şÑ·òšL\à`­r>$¸‡\ÊGOJ¼<\Üe©\ë\Í_kfÜ¡\àò+.ú?ô£s\ï]\Åö™Œo\"ò¬2+‡\İ\ç\ê@k×Œô0š\ÓC°ğ\Å\Â\Ø\ÙùDgp­2B·[†p;V›	\àŠ\é4\ÕPq\ë\\•*;\èc(_s\Óü1›\æ\"½\Íh\Û^a\àÛ„…J\äzôı>tt\\Ò»°\Õ÷<lE5VÊ*x•·Ó­#\rMMò­zq<©Xr±^2zÕ0\â¨\É8@M\"_\ÆEmk—¾\Õ\'PzS—R•O\'8ª« ~q\Å+.G4„\Ëñ\ë4ö\Ô‡&±&q\àâ«µ\ê\ç“Sb,l\É0eb\rTK­¬sU–\è2ğj6~zÓ¹V4¾\Ø6\Õ+‰‹g£Vüi“|\ÌG­Cc\å\"µ¶{«€ g&º3eöX\0\ÇQZ^	ğ\ÛÌ¦yc\Ü1Rx‚\Î[y\n\ì`3\Ç|º\\—$r\Óü\Ìj<Õ™”\î\èEDT\î¬\Ş\å\'q‹fµd\\ \â¨[¨\Ï5xJ6€½j‚\ä“O…#œF1M\äòx©Qbn=\\•§«c½#.\Õ\à\ÕV®jd´\Ğqy‰¡e=\Åp ·\êvŒf»‡Ÿ<Š\ãüG†ßµó\Ø\Ô}C‰¸a·“T\ÕT6r*\İÒŒ\ÖtŸ%x‰]\ÔYqc—†\0\Ó\Ë*¨\äVTn\Èr\rHn3\Ô\ÕX\ĞĞ‘\ã\Û\ÅTh•—\rÒ¡7[2sL[À\ê>”ùF>(\Ìa€<U‹¦ó2Jµ\æ|­Š\Ã\Ô.„-º­E\å‡\ÕHı+OOWšM¹$\n\å\"™f`G­uš\Ò\Æ\Ã5H¤®j—M¶\Ú\0#ŠÑš\Í$\Ø\0\éP\ÛHVTñ+F\×-q¸\Ú3_Eu\Ó\ÔÚ›\â/ZG	\'\åu¬«\Ûñcœı\ÑÒ¼·\Æ\Ş&›\ìRJ¸\ÚF+ª”yšG3\Õ\Ü\æ>\'x¹üE©¡vTOz\Ì\Ñd+\0;¶8®J;©./·³`Òº›;V™~F\ÅzÓ¦¡\r\êz1Ê³3\ÏVc›j…\Æ\áY¶­å’\ÍO¸.A·\î÷®\Æ\çb‘©\ç	\è(K®µY\åf\Î;\nÏ±¼’ò\â(c|Œvª¯Rk‘\Óm\Ú\ÆüöW;=ú\á`‰|\Ù\íU¯¥şø/\é\í<\Ñ\í»¸˜ú{W\'ğG\à\Ì\Ú\\CX\ÖSË¸e\Ìp\ã\îı}\ë\Øo[j€0\0\çõ\ÙNX ı¬\Ï\Ïó\ì\ÙK÷Ÿ©Rò\à,esjƒ|27eH\æ–F)\ÏQV´;!%Ê»ü µö‹Cóí†–ğ²Áµs+\\„M\ĞV©\á;O30Á\0dZ\ë£H-\í\Ğy¡¾Z\Z¹SœR*R¹\ÅE¡²È¡b\ëÒ´\×K}£÷\âºx¡‰X³\Õ!™Ÿ\åD\â—1\Ì\ÎI´³Œˆ¨¤±\Ûò\í\Æ=+²ÁŸ—?…?û.\Ó\æ„xB©ù[?J€2¨\ÚI\0t\â½´˜[øj	4i\Ü\\\ÈÏŸ|Fñæ ¦\Ş\Ş\Í÷÷»W#\à=Æ‘kW:¿ˆú‹÷q÷k\ê\Í?ÃºM­Ÿ˜.\ášb¡Õ\Üø\åEW>Rµ½‰F	Œ…?Jù\Üd\å:-Dúœ%8B¼\\\"·¸hVH\Ûkš¡¾o¶£ô\äb±¯\Zm>\êxw\Ê\ÅN=¸ªrjÌ¶/—\Ã`ƒ_\rf\ê]Ÿ¤JK‘(œÆ›|muic\åG\ëWµ\éR\éAz¹H5\"u\0›ó®œÈ¬¬{\âºl\â\Ì$ô0u¤+f¡˜ı\Ú\ä­-PÏ’3]V·/™¦++O´Q~¤W¡„Ëª5,ÀE\0¥kY’š\ÏÓ£Ü¬çŠ¿o*«š\ç¨\îh\íc£\Ğn¤‚áœ\Z½\'Ãº™–dŒgšò{9Š·\ŞøN\è+©<\Z\Ó>YXó1\æ\Ï_±Ÿ6\à\Í#Hwj–Ÿ2y gÒ®ô¯¥§ğŸ14Ô†¶Xu¦B¾[f¦Uæ†i­L\É\ÅÂªòx¦µ\à9\ÅPº(ª]´|Kbnh\Í8f<\Öe\ÓSOK€üw¨/¾Xş¦¦Lv&°¸=¥h7Ì¹\Ïe\ÊV\Ì+û±Yañµ[±µ7—‘¢¯,Ø¨\áµyX*Œ“\Åzƒ¼$a’;™‡=«jq\æd\ÎI#µğÆltôB¸\ã\ísGŠò\nü\Ø\â¶-Ê¢NbŒÆ»•=,y®§¼x†¥¥=¥Ã£¯~µ—$[Ö½]ğü7\ÊYW\í^u«xz{V?)\ÅrN›L\é„\îŒ%P\Ã*X\íV<R4/Uª­|\Ê\Äc™eÿ\0³®:æ¤Ef­ûš’+\í\ßx\ÒC4H\ÏÏ°ù‡5\\\ĞÕˆ\ä\æ®Jè«™·öf%\È=k×¡`§=+\Ğ\îTKL\×\â(€‰ø\í^:Ç³ƒ™\æú“yaÏ¥a\Íq¹A=k{U\Î\çÖ¹«¶Ö¼\Äú(\ípY¾c“Zñ#ry¬u\á‡5¥o7 g\Õn&„ó[£q\ĞT&^§ŠšI6\ÕY7u)\È\îchab†¹»†i25¼\ÓcpšÃ¸Œ	mhŠ3£&9\05\Õh»Ü­s«n\Z@\Î2s\Åtú<«2¸\ÅEmQMmš˜\í\ÅiZ\İ\Ôn8÷¬Xo\×©\æ˜5¾GZâŠ¹“bx›T+v\Ã×…x«Yó.¤‡vS>µ\é\ZıÑ’\ÎP\Ç\×ãšŒe®›œó^\Æ’µ\Í\"®QR<ÜNk²Ñ¦\Ûk\É\ÅrğÛˆ\ä\×Anûmö2+¦®ˆ\è\ìnˆRhw\Í@\ÒŒ©\\ŸZO\Ø\Ü\êw+ml,Â…\ë\İ~şÌº–²\És®ƒmk\×\Ë\Ï\Ì~µ:3¨ı\ÔeWN‚¼\åcÆ¼;\á=_Å—Kg§ZK9“ŒÀ¯¨~ş\Î6>\r–-KX\Ûw¨…FFB\Zõ¿øGğ]šA¦Ú¤L£ñÉ­;™\àO5ô\Ø\\µ+JhøŒ\Ã>V\é\Ñ\Ñ]8XI/M½1\\µõÁfÀ­BñJ=kœ»“{\0:“Ö¾G—D|{“m¶,*dqj·Œ5õğ¿†\ïo\\Û¦ü~©b\Ùz·J\â>(hóø«\ÃwZ\\ù-2\ígª¹\'#ğÿ\0öÀ´¼\İ«o\Êä‚½\Æk\Òlÿ\0jŸ€ZQ4#\Üf¾[\Õ?gY´;?´Cte›<(\êO²µ/…¾(\Ó#]\ÖH¤6sœóJ\å]\Íû\\x&†Á<\Ê{ª\×g\àÏ¾ñ«ˆ\ì®\Ö)‰ÀCƒšø\Z\×\á\ï‰\å8]\"\à¿vºM?\áG‹\ÖK{‹+	\í®\ÏJB±ú&úˆo¸zş5\Z\Í$¼‹À:·‰4\ßZÃ«!¸¸\n³u\â»ı.\ê÷Pˆ\È\"e\à5\",t#\íóÓŠ‘E\Îy9¬¯¶^[Ÿš?Æ¦MRy)Ú€>ğ=\ÃZ\Ü[@òºAÜ€± _­{¿‡uˆ.¢#˜K&Ü¶G_zùŸO¾‘YF) \×mğ_Xi<Pğ\É#$EpÇ¡¯*÷G\Ğ\Î<«™\ß4o\ì\Ï3\"m†\ãøó^i­L-\İ\ã2k\è\ï\Ú)¸ğü\Z‚/\ïm\Øg\èk\å\ízc%\ãŸBG\ç_3ˆ¢©\Ö>\ç[\ÛPMt8\İBó\ìú´@6\×a\rÇ™wv¯=\×	k\äq\ÕO5\Ò\é·\Æ{@3Öœ\é«\\\ŞO\İ,_K¹ˆ<\Ñcƒ¨Vÿ\0)´\Z¹fÀ[ŒT­…~…ûVò\ã\Ø:\n\ÕK9\ÍTF*Æ–\á\æm\Ç\"°—\ÂQ\ÒÚ®\ÆB:WG¡\\bú,+‰†ñ·WK\áey\ïÖ¢•ùŒ*/uÃ¢\Ü=\Ç\áŞ·üÍ k\'G„ZÂ£¿z¹$ÅºW\×Rş\Z>V®ì¸²óÖ‰dª€˜\ÇÖ«\ÍzW8­d\ìŒ	n®–595‡=\éi8\éKqt]ˆ\ÍTqó\äı+0HĞµ¸*\ã&®]H$Œ÷¬ˆ[‘Z°F\Ó2úT\êÀ’\ÍJ‘\ï]&›gç² \ïV´¯‹«tp¹®·Cğèµ˜;úb¶7!s¥¹§\áÄ¨¨\ÍvPi\áW\n\Ø\ÅQ¶‘!‰UE[K\àµ\İ(£Š£rz–Íü´©¡±şój¼w\ê\ÜU¨.C\n\è[­­²ü\ÃÆ›\Ä{]Ô¾f\æ§n¬e“\Ì\Ñ\Ä\ë\ŞF\ËD1ô®R\ĞLLÀ®kÛ™U\Ç5‹ª\èi2–DÏ­sºGL+tg†\Í`Ñ¶1\ÅF\Öì«¶\Ö4?³\Ìp1øW?ujW#‹‹‰Ğ¤™—n²n\Æ\Ş=kR/º3U\ã\ÄxÀ«ü\Í\Å% …Ü„•ƒ­i\ë\"ş•\Ñ\Ç+š©}m¸t\Ís×¥\í#c®…NFx¶½f\Ö÷R/j\ån,\ÙdÉ¯OñV›ûÆ.rY†$sÚ¾F¥7NM3\ë(UR†]¶’F}jœö/	fRz\ÖÏ—\ä®OÒ«^\ßF©´õ¬\Ó:\îe}¨¬`°&™& <¼\çğ¦M2\È\nŠÌ¸ˆõ\Íq„ÚŸ˜\äcŠ[L°\ãš\Ìy5wMŸn\éM¡­6µ‹n\í¸4\Ûy¿|Tt©÷	#%y\æ¨M †M\Äâ²–¨N]‚Ù‹pM_ûW\îöf¹û\rAn5gR˜\ÄD?{µgÙ™\É\Ûs\Å7K\r¬ˆO\ÌzW<\éK\Z\ì5‹]CZ¿X--¤\ÏğF™¯Iøqû.kş$•f\ÕiÖ§œ0\É\"½¼-)\ËdT«S¥i³Ã¾\Ã5Ä‹´-4­ÀU\\“^\Ñğ¿öi\×|QS\ê(l-O\'\Ì\Èc\íŠú[\Â?¼9\àuC\rª\Ü\\Ì²|ß•w\È!P €€+Ü£søÏ›\Ågª7…ğÁÿ\0ø\Zş\Ïf’](\æw\\•\Ü\İL‘\Ä6€¿N*‚\İ½j­\Õ\Ñnæ½ºtaN6HùF\"¦!óT‘4·%Tk.\âğ	¦4Ç¹ª\Òe›s[iX©u&\å\"©\Û\Æ@\ÍZ2[\Å\nï‘²Oğ\Ö<÷@3cÚŸ3*Å‹Ë¡\×8®7Mš\ëV\×.ç”²Ú¡Øˆz}jø…4ğˆyw\ãŠË·Ô¤™ˆ€2\ç­;¨l\íe\ÆôG=³ZIcm·ydÿ\0*\ãôøgÊ´’Ÿ¥l4¡\0fjc5¤K{R\n2ƒÚ\íI(#\éYK¾e.>µ£¥\éò]\\*ô¤O+6´¹\îof«:şU\ÚX\Ü;eR1T4»Xt\Øğ0_¡¥»v~q\ÅÈ½6©;°\ÇÒ±5Oˆº>‚‘­õ\Ìv¥\Û¥hLœóšù‹\ãÀ¿ø\ë\Æ7¶\×û6?’\Ş2\ØÀ\êMOcf\Ñ\é\Ò\Ê\Ò\îX\Î>õ\Ñ|7¿‡ş\Ë{K>\Ò~¼W!¦\Îf\ÑnW\ÊH\àıit]atR\ÎX\ß\ç…Ğ·=«Æ\ìú*‹C\ì–\Ó`Ö¬d¶¸MñJ…OÖ¾Bø\Õğ¾÷Àº\Ìó$M.Ÿ\'(\ê:gµ}s\á=I/ôø\'Œ\åd]\Ã\êkgS\Ñl¼E§\Ëk}o\Ä,¤mu\Î2)W\Ã{T¤kƒ\ÇO\n\Üe±ùi«L<\×aœ\ç­mxho…I9¯¢ş-~\Çs}\â÷\ÃS–^_\ì­\Æ;ğkÀô\íÿ\0Ã¬ö·ö\í±\ä\ÊExõ\é¸hÏª§‰…h.VG¬I™\Ğg’1R\Ã8†5B¹\íYš\Õ\à[\èÏµK\rÁ•»W%´:\ïª6\Zc8\â–\Ş!»q\ïN·d\\‘Ú­\Ãjp1Ò¹™¢Ôš_ºG=«Ñ¾\ém5\â\ÈP\í_ğ®\'I\Ó\Ş\î\íB®Fk\Ûş\é«eb	\\k|=>yxª¾\Î67ü¿-z`RgµK\"Ãƒ\ëT>Úª¸ôğ,l|¬¥v:\âp‹ŒóX·—[jK\Ë\Å]ÏŸÖ°¦½ó›“\Å)±\"\äR$ö§\ÈÃ¥U‚N\â­G™‡­g \Ö\å«8ÌŒ£\èğ¬—Œ\"ñš\Çğw†\Şúe$p¦½«K\Ó\ã\Ó\í•\0kxFú™\ÎV$\Óô8m\ã\n:Š\Ò[X£jf\íR¤2>	5\×cR¹2¢cN+7JrÚ•Ç­X\r§Ş´‹3n\Ã\í­Ó–­‹p¼Šl1\í\ÅZ\ÛWs\'+•–2¹işgµN°ûS¼¥\ïHÉ²\0ş\Ôn\r\ÅM\å­DñmlŠ«­ÌKE\ë$k…\Öü>ö¬N\Ş+\ÒZgİŒqUõâ»„«(\ÍL©¦o3\Ä\îmŒlF)–’ˆ\Øñ“]—ˆ¼4\ëÊƒ\å\×$¤‚+–Q³:¹\ÑGp6ƒñ¨/$]½«oŠ­ux\Ûk)\ÇB¦¹\Z\Í›½+\Ì\ï§û4Ì½…w·w\ÌÀœŠó¿0†f\"¾sJ\Şñôx\Z\Ö*\Ív%\Åa_\\D\Ò2\Zœow/\áY—Q—b\Õ\â\Òf=\íÔ¶“nF\Ş3Ò­[\ê\æ\rGq	šŠ([<*\âjµfù±RÛ²¯ª·\é#Gòu£\Ãz»¯j‰–q8\Î7*œV±ƒ‘I(«¶o\Ù\Îc^h½\íHJ®N=3^\Ñ\à\ßÙ®úş\Ş9õi¾\Ê?çšk\×ü;ğC\Ã:©6¾|\Ë\Î\ék®–_V¦\Èò*fT)is\äŸø\\×®„v–S\Ï\Ê@¯yğ\Ç\ì\á,\Å%\Ö&\Ù2bN¹¯x\Ó\ì,\ìc´p\íÿ\0j*i.9\ëŠö¨d\ê6”\Ï¾wv™\Ïx_á§‡¼)\Zµ¥Š\ç£š\è\å™Püª¶U’\á‡CT\î.™{×¿N„)+$|õlMZ\Îòb\Ş_J¦óÇœ\Õ+‰·9=ª8\æ\ä\æº¬rš^y^sU&½\Ú\İ3O\n\ÒWš\ÔG–\'&–\ãq\'¥:\â\ámÔ…\å‡z®\ç\0Vm\å\Ğe\'=h°\Èn¯bz\Ö]\å\â\Ã1\ì*-B\ìCf8ƒöù.\å\\¨9¨)®[\í·†iœt·c$*\Ãb`\ÖŞ“kŠ†X\×\â»]:\r2†‚5u¦G6§!§şı¸Œ±\í\Ål\Çg*®Z,¥wv¯¤\ÛÛ‹>¸¨?²S˜<r\0=¢\Ì\ì£\È\İ\ä\ÎF)e“\î€+b\ÏG•™v³\í]M¿†\"Q\ËdÖœqY§V}\ç:QÙ‘Zi+ºd\å€\ïN¸…Dxùj½\İ\ä¡ğ§Š®k®æ2OQ~M\Ø\ã5zJ®\î6”š~’³.O¨Ö¨\ÊñŠ	?-t\İ>i4+\ì\Şpmß†j­­\í„\à\ÄòL9,Æ·o%Ÿ\Ãv·BXÉŒ\0Ã¿µp_h\ßL\Ãaà¢‘\×<šñ—V¥\İbü\nñ\0¾ğ½¤d\îx\×cN¤W¯\Ú\ËòƒœW\É³/‰ûBú\ÎF\n…C.z\ç¾¡¶˜¼\"»i·cÌ­\Ôß·˜H\Ä\Õ\Æøû\àş‡\ã\ËvY­’+£Ài¿gqû\Ê\ÙYr\Ù\Í*”cQjM\Z\Õ(j™ù\ïñ‡özñƒõc%½¬—ºx$$°®N?Ú®\ÃN–\İq:4oœm#ú%¤WjVdY¿…†s^g\ãO\Ù\×Ã*ig!gr\Ù!£\àf¼ZøIGX\ê}V5„¬¦ÏŠ,\àı\ÎJŸ­i\ÛÚ‘´Á¯ZñW\ìó®øh\æ\ÙEõ°<˜úıkŒ—B\Æq\Ì\r{Šğ\åN¢z£\è!Zœ\Õ\â\Ë>\Ó&2c\Õ\é–\ŞMª\ã\å®s\ÃúIXX\í8ašµw3Ã„¯gI\Å]£À\Å\Õö’±±}|&ƒYò\Ì0yª_h-\Ô\ÓY‹õ¯ScÎ”JWS33\ÅTŒc\ÍYnb1V-4Ö™¸œµ*:n-œmzWU\á½¯.\í\ã=\éto\É>L×¦øo\Ã\é§Æ®Ë†«;\îK’F×‡´xôøT\Î+¡Œ€V}¬«¿•yf«©G—cr¹:’U\È\ÚCÀ¬\èf`sZ°\ãŠ³;÷¬\İx«*²\àJbv«P·j´g!b‘¸)ÿ\0m±VñÒ£ØŒ\ç\"¬Í—\"¸F\\\çJŞ‡­U\Ú¡¥f*\Ù\ÏX‹ùş_Z¯\éT\î³g5JIŠ\Õcg\í‘\Î\rU¸dÁÁ”\Ón\îjœ÷\Ùl9¦;2\íÜ«\å²7F¯(ñL\Û\ê,T€	¯@šC7SÈ¯0ñt\åo\'½s\È\Ş†=¥I©\İt5A5±\Új\İpa¾•\Ï$u¥r–¥x±qk’ñT-%–ğ9\ïW//~\×q´÷<W@\Ş—Q±H\Ò”\ã²\æ¼\ìEUYøzª“»<*i\Ú\İñœ\n|\Şclİ“\×\ëŸğ /µ¦\Ş\Ìmœó\Åu\Şı4-!–[ù^\êl\ç«\ÆX\Z’v±\ì¼}\Æ÷<\ßGº\ÕV\Ş\ŞI›8W5\ŞøW\à/ˆu\ì¢û$?\Şq\Î>•ôÖ‹\á\İ#GV\Ö\Î(ö>Pkuf\Üa\Åz2³<z\ÙÕ´\å¾ı›ü=¥ªI|\Zöe\ä\îû¹¯J\Òô?FŒ%¥¬p¨\éµGó«2^\r¸\Í\"\É\Æ{W¹OJ—Â¶a^¶\ïB\ÃL«\É89¨\Şñ}k\'Q¼e\É™¨\Æ`¬kº)-9»»Lw»dS]òz\Ö}½Á\ÙÖ¦kŒu­bIF\êBO\í\í3p3Nû*ùòm´®#)c{‰Áš»\r¼6Ë™\Ûsv›q¨\ÅV{µdÍ¨™3“R	3Z\æùXüƒ`•Ÿ5\ÑÅšÏ’ø\à\ÕI/77Ze—.\î\ÊÃ»\ÔjÅ>”\Í[X†\Æy¤\Úf¼§^ø”fºhí€‘A¦S©_\\\ê“yH1\ZœŠ\×\Ñl|Œ\\=kË¡ñu\ìÏ…Eni¾ Ÿw\ïs >õ6»myo\0x5~;¯¶0TC¸z\n\áô[.\ß2Ü;\×k£ø\ÇM¶\çgOj´‰‘\Ğ\Ùh÷WN\Æº[-\âmr¾µ\ÎAñ\Z\ÕW®^•¯cñ\Z\ÖF\nÿ\0.{š±vwŒ™\Ûó¦\Èó¯·}i°ø‚\Ö\éw,\êsU/<Akmœ\È	ö4dY=\Ònñ\ØVÍ®\ÅPTW3e\â;[™6\î\à÷­Xu\Û›\ÊóA5˜\İ\Í\ÕÚªN\ìSU	7^jh7	x\Æk&mwÉ¬gQf\ç’j¿\Û6ig© x\Éùfş%8\ÆMr>0øw¬\Ù1¸¶\ïM\Ú6\Ï\íZ+t\ê¸w¤\Å\Z¦™”‚Fkr2an†¼ˆ\ét}9\à¿\Â¬\Û\\o\å_\î}\Å\à}ji\ŞA t‘3ùŒ\×\Æ\ÒxGNñöšó\Ø\ãMÖ”\îh[„o¥z—\ìû\ãkŸ^I\á­]Z\Şd\ÃE¿£/µoqÖ‹>Œfk[Œt³ct©¬;‹„¼T)Œ\ãÖ’\Ş\á’eZ\Ùr½\Î»œ\Ô\ê~^k:\Ş\ãõ\ç\å¿ù±Ur\ßR\Ü\Å6z{Š\ã|I\á\r+^l\Ü[G»y@®Š\æ\ë#­e\Í78\Ía:0š\Õ«T§-\ÄMğ\ŞH\Ùl\ä# \áZ¼\Ã\Å>Ô´Y‹OnşY<0\\\×\Ği†<œÕŸ²Áx¢)\áYA\ã\rO\ÙF1\Ğé§Š—5\æ|¯Û$ö<T’I¶2M}\â/ƒúf¬¦KP-¤# W—k¿	u}6F\Ù–!üB³\ägb­õ9\rÉµ	³³\"½\'CğT6Ã”ğ™·ˆ4‘2°õ¯B·€B£<qNú²¥;\ìWÒ´\Ø\ì\×kS\0â«™„lJ\ÔR\\3·Ğ¬f›f„xJ–7\İ\Åf$Šo\Ú3óş)¸·(²qZp\êK´dñ\\\Ì,‹™;ú\ÓöK\ç\Ùl§h=E4®C‰\ØG©Ç»\ï`V¼\Ë Êœ\×+k£1UyƒV´#\ËPLÕœò7\Ô\î\ëHĞ–\'“\ä\ÊÃ©_j¼º‚m\n\ç\r\ïVˆ±Ğš3Á¦[\ê=VFæ¦’e•OÍœ\Ö£!¾Pq\íL9[6^\áõª·­œrk\";½\àu«+x£\ïg4ŠQh‚\êwO8õ¬ÅºS#lU«Ë2L\ãŠÄ¸·–i‚Æ§\æ£B›V6VA#|‡5\å_K;\Ét<×ªi:\Şü¹\Âô\æ¬^|7°\Ön<\Ëßœ\áõ¨q\æ´ŒO˜\Z;Ë«ŒÁ’\áFk°\Ğ>\Z\ëzÊ«\Í[\Ä\İ\ä¾ƒµğ¾“¥€¶Ö‘¦;ãš¹&\å\0ÃŠ…L—Š¶Ç”\éô\ë-Ì­;Ğ+¹°\Òl´\Ô;#P1\Å]i9\Ídj×ª•=_\"9¥ˆ”Š·Ú„JÌ¼X\í}óœ+2\êòI$n{\ÒÇ–Á\Ï5|¤7s¡³¼27^\Õm¦f\ïYzjÕ·\r¾\æ\Ïz¢toƒŒŠ»eG\"§·„,`Ó¥’%PZ\ÈÎ¼³Y\Å`\İ\Ù\âPT|ş•·5Ì—3}\ŞÇŒ\×Q¤øv\ßO·Ü%ÁûSB8‹;[•Œn€\íº´#µ\äO™­j¹T\0˜ô®}õ\îhe\Zò]Án„F¼ú\×=}tY\Î[\" ½\Ôd¬™.ƒH’\ä·/ZÎ’nz\Ôm9\Ç\'š¥qy·<\ã\ëL¤Ziñ\Îk\\ñ%¶’I\ìd\×#\âÏ‰i¼0?q\Ğ<^au©jZ\ä\ŞeÃ“ƒ4hx·\ÇZä’…b‘ô\0w¬}Õ¤`\Äs\ëWbÑ‹`‘“[zNVM»{U\ÇM\Ä\Â\ÆÉ™‡\Ëø\×Ggnh©\à\ÓUc½+F\Ê\Ä\îûµ­Œ\ïböŸj½y­«{W©æ›¦\èòH\Ãc½nG …\ë\"\æ©#>b8`@ÁiV2~SQÿ\0fˆ\Ï\rYµ´ˆ¼}\é…\Ø\äi|¬\Ã\èjTfŸ‹\Z>\Ç\å·*d¹\0sAW-Z[9\â1Ÿlâ­ªù|Î¨\Ã$°ÀaVP\é¸Sbµ4!Õ§v‡m†¬Ç©$ƒ“\Ïz\çn5DS\Â\Ô?\ÚDt¤Ö…!\Ío”\0+P…a$+b¬5\Ö\í\Äp¬Û­b\İ\äh\Üe»\Zù\ã\é\ÔU\ÈU®¬\Ù%€7\Êwez\Õÿ\0øX\ÓC©[\\^Ä²=±d\Ç\Íù\Öd³¼q¬G®JòFóŸ•÷\æœ]™Ev}›\àC\â\r2ˆ¦\Şq†\\ò>µ\èv·vV^µğ¾$\\ø\'Zƒ\æ²\È\Ãr\ç_dx\'\ÆV\Ú\íŒWPJ²Fê§ƒ\ß\Ñ]\Ø\ä«N\Èõ5™\Ğ{Sğ¤„5f\Ú\ê\Ë\'S\Æ*\ÂL“?š\Õ\èrX»%Á=*³¹<ô§4{{\Õi;\Õ³&Y€`3\Í\\\à©<VBğ\Ã5ur\0ô©[‰£¢¶º  ô«`e!\×#Ş±,fp+F9>\\\ç5d{\ËTIöfÿ\0–J3\è*½\îñ\â!´Š²&¥qš-eceRK©\Ê\Şh\×6\ê\ÛW#\ëY\\èŸ¼]¤W}÷‰¨¦°‚e\ÑH©·™\ÑGsƒûS\ØúU½<\r‚yZ\İÔ¼1ˆ¥\0s…ªRY\È#\å\ä8§cx\ÕR1®\ä›XºF6¦y®\ÇIµƒJ·TU\Ë\ã&³l­\ÄJ	P§\éVü\Å\\œ\ä\Õ%a½K—7O#ax4±\Û\ÈpY±Yo}µ¾Z·ì­Š£&»To3×´]´&P_\ïöªj/\àË+˜Ö¼@D\çc’Gjd\Ø\ë\çu(\Ø=¹¬Û‹\É&R­\È\ÌZ\ë÷“0UF#Öº}-e¸\Úf­P¯Ë¹’\×\áfÚ§¿5 ‹,\Äm\\û\Ö\Óøz\Ís ŒŒƒT&»ÿ\0*\áOJ\åUºy`<Ê›\ìñ\Å\"m\ÕO\í/ö³R\Ãx%\"•‘\Ë9¶mE&\Ğ9\ïV~Ô‹\É\â³·*µ\í\á6öª0/I¨$\Ò­È¨®.3Ş°¬\æfbI\â´<Ì¯&]‘I\'QX:¡\Îñ\ïZògô\Ï\ê—\0nÉ ‰.„âµE	˜Æ´l<5u¬¶\áû¨s÷½k ‹\áö‘b¡\ç›\Í­3C\n\ÇRpÛ–úVõ½ûu\ÈAş\Õ6K\r.\ÑO–•BmZ\ÊÕ°!\ÜO÷¨$\ÙmKtx±öQBG,„%y\Ía¶¾<´UÂ“ûi¤û\ÌM!mõ½‰\ÄK½»¹§\ê%-\Z¢œõ\É&¦I\Î*ŒÚ¦\çc½\é)§|\×S³ùk:i†qš¯ö \"\ëœ\Õ9.3\ÔĞŠ°û©\Ã5Qiğx¨®®–<\ä\×â¿ˆ–¾„¨e–s\Ñ¨–tº¶µ“	š\âA\Zc½x×Œ>\']jÓµ¾›¹`\ä½sş ñe÷‰g\ÍÃ²Gü1çŠ‹N´Û©H›’\ØØ·\Ü1‘\Ï<šÙ¶´’áŒqRYÙ´„ex®\Î\rŠ/?J\Ö(|\Äz~ò0\Şq]†jÎ‘§\É \ÂFO\á]^—\áùCqŠÛ–\ä6g\Ûè»”zÖ„:Yƒ2MuVºHP\ÜşfM%05v\Ğ\Ì\åcó¢\'\n›\í\í\åoÿ\0dÿ\01\ã\éV?±`e\È!½jB\Ç,$’`15«gòm\ßÚ´ŸEX\Æb¥R\Â\å0\Û\ßj_ö$\È\Ï¬Áp$\åBXŠŒ¼0aõ«H€M\0t?\Ù\æ\å7yÊ¾\Õöe?5™oª49\ÃdU\Èõ\Æ\ãš»ÿ\0\Â\å³P\É\á\Ø\Ó<÷­µ2’\r¤,X7ZO`>&‡K´u¤\á†zV&­ \Ã )]\ë\Ôâ¶¤Y!µÛŸx\Íe\Ë\æ,j\èwH~õ|\â\Õ\\ú\Î\Æ\"\é/±Y\Ô\×9yh\Í`ø=k±ººi—d±`/S\\N©ba¸%rkM7#©CS´‚ª\Ã$Œƒ\é[\ß~*M\à]J;I¥i,]°ş\ZÁ¾S&1¸®cXµ’Oğ\ãŠpµÈŸ¼¬~x[Å°j\Öiq›\âq•`}« ·\Ör‚\Z¾øIñ²O\ãN\Ô\Ë=\âU³\ÊûšúEñd:ÅŒW–’‰ ”nV¨«r\×Stô=†\ß\\YA¾l\Ô\Ë|¯Eyµ¹\ïZ0\ë?7_Ö­K±\Ï\Ëm\Î\ŞIˆ\Ú\ËZÉº59®:e5\Ùûpù`\nJV`tñ1SÁ«±\\\Ô\×-k«\îa\Ïj×¶ºƒ[^\âò6\Òz•f¬¤œsO\à\î#µ;\Ü\É\èk,Ÿ\íb¦I=Mf	³if½XW\'C\ĞV/^^y1\ä*Æ›47–û€µ\Ì\Í|/\"`§¿­M\áo1nŸs’)šs4[H{„ÿ\0G!Maÿ\0c\ê7Z\îc\É\é\ÍX\Ú08ª*5š\Ğóß²Ü¯fvú\nµŸzËŸ( ÷®Ñ¤U^œ\ÕI®•\ÅUŠö\Ç\'\æ?a•ş¸¦>—k\Ë\"\îc\ÜÓ¼Ed¶\åna\'v~j­\Í2+nÁ4¬g\ín5£n2 zUˆueŒcv*[=¯!ó†\å÷­;\r\Ú][—‰¶¾*ŒÜœ‰ô\İYn#\Ú[·\\\ÖV­lVb\Ù\È5\å\Ü\è÷¬%S·±­v¼[\ÈFN\rFqcÛµZ†\åcP{\Öm\ã}O˜`v¨dºßŒ\Z@vqN«g\æ•\Ìj­u9!°™\â³5mzo%-­\Ã)\Ç\Ìø\È—\á=gX•ov[\Ëc5kP±½\Üvñ.÷Qõ¨¤ñBM¨w÷ö«#Àz}Œ\é\×\í)¦j\ÅÖƒ¦“(Ò°‡b9µI§RŒ\Ò\Ø\éa±5\ä˜vú\Ö]Æ¼7³¢¢\Õ&\Ö$r6\îi]\n\Ç_yª–h\ãˆ\â^i¯u\ç!ù³ø\ÖwHÁ\Ç\ëO>]C.Kp6kPmÏšĞ’epIlVN¡p}EJ\ÃlJ·\'š\Í7¤)¢ûA\ÎjK6$»\Û\ÇZjMœ\Öb\Üªz–½›<î± \å±TMÍ›‹­‹÷°+\Öüa§\èğ3Mrñ3^Yã¿ŒlªÖš2™e\'\æ”ô¸;}CZ”\\^J\Ò3s´šsº\×>&_\ë<VƒË<7­r\íaq})yİ\É\Ï&µ\ìôBF\nšŞ³\Ğ\Ûw š»\Îb\×C,\ãp8úWW§iqÆ£r\äŠÙ±\Ñ^ã„~\Ñi\Şy€,1Z¤F‡?g¥´˜•\×h^z™Mm\ØøZTlzÖœp[Ú®\æ­hCe›6\Ú\Üa6ñZP˜\ã\ÆJ\Ö7˜?„\Z9\ä\Î\Ğ@­Q7:ˆ\ïaN)S·–\Ísik/ñf´,´µºùw`\Ó«4ş\İ‡‚\rM.\Ù5N]\'\ìj3È§[‘»kTX´h\\MP€Tv÷ ±VqŠj\ÙÁ2\ç~Ni\ÃKCü@ş4 »k}¼\í&ª6Ÿ‹º&9diQ†\äş´÷°‹n3ùP#*\ãI’\È\nESÛ·‚rk\\¼–\í€w\'¡4Ç\Ç!tşô£opÑ·S]¼¾da³\\ô\Ö2[\ÈCò½ˆ­\r>ôB¤=\'° .­\r­®%f•¾÷ ¬‹\íi!a\å@«¸óš«=­\Ëc~cS\r6;\Ëty•ƒ¯…|\ê^\éõr+\ë¿6\ß\Î®Ÿ\éX\Ó\î\"%\à+mô÷“rº²D:{\ÒI¦¤‹œ«sT•\É9\Ù,\à™O—\Õ\È\í\\î½¢\Æñ\îV\È\ÍvZ„\Æ	\ït®r\Êdw7cjóŠVå•¤Ö‡›kº˜†@6qùÔ\rø¥­xd·f’\Ç9ò‰\é]µ£ˆJ\Û\í\é^{¬xvd¸\Û*2œu­£g¹\Ï+ŸL|=ø\í¢ø»´‚\Ö\ìpÑ¹¯V·Ô‘\Ô2°a\ê\r~sjs\éw;\í‹$w)Á¯Jğ\í«øV­õö\Ø\ã\æ\åÀª\ä\ìb\Ú{ŸoCªößÆ®Åª3//ú×†xGã–\âDP·ko1\ë‡¡¯E³Õ–h\Ã\Ç\"ÈŒ8*EO)6G}c©7M\Õ\Ò\éz‘*r\Õ\ævZ¯\Ìô®‹O\ÔÀ)\æª,\ÊJÇ£Áz\n‚H©£ºC\Æ\ìf¹;]K1j\Ô\×\ÛB\íl\Z´\Ì^\ç^® ¯B+Ä·\Â \àñšÏ‡Pg‡*\Ù\"¢]a^A {\Õ9Ø§¤\ê\ÓY\Í$r\î9\ás]\ï…$ó¥ßH®\'PXš\á@½u\Z¥¹@¸½Rz­H¶\\rjFjÌ¶\Ô\ã‘\rÚ¦ûtmÑ¹­,c±$Û¶\ä.jŒ›T\ÅYûZ±\Æj©FÜ“UrR\ês\'aöP=\ë\ÎpJ\n¹¯\\TóûV2\\ù€¤Gr\Ğ\Z\\\ë>\Å&\Òø\ã­Smu¬Ï–EQş\Ó\Õ%&o-Š™,!†–q½€\àš}¡£ÿ\0	®¥	‚U\ÜøÀ8ª6ö²$\ÛY”j\ã¤\ÕfƒPb›V<\Ö\Ô%™¹\Çz‘ò.¥¦Á\çï·¢\×ólºt^<V†¡¬FaY:œrs\\¬º iËƒÆ!Xf¥¬Og|\Â<\ZÑ‡\Æ\Z–™c<…Rn\0\Ï\ë\n\Ò)y©u	\Ö\ëI\Ó\ã\'ªM;\Øv5Ÿ\ÄOw–i™‰ªr^É¬U>Oñ©V\àzÔ¶;Œä´\ëy>:\Öz\Üõ§\Åz±6X\à\Ô\Üv:\ÛiŠ\Â*•\Í\æ\ÜóŠ\Í]q<nª—\Z¢H„ƒ@\"üš©\àªóİ‰1\Íd\Ü\ç<S\'¾\Ş\ÒH¨£M2´4Za\ëP\Ü_En›\äpŠ9%\ç$ø³§il`³\İyq\í\È\Íy¾©\â-o\Åº¸6ğÿ\0Qú{\ÓH–\ÏSñ\Å8m\Ù\âÓ¶\Ü?M\Ù\àWš\êZ–¡\âK¢×·LPôŒ*®“/2@ô®‡Jğü­ \Ê1?J\Ñ+™‘\éú\rºcŒŸZê´­.\ÕoIğ\Õ\Ö>FEúWq£øaPÒ¿>•¢ˆf•„A(\Ç\Õ\Ñiö\Ğğ9J\é¬ü?gn c$VŒzl#\î¢\Õ\ØÍ³\İD?r\éW\áóXÿ\0\nŠÓ’\Å8	ŒÓ£\Ñ\çe\ÈV\ÉV\Ùx\İ\'Ö¦ŒZ\Æ1Ş§\Ãó\ÈO8«øu”1¸¢\Â\"ŠKd*ò^[ª–•t»XÀ\Ã5b;8\ni\ßAØ‰.-\æº*lş]¹Y\"8oJl¬°\ÊTSf\ÌÁ\ëSq­W:ƒ\İ\ÂsYş[7n\Ô7( Q—¾s\ïE\ËHz«*Š<É¢\ç&°Ü·C\ÅLº}Ô‹÷©dw\Ópz\n·\á“=ùª-eq\Ã.GÒ’6xØ-¨…\çb\àñUİ˜‚¹zT\Ğ\Ü\ê~;]G·\åA7(,’G‘($Z« >Q[>t2Œ5T¸³]ÙŒ\ä\Z–ô)F\çÆ·\æ\â\Îa\æ0°\ãf	\Z(DŒ<\È\Ï b‘a7–\ì²uSÁõ­+{u\ÌÛ„’Æ¾y|,ú—¹D)¼‡xóÿ\0Ö¥¸·µ¾\0ƒ·\ËŞ¤0µºò¾¹¬\Ù<\ÈfV\Øx¢2]FkF6·ƒvsXWY\ìA€x\Ít·\ÊfÀ%‡C\\Ù·T.\á0’÷¾µM\İ\Ü\Æm\ÔqCt­‡R=k7RŠ@TÌ\rt\Ó\é6°2È›™=GJ†\ëL´3	P\ìb?†2\Z<«Xğ‰’G(myî±£¼.\êCv\Å} ú4r#²p+\Õü4—’\Ã\Ë9\É$Vñ•–¦†§J³\ÛHJ3#(\È+Ö·¼5ñ³\Å>˜y²O.\É	#½\âO\n½\Ö\ß+\änŒ+Ô¼6\Ê	\Ù\Åk£1\å±ô·\ÂÚ£LñC}—Y_°İ7Â½÷IñE½\äbKk„‘\È(Ù¯\Ì\å\Ò\Z\Şb\Ê6\Z\è´?ˆ^\"ğ\Ã)²\Ô$aû»8ö¬\ÜH?M¬5\Æl|\ÃZ\Ø]`ü\×Àı­µ­>tY„O\n¥—­}\ào\Şñ†ÕŠñb”ÿ\0\Ë9z\\®\Â\åG¾Á¬y\'”“\İ,’o\×#mª%Â‰UtnC/5r=Kn9È¢ú¡4u\Ğ\í~Jô©\í5XşY6µsBù6\rH³²œ«U_Rynv\ÚŠoÌ‚\ÙYºsZM\â\İF\×\"X\ç\ï\nó›k\é-\æ)Á<Wk£ø¢\ÓRŒCq´IÜµR›2q5\íünT–cÏ¡5bhH!\ïz¡q\á[{\Å\Ì.9çŠ¬¾6l\ÎkNarlvq;I\æ9æ™±a¸ã¡¬\Û;–•Xô\â®\\HUÕ‰\â´%\Ø\Ùñşnõ\Êx›TX\Ğ\Ã\Ãf´/µ\r·^•À\ßjFòé˜¤\Ù)j6eÊ´ŒjˆÔš#µ\Z† R=£½e,¾a\'<\Ô\ßSS~}S}˜\0Vh}\Ì=1\ÅWš\àF 3aj!y~ı\Ö6ÙƒY•\ÏQ\\ô·,˜\'…\àU\Ï\í\0T\áø¬\Ù\ßs¥\ÌY;]7´Ÿjj¤\×@ñQIxª¹\Èü\ên-x\ÜóQI|}y¬yµT\\\àŠ\çµiºZ\â[d\ì©Ö˜Ÿ\Ú\äf\à\ÔSk–\Ö1³\Ü\Ü$ w¶+\È5Š7\×\ÌSO‡\É\ß=k\ì¯5©<\ëé¥˜\ç¦xüª\Ò$ô­o\ã-…š´Zdm{?M\Ø\à\Zó\ÍK]ñŠ§\İqp\ÑBOú´­\r\'\ÃA›Å¨\æ»]+Á£†‘v\Õ%r\Â\éšĞ°ı\ÓKüëª±\Òb*2¥v–ú}½ˆÀEc\ïW\"\Òd\Ô\\1ƒb‡ªFR34oÅ´6ƒ]Ş…\áûX@fª–\Z+G€[h­«X^İ•C\äzVÑŠFWf\Ì1\Ã\ÄIÓ½Hu\Ã\Zş•5Š¹h¿\Z\Ó[¨•´úâ¬›”\í´\Ùñ–mµ#\Æmø\å»\Õ\è\íş\Ğ\Ã÷\Ì«ğ\è³d»7Ö‚LT¸+õr=B|\0‘’+v\ÛD†.\Ù£¬*\nŒ=©\Üh\æ\Õ\ïX¨Â—È½‘¹\r].\"N7Î\æ!\ÆPY\ÎÃ¥¹\å·T¬‚\ÖD\çŠÕ¼™c„°\ç¨Z\ØIª\\\'dcŞŠKc#fW\îxúf¥HÁ\àu­·\Òü»ò1\Ç5öxŒf€(Ç§‚\Ù\'Štš¡«MFx8¡‰\îifˆ2psNK\Écluz©\İÃ´nZb¹n\ŞüL\áXsW<…—?(\ë\\\Ê\Ü4rs[\Úmğ‘BŠ	[%\ç+\Íg\Í\Ö \n\Ş1Ò³\î­3½h’JW½Zk„õ$\ZÉ¹ó,\æu\ÍtV—b\æ=À\æ³{Dù\Æ\â\Æ\êb2P\ç©Zƒ\ÄWvkº%\'˜Ö³F\é6\Ç<ÿ\0…g‹\Éò¤a\Íx?eŸM\Ôd0\Û$(s\Î85,‘\Ç\Õ#;†EG\n\Û\Ço\"0!ˆùj;[9Wpó8\éP¾„[ùŒ~}zsKıŒºˆòv\ï8\Î\êÕº	\áR\Ğ\ìn¤Šƒ2\ÚÀ\Û\æ–O\Ì\n j\èÉ¸\Ñ&\Ím\ãÜ»Oz\Í6\ÒÄ¥dLƒÀ8­©%+Ù‹e¸\'=ê„«4B©1©\á³V:-ô\Ù\àŠıÈ¨\î4ˆ¯£H°\İA­0\ï;XƒŠ‚k¦ù\ß\ïr,rºß„V\â»QŠ÷=«\Îõo5»?\0ÿ\0Jö©$dù&Ee#\å=\ëT\Ğá¾“2°w_SV¥dL¢\nÔ¼/\çÃ½\í\\^¡¤\Éo#0k\è-K\Âğn\ßnt0{W/¬x4HÛ‚\ï>Õ¤eu©\Í*z5†:®\r2\î´\Ù¶óÊŠq^‰®xe\ã\Ë\ì\ÆÑƒ\År?aó”¦q\ëZ\èÑ·±\ê\r¾;\ë\ZT‘D\Ó\Éu\01\Ês¥{\îûD\è,:Œ§K\Ó÷¼)ük\ã›}6X@’e9ê¢º(l\ÓZ\Ó\Ş\Úş&\r¡®i-EkŸvXx«OÕ‘f²½†\ådyl	­HuC\Z¿8ô]\'\Äş½”\éz\äÖ° Ê‚\çò\Åt\Şı¬¼]á‹³\êÑ®¡\Z»™pHÏ­ZA²?B\"¾¡¦*w#`úŠù«Á?µ·‡uÀ‘^—\Ó\ç=¤û¿{.‡\ã\í#^Z\ÓP·Ÿ¸\Í\' M\Ò|mu¦¨Fve¦ºHş -Ò€NC^V\Ó	mÀş4‹vö\ç*Ø¤¥©\'´i7búe\Ï5\ÑêŠÄŒÍŒ\nğ]/\Å\×:|\Ê\Ê\Üf·.üyu©aKpk¡H\ÊQ7¼A®\Çq\Ğ\Ö\Ú\Õcİ»\æ\éYs^\åß¸&¨]jh¼9¡²yM‹£#MCê­k\nmX\â4Á©©\èÔ®U™w^¼%Wi\ïYVºƒn\å¸\ÍVÔµ7<÷¬\Æ\Õ`µ–UC×“RRGf—ñ\ãÒ‘¯\Õ@\Ë~u\æ\Z\ÇÅ­EÀŸPLú)¸_~\Ñğ«eBn€\ëğ(+S\Ş5-fKv’I1ş\Õy\æ·ñb\ÂØ´v\å®$\éòô¯\Ö|y\â_D×—¡a~#„t©\ãñB\è­wğ.÷PY”ûP§ \Üx«W×®YL·Zš\Ã\Ãm$››2±\êX\Önƒ\â­6óhŠh·z\ÍzO‡\ìE\Ö\ÖFV\ì‘VµØ†eÅ¡h€XÀj\è4\İ.(\ãù“\æ5\ÔX\è¨\Ì7.}«¡µğı¬˜6Ÿa[\Ä\ÆO¡‹¡\é)FF\\Õ¹oc<ûJ \Ç@H®\ÃÁñ²0­5ğıÕºÆ«\åSš\Ö12l\ÎÓ¼òù³®[¨«¿cUı\Ôiøb·Œ\Ç\ÊX\äŒ\Ä\0\ÇJ¿¥\ÛÚ…-š\Õ+{˜–^–EEhG\áñ	Ú·„Œ\ÙXñ·­:\Ş\Ù\Ú]Çš¢Yœ¶2p¡EjC¤$0\îd\â´|‘`° ¸wh\Î\Ş( \Î]‹.Öµ»ƒ±¡ä˜İ«I•‘04\ÔY\ÔF6¶æª’,\Ó67\àUK3\r]M£šC°Ÿb\ÛÕ‰§ùJ¸\É4\Øï„Fßw«/™FÎ€úP2‘¶¹ù:š$¸6\ì¢&ùµ\rg3µXIştX±\ßa»ó©BqƒY¹H©â˜\Í0.´e›&˜mA\ïMm¼Ó\ä–ö¤;‘y{r\rCq\rNdóH~`qLG9y.*{\'ym<õ«7¶¥÷Ö¨Y\ÌÖ³ÃŠ\0Ú‡R–¾	«–÷‘\Üd\çÒ¡H\Ö\ê%#‘Ú³d†[[À¸ ±â‚¹KZ¥šÌ¾`\â¨Zİµ®@©u-p\Ú\Ü-•´m}~\Ã\å‚.p¾¬{TQxU\Ôó6­~mIûZô_©¨{\Z-¡…¡g*r…¹õ·1\É\"\æ3óiaÖš†¶¹=§‘ò\ÔWº“XÆ·\n‹»;q\í_>ŒúW+I¯™Å—œ8«6ön»\Ùš¾&[\Ëxne‰Kc gš\Ï\Äğ.e´*€ò ûÔ­5Ô`¦\Ş\"	€¦£Ô¬\é#6\nŒsEõô-s¶h\Ô¢ûSmõH\î0\'\ËzµA},R\Ö-İ­dx\ß?7§x}Œ\Ö$8ù\ÇSVBA9t”ƒÈ«V¶–\Öö­#\\\Z¦S\Ø\ÆÕ•\í\Ğ4#>µK\ì_kò1RNxÒ¥©\Õ\ÖE³PïŒŠ³¥ø\'T¼\İ‘E`KB38\İbÅ‘`x\Ë6\Ş\Ç\ëR;Cs\Z,‰°·Zõ?\ál³4r3F‡†>•\ÓÁğ®\Ê\Ö\ŞX\×‘¸Q\Ír~-\áF>@i#s‘òš–O‡›72 \ã­}ue¤iö+h®\Ù\Æ\èû{U{V\Ò.°’\Ì“<\\R\ÔG\Íz—Áyõ\0\ÆlªœV÷Áı/@ò\ÚtÁ\àn\Í}A}s˜KHü\à[\Åy\×Ä­;ûBk{Xƒ&618$t\ÍTj4gdõ<KR\Ò4\í$lŠ\ßj‘œ\â³.,l¦ˆ°\01¥vpøF\î\Ê\×8\İ\Êù\Ø\Ç\ëL\Ô4¤µ\Ó~\Ñ\å,\Äu’?»\×Ú‰]²yQ\å&H\ßj\ày®\Ç\ŞóMyQ.\"\ç8\ê+Ùµf‘ö.€@ö<\×?}¦˜\äM\0e\ÇC\ÍkN]œ\à’\Ğù\æ\ßG½±³Š\î\â#…ş\ë0 5vµ\Õfu•.¦²ˆòŒEw:•µ\ß\ÄK¨t[q\r¥‹v\Ú0Euv\r`Ó®„óÜ±1€ª¬p {V²’2Q\Ô\é|\ã\Ïxf\Õ\×R^\Ûñ>I>\à×ªi?´;²±ßŸ\ìù\àN5\âºÇ‹4­\rV™elp¹\æ^4ñ|>&dX\âh„}6÷¬,\Çd™÷-¶£g©®ûKÈ¦ôÍ«K$±\çkWÀ\Z?Šõm\r•\ìï§„\ã cÊ»o.X|¡¨3\01µh–°nµ9£\Î\ç\ê\Õ\Ë\ë^=\Óô…\ïP†3ı\İÀšùOPø™\â=[?iÔ¥*{Š\ç¯.nn›Ì’F÷f$\Õ\r+ŸI\ë\ß´M?	µ\Ëz)\â¹;¯\ÚR\à6-l\Õ@é¹«\ÂÀód\0\ç5¥š6)\\|§_¯ürñ6±!U—\ÉL\äm®STñ—ˆ5&mFlz\"«,IÍ¿š¶ \n6®E+”¢gEoss—–f“=\Ø\æ¬G¾\Ş3l†\ëZ{BFOÒ•l\Î\åg_—¨¥\Ì_*&¸¾i €Š0«NK¨[¼®w•úU+ø\ä,\n/\Ğøv\Ñ\ä‰Œ†\á¿*WS[À~·Ô­¡qm\"·y	\â½2\Ç\Â:•[O¿šİ—œ«ŸJ\äü;Ş—s»ù\Ò\é\ÊÛŠGÁúW©ø_\Å[o&70kE¸¹wnÙ¥4/fO\á\ë\ïi“2\Ë\Z^Æ¨$,\İq]U¯\ÇKMPKmgM\İ\È\Èd\\‚*—†|]ª[\Üjfõcoµ¦\È|®‘Jf›£\Ï<\ì·&;\çş5FGÒº#T\ÉĞ¹\ì>ø\Ó\áMq¶[\ß\ÇŒ\r’§5\èú~£\â†U”AR\r|\êÿ\0	t\Ë1wyjm®\Ü\Í\Æ}*î›¥\Ü\Ú0ş\É\Õ\ît\Ù\á\\ˆeÁv$WT+G©\Ë,<¥\Ö\Ú;¨À‘\çEY¶ğ¤€“ñ\ØW†\é?<Y¢®5]:N\Ùy3Z>H÷\"»üsğÖ§ ‰\îş\Åq\Ô\Åpv‘]J¢’0•)D\ïdğÍª—·˜K\ê\r2öxÇ†Õ«¦\ë‘\ßB&·K§\"¬¶¥Ÿ»•2>ŸÖC.\æ3L³µ¸§L#\ê¤šu”Š\ßgÿ\0z¨M¤]©%£ŞŸ\ì\Ó&\Æ}«\É1l|™âµºF»‰\äU[…‰X\ì# 4·	ˆ\É-\ì(Itdb\"MØ§\Çnò|\Íòš·j¨\n›G¿Zuäƒ•S‚x¤2›\æ,qƒ$Ö”,¨õZ\Ş†½\è|©À¦¦m\Ê\ïC\íu õ¨VM«Lg-\È\Ò^\Ø\ÍU+¶OÂ¬¬Çœı\îõŒ\Æ\á×½0\Òy¤\r\ÏZO³£1c“R,#·\0\İô\ï3p¡¢\Û\Ïj\Æ(…\ÇzÊ¾µgft\éš\Öò\Ç<SB.1@\Ê:]\Ó[²«—4ız\éõ&¶\Ó,\Îon\Î\ĞÃ¬jª¶\ì\Ü\0£œñK\à{S\'Œõ©İ²\Ö\É)ƒ<œTÉš‡ü=g\áT\ÂG\æ\Ü7ß¸~Y\Ï×½_º¼I#ƒŞ¥ºFhwg,k˜“Y1\Ìr¸\ã“\Øg\ÂZ\çü„£úÔš—ü‚‡ÖŠ+\Â[3è¥º4­\ã\Ö\Ï\éY×Ÿ\ë\æÿ\0zŠ(\èYzoøóŠ£·ÿ\0YøQEP	kÿ\0!Wÿ\0v®/üy\Éşñ¢ŠR\İ\Ø\êşÿ\0\Ç\İ\×û¢½ONÿ\0yŞ¢Š¬ƒZù\Éô¤\Ô?\Õ\Ûÿ\0\×\Z(¡ns\Ï4o»¨\×sü«™\Õ?\ãùÿ\0\à_\È\ÑEY=M\'şEwúµsV=dú\ÑEJÜ”y\Æoõ‹ş\íWğ\×ü“û¯ú\ê¿ÒŠ+w¸™Ÿ\ë¢ÿ\0®Ö¹SşBg\éEİ“-„økÿ\0!\ÍZ¤øƒÿ\0ÿ\0\\V\âx%÷ú\áşù¨Gú\Ê(­ç¹¡\'o¥:»Eb?¼*\ßü³ü(¢•m\ã\àıkb?õ…VEt3¯¾ğ­\r/ıI¢Š\n‰jõhÿ\0ªZ( ¢)>è®›\Â_\êÿ\0\Z(¤Yè–Ÿñø\ë•Yµÿ\0„_\îÿ\0J(¬\Ë:›?½\×úWMú\Èè¢ª;\ìwšü{·ıuZ†oùj\ß\ï/ò¢Š×©ŸCF/õ7_õ\Éÿ\0¥|\ë\ãù\Z\"ÿ\0®tQ]\Ôö9ª[~\Î?ò,Àz\âÿ\0«o­WD7<Ê›µÿ\0\\µ½k÷*(­Y\Êø‹ş?[\ëET¢Š\0\Õ_¼\ÕI¿\×\Z( ¼*F¢Š\0‡øªQ÷h¢—P\"“½#uQL	\î\ZU\éE\0Iş¬\ÕqŞŠ(i­÷MPKÿ\0\Ç\Øú\Õÿ\0‡òñı|/ò¢Š\ÎEµÿ\0o¡şU\Ç\ê?\ë\éıT½‹?ÿ\Ù'),(19110436,'Pham Van Thang','2001-01-01','Gia Lai','nam','6000000',NULL,302,NULL),(19120113,'Ho Viet Trung','2001-01-02','Da Nang','nam','6000000',NULL,102,NULL),(19201093,'Doan Nhat Nhat','2001-02-04','Long An','nam','6000000',NULL,102,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0BExif\0\0MM\0*\0\0\0\0‡i\0\0\0\0\0\0\0\Z\0\0\0\0\0@\0\0\0\0\0\0(\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0															\r\r%\Z%))%756\Z*2>-)0;!ÿ\Û\0C	,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,ÿÀ\0P\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0˜·4›©ZJú“óÁÛ¨\İM¢\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\í\Ôn¦\Ñ@\İF\êm\0\íÆ—4\Êu1\r=h õ¢ÂŠ( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( M§S\ÓÖŠZ)(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¤\Ïa\Ôy{Ñ‘\ê?\n.‡\Ë.¨Z(\çühühº˜QH0A9\'‘Ó¦iÊ§™\É>ÁE´«Õ€§G2\Z§\'\Ğ(¤\r\è\Ê~‡?Ê—½Ë œZ\İq\Ø\Ò\ãµQ:‰EŠ(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0§Si\Ô\Ä4õ¢ƒÖŠC\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(\ãÖ¡¸#/3*¨é»©>Â¦SQÕ—NœªK–(”·n3Œ\ã<\ã§5J}F\İ¦\í\Û~ÿ\0•—\Ûõ+\Ç\ëX÷º\Ä\î®!\İF\ÜmF\çşú\Åb´¬C)ƒ<¹\ëÖ¼ê¸¶¶>‡•¤¯3¡›Wh\ÆUn\ì*—\çs´\çŞ«nÎœ34§¦T*®Á\éõ†òğAbX‘\Ïfú\éQnc˜\ãÒ¹&G¦°t—C§\Ä.7Ä¬\Øùˆm ‚p8\"®®³h\ày„\Ä\Ê2\ã†Rz\\hlr	8\É\Ï^M81\ç$÷\ï‘Uõ©²%—Qz\Ø\ê­oc’\ÎSŸ\ßÂ¦Yÿ\0q‰\0€OQ\ÅS›Tš= 0gP¡\à®@Á\â±ó\":£m ÜNi¡À‰z\İXƒ¹Á\ìsI\â\Øq\ÂB=\r	5+¶\Îfv<\ÚvO9\Õ]\î\ç$‚\îq\Óİª°Û€T`zœ\Zkœu\ëYº’}N˜Ñ‚\è\\ûd‹÷@Áz’1Ï¦*hõk\åP¦w\Æ\ÍÕ‡½fn¤-\îqK\ÚË£°ƒ\İñx‚\évd¤€›zm\Ï=ˆ­Kmv\Ær¡¡oF\åOü\n¸õf©Vò?¡©AF\Ú\ÙEy*\ÊzdŠ\Ú8©\Çs–¦_J¢\ÑúIŠ\n::Œ§ ş4\ïóŠ\áa¸¼µ}ö\î\ß)8\nr1\ì·g¯’Ü¦{nL\ÌWm,b›÷”Î°7\è¦E,3(d`x\Î;üÔ˜®\å$ö<yBPv’Š(¦fQE\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nu6LCOZ(=h¤0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(z\0SY•™ˆ\n\Îj½\å\í½š•†\ã÷¹ü«—¿\Õ.\î\Òv¡?*)\â¸\ëb•=\é\ár\é\Öwz#j\ïZŠ\É\Ö#Œ\ç8\ã¨\í\\\İ\Å\äÓ¶÷r\ÍØDHÁ¤ñÏµDs\Ï\'úW—R¼¦}=$(­1\ç<’s\î~”„“…Ê«‘\Ôöö“§>¼Srzq\Ï\\ÿ\0:ÁİHŸL~”˜\Ï\0÷ÿ\0\n\\ñ@œt¥\r€,qÇµ3·\àh\Ïó?\á@Ç–<\ãş&Œ€¾y¦€Nq\Î>¤Qş~”\nÃ£vzı)¹¤\ä\Ğ¸\r\Ï\àE;qúz\n\'öü\é\Ã9\0\0O¡\ï@\Å÷\Î;g\ÜúÔˆr\ÊrN\Ö\é‚=\rGÀ,0A\î¶;RŒq\Î:8\àwl±\Û#8\Éÿ\0eĞ¯fÊŒ®\à`%Nö€\àŠ‹p8v8Ásµ\Ãw4\â\n–Ra\È#\åŠ\n½\Ñrû«S+\ç*\êcp\èk¤\Óõx.ğ®vJN\n±şU\È+1%û\ÊR;\ZDgVWS†P;\àqÏ¸®š5\ÜVã¶§¢ú\ÒW/c­O$sñ€óó(\Ï\Ş½t‘M\rÂ‰\"p\ê}:b+×¥^5ò¸Œ\è½v$¢Š+sƒ\È(¢ŠQE\0QE\0QE\0QE\0QE\0QE\0\êm:˜†´Pz\ÑHaEPEPEPEPEPEPEP-Cüû~5Ÿ¨jÙ©Aƒ1^ õ5%ı\ìvÑ£2m\\…\ÜzrOoZ\än$š\âVi[t­’\ìø\Û\ZÀÃµy¸œG.ˆú».\æı\åD%\Å\ÔÓ³I!b[!}j‡n\ĞY\ÎG\Ì{(\ì>µ,\"9$\Ëı\ÔB\çÂŠ;ıj\'2JCÂ–u)\ÍyM¶\î}<\" ¬ˆûñ\ĞgOznsÛŠs)\È\ãŸZk\àƒÀ^q@¯q¤\äñÛ¥8!Dg n*0œ!8\ÜGò¥ÁR\á”rFxn‹õ¦w$– ¶}j3§ô¤¥\ãŸsGÁühjJqÁ\ÏgŠm\0üûR\æŠOJ\0)h\Å%\0/û‚\r\à{`ñ£\Óó zö~”\0¼œ\ä’@\ÎOzr“\Ø\às\Ğæ°2¶2£\ïŒóµ¸\ã\éO\Ş[±şSŸLõü\èÁ”¡I+‚¿7Œ\çµ2=§\åv\Ã`„a\È\Ü9\0û\ZnX|À¤yj~v‘\È#.8gª\Ğò.\îwr@lSI\Ï²N\î2G½+*Iˆœ¡ ú;\Ğy\æº\îŒv8õ\è2v……9\\EhX\ê\Ú2º‰sÃV÷ªrÛ—v	N¸ a±M*>\î2\ÎT÷5q“ƒº&t\ãR<²G [\\Áw\Í\àı\å\î§\ÜT\Õ\ÄY_\Ïe)’&\ã8ua\é8õ®\Æ\Ş\æ\Ş\ê1,,\nœ\ê§\Ğæ½Œ=u=ò8ü¨·(­	¨¢Š\ì< ¢Š(QE\0QE\0QE\0QE\0QE\0S©´\êb\Zz\ÑA\ëE!…Q@Q@Q@Q@Q@Q@W»œ[\Ä\ï‚H\í€Oz±œdŸÓš\åõk\ß6F*	¹#\ç®xİ\å\\˜š¼Š\Èõ2\Ü/¶©\ÌöE»™¦wgbX¿((ÃŸj¨H@‰g\ÏV\Ç#>\Õ&\ĞN\ĞAÚ»‰9Ç©\ÍFT·?B·jñ[\æÕŸe(+!q\ŞCºAÃ•_Ã­>5-œ±\ÈtTS\ŞI8\'?Nj0»ˆ©\Èô\0wo¥HŒ˜H;w4œpÛ¾\èÊ\ØÀ	Áa\Ë\î\Ù\Ç@8¦\í\İ\Û\äF\ä\ãï·¥H˜\nÍƒ¸£ª·$dŒÇ \Í*Ç²!¼Á\\x»ú\Ò%+‘1v˜’w30ÿ\0hœQ{\Ô\Ä7—I‘˜\ÆŒÕˆı3o`9\ì?¯4Ğo_rqM\èxçŠ—	;“À\Çlu5ñ\ß\æü(Rc‘N*9Á;{gù\Ò\ã€G^¸ ñ\Ô\ç°\ã\èh¿\ÏJaß®;\Ñ\é\Ó<gô\0`şj\r&3ı\Z^y\ïŒc\éKŒ— ps\ì[\06\ÄU·¸\Æ08ñ¤cĞ‚¿mŒ@$+ŸOz“n\äg#½\07Œ¡TR5G\ç©\äúS•ˆ(9V\0}@;…G\Ğs\ØRŒŒ\èqõ ğA\ã£gù\æ” r§R¹[\Å(\ÆAùÜÛ¸Ò¦7œ“”}	\"€\í`ÀmcÓº·M\ËNLd®\İÀ‡¹õ\ãÖ‘T’WŒ³\ìEH\Ñ\åZE\ãi<d‚q\Ì\Ğ1«‹ÀùIO¡¡†\Ğ0v‘¹}A\ã8P\ÅÊŸ–E\Ú3\ÕY—ş_­7T\ã#\åÇ¡\ÎzQLdjÁ[\'q\ã¼+SH¿—E]Y`”²9!H<=eF\ïEa»üi\Ã ‚9Á\'989\íWNn\r4c^’«z\ÊyR8 \à÷£š\ÃĞ¯Ã†´•‰u\ÃGœ—¸\Ín\Z÷\è\ÍTÏ‡\Äa\İ	ZAEV‡8QE\0QE\0QE\0QE\0QE\0S©´\êb\Zz\ÑA\ëE!…Q@Q@Q@Q@Q@&ii	#‘\í\Î3Œ÷ü)JVLp<”J:…\ÆÈ¼¥\Î÷R\ÎGS¦9\îk–}\Î\Îø\Î>p\0\Ïò€~µ©}>÷¸pX°eR7q“•UõªDqyƒ;òI9\îUlzk\ç\ëOw>óB4iY\İYù¤lş¨ü(6e2a˜Ì‹W3øôúS\æm\Û6X#–\Ç\ËmQŸÖ¯„dPˆ¼C.21¹ˆ	®I¬N³?\É\00’§=3€@\ï\ëL1ı\ày<s€Y›Ò­È\nº†Q\'–\ãv1Ğ\åøT%$j7¨6\ï$„¶NÀ@\0}s@\Æ_<|¬b^\Ü\äô#\×2†K§ilt?\Ş\Ç|ö«\n¬y›—{Á\0\à±(Ï  vS÷0\ç›¯\Ëó±\Ç\è(&-#³T0+\ã\"AM\é°8%û:õ©rl\îbK‹\Ä¯ô¦8\Ø€¶zN{\ĞCw\" ryp_|zS1’\ç®wÀT˜\ÈÛ“Ô¾Os´\åU›_>¹\Å\0F\0\Ãû.\ZV^¿D\éŒ\Ôñ\ÆN\î9? u\Ï\Æw`Œq8\Ê@G8\Ú1\É\Ïñ~tÂ¸x#\é\ëR=x`€pzµ#(À\àò>€• ›²\ígú{\çŸ<¹‡9+\Ó\ïdƒO’ª\Çøœ\'ÓŒÿ\0J\n$\ès°ò9wAL|¤Qƒ£øÕ—¯<\nt4d02y\'”.\ã®v{÷ ©\ÃBF>¢	±ƒ\Ô0##½(\É\ÚH\ä®:út§¦\Z6û›Š OS’O4\Ü(ùqƒóƒĞƒ(ÉŒ?Sò·\àG9§œ³\Âp?{)Á\Î\à=©\"U2¨\ÆC\äN3\Æ(…¶<f@pX\àc$)\0ƒ\'·*\Ì8%’¬O\Ì\ëƒœœö$g\ÔF\0šL…\nT>\'—#ò¦\ábö·$F \ä”\0ª\Û`±ğsƒü2?D\à¥Ì¾Zv<3\ÊûzS\Ñ\á2Á F\è\ÂP\Çı€X\0=\Å+ov\Ş\0-\å\Å=\ÊJ\nEpp­\è\áT†<Ÿ›\'šryc\n\Ç\å`À\×+H#fµ’U1\Ü\Ü27«\0Z~\Õ\"xÛ©2Lp\n,1RY u•0d:%¨Wkip·Vğ\Ê\å¶<Ÿ¥p\Ç»N\0\ãNw`œ\â¶|;s±\ç·9\Ç9Á\'İ„­\Ë+3\Ç\Í0\ê¥>dµ:z)Oø\ZJön|€QE\0QE\0QE\0QE\0QE\0S©´\êb\Zz\ÑA\ëE!…Q@Q@Q@Q@Q@Cr\å!‘\Ær\0Q\îX\â¦â³µWc,H¤\0	<rsXW•¢weô\Ô\ë£w!¦V\Ê\ì\ç?t¨\n\Ç×Ÿ­@\Ï\ä\ÅJ–d\Ã/;•\ì&=É§\ã|ªX‚Ä¼v\îr	\éa“‚6À0À¬o›ú\×\Ïõ»>\é.ƒ£LFFW),¬y*j\çÎ¨py²6p\ŞZ\r¹\Û\ïÁ¨>òÌF\Zx\Õ\ÇFÂ¡ dv\ïUã‘œ¢w1‘ÜIPO\Ê\Ş\Ù\çğ¦‰ˆ\Ú\íÁÚ‰€FKHF6¯\Ó5#3\æR‚®s¼¯\çO•\Ë=´cr4ƒq\Ü2An21S¢/\Ê\äeS÷³\ÆpI\\{¹şT„DÁZI¥l…Ó’3,€($UGQû´\ä @	\àes\æ“\Üğ+A\âe‰ I(V=IN¶~¢ —q‘PóO‚[\àsA-‘\"$ªT¯\Ì6‘¿‰c;‚ÀÆªº‡A\'v8ù‰,sôv5®²K0v\Ø\ÆFòqøsL\îxAR™neS\ÑP\0GJcDRC\åy`ı\é\"@}²¹j-\í\Ì\ÒH\İ*‡w¡aÈ©¦V‘ƒ\ËÍ±s\Ğ `¿ıj½,MefJ \İ-\ÃF‹œü±Œ\ã±\'…K6Q*c>yFc·\İò\íR~™ª\ïRcS¸\ì•sµ¸j¼#*|\Ç\r¼1m¿\Â5\ÚY‰õ<P´k\æÄ¬3’„œ`a†sô©¸\Ú(¸Ç”TU÷v\Ûi²« \Î\'øXç «I*\0c™Ÿ8\ÉS\Ö3!‰G¬ˆI\íóUbŒ~\ì\ä€$c·½4 \Ü\Ù\îºô\ã8\â¯J»!	XÊ·ÔY¹õ\â£(R5\\0\ØÜœgœ¿‹\å)*¼zÒº•Yyóƒö2A«1D\Æ<3z\ãÿ\0$ˆS\Ç;H¯\'m4O.…&w·\å‘N1Ôš†A1ƒ–\İõùLÉÇŸõò@\çhÀ¨\Ü0Yu*€ñÓŒœS¹•†ô ‡\r\Ïû½©¹9\ïeú7cS2üÀ\Ñç§¢“L™ğ?å”£\í(j	I\Üò/*ŸRÀRùd¼Ñœ†X]¸x\Æ?ıuX%Àóµ†;z‘İ„’²X\ÂIñó\ĞÛ—\Ìdq\'F\Æ\nH¥­>Ø†‘QŸ<+‘ve2\n‰	F\"F\Î8\ãšu©Uœ™\íF\Ü\Ë\ÉyD\\ùˆ¸\Ú\Ì	\Æs•b3úT¡O—™û–P£\'`oCõ¢2\ÏÂƒò 1lS•ˆ†\'^N|–$ÿ\0}XgúS)\ra÷G…pG|¡\ã?¦E1‚\â9\çaV#¦Fy•A8\àe\Ú59\ÏB1Ši\0A\á	‚;—\ÈùºS‹³º\"¥58´\Î\ê\ŞU(\äNC(aô<Ôµ•¢\Üyl,2½@\ç¡­Zú\nR\æÏ‚\ÄSöuBŠ(­LŠ( Š( Š( Š( M§S\ÓÖŠZ)(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0+\'YfU·éŒG×ŒÖ·O\çXš\á\âô8\ïCMq\ã4\ëe?\Ç\ÔÉ”2\Ê\ì\nû”m\ì€Ö¤T\à´Å¼\È\êscô¥ÀûL%#[¤, c‡%A\Ï\à3Q\î8Œ’Ûˆˆ‚\Ì\åX\ç\é^!öetQºBW,\Ù\à)+Œ…úUx\äˆ–şi0H\ÉRH\çŞ¥‘I|®Ü³Mó¢2F1P.\Ô\nûN\â/÷B±Âƒ@-K©,€)V&fA	\ä¾a\È—&¬4¸a\Zğ‘£7S†\ÙÀúVr\È)\êù|ÿ\0w.zş¾´‹ \Ù1\ÉÊ•Œ{‡l¶*W*\Æí›–x\ÚWÏ—\ZJ\Ì0w2Œ\çÜÊ«§I§l’¾\\+·©2#\çô¬ø\çeS´¾\Ò°0\Åğ=ª\Ê\Ì\ÌŒá¿„\r\ÙR“øqN\â±2e‰Œ¶\Ó,\åû¡p2\Ùü\Å=Få™—\ŞVE%NJª\0\'üñU”’s\Ød€m«`ıM^Œ\"Ç#g\ëóvQùb“’Hµ\Ñ[Ÿ2>r±³m\'ø6\ãŞ­\ê(„Z\Ã\Î\å\Ã6\Ñ\Ê\å¸R>„š}ºHT|û\åsŒ©Àç¯¡_&Y¤bK5”\çlj±\0\Í\ïÉ¨\æF©tM‘>ğ\Û\ä<§P…\Èôü\ê‰Ÿ\Ír\0>K\rø\á9\ØHn\á.\à¤\0O\ßppö²l\ÂÊ›·\Çˆıi]”\Ñ\íß·\çs\0\"0v©\ÅKk\0ò•ˆoõşQ\İ\Ù:€=É©	\\\Ø\İ&\èù\ÈH$1ü\0?hÂ‚9,¢\È++’\ÊOñ,jÃÆ›F:™s¨bÀ©\Ş\çk`d`”\n†ñ– uepû\Ûcr@\ìMjº\ÆC\Ğ;*•\Æ7\Ú\0úvª{³!=X\Æ8\Î\ĞI\ÚOµ«Xo–T0ı\Ú\Ã|±!KøœU_-D\Ê\à,R\Î0¸\\µ¥!˜\ÂüÈ¥Øx‘ş`Ò h™[$Ç–4®KFw“òB:\ïÃŒ\ÈK ?:€¦F\ì|¬e\\óĞ©\Ç\å[7P`Ú²)\äNF\0b\Ğ\ÕClš@<\æ}A\È#j¸‘%c>q\åüÀÿ\0Ë¸\ÇVe\0ŠYU^[tÃˆ£\'\ßi4\\¡ò×¦K”À<apsøSŒF¿\í³{\áNOFv+\àª/÷œ>\à}š”±8HG ò2\ZR1À\ê Ïš@~ş\Ş8 u*&HX˜\äõcg£.3ŠœH{¼ˆr{|\İqMLn\0œf,\ç$qJ™VrF6œ\ía\ßŠ	-‰¸99Y@\îÀ!ùc^0$+&$€«»\"£ƒ\å’\İş\\6_\Øc ƒNr’}Œa° !»I+\Åˆ”!e-\åW¯?.?­A3òg9.Cs\Ç6|\É\àAÀó@{…;A\'òªÒ’X\å\İÿ\06\â™/±\Ñxxƒ\æ®z!\Î\0Áù\ë¡<W5\á\Æb÷~˜AÓI<WIş5\ïa¿†ŠÌ•«´QEtpQE\0QE\0QE\0QE\0S©´\êb\Zz\ÑA\ëE!…Q@Q@Q@Q@Q@d\ëKû»Rvà»©õ8­T5d\ÊW\Ú	‹cƒ\Ï\00\É\â¹qKš=,¶§-t™…8$¾1¼*Nn6¿ø\Ór¯\ç\æóö¸’¥\ÚEoÇ§\áSº.ön\Z0ªN:m\ÆIÇ¶ER\Ê\\‚\Ø\\I1¦Ş¤{s^gÛ¸•Y•\ÃŸ‘\\)n2\Ô\0£ŒŸ\Äg#ò«ª,÷	\Âü\èGPªyõªƒ…Qú{\ã2Pö<7+\×\åI\ïMVÂ¿]\Ä\ä\àv™Œc\Üù“O\nx^„š‹=K&y!y\Ç@y©„ªw@(\"]œÛƒõª\àrO©Áú)À\à‡=:\Ğ\ÊF…ª™\\¨ÿ\0–Lv-W\í3sstTc-\ZG\Êr\Z¨\Ù9]N -‘\Æ8úÖ†‘¹’h™Ogb2O\ï‰@\Øü+\'\Ø\Ş%\ë‡x,”t\r‡—À²|¨9\Ç\0<NbûK©À!\åeÂ“\éÁ\â£Ô·³ˆ”°H­|ğp¬c\Û\îÏ¹©\Ñ6<’a\Ú8-\â.F\çeEV?›qK¡}GvppH‰L\ÌN7\\E\Ù!\']¸h‚D„€\ÌÁÿ\0‘«\Ñ³3\Ó~\éA’¤?­T\Øn)dfh\ä\Ô\\€\01„8jH¹C©]\ËÌ¶Q¨\ŞdD’L)g\\ÿ\0\ZØ‘o!l \ÂşŒpX~\"³á¦º€AX\È”Q\ÏóøUö\İ\'\Ú\î·¤0\ã÷Kò(\0zœ“N\âQ3\ÙÃ¼\Ù`©H\Ù\Î7_w\ã)\Ñw‰ù¿q;*q´+:`c2³¾Y&ûøùv ş©-°–\×²¹–\îE1\î\á•wcwÓ½;‰\ÇQ¸2O7P\0%p\Ù#€O®L±²M\nƒ\Äd\Ì@9-\Óh&–\ãŠ98##=wL7\0Iö§\Úi\Ãû\ÅòcUBT\îûÉ ‹]\ŞGˆ·\0Fû1n\áÖ©]¦\È-mƒa\åv\nyƒfO\âk^\ê5\Ûó‚˜ù{O\ÊÅ˜\0N9\ç‹3£Mp\ØùHh‡¨P{g×“W9­J\nsƒÕ˜¯pH]¿\Ó5Y¶¢Œÿ\0\n9\ç¹bøÕ‚\Æf*\Õd\Ô1\ÏòÁ[\ÍŸºƒ\Ç\Ş\Èöfd2Ò¿\İ=}zS~\èR÷„\Ôs·ùS\ß\ç~z@[\Øq\ÅD\Äª¤•U<¶2~cKa44dëŠ=1Š7³Q\×pİ»ø½\é \áş\é~”»~pGA’>†­b`~\\¤+•ÿ\0hu\ÅI¸‘hI\\¢<cv«nù\Õ~™>˜?™\â¤\\‚P®Ií‘ŒñL6Û‹wş%\É#®Ñ»WûÒ¨\Éh\'§²x§\ç\åc\ß\Ë¼÷f\ÓbWy0ŠK9!w\íŠq3±I(.ftúD#9+†HG~U=q[b ´‡È‚$ùAÀ/üEG…O_AF°Hø\\UOiU\È(¢Š\Ô\æ\n(¢€\n(¢€\n(¢€\n(¢€\nu6LCOZ(=h¤0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¦J‹$S\ÆùÄ‘H‡~e\"ŸG¯ù\íS5x´iJ|“R9\Ô\Ş0´¦	¹³?R*„£k\0‚\Èœ\çnÑ°~™Õ³¨À±·‚c}¿hÛ’Wi\âM£Ò²¥w‚BI \è§´Ÿl7\ã_=V›„¬}şª«MI.#Lƒ“•\Ü#8\ÜpFó\ïÒ¨2²±V=$c9­/—\ËòXrÀ¨,?w\'\éÒ¨6\íÇƒ¿g•\Ğp?½Y½H\Î>Bm§Œwãš•F\Õg9\Ïğú\ä\Zbœr9=y9LpK|€ö\ärEdİ™¬cr\àe²8b?$~´\0¡\İp~§¥I2¶£›†>›O\ãPIQÓ¦\ÈoR\Ür„1ew\0«•\'oZ\×\Ò\ï#¶·»Œ\äy“DÛ³‚\0\'ñ>Õˆ&\ç\0\0_Œü£\ëLiz\äd\ä{Ò±¢“F\Ô÷\Í5Áó>I,„@(\'€\Ê\Ì6Ù«±\İ\ïò\Æ\å;af6d8«ô\é\\\Än\ÊI\ä\Ä\ã=ù\æ®ÁtchCŒ$a[jŒ’\Ù\È$šMhRºq‰#\Å0òc.ü|\Ç\0—\È\ÉÀª²Fb‚\Â\ÙH&v‘¦ |±	P#\äŸ\îsŠ¥oª5fœHRJ‘\ÆN1\ëSÁp“·!m‚?)c\'€‡€\äõ5••+«S0Š\Ñ\â\â{¢\È3¶\r\â03×š¿\"\Ç(Š6)\"Ibqü*?Z£\Ìû\åRªT\È“¹;N\Ò;)—sùi$Q¡Ñ¶‚\Ø1Œ`Ÿ \íõ¤‹µ‘	?h–4Ûµ%œ3´öŠ\0ü\ê\Ò”²\îd‚\Ì\Ç\åŒ_ñ¨ ‘F\É\"\É\Æ\èmƒ`,jY\äcÔŸ¼\n\áP\0HH\ŞYCI5Œ‚A_\â=søv«!\èKs*–\Ø7\Öyq71ù7z\n¹LQc‡wšOË™\0\áOlpk››PvÃ P|\Ò\ÃcP»WAQ¶¥p\Ûù‚q‚B\í\ÎN}\ÏZ\ÑF\ç3š¹¿©\ŞF²#$j‡*p\\Å•\n§\Ó5\Î\ÜNNğ§—b9\0\í5^[‚øÁ\èsów#¿\ãUòI\ç\ÉÇ®sWk9\\²\Ì\ÈÏµ€;Tg*»G_­1O\Ê9\İJŒ\å‰9\ê\Äşf•™”©\ã\å\åOlû\Ğ$\Ç8Ú»q\É\'>µ\\ó·oM ş]©^BwnÁ\ÏSJ‘3}Á“ÁÇ õ\æ€\ßA€¸?7=1R\0#‚	\0rÖ\ãhUö$zc¥E@5aAÀoM\Ëùšrƒ\Èf\Æ{ğN\rF2x\Çz™6‚8\Ç÷\\/Î®\ÄK`cÛ¦9n{t®ƒC\Ó\Û)y&z«¹÷¬½:Å¯\'û»S\æbO#\å\ìkµ4‰UaT`W£…¡yg‹\å\\‘“ÒŠ(¯[¥—\n(¢Q@Q@Q@Q@:›N¦!§­´RQE\0QE\0QE\0QE\0QE\0QE\Ä2XÄ±Ê„\ã\ÌGPG8&¹»\ëi­\Ñc\ŞC¦Ö¶u+\İÓµtõ^\â\İ.c‘§¸\ã=k‡C]\Æ[Œö2\ä–\Ç,ƒ\0œ\î\Ï\î¥3ó\ØúUyn!¶\ïe\ÚY~\\\àp6ŸZÓ¾Ó® wÀ7\ä8\Øq\ÎO½Q‚9®¥[|1üAWŠñªA\Ãs\ë\é\Î5\â\Êğ«G^::\è\â\Ñ\äh\í¥uo)¥\r€2J§\ŞQ\ç<VtúmÕ¤Šû\å¦ÃŒ\ç®¯G±´d´1`«.8À|qƒ\ë\\’z\Ü\ï„yQ\æ×¶S5\Í\Óyl£|‹\È8U‹¥2\ÎÉ¼\ÈÙ€9˜)d°\Ú?*ô¹t\Ø$Šx\İ@,W\rÕ‰ †\Ï\ãÖ¡M\n0H«Ï–  \0\r\à\ä•\'·<\í©\Æ÷9‹o\ĞU	X\Ó\Ì\ØNJ³\àdô¿ğ…\\ıñ0ÀW`»Nr¼\â»\Ë[x,\ÆKÆ\Ë$!B–\êjÑ»\ÒŠò\Ìr2»Ç­Rm ›Š<¢\çÃ·\Ğ1Œ°o\İù¥£‘\Ô\Z¨\Ú5ú—\03prQ\ÎzÉ¶³¼Èš)>WRQ•ÁV`\Ø\à\Õy,m€À\0r}ı\ê\\\Ú%(\ËcÊ–\ÖıA\Õs÷°p;sW\â‚\à‡E²\Ê\Ê\Ûy\Æ½w\Ø\Ä\ÃiPA\ëşM$ZlQ†\Ú0Xc sS\í4PQ9«hf	lò\Ò8\ßx\Ï~\Æ8Z‰\ì\æG[\ÉP¡ğ]ÀE\İ\ïŒı+³[÷€q\Ç#\Ç85/\Ù\".r ci\é\Îri\ÜÑ´$C–‘œm¾A(ª½HƒY\Ó,Ò›bV,3\Ë\Èùû\ÌGò®\æöÄ˜ö¤hó\é’	\ãŠ\Ék§€8\'Œp3Ş—5…()k\ÛJNX`‘\êM\"\ÛJw8V\Ç\n3œ\×\\ºSH\ê¤1—Ø­m1\ËÑ‘¸\É\Ï\åTªt1ö(\à›N¸\Â\ä7\ãŸÀ\ÒGc&\â»09<+\Òd\ÒâŒaP+œ<ô4°\éúTD†–\Óx\0`\Ë#ğ&«™ô\'\ÙÁö=\à@\Ä(R\0æ “H¹Q–G\×<W©}šÍ†¡nBº\ç\éTe²·@>\\(bGŸ|\Ñ\Î\Ñ\\‘\æñ\éW,²2\ÆO‡rM8´ùÁ\Ãv@\Æ\èGj\ío-DÑ˜¿\å˜R@\èQX«¡Û«’Û™óó0ƒ¾\Å\ÕAJ’[\Ã	$\çiş_…5•ğx\è9®\Ít¸J“\å€Xƒ\ÏE_ñ®T‚x&Û±|±¸¨^:p7U]™NW2†T{ŸNµ¡¦\ØIy.Î‹\ÖF\êPPX…^]¸\×Ş»\İ:\Î++X‘G\ïCJO]\ÄdŠõ0\ÔT\İ\Ù\àf\ÏaU»ki\r¬acR=}øÉ«§•\ì\Æ**\ÈøùÔ”\İ\äQE2BŠ( Š( Š( Š( Š( M§S\ÓÖŠZ)(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(\âŠP7£ø™Wó4¤\ì›*œy\æ¢hY\é){1ù[!Pc\ç5\ÍA¤¾âóF\ë#\Æ@\à¡Àı:Wk\ÜÒ¥“†L(Ì§\Ëlö-\Ó5Ÿ«F\Ç\ÄZDŸ\Â\Ör¢öù•²xò\Õ\ê¹ÍŸ£a°\ê…(¢\ì–³‚$Œ0;— \é\ÔÀ\àŠº©´“Ç¯_JHÿ\0ˆû€ó©\Âñõ®C¸¥3¸\éÁü«U\Ö\Ú\Ê62f1´”†\">\Ñ!\æF\ì?Zßº…œ\0õ>•\ÌÏ¥¿\ÚÌª\Ä 0y\à±\'¾8¨‹\×Sec6\Î\Û]ñ›+\ËöKEuh\Ü\ï’2ü\×7<v‘j\ZŒS\Ï4q@\×qD|¿5šDÊªpOzõ\r8\ÛÆˆŠ…6B°$Ç¥s>\"ğ­\ì\×W\Új‰\ã¸o6h‚\Ë·R¡ºƒ]qh\ã”]\ìr6{–m9 ½¹#¬s„\r\ìøH<ú\ç\Şı»V\Ò\'KMM¾\Ñnr!»’3Œ?½eøÂ·‹w\rÆ£‚\ŞI\n»\ròºœª\àv®\ÇQŠ\ÕX«¸2:§+Ø•\Ïz™¤\Ğ\é\Ş,ˆ8‘U\×HÊ‘\ĞÕ˜Tp~ª\é–s[9´–2\Ö\ÛA†}¥X8«!\'ó­FŒ#(Ú¹š±\Ùtô±#\àÃƒO6\ØbN\n”Q\É$‚)c«ps\é\ëZ«X\ÊM™7¼ñüûU,6r9¾õ§u\Üv5Ÿ|\Ø\Ğÿ\0J\ÊF\ËbH\âA£\æÿ\0<æ±µvQ:\éú<KqxÄ©“ÆßŸj\ÖÕ…òZEŸIurYYÁÇ•FlôÏ¥V\Ğ4\èô–•®!—Ìœ\ÈT0Tlñ‘ú\Õ\Æ*\æSm\Å\Ø\ãµ\È5;\ëumB\å\ÖhŒ÷\İwùa™“«¤ñ\é\\\ç˜$Š?.kƒ1’M\ê\ávò6\ß{w­zÏ‰ôh5\Ûx%µ4½·\r°·İ’\"~\ãddJ\â`ğv°\Ó*K6\Ñd‰e2!\ÙQ\ÎkªñGŒ\äÅ«\Û\Ø\ÙjH%‚T,\é\"Œ¡P9\Å_³\×%”¬rJ\ĞH8\Û3·c\éór+¤’\Î\Î\Ş\Ú\Ş\Ø:ˆaˆGµ\æ`:ô\É\ë\\\İÆd•\Şœ’\ß\í\Z\ÊmT\â÷6ag\r\è#<6\å9\î¥Zò\ÆESÓ­%]»©\0™ùs\êo¬\0}=+œ\ÚFKFG§°¬N\Ù$·˜(.¯+¢\0ü3šÈ¾]\ĞN1œ£ÿ\0*\Ò;™TW‰\Ç\èV«=ñyA1À¥°;\ç \Úö?§¬¿\n\ÛÄ¶w\íù\Ş\îE\Éä€Š×•“x”\É\İ€> W¥G\Z\é\ÉA&3+x9­\ÈÈ¤§zJi\ë_B¥Ì®…œ98¾ES$(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0)\Ô\Úu1\r=h õ¢ÂŠ( Š( Š( Š( Š( Š( œŸ\ë\"²\'ó¦‚:S\ÓHOı4O\çYUø¶ø\Ñõ:Ğ‰#¸eanz\Ç\ÕQV\ÑG\Ìp—Ex\Ø@\ã?Z\Ùª–bÀ¬MRI\æˆÏ·\Ë\Æ>m\Ï5òRV›?OŠ¼©9õ\ÍZQÀªq•q=*8¦\á‚5\Ú);»Ÿ\ÈÕ±ƒÛŠqQøpRW\Ø\ÏÈ¤ey?JsB[³c\'ù\Õ\íÆ‚ Ur‘rˆ·(\n8ã§§4ñÓ““\ë\éV¸¦\í4$4\ÈBúgÿ\0­\éCrI>˜•)Ç¥DÆ¢F¨ƒS\çƒUÔŒš”œŒt\ï\Í8¢\É\ËH¸?(Sœ`a½\rR\æS\Üp\r\\»l\í\ÓEXI\êh“q4\Ğ\îT\'\í\Ú~”ö\ËÜ‚3\Ğ\Õ{v\ãlşU´Y‹V+:6s’O\Ó{ñP<,\ÄÏFH={Uı½h•BN\Æ?\Ø\ã\ÉØ­Œ\çi\Î3\ê=4ğy* {\ÖÀˆd`S¼±Sk•\ÎPKUQ\Ğ~\â»EZ`«\Ì}½jZ³\îf]ƒX—\\\Ç(\Ü|~U±ry?\éX·Gä›ˆÿ\0\Ë4\ã¸Ob\r!m28\Ç\ÓÜ¾õşİŒš ú}å¨nb‘\ÌO*‡`K1\r\Ô85¥\á\Ù\íâ±1‰79$6±\Ï©0Rğ²ä«¸u\ç­7ñ#Zo\İw+6s\Í0Ô²\É!\ìX\ã\éQW\×PMA\\ü·\Z\ïZL(¢Š\Ø\ä\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nu6LCOZ(=h¤0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0 4dv`Š(\0e}\È™•] \Ípÿ\0Ä‹G^\ÇÛ·ûıI\Íf\ëQµ‚t\Æ\è.­\æ?\ì l1üÖ\ß6#@` Œ÷\È\0\Õy\"\ÛI´H\èÁrx%NC_%6ù\Ô)\ßÙ¡°¶}º\Õ\ä\äzÉ³“+\ï\Ğû‘Á­Dl\â¡\rlZZ”c•08\èj\âL‡c\éL\äÓ²yJ1[$B´g“KO\n3\ïA\Z–‡r»œUgn©\å sš¦[s}k&uEYÇ“œ¸\ÅY\ç\éU¢Vº´!3*øğqŸZÍ‰ğ\ØÏ¥j^&\à\Ù<\æ±I\Ù/=\rc%©´~fØ}kAGN9¬«97\é\èka9i\ryop\Ú3K·‘N\Å\æ´3¸¡E4ñÚŸùOj±\éß½ ±‡ƒT§o”ŸJ´\äsY÷-\Ôsí“š‰;\Z&g\\¾Aç©¬k²Dsz\Æß™kNv\äŠÌº\ÉF¸±\Æ\0ÿ\0xS‡rd-­Š\ÚØ‚2#P\ß\ïµ¦ŠD(OQ*õö\ÓfO)cŒõ*> \ZšL%¼ ¸Iú`S‡½4‚¼¹hIùI\É\'\Ô\Óhü¨¯²‚²G\åue\Í6ÂŠ(¦@QE\0QE\0QE\0QE\0QE\0S©´\êb\Zz\ÑA\ëE!…Q@Q@Q@Q@Q@Q@:3óÅŸù\è‡õ¦\ÒdGlõ¬\ê+ÅšQv¨Ÿc¬s‰œ\í#Øƒ\ëR<\ÍşŒz\Ó-.-\á`O*?>†­*\ã\0šù:‘´šg\ê\æ¥\Év1„m…õ‡¶M^ˆô÷¨\ï\âh\ŞG\İbP\çÚ–3Ñ½@\Z\å\Õ=:\Ô\ëUPš[Ú˜nL1\Å;\ëLSNÉ­\"\îf\â-5¸ü©y¦œsŸÂ©‰\"¥\Î6\ázœb«*m>ø©fs¸gZ£6£iD“Fœ.öU\ç\Ğf°z³¶;\ZP)\à\Z´W5\ÒğA\ç½\\7+´œö\ïT´3•\ÛĞ«tƒ\r\Ó=kh·c<ö«÷w±€\Ù`;Y\Ëy	$–^‡¯øTI\\\Ş/BK-ñ\\¬Lr®¹SÓ‘Úº8úÖ¹o´+º”#*C)\ä~u\ĞY\Ï\ç ‡QN±•D]¯¥gÖ\Ô\Íi¢0K¨‡ğ¨œı=‡­9›°¨\\ñIJÀõ«2\á†zE\\•»úñYòœ“œqXK}M63\å?‡5T	X¼ \ÃeFnõr\\sŠ\È~õ\Üg(:z¸\ìMØšE²\Íx\ì@\\ğ2Iô\Å5\åi¦e(]@Hó÷<f‰Q\å\æd\Çñvü).I^Ã¥ta#\ÍQY•_g†‘^Š(¯¬[™=]ÂŠ( aEPEPEPEPEPN¦Ó©ˆi\ëE­†QE\0QE\0QE\0QE\0QE\0QE\0(¥¦\í:ı­£\ç\Ês\Ï}¦ºX®\í\äTeulÿ\0t\å\\_Ò€\Ò.v»§\æ\â0*£\æ‰\ï\àswB<•Î»P–\'¶a¸¬ƒŒ’J©|£ğ®ss’¬Y‰S‘’Oó­\ËYw\"Ş¼œF\ÑÕŸC‚\Ì!ŠvFšñŒ\Ô\ê*¬§S\\‡¦XÒ—v3Q\ïN\ç½Z±d¡¸ôÈ¤“˜ \Ğõ Ì¿&4‚@_8ô5ÀxƒFº\ÔOŸd< <\Zô©Q]v°ù[9¹¬\Ä\ÓR‡I¦\ì„|¬\Ó: \×-™\Íø{Oñ%…«‹\Ù \n¦Y·ÈŸ\î·\\{UùuiF\ä9RC\×ò®8¾^H\Î\ã\Ó\ĞU9ô»\å\ŞñIO\×Ş¬\"\Ò8\ËûZ\ádhy \Î?\ÜŠ\ÃÓ´\ëö»3]\Ë!uo\âv$ı{W§M¦E³÷ch8ü\ë´3$Œ|\ÇAş\Ï¦ô.6½\ÆZ\á\äD‰ş•\ĞY†W\ä\Z­i¦C¢®\â;\äóŸ­kD‘ \0TDÎ¤®Xõ¤c\ÇÇŠ	\ÂN\rhsÅˆ\ÄñUÜœ\Z”Ÿ\ÌUi	õ=iV”ÿ\0Ÿz£#g¦Oj·!ûÜœ\ä\Õ@\äò3õ¬\ä®\Ê)\ÌH\È\ãğ\ê*\æ™0M#cç˜Á8ª\Ë\äŒ6ã¨¥i£]¨\Ão£uë¦•	UøN*øªXwzŒÖG\ÌH\È$ñYs?˜\äú\Z\Zi$\á˜~\Î1^\Ş\é{\Ìù\\\Û3!{:{	EW¤|\èQE\0QE\0QE\0QE\0QE\0QE\0S©´\êb\Zz\ÑA\ëE!…Q@Q@Q@Q@Q@Q@Q@!¥¢€\n\Ò\Ó\äY$Œú\ZÍ©\ídò\å_F\à\×2Ÿ=6z¹Uoe]_ftH\Ü\nIª±°À:y\é_3³³?@ª\ä\à\ÓÕª%\íõ †\Æh’\nq<;S7\nn\àsŒ\àU\"D\'$fŒ\ä($¸õ§q‚IÇ½K)>À‚G¹²x<\ãŒJ”I6y«¸ğ4‘\ÆcI@»˜\ç#½4\Í-!¸\Ç_Î¢d\Ï8=‡5#\Ïo¹”H›‡2*=\ãø\0½2zÒºV(\ã‘éŸ¥<7#µ\á\Î3÷qõö¥\'\Øô#¥1>ÅŒÒšOjŒ0\ã¯J‘H‘Y¿•VŒ•)nŸCUe`3R\ÆW˜óT%<šµ+j”‡¯?ZAr³\à\äz·4ƒ©bƒ\Ëñ\Ød\Ò\×\Ñ`!h\\ø|öªU\Ğ(¢ŠôÏaEP0¢Š(QE\0QE\0QE\0QE\0QE\0S©´\êb\Zz\ÑA\ëE!…Q@Q@Q@Q@Q@Q@Q@Q@‚3ƒ‘E±¢K™X¨I\ÆI£r\Ö`\éöæ®†šÅ³bOğ\ïe?5­ds\é_%Z<³hı#SŒd\ËH\İ*@\Şõ]N)À\æ±;,NM4¾\Ş8\Çô¦îª·\Ï1eò\×\çõ§Í¡<­²Y\ï-\íÔ³0óô¬;v&$nÂ:Šlº\é^\Ş]N€7–Š¸\Îİ«N]I mrGV\Ëş5\Z…\Z0µ\Ùö¬D¸\×4\Éu\Ñ\Ær@\ç85kûO<ù	Œ`}\á“øT@°$\æ3·ƒµd}¹<t¥fw*t\ìU:¬8\É#3Á?$:ò\Æ\ß###u[:œ ‘n:÷,xüh\Z>–	\Ì`Œw\ëH™R‹Z­õ«9‚üÁHÁ>µ£\Ñ:‚®?19\îk˜“C\Óg;R-A\ÖFP½²1[–Z|v‘¢$\ÒÉ´\0ZB	ªR<\Ê\Ô\Ô^…õlóÒ‚O4\Ğ¥!\àni\ês cŠ©#u©²\çU$\'‘ú\Ò(‚Byª’0©\ä\'§BW\ÜÁSü«Jtùä‘jÎ›ŠrIõşTú@?JZú\ÊPQŠHü\×YÖ¨\äÂŠ(­LŠ( Š( Š( Š( Š( Š( Š( M§S\ÓÖŠZ)(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(ÿ\0\n(ôü(\Í\ß\Ëş\ŞñÚ¹\à{pGz«¥.şú\È\Z·*\ìıò7\éİ«\å1zUg\è¹o½‡E \Ã¤sU‘òõ5(\'Œw®K‘0`i\ÜT*{óO™)\ê2AµU¦{\ã¥Z<\ÔmsÖ™\Ñ\Z%V¸qµó\è5¿P§Í“\Ûe[1\í=\rFc\É\îy\Í#Ol\ÊF\éß¬r\ÇOÎ“y\ç\åÎ´¼g’¼š_³Ä¹Àõ¢\Ãö\Òz\âV\'8\ë\Íh¦\0\æ˜/AKŸ\Ìt¢\Æ2w\Ü{7LT.\İ}\é\Ä\ÔpM&d†7J¯#q^ô÷s\ëUf”\0yü¨C+\\Jg\Óóª‘.÷ğ§–i\\¨§¿sJƒ|:ô0–•D/2ma\ÛEW\Ó-\ÏŠ( Š( Š( Š( Š( Š( Š( Š( M§S\ÓÖŠZ)(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢¥4t¼nœ¸kX®C\Ï_§#¥\ŞOŸE­\Ğ2+å±«÷§\èYWûº3ˆky0s\å¿(˜«H\ÊqŠ|±,”§¯­Q\í˜$œ®N\Ö\ÏQ\é\\,õıh\0Šdr+t\"¥Ú™°«N\Ú}\è\0u©Sgù\Õ ¹\Â{SLLz\n¶¸\ÆG\ëNÀ?ıj»\r;\Ä-\ïš<¿Î­œ€p*ÃŒ\Òc½\ÈH\ÜSÙºúTljA\rc¿…U\Ôg‘K4Ár3\ÓŞ³.n3\í\ëI€K7\'•ò[b“ƒ÷Fei›j;Õ˜cò\Ô|\İ\ÍH\ì UP\0\è8¤^Y¿\İÎ¦+\ê*\ä³ŸÖ»²ÿ\0\â^mş\î\ÇQEõ\'\çŠ( Š( Š( Š( Š( Š( Š( Š( M§S\ÓÖŠZ)(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(úı( uÇ­&\ì+»\Zúz$“]Iÿ\0-%4÷\ç®ƒ=\ëX“\ì:^Šƒ:\æ\ã\Ü\Ö\Äy\Â}ı+\åñOš¡ú&_gA!ûj	\àI«sGÒ­Rš\ähô\\Kh\ãvæ‰¾\ë\áöj¹\È\Ø÷©¥XÀ}y—,S[\Ñr¼½G\çKa\îk+O=½8<V$z‚\ÊÃ¨=jAz¼t4À\ÜYTR™€ºú\Ö\'Û£õ1µ(\Çñƒ\ê*Ô‰7\Zq´óU^u\àõ¬w\Õ\çôªÏ©c¡5,vf\ãÌ¸\'#\Øz\Õ9®\Ï5‹.£Ô³\à´§Z¡.¡$‡lJX‘Œ·\0~&‰hj\Ü]€>µ˜e–\å€]\ÛzŠ8f˜†”–>„|£\è+R0;P0‚A\Ç5`¼qNU\à\ZR~œzT\Ø.D\ã4†&h\à«s~<\äÓ‰\0Õ½%…Å¾­nppKPTf»0o–­\Ï71‡=Œ\Ê(\î~¸?Z+\ê\ïsóy+0¢Š(QE\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nu6LCOZ(=h¤0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(*[x\Ú[‹xÀ\å¤Qøf£­3&¡w\ZÎ³\å…\Íğ´ù\ê¤/ ¶ğù\ä*\İÄ­ƒ¦3[p¤g\ÕWùUo\Ûô)&\ÚI´¸·Ÿ¦pª\ã55›¤¶\Ö\Ò)\Èh\Ğÿ\0ã¢¾b³»?EÃ«A\"\Í­V\Ãpj¼ˆ}*\É\Z\é\íIŒÆ»Ó’MÌ«ƒ\ÛÎ²Íò“‰h\ìFEues\×\éM1!\íJ\Ås£Z\ßAÿ\0ª²Z\ê\à}Z\ìZ\éU\Ú\İ}\0ü(dq\Ík©7ü¶~½€ƒO»?~Y¼¥u\Æ\ÜzøS>\Îl})6R9\Èô¼ò\Ù\'\Ô\äş¦®\Çdˆ\Ê3\êyıkW\ËP*6\0T\ê*,AqRõ§š@)ši\éN¤n”È¯§5o\Â\ne»×.\ßû\é*©\ïZ@\Ñ\ëÓ‘’÷\åoºµ¾\ÚW1\Å+Á£\"\ê3\Õ\Âc¤¬~•ik±ˆµ1¸fÒ¾®”¯\Ñù­xrThZ(¢´1\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nu6LCOZ(=h¤0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(QE!4Å¤\ÎiT;¨¥›°<Ö½…wqµ\å\\|õ”\ê\Æ\n\ì\è£Bu¢Œ˜\ãšR5,Ç€\0&º\íMk8ü\Éq\ç>8\î€ö«Öº}¥š…\áü]óV±\Ï5\æÖ®\ç¢>‹‚T}\énGwl·v7¶¬2&‚DÇ¹SŠ\æ4s§C‚\İ\ä·pz‚ŒEuëœŠç¸´\Ô\ïQF!º\Ûtœ|ª\ç\åa^MD\î}\rt-QH)k# N”\Â:Ô˜šq@\Û\éŸÆŠ}&9¤j6^õ>\Ü\ÓJJ`Ue\"¡lÕ¦Q\ÏZ…K4L¬\ÕûU—õ]ÀÉ¨°\Ñ\r.*M¹˜\Èğ\ÔO\ãR¦@ˆ\\ŒÖºO\Ùı“K‘\Ø\×WSLA\Ï\0œ\n\ç|¶–DG.À^k½¶È¶‚\0Š ¥tQZœµå¡“¬i‚÷&¨\'ø‡¥rS\Ú\ÜÛ’²#|q^‚\İj)m\à˜•)şğ×³F»óX¼k7#Ï†ik¢¿ğû\Ò\Út\ä\ìö®u\ÖXØ¤ˆU”\à†\â½\ZuTÏ¯…\r\ĞQFh­N`¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0§Si\Ô\Ä4õ¢ƒÖŠC\n(¢€\n(¢€\n(¢€\n(¢€\n(¢0¤ ’0;š½e¥\Ş_0Ú„GİˆÀ¨HÁ]šÓ£:¿	G’@\nI\'Öµ–‡yu‡yq\äs]‡giµ™C\È:“Úµ°\0P\0\é^u\\eô‰\ïaò«kPÎ³\Òl­a·÷˜µh:zS©5\ç\ÊnZ\Õ:Q§¢CM!¥=)xªFƒ—­S¾‹;$\î¹«kÖ’e.„{Vu5FvfH\íKAR¬T”Wİ¸´‡\ĞQGj\0mš=i¤‘ô¦\"NÔ„ƒ\íQoşºC/”´\èR\ÜSŞ ¥8¸\ä\ç’ô\ç>Â¤»\É\Ï@z÷¨*B\Îy3R¤@c½-\Â\ä6=hòñ*\îÁ\ÇŠk\'_¥+˜¤TŠ€«l¾•Œ’9&„®\ì&\ì®XÑ­Z[µ–\":÷5Õ·\éTô\ËQmn™3€[=\ê\Ûq\ÅvÒ>¬¹™¤§\â“n+{™(úV~££\Û_)8(û¬ó­4ş*UGteR”j.Y#\Ï/t\Ë\Ë&m\èÌ™\á€\ãKp¯M–(¦R’ e?\Ş®vÿ\0\Ãq9w´;I9*zW¥K}$|ş+,”}\êg)šZ\â\ÆòÕŠ\Ë`t8\ã…Wö\â½\Î2\Øñ§NPv’Š(ª (¢Š\0(¢Š\0(¢Š\0(¢Š\0)\Ô\Úu1\r=h õ¢ÂŠ( Š( Š( AE!?K½\Í\Ã…\Ç?S)(\îi9»$GV-¬®\î\Ø,1³dõ\è\0\ĞXxp|’]7<ƒ?®k¢‚-\×lH8¸j\ã\Ò±†\Ë\\õ™‰§ør±%\Ï\ï`…\ì=«z8£‰v¢…P8\0c\âG¥%ys©)»¶{Ô°´\é+E„\â“Ò¤è°§¥ \éJz\ZE\éC¢”\ÒUô*N£\Ô\ÊrS (]\ÄÀ†¾õVµ\åM\ê\Øô5’\êP¸5\Í8£®”\î¬Ä¢v¥\ÍflfšFıt\ì\æšh\'ŒË±ª\ì­\êj\ŞXt¨[¿Ê“E.\åR§œ“zUG=j\\J1ŸjE¶7\"/\êi\0\æ¥Q\Ç Ï¨\í£\ê6š˜ğ*&¡.jÅ…·›0c÷S“Q\í,@\0’N?:Û°·Å“÷³Ï½\\\Ùe\îØ¸\01\Ğ)\Í<\Ó	\í]q8X”QEXƒ8§f›J+1\È\"\ÑI@¼0\È\nº)R9f±/|7m.ù-˜#;~U½\Èú\Zw5¤*\Î;3š®E\ï#Î®¬o­	Fq\Ù\Ô|¤Ujô¹\"Še\Û\"+qX7\Ş†P\ÒZŸ-ı9\"½:8\Äô‘\áb2·iœ•=Õ\í™ıôm´n#\ëUó\ëŸjîŒ”¶<I\ÂPv’Š(ª$(¢ŠQE\0\êm:˜†´Pz\Ñ@R\Z,’ŒÕ«{Û’Q1«@¨”\Ô5f§*š$U\ÍI3\Î\Û\"˜ÿ\0²+£´ğ\ĞùZ\é‰\Çğ©üq[öö–¶Ê¢8\Ğ\ßšâ©‹Kc\Ö\Ã\åsš¼r\ÇÃ\Ûd»;GbŸ\ç]%µ¥­ªl…H\éÀ\ÍLO·µ(\ëÎ©ZU7=\ê8Jt~-QXh)´Hõ¥¤\ê`!\ÇJAF9\Í(úPw\"ŒQI¥\'(¸„\Å*âœU+ûå²€·W\ÊÄ¸\Ï>§Ú\à·-\\]ZÚ®ep	û£<ŸÂª3Cx¥\á<\ã¡\ï\\œ\Ïq<l®\Ì\çzaWlo\Z\\\ä¤\âl—.¨\Ó!*x\"–§}³(e\ÏC\ëPmel\Z\æ”lÎ¨\Ê\áHhÁ\ë\ëF	¨4°\ÂOjˆ€*b4Í§×Ÿ ¤\ÆEŒóJ£¯.\Ú0Fz~T†0/=)\ê=)qKŒS2{ˆ}\é¸\Í8ƒ\íN2¨\ç\'Ÿj¸KDMgo½·\Âó\Íl€=ª\Ã$€ª¤±8Ç¥S‹Z´’A+ fÚ¬\ØÁ>õ\Õdq\ÎNF™=j>æ‘\Éú~¾”ƒ­Z\Ñ‰Ï¥;\nZw	M\Üiô\Ã\Ô{\ÒÂ”€)?ZRsHbu£=©i=\èh£vh¦\"9!‚e+*+)\ê\Í`\Şøj	7=«\'\'ooÂº*?\n\Òe\rZøXVZ£\Ï.´\ë\ëC‡ˆ\ì\Ä9ª|\ç5é®‘\È0\è¤{ŠÇ¼ğõ”û#““ò÷ú×¡K}$x˜Œ©\ÅsS8°h­\ÍşĞ“°ºz¨\Íg\àŒ‚#¨=k¾3R\Õ<\éN\ÒAE&E-YS©´\êbõ¤ õ©!†k‡Ä¥›Û ú\Ô\É\Ù]—¹»EVm,/.\ÈF\Ø\'’G\Ğ\ØxuT$·_1\ê°ú\ÖüP\Ã\n…B\Ç¸*b\Ò\Ò\'µ‡\Ê\äõ™‰e\á\Ø!\Ã\Ü~ñ±\Ğô­´”$h\0p1RsÖ’¼\éÔ”¬÷ia\é\ÓøP¹¢’”TX\èK\Å!´˜¢Š))¤sJx£\0\nZ( \Ò\Ñ@\r¥¤¤f$œ\0(J\âc%‘\"G‘Ê š\æ.K©šF<tA‹Z·L\×\"4#Ô\æ©<@1Uk\ZF\İLı˜\â“\ÊnH•^XˆÀ«ğ\Ùr:õâ®U\Ò+XM$cË—”?t÷¢\ë@\Å;\ìÑ\Ğ1H“\Õ2…\Éæ³¹\ÓHWüŠ²Tu¨ÊŠ\ÂP±\Ó\n‰\èA·ó¤\ÙSm\Í™­\Èv\Ò\í• ^ô»h±W\"\Ú=?Z\nö\ê}*m´\àBÿ\0ú\âªr1”\Ò\"Ky¤`6\àw\'h-µ¢\îvR\Ø<MC$òòœg8¬Ù‹rI\'=I­ylÌ›r¨_¼\êbBÇœŸV¬°¿\ãS0\äw\ÅEZAdli—»\ÔA+fE\áO÷‡¥k\n\å–7Y‚=kz\Ê\ã\ÎM­Ä‰Áş¢©£hË‚–JQP ¦°\è}\é\Ô\Ç\Î?\Z8R\â\ZZP( A§ƒšCH8\â˜¢Š)\0Q\Ïsš( b°Á0Fd_\èVwAË—œ\àô±š3W	\Ê3­T\Üó»\İ6òÉ˜H¤¨\à2Ö©\æ½.XaJJ¡”ú\â¹}O\ÃÌ›¥³\ärL|~•\êQ\Æ&­#\ç±yl¡y@\çA§qLux\ÉWR¬	\Z\\\×|[j\èñ¥f‹VVS\ŞÉ²5;:3v\Ú\Ø\é¶\Ö1€«–À,Ç©5<vöi\åÂ rNG^y©y¯¶!\Ôz]„ÀÆŒn÷)i:¹¹DJCKEIHAK@\ïKHu¥ü4ÁER\ÓN¦´\ê`-Q@!8ÿ\0\ë\Ği9\Ïj&q“\íøUI¥.v‚vƒÉ§M&O–§\çÖ \0\äV\r\ÆúÔ‚Ç‘\Ç\àj\ÒC¸dúÕ\rŒ­²/$~•` *@)qJ\àDWŠiN\ÄT\ÄSH¡1cojdŠzŠ°V¡`T¶W¸¢VeFVd4m5!N\åN\Åsµc­I=ˆpiÀSñ\éJ\ïN0\æ&R°\ÌSH\ëSm\ëL\"·P\åF\×Ô¬A?JŠH²{\Ëµ)‹Š,\æ+B\Ù\àqH!sÒ¶~\Îj¨ÿ\0\"™\\\Å+{|EZ0\ì\ÃG\Ã)\íŞ­${;o^:\Ó2“»	Ä ¸{\Ô\Ü\Õ9\"e\"D8aßµM\ÆñµÀWsŞ¥¡\Ò7CJ)Cø\Ô\0‹ÒMN”\ê\0(\ÍP0¦°\ïN£­0E \ãŠZ@”´PƒIŠZ(1õ  \àzZLS%«™ši|Œ@\Ù)\èÃ¹ú\nÀÿ\0„f÷ûÆ»?Jš¶\"¤U“8ª`iTwh…±¸\Òbæ–°;·Š( AF´J^h£Š`RQ@IKM#=)\0¸\ïKI-\n(¢˜zT\Ècû\ÜUŠ\áóÂ˜ŠÊ¥ºs\Ï<U˜\á’*UW¥:a\Ø@-R‚Š(¤ ¤¥¢€Ši^´ú)\ÜD0O<\Za{Õ’)„\n¥\Æ\\¤ fŸ´S¶Ó€§\år=´©vÓ…7\"H\ÂK´zSè©»¡@§QEI´R\ÑEÀa^¹\éU\æƒw+Ã¡\Í[ú\ÒbŸ0\Ò*Er\ÈDsxn\Ç\êj\ŞGõâ£’a†s\Ü\Ó\"Å•,YLõÔ€™G\êi\Õ\Z–©)1E´J(¢€\ã9\Í-! t\çµŠ( Š( ¥¤õü©Ø Bb¥\Å3Š“zW\Ô\ÑM\'šuP ¤\Å-†34\êi\ïN)\ØB\ÑE\0QE\0QE€(¢ŠQE\0QE\0¨£µQE\n(¢€ŠJ(\0¢Š(\0¤À¥¢	J¢˜…\Å4\Óé‡¨©¸Â–’Š`-”P0¢Š(\0 w¢Š„KE\Ø@\0¥¢Šc\n^Ô”R\0¢Š(Rw¥¤#4\0´R\nZ\0)\0\Ò\Ó°õ4Àr\çŸŠA\íKR\Ä4ô§\ÓOJZ@A‘“N?9\ì*aÖµ¢Š*!ƒ¦)\Ô\ÃÁ¦!\ÔQ”‡¥¢t¥ ¢Š(\0¢Š)(¢ŠQE\0QE\n(¢IA¢€\n(¢Q@¼\ÒP‘N\Í2œ)0¸´\Ó\ÔS©§¨¡(¢Š¡…QHŠ1E\0QE\n(¢€\n(¢€\n(¢¢–’‚B’–Z\0O\âú\Ò\ÒŸJZ\0*3“!\İ§\ÓWıd„ú\nb%¢Š	©3RTU-2ö(8\Ãg\Ó2\Ø\"š\ëÉ¤ˆòW=+IL\r- \ëKY€SZ}4õ\0\êCG\åG\å@\0\éKIŸ¥À?KM\ç#­:…QHŠ( Š( Š(  ¢Š(QE\0QŞŠ;\Ğ0¢ƒÖŠ¢ŠP1C\n\\R\âŒT1ja\ëOõ¦\ZhŠ(ªQE\0\n(PPQE(¢Š\0(¢Š\0;QGj(Š( šx şş)\ë\èh¾Ô½©3K@‚‘>ôŸ\ïJZj÷ÿ\0z€$¤4gŠJ%GRP!qÉ¨\ä`EYn¦¢u\'<U&!\à\äSªÛŒµ(\"“ijZF4ƒ\ĞLQG¥À4¸¤S¨\0¢Š(\0¢Š(QE€(¢Š\0Q@ÂŠ( Š( Š( aEP+‹KŞR\Ô\ÈWŠ(¤\ëL=iş´\ÃM\n(£EbŠb\n(¢Q@Q@Q@Q@‚Š( ô4´¸\à\Ğk\Ğfœ)ƒ¸÷\Í<\Z-\"ôüh\'‚8¤¤¥ ŸQ“Š\\û\ÓBºšCÒœzšCN @~V±\ÍL1\Ç5¯J¸\Å9j\İi¦”Pz\Z€‘»Rö¦“š¡\éNŞ S…Š(¤EPERQE\0QE\0\Z^Ô”P(¢ŠQE¸QE\ÄM\áY\È¢Š)OZB;&šz\Õ! ¤£Š8ªQGq@qG\0QGP ¢Š(\0¢Š(\0¢Š)ˆ(¢Š¹â’ŠGûô§\nú¡\íÒŸš)§v\Ï\îıiô\0QE\0\Æ8\Ò\æ˜ı\r;ô\0ö<šCJA$şÊ­” Œõ¨‡\Ê\Õ9R;TL­\éZ $SJzS1)ø>•JLs\íK†ô£\r\éOd!F)i1\ç\Ô\í­\éR1)3JU½)6š\0Z)v·¥[Ò€Š]­\éF\Öô \íE.\Öô£kzPQKµ½(\ÚŞ”J)v·¥[Ò	E.\Öô£kzPRS¶·¥[Ò˜	E.\Öô£kzP ´oJ]­\é\ëQ \n)v·¥O¥!õ¦š~\Ó\ÏÖšU²8¦€J)v·¥[Ò¬¢—kzQµ½)\0”R\íoJ6·¥\0%»[Ò­\é@	E.\Öô£kzPQKµ½(\ÚŞ”ÀJ)vŸJ6·¥ŠoJC»Ò€Ñ´»Oõ¤Á§€}94õ\çAM‘N\Ç\ã­*+`q\ØS\è\0HÜ£ñ§sL\ÚLƒ‹ıj\\J@R\í>ŸÊ‚¥\0@y8©ğ*%RXñSdJv@ÿ\Ù'),(20601851,'Ngo Tuan Phong','2002-10-10','Dong Thap','nam','6000000',NULL,302,NULL),(20787119,'Lam Khanh Nhu','2002-07-14','Ben Tre','nu','5800000',NULL,102,NULL),(20792702,'Cao Kim Ngoc','2002-04-05','Can Tho','nu','6000000',NULL,101,NULL),(21447061,'Hua Truong Tuan','2003-11-05','Phu Tho','nam','5600000',NULL,101,NULL),(21501896,'Dang Quang Sang','2003-09-08','Tien Giang','nam','6120000',NULL,102,NULL),(21883733,'Ninh Van Thanh','2003-01-01','Dong Nai','nam','6000000',NULL,301,NULL),(22301455,'Do Thi Na','2004-06-06','Dak Lak','nu','5500000',NULL,203,NULL);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phancong`
--

DROP TABLE IF EXISTS `phancong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phancong` (
  `MaNVPC` int NOT NULL,
  `MaDA` int NOT NULL,
  `ThoiGian` date DEFAULT NULL,
  `TienThuong` int DEFAULT NULL,
  PRIMARY KEY (`MaNVPC`,`MaDA`),
  KEY `MaDA_idx` (`MaDA`) USING BTREE,
  KEY `MaNVPC_idx` (`MaNVPC`) USING BTREE,
  CONSTRAINT `MaDA` FOREIGN KEY (`MaDA`) REFERENCES `duan` (`MaDA`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `MaNVPC` FOREIGN KEY (`MaNVPC`) REFERENCES `nhanvien` (`MaNV`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phancong`
--

LOCK TABLES `phancong` WRITE;
/*!40000 ALTER TABLE `phancong` DISABLE KEYS */;
INSERT INTO `phancong` VALUES (19110426,2,'2021-12-01',750000);
/*!40000 ALTER TABLE `phancong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongban`
--

DROP TABLE IF EXISTS `phongban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongban` (
  `MaPB` int NOT NULL,
  `TenPB` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TrPhong` int DEFAULT NULL,
  `NgNhanChuc` date DEFAULT NULL,
  `DiaDiem` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaPB`) USING BTREE,
  KEY `TrPhong_idx` (`TrPhong`) USING BTREE,
  CONSTRAINT `TrPhong` FOREIGN KEY (`TrPhong`) REFERENCES `nhanvien` (`MaNV`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongban`
--

LOCK TABLES `phongban` WRITE;
/*!40000 ALTER TABLE `phongban` DISABLE KEYS */;
INSERT INTO `phongban` VALUES (101,'tai chinh',NULL,NULL,'tang 1'),(102,'ke toan',NULL,NULL,'tang 1'),(103,'marketing',NULL,NULL,'tang 1'),(104,'The thao',NULL,NULL,'tang 1'),(201,'Hoi dong 1',NULL,NULL,'tang 2'),(202,'Hoi dong 2',19110365,'2021-12-02','tang 2'),(203,'Phong lam viec 1',NULL,NULL,'tang 2'),(204,'Phong lap ke hoach',NULL,NULL,'tang 2'),(301,'Phong lam viec 2',NULL,NULL,'tang 3'),(302,'Phong lam viec 3',NULL,NULL,'tang 3'),(303,'Phong trien khai ke hoach',NULL,NULL,'tang 3'),(401,'Phong giam doc',NULL,NULL,'tang 4'),(402,'Phong chu tich',NULL,NULL,'tang 4'),(501,'Phong ket noi',NULL,NULL,'tang 5'),(997,'Phong dao tao',NULL,NULL,'tang ham'),(998,'Phong chay deadline',19110426,'2021-12-02','tang ham'),(999,'Phong server',19110436,'2021-12-03','tang ham');
/*!40000 ALTER TABLE `phongban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `TaiKhoan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MatKhau` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MaNV` int NOT NULL,
  `ChucVu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`TaiKhoan`) USING BTREE,
  KEY `fk_maNV_idx` (`MaNV`) USING BTREE,
  CONSTRAINT `fk_maNV` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('hoa','hoa',19110365,'nhan vien'),('phi','phi',19110426,'nhan vien'),('thang','123',19110436,'nhan vien');
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thannhan`
--

DROP TABLE IF EXISTS `thannhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thannhan` (
  `TenTN` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MaNVTN` int NOT NULL,
  `Phai` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NgSinh` date DEFAULT NULL,
  `QuanHe` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`TenTN`) USING BTREE,
  KEY `MaNV_idx` (`MaNVTN`) USING BTREE,
  CONSTRAINT `MaNVTN` FOREIGN KEY (`MaNVTN`) REFERENCES `nhanvien` (`MaNV`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thannhan`
--

LOCK TABLES `thannhan` WRITE;
/*!40000 ALTER TABLE `thannhan` DISABLE KEYS */;
INSERT INTO `thannhan` VALUES ('Dang Xuan Tri',21501896,'nam','1966-04-02','cha'),('Ho Truc Hoa',20792702,'nu','1988-10-10','di'),('Ly Thanh Mai',21447061,'nu','1999-01-01','chi'),('Phan To Nhu',18743331,'nu','1967-01-01','me'),('Vuong Minh Tuan',21883733,'nam','1998-06-07','anh');
/*!40000 ALTER TABLE `thannhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'congty'
--

--
-- Dumping routines for database 'congty'
--
/*!50003 DROP PROCEDURE IF EXISTS `deleteDuAn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `deleteDuAn`(IN MaDuAn int)
BEGIN
delete from duan where MaDA = MaDuAn;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteNhanVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `deleteNhanVien`(IN MaNhanVien int)
BEGIN
delete from nhanvien where MaNV = MaNhanVien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletePhanCong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `deletePhanCong`(in MaNhanVien int,in MaDuAn int)
BEGIN
delete from phancong where MaNVPC = MaNhanVien and MaDA=MaDuAn;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletePhongBan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `deletePhongBan`(in _maPB int)
BEGIN
	delete from congty.phongban where MaPB = _maPB;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteTaiKhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `deleteTaiKhoan`(in TenTaiKhoan varchar(45))
BEGIN
delete from taikhoan where TaiKhoan = TenTaiKhoan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteThanNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `deleteThanNhan`(in _TenTN varchar(45))
BEGIN
delete from thannhan where TenTN = _TenTN;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDuAn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `getDuAn`()
BEGIN
SELECT * FROM congty.duan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDuAnByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `getDuAnByID`(IN MaDuAn int)
BEGIN
 SELECT * FROM congty.duan WHERE congty.duan.MaDA=MaDuAn;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getNhanVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `getNhanVien`()
BEGIN
SELECT * FROM congty.nhanvien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getNhanVienByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `getNhanVienByID`(IN MaNhanVien int)
BEGIN
      SELECT * FROM congty.nhanvien WHERE congty.nhanvien.MaNV=MaNhanVien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPhanCong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `getPhanCong`()
BEGIN
SELECT * FROM congty.phancong;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPhongBan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `getPhongBan`()
BEGIN
	select * from congty.phongban;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTaiKhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `getTaiKhoan`()
BEGIN
SELECT * FROM congty.taikhoan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTaiKhoanByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `getTaiKhoanByID`(in TenTaiKhoan varchar(45))
BEGIN
 SELECT * FROM congty.taikhoan WHERE congty.taikhoan.TaiKhoan=TenTaiKhoan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getThanNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `getThanNhan`()
BEGIN
SELECT * FROM congty.thannhan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertDuAn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `insertDuAn`(in MaDuAn int, in TenDuAn varchar(45),
in DiaDiemDuAn varchar(45),in PhongDuAn int)
BEGIN
insert into duan(MaDA ,TenDA ,DiaDiem,Phong) 
    values(MaDuAn ,TenDuAn ,DiaDiemDuAn ,PhongDuAn);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertNhanVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `insertNhanVien`(in MaNhanVien INT,in HoTenNhanVien varchar(45),
in NgaySinh date,in DiaChiNhanVien VARCHAR(45),in GioiTinh VARCHAR(45),
in LuongNhanVien VARCHAR(45),in MaNguoiQuanLy int,in MaPhongBan INT,in HinhAnhNhanVien BLOB)
BEGIN
insert into nhanvien(MaNV ,HoTen ,NgSinh ,DiaChi,Phai,Luong,MaNQL,MaPB,HinhAnh) 
    values(MaNhanVien ,HoTenNhanVien ,NgaySinh ,DiaChiNhanVien,GioiTinh,LuongNhanVien,MaNguoiQuanLy,MaPhongBan,HinhAnhNhanVien);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertPhanCong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `insertPhanCong`(in MaNhanVien int,in MaDuAn int,in ThoiGianPhanCong date, in TienThuong int)
BEGIN
insert into phancong(MaNVPC ,MaDA ,ThoiGian, TienThuong) 
    values(MaNhanVien ,MaDuAn ,ThoiGianPhanCong, TienThuong);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertPhongBan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `insertPhongBan`(in maPB int, in tenPB varchar(45), in trPhong int, in ngNhanChuc date, in diaDiem varchar(45))
BEGIN
	insert into congty.phongban values(maPB, tenPB, trPhong, ngNhanChuc, diaDiem);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertTaiKhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `insertTaiKhoan`(in TenTaiKhoan varchar(45),in _MatKhau varchar(45), in MaNhanVien int,in ChucVuNhanVien varchar(45))
BEGIN
insert into taikhoan(TaiKhoan ,MatKhau ,MaNV ,ChucVu) 
    values(TenTaiKhoan ,_MatKhau ,MaNhanVien ,ChucVuNhanVien);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertThanNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `insertThanNhan`(in _TenTN varchar(45),in _MaNVTN int,in _Phai varchar(45),in _NgSinh date, in _QuanHe varchar(45))
BEGIN
insert into thannhan(TenTN ,MaNVTN ,Phai ,NgSinh,QuanHe) 
    values(_TenTN ,_MaNVTN ,_Phai ,_NgSinh,_QuanHe) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateDuAn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `updateDuAn`(in MaDuAn int, in TenDuAn varchar(45),
in DiaDiemDuAn varchar(45),in PhongDuAn int)
BEGIN
update duan set TenDA = TenDuAn, DiaDiem = DiaDiemDuAn, 
Phong=PhongDuAn where MaDA = MaDuAn;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateNhanVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `updateNhanVien`(in MaNhanVien INT,in HoTenNhanVien varchar(45),
in NgaySinh date,in DiaChiNhanVien VARCHAR(45),in GioiTinh VARCHAR(45),
in LuongNhanVien VARCHAR(45),in MaNguoiQuanLy int,in MaPhongBan INT,in HinhAnhNhanVien LONGBLOB)
BEGIN
update nhanvien set HoTen = HoTenNhanVien, NgSinh = NgaySinh, DiaChi=DiaChiNhanVien, Phai=GioiTinh,Luong =LuongNhanVien ,MaNQL=MaNguoiQuanLy,MaPB=MaPhongBan,HinhAnh=HinhAnhNhanVien where MaNV = MaNhanVien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePhanCong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePhanCong`(in _MaNVPC int, in _maDA int, in _ThoiGian date, in _TienThuong int)
BEGIN
	update phancong set ThoiGian = _ThoiGian, TienThuong = _TienThuong where MaDA = _maDA and MaNVPC = _MaNVPC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePhongBan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `updatePhongBan`(in _maPB int, in _tenPB varchar(45), in _trPhong int, in _ngNhanChuc date, in _diaDiem varchar(45))
BEGIN
	update phongban 
    set TenPB = _tenPB, TrPhong = _trPhong, NgNhanChuc = _ngNhanChuc, DiaDiem = _diaDiem 
    where MaPB = _maPB;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTaiKhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `updateTaiKhoan`(in TenTaiKhoan varchar(45),in _MatKhau varchar(45), in MaNhanVien int,in ChucVuNhanVien varchar(45))
BEGIN
update taikhoan set MatKhau = _MatKhau, MaNV = MaNhanVien, 
ChucVu=ChucVuNhanVien where TaiKhoan = TenTaiKhoan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateThanNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`nhatphi`@`localhost` PROCEDURE `updateThanNhan`(in _TenTN varchar(45),in _MaNVTN int,in _Phai varchar(45),in _NgSinh date, in _QuanHe varchar(45))
BEGIN
update thannhan set MaNVTN = _MaNVTN, Phai = _Phai, 
NgSinh=_NgSinh,QuanHe=_QuanHe where TenTN = _TenTN;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-03 11:44:42
