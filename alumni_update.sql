-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_alumni
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumni` (
  `id_alumni` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `prodi` varchar(20) NOT NULL,
  `tgl_lulus` date NOT NULL,
  PRIMARY KEY (`id_alumni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni`
--

LOCK TABLES `alumni` WRITE;
/*!40000 ALTER TABLE `alumni` DISABLE KEYS */;
INSERT INTO `alumni` VALUES ('A1000001','John','Ilmu Komputer','2014-04-15'),('A1000002','Asep','Teknik Elektro','2013-07-01'),('A1000003','Harris','Teknik Arsitektur','2012-12-20'),('A1000004','Fakhri','Teknik Elektro','2015-08-23'),('A1000005','Ayu','Teknik Arsitektur','2015-12-20'),('A1000006','Yuli','Ilmu Komputer','2014-04-15'),('A1000007','Drianto','Teknik Fisika','2012-07-23'),('A1000008','Shepard','Teknik Fisika','2012-07-23'),('A1000009','Toni','Seni Musik','2016-04-14'),('A1000010','Bill','Seni Rupa','2016-04-14'),('A1000011','Sony','Ilmu Komputer','2015-12-20'),('A1000012','Bambang','Ilmu Komputer','2015-12-20');
/*!40000 ALTER TABLE `alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pekerjaan`
--

DROP TABLE IF EXISTS `pekerjaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pekerjaan` (
  `id_pekerjaan` varchar(10) NOT NULL,
  `jns_pekerjaan` varchar(20) NOT NULL,
  `kesesuaian` varchar(5) NOT NULL,
  PRIMARY KEY (`id_pekerjaan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pekerjaan`
--

LOCK TABLES `pekerjaan` WRITE;
/*!40000 ALTER TABLE `pekerjaan` DISABLE KEYS */;
INSERT INTO `pekerjaan` VALUES ('P001','Programmer','iya'),('P002','Wirausaha','tidak'),('P003','Aktris','tidak'),('P004','Dosen','iya'),('P005','Guru','iya'),('P006','Model','tidak'),('P007','System Analys','iya');
/*!40000 ALTER TABLE `pekerjaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwayat_organisasi`
--

DROP TABLE IF EXISTS `riwayat_organisasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riwayat_organisasi` (
  `id_alumni` varchar(30) NOT NULL,
  `organisasi` varchar(30) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_alumni`),
  CONSTRAINT `riwayat_organisasi_ibfk_1` FOREIGN KEY (`id_alumni`) REFERENCES `alumni` (`id_alumni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayat_organisasi`
--

LOCK TABLES `riwayat_organisasi` WRITE;
/*!40000 ALTER TABLE `riwayat_organisasi` DISABLE KEYS */;
INSERT INTO `riwayat_organisasi` VALUES ('A1000010','OSIS','Ketua'),('A1000012','POSS','Staff');
/*!40000 ALTER TABLE `riwayat_organisasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwayat_pekerjaan`
--

DROP TABLE IF EXISTS `riwayat_pekerjaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riwayat_pekerjaan` (
  `id_pekerjaan` varchar(10) NOT NULL,
  `id_alumni` varchar(10) NOT NULL,
  `alamat_institusi` varchar(30) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_keluar` date NOT NULL,
  KEY `id_pekerjaan` (`id_pekerjaan`),
  KEY `id_alumni` (`id_alumni`),
  CONSTRAINT `riwayat_pekerjaan_ibfk_1` FOREIGN KEY (`id_pekerjaan`) REFERENCES `pekerjaan` (`id_pekerjaan`),
  CONSTRAINT `riwayat_pekerjaan_ibfk_2` FOREIGN KEY (`id_alumni`) REFERENCES `alumni` (`id_alumni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayat_pekerjaan`
--

LOCK TABLES `riwayat_pekerjaan` WRITE;
/*!40000 ALTER TABLE `riwayat_pekerjaan` DISABLE KEYS */;
INSERT INTO `riwayat_pekerjaan` VALUES ('P001','A1000001','Bandung','2014-04-17','2015-08-23'),('P004','A1000002','Ambon','2013-09-04','2016-04-14'),('P002','A1000003','Jakarta','2013-01-05','2015-10-20'),('P007','A1000004','Subang','2015-10-22','2018-01-05'),('P003','A1000005','Jakarta','2015-12-08','2019-02-04'),('P001','A1000006','Bandung','2014-05-06','2015-08-23'),('P002','A1000007','Yogyakarta','2012-07-25','2017-08-23'),('P005','A1000008','Papua','2012-12-20','2019-10-20'),('P001','A1000009','Surabaya','2016-05-10','2018-07-05'),('P007','A1000010','Bandung','2016-05-02','2020-02-04');
/*!40000 ALTER TABLE `riwayat_pekerjaan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-25 14:10:25
