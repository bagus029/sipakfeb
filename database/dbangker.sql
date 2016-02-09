/*
Navicat MySQL Data Transfer

Source Server         : server
Source Server Version : 50534
Source Host           : 10.14.7.200:3306
Source Database       : dbangker

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2016-02-09 17:38:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ak_unsur
-- ----------------------------
DROP TABLE IF EXISTS `ak_unsur`;
CREATE TABLE `ak_unsur` (
  `AK_UNSUR` text,
  `ID_AK_UNSUR` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_AK_UNSUR`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ak_unsur
-- ----------------------------
INSERT INTO `ak_unsur` VALUES ('Memperoleh dan melaksanakan pendidikan dan pengajaran', '1');
INSERT INTO `ak_unsur` VALUES ('Melaksanakan Penelitian', '2');
INSERT INTO `ak_unsur` VALUES ('Melaksanakan Pengabdian Pada Masyarakat', '3');
INSERT INTO `ak_unsur` VALUES ('Melaksanakan Kegiatan Penunjang Tridharma Perguruan Tinggi', '4');

-- ----------------------------
-- Table structure for subun_pelpend
-- ----------------------------
DROP TABLE IF EXISTS `subun_pelpend`;
CREATE TABLE `subun_pelpend` (
  `ID_SUBPELPEND` int(11) NOT NULL AUTO_INCREMENT,
  `SUBPELPEND` text,
  PRIMARY KEY (`ID_SUBPELPEND`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subun_pelpend
-- ----------------------------
INSERT INTO `subun_pelpend` VALUES ('1', 'Melaksanakan perkuliahan');
INSERT INTO `subun_pelpend` VALUES ('2', 'Membimbing seminar mahasiswa (setiap mahasiswa)');
INSERT INTO `subun_pelpend` VALUES ('3', 'Membimbing kuliah kerja nyata, praktek kerja nyata, praktek kerja lapangan (setiap semester)');
INSERT INTO `subun_pelpend` VALUES ('4', 'Membimbing dan ikut membimbing dalam menghasilkan disertasi, tesis, skripsi dan laporan akhir studi yang sesuai penugasannya');
INSERT INTO `subun_pelpend` VALUES ('5', 'Bertugas sebagai penguji pada ujian akhir');
INSERT INTO `subun_pelpend` VALUES ('6', 'Membina Kegiatan Mahasiswa');
INSERT INTO `subun_pelpend` VALUES ('7', 'Mengembangkan Program Kuliah');
INSERT INTO `subun_pelpend` VALUES ('8', 'Menyampaikan Orasi Ilmiah');
INSERT INTO `subun_pelpend` VALUES ('9', 'Menduduki Jabatan Pimpinan Perguruan Tinggi');
INSERT INTO `subun_pelpend` VALUES ('10', 'Membimbing Akademik Dosen Yang Lebih Rendah Jabatannya');
INSERT INTO `subun_pelpend` VALUES ('11', 'Melaksanakan Kegiatan Datasering dan Pencangkokan Akademik Dosen');
INSERT INTO `subun_pelpend` VALUES ('12', 'Melakukan Kegiatan Pengembangan Diri Untuk Meningkatkan Kompetensi');
INSERT INTO `subun_pelpend` VALUES ('13', 'Mengembangkan Bahan Kuliah');

-- ----------------------------
-- Table structure for subun_pend
-- ----------------------------
DROP TABLE IF EXISTS `subun_pend`;
CREATE TABLE `subun_pend` (
  `ID_SUBUNPEND` int(11) NOT NULL,
  `SUBUNPEND` text,
  PRIMARY KEY (`ID_SUBUNPEND`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subun_pend
-- ----------------------------
INSERT INTO `subun_pend` VALUES ('1', 'Mengikuti pendidikan formal dan memperoleh gelar/sebutan/ijasah Magister/Doktor/Sederajat');
INSERT INTO `subun_pend` VALUES ('2', 'Mengikuti diklat pra jabatan golongan III');

-- ----------------------------
-- Table structure for subun_penelitian
-- ----------------------------
DROP TABLE IF EXISTS `subun_penelitian`;
CREATE TABLE `subun_penelitian` (
  `ID_SUBUNPENELITIAN` int(11) NOT NULL AUTO_INCREMENT,
  `SUBUNPENELITIAN` text,
  PRIMARY KEY (`ID_SUBUNPENELITIAN`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subun_penelitian
-- ----------------------------
INSERT INTO `subun_penelitian` VALUES ('1', 'Menghasilkan Karya Ilmiah');
INSERT INTO `subun_penelitian` VALUES ('2', 'Menerjemahkan / Menyadur Buku Ilmiah yang diterbitkan ( ber -ISBN )');
INSERT INTO `subun_penelitian` VALUES ('3', 'Mengedit / Menyunting Karya Ilmiah dalam bentuk buku yang diterbitkan ( ber-ISBN )');
INSERT INTO `subun_penelitian` VALUES ('4', 'Membuat Rencana dan Karya Teknologi Yang Dipatenkan');
INSERT INTO `subun_penelitian` VALUES ('5', 'Membuat Rancangan dan Karya Teknologi, Rancangan dan Kaya Seni Monumental / Seni Pertunjukan / Karya Sastra');
INSERT INTO `subun_penelitian` VALUES ('6', 'Hasil Penelitian / hasil pemikiran yang di desiminasikan');
INSERT INTO `subun_penelitian` VALUES ('7', 'Hasil pemikiran / penelitian / kerjasama industri yang tidak di publikasikan ( tersimpan dalam perpustakaan )');

-- ----------------------------
-- Table structure for subun_pengabdian
-- ----------------------------
DROP TABLE IF EXISTS `subun_pengabdian`;
CREATE TABLE `subun_pengabdian` (
  `ID_SUBUNPENGAB` int(11) NOT NULL AUTO_INCREMENT,
  `SUBUNPENGAB` text,
  PRIMARY KEY (`ID_SUBUNPENGAB`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subun_pengabdian
-- ----------------------------
INSERT INTO `subun_pengabdian` VALUES ('1', 'Menduduki Jabatan Pimpinan');
INSERT INTO `subun_pengabdian` VALUES ('2', 'Melaksanakan Pengembangan Hasil Pendidikan dan Penelitian');
INSERT INTO `subun_pengabdian` VALUES ('3', 'Memberi Latihan / Penyuluhan / Penataran / Ceramah Pada Masyarakat');
INSERT INTO `subun_pengabdian` VALUES ('4', 'Memberi Pelayanan Kepada Masyarakat atau Kegiatan Lain yang Menunjang Pelaksanaan Tugas Umum Pemerintah dan Pembangunan');
INSERT INTO `subun_pengabdian` VALUES ('5', 'Membuat / Menulis Karya Pengabdian');

-- ----------------------------
-- Table structure for subun_penunjang
-- ----------------------------
DROP TABLE IF EXISTS `subun_penunjang`;
CREATE TABLE `subun_penunjang` (
  `ID_SUBUNPENUNJANG` int(11) NOT NULL AUTO_INCREMENT,
  `SUBUNPENUNJANG` text,
  PRIMARY KEY (`ID_SUBUNPENUNJANG`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subun_penunjang
-- ----------------------------
INSERT INTO `subun_penunjang` VALUES ('1', 'Menjadi Anggota dalam Suatu Panitia / Badan Pada Perguruan Tinggi');
INSERT INTO `subun_penunjang` VALUES ('2', 'Menjadi Anggota Panitia / Badan Pada Lembaga Pemerintah');
INSERT INTO `subun_penunjang` VALUES ('3', 'Menjadi Anggota Organisasi Profesi Dosen');
INSERT INTO `subun_penunjang` VALUES ('4', 'Mewakili Perguruan Tinggi / Lembaga Pemerintah');
INSERT INTO `subun_penunjang` VALUES ('5', 'Menjadi Anggota Delegasi Nasional Ke Pertemuan Internasional');
INSERT INTO `subun_penunjang` VALUES ('6', 'Berperan Serta Aktif Dalam Pertemuan Ilmiah');
INSERT INTO `subun_penunjang` VALUES ('7', 'Menulis Buku Pelajaran SLTA ke Bawah Yang Diterbitkan dan Diedarkan Secara Nasional');
INSERT INTO `subun_penunjang` VALUES ('8', 'Mempunyai Prestasi Di Bidang Olahraga / Humaniora');
INSERT INTO `subun_penunjang` VALUES ('9', 'Keanggotaan Dalam Tim Penilai');
INSERT INTO `subun_penunjang` VALUES ('10', 'Mendapat Penghargaan / Tanda Jasa');

-- ----------------------------
-- Table structure for tbl_ak_tetap
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ak_tetap`;
CREATE TABLE `tbl_ak_tetap` (
  `ID_AK_TETAP` int(11) NOT NULL AUTO_INCREMENT,
  `ID_AK_UNSUR` int(11) DEFAULT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `ANGKA_LAMA` varchar(50) DEFAULT NULL,
  `ANGKA_BARU` varchar(10) DEFAULT NULL,
  `ANGKA_DIGUNAKAN` varchar(10) DEFAULT NULL,
  `ANGKA_LEBIHAN` varchar(10) DEFAULT NULL,
  `NO_SK` varchar(25) DEFAULT NULL,
  `TGL_SUBMIT` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `JENJANG_JABATAN` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_AK_TETAP`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_ak_tetap
-- ----------------------------
INSERT INTO `tbl_ak_tetap` VALUES ('2', '1', '2', '120', '164.98', '167.76', '117.22', '3575/A4.5/KP/2008', '2015-03-24 09:48:07', 'IV A');
INSERT INTO `tbl_ak_tetap` VALUES ('3', '2', '2', '75', '26.80', '100.24', '1.56', '3575/A4.5/KP/2008', '2015-03-24 09:48:55', 'IV A');
INSERT INTO `tbl_ak_tetap` VALUES ('4', '3', '2', '45', '7', '52', '', '3575/A4.5/KP/2008', '2015-04-20 16:27:41', 'IV A');
INSERT INTO `tbl_ak_tetap` VALUES ('5', '4', '2', '60', '20', '80', '', '3575/A4.5/KP/2008', '2015-04-20 16:27:42', 'IV A');
INSERT INTO `tbl_ak_tetap` VALUES ('6', '1', '2', '40', '13.50', '', '', '198/PT30.H/C.AK/1991', '2015-04-20 16:27:42', 'III B');
INSERT INTO `tbl_ak_tetap` VALUES ('7', '2', '2', '25', '20', '', '', '198/PT30.H/C.AK/1991', '2015-04-20 16:27:43', 'III B');
INSERT INTO `tbl_ak_tetap` VALUES ('8', '3', '2', '15', '7.50', '', '', '198/PT30.H/C.AK/1991', '2015-04-20 16:27:43', 'III B');
INSERT INTO `tbl_ak_tetap` VALUES ('9', '4', '2', '20', '9', '', '', '198/PT30.H/C.AK/1991', '2015-04-20 16:27:44', 'III B');
INSERT INTO `tbl_ak_tetap` VALUES ('10', '1', '2', '53.50', '20.25', '', '', '141/PT30.H/C.AK/1993', '2015-04-20 16:27:44', 'III C');
INSERT INTO `tbl_ak_tetap` VALUES ('11', '2', '2', '45', '17.73', '', '', '141/PT30.H/C.AK/1993', '2015-04-20 16:27:44', 'III C');
INSERT INTO `tbl_ak_tetap` VALUES ('12', '3', '2', '22.50', '7.20', '', '', '141/PT30.H/C.AK/1993', '2015-04-20 16:27:44', 'III C');
INSERT INTO `tbl_ak_tetap` VALUES ('13', '4', '2', '29', '10', '', '', '141/PT30.H/C.AK/1993', '2015-04-20 16:27:45', 'III C');
INSERT INTO `tbl_ak_tetap` VALUES ('14', '1', '2', '73.75', '81.90', '', '', '080/J23/KP.AK/1998', '2015-04-20 16:27:45', 'III D');
INSERT INTO `tbl_ak_tetap` VALUES ('15', '2', '2', '62.73', '31.33', '', '', '080/J23/KP.AK/1998', '2015-04-20 16:27:45', 'III D');
INSERT INTO `tbl_ak_tetap` VALUES ('16', '3', '2', '29.70', '13.00', '', '', '080/J23/KP.AK/1998', '2015-04-20 16:27:46', 'III D');
INSERT INTO `tbl_ak_tetap` VALUES ('17', '4', '2', '39.00', '19.00', '', '', '080/J23/KP.AK/1998', '2015-04-20 16:27:46', 'III D');
INSERT INTO `tbl_ak_tetap` VALUES ('18', '1', '3', '60', '38.5', '98.5', '', '077/PT30.H/C.AK/1990', '2015-04-20 16:27:46', 'III C');
INSERT INTO `tbl_ak_tetap` VALUES ('19', '2', '3', '37.5', '14', '51.5', '', '077/PT30.H/C.AK/1990', '2015-04-20 16:27:47', 'III C');
INSERT INTO `tbl_ak_tetap` VALUES ('20', '3', '3', '22.5', '1.8', '24.3', '', '077/PT30.H/C.AK/1990', '2015-04-20 16:27:47', 'III C');
INSERT INTO `tbl_ak_tetap` VALUES ('21', '4', '3', '30', '3', '33', '', '077/PT30.H/C.AK/1990', '2015-04-20 16:27:47', 'III C');
INSERT INTO `tbl_ak_tetap` VALUES ('22', '1', '3', '98.5', '54', '152.50', '', '035/PT30.H/C.AK/1993', '2015-04-20 16:27:48', 'III D');
INSERT INTO `tbl_ak_tetap` VALUES ('23', '2', '3', '51.50', '35.83', '87.33', '', '035/PT30.H/C.AK/1993', '2015-04-20 16:27:48', 'III D');
INSERT INTO `tbl_ak_tetap` VALUES ('24', '3', '3', '24.3', '3', '27.30', '', '035/PT30.H/C.AK/1993', '2015-04-20 16:27:48', 'III D');
INSERT INTO `tbl_ak_tetap` VALUES ('25', '4', '3', '33', '20', '53', '', '035/PT30.H/C.AK/1993', '2015-04-20 16:27:48', 'III D');
INSERT INTO `tbl_ak_tetap` VALUES ('26', '1', '3', '120', '98.55', '218.55', '', '33936/A2.IV.1/KP/1999', '2015-04-20 16:27:49', 'IV A');
INSERT INTO `tbl_ak_tetap` VALUES ('27', '2', '3', '75', '32.33', '107.33', '', '33936/A2.IV.1/KP/1999', '2015-04-20 16:27:49', 'IV A');
INSERT INTO `tbl_ak_tetap` VALUES ('28', '3', '3', '45', '10', '55', '', '33936/A2.IV.1/KP/1999', '2015-04-20 16:27:50', 'IV A');
INSERT INTO `tbl_ak_tetap` VALUES ('29', '4', '3', '60', '14', '74', '', '33936/A2.IV.1/KP/1999', '2015-04-20 16:27:51', 'IV A');
INSERT INTO `tbl_ak_tetap` VALUES ('30', '1', '3', '160', '242.50', '311.84', '', '97174/A4.3/KP/2014', '2015-04-20 16:27:56', 'IV C');
INSERT INTO `tbl_ak_tetap` VALUES ('31', '2', '3', '100', '75.40', '175.16', '', '97174/A4.3/KP/2014', '2015-04-20 16:27:54', 'IV C');
INSERT INTO `tbl_ak_tetap` VALUES ('32', '3', '3', '60', '38', '98', '', '97174/A4.3/KP/2014', '2015-04-20 16:27:54', 'IV C');
INSERT INTO `tbl_ak_tetap` VALUES ('33', '4', '3', '80', '35', '115', '', '97174/A4.3/KP/2014', '2015-04-20 16:27:53', 'IV C');

-- ----------------------------
-- Table structure for tbl_cuti
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cuti`;
CREATE TABLE `tbl_cuti` (
  `ID_CUTI` int(11) NOT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `JENIS_CUTI` varchar(50) DEFAULT NULL,
  `MULAI_CUTI` date DEFAULT NULL,
  `AKHIR_CUTI` date DEFAULT NULL,
  `KET_CUTI` text,
  PRIMARY KEY (`ID_CUTI`),
  KEY `FK_RELATIONSHIP_4` (`ID_DOSEN`),
  CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_cuti
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dokumen_dosen
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dokumen_dosen`;
CREATE TABLE `tbl_dokumen_dosen` (
  `ID_DOKUMEN` int(11) NOT NULL AUTO_INCREMENT,
  `NIP_DOSEN` varchar(35) DEFAULT NULL,
  `DOKUMEN` varchar(75) DEFAULT NULL,
  `NAMA_DOKUMEN` varchar(75) DEFAULT NULL,
  `KETERANGAN` text,
  `TGL_SUBMIT` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_DOKUMEN`)
) ENGINE=InnoDB AUTO_INCREMENT=1442 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_dokumen_dosen
-- ----------------------------
INSERT INTO `tbl_dokumen_dosen` VALUES ('1', '196201111988032001', 'pronet 3-2.pdf', 'asdsd', 'asdasd', '2015-04-29 16:10:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('2', '195311111989012001', 'KARPEG_131809259.pdf', 'Karpeg Baru', 'Kartu Pegawai', '2015-09-08 18:02:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('4', '196201111988032001', 'KARPEG_131764921.pdf', 'karpeg 131764921', '-', '2015-10-07 09:40:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('5', '196201111988032001', 'NIP BARU_196201111988032001.pdf', 'NIP BARU 19220', '-', '2015-10-07 09:43:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('6', '195311111989012001', 'NIP BARU_195311111989012001.pdf', 'NIP BARU TIEN', '-', '2015-10-07 10:27:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('7', '195311111989012001', 'SK_ASISTEN AHLI_IIIa_1994.pdf', 'SK_ASISTEN 1994 A.Tien Sukaesih', '-', '2015-10-07 10:29:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('8', '195311111989012001', 'SK_ASISTEN AHLI_IIIb_2001.pdf', 'SK_ASISTEN 2001 A.Tien Sukaesih', '-', '2015-10-07 10:30:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('9', '195311111989012001', 'SK_CPNS_1989.pdf', 'SK_CPNS_1989 A.Tien Sukaesih', '-', '2015-10-07 10:30:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('10', '195311111989012001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D 2013 A.Tien Sukaesih', '-', '2015-10-07 10:31:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('11', '196503241990031001', 'KARPEG_131901313.pdf', 'KARPEG_131901313 Adi Wiranto', '-', '2015-10-07 10:37:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('12', '196503241990031001', 'NIP BARU_196503241990031001.pdf', 'NIP BARU Adi Wiranto', '-', '2015-10-07 10:38:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('13', '196503241990031001', 'SK_CPNS_1990.pdf', 'SK_CPNS_1990 Adi Wiranto', '-', '2015-10-07 10:38:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('14', '196503241990031001', 'SK_LEKTOR_IIId_2013.pdf', 'Sk_LEKTOR_IIId_2013 Adi Wiranto', '-', '2015-10-07 10:40:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('15', '196503241990031001', 'SK_M_INTER_S1_GASAL_2013.PDF', 'SK_M_INTER Adi Wiranto', '-', '2015-10-07 10:40:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('16', '196503241990031001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING Adi Wiranto', '-', '2015-10-07 10:41:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('17', '196503241990031001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING 2013 Adi Wiranto', '-', '2015-10-07 10:42:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('18', '196503241990031001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBIN SKRIPSI_110_2013 Adi Wiranto', '-', '2015-10-07 10:43:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('19', '196503241990031001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SEKRIPSI_111_2013 Adi Wiranto', '-', '2015-10-07 10:44:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('20', '196503241990031001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013', '-', '2015-10-07 10:45:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('21', '196503241990031001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Adi Wiranto', '-', '2015-10-07 10:46:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('22', '196503241990031001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Adi Wiranto', '-', '2015-10-07 10:48:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('23', '196503241990031001', 'SK_PNS_1991.pdf', 'SK_PNS_1991 Adi Wiranto', '-', '2015-10-07 10:48:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('24', '196303281989011001', 'KARPEG_131809062.pdf', 'KARPEG Agung Praptapa', '-', '2015-10-07 10:50:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('25', '196303281989011001', 'NIP BARU_196303281989011001.pdf', 'NIP BARU Agung Praptapa', '-', '2015-10-07 10:51:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('26', '196303281989011001', 'SK_CPNS_1989.pdf', 'SK_CPNS_1989 Agung Praptapa', '-', '2015-10-07 10:51:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('27', '196303281989011001', 'SK_LEKTOR_KEPALA_IIId_2011.pdf', 'SK_LEKTOR_KEPALA_2011 Agung Praptapa', '-', '2015-10-07 10:53:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('28', '196303281989011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_2013  Agung Praptapa', '-', '2015-10-07 10:54:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('29', '196303281989011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING_AKADEMIK_2013_2014 Agung Praptapa', '-', '2015-10-07 10:55:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('30', '196303281989011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Agung Praptapa', '-', '2015-10-07 10:56:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('31', '196303281989011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013', '-', '2015-10-07 10:57:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('32', '196303281989011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Agung Praptapa', '-', '2015-10-07 10:59:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('33', '196303281989011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Agung Praptapa', '-', '2015-10-07 11:00:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('34', '196303281989011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Agung Praptapa', '-', '2015-10-07 11:01:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('35', '196303281989011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Agung Praptapa', '-', '2015-10-07 11:02:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('36', '196303281989011001', 'SK_PNS_1990.pdf', 'SK_PNS_1990 Agung Praptapa', '-', '2015-10-07 11:02:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('37', '196108141987031001', 'KARPEG_131662013.pdf', 'KARPEG Agus Faturokhman', '-', '2015-10-07 11:05:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('38', '196108141987031001', 'NIP BARU_196108141987031001.pdf', 'NIP BARU Agus Faturokhman', '-', '2015-10-07 11:06:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('39', '196108141987031001', 'SK_CPNS_1987.pdf', 'SK_CPNS_1987 Agus Faturokhman', '-', '2015-10-07 11:06:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('40', '196108141987031001', 'SK_CPNS_LAMPIRAN_1987.pdf', 'SK_CPNS_LAMPIRAN_1987 Agus Faturokhman', '-', '2015-10-07 11:07:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('41', '196108141987031001', 'SK_LEKTOR MUDA_IIIb_1994.pdf', 'SK_LEKTOR MUDA_1994 Agus Faturokhman', '-', '2015-10-07 11:08:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('42', '196108141987031001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_2013 Agus Faturokhman', '-', '2015-10-07 11:09:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('43', '196108141987031001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Agus Faturokhman', '-', '2015-10-07 11:10:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('44', '196108141987031001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Agus Faturokhman', '-', '2015-10-07 11:12:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('45', '196108141987031001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Agus Faturokhman', '-', '2015-10-07 11:12:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('46', '196108141987031001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Agus Faturokhman', '-', '2015-10-07 11:13:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('47', '196108141987031001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Agus Faturokhman', '-', '2015-10-07 11:14:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('48', '196108141987031001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Agus Faturokhman', '-', '2015-10-07 11:15:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('49', '196108141987031001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Agus Faturokhman', '-', '2015-10-07 11:16:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('50', '196108141987031001', 'SK_PNS_1988.pdf', 'SK_PNS_1988 Agus Faturokhman', '-', '2015-10-07 11:17:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('51', '196103021987031003', 'KARPEG_131662038.pdf', 'KARPEG Agus Sunarmo', '-', '2015-10-07 11:18:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('52', '196103021987031003', 'NIP BARU_196103021987031003.pdf', 'NIP BARU Agus Sunarmo', '-', '2015-10-07 11:19:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('53', '196103021987031003', 'SK_CPNS_1987.pdf', 'SK_CPNS_1987 Agus Sunarmo', '-', '2015-10-07 11:19:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('54', '196103021987031003', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_2013 Agus Sunarmo', '-', '2015-10-07 11:21:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('55', '196103021987031003', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Agus Sunarmo', '-', '2015-10-07 11:22:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('56', '196103021987031003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Agus Sunarmo', '-', '2015-10-07 11:22:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('57', '196103021987031003', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Agus Sunarmo', '-', '2015-10-07 11:23:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('58', '196103021987031003', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Agus Sunarmo', '-', '2015-10-07 11:24:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('59', '196103021987031003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Agus Sunarmo', '-', '2015-10-07 11:25:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('60', '196103021987031003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Agus Sunarmo', '-', '2015-10-07 11:26:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('61', '196103021987031003', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Agus Sunarmo', '-', '2015-10-07 11:26:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('62', '196103021987031003', 'SK_PNS_1988.pdf', 'SK_PNS_1988 Agus Sunarmo', '-', '2015-10-07 11:27:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('63', '195702201989031001', 'NIP BARU_195702201989031001.pdf', 'NIP BARU Amber Lumbantoruan', '-', '2015-10-07 11:29:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('64', '195702201989031001', 'SK_CPNS_1989.pdf', 'SK-CPNS_1989 Amber Lumbantoruan', '-', '2015-10-07 11:29:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('65', '195702201989031001', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_2001 Amber Lumbantoruan', '-', '2015-10-07 11:30:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('66', '195702201989031001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Amber Lumbantoruan', '-', '2015-10-07 11:31:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('67', '195702201989031001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Amber Lumbantoruan', '-', '2015-10-07 11:32:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('68', '195702201989031001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Amber Lumbantoruan', '-', '2015-10-07 11:33:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('69', '195702201989031001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Amber Lumbantoruan', '-', '2015-10-07 11:34:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('70', '195702201989031001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Amber Lumbantoruan', '-', '2015-10-07 11:35:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('71', '195702201989031001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Amber Lumbantoruan', '-', '2015-10-07 11:35:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('72', '195702201989031001', 'SK_PNS_1990.pdf', 'SK_PNS_1990 Amber Lumbantoruan', '-', '2015-10-07 11:36:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('73', '196709141994022001', 'KARPEG_132084308.pdf', 'KARPEG Atiek Sri Purwati', '-', '2015-10-07 11:38:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('74', '196709141994022001', 'NIP BARU_196709141994031001.pdf', 'NIP BARU Atiek Sri Purwati', '-', '2015-10-07 11:38:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('75', '196709141994022001', 'SK_CPNS_1994.pdf', 'SK_CPNS_1994 Atiek Sri Purwati', '-', '2015-10-07 11:39:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('76', '196709141994022001', 'SK_LEKTOR KEPALA_IVa_2011.pdf', 'SK_LEKTOR KEPALA_2011 Atiek Sri Purwati', '-', '2015-10-07 11:40:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('77', '196709141994022001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_2013 Atiek Sri Purwati', '-', '2015-10-07 11:41:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('78', '196709141994022001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Atiek Sri Purwati', '-', '2015-10-07 11:41:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('79', '196709141994022001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Atiek Sri Purwati', '-', '2015-10-07 11:42:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('80', '196709141994022001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Atiek Sri Purwati', '-', '2015-10-07 11:43:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('81', '196709141994022001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Atiek Sri Purwati', '-', '2015-10-07 11:44:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('82', '196709141994022001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Atiek Sri Purwati', '-', '2015-10-07 11:45:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('83', '196709141994022001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Atiek Sri Purwati', '-', '2015-10-07 11:46:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('84', '196709141994022001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Atiek Sri Purwati', '-', '2015-10-07 11:47:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('85', '196709141994022001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Atiek Sri Purwati', '-', '2015-10-07 11:48:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('86', '196709141994022001', 'SK_PNS_1995.pdf', 'SK_PNS_1995 Atiek Sri Purwati', '-', '2015-10-07 11:48:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('87', '196108281987031012', 'KARPEG_131662016.pdf', 'KARPEG Bambang Agus Pramuka', '-', '2015-10-07 12:29:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('88', '196108281987031012', 'SK_CPNS_1987.pdf', 'SK_CPNS_1987 Bambang Agus Pramuka', '-', '2015-10-07 12:30:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('89', '196108281987031012', 'SK_LEKTOR KEPALA_IVa_2019.pdf', 'SK_LEKTOR KEPALA_2019 Bambang Agus Pramuka', '-', '2015-10-07 12:31:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('90', '196108281987031012', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Bambang Agus Pramuka', '-', '2015-10-07 12:33:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('91', '196108281987031012', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Bambang Agus Pramuka', '-', '2015-10-07 12:34:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('92', '196108281987031012', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Bambang Agus Pramuka', '-', '2015-10-07 12:35:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('93', '196108281987031012', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Bambang Agus Pramuka', '-', '2015-10-07 12:37:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('94', '196108281987031012', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Bmbang Agus Pramuka', '-', '2015-10-07 12:38:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('95', '196108281987031012', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Bambang Agus Pramuka', '-', '2015-10-07 12:39:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('96', '196108281987031012', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Bambang Agus Pramuka', '-', '2015-10-07 12:41:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('97', '196108281987031012', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Bambang Agus Pramuka', '-', '2015-10-07 12:42:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('98', '196108281987031012', 'SK_PNS_1988.pdf', 'SK_PNS_1988 Bambang Agus Pramuka', '-', '2015-10-07 12:43:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('99', '196812282000031001', 'KARPEG_132257744.pdf', 'KARPEG Bambang Setyabudi I', '-', '2015-10-07 13:43:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('100', '196812282000031001', 'SK_LEKTOR_IIIc_2010.pdf', 'SK_LEKTOR_IIc_2010 Bambang Setyabudi I', '-', '2015-10-07 13:44:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('101', '196812282000031001', 'SK_PNS_2001.pdf', 'SK_PNS_2001 Bambang Setyabudi I', '-', '2015-10-07 13:44:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('102', '197501092000122001', 'KARPEG_132283126.pdf', 'KARPEG Christina Tri Setyorini', '-', '2015-10-07 13:46:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('103', '197501092000122001', 'NIP BARU_197501092000122001.pdf', 'NIP BARU Christina Tri Setyorini', '-', '2015-10-07 13:46:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('104', '197501092000122001', 'SK_CPNS_2000.pdf', 'SK_CPNS_2000 Christina Tri Setyorini', '-', '2015-10-07 13:47:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('105', '197501092000122001', 'SK_LEKTOR_IIIb_2008.pdf', 'SK_LEKTOR_IIb_2008 Christina Tri Setyorini', '-', '2015-10-07 13:48:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('106', '197501092000122001', 'SK_LEKTOR_IIId_2013.pdf', 'SK_LEKTOR_IId_2013 Christina Tri Setyorini', '-', '2015-10-07 13:49:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('107', '197501092000122001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Christina Tri Setyorini', '-', '2015-10-07 13:50:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('108', '197501092000122001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Christina Tri Sulistyorini', '-', '2015-10-07 13:52:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('109', '197501092000122001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SEKRIPSI_109_2013 Christina Tri Setyorini', '-', '2015-10-07 13:53:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('110', '197501092000122001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Cristina Tri Setyorini', '-', '2015-10-07 13:54:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('111', '197501092000122001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Christina Tri Setyorini', '-', '2015-10-07 13:55:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('112', '197501092000122001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Christina Tri Setyorini', '-', '2015-10-07 13:56:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('113', '197501092000122001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Christina Tri Setyorini', '-', '2015-10-07 13:57:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('114', '197501092000122001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Christina Tri Setyorini', '-', '2015-10-07 13:58:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('115', '197501092000122001', 'SK_PNS_2002.pdf', 'SK_PNS_2002 Christina Tri Setyorini', '-', '2015-10-07 13:59:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('116', '196110131988032002', 'KARPEG_131764923.pdf', 'KARPEG Dewi Susilowati', '-', '2015-10-07 14:05:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('117', '196110131988032002', 'NIP BARU_196110131988032002.pdf', 'NIP BARU Dewi Susilowati', '-', '2015-10-07 14:05:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('118', '196110131988032002', 'SK_CPNS_1988.pdf', 'SK_CPNS_1988 Dewi Susilowati', '-', '2015-10-07 14:06:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('119', '196110131988032002', 'SK_LEKTOR_IIIb_2007.pdf', 'SK_LETKTOR_IIIb_2007 Dewi Susilowati', '-', '2015-10-07 14:07:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('120', '196110131988032002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_2013 Dewi Susilowati', '-', '2015-10-07 14:08:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('121', '196110131988032002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Dewi Susilowati', '-', '2015-10-07 14:09:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('122', '196110131988032002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Dewi Susilowati', '-', '2015-10-07 14:10:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('123', '196110131988032002', 'SK_PNS_1989.pdf', 'SK_PNS_1989 Dewi Susilowati', '-', '2015-10-07 14:10:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('124', '198109052009122001', 'KARPEG_198109052009122001.pdf', 'KARPEG Dona Primasari', '-', '2015-10-07 14:12:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('125', '198109052009122001', 'SK_CPNS_2010.pdf', 'SK_CPNS_2010 Dona Primasari', '-', '2015-10-07 14:12:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('126', '198109052009122001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Dona Primasari', '-', '2015-10-07 14:13:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('127', '198109052009122001', 'SK_PNS_2011.pdf', 'SK_PNS_2011 Dona Primasari', '-', '2015-10-07 14:14:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('128', '198109052009122001', 'SURAT PENETAPAN_ASISTEN AHLI_2009.pdf', 'SURAT PENETAPAN_ASISTEN AHLI_2009 Dona Primasari', '-', '2015-10-07 14:14:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('129', '195305191989031001', 'KARPEG_131852570.pdf', 'KARPEG Edward Kanam Sinoeraya', '-', '2015-10-07 14:16:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('130', '195305191989031001', 'NIP BARU_195305191989031001.pdf', 'NIP BARU Edward Kanam Sinoeraya', '-', '2015-10-07 14:17:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('131', '195305191989031001', 'SK_CPNS_1989.pdf', 'SK_CPNS_1989 Edward Kanam Sinoeraya', '-', '2015-10-07 14:17:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('132', '195305191989031001', 'SK_LEKTOR KEPALA_IVa_2009.pdf', 'SK_LEKTOR KEPALA_2009 Edward Kanam Sinoeraya', '-', '2015-10-07 14:19:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('133', '195305191989031001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Edward Kanam Sinoeraya', '-', '2015-10-07 14:19:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('134', '195305191989031001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Edward Kanam Sinoeraya', '-', '2015-10-07 14:20:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('135', '195305191989031001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Edward Kanam Sinoeraya', '-', '2015-10-07 14:22:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('136', '195305191989031001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Edward Kanam Sinoeraya', '-', '2015-10-07 14:24:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('137', '195305191989031001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Edward Kanam Sinoeraya', '-', '2015-10-07 14:28:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('138', '195305191989031001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Edward Kanam Sinoeraya', '-', '2015-10-07 14:29:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('139', '195305191989031001', 'SK_PNS_1990.pdf', 'SK_PNS_1990 Edward Kanam Sinoeraya', '-', '2015-10-07 14:30:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('140', '196103221990021001', 'KARPEG_131877295.pdf', 'KARPEG Eko Hariyanto', '-', '2015-10-07 14:32:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('141', '196103221990021001', 'NIP BARU_196103221990021001.pdf', 'NIP BARU Eko Hariyanto', '-', '2015-10-07 14:33:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('142', '196103221990021001', 'SK_CPNS_1991.pdf', 'SK_CPNS_1991 Eko Hariyanto', '-', '2015-10-07 14:35:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('143', '196103221990021001', 'SK_LEKTOR KEPALA_IVa_2003.pdf', 'SK_LEKTOR KEPALA_2003 Eko Hariyanto', '-', '2015-10-07 14:36:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('144', '196103221990021001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Eko Hariyanto', '-', '2015-10-07 14:37:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('145', '196103221990021001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Eko Hariyanto', '-', '2015-10-07 14:38:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('146', '196103221990021001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Eko Hariyanto', '-', '2015-10-07 14:39:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('147', '196103221990021001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Eko Hariyanto', '-', '2015-10-07 14:40:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('148', '196103221990021001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Eko Hariyanto', '-', '2015-10-07 14:41:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('149', '196103221990021001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Eko Hariyanto', '-', '2015-10-07 14:42:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('150', '196103221990021001', 'SK_PNS_1991.pdf', 'SK_PNS_1991 Eko Hariyanto', '-', '2015-10-07 14:42:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('151', '197505282003121001', 'KARPEG_132303677.pdf', 'KARPEG Eko Suyono', '-', '2015-10-07 14:44:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('152', '197505282003121001', 'NIP BARU_197505282003121001.pdf', 'NIP BARU Eko Suyono', '-', '2015-10-07 14:44:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('153', '197505282003121001', 'SK_CPNS_2004.pdf', 'SK_CPNS_2004 Eko Suyono', '-', '2015-10-07 14:45:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('154', '197505282003121001', 'SK_LEKTOR_IIIb_2011.pdf', 'SK_LEKTOR_IIIb_2011 Eko Suyono', '-', '2015-10-07 14:46:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('155', '197505282003121001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Eko Suyono', '-', '2015-10-07 14:46:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('156', '197505282003121001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Eko Suyono', '-', '2015-10-07 14:47:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('157', '197505282003121001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Eko Suyono', '-', '2015-10-07 14:48:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('158', '197505282003121001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Eko Suyono', '-', '2015-10-07 14:49:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('159', '197505282003121001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Eko Suyono', '-', '2015-10-07 14:50:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('160', '197505282003121001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', null, null, '2015-10-07 14:51:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('161', '197505282003121001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Eko Suyono', '-', '2015-10-07 14:51:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('162', '197505282003121001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Eko Suyono', '-', '2015-10-07 14:52:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('163', '197505282003121001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Eko Suyono', '-', '2015-10-07 14:53:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('164', '197505282003121001', 'SK_PNS_2005.pdf', 'SK_PNS_2005 Eko Suyono', '-', '2015-10-07 14:53:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('165', '198007212005012002', 'KARPEG_132306993.pdf', 'KARPEG Eliada Herwiyanti', '-', '2015-10-07 14:55:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('166', '198007212005012002', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Eliada Herwiyanti', '-', '2015-10-07 14:55:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('167', '198007212005012002', 'SK_LEKTOR_IIIa_2010.pdf', 'SK_LEKTOR_IIIa_2010 Eliada Herwiyanti', '-', '2015-10-07 14:56:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('168', '198007212005012002', 'SK_PNS_2006.pdf', 'SK_PNS_2006 Eliada Herwiyanti', '-', '2015-10-07 14:57:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('169', '195206101990021001', 'KARPEG_131877297.pdf', 'KARPEG Halomoan Ompusunggu', '-', '2015-10-07 14:58:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('170', '195206101990021001', 'SK_CPNS_1990.pdf', 'SK_CPNS_1990 Halomoan Ompusunggu', '-', '2015-10-07 14:59:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('171', '195206101990021001', 'SK_CPNS_LAMPIRAN_1990.pdf', 'SK_CPNS_LAMPIRAN_1990 Halomoan Ompusunggu', '-', '2015-10-07 15:00:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('172', '195206101990021001', 'SK_LEKTOR KEPALA_IVa_2009.pdf', 'SK_LEKTOR KEPALA_2009 Halomoan Ompusunggu', '-', '2015-10-07 15:01:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('173', '195206101990021001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Halomoan Ompusunggu', '-', '2015-10-07 15:02:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('174', '195206101990021001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Halomoan Ompusunggu', '-', '2015-10-07 15:02:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('175', '195206101990021001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Halomoan Ompusunggu', '-', '2015-10-07 15:03:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('176', '195206101990021001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Haolomoan Ompusunggu', '-', '2015-10-07 15:04:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('177', '195206101990021001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Halomoan Ompusunggu', '-', '2015-10-07 15:05:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('178', '195206101990021001', 'SK_PNS_1991.pdf', 'SK_PNS_1991 Halomoan Ompusunggu', '-', '2015-10-07 15:06:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('179', '195208121980031002', 'KARPEG_130810382.pdf', 'KARPEG Havid Sularso', '-', '2015-10-07 15:07:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('180', '195208121980031002', 'NIP BARU_195208121980031002.pdf', 'NIP BARU Havid Sularso', '-', '2015-10-07 15:07:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('181', '195208121980031002', 'SK_CPNS_1980.pdf', 'SK_CPNS_1980 Havid Sularso', '-', '2015-10-07 15:08:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('182', '195208121980031002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Havid Sularso', '-', '2015-10-07 15:08:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('183', '195208121980031002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Havid Sularso', '-', '2015-10-07 15:09:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('184', '195208121980031002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Havid Sularso', '-', '2015-10-07 15:10:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('185', '195208121980031002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Havid Sularso', '-', '2015-10-07 15:11:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('186', '195208121980031002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Havid Sularso', '-', '2015-10-07 15:12:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('187', '195208121980031002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Havid Sularso', '-', '2015-10-07 15:12:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('188', '195208121980031002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Havid Sularso', '-', '2015-10-07 15:13:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('189', '195208121980031002', 'SK_PNS_1981.pdf', 'SK_PNS_1981 Havid Sularso', '-', '2015-10-07 15:14:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('190', '198202092010122001', 'SK_ASISTEN AHLI_IIIb_2013.pdf', 'SK_ASISTEN AHLI_IIIb_2013 Hijroh Rokhayati', '-', '2015-10-07 15:15:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('191', '198202092010122001', 'SK_CPNS_2011.pdf', 'SK_CPNS_2011 Hijroh Rokhayati', '-', '2015-10-07 15:16:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('192', '198202092010122001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Hijroh Rokhayati', '-', '2015-10-07 15:17:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('193', '198202092010122001', null, '', '', '2015-10-07 15:17:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('194', '198202092010122001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Hijroh Rokhayati', '-', '2015-10-07 15:18:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('195', '198202092010122001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Hijroh Rokhayati', '-', '2015-10-07 15:19:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('196', '198202092010122001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Hijroh Rokhayati', '-', '2015-10-07 15:20:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('197', '198202092010122001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Hijroh Rokhayati', '-', '2015-10-07 15:20:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('198', '198202092010122001', 'SK_PNS_2012.pdf', 'SK_PNS_2012 Hijroh Rokhayati', '-', '2015-10-07 15:21:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('199', '195810061986011001', 'KARPEG_131572333.pdf', 'KARPEG I Wayan Mustika', '-', '2015-10-07 15:23:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('200', '195810061986011001', 'NIP BARU_195810061986011001.pdf', 'NIP BARU I Wayan Mustika', '-', '2015-10-07 15:23:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('201', '195810061986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 I Wayan Mustika', '-', '2015-10-07 15:24:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('202', '195810061986011001', 'SK_LEKTOR__IIIc_2001.pdf', 'SK_LEKTOR_IIIc_2001 I Wayan Mustika', '-', '2015-10-07 15:24:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('203', '195810061986011001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 I Wayan Mustika', '-', '2015-10-07 15:25:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('204', '195810061986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 I Wayan Mustika', '-', '2015-10-07 15:26:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('205', '195810061986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 I Wayan Mustika', '-', '2015-10-07 15:27:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('206', '195810061986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 I Wayan Mustika', '-', '2015-10-07 15:28:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('207', '195810061986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 I Wayan Mustika', '-', '2015-10-07 15:29:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('208', '195810061986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 I Wayan Mustika', '-', '2015-10-07 15:30:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('209', '195810061986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 I Wayan Mustika', '-', '2015-10-07 15:30:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('210', '195810061986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 I Wayan Mustika', '-', '2015-10-07 15:31:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('211', '195810061986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 I Wayan Mustika', '-', '2015-10-07 15:32:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('212', '197911212005011001', 'KARPEG_132307964.pdf', 'KARPEG Icuk Rangga Bawono', '-', '2015-10-07 15:33:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('213', '197911212005011001', 'NIP BARU_197911212005011001.pdf', 'NIP BARU Icuk Rangga Bawono', '-', '2015-10-07 15:34:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('214', '197911212005011001', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Icuk Rangga Bawono', '-', '2015-10-07 15:34:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('215', '197911212005011001', 'SK_LEKTOR_IIIb_2007.pdf', 'SK_LEKTOR_IIIb_2007 Icuk Rangga Bawono', '-', '2015-10-07 15:35:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('216', '197911212005011001', 'SK_PNS_2006.pdf', 'SK_PNS_2006 Icuk Rangga Bawono', '-', '2015-10-07 15:35:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('217', '196207061988032002', 'KARPEG_131764916.pdf', 'KARPEG Irianing Suparlinah', '-', '2015-10-07 15:36:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('218', '196207061988032002', 'NIP BARU_196207061988032002.pdf', 'NIP BARU Irianing Suparlinah', '-', '2015-10-07 15:37:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('219', '196207061988032002', 'SK_CPNS_1988.pdf', 'SK_CPNS_1988 Irianing Suparlinah', '-', '2015-10-07 15:38:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('220', '196207061988032002', 'SK_LEKTOR KEPALA_IVa_2012.pdf', 'SK_LEKTOR KEPALA_2012 Irianing Suparlinah', '-', '2015-10-07 15:38:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('221', '196207061988032002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_2013 Irianing Suparlinah', '-', '2015-10-07 15:39:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('222', '196207061988032002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Irianing Suparlinah', '-', '2015-10-07 15:40:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('223', '196207061988032002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', null, null, '2015-10-07 15:41:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('224', '196207061988032002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Irianing Suparlinah', '-', '2015-10-07 15:41:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('225', '196207061988032002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Irianing Suparlinah', '-', '2015-10-07 15:42:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('226', '196207061988032002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Irianing Suparlinah', '-', '2015-10-07 15:43:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('227', '196207061988032002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Irianing Suparlinah', '-', '2015-10-07 15:44:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('228', '196207061988032002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013  Irianing Suparlinah', '-', '2015-10-07 15:45:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('229', '196207061988032002', null, 'SK_PENGUJI PENDADARAN_110_2013 Irianing Suparlinah', '-', '2015-10-07 15:46:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('230', '196207061988032002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Irianing Suparlinah', '-', '2015-10-07 15:47:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('231', '196207061988032002', 'SK_PNS_1989.pdf', 'SK_PNS_1989 Irianing Suparlinah', '-', '2015-10-07 15:48:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('232', '196812241994022003', 'NIP BARU_196812241994022003.pdf', 'NIP BARU Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 15:50:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('233', '196812241994022003', 'SK_CPNS_1994.pdf', 'SK_CPNS_1994 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 15:51:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('234', '196812241994022003', 'SK_LEKTOR_IIIc_2006.pdf', 'SK_LEKTOR_IIc_2006 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 15:52:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('235', '196812241994022003', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 15:53:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('236', '196812241994022003', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 15:54:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('237', '196812241994022003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 15:56:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('238', '196812241994022003', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 15:58:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('239', '196812241994022003', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 15:59:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('240', '196812241994022003', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 16:00:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('241', '196812241994022003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 16:01:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('242', '196812241994022003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 16:02:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('243', '196812241994022003', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Khrisnhoe Rachmi Fitrijati', '-', '2015-10-07 16:03:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('244', '196812241994022003', 'SK_PNS_1995.pdf', 'SK_PNS_1995 Khrisnhoe Rachmi Fitrijati', '', '2015-10-07 16:04:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('245', '196710041994021001', 'KARPEG_132084309.pdf', 'KARPEG Lilik Handaya Eka', '-', '2015-10-08 08:04:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('246', '196710041994021001', 'NIP BARU_196710041994021001.pdf', 'NIP BARU Lilik Handaya Eka', '-', '2015-10-08 08:05:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('247', '196710041994021001', 'SK_ASISTEN AHLI_IIIa_2001.pdf', 'SK_ASISTEN AHLI_IIIa_2001 Lilik Handaya Eka', '-', '2015-10-08 08:06:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('248', '196710041994021001', 'SK_CPNS_1994.pdf', 'SK_CPNS_1994 Lilik Handaya Eka', '-', '2015-10-08 08:08:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('249', '196710041994021001', 'SK_PNS_1995.pdf', 'SK_PNS_1995 Lilik Handaya Eka', '-', '2015-10-08 08:10:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('250', '195704161988031001', 'KARPEG_131754928.pdf', null, null, '2015-10-08 08:12:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('251', '195704161988031001', 'SK_CPNS_1988.pdf', 'SK_CPNS_1988 Mafudi', '-', '2015-10-08 08:15:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('252', '195704161988031001', 'SK_LEKTOR MUDA_IIIb_1998.pdf', 'SK_LEKTOR MUDA_IIIb_1998 Mafudi', '-', '2015-10-08 08:16:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('253', '195704161988031001', 'SK_LEKTOR_IIIc_2001.pdf', 'SK_LEKTOR_IIIc_2001 Mafudi', '-', '2015-10-08 08:22:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('254', '195704161988031001', 'SK_LEKTOR_IIIc_2001.pdf', null, null, '2015-10-08 08:30:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('255', '195704161988031001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Mafudi', '-', '2015-10-08 08:47:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('256', '195704161988031001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Mafudi', '-', '2015-10-08 08:48:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('257', '195704161988031001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Mafudi', '-', '2015-10-08 08:49:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('258', '195704161988031001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Mafudi', '-', '2015-10-08 08:49:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('259', '195704161988031001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Mafudi', '-', '2015-10-08 08:50:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('260', '195704161988031001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Mafudi', '-', '2015-10-08 08:51:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('261', '195704161988031001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Mafudi', '-', '2015-10-08 08:51:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('262', '195704161988031001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Mafudi', '-', '2015-10-08 08:52:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('263', '195704161988031001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Mafudi', '-', '2015-10-08 08:53:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('264', '195704161988031001', 'SK_PNS_1989.pdf', 'SK_PNS_1989 Mafudi', '-', '2015-10-08 08:53:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('265', '197508221999032001', 'NIP BARU_197508221999032001.pdf', 'NIP BARU Margani Pinasti', '-', '2015-10-08 08:55:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('266', '197508221999032001', 'SK_LEKTOR_IIIb_2013.pdf', 'SK_LEKTOR_IIIb_2013 Margani Pinasti', '-', '2015-10-08 08:55:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('267', '197508221999032001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_2013 Margani Pinasti', '-', '2015-10-08 08:56:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('268', '197508221999032001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Margani Pinasti', '-', '2015-10-08 08:57:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('269', '197508221999032001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Margani Pinasti', '-', '2015-10-08 08:58:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('270', '197508221999032001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Margani Pinasti', '-', '2015-10-08 08:59:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('271', '197508221999032001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Margani Pinasti', '-', '2015-10-08 08:59:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('272', '197508221999032001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Margani Pinasti', '-', '2015-10-08 09:00:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('273', '197508221999032001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Margani Pinasti', '-', '2015-10-08 09:01:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('274', '197809182006042001', 'KARPEG_132317418.pdf', 'KARPEG Negina Kencono Putri', '-', '2015-10-08 09:02:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('275', '197809182006042001', 'NIP BARU_197809182006042001.pdf', 'NIP BARU Negina Kencono Putri', '-', '2015-10-08 09:03:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('276', '197809182006042001', 'SK_CPNS_2006.pdf', 'SK_CPNS_2006 Negina Kencono Putri', '-', '2015-10-08 09:04:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('277', '197809182006042001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Negina Kencono Putri', '-', '2015-10-08 09:05:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('278', '197809182006042001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Negina Kencono Putri', '-', '2015-10-08 09:06:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('279', '197809182006042001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Negina Kencono Putri', '-', '2015-10-08 09:07:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('280', '197809182006042001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Negina Kencono Putri', '-', '2015-10-08 09:08:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('281', '197809182006042001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Negina Kencono Putri', '-', '2015-10-08 09:09:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('282', '197809182006042001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Negina Kencono Putri', '-', '2015-10-08 09:10:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('283', '197809182006042001', 'SK_PNS_2007.pdf', 'SK_PNS_2007 Negina Kencono Putri', '-', '2015-10-08 09:10:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('284', '197503312000031002', 'KARPEG_132257743.pdf', 'KARPEG  Oman Rusmana', '-', '2015-10-08 09:12:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('285', '197503312000031002', 'NIP BARU_197503312000031002.pdf', 'NIP BARU Oman Rusmana', '-', '2015-10-08 09:12:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('286', '197503312000031002', 'SK_CPNS_2000.pdf', 'SK_CPNS_2000 Oman Rusmana', '', '2015-10-08 09:13:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('287', '197503312000031002', 'SK_CPNS_2000.pdf', 'SK_CPNS_2000 Oman Rusmana', '-', '2015-10-08 09:13:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('288', '197503312000031002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Oman Rusmana', '-', '2015-10-08 09:14:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('289', '197503312000031002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Oman Rusmana', '-', '2015-10-08 09:15:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('290', '197503312000031002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Oman Rusmana', '-', '2015-10-08 09:15:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('291', '197503312000031002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Oman Rusmana', '-', '2015-10-08 09:16:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('292', '197503312000031002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Oman Rusmana', '-', '2015-10-08 09:17:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('293', '197503312000031002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Oman Rusmana', '-', '2015-10-08 09:18:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('294', '197503312000031002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Oman Rusmana', '-', '2015-10-08 09:19:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('295', '197503312000031002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Oman Rusmana', '-', '2015-10-08 09:19:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('296', '197503312000031002', 'SK_PNS_2001.pdf', 'SK_PNS_2001 Oman Rusmana', '-', '2015-10-08 09:20:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('297', '196212041992032002', 'KARPEG_132010442.pdf', 'KARPEG Permata Ulfah', '-', '2015-10-08 09:21:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('298', '196212041992032002', 'NIP BARU_196212041992032002.pdf', 'NIP BARU Permata Ulfah', '-', '2015-10-08 09:22:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('299', '196212041992032002', 'SK_CPNS_1992.pdf', 'SK_CPNS_1992 Permata Ulfah', '-', '2015-10-08 09:22:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('300', '196212041992032002', 'SK_LEKTOR_IIId_2010.pdf', 'SK_LEKTOR_IIId_2010 Permata Ulfah', '-', '2015-10-08 09:23:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('301', '196212041992032002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Permata Ulfah', '-', '2015-10-08 09:24:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('302', '196212041992032002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Permata Ulfah', '-', '2015-10-08 09:24:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('303', '196212041992032002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Permata Ulfah', '-', '2015-10-08 09:26:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('304', '196212041992032002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Permata Ulfah', '-', '2015-10-08 09:27:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('305', '196212041992032002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Permata Ulfah', '-', '2015-10-08 09:28:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('306', '196212041992032002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Permata Ulfah ', '-', '2015-10-08 09:29:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('307', '196212041992032002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Permata Ulfah', '-', '2015-10-08 09:29:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('308', '196212041992032002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Permata Ulfah', '-', '2015-10-08 09:30:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('309', '196212041992032002', 'SK_PNS_1993.pdf', 'SK_PNS_1993 Permata Ulfah', '-', '2015-10-08 09:31:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('310', '196212041992032002', 'SK_PNS_LAMPIRAN_1993.pdf', 'SK_PNS_LAMPIRAN_1993 Permata Ulfah', '-', '2015-10-08 09:32:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('311', '197511072003122003', 'KARPEG_132303635.pdf', 'KARPEG Poppy Dian Indira K', '-', '2015-10-08 09:33:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('312', '197511072003122003', 'NIP BARU_197511072003122003.pdf', 'NIP BARU Poppy Dian Indira K', '-', '2015-10-08 09:34:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('313', '197511072003122003', 'SK_CPNS_2004.pdf', 'SK_CPNS_2004 Poppy Dian Indira K', '-', '2015-10-08 09:35:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('314', '197511072003122003', 'SK_LEKTOR_IIIb_2013.pdf', 'SK_LEKTOR_IIIb_2013 Poppy Dian Indira K', '-', '2015-10-08 09:36:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('315', '197511072003122003', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Poppy Dian Indira K', '-', '2015-10-08 09:37:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('316', '197511072003122003', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMIBMBING SKRIPSI_110_2013 Poppy Dian Indira K', '-', '2015-10-08 09:38:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('317', '197511072003122003', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Poppy Dian Indira K', '-', '2015-10-08 09:39:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('318', '197511072003122003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Poppy Dian Indira K', '-', '2015-10-08 09:40:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('319', '197511072003122003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Poppy Dian Indira K', '-', '2015-10-08 09:41:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('320', '197511072003122003', 'SK_PNS_2005.pdf', 'SK_PNS_2005 Poppy Dian Indira K', '-', '2015-10-08 09:41:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('321', '197106251998022002', 'KARPEG_132206524.pdf', 'KARPEG Puji Lestari', '-', '2015-10-08 09:43:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('322', '197106251998022002', 'NIP baru_197106251998022002.pdf', 'NIP BARU Puji Lestari', '-', '2015-10-08 09:43:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('323', '197106251998022002', 'SK_LEKTOR_IIId_2010.pdf', 'SK_LEKTOR_IIId_2010 Puji Lestari', '-', '2015-10-08 09:44:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('324', '197106251998022002', 'SK_PNS_1999.pdf', 'SK_PNS_1999 Puji Lestari', '-', '2015-10-08 09:44:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('325', '195905121986011001', 'KARPEG_131572338.pdf', 'KARPEG Rasyid Mei Mustafa', '-', '2015-10-08 09:46:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('326', '195905121986011001', 'NIP BARU_19590512198601001.pdf', 'NIP BARU Rasyid Mei Mustafa', '-', '2015-10-08 09:47:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('327', '195905121986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Rasyid Mei Mustafa', '-', '2015-10-08 09:48:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('328', '195905121986011001', 'SK_LEKTOR KEPALA_IVa_2011.pdf', 'SK_LEKTOR KEPALA_2011 Rasyid Mei Mustafa', '-', '2015-10-08 09:48:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('329', '195905121986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Rasyid Mei Mustafa', '-', '2015-10-08 09:49:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('330', '195905121986011001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Rasyid Mei Mustafa', '-', '2015-10-08 09:50:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('331', '195905121986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Rasyid Mei Mustafa', '-', '2015-10-08 09:51:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('332', '195905121986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Rasyid Mei Mustafa', '-', '2015-10-08 09:52:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('333', '195905121986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Rasyid Mei Mustafa', '-', '2015-10-08 09:53:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('334', '195905121986011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Rasyid Mei Mustafa', '-', '2015-10-08 09:54:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('335', '195905121986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Rasyid Mei Mustafa', '-', '2015-10-08 09:55:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('336', '195905121986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUI PENDADARAN_110_2013 Rasyid Mei Mustafa', '-', '2015-10-08 09:56:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('337', '195905121986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARaN_111_2013 Rasyid Mei Mustafa', '-', '2015-10-08 09:57:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('338', '195905121986011001', 'SK_PNS_LAMPIRAN_1987.pdf', 'SK_PNS_LAMPIRAN_1987 Rasyid Mei Mustafa', '-', '2015-10-08 09:58:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('339', '198509302009122005', 'KARPEG_198509302009122005.pdf', 'KARPEG Ratu Ayu Sri Wulandari MA', '-', '2015-10-08 09:59:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('340', '198509302009122005', 'SK_ASISTEN AHLI_IIIb_2012.pdf', 'SK_ASISTEN AHLI_IIIb_2012 Ratu Ayu Wulandari MA', '-', '2015-10-08 10:00:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('341', '198509302009122005', 'SK_CPNS_2010.pdf', 'SK_CPNS_2010 Ratu Ayu Sri Wulandari MA', '-', '2015-10-08 10:01:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('342', '198509302009122005', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_2013 Ratu Ayu Sri Wulandari MA', '-', '2015-10-08 10:02:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('343', '198509302009122005', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Ratu Ayu Sri Wulandari MA', '-', '2015-10-08 10:03:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('344', '198509302009122005', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Ratu Ayu Sri Wulandari MA', '-', '2015-10-08 10:04:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('345', '198509302009122005', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Ratu Ayu Sri Wulandari MA', '-', '2015-10-08 10:05:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('346', '198509302009122005', 'SK_PNS_2011.pdf', 'SK_PNS_2011 Ratu Ayu Sri Wulandari MA', '-', '2015-10-08 10:06:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('347', '198110262005012001', 'KARPEG_132306995.pdf', 'KARPEG Rini Widianingsih', '-', '2015-10-08 10:07:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('348', '198110262005012001', 'NIP BARU_198110262005012001.pdf', 'NIP BARU Rini Widianingsih', '-', '2015-10-08 10:08:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('349', '198110262005012001', 'SK_ASISTEN AHLI_IIIa_2011.pdf', 'SK_ASISTEN AHLI_IIIa_2011 Rini Widianingsih', '-', '2015-10-08 10:09:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('350', '198110262005012001', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Rini Widianingsih', '-', '2015-10-08 10:09:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('351', '198110262005012001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Rini Widianingsih', '-', '2015-10-08 10:10:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('352', '198110262005012001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Rini Widianingsih', '-', '2015-10-08 10:11:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('353', '198110262005012001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Rini Widianingsih', '-', '2015-10-08 10:11:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('354', '198110262005012001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013_Rini Widianingsih', '-', '2015-10-08 10:12:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('355', '198110262005012001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Rini Widianingsih', '-', '2015-10-08 10:13:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('356', '198110262005012001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Rini Widianingsih', '-', '2015-10-08 10:15:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('357', '198110262005012001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Rini Widianingsih', '-', '2015-10-08 10:16:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('358', '198110262005012001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Rini Widianingsih', '-', '2015-10-08 10:17:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('359', '198110262005012001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Rini Widianingsih', '-', '2015-10-08 10:18:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('360', '198110262005012001', 'SK_PNS_2006.pdf', 'SK_PNS_2006 Rini Widianingsih', '-', '2015-10-08 10:18:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('361', '195402231987031003', 'KARPEG_131662039.pdf', 'KARPEG Saras Supeno', '-', '2015-10-08 10:19:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('362', '195402231987031003', 'NIP BARU_195402231987031003.pdf', 'NIP BARU Saras Supeno', '-', '2015-10-08 10:20:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('363', '195402231987031003', 'SK_CPNS_1987.pdf', 'SK_CPNS_1987 Saras Supeno', '-', '2015-10-08 10:20:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('364', '195402231987031003', 'SK_LEKTOR_IIIc_2001.pdf', 'SK_LEKTOR_IIIc_2001 Saras Supeno', '-', '2015-10-08 10:21:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('365', '195402231987031003', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_2013 Saras Supeno', '-', '2015-10-08 10:22:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('366', '195402231987031003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Saras Supeno', '-', '2015-10-08 10:23:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('367', '195402231987031003', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Saras Supeno', '-', '2015-10-08 10:24:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('368', '195402231987031003', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Saras Supeno', '-', '2015-10-08 10:25:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('369', '195402231987031003', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Saras Supeno', '-', '2015-10-08 10:26:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('370', '195402231987031003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Saras Supeno', '-', '2015-10-08 10:27:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('371', '195402231987031003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Saras Supeno', '-', '2015-10-08 10:27:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('372', '195402231987031003', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Saras Supeno', '-', '2015-10-08 10:29:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('373', '195402231987031003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Saras Supeno', '-', '2015-10-08 10:30:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('374', '195402231987031003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Saras Supeno', '-', '2015-10-08 10:30:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('375', '195402231987031003', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Saras Supeno', '-', '2015-10-08 10:32:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('376', '195402231987031003', 'SK_PNS_1988.pdf', 'SK_PNS_1988 Saras Supeno', '-', '2015-10-08 10:33:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('377', '195402231987031003', 'SK_PNS_LAMPIRAN_1988.pdf', 'SK_PNS_LAMPIRAN_1988 Saras Supeno', '-', '2015-10-08 10:33:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('378', '195402231987031003', 'SK_PNS_LAMPIRAN_1988.pdf', 'SK_PNS_LAMPIRAN_1988 Saras Supeno', '-', '2015-10-08 10:34:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('379', '197104302000032002', 'KARPEG_132257745.pdf', 'KARPEG Siti Maghfiroh', '-', '2015-10-08 10:36:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('380', '197104302000032002', 'NIP BARU_197104302000032002.pdf', 'NIP BARU Siti Maghfiroh', '-', '2015-10-08 10:36:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('381', '197104302000032002', 'SK_CPNS_2000.pdf', 'SK_CPNS_2000 Siti Maghfiroh', '-', '2015-10-08 10:37:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('382', '197104302000032002', 'SK_GAJI POKOK__IIIa_2006.pdf', 'SK_GAJI POKOK_IIIa_2006 Siti Maghfiroh', '-', '2015-10-08 10:37:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('383', '197104302000032002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Siti Maghfiroh', '-', '2015-10-08 10:38:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('384', '197104302000032002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Siti Maghfiroh', '-', '2015-10-08 10:39:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('385', '197104302000032002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Siti Maghfiroh', '-', '2015-10-08 10:40:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('386', '197104302000032002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Siti Maghfiroh', '-', '2015-10-08 10:41:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('387', '197104302000032002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Siti Maghfiroh', '-', '2015-10-08 10:42:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('388', '197104302000032002', 'SK_PNS_2001.pdf', 'SK_PNS_2001 Siti Maghfiroh', '-', '2015-10-08 10:43:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('389', '196106091987031003', 'KARPEG_131662012.pdf', 'KARPEG Sugiarto', '-', '2015-10-08 10:46:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('390', '196106091987031003', 'NIP BARU_196106091987031003.pdf', 'NIP BARU Sugiarto', '-', '2015-10-08 10:47:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('391', '196106091987031003', 'SK_CPNS_1987.pdf', 'SK_CPNS_1987 Sugiarto', '-', '2015-10-08 10:47:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('392', '196106091987031003', 'SK_LEKTOR_IIId_2001.pdf', 'SK_LEKTOR_IIId_2001 Sugiarto', '-', '2015-10-08 10:48:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('393', '196106091987031003', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Sugiarto', '-', '2015-10-08 10:49:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('394', '196106091987031003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sugiarto', '-', '2015-10-08 10:50:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('395', '196106091987031003', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Sugiarto', '-', '2015-10-08 10:51:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('396', '196106091987031003', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Sugiarto', '-', '2015-10-08 10:52:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('397', '196106091987031003', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sugiarto', '-', '2015-10-08 10:53:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('398', '196106091987031003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sugiarto', '-', '2015-10-08 10:54:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('399', '196106091987031003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN SKRIPSI_110_2013 Sugiarto', '-', '2015-10-08 10:55:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('400', '196106091987031003', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sugiarto', '-', '2015-10-08 10:58:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('401', '196106091987031003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sugiarto', '-', '2015-10-08 10:59:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('402', '196106091987031003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Sugiarto', '-', '2015-10-08 11:00:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('403', '196106091987031003', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sugiarto', '-', '2015-10-08 11:01:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('404', '196106091987031003', 'SK_PNS_1988.pdf', 'SK_PNS_1988 Sugiarto', '-', '2015-10-08 11:02:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('405', '195501011988031001', 'KARPEG_131796108.pdf', 'KARPEG Sukirman', '-', '2015-10-08 11:04:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('406', '195501011988031001', 'NIP BARU_195501011988031001.pdf', 'NIP BARU Sukirman', '-', '2015-10-08 11:04:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('407', '195501011988031001', 'SK_LEKTOR MADYA_IIId_2001.pdf', 'SK_LEKTOR_IIId_2001 Sugiarto', '-', '2015-10-08 11:05:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('408', '195501011988031001', 'SK_LEKTOR MADYA_IIId_2001.pdf', 'SK_LEKTOR_IIId_2001 Sukirman', '-', '2015-10-08 11:06:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('409', '195501011988031001', 'SK_M_INTER_S1_GASAL_2013.PDF', 'SK_M_INTER_2013 Sukirman', '-', '2015-10-08 11:07:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('410', '195501011988031001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Sukirman', '-', '2015-10-08 11:08:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('411', '195501011988031001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sukirman', '-', '2015-10-08 11:09:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('412', '195501011988031001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Sukirman', '-', '2015-10-08 11:10:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('413', '195501011988031001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Sukirman', '-', '2015-10-08 11:11:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('414', '195501011988031001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sukirman', '-', '2015-10-08 11:12:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('415', '195501011988031001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sukirman', '-', '2015-10-08 11:13:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('416', '195501011988031001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Sukirman', '-', '2015-10-08 11:14:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('417', '195501011988031001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sukirman', '-', '2015-10-08 11:15:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('418', '195501011988031001', 'SK_PNS_1989.pdf', 'SK_PNS_1989 Sukirman', '-', '2015-10-08 11:15:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('419', '195807271987031002', 'KARPEG_131678890.pdf', 'KARPEG Taufik Hidayat', '-', '2015-10-08 11:17:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('420', '195807271987031002', 'SK_ASISTEN AHLI_IIIb_2001.pdf', 'SK_ASISTEN AHLI_IIIb_2001 Taufik Hidayat', '-', '2015-10-08 11:18:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('421', '195807271987031002', 'SK_CPNS_1987.pdf', 'SK_CPNS_1987 Taufik Hidayat', '-', '2015-10-08 11:18:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('422', '195807271987031002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Taufik Hidayat', '-', '2015-10-08 11:19:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('423', '195807271987031002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Taufik Hidayat', '-', '2015-10-08 11:20:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('424', '195807271987031002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Taufik Hidayat', '-', '2015-10-08 11:21:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('425', '195807271987031002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Taufik Hidayat', '-', '2015-10-08 11:22:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('426', '195807271987031002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Taufik Hidayat', '-', '2015-10-08 11:23:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('427', '195807271987031002', 'SK_PNS_1988.pdf', 'SK_PNS_1988 Taufik Hidayat', '-', '2015-10-08 11:24:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('428', '196704131992032002', 'KARPEG_132002068.pdf', 'KARPEG Triani Arofah', '-', '2015-10-08 11:25:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('429', '196704131992032002', 'NIP BARU_196704131992032002.pdf', 'NIP BARU Triani Arofah', '-', '2015-10-08 11:26:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('430', '196704131992032002', 'SK_CPNS_1992.pdf', 'SK_CPNS_1992 Triani Arofah', '-', '2015-10-08 11:26:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('431', '196704131992032002', 'SK_LEKTOR_IIIc_2004.pdf', 'SK_LEKTOR_IIIc_2004 Triani Arofah', '-', '2015-10-08 11:27:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('432', '196704131992032002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Triani Arofah', '-', '2015-10-08 11:27:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('433', '196704131992032002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Triani Arofah', '-', '2015-10-08 11:29:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('434', '196704131992032002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Triani Arofah', '-', '2015-10-08 11:30:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('435', '196704131992032002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Triani Arofah', '-', '2015-10-08 11:32:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('436', '196704131992032002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Triani Arofah', '-', '2015-10-08 11:33:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('437', '196704131992032002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Triani Arofah', '-', '2015-10-08 11:34:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('438', '196704131992032002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Triani Arofah', '-', '2015-10-08 11:36:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('439', '196704131992032002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Triani Arofah', '-', '2015-10-08 11:38:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('440', '196704131992032002', 'SK_PNS_1993.pdf', 'SK_PNS_1993 Triani Arofah', '-', '2015-10-08 11:39:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('441', '197007142006042001', 'KARPEG_132320547.pdf', 'KARPEG Umi Pratiwi', '-', '2015-10-08 11:40:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('442', '197007142006042001', 'NIP BARU_197007142006042001.pdf', 'NIP BARU Umi Pratiwi', '-', '2015-10-08 11:41:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('443', '197007142006042001', 'SK_CPNS_2006.pdf', 'SK_CPNS_2006 Umi Pratiwi', '-', '2015-10-08 11:41:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('444', '197007142006042001', 'SK_LEKTOR_IIId_2013.pdf', 'SK_LEKTOR_IIId_2013 Umi Pratiwi', '-', '2015-10-08 11:42:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('445', '197007142006042001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_REG_D3_2013 Umi Pratiwi', '-', '2015-10-08 11:42:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('446', '197007142006042001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Umi Pratiwi', '-', '2015-10-08 11:43:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('447', '197007142006042001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Umi Pratiwi', '-', '2015-10-08 11:44:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('448', '197007142006042001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Umi Pratiwi', '-', '2015-10-08 11:45:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('449', '197007142006042001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Umi Pratiwi', '-', '2015-10-08 11:45:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('450', '197007142006042001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Umi Pratiwi', '-', '2015-10-08 11:46:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('451', '197007142006042001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Umi Pratiwi', '-', '2015-10-08 11:48:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('452', '197007142006042001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Umi Pratiwi', '-', '2015-10-08 11:49:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('453', '197007142006042001', 'SK_PNS_2007.pdf', 'SK_PNS_2007 Umi Pratiwi', '-', '2015-10-08 11:50:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('454', '197808152010122001', 'SK_ASISTEN AHLI_IIIb_2012.pdf', 'SK_ASISTEN AHLI_IIIb_2012 Uswatun Hasanah', '-', '2015-10-08 11:54:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('455', '197808152010122001', 'SK_CPNS_2011.pdf', 'SK_CPNS_2011 Uswatun Hasanah', '-', '2015-10-08 11:54:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('456', '197808152010122001', 'SK_M_INTER_S1_GASAL_2013.PDF', 'SK_M_INTER_2013 Uswatun Hasanah', '-', '2015-10-08 11:55:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('457', '197808152010122001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Uswatun Hasanah', '-', '2015-10-08 11:56:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('458', '197808152010122001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Uswatun Hasanah', '-', '2015-10-08 11:57:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('459', '197808152010122001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Uswatun Hasanah', '-', '2015-10-08 11:58:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('460', '197808152010122001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Uswatun Hasanah', '-', '2015-10-08 11:59:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('461', '197808152010122001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Uswatun Hasanah ', '-', '2015-10-08 12:00:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('462', '197808152010122001', 'SK_PNS_2012.pdf', 'SK_PNS_2012 Uswatun Hasanah', '-', '2015-10-08 12:01:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('463', '197308282005011002', 'KARPEG_132315878.pdf', 'KARPEG Wahyudi', '-', '2015-10-08 12:02:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('464', '197308282005011002', 'KARPEG_132315878.pdf', 'KARPEG Wahyudin', '-', '2015-10-08 12:02:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('465', '197308282005011002', 'NIP BARU_197308282005011002.pdf', 'NIP BARU Wahyudin', '-', '2015-10-08 12:03:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('466', '197308282005011002', 'SK_ASISTEN AHLI_IIIa_2009.pdf', 'SK_ASISTEN AHLI_IIIa_2009 Wahyudin', '-', '2015-10-08 12:04:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('467', '197308282005011002', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Wahyudin ', '-', '2015-10-08 12:04:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('468', '197308282005011002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Wahyudin', '-', '2015-10-08 12:05:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('469', '197308282005011002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Wahyudin ', '-', '2015-10-08 12:05:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('470', '197308282005011002', 'SK_PNS_2006.pdf', 'SK_PNS_2006 Wahyudin', '-', '2015-10-08 12:06:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('471', '197711152008121003', 'SK_ASISTEN AHLI_IIIb_2011.pdf', 'SK_ASISTEN AHLI_IIIb_2011 warsidi', '-', '2015-10-08 13:46:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('472', '197711152008121003', 'SK_CPNS_2009.pdf', 'SK_CPNS_2009  Warsidi', '-', '2015-10-08 13:46:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('473', '197711152008121003', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Warsidi', '-', '2015-10-08 13:47:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('474', '197711152008121003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Warsidi', '-', '2015-10-08 13:48:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('475', '197711152008121003', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Warsidi', '-', '2015-10-08 13:49:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('476', '197711152008121003', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Warsidi', '-', '2015-10-08 13:50:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('477', '197711152008121003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Warsidi', '-', '2015-10-08 13:51:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('478', '197711152008121003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Warsidi', '-', '2015-10-08 13:51:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('479', '197711152008121003', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Warsidi', '-', '2015-10-08 13:52:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('480', '197711152008121003', 'SK_PNS_2010.pdf', 'SK_PNS_2010 Warsidi', '-', '2015-10-08 13:53:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('481', '198111252009122004', 'KARPEG_198111252009122004.pdf', 'KARPEG Widyahayu Warmmeswara Kusumastati', '-', '2015-10-08 13:54:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('482', '198111252009122004', 'SK_ASISTEN AHLI_IIIb_2012.pdf', 'SK_ASISTEN AHLI_IIIb_2012 Widyahayu Warmmeswara Kusumastati', '-', '2015-10-08 13:55:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('483', '198111252009122004', 'SK_CPNS_2010.pdf', 'SK_CPNS_2010 Widyahayu Warmmeswara Kusumastati', '-', '2015-10-08 13:56:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('484', '198111252009122004', 'SK_M_REG_S1_GASAL_2013.PDF', 'SK_M_REG_S1_2013 Widyahayu Warmmeswara Kusumastati', '-', '2015-10-08 13:57:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('485', '198111252009122004', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Widyahayu Warmmeswara Kusumastati', '-', '2015-10-08 13:58:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('486', '198111252009122004', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Widyahayu Warmmeswara Kusumastati', '-', '2015-10-08 13:59:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('487', '198111252009122004', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Widyahayu Warmmeswara Kusumastati', '-', '2015-10-08 14:00:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('488', '198111252009122004', 'SK_PNS_2011.pdf', 'SK_PNS_2011 Widyahayu Warmmeswara Kusumastati', '-', '2015-10-08 14:01:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('489', '198207162006042001', 'KARPEG_132317430.pdf', 'KARPEG Wita Ramadhanti', '-', '2015-10-08 14:02:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('490', '198207162006042001', 'SK_CPNS_2006.pdf', 'SK_CPNS_2006 Wita Ramadhanti', '-', '2015-10-08 14:03:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('491', '198207162006042001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Wita Ramadhanti', '-', '2015-10-08 14:04:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('492', '198207162006042001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Wita Ramadhanti', '-', '2015-10-08 14:05:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('493', '198207162006042001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Wita Ramadhanti', '-', '2015-10-08 14:06:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('494', '198207162006042001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Wita Ramadhanti', '-', '2015-10-08 14:07:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('495', '198207162006042001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Wita Ramadhanti', '-', '2015-10-08 14:08:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('496', '198207162006042001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Wita Ramadhanti', '-', '2015-10-08 14:09:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('497', '198207162006042001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Wita Ramadhanti', '-', '2015-10-08 14:11:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('498', '198207162006042001', 'SK_PNS_2007.pdf', 'SK_PNS_2007 Wita Ramadhanti', '-', '2015-10-08 14:11:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('499', '198207162006042001', 'SK_TUNJANGAN DOSEN_ASISTEN AHLI__IIIb_2012.pdf', 'SK_TUNJANGAN DOSEN_ASISTEN_AHLI_2012 Wita Ramadhanti', '-', '2015-10-08 14:13:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('500', '197501152005011004', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Yanuar Eko Restianto', '-', '2015-10-08 14:15:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('501', '197501152005011004', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2013 Yanuar Eko Restianto', '-', '2015-10-08 14:16:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('502', '197501152005011004', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Yanuar Eko Restianto', '-', '2015-10-08 14:17:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('503', '197501152005011004', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Yanuar Eko Restianto', '-', '2015-10-08 14:17:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('504', '197501152005011004', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Yanuar Eko Restianto', '-', '2015-10-08 14:18:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('505', '197501152005011004', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Yanuar Eko Restianto', '-', '2015-10-08 14:19:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('506', '198304142009121004', 'KARPEG_198304142009121004.pdf', 'KARPEG Yudha Aryo Sudibyo ', '-', '2015-10-08 14:20:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('507', '198304142009121004', 'SK_ASISTEN AHLI_IIIb_2012.pdf', 'SK_ASISTEN AHLI_IIIb_2012 Yudha Aryo Sudibyo', '-', '2015-10-08 14:21:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('508', '198304142009121004', 'SK_CPNS_2010.pdf', 'SK_CPNS_2010 Yudha Aryo Sudibyo', '-', '2015-10-08 14:22:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('509', '198304142009121004', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Yudha Aryo Sudibyo', '-', '2015-10-08 14:23:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('510', '198304142009121004', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Yudha Aryo Sudibyo', '-', '2015-10-08 14:24:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('511', '198304142009121004', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Yudha Aryo Sudibyo', '-', '2015-10-08 14:25:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('512', '198304142009121004', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Yudha Aryo Sudibyo', '-', '2015-10-08 14:26:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('513', '198304142009121004', 'SK_PNS_2011.pdf', 'SK_PNS_2011 Yudha Aryo Sudibyo', '-', '2015-10-08 14:26:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('514', '196110311986011001', 'KARPEG.pdf', 'KARPEG Achmad Sudjadi', '-', '2015-10-08 14:30:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('515', '196110311986011001', 'NIP BARU_196110311986011001.pdf', 'NIP BARU Achmad Sudjadi', '-', '2015-10-08 14:31:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('516', '196110311986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Achmad Sudjadi', '-', '2015-10-08 14:31:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('517', '196110311986011001', 'SK_LEKTOR MUDA_IIIc_1994.pdf', 'SK_LEKTOR MUDA_IIIc_1994 Achmad Sudjadi', '-', '2015-10-08 14:32:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('518', '196110311986011001', 'SK_LEKTOR_IIIc_2001.pdf', 'SK_LEKTOR_IIIc_2001 Achmad Sudjadi', '-', '2015-10-08 14:33:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('519', '196110311986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Achmad Sudjadi', '-', '2015-10-08 14:34:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('520', '196110311986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Achmad Sudjadi', '-', '2015-10-08 14:35:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('521', '196110311986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Achmad Sudjadi', '-', '2015-10-08 14:35:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('522', '196110311986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Achmad Sudjadi', '-', '2015-10-08 14:36:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('523', '196110311986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Achmad Sudjadi', '-', '2015-10-08 14:37:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('524', '196110311986011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Achmad Sudjadi', '-', '2015-10-08 14:38:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('525', '196110311986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Achmad Sudjati', '-', '2015-10-08 14:39:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('526', '196110311986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Achmad Sudjadi', '-', '2015-10-08 14:40:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('527', '196110311986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Achmad Sudjadi', '-', '2015-10-08 14:41:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('528', '196001311989031002', 'KARPEG_131856948.pdf', 'KARPEG Ade Banani', '-', '2015-10-08 14:42:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('529', '196001311989031002', 'SK_CPNS_1989.pdf', 'SK_CPNS_1989 Ade Banani', '-', '2015-10-08 14:43:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('530', '196001311989031002', 'SK_LEKTOR KEPALA_IVa_2007.pdf', 'SK_LEKTOR KEPALA_2007 Ade Banani', '-', '2015-10-08 14:44:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('531', '196001311989031002', 'SK_LEKTOR_IIId_2001.pdf', 'SK_LEKTOR_IIId_2001 Ade Banani', '-', '2015-10-08 14:44:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('532', '196001311989031002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Ade Banani', '-', '2015-10-08 14:45:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('533', '196001311989031002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Ade Banani', '-', '2015-10-08 14:46:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('534', '196001311989031002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Ade Banani', '-', '2015-10-08 14:47:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('535', '196001311989031002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Ade Banani', '-', '2015-10-08 14:48:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('536', '196001311989031002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Ade Banani', '-', '2015-10-08 14:48:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('537', '196001311989031002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Ade Banani', '-', '2015-10-08 14:49:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('538', '196001311989031002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Ade Banani', '-', '2015-10-08 14:50:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('539', '196001311989031002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Ade Banani', '-', '2015-10-08 14:51:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('540', '196001311989031002', 'SK_PNS_1990.pdf', 'SK_PNS_1990 Ade Banani', '-', '2015-10-08 14:51:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('541', '197909302009122002', 'KARPEG_197909302009122002.pdf', 'KARPEG Ade Irma Anggaraeni', '-', '2015-10-08 14:53:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('542', '197909302009122002', 'SK_ASISTEN AHLI_IIIb_2012.pdf', 'SK_ASISTEN AHLI_IIIb_2012 Ade Irma Anggaraeni', '-', '2015-10-08 14:54:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('543', '197909302009122002', 'SK_CPNS_2010.pdf', 'SK_CPNS_2010 Ade Irma Anggaraeni ', '-', '2015-10-08 14:55:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('544', '197909302009122002', 'SK_PNS_2011.pdf', 'SK_PNS_2011 Ade Irma Anggaraeni', '-', '2015-10-08 14:55:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('545', '198106232006041001', 'KARPEG_132317428.pdf', 'KARPEG Adi Indrayanto', '-', '2015-10-08 14:58:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('546', '198106232006041001', 'SK_ASISTEN AHLI_IIIa_2009.pdf', 'SK_Asisten AHLI_IIIa_2009 Adi Indrayanto', '-', '2015-10-08 14:59:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('547', '198106232006041001', 'SK_ASISTEN AHLI_IIIb_2010.pdf', 'SK_ASISTEN AHLI_IIIb_2010 Adi Indriyanto', '-', '2015-10-08 15:00:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('548', '198106232006041001', 'SK_CPNS_2006.pdf', 'SK_CPNS_2006 Adi Indriyanto', '-', '2015-10-08 15:01:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('549', '198106232006041001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Adi Indriyanto', '-', '2015-10-08 15:02:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('550', '198106232006041001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Adi Indrayanto', '-', '2015-10-08 15:03:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('551', '198106232006041001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Adi Indrayanto', '-', '2015-10-08 15:04:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('552', '198106232006041001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Adi Indrayanto', '-', '2015-10-08 15:05:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('553', '198106232006041001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Adi Indrayanto', '-', '2015-10-08 15:07:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('554', '198106232006041001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Adi Indrayanto', '-', '2015-10-08 15:08:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('555', '198106232006041001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Adi Indriyanto', '-', '2015-10-08 15:09:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('556', '198106232006041001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Adi Indrayanto', '-', '2015-10-08 15:11:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('557', '198106232006041001', 'SK_PNS_2007.pdf', 'SK_PNS_2007 Adi Indrayanto ', '-', '2015-10-08 15:12:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('558', '198106232006041001', 'ST_Skripsi_SARAH.FAUZIAH_C1K010045.pdf', 'ST_Skripsi Adi Indrayanto', '-', '2015-10-08 15:13:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('559', '196108071986011001', 'KARPEG_131572332.pdf', 'KARPEG Agus Suroso', '-', '2015-10-08 15:22:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('560', '196108071986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Agus Suroso', '-', '2015-10-08 15:23:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('561', '196108071986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Agus Suroso', '-', '2015-10-08 15:25:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('562', '196108071986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_2013 Agus Suroso', '-', '2015-10-08 15:32:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('563', '196108071986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Agus Suroso', '-', '2015-10-08 15:32:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('564', '196108071986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', null, null, '2015-10-08 15:33:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('565', '196108071986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Agus Suroso', '-', '2015-10-08 15:33:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('566', '196108071986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Agus Suroso', '-', '2015-10-08 15:35:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('567', '196108071986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Agus Suroso', '-', '2015-10-08 15:36:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('568', '196108071986011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Agus Suroso', '-', '2015-10-08 15:37:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('569', '196108071986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', null, null, '2015-10-08 15:38:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('570', '196108071986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Agus Suroso', '-', '2015-10-08 15:38:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('571', '196108071986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Agus Suroso', '-', '2015-10-08 15:38:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('572', '196108071986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Agus Suroso', '-', '2015-10-08 15:39:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('573', '196108071986011001', 'ST_Skripsi_ADITYA.TRI.SAPUTRA_C1K008050.pdf', 'ST_SKRIPSI_ADITYA.TRI.SAPUTRA Agus Suroso', '-', '2015-10-08 15:41:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('574', '196108071986011001', 'SK_GURU BESAR_IVa_2010.pdf', 'SK_GURU BESAR_2010 Agus Suroso', '-', '2015-10-08 15:42:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('575', '196108071986011001', 'SK_GURU BESAR_IVc_2013.pdf', 'SK_GURU BESAR_2013 Agus Suroso', '-', '2015-10-08 15:42:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('576', '198310122009122003', 'KARPEG_198310122009122003.pdf', 'KARPEG Alisa Tri Nawarini', '-', '2015-10-08 15:44:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('577', '198310122009122003', 'SK_ASISTEN AHLI_IIIb_2012.pdf', 'SK_ASISTEN AHLI_IIIb_2012 Alisa Tri Nawarini', '-', '2015-10-08 15:45:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('578', '198310122009122003', 'SK_CPNS_2010.pdf', 'SK_CPNS_2010 Alisa Tri Nawarini', '-', '2015-10-08 15:46:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('579', '198310122009122003', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_2013 Alisa Tri Nawarini', '-', '2015-10-08 15:47:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('580', '198310122009122003', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Alisa Tri Nawarini', '-', '2015-10-08 15:47:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('581', '198310122009122003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Alisa Tri Nawarini', '-', '2015-10-08 15:48:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('582', '198310122009122003', 'SK_PNS_2011.pdf', 'SK_PNS_2011 Alisa Tri Nawarini', '-', '2015-10-08 15:49:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('583', '197701072008121001', 'KARPEG_197701072008121001.pdf', 'KARPEG Ary Yunanto', '-', '2015-10-08 15:50:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('584', '197701072008121001', 'SK_ASISTEN AHLI_IIIb_2011.pdf', 'SK_ASISTEN AHLI_IIIb_2011 Ary Yunanto', '-', '2015-10-08 15:51:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('585', '197701072008121001', 'SK_CPNS_2009.pdf', 'SK_CPNS_2009 Ary Yunanto', '-', '2015-10-08 15:52:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('586', '197701072008121001', 'SK_PNS_2010.pdf', 'SK_PNS_2010 Ary Yunanto', '-', '2015-10-08 15:53:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('587', '195906021985031002', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_2001 Bambang Sunarko', '-', '2015-10-08 15:55:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('588', '195906021985031002', 'SK_LEKTOR_IIId_1998.pdf', 'SK_LEKTOR_IIId_1998 Bambang Sunarko', '-', '2015-10-08 15:56:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('589', '195906021985031002', 'SK_LEKTOR_IVa_1998.pdf', 'SK_LEKTOR_IVa_1998 Bambang Sunarko', '-', '2015-10-08 15:56:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('590', '195906021985031002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Bambang Sunarko', '-', '2015-10-08 15:57:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('591', '195906021985031002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Bambang Sunarko', '-', '2015-10-08 15:58:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('592', '195906021985031002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Bambang Sunarko', '-', '2015-10-08 15:59:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('593', '195906021985031002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Bambang Sunarko', '-', '2015-10-08 15:59:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('594', '195906021985031002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Bambang Sunarko', '-', '2015-10-08 16:00:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('595', '195906021985031002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Bambang Sunarko', '-', '2015-10-08 16:01:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('596', '195906021985031002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Bambang Sunarko', '-', '2015-10-08 16:02:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('597', '195906021985031002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Bambang Sunarko', '-', '2015-10-08 16:02:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('598', '195906021985031002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Bambang Sunarko', '-', '2015-10-08 16:03:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('599', '195906021985031002', 'SK_PNS_1986.pdf', 'SK_PNS_1986 Bambang Sunarko', '-', '2015-10-08 16:04:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('600', '197610122009121002', 'KARPEG_197610122009121002.pdf', 'KARPEG Daryono', '-', '2015-10-09 07:55:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('601', '197610122009121002', 'SK_ASISTEN AHLI_IIIb_2012.pdf', 'SK_ASISTEN AHLI IIIb_2012 Daryono', '-', '2015-10-09 07:56:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('602', '197610122009121002', 'SK_CPNS_2010.pdf', 'SK_CPNS_2010 Daryono', '-', '2015-10-09 07:57:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('603', '197610122009121002', 'SK_PNS_2011.pdf', 'SK_PNS_2011 Daryono', '-', '2015-10-09 07:57:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('604', '197610122009121002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Daryono ', '-', '2015-10-09 07:58:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('605', '197610122009121002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Daryono', '-', '2015-10-09 07:59:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('606', '197610122009121002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Daryono', '-', '2015-10-09 08:00:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('607', '197701242005012004', 'KARPEG_132307965.pdf', 'KARPEG Devani Laksmi Indyastuti', '-', '2015-10-09 08:02:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('608', '197701242005012004', 'SK_ASISTEN AHLI_IIIa_2006.pdf', 'SK_ASISTEN AHLI_IIIa_2006 Devani Laksmi Indyastuti', '-', '2015-10-09 08:03:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('609', '197701242005012004', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Devani Laksmi Indyastuti', '-', '2015-10-09 08:04:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('610', '197701242005012004', 'SK_PNS_2006.pdf', 'SK_PNS_2006 Devani Laksmi Indyastuti', '-', '2015-10-09 08:05:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('611', '198110162003121003', 'NIP_BARU.jpg', 'NIP BARU Dian Purnomo Jati', '-', '2015-10-09 08:07:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('612', '198110162003121003', 'KARPEG_132306638.pdf', 'KARPEG Dian Purnomo Jati', '-', '2015-10-09 08:07:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('613', '198110162003121003', 'SK_CPNS_2004.pdf', 'SK_CPNS_2004 Dian Purnomo Jati', '-', '2015-10-09 08:08:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('614', '198110162003121003', 'SK_LEKTOR_IIIa_2013.pdf', 'SK_LEKTOR_IIIa_2013 Dian Purnomo Jati', '-', '2015-10-09 08:09:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('615', '198110162003121003', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Dian Purnomo Jati', '-', '2015-10-09 08:09:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('616', '198110162003121003', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Dian Purnomo Jati', '-', '2015-10-09 08:10:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('617', '198110162003121003', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Dian Purnomo Jati', '-', '2015-10-09 08:11:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('618', '198110162003121003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Dian Purnomo Jati', '-', '2015-10-09 08:12:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('619', '198110162003121003', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Dian Purnomo Jati', '-', '2015-10-09 08:14:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('620', '198110162003121003', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Dian Purnomo Jati', '-', '2015-10-09 08:15:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('621', '198110162003121003', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Dian Purnomo Jati', '-', '2015-10-09 08:15:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('622', '198110162003121003', 'SK_PNS_2005.pdf', 'SK_PNS_2005 Dian Purnomo Jati', '-', '2015-10-09 08:16:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('623', '197501302000122004', 'KARPEG_132283624.pdf', 'KARPEG Dwita Darmawati', '-', '2015-10-09 08:18:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('624', '197501302000122004', 'SK_CPNS_2000.pdf', 'SK_CPNS_2000 Dwita Darmawati', '-', '2015-10-09 08:19:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('625', '197501302000122004', 'SK_LEKTOR_IIIb_2010.pdf', 'SK_LEKTOR_IIIb_2010 Dwita Darmawati', '-', '2015-10-09 08:19:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('626', '197501302000122004', 'SK_LEKTOR_IIIc_2010.pdf', 'SK_LEKTOR_IIIc_2010 Dwita Darmawati', '-', '2015-10-09 08:20:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('627', '197501302000122004', 'SK_PNS_2002.pdf', 'SK_PNS_2002 Dwita Darmawati', '-', '2015-10-09 08:21:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('628', '197901172006042003', 'KARPEG_132317300.pdf', 'KARPEG Ekaningtyas Widiastuti', '-', '2015-10-09 08:23:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('629', '197901172006042003', 'SK_CPNS_2006.pdf', 'SK_CPNS_2006 Ekaningtyas Widiastuti', '-', '2015-10-09 08:24:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('630', '197901172006042003', 'SK_LEKTOR_IIIa_2013.pdf', 'SK_LEKTOR_IIIa_2013 Ekaningtyas Widiastuti', '-', '2015-10-09 08:25:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('631', '197901172006042003', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2103 Ekaningtyas Widiastuti', '-', '2015-10-09 08:26:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('632', '197901172006042003', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Ekaningtyas Widiastuti', '-', '2015-10-09 08:27:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('633', '197901172006042003', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Ekaningtyas Widiastuti', '-', '2015-10-09 08:28:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('634', '197901172006042003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Ekaningtyas Widiastuti', '-', '2015-10-09 08:31:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('635', '197901172006042003', 'SK_PNS_2007.pdf', 'SK_PNS_2007 Ekaningtyas Widiastuti', '-', '2015-10-09 08:32:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('636', '195502261984121001', 'KARPEG_131422705.pdf', 'KARPEG Eling Purwanto Jati', '-', '2015-10-09 08:33:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('637', '195502261984121001', 'SK_CPNS_1985.pdf', 'SK_CPNS_1985 Eling Purwanto Jati', '-', '2015-10-09 08:33:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('638', '195502261984121001', 'SK_KENAIKAN PANGKAT_IVb_2001.pdf', 'SK_KENAIKAN PANGKAT_IVb_2001 Eling Purwanto Jati', '-', '2015-10-09 08:34:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('639', '195502261984121001', 'SK_LEKTOR_IVb_2012.pdf', 'SK_LEKTOR_IVb_2012 Eling Purwanto Jati', '-', '2015-10-09 08:35:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('640', '195502261984121001', 'SK_LIMPAH DOSEN_2005.pdf', 'SK_LIMPAH DOSEN_2005 Eling Purwanto Jati', '-', '2015-10-09 08:36:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('641', '195502261984121001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Eling Purwanto Jati', '-', '2015-10-09 08:37:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('642', '195502261984121001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Eling Purwanto Jati', '-', '2015-10-09 08:37:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('643', '195502261984121001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Eling Purwanto Jati', '-', '2015-10-09 08:40:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('644', '195502261984121001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Eling Purwanto Jati', '-', '2015-10-09 08:41:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('645', '195502261984121001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Eling Purwanto Jati ', '-', '2015-10-09 08:42:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('646', '195502261984121001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Eling Purwanto Jati', '-', '2015-10-09 08:44:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('647', '195502261984121001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Eling Purwanto Jati', '-', '2015-10-09 08:45:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('648', '195502261984121001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2103 Eling Purwanto Jati', '-', '2015-10-09 08:47:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('649', '195502261984121001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Eling Purwanto Jati', '-', '2015-10-09 08:48:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('650', '195502261984121001', 'SK_PNS_1986.pdf', 'SK_PNS_1986 Eling Purwanto Jati', '-', '2015-10-09 08:49:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('651', '195407271981031005', 'KARPEG_130936605.pdf', 'KARPEG Haryadi', '-', '2015-10-09 08:50:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('652', '195407271981031005', 'NIP BARU_195407271981031005.pdf', 'NIP BARU Haryadi', '-', '2015-10-09 08:51:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('653', '195407271981031005', 'NPWP_HARYADI.jpg', 'NPWP_Haryadi', '-', '2015-10-09 08:51:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('654', '195407271981031005', 'SK_CPNS_1981.pdf', 'SK_CPNS_1981 Haryadi', '-', '2015-10-09 08:52:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('655', '195407271981031005', 'SK_LEKTOR KEPALA MADYA_IVa_1998.pdf', 'SK_LEKTOR KEPALA MADYA_1998 Haryadi', '', '2015-10-09 08:52:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('656', '195407271981031005', 'SK_LEKTOR KEPALA MADYA_IVb1999.pdf', 'SK_LEKTOR KEPALA MADYA_1999 Haryadi', '-', '2015-10-09 08:53:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('657', '195407271981031005', 'SK_LEKTOR KEPALA_IVb_2001.pdf', 'SK_LEKTOR KEPALA_IVb_2001 Haryadi', '-', '2015-10-09 08:54:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('658', '195407271981031005', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Haryadi', '-', '2015-10-09 08:55:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('659', '195407271981031005', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', null, null, '2015-10-09 09:01:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('660', '195407271981031005', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Haryadi', '-', '2015-10-09 09:03:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('661', '195407271981031005', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Haryadi', '-', '2015-10-09 09:09:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('662', '195407271981031005', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Haryadi', '-', '2015-10-09 09:10:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('663', '195407271981031005', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Haryadi', '-', '2015-10-09 09:11:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('664', '195407271981031005', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Haryadi', '-', '2015-10-09 09:13:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('665', '195407271981031005', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Haryadi', '-', '2015-10-09 09:15:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('666', '195407271981031005', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Haryadi', '-', '2015-10-09 09:18:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('667', '195407271981031005', 'SK_PNS_1982.pdf', 'SK_PNS_1982 Haryadi', '-', '2015-10-09 09:18:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('668', '198502182009122008', 'SK_ASISTEN AHLI_IIIb_2012.pdf', 'SK_ASISTEN AHLI_IIIb_2012 Intan Shaferi', '-', '2015-10-09 09:20:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('669', '198502182009122008', 'SK_CPNS_2010.pdf', null, null, '2015-10-09 09:21:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('670', '198502182009122008', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Intan Shaferi', '-', '2015-10-09 09:24:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('671', '195407271981031005', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', null, null, '2015-10-09 09:25:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('672', '198502182009122008', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Intan Shaferi', '-', '2015-10-09 09:25:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('673', '198502182009122008', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Intan Shaferi', '-', '2015-10-09 09:26:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('674', '198502182009122008', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Intan Shaferi', '-', '2015-10-09 09:27:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('675', '198502182009122008', 'SK_PNS_2011.pdf', 'SK_PNS_2011 Intan Shaferi', '-', '2015-10-09 09:28:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('676', '198502182009122008', 'ijazah S1-INTAN SHAFERI.jpg', 'IJAZAH S1_Intan Shaferi', '-', '2015-10-09 09:29:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('677', '198502182009122008', 'ijazah S2-INTAN SHAFERI.jpg', 'IJAZAH S2 Intan Shaferi', '-', '2015-10-09 09:30:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('678', '195809181986011001', 'KARPEG_131572330.pdf', 'KARPEG Jarwono', '-', '2015-10-09 09:31:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('679', '195809181986011001', 'KARPEG_131572330.pdf', 'KARPEG Jaryono', '-', '2015-10-09 09:31:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('680', '195809181986011001', 'NIP BARU_195809181986011001.pdf', 'NIP BARU Jaryono', '-', '2015-10-09 09:32:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('681', '195809181986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Jaryono', '-', '2015-10-09 09:33:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('682', '195809181986011001', 'SK_LEKTOR_IIIc_2001.pdf', 'SK_LEKTOR_IIIc_2001 Jaryono', '-', '2015-10-09 09:33:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('683', '195809181986011001', 'SK_LEKTOR_IIId_2008.pdf', 'SK_LEKTOR_IIId_2008 Jaryono', '-', '2015-10-09 09:34:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('684', '195809181986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Jaryono', '-', '2015-10-09 09:35:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('685', '195809181986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Jaryono', '-', '2015-10-09 09:35:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('686', '195809181986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Jaryono', '-', '2015-10-09 09:36:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('687', '195809181986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', null, null, '2015-10-09 09:37:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('688', '195809181986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Jaryono', '-', '2015-10-09 09:38:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('689', '195809181986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Jaryono', '-', '2015-10-09 09:38:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('690', '195809181986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Jaryono', '-', '2015-10-09 09:40:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('691', '195809181986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Jaryono', '-', '2015-10-09 09:41:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('692', '195809181986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Jaryono', '-', '2015-10-09 09:42:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('693', '195809181986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Jaryono', '-', '2015-10-09 09:42:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('694', '195305291982021001', 'KARPEG_131102515.pdf', 'KARPEG Karsidi', '-', '2015-10-09 09:44:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('695', '195305291982021001', 'NIP BARU_195305291982021001.pdf', 'NIP BARU Karsidi ', '-', '2015-10-09 09:44:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('696', '195305291982021001', 'SK_CPNS_1982.pdf', 'SK_CPNS_1982 Karsidi', '-', '2015-10-09 09:45:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('697', '195305291982021001', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_2001 Karsidi', '-', '2015-10-09 09:46:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('698', '195305291982021001', 'SK_LEKTOR_IIId_1996.pdf', 'SK_LEKTOR_IIId_1996', '-', '2015-10-09 09:46:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('699', '195305291982021001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Karsidi', '-', '2015-10-09 09:47:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('700', '195305291982021001', 'SK_M_REG_D3_1_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Karsidi', '-', '2015-10-09 09:49:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('701', '195305291982021001', 'SK_M_REG_D3_2_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Karsidi', '-', '2015-10-09 09:50:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('702', '195305291982021001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Karsidi', '-', '2015-10-09 09:50:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('703', '195305291982021001', 'SK_PNS_1983.pdf', 'SK_PNS_1983 Karsidi', '-', '2015-10-09 09:51:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('704', '197802122010012002', 'KARPEG_19780212201022002.pdf', 'KARPEG Lusi Suwandani', '-', '2015-10-09 09:52:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('705', '197802122010012002', 'SK_ASISTEN AHLI_IIIb_2012.pdf', 'SK_ASISTEN AHLI_IIIb_2012 Lusi Suwandani', '-', '2015-10-09 09:53:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('706', '197802122010012002', 'SK_CPNS_2011.pdf', 'SK_CPNS_2011 Lusi Suwandani', '', '2015-10-09 09:53:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('707', '197802122010012002', 'SK_CPNS_2011.pdf', 'SK_CPNS_2011 Lusi Suwandani', '-', '2015-10-09 09:54:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('708', '197802122010012002', 'SK_PNS_2012.pdf', 'SK_PNS_2012 Lusi Suwandani', '-', '2015-10-09 09:54:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('709', '197704102006041001', 'KARPEG_132317416.pdf', 'KARPEG Najmudin', '-', '2015-10-09 09:56:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('710', '197704102006041001', 'SK_CPNS_2006.pdf', 'SK_CPNS_2006 Najmudin', '-', '2015-10-09 09:57:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('711', '197704102006041001', 'SK_LEKTOR_IIIb_2011.pdf', 'SK_LEKTOR_IIIb_2011 Najmudin', '-', '2015-10-09 09:58:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('712', '197704102006041001', 'SK_LEKTOR_IIId_2013.pdf', 'SK_LEKTOR_IIId_2013 Najmudin', '-', '2015-10-09 09:58:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('713', '197704102006041001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Najmudin', '-', '2015-10-09 09:59:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('714', '197704102006041001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Najmudin', '-', '2015-10-09 09:59:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('715', '197704102006041001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Najmudin', '-', '2015-10-09 10:00:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('716', '197704102006041001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Najmudin', '-', '2015-10-09 10:01:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('717', '197704102006041001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Najmudin', '-', '2015-10-09 10:03:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('718', '197704102006041001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Najmudin', '-', '2015-10-09 10:04:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('719', '197704102006041001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Najmudin', '-', '2015-10-09 10:05:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('720', '197704102006041001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Najmudin', '-', '2015-10-09 10:08:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('721', '197704102006041001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Najmudin', '-', '2015-10-09 10:09:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('722', '197704102006041001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Najmudin', '-', '2015-10-09 10:12:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('723', '197704102006041001', 'SK_PNS_2007.pdf', 'SK_PNS_2007 Najmudin', '-', '2015-10-09 10:12:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('724', '196003301985031006', 'KARPEG_131474215.pdf', 'KARPEG Pramono Hari Adi', '-', '2015-10-09 10:14:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('725', '196003301985031006', 'SK_CPNS_1985.pdf', 'SK_CPNS_1985 Pramono Hari Adi', '-', '2015-10-09 10:15:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('726', '196003301985031006', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_2001 Pramono Hari Adi', '-', '2015-10-09 10:15:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('727', '196003301985031006', 'SK_LEKTOR_IIId_1999.pdf', 'SK_LEKTOR_IIId_1999 Pramono Hari Adi', '-', '2015-10-09 10:16:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('728', '196003301985031006', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_INTER_S1_2013 Pramono Hari Adi', '-', '2015-10-09 10:17:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('729', '196003301985031006', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Pramono Hari Adi', '-', '2015-10-09 10:18:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('730', '196003301985031006', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Pramono Hari Adi', '-', '2015-10-09 10:20:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('731', '196003301985031006', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Pramono Hari Adi', '-', '2015-10-09 10:21:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('732', '196003301985031006', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Pramono Hari Adi', '-', '2015-10-09 10:22:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('733', '196003301985031006', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Pramono Hari Adi', '-', '2015-10-09 10:23:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('734', '196003301985031006', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Pramono Hari Adi', '-', '2015-10-09 10:25:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('735', '196003301985031006', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2103 Pramono Hari Adi', '-', '2015-10-09 10:26:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('736', '196003301985031006', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Pramono Hari Adi', '-', '2015-10-09 10:28:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('737', '196003301985031006', 'SK_PNS_1986.pdf', 'SK_PNS_1986 Pramono Hari Adi', '-', '2015-10-09 10:29:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('738', '196003301985031006', 'ST_Skripsi_MAKRUF.FATURAHMAN_C1K009043.pdf', 'ST_SKRIPSI_MAKRUF.FATHURAHMAN Pramono Hari Adi', '-', '2015-10-09 10:31:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('739', '196003301985031006', 'ST_Skripsi_SARAH.FAUZIAH_C1K010045.pdf', 'ST_SKRIPSI_SARAH_FAUZIAH Pramono Hari Adi', '-', '2015-10-09 10:32:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('740', '197808242005011003', 'KARPEG_132307079.pdf', 'KARPEG Rahab', '-', '2015-10-09 10:33:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('741', '197808242005011003', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Rahab', '-', '2015-10-09 10:33:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('742', '197808242005011003', 'SK_LEKTOR_IIIa_2009.pdf', 'SK_LEKTOR_IIIa_2009 Rahab', '-', '2015-10-09 10:34:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('743', '197808242005011003', 'SK_LEKTOR_IIIc_2012.pdf', 'SK_LEKTOR_IIIc_2012 Rahab', '-', '2015-10-09 10:35:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('744', '197808242005011003', 'SK_PNS_2006.pdf', 'SK_PNS_2006 Rahab', '-', '2015-10-09 10:35:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('745', '197912152006051002', 'KARPEG_132317557.pdf', 'KARPEG Ratno Purnomo', '-', '2015-10-09 10:36:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('746', '197912152006051002', 'SK_ASISTEN AHLI_IIIb_2008.pdf', 'SK_ASISTEN AHLI_IIIb_2008 Ratno Purnomo', '-', '2015-10-09 10:37:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('747', '197912152006051002', 'SK_CPNS_2006.pdf', 'SK_CPNS_2006 Ratno Purnomo', '-', '2015-10-09 10:37:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('748', '197912152006051002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Ratno Purnomo', '-', '2015-10-09 10:38:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('749', '197912152006051002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Ratno Purnomo', '-', '2015-10-09 10:40:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('750', '197912152006051002', 'SK_PNS_2007.pdf', 'SK_PNS_2007 Ratno Purnomo-', '-', '2015-10-09 10:41:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('751', '197402192005011001', 'KARPEG_132307961.pdf', 'KARPEG Refius Pradipta Setyanto', '-', '2015-10-12 08:11:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('752', '197402192005011001', 'SK_ASISTEN AHLI_IIIa_2007.pdf', 'SK_ASISTEN AHLI_IIIa_2007 Refius Pradipta Setyanto', '-', '2015-10-12 08:12:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('753', '197402192005011001', 'SK_ASISTEN AHLI_IIIb_2011.pdf', 'SK_ASISTEN AHLI_IIIb_2011 Refius Pradipta Setyanto', '-', '2015-10-12 08:13:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('754', '197402192005011001', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Refius Pradipta Setyanto', '-', '2015-10-12 08:13:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('755', '197402192005011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Refius Pradipta Setyanto', '-', '2015-10-12 08:15:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('756', '197402192005011001', 'SK_PNS_2006.pdf', 'SK_PNS_2006 Refius Pradipta Setyanto', '-', '2015-10-12 08:18:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('757', '196707051997022001', 'KARPEG_132163992.pdf', 'KARPEG Retno Widuri', '-', '2015-10-12 08:19:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('758', '196707051997022001', 'SK_CPNS_1997.pdf', null, null, '2015-10-12 08:19:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('759', '196707051997022001', 'SK_CPNS_1997.pdf', 'SK_CPNS_1997 Retno Widuri', '-', '2015-10-12 08:19:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('760', '196707051997022001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL Retno Widuri', '-', '2015-10-12 08:26:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('761', '196707051997022001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Retno Widuri', '-', '2015-10-12 08:26:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('762', '196707051997022001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Retno Widuri', '-', '2015-10-12 08:27:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('763', '196707051997022001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Retno Widuri', '-', '2015-10-12 08:29:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('764', '196707051997022001', 'SK_PNS_1998.pdf', 'SK_PNS_1998 Retno Widuri', '-', '2015-10-12 08:30:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('765', '198211142010121007', 'SK_CPNS_2011.pdf', 'SK_CPNS_2011 Rio Dhani Laksana', '-', '2015-10-12 08:32:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('766', '198211142010121007', 'SK_PNS_2012.pdf', 'SK_PNS_2012 Rio Dhani Laksana', '-', '2015-10-12 08:33:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('767', '198211142010121007', 'SK_ASISTEN AHLI_IIIb_2013.pdf', null, null, '2015-10-12 08:34:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('768', '198211142010121007', 'SK_ASISTEN AHLI_IIIb_2013.pdf', 'SK_ASISTEN AHLI_IIIb_2013 Rio Dhani Laksana', '-', '2015-10-12 08:34:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('769', '195305111986011001', 'KARPEG_131572335.pdf', 'KARPEG Riswan', '-', '2015-10-12 08:35:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('770', '195305111986011001', 'NIP BARU_195305111986011001.pdf', 'NIP BARU Riswan', '-', '2015-10-12 08:36:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('771', '195305111986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Riswan', '-', '2015-10-12 08:36:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('772', '195305111986011001', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_IVa_2001 Riswan', '-', '2015-10-12 08:37:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('773', '195305111986011001', 'SK_LEKTOR KEPALA_IVc_2007.pdf', 'SK_LEKTOR KEPALA_IVc_2007 Riswan', '-', '2015-10-12 08:38:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('774', '195305111986011001', 'SK_LEKTOR_IIId_1998.pdf', 'SK_LEKTOR_IIId_1998 Riswan', '-', '2015-10-12 08:39:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('775', '195305111986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Riswan', '-', '2015-10-12 08:40:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('776', '195305111986011001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Riswan', '-', '2015-10-12 08:40:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('777', '196707051997022001', 'SK_LEKTOR_IIIa_2013.pdf', null, null, '2015-10-12 08:40:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('778', '195305111986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Riswan', '-', '2015-10-12 08:41:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('779', '196707051997022001', 'SK_LEKTOR_IIIa_2013.pdf', null, null, '2015-10-12 08:43:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('780', '195305111986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Riswan', '-', '2015-10-12 08:43:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('781', '195305111986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Riswan', '-', '2015-10-12 08:44:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('782', '195305111986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Riswan', '-', '2015-10-12 08:45:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('783', '195305111986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Riswan', '-', '2015-10-12 08:46:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('784', '195305111986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Riswan', '-', '2015-10-12 08:48:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('785', '195305111986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Riswan', '-', '2015-10-12 08:51:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('786', '195305111986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Riswan', '-', '2015-10-12 08:53:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('787', '195709261983031002', 'KARPEG_131228127.pdf', 'KARPEG Sigit Wibowo Dwi Nugroho', '-', '2015-10-12 08:54:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('788', '195709261983031002', 'SK_AKTIF DOSEN_2013.pdf', 'SK_AKTIF DOSEN_2013 Sigit Wibowo Dwi Nugroho', '-', '2015-10-12 08:55:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('789', '195709261983031002', 'SK_CPNS_1983.pdf', 'SK_CPNS_1983 Sigit Wibowo Dwi NUgroho', '-', '2015-10-12 08:55:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('790', '195709261983031002', 'SK_LEKTOR KEPALA_IVb_2001.pdf', 'SK_LEKTOR KEPALA_IVb_2001 Sigit Wibowo Dwi Nugroho', '-', '2015-10-12 08:57:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('791', '195709261983031002', 'SK_LEKTOR KEPALA_IVd_2005.pdf', 'SK_LEKTOR KEPALA_IVd_2005 Sigit Wibowo Dwi Nugroho', '-', '2015-10-12 08:58:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('792', '195709261983031002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Sigit Wibowo Dwi Nugroho', '-', '2015-10-12 08:59:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('793', '195709261983031002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sigit Wibowo Dwi Nugroho', '-', '2015-10-12 09:00:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('794', '195709261983031002', 'SK_PNS_1984.pdf', 'SK_PNS_1984 Sigit Wibowo Dwi Nugroho', '-', '2015-10-12 09:00:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('795', '197308181999032001', 'KARPEG_132233174.pdf', 'KARPEG Siti Zulaikha Wulandari', '-', '2015-10-12 09:02:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('796', '197308181999032001', 'SK_CPNS_1999.pdf', 'SK_CPNS_1999 Siti Zulaikha Wulandari', '-', '2015-10-12 09:02:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('797', '197308181999032001', 'SK_LEKTOR_IIIb_2006.pdf', 'SK_LEKTOR_IIIb_2006 Siti Zulaikha Wulandari', '-', '2015-10-12 09:03:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('798', '197308181999032001', 'SK_LEKTOR_IIId_2011.pdf', 'SK_LEKTOR_IIId_2011 Siti Zulaikha Wulandari', '-', '2015-10-12 09:04:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('799', '197308181999032001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Siti Zulaikha Wulandari', '-', '2015-10-12 09:05:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('800', '197308181999032001', 'SK_PNS_2000.pdf', 'SK_PNS_2000 Siti Zulaikha Wulandari', '-', '2015-10-12 09:06:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('801', '197011251998022001', 'KARPEG_132233174.pdf', 'KARPEG Sri Lestari', '-', '2015-10-12 09:07:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('802', '197011251998022001', 'SK_CPNS_1998.pdf', 'SK_CPNS_1998 Sri Lestari', '-', '2015-10-12 09:07:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('803', '197011251998022001', 'SK_LEKTOR_IIIb_2005.pdf', 'SK_LEKTOR_IIIb_2005 Sri Lestari', '-', '2015-10-12 09:08:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('804', '197011251998022001', 'SK_LEKTOR_IIId_2010.pdf', 'SK_LEKTOR_IIId_2010 Sri Lestari', '-', '2015-10-12 09:09:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('805', '197011251998022001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Sri Lestari', '-', '2015-10-12 09:09:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('806', '197011251998022001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Sri Lestari', '-', '2015-10-12 09:10:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('807', '197011251998022001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Sri Lestari', '-', '2015-10-12 09:11:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('808', '197011251998022001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sri Lestari', '-', '2015-10-12 09:12:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('809', '197011251998022001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Sri Lestari', '-', '2015-10-12 09:13:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('810', '197011251998022001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Sri Lestari', '-', '2015-10-12 09:15:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('811', '197011251998022001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sri Lestari', '-', '2015-10-12 09:15:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('812', '197011251998022001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sri Lestari', '-', '2015-10-12 09:17:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('813', '197011251998022001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Sri Lestari', '-', '2015-10-12 09:17:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('814', '197011251998022001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sri Lestari', '-', '2015-10-12 09:19:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('815', '197011251998022001', 'SK_PNS_1999.pdf', 'SK_PNS_1999 Sri Lestari', '-', '2015-10-12 09:19:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('816', '195610081985032002', 'KARPEG_131476628.pdf', 'KARPEG Sri Martini', '-', '2015-10-12 09:21:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('817', '195610081985032002', 'NIP BARU_195610081985032002.pdf', 'NIP BARU Sri Martini', '-', '2015-10-12 09:21:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('818', '195610081985032002', 'SK_CPNS_1985.pdf', 'SK_CPNS_1985 Sri Martini', '-', '2015-10-12 09:22:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('819', '195610081985032002', 'SK_LEKTOR MADYA_IIIc_1998.pdf', 'SK_LEKTOR MADYA_IIIc_1998 Sri Martini', '-', '2015-10-12 09:23:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('820', '195610081985032002', 'SK_LEKTOR MADYA_IIId_1999.pdf', 'SK_LEKTOR MADYA_IIId_1999 Sri Martini', '-', '2015-10-12 09:24:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('821', '195610081985032002', 'SK_LEKTOR_IIId_2001.pdf', 'SK_LEKTOR_IIId_2001 Sri Martini', '-', '2015-10-12 09:25:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('822', '195610081985032002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Sri Martini', '-', '2015-10-12 09:26:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('823', '195610081985032002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Sri Martini', '-', '2015-10-12 09:27:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('824', '195610081985032002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sri Martini', '-', '2015-10-12 09:28:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('825', '195610081985032002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Sri Martini', '-', '2015-10-12 09:29:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('826', '195610081985032002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Sri Martini', '-', '2015-10-12 09:30:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('827', '195610081985032002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sri Martini', '-', '2015-10-12 09:31:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('828', '195610081985032002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sri Martini', '-', '2015-10-12 09:32:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('829', '195610081985032002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Sri Martini', '-', '2015-10-12 09:33:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('830', '195610081985032002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sri Martini', '-', '2015-10-12 09:34:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('831', '195610081985032002', 'SK_PNS_1986.pdf', 'SK_PNS_1986 Sri Martini', '-', '2015-10-12 09:35:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('832', '195409101989012001', 'KARPEG_131809254.pdf', 'KARPEG Sri Murni Setyawati', '-', '2015-10-12 09:36:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('833', '195409101989012001', 'NIP BARU_195409101989012001.pdf', 'NIP BARU Sri Murni Setyawati', '-', '2015-10-12 09:38:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('834', '195409101989012001', 'SK_CPNS_1989.pdf', 'SK_CPNS_1989 Sri Murni Setyawati', '-', '2015-10-12 09:38:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('835', '195409101989012001', 'SK_LEKTOR KEPALA_IIId_2006.pdf', 'SK_LEKTOR_IIId_2006 Sri Murni Setyawati ', '-', '2015-10-12 09:39:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('836', '195409101989012001', 'SK_LEKTOR KEPALA_IVa_2008.pdf', 'SK_LEKTOR KEPALA_IVa_2008 Sri Murni Setyawati', '-', '2015-10-12 09:41:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('837', '195409101989012001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Sri Murni Setyawati', '-', '2015-10-12 09:42:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('838', '195409101989012001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sri Murni Setyawati', '-', '2015-10-12 09:43:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('839', '195409101989012001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Sri Murni Setyowati', '-', '2015-10-12 09:45:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('840', '195409101989012001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Sri Murni Setyawati', '-', '2015-10-12 09:46:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('841', '195409101989012001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sri Murni Setyawati', '-', '2015-10-12 09:47:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('842', '195409101989012001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sri Murni Setyawati', '-', '2015-10-12 09:48:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('843', '195409101989012001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Sri Murni Setyawati', '-', '2015-10-12 09:49:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('844', '195409101989012001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sri Murni Setyawati', '-', '2015-10-12 09:50:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('845', '195409101989012001', 'SK_PNS_1990.pdf', 'SK_PNS_1990 Sri Murni Setyawati', '-', '2015-10-12 09:51:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('846', '198303252009122004', 'KARPEG_198303252009122004.pdf', 'KARPEG Sri Retno Handayani', '-', '2015-10-12 09:52:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('847', '198303252009122004', 'SK_ASISTEN AHLI_IIIb_2012.pdf', 'SK_ASISTEN AHLI_IIIb_2012 Sri Retno Handayani ', '-', '2015-10-12 09:53:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('848', '198303252009122004', 'SK_CPNS_2010.pdf', 'SK_CPNS_2010 Sri Retno Handayani', '-', '2015-10-12 09:54:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('849', '198303252009122004', 'SK_PNS_2011.pdf', 'SK_PNS_2011 Sri Retno Handayani', '-', '2015-10-12 09:55:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('850', '195702241986012001', 'KARPEG_131572331.pdf', 'KARPEG Suci Indriati', '-', '2015-10-12 10:20:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('851', '195702241986012001', 'NIP BARU_195702241986012001.pdf', 'NIP BARU Suci Indriati', '-', '2015-10-12 10:26:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('852', '195702241986012001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Suci Indriati', '-', '2015-10-12 10:27:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('853', '195702241986012001', 'SK_LEKTOR MADYA_IIIc_1998.pdf', 'SK_LEKTOR_IIIc_1998 Suci Indiati', '-', '2015-10-12 10:29:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('854', '195702241986012001', 'SK_LEKTOR MADYA_IIId_1999.pdf', 'SK_LEKTOR MADYA_IIId_1999 Suci Indiati', '-', '2015-10-12 10:31:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('855', '195702241986012001', 'SK_LEKTOR_IIId_2001.pdf', 'SK_LEKTOR_IIId_2001 Suci Indriati', '-', '2015-10-12 10:32:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('856', '195702241986012001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Suci Indriati', '-', '2015-10-12 10:33:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('857', '195702241986012001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Suci indriati', '-', '2015-10-12 10:34:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('858', '195702241986012001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Suci Indriati', '-', '2015-10-12 10:35:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('859', '195702241986012001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Suci Indriati', '-', '2015-10-12 10:36:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('860', '195702241986012001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Suci Indriati', '-', '2015-10-12 10:38:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('861', '195702241986012001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Suci Indriati', '-', '2015-10-12 10:39:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('862', '195702241986012001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Suci Indriati', '-', '2015-10-12 10:40:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('863', '195702241986012001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Suci Indriati', '-', '2015-10-12 10:41:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('864', '195702241986012001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Suci Indriati', '-', '2015-10-12 10:42:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('865', '195702241986012001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Suci Indriati', '-', '2015-10-12 10:42:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('866', '196207191989011001', 'KARPEG_131809264.pdf', 'KARPEG Sudarto', '-', '2015-10-12 10:44:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('867', '196207191989011001', 'SK_CPNS_1989.pdf', 'SK_CPNS_1989 Sudarto', '-', '2015-10-12 10:44:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('868', '196207191989011001', 'SK_LEKTOR KEPALA_IVa_2004.pdf', 'SK_LEKTOR KEPALA_IVa_2004 Sudarto', '-', '2015-10-12 10:45:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('869', '196207191989011001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Sudarto', '-', '2015-10-12 10:45:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('870', '196207191989011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Sudarto', '-', '2015-10-12 10:46:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('871', '196207191989011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sudarto', '-', '2015-10-12 10:47:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('872', '196207191989011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Sudarto', '-', '2015-10-12 10:48:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('873', '196207191989011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Sudarto', '-', '2015-10-12 10:49:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('874', '196207191989011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sudarto', '-', '2015-10-12 10:49:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('875', '196207191989011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sudarto', '-', '2015-10-12 10:50:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('876', '196207191989011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Sudarto', '-', '2015-10-12 10:51:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('877', '196207191989011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sudarto', '-', '2015-10-12 10:52:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('878', '196207191989011001', 'SK_PNS_1990.pdf', 'SK_PNS_1990 Sudarto', '-', '2015-10-12 10:52:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('879', '198305242008122003', 'IJASAH S1_Sulistiyandari.jpg', 'IJASAH S1 Sulistyandari', '-', '2015-10-12 10:54:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('880', '198305242008122003', 'IJASAH S2_0004.jpg', 'IJASAH S2_0004 Sulistyandari', '-', '2015-10-12 10:55:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('881', '198305242008122003', 'KARPEG_198305242008122003.pdf', 'KARPEG Sulistyandari', '-', '2015-10-12 10:55:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('882', '198305242008122003', 'SK_ASISTEN AHLI_IIIb_2011.pdf', 'SK_ASISTEN AHLI_IIIb_2011 Sulistyandari', '-', '2015-10-12 10:55:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('883', '198305242008122003', 'SK_CPNS_2009.pdf', 'SK_CPNS_2009 Sulistyandari', '-', '2015-10-12 10:56:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('884', '198305242008122003', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Sulistyandari', '-', '2015-10-12 10:56:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('885', '198305242008122003', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Sulistyandari', '-', '2015-10-12 10:58:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('886', '198305242008122003', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Sulistyandari', '-', '2015-10-12 10:59:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('887', '198305242008122003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sulistyandari', '-', '2015-10-12 11:00:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('888', '198305242008122003', 'SK_PNS_2010.pdf', 'SK_PNS_2010 Sulistyandari', '-', '2015-10-12 11:00:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('889', '197404011998021001', 'IJAZAH_DOKTOR_PSULI.jpg', 'IJAZAH_DOKTOR_PSULI Suliyanto', '-', '2015-10-12 11:02:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('890', '197404011998021001', 'KARPEG_132206515.pdf', 'KARPEG Suliyanto', '-', '2015-10-12 11:03:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('891', '197404011998021001', 'KTP_SULI.jpg', 'KTP Suliyanto', '-', '2015-10-12 11:04:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('892', '197404011998021001', 'SK_CPNS_1998.pdf', 'SK_CPNS_1998 Suliyanto', '-', '2015-10-12 11:04:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('893', '197404011998021001', 'SK_LEKTOR KEPALA_IIId_2011.pdf', 'SK_LEKTOR KEPALA_IIId_2011 Suliyanto', '-', '2015-10-12 11:05:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('894', '197404011998021001', 'SK_LEKTOR KEPALA_IVa_2012.pdf', 'SK_LEKTOR KEPALA_IVa_2012 Suliyanto', '-', '2015-10-12 11:05:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('895', '197404011998021001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Suliyanto', '-', '2015-10-12 11:10:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('896', '197404011998021001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Suliyanto', '-', '2015-10-12 11:10:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('897', '197404011998021001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Suliyanto', '-', '2015-10-12 11:11:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('898', '197404011998021001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109 Suliyanto', '-', '2015-10-12 11:12:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('899', '197404011998021001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Suliyanto', '-', '2015-10-12 11:13:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('900', '197404011998021001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Suliyanto', '-', '2015-10-12 11:17:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('901', '197404011998021001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Suliyanto', '-', '2015-10-12 11:18:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('902', '197404011998021001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Suliyanto', '-', '2015-10-12 11:19:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('903', '197404011998021001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2103 Suliyanto', '-', '2015-10-12 11:20:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('904', '197404011998021001', 'SK_PNS_1999.pdf', 'SK_PNS_1999 Suliyanto', '-', '2015-10-12 11:20:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('905', '197404011998021001', 'ST_Skripsi_ADITYA.TRI.SAPUTRA_C1K008050.pdf', 'ST_SKRIPSI_ADITYA.TRI.SAPUTRA_C1 Suliyanto', '-', '2015-10-12 11:21:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('906', '197404011998021001', 'ST_Skripsi_MAKRUF.FATURAHMAN_C1K009043.pdf', 'ST_SKRIPSI_MAKRUF.FATURAHMAN. Suliyanto', '-', '2015-10-12 11:22:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('907', '197404011998021001', 'ST_Skripsi_SARAH.FAUZIAH_C1K010045.pdf', 'ST_SKRIPSI_SARAH_FAUZIAH Suliyanto', '-', '2015-10-12 11:23:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('908', '195409091986011001', 'KARPEG_131572339.pdf', 'KARPEG Sumarsono', '-', '2015-10-12 11:24:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('909', '195409091986011001', 'NIP BARU_195409091986011001.pdf', 'NIP BARU Sumarsono', '-', '2015-10-12 11:30:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('910', '195409091986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Sumarsono', '-', '2015-10-12 11:31:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('911', '195409091986011001', 'SK_LEKTOR MUDA_IIIb_1992.pdf', 'SK_LEKTOR MUDA_IIIb_1992 Sumarsono', '-', '2015-10-12 11:32:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('912', '195409091986011001', 'SK_LEKTOR_IIIc_2001.pdf', 'SK_LEKTOR_IIIc_2001 Sumarsono', '-', '2015-10-12 11:32:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('913', '195409091986011001', 'SK_LEKTOR_IIId_2005.pdf', 'SK_LEKTOR_IIId_2005 Sumarsono', '-', '2015-10-12 11:33:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('914', '195409091986011001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Sumarsono', '-', '2015-10-12 11:33:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('915', '195409091986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Sumarsono', '-', '2015-10-12 11:34:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('916', '195409091986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sumarsono', '-', '2015-10-12 11:37:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('917', '195409091986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_2013_2014 Sumarsono', '-', '2015-10-12 11:39:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('918', '195409091986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Sumarsono', '-', '2015-10-12 11:40:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('919', '195409091986011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sumarsono', '-', '2015-10-12 11:42:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('920', '195409091986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sumarsono', '-', '2015-10-12 11:43:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('921', '195409091986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Sumarsono', '-', '2015-10-12 11:46:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('922', '195409091986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sumarsono', '-', '2015-10-12 11:47:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('923', '195409091986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Sumarsono', '-', '2015-10-12 11:47:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('924', '195408141986011001', 'KARPEG_131572336.pdf', 'KARPEG Suwaryo', '-', '2015-10-12 11:57:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('925', '195408141986011001', 'NIP BARU_195408141986011001.pdf', 'NIP BARU Suwaryo', '-', '2015-10-12 11:57:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('926', '195408141986011001', 'SK_ASISTEN AHLI_IIIa_2001.pdf', 'SK_ASISTEN AHLI_IIIa_2001 Suwaryo', '-', '2015-10-12 11:58:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('927', '195408141986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Suwaryo', '-', '2015-10-12 11:58:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('928', '195408141986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Suwaryo', '-', '2015-10-12 11:59:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('929', '195408141986011001', 'SK_M_REG_D3_1_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Suwaryo', '-', '2015-10-12 12:00:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('930', '195408141986011001', 'SK_M_REG_D3_2_GASAL_2013..pdf', 'SK_M_REG_D3_2_2013 Suwaryo', '-', '2015-10-12 12:01:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('931', '195408141986011001', 'SK_M_REG_D3_3_GASAL_2013.pdf', 'SK_M_REG_D3_3_2013 Suwaryo', '-', '2015-10-12 12:02:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('932', '195408141986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Suwaryo', '-', '2015-10-12 12:02:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('933', '195408141986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Suwaryo', '-', '2015-10-12 12:03:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('934', '195408141986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Suwaryo', '-', '2015-10-12 12:04:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('935', '195408141986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Suwaryo', '-', '2015-10-12 12:04:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('936', '195408141986011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Suwaryo', '-', '2015-10-12 12:05:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('937', '195408141986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Suwaryo', '-', '2015-10-12 12:06:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('938', '195408141986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Suwaryo', '-', '2015-10-12 12:07:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('939', '195408141986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Suwaryo', '-', '2015-10-12 12:07:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('940', '195408141986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Suwaryo', '-', '2015-10-12 12:07:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('941', '195811071985032001', 'KARPEG_131470936.pdf', 'KARPEG Titi Nurfitri', '-', '2015-10-12 12:10:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('942', '195811071985032001', 'NIP BARU_195811071985032001.pdf', 'NIP BARU Titi Nurfitri', '-', '2015-10-12 12:10:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('943', '195811071985032001', 'SK_CPNS_1985.pdf', 'SK_CPNS_1985 Titi Nurfitri', '-', '2015-10-12 12:11:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('944', '195811071985032001', 'SK_LEKTOR KEPALA_IVa_2001.pdf', null, null, '2015-10-12 12:12:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('945', '195811071985032001', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_IVa_2001 Titi Nurfitri', '-', '2015-10-12 12:12:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('946', '195811071985032001', 'SK_LEKTOR_IIId_2000.pdf', 'SK_LEKTOR_IIId_2000 Titi Nurfitri', '-', '2015-10-12 13:49:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('947', '195811071985032001', 'SK_LEKTOR_IVa_2000.pdf', 'SK_LEKTOR_IVa_2000 Titi Nurfitri', '-', '2015-10-12 13:50:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('948', '195811071985032001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Titi Nurfitri', '-', '2015-10-12 13:51:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('949', '195811071985032001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Titi Nurfitri', '-', '2015-10-12 13:52:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('950', '195811071985032001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Titi Nurfitri', '-', '2015-10-12 13:53:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('951', '195811071985032001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Titi Nurfitri', '-', '2015-10-12 13:54:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('952', '195811071985032001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Titi Nurfitri', '-', '2015-10-12 13:55:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('953', '195811071985032001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Titi Nurfitri', '-', '2015-10-12 13:56:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('954', '195811071985032001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Titi Nurfitri', '-', '2015-10-12 13:58:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('955', '195811071985032001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Titi Nurfitri', '-', '2015-10-12 13:59:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('956', '195811071985032001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Titi Nurfitri', '-', '2015-10-12 14:01:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('957', '195811071985032001', 'SK_PNS_1986.pdf', 'SK_PNS_1986 Titi Nurfitri', '-', '2015-10-12 14:01:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('958', '195811071985032001', 'SK_PNS_1986_LAMPIRAN.pdf', 'SK_PNS_1986_LAMPIRAN Titi Nurfitri', '-', '2015-10-12 14:02:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('959', '195909091989011001', 'KARPEG_131809266.pdf', 'KARPEG Tohir', '-', '2015-10-12 14:04:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('960', '195909091989011001', 'NIP BARU_195909091989011001.pdf', 'NIP BARU Tohir', '-', '2015-10-12 14:04:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('961', '195909091989011001', 'SK_CPNS_1989.pdf', 'SK_CPNS_1989 Tohir', '-', '2015-10-12 14:04:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('962', '195909091989011001', 'SK_LEKTOR KEPALA_IIId_2006.pdf', 'SK_LEKTOR KEPALA_IIId_2006 Tohir', '-', '2015-10-12 14:05:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('963', '195909091989011001', 'SK_LEKTOR KEPALA_IVa_2008.pdf', 'SK_LEKTOR KEPALA_IVa_2008 Tohir', '-', '2015-10-12 14:06:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('964', '195909091989011001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Tohir', '-', '2015-10-12 14:07:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('965', '195909091989011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Tohir', '-', '2015-10-12 14:08:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('966', '195909091989011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Tohir', '-', '2015-10-12 14:09:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('967', '195909091989011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Tohir', '-', '2015-10-12 14:10:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('968', '195909091989011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Tohir', '-', '2015-10-12 14:11:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('969', '195909091989011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Tohir', '-', '2015-10-12 14:12:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('970', '195909091989011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Tohir', '-', '2015-10-12 14:13:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('971', '195909091989011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Tohir', '-', '2015-10-12 14:14:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('972', '195909091989011001', 'SK_PNS_1990.pdf', 'SK_PNS_1990 Tohir', '-', '2015-10-12 14:15:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('973', '195310231986011001', 'KARPEG_131572337.pdf', 'KARPEG Untung Kumorohadi', '-', '2015-10-12 14:17:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('974', '195310231986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Untung Kumorohadi', '-', '2015-10-12 14:18:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('975', '195310231986011001', 'SK_LEKTOR MADYA_IIIc_1997.pdf', 'SK_LEKTOR MADYA_IIIc_1997 Untung Kumorohadi', '-', '2015-10-12 14:18:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('976', '195310231986011001', 'SK_LEKTOR MADYA_IIId_1998.pdf', 'SK_LEKTOR MADYA_IIId_1998 Untung Kumorohadi', '-', '2015-10-12 14:19:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('977', '195310231986011001', 'SK_LEKTOR_IIId_2001.pdf', 'SK_LEKTOR_IIId_2001 Untung Kumorohadi', '-', '2015-10-12 14:20:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('978', '195310231986011001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Untung Kumorohadi', '-', '2015-10-12 14:21:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('979', '195310231986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Untung Kumorohadi', '-', '2015-10-12 14:21:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('980', '195310231986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Untung Kumorohadi', '-', '2015-10-12 14:22:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('981', '195310231986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Untung Kumorohadi', '-', '2015-10-12 14:23:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('982', '195310231986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Untung Kumorohadi', '-', '2015-10-12 14:25:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('983', '195310231986011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Untung Kumorohadi', '-', '2015-10-12 14:25:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('984', '195310231986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Untung Kumorohadi', '-', '2015-10-12 14:26:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('985', '195310231986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Untung Kumorohadi', '-', '2015-10-12 14:27:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('986', '195310231986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Untung Kumorohadi', '-', '2015-10-12 14:28:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('987', '195310231986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Untung Kumorohadi', '-', '2015-10-12 14:29:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('988', '197511191999032003', 'KARPEG_132233173.pdf', 'KARPEG Weni Novandari', '-', '2015-10-12 14:30:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('989', '197511191999032003', 'SK_CPNS_1999.pdf', 'SK_CPNS_1999 Weni Novandari', '-', '2015-10-12 14:31:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('990', '197511191999032003', 'SK_LEKTOR_IIIb_2009.pdf', 'SK_LEKTOR_IIIb_2009 Weni Novandari', '-', '2015-10-12 14:31:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('991', '197511191999032003', 'SK_LEKTOR_IIId_2012.pdf', 'SK_LEKTOR_IIId_2012 Weni Novandari', '-', '2015-10-12 14:32:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('992', '197511191999032003', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Weni Novandari', '-', '2015-10-12 14:32:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('993', '197511191999032003', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Weni Novandari', '-', '2015-10-12 14:33:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('994', '197511191999032003', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Weni Novandari', '-', '2015-10-12 14:33:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('995', '197511191999032003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Weni Novandari', '-', '2015-10-12 14:34:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('996', '197511191999032003', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Weni Novandari', '-', '2015-10-12 14:35:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('997', '197511191999032003', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Weni Novandari', '-', '2015-10-12 14:35:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('998', '197511191999032003', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Weni Novandari', '-', '2015-10-12 14:36:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('999', '197511191999032003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Weni Novandari', '-', '2015-10-12 14:36:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1000', '197511191999032003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Weni Novandari', '-', '2015-10-12 14:37:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1001', '197511191999032003', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Weni Novandari', '-', '2015-10-12 14:38:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1002', '197511191999032003', 'SK_PNS_2000.pdf', 'SK_PNS_2000 Weni Novandari', '-', '2015-10-12 14:38:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1003', '197511191999032003', 'ST_Skripsi_ADITYA.TRI.SAPUTRA_C1K008050.pdf', 'ST_SKRIPSI_ADITYA.TRI.SAPUTRA. Weni Novandari', '-', '2015-10-12 14:39:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1004', '197511191999032003', 'ST_Skripsi_MAKRUF.FATURAHMAN_C1K009043.pdf', 'ST_SKRIPSI_MAKRUF.FATURAHMAN. Weni Novandari', '-', '2015-10-12 14:40:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1005', '197012292003122001', 'KARPEG_132233173.pdf', 'KARPEG Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:41:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1006', '197012292003122001', 'SK_CPNS_1999.pdf', 'SK_CPNS_1999 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:42:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1007', '197012292003122001', 'SK_LEKTOR_IIIb_2009.pdf', 'SK_LEKTOR_IIIb_2009 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:43:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1008', '197012292003122001', 'SK_LEKTOR_IIId_2012.pdf', 'SK_LEKTOR_IIId_2012 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:44:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1009', '197012292003122001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:45:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1010', '197012292003122001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:45:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1011', '197012292003122001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:46:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1012', '197012292003122001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:47:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1013', '197012292003122001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Wiwiek Rabiatul Adawiyah', '', '2015-10-12 14:47:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1014', '197012292003122001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:48:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1015', '197012292003122001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Wiwiek Rabieyul Adawiyah', '-', '2015-10-12 14:48:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1016', '197012292003122001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:49:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1017', '197012292003122001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2103 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:50:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1018', '197012292003122001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:51:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1019', '197012292003122001', 'SK_PNS_2000.pdf', 'SK_PNS_2000 Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:51:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1020', '197012292003122001', 'ST_Skripsi_ADITYA.TRI.SAPUTRA_C1K008050.pdf', 'ST_SKRIPSI_ADITYA.TRI.SAPUTRA. Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:52:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1021', '197012292003122001', 'ST_Skripsi_MAKRUF.FATURAHMAN_C1K009043.pdf', 'ST_SKRIPSI_MAKRUF.FATURAHMAN. Wiwiek Rabiatul Adawiyah', '-', '2015-10-12 14:53:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1022', '195205071980031002', 'KARPEG_130810180.pdf', 'KARPEG Yayat Giyatno', '-', '2015-10-12 14:54:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1023', '195205071980031002', 'NIP BARU_195205071980031002.pdf', 'NIP BARU Yayat Giyatno', '-', '2015-10-12 14:54:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1024', '195205071980031002', 'SK_CPNS_1980.pdf', 'SK_CPNS_1980 Yayat Giyatno', '-', '2015-10-12 14:55:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1025', '195205071980031002', 'SK_LEKTOR MADYA_IIId_1988.pdf', 'SK_LEKTOR MADYA_IIId_1988 Yayat Giyatno', '-', '2015-10-12 14:56:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1026', '195205071980031002', 'SK_LEKTOR_IIId_2001.pdf', 'SK_LEKTOR_IIId_2001 Yayat Giyatno', '-', '2015-10-12 14:56:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1027', '195205071980031002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Yayat Giyatno', '-', '2015-10-12 14:57:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1028', '195205071980031002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Yayat Giyatno', '-', '2015-10-12 14:57:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1029', '195205071980031002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_Yayat Giyatno', '-', '2015-10-12 14:58:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1030', '195205071980031002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Yayat Giyatno', '-', '2015-10-12 14:58:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1031', '195205071980031002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Yayat Giyatno', '-', '2015-10-12 14:59:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1032', '195205071980031002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Yayat Giyatno', '-', '2015-10-12 15:00:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1033', '195205071980031002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Yayat Giyatno', '-', '2015-10-12 15:01:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1034', '195205071980031002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Yayat Giyatno', '-', '2015-10-12 15:01:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1035', '195205071980031002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Yayat Giyatno', '-', '2015-10-12 15:02:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1036', '195205071980031002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Yayat Giyatno', '-', '2015-10-12 15:03:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1037', '195205071980031002', 'SK_PNS_1981.pdf', 'SK_PNS_1981 Yayat Giyatno', '-', '2015-10-12 15:04:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1038', '197212152001121002', 'SK_CPNS_2001.pdf', 'SK_CPNS_2001 Abdul Aziz Ahmad', '-', '2015-10-15 08:01:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1039', '197212152001121002', 'SK_LEKTOR_IIIc_2008.pdf', 'SK_LEKTOR_IIIc_2008 Abdul Aziz Ahmad', '-', '2015-10-15 08:02:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1040', '197212152001121002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Abdul Aziz Ahmad', '-', '2015-10-15 08:04:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1041', '197212152001121002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Abdul Aziz Ahmad', '-', '2015-10-15 08:05:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1042', '197212152001121002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', null, null, '2015-10-15 08:11:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1043', '197212152001121002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', null, null, '2015-10-15 08:12:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1044', '197212152001121002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Abdul Aziz Ahmad', '-', '2015-10-15 08:14:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1045', '197212152001121002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Abdul Aziz Ahmad', '-', '2015-10-15 08:14:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1046', '197212152001121002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Abdul Aziz Ahmad', '-', '2015-10-15 08:15:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1047', '197212152001121002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Abdul Aziz Ahmad', '-', '2015-10-15 08:16:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1048', '197212152001121002', 'SK_PNS_2003.pdf', 'SK_PNS_2003 Abdul Aziz Ahmad', '-', '2015-10-15 08:17:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1049', '198012012005011002', 'KARPEG_132306846.pdf', 'KARPEG Agus Arifin', '-', '2015-10-15 08:18:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1050', '198012012005011002', 'NIP BARU_198012012005011002.pdf', 'NIP BARU Agus Arifin', '-', '2015-10-15 08:19:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1051', '198012012005011002', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Agus Arifin', '-', '2015-10-15 08:19:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1052', '198012012005011002', 'SK_LEKTOR_IIIa_2009.pdf', 'SK_LEKTOR_IIIa_2009 Agus Arifin', '-', '2015-10-15 08:20:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1053', '198012012005011002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Agus Arifin', '-', '2015-10-15 08:20:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1054', '198012012005011002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Agus Arifin', '-', '2015-10-15 08:21:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1055', '198012012005011002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Agus Arifin', '-', '2015-10-15 08:22:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1056', '198012012005011002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Agus Arifin', '-', '2015-10-15 08:23:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1057', '198012012005011002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Agus Arifin', '-', '2015-10-15 08:23:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1058', '198012012005011002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Agus Arifin', '-', '2015-10-15 08:24:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1059', '198012012005011002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Agus Arifin', '-', '2015-10-15 08:25:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1060', '198012012005011002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Agus Arifin', '-', '2015-10-15 08:26:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1061', '198108032010012002', 'SK_CPNS_2011.pdf', 'SK_CPNS_2011 Agustin Susyatna Dewi', '-', '2015-10-15 08:28:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1062', '198108032010012002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Agustin Susyatna Dewi', '-', '2015-10-15 08:28:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1063', '198108032010012002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Agustin Susyatna Dewi', '-', '2015-10-15 08:29:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1064', '198108032010012002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Agustin Susyatna Dewi', '-', '2015-10-15 08:30:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1065', '198108032010012002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Agustin Susyatna Dewi', '-', '2015-10-15 08:31:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1066', '198108032010012002', 'SK_PNS_2012.pdf', 'SK_PNS_2012 Agustin Susyatna Dewi', '-', '2015-10-15 08:31:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1067', '197310242006041003', 'KARPEG_132317423.pdf', 'KARPEG Arintoko', '-', '2015-10-15 08:32:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1068', '197310242006041003', 'NIP BARU_197310242006041003.pdf', 'NIP BARU Arintoko', '-', '2015-10-15 08:33:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1069', '197310242006041003', 'SK_ASISTEN AHLI_IIIb_2007.pdf', 'SK_ASISTEN AHLI_IIIb_2007 Arintoko', '-', '2015-10-15 08:34:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1070', '197310242006041003', 'SK_CPNS_2006.pdf', 'SK_CPNS_2006 Arintoko', '-', '2015-10-15 08:35:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1071', '197310242006041003', 'SK_PNS_2007.pdf', 'SK_PNS_2007 Arintoko', '-', '2015-10-15 08:36:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1072', '195708231986012001', 'KARPEG_131569042.pdf', 'KARPEG Asteria Pudyantini', '-', '2015-10-15 08:37:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1073', '195708231986012001', 'NIP BARU_195708231986012001.pdf', 'NIP BARU Asteria Pudyantini', '-', '2015-10-15 08:38:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1074', '195708231986012001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Asteria Pudyantini', '-', '2015-10-15 08:41:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1075', '195708231986012001', 'SK_LEKTOR_IIId_2001.pdf', 'SK_LEKTOR_IIId_2001 Asteria Pudyantini', '-', '2015-10-15 08:43:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1076', '195708231986012001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_REG_D3_2013 Asteria Pudyantini', '-', '2015-10-15 08:43:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1077', '195708231986012001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Asteria Pudyantini', '-', '2015-10-15 08:44:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1078', '198007152005012002', 'KARPEG_132312614.pdf', 'KARPEG Barokatuminalloh', '-', '2015-10-15 08:46:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1079', '198007152005012002', 'NIP BARU_198007162005012002.pdf', 'NIP BARU Barokatuminalloh', '-', '2015-10-15 08:47:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1080', '198007152005012002', 'SK_ASISTEN AHLI_IIIa_2006.pdf', 'SK_ASISTEN AHLI_IIIa_2006 Barokatumanalloh', '-', '2015-10-15 08:48:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1081', '198007152005012002', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Barokatuminalloh', '-', '2015-10-15 08:48:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1082', '198007152005012002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_2013 Barokatuminalloh', '-', '2015-10-15 08:49:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1083', '198007152005012002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Barokatuminalloh', '-', '2015-10-15 08:50:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1084', '198007152005012002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Barokatuminalloh', '-', '2015-10-15 08:51:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1085', '198007152005012002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Barokatuminalloh', '-', '2015-10-15 08:52:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1086', '198007152005012002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Barokatuminalloh', '-', '2015-10-15 08:53:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1087', '198007152005012002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Barokatuminalloh', '-', '2015-10-15 08:54:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1088', '198007152005012002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Barokatuminalloh', '-', '2015-10-15 08:55:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1089', '198007152005012002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Barokatuminalloh', '-', '2015-10-15 08:58:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1090', '198007152005012002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Barokatuminalloh', '-', '2015-10-15 09:00:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1091', '198007152005012002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Barokatuminalloh', '-', '2015-10-15 09:02:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1092', '198007152005012002', 'SK_PNS_2006.pdf', 'SK_PNS_2006 Barokatuminalloh', '-', '2015-10-15 09:02:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1093', '195904231986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Dedi Supriadi', '-', '2015-10-15 09:03:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1094', '195904231986011001', 'SK_LEKTOR KEPALA_IVa_2003.pdf', 'SK_LEKTOR KEPALA_IVa_2003 Dedi Supriadi', '-', '2015-10-15 09:05:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1095', '195904231986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Dedi Supriadi', '-', '2015-10-15 09:06:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1096', '195904231986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Dedi Supriadi', '-', '2015-10-15 09:06:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1097', '195904231986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Dedi Supriadi', '-', '2015-10-15 09:07:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1098', '195904231986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Dedi Supriadi', '-', '2015-10-15 09:08:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1099', '195904231986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Dedi Supriadi', '-', '2015-10-15 09:09:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1100', '195904231986011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Dedi Supriadi', '-', '2015-10-15 09:10:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1101', '195904231986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Dedi Supriadi', '-', '2015-10-15 09:12:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1102', '195904231986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', null, null, '2015-10-15 09:13:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1103', '195904231986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', null, null, '2015-10-15 09:15:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1104', '195904231986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Dedi Supriadi', '-', '2015-10-15 09:18:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1105', '195904231986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Dedi Supriadi', '-', '2015-10-15 09:19:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1106', '195904231986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Dedi Supriadi', '-', '2015-10-15 09:22:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1107', '198106092006042001', 'KARPEG_132317424.pdf', 'KARPEG Diah Setyorini Gunawan', '-', '2015-10-15 09:23:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1108', '198106092006042001', 'NIP BARU_198106092006042001.pdf', 'NIP BARU Diah Setyorini Gunawan', '-', '2015-10-15 09:24:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1109', '198106092006042001', 'SK_ASISTEN AHLI_IIIb_2007.pdf', 'SK_ASISTEN AHLI_2007 Diah Setyorini Gunawan', '-', '2015-10-15 09:25:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1110', '198106092006042001', 'SK_CPNS_2006.pdf', 'SK_CPNS_2006 Diah Setyorini Gunawan', '-', '2015-10-15 09:25:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1111', '198106092006042001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Diah Setyorini Gunawan', '-', '2015-10-15 09:27:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1112', '198106092006042001', 'SK_PNS_2007.pdf', 'SK_PNS_2007 Diah Setyorini Gunawan', '-', '2015-10-15 09:28:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1113', '196201111988032001', 'SK_CPNS_1988.pdf', 'SK_CPNS_1988 Dijan Rahajuni', '-', '2015-10-15 09:31:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1114', '196201111988032001', 'SK_LEKTOR KEPALA_IVa_2008.pdf', 'SK_LEKTOR KEPALA_2008 Dijan Rahajuni', '-', '2015-10-15 09:32:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1115', '196201111988032001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_2013 Dijan Rahajuni', '-', '2015-10-15 09:33:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1116', '196201111988032001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Dijan Rahajuni', '-', '2015-10-15 09:34:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1117', '196201111988032001', 'SK_M-REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Dijan Rahajuni', '-', '2015-10-15 09:34:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1118', '196201111988032001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', null, null, '2015-10-15 09:36:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1119', '196201111988032001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Dijan Rahajuni', '-', '2015-10-15 09:38:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1120', '196201111988032001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Dijan Rahajuni', '-', '2015-10-15 09:39:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1121', '196201111988032001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Dijan Rahajuni', '-', '2015-10-15 09:40:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1122', '196201111988032001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Dijan Rahajuni', '-', '2015-10-15 09:41:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1123', '196201111988032001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Dijan Rahajuni', '-', '2015-10-15 09:43:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1124', '196201111988032001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Dijan Rahajuni', '-', '2015-10-15 09:43:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1125', '196201111988032001', 'SK_PNS_1989.pdf', 'SK_PNS_1989 Dijan Rahajuni', '-', '2015-10-15 09:44:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1126', '195601191986032002', 'KARPEG_131600922.pdf', 'KARPEG Emmy Saraswati', '-', '2015-10-15 09:45:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1127', '195601191986032002', 'NIP BARU_1956011191986032002.pdf', 'NIP BARU Emmy Saraswati', '-', '2015-10-15 09:46:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1128', '195601191986032002', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Emmy Saraswati', '-', '2015-10-15 09:47:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1129', '195601191986032002', 'SK_LEKTOR_IIIb_2007.pdf', 'SK_LEKTOR_IIIb_2007 Emmy Saraswati', '-', '2015-10-15 09:47:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1130', '195601191986032002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Emmy Saraswati', '-', '2015-10-15 09:48:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1131', '195601191986032002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Emmy Saraswati', '-', '2015-10-15 09:48:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1132', '195601191986032002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2103_2014 Emmy Saraswati', '-', '2015-10-15 09:49:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1133', '195601191986032002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Emmy Saraswati', '-', '2015-10-15 09:50:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1134', '195601191986032002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Emmy Saraswati', '-', '2015-10-15 09:50:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1135', '195601191986032002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Emmy Saraswati', '-', '2015-10-15 09:51:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1136', '195601191986032002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Emmy Saraswati', '-', '2015-10-15 09:51:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1137', '195601191986032002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Emmy Saraswati', '-', '2015-10-15 09:52:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1138', '195601191986032002', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Emmy Saraswati', '-', '2015-10-15 09:52:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1139', '195301091986032001', 'KARPEG_131625572.pdf', 'KARPEG Endang Setiasih', '-', '2015-10-15 09:53:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1140', '195301091986032001', 'NIP BARU_195301091986032001.pdf', 'NIP BARU Endang Setiasih', '-', '2015-10-15 09:54:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1141', '195301091986032001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Endang Setiasih', '-', '2015-10-15 09:54:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1142', '195301091986032001', 'SK_LEKTOR KEPALA_IVa_2011.pdf', 'SK_LEKTOR KEPALA_IVa_2011 Endang Setiasih', '-', '2015-10-15 09:55:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1143', '195301091986032001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_2013 Endang Setiasih', '-', '2015-10-15 09:55:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1144', '195301091986032001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_2013 Endang Setiasih', '-', '2015-10-15 09:56:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1145', '195301091986032001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Endang Setiasih', '-', '2015-10-15 09:57:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1146', '195301091986032001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Endang Setiasih', '-', '2015-10-15 09:57:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1147', '195301091986032001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Endang Setiasih', '-', '2015-10-15 09:58:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1148', '195301091986032001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', null, null, '2015-10-15 09:58:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1149', '195301091986032001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Endang Setiasih', '-', '2015-10-15 09:59:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1150', '195301091986032001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Endang Setiasih', '-', '2015-10-15 09:59:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1151', '195301091986032001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Endang Setiasih', '-', '2015-10-15 10:00:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1152', '195301091986032001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2103 Endang Setiasih', '-', '2015-10-15 10:01:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1153', '195301091986032001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Endang Setiasih', '-', '2015-10-15 10:01:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1154', '195710171985032001', 'KARPEG_131459278.pdf', 'KARPEG Endang Sri Gunawati', '-', '2015-10-15 10:02:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1155', '195710171985032001', 'SK_CPNS_1985.pdf', 'SK_CPNS_1985 Endang Sri Gunawati', '-', '2015-10-15 10:03:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1156', '195710171985032001', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_IVa_2001 Endang Sri Gunawati', '-', '2015-10-15 10:04:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1157', '195710171985032001', 'SK_M _S1 REG_GASAL 2013.pdf', 'SK_M_REG_S1_GASAL_2013 Endang Sri Gunawati', '-', '2015-10-15 10:05:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1158', '195710171985032001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Endang Sri Gunawati', '-', '2015-10-15 10:05:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1159', '195710171985032001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Endang Sri Gunawati', '-', '2015-10-15 10:08:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1160', '195710171985032001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Endang Sri Gunawati', '-', '2015-10-15 10:09:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1161', '195710171985032001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Endang Sri Gunawati', '-', '2015-10-15 10:09:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1162', '195710171985032001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Endang Sri Gunawati', '-', '2015-10-15 10:10:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1163', '195710171985032001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Endang Sri Gunawati', '-', '2015-10-15 10:10:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1164', '195710171985032001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Endang Sri Gunawati', '-', '2015-10-15 10:11:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1165', '195710171985032001', 'SK_PNS_1986.pdf', 'SK_PNS_1986 Endang Sri Gunawati', '-', '2015-10-15 10:12:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1166', '195901101986011001', 'KARPEG_131571670.pdf', 'KARPEG Hary Pudjianto', '-', '2015-10-15 10:13:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1167', '195901101986011001', 'NIP BARU_195901101986011001.pdf', 'NIP BARU Hary Pudjianto', '-', '2015-10-15 10:13:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1168', '195901101986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Hary Pudjianto', '-', '2015-10-15 10:14:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1169', '195901101986011001', 'SK_LEKTOR KEPALA_IVa_2007.pdf', 'SK_LEKTOR KEPALA_2007 Hary Pudjianto', '-', '2015-10-15 10:14:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1170', '195901101986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Hary Pudjianto', '-', '2015-10-15 10:15:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1171', '195901101986011001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Hary Pudjianto', '-', '2015-10-15 10:16:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1172', '195901101986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Hary Pudjianto', '-', '2015-10-15 10:17:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1173', '195901101986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Hary Pudjianto', '-', '2015-10-15 10:18:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1174', '195901101986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Hary Pudjianto', '-', '2015-10-15 10:19:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1175', '195901101986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Hary Pudjianto', '-', '2015-10-15 10:19:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1176', '195901101986011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Hary Pudjianto', '-', '2015-10-15 10:20:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1177', '195901101986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Hary Pudjianto', '-', '2015-10-15 10:21:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1178', '195901101986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Hary Pudjianto', '-', '2015-10-15 10:21:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1179', '195901101986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Hary Pudjianto', '-', '2015-10-15 10:22:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1180', '195901101986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Hary Pudjianto', '-', '2015-10-15 10:22:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1181', '196202031988031001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Herman Sambodo', '-', '2015-10-15 10:23:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1182', '196202031988031001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Herman Sambodo', '-', '2015-10-15 10:24:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1183', '196202031988031001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Herman Sambodo', '-', '2015-10-15 10:24:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1184', '196202031988031001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Herman Sambodo', '-', '2015-10-15 10:25:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1185', '196202031988031001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Herman Sambodo', '-', '2015-10-15 10:26:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1186', '196202031988031001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Herman Sambodo', '-', '2015-10-15 10:27:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1187', '196202031988031001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2103 Herman Sambodo', '-', '2015-10-15 10:27:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1188', '196202031988031001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Herman Sambodo', '-', '2015-10-15 10:28:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1189', '196202031988031001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Herman Sambodo', '-', '2015-10-15 10:29:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1190', '196202031988031001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Herman Sambodo', '-', '2015-10-15 10:30:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1191', '196202031988031001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Herman Sambodo', '-', '2015-10-15 10:31:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1192', '195205241981031003', 'KARPEG_130927209.pdf', 'KARPEG Indi Sutopo', '-', '2015-10-15 10:32:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1193', '195205241981031003', 'NIP BARU_195202241981031003.pdf', 'NIP BARU Indi Sutopo', '-', '2015-10-15 10:32:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1194', '195205241981031003', 'SK_CPNS_1981.pdf', 'SK_CPNS_1981 Indi Sutopo', '-', '2015-10-15 10:33:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1195', '195205241981031003', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_IVa_2001 Indi Sutopo', '-', '2015-10-15 10:33:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1196', '195205241981031003', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Indi Sutopo', '-', '2015-10-15 10:34:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1197', '195205241981031003', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Indi Sutopo', '-', '2015-10-15 10:34:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1198', '195205241981031003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Indi Sutopo', '-', '2015-10-15 10:35:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1199', '195205241981031003', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Indi Sutopo', '-', '2015-10-15 10:35:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1200', '195205241981031003', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Indi Sutopo', '-', '2015-10-15 10:36:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1201', '195205241981031003', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Indi Sutopo', '-', '2015-10-15 10:37:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1202', '195205241981031003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Indi Sutopo', '-', '2015-10-15 10:37:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1203', '195205241981031003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Indi Sutopo', '-', '2015-10-15 10:38:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1204', '195205241981031003', 'SK_PNS_1982.pdf', 'SK_PNS_1982 Indi Sutopo', '-', '2015-10-15 10:38:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1205', '197212261997022001', 'KARPEG_132158427.pdf', 'KARPEG Irma Suryahani', '-', '2015-10-15 10:39:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1206', '197212261997022001', 'NIP BARU_197212261997022001.pdf', 'NIP BARU Irma Suryahani', '-', '2015-10-15 10:40:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1207', '197212261997022001', 'SK_CPNS_1997.pdf', 'SK_CPNS_1997 Irma Suryahani', '-', '2015-10-15 10:40:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1208', '197212261997022001', 'SK_LEKTOR_IIIa_2007.pdf', 'SK_LEKTOR_IIIa_2007 Irma Suryahani', '-', '2015-10-15 10:40:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1209', '197212261997022001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Irma Suryahani', '-', '2015-10-15 10:41:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1210', '197212261997022001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Irma Suryahani', '-', '2015-10-15 10:42:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1211', '197212261997022001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Irma Suryahani', '-', '2015-10-15 10:43:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1212', '197212261997022001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Irma Suryahani', '-', '2015-10-15 10:43:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1213', '197212261997022001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Irma Suryahani', '-', '2015-10-15 10:44:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1214', '197212261997022001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Irma Suryahani', '-', '2015-10-15 10:44:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1215', '197212261997022001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2103 Irma Suryahani', '-', '2015-10-15 10:45:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1216', '197212261997022001', 'SK_PNS_1998.pdf', 'SK_PNS_1988 Irma Suryahani', '-', '2015-10-15 10:45:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1217', '197212261997022001', 'SK_PNS_1998.pdf', 'SK_PNS_1998 Irma Suryahani', '-', '2015-10-15 10:45:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1218', '197012261997022001', 'KARPEG_132164056.pdf', 'KARPEG Istiqomah ', '-', '2015-10-15 10:46:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1219', '197012261997022001', 'NIP BARU_197012261997022001.pdf', 'NIP BARU Istiqomah', '-', '2015-10-15 10:46:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1220', '197012261997022001', 'SK_CPNS_1997.pdf', 'SK_CPNS_1997 Istiqomah', '-', '2015-10-15 10:47:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1221', '197012261997022001', 'SK_LEKTOR_IIIb_2013.pdf', 'SK_LEKTOR_IIIb_2013 Istiqomah', '-', '2015-10-15 10:47:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1222', '197012261997022001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Istiqomah', '-', '2015-10-15 10:48:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1223', '197012261997022001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Istiqomah', '-', '2015-10-15 10:48:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1224', '197012261997022001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Istiqomah', '-', '2015-10-15 10:49:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1225', '197012261997022001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Istiqomah', '-', '2015-10-15 10:50:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1226', '197012261997022001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Istiqomah', '-', '2015-10-15 10:50:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1227', '197012261997022001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Istiqomah', '-', '2015-10-15 10:51:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1228', '197012261997022001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Istiqomah', '-', '2015-10-15 10:51:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1229', '197012261997022001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Istiqomah', '-', '2015-10-15 10:52:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1230', '197012261997022001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2103 Istiqomah', '-', '2015-10-15 10:52:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1231', '197012261997022001', 'SK_PNS_1998.pdf', 'SK_PNS_1998 Istiqomah', '-', '2015-10-15 10:53:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1232', '198212252010122004', 'SK_ASISTEN AHLI_IIIb_2013.pdf', 'SK_ASISTEN AHLI_IIIb_2013 Kikin Windhani', '-', '2015-10-15 10:54:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1233', '198212252010122004', 'SK_CPNS_2011.pdf', 'SK_CPNS_2011 Kikin Windhani', '-', '2015-10-15 10:54:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1234', '198212252010122004', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Kikin Windhani', '-', '2015-10-15 10:55:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1235', '198212252010122004', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Kikin Windhani', '-', '2015-10-15 10:55:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1236', '198212252010122004', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Kikin Windhani', '-', '2015-10-15 10:56:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1237', '198212252010122004', 'SK_PNS_2012.pdf', 'SK_PNS_2012 Kikin Windhani', '-', '2015-10-15 10:57:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1238', '197204131998022001', 'KARPEG_132206514.pdf', 'KARPEG Lilis Siti Badriah', '-', '2015-10-15 10:58:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1239', '197204131998022001', 'NIP BARU_197204131998022001.pdf', 'NIP BARU Lilis Siti Badriah', '-', '2015-10-15 10:58:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1240', '197204131998022001', 'SK_CPNS_1998.pdf', 'SK_CPNS_1998 Lilis Siti Badriah', '-', '2015-10-15 10:59:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1241', '197204131998022001', 'SK_LEKTOR_IIId_2010.pdf', 'SK_LEKTOR_IIId_2010 Lilis Siti Badriah', '-', '2015-10-15 10:59:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1242', '197204131998022001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING SKRIPSI_2013_2014 Lilis Siti Badriah', '-', '2015-10-15 11:01:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1243', '197204131998022001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Lilis Siti Badriah', '-', '2015-10-15 11:02:38');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1244', '197204131998022001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Lilis Siti Badriah', '-', '2015-10-15 11:03:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1245', '197204131998022001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Lilis Siti Badriah', '-', '2015-10-15 11:04:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1246', '197204131998022001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Lilis Siti Badriah', '-', '2015-10-15 11:05:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1247', '197204131998022001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Lilis Siti Badriah', '-', '2015-10-15 11:05:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1248', '197204131998022001', 'SK_PNS_1998.pdf', 'SK_PNS_1998 Lilis Siti Badriah', '-', '2015-10-15 11:06:20');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1249', '196303221989012001', 'KARPEG_131809265.pdf', 'KARPEG Neni Widayaningsih', '-', '2015-10-15 11:07:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1250', '196303221989012001', 'NIP BARU_196303221989012001.pdf', 'NIP BARU Neni Widyaningsih', '-', '2015-10-15 11:07:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1251', '196303221989012001', 'SK_CPNS_1989.pdf', 'SK_CPNS_1989 Neni Widyaningsih', '-', '2015-10-15 11:08:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1252', '196303221989012001', 'SK_LEKTOR_IIIb_2001.pdf', 'SK_LEKTOR_IIIb_2001 Neni Widyaningsih', '-', '2015-10-15 11:09:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1253', '196303221989012001', 'SK_M _REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Neni Widyaningsih', '-', '2015-10-15 11:11:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1254', '196303221989012001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Neni Widyaningsih', '-', '2015-10-15 11:11:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1255', '196303221989012001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Neni Widyaningsih', '-', '2015-10-15 11:12:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1256', '196303221989012001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Neni Widyaningsih', '-', '2015-10-15 11:13:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1257', '196303221989012001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Neni Widyaningsih', '-', '2015-10-15 11:16:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1258', '196303221989012001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Neni Widyaningsih', '-', '2015-10-15 11:17:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1259', '196303221989012001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Neni Widyaningsih', '-', '2015-10-15 11:18:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1260', '196303221989012001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Neni Widyaningsih', '-', '2015-10-15 11:19:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1261', '196303221989012001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Neni Widyaningsih', '-', '2015-10-15 11:20:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1262', '196303221989012001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Neni Widyaningsih', '-', '2015-10-15 11:20:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1263', '196303221989012001', 'SK_PNS_1990.pdf', 'SK_PNS_1990 Neni Widyaningsih', '', '2015-10-15 11:21:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1264', '196005291987032001', 'KARPEG_131662040.pdf', 'KARPEG Nunik Kadarwati', '-', '2015-10-15 11:22:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1265', '196005291987032001', 'NIP BARU_196005291987032001.pdf', 'NIP BARU Nunik Kadarwati', '-', '2015-10-15 11:22:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1266', '196005291987032001', 'SK_CPNS_1987.pdf', 'SK_CPNS_1987 Nunik Kadarwati', '', '2015-10-15 11:23:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1267', '196005291987032001', 'SK_LEKTOR KEPALA_IVa_2008.pdf', 'SK_LEKTOR KEPALA_IVa_2008 Nunik Kadarwati', '-', '2015-10-15 11:23:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1268', '196005291987032001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Nunik Kadarwati', '-', '2015-10-15 11:24:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1269', '196005291987032001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Nunik Kadarwati', '-', '2015-10-15 11:25:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1270', '196005291987032001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Nunik Kadarwati', '-', '2015-10-15 11:25:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1271', '196005291987032001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Nunik Kadarwati', '-', '2015-10-15 11:26:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1272', '196005291987032001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Nunik Kadarwati', '-', '2015-10-15 11:26:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1273', '196005291987032001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Nunik Kadarwati', '-', '2015-10-15 11:27:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1274', '196005291987032001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Nunik Kadarwati', '-', '2015-10-15 11:28:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1275', '196005291987032001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Nunik Kadarwati', '-', '2015-10-15 11:28:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1276', '196005291987032001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Nunik Kadarwati', '-', '2015-10-15 11:29:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1277', '196005291987032001', 'SK_PNS_1988.pdf', 'SK_PNS_1988 Nunik Kadarwati', '-', '2015-10-15 11:29:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1278', '195804011984031018', 'KARPEG_131404292.pdf', 'KARPEG Nurul Anwar', '-', '2015-10-15 11:30:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1279', '195804011984031018', 'NIP BARU_195804011984031018.pdf', 'NIP BARU Nurul Anwar', '-', '2015-10-15 11:30:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1280', '195804011984031018', 'SK_CPNS_1984.pdf', 'SK_CPNS_1984 Nurul Anwar', '-', '2015-10-15 11:31:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1281', '195804011984031018', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_IVa_2001 Nurul Anwar', '-', '2015-10-15 11:32:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1282', '195804011984031018', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013Nurul Anwar', '-', '2015-10-15 11:32:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1283', '195804011984031018', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Nurul Anwar', '-', '2015-10-15 11:33:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1284', '195804011984031018', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Nurul Anwar', '-', '2015-10-15 11:33:58');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1285', '195804011984031018', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Nurul Anwar', '-', '2015-10-15 11:34:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1286', '195804011984031018', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Nurul Anwar', '-', '2015-10-15 11:35:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1287', '195804011984031018', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Nurul Anwar', '-', '2015-10-15 11:36:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1288', '195804011984031018', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Nurul Anwar', '-', '2015-10-15 11:36:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1289', '195804011984031018', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Nurul Anwar', '-', '2015-10-15 11:37:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1290', '195804011984031018', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Nurul Anwar', '-', '2015-10-15 11:38:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1291', '195804011984031018', 'SK_PNS_1985.pdf', 'SK_PNS_1985 Nurul Anwar', '-', '2015-10-15 11:38:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1292', '195807251986011002', 'NIP BARU_195807251986011002.pdf', 'NIP BARU Oke Setiarso', '-', '2015-10-15 11:39:35');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1293', '195807251986011002', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Oke Setiarso', '-', '2015-10-15 11:40:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1294', '195807251986011002', 'SK_LEKTOR KEPALA_IVa_2011.pdf', 'SK_LEKTOR KEPALA_IVa_2011 Oke Setiarso', '-', '2015-10-15 11:40:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1295', '195807251986011002', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Oke Setiarso', '-', '2015-10-15 11:41:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1296', '195807251986011002', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Oke Setiarso', '-', '2015-10-15 11:42:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1297', '195807251986011002', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Oke Setiarso', '-', '2015-10-15 11:42:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1298', '195807251986011002', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Oke Setiarso', '-', '2015-10-15 11:43:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1299', '195807251986011002', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Oke Setiarso', '-', '2015-10-15 11:43:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1300', '195807251986011002', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Oke Setiarso', '-', '2015-10-15 11:44:40');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1301', '195807251986011002', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Oke Setiarso', '-', '2015-10-15 11:45:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1302', '195807251986011002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Oke Setiarso', '-', '2015-10-15 11:46:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1303', '195807251986011002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Oke Setiarso', '-', '2015-10-15 11:47:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1304', '195807251986011002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Oke Setiarso', '-', '2015-10-15 11:48:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1305', '195807251986011002', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Oke Setiarso', '-', '2015-10-15 11:48:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1306', '196306291989011001', 'KARPEG_131809263.pdf', 'KARPEG Rakhmat Priyono', '-', '2015-10-15 11:49:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1307', '196306291989011001', 'NIP BARU_196306291989011001.pdf', 'NIP BARU Rakhmat Priyono', '-', '2015-10-15 11:50:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1308', '196306291989011001', 'SK_CPNS_1989.pdf', 'SK_CPNS_1989 Rakhmat Priyono', '-', '2015-10-15 11:51:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1309', '196306291989011001', 'SK_LEKTOR_IIId_2010.pdf', 'SK_LEKTOR_IIId_2010 Rakhmat Priyono', '-', '2015-10-15 11:51:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1310', '196306291989011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Rakhmat Priyono', '-', '2015-10-15 11:52:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1311', '196306291989011001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Rakhmat Priyono', '-', '2015-10-15 11:53:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1312', '196306291989011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Rakhmat Priyono', '-', '2015-10-15 11:54:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1313', '196306291989011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Rakhmat Priyono', '-', '2015-10-15 11:55:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1314', '195807251986011002', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Oke Setiarso', '-', '2015-10-15 15:11:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1315', '195807251986011002', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Oke Setiarso', '-', '2015-10-15 15:16:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1316', '195807251986011002', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Oke Setiarso', '-', '2015-10-15 15:17:11');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1317', '195807251986011002', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Oke Setiarso', '-', '2015-10-15 15:17:44');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1318', '196306291989011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Rakhmat Priyono', '-', '2015-10-15 15:20:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1319', '196306291989011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Rakhmat Priyono', '-', '2015-10-15 15:22:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1320', '196306291989011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Rakhmat Priyono', '-', '2015-10-15 15:24:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1321', '196306291989011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', null, null, '2015-10-15 15:26:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1322', '196306291989011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Rakhmat Priyono', '-', '2015-10-15 15:28:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1323', '196306291989011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Rakhmat Priyono', '-', '2015-10-15 15:30:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1324', '196306291989011001', 'SK_PNS_1990.pdf', 'SK_PNS_1990 Rakhmat Priyono', '-', '2015-10-15 15:31:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1325', '198001232005012003', 'KARPEG_132306833.pdf', 'KARPEG Ratna Setyawati Gunawan', '-', '2015-10-15 15:32:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1326', '198001232005012003', 'NIP BARU_198001232005012003.pdf', 'NIP BARU Ratna Setyawati Gunawan', '-', '2015-10-15 15:33:29');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1327', '198001232005012003', 'SK_ASISTEN AHLI_IIIa_2006.pdf', 'SK_ASISTEN AHLI_IIIa_2006 Ratna Setyawati Gunawan', '-', '2015-10-15 15:34:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1328', '198001232005012003', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Ratna Setyawati Gunawan', '-', '2015-10-15 15:34:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1329', '198001232005012003', 'SK_M_REG_S1_GASAL_201.pdf', 'SK_M_REG_S1_GASAL_201 Ratna Setyawati Gunawan', '-', '2015-10-15 15:35:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1330', '198001232005012003', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013 _2014 Ratna Setyawati Gunawan', '-', '2015-10-15 15:37:21');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1331', '198001232005012003', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Ratna Setyawati Gunawan', '-', '2015-10-15 15:38:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1332', '198001232005012003', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Ratna Setyawati Gunawan ', '-', '2015-10-15 15:40:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1333', '198001232005012003', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Ratna Setyawati Gunawan', '-', '2015-10-15 15:41:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1334', '198001232005012003', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Ratna Setyawati Gunawan', '-', '2015-10-15 15:43:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1335', '198001232005012003', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Ratna Setyawati Gunawan', '-', '2015-10-15 15:44:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1336', '198001232005012003', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Ratna Setyawati Gunawan', '-', '2015-10-15 15:46:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1337', '198001232005012003', 'SK_PNS_2006.pdf', 'SK_PNS_2006 Ratna Setyawati Gunawan', '-', '2015-10-15 15:46:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1338', '195607121985111001', 'KARPEG_131484889.pdf', 'KARPEG Rusmusi IMP', '-', '2015-10-15 15:47:47');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1339', '195607121985111001', 'NIP BARU_195607121985111001.pdf', 'NIP BARU Rusmusi IMP', '-', '2015-10-15 15:48:14');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1340', '195607121985111001', 'SK_CPNS_1985.pdf', 'SK_CPNS_1985 Rusmusi IMP', '-', '2015-10-15 15:48:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1341', '195607121985111001', 'SK_LEKTOR_IIIb_2001.pdf', 'SK_LEKTOR_IIIb_2001 Rusmusi IMP', '-', '2015-10-15 15:49:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1342', '195607121985111001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Rusmusi IMP', '-', '2015-10-15 15:50:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1343', '195607121985111001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Rusmusi IMP', '-', '2015-10-15 15:51:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1344', '195607121985111001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Rusmusi IMP', '-', '2015-10-15 15:52:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1345', '195607121985111001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Rusmusi IMP', '-', '2015-10-15 15:53:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1346', '195607121985111001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Rusmusi IMP', '-', '2015-10-15 15:54:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1347', '195607121985111001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Rusmusi IMP', '-', '2015-10-15 15:54:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1348', '195607121985111001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Rusmusi IMP', '-', '2015-10-15 15:56:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1349', '195607121985111001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Rusmusi IMP', '-', '2015-10-15 15:57:10');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1350', '195607121985111001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Rusmusi IMP', '-', '2015-10-15 15:58:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1351', '195607121985111001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Rusmusi IMP', '-', '2015-10-15 15:58:52');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1352', '195607121985111001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Rusmusi IMP', '-', '2015-10-15 15:59:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1353', '195502141980031019', 'KARPEG_130810181.pdf', 'KARPEG Sri Nugroho PR', '-', '2015-10-15 16:00:39');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1354', '195502141980031019', 'NIP BARU_195502141980031019.pdf', 'NIP BARU Sri Nugroho PR', '-', '2015-10-15 16:01:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1355', '195502141980031019', 'SK_CPNS_1980.pdf', 'SK_CPNS_1980 Sri Nugroho PR', '-', '2015-10-15 16:02:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1356', '195502141980031019', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_IVa_2001 Sri Nugroho PR', '-', '2015-10-15 16:03:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1357', '195502141980031019', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Sri Nugroho PR', '-', '2015-10-15 16:04:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1358', '195502141980031019', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Sri Nugroho PR', '-', '2015-10-15 16:04:56');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1359', '195502141980031019', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sri Nugroho PR', '-', '2015-10-15 16:06:09');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1360', '195502141980031019', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', null, null, '2015-10-16 08:03:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1361', '195502141980031019', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Sri Nugroho PR', '-', '2015-10-16 08:04:57');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1362', '195502141980031019', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sri Nugroho PR', '-', '2015-10-16 08:05:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1363', '195502141980031019', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sri Nugroho PR', '-', '2015-10-16 08:06:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1364', '195502141980031019', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Sri Nugroho PR', '-', '2015-10-16 08:07:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1365', '195502141980031019', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sri Nugroho PR', '-', '2015-10-16 08:07:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1366', '195502141980031019', 'SK_PNS_1981.pdf', 'SK_PNS_1981 Sri Nugroho PR', '-', '2015-10-16 08:08:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1367', '195312141986011001', 'KARPEG_131572341.pdf', 'KARPEG Sudjarwanto', '-', '2015-10-16 08:09:19');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1368', '195312141986011001', 'NIP BARU_195312141986011001.pdf', 'NIP BARU Sudjarwanto', '-', '2015-10-16 08:09:45');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1369', '195312141986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Sudjarwanto', '-', '2015-10-16 08:10:12');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1370', '195312141986011001', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_IVa_2001 Sudjarwanto', '-', '2015-10-16 08:11:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1371', '195312141986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Sudjarwanto', '-', '2015-10-16 08:11:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1372', '195312141986011001', 'SK_M_REG_D3_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Sudjarwanto', '-', '2015-10-16 08:12:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1373', '195312141986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Sudjarwanto', '-', '2015-10-16 08:13:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1374', '195312141986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sudjarwanto', '-', '2015-10-16 08:14:30');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1375', '195312141986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Sudjarwanto', '-', '2015-10-16 08:15:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1376', '195312141986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Sudjarwanto', '-', '2015-10-16 08:15:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1377', '195312141986011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sudjarwanto', '-', '2015-10-16 08:16:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1378', '195312141986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sudjarwanto', '-', '2015-10-16 08:17:26');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1379', '195312141986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Sudjarwanto', '-', '2015-10-16 08:18:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1380', '195312141986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sudjarwanto', '-', '2015-10-16 08:18:49');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1381', '195312141986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sudjarwanto', '-', '2015-10-16 08:56:00');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1382', '195312141986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Sudjarwanto', '-', '2015-10-16 08:56:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1383', '197807232005011001', 'KARPEG_132308690.pdf', 'KARPEG Suharno', '-', '2015-10-16 08:57:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1384', '197807232005011001', 'NIP BARU_197807232005011001.pdf', 'NIP BARU Suharno', '-', '2015-10-16 08:58:16');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1385', '197807232005011001', 'SK_CPNS_2005.pdf', 'SK_CPNS_2005 Suharno', '-', '2015-10-16 08:58:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1386', '197807232005011001', 'SK_LEKTOR_IIIa_2009.pdf', 'SK_LEKTOR_IIIa_2009 Suharno', '-', '2015-10-16 08:59:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1387', '197807232005011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Suharno', '-', '2015-10-16 08:59:51');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1388', '197807232005011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Suharno', '-', '2015-10-16 09:00:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1389', '197807232005011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Suharno', '-', '2015-10-16 09:00:53');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1390', '197807232005011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Suharno', '-', '2015-10-16 09:01:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1391', '197807232005011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Suharno', '-', '2015-10-16 09:02:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1392', '197807232005011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Suharno', '-', '2015-10-16 09:03:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1393', '197807232005011001', 'SK_PNS_2006.pdf', 'SK_PNS_2006 Suharno', '-', '2015-10-16 09:03:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1394', '195609101986011001', 'KARPEG_131572342.pdf', 'KARPEG Sukiman', '-', '2015-10-16 09:05:04');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1395', '195609101986011001', 'NIP BARU_195609101986011001.pdf', 'NIP BARU Sukiman', '-', '2015-10-16 09:07:42');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1396', '195609101986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Sukiman', '-', '2015-10-16 09:08:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1397', '195609101986011001', 'SK_LEKTOR_IIId_2001.pdf', 'SK_LEKTOR_IIId_2001 Sukiman', '-', '2015-10-16 09:10:41');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1398', '195609101986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Sukiman', '-', '2015-10-16 09:11:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1399', '195609101986011001', 'SK_M_REG_D3_1_GASAL_2013.pdf', 'SK_M_REG_D3_GASAL_2013 Sukiman', '-', '2015-10-16 09:12:03');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1400', '195609101986011001', 'SK_M_REG_D3_2_GASAL_2013.pdf', 'SK_M_REG_D3_2_GASAL_2013 Sukiman', '-', '2015-10-16 09:12:50');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1401', '195609101986011001', 'SK_M_REG_S1_GASAL 2013.pdf', 'SK_M_REG_S1_GASAL_2013 Sukiman', '-', '2015-10-16 09:13:27');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1402', '195609101986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Sukiman', '-', '2015-10-16 09:14:17');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1403', '195609101986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Sukiman', '-', '2015-10-16 09:17:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1404', '195609101986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Sukiman', '-', '2015-10-16 09:17:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1405', '195609101986011001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Sukiman', '-', '2015-10-16 09:18:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1406', '195609101986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Sukiman', '-', '2015-10-16 09:18:54');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1407', '195609101986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Sukiman', '-', '2015-10-16 09:19:28');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1408', '195609101986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Sukiman', '-', '2015-10-16 09:20:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1409', '195609101986011001', 'SK_PNS_1987.pdf', 'SK_PNS_1987 Sukiman', '-', '2015-10-16 09:21:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1410', '195305121980032002', 'NIP BARU_195305121980032002.pdf', 'NIP BARU Sumiyem', '-', '2015-10-16 09:23:06');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1411', '195305121980032002', 'SK_CPNS_1980.pdf', 'SK_CPNS_1980 Sumiyem', '-', '2015-10-16 09:23:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1412', '195305121980032002', 'SK_LEKTOR KEPALA_IVa_2001.pdf', 'SK_LEKTOR KEPALA_IVa_2001 Sumiyem', '-', '2015-10-16 09:24:32');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1413', '195305121980032002', 'SK_M_REG_D3_1_GASAL 2013.pdf', 'SK_M_REG_D3_1_GASAL_2013 Sumiyem', '-', '2015-10-16 09:26:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1414', '195305121980032002', 'SK_M_REG_D3_2_GASAL_2013.pdf', 'SK_M_REG_D3_2_GASAL_2013 Sumiyem', '-', '2015-10-16 09:26:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1415', '195305121980032002', 'SK_PNS_1991.pdf', 'SK_PNS_1991 Sumiyem', '-', '2015-10-16 09:27:08');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1416', '195705281986011001', 'KARPEG_131572343.pdf', 'KARPEG Supadi', '-', '2015-10-16 09:28:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1417', '195705281986011001', 'NIP BARU_195705281986011001.pdf', 'NIP BARU Supadi', '-', '2015-10-16 09:28:25');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1418', '195705281986011001', 'SK_CPNS_1986.pdf', 'SK_CPNS_1986 Supadi', '-', '2015-10-16 09:28:48');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1419', '195705281986011001', 'SK_LEKTOR_IIId_2012.pdf', 'SK_LEKTOR_IIId_2012 Supadi', '-', '2015-10-16 09:29:23');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1420', '195705281986011001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Supadi', '-', '2015-10-16 09:30:31');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1421', '195705281986011001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Supadi ', '-', '2015-10-16 09:32:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1422', '195705281986011001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2014 Supadi', '-', '2015-10-16 09:32:43');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1423', '195705281986011001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Supadi', '-', '2015-10-16 09:33:13');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1424', '195705281986011001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Supadi', '-', '2015-10-16 09:34:01');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1425', '195705281986011001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Supadi', '-', '2015-10-16 09:34:34');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1426', '195705281986011001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Supadi', '-', '2015-10-16 09:35:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1427', '195705281986011001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Supadi', '-', '2015-10-16 09:37:33');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1428', '195705281986011001', 'SK_PNS_1987.pdf', 'SK_CPNS_1987 Supadi', '-', '2015-10-16 09:38:02');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1429', '195311251983121001', 'NIP BARU_195311251983121001.pdf', 'NIP BARU Suprapto', '-', '2015-10-16 09:38:46');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1430', '195311251983121001', 'SK_CPNS_1983.pdf', 'SK_CPNS_1983 Suprapto', '-', '2015-10-16 09:43:07');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1431', '195311251983121001', 'SK_LEKTOR_KEPALA_IVa_2001.pdf', 'SK_LEKTOR_KEPALA_IVa_2001 Suprapto', '-', '2015-10-16 09:44:24');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1432', '195311251983121001', 'SK_M_INTER_S1_GASAL_2013.pdf', 'SK_M_INTER_S1_GASAL_2013 Suprapto', '-', '2015-10-16 09:44:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1433', '195311251983121001', 'SK_M_REG_S1_GASAL_2013.pdf', 'SK_M_REG_S1_GASAL_2013 Suprapto', '-', '2015-10-16 09:45:36');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1434', '195311251983121001', 'SK_PEMBIMBING AKADEMIK_2013_2014.pdf', 'SK_PEMBIMBING AKADEMIK_2013_2013 Suprapto', '-', '2015-10-16 09:46:18');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1435', '195311251983121001', 'SK_PEMBIMBING SKRIPSI_109_2013.pdf', 'SK_PEMBIMBING SKRIPSI_109_2013 Suprapto', '-', '2015-10-16 09:46:55');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1436', '195311251983121001', 'SK_PEMBIMBING SKRIPSI_110_2013.pdf', 'SK_PEMBIMBING SKRIPSI_110_2013 Suprapto', '-', '2015-10-16 09:47:59');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1437', '195311251983121001', 'SK_PEMBIMBING SKRIPSI_111_2013.pdf', 'SK_PEMBIMBING SKRIPSI_111_2013 Suprapto', '-', '2015-10-16 09:48:37');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1438', '195311251983121001', 'SK_PENGUJI PENDADARAN_109_2013.pdf', 'SK_PENGUJI PENDADARAN_109_2013 Suprapto', '-', '2015-10-16 09:49:22');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1439', '195311251983121001', 'SK_PENGUJI PENDADARAN_110_2013.pdf', 'SK_PENGUJI PENDADARAN_110_2013 Suprapto', '-', '2015-10-16 09:50:05');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1440', '195311251983121001', 'SK_PENGUJI PENDADARAN_111_2013.pdf', 'SK_PENGUJI PENDADARAN_111_2013 Suprapto', '-', '2015-10-16 09:51:15');
INSERT INTO `tbl_dokumen_dosen` VALUES ('1441', '195311251983121001', 'SK_PNS_1985.pdf', 'SK_PNS_1985 Suprapto', '-', '2015-10-16 10:16:52');

-- ----------------------------
-- Table structure for tbl_dosen
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dosen`;
CREATE TABLE `tbl_dosen` (
  `ID_JURUSAN` int(11) DEFAULT NULL,
  `ID_DOSEN` int(11) NOT NULL AUTO_INCREMENT,
  `ID_GOLONGAN` int(11) DEFAULT NULL,
  `ID_JABATAN` int(11) DEFAULT NULL,
  `ID_STATUS_KEP` int(11) DEFAULT NULL,
  `NIP_DOSEN` varchar(35) DEFAULT NULL,
  `GELAR_AKHIR` varchar(10) DEFAULT NULL,
  `GELAR_AWAL` varchar(10) DEFAULT NULL,
  `NAMA_DOSEN` varchar(75) DEFAULT NULL,
  `PENDIDIKAN_TERTINGGI` varchar(15) DEFAULT NULL,
  `NIDN` varchar(50) DEFAULT NULL,
  `TMP_LAHIR` varchar(50) DEFAULT NULL,
  `TGL_LAHIR` date DEFAULT NULL,
  `J_KEL` int(11) DEFAULT NULL,
  `AGAMA` int(11) DEFAULT NULL,
  `ALAMAT` text,
  `NO_KARPEG` varchar(50) DEFAULT NULL,
  `TGL_MASUK` date DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `FOTO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_DOSEN`),
  KEY `FK_RELATIONSHIP_2` (`ID_GOLONGAN`),
  KEY `FK_RELATIONSHIP_3` (`ID_JABATAN`),
  KEY `FK_RELATIONSHIP_9` (`ID_STATUS_KEP`),
  CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`ID_GOLONGAN`) REFERENCES `tbl_golongan` (`ID_GOLONGAN`),
  CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_JABATAN`) REFERENCES `tbl_jabatan` (`ID_JABATAN`),
  CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`ID_STATUS_KEP`) REFERENCES `tbl_status_kepegawaian` (`ID_STATUS_KEP`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_dosen
-- ----------------------------
INSERT INTO `tbl_dosen` VALUES ('1', '1', '2', '2', '1', '196707051997022001', 'SE, M.Si', '-', 'Retno Widuri', 'S2', '0005076706', 'Purwokerto', '1967-07-05', '2', '3', 'Purwokerto', 'G.312989', '1997-02-01', '123456789', '-');
INSERT INTO `tbl_dosen` VALUES ('2', '2', '5', '3', '1', '196201111988032001', 'M.Si', 'Dra.', 'Dijan Rahajuni', 'S-2', '0011016204', 'Purwokerto', '1962-01-11', '2', '3', 'Ds. Kebocoran Rt.04/4 Kecamatan Kedung Banteng Kabupaten Banyumas', '131764921/E.491762', '1988-03-21', '19620111', '-');
INSERT INTO `tbl_dosen` VALUES ('1', '3', '7', '3', '1', '196003301985031006', 'M.S', 'Dr', 'Pramono Hari Adi', 'S3', '0030036008', 'Purbalingga', '1960-03-30', '1', '3', 'Purwokerto', 'C. 0929407', '1985-03-01', '19600330', '');
INSERT INTO `tbl_dosen` VALUES ('3', '4', '1', '1', '1', '198110262005012001', 'SE., M.Acc', '', 'Rini Widianingsih', 'S2', '0026108105', 'Kebumen', '1981-10-26', '2', '3', 'Purwokerto', 'M. 048514', '2005-01-01', '19811026', '');
INSERT INTO `tbl_dosen` VALUES ('2', '5', '2', '5', '1', '198504102014041001', 'SE, M.Si', '', 'Bambang', 'S2', '', 'Cirebon', '1985-07-01', '1', '3', 'Setu Kulon, Weru - Cirebon Jawa Barat', '', '2014-04-01', '19850410', '');
INSERT INTO `tbl_dosen` VALUES ('2', '6', '3', '2', '1', '195607121985111001', 'M.Si', 'Drs', 'Rusmusi IMP', '', '0012075611', 'Palembang', '1956-07-12', '1', null, 'Jl Kolonel Sugiri No 48 Purwokerto', 'C.0920095', '1985-11-01', '19560712', '');
INSERT INTO `tbl_dosen` VALUES ('3', '7', '2', '1', '1', '198111252009122004', 'SE,M.Si', '', 'Widyahayu Warmmeswara Kusumastati', 'S2', '0025118102', 'Tulungagung', '1981-11-25', '2', '3', 'Purwokerto', 'P.663089', '2009-11-01', '19811125', '');
INSERT INTO `tbl_dosen` VALUES ('1', '11', '8', '3', '1', '195709261983031002', 'MM', 'Drs.', 'Sigit Wibowo Dwi Nugroho', 'S2', '0027075403', 'Bandung', '1957-09-26', '1', '3', '', 'C.0312846', '1983-03-01', '19570926', '');
INSERT INTO `tbl_dosen` VALUES ('1', '66', '8', '4', '1', '196108071986011001', 'MS', 'Prof.Dr', 'Agus Suroso', 'S3', '0007086106', 'Banyumas', '1961-08-07', '1', '3', 'Perum Bancar Kembar Blok V/3 Purwokerto 53121', 'C.0920158', '1987-08-01', '19610807', '');
INSERT INTO `tbl_dosen` VALUES ('1', '67', '7', '3', '1', '195305111986011001', 'MM,Ak', 'Dr.', 'Riswan', 'S3', '0011055302', 'Kebanggan', '1953-05-11', '1', '3', 'Jl. Kebanggan Rt.05/04 Kec. Sumbang Purwokerto Utara', 'C.0920161', '1986-01-01', '19530511', '');
INSERT INTO `tbl_dosen` VALUES ('1', '69', '6', '4', '1', '197404011998021001', 'MM', 'Dr.', 'Suliyanto', 'S3', '0001047406', 'Banjarnegara', '1974-04-01', '1', '3', 'Jl. Jati Sari gang Cendana Rt. 05/5 No. 1510 Purwokerto Utara', 'H.034712', '1999-04-01', '19740401', '');
INSERT INTO `tbl_dosen` VALUES ('1', '70', '6', '3', '1', '195407271981031005', 'M.Sc', 'Dr.', 'Haryadi', 'S3', '0027075403', 'Kutoarjo', '1954-07-27', '1', '3', 'Jl.Kalpataru VII No. 19 Perum Purwosari Purwokerto Utara', 'C.0268248 ', '1980-03-01', '19540727', '');
INSERT INTO `tbl_dosen` VALUES ('1', '71', '5', '3', '1', '195304201980032005', 'M.Si', 'Dra.', 'Dwiwiyati Astogini', 'S2', '0020045304', 'Purwokerto', '1953-04-20', '2', '3', 'Perum. Karang Klesem Gg. 1 No. 41 Purwokerto', 'C.0181358', '1981-03-01', '19530420', '');
INSERT INTO `tbl_dosen` VALUES ('1', '72', '5', '3', '1', '195906021985031002', 'MM', 'Drs.', 'Bambang Sunarko', 'S2', '0002065904', 'Sokaraja', '1959-06-02', '1', '3', 'Jl. Adipura No. 148 Rt. 4/6 Perum Purwosari Purwokerto utara', 'C.0698177', '1985-03-01', '19590602 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '73', '5', '3', '1', '195811071985032001', 'MM', 'Dra. ', 'Titi Nurfitri', 'S2', '0007115807', 'Purbalingga', '1958-11-07', '2', '3', 'Bancar Kembar Permai Blok II No. 1 jl. Cendana barat No. 2 Purwokerto', 'C.0698171', '1985-03-01', '19581107 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '74', '5', '3', '1', '196207191989011001', 'ME', 'Dr.', 'Sudarto', 'S3', '0019076206', 'Purwokerto', '1962-07-19', '1', '3', 'Perum Griya Satria Blok C No. 04 Rt.03/06 Bancar Kembar Purwokerto 53121', 'E.505372', '1989-01-01', '19620719', '');
INSERT INTO `tbl_dosen` VALUES ('1', '75', '5', '3', '1', '195305291982021001', 'M.Si', 'Drs.', 'Karsidi', 'S2', '0029055305', 'Bantul', '1953-05-29', '1', '3', 'Jl. Balai Kelurahan no.3 Arcawinangun RT 03/XI Purwokerto,53113', 'C.0301224', '1982-02-01', '19530529', '');
INSERT INTO `tbl_dosen` VALUES ('1', '76', '5', '3', '1', '196001311989031002', 'M.MS', 'Dr.', 'Ade Banani', 'S3', '0031016004', 'Majalengka', '1960-01-31', '1', '3', 'Jl. Adipura IV No. 146 Perum Purwosari Purwokerto', 'E.500228', '1983-03-01', '19600131', '');
INSERT INTO `tbl_dosen` VALUES ('1', '77', '5', '3', '1', '195409101989012001', 'Ph.D.MM', '', 'Sri Murni Setyawati', 'S3', '0010095408', 'Purwokerto', '1954-09-10', '2', '4', 'Jl.Gunung Kelud No. 6 Pabuaran Purwokerto Utara', 'E.505364', '1989-01-01', '19540910', '');
INSERT INTO `tbl_dosen` VALUES ('1', '78', '5', '3', '1', '195909091989011001', 'MM', 'Drs.', 'Tohir', 'S2', '0009095915', 'Pabuwaran-Bms', '1959-09-09', '1', '3', 'Jl, Sunan Ampel No. 08 Rt. 03/4 kel. Pabuaran Purwokerto Utara', 'E.505374', '1989-01-01', '19590909', '');
INSERT INTO `tbl_dosen` VALUES ('1', '79', '5', '3', '1', '197012292003122001', 'Ph.D.M.Sc', '', 'Wiwiek Rabiatul Adawiyah', 'S3', '0029127004', 'Sumbawa', '1970-12-29', '2', '3', 'Desa Tambak Sogra Rt. 02/05 Kec. Sumbang Purwokerto', 'L.168357', '2003-12-01', '19701229', '');
INSERT INTO `tbl_dosen` VALUES ('1', '80', '5', '3', '1', '197011251998022001', 'SE,M.Si', '', 'Sri Lestari', 'S2', '0025117005', 'Banyumas', '1970-11-25', '2', '3', 'Perum Griya satria Indah Bancar Kembar BlokO No. 30 Rt. 01/1 Purwokerto Utara 53125', 'H.068448', '1998-02-01', '19701125', '');
INSERT INTO `tbl_dosen` VALUES ('1', '81', '5', '3', '1', '195409091986011001', 'M.Si', 'Drs.', 'Sumarsono', 'S2', '0009095405', 'Gumelar', '1954-09-09', '1', '3', 'Jl. Warga Bakti III/58 Kec Purwokerto Utara Rt 5/2 Purwokerto', 'C.0920165', '1986-01-01', '19540909 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '82', '6', '2', '1', '195502261984121001', 'M.S', 'Drs.', 'Eling Purwanto Jati', 'S2', '0026025503', 'Banjarnegara', '1955-02-26', '1', '3', 'Jl. Gunung Merbabu gg. Gunung Ijen No.1 Rt.03/1 Pabuaran Purwokerto Utara', 'C.0669671', '1984-12-01', '19550226 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '83', '4', '2', '1', '195205071980031002', 'M.Sc', 'Drs.', 'Yayat Giyatno', 'S2', '0007055203', 'Yogyakarta', '1952-05-07', '1', null, 'Jl. Letjend Kol Sumarto gang XIVNo. 22 Rt. 5/4 Purwanegara Purwokerto', 'C.0181333', '1980-03-01', '19520507 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '84', '4', '2', '1', '195310231986011001', 'M.Si', 'Drs.', 'Untung Kumorohadi', 'S2', '0023105303', 'Kupang-Timor', '1953-10-23', '1', '3', 'Jl. Soka Jati No. 30 Bantar Soka Purwokerto Barat', ' C.0920163', '1986-01-01', '19531023 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '85', '4', '2', '1', '195610081985032002', 'M.Si', 'Dra.', 'Sri Martini', 'S2', '0008105607', 'Yogyakarta', '1956-10-08', '2', '3', 'Jl. Sersan Sardiman No. 7 Rt.1/2 Karang Klesem Purwokerto', 'C.0698189', '1985-03-01', '19561008 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '86', '4', '2', '1', '195702241986012001', 'M.Si', 'Dra.', 'Suci Indriati', 'S2', '0024025703', 'Cilacap', '1957-02-24', '2', '3', 'Jl. Arsantaka No. 2 Arca Winangun Purwokerto', 'C.0920157', '1986-01-01', '19570224 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '87', '4', '2', '1', '195511201988031002', 'M.Si', 'Drs', 'Arifin Mukti', 'S2', '0020115504', 'Purwokerto', '1955-11-20', '1', '3', 'Jl. Pasir Raja No.20 Bantar Soka II/ 6 Purwokerto 53133', 'E.491756', '1988-03-01', '19551120 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '88', '4', '2', '1', '195809181986011001', 'MSIE', 'Drs.', 'Jaryono', 'S2', '0018095808', 'Cilacap', '1958-09-18', '1', '3', 'Jl. Warga Bakti I/11 Kec Purwokerto Utara Rt 5/2 Purwokerto', 'C.0920156', '1986-01-01', '19580918 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '89', '4', '2', '1', '197308181999032001', 'SE,M.Si', '', 'Siti Zulaikha Wulandari', 'S2', '0018087301', 'Banjarnegara', '1973-08-18', '2', '3', 'Perum Bancar Kembar Permai Blok VII / 5 Jl. Cendana Tengah Rt.2/10 Purwokerto 53123', 'J.007985', '1999-03-01', '19730818 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '90', '4', '2', '1', '197511191999032003', 'SE,MM', '', 'Weni Novandari', 'S2', '0019117503', 'Purwokerto', '1975-11-19', '2', '3', 'Jl. Sunan Bonang No. 31 Tambak sari Rt. 2/3 Purwokerto', 'M.049834', '1999-03-01', '19730818 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '91', '4', '2', '1', '197704102006041001', 'SE,M.Si', '', 'Najmudin', 'S2', '0010047702', 'Serang', '1977-04-10', '1', '3', 'Lemberang Rt. 01/2 Sokaraja Banyumas', 'M. 264650', '2006-04-01', '19770410 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '92', '4', '2', '1', '197808242005011003', 'SE,M.Sc', '', 'Rahab', 'S2', '0024087802', 'Kebumen', '1978-08-24', '1', '3', 'Perum Sogra Puri Indah Blok D No. 10 Tambak Sogra Banyumas', 'M.050316', '2005-01-01', '19780824 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '93', '3', '2', '1', '196110311986011001', 'M.Sc,Ph.D', 'Drs.', 'Achmad Sudjadi', 'S3', '0031106109', 'Magelang', '1961-10-31', '1', '3', 'Jl. Adipura V No. 137 Perum Purwosari Indah Purwokerto Utara 53151', 'C.0920160', '1986-01-01', '19611031 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '94', '3', '2', '1', '197501302000122004', 'SE,M.Si', '', 'Dwita Darmawati', 'S2', '0030017506', 'Klaten', '1975-01-30', '2', '3', 'Perum Griya Satria Indah Sumampir Blok H No. 4 Rt. 01/1 Purwokerto Utara 53125', 'L.021037', '2000-12-01', '19750130 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '95', '3', '2', '1', '198305242008122003', 'SE,M.Si', '', 'Sulistyandari', 'S2', '0014058303', 'Brebes', '1983-05-24', '2', '3', 'Jl. Gunung Slamet No.6 Rt, 02/6 Grendeng Purwokerto Utara 53122,Desa Kaliwadas Rt.01/2 Bumiayu Brebes', 'P.436015', '2008-12-01', '19830524 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '96', '3', '2', '1', '198106232006041001', 'M.Si', 'Dr.', 'Adi Indrayanto', 'S3', '0023068102', 'Indramayu', '1981-06-23', '1', '3', 'Purwokerto', 'M. 264686', '2006-04-01', '19810623 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '97', '2', '2', '1', '198110162003121003', 'SE,M.Sc', '', 'Dian Purnomo Jati', 'S2', '0016108101', 'Yogyakarta', '1981-11-16', '1', '3', 'Jl. Soga No 32 Yogyakarta', 'L.168368', '2003-12-01', '19811016 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '98', '2', '2', '1', '197901172006042003', 'SE,M.Sc', '', 'Ekaningtyas Widiastuti', 'S2', '0017017903', 'Purwokerto', '1979-01-17', '2', '3', 'Perum Dosen Jl. Kampus No 32 Grendeng Purwokerto Utara', 'M. 264684', '2006-04-01', '19790117 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '100', '2', '1', '1', '197912152006041002', 'SE,M.Si', '', 'Ratno Purnomo', 'S3', '0015127903', 'Jakarta', '1979-12-15', '1', '3', 'Jl. Beringin Raya No.103 Perum Bumi Tanjung Elok Purwokerto', 'M. 264638', '2006-04-01', '19791215 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '101', '2', '1', '1', '197402192005011001', 'SE, M.Si', '', 'Refius Pradipta Setyanto', 'S2', '0019027401', 'Purwokerto', '1974-02-19', '1', '3', 'Perum Griya Satria I Blok E 4 Sumampir Purwokerto Utara', 'M.050317', '2005-01-01', '19740219 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '102', '2', '1', '1', '197701072008121001', 'SE,M.Si', '', 'Ary Yunanto', 'S2', '0007017707', 'Banyumas', '1977-01-07', '1', '3', 'Sumampir, Purwokerto', 'P.663088', '2008-12-01', '19770107 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '103', '2', '1', '1', '197610122009121002', 'SE,MAB', '', 'Daryono', 'S2', '0012107607', 'Magelang', '1976-10-12', '1', '3', 'Purwokerto', 'P. 663097', '2009-12-01', '19761012 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '104', '2', '1', '1', '198303252009122004', 'SE,M.M', '', 'Sri Retno Handayani', 'S2', '0025038304', 'Semarang', '1983-03-25', '2', '3', 'Purwokerto', 'P. 663096', '2009-12-01', '19830325 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '105', '2', '1', '1', '198502182009122008', 'SE,M.Si', '', 'Intan Shaferi', 'S2', '0018028501', 'Purwokerto', '1985-02-18', '2', '3', 'Sokaraja', 'P. 663094', '2009-12-01', '19850218 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '106', '2', '1', '1', '197909302009122002', 'SE,M.Si', '', 'Ade Irma Anggaraeni', 'S2', '0030097904', 'Palu', '1979-09-30', '2', '3', 'Jl. Soka Jati Perum Pemda No. 109 Purwokerto', 'P. 663093', '2009-12-01', '19790930 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '107', '2', '1', '1', '198310122009122003', 'SE,MBA', '', 'Alisa Tri Nawarini', 'S2', '0012108301', 'Cilacap', '1983-10-12', '2', '3', 'Jl. Tugu Utara No. 12 Rt. 03/3 Sampang Cilacap', 'P.663095', '2009-12-01', '19831012 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '108', '2', '1', '1', '198211142010121007', 'SE,M.Sc', '', 'Rio Dhani Laksana', 'S2', '0014118203', 'Yogyakarta', '1982-11-14', '1', '3', 'Sumampir, Purwokerto', 'Q.145534', '2010-12-01', '19821114 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '109', '2', '1', null, '197802122010012002', 'SE,M.Si', '', 'Lusi Suwandani', null, '0012027803', 'Banyumas', '0000-00-00', '2', '3', 'Purwokerto', 'Q. 051260', null, null, null);
INSERT INTO `tbl_dosen` VALUES ('1', '110', '2', '1', '1', '198608192010122007', 'SE,M.Si', '', 'Larisa Pradisti', 'S2', '0019088601', 'Purwokerto', '1986-08-19', '2', '3', 'Purwokerto', 'Q. 051261', '2010-12-01', '19860819 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '111', '1', '1', '1', '195408141986011001', 'M.Si', 'Drs.', 'Suwaryo', 'S2', '0014085405', 'Purwokerto', '1954-08-14', '1', '4', ' Gang Kenanga No. 24 Rt.5/2 Kober kec Purwokerto Barat', 'C.0920162', '1986-01-01', '19540814 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '112', '1', '1', '1', '197701242005012004', 'SE,M.Si', '', 'Devani Laksmi Indyastuti', 'S2', '0024017702', 'Yogyakarta', '1977-01-24', '2', '3', 'Perum Purwosari No. 84 Rt.01/4 kec Baturraden Purwokerto Utara', 'M.050369', '2005-01-01', '19770124 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '113', '2', '5', '1', '198504152014042001', 'SE,M.Si', 'SE', 'Meutia Karunia Dewi', 'S2', '-', 'Cilacap', '1985-04-15', '2', '3', 'Purwokerto', '-', '2014-04-01', '19850415 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '114', '2', '5', '1', '198810252014042001', 'S.Pd,M.Pd', '', 'Lina Rifda Naufalin', 'S2', '', 'Jepara', '1988-10-25', '2', '3', 'Purwokerto', '', '2014-04-01', '19881025 ', '');
INSERT INTO `tbl_dosen` VALUES ('1', '115', '2', '5', '1', '199009102014041001', 'SE,M.Si', '', 'Candra Suparno', 'S2', '', 'Garut', '1990-09-10', '1', '3', 'Purwokerto', '', '2014-04-01', '19900910 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '117', '5', '4', '1', '196108281987031012', 'M.Acc,Ak', 'Prof.Dr', 'Bambang Agus Pramuka', 'S3', '', 'Purworejo', '1961-08-28', '1', '3', 'Desa Tambak Sogra Rt. 02/05 Kec. Sumbang Purwokerto', 'E.208485', '1987-03-01', '19610828 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '118', '6', '3', '1', '195208121980031002', 'MM,Ak', 'Drs', 'Havid Sularso', 'S2', '0012085203', 'Purwokerto', '1952-08-12', '1', '3', 'Perum. Karang Klesem Gg. 1 No. 41 Purwokerto', 'C.0269902', '1980-03-01', '19520812 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '119', '5', '3', '1', '195702201989031001', 'M.Si,Ak', 'Drs', 'Amber Lumbantoruan', 'S2', '0020025703', 'Pergaulan', '1957-02-20', '1', '4', 'Jl. Kaung Picis No. 28 Rt. 01/08 Sukaluyu Bandung Jabar', 'E.500224', '1989-03-01', '19570220 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '120', '5', '3', '1', '196103221990021001', 'M.Si,Ak', 'Dr', 'Eko Hariyanto', 'S3', '', 'Purworejo', '1961-03-22', '1', '3', '', 'E.896863', '1990-02-01', '19610322 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '121', '5', '3', '1', '195305191989031001', 'M.Si, Ak', 'Drs.', 'Edward Kanam Sinoeraya', 'S2', '0019055303', 'Sarinembah', '1953-05-19', '1', '4', 'Jl. Sekeloa Selatan I No. 223 Rt. 01/15 Bandung', 'E.500223', '1989-03-01', '19530519 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '122', '5', '3', '1', '195206101990021001', 'M.Si,Ak', 'Drs', 'Halomoan Ompusunggu', '', '0010065207', 'Jawatongah', '1952-06-10', '1', '4', 'Jl. Rereng Manis No. 17 Rt.08/11 Sukaluyung Bandung Jawa Barat', 'E.849141', '1990-02-01', '19520610 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '123', '5', '3', '1', '195905121986011001', 'MM,Ak', 'Drs', 'Rasyid Mei Mustafa', 'S2', '0012055910', 'Semarang', '1959-05-12', '1', '3', 'Perum Bancarkembar Permai Blok IV No 6, Rt. 01/10 Purwokerto Utara', 'C.0920164', '1986-01-01', '19590512 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '124', '5', '3', '1', '196303281989011001', 'MBA,Ak', 'Drs', 'Agung Praptapa', 'S2', '0028036307', 'Semarang', '1963-03-28', '1', '3', 'Jl. Gunung Singgaleng No. 28 A Bancar Kembar Purwokerto', 'E.500213', '1989-01-01', '19630328 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '125', '5', '3', '1', '196709141994022001', 'M.Si,Ak', 'Dra', 'Atiek Sri Purwati', 'S2', '0014096705', 'Surakarta', '1967-09-14', '2', '3', 'Perum Griya Karang Indah Blok S 16 Karangpucung Purwokerto', 'G.209533', '1994-02-01', '19670914 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '126', '5', '3', '1', '196207061988032002', 'M.Si,Ak', 'Dra', 'Irianing Suparlinah', 'S2', '0006076201', 'Purwokerto', '1962-07-06', '2', '3', 'Perum. Griya Satria Indah 2 Blok G No. 15 Rt. 03/08 Kalisari Sumampir Purwokerto', 'E.491757', '1988-03-01', '19620706 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '127', '5', '3', '1', '195501011988031001', 'M.Si,Ak', 'Drs', 'Sukirman', 'S2', '0001015521', 'Purworejo', '1955-01-01', '1', '3', 'Jl. Riyanto Gg. Flamboyan 3 Rt. 03/03 No. 2 Sumampir Purwokerto Utara', 'E.491793', '1988-01-01', '19550101 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '128', '4', '2', '1', '196108141987031001', 'MM,Ak', 'Drs', 'Agus Faturokhman', 'S2', '0014086111', 'Brebes', '1961-08-14', '1', '3', 'Jl. Kolonel Sugiono No. 299 Rt.2 Rw 1 Kranji Purwokerto', 'E.208482', '1987-03-01', '19610814 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '129', '4', '2', '1', '195602271987031001', 'M.Si,Ak', 'Drs', 'Sujono', 'S2', '0027025602', 'Slawi-Tegal', '1956-02-27', '1', '3', 'Jl. Riyanto Gg. Cempaka Rt. 05/03 No 28 Sumampir Purwokerto Utara', 'E.208487', '1987-03-01', '19560227 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '130', '4', '2', '1', '196106091987031003', 'M.Si,Ak', 'Drs', 'Sugiarto', 'S2', '0009066105', 'Madiun', '1961-06-09', '1', '3', 'Tambak Sari Kidul Rt. 03/03 Kembaran Banyumas', 'E.208481', '1987-03-01', '19610609 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '131', '4', '2', '1', '196107111990022001', 'M.Si,Ak', 'Dra', 'Yusriyati Nur Farida', 'S2', '0011076103', 'Solo', '1961-07-11', '2', '3', 'Perum Pertamina Gn Simping 285 Cilacap', 'E.849142', '1990-02-01', '19610711 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '132', '4', '2', '1', '196212041992032002', 'M.Si,Ak', 'Dra', 'Permata Ulfah', 'S2', '0004126211', 'Boyolali', '1962-12-04', '2', '3', 'Jl. Gn. Sindoro No. 13 Pabuaran Rt. 02/04 Purwokerto Utara 53124', 'F.111872', '1992-03-01', '19621204 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '133', '4', '2', '1', '197106251998022002', 'SE, M.Si, ', '', 'Puji Lestari', 'S2', '0025067103', 'Banyumas', '1971-06-25', '2', '3', 'Perum Griya Satria Indah II Blok D No 16, Gg. Jarwoaminoto - Sumampir', 'H.068450', '1998-02-01', '19710625 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '134', '4', '2', '1', '196503241990031001', 'MM.Ak', 'Dr', 'Adi Wiratno', 'S3', '', 'Bangsri-Jepara', '1965-03-24', '1', '3', 'Jl. Raya Aji Barang No. 25 Aji Barang Kulon Rt. 05/05 Aji Barang', 'E.849153', '1990-03-01', '19650324 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '135', '4', '2', '1', '197501092000122001', 'SE, M.Si, ', '', 'Christina Tri Setyorini', 'S2', '0009017504', 'Purwokerto', '1975-01-09', '2', '3', 'Komp. Pertamina Gn. Smping No. 320 Cilacap', 'J.095732', '2000-12-01', '19750109 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '136', '4', '2', '1', '197007142006042001', 'SE, M.Si, ', '', 'Umi Pratiwi', 'S2', '0014077004', 'Kudus', '1970-07-14', '2', '3', 'Jl. Gn. Sindoro No. 13 Pabuaran Rt. 02/04 Purwokerto Utara 53124', 'M. 264683', '2006-04-01', '19700714 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '137', '4', '2', '1', '197505282003121001', 'SE,M.Si,Ak', 'Dr', 'Eko Suyono', 'S3', '0028057501', 'Banyumas', '1975-05-28', '1', '3', 'Jl. Kebanggan Rt.05/04 N0. 20 Kec. Sumbang Purwokerto Utara', 'L.168369', '2003-12-01', '19750528 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '138', '4', '2', '1', '195704161988031001', 'M.Si,Ak', 'Drs', 'Mafudi', 'S2', '0016045704', 'Purbalingga', '1957-04-16', '1', '3', 'Ds. Gandasuli Rt. 02/02 Bobotsari Purbalingga', 'E.491767', '1988-03-01', '19570416 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '139', '4', '2', '1', '197503312000031002', 'SE,M.Si,Ak', 'Dr', 'Oman Rusmana', 'S3', '0031037503', 'Ciamis', '1975-03-31', '1', '3', 'Perum Griya Satria Indah Sumampir Blok F No 16, Jl. Diamon', 'J.049012', '2000-03-01', '19750331 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '140', '3', '2', '1', '195810061986011001', 'M.Si,Ak', 'Drs', 'I Wayan Mustika', 'S2', '0006105805', 'Tabanan-Bali', '1958-10-06', '1', '3', 'Jl. H. Madrani No. 4 Grendeng Rt. 07/07 Purwokerto Utara', 'C.0920159', '1986-01-01', '19581006 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '141', '3', '2', '1', '195402231987031003', 'M.Si,Ak', 'Drs', 'Saras Supeno', 'S2', '0023025401', 'Purwokerto', '1954-02-23', '1', '3', 'Jl. Kalpataru 12 No.101 Perum Purwosari Purwoketo Utara', 'E. 208489', '1987-03-01', '19540223 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '142', '3', '2', '1', '195504141988031001', 'M.Si,Ak', 'Drs', 'Syaiful Azhar', 'S2', '0014045503', 'Purwokerto', '1955-04-14', '1', '3', 'Perum Tegal Sari Indah, Jl. Gatramas Raya B IV No. 4 Rt. 04/05 Dukuh Waluh Pwt', 'E.491755', '1988-03-01', '19550414 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '143', '3', '2', '1', '196103021987031003', 'M.Si,Ak', 'Drs.', 'Agus Sunarmo', 'S2', '0002036106', 'Purwokerto', '1961-03-02', '1', '3', 'Kelurahan Teluk Rt. 04/01 Purwokerto Selatan 53145', 'E.208488', '1987-03-01', '19610302 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '144', '3', '2', '1', '196704131992032002', 'M.Si,Ak', 'Dra', 'Triani Arofah', 'S2', '0013046703', 'Purwokerto', '1967-04-13', '2', '3', 'Jl. Gn. Slamet Raya 28, Perum Purwosari Indah Purwokerto Utara', 'F.111869', '1992-03-01', '19670413 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '145', '3', '2', '1', '196812241994022003', 'SE, M.Si, ', '', 'Khrisnhoe Rachmi Fitrijati', 'S2', '0024126806', 'Purbalingga', '1968-12-24', '2', '3', 'Perum Griya Satria Blok C No. 04 Rt.03/06 Bancar Kembar Purwokerto 53121', 'G.213006', '1994-02-01', '19681224', '');
INSERT INTO `tbl_dosen` VALUES ('3', '146', '3', '2', '1', '196110131988032002', 'M.Si,Ak', 'Dra', 'Dewi Susilowati', 'S3', '', 'Palembang', '1961-10-13', '2', '3', 'Bandung', 'E.491764', '1988-03-01', '19611013 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '147', '3', '2', '1', '197612052000122001', 'SE,M.Si,Ak', 'Dr', 'Laely Budiarti', 'S3', '', 'Tegal', '1976-12-05', '2', '3', 'Jl. Raya Palang No. 112 Tegal 52193', 'J.095731', '2000-12-01', '19761205 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '148', '3', '2', '1', '197911212005011001', 'SE, M.Si, ', '', 'Icuk Rangga Bawono', 'S2', '0021117901', 'Jakarta', '1979-11-21', '1', '3', 'Komplek Bumi Arca Indah Blok B XII No. 14B Purwokerto', 'M.050309', '2005-01-01', '19791121 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '149', '3', '2', '1', '196812282000031001', 'SE, M.Si, ', '', 'Bambang Setyabudi I', 'S2', '0028126803', 'Wonosari', '1968-12-28', '1', '4', 'Perum Griya Satria Indah II Blok Q 24 Rt. 03/09 Kalisari Purwokerto Utara', 'J.049054', '2000-03-01', '19681228 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '150', '3', '2', '1', '198007212005012002', 'SE, M.Si, ', 'Dr', 'Eliada Herwiyanti', 'S3', '0021078001', 'Purwokerto', '1980-07-21', '2', '4', 'Jl. Kauman Lama No. 48 Rt. 01/04 Kauman Lama Purwokerto', 'M.050320', '2005-01-01', '19800721 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '151', '3', '2', '1', '197508221999032001', 'SE,M.Si,Ak', 'Dr', 'Margani Pinasti', 'S3', '', 'Blora', '1975-08-22', '2', '5', 'Karang Nanas Rt. 01/07 Wadas Malang Sokaraja Banyumas', 'J.007980', '1999-03-01', '19750822 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '152', '3', '2', '1', '197511072003122003', 'SE,M.Si,Ak', '', 'Poppy Dian Indira K', 'S2', '0007117503', 'Surakarta', '1975-11-07', '2', '3', 'Jl. Perintis Kemerdekaan No. 185 A, Rt. 01/01 Karang Pucung Pwt Selatan', 'L.168366', '2003-12-01', '19751107 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '153', '3', '2', '1', '197501152005011004', 'SE,M.Acc,A', '', 'Yanuar Eko Restianto', 'S2', '0015017506', 'Purwokerto', '1975-01-15', '1', '3', 'Jl. Bojong sari Block C.4 no 19', 'M. 048512', '2005-01-01', '19750115 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '154', '3', '2', '1', '198207162006042001', 'SE,M.SA,Ak', 'Dr', 'Wita Ramadhanti', 'S3', '0016078203', 'Malang', '1982-07-16', '2', '3', 'Jl. Gn. Merapi Komp. Daru Pavling II Bancar Kembar Purwokerto', 'M.264685', '2006-04-01', '19820716 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '155', '2', '1', '1', '195311111989012001', '', 'Dra', 'A.Tien Sukaesih', 'S1', '0011115306', 'Garut', '1953-11-11', '2', '3', 'Jl. Sekelimus V No 7 Bandung Jawa Barat - 40266', 'E.505368', '1989-01-01', '19531111 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '156', '2', '1', '1', '195807271987031002', 'M.Si,Ak', 'Drs', 'Taufik Hidayat', 'S2', '0027075808', 'Purwokerto', '1958-07-27', '1', '3', 'Jl. Bima No 7 Perum Dukuh Waluh Rt. 04/09 Kembaran Purwokerto', 'E.208517', '1987-03-01', '19580727 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '157', '2', '1', '1', '197809182006042001', 'SE,M.Si,Ak', 'Dr', 'Negina Kencono Putri', 'S3', '0018097807', 'Purwokerto', '1978-09-18', '2', '3', 'Perum Griya Satria Indah II Blok I No 17 Kalisari Sumampir Purwokerto Utara', 'M. 264687', '2006-04-01', '19780918 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '158', '2', '1', '1', '197711152008121003', 'SE, M.Si, ', '', 'Warsidi', 'S2', '0015117704', 'Cilacap', '1977-11-15', '1', '3', 'Jl. Lele II No 13 Perumnas II Bekasi Rt. 02/05 Kel. Kayuringin Jaya', '', '2008-12-01', '19771115 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '159', '2', '1', '1', '198109052009122001', 'SE,M.Si', '', 'Dona Primasari', 'S2', '0405098101', 'Palembang', '1981-09-05', '2', '3', 'Purwokerto', 'P. 663091', '2009-12-01', '19810905 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '160', '2', '1', '1', '198304142009121004', 'SE,M.Sc', '', 'Yudha Aryo Sudibyo', 'S2', '0014048307', 'Solo Surakarta', '1983-04-14', '1', '3', 'Palur Kulon Rt. 01/01 Bekoneng Sukoharjo Jawa Tengah', 'P.663090', '2009-12-01', '19830414 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '162', '2', '1', '1', '198509302009122005', 'SE,M.Sc,Ak', '', 'Ratu Ayu Sri Wulandari MA', 'S2', '0030098501', 'Purbalingga', '1985-09-30', '2', '3', 'Cipawon Rt. 02/03 Bukateja Purbalingga', 'P. 663092', '2009-12-01', '19850930 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '163', '2', '1', '1', '197808152010122001', 'SE,M.Si,Ak', '', 'Uswatun Hasanah', 'S2', '0015087807', 'Tangerang', '1978-08-15', '2', '3', 'Purwokerto', 'Q.145535', '2010-12-01', '19780815 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '164', '2', '1', '1', '198202092010122001', 'SE,M.Si,Ak', '', 'Hijroh Rokhayati', 'S2', '0009028203', 'Cilacap', '1982-02-09', '2', '3', 'Purwokerto', 'Q.145533', '2010-12-01', '19820209 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '166', '1', '1', '1', '196710041994021001', 'SE,M.Si', '', 'Lilik Handaya Eka', 'S2', '0004106704', 'Klaten', '1967-10-04', '1', '3', 'Perum. Dukuh Waluh R. 07 Rt.05/10 Belakang UMP Purwokerto', 'G.209534', '1994-02-01', '19671004 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '168', '1', '1', '1', '197308282005011002', 'S.Ag,M.SI', '', 'Wahyudin', 'S2', '0028087309', 'Ciamis', '1973-08-28', '1', '3', 'Perum Griya Satria Indah 2 Blok D No.6 Jl.AK. Al Ashori Sumampir Kalisari Purwokerto Utara', 'M.050318', '2005-01-01', '19730828 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '169', '1', '1', '1', '197104302000032002', 'SE,M.Si,Ak', 'Dr', 'Siti Maghfiroh', 'S3', '', 'Jember', '1971-10-30', '2', '3', 'Perum P 4A, Jl. Gambyong Barat Blok F 28 C Rt. 08/11, Puda Panyung Banyumanik Smg', 'L.030600', '2000-03-01', '19710430 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '170', '2', '5', '1', '198611022014042003', 'Ak,M.Sc', '', 'Novita Puspasari, Ak, M.Sc', '', '', 'Bandar Lampung', '1986-11-02', '2', '3', 'Purwokerto', '', '0000-00-00', '19861102 ', '');
INSERT INTO `tbl_dosen` VALUES ('3', '171', '2', '5', '1', '198709052014042001', 'SE,M.Sc', '', 'Kiky Srirejeki, SE, M.Sc', 'S2', '', 'Banyumas', '1987-09-05', '2', '3', 'Purwokerto', '', '0000-00-00', '19870905 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '173', '5', '3', '1', '195205241981031003', 'MM', 'Drs', 'Indi Sutopo', 'S2', '0024055204', 'Banjarnegara', '1952-05-24', '1', '3', 'Rt 04 Rw 03 Karangrau, Sokaraja, Banyumas 53181', 'C.0268241', '1981-03-01', '19520524 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '174', '5', '3', '1', '195301091986032001', 'MM', 'Dra', 'Endang Setiasih', 'S2', '0009015305', 'Purwokerto', '1953-01-09', '2', null, 'Jl Pereng Rt 11 Rw 3, Purwokerto', 'C.0920234', '1986-03-01', '19530109 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '175', '5', '3', '1', '195305121980032002', 'M.Hum', 'Dra.', 'Sumiyem', 'S2', '0012055303', 'Bantul', '1953-05-12', '2', '3', 'Jl. Jend Sutoyo Gg IV/118 Purwokerto', 'C.0181357', '1980-03-01', '19530512 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '176', '7', '3', '1', '195311251983121001', 'Ms', 'Dr', 'Suprapto', 'S3', '', 'Banjarnegara', '1953-11-25', '1', '3', 'Jl Kenanga 349 Purwokerto', 'C.0664636', '1983-12-01', '19531125 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '177', '5', '3', '1', '195312141986011001', 'M.Si', 'Drs', 'Sudjarwanto', 'S2', '0014125303', 'Purbalingga', '1953-12-14', '1', '3', 'Jl Raya Pernasidi Cilongok', 'C.0920167', '1986-01-01', '19531214 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '178', '5', '3', '1', '195502141980031019', 'MA', 'Drs', 'Sri Nugroho PR', 'S2', '0014025504', 'Banyumas', '1955-02-14', '1', null, 'Gg Sudirman No 72 Sudagaran Banyumas', 'C.0181338', '1980-03-01', '19550214 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '179', '3', '2', '1', '195601191986032002', 'MS', 'Dra', 'Emmy Saraswati', 'S2', '0019015602', 'Banjarmasin', '1956-01-19', '2', '3', 'Jl S.Parman 946, Purwokerto', 'C.0920207', '1986-03-01', '19560119 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '181', '4', '2', '1', '195609101986011001', 'MP', 'Drs', 'Sukiman', 'S2', '0010095604', 'Kebumen', '1956-09-10', '1', '3', 'Gg Mahoni 7 No 71 Teluk, Purwokerto', 'C.0920168', '1986-01-01', '19560910 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '182', '4', '2', '1', '195705281986011001', 'M.Si', 'Drs', 'Supadi', 'S2', '0028055703', 'Purbalingga', '1957-05-28', '1', '3', 'Karanggedang Rt 18 Rw 06 Kec Bukateja Purbalingga', 'C.0920169', '1985-01-01', '19570528 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '183', '4', '2', '1', '195708231986012001', '', 'Dra.', 'Asteria Pudyantini', 'S1', '0023085704', 'Bogor', '1957-08-23', '2', null, 'Perum Dosen Unsoed No 8 Grendeng, Purwokerto', 'C.0920128', '1986-01-01', '19570823 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '184', '5', '3', '1', '195710171985032001', 'MP', 'Dra', 'Endang Sri Gunawati', 'S2', '0017105704', 'Pemalang', '1957-10-17', '2', '3', 'Jl Suprapto No 16 Rt 006 Rw 001 Purwosari, Baturaden', 'C.0698167', '1985-03-01', '19571017 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '185', '5', '3', '1', '195804011984031018', 'MS.Ph.D', 'Drs', 'Nurul Anwar', 'S3', '', 'Purwokerto', '1958-04-01', '1', '3', 'Jl Letjen Pol Sumarto Rt 05 Rw 02 Purwanegara, Purwokerto Utara', 'C.0664640', '1984-03-01', '19580401 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '186', '5', '3', '1', '195807251986011002', 'M.Si', 'Drs', 'Oke Setiarso', 'S2', '0025075805', 'Semarang', '1958-07-25', '1', '3', 'Jl Perintis Kemerdekaan G 29 No 10 Tegal', 'C.0920170', '1986-01-01', '19580725 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '187', '5', '3', '1', '195901101986011001', 'MM', 'Drs', 'Hary Pudjianto', 'S2', '', 'Banyumas', '0000-00-00', '1', '3', 'Karangsawah, Sudagaran, Banyumas', 'C.0920151', '1986-01-01', '19590110 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '188', '5', '3', '1', '195904231986011001', 'MS', 'Drs', 'Dedi Supriadi', 'S2', '0023045906', 'Bandung', '1959-04-23', '1', '3', 'Jl Prof Dr HR Boenyamin No 472, Bancarkembar, Purwokerto Utara', 'C.0920166', '1986-01-01', '19590423 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '189', '5', '3', '1', '196005291987032001', 'M.Si', 'Dra', 'Nunik Kadarwati', 'S2', '0029056005', 'Purwokerto', '1960-05-29', '2', '3', 'Jl Bank Gg III Rt 03 Rw 4 No 83 Kedungwuluh, Purwokerto', 'E.208490', '1987-03-01', '19600529 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '190', '2', '1', '1', '196109121986031001', 'M.Si', 'Drs', 'Goro Binardjo', 'S2', '0012096106', 'Prigi-Bj.negara', '1961-09-12', '1', '3', 'Jl Jenderal Suprapto Gg 4 Rt 01 Rw 07 Purwokerto', 'C.0920248', '1986-03-01', '19610912 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '192', '5', '3', '1', '196202031988031001', 'MP', 'Drs', 'Herman Sambodo', 'S2', '0003026209', 'Magelang', '1962-02-03', '1', '3', 'Jl Jatisari No A/14 Rt 004 Rw 004 Sumampir ', 'E.491772', '1988-03-01', '19620203 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '193', '4', '2', '1', '196303221989012001', 'MM', 'Dra', 'Neni Widayaningsih', 'S2', '0022036302', 'Surakarta', '1963-03-22', '2', '3', 'Rt 04 Rw 02 Purwosari Kec Baturaden', 'E.505373', '1989-01-01', '19630322 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '194', '5', '3', '1', '196306291989011001', 'ME', 'Drs', 'Rakhmat Priyono', 'S2', '0029066303', 'Kebumen', '1963-06-29', '1', '3', 'Rt 04 Rw 02 Purwosari Kec Baturaden', 'E.505371', '1989-01-01', '19630629 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '195', '3', '2', '1', '197012261997022001', 'SE,M.Sc,Ph', '', 'Istiqomah', 'S3', '', 'Banyumas', '1970-12-26', '2', '3', 'Perum Griya Tegalsari Indah Blok H-4/9 Kembaran 53182', 'G.312990', '1997-02-01', '19701226 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '196', '5', '3', '1', '197204131998022001', 'M.Si', 'Dra', 'Lilis Siti Badriah', 'S2', '0013047205', 'Ciamis', '1972-04-13', '2', '3', 'Purwokerto', 'H.034711', '1998-02-01', '19720413 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '197', '3', '2', '1', '197212152001121002', 'M.Si', 'Dr', 'Abdul Aziz Ahmad', 'S3', '0015127205', 'Boyolali', '1972-12-15', '1', '3', 'Jl Madrani 61C, Grendeng - Purwokerto', 'L.021038', '2001-12-01', '19721215 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '198', '4', '2', '1', '197212261997022001', 'SE, M.Si', '', 'Irma Suryahani', 'S2', '0026127204', 'Purwokerto', '1972-12-26', '2', '3', 'Perum Bancarkembar Permai Blok X/1', 'H.034706', '1997-02-01', '19721226 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '199', '2', '1', '1', '197310242006041003', 'SE,M.Si', '', 'Arintoko', 'S2', '0024107307', 'Magelang', '1973-10-24', '1', null, 'Kanggan Rt 1 Rw 13 Wringin Putih, Borobudur Magelang', 'M. 264636', '2006-04-01', '19731024 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '200', '3', '2', '1', '197807232005011001', 'SE,M.Si', '', 'Suharno', 'S2', '0023077803', 'Sragen', '1978-07-23', '1', null, 'Jl. Sridadi Gg IV No 87 Karangklesem, Purwokerto Selatan', 'M.050312', '2005-01-01', '19780723 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '201', '2', '1', '1', '198001232005012003', 'SE,M.Si', '', 'Ratna Setyawati Gunawan', 'S2', '0023018002', 'Purwokerto', '1980-01-23', '2', '3', 'Perumahan Karangklesem No 40 Rt 01/04 Kec Purwokerto', 'M.050308', '2005-01-01', '19800123 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '202', '3', '2', '1', '198007152005012002', 'SE, M.Sc', '', 'Barokatuminalloh', 'S2', '0015078007', 'Banyumas', '1980-08-15', '2', '3', 'Pasir Lor Rt 4/I Kec Karanglewas', 'M.050311', '2005-01-01', '19800715 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '203', '3', '2', '1', '198012012005011002', 'SE,M.Sc', '', 'Agus Arifin', 'S2', '0001128003', 'Ambarawa', '1980-12-01', '1', '3', 'Kembaran Kulon Rt 001 Rw 003 Kel Kembaran Kulon Kec Purbalingga', 'M.050315', '2005-01-01', '19801201 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '204', '2', '1', '1', '198106092006042001', 'SE,M.Si', '', 'Diah Setyorini Gunawan', 'S2', '0009068104', 'Purwokerto', '1981-06-09', '2', '3', 'Jl. Sridadi No 04 Karangklesem, Purwokerto Selatan', 'M. 264637', '2006-04-01', '19810609 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '205', '2', '1', '1', '198108032010012002', 'SE,M.Si', '', 'Agustin Susyatna Dewi', 'S2', '0003088105', 'Purwokerto', '1981-08-03', '2', '3', 'Jl Riyanto No 20/216 Sumampir Purwokerto Utara 53125', 'Q.145538', '2010-12-01', '19810803 ', '');
INSERT INTO `tbl_dosen` VALUES ('2', '206', '2', '1', '1', '198212252010122004', 'SE,M.Ec.De', '', 'Kikin Windhani', 'S2', '0025128207', 'Magetan', '1982-12-25', '2', '3', 'Jl. Jend Sutoyo II Rt 03 Rw II No 27 Purwokerto', 'Q.145540', '2010-12-01', '19821225 ', '');

-- ----------------------------
-- Table structure for tbl_download
-- ----------------------------
DROP TABLE IF EXISTS `tbl_download`;
CREATE TABLE `tbl_download` (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `nama_download` varchar(75) DEFAULT NULL,
  `lampiran_download` varchar(75) DEFAULT NULL,
  `keterangan_download` text,
  `atktiv` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_download
-- ----------------------------
INSERT INTO `tbl_download` VALUES ('2', 'PEDOMAN OPERASIONAL PENILAIAN ANGKA KREDIT KENAIKAN PANGKAT/JABATAN', 'Petunjuk Operasional PAK_27-1-2015.pdf', 'PEDOMAN OPERASIONAL\r\nPENILAIAN ANGKA KREDIT\r\nKENAIKAN PANGKAT/JABATAN\r\nAKADEMIK DOSEN', '1');
INSERT INTO `tbl_download` VALUES ('3', 'Peer Jurnal', 'Peer Jurnal.doc', 'PEER REVIEW JURNAL', '2');
INSERT INTO `tbl_download` VALUES ('4', 'Peer Prosiding', 'Peer Prosiding.docx', 'PEER REVIEW PROSIDING', '2');
INSERT INTO `tbl_download` VALUES ('5', 'Peer Jurnal', 'peerjurnal.xlsx', 'PEER REVIEW JURNAL', '1');
INSERT INTO `tbl_download` VALUES ('7', 'Peer Prosiding', 'peerprosiding.xlsx', 'PEER REVIEW PROSIDING', '1');

-- ----------------------------
-- Table structure for tbl_fakultas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_fakultas`;
CREATE TABLE `tbl_fakultas` (
  `ID_FAKULTAS` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_FAKULTAS` varchar(50) DEFAULT NULL,
  `PIMPINAN_FAKULTAS` varchar(80) DEFAULT NULL,
  `NIP_PIMPINAN` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID_FAKULTAS`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_fakultas
-- ----------------------------
INSERT INTO `tbl_fakultas` VALUES ('1', 'Fakultas Ekonomi dan Bisnis', 'Dr. Pramono Hari Adi, MS', '196003301985031006');

-- ----------------------------
-- Table structure for tbl_gaji
-- ----------------------------
DROP TABLE IF EXISTS `tbl_gaji`;
CREATE TABLE `tbl_gaji` (
  `ID_GAJI` int(11) NOT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `TGL_GAJIAN` date DEFAULT NULL,
  `GAJI_POKOK` date DEFAULT NULL,
  PRIMARY KEY (`ID_GAJI`),
  KEY `FK_RELATIONSHIP_6` (`ID_DOSEN`),
  CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_gaji
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_golongan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_golongan`;
CREATE TABLE `tbl_golongan` (
  `ID_GOLONGAN` int(11) NOT NULL,
  `GOLONGAN` varchar(25) DEFAULT NULL,
  `PANGKAT` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_GOLONGAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_golongan
-- ----------------------------
INSERT INTO `tbl_golongan` VALUES ('1', 'III/a', 'Penata Muda');
INSERT INTO `tbl_golongan` VALUES ('2', 'III/b', 'Penata Muda Tk.I');
INSERT INTO `tbl_golongan` VALUES ('3', 'III/c', 'Penata');
INSERT INTO `tbl_golongan` VALUES ('4', 'III/d', 'Penata Tk.I');
INSERT INTO `tbl_golongan` VALUES ('5', 'IV/a', 'Pembina');
INSERT INTO `tbl_golongan` VALUES ('6', 'IV/b', 'Pembina Tk.I');
INSERT INTO `tbl_golongan` VALUES ('7', 'IV/c', 'Pembina Utama Muda');
INSERT INTO `tbl_golongan` VALUES ('8', 'IV/d', 'Pembina Utama Madya');
INSERT INTO `tbl_golongan` VALUES ('9', 'IV/e', 'Pembina Utama');

-- ----------------------------
-- Table structure for tbl_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_info`;
CREATE TABLE `tbl_info` (
  `id_info` int(11) NOT NULL AUTO_INCREMENT,
  `unsur` varchar(25) DEFAULT NULL,
  `sub_unsur` text,
  `persentase` varchar(15) DEFAULT NULL,
  `detail_sub_unsur` varchar(35) DEFAULT NULL,
  `tiga_be` int(11) DEFAULT NULL,
  `tiga_ce` int(11) DEFAULT NULL,
  `tida_de` int(11) DEFAULT NULL,
  `empat_a` int(11) DEFAULT NULL,
  `empat_be` int(11) DEFAULT NULL,
  `empat_ce` int(11) DEFAULT NULL,
  `empat_de` int(11) DEFAULT NULL,
  `empat_e` int(11) DEFAULT NULL,
  `jenjang_pendidikan` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_info
-- ----------------------------
INSERT INTO `tbl_info` VALUES ('1', '1', 'Pendidikan', null, 'Pendidikan Sekolah', '150', '150', '150', '150', '150', '150', '150', '150', '2');
INSERT INTO `tbl_info` VALUES ('2', '1', 'Pelaksanaan Pendidikan \r\nPelaksanaan Penelitian \r\nPengembangan Diri \r\nPelaksanaan Pengabdian Kepada Masyarakat', '>= 90%', '-', null, '45', '135', '225', '360', '495', '630', '810', '2');
INSERT INTO `tbl_info` VALUES ('6', '2', 'Penunjang Kegiatan Akademik Dosen', '<= 10%', '-', null, '5', '15', '25', '40', '55', '70', '90', '2');
INSERT INTO `tbl_info` VALUES ('7', '1', 'Pendidikan', null, 'Pendidikan Sekolah', '200', '200', '200', '200', '200', '200', '200', '200', '3');
INSERT INTO `tbl_info` VALUES ('8', '1', 'Pelaksanaan Pendidikan \r\nPelaksanaan Penelitian \r\nPengembangan Diri \r\nPelaksanaan Pengabdian Kepada Masyarakat', '>= 90%', '-', null, null, '90', '180', '315', '450', '585', '765', '3');
INSERT INTO `tbl_info` VALUES ('12', '2', 'Penunjang Kegiatan Akademik Dosen', '<= 10%', '-', null, null, '10', '20', '35', '50', '65', '85', '3');

-- ----------------------------
-- Table structure for tbl_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jabatan`;
CREATE TABLE `tbl_jabatan` (
  `ID_JABATAN` int(11) NOT NULL,
  `KODE_JABATAN` varchar(25) DEFAULT NULL,
  `NAMA_JABATAN` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID_JABATAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_jabatan
-- ----------------------------
INSERT INTO `tbl_jabatan` VALUES ('1', '1', 'Asisten Ahli');
INSERT INTO `tbl_jabatan` VALUES ('2', '2', 'Lektor');
INSERT INTO `tbl_jabatan` VALUES ('3', '3', 'Lektor Kepala');
INSERT INTO `tbl_jabatan` VALUES ('4', '4', 'Guru Besar');
INSERT INTO `tbl_jabatan` VALUES ('5', '5', 'Tenaga Pengajar');

-- ----------------------------
-- Table structure for tbl_jurusan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jurusan`;
CREATE TABLE `tbl_jurusan` (
  `ID_JURUSAN` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_JURUSAN` varchar(35) DEFAULT NULL,
  `NAMA_PIMPINAN` varchar(80) DEFAULT NULL,
  `NIP_PIMPINAN` varchar(30) DEFAULT NULL,
  `ID_FAKULTAS` int(11) DEFAULT NULL,
  `PANGKAT` varchar(20) DEFAULT NULL,
  `GOLONGAN` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_JURUSAN`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_jurusan
-- ----------------------------
INSERT INTO `tbl_jurusan` VALUES ('1', 'Manajemen', 'Drs. Jaryono, MSIE', '195809181986011001', '1', 'Penata Tingkat I', 'III/d');
INSERT INTO `tbl_jurusan` VALUES ('2', 'Ilmu Ekonomi Studi Pembangunan', 'Dr. Suprapto, MS', '195311251883121001', '1', 'Pembina Utama muda', 'IV/c');
INSERT INTO `tbl_jurusan` VALUES ('3', 'Akuntansi', 'Dr. Oman Rusmana, M.Si, Ak', '197503312000031001', '1', 'Penata Tingkat I', 'III/d');

-- ----------------------------
-- Table structure for tbl_keluarga
-- ----------------------------
DROP TABLE IF EXISTS `tbl_keluarga`;
CREATE TABLE `tbl_keluarga` (
  `ID_KELUARGA` int(11) NOT NULL,
  `ID_STATUS` int(11) DEFAULT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `NAMA_KELUARGA` varchar(80) DEFAULT NULL,
  `TGL_LAHIR` date DEFAULT NULL,
  `TMP_LAHIR` varchar(50) DEFAULT NULL,
  `TGL_NIKAH` date DEFAULT NULL,
  `TGL_CERAI_MENINGGAL` date DEFAULT NULL,
  `PEKERJAAN` varchar(50) DEFAULT NULL,
  `ALAMAT_KELUARGA` text,
  PRIMARY KEY (`ID_KELUARGA`),
  KEY `FK_RELATIONSHIP_1` (`ID_STATUS`),
  KEY `FK_RELATIONSHIP_5` (`ID_DOSEN`),
  CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_STATUS`) REFERENCES `tbl_status_pernikahan` (`ID_STATUS`),
  CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_keluarga
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_mutasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mutasi`;
CREATE TABLE `tbl_mutasi` (
  `ID_MUTASI` int(11) NOT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `JABTAN_LAMA` varchar(35) DEFAULT NULL,
  `UNIT_KERJA_LAMA` varchar(75) DEFAULT NULL,
  `TMT_LAMA` varchar(50) DEFAULT NULL,
  `JABATAN_BARU` varchar(35) DEFAULT NULL,
  `UNIT_KERJA_BARU` varchar(75) DEFAULT NULL,
  `TMT_BARU` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_MUTASI`),
  KEY `FK_RELATIONSHIP_7` (`ID_DOSEN`),
  CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_mutasi
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_pengajuan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pengajuan`;
CREATE TABLE `tbl_pengajuan` (
  `ID_PENGAJUAN` int(11) NOT NULL AUTO_INCREMENT,
  `PENGAJUAN` varchar(35) DEFAULT NULL,
  `ANGKA_SELISIH` varchar(255) DEFAULT NULL,
  `PERSENTASE_BID1` varchar(255) DEFAULT NULL,
  `PERSENTASE_BID2` varchar(255) DEFAULT NULL,
  `PERSENTASE_BID3` varchar(255) DEFAULT NULL,
  `PERSENTASE_BID4` varchar(255) DEFAULT NULL,
  `KALI_HASIL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_PENGAJUAN`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_pengajuan
-- ----------------------------
INSERT INTO `tbl_pengajuan` VALUES ('1', 'ASISTEN AHLI', '50', '0.55', '0.25', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('2', 'LEKTOR', '100', '0.45', '0.35', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('3', 'LEKTOR KEPALA', '150', '0.40', '0.40', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('4', 'PROFESOR', '150', '0.35', '0.45', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('5', 'III B', '50', '0.55', '0.25', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('6', 'III C', '50', '0.45', '0.35', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('7', 'III D', '100', '0.45', '0.35', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('8', 'IV A', '150', '0.40', '0.40', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('9', 'IV B', '150', '0.40', '0.40', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('10', 'IV C', '150', '0.40', '0.40', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('11', 'IV D', '150', '0.35', '0.45', '0.10', '0.10', '0.7');
INSERT INTO `tbl_pengajuan` VALUES ('12', 'IV E', '150', '0.35', '0.45', '0.10', '0.10', '0.7');

-- ----------------------------
-- Table structure for tbl_persen
-- ----------------------------
DROP TABLE IF EXISTS `tbl_persen`;
CREATE TABLE `tbl_persen` (
  `id_persen` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(15) DEFAULT NULL,
  `kualifikasi_akad` varchar(15) DEFAULT NULL,
  `pel_pend` varchar(15) DEFAULT NULL,
  `pel_pen` varchar(15) DEFAULT NULL,
  `pel_peng` varchar(15) DEFAULT NULL,
  `unsur_penunjang` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_persen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_persen
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_status_kepegawaian
-- ----------------------------
DROP TABLE IF EXISTS `tbl_status_kepegawaian`;
CREATE TABLE `tbl_status_kepegawaian` (
  `ID_STATUS_KEP` int(11) NOT NULL,
  `STATUS_KEP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_STATUS_KEP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_status_kepegawaian
-- ----------------------------
INSERT INTO `tbl_status_kepegawaian` VALUES ('1', 'Pegawai Negeri');
INSERT INTO `tbl_status_kepegawaian` VALUES ('2', 'Pegawai Kontrak');
INSERT INTO `tbl_status_kepegawaian` VALUES ('3', 'Calon Pegawai Negeri Sipil');

-- ----------------------------
-- Table structure for tbl_status_pernikahan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_status_pernikahan`;
CREATE TABLE `tbl_status_pernikahan` (
  `ID_STATUS` int(11) NOT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_status_pernikahan
-- ----------------------------

-- ----------------------------
-- Table structure for unsur_pel_pendidikan
-- ----------------------------
DROP TABLE IF EXISTS `unsur_pel_pendidikan`;
CREATE TABLE `unsur_pel_pendidikan` (
  `PENGAJUAN_KE` varchar(15) DEFAULT NULL,
  `ID_UNSUR_PELPEND` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SUBPELPEND` int(11) DEFAULT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `KEGIATAN_PELPEND` text,
  `TEMPAT_PELPEND` varchar(50) DEFAULT NULL,
  `SEMESTER` varchar(25) DEFAULT NULL,
  `BUKTI_PELPEND` varchar(100) DEFAULT NULL,
  `NILAI_PELPEND` varchar(10) DEFAULT NULL,
  `TGL_SUBMIT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_UNSUR_PELPEND`),
  KEY `FK_RELATIONSHIP_12` (`ID_SUBPELPEND`),
  KEY `FK_RELATIONSHIP_13` (`ID_DOSEN`),
  CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`ID_SUBPELPEND`) REFERENCES `subun_pelpend` (`ID_SUBPELPEND`),
  CONSTRAINT `FK_RELATIONSHIP_13` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unsur_pel_pendidikan
-- ----------------------------
INSERT INTO `unsur_pel_pendidikan` VALUES ('III C', '3', '2', '1', 'Seminar kerja praktek', 'D3 Ak. 09', 'genap 2010/2011', '138/H23.4.FE/PP.07.00/2011', '0.75', '2015-03-25 15:44:33');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III B', '4', '1', '1', 'Analisa Laporan Keungan (3 SKS), ampu 2', 'D3 Ak. \'09', 'Genap 2010/2011', '138/H23.4.FE/PP.07.00/2011', '0.75', '2015-04-01 09:53:40');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '5', '1', '2', 'Jati Diri Unsoed 2 SKS ampu 1', 'IESP Internasional', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '2', '2015-04-06 08:26:42');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '6', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '1.5', '2015-04-06 08:34:04');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '7', '1', '2', 'Ekonomi internasional I 3 SKS ampu 2', 'IESP A', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '1.5', '2015-04-09 08:42:16');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '8', '1', '2', 'Ekonomi Internasional I 3 SKS ampu 2', 'IESP B', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '1.5', '2015-04-09 08:44:21');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '9', '1', '2', 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP A', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '1', '2015-04-09 08:45:20');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '10', '1', '2', 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP B', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '1', '2015-04-09 08:46:47');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '11', '1', '2', 'Indonesian Economic 3 SKS ampu 1', 'IESP Internasional', 'Genap 2011', 'No Kept 136/H23.04.FE/PP.07.00/2011', '3', '2015-04-09 08:47:58');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '12', '1', '2', 'Ekonomi Internasional II 3 SKS ampu 2', 'IESP B', 'Genap 2011', 'No Kept 136/H23.04.FE/PP.07.00/2011', '1.5', '2015-04-09 08:48:56');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '13', '1', '2', 'Ekonomi Internasinal II 3 SKS ampu 2 ', 'IESP A', 'Genap 2011', 'No Kept 136/H23.04.FE/PP.07.00/2011', '1.5', '2015-04-09 08:50:07');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '14', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi A', 'Genap 2011', 'No Kept 136/H23.04.FE/PP.07.00/2011', '1.5', '2015-04-09 08:51:10');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '15', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'IESP B', 'Genap 2011', 'No Kept 136/H23.04.FE/PP.07.00/2011', '1.5', '2015-04-09 08:51:48');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '16', '1', '2', 'Ekonomi Internasional 3 SKS ampu 2', 'IESP A', 'Gasal 2011', 'No Kept 220a/H23.4.FE/PP.07.00/2011', '1.5', '2015-04-09 08:53:21');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '17', '1', '2', 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP A', 'Gasal 2011', 'No Kept 220a/H23.4.FE/PP.07.00/2011', '1', '2015-04-09 08:54:08');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '18', '1', '2', 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP B', 'Gasal 2011', 'No Kept 220a/H23.4.FE/PP.07.00/2011', '1', '2015-04-09 08:54:54');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '19', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi', 'Gasal 2011', 'No Kept 220a/H23.4.FE/PP.07.00/2011', '1.5', '2015-04-09 08:57:51');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '20', '1', '2', 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP Internasional', 'Gasal 2011', 'No Kept 220a/H23.4.FE/PP.07.00/2011', '1', '2015-04-09 08:58:46');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '21', '1', '2', 'Ekonomi Internasional II 3 SKS ampu 2', 'IESP B', 'Genap 2012', 'No 005a?UN23.4.FE/PP.07.00/2012', '1.5', '2015-04-09 09:01:49');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '22', '1', '2', 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP', 'Genap 2012', 'No 005a/UN23.4.FE/PP.07.00/2012', '1', '2015-04-09 09:03:00');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '23', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'IESP B', 'Genap 2012', 'No 005a/UN23.4.FE/PP.07.00/2012', '1.5', '2015-04-09 09:03:49');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '24', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi A', 'Genap 2012', 'No 005a/UN23.4.FE/PP.07.00/2012', '1.5', '2015-04-09 09:04:32');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '25', '1', '2', 'Ekonomi Internasional I 3 SKS ampu 2', 'IESP A', 'Gasal 2012', 'No Kept 124a/UN23.03/PP.07.00/2012', '1.5', '2015-04-09 09:07:01');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '26', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi', 'Gasal 2012', 'No Kept 124a/UN23.03/PP.07.00/2012', '1.5', '2015-04-09 09:08:42');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '27', '1', '2', 'Jati DIri Unsoed 2 SKS ampu 2', 'IESP A', 'Gasal 2012', 'No Kept 124a/UN23.03/PP.07.00/2012', '1', '2015-04-09 09:16:37');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '28', '1', '2', 'Jati DIri Unsoed 2 SKS ampu 2', 'IESP B', 'Gasal 2012', 'No Kept 124a/UN23.03/PP.07.00/2012', '1', '2015-04-09 09:17:24');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '29', '1', '2', 'Unsoed Behavior 2 SKS ampu 1', 'IESP Internasional', 'Gasal 2012', 'No Kept 124a/UN23.03/PP.07.00/2012', '2', '2015-04-09 09:18:23');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '30', '1', '2', 'Manajemen Perkantoran 3 SKS ampu 2', 'D3 Sekretariat', 'Genap 2013', 'No Kept 055a/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 09:35:21');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '31', '1', '2', 'Indonesia Economics 3 SKS ampu 1', 'IESP Internasional', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '3', '2015-04-09 09:38:16');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '32', '1', '2', 'Indonesia Economics 3 SKS ampu 1', 'Akuntansi Internasional', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '3', '2015-04-09 09:39:00');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '33', '1', '2', 'Ekonomi Internasional II 3 SKS ampu 2', 'IESP B', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 09:40:07');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '34', '1', '2', 'Jati DIri Unsoed 2 SKS ampu 1', 'IESP A', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '2', '2015-04-09 09:40:53');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '35', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi A', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 10:43:09');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '36', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'IESP B', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 10:44:01');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '37', '1', '2', 'Jati DIri Unsoed 2 SKS ampu 1', 'IESP Internasional', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '2', '2015-04-09 11:26:15');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '38', '1', '2', 'Ekonomi Internasional 3 SKS ampu 2', 'IESP A', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 11:27:11');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '39', '1', '2', 'Jati DIri Unsoed 2 SKS ampu 2', 'IESP A', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '1', '2015-04-09 11:28:00');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '40', '1', '2', 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP B', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '1', '2015-04-09 11:28:59');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '41', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi B', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 11:32:49');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '42', '1', '2', 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi A', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 11:33:40');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '43', '1', '2', 'Jati Diri Unsoed 2  SKS ampu 2', 'D3 Adm Keuangan', 'Gasal 2013', 'No 143/UN23.03/PP.07.00/2013', '1', '2015-04-09 11:36:00');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '44', '1', '2', 'Jati Diri Unsoed 2 SKS ampu 2', 'D3 Adm Keuangan', 'Gasal 2013', 'No 143/UN23.03/PP.07.00/2013', '1', '2015-04-09 11:36:43');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '45', '1', '2', 'Jati Diri Unsoed 2 SKS ampu 2', 'D3 Akuntansi', 'Gasal 2013', 'No 143/UN23.03/PP.07.00/2013', '1', '2015-04-09 11:37:18');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III B', '69', '1', '4', 'Public Sector Accounting (2 sks), ampu 2', 'S1 Akuntansi Internasional', 'gasal 2012/2013', '124a/UN23.03/PP.07.00/2012', '0.5', '2015-05-27 11:24:32');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '70', '4', '2', 'Pembimbing utama skripsi a.n Ayu Putriana', 'FE Unsoed', '22 September 2010', 'No Kept 246/H23.4.FE/PP.06.02/2010', '1', '2015-06-11 08:39:23');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '71', '4', '2', 'Pembimbing utama skripsi a.n Erik Febrian dan Fajar Prasetyo', 'FE Unsoed', '22 Nopember 2010', 'No Kept.293/H23.4.FE/PP.06.02/2010', '2', '2015-06-11 08:41:36');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '72', '4', '2', 'Pembimbing utama skripsi Gentur Jalunggono', 'FE Unsoed', '29 Nop 2010', 'No Kept 294/H23.4.FE/PP.06.02/2010', '1', '2015-06-11 08:47:28');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '73', '4', '2', 'Pembimbing utama skripsi Firmansyah dan Hernindiah P', 'FE Unsoed', '13 Juni 2011', 'No Kept.201/H23.4.FE/PP.07.02/2011', '2', '2015-06-11 08:51:11');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '74', '4', '2', 'Pembimbing kedua skripsi a.n Wisnu Dwinanda P dan Agung Febrianto', 'FE Unsoed', '13 Juni 2011', 'No Kept.201/H23.4.FE/PP.07.02/2011', '1', '2015-06-11 08:53:20');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '75', '4', '2', 'Pembimbing utama skripsi Riska Dianti, Wahyudi, dan Kevin Andi K', 'FE Unsoed', '05 Des 2011', 'No Kept.309/H23.4.FE/PP.07.02/2011', '3', '2015-06-11 08:56:48');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '76', '4', '2', 'Pembimbing utama skripsi Siska Rahmawati dan Ramadhani Darwis GN', 'FE Unsoed', '11 Juni 2012', 'No Kept.117/UN23.4.FE/PP.07.02/2012', '2', '2015-06-11 08:58:49');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '77', '4', '2', 'Pembimbing utama skripsi a.n Dwi Puji Setyani dan Bangkit Susanti', 'FE Unsoed', '10 Sept 2012', 'No Kept.172/UN23.4.FE/PP.07.02/2012', '2', '2015-06-11 09:01:55');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '78', '4', '2', 'Pembimbing kedua skripsi a.n Taufik Nugroho dan Rian Wibawa', 'FE Unsoed', '10 Sept 2012', 'No Kept.172/UN23.4.FE/PP.07.02/2012', '1', '2015-06-11 09:19:23');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '79', '4', '2', 'Pembimbing utama skripsi a.n Febi Ferdian', 'FE Unsoed', '07 Maret 2013', 'No Kept 175/UN23.4.FE/PP.07.02/2013', '1', '2015-06-11 09:21:03');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '80', '4', '2', 'Pembimbing kedua skripsi Rahman Hakim, Amalia Ayu I dan Ayu Rahayu F', 'FE Unsoed', '07 Maret 2013', 'No Kept.033/UN23.4.FE/PP.07.02/2013', '1.5', '2015-06-11 09:26:13');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '81', '4', '2', 'Pembimbing utama skripsi a.n Ardi Ardiyansyah', 'FE Unsoed', '09 Sept 2013', 'No Kept.175/UN23.4.FE/PP.07.02/2013', '1', '2015-06-11 09:28:21');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '82', '4', '2', 'Pembimbing kedua skripsi a.n Irma Purwa S', 'FE Unsoed', '09 Sept 2013', 'No Kept.175/UN23.4.FE/PP.07.02/2013', '0.5', '2015-06-11 09:31:08');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '83', '4', '2', 'Pembimbing kedua skripsi a.n Dwi Retno S, Anjar Wulandari, dan Zamzam K', 'FE Unsoed', '12 Desember 2013', 'No Kept 325/UN23.4.FE/PP.07.02/2013', '1.5', '2015-06-11 09:32:47');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '84', '4', '2', 'Pembimbing penyusunan laporan kerja praktek mhs program D3 a.n Lita yuan P', 'FE Unsoed', '22 Pebruari 2013', 'No Kept 025/UN23.4.FE/PP.06.02/2013', '0.5', '2015-06-11 09:34:48');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '85', '5', '2', 'Ketua penguji pendadaran S1 Reguler a.n Melvawani Sinurat dan Tri Handoyo', 'FE Unsoed', '04 Sept 2010', 'No 239/H23.4.FE/PP.07.02/2010', '2', '2015-06-11 09:57:02');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '86', '5', '2', 'Ketua penguji pendadaran S1 Reguler a.n Oktavianus Krhisna A, RR Arum Widyantari, Lukito Hermono dan Fenny Eka F', 'FE Unsoed', '11 Maret 2011', 'SK No 119/UN23.03.PP.07.02/2011', '4', '2015-06-11 09:59:25');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '87', '5', '2', 'Anggota penguji pendadaran S1 Reguler a.n Ridho Sudarno, Ashari Novi S dan Fauziati Amalia', 'FE Unsoed', '11 Maret 2011', 'SK No 119/UN23.03.PP.07.02/2011', '1.5', '2015-06-11 10:00:52');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '88', '5', '2', 'Ketua penguji pendadaran S1 Reguler a.n Imaniar Agustin dan Kiki Ade W', 'FE Unsoed', '13 Juni 2011', 'No Kept 202/H.23.4.FE/PP.07.02/2011', '2', '2015-06-11 10:03:09');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '89', '5', '2', 'Anggota penguji pendadaran S1 Reguler a.n M Nur Ali, Andri ferdiyansyah, Tina Sugiarti dan Irma Istiqomah', 'FE Unsoed', '13 Juni 2011', 'No Kept 202/H.23.4.FE/PP.07.02/2011', '2', '2015-06-11 10:04:48');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '90', '5', '2', 'Ketua penguji pendadaran S1 Reguler a.n Tri Riyanti, Diaz Pramadiana, Pradipta Ariani dan Adhika Haryo P', 'FE Unsoed', '05 Des 2011', 'No 310/H.23.6.FE/PP.07.02/2011', '4', '2015-06-11 10:06:48');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '91', '5', '2', 'Anggota penguji Pendadaran s1 Reguler a.n Andika Dwi A, Rifqoh Al H dan Suprihatin', 'FE Unsoed', '05 Des 2011', 'No 310/H.23.6.FE/PP.07.02/2011', '1.5', '2015-06-11 10:08:27');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '92', '5', '2', 'Ketua penguji pendadaran s1 Reguler a.n Didi Rusdiana', 'FE Unsoed', '05 Maret 2012', 'No 051/UN23.4.FE/PP.07.02/2012', '1', '2015-06-11 10:09:34');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '93', '5', '2', 'Anggota penguji pendadaran s1 Reguler a.n Titik Lestari dan Aris Subianto', 'FE Unsoed', '05 Maret 2012', 'No 051/UN23.4.FE/PP.07.02/2012', '1', '2015-06-11 10:11:38');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '94', '5', '2', 'Ketua penguji pendadaran s1 reguler a.n Phany Ineke Putri dan Disha Malinda PD', 'FE Unsoed', '11 Juni 2012', 'No 118/UN23.03/PP.07.02/2012', '2', '2015-06-11 10:13:10');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '95', '5', '2', 'Anggota penguji pendadaran s1 reguler a.n Anang Primaka K, Anang Saputra, Ardi Riza Satriatama, Adit Setio Nugroho dan Arief Perdana Y', 'FE Unsoed', '11 Juni 2012', 'No 118/UN23.03/PP.07.02/2012', '2.5', '2015-06-11 10:15:02');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '96', '5', '2', 'Ketua penguji pendadaran s1 reguler a.n Adinata Manggala dan Sofri Priya Dingga', 'FE Unsoed', '10 Sept 2012', 'No 173/UN23.4.FE/PP.07.02/2012', '2', '2015-06-11 10:16:45');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '97', '5', '2', 'Anggota penguji pendadaran s1 reguler a.n Hanang Indra P,Arry Fachrein, Isnaendi Anggriyana, Wahyu Budi R, Agnes RNV, Yulian Risqi A, dan Arismanto Eko N', 'FE Unsoed', '10 Sept 2012', 'No 173/UN23.4.FE/PP.07.02/2012', '3.5', '2015-06-11 10:18:39');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '98', '5', '2', 'Anggota penguji pendadaran s1 reguler a.n Ilham Maulana, Fajar Arief P, Fristy Acita P, Aristika YN, Aris Ardianto', 'FE Unsoed', '07 Maret 2013', 'No Kept 034/UN23.03/PP.07.02/2013', '2.5', '2015-06-11 10:22:14');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '99', '5', '2', 'Ketua penguji pendadaran s1 reguler a.n Andri Mukti, Vina Kurniasari, Bayu Kurniawan, dan Guntur Prasetyo', 'FE Unsoed', '09 Sept 2013', 'No 176/UN23.03/PP.07.02/2013', '4', '2015-06-11 10:24:04');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '100', '5', '2', 'Anggota penguji pendadaran s1 reguler a.n Depit Yudi P, Nur Triana P, Gilang Rinaldi, Gita Ratna Sari, dan Aulia Lupita', 'FE Unsoed', '09 Sept 2013', 'No 176/UN23.03/PP.07.02/2013', '2.5', '2015-06-11 10:26:03');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '101', '5', '2', 'Ketua penguji pendadaran s1 reguler a.n  Anjar Wulandari, dan Setiaji Dwi WP', 'FE Unsoed', '12 Desember 2013', 'No 326/UN23.03/PP.07.02/2013', '2', '2015-06-11 11:01:58');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '102', '5', '2', 'Anggota penguji pendadaran s1 reguler a.n Riska Sitepu, Rasyid Wisnu A, Retika Amalia S, Luqman HK, Anggraeni DS, Provina Pasha H, dan Aprilia Citra D', 'FE Unsoed', '12 Desember 2013', 'No 326/UN23.03/PP.07.02/2013', '3.5', '2015-06-11 11:03:46');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '103', '5', '2', 'Penguji komprehensif D3 a.n Febri Ariyani, Septiara Hutami HP dan Dian Puspa R', 'FE Unsoed', '15 Agustus 2012', 'No 53/UN23.03/PP.007.02/2012', '3', '2015-06-11 11:05:48');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '104', '5', '2', 'Penguji ujian komprehensif D3 a.n Erwin Fajar A dan Sweet Seska I', 'FE Unsoed', '19 Agustus 2013', 'No Kept 146/UN23.03/PP/07/02/2013', '2', '2015-06-11 11:11:24');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '105', '5', '2', 'Ketua penguji pendadaran s1 reguler a.n Kharismatik P N, m Ichsan dan Iin Isnaeningsih', 'FE Unsoed', '04 Sept 2010', 'No 240/H.23.4.FE/PP.07.02/2010', '3', '2015-06-11 11:13:00');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '106', '6', '2', 'Pembimbing akademik mahasiswaprogram s1 reguler dan internasional', 'FE Unsoed', 'Gasal 2010 / 2011', 'No 222/H23.4.FE/PP.06.02/2010', '2', '2015-06-11 11:18:20');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '107', '6', '2', 'Pembimbing akademik mahasiswa program s1 reguler dan internasional ', 'FE Unsoed', 'Genap 2012/2013', 'No 153a/UN23.03/PP.07.02/2012', '2', '2015-06-11 11:20:45');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '108', '6', '2', 'Pembimbing akademik mahasiswaan program s1 reguler dan internasional', 'FE Unsoed', 'Genap 2013/2014', 'No 142/UN23.03/PP.07.02/2013', '2', '2015-06-11 11:22:01');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '109', '3', '2', 'Pembimbing lapangan ( KKN - POSDAYA ) ', 'FE Unsoed', 'Genap 2012/2013', 'No Kept 074/UN23.03/PM.07.02/2013', '2', '2015-06-11 14:48:13');
INSERT INTO `unsur_pel_pendidikan` VALUES ('IV B', '110', '6', '2', 'Pelatihan program Applied Aproach ( AA ) Plus tahun 2013', 'Unsoed', '24-28 Juni 2013', 'SK dan Sertifikat', '1', '2015-06-11 14:58:21');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '112', '1', '6', 'Pengantar Ekonomi Makro ( 3sks ) ampu 2', 'Akuntansi ', 'Gasal 2010', '250/H23.4.FE/PP.06.00/2010', '1.5', '2015-07-13 10:04:19');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '113', '1', '6', 'Praktikum Statistika ( 3sks ) ampu 2', 'Akuntansi', 'Gasal 2010', '250/H23.4.FE/PP.06.00/2010', '1.5', '2015-07-13 10:05:09');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '114', '1', '6', 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP A', 'Gasal 2010', 'Kept 251/H23.4.FE/PP.00.06/2010', '1.5', '2015-07-13 10:06:37');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '115', '1', '6', 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP B', 'Gasal 2010', 'Kept 251/H23.4.FE/PP.00.06/2010', '1.5', '2015-07-13 10:07:26');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '116', '1', '6', 'Ekonomi Mikro II ( 3sks ) ampu 2', 'IESP B', 'Gasal 2010', 'Kept 251/H23.4.FE/PP.00.06/2010', '1.5', '2015-07-13 10:08:06');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '117', '1', '6', 'Statistics II ( 3 sks ) ampu 1', 'IESP Internasional', 'Gasal 2010', 'Kept 251/H23.4.FE/PP.00.06/2010', '3', '2015-07-13 10:09:04');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '118', '1', '6', 'ESDA Lingkungan ( 3sks ) ampu 2', 'IESP A', 'Genap 2010', '136/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 10:12:07');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '119', '1', '6', 'Metodologi Penelitian ( 3sks ) ampu 2', 'IESP A', 'Genap 2010', '136/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 10:13:38');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '120', '1', '6', 'Research Method ( 3sks ) ampu 1', 'IESP Internasional', 'Genap 2010', '136/H23.4.FE/PP.07.00/2011', '3', '2015-07-13 10:14:32');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '121', '1', '6', 'Sejarah Pemikiran Ekonomi ( 3sks ) ampu 2', 'IESP A', 'Genap 2010', '136/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 10:15:14');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '122', '1', '6', 'Pengantar Ekonomi Makro ( 3sks ) ampu 2', 'Akuntansi', 'Genap 2010', '138/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 10:16:24');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '123', '1', '6', 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP A', 'Gasal 2011', 'Kept 220a/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 10:17:33');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '124', '1', '6', 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP B', 'Gasal 2011', 'Kept 220a/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 10:18:46');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '125', '1', '6', 'Pengantar Ekonomi Makro ( 3sks ) ampu 2', 'IESP B', 'Gasal 2011', 'Kept 220a/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 10:19:44');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '126', '1', '6', 'Introduction to Business ( 3sks ) ampu 1', 'IESP Internasional', 'Gasal 2011', 'Kept 220a/H23.4.FE/PP.07.00/2011', '3', '2015-07-13 10:27:08');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '127', '1', '6', 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP A', 'Gasal 2012', 'Kept 124a/UN23.03/PP.07.00/2012', '1.5', '2015-07-13 10:28:15');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '128', '1', '6', 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP B', 'Gasal 2012', 'Kept 124a/UN23.03/PP.07.00/2012', '1.5', '2015-07-13 10:28:51');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '129', '1', '6', 'Pengantar Ekonomi Makro ( 3sks ) ampu 2', 'IESP B', 'Gasal 2012', 'Kept 124a/UN23.03/PP.07.00/2012', '1.5', '2015-07-13 10:29:28');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '130', '1', '6', 'Introduction to Business ( 3sks ) ampu 1', 'IESP Internasional', 'Gasal 2012', 'Kept 124a/UN23.03/PP.07.00/2012', '3', '2015-07-13 10:30:16');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '131', '1', '6', 'Pengantar Bisnis ( 3sks ) ampu 2', 'Kesekretariatan', 'Gasal 2012', 'Kept 179/UN.03.3/PP.07.00/2012', '1.5', '2015-07-13 10:31:32');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '132', '1', '6', 'Research Method ( 3sks ) ampu 1', 'IESP Internasional', 'Genap 2013', '001/UN23.03/PP.07.00/2013', '3', '2015-07-13 10:34:17');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '133', '1', '6', 'ESDA Lingkungan ( 3sks ) ampu 2', 'IESP A', 'Genap 2010', '001/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 10:42:33');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '134', '1', '6', 'Metodologi Penelitian ( 3sks ) ampu 2', 'IESP A', 'Genap 2013', '001/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 10:43:14');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '135', '1', '6', 'Sejarah Pemikiran Ekonomi ( 3sks ) ampu 2', 'IESP A', 'Genap 2013', '001/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 10:45:11');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '136', '1', '6', 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP A', 'Gasal 2013', '122/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 10:46:27');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '137', '1', '6', 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP B', 'Gasal 2013', '122/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 10:48:04');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '138', '1', '6', 'Pengantar Ekonomi Makro ( 3sks ) ampu 2', 'IESP B', 'Gasal 2013', '122/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 10:48:47');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '139', '1', '6', 'Pengantar Ekonomi Mikro ( 3sks ) ampu 2', 'IESP A', 'Gasal 2013', '122/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 10:49:41');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '140', '1', '6', 'Introduction to Business ( 3sks ) ampu 1', 'IESP Internasional', 'Gasal 2013', '122/UN23.03/PP.07.00/2013', '3', '2015-07-13 10:52:08');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '141', '1', '6', 'Pengantar Ekonomi Mikro ( 3sks ) ampu 2', 'Adm Keuangan D3', 'Gasal 2011', 'Kept 143/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 10:55:02');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '142', '1', '6', 'Metodologi Penelitian ( 3sks ) ampu 2', 'IESP A', 'Genap 2013', '001/UN23.03/PP.07.00/2014', '1.5', '2015-07-13 10:56:20');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '143', '1', '6', 'ESDA Lingkungan ( 3sks ) ampu 2', 'IESP A', 'Genap 2013', '001/UN23.03/PP.07.00/2014', '1.5', '2015-07-13 10:57:03');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '144', '1', '6', 'Sejarah Pemikiran Ekonomi', 'IESP A', 'Genap 2013', '001/UN23.03/PP.07.00/2014', '1.5', '2015-07-13 10:57:41');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '145', '1', '6', 'Research Method ( 3sks ) ampu 1', 'IESP Internasional', 'Genap 2013', '001/UN23.03/PP.07.00/2014', '3', '2015-07-13 10:59:09');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '146', '5', '6', 'Anggota Penguji pendadaran S1 Reguler a.n Haryanto, Yogi Aditya G dan Linda Karimmah', 'Fakultas Ekonomi', 'Desember 2011', 'SK no 310/H.23.4.FE/PP.07.02/2011', '1.5', '2015-07-23 09:56:26');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '147', '5', '6', 'Anggota Penguji pendadaran S1 Reguler a.n Ibrahim, Chusniyah N H, dan Rizky Fajar A', 'Fakultas Ekonomi', 'Maret 2012', 'SK no 051/UN23.4.FE/PP.07.02/2012', '1.5', '2015-07-23 09:59:13');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '148', '5', '6', 'Ketua Penguji pendadaran S1 Reguler a.n Rahma Dian H', 'Fakultas Ekonomi', 'September 2012', 'SK no 173/UN23.03/PP.07.02/2012', '1', '2015-07-23 10:03:07');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '149', '5', '6', 'Ketua Penguji Pendadaran S1 Reguler a.n Husny Aditya R, Tabeata R A, Ade Saefudin, Rina Aryanti, dan Dewi Wulandari', 'Fakultas Ekonomi', 'Juni 2013', 'SK No 112/UN23.03/PP.07.02/2013', '5', '2015-07-23 10:19:38');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '150', '5', '6', 'Anggota Penguji pendadaran S1 Reguler a.n Ari Febrianto, Maretiawan HG, Endah Utami, dan Nurhasanah', 'Fakultas Ekonomi', 'September 2013', 'SK no 176/UN23.03/PP.07.02/2013', '2', '2015-07-23 10:24:56');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '151', '5', '6', 'Ketua Penguji pendadaran S1 Reguler a.n  Beni Saputra ', 'Fakultas Ekonomi', 'Desember 2013', 'SK no 326/UN23.03/PP.07.02/201', '1', '2015-07-23 13:52:01');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '152', '5', '6', 'Anggota Penguji pendadaran a.n Ias Pramestie, Nur Azizah, Erlita Cahya dan Imam Budiarto', 'FEB', 'Maret 2014', 'SK No 109/UN23.03/PP.07.02/2014', '2', '2015-07-23 14:06:11');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '153', '5', '6', 'Ketua Penguji pendadaran S1 Reguler a.n Sheila Ardilla Y, Vera Prisca S, dan Dwita Aprillia F', 'FEB', 'Juni 2014', 'SK no 292/UN23.03/PP.07.02/2014', '3', '2015-07-23 14:09:52');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '154', '4', '6', 'Pembimbing kedua S1 Reguler a.n Lananda P, dan Suprihatin', 'Fakultas Ekonomi', 'Desember 2011', 'SK No 309/H.23.4.FE/PP.07.02/2011', '1', '2015-07-23 14:14:53');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '155', '4', '6', 'Pembimbing utama S1 reguler&internasional a.n Yulianti Pribadi, Hanang Indra P, dan Taufik Nugroho', 'Fakultas Ekonomi', 'September 2012', 'SK no 173/UN23.03/PP.07.02/2012', '3', '2015-07-23 14:17:47');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '156', '4', '6', 'Pembimbing Utama S1 Reguler a.n Doni Saputro', 'Fakultas Ekonomi', 'Juni 2013', 'SK no 111/UN23.03/PP.07.02/2013', '1', '2015-07-23 14:19:39');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '157', '4', '6', 'Pembimbing kedua s1 Reguler a.n Tri Sutrisno', 'Fakultas Ekonomi', 'Juni 2013', 'SK no 111/UN23.03/PP.07.02/2013', '0.5', '2015-07-23 14:20:48');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '158', '4', '6', 'Pembimbing utama S1 Reguler a.n Kukuh Tri K', 'Fakultas Ekonomi', 'September 2013', 'SK no 175/UN23.03/PP/07.02/2013', '1', '2015-07-23 14:22:56');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '159', '4', '6', 'Pembimbing kedua S1 reguler a.n M. Hasanuddin', 'Fakultas Ekonomi', 'September 2013', 'SK no 175/UN23.03/PP/07.02/2013', '0.5', '2015-07-23 14:24:01');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '160', '4', '6', 'Pembimbing utama S1 Reguler a.n Pricilia Ayu K, Emirinsiana KA, dan Rasyid Wisnuu Aji', 'Fakultas Ekonomi', 'Desember 2013', 'SK no 325/UN23.03/PP.07.02/2013', '3', '2015-07-23 14:29:15');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '161', '4', '6', 'Pembimbing Utama Kerja Praktek Program D3 a.n Agustin Ika Sunarya', 'Fakultas Ekonomi', 'Februari 2013', 'No Kept 025/UN23.03/PP.07.02/2013', '1', '2015-07-23 14:34:58');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '162', '4', '6', 'Pembimbing Utama S1 Reguler a.n Albertus Denis P dan Rijli Ahsan R', 'FEB', 'Maret 2014', 'SK no 108/UN23.03/PP.07.02/2014', '2', '2015-07-23 14:36:47');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '163', '4', '6', 'Pembimbing kedua S1 Reguler a.n Galih Satria P, Sheila Ardilla, Riyan Fadilah, Sitha Nidya T', 'FEB', 'Juni 2014', 'SK no 291/UN23.03/PP.07.02/2014', '2', '2015-07-23 14:42:46');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III D', '164', '4', '6', 'Pembimbing Utama S1 Internasional a.n Rosida Afifatul A', 'FEB', 'September 2014', 'SK no 427/UN23.03/PP.07.02/2014', '1', '2015-07-23 14:48:18');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '165', '1', '3', 'Melaksanakan perkuliahan Introduction to Micro 3 SKS ampu 1', 'IESP Internasional', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '3', '2015-08-07 08:27:14');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '166', '1', '3', 'Melaksanakan perkuliahan Introduction to Economics 3 SKS ampu 2', 'Manajemen Internasional', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '1.5', '2015-08-07 08:29:04');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '167', '1', '3', 'Melaksanakan perkuliahan Marketing Management II 3 SKS ampu 2', 'Manajemen Internasional', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '1.5', '2015-08-07 08:31:23');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '168', '1', '3', 'Melaksanakan perkuliahan Introduction to Micro 3 SKS ampu 1', 'Akuntansi Internasional', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '3', '2015-08-07 08:32:58');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '169', '1', '3', 'Melaksanakan perkuliahan Ekonomi Mikro II 3 SKS ampu 2', 'IESP B', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '1.5', '2015-08-07 08:33:52');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '170', '1', '3', 'Melaksanakan perkuliahan Pengantar Ekonomi 3 SKS ampu 2', 'Manajemen B', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '1.5', '2015-08-07 08:35:07');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '171', '1', '3', 'Melaksanakan perkuliahan Pengantar Ekonomi 3 SKS ampu 2', 'Manajemen A', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '1.5', '2015-08-07 08:35:56');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '172', '1', '3', 'Melaksanakan perkuliahan Marketing Analysis 3 SKS ampu 2', 'S2 Minat Magister Management', 'Gasal 2014', 'No Kept 211/UN23.09/KP.02.01/2014', '1.5', '2015-08-07 08:37:02');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '173', '1', '3', 'Melaksanakan perkuliahan Marketing Strategy 3 SKS ampu 2', 'Program Minat S2 Sains Manajemen', 'Gasal 2014', 'No Kept 099/UN23.09/KP.02.01/2014', '1.5', '2015-08-07 08:38:27');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '174', '4', '3', 'Sebagai pembimbing utama Tesis a.n Rochmad Kasir N', 'Magister Manajemen', 'Gasal 2014', 'No Kept 167/UN23.09/PP.00.04/2014', '3', '2015-08-07 08:39:34');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '175', '4', '3', 'Sebagai pembimbing utama a.n Supriyatin', 'Magister Manajemen', 'Gasal 2014', 'No Kept 227/UN23.09/PP.00.04/2014', '3', '2015-08-07 08:40:20');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '176', '1', '3', 'Melaksanakan perkuliahan Perkembangan teori manajemen 3 Sks ampu 2', 'S3 Ilmu Manajemen', 'Gasal 2014', 'No Kept 185/UN23.09/KP.02.01/2014', '1.5', '2015-08-07 08:41:31');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '177', '5', '3', 'Ketua penguji pendadaran S1 Internasional a.n Yanuar Rahadian', 'FEB', 'Maret 2015', 'No 081/UN23.03/PP.07.02/2015', '1', '2015-08-07 08:43:12');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '178', '4', '3', 'Pembimbing Utama Skripsi a.n Reviana Imas Sari, dan Arina Nindya Kirana', 'FEB Unsoed', 'Maret 2015', 'No 080/UN23.03/PP.07.02/2015', '2', '2015-08-21 10:19:10');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '179', '4', '3', 'Pembimbing Utama Skripsi a.n Prilly Noverina S dan Satria Riantiarno', 'FEB Unsoed', 'Gasal 2014', 'No 606/UN23.03/PP.07.02/2014', '2', '2015-08-21 10:21:18');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '180', '5', '3', 'Ketua Penguji Seminar Proposal Thesis a.n Ali Murtopo', 'Program Pascasarjana Magister Management', 'September 2014', 'No Kept 150/UN23.09/PP.00.04/2014', '1', '2015-08-21 10:26:14');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '181', '5', '3', 'Ketua Penguji Seminar Proposal Tesis a.n Lucyani Syach Putri', 'Program Pascasarjana Magister Management', 'Juli 2014', 'No Kept. 130/UN23.09/PP.00.04/2014', '1', '2015-08-24 09:36:33');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '182', '5', '3', 'Ketua Penguji Pendadaran S1 Reguler a.n Pristian Puput C', 'FEB Unsoed', 'Desember 2014', 'SK No 607/UN23.03/PP.07.02/2014', '1', '2015-08-24 09:41:39');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '183', '5', '3', 'Anggota Penguji Pendadaran S1 Internasional a.n Reky Gumilang', 'FEB Unsoed', 'Desember 2014', 'SK No 607/UN23.03/PP.07.02/2014', '0.5', '2015-08-24 09:42:49');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '184', '5', '3', 'Anggota Pengujii Tesis a.n Nurtiah dan Desi Arisanti', 'Program Minat Magister Ekonomi Manajemen', 'September 2014', 'No Kept 161/UN23.09/PP.00.04/2014', '1', '2015-08-24 09:58:46');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '185', '5', '3', 'Ketua Penguji Tesis a.n Awaludin Ahmad', 'Program Minat Magister Ekonomi Manajemen', 'Desember 2014', 'No Kept 244/UN23.09/PP.00.04/2014', '1', '2015-08-24 10:00:13');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '186', '5', '3', 'Anggota Penguji Tesis a.n Dian Sukmadewi Puspitasari', 'Prodi Magister Manajemen PPS UNsoed', 'November 2014', 'No Kept 225/UN23.09/PP.00.04/2014', '0.5', '2015-08-24 10:08:27');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III B', '193', '1', '5', 'Regional Economics ( 3 SKS ) ampu 2', 'IESP Internasional', 'Gasal 2014', 'No 316/UN23.03/PP.07.00/2014', '0.75', '2016-01-05 09:20:47');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '194', '1', '5', 'Ekonomi Mikro II ( 3 SKS ) ampu 2', 'IESP B', 'Gasal 2014', 'No 316/UN23.03/PP.07.00/2014', '0.75', '2016-01-21 14:52:30');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '195', '1', '5', 'Ekonomi Industri I ( 3 SKS ) ampu 2', 'IESP B', 'Gasal 2014', 'No 316/UN23.03/PP.07.00/2014', '0.75', '2016-01-21 15:03:21');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '196', '1', '5', 'Ekonomi Internasional ( 3 SKS ) ampu 2', 'IESP B', 'Gasal 2014', 'No 316/UN23.03/PP.07.00/2014', '0.75', '2016-01-21 15:05:13');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '197', '1', '5', 'Statistik Ekonomi II ( 3 SKS ) ampu 2', 'IESP B', 'Gasal 2014', 'No 316/UN23.03/PP.07.00/2014', '0.75', '2016-01-21 15:06:27');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '198', '1', '5', 'Ekonomi SDM ( 3 SKS ) ampu 1', 'IESP C', 'Gasal 2014', 'No 316/UN23.03/PP.07.00/2014', '1.5', '2016-01-21 15:07:23');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '199', '1', '5', 'Ekonomi Mikro II ( 3 SKS ) ampu 2', 'IESP C', 'Gasal 2014', 'No 316/UN23.03/PP.07.00/2014', '0.75', '2016-01-21 15:08:17');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '200', '1', '5', 'Regional Economics ( 3 SKS ) ampu 2', 'IESP Internasional', 'Gasal 2014', 'No 316/UN23.03/PP.07.00/2014', '0.75', '2016-01-21 15:09:12');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '201', '5', '3', 'Ketua Penguji a.n Wisnu Rachmanto', 'FEB Unsoed', 'Gasal 2015', 'SK Dekan no Kept 538/UN23.03/PP.07.02/2015', '1', '2016-01-28 13:05:58');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '202', '5', '3', 'Menjadi anngota ujian pendadaran a.n Juni Purwati dan Naila Kumala', 'Fakultas Ekonomi dan Bisnis', 'Gasal 2015/2016', 'SK Dekan no Kept 538/UN23.03/PP.07.02/2015', '1', '2016-01-28 13:08:15');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '203', '4', '3', 'Menjadi Pembimbing utama Tugas Akhir a.n: Dean Arif Pranata, Andini Rizki P, Wisnu Wicaksono', 'FEB Unsoed', 'Gasal 2015/2016', 'SK Dekan No Kept 539/UN23.03/PP.07.02/2015', '3', '2016-01-28 13:11:37');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '205', '1', '3', 'Melaksanakan perkuliahan MK Pengantar Ekonomi (3 SKS) ampu 2', 'Manajemen A', 'Gasal 2015/2016', 'SK Dekan No 454/UN23.03/PP.00/2015', '1.5', '2016-01-28 16:01:49');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '206', '1', '3', 'Melaksanakan Perkuliahan MK Pengantar Ekonomi (3 SKS) ampu 2', 'Manajemen C', 'Gasal 2015/2016', 'SK Dekan No 454/UN23.03/PP.00/2015', '1.5', '2016-01-28 16:03:33');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '207', '1', '3', 'Melaksanakan Perkuliahan Introduction to Economics (3 SKS) ampu 2', 'Manajemen Internasional', 'Gasal 2015/2016', 'SK Dekan No 454/UN23.03/PP.00/2015', '1.5', '2016-01-28 16:04:51');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '208', '1', '3', 'Melaksanakan perkuliahan MK Introduction to Microeconomics (3SKS) ampu 1', 'Akuntansi Internasional', 'Gasal 2015/2016', 'SK Dekan No 454/UN23.03/PP.00/2015', '3', '2016-01-28 16:06:02');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '209', '1', '3', 'Melaksanakan Perkuliahan MK Introduction to Microeconomics (3 SKS) ampu 1', 'FEB Unsoed Kelas IESP Internasional', 'Gasal 2015/2016', 'SK Dekan No 454/UN23.03/PP.00/2015', '3', '2016-01-28 16:06:55');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '210', '1', '3', 'Melaksanakan Perkuliahan Mk Pengantar Ekonomi (3 SKS) ampu 2', 'Manajemen C', 'Gasal 2015/2016', 'SK Dekan No 454/UN23.03/PP.00/2015', '1.5', '2016-01-28 16:08:15');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '211', '5', '3', 'Ketua Penguji Tugas Akhir an Lita Rizky T', 'FEB Unsoed', 'Gasal 2015/2016', 'SK Dekan no Kept 793/UN23.03/PP.07.02/2015', '1', '2016-01-28 16:10:02');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '212', '4', '3', 'Menjadi Pembimbing Utama Tugas Akhir a.n Gunardito', 'FEB Unsoed', 'Gasal 2015/2016', 'SK Dekan no Kept 794/UN23.03/PP.07.02/2015', '1', '2016-01-28 16:11:58');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '213', '5', '3', 'Ketus penguji ujian akhir an Firlianti Eka Putri dan Rio Erlangga Sudiro', 'FEB Unsoed', 'Genap 2014/2015', 'SK Dekan No 242/UN23.03/PP.07/2015', '2', '2016-01-28 16:16:09');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '214', '9', '3', 'Menjadi Dekan Fakultas Ekonomi dan Bisnis Unsoed', 'Fakultas Ekonom i dan Bisnis Unsoed', 'genap 2014/2015', 'SK Rektor No ......', null, '2016-02-01 15:46:09');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '215', '9', '3', 'Menjadi dekan FEB Unsoed ', 'FEB Unsoed', 'gasal 2015/2016', 'SK Rektor No ......', null, '2016-02-01 15:47:23');
INSERT INTO `unsur_pel_pendidikan` VALUES ('III B', '216', '6', '3', 'Sebagai Pembimbing Akademik ', 'FEB Unsoed', 'TA 2015/2016', 'No Kept 249/UN23.03/PP.07.02/2015', '2', '2016-02-01 16:01:34');
INSERT INTO `unsur_pel_pendidikan` VALUES ('PROFESOR', '217', '9', '3', 'Sebagai Dekan Fakultas Ekonomii dan Bisnis periode masa jabatan 2012 - 2016', 'FEB Unsoed', 'Gasal dan Genap 2015/2016', 'SK Rektor No Kept. 917/UN23./KP.02.02/2012', '10', '2016-02-03 09:50:55');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '218', '1', '114', 'Praktik Kesekretariatan (3 SKS) ampu 2\r\n', 'D3 SET\'13', 'Gasal 2015', 'No.Kept.:336/UN23.03/PP.07.00/2015', '0.75', '2016-02-03 10:08:25');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '219', '1', '114', 'Pengetahuan Kesekretariatan (3 SKS) ampu 2', 'D3 SET\'14', 'Gasal 2015', 'No.Kept.:336/UN23.03/PP.07.00/2015', '0.75', '2016-02-03 10:10:09');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '220', '1', '114', 'Steno Indonesia (3 SKS) ampu 2', 'D3 SET\'14', 'Gasal 2015', 'No.Kept.:336/UN23.03/PP.07.00/2015', '0.75', '2016-02-03 10:12:23');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '221', '1', '114', 'Mengetik (3 SKS) ampu 2', 'D3 SET\'14', 'Genap 2015', 'No.Kept.:006/UN23.03/PP.07.00/2015', '0.75', '2016-02-03 10:16:45');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '222', '1', '114', 'Steno Inggris (3 SKS) ampu 2', 'D3 SET\'13', 'Genap 2014/2015', 'No.Kept.:006/UN23.03/PP.07.00/2015', '0.75', '2016-02-03 10:18:04');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '223', '1', '114', 'Etika dan Profesi Keguruan (3 SKS) ampu 2', 'Pendidikan Ekonomi', 'Gasal 2014/2015', 'No.:318/UN23.03/PP.07.00/2014', '0.75', '2016-02-03 10:20:14');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '224', '1', '114', 'Ekonomi Internasional (3 SKS) ampu 2', 'Pendidikan Ekonomi', 'Genap 2014/2015', 'No.Kept.092/UN23.03/PP.00/2015', '0.75', '2016-02-03 10:23:31');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '225', '1', '114', 'Kewirausahaan (2SKS) ampu 2', 'Pendidikan Ekonomi', 'Genap 2014/2015', 'No.Kept.092/UN23.03/PP.00/2015', '0.5', '2016-02-03 10:24:22');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '226', '1', '114', 'Statistik 1 (3 SKS) ampu 1\r\n', 'Pendidikan Ekonomi', 'Gasal 2015/2016', 'No.Kept.:454/UN23.03/PP.00/2015', '1.5', '2016-02-03 10:28:29');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '227', '1', '114', 'Stenografi Indonesia (3 SKS) ampu 2', 'D3 SET', 'Gasal 2014/2015', 'No.Kept.:389/UN23.03/PP.07.00/2014', '0.75', '2016-02-03 10:30:34');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '228', '1', '114', 'Pengetahuan Kesekretariatan (3SKS) ampu 2', 'D3 SET', 'Gasal 2014/2015', 'No.Kept.:389/UN23.03/PP.07.00/2014', '0.75', '2016-02-03 10:31:40');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '229', '1', '114', 'Praktik Kesekretariatan (3 sks) ampu 2', 'D3 SET', 'Gasal 2014/2015', 'No.Kept.:389/UN23.03/PP.07.00/2014', '0.75', '2016-02-03 10:32:41');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '230', '13', '114', 'Membuat Modul  untuk mata kuliah Ekonomi Internasional', '', 'Genap 2014/2015', 'No.Kept.:835/UN23.03/PP.03.01/2015', '5', '2016-02-03 11:46:52');
INSERT INTO `unsur_pel_pendidikan` VALUES ('ASISTEN AHLI', '231', '12', '114', 'PEKERTI', 'LP3M UNSOED', '', 'Sertifikat No.6840/UN23.15/DL.01/2015', '2', '2016-02-03 11:53:53');

-- ----------------------------
-- Table structure for unsur_pendidikan
-- ----------------------------
DROP TABLE IF EXISTS `unsur_pendidikan`;
CREATE TABLE `unsur_pendidikan` (
  `ID_UNSUR_PEND` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SUBUNPEND` int(11) DEFAULT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `KEGIATAN_PENDIDIKAN` text,
  `TEMPAT_PENDIDIKAN` varchar(50) DEFAULT NULL,
  `TGL_KEGIATAN_PEND` date DEFAULT NULL,
  `BUKTI_PENDIDIKAN` varchar(100) DEFAULT NULL,
  `NILAI_PENDIDIKAN` varchar(10) DEFAULT NULL,
  `TGL_SUBMIT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PENGAJUAN_KE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_UNSUR_PEND`),
  KEY `FK_RELATIONSHIP_10` (`ID_SUBUNPEND`),
  KEY `FK_RELATIONSHIP_11` (`ID_DOSEN`),
  CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`ID_SUBUNPEND`) REFERENCES `subun_pend` (`ID_SUBUNPEND`),
  CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unsur_pendidikan
-- ----------------------------
INSERT INTO `unsur_pendidikan` VALUES ('4', '1', '1', 'Memperoleh Ijasah S2', 'Unsoed', '2011-12-01', '2332/UN23/PPS.MNJ/S2/2012', '50', '2015-03-26 10:02:29', 'III B');
INSERT INTO `unsur_pendidikan` VALUES ('5', '1', '1', 'memperoleh ijasah s3', 'UGM', '2015-03-01', '123456789', '50', '2015-03-31 10:23:11', 'III B');
INSERT INTO `unsur_pendidikan` VALUES ('6', '1', '4', 'Mendapat gelar Master', 'UGM', '2009-04-29', 'Ijazah', '50', '2015-05-27 11:15:10', 'III B');
INSERT INTO `unsur_pendidikan` VALUES ('8', '1', '7', 'Melaksanakan Pendidikan', 'UGM Yogyakarta', '2008-02-19', 'NRM 00/139617/SP/18969', '5', '2015-07-28 08:51:11', 'III C');
INSERT INTO `unsur_pendidikan` VALUES ('9', '2', '5', 'Mengikuti diklat pra jabatan golongan III', 'Kemdikbud', '2014-11-09', '00016052/DIKLAT PRAJABATAN III/023/3276/LAN/2014', '3', '2016-01-21 15:01:34', 'ASISTEN AHLI');
INSERT INTO `unsur_pendidikan` VALUES ('10', '1', '100', 'Pendidikan Program Doktor (S3)', 'UGM', '0000-00-00', 'Ijazah', null, '2016-02-02 15:13:43', 'III D');
INSERT INTO `unsur_pendidikan` VALUES ('11', '2', '114', 'Mengikuti Diklat Prajabatan Golongan III', 'KEMDIKBUD', '2015-06-09', 'STTPDP No. 00013003/DIKLAT PRAJABATAN III/023/3276', '3', '2016-02-03 10:01:20', 'ASISTEN AHLI');

-- ----------------------------
-- Table structure for unsur_penelitian
-- ----------------------------
DROP TABLE IF EXISTS `unsur_penelitian`;
CREATE TABLE `unsur_penelitian` (
  `ID_UNSUR_PENELITIAN` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SUBUNPENELITIAN` int(11) DEFAULT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `KEGIATAN_PENELITIAN` text,
  `TEMPAT_PENELITIAN` varchar(50) DEFAULT NULL,
  `TGL_PENELITIAN` varchar(25) DEFAULT NULL,
  `BUKTI_PENELITIAN` varchar(200) DEFAULT NULL,
  `NILAI_PEER_REVIEW` varchar(10) DEFAULT NULL,
  `NILAI_PENELITIAN` varchar(10) DEFAULT NULL,
  `TGL_SUBMIT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PENGAJUAN_KE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_UNSUR_PENELITIAN`),
  KEY `FK_RELATIONSHIP_14` (`ID_SUBUNPENELITIAN`),
  KEY `FK_RELATIONSHIP_15` (`ID_DOSEN`),
  CONSTRAINT `FK_RELATIONSHIP_14` FOREIGN KEY (`ID_SUBUNPENELITIAN`) REFERENCES `subun_penelitian` (`ID_SUBUNPENELITIAN`),
  CONSTRAINT `FK_RELATIONSHIP_15` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unsur_penelitian
-- ----------------------------
INSERT INTO `unsur_penelitian` VALUES ('1', '1', '1', 'Analisis variabel - variabel yang mempengaruhi Kinerja Usaha Industri Kecil Pengolahan makanan di kabupaten banyumas', 'Banyumas', 'Januari 2003', 'Jeba Vol.5 No.1 Maret 2003 ISSN: 1411-1950', '1.907', '2.0', '2015-04-01 10:35:36', 'III B');
INSERT INTO `unsur_penelitian` VALUES ('2', '1', '1', 'Pengaruh rasio keuangan terhadap harga saham perusahaan manufaktur yang go public di bursa efek indonesia', 'Bursa Efek Indonesia', 'September 2009', 'Perfomance, Vol.10 No.1, September 2009,ISSN: 1829', '9.520', '10.0', '2015-04-01 11:18:18', 'III B');
INSERT INTO `unsur_penelitian` VALUES ('3', '1', '2', 'Faktor-faktor yang Mempengaruhi Partisipasi Masyarakat terhadap Pembangunan di Kab Banyumas', 'Kab Banyumas', '-', 'Eko - Regional Vol 4 No 2 September 2009 ISSN:1907', '5.2', '6', '2015-04-06 08:37:16', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('4', '1', '2', 'Kontribusi Besar Pendapatan Wanita Pemulung Terhadap Pendapatan Keluarga ( Studi Kasus pada Wanita Pemulung di TPA Gunung Tugel Kab Banyumas )', 'Kab Banyumas', '-', 'Eko-Regional Vol.6 No.1 Maret 2011 ISSN:1907- 6827', '5.2', '6', '2015-04-06 08:41:09', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('11', '1', '3', 'Enhancing Competitiveness Of Micro Small and Medium Enterprises (SMEs) Based on Creative Economy in Baturaden Tourist Attraction ', 'Purwokerto', '', 'Wulfenia Journal Klangenfurt, Austria Vol 22, No 4', '', '25', '2015-04-20 14:50:03', 'IV D');
INSERT INTO `unsur_penelitian` VALUES ('14', '1', '2', 'Faktor - Faktor yang Mempengaruhi Impor Indonesia, 2000.1-2008.1', '-', '-', 'Eko-Regional Vol.6 No.1 Maret 2011 ISSN:1907- 6827', '3.4', '4', '2015-06-24 08:53:40', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('15', '1', '2', 'Dampak Pelaksanaan Program Pengembangan Kecamatan (PPK) dalam Mengentaskan Kemiskinan di Kab.Banyumas (Studi Kasus di Kec Kedungbanteng)', 'Kec Kedungbanteng, Kab Banyumas', '-', 'SOLUSI Vol 8 No 4 Oktober 2009 ISSN:1412-5331', '5.4', '6', '2015-06-24 08:55:58', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('16', '1', '2', 'Pengembangan Model Pemberdayaan Masyarakat Miskin Dalam Mengentaskan Kemiskinan di Kab Banyumas ( Studi Kasus di Kab Banyumas (Studi Kasus Pada PNPM Mandiri Perkotaan)', 'Kab. Banyumas', '-', 'Prosiding dan Sertifikat ISBN:978-979-9204-51-6', '5.4', '6', '2015-06-24 09:10:53', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('17', '1', '2', 'Strategi Pengembangan dan Pengelolaan Dana Bergulir Keberlanjutan pada Program Pemberdayaan Masyarakat Menuju Masyarakat Madani', '-', '-', 'Prosiding, Makalah dan Sertifikat ISBN : 978-979-9', '9.7', '10', '2015-06-25 09:13:40', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('18', '1', '2', 'Evaluasi Penerapan Prinsip Koperasi Berdasarkan UU No.25 Tahun 1992 (Studi Kasus pada Koperasi-Koperasi Wanita di Kab. Banyumas)', 'Kab Banyumas', '-', 'SPREAD Jurnal Bisnis dan Keuangan Vol.2 No.1, Apri', '3.6', '4', '2015-06-25 09:16:39', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('19', '1', '2', 'Evaluasi Dampak Pelaksanaan Program Nasional Pemberdayaan Masyarakat Mandiri Perkotaan dalam Pengentasan Kemiskinan Perkotaan di Kab Banyumas(Studi Kasus di Kec Sokaraja)', 'Kec. Sokaraja, Kab. Banyumas', '-', 'SOLUSI Vol 11 No 3, Juli 2012 ISSN : 1412-5331', '3.6', '4', '2015-06-25 09:20:01', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('20', '1', '2', 'Partisipasi Masyarakat dalam Program Pengentasan Kemiskinan di Kec Baturraden Kab Banyumas', 'Kec. Baturaden, Kab. Banyumas', '-', 'Prosiding dan Sertifikat Seminar Nasional, ISBN:97', '5.4', '6', '2015-06-25 09:22:33', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('21', '1', '2', 'Need Assessment Of Productive Activities to Promote Improved Productivity and Income of the Poor', '-', '-', 'ICORE 2013 ISBN : 978-983-44592-5-3', '5.2', '6', '2015-06-25 09:24:52', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('22', '1', '2', 'Model Peningkatan Pendapatan Melalui Pengembangan Kemampuan Kewirausahaan Berasis Masyarakat Miskin dalam Rangka Pengentasan Kemiskinan di Kab Banyumas', 'Kab. Banyumas', '-', 'Prosiding Seminar NAsional ISBN:978-979-9204-88-2', '1.5', '2', '2015-06-25 09:29:49', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('23', '1', '2', 'PNPM Mandiri of Banyumas Regency : The Analysis of Problems and Institutional', 'Kab. Banyumas', '-', 'Prosiding Internasional ISBN:978-602-17102-2-7', '2.44', '3', '2015-06-25 09:31:54', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('24', '1', '2', 'Evaluation of The Savings and Loans Instituion PNPM Mandiri Perdesaan Order to Alleviate Poverty', '-', '-', 'Prosiding ISBN:978-979-9204-99-8', '8.45', '10', '2015-06-25 09:33:36', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('25', '1', '2', 'Model Penguatan Kelemagaan KSM PNPM Mandiri Perdesaan dalam Menigkatkan Pemberdayaan Perempuan Menuju Kemandirian Ekonomi', '-', '-', 'Prosiding Seminar Nasional', '5.4', '6', '2015-06-25 09:37:18', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('26', '1', '2', 'Terdapat Ketimpangan Distribusi Pendapatan pada Keluarga Miskin (Studi Kasus di Kec Kedungbanteng Kab Banyumas)', 'Kec Kedungbanteng, Kab Banyumas', '-', 'Eko-Regional Vol.9 No.2, September 2014, ISSN : 19', '5.4', '6', '2015-06-25 09:39:55', 'IV B');
INSERT INTO `unsur_penelitian` VALUES ('27', '1', '6', 'Pengaruh Inflasi, Pertumbuhan Ekonomi dan investasi Terhadap Pengangguran di Indonesia ( Periode 2001 - 2010 )', 'Purwokerto', 'Maret 2012', 'EKO-Regional ISSN : 1907 - 6827 Vol 7 No 1', '', '6.0', '2015-07-30 11:08:13', 'III D');
INSERT INTO `unsur_penelitian` VALUES ('28', '1', '6', 'Kajian Mengenai Potensi dan Prospek Pengembangan Agrowisata di Kecamatan Karangreja Kabupaten Purbalingga', 'Purbalingga', 'Maret 2011', 'JEBA, ISSN : 1411 - 1950 Vol 13 No 1', '', '2.0', '2015-07-30 11:09:39', 'III D');
INSERT INTO `unsur_penelitian` VALUES ('29', '1', '6', 'Partisipasi Masyarakat Dalam Program Pengentasan Kemiskinan di Kec Baturaden Kab Banyumas', 'Baturaden', '', 'Seminar Nasional ISBN:978-979-9204-79-0', '', '1.3', '2015-07-30 11:12:29', 'III D');
INSERT INTO `unsur_penelitian` VALUES ('30', '1', '6', 'Model Peningkatan Pendapatan Melalui Pengembangan Kemampuan Kewirausahaan Berbasis Masyarakat Miskin Dalam Rangka Pengentasan Kemiskinan di Kabupaten Banyumas', 'Banyumas', '', 'Prosiding Seminar Nasional, ISBN:979-979-9204-88-2', '', '2.0', '2015-07-30 11:13:51', 'III D');
INSERT INTO `unsur_penelitian` VALUES ('31', '1', '3', 'Identification of Poor People Based on Behavior, Life Quality, And Social Capital At Coastal And Mountainous Areas', '', 'Mei 2014', 'ICORE 2013', '', '9', '2015-08-07 08:46:53', 'PROFESOR');
INSERT INTO `unsur_penelitian` VALUES ('32', '1', '3', 'Inisiatif Diri sebagai Kotak Hitam Penghubung Perilaku Berwirausaha Mahasiswa', '', '', 'Prosiding Seminar Nasional', '', '4', '2015-08-07 08:48:16', 'PROFESOR');
INSERT INTO `unsur_penelitian` VALUES ('33', '1', '3', 'Consumers Consideration in Choosing Cosmetic Products', 'Purwokerto', '', 'Jurnal Akuntansi & Manajemen, No 1 Vol 25, April 2014 ISSN : 0853-1259', '', '10', '2015-08-07 08:50:30', 'PROFESOR');
INSERT INTO `unsur_penelitian` VALUES ('34', '1', '3', 'Studi Faktor yang Mempengaruhi Loyalitas Konsumen Air Minum Isi Ulang Dalam Kemasan', '', '', '	Jurnal Bisnis dan Kewirausahaan ISSN : 2302 - 4119', '', '10', '2015-08-07 09:16:41', 'PROFESOR');
INSERT INTO `unsur_penelitian` VALUES ('36', '1', '3', 'Brand Equity of Jenderal Soedirman University', '', '', 'ICORE 2015 ISBN : 978-983-44592-8-4', '', '15', '2015-08-07 09:48:21', 'PROFESOR');
INSERT INTO `unsur_penelitian` VALUES ('37', '1', '3', 'Faktor - Faktor Yang Berpengaruh Terhadap Keputusan Pembelian Secara Online di Jejaring Sosial Facebook', '', '', '	Jurnal Bisnis dan Manajemen, Vol2, No.2, September 2014 ISSN : 2338 - 9729', '', '10', '2015-08-07 09:52:38', 'PROFESOR');
INSERT INTO `unsur_penelitian` VALUES ('38', '1', '3', 'Customer Loyalty of Islamic Banks', 'Yogyakarta', '13 - 14 Agustus 2015', 'Proceedings International Conference on Entrepreneurship, Business and Social Science, ISBN : 978 - 602-14716-2-3', '', '15', '2015-08-21 16:17:01', 'PROFESOR');
INSERT INTO `unsur_penelitian` VALUES ('40', '1', '5', 'Sinergitas Kebijakan Local Economic Development dan Pembangunan Pedesaan Sebagai Upaya Peningkatan Daya Saing Desa', '', '', 'Prosiding Seminar Nasional dan Call Papper, ISBN : 978-979-9204-99-8', '', '10', '2016-01-05 09:23:44', 'III B');
INSERT INTO `unsur_penelitian` VALUES ('41', '1', '5', 'Sinergitas Kebijakan Local Economic Development dan Pembangunan Pedesaan Sebagai Upaya Peningkatan Daya Saing Desa', '', '', 'Prosiding Seminar Nasional dan Call Papper, ISBN : 978-979-9204-99-8', '', '10', '2016-01-21 15:12:06', 'ASISTEN AHLI');
INSERT INTO `unsur_penelitian` VALUES ('42', '1', '5', 'Telaah Implementasi Kebijakan Local Economic Development (LED) di Jawa Tengah', '', '', 'Eko-Regional ISSN:1907-6827 Vol 10 No 2 September 2015', '', '10', '2016-01-21 15:14:33', 'ASISTEN AHLI');
INSERT INTO `unsur_penelitian` VALUES ('43', '1', '3', 'The Effect of Corporate Social Responsibility (CSR) Towards Corporate Reputation', '', '', 'Prosiding Seminar Nasional dan Call Papper, ISBN : 978-602-1004-12-8', '', '10', '2016-02-02 09:11:16', 'PROFESOR');
INSERT INTO `unsur_penelitian` VALUES ('44', '1', '3', 'Key Successful Indicators For Small Businesses\' Integrated Marketing Model', 'Purwokerto', '', 'Proceeding International ISBN : 978-979-9022-12-7', '', '15', '2016-02-02 10:18:19', 'PROFESOR');
INSERT INTO `unsur_penelitian` VALUES ('45', '1', '114', 'PELAKSANAAN KKG DALAM UPAYA MENINGKATKAN KOMPETENSI\r\nPROFESIONAL GURU TAMAN KANAK-KANAK (STUDI KUALITATIF KKG\r\nTK GUGUS RA KARTINI PURWOKERTO UTARA)\r\n', 'TK Kelurahan Bancar Kembar', '', 'Jurnal Performance Vol 22, No 2 (2015) ISBN : 1829-6467', '', '10', '2016-02-03 10:45:58', 'ASISTEN AHLI');
INSERT INTO `unsur_penelitian` VALUES ('46', '1', '114', 'SUPERVISI PENDIDIKAN SEBAGAI UPAYA PENINGKATAN KUALITAS PEMBELAJARAN EKONOMI PADA IMPLEMENTASI KURIKULUM 2013', '', '', 'Prosiding dan sertifikat ISSN : 978-979-602-8580-67-0', '', '10', '2016-02-03 11:11:15', 'ASISTEN AHLI');
INSERT INTO `unsur_penelitian` VALUES ('47', '1', '114', 'The Effect of Store Atmosphere and In-Store Convenience through Costumer Satisfaction Towards Consumers Repurchasing Intention', '', '', 'Prosiding dan sertifikat ISBN : 978-602-1004-12-8', '', '10', '2016-02-03 11:16:55', 'ASISTEN AHLI');
INSERT INTO `unsur_penelitian` VALUES ('48', '1', '114', 'Kinerja Guru Tersertifikasi pada Mata Pelajaran Ekonomi (Studi Kasus Pada SMA Kabupaten Jepara Provinsi Jawa Tengah)', '', '', 'Prosiding dan sertifikat ISBN : 978-602-397-001-1', '', '10', '2016-02-03 11:23:28', 'ASISTEN AHLI');
INSERT INTO `unsur_penelitian` VALUES ('49', '1', '114', 'PENGARUH PEMBERIAN PENGUATAN DAN FASILITAS BELAJAR MATA DIKLAT MEMBUAT DOKUMEN SISWA KELAS XI PROGRAM KEAHLIAN ADMINISTRASI PERKANTORAN SMK NEGERI 1 SURAKART TAHUN AJARAN 2009/2010', '', '', 'Prosiding dan sertifikat ISBN : 978-979-9204-99-8', '', '10', '2016-02-03 11:29:42', 'ASISTEN AHLI');

-- ----------------------------
-- Table structure for unsur_pengabdian
-- ----------------------------
DROP TABLE IF EXISTS `unsur_pengabdian`;
CREATE TABLE `unsur_pengabdian` (
  `ID_SUBUNPENGAB` int(11) NOT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `ID_UNSUR_PENGABDIAN` int(11) NOT NULL AUTO_INCREMENT,
  `KEGIATAN_PENGABDIAN` text,
  `BENTUK_PENGABDIAN` varchar(35) DEFAULT NULL,
  `TEMPAT_PENGABDIAN` varchar(50) DEFAULT NULL,
  `TGL_PENGABDIAN` date DEFAULT NULL,
  `BUKTI_PENGABDIAN` varchar(100) DEFAULT NULL,
  `NILAI_PENGABDIAN` varchar(10) DEFAULT NULL,
  `TGL_SUBMIT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PENGAJUAN_KE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_UNSUR_PENGABDIAN`),
  KEY `FK_RELATIONSHIP_16` (`ID_SUBUNPENGAB`),
  KEY `FK_RELATIONSHIP_17` (`ID_DOSEN`),
  CONSTRAINT `FK_RELATIONSHIP_16` FOREIGN KEY (`ID_SUBUNPENGAB`) REFERENCES `subun_pengabdian` (`ID_SUBUNPENGAB`),
  CONSTRAINT `FK_RELATIONSHIP_17` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unsur_pengabdian
-- ----------------------------
INSERT INTO `unsur_pengabdian` VALUES ('3', '1', '1', 'Teknik menangkap peluang bisnis', 'Penyuluhan', 'Mahasiswa dan Mitra Pengusaha', '2009-11-26', '6836/H23.4.FE/PP/2009', '1.0', '2015-04-01 11:28:37', 'III B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '2', '2', 'Peluang Kredit', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2015-04-01', 'Surtug no 5224/H23.4.FE/PM.01/2011', '1', '2015-04-06 08:44:48', 'IV B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '3', '4', 'Difusi Inovasi untuk Meningkatkan Daya Saing dan Memperluas Jaringan Pemasaran Produk', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2014-11-06', 'Surtug No 4060/UN23.03/PM.01/2014', '1', '2015-04-15 16:24:12', 'IV D');
INSERT INTO `unsur_pengabdian` VALUES ('3', '2', '5', 'Prinsip-Prinsip Perkreditan pada Koperasi Simpan Pinjam', 'Penyuluhan', 'Koperasi Mandiri Desa Kebocoran', '2012-01-15', 'Surtug No 144a/UN23.4.FE/PM.01/2012', '1', '2015-06-25 10:08:30', 'IV B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '2', '6', 'Menyiapkan Pola Manajemen Koperasi Baru', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2013-06-12', 'Surtug No 3217/UN23.10/PM/2013', '1', '2015-06-25 10:10:53', 'IV B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '2', '7', 'Tata Pembukuan Koperasi', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2013-07-18', 'Surtug No 3920a/UN23.10/PM/2013', '1', '2015-06-25 10:12:51', 'IV B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '2', '8', 'Peluang Bisnis', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2013-12-20', 'Surtug No 5132/UN23.03/PM.01/2013', '1', '2015-06-25 10:14:13', 'IV B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '2', '9', 'Pembagian Tugas ( Job Description ) dalam Organisasi', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2014-08-21', 'Surtug No 6168/UN23.10/PM/2014', '1', '2015-06-25 10:15:59', 'IV B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '2', '10', 'Manajemen Keuangan bagi UMKM', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2014-08-22', 'Surtug No 6187/UN23.10/PM/2014', '1', '2015-06-25 10:17:07', 'IV B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '6', '11', 'Pengembangan Rosella di Tinjau dari Segi Ekonomi di Kecamatan Sumpiuh Kabupaten Banyumas', 'Penyuluhan', 'Kecamatan Sumpiuh', '2008-09-05', 'SK no 118/H23.4.FE/PM/2008', '1', '2015-07-29 08:44:31', 'III B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '6', '12', 'Susu Kecambah Menembus Pasar Kota', 'Penyuluhan', 'Desa Kedondong Kecamatan Sokaraja', '2013-09-03', 'Surtug No 4764/UN23.10/PM/2013', '1', '2015-07-29 08:46:48', 'III B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '6', '13', 'Susu Kecambah Merambah Pasar Kota', 'Penyuluhan', 'Desa Kedondong Kecamatan Sokaraja', '2013-09-03', 'Surtug No 4764/UN23.10/PM/2013', '1', '2015-07-29 15:01:04', 'III D');
INSERT INTO `unsur_pengabdian` VALUES ('3', '3', '14', 'Outlook Ekonomi Indonesia Tahun 2015 : Tinjauan Makroekonomi Prospek dan Tantangan', 'Penyuluhan', 'Purwokerto', '2014-09-20', 'No 2476/UN23.03/PM.01/2014', '1', '2015-08-21 15:51:12', 'PROFESOR');
INSERT INTO `unsur_pengabdian` VALUES ('3', '3', '15', 'Merancang Desain Pekerjaan', 'Penyuluhan', 'Desa Samudra Kulon, Kec Gumelar, Kab Banyumas', '2015-08-15', 'No 4517/UN23.03/PM.01/2015', '1', '2015-08-21 15:58:00', 'PROFESOR');
INSERT INTO `unsur_pengabdian` VALUES ('3', '3', '16', 'Difusi Inovasi untuk Meningkatkan Daya Saing dan Memperluas jaringan Pemasaran Produk', 'Penyuluhan', 'Desa Kebocoran, Kecamatan Kedungbanteng', '2014-11-06', 'Surtug No 4060/UN23.03/PM.01/2014', '1', '2015-08-24 10:42:09', 'PROFESOR');
INSERT INTO `unsur_pengabdian` VALUES ('3', '5', '17', 'Tata Cara Pendirian Badan Usaha Milik Desa', 'Penyuluhan', 'Desa Cilongkrak Kecamatan Wanareja', '0000-00-00', 'Surtug no 4450/UN23.03/PM.01/2015', '1', '2016-01-05 09:26:36', 'III B');
INSERT INTO `unsur_pengabdian` VALUES ('3', '5', '18', 'Tata Cara Pendirian Badan Usaha Milik Desa', 'Penyuluhan', 'Desa Cilongkrak Kecamatan Wanareja', '2015-08-08', 'Surtug no 4450/UN23.03/PM.01/2015', '1', '2016-01-21 15:15:57', 'ASISTEN AHLI');
INSERT INTO `unsur_pengabdian` VALUES ('3', '3', '19', 'Implementasi siastem Pengendalian Manajemen Pada Organisasi Sektor Publik', 'Penyuluhan', 'PDAM Kabupaten Purbalingga', '2015-07-03', 'Surat Tugas No 4206/UN23.03/PM.01/2015', '1', '2016-02-01 08:49:42', 'PROFESOR');
INSERT INTO `unsur_pengabdian` VALUES ('3', '3', '20', 'Peran sistem Informasi Manajemen Dalam Pengambilan Keputusan Manajerial', 'Penyuluhan', 'PDAM Kabupaten Purbalingga', '2015-06-19', 'Surat Tugas No 3982/UN23.03/PM.01/2015', '1', '2016-02-01 08:51:36', 'PROFESOR');
INSERT INTO `unsur_pengabdian` VALUES ('3', '3', '21', 'Koperasi Syariah Dalam Pengembangan Usaha', 'Penyuluhan', 'Desa Tambak Sogra', '2015-07-02', 'Surat Tugas No 4069/UN23.03/PM.01/2015', '1', '2016-02-01 08:53:29', 'PROFESOR');
INSERT INTO `unsur_pengabdian` VALUES ('3', '114', '22', 'Perencanaan Sistem Kearsipan di Instansi Pemerintah Maupun Swasta', 'Penyuluhan', 'TK Kelurahan Bancar Kembar', '2014-10-15', 'Surtug No.: 3070/UN23.03/PM.01/2014', '1', '2016-02-03 10:53:04', 'ASISTEN AHLI');
INSERT INTO `unsur_pengabdian` VALUES ('3', '114', '23', 'Wajib Belajar (Wajar) 12 tahun dan Gemar Membaca Sebagai Upaya Peningkatan Kualitas Sumber Daya Manusia Indonesia', 'Penyuluhan', 'SD N 1 Pageraji ', '2015-08-19', 'Surtug No.: 4427/UN23.03/PM.01/2015', '1', '2016-02-03 11:00:07', 'ASISTEN AHLI');
INSERT INTO `unsur_pengabdian` VALUES ('3', '114', '24', 'Wajib Belajar (Wajar) 12 Tahun dan Gemar Membaca Sebagai Upaya Peningkatan Kualitas Sumber Daya Manusia Indonesia', 'Penyuluhan', 'SD N 3 Pageraji', '2015-08-25', 'Surtug No.: 4427/UN23.03/PM.01/2015', '1', '2016-02-03 11:02:51', 'ASISTEN AHLI');
INSERT INTO `unsur_pengabdian` VALUES ('3', '3', '25', 'Pemasaran produk produk UMKM', 'Penyuluhan', 'Desa Purbasari Kec. padamara, Kab Purbalingga', '2016-02-06', 'Surat Tugas No 750/UN23.03/PM.01/2016', null, '2016-02-09 12:53:55', 'PROFESOR');

-- ----------------------------
-- Table structure for unsur_penunjang
-- ----------------------------
DROP TABLE IF EXISTS `unsur_penunjang`;
CREATE TABLE `unsur_penunjang` (
  `ID_UNSUR_PENUNJANG` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SUBUNPENUNJANG` int(11) DEFAULT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `KEGIATAN_PENUNJANG` text,
  `TEMPAT_PENUNJANG` varchar(50) DEFAULT NULL,
  `TGL_KEG_PENUNJANG` varchar(30) DEFAULT NULL,
  `KEDUDUKAN_SEBAGAI` varchar(30) DEFAULT NULL,
  `BUKTI_PENUNJANG` varchar(100) DEFAULT NULL,
  `NILAI_PENUNJANG` varchar(10) DEFAULT NULL,
  `TGL_SUBMIT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PENGAJUAN_KE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_UNSUR_PENUNJANG`),
  KEY `FK_RELATIONSHIP_18` (`ID_SUBUNPENUNJANG`),
  KEY `FK_RELATIONSHIP_19` (`ID_DOSEN`),
  CONSTRAINT `FK_RELATIONSHIP_18` FOREIGN KEY (`ID_SUBUNPENUNJANG`) REFERENCES `subun_penunjang` (`ID_SUBUNPENUNJANG`),
  CONSTRAINT `FK_RELATIONSHIP_19` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unsur_penunjang
-- ----------------------------
INSERT INTO `unsur_penunjang` VALUES ('1', '6', '1', 'Pelatihan E-Learning Bagi Dosen', 'Fakultas Ekonomi dan Bisnis Unsoed', '11 - 13 Desember 2008', 'Peserta', 'Sertifikat', '1.0', '2015-04-01 14:03:59', 'III B');
INSERT INTO `unsur_penunjang` VALUES ('2', '1', '2', 'Panitia Seminar Hasil Penelitian Dosen FE Unsoed tahun 2011', 'FE Unsoed', '21 Septemer 2011', 'Koordinator', 'SK No 258/H23.4.FE/DL.07.00/2013', '1', '2015-04-06 08:47:30', 'IV B');
INSERT INTO `unsur_penunjang` VALUES ('5', '1', '3', 'Panitia Kuliah Umum Sosialisasi Masyarakat Ekonomi Asia', 'FEB Unsoed', '10 Desember 2014', 'Penanggung jawab / ketua', 'No Kept 554/UN23.03/DL.07/2014', '3', '2015-04-15 16:25:51', 'IV D');
INSERT INTO `unsur_penunjang` VALUES ('6', '6', '3', 'Seminar Nasional Ekonomi 2014 \" Kesiapan Daerah Menghadapi Masyarakat Ekonomi Asean 2015\"', 'Lhokseumawe', '18 - 20 November 2014', 'Peserta', 'Sertifikat', '2', '2015-04-15 16:27:08', 'IV D');
INSERT INTO `unsur_penunjang` VALUES ('7', '1', '2', 'Panitia Dies Natalis FE ke 50 dan Konggres AFEBI ', 'FE Unsoed', '04 Oktober 2013', 'Anggota', 'SK No 209/UN23.03/DL.07.00/2013', '1', '2015-06-25 10:49:43', 'IV B');
INSERT INTO `unsur_penunjang` VALUES ('8', '6', '2', 'Workshop Kurikulum Jurusan IESP', 'FEB Unsoed', '13 Nopember 2014', 'Pembicara', 'Sertifikat, Surtug dan Makalah', '1', '2015-06-25 10:53:54', 'IV B');
INSERT INTO `unsur_penunjang` VALUES ('9', '6', '2', 'Sosialisasi dan Training of Trainer Penerapan Kurikulum Berbasis Kompetensi dan Kerangka Kualifikasi Nasional Indonesia ( KKNI )', 'Unsoed', '10-14 September 2012', 'Peserta', 'Sertifikat', '1', '2015-06-25 11:00:45', 'IV B');
INSERT INTO `unsur_penunjang` VALUES ('10', '2', '3', 'Tim Komite Pendidikan Profesi Akuntansi Program Pendidikan Profesi Akuntansi ( PPAk ) FEB UNSOED', 'FEB Unsoed', '11 Agustus 2015', 'Ketua Tim Komite', 'No Kept 0447/UN23.03/DT.04/2015', '1', '2015-08-21 10:15:55', 'PROFESOR');
INSERT INTO `unsur_penunjang` VALUES ('11', '6', '3', 'Sidang Pleno ke VIII AFEBI', 'Karawang', '04 Juni 2015', 'Peserta', 'Sertifikat', '2', '2015-08-21 16:24:27', 'PROFESOR');
INSERT INTO `unsur_penunjang` VALUES ('12', '6', '3', 'Kebijakan Sektor Publik Era Pemerintahan Baru di Guangzhou, RRT', 'Guangzhou', '08 November 2014', 'Peserta', 'Piagam Penghargaan', '2', '2015-08-21 16:27:08', 'PROFESOR');
INSERT INTO `unsur_penunjang` VALUES ('13', '6', '3', 'Seminar Nasional Ekonomi 2014', 'Fakultas Ekonomi Univ Malikussaleh, Lhokseumawe', '18 - 20 November 2014', 'Peserta', 'Sertifikat', '1', '2015-08-24 10:36:11', 'PROFESOR');
INSERT INTO `unsur_penunjang` VALUES ('14', '6', '3', 'Panitia Kuliah Umum Sosialisasi Masyarakat Ekonomi Asia', 'FEB Unsoed', '10 Desember 2014', 'Penanggung Jawab', 'SK Dekan No Kept 554/UN23.03/DL.07/2014', '1', '2015-08-24 10:39:09', 'PROFESOR');
INSERT INTO `unsur_penunjang` VALUES ('15', '6', '5', 'Pelatihan Penulisan Proposal Pengabdian', 'LPPM Unsoed', '14 Oktober 2014', 'Peserta', 'Sertifikat', '1', '2016-01-05 09:27:53', 'III B');
INSERT INTO `unsur_penunjang` VALUES ('16', '6', '5', 'Lomba Karya Tulis Ilmiah FEB', 'Unsoed', '29 Nopember 2014', 'Juri', 'Sertifikat', '1', '2016-01-05 09:28:49', 'III B');
INSERT INTO `unsur_penunjang` VALUES ('17', '1', '5', 'Panitia Pemilihan Pengelola Program D3 FEB Unsoed', 'FEB Unsoed', '14 Desember 2015', 'Ketua', 'SK No Kept 850/UN23.03/PP.04.00/2015', '3', '2016-01-05 09:30:21', 'III B');
INSERT INTO `unsur_penunjang` VALUES ('18', '6', '5', 'Pelatihan Penulisan Proposal Pengabdian', 'LPPM Unsoed', '14 Desember 2014', 'Peserta', 'Sertifikat', '1', '2016-01-21 15:18:32', 'ASISTEN AHLI');
INSERT INTO `unsur_penunjang` VALUES ('19', '6', '5', 'Lomba Karya Tulis Ilmiah FEB', 'Unsoed', '29 Nopember 2014', 'Juri', 'Sertifikat', '1', '2016-01-21 15:19:32', 'ASISTEN AHLI');
INSERT INTO `unsur_penunjang` VALUES ('20', '1', '5', 'Panitia Pemilihan Pengelola Program D3 FEB Unsoed', 'FEB Unsoed', '14 Desember 2015', 'Ketua', 'SK No Kept 850/UN23.03/PP.04.00/2015', '3', '2016-01-21 15:20:24', 'ASISTEN AHLI');
INSERT INTO `unsur_penunjang` VALUES ('21', '3', '3', 'Pengurus I.S.E.I cabang Purwokerto', 'Purwokerto', '', 'Ketua', 'SK No. S-07/PP-ISEI/SK/II/2014', '1.5', '2016-02-01 15:54:31', 'PROFESOR');
INSERT INTO `unsur_penunjang` VALUES ('22', '1', '3', 'Anggota Senat Universitas Jenderal Soedirman Periode Masa Jabatan 2015-2019', 'Unsoed Purwokerto', '', 'Anggota', 'No Kept 1346/UN23/DT.02/2015', '2', '2016-02-03 09:10:25', 'PROFESOR');
INSERT INTO `unsur_penunjang` VALUES ('23', '1', '3', 'Ketua Tim Komisi Program Studi S3 Manajemen', 'FEB Unsoed', '', 'Ketua', 'No Kept 1253/UN23/KP.02.02/2015', '3', '2016-02-03 09:23:00', 'PROFESOR');
INSERT INTO `unsur_penunjang` VALUES ('24', '1', '114', 'PANITIA PEMILIHAN PENGELOLA PROGRAM D3', '', '', 'Anggota Tim', 'No.Kept.: 850/UN23.03/PP.04.00', '1', '2016-02-03 11:35:27', 'ASISTEN AHLI');
INSERT INTO `unsur_penunjang` VALUES ('25', '3', '114', 'Anggota ASPROPENDO', '', '', 'Anggota', 'Kartu Anggota', '1', '2016-02-03 11:37:27', 'ASISTEN AHLI');
INSERT INTO `unsur_penunjang` VALUES ('26', '6', '114', 'Semnas \" Entrepreneurial Finance and Innovation\"', 'FEB UNSOED', '2015-08-11', 'PESERTA', 'SERTIFIKAT', '1', '2016-02-03 11:40:06', 'ASISTEN AHLI');
INSERT INTO `unsur_penunjang` VALUES ('27', '6', '114', 'SEMNAS \"PENGEMBANGAN SUMBER DAYA PEDESAAN DAN KEARIFAN LOKAL BERKELANJUTAN V\"', 'LPPM UNSOED', '2015-11-19', 'PESERTA', 'SERTIFIKAT', '1', '2016-02-03 11:42:06', 'ASISTEN AHLI');
INSERT INTO `unsur_penunjang` VALUES ('28', '6', '114', 'SEMNAS \" Tantangan Dunia Pendidikan dalam Menghadapi Masyarakat Ekonomi Asean\"', 'FEB UNSOED', '2015-11-25', 'PESERTA', 'SERTIFIKAT', '1', '2016-02-03 11:43:29', 'ASISTEN AHLI');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `NIP_USER` varchar(30) DEFAULT NULL,
  `NAMA_USER` varchar(80) DEFAULT NULL,
  `USERNAME` varchar(25) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `LEVEL` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '196707051997022001', 'Retno Widuri', '196707051997022001', '19670705', '2');
INSERT INTO `user` VALUES ('2', '196201111988032001', 'Dijan Rahajuni', '196201111988032001', '19620111', '2');
INSERT INTO `user` VALUES ('3', '196003301985031006', 'Pramono Hari Adi', '196003301985031006', '19600330', '2');
INSERT INTO `user` VALUES ('4', '198110262005012001', 'Rini Widianingsih', '198110262005012001', '19811026', '2');
INSERT INTO `user` VALUES ('5', '198504102014041001', 'Bambang', '198504102014041001', '19850410', '2');
INSERT INTO `user` VALUES ('6', '195607121985111001', 'Rusmusi IMP', '195607121985111001', '19560712', '2');
INSERT INTO `user` VALUES ('7', '198111252009122004', 'Widyahayu Warmmeswara Kusumastati', '198111252009122004', '19811125', '2');
INSERT INTO `user` VALUES ('11', '195709261983031002', 'Sigit Wibowo Dwi Nugroho', '195709261983031002', '19570926', '2');
INSERT INTO `user` VALUES ('66', '196108071986011001', 'Agus Suroso', '196108071986011001', '19610807', '2');
INSERT INTO `user` VALUES ('67', '195305111986011001', 'Riswan', '195305111986011001', '19530511', '2');
INSERT INTO `user` VALUES ('69', '197404011998021001', 'Suliyanto', '197404011998021001', '19740401', '2');
INSERT INTO `user` VALUES ('70', '195407271981031005', 'Haryadi', '195407271981031005', '19540727', '2');
INSERT INTO `user` VALUES ('71', '195304201980032005', 'Dwiwiyati Astogini', '195304201980032005', '19530420', '2');
INSERT INTO `user` VALUES ('72', '195906021985031002', 'Bambang Sunarko', '195906021985031002', '19590602', '2');
INSERT INTO `user` VALUES ('73', '195811071985032001', 'Titi Nurfitri', '195811071985032001', '19581107', '2');
INSERT INTO `user` VALUES ('74', '196207191989011001', 'Sudarto', '196207191989011001', '19620719', '2');
INSERT INTO `user` VALUES ('75', '195305291982021001', 'Karsidi', '195305291982021001', '19530529', '2');
INSERT INTO `user` VALUES ('76', '196001311989031002', 'Ade Banani', '196001311989031002', '19600131', '2');
INSERT INTO `user` VALUES ('77', '195409101989012001', 'Sri Murni Setyawati', '195409101989012001', '19540910', '2');
INSERT INTO `user` VALUES ('78', '195909091989011001', 'Tohir', '195909091989011001', '19590909', '2');
INSERT INTO `user` VALUES ('79', '197012292003122001', 'Wiwiek Rabiatul Adawiyah', '197012292003122001', '19701229', '2');
INSERT INTO `user` VALUES ('80', '197011251998022001', 'Sri Lestari', '197011251998022001', '19701125', '2');
INSERT INTO `user` VALUES ('81', '195409091986011001', 'Sumarsono', '195409091986011001', '19540909', '2');
INSERT INTO `user` VALUES ('82', '195502261984121001', 'Eling Purwanto Jati', '195502261984121001', '19550226', '2');
INSERT INTO `user` VALUES ('83', '195205071980031002', 'Yayat Giyatno', '195205071980031002', '19520507', '2');
INSERT INTO `user` VALUES ('84', '195310231986011001', 'Untung Kumorohadi', '195310231986011001', '19531023', '2');
INSERT INTO `user` VALUES ('85', '195610081985032002', 'Sri Martini', '195610081985032002', '19561008', '2');
INSERT INTO `user` VALUES ('86', '195702241986012001', 'Suci Indriati', '195702241986012001', '19570224', '2');
INSERT INTO `user` VALUES ('87', '195511201988031002', 'Arifin Mukti', '195511201988031002', '19551120', '2');
INSERT INTO `user` VALUES ('88', '195809181986011001', 'Jaryono', '195809181986011001', '19580918', '2');
INSERT INTO `user` VALUES ('89', '197308181999032001', 'Siti Zulaikha Wulandari', '197308181999032001', '19730818', '2');
INSERT INTO `user` VALUES ('90', '197511191999032003', 'Weni Novandari', '197511191999032003', '19730818', '2');
INSERT INTO `user` VALUES ('91', '197704102006041001', 'Najmudin', '197704102006041001', '19770410', '2');
INSERT INTO `user` VALUES ('92', '197808242005011003', 'Rahab', '197808242005011003', '19780824', '2');
INSERT INTO `user` VALUES ('93', '196110311986011001', 'Achmad Sudjadi', '196110311986011001', '19611031', '2');
INSERT INTO `user` VALUES ('94', '197501302000122004', 'Dwita Darmawati', '197501302000122004', '19750130', '2');
INSERT INTO `user` VALUES ('95', '198305242008122003', 'Sulistyandari', '198305242008122003', '19830524', '2');
INSERT INTO `user` VALUES ('96', '198106232006041001', 'Adi Indrayanto', '198106232006041001', '19810623', '2');
INSERT INTO `user` VALUES ('97', '198110162003121003', 'Dian Purnomo Jati', '198110162003121003', '19811016', '2');
INSERT INTO `user` VALUES ('98', '197901172006042003', 'Ekaningtyas Widiastuti', '197901172006042003', '19790117', '2');
INSERT INTO `user` VALUES ('100', '197912152006041002', 'Ratno Purnomo', '197912152006041002', '19791215', '2');
INSERT INTO `user` VALUES ('101', '197402192005011001', 'Refius Pradipta Setyanto', '197402192005011001', '19740219', '2');
INSERT INTO `user` VALUES ('102', '197701072008121001', 'Ary Yunanto', '197701072008121001', '19770107', '2');
INSERT INTO `user` VALUES ('103', '197610122009121002', 'Daryono', '197610122009121002', '19761012', '2');
INSERT INTO `user` VALUES ('104', '198303252009122004', 'Sri Retno Handayani', '198303252009122004', '19830325', '2');
INSERT INTO `user` VALUES ('105', '198502182009122008', 'Intan Shaferi', '198502182009122008', '19850218', '2');
INSERT INTO `user` VALUES ('106', '197909302009122002', 'Ade Irma Anggaraeni', '197909302009122002', '19790930', '2');
INSERT INTO `user` VALUES ('107', '198310122009122003', 'Alisa Tri Nawarini', '198310122009122003', '19831012', '2');
INSERT INTO `user` VALUES ('108', '198211142010121007', 'Rio Dhani Laksana', '198211142010121007', '19821114', '2');
INSERT INTO `user` VALUES ('109', '197802122010012002', 'Lusi Suwandani', '197802122010012002', '19780212', '2');
INSERT INTO `user` VALUES ('110', '198608192010122007', 'Larisa Pradisti', '198608192010122007', '19860819', '2');
INSERT INTO `user` VALUES ('111', '195408141986011001', 'Suwaryo', '195408141986011001', '19540814', '2');
INSERT INTO `user` VALUES ('112', '197701242005012004', 'Devani Laksmi Indyastuti', '197701242005012004', '19770124', '2');
INSERT INTO `user` VALUES ('113', '198504152014042001', 'Meutia Karunia Dewi', '198504152014042001', '19850415', '2');
INSERT INTO `user` VALUES ('114', '198810252014042001', 'Lina Rifda Naufalin', '198810252014042001', '19881025', '2');
INSERT INTO `user` VALUES ('115', '199009102014041001', 'Candra Suparno', '199009102014041001', '19900910', '2');
INSERT INTO `user` VALUES ('117', '196108281987031012', 'Bambang Agus Pramuka', '196108281987031012', '19610828', '2');
INSERT INTO `user` VALUES ('118', '195208121980031002', 'Havid Sularso', '195208121980031002', '19520812', '2');
INSERT INTO `user` VALUES ('119', '195702201989031001', 'Amber Lumbantoruan', '195702201989031001', '19570220', '2');
INSERT INTO `user` VALUES ('120', '196103221990021001', 'Eko Hariyanto', '196103221990021001', '19610322', '2');
INSERT INTO `user` VALUES ('121', '195305191989031001', 'Edward Kanam Sinoeraya', '195305191989031001', '19530519', '2');
INSERT INTO `user` VALUES ('122', '195206101990021001', 'Halomoan Ompusunggu', '195206101990021001', '19520610', '2');
INSERT INTO `user` VALUES ('123', '195905121986011001', 'Rasyid Mei Mustafa', '195905121986011001', '19590512', '2');
INSERT INTO `user` VALUES ('124', '196303281989011001', 'Agung Praptapa', '196303281989011001', '19630328', '2');
INSERT INTO `user` VALUES ('125', '196709141994022001', 'Atiek Sri Purwati', '196709141994022001', '19670914', '2');
INSERT INTO `user` VALUES ('126', '196207061988032002', 'Irianing Suparlinah', '196207061988032002', '19620706', '2');
INSERT INTO `user` VALUES ('127', '195501011988031001', 'Sukirman', '195501011988031001', '19550101', '2');
INSERT INTO `user` VALUES ('128', '196108141987031001', 'Agus Faturokhman', '196108141987031001', '19610814', '2');
INSERT INTO `user` VALUES ('129', '195602271987031001', 'Sujono', '195602271987031001', '19560227', '2');
INSERT INTO `user` VALUES ('130', '196106091987031003', 'Sugiarto', '196106091987031003', '19610609', '2');
INSERT INTO `user` VALUES ('131', '196107111990022001', 'Yusriyati Nur Farida', '196107111990022001', '19610711', '2');
INSERT INTO `user` VALUES ('132', '196212041992032002', 'Permata Ulfah', '196212041992032002', '19621204', '2');
INSERT INTO `user` VALUES ('133', '197106251998022002', 'Puji Lestari', '197106251998022002', '19710625', '2');
INSERT INTO `user` VALUES ('134', '196503241990031001', 'Adi Wiratno', '196503241990031001', '19650324', '2');
INSERT INTO `user` VALUES ('135', '197501092000122001', 'Christina Tri Setyorini', '197501092000122001', '19750109', '2');
INSERT INTO `user` VALUES ('136', '197007142006042001', 'Umi Pratiwi', '197007142006042001', '19700714', '2');
INSERT INTO `user` VALUES ('137', '197505282003121001', 'Eko Suyono', '197505282003121001', '19750528', '2');
INSERT INTO `user` VALUES ('138', '195704161988031001', 'Mafudi', '195704161988031001', '19570416', '2');
INSERT INTO `user` VALUES ('139', '197503312000031002', 'Oman Rusmana', '197503312000031002', '19750331', '2');
INSERT INTO `user` VALUES ('140', '195810061986011001', 'I Wayan Mustika', '195810061986011001', '19581006', '2');
INSERT INTO `user` VALUES ('141', '195402231987031003', 'Saras Supeno', '195402231987031003', '19540223', '2');
INSERT INTO `user` VALUES ('142', '195504141988031001', 'Syaiful Azhar', '195504141988031001', '19550414', '2');
INSERT INTO `user` VALUES ('143', '196103021987031003', 'Agus Sunarmo', '196103021987031003', '19610302', '2');
INSERT INTO `user` VALUES ('144', '196704131992032002', 'Triani Arofah', '196704131992032002', '19670413', '2');
INSERT INTO `user` VALUES ('145', '196812241994022003', 'Khrisnhoe Rachmi Fitrijati', '196812241994022003', '19681224', '2');
INSERT INTO `user` VALUES ('146', '196110131988032002', 'Dewi Susilowati', '196110131988032002', '19611013', '2');
INSERT INTO `user` VALUES ('147', '197612052000122001', 'Laely Budiarti', '197612052000122001', '19761205', '2');
INSERT INTO `user` VALUES ('148', '197911212005011001', 'Icuk Rangga Bawono', '197911212005011001', '19791121', '2');
INSERT INTO `user` VALUES ('149', '196812282000031001', 'Bambang Setyabudi I', '196812282000031001', '19681228', '2');
INSERT INTO `user` VALUES ('150', '198007212005012002', 'Eliada Herwiyanti', '198007212005012002', '19800721', '2');
INSERT INTO `user` VALUES ('151', '197508221999032001', 'Margani Pinasti', '197508221999032001', '19750822', '2');
INSERT INTO `user` VALUES ('152', '197511072003122003', 'Poppy Dian Indira K', '197511072003122003', '19751107', '2');
INSERT INTO `user` VALUES ('153', '197501152005011004', 'Yanuar Eko Restianto', '197501152005011004', '19750115', '2');
INSERT INTO `user` VALUES ('154', '198207162006042001', 'Wita Ramadhanti', '198207162006042001', '19820716', '2');
INSERT INTO `user` VALUES ('155', '195311111989012001', 'A.Tien Sukaesih', '195311111989012001', '19531111', '2');
INSERT INTO `user` VALUES ('156', '195807271987031002', 'Taufik Hidayat', '195807271987031002', '19580727', '2');
INSERT INTO `user` VALUES ('157', '197809182006042001', 'Negina Kencono Putri', '197809182006042001', '19780918', '2');
INSERT INTO `user` VALUES ('158', '197711152008121003', 'Warsidi', '197711152008121003', '19771115', '2');
INSERT INTO `user` VALUES ('159', '198109052009122001', 'Dona Primasari', '198109052009122001', '19810905', '2');
INSERT INTO `user` VALUES ('160', '198304142009121004', 'Yudha Aryo Sudibyo', '198304142009121004', '19830414', '2');
INSERT INTO `user` VALUES ('162', '198509302009122005', 'Ratu Ayu Sri Wulandari MA', '198509302009122005', '19850930', '2');
INSERT INTO `user` VALUES ('163', '197808152010122001', 'Uswatun Hasanah', '197808152010122001', '19780815', '2');
INSERT INTO `user` VALUES ('164', '198202092010122001', 'Hijroh Rokhayati', '198202092010122001', '19820209', '2');
INSERT INTO `user` VALUES ('166', '196710041994021001', 'Lilik Handaya Eka', '196710041994021001', '19671004', '2');
INSERT INTO `user` VALUES ('168', '197308282005011002', 'Wahyudin', '197308282005011002', '19730828', '2');
INSERT INTO `user` VALUES ('169', '197104302000032002', 'Siti Maghfiroh', '197104302000032002', '19710430', '2');
INSERT INTO `user` VALUES ('170', '198611022014042003', 'Novita Puspasari, Ak, M.Sc', '198611022014042003', '19861102', '2');
INSERT INTO `user` VALUES ('171', '198709052014042001', 'Kiky Srirejeki, SE, M.Sc', '198709052014042001', '19870905', '2');
INSERT INTO `user` VALUES ('173', '195205241981031003', 'Indi Sutopo', '195205241981031003', '19520524', '2');
INSERT INTO `user` VALUES ('174', '195301091986032001', 'Endang Setiasih', '195301091986032001', '19530109', '2');
INSERT INTO `user` VALUES ('175', '195305121980032002', 'Sumiyem', '195305121980032002', '19530512', '2');
INSERT INTO `user` VALUES ('176', '195311251983121001', 'Suprapto', '195311251983121001', '19531125', '2');
INSERT INTO `user` VALUES ('177', '195312141986011001', 'Sudjarwanto', '195312141986011001', '19531214', '2');
INSERT INTO `user` VALUES ('178', '195502141980031019', 'Sri Nugroho PR', '195502141980031019', '19550214', '2');
INSERT INTO `user` VALUES ('179', '195601191986032002', 'Emmy Saraswati', '195601191986032002', '19560119', '2');
INSERT INTO `user` VALUES ('181', '195609101986011001', 'Sukiman', '195609101986011001', '19560910', '2');
INSERT INTO `user` VALUES ('182', '195705281986011001', 'Supadi', '195705281986011001', '19570528', '2');
INSERT INTO `user` VALUES ('183', '195708231986012001', 'Asteria Pudyantini', '195708231986012001', '19570823', '2');
INSERT INTO `user` VALUES ('184', '195710171985032001', 'Endang Sri Gunawati', '195710171985032001', '19571017', '2');
INSERT INTO `user` VALUES ('185', '195804011984031018', 'Nurul Anwar', '195804011984031018', '19580401', '2');
INSERT INTO `user` VALUES ('186', '195807251986011002', 'Oke Setiarso', '195807251986011002', '19580725', '2');
INSERT INTO `user` VALUES ('187', '195901101986011001', 'Hary Pudjianto', '195901101986011001', '19590110', '2');
INSERT INTO `user` VALUES ('188', '195904231986011001', 'Dedi Supriadi', '195904231986011001', '19590423', '2');
INSERT INTO `user` VALUES ('189', '196005291987032001', 'Nunik Kadarwati', '196005291987032001', '19600529', '2');
INSERT INTO `user` VALUES ('190', '196109121986031001', 'Goro Binardjo', '196109121986031001', '19610912', '2');
INSERT INTO `user` VALUES ('192', '196202031988031001', 'Herman Sambodo', '196202031988031001', '19620203', '2');
INSERT INTO `user` VALUES ('193', '196303221989012001', 'Neni Widayaningsih', '196303221989012001', '19630322', '2');
INSERT INTO `user` VALUES ('194', '196306291989011001', 'Rakhmat Priyono', '196306291989011001', '19630629', '2');
INSERT INTO `user` VALUES ('195', '197012261997022001', 'Istiqomah', '197012261997022001', '19701226', '2');
INSERT INTO `user` VALUES ('196', '197204131998022001', 'Lilis Siti Badriah', '197204131998022001', '19720413', '2');
INSERT INTO `user` VALUES ('197', '197212152001121002', 'Abdul Aziz Ahmad', '197212152001121002', '19721215', '2');
INSERT INTO `user` VALUES ('198', '197212261997022001', 'Irma Suryahani', '197212261997022001', '19721226', '2');
INSERT INTO `user` VALUES ('199', '197310242006041003', 'Arintoko', '197310242006041003', '19731024', '2');
INSERT INTO `user` VALUES ('200', '197807232005011001', 'Suharno', '197807232005011001', '19780723', '2');
INSERT INTO `user` VALUES ('201', '198001232005012003', 'Ratna Setyawati Gunawan', '198001232005012003', '19800123', '2');
INSERT INTO `user` VALUES ('202', '198007152005012002', 'Barokatuminalloh', '198007152005012002', '19800715', '2');
INSERT INTO `user` VALUES ('203', '198012012005011002', 'Agus Arifin', '198012012005011002', '19801201', '2');
INSERT INTO `user` VALUES ('204', '198106092006042001', 'Diah Setyorini Gunawan', '198106092006042001', '19810609', '2');
INSERT INTO `user` VALUES ('205', '198108032010012002', 'Agustin Susyatna Dewi', '198108032010012002', '19810803', '2');
INSERT INTO `user` VALUES ('206', '198212252010122004', 'Kikin Windhani', '198212252010122004', '19821225', '2');
INSERT INTO `user` VALUES ('207', '1234567891011', 'Bagus BP', 'admin', 'pkl1', '1');
INSERT INTO `user` VALUES ('208', '123456789', 'Lili Hartini, A.md', 'lili', 'drupadi', '1');
