-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 01:29 AM
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
-- Table structure for table `kemiripan`
--

DROP TABLE IF EXISTS `kemiripan`;
CREATE TABLE IF NOT EXISTS `kemiripan` (
  `id` int(11) NOT NULL,
  `gejala_id_1` int(11) NOT NULL,
  `gejala_id_2` int(11) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kemiripan`
--

INSERT INTO `kemiripan` (`id`, `gejala_id_1`, `gejala_id_2`, `bobot`) VALUES
(1, 121, 121, 1),
(2, 121, 136, 0.5),
(3, 121, 125, 0.75),
(4, 125, 125, 1),
(5, 125, 136, 0.25),
(6, 125, 121, 0.75),
(7, 136, 136, 1),
(8, 136, 125, 0.25),
(9, 136, 121, 0.5),
(10, 122, 122, 1),
(11, 122, 149, 0.5),
(12, 149, 149, 1),
(13, 149, 122, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

DROP TABLE IF EXISTS `pemeriksaan`;
CREATE TABLE IF NOT EXISTS `pemeriksaan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `penyakit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan_detail`
--

DROP TABLE IF EXISTS `pemeriksaan_detail`;
CREATE TABLE IF NOT EXISTS `pemeriksaan_detail` (
  `id` int(11) NOT NULL,
  `pemeriksaan_id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan`
--

DROP TABLE IF EXISTS `pengetahuan`;
CREATE TABLE IF NOT EXISTS `pengetahuan` (
  `id` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(11) NOT NULL,
  `kd_pasien` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `level` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `jk` varchar(2) NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `kd_pasien`, `email`, `password`, `level`, `nama`, `hp`, `alamat`, `jk`, `umur`) VALUES
(1, NULL, 'admin', '0cc175b9c0f1b6a831c399e269772661', 1, 'Aministrator', '08132945559', 'Jl. kenair no. 343', 'L', 0),
(14, 'P345', 'admin@gmail.com', '0cc175b9c0f1b6a831c399e269772661', 0, 'dfd', '', 'Jl. keniari no.  ', 'L', 3),
(16, 'P0015', 'budi@google.com', '0cc175b9c0f1b6a831c399e269772661', 0, 'fjdfk', '', 'jsafjlaja f', 'L', 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `penyakit`, `pengobatan`, `keterangan`, `gambar`) VALUES
(1, 'PY1', 'Faringitis', 'Mengonsumsi obat pereda nyeri, banyak mengonsumsi air putih, banyak istirahat, Menggunakan pelembab udara di dalam ruangan, Mengonsumsi permen pelega tenggorokan', 'peradangan Tenggorokan', 'Lambang-USTJ.png'),
(2, 'PY2', 'Laringitis', 'Hindari paparan debu, Jangan merokok, banyak mengkonsumsi air putih, Atur tingkat kelembapan udara di rumah.', 'Peradangan Pita Suara', 'wa-menikah-sepupu.png'),
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
(58, 'PY15', 'Emfisema', 'Dianjurkan untuk pemberian oksigen dan obat-obatan jika terjadi komplikasi segera lakukan operasi.', 'Kerusakan kantung-kantung Udara Pada Paru', ''),
(59, '3848', 'PEnyakit', '3fjasdfjaj fafdsaf', 'Keterangan', 'ustj.png');

-- --------------------------------------------------------

--
-- Table structure for table `referensi`
--

DROP TABLE IF EXISTS `referensi`;
CREATE TABLE IF NOT EXISTS `referensi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` float NOT NULL,
  `jk` char(2) NOT NULL,
  `penyakit_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referensi`
--

INSERT INTO `referensi` (`id`, `nama`, `umur`, `jk`, `penyakit_id`) VALUES
(4, 'Budi', 34, 'L', 1),
(5, 'Herman', 30, 'L', 2);

-- --------------------------------------------------------

--
-- Table structure for table `referensi_detail`
--

DROP TABLE IF EXISTS `referensi_detail`;
CREATE TABLE IF NOT EXISTS `referensi_detail` (
  `id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `referensi_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referensi_detail`
--

INSERT INTO `referensi_detail` (`id`, `gejala_id`, `referensi_id`) VALUES
(9, 133, 5),
(10, 134, 5),
(11, 122, 5),
(12, 150, 5),
(13, 124, 5),
(18, 122, 4),
(19, 141, 4),
(20, 123, 4);

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
(1, 0.0666667),
(53, 0.0666667),
(54, 0.0666667),
(55, 0.0666667),
(56, 0.0666667),
(57, 0.0666667),
(58, 0.0666667),
(2, 0.0666667),
(4, 0.0666667),
(5, 0.0666667),
(6, 0.0666667),
(44, 0.0666667),
(50, 0.0666667),
(51, 0.0666667),
(52, 0.0666667);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kemiripan`
--
ALTER TABLE `kemiripan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_id_1` (`gejala_id_1`),
  ADD KEY `gejala_id_2` (`gejala_id_2`);

--
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penyakit_id` (`penyakit_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pemeriksaan_detail`
--
ALTER TABLE `pemeriksaan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pemeriksaan` (`pemeriksaan_id`),
  ADD KEY `pemeriksaan_id` (`pemeriksaan_id`),
  ADD KEY `gejala_id` (`gejala_id`);

--
-- Indexes for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_gejala` (`id_gejala`),
  ADD KEY `id_penyakit` (`id_penyakit`);

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
-- Indexes for table `referensi`
--
ALTER TABLE `referensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penyakit_id` (`penyakit_id`);

--
-- Indexes for table `referensi_detail`
--
ALTER TABLE `referensi_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referensi_id` (`referensi_id`),
  ADD KEY `gejala_id` (`gejala_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `kemiripan`
--
ALTER TABLE `kemiripan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `pemeriksaan_detail`
--
ALTER TABLE `pemeriksaan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=371;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `referensi`
--
ALTER TABLE `referensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `referensi_detail`
--
ALTER TABLE `referensi_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `pengguna` (`id`),
  ADD CONSTRAINT `pemeriksaan_ibfk_2` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`);

--
-- Constraints for table `pemeriksaan_detail`
--
ALTER TABLE `pemeriksaan_detail`
  ADD CONSTRAINT `fk_pemeriksaan` FOREIGN KEY (`pemeriksaan_id`) REFERENCES `pemeriksaan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemeriksaan_detail_ibfk_1` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`);

--
-- Constraints for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD CONSTRAINT `pengetahuan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`),
  ADD CONSTRAINT `pengetahuan_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id`);

--
-- Constraints for table `referensi`
--
ALTER TABLE `referensi`
  ADD CONSTRAINT `referensi_ibfk_1` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`);

--
-- Constraints for table `referensi_detail`
--
ALTER TABLE `referensi_detail`
  ADD CONSTRAINT `referensi_detail_ibfk_1` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
