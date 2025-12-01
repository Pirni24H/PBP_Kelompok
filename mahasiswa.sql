-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2025 pada 12.14
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `alamat` tinytext NOT NULL,
  `prodi` enum('TI','SI','HUKUM') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `gender`, `alamat`, `prodi`) VALUES
('2024004028', 'Rudi', 'L', 'Cisaat', 'SI'),
('2024004038', 'Aulia', 'P', 'Sukabumi', 'TI'),
('2024004048', 'Dani', 'L', 'Cibatu', 'HUKUM'),
('2024004058', 'Rina', 'P', 'Cicurug', 'SI'),
('2024004068', 'Indah', 'L', 'Parungkuda', 'TI'),
('2024004078', 'Nisa', 'P', 'Cibadak', 'HUKUM'),
('2024004088', 'Agung', 'L', 'Sukalarang', 'SI'),
('2024004098', 'Maya', 'P', 'Warungkiara', 'TI'),
('2024004999', 'Dewi Purnama', 'P', 'Cisaat', 'TI');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
