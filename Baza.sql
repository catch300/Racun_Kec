CREATE DATABASE  IF NOT EXISTS `racun_kec` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `racun_kec`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: racun_kec
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `__migrationhistory`
--

DROP TABLE IF EXISTS `__migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ContextKey` varchar(300) NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__migrationhistory`
--

/*!40000 ALTER TABLE `__migrationhistory` DISABLE KEYS */;
INSERT INTO `__migrationhistory` VALUES ('201905081726213_migracija2','Racun_kec_test.Migrations.Configuration','‹\0\0\0\0\0\0\í\\\İN\ä8¾_i\Ş!\Êåˆ¡ {fQÕŒz Y¡\ZDAk\ï+1Õ¦;›8%`µO¶ûHó\n\ã$vb;\Î*UÛ»\âlŸ\Ï\Çöù±O\Î\á·ÿgşó‹\ïY[Fˆ\à…}z|b[;\ÄEx½°cúôÃö\Ï?}÷‡ùG\×±¾ˆq\ï“qŒGû+¥Á\Ùl9_¡¢c9!‰\È=vˆ?.™½;9ù\ë\ìôt„Í°,k~cŠ|˜şÁş<\'ØwM\\\èE¼õ,ST\ë3ğa\0.\ì;\à\ÄøqG\n#züx·d\ß\Ğ\àgh[<WK\è=\ÙÀ˜P@\Ïg\\Ò\àõ2`\rÀ»\r ÷¼òµœ\Ã\Û.\ë\ä]²¬YA( œ8¢\Ä\ïxú\ï\ÓL\'\ïµ\Ûv¾l\'?²§¯Éª\Ó\İ\\ØŸHˆ\"Œ6¶¥Ovv\î…\ÉÀ\Òfg§s,(,µÿ(&G\ÉÏ‘u{4\áÃ˜†À;²nã•‡œOğõl ^\à\Øód6£¬Oi`M·!	`H_\ï\àg¹›œÿ™\n0\Órzq¶\Ğ+Lß¿³­ÏŒ°ò`.Ò¦,)	\á\ß †! Ğ½”Â\ë•Ó-±¡O\ê\Ã\Ç dr\êC1)“G¦f¶u\r^~…xM¿.lö«m]¢\èŠ\Î\ÈFL+\rch`´~r&+È›~Z¼!¼{˜9ÌŠ\å_°»O7¾#\Ø\ĞÄ®\ìzóY¡õ:3#\ØCa²=kk\ÆyU\Í(ÿ\'ô¸!Œö /\ë¸\Ó\Ï\ê†o`»‡\Õ´’\ä\é\Ïlø¶hŠ—•ª²­;\è¥\İ\ÑWd—\ãLÛ¸\Æ^†Ä¿#^®¡ió\ã=×2^H¹oI\â\Ğ\ék\'R \îv\"mİ¯3\Î{\Ø	N9•X…\ä9›4MZ„A\ä‘\íôZ\ĞÖ´6\è\Ò£xøSh\ì?¢7$\×ü\á=pó¿€ò»İ†\ì7şúÑ¶–H\àZlI¥u¸€x\Ï(ƒ•XR°\İ@>\â‘\ëma-\İ%«a\Zc²uœr3\ÕÏŒ‰\ÉLfL0Û–‘‡È‹\×\Ğ\ÈI\Úe\Ø#¹½´9J\ç ›ªlswÛª\ï\×\ÆF\êJz\ØZ\ra²»YK+_ò!¤h³‡\×Ğ†°óCCİ…ƒa1\Üx\í\Ò0j\Ø_B\Æ{q­no¼\ë¯_c\ÙUİŒ\Õ\Ù\Ş^$³E\İMGF·_›s\Ş{A:••À\à\r\í\á>¥)&a[\ß\ÄfK\Ï\ĞEŒ™=¼zš\Ø\Z\ÚÊ\ë:iôõ½”ñ–¸ñL°»ª£ Ü¯B9ÿ=T² şÆ•òÿ•)\æ¥\Ğ\ëP\Ñ\Í\é\Z‘9Œ\0w÷H’\à®É–$&ŸDdµ‡£{C!Q-şts¯ÀªÂ‡(\"Jm›\é\Çı’\ÊÿG\ìZ-\î\ÙzJ·P¶6\æP¼\è\ë\Âş¾´?õøùÓ¶À\ç\ÎS\Å=µurƒ/ )´>8Ù·\Ès9À5øÆ\Ú\Â|¼sæ¾™C˜–\Â\n€\×Ì½F\Ú)˜0˜O¥÷\\À\0\â\Ä5Ÿ\ĞPò©´\ÍkÚ«ùLºzY”£.U2bÁ4\ÈF\Ì#\Óš¬¸ny¾\ÆORd\ÌpC\ç@¶”‹w•0˜o\á…4ˆ·l{ñ2‡\éŞ–™ØÌˆ™N\á\à¬W\æ_\re0\ä,$‰9«¤¾P\Ã#\ë!‚üq?®N‚º„TMWqm]˜¦ªTH˜Œ_§ujñ±¯D~güh¥“k—Ê²6,«£‰@y	\æÁ©\Ñ\éù+\Ö\Ä\Èm\Õ\ÓR€Še‰\ç¼4²& §\Ëf»ûU¾’Ò––„½İ…JG¬\Ûu\å-vEùlRŞJÿ\Ş\è\á™mô\é×‡Á«Uc9\å\åV»œf§#±+d¾fÁF/3\ä€\Åû!·oy\ß|–e\'ò†ù¬\"q~\r‚€½m¤´F\Şb-³œ\Æó–\İüüc\æD†<¿œ\Û|&JB°†Z/›šqz‰Âˆ^\0\nV y=»~i˜j\Í+,‹˜K7\Ø\å\ÓGP$¿\ËzS•\ŞYXú²\äX—l™~\âAÓ€•,ë•¤V’g\n<\Ö\å	/öqcöa-œZ¤\à\É\íñx\ĞCF\âM\í1ò=%o\ì€#2\î\Ñ\Ø\'Ï¸“qò\Æ2\Î|¦{\é¾S’¶\Ò5Q\ßvÂ\Z\Î1\Û\ä\n\ÚHµ™®N¤3Ÿ¤Ë³ùARƒ4²0‹H­rî¼­=Jw•1²–ö\"†*cˆ¶ö(i`P†HF|¹Q~®½…üV\Ğ\Õ\È/\Øhò[ñÜ©FRò·d0¥£=Hã’¡D[­\ZM?Eb–\"„¼­ƒ6\èyWŠZ\è\íq\Ó4+m8ıP\ß#ªI-pui ¯+-eG¯Ú” \ä‘R¤\å\È8¢­=J‘d#\ã­\í‘\Ä÷|G´/\èUôyÎŒŒ‘7Œ\Âğ—Ùˆš\Â\Ã\İU¤Š°F‚E†Š&\Âæœ—:,ş•[õi\Ó\ÔrWJ$‘\áJ»\Ô÷=Id\ß\ZQ&óÀXw©¬&­\Ù\é\"MC\Û\ìª\ä:¼1dóÛº¤§i2D\Ú\ĞAÇˆv\ÉO¦}¿·}hT\Ò\ë	\n–\Ş\ÙW\Î+!\åö—uPŠQğ¦‰\íM)\Z¨\ÉgÏ£‚Zôo\Î#qÍ•Î¥\Ğ\\6$\É\Ç%[\ä&a¹\ë\×\å?¼\ã¤ÿ8ıõ\ÜClÁÅˆk€\Ñ³dY¶™ı§\ã¿hÒ‡S¬<‹\"\×3D2M\Ë\êy\í¥`%\ÛÜ˜\×5ù²\\{\è¼Î¾ \rÉˆê¢Uğö\ÇQr\Ù\Ë\Òt•Rnù\É\ĞòÜ–\Üu¬¶\í)l\ãÔ»¼˜©	–½a\ä|\É\Ş júco)©o…\Ö\é	Œ#O¦Œ‹‰\ë\"w\"O†R\È\æ]+Ã¨…½Ï¨B¥ôƒ+\ìÂ—…ıÏ”\èÌºúû£ ;²nB\æ:Ï¬\ë_\Ë!MkP\í8’Õ”J|\Üa%>=k\çúiÀª\ÖvcaMj\×NSºA2¨Ö·õ\Ö#½\\­J«51¥m—’\\\ÆÖŠ\Õz\é^\×Ê°~Š1Zi\ÖNTA)ü\è-Œš Z\\5\Ä\ÓL¥\å\İËšú\ÉÒ¨UE,O\ß\àµU*\Âium5\è\évñ\İÕ£³\ëÜ€`.«\é\ÍQ¹J¦7”Rô2ğ\Å:¬†\åN©ú™&»\"!sH\ÑLÿª=£^w¿ú“Oò+k¢‘\Î\Ò;’¼T¥gí²°ä›©%Ù¯¡yPî¸ŠWşLK\åwòƒ¬\n)§\ë\Çf¬ú\Ø\Ô}d\ßE\ØEjE\Ø1g^´2\Øo(	I´§ª$Äˆİ¾Z¤ºX\Älò\r¬#1MTK1–š˜f¦)bc®~UŠ©¥\è2\áW¾T¦+RQNX\Êfl]‡Ò¾–e_(ŠvH	Ç5\'\ÍÛ²¿2“>\ç¦ê€œh´“R’òGbfŠ¥š\Í\Ü@„\ÖDò/´1t#œ¹\ÂODx#1D{¤\\C\n\\f¡“P\âp(\ëv`¥ú_€³!ıt¯ğMLƒ˜²%C\å)ÿ$ñ)uó§õ2*\Ïó› ı\'1c,±‰’ \İ\rş%F›ó}ix^U@$ÎŠG.’³¤Icıš#}&¸%ß¾\Ü\Ç\ŞC?ğXtƒ—`ûğöÁ_\á\Z8¯\âS5HóA¨\Û>¿@`?\â=û“É°\ë¿üô;\ÚŠ;^\0\0','6.2.0-61023'),('201905121434355_mjerne_jedinice','Racun_kec_test.Migrations.Configuration','‹\0\0\0\0\0\0\í\\\İn\ã¸¾/°\ï \èr‘“™şl{³É¤f3	\âd\Ğ;ƒ–c‰T%\ÊH\\ô\Éz\ÑG\ÚWX\ê‡IQ2E\Ë?¹IHñ\ã!õsÈ£sòÛ¿ÿ3şù5œŒDğ\Ä=?=sˆ=\â#¼˜¸)}ş\áG÷çŸ¾û\Ãø£¾:_øs\ï³\ç\ØHœLÜ¯”F£Q\â}…!HNC\ä\Å$!\Ïô\Ô#\áødô\î\ìì¯£óód.\ÃrœñCŠ)\naşûó’`F4Á-ña”\í¬gš£:ŸA“xp\â>\0/Å³%ôf&ôô°÷d\×hğtLª)]`L( Læ‹§NiLğb\Z±<¾E=÷‚–k¹¨7]\ÖÙ»lY£z ‡òÒ„’°\'\àùûrŸF\êp«\İv«}d;ù‘\í8}\ËV\ï\æ\ÄıDb”`´tu²‹\Ë \ÎllvñvNù\ÈG\î?©\Âx”ıœ8—i@\ÓN0Li‚\ç>\Èû\ß\É\â	Nƒ@“	\Êú¤\Öt“\Æô\í>—\Â#¶¬\ä\É\0#¡\Z¯\\,ô\Ó÷\ï\\\ç3\ÌXñBØ”)%1ü\Ä0ú÷€R³\×z\ã\Ã|gb¨“†pÅŒ§!\ä“2>25s[ğú+\Äúu\â²_]\ç\Z½BŸ·”‚<aÄ´’\r¢q\n5‚vOÎ¸‚‚ıO5\ÂKp€‰‘Ç¬X5ñ{cù\Æ÷\ÄKšÙ•]/`<ªµ³[gSf-6v`m-$·Q\Õb\äÿ„?†\Éôeÿ³úñ\Z¬°Z‚\æŸşü\Ç\Í\0ŸÁ\n-rz)P¹J!\×y€AŞ|EQqø8-´­\Ô\Øë˜„$¨44o=‚x)“…4û¦$=[;‘õ·y\ëa\íD\\Hna\'Ê‘û²ó˜¼s‚M“vadµ-05­tiÁ ~ƒ©\04\rgh\íƒì˜¿½cüjÇ¯ ‡BÀNG÷1û­¼ı\è:Sdp[\ÒjJ\å·3\Ü\0\èŒ7¦‚L)X-\áì¡¤«F ò‰‚Ğ³\Ò~Ô‚iº\ÖK÷ŒÎŠu	ú”\éj%Ì»4¢‰\í\r™¤Î­Lª´ºş¦U\Z~X›\È+±0µ\n\ÂŞf†F¾\åCL\Ñò\0—¡%a\ïm\ë-<ôkŒ\ím\×.í¢‚ı%f²×§js\Û\İ}ú\ZÊœ©ö¶\Ë\äYY\Âõ7Å¸\ÃÚŒ´”\İ\ÂXğ¡û²¬\ÑSŠb¶õıA\Â¶T0{>b\Â\àjdib-4\ÔÈ«:©õõV\ÊxOüt\r3\ì¾\ê\ÈGV!£J~•¬\ãJùÿx\Ê>\æ¥0\èOQ\Í\é9øvÿ@’\n\à/ÈŠd&Ÿ$d~€W·F1‘-şşæƒ=|hs’„x(·m¢«*¯\ä²\Ü±\ït\Ü\Ïù«[=[3û(\ÊNûôm\â~\ß\Ø=^uu­ñ\Êø€Œw\îª\â_Á\0R\è|ğŠO— ñ€¯ñ\rlf¹…ùg&—\Ì=3/…0m: „= ]jeH¯¯\0™`\Õj\ÏŒ ÎœLû\Øv\îj\ne³6\í\Íx$¨›[º\ëH\':\ï&57”x„9\ç:C9¸|x\îuHo\Èm„¹;\ŞĞ¶2ì‹\ÒÁ»$úSx\Í~—5§>Lwô|Ó‰½7¢\é\Ş\Â\Ñ1¬ğ¯le#`\\Š\å\å\\Í³VøJ5—¬§–÷¬¤ô\ã*q2\Ô)¤r¶Š‡\\§v\è\ÜM¶e‚4@\ÒH ı8­\æ\ßú\Z\Ã´ß¬\Ô\áŠÁn L;Ã²*\Z”7`ô‘\Zu|y‹\Õ	r\ßvµ \ì\nÿ’!<¡ùĞ¡r±û\\UI\\\ï|ƒ\Í\İ\')¡|óªWd°Zm\\±¹\êş\Ş\Ø\ãk\è$ˆ±‹ß¸­»\"\Çrš\Û\Ñ\îr6;A^\Îù•k½\Ì6K\æ÷‡Ê¾U}\ãQ‘œX6ŒG-YŒ\ã[E\ìn#d5–-Î´Hi¼üa\Ú?¿/,0F^¢Ió«¤­f¢$¨ô²©™¤\×(N\è `²\ÛÓ¥6“­y‹e\ás©»ù¶¸Á\á#²\ßEkÒ–\İY[ú¦,±®\Ù2\ÃÌƒ\æ+\Ñ´u²4S€¸+Mğ’iˆ7&vâ‰™E\ØaW=D¤²\É£\Ê\ĞQª\Æ8<\áN\Â\á\æ8UÂˆS56q\Æ#\å½7\Î;\r¶5‰2}\ÍÈ»“!‰­s&¬Ö\ë¢t\á©U>\ë/\ÇH“™Gj¥÷^¶™£qW£h1G\à1Tƒ·™£\äA\"o8\Zú–^p@şj]»[\Æuğ·¼\Ø(üm¹\î´#I\é[\"˜\ÔaÇ³¸D(\Ş\ÖC«\ÓO—%‘°l\ë¡\rjÚ•¤j§9nf b\å\rG£òI{@5\é6P—\r\ã;h¥¤\ì(ô\êL	Ú€<Bò´‡·™£\ÔI6\"N\İjÄ¿\ç‹8¼mx¢·¯rfDŒªñh¦¼™\r¨)e£¿Š´\r\ì`0\ÏPQ(¬\Ïy\é\Â*¿r\Ë> o\Ú7\ï\Z‰$\"\\£s—ú~ FVñ­9Y\Æú³²}h\ÇN\×i\Z\Êf·%t\á\rÁ\Íoë§-ˆyC#\Ê!?o\Ø\ïı\İô¢\Ñ:^M@°\ÔNs\\1¯@„\Û{\ÖA#FQ6\í\Ù\Ş4¢\ê#\Õ\ìUTP‰ş\ËH\Ü\æB\çFh®x$\Ë\Ç%+\äga¹Û·\é?‚Ó¬ÿ4ÿõ2@lÁõ·\0£gfÉŠl3÷O§Qê£§Vy”$~ ‰d\ê\n–\å÷uza”móÆœ¸¾É—\Í\ÒÃ€\àEñm›Œ(k¥€\×G®\Çe7GHóU\n¹\åg\ÛV\ç\ZJ×³\ØÖ’lÃ”»=\Í\äKk1_\Ò\ZDN´†’ú\æh‘¿aø¤Ë¸\ØsY\äNø¤©„Ü¼kM¹\ÒúõiU¨‘~pƒ}ø:qÿ™ºpnş>\ã\ãNœ»˜¹\Î\ç\Ìù×–Õº5lQ\ì8\ÕJ|ü\íJ|,k\ç\ì4`GUk»±°:µ3\ã`>n+\Êõm\Öz¤–«Ù¨´\\³%\Ûv\É\ä&¶R¬f¥{}+\Ã\ìc°Ò¬¨‚TøaMF…HƒWm\ãiö¥\åıËš\ì¸4hU\Ñó\é<¶\nE8F\ÇV~~\ß]]:ûÀ5ú²\Zk‰šU2\ÖPR\ÑË–7V»\Z–O\â\éxOe&J¦MÑŒUöv[Z\Í.‹S¾µz\Ã7¶#¾Lu‡v›ûJ§–_¦¿e-\Éa	ô$q{¯ü7P¦õ;ùQV…4Ó\Õ×¦­úXv}\ßE\ØAjN\Øk.¼hk°_S’Yá¶’-¶yµH{±ˆX\äÛ²D7Qw,E[j¢›‰w\è¦Hµ¹úme(ºB–ºK‡\ßzS\Ù]‘ŠD!ûvcYJ³\áX+Q\Å\íòĞ¦+‡+3±Y¤¬b¢\ÑNJIš‰™)şg6s	Z\Ô\Ù\Ğ\ÆĞ“Œpõ\Ì\r~&\Ü(ñG”K\Ê-¤Àg:%>²n&I^ ÿ){\äc8‡ş\r¾Ki”R¶d\Îé¿€d>¥kş¼^F–y|\åÿ$fˆ%01Q´»Ã¿¤(ğ+¹¯5×«ˆ\ÌY•‘‹\ì]\Ò,‚±x«>lTn_\åca,¹\ÃS°‚6²=%ğW¸\0\Şÿ\Ô\ß²ùE\È\Û>¾B`ƒ0)1\êñ\ìO\Æa?|ı\éwU´_¦:^\0\0','6.2.0-61023'),('201905161807549_final','Racun_kec_test.Migrations.Configuration','‹\0\0\0\0\0\0\í\\\İn\ã¸¾/°\ï \èr‘“™şl{³É¤f3	\âd\Ğ;ƒ–c‰T%\ÊH\\ô\Éz\ÑG\ÚWXJ\"%’¢d‰ş‘;-r“P\â\ÇCò;\çG\ç\ä·ÿgüók8+\'ˆ\à‰{~z\æ:{\ÄGx1qSúüÃ\î\Ï?}÷‡ñG?|u¾ˆ÷\Şgï±8™¸_).F£\Äû\nCœ†È‹IB\é©G\Âğ\É\è\İ\Ù\Ù_G\ç\ç#\È \\†\å8\ã‡S\Âüö\ç%ÁŒh\n‚[\â\Ã \á\í\ì\É4Gu>ƒ&ğ\à\Ä}\0^ŠgK\è\Í(L\è\é/`\r\î\É\n®\Ñ\n\à\è:˜TS<»À˜P@™\ÌO	œÒ˜\à\Å4b\r x|‹ {\ï	\äs¹¨^\ï:­³wÙ´FUG\å¥	%aOÀó÷|Fzw«\Õv\Ëud+ù‘­8}\Ëf¯\æ\ÄıDb”`´t}°‹\Ë \Î^¬-v±;§¢ç‰£>?)	\Âx”ıœ8—i@\ÓN0Li‚\ç>\Èû\ß\É\â	Nƒ@“	Ê)\r¬\é>&Œ\é\Û|\æ\Â#¶,\å©\0#¡\ìo\ê\\Lô\Ó÷\ï\\\ç3\ÌXòBZ”)%1ü\Ä0ú÷€R³m½ña¾²51ôAC8‹b\Æ\ÓŠA™š¹\Î-xı\âı:qÙ¯®s^¡/Z¸ O1­dhœBƒ \íƒ3® \àğ\Ãdğ00ò˜+¾b;ö˜/|O°¤™]\Ù÷Æ£J;\Ûu6eF\ĞBa³nkk!¹ª=ÿ\'ôø1LĞ—EüÃ\ê\Çk°\Z`¶\Í%>ıù›>ƒZ\äôÒ r•B®ó\0ƒüqòE\Å\á\ã´\Ğ6®±\×1	HPjh\Ş<{ñR&©?›’4öl\íD\Ô\ßN\ä­\ÃÚ‰¸\Ü\ÂNğ‡²ó˜¼c‚Mƒ¶adux-\èjZ7\è\Ò\Zƒ!<¼h\Z\Î\Ğ\ÚÙ¹{Où\å\\A…€—\îcö¿ı\è:SdpÖ¨\Ñ\\pk`g-„E0YaIº\n2¥`µ„³\Î_ƒ@ü‚\á3nP*Ák\æ\ÌôÉ¬µ	ú”\é\Z%\ÌD“\Ûk2)·²±\Ê\ìú\ÛZ¥û°67Qgba{5„ƒ\Õ:Zıv”1E\ËnGK\Âöm\ë><ô+Œ\ím\×>í¢†ı%f²W\Ç\ìî¶»ı8¶+s¦\Û\Û6“geA\n[\Ô\ßtı†µ)—\İ\ÂXˆ®‡²¬\Ñ\0\ç+M1	[úş \á›*˜½@1a8gYšX\r\í\ä\Îu4úz+e¼\'~º†v_u=‡UÈ¨”\ßB%«\Îß¸Rş?Àrˆq)zXt³GúFh#\à\İ?²¤ø²\"™\É\'	™°uk\Õ\ân\ì98ÀÇ‚&‡ğ!Iˆ‡r\Û&»*~%W\åşˆ}§\å~^\È_\Ş\ê\Ù˜\ÙGQvÚ§o÷û\Ú:˜ñÊ«k…\Ç\ã*Ş¹«;ˆ;|H¡óÁ+¾=^‚\Ä¾Á7°‘\Õ\æS`œ™p\\2÷Ì¼Â´\î€öP‚f©µ.½>d‚•C\èO®`q\ædšw`Û±\Ë!´\ÅÚ´6\ã‘D¢vn™®#Mœh½›T\Ü\Ğ\â\İ9\×\Z\Ê\ÙÀ\å\á¹\×\"}GCÎ½8Ø²C\Û\Êp\0.*\ï&’˜O\á;\Ä]¶;\í\Ìaº£\ç›I\ìƒÍ´GÇ°Â¿²>”õ€1!KÔ¹šg­ğ•\Z.YO	\ä÷¬„ûq8\êR5}\ÅC®S9t\á&›RCj id0~­\Ö{‹µ\îÆXzw\Í`\×P¦­aYM\Êk0O\æHŞŸ\ßbM‚\Ü7]-%h«\"¾dHo>t\è\\l?W•W+_csûIJB\à;¯\ÛuFfkŒ+\Ög½\Ñ\ßwöø\ÒZ	\Ò\Ù\Åo\\V‹UQc9õ\åhv9›$¯\à|\ËÌ^f›)‹ûCi\ß\Êg\ãQ‘­\ÈÆ£†´\Æñ-ˆ\"v·‘\Òy‹3-r/˜öOøŒ‘—òşJiË‘(‰ÁjO\Ù\ĞL\Òk\'ô\nP0\Ù\í\é\Òk¯©Ö¼Á²ˆ±tƒ]\ß-apD\ìwÙš4¥{V–¾\î9\Ö5›f˜y\Ğ<`%[€Æ®N–w\n·\å\r^’ \rñ\Æl\ÄV<9\ÕHÁ“t\Ç\ãA‰7u\Ç(Söd”²±\ÈÀSpDcwœ2O\Æ)\ë8ã‘¶\ïµóNmµc¢J\ßn\ä\Î\İ\É.‰mr]Xm\î\×F\é\ÂS\ë|6_[vLf©Uö·uG)\â®2F\Ñ\ÒA\ÄPe\Ñ\Ö%\Êy\Ã\ÑĞ—{Áò\×\è\Ú;ğ·¡_ù\ÅF\ão\Ãu§I\É\ç’Á”\İñDZ—%\Úzh\Õ\ÎôS$j)$\äm=´AO»R\ÔB\Ø7O3±ò†£\Ñõ¤½C5i\î .ú·\ĞJK\Ù\Ñ\èÕš´yG\n)\Òrd\Ñ\Ö¥J²‘qª\Ö\îH\â{¾Œ#\ÚvOô¦şeÎŒŒQ6\Âğ›\Ù5…‡1ú«HS\Ç‹\Âæœ—6,ş•[õyÓ¡yWK$‘\áj÷©\ï1²Œoí“e`¬?+›»¶¬t•¦¡-vSòG\Ş.¸ùm\Òó´\"o\è¡cD;\ä\ç\r‡½¿w½h4ö\×,ıaw\\9¯@†”\Û{\ÖA-FÁ›loj\Ñ@ı•rô2*¨Eÿ\Æ<·¹ò¹š+^\Éòq\É\nùYX\îömú\à4{~šÿz 6\á\ê[€\Ñ3³dE¶™û§Ó¿h\Ó\ÇS¼<J?0D2M\Ì\ê~\rR@Œ²eŞ˜\×7ù²^‹¼(¾ m“e¢Uô\Ú\ã¨º\ì\æi>K)·ül\Ûrİ\Òõ¬¾µ$\Ûn\ê_fj‚¥5Œœ/i\r¢¦?Z\ÃHI}s´\Èw`7|2e\\¸Nr/|2”Fn^µ:ŒZi½}Fª¥\Ü`¾N\Ü\æ.œ›¿\ÏD¿\ç.f®ó\Â9sşµey¤=“\ÍÕ;2›R¿]eñœ\n\ì©lm?&Ö¤w\İH˜÷ÛŠ„j›5	õz5V‹b¶d\Û>™\\\ÇÖªÕ¬t¯oi˜b\ì¬6k/ª T~X“Q#\ÒN««¶q5‡\ÒòşuMv\\\ÚiY\Ñó\é<·JU8Î­ı ıN¾ûºuö=\Ìu5\Ö\Õ\Ëd¬¡”ª—-¯¬vE,Ÿ\ä\ãñ\êL´DM›ª«ôí¦¼š}V§|k)wlO|™š\í60ö¥NU–_ª¿e1É°zRÎ¸½ªWş(\Óø¡ü(\ËB\êù\Æú¶\Ë>–­UÅ‡vš¶Í…mŒöjB2+\ÜTb\Ä\î^.\Ò\\-b6Gù¶,$1\r\ÔK1Öš˜FLC¤\Ædı¦:S%KõÈ„\ßxS\Ù_•ŠB)ıvc]J½\áXKQ:Š\Ûæ¡»V¬Wgb3IU\äL£½Ô’Ô¿3S,ım\æ´¨ ²ÿ©¡§\áòüL„7\Ğ$¯h—”[H\Ï,tJ|e=˜$y…ş¤ì•\áú7ø.¥QJÙ”a8”’ù”¶ñó‚U\æñ]”ÿ—˜]L‰‰² \İş%E_\Ê}m¸^5@dÎŠG.²½¤YcñV\"}&¸#_¾\Ò\Ç>\Â0\nXr‡§`md{J\à¯p¼7ñ­¿dóF¨\Ë>¾B`ƒ0\áUö\'\ã°¾şô;¥\"øL^\0\0','6.2.0-61023'),('201906161448500_pdv','Racun_kec_test.Migrations.Configuration','‹\0\0\0\0\0\0\í\\\İn\ãº¾/\ĞwtYì‰“\İşœö9Ø“lŠ`O6Aœ,zg\Ğ\ãe,‘ªDIŠ>Y/úH}…R)‘%K´l¹\Û\"7	)~R\ßÌ£™üûŸÿšşü\Î\Æ	\"xæœº\Äñ^\ÍÜ”>ığ£ûóO¿ı\Íô“¾8_\Ås²\ç\ØHœ\Ì\Üo”F\ç“I\â}ƒ!HNB\ä\Å$!Oô\Ä#\áødòşôôÏ“³³	d.\Ãrœ\é}Š)\naşûó‚`F4Á\rñağv\Ö3\ÏQ/ „I<8sï—\â\Å\Zz\nzòxwd\ß\Ğ\àg\è:˜Ts<¹À˜P@™\Ì\ç	œÓ˜\à\Õ<b\r xx {\î		\äk9¯ïº¬\Ó÷Ù²&\Õ@\å¥	%aOÀ³|Ÿ&úp«\İv\Ë}d;ù‰\í8}\ÍV\ï\æ\ÌıLb”`´v}²ó‹ \Î¬mvñvN\Ä\Èw\Úÿ®$\ãQöóÎ¹Hš\Æp†aJc¼s\î\Òe€¼\Ïğõ¬!\á4d1™ ¬Oi`Mw1‰`L_\ï\áù‹u)ÿD˜\è\åx\Ó\àb¡×˜~x\ï:_˜8`À’Ò¦\Ì)‰\á_ †1 Ğ¿”Â˜½\Ök\æ;[CŸ4„‹(f<\r¡˜”ñ‘©™\ëÜ€—_!^\Ño3—ı\ê:W\èú¢…òˆ\ÓJ6ˆ\Æ)4\Ú>9\ã\n\n?m@\Ş^ƒ&F³b\åÄ—\ì=\ä\ß¬ifWö½€\é¤\Ò\ÎvM™´P\Øl\Ø\È\ÚZHn£ª\Å\Èÿ	=~“ôeÿğ³úñØŒ°Z‚–Ÿşøû\í\0_À­rziP¹J!×¹‡AŞ|CQqø8)´k\ìUL\Â{”\Zš7/@¼‚”\ÉB\ê}s’Æ­ÈúÛ‰¼u\\;’[\Ø	>òPvb“\çbN°m\Òv ’€l¯]M\ë]z\Ã`\ïš†ô\æƒ\ìÜ¿»§üMÏh´	\\\å\íL‚P{“Iæ¢« s\n6k¸¸\ç$5ÄŸ(h¼\àV£\Ì\Ğ]³Y¦gL¶«M\Ğ\Ç$HW\Ğ(a\ŞeMn¯É¤t\îdH•\Õõ7¨\Êğq\rk¢®\Ä\ÂÀj;u4\í\í(cŠ\Ö#\\Ö„½?´«ğ\Ğ3¬0.¡‡BÀs³\ßx\ä\æG×™{ C\ì\ß\ßøi\0_c&`u`\în…\ÛVC\Ù,İ¨¶\Ù5+3Qœşö¡7®aH¹\ìA=”)À\à\rpRÒ´°­\ï>³¥‚\Å3ôf„“¥µ\Ğ\ĞN>[\×I£C·R\Æ;\â§o0\Ãî«b\ä¸\n•ò[¨d5ø;W\Êÿ‡J1/…A\ÏP‰nöH\ßX\Ëq„®ûÇˆt\0E6$3ù$!\Ë^\İŠ‰jñ7÷ \ì\ß\ä>&	ñPn\ÛdW\Å\ïİªÜŸ°\ï´\\\ÂùË«;[3û(Êôôu\æş®¶f¼ò~Z\áñ €Šw\æ\ê\â_\Â\0R\è|ôŠ¯ˆ ñ€oğ\rlfµ…ùg&\Ì=3/…0­; „= YjmH¯\0&X9…\Şs	#ˆ3\'\Óüv»œBÛ¬m{3H$j\ç–\é:\ÒÄ‰Ö»I\Å\r-\èĞs­ñš-\\Ÿ{-\Òw\ä1xÜ‹ƒ-ohWÀE\å\à\İDó)¼b‡¸\Ëv§9wô|3‰}0¢™\Ş\Â\Ñ1¬ğ¯le#`\ÌE\ÈRn.—Y+|¡†K\Öcù=+\á~\\\'N†:‡TMDñ\ëT]¸É¦$\ZH\Z™Œßõ\Ñ\â3^mø½ñs”>\\3\Ø5”yk\ìUG\Ñğ\ZÌ£9R£\ç·X“ wMWK‰\0Ú®ˆ\Ï\Ò†¯:\Û\ÏU¥\Ä\Õ\Î\×\Ø\Ü~’’ø›\×m„º¢«5\Æ\ë«\Ş\ê\ï;{|i\r­\é\ì\â·n«Å®¨±œúv4»œ\íNG’Wp¾e\åF/³Ë’\Åı¡´oe\ßtR\äò†\é¤!Aqz¢ˆ\İm¤„E\Ş\âÌ‹lÅ‹\æıS÷\Âc\â%†¾R\Úr&Jb°‚Z/›šIz…\â„^\n– »=]øa\í1Õš7X1—n°\ëoK1\"û]¶&M‰›•¥¯{AuÅ–f4X\É q¨“e‚\0\Äm€$HC¼5¯°ON\ZRğ\ä\îx<\è!#ñ¦\îeòŒR6öÀ¹t\nh\ìS\æ\Ò\É8ecg:\Ñ\Ş{\í¼Sc[í˜¨Ò·¹sw2$±M²«\Í\ã\Ú(]xj\Ï\æ\Ëq\ÒÀd‘Z\å½ó¶\î(E\ÜU\Æ(Zº#ˆªŒ!Úº£\äA\"o8\Zúr/8 ®½Æµğ—_l4ş6\\wš‘”\Ì,L\é\è\'´d(\Ñ\ÖC«\ÓO‘r¥·õ\Ğ=JQ½³;nK c\å\rG£\êI{@5i\î .[Æ·\ĞJ\Ë\Ë\Ñ\èÕš÷³y …¹72h\ëRe\Ò\È8Ukw$ñ=_\Æm\Ã½i|™3#c”G£0üf6 ¦ğ0Fi\Z\Ø\Â`‘¡¢QØœóÒ†Å¿r«> o:4\ïj‰$2\\­sŸú>#\ËøÖ€œ,cıY\Ù<´e§«4\rm³›’?\Úğ†\à\æ÷uH\Ï\Ódˆ¼¡‡íŸ7öş\Şõ¢\Ñ8^O@P°ô\Î\î¸r^)·÷8¬ƒZŒ‚7\Ø\ŞÔ¢ú#\å\ìeTP‹şMy$n{\rs-4W<’%ô’\rò³°\Ü\Í\ëüoÁI\Ö’ÿz ¶\à\ê‰€\Ñ³dE¶™û‡“?i¥\Ï\ÇS†<I?0D2Mµ\È\êû\Z¥eÛ¼5\'®oòe½ª0 xU|A\Û%#\Ê\ZE«Íµ\ÇQKm\Ù\Í\Ò|•Rrúé®…·¥\ëYGkI¶a*Yfj‚¥5Œœ/i\r¢¦?Z\ÃHI}K´\Ê\ßÀ0|2e\\¸\âq/|29nßµ:ŒZ\âhıúŒ*TK?¸\Æ>|™¹\Ï;\×]ˆq\ïœÛ˜¹\Îs\ç\ÔùÇ…öL6\×-d6¥B\Ù\İš\Z»ül?VÔ¤Z\İx–Û‰gj¡š5\Ïôº3µU\ë^ü=V\ÙH§ÕœYiP\ß/;\îVaµ¶+õ\Ö|Ó¸2h\Ô.\ãPŠÜ¿:ÉKƒ1Ÿ¾\ÃÓ§TK\Ó\éôi\Ğ\Ò\ïüº¯»c\ßs´Á\\c-Q½\Ø\Å\ZJ©]\Ùñ\âiWŠòY>\ä¨ZDK·´©}±J\ÂnÊ\Ùg\É÷VV\Òñ\í‰/sÓ¹Ü¦Å¾`i¤ú\ãKØ·,	—@\Ê·W\r\Êe\Z?weqG=kXm\Æ\âuk\íFñyƒ¤–„½\æÂ‹6\Æ\ì\r•™nª\ì0bw/úh®ù0›cu;–ƒ˜&j—+FL3‰\Ó©1å¾©š\ÄTRu™ğo*û«5Q¨\"%\Ñn­.©kAIGq\Û<t×º“ñªEl©ê€œ/´—Šú·^fŠ¥ÿj\Í\Ü@‚VDö?®1ô#\\>sŸˆğšD\â\í’r)ğ™…Î¢…OÀ£¬ÛƒI’\×\ÙA\Êù.¡oS\Z¥”-†\Ë@ùg™Oi›?/{Qe\ŞFùÿzb	LL”\ínñ/)\nüR\î+\Ãõª\"sV<r‘½KšE0V¯%\Ò‚;ñ\í+}\ì£€%·x6\ĞF¶\Çş\nWÀ{_\ì›A¶¿uÛ§—¬b&£\Z\ÏşdöÃ—Ÿş!}M\r\Ü]\0\0','6.2.0-61023'),('201906161524349_pdv_fix','Racun_kec_test.Migrations.Configuration','‹\0\0\0\0\0\0\í\\\İn\ã¸¾/°\ï \èr‘“™şl{³É¤f3	\âd\Ğ;ƒ–c‰T%\ÊH\\ô\Éz\ÑG\ÚWXJ\"%’¢d‰ş‘;-r“P\â\ÇCò;\çG\ç\ä·ÿgüók8+\'ˆ\à‰{~z\æ:{\ÄGx1qSúüÃ\î\Ï?}÷‡ñG?|u¾ˆ÷\Şgï±8™¸_).F£\Äû\nCœ†È‹IB\é©G\Âğ\É\è\İ\Ù\Ù_G\ç\ç#\È \\†\å8\ã‡S\Âüö\ç%ÁŒh\n‚[\â\Ã \á\í\ì\É4Gu>ƒ&ğ\à\Ä}\0^ŠgK\è\Í(L\è\é/`\r\î\É\n®\Ñ\n\à\è:˜TS<»À˜P@™\ÌO	œÒ˜\à\Å4b\r x|‹ {\ï	\äs¹¨^\ï:­³wÙ´FUG\å¥	%aOÀó÷|Fzw«\Õv\Ëud+ù‘­8}\Ëf¯\æ\ÄıDb”`´t}°‹\Ë \Î^¬-v±;§¢ç‰£>?)	\Âx”ıœ8—i@\ÓN0Li‚\ç>\Èû\ß\É\â	Nƒ@“	Ê)\r¬\é>&Œ\é\Û|\æ\Â#¶,\å©\0#¡\ìo\ê\\Lô\Ó÷\ï\\\ç3\ÌXòBZ”)%1ü\Ä0ú÷€R³m½ña¾²51ôAC8‹b\Æ\ÓŠA™š¹\Î-xı\âı:qÙ¯®s^¡/Z¸ O1­dhœBƒ \íƒ3® \àğ\Ãdğ00ò˜+¾b;ö˜/|O°¤™]\Ù÷Æ£J;\Ûu6eF\ĞBa³nkk!¹ª=ÿ\'ôø1LĞ—EüÃ\ê\Çk°\Z`¶\Í%>ıù›>ƒZ\äôÒ r•B®ó\0ƒüqòE\Å\á\ã´\Ğ6®±\×1	HPjh\Ş<{ñR&©?›’4öl\íD\Ô\ßN\ä­\ÃÚ‰¸\Ü\ÂNğ‡²ó˜¼c‚Mƒ¶adux-\èjZ7\è\Ò\Zƒ!<¼h\Z\Î\Ğ\ÚÙ¹{Où\å\\A…€—\îcö¿ı\è:SdpÖ¨\Ñ\\pk`g-„E0YaIº\n2¥`µ„³\Î_ƒ@ü‚\á3nP*Ák\æ\ÌôÉ¬µ	ú”\é\Z%\ÌD“\Ûk2)·²±\Ê\ìú\ÛZ¥û°67Qgba{5„ƒ\Õ:Zıv”1E\ËnGK\Âöm\ë><ô+Œ\ím\×>í¢†ı%f²W\Ç\ìî¶»ı8¶+s¦\Û\Û6“geA\n[\Ô\ßtı†µ)—\İ\ÂXˆ®‡²¬\Ñ\0\ç+M1	[úş \á›*˜½@1a8gYšX\r\í\ä\Îu4úz+e¼\'~º†v_u=‡UÈ¨”\ßB%«\Îß¸Rş?Àrˆq)zXt³GúFh#\à\İ?²¤ø²\"™\É\'	™°uk\Õ\ân\ì98ÀÇ‚&‡ğ!Iˆ‡r\Û&»*~%W\åşˆ}§\å~^\È_\Ş\ê\Ù˜\ÙGQvÚ§o÷û\Ú:˜ñÊ«k…\Ç\ã*Ş¹«;ˆ;|H¡óÁ+¾=^‚\Ä¾Á7°‘\Õ\æS`œ™p\\2÷Ì¼Â´\î€öP‚f©µ.½>d‚•C\èO®`q\ædšw`Û±\Ë!´\ÅÚ´6\ã‘D¢vn™®#Mœh½›T\Ü\Ğ\â\İ9\×\Z\Ê\ÙÀ\å\á¹\×\"}GCÎ½8Ø²C\Û\Êp\0.*\ï&’˜O\á;\Ä]¶;\í\Ìaº£\ç›I\ìƒÍ´GÇ°Â¿²>”õ€1!KÔ¹šg­ğ•\Z.YO	\ä÷¬„ûq8\êR5}\ÅC®S9t\á&›RCj id0~­\Ö{‹µ\îÆXzw\Í`\×P¦­aYM\Êk0O\æHŞŸ\ßbM‚\Ü7]-%h«\"¾dHo>t\è\\l?W•W+_csûIJB\à;¯\ÛuFfkŒ+\Ög½\Ñ\ßwöø\ÒZ	\Ò\Ù\Åo\\V‹UQc9õ\åhv9›$¯\à|\ËÌ^f›)‹ûCi\ß\Êg\ãQ‘­\ÈÆ£†´\Æñ-ˆ\"v·‘\Òy‹3-r/˜öOøŒ‘—òşJiË‘(‰ÁjO\Ù\ĞL\Òk\'ô\nP0\Ù\í\é\Òk¯©Ö¼Á²ˆ±tƒ]\ß-apD\ìwÙš4¥{V–¾\î9\Ö5›f˜y\Ğ<`%[€Æ®N–w\n·\å\r^’ \rñ\Æl\ÄV<9\ÕHÁ“t\Ç\ãA‰7u\Ç(Söd”²±\ÈÀSpDcwœ2O\Æ)\ë8ã‘¶\ïµóNmµc¢J\ßn\ä\Î\İ\É.‰mr]Xm\î\×F\é\ÂS\ë|6_[vLf©Uö·uG)\â®2F\Ñ\ÒA\ÄPe\Ñ\Ö%\Êy\Ã\ÑĞ—{Áò\×\è\Ú;ğ·¡_ù\ÅF\ão\Ãu§I\É\ç’Á”\İñDZ—%\Úzh\Õ\ÎôS$j)$\äm=´AO»R\ÔB\Ø7O3±ò†£\Ñõ¤½C5i\î .ú·\ĞJK\Ù\Ñ\èÕš´yG\n)\Òrd\Ñ\Ö¥J²‘qª\Ö\îH\â{¾Œ#\ÚvOô¦şeÎŒŒQ6\Âğ›\Ù5…‡1ú«HS\Ç‹\Âæœ—6,ş•[õyÓ¡yWK$‘\áj÷©\ï1²Œoí“e`¬?+›»¶¬t•¦¡-vSòG\Ş.¸ùm\Òó´\"o\è¡cD;\ä\ç\r‡½¿w½h4ö\×,ıaw\\9¯@†”\Û{\ÖA-FÁ›loj\Ñ@ı•rô2*¨Eÿ\Æ<·¹ò¹š+^\Éòq\É\nùYX\îömú\à4{~šÿz 6\á\ê[€\Ñ3³dE¶™û§Ó¿h\Ó\ÇS¼<J?0D2M\Ì\ê~\rR@Œ²eŞ˜\×7ù²^‹¼(¾ m“e¢Uô\Ú\ã¨º\ì\æi>K)·ül\Ûrİ\Òõ¬¾µ$\Ûn\ê_fj‚¥5Œœ/i\r¢¦?Z\ÃHI}s´\Èw`7|2e\\¸Nr/|2”Fn^µ:ŒZi½}Fª¥\Ü`¾N\Ü\æ.œ›¿\ÏD¿\ç.f®ó\Â9sşµey¤=“\ÍÕ;2›R¿]eñœ\n\ì©lm?&Ö¤w\İH˜÷ÛŠ„j›5	õz5V‹b¶d\Û>™\\\ÇÖªÕ¬t¯oi˜b\ì¬6k/ª T~X“Q#\ÒN««¶q5‡\ÒòşuMv\\\ÚiY\Ñó\é<·JU8Î­ı ıN¾ûºuö=\Ìu5\Ö\Õ\Ëd¬¡”ª—-¯¬vE,Ÿ\ä\ãñ\êL´DM›ª«ôí¦¼š}V§|k)wlO|™š\í60ö¥NU–_ª¿e1É°zRÎ¸½ªWş(\Óø¡ü(\ËB\êù\Æú¶\Ë>–­UÅ‡vš¶Í…mŒöjB2+\ÜTb\Ä\î^.\Ò\\-b6Gù¶,$1\r\ÔK1Öš˜FLC¤\Ædı¦:S%KõÈ„\ßxS\Ù_•ŠB)ıvc]J½\áXKQ:Š\Ûæ¡»V¬Wgb3IU\äL£½Ô’Ô¿3S,ım\æ´¨ ²ÿ©¡§\áòüL„7\Ğ$¯h—”[H\Ï,tJ|e=˜$y…ş¤ì•\áú7ø.¥QJÙ”a8”’ù”¶ñó‚U\æñ]”ÿ—˜]L‰‰² \İş%E_\Ê}m¸^5@dÎŠG.²½¤YcñV\"}&¸#_¾\Ò\Ç>\Â0\nXr‡§`md{J\à¯p¼7ñ­¿dóF¨\Ë>¾B`ƒ0\áUö\'\ã°¾şô;¥\"øL^\0\0','6.2.0-61023');
/*!40000 ALTER TABLE `__migrationhistory` ENABLE KEYS */;

