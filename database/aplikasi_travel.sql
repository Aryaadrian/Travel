-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2022 at 06:34 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `user_admin` varchar(20) NOT NULL,
  `pass_admin` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `foto`, `user_admin`, `pass_admin`, `level`, `nama`) VALUES
(4, '_20160421_074522.JPG', 'admin', 'admin', '1', 'Admin Lagon Travel'),
(6, '0d5e159404933b4185268a4d13c574ee.jpg', 'operator', 'operator', '2', 'Pandu'),
(7, 'agung1.png', 'admin123', 'admin123', '1', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bukti`
--

CREATE TABLE `tbl_bukti` (
  `id_bukti` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bukti`
--

INSERT INTO `tbl_bukti` (`id_bukti`, `id_pesan`, `file`) VALUES
(26, 40, 'badminton 1.jpg'),
(27, 44, 'pancing3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daerah`
--

CREATE TABLE `tbl_daerah` (
  `id_provinsi` int(11) NOT NULL,
  `id_daerah` int(11) NOT NULL,
  `nama_daerah` varchar(35) NOT NULL,
  `biaya` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_daerah`
--

INSERT INTO `tbl_daerah` (`id_provinsi`, `id_daerah`, `nama_daerah`, `biaya`) VALUES
(1, 1, 'Blitar', 0),
(2, 2, 'Semarang', 0),
(3, 3, 'Jakarta', 0),
(5, 4, 'Sleman', 0),
(1, 5, 'Surabaya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel`
--

CREATE TABLE `tbl_hotel` (
  `id_hotel` int(11) NOT NULL,
  `hotel` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `ket_hotel` text NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hotel`
--

INSERT INTO `tbl_hotel` (`id_hotel`, `hotel`, `harga`, `ket_hotel`, `foto`) VALUES
(1, 'Hotel  Sri Lestari Lombok Utara', 450000, '<p style=\"text-align: justify;\"><strong>Dirancang</strong> <em>untuk</em> wisata <img src=\"plugins/tinymce/plugins/emoticons/img/smiley-innocent.gif\" alt=\"\" />plesir dan bisnis, Campago Resort Hotel terletak strategis di Lombok Utara; salah satu daerah lokal terkenal. Hotel ini tidak terlalu jauh dari pusat kota, hanya dari sini dan umumnya hanya membutuhkan waktu 90 menit untuk mencapai bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style=\"text-align: justify;\">Fasilitas dan pelayanan yang ditawarkan Campago Resort Hotel menjaminkan penginapan menyenangkan bagi para tamu. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati wi-fi di tempat-tempat umum, ruang merokok , concierge, layanan laundry, tur.</p>\r\n<p style=\"text-align: justify;\">Campago Resort Hotel memiliki 22 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti televisi, meja tulis, internet (wireless), AC, kulkas. Hotel ini menyediakan sejumlah fasilitas rekreasi seperti kolam (anak), taman, lapangan tenis, klub anak. Fasilitas super dan lokasi yang cemerlang menjadikan Campago Resort Hotel tempat yang sempurna untuk menikmati penginapan Anda selama di Lombok Utara.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Minimum umur tamu adalah: 1 tahun</li>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut</li>\r\n</ul>\r\n<table style=\"margin-left: auto; margin-right: auto;\">\r\n<tbody>\r\n<tr>\r\n<td>Bayi dibawah 1 tahun</td>\r\n<td>Tidak diizinkan untuk menginap</td>\r\n</tr>\r\n<tr>\r\n<td>Bayi 1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat,layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, ruang keluarga, ruang merokok, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>klub anak, kolam (anak), lapangan tenis, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'tugu.png'),
(2, 'Hotel Mansion Lombok Utara', 460000, '<p style=\"text-align: justify;\">Dirancang untuk wisata plesir dan bisnis, Campago Resort Hotel terletak strategis di Lombok Utara; salah satu daerah lokal terkenal. Hotel ini tidak terlalu jauh dari pusat kota, hanya dari sini dan umumnya hanya membutuhkan waktu 90 menit untuk mencapai bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style=\"text-align: justify;\">Fasilitas dan pelayanan yang ditawarkan Campago Resort Hotel menjaminkan penginapan menyenangkan bagi para tamu. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati wi-fi di tempat-tempat umum, ruang merokok , concierge, layanan laundry, tur.</p>\r\n<p style=\"text-align: justify;\">Campago Resort Hotel memiliki 22 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti televisi, meja tulis, internet (wireless), AC, kulkas. Hotel ini menyediakan sejumlah fasilitas rekreasi seperti kolam (anak), taman, lapangan tenis, klub anak. Fasilitas super dan lokasi yang cemerlang menjadikan Campago Resort Hotel tempat yang sempurna untuk menikmati penginapan Anda selama di Lombok Utara.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Minimum umur tamu adalah: 1 tahun</li>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut</li>\r\n</ul>\r\n<table style=\"margin-left: auto; margin-right: auto;\">\r\n<tbody>\r\n<tr>\r\n<td>Bayi dibawah 1 tahun</td>\r\n<td>Tidak diizinkan untuk menginap</td>\r\n</tr>\r\n<tr>\r\n<td>Bayi 1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat,layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, ruang keluarga, ruang merokok, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>klub anak, kolam (anak), lapangan tenis, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'grand.png'),
(3, 'Hotel Saptra Mandala', 300000, '<p style=\"text-align: justify;\">Dirancang untuk wisata plesir dan bisnis, Campago Resort Hotel terletak strategis di Lombok Utara; salah satu daerah lokal terkenal. Hotel ini tidak terlalu jauh dari pusat kota, hanya dari sini dan umumnya hanya membutuhkan waktu 90 menit untuk mencapai bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style=\"text-align: justify;\">Fasilitas dan pelayanan yang ditawarkan Campago Resort Hotel menjaminkan penginapan menyenangkan bagi para tamu. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati wi-fi di tempat-tempat umum, ruang merokok , concierge, layanan laundry, tur.</p>\r\n<p style=\"text-align: justify;\">Campago Resort Hotel memiliki 22 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti televisi, meja tulis, internet (wireless), AC, kulkas. Hotel ini menyediakan sejumlah fasilitas rekreasi seperti kolam (anak), taman, lapangan tenis, klub anak. Fasilitas super dan lokasi yang cemerlang menjadikan Campago Resort Hotel tempat yang sempurna untuk menikmati penginapan Anda selama di Lombok Utara.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Minimum umur tamu adalah: 1 tahun</li>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut</li>\r\n</ul>\r\n<table style=\"margin-left: auto; margin-right: auto;\">\r\n<tbody>\r\n<tr>\r\n<td>Bayi dibawah 1 tahun</td>\r\n<td>Tidak diizinkan untuk menginap</td>\r\n</tr>\r\n<tr>\r\n<td>Bayi 1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat,layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, ruang keluarga, ruang merokok, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>klub anak, kolam (anak), lapangan tenis, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'saptra.png'),
(5, 'Hotel Patria Garden', 290000, '<p style=\"text-align: justify;\">Jika apa yang Anda cari adalah hotel yang terletak strategis di Bukittinggi, carilah Hotel Benteng. Hanya 30. Km dari sini, hotel bintang 1 ini dapat secara mudah diakses dari bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style=\"text-align: justify;\">Hotel Benteng juga menawari banyak fasilitas untuk memperkaya penginapan Anda di Bukittinggi. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati tur, wi-fi di tempat-tempat umum, layanan antar jemput, kotak penyimpanan aman, transfer bandara/hotel.</p>\r\n<p style=\"text-align: justify;\">Para tamu dapat memilih dari 37 kamar yang semuanya dilengkapi dengan atmosfir damai dan harmonis. Lagipula, beberapa persembahan rekreasi dari hotel ini akan menjamin Anda jauh dari kebosanan selama penginapan Anda. Apapun rencana kunjungan Anda, Hotel Benteng adalah pilihan bagus untuk penginapan di Bukittinggi.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 10 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style=\"margin-left: auto; margin-right: auto;\">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-10 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>bar, fasilitas rapat, kotak penyimpanan aman, layanan antar jemput, layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, sewa sepeda, transfer bandara/hotel, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'garden.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paket`
--

CREATE TABLE `tbl_paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `harga_paket` int(11) NOT NULL,
  `ket_paket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_paket`
--

INSERT INTO `tbl_paket` (`id_paket`, `nama_paket`, `harga_paket`, `ket_paket`) VALUES
(7, 'Paket BAGPACKER', 800000, '<p><span style=\"color: #ffff00;\">Wisata Gili Trawangan 3 Hari + Makan 3 x Sehari .</span></p>'),
(8, 'Paket KELUARGA', 900000, '<p><span style=\"color: #ffff00;\">Wisata Pantai Sire 3 Hari + Makan 3 x Sehari + Kuota 4 Orang</span></p>'),
(9, 'Paket VVIP', 950000, '<p><span style=\"color: #ffff00;\">Bukit Malimbu + Pantai Selok Belanak + Makan 3 x Sehari + Camilan</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `id_daerah` int(11) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_tour` date NOT NULL,
  `status` char(2) NOT NULL DEFAULT 'S1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`id_pesan`, `id_user`, `id_paket`, `id_hotel`, `id_daerah`, `tgl_pesan`, `tgl_tour`, `status`) VALUES
(40, 28, 7, 1, 3, '2022-08-13', '2022-08-14', 'S2'),
(41, 28, 8, 3, 2, '2022-08-13', '2022-08-15', 'S1'),
(42, 28, 8, 3, 2, '2022-08-13', '2022-08-15', 'S1'),
(43, 29, 9, 3, 3, '2022-08-13', '2022-08-10', 'S1'),
(44, 29, 9, 3, 3, '2022-08-13', '2022-08-14', 'S2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Jawa Timur'),
(2, 'Jawa tengah'),
(3, 'Jawa Barat'),
(4, 'Jakarta'),
(5, 'Yogyagarta'),
(6, 'Banten');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_rek` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jekel` varchar(1) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `foto`, `nama_user`, `email_user`, `no_hp`, `no_rek`, `nama_rek`, `username`, `password`, `tgl_lahir`, `jekel`, `alamat`) VALUES
(13, '12765752_956409104429484_1143384278_o.jpg', 'satria s', 'satryasetya@gmail.com', '0857903849', '234234', 'satria', 'satria', '12345', '2000-12-04', 'L', 'jalan trowulan bendogerit blitar bfd'),
(14, '12787165_956409067762821_230243529_o.jpg', 'huda', 'huda@gmail.com', '0987234234', '1232555555', 'huda', 'aduh', '12345', '2012-02-01', 'P', '    sananwetan'),
(22, 'IMG_20160426_021428.jpg', 'riris', 'rindris@gmail.com', '0857901234', '77412548', 'riris', 'riris', 'riris', '2017-01-05', 'P', 'Sentul Kota bLitar'),
(23, 'IMG_20160426_035246.jpg', 'rani', 'rani@gmail.com', '085790365889', '8899987', 'rani', 'rani', 'rani', '2016-12-14', 'P', 'jalan wates blitar'),
(26, '0d5e159404933b4185268a4d13c574ee.jpg', 'Elsa', 'elsa@gmail.com', '08579012345', '7741254852', 'Elsa', 'elsa', 'elsa', '2000-12-08', 'P', 'Gunung Frozen'),
(27, 'ungu.jpg', 'ungu', 'lelela@gmail.com', '087654321', '03-01644944', 'lele', 'lellebv', 'fortravel', '2016-12-30', 'P', 'qwertyuiop'),
(28, 'badminton 5.jpg', 'fajar', 'fajar@gmail.com', '0812343434', '1234567', 'fajar', 'fajar', 'fajar', '1998-08-16', 'L', 'Jakarta'),
(29, 'maguro3.jpg', 'subur', 'subur@gmail.com', '08123445555', '1234577', 'subur', 'subur', 'subur', '1998-07-07', 'L', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `tempat`
--

CREATE TABLE `tempat` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `konten` varchar(500) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempat`
--

INSERT INTO `tempat` (`id`, `nama`, `konten`, `gambar`) VALUES
(9, 'Pantai Selong Belanak', '<p>Sajian alam terbaik dengan pasir putih bersih dan laut kebiruan dari obyek wisata Lombok Utara ini akan memanjakan traveler. Wisata pantai menjadi daya tarik Kota Lombok Utara, refresh tubuh lelah dan jiwa penat dengan explore destinasi satu ini. Liburan memang menyenangkan ketika anda melawat ke obyek wisata terbaik di Lombok Utara satu ini bersama orang tercinta. Menghabiskan hari libur di Pantai Selong Belanak, anda bisa explore keindahan alamnya dan melakukan</p>', 'wisata1.jpg'),
(10, 'Pantai Sire', '<p style=\"text-align: justify;\">Menghabiskan hari libur bersama orang tersayang dengan melawat ke pantai menjadi aktivitas terbaik untuk refresh kepenatan. Suasana damai khas pantai dengan udara segar akan memanjakan pelancong yang datang melawat ke obyek wisata Lombok Utara satu ini. Anda bisa datang melawat ke tempat piknik murah di Lombok Utara satu ini kapan saja karena dibuka setiap hari. Ketika anda datang ke tempat wisata alam Lombok Utara satu ini, banyak aktivitas seru yang bisa diexplo', 'wisata2.jpg'),
(11, 'Bukit Malimbu', '<p style=\"text-align: justify;\">Holiday di Lombok Utara, anda tidak akan kesulitan mencari tempat wisata terbaik untuk menemani perjalanan liburan. Karena banyak tempat liburan terbaru dan hits dengan alam menakjubkan di Lombok Utara yang rekomended untuk dilawatiExplore keindahan Bukit Malimbu dengan sajian alam terbaiknya untuk merelaksasi jiwa dan pikiran penuh kepenatan. Indonesia menyimpan pesona wisata terbaik, tidak hanya Bali saja namun juga masih banyak yang lainnya seperti Lombok. Menj', 'wisata3.jpg'),
(12, 'Gili Trawangan', '<p style=\"text-align: justify;\">Salah satu best place in Lombok yang sayang untuk anda lewatkan yaitu Gili Trawangan Island dengan pesona alam menakjubkan. Menjadi salah satu destinasi favorit di Indonesia, Pulau Gili Trawangan selalu ramai akan pelancong yang ingin liburan berkualitas. Sajian alam terbaik akan memanjakan siapa saja yang menghabiskan hari liburnya di obyek wisata Lombok Utara satu ini. Pesona alam bawah laut dari Gili Trawangan cocok untuk anda yang inginkan aktivitas snorkeling', 'wisata4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
  ADD PRIMARY KEY (`id_bukti`),
  ADD KEY `id_pesan` (`id_pesan`);

--
-- Indexes for table `tbl_daerah`
--
ALTER TABLE `tbl_daerah`
  ADD PRIMARY KEY (`id_daerah`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_paket` (`id_paket`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_paket_2` (`id_paket`),
  ADD KEY `id_paket_3` (`id_paket`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- Indexes for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tempat`
--
ALTER TABLE `tempat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
  MODIFY `id_bukti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tempat`
--
ALTER TABLE `tempat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
  ADD CONSTRAINT `tbl_bukti_ibfk_1` FOREIGN KEY (`id_pesan`) REFERENCES `tbl_pesan` (`id_pesan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_daerah`
--
ALTER TABLE `tbl_daerah`
  ADD CONSTRAINT `tbl_daerah_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `tbl_provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD CONSTRAINT `tbl_pesan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesan_ibfk_2` FOREIGN KEY (`id_paket`) REFERENCES `tbl_paket` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesan_ibfk_3` FOREIGN KEY (`id_hotel`) REFERENCES `tbl_hotel` (`id_hotel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesan_ibfk_4` FOREIGN KEY (`id_daerah`) REFERENCES `tbl_daerah` (`id_daerah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
