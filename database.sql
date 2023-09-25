-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Sep 2023 pada 08.42
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofolio3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2023_09_10_052402_create_sections_table', 1),
(27, '2023_09_10_070736_create_projects_table', 1),
(28, '2023_09_10_074706_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `title`, `thumbnail`, `content`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Website sederhana', '5R8CG0wAfERlgTV4JukCYqsIsRuJJS-metaRGVzYWluIHRhbnBhIGp1ZHVsICg2KS5wbmc=-.png', '<p>djgwqvewqyf</p>', '\'https://www.instagram.com/valn_exy/\'', '2023-09-18 22:54:47', '2023-09-18 22:54:47'),
(2, 'Website sederhana', 'k1IlrmK0VmrJ5x3lJw66pgOv1Ux8bX-metaY29udG9oIHByb2plY3Qgd2Vic2l0ZSAoMSkucG5n-.png', '<p>qefqvwyud3qf</p>', '\'https://www.instagram.com/valn_exy/\'', '2023-09-18 22:55:08', '2023-09-18 22:55:08'),
(3, 'Website sederhana', 'HHOLg0MfxzptMpW0MwplJ9WaqpIuB6-metaY29udG9oIHByb2plY3Qgd2Vic2l0ZS5wbmc=-.png', '<p>qwdwqgfdywqgduiwqe</p>', '\'https://www.instagram.com/valn_exy/\'', '2023-09-18 22:55:26', '2023-09-18 22:55:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_as` enum('JUMBOTRON','ABOUT') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sections`
--

INSERT INTO `sections` (`id`, `title`, `thumbnail`, `content`, `post_as`, `created_at`, `updated_at`) VALUES
(1, 'Valen Ramadhan', '5Aqby0Nws4VvpnOSwokbLFbHyQ0bsX-metaRGVzYWluIHRhbnBhIGp1ZHVsLnBuZw==-.png', '<p>Web Development</p>', 'JUMBOTRON', '2023-09-18 22:53:01', '2023-09-18 22:53:01'),
(2, 'ABOUT', 'PayzyM2CIqYrHbVnnm8SIM8Icza13a-metaRGVzYWluIHRhbnBhIGp1ZHVsLnBuZw==-.png', '<p>Ini hanya contoh tentang saya mungkin nanti saya akan mengupdate lagi tentang saya jika web ini sudah 100% selesai.</p><p>&nbsp;Saya adalah seorang programmer, dan saya dengan bangga mempersembahkan portofolio kreatif saya. Dalam perjalanan saya, saya telah mendalami seni [atau bidang kerja Anda] dengan tekun dan berkomitmen untuk memberikan yang terbaik dalam setiap proyek yang saya ambil. Portofolio ini adalah refleksi dari dedikasi saya untuk mencapai hasil yang luar biasa dan menjadi sumber inspirasi bagi orang lain.&nbsp;</p>', 'ABOUT', '2023-09-18 22:54:24', '2023-09-18 23:16:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `label`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, '_site_name', 'judul situs', 'website sederhana', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(2, '_location', 'Alamat', 'jatiasih, bekasi, Indonesia', 'text', '2023-09-18 22:51:07', '2023-09-18 23:14:14'),
(3, '_youtube', 'Youtube', 'https://www.youtube.com/channel/UCqdDoWm6lGUtZZ4FGbpfY3A', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(4, '_instagram', 'Instagram', 'https://www.instagram.com/valn_exy/', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(5, '_whastapp', 'whatsapp', 'https://wa.me/08988668262?text=halo%saya%tau%kamu%dari%portofolionya', 'text', '2023-09-18 22:51:07', '2023-09-21 19:15:19'),
(6, '_facebook', 'Facebook', 'https://www.facebook.com/exynouz', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(7, '_ulangtahun', 'Ulang Tahun', '31 oktober 2005', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(8, '_website', 'Website', 'https://www.instagram.com/valn_exy/', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(9, '_Nohp', 'No Hp', '08988668262', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(10, '_kota', 'kota', 'Bekasi Pride', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(11, '_umur', 'umur', '18th', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(12, '_email', 'email', '311005bksvalen@gmail.com', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(13, '_tingkatan', 'tingkatan', 'junior', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(14, '_pekerjaan', 'pekerjaan', 'siswa', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(15, '_HTML', 'keahlian HTML', '80', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(16, '_CSS', 'keahlian CSS', '90', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(17, '_JS', 'keahlian JS', '40', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(18, '_PHP', 'keahlian PHP', '80', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(19, '_Wordpres', 'keahlian wordpres', '80', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07'),
(20, '_photoshop', 'keahlian photoshop', '80', 'text', '2023-09-18 22:51:07', '2023-09-18 22:51:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'v', 'v@gmail.com', NULL, '$2y$10$5QbwQlGA0Mv8IUsRYdZISuNCQoo3M.kvgei4K.gmEaF6P3Dwngbqa', NULL, '2023-09-18 22:51:44', '2023-09-18 22:51:44'),
(2, 'n', 'w@gmail.com', NULL, '$2y$10$3JuykpZq2EfoGrNUZr9FnuhlhWt65v5efita1JEWy7z8SSMyKoiga', NULL, '2023-09-24 21:28:40', '2023-09-24 21:28:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
