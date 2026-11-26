-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2026 at 03:08 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pembayaran_pensiunan`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisi_keuangan`
--

CREATE TABLE `divisi_keuangan` (
  `id_keuangan` bigint UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_pensiun`
--

CREATE TABLE `gaji_pensiun` (
  `id_gaji` bigint UNSIGNED NOT NULL,
  `nip` varchar(30) NOT NULL,
  `jumlah_gaji` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `histori_pembayaran`
--

CREATE TABLE `histori_pembayaran` (
  `id_pembayaran` bigint UNSIGNED NOT NULL,
  `nip` varchar(30) NOT NULL,
  `id_keuangan` bigint UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `hrd`
--

CREATE TABLE `hrd` (
  `id_hrd` bigint UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pensiunan`
--

CREATE TABLE `pensiunan` (
  `nip` varchar(30) NOT NULL,
  `id_hrd` bigint UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `golongan` varchar(30) NOT NULL,
  `tanggal_pensiunan` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_bank` varchar(100) DEFAULT NULL,
  `nomor_rekening` varchar(30) DEFAULT NULL,
  `nama_pemilik_rekening` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi_keuangan`
--
ALTER TABLE `divisi_keuangan`
  ADD PRIMARY KEY (`id_keuangan`),
  ADD UNIQUE KEY `username` (`email`);

--
-- Indexes for table `gaji_pensiun`
--
ALTER TABLE `gaji_pensiun`
  ADD PRIMARY KEY (`id_gaji`),
  ADD KEY `idx_gaji_pensiun_nip` (`nip`);

--
-- Indexes for table `histori_pembayaran`
--
ALTER TABLE `histori_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `idx_histori_nip_tanggal` (`nip`,`tanggal`),
  ADD KEY `idx_histori_id_keuangan` (`id_keuangan`);

--
-- Indexes for table `hrd`
--
ALTER TABLE `hrd`
  ADD PRIMARY KEY (`id_hrd`),
  ADD UNIQUE KEY `username` (`email`);

--
-- Indexes for table `pensiunan`
--
ALTER TABLE `pensiunan`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `username` (`email`),
  ADD KEY `idx_pensiunan_id_hrd` (`id_hrd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi_keuangan`
--
ALTER TABLE `divisi_keuangan`
  MODIFY `id_keuangan` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gaji_pensiun`
--
ALTER TABLE `gaji_pensiun`
  MODIFY `id_gaji` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histori_pembayaran`
--
ALTER TABLE `histori_pembayaran`
  MODIFY `id_pembayaran` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrd`
--
ALTER TABLE `hrd`
  MODIFY `id_hrd` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gaji_pensiun`
--
ALTER TABLE `gaji_pensiun`
  ADD CONSTRAINT `fk_gaji_pensiun_pensiunan` FOREIGN KEY (`nip`) REFERENCES `pensiunan` (`nip`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `histori_pembayaran`
--
ALTER TABLE `histori_pembayaran`
  ADD CONSTRAINT `fk_histori_divisi_keuangan` FOREIGN KEY (`id_keuangan`) REFERENCES `divisi_keuangan` (`id_keuangan`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_histori_pensiunan` FOREIGN KEY (`nip`) REFERENCES `pensiunan` (`nip`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `pensiunan`
--
ALTER TABLE `pensiunan`
  ADD CONSTRAINT `fk_pensiunan_hrd` FOREIGN KEY (`id_hrd`) REFERENCES `hrd` (`id_hrd`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
