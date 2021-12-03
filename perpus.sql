-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 10:33 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `kelas`, `alamat`, `no_tlp`) VALUES
(1, 'Riki Subekti', '9B', 'Jl.Semangka No 35', '08345267010'),
(2, 'Aini Rahmawati', '8A', 'Jl.Anggrek No 13', '08213457098'),
(3, 'Rudi Hartono', '8A', 'Jl.Manggis 98', '08127890332'),
(4, 'Dino Riano', '7D', 'Jl.Melon No 33', '082345267010'),
(5, 'Agus Wardoyo', '7F', 'Jl.Cempedak No 88', '0898976520'),
(6, 'Shinta Riani', '8H', 'JL.Jeruk No 1', '088248782022'),
(7, 'Irwan Hakim', '9I', 'Jl.Salak No 34', '085376652392'),
(8, 'Indah Dian', '9B', 'Jl.Semangka No 23', '081309876723'),
(9, 'Rina Auliah', '9C', 'Jl.Merpati No 44', '089876354322'),
(10, 'Septi Putri', '8E', 'Jl.Beringin No 2', '082098765233'),
(11, 'Rangga', '8D', 'Jl.Manggis No 41', '083452670310'),
(13, 'Reffan', '7C', 'Ciwidey', '081234567890'),
(15, 'Rina', '9D', 'Andir', '087652345890');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `th_terbit` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `kategori`, `penulis`, `penerbit`, `th_terbit`, `status`) VALUES
(1, 'Belajar PHP', 'Ilmu Komputer', 'Candra', 'Media Baca', '2015', 'Tersedia'),
(2, 'Belajar HTML', 'Ilmu Komputer', 'Rahmat Hakim', 'Media Baca', '2017', 'Tersedia'),
(3, 'Kumpulan Puisi', 'Karya Sastra', 'Bejo', 'Media Kita', '2019', 'Tersedia'),
(4, 'Sejarah Islam', 'Ilmu Agama', 'Sutejo', 'Media Kita', '2020', 'Tersedia'),
(5, 'Pintar CSS', 'Ilmu Komputer', 'Anton', 'Graha Buku', '2021', 'Tersedia'),
(6, 'Kumpulan Cerpen', 'Karya Sastra', 'Rudi', 'Media Aksara', '2015', 'Sedang di pinjam'),
(7, 'Keamanan Data', 'Ilmu Komputer', 'Nusron', 'Media Cipta', '2014', 'Tersedia'),
(8, 'Dasar-Dasar Database', 'Ilmu Komputer', 'Andi', 'Graha Media', '2013', 'Tersedia'),
(9, 'Kumpulan Cerpen 2', 'Karya Sastra', 'Sutejo', 'Media Cipta', '2021', 'Tersedia'),
(10, 'Peradaban Islam', 'Ilmu Agama', 'Aminnudin', 'Media Baca', '2021', 'Tersedia'),
(11, 'Kumpulan Cerpen 3', 'Karya Sastra', 'Rudi', 'Media Baca', '2020', 'Tersedia'),
(12, 'Teknologi Informasi', 'Ilmu Komputer', 'Andi A', 'Media Baca', '2020', 'Tersedia'),
(13, 'Dermaga Biru', 'Karya Sastra', 'Sutejo', 'Media Cipta', '2020', 'Tersedia'),
(14, 'Aku dan Dia', 'Fiksi', 'Renata ', 'Gramedia', '2019', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user`, `pass`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status_transaksi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `status_transaksi`) VALUES
(1, 4, 13, '2021-12-03', '2021-12-06', 'Sudah Mengembalikan'),
(3, 3, 10, '2021-12-04', '2021-12-07', 'Sudah Mengembalikan'),
(4, 8, 6, '2021-12-06', '2021-12-09', 'Sedang Meminjam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
