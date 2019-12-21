-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2019 at 03:07 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scoreTim`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen_sprint`
--

CREATE TABLE `dosen_sprint` (
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `sprint_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `nama`, `user_id`) VALUES
(1, 'OOAD', 1),
(2, 'MENPROV', 2),
(3, 'MOBILE', 3);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_20_222547_create_tims_table', 1),
(4, '2019_12_20_223814_create_nilai_dosens_table', 2),
(5, '2019_12_20_230729_relationship', 3),
(6, '2019_12_20_231915_create_nilai_points_table', 4),
(7, '2019_12_20_232256_create_nilai_sprints_table', 5),
(8, '2019_12_20_234931_create_nilai_tims_table', 6),
(9, '2019_12_20_235719_create_nilai_ujians_table', 7),
(10, '2019_12_21_000257_edit_nilai_dosen', 8),
(11, '2019_12_21_000837_manytomany', 9),
(12, '2019_12_21_001756_manytomanyre', 10),
(13, '2019_12_21_021529_editujian', 11),
(14, '2019_12_21_024052_addcolumn', 12),
(15, '2019_12_21_025109_addcolumn2', 13),
(16, '2019_12_21_052221_addmatkul', 14),
(17, '2019_12_21_053006_addsometables', 15);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_dosens`
--

CREATE TABLE `nilai_dosens` (
  `id` int(10) UNSIGNED NOT NULL,
  `KetepatanWaktu` double(8,2) NOT NULL,
  `Kelengkapan` double(8,2) NOT NULL,
  `KualitasHasil` double(8,2) NOT NULL,
  `TotalNilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tim_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `matkul_id` int(10) UNSIGNED NOT NULL,
  `sprint_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai_dosens`
--

INSERT INTO `nilai_dosens` (`id`, `KetepatanWaktu`, `Kelengkapan`, `KualitasHasil`, `TotalNilai`, `tim_id`, `user_id`, `matkul_id`, `sprint_id`) VALUES
(1, 90.00, 80.00, 80.00, '90', 1, 1, 1, 1),
(2, 90.00, 90.00, 90.00, '90', 1, 1, 1, 1),
(3, 80.00, 9.00, 90.00, '61.7', 1, 1, 1, 1),
(4, 80.00, 9.00, 90.00, '61.7', 1, 1, 1, 1),
(5, 85.70, 9.00, 90.00, '63.980000000000004', 1, 1, 1, 1),
(6, 85.70, 9.00, 90.00, '64', 1, 1, 1, 1),
(7, 85.70, 78.50, 90.00, '85', 1, 1, 1, 1),
(8, 85.70, 78.50, 90.00, '84.83', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_points`
--

CREATE TABLE `nilai_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` double(8,2) NOT NULL,
  `point` double(8,2) NOT NULL,
  `tim_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sprint_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai_points`
--

INSERT INTO `nilai_points` (`id`, `status`, `keterangan`, `point`, `tim_id`, `user_id`, `sprint_id`) VALUES
(1, '100', 80.00, 90.00, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_sprints`
--

CREATE TABLE `nilai_sprints` (
  `id` int(10) UNSIGNED NOT NULL,
  `nilai` double(8,2) NOT NULL,
  `tim_id` int(10) UNSIGNED NOT NULL,
  `sprint_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_tims`
--

CREATE TABLE `nilai_tims` (
  `id` int(10) UNSIGNED NOT NULL,
  `nilaiTim` double(8,2) NOT NULL,
  `tim_id` int(10) UNSIGNED NOT NULL
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
-- Table structure for table `point_sprint`
--

CREATE TABLE `point_sprint` (
  `point_id` int(10) UNSIGNED NOT NULL,
  `sprint_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sprint`
--

CREATE TABLE `sprint` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sprint`
--

INSERT INTO `sprint` (`id`, `nama`) VALUES
(1, 'sprint 1'),
(2, 'sprint 2'),
(3, 'sprint 3'),
(4, 'sprint 4'),
(5, 'sprint 5'),
(6, 'sprint 6'),
(7, 'sprint 7'),
(8, 'sprint 8'),
(9, 'sprint 9'),
(10, 'sprint 10'),
(11, 'uts'),
(12, 'uas');

-- --------------------------------------------------------

--
-- Table structure for table `sprint_nilaiTim`
--

CREATE TABLE `sprint_nilaiTim` (
  `sprint_id` int(10) UNSIGNED NOT NULL,
  `nilaiTim_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tims`
--

CREATE TABLE `tims` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tims`
--

INSERT INTO `tims` (`id`, `nama`, `semester`) VALUES
(1, 'kelompok 1', 20191),
(2, 'kelompok 2', 20191),
(3, 'kelompok 3', 20191),
(4, 'kelompok 4', 20191),
(5, 'kelompok 5', 20191);

-- --------------------------------------------------------

--
-- Table structure for table `user2`
--

CREATE TABLE `user2` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user2`
--

INSERT INTO `user2` (`id`, `nama`, `status`) VALUES
(1, 'fikri', 'dosen'),
(2, 'dian', 'dosen'),
(3, 'atrisa', 'dosen'),
(4, 'mairat', 'asdos'),
(5, 'everet', 'mahasiswa');

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
-- Indexes for table `dosen_sprint`
--
ALTER TABLE `dosen_sprint`
  ADD KEY `dosen_sprint_dosen_id_foreign` (`dosen_id`),
  ADD KEY `dosen_sprint_sprint_id_foreign` (`sprint_id`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mata_kuliah_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_dosens`
--
ALTER TABLE `nilai_dosens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_dosens_tim_id_foreign` (`tim_id`),
  ADD KEY `nilai_dosens_user_id_foreign` (`user_id`),
  ADD KEY `nilai_dosens_matkul_id_foreign` (`matkul_id`),
  ADD KEY `nilai_dosens_sprint_id_foreign` (`sprint_id`);

--
-- Indexes for table `nilai_points`
--
ALTER TABLE `nilai_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_points_tim_id_foreign` (`tim_id`),
  ADD KEY `nilai_points_user_id_foreign` (`user_id`),
  ADD KEY `nilai_points_sprint_id_foreign` (`sprint_id`);

--
-- Indexes for table `nilai_sprints`
--
ALTER TABLE `nilai_sprints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_sprints_tim_id_foreign` (`tim_id`),
  ADD KEY `nilai_sprints_sprint_id_foreign` (`sprint_id`);

--
-- Indexes for table `nilai_tims`
--
ALTER TABLE `nilai_tims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_tims_tim_id_foreign` (`tim_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `point_sprint`
--
ALTER TABLE `point_sprint`
  ADD KEY `point_sprint_point_id_foreign` (`point_id`),
  ADD KEY `point_sprint_sprint_id_foreign` (`sprint_id`);

--
-- Indexes for table `sprint`
--
ALTER TABLE `sprint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sprint_nilaiTim`
--
ALTER TABLE `sprint_nilaiTim`
  ADD KEY `sprint_nilaitim_sprint_id_foreign` (`sprint_id`),
  ADD KEY `sprint_nilaitim_nilaitim_id_foreign` (`nilaiTim_id`);

--
-- Indexes for table `tims`
--
ALTER TABLE `tims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user2`
--
ALTER TABLE `user2`
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
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `nilai_dosens`
--
ALTER TABLE `nilai_dosens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nilai_points`
--
ALTER TABLE `nilai_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nilai_sprints`
--
ALTER TABLE `nilai_sprints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nilai_tims`
--
ALTER TABLE `nilai_tims`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sprint`
--
ALTER TABLE `sprint`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tims`
--
ALTER TABLE `tims`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user2`
--
ALTER TABLE `user2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen_sprint`
--
ALTER TABLE `dosen_sprint`
  ADD CONSTRAINT `dosen_sprint_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `nilai_dosens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dosen_sprint_sprint_id_foreign` FOREIGN KEY (`sprint_id`) REFERENCES `nilai_sprints` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user2` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai_dosens`
--
ALTER TABLE `nilai_dosens`
  ADD CONSTRAINT `nilai_dosens_matkul_id_foreign` FOREIGN KEY (`matkul_id`) REFERENCES `mata_kuliah` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_dosens_sprint_id_foreign` FOREIGN KEY (`sprint_id`) REFERENCES `sprint` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_dosens_tim_id_foreign` FOREIGN KEY (`tim_id`) REFERENCES `tims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_dosens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user2` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai_points`
--
ALTER TABLE `nilai_points`
  ADD CONSTRAINT `nilai_points_sprint_id_foreign` FOREIGN KEY (`sprint_id`) REFERENCES `sprint` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_points_tim_id_foreign` FOREIGN KEY (`tim_id`) REFERENCES `tims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_points_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user2` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai_sprints`
--
ALTER TABLE `nilai_sprints`
  ADD CONSTRAINT `nilai_sprints_sprint_id_foreign` FOREIGN KEY (`sprint_id`) REFERENCES `sprint` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_sprints_tim_id_foreign` FOREIGN KEY (`tim_id`) REFERENCES `tims` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai_tims`
--
ALTER TABLE `nilai_tims`
  ADD CONSTRAINT `nilai_tims_tim_id_foreign` FOREIGN KEY (`tim_id`) REFERENCES `tims` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `point_sprint`
--
ALTER TABLE `point_sprint`
  ADD CONSTRAINT `point_sprint_point_id_foreign` FOREIGN KEY (`point_id`) REFERENCES `nilai_points` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `point_sprint_sprint_id_foreign` FOREIGN KEY (`sprint_id`) REFERENCES `nilai_sprints` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sprint_nilaiTim`
--
ALTER TABLE `sprint_nilaiTim`
  ADD CONSTRAINT `sprint_nilaitim_nilaitim_id_foreign` FOREIGN KEY (`nilaiTim_id`) REFERENCES `nilai_tims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sprint_nilaitim_sprint_id_foreign` FOREIGN KEY (`sprint_id`) REFERENCES `nilai_sprints` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
