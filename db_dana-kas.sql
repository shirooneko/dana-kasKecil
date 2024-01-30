-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2023 pada 06.35
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dana-kas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_akun`
--

CREATE TABLE `tbl_akun` (
  `id_akun` int(5) NOT NULL,
  `no_akun` varchar(10) NOT NULL,
  `nm_akun` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_akun`
--

INSERT INTO `tbl_akun` (`id_akun`, `no_akun`, `nm_akun`) VALUES
(1, '101', 'Saldo Awal'),
(2, '201', 'atk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_trans` int(20) NOT NULL,
  `tgl` date NOT NULL,
  `no_bukti` varchar(20) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `no_akun` varchar(50) NOT NULL,
  `jumlah` double NOT NULL,
  `tipe` varchar(7) NOT NULL,
  `kas_masuk` double NOT NULL,
  `kas_keluar` double NOT NULL,
  `saldo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_trans`, `tgl`, `no_bukti`, `tujuan`, `no_akun`, `jumlah`, `tipe`, `kas_masuk`, `kas_keluar`, `saldo`) VALUES
(1, '2023-05-07', 'BKM-001', 'Bank', '101', 5000000, 'DEBET', 5000000, 0, 5000000),
(2, '2023-05-07', 'BKK-001', 'Koperasi', '201', 500000, 'KREDIT', 0, 50000, 4950000),
(4, '2023-05-07', 'BKM-002', 'sandi', '201', 100000, 'DEBET', 100000, 0, 5050000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', '$2a$12$OnsCujne4zdQ90tRW6jnDuTir8472sC3.Leq3qigqxXRc3fmw8HaC', 'ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_akun`
--
ALTER TABLE `tbl_akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_trans`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_akun`
--
ALTER TABLE `tbl_akun`
  MODIFY `id_akun` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_trans` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
