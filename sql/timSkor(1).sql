-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2019 at 11:05 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timSkor`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fikri', 'mahasiswa', '2019-12-02 17:00:00', '2019-12-02 17:00:00'),
(2, 'ihsanul', 'OOAD', '2019-12-02 17:00:00', '2019-12-02 17:00:00'),
(3, 'abiyyu', 'MENPROV', '2019-12-02 17:00:00', '2019-12-02 17:00:00'),
(4, 'fitri', 'MOBILE', '2019-12-02 17:00:00', '2019-12-02 17:00:00'),
(5, 'ahsani', 'ASDOS', '2019-12-02 17:00:00', '2019-12-02 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_10_26_101151_create_skor_dosens_table', 1),
(8, '2019_10_26_103006_delete_table', 2),
(9, '2019_10_26_104436_drop_table', 3),
(10, '2019_10_26_113051_create_skor_sprints_table', 3),
(11, '2019_10_28_023046_add_dosen', 4),
(12, '2019_10_28_030123_dropskorsprint', 5),
(13, '2019_10_28_030650_add_table', 6),
(16, '2019_10_28_031010_add_s_kor_point', 7),
(17, '2019_10_28_070633_editdb', 8),
(18, '2019_10_28_072954_addingnewcolumn', 9),
(19, '2019_10_28_073949_create_nilai_finals_table', 10),
(20, '2019_10_31_074529_add_null', 11),
(21, '2019_11_01_025602_addnull2', 12),
(22, '2019_11_04_161846_add', 13),
(23, '2019_11_26_031914_change_point', 13),
(24, '2019_12_03_020137_create_users_table', 14),
(25, '2019_12_03_021015_edit', 15);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_finals`
--

CREATE TABLE `nilai_finals` (
  `id` int(10) UNSIGNED NOT NULL,
  `matkul` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalNilaiSprint` int(11) DEFAULT NULL,
  `nilaiUts` int(11) DEFAULT NULL,
  `nilaiUas` int(11) DEFAULT NULL,
  `finalSkorTim` int(11) DEFAULT NULL,
  `idTim` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai_finals`
--

INSERT INTO `nilai_finals` (`id`, `matkul`, `finalNilaiSprint`, `nilaiUts`, `nilaiUas`, `finalSkorTim`, `idTim`, `created_at`, `updated_at`) VALUES
(1, 'OOAD', 18, 30, 20, 21, 1, '2019-12-16 20:50:31', '2019-12-16 20:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skor_dosens`
--

CREATE TABLE `skor_dosens` (
  `id` int(10) UNSIGNED NOT NULL,
  `KetepatanWaktu` int(11) DEFAULT NULL,
  `Kelengkapan` int(11) DEFAULT NULL,
  `KualitasHasil` int(11) DEFAULT NULL,
  `TotalNilai` int(11) NOT NULL,
  `sprint` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idTim` int(11) NOT NULL,
  `idSkorSprint` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `MatKul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skor_dosens`
--

INSERT INTO `skor_dosens` (`id`, `KetepatanWaktu`, `Kelengkapan`, `KualitasHasil`, `TotalNilai`, `sprint`, `idUser`, `idTim`, `idSkorSprint`, `created_at`, `updated_at`, `MatKul`) VALUES
(1, 90, 70, 80, 81, 1, 1, 1, 3, '2019-12-16 06:19:03', '2019-12-16 06:19:03', 'OOAD'),
(2, 20, 40, 30, 29, 2, 1, 1, 3, '2019-12-16 19:36:16', '2019-12-16 19:36:16', 'OOAD'),
(3, 40, 60, 50, 49, 3, 1, 1, 3, '2019-12-16 19:36:27', '2019-12-16 19:36:27', 'OOAD'),
(4, 50, 70, 60, 59, 4, 1, 1, 3, '2019-12-16 19:36:36', '2019-12-16 19:36:36', 'OOAD'),
(5, 50, 80, 60, 62, 5, 1, 1, 3, '2019-12-16 19:36:47', '2019-12-16 19:36:47', 'OOAD'),
(6, 70, 80, 90, 79, 6, 1, 1, 3, '2019-12-16 19:36:59', '2019-12-16 19:36:59', 'OOAD'),
(7, 90, 90, 90, 90, 7, 1, 1, 3, '2019-12-16 19:57:52', '2019-12-16 19:57:52', 'OOAD'),
(8, 90, 90, 90, 90, 8, 1, 1, 3, '2019-12-16 19:58:01', '2019-12-16 19:58:01', 'OOAD'),
(9, 80, 90, 70, 80, 9, 1, 1, 3, '2019-12-16 19:58:14', '2019-12-16 19:58:14', 'OOAD');

-- --------------------------------------------------------

--
-- Table structure for table `skor_points`
--

CREATE TABLE `skor_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `point` double DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sprint` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idTim` int(11) NOT NULL,
  `idSkorSprint` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skor_sprints`
--

CREATE TABLE `skor_sprints` (
  `id` int(10) UNSIGNED NOT NULL,
  `nilaiPoint` int(11) NOT NULL,
  `nilaiDosen` int(11) NOT NULL,
  `nilaiSprint` int(11) NOT NULL,
  `sprint` int(11) NOT NULL,
  `idTim` int(11) NOT NULL,
  `idNilaiFinal` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skor_sprints`
--

INSERT INTO `skor_sprints` (`id`, `nilaiPoint`, `nilaiDosen`, `nilaiSprint`, `sprint`, `idTim`, `idNilaiFinal`, `created_at`, `updated_at`) VALUES
(1, 0, 81, 0, 1, 1, 1, '2019-12-16 06:19:03', '2019-12-16 20:50:31'),
(2, 0, 29, 0, 2, 1, 1, '2019-12-16 19:36:16', '2019-12-16 20:50:32'),
(3, 0, 49, 0, 3, 1, 1, '2019-12-16 19:36:27', '2019-12-16 20:50:32'),
(4, 0, 59, 0, 4, 1, 1, '2019-12-16 19:36:36', '2019-12-16 20:50:32'),
(5, 40, 62, 90, 5, 1, 1, '2019-12-16 19:36:47', '2019-12-16 20:50:32'),
(6, 70, 79, 90, 6, 1, 1, '2019-12-16 19:36:59', '2019-12-16 20:50:32'),
(7, 0, 90, 0, 7, 1, 1, '2019-12-16 19:57:52', '2019-12-16 20:50:32'),
(8, 0, 90, 0, 8, 1, 1, '2019-12-16 19:58:01', '2019-12-16 20:50:32'),
(9, 0, 80, 0, 9, 1, 1, '2019-12-16 19:58:14', '2019-12-16 20:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_finals`
--
ALTER TABLE `nilai_finals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `skor_dosens`
--
ALTER TABLE `skor_dosens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skor_points`
--
ALTER TABLE `skor_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skor_sprints`
--
ALTER TABLE `skor_sprints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `nilai_finals`
--
ALTER TABLE `nilai_finals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `skor_dosens`
--
ALTER TABLE `skor_dosens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `skor_points`
--
ALTER TABLE `skor_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `skor_sprints`
--
ALTER TABLE `skor_sprints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
