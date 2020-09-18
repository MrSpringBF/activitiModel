/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.7.28 : Database - activitimodel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`activitimodel` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `activitimodel`;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',2,'source',NULL,'{\"resourceId\":\"1\",\"properties\":{\"process_id\":\"test\",\"name\":\"æµ‹è¯•æµç¨‹\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-4AD10DFA-926F-4B2B-80C0-8E749FC1E816\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C5DAE5B1-0DB9-4BBA-AD8C-D72408FA36E5\"}],\"bounds\":{\"lowerRight\":{\"x\":181.625,\"y\":212},\"upperLeft\":{\"x\":151.625,\"y\":182}},\"dockers\":[]},{\"resourceId\":\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\",\"properties\":{\"overrideid\":\"\",\"name\":\"ä»»åŠ¡1\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B6CB900F-1671-41D0-A06A-2116D986F8A7\"}],\"bounds\":{\"lowerRight\":{\"x\":326.625,\"y\":237},\"upperLeft\":{\"x\":226.625,\"y\":157}},\"dockers\":[]},{\"resourceId\":\"sid-C5DAE5B1-0DB9-4BBA-AD8C-D72408FA36E5\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\"}],\"bounds\":{\"lowerRight\":{\"x\":225.78125,\"y\":197},\"upperLeft\":{\"x\":182.234375,\"y\":197}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\"}},{\"resourceId\":\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\",\"properties\":{\"overrideid\":\"\",\"name\":\"ä»»åŠ¡2\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-64D23A7A-FD0C-4D0F-B51A-0E2291FF2991\"}],\"bounds\":{\"lowerRight\":{\"x\":460,\"y\":237},\"upperLeft\":{\"x\":360,\"y\":157}},\"dockers\":[]},{\"resourceId\":\"sid-B6CB900F-1671-41D0-A06A-2116D986F8A7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\"}],\"bounds\":{\"lowerRight\":{\"x\":359.50537109375,\"y\":197},\"upperLeft\":{\"x\":327.11962890625,\"y\":197}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\"}},{\"resourceId\":\"sid-00C22353-E421-41A6-8441-334A4AC59238\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":544.625,\"y\":211},\"upperLeft\":{\"x\":516.625,\"y\":183}},\"dockers\":[]},{\"resourceId\":\"sid-64D23A7A-FD0C-4D0F-B51A-0E2291FF2991\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-00C22353-E421-41A6-8441-334A4AC59238\"}],\"bounds\":{\"lowerRight\":{\"x\":516.431640625,\"y\":197},\"upperLeft\":{\"x\":460.00390625,\"y\":197}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-00C22353-E421-41A6-8441-334A4AC59238\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('2501',1,'source-extra',NULL,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0S\0\0\0\0\0e3Cb\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€è\0\0u0\0\0ê`\0\0:˜\0\0pœºQ<\0\0\0gAMA\0\0±|ûQ“\0\0\0sRGB\0®Îé\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0Ä\0\0Ä•+\0\0¥IDATxÚíİtUÕ0ğ“HP^ò¤*>ª ¶…q©uª¬uª¥>>PPªS_ã¨­Xm×W–Ø±Ë~Óªõsı|–Á¥¶Z§)ZµV©€à‹y… „\0	yÜoïkâDæu~¿µÎ:÷ŞÜ{sî>ÿ³Ïÿì³Ï>I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°ÈR¹Ş|óÍ3kjj®«¨¨8~ûöí„Ç¶ÙÆVzYYÉ~ûí·µsçÎoçææş¿Áƒ?Ø––?•Jååççÿ[YYÙ¸mÛ¶\rÜºuk^ˆ+¶ñq‘\nñ°¡S§N¯UVVşrøğáR*H¦ \rûË_şr\\ØA>¦#úõë—Õ½{÷¤k×®Ivv¶Âi¤˜x„D$)--MÖ­[w¢E!±ºhèĞ¡s3}ÙCueqqñíåååû…¸HÄEóÄEaaáêêê¥á\0fÜé§Ÿ¾Xé ™‚¶—Hı¯ŠŠŠÇ=ôĞıû÷O·¤Ğ|Ö¬Y“¬X±\"Õ§OŸ?öØcoÎÔåüğÃ»|ùòo‡¸HÄEËÄEAAÁöT*uÁ×¿şõ§•»ÓA@f%RUUUSœvîv˜- ¶ìôìÙ3+$+\'O˜0¡úŞ{ïŸ‰‰T˜¾}Ì1Ç$â¢Eã¢cQQÑ?7nÑ”)SŞU*H¦ ÃÍ™3gP8\n©Ünİº5ø’Õ¯\'…Kg%ëŞy&)YõJRµck’×íIv‡\n°:uê”ôèÑ#+??ÿ”Ë/¿|öC=´:S–-Ú+((˜©†â¢¢l]Røö¬O\'ÅùJ¶mÊOr÷?0ÉÉífÅ6A\\„„*·°°ğÌ±cÇ>;uêÔ\"¥BCœh‡‘››;eÀ€v•HmÈŸv˜¿MÊ·¬MR©št\"µqÅ‚dõ[¥ŸÓ8ûï¿Ê¿CHhŸÈ”eŠÍc©xjoW‰ÔÊ7NÊŠßIjªw$©šªdÛÆ’ÿöPR^ºÚJm¢¸8ì°Ãj:tèğ•’)È`sçÎš••ulÿşıÜ&ã²8$S\r‰-[ÃÎ”Æ«í‹tÈ‹/¾xr&,O¼j/v6ËÕ+şœNª÷&^Ø{|pÏœœœ£şù“”’)ÈPá¨wôAÔiW}abDluØ•øwšFß¾}³Ãó_3aYâğñª½]ÅÅöİ´>‰‰¦uà†Ù¹JÉdn2õÏ=zôÈÙÕßw—H¥ÿî4_“‰§Óª««¿–	ËÇ‘ŠÃìr½WWî&(ÄDSêİ»÷Âl„’ !9Š\0Z_UUÕ xõ­¯K—.IEEE¿LX–8 §¸Èa=f}”\rÑ2 •Ju4ğb†TŠ­‡ŒXq Iq‘Qq¡É´U;°Û¿wèÔE!‰‹OÈÉÕ¢’)àvšy=’_8¾Á¿Åq¦º8X!íƒz:,Éé´ÿ§“ë“†+ Lõõ;fTƒ¯xÔZ¦öQ]ú“ìß{`ƒ¯w=ğX’) ¾†ÆJ¿^±EáìÃª+·‹	LŸeóš7’‚Wïiğok—<•¬{÷†GØÇìØº>=ÒyÙú¥ŸúÛÖ\rï%¾ş@ú=@ósed°Ø\ZUüÁóé{òíJL¢6}ør²}S~ÒwĞÙIçî‡(¸} ¹^ÿşœ]¶VFÛJV$¯MNú92éqÈIIV–cgLÁ¾¶Ã\\»0)zovR½£lŞïÙ[#z>\"İù8»C\'…ØÎÄ–¦Ø\n[öD¼­L|ÿ–õK“>3ÉK•45‡*¶-IŸ¾ÛÓDªNl¥*^şB²>$a´?±¥iO©úâıWüõ~’)ØwÔTU4îóŸqûÚh\\TïøÜŸM‰	h6NóAêŞÿ¸ôõ\r\Zy«B€¤e\n\0@2\0 ™\0L\0ìKt@§ÕÍœ9ó¤ÂÂÂë‹‹‹ÿ1L}KKKs***²:vì˜tëÖ­ª_¿~›{÷îıÆ!C&6l–hcÇ=¸ªªjTVVÖ)áéĞ0õS¼9hy˜\nS©ÔÂğ·—:tè0cÚ´i«$SĞÌn¹å–«BÒtËüùó{<8ëôÓOO9ä¤gÏI^^^R^^lÙ²%gåÊ•½/^|êO<qêÄ‰·÷éÓgòµ×^;A	´Œ.¸ Şiıêêêêá!YÊkà-ñµÃÂßóQá}¿3fÌ¼ğü¡éÓ§O•LA»ñÆãmîg‡Di@Ø@³†’„£˜Oo™!¡ŠSH’ã;.¹øâ‹“¿ÿıïCRuıM7İô/üö¥—^ú¢h!!ŠÉÑäT*uÆçøøˆğ¹á;®ÉÕ%O>ùäû’)h\'N¼~İºuÿç¬³ÎÊùæ7¿Ù`µ;1ñŠÓœ9sºÏš5ëO÷İwß½W^yå¿)Y€¦5zôè1avw˜z×½ëì/}éKÉW¿úÕä‹_übÒ£G¤k×®É¶mÛ’’’’¤   yíµ×’7Şx#©¬¬¬ûØğğ¹7ÃÁóUíµ•J2E‹ùÅ/~qmØĞşã†nèpÔQG5ê»â)ÁAƒeİ~ûíW‡„ªkH¨Æ+a€&K¤¾•••õ_uyBL¢âği§–>[°³ıöÛ/=õïß?6lX:±zöÙg“ç{.©®®oé’J¥ş+$Ty!¡z°½•—«ùh?øÁ®‰Ôí7ß|s£©:ˆ-]É’%K.¾ã;nSÊ\0M’H	‰Ô¬ºD*&H·İv[ì|Ş`\"ÕØbß?ûÂÖ		Õ!¡\Z\'™‚½Ï¹—––Şyİu×åìé†¸§â÷M˜0!Y¶lÙúÓŸ ´\ZW_‡DêîºDjàÀÉ¤I“>‘íø¹øù/ùËõªÉ!¡\Z$™‚½Ğ³gÏ§G\Z•×T-R;‹-TçœsN‡’’’ß)m€Ï/$R$µ}¤b‹T<X}¢\Z#şûş÷¿_?!‹§üLÁ\Z?~ü¹¹¹¹GÇ>NÍ)~NNNß‰\'Ş¨Ôö^ş $9#ããØG*&@M¤ê\'T×\\sMı‹†·§Ó}’)šUØo7n\\^€³¹…ÿ“µmÛ¶VjÌ˜1?‰Ñˆ#\\Ô¸ ­ÆÜÕubgóÏ{joWâ÷}ë[ßúøyHÜ®LÁgˆ#åVVV‡2h	ñœ|UUUïÚq¬ZÚ¿‡ŠaVß¾}KCe63Tfgœşù]Úú:üõ¯ÇöÚã÷×ÔÔ$W]u•àÿt\\l=zôtqAKÅ\\¿~ıJBÌMİÓ˜‹õu*>®»r¯9œqÆI½ƒëáµãXµy–h6aÃ<ç¸ãËŞÛ±¤\Zã„NÈ^ºtiwêšÖøÍYYYÃìœøÛÃï.ÙsáùÃ¹¹¹ó}ôÑò¶¶§Nš|ç;ßùx‡øúë¯\'/½ôR2kÖ¬äúë¯OF\Zõ‰÷?şøãéìgÏ~¾jÕªäÕW_Mx áîñ}|ğArõÕW·ëm!ÄÅ~±Ñ ÄÅ˜1á~&^v..>wŞygò‡?ü!Y´hQz£+®¸\"¹è¢‹T¦ŸÏş!ÆÆ†˜[sO‡çí*æjo“Î	âp\\_Í!^åaë¿Öyaú¥d\nv¡k×®g‡2¯%ÿç1Ç“,\\¸ğR±“åùa~~yyyEH¬â¥Æ¯]»ö™yóæUeúú‹;Èº¾n/¿ürzÜ˜»îº+ùıï‡ºøÔûãíBÙ\'_ùÊWÒGŸÑe—]–üèG?úÔ{ã€~÷ÜsOú»Î=÷Ü}mÓè¦Cl\\Ê¬<ìä;±ßˆ‹$y÷İwÓ‡„²Hßõ ^`ròÉ\'«Ps…˜»(Æ\\¨‹ÏgÕ¹Ú{í¥xâ‰Íº0ñûë%S§H¦`7***‰aKŠçä7nÜxpGnl•ˆ­ıúõ‹-V/„Ç“3¹e\"î ò“ŸÄ›M§á‹¦OŸtêÔ©Á÷?ôĞCéäÖ­[“»ï¾;ıÚYg•yä‘Ÿzo¼JèüóÏO6lØ°¯o&yu;¹¾}ûn	‰Õóñjª}5.&OüñãØ·fÄˆé–KÉTÓÆ\\ˆ·‹ÃüâPÅ«¹ñşyáµ¨{ÃGÑ¬pØa‡Õ:´=ªdŠfSYYÙ36é¶¤xåIHâöÄ¤.šØbuv˜ŸÚÃ²æ¯_¿>£péÒ¥IQQQ²zõêô83Ÿ%???¹ğÂ“8 éŞ½{òşûï\'á¨7ıZCB%n¥ˆ£#ïØ±#ãVPYYYÒÒ1vhñ²©ô)âÚ¸ø`_‹‹úâéÃØ¢õ½ï}/#~{qqqºE5Ãë–½[¬Î1w^ı›»ŞŞéû{K¦`7ª««óâŠ[ô+ü¿ğc\'­›ÛPQïe•I§»şüç?ÇFºµáw¿ûİÇ­qGX×ïåÉ\'ŸL÷q‰-‡~xúµ$¯¼òJrüñÇ§OÕÊ‰· ˆï:thÂ\"ãWH<İ”1tä¾7İtSºãÌ3ÏÌ˜ßşæ›o&m¬nùÜ¥Í)“P¿Ú–LÁndggoGØ[2¡ŠGôáÿV‡£Ú[[øçîI›ŠÜaê°S‹Äò°“9\"SÖ[l}ˆ}Uâ©›(n	eš~<mÚ´û½ÔÍcËÒüùóÓ7:=öØc“n¸!}%Pì8;ÇÅ±…aÉ’%é~3mÁÑGwœ·´P\\Ô¤R©šºÎ¿â\"I~şóŸ\'/¼ğÂÇ	Z&øÚ×¾–¬X±¢©â¢µë¢ês©c®Î–-[š5¡Š1Q¿Ú–LÁî‚+\'§¸¤¤äxJ§¥ÄJ 77·ì‘G™Ô’¿5­ï²uVu¨´b•©ğ¼$<ÿï0MË:;ö¹ôÒKS™²Şb\'ş’âÏJš“‘#G¦OÄnì”OëÔíï¸ãôÕ_-Õ¥K—dÆŒ“š1.bRïş\Z¯Ï±-.>òÃş0ùë_ÿšÌ;7éÕ«WÆÄDïŞ½ÓW¡İtÓM“29vws!¾bGó˜´ÇæÄaÔ¹ğ8vOwd‹4g2¿¿bÉìFeeåkË—/ï*Ë®-õ?W®\\O=,níß*¦ŠPAåÖ¶0ÄDª,Lq/òxçÎÿ;ì(KÚQÒœÇMœb«ÂÍ7ßüqŸš)S¦´©DªÅä©2ùè´Fví$.ê²Ëššô)Ä(&\\-İE ÚQwëµB5s¡ìÇÖ%S¡Şnò;ë+((¨ÿt¡d\nv#Tó^}õÕã‡\rÖbÉÔ’%K*·oßşLkÿöÚD*VZO…éÙ°cx¦-\'´;ï¼óÎ§:!ÇÖ„Ø¹´îõªªª¤¡qÆb›8ˆclI¬{¯ä:ûì³Ûó&Ñ¡v\rÄE|íé§ŸN?ÕëtĞA;ï|Ùsê%P»¹p\0øb¨·ÒÑc_½SN9¥Ù*~=/J¦`÷G¦¿]´hÑÍÕÕÕIK\rÜùòË/—ïØ±cFkıæØlfó²³³]{y{›miˆı\ZbëBÜ\ZôÑ\rŞ/¸à‚äÃ?¬+ëô©x*&¾OÍÄc§âè‘GI~õ«_%·İvÛ§¾;&Mí<q{±3{EE…Š³•b.Ö×¡®¾3>Œ£ÛoÜ¸±YîŒ§øâ©ßz’LÁnL›6mÕ…^ø÷P™<é¤“š}ì§·Şz«º¼¼ü½3f´ÆaìÄpTWúj/-\r—\\rÉÎWİ$‡zè\'ş^\'Vº;_uÿ>~üøÏì[ÓÎ‰qÑ&b.Ö×!)ot€ã°%cÇmò…‹§p+++ë.h¥úZ2E›;:úÏ|ğ®N8¡Ù[§~øáMáÈöÎÖø¡B¸µ½­»w˜»;l7d_ßaŠqÑÆbî0Œb2KmÊ¾S±Oë3ÏüO/Œôİß^Ê]DÓ¬¦OŸşÛ­[·.ì±ÇŞjÎÿ6Ğ’âââ÷×®];C©|¾ú:ÌæÅÇ±u*­ë×ØXñôp?~o­í©¾–LÑ.™={v¿eË–5Ç—Ç±_xâ‰šà’¶po3€L®¯“Úá\nÖ¬Y“Ü~ûíN¨b\"³Ø2U«,++ë²öT_K¦hvñœx8\Z¹îg?ûYUQQÑ¦¦üîx»[n¹eCUUÕuá¨j™Òh\\}J¥®	Ó‰N¼:sÒ¤Iõ¡½??¿hÑ¢_‰ÔUí­¾–LÑ\"üñ!áùß&LØööÛo¯hŠï,((Øvã7®G=¿æT¥Ğ4õu˜]V—PÅªÿøÇé‘îw\Zps—âûBb–ş\\ıD,$j?nõµè´äÏ££G.¿õÖ[ÿóßøÆKßıîwÿéóvJŸ9sæ{¿ùÍozÔÔÔÜ6üG•.@Ó××ááä¬¬¬±¯Sì<;¦2$9ñÄ“#8\"=~X-=Ê‹	Tìoû[zøƒx{¯zâXW×´×úZ2E‹ñŒ3æ•?şñ¼øâ‹ï^~ùå›†şÕ=ı|Ø@×Üÿıe¥¥¥ëÃ~vØàÚhÆú:ÔµÄ!âk1©Š‰ÒNcE}–±T{îŠ!™¢5x\nÂìÔ°‘wï½÷^qß}÷­:òÈ#N9å”ì×«W¯yyyİÃQMùæÍ›KòóóKæÏŸ¿ñí·ßPQQ?û`aaáTÍZ®¾	Ñ!©\Z±¹Ã‚0=´/Ô×’)Zs##ß>5vìØƒß{ï½óŞ}÷İ\nÏû†)·ŞÛâø~òÑ-j/¼´Õúº¦¦æ¼TÅúúø0Å,Æ)Æszñ*À…ûb}-™¢ÕÅ‘wÃìWµ\0êë6ÅÕ|\0\0’)\0\0É\0€d\n\0@2\0€d\n\0@2\0 ™\0L\0 ™\0L\0H¦\0\0$S\0\0’)\0\0$SĞví¨©©Q\n v=dÄÊÈÎÎN‰‹Œ‰‹aV¥$LA†ÊÊÊz½´´t‡’h}eeeINNÎ{™°,yyyE[¶l±R2À¦M›‡ÙB%d\n2T*•zaÃ†\rùJ¢õmŞ¼¹¢¦¦æ¹LX–;.Ëc¥d€ÂÂÂÒ0›§$LAæ&S3Ceİ#ÌFhe«W¯Ş’©Ç3aYÊËËÿcíÚµ•!.¬˜ÖU°qãÆ!a>SQ ™‚uÚi§-¬®®~³  `‰Òh=«V­*©¬¬\\tê©§¾’	ËsòÉ\'¿©·Ö¬Ycå´¢Å‹?ÖÃšL‰$SÀ.ÔÔÔü`åÊ•mŞ¼y­Òhy[·n­ÎÏÏ¯	Iíµ™´\\åååãB’½­´´ÔJj%%%OoÜ¸ñ¬¸}*\rv¥ƒ\"€Ì0uêÔâñãÇ/,**:³{÷îeyyyİ”JË(++ÛöÖ[omJ¥R—vÚi2-..ºè¢×6lØğíy¹¹¹VX&R‹-úrVVÖ¿fZ\\ ™vaÊ”)Ë/¾øâ%………TTT,èÙ³ç€P‘kAnF—-[–©ï9ò™L‹qãÆ½¾nİºQ!¶vëÖ­s˜[yÍ‹/~2ÄÆ×c\"•©qAæ°5Bš3gÎ ììì;Ãô¥8`Qß¾}{ôêÕkp¨Ø»+Æ©©©©Ú¼yó{ë×¯/\nÓ!ÕÕÕËã)œÓO?}q‰‹»rrrş¡OŸ>«z÷î}P÷îİû…×¬ØÆÇÅŠ8üA¼j/v6}¤ÚJ\\ ™vcîÜ¹CCunx8\"LÇ‡)O©4Z¼b24/L3Ûb§bq!.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0hş?}ÈAíÉú¡\0\0\0\0IEND®B`‚',NULL),('2503',1,'test.bpmn20.xml','2502','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"test\" name=\"æµ‹è¯•æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"sid-4AD10DFA-926F-4B2B-80C0-8E749FC1E816\"></startEvent>\n    <userTask id=\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\" name=\"ä»»åŠ¡1\"></userTask>\n    <sequenceFlow id=\"sid-C5DAE5B1-0DB9-4BBA-AD8C-D72408FA36E5\" sourceRef=\"sid-4AD10DFA-926F-4B2B-80C0-8E749FC1E816\" targetRef=\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\"></sequenceFlow>\n    <userTask id=\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\" name=\"ä»»åŠ¡2\"></userTask>\n    <sequenceFlow id=\"sid-B6CB900F-1671-41D0-A06A-2116D986F8A7\" sourceRef=\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\" targetRef=\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\"></sequenceFlow>\n    <endEvent id=\"sid-00C22353-E421-41A6-8441-334A4AC59238\"></endEvent>\n    <sequenceFlow id=\"sid-64D23A7A-FD0C-4D0F-B51A-0E2291FF2991\" sourceRef=\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\" targetRef=\"sid-00C22353-E421-41A6-8441-334A4AC59238\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_test\">\n    <bpmndi:BPMNPlane bpmnElement=\"test\" id=\"BPMNPlane_test\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-4AD10DFA-926F-4B2B-80C0-8E749FC1E816\" id=\"BPMNShape_sid-4AD10DFA-926F-4B2B-80C0-8E749FC1E816\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"151.625\" y=\"182.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\" id=\"BPMNShape_sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"226.625\" y=\"157.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\" id=\"BPMNShape_sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"360.0\" y=\"157.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-00C22353-E421-41A6-8441-334A4AC59238\" id=\"BPMNShape_sid-00C22353-E421-41A6-8441-334A4AC59238\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"516.625\" y=\"183.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C5DAE5B1-0DB9-4BBA-AD8C-D72408FA36E5\" id=\"BPMNEdge_sid-C5DAE5B1-0DB9-4BBA-AD8C-D72408FA36E5\">\n        <omgdi:waypoint x=\"181.625\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"226.625\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-B6CB900F-1671-41D0-A06A-2116D986F8A7\" id=\"BPMNEdge_sid-B6CB900F-1671-41D0-A06A-2116D986F8A7\">\n        <omgdi:waypoint x=\"326.625\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"360.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-64D23A7A-FD0C-4D0F-B51A-0E2291FF2991\" id=\"BPMNEdge_sid-64D23A7A-FD0C-4D0F-B51A-0E2291FF2991\">\n        <omgdi:waypoint x=\"460.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"516.625\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('2504',1,'test.test.png','2502','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0*\0\0\0÷\0\0\03k\0\0zIDATxÚíİßo•õp/4Æø˜ì‚‹%#Æ[/–ÌxcŒšI¦)œ-²´LÀ¶h0µBša‚\Z$1.—‰Y\\³À¤­H-m\"$Â`UHhùÑ”¶0Ê³çÛ´äp\nXúãœçôy½’OÀsZKšÏù~ŞÏïûî\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0H²(Šî?yòä§?577G{÷îU®¦¦¦hÿşıçãZ /T’û àÂ0jmmúûû£«W¯ª\"ÕÀÀ@ôÕW_ı7N/è•Ô¾\0(¸°Ål%f(]·¤;õ…Jj_\0\\Ø­o$§ât]_¨¤ö@Á…cáA¢R¤/TRû ±é—z£“ßü9:Ö´~¸ÂßÃk†HºƒŠ¾T\0Š>/öDGÿYşGİ-^ï$é*úBPHÄ@:sìïc†Ñh=Öh¤4¨èA ©óËÍwHá=ƒ$AE_*\0‰HG÷şñ)¼g¤3¨èAÀ@2ô…T\0Aån®æ¸Ó@\nï$é*úBPHÄ@:ÑöŞRxÏ IgPÑ‚\n@\"Ò…#ÑÑ/\ZÆîŞ_ï$é*úBPHÄ@\nÕupç˜^3DÒ}Ã7}!¨\0 ıøctâÀ¶±»÷ã×Â{IJƒŠ¾T\0Š=ÂF·½{ÇsÂ{îBš¾ ¢/€â¤x‹¸÷DKô¯=kï8ŒF+|MøZ[Ñ)*úBP(ö@ú¹­e[Ñé*úB_\0$b gkùn[ÑËÌ*úB_\0$b Mt–Á23ƒŠ¾Ğ\0‰HÊ@Òú@PQ‚ŠT\0$I_è\0AE	*JP¦ÎgŸ}öøûï¿ÿ×uëÖY±bÅµŠŠŠóæÍ‹.\\-[¶ìú†\rÎoÛ¶í‹ÌT” ¢•â)//ÿEYYÙòxş4®q\r†õ:®l\\]ñ{‹ÿ¬\r_gºQòâ`ò‡µk×ö×ÔÔÜØ¾}{ÔÑÑõôôDÙl6\nÂŸıııÑ¡C‡¢;vD+W®ŒêëëØºuëŸ%¨(A¥pæÏŸÿ|\\{GI4Îú2ş¦%gÍš5¿Š««¶¶öF!CCCÑx}ûí·Qn¢×^{íÒG}ôAE	*JP™>qØ˜×î{\'·«Ö_|ñ—¦%¡¾¾~uUUÕõÆÆÆ{\n(ùöìÙUWWßøàƒŞT” ¢•©WVVgŒy¹¡£¼¼<Ú´iSÔÒÒ>}:º|ùòğš|åÊ•á=âmmmÑ;ï¼3|è>/¬Ú»Bâ½ıöÛ¯,[¶lèøñãÑTèîîV¬XÅae‡ ¢%¨LiHy6×sÊÇ<|8~<.^¼8üõáûrKV~o\Z’H«V­Z\ZNŒo“Wøÿ…°²eË–M‚ŠT” 2e{Rn†”Õ«Wï=™ˆğ}uuuùaÅ’%ã\\²dIvªö¤ÜnÏJUUÕĞúõëç*JPQ‚ÊäÖëÜÃ=\r\r\r7ïLT8,´qãÆüÃ@³MGãå—_>ÎI™Náœ•8õ÷\n*JPQ‚ÊÄ\\ÙssOÊdCJnXÉÛ³Òj:’¿[µjUöÚµkÑt[³fÍúúú5‚ŠT” 2¡ò|î9)=Üs·Ã@¹ç¬8D\",_¾üh¸¹9½úê«}‚ŠT” 2¹½)áDØéğÉ\'ŸØ«Br„;VWW_™ÌeÈ÷ª¦¦æ§pŸ–¤}øãúµd İKOèA¥=ÖëÑhÃ^.LË\Z®Ê»ty–iIÑd2™W¶oß\n(l¼ñÆï&é÷³›soYYÙã’4Ğ‚J!{nä¶øÃ_óÖ[oMë:î³’TjMKŠ¦ººº)Ü¿Âa¦ÚÚÚ\'qÈ©İù[6R:ƒÊİzB_*…ì¹‘g÷¿·oß¾i]§ÃMárş¦%ESYYÙÓÛÛ[Ğ î«òÒK/]NøqsËft¡0RTÆô„¾T\nÙs#~mªO¢Íî`›óo8cZR4åååÙÑJøyñÏ*…\"wËÆ@Tò{\"ì×‚J{nhôïSuIòİ.UÎù¹YÓ’¢~0Ša’Ï*JHÉHúBåW)®-©B¯Ó¦%E“Éd~(Æ•øç^/‘-™oÂó4xâ‰û\r${Tò{Â¡{T\nÙsán±ö¨:‹-:]ŒsT/^|)áÄ-Ã¨”RüO½m÷ıPO=õÔ˜×•±=Q*}1™Ø½{wôØcE<ğ@ôè£Fííí‚J‘zÎ9*¤Òüùówµµµ].dP	WıTWWĞ¢=Üù1•ZP¹Ûkw{?ÜïÉ\'Ÿ¼mxIqP¹cO”RP™hOÌ=;zğÁ£ï¾ûnøµZ•âôœ«~H¥p]ş–-[ºTvîÜymÑ¢E¯\'l¸íÖrÚ‚JøsÎœ9‚Ê8{\"\rAe´ÂMÀÂk!´*Åé9÷Q!•Â/^<PÈ;Ó.]ºôr)Şé0\rAeîÜ¹Ñ¹sç•ÖST6lØ0üÚ3Ï<£/Š¸^»3-©”ÉdšÚÛÛÏ\"¤>|x¨²²òP)şÒTòÏY0•PŸşùğ?òÈ#QWW—¾(îázÏú!}Â±Ğ%K–œ*Ä^•šššR}\Z§ b ¥1¨<x0zè¡‡†	:uÊU?	X¯==™TŠòË;wÎÒØØx1ş\0´ÿÜ1AEPT’ÓO?ıtôÜsÏEƒƒƒ.ONĞz=\Z$V¯^=e—*‡K’ëêênÙ›Rªë53³ñge2™¾ÎÎÎ¾é)İİİá˜ç…8Ï.ÕßQš.OTf^P™hO<üğÃ·¼¶nİ:}‘€õ:®Ñ@ÑĞĞ0é°BÊÆsCÊ`)¯×ÌPeeeó,XĞÓ××÷Ÿi¸oÊùRß…èÆ^’¾ĞIZ¯GO¬İ³2ÑÃ@áûòö¤8äC¢“zeVÎ;vlJ.YîêêºRYYÙ¨^/õßd é}‘´õ:7¬„sKÂ	¶áªñ^İNœÍ=\'%ÔLX¯IARÓôù?üğëÉœ`»k×®ã™L¦?|˜fÂïÅ@2ô…¾Hâz×ÅÜ ‚G¸ÏJ¸)\\Ø[2zX(Ş	wœ\r7sÛºukoDæß	wp¦¬×¤#©Ï\n—Á-\\¸ğûÖÖÖ{¼ólOUUÕ÷ñÿãë™tŒÓ@2ô…¾Hòz=É¶:\'…Rı\0¼>\0qB?óæ›o¶677wœ={¶;›Í^\ZyÀ`öÜ¹s½ííí›7on«¨¨8JHå3ílqÉ@Òú¢ÖëÜÃAã	(3q½&…ÂãÀÊ‘gMt…§i>U3<°*<\"Üfy&ßÁĞ@2ô…¾°^‚ŠT” ` HúB_\0*JPQ‚\n€d é%¨\0‚Š2ô…¾\0T” ¢\0É@Òú@PQ‚ŠT\0$I_è\0AEHúB_\0*JPQ‚\n€d é} ¨(AE	*\0’¤/ô€ ¢¥/\0$%¨(AÀ@2ô…¾\0T” ¢\0É@Òú@PQ‚ŠÒ\0’T” «¹¹Ù HNeãt]_¨¤ö@Áíß¿¿·¿¿ß0H@õôôü%HúB%µ/\0\n®¥¥å·ûöí»Ô××÷ƒ¡P¼-æ0ŒšššNÅõ‚¾PIí€¢ˆÁgã-¶oÂîåp,\\¼Âï½3iÃH_è\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜ÿ\r$¸ìğÇĞw\0\0\0\0IEND®B`‚',1),('5002',2,'source',NULL,'{\"resourceId\":\"5001\",\"properties\":{\"process_id\":\"qingjia\",\"name\":\"è¯·å‡ç”³è¯·\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\",\"conditionsequenceflow\":\"${agree==1}\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-DAA87663-376D-41C0-9BCC-AE379CD4A742\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-07465691-AD09-4C0D-B7BF-C00E18ADB7DE\"}],\"bounds\":{\"lowerRight\":{\"x\":135,\"y\":213},\"upperLeft\":{\"x\":105,\"y\":183}},\"dockers\":[]},{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\",\"properties\":{\"overrideid\":\"\",\"name\":\"æäº¤è¯·å‡ç”³è¯·\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"${user}\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-7CDD1FDD-F589-4486-B638-0DF0C64C7474\"}],\"bounds\":{\"lowerRight\":{\"x\":280,\"y\":238},\"upperLeft\":{\"x\":180,\"y\":158}},\"dockers\":[]},{\"resourceId\":\"sid-07465691-AD09-4C0D-B7BF-C00E18ADB7DE\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}],\"bounds\":{\"lowerRight\":{\"x\":179.15625,\"y\":198},\"upperLeft\":{\"x\":135.609375,\"y\":198}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}},{\"resourceId\":\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\",\"properties\":{\"overrideid\":\"\",\"name\":\"éƒ¨é—¨é¢†å¯¼å®¡æ ¸\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"éƒ¨é—¨ç»ç†\",\"$$hashKey\":\"35H\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2D7D22FB-01D1-47B6-8E30-41186EC7A56F\"}],\"bounds\":{\"lowerRight\":{\"x\":415,\"y\":238},\"upperLeft\":{\"x\":315,\"y\":158}},\"dockers\":[]},{\"resourceId\":\"sid-7CDD1FDD-F589-4486-B638-0DF0C64C7474\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\"}],\"bounds\":{\"lowerRight\":{\"x\":314.4296875,\"y\":198},\"upperLeft\":{\"x\":280.5703125,\"y\":198}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\"}},{\"resourceId\":\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-6BBA3957-5CD9-4E22-9B28-839F10C9370C\"},{\"resourceId\":\"sid-B0B2603F-8019-4E40-8D0D-2E6B9D27C7F2\"}],\"bounds\":{\"lowerRight\":{\"x\":500,\"y\":218},\"upperLeft\":{\"x\":460,\"y\":178}},\"dockers\":[]},{\"resourceId\":\"sid-2D7D22FB-01D1-47B6-8E30-41186EC7A56F\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\"}],\"bounds\":{\"lowerRight\":{\"x\":459.64844687000755,\"y\":198.4097335362338},\"upperLeft\":{\"x\":415.62889687999245,\"y\":198.2191727137662}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\"}},{\"resourceId\":\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\",\"properties\":{\"overrideid\":\"\",\"name\":\"æ€»ç»ç†å®¡æ ¸\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"æ€»ç»ç†\",\"$$hashKey\":\"39B\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-03DC5048-49A3-419B-AF81-7CE996E1B2E8\"}],\"bounds\":{\"lowerRight\":{\"x\":640,\"y\":238},\"upperLeft\":{\"x\":540,\"y\":158}},\"dockers\":[]},{\"resourceId\":\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A65821C6-6A2F-4F60-96B5-B50D4C76FA8E\"},{\"resourceId\":\"sid-28FEE811-41C3-4D04-9A83-E7CDE2E436AE\"}],\"bounds\":{\"lowerRight\":{\"x\":725,\"y\":218},\"upperLeft\":{\"x\":685,\"y\":178}},\"dockers\":[]},{\"resourceId\":\"sid-03DC5048-49A3-419B-AF81-7CE996E1B2E8\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\"}],\"bounds\":{\"lowerRight\":{\"x\":684.6484468700075,\"y\":198.4097335362338},\"upperLeft\":{\"x\":640.6288968799925,\"y\":198.2191727137662}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\"}},{\"resourceId\":\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":798,\"y\":212},\"upperLeft\":{\"x\":770,\"y\":184}},\"dockers\":[]},{\"resourceId\":\"sid-B0B2603F-8019-4E40-8D0D-2E6B9D27C7F2\",\"properties\":{\"overrideid\":\"\",\"name\":\"ä¸åŒæ„\",\"documentation\":\"\",\"conditionsequenceflow\":\"${agree==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}],\"bounds\":{\"lowerRight\":{\"x\":471.0963943205213,\"y\":328},\"upperLeft\":{\"x\":274.5021403716896,\"y\":209.89431050753208}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":373.625,\"y\":328},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}},{\"resourceId\":\"sid-6BBA3957-5CD9-4E22-9B28-839F10C9370C\",\"properties\":{\"overrideid\":\"\",\"name\":\"åŒæ„\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\"}],\"bounds\":{\"lowerRight\":{\"x\":539.3828229249741,\"y\":198.40949633755696},\"upperLeft\":{\"x\":500.32030207502595,\"y\":198.23112866244304}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\"}},{\"resourceId\":\"sid-A65821C6-6A2F-4F60-96B5-B50D4C76FA8E\",\"properties\":{\"overrideid\":\"\",\"name\":\"åŒæ„\",\"documentation\":\"\",\"conditionsequenceflow\":\"${agree==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\"}],\"bounds\":{\"lowerRight\":{\"x\":769.5078327841813,\"y\":198.376443202447},\"upperLeft\":{\"x\":724.8984172158187,\"y\":198.092306797553}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\"}},{\"resourceId\":\"sid-28FEE811-41C3-4D04-9A83-E7CDE2E436AE\",\"properties\":{\"overrideid\":\"\",\"name\":\"ä¸åŒæ„\",\"documentation\":\"\",\"conditionsequenceflow\":\"${agree==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}],\"bounds\":{\"lowerRight\":{\"x\":693.4545088448733,\"y\":189.55416292062253},\"upperLeft\":{\"x\":280.75014764312385,\"y\":56}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":513.625,\"y\":56},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('5003',1,'source-extra',NULL,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0P\0\0z\0\0\0³¹H\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€è\0\0u0\0\0ê`\0\0:˜\0\0pœºQ<\0\0\0gAMA\0\0±|ûQ“\0\0\0sRGB\0®Îé\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0Ä\0\0Ä•+\0\0 \0IDATxÚìİ\r|[eİÿñ“¤l”1qHñæ¯C§t´Nï©Çƒ€8tm“mH&rÃ„ãI& OÃCA{…m$Y‡2OŞ:y¬®S&T[ÀÛ¬@Óüßäœ™•¶ës›öó~½®WNÒ4M¯œëäúsë8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€næ£\n\0\0|¦Nº\"‘ù|¾ÊH$²‰\Z\0\0\0h!8566gÁé4»›ke½•£Ñè³Ô\0 \0\0€)--Í?¶Å\n78ej´@5gèĞ¡³+++¨-\0 @\00(eqú¡İ\rº/L&“×Åb±Úòòò³ìg×¸¡j¥…¬ğ¢E‹ÖSs\0@€\0`P§D\"q¡¥iF8é£LKìşÍ‡ëYˆ*´ŸEl±ĞÊ6{NØÂÕrj\0P\0\0h¥¥¥£ÀÙ¶¨sœ¼#NË-]¬#N­ı^EEÅˆ†††¶x¼ûĞ-ñx|fuuu#µ\n\0(\0\0bpÒ9NÓ¬ä¸/ñù|—E\"‘µí}p8|…-\réÚmßïwä÷€\0\0\0²)8éˆQÔÊÍYoÊ”)ãššš4¤/ßaH\0 \0\0 Áia\"‘¸ºªªj]7¼~®½ş<\'=kŸÜ/®¬¬ÜLí @\0\0‚SÊËËCvs«;E}2™üV[çR\0\n\0\0ºàÔÂß¾ßq‡ôY˜š‰DîàS@€\0\0§–ßG®ßïŸkáé4÷!MPq†©M|J\0P\0\0€àÔ‚P(49™LŞîéÓwOììd\0@€\0\0]R^^>ŞÂÉéı-85Q£ìF×Œšà¾¿‹-DÍáÓ@€\0\0½JJìær+%îCı.8e*))ÉÉËËÓû½È\rzËÀ‹-ZÏ§	€\0\0\0z+85X‰ö×àÔÊû¯²2ÒášQ\0P\0\0 7‚“Í>Ÿïæ`0xS¶]kÉ=_KŞ-vº,_[]]İÈ\'\r€\0\0\0NÍ¸Cú®±Åóİ‡VZ¨\n3¤\0\n\0\0œZ‡±ÿíV[å0¤\0\n\0\0œÚVQQ1¢¡¡A³ôï>4ÇşßËìÿm`\0@€\0\0§„ÃásìÿÖ°¾ Ã>\0(\0\0ĞBpÒD\n7æà”iÊ”)ãššš–:î>«‹“\"‘È2Ö\0(\0\0yp²pp&§œÁœ2iHßûï¿«ÕIÈ}è«—Yé@€\0`ğ§g[X:àÔ6wHß•¶˜kåÙD\"Î†k]\0\n\0€®‡	.tş3QÂ&+¿$8µÍÒ§kFå;éYú.Åb·P3\0P\0\0@åååã}>ß3‚Sƒ…€Ù\nn©ªªÚF\ríZiiin ĞTçÓÜ‡–[‰D6Q;\0P\0\0\0:âd7—{ç8)8Y¹Ã‚ÀuÌ,×é:æ^3JCúâ¢J-D­¤f\0 \0\0Èâàd|qšèdœãdå˜t]iiéh¡š¥¯ĞJ£•ÙÑhô*j\0\n\0€,âNG®ë8ã09Dª¨¨nß¾ı\Z«ßsÜ‡Ò€\0\0@§×q2:¯i¶§;N=^÷“íFCúFZ‰755´xñâÇ¨\0(\0\0úapr¯ã4Ñ}ˆsœúæse7š¥o¼û†ô]AÍ\0 @\0Ğ”••Môûıg;î¬zœãÔ?”——ÏÍÒWí^3*NÍ\0 @\0ĞtÄI“CX\'}’û†êİÈ9Nı.ÜÎ·Åı†ô @\0Ğût!WN70T/;TTTŒØ¾}ûüŒ Ë>\0(\0\0zZ+Ó‘_ÍäÙ!\n)4]îŞ]åÎÒ·–š@€\0 ûƒ“Îqšä0ù@ø,Øâ(+Ûlyz,‹R3\0P\0\0t‘†ê555]é¸“C8é¡zs,8İHpÊ^\ZÒ×ĞĞp»-jÊsMúqÓ°aÃ.¶Ï´Ú@€\0 ƒB¡P‰Ïçû±u¬Kìn“¢’sœ–p8|ÎesÒGkì3?1\ZÖS3\0P\0\0´389ésdtëMG~u\"‘¸­ªªj54 ?s]ôX×Œ\Zí¤‡ô]‹Ån¡f\0 \0\0èXpâ§A¢´´47TÙâ1©ÏmllœNh@€\0€à„Vdé³²Ö–Kc±X-5€\0\0 8œĞwâ\réËwÒ“†œF+©\0(\0\0Á‰à„TTT·oß>ÏÖ\n\'}4ª2‘HÌ`H\0\0€àDpBëë¦9×5£‚VÖÚ:3=‰¬¤f\0 \0\0\' ¥¥¥£€†ô»ÍÇãWUWW7R;\0P\0€¬WRR’³ï¾ûN¶ t:Á	İACúŞÿıËm=ºÈ}¨:‘H„«ªªâÔ\0\0 kƒS^^Ş4[ü±“¾¦Á	İª¼¼<dëÓ<[i%ŞÔÔtÒâÅ‹£f\0 \0\0YœÌz+wœĞİÒ€\0\0HÁi•«­C»-zxİ»ÆÏwbH\0\0€à´%“L&5KCú\0 \0\0\'`WB¡Ğ(»™ï¸–8é@€\0œ€¶×Ñ}÷İ÷|ŸÏw¥“¾ğ®†ôM¯ªªZGí\0 @\0N@ÊËËwgée¥ÁÊÑh´’š@€\0ôtpšd‹×œm***Flß¾}¾©IîC•‰DbFUUÕ6j\0\n\0ĞÁé\'½Ÿà„¬\n…ÎwwhHßÚd2Y\Z‹Åj©\0(\0@—…ÃáIÖÁœKpÂ@2eÊ”qMMMK†ô @\0º18éˆ“7T¯Öî_ıúë¯/!8a ¨¨¨644hªóÉîCé@€\0t98­·rs0¼¥²²²\ZÂ@\n…~è¤‡§æ:éPT\0 “Á‰¡z4Ü!}UîúÏ>€\0\0ÀGirˆıöÛ¯Â‚Ó…Ái½İŸ5lØ°eqÂ`âé»İCVr|>_´±±qfUUUœÚP\0\0‚Sóà´ÎîßÜÔÔTÉ9 ÌÂáğ4k\nRA+qk\'-^¼ø1j @\0apÒp­sx¶Ïçç\'‡¡z@ó•oíD³ôå»Í¶6rm @\0opŠÛı™Ìª´ÌÒ§óÏrªN$a†ô(\0Àà\nN:ât£u2TØ5\rékjjšgmh„İÛmi$YIÍ\0(\0ÀÀNêø]¶qãÆJ8Qù¢\"n{Rû¹8ßD[P\0€œÖZ¹.‘H,áˆĞåöu‘-^n%ÇÊò@ pÆ¢E‹ÖS;\0\n\0e¸Ğ;B¡P‰İD¬äYÑùPáh4ZMÍ\0(\0@v§õ>ŸïÆ7ŞBpzFiii^NNÎk{ô>ÍÒw-m @\0ú!w(Ñ$[¼ÆÙù:N—1«Ğ{B¡Ğvóc\'=¤ï¡@ 0!}\0\n\0Ğ¿‚Ó4\'}Æ(÷a&‡\0ú6D•8ÿÒ·-™LNÅbQj @\0ú>8iO·wÄ©ÖIOGÎä@k6¤O¸ğ.@€\0ô“àÄä@?ÕlHŞP\0\0‚€¶”——ú|>\ré+L&“›myf4\Z­¤f\0\0€à Á†††[µ¨û¤î6lØŒÊÊÊj @\0N\0Z\n… æYÉµ²ÊI_3ªšP\0\0‚€„Ãáüd2Yå¸Cúìö.7\0 \0\0\'\0­h>¤Ï,	ƒÓ+++7S;\0\n\0Ğz\'jÄöíÛèóùN%8ƒO³!}ë‰Ä7«ªªÖQ3\0\n\0Ğ,8544œ“L&Ï¶ğ4‚à^™Cú¬è\Zn§D£Ñ%Ô@€\0‚SËÁI\'’ÿšàêmCóYú–ùışé‘Hdµ \0€à”Vmev4\Z­¦†\0H³!}ëm›Q\Z‹ÅVQ3\0\n\0N\'\0-h6¤OG¥gØöâ6j @\0Á	\0ZŞ†|dH_SSÓUUUqj @\0Á	\0Z !}¶=™ënOÂlK\0\0œ\0 ¥¥¥y999lû2ÑIé›Ç¯eÒ€\0\0Ù\ZœN³Í	N\0zR(ºÂI_l;‡!}\0\n\0N\0°ëUb7+yVâ¢NZ¼xñcÔ@€€ş\Zœtb÷ùœÎ#8èÍ†ôÉœx<~1Cú\0\0ô»àd‹g[©Ç¬óRc7gp\0}!sHŸ••VNŠF£õÔ@€€~œ|>ßc‰Dâº7Şx£š=¾\0ú8D•8ÿÒ·)™L‹Å–S3\0\n\0ú\"8]d‹gzÁÉèH“.hù,5 m¯tN¦BÔ1îCWÅãñÙìàP\0ĞWÁ©Úá\'\0ı\\8Ö¥®±Å †ûışp$YKÍ\0(\0è‰à¤=¸çÙâŒ¡zÖ	¹˜#N\0²(DåÛvë~[í¤¯uq<¿‰£Q\0\n\0º-8mß¾ı‡–tS^Fpºš#N\0²u»ÖĞĞ0Ï§é¾®å÷û§G\"‘MÔ@€€nNf‰u4ndV=\0Ayyùñ¶›ï¤ª×Ûö-Ìö\r @@‡ƒSCCÃYNú\'/8=då:8hÜ!}l±ØJ£ªY‘Hä¦^úó“­hFÀ>	 \0 ƒS³#N:à1+—q€¬¤¤$\'//ïr[¼Ô}hy 8cÑ¢Eë{øOëúTšP×Ì[Ï\'\0dGp\nºGœÎsşsÄi¹&‡ˆÅbµÔ€Á\"OjjjšïóùFØ]UÚKGŞ‹İ0ÅğA \0 Ÿ§æÓ‘/ôûı7ŞsÏ=5Ô€Á¨´´4/Üï†\Z™Ç/î…Yú¼N¯uÒ#\0\0\0ô£àt¾-í~Yë‹Zç8Íf¨\0ìÒ§L\ZÖ§#CÕªNê¡!}¬œjEG½®voµ-ŞÌ\'\0ômpÒä§Ùâ…npJMİÛÔÔ4«ªªj5\0;+++›èóùªÜ!}ÛÜYú–wòå´İ-t—u{°“6­ùj2‰Cô°Agå»Vî´RÏ\'\0ô~p:Ç¾øÏv;:â´Ğœsœ\0 \rî¾Ûmñx÷¡[âñøÌNéÛßIÑjpÃ’^ã+¶R ¼À¥m6;¸@€€Ş‡G655…,4ıØùÏ¬z:ÇéfÎq€	…Bš¡ÏÒ·Ê¶­§D\"‘µ]|ÙIVşÛÊ,+­¬tZÒ\\G¬ØáĞW’Édğå—_>kÛ¶mÓŞ{ï½ß}÷İ u´©˜®n<|¾äĞ¡Cß2dÈÓ~øáœ	&<ŞWÁÉ>c\rÓÓ	É¹î{‹666^¶«¡z¬{İ\0ÛgÚ`×Ú`yyùx{­¥Nz§TW‡ô²r«•o9é\\ãİÇ¢Í7Â}Ş\"\'}Í(€\0ô&ûbşá¦M›nlhhØ=//ÏÙk¯½œ=÷ÜÓñûıTN©“cgëÖ­N<ÿ ‘HümûöíÓ>úè^ÙkØÒP=[®´å_·grÖ»n€í3m°ûÚ`Cú:3KŸbE¬Ì°ÏTóÜ@•Iáé:\'=¼Oó1gç¡~\0\nè)¯¼òÊ²—^zéÛŸúÔ§œO~ò“Ú#G¥ô \r68õõõÛµ‡òˆ#¸¯£_ĞÖiªˆÅb×v\"8Éë \\ÜŞÉ!X7²gİ\0Ûgô6X^^~–}Nsİ0´Ê¶¹\'u`B…¢ßk[ñ˜”¦O/ÊxL3¦Ö»!KaO3óãŞg(6ú\0U€úålåÛcÆŒqöÙg¾œ{öï½÷Ş»½ñÆÇM›6mõİwßıö†§@ ğ¸}F¡ÚÚÚÙm=oìØ±—766Şcw²ççXgàíwOD\"óÖ¬YóëÆÀZ7Àöı§\rÖÕÕ=]TT¤¡€GX)ôûıß/((Xm·çµê¬ü±ÙcA+/:éYùDCú¾lE!mƒ•c­ìnåNzXŸ~Î¶ı[-8\Zò¯ıëVÛ°;Ã‡ÿÈÏßßöºóïu8ï½ı²“L69ÃF|ÚùÄè£œàğÿ¢òºÁ»ï¾ë¼ğÂ›-è|uWÃEÜ£I²Å|ï±h4ºÓv©¥sœ:;9ëFö¬`ûLìŸmĞİ&Ïwºg–>¶íšo¦•ÑNzšó+œôQ*M(Qï¤gçÓã:\ZõŸ&ú1 è„d©×°Ö¾œ_}şm›şî4%>p’MÎ{oıÓyå¹;†­¯Qİ`=öpF\ZÕ~ÑÖótD)#<%[\nW¡Pè\nJÚC©aÚ[YiŸqQ,;±£á‰u#{Ö\r°}¦\röß6‰D6E£Q·tŠ“Aï¬¼¼¼\'-Xåwá­é¨“.ª«v¥¶õVBNz_µ“¾ğ®|İIOô)†ğa@9ùä“Ïyûí·ËÏÏoqXÈ¿_|ÈÙ¾åÕ¾ØNãï:ÃóÆR‰İÀ:GÃ6lØ°ÛÔ©Sÿ´`Á‚õ-…\'¿ß¿Â>£B+šrkÇÎœÂÂÂ+¬ŒjllÔ¨.ê¨à´ÜnO´/í;ëêêŞ`İ¸ëØ>Ó³£\rÖÖÖÖüŞ>KMG®£DvÿeÛFwôÈ–<=å¤‡øıÚŠn=ï¤ÏÒe)pÃU‰“\rğF>Eô5@a@ÑT¸šÍ©µ1õÛÛØ‹©½Ÿè>ŸøÄ\'4Ìâ»Í×ğ@ ğ¨}Fã’i-m‡*œô‰Ê\nQhogW¯?ÂºÑÿ×\r°}¦\rfWŒÅbšL¢È¶ãwØİ\\ûl#¡PhAiiin;_Bák‹“Ê\\;Ëît·ı:ßi¤ÌôÚ:êtº•æçÉàÓ\nè\"]GDSá¶&™ø°õ_Nrí‘î4räH´PÒ<<Ùíãî—bÒ×ÆÙãö¼/Xp:ÅJ=ëÆÀ_7Àö™6˜m°ªªj›©éNzHß6+ÓÀêòòòÂvüºÎeºÊ]ÖpÀUVr_G3÷Mw¦å‹İçİïÇ\rZÅîr1Ÿ,P@\'è\"Œšm}Ï>‡ıìfœw_ÃöšššÕŸ;l¯ÍIlì¹–ucp¬`ûŒìoƒÑhT×á;ÔIOö0Ê–ŸÑÔç|9\r-ÔÑ&]ÿIçDİë¾®´4”o’¶JÜåkødA€:Aä\"Œıdã’şr¼ğî×°=\'up)¹Ë)\n%Y7şº¶Ï8mPC­‰Äœôğë móçÙ¶|~†ôyjİp”ë¾^óŸ+Hce_\'}$K×·ÊçÓ\nèf»\rûX«?ËÊÑ ÙôtÎ“-+99ıôò	¬\0m]§!}\Z~­‰œôP¼\n\ré‡Ã:ğ2š®ü4+ç9é¡{ÍÃÓqn°ª·ò\'=|ïÓVÎvÒ“P\0( »ìı©¯89CöøÈãİ†9{zÔÍŞ{ï=§¡¡á9Ç¯îëà3»û(ëÀö½#‰,³›\"\'}^Ó(ÿjÛôóÛùëšTâ³Nú¨mëü§Nz²	-kXßwùÏVf8h @]‘»Ïg‘¶øøŸ( ‚ºÑK/½¤/P-~¦ƒ¿ª1ïÏZYbeëÀö™6˜4	P<ÿª-Şæ¤‡Ş`!j…†uïâWŒtä)îŞW‚¹aéf\'½Sn¥“ÅOçAå»?;Ë}èQŒAÇ “øpûGk|ÿ*¦›¹á©µ€Tï•d2ù/o¹©©©^Ã?X7\0¶Ï´Á¡ººZÇ=£¼¼ü»]àóù	ÏX:ÉVu;_æh+O8é‰/¾d%æ¤/w¡£\\ãİ ¥iÙÃV.¥ÖA€ºÉïşÛ‰¯ıóŞÛ/ägï¾ù¢óÊ³·;yc&9CöØ‡Êêöåèüæ7¿q6nÜ8Ïî>ÒëÀö}#‹-·ïM0¡s”J¬<‡¯µïˆËÜÕ–Ëœô9OÚ3§s«tj¨“¾V”&“8ÕÊIÊÛV® ¶ÑÓÂ‡AaË†çW»£Å/gÏ{›ÿåÔ?}«óö+t’\\s¤Ë>ûÙÏ:Çwœ¾4¤/NMKŞÃë@DïĞ>+‡;éáÙÉdò¢¼¼¼?Y°\ZÕ_×÷‡<İà†&-W;é£OŞ”ç\0\nè*íÕ|õ…»œk~ë4~ğî.Ÿß”øÀyı:¯>?ßixg#ÈºÁºĞÑıAj–Ïç;Ü\r?šAO!ª¤¿ºĞÊ/­œî¤GQïügÊs€\0tí±ÔğÒĞ=ók*uƒu \r¢D\"‘•¢4Kßr7i–¾yÁ]üª&˜˜ieª»¬¡}“¨Q €n¢=–•lj¤Y7X7Ğct4Ú mp‡¨MÑhô[ÉdR3îiXŞY\r\r\rO–––nÇ¯+DéÈ“b­§\r¢71‰´ü‰WQ	`İ@¿sÙe—M{ñÅÌ=»âòË/¿‹6ˆÁ,‹];eÊ”‡ššš–Úİâ@ ğBYYÙ‰‹/~¬¿şm½#P\0\0ô¢Ÿüä\'áõë×ßõÍo~Ó©¯¯ÿßK.¹¤‚ZÁ`wÏ=÷Ôø|¾Cô5\0sı~ÿ£\ZÒWZZšK\n\0€AjÖ¬Yß}å•WœuÖYşï}ï{ÎÙgŸíıõ×ï˜9sæ”^z\Z\ZÕ¼Cª© G¹E$ĞÆïÿĞ}0ŠİÊÒWª¦â¸CúÀêòòòÂÒóİ68ª•¢ë\\ÓÆï_Jû#@\00hh¯÷¦M›Ï˜1#pÈ!‡¤;øàƒÕ¼ıöÛw÷RNáèÇNú:<^)lÖ+oö;İçéDı »<ÍIO\']Ì\'‹îf!jÏçÓ5£Öj½´å?…ÃáÓ@ÔEoš‚ÍÖ7šı×Nõ{ÛÜå‹¬ÜJû#@\00`Í=ûäW_}u¡öz{7OQQ‘sÎ9ç¤:pgyæ‰½ğvşî¤¯Ÿ“Yt2¾öh¯²òf³ç?æ>G»J÷ş×­èÄÿgÑº,‰¬M$‡&“É;´Ùíí¡Ph~g‡ôõ£6X“ÑîÔ~\ZÜ ¥š£ùœşŞs³r“••Vöµ2İm·û³¶ô>ÿ\r¶a	®^½úä^xaÊÆÇmØ°a÷­[·æ4448999É=÷ÜóÃ½÷ŞûµáÃ‡ÿÑ~å…^øwj\r\0z\'<é<\rÒŞî–èñsÏ=7pã7Æ¾÷½ï•Ş}÷İ÷õğÛ*iá±†fıí¯píıì¤§œ¾×IïMßß½¯Sã¡[¹_ŸnÁé)ëçÌõù|@`‚İG£Ñg³¸\r¶Ôşê[h:êä] ø)÷÷Ôæp—uÄê¿œô…„{¬ıM:uÿÆÆÆIVÿÚq2Îmó¹î¶!nŸÎ_{Ê>›è¢E‹Ö†u“\05\0‚ÓoûÛß\\uÕUá7ß|3gÌ˜1NII‰óÿşßÿs,09Á`Ğ±å{çw†¼úê«ÔÖÖğüóÏO™9sæ+ï¾ûîU¿ùÍoî  ÇÂÓÔ]uÜ<Ú~Şyçí6gÎœÅ\'Ÿ|òwîºë®zà-5ºßıÚs­s-¼Î:EËZT·Y	¹¿÷°ûø:÷öÛV.sƒĞc,,UZhª¶ÅûôS\ré›µqãÆ[ª««³¬\rŠBMÌG^ûËkÖş–¸ío[F[mtC”Hé(Ôæªw«c\rÛ=³©©ék†´ğ…<\r±e·“‰Ä\rúœìş‘Hdá@^\'Â—ÅV­Zõı«¯¾z³İtì±ÇæXƒw~ğƒ8_úÒ—œO~ò“©ğ”Z»ívŸ}öqtÈZ\'LŞtÓM>Û0|ÚÖm§Ÿ~úßÚy½\0@œsÎ9“^~ùå»4dhW·ÌÜùçŸ?DÓ9[çå˜x[^‡m›€êİÎœ®‡oåw‚NËÃ„ò	OèÅUÇu^Ôİ×©¼¼<µ“‘YÖsİvóEç?ÃóvR¼•ö—ÙO‹»í6·§Â“… Qö¿?du¼ÔÊD+C:ğë%öüö\ZOäş%G ²­˜9¿ûİï©¬¬<ü¸ãs4\rg èĞkhCb%ğğÃç/^¼ø¯¼~ÄÑ(\0èÚë­[æÉêí¥Ü¬Y³v»á†––———Æb±åİøÖ\Z2n·¹±æ?k‰wŞF¦“ù¤Ñ›Ü£M³¬sŸ:÷¶|¼İ¾à¶“UYÒøôä5{¼±?´?ûC~¿ÿW ?æ=¦>faaajıèÑ£#F8{î¹§óŞ{ï9›7oÖTğÎÓO?í<ÿüóÎ‡~èıÚ]ÏË>«3âÑ(@eaxzâ‰\'şøØc~î¹ç:Ç|‡ÃS¦£>Z³Ò³Æò‹ÓN;íLj\0ºFè´Åİé¸evàÎ;ï¼à!Cª¬Cs|½UuàJœôìzÚlåyÚ3®	$*¬DÜçë÷êø´Ñ¬C®‰tÍ(…¦ı}>ß“ÖN.*))ÉÉ’6¨÷9ÚmSzím´?5ÎwÛÜ•ÎfÅüs„§ã­?¸ĞOê_ªŸ9wî\\ç¢‹.r?üğÔ)\"\nO²ûî»§F<}å+_ÑÑ>ç¿øEó~©&ÿXĞ3( Ğ%:ò‹wtX\0\0 \0IDATtï½÷jçsŸû\\·¼æ§?ıiç§?ı©BÔµ¶’O£– óáIèÔùí¸y4R`Ö¬Y=¢®vÒ{µuîÅ,§åQ)9·:÷éf+_rOçgÌuv^ô\nwHßWwHŸ…¨kòòòî·6sf´A…%ÍbYiey;Úß§ô”î1wg†ÚßCNúºPùİtäi™TúQ0ºæšk4Dê4öĞ‘)=_¿§ åÑŠ­I€Ê\":çiÅŠ‡Ï˜1£İ+s{éõ.¹ä’ÜİvÛm­äùÔ6\0tŒ†y·öo±+îP¢ m›÷Àù+3–×»AHç:eå»ÈíÄ½ï(íñ¿Ñı™fá»ÎI_èu\ZÒgAJáãH\'=õ˜7ÎË‚6¸­YûÓQ¦b·ımËO—;é¡}j:÷©Öm:bUbå+çuõÍèœ§@ ğ+/<xàÎW\\±Sêı~_u—¢nHıKÎÊšmïÊ+¯¼Uç<u×‘§æt$ª¼¼|è=÷Ü3ßî~™Z€öñNVŸ1cÆ›Î\r8ãŒ3>ò\\\rsÉÜ	¦óN=õÔ<ï—¿üej6UuB.¸à‚a×_ı½Öùn$y¨oUÃöZ:ñÜ;\'JaèŒfÁê1·ó¦aŞ	+wVç>f\r@_²UmmïÒ·ß~{Á~ğ_?nƒNË¯lvÛÚ+§dôÑŸsÛŸÂá-ì\0ÑïÍìjıùış;¼a{:òtŞyçí¦×Y\ZŞ§a}\nR¯¾úªJ]ËËn¿:Ö9@e‰eË–İ©©ÈuÎRO:öØc‡íµ×^0”\0ÚGG¬£¶¤ùù\ZÎ¢Î›:ç¶ÛnÛé÷ó›ß8»í¶ÛûûØÇœiÓ¦¥:nwf°İí÷—tq(QÔùètåaÒÎ³šŒÇ*İNŸ»ÌíÄÍp‹÷lb-@_·Aë#İ5sæLßW¿úÕşÜ¶£ı­ÍØ©±Ìmkİ¶—YsŸ×¥™05U¹…\'\rL»¤ĞÓÕğ”¢4j*ãœ¨	¥I€Ê:úT[[[\n…vjà=åôÓOÿ˜m údB	û/UcöNX7ĞŸ×!÷­¬şµ¯}ÍÙo¿ıvÜ·ŠóòË/;Ï>›¾èßÿşwgõêÕ;f®ÊÉÉq†îsÌGG\ni¯ú\\°›=\'ÚƒKĞAì§m°‡êtGO³:wvØ^kôzšX\"£O{:\n½Â\ZöÉo¼ñFNwçİ•±cÇ:tè\ZÛÿî•šštß}÷}Ûş¾fn9¦´´4··şøüùó\r6¤–ÿùÏîô3MÏÙêßºuk«?ÇãÎ¶mİQtá…¶ú;z/>ø`êw½×hhøÏé	¯¼òJ«¿»jÕ*¹ìÖ÷ÓÇRëF^^ŞfûâZØÛë†<ôĞCNccû.öşïÿ;õüöÒëVUU¥–õë³É,·Şz«óöÛoïxşßşö7ç‰\'pV®\\¹SÑ:ì­/­¹ã;œ>ø ÍçÜu×];­ózÍ÷Úf!oû²©;¶/nÇíwu²úYgµÓğíÛ·§>ƒwŞyÇ™7o^jøGÏÓõüZ›]UÛg¯×C×¨éµúëNêÛ÷äû‘Hä#ÛğÌmŸ×ynŞÕn;ª­¶4ˆÛ\Zm°÷¿ßìhN:Uç\\®eı¿\nP=Aa4ã\0À„>ê_ ›^xaŠÂSW¦+ï¨¢¢\"õÀ&÷ÕÿìóùÔø§ÙFa…ßïÕ6wi£PQQìÉ¿«ëhü¯<şøã©\0¢N°ÊO~ò“6wÌ˜1Îu×]·Ó—ª^Ï3räHí)J-«£ë½îsÏ=—º]¾|¹sñÅïôš?ü°3dÈç”SNI=ç†nH}ñß{ï½©ûúRhÆ~g\\á#:ó~ú‰=lı˜ªuÃÚÄkö?Üİë†÷™*ÈÈúõëSáVAFAVu•ÙÓøz­CªG=÷w¿ûİ:şéOêüßÿıßN¯­ÏÔ[_^{íµTÿÃşšÍHN:é¤†Uüõ¯M}ùvØa;çæÛ\nıı*p=>Òlşí¥ÍìTh¯ì[o½µ#À«Ãš­lıÙËÛ¾X]ÕÛ:4¿£ëmÂ^ÇmW;·¬c“ê@6lÇcªÛ«¯¾z§.ú|¿üå/;ŸùÌgv¹“kÖ¬Y¶iôGúb/xwÔ_w;à€RmÄÛ)¤öõÙÏ~¶Åç.\\¸Ğù×¿ş•ZÇ,XjÇj—ºĞüÒ¥Kw<ïÍ7ßL½ŠÚ±‚}Ş©çªÓ­6½hÑ\"çç?ÿ9m6ØÏ¨ÓWÚS§Ö\'yG¨3‡,v\'\r¥lp\'gû:Ìaø,°qãÆq%%%½ú7¿ô¥/øóŸÿüuÇ´7´#¬Ï¿g_(Ûm£³Çî³zYî^T¯Ë´×Q‡ğÕqÕ—¢‚GóN¨ÆDgî!Ô­6Ú«¢çëâršˆÃ;*¤/É5kÖ¤£/D•I“&¥~V\\\\ìƒémš¾€µaWˆ¹òÊ+?è´7UÏ±ÿÙ7nœ“››Ş¹tß}÷íôü“O>Yã™SËúÒÖ^6¯Ó­ë8¨³ğ‰O|bÇ—tGßO?¤/Œ“lı8ÉÖûßÛı¥İ¹nxŸƒ>ÍL¤òØcé¡ç¯¿şzêÂ‚ÿøÇM›6í¨[}!ßÿı©½˜²ÿşû§JfÇ¬ù^i/¤ë .S ÏZ+G×ç­ÏSŸÓ½_~¿S[[»Ó^Uw{‘ê´éh•·ÎF£Qç ƒJı(èíµ×^;éH–ş‡óÏ?¿Åÿ]ı½®~Wë»Â†fh=Êrš¡ÂÖ¡\n[…ŞµíKÕ®¶/Öqú®µó™FìÊw¾óT=«MŠêPÛ\nû»;uœËÊÊÚõzöw‡wŞyMsæÌ¹Ç:pSºùBŸ=ZİMíIëº¶cªçÙ³g§àk(–·½ôv‚¨h]W;ÖöRõ®ÏB;•¼6›úÇ¬Mäçç§ÂÓw¿ûİÔ¶T;(´}Ôßüïÿşïm×C[£\röË¨Ó÷¬N·T§öØ×½eí€ëIz}ëWzwûEÿ’\05ÀÙ—Àîê˜÷¦Ï|æ3ê•ë‡Õ1ÌÛ(äååm±ÂC¶¨:thueeeCg_TGt!8Û\0î÷¬ 1qâÄ_¾Şğ*o#[ZZšZÖĞ=m½/Dul+**R¯™É;â#:â /I}™{_®ê„kO™êÖ­[—Z~÷İwSz=¦=¬:ú ¹:ØÍ÷dfÛÖŠÌÿÇëàwæıd ´í=oµÿí[7îìêºámøµÇYõ¥šü=úè£©áròÇ?ş1^3i=Ğõ0ÚCÏÕNíE?òÈ#ÿøÇ©½Îÿó?ÿ“:\"(·ÜrKª#—IW†Ÿ0aBó=Š©ÎÛ3Ï<ãuÔQ;?öØcw,+Ü«CæM1«P¨¿-Z¿ì6µ>è=;6õÿëÈ›£NfMMM*Ø@{dl_Ş´Îõ£vÿ®ÌuH{½İ[‡.Ğ©2:™ZG‘Õ%³ã¦=´ßÿş÷?ˆÛò…/|a.¸`Ûõ×_ß_:p»¬¿ğ—¿üÅyàRmG¡HÛAm#uXŸ‘ÕÍçÚûp.½ôÒÔM`uèØûKí´PQûÉ*\Z‘ dzF(€iû¨××ı–ĞÖhƒıÌî^î»ï¾›í{ìa¯ßdáj\\F¿¯GßÄ¨Q£2ïËö•\0•¶nİš£†İ›>üğÃ}¬±5ZC»¢W†\0”Ûû,×PÛxı³3ã×wô¾ƒÁTÇS_ê¼jï”¾Œ½#3-íıÓŸè(A&Í¤ğuÏ=÷8ŸúÔ§Rcñu¢êå—_:2¡Î·7…jæŞ3\rÔ—»öP.^¼xGxQ°Ñë¨C­@ç=®/ıLÚcé…ŸæG 2Ï‹éÌûé(…/ëï£uHG¦&Ûº1Yë†½‡.­¢!š/¼ğB*”ªã•yş™¦hÍì¤y{ŸÛCïOë›ö„+„i˜†Q(˜+üNŸ>İ¹ıöÛw\nğ¢N>ãæ_öZOõ\\\rQò”ÂıÏ~ö³C(4ìP3q­¯¯O1³N@êgZ¿tÂïµ×^›êˆj=Ö|ı½N8!õ:\nâÍwdÑºÑ^·õG{Bîöeu>Ùg}™özwæê<«#­#\r™;?´¾h‡HæÆö²öš;kÖ¬·¬±uè>{Ïëúkıuµ\r¶Ú‘±u^;šŸô¯£D™SUëè‘¶Ú	òä“O¦vJ¼ÿşû©¶vÓM7¥>“3Ï<Ó9âˆ#RíY÷¨ô] Kj§\nMŞ(=O2@õ·¶Fì6hÛéÍ¿şõ¯—X\\ÒÚàGhDOf¿Iû]3dOjöú#	PèqZÉ½N|oÑ54ï\"nYÁŞïgµQÔP‹ÎÖ³:Â\Z.géTğĞğ8é<—sÏ=7õ¥¬ó£>ÿùÏ§ş¾@½/ï‹.º(5ŒC_~ÚË©à£±ø*zm…Õ×IÂÚ#£½¦¢=š\ZÂ¥/wu4´¡÷N,ÖŞ2}	k¯¥¾ÄµñWğÑĞ<¾lÛ:åéèûéuP8úÉ:ÔéuCãäuDQŸµRµ\'SGxÔ‰J}Ë[ÀÌ2×úŒTÿ¢!Aú{™ƒÖN@×ğKu3\'QàWĞÓïÌ½à^h¾ä’KRËêzGWuôKa+“Â¶şO¹™3g¦öÒ~ñ‹_L\roÕÿ©¡Rêf¶,^7Ú»}mur¹N²îLÇÍ£©‘3†±¤¨~O<ñÄN¿æ¸qãöş¯ÿú¯­ë×¯ŸÚŸë¯+Ûç¶dEh.³“<~üøÔ¶Yç4M™2%µUÈ<¿Õ:Á©kà(@©SıÈ#¤Ú:×ê\0¶çTjk´ÁŞiƒ¶p_gª“]vìíë®©Ë[Ólg_ĞÉr¨,0tèĞ¤uî}½¢;ì°MK–,a¬«{ùßmÏÆÜëQi¶q}©¸¸¸SÇ ëêêRcæõ…¨aWúBÓŞ}\rÒ!\rßM‡ê‰òÎ}Ñ)€)ğ¨ãÚüœ—–h®á\rô:àúúÒUÀòÎ¿Ñ—¿ö|j8×á‡ŞmßÖûé…SgÁ¾¤g÷âº‘°/°¤ş»eİĞF_Cktâ¹÷™ªuúé§ï8ùXŸÕõ×_¿cÏrG(Œk˜:]\n»:ªè…Xo]hÎMÍÏÔ9wZguºÖY]ÀĞ£=éŞrB}¶Ú¦h9sŠ_ÑÎ¢ó?´>k“:›sæÌI\rÑŞquõöÀ÷ƒu£;×¡Ö:o/YPşmuuõ¹|°¿³³¢ê¨´½ÖN~uÔu>£Îé«Ç×_{í5M®²¨‡÷~·«şÜ6èë®6ØÏfÇ¬—:â£n§6Õv3iHœ¶óZÿ†´mÕ$ZV{Ğ°¿Ì§#Dzmmû‚49Oæ(u:3\'éom6Ø;mĞŞ—®…¶§½n_jo69Í&³÷Ûdï×ïíÌëÉ•9QŠ“¾Æ\n=køğáÚF{Ho‹²Ûn»½e\r«!\Z^Ñ›ÿk(jmC°]ÜŞÓP/8ÙıÍvÿ1u\Z,d>¤ñÑ\0’ù»©=“\Z¾!Úx÷İw§¾Ğ´aUhÑÆE_È-]Õü[ßúVjˆy³´µºkjJMX¡×Ëœ¥/sŠêæÁE“èYl­Ğ‘†+VìvÌó—šákş%ß‘÷Ó\Z¶¢½„^xá=¹nh¨©ş\r[´^Ü/Æn[7<ª£ÓN;-µ¬!r™CƒDŸ½ê²#Ã÷<ê4)œyG,ÕAÓßğ:xŞç””ÔáÒ,\nQŞÌRºÕ	ë:B{±wÚØ[óFfîWÉÜ+®¿£÷ã]Ó²Öj\réÔp#­ƒ]éĞu÷ºÑ\rÛ—–Ö«¬Czü’K.yfîÜ¹‘ıèGB¤uDG.šŸ»˜H$RŸAó‰BÚ¬£=Ì^3ÜÓç_ì¢şvtÎz¢\r¶FøxÛÍ-[¶¤‚Š†Òzè¡Î‹/¾¸Óº­Z÷5¢À;/I´Nk’–®ıãı®>ı®Ú¥7´O£ÔV2w˜õ§¶Fì6xûí·ÓqëGôú9Pím—ºm^§\r\r\r«Õ„ôCíèÉ\0¥×Ïõß&@e#F¼b\r{to(ë,ê\Z‰>ş×µ›]{1ÕƒæîĞÔcJ1ë,>fÔÍİõÇ2;¾Ú#©=QŞ4²­}©zt”BG±ÔqmëH¡†âihŸ†ùé8søU[×ÒÂÌ÷ ğ¤qñÍ;ë\n}Ş4ìŞ%ï÷2\'èêûé>p×ÏaG›zeİhNGzê©V¯9Ó®Æ]Á]Ó$‹:€:ÇN{ŠõÚ7ß|óç{³%iX¡†y¡]\'º+peÎ:æÑ^ù–öŠë¼ÙÜñ­¶iSj¯·7A†:\nğ:«sEÔ!Ô)Ô.×!k/‹Ï9çœæÍ›·Äníİ®šÎ¹Élc™{ÁÕñWk»ÓŞ“Ø­³÷úÏşs…§©}tòºÚ 7]©¿\'Û`k¼I#´^j›¥¡w\n ¢£Q\n8wŞygê<Bog˜nõ\\ÍÈöõ¯½Ív©6£¡wú§¨¶ö¤ÿãÿHµ!µµæçĞÖhƒ}I;3¾Ûl—¾j¼\0õÒK/uûEt3éÀ5(ô¸áÃ‡?aáÑš.¹·üñÔå‰>ş×s36¨K¬<`_BË{j6\'}¡z{¥4ÌCÓ«®º*µQiëÈ‚Lèè•®í£/ìÉ“\'§¾h;î¸„)}AêH•öPê¼™ÌPÔ|’€Ô®£f{ÉD3N©“¬™ß¾ıíoïÔYÎOí	}?ıÈŞ\\7D{\'½N‘:9íyÖÏDwuôIç;¨C¥õëßøÆÇµœzê©©Î”†eê(”>í)Õu t>„>}V™z¨ãpôÑG§Ö;ÍÔÙÖt3§MÎÜ+Şœ7S£N®W‡C>½¶†(jx Òjªuu<›Ÿg•Å¶­Cö9,³Ûd»]ÒŞ™À~ûÛßî4„E¨½jÒ\0ïzmºÕä1íé4[~ãÜ¹sƒ}ÜqôflNCh5äUAH¡ÉÛéãMè¢:GTAEt4JGu´3R×úimÇ˜¶é::¥P\nJ^øoBmtÎ¢Ú£O[£\rö—ÊtÃS»êÔÂÖöüÔ5™4¥­\n]•9Â¥ô/	PƒÁ–-[®±Ú)¶õ÷ÒÅtì‹&ßnÏìÃ=(ÚCRm_ZŞô¥=¾\'Sçi(…nµP4†uhv4Mà =üÚ›©/`í•Ô—£&cĞÅøDG 4V^çËèZú¹®å\rïĞÄÍ÷liÈ†.´4C•×!Ğ—·~®ß×ø}/¬éDh“ÏÜ«™¾Z\n`™:ú~úÉŞµ^_7T:/Âëp5J\n>™Ô!jé\"Zo´—Sõ®›í(I…vı\\{Õµ—Ô»ˆ®^_!WgÎö\':OÏıÅ/~‘šyW|ö:	ZŸ[Zo<Ú[®kéojh¡ÎÃğNš×ûRÇ.[;uİ±©gÜR«÷Ø~ô£İÚêÀ)Ø*|gvŞ4ÜRÓÕëè¯ÎYuØ5¶!mM)¬!CsæÌÙK\'¬÷EÇ­/Ú`+;?ıéO©eïB¸j³Şù,ŞöüsŸû\\j›îM#®jWjÏŞd@¢#ó:ê¯€ã…!}7hd‚7tWCÔİïèÔĞYíø ­Ñ³©Nmı_f}KÍD•£³ª‡¸˜®†ï=÷ÜsÚ1ï¹$Û×añ$;œ{î¹ë¦NúÙ®Ì<Ó^<òÈ¢ùóç:\Z~µ·ÿÏP(t©Ïç«·Æ¿¤3{2}ôÑ¤6|]Ñü: }Nwü}ik§†:ò75ü¤µY¢zêjN€<òÈ#}eİè:këhggÏ±êÌºÑÑõ§/×ŞZ‡ZRVV61>pöÙgimû¬É<4ÓÛ!¢š8@£\n´#Do¸°ê\\wuœ[Úaæód‹\'G\"‘eƒmûœmúC[£\rœ6ØuªkmYøš¨eMšÒŞëv„Féh’×Ê¾è_v7@e‰-[¶\\|9øàƒszø(Ôæ»îºë kŒ?ï‹ÿÓ\ZÕU}Ş(ÚÑ!îNs{^Ã®¥NsG;ÎıBîïW¹ïëFoÔY[Ÿsw„§ö®}Ñ¡ËÆuhñâÅYäÛóæÍ[:cÆŒ`óœTë<¹Ìs\n5LË’­óe4SœÎ­Q@VgZG@4}¶¦kÎÔ×ç[ôÇ6Øß\rÖ¶FÌª:ı¥•T€ÒùÕÚÉÑçBé<Äûï¿ÇÑ\'ë_şz ¬Ë~YáÎ;ï¬Ú¶mÛß´r÷¤9sæÜk†w7nÜ¥Ö\"š‰cœÓ<¿#¿‰Dzÿı÷O¼é¦›\Z4Æ£a+š@±LÚóISâg·Õ0\ZMã\r+íõVÇÍËûÓù@@ìRİé(Zµ–u.ÎµÕPÆî !“7ß|sÂêÖ;Ò¹r ô/9•E¶lÙrÂÒ¥K×xàÃ4–»»­^½úwÏ=÷Üq>ŸïğêêêFjÀ ¡iÔ´ÍÓÌPçX¹£3¸²²²oİxã÷ŸsÎ9©½àšÍ»–[[4œ¨­çy{½ÕqÓßáãhƒİì+:©o¤&Õ°:L]Pº+Óš+<YK¾öÚkŞ°©mÖ¿œ>Pú—Ê\"Ñh´şƒ>˜n+ö{İ}‚¿­àO]{íµãlåe‡µÔ6€A ĞŠë‡œô…Ç;éë“ü°3/¦¡Dï¿ÿş·n¾ùæ÷­$»c/®:nsçÎ¢!C„\' }mPG¢{î¹n¹Ë`hƒê_&“IÍ¶’\n7š¡Wçiø]gè÷~ò“Ÿ$V¯^½ã;ë_1ú—¨,³páÂEÛ¶m›qé¥—nË¼@`WèÈÓ\\ğÿ‰Ä­¶r/¤–µVtÑ J+uNúÒ	\nRºöœ®Rí]‡ Çiçˆ7Şx£úƒ>X»jÕ*ßí·ßŞ¥ÇzC†lÛü=†íQïw5D\r¦6hÿŸ†ÖM÷B”D]|ñÅÎ¢E‹š_·Uz&Œ¸è¢‹2<i†À‹Zÿ’\0•…leşß-[¶LÿéOºõ¾ûî{WcV;i³m*ö³ŸÖÔÔt¹5k©]\0ƒÈ$+£œô9O›İ\0µÒÊSVsÒçCUX¹ßÊ´ö¼à~ûíw¥İèÊ¯Zç«¡¦¦¦Shíõvgúâœ\' !ÊúFßUˆ¢\r¶Ÿ…ŸJ;\'¹S¢§Î‰Ò¥]Î:ë¬Ô%StÍ5]ò®k˜‚–®K9oŞ<MÁß¤Ùö2ÎyÒõ¨NˆıKÎÊâ=¡Ph•m$î\\±bEÁé§Ÿ>ü_øÂ°vşzÃ£>ºìî»ïİØØ8Zç<1lÀ 3ÚIZî†#ï¨	îãº*ñ:+yNúÕ.…ÃáiÖñ8ßí4|Ç:#çÌ™³dæÌ™»}ñ‹_l÷Tk™\'«3lèµk“ß¥\rv®i}ÃÛ½éÍ¤şùTÙ…Ì3+uÎÓ@í_ ²{OA½İ|ÃVôÉ¶8cÈ!Eùùùÿ0aBî0dï½÷ÎƒÎöíÛ_ß¼yó–5kÖ¼¸råÊÀ‹/¾x 5]Ùõ—ñx|!F\0„Ö¹·?t¾äuDJxï~?*HMtËm»O¬³q»~Ïëÿ¬/++›4wîÜeÖsÚÓó®1ãN“Lxº¢hƒî_©ş¥mÏN·m[I2ƒâß9Ğû—¨±¢ëÉÔ©S÷ÿË_ş2¹¦¦æ¿í~±“Ë¯1ü{YùĞŠÆãÿŞÊnã\0€ÁDßy™_èÇ»é,+åNzüÿx÷g\ZÎ§£OŸ¶2»­Õ¶7‘HT¹ÛÛ«2Çúk(‘:p?ÿùÏ—ZîÃâââ=Z{üãçÌ™£íõT†íİƒ6Ø=ıK”“-HyıË<w{§~¦&ŞÑÑû\'ôÜÁÒ¿$@\r ‹-Zo77¹\0°3Í¸w—/àx¤+¬L¶2ßÊÍNú|(]å\"\'}‘É†Ö^°¢¢\"ØĞĞq;ÅãñÙ-uàÂápéÜ¹sï=ï¼ó¶rÈ!Ã›?Çé+h”©îuY\0tcˆ¢\rÒ¿ìNL\"\0t´)l¥ÀÊ\\ç£;µ§õ\'=üäT+·»ËëÛzQO÷¼©D\"QÚÚ\r%jllüö7Şè{æ™g¶fş,s¦/:n@Ï \r‚\0\0@û)àÔ;éæŞé¤‡šxCî2),i8ßt÷y+ÛzÑP(t…“>r¥D–VUUmkëùÚn¸ïÜtÓM¾§Ÿ~úm¯ã–q¾Ãö€D\n\0€]ËwÒç3yBxÃónvCÔşÏÕÑ#MA®áx«ÚzÑòòr]|÷Çú…§öÎ4•ÑüêW¿ZOÇ\rè³E\n\0€frİ\0¥™´\n­<æ¦Ó¬T[™á¤‡êMÌø=oëEC¡P±¦øuÒÃ\0/îè4ÇêÀ)ƒ=ùä“z/\\ç	èƒE\n\0€)Üè(‘:F#ôDšº|”•­Üà¤‡ìhåd7TÉ¦¶^´´´TG§–*œ%“É;¢ÑèœÎ¼9…®`0ø1®óô\rÚ P\0\0ìnuÃ“–Ç¹á©ÄIŸ×4ËÊ›V.uƒÕ7DµI3î…\'íµ^9lØ°]y“•••›ù¨€¾C\n\0€4Ë¤sœt”)Ï\rMÇ8ék<mr«¶r­“Hbš•ëvõ¢îŒ{zõšqÏ:_\rT5\0 \0\04i„4iÊòÑNú<(…ºÆ\rAš$¢Á-·8ÿ¹&T‹2gÜ³ğtxUUUœ*\0\0\0ÙLG’ÎÏ¸¯£k?éşL×zº×Ij·Œ÷œd29İÂÓ:ª\Z\0P\0\0d;ÍºwâU²^\0\0zIDATK³Çt„IÈÕQ(\ré«±r[{_0sÆ=»‹Å¢T3\0 \0\0Èv“¬DİÀÔ’+œôt#NzV¾]ÊœqÏÊò7ŞB5\0P\0€l§	\"4\\¯ùŒZº”Î[\ZáŞ×yN7Z™ï†¢V5›qoU0,­®®n¤ª\09T\0 ‹é(‘.’ûq\'=1„†êi’ˆƒôl|#Ü°Té>_Ï™ne[[/ÚĞĞpƒû:qRÌ¸\0 @\0Dx*¶¢‹ÙVYYa¥ÔÊB·´¦ÍôÂáğ1Édò‡\n`v{â¢E‹ÖSÕ\0\0Cø0°Vh¿?ÙÔÔDEôö9üËI`İ@O¬Ú¨#DŞôãXyÊIŸã´g_ÔÂS¾½¿ˆûúÓc±Ø*>1Ú m\0\nV0|ãwŞ¡\"ú·ß~[×á©aİ@­œ¯İôz4ãŞ<+Çw\"<L&“K}>Ÿ†ı]F+ù´hƒ´A\0(h»í¶ÛÊ-[¶Pı@<ßj7Õ¬è¡uC¿Ÿ¹]Ãò†ZÑp;\rãû®“¾&T»†ª—””ä(<Ùb¾¨¨½ÇÙ|R´AÚ \0¼†††ë7nÜø¡u„¨Œ¾UÿÖ[oé$ş{Y7Ğ‹ë†×;W°:ÅIO± =¿¸ï¾ûŞj7lı¨illœÎŒ{´AÚ \0…¯}íkOÛ—ó_7lØ@eô¡ÚÚÚGísØpä‘G®bİ@/®Í\'‡¸ÂIO[Ş¦P(t¾Ïç;M¿Ÿ““ó­ªªªm|R´AÚ \0†††iõõõïmİº•Êè›7o¾ï­·ŞúVSSÓLÖ\rôƒuãÙ¶~¨÷ìæ\Z­¢J™q6H°+ª\0ÍÂ…7tÒIO¿ùæ›ßŞk¯½‚C‡¥RzñËyõêÕEÖıŸ£:j%ëú`İˆ·÷‰îŒ{+ì=í®»Ñhô!>)Ú m\0\nƒÒİwßıÒ´iÓ}ıõ×\'Ù—Å»Ã‡f·TLÏ©¯­­­ª¯¯?B_Î\'N\\Îº>X7:4ãŞÃö4åù-nä£¢\rÒ 0è¿¤§NºlË–-oØ°axCCÃ?ü~¿oèĞ¡¹|Yw®#òÖ[o=õç?ÿù¿øÅ/Š‚Á ³ûî»—fÃMÖŞY7^~ùåçşş÷¿|ûöí9öØÔş²nhÆ½ÜÜ\\]t÷wÆ½Ó­sÉŠhƒ´A\0íÂV\nƒÂ#<2Î¾”5­q‰•b+Aj¥Ë4KYM4\ZİÿİwßÍs«¶2Û«fİ`İp×‡{ûÛÉêååå·»“F¬K$_`ÒÚ m\0\n@¯™:uêAÖ	­köğß¬CôóÆÆÆ(Sô\'šqÏnn°²ÉÖÛ/Ûú¹Z\0tCø\0tÉêÕ«ÿ]XX¨3Á¿šñğ>VNğûıgÙÏ>nåÅÚÚÚÍÔúRYYÙDöóm±)™L¹xñâ¿R+\0\0€^7fÌ˜?[Çôd+Ã›ıHÁê+VÎ±u¨•\r¤ê©1ô¶ÒÒÒÑèugÜ;3‹-£V\0\0Á>\0İ\"OK&“ÚñÔ:ëÄŞÄğ>ôbxÊ\rÏØb¾“qoµ\0è,@èµµµ-,,ÔEI÷ßÅS?á¤‡÷mÏÿXQQÑö»ïQƒè	šqoÏ=÷ŒXhŸ`å±`0xJMMM#5\0è,?U\0 »$“I]İ¾½Ó=¬œ‰D6Qsè)ûí·ß•œ&Ùb½•peeeµ\0 @èb±Ø*ë¬.iïó£Ñ(ÃˆÑcB¡P……ú‹lq›­—ß$¬\0P\0úßFÅïŸ¥+á	}©¼¼|¼İÜªeQÓ-<­¥V\0\0(\0ıÎ¢E‹ÖÛÍnÇ5ÙÒs‰Ä~ÔzJ8Î÷ù|\'}AÖÙ±X,J­\0\0P\0ú-Hsìf½ub[<Ê…B£¨)t·ÒÒÒ<Ëí+lQë×òx<~µ\0èNÌÂ Û­Y³æƒ¢¢¢ÛâwZøñ*+c­L¶ç¬¨­­å¼t‹ŠŠŠ`SSÓR[g!ªÆï÷wùòåL•\0èVĞ#\"‘ÈB7,y:ï)~Ó–«­ìoÜgÊÊÊ&R[è\r\r\r:ç©ÄÖ«Í>ŸïD&\0\0ô@è1ºhîiZ¶ğ”ÚŞÔÔÔ4Ç‰Äh»{ˆı|Jaaá«µµµ5Ô:+Ÿc7šq¯Ñï÷mëÛ_©\0\0\n@V©««[_TT”oÙ¢ÌÇu!Ó‘#GŞ—››û)…(+“ìy¯YˆzZCG…B¡»™o%Çùy‘Hd1µ\0è)L# ¯;¿WØÍå©\r’Ï7Ó:¿7Q+èÀú3Ên±2ÒÊmÖÏ V\0\0=‰#P\0úTmmmuQQÑ[Ô¹PÇ4Ö××7Q;hKEEÅˆÆÆÆÇmQG2«ƒÁàI:ºIÍ\0\0P\0zˆZe!jµ-N¶2>77÷âââ¥t†Ñ–üüü*»ùŠ•x øæ‚Ş¢V\0\0(\0ƒ%D­-((xÁçó`w\'XˆºO“NP;h.\nİ`7V4MùÑ‘Hd-µ\0 @Têêêş1vìØÉdRG¢úğÃ±û÷Z¸zÚAFxÒú¡‹5û-pŸ\ZF¢V\0\0(\0ƒÒêÕ«ãEEE÷ÛâñÖ9Î·ÛÆŒóğš5kgÊ”)ºHî¶8ÄÊUn¦V\0\0(\0ƒZmmí&M1¿ß_bwÇÚ­®õ¸=¾Ú¼4ã…§¶8ÒÂu4ŸÍd#\0\0\0˜5kÖl+..®jllTˆú¼uœËŠŠŠşl!ªÚ|***‚¶.èÈd¡•µ‰Dâ[>ø çÇ\0P\0àÑ#G¼k=öëóùÆÙCÓ,D½l!ê¯ÔÎà’ŸŸ¯åkAz³ßï?2‹q4\0@€€æ4D«®®.fÁIçCµò[~ÍBÔóÔÎàP^^~–è‹lQGœŒF£5Ô\n\0€\0\0m°ÀtoaaaÂ¿feRAAÁ›¬¦f¶²²²‰~¿_GŸr’ÉäI±XŒ÷\0\0(\0hgˆúƒ§·}>ßQV·@•;räÈÇ™H``\n‡Ã:êø°}Ö¹V®eÆ=\0\0\n\0:HGt”-e¥dÏ=÷ü|qqñ555ÔÎÀQQQ1¢±±q…§OÙİUÁ`ğ>c\0\0\n\0:A“HtĞAÏXçºÌî³öUpÁİãÀŒØç«ášõv{øÂ…·R+\0\0\0tR]]İK………OÙâ1Nzjëì¾BÔfj\'»…B¡+-4ıÀqïğH$ò\nµ\0 @@éšP|pÌ:Ú\'ØİÏ[™4fÌ˜Ö¬Yóµ“Âáğ4»™c¥ÉBÔqÑhôYj\0@€€n²zõê­ÅÅÅ\Z\'Úİƒü~ÿwÆû¸=§v²Kyyùx»¹×ÊOçYxŠR+\0\0\0t3]p×BT•…(uÀÇ655…,Dı¥¶¶vµ“¦Nº2™|ÀGZxŠnÜ¸ñbfW\0 \0 gCTìÃ?,´ø8{(TXXøª…(.ºÚÏUTTís»ÏI_(¹:‘H„|ğÁj\0@€€\rQuuu1N9v·ÄÊ$[~İBçÑôcùùù·ÛÎc[oáéèªª*Îa\0 \0 ·X`z¼¨¨è5[<ÖIÏÎç³Çª©™ş§¼¼ü\"ŸÏw¾-nóûıGÆb1†]\0P\0Ğ!êy\rá³Åã­aË#Í£œWÓ„ÃaMA¯£Oşd2yr4\Z}ŒZ\0 \0 ïBT§¿9éáa_ÉÍÍıLqqñ\n\rõ£vúÖ”)SÆ555İïóùv·»·Äb±¨\0\0\n\0ú>D­)((ø½uÔ\'Ùİñ‰Dbü˜1c–®Y³æj§o”––æÚçñ”•OØİ…ñxü\0P\0ĞOÔÕÕ­·µÂ:ì:5Îï÷UTT´ÔÂÕ{ÔNïÒŒ{MMMºÖÓ!VVƒÁÒeË–f\0(\0èg!ê1cÆD,DM´¢Îû±………+,Dm¦vzO~~ş<»	Y©Ç-X°€÷\0\0(\0èÖ¬Y³íĞC566–8é# “ŠŠŠ¶µ‰ÚéyååågYxı‰-ê´£#‘ÈZj\0@€€~LÜ3fLÌï÷+@\'“Éi¢~o!jµÓsÊÊÊ&ZkÆ½!¢NF£Ë©\0\0\n\0²€&(..¾·±±1ßÎ7ÅBÔ¢¸Q‡Ãùvó°Õõp»cáé:j\0@€€,¢©Ì-0UæØİ‰V&ÛòkšúœÚé>îŒ{šq»ûP<?•÷\0\0(\0ÈR˜/**zÍI_+ê;\nTzŒšécÇÕŒ{_±².½lÙ2f>\0 \0 ËCÔóœ^µÅã­”ì¿Ï>û¬àHI×„ÃákìæûÉdr³;ã^=µ\0 @ÀÀQ5¢şf‹\'ø|¾Ãrss*..¾_Cı¨N…§iœ®·Å&«Ïã\"‘È*j\0@€€¢Öè|‰:,‘HŒ3fÌRM:Aí´ŸfÜ³:\\`‹AwÆ½ßR+\0\0\0@uuuëuŞÎ$+‡X\08VçñX¸âÜv(--ÍÛâŞVw×F\"‘¨\0\0\n\00K›u­(\0:’2ÎIO.q¿§vÚO¹nxú|2™\\ÇÏà<2\0À@ã§\n\0à£ªªªâÃ†\r;ÜuîÎh+O–——R3­³ğt«İ[Yï÷û§WWWsş\0`à}ßQ\0Ğ²ššš÷HÔAšXÂšRXXø„†ùQ;;…B—ÚÍ9V¶Yx:2‰¼D­\0\0P\00Èh	L1N£,D·2­¨¨è¹ÚÚÚuÔNZyyyÈêåf\'=ªaª…§ÿ£V\0\0(\0Ä,0İ§‹ìÚâVB¢^¶Çş:Øë%\n[xÒ¤šqoz4\Z]ÈÚ\0 @\0¢·àôš“¾àîä‚‚‚7ëêê¬õ¡÷ü~ÿïmq$3î\0P\0€–BÔó………¯*DézQ¶<Ò<:Øf›+))É>|ø}¶8ÖÊÊ`0x*\0 \0\0-…¨\ZN³Å¬|eÏ=÷ü|qqñƒ)@|éK_úµÈïØb} 8nÁ‚o±f\0\0P\0€ÖBÔš‚‚‚ß[ˆĞwK$ãÇŒ³T“Nôÿ½¼¼ü\"û¿/°ÅmÉdò‘H„	5\0\0(\0@Û4yQQÑıNúœ¨C,T{ĞAİg!jÛ@ıŸËÊÊ&úış;wÆ½X,VÍš\0\0 @\0Ú¥¶¶vSaa¡Îšhj¬…‹Éºoohÿk(ÒTîØâp+—E£ÑÛX\0\0(\0@GCÔæâââHccãD»{²†.¸ko(ÿcEEÅûÿ´ÅOYYÇg¶‰3\0\0 @@7©©©i3fLÄï÷Şî–L&Ë\n\n\n«««{i üö¿Í·›¯)/ƒÁ—-[öŸ:\0€\0\0è4M Q[[[UXX˜çóù&X)+**ª³ÇÖfóÿ\n…æÙÍ÷-n¶€xôÂ…×ói\0P\0€naéQ	[<ÊIç{İ{6ÿ—òòòÁëm±Ñn‹F£Ïò	\0P\0€îQPp²Åc¬œ`Ë>{¬:›ş‡p8<Ánîµ’“L&ÏÅb‹ùd\0(\0@O…¨g‹ŠŠVÛ¢®5Ñ–ƒ#G|\"&_˜:uêşMMMÚâ+·YxºœO\0\0\0ôtˆZ[XXøT2™L…¨=÷ÜóóÅÅÅÔÔÔ4ö×÷\\ZZškï÷QŸÏ7Únk,H…Ã‚\0 @@ÿQõ|ğÃnˆ\ZŸH$Æ[ˆªê¯!jìØ±‹,<a‹kı~ÿá±Xl3Ÿ\"\0\0(\0è5«W¯ê|\"…¨C\ZKÆŒ³bÍš5ÛúÓû‡Ã×ØÍÜ÷ŒD\"¯ğé\0@€€^§îZhŠù|¾‰V³€¢ú–êñşğşÊÊÊô¾~e‹öÖüaO+ùÔ\0\0 @@ŸÑ§C=4ÖØØ¨î\n­L.((x´®®î¾|_¥¥¥£À\n[ÌµrU4\Z½•O\0\0\0ô¹ššš†‘#G.ÈÍÍıŒİÕw¿wĞA=c!ê¥>\nO¹4ãŞ(+KâñøŒl˜)\0\0\0\n(µµµKGº!jJAAÁ¢şÑ›ï£¤¤$gøğáUzVM$\'>øàƒ\r|B\0\0 \0 ß±µBÙµÅ#,D•½c­ê­¿?~üø›ífš•x øF4\ZİÄ§\0\0\n\0úsˆª¶àôš-oåX*=ÖÓ7\nıĞn~j¥1™L‰DÖği\0\0@€€lQÏ¼èóù¢&jhŸy´§ÎE²ğTb7¬äØß<=\ZşO\0\0\0dºººÚ¢¢¢çlq²•¯äææ6fÌ˜ûÖ¬YóAwşÒÒÒ<¿ßÿ¸-O&“[xúµ\0\0\n\0²NmmíºÂÂÂ§œôp¾±@@!jiw…(wÆ½‡mq´•‡^ıufÜ\0 üT\0ô/Ñh´Úï÷i‹ñd29ÑÏ3ºNSw¼¶½VÄnŠ­¬\rƒáêêêFj\0€|—R\0Ğÿ¬^½:^XXx¯-N²2ÚÕ	cÆŒy`Íš5ouö5C¡Ğ\rvSae}\"‘8ú{îÙ@M\0@€€¡¶¶v³…¦˜…§»{İ–<UWW·¾áIÁégV4\\ïÈÅ‹×RÃ\0\0 \0`@Y³fÍ¶âââªÆÆF]èö ŸÏ7ÍBÔ_:rÁİp8¬ßYâÎ¸·œš\0€\0\0RMMMÃÈ‘#äææ~Æîb!è;¢ş©Yûvõ»¡Ph”İ<`eo+s,<]G\0@€€M3åÕÖÖ.Õõ¡ìîW,DMŞÕw5ãßïÿ½“qoe0<ÅÂ“F\0\0@€€ÁÁÓ\nN	[<ÂJ‰-çØc·ôÜ¢¢¢˜­¯é×ìö›.ÜJ\r\0@€€Á¢ş`áè5[<V!ª  `Ä>ûìóûÌë9•——Ÿe¡éÜd2¹¹©©é±Xl=5\0\0\n\0kˆz¾°°ğo¶x‚¥	¹¹¹‡ß«!zeeeı~ÿ|ûYıì¤Å‹¯¤Æ\0\0 @À`Qk,D=e‹Ç[›H$Æ»¡ê~N¹v;+\ZŞAM\0Ğ}|T\0d·p8œŸL&uT^ÆÃšqoµ\0@÷òS\0İ\"‘ÈÚD\"ñU[\\ç>¤÷.£f\0\0è~€¢¢¢bDCCÃY@ rÑ¢EL\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0øÿíÁ!\0\0\0€ ÿ¯½a\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0–+ÚWrgƒ\0\0\0\0IEND®B`‚',NULL),('5005',1,'qingjia.bpmn20.xml','5004','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"qingjia\" name=\"è¯·å‡ç”³è¯·\" isExecutable=\"true\">\n    <startEvent id=\"sid-DAA87663-376D-41C0-9BCC-AE379CD4A742\"></startEvent>\n    <userTask id=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\" name=\"æäº¤è¯·å‡ç”³è¯·\" activiti:assignee=\"${user}\"></userTask>\n    <sequenceFlow id=\"sid-07465691-AD09-4C0D-B7BF-C00E18ADB7DE\" sourceRef=\"sid-DAA87663-376D-41C0-9BCC-AE379CD4A742\" targetRef=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"></sequenceFlow>\n    <userTask id=\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\" name=\"éƒ¨é—¨é¢†å¯¼å®¡æ ¸\" activiti:candidateGroups=\"éƒ¨é—¨ç»ç†\"></userTask>\n    <sequenceFlow id=\"sid-7CDD1FDD-F589-4486-B638-0DF0C64C7474\" sourceRef=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\" targetRef=\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-2D7D22FB-01D1-47B6-8E30-41186EC7A56F\" sourceRef=\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\" targetRef=\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\"></sequenceFlow>\n    <userTask id=\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\" name=\"æ€»ç»ç†å®¡æ ¸\" activiti:candidateGroups=\"æ€»ç»ç†\"></userTask>\n    <exclusiveGateway id=\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-03DC5048-49A3-419B-AF81-7CE996E1B2E8\" sourceRef=\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\" targetRef=\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\"></sequenceFlow>\n    <endEvent id=\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\"></endEvent>\n    <sequenceFlow id=\"sid-B0B2603F-8019-4E40-8D0D-2E6B9D27C7F2\" name=\"ä¸åŒæ„\" sourceRef=\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\" targetRef=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${agree==0}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-6BBA3957-5CD9-4E22-9B28-839F10C9370C\" name=\"åŒæ„\" sourceRef=\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\" targetRef=\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\"></sequenceFlow>\n    <sequenceFlow id=\"sid-A65821C6-6A2F-4F60-96B5-B50D4C76FA8E\" name=\"åŒæ„\" sourceRef=\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\" targetRef=\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${agree==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-28FEE811-41C3-4D04-9A83-E7CDE2E436AE\" name=\"ä¸åŒæ„\" sourceRef=\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\" targetRef=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${agree==0}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_qingjia\">\n    <bpmndi:BPMNPlane bpmnElement=\"qingjia\" id=\"BPMNPlane_qingjia\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-DAA87663-376D-41C0-9BCC-AE379CD4A742\" id=\"BPMNShape_sid-DAA87663-376D-41C0-9BCC-AE379CD4A742\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"105.0\" y=\"183.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\" id=\"BPMNShape_sid-8334C397-5232-4177-8094-8DE1FEF0431D\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"180.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\" id=\"BPMNShape_sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"315.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\" id=\"BPMNShape_sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"460.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\" id=\"BPMNShape_sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"540.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\" id=\"BPMNShape_sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"685.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\" id=\"BPMNShape_sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"770.0\" y=\"184.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-6BBA3957-5CD9-4E22-9B28-839F10C9370C\" id=\"BPMNEdge_sid-6BBA3957-5CD9-4E22-9B28-839F10C9370C\">\n        <omgdi:waypoint x=\"499.58715596330273\" y=\"198.41284403669724\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0\" y=\"198.2283105022831\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-28FEE811-41C3-4D04-9A83-E7CDE2E436AE\" id=\"BPMNEdge_sid-28FEE811-41C3-4D04-9A83-E7CDE2E436AE\">\n        <omgdi:waypoint x=\"693.4495327102803\" y=\"189.55046728971962\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"513.625\" y=\"56.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"280.0\" y=\"172.9669457910974\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-03DC5048-49A3-419B-AF81-7CE996E1B2E8\" id=\"BPMNEdge_sid-03DC5048-49A3-419B-AF81-7CE996E1B2E8\">\n        <omgdi:waypoint x=\"640.0\" y=\"198.2164502164502\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"685.4130434782609\" y=\"198.41304347826087\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A65821C6-6A2F-4F60-96B5-B50D4C76FA8E\" id=\"BPMNEdge_sid-A65821C6-6A2F-4F60-96B5-B50D4C76FA8E\">\n        <omgdi:waypoint x=\"724.6217948717949\" y=\"198.37820512820514\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"770.0002839785394\" y=\"198.0891701657418\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-07465691-AD09-4C0D-B7BF-C00E18ADB7DE\" id=\"BPMNEdge_sid-07465691-AD09-4C0D-B7BF-C00E18ADB7DE\">\n        <omgdi:waypoint x=\"135.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"180.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-B0B2603F-8019-4E40-8D0D-2E6B9D27C7F2\" id=\"BPMNEdge_sid-B0B2603F-8019-4E40-8D0D-2E6B9D27C7F2\">\n        <omgdi:waypoint x=\"471.4571655208884\" y=\"209.45716552088842\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"373.625\" y=\"328.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"274.1923076923077\" y=\"238.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7CDD1FDD-F589-4486-B638-0DF0C64C7474\" id=\"BPMNEdge_sid-7CDD1FDD-F589-4486-B638-0DF0C64C7474\">\n        <omgdi:waypoint x=\"280.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"315.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2D7D22FB-01D1-47B6-8E30-41186EC7A56F\" id=\"BPMNEdge_sid-2D7D22FB-01D1-47B6-8E30-41186EC7A56F\">\n        <omgdi:waypoint x=\"415.0\" y=\"198.2164502164502\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"460.4130434782609\" y=\"198.41304347826087\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('5006',1,'qingjia.qingjia.png','5004','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0(\0\0R\0\0\0Òû\0\0)5IDATxÚíİ	˜]ey8ğ	Adq‰X·b±@]Zjm¥EmlHËD”œ{rÎÌ\r—€	*kª¨Mª ˆ•´¶V­,¢(mÁ*\"’˜€ìğ—‚‚\"”EÈŠş©R‰ôöıÒ;v²Ìz×ßïyŞçNf’ÉÌ{¾í½gùúú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­7¿ùÍÏ’\0\0 ¥²,{nçÿ0wîÜÇ#”\0\0 éŠ¢Ø-â£Q”ü8\n”¥ñúÚx½5^¿000ğ4\0\0¦\\µZİ5\n‘¿M…I(788øC_«Õj;Æçÿ)âû¯’-\0\0`Ê\n“(:>’\n“ˆ¿^˜Œ…Ë!ñwÖG!³(ş8Mö\0\0€I‘eÙs¢à8½q)×Çâõy£ùweYşfüİëâß\\ÿşÙ2	\0\0Œ[**¢¸øpãŒÉ?D¡òü±~™3gnßçCñïï˜)«\0\0À˜“(&N‹øQÄ?§0ÙÌ÷|c|¯Õñú7ñı¦Ë2\0\0°UóæÍ{VãlÇò<ÿøÀÀÀ&¹ğÙ-¾÷òˆ«&û{\0\0]T˜DÑğÁÆ“OD¼p\nÿ»iñıÿ*b]ÄlÙ\0\06É²ì™Q$œÚ8còÉøó‹šõÇÿ·oü¿÷¤§Íš5ëÉ\0\0ô¨²,ŸQÅ)3&Ÿjfa2\\­V›ÿÿ7ÇÏôÛ\0\0ôXaÅÀû…É?§Ç\0·ÃÏ?Ë‘\"ª\0\0t¹t¦\"==«q)×§ãu÷vû^?×÷âç<·Z­îâ¨\0@&±è_ñ`Ä™Y–½¸ŞşşşÓÏEÊeYîã\0@ˆBäé±Ğ_Ü(LÎj÷Âd¤<Ïç¦K¾âõ(G\0\0:¸0‰Eı_§Â¤(Š³Ë²ü­Nı]â÷Ø#~#¾œ6æè\0@‡xZ,äß×¸Ñüœ´¸ï†ßkÁ‚OŠBë£ñ;İ¯¯q¤\0 ı“÷6\n“ÏdYö’nü=Ë²ü‹øıÖ¦ßuÉ’%Û9ò\0\0ĞFfÏıÔ<ÏßÓ(L>Û{ˆÄïù¼¢(.×ËC+\0\0€6(Lb~r£0ù\\){öÒïŸÎ4.e[¿û,-\0\0Z Ë²§EñîX˜¯×óz­0)òğÚt_JÄGÒ}*Z\0\04©0‰Eø_¥Â$âóñç½dåW¹yfää¢ˆovòÓÊ\0\0 í¥Ô‹¢8)ßë\"¾ï-+›¹9ºqÉ[.\0\00É…Iç\'¦Â$ŞçÇÇ¿#+ÛùúıˆU‘¯OgY¶“Œ\0\0Àô÷÷ïìw6Î˜üK,²_*+cÓ¸î³QØİ…ÊËe\0\0ÆQ˜Ä‚ú„Æÿ\Z¿LV&&Š“yé’¯ÈåBÙ\0\0€QH—!ÅBzQ*Lb!ıoŞñŸô\"eÏˆo¥ÜF®Ÿ.#\0\0°…Â$Š’ãÓ>¼BV¦Æ¬Y³EÊÇ\"ÏwG¼ZF\0\0 ¡V«íXÅqÂä‹ññïÊJsD‘ò¦ÆCNŠ?N“\0\0zº0‰ò±±@^ñï\n“ÖˆÜ¿0âê8ËªÕê®2\0@Ï&± >&&±(şRÄïÉJkeY6=ÇÒ1©T*o\0\0º^ºï¡±qà_.ËrYi/Qœ¼¾q|>8sæÌíe\0€®,LbÁûˆû#.JÊJûÊ²ì9qŒ¾qm|ü\"\0 k\n“¢(Ş\n“<Ï¿ñJYéÓ\Z{Ğ¬ãöé\0\0 ceY¶C,jß‹ÛF\\\\–åÈJgŠãø‡q¿¯O÷É\0\0U˜ÄböÈFaòÕˆWÉJçxZQçÇñ¼%^÷–\0\0ÚÚ‚×…±€½/ÏóKÒ»î²Ò}âÇxCßÃd\0€¶,LbÁº âŞtSuY–$+İ-Ë²—Æ±şNÄçgÏıT\0 ]\n“·FÜ“6÷‹×WËJO);Åqÿd÷»Ü_\0@K“Æe>÷D,Eê¾²Ò»¢\rÌIOùŠ6qœl\0\0Ğ4iÃ¾XˆqwÄ×cAúÇ²B£HÙ=âúô´¶hÏ–\0\0¦º0™ñƒX|®ˆ×?‘¶ĞNNKûİD;ùS\0`*œµ´ÿEÄÊJ¥²Ÿ¬°-yïíeMÄ’,Ë¦Ë\0\0’•EQÚ(L.‹x­¬0Æ6ôÜt¶-âÊøøù2\0À¸\n“<Ïç¥§2ÅÂòòJ¥ò:Ya¦E;zw´§uñÚ/\0\0Œº0‰Ed5âÎˆo¸€É”¦ø¯mm\0`‹…I,\Zcñ¸*âŠˆ™²ÂT¨Õj3¢}}1â¦hw/‘\0\0~eÉ’%Ûåy>ÅÉéJ¥òzY¡¢İ½-Š”\r©ıÉ\0€Âd»X–©0‰×«âõÏd…f‹v÷»Ñşn8§Z­î\"#\0\0=X˜Ä¢°h,\n¯‰øsY¡•úûûw&yv*–ó<ÿ=\0è‘Â$QÌı^Äµ•Jå\r²B;IgôÒ%_ï\r\0€..LbÁ—Eq[¼^¯o”ÚUÑ{D;ıˆ/Ëò2\0Ğ=¦Åb/‹…Şw#®O;zK	 =~8Úì÷V*•ıd\0 Ã“XØÍ‰øNÄ\reY %t¢h¿±6âät&PF\0\0:¬0)Šâ<Ïoİÿ‹×YRB)ÏK†F¬Ì²ì¹2\0Ğ…I#o‰Ü-ß,Ëò/¤„nÒxÀÃ_Gû^ãŒ \0@&±`{sÄ·#nL—ÃH	İ¬R©¼.Úù‹¢8}Á‚O’\0€6)LbvpçßJO;Š×ƒ¤„^1oŞ¼gE›ÿJºŒ1Ë²Ë\0@ÅÂìM±0»9â¦(Rúe„îÇF?Xı \"\0\0M±Ù©(i\'³e6)¯ŒşpgÄ§²,ÛIF\0\0¦X:KÒ¸Œë[éì‰ŒÀ¯‹Âä)ÑG>—öû‰şò2\0˜é¾’ÆïßN÷›Ä§¦É\nlµ˜?4úË†ˆ·Ê\0À$IN\nn<2øÍ\n½,Ëöj<Õî_ãã§Ë\0À8¥MÓS‰Ra’ö4Q˜ÀøÌš5ëÉÑş1âQğÿ‘Œ\0\0ŒAQÆBê†Æîïs&0i}ëàèSë¢o¨_\0lCÚ\r;O×G|\'P™L¾,Ë^}ìšˆK«Õê®2\00B#ûÇbéºÆ‡*\n˜ò\"ezôµS¢Ï=ñç2\0Ğ·ér“7ÆâèÚx½-^ó%K–l\'+Ğ<©8IEJ*VRÑ\"#\0@OªT*oh\\bò½<Ïç*L u¢0yNºÜ+õÉtù—Œ\0\0=£ñníÕ·AamcZºq>İ@ßØc\0 {Å‚çÏbásU¼Ş¯¥ÂÚSzqzqz$qz4±Œ\0\0]¥R©¼>Š’+c±³*Ïó…	´¿´™cÚÔ1mî˜6y”\0 ãEQò§±¸¹\"&ññ ›o¡óDÿ}kÄ†èÃ‡Ê\0Ğ‘*•ÊëbAóˆ;#ª\nèlQœ¼,=ş;âsÑŸŸ\"#\0@GˆÅËkc!sy¼Ş•ŞmU˜@÷ˆş¼SôíO¥7ò<¥Œ\0\0m+Š‘×Ä¢å²ˆïGÔ&ĞÕı½ı|})ÇÊ\0ĞV*•Ê~±PY™ö‹•ÃfÎœ¹½¬@÷Ë²ìÅÑïoˆ~ÿ•yóæ=KF\0€–Š…ÉŸE±\"^ï˜¯0Ş³`Á‚\'Å8pzŒ?L÷É\0Ğt±ùãXŒ,o&‡+L€²,ˆñ`MÄb\0š\"Ïó}#–Åä(RHïœÊ\n0$Ë²ç6.÷¼\">~¾Œ\0\0S\"¯¸4âŞ´‚ÂØ’tö$Æ‰“#ÖFü¥Œ\0\0“¦,Ë?ŠÆ×\Z…É…	0ZéµÆØqF–e;È\00nyÿaÄ%±°¸¯(Š…Àx”eùŒGş=â?by‰Œ\0\0c‹ˆWE|5=\'âH…	0IcË;\"6D”²\0lSY–‡‹SaRÅÛ&ÀdËóü÷bŒ¹=Æ˜³ûûûw–\0`s†W¦\rÖbÑpz‡sÖ¬YO–`ªT«Õ]b¬9§Q¨ü®Œ\0\0›Äâà÷#.Šx \n”£&@3Å¸3.ùŠ×·É\0ô°²,÷‰EÁ—SaRÅÑ\n UÒMó1İñÅZ­6CF\0 ‡4®ıNOÒYqL,v” \rŠ”b|ZÚØüõe\0º\\ºÆ;½;™\n“X«0ÚQŒOÅ8µ.Æ¬wÇ§É\0t™WÄ„aLøkbÂ?.Ë²dhg1N=?Æ«+#VÄÇÏ•\0èQ”¼<Š’Raq¼Âè°\"ezŒ]KÒãÙş2\0ª(Š—Eü[LêkcR_¤0:|LûÓÆ†±§Íœ9s{€*Lbÿ×T˜ÄÇ\'ØüèóæÍ{VcÙë#v—\0hcY–½4&ìI7•æy~¢ÂèVé>ºëÖGÌ‘\r\0h3QŒüNLÖç7vsRÚ•YV€nW–åÄ¸wWŒŸt	+\0´(FöÉùwÿJaôšÙ³g?5Æ¿ÏG|\'E–\0h˜„÷jLÈëó<Wüù)²ô²‹1qCQGÈ\04oŞ3&àÏ¥Â$m\\¦0ø?³Ê·¤{ñ&#\00EÊ²üí˜p?›ŞŒ89]Ò +\0OT«ÕvÌóüã1Vş ^ÿPF\0`eYö’¢(ÎM…IL´ïQ˜\0ŒNŒ™oiœm>!ş8MF\0`‚…IL¬Ÿiœ1y¯K\0Æ5–¾(ÆĞk#¾?GF\0Æ¡^¯o÷İw_pÃ\r7üâ²Ë.«¯X±B49V®\\Y¿êª«~1ØìãŸçù1‘ñ`Äû†&ÚFo·\rŒÏb|}0í8ãé#¨T*¯×’Æ(M~W_}u}Ã†\rõG}T´(|ğÁú•W^ù“˜›²XY–¿UÅÙ©0‰\"å¯³,{º¶¡m`|“×£8yCŒ±«#>cìt-\Z`”Ò;s&¿¶™]±bÅíSy¼c’|qL–g5Î˜,Ù\\a¢môfÛÀø,&¿V«Õ]ó<_ãíÕ/ÔªF!]6`òiŸˆ	ğ±©8Î11îqf*LŠ¢ø›Z­6CÛĞ60>‹¦ôÁi1îãïº(VŞ¤elCºÆÖÄÓV`}²“˜?¯?Šxÿh\nm£7ÚÆgÑÜ>cğ«#î1ùc³fÍz²0Á	ğ¿şsmıîÏ©ß¶òı›\"}œ>gÒjÏEhY–¿á?7\n“ÄŸŸ¡mhŸEkû`º¬¶(Š‹\"å[i#\\­`œàÃ­®wùûê·\\râ¯Eú\\úš‰kê\'ÀôèßÑìâq“Ş\'Sa“à)ñçgjGŸE{õÁ£4ö›š§¥Œc¼ÿ¶¯<aòŠn»ØÄ5Å`Lbs\"ê©HÙÊd÷ÂˆO4Î˜œ:‘ÂDÛP `|Sß£8yyQ·Å˜ıÙÑ¼`·ãÃ[œ\0Ó×L\\S76nnOOÜªÇdöĞÈ{H\Z…É?5\n“Î›7ïYÚ†ÅÆg}°3ú`&;5î\\ñûZ=À(\'Àï®X²Å	0}ÍÄ55`#;Æ„ucãìI½Q¤•¾600ğ‚øøãK¹>4™…‰¶¡@Áø,šÛc,ÏÓ%_Çhù€	ĞØ¶`ã’­úˆØIz·íÇ§ÅÇÏÖ6,0>ëƒßÓº1®3â¢É¸L «\'ÀôT˜-M€ék&®ÉŸ\0ó<½™6÷±Í().‹Éë9Ú†ÅÆg}°»úà‚cüG\"î‹x­^\0˜\0·w]û[œ\0Ó×L\\“;¦Ë·†î;ÙBÜ3sæÌíµ\r‹#ŒÏú`wöÁ<ÏgÅX¿&â}K–,ÙNo\0L€#âÇ«o­÷ë‹Ÿxù@|.}ÍÄ5y±|ùòT€\\¿•âdSEq„¶aq„ñYìŞ>888øéŒyŒ÷—ÇëóôÀ8\"îùÏ>aLŸ3iMnœ|òÉõm\'Í:‹¢m(P0>‹ÖöÁtö$=b>bmY–¡W\0&À¡øùÏëw]÷‰\'^>ŸK_3qMN<üğÃõÃ?<gE±›¶!(Æg}PLbNxMº/%^?šîSÑ;€\0ÓNÄw^û[¼Æ9}ÍnÅ“—^zi]Û\nôA}p¤ôd¯<Ï¿”?¯{è!@ïM€?ÿy}í]—×¿³ìä-N~C‘şNú»Ş­ë®E¨¶¡m Šöëƒi?¬ôÈùô´G½è™	p[ïÊy·®wmCÛ@Ô[¯,Ë}Š¢¸#\n•3ûûûwÖ[€®Ÿ\0Gó®ÜÖŞ­3‘uo¢mh-6Ãø¬êƒÿ«Z­îÊg\"¾700ğ\n}èê	p¼“ßP˜Èº·@Ñ6´:0¢Şx5>ëƒú`C(ÕtÉWÄ‘ú Ğµ 0jÚF›yCÄCK¯Ÿ…>øÊ²üí(PnÎóüÂZ­6CL€B\"(S_œ4ì]Ü{a¤êƒc‘eÙQ¤ü}Ú\'+\n•}õAÀ((B2õÅÉ¶>o|=ß£@™±.Š”wÅ§éƒ€	P(P„er¸ĞĞ×4>}ğ×\r¼ Š”«\"¾>{¾BÓÕëõo½õÖ…ç{î•§vÚO9æ˜ÇjµZÚÅ»>88øË·½ím¾ç=ï¹ûÃşğy{™\0…EhM/N¶µğéêwqõA}p\"²,›ÅÉßÄºfu¼¾QlnØØ¯æ‚ˆ»\"NëËˆKğÒ†›ïLO¶øUaòÅ/~ñ³øÀ;î¸ãêŸúÔ§ê7ÜpC}õêÕõ7Ö“ôºaÃ†úM7İT¦~ì±Çşòøã¿wÁ‚G˜\0…EXM©7Œñ]Ù±ş}ã³è©>á™÷G‘ò¡™3gn¯NÈñÁ+\"m$£‰oÄß´BïaQˆÌ?å”S~~â‰\'n*>üñúh}ûÛß®¿ë]ïz|áÂ…·gYö P ‹£)+N\ZÇ¿{¸ÛHú >8‰çgçy~I,†¯+Ëò7õÁI/w/CQ²¹¸º›Ö—Œî¬Éö]tÑåGydıâ‹/Sa2Ò²eËêóçÏ¤[Î¦˜\0M€Ú†¶ÑáÅÉdı{ã³èö>8-Š”E±^‹éCôÁÉ9Eßÿ^lÔ?ô¡Õ/¿üòúøÃúOúÓMkÈŸıìg›®Ø¹öÚkëK—.­W«Õ‘EÊÃÎ¦ôPqrÅW|óè£®ßyçõÉpï½÷Ö£Øyäˆ#x‡	P(P„ÅÑ„mëfÜf}PtmŒEğ«\"¾ñ‰Z­¶£>8¡âä ((^˜œwŞy›n‡zhÓßOÿnx¡ßóˆ>º[:s’Š“Ñ6–ÑJßoÁ‚_éš\0M€Ú†¶Ñ&ÅÉd]\ZÒ5ïâêƒúàT™={öSc!ü…X`ßºÇ{¼Uß™“áÅÉ¢E‹6-ôïÒí#ŠgRºUºç$]Ö5YgN6w&eŞ¼yE#ÚÛ((ÂâhÜ™¡…QÚ³áĞ¾±ïİ0òßuÅM»ú >8Õ^÷º×ım+¿Øyçß¤é,ÔîÃ/ëZ¼xñ¯.ã\Z¯tù×©§:òr¯½ûè.éi]ïÿûM÷œL¥K.¹ä‘ëM€B\",&ô.kZØœ•†ïÆëhH[úw¿@ÒõÁfôÁvÚé}pl¢8Y9üÌÉD‹“áEÊˆ3)W[Ñw™/}éKŸOù¿ÿû¿ëSííoûºN=g4jÚF\'}w_ëÃb4¤á£¡˜7ìë}=¼>¨êƒí\'=Jxø=\'ã½¬kk—{\r¿\'Å¥^]vö$ís’%Ü·ÜrË£zÅhÔ6´&ÛÒ‚es­-6÷÷ÏÜÌßïØëáõA}PlËeÅPñnpŸ\nçŸ¾³(İ(íŸnŒŸÈã„ÇjşüùëÒ5‰íÔ\"^c4jÚF«ÚĞVFaÁ³¹ÒhF#H\ZŸ…>¨7§iç÷¡ãÓYÿøÇS²¦LO÷\Zñâİûè|ç{î•gyf½™–.]úíh@ïl—;5¸\"Ïó}M€&@mCÛhv\Zçe[¤±.Œ†ÿÿ¶Ã»¸ú >¨¶ŸÑä4>ÔĞß;ıôÓ§z]9¼@ygï´ÓNûÉ\r7ÜĞÔåºë®»7\ZĞÅíÖÑ†Å¥›{gÀØ»Š¶¡mLuÚÌÂh´“--¶çÂhä»ÇŸ…>Ø»}p¼9Ï]0ôõ+®¸bJ×•i3Ça?ËÅ}t¾c9æ±µk×6µ@Y·nİ†h@÷·qGûÕ;Ã;œ	P¢mhSÕ†Æ¹0ÚÚiÕFıyôA}Pì’>8ŞœÆŸï\Zúüdß?RÚq~ØÏq¯V«Õ7nÜØÔ%ıÑ€6¶{GşÎ@:…iT hÚÆTµ¡Ix·ts¤‰,ŒF.4>}°÷úàxs\ZñÈĞŸ\'ëÑÂ[{äğ°ÿ»mÖ—L°‘µÂ(\ZwÛ…	°½BÛĞ6FoyË[†1K\'8¤o·™wmW5>?KÏBÔÇÍ^WZİwC=ô—Í>ƒòÈ#¬ë3(7æy~ĞÌ™3·w	3(Ú†¶1•m¨oÛOšÈ»·cÙH®SÎ èƒú >ØÆ9M»»;ƒÂ¸}ôÑ6û”5kÖ¬jó{PFZ}­˜\0·0ÈuÌ×»´@Ñ6´)iCÃ\"÷MÍõïãY µã=(mÑ;­O*PôÁfçÔ=(LÈûŞ÷¾»šı¯åË—­MŸâu}ÚõtƒVK¡[û\\»½Ë\nmCÛ˜Ò64wK·ôÓÍ=Ah,¤v{ŠW[õÁNë“\n}°Ù9õ/&ä#ùÈ™ÍŞeñâÅ—´Ù>([{7Å\"´·mCÛhJ\Zç»¦ÛÚca¬»]yU_ûìƒÒ–}P¢öJoNíƒÂ„¼÷½ïİã¨£úEw’ßX–å:q§O‹P‹PmCÛh¢m½{:Ú\ràÆº@\ZºÄå`ã³EÔÇ+í$k½Çš±“üààà/í$ß…-Zôı›nº©Y—wçêNÌ“E¨E¨¶¡m4Ù–ŞÅëîÔ£] \rıŸ(ú >8Qi_”¡Âá¼óÎ›’uåùçŸ?üìÉÕ}tÃ?<;á„kÂY”‡Ê²¼9\Zì Å\"T¢mXú]Ü‘—zÚ7ö=6·@š7†w‹Ï\n}PkrğPñÎ¢LöÍòéûÅºò—Ã6Šì£»,\\¸ğÖ‹/¾xJ«“t¿KªnÇx¨Å\"T¢môòâhøÂåÀÍ,tÆ²Ü–ş]Û=ÆT¢@Ñ»C¬û¾1T@,Z´hÒ9œ-|Â	\'<>üìI§®/ÙzÚ}şüùÜyçSRœÜzë­Åÿ±6ªÛ½M€%«@Ñ6,Ælä¥&Ó\Zï¾õ±¥#ÿİD÷~P èsú >¸ÕõeÄƒC…ÄâÅ‹\'\\¤¤âäÔSO~ßÉÃ¼¾d.\\ø³\r6LjqòÀ\\S–å}~êÍF`6Ó6´vX í´ÓN‡Lâ»Âmû¤ }Pì€\"E…<Ïçİ0?t&e¼—{¥7âÌ‰K»zÁÀÀÀü<<YgRÒ™“TœDã|—	P(P„ÅÑÄ¼ô¥/]8{öì_LB‘Ò–Àéƒú`)]ÕGq&¥6¼HI÷¤¤çÓS¸Fû´®tCüğ{NRtÃú’1Tºƒƒƒ?ùò—¿ü_¸qş¡~ô£ç¤ËºR£4\nŠ°8š˜¢(v‹ñôŞ}÷İ÷”¾‰]Òu—”èƒú`“¨o}ñĞğ#*iŸ”´™c:;2tùWºŒ+íŸ6aüØÇ>V?ôĞC1b÷ú‡»e}ÉØ*İİ£J½láÂ…ën¾ùæGÆ²ÏÉ×¿şõó£À¹1İ°ÔM×š\0M€Ú†¶Ñ*Y–ícêµ‹G,pÆúîkWŞŒ«êƒ-,RôÁ1®/‡?~xœqµ{N*sR¡R«Õ6œvÚi·]sÍ5÷EE»vãÆ›ª‘Gydİš5kV­\\¹ò«K–,¹4*á»SÃIUm·=MÁhÔ6´=9;ÆÕú~ı†Ü±^\"Òµ—”èƒú`‹èƒX_6\n•ÇÆR˜tãú’	H;‚FC:.M÷Dll4–ôzÄÅïìæ<M€&@mCÛhÑD~|çßêïïßyWõuÁîÔú >ØÁEJW÷AëK0\nŠè‘ÅQY–ÄÄ¼:Ë²må¯ØXø¸•¯?ØÍ#}Pl±ïƒ€	P(PD,¢(Ù+Š“õ•Je¿	¼‹Û—”èƒú`ŸIqY`4jÚFç/jµÚŒ(NVåy~ØH=³0ÒõÁ6-R\'€	Ğ¨mˆÎ_eY6=Š“ågL`´´—Fú >Ø†EJOõAÀ((¢‹Gy/X–\n•q~‹t½{½¯‡cªêƒm¦çú `\nÑ¥‹£¹sçÎ/Šât‰×¿Õã³Ğ[j†\0&@ ¶!:zq”n†O7Åçy¾§WÔ0š\0µ\rm£eÒc„£8YÅÉşF[}PÀhÔ6´–©V«»¤ÓfeFZ}PÀhÔ6´VšÅÉ…sçÎ=Ë(«êƒ\0˜\0M€Ú†¶ÑRQ˜,‰¸&Ë²Œ²ú >€	Ğ¨mh­,NæDÜ[­Vw5Âêƒú \0&@ ¶¡m´LY–ûDq²!½\Z]õA}\0 	PÛĞ6Z¦(ŠİÒ™“x=ÄÈªêƒ\0˜\0M€Ú†¶Ñ2é^“(N®XlTÕõA\0L€&@mCÛhõÙ“³£8¹ >œfTÕõA\0L€&@mCÛh™(LOûô÷÷ïlDÕõA\0L€&@mCÛh™²,ˆeuÚ1Şhªêƒ\0˜\0M€Ú†¶Ñ2Q”ìÅÉúJ¥²Ÿ‘TÔ0š\0µ\rm£ejµÚŒ(NVåy~˜QTÔ0š\0µ\rm£•gN¦Gq²<â#¨>¨0é.»ì2OûÄÆ˜\0Ó6D;·<Ï—F,K…ŠTÔ˜tW]uÕÚ\r6˜|Ú V¯^ı/1Ş®mˆvmsçÎ_Åé/£§>¨0%.¿üò7]qÅÿ¹~ıúGLBÍ‹Ÿşô§¿öÎ\\šüV®\\y_ÄmC´cÛH7Ã§›âó<ßÓÈ©êƒ\0L©tZ±bÅéôuºÆVLm\\zé¥õjµZ?é¤“êguV}Ù²e)ï··ãä§m´<Ú¢m¤ÇGq²&Š“ı˜ú >\0](z_½#.-Šâ¸øüËe‡vÅô.i#ÆÔ>e\0 KÅbïÙ±èûù°\"exÜ_ût¼Îq­?-6-Úâ…ÑÏ’\n\0€.‹¾s¶P Åc±8œ+S´°.‰¸&Ë²d\0 û3·V Dqr”,ÑÂö9\'âŞjµº«l\0\0ôÎ\"ğ-(ï”Z¥,Ë}¢\rnH¯²\0Ğ[Ê{7Sœ¬É²ì™²C+E±[:s¯‡È\0@xAº×dXqò¹<Ïÿ6‡·¥¯ÉÍ”î5‰6xmÄbÙ\0\0èQQ|©Qœ\\\ZÄ§4>·¨ñ.öŞ2D³D{;;Úİñá4Ù\0\0èİ%Ö„s¯ùHáX,Æç×F¼Z–˜jÑÎOûô÷÷ï,\0\0=læÌ™Ûoi¿“X0ÎJ7+§W™bª”ey@´³ÕiÇxÙ\0\0`«Ò”t&%Q‘\r&[%{EûZ_©Tö“\r\0\0F%İ‹’îII÷¦È“%¹‹vµ*ÚÕa²\0À˜¤§z¥§{EœŞç&f&(Ë²éQœ,8C6\0\0—²,ŸÑxìgÒ½+2Âxåy¾4bY*Td\0€qKOYŠå«)<q‰ñˆ¶3¿(Š;¶ôp\0\0“tö$EIgSì:ÏX¤›áÓMñyï)\0\0L¦ié~»Î3Zé1ÂQœ¬‰âdÙ\0\0`JØuÑ¨V«»¤£\'\0\0L)»Î³\rÓ¢8¹0ÚÇYR\0@SØu-‰v±$âš,Ëv\r\0\0š¹µë<#ÛÄœt	`µZİU6\0\0h:»Î3¤,Ë}ÒYµô*\0\0´Œ]ç‰c¿[ãá	‡È\0\0-g×ùŞ•î5iûÅ²\0@Û°ë|o*Šâì8æô9{\0@»±ë|o‰ã||ÚïDA\n\0@;³ë|(Ëò€(PV§ãe\0€¶g×ùîEÉ^ql×W*•ıd\0€a×ùîS«ÕfÄñ\\èa²\0@Ç±ë|÷È²lzËågÈ\0\0Ë®ó]Sl.X–\nÙ\0\0 £Ùu¾ã‹ÌùqïH—xÉ\0\0]Á®ó)İŸnŠârOÙ\0\0 «Øu¾³¤ÇÇ±ZÅÉş²\0@W²ë|g¨V«»¤‹¢8N6\0\0èjvo{Ó¢8¹0ÏYR\0@Ï,‚í:ß¢0YqM;È\0\0=Å®ómWœÌIÇ£Z­î*\0\0ô$»Î·‡²,÷Ik¦WÙ\0\0 §Ùu¾åEân3Y‡È\0\0ôÙu¾UÒ½&Ç?/–\r\0\0Æ®ó-ÉùÙ‘óúl 	\0\0Od×ùæ‰Âäø´ß‰=i\0\0`+ì:ß”ù]vŒ—\r\0\0Ø»ÎO(JöŠ¼®¯T*ûÉ\0\0Œ’]ç\'_­V›ù\\•çùa²\0\0cg×ùIEŞô(N–Gœ!\0\00vŸ”.X–\nÙ\0\0€	²ëüøEÎæGşîH—xÉ\0\0L»Î]º>İ9ÛS6\0\0`’Ùu~ôÒc„#Wk¢8Ù_6\0\0`ŠØu~ÛªÕê.i#ÆÈÕq²\0\0SÌ®ó[5-Š“£ˆ;K*\0\0 Iì:¿y‘%×dY¶ƒl\0\0@Ùuş	ÅÉœtù[µZİUë\0\0€°ëüÿ*ËrŸô”³ôªU\0\0@kõô®óñ{ïÖØÌòM\0\0ÚD/î:Ÿî5iÜ‹³X\0\0€6Ók»ÎÇï{vü®ôyš\0\0´§^Ùu>~ÇãÓ~\'\0\0\0í¿xïê]çË²< ~¿ÕiÇxG\0\0:@·î:EÉ^ñ{­¯T*û9Ê\0\0ĞAºm×ùZ­6#Š“UQtæè\0@ê–]ç³,›¿Ãòˆ3U\0\0è`İ°ë|çK#–¥BÅ\0€×É»ÎÇÏ<¿(Š;Ò%^$\0\0tÛu>İŸnŠÏó|O‡\0\0ºP§ì:Ÿ#?çšøy÷wÔ\0\0 ‹µû®óÕju—´cüœÇ9Z\0\0ĞÚx×ùiñ3]?ÛY\0\0ôvÜu>~%×dY¶ƒ#\0\0=¦vŸcNúYªÕê®\0\0ô¨vØu¾,Ë}Ò%géÕ\0€×Ê]ç£0Ú­ñd±C	\0\0`“Vì:Ÿî5iF‹\0\0à×4{×ù¢(Îÿë‚¾]Z\0\0´¿¦ì:…Éñi¿“f­\0\0:ØTî:_–åñ½W§ãe\Z\0\0•©Øu>Š’½âû­¯T*ûÉ0\0\00&“¹ë|­V›ßkU|¯Ãd\0\0—ÉØu>Ë²éñ=–Gœ!£\0\0À„Lt×ùøwK#–¥BE6\0€	ï®óQØÌsGºÄK\0€I3Ö]çÓÍğé¦ø<Ï÷”=\0\0`Òv×ùôáø;k¢8Ù_Ö\0\0€)³­]ç«Õê.i#Æ¢(“-\0\0 ¶´ëü´(N.Œâå,)\0\0šjä®óññ’ˆk²,ÛAv\0\0€¦Úu>^ßŠ•jµº«¬\0\0\0-S©Tâä±<Ï÷•\r\0\0 åúûûŸ-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ô²ÿg;µÆWÇ˜´\0\0\0\0IEND®B`‚',1);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','7501',4),('schema.history','create(5.22.0.0)',1),('schema.version','5.22.0.0',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('5009','qingjia:1:5007','5008','5008','sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,NULL,'startEvent',NULL,'2020-08-30 09:29:02.891','2020-08-30 09:29:02.898',7,''),('5011','qingjia:1:5007','5008','5008','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5012',NULL,'æäº¤è¯·å‡ç”³è¯·','userTask','2','2020-08-30 09:29:02.899','2020-08-30 09:29:03.016',117,''),('5014','qingjia:1:5007','5008','5008','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5015',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ ¸','userTask',NULL,'2020-08-30 09:29:03.016','2020-08-30 09:38:54.449',591433,''),('5018','qingjia:1:5007','5017','5017','sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,NULL,'startEvent',NULL,'2020-08-30 09:29:52.839','2020-08-30 09:29:52.839',0,''),('5020','qingjia:1:5007','5017','5017','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5021',NULL,'æäº¤è¯·å‡ç”³è¯·','userTask','2','2020-08-30 09:29:52.839','2020-08-30 09:29:52.986',147,''),('5023','qingjia:1:5007','5017','5017','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5024',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ ¸','userTask',NULL,'2020-08-30 09:29:52.986','2020-08-30 09:38:54.241',541255,''),('5027','qingjia:1:5007','5026','5026','sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,NULL,'startEvent',NULL,'2020-08-30 09:29:57.195','2020-08-30 09:29:57.196',1,''),('5029','qingjia:1:5007','5026','5026','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5030',NULL,'æäº¤è¯·å‡ç”³è¯·','userTask','2','2020-08-30 09:29:57.196','2020-08-30 09:29:57.274',78,''),('5032','qingjia:1:5007','5026','5026','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5033',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ ¸','userTask',NULL,'2020-08-30 09:29:57.274','2020-08-30 09:38:28.632',511358,''),('5036','qingjia:1:5007','5035','5035','sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,NULL,'startEvent',NULL,'2020-08-30 09:33:22.953','2020-08-30 09:33:22.954',1,''),('5038','qingjia:1:5007','5035','5035','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5039',NULL,'æäº¤è¯·å‡ç”³è¯·','userTask','2','2020-08-30 09:33:22.954','2020-08-30 09:33:23.083',129,''),('5041','qingjia:1:5007','5035','5035','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5042',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ ¸','userTask',NULL,'2020-08-30 09:33:23.083','2020-08-30 09:39:10.204',347121,''),('5045','qingjia:1:5007','5035','5035','sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A',NULL,NULL,NULL,'exclusiveGateway',NULL,'2020-08-30 09:39:10.204','2020-08-30 09:39:10.210',6,''),('5046','qingjia:1:5007','5035','5035','sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35','5047',NULL,'æ€»ç»ç†å®¡æ ¸','userTask',NULL,'2020-08-30 09:39:10.210','2020-08-30 09:39:51.286',41076,''),('5049','qingjia:1:5007','5035','5035','sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132',NULL,NULL,NULL,'exclusiveGateway',NULL,'2020-08-30 09:39:51.286','2020-08-30 09:39:51.286',0,''),('5050','qingjia:1:5007','5035','5035','sid-8614ED1C-9194-4168-8DE3-8BA2805DD804',NULL,NULL,NULL,'endEvent',NULL,'2020-08-30 09:39:51.286','2020-08-30 09:39:51.286',0,''),('5052','qingjia:1:5007','5051','5051','sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,NULL,'startEvent',NULL,'2020-08-30 09:42:32.495','2020-08-30 09:42:32.496',1,''),('5054','qingjia:1:5007','5051','5051','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5055',NULL,'æäº¤è¯·å‡ç”³è¯·','userTask','2','2020-08-30 09:42:32.496','2020-08-30 09:42:32.601',105,''),('5057','qingjia:1:5007','5051','5051','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5058',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ ¸','userTask',NULL,'2020-08-30 09:42:32.601','2020-08-30 09:42:53.386',20785,''),('5061','qingjia:1:5007','5051','5051','sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A',NULL,NULL,NULL,'exclusiveGateway',NULL,'2020-08-30 09:42:53.386','2020-08-30 09:42:53.386',0,''),('5062','qingjia:1:5007','5051','5051','sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35','5063',NULL,'æ€»ç»ç†å®¡æ ¸','userTask',NULL,'2020-08-30 09:42:53.386','2020-08-30 09:43:15.097',21711,''),('5065','qingjia:1:5007','5051','5051','sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132',NULL,NULL,NULL,'exclusiveGateway',NULL,'2020-08-30 09:43:15.097','2020-08-30 09:43:15.097',0,''),('5066','qingjia:1:5007','5051','5051','sid-8614ED1C-9194-4168-8DE3-8BA2805DD804',NULL,NULL,NULL,'endEvent',NULL,'2020-08-30 09:43:15.097','2020-08-30 09:43:15.097',0,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('5013',NULL,'participant','2',NULL,'5008'),('5016','éƒ¨é—¨ç»ç†','candidate',NULL,'5015',NULL),('5022',NULL,'participant','2',NULL,'5017'),('5025','éƒ¨é—¨ç»ç†','candidate',NULL,'5024',NULL),('5031',NULL,'participant','2',NULL,'5026'),('5034','éƒ¨é—¨ç»ç†','candidate',NULL,'5033',NULL),('5040',NULL,'participant','2',NULL,'5035'),('5043','éƒ¨é—¨ç»ç†','candidate',NULL,'5042',NULL),('5048','æ€»ç»ç†','candidate',NULL,'5047',NULL),('5056',NULL,'participant','2',NULL,'5051'),('5059','éƒ¨é—¨ç»ç†','candidate',NULL,'5058',NULL),('5064','æ€»ç»ç†','candidate',NULL,'5063',NULL);

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('5008','5008',NULL,'qingjia:1:5007','2020-08-30 09:29:02.891','2020-08-30 09:38:54.450',591559,NULL,'sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,'11','',NULL),('5017','5017',NULL,'qingjia:1:5007','2020-08-30 09:29:52.839','2020-08-30 09:38:54.242',541403,NULL,'sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,'11','',NULL),('5026','5026',NULL,'qingjia:1:5007','2020-08-30 09:29:57.195','2020-08-30 09:38:28.634',511439,NULL,'sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,'11','',NULL),('5035','5035',NULL,'qingjia:1:5007','2020-08-30 09:33:22.953','2020-08-30 09:39:51.286',388333,NULL,'sid-DAA87663-376D-41C0-9BCC-AE379CD4A742','sid-8614ED1C-9194-4168-8DE3-8BA2805DD804',NULL,NULL,'',NULL),('5051','5051',NULL,'qingjia:1:5007','2020-08-30 09:42:32.495','2020-08-30 09:43:15.097',42602,NULL,'sid-DAA87663-376D-41C0-9BCC-AE379CD4A742','sid-8614ED1C-9194-4168-8DE3-8BA2805DD804',NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('5012','qingjia:1:5007','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5008','5008','æäº¤è¯·å‡ç”³è¯·',NULL,NULL,NULL,'2','2020-08-30 09:29:02.899',NULL,'2020-08-30 09:29:03.004',105,'completed',50,NULL,NULL,NULL,''),('5015','qingjia:1:5007','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5008','5008','éƒ¨é—¨é¢†å¯¼å®¡æ ¸',NULL,NULL,NULL,NULL,'2020-08-30 09:29:03.016',NULL,'2020-08-30 09:38:54.447',591431,'11',50,NULL,NULL,NULL,''),('5021','qingjia:1:5007','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5017','5017','æäº¤è¯·å‡ç”³è¯·',NULL,NULL,NULL,'2','2020-08-30 09:29:52.840',NULL,'2020-08-30 09:29:52.985',145,'completed',50,NULL,NULL,NULL,''),('5024','qingjia:1:5007','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5017','5017','éƒ¨é—¨é¢†å¯¼å®¡æ ¸',NULL,NULL,NULL,NULL,'2020-08-30 09:29:52.986',NULL,'2020-08-30 09:38:54.233',541247,'11',50,NULL,NULL,NULL,''),('5030','qingjia:1:5007','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5026','5026','æäº¤è¯·å‡ç”³è¯·',NULL,NULL,NULL,'2','2020-08-30 09:29:57.196',NULL,'2020-08-30 09:29:57.273',77,'completed',50,NULL,NULL,NULL,''),('5033','qingjia:1:5007','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5026','5026','éƒ¨é—¨é¢†å¯¼å®¡æ ¸',NULL,NULL,NULL,NULL,'2020-08-30 09:29:57.274',NULL,'2020-08-30 09:38:28.624',511350,'11',50,NULL,NULL,NULL,''),('5039','qingjia:1:5007','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5035','5035','æäº¤è¯·å‡ç”³è¯·',NULL,NULL,NULL,'2','2020-08-30 09:33:22.954',NULL,'2020-08-30 09:33:23.081',127,'completed',50,NULL,NULL,NULL,''),('5042','qingjia:1:5007','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5035','5035','éƒ¨é—¨é¢†å¯¼å®¡æ ¸',NULL,NULL,NULL,NULL,'2020-08-30 09:33:23.083',NULL,'2020-08-30 09:39:10.202',347119,'completed',50,NULL,NULL,NULL,''),('5047','qingjia:1:5007','sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35','5035','5035','æ€»ç»ç†å®¡æ ¸',NULL,NULL,NULL,NULL,'2020-08-30 09:39:10.210',NULL,'2020-08-30 09:39:51.285',41075,'completed',50,NULL,NULL,NULL,''),('5055','qingjia:1:5007','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5051','5051','æäº¤è¯·å‡ç”³è¯·',NULL,NULL,NULL,'2','2020-08-30 09:42:32.496',NULL,'2020-08-30 09:42:32.600',104,'completed',50,NULL,NULL,NULL,''),('5058','qingjia:1:5007','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5051','5051','éƒ¨é—¨é¢†å¯¼å®¡æ ¸',NULL,NULL,NULL,NULL,'2020-08-30 09:42:32.601',NULL,'2020-08-30 09:42:53.385',20784,'completed',50,NULL,NULL,NULL,''),('5063','qingjia:1:5007','sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35','5051','5051','æ€»ç»ç†å®¡æ ¸',NULL,NULL,NULL,NULL,'2020-08-30 09:42:53.386',NULL,'2020-08-30 09:43:15.096',21710,'completed',50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('5010','5008','5008',NULL,'user','long',1,NULL,NULL,2,'2',NULL,'2020-08-30 09:29:02.891','2020-08-30 09:38:54.451'),('5019','5017','5017',NULL,'user','long',1,NULL,NULL,2,'2',NULL,'2020-08-30 09:29:52.839','2020-08-30 09:38:54.245'),('5028','5026','5026',NULL,'user','long',1,NULL,NULL,2,'2',NULL,'2020-08-30 09:29:57.195','2020-08-30 09:38:28.637'),('5037','5035','5035',NULL,'user','long',1,NULL,NULL,2,'2',NULL,'2020-08-30 09:33:22.953','2020-08-30 09:39:51.287'),('5044','5035','5035',NULL,'agree','string',1,NULL,NULL,NULL,'1',NULL,'2020-08-30 09:39:10.199','2020-08-30 09:39:51.287'),('5053','5051','5051',NULL,'user','long',1,NULL,NULL,2,'2',NULL,'2020-08-30 09:42:32.495','2020-08-30 09:43:15.098'),('5060','5051','5051',NULL,'agree','string',1,NULL,NULL,NULL,'1',NULL,'2020-08-30 09:42:53.384','2020-08-30 09:43:15.098');

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_procdef_info` */

DROP TABLE IF EXISTS `act_procdef_info`;

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_procdef_info` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('2502','test',NULL,'','2020-07-19 09:48:01.097'),('5004','qingjia',NULL,'','2020-08-30 09:28:37.107');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('1',5,'test','process',NULL,'2020-07-19 09:37:47.406','2020-07-19 09:48:01.347',1,'{\"name\":\"test\",\"description\":\"\",\"revision\":1}','2502','2','2501',''),('5001',5,'qingjia','process',NULL,'2020-08-30 09:22:00.822','2020-08-30 09:28:37.419',1,'{\"name\":\"qingjia\",\"description\":\"\",\"revision\":1}','5004','5002','5003','');

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('qingjia:1:5007',1,'http://www.activiti.org/processdef','è¯·å‡ç”³è¯·','qingjia',1,'5004','qingjia.bpmn20.xml','qingjia.qingjia.png',NULL,0,1,1,''),('test:1:2505',1,'http://www.activiti.org/processdef','æµ‹è¯•æµç¨‹','test',1,'2502','test.bpmn20.xml','test.test.png',NULL,0,1,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `dev_apply` */

DROP TABLE IF EXISTS `dev_apply`;

CREATE TABLE `dev_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `process_instance_id` bigint(20) DEFAULT NULL,
  `content` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `dev_apply` */

insert  into `dev_apply`(`id`,`user_id`,`process_instance_id`,`content`,`create_time`,`status`,`start_date`,`end_date`) values (2,2,5051,'æˆ‘æƒ³è¯·å‡','2020-08-30 09:42:33',2,'2020-08-30','2020-08-31');

/*Table structure for table `dev_audit` */

DROP TABLE IF EXISTS `dev_audit`;

CREATE TABLE `dev_audit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `task_id` bigint(20) DEFAULT NULL,
  `apply_id` bigint(20) DEFAULT NULL,
  `process_instance_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `content` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `dev_audit` */

insert  into `dev_audit`(`id`,`task_id`,`apply_id`,`process_instance_id`,`user_id`,`content`,`status`,`create_time`) values (3,5058,NULL,5051,36,'keyi',1,'2020-08-30 09:42:53'),(4,5063,NULL,5051,3,'hao',1,'2020-08-30 09:43:15');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_Id` bigint(20) DEFAULT NULL COMMENT 'çˆ¶èœå•id',
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `perms` varchar(1000) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `order_num` int(4) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`parent_Id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) values (1,0,'ç³»ç»Ÿç®¡ç†','',NULL,0,'fa fa-cog',0),(2,1,'èœå•ç®¡ç†','modules/sys/menu.html','',1,'fa fa-th-list',2),(3,1,'ç”¨æˆ·ç®¡ç†','modules/sys/user.html',NULL,1,'fa fa-user',1),(4,1,'è§’è‰²ç®¡ç†','modules/sys/role.html',NULL,1,'fa fa-user-secret',3),(8,1,'å·¥ä½œæµç®¡ç†','modules/act/remodel.html',NULL,1,NULL,0),(9,0,'å¯ç”¨æµç¨‹','modules/act/reprocdef.html',NULL,1,NULL,-1),(10,0,'æˆ‘çš„ç”³è¯·','modules/dev/apply.html',NULL,1,NULL,-1),(11,0,'æˆ‘çš„å®¡æ ¸','modules/dev/audit.html',NULL,1,NULL,-1);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT 'è§’è‰²åç§°',
  `remark` varchar(100) DEFAULT NULL COMMENT 'å¤‡æ³¨',
  `dept_id` bigint(20) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`remark`,`dept_id`,`create_time`) values (1,'ç®¡ç†å‘˜','æ™®é€š',NULL,'2020-06-19'),(2,'æ™®é€šå‘˜å·¥','å¸è¡€',NULL,'2020-06-19'),(3,'éƒ¨é—¨ç»ç†',NULL,NULL,'2020-08-30'),(4,'æ€»ç»ç†',NULL,NULL,'2020-08-30');

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT 'è§’è‰²id',
  `menu_id` bigint(20) DEFAULT NULL COMMENT 'èœå•id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`id`,`role_id`,`menu_id`) values (8,1,0),(9,1,1),(10,1,2),(11,1,3),(12,1,4),(19,2,0),(20,2,9),(21,2,10),(22,3,0),(23,3,9),(24,3,10),(25,3,11),(26,4,0),(27,4,9),(28,4,10),(29,4,11);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ä¸»é”®',
  `username` varchar(50) DEFAULT NULL COMMENT 'è´¦æˆ·',
  `password` varchar(50) DEFAULT NULL COMMENT 'å¯†ç ',
  `chinese_name` varchar(20) DEFAULT NULL COMMENT 'ç”¨æˆ·å§“å',
  `phone_number` varchar(100) DEFAULT NULL COMMENT 'ç”µè¯å·ç ',
  `email` varchar(100) DEFAULT NULL COMMENT 'é‚®ç®±',
  `id_card_number` varchar(100) DEFAULT NULL COMMENT 'èº«ä»½è¯å·',
  `qq` varchar(100) DEFAULT NULL COMMENT 'qqå·',
  `user_type` tinyint(1) DEFAULT NULL COMMENT 'ç”¨æˆ·ç±»å‹ï¼ˆ1æ™®é€šç”¨æˆ· 3ç®¡ç†å‘˜ï¼‰',
  `status` int(1) DEFAULT NULL COMMENT '1.æ¿€æ´»',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`username`,`password`,`chinese_name`,`phone_number`,`email`,`id_card_number`,`qq`,`user_type`,`status`,`create_time`) values (1,'admin','admin','ç®¡ç†å‘˜','1','123213','123','123',0,1,NULL),(2,'Robin','123','ç½—å®¾','2','123','123','123',1,1,NULL),(3,'Luffy','123','è·¯é£','3','123','123','123',1,1,NULL),(36,'Zoro','123','ç´¢éš†','4','123','123','123',1,1,NULL),(37,'Sanji','123',NULL,'1231231','312313','1231231','3123123',1,NULL,'2020-06-21 09:46:34'),(38,'A','123','å“ˆå“ˆå“ˆ','12','213','123','123',1,NULL,'2020-06-21 10:53:49');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`id`,`user_id`,`role_id`) values (1,1,1),(6,2,2),(7,3,4),(8,36,3),(9,37,2),(10,38,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
