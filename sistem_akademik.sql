-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Des 2021 pada 07.26
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi_guru`
--

CREATE TABLE `absensi_guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `guru_id` int(11) NOT NULL,
  `kehadiran_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_card` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_guru` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `kode` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_lahir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `id_card`, `nip`, `nama_guru`, `mapel_id`, `kode`, `jk`, `telp`, `tmp_lahir`, `tgl_lahir`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '00001', '192396680806680', 'Dewi', 1, 'BI1', 'P', '085544443333', 'Bojonegoro', '1994-11-23', 'uploads/guru/36451425112021_P.jfif', '2021-11-25 07:45:36', '2021-11-25 07:45:36', NULL),
(2, '00002', '192396680806681', 'Anwar', 2, 'MTK', 'L', '085544441111', 'Bojonegoro', '1990-11-18', 'uploads/guru/31561525112021_l.jfif', '2021-11-25 08:56:31', '2021-11-25 08:56:31', NULL),
(3, '00003', '62983918239891', 'Heri', 2, '085', 'L', '085122223324', 'Malang', '1999-12-15', 'uploads/guru/35251431012020_male.jpg', '2021-11-25 20:10:15', '2021-12-02 02:53:28', NULL),
(4, '00004', '62983918239891', 'Pai', 3, 'IPA', 'P', '085122224444', 'Malang', '1990-01-01', 'uploads/guru/35251431012020_male.jpg', '2021-11-25 20:17:42', '2021-11-25 20:24:16', NULL),
(5, '00005', '629839182398', 'Yui', 4, 'API', 'P', '085122225555', 'Surabaya', NULL, 'uploads/guru/23171022042020_female.jpg', '2021-11-25 20:27:19', '2021-12-02 02:56:09', '2021-12-02 02:56:09'),
(6, '00006', '629839182398', 'Fei', 3, 'PAI', 'L', '085122226666', 'Surabaya', NULL, 'uploads/guru/35251431012020_male.jpg', '2021-11-25 20:28:33', '2021-11-25 20:28:33', NULL),
(8, '00007', '629839182375', 'Selasa', 3, 'IP4', 'L', '085122227777', 'Malang', '1990-08-21', 'uploads/guru/35251431012020_male.jpg', '2021-11-25 20:32:41', '2021-11-25 20:32:51', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id`, `nama_hari`, `created_at`, `updated_at`) VALUES
(1, 'Senin', '2021-11-25 07:32:43', '2021-11-25 07:32:43'),
(2, 'Selasa', '2021-11-25 07:32:44', '2021-11-25 07:32:44'),
(3, 'Rabu', '2021-11-25 07:32:45', '2021-11-25 07:32:45'),
(4, 'Kamis', '2021-11-25 07:32:45', '2021-11-25 07:32:45'),
(5, 'Jum\'at', '2021-11-25 07:32:45', '2021-11-25 07:32:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hari_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari_id`, `kelas_id`, `mapel_id`, `guru_id`, `jam_mulai`, `jam_selesai`, `ruang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, 1, 1, '07:00:00', '08:30:00', 2, '2021-11-25 08:52:46', '2021-11-25 08:52:46', NULL),
(2, 5, 2, 2, 2, '07:00:00', '08:30:00', 3, '2021-11-25 08:58:34', '2021-11-25 08:58:34', NULL),
(3, 2, 2, 1, 1, '10:01:00', '12:01:00', 11, '2021-11-25 17:18:58', '2021-11-25 17:55:40', NULL),
(4, 2, 1, 2, 2, '10:01:00', '11:01:00', 29, '2021-11-25 17:59:01', '2021-11-26 04:16:06', '2021-11-26 04:16:06'),
(5, 2, 1, 1, 1, '10:01:00', '11:01:00', 11, '2021-11-25 18:01:14', '2021-11-25 18:21:40', '2021-11-25 18:21:40'),
(6, 2, 1, 2, 2, '10:01:00', '11:01:00', 7, '2021-11-25 18:01:55', '2021-11-25 18:22:12', '2021-11-25 18:22:12'),
(7, 2, 1, 1, 1, '10:01:00', '11:01:00', 7, '2021-11-25 18:06:50', '2021-11-25 18:09:55', '2021-11-25 18:09:55'),
(8, 2, 1, 1, 1, '10:01:00', '11:01:00', 7, '2021-11-25 18:09:37', '2021-11-25 18:18:56', '2021-11-25 18:18:56'),
(9, 2, 1, 1, 1, '10:01:00', '11:01:00', 7, '2021-11-25 18:52:13', '2021-11-26 04:12:03', '2021-11-26 04:12:03'),
(10, 2, 1, 1, 1, '10:01:00', '11:01:00', 7, '2021-11-26 04:11:45', '2021-12-18 08:28:14', '2021-12-18 08:28:14'),
(11, 1, 2, 2, 2, '07:00:00', '09:00:00', 10, '2021-12-18 08:27:57', '2021-12-18 08:27:57', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ket` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`id`, `ket`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Hadir', '3C0', '2021-11-25 07:32:45', '2021-11-25 07:32:45'),
(2, 'Izin', '0CF', '2021-11-25 07:32:45', '2021-11-25 07:32:45'),
(3, 'Bertugas Keluar', 'F90', '2021-11-25 07:32:46', '2021-11-25 07:32:46'),
(4, 'Sakit', 'FF0', '2021-11-25 07:32:46', '2021-11-25 07:32:46'),
(5, 'Terlambat', '7F0', '2021-11-25 07:32:46', '2021-11-25 07:32:46'),
(6, 'Tanpa Keterangan', 'F00', '2021-11-25 07:32:47', '2021-11-25 07:32:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `paket_id`, `guru_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KELAS 01', 2, 1, '2021-11-25 07:48:26', '2021-11-25 07:48:26', NULL),
(2, 'KELAS 02', 5, 2, '2021-11-25 08:58:06', '2021-11-25 08:58:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int(11) NOT NULL,
  `kelompok` enum('A','B','C') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`, `paket_id`, `kelompok`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bahasa Indonesia', 9, 'A', '2021-11-25 07:37:02', '2021-11-25 07:37:02', NULL),
(2, 'Matematika', 9, 'A', '2021-11-25 07:37:19', '2021-11-25 07:37:19', NULL),
(3, 'IPA', 9, 'A', '2021-11-25 07:37:28', '2021-11-25 07:37:28', NULL),
(4, 'IPS', 9, 'A', '2021-11-25 07:37:37', '2021-11-25 07:37:37', NULL),
(7, 'Bahasa Arab', 5, 'B', '2021-12-27 15:44:50', '2021-12-27 15:45:07', '2021-12-27 15:45:07');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_12_092809_create_hari_table', 1),
(5, '2020_03_12_092854_create_guru_table', 1),
(6, '2020_03_12_092926_create_absensi_guru_table', 1),
(7, '2020_03_12_092941_create_jadwal_table', 1),
(8, '2020_03_12_092953_create_kehadiran_table', 1),
(9, '2020_03_12_093010_create_kelas_table', 1),
(10, '2020_03_12_093018_create_mapel_table', 1),
(11, '2020_03_12_093027_create_nilai_table', 1),
(12, '2020_03_12_093036_create_paket_table', 1),
(13, '2020_03_12_093050_create_pengumuman_table', 1),
(14, '2020_03_12_093102_create_rapot_table', 1),
(15, '2020_03_12_093117_create_ruang_table', 1),
(16, '2020_03_12_093130_create_siswa_table', 1),
(17, '2020_03_16_102220_create_ulangan_table', 1),
(18, '2020_04_07_094355_create_sikap_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` int(11) NOT NULL,
  `kkm` int(11) NOT NULL DEFAULT 70,
  `deskripsi_a` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_b` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_c` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_d` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `guru_id`, `kkm`, `deskripsi_a`, `deskripsi_b`, `deskripsi_c`, `deskripsi_d`, `created_at`, `updated_at`) VALUES
(1, 1, 70, NULL, NULL, NULL, NULL, '2021-11-25 07:45:36', '2021-11-25 07:45:36'),
(2, 2, 70, NULL, NULL, NULL, NULL, '2021-11-25 08:56:31', '2021-11-25 08:56:31'),
(3, 3, 70, NULL, NULL, NULL, NULL, '2021-11-25 20:10:15', '2021-11-25 20:10:15'),
(4, 4, 70, NULL, NULL, NULL, NULL, '2021-11-25 20:17:42', '2021-11-25 20:17:42'),
(5, 5, 70, NULL, NULL, NULL, NULL, '2021-11-25 20:27:19', '2021-11-25 20:27:19'),
(6, 6, 70, NULL, NULL, NULL, NULL, '2021-11-25 20:28:33', '2021-11-25 20:28:33'),
(7, 7, 70, NULL, NULL, NULL, NULL, '2021-11-25 20:30:38', '2021-11-25 20:30:38'),
(8, 8, 70, NULL, NULL, NULL, NULL, '2021-11-25 20:32:41', '2021-11-25 20:32:41'),
(9, 9, 70, NULL, NULL, NULL, NULL, '2021-12-27 10:55:28', '2021-12-27 10:55:28'),
(10, 10, 70, NULL, NULL, NULL, NULL, '2021-12-27 11:07:38', '2021-12-27 11:07:38'),
(11, 11, 70, NULL, NULL, NULL, NULL, '2021-12-27 11:19:18', '2021-12-27 11:19:18'),
(12, 12, 70, NULL, NULL, NULL, NULL, '2021-12-27 11:23:06', '2021-12-27 11:23:06'),
(13, 13, 70, NULL, NULL, NULL, NULL, '2021-12-27 11:23:51', '2021-12-27 11:23:51'),
(14, 14, 70, NULL, NULL, NULL, NULL, '2021-12-27 11:25:02', '2021-12-27 11:25:02'),
(15, 15, 70, NULL, NULL, NULL, NULL, '2021-12-27 11:53:06', '2021-12-27 11:53:06'),
(16, 16, 70, NULL, NULL, NULL, NULL, '2021-12-27 12:03:07', '2021-12-27 12:03:07'),
(17, 17, 70, NULL, NULL, NULL, NULL, '2021-12-27 13:10:15', '2021-12-27 13:10:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ket` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'Bisnis kontruksi dan Properti', '2021-11-25 07:32:48', '2021-11-25 07:32:48'),
(2, 'Desain Permodelan dan Informasi Bangunan', '2021-11-25 07:32:48', '2021-11-25 07:32:48'),
(3, 'Elektronika Industri', '2021-11-25 07:32:49', '2021-11-25 07:32:49'),
(4, 'Otomasi Industri', '2021-11-25 07:32:49', '2021-11-25 07:32:49'),
(5, 'Teknik Pemesinan', '2021-11-25 07:32:49', '2021-11-25 07:32:49'),
(6, 'Teknik dan Bisnis Sepeda Motor', '2021-11-25 07:32:49', '2021-11-25 07:32:49'),
(7, 'Rekayasa Perangkat Lunak', '2021-11-25 07:32:49', '2021-11-25 07:32:49'),
(8, 'Teknik Pengelasan', '2021-11-25 07:32:50', '2021-11-25 07:32:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opsi` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `opsi`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'pengumuman', '<p>Libur Semester Ganjil 2020/2021</p><p>Libur Semester Genap 2020/2021</p>', '2021-11-25 07:32:48', '2021-11-25 18:44:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapot`
--

CREATE TABLE `rapot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `p_nilai` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_predikat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_nilai` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_predikat` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ruang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id`, `nama_ruang`, `created_at`, `updated_at`) VALUES
(1, 'Ruang 01', '2021-11-25 07:32:50', '2021-11-25 07:32:50'),
(2, 'Ruang 02', '2021-11-25 07:32:50', '2021-11-25 07:32:50'),
(3, 'Ruang 03', '2021-11-25 07:32:50', '2021-11-25 07:32:50'),
(4, 'Ruang 04', '2021-11-25 07:32:51', '2021-11-25 07:32:51'),
(5, 'Ruang 05', '2021-11-25 07:32:51', '2021-11-25 07:32:51'),
(6, 'Ruang 06', '2021-11-25 07:32:51', '2021-11-25 07:32:51'),
(7, 'Ruang 07', '2021-11-25 07:32:52', '2021-11-25 07:32:52'),
(8, 'Ruang 08', '2021-11-25 07:32:52', '2021-11-25 07:32:52'),
(9, 'Ruang 09', '2021-11-25 07:32:52', '2021-11-25 07:32:52'),
(10, 'Ruang 10', '2021-11-25 07:32:52', '2021-11-25 07:32:52'),
(11, 'Ruang 11', '2021-11-25 07:32:53', '2021-11-25 07:32:53'),
(12, 'Ruang 12', '2021-11-25 07:32:53', '2021-11-25 07:32:53'),
(13, 'Ruang 13', '2021-11-25 07:32:53', '2021-11-25 07:32:53'),
(14, 'Ruang 14', '2021-11-25 07:32:53', '2021-11-25 07:32:53'),
(15, 'Ruang 15', '2021-11-25 07:32:54', '2021-11-25 07:32:54'),
(16, 'Ruang 16', '2021-11-25 07:32:54', '2021-11-25 07:32:54'),
(17, 'Ruang 17', '2021-11-25 07:32:54', '2021-11-25 07:32:54'),
(18, 'Ruang 18', '2021-11-25 07:32:54', '2021-11-25 07:32:54'),
(19, 'Ruang 19', '2021-11-25 07:32:55', '2021-11-25 07:32:55'),
(20, 'Ruang 20', '2021-11-25 07:32:55', '2021-11-25 07:32:55'),
(21, 'Ruang 21', '2021-11-25 07:32:55', '2021-11-25 07:32:55'),
(22, 'Ruang 22', '2021-11-25 07:32:56', '2021-11-25 07:32:56'),
(23, 'Ruang 23', '2021-11-25 07:32:56', '2021-11-25 07:32:56'),
(24, 'Ruang 24', '2021-11-25 07:32:56', '2021-11-25 07:32:56'),
(25, 'Ruang 25', '2021-11-25 07:32:56', '2021-11-25 07:32:56'),
(26, 'Ruang 26', '2021-11-25 07:32:56', '2021-11-25 07:32:56'),
(27, 'Ruang 27', '2021-11-25 07:32:57', '2021-11-25 07:32:57'),
(28, 'Ruang 28', '2021-11-25 07:32:57', '2021-11-25 07:32:57'),
(29, 'Ruang 29', '2021-11-25 07:32:57', '2021-11-25 07:32:57'),
(30, 'Ruang 30', '2021-11-25 07:32:57', '2021-11-25 07:32:57'),
(31, 'Ruang 31', '2021-11-25 07:32:58', '2021-11-25 07:32:58'),
(32, 'Ruang 32', '2021-11-25 07:32:58', '2021-11-25 07:32:58'),
(33, 'Ruang 33', '2021-11-25 07:32:58', '2021-11-25 07:32:58'),
(34, 'Ruang 34', '2021-11-25 07:32:58', '2021-11-25 07:32:58'),
(35, 'Ruang 35', '2021-11-25 07:32:58', '2021-11-25 07:32:58'),
(36, 'Ruang 36', '2021-11-25 07:32:59', '2021-11-25 07:32:59'),
(37, 'Ruang 37', '2021-11-25 07:32:59', '2021-11-25 07:32:59'),
(38, 'Ruang 38', '2021-11-25 07:33:00', '2021-11-25 07:33:00'),
(39, 'Ruang 39', '2021-11-25 07:33:00', '2021-11-25 07:33:00'),
(40, 'Ruang 40', '2021-11-25 07:33:00', '2021-11-25 07:33:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sikap`
--

CREATE TABLE `sikap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `sikap_1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sikap_2` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sikap_3` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_induk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_lahir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `no_induk`, `nis`, `nama_siswa`, `jk`, `telp`, `tmp_lahir`, `tgl_lahir`, `foto`, `kelas_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '11111110', '680243680432608432', 'Farid', 'L', NULL, 'Bojonegoro', '2009-11-17', 'uploads/siswa/21531425112021_siswa l.png', 1, '2021-11-25 07:53:21', '2021-11-25 07:53:21', NULL),
(2, '1357913579', '9753197531', 'Koin', 'P', NULL, 'Bojonegoro', '2003-12-30', 'uploads/siswa/54282027122021_siswa p.png', 2, '2021-12-27 13:28:54', '2021-12-27 13:28:54', NULL),
(3, '43211234', '65433456', 'Keisa', 'L', '085544443333', 'Bojonegoro', '2002-02-15', 'uploads/siswa/50292027122021_siswa l.png', 2, '2021-12-27 13:29:50', '2021-12-27 13:29:50', NULL),
(4, '87655678', '23455432', 'Nina', 'P', '085124455', 'Bojonegoro', '2001-02-11', 'uploads/siswa/45302027122021_siswa p.png', 1, '2021-12-27 13:30:45', '2021-12-27 13:30:45', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulangan`
--

CREATE TABLE `ulangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `ulha_1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulha_2` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uts` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulha_3` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ulangan`
--

INSERT INTO `ulangan` (`id`, `siswa_id`, `kelas_id`, `guru_id`, `mapel_id`, `ulha_1`, `ulha_2`, `uts`, `ulha_3`, `uas`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '1', '1', '1', '3', NULL, '2021-12-27 17:39:34', '2021-12-27 17:39:51');

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
  `role` enum('Admin','Guru','Siswa','Operator') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_induk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `no_induk`, `id_card`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$qXdPg8B7dxfY1LsQVvF5t.7CFQFjj/s0xGUytw5FP7p542rxDe2bu', 'Admin', NULL, NULL, 'x5CuIjmQQXHtjsD0HgehptBlKaxXevD0XU2CNhYkzAxBI8A7CkPOcw7jlBfM', '2021-11-25 07:33:01', '2021-11-25 07:33:01', NULL),
(2, 'op', 'operator@gmail.com', NULL, '$2y$10$PF8GLUQFp04AHFTuX/HDt.4FpkiBKBM6FQDJculnLb1A9dvRsxjWu', 'Operator', NULL, NULL, NULL, '2021-11-25 07:36:08', '2021-11-25 07:36:08', NULL),
(3, 'Dewi', 'dewi@gmail.com', NULL, '$2y$10$Gu1l5u1hHegfvP7m8.OoyOAXUdBIXL3QRS7f59MdP7LjmOEmyXo/m', 'Guru', NULL, '00001', NULL, '2021-12-27 15:49:30', '2021-12-27 15:49:30', NULL),
(4, 'Anwar', 'anwar@gmail.com', NULL, '$2y$10$SBw.o1G1AK7Sxm0idQ8Oeu4GApnz/BZeO2QnpB.oYLdW89TsP3lcy', 'Guru', NULL, '00002', NULL, '2021-12-27 15:50:10', '2021-12-27 15:50:10', NULL),
(5, 'farid', 'farid@gmail.com', NULL, '$2y$10$w00QKGwIwB4BrMUtR3lel.dil.vBc/0B9SsUfHwjbJHA/RZCyk9ze', 'Siswa', '11111110', NULL, NULL, '2021-12-27 15:51:00', '2021-12-27 15:51:00', NULL),
(6, 'koin', 'koin@gmail.com', NULL, '$2y$10$35aU4/GdDI.gkS4KmlJtgO4wcIrBeTsyV/gSepN76wXVqFUEdLfnu', 'Siswa', '1357913579', NULL, NULL, '2021-12-27 15:52:03', '2021-12-27 15:52:03', NULL),
(7, 'keisa', 'keisa@gmail.com', NULL, '$2y$10$gBKu3mLU1zrfEdUhk6SBD.X/nYT6wdhachmRTmrCArKajsChx95fO', 'Siswa', '43211234', NULL, NULL, '2021-12-27 15:52:28', '2021-12-27 15:52:28', NULL),
(10, 'nina', 'nina@gmail.com', NULL, '$2y$10$1lxGkIbqUUvOF3vpepeM4u2QrZMY4lcq1BNO/3fjDGE3xgzJNgqcS', 'Siswa', '87655678', NULL, NULL, '2021-12-27 16:30:15', '2021-12-27 16:30:23', '2021-12-27 16:30:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi_guru`
--
ALTER TABLE `absensi_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rapot`
--
ALTER TABLE `rapot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sikap`
--
ALTER TABLE `sikap`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ulangan`
--
ALTER TABLE `ulangan`
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
-- AUTO_INCREMENT untuk tabel `absensi_guru`
--
ALTER TABLE `absensi_guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rapot`
--
ALTER TABLE `rapot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `sikap`
--
ALTER TABLE `sikap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `ulangan`
--
ALTER TABLE `ulangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
