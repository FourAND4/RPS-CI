-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2024 pada 15.48
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
-- Database: `uas_rps_4830`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan_ajar`
--

CREATE TABLE `bahan_ajar` (
  `id_ref` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nik` int(16) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nik`, `name`, `pass`) VALUES
(0, 'Gampang', '12345'),
(123123123, 'pemas', '202cb962ac59075b964b07152d234b70'),
(2147483647, 'Gampang Rozaki', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `dosen` int(16) NOT NULL,
  `semester` int(2) NOT NULL,
  `sks_teori` int(2) NOT NULL,
  `sks_praktek` int(2) NOT NULL,
  `tahun` year(4) NOT NULL,
  `status` int(1) NOT NULL,
  `gambaran_umum` text NOT NULL,
  `capaian_pembelajaran` text NOT NULL,
  `prasyarat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_matkul`, `id_prodi`, `dosen`, `semester`, `sks_teori`, `sks_praktek`, `tahun`, `status`, `gambaran_umum`, `capaian_pembelajaran`, `prasyarat`) VALUES
(11, 5, 6, 2147483647, 3, 2, 2, '2023', 1, 'daaisfuasf ufdsgauf asuhf usafausifg safsaugf safiusagf asufgsauf asugfasuf asufgsauf saufgausigf usagfiusagfusag fusagfuasgufigsa ufsagufgsaiufg', 'sfasf  fasfa faf fsaf fasfa fas sfsfa  afsaf safa  ', 'fasf f afas  asfasfa fasf afasfa fasf'),
(13, 6, 6, 2147483647, 3, 2, 0, '2023', 0, '', '', ''),
(14, 7, 6, 2147483647, 3, 2, 2, '2023', 0, '', '', ''),
(15, 5, 6, 123123123, 0, 0, 0, '2023', 0, 'CODEIGNITHER', 'BISA MEMBUAT RPS', 'PHP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `nama_matkul`) VALUES
(5, 'Perancangan Web 2 '),
(6, 'B Indonesia'),
(7, 'Struktur Data');

-- --------------------------------------------------------

--
-- Struktur dari tabel `persentase_penilaian`
--

CREATE TABLE `persentase_penilaian` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `persentase` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `persentase_penilaian`
--

INSERT INTO `persentase_penilaian` (`id_nilai`, `id_jadwal`, `deskripsi`, `persentase`) VALUES
(8, 11, 'safa fsaf f afasf', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`) VALUES
(6, 'D3 Teknik Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi_pembelajaran`
--

CREATE TABLE `referensi_pembelajaran` (
  `id_ref` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `deskripsi` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `referensi_pembelajaran`
--

INSERT INTO `referensi_pembelajaran` (`id_ref`, `id_jadwal`, `deskripsi`) VALUES
(18, 11, 'fasfafa  asfa f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rencana_pembelajaran`
--

CREATE TABLE `rencana_pembelajaran` (
  `id_rencana` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `pertemuan_ke` int(2) NOT NULL,
  `kemampuan` text NOT NULL,
  `indikator` text NOT NULL,
  `topik_subtopik` text NOT NULL,
  `strategi` text NOT NULL,
  `lama_waktu` varchar(100) NOT NULL,
  `penilaian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `judul` text NOT NULL,
  `tugas` text NOT NULL,
  `kemampuan` text NOT NULL,
  `kriteria_pen` text NOT NULL,
  `indikator_pen` text NOT NULL,
  `lama_waktu` varchar(100) NOT NULL,
  `bobot_nilai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_pembelajaran`
--

CREATE TABLE `unit_pembelajaran` (
  `id_unit` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `kemampuan` text NOT NULL,
  `indikator` text NOT NULL,
  `bahan_kajian` text NOT NULL,
  `metode_pem` text NOT NULL,
  `metode_pen` text NOT NULL,
  `lama_waktu` varchar(255) NOT NULL,
  `bahan_ajar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahan_ajar`
--
ALTER TABLE `bahan_ajar`
  ADD KEY `FK_referensi_pembelajaran_TO_bahan_ajar` (`id_ref`),
  ADD KEY `FK_unit_pembelajaran_TO_bahan_ajar` (`id_unit`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `UQ_nik` (`nik`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `FK_dosen_TO_Jadwal` (`dosen`),
  ADD KEY `FK_prodi_TO_Jadwal` (`id_prodi`),
  ADD KEY `FK_Matkul_TO_Jadwal` (`id_matkul`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indeks untuk tabel `persentase_penilaian`
--
ALTER TABLE `persentase_penilaian`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `FK_Jadwal_TO_persentase_penilaian` (`id_jadwal`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indeks untuk tabel `referensi_pembelajaran`
--
ALTER TABLE `referensi_pembelajaran`
  ADD PRIMARY KEY (`id_ref`),
  ADD KEY `FK_Jadwal_TO_referensi_pembelajaran` (`id_jadwal`);

--
-- Indeks untuk tabel `rencana_pembelajaran`
--
ALTER TABLE `rencana_pembelajaran`
  ADD PRIMARY KEY (`id_rencana`),
  ADD KEY `FK_Jadwal_TO_rencana_pembelajaran` (`id_jadwal`);

--
-- Indeks untuk tabel `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`),
  ADD KEY `FK_Jadwal_TO_tugas` (`id_jadwal`);

--
-- Indeks untuk tabel `unit_pembelajaran`
--
ALTER TABLE `unit_pembelajaran`
  ADD PRIMARY KEY (`id_unit`),
  ADD KEY `FK_Jadwal_TO_unit_pembelajaran` (`id_jadwal`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `persentase_penilaian`
--
ALTER TABLE `persentase_penilaian`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `referensi_pembelajaran`
--
ALTER TABLE `referensi_pembelajaran`
  MODIFY `id_ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `rencana_pembelajaran`
--
ALTER TABLE `rencana_pembelajaran`
  MODIFY `id_rencana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `unit_pembelajaran`
--
ALTER TABLE `unit_pembelajaran`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bahan_ajar`
--
ALTER TABLE `bahan_ajar`
  ADD CONSTRAINT `FK_referensi_pembelajaran_TO_bahan_ajar` FOREIGN KEY (`id_ref`) REFERENCES `referensi_pembelajaran` (`id_ref`),
  ADD CONSTRAINT `FK_unit_pembelajaran_TO_bahan_ajar` FOREIGN KEY (`id_unit`) REFERENCES `unit_pembelajaran` (`id_unit`);

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `FK_Matkul_TO_Jadwal` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id_matkul`),
  ADD CONSTRAINT `FK_dosen_TO_Jadwal` FOREIGN KEY (`dosen`) REFERENCES `dosen` (`nik`),
  ADD CONSTRAINT `FK_prodi_TO_Jadwal` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`);

--
-- Ketidakleluasaan untuk tabel `persentase_penilaian`
--
ALTER TABLE `persentase_penilaian`
  ADD CONSTRAINT `FK_Jadwal_TO_persentase_penilaian` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `referensi_pembelajaran`
--
ALTER TABLE `referensi_pembelajaran`
  ADD CONSTRAINT `FK_Jadwal_TO_referensi_pembelajaran` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `rencana_pembelajaran`
--
ALTER TABLE `rencana_pembelajaran`
  ADD CONSTRAINT `FK_Jadwal_TO_rencana_pembelajaran` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `FK_Jadwal_TO_tugas` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `unit_pembelajaran`
--
ALTER TABLE `unit_pembelajaran`
  ADD CONSTRAINT `FK_Jadwal_TO_unit_pembelajaran` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
