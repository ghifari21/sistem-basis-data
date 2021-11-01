-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_sarpras
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
-- Table structure for table `departemen`
--

DROP TABLE IF EXISTS `departemen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departemen` (
  `id_departemen` varchar(4) NOT NULL,
  `nama_departemen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_departemen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departemen`
--

LOCK TABLES `departemen` WRITE;
/*!40000 ALTER TABLE `departemen` DISABLE KEYS */;
INSERT INTO `departemen` VALUES ('D001','Departemen Pendidikan Ilmu Komputer'),('D002','Departemen Pendidikan Matematika'),('D003','Departemen Pendidikan Kimia'),('D004','Departemen Pendidikan Fisika'),('D005','Departemen Pendidikan Biologi'),('D006','Departemen International Program on Science Education');
/*!40000 ALTER TABLE `departemen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gedung`
--

DROP TABLE IF EXISTS `gedung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gedung` (
  `id_gedung` varchar(4) NOT NULL,
  `nama_gedung` varchar(100) NOT NULL,
  PRIMARY KEY (`id_gedung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gedung`
--

LOCK TABLES `gedung` WRITE;
/*!40000 ALTER TABLE `gedung` DISABLE KEYS */;
INSERT INTO `gedung` VALUES ('G001','FPMIPA A'),('G002','FPMIPA B'),('G003','FPMIPA C');
/*!40000 ALTER TABLE `gedung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal_ruang`
--

DROP TABLE IF EXISTS `jadwal_ruang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwal_ruang` (
  `id_jadwal` varchar(5) NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `tgl_pakai` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `pemakai` varchar(10) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `jadwal_ruang_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruangan` (`id_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal_ruang`
--

LOCK TABLES `jadwal_ruang` WRITE;
/*!40000 ALTER TABLE `jadwal_ruang` DISABLE KEYS */;
INSERT INTO `jadwal_ruang` VALUES ('JR001','RK001','0000-00-00','07:00:00','09:30:00','C1 20','Kuliah IK200');
/*!40000 ALTER TABLE `jadwal_ruang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelayakan`
--

DROP TABLE IF EXISTS `kelayakan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelayakan` (
  `id_check` varchar(5) NOT NULL,
  `id_aset` varchar(5) NOT NULL,
  `id_petugas` varchar(4) NOT NULL,
  `tgl_check_terakhir` date NOT NULL,
  `status_aset` varchar(10) NOT NULL,
  PRIMARY KEY (`id_check`),
  KEY `id_aset` (`id_aset`),
  KEY `id_petugas` (`id_petugas`),
  CONSTRAINT `kelayakan_ibfk_1` FOREIGN KEY (`id_aset`) REFERENCES `peralatan` (`id_aset`),
  CONSTRAINT `kelayakan_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelayakan`
--

LOCK TABLES `kelayakan` WRITE;
/*!40000 ALTER TABLE `kelayakan` DISABLE KEYS */;
INSERT INTO `kelayakan` VALUES ('CK001','A001','P002','0000-00-00','Layak');
/*!40000 ALTER TABLE `kelayakan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjam`
--

DROP TABLE IF EXISTS `peminjam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peminjam` (
  `id_peminjam` varchar(8) NOT NULL,
  `nama_peminjam` varchar(100) NOT NULL,
  `id_departemen` varchar(4) NOT NULL,
  PRIMARY KEY (`id_peminjam`),
  KEY `id_departemen` (`id_departemen`),
  CONSTRAINT `peminjam_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjam`
--

LOCK TABLES `peminjam` WRITE;
/*!40000 ALTER TABLE `peminjam` DISABLE KEYS */;
INSERT INTO `peminjam` VALUES ('1841245','Raffi Hidayah','D005'),('1924512','Zidane Maulana','D002'),('1931234','Rylandi Saputra','D004'),('2000952','Ghifari Octaverin','D001'),('2086956','Ahmad Ramadhan','D003');
/*!40000 ALTER TABLE `peminjam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman`
--

DROP TABLE IF EXISTS `peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peminjaman` (
  `id_peminjaman` varchar(5) NOT NULL,
  `id_peminjam` varchar(8) NOT NULL,
  `id_aset` varchar(5) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_peminjaman`),
  KEY `id_peminjam` (`id_peminjam`),
  KEY `id_aset` (`id_aset`),
  CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_peminjam`) REFERENCES `peminjam` (`id_peminjam`),
  CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_aset`) REFERENCES `peralatan` (`id_aset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman`
--

LOCK TABLES `peminjaman` WRITE;
/*!40000 ALTER TABLE `peminjaman` DISABLE KEYS */;
INSERT INTO `peminjaman` VALUES ('PA001','1924512','A001','0000-00-00','0000-00-00','');
/*!40000 ALTER TABLE `peminjaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peralatan`
--

DROP TABLE IF EXISTS `peralatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peralatan` (
  `id_aset` varchar(5) NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `nama_aset` varchar(50) NOT NULL,
  `portabilitas` varchar(5) NOT NULL,
  PRIMARY KEY (`id_aset`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `peralatan_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruangan` (`id_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peralatan`
--

LOCK TABLES `peralatan` WRITE;
/*!40000 ALTER TABLE `peralatan` DISABLE KEYS */;
INSERT INTO `peralatan` VALUES ('A001','RK001','Speaker','Ya');
/*!40000 ALTER TABLE `peralatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petugas`
--

DROP TABLE IF EXISTS `petugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petugas` (
  `id_petugas` varchar(4) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  PRIMARY KEY (`id_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petugas`
--

LOCK TABLES `petugas` WRITE;
/*!40000 ALTER TABLE `petugas` DISABLE KEYS */;
INSERT INTO `petugas` VALUES ('P001','Bagas Gunadi'),('P002','Yokky Ramadhan'),('P003','Afif Hanafiah'),('P004','Majid Maulana'),('P005','Fakhri Oktovian');
/*!40000 ALTER TABLE `petugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruangan`
--

DROP TABLE IF EXISTS `ruangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruangan` (
  `id_ruang` varchar(5) NOT NULL,
  `id_gedung` varchar(4) NOT NULL,
  `id_departemen` varchar(4) DEFAULT NULL,
  `jns_ruang` varchar(50) NOT NULL,
  `luas` varchar(30) NOT NULL,
  `kapasitas` varchar(30) NOT NULL,
  PRIMARY KEY (`id_ruang`),
  KEY `id_gedung` (`id_gedung`),
  KEY `id_departemen` (`id_departemen`),
  CONSTRAINT `ruangan_ibfk_1` FOREIGN KEY (`id_gedung`) REFERENCES `gedung` (`id_gedung`),
  CONSTRAINT `ruangan_ibfk_2` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruangan`
--

LOCK TABLES `ruangan` WRITE;
/*!40000 ALTER TABLE `ruangan` DISABLE KEYS */;
INSERT INTO `ruangan` VALUES ('RK001','G003','D001','Ruang Kelas','9m x 8m','40');
/*!40000 ALTER TABLE `ruangan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-09 13:57:30
