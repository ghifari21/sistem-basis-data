/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : soalujian2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-06-15 06:01:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `buku`
-- ----------------------------
DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku` (
  `IDBuku` varchar(3) NOT NULL,
  `Judul` varchar(10) DEFAULT NULL,
  `Pengarang` varchar(10) DEFAULT NULL,
  `Terbit` int(11) DEFAULT NULL,
  `IDJenis` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`IDBuku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of buku
-- ----------------------------
INSERT INTO `buku` VALUES ('B01', 'Judul 01', 'Mr. A', '2011', 'J1');
INSERT INTO `buku` VALUES ('B02', 'Judul 02', 'Mr. A', '2011', 'J1');
INSERT INTO `buku` VALUES ('B03', 'Judul 03', 'Mr. B', '2010', 'J3');
INSERT INTO `buku` VALUES ('B04', 'Judul 04', 'Mr. A', '2009', 'J2');
INSERT INTO `buku` VALUES ('B05', 'Judul 05', 'Mr. C', '2012', 'J2');
INSERT INTO `buku` VALUES ('B06', 'Judul 06', 'Mr. B', '2012', 'J4');
INSERT INTO `buku` VALUES ('B07', 'Judul 07', 'Mr. D', '2009', 'J2');
INSERT INTO `buku` VALUES ('B08', 'Judul 08', 'Mr. E', '2009', 'J4');
INSERT INTO `buku` VALUES ('B09', 'Judul 09', 'Mr. B', '2013', 'J5');
INSERT INTO `buku` VALUES ('B10', 'Judul 10', 'Mr. C', '2013', 'J2');
INSERT INTO `buku` VALUES ('B11', 'Judul 11', 'Mr. D', '2013', 'J4');
INSERT INTO `buku` VALUES ('B12', 'Judul 12', 'Mr. C', '2014', 'J3');
INSERT INTO `buku` VALUES ('B13', 'Judul 13', 'Mr. F', '2015', 'J1');
INSERT INTO `buku` VALUES ('B14', 'Judul 14', 'Mr. E', '2017', 'J2');
INSERT INTO `buku` VALUES ('B15', 'Judul 15', 'Mr. F', '2016', 'J4');

-- ----------------------------
-- Table structure for `jenis`
-- ----------------------------
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `IDJenis` varchar(3) NOT NULL,
  `JenisBuku` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IDJenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis
-- ----------------------------
INSERT INTO `jenis` VALUES ('J1', 'Fiksi');
INSERT INTO `jenis` VALUES ('J2', 'Horor');
INSERT INTO `jenis` VALUES ('J3', 'Komik');
INSERT INTO `jenis` VALUES ('J4', 'Novel');
INSERT INTO `jenis` VALUES ('J5', 'Komedi');
INSERT INTO `jenis` VALUES ('J6', 'Non Fiksi');
INSERT INTO `jenis` VALUES ('J7', 'Referensi');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `IDMember` varchar(3) NOT NULL,
  `NamaMember` varchar(10) DEFAULT NULL,
  `Alamat` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IDMember`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('M1', 'Mr. A', 'Solo');
INSERT INTO `member` VALUES ('M2', 'Mr. B', 'Solo');
INSERT INTO `member` VALUES ('M3', 'Mr. C', 'Kartasura');
INSERT INTO `member` VALUES ('M4', 'Mr. D', 'Semarang');
INSERT INTO `member` VALUES ('M5', 'Mr. E', 'Kartasura');
INSERT INTO `member` VALUES ('M6', 'Mr. F', 'Klaten');
INSERT INTO `member` VALUES ('M7', 'Mr. G', 'Solo');
INSERT INTO `member` VALUES ('M8', 'Mr. H', 'Boyolali');
INSERT INTO `member` VALUES ('M9', 'Mr. I', 'Boyolali');

-- ----------------------------
-- Table structure for `peminjaman`
-- ----------------------------
DROP TABLE IF EXISTS `peminjaman`;
CREATE TABLE `peminjaman` (
  `IDPeminjaman` int(11) NOT NULL AUTO_INCREMENT,
  `IDMember` varchar(3) DEFAULT NULL,
  `IDBuku` varchar(3) DEFAULT NULL,
  `TanggalPinjam` date DEFAULT NULL,
  `TanggalHarusKembali` date DEFAULT NULL,
  `TanggalKembali` date DEFAULT NULL,
  `IDPetugas` varchar(3) DEFAULT NULL,
  `Denda` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDPeminjaman`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of peminjaman
