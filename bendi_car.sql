-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 09:59 PM
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
-- Database: `bendi car`
--

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `iddenda` int(30) NOT NULL,
  `jenis` varchar(30) DEFAULT NULL,
  `jumlahdenda` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`iddenda`, `jenis`, `jumlahdenda`) VALUES
(155, 'rusak', 200000),
(234, 'rusak parah', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `harga_sewa` int(30) NOT NULL,
  `jenis` varchar(30) DEFAULT NULL,
  `merk` varchar(30) DEFAULT NULL,
  `no_polisi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`harga_sewa`, `jenis`, `merk`, `no_polisi`) VALUES
(300000, 'mobil', 'honda', 'BE1233ML'),
(200000, 'motor', 'yamaha', 'BG3333LM');

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE `pemilik` (
  `idpetugas` int(30) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `telpon` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemilik`
--

INSERT INTO `pemilik` (`idpetugas`, `nama`, `status`, `telpon`) VALUES
(222, 'dini', 'pegawai', 987666788),
(333, 'yulia', 'manager', 987776657);

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `idpenyewa` int(30) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `tlpon` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`idpenyewa`, `nama`, `alamat`, `tlpon`) VALUES
(123, 'linda', 'liwa', 857885690),
(321, 'nisa', 'balam', 987909890);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `idpetugas` int(30) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `tipon` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idtransaksi` int(30) NOT NULL,
  `kd-kembali` varchar(30) DEFAULT NULL,
  `kd_pinjam` varchar(30) DEFAULT NULL,
  `kondisi` varchar(30) DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `total_bayar` int(30) DEFAULT NULL,
  `total_denda` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`idtransaksi`, `kd-kembali`, `kd_pinjam`, `kondisi`, `tgl_kembali`, `tgl_pinjam`, `total_bayar`, `total_denda`) VALUES
(1, 'KB01', 'PJ01', 'baik', '2024-11-04', '2024-11-12', 300000, 0),
(2, 'KB02', 'PJ02', 'rusak', '2024-11-19', '2024-11-03', 1000000, 500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`iddenda`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`idpetugas`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`idpenyewa`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`idpetugas`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idtransaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
