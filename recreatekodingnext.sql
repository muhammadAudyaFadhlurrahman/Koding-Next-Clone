-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2026 pada 09.49
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
-- Database: `recreatekodingnext`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `learn_about`
--

CREATE TABLE `learn_about` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `learn_about`
--

INSERT INTO `learn_about` (`id`, `title`, `image`) VALUES
(1, 'Programming & Coding', 'programming.png'),
(2, 'Robotics Engineering', 'robot.png'),
(3, 'Artificial Intelligence', 'artificial-intelligence.png'),
(4, 'Game Development', 'game-dev.png'),
(5, 'Web Development', 'web-dev.png'),
(6, 'Python Programming', 'python.png'),
(7, 'Roblox', 'roblox.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `schoolpartners`
--

CREATE TABLE `schoolpartners` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `schoolpartners`
--

INSERT INTO `schoolpartners` (`id`, `name`, `logo`) VALUES
(1, 'ACG School Jakarta', 'ACGSchool.avif'),
(2, 'All Star Academy', 'AllStarAcademy.avif'),
(3, 'Australian Independent School', 'AustralianIndependentSchool.avif'),
(4, 'Bina Bangsa School', 'BinaBangsaSchool.avif'),
(5, 'BTB School', 'BTBSchool.avif'),
(6, 'Cita Buana', 'CitaBuana.avif'),
(7, 'GPS', 'GPS.avif'),
(8, 'Inlife School', 'inlifeschool_logo.avif'),
(9, 'International School Jakarta', 'isjnewlogo.avif'),
(10, 'Jakarta Multicultural School', 'JakartaMulticulturalSchool.avif'),
(11, 'Jakarta Nanyang School', 'JakartaNanyangSchool.avif'),
(12, 'Janitra', 'Janitra.avif'),
(13, 'JIS', 'JIS.avif'),
(14, 'Julia Gabriel', 'JuliaGabriel.avif'),
(15, 'Mahatma Gandhi School', 'MahatmaGandhi.avif'),
(16, 'Marie Joseph School', 'MarieJoseph.avif'),
(17, 'Mawar Sharon Christian School', 'MawarSharon.avif'),
(18, 'Mutiara Insan', 'mutiarainsan_edited.avif'),
(19, 'Nizhamia', 'Nizhamia.avif'),
(20, 'Pelangi School', 'PelangiSchool.avif'),
(21, 'PENABUR', 'PENABUR.avif'),
(22, 'Playhouse Academy', 'PlayhouseAcademy.avif'),
(23, 'Regina Pacis', 'reginapacis.avif'),
(24, 'Saint John School', 'SaintJohn.avif'),
(25, 'SDIT', 'sdit.avif'),
(26, 'Sekolah Harapan Prestasi', 'SekolahHarapanPrestasi.avif'),
(27, 'Sekolah Karakter', 'SekolahKarakter.avif'),
(28, 'SLK', 'SLK.avif'),
(29, 'SMA CENGKARENG', 'smacengkareng.avif'),
(30, 'SPH', 'SPH.avif'),
(31, 'Stella Maris', 'StellaMaris.avif'),
(32, 'Taman Rama', 'TamanRama.avif'),
(33, 'Tzu Chi', 'TzuChi.avif'),
(34, 'VITA School', 'VITASchool.avif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stations`
--

CREATE TABLE `stations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stations`
--

INSERT INTO `stations` (`id`, `name`, `logo`) VALUES
(1, 'TV One', 'tvone.png'),
(2, 'Metro TV', 'metro.png'),
(3, 'Suara', 'suara.png'),
(4, 'Sindo', 'sindo.png'),
(5, 'Mommies Daily', 'mommies.png'),
(6, 'Media Indonesia', 'mediaindonesia.png'),
(7, 'Detik', 'detik.png'),
(8, 'Jakarta Post', 'jakarta.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `testimonial` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `nama`, `jabatan`, `foto`, `testimonial`) VALUES
(1, 'Budi Santoso', 'Orang Tua Murid', 'user1.jpg', 'Anak saya menjadi lebih percaya diri dan mulai tertarik dengan dunia teknologi sejak belajar di Koding Next.'),
(2, 'Siti Rahma', 'Orang Tua Murid', 'user2.jpg', 'Kurikulumnya sangat menarik dan mudah dipahami. Mentor juga sangat sabar dalam mengajar.'),
(3, 'Andi Wijaya', 'Siswa Robotics', 'user3.jpg', 'Saya berhasil membuat proyek robot pertama saya dan mengikuti kompetisi berkat bimbingan mentor.'),
(4, 'Audy', 'Orang Tua Siswa', 'audy.png', 'Koding Next terbaik untuk anak belajar koding'),
(5, 'Audy', 'Orang Tua Siswa', 'audy.png', 'Koding next terbaik untuk anak belajar koding');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `created_at`) VALUES
(1, 'Audya Fadhlurrahman', 'audy@gmail.com', '$2y$10$zg0vYiGgnfILv.hp/2GoD.HEb41kBUvVsr1k0AN2AboL1JBLROUDe', '2026-06-08 15:57:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `learn_about`
--
ALTER TABLE `learn_about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schoolpartners`
--
ALTER TABLE `schoolpartners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `learn_about`
--
ALTER TABLE `learn_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `schoolpartners`
--
ALTER TABLE `schoolpartners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
