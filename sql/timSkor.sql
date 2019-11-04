-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2019 at 08:54 PM
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
(21, '2019_11_01_025602_addnull2', 12);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_finals`
--

CREATE TABLE `nilai_finals` (
  `id` int(10) UNSIGNED NOT NULL,
  `finalNilaiSprint` int(11) DEFAULT NULL,
  `nilaiUts` int(11) DEFAULT NULL,
  `nilaiUas` int(11) DEFAULT NULL,
  `finalSkorTim` int(11) DEFAULT NULL,
  `idTim` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skor_dosens`
--

INSERT INTO `skor_dosens` (`id`, `KetepatanWaktu`, `Kelengkapan`, `KualitasHasil`, `TotalNilai`, `sprint`, `idUser`, `idTim`, `idSkorSprint`, `created_at`, `updated_at`) VALUES
(3, 90, 70, 60, 90, 1, 5, 5, 1, '2019-11-01 02:55:35', '2019-11-01 02:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `skor_points`
--

CREATE TABLE `skor_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `point` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sprint` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idTim` int(11) NOT NULL,
  `idSkorSprint` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skor_points`
--

INSERT INTO `skor_points` (`id`, `point`, `status`, `keterangan`, `sprint`, `idUser`, `idTim`, `idSkorSprint`, `created_at`, `updated_at`) VALUES
(3, 5, 'pertambahan', 'dapat bintang 1', 1, 3, 5, 1, '2019-11-01 02:56:48', '2019-11-01 02:56:49');

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
(1, 81, 90, 1, 1, 5, NULL, '2019-11-01 02:48:50', '2019-11-01 02:56:49'),
(2, 81, 0, 0, 3, 1, NULL, '2019-11-01 02:53:27', '2019-11-01 02:53:27');

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `nilai_finals`
--
ALTER TABLE `nilai_finals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `skor_dosens`
--
ALTER TABLE `skor_dosens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `skor_points`
--
ALTER TABLE `skor_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `skor_sprints`
--
ALTER TABLE `skor_sprints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