-- ----------------------------
INSERT INTO `peminjaman` VALUES ('1', 'M7', 'B01', '2017-04-05', '2017-04-12', '2017-04-11', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('2', 'M7', 'B08', '2017-01-09', '2017-01-16', '2017-01-15', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('3', 'M4', 'B07', '2017-02-20', '2017-02-27', '2017-02-24', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('4', 'M7', 'B01', '2017-03-11', '2017-03-18', '2017-03-15', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('5', 'M7', 'B01', '2017-04-29', '2017-05-06', '2017-05-06', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('6', 'M6', 'B14', '2017-01-11', '2017-01-18', '2017-01-17', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('7', 'M9', 'B15', '2017-04-03', '2017-04-10', '2017-04-07', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('8', 'M6', 'B02', '2017-03-28', '2017-04-04', '2017-04-05', 'P1', '2500');
INSERT INTO `peminjaman` VALUES ('9', 'M7', 'B03', '2017-01-21', '2017-01-28', '2017-01-26', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('10', 'M2', 'B13', '2017-01-06', '2017-01-13', '2017-01-16', 'P4', '7500');
INSERT INTO `peminjaman` VALUES ('11', 'M5', 'B05', '2017-04-02', '2017-04-09', '2017-04-12', 'P4', '7500');
INSERT INTO `peminjaman` VALUES ('12', 'M3', 'B15', '2017-01-13', '2017-01-20', '2017-01-17', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('13', 'M8', 'B06', '2017-01-16', '2017-01-23', '2017-01-22', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('14', 'M9', 'B12', '2017-04-21', '2017-04-28', '2017-04-25', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('15', 'M9', 'B02', '2017-04-17', '2017-04-24', '2017-04-22', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('16', 'M9', 'B09', '2017-01-10', '2017-01-17', '2017-01-18', 'P3', '2500');
INSERT INTO `peminjaman` VALUES ('17', 'M5', 'B13', '2017-04-11', '2017-04-18', '2017-04-14', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('18', 'M6', 'B15', '2017-02-21', '2017-02-28', '2017-03-02', 'P4', '5000');
INSERT INTO `peminjaman` VALUES ('19', 'M2', 'B10', '2017-02-26', '2017-03-05', '2017-03-03', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('20', 'M9', 'B09', '2017-04-24', '2017-05-01', '2017-05-02', 'P2', '2500');
INSERT INTO `peminjaman` VALUES ('21', 'M8', 'B07', '2017-03-10', '2017-03-17', '2017-03-17', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('22', 'M1', 'B03', '2017-03-05', '2017-03-12', '2017-03-08', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('23', 'M1', 'B10', '2017-01-27', '2017-02-03', '2017-02-02', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('24', 'M7', 'B13', '2017-04-06', '2017-04-13', '2017-04-10', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('25', 'M3', 'B10', '2017-03-02', '2017-03-09', '2017-03-09', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('26', 'M5', 'B02', '2017-04-01', '2017-04-08', '2017-04-06', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('27', 'M7', 'B03', '2017-01-15', '2017-01-22', '2017-01-21', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('28', 'M1', 'B03', '2017-03-19', '2017-03-26', '2017-03-25', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('29', 'M2', 'B01', '2017-03-26', '2017-04-02', '2017-04-02', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('30', 'M5', 'B15', '2017-03-02', '2017-03-09', '2017-03-05', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('31', 'M3', 'B02', '2017-02-03', '2017-02-10', '2017-02-09', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('32', 'M4', 'B05', '2017-03-10', '2017-03-17', '2017-03-19', 'P1', '5000');
INSERT INTO `peminjaman` VALUES ('33', 'M3', 'B01', '2017-03-06', '2017-03-13', '2017-03-10', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('34', 'M6', 'B03', '2017-04-24', '2017-05-01', '2017-05-03', 'P3', '5000');
INSERT INTO `peminjaman` VALUES ('35', 'M1', 'B08', '2017-05-05', '2017-05-12', '2017-05-14', 'P1', '5000');
INSERT INTO `peminjaman` VALUES ('36', 'M3', 'B10', '2017-03-30', '2017-04-06', '2017-04-06', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('37', 'M2', 'B07', '2017-04-25', '2017-05-02', '2017-05-03', 'P1', '2500');
INSERT INTO `peminjaman` VALUES ('38', 'M4', 'B08', '2017-03-29', '2017-04-05', '2017-04-05', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('39', 'M2', 'B09', '2017-03-09', '2017-03-16', '2017-03-17', 'P2', '2500');
INSERT INTO `peminjaman` VALUES ('40', 'M4', 'B05', '2017-03-29', '2017-04-05', '2017-04-06', 'P2', '2500');
INSERT INTO `peminjaman` VALUES ('41', 'M3', 'B11', '2017-05-22', '2017-05-29', '2017-05-28', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('42', 'M8', 'B11', '2017-03-02', '2017-03-09', '2017-03-11', 'P4', '5000');
INSERT INTO `peminjaman` VALUES ('43', 'M2', 'B10', '2017-01-06', '2017-01-13', '2017-01-10', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('44', 'M4', 'B01', '2017-03-31', '2017-04-07', '2017-04-04', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('45', 'M1', 'B12', '2017-05-18', '2017-05-25', '2017-05-22', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('46', 'M7', 'B07', '2017-03-10', '2017-03-17', '2017-03-16', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('47', 'M1', 'B04', '2017-02-22', '2017-03-01', '2017-03-03', 'P4', '5000');
INSERT INTO `peminjaman` VALUES ('48', 'M6', 'B15', '2017-03-05', '2017-03-12', '2017-03-14', 'P3', '5000');
INSERT INTO `peminjaman` VALUES ('49', 'M4', 'B09', '2017-05-09', '2017-05-16', '2017-05-16', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('50', 'M8', 'B08', '2017-05-04', '2017-05-11', '2017-05-10', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('51', 'M9', 'B04', '2017-01-09', '2017-01-16', '2017-01-13', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('52', 'M8', 'B04', '2017-04-10', '2017-04-17', '2017-04-17', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('53', 'M4', 'B07', '2017-01-15', '2017-01-22', '2017-01-23', 'P4', '2500');
INSERT INTO `peminjaman` VALUES ('54', 'M9', 'B15', '2017-03-27', '2017-04-03', '2017-04-02', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('55', 'M8', 'B05', '2017-01-07', '2017-01-14', '2017-01-17', 'P2', '7500');
INSERT INTO `peminjaman` VALUES ('56', 'M8', 'B01', '2017-03-09', '2017-03-16', '2017-03-17', 'P4', '2500');
INSERT INTO `peminjaman` VALUES ('57', 'M3', 'B02', '2017-02-21', '2017-02-28', '2017-03-02', 'P4', '5000');
INSERT INTO `peminjaman` VALUES ('58', 'M8', 'B14', '2017-03-12', '2017-03-19', '2017-03-17', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('59', 'M1', 'B10', '2017-04-03', '2017-04-10', '2017-04-10', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('60', 'M1', 'B15', '2017-03-20', '2017-03-27', '2017-03-25', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('61', 'M3', 'B14', '2017-04-01', '2017-04-08', '2017-04-08', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('62', 'M4', 'B03', '2017-03-09', '2017-03-16', '2017-03-13', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('63', 'M1', 'B14', '2017-01-16', '2017-01-23', '2017-01-24', 'P1', '2500');
INSERT INTO `peminjaman` VALUES ('64', 'M6', 'B06', '2017-01-31', '2017-02-07', '2017-02-06', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('65', 'M3', 'B15', '2017-02-22', '2017-03-01', '2017-03-02', 'P1', '2500');
INSERT INTO `peminjaman` VALUES ('66', 'M1', 'B04', '2017-04-05', '2017-04-12', '2017-04-09', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('67', 'M4', 'B05', '2017-02-24', '2017-03-03', '2017-03-05', 'P1', '5000');
INSERT INTO `peminjaman` VALUES ('68', 'M8', 'B05', '2017-03-22', '2017-03-29', '2017-03-30', 'P2', '2500');
INSERT INTO `peminjaman` VALUES ('69', 'M9', 'B05', '2017-01-19', '2017-01-26', '2017-01-28', 'P3', '5000');
INSERT INTO `peminjaman` VALUES ('70', 'M1', 'B07', '2017-03-18', '2017-03-25', '2017-03-22', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('71', 'M2', 'B03', '2017-05-18', '2017-05-25', '2017-05-28', 'P2', '7500');
INSERT INTO `peminjaman` VALUES ('72', 'M4', 'B07', '2017-03-11', '2017-03-18', '2017-03-19', 'P1', '2500');
INSERT INTO `peminjaman` VALUES ('73', 'M7', 'B02', '2017-05-07', '2017-05-14', '2017-05-14', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('74', 'M7', 'B14', '2017-04-06', '2017-04-13', '2017-04-16', 'P4', '7500');
INSERT INTO `peminjaman` VALUES ('75', 'M6', 'B15', '2017-01-11', '2017-01-18', '2017-01-20', 'P3', '5000');
INSERT INTO `peminjaman` VALUES ('76', 'M2', 'B06', '2017-01-22', '2017-01-29', '2017-01-28', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('77', 'M4', 'B03', '2017-02-15', '2017-02-22', '2017-02-21', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('78', 'M7', 'B07', '2017-03-31', '2017-04-07', '2017-04-10', 'P4', '7500');
INSERT INTO `peminjaman` VALUES ('79', 'M2', 'B05', '2017-01-10', '2017-01-17', '2017-01-17', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('80', 'M3', 'B15', '2017-05-20', '2017-05-27', '2017-05-23', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('81', 'M1', 'B06', '2017-05-24', '2017-05-31', '2017-05-29', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('82', 'M9', 'B01', '2017-02-26', '2017-03-05', '2017-03-03', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('83', 'M7', 'B15', '2017-04-13', '2017-04-20', '2017-04-22', 'P2', '5000');
INSERT INTO `peminjaman` VALUES ('84', 'M8', 'B12', '2017-01-19', '2017-01-26', '2017-01-23', 'P2', '0');
INSERT INTO `peminjaman` VALUES ('85', 'M1', 'B14', '2017-03-31', '2017-04-07', '2017-04-07', 'P3', '0');
INSERT INTO `peminjaman` VALUES ('86', 'M3', 'B14', '2017-01-02', '2017-01-09', '2017-01-12', 'P1', '7500');
INSERT INTO `peminjaman` VALUES ('87', 'M2', 'B10', '2017-04-25', '2017-05-02', '2017-04-30', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('88', 'M3', 'B03', '2017-04-26', '2017-05-03', '2017-05-04', 'P2', '2500');
INSERT INTO `peminjaman` VALUES ('89', 'M7', 'B15', '2017-04-23', '2017-04-30', '2017-05-01', 'P1', '2500');
INSERT INTO `peminjaman` VALUES ('90', 'M6', 'B14', '2017-01-07', '2017-01-14', '2017-01-14', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('91', 'M3', 'B15', '2017-03-06', '2017-03-13', '2017-03-14', 'P1', '2500');
INSERT INTO `peminjaman` VALUES ('92', 'M4', 'B07', '2017-05-11', '2017-05-18', '2017-05-20', 'P3', '5000');
INSERT INTO `peminjaman` VALUES ('93', 'M4', 'B02', '2017-02-09', '2017-02-16', '2017-02-18', 'P1', '5000');
INSERT INTO `peminjaman` VALUES ('94', 'M5', 'B13', '2017-03-31', '2017-04-07', '2017-04-03', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('95', 'M4', 'B09', '2017-05-18', '2017-05-25', '2017-05-24', 'P4', '0');
INSERT INTO `peminjaman` VALUES ('96', 'M1', 'B15', '2017-04-18', '2017-04-25', '2017-04-27', 'P1', '5000');
INSERT INTO `peminjaman` VALUES ('97', 'M1', 'B09', '2017-03-02', '2017-03-09', '2017-03-07', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('98', 'M2', 'B14', '2017-03-31', '2017-04-07', '2017-04-09', 'P2', '5000');
INSERT INTO `peminjaman` VALUES ('99', 'M3', 'B03', '2017-04-13', '2017-04-20', '2017-04-20', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('100', 'M7', 'B13', '2017-01-22', '2017-01-29', '2017-01-26', 'P1', '0');
INSERT INTO `peminjaman` VALUES ('101', 'M5', 'B15', '2017-05-22', '2017-05-29', '2017-05-26', 'P4', '0');

-- ----------------------------
-- Table structure for `petugas`
-- ----------------------------
DROP TABLE IF EXISTS `petugas`;
CREATE TABLE `petugas` (
  `IDPetugas` varchar(3) NOT NULL,
  `NamaPetugas` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IDPetugas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of petugas
-- ----------------------------
INSERT INTO `petugas` VALUES ('P1', 'Mr. A');
INSERT INTO `petugas` VALUES ('P2', 'Mr. B');
INSERT INTO `petugas` VALUES ('P3', 'Mr. C');
INSERT INTO `petugas` VALUES ('P4', 'Mr. D');
