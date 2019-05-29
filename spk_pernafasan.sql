-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 03:15 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spk_pernafasan`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

DROP TABLE IF EXISTS `gejala`;
CREATE TABLE IF NOT EXISTS `gejala` (
  `id` int(11) NOT NULL,
  `gejala` varchar(255) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `gejala`, `kode`, `bobot`) VALUES
(121, 'Batuk', 'GJ1', 1),
(122, 'Demam', 'GJ2', 1),
(123, 'Sakit Kepala', 'GJ3', 1),
(124, 'Sesak', 'GJ4', 1),
(125, 'Batuk Berlendir ', 'GJ5', 1),
(126, 'Diare ', 'GJ6', 1),
(127, 'Gelisah', 'GJ7', 1),
(128, 'Kesadaran Menurun', 'GJ8', 0.75),
(129, 'Keringat Dingin', 'GJ9', 0.75),
(130, 'Susah Tidur', 'GJ10', 0.75),
(131, 'Perut Kembung', 'GJ11', 0.75),
(132, 'Lemas', 'GJ12', 0.75),
(133, 'Hidung Berlendir Warna Hijau', 'GJ13', 0.75),
(134, 'Terlihat Murung', 'GJ14', 0.75),
(135, 'Berkeringat', 'GJ15', 0.75),
(136, 'Batuk Berdarah', 'GJ16', 0.75),
(137, 'Pilek', 'GJ17', 0.5),
(138, 'Suara Serak ', 'GJ18', 0.5),
(139, 'Penurunan Berat Badan', 'GJ19', 0.5),
(140, 'Nafsu Makan Berkurang', 'GJ20', 0.5),
(141, 'Kelelahan', 'GJ21', 0.5),
(142, 'Paru-paru Membesar', 'GJ22', 0.5),
(143, 'Susah Menelan', 'GJ23', 0.5),
(144, 'Suhu Tubuh Naik', 'GJ24', 0.5),
(145, 'Terdapat Benjolan di Tenggorokan', 'GJ25', 0.5),
(146, 'Hidung Mampet', 'GJ26', 0.5),
(147, 'Radang Tenggorokan', 'GJ27', 0.5),
(148, 'Bersin', 'GJ28', 0.25),
(149, 'Menggigil', 'GJ29', 0.25),
(150, 'Telinga Dingin', 'GJ30', 0.25),
(151, 'Pegal-Pegal', 'GJ31', 0.25),
(152, 'Jari Kuku Tangan Kebiruan', 'GJ32', 0.25),
(153, 'Nafas Pendek', 'GJ33', 0.25);

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

DROP TABLE IF EXISTS `konsultasi`;
CREATE TABLE IF NOT EXISTS `konsultasi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `pesan` text NOT NULL,
  `pemeriksaan_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id`, `user_id`, `waktu`, `pesan`, `pemeriksaan_id`) VALUES
(2, 11, '2019-05-29 12:57:09', 'saya bingung dok. kenapa kok sakit sekali di mata saya ', 36),
(3, 11, '2019-05-29 12:59:34', 'saya tidak tau do. kenap tiba tiba kepala saya bengkak dan bernanah ', 36),
(4, 11, '2019-05-29 12:59:49', 'saya tidak tau do. kenap tiba tiba kepala saya bengkak dan bernanah ', 36),
(6, 1, '2019-05-29 01:05:19', 'hmm.. sebaiknya anda melakukan ini dan itu ', 0),
(7, 1, '2019-05-29 01:06:47', 'helo helo ', 0),
(8, 1, '2019-05-29 01:08:23', 'helo halo ', 0),
(9, 1, '2019-05-29 01:10:47', 'coba lagi ahh', 0),
(10, 1, '2019-05-29 01:11:48', 'mbalala', 36),
(11, 1, '2019-05-29 01:12:09', 'mbalala', 36),
(12, 9, '2019-05-29 01:14:13', 'saya harap anda tidak sungkan sungkan ', 37),
(13, 9, '2019-05-29 01:29:11', 'oke. teirma kasih karena telah berbelanja di toko kami ', 37),
(14, 1, '2019-05-29 01:29:43', 'kenapa anda bisa seperti itu ? ', 37),
(15, 9, '2019-05-29 01:31:08', 'saya sudah pesan ke mereka supaya jangan dikucek matanya. ', 37),
(16, 1, '2019-05-29 01:31:36', 'saya kira anda tidak akan dipermasalahkan oleh mereka. baiklah kalo begit ', 37);

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

DROP TABLE IF EXISTS `pemeriksaan`;
CREATE TABLE IF NOT EXISTS `pemeriksaan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`id`, `tanggal`, `user_id`) VALUES
(36, '2019-05-29', 11),
(37, '2019-05-29', 9);

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan_detail`
--

