-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql107.ezyro.com
-- Waktu pembuatan: 16 Feb 2026 pada 05.51
-- Versi server: 11.4.10-MariaDB
-- Versi PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezyro_40992349_stok`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arduino_data`
--

CREATE TABLE `arduino_data` (
  `id` int(6) UNSIGNED NOT NULL,
  `variabel` varchar(30) NOT NULL,
  `nilai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode` char(4) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `stok` varchar(6) NOT NULL,
  `ukur` varchar(8) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `min_stok` int(4) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `stok`, `ukur`, `tgl`, `min_stok`) VALUES
('AY01', 'Ayam Bumbu kuning   ', '0', 'biji', '2026-02-09 22:24:07', 5),
('AY02', 'Ayam Bumbu Kecap    ', '0', ' biji', '2026-02-04 05:47:39', 5),
('BG01', 'Galon               ', '7', ' biji   ', '2026-02-15 15:00:58', 5),
('BG03', 'Gas 3 kg  ', '0', ' biji', '2026-02-05 07:02:09', 3),
('BG05', 'Gas 5.6 kg    ', '1 ', ' biji ', '2026-02-06 00:48:54', 3),
('BG12', 'Gas 12 kg          ', '0', ' biji ', '2026-02-05 07:02:36', 3),
('BK01', 'Kotak Makan         ', '80', ' biji ', '2026-02-13 01:23:54', 5),
('BMT1', 'Beras               ', '5.5', ' kg     ', '2026-02-13 01:25:10', 3),
('BS01', 'Sendok Plastik      ', '60', ' biji   ', '2026-02-13 04:35:06', 5),
('BT01', 'Telur Ayam          ', '12', ' butir  ', '2026-02-16 04:32:56', 5),
('CP01', 'Plastik 1/4 kg      ', '4', ' pack ', '2026-02-13 04:34:46', 5),
('CP03', 'Plastik 1/2 kg    ', '4', ' pack  ', '2026-02-13 04:35:51', 5),
('GP01', 'Gula Pasir          ', '1.2', ' kg  ', '2026-02-15 15:07:34', 3),
('MG01', 'Minyak Goreng      ', '0.3', 'liter', '2026-02-15 15:08:13', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang1`
--

CREATE TABLE `barang1` (
  `kode` char(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `stok` int(4) NOT NULL,
  `ukur` varchar(8) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `min_stok` int(4) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data untuk tabel `barang1`
--

INSERT INTO `barang1` (`kode`, `nama`, `stok`, `ukur`, `tgl`, `min_stok`) VALUES
('BA01', 'Sunlight    ', 0, ' biji ', '2026-02-05 02:08:24', 5),
('BK01', 'Pembersih Kamar Mandi Vixal  ', 0, ' botol', '2026-02-03 10:44:47', 5),
('BK02', 'Pembersih Kamar Mandi Wpc', 1, ' botol', '2026-02-03 04:45:31', 5),
('BK03', 'Pembersih Kamar Mandi Bebek  ', 1, ' biji', '2026-02-05 02:08:37', 5),
('BPK1', 'Pembersih Kaca          ', 1, ' biji', '2026-02-05 02:08:51', 5),
('BPL1', 'Pembersih Lantai        ', 0, ' biji ', '2026-02-15 15:09:14', 5),
('BPM2', 'Kanibo untuk lap biasa  ', 0, ' biji ', '2026-02-15 15:09:30', 5),
('BPS1', 'Sabun Colek                    ', 2, ' biji', '2026-02-15 15:09:41', 5),
('BPS2', 'Spon Piring      ', 1, ' biji ', '2026-02-15 15:09:55', 5),
('BPS3', 'Grenjeng', 1, ' biji ', '2026-02-04 10:02:17', 5),
('BST1', 'Bayclin Pemutih', 1, ' botol', '2026-02-04 10:02:40', 5),
('BX01', 'Abu Gosok', 5, 'biji ', '2026-02-05 01:54:13', 5),
('KW01', 'Karbol WIPOL', 1, ' biji ', '2026-02-04 10:03:27', 3),
('PSX1', 'Spirtus', 2, ' botol', '2026-02-04 10:03:40', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang2`
--

CREATE TABLE `barang2` (
  `kode` char(4) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `stok` varchar(6) NOT NULL,
  `ukur` varchar(8) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `min_stok` int(4) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data untuk tabel `barang2`
--

INSERT INTO `barang2` (`kode`, `nama`, `stok`, `ukur`, `tgl`, `min_stok`) VALUES
('BM01', 'Bawang Merah Utuh  ', '0', ' kg', '2026-02-16 05:52:52', 3),
('BM02', 'Bawang Merah Terkelupas', '0  ', ' kg ', '2026-02-13 03:10:58', 3),
('BW01', 'Bawang Putih utuh', '0 ', ' kg', '2026-02-13 01:37:49', 3),
('BW02', 'Bawang Putih terkelupas', '0  ', ' kg ', '2026-02-13 03:11:21', 3),
('KT01', 'Kunyit', '0   ', ' biji  ', '2026-02-06 12:42:30', 3),
('SD01', 'Selada  ', '6  ', ' biji ', '2026-02-06 12:42:47', 3),
('TT01', 'Tepung terugi', '1  ', ' kg', '2026-02-06 01:46:27', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `browser_data`
--

CREATE TABLE `browser_data` (
  `id` int(6) UNSIGNED NOT NULL,
  `variabel` varchar(30) NOT NULL,
  `nilai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `photo`) VALUES
(10, 'root', 'eddiesmgsemarang@gmail.com', '$2y$10$nhJkrdUDHmZsHtTmamWzheG8aLihWej36KplJtH1sQryfNBvY.Mp.', 'akulah', 'default.svg'),
(15, 'admin', 'eddiesmgsemarang@gmail.com', '$2y$12$Ousi69Qw9zwqWHYCmJhQ7OgqL12cFq5oH6FJ1QjyhNFlUAKdmpbpm', 'admin jaya', 'default.svg'),
(16, 'bismillah', 'eddiekuncoro106@gmail.com', '$2y$10$wNNc.yzK47YT106dAANipOZQ5NqaFeZrLFP/p47jaWA8Uu0FVvxg6', 'Alin', 'default.svg'),
(17, 'Kun', 'kun@gmail.com', '$2y$10$8j3aHGEoq2o5CUB707Rh7uR1yNfBFYzOEttkkY8xlW7FD/u3XP1JC', 'Kun', 'default.svg'),
(18, 'Aku', 'eddiesmgsemarang@gmail.com', '$2y$10$cX8OR4SxfnRUENtGJ0SBWuc7oFaHABi.43q2O.In8a4//VYUzlMF6', 'Alin', 'default.svg'),
(19, 'fasaya', 'eddiesmgsemarang@gmail.com', '$2y$10$gpz40dPUzoqsZQcDhOF.JeOuhtHpB4BAFKe7JUniXSY4Yvnhf9Rqq', 'fasa', 'default.svg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arduino_data`
--
ALTER TABLE `arduino_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `barang1`
--
ALTER TABLE `barang1`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `barang2`
--
ALTER TABLE `barang2`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `browser_data`
--
ALTER TABLE `browser_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `arduino_data`
--
ALTER TABLE `arduino_data`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `browser_data`
--
ALTER TABLE `browser_data`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