--
-- Table structure for table `korisnik`
--

DROP TABLE IF EXISTS `korisnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `korisnik` (
  `id_korisnik` int(11) NOT NULL AUTO_INCREMENT,
  `ime_prezime` longtext NOT NULL,
  `email` longtext NOT NULL,
  `lozinka` longtext NOT NULL,
  `licenca` datetime NOT NULL,
  `aktivan` longtext NOT NULL,
  PRIMARY KEY (`id_korisnik`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnik`
--

/*!40000 ALTER TABLE `korisnik` DISABLE KEYS */;
INSERT INTO `korisnik` VALUES (1,'Admin','admin@mev.hr','admin123','2019-05-08 00:00:00','DA'),(2,'Mario','mario@mev.hr','admin123','2019-05-08 00:00:00','DA');
/*!40000 ALTER TABLE `korisnik` ENABLE KEYS */;

--
-- Table structure for table `kupac`
--

DROP TABLE IF EXISTS `kupac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kupac` (
  `id_kupac` int(11) NOT NULL AUTO_INCREMENT,
  `ime_prezime` longtext NOT NULL,
  `adresa` longtext NOT NULL,
  `grad` longtext NOT NULL,
  `drzava` longtext NOT NULL,
  `oib` bigint(20) NOT NULL,
  PRIMARY KEY (`id_kupac`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kupac`
--

/*!40000 ALTER TABLE `kupac` DISABLE KEYS */;
INSERT INTO `kupac` VALUES (1,'Pero Peric','Istarska Ulica 12A','Cakovec','Hrvatska',98957602001),(2,'Ivo Ivic','Pakrac 50A','Pakrac','Hrvatska',98957602002),(3,'Ana Anic','Dugo Selo 16','Dugo Selo','Hrvatska',98957602003);
/*!40000 ALTER TABLE `kupac` ENABLE KEYS */;

--
-- Table structure for table `poduzece`
--

DROP TABLE IF EXISTS `poduzece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poduzece` (
  `id_poduzece` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` longtext NOT NULL,
  `adresa` longtext NOT NULL,
  `grad` longtext NOT NULL,
  `drzava` longtext NOT NULL,
  `tel` bigint(20) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `email` longtext NOT NULL,
  `oib` bigint(20) NOT NULL,
  `odgovorna_osoba` longtext NOT NULL,
  `ziro_racun` longtext NOT NULL,
  `banka` longtext NOT NULL,
  PRIMARY KEY (`id_poduzece`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poduzece`
--

/*!40000 ALTER TABLE `poduzece` DISABLE KEYS */;
INSERT INTO `poduzece` VALUES (1,'HRVATSKI TELEKOM d.d.','Roberta Frangeša Mihanoviæa 9','Zagreb','Hrvatska',0,0,'tcom@gmail.com',98957602010,'Ana Anic','10001','PBZ');
/*!40000 ALTER TABLE `poduzece` ENABLE KEYS */;

--
-- Table structure for table `racun`
--

DROP TABLE IF EXISTS `racun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racun` (
  `id_racun` int(11) NOT NULL AUTO_INCREMENT,
  `broj_racuna` int(11) NOT NULL,
  `naslov` longtext NOT NULL,
  `id_kupac` int(11) NOT NULL,
  `oznaka` longtext NOT NULL,
  `datum_izdavanja` datetime NOT NULL,
  `pdv` decimal(18,2) NOT NULL,
  PRIMARY KEY (`id_racun`),
  KEY `IX_id_kupac` (`id_kupac`) USING HASH,
  CONSTRAINT `FK_racun_kupac_id_kupac` FOREIGN KEY (`id_kupac`) REFERENCES `kupac` (`id_kupac`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racun`
--

/*!40000 ALTER TABLE `racun` DISABLE KEYS */;
INSERT INTO `racun` VALUES (1,1,'Prvi Racun',1,'01/2019','2019-05-08 00:00:00',25.00),(2,2,'Drugi Racun',2,'02/2019','2019-05-08 00:00:00',25.00);
/*!40000 ALTER TABLE `racun` ENABLE KEYS */;

--
-- Table structure for table `stavke_racuna`
--

DROP TABLE IF EXISTS `stavke_racuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stavke_racuna` (
  `id_stavke_racuna` int(11) NOT NULL AUTO_INCREMENT,
  `id_racun` int(11) NOT NULL,
  `Artikl` longtext NOT NULL,
  `kolicina` int(11) NOT NULL,
  `cijena` decimal(18,2) NOT NULL,
  `pdv` decimal(18,2) NOT NULL,
  `Vrijeme` datetime NOT NULL,
  PRIMARY KEY (`id_stavke_racuna`),
  KEY `IX_id_racun` (`id_racun`) USING HASH,
  CONSTRAINT `FK_stavke_racuna_racun_id_racun` FOREIGN KEY (`id_racun`) REFERENCES `racun` (`id_racun`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stavke_racuna`
--

/*!40000 ALTER TABLE `stavke_racuna` DISABLE KEYS */;
INSERT INTO `stavke_racuna` VALUES (1,1,'Artikl 1',10,120.00,25.00,'2019-05-08 00:00:00'),(2,2,'Artikl 2',10,120.00,25.00,'2019-05-08 00:00:00');
/*!40000 ALTER TABLE `stavke_racuna` ENABLE KEYS */;

--
-- Table structure for table `usluge`
--

DROP TABLE IF EXISTS `usluge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usluge` (
  `id_usluga` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` longtext NOT NULL,
  `cijena` double NOT NULL,
  `mjerna_jedinica` longtext NOT NULL,
  `id_racun` int(11) NOT NULL,
  PRIMARY KEY (`id_usluga`),
  KEY `IX_id_racun` (`id_racun`) USING HASH,
  CONSTRAINT `FK_usluge_racun_id_racun` FOREIGN KEY (`id_racun`) REFERENCES `racun` (`id_racun`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usluge`
--

/*!40000 ALTER TABLE `usluge` DISABLE KEYS */;
INSERT INTO `usluge` VALUES (1,'Usluga 1',120,'kg',1),(2,'Usluga 2',120,'kg',2);
/*!40000 ALTER TABLE `usluge` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-21 13:52:15
