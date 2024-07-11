-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 04:45 PM
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
-- Database: `databasesekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `nama_barang` varchar(100) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL,
  `harga_barang` int(20) DEFAULT NULL,
  `jumlah_barang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`nama_barang`, `kode_barang`, `jenis_barang`, `harga_barang`, `jumlah_barang`) VALUES
('Buku Gambar New', 'BT1', 'Non Khusus', 5000, 550),
('Buku Tulis', 'DS1', 'Non Khusus', 5000, 5),
('Gitar', 'GT1', 'Non Khusus', 1200000, 5),
('Seragam Batik', 'SB1', 'Khusus', 500000, 55);

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`id`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'Sergie Agustian', 'User1', 'Test123'),
(2, 'Johan', 'User2', 'Test123'),
(3, 'Rangga', 'User3', 'Test1234');

-- --------------------------------------------------------

--
-- Table structure for table `dataguru`
--

CREATE TABLE `dataguru` (
  `nip` varchar(30) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `mata_pelajaran` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_tlpn_guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataguru`
--

INSERT INTO `dataguru` (`nip`, `nama_guru`, `jabatan`, `mata_pelajaran`, `email`, `no_tlpn_guru`) VALUES
('12321313', 'Susi Susanti', 'Kepala Sekolah', 'Matematika', 'Susi_susanti@gmail.com', '089635443311'),
('22334114', 'Handoko', 'Tata Usaha', 'Olahraga', 'handoko@gmail.com', '08967766511');

-- --------------------------------------------------------

--
-- Table structure for table `datasiswa`
--

CREATE TABLE `datasiswa` (
  `nisn` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `ket_pembayaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datasiswa`
--

INSERT INTO `datasiswa` (`nisn`, `nama`, `kelas`, `jenis_kelamin`, `tgl_lahir`, `alamat`, `ket_pembayaran`) VALUES
('202143500', 'Rizal', 'SG', 'Laki-laki', '1999-06-09', 'Test Edit Konfirmasi', 'Lunas'),
('202143500712', 'Johan', 'SG', 'Laki-laki', '1999-06-30', 'Jl Test', 'Lunas'),
('202143500719', 'Rangga', 'SG', 'Laki-laki', '1999-08-04', 'Jl Test', 'Lunas'),
('202143500742', 'Yosef', 'SG', 'Laki-laki', '1999-09-12', 'Jl Test', 'Lunas'),
('202143500748', 'Sergie Agustian', 'SG', 'Laki-laki', '1999-08-17', 'Jl Test', 'Lunas'),
('202143500759', 'Irma Hariasih', 'SG', 'Perempuan', '1999-08-24', 'Jl Test', 'Lunas'),
('202143500777', 'Fathur', 'SG', 'Laki-laki', '1999-08-30', 'Jl Test', 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `datawalisiswa`
--

CREATE TABLE `datawalisiswa` (
  `nama_siswa` varchar(100) NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `no_telpn` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `ket_pembayaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datawalisiswa`
--

INSERT INTO `datawalisiswa` (`nama_siswa`, `nama_wali`, `pekerjaan`, `nik`, `no_telpn`, `alamat`, `ket_pembayaran`) VALUES
('Fathur', 'Bapak6', 'Arsitek', '9998887779997773', '08977721872', 'Jl Test2', '-'),
('Irma Hariasih', 'Bapak5', 'Polisi', '8889990007772221', '0889972172', 'Jl Test', '-'),
('Johan', 'Bapak2', 'Marketing', '2221113334445556', '0896332211', 'Jl Test', '-'),
('Rangga', 'Bapak3', 'Tambang', '4443331112223335', '089688877766', 'Jl Test', '-'),
('Rizal', 'Bapak1', 'Online Shop', '1112223334445556', '081122334455', 'Test Edit Konfirmasi', '-'),
('Sergie Agustian', 'Ruhiyat', 'Manager', '11223344', '089611223388', 'Jl Test', '-'),
('Yosef', 'Bapak7', 'TNI', '888999000777888', '08977889988', 'Jl Mana Aja', '-');

-- --------------------------------------------------------

--
-- Table structure for table `pembayarankhusus`
--

CREATE TABLE `pembayarankhusus` (
  `nisn` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `jenis_pembayaran` varchar(50) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah_barang` bigint(20) NOT NULL,
  `harga_satuan` bigint(20) NOT NULL,
  `total_harga` bigint(20) NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `kembalian` bigint(20) NOT NULL,
  `tgl_bayar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayarankhusus`
--

INSERT INTO `pembayarankhusus` (`nisn`, `nama`, `kode_barang`, `jenis_pembayaran`, `nama_barang`, `jumlah_barang`, `harga_satuan`, `total_harga`, `bayar`, `kembalian`, `tgl_bayar`) VALUES
('202143500748', 'Sergie Agustian', 'SB1', 'Khusus', 'Seragam Batik', 10, 500000, 5000000, 10000000, 5000000, '2024-06-01'),
('202143500748', 'Sergie Agustian', 'SB1', 'Khusus', 'Seragam Batik', 10, 500000, 5000000, 10000000, 5000000, '2024-06-01'),
('202143500748', 'Sergie Agustian', 'GT1', 'Non Khusus', 'Gitar', 5, 1200000, 6000000, 7000000, 1000000, '2024-06-01'),
('202143500748', 'Sergie Agustian', 'BT1', 'Non Khusus', 'Buku Tulis', 5, 5000, 25000, 50000, 25000, '2024-06-05'),
('202143500742', 'Yosef', 'DS1', 'Khusus', 'Dasi', 1, 10000, 10000, 15000, 5000, '2024-06-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`) USING BTREE;

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataguru`
--
ALTER TABLE `dataguru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `datasiswa`
--
ALTER TABLE `datasiswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `datawalisiswa`
--
ALTER TABLE `datawalisiswa`
  ADD PRIMARY KEY (`nama_siswa`);

--
-- Indexes for table `pembayarankhusus`
--
ALTER TABLE `pembayarankhusus` ADD FULLTEXT KEY `nisn` (`nisn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
