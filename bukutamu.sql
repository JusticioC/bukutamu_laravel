-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2023 pada 11.00
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bukutamu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'adminkominfo', 'e97a658231588cda40dc4d4483ad0115');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_11_051130_add_created_at_to_tbl_pengunjung', 2),
(6, '2023_07_11_111305_add_default_value_to_tanggal_column', 3),
(7, '2023_07_12_013410_add_default_value_to_tanggal_column', 4),
(8, '2023_07_12_014509_add_created_at_to_tbl_pengunjung', 5),
(9, '2023_07_14_023606_add_updated_at_to_tbl_pengunjung', 6),
(10, '2023_07_14_030236_add_role_to_users', 7),
(11, '2023_07_14_041806_add_opd_id_to_users', 8),
(12, '2023_07_14_042917_add_opd_id_to_tbl_pengunjung', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `opd`
--

CREATE TABLE `opd` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nohp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `opd`
--

INSERT INTO `opd` (`id`, `nama`, `alamat`, `email`, `nohp`, `created_at`, `updated_at`) VALUES
(1, 'Badan Penanggulangan Bencana Daerah', 'Jl. Soekarno Hatta No. 20', 'bpbd.purbalinggakab.go.id@gmail.com', '(0281) 8964555', '2023-07-14 05:11:12', '2023-07-17 11:15:36'),
(3, 'Kantor Kesatuan Bangsa dan Politik', 'Jl. Jambu Karang No. 2', 'kesbangpol.purbalinggakab.go.id@gmail.com', '(0281) 893117', NULL, '2023-07-18 01:28:59'),
(4, 'Inspektorat Daerah', 'Jl. Letkol Isdiman No. 73 B Purbalingga', 'inspektorat.purbalinggakab.go.id@gmail.com', '(0281) 891022', '2023-07-17 00:17:49', '2023-07-18 01:29:11'),
(6, 'Dinas Lingkungan Hidup', 'Jl. Letkol Isdiman No. 117', 'dlh.purbalinggakab.go.id@gmail.com', '(0281)891065', '2023-07-17 11:18:18', '2023-07-18 01:28:42'),
(7, 'Dinas Komunikasi dan Informatika', 'Jl. Letkol Isdiman No. 17A', 'dinkominfo.purbalinggakab@gmail.com', '(0281) 8902091', '2023-07-18 01:23:50', '2023-07-18 01:23:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `nama` varchar(100) NOT NULL,
  `tanggal` date NOT NULL DEFAULT curdate(),
  `jenkel` char(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(13) NOT NULL,
  `email` text NOT NULL,
  `maksud` varchar(100) NOT NULL,
  `saran` varchar(100) NOT NULL,
  `id_opd` int(10) UNSIGNED DEFAULT NULL,
  `id_tamu` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`nama`, `tanggal`, `jenkel`, `alamat`, `nohp`, `email`, `maksud`, `saran`, `id_opd`, `id_tamu`, `created_at`, `updated_at`) VALUES
('SUNARKO', '2018-07-03', 'Laki - Laki', 'DINDIKBUD PURBALINGGA', '085224690989', '-', 'KONSULTASI SIRUP', 'TINGKATKAN PELAYANAN', NULL, 12, NULL, NULL),
('SOKHEH', '2018-07-07', 'Laki - Laki', 'Bag. Umum Setda Purbalingga', '081327417705', '-', 'konsultasi SIRUP', '-', NULL, 13, NULL, NULL),
('Ananto Pratomo', '2018-07-07', 'Laki - Laki', 'Jl.Letkol Isdiman No 73 B', '089649669965', 'pratomo0107@gmail.com', 'Konfirmasi Data', 'mudah2 an  e guess book ini bisa dikembangkan ke OPD lain...', NULL, 14, NULL, NULL),
('WIDI ASMOKO', '2018-07-11', 'Laki - Laki', 'PDAM PURBALINGGA', '081226788333', 'WIDI_ASMOKO@YAHOO.CO.ID', 'MENANYAKAN SISTEM SPSE NYA SUDAH VERSI 4 APA BELUM KARENA AKAN MENGGUNAKAN TENDER CEPAT', '', NULL, 15, NULL, NULL),
('nur azizah erlita', '2018-07-11', 'Perempuan', 'kelurahan purbalingga kidul', '085222575047', 'nurazizaherlita@yahoo.com', 'konsultasi terkait pembuatan website kelurahan', 'terima kasih tim bidang informatika atas bantuannya memfasilitasi kami membuat website', NULL, 16, NULL, NULL),
('anang tedy asmoro, S. Farm., Apt', '2018-07-11', 'Laki - Laki', 'Jl. letnan Kusni Rt 03 Rw 06 Kelurahan Bancar Purbalingga', '081327687471', 'anangtedyasmoro@gmail.com', 'Konsultasi Pengadaan Ecatalog di bawah pengadaan 200 Juta', '-', NULL, 17, NULL, NULL),
('PRIYO DIDI TAMTAMA, A.Md.', '2018-07-11', 'Laki - Laki', 'Kecamatan Kalimanah', '08112766999', 'dydytama13@gmail.com', 'konsultasi aplikasi SIRUP dan Permohonan PPK, PP', 'perlu diadakanya sosialisasi atau bintek dg adanya sistem yg sesuai dg perpres yg terbaru..', NULL, 18, NULL, NULL),
('Ratnawati Dewi', '2018-07-14', 'Perempuan', 'Bagian Pemerintahan Setda Purbalingga', '081548038380', 'ratn4dewi@gmsil.com', 'Konsultasi terkait pembuatan SIM Kerjasama', '', NULL, 19, NULL, NULL),
('GALIH BUDI KURNIAWAN', '2018-07-19', 'Laki - Laki', 'Dinas Perhubungan \r\nJl. Raya Kaligondang Km 2,4 Purbalingga', '085291250599', 'braling_putra@yahoo.co.id', 'Koordinasi Upload Dokumen SAKIP', '', NULL, 20, NULL, NULL),
('Suprapto', '2018-07-26', 'Laki - Laki', 'Dinas Perhubungan', '085875325671', 'dinhub@purbalinggakab.go.id', 'Permohonan reset password PPK DINHUB dan menerima user dan Password PPK DINHUB', 'Pelayanan  Baik, perlu ditingkatkan lagi', NULL, 21, NULL, NULL),
('kristianto', '2018-07-26', 'Laki - Laki', 'Perum Griya Perwira Asri Blok H2 No.10 Padamara, Purbalingga', '085866840717', 'krissardi@gmail.com', 'konsultasi', 'terus tingkatkan', NULL, 22, NULL, NULL),
('Rahadian', '2018-07-26', 'Laki - Laki', 'Purbalingga wetan', '089626160868', 'fnatic.rahadian@gmail.com', 'Silaturahmi dengan Pak oyong dan membetulkan cctv', 'mungkin meja tamu perlu disediakan snack permen yora dll :D', NULL, 23, NULL, NULL),
('yuli sulistiyorini', '2018-07-27', 'Perempuan', 'puskesmas karangreja kec karangreja', '081328730242', 'sulistiyorini78@gmail.com', 'menanyakan permasalahan upload pembelian obat', '', NULL, 24, NULL, NULL),
('GALIH BUDI KURNIAWAN', '2018-07-27', 'Laki - Laki', 'Dinas Perhubungan\r\nJl. Raya Kaligondang Km 2,4 Purbalingga', '085291250599', 'braling_putra@yahoo.co.id', 'Konsultasi Tentang Penambahan Paket Kegiatan Pada SIRUP', '-', NULL, 25, NULL, NULL),
('Arif Dwi Utomo, S.Farm., Apt', '2018-07-27', 'Laki - Laki', 'RSIA Ummu Hani', '085878601926', 'arifdwiutomo2309@gmail.com', 'belajar e purchasing obat', '', NULL, 26, NULL, NULL),
('Budiyanto', '2018-08-02', 'Laki - Laki', 'Dinrumkin Kab Purbalingga', '082220527979', 'budiy_kb51@yahoo.co.id', 'Konsultasi perubahan RUP serta resert paswerd ppk Dinrumkin', 'Baiik Pelayanannya dan bantuannya', NULL, 27, NULL, NULL),
('arif dwi utomo', '2018-08-03', 'Laki - Laki', 'RSIA UMMU HANI', '085878601926', 'arifdwiutomo2309@.gmail.com', 'kursus epurchasing', '', NULL, 28, NULL, NULL),
('herwindo', '2018-08-08', 'Laki - Laki', 'jalan ketuhu no 3', '081327580040', 'tiencatering2017@gmail.com', 'pengajuan spamkodok', '', NULL, 29, NULL, NULL),
('wacono', '2018-08-11', 'Laki - Laki', 'kalimanah wetan gang jati', '081327580040', 'wacanacv@yahoo.com', 'upload dokumen', '', NULL, 30, NULL, NULL),
('Basuki Rahmat', '2018-08-11', 'Laki - Laki', 'Jl. kalibener gg.2 RT 5/2 Kranji Purwokerto', '081226680385', 'ukioke.sp@gmail.com', 'ngobrol soal smart city', 'ccuuaanngggiiihhh bbiinggiiitttsss', NULL, 31, NULL, NULL),
('gotheng praminto', '2018-08-14', 'Laki - Laki', 'karangsari rt 06 rw 3, kalimanah, purbalingga', '082137303999', 'gotheng.praminto@gmail.com', 'konsultasi akun ppk dan akun sirup bagian perekonomian', '', NULL, 32, NULL, NULL),
('yuli setiawan s.kom', '2018-08-21', 'Laki - Laki', 'Badan Keuangan Daerah\r\nJl. Onje No 4', '082134513195', 'unionoffeeling7@gmail.com', 'koordinasi E file', '', NULL, 33, NULL, NULL),
('Yuli Sulistiyorini', '2018-08-21', 'Perempuan', 'Ouskesmas Karangreja', '081328730242', 'sulistiyorini78@gmail.com', 'Konsultasi pembuatan akun', '', NULL, 34, NULL, NULL),
('gotheng praminto', '2018-08-21', 'Laki - Laki', 'setda pbg', '082137303999', 'gotheng.praminto@gmail.com', 'konsultasi sirup', 'baik', NULL, 35, NULL, NULL),
('Ampera Budi Riyanto, S.Sos, M.Si', '2018-09-03', 'Laki - Laki', 'Banjarsari Kulon Rt 4 Rw 3 Kec. Sumbang, Kab. Banyumas', '085781367299', 'Ampera.sumbang@mail.com', 'Permohonan pembuata user ID PPK dan penerima user ID', '', NULL, 36, NULL, NULL),
('Muhamad Ruarizki Fais', '2018-09-14', 'Laki - Laki', 'Dinas Lingkungan Hidup', '085600009240', 'muhamadruarizki@gmail.com', 'Konsultasi pengisian kegiatan baru di aplikasi sirup', '', NULL, 37, NULL, NULL),
('Era Hesti Pratiwi', '2018-09-24', 'Perempuan', 'Puskesmas Karangjambu', '082223749909', 'puskesmaskarangjambu@yahoo.com', 'membuat akun lpse dan sirup', '', NULL, 38, NULL, NULL),
('Fenuk Zulaihah', '2018-09-24', 'Perempuan', 'Puskesmas Karangjambu', '085292727299', 'puskesmaskarangjambu@yahoo.com', 'membuat akun lpse dan sirup', '', NULL, 39, NULL, NULL),
('siti latifah', '2018-09-24', '', 'BPBD purbalingga', '085747807811', 'novanlatifah77@gmail.com', 'Reset Pasword PPK RUP', 'good', NULL, 40, NULL, NULL),
('adi wuryantoro', '2018-09-25', 'Laki - Laki', 'kec.karangmoncol', '08975470223', 'kecamatankarangmoncol@gmail.com', 'pengurusan pengambilan motor kecamatan', 'baik', NULL, 41, NULL, NULL),
('Linda Kusningsih', '2018-09-25', 'Perempuan', 'Jl. Letjend. S. Parman No. 19 Purbalingga', '085227396889', 'lindakusningsih@rocketmail.com', 'Konsultasi dan pengisian RUP di Perubahan Anggaran 2018', 'Puas....pelayanan ramah dan sangat membantu', NULL, 42, NULL, NULL),
('HERI PURBOWO', '2018-09-26', 'Laki - Laki', 'Jl,Soekarno Hatta Km.2 Purbalingga', '081327247483', 'purbowo_heri@yahoo.co.id', 'konsultasi sirup', 'baik dan alhamdulillah paham', NULL, 43, NULL, NULL),
('rianto', '2018-09-27', 'Laki - Laki', 'Dinas Kesehatan Purbalingga', '081327943393', 'riantopbg56@gmail.com', 'Konsultasi dan pengimputan sirup anggaran perubahan', 'Terima kasih atas bantuannya.', NULL, 44, NULL, NULL),
('fakhrudin ikhsani', '2018-09-27', 'Laki - Laki', 'Puskesmas Pengaden', '08164285352', 'fakhrudinikhsani4@gmail.com', 'Konsultasi dan pengimputan Sirup', 'Terima kasih telah dibantu', NULL, 45, NULL, NULL),
('ENDAH PURWANINGSIH WIDIASTUTI', '2018-10-01', 'Perempuan', 'DINRUMKIM KAB.PURBALINGGA', '081327430594', 'endahpurwaningsihwidiastuti@gmail.com', 'konsultasi sirup', 'buat ruang pelayanan tersendiri', NULL, 46, NULL, NULL),
('ady suharto', '2018-10-02', 'Laki - Laki', 'Dinkes Purbalingga Jl. Jend.S. Parman No 21 Pbg', '082138401079', 'wahyuningady@gmail.com', 'Pengimputan SIRUP Perubahan Anggaran 2018', '', NULL, 47, NULL, NULL),
('ady suharto', '2018-10-03', 'Laki - Laki', 'Dinkes Purbalingga Jl. Jend.S. Parman No 21 Pbg', '082138401079', 'wahyuningady@gmail.com', 'Pengimputan SIRUP Perubahan Anggaran 2018', 'Terima Kasih atas pendampinganya', NULL, 48, NULL, NULL),
('GALIH BUDI KURNIAWAN', '2018-10-04', 'Laki - Laki', 'jl raya kaligondang km 2,4', '085291250599', 'braling_putra@yahoo.co.id', 'konsultaasi Sirup LKPP', '', NULL, 49, NULL, NULL),
('ady suharto', '2018-10-04', 'Laki - Laki', 'Dinkes Purbalingga Jl. Jend.S. Parman No 21 Pbg', '082138401079', 'wahyuningady@gmail.com', 'Pengimputan SIRUP Perubahan Anggaran 2018', '', NULL, 50, NULL, NULL),
('Endah Fitriani', '2018-10-04', 'Perempuan', 'Dinkop UKM Purbalingga', '081327600081', 'viethreeany@gmail.com', 'Konsultasi pengisian SIRUP', 'Pelayanan sudah bagus..tingkatkan dan lanjutkan!!', NULL, 51, NULL, NULL),
('Endah Fitriani', '2018-10-10', 'Perempuan', 'Dinkop UKM', '081327600081', 'vietyhreeany@gmail.com', 'Konsultasi Pengisin Sirup Metode Baru', '', NULL, 52, NULL, NULL),
('Muhamad Ruarizki Fais', '2018-10-11', 'Laki - Laki', 'DLH kabupaten purbalingga', '085600009240', 'muhamadruarizki@gmail.com', 'Konsultasi penambahan paket pada aplikasi sirup', '', NULL, 53, NULL, NULL),
('Purwanto', '2018-10-11', 'Laki - Laki', 'klampok Rt 02 Rw 05 purwareja klampok', '081548668194', 'apur64@yahoo.co.id', 'konsultasi sirup', 'pelayanan bagus', NULL, 54, NULL, NULL),
('priyo didi tamtama', '2018-10-12', 'Laki - Laki', 'Jl. Melati 1 No. 63 Rt.02 RW.07 Purbalinggga', '082135639701', 'dydytama13@gmail.com', 'Pengimputan Anggaran Perubahan di SIRUP ', '', NULL, 55, NULL, NULL),
('Puspa Kencana Ika Nilasari', '2018-10-19', 'Perempuan', 'Desa Bojong, RT 07/03', '08562614427', 'brittleblossom28@yahoo.com', 'Menanyakan dan meminta solusi mengenai reaktivasi kartu prabayar hangus/terblokir.', '', NULL, 56, NULL, NULL),
('yanuar respita sari', '2018-10-22', 'Perempuan', 'puskesmas kutasari', '081226399160', 'respita87@gmail.com', 'konsultasi dan penginputan anggaran perubahan', 'baik dan terima kasih.sukses kominfo', NULL, 57, NULL, NULL),
('sunarko', '2018-10-22', 'Laki - Laki', 'Dindikbub Purbalingga', '085224690989', 'disdik@purbalinggakab.go.id ', 'Pengimputan Anggaran Perubahan 2018', '', NULL, 58, NULL, NULL),
('ROKHAYAH', '2018-10-26', 'Perempuan', 'Jl. Letjend S Parman 95 Purbalingga', '082334929345', 'rokhayahdinnakan@gmail.com', 'Penginputan perubahan anggaran 2018 dan Konsultasi SIRUP', '', NULL, 59, NULL, NULL),
('wiyardoko', '2018-11-12', 'Laki - Laki', 'puskesmas bukateja', '085741215889', 'wiyar.doko@yahoo.com', 'konsultasi dan pengimputan perubahan anggaran 2018', '', NULL, 60, NULL, NULL),
('Astri Puspitasari S.Farm.,Apt', '2018-11-15', 'Perempuan', 'Puskesmas Pengadegan', '081327514112', 'astri.lupe@gmail.com', 'konsultasi sirup lkpp', '', NULL, 61, NULL, NULL),
('rakhmayanto', '2019-01-07', 'Laki - Laki', 'kalitinggar kidul 2/1', '08156997484', 'rakhmayantoabizulfa@yahoo.com', 'penginputan sirup', 'pelayanan baik', NULL, 62, NULL, NULL),
('Rasiti', '2019-01-08', 'Perempuan', 'Kedungbenda RT.02 RW.02', '081391504205', 'rasitisiti770@gmail.com', 'Pengimputan SIrup tahun 2019', 'baik', NULL, 63, NULL, NULL),
('Suprijati', '2019-10-16', 'Perempuan', 'Bakeuda Kab.Purbalingga', '089643144584', 'suprijatipbg@gmail.com', 'Konfirmasi kesiapan penyediaan server untuk Bakeuda', 'Mohon segera dicukupi ', NULL, 64, NULL, NULL),
('Fibria sustiana', '2019-10-16', 'Perempuan', 'Labkes Pbg', '081225705559', 'Labkeskab_purbalingga@yahoo.co.id', 'Input SIRUP', '', NULL, 65, NULL, NULL),
('Krissardi', '2019-10-16', 'Laki - Laki', 'Perum GPA Gemuruh RT03 RW04 Padamara PBG', '085866840717', 'krissardi@gmail.com', 'Bertamu', 'Baik banget pegawainya', NULL, 66, NULL, NULL),
('IRA basoeki', '2019-10-22', 'Perempuan', 'GPA pbg', '085866840717', 'suprijatipbg@gmail.com', 'Deck aplikasi', 'Semoga semakin meningkatksn kinerja kominfo', NULL, 67, NULL, NULL),
('Dian sulistiono', '2019-10-22', 'Laki - Laki', 'Jetix kec. Kemangkon', '081903343764', 'dian_sulistiono@yahoo.com', 'Konsultasi website', '', NULL, 68, NULL, NULL),
('Rinta', '2019-10-23', 'Perempuan', 'Purbalingga wetan', '082177595220', 'dian_sulistiono@yahoo.com', 'Ketemu sama yang dihati', 'Harus diketemukan', NULL, 69, NULL, NULL),
('Naufal Muhammad', '2019-10-28', 'Laki - Laki', 'Munjul, Kutasari, Purbalingga, rt01 rw01', '085647636909', 'naufalmehmet17@gmail.com', 'Magang', 'Semoga lebih baik', NULL, 70, NULL, NULL),
('Supriyanto,s.sos.MSI.', '2019-10-29', 'Laki - Laki', '-', '081225705559', '-', 'Konsultasi matur bup', '-', NULL, 71, NULL, NULL),
('Did in tubuon', '2019-10-29', 'Laki - Laki', 'Premmiere', '081548808835', ',', 'Penawaran', '.-', NULL, 72, NULL, NULL),
('Sukman', '2019-10-30', 'Laki - Laki', 'RT 02/05 Sagan Bobotsari', '081228616112', 'sianakdesa08@gmail.com', 'Konsultasi SID', '', NULL, 73, NULL, NULL),
('ARIF SUHERMAN', '2019-10-30', 'Laki - Laki', 'SMP Negeri 2 Pengadegan', '082314217888', 'arifsuherman38@yahoo.com', 'Penginputan APBD Perubahan TA 2019', 'Pelayanan dari pegawai sangat baik', NULL, 74, NULL, NULL),
('Setiyawan', '2019-10-30', 'Laki - Laki', 'SMP Negeri 1 Pengadegan', '085271188557', 'setiyaone914@gmail.com', 'Konsultasi penginputan sirup APBDP 2019', '', NULL, 75, NULL, NULL),
('Titik Kurniawati', '2019-10-30', 'Perempuan', 'SMP Negeri 4 Kemangkon', '081228321162', 'abiyuhafiz@gmail.com', 'Konsultasi Input APBDP Tahun 2019', '', NULL, 76, NULL, NULL),
('Salim', '2019-10-30', 'Laki - Laki', 'Kembaran ', '085725592342', 'suprijatipbg@gmail.com', 'Ambil dokumen', '', NULL, 77, NULL, NULL),
('M Elfan Zulmi', '2019-10-31', 'Laki - Laki', 'Purbalingga', '0895330009681', 'Elfan.zulmi@gmail.com', 'Konsultasi Sirup', '', NULL, 78, NULL, NULL),
('Mugi Rahayu', '2019-10-31', 'Perempuan', 'SMP Negeri 3Karangmoncol', '082135447848', 'muggirahayu05@gmail.com', 'Input Sirup  RKAP Bangub 2019', '', NULL, 79, NULL, NULL),
('Achmad shdik', '2019-10-30', 'Laki - Laki', 'Bojanegara', '08562634533', 'vandyhenny@@gmail.com', 'Konnsultasi', 'Good', NULL, 80, NULL, NULL),
('Yosa Eko Pratomo', '2019-10-31', 'Laki - Laki', 'Desa Purbayasa RT 02 RW 02, Padamara, Purbalingga', '085740030018', 'yosaekop7601@gmail.com', 'Mengikuti Rapat PPID', '', NULL, 81, NULL, NULL),
('Yosa Eko Pratomo', '2019-10-31', 'Laki - Laki', 'Desa Purbayasa RT 02 RW 02, Padamara, Purbalingga', '085740030018', 'yosaekop7601@gmail.com', 'Mengikuti Rapat PPID', '', NULL, 82, NULL, NULL),
('Arif Suherman', '2019-10-31', 'Laki - Laki', 'SMP Negeri 2 Pengagean', '082314217888', 'Arifsuherman38@yahoo.com', 'Konsultasi Dan entry SIRUP APBDP 2019', '-', NULL, 83, NULL, NULL),
('Setiyawan', '2019-10-31', 'Laki - Laki', 'SMP n 1 pengadegan', '085271188557', 'Setiyaone914@gmail.com', 'Pengisian RUP', '-', NULL, 84, NULL, NULL),
('Kiki', '2019-10-31', 'Perempuan', 'Bukateja', '081322254345', 'kikibukateja@gmail.com', 'Penelitian', 'Keren', NULL, 85, NULL, NULL),
('Sofia Safitri', '2019-11-01', 'Perempuan', 'Jl.Raya Sidabowa Rt 03/07 Patikraja Banyumas Jaws Tengah', '085713214144', 'sofiasafitri07@gmail.com', 'Mencari informasi tentang jodoh <3', 'Diperbanyak bujang bujang muda berkualitas ;)', NULL, 86, NULL, NULL),
('Moko dantoro', '2019-11-04', 'Laki - Laki', 'Bojongsari', '-', '-', 'Bertemu pak lalang', '-', NULL, 87, NULL, NULL),
('Uswantoro', '2019-11-05', 'Laki - Laki', 'Babakqn', '085227724389', ',', 'Bertemu pak budi', ',', NULL, 88, NULL, NULL),
('Setiyawaan', '2019-11-05', 'Laki - Laki', 'SMP n 1 pengadegan ', '081271188557', '-', 'Konsultasi sirup', '-', NULL, 89, NULL, NULL),
('Arif suherman', '2019-11-05', 'Laki - Laki', 'Smp n 2 pengadegan', '082314217888', '-', 'Konsultasi sirup', '-', NULL, 90, NULL, NULL),
('Sukman', '2019-11-05', 'Laki - Laki', 'Desa Sagan ', '081228616112', '-', 'Konsultasi PPID Desa', '-', NULL, 91, NULL, NULL),
('Titik kurniawati', '2019-11-05', 'Perempuan', 'Smp n 4 kemangkon', '081228321162', ',', 'Konsultasi sirup', '-', NULL, 92, NULL, NULL),
('Agus', '2019-11-05', 'Laki - Laki', 'Gandasuli bobotsari', '-', '-', 'Bertemu pak tito', '-', NULL, 93, NULL, NULL),
('M yulianto S', '2019-11-05', 'Laki - Laki', 'Gandasuli', '-', '-', 'Bertemu pak tito', '-', NULL, 94, NULL, NULL),
('didik darmadi', '2019-11-05', 'Laki - Laki', 'Smp n 4 kutasari', '08562633933', 'Dharmadi@yahoo.id', 'Konsultasi sirup', '-', NULL, 95, NULL, NULL),
('Wawan', '2019-11-05', 'Laki - Laki', 'Purwokerto', '085641759889', '-', 'Service', '-', NULL, 96, NULL, NULL),
('Natalia ', '2019-11-10', 'Perempuan', 'Munjul rt 09 rw 05 kec.kutasari', '085749741620', 'nataliasaputri26@gmail.com', 'Analisis ', '', NULL, 97, NULL, NULL),
('Billy jodi setyawan', '2019-11-12', '', 'Kominfo', '-', '-', 'Cari pasangan', '', NULL, 98, NULL, NULL),
('Naufal', '2019-11-13', 'Laki - Laki', 'Munjul', '081225705559', ',', 'Mengambil data', 'Luar biasa', NULL, 99, NULL, NULL),
('Meli', '2019-11-14', 'Perempuan', 'Elzatta purbalingga', '0878372641111', 'melindacahyaningt92@gmail.com', 'Promo hijab', '', NULL, 100, NULL, NULL),
('Ardi', '2019-12-04', 'Laki - Laki', 'Pbg wetan', '089626160868', 'Ardi@yahoo.com', 'Biar g 0 pengunjungnya', 'Sip', NULL, 101, NULL, NULL),
('Tri antono', '2019-12-04', 'Laki - Laki', 'Sidanegara', '085726863801', 'Tri.ant45.ta@gmail.com', 'Kunjungan', '.', NULL, 102, NULL, NULL),
('Fita Fatmawati', '2019-12-23', 'Perempuan', 'Perumahan Griya Safira Blok D no.5', '08127223777', 'fitaphyta85@gmail.com', 'Monitoring TL', '', NULL, 103, NULL, NULL),
('Yogi Bahtiar', '2020-01-03', 'Laki - Laki', 'Telkom jl Gerilya PWT', '08122669100', 'bahtiaryogi@gmail.com', 'Perkenalan DG pengelola egov', 'Keren', NULL, 104, NULL, NULL),
('Drs.Sosiawan', '2020-01-23', 'Laki - Laki', 'Komisi Informasi Provinsi Jawa Tengah', '024-8411093', 'kiprovjateng@gmail.com', 'Narasumber Rakor dalam Rangka Penyusunan DIP dan DIK Tahun 2020', 'Semoga lebih baik lagi.', NULL, 105, NULL, NULL),
('Purwanto', '2020-01-23', 'Laki - Laki', 'Komisi Informasi Prov. Jateng', '024-8411093', 'kiprovjateng@gmail.com', 'Mendampingi Narasumber dari KI Prov Jateng', 'Semoga Kabupaten Purbalingga menjadi lebih baik lagi!', NULL, 106, NULL, NULL),
('Sumarno', '2020-02-03', 'Laki - Laki', 'Perumnas Abdi Negara Purbalingga Jln. Gato t Kaca 2', 'O81229280016', 'alamsorga@gmai.com', 'Konsultasi', '', NULL, 107, NULL, NULL),
('Susanti', '2020-02-20', 'Perempuan', 'Unsoed purwokerto', '082133204342', 'susanti.santii28@gmail.com', 'Mencari informasi untuk skripsi', 'Sudah cukup bagus dalam pelayanannya, tingkatkan kembali keramahannya.', NULL, 108, NULL, NULL),
('Susanti', '2020-02-24', 'Perempuan', 'Unsoed', '082133204342', 'susanti.santii28@gmail.com', 'PRA survey skripsi', '', NULL, 109, NULL, NULL),
('Budy Santosa', '2020-03-23', 'Laki - Laki', 'Jln. Mekar Maya RT. 03/RW. XI Bobotsari', '081328720423', 'bodos.purbalingga@gmail.com', 'Konsultasi PPID', 'Agar lbh meningkat lagi pelayanannya', NULL, 110, NULL, NULL),
('Wachid Arif B', '2020-07-22', 'Laki - Laki', 'Yogyakarta', '08157955557', 'wachid.budiman@indosatooredoo.com', 'Bertemu pak yonathan', '', NULL, 111, NULL, NULL),
('Abid nurrahman', '2020-07-22', 'Laki - Laki', 'Semarang', '081555652222', 'Abid.nurrahman@gmail.com', 'Bertemu pak yohanes', '', NULL, 112, NULL, NULL),
('Anita', '2020-07-23', 'Perempuan', 'Museum purbakawatjca', '.', '.', 'Konsultasi pembuatan website', '-', NULL, 113, NULL, NULL),
('Arif', '2020-07-27', 'Laki - Laki', '.', '082122222197', '.', 'Bertemu pak budi', '.', NULL, 114, NULL, NULL),
('Laeli khasanah', '2020-07-28', 'Perempuan', 'Dpupr kabupaten purbalingga', '-', '-', 'Konsultasi isi web', '.', NULL, 115, NULL, NULL),
('Yosa Eko Pratomo', '2020-07-29', '', 'Trtrtrt', '082122222197', 'sidesajateng@gmail.com', 'Dffyty', '', NULL, 116, NULL, NULL),
('Amin mustofa', '2020-07-30', 'Laki - Laki', 'Wonosobo', '08115985899', '.', 'Pengajuan permohonan cellplan menara', '.', NULL, 117, NULL, NULL),
('Dhimas Tri Kuncoro', '2020-08-03', 'Laki - Laki', 'Wanogara Kulon, RT 03/II, Rembang, Purbalingga', '085325293121', 'Dhimastri12@gmail.com', 'Perihal magang', 'Pelayanan sudan baik :)', NULL, 118, NULL, NULL),
('Aji satya dana', '2020-08-06', 'Laki - Laki', 'Yogyakarta', '082325862491', '.', 'Kunjungan', '.', NULL, 119, NULL, NULL),
('Perceta kan arum', '2020-08-06', 'Laki - Laki', 'Purbalingga', '082122222197', '.', 'Konsultasi bener', '.', NULL, 120, NULL, NULL),
('Perceta kan arum', '2020-08-06', 'Laki - Laki', 'Purbalingga', '082122222197', '.', 'Konsultasi bener', '.', NULL, 121, NULL, NULL),
('Ngaliman', '2020-08-13', 'Laki - Laki', 'Banjaran', '082122222197', '.', 'Konsultasi', '.', NULL, 122, NULL, NULL),
('Igun', '2020-08-13', 'Laki - Laki', '.', '082122222197', '.', 'Konsultasi', '.', NULL, 123, NULL, NULL),
('Mohammad Faiq Maulana', '2020-08-13', 'Laki - Laki', 'Bancar, Purbalingga', '089619177695', '6juli99@gmail.com', 'Mengajukan permohonan magang', '.', NULL, 124, NULL, NULL),
('Ifran lindu mahargya', '2020-08-13', 'Laki - Laki', '.', '082122222197', '-', 'Magang', '.', NULL, 125, NULL, NULL),
('Dumas pramesthi sasongko', '2020-09-03', 'Laki - Laki', 'Cilacap', '082138191300', 'dimaspramesthisasongko@gmail.com', '.', '.', NULL, 126, NULL, NULL),
('Mohammad Faiq Maulana', '2020-09-03', 'Laki - Laki', 'Bancar', '089619177695', '6juli99@gmail.com', '.', '.', NULL, 127, NULL, NULL),
('Sidik Febrianto', '2020-09-03', 'Laki - Laki', 'Purwokerto', '082135205244', 'Asidiktilama@gmail.com', '.', '.', NULL, 128, NULL, NULL),
('Muhammad Iqbal Wijayanto', '2020-09-03', 'Laki - Laki', 'Sokaraja Wetan', '087812915543', 'Iqballsc8@gmail.com', '.', '.', NULL, 129, NULL, NULL),
('Zulfikar Ali Akbar kusuma', '2020-09-03', 'Laki - Laki', 'Purwokerto selatan', '085781552592', 'Izulfikar796@gmail.com', '.', '.', NULL, 130, NULL, NULL),
('Akhsanul Maulana', '2020-09-03', 'Laki - Laki', 'Tegal', '08999269212', 'Akhsanulmaulana@gmail.com', '.', '.', NULL, 131, NULL, NULL),
('Nanda Yulina', '2020-09-04', 'Perempuan', 'Pekiringan Rt 02/Rw 09 Karangmoncol', '085600520176', 'nandayulina34@gmail.com', 'Permohonan PKL', '', NULL, 132, NULL, NULL),
('Dita Ferisca', '2020-09-04', 'Perempuan', 'Majasari Rt 01 Rw 05', '085747058545', 'ditaferisca0602@gmail.com', 'Permohonan PKL', '', NULL, 133, NULL, NULL),
('Lufti Nur Laeli S', '2020-09-04', 'Perempuan', 'Desa kalitinggar kec.Padamara Kab.Purbalingga', '087815174312', 'lutfinls015@gmail.com', 'Permohonan PKL', '', NULL, 134, NULL, NULL),
('Hanhan', '2020-09-07', 'Laki - Laki', 'Ketuhu', '000000', 'Hanhan@gmail.com', 'Mencoba', 'Keren', NULL, 135, NULL, NULL),
('Labib Umar Sidik', '2020-09-15', 'Laki - Laki', 'SMK Ma\'arif NU Bbs', '085641665301', '-', 'Permohonan Prakerin', '-', NULL, 136, NULL, NULL),
('Dhimas Tri Kuncoro', '2020-10-05', 'Laki - Laki', 'Wanogara kulon rt 03 rw 02, rembang, purbalingga', '085325293121', 'Dhimastri12@gmail.com', 'Mengantarkan Surat Dari Humpro Setda Purbalingga', '', NULL, 137, NULL, NULL),
('Ali Murtado', '2020-11-17', 'Laki - Laki', 'Kaagsentul Purbalingga (TAPM P3MD)', '082134179750', 'alimurta14@gmail.com', 'Komunikasi Dan Sounding tetang Aplikasi Jogotonggo dari Prov Jateng', 'Tidak ada.', NULL, 138, NULL, NULL),
('Aldo', '2021-04-14', 'Laki - Laki', 'Purwokerto', '-', '-', 'Test', '', NULL, 139, NULL, NULL),
('Lusi', '2022-12-14', 'Perempuan', 'Bancar', '09876543', '.', 'Test', 'Bagus', NULL, 140, NULL, NULL),
('Luthfiantoro', '2022-12-14', 'Laki - Laki', 'Jl. Puring 9', '081320600097', 'Muhammad.luthfi1ml@gmail.com', 'Gatau', 'Sudan bagus', NULL, 141, NULL, NULL),
('Heri sulistiyono', '2022-12-14', 'Laki - Laki', 'Kalimanah wetan rt03 rw07', '085842625501', 'Soelistyonoherry@gmail.com', 'Berkunjung', 'Bagus standnya', NULL, 142, NULL, NULL),
('Lusi', '2022-12-14', 'Perempuan', 'Bancar', '0857789087612', '.', 'Santika', '', NULL, 143, NULL, NULL),
('Ratih Ratna Dewi', '2022-12-15', 'Perempuan', 'Lumpang, Karanganyar', '085726096515', 'Ratih@gmail.com', 'Mengayubagyo', 'Stand terlalu sempit', NULL, 144, NULL, NULL),
('Tris Dianasari', '2022-12-15', 'Perempuan', 'Purbalingga Wetan', '083873331638', '-', '-', '-', NULL, 145, NULL, NULL),
('Fikri', '2022-12-15', 'Laki - Laki', 'Selakambang', '0857789087612', 'Muhammad.luthfi1ml@gmail.com', 'Kunjungan', 'Mantap', NULL, 146, NULL, NULL),
('Rrahadian', '2022-12-15', 'Laki - Laki', 'Purbalingga wetan', '085155193123', '-', 'Lihat aplikasi', 'Sijoli Dan simita', NULL, 147, NULL, NULL),
('Edy s', '2022-12-15', 'Laki - Laki', 'Gembongb\r\n Bojongsari', '085842625501', '-', 'Mangayubagyo ', 'Stand terlalu sempit', NULL, 148, NULL, NULL),
('Tri antono', '2022-12-15', 'Laki - Laki', 'Sidanegara', '085726863801', 'Tri.ant45.ta@gmail.com', 'Kunjungan', '', NULL, 149, NULL, NULL),
('Alifia', '2022-12-15', 'Perempuan', 'Kutasari', '085799201141', '-', 'Healing', 'Keren uy', NULL, 150, NULL, NULL),
('Aditria Nur Arghani', '2022-12-15', 'Laki - Laki', 'Gembong Rt 11/Rw 06', '085722116619', 'aditpbg52@gmail.com', 'Semoga dapet Rezeki', 'Sip', NULL, 151, NULL, NULL),
('Raditya Eka Ramadhan', '2022-12-15', 'Laki - Laki', 'Kembran Kulon Rt02/Rw01', '085867443721', 'gvalorant63@gmail.com', 'ngikut adit', 'Cukup sip,sekian', NULL, 152, NULL, NULL),
('Hanifah ks', '2022-12-15', 'Perempuan', 'Pbg', '085291533750', 'Hanifah.khairunisa11@gmail.com', 'View', 'Mantap', NULL, 153, NULL, NULL),
('Fian S', '2022-12-15', 'Perempuan', 'Purbalingga kidul', '089652432269', 'Fian7996@gmail.com', '-', '-', NULL, 154, NULL, NULL),
('Susanti', '2022-12-15', 'Perempuan', 'Dinkominfo', '08122722718', 'susantisos1978@gmail.com', 'Jaga Stand', 'Semangat Selalu', NULL, 155, NULL, NULL),
('Nerman', '2022-12-15', 'Laki - Laki', 'Kalirawa RT 4 RW 5', '085747115112', 'Atmj@gmail.com', 'Ada deh', 'Oke', NULL, 156, NULL, NULL),
('inggar', '2022-12-15', 'Perempuan', 'Dinkominfo', '-', '-', 'Tamu', '_', NULL, 157, NULL, NULL),
('Febrian', '2022-12-15', 'Laki - Laki', 'Kutasari', '081326264191', 'Ukasyahibnuna@gmail.com', 'Jaga', 'Ok', NULL, 158, NULL, NULL),
('Ryan Naga', '2022-12-15', 'Laki - Laki', 'Pbg kidul', '085778381937', 'Assedef@gmail.com', 'Pengaduan swat Dan web error', 'Ok', NULL, 159, NULL, NULL),
('Umi rusmawati', '2022-12-15', 'Perempuan', 'Karanglewas', '081328727340', 'umirusmawai72@gmail.com', 'Menyaksikan', '', NULL, 160, NULL, NULL),
('Ermita Kristanti', '2022-12-15', 'Perempuan', 'Desa Wiradadi, Kec. Sokaraja', '082225941511', 'mitagotama92@gmail.com', 'Mengunjungi Expo Purbalingga', 'Bagus', NULL, 161, NULL, NULL),
('Mahyati', '2022-12-15', 'Perempuan', 'Purbalingga', '082323889168', 'Mahyati069@gmail.com', 'Info', 'Good', NULL, 162, NULL, NULL),
('SETYO PUJI W', '2022-12-15', 'Laki - Laki', 'Purbalingga', '085157589977', 'setyo.pplh@gmail.com', 'Belajar', 'Lanjutkan..', NULL, 163, NULL, NULL),
('Nur imam b', '2022-12-15', 'Laki - Laki', 'Padamara rt 1 rw3', '085868812566', 'imamkom@gmail.com', 'Liat2', 'Internet cepat bust masyarakat', NULL, 164, NULL, NULL),
('Randi Ermawan', '2022-12-15', 'Laki - Laki', 'Bojongsari rt 01 rw 03', '085842575020', 'fandiermawan@gmail.com', 'Kunjungan ', 'Semakin bagus', NULL, 165, NULL, NULL),
('Aslan', '2022-12-15', 'Laki - Laki', 'Kembaran Kulon', '0817465999', 'Riyang@gmail.com', 'Menambah informasi', 'Keren abizzzzz', NULL, 166, NULL, NULL),
('Tama', '2022-12-15', 'Laki - Laki', 'Bancar', '1234567889', 'Ikp@purbalingganews.id', 'Kerennn', 'Abizzzzz', NULL, 167, NULL, NULL),
('Hanan', '2022-12-15', 'Laki - Laki', 'Puring', '0897969696', 'Muhammad.luthfi1ml@gmail.com', 'Dinkominfo juara', 'Lanjutkan', NULL, 168, NULL, NULL),
('dian', '2022-12-16', 'Perempuan', 'Penambongan\r\n', '081914448968', '-', 'Mengunjungi stand', 'Semoga sukses', NULL, 169, NULL, NULL),
('Annas dian w', '2022-12-16', 'Laki - Laki', 'Wirasana\r\n', '082313996600', '.', 'Kunjungan', 'Hebat', NULL, 170, NULL, NULL),
('Hengky irawan', '2022-12-16', 'Laki - Laki', 'Banjarnegara', '081215094570', 'Muhammad.luthfi1ml@gmail.com', '.', '.', NULL, 171, NULL, NULL),
('Muhammad Ahura Mazda', '2022-12-16', 'Laki - Laki', 'Desa Prigi Rt3 Rw 2', '085727516658', 'ahuramazda71@gmail.com', 'Until menambah wawasan', '', NULL, 172, NULL, NULL),
('Muhammad Elfano Dzulfikar', '2022-12-16', 'Laki - Laki', 'Desa slinga rt1 rw5 ', '088215663644', 'elfanoajalah20@gmail.com', 'Until menambah wawasan', 'Tidal ada', NULL, 173, NULL, NULL),
('Muhammad zahran rozak putra', '2022-12-16', 'Laki - Laki', 'Rumdis kodim rt5 rw11 toyareka', '085870814437', 'rozakputra874@gmail.com', 'Untuk hiburan', 'Tidak', NULL, 174, NULL, NULL),
('Eny wigati', '2022-12-16', 'Perempuan', 'Purbalingga kidul', '082135983747', 'A@gmail.coj', '_', '_', NULL, 175, NULL, NULL),
('Anton', '2022-12-16', 'Laki - Laki', 'Jl isdiman ', '08123244467', 'Antonwawa@gmail.com', 'Ingin tau dinkominfo', 'Hadiahnya zonk semuaaa', NULL, 176, NULL, NULL),
('Fiatul Chasanah', '2022-12-16', 'Perempuan', 'sokaraja', '085712148979', '-', '-', '-', NULL, 177, NULL, NULL),
('Ridwan', '2022-12-16', 'Laki - Laki', 'Kedung menjangan', '082326680414', 'muh.ridwan97@gmail.com', 'Doorprize', 'Bagus', NULL, 178, NULL, NULL),
('Bari Santosa', '2022-12-16', 'Laki - Laki', 'D\'s Gemuruh RT 003 RW 004 Padamara', '082145768969', ' paerabbani@gmail.com', 'Kunjung expo', '', NULL, 179, NULL, NULL),
('Fera', '2022-12-16', 'Perempuan', 'Kembaran kulon', '0857768686220', '.', '.', '.', NULL, 180, NULL, NULL),
('Luky H', '2022-12-16', 'Laki - Laki', 'Purbalingga Wetan', '08122605070', 'ikul.joss@gmail.com', 'Liat-liat', '', NULL, 181, NULL, NULL),
('Shinta valentina', '2022-12-16', 'Perempuan', 'Bojongsari', '089669448073', 'Valentinabudiman4@gmail.com', 'Mendapatkan doorprize', 'Tambah hadiahnya ', NULL, 182, NULL, NULL),
('Nisa Asmarina', '2022-12-16', 'Perempuan', 'Penaruban', '081333753636', 'nisa.asmarina123@gmail.com', 'Dapet doorprize', 'Seruuu', NULL, 183, NULL, NULL),
('Yanti', '2022-12-16', 'Perempuan', 'Wirasana', '083873331638', '-', '-', '_', NULL, 184, NULL, NULL),
('Lisa', '2022-12-16', 'Perempuan', 'Penambongan', '081328725976', 'Soelistyonoherry@gmail.com', 'Mampir', '', NULL, 185, NULL, NULL),
('Ari Andriyani', '2022-12-16', 'Perempuan', 'Karangmanyar', '085385848030', 'ariandriyani77@gmail.com', 'Mendapatkan dorprize', '.', NULL, 186, NULL, NULL),
('Chelsy medisya', '2022-12-16', 'Perempuan', 'Desa grecol rt.03/rw.01, kalimanah', '085701032287', 'novitadian735@gmail.com', 'hanya ingin berkunjung', '-', NULL, 187, NULL, NULL),
('Septiana Respitaningrum', '2022-12-16', 'Perempuan', 'Bobotsari', '085799954254', 'khanzalfa.althafalisa23@gmail.com', 'Ikut berpartisipasi donk...', 'Good job', NULL, 188, NULL, NULL),
('Tutut DWI ', '2022-12-16', 'Perempuan', 'Mewek', '085647848432', 'tututwani@gmail.com', 'Berkunjung ke expo pbg Stan dinkominfo', 'Bagus', NULL, 189, NULL, NULL),
('Rohyani', '2022-12-16', 'Perempuan', 'Majatengah rt 06/02', '081327640453', 'Rohyayani15@gmail.com', 'Kunjungan expo', '', NULL, 190, NULL, NULL),
('Dian Nur Anggraeni', '2022-12-16', 'Perempuan', 'Kembangan rt02/05, Bukateja, Purbalingga', '085866858739', 'diananggraeniarisona01@gmail.com', 'Kunjungan expo', '', NULL, 191, NULL, NULL),
('Davira', '2022-12-16', 'Perempuan', 'Gemuruh rt 02/03 padamara', '087733942847', 'Suroniyati@gmail.com', 'Tamu', 'Perbanyak doorprize', NULL, 192, NULL, NULL),
('Qistina', '2022-12-16', 'Perempuan', 'Padamara, rt03/03', '082325526314', 'qistinarosyada496@gmail.com', 'Tamu', 'Jaya', NULL, 193, NULL, NULL),
('Ema', '2022-12-16', 'Perempuan', 'Bukateja', '081326188525', 'setianingrumema@gmail.com', 'Kunjungan', '', NULL, 194, NULL, NULL),
('Siti', '2022-12-16', 'Perempuan', 'Bukateja', '081326188525', 'setianingrumema@gmail.com', 'Kunjungan', '', NULL, 195, NULL, NULL),
('Fika nurwahyuni', '2022-12-16', 'Perempuan', 'Kembangan rt05 rw 04', '085842605648', 'Nurwahyunifika@gmail.com', 'Mengunjungi stand dinkominfo', '', NULL, 196, NULL, NULL),
('Anisatun alifah', '2022-12-16', 'Perempuan', 'Karangcengis rt04 rw05', '081382721509', 'anisatunalifah99@gmail.com', 'Mengunjungi Expo', '', NULL, 197, NULL, NULL),
('Herbs anggun wilma', '2022-12-16', 'Perempuan', 'Perumahan Puritama indahblok h9,gemuruh ,Purbalingga', '08811087311', 'any gun king gaol gmail.com', 'Lihat expo', '', NULL, 198, NULL, NULL),
('Fani', '2022-12-16', 'Perempuan', 'Sinduraja', '085700297160', 'Vita.safitri1316@gmail.com', 'Mendapatkan informasi', '', NULL, 199, NULL, NULL),
('Dini ariestantia', '2022-12-16', 'Perempuan', 'Padamara rt 4 rw 1', '082181318888', 'diniariestantia@gmail.com', 'Jalan jalan', '', NULL, 200, NULL, NULL),
('Triani', '2022-12-16', 'Perempuan', 'Padamara', '081586547525', 'Anianiani629@gmail.com', 'Wisata kuliner', '', NULL, 201, NULL, NULL),
('Sunarti', '2022-12-16', 'Perempuan', 'Padamara rt 04/ rw 01', '08112585853', 'andungkrui06@gmail.com', 'Hiling', '', NULL, 202, NULL, NULL),
('Dina Rahmadani', '2022-12-16', 'Perempuan', 'Padamara rt 4/1', '082281282528', 'dinarahmadanii99@gmail.com', 'Main game', '', NULL, 203, NULL, NULL),
('Mono', '2022-12-16', 'Laki - Laki', 'Gemuruh', '081215121484', 'Mono_arm@yahoo.com', 'Ngendong', '', NULL, 204, NULL, NULL),
('Vira ayu rahmawati', '2022-12-16', 'Perempuan', 'Munjul 13/07', '083876786553', 'viraayu33@gmail.com', 'Mengetahui tugas dinkominfo', 'Seru', NULL, 205, NULL, NULL),
('Marghita setyo utami', '2022-12-16', 'Perempuan', 'Bojongsari, purbalingga', '085162664929', 'Marghita.setyo@gmail.com', 'Mengetahui informatiia ttng purbalinga', '', NULL, 206, NULL, NULL),
('Gilang Abi Zaifa Situmorang', '2022-12-16', 'Laki - Laki', 'Jl. Fatmawati, Cilandak, Jaksel', '0895422880227', 'gilangabizaifa@upnvj.ac.id', 'Kunjngan', '', NULL, 207, NULL, NULL),
('Wiwid', '2022-12-16', 'Laki - Laki', 'Penambongan', '085726375407', 'Ddd@gmail.com', 'Melihat Stan dinkominfo', 'Scukup vagus pelayanannya', NULL, 208, NULL, NULL),
('Azizah Nurhayati', '2022-12-17', 'Perempuan', 'Brobot RT.13 RW.04', '081327007572', 'azizah.nurhayati7@gmail.com', 'Cari Informasi', 'Ramah', NULL, 209, NULL, NULL),
('Yudi', '2022-12-17', 'Laki - Laki', 'Penambobgan', '09876543', 'Muhammad.luthfi1ml@gmail.com', 'Polisi', 'Ninuninuninu', NULL, 210, NULL, NULL),
('Anna', '2022-12-18', 'Perempuan', 'Purbalingga', '.', '.', '.', '.', NULL, 211, NULL, NULL),
('Tiwi', '2022-12-18', 'Perempuan', 'Purbalingga', '.', '.', 'Keren', 'Semangat', NULL, 212, NULL, NULL),
('Sudono', '2022-12-18', 'Laki - Laki', 'Purbalingga', '.', '-', 'Bagus sekali', 'Lebih banyak dorprise', NULL, 213, NULL, NULL),
('Yayu Irma sari', '2022-12-18', 'Perempuan', 'Bukateja', '085647883096', '.', '.', 'Vagus Dan inovatif', NULL, 214, NULL, NULL),
('Yayu Irma sari', '2022-12-18', 'Perempuan', 'Bukateja', '085647883096', '.', '.', 'Vagus Dan inovatif', NULL, 215, NULL, NULL),
('Dhelina', '2022-12-18', 'Perempuan', 'Krenceng', '085726442143', 'Dhelinaretnowulan@', ',', 'Keren', NULL, 216, NULL, NULL),
('Udin', '2022-12-18', 'Laki - Laki', ',', '.', '.', '.', '.', NULL, 217, NULL, NULL),
('Zaimatun', '2022-12-18', 'Perempuan', 'Perum Raman permata blok d7', '085310523503', '-', 'Berkunjung expo', 'Star dinkominfo keren', NULL, 218, NULL, NULL),
('Tari', '2022-12-18', 'Perempuan', 'Purbalingga', '.', '.', '.', '.', NULL, 219, NULL, NULL),
('Tari', '2022-12-18', 'Perempuan', 'Purbalingga', '.', '.', '.', '.', NULL, 220, NULL, NULL),
('Yani purwati', '2022-12-18', 'Perempuan', 'Jl panjaitan 79purbalingga', '082135352298', 'Yanir09@gmail.com', 'Melihat stand kominfo', 'Bagus top', NULL, 221, NULL, NULL),
('Desi', '2022-12-18', 'Perempuan', 'Jatisaba', '081399072929', 'pbgarfan@gmail.com', 'Berkunjung,', 'Bagus', NULL, 222, NULL, NULL),
('Yugi sulistiyono', '2022-12-18', 'Laki - Laki', 'Sempor lor', '082313179579', 'yugisulistiyono09@gmail.com', 'Mengikuti pameran', '', NULL, 223, NULL, NULL),
('ISNA minani ', '2022-12-18', 'Perempuan', 'One rt 03/01 mrebet purbalingga', '089603605225', 'Dewayana27@gmail.com', 'Mengikuti pameran', 'Cukup bagus seru', NULL, 224, NULL, NULL),
('Faza azkiya', '2022-12-18', 'Perempuan', 'Onje', '085727604313', 'Fazaazkiyasabilaaziz@gmail.com', 'Ikut oameran', 'Seru', NULL, 225, NULL, NULL),
('Farhn', '2022-12-18', 'Laki - Laki', 'Kasih', '085727727841', 'Farhan85sae@gmail.com', 'Dolan ', 'Bagus', NULL, 226, NULL, NULL),
('Dani Lazuardi', '2022-12-18', 'Laki - Laki', 'Bojanegara', '085726424063', 'lazuardiramadhani@gmail.com', 'Kangen ikp ????', 'Sukses untuk Dinkominfo Purbalingga ?', NULL, 227, NULL, NULL),
('Rokhimah Mardi astuti', '2022-12-18', 'Perempuan', 'Sidakangen', '081391716767', 'rokhimahmardiastuti @gmail.com', 'Mencari informasi & pengetahuan', 'Bagus', NULL, 228, NULL, NULL),
('Asni', '2022-12-18', 'Perempuan', 'Ledug ', '085742213956', '-', 'Melihat lihat stand', '', NULL, 229, NULL, NULL),
('Fatimah ratna', '2022-12-18', 'Perempuan', ' Pegandekan', '08123456789', '-', 'Melihat pameran', 'Lebihbaik Dan memuaskan', NULL, 230, NULL, NULL),
('Parsono', '2022-12-18', 'Laki - Laki', 'Pegandekan', '085385310202', '.', '.', '.', NULL, 231, NULL, NULL),
('Nur hidayati', '2022-12-18', 'Perempuan', 'Purbalingga kidul', '089644813546', 'Ida04044@gmail.com', '.', '.', NULL, 232, NULL, NULL),
('April', '2022-12-18', 'Perempuan', 'Purwkerto', '085866063965', '.', 'Quiz', '.', NULL, 233, NULL, NULL),
('Lifiana', '2022-12-18', '', 'Purwokerto', '085647003156', 'Y', 'Ikut quis', '.', NULL, 234, NULL, NULL),
('Nina aminah', '2022-12-18', 'Perempuan', 'Bedagas ', '081393838285', '-', 'Ikut quiz', '.', NULL, 235, NULL, NULL),
('Srinurlaila', '2022-12-18', '', 'Pegandekan', '.', '.', 'Mengunjungi pameran', 'Stand vagus, Dan ramah', NULL, 236, NULL, NULL),
('Iffahbnur fahmi', '2022-12-18', 'Perempuan', 'Kalikabong 4/4', '085799261216', 'Fahziez@gmail.com', 'Mengikuti quiz', 'Dibayakkin doorprisenya hehe', NULL, 237, NULL, NULL),
('Ratih ratna dewi', '2022-12-18', 'Perempuan', 'Lumpang', '081390941596', 'Dewiratih5996@gmail.com', 'Meramaikan', 'Stand sumuk', NULL, 238, NULL, NULL),
('Sri wahyuniatun', '2022-12-18', 'Perempuan', 'Lumpang kec karanganyar', '.', '.', 'Ingin tahu lebih DSLAM tentang APA saja yg ada do dinkominfo pbg', '.', NULL, 239, NULL, NULL),
('Nadia', '2022-12-18', 'Perempuan', 'Lumpangkec karanganyar', '.', '.', '.', '.', NULL, 240, NULL, NULL),
('Fahmi', '2022-12-18', 'Laki - Laki', 'Sidanegara ', '081327633425', 'fahmi@gmail.com', 'Bermain', 'Bagus', NULL, 241, NULL, NULL),
('Nabih', '2022-12-18', 'Laki - Laki', 'Sidaegara', '081327633425', 'Nabih@gmail.cm', 'Bermain', 'Bagus', NULL, 242, NULL, NULL),
('Jihan', '2022-12-18', 'Laki - Laki', 'Bobotsari', '.', '.', '.', '.', NULL, 243, NULL, NULL),
('Ananta', '2022-12-18', 'Perempuan', 'Pbg', '08575552830', 'Ananta@yahoo.com', 'Info', 'Tambahmaju', NULL, 244, NULL, NULL),
('Isriana', '2022-12-18', 'Perempuan', 'Selabaya', '085842887277', 'isrianarakhmawati@gmail.com', 'Meramaikan', '-', NULL, 245, NULL, NULL),
('FM arts pramushinta', '2022-12-18', 'Perempuan', 'Purwokerto', '081225209996', 'fmaryapramushinta@gmail.com', 'Meramaikan acara', '-', NULL, 246, NULL, NULL),
('Inayatul mardhiyah indah sulistiyani', '2022-12-18', 'Perempuan', 'Karangmalang', '085287599992', 'Hinayatul88@gmail.com', 'Melihat expo', 'Sudan baik', NULL, 247, NULL, NULL),
('halohalo', '2023-07-12', 'Perempuan', 'kendal', '08979692222', 'ululy@gmail.com', 'maksud', 'kritik', NULL, 248, NULL, NULL),
('hanif', '2023-07-12', 'Laki - Laki', 'purbalingga', '08979691121', 'hanif@gmail.com', 'maksud', 'saran', NULL, 249, NULL, NULL),
('rizkytha hatma putri', '2023-07-12', 'Perempuan', 'kendal', '08170548866', 'rithakendal@gmail.com', 'maksud', 'belum ada', NULL, 250, NULL, NULL),
('justicio', '2023-07-12', 'Laki - Laki', 'purwokerto', '08979692275', 'jecepwt@gmail.com', 'kerja praktik', 'belum ada kritik dan saran', NULL, 251, NULL, NULL),
('muhammad hanif', '2023-07-12', 'Laki - Laki', 'purbalingga kota', '08979695543', 'hanifmuh@gmail.com', 'maksud', 'kritik', NULL, 252, NULL, NULL),
('anisa meilia', '2023-07-12', 'Perempuan', 'purworejo', '08979693344', 'amel@gmail.com', 'belum', 'sama', NULL, 253, NULL, NULL),
('rikza', '2023-07-12', 'Laki - Laki', 'kendal', '08979697766', 'rikza@gmail.com', 'belum', 'besok', NULL, 254, NULL, NULL),
('mama', '2023-07-12', 'Perempuan', 'haha', '0897965566', 'mama@gmail.com', 'maksud', 'kritik', NULL, 255, NULL, NULL),
('muhammad hanifudin', '2023-07-12', 'Laki - Laki', 'purbalingga apa', '08979691122', 'hanifudin@gmail.com', 'maksud', 'kritik', NULL, 256, NULL, NULL),
('rizkytha hp', '2023-07-13', 'Perempuan', 'kendal', '08979692277', 'rithaia@gmail.com', 'bllm', 'blm', NULL, 257, NULL, NULL),
('justis', '2023-07-14', 'Laki - Laki', 'wkwkwk', '08979692277', 'justis@gmail.com', 'gada', 'sama', NULL, 258, '2023-07-13 21:03:07', '2023-07-13 21:03:07'),
('cia', '2023-07-14', 'Perempuan', 'jkt', '08979691121', 'cia@gmail.com', 'wkwk', 'haha', NULL, 259, '2023-07-13 21:57:42', '2023-07-13 21:57:42'),
('cia', '2023-07-14', 'Perempuan', 'jkt', '08979691121', 'cia@gmail.com', 'wkwk', 'haha', NULL, 260, '2023-07-13 21:58:16', '2023-07-13 21:58:16'),
('helm', '2023-07-14', 'Laki - Laki', 'bengkel', '08979692277', 'helm@gmail.com', 'gada', 'gada juga', NULL, 261, '2023-07-13 22:01:10', '2023-07-13 22:01:10'),
('rizkytha hatma', '2023-07-18', 'Perempuan', 'Desa Blater', '08979698877', 'rithakendal@gmail.com', 'maksud', 'kritik', NULL, 262, '2023-07-17 20:27:08', '2023-07-17 20:27:08'),
('Dhiya Ulhaq', '2023-07-18', 'Perempuan', 'Tegal', '08979692112', 'dhiya@gmail.com', 'maksud', 'tujuannnnnnnn', 1, 263, '2023-07-17 20:36:52', '2023-07-17 20:36:52'),
('Justicio', '2023-07-18', 'Laki-laki', 'Pwt', '08170548866', 'jeceo@gmail.com', 'maksudd', 'sarann', 6, 264, '2023-07-17 20:46:46', '2023-07-17 20:46:46'),
('Ritha', '2023-07-18', 'Perempuan', 'Kos', '08979692270', 'rithahatma@gmail.com', 'makaud', 'saran', 6, 265, '2023-07-17 20:47:34', '2023-07-17 20:47:34'),
('hai', '2023-07-18', 'Perempuan', 'haha', '08979695542', 'hai@gmail.com', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem aku aku', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem aku aku', 6, 266, '2023-07-17 23:39:06', '2023-07-17 23:39:06'),
('hanihanifhanif', '2023-07-18', 'Laki-laki', 'haha', '08979695541', 'hanifhanifhanif@gmail.com', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem aku aku', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem aku aku', 6, 267, '2023-07-17 23:42:47', '2023-07-17 23:42:47'),
('hasna', '2023-07-18', 'Perempuan', 'rumah hanif', '08979797979', 'hasna@gmail.com', 'sekolah', 'gaada', 6, 268, '2023-07-17 23:49:02', '2023-07-17 23:49:02'),
('hasna', '2023-07-18', 'Perempuan', 'rumah hanif', '08979797979', 'hasna@gmail.com', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, to', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, to', 6, 269, '2023-07-17 23:49:36', '2023-07-17 23:49:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','superadmin') NOT NULL,
  `id_opd` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `id_opd`) VALUES
(1, 'roy', 'roy@gmail.com', NULL, '$2y$10$2AFZzvOkJSeoKlRssS.siubnFKA/bJrrYSRovPZx2SHU7D5yL8EP6', NULL, '2023-07-11 23:59:17', '2023-07-17 19:07:09', 'admin', 1),
(2, 'ray', 'ray@gmail.com', NULL, '$2y$10$cWWr9RsOz9Nf1.HqPXKWl./gvQBHxystPmVT.sFa7NMnbcM.jRuAm', NULL, '2023-07-16 18:30:58', '2023-07-16 18:30:58', 'superadmin', NULL),
(4, 'ppp', 'ppp@gmail.com', NULL, '$2y$10$Tc84kVFFo63UTvoOwgTluuAtD8uteMAsoc4jM.TouP18fGnf9jR/6', NULL, '2023-07-17 09:47:22', '2023-07-17 09:47:22', 'admin', NULL),
(5, 'blaterr', 'blaterr@gmail.com', NULL, '$2y$10$jjROTa2Ol5M/p1rvjtWic.PXNa0nRGMp2v4HUWIYpSFg8TGZERX22', NULL, '2023-07-17 10:18:18', '2023-07-17 10:18:49', 'admin', NULL),
(6, 'DLH', 'dinaslingkungan@gmail.com', NULL, '$2y$10$ghAhAwiP2rAtNjAKu2UPj.hZ/MjsJj4E9HRLJFLUvGUCXSNKgCZgS', NULL, '2023-07-17 11:19:44', '2023-07-17 18:59:32', 'admin', 6),
(9, 'DLH', 'dlhh@gmail.com', NULL, '$2y$10$TXAPesqZneOXR9oUYk9ST.1iTrCtdpJHBSbSpuV27EOkyrCUOtU.a', NULL, '2023-07-17 18:54:23', '2023-07-17 18:54:23', 'admin', 6);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

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
-- Indeks untuk tabel `opd`
--
ALTER TABLE `opd`
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
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`id_tamu`),
  ADD KEY `tbl_pengunjung_id_opd_foreign` (`id_opd`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_opd_foreign` (`id_opd`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `opd`
--
ALTER TABLE `opd`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `id_tamu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD CONSTRAINT `tbl_pengunjung_id_opd_foreign` FOREIGN KEY (`id_opd`) REFERENCES `opd` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_opd_foreign` FOREIGN KEY (`id_opd`) REFERENCES `opd` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