DROP TABLE IF EXISTS `pemeriksaan_detail`;
CREATE TABLE IF NOT EXISTS `pemeriksaan_detail` (
  `id` int(11) NOT NULL,
  `id_pemeriksaan` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemeriksaan_detail`
--

INSERT INTO `pemeriksaan_detail` (`id`, `id_pemeriksaan`, `id_gejala`) VALUES
(158, 36, 22),
(159, 36, 33),
(160, 36, 67),
(161, 36, 77),
(162, 37, 52),
(163, 37, 55),
(164, 37, 56);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan`
--

DROP TABLE IF EXISTS `pengetahuan`;
CREATE TABLE IF NOT EXISTS `pengetahuan` (
  `id` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengetahuan`
--

INSERT INTO `pengetahuan` (`id`, `id_penyakit`, `id_gejala`) VALUES
(342, 2, 84),
(343, 3, 84),
(344, 4, 84),
(345, 53, 121),
(346, 2, 121),
(347, 3, 121),
(348, 4, 121),
(349, 6, 121),
(350, 44, 121),
(351, 51, 121),
(352, 52, 121),
(353, 1, 122),
(354, 53, 122),
(355, 54, 122),
(356, 55, 122),
(357, 56, 122),
(358, 57, 122),
(359, 2, 122),
(360, 3, 122),
(361, 6, 122),
(362, 44, 122),
(363, 52, 122);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `level` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `jk` varchar(2) NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `level`, `nama`, `hp`, `alamat`, `jk`, `umur`) VALUES
(1, 'admin', '0cc175b9c0f1b6a831c399e269772661', 1, 'Aministrator', '08132945559', 'Jl. kenair no. 343', '', 0),
(7, 'budi', '0cc175b9c0f1b6a831c399e269772661', 0, 'Firmansyah', '0813280800', 'jl. kenari no. 34', 'L', 20),
(8, 'bejo', '0cc175b9c0f1b6a831c399e269772661', 0, 'Bejo sandix', '0813243595', 'Jl. keramat jadixxx', 'P', 40),
(9, 'heri', '0cc175b9c0f1b6a831c399e269772661', 0, 'Heru hendriyadi', '45838538r3985', 'Jl. undru no. 4', 'P', 40),
(10, 'heru', '0cc175b9c0f1b6a831c399e269772661', 0, 'Heru hendriyadi', '083848583', 'Jl. kenari no. 345', 'L', 3),
(11, 'eko', '0cc175b9c0f1b6a831c399e269772661', 0, 'Eko kurniawan', '03895935893', 'Jl. kenari no. 335', 'L', 25);

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

DROP TABLE IF EXISTS `penyakit`;
CREATE TABLE IF NOT EXISTS `penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `penyakit` varchar(255) NOT NULL,
  `pengobatan` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `penyakit`, `pengobatan`, `keterangan`, `gambar`) VALUES
(1, 'PY1', 'Faringitis', 'Mengonsumsi obat pereda nyeri, banyak mengonsumsi air putih, banyak istirahat, Menggunakan pelembab udara di dalam ruangan, Mengonsumsi permen pelega tenggorokan', 'peradangan Tenggorokan', ''),
(2, 'PY2', 'Laringitis', 'Hindari paparan debu, Jangan merokok, banyak mengkonsumsi air putih, Atur tingkat kelembapan udara di rumah.', 'Peradangan Pita Suara', ''),
(3, 'PY3', 'Tonsilitis', 'Istirahat yang cukup, Minum air putih yang banyak, Makan buah nanas dan minum teh jahe, Minum campuran madu dan lemon, Berkumur dengan air garam', 'Radang Amandel', ''),
(4, 'PY4', 'Sinusitis', 'Meminum obat antibiotik seperti Amoxilin, Ibuprofen. Istirahat yang cukup dan banyak mengkonsumsi air putih.', 'Penyumbatan Pada Hidung', ''),
(5, 'PY5', 'Bronkitis', 'Istirahat yang cukup, Minum air putih yang banyak, dan minum teh jahe, Minum campuran madu dan lemon, Penguapan.', 'Peradangan Pada Saluran Utama Pernafasan (Bronkus)', ''),
(6, 'PY6', 'Pleuritis', 'meminum obat antibiotik seperti paracetamol dan codeine. Kemudian berbaring menyamping di sisi dada yang sakit mungkin bisa membantu mengurangi rasa sakit.', 'Peradangan Pleura (Paru-Paru)', ''),
(44, 'PY7', 'Pleuritis', 'meminum obat antibiotik seperti paracetamol dan codeine. Kemudian berbaring menyamping di sisi dada yang sakit mungkin bisa membantu mengurangi rasa sakit.', 'Peradangan Pleura (Paru-Paru)', ''),
(50, 'PY7', 'Tuberculosis (TBC)', 'Pemberian imunisasi campak dan pertusis pada masa kanak-kanak untuk membantu menurunkan angka kejadian bronkiektasis serta vaksin influenza', 'Infeksi Saluran Utama Pernafasan', ''),
(51, 'PY8', 'Efusipleura', 'Gunakan antibiotik apabila terinfeksi dan diuretik untuk mengurangi ukuran efusi pleura', 'Penumpukan Cairan Pada Rongga Paru', ''),
(52, 'PY9', 'Pneumonia', 'Banyak beristirahat, Mengonsumsi banyak cairan, Tidak melakukan kegiatan yang berlebihan dan mengkonsumsi Obat pereda nyeri ibuprofen atau paracetamol,Obat batuk  dan Antibiotik.', 'Paru-Paru Basah', ''),
(53, 'PY10', 'Asma', 'Pemberian obat Agonisreseptor beta-adrenergik untuk mengurangi serangan asma', 'Peradangan dan Penyempitan Pada Saluran Pernafasan', ''),
(54, 'PY11', 'Difteria', 'Berikan anthhidphtheria serum selama dua hari, penisilin prokain selama tiga hari, korstikosteroid untuk mencegah timbulnya komplikasi.', 'Infeksi Pada Hidung dan Tenggorokan', ''),
(55, 'PY12', 'Pertusis', 'Pemberian antibiotik dengan dosis 50mg/kgBB/hr. Ampisilin dengan dosis 100mg/kgBB/hr. Kloramfenikol, tetrasiklin, kotrimoksazol dan luminal.', 'Batuk Rejan (infeksi pada paru-paru)', ''),
(56, 'PY13', 'Epiglotitis', 'Melakukan terapi antibiotik. Jika belum bisa maka akan dilakukan penyinaran sinar X pada leher balita untuk membuka jalannya pernafasan pada balita.', 'Pembengkakan Pada Batang Tenggorokan', ''),
(57, 'PY14', 'Commond Cold', 'Perlu dilakukan pemberian cairan/minum lebih banyak untuk pemantauan kondisi emergensi.', 'Flu Ringan', ''),
(58, 'PY15', 'Emfisema', 'Dianjurkan untuk pemberian oksigen dan obat-obatan jika terjadi komplikasi segera lakukan operasi.', 'Kerusakan kantung-kantung Udara Pada Paru', '');

-- --------------------------------------------------------

--
-- Table structure for table `tmp`
--

DROP TABLE IF EXISTS `tmp`;
CREATE TABLE IF NOT EXISTS `tmp` (
  `id_penyakit` int(11) NOT NULL,
  `skor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp`
--

INSERT INTO `tmp` (`id_penyakit`, `skor`) VALUES
(1, 0.000000282178),
(2, 0.000000282178),
(3, 0.000000428366),
(4, 0.000000282178),
(5, 0.000000282178),
(6, 0.000000428366),
(7, 0.000000428366),
(8, 0.000000282178),
(9, 0.000000428366),
(10, 0.000000282178),
(11, 0.000000428366),
(12, 0.000000282178),
(13, 0.000000282178),
(14, 0.000000282178),
(15, 0.000000282178),
(16, 0.000000282178),
(17, 0.000000282178),
(18, 0.000000428366),
(19, 0.000000282178),
(20, 0.000000428366),
(21, 0.000000282178),
(22, 0.000000282178),
(23, 0.000000282178),
(24, 0.000000282178),
(25, 0.000000428366),
(26, 0.000000282178),
(27, 0.000000282178),
(28, 0.000000282178),
(29, 0.000000428366),
(30, 0.000000282178),
(31, 0.000000282178),
(32, 0.000000282178),
(33, 0.000000282178),
(34, 0.000000282178),
(35, 0.000000282178),
(36, 0.000000282178),
(37, 0.000000282178),
(38, 0.000000282178),
(39, 0.000000282178),
(40, 0.000000650291),
(41, 0.000000282178),
(42, 0.000000282178),
(43, 0.000000282178);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemeriksaan_detail`
--
ALTER TABLE `pemeriksaan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pemeriksaan` (`id_pemeriksaan`);

--
-- Indexes for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `pemeriksaan_detail`
--
ALTER TABLE `pemeriksaan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=364;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemeriksaan_detail`
--
ALTER TABLE `pemeriksaan_detail`
  ADD CONSTRAINT `fk_pemeriksaan` FOREIGN KEY (`id_pemeriksaan`) REFERENCES `pemeriksaan` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
