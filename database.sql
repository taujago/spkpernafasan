-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 01:39 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spk_sakitmata`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE IF NOT EXISTS `gejala` (
  `id` int(11) NOT NULL,
  `gejala` varchar(255) NOT NULL,
  `kode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `gejala`, `kode`) VALUES
(1, 'Mata Mengganjal', 'G001'),
(2, 'Kabur Jauh', 'G002'),
(3, 'Kabur Dekat', 'G003'),
(4, 'Penglihatan Kabur/hitam', 'G004'),
(5, 'Mata Lelah', 'G005'),
(6, 'Mata Berair', 'G006'),
(7, 'Mata Perih', 'G007'),
(8, 'Diabetik', 'G008'),
(9, 'Mata Berdarah', 'G009'),
(10, 'Kelopak Mata Bengkak', 'G010'),
(11, 'Mata Merah', 'G011'),
(12, 'Mata Berkabut', 'G012'),
(13, 'Menghalangi Pandangan', 'G013'),
(14, 'Mata Sakit', 'G014'),
(15, 'Mata Gatal', 'G015'),
(16, 'terdapat Virus (debu)', 'G016'),
(17, 'Terdapat Kotoran Mata', 'G017'),
(18, 'Otot Kaku', 'G018'),
(19, 'Benjolan kelopak mata', 'G019'),
(20, 'Lemas', 'G020'),
(21, 'Mual/muntah', 'G021'),
(22, 'Sakit Kepala', 'G022'),
(23, 'Ketajaman Penglihatan Menurun', 'G023'),
(24, 'Nyeri Kepala', 'G024'),
(25, 'Nyeri Tulang Belakang', 'G025'),
(26, 'Benturan di Kepala', 'G026'),
(27, 'Merah didalam Bola Mata', 'G027'),
(28, 'Infeksi', 'G028'),
(29, 'Alergi', 'G029'),
(30, 'Kelopak Mata Sakit', 'G030'),
(31, 'Ada Selaput', 'G031'),
(32, 'Pusing', 'G032'),
(33, 'Sakit Kepala kiri', 'G033'),
(34, 'Peka terhadap cahaya', 'G034'),
(35, 'Gangguan Penglihatan', 'G035'),
(36, 'Menglami iritasi mata', 'G036'),
(37, 'Nyeri pada mata', 'G037'),
(38, 'Pembengkakan mata', 'G038'),
(39, 'Mata Menonjol', 'G039'),
(40, 'Demam Tinggi', 'G040'),
(41, 'Bintik nanah pada kornea', 'G041'),
(42, 'Bola Mata membengkak', 'G042'),
(43, 'Kotoran mata lengket', 'G043'),
(44, 'Retina Lepas atau lunak', 'G044'),
(45, 'Mata Kering', 'G045'),
(46, 'Keturunan', 'G046'),
(47, 'Faktor usia', 'G047'),
(48, 'Tekanan bola mata naik', 'G048'),
(49, 'Air mata berlebihan', 'G049'),
(50, 'Kekurangan Vitamin A', 'G050'),
(51, 'Penyumbatan Pembuluh darah', 'G051'),
(52, 'Penyakit bawaan dari lain', 'G052'),
(53, 'Kelopak mata merah ', 'G053'),
(54, 'Bulu mata rontok', 'G054'),
(55, 'Mata susah terbuka', 'G055'),
(56, 'Mata terasa panas', 'G056'),
(57, 'Nyeri pada kelopak mata', 'G057'),
(58, 'Kornea tampak keruh', 'G058'),
(59, 'Konjungtiva meradang', 'G059'),
(60, 'Tampak kilatan cahaya', 'G060'),
(61, 'Hilang penglihatan sebelah', 'G061'),
(62, 'Konjungtiva merah', 'G062'),
(63, 'Konjungtiva membengkak', 'G063'),
(64, 'Mata nyeri bila ditekan', 'G064'),
(65, 'Koma', 'G065'),
(66, 'Kejang', 'G066'),
(67, 'Pergerakan mata sakit', 'G067'),
(68, 'Nyeri kantung mata', 'G068'),
(69, 'Mata mengeluarkan nanah', 'G069'),
(70, 'Ada sinar pupil tetap kecil', 'G070'),
(71, 'Anemia', 'G071'),
(72, 'Palpebra membengkak', 'G072'),
(73, 'Bayangan Pelangi', 'G073'),
(74, 'Komplikasi hidung,telinga,tenggorokan', 'G074'),
(75, 'Penglihatan Ganda', 'G075'),
(76, 'Mata merah tidak merata', 'G076'),
(77, 'Kelenjar Getah Bening', 'G077'),
(78, 'Obesitas', 'G078'),
(79, 'Hypertensi', 'G079'),
(80, 'Garis lurus tampak miring', 'G080'),
(81, 'Susah berkonsentrasi', 'G081'),
(82, 'Penglihatan bintik hitam', 'G082'),
(83, 'Pergerakan mata tidak sama', 'G083');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

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

