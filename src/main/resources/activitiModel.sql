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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',2,'source',NULL,'{\"resourceId\":\"1\",\"properties\":{\"process_id\":\"test\",\"name\":\"测试流程\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-4AD10DFA-926F-4B2B-80C0-8E749FC1E816\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C5DAE5B1-0DB9-4BBA-AD8C-D72408FA36E5\"}],\"bounds\":{\"lowerRight\":{\"x\":181.625,\"y\":212},\"upperLeft\":{\"x\":151.625,\"y\":182}},\"dockers\":[]},{\"resourceId\":\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\",\"properties\":{\"overrideid\":\"\",\"name\":\"任务1\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B6CB900F-1671-41D0-A06A-2116D986F8A7\"}],\"bounds\":{\"lowerRight\":{\"x\":326.625,\"y\":237},\"upperLeft\":{\"x\":226.625,\"y\":157}},\"dockers\":[]},{\"resourceId\":\"sid-C5DAE5B1-0DB9-4BBA-AD8C-D72408FA36E5\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\"}],\"bounds\":{\"lowerRight\":{\"x\":225.78125,\"y\":197},\"upperLeft\":{\"x\":182.234375,\"y\":197}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\"}},{\"resourceId\":\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\",\"properties\":{\"overrideid\":\"\",\"name\":\"任务2\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-64D23A7A-FD0C-4D0F-B51A-0E2291FF2991\"}],\"bounds\":{\"lowerRight\":{\"x\":460,\"y\":237},\"upperLeft\":{\"x\":360,\"y\":157}},\"dockers\":[]},{\"resourceId\":\"sid-B6CB900F-1671-41D0-A06A-2116D986F8A7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\"}],\"bounds\":{\"lowerRight\":{\"x\":359.50537109375,\"y\":197},\"upperLeft\":{\"x\":327.11962890625,\"y\":197}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\"}},{\"resourceId\":\"sid-00C22353-E421-41A6-8441-334A4AC59238\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":544.625,\"y\":211},\"upperLeft\":{\"x\":516.625,\"y\":183}},\"dockers\":[]},{\"resourceId\":\"sid-64D23A7A-FD0C-4D0F-B51A-0E2291FF2991\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-00C22353-E421-41A6-8441-334A4AC59238\"}],\"bounds\":{\"lowerRight\":{\"x\":516.431640625,\"y\":197},\"upperLeft\":{\"x\":460.00390625,\"y\":197}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-00C22353-E421-41A6-8441-334A4AC59238\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('2501',1,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0S\0\0\0\0\0e3Cb\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0��\0\0u0\0\0�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0���\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0�\0\0��+\0\0�IDATx���tU՝0�HP^��*>� ��q�u��u��>>PP�S_㨭Xm�W�ر�~Ӫ�s�|����Z�)Z�V����y� �\0	y�o�k�D�u~���:���{s�>������>I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���R���|��3kjj����8~����Ƕ��VzYY�~��s��o�������?ؖ�?�J�����[YYٸm۶\rܺuk^�+��q�\n�S�N�UVV�r���R*H��\r��_�r\\�A>�#���ս{��k׮Ivv��i��x�D$)--M֭[w�E!��h�Сs3}�Cueqq��������H�E��Eaa�����\0f�駟�X� ����H������=�����O���|֬Y��X�\"էO�?��co�������|��o��H�E��EAA��T*u�׿������A@f%RUUUS�v�v�- �����3+$+\'O�0���{��T��}�1�$�E�cQQ�?�7nє)S�U*H� �͙3gP8\n���nݺ5���կ\'�Kg%��y&)Y�JR�ck���Iv��\n�:u����#+??���/�|�C=�:S�-��+((���⢢l]R���O\'��J�m�Or�?0���f�6A\\��*����̱c�>;u��\"�BC�h����;e���v�Hmȟv��Mʷ�MR��t\"�qłd�[����8��ʿCHh�Ȕe���c�xjoW���7Nʊ�Ij�w$���d�����PR^��Jm��8��j:t����)�`s�����ul����&㎲8$S\r�-[�Δƫ�tȋ/�xr&,O�j/v6��Ր�+��N��&^�{|pϜ���������)�P�w�A�iW}abDluؕ�w�F߾}�Î�_3aY���]���ݴ>���u���ٹJ�dn2��=z�����w�H���4_���Ӫ����	�Ǒ���r�WW�&(�DS�ݻ��l���!9�\0Z_UUՠx���K�.IEEE�LX�8 ���a=f}�\r�2 �Ju4�b�T����Xq Iq�Qq���U;�ۿw��E!��O��բ�)�v�y=�_8����q��8X!�z:,�����뎝���+ �L��;fT��x�Z��Q]����{`��w=�X�)����J�^�E��ê+��	�L�e�7��W�i�ok�<��{��G���غ>=�y�������\r�%��@�=@�sed��\ZU����{��JL�6}�r�}S~�w��I��(�} �^���]�VF�JV$�MN�92�q�IIV�cg�L����\\�0)zovR��l����[#z>\"��8�C\'���Ė��\n[��D��L|���K��>3�K�45�*���-I����D�Nl�*^�B�>$a�?��iO����W��~�)�w�TU4��q��h\\T��ܟM�	h6N�A������\r\Zy�B��e\n\0@2\0 �\0�L\0�Kt@��͜9����닋��1L}KKKs***�:v�t�֭�_�~�{���Ɛ!C&6l�hcǎ=���jTVV�)���0�S�9hy�\nS����:t�0cڴi�$S��n�喫B�t����{<8���OO9䐤gϞI^^^R^^�lٲ%g�ʕ�/^|�O<q�ĉ����g��^;A	��.� �i������!Y�k�-�����Q�}�3f̼����ӧO�LA����m�g�Di@�@������Oo�!��SH���;.��⋓����CRu�M7��/����^��h!!����T*u�������;���%O>����)h\'N�~ݺu�笳����7��`�;1�Ӝ9s�Ϛ5�O��w߽W^y�)Y��5z��1avw�z׽��/}�K�W����_�bңG��k׮ɶmے������ y�ג7�x#��������7���U�J2E���/~qm����n�p�QG5��)�A�e�~��W���kH��+a�&K������_uyBL���i���>[�����/=���?6lX:�z��g��{.����o�J��+$Ty!�z������h?������7�|s��:�-]ɒ%K.��;nS�\0M�H�	�Ԭ�D*&H��v[�|�`\"Ր�b�?���		�!�\Z\'���Ϲ����y�u���醸���M�0!Y�l��ӟ���\ZW_�D��Dj���ɤI�>������/�����!�\Z$���гgϧG�\Z��T-R;�-T�sN�����)m��/$R$�}�b�T<X�}�\Z#������_?!����L�\Z?~�����G�>N�)~NNN߉\'ި��^� $9#���G*&@�M��\'T�\\sM�������}�)�U�o7n\\^�������m۶Vj̘1?�ш#\\ԁ������ubg��{joW��}�[���yHܮ�L�g�#�VVV�2h	�|UUU��q�Zڿ��aV߾}KCe63Tfg���]��:�����������$W]u���t\\l=z�tqAK�\\�~�JB�M�Ә��u*>��r�9�q�I�����X�y��h6a�<����۱�\Z�N�^�tiw����YYY�������.�s��ù���}����N��|�;��x����\'/��R2k֬���OF�\Z���?�����gϞ�~�jժ��W_Mx����}|�Ar��W��m!��~�� �Ř1�~&^v..>w�yg�?�!Y�hQz�+��\"�袋T����!�Ɔ�[sO���*�jo��	�p\\_�!^�a���ya��d\nv�k׮g��2�%��1��,\\��R����a~~yyyEH��Ə�]���y��Ue���;Ⱥ�n/��rzܘ��+����������B�\'_��W�G��e�]���G?��{�~��sO���=��}m���Cl\\ʬ<��;�߈�$y��w������H�� ^`r��\'�Ps���(�\\����gՏ��{�x�ͺ0���%S�H�`7***��aK���7n�xpGnl�������-V/�Ǔ3�e\"� �ěM�ዦO��t�ԩ��?��C��֭[���;��Yg��y䑟zo�J����O6lذ�o&yu;��}�n	����j�}5.&O����طfĈ�K�T��\\������P�����y��{�GѬp�a��:�=�d�fSYY�36鶤x�IH��Ĥ.��buv����ò�_�>�p�ҥIQQQ�z���83�%???����8 �޽{����\'�7�ZCB%�n���#�ر#�VPYYY��1vh��)�ڸ�`_������آ���}/#~{qqq�E5�떽[��1w^�������{K�`7����⍊[��+���c\'���PQ�e�I�����?ǝF���w���ǭqGX����\'�L�q�-�~x��$���Jr��ǧO՝ʉ����:th�\"�WH<ݔ1t�7�tS���3�̘���o&m�n����)�P�ږL�ndggoG؝[2��G���V���[[���I���a�S���9\"S�[l}�}U⩛(�n	e�~<mڴ�����c������7:=��c�n�!}%P�8;�ű�aɒ%�~3m��Gw���P\\ԤR���ο�\"I~��\'/����	Z&��׾��X���⢵��s��c�Ζ-[�5��1Q�ږL��+\'�����xJ���J 77��G�Ԓ�5��uVu��b���$<��0M�:;�����KS���b\'�����J���#G�O��n�O�������_-�եK�dƌ��1.bR��\Z����-.>���0��_��̝;7�իW��D�޽�W��t�M�29vws!�bG����a�ԏ��8vOwd�4g2���b��Fee�k˗/�*ˮ-�?W�\\O=,n��*��PA�ֶ0�D�,Lq/�x�Ν�;�(K�QҜ��M�b���7��q��)S���D���2��Fv�$.�˚��)�(&\\-�E���Qw��B5s����%S��n�;�+((��t�d\nv#T��^}���\r�b�Ԓ%K*�o��Lk���D*VZO��ٰcx�-�\'�;��Χ:!�քع��������q�b�8�clI�{��:����&ѡv\r�E|�駟N?����t�A;�|�s��%P���p\0�b����c_�SN9��*~=/J�`�G��]�h�����IK\r����/��رcFk���lf󲳳]{y{�mi��\Zb�B�\Z��\r�/�����?�+����x*&�O�āc���GI~��_%��vۧ�;&M�<q{�3{EE����b.�ס��3>���oܸ�Y���z��L�nL�6mՅ^��P�<餓�}짷�z������3f��a��pTW���j/-\r�\\r��W�$�z�\'�^\'V�;_u�>~����[�Ήq�&b.��!)�ot��%cǎm򅋧p+++�.h��Z2E�;:��|�N8��[�~��M��������B������w��;l7d_�a�q��b�0��b2KmʾS�O�3��O/�����^�]DӬ�O��ۭ[�.���j��6В����׮];C�|��:���Ǳu*������X��p?~o���L�.�={v�e˖5ǗǱ_�x≚���po3�L�����\n֬Y��~��N�b\"��2U�,++��T_K�hv�x8\Z��g?�YUQQѦ���x��[n�eCUU�u�j��h\\}�J��	ӉN�:sҤI���??�hѢ�_��U��L�\"��!���&L����o�h��,((�v�7�G=��T��4�u�]V�P�������w\Zps���Bb��\\�D,$j?n�����ϣ�G�.���[�����K���w���vJ�9s�{���oz����6�G�.@�����䬬���S�<;�2$9���#�8\"=~X-=�ʋ	T�o�[z��x{�z�XW״��Z2E��3�?������^~�囆��=�|�@����e�����~v����h��:Ե�!�k1����NcE}���T{�!��5�x\n��԰��w��^q�}��:��#N9唎�׫W�yyy��QM��͛K���K�ϟ����PQQ?�`aa�T��Z��	�!�\Z��Â0=�/�ג)Zs#�#�>5v�؃�{���}��\n���)�����~��-�j/�������漐T����0�,�)�sz�*���b}-���őw��W�\0��6��|\0\0�)\0\0�\0�d\n\0@2\0�d\n\0@2\0 �\0�L\0 �\0�L\0H�\0\0$S\0\0�)\0\0$S�v��Q\n�v=d�����N�����aV�$�LA����z���t��h}eeeINN�{��,yyyE[�l�R2��M���B%�d\n2T*�zaÆ\r�J��m޼�����LX��;.�c�d�����0��$�LA�&S3Ce�#̝Fhe�W�����3aY����c�ڵ�!.���U�q��!a>SQ ��u�i�-���~���`��h=�V�*���\\tꩧ��	�s��\'���֬Yc崢ŋ?�ÚL�$S�.����`�ʕm޼y��hy[�n���ϯ	I��\\����B������Jj%%%Ooܸ�}*\rv��\"��0u������/,**:�{��eyyyݔJ�(++���[omJ�R��v�i2-..���6l���y���VX&R�-�rVVֿfZ\\ �vaʔ)�/���%���TTT,�ٳ�P�kAnF�-[���9�L��q�ƽ�nݺQ!�v�֭s�[y��/~2���c\"��qA�5B�3gΠ���;���8`Q߾}{���kp�ػ+�Ʃ���ڼy�{�ׯ/\n�!�����)��O?}q���rrr��O�>�z��}P�����׬���Ŋ8�A�j/v6�}��J\\ �vc�ܹCCunx8\"LǇ)O�4Z�b2�4/L3�b�bq!.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h�?}�A����\0\0\0\0IEND�B`�',NULL),('2503',1,'test.bpmn20.xml','2502','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"test\" name=\"测试流程\" isExecutable=\"true\">\n    <startEvent id=\"sid-4AD10DFA-926F-4B2B-80C0-8E749FC1E816\"></startEvent>\n    <userTask id=\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\" name=\"任务1\"></userTask>\n    <sequenceFlow id=\"sid-C5DAE5B1-0DB9-4BBA-AD8C-D72408FA36E5\" sourceRef=\"sid-4AD10DFA-926F-4B2B-80C0-8E749FC1E816\" targetRef=\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\"></sequenceFlow>\n    <userTask id=\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\" name=\"任务2\"></userTask>\n    <sequenceFlow id=\"sid-B6CB900F-1671-41D0-A06A-2116D986F8A7\" sourceRef=\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\" targetRef=\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\"></sequenceFlow>\n    <endEvent id=\"sid-00C22353-E421-41A6-8441-334A4AC59238\"></endEvent>\n    <sequenceFlow id=\"sid-64D23A7A-FD0C-4D0F-B51A-0E2291FF2991\" sourceRef=\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\" targetRef=\"sid-00C22353-E421-41A6-8441-334A4AC59238\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_test\">\n    <bpmndi:BPMNPlane bpmnElement=\"test\" id=\"BPMNPlane_test\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-4AD10DFA-926F-4B2B-80C0-8E749FC1E816\" id=\"BPMNShape_sid-4AD10DFA-926F-4B2B-80C0-8E749FC1E816\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"151.625\" y=\"182.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\" id=\"BPMNShape_sid-684417E8-714D-456D-9AC4-0AC3D149AFA7\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"226.625\" y=\"157.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\" id=\"BPMNShape_sid-207E8B56-86DF-48F6-AEA3-D94E8E9CD11B\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"360.0\" y=\"157.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-00C22353-E421-41A6-8441-334A4AC59238\" id=\"BPMNShape_sid-00C22353-E421-41A6-8441-334A4AC59238\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"516.625\" y=\"183.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C5DAE5B1-0DB9-4BBA-AD8C-D72408FA36E5\" id=\"BPMNEdge_sid-C5DAE5B1-0DB9-4BBA-AD8C-D72408FA36E5\">\n        <omgdi:waypoint x=\"181.625\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"226.625\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-B6CB900F-1671-41D0-A06A-2116D986F8A7\" id=\"BPMNEdge_sid-B6CB900F-1671-41D0-A06A-2116D986F8A7\">\n        <omgdi:waypoint x=\"326.625\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"360.0\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-64D23A7A-FD0C-4D0F-B51A-0E2291FF2991\" id=\"BPMNEdge_sid-64D23A7A-FD0C-4D0F-B51A-0E2291FF2991\">\n        <omgdi:waypoint x=\"460.0\" y=\"197.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"516.625\" y=\"197.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('2504',1,'test.test.png','2502','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0*\0\0\0�\0\0\03k\0\0zIDATx����o��p/4���삋%#�[/��xc��I�)�-��L��h0�B�a�\Z$1.��Y\\����H-m\"$�`UHh�є�0�ʳ�۴�p\nX����y��O�sZK���~�����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0H�(��?y��?577G{��U����h�����Z�/T�����0jmm������W��\"���@��W_�7N/��Ծ\0(���l%f(]���;��Jj_\0\\حo$��t]_���@��c�A�R�/TR� ���z����9:ִ~����k�H����T\0�>�/�DG�Y�G�-^�$�*�BPH�@:s��c��h�=�h��4��A ����wH�=�$�AE_*\0�HG���)�g��3��A�@2��T\0A�n���@\n�$�*�BPH�@:���Rx� IgP��\n@\"҅�#��/\Z��ޏ_�$�*�BPH�@\n�up瘁^3D�}�7}!�\0 ��ct���������{IJ���T\0�=��F���{�s�{�B����/���x���DK��=k�8�F+|M�Z[�)*�BP(�@���e[��*�B_\0$b �gk�n[���*�B_\0$b Mt���23����\0�H�@��@PQ��T\0$I_�\0AE	*JP��g�}������u�֝Y�bŵ�����͋.\\-[����\r�o۶��T�����)//�EYY��x��4�q\r��:�l\\]�{���\r_g�Q��`�k������ؾ}{������D�l6\n���ѡC��;vD+W�����غu�%�(A�p�ϟ�|\\{GI4��2���%g͚5�������F!CCC�x}��Qn��^{��G}�AE	*JP�>qؘ��{\'���_|�%���~uUU�����{\n(����UWW�����T�����WVVg�y�����<ڴiS����>}:�|���|�ʕ�=�mmm�;�3|�>/�ڻB���ۯ,[�l�����T���V�X�ae���%�LiHy6�s��<|8~<.^�8����rKV~o\Z�H�V�Z\ZN�o��W�����e˖M��T��2e{Rn��իW�=���}uuu�aŞ�%�\\�dIv����n�JUU������*JPQ�������=\r\r\r7�LT8,�q����@�MG��_>�I�N᜕8��\n*JPQ��č\\�ssO�dCJnX�۳�j:��[�jU�ڵk�t[�f͍���5��T��2���|�9)=�s��@��8D\",_��h���9���}��T��2��)�D����\'�ثBr�;VWW_��e������p���}�����d �KO�A��=���h�^�.L�\Z�ʻty�iI�d2�W�oߞ�\n(l����&�����soYY����4����J!{n���_��[oM�:TjMK�����)����a����\'q�ȩ��[6R:���zB_*�칑g���o߾i]��M�r���%ESYY����[Р���K/]N�qs�ft�0�RT��T\n�s#~m�O���`��o8cZR4�����J�y��*�\"w��@T�{\"���J{nh��SuI��.U���YӒ�~0�a��*JH�H�B�W)�-�B�Ӧ%E��d~(����^/�-�o��4�x��\r${T�{¡{T\n�s�n����:�-:]�sT/^|)��-è�R�O�m���PO=�Ԙ���=Q*}1��ؽ{w��c�E<�@�裏F���J�z�9*�����w���].dP	W�TWW���=��1�ZP��kw{?ܐ��\'��mxIqP�cO�RP�hO̞=;z�����n��Z�����~H�p]��-[�Tv��ymѢE�\'l����rڂJ�sΜ9��8{\"\rAe��M��k!�*��9�Q!�/^<P�;�.]��r)��0\rAe�ܹѹs���ST6l�0��3�<�/��^�3-���d�����\"�>|x����P)���T��Y0��P����?��#QWW��(��z��!}±�%K��*�^�����R}\Z��b �1�<x0z衇�	�:u�U?	X�==�T��˝;w�ΐ���x1�\0���1AEPT��O?�t��s�E���.ON�z=\Z$V�^=e�*�K����nٛR��53��ge2����ξ�)�����8��.��Q�.OTf^P�hO<��÷��n�:}���:���@���0�B�ƍsC�`)���Peee�,X������i�o��R߅��^���IZ�GO�ݳ2��@�����8�C��zeV�;vlJ.Y���RYY��^/�ߍ�d �}���:7��sK�	�᪝�^�N��=\'%�LX�IAR����?���ɜ`�k׮�L�?|�f���@2��H�z��ܠ�G��J�)\\�[2zX(�	w�\r7sۺukoD��	wp��פ#��\n��-\\�����֎{��lOUU������t��@2��H�z=��:\'�R�\0�>\0qB?��o�677w�={�;��^\Zy�`�ܹs���흛7on���8JH�3�lq�@�������A�	(3q�&����ʑgMt��i�>U3<�*<\"�fy&���@2�􅾰^��T��` H�B_\0*JPQ�\n��d �%�\0��2��\0T���\0�@��@PQ��T\0$I_�\0AEH�B_\0*JPQ�\n��d �} �(AE	*\0���/�����/\0$%�(A�@2��\0T���\0�@��@PQ���\0�T������� HNe�t]_���@��߿�����0H@����%H��B%�/\0\n�������������P�-�0����N����PI�����g�-�o���p,\\���3i�H_�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\r$�����w\0\0\0\0IEND�B`�',1),('5002',2,'source',NULL,'{\"resourceId\":\"5001\",\"properties\":{\"process_id\":\"qingjia\",\"name\":\"请假申请\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\",\"conditionsequenceflow\":\"${agree==1}\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-DAA87663-376D-41C0-9BCC-AE379CD4A742\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-07465691-AD09-4C0D-B7BF-C00E18ADB7DE\"}],\"bounds\":{\"lowerRight\":{\"x\":135,\"y\":213},\"upperLeft\":{\"x\":105,\"y\":183}},\"dockers\":[]},{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\",\"properties\":{\"overrideid\":\"\",\"name\":\"提交请假申请\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"${user}\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-7CDD1FDD-F589-4486-B638-0DF0C64C7474\"}],\"bounds\":{\"lowerRight\":{\"x\":280,\"y\":238},\"upperLeft\":{\"x\":180,\"y\":158}},\"dockers\":[]},{\"resourceId\":\"sid-07465691-AD09-4C0D-B7BF-C00E18ADB7DE\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}],\"bounds\":{\"lowerRight\":{\"x\":179.15625,\"y\":198},\"upperLeft\":{\"x\":135.609375,\"y\":198}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}},{\"resourceId\":\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\",\"properties\":{\"overrideid\":\"\",\"name\":\"部门领导审核\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"部门经理\",\"$$hashKey\":\"35H\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2D7D22FB-01D1-47B6-8E30-41186EC7A56F\"}],\"bounds\":{\"lowerRight\":{\"x\":415,\"y\":238},\"upperLeft\":{\"x\":315,\"y\":158}},\"dockers\":[]},{\"resourceId\":\"sid-7CDD1FDD-F589-4486-B638-0DF0C64C7474\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\"}],\"bounds\":{\"lowerRight\":{\"x\":314.4296875,\"y\":198},\"upperLeft\":{\"x\":280.5703125,\"y\":198}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\"}},{\"resourceId\":\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-6BBA3957-5CD9-4E22-9B28-839F10C9370C\"},{\"resourceId\":\"sid-B0B2603F-8019-4E40-8D0D-2E6B9D27C7F2\"}],\"bounds\":{\"lowerRight\":{\"x\":500,\"y\":218},\"upperLeft\":{\"x\":460,\"y\":178}},\"dockers\":[]},{\"resourceId\":\"sid-2D7D22FB-01D1-47B6-8E30-41186EC7A56F\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\"}],\"bounds\":{\"lowerRight\":{\"x\":459.64844687000755,\"y\":198.4097335362338},\"upperLeft\":{\"x\":415.62889687999245,\"y\":198.2191727137662}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\"}},{\"resourceId\":\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\",\"properties\":{\"overrideid\":\"\",\"name\":\"总经理审核\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"总经理\",\"$$hashKey\":\"39B\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-03DC5048-49A3-419B-AF81-7CE996E1B2E8\"}],\"bounds\":{\"lowerRight\":{\"x\":640,\"y\":238},\"upperLeft\":{\"x\":540,\"y\":158}},\"dockers\":[]},{\"resourceId\":\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A65821C6-6A2F-4F60-96B5-B50D4C76FA8E\"},{\"resourceId\":\"sid-28FEE811-41C3-4D04-9A83-E7CDE2E436AE\"}],\"bounds\":{\"lowerRight\":{\"x\":725,\"y\":218},\"upperLeft\":{\"x\":685,\"y\":178}},\"dockers\":[]},{\"resourceId\":\"sid-03DC5048-49A3-419B-AF81-7CE996E1B2E8\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\"}],\"bounds\":{\"lowerRight\":{\"x\":684.6484468700075,\"y\":198.4097335362338},\"upperLeft\":{\"x\":640.6288968799925,\"y\":198.2191727137662}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\"}},{\"resourceId\":\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":798,\"y\":212},\"upperLeft\":{\"x\":770,\"y\":184}},\"dockers\":[]},{\"resourceId\":\"sid-B0B2603F-8019-4E40-8D0D-2E6B9D27C7F2\",\"properties\":{\"overrideid\":\"\",\"name\":\"不同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${agree==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}],\"bounds\":{\"lowerRight\":{\"x\":471.0963943205213,\"y\":328},\"upperLeft\":{\"x\":274.5021403716896,\"y\":209.89431050753208}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":373.625,\"y\":328},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}},{\"resourceId\":\"sid-6BBA3957-5CD9-4E22-9B28-839F10C9370C\",\"properties\":{\"overrideid\":\"\",\"name\":\"同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\"}],\"bounds\":{\"lowerRight\":{\"x\":539.3828229249741,\"y\":198.40949633755696},\"upperLeft\":{\"x\":500.32030207502595,\"y\":198.23112866244304}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\"}},{\"resourceId\":\"sid-A65821C6-6A2F-4F60-96B5-B50D4C76FA8E\",\"properties\":{\"overrideid\":\"\",\"name\":\"同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${agree==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\"}],\"bounds\":{\"lowerRight\":{\"x\":769.5078327841813,\"y\":198.376443202447},\"upperLeft\":{\"x\":724.8984172158187,\"y\":198.092306797553}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\"}},{\"resourceId\":\"sid-28FEE811-41C3-4D04-9A83-E7CDE2E436AE\",\"properties\":{\"overrideid\":\"\",\"name\":\"不同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${agree==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}],\"bounds\":{\"lowerRight\":{\"x\":693.4545088448733,\"y\":189.55416292062253},\"upperLeft\":{\"x\":280.75014764312385,\"y\":56}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":513.625,\"y\":56},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('5003',1,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0P\0\0z\0\0\0��H\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0��\0\0u0\0\0�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0���\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0�\0\0��+\0\0 \0IDATx���\r|[e���l�1qH��C�t�N�ǃ�8tm�mH&rÄ�I& OÁCA�{�m$Y�2O�:y���S&T[���@���䜙���s���~��WN�4M������s��8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�n�\n\0\0|�N��\"��|��H$��\Z\0\0\0h!8566�g��4��ke������\0�\0\0�)--�?��\n78ej�@5g�С�+++�-\0 @\00(eq���\r�/L&���b������g׸�j����E��Ss\0@�\0`P�D\"q��i�F8�LK���͇�Y�*��El���6{N���rj\0P\0\0h������ٶ�s��#N�-]�#N��^EEň����x���-�x|fuuu#�\n\0(\0\0bp�9NӬ�/��|�E\"���}�p8|��-\r��m���w���\0\0\0�)8�Q��͝�Yoʔ)㚚�4�/�aH\0�\0\0��ia\"�����j]7�~���<\'=k��/����L� @\0\0�S���Cvs�;E}2��V[�R\0\n\0\0����߾�q��Y���D��S@�\0\0���G���k��4�!MPq��M|J\0P\0\0��ԂP(49�L����wO��d\0@�\0\0]R^^>�����-85Q��F׌�྿�-D���@�\0\0�JJ��r+%�C�.8e*))��������\rz����-Zϧ	�\0\0\0z+85X���������2��Q\0P\0\0�7����>���`0xS�]k�=_K�-v�,�_[]]��\'\r�\0\0\0N͸C�����݇VZ�\n3�\0\n\0\0�Z�����V[�0�\0\n\0\0��VQQ1���A���>4������m`�\0@�\0\0����s��ְ��Ð>\0(\0\0�Bp�D\n7���iʔ)㚚��:�>���\"��2�\0(\0\0yp�pp�&����2iH�����I�}���Y�@�\0`��g[X:���6wHߕ��k��D\"Άk]\0\n\0����	.t�3Q�&+�$8��ҧkF�;�Y�.��b�P3\0P\0\0@����}>ߏ3�S����\nn����F\r�Ziiin �T��܇�[���D6Q;\0P\0\0\0:�d7�{�8)8Y�Â�u�,��:��^3JC���J-D��f\0�\0\0���d�|q��d��d���t]ii�h�����J����h�*j\0\n\0�,�NG��8�09D����n߾�\Z��s܇��\0\0@��q2:�i��;N=^���FC�FZ�755��x��Ǩ\0(\0\0�apr��4�}�s���se7��o�����]A�\0 @\0����M���g;�z���?������W�^3*N�\0 @\0�t�I�CX\'}�������9N�.�η���� @\0��t!WN70T/;TTT�ؾ}����ː>\0(\0\0zZ+ӑ_���!\n)4]��]��ҷ��@�\0�����q��0�@�,��(+�lyz,�R3\0P\0\0t���555]鸓C8�zs,8�Hp�^\Z����p�-j�sM�qӰa�.�ϴ��@�\0��B�P�����u�K�n�����s��p8|��es�Gk�3?1\Z��S3\0P\0\0�389�sdt�MG~u\"�����j54 ?s]�X׌\Z��]��n�f\0�\0\0�Xp��A���47T��1����mll�Nh@�\0���Vd鳲֖Kc�X-5�\0\0 8��w�\r��wғ���F+�\0(\0\0����TTT�o�>�֍\n\'}4�2�H�`H\0\0��DpB�덦9�5��V��:3=���f\0�\0\0\'����������͎��WUWW7R;\0P\0��WRR����N��t:�	�AC�����m=��}�:�H������\0\0 k�S^^�4[������	ݪ��<d��<[i%���t��ŋ�f\0�\0\0Y��z+w�����\0\0H�i����C��-zxݻ��wbH\0\0���%�L&5KC�\0�\0\0\'`WB��(����8�@�\0�����}���|��w�����M���ZG�\0 @\0N@��ˏwg�e����h���@�\0�tp�d����m***Fl߾}��I�C��DbFUU�6j\0\n\0���\'�����\n��wwhH��d2Y\Z��j�\0(\0@����I���Kp�@2eʔqMMMK�� @\0�18鈓7T���_���/!8a ���644h����C�@�\0t98��rs0������\Z�@\n�~複��:�PT\0�����z4�!}U��ϐ>�\0\0�Gir���ۯӅ�i�ݟ5lذeq�`���CVr|>_���qfUUU��P\0\0�S��������T�9 ����4k\nRA+qk\'-^��1j @\0ap�p�sx����\'��z@��o�D���Ͷ6rm @\0op����̪��ҧ��r�N$a��(\0��\nN:�t�u2T�5\r�kjj�gmh�ݍ�mi$YI�\0(\0��N��]�q��J�8Q��\"n{R��8��D[P\0����Z�.�H,����u�-^n%���@ pƢE��S;\0\n\0�e���;B�P��D��Y��P�h4ZM�\0(\0@v��>��ƍ7�BpzFiii^NN�k{���>��w-m @\0�!w(�$[����:N�1��{B��v�c\'=��@ 0�!}\0\n\0п��4\'}�(�a&�\0�6D�8�ҷ-�LN��bQj @\0�>8iO�wĩ�IOG��@k6�O��.@�\0�����@?�lH�P\0\0�������|>\r�+L&��myf4\Z��f\0\0�������[�����6l،���j @\0N\0Z\n���Yɵ��I_3���P\0\0������d2Y�C���.7\0�\0\0\'\0�h>��,	��+++7S;\0\n\0�z\'j�������N%8�O�!}���7����Q3\0\n\0�,8544��L&϶�4��^�C���\Zn�D��%�@�\0�S��I\'�����mC�Y������Hd��\0���Vmev4\Z���\0H�!}�m�Q\Z��VQ3\0\n\0N\'\0-h6�OG�g���6j @\0�	\0Zކ|dH_SS�UUUqj @\0�	\0Z�!}�=��nO��lK\0\0�\0����y999l�2�I��ǯe��\0\0�\Z�N��͏	N\0zR(��I_l;�!}\0\n\0N\0��Ub7+yV��NZ�x�c�@���\Z�tb����#8�͆�ɜx<~1C�\0\0���d�g[�Ǭ�Rc7gp�\0}!sH���VN�F���@��~�|>�c�D�7�x��=�\0�8D�8�ҷ)�L��ŖS3\0\n\0�\"8]d�gz���H�.h�,5�m�tN�B�1�CW������P\0�W����\'\0�\\8֥��Š����p$YK�\0(\0��=�������z�	��#N\0�(D��v�~[�uq<���Q\0\n\0�-8m߾���t�S^Fp��#N\0�u����0��龮����G\"�M�@��nNf�u4ndV=\0Ayy�񶍛羅����-��\r @@��SCC�YN�\'/8=d�:�8h�!}l��J��Y�H�^��hF�>	�\0 �S�#N:�1+�q������$\'//�r[��}hy 8cѢE�{�O��T�P��[�\'\0dGp\n�G��s�s�i�&���b����\"Ojjj����F�]�U�KGދ�0��A�\0����ӑ/���7�s�=5������4/��\Z���/�Y��N�u�#\0\0\0���t�-��~Y�Z�8�f�\0�ҧL\Z֧#C��N�!}��jEG��vo�-��\'\0�mp�����npJM����4���j5\0;+++������!}��Y��w���-t�u{��6��j2�C���Ag�V�R�\'\0�~p:Ǿ��v;:�Н��s�\0�\r�m�x��[����N���I�jpÒ^�+�R�����m6;�@����G655�,4���Ϭz:��f�q��	�B���ҷʶ��D\"��]|�IV���,+��tZ��\\G����W��d��_>k۶m��{��}�ݠu����n<|��СC�2d��~��	&<�W��>c\r��	ɹ�{�666^���z�{�\0�g�`��`yy�x{��Nz�TW��r��o9�\\��Ǣ͞7�}�\"\'}�(�\0�&�b��M�nlhh�=//��k���=������TN��c�g�֭N<� �H�m���ӎ>��^�k��P=[���_�gr֍��n��3m���`C�:3K��bE�̰�T��@�I��:\'=�O�1g�~\0\n�)���ʲ�^z�۟�ԧ�O~��#G���\r68���۵��#����_��i���b�v\"8�� \\���!X7�g�\0�g�6X^^~�}Ns�0�ʶ�\'u`B���k[����O/�xL3�ֻ!KaO3���g(6��\0U����l��cƌq��g��{����޻����M�6m��w������@ �}F�����m=o�ر�766�cw����Xg��wO�D\"�֬Y����Z7����\r���=]TT���GX)����/((Xm�������cA+/:�Y�DC��lE!m��c��n�NzX�~ζ�[-8\Z���V۰;Ç���������u�8����L69�F|���補������������-�|uW�EܣI��|�h4��v��s�:;9�F��`�L�m��&�w�g�>��횝o���Nz��+��Q*M(Q�g���:\Z��&��1��d��װ�־�_}��m���4%>p�M��{o��y�;����Q��`�=�pF�\Z�~���tD)#<%[\nW�P�\nJ�C�a�[Yi�qQ,;���u#{�\r�}�\r��6�D6E�Q��t���Aלּ��\'-X�w�験.��v���VBNz_����|�IO��)��a@9���y�����oqXȿ_|�پ����N��:���R���:G�6lذ�ԩS��`���-�\'�߿�>�B+�rk�Μ���+��jll��.���nO�/�;����`����>���\r������>KMG��Dv�e�Fw�Ȗ�<=备��ڊ�n=�ρ�e)p�U���\r�F>E�5�@a@�T��ͩ�1���؋����>���\'4������@ �}F�i-m�*���\nQhogW�?º���\r�}�\rfW��b�L�ȶ�w��\\�l#�PhAiiin;_B�k����\\;��t��:�i����:�t����Ɏ��\n�\"]GDS�&����_Nr��4r�H��P�<<����b�������/Xp:�J=���_7���6��m���j���NzH�6+��������v���e��]�p�UVr_G3�Mw�������\rZ��r1�,P@\'�\"��m}�>���f�w_�������;l��Il���ucp�`���o��hT��;�IO�0ʖ����|9\r-��&]�I�D�뾮�4�o��J��k�dA�:A�\"��d��r���װ=\'up)��)\n%Y7����8mPC�������m��ٶ|~��y�j�p��^�+H�ce_\'}$K׷���\n�f�\r�X�?�ʞў���tΓ-+99���	�\0m]�!}\Z~����P�\n\r���:�2���4+�9�{���qn����\'=|��V�vғP\0(������89C����݆9{z���{�=����9�����3��(����#�,��\"\'}^�(��j������T�N��m����Nz�	-kX�w��Vf8�h @]���g�������(����K/��/P-~����1��ZYbe����6��4	P<��-�椇�`!j��u��W�t�)��W��a�f\'�Sn����O�A�?;�}�Q�AǠ��p�Gk|�*���᩵�T�d2�/o����^�?X7\0�ϴ�����Z�=�����]����	�X�:�Vu;_�h+O8�/�d%�/w��\\�ݠ�i��V.��A�����ۉ������/�g����ʳ�;yc&9C�؇�������7�q6n�8��>����}#�-��M0�s�J�<�����ܐՖ˜�9O�3�s�tj���V�&�8��I��V�����Aaˆ�W����/g�{����?}���+t�\\s��>���:�w��4�/NMK���@D�А>+�;��ٍ�d򢼼�?Y�\ZՎ_����<���&-W;�Oޔ�\0\n�*��|�����k~�4~��.�ߔ��y�:�>?�ixg#Ⱥ�����Aj���;�\r?�AO!������/���GQ��g�s�\0t�����Ҟ�=�k*�u�u�\r�D\"���4K�r7i��y�]��&��ie����}��Q��n�=���lj�Y7X7�ct�4� mp���M�h�[�dR3�iX�Y\r\r\rO����nǯ+D�ȓ�b��\r�71����WQ	`�@�s�e�M{��̞=����/��6��,�];eʔ��������@ �BYYى�/~���m��#P\0\0�����\'�������o~ө����K.���Z�`w�=���|�C��5\0s�~��\Z�WZZ�K\n\0�Aj֬Y�}�W�u�Y��}�{��g������9s�^z\Z\ZռC���G�E$������}�0����W���C�����������68����\\���_J�#@\00hh���M�Ϙ1#p�!��;���Ձ����w�RN���N�:<^)lց+o�;���D���<�IO\']�\'��f!j����5��j���?����@�E�o����7����N�{��勬�J�#@\00`͞=��W_}u��z{7OQQ�s�9�:pg�y扽�v���Yt2��h���f��?�>G�J��׭���g����,��M$�&��;�����Ph~g����6X����~\Z� ��������s��r���V��2�m�����>�\r�a	�^���^xa�ƍ�mذa��[��4448999�=���ý�����Ç�ў~�^�wj\r\0z\'<�<\r�����s�=7p�7ƾ����}������*i᱆f���p���줧���I�M�߽��S�[�_�n��)�����|�@`��G��g��\r����[h:��] �)����p�u�꿜�{��M�:u����IV��q2�m��!n���_{�>��E���u�\05\0��o���\\u�U�7�|3g̘1NII������s,09�`б�{�w�����������O�9s�+���U���o������]u�<�~�y��6gΜ�\'�|�w��z�-5����s�s-�Ύ:E�ZT�Y	������:���V.s��c,,UZh�������S\r雵q��[�����\r��BM�G^��k�����o[F[mtC��H�(�枪w�c\r�=����k�����<\r�e����\r������Hd�@^\'�V�Z�����z�ݞt���X�w~��8_�җ�O~��Z��v�}�qt�Z\'L�t�M>�0|��m��~���y�\0@�s�9�^~��4dhW�����?D�9[��x[^�m����Μ��o�w�N�Ä�	O��U��u^������<���Y�s�v�E�?��vR�����O���6����Q��?du���D+C:��%���\ZO��%G�����9�������<���s4\rg ��khCb%����/^����~��(\0��뭎[����ܬY�v��������b�����\Z2n����?k�w�F����ћܣM��s�:��|�ݾඓUY����5{��?�?�C~��W ?�=�>faaaj��ѣ�#F8{��{�9�7o�T���O?�<���·~���]��>�3��(�@eaxz�\'���c�~��:�|��S���>Z������N;�Lj\0�F��ݝ�ev��;���!C��Cs|�Uu�J���z�l�y�3�	$*�D���������C��t�(���}>ߓ�N.*))�ɒ6��9�mSz�m�?5�w�ܕ�f��s���?��O�_��9w�\\碋.r?���)\"\nO��F<}�+_��>���E�~�&�X�3(��%:�wtX\0\0 \0IDATt��j�s��\\���?�i�?��BԵ��O�����I�����y4R`֬Y=��v�{�u��,��Q)9�:��f+_rO�g�uv^�\nwH�WwH���k����6sf�A�%�bYiey;�ߧ����1wg���CN��P���t�i��T�Q0��k4�D�4��Б)=_�������I��\":�iŊ�Ϙ1��+s{��.����v�m�����6\0t��y���o�+�P��m����+3�׻AH�:e���Ľ�(�����f��I_��u\Z�gAJ��H\'=���7�˂6��Y��Q�b��m�O�;�}j:���m:bUb�+�u��蜧@ �+/<x���W\\�S���~_u��nH�K΁��m��+��U�<uב��t$���|�=��3��~�Z���NV�1cƎ���\r8�3>�\\\rs��	��N=�ԏ<�ej6UuB.���a�_����n$y�oU��Z:��;\'Ja�f��1��a�	+wV�>f\r@_�Umm�ҷ�~{�~�_?n��N��lv��+�d�џs۟��-�\0����j����;�a{:�t�y����Y\Zާa}\nR����J]��n�:�9�@e�e˖ݩ��u�RO:��c���^0�\0�GG�������\Z΢Λ:��n�����8��ێ���ǜiӦ�:nwf�����tq(Q���t�a�γ���*�N������p���lb-@_�A�#�5s�L�W����������ة��mkݶ�Ys�ץ�05U��\'\rL��������4j*㜨	�I��:�T[[[\n�vj�=���O��m �dB	�/Uc�NX7П�!��������}��o��vܷ�����/;�>������wg���;f����q��s�GG\ni��\\��=\'ڃK�A�m���tGO�:wv�^k�z�X\"�O{:\n��\Z��o��FNw��ݕ�c�:t�\Z���t�}�}���fn9���4�������\r6�������3M���ߺuk�?���ζm�Qt���;z/>�`�w��hh���	���J���j�*������R�F^^�f��Z���<��CNcc�.����;�����VUU�����,��z����o�x����7�\'�pV�\\�S�:�/���;�>�����u�];��z���f!o���;�/n��wu��Yg�����۷�>�w�yǙ7o^j��G����Z�]U�g��Cר���N������H�#���m��yn��n;���4��\Zm�����h�N�:U�\\�e��\nP=Aa4�\0��>�_��^xa��SW�+諸�\"��&����������Fa����6wi�PQQ�ɿ��h��<���\0�N��O~�6w̘1�u�]�ӗ�^�3r�H�)J-����s�=��]�|�s�����?��3d��SNI=�nH}��{ｩ��Rh��~g\\��#:�~��=l���u���k�?�����*�����S�VAFAVu�ف��z�C�G=�w��ݎ:��O������N����[_^{�T������HN:餝�U���M}�v�a;���\n���*p�=>ҁl����Th��[o��#��Ú�l���۾X]��:4���m�^�mW;��c��@6l�c�۫��z��.�|���/;���gv��k֬Y�i�G�b/xw�_w;��Rm��)�����~���.\\���׿��Z�,X�j�j����ҥKw<��7�L���ڱ��}ީ�ӭ6�h�\"��?�9m�6�Ϩ�W�S��\'yG�3�,v\'\r�lp\'g�:�a�,�q��q%%%��7���/�����uǝ��7�#����g_(�m����zY�^T�˴�Q���q՗��G�N��Dg�!��6ګ����r���;*�/�5k֤��/D�I�&�~V\\\\���m����aW����+?���7Uϱ��7n����޹t�}�����O>Y�S����^6�ӭ�8����O|bǗtG�O?�/��l�8�֍�����ݹnx��>�L���c�篿�z���ǝM�6�[}!�����������JfǬ�^i/���.S��Z+�G���S�ӎ�_~�S[[��^Uw{���h���F�Q砃J��(���^;���H�����?���]����~W��fh=�r���֡\n[�޵�Kծ�/�q�����F��w��T=�M��P�\n��;u������z�w��w�yMs�̹�:pS��B�=Z�M�I���c��ٳg���k(����v���h]W;��R���B;��6��ǬM�����w���ԶT;(�}�������m�C[�\r�˨���N�T���׽e��Iz}�Wzw�E��\05�ٗ������|�3ꕍ��1��(���m���C��:thueeeCg_TGt!8�\0��� 1q��_���*o#[ZZ�Z��=m��/Dul+**R���;�#:�/I}�{_��kO��֭[�Z~��wSz=�=�:���:���df���������w��d����=o���[7����m���Y������=�裩�r��?�1^3i=��0�C��N�E?��#���ǩ����?��:\"(��rK�#�IW��0aB�=����3�<�u�Q;?��cw,+ܫC�M1�P��-Z��6�>�=�;6���ț��NfMMM*�@{dl_޴���v���uH{�ݎ[�.Щ2:�ZG�՞%��=�����?���/|a�.�`���_�_:p�������y��RmG�H�Am#uX���͎���p.����M`u���K�PQ��*\Z���dz�F(�i��������h����^��ﾛ�{�a��d�j\\F��G�ĨQ�2����\0��nݚ��ݛ>���}��5ZC��W��\0���,�P�x��3��w����T�S_��j��#3-�����(A&���u�=�8��ԧRc�u���_�:2�η7�j��3\rԗ��P.^�xGxQ���C�@�=�/�L�c酟�G�2ϋ����(�/���uHG�&ۺ1Y놽�.��!�/��B*���y���h��y{��C�O���+�i���Q(�+�N�>ݹ���w\n�N�>��_�ZO�\\\rQ�����~��C(4�P�3q���O1�N@�gZ�t���^��j=֞|��N8!�:\n��wdѺ�^��G{B��e�u>�g}��zw���<�#�#\r�;?��h�H������;k֬���u�>{���k�u�\r�ڑ�u^;�����D�SU�葶��	��O�vJ������v�M7�>�3�<�9�#R�Y���]�Kj�\nM�(=O2�@���F�6h��Ϳ����X\\ҏ��GhDOf�I�]3dOj��#	P�qZɽN|o��54�\"nY���g�Q�P��ֳ:�\Z.g�T�����8�<�s�=7����>��ϧ���@�/�.�(5�C_~�˩ࣱ�*zm����I��#����=�\Z¥/wu4���N,��2}	k���ĵ�W���<��l�:�����uP8��:��uC��uDQ��R�\'SGxԉJ}�[��2���T��!A�{���N@��Ku3\'Q�W���̽�^h��KR��zGWu�Ka+�¶�O��3g���~�_L\ro����R�f��,^7ڻ}mur�N��L�ͣ��3����~O<��N��q���������ׯ�ڟ�+��dEh.��<~��ԶY�4M�2%��U��<��:��k�(@�S��#��ڎ:��\0��Tjk���i���p_g��]v��뮩�[�lg_��r�,0t�Фu�}��;�MK�,a��{��m����Qi�q}����SǠ���Rc����aW�B��}\r��!\r�M�����}�)�)�������h��\r�:����U���οї��|j8���m�����Sg���g�⺑�/����e��F_Ckt����u���8�X����_�c�rG(�k��:]\n�:��Xo]h�M�ύ�9wZgu��Y]�У=�ޞrB}�ڦh9s�_�����?�>k�:�s��I\r��qu�����u�;ס�:o/YP�muu��|�����ꨴ��N�~u�u>�Ν����_{�5M�����~����6��6؎�fǬ�:⣝n�6�v3iH���Z���m�$ZV{а�̐�#Dzmm��49O�(u:3\'��om�6�;m�ޗ�����n_�jo�69�&����d��������9Q����\n=k����F{Ho����n��e\r�!\Z�^ћ�k(jmC�]����P/8���v�1u\Z,d>���\0�����=�\Z�!�x��w��дaUh��E_�-]��[��Vj��y����kjJMX��˜�/s����E��Y�l�Б�+V�v����k�%ߑ��\Z����^x�=�nh���\r[�^�/�n[7<���N;-��!r�C�D���#��<�4)�yG,�A���:x������,�\nQ��R��	�:B{�w��[�Ff�W��+�����]Ӳ�j\r��p#��]��u���\rۗ�֫��Cz��K.yf�ܹ���GB�uDG.����H$R�A�B����=�^3���_��vt��z�\r�F�x��-[������z�΋/��Ӻ��Z�5��;/I�Nk��������>��ڥ7�O��V2w����F�6x��Ӑq�G��9P�m��m^�\r\r\r�Մ�C���\0��ϐ��&@e�#F�b\r{to(�,�\Z�>�׵�]{1Ճ����cJ1�,>f�����2;��#�=Q�4��}�zt�BG��qm�H���ih����8s�U[�Ґ�����q��;�\n}�4��%��2\'����>p��aG�ze�hNG��z�V�9ӮƝ]�]�$�:�:�N{���7�|��{�%iX��y�]\'�+pe�:��^��������iSj��7A�:\n�:�sE�!�)�.�!k/��9��͛��n����ι�lc�{���W�k��ޓح�����s���}t�ڠ7]��\'�`k�I#�^j���w\n ��Q\n8w�yg�<Bog�n�\\�������v�6��w����������H�!������h�}I;3��l��j�\0��K/u�Et3��5(���Ç?a�њ.������>��s36�K�<`_B�{j6\'}�z{�4�Cӫ��*�Qi�Ȃ�L�蕮�/�ɓ\'��h�;�)}A�H��P꼙�P�|��Ԯ�f{�D3N����߾��o��Y�O�	}?�Ȑ�\\7D{\'�N�:9�y��Dwu�I�;�C�����Ǝǵ��zꩩΔ�e�(�>�)�u�t>�>}V�z��p��G��;����t3�M��+ޜ7S�N�W�C>���(jx���j�uu<��g����C�9,���d�]�ޙ�~����4�E��j�\0�zm���1��4[~�ܹs�}�q�flNCh5�UAH�����M�:GTAEt4JGu�3R��imǘ��::�P\nJ^�oBmt΢ڣ�O[�\r���t�S��������5�4��\n]�9¥�/	P���-[���)������t�&�n���=(�CRm_Z���=�\'S�i(�n�P4��uhv4M�=�ڛ�/`�ԗ�&c���DG�4V^���Z����\r�����liȆ�.�4C��!З�~����}/��Dh���ܫ��Z\n`�:�~��޵^_7T�:/��p5J\n>��!j�\"�Zo��S����(I�v�\\{յ�Ի��^_!W�g��\':O���/~��yW|�:	Z�[Zo<�[�k��ojh����N���R�.[;uݱ�g�R��؏~������)�*|gv�4�R�����Yu�5���!mM)�!Cs���K\'��Eǭ/�`+;�?��O�e�B�j���,���s��\\j��M#�jWj��d@�#�:ꯀ�!}7hd�7tWC�Ԏ�����Y�������Nm�_f}K�D������������=��s�1��$��a�$;�{��N��ٮ�<�^�<�Ȣ���:\Z�~����P(t��竷ƿ�3{2}�Ѥ6|]��: �}Nw�}ik��:�75���Y�z�jN�<��#}e��:k�hggϱ�̺����/׍�Z�ZRVV61>p��gim���<4��!���8@�\n�#Do���\\�wu�[�a��d�\'G\"�e�m��m�C[�\r�6�u�kmY���eM����v�F�h��ʾ�_v7�@e�-[�\\|�9���sz�(���� k�?���\Z�U}�(��!�Ns{^���NsG;��B��W���Fo�Y[�sw����}ѡ��uh��ŏY�����[:cƌ`���T�<��s\n5L����e4S�έQ@VgZG@4}��k����[��6��\rֶF̪:���T������ѝ�B�<�����\'�_�z ��~Y��;�ڶm�ߴr��9s��k�w7n���\"��c���<�#��Dz���O�馛\Z4ƣa+�@��L��IS�g��0\ZM�\r+��V������@@�R��(Z��u.�ε�P��!�7�|s���;ҹr��/9�E�l�r�ҥK�x���4����^��w�=��q>������Fj� �iԴ���P�X��3����o�x���s�9�����ͻ�[[4����y{��q����h���+:�o�&հ:L]P�+Ӛ+<YK���kް�mֿ�>P����\"�h���>�n+�{�}����O]{��l�e���6�A�Њ뇜��;����3/��D����n�����$�c/�:ns���!C�\'�}mPG��{�n��`h��_&�IͶ�\n7��W�i�]g��~�$V�^��;�_�1����,�p��E۶m�q饗n˼@`W���\\���ĭ�r/���VtѠJ+uN��	\nR����R�]� �i爍7�x���>X�j�*���ޥ�zC�l��=��Q�w5D\r�6h����M�B��D]|��΢E��_�Uz�&��袋2�<i���Z��\0��le��-[�L��O�����{WcV;i�m*������t�5�k�]\0��$+���9O��\0���SV�s��CUX��ʴ���~��w���ʞ�Z竡���Sh��vg��\'�!��F�U��\r����J;\'�S��Ήҥ]�:��%St�5]�k�����K9o�<M�ߤ��2�y���N��K΁��=�Ph�m$�\\�bE�駟>�_�°v�zã�>�������8Z�<1l� 3�I�Z�#��	��*�:+yN��.���i��8��4|�:#�̙�d�̙�}�_l�Tk�\'�3l��k�ߥ\rv�i}�۽������Tم�3+u��@�_��{OA��|�V�ɶ�8cȐ!E�����0aB�0d��������_߼y�5kּ�r����/�x�5]����x|!F\0�ֹ�?t���uDJx�~?*HMt�m�O��q�~����/++�4w��eցs�Ӂ�1�N�Lx��h���_���m�N�m[I2����9���������ԩS���_�2�����~��˯1�{Y�Њ�����n�\0��D�y�_�ǻ��,+�Nz��x�g\ZΧ�O��2��ն7�HT��۫2��k(�:p?��ϗZ�����=Z{����̙���T��݃6�=�K��-Hy��<w{�~�&����\'���ҿ$@\r �-Zo77�\0�3͸w�/�x�+�L�2���N�|(]�\"\'}�Ɇ�^���\"���q;����-u���p�ܹs�=��r�!Û?ǝ�+h���uY\0tc��\rҿ�NL\"\0t�)l���\\�;���\'=��T+�����zQO���D\"Q�ڐ\r%jll���7��{�g�f�,s�/:n@Ϡ\r�\0\0@�)��;���餇�xC�2),i8�t�y+�z�P(t��>r�D�VUUmk���n���t�M���~�m��q����D\n\0�]�w��3yBx��nvC�����#MA��x��z���r]|�������4�с��W�ZO�\r�E\n\0�fr�\0���\n�<��ӬT[�ᤇ�M��=o�EC�P���u��\0/��4���)�=��z/\\�	�E\n\0��)��(�:F#��D��|����इ�h�d7Tɦ�^���TG��*�%��;���μ9��`0�1���\r� P\0\0��nuÓ�ǹ��I��4�ʛV.u��7D�I3��\'�^9lذ]y���������C\n\0�4�ˤs�t�)�\rM�8�k<mr��r���Hb���v���{z���q�:_\rT5\0�\0\04i��4i���N�<(���\rA�$��-�8��&T�2gܳ�txUUU�*\0\0\0�LG��ϸ���k?���L�z��I�j����d29���:�\Z\0P\0\0d;ͺw�U�^\0\0zIDATK��t�I��Q(\r髱r[{_0s�=���ŢT3\0�\0\0�v��D��Ԓ+��t#NzV�]ʜq���7�B5\0P\0�l�	\"4\\���Z���[\Z���yN7Z�V5�qoU0,���n��\09T\0 ��(�.��q\'=1���i�����l|#ܰT�>_ϙne[[/���p��:qR̸\0 @\0Dx*����VYYa���B��������1�d�\n`v{�E��S�\0\0C�0�Vh�?���DE��9��I`�@O���#D���Xy�I��g_��S�������c��*>1� m\0\nV0|�wޡ\"����~[��a�@�������z4��<+�w\"<�L&�K}>���]�F+��h��A\0(h����-[�P�@<�j7լ�uC���]��Z�p;\r�����&T�������(<�b������|R�A� \0�����7n���u����U��[o�$�{Y7Ћ��;W�:�IO��=�����j7l��ill�Ό{�A� \0��}�kOۗ�_7l�@e�����G�s�p�G�b�@/��\'���IO[ަP(t���;M����󭪪�m|R�A� \0����i����mݺ����7o�ﭷ��VSS�L�\r�u�ٶ~����\Z��J�q�6H�+�\0�7�t�IO�����k���C��Rz��y���E�����:j%��`݈����{+�=��h�!>)� m\0\n���w��ҴiӞ}���\'ٗŻÇf�TLϩ�������?B_�\'N\\κ�>X7:�4�����4��-�n䣢\r��0迤�N��l˖-oذaxCC�?�~�o�С�|Yw��#��[o=��?�����/������fÞM֍�Y7^~�������|���9�����nhƽ��\\]t�wƽӭs��h��A\0��V\n��#�<2ξ�5�q��b+Aj��4KYM4\Z���w��s��2��f�`�pׇ{������巻�F�K$_`�� m\0\n@��:u�A�	�k��߬C�����(�S�\'�q�nn�����/����Z\0tC�\0t��ի�]XX�3�����>VN���g��>n��������RYY�D��m�)�L�x��R+\0\0�^7f̘?[��d+Û�H��+Vαu��\r��1�������ug�;3�-�V\0\0��>\0�\"OK&����:�����>�bx�\r��b���qo�\0�,�@����-,,�EI���S?ᤇ��m��XQQ����Q��	�qo�=��Xh�`�`0xJMMM#5\0�,?U\0��$�I]ݾ���=���D6Qs�)��ߕ�&�b��peee�\0 @�b��*�.i���(È�cB�P����lq����$�\0P\0��F�+�	}���|��ܪeQ�-<��V\0\0(\0�΢E���͍n�5��s��~�zJ8���|\'}A�ٱX,J�\0\0P\0�-Hs�f�ub[<���B��)t����<��+lQ���x<~�\0�N���ۭY�惢����wZ��*+c�L�笨���t����`SS�R[g!����w���L�\0�V��#\"��B7,y:�)~Ӗ���o��g���&R[�\r\r\r:��֫�>��D&�\0\0��@�1�h�iZ�������4���h�{��|Jaa᫵��5�:+�c7�q����m��_�\0\0\n@V���[_TT�o�٢��u!ӑ#Gޗ���)�(+��y�Y�z�ZCG�B���o%��y�Hd1�\0�)L#��;�W���\r��7�:�7Q+���3�n��2��m�ϠV\0\0=�#P\0�TmmmuQQ�[ԹP��4����7Q;hKEEň����mQG2����I:�I�\0\0P\0z�Ze!j�-N�2>77�����t�і���*����x ��ޢV\0\0(\0�%D�-((x���`w\'X��O�NP;h.\n�`7V4M�ёHd-�\0 @T����1v���dRG��������Z�z��AFx����5�-p�\Z�F�V\0\0(\0���ի�EEE�����9η�ƌ��5k�gʔ)�H��8��U�n�V\0\0(\0�Zmm�&M1��_bw�ڭ���=����4㞅��8��u4���d#\0\0\0�5k�l+..�jllT���u�ˊ���l!���|***��.��d����D�[>� ��\0P\0��#G��k�=������C�,D�l!���������kAz���?2�q4\0@���4D���.f�I�C���[~�B�����P^^~��lQG���F�5�\n\0�\0\0m��toaaa��feRAA�����f�����~�_G�r���I�X��\0\0(\0hg�����}>�QV��@�;r��ǙH``\n��:���}ֹV�e�=\0\0\n\0:HG�t�-e�d�=��|qq�555����QQQ1���q��O��U�`�>c\0\0\n\0:A�Ht�A�X����Up�݁�������v{��R+\0\0\0tR]]�K���O��1Nzj��B�fj\'��B�+-4���q��H$�\n�\0 @@�P|p�:�\'���[�4f̘֬Y�������4��c��B�q�h�Yj\0@��n�z�����\Z\'�݃�~�wƎ��=�v�Kyy�x����O�Yx�R+\0\0\0t3]p�BT��(u��655�,D����v���N��2�|�GZx�nܸ�bfW\0�\0�gCT��?,��8{(TXX���(.���UTT�s��I_(�:�H�|��j\0@���\rQ�uuu1N9v���$[~�B���c����ۍ�c[o��說*�a\0�\0��X`z����5[<�I���Ǫ�������\"��w�-n���G�b1�]\0P\0�!�y\r���a�#ͣ�W���aMA��O�d2yr4\Z}�Z\0�\0��BT���9��a_����Lqq�\n\r��v�֔)S�555����v����b��\0\0\n\0�>D�)((��u�\'���Db��1c��Y��j�o�������O�݅�x��\0P\0�O��խ���:�:5���UTT����{�N�Ҍ{MMM���!VV���e˖f\0(\0�g!�1c�D,DM��������+,Dm�vzO~~�<�	Y��-X���\0\0(\0�֬Y���C�566�8�# ���������y���gYx��-���#��Zj\0@��~L�3fL���+@\'��i�~o!j��s���&Z�kƽ!�N�F�˩\0\0\n\0��&�(..����1��7�B���Q���v���p��c��:j\0@��,���-0U��݉V&��k�����>�{�q��P<?��\0\0(\0�R�/**z�I_+�;\nTz���cǎՌ{_��.�l�2f>\0�\0 �C���^��㭔��>���HIׄ��k����dr�;�^=�\0 @��Q5��f�\'�|��rss*..�_C���N��i����&���\"��*j\0@������|�:,�H�3f�RM:A�fܳ:\\`�Awƽ�R+\0\0\0@uuu�u��$+�X\08V��X��ܝv(--����Vw�F\"��\0\0\n\00K�u�(\0:�2�IO.q��v�O�nx�|2�\\����<2\0�@�\n\0࣪���Æ\r;�u��h+O���R3���t��[Y����WWWs�\0`�}�Q\0в����H�A�X��RXX����Q;;�B���9V�Yx:2��D�\0\0P\00�h	L1N�,D��2�������u�NZyyy���f\'=�a�����V\0\0(\0�,0ݧ����VB�^���:��%\n[xҤ�qoz4\Z]��\0 @\0���������䂂�7��������~��mq$3�\0P\0��B�󅅅�*D�zQ�<�<:�f�+))�>|�}�8���`0x*\0�\0\0-��\ZN���|e�=��|qq��)@|�K_�����b} 8n��o�f\0\0P\0��BԚ����[��wK$�ǌ�T�N������\"��/��m�d��H�	5\0\0(\0@�4�yQQ��N���C,T{�A�g!j�@�����&���;wƽX,V͚\0\0 @\0ڥ��vSaa���hj���ɺo�oh�k(�T���p+�E���X\0\0(\0@GC�����Hcc�D�{���.�k�o(�cEE������OYY��g��3\0\0 @@7���i3fL������L&�\n\n\n����{i ���ͷ��)/���-[��:\0�\0\0�4M Q[[[UXX����&X)+**����f��\n�����-n��x���i\0P\0�na��Q	[<�I�{�{6�������m��n��F���	\0P\0��QPp��c��`�>{�:���p8<�n�L&ώ�b��d\0(\0@O��g���Vۢ�5і�#G�|\"&_�:u��MMM���+�Yx��O\0\0\0�t�Z[XX�T2�L��=����������4���\\ZZ�k��Q��7�nk,H���\0 @@�Q�|��n�\Z�H$�[���!j�ر�,<a�k�~��Xl3�\"\0\0(\0�5�W���|\"��C\ZKƌ�b͚5�������������D\"���\0@��^��Zh��|��V���������������~e����aO+��\0\0 @@���C=4��ب�\n�L.((x���|_������\n[̵rU4\Z��O\0\0\0�������#G.�������w�w�A=c!�>\nO��4��(+K����l�)\0\0\0\n(���KG�!jJAA���ћ�$g���UzV�M$\'>���\r|B\0\0�\0�߱�Bٵ�#,D��c��ꭿ?~����f��x �F4\Z�ħ\0\0\n\0�s������-o�X*=��7\n��n~j�1�L�D��i\0\0@��lQ������&jh�y���E��Tb7����<=\Z���O\0\0\0d����ڢ���lq������6f̘�֬Y�Aw�����<����-O&�[x��\0\0\n\0�Nmm���§��p���@@!jiw�(wƽ�mq���^�uf�\0��T\0�/�h����i��d29��3�NSw���V�n���\r�����Fj\0�|�R\0���^�:^XXx�-N�2��	cƌy`͚5ou�5C��\rvSae}\"�8��{��@M\0@�����v�������{�ݖ<UWW���I��gV4\\��ŋ�R�\0\0�\0`@Y�fͶ�����F]�� ��7�B�_:r��p8�ߍY�θ���\0�\0\0RMMM�ȑ#���~��b!�;���Y�v���Ph��<`eo+s,<]G�\0@��M3����.�����W,DM��w5�������qoe0<���F\0\0@�����\nN	[<�J�-��c���ܢ����������.�J\r\0@�����`��5[<V!���`�>������9����e���d2������Xl=5\0\0\n\0k�z����o�x��	����߫!zeee�~�|�Y���ŋ���\0\0 @�`Qk,D=e��[�H$ƻ��~N�v;+\Z��AM\0�}|T\0d�p8��L&uT^�Úqo�\0@��S\0��\"���D\"�U[\\�>��.�f\0\0�~�����bDCC�Y�@�rѢEL\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����!\0\0\0�����a\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�+�Wrg�\0\0\0\0IEND�B`�',NULL),('5005',1,'qingjia.bpmn20.xml','5004','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"qingjia\" name=\"请假申请\" isExecutable=\"true\">\n    <startEvent id=\"sid-DAA87663-376D-41C0-9BCC-AE379CD4A742\"></startEvent>\n    <userTask id=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\" name=\"提交请假申请\" activiti:assignee=\"${user}\"></userTask>\n    <sequenceFlow id=\"sid-07465691-AD09-4C0D-B7BF-C00E18ADB7DE\" sourceRef=\"sid-DAA87663-376D-41C0-9BCC-AE379CD4A742\" targetRef=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\"></sequenceFlow>\n    <userTask id=\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\" name=\"部门领导审核\" activiti:candidateGroups=\"部门经理\"></userTask>\n    <sequenceFlow id=\"sid-7CDD1FDD-F589-4486-B638-0DF0C64C7474\" sourceRef=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\" targetRef=\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-2D7D22FB-01D1-47B6-8E30-41186EC7A56F\" sourceRef=\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\" targetRef=\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\"></sequenceFlow>\n    <userTask id=\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\" name=\"总经理审核\" activiti:candidateGroups=\"总经理\"></userTask>\n    <exclusiveGateway id=\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-03DC5048-49A3-419B-AF81-7CE996E1B2E8\" sourceRef=\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\" targetRef=\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\"></sequenceFlow>\n    <endEvent id=\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\"></endEvent>\n    <sequenceFlow id=\"sid-B0B2603F-8019-4E40-8D0D-2E6B9D27C7F2\" name=\"不同意\" sourceRef=\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\" targetRef=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${agree==0}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-6BBA3957-5CD9-4E22-9B28-839F10C9370C\" name=\"同意\" sourceRef=\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\" targetRef=\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\"></sequenceFlow>\n    <sequenceFlow id=\"sid-A65821C6-6A2F-4F60-96B5-B50D4C76FA8E\" name=\"同意\" sourceRef=\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\" targetRef=\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${agree==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-28FEE811-41C3-4D04-9A83-E7CDE2E436AE\" name=\"不同意\" sourceRef=\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\" targetRef=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${agree==0}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_qingjia\">\n    <bpmndi:BPMNPlane bpmnElement=\"qingjia\" id=\"BPMNPlane_qingjia\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-DAA87663-376D-41C0-9BCC-AE379CD4A742\" id=\"BPMNShape_sid-DAA87663-376D-41C0-9BCC-AE379CD4A742\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"105.0\" y=\"183.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8334C397-5232-4177-8094-8DE1FEF0431D\" id=\"BPMNShape_sid-8334C397-5232-4177-8094-8DE1FEF0431D\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"180.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\" id=\"BPMNShape_sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"315.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\" id=\"BPMNShape_sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"460.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\" id=\"BPMNShape_sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"540.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\" id=\"BPMNShape_sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"685.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\" id=\"BPMNShape_sid-8614ED1C-9194-4168-8DE3-8BA2805DD804\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"770.0\" y=\"184.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-6BBA3957-5CD9-4E22-9B28-839F10C9370C\" id=\"BPMNEdge_sid-6BBA3957-5CD9-4E22-9B28-839F10C9370C\">\n        <omgdi:waypoint x=\"499.58715596330273\" y=\"198.41284403669724\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0\" y=\"198.2283105022831\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-28FEE811-41C3-4D04-9A83-E7CDE2E436AE\" id=\"BPMNEdge_sid-28FEE811-41C3-4D04-9A83-E7CDE2E436AE\">\n        <omgdi:waypoint x=\"693.4495327102803\" y=\"189.55046728971962\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"513.625\" y=\"56.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"280.0\" y=\"172.9669457910974\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-03DC5048-49A3-419B-AF81-7CE996E1B2E8\" id=\"BPMNEdge_sid-03DC5048-49A3-419B-AF81-7CE996E1B2E8\">\n        <omgdi:waypoint x=\"640.0\" y=\"198.2164502164502\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"685.4130434782609\" y=\"198.41304347826087\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A65821C6-6A2F-4F60-96B5-B50D4C76FA8E\" id=\"BPMNEdge_sid-A65821C6-6A2F-4F60-96B5-B50D4C76FA8E\">\n        <omgdi:waypoint x=\"724.6217948717949\" y=\"198.37820512820514\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"770.0002839785394\" y=\"198.0891701657418\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-07465691-AD09-4C0D-B7BF-C00E18ADB7DE\" id=\"BPMNEdge_sid-07465691-AD09-4C0D-B7BF-C00E18ADB7DE\">\n        <omgdi:waypoint x=\"135.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"180.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-B0B2603F-8019-4E40-8D0D-2E6B9D27C7F2\" id=\"BPMNEdge_sid-B0B2603F-8019-4E40-8D0D-2E6B9D27C7F2\">\n        <omgdi:waypoint x=\"471.4571655208884\" y=\"209.45716552088842\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"373.625\" y=\"328.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"274.1923076923077\" y=\"238.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7CDD1FDD-F589-4486-B638-0DF0C64C7474\" id=\"BPMNEdge_sid-7CDD1FDD-F589-4486-B638-0DF0C64C7474\">\n        <omgdi:waypoint x=\"280.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"315.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2D7D22FB-01D1-47B6-8E30-41186EC7A56F\" id=\"BPMNEdge_sid-2D7D22FB-01D1-47B6-8E30-41186EC7A56F\">\n        <omgdi:waypoint x=\"415.0\" y=\"198.2164502164502\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"460.4130434782609\" y=\"198.41304347826087\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('5006',1,'qingjia.qingjia.png','5004','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0(\0\0R\0\0\0��\0\0)5IDATx���	�]ey8�	Adq�X�b�@]Zjm�EmlH�D��{r��\r��	*k��M������V�,�(m�*\"����𗂂\"�EȊ��R�����;v��z���y��Nf���{��g���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�7���ϒ\0\0���,{n���0w���#��\0\0�銢�-�Q��8\n�����x�5^�000�4\0\0�\\�Z�5\n��M�I(788�C_��j;���)����-\0\0`�\n�(:>�\n���^����!�w�G!�(�8M�\0\0�I�e�s��8�q)����y��weY�f�����\\���2	\0\0�[**���p��?D����~��3gn��C��)�\0\0���(&N��Q�?��0���|c|����7����2\0\0�U���{V�lǏ�<�����&���-���&�{\0\0]T�D�����OD�p\n��i���*b]�l�\0\06ɲ�Q$��8c��������o������͚5�Ɏ\0\0���,�Q�)�3&�jfa2\\�V���7���ێ\0\0�Xa�����?��\0���?ˑ\"��\0\0t�t�\"==�q)ק�u�v�^?����<�Z���\0@&��_�`ęY�����������E�eY��\0@�B���_�(L�j��d�<��K���(G\0\0:�0�E�_�¤(��˲��N�]���#~�#���6��\0@�xZ,��׸�������k��O�B��;���q�\0����6\n��dY��n�=˲����֦�uɒ%�9�\0\0�FfϞ��<���(L>�{������(.���C+\0\0�6(Lb�~r�0�\\){���Ξ4.e[��,-\0\0Z ˲�E��X�����z�0)���t_J�G�}*Z\0\04�0�E�_��$����d�W�yf�䢈ov���\0\0��ԋ�8)��\"��-+��9�q�[.\0\00ɅI��\'��$���ǿ#+�����U��OgY���\0\0������w6Θ�K,�_*+cӸ�Q�����e\0\0�Q�Ă����\Z�LV&&��y钯��B�\0\0�QH�!�BzQ*Lb!�o���\"eψo��F��.#\0\0���$����>�BV�ƬY��E��\"�wG�ZF\0\0��V��X�q�������JsD���CN�?N�\0\0z�0��@^��\n�ֈܿ0��8˪��2\0@�&� >&&�(�R���JkeY6=���1�T*o�\0\0�^�q�_.�rYi/Q���q|>8s���e\0��,Lb�����#.J�J�ʲ�9q��qm|�\"\0�k\n��(ޞ\n�<Ͽ�JY��\Z{Ь����\0\0�ceY�C,j���F\\\\���Jg����q��O��\0\0U��b��Fa�ՈW�J�xZQ���%^��\0\0�ڂ�ׅ���/��Kһ��}��xC��d\0��,Lb�� ��tSuY�$+�-˲�Ʊ�N��gϞ�T\0�]\n��Fܓ6���W�JO);�q�d���_\0@K��e>�D,�E꾲һ�\r�IO��6q�l\0\0�4iþX�qw��cA�ǲB�H�=�����hϖ\0\0��0��X|���?���NNK��D;�S\0`*����E��J�����-y���eMĒ,˦�\0\0��EQ�(L.�x��0�6��t�-�����2\0��\n�<�祧2����J��:Ya�E;zw��u��/\0\0��0�Ed5�Έo��ɔ�����mm\0`��I,\Zc�*⊈���T��j3�}}1�hw/�\0\0~eɒ%��y>����J��zY��ݽ-��\r���\0��d�X��0�׫���d�f�v����n�8�Z��\"#\0\0=X�Ģ�h,\n���sY�����w�&yv*��<�=\0��$Q���^ĵ�J�\r�B;Ig��%_�\r\0�..Lb��Eq[�^�o��U�{D;���/��2\0�=��b/���w#�O;zK	� =~8���V*��d\0���X�͉�N�\reY %t�h��6��t&PF\0\0:�0)��<�o�����YRB)�K�F�̲�2\0��I#o��-�,��/��n�x��_G�^� \0@&�`{sķ#nL��H	ݬR��.����8}��O�\0�6)Lb�vp���JO;�׃��^1o޼gE��J��1˲�\0@���M�0�9�(R�e���F?X��\"\0\0M�٩(i\'�e6)���pgħ�,�IF\0\0�X:KҸ��[�쉌�����)�G>������2\0�龒ƍ��N��ħ��\nl��?4�ˆ���\0�$I�N�\nn<2��\n�,��j<��_���\0�8�M�S�Ra��4Q���̚5��я�1�Q����\0\0�AQ�B����s&0i}���S�o��_\0lC�\r;O�G|\'P�L�,�^}욈K���2\00B#��b���*\n��\"ez��S��=��2\0з�r�7����x�-^�%K�l\'+�<�8IEJ*VR�\"#\0@O�T*oh\\b�<��*L�u�0yN��+��t���\0\0=��n���AamcZ�q>�@��c\0�{ł��b�sU������Szqzqz$qz4��\0\0]�R��>��+c��*���	����c��1m�6y�\0��EQ򧱸�\"&��o��D�}kĆ�Ç�\0Б*���bA�;#�\n�lQ��,=�;�sџ�\"#\0@G���kc!sy�ޕ�mU�@����S��O�7�<��\0\0m+���Ģ岈�G�&�����|})��\0�V*��~�PY������fΜ���@�˲����o�~��y��=KF\0����ɟE�\"^�0�޳`��\'�8pz�?L���\0�t���X�,o&�+L��,��`M�b�\0�\"��}#���(R�H��\n0$˲�6.��\">~��\0\0S\"���4�޴��ؒt�$Ɖ�#�F���\0\0��,�?���\Z���	0Z����qF�e;�\00ny��a�%����(���x�e��G�=�?by��\0\0c��WE|5=�\'�H�	0Ic�;\"6D��\0lSY���SaR��&�d����b��=Ƙ����w�\0`s�W�\r�b�pz�s֬YO�`�T��]b�9�Q����\0\0�����#.�x \n��&@3Ÿ3�.��׷�\0���,��E��SaR��\n�U�M�1���Z�6CF\0��4��NO�YqL,v��\r��b|Z�����e\0�\\��;�;�\n�X�0�Q�O�8�.Ƭw���\0t����WĄaL�kb�?.˲�dhg1N=?ƫ+#V��ϕ\0�Q��<��Raq���\"ez�]K����2\0�(��E�[L�kcR_�0:|L��Ɔ��͜9s{�*Lb��T���\'������{Vc��#v�\0hcY��4&�I7��y~���V�>���G̑\r\0h3Q��NL��7�vsRڕYV�nW��ĸwW���t	+\0��(F�����w�Ja��ٳg?5ƿ�G|\'�E�\0h����jL���<W��)����1qCQG�\04o�3&�ϥ�$m\\�0�?��ʷ�{��&#\00Eʲ��p?���89]� +\0OT��v����1V� ^�PF\0`eY���(�M�IL��Q�\0�N��oi�m>!�8MF\0`��IL��i�1y�K\0�5��(��k#�?GF\0ơ^�o��w_p�\r7���.��X�B49V�\\Y�ꪫ~1�����1���`���&�Fo�\r��b|}0�8��#�T*�ג�(M~W_}u}Æ\r�G}T�(|����W^�����XY��U�٩0�\"寳,{���m`|���8yC���#>c�t-\Z`��;s&���]�b��Sy�c�|qL�g5Θ,�\\a�m�f���,&�V��]�<_���/ԪF!]6`�i��	�8�11�qf*L����Z�6C��60>����i1���(VޤelC�����V`}���?�?�x�h\nm�7��g��>c�#�1�c�f�z�0�	��sm��ϩ߶���\"}�>g�j�EhY���?7\n�ğ��mh�Ek�`���(��\"�[i#\\�`�����w���\\r�E�\\���k�\'�������q��\'Sa��)��gjG�E{���4������c����<a��n���5�`Lbs\"�H��d�O4Θ�:��D�P�`|S��8yyQ�Ř��Ѽ`���[�\0��L\\S76nnOOܪ�d���{H\Z��?5\n�Λ7�Yچ��g}�3�`&;5�\\��Z=�(\'��X��	0}��55`#;Ƅuc��I�Q���600�����K�>4�����@��,��c,��%_�h��	�ض`㒭���Iz��������6,�0>냝���1�3�ɸL��\'��T�-M��k&�ɟ\0�<��6���().���9چ��g}������c�G\"�x�^\0�\0�w]��[�\0��L\\�;�˷��;�B�3s���\r�#���`w��<�g�X�&�}K�,�No\0L�#�ǫo��닟x�@|.}��5y�|��T�\\���dSEq��aq��Y��>888��y��������8\"����>aL�3iMn�|���m\'�:��m(P0>����t�$=b>bmY��W\0&������w]��\'^>�K_3qMN<�����?<gE���!(�g}PLbNxM�/%^?��S�;���\0�N�w^�[��9}�nœ�^zi]�\n�A}p��d�<Ͽ�?�{�!@�M�?�y}�]�׿���-N~C��N��ޭ�E���m����i?������G��	p[��y��wmC�@�[�,�}���#\n�3���w�[���\0G���ޭ3�uo��mh-6������Z���g\"�700�\n}��	p���P�Ⱥ�@�6��:0��x5>��`C(�t�Wđ� е�0j�F�yC�CK���>�ʲ��(Pn����Z�6CL�B�\"(S_�4�]�{a���c�e�Q��}�\'+\n�}�A�((B�2��ɶ>o|=��@��.��w��郀	P(P�er�����4>}��\r� ���\"�>��{�B����o��օ�{�v�O�9��j�Z�Ż>88�˷��m���=�����y{�\0�EhM/N�����wq�A}p\"�,����ĺfu��Qln��د悈�\"N�ˈ��K�҆��LO��Ua��/~���;����ԧ�7�pC}�����7֓��aÆ�M7�T��~�����㏿w��G�\0�EXM�7��]ٱ�}��>��G��3gn�N����+\"m$��o���B�aQ��?�S~~�\'n*>���h}��߮��]�z|��gY��P���)+N\Zǿ{��H��>8��g�y~I,��+��7��I/w�/CQ�����֗����]t��Gyd��/Sa2Ҳe������[Φ�\0M�چ�����d�{���>8-��E�^��C���9�E��^l�?���/�������O��Mkȟ��g��ع��k�K�.�W�ՑE��Φ�Pqr�W|�裏��y���p��֣�y�#�x�	P(P��фm�f�f}Ptm�E�\"��Z���>8���((^��w�y�n��zh��O�nx���>�[:s����6��J�o��_�\0M�چ��&��d]\Z�5�����T�={�Sc!��X`ߺ�{�Uߙ���ɢE�6�-�����#�gR�U��$]�5YgN6w&e޼yE#��((��h����Qڳ�о���0��u�M���>8�^����m+��y�ߤ��,���/�Z�x�.�\Z�t�ש��:�r����.�i]���M��L�K.�䑁���M�B�\",�&�.kZ؜�����hH[�w�@���f���v��}pl�8Y9���D���Eʈ3)W[�w�/}�K�O������S��o��N=g4j�F\'}�w_��b4�����7��}=�>���\'=Jx�=\'㽬kk�{\r�\'ť^]v�$�s�%���rˣ�z�h�6��&�҂es��-�6�����������A}Pl�e�P�np�\n���(�(��n�����j�����5��ԁ\"^c4j�F���VF�a����hF#H\Z��>��7�i�����Y����S��LO�\Z�����|�{�g�yf���.]��h@�l�;5�\"��}M�&@mC�hv\Z�e[��.�����û���>�����4>���;��ӧz]9�@yg���N��\r7����뮻7\Z����цť�{g�ػ���mLu���h��--����h����>ػ}p�9��]0��+��bJוi3�a?��}t�c�9汵k�6�@Y�n݆h@��qG��;�;�	P��mhSՆƹ0��i�F�y�A}P�>8ޜƟ�\Z��d�?R�q~��q��V��7n���%�р6�{G��@:�iT�h��T��Ix�ts��,�F.�4>}����xs\Z��П\'���[{����m֗L����(\Zwۅ	��B���6Foy�[�1K\'8�o��wmW5>?K��B���^WZ�w�C=���>���#���3(7�y~�̙3�w	�3(چ�1�m�o�O�Ȼ�c�H�SΠ���>��9M��;�¸}�я6��5k֬j�{PFZ}��\0�0�u�׻�@�6��)iC�\"�M����Y ��=(m�;�O*P��f��=(L����������˗�M��u}��t�VK�[�\\���\nmCۘ�64�wK����=Ah,�v{�W[��N�\n}��9�/&�#�ș��e��ŗ��>([{7�\"��mC�hJ\Z绦��ca��]yU_��Җ}P���JoN������㨣��Ew��X��:q�O�P�PmC�h�m�{:�\r�ƺ@\Z���`�E��+�$k�ǚ������/�$߅-Z���n��Y�w����N̓E�E���m4ٖ����ԣ] \r��(��>8Qi_�����Λ�u���?����}t��?<;�k�Y��ʲ�9\Z��\"T��mX��]ܑ�z�7�=6�@�7�w���\n}Pk�r�P�΢L�����ź��6�죻,\\��֋/�xJ��t�K�n�x��\"T��m���h�����,tƲܖ�]�=�T��@��C���1T@,Z�h�9�-|�	\'<>��I��/�z�}�����y�SR��z����6�۽M�%�@�6,��l�&�\Zﾎ���#��D�~P��s��>���eăC���ŋ\'\\�����SO~��Ý��d.\\��\r6Ljq��\\S��}�~��F`6�6��vX ��N�L��m�� }P�\"E�<���0?t&e��{�7�̉K�z�����<<YgRҙ�T�D�|�	P(P���ļ��/]8{��_LB�Җ���`)]�Gq&�6�HI�����S�F���tC��{NRt���1T����?���_�q���~���˺R�4\n��8���(v����}������]�u����`���o}���#*i����c:;2t�W��+��6a���>V?��C1b����e}��*�ݣJ�l��n���GƲ��׿�����1ݰ�M��\0M�چ��*Y��c��G,p���kWތ��-,R��1�/�?~x�q�{N*sR�R��6�v�i�]s�5�EE�v�ƍ���Gydݚ5kV�\\��K�,�4*�S�IUm�=M�h�6���=9;���~��ܱ^\"ҵ����`��X_6\n���R�t���	H;�FC:.M��Dll4��z�����<M�&@mC�h�D~|�������y�W�u�����>��EJW�A�K0\n���QY��ļ:˲m��X����?��#}Pl��	P(PD,��(�+����Je�	�������`�IqY`4j�F�/�j�ڌ(NV�y~�H=�0���6-R\'�	��m��_eY6=���gL`����F��>؆EJO�A�((��Gy�/�X�\n�q~�t�{���c��m��� `\nѥ���s��/��t������[j�\0&@��!:zq�n�O7��y��W�0�\0�\rm�e�c��8Y���F[}P�h�6����V�����feFZ}P�h�6��V��Ʌs��=�(��\0�\0M�چ��RQ�,��&˲����>�	��mh�,N�D�[�Vw5��� \0&@���m�LY��Dq�!�\Z]�A}\0�	P��6Z�(��ҙ�x=�Ȫ�\0�\0M�چ��2�^�(N��XlT��A\0L�&@mC�h�ٓ��8� >�fT��A\0L�&@mC�h�(L�O������lD��A\0L�&@mC�h��,�eu�1�h��\0�\0M�چ��2Q�����J����T�0�\0�\rm�ej�ڌ(NV�y~�QT�0�\0�\rm��gN�Gq�<�#�>�0�.��2O��Ƙ\0�6D;��<ϗF,K��T��tW]u��\r6�|� V�^�/1ޮm�vms�Ν_��/��>�0%.���7]q���~��GLB͋�������\\��V�\\y_�mC�c�H7ç���<��ȩ�\0L�tZ�bō��u��VLm\\z��j�Z?餓�g�uV}ٲe)ﷷ��m�<ڢm��Gq�&�������>\0](z�_�#.-�����e�v��.i#��>e\0�K�b�ٱ����\"ex�_�t��q�?-6-���ϒ\n\0�.��s�P��c�8�+S���.��&˲d\0��3�V�Dqr�,���9\'��j���l\0\0��\"�-(�Z�,�}�\rnH��\0�[�{7S��ɲ왲C+E�[:s���\0@�xA��dXq�<��6�����͔�5�6xm�b�\0\0�QQ�|�Q�\\\Zħ4>���.��2D�D{;;����4�\0\0��%քs��H�X,���F�Z��j�ΎO������,\0\0=l�̙�oi��X0�J7+�W�b��ey@���i�x�\0\0`���t&%�Q�\r&[%{E�Z_�T��\r\0\0F%݋��II����%���v�*��a�\0����z��{E���&f&(˲�Q�,�8C6\0\0��,��x�gҽ+2�x�y�4bY*Td\0�qKOY��)<q��3�(�;��p\0\0�t�$�EIgS�:�X����M�y��)\0\0L�i�~��3Z�1�Q����d�\0\0`J�u�ѨV������\'\0\0L)�γ\rӢ8�0��YR\0@S�u�-�v�$�,�v�\r\0\0����<#�Ĝt	`�Z�U6\0\0h:��3�,�}�Y��*\0\0��]�c�[��	��\0\0-g��ޕ�5i�Ų\0@۰�|o*���8��9{\0@���|o��||��DA\n\0@;��|(��(PV��e\0��g���E�^ql�W*��d\0��a���S��f��\\�a�\0@Ǳ�|�Ȳlz��g�\0\0ˮ�]Sl.�X�\n�\0\0���u����q�H�x�\0\0]���)��n���rO�\0\0���u����ǱZ����\0@W��|g�V������8N6\0\0�jv�o{Ӣ8�0��YR\0@�,��:ߞ�0YqM�;�\0\0=Ů�mW��IǣZ��*\0\0�$�η��,�Ik�W�\0\0���u��E�n�3Y��\0\0��u�Uҽ&��?/�\r\0\0Ʈ�-��ّ��l�	\0\0Od�������߉=i\0\0`+�:ߔ�]�v��\r\0\0���O�(J�����T*��\0\0��]�\'_�V��\\���a�\0\0cg��IE��(N�G�!\0\00v���.�X�\n�\0\0�	����E��G��H�x�\0\0L�Ώ]�>�9�S6\0\0`��u~��c�#Wk�8�_6\0\0`��u~۪��.i#���q�\0\0S̮�[5-����;K*\0\0�I�:�y��%�dY��l\0\0@�u�	�ɜt�[�Z�U�\0\0�����*�r������U\0\0@k�����{�����M\0\0�D/�:��5i܋�X\0\0�6�k����{v���y�\0\0��^�u>~���~\'\0\0\0�x��]�˲< ~��i�xG\0\0:@��:E�^�{��T*�9�\0\0�A�m��Z�6#��UQt��\0@�]�,����3U\0\0�`ݰ�|��K#��B�\0��ɻ���<�(�;�%^�$\0\0t���u>��n���|O�\0\0�P��:�#?��y�w�\0\0�������ju��c���9Z\0\0��x��i�3]?�Y�\0\0��v�u>~�%�dY��#\0\0=��v���cN�Y��ꮎ\0\0��v�u�,�}�%g��\0���]�0ڭ�d�C	\0\0`�V�:��5iF�\0\0��4{���(Ύ�낾]Z\0\0����:���i��f��\0\0:�T�:_���W��e\Z\0\0���u>�������T*��0\0\00&���|�V��kU|��d\0\0���u>˲��=�G�!�\0\0��Lt���wK#��BE6\0�	��Q�̏sG��K\0�I3�]������<���=\0\0`ҍv�����;k�8�_�\0\0�)��]���.i#Ƣ(��-\0\0������(N.���,)\0\0�j����k�,�Av\0\0���u>^ߝ��j����\0\0\0-S�T���<���\r\0\0������-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���g;��Wǘ�\0\0\0\0IEND�B`�',1);

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

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('5009','qingjia:1:5007','5008','5008','sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,NULL,'startEvent',NULL,'2020-08-30 09:29:02.891','2020-08-30 09:29:02.898',7,''),('5011','qingjia:1:5007','5008','5008','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5012',NULL,'提交请假申请','userTask','2','2020-08-30 09:29:02.899','2020-08-30 09:29:03.016',117,''),('5014','qingjia:1:5007','5008','5008','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5015',NULL,'部门领导审核','userTask',NULL,'2020-08-30 09:29:03.016','2020-08-30 09:38:54.449',591433,''),('5018','qingjia:1:5007','5017','5017','sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,NULL,'startEvent',NULL,'2020-08-30 09:29:52.839','2020-08-30 09:29:52.839',0,''),('5020','qingjia:1:5007','5017','5017','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5021',NULL,'提交请假申请','userTask','2','2020-08-30 09:29:52.839','2020-08-30 09:29:52.986',147,''),('5023','qingjia:1:5007','5017','5017','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5024',NULL,'部门领导审核','userTask',NULL,'2020-08-30 09:29:52.986','2020-08-30 09:38:54.241',541255,''),('5027','qingjia:1:5007','5026','5026','sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,NULL,'startEvent',NULL,'2020-08-30 09:29:57.195','2020-08-30 09:29:57.196',1,''),('5029','qingjia:1:5007','5026','5026','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5030',NULL,'提交请假申请','userTask','2','2020-08-30 09:29:57.196','2020-08-30 09:29:57.274',78,''),('5032','qingjia:1:5007','5026','5026','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5033',NULL,'部门领导审核','userTask',NULL,'2020-08-30 09:29:57.274','2020-08-30 09:38:28.632',511358,''),('5036','qingjia:1:5007','5035','5035','sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,NULL,'startEvent',NULL,'2020-08-30 09:33:22.953','2020-08-30 09:33:22.954',1,''),('5038','qingjia:1:5007','5035','5035','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5039',NULL,'提交请假申请','userTask','2','2020-08-30 09:33:22.954','2020-08-30 09:33:23.083',129,''),('5041','qingjia:1:5007','5035','5035','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5042',NULL,'部门领导审核','userTask',NULL,'2020-08-30 09:33:23.083','2020-08-30 09:39:10.204',347121,''),('5045','qingjia:1:5007','5035','5035','sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A',NULL,NULL,NULL,'exclusiveGateway',NULL,'2020-08-30 09:39:10.204','2020-08-30 09:39:10.210',6,''),('5046','qingjia:1:5007','5035','5035','sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35','5047',NULL,'总经理审核','userTask',NULL,'2020-08-30 09:39:10.210','2020-08-30 09:39:51.286',41076,''),('5049','qingjia:1:5007','5035','5035','sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132',NULL,NULL,NULL,'exclusiveGateway',NULL,'2020-08-30 09:39:51.286','2020-08-30 09:39:51.286',0,''),('5050','qingjia:1:5007','5035','5035','sid-8614ED1C-9194-4168-8DE3-8BA2805DD804',NULL,NULL,NULL,'endEvent',NULL,'2020-08-30 09:39:51.286','2020-08-30 09:39:51.286',0,''),('5052','qingjia:1:5007','5051','5051','sid-DAA87663-376D-41C0-9BCC-AE379CD4A742',NULL,NULL,NULL,'startEvent',NULL,'2020-08-30 09:42:32.495','2020-08-30 09:42:32.496',1,''),('5054','qingjia:1:5007','5051','5051','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5055',NULL,'提交请假申请','userTask','2','2020-08-30 09:42:32.496','2020-08-30 09:42:32.601',105,''),('5057','qingjia:1:5007','5051','5051','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5058',NULL,'部门领导审核','userTask',NULL,'2020-08-30 09:42:32.601','2020-08-30 09:42:53.386',20785,''),('5061','qingjia:1:5007','5051','5051','sid-6372022B-E2C0-4B1B-A535-79FF187B8A9A',NULL,NULL,NULL,'exclusiveGateway',NULL,'2020-08-30 09:42:53.386','2020-08-30 09:42:53.386',0,''),('5062','qingjia:1:5007','5051','5051','sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35','5063',NULL,'总经理审核','userTask',NULL,'2020-08-30 09:42:53.386','2020-08-30 09:43:15.097',21711,''),('5065','qingjia:1:5007','5051','5051','sid-6C276E8E-9AD7-48DA-B10D-FBBF6D2CC132',NULL,NULL,NULL,'exclusiveGateway',NULL,'2020-08-30 09:43:15.097','2020-08-30 09:43:15.097',0,''),('5066','qingjia:1:5007','5051','5051','sid-8614ED1C-9194-4168-8DE3-8BA2805DD804',NULL,NULL,NULL,'endEvent',NULL,'2020-08-30 09:43:15.097','2020-08-30 09:43:15.097',0,'');

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

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('5013',NULL,'participant','2',NULL,'5008'),('5016','部门经理','candidate',NULL,'5015',NULL),('5022',NULL,'participant','2',NULL,'5017'),('5025','部门经理','candidate',NULL,'5024',NULL),('5031',NULL,'participant','2',NULL,'5026'),('5034','部门经理','candidate',NULL,'5033',NULL),('5040',NULL,'participant','2',NULL,'5035'),('5043','部门经理','candidate',NULL,'5042',NULL),('5048','总经理','candidate',NULL,'5047',NULL),('5056',NULL,'participant','2',NULL,'5051'),('5059','部门经理','candidate',NULL,'5058',NULL),('5064','总经理','candidate',NULL,'5063',NULL);

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

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('5012','qingjia:1:5007','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5008','5008','提交请假申请',NULL,NULL,NULL,'2','2020-08-30 09:29:02.899',NULL,'2020-08-30 09:29:03.004',105,'completed',50,NULL,NULL,NULL,''),('5015','qingjia:1:5007','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5008','5008','部门领导审核',NULL,NULL,NULL,NULL,'2020-08-30 09:29:03.016',NULL,'2020-08-30 09:38:54.447',591431,'11',50,NULL,NULL,NULL,''),('5021','qingjia:1:5007','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5017','5017','提交请假申请',NULL,NULL,NULL,'2','2020-08-30 09:29:52.840',NULL,'2020-08-30 09:29:52.985',145,'completed',50,NULL,NULL,NULL,''),('5024','qingjia:1:5007','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5017','5017','部门领导审核',NULL,NULL,NULL,NULL,'2020-08-30 09:29:52.986',NULL,'2020-08-30 09:38:54.233',541247,'11',50,NULL,NULL,NULL,''),('5030','qingjia:1:5007','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5026','5026','提交请假申请',NULL,NULL,NULL,'2','2020-08-30 09:29:57.196',NULL,'2020-08-30 09:29:57.273',77,'completed',50,NULL,NULL,NULL,''),('5033','qingjia:1:5007','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5026','5026','部门领导审核',NULL,NULL,NULL,NULL,'2020-08-30 09:29:57.274',NULL,'2020-08-30 09:38:28.624',511350,'11',50,NULL,NULL,NULL,''),('5039','qingjia:1:5007','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5035','5035','提交请假申请',NULL,NULL,NULL,'2','2020-08-30 09:33:22.954',NULL,'2020-08-30 09:33:23.081',127,'completed',50,NULL,NULL,NULL,''),('5042','qingjia:1:5007','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5035','5035','部门领导审核',NULL,NULL,NULL,NULL,'2020-08-30 09:33:23.083',NULL,'2020-08-30 09:39:10.202',347119,'completed',50,NULL,NULL,NULL,''),('5047','qingjia:1:5007','sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35','5035','5035','总经理审核',NULL,NULL,NULL,NULL,'2020-08-30 09:39:10.210',NULL,'2020-08-30 09:39:51.285',41075,'completed',50,NULL,NULL,NULL,''),('5055','qingjia:1:5007','sid-8334C397-5232-4177-8094-8DE1FEF0431D','5051','5051','提交请假申请',NULL,NULL,NULL,'2','2020-08-30 09:42:32.496',NULL,'2020-08-30 09:42:32.600',104,'completed',50,NULL,NULL,NULL,''),('5058','qingjia:1:5007','sid-FBF59129-4382-4D34-ADE9-1A01E7D885A6','5051','5051','部门领导审核',NULL,NULL,NULL,NULL,'2020-08-30 09:42:32.601',NULL,'2020-08-30 09:42:53.385',20784,'completed',50,NULL,NULL,NULL,''),('5063','qingjia:1:5007','sid-D960ADA8-0D9B-4739-9C83-9ECB8FD75A35','5051','5051','总经理审核',NULL,NULL,NULL,NULL,'2020-08-30 09:42:53.386',NULL,'2020-08-30 09:43:15.096',21710,'completed',50,NULL,NULL,NULL,'');

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

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('qingjia:1:5007',1,'http://www.activiti.org/processdef','请假申请','qingjia',1,'5004','qingjia.bpmn20.xml','qingjia.qingjia.png',NULL,0,1,1,''),('test:1:2505',1,'http://www.activiti.org/processdef','测试流程','test',1,'2502','test.bpmn20.xml','test.test.png',NULL,0,1,1,'');

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

insert  into `dev_apply`(`id`,`user_id`,`process_instance_id`,`content`,`create_time`,`status`,`start_date`,`end_date`) values (2,2,5051,'我想请假','2020-08-30 09:42:33',2,'2020-08-30','2020-08-31');

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
  `parent_Id` bigint(20) DEFAULT NULL COMMENT '父菜单id',
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `perms` varchar(1000) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `order_num` int(4) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`parent_Id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) values (1,0,'系统管理','',NULL,0,'fa fa-cog',0),(2,1,'菜单管理','modules/sys/menu.html','',1,'fa fa-th-list',2),(3,1,'用户管理','modules/sys/user.html',NULL,1,'fa fa-user',1),(4,1,'角色管理','modules/sys/role.html',NULL,1,'fa fa-user-secret',3),(8,1,'工作流管理','modules/act/remodel.html',NULL,1,NULL,0),(9,0,'可用流程','modules/act/reprocdef.html',NULL,1,NULL,-1),(10,0,'我的申请','modules/dev/apply.html',NULL,1,NULL,-1),(11,0,'我的审核','modules/dev/audit.html',NULL,1,NULL,-1);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`remark`,`dept_id`,`create_time`) values (1,'管理员','普通',NULL,'2020-06-19'),(2,'普通员工','吸血',NULL,'2020-06-19'),(3,'部门经理',NULL,NULL,'2020-08-30'),(4,'总经理',NULL,NULL,'2020-08-30');

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`id`,`role_id`,`menu_id`) values (8,1,0),(9,1,1),(10,1,2),(11,1,3),(12,1,4),(19,2,0),(20,2,9),(21,2,10),(22,3,0),(23,3,9),(24,3,10),(25,3,11),(26,4,0),(27,4,9),(28,4,10),(29,4,11);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) DEFAULT NULL COMMENT '账户',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `chinese_name` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `phone_number` varchar(100) DEFAULT NULL COMMENT '电话号码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `id_card_number` varchar(100) DEFAULT NULL COMMENT '身份证号',
  `qq` varchar(100) DEFAULT NULL COMMENT 'qq号',
  `user_type` tinyint(1) DEFAULT NULL COMMENT '用户类型（1普通用户 3管理员）',
  `status` int(1) DEFAULT NULL COMMENT '1.激活',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`username`,`password`,`chinese_name`,`phone_number`,`email`,`id_card_number`,`qq`,`user_type`,`status`,`create_time`) values (1,'admin','admin','管理员','1','123213','123','123',0,1,NULL),(2,'Robin','123','罗宾','2','123','123','123',1,1,NULL),(3,'Luffy','123','路飞','3','123','123','123',1,1,NULL),(36,'Zoro','123','索隆','4','123','123','123',1,1,NULL),(37,'Sanji','123',NULL,'1231231','312313','1231231','3123123',1,NULL,'2020-06-21 09:46:34'),(38,'A','123','哈哈哈','12','213','123','123',1,NULL,'2020-06-21 10:53:49');

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
