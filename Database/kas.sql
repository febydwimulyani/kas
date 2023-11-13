-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 05:45 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kas`
--

-- --------------------------------------------------------

--
-- Table structure for table `kas_keluar`
--

CREATE TABLE `kas_keluar` (
  `id_kk` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kas_keluar`
--

INSERT INTO `kas_keluar` (`id_kk`, `tanggal`, `keterangan`, `total`) VALUES
(2, '2023-09-07', 'feby', '200000'),
(3, '2000-02-22', 'hhhh', '600000');

-- --------------------------------------------------------

--
-- Table structure for table `kas_masuk`
--

CREATE TABLE `kas_masuk` (
  `id_km` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kas_masuk`
--

INSERT INTO `kas_masuk` (`id_km`, `tanggal`, `keterangan`, `total`) VALUES
(4, '2023-08-25', 'nyoba', '1000000'),
(5, '2023-09-07', 'nanana', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(35) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `foto`) VALUES
(1, 'FEBY', 'feby', '202cb962ac59075b964b07152d234b70', '509684848_WIN_20230914_14_41_07_Pro.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kas_keluar`
--
ALTER TABLE `kas_keluar`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indexes for table `kas_masuk`
--
ALTER TABLE `kas_masuk`
  ADD PRIMARY KEY (`id_km`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kas_keluar`
--
ALTER TABLE `kas_keluar`
  MODIFY `id_kk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kas_masuk`
--
ALTER TABLE `kas_masuk`
  MODIFY `id_km` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
