-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 02 Sep 2015 pada 05.08
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `angkdev`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ak_unsur`
--

CREATE TABLE IF NOT EXISTS `ak_unsur` (
  `AK_UNSUR` text,
  `ID_AK_UNSUR` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_AK_UNSUR`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `ak_unsur`
--

INSERT INTO `ak_unsur` (`AK_UNSUR`, `ID_AK_UNSUR`) VALUES
('Memperoleh dan melaksanakan pendidikan dan pengajaran', 1),
('Melaksanakan Penelitian', 2),
('Melaksanakan Pengabdian Pada Masyarakat', 3),
('Melaksanakan Kegiatan Penunjang Tridharma Perguruan Tinggi', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subun_pelpend`
--

CREATE TABLE IF NOT EXISTS `subun_pelpend` (
  `ID_SUBPELPEND` int(11) NOT NULL AUTO_INCREMENT,
  `SUBPELPEND` text,
  PRIMARY KEY (`ID_SUBPELPEND`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `subun_pelpend`
--

INSERT INTO `subun_pelpend` (`ID_SUBPELPEND`, `SUBPELPEND`) VALUES
(1, 'Melaksanakan perkuliahan / tutorial dan membimbing menguji serta menyelenggaraa-kan pendidikan di laborartorium, praktik keguruan, bengkel/ studio/ kebun percobaan/ teknologi pengajaran dan praktek lapangan.'),
(2, 'Membimbing Seminar'),
(3, 'Membimbing kuliah kerja nyata, praktek kerja nyata, praktek kerja lapangan'),
(4, 'Membimbing dan ikut membimbing dalam menghasilkan disertasi, tesis, skripsi dan laporan hasil studi'),
(5, 'Bertugas sebagai penguji pada ujian akhir'),
(6, 'Membina Kegiatan Mahasiswa'),
(7, 'Mengembangkan Program Kuliah'),
(8, 'Menyampaikan Orasi Ilmiah'),
(9, 'Menduduki Jabatan Pimpinan Perguruan Tinggi'),
(10, 'Membimbing Akademik Dosen Yang Lebih Rendah Jabatannya'),
(11, 'Melaksanakan Kegiatan Datasering dan Pencangkokan Akademik Dosen'),
(12, 'Melakukan Kegiatan Pengembangan Diri Untuk Meningkatkan Kompetensi'),
(13, 'Mengembangkan Bahan Kuliah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subun_pend`
--

CREATE TABLE IF NOT EXISTS `subun_pend` (
  `ID_SUBUNPEND` int(11) NOT NULL,
  `SUBUNPEND` text,
  PRIMARY KEY (`ID_SUBUNPEND`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subun_pend`
--

INSERT INTO `subun_pend` (`ID_SUBUNPEND`, `SUBUNPEND`) VALUES
(1, 'Mengikuti pendidikan dan memperoleh gelar/sebutan/ijasah/akta'),
(2, 'Mengikuti pendidikan sekolah dan memperoleh gelar/sebutan/ijasah/akta tambahan yang setingkat atau lebih tinggi diluar bidang ilmunya.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subun_penelitian`
--

CREATE TABLE IF NOT EXISTS `subun_penelitian` (
  `ID_SUBUNPENELITIAN` int(11) NOT NULL AUTO_INCREMENT,
  `SUBUNPENELITIAN` text,
  PRIMARY KEY (`ID_SUBUNPENELITIAN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `subun_penelitian`
--

INSERT INTO `subun_penelitian` (`ID_SUBUNPENELITIAN`, `SUBUNPENELITIAN`) VALUES
(1, 'Menghasilkan Karya Ilmiah'),
(2, 'Menerjemahkan / Menyadur Karya Ilmiah'),
(3, 'Mengedit / Menyunting Karya Ilmiah'),
(4, 'Membuat Rencana dan Karya Teknologi Yang Dipatenkan'),
(5, 'Membuat Rancangan dan Karya Teknologi, Rancangan dan Kaya Seni Monumental / Seni Pertunjukan / Karya Sastra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subun_pengabdian`
--

CREATE TABLE IF NOT EXISTS `subun_pengabdian` (
  `ID_SUBUNPENGAB` int(11) NOT NULL AUTO_INCREMENT,
  `SUBUNPENGAB` text,
  PRIMARY KEY (`ID_SUBUNPENGAB`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `subun_pengabdian`
--

INSERT INTO `subun_pengabdian` (`ID_SUBUNPENGAB`, `SUBUNPENGAB`) VALUES
(1, 'Menduduki Jabatan Pimpinan'),
(2, 'Melaksanakan Pengembangan Hasil Pendidikan dan Penelitian'),
(3, 'Memberi Latihan / Penyuluhan / Penataran / Ceramah Pada Masyarakat'),
(4, 'Memberi Pelayanan Kepada Masyarakat atau Kegiatan Lain yang Menunjang Pelaksanaan Tugas Umum Pemerintah dan Pembangunan'),
(5, 'Membuat / Menulis Karya Pengabdian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subun_penunjang`
--

CREATE TABLE IF NOT EXISTS `subun_penunjang` (
  `ID_SUBUNPENUNJANG` int(11) NOT NULL AUTO_INCREMENT,
  `SUBUNPENUNJANG` text,
  PRIMARY KEY (`ID_SUBUNPENUNJANG`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `subun_penunjang`
--

INSERT INTO `subun_penunjang` (`ID_SUBUNPENUNJANG`, `SUBUNPENUNJANG`) VALUES
(1, 'Menjadi Anggota dalam Suatu Panitia / Badan Pada Perguruan Tinggi'),
(2, 'Menjadi Anggota Panitia / Badan Pada Lembaga Pemerintah'),
(3, 'Menjadi Anggota Organisasi Profesi Dosen'),
(4, 'Mewakili Perguruan Tinggi / Lembaga Pemerintah'),
(5, 'Menjadi Anggota Delegasi Nasional Ke Pertemuan Internasional'),
(6, 'Berperan Serta Aktif Dalam Pertemuan Ilmiah'),
(7, 'Menulis Buku Pelajaran SLTA ke Bawah Yang Diterbitkan dan Diedarkan Secara Nasional'),
(8, 'Mempunyai Prestasi Di Bidang Olahraga / Humaniora'),
(9, 'Keanggotaan Dalam Tim Penilai'),
(10, 'Mendapat Penghargaan / Tanda Jasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ak_tetap`
--

CREATE TABLE IF NOT EXISTS `tbl_ak_tetap` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data untuk tabel `tbl_ak_tetap`
--

INSERT INTO `tbl_ak_tetap` (`ID_AK_TETAP`, `ID_AK_UNSUR`, `ID_DOSEN`, `ANGKA_LAMA`, `ANGKA_BARU`, `ANGKA_DIGUNAKAN`, `ANGKA_LEBIHAN`, `NO_SK`, `TGL_SUBMIT`, `JENJANG_JABATAN`) VALUES
(2, 1, 2, '120', '164.98', '167.76', '117.22', '3575/A4.5/KP/2008', '2015-03-24 02:48:07', 'IV A'),
(3, 2, 2, '75', '26.80', '100.24', '1.56', '3575/A4.5/KP/2008', '2015-03-24 02:48:55', 'IV A'),
(4, 3, 2, '45', '7', '52', '', '3575/A4.5/KP/2008', '2015-04-20 09:27:41', 'IV A'),
(5, 4, 2, '60', '20', '80', '', '3575/A4.5/KP/2008', '2015-04-20 09:27:42', 'IV A'),
(6, 1, 2, '40', '13.50', '', '', '198/PT30.H/C.AK/1991', '2015-04-20 09:27:42', 'III B'),
(7, 2, 2, '25', '20', '', '', '198/PT30.H/C.AK/1991', '2015-04-20 09:27:43', 'III B'),
(8, 3, 2, '15', '7.50', '', '', '198/PT30.H/C.AK/1991', '2015-04-20 09:27:43', 'III B'),
(9, 4, 2, '20', '9', '', '', '198/PT30.H/C.AK/1991', '2015-04-20 09:27:44', 'III B'),
(10, 1, 2, '53.50', '20.25', '', '', '141/PT30.H/C.AK/1993', '2015-04-20 09:27:44', 'III C'),
(11, 2, 2, '45', '17.73', '', '', '141/PT30.H/C.AK/1993', '2015-04-20 09:27:44', 'III C'),
(12, 3, 2, '22.50', '7.20', '', '', '141/PT30.H/C.AK/1993', '2015-04-20 09:27:44', 'III C'),
(13, 4, 2, '29', '10', '', '', '141/PT30.H/C.AK/1993', '2015-04-20 09:27:45', 'III C'),
(14, 1, 2, '73.75', '81.90', '', '', '080/J23/KP.AK/1998', '2015-04-20 09:27:45', 'III D'),
(15, 2, 2, '62.73', '31.33', '', '', '080/J23/KP.AK/1998', '2015-04-20 09:27:45', 'III D'),
(16, 3, 2, '29.70', '13.00', '', '', '080/J23/KP.AK/1998', '2015-04-20 09:27:46', 'III D'),
(17, 4, 2, '39.00', '19.00', '', '', '080/J23/KP.AK/1998', '2015-04-20 09:27:46', 'III D'),
(18, 1, 3, '60', '38.5', '98.5', '', '077/PT30.H/C.AK/1990', '2015-04-20 09:27:46', 'III C'),
(19, 2, 3, '37.5', '14', '51.5', '', '077/PT30.H/C.AK/1990', '2015-04-20 09:27:47', 'III C'),
(20, 3, 3, '22.5', '1.8', '24.3', '', '077/PT30.H/C.AK/1990', '2015-04-20 09:27:47', 'III C'),
(21, 4, 3, '30', '3', '33', '', '077/PT30.H/C.AK/1990', '2015-04-20 09:27:47', 'III C'),
(22, 1, 3, '98.5', '54', '152.50', '', '035/PT30.H/C.AK/1993', '2015-04-20 09:27:48', 'III D'),
(23, 2, 3, '51.50', '35.83', '87.33', '', '035/PT30.H/C.AK/1993', '2015-04-20 09:27:48', 'III D'),
(24, 3, 3, '24.3', '3', '27.30', '', '035/PT30.H/C.AK/1993', '2015-04-20 09:27:48', 'III D'),
(25, 4, 3, '33', '20', '53', '', '035/PT30.H/C.AK/1993', '2015-04-20 09:27:48', 'III D'),
(26, 1, 3, '120', '98.55', '218.55', '', '33936/A2.IV.1/KP/1999', '2015-04-20 09:27:49', 'IV A'),
(27, 2, 3, '75', '32.33', '107.33', '', '33936/A2.IV.1/KP/1999', '2015-04-20 09:27:49', 'IV A'),
(28, 3, 3, '45', '10', '55', '', '33936/A2.IV.1/KP/1999', '2015-04-20 09:27:50', 'IV A'),
(29, 4, 3, '60', '14', '74', '', '33936/A2.IV.1/KP/1999', '2015-04-20 09:27:51', 'IV A'),
(30, 1, 3, '160', '242.50', '311.84', '', '97174/A4.3/KP/2014', '2015-04-20 09:27:56', 'IV C'),
(31, 2, 3, '100', '75.40', '175.16', '', '97174/A4.3/KP/2014', '2015-04-20 09:27:54', 'IV C'),
(32, 3, 3, '60', '38', '98', '', '97174/A4.3/KP/2014', '2015-04-20 09:27:54', 'IV C'),
(33, 4, 3, '80', '35', '115', '', '97174/A4.3/KP/2014', '2015-04-20 09:27:53', 'IV C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_cuti`
--

CREATE TABLE IF NOT EXISTS `tbl_cuti` (
  `ID_CUTI` int(11) NOT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `JENIS_CUTI` varchar(50) DEFAULT NULL,
  `MULAI_CUTI` date DEFAULT NULL,
  `AKHIR_CUTI` date DEFAULT NULL,
  `KET_CUTI` text,
  PRIMARY KEY (`ID_CUTI`),
  KEY `FK_RELATIONSHIP_4` (`ID_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dokumen_dosen`
--

CREATE TABLE IF NOT EXISTS `tbl_dokumen_dosen` (
  `ID_DOKUMEN` int(11) NOT NULL AUTO_INCREMENT,
  `NIP_DOSEN` varchar(35) DEFAULT NULL,
  `DOKUMEN` varchar(75) DEFAULT NULL,
  `NAMA_DOKUMEN` varchar(75) DEFAULT NULL,
  `KETERANGAN` text,
  `TGL_SUBMIT` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_DOKUMEN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_dokumen_dosen`
--

INSERT INTO `tbl_dokumen_dosen` (`ID_DOKUMEN`, `NIP_DOSEN`, `DOKUMEN`, `NAMA_DOKUMEN`, `KETERANGAN`, `TGL_SUBMIT`) VALUES
(1, '196201111988032001', 'pronet 3-2.pdf', 'asdsd', 'asdasd', '2015-04-29 09:10:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen`
--

CREATE TABLE IF NOT EXISTS `tbl_dosen` (
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
  KEY `FK_RELATIONSHIP_9` (`ID_STATUS_KEP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=207 ;

--
-- Dumping data untuk tabel `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`ID_JURUSAN`, `ID_DOSEN`, `ID_GOLONGAN`, `ID_JABATAN`, `ID_STATUS_KEP`, `NIP_DOSEN`, `GELAR_AKHIR`, `GELAR_AWAL`, `NAMA_DOSEN`, `PENDIDIKAN_TERTINGGI`, `NIDN`, `TMP_LAHIR`, `TGL_LAHIR`, `J_KEL`, `AGAMA`, `ALAMAT`, `NO_KARPEG`, `TGL_MASUK`, `PASSWORD`, `FOTO`) VALUES
(1, 1, 2, 2, 1, '196707051997022001', 'SE, M.Si', '-', 'Retno Widuri', '', '-', 'Purwokerto', '1967-07-05', 2, 3, 'Purwokerto', 'G.312989', '1997-01-02', '123456789', '-'),
(2, 2, 5, 3, 1, '196201111988032001', 'M.Si', 'Dra.', 'Dijan Rahajuni', 'S-2', '-', 'Purwokerto', '1962-01-11', 2, 3, 'Ds. Kebocoran Rt.04/4 Kecamatan Kedung Banteng Kabupaten Banyumas', '131764921/E.491762', '1988-03-21', '', '-'),
(1, 3, 7, 3, 1, '196003301985031006', 'M.S', 'Dr', 'Pramono Hari Adi', '', '0030036008', 'Purbalingga', '1960-03-30', 1, 3, 'Purwokerto', '', '1985-03-01', '', ''),
(3, 4, 1, 1, 1, '198110262005012001', 'M.Acc,Ak', '', 'Rini Widianingsih', 'S2', '0026108105', 'Kebumen', '1981-10-26', 2, 3, 'Purwokerto', 'M. 048514', '2005-01-01', '19811026', ''),
(2, 5, 2, 5, 1, '198504102014041001', 'SE, M.Si', '', 'Bambang', 'S2', '', 'Cirebon', '1985-07-01', 1, 3, 'Setu Kulon, Weru - Cirebon Jawa Barat', '', '2014-04-01', '19850410', ''),
(2, 6, 3, 2, 1, '195607121985111001', 'M.Si', 'Drs', 'Rusmusi IMP', '', '0012075611', 'Palembang', '1956-07-12', 1, NULL, 'Jl Kolonel Sugiri No 48 Purwokerto', 'C.0920095', '1985-11-01', '19560712', ''),
(3, 7, 2, 1, 1, '198111252009122004', 'SE,M.Si', '', 'Widyahayu Warmmeswara Kusumastati', 'S2', '0025118102', 'Tulungagung', '1981-11-25', 2, 3, 'Purwokerto', 'P.663089', '2009-11-01', '19811125', ''),
(1, 11, 8, 3, 1, '195709261983031002', 'MM', 'Drs.', 'Sigit Wibowo Dwi Nugroho', 'S2', '', 'Bandung', '1957-09-26', 1, 3, '', 'C.0312846', '1983-03-01', '19570926', ''),
(1, 66, 7, 4, 1, '19610807 198601 1 001', 'MS', 'Prof.Dr', 'Agus Suroso', 'S3', '', 'Banyumas', '1961-08-07', 1, 3, 'Perum Bancar Kembar Blok V/3 Purwokerto 53121', 'C.0920158', '1987-08-01', '19610807', ''),
(1, 67, 7, 3, 1, '19530511 198601 1 001', 'MM,Ak', 'Dr.', 'Riswan', 'S3', '0011055302', 'Kebanggan', '1953-05-11', 1, 3, 'Jl. Kebanggan Rt.05/04 Kec. Sumbang Purwokerto Utara', 'C.0920161', '1986-01-01', '19530511', ''),
(1, 69, 6, 4, 1, '19740401 199802 1 001', 'MM', 'Dr.', 'Suliyanto', 'S3', '', 'Banjarnegara', '1974-04-01', 1, 3, 'Jl. Jati Sari gang Cendana Rt. 05/5 No. 1510 Purwokerto Utara', 'H.034712', '1999-04-01', '19740401', ''),
(1, 70, 6, 3, 1, '19540727 198103 1 005', 'M.Sc', 'Dr.', 'Haryadi', 'S3', '', 'Kutoarjo', '1954-07-27', 1, 3, 'Jl.Kalpataru VII No. 19 Perum Purwosari Purwokerto Utara', 'C.0268248 ', '1980-03-01', '19540727', ''),
(1, 71, 5, 3, 1, '19530420 198003 2 005', 'M.Si', 'Dra.', 'Dwiwiyati Astogini', 'S2', '0020045304', 'Purwokerto', '1953-04-20', 2, 3, 'Perum. Karang Klesem Gg. 1 No. 41 Purwokerto', 'C.0181358', '1981-03-01', '19530420', ''),
(1, 72, 5, 3, 1, '19590602 198503 1 002', 'MM', 'Drs.', 'Bambang Sunarko', 'S2', '0002065904', 'Sokaraja', '1959-06-02', 1, 3, 'Jl. Adipura No. 148 Rt. 4/6 Perum Purwosari Purwokerto utara', 'C.0698177', '1985-03-01', '19590602 ', ''),
(1, 73, 5, 3, 1, '19581107 198503 2 001', 'MM', 'Dra. ', 'Titi Nurfitri', 'S2', '0007115807', 'Purbalingga', '1958-11-07', 2, 3, 'Bancar Kembar Permai Blok II No. 1 jl. Cendana barat No. 2 Purwokerto', 'C.0698171', '1985-03-01', '19581107 ', ''),
(1, 74, 5, 3, 1, '19620719 198901 1 001', 'ME', 'Dr.', 'Sudarto', 'S3', '0019076206', 'Purwokerto', '1962-07-19', 1, 3, 'Perum Griya Satria Blok C No. 04 Rt.03/06 Bancar Kembar Purwokerto 53121', 'E.505372', '1989-01-01', '19620719', ''),
(1, 75, 5, 3, 1, '19530529 198202 1 001', 'M.Si', 'Dra.', 'Karsidi', 'S2', '0029055305', 'Bantul', '1953-05-29', 1, 3, 'Jl. Balai Kelurahan no.3 Arcawinangun RT 03/XI Purwokerto,53113', 'C.0301224', '1982-02-01', '19530529', ''),
(1, 76, 5, 3, 1, '19600131 198903 1 002', 'M.MS', 'Dr.', 'Ade Banani', 'S3', '', 'Majalengka', '1960-01-31', 1, 3, 'Jl. Adipura IV No. 146 Perum Purwosari Purwokerto', 'E.500228', '1983-03-01', '19600131', ''),
(1, 77, 5, 3, NULL, '19540910 198901 2 001', 'Ph.D.MM', '', 'Sri Murni Setyawati', 'S3', '', 'Purwokerto', '1954-09-10', 2, 4, 'Jl.Gunung Kelud No. 6 Pabuaran Purwokerto Utara', 'E.505364', '1989-01-01', '19540910', ''),
(1, 78, 5, 3, 1, '19590909 198901 1 001', 'MM', 'Drs.', 'Tohir', 'S2', '0009095915', 'Pabuwaran-Bms', '1959-09-09', 1, 3, 'Jl, Sunan Ampel No. 08 Rt. 03/4 kel. Pabuaran Purwokerto Utara', 'E.505374', '1989-01-01', '19590909', ''),
(1, 79, 5, 3, 1, '19701229 200312 2 001', 'Ph.D.M.Sc', '', 'Wiwiek Rabiatul Adawiyah', 'S3', '0029127004', 'Sumbawa', '1970-12-29', 2, 3, 'Desa Tambak Sogra Rt. 02/05 Kec. Sumbang Purwokerto', 'L.168357', '2003-12-01', '19701229', ''),
(1, 80, 5, 3, 1, '19701125 199802 2 001', 'SE,M.Si', '', 'Sri Lestari', 'S2', '0025117005', 'Banyumas', '1970-11-25', 2, 3, 'Perum Griya satria Indah Bancar Kembar BlokO No. 30 Rt. 01/1 Purwokerto Utara 53125', 'H.068448', '1998-02-01', '19701125', ''),
(1, 81, 5, 3, 1, '19540909 198601 1 001', 'M.Si', 'Drs.', 'Sumarsono', 'S2', '0009095405', 'Gumelar', '1954-09-09', 1, 3, 'Jl. Warga Bakti III/58 Kec Purwokerto Utara Rt 5/2 Purwokerto', 'C.0920165', '1986-01-01', '19540909 ', ''),
(1, 82, 6, 2, 1, '19550226 198412 1 001', 'M.S', 'Drs.', 'Eling Purwanto Jati', 'S2', '0026025503', 'Banjarnegara', '1955-02-26', 1, 3, 'Jl. Gunung Merbabu gg. Gunung Ijen No.1 Rt.03/1 Pabuaran Purwokerto Utara', 'C.0669671', '1984-12-01', '19550226 ', ''),
(1, 83, 4, 2, 1, '19520507 198003 1 002', 'M.Sc', 'Drs.', 'Yayat Giyatno', 'S2', '0007055203', 'Yogyakarta', '1952-05-07', 1, NULL, 'Jl. Letjend Kol Sumarto gang XIVNo. 22 Rt. 5/4 Purwanegara Purwokerto', 'C.0181333', '1980-03-01', '19520507 ', ''),
(1, 84, 4, 2, 1, '19531023 198601 1 001', 'M.Si', 'Drs.', 'Untung Kumorohadi', 'S2', '0023105303', 'Kupang-Timor', '1953-10-23', 1, 3, 'Jl. Soka Jati No. 30 Bantar Soka Purwokerto Barat', ' C.0920163', '1986-01-01', '19531023 ', ''),
(1, 85, 4, 2, 1, '19561008 198503 2 002', 'M.Si', 'Dra.', 'Sri Martini', 'S2', '0008105607', 'Yogyakarta', '1956-10-08', 2, 3, 'Jl. Sersan Sardiman No. 7 Rt.1/2 Karang Klesem Purwokerto', 'C.0698189', '1985-03-01', '19561008 ', ''),
(1, 86, 4, 2, 1, '19570224 198601 2 001', 'M.Si', 'Dra.', 'Suci Indriati', 'S2', '0024025703', 'Cilacap', '1957-02-24', 2, 3, 'Jl. Arsantaka No. 2 Arca Winangun Purwokerto', 'C.0920157', '1986-01-01', '19570224 ', ''),
(1, 87, 4, 2, 1, '19551120 198803 1 002', 'M.Si', 'Drs', 'Arifin Mukti', 'S2', '0020115504', 'Purwokerto', '1955-11-20', 1, 3, 'Jl. Pasir Raja No.20 Bantar Soka II/ 6 Purwokerto 53133', 'E.491756', '1988-03-01', '19551120 ', ''),
(1, 88, 4, 2, 1, '19580918 198601 1 001', 'MSIE', 'Drs.', 'Jaryono', 'S2', '0018095808', 'Cilacap', '1958-09-18', 1, 3, 'Jl. Warga Bakti I/11 Kec Purwokerto Utara Rt 5/2 Purwokerto', 'C.0920156', '1986-01-01', '19580918 ', ''),
(1, 89, 4, 2, 1, '19730818 199903 2 001', 'SE,M.Si', '', 'Siti Zulaikha Wulandari', 'S2', '0018087301', 'Banjarnegara', '1973-08-18', 2, 3, 'Perum Bancar Kembar Permai Blok VII / 5 Jl. Cendana Tengah Rt.2/10 Purwokerto 53123', 'J.007985', '1999-03-01', '19730818 ', ''),
(1, 90, 4, 2, 1, '19751119 199903 2 003', 'SE,MM', '', 'Weni Novandari', 'S2', '0019117503', 'Purwokerto', '1975-11-19', 2, 3, 'Jl. Sunan Bonang No. 31 Tambak sari Rt. 2/3 Purwokerto', 'M.049834', '1999-03-01', '19730818 ', ''),
(1, 91, 4, 2, 1, '19770410 200604 1 001', 'SE,M.Si', '', 'Najmudin', 'S2', '0010047702', 'Serang', '1977-04-10', 1, 3, 'Lemberang Rt. 01/2 Sokaraja Banyumas', 'M. 264650', '2006-04-01', '19770410 ', ''),
(1, 92, 4, 2, 1, '19780824 200501 1 003', 'SE,M.Sc', '', 'Rahab', 'S2', '0024087802', 'Kebumen', '1978-08-24', 1, 3, 'Perum Sogra Puri Indah Blok D No. 10 Tambak Sogra Banyumas', 'M.050316', '2005-01-01', '19780824 ', ''),
(1, 93, 3, 2, 1, '19611031 198601 1 001', 'M.Sc,Ph.D', 'Drs.', 'Achmad Sudjadi', 'S3', '', 'Magelang', '1961-10-31', 1, 3, 'Jl. Adipura V No. 137 Perum Purwosari Indah Purwokerto Utara 53151', 'C.0920160', '1986-01-01', '19611031 ', ''),
(1, 94, 3, 2, 1, '19750130 200012 2 004', 'SE,M.Si', '', 'Dwita Darmawati', 'S2', '0030017506', 'Klaten', '1975-01-30', 2, 3, 'Perum Griya Satria Indah Sumampir Blok H No. 4 Rt. 01/1 Purwokerto Utara 53125', 'L.021037', '2000-12-01', '19750130 ', ''),
(1, 95, 3, 2, 1, '19830524 200812 2 003', 'SE,M.Si', '', 'Sulistyandari', 'S2', '0014058303', 'Brebes', '1983-05-24', 2, 3, 'Jl. Gunung Slamet No.6 Rt, 02/6 Grendeng Purwokerto Utara 53122,Desa Kaliwadas Rt.01/2 Bumiayu Brebes', 'P.436015', '2008-12-01', '19830524 ', ''),
(1, 96, 3, 2, 1, '19810623 200604 1 001', 'M.Si', 'Dr.', 'Adi Indrayanto', 'S3', '0023068102', 'Indramayu', '1981-06-23', 1, 3, 'Purwokerto', 'M. 264686', '2006-04-01', '19810623 ', ''),
(1, 97, 2, 2, 1, '19811016 200312 1 003', 'SE,M.Sc', '', 'Dian Purnomo Jati', 'S2', '0016108101', 'Yogyakarta', '1981-11-16', 1, 3, 'Jl. Soga No 32 Yogyakarta', 'L.168368', '2003-12-01', '19811016 ', ''),
(1, 98, 2, 2, 1, '19790117 200604 2 003', 'SE,M.Sc', '', 'Ekaningtyas Widiastuti', 'S2', '0017017903', 'Purwokerto', '1979-01-17', 2, 3, 'Perum Dosen Jl. Kampus No 32 Grendeng Purwokerto Utara', 'M. 264684', '2006-04-01', '19790117 ', ''),
(1, 100, 2, 1, 1, '19791215 200605 1 002', 'SE,M.Si', '', 'Ratno Purnomo', 'S3', '0015127903', 'Jakarta', '1979-12-15', 1, 3, 'Jl. Beringin Raya No.103 Perum Bumi Tanjung Elok Purwokerto', 'M. 264638', '2006-04-01', '19791215 ', ''),
(1, 101, 2, 1, 1, '19740219 200501 1 001', 'SE, M.Si', '', 'Refius Pradipta Setyanto', 'S2', '0019027401', 'Purwokerto', '1974-02-19', 1, 3, 'Perum Griya Satria I Blok E 4 Sumampir Purwokerto Utara', 'M.050317', '2005-01-01', '19740219 ', ''),
(1, 102, 2, 1, 1, '19770107 200812 1 001', 'SE,M.Si', '', 'Ary Yunanto', 'S2', '0007017707', 'Banyumas', '1977-01-07', 1, 3, 'Sumampir, Purwokerto', 'P.663088', '2008-12-01', '19770107 ', ''),
(1, 103, 2, 1, 1, '19761012 200912 1 002', 'SE,MAB', '', 'Daryono', 'S2', '0012107607', 'Magelang', '1976-10-12', 1, 3, 'Purwokerto', 'P. 663097', '2009-12-01', '19761012 ', ''),
(1, 104, 2, 1, 1, '19830325 200912 2 004', 'SE,M.M', '', 'Sri Retno Handayani', 'S2', '0025038304', 'Semarang', '1983-03-25', 2, 3, 'Purwokerto', 'P. 663096', '2009-12-01', '19830325 ', ''),
(1, 105, 2, 1, 1, '19850218 200912 2 008', 'SE,M.Si', '', 'Intan Shaferi', 'S2', '0018028501', 'Purwokerto', '1985-02-18', 2, 3, 'Sokaraja', 'P. 663094', '2009-12-01', '19850218 ', ''),
(1, 106, 2, 1, 1, '19790930 200912 2 002', 'SE,M.Si', '', 'Ade Irma Anggaraeni', 'S2', '0030097904', 'Palu', '1979-09-30', 2, 3, 'Jl. Soka Jati Perum Pemda No. 109 Purwokerto', 'P. 663093', '2009-12-01', '19790930 ', ''),
(1, 107, 2, 1, 1, '19831012 200912 2 003', 'SE,MBA', '', 'Alisa Tri Nawarini', 'S2', '0012108301', 'Cilacap', '1983-10-12', 2, 3, 'Jl. Tugu Utara No. 12 Rt. 03/3 Sampang Cilacap', 'P.663095', '2009-12-01', '19831012 ', ''),
(1, 108, 2, 1, 1, '19821114 201012 1 007', 'SE,M.Sc', '', 'Rio Dhani Laksana', 'S2', '0014118203', 'Yogyakarta', '1982-11-14', 1, 3, 'Sumampir, Purwokerto', 'Q.145534', '2010-12-01', '19821114 ', ''),
(1, 109, 2, 1, NULL, '19780212 201001 2 002', 'SE,M.Si', '', 'Lusi Suwandani', NULL, '0012027803', 'Banyumas', '0000-00-00', 2, 3, 'Purwokerto', 'Q. 051260', NULL, NULL, NULL),
(1, 110, 2, 1, 1, '19860819 201012 2 007', 'SE,M.Si', '', 'Larisa Pradisti', 'S2', '0019088601', 'Purwokerto', '1986-08-19', 2, 3, 'Purwokerto', 'Q. 051261', '2010-12-01', '19860819 ', ''),
(1, 111, 1, 1, 1, '19540814 198601 1 001 ', 'M.Si', 'Drs.', 'Suwaryo', 'S2', '0014085405', 'Purwokerto', '1954-08-14', 1, 4, ' Gang Kenanga No. 24 Rt.5/2 Kober kec Purwokerto Barat', 'C.0920162', '1986-01-01', '19540814 ', ''),
(1, 112, 1, 1, 1, '19770124 200501 2 004', 'SE,M.Si', '', 'Devani Laksmi Indyastuti', 'S2', '0024017702', 'Yogyakarta', '1977-01-24', 2, 3, 'Perum Purwosari No. 84 Rt.01/4 kec Baturraden Purwokerto Utara', 'M.050369', '2005-01-01', '19770124 ', ''),
(1, 113, 2, 5, 1, '19850415 201404 2 001', 'SE,M.Si', '', 'Meutia Karunia Dewi', 'S2', '', 'Cilacap', '1985-04-15', 2, 3, 'Purwokerto', '', '2014-04-01', '19850415 ', ''),
(1, 114, 2, 5, 1, '19881025 201404 2 001', 'S.Pd,M.Pd', '', 'Lina Rifda Naufalin', 'S2', '', 'Jepara', '1988-10-25', 2, 3, 'Purwokerto', '', '2014-04-01', '19881025 ', ''),
(1, 115, 2, 5, 1, '19900910 201404 1 001', 'SE,M.Si', '', 'Candra Suparno', 'S2', '', 'Garut', '1990-09-10', 1, 3, 'Purwokerto', '', '2014-04-01', '19900910 ', ''),
(3, 117, 5, 4, 1, '19610828 198703 1 012', 'M.Acc,Ak', 'Prof.Dr', 'Bambang Agus Pramuka', 'S3', '', 'Purworejo', '1961-08-28', 1, 3, 'Desa Tambak Sogra Rt. 02/05 Kec. Sumbang Purwokerto', 'E.208485', '1987-03-01', '19610828 ', ''),
(3, 118, 6, 3, 1, '19520812 198003 1 002', 'MM,Ak', 'Drs', 'Havid Sularso', 'S2', '0012085203', 'Purwokerto', '1952-08-12', 1, 3, 'Perum. Karang Klesem Gg. 1 No. 41 Purwokerto', 'C.0269902', '1980-03-01', '19520812 ', ''),
(3, 119, 5, 3, 1, '19570220 198903 1 001', 'M.Si,Ak', 'Drs', 'Amber Lumbantoruan', 'S2', '0020025703', 'Pergaulan', '1957-02-20', 1, 4, 'Jl. Kaung Picis No. 28 Rt. 01/08 Sukaluyu Bandung Jabar', 'E.500224', '1989-03-01', '19570220 ', ''),
(3, 120, 5, 3, 1, '19610322 199002 1 001', 'M.Si,Ak', 'Dr', 'Eko Hariyanto', 'S3', '', 'Purworejo', '1961-03-22', 1, 3, '', 'E.896863', '1990-02-01', '19610322 ', ''),
(3, 121, 5, 3, 1, '19530519 198903 1 001', 'M.Si, Ak', 'Drs.', 'Edward Kanam Sinoeraya', 'S2', '0019055303', 'Sarinembah', '1953-05-19', 1, 4, 'Jl. Sekeloa Selatan I No. 223 Rt. 01/15 Bandung', 'E.500223', '1989-03-01', '19530519 ', ''),
(3, 122, 5, 3, 1, '19520610 199002 1 001', 'M.Si,Ak', 'Drs', 'Halomoan Ompusunggu', '', '0010065207', 'Jawatongah', '1952-06-10', 1, 4, 'Jl. Rereng Manis No. 17 Rt.08/11 Sukaluyung Bandung Jawa Barat', 'E.849141', '1990-02-01', '19520610 ', ''),
(3, 123, 5, 3, 1, '19590512 198601 1 001', 'MM,Ak', 'Drs', 'Rasyid Mei Mustafa', 'S2', '0012055910', 'Semarang', '1959-05-12', 1, 3, 'Perum Bancarkembar Permai Blok IV No 6, Rt. 01/10 Purwokerto Utara', 'C.0920164', '1986-01-01', '19590512 ', ''),
(3, 124, 5, 3, 1, '19630328 198901 1 001', 'MBA,Ak', 'Drs', 'Agung Praptapa', 'S2', '0028036307', 'Semarang', '1963-03-28', 1, 3, 'Jl. Gunung Singgaleng No. 28 A Bancar Kembar Purwokerto', 'E.500213', '1989-01-01', '19630328 ', ''),
(3, 125, 5, 3, 1, '19670914 199402 2 001', 'M.Si,Ak', 'Dra', 'Atiek Sri Purwati', 'S2', '0014096705', 'Surakarta', '1967-09-14', 2, 3, 'Perum Griya Karang Indah Blok S 16 Karangpucung Purwokerto', 'G.209533', '1994-02-01', '19670914 ', ''),
(3, 126, 5, 3, 1, '19620706 198803 2 002', 'M.Si,Ak', 'Dra', 'Irianing Suparlinah', 'S2', '0006076201', 'Purwokerto', '1962-07-06', 2, 3, 'Perum. Griya Satria Indah 2 Blok G No. 15 Rt. 03/08 Kalisari Sumampir Purwokerto', 'E.491757', '1988-03-01', '19620706 ', ''),
(3, 127, 5, 3, 1, '19550101 198803 1 001', 'M.Si,Ak', 'Drs', 'Sukirman', 'S2', '0001015521', 'Purworejo', '1955-01-01', 1, 3, 'Jl. Riyanto Gg. Flamboyan 3 Rt. 03/03 No. 2 Sumampir Purwokerto Utara', 'E.491793', '1988-01-01', '19550101 ', ''),
(3, 128, 4, 2, 1, '19610814 198703 1 001', 'MM,Ak', 'Drs', 'Agus Faturokhman', 'S2', '0014086111', 'Brebes', '1961-08-14', 1, 3, 'Jl. Kolonel Sugiono No. 299 Rt.2 Rw 1 Kranji Purwokerto', 'E.208482', '1987-03-01', '19610814 ', ''),
(3, 129, 4, 2, 1, '19560227 198703 1 001', 'M.Si,Ak', 'Drs', 'Sujono', 'S2', '0027025602', 'Slawi-Tegal', '1956-02-27', 1, 3, 'Jl. Riyanto Gg. Cempaka Rt. 05/03 No 28 Sumampir Purwokerto Utara', 'E.208487', '1987-03-01', '19560227 ', ''),
(3, 130, 4, 2, 1, '19610609 198703 1 003', 'M.Si,Ak', 'Drs', 'Sugiarto', 'S2', '0009066105', 'Madiun', '1961-06-09', 1, 3, 'Tambak Sari Kidul Rt. 03/03 Kembaran Banyumas', 'E.208481', '1987-03-01', '19610609 ', ''),
(3, 131, 4, 2, 1, '19610711 199002 2 001', 'M.Si,Ak', 'Dra', 'Yusriyati Nur Farida', 'S2', '0011076103', 'Solo', '1961-07-11', 2, 3, 'Perum Pertamina Gn Simping 285 Cilacap', 'E.849142', '1990-02-01', '19610711 ', ''),
(3, 132, 4, 2, 1, '19621204 199203 2 002', 'M.Si,Ak', 'Dra', 'Permata Ulfah', 'S2', '0004126211', 'Boyolali', '1962-12-04', 2, 3, 'Jl. Gn. Sindoro No. 13 Pabuaran Rt. 02/04 Purwokerto Utara 53124', 'F.111872', '1992-03-01', '19621204 ', ''),
(3, 133, 4, 2, 1, '19710625 199802 2 002', 'SE, M.Si, ', '', 'Puji Lestari', 'S2', '0025067103', 'Banyumas', '1971-06-25', 2, 3, 'Perum Griya Satria Indah II Blok D No 16, Gg. Jarwoaminoto - Sumampir', 'H.068450', '1998-02-01', '19710625 ', ''),
(3, 134, 4, 2, 1, '19650324 199003 1 001', 'MM.Ak', 'Dr', 'Adi Wiratno', 'S3', '', 'Bangsri-Jepara', '1965-03-24', 1, 3, 'Jl. Raya Aji Barang No. 25 Aji Barang Kulon Rt. 05/05 Aji Barang', 'E.849153', '1990-03-01', '19650324 ', ''),
(3, 135, 4, 2, 1, '19750109 200012 2 001', 'SE, M.Si, ', '', 'Christina Tri Setyorini', 'S2', '0009017504', 'Purwokerto', '1975-01-09', 2, 3, 'Komp. Pertamina Gn. Smping No. 320 Cilacap', 'J.095732', '2000-12-01', '19750109 ', ''),
(3, 136, 4, 2, 1, '19700714 200604 2 001', 'SE, M.Si, ', '', 'Umi Pratiwi', 'S2', '0014077004', 'Kudus', '1970-07-14', 2, 3, 'Jl. Gn. Sindoro No. 13 Pabuaran Rt. 02/04 Purwokerto Utara 53124', 'M. 264683', '2006-04-01', '19700714 ', ''),
(3, 137, 4, 2, 1, '19750528 200312 1 001', 'SE,M.Si,Ak', 'Dr', 'Eko Suyono', 'S3', '0028057501', 'Banyumas', '1975-05-28', 1, 3, 'Jl. Kebanggan Rt.05/04 N0. 20 Kec. Sumbang Purwokerto Utara', 'L.168369', '2003-12-01', '19750528 ', ''),
(3, 138, 4, 2, 1, '19570416 198803 1 001', 'M.Si,Ak', 'Drs', 'Mafudi', 'S2', '0016045704', 'Purbalingga', '1957-04-16', 1, 3, 'Ds. Gandasuli Rt. 02/02 Bobotsari Purbalingga', 'E.491767', '1988-03-01', '19570416 ', ''),
(3, 139, 4, 2, 1, '19750331 200003 1 002', 'SE,M.Si,Ak', 'Dr', 'Oman Rusmana', 'S3', '0031037503', 'Ciamis', '1975-03-31', 1, 3, 'Perum Griya Satria Indah Sumampir Blok F No 16, Jl. Diamon', 'J.049012', '2000-03-01', '19750331 ', ''),
(3, 140, 3, 2, 1, '19581006 198601 1 001', 'M.Si,Ak', 'Drs', 'I Wayan Mustika', 'S2', '0006105805', 'Tabanan-Bali', '1958-10-06', 1, 3, 'Jl. H. Madrani No. 4 Grendeng Rt. 07/07 Purwokerto Utara', 'C.0920159', '1986-01-01', '19581006 ', ''),
(3, 141, 3, 2, 1, '19540223 198703 1 003', 'M.Si,Ak', 'Drs', 'Saras Supeno', 'S2', '0023025401', 'Purwokerto', '1954-02-23', 1, 3, 'Jl. Kalpataru 12 No.101 Perum Purwosari Purwoketo Utara', 'E. 208489', '1987-03-01', '19540223 ', ''),
(3, 142, 3, 2, 1, '19550414 198803 1 001', 'M.Si,Ak', 'Drs', 'Syaiful Azhar', 'S2', '0014045503', 'Purwokerto', '1955-04-14', 1, 3, 'Perum Tegal Sari Indah, Jl. Gatramas Raya B IV No. 4 Rt. 04/05 Dukuh Waluh Pwt', 'E.491755', '1988-03-01', '19550414 ', ''),
(3, 143, 3, 2, 1, '19610302 198703 1 003', 'M.Si,Ak', 'Drs.', 'Agus Sunarmo', 'S2', '0002036106', 'Purwokerto', '1961-03-02', 1, 3, 'Kelurahan Teluk Rt. 04/01 Purwokerto Selatan 53145', 'E.208488', '1987-03-01', '19610302 ', ''),
(3, 144, 3, 2, 1, '19670413 199203 2 002', 'M.Si,Ak', 'Dra', 'Triani Arofah', 'S2', '0013046703', 'Purwokerto', '1967-04-13', 2, 3, 'Jl. Gn. Slamet Raya 28, Perum Purwosari Indah Purwokerto Utara', 'F.111869', '1992-03-01', '19670413 ', ''),
(3, 145, 3, 2, 1, '19681224199402 2 003', 'SE, M.Si, ', '', 'Khrisnhoe Rachmi Fitrijati', 'S2', '0024126806', 'Purbalingga', '1968-12-24', 2, 3, 'Perum Griya Satria Blok C No. 04 Rt.03/06 Bancar Kembar Purwokerto 53121', 'G.213006', '1994-02-01', '19681224', ''),
(3, 146, 3, 2, 1, '19611013 198803 2 002', 'M.Si,Ak', 'Dra', 'Dewi Susilowati', 'S3', '', 'Palembang', '1961-10-13', 2, 3, 'Bandung', 'E.491764', '1988-03-01', '19611013 ', ''),
(3, 147, 3, 2, 1, '19761205 200012 2 001', 'SE,M.Si,Ak', 'Dr', 'Laely Budiarti', 'S3', '', 'Tegal', '1976-12-05', 2, 3, 'Jl. Raya Palang No. 112 Tegal 52193', 'J.095731', '2000-12-01', '19761205 ', ''),
(3, 148, 3, 2, 1, '19791121 200501 1 001', 'SE, M.Si, ', '', 'Icuk Rangga Bawono', 'S2', '0021117901', 'Jakarta', '1979-11-21', 1, 3, 'Komplek Bumi Arca Indah Blok B XII No. 14B Purwokerto', 'M.050309', '2005-01-01', '19791121 ', ''),
(3, 149, 3, 2, 1, '19681228 200003 1 001', 'SE, M.Si, ', '', 'Bambang Setyabudi I', 'S2', '0028126803', 'Wonosari', '1968-12-28', 1, 4, 'Perum Griya Satria Indah II Blok Q 24 Rt. 03/09 Kalisari Purwokerto Utara', 'J.049054', '2000-03-01', '19681228 ', ''),
(3, 150, 3, 2, 1, '19800721 200501 2 002', 'SE, M.Si, ', 'Dr', 'Eliada Herwiyanti', 'S3', '0021078001', 'Purwokerto', '1980-07-21', 2, 4, 'Jl. Kauman Lama No. 48 Rt. 01/04 Kauman Lama Purwokerto', 'M.050320', '2005-01-01', '19800721 ', ''),
(3, 151, 3, 2, 1, '19750822 199903 2 001', 'SE,M.Si,Ak', 'Dr', 'Margani Pinasti', 'S3', '', 'Blora', '1975-08-22', 2, 5, 'Karang Nanas Rt. 01/07 Wadas Malang Sokaraja Banyumas', 'J.007980', '1999-03-01', '19750822 ', ''),
(3, 152, 3, 2, 1, '19751107 200312 2 003', 'SE,M.Si,Ak', '', 'Poppy Dian Indira K', 'S2', '0007117503', 'Surakarta', '1975-11-07', 2, 3, 'Jl. Perintis Kemerdekaan No. 185 A, Rt. 01/01 Karang Pucung Pwt Selatan', 'L.168366', '2003-12-01', '19751107 ', ''),
(3, 153, 3, 2, 1, '19750115 200501 1 004', 'SE,M.Acc,A', '', 'Yanuar Eko Restianto', 'S2', '0015017506', 'Purwokerto', '1975-01-15', 1, 3, 'Jl. Bojong sari Block C.4 no 19', 'M. 048512', '2005-01-01', '19750115 ', ''),
(3, 154, 3, 2, 1, '19820716 200604 2 001', 'SE,M.SA,Ak', 'Dr', 'Wita Ramadhanti', 'S3', '0016078203', 'Malang', '1982-07-16', 2, 3, 'Jl. Gn. Merapi Komp. Daru Pavling II Bancar Kembar Purwokerto', 'M.264685', '2006-04-01', '19820716 ', ''),
(3, 155, 2, 1, 1, '19531111 198901 2 001', '', 'Dra', 'A.Tien Sukaesih', 'S1', '0011115306', 'Garut', '1953-11-11', 2, 3, 'Jl. Sekelimus V No 7 Bandung Jawa Barat - 40266', 'E.505368', '1989-01-01', '19531111 ', ''),
(3, 156, 2, 1, 1, '19580727 198703 1 002', 'M.Si,Ak', 'Drs', 'Taufik Hidayat', 'S2', '0027075808', 'Purwokerto', '1958-07-27', 1, 3, 'Jl. Bima No 7 Perum Dukuh Waluh Rt. 04/09 Kembaran Purwokerto', 'E.208517', '1987-03-01', '19580727 ', ''),
(3, 157, 2, 1, 1, '19780918 200604 2 001', 'SE,M.Si,Ak', 'Dr', 'Negina Kencono Putri', 'S3', '0018097807', 'Purwokerto', '1978-09-18', 2, 3, 'Perum Griya Satria Indah II Blok I No 17 Kalisari Sumampir Purwokerto Utara', 'M. 264687', '2006-04-01', '19780918 ', ''),
(3, 158, 2, 1, 1, '19771115 200812 1 003', 'SE, M.Si, ', '', 'Warsidi', 'S2', '0015117704', 'Cilacap', '1977-11-15', 1, 3, 'Jl. Lele II No 13 Perumnas II Bekasi Rt. 02/05 Kel. Kayuringin Jaya', '', '2008-12-01', '19771115 ', ''),
(3, 159, 2, 1, 1, '19810905 200912 2 001', 'SE,M.Si', '', 'Dona Primasari', 'S2', '0405098101', 'Palembang', '1981-09-05', 2, 3, 'Purwokerto', 'P. 663091', '2009-12-01', '19810905 ', ''),
(3, 160, 2, 1, 1, '19830414 200912 1 004', 'SE,M.Sc', '', 'Yudha Aryo Sudibyo', 'S2', '0014048307', 'Solo Surakarta', '1983-04-14', 1, 3, 'Palur Kulon Rt. 01/01 Bekoneng Sukoharjo Jawa Tengah', 'P.663090', '2009-12-01', '19830414 ', ''),
(3, 162, 2, 1, 1, '19850930 200912 2 005', 'SE,M.Sc,Ak', '', 'Ratu Ayu Sri Wulandari MA', 'S2', '0030098501', 'Purbalingga', '1985-09-30', 2, 3, 'Cipawon Rt. 02/03 Bukateja Purbalingga', 'P. 663092', '2009-12-01', '19850930 ', ''),
(3, 163, 2, 1, 1, '19780815 201012 2 001', 'SE,M.Si,Ak', '', 'Uswatun Hasanah', 'S2', '0015087807', 'Tangerang', '1978-08-15', 2, 3, 'Purwokerto', 'Q.145535', '2010-12-01', '19780815 ', ''),
(3, 164, 2, 1, 1, '19820209 201012 2 001', 'SE,M.Si,Ak', '', 'Hijroh Rokhayati', 'S2', '0009028203', 'Cilacap', '1982-02-09', 2, 3, 'Purwokerto', 'Q.145533', '2010-12-01', '19820209 ', ''),
(3, 166, 1, 1, 1, '19671004 199402 1 001', 'SE,M.Si', '', 'Lilik Handaya Eka', 'S2', '0004106704', 'Klaten', '1967-10-04', 1, 3, 'Perum. Dukuh Waluh R. 07 Rt.05/10 Belakang UMP Purwokerto', 'G.209534', '1994-02-01', '19671004 ', ''),
(3, 168, 1, 1, 1, '19730828 200501 1 002', 'S.Ag,M.SI', '', 'Wahyudin', 'S2', '0028087309', 'Ciamis', '1973-08-28', 1, 3, 'Perum Griya Satria Indah 2 Blok D No.6 Jl.AK. Al Ashori Sumampir Kalisari Purwokerto Utara', 'M.050318', '2005-01-01', '19730828 ', ''),
(3, 169, 1, 1, 1, '19710430 200003 2 002', 'SE,M.Si,Ak', 'Dr', 'Siti Maghfiroh', 'S3', '', 'Jember', '1971-10-30', 2, 3, 'Perum P 4A, Jl. Gambyong Barat Blok F 28 C Rt. 08/11, Puda Panyung Banyumanik Smg', 'L.030600', '2000-03-01', '19710430 ', ''),
(3, 170, 2, 5, 1, '19861102 201404 2 003', 'Ak,M.Sc', '', 'Novita Puspasari, Ak, M.Sc', '', '', 'Bandar Lampung', '1986-11-02', 2, 3, 'Purwokerto', '', '0000-00-00', '19861102 ', ''),
(3, 171, 2, 5, 1, '19870905 201404 2 001', 'SE,M.Sc', '', 'Kiky Srirejeki, SE, M.Sc', 'S2', '', 'Banyumas', '1987-09-05', 2, 3, 'Purwokerto', '', '0000-00-00', '19870905 ', ''),
(2, 173, 5, 3, 1, '19520524 198103 1 003', 'MM', 'Drs', 'Indi Sutopo', 'S2', '0024055204', 'Banjarnegara', '1952-05-24', 1, 3, 'Rt 04 Rw 03 Karangrau, Sokaraja, Banyumas 53181', 'C.0268241', '1981-03-01', '19520524 ', ''),
(2, 174, 5, 3, 1, '19530109 198603 2 001', 'MM', 'Dra', 'Endang Setiasih', 'S2', '0009015305', 'Purwokerto', '1953-01-09', 2, NULL, 'Jl Pereng Rt 11 Rw 3, Purwokerto', 'C.0920234', '1986-03-01', '19530109 ', ''),
(2, 175, 5, 3, 1, '19530512 198003 2 002', 'M.Hum', 'Dra.', 'Sumiyem', 'S2', '0012055303', 'Bantul', '1953-05-12', 2, 3, 'Jl. Jend Sutoyo Gg IV/118 Purwokerto', 'C.0181357', '1980-03-01', '19530512 ', ''),
(2, 176, 7, 3, 1, '19531125 198312 1 001', 'Ms', 'Dr', 'Suprapto', 'S3', '', 'Banjarnegara', '1953-11-25', 1, 3, 'Jl Kenanga 349 Purwokerto', 'C.0664636', '1983-12-01', '19531125 ', ''),
(2, 177, 5, 3, 1, '19531214 198601 1 001', 'M.Si', 'Drs', 'Sudjarwanto', 'S2', '0014125303', 'Purbalingga', '1953-12-14', 1, 3, 'Jl Raya Pernasidi Cilongok', 'C.0920167', '1986-01-01', '19531214 ', ''),
(2, 178, 5, 3, 1, '19550214 198003 1 019', 'MA', 'Drs', 'Sri Nugroho PR', 'S2', '0014025504', 'Banyumas', '1955-02-14', 1, NULL, 'Gg Sudirman No 72 Sudagaran Banyumas', 'C.0181338', '1980-03-01', '19550214 ', ''),
(2, 179, 3, 2, 1, '19560119 198603 2 002', 'MS', 'Dra', 'Emmy Saraswati', 'S2', '0019015602', 'Banjarmasin', '1956-01-19', 2, 3, 'Jl S.Parman 946, Purwokerto', 'C.0920207', '1986-03-01', '19560119 ', ''),
(2, 181, 4, 2, 1, '19560910 198601 1 001', 'MP', 'Drs', 'Sukiman', 'S2', '0010095604', 'Kebumen', '1956-09-10', 1, 3, 'Gg Mahoni 7 No 71 Teluk, Purwokerto', 'C.0920168', '1986-01-01', '19560910 ', ''),
(2, 182, 4, 2, 1, '19570528 198601 1 001', 'M.Si', 'Drs', 'Supadi', 'S2', '0028055703', 'Purbalingga', '1957-05-28', 1, 3, 'Karanggedang Rt 18 Rw 06 Kec Bukateja Purbalingga', 'C.0920169', '1985-01-01', '19570528 ', ''),
(2, 183, 4, 2, 1, '19570823 198601 2 001', '', 'Dra.', 'Asteria Pudyantini', 'S1', '0023085704', 'Bogor', '1957-08-23', 2, NULL, 'Perum Dosen Unsoed No 8 Grendeng, Purwokerto', 'C.0920128', '1986-01-01', '19570823 ', ''),
(2, 184, 5, 3, 1, '19571017 198503 2 001', 'MP', 'Dra', 'Endang Sri Gunawati', 'S2', '0017105704', 'Pemalang', '1957-10-17', 2, 3, 'Jl Suprapto No 16 Rt 006 Rw 001 Purwosari, Baturaden', 'C.0698167', '1985-03-01', '19571017 ', ''),
(2, 185, 5, 3, 1, '19580401 198403 1 018', 'MS.Ph.D', 'Drs', 'Nurul Anwar', 'S3', '', 'Purwokerto', '1958-04-01', 1, 3, 'Jl Letjen Pol Sumarto Rt 05 Rw 02 Purwanegara, Purwokerto Utara', 'C.0664640', '1984-03-01', '19580401 ', ''),
(2, 186, 5, 3, 1, '19580725 198601 1 002', 'M.Si', 'Drs', 'Oke Setiarso', 'S2', '0025075805', 'Semarang', '1958-07-25', 1, 3, 'Jl Perintis Kemerdekaan G 29 No 10 Tegal', 'C.0920170', '1986-01-01', '19580725 ', ''),
(2, 187, 5, 3, 1, '19590110 198601 1 001', 'MM', 'Drs', 'Hary Pudjianto', 'S2', '', 'Banyumas', '0000-00-00', 1, 3, 'Karangsawah, Sudagaran, Banyumas', 'C.0920151', '1986-01-01', '19590110 ', ''),
(2, 188, 5, 3, 1, '19590423 198601 1 001', 'MS', 'Drs', 'Dedi Supriadi', 'S2', '0023045906', 'Bandung', '1959-04-23', 1, 3, 'Jl Prof Dr HR Boenyamin No 472, Bancarkembar, Purwokerto Utara', 'C.0920166', '1986-01-01', '19590423 ', ''),
(2, 189, 5, 3, 1, '19600529 198703 2 001', 'M.Si', 'Dra', 'Nunik Kadarwati', 'S2', '0029056005', 'Purwokerto', '1960-05-29', 2, 3, 'Jl Bank Gg III Rt 03 Rw 4 No 83 Kedungwuluh, Purwokerto', 'E.208490', '1987-03-01', '19600529 ', ''),
(2, 190, 2, 1, 1, '19610912 198603 1 001', 'M.Si', 'Drs', 'Goro Binardjo', 'S2', '0012096106', 'Prigi-Bj.negara', '1961-09-12', 1, 3, 'Jl Jenderal Suprapto Gg 4 Rt 01 Rw 07 Purwokerto', 'C.0920248', '1986-03-01', '19610912 ', ''),
(2, 192, 5, 3, 1, '19620203 198803 1 001', 'MP', 'Drs', 'Herman Sambodo', 'S2', '0003026209', 'Magelang', '1962-02-03', 1, 3, 'Jl Jatisari No A/14 Rt 004 Rw 004 Sumampir ', 'E.491772', '1988-03-01', '19620203 ', ''),
(2, 193, 4, 2, 1, '19630322 198901 2 001', 'MM', 'Dra', 'Neni Widayaningsih', 'S2', '0022036302', 'Surakarta', '1963-03-22', 2, 3, 'Rt 04 Rw 02 Purwosari Kec Baturaden', 'E.505373', '1989-01-01', '19630322 ', ''),
(2, 194, 5, 3, 1, '19630629 198901 1 001', 'ME', 'Drs', 'Rakhmat Priyono', 'S2', '0029066303', 'Kebumen', '1963-06-29', 1, 3, 'Rt 04 Rw 02 Purwosari Kec Baturaden', 'E.505371', '1989-01-01', '19630629 ', ''),
(2, 195, 3, 2, 1, '19701226 199702 2 001', 'SE,M.Sc,Ph', '', 'Istiqomah', 'S3', '', 'Banyumas', '1970-12-26', 2, 3, 'Perum Griya Tegalsari Indah Blok H-4/9 Kembaran 53182', 'G.312990', '1997-02-01', '19701226 ', ''),
(2, 196, 5, 3, 1, '19720413 199802 2 001', 'M.Si', 'Dra', 'Lilis Siti Badriah', 'S2', '0013047205', 'Ciamis', '1972-04-13', 2, 3, 'Purwokerto', 'H.034711', '1998-02-01', '19720413 ', ''),
(2, 197, 3, 2, 1, '19721215 200112 1 002', 'M.Si', 'Dr', 'Abdul Aziz Ahmad', 'S3', '0015127205', 'Boyolali', '1972-12-15', 1, 3, 'Jl Madrani 61C, Grendeng - Purwokerto', 'L.021038', '2001-12-01', '19721215 ', ''),
(2, 198, 4, 2, 1, '19721226 199702 2 001', 'SE, M.Si', '', 'Irma Suryahani', 'S2', '0026127204', 'Purwokerto', '1972-12-26', 2, 3, 'Perum Bancarkembar Permai Blok X/1', 'H.034706', '1997-02-01', '19721226 ', ''),
(2, 199, 2, 1, 1, '19731024 200604 1 003', 'SE,M.Si', '', 'Arintoko', 'S2', '0024107307', 'Magelang', '1973-10-24', 1, NULL, 'Kanggan Rt 1 Rw 13 Wringin Putih, Borobudur Magelang', 'M. 264636', '2006-04-01', '19731024 ', ''),
(2, 200, 3, 2, 1, '19780723 200501 1 001', 'SE,M.Si', '', 'Suharno', 'S2', '0023077803', 'Sragen', '1978-07-23', 1, NULL, 'Jl. Sridadi Gg IV No 87 Karangklesem, Purwokerto Selatan', 'M.050312', '2005-01-01', '19780723 ', ''),
(2, 201, 2, 1, 1, '19800123 200501 2 003', 'SE,M.Si', '', 'Ratna Setyawati Gunawan', 'S2', '0023018002', 'Purwokerto', '1980-01-23', 2, 3, 'Perumahan Karangklesem No 40 Rt 01/04 Kec Purwokerto', 'M.050308', '2005-01-01', '19800123 ', ''),
(2, 202, 3, 2, 1, '19800715 200501 2 002', 'SE, M.Sc', '', 'Barokatuminalloh', 'S2', '0015078007', 'Banyumas', '1980-08-15', 2, 3, 'Pasir Lor Rt 4/I Kec Karanglewas', 'M.050311', '2005-01-01', '19800715 ', ''),
(2, 203, 3, 2, 1, '19801201 200501 1 002', 'SE,M.Sc', '', 'Agus Arifin', 'S2', '0001128003', 'Ambarawa', '1980-12-01', 1, 3, 'Kembaran Kulon Rt 001 Rw 003 Kel Kembaran Kulon Kec Purbalingga', 'M.050315', '2005-01-01', '19801201 ', ''),
(2, 204, 2, 1, 1, '19810609 200604 2 001', 'SE,M.Si', '', 'Diah Setyorini Gunawan', 'S2', '0009068104', 'Purwokerto', '1981-06-09', 2, 3, 'Jl. Sridadi No 04 Karangklesem, Purwokerto Selatan', 'M. 264637', '2006-04-01', '19810609 ', ''),
(2, 205, 2, 1, 1, '19810803 201001 2 002', 'SE,M.Si', '', 'Agustin Susyatna Dewi', 'S2', '0003088105', 'Purwokerto', '1981-08-03', 2, 3, 'Jl Riyanto No 20/216 Sumampir Purwokerto Utara 53125', 'Q.145538', '2010-12-01', '19810803 ', ''),
(2, 206, 2, 1, 1, '19821225 201012 2 004', 'SE,M.Ec.De', '', 'Kikin Windhani', 'S2', '0025128207', 'Magetan', '1982-12-25', 2, 3, 'Jl. Jend Sutoyo II Rt 03 Rw II No 27 Purwokerto', 'Q.145540', '2010-12-01', '19821225 ', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_download`
--

CREATE TABLE IF NOT EXISTS `tbl_download` (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `nama_download` varchar(75) DEFAULT NULL,
  `lampiran_download` varchar(75) DEFAULT NULL,
  `keterangan_download` text,
  `atktiv` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tbl_download`
--

INSERT INTO `tbl_download` (`id_download`, `nama_download`, `lampiran_download`, `keterangan_download`, `atktiv`) VALUES
(2, 'PEDOMAN OPERASIONAL PENILAIAN ANGKA KREDIT KENAIKAN PANGKAT/JABATAN', 'Petunjuk Operasional PAK_27-1-2015.pdf', 'PEDOMAN OPERASIONAL\r\nPENILAIAN ANGKA KREDIT\r\nKENAIKAN PANGKAT/JABATAN\r\nAKADEMIK DOSEN', 1),
(3, 'Peer Jurnal', 'Peer Jurnal.doc', 'PEER REVIEW JURNAL', 1),
(4, 'Peer Prosiding', 'Peer Prosiding.docx', 'PEER REVIEW PROSIDING', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_fakultas`
--

CREATE TABLE IF NOT EXISTS `tbl_fakultas` (
  `ID_FAKULTAS` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_FAKULTAS` varchar(50) DEFAULT NULL,
  `PIMPINAN_FAKULTAS` varchar(80) DEFAULT NULL,
  `NIP_PIMPINAN` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID_FAKULTAS`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_fakultas`
--

INSERT INTO `tbl_fakultas` (`ID_FAKULTAS`, `NAMA_FAKULTAS`, `PIMPINAN_FAKULTAS`, `NIP_PIMPINAN`) VALUES
(1, 'Fakultas Ekonomi dan Bisnis', 'Dr. Pramono Hari Adi, MS', '196003301985031006');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gaji`
--

CREATE TABLE IF NOT EXISTS `tbl_gaji` (
  `ID_GAJI` int(11) NOT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `TGL_GAJIAN` date DEFAULT NULL,
  `GAJI_POKOK` date DEFAULT NULL,
  PRIMARY KEY (`ID_GAJI`),
  KEY `FK_RELATIONSHIP_6` (`ID_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_golongan`
--

CREATE TABLE IF NOT EXISTS `tbl_golongan` (
  `ID_GOLONGAN` int(11) NOT NULL,
  `GOLONGAN` varchar(25) DEFAULT NULL,
  `PANGKAT` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_GOLONGAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_golongan`
--

INSERT INTO `tbl_golongan` (`ID_GOLONGAN`, `GOLONGAN`, `PANGKAT`) VALUES
(1, 'III/a', 'Penata Muda'),
(2, 'III/b', 'Penata Muda Tk.I'),
(3, 'III/c', 'Penata'),
(4, 'III/d', 'Penata Tk.I'),
(5, 'IV/a', 'Pembina'),
(6, 'IV/b', 'Pembina Tk.I'),
(7, 'IV/c', 'Pembina Utama Muda'),
(8, 'IV/d', 'Pembina Utama Madya'),
(9, 'IV/e', 'Pembina Utama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_info`
--

CREATE TABLE IF NOT EXISTS `tbl_info` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `tbl_info`
--

INSERT INTO `tbl_info` (`id_info`, `unsur`, `sub_unsur`, `persentase`, `detail_sub_unsur`, `tiga_be`, `tiga_ce`, `tida_de`, `empat_a`, `empat_be`, `empat_ce`, `empat_de`, `empat_e`, `jenjang_pendidikan`) VALUES
(1, '1', 'Pendidikan', NULL, 'Pendidikan Sekolah', 150, 150, 150, 150, 150, 150, 150, 150, '2'),
(2, '1', 'Pelaksanaan Pendidikan \r\nPelaksanaan Penelitian \r\nPengembangan Diri \r\nPelaksanaan Pengabdian Kepada Masyarakat', '>= 90%', '-', NULL, 45, 135, 225, 360, 495, 630, 810, '2'),
(6, '2', 'Penunjang Kegiatan Akademik Dosen', '<= 10%', '-', NULL, 5, 15, 25, 40, 55, 70, 90, '2'),
(7, '1', 'Pendidikan', NULL, 'Pendidikan Sekolah', 200, 200, 200, 200, 200, 200, 200, 200, '3'),
(8, '1', 'Pelaksanaan Pendidikan \r\nPelaksanaan Penelitian \r\nPengembangan Diri \r\nPelaksanaan Pengabdian Kepada Masyarakat', '>= 90%', '-', NULL, NULL, 90, 180, 315, 450, 585, 765, '3'),
(12, '2', 'Penunjang Kegiatan Akademik Dosen', '<= 10%', '-', NULL, NULL, 10, 20, 35, 50, 65, 85, '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jabatan`
--

CREATE TABLE IF NOT EXISTS `tbl_jabatan` (
  `ID_JABATAN` int(11) NOT NULL,
  `KODE_JABATAN` varchar(25) DEFAULT NULL,
  `NAMA_JABATAN` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID_JABATAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jabatan`
--

INSERT INTO `tbl_jabatan` (`ID_JABATAN`, `KODE_JABATAN`, `NAMA_JABATAN`) VALUES
(1, '1', 'Asisten Ahli'),
(2, '2', 'Lektor'),
(3, '3', 'Lektor Kepala'),
(4, '4', 'Guru Besar'),
(5, '5', 'Tenaga Pengajar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE IF NOT EXISTS `tbl_jurusan` (
  `ID_JURUSAN` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_JURUSAN` varchar(35) DEFAULT NULL,
  `NAMA_PIMPINAN` varchar(80) DEFAULT NULL,
  `NIP_PIMPINAN` varchar(30) DEFAULT NULL,
  `ID_FAKULTAS` int(11) DEFAULT NULL,
  `PANGKAT` varchar(20) DEFAULT NULL,
  `GOLONGAN` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_JURUSAN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`ID_JURUSAN`, `NAMA_JURUSAN`, `NAMA_PIMPINAN`, `NIP_PIMPINAN`, `ID_FAKULTAS`, `PANGKAT`, `GOLONGAN`) VALUES
(1, 'Manajemen', 'Drs. Jaryono, MSIE', '195809181986011001', 1, 'Pembina', 'IV A'),
(2, 'Ilmu Ekonomi Studi Pembangunan', 'Dr. Suprapto, MS', '195311251883121001', 1, NULL, NULL),
(3, 'Akuntansi', 'Dr. Oman Rusmana, M.Si, Ak', '197503312000031001', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keluarga`
--

CREATE TABLE IF NOT EXISTS `tbl_keluarga` (
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
  KEY `FK_RELATIONSHIP_5` (`ID_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mutasi`
--

CREATE TABLE IF NOT EXISTS `tbl_mutasi` (
  `ID_MUTASI` int(11) NOT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `JABTAN_LAMA` varchar(35) DEFAULT NULL,
  `UNIT_KERJA_LAMA` varchar(75) DEFAULT NULL,
  `TMT_LAMA` varchar(50) DEFAULT NULL,
  `JABATAN_BARU` varchar(35) DEFAULT NULL,
  `UNIT_KERJA_BARU` varchar(75) DEFAULT NULL,
  `TMT_BARU` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_MUTASI`),
  KEY `FK_RELATIONSHIP_7` (`ID_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_persen`
--

CREATE TABLE IF NOT EXISTS `tbl_persen` (
  `id_persen` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(15) DEFAULT NULL,
  `kualifikasi_akad` varchar(15) DEFAULT NULL,
  `pel_pend` varchar(15) DEFAULT NULL,
  `pel_pen` varchar(15) DEFAULT NULL,
  `pel_peng` varchar(15) DEFAULT NULL,
  `unsur_penunjang` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_persen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_status_kepegawaian`
--

CREATE TABLE IF NOT EXISTS `tbl_status_kepegawaian` (
  `ID_STATUS_KEP` int(11) NOT NULL,
  `STATUS_KEP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_STATUS_KEP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_status_kepegawaian`
--

INSERT INTO `tbl_status_kepegawaian` (`ID_STATUS_KEP`, `STATUS_KEP`) VALUES
(1, 'Pegawai Negeri'),
(2, 'Pegawai Kontrak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_status_pernikahan`
--

CREATE TABLE IF NOT EXISTS `tbl_status_pernikahan` (
  `ID_STATUS` int(11) NOT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unsur_pel_pendidikan`
--

CREATE TABLE IF NOT EXISTS `unsur_pel_pendidikan` (
  `PENGAJUAN_KE` varchar(15) DEFAULT NULL,
  `ID_UNSUR_PELPEND` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SUBPELPEND` int(11) DEFAULT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `KEGIATAN_PELPEND` text,
  `TEMPAT_PELPEND` varchar(50) DEFAULT NULL,
  `SEMESTER` varchar(25) DEFAULT NULL,
  `BUKTI_PELPEND` varchar(50) DEFAULT NULL,
  `NILAI_PELPEND` varchar(10) DEFAULT NULL,
  `TGL_SUBMIT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_UNSUR_PELPEND`),
  KEY `FK_RELATIONSHIP_12` (`ID_SUBPELPEND`),
  KEY `FK_RELATIONSHIP_13` (`ID_DOSEN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

--
-- Dumping data untuk tabel `unsur_pel_pendidikan`
--

INSERT INTO `unsur_pel_pendidikan` (`PENGAJUAN_KE`, `ID_UNSUR_PELPEND`, `ID_SUBPELPEND`, `ID_DOSEN`, `KEGIATAN_PELPEND`, `TEMPAT_PELPEND`, `SEMESTER`, `BUKTI_PELPEND`, `NILAI_PELPEND`, `TGL_SUBMIT`) VALUES
('III C', 3, 2, 1, 'Seminar kerja praktek', 'D3 Ak. 09', 'genap 2010/2011', '138/H23.4.FE/PP.07.00/2011', '0.75', '2015-03-25 08:44:33'),
('III B', 4, 1, 1, 'Analisa Laporan Keungan (3 SKS), ampu 2', 'D3 Ak. ''09', 'Genap 2010/2011', '138/H23.4.FE/PP.07.00/2011', '0.75', '2015-04-01 02:53:40'),
('IV B', 5, 1, 2, 'Jati Diri Unsoed 2 SKS ampu 1', 'IESP Internasional', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '2', '2015-04-06 01:26:42'),
('IV B', 6, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '1.5', '2015-04-06 01:34:04'),
('IV B', 7, 1, 2, 'Ekonomi internasional I 3 SKS ampu 2', 'IESP A', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '1.5', '2015-04-09 01:42:16'),
('IV B', 8, 1, 2, 'Ekonomi Internasional I 3 SKS ampu 2', 'IESP B', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '1.5', '2015-04-09 01:44:21'),
('IV B', 9, 1, 2, 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP A', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '1', '2015-04-09 01:45:20'),
('IV B', 10, 1, 2, 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP B', 'Gasal 2010', 'No Kept 251/H23.4.FE/PP.06.00/2010', '1', '2015-04-09 01:46:47'),
('IV B', 11, 1, 2, 'Indonesian Economic 3 SKS ampu 1', 'IESP Internasional', 'Genap 2011', 'No Kept 136/H23.04.FE/PP.07.00/2011', '3', '2015-04-09 01:47:58'),
('IV B', 12, 1, 2, 'Ekonomi Internasional II 3 SKS ampu 2', 'IESP B', 'Genap 2011', 'No Kept 136/H23.04.FE/PP.07.00/2011', '1.5', '2015-04-09 01:48:56'),
('IV B', 13, 1, 2, 'Ekonomi Internasinal II 3 SKS ampu 2 ', 'IESP A', 'Genap 2011', 'No Kept 136/H23.04.FE/PP.07.00/2011', '1.5', '2015-04-09 01:50:07'),
('IV B', 14, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi A', 'Genap 2011', 'No Kept 136/H23.04.FE/PP.07.00/2011', '1.5', '2015-04-09 01:51:10'),
('IV B', 15, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'IESP B', 'Genap 2011', 'No Kept 136/H23.04.FE/PP.07.00/2011', '1.5', '2015-04-09 01:51:48'),
('IV B', 16, 1, 2, 'Ekonomi Internasional 3 SKS ampu 2', 'IESP A', 'Gasal 2011', 'No Kept 220a/H23.4.FE/PP.07.00/2011', '1.5', '2015-04-09 01:53:21'),
('IV B', 17, 1, 2, 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP A', 'Gasal 2011', 'No Kept 220a/H23.4.FE/PP.07.00/2011', '1', '2015-04-09 01:54:08'),
('IV B', 18, 1, 2, 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP B', 'Gasal 2011', 'No Kept 220a/H23.4.FE/PP.07.00/2011', '1', '2015-04-09 01:54:54'),
('IV B', 19, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi', 'Gasal 2011', 'No Kept 220a/H23.4.FE/PP.07.00/2011', '1.5', '2015-04-09 01:57:51'),
('IV B', 20, 1, 2, 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP Internasional', 'Gasal 2011', 'No Kept 220a/H23.4.FE/PP.07.00/2011', '1', '2015-04-09 01:58:46'),
('IV B', 21, 1, 2, 'Ekonomi Internasional II 3 SKS ampu 2', 'IESP B', 'Genap 2012', 'No 005a?UN23.4.FE/PP.07.00/2012', '1.5', '2015-04-09 02:01:49'),
('IV B', 22, 1, 2, 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP', 'Genap 2012', 'No 005a/UN23.4.FE/PP.07.00/2012', '1', '2015-04-09 02:03:00'),
('IV B', 23, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'IESP B', 'Genap 2012', 'No 005a/UN23.4.FE/PP.07.00/2012', '1.5', '2015-04-09 02:03:49'),
('IV B', 24, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi A', 'Genap 2012', 'No 005a/UN23.4.FE/PP.07.00/2012', '1.5', '2015-04-09 02:04:32'),
('IV B', 25, 1, 2, 'Ekonomi Internasional I 3 SKS ampu 2', 'IESP A', 'Gasal 2012', 'No Kept 124a/UN23.03/PP.07.00/2012', '1.5', '2015-04-09 02:07:01'),
('IV B', 26, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi', 'Gasal 2012', 'No Kept 124a/UN23.03/PP.07.00/2012', '1.5', '2015-04-09 02:08:42'),
('IV B', 27, 1, 2, 'Jati DIri Unsoed 2 SKS ampu 2', 'IESP A', 'Gasal 2012', 'No Kept 124a/UN23.03/PP.07.00/2012', '1', '2015-04-09 02:16:37'),
('IV B', 28, 1, 2, 'Jati DIri Unsoed 2 SKS ampu 2', 'IESP B', 'Gasal 2012', 'No Kept 124a/UN23.03/PP.07.00/2012', '1', '2015-04-09 02:17:24'),
('IV B', 29, 1, 2, 'Unsoed Behavior 2 SKS ampu 1', 'IESP Internasional', 'Gasal 2012', 'No Kept 124a/UN23.03/PP.07.00/2012', '2', '2015-04-09 02:18:23'),
('IV B', 30, 1, 2, 'Manajemen Perkantoran 3 SKS ampu 2', 'D3 Sekretariat', 'Genap 2013', 'No Kept 055a/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 02:35:21'),
('IV B', 31, 1, 2, 'Indonesia Economics 3 SKS ampu 1', 'IESP Internasional', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '3', '2015-04-09 02:38:16'),
('IV B', 32, 1, 2, 'Indonesia Economics 3 SKS ampu 1', 'Akuntansi Internasional', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '3', '2015-04-09 02:39:00'),
('IV B', 33, 1, 2, 'Ekonomi Internasional II 3 SKS ampu 2', 'IESP B', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 02:40:07'),
('IV B', 34, 1, 2, 'Jati DIri Unsoed 2 SKS ampu 1', 'IESP A', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '2', '2015-04-09 02:40:53'),
('IV B', 35, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi A', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 03:43:09'),
('IV B', 36, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'IESP B', 'Genap 2013', 'No 001/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 03:44:01'),
('IV B', 37, 1, 2, 'Jati DIri Unsoed 2 SKS ampu 1', 'IESP Internasional', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '2', '2015-04-09 04:26:15'),
('IV B', 38, 1, 2, 'Ekonomi Internasional 3 SKS ampu 2', 'IESP A', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 04:27:11'),
('IV B', 39, 1, 2, 'Jati DIri Unsoed 2 SKS ampu 2', 'IESP A', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '1', '2015-04-09 04:28:00'),
('IV B', 40, 1, 2, 'Jati Diri Unsoed 2 SKS ampu 2', 'IESP B', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '1', '2015-04-09 04:28:59'),
('IV B', 41, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi B', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 04:32:49'),
('IV B', 42, 1, 2, 'Perekonomian Indonesia 3 SKS ampu 2', 'Akuntansi A', 'Gasal 2013', 'No 122/UN23.03/PP.07.00/2013', '1.5', '2015-04-09 04:33:40'),
('IV B', 43, 1, 2, 'Jati Diri Unsoed 2  SKS ampu 2', 'D3 Adm Keuangan', 'Gasal 2013', 'No 143/UN23.03/PP.07.00/2013', '1', '2015-04-09 04:36:00'),
('IV B', 44, 1, 2, 'Jati Diri Unsoed 2 SKS ampu 2', 'D3 Adm Keuangan', 'Gasal 2013', 'No 143/UN23.03/PP.07.00/2013', '1', '2015-04-09 04:36:43'),
('IV B', 45, 1, 2, 'Jati Diri Unsoed 2 SKS ampu 2', 'D3 Akuntansi', 'Gasal 2013', 'No 143/UN23.03/PP.07.00/2013', '1', '2015-04-09 04:37:18'),
('III B', 69, 1, 4, 'Public Sector Accounting (2 sks), ampu 2', 'S1 Akuntansi Internasional', 'gasal 2012/2013', '124a/UN23.03/PP.07.00/2012', '0.5', '2015-05-27 04:24:32'),
('IV B', 70, 4, 2, 'Pembimbing utama skripsi a.n Ayu Putriana', 'FE Unsoed', '22 September 2010', 'No Kept 246/H23.4.FE/PP.06.02/2010', '1', '2015-06-11 01:39:23'),
('IV B', 71, 4, 2, 'Pembimbing utama skripsi a.n Erik Febrian dan Fajar Prasetyo', 'FE Unsoed', '22 Nopember 2010', 'No Kept.293/H23.4.FE/PP.06.02/2010', '2', '2015-06-11 01:41:36'),
('IV B', 72, 4, 2, 'Pembimbing utama skripsi Gentur Jalunggono', 'FE Unsoed', '29 Nop 2010', 'No Kept 294/H23.4.FE/PP.06.02/2010', '1', '2015-06-11 01:47:28'),
('IV B', 73, 4, 2, 'Pembimbing utama skripsi Firmansyah dan Hernindiah P', 'FE Unsoed', '13 Juni 2011', 'No Kept.201/H23.4.FE/PP.07.02/2011', '2', '2015-06-11 01:51:11'),
('IV B', 74, 4, 2, 'Pembimbing kedua skripsi a.n Wisnu Dwinanda P dan Agung Febrianto', 'FE Unsoed', '13 Juni 2011', 'No Kept.201/H23.4.FE/PP.07.02/2011', '1', '2015-06-11 01:53:20'),
('IV B', 75, 4, 2, 'Pembimbing utama skripsi Riska Dianti, Wahyudi, dan Kevin Andi K', 'FE Unsoed', '05 Des 2011', 'No Kept.309/H23.4.FE/PP.07.02/2011', '3', '2015-06-11 01:56:48'),
('IV B', 76, 4, 2, 'Pembimbing utama skripsi Siska Rahmawati dan Ramadhani Darwis GN', 'FE Unsoed', '11 Juni 2012', 'No Kept.117/UN23.4.FE/PP.07.02/2012', '2', '2015-06-11 01:58:49'),
('IV B', 77, 4, 2, 'Pembimbing utama skripsi a.n Dwi Puji Setyani dan Bangkit Susanti', 'FE Unsoed', '10 Sept 2012', 'No Kept.172/UN23.4.FE/PP.07.02/2012', '2', '2015-06-11 02:01:55'),
('IV B', 78, 4, 2, 'Pembimbing kedua skripsi a.n Taufik Nugroho dan Rian Wibawa', 'FE Unsoed', '10 Sept 2012', 'No Kept.172/UN23.4.FE/PP.07.02/2012', '1', '2015-06-11 02:19:23'),
('IV B', 79, 4, 2, 'Pembimbing utama skripsi a.n Febi Ferdian', 'FE Unsoed', '07 Maret 2013', 'No Kept 175/UN23.4.FE/PP.07.02/2013', '1', '2015-06-11 02:21:03'),
('IV B', 80, 4, 2, 'Pembimbing kedua skripsi Rahman Hakim, Amalia Ayu I dan Ayu Rahayu F', 'FE Unsoed', '07 Maret 2013', 'No Kept.033/UN23.4.FE/PP.07.02/2013', '1.5', '2015-06-11 02:26:13'),
('IV B', 81, 4, 2, 'Pembimbing utama skripsi a.n Ardi Ardiyansyah', 'FE Unsoed', '09 Sept 2013', 'No Kept.175/UN23.4.FE/PP.07.02/2013', '1', '2015-06-11 02:28:21'),
('IV B', 82, 4, 2, 'Pembimbing kedua skripsi a.n Irma Purwa S', 'FE Unsoed', '09 Sept 2013', 'No Kept.175/UN23.4.FE/PP.07.02/2013', '0.5', '2015-06-11 02:31:08'),
('IV B', 83, 4, 2, 'Pembimbing kedua skripsi a.n Dwi Retno S, Anjar Wulandari, dan Zamzam K', 'FE Unsoed', '12 Desember 2013', 'No Kept 325/UN23.4.FE/PP.07.02/2013', '1.5', '2015-06-11 02:32:47'),
('IV B', 84, 4, 2, 'Pembimbing penyusunan laporan kerja praktek mhs program D3 a.n Lita yuan P', 'FE Unsoed', '22 Pebruari 2013', 'No Kept 025/UN23.4.FE/PP.06.02/2013', '0.5', '2015-06-11 02:34:48'),
('IV B', 85, 5, 2, 'Ketua penguji pendadaran S1 Reguler a.n Melvawani Sinurat dan Tri Handoyo', 'FE Unsoed', '04 Sept 2010', 'No 239/H23.4.FE/PP.07.02/2010', '2', '2015-06-11 02:57:02'),
('IV B', 86, 5, 2, 'Ketua penguji pendadaran S1 Reguler a.n Oktavianus Krhisna A, RR Arum Widyantari, Lukito Hermono dan Fenny Eka F', 'FE Unsoed', '11 Maret 2011', 'SK No 119/UN23.03.PP.07.02/2011', '4', '2015-06-11 02:59:25'),
('IV B', 87, 5, 2, 'Anggota penguji pendadaran S1 Reguler a.n Ridho Sudarno, Ashari Novi S dan Fauziati Amalia', 'FE Unsoed', '11 Maret 2011', 'SK No 119/UN23.03.PP.07.02/2011', '1.5', '2015-06-11 03:00:52'),
('IV B', 88, 5, 2, 'Ketua penguji pendadaran S1 Reguler a.n Imaniar Agustin dan Kiki Ade W', 'FE Unsoed', '13 Juni 2011', 'No Kept 202/H.23.4.FE/PP.07.02/2011', '2', '2015-06-11 03:03:09'),
('IV B', 89, 5, 2, 'Anggota penguji pendadaran S1 Reguler a.n M Nur Ali, Andri ferdiyansyah, Tina Sugiarti dan Irma Istiqomah', 'FE Unsoed', '13 Juni 2011', 'No Kept 202/H.23.4.FE/PP.07.02/2011', '2', '2015-06-11 03:04:48'),
('IV B', 90, 5, 2, 'Ketua penguji pendadaran S1 Reguler a.n Tri Riyanti, Diaz Pramadiana, Pradipta Ariani dan Adhika Haryo P', 'FE Unsoed', '05 Des 2011', 'No 310/H.23.6.FE/PP.07.02/2011', '4', '2015-06-11 03:06:48'),
('IV B', 91, 5, 2, 'Anggota penguji Pendadaran s1 Reguler a.n Andika Dwi A, Rifqoh Al H dan Suprihatin', 'FE Unsoed', '05 Des 2011', 'No 310/H.23.6.FE/PP.07.02/2011', '1.5', '2015-06-11 03:08:27'),
('IV B', 92, 5, 2, 'Ketua penguji pendadaran s1 Reguler a.n Didi Rusdiana', 'FE Unsoed', '05 Maret 2012', 'No 051/UN23.4.FE/PP.07.02/2012', '1', '2015-06-11 03:09:34'),
('IV B', 93, 5, 2, 'Anggota penguji pendadaran s1 Reguler a.n Titik Lestari dan Aris Subianto', 'FE Unsoed', '05 Maret 2012', 'No 051/UN23.4.FE/PP.07.02/2012', '1', '2015-06-11 03:11:38'),
('IV B', 94, 5, 2, 'Ketua penguji pendadaran s1 reguler a.n Phany Ineke Putri dan Disha Malinda PD', 'FE Unsoed', '11 Juni 2012', 'No 118/UN23.03/PP.07.02/2012', '2', '2015-06-11 03:13:10'),
('IV B', 95, 5, 2, 'Anggota penguji pendadaran s1 reguler a.n Anang Primaka K, Anang Saputra, Ardi Riza Satriatama, Adit Setio Nugroho dan Arief Perdana Y', 'FE Unsoed', '11 Juni 2012', 'No 118/UN23.03/PP.07.02/2012', '2.5', '2015-06-11 03:15:02'),
('IV B', 96, 5, 2, 'Ketua penguji pendadaran s1 reguler a.n Adinata Manggala dan Sofri Priya Dingga', 'FE Unsoed', '10 Sept 2012', 'No 173/UN23.4.FE/PP.07.02/2012', '2', '2015-06-11 03:16:45'),
('IV B', 97, 5, 2, 'Anggota penguji pendadaran s1 reguler a.n Hanang Indra P,Arry Fachrein, Isnaendi Anggriyana, Wahyu Budi R, Agnes RNV, Yulian Risqi A, dan Arismanto Eko N', 'FE Unsoed', '10 Sept 2012', 'No 173/UN23.4.FE/PP.07.02/2012', '3.5', '2015-06-11 03:18:39'),
('IV B', 98, 5, 2, 'Anggota penguji pendadaran s1 reguler a.n Ilham Maulana, Fajar Arief P, Fristy Acita P, Aristika YN, Aris Ardianto', 'FE Unsoed', '07 Maret 2013', 'No Kept 034/UN23.03/PP.07.02/2013', '2.5', '2015-06-11 03:22:14'),
('IV B', 99, 5, 2, 'Ketua penguji pendadaran s1 reguler a.n Andri Mukti, Vina Kurniasari, Bayu Kurniawan, dan Guntur Prasetyo', 'FE Unsoed', '09 Sept 2013', 'No 176/UN23.03/PP.07.02/2013', '4', '2015-06-11 03:24:04'),
('IV B', 100, 5, 2, 'Anggota penguji pendadaran s1 reguler a.n Depit Yudi P, Nur Triana P, Gilang Rinaldi, Gita Ratna Sari, dan Aulia Lupita', 'FE Unsoed', '09 Sept 2013', 'No 176/UN23.03/PP.07.02/2013', '2.5', '2015-06-11 03:26:03'),
('IV B', 101, 5, 2, 'Ketua penguji pendadaran s1 reguler a.n  Anjar Wulandari, dan Setiaji Dwi WP', 'FE Unsoed', '12 Desember 2013', 'No 326/UN23.03/PP.07.02/2013', '2', '2015-06-11 04:01:58'),
('IV B', 102, 5, 2, 'Anggota penguji pendadaran s1 reguler a.n Riska Sitepu, Rasyid Wisnu A, Retika Amalia S, Luqman HK, Anggraeni DS, Provina Pasha H, dan Aprilia Citra D', 'FE Unsoed', '12 Desember 2013', 'No 326/UN23.03/PP.07.02/2013', '3.5', '2015-06-11 04:03:46'),
('IV B', 103, 5, 2, 'Penguji komprehensif D3 a.n Febri Ariyani, Septiara Hutami HP dan Dian Puspa R', 'FE Unsoed', '15 Agustus 2012', 'No 53/UN23.03/PP.007.02/2012', '3', '2015-06-11 04:05:48'),
('IV B', 104, 5, 2, 'Penguji ujian komprehensif D3 a.n Erwin Fajar A dan Sweet Seska I', 'FE Unsoed', '19 Agustus 2013', 'No Kept 146/UN23.03/PP/07/02/2013', '2', '2015-06-11 04:11:24'),
('IV B', 105, 5, 2, 'Ketua penguji pendadaran s1 reguler a.n Kharismatik P N, m Ichsan dan Iin Isnaeningsih', 'FE Unsoed', '04 Sept 2010', 'No 240/H.23.4.FE/PP.07.02/2010', '3', '2015-06-11 04:13:00'),
('IV B', 106, 6, 2, 'Pembimbing akademik mahasiswaprogram s1 reguler dan internasional', 'FE Unsoed', 'Gasal 2010 / 2011', 'No 222/H23.4.FE/PP.06.02/2010', '2', '2015-06-11 04:18:20'),
('IV B', 107, 6, 2, 'Pembimbing akademik mahasiswa program s1 reguler dan internasional ', 'FE Unsoed', 'Genap 2012/2013', 'No 153a/UN23.03/PP.07.02/2012', '2', '2015-06-11 04:20:45'),
('IV B', 108, 6, 2, 'Pembimbing akademik mahasiswaan program s1 reguler dan internasional', 'FE Unsoed', 'Genap 2013/2014', 'No 142/UN23.03/PP.07.02/2013', '2', '2015-06-11 04:22:01'),
('IV B', 109, 3, 2, 'Pembimbing lapangan ( KKN - POSDAYA ) ', 'FE Unsoed', 'Genap 2012/2013', 'No Kept 074/UN23.03/PM.07.02/2013', '2', '2015-06-11 07:48:13'),
('IV B', 110, 6, 2, 'Pelatihan program Applied Aproach ( AA ) Plus tahun 2013', 'Unsoed', '24-28 Juni 2013', 'SK dan Sertifikat', '1', '2015-06-11 07:58:21'),
('III D', 112, 1, 6, 'Pengantar Ekonomi Makro ( 3sks ) ampu 2', 'Akuntansi ', 'Gasal 2010', '250/H23.4.FE/PP.06.00/2010', '1.5', '2015-07-13 03:04:19'),
('III D', 113, 1, 6, 'Praktikum Statistika ( 3sks ) ampu 2', 'Akuntansi', 'Gasal 2010', '250/H23.4.FE/PP.06.00/2010', '1.5', '2015-07-13 03:05:09'),
('III D', 114, 1, 6, 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP A', 'Gasal 2010', 'Kept 251/H23.4.FE/PP.00.06/2010', '1.5', '2015-07-13 03:06:37'),
('III D', 115, 1, 6, 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP B', 'Gasal 2010', 'Kept 251/H23.4.FE/PP.00.06/2010', '1.5', '2015-07-13 03:07:26'),
('III D', 116, 1, 6, 'Ekonomi Mikro II ( 3sks ) ampu 2', 'IESP B', 'Gasal 2010', 'Kept 251/H23.4.FE/PP.00.06/2010', '1.5', '2015-07-13 03:08:06'),
('III D', 117, 1, 6, 'Statistics II ( 3 sks ) ampu 1', 'IESP Internasional', 'Gasal 2010', 'Kept 251/H23.4.FE/PP.00.06/2010', '3', '2015-07-13 03:09:04'),
('III D', 118, 1, 6, 'ESDA Lingkungan ( 3sks ) ampu 2', 'IESP A', 'Genap 2010', '136/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 03:12:07'),
('III D', 119, 1, 6, 'Metodologi Penelitian ( 3sks ) ampu 2', 'IESP A', 'Genap 2010', '136/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 03:13:38'),
('III D', 120, 1, 6, 'Research Method ( 3sks ) ampu 1', 'IESP Internasional', 'Genap 2010', '136/H23.4.FE/PP.07.00/2011', '3', '2015-07-13 03:14:32'),
('III D', 121, 1, 6, 'Sejarah Pemikiran Ekonomi ( 3sks ) ampu 2', 'IESP A', 'Genap 2010', '136/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 03:15:14'),
('III D', 122, 1, 6, 'Pengantar Ekonomi Makro ( 3sks ) ampu 2', 'Akuntansi', 'Genap 2010', '138/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 03:16:24'),
('III D', 123, 1, 6, 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP A', 'Gasal 2011', 'Kept 220a/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 03:17:33'),
('III D', 124, 1, 6, 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP B', 'Gasal 2011', 'Kept 220a/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 03:18:46'),
('III D', 125, 1, 6, 'Pengantar Ekonomi Makro ( 3sks ) ampu 2', 'IESP B', 'Gasal 2011', 'Kept 220a/H23.4.FE/PP.07.00/2011', '1.5', '2015-07-13 03:19:44'),
('III D', 126, 1, 6, 'Introduction to Business ( 3sks ) ampu 1', 'IESP Internasional', 'Gasal 2011', 'Kept 220a/H23.4.FE/PP.07.00/2011', '3', '2015-07-13 03:27:08'),
('III D', 127, 1, 6, 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP A', 'Gasal 2012', 'Kept 124a/UN23.03/PP.07.00/2012', '1.5', '2015-07-13 03:28:15'),
('III D', 128, 1, 6, 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP B', 'Gasal 2012', 'Kept 124a/UN23.03/PP.07.00/2012', '1.5', '2015-07-13 03:28:51'),
('III D', 129, 1, 6, 'Pengantar Ekonomi Makro ( 3sks ) ampu 2', 'IESP B', 'Gasal 2012', 'Kept 124a/UN23.03/PP.07.00/2012', '1.5', '2015-07-13 03:29:28'),
('III D', 130, 1, 6, 'Introduction to Business ( 3sks ) ampu 1', 'IESP Internasional', 'Gasal 2012', 'Kept 124a/UN23.03/PP.07.00/2012', '3', '2015-07-13 03:30:16'),
('III D', 131, 1, 6, 'Pengantar Bisnis ( 3sks ) ampu 2', 'Kesekretariatan', 'Gasal 2012', 'Kept 179/UN.03.3/PP.07.00/2012', '1.5', '2015-07-13 03:31:32'),
('III D', 132, 1, 6, 'Research Method ( 3sks ) ampu 1', 'IESP Internasional', 'Genap 2013', '001/UN23.03/PP.07.00/2013', '3', '2015-07-13 03:34:17'),
('III D', 133, 1, 6, 'ESDA Lingkungan ( 3sks ) ampu 2', 'IESP A', 'Genap 2010', '001/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 03:42:33'),
('III D', 134, 1, 6, 'Metodologi Penelitian ( 3sks ) ampu 2', 'IESP A', 'Genap 2013', '001/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 03:43:14'),
('III D', 135, 1, 6, 'Sejarah Pemikiran Ekonomi ( 3sks ) ampu 2', 'IESP A', 'Genap 2013', '001/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 03:45:11'),
('III D', 136, 1, 6, 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP A', 'Gasal 2013', '122/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 03:46:27'),
('III D', 137, 1, 6, 'Pengantar Bisnis ( 3sks ) ampu 2', 'IESP B', 'Gasal 2013', '122/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 03:48:04'),
('III D', 138, 1, 6, 'Pengantar Ekonomi Makro ( 3sks ) ampu 2', 'IESP B', 'Gasal 2013', '122/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 03:48:47'),
('III D', 139, 1, 6, 'Pengantar Ekonomi Mikro ( 3sks ) ampu 2', 'IESP A', 'Gasal 2013', '122/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 03:49:41'),
('III D', 140, 1, 6, 'Introduction to Business ( 3sks ) ampu 1', 'IESP Internasional', 'Gasal 2013', '122/UN23.03/PP.07.00/2013', '3', '2015-07-13 03:52:08'),
('III D', 141, 1, 6, 'Pengantar Ekonomi Mikro ( 3sks ) ampu 2', 'Adm Keuangan D3', 'Gasal 2011', 'Kept 143/UN23.03/PP.07.00/2013', '1.5', '2015-07-13 03:55:02'),
('III D', 142, 1, 6, 'Metodologi Penelitian ( 3sks ) ampu 2', 'IESP A', 'Genap 2013', '001/UN23.03/PP.07.00/2014', '1.5', '2015-07-13 03:56:20'),
('III D', 143, 1, 6, 'ESDA Lingkungan ( 3sks ) ampu 2', 'IESP A', 'Genap 2013', '001/UN23.03/PP.07.00/2014', '1.5', '2015-07-13 03:57:03'),
('III D', 144, 1, 6, 'Sejarah Pemikiran Ekonomi', 'IESP A', 'Genap 2013', '001/UN23.03/PP.07.00/2014', '1.5', '2015-07-13 03:57:41'),
('III D', 145, 1, 6, 'Research Method ( 3sks ) ampu 1', 'IESP Internasional', 'Genap 2013', '001/UN23.03/PP.07.00/2014', '3', '2015-07-13 03:59:09'),
('III D', 146, 5, 6, 'Anggota Penguji pendadaran S1 Reguler a.n Haryanto, Yogi Aditya G dan Linda Karimmah', 'Fakultas Ekonomi', 'Desember 2011', 'SK no 310/H.23.4.FE/PP.07.02/2011', '1.5', '2015-07-23 02:56:26'),
('III D', 147, 5, 6, 'Anggota Penguji pendadaran S1 Reguler a.n Ibrahim, Chusniyah N H, dan Rizky Fajar A', 'Fakultas Ekonomi', 'Maret 2012', 'SK no 051/UN23.4.FE/PP.07.02/2012', '1.5', '2015-07-23 02:59:13'),
('III D', 148, 5, 6, 'Ketua Penguji pendadaran S1 Reguler a.n Rahma Dian H', 'Fakultas Ekonomi', 'September 2012', 'SK no 173/UN23.03/PP.07.02/2012', '1', '2015-07-23 03:03:07'),
('III D', 149, 5, 6, 'Ketua Penguji Pendadaran S1 Reguler a.n Husny Aditya R, Tabeata R A, Ade Saefudin, Rina Aryanti, dan Dewi Wulandari', 'Fakultas Ekonomi', 'Juni 2013', 'SK No 112/UN23.03/PP.07.02/2013', '5', '2015-07-23 03:19:38'),
('III D', 150, 5, 6, 'Anggota Penguji pendadaran S1 Reguler a.n Ari Febrianto, Maretiawan HG, Endah Utami, dan Nurhasanah', 'Fakultas Ekonomi', 'September 2013', 'SK no 176/UN23.03/PP.07.02/2013', '2', '2015-07-23 03:24:56'),
('III D', 151, 5, 6, 'Ketua Penguji pendadaran S1 Reguler a.n  Beni Saputra ', 'Fakultas Ekonomi', 'Desember 2013', 'SK no 326/UN23.03/PP.07.02/201', '1', '2015-07-23 06:52:01'),
('III D', 152, 5, 6, 'Anggota Penguji pendadaran a.n Ias Pramestie, Nur Azizah, Erlita Cahya dan Imam Budiarto', 'FEB', 'Maret 2014', 'SK No 109/UN23.03/PP.07.02/2014', '2', '2015-07-23 07:06:11'),
('III D', 153, 5, 6, 'Ketua Penguji pendadaran S1 Reguler a.n Sheila Ardilla Y, Vera Prisca S, dan Dwita Aprillia F', 'FEB', 'Juni 2014', 'SK no 292/UN23.03/PP.07.02/2014', '3', '2015-07-23 07:09:52'),
('III D', 154, 4, 6, 'Pembimbing kedua S1 Reguler a.n Lananda P, dan Suprihatin', 'Fakultas Ekonomi', 'Desember 2011', 'SK No 309/H.23.4.FE/PP.07.02/2011', '1', '2015-07-23 07:14:53'),
('III D', 155, 4, 6, 'Pembimbing utama S1 reguler&internasional a.n Yulianti Pribadi, Hanang Indra P, dan Taufik Nugroho', 'Fakultas Ekonomi', 'September 2012', 'SK no 173/UN23.03/PP.07.02/2012', '3', '2015-07-23 07:17:47'),
('III D', 156, 4, 6, 'Pembimbing Utama S1 Reguler a.n Doni Saputro', 'Fakultas Ekonomi', 'Juni 2013', 'SK no 111/UN23.03/PP.07.02/2013', '1', '2015-07-23 07:19:39'),
('III D', 157, 4, 6, 'Pembimbing kedua s1 Reguler a.n Tri Sutrisno', 'Fakultas Ekonomi', 'Juni 2013', 'SK no 111/UN23.03/PP.07.02/2013', '0.5', '2015-07-23 07:20:48'),
('III D', 158, 4, 6, 'Pembimbing utama S1 Reguler a.n Kukuh Tri K', 'Fakultas Ekonomi', 'September 2013', 'SK no 175/UN23.03/PP/07.02/2013', '1', '2015-07-23 07:22:56'),
('III D', 159, 4, 6, 'Pembimbing kedua S1 reguler a.n M. Hasanuddin', 'Fakultas Ekonomi', 'September 2013', 'SK no 175/UN23.03/PP/07.02/2013', '0.5', '2015-07-23 07:24:01'),
('III D', 160, 4, 6, 'Pembimbing utama S1 Reguler a.n Pricilia Ayu K, Emirinsiana KA, dan Rasyid Wisnuu Aji', 'Fakultas Ekonomi', 'Desember 2013', 'SK no 325/UN23.03/PP.07.02/2013', '3', '2015-07-23 07:29:15'),
('III D', 161, 4, 6, 'Pembimbing Utama Kerja Praktek Program D3 a.n Agustin Ika Sunarya', 'Fakultas Ekonomi', 'Februari 2013', 'No Kept 025/UN23.03/PP.07.02/2013', '1', '2015-07-23 07:34:58'),
('III D', 162, 4, 6, 'Pembimbing Utama S1 Reguler a.n Albertus Denis P dan Rijli Ahsan R', 'FEB', 'Maret 2014', 'SK no 108/UN23.03/PP.07.02/2014', '2', '2015-07-23 07:36:47'),
('III D', 163, 4, 6, 'Pembimbing kedua S1 Reguler a.n Galih Satria P, Sheila Ardilla, Riyan Fadilah, Sitha Nidya T', 'FEB', 'Juni 2014', 'SK no 291/UN23.03/PP.07.02/2014', '2', '2015-07-23 07:42:46'),
('III D', 164, 4, 6, 'Pembimbing Utama S1 Internasional a.n Rosida Afifatul A', 'FEB', 'September 2014', 'SK no 427/UN23.03/PP.07.02/2014', '1', '2015-07-23 07:48:18'),
('PROFESOR', 165, 1, 3, 'Melaksanakan perkuliahan Introduction to Micro 3 SKS ampu 1', 'IESP Internasional', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '3', '2015-08-07 01:27:14'),
('PROFESOR', 166, 1, 3, 'Melaksanakan perkuliahan Introduction to Economics 3 SKS ampu 2', 'Manajemen Internasional', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '1.5', '2015-08-07 01:29:04'),
('PROFESOR', 167, 1, 3, 'Melaksanakan perkuliahan Marketing Management II 3 SKS ampu 2', 'Manajemen Internasional', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '1.5', '2015-08-07 01:31:23'),
('PROFESOR', 168, 1, 3, 'Melaksanakan perkuliahan Introduction to Micro 3 SKS ampu 1', 'Akuntansi Internasional', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '3', '2015-08-07 01:32:58'),
('PROFESOR', 169, 1, 3, 'Melaksanakan perkuliahan Ekonomi Mikro II 3 SKS ampu 2', 'IESP B', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '1.5', '2015-08-07 01:33:52'),
('PROFESOR', 170, 1, 3, 'Melaksanakan perkuliahan Pengantar Ekonomi 3 SKS ampu 2', 'Manajemen B', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '1.5', '2015-08-07 01:35:07'),
('PROFESOR', 171, 1, 3, 'Melaksanakan perkuliahan Pengantar Ekonomi 3 SKS ampu 2', 'Manajemen A', 'Gasal 2014', 'SK No 316/UN23.03/PP.07.00/2014', '1.5', '2015-08-07 01:35:56'),
('PROFESOR', 172, 1, 3, 'Melaksanakan perkuliahan Marketing Analysis 3 SKS ampu 2', 'S2 Minat Magister Management', 'Gasal 2014', 'No Kept 211/UN23.09/KP.02.01/2014', '1.5', '2015-08-07 01:37:02'),
('PROFESOR', 173, 1, 3, 'Melaksanakan perkuliahan Marketing Strategy 3 SKS ampu 2', 'Program Minat S2 Sains Manajemen', 'Gasal 2014', 'No Kept 099/UN23.09/KP.02.01/2014', '1.5', '2015-08-07 01:38:27'),
('PROFESOR', 174, 4, 3, 'Sebagai pembimbing utama Tesis a.n Rochmad Kasir N', 'Magister Manajemen', 'Gasal 2014', 'No Kept 167/UN23.09/PP.00.04/2014', '3', '2015-08-07 01:39:34'),
('PROFESOR', 175, 4, 3, 'Sebagai pembimbing utama a.n Supriyatin', 'Magister Manajemen', 'Gasal 2014', 'No Kept 227/UN23.09/PP.00.04/2014', '3', '2015-08-07 01:40:20'),
('PROFESOR', 176, 1, 3, 'Melaksanakan perkuliahan Perkembangan teori manajemen 3 Sks ampu 2', 'S3 Ilmu Manajemen', 'Gasal 2014', 'No Kept 185/UN23.09/KP.02.01/2014', '1.5', '2015-08-07 01:41:31'),
('PROFESOR', 177, 5, 3, 'Ketua penguji pendadaran S1 Internasional a.n Yanuar Rahadian', 'FEB', 'Maret 2015', 'No 081/UN23.03/PP.07.02/2015', '1', '2015-08-07 01:43:12'),
('PROFESOR', 178, 4, 3, 'Pembimbing Utama Skripsi a.n Reviana Imas Sari, dan Arina Nindya Kirana', 'FEB Unsoed', 'Maret 2015', 'No 080/UN23.03/PP.07.02/2015', '2', '2015-08-21 03:19:10'),
('PROFESOR', 179, 4, 3, 'Pembimbing Utama Skripsi a.n Prilly Noverina S dan Satria Riantiarno', 'FEB Unsoed', 'Gasal 2014', 'No 606/UN23.03/PP.07.02/2014', '2', '2015-08-21 03:21:18'),
('PROFESOR', 180, 5, 3, 'Ketua Penguji Seminar Proposal Thesis a.n Ali Murtopo', 'Program Pascasarjana Magister Management', 'September 2014', 'No Kept 150/UN23.09/PP.00.04/2014', '1', '2015-08-21 03:26:14'),
('PROFESOR', 181, 5, 3, 'Ketua Penguji Seminar Proposal Tesis a.n Lucyani Syach Putri', 'Program Pascasarjana Magister Management', 'Juli 2014', 'No Kept. 130/UN23.09/PP.00.04/2014', '1', '2015-08-24 02:36:33'),
('PROFESOR', 182, 5, 3, 'Ketua Penguji Pendadaran S1 Reguler a.n Pristian Puput C', 'FEB Unsoed', 'Desember 2014', 'SK No 607/UN23.03/PP.07.02/2014', '1', '2015-08-24 02:41:39'),
('PROFESOR', 183, 5, 3, 'Anggota Penguji Pendadaran S1 Internasional a.n Reky Gumilang', 'FEB Unsoed', 'Desember 2014', 'SK No 607/UN23.03/PP.07.02/2014', '0.5', '2015-08-24 02:42:49'),
('PROFESOR', 184, 5, 3, 'Anggota Pengujii Tesis a.n Nurtiah dan Desi Arisanti', 'Program Minat Magister Ekonomi Manajemen', 'September 2014', 'No Kept 161/UN23.09/PP.00.04/2014', '1', '2015-08-24 02:58:46'),
('PROFESOR', 185, 5, 3, 'Ketua Penguji Tesis a.n Awaludin Ahmad', 'Program Minat Magister Ekonomi Manajemen', 'Desember 2014', 'No Kept 244/UN23.09/PP.00.04/2014', '1', '2015-08-24 03:00:13'),
('PROFESOR', 186, 5, 3, 'Anggota Penguji Tesis a.n Dian Sukmadewi Puspitasari', 'Prodi Magister Manajemen PPS UNsoed', 'November 2014', 'No Kept 225/UN23.09/PP.00.04/2014', '0.5', '2015-08-24 03:08:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unsur_pendidikan`
--

CREATE TABLE IF NOT EXISTS `unsur_pendidikan` (
  `ID_UNSUR_PEND` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SUBUNPEND` int(11) DEFAULT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `KEGIATAN_PENDIDIKAN` text,
  `TEMPAT_PENDIDIKAN` varchar(50) DEFAULT NULL,
  `TGL_KEGIATAN_PEND` date DEFAULT NULL,
  `BUKTI_PENDIDIKAN` varchar(50) DEFAULT NULL,
  `NILAI_PENDIDIKAN` varchar(10) DEFAULT NULL,
  `TGL_SUBMIT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PENGAJUAN_KE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_UNSUR_PEND`),
  KEY `FK_RELATIONSHIP_10` (`ID_SUBUNPEND`),
  KEY `FK_RELATIONSHIP_11` (`ID_DOSEN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `unsur_pendidikan`
--

INSERT INTO `unsur_pendidikan` (`ID_UNSUR_PEND`, `ID_SUBUNPEND`, `ID_DOSEN`, `KEGIATAN_PENDIDIKAN`, `TEMPAT_PENDIDIKAN`, `TGL_KEGIATAN_PEND`, `BUKTI_PENDIDIKAN`, `NILAI_PENDIDIKAN`, `TGL_SUBMIT`, `PENGAJUAN_KE`) VALUES
(4, 1, 1, 'Memperoleh Ijasah S2', 'Unsoed', '2011-12-01', '2332/UN23/PPS.MNJ/S2/2012', '50', '2015-03-26 03:02:29', 'III B'),
(5, 1, 1, 'memperoleh ijasah s3', 'UGM', '2015-03-01', '123456789', '50', '2015-03-31 03:23:11', 'III B'),
(6, 1, 4, 'Mendapat gelar Master', 'UGM', '2009-04-29', 'Ijazah', '50', '2015-05-27 04:15:10', 'III B'),
(7, 1, 5, 'Mengikuti Diklat Prajabatan Golongan III', 'Kemdikbud', '2014-11-09', 'Surat Tanda Tamat Pendidikan dan Pelatihan', '3', '2015-07-03 04:15:50', 'III B'),
(8, 1, 7, 'Melaksanakan Pendidikan', 'UGM Yogyakarta', '2008-02-19', 'NRM 00/139617/SP/18969', '5', '2015-07-28 01:51:11', 'III C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unsur_penelitian`
--

CREATE TABLE IF NOT EXISTS `unsur_penelitian` (
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
  KEY `FK_RELATIONSHIP_15` (`ID_DOSEN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data untuk tabel `unsur_penelitian`
--

INSERT INTO `unsur_penelitian` (`ID_UNSUR_PENELITIAN`, `ID_SUBUNPENELITIAN`, `ID_DOSEN`, `KEGIATAN_PENELITIAN`, `TEMPAT_PENELITIAN`, `TGL_PENELITIAN`, `BUKTI_PENELITIAN`, `NILAI_PEER_REVIEW`, `NILAI_PENELITIAN`, `TGL_SUBMIT`, `PENGAJUAN_KE`) VALUES
(1, 1, 1, 'Analisis variabel - variabel yang mempengaruhi Kinerja Usaha Industri Kecil Pengolahan makanan di kabupaten banyumas', 'Banyumas', 'Januari 2003', 'Jeba Vol.5 No.1 Maret 2003 ISSN: 1411-1950', '1.907', '2.0', '2015-04-01 03:35:36', 'III B'),
(2, 1, 1, 'Pengaruh rasio keuangan terhadap harga saham perusahaan manufaktur yang go public di bursa efek indonesia', 'Bursa Efek Indonesia', 'September 2009', 'Perfomance, Vol.10 No.1, September 2009,ISSN: 1829', '9.520', '10.0', '2015-04-01 04:18:18', 'III B'),
(3, 1, 2, 'Faktor-faktor yang Mempengaruhi Partisipasi Masyarakat terhadap Pembangunan di Kab Banyumas', 'Kab Banyumas', '-', 'Eko - Regional Vol 4 No 2 September 2009 ISSN:1907', '5.2', '6', '2015-04-06 01:37:16', 'IV B'),
(4, 1, 2, 'Kontribusi Besar Pendapatan Wanita Pemulung Terhadap Pendapatan Keluarga ( Studi Kasus pada Wanita Pemulung di TPA Gunung Tugel Kab Banyumas )', 'Kab Banyumas', '-', 'Eko-Regional Vol.6 No.1 Maret 2011 ISSN:1907- 6827', '5.2', '6', '2015-04-06 01:41:09', 'IV B'),
(11, 1, 3, 'Enhancing Competitiveness Of Micro Small and Medium Enterprises (SMEs) Based on Creative Economy in Baturaden Tourist Attraction ', 'Purwokerto', '', 'Wulfenia Journal Klangenfurt, Austria Vol 22, No 4', '', '25', '2015-04-20 07:50:03', 'IV D'),
(14, 1, 2, 'Faktor - Faktor yang Mempengaruhi Impor Indonesia, 2000.1-2008.1', '-', '-', 'Eko-Regional Vol.6 No.1 Maret 2011 ISSN:1907- 6827', '3.4', '4', '2015-06-24 01:53:40', 'IV B'),
(15, 1, 2, 'Dampak Pelaksanaan Program Pengembangan Kecamatan (PPK) dalam Mengentaskan Kemiskinan di Kab.Banyumas (Studi Kasus di Kec Kedungbanteng)', 'Kec Kedungbanteng, Kab Banyumas', '-', 'SOLUSI Vol 8 No 4 Oktober 2009 ISSN:1412-5331', '5.4', '6', '2015-06-24 01:55:58', 'IV B'),
(16, 1, 2, 'Pengembangan Model Pemberdayaan Masyarakat Miskin Dalam Mengentaskan Kemiskinan di Kab Banyumas ( Studi Kasus di Kab Banyumas (Studi Kasus Pada PNPM Mandiri Perkotaan)', 'Kab. Banyumas', '-', 'Prosiding dan Sertifikat ISBN:978-979-9204-51-6', '5.4', '6', '2015-06-24 02:10:53', 'IV B'),
(17, 1, 2, 'Strategi Pengembangan dan Pengelolaan Dana Bergulir Keberlanjutan pada Program Pemberdayaan Masyarakat Menuju Masyarakat Madani', '-', '-', 'Prosiding, Makalah dan Sertifikat ISBN : 978-979-9', '9.7', '10', '2015-06-25 02:13:40', 'IV B'),
(18, 1, 2, 'Evaluasi Penerapan Prinsip Koperasi Berdasarkan UU No.25 Tahun 1992 (Studi Kasus pada Koperasi-Koperasi Wanita di Kab. Banyumas)', 'Kab Banyumas', '-', 'SPREAD Jurnal Bisnis dan Keuangan Vol.2 No.1, Apri', '3.6', '4', '2015-06-25 02:16:39', 'IV B'),
(19, 1, 2, 'Evaluasi Dampak Pelaksanaan Program Nasional Pemberdayaan Masyarakat Mandiri Perkotaan dalam Pengentasan Kemiskinan Perkotaan di Kab Banyumas(Studi Kasus di Kec Sokaraja)', 'Kec. Sokaraja, Kab. Banyumas', '-', 'SOLUSI Vol 11 No 3, Juli 2012 ISSN : 1412-5331', '3.6', '4', '2015-06-25 02:20:01', 'IV B'),
(20, 1, 2, 'Partisipasi Masyarakat dalam Program Pengentasan Kemiskinan di Kec Baturraden Kab Banyumas', 'Kec. Baturaden, Kab. Banyumas', '-', 'Prosiding dan Sertifikat Seminar Nasional, ISBN:97', '5.4', '6', '2015-06-25 02:22:33', 'IV B'),
(21, 1, 2, 'Need Assessment Of Productive Activities to Promote Improved Productivity and Income of the Poor', '-', '-', 'ICORE 2013 ISBN : 978-983-44592-5-3', '5.2', '6', '2015-06-25 02:24:52', 'IV B'),
(22, 1, 2, 'Model Peningkatan Pendapatan Melalui Pengembangan Kemampuan Kewirausahaan Berasis Masyarakat Miskin dalam Rangka Pengentasan Kemiskinan di Kab Banyumas', 'Kab. Banyumas', '-', 'Prosiding Seminar NAsional ISBN:978-979-9204-88-2', '1.5', '2', '2015-06-25 02:29:49', 'IV B'),
(23, 1, 2, 'PNPM Mandiri of Banyumas Regency : The Analysis of Problems and Institutional', 'Kab. Banyumas', '-', 'Prosiding Internasional ISBN:978-602-17102-2-7', '2.44', '3', '2015-06-25 02:31:54', 'IV B'),
(24, 1, 2, 'Evaluation of The Savings and Loans Instituion PNPM Mandiri Perdesaan Order to Alleviate Poverty', '-', '-', 'Prosiding ISBN:978-979-9204-99-8', '8.45', '10', '2015-06-25 02:33:36', 'IV B'),
(25, 1, 2, 'Model Penguatan Kelemagaan KSM PNPM Mandiri Perdesaan dalam Menigkatkan Pemberdayaan Perempuan Menuju Kemandirian Ekonomi', '-', '-', 'Prosiding Seminar Nasional', '5.4', '6', '2015-06-25 02:37:18', 'IV B'),
(26, 1, 2, 'Terdapat Ketimpangan Distribusi Pendapatan pada Keluarga Miskin (Studi Kasus di Kec Kedungbanteng Kab Banyumas)', 'Kec Kedungbanteng, Kab Banyumas', '-', 'Eko-Regional Vol.9 No.2, September 2014, ISSN : 19', '5.4', '6', '2015-06-25 02:39:55', 'IV B'),
(27, 1, 6, 'Pengaruh Inflasi, Pertumbuhan Ekonomi dan investasi Terhadap Pengangguran di Indonesia ( Periode 2001 - 2010 )', 'Purwokerto', 'Maret 2012', 'EKO-Regional ISSN : 1907 - 6827 Vol 7 No 1', '', '6.0', '2015-07-30 04:08:13', 'III D'),
(28, 1, 6, 'Kajian Mengenai Potensi dan Prospek Pengembangan Agrowisata di Kecamatan Karangreja Kabupaten Purbalingga', 'Purbalingga', 'Maret 2011', 'JEBA, ISSN : 1411 - 1950 Vol 13 No 1', '', '2.0', '2015-07-30 04:09:39', 'III D'),
(29, 1, 6, 'Partisipasi Masyarakat Dalam Program Pengentasan Kemiskinan di Kec Baturaden Kab Banyumas', 'Baturaden', '', 'Seminar Nasional ISBN:978-979-9204-79-0', '', '1.3', '2015-07-30 04:12:29', 'III D'),
(30, 1, 6, 'Model Peningkatan Pendapatan Melalui Pengembangan Kemampuan Kewirausahaan Berbasis Masyarakat Miskin Dalam Rangka Pengentasan Kemiskinan di Kabupaten Banyumas', 'Banyumas', '', 'Prosiding Seminar Nasional, ISBN:979-979-9204-88-2', '', '2.0', '2015-07-30 04:13:51', 'III D'),
(31, 1, 3, 'Identification of Poor People Based on Behavior, Life Quality, And Social Capital At Coastal And Mountainous Areas', '', 'Mei 2014', 'ICORE 2013', '', '9', '2015-08-07 01:46:53', 'PROFESOR'),
(32, 1, 3, 'Inisiatif Diri sebagai Kotak Hitam Penghubung Perilaku Berwirausaha Mahasiswa', '', '', 'Prosiding Seminar Nasional', '', '4', '2015-08-07 01:48:16', 'PROFESOR'),
(33, 1, 3, 'Consumers Consideration in Choosing Cosmetic Products', 'Purwokerto', '', 'Jurnal Akuntansi & Manajemen, No 1 Vol 25, April 2014 ISSN : 0853-1259', '', '10', '2015-08-07 01:50:30', 'PROFESOR'),
(34, 1, 3, 'Studi Faktor yang Mempengaruhi Loyalitas Konsumen Air Minum Isi Ulang Dalam Kemasan', '', '', '	Jurnal Bisnis dan Kewirausahaan ISSN : 2302 - 4119', '', '10', '2015-08-07 02:16:41', 'PROFESOR'),
(36, 1, 3, 'Brand Equity of Jenderal Soedirman University', '', '', 'ICORE 2015 ISBN : 978-983-44592-8-4', '', '15', '2015-08-07 02:48:21', 'PROFESOR'),
(37, 1, 3, 'Faktor - Faktor Yang Berpengaruh Terhadap Keputusan Pembelian Secara Online di Jejaring Sosial Facebook', '', '', '	Jurnal Bisnis dan Manajemen, Vol2, No.2, September 2014 ISSN : 2338 - 9729', '', '10', '2015-08-07 02:52:38', 'PROFESOR'),
(38, 1, 3, 'Customer Loyalty of Islamic Banks', 'Yogyakarta', '13 - 14 Agustus 2015', 'Proceedings International Conference on Entrepreneurship, Business and Social Science, ISBN : 978 - 602-14716-2-3', '', '15', '2015-08-21 09:17:01', 'PROFESOR'),
(39, 1, 3, 'Enhancing Competitiveness Of Micro Small and Medium Enterprises (SMEs) Based on Creative Economy in Baturaden Tourist Attraction ', 'Purwokerto', '', 'Wulfenia, Journal Klagenfurt, Austria Vol 22 No 4 ISSN:1561-882X', '', '9', '2015-08-24 03:26:28', 'PROFESOR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unsur_pengabdian`
--

CREATE TABLE IF NOT EXISTS `unsur_pengabdian` (
  `ID_SUBUNPENGAB` int(11) NOT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `ID_UNSUR_PENGABDIAN` int(11) NOT NULL AUTO_INCREMENT,
  `KEGIATAN_PENGABDIAN` text,
  `BENTUK_PENGABDIAN` varchar(35) DEFAULT NULL,
  `TEMPAT_PENGABDIAN` varchar(50) DEFAULT NULL,
  `TGL_PENGABDIAN` date DEFAULT NULL,
  `BUKTI_PENGABDIAN` varchar(50) DEFAULT NULL,
  `NILAI_PENGABDIAN` varchar(10) DEFAULT NULL,
  `TGL_SUBMIT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PENGAJUAN_KE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_UNSUR_PENGABDIAN`),
  KEY `FK_RELATIONSHIP_16` (`ID_SUBUNPENGAB`),
  KEY `FK_RELATIONSHIP_17` (`ID_DOSEN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `unsur_pengabdian`
--

INSERT INTO `unsur_pengabdian` (`ID_SUBUNPENGAB`, `ID_DOSEN`, `ID_UNSUR_PENGABDIAN`, `KEGIATAN_PENGABDIAN`, `BENTUK_PENGABDIAN`, `TEMPAT_PENGABDIAN`, `TGL_PENGABDIAN`, `BUKTI_PENGABDIAN`, `NILAI_PENGABDIAN`, `TGL_SUBMIT`, `PENGAJUAN_KE`) VALUES
(3, 1, 1, 'Teknik menangkap peluang bisnis', 'Penyuluhan', 'Mahasiswa dan Mitra Pengusaha', '2009-11-26', '6836/H23.4.FE/PP/2009', '1.0', '2015-04-01 04:28:37', 'III B'),
(3, 2, 2, 'Peluang Kredit', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2015-04-01', 'Surtug no 5224/H23.4.FE/PM.01/2011', '1', '2015-04-06 01:44:48', 'IV B'),
(3, 3, 4, 'Difusi Inovasi untuk Meningkatkan Daya Saing dan Memperluas Jaringan Pemasaran Produk', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2014-11-06', 'Surtug No 4060/UN23.03/PM.01/2014', '1', '2015-04-15 09:24:12', 'IV D'),
(3, 2, 5, 'Prinsip-Prinsip Perkreditan pada Koperasi Simpan Pinjam', 'Penyuluhan', 'Koperasi Mandiri Desa Kebocoran', '2012-01-15', 'Surtug No 144a/UN23.4.FE/PM.01/2012', '1', '2015-06-25 03:08:30', 'IV B'),
(3, 2, 6, 'Menyiapkan Pola Manajemen Koperasi Baru', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2013-06-12', 'Surtug No 3217/UN23.10/PM/2013', '1', '2015-06-25 03:10:53', 'IV B'),
(3, 2, 7, 'Tata Pembukuan Koperasi', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2013-07-18', 'Surtug No 3920a/UN23.10/PM/2013', '1', '2015-06-25 03:12:51', 'IV B'),
(3, 2, 8, 'Peluang Bisnis', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2013-12-20', 'Surtug No 5132/UN23.03/PM.01/2013', '1', '2015-06-25 03:14:13', 'IV B'),
(3, 2, 9, 'Pembagian Tugas ( Job Description ) dalam Organisasi', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2014-08-21', 'Surtug No 6168/UN23.10/PM/2014', '1', '2015-06-25 03:15:59', 'IV B'),
(3, 2, 10, 'Manajemen Keuangan bagi UMKM', 'Penyuluhan', 'Desa Kebocoran Kec Kedungbanteng', '2014-08-22', 'Surtug No 6187/UN23.10/PM/2014', '1', '2015-06-25 03:17:07', 'IV B'),
(3, 6, 11, 'Pengembangan Rosella di Tinjau dari Segi Ekonomi di Kecamatan Sumpiuh Kabupaten Banyumas', 'Penyuluhan', 'Kecamatan Sumpiuh', '2008-09-05', 'SK no 118/H23.4.FE/PM/2008', '1', '2015-07-29 01:44:31', 'III B'),
(3, 6, 12, 'Susu Kecambah Menembus Pasar Kota', 'Penyuluhan', 'Desa Kedondong Kecamatan Sokaraja', '2013-09-03', 'Surtug No 4764/UN23.10/PM/2013', '1', '2015-07-29 01:46:48', 'III B'),
(3, 6, 13, 'Susu Kecambah Merambah Pasar Kota', 'Penyuluhan', 'Desa Kedondong Kecamatan Sokaraja', '2013-09-03', 'Surtug No 4764/UN23.10/PM/2013', '1', '2015-07-29 08:01:04', 'III D'),
(3, 3, 14, 'Outlook Ekonomi Indonesia Tahun 2015 : Tinjauan Makroekonomi Prospek dan Tantangan', 'Penyuluhan', 'Purwokerto', '2014-09-20', 'No 2476/UN23.03/PM.01/2014', '1', '2015-08-21 08:51:12', 'PROFESOR'),
(3, 3, 15, 'Merancang Desain Pekerjaan', 'Penyuluhan', 'Desa Samudra Kulon, Kec Gumelar, Kab Banyumas', '2015-08-15', 'No 4517/UN23.03/PM.01/2015', '1', '2015-08-21 08:58:00', 'PROFESOR'),
(3, 3, 16, 'Difusi Inovasi untuk Meningkatkan Daya Saing dan Memperluas jaringan Pemasaran Produk', 'Penyuluhan', 'Desa Kebocoran, Kecamatan Kedungbanteng', '2014-11-06', 'Surtug No 4060/UN23.03/PM.01/2014', '1', '2015-08-24 03:42:09', 'PROFESOR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unsur_penunjang`
--

CREATE TABLE IF NOT EXISTS `unsur_penunjang` (
  `ID_UNSUR_PENUNJANG` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SUBUNPENUNJANG` int(11) DEFAULT NULL,
  `ID_DOSEN` int(11) DEFAULT NULL,
  `KEGIATAN_PENUNJANG` text,
  `TEMPAT_PENUNJANG` varchar(50) DEFAULT NULL,
  `TGL_KEG_PENUNJANG` varchar(30) DEFAULT NULL,
  `KEDUDUKAN_SEBAGAI` varchar(30) DEFAULT NULL,
  `BUKTI_PENUNJANG` varchar(50) DEFAULT NULL,
  `NILAI_PENUNJANG` varchar(10) DEFAULT NULL,
  `TGL_SUBMIT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PENGAJUAN_KE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_UNSUR_PENUNJANG`),
  KEY `FK_RELATIONSHIP_18` (`ID_SUBUNPENUNJANG`),
  KEY `FK_RELATIONSHIP_19` (`ID_DOSEN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `unsur_penunjang`
--

INSERT INTO `unsur_penunjang` (`ID_UNSUR_PENUNJANG`, `ID_SUBUNPENUNJANG`, `ID_DOSEN`, `KEGIATAN_PENUNJANG`, `TEMPAT_PENUNJANG`, `TGL_KEG_PENUNJANG`, `KEDUDUKAN_SEBAGAI`, `BUKTI_PENUNJANG`, `NILAI_PENUNJANG`, `TGL_SUBMIT`, `PENGAJUAN_KE`) VALUES
(1, 6, 1, 'Pelatihan E-Learning Bagi Dosen', 'Fakultas Ekonomi dan Bisnis Unsoed', '11 - 13 Desember 2008', 'Peserta', 'Sertifikat', '1.0', '2015-04-01 07:03:59', 'III B'),
(2, 1, 2, 'Panitia Seminar Hasil Penelitian Dosen FE Unsoed tahun 2011', 'FE Unsoed', '21 Septemer 2011', 'Koordinator', 'SK No 258/H23.4.FE/DL.07.00/2013', '1', '2015-04-06 01:47:30', 'IV B'),
(5, 1, 3, 'Panitia Kuliah Umum Sosialisasi Masyarakat Ekonomi Asia', 'FEB Unsoed', '10 Desember 2014', 'Penanggung jawab / ketua', 'No Kept 554/UN23.03/DL.07/2014', '3', '2015-04-15 09:25:51', 'IV D'),
(6, 6, 3, 'Seminar Nasional Ekonomi 2014 " Kesiapan Daerah Menghadapi Masyarakat Ekonomi Asean 2015"', 'Lhokseumawe', '18 - 20 November 2014', 'Peserta', 'Sertifikat', '2', '2015-04-15 09:27:08', 'IV D'),
(7, 1, 2, 'Panitia Dies Natalis FE ke 50 dan Konggres AFEBI ', 'FE Unsoed', '04 Oktober 2013', 'Anggota', 'SK No 209/UN23.03/DL.07.00/2013', '1', '2015-06-25 03:49:43', 'IV B'),
(8, 6, 2, 'Workshop Kurikulum Jurusan IESP', 'FEB Unsoed', '13 Nopember 2014', 'Pembicara', 'Sertifikat, Surtug dan Makalah', '1', '2015-06-25 03:53:54', 'IV B'),
(9, 6, 2, 'Sosialisasi dan Training of Trainer Penerapan Kurikulum Berbasis Kompetensi dan Kerangka Kualifikasi Nasional Indonesia ( KKNI )', 'Unsoed', '10-14 September 2012', 'Peserta', 'Sertifikat', '1', '2015-06-25 04:00:45', 'IV B'),
(10, 2, 3, 'Tim Komite Pendidikan Profesi Akuntansi Program Pendidikan Profesi Akuntansi ( PPAk ) FEB UNSOED', 'FEB Unsoed', '11 Agustus 2015', 'Ketua Tim Komite', 'No Kept 0447/UN23.03/DT.04/2015', '1', '2015-08-21 03:15:55', 'PROFESOR'),
(11, 6, 3, 'Sidang Pleno ke VIII AFEBI', 'Karawang', '04 Juni 2015', 'Peserta', 'Sertifikat', '2', '2015-08-21 09:24:27', 'PROFESOR'),
(12, 6, 3, 'Kebijakan Sektor Publik Era Pemerintahan Baru di Guangzhou, RRT', 'Guangzhou', '08 November 2014', 'Peserta', 'Piagam Penghargaan', '2', '2015-08-21 09:27:08', 'PROFESOR'),
(13, 6, 3, 'Seminar Nasional Ekonomi 2014', 'Fakultas Ekonomi Univ Malikussaleh, Lhokseumawe', '18 - 20 November 2014', 'Peserta', 'Sertifikat', '1', '2015-08-24 03:36:11', 'PROFESOR'),
(14, 6, 3, 'Panitia Kuliah Umum Sosialisasi Masyarakat Ekonomi Asia', 'FEB Unsoed', '10 Desember 2014', 'Penanggung Jawab', 'SK Dekan No Kept 554/UN23.03/DL.07/2014', '1', '2015-08-24 03:39:09', 'PROFESOR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `NIP_USER` varchar(30) DEFAULT NULL,
  `NAMA_USER` varchar(80) DEFAULT NULL,
  `USERNAME` varchar(25) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `LEVEL` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`ID_USER`, `NIP_USER`, `NAMA_USER`, `USERNAME`, `PASSWORD`, `LEVEL`) VALUES
(1, '1234', 'admin', 'admin', 'admin', '1'),
(2, '196003301985031006', 'Pramono Hari Adi', '196003301985031006', '19600330', '2'),
(3, '196201111988032001', 'Dijan', '196201111988032001', '19620111', '2');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_cuti`
--
ALTER TABLE `tbl_cuti`
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`);

--
-- Ketidakleluasaan untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`ID_GOLONGAN`) REFERENCES `tbl_golongan` (`ID_GOLONGAN`),
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_JABATAN`) REFERENCES `tbl_jabatan` (`ID_JABATAN`),
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`ID_STATUS_KEP`) REFERENCES `tbl_status_kepegawaian` (`ID_STATUS_KEP`);

--
-- Ketidakleluasaan untuk tabel `tbl_gaji`
--
ALTER TABLE `tbl_gaji`
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`);

--
-- Ketidakleluasaan untuk tabel `tbl_keluarga`
--
ALTER TABLE `tbl_keluarga`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_STATUS`) REFERENCES `tbl_status_pernikahan` (`ID_STATUS`),
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`);

--
-- Ketidakleluasaan untuk tabel `tbl_mutasi`
--
ALTER TABLE `tbl_mutasi`
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`);

--
-- Ketidakleluasaan untuk tabel `unsur_pel_pendidikan`
--
ALTER TABLE `unsur_pel_pendidikan`
  ADD CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`ID_SUBPELPEND`) REFERENCES `subun_pelpend` (`ID_SUBPELPEND`),
  ADD CONSTRAINT `FK_RELATIONSHIP_13` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`);

--
-- Ketidakleluasaan untuk tabel `unsur_pendidikan`
--
ALTER TABLE `unsur_pendidikan`
  ADD CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`ID_SUBUNPEND`) REFERENCES `subun_pend` (`ID_SUBUNPEND`),
  ADD CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`);

--
-- Ketidakleluasaan untuk tabel `unsur_penelitian`
--
ALTER TABLE `unsur_penelitian`
  ADD CONSTRAINT `FK_RELATIONSHIP_14` FOREIGN KEY (`ID_SUBUNPENELITIAN`) REFERENCES `subun_penelitian` (`ID_SUBUNPENELITIAN`),
  ADD CONSTRAINT `FK_RELATIONSHIP_15` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`);

--
-- Ketidakleluasaan untuk tabel `unsur_pengabdian`
--
ALTER TABLE `unsur_pengabdian`
  ADD CONSTRAINT `FK_RELATIONSHIP_16` FOREIGN KEY (`ID_SUBUNPENGAB`) REFERENCES `subun_pengabdian` (`ID_SUBUNPENGAB`),
  ADD CONSTRAINT `FK_RELATIONSHIP_17` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`);

--
-- Ketidakleluasaan untuk tabel `unsur_penunjang`
--
ALTER TABLE `unsur_penunjang`
  ADD CONSTRAINT `FK_RELATIONSHIP_18` FOREIGN KEY (`ID_SUBUNPENUNJANG`) REFERENCES `subun_penunjang` (`ID_SUBUNPENUNJANG`),
  ADD CONSTRAINT `FK_RELATIONSHIP_19` FOREIGN KEY (`ID_DOSEN`) REFERENCES `tbl_dosen` (`ID_DOSEN`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
