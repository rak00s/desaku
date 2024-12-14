-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 07:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desaku`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `title`, `deskripsi`, `gambar`, `create_by`, `create_date`) VALUES
(2, 'Festival Kuliner Desa', 'Festival kuliner menampilkan berbagai masakan khas Bali dan nusantara. Mengundang warga desa dan wisatawan untuk mencicipi kuliner lokal.', '667080b319ed6.jpg', 14, '2024-06-17 01:49:59'),
(3, 'Gotong Royong Bersih Desa', 'Kegiatan rutin gotong royong untuk menjaga kebersihan dan keindahan lingkungan desa. Mengajak seluruh warga untuk berpartisipasi.', '6670813f70a3a.jpg', 14, '2024-06-17 01:50:21'),
(4, 'Seminar Kesehatan dan Gizi', 'Seminar tentang pentingnya kesehatan dan gizi seimbang. Dihadiri oleh ahli gizi dari Puskesmas Singaraja. Terbuka untuk seluruh warga desa', '667081e71d5e6.jpg', 14, '2024-06-17 01:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `gambar`, `title`, `deskripsi`, `create_date`) VALUES
(1, '66707fbd7f369.jpg', 'Desa Singaraja', 'Garis pantai ikonik Singaraja dengan air laut yang jernih berwarna biru.', '2024-06-17 01:16:20'),
(2, '66707ffd4eaa2.jpg', 'Temukan Surga Tersembunyi Di Jantung Bali Utara', 'Bersiaplah untuk terpesona oleh keramahan penduduk lokal yang hangat dan pengalaman autentik yang akan membuat Anda kembali lagi dan lagi', '2024-06-17 01:16:48'),
(3, '6670801e2cd83.jpg', 'Keajaiban Alam Dan Budaya Bertemu', 'Rasakan keajaiban alam yang memukau dan warisan budaya yang hidup di Desa Singaraja', '2024-06-17 01:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `gambar`, `title`, `deskripsi`, `create_by`, `create_date`) VALUES
(2, '6670829646483.jpg', 'Penutupan Jalan Raya Utama', 'Waktu: 08.00 - 14.00 WITA \r\nLokasi: Jalan Raya Utama Desa Singaraja, sepanjang Sungai Ayung alan Raya Utama akan ditutup sementara untuk kendaraan bermotor dan pejalan kaki guna memfasilitasi kegiatan pembersihan Sungai Ayung. Kegiatan ini bertujuan untuk menghilangkan sampah dan endapan yang dapat menyebabkan banjir serta menjaga kebersihan lingkungan. Diharapkan warga dapat menggunakan jalur alternatif selama kegiatan berlangsung.', 14, '2024-06-17 01:58:35'),
(3, '667082b7c0025.jpg', 'Kegiatan Fogging Pencegahan DBD', 'Lokasi: Seluruh wilayah Desa Singaraja\r\nWaktu: 07.00 - 10.00 WITA\r\nUntuk mencegah penyebaran penyakit Demam Berdarah Dengue (DBD), akan dilakukan kegiatan fogging di seluruh wilayah Desa Singaraja. Kami mengimbau warga untuk tetap berada di dalam rumah dan menutup jendela serta pintu selama proses fogging berlangsung. Pastikan juga untuk menutup makanan dan minuman agar tidak terkontaminasi', 14, '2024-06-17 01:58:57'),
(4, '667082d46eb0e.jpg', 'Kegiatan Pembersihan Sungai', 'Lokasi: Jalan Raya Utama Desa Singaraja, sepanjang Sungai Ayung\r\nWaktu: 08.00 - 14.00 WITA\r\nKegiatan pembersihan Sungai Ayung. Kegiatan ini bertujuan untuk menghilangkan sampah dan endapan yang dapat menyebabkan banjir serta menjaga kebersihan lingkungan. Diharapkan warga dapat menggunakan jalur alternatif selama kegiatan berlangsung.', 14, '2024-06-17 01:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `berita_komentar`
--

CREATE TABLE `berita_komentar` (
  `id_berita_komentar` int(11) NOT NULL,
  `id_berita` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita_komentar`
--