CREATE TABLE IF NOT EXISTS `pengetahuan` (
  `id` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengetahuan`
--

INSERT INTO `pengetahuan` (`id`, `id_penyakit`, `id_gejala`) VALUES
(1, 1, 10),
(2, 1, 11),
(3, 1, 37),
(4, 1, 40),
(5, 1, 42),
(6, 1, 48),
(7, 2, 4),
(8, 2, 6),
(9, 2, 7),
(10, 2, 11),
(11, 2, 15),
(12, 2, 23),
(13, 2, 34),
(14, 2, 37),
(15, 3, 4),
(16, 3, 16),
(17, 3, 22),
(18, 3, 32),
(19, 3, 34),
(20, 3, 41),
(21, 3, 55),
(22, 4, 6),
(23, 4, 7),
(24, 4, 10),
(25, 4, 11),
(26, 4, 15),
(27, 4, 29),
(28, 4, 30),
(29, 4, 34),
(30, 4, 37),
(31, 5, 6),
(32, 5, 11),
(33, 5, 13),
(34, 5, 15),
(35, 5, 17),
(36, 5, 34),
(37, 5, 35),
(38, 5, 37),
(39, 5, 41),
(40, 5, 69),
(41, 6, 4),
(42, 6, 6),
(43, 6, 11),
(44, 6, 15),
(45, 6, 16),
(46, 6, 17),
(47, 6, 37),
(48, 6, 56),
(49, 7, 6),
(50, 7, 10),
(51, 7, 11),
(52, 7, 18),
(53, 7, 36),
(54, 7, 37),
(55, 7, 52),
(56, 7, 53),
(57, 7, 57),
(58, 8, 1),
(59, 8, 6),
(60, 8, 11),
(61, 8, 68),
(62, 9, 1),
(63, 9, 4),
(64, 9, 6),
(65, 9, 11),
(66, 9, 34),
(67, 9, 35),
(68, 9, 39),
(69, 9, 45),
(70, 9, 56),
(71, 9, 64),
(72, 9, 67),
(73, 9, 71),
(74, 10, 22),
(75, 10, 36),
(76, 10, 39),
(77, 10, 58),
(78, 10, 59),
(79, 10, 61),
(80, 10, 62),
(81, 10, 63),
(82, 10, 66),
(83, 11, 7),
(84, 11, 10),
(85, 11, 19),
(86, 11, 30),
(87, 11, 36),
(88, 11, 53),
(89, 11, 56),
(90, 11, 57),
(91, 11, 62),
(92, 12, 10),
(93, 12, 11),
(94, 12, 17),
(95, 12, 58),
(96, 12, 59),
(97, 12, 77),
(98, 13, 4),
(99, 13, 60),
(100, 13, 61),
(101, 14, 11),
(102, 14, 12),
(103, 14, 23),
(104, 14, 37),
(105, 14, 59),
(106, 14, 60),
(107, 14, 73),
(108, 14, 75),
(109, 15, 4),
(110, 15, 13),
(111, 15, 23),
(112, 15, 34),
(113, 15, 35),
(114, 15, 37),
(115, 15, 60),
(116, 15, 73),
(117, 15, 75),
(118, 16, 4),
(119, 16, 11),
(120, 16, 13),
(121, 16, 34),
(122, 16, 37),
(123, 16, 53),
(124, 16, 62),
(125, 17, 10),
(126, 17, 11),
(127, 17, 39),
(128, 17, 75),
(129, 18, 6),
(130, 18, 7),
(131, 18, 34),
(132, 18, 44),
(133, 18, 56),
(134, 19, 11),
(135, 19, 34),
(136, 19, 35),
(137, 19, 36),
(138, 19, 37),
(139, 19, 53),
(140, 20, 23),
(141, 20, 34),
(142, 20, 55),
(143, 20, 60),
(144, 20, 61),
(145, 20, 67),
(146, 21, 10),
(147, 21, 17),
(148, 21, 38),
(149, 21, 43),
(150, 21, 62),
(151, 21, 63),
(152, 21, 64),
(153, 21, 72),
(154, 21, 74),
(155, 22, 34),
(156, 22, 35),
(157, 22, 61),
(158, 22, 67),
(159, 22, 76),
(160, 23, 2),
(161, 23, 4),
(162, 23, 22),
(163, 23, 23),
(164, 23, 24),
(165, 24, 23),
(166, 24, 47),
(167, 24, 70),
(168, 25, 34),
(169, 25, 34),
(170, 25, 55),
(171, 26, 13),
(172, 26, 18),
(173, 26, 22),
(174, 26, 23),
(175, 26, 32),
(176, 26, 34),
(177, 26, 75),
(178, 26, 80),
(179, 27, 4),
(180, 27, 14),
(181, 27, 60),
(182, 28, 4),
(183, 28, 6),
(184, 28, 7),
(185, 28, 22),
(186, 28, 24),
(187, 28, 25),
(188, 28, 34),
(189, 28, 45),
(190, 28, 75),
(191, 28, 81),
(192, 29, 11),
(193, 29, 17),
(194, 29, 23),
(195, 29, 34),
(196, 29, 36),
(197, 29, 37),
(198, 29, 49),
(199, 29, 55),
(200, 30, 2),
(201, 30, 4),
(202, 30, 22),
(203, 30, 23),
(204, 30, 35),
(205, 31, 3),
(206, 31, 4),
(207, 31, 22),
(208, 31, 23),
(209, 31, 32),
(210, 31, 46),
(211, 32, 4),
(212, 32, 6),
(213, 32, 11),
(214, 32, 13),
(215, 32, 14),
(216, 32, 34),
(217, 32, 35),
(218, 32, 70),
(219, 33, 1),
(220, 33, 4),
(221, 33, 11),
(222, 33, 15),
(223, 33, 36),
(224, 34, 4),
(225, 34, 9),
(226, 34, 28),
(227, 34, 34),
(228, 34, 36),
(229, 34, 37),
(230, 34, 42),
(231, 34, 75),
(232, 35, 4),
(233, 35, 13),
(234, 35, 23),
(235, 35, 26),
(236, 35, 60),
(237, 35, 75),
(238, 36, 4),
(239, 36, 11),
(240, 36, 21),
(241, 36, 22),
(242, 36, 37),
(243, 37, 74),
(244, 38, 4),
(245, 38, 5),
(246, 38, 11),
(247, 38, 20),
(248, 38, 23),
(249, 38, 32),
(250, 38, 37),
(251, 38, 45),
(252, 38, 50),
(253, 39, 4),
(254, 39, 12),
(255, 39, 34),
(256, 40, 1),
(257, 40, 4),
(258, 40, 6),
(259, 40, 11),
(260, 40, 14),
(261, 40, 17),
(262, 40, 34),
(263, 40, 43),
(264, 40, 55),
(265, 40, 56),
(266, 41, 28),
(267, 41, 37),
(268, 41, 40),
(269, 41, 68),
(270, 42, 4),
(271, 42, 13),
(272, 42, 61),
(273, 42, 80),
(274, 43, 61),
(275, 43, 75),
(276, 43, 83),
(277, 44, 3),
(278, 44, 14),
(279, 44, 56);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

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
(1, 'admin', '3691308f2a4c2f6983f2880d32e29c84', 1, 'Aministrator', '08132945559', 'Jl. kenair no. 343', '', 0),
(7, 'budi', '0cc175b9c0f1b6a831c399e269772661', 0, 'Firmansyah', '0813280800', 'jl. kenari no. 34', 'L', 20),
(8, 'bejo', '0cc175b9c0f1b6a831c399e269772661', 0, 'Bejo sandix', '0813243595', 'Jl. keramat jadixxx', 'P', 40),
(9, 'heri', '0cc175b9c0f1b6a831c399e269772661', 0, 'Heru hendriyadi', '45838538r3985', 'Jl. undru no. 4', 'P', 40),
(10, 'heru', '0cc175b9c0f1b6a831c399e269772661', 0, 'Heru hendriyadi', '083848583', 'Jl. kenari no. 345', 'L', 3),
(11, 'eko', '0cc175b9c0f1b6a831c399e269772661', 0, 'Eko kurniawan', '03895935893', 'Jl. kenari no. 335', 'L', 25);

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `penyakit` varchar(255) NOT NULL,
  `penanganan` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `penyakit`, `penanganan`, `gambar`) VALUES
(1, 'P001', 'Selulitis Orbatalis', '', ''),
(2, 'P002', 'Keratitis Punctata Superfisialis', '', ''),
(3, 'P003', 'Kelainan Refraktif', '', ''),
(4, 'P004', 'Blefaritis', '', ''),
(5, 'P005', 'Ulkus Kornea', '', ''),
(6, 'P006', 'Konjungtivitis(menular)', '', ''),
(7, 'P007', 'Pembengkakan Kelopak Mata', '', ''),
(8, 'P008', 'Herdeolum', '', ''),
(9, 'P009', 'Sindrom Mata Kering', '', ''),
(10, 'P010', 'Melanoma Koroid', '', ''),
(11, 'P011', 'Kalazion', '', ''),
(12, 'P012', 'Trakoma', '', ''),
(13, 'P013', 'Ablasio Retina', '', ''),
(14, 'P014', 'Retinopati Diabetikum', '', ''),
(15, 'P015', 'Katarak', '', ''),
(16, 'P016', 'Uveitis/Radang', '', ''),
(17, 'P017', 'Eksoftalmus', '', ''),
(18, 'P018', 'Episkleritis', '', ''),
(19, 'P019', 'Endoftalmitis', '', ''),
(20, 'P020', 'Optic Neuritis', '', ''),
(21, 'P021', 'Oftalmia Neonatorium', '', ''),
(22, 'P022', 'Retinitis Pigmentosa', '', ''),
(23, 'P023', 'Presbiopi', '', ''),
(24, 'P024', 'Buta Warna', '', ''),
(25, 'P025', 'Nyctalopia', '', ''),
(26, 'P026', 'Astigmatisme', '', ''),
(27, 'P027', 'Mouches Volantes', '', ''),
(28, 'P028', 'Mata Lelah', '', ''),
(29, 'P029', 'Infeksi/Keratitis', '', ''),
(30, 'P030', 'Myopia sedang', '', ''),
(31, 'P031', 'Hypermetropia/Hyperm Sedang', '', ''),
(32, 'P032', 'Iridocyclitis', '', ''),
(33, 'P033', 'Pterygium', '', ''),
(34, 'P034', 'Trauma/Perforatio', '', ''),
(35, 'P035', 'Papil Atropia', '', ''),
(36, 'P036', 'Glaukoma Skunder', '', ''),
(37, 'P037', 'Glaukoma PAOG', '', ''),
(38, 'P038', 'Xeropthalmania', '', ''),
(39, 'P039', 'Keratoconus', '', ''),
(40, 'P040', 'Keratokonjungtivitis Vernalis(KV)', '', ''),
(41, 'P041', 'Dakrosistitis', '', ''),
(42, 'P042', 'Degenerasi Makula', '', ''),
(43, 'P043', 'Strabimus', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tmp`
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=280;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
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
