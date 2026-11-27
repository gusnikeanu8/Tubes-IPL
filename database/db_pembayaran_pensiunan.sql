-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2026 at 01:18 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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

--
-- Dumping data for table `divisi_keuangan`
--

INSERT INTO `divisi_keuangan` (`id_keuangan`, `nama`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Dinda Anggraini', 'dinda.keuangan@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', NULL, NULL),
(2, 'Nadia Puspita', 'nadia.keuangan@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', NULL, NULL),
(3, 'Arman Pratama', 'arman.keuangan@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', NULL, NULL),
(4, 'Clara Maharani', 'clara.keuangan@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', NULL, NULL),
(5, 'Putri Amelia', 'putri.keuangan@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gaji_pensiun`
--

INSERT INTO `gaji_pensiun` (`id_gaji`, `nip`, `jumlah_gaji`, `created_at`, `updated_at`) VALUES
(1, '198501001', '5500000.00', NULL, NULL),
(2, '198501002', '4200000.00', NULL, NULL),
(3, '198501003', '6000000.00', NULL, NULL),
(4, '198501004', '4000000.00', NULL, NULL),
(5, '198501005', '3800000.00', NULL, NULL),
(6, '198501006', '5300000.00', NULL, NULL),
(7, '198501007', '3200000.00', NULL, NULL),
(8, '198501008', '4500000.00', NULL, NULL),
(9, '198501009', '6500000.00', NULL, NULL),
(10, '198501010', '3500000.00', NULL, NULL),
(11, '198501011', '4100000.00', NULL, NULL),
(12, '198501012', '5200000.00', NULL, NULL),
(13, '198501013', '4500000.00', NULL, NULL),
(14, '198501014', '3700000.00', NULL, NULL),
(15, '198501015', '5900000.00', NULL, NULL),
(16, '198501016', '4300000.00', NULL, NULL),
(17, '198501017', '3300000.00', NULL, NULL),
(18, '198501018', '5400000.00', NULL, NULL),
(19, '198501019', '3500000.00', NULL, NULL),
(20, '198501020', '4600000.00', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `histori_pembayaran`
--

INSERT INTO `histori_pembayaran` (`id_pembayaran`, `nip`, `id_keuangan`, `tanggal`, `jumlah`, `status`, `created_at`, `updated_at`) VALUES
(1, '198501001', 1, '2026-01-01', '5500000.00', 'Berhasil', NULL, NULL),
(2, '198501002', 1, '2026-01-01', '4200000.00', 'Berhasil', NULL, NULL),
(3, '198501003', 2, '2026-01-01', '6000000.00', 'Berhasil', NULL, NULL),
(4, '198501004', 2, '2026-01-01', '4000000.00', 'Berhasil', NULL, NULL),
(5, '198501005', 1, '2026-01-01', '3800000.00', 'Berhasil', NULL, NULL),
(6, '198501006', 2, '2026-01-01', '5300000.00', 'Berhasil', NULL, NULL),
(7, '198501007', 1, '2026-01-01', '3200000.00', 'Gagal', NULL, NULL),
(8, '198501008', 2, '2026-01-01', '4500000.00', 'Berhasil', NULL, NULL),
(9, '198501009', 1, '2026-01-01', '6500000.00', 'Berhasil', NULL, NULL),
(10, '198501010', 2, '2026-01-01', '3500000.00', 'Diproses', NULL, NULL);

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

--
-- Dumping data for table `hrd`
--

INSERT INTO `hrd` (`id_hrd`, `nama`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Bunga Cempaka', 'bunga.hrd@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', NULL, NULL),
(2, 'Rara Melati', 'rara.hrd@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', NULL, NULL);

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
-- Dumping data for table `pensiunan`
--

INSERT INTO `pensiunan` (`nip`, `id_hrd`, `nama`, `email`, `password`, `golongan`, `tanggal_pensiunan`, `status`, `created_at`, `updated_at`, `nama_bank`, `nomor_rekening`, `nama_pemilik_rekening`) VALUES
('198501001', 1, 'Bambang Wijaya', 'bambang@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'IV/a', '2020-01-01', 'Aktif', NULL, NULL, 'Bank Mandiri', '1000000001', 'Bambang Wijaya'),
('198501002', 1, 'Siti Rahmawati', 'siti@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/d', '2021-03-01', 'Aktif', NULL, NULL, 'BRI', '1000000002', 'Siti Rahmawati'),
('198501003', 2, 'Joko Prasetyo', 'joko@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'IV/b', '2019-06-01', 'Aktif', NULL, NULL, 'BNI', '1000000003', 'Joko Prasetyo'),
('198501004', 2, 'Ratna Puspitasari', 'ratna@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/c', '2022-02-01', 'Aktif', NULL, NULL, 'BCA', '1000000004', 'Ratna Puspitasari'),
('198501005', 1, 'Agus Setiawan', 'agus@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/b', '2020-09-01', 'Aktif', NULL, NULL, 'Bank Mandiri', '1000000005', 'Agus Setiawan'),
('198501006', 2, 'Melati Kusuma', 'melati@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'IV/a', '2023-01-01', 'Aktif', NULL, NULL, 'BRI', '1000000006', 'Melati Kusuma'),
('198501007', 1, 'Dedi Kurniawan', 'dedi@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'II/d', '2021-07-01', 'Aktif', NULL, NULL, 'BNI', '1000000007', 'Dedi Kurniawan'),
('198501008', 2, 'Nia Kartika', 'nia@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/d', '2022-05-01', 'Aktif', NULL, NULL, 'BCA', '1000000008', 'Nia Kartika'),
('198501009', 1, 'Rudi Hartono', 'rudi@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'IV/c', '2018-11-01', 'Aktif', NULL, NULL, 'Bank Mandiri', '1000000009', 'Rudi Hartono'),
('198501010', 2, 'Citra Lestari', 'citra@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/a', '2023-06-01', 'Aktif', NULL, NULL, 'BRI', '1000000010', 'Citra Lestari'),
('198501011', 1, 'Farhan Nugraha', 'farhan@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/c', '2021-04-01', 'Aktif', NULL, NULL, 'BRI', '1000000011', 'Farhan Nugraha'),
('198501012', 2, 'Laras Wulandari', 'laras@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'IV/a', '2020-08-01', 'Aktif', NULL, NULL, 'BCA', '1000000012', 'Laras Wulandari'),
('198501013', 1, 'Fajar Ramadhan', 'fajar@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/d', '2022-01-01', 'Aktif', NULL, NULL, 'BNI', '1000000013', 'Fajar Ramadhan'),
('198501014', 2, 'Ayu Permatasari', 'ayu@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/b', '2021-11-01', 'Aktif', NULL, NULL, 'Mandiri', '1000000014', 'Ayu Permatasari'),
('198501015', 1, 'Hendra Saputra', 'hendra@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'IV/b', '2019-05-01', 'Aktif', NULL, NULL, 'BRI', '1000000015', 'Hendra Saputra'),
('198501016', 2, 'Sekar Ayuningtyas', 'sekar@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/c', '2023-02-01', 'Aktif', NULL, NULL, 'BNI', '1000000016', 'Sekar Ayuningtyas'),
('198501017', 1, 'Bayu Firmansyah', 'bayu@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'II/d', '2020-10-01', 'Aktif', NULL, NULL, 'BCA', '1000000017', 'Bayu Firmansyah'),
('198501018', 2, 'Nadira Safitri', 'nadira@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'IV/a', '2022-07-01', 'Aktif', NULL, NULL, 'Mandiri', '1000000018', 'Nadira Safitri'),
('198501019', 1, 'Reza Maulana', 'reza@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/a', '2021-06-01', 'Aktif', NULL, NULL, 'BRI', '1000000019', 'Reza Maulana'),
('198501020', 2, 'Kirana Maharani', 'kirana@example.com', '$2y$12$8b1QxUToqCEvUXftwjLd/eZjymtaVaOaa3meMq5Q29N1JX0WiEnue', 'III/d', '2023-04-01', 'Aktif', NULL, NULL, 'BNI', '1000000020', 'Kirana Maharani');

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
  MODIFY `id_keuangan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gaji_pensiun`
--
ALTER TABLE `gaji_pensiun`
  MODIFY `id_gaji` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `histori_pembayaran`
--
ALTER TABLE `histori_pembayaran`
  MODIFY `id_pembayaran` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hrd`
--
ALTER TABLE `hrd`
  MODIFY `id_hrd` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