INSERT INTO `berita_komentar` (`id_berita_komentar`, `id_berita`, `id_user`, `komentar`, `create_date`) VALUES
(3, 3, 22, 'Rusa nya imut bangettss', '2024-06-17 09:39:32'),
(4, 4, 22, 'Kupu kupu nya cantik ya..', '2024-06-17 09:54:22'),
(5, 4, 22, 'Kupu kupu punya telinga ga ya', '2024-06-17 09:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `icon`, `nama`, `create_by`, `create_date`) VALUES
(3, '666bc8918a170.png', 'Free WiFi', 14, '2024-06-14 11:34:52'),
(4, '666bc87e7c3cb.png', 'Free Smoke', 14, '2024-06-14 11:35:10'),
(5, '666bc8d33b719.png', 'Parking Area', 14, '2024-06-14 11:36:35'),
(6, '666bc8e8a6d91.png', '24 Jam CS', 14, '2024-06-14 11:36:56'),
(9, NULL, 'Camping', 14, '2024-06-18 01:41:49'),
(10, NULL, 'Spot Foto', 14, '2024-06-18 01:41:57'),
(11, NULL, 'Toilet', 14, '2024-06-18 01:42:07'),
(12, NULL, 'Kuliner', 14, '2024-06-18 01:42:12'),
(13, NULL, 'Pemandian Air Panas', 14, '2024-06-18 01:42:32'),
(14, NULL, 'Ruang Ganti', 14, '2024-06-18 01:42:39'),
(15, NULL, 'Restoran', 14, '2024-06-18 01:42:46'),
(16, NULL, 'Tempat Oleh-Oleh', 14, '2024-06-18 01:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `favorit`
--

CREATE TABLE `favorit` (
  `id_favorit` int(11) NOT NULL,
  `id_wisata` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorit`
--

INSERT INTO `favorit` (`id_favorit`, `id_wisata`) VALUES
(1, 4),
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama`, `create_by`, `create_date`) VALUES
(7, 'Kepala Desa', 14, '2024-06-13 23:53:56'),
(8, 'Sekretaris', 14, '2024-06-13 23:54:04'),
(9, 'Bendahara', 14, '2024-06-13 23:54:11'),
(10, 'Wakil Kepala Desa', 14, '2024-06-18 01:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `id_pengurus` int(11) NOT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'Y',
  `create_by` int(11) DEFAULT NULL,
  `create_date` int(11) DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`id_pengurus`, `id_jabatan`, `gambar`, `nama`, `status`, `create_by`, `create_date`) VALUES
(4, 7, '6670865655dc3.jpg', 'Made Urip', 'Y', 14, 2147483647),
(5, 8, '667086680a73a.jpg', 'Bintang Puspayoga', 'Y', 14, 2147483647),
(6, 9, '6670867bb4612.jpg', 'Isvara Dhana Janitra', 'Y', 14, 2147483647),
(7, 10, '667086b2bf552.jpg', 'Arga Wicaksana', 'Y', 14, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `logo`, `icon`) VALUES
(1, '66542111c37da.png', 'favicon.ico');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'Y',
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `nama`, `harga`, `status`, `create_by`, `create_date`) VALUES
(6, 'Reguler Danau Tamblingan', 10000, 'Y', 14, '2024-06-18 01:43:55'),
(7, 'Weekday Puncak', 10000, 'Y', 14, '2024-06-18 01:44:23'),
(8, 'Weekend Puncak', 25000, 'Y', 14, '2024-06-18 01:45:35'),
(9, 'Gratis', 0, 'Y', 14, '2024-06-18 01:45:49'),
(10, 'Anak-Anak Pemandian', 20000, 'Y', 14, '2024-06-18 01:46:06'),
(11, 'Dewasa Pemandian', 30000, 'Y', 14, '2024-06-18 01:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_wisata` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0 = Menunggu pembayaran, 1 = menunggu konfirmasi, 2 = sukses, 3 = gagal',
  `total` double DEFAULT NULL,
  `bukti_bayar` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `payment_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_wisata`, `status`, `total`, `bukti_bayar`, `create_date`, `payment_date`) VALUES
(17, 25, 5, 2, 100000, NULL, '2024-06-17 19:50:06', NULL),
(18, 25, 5, 2, 100000, NULL, '2024-06-17 19:50:37', NULL),
(19, 25, 5, 2, 100000, NULL, '2024-06-17 19:51:34', NULL),
(20, 25, 5, 1, 100000, NULL, '2024-06-17 19:52:44', NULL),
(21, 25, 5, 0, 100000, NULL, '2024-06-17 19:53:48', NULL),
(22, 25, 6, 2, 100000, '66703a4585a0d.jpg', '2024-06-17 19:55:04', '2024-06-17 20:29:41'),
(23, 25, 6, 0, 200000, NULL, '2024-06-17 22:09:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `id_tiket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(199) DEFAULT NULL,
  `notelp` varchar(200) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `role` tinyint(4) NOT NULL COMMENT '1 = admin, 2 = wisatator, 3 = user',
  `password` varchar(200) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `blocked` enum('Y','N') NOT NULL DEFAULT 'N',
  `block_reason` text DEFAULT NULL,
  `block_date` datetime DEFAULT NULL,
  `block_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `notelp`, `nama`, `foto`, `role`, `password`, `alamat`, `blocked`, `block_reason`, `block_date`, `block_by`, `created_by`, `create_date`) VALUES
(14, 'admin@gmail.com', '81234567891', 'Admin', '666b1139c042b.jpg', 1, 'd4e0f6a3a42d6add30a3b37f2c495d35de3bf31b70a05e37144bb6b11ad2475a', '', 'N', NULL, NULL, NULL, NULL, '2024-06-17 08:22:51'),
(22, 'user@gmail.com', '81234567892', 'Member 1', '666b133154ee4.jpg', 3, 'a662bc59d10a7ebeaf324fa44fca4ea7d57f8174704d8546a3227f429b6e4954', NULL, 'N', '', '2024-06-14 14:27:11', 14, 14, '2024-06-17 11:20:09'),
(23, 'wisata@gmail.com', '81234567893', 'Wisatator 1', '666b135cdebe8.jpg', 2, '5baa0acfb97c53ce4b1f8eb3071a4ec8eadd7d59312cf932aa891a2f2a429054', NULL, 'N', NULL, NULL, NULL, 14, '2024-06-16 17:15:13'),
(25, 'jjeje1303@gmail.com', '81333811057', 'Sidatata Al Jennar', '', 3, '4c4ab2aec8461dc097c01a8f9a13126a1e78f88525b7be9e5fa4ddb3c164f4ec', 'Jl. Danau danau', 'N', NULL, NULL, NULL, NULL, '2024-06-17 11:42:17'),
(26, 'sejolilabil@gmail.com', '81333811057', 'User cek email', '', 3, '5975f2f309826a8d15fb40e5befb39949297fcb376b874010e2ed25207eda34e', '', 'N', NULL, NULL, NULL, NULL, '2024-06-17 11:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'Y',
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama`, `gambar`, `alamat`, `deskripsi`, `status`, `create_by`, `create_date`) VALUES
(3, 'Danau Tamblingan', '6670835ab72d0.png', 'Mundu, Banjar, Buleleng, Bali', '<p>Danau ini merupakan salah satu danau terindah di Bali. Di dekat danau ini terdapat sebuah pura yang bisa kamu kunjungi. Kamu bisa berkeliling di sekitar danau dengan berjalan kaki atau menyewa sepeda. Pemandangan dan udara di sini sangat sejuk cocok untuk meditasi.</p>', 'N', 14, '2024-06-14 12:40:32'),
(4, 'Puncak Wanagiri', '667085a41cbcf.png', 'Jl. Raya Wanagiri, Pancasari, Sukasada, Kabupaten Buleleng, Bali', '<p style=\"text-align:justify;\"><span style=\"color:#03121A;\">Kamu yang ingin menikmati pemandangan alam yang indah bisa langsung datang ke sini. Di puncak ini kamu bisa melihat pemandangan Kota Singaraja dari ketinggian. Selain itu, ada banyak <i>spot</i> foto yang <i>instagramable</i> di sini. Udara yang sejuk di sini juga bisa membuat kamu menjadi lebih rileks.</span></p>', 'Y', 14, '2024-06-14 13:26:29'),
(5, 'Pantai Lovina', '667085c6652cc.png', 'Desa singaraja, Buleleng, Bali', '<p><span style=\"color:#03121A;\">Sedang <i>honeymoon</i> di Bali? Sempatkanlah untuk mengunjungi tempat romantis di Singaraja yaitu Pantai Lovina. Pantai ini mempunyai pemandangan yang indah dan pemandangan <i>sunset</i>nya sangat indah. Selain itu, kamu juga bisa melihat langsung lumba-lumba di pantai ini. Untuk melihat lumba-lumba pastikan kamu datang di pagi hari.</span></p>', 'Y', 14, '2024-06-14 13:29:05'),
(6, 'Pemandian Air Panas Banjar', '667086132c2b6.png', 'Jalan Banjar, Banjar, Buleleng, Bali', '<p><span style=\"color:#03121A;\">Tempat wisata di Singaraja yang cukup terkenal salah satunya adalah Pemandian Air Panas Banjar. Pemandian ini mempunyai mata air panas alami yang mengandung belerang. Kamu bisa berendam di pemandian ini untuk menyembuhkan berbagai penyakit kulit. Pemandangan di sekitar pemandiannya juga sangat indah. Jadi kamu bisa berendam sambil menikmati pemandangan alamnya.</span></p>', 'Y', 23, '2024-06-14 14:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `wisata_fasilitas`
--

CREATE TABLE `wisata_fasilitas` (
  `id_wisata` int(11) DEFAULT NULL,
  `id_fasilitas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wisata_fasilitas`
--

INSERT INTO `wisata_fasilitas` (`id_wisata`, `id_fasilitas`) VALUES
(3, 5),
(3, 9),
(4, 5),
(4, 10),
(4, 12),
(5, 3),
(5, 4),
(5, 6),
(6, 5),
(6, 11),
(6, 13),
(6, 14),
(6, 15),
(6, 16);

-- --------------------------------------------------------

--
-- Table structure for table `wisata_tiket`
--

CREATE TABLE `wisata_tiket` (
  `id_wisata` int(11) DEFAULT NULL,
  `id_tiket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wisata_tiket`
--

INSERT INTO `wisata_tiket` (`id_wisata`, `id_tiket`) VALUES
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(6, 10),
(6, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`),
  ADD KEY `create_by` (`create_by`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `create_by` (`create_by`);

--
-- Indexes for table `berita_komentar`
--
ALTER TABLE `berita_komentar`
  ADD PRIMARY KEY (`id_berita_komentar`),
  ADD KEY `id_berita` (`id_berita`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`),
  ADD KEY `create_by` (`create_by`);

--
-- Indexes for table `favorit`
--
ALTER TABLE `favorit`
  ADD PRIMARY KEY (`id_favorit`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`),
  ADD KEY `create_by` (`create_by`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id_pengurus`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `create_by` (`create_by`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `create_by` (`create_by`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`),
  ADD KEY `id_tiket` (`id_tiket`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `block_by` (`block_by`),
  ADD KEY `user_ibfk_2` (`created_by`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `create_by` (`create_by`);

--
-- Indexes for table `wisata_fasilitas`
--
ALTER TABLE `wisata_fasilitas`
  ADD KEY `id_fasilitas` (`id_fasilitas`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indexes for table `wisata_tiket`
--
ALTER TABLE `wisata_tiket`
  ADD KEY `id_tiket` (`id_tiket`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita_komentar`
--
ALTER TABLE `berita_komentar`
  MODIFY `id_berita_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `favorit`
--
ALTER TABLE `favorit`
  MODIFY `id_favorit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id_pengurus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `berita_komentar`
--
ALTER TABLE `berita_komentar`
  ADD CONSTRAINT `berita_komentar_ibfk_1` FOREIGN KEY (`id_berita`) REFERENCES `berita` (`id_berita`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `berita_komentar_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD CONSTRAINT `fasilitas_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `favorit`
--
ALTER TABLE `favorit`
  ADD CONSTRAINT `favorit_ibfk_1` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD CONSTRAINT `jabatan_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD CONSTRAINT `pengurus_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pengurus_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id_tiket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_detail_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`block_by`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `wisata`
--
ALTER TABLE `wisata`
  ADD CONSTRAINT `wisata_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `wisata_fasilitas`
--
ALTER TABLE `wisata_fasilitas`
  ADD CONSTRAINT `wisata_fasilitas_ibfk_1` FOREIGN KEY (`id_fasilitas`) REFERENCES `fasilitas` (`id_fasilitas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wisata_fasilitas_ibfk_2` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wisata_tiket`
--
ALTER TABLE `wisata_tiket`
  ADD CONSTRAINT `wisata_tiket_ibfk_1` FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id_tiket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wisata_tiket_ibfk_2` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
