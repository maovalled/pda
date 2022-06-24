-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: dane_pda
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `pda_admin_periodo`
--
CREATE DATABASE IF NOT EXISTS encuestas_pda CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `pda_admin_periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_admin_periodo` (
  `id_periodo` int(6) NOT NULL DEFAULT '0' COMMENT 'Periodo ano.mes',
  `nume_mes` int(2) DEFAULT NULL COMMENT 'Numero del Mes',
  `ano` int(1) NOT NULL DEFAULT '0',
  `id_estadop` varchar(1) DEFAULT '1' COMMENT 'Guarda el estado del periodo: A,C',
  `id_tipomuestra` varchar(1) NOT NULL DEFAULT 'M',
  PRIMARY KEY (`id_periodo`,`id_tipomuestra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_admin_periodo`
--

LOCK TABLES `pda_admin_periodo` WRITE;
/*!40000 ALTER TABLE `pda_admin_periodo` DISABLE KEYS */;
INSERT INTO `pda_admin_periodo` VALUES (201301,1,2013,'C','M'),(201302,2,2013,'C','M'),(201303,3,2013,'C','M'),(201304,4,2013,'C','M'),(201305,5,2013,'C','M'),(201306,6,2013,'C','M'),(201307,7,2013,'C','M'),(201308,8,2013,'C','M'),(201309,9,2013,'C','M'),(201310,10,2013,'C','M'),(201311,11,2013,'C','M'),(201312,12,2013,'C','M'),(201401,1,2014,'C','M'),(201402,2,2014,'C','M'),(201403,3,2014,'C','M'),(201404,4,2014,'C','M'),(201405,5,2014,'C','M'),(201406,6,2014,'C','M'),(201407,7,2014,'C','M'),(201408,8,2014,'C','M'),(201409,9,2014,'C','M'),(201410,10,2014,'C','M'),(201411,11,2014,'C','M'),(201412,12,2014,'C','M'),(201501,1,2015,'C','M'),(201502,2,2015,'C','M'),(201503,3,2015,'C','M'),(201504,4,2015,'C','M'),(201505,5,2015,'C','M'),(201506,6,2015,'C','M'),(201507,7,2015,'C','M'),(201508,8,2015,'C','M'),(201509,9,2015,'C','M'),(201510,10,2015,'C','M'),(201511,11,2015,'C','M'),(201512,12,2015,'C','M'),(201601,1,2016,'C','M'),(201602,2,2016,'C','M'),(201603,3,2016,'C','M'),(201604,4,2016,'C','M'),(201605,5,2016,'C','M'),(201606,6,2016,'C','M'),(201607,7,2016,'C','M'),(201608,8,2016,'C','M'),(201609,9,2016,'C','M'),(201610,10,2016,'C','M'),(201611,11,2016,'C','M'),(201612,12,2016,'C','M'),(201701,1,2017,'C','M'),(201702,2,2017,'C','M'),(201703,3,2017,'C','M'),(201704,4,2017,'C','M'),(201705,5,2017,'C','M'),(201706,6,2017,'C','M'),(201707,7,2017,'C','M'),(201708,8,2017,'C','M'),(201709,9,2017,'C','M'),(201710,10,2017,'C','M'),(201711,11,2017,'C','M'),(201712,12,2017,'C','M'),(201801,1,2018,'C','M'),(201802,2,2018,'C','M'),(201803,3,2018,'C','M'),(201804,4,2018,'C','M'),(201805,5,2018,'C','M'),(201806,6,2018,'C','M'),(201807,7,2018,'C','M'),(201808,8,2018,'C','M'),(201809,9,2018,'C','M'),(201810,10,2018,'C','M'),(201811,11,2018,'C','M'),(201812,12,2018,'C','M'),(201901,1,2019,'C','M'),(201902,2,2019,'C','M'),(201903,3,2019,'C','M'),(201904,4,2019,'C','M'),(201905,5,2019,'C','M'),(201906,6,2019,'C','M'),(201907,7,2019,'C','M'),(201908,8,2019,'C','M'),(201909,9,2019,'C','M'),(201910,10,2019,'A','M');
/*!40000 ALTER TABLE `pda_admin_periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_admin_usuarios`
--

DROP TABLE IF EXISTS `pda_admin_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_admin_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `log_usuario` varchar(255) NOT NULL,
  `pass_usuario` varchar(255) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `fk_rol` int(11) NOT NULL DEFAULT '2' COMMENT '2 = fuente',
  `estado` char(1) NOT NULL DEFAULT 'A',
  `mail_usuario` varchar(255) DEFAULT NULL,
  `nro_telefono` varchar(100) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fk_tipodoc` int(11) DEFAULT NULL,
  `num_identificacion` varchar(100) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_tiempo` timestamp NULL DEFAULT NULL,
  `ingreso` int(1) NOT NULL DEFAULT '0' COMMENT '0-nunca ingreso restaura clave, 1-ingresa normal.',
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `pda_admin_usuarios_un` (`log_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_admin_usuarios`
--

LOCK TABLES `pda_admin_usuarios` WRITE;
/*!40000 ALTER TABLE `pda_admin_usuarios` DISABLE KEYS */;
INSERT INTO `pda_admin_usuarios` VALUES (1,'890106527','$2y$10$/KTWocvaXzufn4sE3DB47e39eijZaZK3/a4Vx8lEMo.dqAFlCvnNm',NULL,2,'A','jonandres.c@gmail.com','3719271','CLL 80  78 B - 201',1,'890106527','PROCAPS  S.A.','85B59539','2022-06-10 04:58:51',0),(2,'899999068','$2y$10$69fuendHdhGrIkhH2CSa5O6DAY8KJ.HDeLwqrtmkisnzAFcRPJVza',NULL,2,'A','jonandres.c@gmail.com','2344000','CRA 13 # 36 - 24',1,'899999068','ECOPETROL S.A.','C7067940','2022-05-25 01:40:56',0),(3,'890900943','$2y$10$grxBcw0DgNjPtFHaBtR6NOrqjJgukDEH9DlD3dYYFTxUj5WQ2KBze',NULL,2,'A','jonandres.c@gmail.com','3649777','CL 11 N 31A 42',1,'890900943','COLOMBIANA DE COMERCIO S.A.','1454F8F2','2022-05-21 01:34:17',0),(4,'890900608','$2a$15$1YaQLOuxMGOED0/yHRZxuutnvC5FeWNfsqCR2mzdxYY4qANZPZ.gG',NULL,2,'A','jonandres.c@gmail.com','6049696','KR 48 # 32 B SUR -139',1,'890900608','ALMACENES EXITO S.A.',NULL,NULL,0),(5,'860037950','$2a$15$RS3kUC8dsIyEFe.SZZ8Np.1tlfwsTJj/u44m36sbQZYiXczM0LxTq',NULL,2,'A','jonandres.c@gmail.com','6030303','KR 7B 123 90',1,'860037950','FUNDACION SANTAFE DE BOGOTA','82B1BDC3','2022-05-10 13:12:43',0),(6,'860007759','$2a$15$g1rmEhSEkGRzHm8Qi2165ORrg/JC3OArCk0WpMtCcTeaAbd8bppnm',NULL,2,'A','jonandres.c@gmail.com','2970200','CL 12 C # 6 25',1,'860007759','COLEGIO MAYOR DE NUESTRA SE├æORA DEL ROSARIO','9F0F2BF1','2022-05-09 23:15:18',0),(7,'830122566','$2y$10$WZrC8m4w8x17frmbVNSbte9lS8am2OeEBoDE6ul1Z25ibyjz.Ck36',NULL,2,'A','jonandres.c@gmail.com','7050000','TRV 60 AV SUBA #114A-55',1,'830122566','COLOMBIA TELECOMUNICACIONES S.A ESP.','35DDB19E','2022-06-22 02:00:09',0),(8,'890901389','$2a$15$0Gy3qDNV0jeC43Jl3FzsjudkVngnYo8ozgmigkpCjWdoU36w5XR32',NULL,2,'A','ijgarciac@dane.gov.co','2619500','CR 49 7 SUR 50',1,'890901389','UNIVERSIDAD EAFIT',NULL,NULL,0),(9,'890324177','$2a$15$E/XM.gsKuHpBm0kLnmfzfecqmSprC4noxTSxTUYfEY4snwQL0XGbq',NULL,2,'A','ijgarciac@dane.gov.co','3319090','KRA 98 # 18 - 49',1,'890324177','FUNDACION VALLE DEL LILI','92DFA6C8','2022-04-21 22:24:05',0),(10,'890316745','$2y$10$WZrC8m4w8x17frmbVNSbte9lS8am2OeEBoDE6ul1Z25ibyjz.Ck36',NULL,2,'A','dmsilvam@dane.gov.co','5552334','CL 18 # 122-135',1,'890316745','UNIVERSIDAD ICESI','82933747','2022-06-10 05:34:29',0),(11,'800145882','$2a$15$nPhFIMJOqJ3NkhnloyFQgukdIz6vMOyNWEA2o43i3WAdBQ3IgW8D6',NULL,2,'A','dmsilvam@dane.gov.co','2086300','Cl 98 # 70-91, piso 14 Y 15.',1,'800145882','CORPORACION CENTRO DE INVESTIGACION EN PALMA DE ACEITE',NULL,NULL,0),(12,'890480123','$2a$15$kkQuQ9CE964mof4G6trzqONAb.qwXvSbO1xArQrbXcdd1WSVW/sMi',NULL,2,'A','dianasilva1987@hotmail.com','6641068','KR 6 36-100',1,'890480123','UNIVERSIDAD DE CARTAGENA',NULL,NULL,0),(13,'890980040','$2a$15$Q8oghm7Dsjl/vBXr2uU./.xSPdOH4LikfHFznnxjePVrj/DZqGXV6',NULL,2,'A','dianasilva1987@hotmail.com','2198332','calle 70 No. 52 - 21',1,'890980040','UNIVERSIDAD DE ANTIOQUIA',NULL,NULL,0),(14,'899999063','$2a$15$cfyAEOMmWjft.2WkG4NHBOE39bRrp1XQZcrQiU0JF0lBirDlD/2VW',NULL,2,'A','dianasilva1987@hotmail.com','3165000','KR 30 CL 45 CIUDAD UNIVERSITARIA',1,'899999063','UNIVERSIDAD NACIONAL DE COLOMBIA',NULL,NULL,0),(15,'860003020','$2a$15$EiDqSyQwbRtTQ99/QFuE.upOG4824l5hfNBUkuY/3ZZucCygjEaZK',NULL,2,'A','dianasilva1987@hotmail.com','3471600','Carrera 9 No. 72-21',1,'860003020','BANCO BILBAO VIZCAYA ARGENTARIA COLOMBIA S.A.',NULL,NULL,0),(16,'890903938','$2a$15$IN1w/PGvJMHx7BzLeWLfUuW2Hv3kID87DzDdCra9l4ZaWZfjaxe7.',NULL,2,'A','dianasilva1987@hotmail.com','6051433','Carrera 48 26 85 AV. INDUSTRIALES',1,'890903938','BANCO DE COLOMBIA S.A. BANCOLOMBIA S.A.',NULL,NULL,0),(17,'860005216','$2a$15$7OXDNR73O6ioMex76mlfC.aa0koIM6ugWGZo0cJeVAw/BPKhNhSIm',NULL,2,'A','ijgarciac@dane.gov.co','5713431011','KR 7 # 14-78 / KR 6 # 14-85',1,'860005216','BANCO DE LA REPUBLICA','2099CC10','2021-12-27 22:13:35',0),(18,'899999094','$2a$15$0VvLQieDc0beJ2aQVmvrT.zHk6A46tcMH7aOo0cFB9URPv9fDbjy.',NULL,2,'A','ijgarciac@dane.gov.co','3447092','Av CL 24 37- 15',1,'899999094','EMPRESA DE ACUEDUCTO Y ALCANTARILLADO DE BOGOTA - ESP',NULL,NULL,0),(19,'900494393','$2a$15$hUkW8RDRiZ6WAey.o3Av3ehXmwy5er0kqCZusaBJuOuBDkXMWaL8y',NULL,2,'A','ijgarciac@dane.gov.co','2542222','Avenida Carrera 50 No. 26-55, Interior 2 CAN',1,'900494393','INSTITUTO NACIONAL DE METROLOGIA',NULL,NULL,0),(20,'899999403','$2a$15$wKCkAEm9phV8G1x6xL/64e6R6JubnYbcdx6qSVA0SiUaLN2h2N8bW',NULL,2,'A','ijgarciac@dane.gov.co','2207700','AC 26 # 51-20',1,'899999403','INSTITUTO NACIONAL DE SALUD',NULL,NULL,0),(21,'860061110','$2a$15$Fvwgg8/co7oJZTmaLv6ILenKwkuXFvU95YZP7fkWNm.aBUfkiiWwW',NULL,2,'A','ijgarciac@dane.gov.co','3115587845','AV VASQUEZ COBO ENTRE CALLES 15 Y 16',1,'860061110','INSTITUTO AMAZONICO DE INVESTIGACIONES CIENTIFICAS SINCHI',NULL,NULL,0),(22,'890100251','$2a$15$ItHAaVi2pVVJj7AH9ATPEu5RlynPGXSA.u3pw9R8kT0QQbYN1CNWy',NULL,2,'A','dianasilva1987@hotmail.com','3198700','CL 7 D 43 A 99',1,'890100251','CEMENTOS ARGOS S.A.','3D62BD1B','2021-12-23 22:09:22',0),(23,'890903310','$2a$15$viHvGPAolHL7sdQL9zuRGeJhj4KJFo4enC5lCb2VRw9G/c54YOa7K',NULL,2,'A','eagarzona@dane.gov.co','3567000','KR 64C 95-84',1,'890903310','ANHIDRIDOS Y DERIVADOS DE COLOMBIA S.A.S','A4B7BBB8','2021-12-23 23:57:20',0),(24,'900392611','$2y$10$76U8MhahGsKkHtnHElwefevwB2igFLTaysEWAcX8Mf3mrlNKvROiu',NULL,2,'A','eagarzona@dane.gov.co','5895959','KR 21 N 169-45',1,'900392611','MOVIIRED S.A.S ANTES TRANZA S.A.S','A193C145','2022-06-14 17:08:10',0),(25,'800254591','$2a$15$EQSy25rIUHOKrq1EsMP0zOAz3H33tmfuVQpo40rflAqR8iNaAsxJm',NULL,2,'A','eagarzona@dane.gov.co','6550807','KM 2 VIA EL REFUGIO SEDE UIS GUATIGUARA',1,'800254591','CORPORACION PARA LA INVESTIGACION DE LA CORROSION','0DDAB56A','2021-12-23 17:38:31',0),(26,'890312562','$2a$15$AqQINe.Adu1vV6D9/n7hKuht8OJ6xojSzhNGKTc0.d4aWhR4TQSy6',NULL,2,'A','dmsilvam@dane.gov.co','6876611','CL 58 NORTE 3BN 110',1,'890312562','CENTRO DE INVESTIGACION DE LA CA├æA DE AZUCAR DE COLOMBIA',NULL,NULL,0),(27,'820000142','$2a$15$3462N7SNmXDAirHBkEYjaeTcFEqC5UnUDPs4z.VoFEsK.sHBS.V.6',NULL,2,'A','dmsilvam@dane.gov.co','3202767','CLL 28A 15-09',1,'820000142','INSTITUTO DE INVESTIGACION DE RECURSOS BIOLOGICOS ALEXANDER',NULL,NULL,0),(28,'890900762','$2a$15$sa2gW9T.FPXy7zAo8TZvH.MQnTcXFTFM.pImd/Y5SJRdgORfhnxmu',NULL,2,'A','edwardjrch@hotmail.com','┬á3268500','┬áCalle 73 # 8 ÔÇô 13 Piso 7 Torre A.┬á',1,'890900762','ASOCIACION NACIONAL DE EMPRESARIOS DE COLOMBIA','0ED9BB7D','2021-12-29 00:52:58',0),(29,'900297523','$2a$15$GwfmxJThGGt9lpeWVvTaTu6fyKJknS/jR50ea2DOyOQJr1a/aUMjy',NULL,2,'A','edwardjrch@hotmail.com','2856600 ┬á┬á','CALLE 8 SUR 50 67',1,'900297523','CORPORACION VIDARIUM CENTRO DE INVESTIGACION EN NUTRICION, SALUD Y BIENESTAR','70C0F5F8','2021-12-28 06:55:59',0),(30,'890399001','$2a$15$8vcO0c87yBQMDw3kzOZSUOJuzWA4O/4iI/XhUhUBml6ORjFlYr23O',NULL,2,'A','edwardjrch@hotmail.com','(572) 886 1300','Calle 8 No. 3-14. Cali ÔÇô Colombia',1,'890399001','CAMARA DE COMERCIO DE CALI ','BA165322','2021-12-23 22:33:02',0),(31,'899999011','$2a$15$ZmCsbfR4rK1vLoh45Vq8Gutk5sK1x3kc496wFUC0.84ZAv/UUX0ky',NULL,2,'A','ijgarciac@dane.gov.co','381 5000','Calle 26 # 13-19 - Edificio En Territorio',1,'899999011','DEPARTAMENTO NACIONAL DE PLANEACION',NULL,NULL,0),(32,'830067892','$2a$15$7V8UU7CE5zC/FJZlVsdT.epi1C54gBttfhGybxrxKggPfAGAHYafW',NULL,2,'A','ijgarciac@dane.gov.co','444 0544','Av Calle 12 # 2 - 41 La Candelaria',1,'830067892','INSTITUTO COLOMBIANO DE ANTROPOLOG├ìA E HISTORIA',NULL,NULL,0),(33,'860025900','$2a$15$n6.OwwgTv6K.jlDOT1bFEOJeyPYcT/npJb4RuK7JW/Xhq66kXZ5eS',NULL,2,'A','ijgarciac@dane.gov.co','4238600','Km 3 Via Brice├▒o - Sopo',1,'860025900','ALPINA PRODUCTOS ALIMENTICIOS S.A.',NULL,NULL,0),(34,'900062201','$2a$15$FGVRPrC9Q7X7jfUIldt/puQVJUoRNkIna2xw7QucwCYbgPF9szGze',NULL,2,'A','ijgarciac@dane.gov.co','3792909','Calle 79 C SUR 54-24',1,'900062201','ALSEC ALIMENTOS SECOS S.A.S','8F60B8E6','2021-12-27 22:20:02',0);
/*!40000 ALTER TABLE `pda_admin_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_empresa`
--

DROP TABLE IF EXISTS `pda_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `idnoremp` varchar(50) NOT NULL,
  `tipo_identificacion` int(11) NOT NULL,
  `numero_identificacion` varchar(100) NOT NULL,
  `digito_verificacion` int(11) DEFAULT NULL,
  `insc_matr_reno` int(11) DEFAULT NULL,
  `camara` int(11) DEFAULT NULL,
  `valor_inc_matr` varchar(100) DEFAULT NULL,
  `ciiu` int(11) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `nombre_comercial` varchar(255) DEFAULT NULL,
  `sigla` varchar(100) DEFAULT NULL,
  `direccion_principal` varchar(255) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `telefono_sede` varchar(100) DEFAULT NULL,
  `fax_sede` varchar(100) DEFAULT NULL,
  `pers_ocup_prom` int(11) DEFAULT NULL,
  `org_juridica` int(11) DEFAULT NULL,
  `direccion_notificacion` varchar(255) DEFAULT NULL,
  `id_departamento_notificacion` int(11) DEFAULT NULL,
  `id_municipio_notificacion` int(11) DEFAULT NULL,
  `telefono_notificacion` varchar(100) DEFAULT NULL,
  `fax_notificacion` varchar(100) DEFAULT NULL,
  `nacional_publico` int(11) DEFAULT NULL,
  `nacional_privado` int(11) DEFAULT NULL,
  `extranjero_publico` int(11) DEFAULT NULL,
  `extranjero_privado` int(11) DEFAULT NULL,
  `estado_actual` int(11) DEFAULT NULL,
  `fecha_const_desde` varchar(50) DEFAULT NULL,
  `fecha_const_hasta` varchar(50) DEFAULT NULL,
  `representante_legal` varchar(255) DEFAULT NULL,
  `persona_diligencia` varchar(255) DEFAULT NULL,
  `telefono_persona_diligencia` varchar(100) DEFAULT NULL,
  `ext_persona_diligencia` varchar(100) DEFAULT NULL,
  `email_persona_diligencia` varchar(100) DEFAULT NULL,
  `sitio_web_sede` varchar(100) DEFAULT NULL,
  `sitio_web_notificacion` varchar(100) DEFAULT NULL,
  `email_notificacion` varchar(100) DEFAULT NULL,
  `id_nordemp` int(11) DEFAULT NULL,
  `id_regional` int(11) DEFAULT NULL,
  `id_prioridad` int(11) DEFAULT NULL,
  `fec_correo` datetime DEFAULT CURRENT_TIMESTAMP,
  `email_sede` varchar(100) DEFAULT NULL,
  `nombre_comercial_justifique` varchar(255) DEFAULT NULL,
  `numero_identificacion_justifique` varchar(255) DEFAULT NULL,
  `razon_social_justifique` varchar(255) DEFAULT NULL,
  `direccion_principal_justifique` varchar(255) DEFAULT NULL,
  `email_sede_justifique` varchar(255) DEFAULT NULL,
  `id_departamento_justifique` varchar(255) DEFAULT NULL,
  `id_municipio_justifique` varchar(255) DEFAULT NULL,
  `nombre_comercial_justifique_e` int(11) DEFAULT '1' COMMENT 'Estado consistencia 1-aprobado,0-error',
  `numero_identificacion_justifique_e` int(11) DEFAULT '1' COMMENT 'Estado consistencia 1-aprobado,0-error',
  `razon_social_justifique_e` int(11) DEFAULT '1' COMMENT 'Estado consistencia 1-aprobado,0-error',
  `direccion_principal_justifique_e` int(11) DEFAULT '1' COMMENT 'Estado consistencia 1-aprobado,0-error',
  `email_sede_justifique_e` int(11) DEFAULT '1' COMMENT 'Estado consistencia 1-aprobado,0-error',
  `id_departamento_justifique_e` int(11) DEFAULT '1' COMMENT 'Estado consistencia 1-aprobado,0-error',
  `id_municipio_justifique_e` int(11) DEFAULT '1' COMMENT 'Estado consistencia 1-aprobado,0-error',
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_empresa`
--

LOCK TABLES `pda_empresa` WRITE;
/*!40000 ALTER TABLE `pda_empresa` DISABLE KEYS */;
INSERT INTO `pda_empresa` VALUES (1,'1234567',1,'8901065',0,2,3,'24802',2100,'EMPRESA PRUEBA JUSTIFIQUE!','EMPRESA PUEBA 121','AD','CL 80  78 B-20 2',19,19142,'5554461','3719271',0,5,'CLL 80  78 B - 201',11,11001,'3719271','0',0,80,0,20,1,'1976-07-24','2099-12-29','Grethel Moreno Romero','Jose Luis Rodriguez Carlos Carazo Posada','3719274','0','josrodriguez@procaps.com.co','www.procaps.group.com','www.procapsgroup.com','josrodriguez@procaps.com.co',402,1,1,'2021-12-16 01:58:01','josrodriguez@procaps.com.CL','dsadasdas','','aca la juysdti','CL 80  78 B-20 2 TEST','josrodriguez@procaps.com.CO','BOGOTA1','BOGOTA2',1,1,1,1,1,1,1),(2,'1234567',1,'99999999',0,1,0,'0',1921,'EMPRESA PRUEBA 2','EMPRESA PRUEBA 2','DDFF','KR 13 # 36-24',8,8001,'2344000','',0,6,'CRA 13 # 36 - 24',13,13244,'2344000','',90,1,1,8,1,'1950-12-25','2021-12-17','Andres Eduardo Mantilla','Elianeth ManceraValetts','2344000','','elianeth.mancera@ecopetrol.com.co','www.ecopetrol.com.co','www.ecopetrol.com.co','andres.mantilla@ecopetrol.com.co',5591,99,1,'2021-12-16 01:58:01','josrodriguez@procaps.com.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(3,'1234567',1,'890900943',1,2,4,'363933',4719,'EMPRESA PRUEBA 3','EMPRESA PRUEBA 3','SSS','CL 11 N 31A 42',11,1,'3649777','4055448',NULL,5,'CL 11 N 31A 42',11,1,'3649777','4055448',0,100,0,0,NULL,'1953-01-14 00:00:00','2050-11-30 00:00:00','LUIS FELIPE GUTIERREZ NAVARRO','CARLOS DIAZ RAMIREZ','3649777 /3016988784','664','jaime.arango@corbeta.com.co','WWW.ALKOSTO.COM.CO','WWW.ALKOSTO.COM.CO','jaime.uribe@alkosto.com.co',900197,2,1,'2021-12-16 01:58:01','jaime.uribe@alkosto.com.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(4,'1234567',1,'890900608',9,2,55,'3190',4711,'EMPRESA PRUEBA 4','EMPRESA PRUEBA 4','DDD','KR 48 # 32B SUR - 139',5,266,'6049696','0',NULL,5,'KR 48 # 32 B SUR -139',5,266,'6049696','0',0,27,0,73,NULL,'1949-12-01 00:00:00','2050-12-31 00:00:00','CARLOS MARIO GIRALDO','YENIFER GRISALES CASTA├æO ','6049696','306104','cmdiez@grupo-exito.com','WWW.GRUPOEXITO.COM.CO','WWW.GRUPOEXITO.COM.CO','LIBIA.CADAVID@GRUPO-EXITO.COM',900788,6,1,'2021-12-16 01:58:01','LIBIA.CADAVID@GRUPO-EXITO.COM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(5,'1234567',1,'860037950',2,0,4,'778932',8610,'EMPRESA PRUEBA 5','EMPRESA PRUEBA 5','EEEDD','CL 119 # 7 75',11,11001,'6030303wdweqwe','6575708',0,1,'KR 7B 123 90',11,1,'6030303','6146668',0,100,0,0,NULL,'1973-06-14 00:00:00','3000-12-31 00:00:00','HENRY MAURICIO GALLARDO','Antonio Jose Rincon Serrano','6030303','5733','antonio.rincon@FSFB.ORG.CO','www.fsfb.org.co','WWW.FSFB.ORG.CO','paola.vargas@fsfb.org.co',10205732,2,0,'2021-12-16 01:58:01','paola.vargas@fsfb.org.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(6,'1234567',1,'860007759',3,0,4,'3991',8544,'EMPRESA PRUEBA 6','EMPRESA PRUEBA 6','DDDDS','CL 12 C # 6-25',11,68013,'2970200','2431716',0,13,'CL 12 C # 6 25',11,1,'2970200','2431716',0,100,0,0,NULL,'1895-09-15','0000-00-00','JOSE ALEJANDRO CHEYNE GARCIA','Jaime Nevardo Mesa Molano','2970200','2329','jaime.mesa@urosario.edu.co','www.urosario.edu.co','departamento.contabilidad@urosario.edu.co','catalina.bernal@urosario.edu.co',10205486,2,0,'2021-12-16 01:58:01','catalina.bernal@urosario.edu.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(7,'1234567',1,'830122566',1,2,2,'1283300',6110,'EMPRESA PRUEBA 70','EMPRESA PRUEBA 75','AASS','TRV 60 AV SUBA #114A-55-0',5,5030,'7050000','7050000',0,5,'TRV 60 AV SUBA #114A-55',11,1,'7050000','7050000',33,0,0,67,NULL,'2003-06-16 00:00:00','2092-12-31 00:00:00','FABIN HERNANDEZ RAMIREZ','Natalia Guerra','7050000','7050000','natalia.guerra@telefonica.com','www.telefonica.co',NULL,'cristian.ruizr@telefonica.com',10201407,99,0,'2021-12-16 01:58:01','cristian.ruizr@telefonica.com.co','','','','','','amazonas','leticia',1,1,1,1,1,1,1),(8,'1234567',1,'890901389',5,0,0,'0',8544,'UNIVERSIDAD EAFIT','UNIVERSIDAD EAFIT','EAFIT','CR 49 7 SUR 50',5,1,'2619500','2662599',NULL,13,'CR 49 7 SUR 50',5,1,'2619500','2662599',0,100,0,0,NULL,'1960-06-28 00:00:00','2999-06-28 00:00:00','JUAN LUIS MEJIA ARANGO','Sara Hernandez','2619500','9862','shernan7@eafit.edu.co','www.eafit.edu.co','www.eafit.edu.co','shernan7@eafit.edu.co',10601267,6,0,'2021-12-16 01:58:01','shernan7@eafit.edu.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(9,'1234567',1,'890324177',5,2,0,'0',8610,'FUNDACION VALLE DEL LILI','FUNDACION VALLE DEL LILI','FVL','KR 98 # 18-49',76,1,'3319090',NULL,NULL,13,'KRA 98 # 18 - 49',76,1,'3319090','3157499',0,100,0,0,NULL,'1983-06-21 00:00:00','4000-12-31 00:00:00','ALVARO QUINTERO CASTA├æO','JENNY MARCELA FLOREZ MONEDERO','3319090','3398','jenny.florez@fvl.org.co','www.valledellili.org',NULL,'silvia.moreno@fvl.org.co',10400909,4,0,'2021-12-16 01:58:01','silvia.moreno@fvl.org.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(10,'1234567',1,'890316745',5,2,0,'0',8544,'UNIVERSIDAD ICESI','UNIVERSIDAD ICESI','ICESI','CL 18 # 122-135',86,86569,'5552334','3212062',0,13,'CL 18 # 122-135',76,1,'5552334','3212062',0,100,0,0,NULL,'1979-07-12 00:00:00','0000-00-00','FRANCISCO PIEDRAHITA PLATA','Beatriz Elena Henao Vasquez','5552334','8780','ljgonzalez1@icesi.edu.co','www.icesi.edu.co','0','LJGONZALEZ1@icesi.edu.co',10400834,4,0,'2021-12-16 01:58:01','LJGONZALEZ1@icesi.edu.co','','','','','','dsadsad','asdsadada',1,1,1,1,1,1,1),(11,'1234567',1,'800145882',4,1,0,'S0003490',7210,'CORPORACION CENTRO DE INVESTIGACION EN PALMA DE ACEITE','CORPORACION CENTRO DE INVESTIGACION EN PALMA DE ACEITE','CENIPALMA','Cl 98 # 70-91, piso 14 Y 15.',11,1,'2086300','2444711',NULL,13,'Cl 98 # 70-91, piso 14 Y 15.',11,1,'2086300','2444711',0,100,0,0,NULL,'1991-10-28 00:00:00','0000-00-00','ELZBIETA BOCHNO HERNANDEZ','JUAN DAVID MOGOLLON','2086300','2013','aespinel@cenipalma.org','www.cenipalma.org','www.cenipalma.org','aespinel@cenipalma.org',10207791,2,0,'2021-12-16 01:58:01','aespinel@cenipalma.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(12,'1234567',1,'890480123',5,0,0,'0',8544,'UNIVERSIDAD DE CARTAGENA','UNIVERSIDAD DE CARTAGENA','UDC','KR 6 36-100',13,1,'6641068','6600676',NULL,13,'KR 6 36-100',13,1,'6641068','6600676',0,100,0,0,NULL,'1827-01-01','0000-00-00','EDGAR PARRA CHACON','Edgar Orlando Alarcon','3014627355','0','ealarcon@UNICARTAGENA.EDU.co','WWW.UNICARTAGENA.EDU.CO','WWW.UNICARTAGENA.EDU.CO','cetic1@unicartagena.edu.co',85008102,9,1,'2021-12-16 01:58:01','cetic1@unicartagena.edu.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(13,'1234567',1,'890980040',8,0,0,'0',8544,'UNIVERSIDAD DE ANTIOQUIA','UNIVERSIDAD DE ANTIOQUIA','UdeA','CL 67 No. 53-108',5,1,'2198332','2638282',NULL,13,'calle 70 No. 52 - 21',5,1,'2198332','2638282',100,0,0,0,NULL,'1878-12-04','0000-00-00','JOHN JAIRO ARBOLEDA CESPEDES','SOL MERY ALVAREZ ARGAEZ','2195084','0','SOL.ALVAREZ@UDEA.EDU.CO','http://www.udea.edu.co/','http://www.udea.edu.co/','sol.alvarez@udea.edu.co',85007954,6,1,'2021-12-16 01:58:01','sol.alvarez@udea.edu.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(14,'1234567',1,'899999063',3,0,0,'0',8544,'UNIVERSIDAD NACIONAL DE COLOMBIA','UNIVERSIDAD NACIONAL DE COLOMBIA','UNAL','KR 30 CL 45 CIUDAD UNIVERSITARIA',11,1,'3165000','3165000',NULL,99,'KR 30 CL 45 CIUDAD UNIVERSITARIA',11,1,'3165000','3165000',100,0,0,0,NULL,'1867-09-22','0000-00-00','DOLLY MONTOYA CASTA├æO','Vicerrectoria de Investigacion','3165000','20010','indicadoresvri_nal@unal.edu.co','www.unal.edu.co',NULL,'indicadoresvri_nal@UNAL.EDU.CO',85007376,2,1,'2021-12-16 01:58:01','indicadoresvri_nal@UNAL.EDU.CO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(15,'1234567',1,'860003020',1,1,4,'208845',6412,'BANCO BILBAO VIZCAYA ARGENTARIA COLOMBIA S.A.','BANCO BILBAO VIZCAYA ARGENTARIA COLOMBIA S.A.','BBVA','Carrera 9 No. 72-21',11,1,'3471600','3428324',NULL,5,'Carrera 9 No. 72-21',11,1,'3471600','3428324',10,30,10,50,NULL,'2006-05-01 00:00:00','0000-00-00','JOSE MARIA JIMENEZ TUNON','JUAN CARLOS SANDOVAL','3471600','0','JUAN.SANDOVAL@BBVA.com','www.bbva.com.co','www.bbva.com.co','JUAN.SANDOVAL@BBVA.COM',64002958,2,1,'2021-12-16 01:58:01','JUAN.SANDOVAL@BBVA.COM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(16,'1234567',1,'890903938',8,1,21,'21-083964-04',6412,'BANCO DE COLOMBIA S.A. BANCOLOMBIA S.A.','BANCO DE COLOMBIA S.A. BANCOLOMBIA S.A.',NULL,'Carrera 48 26 85 AV. INDUSTRIALES',5,1,'6051433','5108677',NULL,5,'Carrera 48 26 85 AV. INDUSTRIALES',5,1,'6051433','5108677',0,66,0,34,NULL,'1910-01-01 00:00:00','2040-01-01 00:00:00','CIPRIANO LOPEZ GONZALEZ','CAMILO VELASQUEZ RESTREPO','6051433 / 3174230550','0','camivela@bancolombia.com.co','www.bancolombia.com.co','www.bancolombia.com.co','camivela@bancolombia.com.co',64002957,6,1,'2021-12-16 01:58:01','camivela@bancolombia.com.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(17,'1234567',1,'860005216',7,1,4,'99',6411,'BANCO DE LA REPUBLICA','BANCO DE LA REPUBLICA','BR','KR 7 # 14-78 / KR 6 # 14-85',11,1,'3431111','2861686',NULL,99,'KR 7 # 14-78 / KR 6 # 14-85',11,1,'5713431011','5712861686',100,0,0,0,NULL,'1923-07-25 00:00:00','2099-01-01 00:00:00','FABIO MAURICIO PINZANO GONZALEZ','Carlos Alberto Balcazar Navarrete','5713430837','0','cbalcana@banrep.gov.co','www.banrep.gov.co','www.banrep.gov.co','atencionalciudadano@banrep.gov.co',64002945,2,1,'2021-12-16 01:58:01','atencionalciudadano@banrep.gov.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(18,'1234567',1,'899999094',1,0,0,'0',3600,'EMPRESA DE ACUEDUCTO Y ALCANTARILLADO DE BOGOTA - ESP','EMPRESA DE ACUEDUCTO Y ALCANTARILLADO DE BOGOTA - ESP','EAAB-ESP','Av CL 24 37- 15',11,1,'3447000',NULL,NULL,8,'Av CL 24 37- 15',11,1,'3447092',NULL,100,0,0,0,NULL,'1995-04-29 00:00:00','0000-00-00','CRISTINA ARANGO OLAYA','GERMAN RODRIGUEZ Y NUBIA LEON','3447000','7814','NILEON@ACUEDUCTO.COM.CO','WWW.ACUEDUCTO.COM.CO','WWW.ACUEDUCTO.COM.CO','notificaciones.sspd@acueducto.com.co',36007104,2,1,'2021-12-16 01:58:01','notificaciones.sspd@acueducto.com.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(19,'1234567',1,'900494393',3,0,0,'0',7210,'INSTITUTO NACIONAL DE METROLOGIA','INSTITUTO NACIONAL DE METROLOGIA','INM','Avenida Carrera 50 No. 26-55, Interior 2 CAN',11,1,'2542222','2545222',NULL,8,'Avenida Carrera 50 No. 26-55, Interior 2 CAN',11,1,'2542222','2545222',100,0,0,0,NULL,'2011-11-03 00:00:00','0000-00-00','EDWIN ARVEY CRISTANCHO PINILLA','Yolanda Briceno Bueno','2542222','1426','ybriceno@inm.gov.co','www.inm.gov.co','www.inm.gov.co','ybriceno@inm.gov.co',72003279,2,1,'2021-12-16 01:58:01','ybriceno@inm.gov.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(20,'1234567',1,'899999403',4,0,0,'0',7210,'INSTITUTO NACIONAL DE SALUD','INSTITUTO NACIONAL DE SALUD','INS','AC 26 # 51-20',11,1,'2207700',NULL,NULL,99,'AC 26 # 51-20',11,1,'2207700','1101',100,0,0,0,NULL,'1968-04-20 00:00:00','0000-00-00','OSPINA MARTINEZ MARTHA LUCIA','May Bibiana Osorio M','2207700','1101','mosorio@ins.gov.co','https://ins.gov.co','WWW.INS.GOV.CO','contactenos@ins.gov.co',72005139,2,1,'2021-12-16 01:58:01','contactenos@ins.gov.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(21,'1234567',1,'860061110',3,0,0,'0',7210,'INSTITUTO AMAZONICO DE INVESTIGACIONES CIENTIFICAS SINCHI','INSTITUTO AMAZONICO DE INVESTIGACIONES CIENTIFICAS SINCHI','SINCHI','AV VASQUEZ COBO ENTRE CALLES 15 Y 16',91,1,'5925481','2862418',NULL,13,'AV VASQUEZ COBO ENTRE CALLES 15 Y 16',91,1,'3115587845',NULL,100,0,0,0,NULL,'1993-12-22 00:00:00','0000-00-00','MANTILLA CARDENAS LUZ MARINA','Yesenia Zambrano Ayala','3133012018','0','yzambrano@sinchi.org.co','www.sinchi.org.co','WWW.SINCHI.ORG.CO','dlizcano@sinchi.org.co',72005141,19,1,'2021-12-16 01:58:01','dlizcano@sinchi.org.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(22,'1234567',1,'890100251',0,2,3,'3646',2394,'CEMENTOS ARGOS S.A.','CEMENTOS ARGOS S.A.','ARGOS S.A.','CR 53 No 106-280 CENTRO EMPRESARIAL BUENAVISTA PISO 17',8,8001,'6053619222','',3732,5,'CR 43 B No. 1 A Sur - 128 Edificio Santillana Torre Norte',5,5001,'605361222','',0,100,0,0,1,'1944-09-21','2021-12-10','RICARDO ANDRES SIERRA FERNANDEZ','Maria Isabel Montoya Arenas','3117441984','64623','mmontoya@summa-sci.com','colombia.argos.co','','correonotificaciones@argos.com.co',484,6,1,'2021-12-16 01:58:01','correonotificaciones@argos.com.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(23,'1234567',1,'890903310',3,1,21,'002083-04',2013,'ANHIDRIDOS Y DERIVADOS DE COLOMBIA S.A.S','ANHIDRIDOS Y DERIVADOS DE COLOMBIA S.A.S','ANDERCOL S.A.S','KR 64C 95-84',5,1,'3567000','3567000',NULL,1,'KR 64C 95-84',5,1,'3567000','2678135',0,100,0,0,NULL,'1965-12-14 00:00:00','0000-00-00','JUAN DAVID URREGO','MARGARITA MARIA ARBELAEZ BETANCUR','3567000','41401','margarita.arbelaez@andercol.com.co','www.andercol.com.co','www.andercol.com.co','margarita.arbelaez@andercol.com.co',10352,6,1,'2021-12-16 01:58:01','margarita.arbelaez@andercol.com.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(24,'1234567',3,'900392611',0,0,0,'2040704',6190,'MOVIIRED S.A.S ANTES TRANZA S.A.S','MOVIIRED S.A.S ANTES TRANZA S.A.S','MOVIIRED','KR 21 N 169-45',11,11001,'3213136220','3213136220',0,14,'KR 21 N 169-45',11,11001,'5895959','5895959',0,0,0,100,NULL,'2010-11-03 00:00:00','0000-00-00','ANGELICA BERMUDEZ ESTRADA','JHOAN OROZCO VILLA','5895959','4238','jhoan.orozco@moviIred.co','www.moviired.co','www.moviired.co','juan.caicedo@moviired.co',10213498,2,0,'2021-12-16 01:58:01','juan.caicedo@moviired.co','','','','','','','',1,1,1,1,1,1,1),(25,'1234567',1,'800254591',3,2,5,'550108130',7210,'CORPORACION PARA LA INVESTIGACION DE LA CORROSION','CORPORACION PARA LA INVESTIGACION DE LA CORROSION','C.I.C','KM 2 VIA REFUGIO SEDE UIS GUATIGUARA',68,68013,'6550807','6550808',10,13,'KM 2 VIA EL REFUGIO SEDE UIS GUATIGUARA',68,68013,'6550807','6550808',50,50,0,0,1,'1997-06-24','72686-01-01','JORGE HERNANDO PANQUEVA ALVAREZ','LILIANA MARIA ESTUPI├æAN CARDENAS','6550807','0','lestupinan@corrosion.uis.edu.co','http://corrosion.uis.edu.co','http://corrosion.uis.edu.co','lestupinan@corrosion.uis.edu.co',10300487,3,0,'2021-12-16 01:58:01','lestupinan@corrosion.uis.edu.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(26,'1234567',1,'890312562',6,1,633,'0',7210,'CENTRO DE INVESTIGACION DE LA CA├æA DE AZUCAR DE COLOMBIA','CENTRO DE INVESTIGACION DE LA CA├æA DE AZUCAR DE COLOMBIA','CENICA├æA','CL 58 NORTE # 3BN - 110',76,1,'6876611','0',NULL,13,'CL 58 NORTE 3BN 110',76,1,'6876611','0',0,100,0,0,NULL,'1977-09-06 00:00:00','0000-00-00','ALVARO AMAYA ESTEVEZ','EINAR ANDERSON ACU├æA','6876611','5125','eanderson@cenicana.org','www.cenicana.org','www.cenicana.org','webmaster@cenicana.org',10401592,4,0,'2021-12-16 01:58:01','webmaster@cenicana.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(27,'1234567',1,'820000142',2,0,0,'0',7210,'INSTITUTO DE INVESTIGACION DE RECURSOS BIOLOGICOS ALEXANDER','INSTITUTO DE INVESTIGACION DE RECURSOS BIOLOGICOS ALEXANDER',NULL,'CLL 28 A 15-09',11,1,'3202767','3202767',NULL,13,'CLL 28A 15-09',11,1,'3202767','3202767',65,35,0,0,NULL,'1995-01-20 00:00:00','52982','HERNANDO GARCIA MARTINEZ','Marcelo Betancur Corrrea','3202767','8001','rbetancur@humboldt.org.co','www.humboldt.org.co','www.humboldt.org.co','dmoreno@humboldt.org.co',10209196,2,0,'2021-12-16 01:58:01','dmoreno@humboldt.org.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(28,'1234567',1,'890900762',5,117228,NULL,NULL,9411,'ASOCIACION NACIONAL DE EMPRESARIOS DE COLOMBIA','ASOCIACION NACIONAL DE EMPRESARIOS DE COLOMBIA','ANDI','┬áCalle 73 # 8 ÔÇô 13 Piso 7 Torre A.┬á',11,1,NULL,NULL,NULL,13,'┬áCalle 73 # 8 ÔÇô 13 Piso 7 Torre A.┬á',NULL,NULL,'┬á3268500',NULL,NULL,NULL,NULL,NULL,NULL,'1997-03-18 00:00:00',NULL,'WILLIAM┬áBRUCE┬áMAC┬áMASTER',NULL,NULL,NULL,NULL,'www.andi.com.co/','www.andi.com.co/','protecciondedatos@andi.com.co',NULL,2,1,'2021-12-16 01:58:01','protecciondedatos@andi.com.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(29,'1234567',1,'900297523',1,2,0,'2323',9499,'CORPORACION VIDARIUM CENTRO DE INVESTIGACION EN NUTRICION, SALUD Y BIENESTAR','CORPORACION VIDARIUM CENTRO DE INVESTIGACION EN NUTRICION, SALUD Y BIENESTAR','VIDARIUM','CALLE 8 SUR 50 67',5,5001,'2856600 ┬á ┬á','',0,13,'CALLE 8 SUR 50 67',5,5036,'2856600 ┬á┬á','',654,4343,434,343,1,'2009-07-01','1969-12-30','MARIA ELENA UPEGUI MEJIA','MARIA ELENA UPEGUI MEJIA','604 2856600','','vidarium@serviciosnutresa.com','www.vidarium.org','www.vidarium.org','opelaez@serviciosnutresa.com',0,6,1,'2021-12-16 01:58:01','opelaez@serviciosnutresa.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(30,'1234567',1,'890399001',1,2,0,'#######@@@@',129,'CAMARA DE COMERCIO DE CALI ','CAMARA DE COMERCIO DE CALI ','La CCC','Calle 8 No. 3-14. Cali ÔÇô Colombia',76,76001,'(572) 886 1300','(572) 8861399',1000,15,'Calle 8 No. 3-14. Cali ÔÇô Colombia',76,76001,'(572) 886 1300','',0,0,0,0,1,'1969-12-31','1969-12-31','EstebanÔÇ»Piedrah├¡taÔÇ»Uribe','Harold Londo├▒o','3008844091','','prueba@gmail.com','www.ccc.org.co','www.ccc.org.co','hlondono@ccc.org.co',0,4,1,'2021-12-16 01:58:01','hlondono@ccc.org.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(31,'1234567',1,'899999011',NULL,NULL,NULL,NULL,NULL,'DEPARTAMENTO NACIONAL DE PLANEACION','DEPARTAMENTO NACIONAL DE PLANEACION','DNP','Calle 26 # 13-19 - Edificio En Territorio',11,1,'381 5000',NULL,NULL,NULL,'Calle 26 # 13-19 - Edificio En Territorio',NULL,NULL,'381 5000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Alejandra Botero Barco','Juan Pablo Garcias','3 81 50 00','19041','lgamez@dnp.gov.co','www.dnp.gov.co','www.dnp.gov.co','juangarcia@dnp.gov.co',NULL,2,1,'2021-12-16 01:58:01','juangarcia@dnp.gov.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(32,'1234567',1,'830067892',2,NULL,NULL,NULL,NULL,'INSTITUTO COLOMBIANO DE ANTROPOLOG├ìA E HISTORIA','INSTITUTO COLOMBIANO DE ANTROPOLOG├ìA E HISTORIA','ICANH','Av Calle 12 # 2 - 41 La Candelaria',11,1,'444 0544','( 601) 4440530',NULL,NULL,'Av Calle 12 # 2 - 41 La Candelaria',NULL,NULL,'444 0544',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nicol├ís Loaiza D├¡az','francy Morales ',' (601) 4440544','1102',NULL,'www.icanh.gov.co','www.icanh.gov.co','fmorales@icanh.gov.co',NULL,2,1,'2021-12-16 01:58:01','fmorales@icanh.gov.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(33,'1234567',1,'860025900',2,2,4,'4627',1040,'ALPINA PRODUCTOS ALIMENTICIOS S.A.','ALPINA PRODUCTOS ALIMENTICIOS S.A.',NULL,'Km. 3 viaa Brice├▒o - Sopo',11,1,'4238600','4238630',NULL,5,'Km 3 Via Brice├▒o - Sopo',11,1,'4238600','4238630',0,9,0,91,NULL,'1969-10-30 00:00:00','2069-10-30 00:00:00','Carlos Armando Mejia','Julian Sannchez','4238600','0','julian.isanchez@alpina.com','www.alpina.com.co','www.alpina.com.co','julian.isanchez@alpina.com',1046,2,1,'2021-12-16 01:58:01','julian.isanchez@alpina.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1),(34,'1234567',1,'900062201',4,2,51,'120690',1089,'ALSEC ALIMENTOS S.A.S','ALSEC ALIMENTOS S.A.A','ALSEC','Calle 79 C SUR 54-24',5,5002,'3792909','3792909',1,14,'Calle 79 C SUR 54-24',85,85010,'3792909','77777777',20,60,10,10,1,'39356-01-01','2022-07-13','ALEJANDRO MAURICIO VARGAS UPEGUI','VANESSA BEDOYA MEJIA','3792909','113','liderinvestigacion6@alsec.com.co','WWW.ALSEC.COM','WWW.ALSEC.COM.CO','liderinvestigacion6@alsec.com.co',842855,6,0,'2021-12-16 01:58:01','liderinvestigacion6@alsec.com.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `pda_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_empresa_carga_tmp`
--

DROP TABLE IF EXISTS `pda_empresa_carga_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_empresa_carga_tmp` (
  `nordemp` int(11) DEFAULT NULL,
  `regional` int(11) DEFAULT NULL,
  `prioridad` int(11) DEFAULT NULL,
  `tipodoc` int(11) DEFAULT NULL,
  `numdoc` int(11) DEFAULT NULL,
  `dv` int(11) DEFAULT NULL,
  `registmat` int(11) DEFAULT NULL,
  `camara` int(11) DEFAULT NULL,
  `numeroreg` varchar(12) DEFAULT NULL,
  `ciiu4` int(11) DEFAULT NULL,
  `nompropie` varchar(76) DEFAULT NULL,
  `nombre` varchar(76) DEFAULT NULL,
  `sigla` varchar(14) DEFAULT NULL,
  `direccion` varchar(44) DEFAULT NULL,
  `depto` int(11) DEFAULT NULL,
  `mpio` int(11) DEFAULT NULL,
  `telefono` varchar(14) DEFAULT NULL,
  `fax` varchar(14) DEFAULT NULL,
  `p_ocupado` int(11) DEFAULT NULL,
  `orgju` decimal(3,1) DEFAULT NULL,
  `dirnotifi` varchar(44) DEFAULT NULL,
  `depnotific` int(11) DEFAULT NULL,
  `munnotific` int(11) DEFAULT NULL,
  `telenotific` varchar(14) DEFAULT NULL,
  `faxnotific` bigint(20) DEFAULT NULL,
  `capsocinpu` int(11) DEFAULT NULL,
  `capsocinpr` int(11) DEFAULT NULL,
  `capsociepu` int(11) DEFAULT NULL,
  `capsociepr` int(11) DEFAULT NULL,
  `estado_actual` int(11) DEFAULT NULL,
  `fechaconst` varchar(19) DEFAULT NULL,
  `fechahasta` varchar(19) DEFAULT NULL,
  `repleg` varchar(32) DEFAULT NULL,
  `responde` varchar(40) DEFAULT NULL,
  `teler` varchar(20) DEFAULT NULL,
  `extr` int(11) DEFAULT NULL,
  `emailemp` varchar(47) DEFAULT NULL,
  `web` varchar(27) DEFAULT NULL,
  `emailnotif` varchar(36) DEFAULT NULL,
  `webnotif` varchar(41) DEFAULT NULL,
  `emailres` varchar(34) DEFAULT NULL,
  `fec_correo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_empresa_carga_tmp`
--

LOCK TABLES `pda_empresa_carga_tmp` WRITE;
/*!40000 ALTER TABLE `pda_empresa_carga_tmp` DISABLE KEYS */;
INSERT INTO `pda_empresa_carga_tmp` VALUES (402,1,1,1,890106527,5,2,3,'24802',2100,'PROCAPS  S.A.','PROCAPS  S.A.','0','CL 80  78 B-201',8,1,'3719271','3719271',NULL,5.0,'CLL 80  78 B - 201',8,1,'3719271',0,0,80,0,20,NULL,'1976-07-26 00:00:00','2099-12-31 00:00:00','Grethel Moreno Romero','Jose Luis Rodriguez Carlos Carazo Posada','3719274',0,'josrodriguez@procaps.com.co','www.procaps.group.com','josrodriguez@procaps.com.co','www.procapsgroup.com','josrodriguez@procaps.com.co',NULL),(5591,99,1,1,899999068,1,1,0,'0',1921,'ECOPETROL S.A.','ECOPETROL S.A.','0','KR 13 # 36-24',11,1,'2344000','2344000',NULL,6.0,'CRA 13 # 36 - 24',11,1,'2344000',47001,89,11,0,0,NULL,'1951-01-09 00:00:00','2000-12-31 00:00:00','Andres Eduardo Mantilla','Elianeth ManceraValetts','2344000',47332,'andres.mantilla@ecopetrol.com.co','www.ecopetrol.com.co','andres.mantilla@ecopetrol.com.co','www.ecopetrol.com.co','elianeth.mancera@ecopetrol.com.co',NULL),(900197,2,1,1,890900943,1,2,4,'363933',4719,'COLOMBIANA DE COMERCIO S.A.','ALKOSTO S.A.','CORBETA S.A.','CL 11 N 31A 42',11,1,'3649777','4055448',NULL,5.0,'CL 11 N 31A 42',11,1,'3649777',4055448,0,100,0,0,NULL,'1953-01-14 00:00:00','2050-11-30 00:00:00','LUIS FELIPE GUTIERREZ NAVARRO','CARLOS DIAZ RAMIREZ','3649777 /3016988784',664,'CORBETA@CORBETA.COM.CO','WWW.ALKOSTO.COM.CO','jaime.uribe@alkosto.com.co','WWW.ALKOSTO.COM.CO','jaime.arango@corbeta.com.co',NULL),(900788,6,1,1,890900608,9,2,55,'3190',4711,'ALMACENES EXITO S.A.','ALMACENES EXITO S.A.',NULL,'KR 48 # 32B SUR - 139',5,266,'6049696','0',NULL,5.0,'KR 48 # 32 B SUR -139',5,266,'6049696',0,0,27,0,73,NULL,'1949-12-01 00:00:00','2050-12-31 00:00:00','CARLOS MARIO GIRALDO','YENIFER GRISALES CASTA├æO ','6049696',306104,'ALMACENES.EXITO@GRUPO-EXITO.COM','WWW.GRUPOEXITO.COM.CO','LIBIA.CADAVID@GRUPO-EXITO.COM','WWW.GRUPOEXITO.COM.CO','cmdiez@grupo-exito.com',NULL),(10205732,2,0,1,860037950,2,0,4,'778932',8610,'FUNDACION SANTAFE DE BOGOTA','FUNDACION SANTAFE DE BOGOTA',NULL,'CL 119 # 7 75',11,1,'6030303','6575708',NULL,1.0,'KR 7B 123 90',11,1,'6030303',6146668,0,100,0,0,NULL,'1973-06-14 00:00:00','3000-12-31 00:00:00','HENRY MAURICIO GALLARDO','Antonio Jose Rincon Serrano','6030303',5733,'PAOLA.VARGAS@FSFB.ORG.CO','www.fsfb.org.co','paola.vargas@fsfb.org.co','WWW.FSFB.ORG.CO','antonio.rincon@FSFB.ORG.CO',NULL),(10205486,2,0,1,860007759,3,0,4,'3991',8544,'COLEGIO MAYOR DE NUESTRA SE├æORA DEL ROSARIO','UNIVERSIDAD DEL ROSARIO',NULL,'CL 12 C # 6-25',11,1,'2970200','2431716',NULL,13.0,'CL 12 C # 6 25',11,1,'2970200',2431716,0,100,0,0,NULL,'1895-09-15','0000-00-00','JOSE ALEJANDRO CHEYNE GARCIA','Jaime Nevardo Mesa Molano','2970200',2329,'andrea.pallares@urosario.edu.co','www.urosario.edu.co','catalina.bernal@urosario.edu.co','departamento.contabilidad@urosario.edu.co','jaime.mesa@urosario.edu.co',NULL),(10201407,99,0,1,830122566,1,2,2,'1283300',6110,'COLOMBIA TELECOMUNICACIONES S.A ESP.','MOVISTAR','MOVISTAR','TRV 60 AV SUBA #114A-55',11,1,'7050000','7050000',NULL,5.0,'TRV 60 AV SUBA #114A-55',11,1,'7050000',7050000,33,0,0,67,NULL,'2003-06-16 00:00:00','2092-12-31 00:00:00','FABIN HERNANDEZ RAMIREZ','Natalia Guerra','7050000',7050000,'cristian.ruizr@telefonica.com','www.telefonica.co','cristian.ruizr@telefonica.com',NULL,'natalia.guerra@telefonica.com',NULL),(10601267,6,0,1,890901389,5,0,0,'0',8544,'UNIVERSIDAD EAFIT','UNIVERSIDAD EAFIT','EAFIT','CR 49 7 SUR 50',5,1,'2619500','2662599',NULL,13.0,'CR 49 7 SUR 50',5,1,'2619500',2662599,0,100,0,0,NULL,'1960-06-28 00:00:00','2999-06-28 00:00:00','JUAN LUIS MEJIA ARANGO','Sara Hernandez','2619500',9862,'jlmejia@eafit.edu.co','www.eafit.edu.co','shernan7@eafit.edu.co','www.eafit.edu.co','shernan7@eafit.edu.co',NULL),(10400909,4,0,1,890324177,5,2,0,'0',8610,'FUNDACION VALLE DEL LILI','FUNDACION VALLE DEL LILI','FVL','KR 98 # 18-49',76,1,'3319090',NULL,NULL,13.0,'KRA 98 # 18 - 49',76,1,'3319090',3157499,0,100,0,0,NULL,'1983-06-21 00:00:00','4000-12-31 00:00:00','ALVARO QUINTERO CASTA├æO','JENNY MARCELA FLOREZ MONEDERO','3319090',3398,'silvia.moreno@fvl.org.co','www.valledellili.org','silvia.moreno@fvl.org.co',NULL,'jenny.florez@fvl.org.co',NULL),(10400834,4,0,1,890316745,5,2,0,'0',8544,'UNIVERSIDAD ICESI','UNIVERSIDAD ICESI','ICESI','CL 18 # 122-135',76,1,'5552334','3212062',NULL,13.0,'CL 18 # 122-135',76,1,'5552334',3212062,0,100,0,0,NULL,'1979-07-12 00:00:00','0000-00-00','FRANCISCO PIEDRAHITA PLATA','Beatriz Elena Henao Vasquez','5552334',8780,'chaparro@icesi.edu.co','www.icesi.edu.co','LJGONZALEZ1@icesi.edu.co','0','ljgonzalez1@icesi.edu.co',NULL),(10207791,2,0,1,800145882,4,1,0,'S0003490',7210,'CORPORACION CENTRO DE INVESTIGACION EN PALMA DE ACEITE','CENIPALMA','CENIPALMA','Cl 98 # 70-91, piso 14 Y 15.',11,1,'2086300','2444711',NULL,13.0,'Cl 98 # 70-91, piso 14 Y 15.',11,1,'2086300',2444711,0,100,0,0,NULL,'1991-10-28 00:00:00','0000-00-00','ELZBIETA BOCHNO HERNANDEZ','JUAN DAVID MOGOLLON','2086300',2013,'aespinel@cenipalma.org','www.cenipalma.org','aespinel@cenipalma.org','www.cenipalma.org','aespinel@cenipalma.org',NULL),(85008102,9,1,1,890480123,5,0,0,'0',8544,'UNIVERSIDAD DE CARTAGENA','UNIVERSIDAD DE CARTAGENA','UDC','KR 6 36-100',13,1,'6641068','6600676',NULL,13.0,'KR 6 36-100',13,1,'6641068',6600676,0,100,0,0,NULL,'1827-01-01','0000-00-00','EDGAR PARRA CHACON','Edgar Orlando Alarcon','3014627355',0,'RECTORIA@UNICARTAGENA.EDU.CO','WWW.UNICARTAGENA.EDU.CO','cetic1@unicartagena.edu.co','WWW.UNICARTAGENA.EDU.CO','ealarcon@UNICARTAGENA.EDU.co',NULL),(85007954,6,1,1,890980040,8,0,0,'0',8544,'UNIVERSIDAD DE ANTIOQUIA','UNIVERSIDAD DE ANTIOQUIA','UdeA','CL 67 No. 53-108',5,1,'2198332','2638282',NULL,13.0,'calle 70 No. 52 - 21',5,1,'2198332',2638282,100,0,0,0,NULL,'1878-12-04','0000-00-00','JOHN JAIRO ARBOLEDA CESPEDES','SOL MERY ALVAREZ ARGAEZ','2195084',0,'RECTORIA@UDEA.EDU.CO','http://www.udea.edu.co/','sol.alvarez@udea.edu.co','http://www.udea.edu.co/','SOL.ALVAREZ@UDEA.EDU.CO',NULL),(85007376,2,1,1,899999063,3,0,0,'0',8544,'UNIVERSIDAD NACIONAL DE COLOMBIA','UNIVERSIDAD NACIONAL DE COLOMBIA','UNAL','KR 30 CL 45 CIUDAD UNIVERSITARIA',11,1,'3165000','3165000',NULL,99.1,'KR 30 CL 45 CIUDAD UNIVERSITARIA',11,1,'3165000',3165000,100,0,0,0,NULL,'1867-09-22','0000-00-00','DOLLY MONTOYA CASTA├æO','Vicerrectoria de Investigacion','3165000',20010,'RECTORIAun@UNAL.EDU.CO','www.unal.edu.co','indicadoresvri_nal@UNAL.EDU.CO',NULL,'indicadoresvri_nal@unal.edu.co',NULL),(64002958,2,1,1,860003020,1,1,4,'208845',6412,'BANCO BILBAO VIZCAYA ARGENTARIA COLOMBIA S.A.','BBVA','BBVA','Carrera 9 No. 72-21',11,1,'3471600','3428324',NULL,5.0,'Carrera 9 No. 72-21',11,1,'3471600',3428324,10,30,10,50,NULL,'2006-05-01 00:00:00','0000-00-00','JOSE MARIA JIMENEZ TUNON','JUAN CARLOS SANDOVAL','3471600',0,'JUAN.SANDOVAL@BBVA.COM','www.bbva.com.co','JUAN.SANDOVAL@BBVA.COM','www.bbva.com.co','JUAN.SANDOVAL@BBVA.com',NULL),(64002957,6,1,1,890903938,8,1,21,'21-083964-04',6412,'BANCO DE COLOMBIA S.A. BANCOLOMBIA S.A.','BANCOLOMBIA',NULL,'Carrera 48 26 85 AV. INDUSTRIALES',5,1,'6051433','5108677',NULL,5.0,'Carrera 48 26 85 AV. INDUSTRIALES',5,1,'6051433',5108677,0,66,0,34,NULL,'1910-01-01 00:00:00','2040-01-01 00:00:00','CIPRIANO LOPEZ GONZALEZ','CAMILO VELASQUEZ RESTREPO','6051433 / 3174230550',0,'camivela@bancolombia.com.co','www.bancolombia.com.co','camivela@bancolombia.com.co','www.bancolombia.com.co','camivela@bancolombia.com.co',NULL),(64002945,2,1,1,860005216,7,1,4,'99',6411,'BANCO DE LA REPUBLICA','BANCO DE LA REPUBLICA','BR','KR 7 # 14-78 / KR 6 # 14-85',11,1,'3431111','2861686',NULL,99.1,'KR 7 # 14-78 / KR 6 # 14-85',11,1,'5713431011',5712861686,100,0,0,0,NULL,'1923-07-25 00:00:00','2099-01-01 00:00:00','FABIO MAURICIO PINZANO GONZALEZ','Carlos Alberto Balcazar Navarrete','5713430837',0,'atencionalciudadano@banrep.gov.co','www.banrep.gov.co','atencionalciudadano@banrep.gov.co','www.banrep.gov.co','cbalcana@banrep.gov.co',NULL),(36007104,2,1,1,899999094,1,0,0,'0',3600,'EMPRESA DE ACUEDUCTO Y ALCANTARILLADO DE BOGOTA - ESP','EMPRESA DE ACUEDUCTO Y ALCANTARILLADO DE BOGOTA - ESP','EAAB-ESP','Av CL 24 37- 15',11,1,'3447000',NULL,NULL,8.0,'Av CL 24 37- 15',11,1,'3447092',NULL,100,0,0,0,NULL,'1995-04-29 00:00:00','0000-00-00','CRISTINA ARANGO OLAYA','GERMAN RODRIGUEZ Y NUBIA LEON','3447000',7814,'NOTificaciones.sspd@ACUEDUCTO.COM.CO','WWW.ACUEDUCTO.COM.CO','notificaciones.sspd@acueducto.com.co','WWW.ACUEDUCTO.COM.CO','NILEON@ACUEDUCTO.COM.CO',NULL),(72003279,2,1,1,900494393,3,0,0,'0',7210,'INSTITUTO NACIONAL DE METROLOGIA','INSTITUTO NACIONAL DE METROLOGIA','INM','Avenida Carrera 50 No. 26-55, Interior 2 CAN',11,1,'2542222','2545222',NULL,8.0,'Avenida Carrera 50 No. 26-55, Interior 2 CAN',11,1,'2542222',2545222,100,0,0,0,NULL,'2011-11-03 00:00:00','0000-00-00','EDWIN ARVEY CRISTANCHO PINILLA','Yolanda Briceno Bueno','2542222',1426,'director@inm.gov.co','www.inm.gov.co','ybriceno@inm.gov.co','www.inm.gov.co','ybriceno@inm.gov.co',NULL),(72005139,2,1,1,899999403,4,0,0,'0',7210,'INSTITUTO NACIONAL DE SALUD','INSTITUTO NACIONAL DE SALUD','INS','AC 26 # 51-20',11,1,'2207700',NULL,NULL,99.1,'AC 26 # 51-20',11,1,'2207700',1101,100,0,0,0,NULL,'1968-04-20 00:00:00','0000-00-00','OSPINA MARTINEZ MARTHA LUCIA','May Bibiana Osorio M','2207700',1101,'contactenos@INS.GOV.CO','https://ins.gov.co','contactenos@ins.gov.co','WWW.INS.GOV.CO','mosorio@ins.gov.co',NULL),(72005141,19,1,1,860061110,3,0,0,'0',7210,'INSTITUTO AMAZONICO DE INVESTIGACIONES CIENTIFICAS SINCHI','INSTITUTO AMAZONICO DE INVESTIGACIONES CIENTIFICAS SINCHI','SINCHI','AV VASQUEZ COBO ENTRE CALLES 15 Y 16',91,1,'5925481','2862418',NULL,13.0,'AV VASQUEZ COBO ENTRE CALLES 15 Y 16',91,1,'3115587845',NULL,100,0,0,0,NULL,'1993-12-22 00:00:00','0000-00-00','MANTILLA CARDENAS LUZ MARINA','Yesenia Zambrano Ayala','3133012018',0,'dlizcano@sinchi.org.co','www.sinchi.org.co','dlizcano@sinchi.org.co','WWW.SINCHI.ORG.CO','yzambrano@sinchi.org.co',NULL),(484,6,1,1,890100251,0,2,3,'3646',2394,'CEMENTOS ARGOS S.A.','CEMENTOS ARGOS','ARGOS S.A.','VIA 40 LAS FLORES',5,1,'3556069','3556069',NULL,5.0,'CL 7 D 43 A 99',5,1,'3198700',0,0,100,0,0,NULL,'1944-09-25 00:00:00','0000-00-00','RICARDO ANDRES SIERRA FERNANDEZ','Maria Isabel Montoya Arenas','3198700',64623,'mmontoya@summa-sci.com','www.argos.com.co','mmontoya@summa-sci.com','www.argos.com.co','mmontoya@summa-sci.com',NULL),(10352,6,1,1,890903310,3,1,21,'002083-04',2013,'ANHIDRIDOS Y DERIVADOS DE COLOMBIA S.A.S','ANDERCOL S.A.S','ANDERCOL S.A.S','KR 64C 95-84',5,1,'3567000','3567000',NULL,1.0,'KR 64C 95-84',5,1,'3567000',2678135,0,100,0,0,NULL,'1965-12-14 00:00:00','0000-00-00','JUAN DAVID URREGO','MARGARITA MARIA ARBELAEZ BETANCUR','3567000',41401,'francis.belizariog@grupo-orbis.com','www.andercol.com.co','margarita.arbelaez@andercol.com.co','www.andercol.com.co','margarita.arbelaez@andercol.com.co',NULL),(10213498,2,0,1,900392611,6,0,0,'2040704',6190,'MOVIIRED S.A.S ANTES TRANZA S.A.S','MOVIIRED','MOVIIRED','KR 21 N 169-45',11,1,'3213136220','3213136220',NULL,14.0,'KR 21 N 169-45',11,1,'5895959',5895959,0,0,0,100,NULL,'2010-11-03 00:00:00','0000-00-00','ANGELICA BERMUDEZ ESTRADA','JHOAN OROZCO VILLA','5895959',4238,'compras@moviIred.co','www.moviired.co','juan.caicedo@moviired.co','www.moviired.co','jhoan.orozco@moviIred.co',NULL),(10300487,3,0,1,800254591,3,2,5,'550108130',7210,'CORPORACION PARA LA INVESTIGACION DE LA CORROSION','CORPORACION PARA LA INVESTIGACION DE LA CORROSION','C.I.C','KM 2 VIA REFUGIO SEDE UIS GUATIGUARA',68,547,'6550807','6550808',NULL,13.0,'KM 2 VIA EL REFUGIO SEDE UIS GUATIGUARA',68,547,'6550807',6550808,50,50,0,0,NULL,'1997-06-24 00:00:00','72686','JORGE HERNANDO PANQUEVA ALVAREZ','LILIANA MARIA ESTUPI├æAN CARDENAS','6550807',0,'CIC@CORROSIONCIC.COM','http://corrosion.uis.edu.co','lestupinan@corrosion.uis.edu.co','http://corrosion.uis.edu.co','lestupinan@corrosion.uis.edu.co',NULL),(10401592,4,0,1,890312562,6,1,633,'0',7210,'CENTRO DE INVESTIGACION DE LA CA├æA DE AZUCAR DE COLOMBIA','CENTRO DE INVESTIGACION DE LA CA├æA DE AZUCAR DE COLOMBIA','CENICA├æA','CL 58 NORTE # 3BN - 110',76,1,'6876611','0',NULL,13.0,'CL 58 NORTE 3BN 110',76,1,'6876611',0,0,100,0,0,NULL,'1977-09-06 00:00:00','0000-00-00','ALVARO AMAYA ESTEVEZ','EINAR ANDERSON ACU├æA','6876611',5125,'webmaster@cenicana.org','www.cenicana.org','webmaster@cenicana.org','www.cenicana.org','eanderson@cenicana.org',NULL),(10209196,2,0,1,820000142,2,0,0,'0',7210,'INSTITUTO DE INVESTIGACION DE RECURSOS BIOLOGICOS ALEXANDER','INSTITUTO DE INVESTIGACION DE RECURSOS BIOLOGICOS ALEXANDER',NULL,'CLL 28 A 15-09',11,1,'3202767','3202767',NULL,13.0,'CLL 28A 15-09',11,1,'3202767',3202767,65,35,0,0,NULL,'1995-01-20 00:00:00','52982','HERNANDO GARCIA MARTINEZ','Marcelo Betancur Corrrea','3202767',8001,'gestionhumana@humboldt.org.co','www.humboldt.org.co','dmoreno@humboldt.org.co','www.humboldt.org.co','rbetancur@humboldt.org.co',NULL),(NULL,2,1,1,890900762,5,117228,NULL,NULL,9411,'ASOCIACION NACIONAL DE EMPRESARIOS DE COLOMBIA','ASOCIACION NACIONAL DE EMPRESARIOS DE COLOMBIA','ANDI','┬áCalle 73 # 8 ÔÇô 13 Piso 7 Torre A.┬á',11,1,NULL,NULL,NULL,13.0,'┬áCalle 73 # 8 ÔÇô 13 Piso 7 Torre A.┬á',NULL,NULL,'┬á3268500',NULL,NULL,NULL,NULL,NULL,NULL,'1997-03-18 00:00:00',NULL,'WILLIAM┬áBRUCE┬áMAC┬áMASTER',NULL,NULL,NULL,'protecciondedatos@andi.com.co','www.andi.com.co/','protecciondedatos@andi.com.co','www.andi.com.co/',NULL,NULL),(NULL,6,1,1,900297523,1,1184721,NULL,NULL,9499,'CORPORACION VIDARIUM CENTRO DE INVESTIGACION EN NUTRICION, SALUD Y BIENESTAR','CORPORACION VIDARIUM CENTRO DE INVESTIGACION EN NUTRICION, SALUD Y BIENESTAR','VIDARIUM','CALLE 8 SUR 50 67',5,5001,'2856600 ┬á ┬á',NULL,NULL,13.0,'CALLE 8 SUR 50 67',NULL,NULL,'2856600 ┬á┬á',NULL,NULL,NULL,NULL,NULL,NULL,'2009-07-02 00:00:00',NULL,'MARIA ELENA UPEGUI MEJIA','MARIA ELENA UPEGUI MEJIA','604 2856600',NULL,'correspondenciasnch.domesa@serviciosnutresa.com','www.vidarium.org','opelaez@serviciosnutresa.com','www.vidarium.org','vidarium@serviciosnutresa.com',NULL),(NULL,4,1,1,890399001,1,NULL,NULL,NULL,NULL,'CAMARA DE COMERCIO DE CALI ','CAMARA DE COMERCIO DE CALI','La CCC','Calle 8 No. 3-14. Cali ÔÇô Colombia',76,76001,'(572) 886 1300','(572) 8861399',NULL,NULL,'Calle 8 No. 3-14. Cali ÔÇô Colombia',NULL,NULL,'(572) 886 1300',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EstebanÔÇ»Piedrah├¡taÔÇ»Uribe','Harold Londo├▒o','3008844091',NULL,'contacto@ccc.org.co','www.ccc.org.co','hlondono@ccc.org.co','www.ccc.org.co',NULL,NULL),(NULL,2,1,1,899999011,NULL,NULL,NULL,NULL,NULL,'DEPARTAMENTO NACIONAL DE PLANEACION','DEPARTAMENTO NACIONAL DE PLANEACION','DNP','Calle 26 # 13-19 - Edificio En Territorio',11,1,'381 5000',NULL,NULL,NULL,'Calle 26 # 13-19 - Edificio En Territorio',NULL,NULL,'381 5000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Alejandra Botero Barco','Juan Pablo Garcias','3 81 50 00',19041,'notificacionesjudiciales@dnp.gov.co','www.dnp.gov.co','juangarcia@dnp.gov.co','www.dnp.gov.co','lgamez@dnp.gov.co',NULL),(NULL,2,1,1,830067892,2,NULL,NULL,NULL,NULL,'INSTITUTO COLOMBIANO DE ANTROPOLOG├ìA E HISTORIA','INSTITUTO COLOMBIANO DE ANTROPOLOG├ìA E HISTORIA','ICANH','Av Calle 12 # 2 - 41 La Candelaria',11,1,'444 0544','( 601) 4440530',NULL,NULL,'Av Calle 12 # 2 - 41 La Candelaria',NULL,NULL,'444 0544',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nicol├ís Loaiza D├¡az','francy Morales ',' (601) 4440544',1102,'contactenos@icanh.gov.co','www.icanh.gov.co','fmorales@icanh.gov.co','www.icanh.gov.co',NULL,NULL),(1046,2,1,1,860025900,2,2,4,'4627',1040,'ALPINA PRODUCTOS ALIMENTICIOS S.A.','ALPINA S.A.',NULL,'Km. 3 viaa Brice├▒o - Sopo',11,1,'4238600','4238630',NULL,5.0,'Km 3 Via Brice├▒o - Sopo',11,1,'4238600',4238630,0,9,0,91,NULL,'1969-10-30 00:00:00','2069-10-30 00:00:00','Carlos Armando Mejia','Julian Sannchez','4238600',0,'notificaciones@alpina.com.co','www.alpina.com.co','julian.isanchez@alpina.com','www.alpina.com.co','julian.isanchez@alpina.com',NULL),(842855,6,0,1,900062201,4,2,51,'120690',1089,'ALSEC ALIMENTOS SECOS S.A.S','ALSEC ALIMENTOS SECOS S.A.S','ALSEC','Calle 79 C SUR 54-24',5,380,'3792909','3792909',NULL,14.0,'Calle 79 C SUR 54-24',5,380,'3792909',NULL,0,100,0,0,NULL,'39356','0000-00-00','ALEJANDRO MAURICIO VARGAS UPEGUI','VANESSA BEDOYA MEJIA','3792909',113,'info@alsec.com.co','WWW.ALSEC.COM.CO','liderinvestigacion6@alsec.com.co','WWW.ALSEC.COM.CO','liderinvestigacion6@alsec.com.co',NULL);
/*!40000 ALTER TABLE `pda_empresa_carga_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_admin_control`
--

DROP TABLE IF EXISTS `pda_encuesta_admin_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_admin_control` (
  `id_admin_control` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_periodo` int(11) DEFAULT NULL,
  `caratula` tinyint(4) NOT NULL DEFAULT '0' COMMENT '2- Digitado, 4-Criticado, 6-Aprobado critica',
  `modulo1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '2- Digitado, 4-Criticado, 6-Aprobado critica',
  `modulo2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '2- Digitado, 4-Criticado, 6-Aprobado critica',
  `modulo3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '2- Digitado, 4-Criticado, 6-Aprobado critica',
  `modulo4` tinyint(4) NOT NULL DEFAULT '0' COMMENT '2- Digitado, 4-Criticado, 6-Aprobado critica',
  `estado` char(2) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'A' COMMENT 'AF- Activo para fuente, PF-Pendiente de envío de fuente, AC- Critico, PC- Pendiente critico, AL- Activo logístico, PL. Pendiente logístico.',
  `fecha_actualiza` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha ├║ltima actualizaci├│n',
  `estado_notificacion` tinyint(4) DEFAULT NULL COMMENT '0- No ha sido notificado, 1- Ya fue notificado',
  `fecha_notificacion` date DEFAULT NULL COMMENT 'fecha de notificación',
  `fecha_vencimiento` date DEFAULT NULL COMMENT 'Campo calculado con la fecha de notificación + 10 días calendario',
  `id_novedad` int(11) DEFAULT '5' COMMENT 'Identificador de las novedades',
  `evaluacion5` int(11) DEFAULT '0',
  `modulo5` tinyint(4) NOT NULL DEFAULT '0' COMMENT '2- Digitado, 4-Criticado, 6-Aprobado critica',
  `fecha_envio` timestamp NULL DEFAULT NULL COMMENT 'fecha de envio del formulario.',
  PRIMARY KEY (`id_admin_control`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla de control para las encuestas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_admin_control`
--

LOCK TABLES `pda_encuesta_admin_control` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_admin_control` DISABLE KEYS */;
INSERT INTO `pda_encuesta_admin_control` VALUES (1,1,1,2021,0,0,0,0,0,'A','2022-06-14 20:27:03',NULL,NULL,NULL,5,0,0,NULL),(2,2,2,2021,0,0,0,0,0,'A','2022-06-24 16:11:38',NULL,NULL,NULL,5,0,0,NULL),(3,3,3,2021,0,0,0,0,0,'A','2022-06-14 20:27:03',NULL,NULL,NULL,5,0,0,NULL),(4,4,4,2021,0,0,0,0,0,'A','2022-06-14 20:27:03',NULL,NULL,NULL,5,0,0,NULL),(5,5,5,2021,0,0,0,0,0,'A','2022-06-24 16:11:38',NULL,NULL,NULL,5,0,0,NULL),(6,6,6,2021,0,0,0,0,0,'A','2022-06-14 20:27:03',NULL,NULL,NULL,5,0,0,NULL),(7,7,7,2021,0,0,0,0,0,'A','2022-06-24 16:11:38',NULL,NULL,NULL,5,0,0,'0000-00-00 00:00:00'),(8,8,8,2021,0,0,0,0,0,'A','2022-06-14 20:27:03',NULL,NULL,NULL,5,0,0,NULL),(9,9,9,2021,0,0,0,0,0,'A','2022-06-14 20:27:03',NULL,NULL,NULL,5,0,0,NULL),(10,10,10,2021,0,0,0,0,0,'A','2022-06-14 20:27:03',NULL,NULL,NULL,5,0,0,NULL),(11,11,11,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(12,12,12,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(13,13,13,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(14,14,14,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(15,15,15,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(16,16,16,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(17,17,17,2021,0,0,0,0,0,'A','2022-06-14 20:27:03',NULL,NULL,NULL,5,0,0,NULL),(18,18,18,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(19,19,19,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(20,20,20,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(21,21,21,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(22,22,22,2021,0,0,0,0,0,'A','2022-06-14 20:27:03',NULL,NULL,NULL,5,0,0,NULL),(23,23,23,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(24,24,24,2021,0,0,0,0,0,'A','2022-06-24 16:11:38',NULL,NULL,NULL,5,0,0,'2022-06-14 17:53:56'),(25,25,25,2021,0,0,0,0,0,'A','2022-06-14 20:27:03',NULL,NULL,NULL,5,0,0,NULL),(26,26,26,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(27,27,27,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(28,28,28,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(29,29,29,2021,0,0,0,0,0,'A','2022-06-14 20:27:04',NULL,NULL,NULL,5,0,0,NULL),(30,30,30,2021,0,0,0,0,0,'A','2022-06-14 20:27:04',NULL,NULL,NULL,5,0,0,NULL),(31,31,31,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(32,32,32,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(33,33,33,2021,0,0,0,0,0,'A','2022-05-21 00:49:14',NULL,NULL,NULL,5,0,0,NULL),(34,34,34,2021,0,0,0,0,0,'A','2022-06-14 20:27:04',NULL,NULL,NULL,5,0,0,NULL);
/*!40000 ALTER TABLE `pda_encuesta_admin_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_caratula`
--

DROP TABLE IF EXISTS `pda_encuesta_caratula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_caratula` (
  `id_caratula` int(11) NOT NULL AUTO_INCREMENT,
  `id_admin_control` int(11) NOT NULL,
  PRIMARY KEY (`id_caratula`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_caratula`
--

LOCK TABLES `pda_encuesta_caratula` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_caratula` DISABLE KEYS */;
INSERT INTO `pda_encuesta_caratula` VALUES (1,1),(2,34),(3,2),(5,3),(6,4),(7,5),(8,6),(9,7),(10,8),(11,9),(12,10),(13,11),(14,12),(15,13),(16,14),(17,15),(18,16),(19,17),(20,18),(21,19),(22,20),(23,21),(24,22),(25,23),(26,24),(27,25),(28,26),(29,27),(30,28),(31,29),(32,30),(33,31),(34,32),(35,33);
/*!40000 ALTER TABLE `pda_encuesta_caratula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_evaluacion5`
--

DROP TABLE IF EXISTS `pda_encuesta_evaluacion5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_evaluacion5` (
  `id_evaluacion5` int(11) NOT NULL AUTO_INCREMENT,
  `id_caratula` int(11) NOT NULL,
  `V1R1C1` int(11) DEFAULT NULL,
  `V2R1C1` int(11) DEFAULT NULL,
  `V3R1C1` int(11) DEFAULT NULL,
  `V4R1C1` int(11) DEFAULT NULL,
  `V5R1C1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_evaluacion5`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_evaluacion5`
--

LOCK TABLES `pda_encuesta_evaluacion5` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_evaluacion5` DISABLE KEYS */;
INSERT INTO `pda_encuesta_evaluacion5` VALUES (1,1,3,1,1,1,'Observaciones'),(2,2,4,5,3,4,'Sin observaciones '),(3,19,4,3,5,5,'N/A'),(4,24,4,5,1,5,'Sin observaciones '),(5,32,3,5,3,3,'Ninguna');
/*!40000 ALTER TABLE `pda_encuesta_evaluacion5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_modulo1`
--

DROP TABLE IF EXISTS `pda_encuesta_modulo1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_modulo1` (
  `id_modulo1` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo de la tabla modulo 1',
  `fecha_registro_mod1` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de registro de informaci├│n',
  `id_caratula` int(11) NOT NULL COMMENT 'id de la caratula con la que se relaciona.',
  `I1R1C1` int(11) DEFAULT NULL COMMENT 'I.1. Apoy├índose en las definiciones presentadas en el encabezado, se├▒ale la realizaci├│n de I+D durante el a├▒o 2020',
  `I2R1C1` int(11) DEFAULT NULL COMMENT 'I.2. ┬┐Su empresa o instituci├│n realiz├│ actividades de I+D en periodos anteriores?',
  `I3R1C1` int(11) DEFAULT NULL COMMENT 'I.3. ┬┐Su empresa o instituci├│n ha ejecutado o ejecutar├í gastos en I+D durante el a├▒o 2021? ',
  `I3R1C2` bigint(20) DEFAULT NULL COMMENT 'Monto estimado de gasto en I+D durante el a├▒o 2021',
  `I4R1C1` int(11) DEFAULT NULL COMMENT 'I.4. ┬┐Su empresa o instituci├│n tuvo que interrumpir sus actividades de I+D a causa de la pandemia por COVID 19?',
  `I5R1C1` int(11) DEFAULT NULL COMMENT 'Biotecnolog├¡a',
  `I5R2C1` int(11) DEFAULT NULL COMMENT 'Nanotecnolog├¡a',
  `I5R3C1` int(11) DEFAULT NULL COMMENT 'Inteligencia Artificial',
  `I5R4C1` int(11) DEFAULT NULL COMMENT 'Bioeconom├¡a',
  `I5R5C1` int(11) DEFAULT NULL COMMENT 'Cambio clim├ítico',
  `I5R6C1` int(11) DEFAULT NULL COMMENT 'Sostenibilidad ambiental',
  `I5R7C1` int(11) DEFAULT NULL COMMENT 'Econom├¡a circular',
  `I6R1C1` int(11) DEFAULT NULL COMMENT 'I.6 Seleccione una de las siguientes opciones, con relaci├│n a beneficios tributarios',
  `I7R1C1` int(11) DEFAULT NULL COMMENT 'Falta de Informaci├│n sobre beneficios y requisitos     ',
  `I7R2C1` int(11) DEFAULT NULL COMMENT 'Dificultades con la plataforma en l├¡nea para la solicitud del beneficio tributario',
  `I7R3C1` int(11) DEFAULT NULL COMMENT 'Dificultad para el diligenciamiento del formulario electr├│nico',
  `I7R4C1` int(11) DEFAULT NULL COMMENT 'Requisitos y tr├ímites excesivos y/o complejos        ',
  `I7R5C1` int(11) DEFAULT NULL COMMENT 'Tiempo excesivo de tr├ímite de la aprobaci├│n     ',
  `I7R6C1` int(11) DEFAULT NULL COMMENT 'La relaci├│n costo-beneficio no es favorable ',
  `I7R7C1` int(11) DEFAULT NULL COMMENT 'No hall├│ obst├ículos',
  `I8R1C1` int(11) DEFAULT NULL COMMENT 'Falta de Informaci├│n sobre beneficios y requisitos       ',
  `I8R2C1` int(11) DEFAULT NULL COMMENT 'Requisitos y tr├ímites excesivos y/o complejos                    ',
  `I8R3C1` int(11) DEFAULT NULL COMMENT 'Tiempo excesivo de tr├ímite de la aprobaci├│n           ',
  `I8R4C1` int(11) DEFAULT NULL COMMENT 'La relaci├│n costo-beneficio no es favorable ',
  `I8R5C1` int(11) DEFAULT NULL COMMENT 'No es atractivo, prioritario y/o necesario ',
  `I8R6C1` int(11) DEFAULT NULL COMMENT 'Se postul├│ en a├▒os anteriores y la experiencia no fue beneficiosa',
  `I9R1C1` int(11) DEFAULT NULL COMMENT 'No es propio de las funciones de la empresa o instituci├│n.',
  `I9R2C1` int(11) DEFAULT NULL COMMENT '2. Falta de recursos financieros.',
  `I9R3C1` int(11) DEFAULT NULL COMMENT '3. No fue prioridad para la empresa o instituci├│n.',
  `I9R4C1` int(11) DEFAULT NULL COMMENT '4. No se presentaron/adjudicaron actividades para el a├▒o en consulta.',
  `I9R5C1` int(11) DEFAULT NULL COMMENT '5. No fue necesario para la empresa o instituci├│n.',
  `I9R6C1` int(11) DEFAULT NULL COMMENT '6. Falta de infraestructura f├¡sica adecuada.',
  `I9R7C1` int(11) DEFAULT NULL COMMENT '7. Dificultad para encontrar personal t├®cnico calificado para ejecutar actividades de I+D.',
  `I9R8C1` int(11) DEFAULT NULL COMMENT '8. Dificultad para encontrar personal de gesti├│n, administraci├│n y finanzas para apoyar actividades de I+D.',
  `I9R9C1` int(11) DEFAULT NULL COMMENT '9. Falta o deficiencia de coordinacion dentro de la empresa o instituci├│n o con otras empresas.',
  `I9R10C1` int(11) DEFAULT NULL COMMENT '10. La empresa promueve, impulsa y financia actividades de I+D en beneficio de terceros.',
  `I9R11C1` int(11) DEFAULT NULL COMMENT '11. No fue necesario ejecutar actividades de I+D debido a que ya fueron realizados en periodos anteriores.',
  `I9R1C2` int(11) DEFAULT NULL COMMENT 'No es propio de las funciones de la empresa o instituci├│n.',
  `I9R2C2` int(11) DEFAULT NULL COMMENT '2. Falta de recursos financieros.',
  `I9R3C2` int(11) DEFAULT NULL COMMENT '3. No fue prioridad para la empresa o instituci├│n.',
  `I9R4C2` int(11) DEFAULT NULL COMMENT '4. No se presentaron/adjudicaron actividades para el a├▒o en consulta.',
  `I9R5C2` int(11) DEFAULT NULL COMMENT '5. No fue necesario para la empresa o instituci├│n.',
  `I9R6C2` int(11) DEFAULT NULL COMMENT '6. Falta de infraestructura f├¡sica adecuada.',
  `I9R7C2` int(11) DEFAULT NULL COMMENT '7. Dificultad para encontrar personal t├®cnico calificado para ejecutar actividades de I+D.',
  `I9R8C2` int(11) DEFAULT NULL COMMENT '8. Dificultad para encontrar personal de gesti├│n, administraci├│n y finanzas para apoyar actividades de I+D.',
  `I9R9C2` int(11) DEFAULT NULL COMMENT '9. Falta o deficiencia de coordinacion dentro de la empresa o instituci├│n o con otras empresas.',
  `I9R10C2` int(11) DEFAULT NULL COMMENT '10. La empresa promueve, impulsa y financia actividades de I+D en beneficio de terceros.',
  `I9R11C2` int(11) DEFAULT NULL COMMENT '11. No fue necesario ejecutar actividades de I+D debido a que ya fueron realizados en periodos anteriores.',
  PRIMARY KEY (`id_modulo1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena la informaci├│n del modulo 1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_modulo1`
--

LOCK TABLES `pda_encuesta_modulo1` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_modulo1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_encuesta_modulo1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_modulo2`
--

DROP TABLE IF EXISTS `pda_encuesta_modulo2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_modulo2` (
  `id_modulo2` int(11) NOT NULL AUTO_INCREMENT,
  `id_caratula` int(11) NOT NULL,
  `COD_GRUP_ALIM` int(11) NOT NULL,
  PRIMARY KEY (`id_modulo2`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_modulo2`
--

LOCK TABLES `pda_encuesta_modulo2` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_modulo2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_encuesta_modulo2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_modulo2_detalle`
--

DROP TABLE IF EXISTS `pda_encuesta_modulo2_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_modulo2_detalle` (
  `id_modulo2_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo2` int(11) NOT NULL,
  `tipo_form` char(1) NOT NULL DEFAULT 'I' COMMENT 'INVESTIGADORES=I  ; Tecnico = T',
  `ocupacion` int(11) DEFAULT NULL COMMENT '1= INVESTIGADORES ; 2 = T├®cnico o asistentes de I+D; 3 = Otro personal de apoyo',
  `tipo_persona` int(11) DEFAULT NULL COMMENT '1 = Personal interno de I+D; 2 = Personal externo de I+D',
  `sexo` char(1) DEFAULT NULL COMMENT 'M= Mujer; H= Hombre',
  `nacional_extranjero` char(1) DEFAULT NULL COMMENT 'N= Nacional; E= Extranjero',
  `maximo_nivel_titulacion` int(11) DEFAULT NULL COMMENT '1 = Doctorado; 2 = Maestr├¡a; 3 = Especializaci├│n; 4=Universitario; 5=Tecn├│logo, t├®cnico y otros',
  `area_conocimiento` int(11) DEFAULT NULL,
  `ubicacion_geografica` int(11) DEFAULT NULL,
  `numero_meses_trabajo_ano` int(11) DEFAULT NULL,
  `proporcion_tiempo_trabajado_jornada_ordinaria_semanal` int(11) DEFAULT NULL,
  `proporcion_tiempo_dedicado_ID_jornada_laboral_semanal` int(11) DEFAULT NULL,
  `remuneracion_mensual` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_modulo2_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_modulo2_detalle`
--

LOCK TABLES `pda_encuesta_modulo2_detalle` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_modulo2_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_encuesta_modulo2_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_modulo3`
--

DROP TABLE IF EXISTS `pda_encuesta_modulo3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_modulo3` (
  `id_modulo3` int(11) NOT NULL AUTO_INCREMENT,
  `id_caratula` int(11) NOT NULL,
  `COD_GRUP_ALIM` int(11) NOT NULL,
  `RAITUB_PESO_COMP` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_COMP` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_TOTPDA` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_TOTPDA` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_EMPR` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_EMPR` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_COMBU` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_COMBU` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_DIGANA` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_DIGANA` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_DIGAER` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_DIGAER` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_DEV` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_DEV` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_ALANI` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_ALANI` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_DONA` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_DONA` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_VENT` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_VENT` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_OTR` bigint(20) DEFAULT NULL,
  `RAITUB_VAL_OTR` bigint(20) DEFAULT NULL,
  `RAITUB_PESO_PORC_PDA` float DEFAULT NULL,
  `RAITUB_VAL_PORC_PDA` float DEFAULT NULL,
  `RAITUB_OTR_DESC` varchar(100) DEFAULT NULL,
  `RAITUB_CAUGEN_CALID` int(11) DEFAULT NULL,
  `RAITUB_CAUGEN_VENC` int(11) DEFAULT NULL,
  `RAITUB_CAUGEN_OFER` int(11) DEFAULT NULL,
  `RAITUB_CAUGEN_OTR` int(11) DEFAULT NULL,
  `RAITUB_CAUGEN_OTR_DESC` varchar(100) DEFAULT NULL,
  `RAITUB_CAUTRANS` tinyint(4) DEFAULT NULL,
  `RAITUB_CAUTRANS_MANIP` int(11) DEFAULT NULL,
  `RAITUB_CAUTRANS_INFR` int(11) DEFAULT NULL,
  `RAITUB_CAUTRANS_OTR` int(11) DEFAULT NULL,
  `RAITUB_CAUTRANS_OTR_DESC` varchar(100) DEFAULT NULL,
  `RAITUB_CAUALM` int(11) DEFAULT NULL,
  `RAITUB_CAUALM_MANIP` int(11) DEFAULT NULL,
  `RAITUB_CAUALM_INFR` int(11) DEFAULT NULL,
  `RAITUB_CAUALM_OTR` int(11) DEFAULT NULL,
  `RAITUB_CAUALM_OTR_DESC` varchar(100) DEFAULT NULL,
  `RAITUB_CAUEXB` int(11) DEFAULT NULL,
  `RAITUB_CAUEXB_MANIP` int(11) DEFAULT NULL,
  `RAITUB_CAUEXB_INFR` int(11) DEFAULT NULL,
  `RAITUB_CAUEXB_OTR` int(11) DEFAULT NULL,
  `RAITUB_CAUEXB_OTR_DESC` varchar(100) DEFAULT NULL,
  `RAITUB_PESO_COMP_JUST` varchar(255) DEFAULT NULL,
  `RAITUB_VAL_COMP_JUST` varchar(255) DEFAULT NULL,
  `ESTADO_MOD3` int(1) DEFAULT '0',
  `RAITUB_PESO_OTR_JUST` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_modulo3`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_modulo3`
--

LOCK TABLES `pda_encuesta_modulo3` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_modulo3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_encuesta_modulo3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_modulo3_alimentos`
--

DROP TABLE IF EXISTS `pda_encuesta_modulo3_alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_modulo3_alimentos` (
  `ID_MODULO3ALIMENTO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CARATULA` int(11) NOT NULL,
  `COD_GRUP_ALIM` int(11) NOT NULL,
  `ID_ALIMENTO` int(11) NOT NULL,
  `PORCENTAJE` int(11) NOT NULL,
  `ESTADO_ALIMENTO` int(11) DEFAULT '0' COMMENT 'ESTADO DEL ALIMENTO 1-OK, 0-INCONSISTENCIA',
  PRIMARY KEY (`ID_MODULO3ALIMENTO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_modulo3_alimentos`
--

LOCK TABLES `pda_encuesta_modulo3_alimentos` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_modulo3_alimentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_encuesta_modulo3_alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_modulo4`
--

DROP TABLE IF EXISTS `pda_encuesta_modulo4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_modulo4` (
  `id_modulo4` int(11) NOT NULL AUTO_INCREMENT,
  `id_caratula` int(11) NOT NULL,
  `COD_GRUP_ALIM` int(11) DEFAULT NULL,
  `RAITUB_APTO_PESO_DONA` bigint(20) DEFAULT NULL,
  `RAITUB_APTO_VAL_DONA` bigint(20) DEFAULT NULL,
  `RAITUB_APTO_PESO_PROM` bigint(20) DEFAULT NULL,
  `RAITUB_APTO_VAL_PROM` bigint(20) DEFAULT NULL,
  `RAITUB_APTO_PESO_TRANSF` bigint(20) DEFAULT NULL,
  `RAITUB_APTO_VAL_TRANSF` bigint(20) DEFAULT NULL,
  `RAITUB_APTO_PESO_DEVOL` bigint(20) DEFAULT NULL,
  `RAITUB_APTO_VAL_DEVOL` bigint(20) DEFAULT NULL,
  `RAITUB_APTO_PESO_OTR` bigint(20) DEFAULT NULL,
  `RAITUB_APTO_VAL_OTR` bigint(20) DEFAULT NULL,
  `RAITUB_APTO_NOMANEJO` varchar(100) DEFAULT NULL,
  `RAITUB_APTO_OTR_DESC` varchar(100) DEFAULT NULL,
  `RAITUB_APTO_NOMANEJO_JUST` varchar(100) DEFAULT NULL,
  `ESTADO_MOD4` int(1) DEFAULT '0',
  `RAITUB_APTO_PESO_OTR_JUST` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_modulo4`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_modulo4`
--

LOCK TABLES `pda_encuesta_modulo4` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_modulo4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_encuesta_modulo4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_modulo4_detalle`
--

DROP TABLE IF EXISTS `pda_encuesta_modulo4_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_modulo4_detalle` (
  `id_modulo4_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo4` int(11) DEFAULT NULL,
  `nit` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `monto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_modulo4_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_modulo4_detalle`
--

LOCK TABLES `pda_encuesta_modulo4_detalle` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_modulo4_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_encuesta_modulo4_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_encuesta_modulo5`
--

DROP TABLE IF EXISTS `pda_encuesta_modulo5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_encuesta_modulo5` (
  `id_modulo5` int(11) NOT NULL AUTO_INCREMENT,
  `id_caratula` int(11) NOT NULL,
  `REPLEG` varchar(255) DEFAULT NULL,
  `RESPONDE` varchar(255) DEFAULT NULL,
  `CARGO` varchar(50) DEFAULT NULL,
  `EMAIL3` varchar(100) DEFAULT NULL,
  `TELER` varchar(11) DEFAULT NULL,
  `TELEREXT` varchar(6) DEFAULT NULL,
  `RESPCEL` varchar(13) DEFAULT NULL,
  `FECHAENVIO` timestamp NULL DEFAULT NULL,
  `ESTADO_MOD5` int(1) DEFAULT '0' COMMENT '0-Sin Enviar, 1- Enviado.',
  PRIMARY KEY (`id_modulo5`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_encuesta_modulo5`
--

LOCK TABLES `pda_encuesta_modulo5` WRITE;
/*!40000 ALTER TABLE `pda_encuesta_modulo5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_encuesta_modulo5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_alimentos`
--

DROP TABLE IF EXISTS `pda_param_alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_alimentos` (
  `ID_ALIMENTO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_GRUPO_ALIM` int(11) NOT NULL,
  `CODIGO_ALIMENTO` bigint(20) DEFAULT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_ALIMENTO`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_alimentos`
--

LOCK TABLES `pda_param_alimentos` WRITE;
/*!40000 ALTER TABLE `pda_param_alimentos` DISABLE KEYS */;
INSERT INTO `pda_param_alimentos` VALUES (1,1,151,'Papas'),(2,1,1591,'Batatas'),(3,1,1592,'Yuca'),(4,1,1593,'Ñames'),(5,1,1599,'Otras raíces y tubérculos comestibles ricos en almidón o inulina n.c.p.'),(6,2,121101,'Espárragos'),(7,2,1212,'Coles'),(8,2,1213,'Coliflores y brócolis'),(9,2,1214,'Lechuga y achicoria'),(10,2,1215,'Espinacas'),(11,2,1216,'Alcachofas'),(12,2,121902,'Palmitos'),(13,2,122101,'Sandías (patilla)'),(14,2,1229,'Melones'),(15,2,122,'Melones'),(16,2,1231,'Ajíes y pimientos (Capsicum)'),(17,2,1232,'Pepinos y pepinillos'),(18,2,1233,'Berenjenas'),(19,2,1234,'Tomates'),(20,2,1235,'Calabazas y calabacines'),(21,2,123901,'Alcaparras'),(22,2,1251,'Zanahorias y nabos'),(23,2,1252,'Ajos'),(24,2,125301,'Cebolla cabezona (bulbo)'),(25,2,1254,'Puerros y demás hortalizas aliáceas'),(26,2,1259,'Otras hortalizas de raíz, bulbosas y tuberosas n.c.p.'),(27,2,126,'Semillas de hortalizas, excepto de remolacha'),(28,2,127001,'Champiñones'),(29,2,127,'Hongos y trufas'),(30,2,129099,'Hortalizas y legumbres n.c.p.'),(31,2,1311,'Aguacates'),(32,2,1312,'Banano'),(33,2,1313,'Plátano y otros'),(34,2,1314,'Dátiles'),(35,2,1315,'Higos'),(36,2,1316,'Mangos'),(37,2,1317,'Papayas'),(38,2,1318,'Piñas'),(39,2,131901,'Guayabas'),(40,2,131902,'Guanábanas'),(41,2,131903,'Curubas'),(42,2,131904,'Lulos'),(43,2,131905,'Maracuyá '),(44,2,131906,'Borojó'),(45,2,131907,'Feijoa'),(46,2,131908,'Badea'),(47,2,131909,'Tamarindo'),(48,2,131910,'Tomate de árbol'),(49,2,131999,'Otras frutas tropicales y subtropicales n.c.p.'),(50,2,1321,'Toronjas y pomelos'),(51,2,132201,'Limón'),(52,2,132401,'Mandarina'),(53,2,132999,'Otras frutas cítricas n.c.p.'),(54,2,133001,'Uvas frescas'),(55,2,1341,'Grosellas'),(56,2,1342,'Kiwi'),(57,2,134301,'Moras y frambuesas'),(58,2,1344,'Fresas'),(59,2,134901,'Agraz (mortiño)'),(60,2,1349,'Otras bayas y frutos del género Vaccinum n.c.p.'),(61,2,1351,'Manzanas'),(62,2,1352,'Peras'),(63,2,1353,'Albaricoques'),(64,2,1354,'Cerezas'),(65,2,135501,'Durazno (melocotón)'),(66,2,135601,'Ciruelas'),(67,2,135901,'Chontaduro'),(68,2,135,'Frutas de pepita y frutas de hueso'),(69,2,136,'Semillas de frutas'),(70,2,137,'Nueces, con cáscara (almendras, marañón, castañas, avellanas, pistachos y otras nueces)'),(71,2,1391,'Algarrobas'),(72,2,1399,'Otras frutas n.c.p.'),(73,2,141,'Soja'),(74,2,142,'Maní con cáscara'),(75,2,144,'Otras semillas oleaginosas (linaza, mostaza, canola, ajonjolí, girasol, cártamo y otras)'),(76,2,145,'Olivos'),(77,2,146,'Cocos, con cáscara'),(78,2,149103,'Corozo –cuesco – (cascarilla de palma africana)'),(79,2,149901,'Coco sin cáscara (Copra)'),(80,2,149999,'Otros frutos oleaginosos n.c.p.'),(81,2,1801,'Remolacha azucarera'),(82,2,2141,'Frutas secas (uvas pasas, ciruelas secas, coco rallados, higos secos, frutas deshidratadas)'),(85,2,236,'Cacao, chocolate y confitería'),(86,2,23813,'Café tostado, incluso molido, descafeinado o no'),(88,3,111,'Trigo '),(89,3,112,'Maíz'),(90,3,113,'Arroz'),(91,3,114,'Sorgo'),(92,3,115,'Cebada '),(93,3,116,'Centeno'),(94,3,117,'Avena'),(95,3,118,'Mijo '),(96,3,119,'Otros cereales'),(97,3,121901,'Habichuelas'),(98,3,1241,'Fríjoles verdes'),(99,3,124201,'Arveja verde'),(100,3,124202,'Arveja desvainada'),(101,3,1249,'Otras legumbres verdes'),(102,3,170101,'Fríjol seco'),(103,3,1702,'Habas, secas'),(104,3,1703,'Garbanzos, secos'),(105,3,1704,'Lentejas, secas'),(106,3,1705,'Arvejas, secas'),(107,3,1709,'Otras legumbres secas n.c.p.'),(109,3,2316,'Arroz, semiblanqueado o descascarillado'),(110,4,2111,'Carne de mamíferos, fresca o refrigerada'),(111,4,2112,'Carne de aves, fresca o refrigerada'),(112,4,2113,'Carne de mamíferos, congelada'),(113,4,2114,'Carne de aves, congelada'),(114,4,2115,'Despojos comestibles de mamíferos, frescos, refrigerados o congelados'),(115,4,2116,'Despojos comestibles de aves, frescos, refrigerados o congelados'),(117,4,21175,'Extractos y jugos de carne, pescado, crustáceos, moluscos o demás invertebrados acuáticos'),(118,4,2117601,'Lechona (cerdo relleno)'),(119,4,21179,'Otras preparaciones y conservas de carne, despojos o sangre'),(120,4,2117,'Conservas y preparados de carne, de despojos o de sangre (jamón, tocineta)'),(121,5,422,'Ostras'),(122,5,429,'Otros moluscos e invertebrados acuáticos, vivos, frescos o refrigerados'),(123,5,42,'Peces vivos, frescos o refrigerados'),(127,5,49,'Otras plantas (algas) y animales acuáticos (excepto aquellos que tienen fines ornamentales: conchas)'),(128,5,2121,'Pescado congelado (excepto filetes y carne de pescado)'),(129,5,2122,'Filetes y carnes de pescado, hígados y huevas de pescado'),(130,5,2123,'Pescado y filetes de pescado, secos, ahumados, salados o en salmuera. Harina comestible de pescado'),(132,5,2125,'Crustáceos, congelados (camarón y langostinos salados y secos)'),(133,5,2126,'Moluscos y otros invertebrados acuáticos, congelados, secos, salados o en salmuera'),(134,5,2127,'Crustáceos preparados o conservados de otra forma (camarones y langostinos enlatados)'),(138,6,22,'Leche cruda (de animales bovinos y ovinos)'),(139,6,231,'Huevos de gallina con cáscara, frescos'),(140,6,232,'Huevos de otras aves con cáscara'),(141,6,2211,'Leche líquida procesada'),(142,6,2212,'Crema (nata) de leche, fresca'),(143,6,2213,'Suero'),(144,6,2221,'Leche y crema (nata) en estado sólido (leche en polvo)'),(145,6,2222,'Leche y nata, concentradas o con adición de azúcar u otro edulcorante, en estado diferente al sólido'),(146,6,2223,'Yogur y otras leches o cremas fermentadas o acidificadas'),(147,6,2224,'Mantequilla y otras grasas y aceites derivados de la leche'),(148,6,2225,'Quesos, frescos o procesados'),(149,6,2227,'Helados y otros productos similares'),(150,6,2229,'Otros productos lácteos n.c.p. (postres, arequipe, natilla, leche saborizada)'),(151,6,223,'Huevos con cáscara, conservados o cocidos'),(152,7,162001,'Té (verde, negro) sin elaborar'),(153,7,16201,'Salmueras y sus sales, agua de mar'),(154,7,16202,'Sal procesada (refinada, yodada)'),(155,7,16203,'Cloruro de sodio puro, sal procesada (industrial, mineralizada)'),(156,7,163,'Hojas de yerba mate'),(157,7,1651,'Pimienta, sin elaborar'),(158,7,1652,'Chiles y pimientos, secos, sin elaborar'),(159,7,1653,'Nuez moscada, macis y cardamomo, sin elaborar'),(160,7,1654,'Anís, anís estrellado, cilantro, comino, hinojo, semillas de alcaravea, sin elaborar'),(161,7,1655,'Canela, sin elaborar'),(162,7,1656,'Clavos, sin elaborar'),(163,7,1657,'Jengibre, sin elaborar'),(164,7,1658,'Vainilla, sin elaborar'),(165,7,1659,'Conos de lúpulo'),(166,7,165,'Especias, sin elaborar'),(167,7,169,'Otras plantas aromáticas, bebestibles y especias n.c.p.'),(168,7,1912,'Alfalfa'),(169,7,215,'Aceites y grasas animales y vegetales '),(171,7,2172,'Harina y polvo de semillas o de frutos oleaginosos (excepto las de mostaza)'),(172,7,2311,'Harina de trigo y morcajo'),(173,7,2312,'Otras harinas de cereales (maíz, arroz, avena y otros cereales)'),(174,7,2313,'Grañones, sémola y gránulos de trigo y otros cereales'),(177,7,23213,'Sucedáneos de la miel; caramelo'),(178,7,2322,'Almidón y fécula, inulina, gluten de trigo, dextrina y demás almidones y féculas modificadas'),(179,7,234,'Productos de panadería'),(180,7,2351,'Azúcar de caña (morena) o de remolacha'),(181,7,2352,'Azúcar refinada (blanca)'),(183,7,2355,'Panela de caña de azúcar'),(185,7,2391,'Té, extractos, esencias y concentrados, y preparados de té o mate'),(186,7,2392,'Especias y plantas aromáticas procesadas'),(188,7,291,'Miel natural');
/*!40000 ALTER TABLE `pda_param_alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_areaconocimientodesempena`
--

DROP TABLE IF EXISTS `pda_param_areaconocimientodesempena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_areaconocimientodesempena` (
  `id_areaconocimientodesempena` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_areaconocimientodesempena`
--

LOCK TABLES `pda_param_areaconocimientodesempena` WRITE;
/*!40000 ALTER TABLE `pda_param_areaconocimientodesempena` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_param_areaconocimientodesempena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_ciiu4`
--

DROP TABLE IF EXISTS `pda_param_ciiu4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_ciiu4` (
  `cod_actividad` varchar(100) DEFAULT NULL,
  `desc_actividad` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_ciiu4`
--

LOCK TABLES `pda_param_ciiu4` WRITE;
/*!40000 ALTER TABLE `pda_param_ciiu4` DISABLE KEYS */;
INSERT INTO `pda_param_ciiu4` VALUES ('0000','Persona natural'),('0111','Cultivo de cereales (excepto arroz), legumbres y semillas oleaginosas '),('0112','Cultivo de arroz '),('0113','Cultivo de hortalizas, ra├¡ces y tub├®rculos '),('0114','Cultivo de tabaco '),('0115','Cultivo de plantas textiles '),('0119','Otros cultivos transitorios n.c.p.'),('0121','Cultivo de frutas tropicales y subtropicales'),('0122','Cultivo de pl├ítano y banano'),('0123','Cultivo de caf├®'),('0124','Cultivo de ca├▒a de az├║car'),('0125','Cultivo de flor de corte'),('0126','Cultivo de palma para aceite (palma africana) y otros frutos oleaginosos'),('0127','Cultivo de plantas con las que se preparan bebidas'),('0128','Cultivo de especias y de plantas arom├íticas y medicinales '),('0129','Otros cultivos permanentes n.c.p.'),('0130','Propagaci├│n de plantas (actividades de los viveros, excepto viveros forestales) '),('0141','Cr├¡a de ganado bovino y bufalino'),('0142','Cr├¡a de caballos y otros equinos '),('0143','Cr├¡a de ovejas y cabras '),('0144','Cr├¡a de ganado porcino'),('0145','Cr├¡a de aves de corral'),('0149','Cr├¡a de otros animales n.c.p.'),('0150','Explotaci├│n mixta (agr├¡cola y pecuaria) '),('0161','Actividades de apoyo a la agricultura '),('0162','Actividades de apoyo a la ganader├¡a'),('0163','Actividades posteriores a la cosecha '),('0164','Tratamiento de semillas para propagaci├│n '),('0170','Caza ordinaria y mediante trampas y actividades de servicios conexas '),('0210','Silvicultura y otras actividades forestales'),('0220','Extracci├│n de madera '),('0230','Recolecci├│n de productos forestales diferentes a la madera'),('0240','Servicios de apoyo a la silvicultura '),('0311','Pesca mar├¡tima '),('0312','Pesca de agua dulce '),('0321','Acuicultura mar├¡tima '),('0322','Acuicultura de agua dulce'),('0510','Extracci├│n de hulla (carb├│n de piedra)'),('0520','Extracci├│n de carb├│n lignito'),('0610','Extracci├│n de petr├│leo crudo'),('0620','Extracci├│n de gas natural'),('0710','Extracci├│n de minerales de hierro'),('0721','Extracci├│n de minerales de uranio y de torio'),('0722','Extracci├│n de oro y otros metales preciosos'),('0723','Extracci├│n de minerales de n├¡quel'),('0729','Extracci├│n de otros minerales metal├¡feros no ferrosos n.c.p.'),('0811','Extracci├│n de piedra, arena, arcillas comunes, yeso y anhidrita'),('0812','Extracci├│n de arcillas de uso industrial, caliza, caol├¡n y bentonitas'),('0820','Extracci├│n de esmeraldas, piedras preciosas y semipreciosas'),('0891','Extracci├│n de minerales para la fabricaci├│n de abonos y productos qu├¡micos'),('0892','Extracci├│n de halita (sal)'),('0899','Extracci├│n de otros minerales no met├ílicos n.c.p.'),('0910','Actividades de apoyo para la extracci├│n de petr├│leo y de gas natural'),('0990','Actividades de apoyo para otras actividades de explotaci├│n de minas y canteras'),('1011','Procesamiento y conservaci├│n de carne y productos c├írnicos'),('1012','Procesamiento y conservaci├│n de pescados, crust├íceos y moluscos'),('1020','Procesamiento y conservaci├│n de frutas, legumbres, hortalizas y tub├®rculos'),('1030','Elaboraci├│n de aceites y grasas de origen vegetal y animal'),('1040','Elaboraci├│n de productos l├ícteos'),('1051','Elaboraci├│n de productos de moliner├¡a'),('1052','Elaboraci├│n de almidones y productos derivados del almid├│n'),('1061','Trilla de caf├®'),('1062','Descafeinado, tosti├│n y molienda del caf├®'),('1063','Otros derivados del caf├®'),('1071','Elaboraci├│n y refinaci├│n de az├║car'),('1072','Elaboraci├│n de panela'),('1081','Elaboraci├│n de productos de panader├¡a'),('1082','Elaboraci├│n de cacao, chocolate y productos de confiter├¡a'),('1083','Elaboraci├│n de macarrones, fideos, alcuzcuz y productos farin├íceos similares'),('1084','Elaboraci├│n de comidas y platos preparados'),('1089','Elaboraci├│n de otros productos alimenticios n.c.p.'),('1090','Elaboraci├│n de alimentos preparados para animales'),('1101','Destilaci├│n, rectificaci├│n y mezcla de bebidas alcoh├│licas'),('1102','Elaboraci├│n de bebidas fermentadas no destiladas'),('1103','Producci├│n de malta, elaboraci├│n de cervezas y otras bebidas malteadas'),('1104','Elaboraci├│n de bebidas no alcoh├│licas, producci├│n de aguas minerales y de otras aguas embotelladas'),('1200','Elaboraci├│n de productos de tabaco'),('1311','Preparaci├│n e hilatura de fibras textiles'),('1312','Tejedur├¡a de productos textiles'),('1313','Acabado de productos textiles'),('1391','Fabricaci├│n de tejidos de punto y ganchillo'),('1392','Confecci├│n de art├¡culos con materiales textiles, excepto prendas de vestir'),('1393','Fabricaci├│n de tapetes y alfombras para pisos'),('1394','Fabricaci├│n de cuerdas, cordeles, cables, bramantes y redes'),('1399','Fabricaci├│n de otros art├¡culos textiles n.c.p.'),('1410','Confecci├│n de prendas de vestir, excepto prendas de piel'),('1420','Fabricaci├│n de art├¡culos de piel'),('1430','Fabricaci├│n de art├¡culos de punto y ganchillo'),('1511','Curtido y recurtido de cueros; recurtido y te├▒ido de pieles'),('1512','Fabricaci├│n de art├¡culos de viaje, bolsos de mano y art├¡culos similares elaborados en cuero, y fabricaci├│n de art├¡culos de talabarter├¡a y guarnicioner├¡a'),('1513','Fabricaci├│n de art├¡culos de viaje, bolsos de mano y art├¡culos similares; art├¡culos de talabarter├¡a y guarnicioner├¡a elaborados en otros materiales'),('1521','Fabricaci├│n de calzado de cuero y piel, con cualquier tipo de suela'),('1522','Fabricaci├│n de otros tipos de calzado, excepto calzado de cuero y piel'),('1523','Fabricaci├│n de partes del calzado'),('1610','Aserrado, acepillado e impregnaci├│n de la madera'),('1620','Fabricaci├│n de hojas de madera para enchapado; fabricaci├│n de tableros contrachapados, tableros laminados, tableros de part├¡culas y otros tableros y paneles'),('1630','Fabricaci├│n de partes y piezas de madera, de carpinter├¡a y ebanister├¡a para la construcci├│n'),('1640','Fabricaci├│n de recipientes de madera'),('1690','Fabricaci├│n de otros productos de madera; fabricaci├│n de art├¡culos de corcho, cester├¡a y esparter├¡a'),('1701','Fabricaci├│n de pulpas (pastas) celul├│sicas; papel y cart├│n'),('1702','Fabricaci├│n de papel y cart├│n ondulado (corrugado); fabricaci├│n de envases, empaques y de embalajes de papel y cart├│n.'),('1709','Fabricaci├│n de otros art├¡culos de papel y cart├│n'),('1811','Actividades de impresi├│n'),('1812','Actividades de servicios relacionados con la impresi├│n'),('1820','Producci├│n de copias a partir de grabaciones originales '),('1910','Fabricaci├│n de productos de hornos de coque'),('1921','Fabricaci├│n de productos de la refinaci├│n del petr├│leo'),('1922','Actividad de mezcla de combustibles'),('2011','Fabricaci├│n de sustancias y productos qu├¡micos b├ísicos'),('2012','Fabricaci├│n de abonos y compuestos inorg├ínicos nitrogenados'),('2013','Fabricaci├│n de pl├ísticos en formas primarias'),('2014','Fabricaci├│n de caucho sint├®tico en formas primarias'),('2021','Fabricaci├│n de plaguicidas y otros productos qu├¡micos de uso agropecuario'),('2022','Fabricaci├│n de pinturas, barnices y revestimientos similares, tintas para impresi├│n y masillas'),('2023','Fabricaci├│n de jabones y detergentes, preparados para limpiar y pulir; perfumes y preparados de tocador'),('2029','Fabricaci├│n de otros productos qu├¡micos n.c.p.'),('2030','Fabricaci├│n de fibras sint├®ticas y artificiales'),('2100','Fabricaci├│n de productos farmac├®uticos, sustancias qu├¡micas medicinales y productos bot├ínicos de uso farmac├®utico'),('2211','Fabricaci├│n de llantas y neum├íticos de caucho'),('2212','Reencauche de llantas usadas'),('2219','Fabricaci├│n de formas b├ísicas de caucho y otros productos de caucho n.c.p.'),('2221','Fabricaci├│n de formas b├ísicas de pl├ístico'),('2229','Fabricaci├│n de art├¡culos de pl├ístico n.c.p.'),('2310','Fabricaci├│n de vidrio y productos de vidrio'),('2391','Fabricaci├│n de productos refractarios'),('2392','Fabricaci├│n de materiales de arcilla para la construcci├│n'),('2393','Fabricaci├│n de otros productos de cer├ímica y porcelana'),('2394','Fabricaci├│n de cemento, cal y yeso'),('2395','Fabricaci├│n de art├¡culos de hormig├│n, cemento y yeso'),('2396','Corte, tallado y acabado de la piedra'),('2399','Fabricaci├│n de otros productos minerales no met├ílicos n.c.p.'),('2410','Industrias b├ísicas de hierro y de acero'),('2421','Industrias b├ísicas de metales preciosos'),('2429','Industrias b├ísicas de otros metales no ferrosos'),('2431','Fundici├│n de hierro y de acero'),('2432','Fundici├│n de metales no ferrosos '),('2511','Fabricaci├│n de productos met├ílicos para uso estructural'),('2512','Fabricaci├│n de tanques, dep├│sitos y recipientes de metal, excepto los utilizados para el envase o transporte de mercanc├¡as'),('2513','Fabricaci├│n de generadores de vapor, excepto calderas de agua caliente para calefacci├│n central'),('2520','Fabricaci├│n de armas y municiones'),('2591','Forja, prensado, estampado y laminado de metal; pulvimetalurgia'),('2592','Tratamiento y revestimiento de metales; mecanizado'),('2593','Fabricaci├│n de art├¡culos de cuchiller├¡a, herramientas de mano y art├¡culos de ferreter├¡a'),('2599','Fabricaci├│n de otros productos elaborados de metal n.c.p.'),('2610','Fabricaci├│n de componentes y tableros electr├│nicos'),('2620','Fabricaci├│n de computadoras y de equipo perif├®rico'),('2630','Fabricaci├│n de equipos de comunicaci├│n'),('2640','Fabricaci├│n de aparatos electr├│nicos de consumo'),('2651','Fabricaci├│n de equipo de medici├│n, prueba, navegaci├│n y control'),('2652','Fabricaci├│n de relojes'),('2660','Fabricaci├│n de equipo de irradiaci├│n y equipo electr├│nico de uso m├®dico y terap├®utico'),('2670','Fabricaci├│n de instrumentos ├│pticos y equipo fotogr├ífico'),('2680','Fabricaci├│n de medios magn├®ticos y ├│pticos para almacenamiento de datos'),('2711','Fabricaci├│n de motores, generadores y transformadores el├®ctricos'),('2712','Fabricaci├│n de aparatos de distribuci├│n y control de la energ├¡a el├®ctrica'),('2720','Fabricaci├│n de pilas, bater├¡as y acumuladores el├®ctricos'),('2731','Fabricaci├│n de hilos y cables el├®ctricos y de fibra ├│ptica'),('2732','Fabricaci├│n de dispositivos de cableado'),('2740','Fabricaci├│n de equipos el├®ctricos de iluminaci├│n'),('2750','Fabricaci├│n de aparatos de uso dom├®stico'),('2790','Fabricaci├│n de otros tipos de equipo el├®ctrico n.c.p.'),('2811','Fabricaci├│n de motores, turbinas, y partes para motores de combusti├│n interna'),('2812','Fabricaci├│n de equipos de potencia hidr├íulica y neum├ítica'),('2813','Fabricaci├│n de otras bombas, compresores, grifos y v├ílvulas'),('2814','Fabricaci├│n de cojinetes, engranajes, trenes de engranajes y piezas de transmisi├│n'),('2815','Fabricaci├│n de hornos, hogares y quemadores industriales'),('2816','Fabricaci├│n de equipo de elevaci├│n y manipulaci├│n'),('2817','Fabricaci├│n de maquinaria y equipo de oficina (excepto computadoras y equipo perif├®rico)'),('2818','Fabricaci├│n de herramientas manuales con motor'),('2819','Fabricaci├│n de otros tipos de maquinaria y equipo de uso general n.c.p.'),('2821','Fabricaci├│n de maquinaria agropecuaria y forestal'),('2822','Fabricaci├│n de m├íquinas formadoras de metal y de m├íquinas herramienta'),('2823','Fabricaci├│n de maquinaria para la metalurgia'),('2824','Fabricaci├│n de maquinaria para explotaci├│n de minas y canteras y para obras de construcci├│n'),('2825','Fabricaci├│n de maquinaria para la elaboraci├│n de alimentos, bebidas y tabaco'),('2826','Fabricaci├│n de maquinaria para la elaboraci├│n de productos textiles, prendas de vestir y cueros'),('2829','Fabricaci├│n de otros tipos de maquinaria y equipo de uso especial n.c.p.'),('2910','Fabricaci├│n de veh├¡culos automotores y sus motores'),('2920','Fabricaci├│n de carrocer├¡as para veh├¡culos automotores; fabricaci├│n de remolques y semirremolques '),('2930','Fabricaci├│n de partes, piezas (autopartes) y accesorios (lujos) para veh├¡culos automotores'),('3011','Construcci├│n de barcos y de estructuras flotantes'),('3012','Construcci├│n de embarcaciones de recreo y deporte'),('3020','Fabricaci├│n de locomotoras y de material rodante para ferrocarriles'),('3030','Fabricaci├│n de aeronaves, naves espaciales y de maquinaria conexa'),('3040','Fabricaci├│n de veh├¡culos militares de combate'),('3091','Fabricaci├│n de motocicletas'),('3092','Fabricaci├│n de bicicletas y de sillas de ruedas para personas con discapacidad'),('3099','Fabricaci├│n de otros tipos de equipo de transporte n.c.p.'),('3110','Fabricaci├│n de muebles '),('3120','Fabricaci├│n de colchones y somieres'),('3210','Fabricaci├│n de joyas, bisuter├¡a y art├¡culos conexos'),('3220','Fabricaci├│n de instrumentos musicales'),('3230','Fabricaci├│n de art├¡culos y equipo para la pr├íctica del deporte'),('3240','Fabricaci├│n de juegos, juguetes y rompecabezas'),('3250','Fabricaci├│n de instrumentos, aparatos y materiales m├®dicos y odontol├│gicos (incluido mobiliario)'),('3290','Otras industrias manufactureras n.c.p.'),('3311','Mantenimiento y reparaci├│n especializado de productos elaborados en metal'),('3312','Mantenimiento y reparaci├│n especializado de maquinaria y equipo'),('3313','Mantenimiento y reparaci├│n especializado de equipo electr├│nico y ├│ptico'),('3314','Mantenimiento y reparaci├│n especializado de equipo el├®ctrico'),('3315','Mantenimiento y reparaci├│n especializado de equipo de transporte, excepto los veh├¡culos automotores, motocicletas y bicicletas'),('3319','Mantenimiento y reparaci├│n de otros tipos de equipos y sus componentes n.c.p.'),('3320','Instalaci├│n especializada de maquinaria y equipo industrial '),('3511','Generaci├│n de energ├¡a el├®ctrica'),('3512','Transmisi├│n de energ├¡a el├®ctrica'),('3513','Distribuci├│n de energ├¡a el├®ctrica'),('3514','Comercializaci├│n de energ├¡a el├®ctrica'),('3520','Producci├│n de gas; distribuci├│n de combustibles gaseosos por tuber├¡as'),('3530','Suministro de vapor y aire acondicionado'),('3600','Captaci├│n, tratamiento y distribuci├│n de agua'),('3700','Evacuaci├│n y tratamiento de aguas residuales'),('3811','Recolecci├│n de desechos no peligrosos'),('3812','Recolecci├│n de desechos peligrosos'),('3821','Tratamiento y disposici├│n de desechos no peligrosos'),('3822','Tratamiento y disposici├│n de desechos peligrosos'),('3830','Recuperaci├│n de materiales'),('3900','Actividades de saneamiento ambiental y otros servicios de gesti├│n de desechos'),('4111','Construcci├│n de edificios residenciales'),('4112','Construcci├│n de edificios no residenciales'),('4210','Construcci├│n de carreteras y v├¡as de ferrocarril'),('4220','Construcci├│n de proyectos de servicio p├║blico'),('4290','Construcci├│n de otras obras de ingenier├¡a civil'),('4311','Demolici├│n'),('4312','Preparaci├│n del terreno'),('4321','Instalaciones el├®ctricas'),('4322','Instalaciones de fontaner├¡a, calefacci├│n y aire acondicionado'),('4329','Otras instalaciones especializadas'),('4330','Terminaci├│n y acabado de edificios y obras de ingenier├¡a civil'),('4390','Otras actividades especializadas para la construcci├│n de edificios y obras de ingenier├¡a civil'),('4511','Comercio de veh├¡culos automotores nuevos'),('4512','Comercio de veh├¡culos automotores usados'),('4520','Mantenimiento y reparaci├│n de veh├¡culos automotores'),('4530','Comercio de partes, piezas (autopartes) y accesorios (lujos) para veh├¡culos automotores'),('4541','Comercio de motocicletas y de sus partes, piezas y accesorios'),('4542','Mantenimiento y reparaci├│n de motocicletas y de sus partes y piezas'),('4610','Comercio al por mayor a cambio de una retribuci├│n o por contrata'),('4620','Comercio al por mayor de materias primas agropecuarias; animales vivos'),('4631','Comercio al por mayor de productos alimenticios'),('4632','Comercio al por mayor de bebidas y tabaco'),('4641','Comercio al por mayor de productos textiles, productos confeccionados para uso dom├®stico'),('4642','Comercio al por mayor de prendas de vestir'),('4643','Comercio al por mayor de calzado'),('4644','Comercio al por mayor de aparatos y equipo de uso dom├®stico'),('4645','Comercio al por mayor de productos farmac├®uticos, medicinales, cosm├®ticos y de tocador'),('4649','Comercio al por mayor de otros utensilios dom├®sticos n.c.p.'),('4651','Comercio al por mayor de computadores, equipo perif├®rico y programas de inform├ítica'),('4652','Comercio al por mayor de equipo, partes y piezas electr├│nicos y de telecomunicaciones'),('4653','Comercio al por mayor de maquinaria y equipo agropecuarios'),('4659','Comercio al por mayor de otros tipos de maquinaria y equipo n.c.p.'),('4661','Comercio al por mayor de combustibles s├│lidos, l├¡quidos, gaseosos y productos conexos'),('4662','Comercio al por mayor de metales y productos metal├¡feros'),('4663','Comercio al por mayor de materiales de construcci├│n, art├¡culos de ferreter├¡a, pinturas, productos de vidrio, equipo y materiales de fontaner├¡a y calefacci├│n'),('4664','Comercio al por mayor de productos qu├¡micos b├ísicos, cauchos y pl├ísticos en formas primarias y productos qu├¡micos de uso agropecuario'),('4665','Comercio al por mayor de desperdicios, desechos y chatarra'),('4669','Comercio al por mayor de otros productos n.c.p.'),('4690','Comercio al por mayor no especializado'),('4711','Comercio al por menor en establecimientos no especializados con surtido compuesto principalmente por alimentos, bebidas o tabaco'),('4719','Comercio al por menor en establecimientos no especializados, con surtido compuesto principalmente por productos diferentes de alimentos (v├¡veres en general), bebidas y tabaco'),('4721','Comercio al por menor de productos agr├¡colas para el consumo en establecimientos especializados'),('4722','Comercio al por menor de leche, productos l├ícteos y huevos, en establecimientos especializados'),('4723','Comercio al por menor de carnes (incluye aves de corral), productos c├írnicos, pescados y productos de mar, en establecimientos especializados'),('4724','Comercio al por menor de bebidas y productos del tabaco, en establecimientos especializados'),('4729','Comercio al por menor de otros productos alimenticios n.c.p., en establecimientos especializados'),('4731','Comercio al por menor de combustible para automotores'),('4732','Comercio al por menor de lubricantes (aceites, grasas), aditivos y productos de limpieza para veh├¡culos automotores'),('4741','Comercio al por menor de computadores, equipos perif├®ricos, programas de inform├ítica y equipos de telecomunicaciones en establecimientos especializados'),('4742','Comercio al por menor de equipos y aparatos de sonido y de video, en establecimientos especializados'),('4751','Comercio al por menor de productos textiles en establecimientos especializados'),('4752','Comercio al por menor de art├¡culos de ferreter├¡a, pinturas y productos de vidrio en establecimientos especializados'),('4753','Comercio al por menor de tapices, alfombras y cubrimientos para paredes y pisos en establecimientos especializados'),('4754','Comercio al por menor de electrodom├®sticos y gasodom├®sticos de uso dom├®stico, muebles y equipos de iluminaci├│n'),('4755','Comercio al por menor de art├¡culos y utensilios de uso dom├®stico'),('4759','Comercio al por menor de otros art├¡culos dom├®sticos en establecimientos especializados'),('4761','Comercio al por menor de libros, peri├│dicos, materiales y art├¡culos de papeler├¡a y escritorio, en establecimientos especializados'),('4762','Comercio al por menor de art├¡culos deportivos, en establecimientos especializados '),('4769','Comercio al por menor de otros art├¡culos culturales y de entretenimiento n.c.p. en establecimientos especializados'),('4771','Comercio al por menor de prendas de vestir y sus accesorios (incluye art├¡culos de piel) en establecimientos especializados'),('4772','Comercio al por menor de todo tipo de calzado y art├¡culos de cuero y suced├íneos del cuero en establecimientos especializados.'),('4773','Comercio al por menor de productos farmac├®uticos y medicinales, cosm├®ticos y art├¡culos de tocador en establecimientos especializados'),('4774','Comercio al por menor de otros productos nuevos en establecimientos especializados'),('4775','Comercio al por menor de art├¡culos de segunda mano'),('4781','Comercio al por menor de alimentos, bebidas y tabaco, en puestos de venta m├│viles'),('4782','Comercio al por menor de productos textiles, prendas de vestir y calzado, en puestos de venta m├│viles'),('4789','Comercio al por menor de otros productos en puestos de venta m├│viles'),('4791','Comercio al por menor realizado a trav├®s de Internet'),('4792','Comercio al por menor realizado a trav├®s de casas de venta o por correo'),('4799','Otros tipos de comercio al por menor no realizado en establecimientos, puestos de venta o mercados.'),('4911','Transporte f├®rreo de pasajeros'),('4912','Transporte f├®rreo de carga '),('4921','Transporte de pasajeros'),('4922','Transporte mixto'),('4923','Transporte de carga por carretera'),('4930','Transporte por tuber├¡as'),('5011','Transporte de pasajeros mar├¡timo y de cabotaje '),('5012','Transporte de carga mar├¡timo y de cabotaje '),('5021','Transporte fluvial de pasajeros'),('5022','Transporte fluvial de carga'),('5111','Transporte a├®reo nacional de pasajeros '),('5112','Transporte a├®reo internacional de pasajeros '),('5121','Transporte a├®reo nacional de carga '),('5122','Transporte a├®reo internacional de carga '),('5210','Almacenamiento y dep├│sito'),('5221','Actividades de estaciones, v├¡as y servicios complementarios para el transporte terrestre'),('5222','Actividades de puertos y servicios complementarios para el transporte acu├ítico'),('5223','Actividades de aeropuertos, servicios de navegaci├│n a├®rea y dem├ís actividades conexas al transporte a├®reo'),('5224','Manipulaci├│n de carga'),('5229','Otras actividades complementarias al transporte'),('5310','Actividades postales nacionales'),('5320','Actividades de mensajer├¡a'),('5511','Alojamiento en hoteles '),('5512','Alojamiento en apartahoteles'),('5513','Alojamiento en centros vacacionales '),('5514','Alojamiento rural'),('5519','Otros tipos de alojamientos para visitantes'),('5520','Actividades de zonas de camping y parques para veh├¡culos recreacionales'),('5530','Servicio por horas '),('5590','Otros tipos de alojamiento n.c.p.'),('5611','Expendio a la mesa de comidas preparadas'),('5612','Expendio por autoservicio de comidas preparadas'),('5613','Expendio de comidas preparadas en cafeter├¡as'),('5619','Otros tipos de expendio de comidas preparadas n.c.p.'),('5621','Catering para eventos'),('5629','Actividades de otros servicios de comidas'),('5630','Expendio de bebidas alcoh├│licas para el consumo dentro del establecimiento'),('5811','Edici├│n de libros'),('5812','Edici├│n de directorios y listas de correo'),('5813','Edici├│n de peri├│dicos, revistas y otras publicaciones peri├│dicas'),('5819','Otros trabajos de edici├│n'),('5820','Edici├│n de programas de inform├ítica (software)'),('5911','Actividades de producci├│n de pel├¡culas cinematogr├íficas, videos, programas, anuncios y comerciales de televisi├│n'),('5912','Actividades de posproducci├│n de pel├¡culas cinematogr├íficas, videos, programas, anuncios y comerciales de televisi├│n'),('5913','Actividades de distribuci├│n de pel├¡culas cinematogr├íficas, videos, programas, anuncios y comerciales de televisi├│n'),('5914','Actividades de exhibici├│n de pel├¡culas cinematogr├íficas y videos'),('5920','Actividades de grabaci├│n de sonido y edici├│n de musica'),('6010','Actividades de programaci├│n y transmisi├│n en el servicio de radiodifusi├│n sonora'),('6020','Actividades de programaci├│n y transmisi├│n de televisi├│n'),('6110','Actividades de telecomunicaciones al├ímbricas'),('6120','Actividades de telecomunicaciones inal├ímbricas'),('6130','Actividades de telecomunicaci├│n satelital'),('6190','Otras actividades de telecomunicaciones'),('6201','Actividades de desarrollo de sistemas inform├íticos (planificaci├│n, an├ílisis, dise├▒o, programaci├│n, pruebas)'),('6202','Actividades de consultor├¡a inform├ítica y actividades de administraci├│n de instalaciones inform├íticas'),('6209','Otras actividades de tecnolog├¡as de informaci├│n y actividades de servicios inform├íticos'),('6311','Procesamiento de datos, alojamiento (hosting) y actividades relacionadas'),('6312','Portales web'),('6391','Actividades de agencias de noticias'),('6399','Otras actividades de servicio de informaci├│n n.c.p.'),('6411','Banco Central'),('6412','Bancos comerciales'),('6421','Actividades de las corporaciones financieras'),('6422','Actividades de las compa├▒├¡as de financiamiento'),('6423','Banca de segundo piso'),('6424','Actividades de las cooperativas financieras'),('6431','Fideicomisos, fondos y entidades financieras similares'),('6432','Fondos de cesant├¡as'),('6491','Leasing financiero (arrendamiento financiero)'),('6492','Actividades financieras de fondos de empleados y otras formas asociativas del sector solidario'),('6493','Actividades de compra de cartera o factoring'),('6494','Otras actividades de distribuci├│n de fondos'),('6495','Instituciones especiales oficiales'),('6499','Otras actividades de servicio financiero, excepto las de seguros y pensiones n.c.p.'),('6511','Seguros generales '),('6512','Seguros de vida'),('6513','Reaseguros'),('6514','Capitalizaci├│n'),('6515','Seguros de salud'),('6521','Servicios de seguros sociales de salud'),('6522','Servicios de seguros sociales de riesgos profesionales'),('6523','Servicios de seguros sociales en riesgos familia'),('6531','R├®gimen de prima media con prestaci├│n definida (RPM)'),('6532','R├®gimen de ahorro individual (RAI)'),('6611','Administraci├│n de mercados financieros'),('6612','Corretaje de valores y de contratos de productos b├ísicos'),('6613','Otras actividades relacionadas con el mercado de valores'),('6614','Actividades de las casas de cambio'),('6615','Actividades de los profesionales de compra y venta de divisas'),('6619','Otras actividades auxiliares de las actividades de servicios financieros n.c.p.'),('6621','Actividades de agentes y corredores de seguros'),('6629','Evaluaci├│n de riesgos y da├▒os, y otras actividades de servicios auxiliares'),('6630','Actividades de administraci├│n de fondos'),('6810','Actividades inmobiliarias realizadas con bienes propios o arrendados'),('6820','Actividades inmobiliarias realizadas a cambio de una retribuci├│n o por contrata '),('6910','Actividades jur├¡dicas'),('6920','Actividades de contabilidad, tenedur├¡a de libros, auditor├¡a financiera y asesor├¡a tributaria'),('7010','Actividades de administraci├│n empresarial'),('7020','Actividades de consultar├¡a de gesti├│n'),('7110','Actividades de arquitectura e ingenier├¡a y otras actividades conexas de consultor├¡a t├®cnica'),('7111','Actividades de arquitectura'),('7112','Actividades de ingenier├¡a y otras actividades conexas de consultor├¡a t├®cnica'),('7120','Ensayos y an├ílisis t├®cnicos'),('7210','Investigaciones y desarrollo experimental en el campo de las ciencias naturales y la ingenier├¡a '),('7220','Investigaciones y desarrollo experimental en el campo de las ciencias sociales y las humanidades'),('7310','Publicidad'),('7320','Estudios de mercado y realizaci├│n de encuestas de opini├│n p├║blica'),('7410','Actividades especializadas de dise├▒o '),('7420','Actividades de fotograf├¡a'),('7490','Otras actividades profesionales, cient├¡ficas y t├®cnicas n.c.p.'),('7500','Actividades veterinarias'),('7710','Alquiler y arrendamiento de veh├¡culos automotores'),('7721','Alquiler y arrendamiento de equipo recreativo y deportivo'),('7722','Alquiler de videos y discos '),('7729','Alquiler y arrendamiento de otros efectos personales y enseres dom├®sticos n.c.p.'),('7730','Alquiler y arrendamiento de otros tipos de maquinaria, equipo y bienes tangibles n.c.p.'),('7740','Arrendamiento de propiedad intelectual y productos similares, excepto obras protegidas por derechos de autor'),('7810','Actividades de agencias de empleo'),('7820','Actividades de agencias de empleo temporal'),('7830','Otras actividades de suministro de recurso humano'),('7911','Actividades de las agencias de viaje'),('7912','Actividades de operadores tur├¡sticos'),('7990','Otros servicios de reserva y actividades relacionadas'),('8010','Actividades de seguridad privada'),('8020','Actividades de servicios de sistemas de seguridad'),('8030','Actividades de detectives e investigadores privados'),('8110','Actividades combinadas de apoyo a instalaciones'),('8121','Limpieza general interior de edificios'),('8129','Otras actividades de limpieza de edificios e instalaciones industriales'),('8130','Actividades de paisajismo y servicios de mantenimiento conexos'),('8211','Actividades combinadas de servicios administrativos de oficina'),('8219','Fotocopiado, preparaci├│n de documentos y otras actividades especializadas de apoyo a oficina'),('8220','Actividades de centros de llamadas (Call center)'),('8230','Organizaci├│n de convenciones y eventos comerciales'),('8291','Actividades de agencias de cobranza y oficinas de calificaci├│n crediticia'),('8292','Actividades de envase y empaque'),('8299','Otras actividades de servicio de apoyo a las empresas n.c.p.'),('8411','Actividades legislativas de la administraci├│n p├║blica'),('8412','Actividades ejecutivas de la administraci├│n p├║blica'),('8413','Regulaci├│n de las actividades de organismos que prestan servicios de salud, educativos, culturales y otros servicios sociales, excepto servicios de seguridad social '),('8414','Actividades reguladoras y facilitadoras de la actividad econ├│mica'),('8415','Actividades de los otros ├│rganos de control'),('8421','Relaciones exteriores '),('8422','Actividades de defensa'),('8423','Orden p├║blico y actividades de seguridad'),('8424','Administraci├│n de justicia'),('8430','Actividades de planes de seguridad social de afiliaci├│n obligatoria'),('8511','Educaci├│n de la primera infancia'),('8512','Educaci├│n preescolar'),('8513','Educaci├│n b├ísica primaria'),('8521','Educaci├│n b├ísica secundaria '),('8522','Educaci├│n media acad├®mica'),('8523','Educaci├│n media t├®cnica y de formaci├│n laboral'),('8530','Establecimientos que combinan diferentes niveles de educaci├│n '),('8541','Educaci├│n t├®cnica profesional'),('8542','Educaci├│n tecnol├│gica'),('8543','Educaci├│n de instituciones universitarias o de escuelas tecnol├│gicas'),('8544','Educaci├│n de universidades'),('8551','Formaci├│n acad├®mica no formal '),('8552','Ense├▒anza deportiva y recreativa'),('8553','Ense├▒anza cultural'),('8559','Otros tipos de educaci├│n n.c.p.'),('8560','Actividades de apoyo a la educaci├│n'),('8610','Actividades de hospitales y cl├¡nicas, con internaci├│n'),('8621','Actividades de la pr├íctica m├®dica, sin internaci├│n'),('8622','Actividades de la pr├íctica odontol├│gica'),('8691','Actividades de apoyo diagn├│stico'),('8692','Actividades de apoyo terap├®utico'),('8699','Otras actividades de atenci├│n de la salud humana'),('8710','Actividades de atenci├│n residencial medicalizada de tipo general'),('8720','Actividades de atenci├│n residencial, para el cuidado de pacientes con retardo mental, enfermedad mental y consumo de sustancias psicoactivas'),('8730','Actividades de atenci├│n en instituciones para el cuidado de personas mayores y/o discapacitadas'),('8790','Otras actividades de atenci├│n en instituciones con alojamiento'),('8810','Actividades de asistencia social sin alojamiento para personas mayores y discapacitadas'),('8890','Otras actividades de asistencia social sin alojamiento'),('8891','Actividades de guarder├¡as para ni├▒os y ni├▒as'),('8899','Otras actividades de asistencia social sin alojamiento n.c.p.'),('9001','Creaci├│n literaria'),('9002','Creaci├│n musical'),('9003','Creaci├│n teatral'),('9004','Creaci├│n audiovisual'),('9005','Artes pl├ísticas y visuales'),('9006','Actividades teatrales'),('9007','Actividades de espect├ículos musicales en vivo'),('9008','Otras actividades de espect├ículos en vivo'),('9101','Actividades de bibliotecas y archivos'),('9102','Actividades y funcionamiento de museos, conservaci├│n de edificios y sitios hist├│ricos'),('9103','Actividades de jardines bot├ínicos, zool├│gicos y reservas naturales'),('9200','Actividades de juegos de azar y apuestas'),('9311','Gesti├│n de instalaciones deportivas'),('9312','Actividades de clubes deportivos'),('9319','Otras actividades deportivas'),('9321','Actividades de parques de atracciones y parques tem├íticos'),('9329','Otras actividades recreativas y de esparcimiento n.c.p.'),('9411','Actividades de asociaciones empresariales y de empleadores'),('9412','Actividades de asociaciones profesionales'),('9420','Actividades de sindicatos de empleados'),('9491','Actividades de asociaciones religiosas'),('9492','Actividades de asociaciones pol├¡ticas'),('9499','Actividades de otras asociaciones n.c.p.'),('9511','Mantenimiento y reparaci├│n de computadores y de equipo perif├®rico'),('9512','Mantenimiento y reparaci├│n de equipos de comunicaci├│n'),('9521','Mantenimiento y reparaci├│n de aparatos electr├│nicos de consumo'),('9522','Mantenimiento y reparaci├│n de aparatos y equipos dom├®sticos y de jardiner├¡a '),('9523','Reparaci├│n de calzado y art├¡culos de cuero'),('9524','Reparaci├│n de muebles y accesorios para el hogar'),('9529','Mantenimiento y reparaci├│n de otros efectos personales y enseres dom├®sticos'),('9601','Lavado y limpieza, incluso la limpieza en seco, de productos textiles y de piel'),('9602','Peluquer├¡a y otros tratamientos de belleza'),('9603','Pompas f├║nebres y actividades relacionadas'),('9609','Otras actividades de servicios personales n.c.p.'),('9700','Actividades de los hogares individuales como empleadores de personal dom├®stico'),('9810','Actividades no diferenciadas de los hogares individuales como productores de bienes para uso propio'),('9820','Actividades no diferenciadas de los hogares individuales como productores de servicios para uso propio'),('9900','Actividades de organizaciones y entidades extraterritoriales');
/*!40000 ALTER TABLE `pda_param_ciiu4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_deptos`
--

DROP TABLE IF EXISTS `pda_param_deptos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_deptos` (
  `id_depto` int(11) DEFAULT NULL,
  `nom_depto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_deptos`
--

LOCK TABLES `pda_param_deptos` WRITE;
/*!40000 ALTER TABLE `pda_param_deptos` DISABLE KEYS */;
INSERT INTO `pda_param_deptos` VALUES (5,'ANTIOQUIA'),(8,'ATLANTICO'),(11,'BOGOTA, D.C.'),(13,'BOLIVAR'),(15,'BOYACA'),(17,'CALDAS'),(18,'CAQUETA'),(19,'CAUCA'),(20,'CESAR'),(23,'CORDOBA'),(25,'CUNDINAMARCA'),(27,'CHOCO'),(41,'HUILA'),(44,'LA GUAJIRA'),(47,'MAGDALENA'),(50,'META'),(52,'NARI'),(54,'NORTE DE SANTANDER'),(63,'QUINDIO'),(66,'RISARALDA'),(68,'SANTANDER'),(70,'SUCRE'),(73,'TOLIMA'),(76,'VALLE DEL CAUCA'),(81,'ARAUCA'),(85,'CASANARE'),(86,'PUTUMAYO'),(88,'ARCHIPIELAGO DE SAN ANDRES, PROVIDENCIA Y SANTA CATALINA'),(91,'AMAZONAS'),(94,'GUAINIA'),(95,'GUAVIARE'),(97,'VAUPES'),(99,'VICHADA');
/*!40000 ALTER TABLE `pda_param_deptos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_estado_empresa`
--

DROP TABLE IF EXISTS `pda_param_estado_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_estado_empresa` (
  `id` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_estado_empresa`
--

LOCK TABLES `pda_param_estado_empresa` WRITE;
/*!40000 ALTER TABLE `pda_param_estado_empresa` DISABLE KEYS */;
INSERT INTO `pda_param_estado_empresa` VALUES (1,'ACTIVA'),(2,'ETAPA PREOPERATIVA'),(3,'EN CONCORDATO'),(4,'INTERVENIDA'),(5,'EN LIQUIDACION'),(6,'ACUERDO DE REESTRUCTURACION'),(7,'OTRO');
/*!40000 ALTER TABLE `pda_param_estado_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_grupos_alimentos`
--

DROP TABLE IF EXISTS `pda_param_grupos_alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_grupos_alimentos` (
  `cod_grup_alim` int(11) NOT NULL AUTO_INCREMENT,
  `desc_grup_alim` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_grup_alim`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_grupos_alimentos`
--

LOCK TABLES `pda_param_grupos_alimentos` WRITE;
/*!40000 ALTER TABLE `pda_param_grupos_alimentos` DISABLE KEYS */;
INSERT INTO `pda_param_grupos_alimentos` VALUES (1,'Raíces y tubérculos'),(2,'Frutas y hortalizas'),(3,' Cereales y leguminosas'),(4,'Productos cárnicos'),(5,'Pescado, mariscos y acuicultura'),(6,'Lácteos y huevos'),(7,'Otros');
/*!40000 ALTER TABLE `pda_param_grupos_alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_maximoniveltitulacion`
--

DROP TABLE IF EXISTS `pda_param_maximoniveltitulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_maximoniveltitulacion` (
  `id_maximoniveltitulacion` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_maximoniveltitulacion`
--

LOCK TABLES `pda_param_maximoniveltitulacion` WRITE;
/*!40000 ALTER TABLE `pda_param_maximoniveltitulacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_param_maximoniveltitulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_mpios`
--

DROP TABLE IF EXISTS `pda_param_mpios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_mpios` (
  `id_mpio` int(11) DEFAULT NULL,
  `nom_mpio` varchar(255) DEFAULT NULL,
  `fk_depto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_mpios`
--

LOCK TABLES `pda_param_mpios` WRITE;
/*!40000 ALTER TABLE `pda_param_mpios` DISABLE KEYS */;
INSERT INTO `pda_param_mpios` VALUES (5001,'MEDELLIN',5),(5002,'ABEJORRAL',5),(5004,'ABRIAQUI',5),(5021,'ALEJANDRIA',5),(5030,'AMAGA',5),(5031,'AMALFI',5),(5034,'ANDES',5),(5036,'ANGELOPOLIS',5),(5038,'ANGOSTURA',5),(5040,'ANORI',5),(5042,'SANTA FE DE ANTIOQUIA',5),(5044,'ANZA',5),(5045,'APARTADO',5),(5051,'ARBOLETES',5),(5055,'ARGELIA',5),(5059,'ARMENIA',5),(5079,'BARBOSA',5),(5086,'BELMIRA',5),(5088,'BELLO',5),(5091,'BETANIA',5),(5093,'BETULIA',5),(5101,'CIUDAD BOLIVAR',5),(5107,'BRICE',5),(5113,'BURITICA',5),(5120,'CACERES',5),(5125,'CAICEDO',5),(5129,'CALDAS',5),(5134,'CAMPAMENTO',5),(5138,'CA',5),(5142,'CARACOLI',5),(5145,'CARAMANTA',5),(5147,'CAREPA',5),(5148,'EL CARMEN DE VIBORAL',5),(5150,'CAROLINA',5),(5154,'CAUCASIA',5),(5172,'CHIGORODO',5),(5190,'CISNEROS',5),(5197,'COCORNA',5),(5206,'CONCEPCION',5),(5209,'CONCORDIA',5),(5212,'COPACABANA',5),(5234,'DABEIBA',5),(5237,'DONMATIAS',5),(5240,'EBEJICO',5),(5250,'EL BAGRE',5),(5264,'ENTRERRIOS',5),(5266,'ENVIGADO',5),(5282,'FREDONIA',5),(5284,'FRONTINO',5),(5306,'GIRALDO',5),(5308,'GIRARDOTA',5),(5310,'GOMEZ PLATA',5),(5313,'GRANADA',5),(5315,'GUADALUPE',5),(5318,'GUARNE',5),(5321,'GUATAPE',5),(5347,'HELICONIA',5),(5353,'HISPANIA',5),(5360,'ITAG',5),(5361,'ITUANGO',5),(5364,'JARDIN',5),(5368,'JERICO',5),(5376,'LA CEJA',5),(5380,'LA ESTRELLA',5),(5390,'LA PINTADA',5),(5400,'LA UNION',5),(5411,'LIBORINA',5),(5425,'MACEO',5),(5440,'MARINILLA',5),(5467,'MONTEBELLO',5),(5475,'MURINDO',5),(5480,'MUTATA',5),(5483,'NARI',5),(5490,'NECOCLI',5),(5495,'NECHI',5),(5501,'OLAYA',5),(5541,'PE',5),(5543,'PEQUE',5),(5576,'PUEBLORRICO',5),(5579,'PUERTO BERRIO',5),(5585,'PUERTO NARE',5),(5591,'PUERTO TRIUNFO',5),(5604,'REMEDIOS',5),(5607,'RETIRO',5),(5615,'RIONEGRO',5),(5628,'SABANALARGA',5),(5631,'SABANETA',5),(5642,'SALGAR',5),(5647,'SAN ANDRES DE CUERQUIA',5),(5649,'SAN CARLOS',5),(5652,'SAN FRANCISCO',5),(5656,'SAN JERONIMO',5),(5658,'SAN JOSE DE LA MONTA',5),(5659,'SAN JUAN DE URABA',5),(5660,'SAN LUIS',5),(5664,'SAN PEDRO DE LOS MILAGROS',5),(5665,'SAN PEDRO DE URABA',5),(5667,'SAN RAFAEL',5),(5670,'SAN ROQUE',5),(5674,'SAN VICENTE FERRER',5),(5679,'SANTA BARBARA',5),(5686,'SANTA ROSA DE OSOS',5),(5690,'SANTO DOMINGO',5),(5697,'EL SANTUARIO',5),(5736,'SEGOVIA',5),(5756,'SONSON',5),(5761,'SOPETRAN',5),(5789,'TAMESIS',5),(5790,'TARAZA',5),(5792,'TARSO',5),(5809,'TITIRIBI',5),(5819,'TOLEDO',5),(5837,'TURBO',5),(5842,'URAMITA',5),(5847,'URRAO',5),(5854,'VALDIVIA',5),(5856,'VALPARAISO',5),(5858,'VEGACHI',5),(5861,'VENECIA',5),(5873,'VIGIA DEL FUERTE',5),(5885,'YALI',5),(5887,'YARUMAL',5),(5890,'YOLOMBO',5),(5893,'YONDO',5),(5895,'ZARAGOZA',5),(8001,'BARRANQUILLA',8),(8078,'BARANOA',8),(8137,'CAMPO DE LA CRUZ',8),(8141,'CANDELARIA',8),(8296,'GALAPA',8),(8372,'JUAN DE ACOSTA',8),(8421,'LURUACO',8),(8433,'MALAMBO',8),(8436,'MANATI',8),(8520,'PALMAR DE VARELA',8),(8549,'PIOJO',8),(8558,'POLONUEVO',8),(8560,'PONEDERA',8),(8573,'PUERTO COLOMBIA',8),(8606,'REPELON',8),(8634,'SABANAGRANDE',8),(8638,'SABANALARGA',8),(8675,'SANTA LUCIA',8),(8685,'SANTO TOMAS',8),(8758,'SOLEDAD',8),(8770,'SUAN',8),(8832,'TUBARA',8),(8849,'USIACURI',8),(11001,'BOGOTA, D.C.',11),(13001,'CARTAGENA DE INDIAS',13),(13006,'ACHI',13),(13030,'ALTOS DEL ROSARIO',13),(13042,'ARENAL',13),(13052,'ARJONA',13),(13062,'ARROYOHONDO',13),(13074,'BARRANCO DE LOBA',13),(13140,'CALAMAR',13),(13160,'CANTAGALLO',13),(13188,'CICUCO',13),(13212,'CORDOBA',13),(13222,'CLEMENCIA',13),(13244,'EL CARMEN DE BOLIVAR',13),(13248,'EL GUAMO',13),(13268,'EL PE',13),(13300,'HATILLO DE LOBA',13),(13430,'MAGANGUE',13),(13433,'MAHATES',13),(13440,'MARGARITA',13),(13442,'MARIA LA BAJA',13),(13458,'MONTECRISTO',13),(13468,'SANTA CRUZ DE MOMPOX',13),(13473,'MORALES',13),(13490,'NOROSI',13),(13549,'PINILLOS',13),(13580,'REGIDOR',13),(13600,'RIO VIEJO',13),(13620,'SAN CRISTOBAL',13),(13647,'SAN ESTANISLAO',13),(13650,'SAN FERNANDO',13),(13654,'SAN JACINTO',13),(13655,'SAN JACINTO DEL CAUCA',13),(13657,'SAN JUAN NEPOMUCENO',13),(13667,'SAN MARTIN DE LOBA',13),(13670,'SAN PABLO',13),(13673,'SANTA CATALINA',13),(13683,'SANTA ROSA',13),(13688,'SANTA ROSA DEL SUR',13),(13744,'SIMITI',13),(13760,'SOPLAVIENTO',13),(13780,'TALAIGUA NUEVO',13),(13810,'TIQUISIO',13),(13836,'TURBACO',13),(13838,'TURBANA',13),(13873,'VILLANUEVA',13),(13894,'ZAMBRANO',13),(15001,'TUNJA',15),(15022,'ALMEIDA',15),(15047,'AQUITANIA',15),(15051,'ARCABUCO',15),(15087,'BELEN',15),(15090,'BERBEO',15),(15092,'BETEITIVA',15),(15097,'BOAVITA',15),(15104,'BOYACA',15),(15106,'BRICE',15),(15109,'BUENAVISTA',15),(15114,'BUSBANZA',15),(15131,'CALDAS',15),(15135,'CAMPOHERMOSO',15),(15162,'CERINZA',15),(15172,'CHINAVITA',15),(15176,'CHIQUINQUIRA',15),(15180,'CHISCAS',15),(15183,'CHITA',15),(15185,'CHITARAQUE',15),(15187,'CHIVATA',15),(15189,'CIENEGA',15),(15204,'COMBITA',15),(15212,'COPER',15),(15215,'CORRALES',15),(15218,'COVARACHIA',15),(15223,'CUBARA',15),(15224,'CUCAITA',15),(15226,'CUITIVA',15),(15232,'CHIQUIZA',15),(15236,'CHIVOR',15),(15238,'DUITAMA',15),(15244,'EL COCUY',15),(15248,'EL ESPINO',15),(15272,'FIRAVITOBA',15),(15276,'FLORESTA',15),(15293,'GACHANTIVA',15),(15296,'GAMEZA',15),(15299,'GARAGOA',15),(15317,'GUACAMAYAS',15),(15322,'GUATEQUE',15),(15325,'GUAYATA',15),(15332,'G',15),(15362,'IZA',15),(15367,'JENESANO',15),(15368,'JERICO',15),(15377,'LABRANZAGRANDE',15),(15380,'LA CAPILLA',15),(15401,'LA VICTORIA',15),(15403,'LA UVITA',15),(15407,'VILLA DE LEYVA',15),(15425,'MACANAL',15),(15442,'MARIPI',15),(15455,'MIRAFLORES',15),(15464,'MONGUA',15),(15466,'MONGUI',15),(15469,'MONIQUIRA',15),(15476,'MOTAVITA',15),(15480,'MUZO',15),(15491,'NOBSA',15),(15494,'NUEVO COLON',15),(15500,'OICATA',15),(15507,'OTANCHE',15),(15511,'PACHAVITA',15),(15514,'PAEZ',15),(15516,'PAIPA',15),(15518,'PAJARITO',15),(15522,'PANQUEBA',15),(15531,'PAUNA',15),(15533,'PAYA',15),(15537,'PAZ DE RIO',15),(15542,'PESCA',15),(15550,'PISBA',15),(15572,'PUERTO BOYACA',15),(15580,'QUIPAMA',15),(15599,'RAMIRIQUI',15),(15600,'RAQUIRA',15),(15621,'RONDON',15),(15632,'SABOYA',15),(15638,'SACHICA',15),(15646,'SAMACA',15),(15660,'SAN EDUARDO',15),(15664,'SAN JOSE DE PARE',15),(15667,'SAN LUIS DE GACENO',15),(15673,'SAN MATEO',15),(15676,'SAN MIGUEL DE SEMA',15),(15681,'SAN PABLO DE BORBUR',15),(15686,'SANTANA',15),(15690,'SANTA MARIA',15),(15693,'SANTA ROSA DE VITERBO',15),(15696,'SANTA SOFIA',15),(15720,'SATIVANORTE',15),(15723,'SATIVASUR',15),(15740,'SIACHOQUE',15),(15753,'SOATA',15),(15755,'SOCOTA',15),(15757,'SOCHA',15),(15759,'SOGAMOSO',15),(15761,'SOMONDOCO',15),(15762,'SORA',15),(15763,'SOTAQUIRA',15),(15764,'SORACA',15),(15774,'SUSACON',15),(15776,'SUTAMARCHAN',15),(15778,'SUTATENZA',15),(15790,'TASCO',15),(15798,'TENZA',15),(15804,'TIBANA',15),(15806,'TIBASOSA',15),(15808,'TINJACA',15),(15810,'TIPACOQUE',15),(15814,'TOCA',15),(15816,'TOG',15),(15820,'TOPAGA',15),(15822,'TOTA',15),(15832,'TUNUNGUA',15),(15835,'TURMEQUE',15),(15837,'TUTA',15),(15839,'TUTAZA',15),(15842,'UMBITA',15),(15861,'VENTAQUEMADA',15),(15879,'VIRACACHA',15),(15897,'ZETAQUIRA',15),(17001,'MANIZALES',17),(17013,'AGUADAS',17),(17042,'ANSERMA',17),(17050,'ARANZAZU',17),(17088,'BELALCAZAR',17),(17174,'CHINCHINA',17),(17272,'FILADELFIA',17),(17380,'LA DORADA',17),(17388,'LA MERCED',17),(17433,'MANZANARES',17),(17442,'MARMATO',17),(17444,'MARQUETALIA',17),(17446,'MARULANDA',17),(17486,'NEIRA',17),(17495,'NORCASIA',17),(17513,'PACORA',17),(17524,'PALESTINA',17),(17541,'PENSILVANIA',17),(17614,'RIOSUCIO',17),(17616,'RISARALDA',17),(17653,'SALAMINA',17),(17662,'SAMANA',17),(17665,'SAN JOSE',17),(17777,'SUPIA',17),(17867,'VICTORIA',17),(17873,'VILLAMARIA',17),(17877,'VITERBO',17),(18001,'FLORENCIA',18),(18029,'ALBANIA',18),(18094,'BELEN DE LOS ANDAQUIES',18),(18150,'CARTAGENA DEL CHAIRA',18),(18205,'CURILLO',18),(18247,'EL DONCELLO',18),(18256,'EL PAUJIL',18),(18410,'LA MONTA',18),(18460,'MILAN',18),(18479,'MORELIA',18),(18592,'PUERTO RICO',18),(18610,'SAN JOSE DEL FRAGUA',18),(18753,'SAN VICENTE DEL CAGUAN',18),(18756,'SOLANO',18),(18785,'SOLITA',18),(18860,'VALPARAISO',18),(19001,'POPAYAN',19),(19022,'ALMAGUER',19),(19050,'ARGELIA',19),(19075,'BALBOA',19),(19100,'BOLIVAR',19),(19110,'BUENOS AIRES',19),(19130,'CAJIBIO',19),(19137,'CALDONO',19),(19142,'CALOTO',19),(19212,'CORINTO',19),(19256,'EL TAMBO',19),(19290,'FLORENCIA',19),(19300,'GUACHENE',19),(19318,'GUAPI',19),(19355,'INZA',19),(19364,'JAMBALO',19),(19392,'LA SIERRA',19),(19397,'LA VEGA',19),(19418,'LOPEZ DE MICAY',19),(19450,'MERCADERES',19),(19455,'MIRANDA',19),(19473,'MORALES',19),(19513,'PADILLA',19),(19517,'PAEZ',19),(19532,'PATIA',19),(19533,'PIAMONTE',19),(19548,'PIENDAMO - TUNIA',19),(19573,'PUERTO TEJADA',19),(19585,'PURACE',19),(19622,'ROSAS',19),(19693,'SAN SEBASTIAN',19),(19698,'SANTANDER DE QUILICHAO',19),(19701,'SANTA ROSA',19),(19743,'SILVIA',19),(19760,'SOTARA PAISPAMBA',19),(19780,'SUAREZ',19),(19785,'SUCRE',19),(19807,'TIMBIO',19),(19809,'TIMBIQUI',19),(19821,'TORIBIO',19),(19824,'TOTORO',19),(19845,'VILLA RICA',19),(20001,'VALLEDUPAR',20),(20011,'AGUACHICA',20),(20013,'AGUSTIN CODAZZI',20),(20032,'ASTREA',20),(20045,'BECERRIL',20),(20060,'BOSCONIA',20),(20175,'CHIMICHAGUA',20),(20178,'CHIRIGUANA',20),(20228,'CURUMANI',20),(20238,'EL COPEY',20),(20250,'EL PASO',20),(20295,'GAMARRA',20),(20310,'GONZALEZ',20),(20383,'LA GLORIA',20),(20400,'LA JAGUA DE IBIRICO',20),(20443,'MANAURE BALCON DEL CESAR',20),(20517,'PAILITAS',20),(20550,'PELAYA',20),(20570,'PUEBLO BELLO',20),(20614,'RIO DE ORO',20),(20621,'LA PAZ',20),(20710,'SAN ALBERTO',20),(20750,'SAN DIEGO',20),(20770,'SAN MARTIN',20),(20787,'TAMALAMEQUE',20),(23001,'MONTERIA',23),(23068,'AYAPEL',23),(23079,'BUENAVISTA',23),(23090,'CANALETE',23),(23162,'CERETE',23),(23168,'CHIMA',23),(23182,'CHINU',23),(23189,'CIENAGA DE ORO',23),(23300,'COTORRA',23),(23350,'LA APARTADA',23),(23417,'LORICA',23),(23419,'LOS CORDOBAS',23),(23464,'MOMIL',23),(23466,'MONTELIBANO',23),(23500,'MO',23),(23555,'PLANETA RICA',23),(23570,'PUEBLO NUEVO',23),(23574,'PUERTO ESCONDIDO',23),(23580,'PUERTO LIBERTADOR',23),(23586,'PURISIMA DE LA CONCEPCION',23),(23660,'SAHAGUN',23),(23670,'SAN ANDRES DE SOTAVENTO',23),(23672,'SAN ANTERO',23),(23675,'SAN BERNARDO DEL VIENTO',23),(23678,'SAN CARLOS',23),(23682,'SAN JOSE DE URE',23),(23686,'SAN PELAYO',23),(23807,'TIERRALTA',23),(23815,'TUCHIN',23),(23855,'VALENCIA',23),(25001,'AGUA DE DIOS',25),(25019,'ALBAN',25),(25035,'ANAPOIMA',25),(25040,'ANOLAIMA',25),(25053,'ARBELAEZ',25),(25086,'BELTRAN',25),(25095,'BITUIMA',25),(25099,'BOJACA',25),(25120,'CABRERA',25),(25123,'CACHIPAY',25),(25126,'CAJICA',25),(25148,'CAPARRAPI',25),(25151,'CAQUEZA',25),(25154,'CARMEN DE CARUPA',25),(25168,'CHAGUANI',25),(25175,'CHIA',25),(25178,'CHIPAQUE',25),(25181,'CHOACHI',25),(25183,'CHOCONTA',25),(25200,'COGUA',25),(25214,'COTA',25),(25224,'CUCUNUBA',25),(25245,'EL COLEGIO',25),(25258,'EL PE',25),(25260,'EL ROSAL',25),(25269,'FACATATIVA',25),(25279,'FOMEQUE',25),(25281,'FOSCA',25),(25286,'FUNZA',25),(25288,'FUQUENE',25),(25290,'FUSAGASUGA',25),(25293,'GACHALA',25),(25295,'GACHANCIPA',25),(25297,'GACHETA',25),(25299,'GAMA',25),(25307,'GIRARDOT',25),(25312,'GRANADA',25),(25317,'GUACHETA',25),(25320,'GUADUAS',25),(25322,'GUASCA',25),(25324,'GUATAQUI',25),(25326,'GUATAVITA',25),(25328,'GUAYABAL DE SIQUIMA',25),(25335,'GUAYABETAL',25),(25339,'GUTIERREZ',25),(25368,'JERUSALEN',25),(25372,'JUNIN',25),(25377,'LA CALERA',25),(25386,'LA MESA',25),(25394,'LA PALMA',25),(25398,'LA PE',25),(25402,'LA VEGA',25),(25407,'LENGUAZAQUE',25),(25426,'MACHETA',25),(25430,'MADRID',25),(25436,'MANTA',25),(25438,'MEDINA',25),(25473,'MOSQUERA',25),(25483,'NARI',25),(25486,'NEMOCON',25),(25488,'NILO',25),(25489,'NIMAIMA',25),(25491,'NOCAIMA',25),(25506,'VENECIA',25),(25513,'PACHO',25),(25518,'PAIME',25),(25524,'PANDI',25),(25530,'PARATEBUENO',25),(25535,'PASCA',25),(25572,'PUERTO SALGAR',25),(25580,'PULI',25),(25592,'QUEBRADANEGRA',25),(25594,'QUETAME',25),(25596,'QUIPILE',25),(25599,'APULO',25),(25612,'RICAURTE',25),(25645,'SAN ANTONIO DEL TEQUENDAMA',25),(25649,'SAN BERNARDO',25),(25653,'SAN CAYETANO',25),(25658,'SAN FRANCISCO',25),(25662,'SAN JUAN DE RIOSECO',25),(25718,'SASAIMA',25),(25736,'SESQUILE',25),(25740,'SIBATE',25),(25743,'SILVANIA',25),(25745,'SIMIJACA',25),(25754,'SOACHA',25),(25758,'SOPO',25),(25769,'SUBACHOQUE',25),(25772,'SUESCA',25),(25777,'SUPATA',25),(25779,'SUSA',25),(25781,'SUTATAUSA',25),(25785,'TABIO',25),(25793,'TAUSA',25),(25797,'TENA',25),(25799,'TENJO',25),(25805,'TIBACUY',25),(25807,'TIBIRITA',25),(25815,'TOCAIMA',25),(25817,'TOCANCIPA',25),(25823,'TOPAIPI',25),(25839,'UBALA',25),(25841,'UBAQUE',25),(25843,'VILLA DE SAN DIEGO DE UBATE',25),(25845,'UNE',25),(25851,'UTICA',25),(25862,'VERGARA',25),(25867,'VIANI',25),(25871,'VILLAGOMEZ',25),(25873,'VILLAPINZON',25),(25875,'VILLETA',25),(25878,'VIOTA',25),(25885,'YACOPI',25),(25898,'ZIPACON',25),(25899,'ZIPAQUIRA',25),(27001,'QUIBDO',27),(27006,'ACANDI',27),(27025,'ALTO BAUDO',27),(27050,'ATRATO',27),(27073,'BAGADO',27),(27075,'BAHIA SOLANO',27),(27077,'BAJO BAUDO',27),(27099,'BOJAYA',27),(27135,'EL CANTON DEL SAN PABLO',27),(27150,'CARMEN DEL DARIEN',27),(27160,'CERTEGUI',27),(27205,'CONDOTO',27),(27245,'EL CARMEN DE ATRATO',27),(27250,'EL LITORAL DEL SAN JUAN',27),(27361,'ISTMINA',27),(27372,'JURADO',27),(27413,'LLORO',27),(27425,'MEDIO ATRATO',27),(27430,'MEDIO BAUDO',27),(27450,'MEDIO SAN JUAN',27),(27491,'NOVITA',27),(27495,'NUQUI',27),(27580,'RIO IRO',27),(27600,'RIO QUITO',27),(27615,'RIOSUCIO',27),(27660,'SAN JOSE DEL PALMAR',27),(27745,'SIPI',27),(27787,'TADO',27),(27800,'UNGUIA',27),(27810,'UNION PANAMERICANA',27),(41001,'NEIVA',41),(41006,'ACEVEDO',41),(41013,'AGRADO',41),(41016,'AIPE',41),(41020,'ALGECIRAS',41),(41026,'ALTAMIRA',41),(41078,'BARAYA',41),(41132,'CAMPOALEGRE',41),(41206,'COLOMBIA',41),(41244,'ELIAS',41),(41298,'GARZON',41),(41306,'GIGANTE',41),(41319,'GUADALUPE',41),(41349,'HOBO',41),(41357,'IQUIRA',41),(41359,'ISNOS',41),(41378,'LA ARGENTINA',41),(41396,'LA PLATA',41),(41483,'NATAGA',41),(41503,'OPORAPA',41),(41518,'PAICOL',41),(41524,'PALERMO',41),(41530,'PALESTINA',41),(41548,'PITAL',41),(41551,'PITALITO',41),(41615,'RIVERA',41),(41660,'SALADOBLANCO',41),(41668,'SAN AGUSTIN',41),(41676,'SANTA MARIA',41),(41770,'SUAZA',41),(41791,'TARQUI',41),(41797,'TESALIA',41),(41799,'TELLO',41),(41801,'TERUEL',41),(41807,'TIMANA',41),(41872,'VILLAVIEJA',41),(41885,'YAGUARA',41),(44001,'RIOHACHA',44),(44035,'ALBANIA',44),(44078,'BARRANCAS',44),(44090,'DIBULLA',44),(44098,'DISTRACCION',44),(44110,'EL MOLINO',44),(44279,'FONSECA',44),(44378,'HATONUEVO',44),(44420,'LA JAGUA DEL PILAR',44),(44430,'MAICAO',44),(44560,'MANAURE',44),(44650,'SAN JUAN DEL CESAR',44),(44847,'URIBIA',44),(44855,'URUMITA',44),(44874,'VILLANUEVA',44),(47001,'SANTA MARTA',47),(47030,'ALGARROBO',47),(47053,'ARACATACA',47),(47058,'ARIGUANI',47),(47161,'CERRO DE SAN ANTONIO',47),(47170,'CHIVOLO',47),(47189,'CIENAGA',47),(47205,'CONCORDIA',47),(47245,'EL BANCO',47),(47258,'EL PI',47),(47268,'EL RETEN',47),(47288,'FUNDACION',47),(47318,'GUAMAL',47),(47460,'NUEVA GRANADA',47),(47541,'PEDRAZA',47),(47545,'PIJI',47),(47551,'PIVIJAY',47),(47555,'PLATO',47),(47570,'PUEBLOVIEJO',47),(47605,'REMOLINO',47),(47660,'SABANAS DE SAN ANGEL',47),(47675,'SALAMINA',47),(47692,'SAN SEBASTIAN DE BUENAVISTA',47),(47703,'SAN ZENON',47),(47707,'SANTA ANA',47),(47720,'SANTA BARBARA DE PINTO',47),(47745,'SITIONUEVO',47),(47798,'TENERIFE',47),(47960,'ZAPAYAN',47),(47980,'ZONA BANANERA',47),(50001,'VILLAVICENCIO',50),(50006,'ACACIAS',50),(50110,'BARRANCA DE UPIA',50),(50124,'CABUYARO',50),(50150,'CASTILLA LA NUEVA',50),(50223,'CUBARRAL',50),(50226,'CUMARAL',50),(50245,'EL CALVARIO',50),(50251,'EL CASTILLO',50),(50270,'EL DORADO',50),(50287,'FUENTE DE ORO',50),(50313,'GRANADA',50),(50318,'GUAMAL',50),(50325,'MAPIRIPAN',50),(50330,'MESETAS',50),(50350,'LA MACARENA',50),(50370,'URIBE',50),(50400,'LEJANIAS',50),(50450,'PUERTO CONCORDIA',50),(50568,'PUERTO GAITAN',50),(50573,'PUERTO LOPEZ',50),(50577,'PUERTO LLERAS',50),(50590,'PUERTO RICO',50),(50606,'RESTREPO',50),(50680,'SAN CARLOS DE GUAROA',50),(50683,'SAN JUAN DE ARAMA',50),(50686,'SAN JUANITO',50),(50689,'SAN MARTIN',50),(50711,'VISTAHERMOSA',50),(52001,'PASTO',52),(52019,'ALBAN',52),(52022,'ALDANA',52),(52036,'ANCUYA',52),(52051,'ARBOLEDA',52),(52079,'BARBACOAS',52),(52083,'BELEN',52),(52110,'BUESACO',52),(52203,'COLON',52),(52207,'CONSACA',52),(52210,'CONTADERO',52),(52215,'CORDOBA',52),(52224,'CUASPUD CARLOSAMA',52),(52227,'CUMBAL',52),(52233,'CUMBITARA',52),(52240,'CHACHAG',52),(52250,'EL CHARCO',52),(52254,'EL PE',52),(52256,'EL ROSARIO',52),(52258,'EL TABLON DE GOMEZ',52),(52260,'EL TAMBO',52),(52287,'FUNES',52),(52317,'GUACHUCAL',52),(52320,'GUAITARILLA',52),(52323,'GUALMATAN',52),(52352,'ILES',52),(52354,'IMUES',52),(52356,'IPIALES',52),(52378,'LA CRUZ',52),(52381,'LA FLORIDA',52),(52385,'LA LLANADA',52),(52390,'LA TOLA',52),(52399,'LA UNION',52),(52405,'LEIVA',52),(52411,'LINARES',52),(52418,'LOS ANDES',52),(52427,'MAG',52),(52435,'MALLAMA',52),(52473,'MOSQUERA',52),(52480,'NARI',52),(52490,'OLAYA HERRERA',52),(52506,'OSPINA',52),(52520,'FRANCISCO PIZARRO',52),(52540,'POLICARPA',52),(52560,'POTOSI',52),(52565,'PROVIDENCIA',52),(52573,'PUERRES',52),(52585,'PUPIALES',52),(52612,'RICAURTE',52),(52621,'ROBERTO PAYAN',52),(52678,'SAMANIEGO',52),(52683,'SANDONA',52),(52685,'SAN BERNARDO',52),(52687,'SAN LORENZO',52),(52693,'SAN PABLO',52),(52694,'SAN PEDRO DE CARTAGO',52),(52696,'SANTA BARBARA',52),(52699,'SANTACRUZ',52),(52720,'SAPUYES',52),(52786,'TAMINANGO',52),(52788,'TANGUA',52),(52835,'SAN ANDRES DE TUMACO',52),(52838,'TUQUERRES',52),(52885,'YACUANQUER',52),(54001,'SAN JOSE DE CUCUTA',54),(54003,'ABREGO',54),(54051,'ARBOLEDAS',54),(54099,'BOCHALEMA',54),(54109,'BUCARASICA',54),(54125,'CACOTA',54),(54128,'CACHIRA',54),(54172,'CHINACOTA',54),(54174,'CHITAGA',54),(54206,'CONVENCION',54),(54223,'CUCUTILLA',54),(54239,'DURANIA',54),(54245,'EL CARMEN',54),(54250,'EL TARRA',54),(54261,'EL ZULIA',54),(54313,'GRAMALOTE',54),(54344,'HACARI',54),(54347,'HERRAN',54),(54377,'LABATECA',54),(54385,'LA ESPERANZA',54),(54398,'LA PLAYA',54),(54405,'LOS PATIOS',54),(54418,'LOURDES',54),(54480,'MUTISCUA',54),(54498,'OCA',54),(54518,'PAMPLONA',54),(54520,'PAMPLONITA',54),(54553,'PUERTO SANTANDER',54),(54599,'RAGONVALIA',54),(54660,'SALAZAR',54),(54670,'SAN CALIXTO',54),(54673,'SAN CAYETANO',54),(54680,'SANTIAGO',54),(54720,'SARDINATA',54),(54743,'SILOS',54),(54800,'TEORAMA',54),(54810,'TIBU',54),(54820,'TOLEDO',54),(54871,'VILLA CARO',54),(54874,'VILLA DEL ROSARIO',54),(63001,'ARMENIA',63),(63111,'BUENAVISTA',63),(63130,'CALARCA',63),(63190,'CIRCASIA',63),(63212,'CORDOBA',63),(63272,'FILANDIA',63),(63302,'GENOVA',63),(63401,'LA TEBAIDA',63),(63470,'MONTENEGRO',63),(63548,'PIJAO',63),(63594,'QUIMBAYA',63),(63690,'SALENTO',63),(66001,'PEREIRA',66),(66045,'APIA',66),(66075,'BALBOA',66),(66088,'BELEN DE UMBRIA',66),(66170,'DOSQUEBRADAS',66),(66318,'GUATICA',66),(66383,'LA CELIA',66),(66400,'LA VIRGINIA',66),(66440,'MARSELLA',66),(66456,'MISTRATO',66),(66572,'PUEBLO RICO',66),(66594,'QUINCHIA',66),(66682,'SANTA ROSA DE CABAL',66),(66687,'SANTUARIO',66),(68001,'BUCARAMANGA',68),(68013,'AGUADA',68),(68020,'ALBANIA',68),(68051,'ARATOCA',68),(68077,'BARBOSA',68),(68079,'BARICHARA',68),(68081,'BARRANCABERMEJA',68),(68092,'BETULIA',68),(68101,'BOLIVAR',68),(68121,'CABRERA',68),(68132,'CALIFORNIA',68),(68147,'CAPITANEJO',68),(68152,'CARCASI',68),(68160,'CEPITA',68),(68162,'CERRITO',68),(68167,'CHARALA',68),(68169,'CHARTA',68),(68176,'CHIMA',68),(68179,'CHIPATA',68),(68190,'CIMITARRA',68),(68207,'CONCEPCION',68),(68209,'CONFINES',68),(68211,'CONTRATACION',68),(68217,'COROMORO',68),(68229,'CURITI',68),(68235,'EL CARMEN DE CHUCURI',68),(68245,'EL GUACAMAYO',68),(68250,'EL PE',68),(68255,'EL PLAYON',68),(68264,'ENCINO',68),(68266,'ENCISO',68),(68271,'FLORIAN',68),(68276,'FLORIDABLANCA',68),(68296,'GALAN',68),(68298,'GAMBITA',68),(68307,'GIRON',68),(68318,'GUACA',68),(68320,'GUADALUPE',68),(68322,'GUAPOTA',68),(68324,'GUAVATA',68),(68327,'G',68),(68344,'HATO',68),(68368,'JESUS MARIA',68),(68370,'JORDAN',68),(68377,'LA BELLEZA',68),(68385,'LANDAZURI',68),(68397,'LA PAZ',68),(68406,'LEBRIJA',68),(68418,'LOS SANTOS',68),(68425,'MACARAVITA',68),(68432,'MALAGA',68),(68444,'MATANZA',68),(68464,'MOGOTES',68),(68468,'MOLAGAVITA',68),(68498,'OCAMONTE',68),(68500,'OIBA',68),(68502,'ONZAGA',68),(68522,'PALMAR',68),(68524,'PALMAS DEL SOCORRO',68),(68533,'PARAMO',68),(68547,'PIEDECUESTA',68),(68549,'PINCHOTE',68),(68572,'PUENTE NACIONAL',68),(68573,'PUERTO PARRA',68),(68575,'PUERTO WILCHES',68),(68615,'RIONEGRO',68),(68655,'SABANA DE TORRES',68),(68669,'SAN ANDRES',68),(68673,'SAN BENITO',68),(68679,'SAN GIL',68),(68682,'SAN JOAQUIN',68),(68684,'SAN JOSE DE MIRANDA',68),(68686,'SAN MIGUEL',68),(68689,'SAN VICENTE DE CHUCURI',68),(68705,'SANTA BARBARA',68),(68720,'SANTA HELENA DEL OPON',68),(68745,'SIMACOTA',68),(68755,'SOCORRO',68),(68770,'SUAITA',68),(68773,'SUCRE',68),(68780,'SURATA',68),(68820,'TONA',68),(68855,'VALLE DE SAN JOSE',68),(68861,'VELEZ',68),(68867,'VETAS',68),(68872,'VILLANUEVA',68),(68895,'ZAPATOCA',68),(70001,'SINCELEJO',70),(70110,'BUENAVISTA',70),(70124,'CAIMITO',70),(70204,'COLOSO',70),(70215,'COROZAL',70),(70221,'COVE',70),(70230,'CHALAN',70),(70233,'EL ROBLE',70),(70235,'GALERAS',70),(70265,'GUARANDA',70),(70400,'LA UNION',70),(70418,'LOS PALMITOS',70),(70429,'MAJAGUAL',70),(70473,'MORROA',70),(70508,'OVEJAS',70),(70523,'PALMITO',70),(70670,'SAMPUES',70),(70678,'SAN BENITO ABAD',70),(70702,'SAN JUAN DE BETULIA',70),(70708,'SAN MARCOS',70),(70713,'SAN ONOFRE',70),(70717,'SAN PEDRO',70),(70742,'SAN LUIS DE SINCE',70),(70771,'SUCRE',70),(70820,'SANTIAGO DE TOLU',70),(70823,'SAN JOSE DE TOLUVIEJO',70),(73001,'IBAGUE',73),(73024,'ALPUJARRA',73),(73026,'ALVARADO',73),(73030,'AMBALEMA',73),(73043,'ANZOATEGUI',73),(73055,'ARMERO',73),(73067,'ATACO',73),(73124,'CAJAMARCA',73),(73148,'CARMEN DE APICALA',73),(73152,'CASABIANCA',73),(73168,'CHAPARRAL',73),(73200,'COELLO',73),(73217,'COYAIMA',73),(73226,'CUNDAY',73),(73236,'DOLORES',73),(73268,'ESPINAL',73),(73270,'FALAN',73),(73275,'FLANDES',73),(73283,'FRESNO',73),(73319,'GUAMO',73),(73347,'HERVEO',73),(73349,'HONDA',73),(73352,'ICONONZO',73),(73408,'LERIDA',73),(73411,'LIBANO',73),(73443,'SAN SEBASTIAN DE MARIQUITA',73),(73449,'MELGAR',73),(73461,'MURILLO',73),(73483,'NATAGAIMA',73),(73504,'ORTEGA',73),(73520,'PALOCABILDO',73),(73547,'PIEDRAS',73),(73555,'PLANADAS',73),(73563,'PRADO',73),(73585,'PURIFICACION',73),(73616,'RIOBLANCO',73),(73622,'RONCESVALLES',73),(73624,'ROVIRA',73),(73671,'SALDA',73),(73675,'SAN ANTONIO',73),(73678,'SAN LUIS',73),(73686,'SANTA ISABEL',73),(73770,'SUAREZ',73),(73854,'VALLE DE SAN JUAN',73),(73861,'VENADILLO',73),(73870,'VILLAHERMOSA',73),(73873,'VILLARRICA',73),(76001,'CALI',76),(76020,'ALCALA',76),(76036,'ANDALUCIA',76),(76041,'ANSERMANUEVO',76),(76054,'ARGELIA',76),(76100,'BOLIVAR',76),(76109,'BUENAVENTURA',76),(76111,'GUADALAJARA DE BUGA',76),(76113,'BUGALAGRANDE',76),(76122,'CAICEDONIA',76),(76126,'CALIMA',76),(76130,'CANDELARIA',76),(76147,'CARTAGO',76),(76233,'DAGUA',76),(76243,'EL AGUILA',76),(76246,'EL CAIRO',76),(76248,'EL CERRITO',76),(76250,'EL DOVIO',76),(76275,'FLORIDA',76),(76306,'GINEBRA',76),(76318,'GUACARI',76),(76364,'JAMUNDI',76),(76377,'LA CUMBRE',76),(76400,'LA UNION',76),(76403,'LA VICTORIA',76),(76497,'OBANDO',76),(76520,'PALMIRA',76),(76563,'PRADERA',76),(76606,'RESTREPO',76),(76616,'RIOFRIO',76),(76622,'ROLDANILLO',76),(76670,'SAN PEDRO',76),(76736,'SEVILLA',76),(76823,'TORO',76),(76828,'TRUJILLO',76),(76834,'TULUA',76),(76845,'ULLOA',76),(76863,'VERSALLES',76),(76869,'VIJES',76),(76890,'YOTOCO',76),(76892,'YUMBO',76),(76895,'ZARZAL',76),(81001,'ARAUCA',81),(81065,'ARAUQUITA',81),(81220,'CRAVO NORTE',81),(81300,'FORTUL',81),(81591,'PUERTO RONDON',81),(81736,'SARAVENA',81),(81794,'TAME',81),(85001,'YOPAL',85),(85010,'AGUAZUL',85),(85015,'CHAMEZA',85),(85125,'HATO COROZAL',85),(85136,'LA SALINA',85),(85139,'MANI',85),(85162,'MONTERREY',85),(85225,'NUNCHIA',85),(85230,'OROCUE',85),(85250,'PAZ DE ARIPORO',85),(85263,'PORE',85),(85279,'RECETOR',85),(85300,'SABANALARGA',85),(85315,'SACAMA',85),(85325,'SAN LUIS DE PALENQUE',85),(85400,'TAMARA',85),(85410,'TAURAMENA',85),(85430,'TRINIDAD',85),(85440,'VILLANUEVA',85),(86001,'MOCOA',86),(86219,'COLON',86),(86320,'ORITO',86),(86568,'PUERTO ASIS',86),(86569,'PUERTO CAICEDO',86),(86571,'PUERTO GUZMAN',86),(86573,'PUERTO LEGUIZAMO',86),(86749,'SIBUNDOY',86),(86755,'SAN FRANCISCO',86),(86757,'SAN MIGUEL',86),(86760,'SANTIAGO',86),(86865,'VALLE DEL GUAMUEZ',86),(86885,'VILLAGARZON',86),(88001,'SAN ANDRES',88),(88564,'PROVIDENCIA',88),(91001,'LETICIA',91),(91263,'EL ENCANTO',91),(91405,'LA CHORRERA',91),(91407,'LA PEDRERA',91),(91430,'LA VICTORIA',91),(91460,'MIRITI - PARANA',91),(91530,'PUERTO ALEGRIA',91),(91536,'PUERTO ARICA',91),(91540,'PUERTO NARI',91),(91669,'PUERTO SANTANDER',91),(91798,'TARAPACA',91),(94001,'INIRIDA',94),(94343,'BARRANCOMINAS',94),(94883,'SAN FELIPE',94),(94884,'PUERTO COLOMBIA',94),(94885,'LA GUADALUPE',94),(94886,'CACAHUAL',94),(94887,'PANA PANA',94),(94888,'MORICHAL',94),(95001,'SAN JOSE DEL GUAVIARE',95),(95015,'CALAMAR',95),(95025,'EL RETORNO',95),(95200,'MIRAFLORES',95),(97001,'MITU',97),(97161,'CARURU',97),(97511,'PACOA',97),(97666,'TARAIRA',97),(97777,'PAPUNAHUA',97),(97889,'YAVARATE',97),(99001,'PUERTO CARRE',99),(99524,'LA PRIMAVERA',99),(99624,'SANTA ROSALIA',99),(99773,'CUMARIBO',99);
/*!40000 ALTER TABLE `pda_param_mpios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_nacionalextranjero`
--

DROP TABLE IF EXISTS `pda_param_nacionalextranjero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_nacionalextranjero` (
  `id_nacionalextranjero` char(1) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_nacionalextranjero`
--

LOCK TABLES `pda_param_nacionalextranjero` WRITE;
/*!40000 ALTER TABLE `pda_param_nacionalextranjero` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_param_nacionalextranjero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_ocupacion`
--

DROP TABLE IF EXISTS `pda_param_ocupacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_ocupacion` (
  `id_ocupacion` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_ocupacion`
--

LOCK TABLES `pda_param_ocupacion` WRITE;
/*!40000 ALTER TABLE `pda_param_ocupacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_param_ocupacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_organización_juridica`
--

DROP TABLE IF EXISTS `pda_param_organización_juridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_organización_juridica` (
  `id_organización_juridica` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_organización_juridica`
--

LOCK TABLES `pda_param_organización_juridica` WRITE;
/*!40000 ALTER TABLE `pda_param_organización_juridica` DISABLE KEYS */;
INSERT INTO `pda_param_organización_juridica` VALUES (1,'SOCIEDAD COLECTIVA '),(2,'SOCIEDAD EN COMANDITA SIMPLE'),(3,'SOCIEDAD EN COMANDITA POR ACCIONES '),(4,'SOCIEDAD LIMITADA '),(5,'SOCIEDAD ANONIMA'),(6,'SOCIEDAD DE ECONOMIA MIXTA '),(7,'SUCURSAL DE SOCIEDAD EXTRANJERA '),(8,'EMPRESAS INDUSTRIALES, COMERCIALES Y DE SERVICIOS DEL ESTADO '),(9,'EMPRESASUNIPERSONALES '),(10,'SOCIEDADES DE HECHO '),(11,'PERSONA NATURAL '),(12,'ORGANIZACIONES DE ECONOMIA SOLIDARIA '),(121,'COOPERATIVA '),(122,'PRECOPERATIVA '),(123,'INSTITUTOS AUXILIARES DE LA ECONOMIA SOLIDARIA '),(124,'EMPRESASDE SERVICIOS EN FORMA DE ADMINISTRACION PUBLICA COOPERATIVA '),(125,'FONDOS DE EMPLEADOS '),(126,'COOPERATIVAS DE TRABAJO ASOCIADO'),(127,'ASOCIACION MUTUAL '),(128,'EMPRESA SOLIDARIA DE SALUD '),(129,'EMPRESA COMUNITARIA '),(1210,'FEDERACION Y CONFEDERACION'),(1211,'EMPRESA ASOCIATIVA DE TRABAJO '),(13,'ENTIDADES SIN ANIMO DE LUCRO '),(14,'SOCIEDAD POR ACCIONES SIMPLIFICADAS SAS'),(15,'OTRO ');
/*!40000 ALTER TABLE `pda_param_organización_juridica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_sexo`
--

DROP TABLE IF EXISTS `pda_param_sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_sexo` (
  `id_sexo` char(1) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_sexo`
--

LOCK TABLES `pda_param_sexo` WRITE;
/*!40000 ALTER TABLE `pda_param_sexo` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_param_sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_tipodocu`
--

DROP TABLE IF EXISTS `pda_param_tipodocu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_tipodocu` (
  `id_tipo_docu` int(11) NOT NULL,
  `tipo_docu_descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipo_docu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_tipodocu`
--

LOCK TABLES `pda_param_tipodocu` WRITE;
/*!40000 ALTER TABLE `pda_param_tipodocu` DISABLE KEYS */;
INSERT INTO `pda_param_tipodocu` VALUES (1,'NIT'),(2,'Cédula'),(3,'Cédula extranjería');
/*!40000 ALTER TABLE `pda_param_tipodocu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_tipopersona`
--

DROP TABLE IF EXISTS `pda_param_tipopersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_tipopersona` (
  `id_tipopersona` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_tipopersona`
--

LOCK TABLES `pda_param_tipopersona` WRITE;
/*!40000 ALTER TABLE `pda_param_tipopersona` DISABLE KEYS */;
/*!40000 ALTER TABLE `pda_param_tipopersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pda_param_ubicaciongeograficaejecucion`
--

DROP TABLE IF EXISTS `pda_param_ubicaciongeograficaejecucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pda_param_ubicaciongeograficaejecucion` (
  `id_ubicaciongeograficaejecucion` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_ubicaciongeograficaejecucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pda_param_ubicaciongeograficaejecucion`
--

LOCK TABLES `pda_param_ubicaciongeograficaejecucion` WRITE;
/*!40000 ALTER TABLE `pda_param_ubicaciongeograficaejecucion` DISABLE KEYS */;
INSERT INTO `pda_param_ubicaciongeograficaejecucion` VALUES (1,'Amazonas'),(2,'Antioquia'),(3,'Arauca'),(4,'Atlántico'),(5,'Bogotá D.C.'),(6,'Bolívar'),(7,'Boyacá'),(8,'Caldas'),(9,'Caquetá'),(10,'Casanare'),(11,'Cauca'),(12,'Cesar'),(13,'Chocó'),(14,'Córdoba'),(15,'Cundinamarca'),(16,'Guain├¡a'),(17,'Guaviare'),(18,'Huila'),(19,'La Guajira'),(20,'Magdalena'),(21,'Meta'),(22,'Nariño'),(23,'Norte de Santander'),(24,'Putumayo'),(25,'Quindío'),(26,'Risaralda'),(27,'San Andres y Providencia'),(28,'Santander'),(29,'Sucre'),(30,'Tolima'),(31,'Valle del Cauca'),(32,'Vaupés'),(33,'Vichada'),(99,'En el extranjero*');
/*!40000 ALTER TABLE `pda_param_ubicaciongeograficaejecucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dane_pda'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
