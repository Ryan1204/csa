-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Nov 2022 pada 15.10
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insert_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_asset`
--

CREATE TABLE `cassa_asset` (
  `id_asset` int(3) NOT NULL,
  `jenis_asset` varchar(50) NOT NULL,
  `kode_asset` varchar(50) NOT NULL,
  `nama_asset` varchar(150) NOT NULL,
  `tgl_pajak` date NOT NULL,
  `keterangan_asset` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '1',
  `gambar_asset` varchar(150) NOT NULL,
  `fullpath` varchar(150) NOT NULL,
  `createdtime` datetime NOT NULL,
  `createdby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_audit_kehadiran`
--

CREATE TABLE `cassa_audit_kehadiran` (
  `id_audit` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `EmployeeID` varchar(50) NOT NULL,
  `cek` varchar(50) NOT NULL,
  `lokasi` varchar(150) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `perangkat` varchar(50) NOT NULL,
  `browser` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_codemom`
--

CREATE TABLE `cassa_codemom` (
  `id` int(3) NOT NULL,
  `id_mom` varchar(50) NOT NULL,
  `id_lsp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_daily_report_img`
--

CREATE TABLE `cassa_daily_report_img` (
  `id_daily` int(11) NOT NULL,
  `kode_daily` varchar(50) NOT NULL,
  `proyek` varchar(50) NOT NULL,
  `jumlah_foto` varchar(50) NOT NULL,
  `durasi` date NOT NULL,
  `karyawan` varchar(150) NOT NULL,
  `keterangan` text NOT NULL,
  `dibuat` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT '1',
  `finish_report` datetime NOT NULL,
  `waktu_respon1` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_daily_report_img`
--

INSERT INTO `cassa_daily_report_img` (`id_daily`, `kode_daily`, `proyek`, `jumlah_foto`, `durasi`, `karyawan`, `keterangan`, `dibuat`, `waktu`, `status`, `finish_report`, `waktu_respon1`) VALUES
(4, '59341', 'TES11', '7', '2022-09-30', 'ryanmuhammadbahrudin@gmail.com', 'Keterangan...', 'IT', '2022-09-27 16:22:25', '3', '2022-09-27 16:26:38', '2022-09-27 16:24:02'),
(5, '90571', 'TES11', '2', '2022-09-30', 'ryanmuhammadbahrudin@gmail.com', 'foto HD', 'IT', '2022-09-28 09:13:41', '3', '2022-09-28 09:15:00', '2022-09-28 09:14:09'),
(6, '75138', 'OFFICE CASSA', '6', '2022-11-04', 'ryanmuhammadbahrudin@gmail.com', 'adada', 'IT CASSA', '2022-10-25 15:04:49', '2', '0000-00-00 00:00:00', '2022-10-25 15:07:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_daily_report_img_sub`
--

CREATE TABLE `cassa_daily_report_img_sub` (
  `id` int(11) NOT NULL,
  `kode_daily` varchar(50) NOT NULL,
  `tgl_upload` date NOT NULL,
  `foto` varchar(150) NOT NULL,
  `ket_daily` text NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `createdtime` datetime NOT NULL,
  `tipe_berkas` varchar(50) NOT NULL,
  `ukuran_berkas` varchar(50) NOT NULL,
  `stts_foto` varchar(50) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_daily_report_img_sub`
--

INSERT INTO `cassa_daily_report_img_sub` (`id`, `kode_daily`, `tgl_upload`, `foto`, `ket_daily`, `createdby`, `createdtime`, `tipe_berkas`, `ukuran_berkas`, `stts_foto`) VALUES
(22, '59341', '2022-09-27', '0418a08c315b7315b26d421c8c5c3369.jpg', 'foto1', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-27 16:24:08', '.jpg', '207.39', '1'),
(23, '59341', '2022-09-27', 'da3fc1a39446ba589e9db796eaceede8.JPG', 'foto2', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-27 16:24:08', '.JPG', '259.61', '1'),
(24, '59341', '2022-09-27', '47dfee89408d229d74f61a68a2910517.JPG', 'foto3', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-27 16:24:08', '.JPG', '218.77', '1'),
(25, '90571', '2022-09-28', 'bfdfc3aa2f134698d79f41554a3d986f.JPG', '', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-28 09:14:11', '.JPG', '139.52', '1'),
(26, '90574', '2022-09-28', 'd131261d5b1126638cdfda874ee06e0e.JPG', '', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-28 09:14:11', '.JPG', '182.51', '1'),
(27, 'fwe', '2022-09-28', 'd131261d5b1126638cdfda874ee06e0e.JPG', '', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-28 09:14:11', '.JPG', '182.51', '1'),
(28, '90574', '2022-09-28', 'd131261d5b1126638cdfda874ee06e0e.JPG', '', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-28 09:14:11', '.JPG', '182.51', '1'),
(29, '75138', '2022-10-25', '36301716df8b95304084fa3425f153dc.png', '1', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-25 15:07:47', '.png', '72.17', '1'),
(30, '75138', '2022-10-25', '80f0de5b9b18859af9e64c15d8fce5d0.jpeg', '2', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-25 15:07:47', '.jpeg', '60.43', '1'),
(31, '75138', '2022-10-25', '9673c566afac6dda9e7b23631d5d9f0a.jpeg', '3', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-25 15:07:47', '.jpeg', '35.8', '1'),
(32, '75138', '2022-10-25', '40b29861a514f55ba51f153dc7d9d9f0.png', '4', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-25 15:07:47', '.png', '53.76', '1'),
(33, '75138', '2022-10-25', '99ad38594f8f4fc57ac92bd3a4b2d346.png', '5', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-25 15:07:47', '.png', '49.88', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_department`
--

CREATE TABLE `cassa_department` (
  `id_dept` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_department`
--

INSERT INTO `cassa_department` (`id_dept`, `department`, `createdby`, `createdtime`) VALUES
(1, 'Hr & Ga', '', '0000-00-00 00:00:00'),
(2, 'Finance & Acc', '', '0000-00-00 00:00:00'),
(3, 'IT', '', '0000-00-00 00:00:00'),
(4, 'Purchasing', '', '0000-00-00 00:00:00'),
(5, 'Design', '', '0000-00-00 00:00:00'),
(6, 'Project', '', '0000-00-00 00:00:00'),
(7, 'Qs', '', '0000-00-00 00:00:00'),
(8, 'Driver', '', '0000-00-00 00:00:00'),
(9, 'Office Boy', '', '0000-00-00 00:00:00'),
(10, 'Helper', '', '0000-00-00 00:00:00'),
(11, 'Management', '', '2022-08-25 12:23:12'),
(12, 'Business Development', '', '2022-08-30 09:46:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_divisi`
--

CREATE TABLE `cassa_divisi` (
  `id_div` int(20) NOT NULL,
  `id_dept` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_divisi`
--

INSERT INTO `cassa_divisi` (`id_div`, `id_dept`, `divisi`) VALUES
(1, '1', 'Manager'),
(2, '1', 'Staff'),
(3, '1', 'Supervisor'),
(16, '2', 'Manager'),
(17, '2', 'Supervisor'),
(18, '2', 'Staff'),
(19, '4', 'Manager'),
(20, '4', 'Supervisor'),
(21, '4', 'Staff'),
(22, '5', 'Manager'),
(23, '5', 'Supervisor'),
(24, '5', 'Staff'),
(25, '6', 'Manager'),
(26, '6', 'Supervisor'),
(27, '7', 'Manager'),
(28, '7', 'Supervisor'),
(29, '7', 'Staff'),
(30, '3', 'Staff'),
(31, '3', 'Supervisor'),
(32, '8', 'Karyawan'),
(33, '9', 'Workshop'),
(34, '4', 'Staff Workshop'),
(35, '10', 'Karyawan'),
(36, '6', 'Site Manager'),
(38, '11', 'Direktur'),
(39, '12', 'Staff');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_doc`
--

CREATE TABLE `cassa_doc` (
  `id_doc` int(50) NOT NULL,
  `EmployeeID` varchar(150) NOT NULL,
  `berkas_ktp` varchar(150) NOT NULL,
  `berkas_cv` varchar(150) NOT NULL,
  `berkas_kk` varchar(150) NOT NULL,
  `berkas_ijazah` varchar(150) NOT NULL,
  `berkas_perjanjian1` varchar(150) NOT NULL,
  `berkas_perjanjian2` varchar(150) NOT NULL,
  `berkas_perjanjian3` varchar(150) NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_doc`
--

INSERT INTO `cassa_doc` (`id_doc`, `EmployeeID`, `berkas_ktp`, `berkas_cv`, `berkas_kk`, `berkas_ijazah`, `berkas_perjanjian1`, `berkas_perjanjian2`, `berkas_perjanjian3`, `createdby`, `createdtime`) VALUES
(1, '0070822', '81f0b1df37cb7f81136becc2af6736d3.pdf', '6b48ebfd81cab6d2e50f8400e0b31447.pdf', '', '', '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_history_mom_tidak`
--

CREATE TABLE `cassa_history_mom_tidak` (
  `id_history` int(3) NOT NULL,
  `id_mom` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_history_mom_tidak`
--

INSERT INTO `cassa_history_mom_tidak` (`id_history`, `id_mom`, `status`) VALUES
(1, 'MOM1608220001', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_izin`
--

CREATE TABLE `cassa_izin` (
  `id` int(11) NOT NULL,
  `kode_izin` varchar(50) NOT NULL,
  `EmployeeID` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `alasan` text DEFAULT NULL,
  `tanggal` date NOT NULL,
  `dan_tanggal` date NOT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `dan_waktu` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `tgl_pengajuan` datetime NOT NULL,
  `atasan_mengetahui` varchar(50) NOT NULL,
  `atasan_waktu` varchar(150) NOT NULL,
  `hrd_menyetujui` varchar(50) NOT NULL,
  `hrd_waktu` varchar(150) NOT NULL,
  `alasan_tolak` varchar(150) NOT NULL,
  `berkas` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_izin`
--

INSERT INTO `cassa_izin` (`id`, `kode_izin`, `EmployeeID`, `kategori`, `alasan`, `tanggal`, `dan_tanggal`, `waktu`, `dan_waktu`, `status`, `tgl_pengajuan`, `atasan_mengetahui`, `atasan_waktu`, `hrd_menyetujui`, `hrd_waktu`, `alasan_tolak`, `berkas`) VALUES
(25, 'FPI2809220001', '0270822', 'DATANG TERLAMBAT', 'datang terlambat', '2022-09-28', '2022-09-28', '13:00', NULL, 1, '2022-09-28 14:46:17', 'IT CASSA', '2022-10-07 09:13:17', 'IT CASSA', '2022-10-07 13:09:54', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_jmlcuti`
--

CREATE TABLE `cassa_jmlcuti` (
  `id` int(11) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `kantor` varchar(50) DEFAULT 'cassa'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_jmlcuti`
--

INSERT INTO `cassa_jmlcuti` (`id`, `tahun`, `jumlah`, `kantor`) VALUES
(3, '2022', '12', 'cassa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_karyawan`
--

CREATE TABLE `cassa_karyawan` (
  `id` int(20) NOT NULL,
  `EmployeeID` varchar(50) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `ulang_tahun` date NOT NULL,
  `nomor_ktp` varchar(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status_kawin` varchar(20) NOT NULL,
  `alamat_ktp` text NOT NULL,
  `alamat_domisili` text NOT NULL,
  `no_telp1` varchar(20) NOT NULL,
  `no_telp2` varchar(20) NOT NULL,
  `no_telp_darurat` text NOT NULL,
  `hubungan` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_kantor` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `tgl_bergabung` date NOT NULL,
  `Active` varchar(20) NOT NULL DEFAULT '1',
  `akhir_kerja` date NOT NULL,
  `resign_date` datetime DEFAULT NULL,
  `perjanjian_kerja` varchar(50) NOT NULL,
  `supervisorID` varchar(50) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `ats_nama` varchar(50) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `bpjs_kes` varchar(25) NOT NULL,
  `bpjs_ket` varchar(25) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `ukuran_berkas` varchar(150) NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `createdtime` varchar(50) NOT NULL,
  `updateby` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `alasan_resign` text NOT NULL,
  `kantor` varchar(50) NOT NULL DEFAULT 'cassa'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_karyawan`
--

INSERT INTO `cassa_karyawan` (`id`, `EmployeeID`, `nama_karyawan`, `ulang_tahun`, `nomor_ktp`, `gender`, `status_kawin`, `alamat_ktp`, `alamat_domisili`, `no_telp1`, `no_telp2`, `no_telp_darurat`, `hubungan`, `email`, `email_kantor`, `divisi`, `tgl_bergabung`, `Active`, `akhir_kerja`, `resign_date`, `perjanjian_kerja`, `supervisorID`, `bank`, `ats_nama`, `no_rek`, `bpjs_kes`, `bpjs_ket`, `npwp`, `foto`, `ukuran_berkas`, `createdby`, `createdtime`, `updateby`, `updatetime`, `alasan_resign`, `kantor`) VALUES
(36, '0011212', 'IT CASSA', '1988-03-04', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '38', '2012-12-17', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '', 'BCA', '', '', '', '', '', 'd38edf8de44fc39dc36aff4462a0e5c7.jpg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/d38edf8de44fc39dc36aff4462a0e5c7.jpg', '', '2022-08-25 12:23:12', 'MARTIN', '2022-09-02 16:11:02', '', ''),
(41, '0021212', 'GEOFREY', '1986-04-11', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '38', '2012-12-17', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '', 'BCA', '', '', '', '', '', '57d87c1e636512964cf7f531c360c62f.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/57d87c1e636512964cf7f531c360c62f.JPG', '', '2022-08-25 12:23:12', 'DAYENNA', '2022-09-13 16:38:32', '', ''),
(43, '0031212', 'MUHRONI', '1981-04-22', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '26', '2013-01-11', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0190320', 'BCA', '', '', '', '', '', '8914d584638efd09efbd0f6f3edfeaaf.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/8914d584638efd09efbd0f6f3edfeaaf.JPG', '', '0000-00-00 00:00:00', 'Superadmin', '2022-09-14 10:53:02', '', ''),
(44, '0040817', 'EDGINA ALVITA INDRI', '1988-12-19', '', 'PEREMPUAN', 'MARRIED', '', '', '', '', '', 'SUAMI', '', '', '22', '2017-08-01', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '', 'BCA', '', '', '', '', '', 'd8fde81e96d4085d7c30edbd113e8eb4.jpeg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/d8fde81e96d4085d7c30edbd113e8eb4.jpeg', 'Mellyana Sari Simatupang', '2022-08-26 09:44:55', 'DAYENNA', '2022-09-13 16:55:03', '', ''),
(45, '0050714', 'DENI WS', '1989-03-29', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '21', '2014-07-01', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0011212', 'BCA', '', '', '', '', '', '7e1a55107cedade59992d6e4d00da23d.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/7e1a55107cedade59992d6e4d00da23d.JPG', '', '0000-00-00 00:00:00', 'Superadmin', '2022-09-14 10:55:52', '', ''),
(46, '0060217', 'FAJAR FIRMANSYAH', '1989-02-02', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '34', '2017-02-01', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0021212', 'BCA', '', '', '', '', '', '5f436ef1489b970e0dda013da8421329.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/5f436ef1489b970e0dda013da8421329.JPG', 'Mellyana Sari Simatupang', '2022-08-26 10:19:26', 'DAYENNA', '2022-09-14 10:38:29', '', ''),
(47, '0071117', 'DENI YUDISTHIRA', '1987-08-18', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '33', '2017-11-01', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0011212', 'BCA', '', '', '', '', '', 'de9f5e27aba3a9ae732a42584bd2e70f.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/de9f5e27aba3a9ae732a42584bd2e70f.JPG', 'Mellyana Sari Simatupang', '2022-08-26 10:24:49', 'Superadmin', '2022-09-22 10:05:14', '', ''),
(49, '0110221', 'CECILIA TANIA', '1995-09-04', '', 'PEREMPUAN', 'SINGLE', '', '', '', '', '', 'ORANG TUA', '', '', '24', '2021-02-01', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0040817', 'BANK BCA UNTAR', '', '', '000222458822', '000222458822', '85.013.222.6-404.000', '4102420764ed012403ca533897c93702.jpg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/4102420764ed012403ca533897c93702.jpg', 'Mellyana Sari Simatupang', '2022-08-30 09:20:09', 'DAYENNA', '2022-09-13 16:50:29', '', ''),
(50, '0120820', 'DAYENNA WULANDA', '1990-01-24', '', 'PEREMPUAN', 'MARRIED', '', '', '', '', '', 'SUAMI', '', '', '39', '2020-08-06', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0011212', 'BCA BURSA EFEK', '', '', '', '', '731847349402000', '20e1da356ed8a54a3d97230e74743fdc.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/20e1da356ed8a54a3d97230e74743fdc.JPG', 'Mellyana Sari Simatupang', '0000-00-00 00:00:00', 'DAYENNA', '2022-09-13 17:08:01', '', ''),
(51, '0130918', 'EDY PRAYITNO', '1979-03-29', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ANAK', '', '', '26', '2018-09-06', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0190320', 'BCA METRO', '', '', '', '', '', '0f9ef8f52943f7832b756dcfdead0032.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/0f9ef8f52943f7832b756dcfdead0032.JPG', 'Mellyana Sari Simatupang', '0000-00-00 00:00:00', 'DAYENNA', '2022-09-13 17:09:26', '', ''),
(52, '0190320', 'EGI RAHMAWATI', '1981-06-03', '', 'PEREMPUAN', 'MARRIED', '', '', '', '', '', 'SUAMI', '', '', '25', '2020-03-11', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0011212', 'BCA PALMERAH', '', '', '0001258154122', '0001258154122', '594619181035000', '6d0bc81b6af5ca0aa6a610853cf63767.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/6d0bc81b6af5ca0aa6a610853cf63767.JPG', 'Mellyana Sari Simatupang', '2022-08-30 09:36:03', 'DAYENNA', '2022-09-13 16:52:04', '', ''),
(53, '015021', 'YOSIA CHRISTIANTO PUTRA', '1994-03-24', '', 'LAKI-LAKI', 'SINGLE', '', '', '', '', '', 'ORANG TUA', '', '', '36', '2021-01-06', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0190320', 'BCA', '', '', '', '', '843918517425000', '32384d9ab73e5af72cae3167c0f7bcca.jpg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/32384d9ab73e5af72cae3167c0f7bcca.jpg', '', '0000-00-00 00:00:00', 'YOSIA CHRISTIANTO PUTRA', '2022-09-20 08:32:00', '', ''),
(54, '0180122', 'KANDY FELIXON', '1989-12-12', '', 'LAKI-LAKI', 'SINGLE', '', '', '', '', '', 'SAUDARA KANDUNG', '', '', '22', '2022-01-24', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0011212', 'BCA UNTAR 1', '', '', '0002305861672', '0002305861672', '737982249041000', '02c6d830fa40702f5bda5891d5a24e4c.jpg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/02c6d830fa40702f5bda5891d5a24e4c.jpg', '', '0000-00-00 00:00:00', 'DAYENNA', '2022-09-13 18:03:10', '', ''),
(55, '0190222', 'KUNCORO AJI PRASETYO', '1994-07-25', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '29', '2022-02-17', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0021212', 'BCA', '', '', '', '', '853181279515000', 'e4f759c645ae50dee9139bda43ab3096.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/e4f759c645ae50dee9139bda43ab3096.JPG', '', '0000-00-00 00:00:00', 'KUNCORO AJI PRASETYO', '2022-09-13 17:08:12', '', ''),
(56, '0200122', 'CUT MUTIA SARI', '1993-10-24', '', 'PEREMPUAN', 'MARRIED', '', '', '', '', '', 'SUAMI', '', '', '18', '2022-01-03', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0011212', 'BCA', '', '', '', '', '', '7b3957c04497333c08d53fc6e91ac075.jpeg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/7b3957c04497333c08d53fc6e91ac075.jpeg', '', '0000-00-00 00:00:00', 'CUT MUTIA SARI', '2022-09-13 17:30:35', '', ''),
(57, '0210322', 'TANIA DISSY SARASWATI', '1987-09-29', '', 'PEREMPUAN', 'SINGLE', '', '', '', '', '', 'SAUDARA', '', '', '16', '2022-03-21', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0011212', 'BCA SETIABUDI', '', '', '', '', '438932428325000', 'ff3ce756cafe1d56a1d94e7aaa144dd4.jpg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/ff3ce756cafe1d56a1d94e7aaa144dd4.jpg', '', '0000-00-00 00:00:00', 'TANIA DISSY SARASWATI', '2022-09-14 20:45:15', '', ''),
(58, '0230722', 'RESI OKTAVIANI', '1994-10-04', '', 'PEREMPUAN', 'MARRIED', '', '', '', '', '', 'SUAMI', '', '', '21', '2022-07-14', '1', '2022-10-14', '0000-00-00 00:00:00', 'KONTRAK', '0011212', '', '', '', '', '', '640922282334000', '2a55e014f1a5e4c84a5c0d0a78a5c291.jpg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/2a55e014f1a5e4c84a5c0d0a78a5c291.jpg', '', '0000-00-00 00:00:00', 'RESI OKTAVIANI', '2022-09-13 17:27:46', '', ''),
(59, '0260822', 'TIARMA ISI', '1994-06-06', '', 'PEREMPUAN', 'SINGLE', '', '', '', '', '', 'KERABAT', '', '', '24', '2022-08-01', '1', '2022-11-01', '0000-00-00 00:00:00', 'KONTRAK', '0040817', 'BCA', '', '', '00017294559359', '00017294559359', '837407808128000', '37b0ecaa594b9026a37795d85d34dafc.jpg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/37b0ecaa594b9026a37795d85d34dafc.jpg', '', '0000-00-00 00:00:00', 'TIARMA ISI', '2022-09-13 19:30:09', '', ''),
(60, '0100220', 'RIZKY ARIANUGROHO', '1988-04-29', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '19', '2020-02-24', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0011212', 'BCA', '', '', '', '21061760456', '724629506416000', 'b899f58d60d3bea5082b981a64adf93b.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/b899f58d60d3bea5082b981a64adf93b.JPG', '', '0000-00-00 00:00:00', 'RIZKY ARIANUGROHO', '2022-09-13 17:17:57', '', ''),
(61, '0080521', 'IRKHAMULLOH', '1994-08-23', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '24', '2021-06-08', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0040817', 'BCA', '', '', '0001255889676', '0001255889676', '90.970.817.4-501.000', '58b1cb3abc9ff472257db97a6d7ce870.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/58b1cb3abc9ff472257db97a6d7ce870.JPG', 'Mellyana Sari Simatupang', '2022-08-30 17:20:04', 'DAYENNA', '2022-09-13 16:50:20', '', ''),
(62, '0270822', 'RYAN MUHAMMAD BAHRUDIN', '1995-04-12', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '29', '2022-08-09', '1', '2022-11-08', '0000-00-00 00:00:00', 'PERCOBAAN', '0011212', 'BCA PASAR KEMIS', '', '', '0001743152084', '0001743152084', '', 'db00c5c168777fbe9671f6a34a42ecf2.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/db00c5c168777fbe9671f6a34a42ecf2.JPG', 'Superadmin', '', 'IT CASSA', '2022-10-21 15:47:44', '', ''),
(63, '0280122', 'NGADIONO', '1976-10-12', '', 'LAKI-LAKI', 'WIDOWED', '', '', '', '', '', 'SAUDARA KANDUNG', '', '', '36', '2022-01-11', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0011212', 'BCA', '', '', '', '', '85.089.442.9.625.000', '1d700ab1e053fe3994f89373643bee23.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/1d700ab1e053fe3994f89373643bee23.JPG', 'Superadmin', '2022-09-01 16:54:03', 'MARTIN', '2022-09-21 20:01:13', '', ''),
(64, '0290622', 'AZAM ASHARI', '1989-09-26', '', 'LAKI-LAKI', 'MARRIED', '', '', '', '', '', 'ISTRI', '', '', '26', '2022-06-01', '1', '2023-06-01', '0000-00-00 00:00:00', 'KONTRAK', '0011212', 'BCA', '', '', '', '', '', 'af1ff425819c977eeadb813ec27fad8d.jpeg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/af1ff425819c977eeadb813ec27fad8d.jpeg', 'MARTIN', '2022-09-05 11:41:40', 'DAYENNA', '2022-09-14 10:37:40', '', ''),
(65, '0300922', 'JUMADI', '1969-11-19', '', 'LAKI-LAKI', 'DIVORCED', '', '', '', '', '', 'ANAK', '', '', '26', '2022-06-01', '1', '0000-00-00', '0000-00-00 00:00:00', 'KONTRAK', '0011212', 'BCA', '', '', '', '', '', 'a9ed0a2325d8206ef6704bfbb4d0ff0c.jpeg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/a9ed0a2325d8206ef6704bfbb4d0ff0c.jpeg', 'DAYENNA', '2022-09-14 09:37:42', 'DAYENNA', '2022-09-14 10:37:54', '', ''),
(66, '0310922', 'ADMIN CASSA', '1995-02-01', '', 'LAKI-LAKI', '', '', '', '', '', '', 'SAUDARA KANDUNG', '', '', '32', '2022-05-18', '1', '0000-00-00', '0000-00-00 00:00:00', 'PERCOBAAN', '0011212', 'BCA', '', '', '', '', '', 'd539a0468e0d230ee486daef966a8547.jpeg', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/d539a0468e0d230ee486daef966a8547.jpeg', 'DAYENNA', '2022-09-14 09:50:05', 'IT CASSA', '2022-10-28 16:35:41', '', ''),
(67, '0320922', 'SLAMET RIYADI', '1991-05-17', '', 'LAKI-LAKI', 'SINGLE', '', '', '', '', '', '', '', '', '32', '2020-08-19', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '0021212', 'BCA', '', '', '', '', '', '4d82421ed302327aa65c04f31ef66205.JPG', '/home/u7199351/public_html/project/img/uploads/foto_karyawan/4d82421ed302327aa65c04f31ef66205.JPG', 'DAYENNA', '2022-09-15 09:22:43', 'DAYENNA', '2022-09-15 09:31:57', '', ''),
(68, '0050822', 'DIKA PRATAMA', '0000-00-00', '', 'LAKI-LAKI', '', '', '', '', '', '', '', '', '', '', '2022-08-05', '1', '0000-00-00', '0000-00-00 00:00:00', '', '', 'BCA', '', '', '', '', '', '0531064fd40be766c28e9fec38fb5602.png', 'C:/xampp/htdocs/project/img/uploads/foto_karyawan/0531064fd40be766c28e9fec38fb5602.png', 'IT', '', 'IT', '2022-08-29 10:12:01', '', ''),
(98, '0040822', 'RISA UMAMI', '0000-00-00', '', 'PEREMPUAN', '', '', '', '', '', '', '', '', '', '71', '2022-08-09', '1', '2022-09-23', '0000-00-00 00:00:00', 'KONTRAK', '', 'BCA', '', '', '', '', '', '2a7efa7eefe79894fd077510875783f6.jpg', 'C:/xampp/htdocs/project/img/uploads/foto_karyawan/2a7efa7eefe79894fd077510875783f6.jpg', '', '2022-08-24 13:35:25', 'IT', '2022-09-02 15:46:38', '', ''),
(100, '0060822', 'VD', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '49', '2022-08-12', '1', '0000-00-00', '0000-00-00 00:00:00', 'TETAP', '', 'BCA', '', '', '', '', '', '5ba765566b0f9585c02157a45b54d52d.JPG', 'C:/xampp/htdocs/project/img/uploads/foto_karyawan/5ba765566b0f9585c02157a45b54d52d.JPG', 'IT', '', 'IT', '2022-09-06 14:15:48', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_kategori_izin`
--

CREATE TABLE `cassa_kategori_izin` (
  `id_izin` int(11) NOT NULL,
  `kode_kategori` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `createdtime` datetime NOT NULL,
  `updateby` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_kategori_izin`
--

INSERT INTO `cassa_kategori_izin` (`id_izin`, `kode_kategori`, `jenis`, `createdby`, `createdtime`, `updateby`, `updatetime`) VALUES
(7, 'HRD250822001', 'SAKIT', 'Superadmin', '2022-08-25 10:48:58', '', '0000-00-00 00:00:00'),
(8, 'HRD250822002', 'CUTI', 'Superadmin', '2022-08-25 10:49:04', '', '0000-00-00 00:00:00'),
(9, 'HRD250822003', 'MENINGGALKAN KANTOR & KEMBALI', 'Superadmin', '2022-08-25 10:49:08', '', '0000-00-00 00:00:00'),
(10, 'HRD250822004', 'PULANG LEBIH AWAL', 'Superadmin', '2022-08-25 10:49:36', '', '0000-00-00 00:00:00'),
(11, 'HRD250822005', 'DATANG TERLAMBAT', 'Superadmin', '2022-08-25 10:49:47', '', '0000-00-00 00:00:00'),
(12, 'HRD250822006', 'LEMBUR', 'Superadmin', '2022-08-25 10:49:57', '', '0000-00-00 00:00:00'),
(13, 'HRD300822001', 'TUGAS LUAR KOTA', 'IT', '2022-08-30 15:02:37', '', '0000-00-00 00:00:00'),
(14, 'HRD150922001', 'IZIN TIDAK BEKERJA', 'IT', '2022-09-15 09:06:22', '', '0000-00-00 00:00:00'),
(15, 'HRD230922001', 'TUGAS LUAR KANTOR', 'IT', '2022-09-23 10:36:10', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_kehadiran`
--

CREATE TABLE `cassa_kehadiran` (
  `id` int(11) NOT NULL,
  `EmployeeID` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `cek_in` varchar(50) NOT NULL,
  `cek_out` varchar(50) NOT NULL,
  `out` time NOT NULL,
  `kategori_izin` varchar(50) NOT NULL,
  `lokasi` varchar(150) NOT NULL,
  `lokasi_cekout` varchar(150) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `foto2` varchar(150) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `perangkat` varchar(50) NOT NULL,
  `browser` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_kehadiran`
--

INSERT INTO `cassa_kehadiran` (`id`, `EmployeeID`, `tanggal`, `cek_in`, `cek_out`, `out`, `kategori_izin`, `lokasi`, `lokasi_cekout`, `foto`, `foto2`, `ip`, `perangkat`, `browser`) VALUES
(10, '0280122', '2022-09-01', '17:44', '23:05', '00:00:00', '', '-6.1766921,106.7914753', '-6.1764729,106.7921722', '', '', '182.2.169.51', 'Handphone', 'Google Chrome'),
(11, '0270822', '2022-09-01', '', '18:08', '00:00:00', '', '', '-6.1791834,106.7123717', '', 'f30fbcbabbaa7169167cdd133ee5cc3e.jpg', '180.243.3.70', 'Handphone', 'Google Chrome'),
(12, '0110221', '2022-09-02', '08:34', '17:23', '00:00:00', '', 'error=User denied Geolocation', '-6.179749226199811,106.79173762251708', '4a6dafdf83931237f503b0c90c439615.jpg', 'db6a258c0c79eb69a4d5d8c5cf1c1b85.jpg', '172.225.74.113', 'Handphone', 'Lainnya'),
(13, '0040817', '2022-09-02', '08:32', '18:43', '00:00:00', '', '-6.1791185915383116,106.7122026971464', '-6.179136084398421,106.71219980354114', '82ccc3d350ae578448681f1ce35ccb52.jpg', '19070e66c64d9e1f77be3334d89b2267.jpg', '146.75.160.29', 'Handphone', 'Lainnya'),
(14, '0210322', '2022-09-02', '08:39', '21:29', '00:00:00', '', '-6.1792102,106.7124216', '-6.1792206,106.7124084', '7fb2d37087bd7661e74068f0cd043bbf.jpg', 'fd73b81bc59f92ef541d5b483efc21bd.jpg', '110.136.62.88', 'Handphone', 'Google Chrome'),
(15, '0270822', '2022-09-02', '08:42', '18:02', '00:00:00', '', '-6.1791954,106.712407', '-6.1791862,106.7123698', 'bc1565b111afbdb0dd401ee43297834b.jpg', '29d660220f4d2ebbd6c2845785daf184.jpg', '182.2.166.88', 'Handphone', 'Google Chrome'),
(16, '015021', '2022-09-02', '08:52', '23:12', '00:00:00', '', '-6.1792401,106.7122688', '-6.1927034,106.8223483', '55c7ea6b6039a099983b118776b29111.jpg', 'fb7f5506d2a7abf337e6d50b85506055.jpg', '182.2.132.163', 'Handphone', 'Google Chrome'),
(17, '0120820', '2022-09-02', '08:54', '', '00:00:00', '', '-6.2002252,106.6911992', '', '9ab9e2c072ac70e9f32399f9fc7c2792.jpg', '', '182.3.38.226', 'Handphone', 'Google Chrome'),
(18, '0190320', '2022-09-02', '08:53', '', '00:00:00', '', '-6.1782985,106.7118542', '', '41c1020346542be67cba4f587d5004bb.jpg', '', '110.136.62.88', 'Handphone', 'Google Chrome'),
(19, '0280122', '2022-09-02', '08:56', '21:05', '00:00:00', '', '-6.1812817,106.7105651', '-6.176595,106.7922519', '', '22bacc51bfa444e94a067654faf0d399.jpg', '182.3.37.181', 'Handphone', 'Google Chrome'),
(20, '0180122', '2022-09-02', '09:26', '', '00:00:00', '', '-6.1791776,106.7123641', '', '', '', '110.136.62.88', 'Handphone', 'Google Chrome'),
(21, '0190222', '2022-09-02', '09:43', '', '00:00:00', '', '-6.1791803,106.7123625', '', 'e196132211756422650c411a51f1288e.jpg', '', '110.136.62.88', 'Handphone', 'Google Chrome'),
(22, '0200122', '2022-09-02', '09:53', '18:18', '00:00:00', '', '-6.1792149,106.7124075', '-6.1798355,106.713697', '49e718375964a328a90d61520579c200.jpg', 'd0ec43786fbc62cbe7ee0f88c3f6425c.jpg', '180.214.233.3', 'Handphone', 'Google Chrome'),
(23, '0210322', '2022-10-28', '', '', '00:00:00', '8', '', '', '', '', '', '', ''),
(24, '0260822', '2022-09-02', '11:14', '18:08', '00:00:00', '', '-6.179174,106.7123694', '-6.1791769,106.7123692', '578250330831be14c183776b1b24fa13.jpg', '42e5487a45519548634820ce7d3a811f.jpg', '110.136.62.88', 'Handphone', 'Google Chrome'),
(25, '0050714', '2022-09-02', '11:33', '18:09', '00:00:00', '', '-6.2057393,106.728758', '-6.2057395,106.7287567', '9d6d1f3b1acaff67774816c327695f91.jpg', '5170815f9c1b4de887fef4e50d9ddba9.jpg', '110.138.0.68', 'Handphone', 'Google Chrome'),
(26, '0031212', '2022-09-02', '16:13', '16:15', '00:00:00', '', '-6.2057403,106.7287576', '-6.2057417,106.728758', '60d8e56a4bfc5496c6b1640686250631.jpg', '42f2f917cd32333db688f0192ec09f35.jpg', '114.124.181.140', 'Handphone', 'Google Chrome'),
(27, '0130918', '2022-09-02', '16:17', '', '00:00:00', '', 'error=User denied Geolocation', '', 'af5b8501d23e1e149f486cc0cd3062a0.jpg', '', '110.138.0.68', 'Handphone', 'Google Chrome'),
(28, '0130918', '2022-09-03', '11:04', '02:26', '00:00:00', '', 'error=User denied Geolocation', 'error=User denied Geolocation', 'a059de3632e3097071fc231e0e761090.jpg', 'ab125acb05c9e73484929c2129eb2c8a.jpg', '110.138.0.68', 'Handphone', 'Google Chrome'),
(29, '0050714', '2022-09-03', '08:04', '', '00:00:00', '', '-6.2156518,106.7095601', '', '262141ba922c3aaca5969b9301ce839c.jpg', '', '110.138.0.68', 'Handphone', 'Google Chrome'),
(30, '0031212', '2022-09-03', '08:41', '16:32', '00:00:00', '', '-6.2057476,106.7287713', '-6.1776614,106.7911067', '258a3e409bf0169664b31921f11101e4.jpg', 'ae7c8df4406246486e8e8281c2e42001.jpg', '182.2.169.85', 'Handphone', 'Google Chrome'),
(31, '0280122', '2022-09-03', '08:46', '18:46', '00:00:00', '', '-6.2144652,106.7318566', '-6.1764316,106.7918539', '7f4111ad43606929fbb1b91f7f1e0ce8.jpg', '3740ce21321af7e01df18618dc087204.jpg', '182.3.36.0', 'Handphone', 'Google Chrome'),
(32, '015021', '2022-09-03', '08:47', '21:05', '00:00:00', '', '-6.1792315,106.7123565', '-6.1927251,106.8223794', 'f4907b8021e4498cbf87d1d6cc00e9d8.jpg', 'cd9a3ed796c64fb0ccdb3c2024d014b2.jpg', '182.3.37.131', 'Handphone', 'Google Chrome'),
(33, '0060217', '2022-09-03', '08:50', '', '00:00:00', '', '', '', '6455873e906607c999e9dffbfb1c7f55.jpg', '', '110.138.0.68', 'Handphone', 'Google Chrome'),
(34, '0130918', '2022-09-04', '11:42', '', '00:00:00', '', 'error=User denied Geolocation', '', '19288872e0aef8f659aaba9b1a67a814.jpg', '', '110.138.0.68', 'Handphone', 'Google Chrome'),
(35, '0280122', '2022-09-04', '13:07', '21:18', '00:00:00', '', '-6.1890777,106.768575', '-6.1765457,106.7922119', 'ae70e26acf57d8d9d2ebafa7b51228a0.jpg', '8c5a1c9f50f0feaa9f1eba2f40d7c4bd.jpg', '182.0.133.0', 'Handphone', 'Google Chrome'),
(36, '0050714', '2022-09-05', '07:59', '18:11', '00:00:00', '', '-6.2057243,106.7287968', '-6.2057664,106.7287966', 'e416724f6b0d3ad1f48d595d15e00668.jpg', '3da37636ac4a61fbfd6e2686a00ff97c.jpg', '110.138.0.68', 'Handphone', 'Google Chrome'),
(37, '0060217', '2022-09-05', '08:03', '19:08', '00:00:00', '', '-6.20593486,106.72878487', '-6.20570187,106.7287099', '07a9ae645373617eea8bc437eb189239.jpg', '901b5449d64b39cf95d61cc2bd68f7c1.jpg', '110.138.0.68', 'Handphone', 'Google Chrome'),
(38, '015021', '2022-09-05', '08:13', '21:23', '00:00:00', '', '-6.1791782,106.712363', '-6.1927014,106.8223742', 'd742939dcfa87ebeb247c5016e0c08d6.jpg', 'a1efa7dc90de09d4c89ba4d607360796.jpg', '114.124.241.5', 'Handphone', 'Google Chrome'),
(39, '0031212', '2022-09-05', '08:31', '17:41', '00:00:00', '', '-6.2056953,106.7287758', '-6.1766122,106.7922447', '75855637c34f36becb1d610f628fa81d.jpg', 'e5d8b7965dde6fccd4dfac422c677542.jpg', '182.2.138.99', 'Handphone', 'Google Chrome'),
(40, '0200122', '2022-09-05', '08:32', '18:33', '00:00:00', '', '-6.1792222,106.7124242', '-6.1792048,106.7124029', 'baf0fab80281145fcf89601d3044617a.jpg', 'c934cea7a6318fb30664f0b793ea0f8f.jpg', '110.136.58.33', 'Handphone', 'Google Chrome'),
(41, '0210322', '2022-09-05', '08:35', '20:21', '00:00:00', '', '-6.1792214,106.7124128', '-6.1792209,106.7124094', 'a685b8615835dde4bee38e4cb6f575e6.jpg', 'b6bde80605969bcb36b5400e63d2a215.jpg', '110.136.58.33', 'Handphone', 'Google Chrome'),
(42, '0270822', '2022-09-05', '08:43', '18:02', '00:00:00', '', '-6.1840812,106.7049616', '-6.1791698,106.7125277', 'e9a055d0e7c60d9efb0b6667005c4f77.jpg', '79d96ce75e2745cb1d16cfde6341c7b3.jpg', '182.3.36.121', 'Handphone', 'Google Chrome'),
(43, '0110221', '2022-09-05', '08:44', '16:42', '00:00:00', '', '-6.179108933927311,106.7124992415648', '-6.1929305923165625,106.82240710994567', '3fa3fd6baf36100795870fa7cea3bf8b.jpg', 'cf2fbaf5ee431c74b2d4473cd7f4f192.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(44, '0190320', '2022-09-05', '08:46', '18:31', '00:00:00', '', '-6.1792191,106.7124357', '-6.1792219,106.7124244', '74ea3c8488de4b4160e9187f8cf13573.jpg', 'f1f80caa3dd7caff9054ef9e1a953e8e.jpg', '110.136.58.33', 'Handphone', 'Google Chrome'),
(45, '0120820', '2022-09-05', '08:49', '', '00:00:00', '', '-6.1848026,106.643357', '', 'ce26e85d684b5b0a7f54424815afe490.jpg', '', '182.3.47.10', 'Handphone', 'Google Chrome'),
(46, '0260822', '2022-09-05', '08:52', '18:03', '00:00:00', '', '-6.1792135,106.7124119', '-6.1791758,106.7123811', '8b26d167d5467f28c56ec07e75501660.jpg', '85607b20b9ddd9f88589641a07b4dd53.jpg', '110.136.58.33', 'Handphone', 'Google Chrome'),
(47, '0190222', '2022-09-05', '08:55', '18:27', '00:00:00', '', '-6.1824962,106.71038', '-6.1791711,106.7124943', '01b460a9b8f9e04d7949233b45fac4b9.jpg', '057602991ba9faa01ca367588e57ea47.jpg', '110.136.58.33', 'Handphone', 'Google Chrome'),
(48, '0230722', '2022-09-05', '08:56', '20:19', '00:00:00', '', '-6.1792218,106.7124337', '-6.1791847,106.7123663', 'c1bd5c7ab623264d4fcc72a3930e5aa2.jpg', '9701a4c4dee2723101dd95ff9ac0939d.jpg', '110.136.58.33', 'Handphone', 'Google Chrome'),
(49, '0280122', '2022-09-05', '08:56', '20:01', '00:00:00', '', '-6.1792198,106.7124213', '-6.1764716,106.7920861', '08747b14dab4dcff59bc30dc44346041.jpg', 'da91ccf36d8af67e3e93ec95c35752d4.jpg', '114.124.145.47', 'Handphone', 'Google Chrome'),
(50, '0130918', '2022-09-05', '08:56', '', '00:00:00', '', 'error=User denied Geolocation', '', 'b90e6fdd47006241cd5fa5f916314375.jpg', '', '110.136.58.33', 'Handphone', 'Google Chrome'),
(51, '0180122', '2022-09-05', '09:01', '18:45', '00:00:00', '', '-6.1815266,106.7107486', '-6.1792234,106.7124237', 'c8077453c597aab2eb20c72bec0f8163.jpg', '108f89fba166e11347d5f7a16535bd42.jpg', '110.136.58.33', 'Handphone', 'Google Chrome'),
(52, '0040817', '2022-09-05', '09:36', '18:49', '00:00:00', '', '-6.1791613018039016,106.71226886900457', '-6.179192014478336,106.7123806436971', '49f7653f5ef53007b7e96267b59499f8.jpg', 'aa9cb30e65bc8ba2a05d3b4aea643358.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(53, '0080521', '2022-09-05', '11:08', '18:09', '00:00:00', '', '-6.1791757,106.7123628', '-6.179224,106.7124102', 'bf8458fade0a5f33a6a6e2f00556910b.jpg', 'cca5759137f598683b4300dd04ca8ad8.jpg', '182.3.47.44', 'Handphone', 'Google Chrome'),
(54, '0071117', '2022-09-05', '13:13', '18:06', '00:00:00', '', '-6.1792105,106.7124418', '-6.1792183,106.7124313', 'cb4b7064fecbbd30cd223b687188e940.jpg', '2e56dc90b27b39f9c617df5b0331662c.jpg', '110.136.58.33', 'Handphone', 'Google Chrome'),
(55, '0130918', '2022-09-06', '08:57', '00:13', '00:00:00', '', 'error=User denied Geolocation', 'error=User denied Geolocation', 'ca9642cb279ee636256c50f20e4ab216.jpg', 'e68e6dbe105f11cc286a6895f2615005.jpg', '180.243.0.255', 'Handphone', 'Google Chrome'),
(56, '0071117', '2022-09-06', '07:06', '18:28', '00:00:00', '', '-6.1790069,106.7124347', '-6.1791744,106.7124563', '079a964526bcedff922514ad89a7c4ca.jpg', '1eff7201822f63ac5b61066c7b1ccff6.jpg', '180.243.0.255', 'Handphone', 'Google Chrome'),
(57, '0060217', '2022-09-06', '07:55', '21:59', '00:00:00', '', '-6.20588802,106.72874496', '', '5afaeef76139f7c8cb52f7d5c8b29b08.jpg', '7482d6b5fd9a75f4637c88bc3a3106b6.jpg', '110.138.0.68', 'Handphone', 'Google Chrome'),
(58, '0050714', '2022-09-06', '08:03', '22:47', '00:00:00', '', '-6.2057417,106.728758', '-6.2057402,106.7287604', 'c6becf09436095837cdc8bef8f36de2d.jpg', '80a0e406cbe65ff85c37c9f740fd1a2c.jpg', '110.138.0.68', 'Handphone', 'Google Chrome'),
(59, '0031212', '2022-09-06', '08:23', '18:26', '00:00:00', '', '-6.2057394,106.7287478', '-6.1922401,106.7404959', '4b9a62d3f0f4863d395dc3fe656ba1cd.jpg', 'f700db831607c60b108f549faf717011.jpg', '182.3.44.194', 'Handphone', 'Google Chrome'),
(60, '0200122', '2022-09-06', '08:33', '18:25', '00:00:00', '', '-6.1792363,106.7124278', '-6.1792361,106.7124445', '250e225093430182bbc2d9b176d6ba1a.jpg', 'f502c78575b2fb2ccb3a2d86239097a0.jpg', '180.243.0.255', 'Handphone', 'Google Chrome'),
(61, '015021', '2022-09-06', '08:37', '20:48', '00:00:00', '', '-6.1792343,106.712429', '-6.19275805,106.82234119762879', '3c92ab728156cf734a863a3292d45cd9.jpg', '593566a3acef9f64212ab3646fad0d9b.jpg', '182.2.166.213', 'Handphone', 'Google Chrome'),
(62, '0210322', '2022-09-06', '08:41', '20:41', '00:00:00', '', '-6.1812073,106.7107486', '-6.1791909,106.7124526', '75fc6a337abf0b2d5b6359f441ee389a.jpg', '9d1f3de754348cd60b2171904cc9377a.jpg', '180.243.0.255', 'Handphone', 'Google Chrome'),
(63, '0190320', '2022-09-06', '08:43', '18:02', '00:00:00', '', '-6.2294614,106.6903908', '-6.1791979,106.7123983', '83fe1950471ddc6feaf4b7e89d28c9df.jpg', 'e4d9ca7fdbb900f198a80fac7acb27b7.jpg', '180.243.0.255', 'Handphone', 'Google Chrome'),
(64, '0120820', '2022-09-06', '08:47', '18:02', '00:00:00', '', '-6.1800539,106.7112202', '-6.1786178,106.7118542', 'e48dc6f5e357192138f9e01b9d1d2a37.jpg', 'a7225618c792a0bcf4cb3940b23c1f22.jpg', '114.124.204.172', 'Handphone', 'Google Chrome'),
(65, '0230722', '2022-09-06', '08:47', '18:25', '00:00:00', '', '-6.1792124,106.7124228', '-6.1792235,106.7124413', '62bc8210d579032e57957e5f802ac953.jpg', '33ca2b5e9378f67c6f9ea2d00474eae0.jpg', '180.243.0.255', 'Handphone', 'Google Chrome'),
(66, '0280122', '2022-09-06', '08:48', '22:35', '00:00:00', '', '-6.2101617,106.7310122', '-6.1766293,106.792351', '0db15b7fd198fec18b58cdca64596498.jpg', '189c30776270a63c21584c41b8a35982.jpg', '114.124.151.88', 'Handphone', 'Google Chrome'),
(67, '0110221', '2022-09-06', '08:52', '18:00', '00:00:00', '', '-6.18431464933646,106.70776010793217', '-6.179129694167815,106.71229412447266', 'ffe1f17ea10d3f5494096af23d154f08.jpg', '1a172626ad30e289b730dd1c5af5803e.jpg', '172.225.74.113', 'Handphone', 'Lainnya'),
(68, '0260822', '2022-09-06', '08:54', '18:02', '00:00:00', '', '-6.1791295,106.7123493', '-6.1792042,106.7123796', 'e3a77b214ab2386a15d5969866b1ef75.jpg', 'be815d58d196949cfc3dc94f89fe95d2.jpg', '180.243.0.255', 'Handphone', 'Google Chrome'),
(69, '0270822', '2022-09-06', '08:56', '18:08', '00:00:00', '', '-6.1792042,106.712389', '-6.1792073,106.7124869', '1a808c1b78b849c4873aba27a7a95213.jpg', '85aa4597d4c2fa50a9b6f463f11bd4e8.jpg', '182.3.42.109', 'Handphone', 'Google Chrome'),
(70, '0180122', '2022-09-06', '08:59', '18:44', '00:00:00', '', '-6.1815266,106.7107486', '-6.1812073,106.7107486', '62403fcae1d706cac915cf2624d2c898.jpg', '93bfa0d4f47806be746806fd15f5e84c.jpg', '112.215.171.94', 'Handphone', 'Google Chrome'),
(71, '0190222', '2022-09-06', '09:01', '18:14', '00:00:00', '', '-6.1791918,106.7124065', '-6.1791909,106.7125278', '0a16f52e596b425570885ec502a708b3.jpg', '86421d1c19a1727033f339aea88445e1.jpg', '180.243.0.255', 'Handphone', 'Google Chrome'),
(72, '0080521', '2022-09-06', '09:11', '18:02', '00:00:00', '', '-6.1792315,106.7124263', '-6.1791973,106.7123893', '9a4e85ec78c80b5c0a7fc550cdc1f827.jpg', 'd3a53e681a7ad760c5b3361b0f22a123.jpg', '114.124.172.73', 'Handphone', 'Google Chrome'),
(73, '0040817', '2022-09-06', '09:41', '19:19', '00:00:00', '', '-6.179116052512388,106.7122044428352', '-6.179097651685247,106.71229717819172', 'db759bf286a864fc332a9bbc24571e7c.jpg', '5ac231a8146e9038bbe2ef9ed9a96c96.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(74, '0071117', '2022-09-07', '07:00', '00:05', '00:00:00', '', '-6.2146881,106.6916045', '-6.1792304,106.7124327', '994997afe17e7f0233f96b4f52f4578a.jpg', '669082822dc0f99eac7021d412000bf0.jpg', '180.243.14.157', 'Handphone', 'Google Chrome'),
(75, '0060217', '2022-09-07', '07:59', '23:19', '00:00:00', '', '', '', '0c8dee0f149fce438c737a087edf9702.jpg', '6ea29328c92a6742f189e58c93822c41.jpg', '110.138.0.68', 'Handphone', 'Google Chrome'),
(76, '0050714', '2022-09-07', '08:09', '23:43', '00:00:00', '', '-6.2046756,106.7288119', '-6.1919121,106.7255491', 'cd83443cfd995e7bcc04ed96bf3b7b62.jpg', '90f3969a68593f2ab30c4f818f9cd222.jpg', '182.2.169.16', 'Handphone', 'Google Chrome'),
(77, '0290622', '2022-09-07', '08:09', '', '00:00:00', '', 'error=User denied Geolocation', '', 'db4130ff51af52ee05a93e95c69bec3c.jpg', '', '110.138.0.68', 'Handphone', 'Google Chrome'),
(78, '0031212', '2022-09-07', '08:16', '18:01', '00:00:00', '', '-6.2057553,106.7287856', '-6.1926662,106.7401707', '116d131451196925cc9214f69783e6d9.jpg', '00bd742744664e6198cd878ed309dae0.jpg', '114.124.147.122', 'Handphone', 'Google Chrome'),
(79, '0210322', '2022-09-07', '08:26', '20:20', '00:00:00', '', '-6.1792471,106.7124348', '-6.1791887,106.7124628', 'cf201aac30e2e06342fd492f0b4c0510.jpg', '2d03377cdab941a3f42111c2e4fb7a2c.jpg', '180.243.14.157', 'Handphone', 'Google Chrome'),
(80, '0200122', '2022-09-07', '08:34', '18:44', '00:00:00', '', '-6.1792318,106.7124336', '-6.1792309,106.7124399', '38e1ad8f78325981e2f9253013376f4b.jpg', '7c6280a587284dc47971a3286fbfe4cb.jpg', '180.243.14.157', 'Handphone', 'Google Chrome'),
(81, '0270822', '2022-09-07', '08:42', '18:04', '00:00:00', '', '-6.1792327,106.712425', '-6.1792019,106.7124179', '894eadea455ec4d95e16a0573a0d1617.jpg', '0218d61c7a8ff4cb027cce76b017733c.jpg', '182.3.47.198', 'Handphone', 'Google Chrome'),
(82, '015021', '2022-09-07', '08:44', '21:46', '00:00:00', '', 'error=User denied Geolocation', '-6.1929236,106.8224468', 'bd000eda1264b259d1c161f761eaf82f.jpg', '8f84f4943fb665710bbece0cc0cb587c.jpg', '182.3.41.182', 'Handphone', 'Google Chrome'),
(83, '0110221', '2022-09-07', '08:50', '21:37', '00:00:00', '', '-6.181929470984752,106.71018437220619', '-6.180773479129206,106.79142868995356', '618b07420562894bb624c832a66b9b1b.jpg', 'c4b09656d15f895f2b515cdb571bbc29.jpg', '172.225.72.88', 'Handphone', 'Lainnya'),
(84, '0280122', '2022-09-07', '08:51', '01:10', '00:00:00', '', '-6.205742,106.7287335', '-6.1765807,106.7922794', '0d8c6e81e1edf93408bab2d768dba5ae.jpg', '09efde65050bd4227f8a4f9bde5ad1d1.jpg', '114.124.151.88', 'Handphone', 'Google Chrome'),
(85, '0260822', '2022-09-07', '08:56', '18:46', '00:00:00', '', '-6.1791393,106.7123407', '-6.1791926,106.7123945', '9081cf8baebc6c7245368f074a224ec4.jpg', 'f7d5c28cbeaa50a4f0c6b27d9a937991.jpg', '180.243.14.157', 'Handphone', 'Google Chrome'),
(86, '0230722', '2022-09-07', '08:57', '18:27', '00:00:00', '', '-6.1791434,106.7124222', '-6.1792276,106.7124316', 'b9d9f25ec4e5534c611a383e740d5c52.jpg', 'a13ccf8fb1dca70f64bf73671b14b53e.jpg', '180.243.14.157', 'Handphone', 'Google Chrome'),
(87, '0190222', '2022-09-07', '08:58', '18:06', '00:00:00', '', '-6.1791945,106.7123882', '-6.1791932,106.7123887', '5f300f9b4a521c755049679e0d919e39.jpg', '76fa4bc0ff6f3179bfaeb60b8bdd8df2.jpg', '180.243.14.157', 'Handphone', 'Google Chrome'),
(88, '0180122', '2022-09-07', '09:00', '18:42', '00:00:00', '', '-6.1792256,106.7124447', '-6.1792336,106.7124262', '22576747b1beaefd60f8a5cacb7f852d.jpg', 'b83f2d589639f4a941418806100f87d7.jpg', '140.213.35.11', 'Handphone', 'Google Chrome'),
(89, '0190320', '2022-09-07', '09:05', '', '00:00:00', '', '', '', '0970e5b9d4b8f280ea45e0b6e705e1ad.jpg', '', '182.3.36.81', 'Handphone', 'Google Chrome'),
(90, '0100220', '2022-09-07', '09:07', '18:06', '00:00:00', '', '-6.1792331,106.7124322', '-6.1792276,106.7124547', '86fcb4006e4a34f4e735d8eee9b9f145.jpg', '919110f3ef667105cae641915d9c7c44.jpg', '180.243.14.157', 'Handphone', 'Google Chrome'),
(91, '0120820', '2022-09-07', '09:10', '', '00:00:00', '', '-6.1126224,106.7302825', '', 'f7892b28082169c1d1a5f9de27feb8d8.jpg', '', '182.2.169.191', 'Handphone', 'Google Chrome'),
(92, '0080521', '2022-09-07', '09:28', '00:05', '00:00:00', '', '-6.1792324,106.7124524', '-6.1782985,106.7118542', '1bd3567e12b669a5b4ea6828cc83152f.jpg', 'cd6fc81788c006c6f49c232f63df7052.jpg', '114.124.146.191', 'Handphone', 'Google Chrome'),
(93, '0040817', '2022-09-07', '09:45', '18:58', '00:00:00', '', '-6.179163800625125,106.71236418854008', '-6.179126187925194,106.7122135816638', '495fd03849183c2519f4106e17e5420c.jpg', '969049aec6c6e277802892bce170dc5e.jpg', '146.75.160.29', 'Handphone', 'Lainnya'),
(94, '0130918', '2022-09-07', '11:34', '', '00:00:00', '', 'error=User denied Geolocation', '', 'd7c3e97f0290c205b299abf0b2326e17.jpg', '', '140.213.9.96', 'Handphone', 'Google Chrome'),
(95, '015021', '2022-09-16', '', '', '00:00:00', '8', '', '', '', '', '', '', ''),
(96, '015021', '2022-09-19', '', '', '00:00:00', '8', '', '', '', '', '', '', ''),
(97, '0071117', '2022-09-08', '07:11', '', '00:00:00', '', '-6.1787796,106.712204', '', '51368b1d12bad90a60696ff953d7c8bc.jpg', '', '180.243.8.97', 'Handphone', 'Google Chrome'),
(98, '0080521', '2022-09-08', '', '18:29', '00:00:00', '', '', '-6.1791072,106.7123113', '', 'd47a0cf6a3b99dad89c5d7ac107cf612.jpg', '182.3.43.155', 'Handphone', 'Google Chrome'),
(99, '0130918', '2022-09-08', '09:30', '00:23', '00:00:00', '', 'error=User denied Geolocation', 'error=User denied Geolocation', 'ef2d5fc5ee237b74b37d8a29320a57a2.jpg', 'a9cfb1f69320bbf2dbd7f9036901cb27.jpg', '180.243.3.139', 'Handphone', 'Google Chrome'),
(100, '0280122', '2022-09-08', '09:23', '00:18', '00:00:00', '', '-6.1788423,106.7148026', '-6.1765608,106.791718', 'dd789ac6fbe3209f419974e553e2f50b.jpg', 'a692d0571c5dd2a4a2a0062d271f146d.jpg', '114.124.175.222', 'Handphone', 'Google Chrome'),
(101, '0050714', '2022-09-08', '08:11', '', '00:00:00', '', '-6.2057418,106.7287641', '', '53bc69b99d8df2b1cc58409d3e25e8e4.jpg', '', '180.243.3.139', 'Handphone', 'Google Chrome'),
(102, '0290622', '2022-09-08', '08:06', '', '00:00:00', '', 'error=User denied Geolocation', '', 'a62e11d7b02644c007de2fc1c6636845.jpg', '', '180.243.3.139', 'Handphone', 'Google Chrome'),
(103, '0060217', '2022-09-08', '08:21', '19:35', '00:00:00', '', '', '-6.20577621,106.72871809', '63b4d14e11be48ef3b092665f113486e.jpg', '9b5a32bef43ffc5001a41beed67f6dd9.jpg', '180.243.3.139', 'Handphone', 'Google Chrome'),
(104, '0200122', '2022-09-08', '08:37', '18:25', '00:00:00', '', '-6.1792273,106.7124399', '-6.1792222,106.7124285', 'e8cb6d1061a1bdeba7a655f021899a9b.jpg', '01a6d97bf132c5b76e136eb0081e490c.jpg', '180.243.8.97', 'Handphone', 'Google Chrome'),
(105, '0230722', '2022-09-08', '08:52', '18:17', '00:00:00', '', '-6.1792297,106.7124708', '-6.1792313,106.7124407', 'fca20c4015b1d198c7566fd5b53e81c5.jpg', '07cfd4c7d60dad7a0046fe6e5b4f2c0c.jpg', '180.243.8.97', 'Handphone', 'Google Chrome'),
(106, '0110221', '2022-09-08', '08:56', '18:05', '00:00:00', '', '-6.183743192062213,106.70569732437822', '-6.179175401667202,106.71245492260171', '41a600389bdfbe29960d6c412fe10ae4.jpg', '04b63fab0bc36786d0f4c046fa773fd9.jpg', '172.225.74.113', 'Handphone', 'Lainnya'),
(107, '0210322', '2022-09-08', '08:56', '19:51', '00:00:00', '', '', '-6.1792409,106.7124386', '46f8e5c52c81b366102e1b82f52f42f1.jpg', 'b0d5d9a5ceea7161910e54473f4b9025.jpg', '112.215.66.247', 'Handphone', 'Google Chrome'),
(108, '0260822', '2022-09-08', '08:56', '18:17', '00:00:00', '', '-6.1791852,106.7123946', '-6.1791985,106.7123973', '70ce1162618876375b0f8c383fa468f6.jpg', '842d3b089ef47a95a8dc3a8a703a0a8d.jpg', '180.243.8.97', 'Handphone', 'Google Chrome'),
(109, '0120820', '2022-09-08', '08:57', '', '00:00:00', '', '-6.1804594,106.7109877', '', 'ad31f5ad7d55a9b076611b0013fc17a9.jpg', '', '182.3.36.65', 'Handphone', 'Google Chrome'),
(110, '0270822', '2022-09-08', '08:59', '18:09', '00:00:00', '', '-6.1792196,106.7124214', '-6.1792348,106.7124427', 'ec53e3b4e5d5fc2ab81fabaa84ce524b.jpg', 'a7ca137f7409c7881ef762bc4990c0ff.jpg', '114.124.239.71', 'Handphone', 'Google Chrome'),
(111, '0190222', '2022-09-08', '09:02', '18:08', '00:00:00', '', '-6.1824962,106.71038', '-6.1791957,106.7123949', '8a949d0fae347eeda65642bd6f2f8816.jpg', '144377048f38234a73a1ea946c51f821.jpg', '180.243.8.97', 'Handphone', 'Google Chrome'),
(112, '0031212', '2022-09-08', '09:07', '17:44', '00:00:00', '', '-6.2057377,106.7287564', '-6.1927248,106.740246', '2acedffea372056fabf5d70ed1e74703.jpg', '600b7deaee1482fc4a3057c185156cd6.jpg', '182.3.44.195', 'Handphone', 'Google Chrome'),
(113, '015021', '2022-09-08', '09:32', '20:21', '00:00:00', '', '-6.179203,106.7123921', '-6.192628,106.8222017', '9219a4628d7f4d601d91cfaae09e12bf.jpg', '152658bad6f94d432a45225790cc98a1.jpg', '182.2.165.163', 'Handphone', 'Google Chrome'),
(114, '0190320', '2022-09-08', '09:34', '16:55', '00:00:00', '', '-6.1791335,106.7123723', '-6.205863,106.728896', '1deed2a4647e014a9536e66aee58a054.jpg', 'ff8fa1bc7a7f54db090b74535e565449.jpg', '182.3.40.197', 'Handphone', 'Google Chrome'),
(115, '0180122', '2022-09-08', '', '21:08', '00:00:00', '', '', '-6.1792375,106.7124198', '', '214f0ee83410ebce663d3ce36b70a59e.jpg', '180.243.8.97', 'Handphone', 'Google Chrome'),
(116, '0071117', '2022-09-09', '07:14', '23:04', '00:00:00', '', '-6.178967,106.7124364', '-6.1792242,106.7124354', '419b2ec87db8fdda5ddebe88d7af5edd.jpg', 'ae2dac3a002cfb081eff3ff3271dda39.jpg', '180.243.8.154', 'Handphone', 'Google Chrome'),
(117, '0050714', '2022-09-09', '08:05', '', '00:00:00', '', '-6.2057401,106.7287597', '', '6e2e37b24340424c136cc43967595f82.jpg', '', '180.243.3.139', 'Handphone', 'Google Chrome'),
(118, '0290622', '2022-09-09', '08:15', '', '00:00:00', '', 'error=User denied Geolocation', '', 'e48ec9bf58e7e8c47ae2011dcb3fb54b.jpg', '', '180.243.3.139', 'Handphone', 'Google Chrome'),
(119, '0060217', '2022-09-09', '08:18', '20:49', '00:00:00', '', '-6.2058405,106.72878582', '-6.20588888,106.72862536', '3c5b441f42136906f21b192727286d6e.jpg', 'fee2a82d05b386c67ce1d824ecabbbc3.jpg', '180.243.3.139', 'Handphone', 'Google Chrome'),
(120, '0210322', '2022-09-09', '08:23', '20:29', '00:00:00', '', '-6.1792404,106.7124228', '-6.1791912,106.7124504', '609cdd8f1ee9da747e8d37a061805f39.jpg', 'bd09cb4bfc2dc33ad59fb58a13e692e7.jpg', '180.243.8.154', 'Handphone', 'Google Chrome'),
(121, '0031212', '2022-09-09', '08:35', '17:44', '00:00:00', '', '-6.2057515,106.7287772', '-6.1924915,106.7401689', '9facc41a3a8bcb09a4325b5cc539f9f7.jpg', '7e3c8c7001622bca5b60d951824d191e.jpg', '114.124.214.239', 'Handphone', 'Google Chrome'),
(122, '0270822', '2022-09-09', '08:42', '18:04', '00:00:00', '', '-6.1792333,106.7124305', '-6.1791969,106.7124024', '4fe4e4e4105204b41442a8443386f829.jpg', '0305dc13c86f7e16abaa7122bbfb8ffe.jpg', '182.3.42.53', 'Handphone', 'Google Chrome'),
(123, '015021', '2022-09-09', '08:43', '20:36', '00:00:00', '', '-6.1792297,106.7124429', '-6.19275805,106.82234119762879', '8c41e973a9fb1abd6b82994ae7cc993b.jpg', 'dfffdc95e06380fb1816f07aa288b40a.jpg', '182.2.136.82', 'Handphone', 'Google Chrome'),
(124, '0110221', '2022-09-09', '08:40', '17:33', '00:00:00', '', '-6.182554075419447,106.709934329288', '-6.180283524710496,106.7915921789804', '75b3f30cf8328324704c693fa20d55a9.jpg', '54d01831c9c10327a185d623578f8e44.jpg', '104.28.121.64', 'Handphone', 'Lainnya'),
(125, '0200122', '2022-09-09', '08:42', '18:54', '00:00:00', '', '-6.1792408,106.712424', '-6.1786178,106.7118542', '0abd1b75c149516ae348741dd705b855.jpg', '5e031671fe79cf8548d17e83dd9998da.jpg', '180.243.8.154', 'Handphone', 'Google Chrome'),
(126, '0260822', '2022-09-09', '08:51', '21:17', '00:00:00', '', '-6.17914,106.7122116', '-6.1792104,106.7124139', '0c69a020e0f3ded7d7c0338a89ee5430.jpg', '010c17296f75dc27e08594808709f892.jpg', '180.243.8.154', 'Handphone', 'Google Chrome'),
(127, '0230722', '2022-09-09', '08:51', '20:18', '00:00:00', '', '-6.1792231,106.7124743', '-6.1792047,106.7124018', '816f2114e9701ddf2ac2c5fbada83b17.jpg', 'f59854f668fc9b551a62472cb24f5a9f.jpg', '180.243.8.154', 'Handphone', 'Google Chrome'),
(128, '0190222', '2022-09-09', '08:56', '19:36', '00:00:00', '', '-6.1812073,106.7107486', '-6.1791956,106.7123874', '40d393eee7dd6a7615a1b526ceb48e99.jpg', '435b502aee4430331f9648f4aae4d3cb.jpg', '180.243.8.154', 'Handphone', 'Google Chrome'),
(129, '0280122', '2022-09-09', '08:57', '20:21', '00:00:00', '', '-6.2260417,106.72664', '-6.1765579,106.7917608', 'd1ef83a66356596a6151885935171463.jpg', 'f4459ea1244bd51ec76a8804af10e519.jpg', '114.124.178.134', 'Handphone', 'Google Chrome'),
(130, '0100220', '2022-09-09', '09:11', '', '00:00:00', '', '-6.1792292,106.7124418', '', '8c66972dad83176c9f0b7c8dc90565db.jpg', '', '180.243.8.154', 'Handphone', 'Google Chrome'),
(131, '0180122', '2022-09-09', '09:14', '20:24', '00:00:00', '', '-6.1792299,106.7124279', '-6.1745178,106.7896319', '54a6525ea43cdcc7ea6399198a6a4dfa.jpg', 'a201e44c40ce6576fc0d7b350a13aa22.jpg', '140.213.2.94', 'Handphone', 'Google Chrome'),
(132, '0190320', '2022-09-09', '', '19:27', '00:00:00', '', '', '-6.1775191,106.7889995', '', 'd1926dd1371cc3d1751122d932277fcc.jpg', '182.0.213.245', 'Handphone', 'Google Chrome'),
(133, '0080521', '2022-09-09', '22:43', '23:06', '00:00:00', '', '-6.1782985,106.7118542', '-6.1791967,106.7123841', 'fa0525e0b417d6019aeafddc64b24bb7.jpg', '331ed8afae9b1926ca8dc91ce9a0d36f.jpg', '180.243.8.154', 'Handphone', 'Google Chrome'),
(134, '0071117', '2022-09-10', '07:37', '12:02', '00:00:00', '', '-6.1976691,106.7228664', '-6.1792264,106.7124395', '74e4feb40ebe1a7c29c62c70c6d1f7c8.jpg', 'd0a3eac401619295eb58510a35a2f42d.jpg', '180.243.1.209', 'Handphone', 'Google Chrome'),
(135, '0050714', '2022-09-10', '08:22', '17:20', '00:00:00', '', '-6.2057469,106.7287706', '-6.2057439,106.7287592', '5defdcb1de9975dad08e78e6930e690b.jpg', 'f530be010402dd6de9ae893975e951a1.jpg', '180.243.3.139', 'Handphone', 'Google Chrome'),
(136, '0060217', '2022-09-10', '08:22', '19:55', '00:00:00', '', '-6.20568323,106.72878417', '-6.20576021,106.72862819', '3f13676cb5f1a0592dd801e28dc470c3.jpg', '7a7764d5d4832677e3d66e8e7d6c6983.jpg', '180.243.3.139', 'Handphone', 'Google Chrome'),
(137, '0290622', '2022-09-10', '08:37', '', '00:00:00', '', 'error=User denied Geolocation', '', '5199024baceb594fec99f2d2b9316ed2.jpg', '', '180.243.3.139', 'Handphone', 'Google Chrome'),
(138, '0280122', '2022-09-10', '08:42', '18:16', '00:00:00', '', '-6.2057383,106.7287569', '-6.1766792,106.7923373', '79f09de4b873dbbb32d95f556fdf1f12.jpg', '45a239df61562b875cd6bac9832424af.jpg', '182.2.167.4', 'Handphone', 'Google Chrome'),
(139, '0031212', '2022-09-10', '08:44', '16:34', '00:00:00', '', '-6.2057346,106.7287652', '-6.1926975,106.7402934', 'c35eb6ca7c5785e38105596342b73985.jpg', 'ffe822af86ce5f37458c442d1cfd18c1.jpg', '182.2.170.36', 'Handphone', 'Google Chrome'),
(140, '0130918', '2022-09-10', '09:21', '18:07', '00:00:00', '', 'error=User denied Geolocation', 'error=User denied Geolocation', '4d087b9c4319679f1cc6b3f7616c0242.jpg', 'b64ee273b5b29e58f5fc25c09084585b.jpg', '112.215.238.215', 'Handphone', 'Google Chrome'),
(141, '015021', '2022-09-10', '09:43', '22:07', '00:00:00', '', '-7.7200841,110.36151', '-7.7205392,110.3625597', '4854bc62d89e5d5db20ae8df79f6cf5d.jpg', 'ea2ba7fe940288baba0a9ad0b353970a.jpg', '182.2.36.173', 'Handphone', 'Google Chrome'),
(142, '0080521', '2022-09-10', '10:57', '17:35', '00:00:00', '', '-6.1791997,106.7123881', '-6.1792302,106.7124403', 'a5390419b8fa15423152f1678c418ce3.jpg', '78b3876b165c4aa10d93e6ad6dd35fe6.jpg', '180.243.1.209', 'Handphone', 'Google Chrome'),
(143, '0060217', '2022-09-11', '08:54', '23:47', '00:00:00', '', '-6.20579032,106.72872421', '-6.2056748,106.72873776', '28e297df742b50679a662a07ce25eae8.jpg', 'ae1a6e2d8faaaa615789ddfca56fa57f.jpg', '180.243.3.139', 'Handphone', 'Google Chrome'),
(144, '0031212', '2022-09-11', '09:47', '17:31', '00:00:00', '', '-6.2057422,106.7287609', '-6.192701,106.7402146', '38729e9ef827c574243be04525a25bc5.jpg', '7c4cd7a4d89862e8dd364cfc296d6c40.jpg', '182.3.47.175', 'Handphone', 'Google Chrome'),
(145, '0130918', '2022-09-11', '10:31', '22:38', '00:00:00', '', 'error=User denied Geolocation', 'error=User denied Geolocation', '586ab4504720301c050df39bb81c5b6d.jpg', '837d573e1f7fd18c782fa3c7d8db8380.jpg', '112.215.235.91', 'Handphone', 'Google Chrome'),
(146, '015021', '2022-09-11', '16:22', '21:15', '00:00:00', '', '-7.7207626,110.3625126', '-7.7201479,110.361511', 'e8426436ceaa52384a87c493e8dabff5.jpg', 'd7978abc5132ba030a0eb78d85e746a8.jpg', '182.2.74.34', 'Handphone', 'Google Chrome'),
(147, '0071117', '2022-09-12', '07:04', '23:55', '00:00:00', '', '-6.1791792,106.7124873', '-6.1792333,106.7124807', '0191cc81649e36ccda93b2d918ae2001.jpg', '266a8407e5830ab9974756f55f0f45ca.jpg', '180.243.3.36', 'Handphone', 'Google Chrome'),
(148, '0060217', '2022-09-12', '07:56', '23:51', '00:00:00', '', '-6.20573744,106.72856057', '-6.20583179,106.72881914', 'c3eb0e3e3f53018ba8b884c9ed98868b.jpg', '3fe5a50a334140126779f22956f3f110.jpg', '180.243.3.139', 'Handphone', 'Google Chrome'),
(149, '0050714', '2022-09-12', '08:16', '', '00:00:00', '', '-6.1961146,106.7241296', '', '0f37d212e6b17641c7aaa3c8a09aa531.jpg', '', '182.2.166.228', 'Handphone', 'Google Chrome'),
(150, '0290622', '2022-09-12', '08:19', '17:10', '00:00:00', '', 'error=User denied Geolocation', 'error=User denied Geolocation', '9ad3dea8af341df29867d1f06e37df03.jpg', 'b34e274e372225d557941a35ca5f1fa9.jpg', '140.213.13.251', 'Handphone', 'Google Chrome'),
(151, '0210322', '2022-09-12', '08:23', '20:34', '00:00:00', '', '-6.1792332,106.7124304', '-6.1791911,106.7124597', '55b41a41591679dd0c062c1bd16f59a8.jpg', '13b90d4db6099eb73940890f555541b3.jpg', '180.243.3.36', 'Handphone', 'Google Chrome'),
(152, '0200122', '2022-09-12', '08:37', '16:17', '00:00:00', '', '-6.1792351,106.7124366', '-6.1794867,106.7125417', 'afc65dfcacafbed9aff99e2899e96485.jpg', '27321de68b6b69be6b7846b3a8ff7fb4.jpg', '180.243.3.36', 'Handphone', 'Google Chrome'),
(153, '0031212', '2022-09-12', '08:42', '23:47', '00:00:00', '', '-6.2057412,106.7287623', '-6.1771565,106.7915744', 'a26625434c73a44e4bcddc3cff149c39.jpg', 'e18eaf86a41eccb4c2c49c42eb2ae55a.jpg', '182.3.40.234', 'Handphone', 'Google Chrome'),
(154, '0110221', '2022-09-12', '08:47', '18:00', '00:00:00', '', '-6.18770689593044,106.75846725446554', '-6.17912661409408,106.71230409401002', '5c5b70f4ae79ec093ac0455acee36309.jpg', '097df1d17e66f7c882967e1d8327fae3.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(155, '0190320', '2022-09-12', '08:50', '18:01', '00:00:00', '', '-6.1792332,106.7124343', '-6.1791928,106.7123965', '2c20f173836d578180ccffc6ee259691.jpg', 'e83fbd754a40346838b6bdc3788f9ee4.jpg', '182.3.38.53', 'Handphone', 'Google Chrome'),
(156, '0130918', '2022-09-12', '08:51', '21:29', '00:00:00', '', 'error=User denied Geolocation', 'error=User denied Geolocation', 'd9d13c785b5b318e51701bf4c208119b.jpg', 'd385020c58a37be93aa34355845534d9.jpg', '140.213.9.194', 'Handphone', 'Google Chrome'),
(157, '0270822', '2022-09-12', '08:51', '18:08', '00:00:00', '', '-6.1792144,106.7124799', '-6.1792318,106.7124343', 'ea7a754b4ab96268cfb0dfad052c8181.jpg', '2341ec448ba8af307dfbb0cf778ce3a2.jpg', '182.2.139.181', 'Handphone', 'Google Chrome'),
(158, '015021', '2022-09-12', '08:55', '', '00:00:00', '', '-7.7202291,110.3615809', '', 'f14a550baa621c7554e7426ca7ef20f4.jpg', '', '182.2.71.38', 'Handphone', 'Google Chrome'),
(159, '0120820', '2022-09-12', '08:58', '18:21', '00:00:00', '', '-6.1999057,106.6981997', '-6.1792291,106.7122252', '213f9e33bf6447d1207be225e10abea2.jpg', '3ea5749a7c781eee346732b1cd579f77.jpg', '182.3.43.138', 'Handphone', 'Google Chrome'),
(160, '0280122', '2022-09-12', '08:59', '23:46', '00:00:00', '', '-6.1792324,106.7124323', '-6.1771173,106.7915796', '364bb72a2325c4e0d371558ffd0b7db8.jpg', '87804b24a3abb7b83d7bd4c3ca66e184.jpg', '182.2.169.128', 'Handphone', 'Google Chrome'),
(161, '0260822', '2022-09-12', '08:59', '18:28', '00:00:00', '', '-6.1791612,106.7123948', '-6.1792139,106.7124309', '3867536064788950dba04f5c17f1f1f1.jpg', '0fc3f1bf45e60da9c80ba1e207b1c3ee.jpg', '180.243.3.36', 'Handphone', 'Google Chrome'),
(162, '0230722', '2022-09-12', '09:00', '18:24', '00:00:00', '', '-6.1792002,106.7123917', '-6.1792263,106.7124407', '7eebfdfc35f2e10491b1edb632776d7f.jpg', '6dcf8998ded83e4a573cc9b87a71178d.jpg', '180.243.3.36', 'Handphone', 'Google Chrome'),
(163, '0190222', '2022-09-12', '09:02', '18:05', '00:00:00', '', '-6.1776837,106.7111171', '-6.1791941,106.7123793', '46ba8b77bc5a494d2a89d6559659fb8f.jpg', '7be70c5a9ea761a588b1534489b27834.jpg', '180.243.3.36', 'Handphone', 'Google Chrome'),
(164, '0180122', '2022-09-12', '09:04', '19:14', '00:00:00', '', '-6.1792277,106.7124375', '-6.1767278,106.7903693', 'f145d198f20000f91a1a9b8cd85d7f69.jpg', '3da0e46afe614b4593b653d8d4511c6d.jpg', '140.213.11.76', 'Handphone', 'Google Chrome'),
(165, '0040817', '2022-09-12', '09:10', '20:34', '00:00:00', '', '-6.265661853996261,106.65597792832246', '-6.183802172657681,106.70908522802057', '26d4286777553a81263ee1bc2b621b8a.jpg', '0e36862e29d6e4d288e35e37d7748a08.jpg', '146.75.160.29', 'Handphone', 'Lainnya'),
(166, '0080521', '2022-09-12', '09:27', '23:45', '00:00:00', '', '-6.179239,106.7124646', '-6.1791929,106.7123855', '0813405b0eddf4a63a68ab909086e687.jpg', '13fb3def76e24af751f3ab13389a8116.jpg', '182.2.134.70', 'Handphone', 'Google Chrome'),
(167, '0100220', '2022-09-12', '09:35', '', '00:00:00', '', '-6.1792216,106.7124063', '', 'ba2051d7eac4dd9e857a140841c7efca.jpg', '', '180.243.3.36', 'Handphone', 'Google Chrome'),
(168, '0110221', '2022-09-16', '', '', '00:00:00', '8', '', '', '', '', '', '', ''),
(169, '0071117', '2022-09-13', '07:06', '18:06', '00:00:00', '', '-6.1792316,106.7124544', '-6.179067,106.7122705', 'b618152783aa7c1a7370ddfa49d2bac8.jpg', '7d7f7d5e72bd1fec7b9bdf2f18828705.jpg', '180.243.11.32', 'Handphone', 'Google Chrome'),
(170, '0060217', '2022-09-13', '08:00', '23:09', '00:00:00', '', '-6.2057749,106.7286413', '-6.20566603,106.72874378', '6e5bb245c782a147d3e9698a323ebe8b.jpg', 'b4b24f94f087f622884d5429be2428c1.jpg', '180.243.3.139', 'Handphone', 'Google Chrome'),
(171, '015021', '2022-09-13', '08:02', '22:02', '00:00:00', '', '-7.789251,110.3639222', '-6.1823544,106.7140372', 'a818fb84fbdbb3a3c8bbe408f55f7a2a.jpg', '7529e4e218e4f82238de4e3a30f74bbc.jpg', '182.3.44.160', 'Handphone', 'Google Chrome'),
(172, '0210322', '2022-09-13', '08:12', '21:10', '00:00:00', '', '-6.1792318,106.7124215', '-6.1791888,106.7124611', 'e65207067f5f41b59bac517d8258b2db.jpg', 'bf6972b90ca637006c42dac78439b01e.jpg', '180.243.11.32', 'Handphone', 'Google Chrome'),
(173, '0290622', '2022-09-13', '08:14', '', '00:00:00', '', 'error=User denied Geolocation', '', '7a209b3df4645a94af6449cd3e1fa8b5.jpg', '', '180.243.3.139', 'Handphone', 'Google Chrome'),
(174, '0230722', '2022-09-13', '08:21', '18:37', '00:00:00', '', '-6.1791945,106.7123938', '-6.1792045,106.7124136', 'd6f986281f961714116280ec55df996d.jpg', '471d55cc6c011fcd9ca357d9858c9720.jpg', '180.243.11.32', 'Handphone', 'Google Chrome'),
(175, '0031212', '2022-09-13', '08:37', '17:30', '00:00:00', '', '-6.2057399,106.7287598', '-6.1926305,106.7401543', 'c8045cb23adb8ee4e9b2e10569213493.jpg', '4506cdc749d81694fae1cd6fa8e6132e.jpg', '182.2.169.122', 'Handphone', 'Google Chrome'),
(176, '0200122', '2022-09-13', '08:41', '18:31', '00:00:00', '', '-6.1791879,106.7124489', '-6.1792335,106.7124358', 'db88b8065d736e0c986122f8c5559a69.jpg', '91fd395168d7a5a574f456d43542d543.jpg', '180.243.11.32', 'Handphone', 'Google Chrome'),
(177, '0270822', '2022-09-13', '08:43', '18:02', '00:00:00', '', '-6.1790059,106.7125382', '-6.1791821,106.7124846', '4ca4735e47175f40bb493143fbf966e2.jpg', 'ef040b6c78ea511b5de736d2eda0297d.jpg', '114.124.204.229', 'Handphone', 'Google Chrome'),
(178, '0120820', '2022-09-13', '08:49', '', '00:00:00', '', '-6.1792295,106.7124271', '', '2313a7c90a0e3543b6ea03203de7c201.jpg', '', '110.136.4.155', 'Handphone', 'Google Chrome'),
(179, '0110221', '2022-09-13', '08:51', '', '00:00:00', '', '-6.17912661409408,106.71230409401002', '', 'a9a680af2b52fc96555191edd494c0c2.jpg', '', '172.225.72.89', 'Handphone', 'Lainnya'),
(180, '0190320', '2022-09-13', '08:54', '18:03', '00:00:00', '', '-6.1792317,106.7124245', '-6.1791962,106.7123926', '417ee260a3335f359753178ae95dc0c0.jpg', 'e4fcd1829d2080c964524df4670a5ae6.jpg', '182.3.40.182', 'Handphone', 'Google Chrome'),
(181, '0280122', '2022-09-13', '08:56', '21:43', '00:00:00', '', '-6.2057329,106.7287621', '-6.1766342,106.7921944', '396be18e967460291390c035390d017e.jpg', '86a03bf765b07aef8af07b37c652442b.jpg', '114.124.243.10', 'Handphone', 'Google Chrome'),
(182, '0260822', '2022-09-13', '08:59', '18:15', '00:00:00', '', '-6.1792284,106.7124934', '-6.1792328,106.7124366', '5fb906a2331fe0e608fdef44905ea345.jpg', 'f595b8ced8cdd7a0cf6b5b73a0d440ae.jpg', '180.243.11.32', 'Handphone', 'Google Chrome'),
(183, '0190222', '2022-09-13', '08:59', '18:02', '00:00:00', '', '-6.1812073,106.7107486', '-6.179192,106.712478', 'e05b88343a9a99deecaba8543bfccb7b.jpg', '07c47d8487e1fc50d64bc66b77011d94.jpg', '180.243.11.32', 'Handphone', 'Google Chrome'),
(184, '0180122', '2022-09-13', '09:00', '', '00:00:00', '', '-6.1792267,106.7124391', '', '72927ff3dfa5d20c821cd2d449c1d18e.jpg', '', '140.213.0.180', 'Handphone', 'Google Chrome'),
(185, '0100220', '2022-09-13', '09:14', '17:35', '00:00:00', '', '-6.1792289,106.7124435', '-6.1792348,106.7124587', '04cd6db1e389cc68318152156f9012a6.jpg', '80e8106bfdf2c3c3300ec23f6c8cf49f.jpg', '180.243.11.32', 'Handphone', 'Google Chrome'),
(186, '0080521', '2022-09-13', '09:40', '18:06', '00:00:00', '', '-6.1792305,106.7124384', '-6.1792312,106.7124365', '09c09d94c5a6a457edc4d5c4d981dcf2.jpg', 'cb3b1d38547b4c4c3db36d467deea579.jpg', '182.2.134.218', 'Handphone', 'Google Chrome'),
(187, '0130918', '2022-09-13', '10:15', '22:00', '00:00:00', '', 'error=User denied Geolocation', 'error=User denied Geolocation', '18b7d3a19f17bc0088e5501b08debdda.jpg', '8632c3ac4beb1f3dd1d81a3770fcc324.jpg', '112.215.170.30', 'Handphone', 'Google Chrome'),
(188, '0040817', '2022-09-13', '', '19:51', '00:00:00', '', '', '-6.179107711656186,106.71242519291742', '', '77b4d57ddc04c953c36854531d7d6604.jpg', '146.75.160.29', 'Handphone', 'Lainnya'),
(189, '0071117', '2022-09-14', '07:09', '18:08', '00:00:00', '', '-6.1792418,106.7124814', '-6.179227,106.7124355', 'a14357c8950562de01062021ca8ad82c.jpg', 'c923ff99214173a83edc8273c74c46bb.jpg', '36.69.83.146', 'Handphone', 'Google Chrome'),
(190, '0060217', '2022-09-14', '08:19', '', '00:00:00', '', '-6.20590288,106.72878286', '', 'c0a31552f6f9f30c224d1f9a4939cc8a.jpg', '', '180.243.3.139', 'Handphone', 'Google Chrome'),
(191, '0050714', '2022-09-14', '08:20', '', '00:00:00', '', '-6.2057399,106.7287601', '', 'aa90bbf8d3114cce7f7fe4f00ddf95f5.jpg', '', '180.243.3.139', 'Handphone', 'Google Chrome'),
(192, '0290622', '2022-09-14', '08:16', '17:25', '00:00:00', '', 'error=User denied Geolocation', 'error=User denied Geolocation', '3ec31106bbc8ee694d69655b8e77f5e5.jpg', '54255525d016e9c77880714666d522f1.jpg', '180.243.3.139', 'Handphone', 'Google Chrome'),
(193, '015021', '2022-09-14', '08:23', '19:8', '00:00:00', '', '-6.179096,106.7124114', '-6.1927499,106.8222552', '8adcbd119f629c28614accd017fee8d4.jpg', '2d6ee6075d98b9ba12e8fed5491f01ee.jpg', '103.119.146.168', 'Komputer', 'Google Chrome'),
(194, '0210322', '2022-09-14', '08:23', '20:45', '00:00:00', '', '-6.1792448,106.712436', '-6.1791887,106.7124624', 'f2fe6da40152c849e1c211821bc8aec8.jpg', '3ff38cd0cff8404ad48fc3b6ba84d68e.jpg', '36.69.83.146', 'Handphone', 'Google Chrome'),
(195, '0100220', '2022-09-14', '08:27', '', '00:00:00', '', '-6.1792292,106.7124716', '', '070746ddda52318b85d035bf6237d1b2.jpg', '', '36.69.83.146', 'Handphone', 'Google Chrome'),
(196, '0200122', '2022-09-14', '08:36', '18:43', '00:00:00', '', '-6.1783222,106.7111171', '-6.1792293,106.7124359', 'e05803ea0c3d92169c4319a726bbdaeb.jpg', '08e3caf244a69657c254e2e5cc54fa4a.jpg', '36.69.83.146', 'Handphone', 'Google Chrome'),
(197, '0270822', '2022-09-14', '08:45', '18:01', '00:00:00', '', '-6.1792321,106.7124324', '-6.1791724,106.7124946', 'b85eb5d933f8e74665745a611a89b52b.jpg', 'a2f0d98ed8743f5c267d799f543692c4.jpg', '182.3.45.172', 'Handphone', 'Google Chrome'),
(198, '0031212', '2022-09-14', '08:47', '18:17', '00:00:00', '', '-6.2057428,106.7287608', '-6.192747,106.7403011', '90da5b87a4d404202075946251439f94.jpg', 'a8bb3db8f8c2d96bb5b5b1f575edf0c5.jpg', '182.3.37.118', 'Handphone', 'Google Chrome'),
(199, '0230722', '2022-09-14', '08:51', '18:12', '00:00:00', '', '-6.1791928,106.7124041', '-6.1792311,106.7124394', 'f697b64ace2e803a93fc573cf95b1803.jpg', '6dc3b9863ef78000da6e1589afb48cb2.jpg', '36.69.83.146', 'Handphone', 'Google Chrome'),
(200, '0260822', '2022-09-14', '08:54', '18:07', '00:00:00', '', '-6.1791286,106.7123993', '-6.1792015,106.7123943', 'c66bcc866a3fb702bc0d2a6b9e36661d.jpg', 'a0ac77e0b0bde92cf1a535457ea97404.jpg', '36.69.83.146', 'Handphone', 'Google Chrome'),
(201, '0040817', '2022-09-14', '09:01', '19:24', '00:00:00', '', '-6.17917052619977,106.71235507513627', '-6.17910423316636,106.71225663284464', 'c4019bd1d1899db64ae371e46355953b.jpg', '2ba2bd091d0c4dc2690a042c4343959e.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(202, '0120820', '2022-09-14', '08:15', '', '00:00:00', '', '-6.1949823,106.622985', '', '192620f34ad109ba32cb8768d3470c1a.jpg', '', '114.124.140.140', 'Handphone', 'Google Chrome'),
(203, '0280122', '2022-09-14', '09:01', '18:22', '00:00:00', '', '-6.1792293,106.7124341', '-6.1766797,106.7924352', '5a4f7a8f2f1b33ebd358308ef57aba35.jpg', 'cd4c445be778e3e04a47644c93e3a5f6.jpg', '182.3.46.36', 'Handphone', 'Google Chrome'),
(204, '0180122', '2022-09-14', '09:02', '19:27', '00:00:00', '', '-6.1792314,106.7124509', '-6.1791686,106.7123033', '955064da4daed8c1489931ff360dc6d2.jpg', '89bdcad0b38e269c0454b7cc72093a36.jpg', '112.215.235.192', 'Handphone', 'Google Chrome'),
(205, '0190222', '2022-09-14', '09:03', '18:10', '00:00:00', '', '-6.1791974,106.7123829', '-6.1791925,106.7123892', 'edec0eb65178d4ef3c9827db8a95d939.jpg', 'cbeb69b35c976c2c53f57c74e801d7cd.jpg', '36.69.83.146', 'Handphone', 'Google Chrome'),
(206, '0130918', '2022-09-14', '09:06', '22:37', '00:00:00', '', 'error=User denied Geolocation', 'error=User denied Geolocation', 'cb939268eae6bcb9f5439618eae40e59.jpg', 'aab81463820f0c9cd99702bc42d72b81.jpg', '140.213.0.148', 'Handphone', 'Google Chrome'),
(207, '0110221', '2022-09-14', '09:41', '18:06', '00:00:00', '', '-6.17912661409408,106.71230409401002', '-6.1791468198490005,106.71242721982661', 'ba434e31f17c7618b685d8cbec030d16.jpg', 'fc0028c7484b0ef9c56ec82ec290f552.jpg', '172.225.74.122', 'Handphone', 'Lainnya'),
(208, '0300922', '2022-09-14', '12:08', '17:05', '00:00:00', '', '-6.2057399,106.7287602', '-6.2057399,106.72876', 'ed7e14d640a73c56c36657d0e0cd06d6.jpg', 'f58a60257d031265cdc88c2ed3c43b9e.jpg', '180.243.3.139', 'Handphone', 'Google Chrome'),
(209, '0080521', '2022-09-14', '16:36', '18:12', '00:00:00', '', '-6.1792318,106.7124552', '-6.1791514,106.7123396', 'ef38f4e926aca0389c22c1c6b7c31a15.jpg', 'fcdabf05d8579c933376202b81a1a62a.jpg', '36.69.83.146', 'Handphone', 'Google Chrome'),
(210, '0071117', '2022-09-15', '07:06', '23:15', '00:00:00', '', '-6.2060713,106.701816', '-6.179218,106.7124429', '246291d8707ecf91c6758e604533d98f.jpg', '3869948dbf9d4c8129a7854ffbc73d90.jpg', '180.243.12.114', 'Handphone', 'Google Chrome'),
(211, '0210322', '2022-09-15', '08:21', '20:40', '00:00:00', '', '-6.1792146,106.7124167', '-6.1792097,106.7124712', '374beca3a085093410fb10d7bf987898.jpg', '4d3a5e8ced38eca8ae2d79484d071680.jpg', '180.243.12.114', 'Handphone', 'Google Chrome'),
(212, '0300922', '2022-09-15', '08:24', '16:55', '00:00:00', '', '-6.1362729,106.7860657', '-6.1128662,106.7528176', 'ef5056605cea18489dd139b13c6e2d01.jpg', '84f2115766f0957b6ff390a5cbcacf6f.jpg', '182.2.167.181', 'Handphone', 'Google Chrome'),
(213, '0290622', '2022-09-15', '08:27', '', '00:00:00', '', 'error=User denied Geolocation', '', 'd1aa8c761ad326a63d4e7378b79c77a4.jpg', '', '180.243.14.87', 'Handphone', 'Google Chrome'),
(214, '0050714', '2022-09-15', '08:31', '18:43', '00:00:00', '', '-6.2057399,106.7287601', '-6.2057446,106.7287652', '1bf6e7eec13f43909fb6f507760d5405.jpg', 'd178a6d379bb88abc252f0442a672ff6.jpg', '180.243.14.87', 'Handphone', 'Google Chrome'),
(215, '0060217', '2022-09-15', '08:33', '23:41', '00:00:00', '', '-6.20566333,106.72887782', '-6.20569746,106.72874529', '09dd499e2a0ca42e414f55d1183f9ce2.jpg', '9dadd9d92fce7807b81f71245dcc3b37.jpg', '180.243.14.87', 'Handphone', 'Google Chrome'),
(216, '0190320', '2022-09-15', '08:34', '18:01', '00:00:00', '', '-6.1791784,106.7123947', '-6.1791794,106.7123896', '6dd7617e6b1cbe64501308feb6fbd13c.jpg', 'd4fce961c64a32e2250c7419cf9e6786.jpg', '180.243.12.114', 'Handphone', 'Google Chrome'),
(217, '0200122', '2022-09-15', '08:42', '18:26', '00:00:00', '', '-6.1792247,106.7124426', '-6.1791725,106.7123953', '378f38d4ee36e522deacb092db3e3c7c.jpg', '7de5a5930f1bba9c72d2d90d63fbe327.jpg', '180.243.12.114', 'Handphone', 'Google Chrome'),
(218, '015021', '2022-09-15', '08:43', '20:29', '00:00:00', '', '-6.1792119,106.7124281', '-6.19275805,106.82234119762879', '984c201635f848251ab2646b33b3b1a8.jpg', '35bcb74d44cce4d0effa8ccd2db12427.jpg', '114.124.204.157', 'Handphone', 'Google Chrome'),
(219, '0110221', '2022-09-15', '08:45', '18:02', '00:00:00', '', '-6.179098808492977,106.71247132165375', '-6.17912661409408,106.71230409401002', 'acc7215c6851d1b2d4e10ac869b2f2de.jpg', '113239e2d194ca3c302aec21daf581dd.jpg', '104.28.118.64', 'Handphone', 'Lainnya'),
(220, '0270822', '2022-09-15', '08:53', '18:01', '00:00:00', '', '-6.1792165,106.7124277', '-6.1791949,106.7125695', '095e0704ed44f57be8fbcce0bade02a3.jpg', 'c5aba4ac80af2241d4c1e1292224d01f.jpg', '182.2.165.232', 'Handphone', 'Google Chrome'),
(221, '0031212', '2022-09-15', '08:56', '17:09', '00:00:00', '', '-6.2057409,106.7287578', '-6.1927135,106.740285', '1a6e205967695e52c209bda4259e51f7.jpg', 'c3eb23036afe2293e6c722e953c203aa.jpg', '182.0.230.255', 'Handphone', 'Google Chrome'),
(222, '0120820', '2022-09-15', '08:58', '', '00:00:00', '', '-6.1961268,106.6949979', '', '95bddcf6d1f79dc948afbac20a353dac.jpg', '', '114.124.205.66', 'Handphone', 'Google Chrome'),
(223, '0260822', '2022-09-15', '08:58', '20:55', '00:00:00', '', '-6.1789793,106.7124377', '-6.1791752,106.7123911', 'd06918f1fc5e8c8299dd975e37e08d60.jpg', '9cd1597773f1d0b7313fd001a673d398.jpg', '180.243.12.114', 'Handphone', 'Google Chrome'),
(224, '0190222', '2022-09-15', '08:59', '18:10', '00:00:00', '', '-6.1776837,106.7111171', '-6.1791795,106.7123932', 'cbccda362b388dea4c3667eb0d36367c.jpg', '511e11a98b89977a5685107ccde5a7e5.jpg', '180.243.12.114', 'Handphone', 'Google Chrome'),
(225, '0180122', '2022-09-15', '09:01', '18:12', '00:00:00', '', '-6.1811955,106.7111171', '-6.179224,106.7124252', '4b6faf6052370d616c3d31260fc2fc34.jpg', '814c38283a097c4c9c1caffb86efab40.jpg', '112.215.65.13', 'Handphone', 'Google Chrome'),
(226, '0280122', '2022-09-15', '09:03', '22:10', '00:00:00', '', '-6.1792273,106.7124291', '-6.1769502,106.7917163', '5cdb222f0a49dda24f86638f597a70f3.jpg', 'f69c5dd824c94aa8a5976b43d65fd210.jpg', '182.2.168.39', 'Handphone', 'Google Chrome');
INSERT INTO `cassa_kehadiran` (`id`, `EmployeeID`, `tanggal`, `cek_in`, `cek_out`, `out`, `kategori_izin`, `lokasi`, `lokasi_cekout`, `foto`, `foto2`, `ip`, `perangkat`, `browser`) VALUES
(227, '0230722', '2022-09-15', '09:12', '21:15', '00:00:00', '', '-6.1792231,106.712439', '-6.1791743,106.7123881', '0944aa2a3f08ae918f068e238acd3aff.jpg', '8da5cd7031639da6d84a5dc374173d03.jpg', '180.243.12.114', 'Handphone', 'Google Chrome'),
(228, '0130918', '2022-09-15', '09:30', '', '00:00:00', '', 'error=User denied Geolocation', '', 'a23ba0307bdeab3684290348d3bcea20.jpg', '', '140.213.0.166', 'Handphone', 'Google Chrome'),
(229, '0080521', '2022-09-15', '13:2', '23:16', '00:00:00', '', '-6.1792188,106.7124009', '-6.1786178,106.7118542', '0fe0ce7866e8d6eb57ddfdd5b71ed66f.jpg', 'a1fc4e6352d98c455e5d1fc2419adbd9.jpg', '180.243.12.114', 'Handphone', 'Google Chrome'),
(230, '0320922', '2022-09-13', '', '', '00:00:00', '7', '', '', '', '', '', '', ''),
(231, '0320922', '2022-09-15', '', '', '00:00:00', '7', '', '', '', '', '', '', ''),
(232, '0100220', '2022-09-15', '', '18:03', '00:00:00', '', '', '-6.1792229,106.7124275', '', 'dafd706c5b591f9a91c9e28b57e79bc6.jpg', '180.243.12.114', 'Handphone', 'Google Chrome'),
(233, '0040817', '2022-09-15', '', '19:19', '00:00:00', '', '', '-6.179134783365484,106.71213049737655', '', '1915c3997438506166e3d6d4e597115f.jpg', '146.75.160.29', 'Handphone', 'Lainnya'),
(234, '0060217', '2022-09-16', '08:10', '23:8', '00:00:00', '', '-6.20583932,106.72877639', '-6.20568341,106.72885754', '9da4cd83fdfdf1a814a5585dedb8572b.jpg', '8061f6fe071374cff21c267b4933b14f.jpg', '180.243.14.87', 'Handphone', 'Google Chrome'),
(235, '0300922', '2022-09-16', '08:19', '18:21', '00:00:00', '', '-6.1128662,106.752541', '-6.1127328,106.7524842', '8e3db860511845c41de2d2cc477b9e49.jpg', 'de8b3d955c36463e543344a120be9130.jpg', '182.2.134.240', 'Handphone', 'Google Chrome'),
(236, '0071117', '2022-09-16', '08:22', '21:28', '00:00:00', '', '-6.1792233,106.7124952', '-6.1792129,106.7124372', '7bce01a38a973977b607c183a88e25b9.jpg', '9393c1b21aee8087f2c83118f0819422.jpg', '180.243.8.98', 'Handphone', 'Google Chrome'),
(237, '0270822', '2022-09-16', '08:39', '18:05', '00:00:00', '', '-6.1792061,106.7124238', '-6.1791649,106.7124587', '0704a9af519ef5439d50e8d9d37740ec.jpg', 'efb24c9d02607dcab8ef50bfc47e9b81.jpg', '180.243.8.98', 'Handphone', 'Google Chrome'),
(238, '0200122', '2022-09-16', '08:39', '18:42', '00:00:00', '', '-6.1792122,106.7124245', '-6.183605,106.6927454', '45c4e7d53b0090b5e680c3fbe4ee03e3.jpg', '064d6797f92e112620c950b46b99f7b4.jpg', '114.79.3.68', 'Handphone', 'Google Chrome'),
(239, '0210322', '2022-09-16', '08:39', '19:53', '00:00:00', '', '-6.1792256,106.7124337', '-6.1792178,106.7124823', 'd833a3cac8c6d26cb0280143c2c75e0d.jpg', 'fe6e3209b57c9f051652c1e69f7a9ca1.jpg', '180.243.8.98', 'Handphone', 'Google Chrome'),
(240, '0320922', '2022-09-16', '08:46', '', '00:00:00', '', '-6.2057423,106.7287641', '', '07db98ee302a484d8a8ebd27621067c5.jpg', '', '180.243.14.87', 'Handphone', 'Google Chrome'),
(241, '0230722', '2022-09-16', '08:44', '18:13', '00:00:00', '', '-6.1792152,106.7124421', '-6.1792176,106.7124384', '12228cbc9eea5ecceeff88eb34847fad.jpg', '3b4bbad0f177bb2637be648f7c4b2565.jpg', '180.243.8.98', 'Handphone', 'Google Chrome'),
(242, '0031212', '2022-09-16', '08:48', '18:22', '00:00:00', '', '-6.2057441,106.7287651', '-6.1768835,106.7917322', '02f798b987c5763ab9ab63ca5f2644dd.jpg', '189b3cc9c1b596a71f7a38395bc74f72.jpg', '182.2.171.21', 'Handphone', 'Google Chrome'),
(243, '0280122', '2022-09-16', '08:49', '22:03', '00:00:00', '', '-6.2057402,106.7287606', '-6.1765242,106.7917153', 'c12bcd9e9fe5d482b3611878bf342cdc.jpg', 'c9bcda8a2fdd822008d71766743e3795.jpg', '182.2.170.68', 'Handphone', 'Google Chrome'),
(244, '0190320', '2022-09-16', '08:53', '17:53', '00:00:00', '', '-6.1791749,106.7124048', '-6.1773044,106.7921263', 'ba98207498b3203f0b011a691f09b935.jpg', '033a6df7578ed77c7c313b3886378954.jpg', '182.2.167.195', 'Handphone', 'Google Chrome'),
(245, '0260822', '2022-09-16', '08:56', '18:12', '00:00:00', '', '-6.1791727,106.7123958', '-6.1792149,106.7124398', '37906a3097bf18bb14f680e0a6ec295f.jpg', '73c643904172a186ea220761806f709a.jpg', '180.243.8.98', 'Handphone', 'Google Chrome'),
(246, '0040817', '2022-09-16', '09:00', '19:39', '00:00:00', '', '-6.239605606043165,106.65286287682532', '-6.179244243439798,106.7122824159447', '75daeb7a3cc24567477b12ff7b6ba7ae.jpg', '2b1b0c4eccbab0ff45d853e74a893d47.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(247, '0180122', '2022-09-16', '09:04', '', '00:00:00', '', '-6.1791802,106.7123769', '', 'b05ab8626910207404cd814ab15d4124.jpg', '', '180.243.8.98', 'Handphone', 'Google Chrome'),
(248, '0120820', '2022-09-16', '09:04', '', '00:00:00', '', '-6.1772182,106.6322661', '', 'c1fc3c49e82b79a3020049dd85cdf9ac.jpg', '', '182.3.42.220', 'Handphone', 'Google Chrome'),
(249, '0190222', '2022-09-16', '09:05', '18:07', '00:00:00', '', '-6.1791771,106.7123936', '-6.1791637,106.7124822', 'e406525e5946dd241c8829bd64534562.jpg', '181942f362e2ce8cd2f1f99c06642a2d.jpg', '180.243.8.98', 'Handphone', 'Google Chrome'),
(250, '0100220', '2022-09-16', '09:12', '', '00:00:00', '', '-6.1791711,106.7123953', '', '7c893c5b371640b6b953b2704d65a2f9.jpg', '', '180.243.8.98', 'Handphone', 'Google Chrome'),
(251, '0130918', '2022-09-16', '09:20', '', '00:00:00', '', '-6.1791872,106.7124066', '', 'f4366c267c13287f824d20cb4f103afe.jpg', '', '180.243.8.98', 'Handphone', 'Google Chrome'),
(252, '0080521', '2022-09-16', '10:12', '21:29', '00:00:00', '', '-6.1792141,106.7124698', '-6.1792251,106.7124304', '8ed7f5d4c38b54047a83a9ff4531e654.jpg', '27a5779dc5e765b53a312eb00402b7a2.jpg', '114.124.179.76', 'Handphone', 'Google Chrome'),
(253, '0130918', '2022-09-17', '10:00', '02:06', '00:00:00', '', '-6.2057423,106.7287645', '-6.2058121,106.729014', '1a5ca901f6e17acef99e4ea54487374f.jpg', 'fa5ed992a9f361a8ab0c24220f6720ec.jpg', '180.243.14.87', 'Handphone', 'Google Chrome'),
(254, '0060217', '2022-09-17', '08:08', '23:40', '00:00:00', '', '-6.20549162,106.72885712', '-6.20585652,106.72880772', '1531a38319db105a9b4cd533e04476b5.jpg', 'bb82a14d293f7ec9b3154e5da076873c.jpg', '140.213.7.130', 'Handphone', 'Google Chrome'),
(255, '0300922', '2022-09-17', '08:22', '14:00', '00:00:00', '', '-6.1372292,106.7885259', '-6.1128626,106.7525497', 'a82fe6e549890a70a60a705561a3f2be.jpg', '81970b18a100adcd7f1d1e784a73db25.jpg', '182.2.166.15', 'Handphone', 'Google Chrome'),
(256, '0050714', '2022-09-17', '08:21', '20:05', '00:00:00', '', '-6.2057451,106.7287652', '-6.2057417,106.7287642', '6f385d223fc90ce9fc62a12321c99e2d.jpg', 'a7ab49982d8fa4fd19aa28cb550f55ef.jpg', '182.2.137.10', 'Handphone', 'Google Chrome'),
(257, '0031212', '2022-09-17', '08:50', '16:28', '00:00:00', '', '-6.2057466,106.7287632', '-6.1927492,106.7402851', '7bbd889eedac12384be9cd877233e0ad.jpg', '1babbf1abb6dc1fb5608eb9332b01358.jpg', '182.3.40.123', 'Handphone', 'Google Chrome'),
(258, '0280122', '2022-09-17', '08:55', '18:14', '00:00:00', '', '-6.2057466,106.7287585', '-6.1766162,106.7921678', 'fd0022b558229148098a542eb55e72d3.jpg', '2c72418ba9d12b9c51e7fcf9f8011477.jpg', '182.3.42.29', 'Handphone', 'Google Chrome'),
(259, '0320922', '2022-09-17', '09:25', '15:02', '00:00:00', '', '-6.2057423,106.7287641', '-6.2057511,106.7287784', 'd85675a4120c264be74748b14659556b.jpg', 'bf10bfe38fe04af0b5be12a4429aa447.jpg', '180.243.14.87', 'Handphone', 'Google Chrome'),
(260, '0071117', '2022-09-17', '09:28', '09:28', '00:00:00', '', '-6.183584,106.7003074', '-6.1835884,106.7003105', '4541f74c5fba3f8a7077780389c89f3a.jpg', '12d4df5e3871ffcb9d36d6c8c872c8ba.jpg', '114.124.179.96', 'Handphone', 'Google Chrome'),
(261, '0031212', '2022-09-18', '09:40', '16:12', '00:00:00', '', '-6.2057529,106.7287804', '-6.1765557,106.792169', 'b45d92816133196928c3878fcc51726b.jpg', '0e5d303b6b3bf2d4498bdf8c49d8cfba.jpg', '114.124.214.146', 'Handphone', 'Google Chrome'),
(262, '0280122', '2022-09-18', '11:07', '19:09', '00:00:00', '', '-6.1764809,106.7917984', '-6.1767635,106.7917864', '4b4d76b05edb6f53051b0405642ab32b.jpg', '86ebb51f12e0f3bc4d99a6f8323fd7d3.jpg', '114.124.213.120', 'Handphone', 'Google Chrome'),
(263, '0130918', '2022-09-18', '12:23', '23:19', '00:00:00', '', '-6.2416825,106.7976425', '-6.2118876,106.821242', '4ae7ca9ef438bfb2619815c1ad47155c.jpg', '9285def7d82cfe679371f77700808f1a.jpg', '140.213.9.43', 'Handphone', 'Google Chrome'),
(264, '0071117', '2022-09-19', '7:3', '21:58', '00:00:00', '', '-6.1792125,106.7124353', '-6.178937,106.7118542', '0c04e7400cafd67db3fe7fc6f00c8a07.jpg', '3d8894b345fc2ba1a7f23cdc3769901d.jpg', '180.243.7.145', 'Handphone', 'Google Chrome'),
(265, '0060217', '2022-09-19', '7:53', '21:52', '00:00:00', '', '-6.20581515,106.72868379', '-6.20577745,106.72871302', 'ff0676182d5b1475eb9b58115691202e.jpg', '8573a0120381ace9dce46954de5f5e07.jpg', '180.243.14.87', 'Handphone', 'Google Chrome'),
(266, '0050714', '2022-09-19', '08:06', '18:16', '00:00:00', '', '-6.2057423,106.728764', '-6.2057463,106.7287641', '2d0ab3b69bdd8d01f1cdf7383b82c5a0.jpg', 'c787af4e9ce96b6e1c8694aaf587f7de.jpg', '180.243.14.87', 'Handphone', 'Google Chrome'),
(267, '0210322', '2022-09-19', '08:27', '19:34', '00:00:00', '', '-6.1792275,106.7124292', '-6.1792097,106.7124712', '933a8cfcefbbd8c05f78c500233962f6.jpg', '993c6b027db03be78839873062e2ed77.jpg', '180.243.7.145', 'Handphone', 'Google Chrome'),
(268, '0300922', '2022-09-19', '08:37', '17:19', '00:00:00', '', '-6.1366505,106.7866825', '-6.2057422,106.7287643', 'b5acf550295ea6fb08e8df2c2e13f8df.jpg', '0ca0bb8bad2ecacf9697d43c27657eff.jpg', '180.243.14.87', 'Handphone', 'Google Chrome'),
(269, '0031212', '2022-09-19', '08:36', '17:17', '00:00:00', '', '-6.2057397,106.7287634', '-6.1764939,106.7920116', '3c50eb08e243dc2680e237522bcc3bd2.jpg', '6cc0329395788eaae0c5126ad5d924c6.jpg', '182.0.247.125', 'Handphone', 'Google Chrome'),
(270, '0200122', '2022-09-19', '08:41', '18:21', '00:00:00', '', '-6.1792168,106.7124367', '-6.1792172,106.7124418', '5484f4839bcfc71abc3efc0a95a7b160.jpg', 'fb36b23a50712e7ac8767e1e01bbe970.jpg', '180.243.7.145', 'Handphone', 'Google Chrome'),
(271, '0110221', '2022-09-19', '08:44', '', '00:00:00', '', '-6.17764255776485,106.71150650427901', '', '8559aa16e67d7ec1fcc9e948a5d2c82a.jpg', '', '172.225.74.115', 'Handphone', 'Lainnya'),
(272, '0270822', '2022-09-19', '08:48', '18:01', '00:00:00', '', '-6.1652766,106.5616617', '-6.1791673,106.7124424', 'd172bd516bc469a1ecd15b0e12c0620b.jpg', '1596e5c17cabb18013b1f75db918ddb9.jpg', '180.243.7.145', 'Handphone', 'Google Chrome'),
(273, '0230722', '2022-09-19', '08:50', '18:08', '00:00:00', '', '-6.1791895,106.7124009', '-6.179219,106.7124526', '46082eee64e98b774f3652c5cb8f37c4.jpg', '979deaf9aebd709453fee14d5e8a00d4.jpg', '180.243.7.145', 'Handphone', 'Google Chrome'),
(274, '0280122', '2022-09-19', '08:50', '20:33', '00:00:00', '', '-6.2057241,106.7287688', '-6.177016,106.7916888', '18f505b604a17957413b8c4722ad1781.jpg', '6e5dc036fe47d789becb5b0eaea6c900.jpg', '182.3.45.75', 'Handphone', 'Google Chrome'),
(275, '0320922', '2022-09-19', '08:56', '22:03', '00:00:00', '', '-6.2056962,106.7287803', '-6.2057326,106.7287982', 'd94a24b7d37f76f786162db0dd67def8.jpg', '1e3634200179ea7fae49f339efa1f642.jpg', '114.4.214.130', 'Handphone', 'Google Chrome'),
(276, '0120820', '2022-09-19', '08:55', '', '00:00:00', '', '-6.1984925,106.6990932', '', 'f30276cbac8c27ffee8fc63e1c79257c.jpg', '', '182.2.168.247', 'Handphone', 'Google Chrome'),
(277, '0260822', '2022-09-19', '08:55', '21:52', '00:00:00', '', '-6.1791816,106.712423', '-6.1791739,106.7123815', '8fce1ba1e50e65909fb2e9081bc13d75.jpg', '2751cb80acffd5729417f63d51b5972d.jpg', '180.243.7.145', 'Handphone', 'Google Chrome'),
(278, '0040817', '2022-09-19', '08:57', '18:49', '00:00:00', '', '-6.179249704194063,106.7122641189417', '-6.179144710521851,106.71212834232112', 'dcf6ac939e073f4c563082d4bf60c9cc.jpg', '2a751187b05bbd12c89e5a4c4be2648e.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(279, '0290622', '2022-09-19', '08:58', '', '00:00:00', '', '-6.1792278,106.7123748', '', 'c927f2b2c2869265e538df9cb470486a.jpg', '', '140.213.13.179', 'Handphone', 'Google Chrome'),
(280, '0190320', '2022-09-19', '08:58', '18:01', '00:00:00', '', '-6.2207981,106.7374059', '-6.1791873,106.7124064', 'db9c04508a400983b8bbd9702ed8f7d8.jpg', 'c40ddafb4948ff2b8768e761528bf59e.jpg', '180.243.7.145', 'Handphone', 'Google Chrome'),
(281, '0180122', '2022-09-19', '09:06', '19:59', '00:00:00', '', '-6.1792564,106.7124438', '-6.176373,106.7914753', '8b32399f73d76c3af0f21279e338b989.jpg', '0ca52f2cf166ef2e9c2c16db05dcaa6c.jpg', '140.213.15.67', 'Handphone', 'Google Chrome'),
(282, '0190222', '2022-09-19', '09:16', '18:09', '00:00:00', '', '-6.1791732,106.7123872', '-6.1792151,106.7124387', '3987c16f59dcbc63617ac25498470e68.jpg', '4d0e444255bc413da6d730050da7af2c.jpg', '180.243.7.145', 'Handphone', 'Google Chrome'),
(283, '0100220', '2022-09-19', '09:16', '', '00:00:00', '', '-6.1791917,106.7124092', '', '0a0a7081e8ac6dcbc40a5c40740969c5.jpg', '', '180.243.7.145', 'Handphone', 'Google Chrome'),
(284, '0130918', '2022-09-19', '09:17', '00:25', '00:00:00', '', '-6.1792209,106.7124531', '-6.2118411,106.8213578', 'af7daa3845e4dae9d71f1fe1ac46ac58.jpg', 'e3aa550757305d48fe293cab5f9fbd79.jpg', '140.213.33.79', 'Handphone', 'Google Chrome'),
(285, '0071117', '2022-09-20', '07:05', '21:00', '00:00:00', '', '-6.1792163,106.7124385', '-6.1791942,106.7124374', '5b5a2f4cd075e9353dfb4a561c8a2a1b.jpg', '5564f70c69e33b04a306431a58968a12.jpg', '180.243.9.20', 'Handphone', 'Google Chrome'),
(286, '0050714', '2022-09-20', '08:10', '17:25', '00:00:00', '', '-6.2057341,106.728751', '-6.2057395,106.7287634', '9f7646e93ec242311fbb5a3d5308ac12.jpg', '00e9c4b9ac8c272fed29c1e5fd25d17e.jpg', '180.243.14.87', 'Handphone', 'Google Chrome'),
(287, '0300922', '2022-09-20', '08:17', '17:57', '00:00:00', '', '-6.1375481,106.7885259', '-6.1129905,106.7525121', '74bc663ece9e09dd2e276252acbcd847.jpg', '53abacd5128816097e6b84a0266847fa.jpg', '182.0.230.253', 'Handphone', 'Google Chrome'),
(288, '0060217', '2022-09-20', '08:22', '', '00:00:00', '', '-6.2056726,106.72881492', '', '486465447517db4d207f69e0da099cd3.jpg', '', '180.243.14.87', 'Handphone', 'Google Chrome'),
(289, '0210322', '2022-09-20', '08:22', '20:23', '00:00:00', '', '-6.1791932,106.7124314', '-6.1792227,106.7123994', 'a0befb675ec235c0e84130c33e1183d0.jpg', 'eefe48b35e72cc7c6fdb857be3cf1f03.jpg', '180.243.9.20', 'Handphone', 'Google Chrome'),
(290, '015021', '2022-09-20', '08:30', '21:47', '00:00:00', '', '-6.1791691,106.7123802', '-6.2117552,106.8212944', '8ed08b312b91a432721bb699ad537fd2.jpg', 'a44d46e76ad0fc172bdb2e4b638daab6.jpg', '182.0.230.215', 'Handphone', 'Google Chrome'),
(291, '0031212', '2022-09-20', '08:33', '22:23', '00:00:00', '', '-6.2057399,106.7287635', '-6.1767652,106.7917412', '872b2f52559a5c73d75eb7e647196d7f.jpg', '3c790fef39a3c6c7c311254bb890e705.jpg', '114.124.143.36', 'Handphone', 'Google Chrome'),
(292, '0290622', '2022-09-20', '08:41', '', '00:00:00', '', '-6.2057382,106.7287617', '', '3410d91dd4f50648a13a8717545c72c0.jpg', '', '180.243.14.87', 'Handphone', 'Google Chrome'),
(293, '0230722', '2022-09-20', '08:41', '18:20', '00:00:00', '', '-6.1791503,106.7124104', '-6.1791612,106.7125034', '637f0a28a64aeac05775c9bafb927678.jpg', '1f0def7ec36b6b50e51ecc557faef74b.jpg', '180.243.9.20', 'Handphone', 'Google Chrome'),
(294, '0270822', '2022-09-20', '08:43', '18:01', '00:00:00', '', '-6.1792018,106.7124258', '-6.1791738,106.7124988', 'e4cdab9b8722be9c5b52bf6d11f52fea.jpg', '695836e43dcc4e315ad50ff1c28ada6b.jpg', '182.2.164.14', 'Handphone', 'Google Chrome'),
(295, '0190320', '2022-09-20', '08:43', '17:32', '00:00:00', '', '-6.1803482,106.711103', '-6.2114738,106.8213406', 'f2d0f4ee6e0a0f8e0db7bebac9b4fd68.jpg', 'bf1189652b61b179e2164f458ec992d4.jpg', '114.124.238.150', 'Handphone', 'Google Chrome'),
(296, '0280122', '2022-09-20', '08:47', '23:03', '00:00:00', '', '-6.179185,106.7124459', '-6.176678,106.7920192', '21c645759d8dd9a53af1639c2ec45de6.jpg', '9002d0d35fb27c4b81a95993a1faaa6f.jpg', '114.124.209.164', 'Handphone', 'Google Chrome'),
(297, '0200122', '2022-09-20', '08:48', '18:16', '00:00:00', '', '-6.1792016,106.7124214', '-6.1791614,106.7123925', 'f876655070673b27d42513148c578f31.jpg', 'edcef1c7498f31f8b0da8207174c5daa.jpg', '180.243.9.20', 'Handphone', 'Google Chrome'),
(298, '0110221', '2022-09-20', '08:48', '18:11', '00:00:00', '', '-6.179146506478994,106.71237746291095', '-6.1791243575913635,106.71230150833034', 'b9468d79eb7daaaedcb111218338508d.jpg', '7b98f010ce101a75ceef613dfc28dcd0.jpg', '104.28.121.71', 'Handphone', 'Lainnya'),
(299, '0260822', '2022-09-20', '08:59', '20:52', '00:00:00', '', '-6.1791633,106.7123902', '-6.1791614,106.7123883', '679096045d704a583773cb98c90ee9a1.jpg', '909008b0058256dd688c8b2c1497c8e9.jpg', '180.243.9.20', 'Handphone', 'Google Chrome'),
(300, '0190222', '2022-09-20', '08:59', '18:12', '00:00:00', '', '-6.1808762,106.7111171', '-6.179164,106.7123861', 'ba7968afb1ea2879793aeb9cec52b497.jpg', 'abe6ab652ef37844981539a58183755d.jpg', '180.243.9.20', 'Handphone', 'Google Chrome'),
(301, '0320922', '2022-09-20', '08:32', '22:51', '00:00:00', '', '-6.2057989,106.7288634', '-6.2057187,106.7286881', 'ed0c310b1b8dac285ee50404bbc8727c.jpg', '411c7727b31121b98c416f2c3c688048.jpg', '120.188.7.157', 'Handphone', 'Google Chrome'),
(302, '0130918', '2022-09-20', '09:10', '00:32', '00:00:00', '', '-6.1791222,106.7123496', '-6.211861,106.8213653', '149ca827289f2dc07e031b7a60fdb323.jpg', 'f244f2bc1c066d180d180b70b63c5e6d.jpg', '112.215.170.108', 'Handphone', 'Google Chrome'),
(303, '0120820', '2022-09-20', '09:47', '', '00:00:00', '', '-6.1791802,106.7123855', '', '9dac13806ef90e9f5210156b0aebc1be.jpg', '', '180.243.9.20', 'Handphone', 'Google Chrome'),
(304, '0100220', '2022-09-20', '', '', '00:00:00', '14', '', '', '', '', '', '', ''),
(305, '0040817', '2022-09-20', '', '18:38', '00:00:00', '', '', '-6.179249704194063,106.7122641189417', '', '419601626905802a8396a303cadf4176.jpg', '104.28.118.47', 'Handphone', 'Lainnya'),
(306, '0180122', '2022-09-20', '', '19:55', '00:00:00', '', '', '-6.1791965,106.7124281', '', '0c0d09195aec897b8358854601dc0242.jpg', '112.215.151.83', 'Handphone', 'Google Chrome'),
(307, '0071117', '2022-09-21', '07:00', '23:58', '00:00:00', '', '-6.1792012,106.712436', '-6.1791674,106.7123839', '7c0f67d456311d198331c91a98b63ba3.jpg', '1b313347352da849b26fbb618937a4bc.jpg', '36.69.70.79', 'Handphone', 'Google Chrome'),
(308, '0060217', '2022-09-21', '07:55', '', '00:00:00', '', '-6.20564462,106.72877951', '', '0b13907d5f6a3f1e3e0f610eff52e96d.jpg', '', '110.138.14.42', 'Handphone', 'Google Chrome'),
(309, '0050714', '2022-09-21', '08:03', '18:32', '00:00:00', '', '-6.2056626,106.7282802', '-6.2057387,106.7287632', 'ebaab9ec3bb3e5e624de607d1b3fe9dc.jpg', '2764f717df06a863b65f3ed38841afb8.jpg', '180.243.13.252', 'Handphone', 'Google Chrome'),
(310, '0290622', '2022-09-21', '08:16', '', '00:00:00', '', '-6.2057724,106.7288083', '', 'a0001b2fe6fbe5eba79b9c104d6af87a.jpg', '', '110.138.14.42', 'Handphone', 'Google Chrome'),
(311, '0300922', '2022-09-21', '08:23', '16:56', '00:00:00', '', '-6.1377491,106.7876656', '-6.1130094,106.7524836', '11365ac9e4a51cd9818a5d3221717835.jpg', 'd15061d74a5570001fd870f15e368690.jpg', '182.0.228.237', 'Handphone', 'Google Chrome'),
(312, '015021', '2022-09-21', '08:40', '22:11', '00:00:00', '', '-6.1792027,106.7124141', '-6.2117557,106.8212937', '41f1924148d4b8a9802ecdba3233f0eb.jpg', '83e05fbb1c3fefdc463e40887c897b63.jpg', '114.124.238.145', 'Handphone', 'Google Chrome'),
(313, '0210322', '2022-09-21', '08:41', '20:33', '00:00:00', '', '-6.1791882,106.7124134', '-6.1792272,106.7123965', '25a83d6a7916f65f7942675f0bb87a1a.jpg', 'efe697bce67b7f6b7187d59894c665a4.jpg', '36.69.70.79', 'Handphone', 'Google Chrome'),
(314, '0200122', '2022-09-21', '08:43', '18:18', '00:00:00', '', '-6.1791894,106.7124215', '-6.1791673,106.7123787', 'b5150e17aee7800f9eaf6c3f8f4dc465.jpg', 'd2d3d9615a3e72f24ac9b5df13a6cd45.jpg', '36.69.70.79', 'Handphone', 'Google Chrome'),
(315, '0110221', '2022-09-21', '08:44', '', '00:00:00', '', '-6.179199029610035,106.71246506191682', '', '34c9104569ce70304341e80448ef6c41.jpg', '', '172.225.72.92', 'Handphone', 'Lainnya'),
(316, '0270822', '2022-09-21', '08:45', '18:05', '00:00:00', '', '-6.1792118,106.7124157', '-6.1791628,106.7123829', '13394f1e86a322cb78c50b0be2023e7f.jpg', '7d6c8671131924eed32e16f88d8af516.jpg', '114.124.214.202', 'Handphone', 'Google Chrome'),
(317, '0280122', '2022-09-21', '08:48', '23:46', '00:00:00', '', '-6.2057595,106.7287927', '-6.1772734,106.7924336', '9d62e7a7945930477e24b2ded403c67d.jpg', 'aa3312e857cd19a9e6ad4e8db5e4d7ee.jpg', '182.0.137.179', 'Handphone', 'Google Chrome'),
(318, '0320922', '2022-09-21', '08:52', '', '00:00:00', '', '-6.2057382,106.7287644', '', '28a3ca428c7297aacc1641b88266f830.jpg', '', '110.138.14.42', 'Handphone', 'Google Chrome'),
(319, '0230722', '2022-09-21', '08:52', '18:18', '00:00:00', '', '-6.1791988,106.7124326', '-6.1791579,106.7123886', '8b67044b920f04dab4570d18b0191b63.jpg', '15d5b838d9fbc5c31c400f40480f8707.jpg', '36.69.70.79', 'Handphone', 'Google Chrome'),
(320, '0031212', '2022-09-21', '08:52', '17:34', '00:00:00', '', '-6.2057405,106.7287692', '-6.1926878,106.740304', 'a64d2745161a941f423fe16aa2c1a5eb.jpg', '3fedb5d44f0236044f772044f8459a3f.jpg', '114.124.145.205', 'Handphone', 'Google Chrome'),
(321, '0180122', '2022-09-21', '08:53', '20:24', '00:00:00', '', '-6.1808762,106.7111171', '-6.1792141,106.7124538', 'eacb6f7885a23f1649571357a93a4960.jpg', 'bd6243d787ae63b598c5575b4c820e48.jpg', '140.213.35.196', 'Handphone', 'Google Chrome'),
(322, '0260822', '2022-09-21', '08:54', '18:10', '00:00:00', '', '-6.1791626,106.7123803', '-6.1791667,106.7123781', 'c987c2d2add5f3e6bbe5b6df369d3fba.jpg', '7d455473aeb18e8f3b69dcd1d90eabf5.jpg', '36.69.70.79', 'Handphone', 'Google Chrome'),
(323, '0130918', '2022-09-21', '08:55', '23:34', '00:00:00', '', '-6.2057956,106.7288319', '-6.2118384,106.8213981', 'a9031792acdfe162af2044abbceb662f.jpg', '5d704a09788d1ac4365b2a1bbf5d3c77.jpg', '112.215.151.138', 'Handphone', 'Google Chrome'),
(324, '0190320', '2022-09-21', '08:56', '18:00', '00:00:00', '', '-6.1791609,106.7123759', '-6.1791175,106.7123394', '6bba045d1e1c6361792913ad8cc40c0e.jpg', '646c0f483fe95e707ad973fbd2e6d430.jpg', '36.69.70.79', 'Handphone', 'Google Chrome'),
(325, '0120820', '2022-09-21', '08:57', '', '00:00:00', '', '-6.2024544,106.6352808', '', '6a82913e63c62f92d969b4d70e502230.jpg', '', '182.2.139.254', 'Handphone', 'Google Chrome'),
(326, '0190222', '2022-09-21', '09:03', '18:10', '00:00:00', '', '-6.1792167,106.7124305', '-6.1791416,106.7124548', '74535c76e80b3e09a9ff2432ca4e4941.jpg', 'bdf23fa427e89b69f26dc70c3c0fceae.jpg', '36.69.70.79', 'Handphone', 'Google Chrome'),
(327, '0100220', '2022-09-21', '09:56', '18:4', '00:00:00', '', '-6.179158,106.7123911', '-6.1790836,106.7123264', '3dba934e3ac8ba612e47782a289eb40d.jpg', '507ca7d424a0b41a2dd42699f7e34dc3.jpg', '36.69.70.79', 'Handphone', 'Google Chrome'),
(328, '0080521', '2022-09-21', '09:59', '23:57', '00:00:00', '', '-6.1791653,106.7123926', '-6.1791648,106.7123891', '64c15e3bf09401d92c90e20220e02641.jpg', 'f5dddab38f02d3d120da4a594dd41882.jpg', '36.69.70.79', 'Handphone', 'Google Chrome'),
(329, '0040817', '2022-09-21', '11:26', '', '00:00:00', '', '-6.179202702302674,106.71226179611199', '', '33bcf7cc29703786d1eb92516f481c85.jpg', '', '146.75.160.28', 'Handphone', 'Lainnya'),
(330, '0050714', '2022-09-22', '08:06', '22:0', '00:00:00', '', '-6.2057426,106.7287627', '-6.2039535,106.7290848', '119357e1d1559a914932c2051b0534b8.jpg', '607fa4614f969fe61df663e2dac517b0.jpg', '182.3.46.105', 'Handphone', 'Google Chrome'),
(331, '0290622', '2022-09-22', '08:15', '', '00:00:00', '', '-6.2057398,106.7287661', '', 'ca727edce5e9867c21faf88bad758ff6.jpg', '', '180.243.13.252', 'Handphone', 'Google Chrome'),
(332, '0210322', '2022-09-22', '08:22', '21:20', '00:00:00', '', '-6.1792049,106.7124333', '-6.1792193,106.7124048', 'aed7615a0bf7da08dc25977f5a1af636.jpg', '187c1b4f63d3e088e08c501c64b6e3ec.jpg', '180.243.15.131', 'Handphone', 'Google Chrome'),
(333, '015021', '2022-09-22', '08:29', '20:52', '00:00:00', '', '-6.1791626,106.7122798', '-6.1779201,106.713697', 'b656cf98162faf3bd49b26b25c4a1b03.jpg', 'ee24a88036f62fe6597789ca78abd915.jpg', '182.3.44.195', 'Handphone', 'Google Chrome'),
(334, '0230722', '2022-09-22', '08:32', '19:7', '00:00:00', '', '-6.1791954,106.7124238', '-6.1791637,106.7123952', '0a06c132734b2b1105daa463148ccdc9.jpg', '90643f164f6f66ecdd89f9563dbaca80.jpg', '180.243.15.131', 'Handphone', 'Google Chrome'),
(335, '0300922', '2022-09-22', '08:35', '16:57', '00:00:00', '', '-6.1129601,106.7525318', '-6.13634138,106.78650636', '5cb212ac990cc2e7b4a455d8e381fcd7.jpg', 'aa884b1880cd323e5edd678965442c80.jpg', '182.0.143.33', 'Handphone', 'Google Chrome'),
(336, '0190320', '2022-09-22', '08:42', '17:45', '00:00:00', '', '-6.1791892,106.7124256', '-6.1787003,106.7917187', '7b65db4cc7d6603e1c2011f1b60423c3.jpg', '08784e7f932be363210862a544a73670.jpg', '182.0.247.110', 'Handphone', 'Google Chrome'),
(337, '0270822', '2022-09-22', '08:48', '18:02', '00:00:00', '', '-6.1791984,106.7124207', '-6.1792008,106.7124344', '5f586a5a3d20e6eedbada5d4317c9a2b.jpg', 'ffa361a1ab050e2ba6617763aed8ef9e.jpg', '180.243.15.131', 'Handphone', 'Google Chrome'),
(338, '0031212', '2022-09-22', '08:49', '16:53', '00:00:00', '', '-6.2057394,106.7287609', '-6.1927368,106.7402713', 'd348eb2378d66bb5de148fff1a65c4ba.jpg', '67cf72cf2dcd7d7fe55698d347c0c650.jpg', '182.2.164.61', 'Handphone', 'Google Chrome'),
(339, '0110221', '2022-09-22', '08:51', '18:23', '00:00:00', '', '-6.180720517311835,106.7914501786744', '-6.17907033593366,106.71232078300419', '2c8ed79d094c5023ed155e94d056a5dd.jpg', '4b7af3525834e85ab410cb6492d78453.jpg', '172.225.72.80', 'Handphone', 'Lainnya'),
(340, '0260822', '2022-09-22', '08:53', '18:22', '00:00:00', '', '-6.1812732,106.7182222', '-6.179168,106.7123841', '6f52b09701c2fd1083e27e7657046687.jpg', '325a2f46d8470e9d823b50be8462f593.jpg', '180.243.15.131', 'Handphone', 'Google Chrome'),
(341, '0120820', '2022-09-22', '08:53', '', '00:00:00', '', '-6.1834711,106.7095536', '', '55ea1e2e0d2af04c3d7b60473c1cc424.jpg', '', '182.2.138.251', 'Handphone', 'Google Chrome'),
(342, '0190222', '2022-09-22', '08:59', '18:49', '00:00:00', '', '-6.2128721,106.7921341', '-6.1791658,106.7123836', '6763a3cd9e0154c7165bd1f45280fd3d.jpg', '82c23091cb3e5387814bff1d70755dcd.jpg', '180.243.15.131', 'Handphone', 'Google Chrome'),
(343, '0180122', '2022-09-22', '09:01', '18:59', '00:00:00', '', '-6.1791891,106.7124369', '-6.1792072,106.7124251', '502ead26cbd3eef459743e37456b1d97.jpg', 'b3815270f2a7e55787189eee01e5090c.jpg', '112.215.151.236', 'Handphone', 'Google Chrome'),
(344, '0280122', '2022-09-22', '09:04', '21:54', '00:00:00', '', '-6.1791521,106.7124001', '-6.1768684,106.7923671', '04b9bc68f1b4829e1e814ae12654c239.jpg', '50ae5bdbe93170def95cb51725fcb4af.jpg', '182.3.36.212', 'Handphone', 'Google Chrome'),
(345, '0320922', '2022-09-22', '08:49', '23:16', '00:00:00', '', '-6.2056225,106.7288409', '-6.2057757,106.7287448', '3fcc9761c72453b129ed3f718b22f705.jpg', '0749c2d8bdc3b34ab3e02fe84dc38c38.jpg', '120.188.67.167', 'Handphone', 'Google Chrome'),
(346, '0130918', '2022-09-22', '09:12', '22:44', '00:00:00', '', '-6.2056958,106.7288369', '-6.2118765,106.8213894', '079596e2affe239d604319bd3fd1f865.jpg', 'b20f6f0588534b4884651557e2915f0b.jpg', '112.215.65.150', 'Handphone', 'Google Chrome'),
(347, '0060217', '2022-09-22', '10:16', '20:49', '00:00:00', '', '-6.2057486,106.7287743', '-6.2057385,106.728763', '35036ad563ed21a2dc9d224e930507d6.jpg', '486d635e808c38ee3b6cc933613d1acf.jpg', '180.243.13.252', 'Handphone', 'Google Chrome'),
(348, '0080521', '2022-09-22', '11:06', '23:54', '00:00:00', '', '-6.179214,106.7124755', '-6.1791653,106.7123846', '45be993476ed9681da1e9fd7f28584f4.jpg', '8338b9d101ab036e29b2de07a1e8f72b.jpg', '180.243.15.131', 'Handphone', 'Google Chrome'),
(349, '0100220', '2022-09-22', '12:58', '17:51', '00:00:00', '', '-6.1790611,106.7124025', '-6.1791662,106.7123904', 'd52f85003b278cf8c75527d0baf8414f.jpg', '62a45cf54d179d86d45bf1c655f4c0a3.jpg', '180.243.15.131', 'Handphone', 'Google Chrome'),
(350, '0200122', '2022-09-22', '', '', '00:00:00', '14', '', '', '', '', '', '', ''),
(351, '0040817', '2022-09-22', '', '19:16', '00:00:00', '', '', '-6.17912248887472,106.71204571187953', '', '90092baf613533837b564c1547202769.jpg', '172.225.181.71', 'Handphone', 'Lainnya'),
(352, '0071117', '2022-09-22', '', '23:54', '00:00:00', '', '', '-6.1792038,106.7124247', '', '81ceaf7b6faff10ebca90827fb87445e.jpg', '180.243.15.131', 'Handphone', 'Google Chrome'),
(353, '0071117', '2022-09-23', '07:11', '', '00:00:00', '', '-6.1792039,106.7124316', '', 'e0899f93d9884d48823fb3061f50ad78.jpg', '', '180.243.0.1', 'Handphone', 'Google Chrome'),
(354, '0060217', '2022-09-23', '07:59', '20:49', '00:00:00', '', '-6.2057616,106.7287956', '-6.2057386,106.7287631', 'c02706cc345bea6c6eaf61be6248fa92.jpg', '0da52cbd09d90eb6ee6f6e7b1176bf1c.jpg', '180.243.13.252', 'Handphone', 'Google Chrome'),
(355, '0290622', '2022-09-23', '08:03', '', '00:00:00', '', '-6.2057552,106.7287816', '', '7f92f0c75e36fad4bc15463eb5a6278f.jpg', '', '180.243.13.252', 'Handphone', 'Google Chrome'),
(356, '0050714', '2022-09-23', '08:11', '20:20', '00:00:00', '', '-6.2057395,106.7287634', '-6.2057414,106.7287637', 'bc4a0520cd343746f4fecb1ee468083f.jpg', 'eaf6b5f413cea214dbc05d2c70c29bcf.jpg', '180.243.13.252', 'Handphone', 'Google Chrome'),
(357, '0200122', '2022-09-23', '08:38', '18:43', '00:00:00', '', '-6.1791908,106.7124206', '-6.1792045,106.712422', '09ab997286622afebd3811029bc14181.jpg', 'e128963a21c7b7e07eed5e7e95d93a00.jpg', '180.214.233.15', 'Handphone', 'Google Chrome'),
(358, '015021', '2022-09-23', '08:39', '20:36', '00:00:00', '', '-6.1790549,106.7122916', '-6.21177,106.82123500000002', '3589c8cc968803ef4a015885f79b54b7.jpg', 'a67f71074d2bda8744c8e6aeebadc2e6.jpg', '182.0.245.0', 'Handphone', 'Google Chrome'),
(359, '0120820', '2022-09-23', '08:44', '', '00:00:00', '', '-6.1791796,106.7123282', '', 'e65e2b7799ed20ba1f37178327d7e598.jpg', '', '182.2.169.61', 'Handphone', 'Google Chrome'),
(360, '0270822', '2022-09-23', '08:45', '18:04', '00:00:00', '', '-6.1791832,106.71242', '-6.1791707,106.7123857', 'c55aae53d720ab71f24e7c2fee2b22fb.jpg', 'ac453f0a6de8b3c876daed4b3db06c1b.jpg', '180.243.0.1', 'Handphone', 'Google Chrome'),
(361, '0031212', '2022-09-23', '08:47', '17:03', '00:00:00', '', '-6.2057389,106.7287629', '-6.1926588,106.7402826', '676cd4d504bef3352e3536d817aa2d02.jpg', 'a3c34e2fd43c442b0ff908bae9b97f77.jpg', '182.2.165.56', 'Handphone', 'Google Chrome'),
(362, '0110221', '2022-09-23', '08:54', '18:12', '00:00:00', '', '-6.17912661105155,106.71230409033912', '-6.17912661105155,106.71230409033912', '2cd719be41b0127e4f01c31745cc86ea.jpg', '4c31e427905c218bdef629e5a0e6ffcb.jpg', '104.28.118.63', 'Handphone', 'Lainnya'),
(363, '0190320', '2022-09-23', '08:55', '18:16', '00:00:00', '', '-6.1791734,106.712385', '-6.1791586,106.7122961', 'cd8db57f2c63fe9d1afaaa2c569e0f61.jpg', '20c10cde4674b5a5aacd5589ba35bb87.jpg', '180.243.0.1', 'Handphone', 'Google Chrome'),
(364, '0230722', '2022-09-23', '08:56', '19:12', '00:00:00', '', '-6.1791925,106.7124352', '-6.1792,106.712433', '7c7e42b5b4e4c66643ea360fe29189a0.jpg', '81588bb8027daade32f0f3eb5656f264.jpg', '180.243.0.1', 'Handphone', 'Google Chrome'),
(365, '0260822', '2022-09-23', '08:56', '21:01', '00:00:00', '', '-6.1791612,106.7123814', '-6.1791579,106.7123884', '3f9bba731a5e08cb81dd83e96b0259f4.jpg', '1a223c776866ed8f9d6bae98c70f5cae.jpg', '180.243.0.1', 'Handphone', 'Google Chrome'),
(366, '0280122', '2022-09-23', '08:57', '22:09', '00:00:00', '', '-6.205753,106.7287329', '-6.1917231,106.7484245', '54b28807fb02c0a2f0ed29ef72987ddb.jpg', 'a08f8833c3a6f9ee967f66073dc75f77.jpg', '182.3.43.39', 'Handphone', 'Google Chrome'),
(367, '0300922', '2022-09-23', '09:01', '17:04', '00:00:00', '', '-6.1366256,106.7883202', '-6.2057386,106.7287625', '5733b2ce60a420ff9fa15ca16b6523d5.jpg', 'e0e63ecd5ad1bb0860c3cc0ef5b6bfa6.jpg', '182.2.132.99', 'Handphone', 'Google Chrome'),
(368, '0180122', '2022-09-23', '09:03', '20:29', '00:00:00', '', '-6.1791949,106.7124249', '-6.1762581,106.791784', '7dda16f9c6d24a0884cb0e575a6d78e7.jpg', '0fe842cb2ec968570601e89239bc86b3.jpg', '140.213.35.96', 'Handphone', 'Google Chrome'),
(369, '0320922', '2022-09-23', '08:53', '18:38', '00:00:00', '', '-6.2057443,106.7287713', '-6.2057445,106.7287614', '6f584ab951d1d2f8abfaad7eb3d6b90c.jpg', 'bf216394be438458b03eb21b53baf982.jpg', '120.188.67.192', 'Handphone', 'Google Chrome'),
(370, '0130918', '2022-09-23', '09:08', '23:08', '00:00:00', '', '-6.2056358,106.728769', '-6.2118927,106.8212506', '3ce0dabedf4d76adaa0df2378173006b.jpg', 'd6ce5f5f89d981af9619c2468b1b72f3.jpg', '112.215.238.195', 'Handphone', 'Google Chrome'),
(371, '0100220', '2022-09-23', '09:20', '', '00:00:00', '', '-6.1791549,106.7123989', '', 'a66141efdbc3089acb2f76376a3a84af.jpg', '', '180.243.0.1', 'Handphone', 'Google Chrome'),
(372, '0210322', '2022-09-23', '13:17', '19:57', '00:00:00', '', '-6.1792213,106.7123999', '-6.179209,106.7124008', '466e6cb531fda2d999624e0f00342e10.jpg', '0861d47f3abf48c2bda10b74ee174a9b.jpg', '180.243.0.1', 'Handphone', 'Google Chrome'),
(373, '0190222', '2022-09-23', '13:21', '19:13', '00:00:00', '', '-6.1791657,106.7123846', '-6.1791651,106.7123844', '93ff5b3dfce321da958b92b3b0e68e55.jpg', 'eb5aa9fd77a70831d83c127dae40c5c0.jpg', '180.243.0.1', 'Handphone', 'Google Chrome'),
(374, '0080521', '2022-09-23', '13:42', '22:12', '00:00:00', '', '-6.1791641,106.7123836', '-6.1786178,106.7118542', 'f533fb3885f6ef16e71d60f81a2cb2f7.jpg', '40efe66835ae0454f36767eba9aba642.jpg', '180.243.0.1', 'Handphone', 'Google Chrome'),
(375, '0060217', '2022-09-24', '08:12', '23:27', '00:00:00', '', '-6.2057375,106.7287656', '-6.2057397,106.7287634', 'a8598a814ba74e3317f949f1c5735e84.jpg', '8a71a3f84dda0e93dd0780b2feababcc.jpg', '180.243.13.252', 'Handphone', 'Google Chrome'),
(376, '0050714', '2022-09-24', '08:17', '', '00:00:00', '', '-6.2057428,106.7287654', '', '87aab0fb58bfc350c51e0e98fff8c4f7.jpg', '', '180.243.13.252', 'Handphone', 'Google Chrome'),
(377, '0300922', '2022-09-24', '08:25', '17:24', '00:00:00', '', '-6.1363241,106.7860306', '-6.1765951,106.7920779', '8ce3dbe084083573fb786c8a39fd02b5.jpg', 'c598820c90ce3d098cead74965e35960.jpg', '182.2.136.18', 'Handphone', 'Google Chrome'),
(378, '0031212', '2022-09-24', '08:34', '19:35', '00:00:00', '', '-6.2057368,106.7287603', '-6.1767645,106.7917605', '8a27a75537da15cd4cf174067b60eee7.jpg', '3708f9588cd6ded112f1cb8033f366a8.jpg', '182.3.42.178', 'Handphone', 'Google Chrome'),
(379, '0071117', '2022-09-24', '08:35', '17:05', '00:00:00', '', '-6.2057386,106.7287655', '-6.1764551,106.7918473', 'cc4fc0fd05d9587f49183177b1a257ee.jpg', '4dce18adc7553982c19e6f7e4d945787.jpg', '180.214.232.69', 'Handphone', 'Google Chrome'),
(380, '0290622', '2022-09-24', '08:39', '', '00:00:00', '', '-6.2057432,106.7287714', '', '9d61309c57206d2ddb90f2398dc323cd.jpg', '', '180.243.13.252', 'Handphone', 'Google Chrome'),
(381, '0320922', '2022-09-24', '08:41', '', '00:00:00', '', '-6.205739,106.7287622', '', '4f2e1e8f7d9ffd4261b1c5162da2de7f.jpg', '', '180.243.13.252', 'Handphone', 'Google Chrome'),
(382, '015021', '2022-09-24', '08:59', '15:10', '00:00:00', '', '-6.179116930876476,106.71236895024776', '-6.2117591,106.8212976', 'da38478cd824a2fe490b9e9711bf6da2.jpg', 'c88cfe7859d593129741e6af2c893de7.jpg', '182.3.46.106', 'Handphone', 'Google Chrome'),
(383, '0280122', '2022-09-24', '09:04', '19:47', '00:00:00', '', '-6.2057377,106.728749', '-6.1774128,106.7925148', '5c0f880fada0ab977522d38f32212dfc.jpg', '87f0809514e0d80bdfaf1901793f26f6.jpg', '182.2.132.12', 'Handphone', 'Google Chrome'),
(384, '0130918', '2022-09-24', '09:23', '15:43', '00:00:00', '', '-6.2119343,106.7167375', '-6.2118975,106.8212522', '6a07f563ee1d1b83747a40bf9978e80e.jpg', '12af43b5100085a0dae5c7b56d1dac01.jpg', '112.215.238.183', 'Handphone', 'Google Chrome'),
(385, '0080521', '2022-09-24', '16:53', '18:53', '00:00:00', '', '-6.179163,106.7123873', '-6.1791657,106.7123819', 'c29585ae65ec0d78cb1fde5d79671136.jpg', 'ed6eeebd6ff3fe3e72224cf9fd0ce618.jpg', '182.0.136.164', 'Handphone', 'Google Chrome'),
(386, '0300922', '2022-09-25', '08:12', '17:02', '00:00:00', '', '-6.137749,106.7876609', '-6.1766167,106.7917313', '77da6c35ea7b1e526f57a888f10885db.jpg', 'e03a8ecc0cda26c9c9c514d4975299de.jpg', '182.2.133.147', 'Handphone', 'Google Chrome'),
(387, '0031212', '2022-09-25', '08:59', '17:01', '00:00:00', '', '-6.2057395,106.7287634', '-6.1764157,106.7918941', '96a10526764c8e3a253fc6d80e67bc06.jpg', 'ccc9e7cc9e186ccb429a4a2112e402a2.jpg', '182.2.164.19', 'Handphone', 'Google Chrome'),
(388, '0060217', '2022-09-25', '10:32', '17:02', '00:00:00', '', '-6.1761287,106.7919166', '-6.1763611,106.791844', '6b5ee0add53b650f6ed5d163fadbf28b.jpg', '2aa6a52bf39e3ee7593fb4c57cb106bb.jpg', '140.213.2.136', 'Handphone', 'Google Chrome'),
(389, '0280122', '2022-09-25', '12:54', '17:01', '00:00:00', '', '-6.1766782,106.7918852', '-6.1765854,106.7917764', '5e20bd928fe04d605ad50486c7918885.jpg', '690c103b131871e97fff9d1800447d70.jpg', '114.124.244.111', 'Handphone', 'Google Chrome'),
(390, '0071117', '2022-09-26', '06:59', '22:08', '00:00:00', '', '-6.1791997,106.7124243', '-6.1791396,106.7123626', 'ccd326b9062ce20fb3d9729069dfac28.jpg', '56fb3103210dab17643f02f4f6410d18.jpg', '180.243.0.9', 'Handphone', 'Google Chrome'),
(391, '0050714', '2022-09-26', '08:05', '01:49', '00:00:00', '', '-6.2059385,106.7287277', '-6.2057467,106.7287813', 'cdd940c115d23a30db9061fc5a7f2bba.jpg', '61ce929e94e2d28ba7b7d00a516db85e.jpg', '180.243.13.252', 'Handphone', 'Google Chrome'),
(392, '0210322', '2022-09-26', '08:11', '21:22', '00:00:00', '', '-6.1792116,106.7124388', '-6.1792282,106.7123948', 'd14e829a3d25062fda63e41324fbd5b5.jpg', '9dde80450063994fba7f631f084a67db.jpg', '180.243.0.9', 'Handphone', 'Google Chrome'),
(393, '0290622', '2022-09-26', '08:16', '', '00:00:00', '', '-6.2057389,106.7287607', '', '72cb3c9fdb192b627a91a7d77c49dbd4.jpg', '', '140.213.35.172', 'Handphone', 'Google Chrome'),
(394, '0300922', '2022-09-26', '08:39', '17:05', '00:00:00', '', '-6.1382333,106.7870512', '-6.2057581,106.7287984', 'e063b966cd2b35eea615c39785bd681a.jpg', '3892b0f0d807c0f6eb14dfe8d2c37a1a.jpg', '182.2.135.6', 'Handphone', 'Google Chrome'),
(395, '0110221', '2022-09-26', '08:38', '', '00:00:00', '', '-6.179141868043064,106.71259005419755', '', '683858ab5e3be0ed802a82863fce45be.jpg', '', '172.225.181.67', 'Handphone', 'Lainnya'),
(396, '0200122', '2022-09-26', '08:39', '18:30', '00:00:00', '', '-6.1791937,106.7124239', '-6.1791649,106.7123905', '26bf25c2a2e1baac407926a929276108.jpg', '48e3de1aa78ff36dd9c6e0dd9e6901f0.jpg', '180.243.0.9', 'Handphone', 'Google Chrome'),
(397, '0031212', '2022-09-26', '08:41', '16:58', '00:00:00', '', '-6.205734,106.7287649', '-6.1927473,106.7402772', '3a6f53616b633ddd7ac1e939b639a5bf.jpg', 'e658c9e935173355422190a1819e7c0f.jpg', '182.3.37.27', 'Handphone', 'Google Chrome'),
(398, '0190320', '2022-09-26', '08:47', '18:00', '00:00:00', '', '-6.1791935,106.7124255', '-6.1791638,106.7123848', 'b86d056fc05c43851bd27c17638ff582.jpg', '949e3a057553fb72de032c6fe1ec7692.jpg', '180.243.0.9', 'Handphone', 'Google Chrome'),
(399, '0270822', '2022-09-26', '08:50', '18:02', '00:00:00', '', '-6.1791887,106.712419', '-6.1791568,106.7124758', 'da2a932fde620b151d627602fff3ae1e.jpg', '05b3468dfab08b127ac345f45491a937.jpg', '114.124.241.36', 'Handphone', 'Google Chrome'),
(400, '0320922', '2022-09-26', '08:50', '01:49', '00:00:00', '', '-6.2057308,106.7286662', '-6.2057468,106.7287753', '867bb4019f5928a096be37c427c76cff.jpg', '9ba7c189da0536dc83e68e3e1b6aa63e.jpg', '180.243.13.252', 'Handphone', 'Google Chrome'),
(401, '0230722', '2022-09-26', '08:52', '18:30', '00:00:00', '', '-6.1791535,106.7123923', '-6.1791683,106.7123931', 'a85647b6472454e534246fa668775fba.jpg', 'cbe92dceb4ac8eb7a904d47159cb6ee5.jpg', '180.243.0.9', 'Handphone', 'Google Chrome'),
(402, '0260822', '2022-09-26', '08:53', '18:18', '00:00:00', '', '-6.179231,106.7124776', '-6.1791623,106.7123845', 'c7f6a03f339a18f4ac21e2ab0a9ad282.jpg', '4b735865165973a98478e420563cc988.jpg', '180.243.0.9', 'Handphone', 'Google Chrome'),
(403, '0120820', '2022-09-26', '08:53', '', '00:00:00', '', '-6.1979373,106.6941394', '', '855b1a3f4f567235d2a79e39ca469dc8.jpg', '', '182.0.132.29', 'Handphone', 'Google Chrome'),
(404, '0130918', '2022-09-26', '08:54', '00:51', '00:00:00', '', '-6.1791881,106.7124028', '-6.2118509,106.821381', 'c3f4a257bb09ccc9a99357af0c53949e.jpg', '8a11c1c068231151f213d8d5eb2b2f8b.jpg', '140.213.15.83', 'Handphone', 'Google Chrome'),
(405, '0190222', '2022-09-26', '08:59', '18:14', '00:00:00', '', '-6.2128761,106.7921242', '-6.1791716,106.7123801', 'f7cd077a67de991fac2689c0e9a36f4c.jpg', '65e43a4adf0fdeffd3b4c1dc7fa4c6a1.jpg', '180.243.0.9', 'Handphone', 'Google Chrome'),
(406, '0280122', '2022-09-26', '08:59', '22:13', '00:00:00', '', '-6.1791917,106.7124181', '-6.1768871,106.7923022', 'f6e2bccd6a2f1824d6b75207ebc03a1d.jpg', 'cece9e027ed13e124c1c625e7317ebc5.jpg', '182.0.165.182', 'Handphone', 'Google Chrome'),
(407, '015021', '2022-09-26', '08:59', '22:23', '00:00:00', '', '-6.179161,106.7123925', '-6.2117577,106.8213186', '3b984f19e746ea679d45453ec1f08d08.jpg', '236195777c858d6bf254122edcb0a7ab.jpg', '182.2.170.122', 'Handphone', 'Google Chrome'),
(408, '0080521', '2022-09-26', '10:05', '22:09', '00:00:00', '', '-6.179217,106.7124729', '-6.1786178,106.7118542', '168c86d2a7a8d3ae363f38e225e765ea.jpg', '2fabf40a105110f83efdb7e2c586ee6c.jpg', '180.243.0.9', 'Handphone', 'Google Chrome'),
(409, '0060217', '2022-09-26', '12:21', '22:47', '00:00:00', '', '-6.2057423,106.7287636', '-6.205743,106.7287651', 'ed9ad07b1883f3b7b47e7c96284277ca.jpg', 'f02ea63aee7b8db48ab35bb4e6a23d0f.jpg', '180.243.13.252', 'Handphone', 'Google Chrome'),
(410, '0040817', '2022-09-26', '', '18:47', '00:00:00', '', '', '-6.179210037536875,106.71233076255932', '', 'ed9c3ac3613366f4e2011def59bc8fc8.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(411, '0180122', '2022-09-26', '', '19:03', '00:00:00', '', '', '-6.1792039,106.7124137', '', '786d7f7057ee75b07e63c3db6a82b26d.jpg', '140.213.15.169', 'Handphone', 'Google Chrome'),
(412, '0320922', '2022-09-27', '08:56', '18:57', '00:00:00', '', '-6.2056781,106.7288081', '-6.192043,106.7442992', 'c0fff71b9ed8b904231bc4ad4367515a.jpg', 'b5171ecf676161d6e70363ef867d0eb3.jpg', '120.188.94.196', 'Handphone', 'Google Chrome'),
(413, '0071117', '2022-09-27', '07:02', '22:14', '00:00:00', '', '-6.1792179,106.7124687', '-6.1791939,106.7124059', '9e7e91c32a893fb29627c8152ff11b65.jpg', '30bc991fee6ca95d37114215698a0fc9.jpg', '36.70.43.129', 'Handphone', 'Google Chrome'),
(414, '0060217', '2022-09-27', '07:57', '22:01', '00:00:00', '', '-6.2057394,106.7287626', '-6.2057414,106.7287637', '7b10e52ed8fd1ad68def5f2960d7f5a6.jpg', 'd3ba29517405554557e368e9833aa854.jpg', '180.243.13.252', 'Handphone', 'Google Chrome'),
(415, '0290622', '2022-09-27', '08:11', '', '00:00:00', '', '-6.2057465,106.7287696', '', '8b569751f0880466d823b34260fd8e42.jpg', '', '180.243.13.252', 'Handphone', 'Google Chrome'),
(416, '0050714', '2022-09-27', '08:13', '18:35', '00:00:00', '', '-6.2057493,106.7287768', '-6.2057372,106.7287601', 'e2f1231c5b052bcacd2559dee2702ec2.jpg', '4840b5a65dddcb39179a9c2eb57fb88c.jpg', '180.243.13.252', 'Handphone', 'Google Chrome'),
(417, '0210322', '2022-09-27', '08:24', '21:56', '00:00:00', '', '-6.180557,106.7111171', '-6.1792082,106.7123975', '44f7c6237028c6d97aa550795dc0c511.jpg', 'c659e1809e118a65dd3ddafd1dea4a6b.jpg', '36.70.43.129', 'Handphone', 'Google Chrome'),
(418, '0300922', '2022-09-27', '08:29', '17:05', '00:00:00', '', '-6.1369694,106.7866825', '-6.2057393,106.7287634', 'a8801fb36b04170dd031bbb72e395b74.jpg', '96710303f84228aec86d771c7e526cb6.jpg', '182.0.133.110', 'Handphone', 'Google Chrome'),
(419, '0190320', '2022-09-27', '08:36', '', '00:00:00', '', '-6.179195,106.7124321', '', 'fea3328ad5ac102091dc1d9b2947f1a3.jpg', '', '36.69.79.6', 'Handphone', 'Google Chrome'),
(420, '0031212', '2022-09-27', '08:45', '21:11', '00:00:00', '', '-6.2057365,106.7287664', '-6.2057426,106.7287709', 'fd4600dfefccafc6eec1c91f45bea9e6.jpg', '3a6c9805c9441771e725799ddf7a06ee.jpg', '114.124.150.247', 'Handphone', 'Google Chrome'),
(421, '0200122', '2022-09-27', '08:46', '18:31', '00:00:00', '', '-6.1791938,106.7124175', '-6.1792027,106.7124082', '5b6bdb36b729535435de6aa9a9bc2f49.jpg', 'aae494ac2d2e4d193eca97f7822fd1e7.jpg', '180.214.233.66', 'Handphone', 'Google Chrome'),
(422, '0230722', '2022-09-27', '08:47', '18:48', '00:00:00', '', '-6.1791939,106.7124421', '-6.1791614,106.7123805', '825bacc4f72bd78acc3619cd53b6f6a5.jpg', '0e127cf9a966a087eeb4697ad02c08a5.jpg', '36.70.43.129', 'Handphone', 'Google Chrome'),
(423, '0270822', '2022-09-27', '08:49', '18:12', '00:00:00', '', '-6.1791623,106.712374', '-6.1791619,106.7124024', '22d00260ce044535d1899c08d36ba13b.jpg', 'ae509dda5e71a65c06e3403ff2dd9b2d.jpg', '182.3.43.127', 'Handphone', 'Google Chrome'),
(424, '0280122', '2022-09-27', '08:51', '22:03', '00:00:00', '', '-6.2057457,106.7287665', '-6.1769036,106.7917373', '9003756920c7ae6282667d02becc7de5.jpg', '74c8671f9a0c8c0367d5605cbac6ca3c.jpg', '182.2.168.244', 'Handphone', 'Google Chrome'),
(425, '0260822', '2022-09-27', '08:53', '22:05', '00:00:00', '', '-6.1792336,106.7124923', '-6.1791643,106.7123921', '2a719fe8df9992389fb58eb95c5d8a09.jpg', '9ddd17deea1dc443786b5819239e9979.jpg', '36.70.43.129', 'Handphone', 'Google Chrome'),
(426, '0120820', '2022-09-27', '08:55', '', '00:00:00', '', '-6.1908222,106.7006852', '', '2e9150e2382659fab21b36af207ef975.jpg', '', '182.2.170.89', 'Handphone', 'Google Chrome'),
(427, '015021', '2022-09-27', '08:58', '20:53', '00:00:00', '', '-6.1782985,106.7118542', '-6.2117564,106.8212941', 'c4db1dd351f772e33934a7221aeb42fe.jpg', '25e63b62899a9e261372d706b421e989.jpg', '182.0.206.224', 'Handphone', 'Google Chrome'),
(428, '0110221', '2022-09-27', '08:58', '20:02', '00:00:00', '', '-6.17912661105155,106.71230409033912', '-6.17912661105155,106.71230409033912', 'd904bead6cd2389dee20a1686a95b424.jpg', 'f6640ad8d2ea7077464532c860c25818.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(429, '0180122', '2022-09-27', '08:58', '19:32', '00:00:00', '', '-6.179166,106.7123769', '-6.1791947,106.7124244', 'f68c0e1e373ba8658a0c306c6bb6ac72.jpg', '32aca81c348cb0c9559fbd4b37b45311.jpg', '36.70.43.129', 'Handphone', 'Google Chrome'),
(430, '0190222', '2022-09-27', '08:59', '18:19', '00:00:00', '', '-6.2128744,106.7921163', '-6.1791634,106.7123787', 'cf5a59ddf40f5a631daf95cd2b0b97ff.jpg', '4627b07eadc9923445f38b53b147c10f.jpg', '36.70.43.129', 'Handphone', 'Google Chrome'),
(431, '0100220', '2022-09-27', '09:13', '18:11', '00:00:00', '', '-6.179163,106.7123827', '-6.1791662,106.7123707', '0b7c7ae486d29ce7eb48ce813f4aafa3.jpg', '2724b3567c8135a8e7faf3105f4f3088.jpg', '114.4.212.15', 'Handphone', 'Google Chrome'),
(432, '0130918', '2022-09-27', '09:14', '23:35', '00:00:00', '', '-6.2057409,106.7287642', '-6.2118609,106.821332', 'e67f01cee748b4d875669163c540764e.jpg', 'f921b4870ad0d745f01730d7af800089.jpg', '112.215.171.133', 'Handphone', 'Google Chrome'),
(433, '0040817', '2022-09-27', '10:04', '', '00:00:00', '', '-6.179210037536875,106.71233076255932', '', '234b5dedbaf36ac40db622fb979698c2.jpg', '', '146.75.160.28', 'Handphone', 'Lainnya'),
(434, '0080521', '2022-09-27', '11:05', '22:14', '00:00:00', '', '-6.1791641,106.7123885', '-6.1786178,106.7118542', 'cdde8b0603f173e470ed8b77968e1f1f.jpg', '3dccb50a0ec2fc8c7d18a635be8beefa.jpg', '36.70.43.129', 'Handphone', 'Google Chrome'),
(435, '0290622', '2022-10-05', '', '', '00:00:00', '14', '', '', '', '', '', '', ''),
(436, '0290622', '2022-10-07', '', '', '00:00:00', '14', '', '', '', '', '', '', ''),
(437, '0071117', '2022-09-28', '07:05', '18:04', '00:00:00', '', '-6.1792063,106.7124471', '-6.1791938,106.7124192', '854fe6aeffe0422cba87fe3cc4ecaf77.jpg', 'a13eac364304dfa2192d7b049cb7efe9.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(438, '0060217', '2022-09-28', '08:17', '20:34', '00:00:00', '', '-6.2057396,106.728762', '-6.2058091,106.7288913', 'e39aa2343d0466f2ed4de41cab7f6258.jpg', '0626afc628caad5c3e392d8601cf584b.jpg', '36.77.239.253', 'Handphone', 'Google Chrome'),
(439, '0050714', '2022-09-28', '08:18', '19:11', '00:00:00', '', '-6.2057449,106.7287718', '-6.2057389,106.7287622', '11a711cc1751f1bc40244cc173a1b5e6.jpg', '37cd97519633329fa41fd767c4ab2290.jpg', '36.77.239.253', 'Handphone', 'Google Chrome'),
(440, '0290622', '2022-09-28', '08:24', '', '00:00:00', '', '-6.2057608,106.728795', '', 'a67b6003571bcc33dc76f1f6767285c7.jpg', '', '180.243.14.90', 'Handphone', 'Google Chrome'),
(441, '0210322', '2022-09-28', '08:25', '19:13', '00:00:00', '', '-6.1792229,106.7124013', '-6.1792238,106.7123989', '30abb8befa884ae243f64d8a2a20249b.jpg', '750e6f0b7f3035099ab6d172c9293f4c.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(442, '0190320', '2022-09-28', '08:32', '18:11', '00:00:00', '', '-6.2386391,106.6804508', '-6.179162,106.7123348', 'f9eaaa45aece50ec9fdfff189580fbd8.jpg', '72735735790a9f216d838c954e8f97d1.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(443, '0200122', '2022-09-28', '08:39', '18:33', '00:00:00', '', '-6.1792019,106.7124272', '-6.1791301,106.7123542', 'd0985e4511b808e8e52705d44352f0a8.jpg', '3bb37e6d7c76e3f3dee9de797ef31c99.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(444, '0230722', '2022-09-28', '08:40', '18:05', '00:00:00', '', '-6.1791925,106.7124237', '-6.1791547,106.7123925', '1dfaa292cde71848db283d2901d22add.jpg', '12627e43559a54c752324e1ab0e052d9.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(445, '0300922', '2022-09-28', '08:47', '21:34', '00:00:00', '', '-6.2057395,106.7287635', '-6.1764031,106.7919114', 'c83a8bf3b62ef19f4957a83345081767.jpg', '9e8ad61a3a5f4cbdc211544dd14f6d7a.jpg', '114.124.149.186', 'Handphone', 'Google Chrome');
INSERT INTO `cassa_kehadiran` (`id`, `EmployeeID`, `tanggal`, `cek_in`, `cek_out`, `out`, `kategori_izin`, `lokasi`, `lokasi_cekout`, `foto`, `foto2`, `ip`, `perangkat`, `browser`) VALUES
(446, '0270822', '2022-09-28', '08:46', '18:02', '00:00:00', '', '-6.1791437,106.7124219', '-6.1791721,106.7123818', '33b9a8414f95c1fb5cf2ef0ef59784e3.jpg', '321c69d444ed9d82d2cc87ff2c147918.jpg', '182.3.38.96', 'Handphone', 'Google Chrome'),
(447, '0130918', '2022-09-28', '08:47', '21:14', '00:00:00', '', '-6.179195,106.7124204', '-6.193676,106.8223381', '1d5963b9f79023fe33bc67be366aa7cc.jpg', 'd70d387ecd86d113b536e181915a7adc.jpg', '140.213.9.16', 'Handphone', 'Google Chrome'),
(448, '015021', '2022-09-28', '08:47', '22:09', '00:00:00', '', '-6.1792015,106.712407', '-6.2117515,106.8212967', '460fbd06d2bbeb652a9288a1909eb621.jpg', 'ccddb089b6e6620e8ddb7fc65495a9df.jpg', '182.3.36.68', 'Handphone', 'Google Chrome'),
(449, '0110221', '2022-09-28', '08:51', '18:12', '00:00:00', '', '-6.178516153393031,106.71165341840427', '-6.1808438359268925,106.79140713941392', 'a2d20da376d1521a379cf3cac5df7a23.jpg', 'f09aaed060bc9a238480a23a0f0dc992.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(450, '0280122', '2022-09-28', '08:51', '21:31', '00:00:00', '', '-6.1791663,106.7124517', '-6.1764846,106.7918501', '2c95f1ffc124905a2b5e5551e887a2ea.jpg', '369437aa3ad345ff635de8b219a6cd99.jpg', '182.3.44.4', 'Handphone', 'Google Chrome'),
(451, '0031212', '2022-09-28', '08:53', '21:32', '00:00:00', '', '-6.2057386,106.7287602', '-6.1769039,106.7917341', 'fc183d8b8acbcdeb46cf7f7209877f04.jpg', 'd120f77fb98ab76944d264570ad96ac9.jpg', '182.2.171.197', 'Handphone', 'Google Chrome'),
(452, '0260822', '2022-09-28', '08:55', '23:00', '00:00:00', '', '-6.1791606,106.7123797', '-6.1791596,106.7123851', '650648720d17b6d138b42d78649d4730.jpg', 'f16a88fd0f3166ac51f7e12a38b98f17.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(453, '0190222', '2022-09-28', '08:55', '18:23', '00:00:00', '', '-6.1791715,106.7123807', '-6.1791681,106.7123847', 'ae795e0bd656c33ee05e6b7b3a7242b2.jpg', '7916068d3b2420675d6b447acd1b8759.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(454, '0180122', '2022-09-28', '08:56', '20:17', '00:00:00', '', '-6.1782749,106.7133838', '-6.1792046,106.7124199', '5e5b97705b084ec2728873422461a5fb.jpg', 'db07f4e57b54ad9467f0f215ee48e281.jpg', '140.213.2.218', 'Handphone', 'Google Chrome'),
(455, '0040817', '2022-09-28', '09:01', '', '00:00:00', '', '-6.191343362448915,106.74316322440909', '', '9ed0476936c9e6f1d7a81ff85cb684dd.jpg', '', '104.28.121.47', 'Handphone', 'Lainnya'),
(456, '0320922', '2022-09-28', '08:55', '18:32', '00:00:00', '', '-6.20574,106.7287635', '-6.2057423,106.7287699', '97f4aeb86a86d6982968c2b00664aff7.jpg', '58e59ad632e8c0450f16d08c6c113150.jpg', '114.10.69.66', 'Handphone', 'Google Chrome'),
(457, '015021', '2022-11-03', '', '', '00:00:00', '8', '', '', '', '', '', '', ''),
(458, '015021', '2022-11-04', '', '', '00:00:00', '8', '', '', '', '', '', '', ''),
(459, '0120820', '2022-09-28', '', '18:50', '00:00:00', '', '', '-6.1949665,106.6224793', '', '3fbb5e78ee5d1cb4a597b2890703a1b2.jpg', '182.3.42.38', 'Handphone', 'Google Chrome'),
(460, '0080521', '2022-09-28', '23:07', '23:08', '00:00:00', '', '-6.1791652,106.7124025', '-6.1791579,106.7123801', '1dedac7c8135f2c7cb8a65e00182cb9b.jpg', 'f018a8fbf3c927c4e66d7c3286e35ae5.jpg', '182.2.134.69', 'Handphone', 'Google Chrome'),
(461, '0071117', '2022-09-29', '07:13', '21:17', '00:00:00', '', '-6.1792121,106.7124179', '-6.179207,106.712417', '412dd12ec3f1721b0ca9a597ac377637.jpg', 'ed9fa77fdabeda5457af42e635c93c0b.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(462, '0290622', '2022-09-29', '08:22', '', '00:00:00', '', '-6.2057388,106.728762', '', '9d6b20bb9433000f6ffe59a666df4ac4.jpg', '', '36.77.239.253', 'Handphone', 'Google Chrome'),
(463, '0210322', '2022-09-29', '08:27', '18:43', '00:00:00', '', '-6.1791978,106.7124114', '-6.1791569,106.7124057', '66111540202dd7baf3f5d5b44c868c3a.jpg', '50efbae4cf3cef8010613b2ff987f9d9.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(464, '015021', '2022-09-29', '08:35', '21:38', '00:00:00', '', '-6.17922,106.7123992', '-6.2117938,106.8213287', 'cb6b05940fdf3da030c590db9cf4066a.jpg', 'f0f088dc9d660131095c25b1d4b0df4b.jpg', '140.213.35.134', 'Handphone', 'Google Chrome'),
(465, '0060217', '2022-09-29', '08:36', '23:06', '00:00:00', '', '-6.2057384,106.7287619', '-6.2057426,106.7287636', '42202cd5101ca32b680c7efb86001567.jpg', '25930548f1af367f34597f5359c1b7ab.jpg', '36.77.239.253', 'Handphone', 'Google Chrome'),
(466, '0200122', '2022-09-29', '08:36', '18:08', '00:00:00', '', '-6.1792109,106.7124026', '-6.1792062,106.7124007', 'cd2a7557ed80aa658639abbb9b103c59.jpg', 'a5f7811b0c56c59d4142c8e19ea8502d.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(467, '0300922', '2022-09-29', '08:42', '21:22', '00:00:00', '', '-6.1377511,106.7876621', '-6.1768346,106.7917407', 'bf19c528bc52154b04b0fcb7e3b3d831.jpg', '5485715783637c702c412b2eb4a494d1.jpg', '182.0.202.178', 'Handphone', 'Google Chrome'),
(468, '0130918', '2022-09-29', '08:44', '00:13', '00:00:00', '', '-6.2057424,106.7287622', '-6.2117819,106.8218188', '1418113f9055e05994a75a220f1d88dd.jpg', '3ea1c5e769a86f12e5655c2f08c37533.jpg', '140.213.15.3', 'Handphone', 'Google Chrome'),
(469, '0190320', '2022-09-29', '08:48', '18:13', '00:00:00', '', '-6.1792096,106.7124105', '-6.1792164,106.7122146', '840e66f77bfc9b6e2879c23e28a14dbb.jpg', '26e61c91218a3a83fa2241b4c60c3aa3.jpg', '114.124.208.213', 'Handphone', 'Google Chrome'),
(470, '0270822', '2022-09-29', '08:48', '18:01', '00:00:00', '', '-6.1792096,106.7123942', '-6.1791648,106.7124675', 'cd8707709b78b52ba7922657dce50394.jpg', 'd88bde63a3b5008a3ad10fbeed9109a0.jpg', '182.3.38.241', 'Handphone', 'Google Chrome'),
(471, '0280122', '2022-09-29', '08:49', '21:19', '00:00:00', '', '-6.2056683,106.728855', '-6.176894,106.7917144', 'fd4213b23191a6850d44c72ec275169d.jpg', '2e42cfd1cb40474a732a994d7ad15b48.jpg', '182.2.166.73', 'Handphone', 'Google Chrome'),
(472, '0050714', '2022-09-29', '08:49', '19:24', '00:00:00', '', '-6.198431,106.7375873', '-6.2057393,106.7287648', '708882bba433e48afe19f9e02072d1b4.jpg', '28d005c8e9abf53042e51f497d8a41d9.jpg', '36.77.239.253', 'Handphone', 'Google Chrome'),
(473, '0120820', '2022-09-29', '08:50', '', '00:00:00', '', '-6.1854861,106.642681', '', '4cb65d0a12df50035f87f6af5f0f6891.jpg', '', '182.3.42.131', 'Handphone', 'Google Chrome'),
(474, '0031212', '2022-09-29', '08:50', '21:19', '00:00:00', '', '-6.2057412,106.7287622', '-6.1764261,106.7918994', '388b324554eeb060ec234443b5f8fbc3.jpg', '6d3c3645229b8aeecd9accc9ea65e0ed.jpg', '114.124.247.185', 'Handphone', 'Google Chrome'),
(475, '0230722', '2022-09-29', '08:52', '18:05', '00:00:00', '', '-6.179168,106.7124041', '-6.1791668,106.7123942', '51c55c5fa3f923201fa0d271ac4b88e6.jpg', 'a608a9540005c1b118125ea02fdce995.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(476, '0110221', '2022-09-29', '08:53', '20:00', '00:00:00', '', '-6.179119130877123,106.71230044250018', '-6.179119130877123,106.71230044250018', 'e1a94519216b24d88aebfed3b66deabc.jpg', '56ad860fec4613cd7ad58b2eb11e6d05.jpg', '104.28.121.67', 'Handphone', 'Lainnya'),
(477, '0260822', '2022-09-29', '08:53', '21:01', '00:00:00', '', '-6.1791718,106.7123956', '-6.1791725,106.7123922', 'c2a9449f51087db3f80967e254bdfda2.jpg', '9200f1e196b3ae83a7823f7dfe7ad361.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(478, '0320922', '2022-09-29', '08:55', '18:52', '00:00:00', '', '-6.2057414,106.7287651', '-6.2057395,106.7287648', 'f9037670f2a252bcbf62e15030c042dc.jpg', '25519b382c39b8a079c018bfe7ac3eff.jpg', '36.77.239.253', 'Handphone', 'Google Chrome'),
(479, '0180122', '2022-09-29', '08:57', '20:32', '00:00:00', '', '-6.1790317,106.7123717', '-6.1792114,106.7123889', 'db2393985d8ba45efea77760c689b9be.jpg', 'a3df6f16bcffd6b8b7b7255e6c0990a7.jpg', '112.215.65.95', 'Handphone', 'Google Chrome'),
(480, '0190222', '2022-09-29', '09:03', '18:11', '00:00:00', '', '-6.1791707,106.7123976', '-6.1791744,106.7123946', 'e4b915172d5fb6edc67da0528700e38b.jpg', 'a34a94e4bace5b66cd797caa98bae3c3.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(481, '0040817', '2022-09-29', '', '09:41', '00:00:00', '', '', '-6.179210037536875,106.71233076255932', '', 'f1ad8476b8fce30df05cb7d623533b17.jpg', '146.75.160.29', 'Handphone', 'Lainnya'),
(482, '0080521', '2022-09-29', '11:10', '21:18', '00:00:00', '', '-6.1791709,106.7123919', '-6.1782748,106.7125913', '2897e01c412fc461156138717239bcca.jpg', '8a4abbf8e64d0b4c5e1ac0584f3acd98.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(483, '0100220', '2022-09-29', '', '', '11:00:00', '15', '', '', '', '', '', '', ''),
(485, '0071117', '2022-09-30', '07:05', '18:09', '00:00:00', '', '-6.1792082,106.712405', '-6.1873444,106.7394967', '243c097c96edfa975c75ddb9b548b79c.jpg', 'e8b748fb4ba4be53221a712d6b6e841c.jpg', '114.124.150.17', 'Handphone', 'Google Chrome'),
(486, '0050714', '2022-09-30', '08:10', '17:41', '00:00:00', '', '-6.20574,106.728765', '-6.2057336,106.7287634', '16cb4cf0f85828f1096bd71867062ce4.jpg', 'b198f0346d515cd70e95598ff9b12789.jpg', '36.77.239.253', 'Handphone', 'Google Chrome'),
(487, '0060217', '2022-09-30', '08:10', '23:14', '00:00:00', '', '-6.2057349,106.7287678', '-6.2057559,106.7287738', '233317b97e8f8f38969beeb2e407c15f.jpg', '2980336ca4f72b104bbd0df1be099188.jpg', '180.243.14.155', 'Handphone', 'Google Chrome'),
(488, '0290622', '2022-09-30', '08:27', '', '00:00:00', '', '-6.2057404,106.7287647', '', '5cdce8e103a59970eb1a51bb2709eed2.jpg', '', '36.77.239.253', 'Handphone', 'Google Chrome'),
(489, '0300922', '2022-09-30', '08:34', '17:26', '00:00:00', '', '-6.1382333,106.7870512', '-6.2057312,106.7287633', 'ed57e07a2e506fbdfbd665bf4f8e3249.jpg', '12a4f26edd2329d71a81e4e3f6e047da.jpg', '114.124.205.38', 'Handphone', 'Google Chrome'),
(490, '015021', '2022-09-30', '08:33', '21:59', '00:00:00', '', '-6.179213,106.7124002', '-6.21177,106.82123500000002', 'f66f84060afe28ed052496f3b1b4bb5a.jpg', 'a1a62c13c302c9253888623599939971.jpg', '114.124.173.205', 'Handphone', 'Google Chrome'),
(491, '0210322', '2022-09-30', '08:37', '', '00:00:00', '', '-6.1792126,106.7124012', '', '0d7bfc467cda2b7507b5e8d6a643bbff.jpg', '', '140.213.128.45', 'Handphone', 'Google Chrome'),
(492, '0120820', '2022-09-30', '08:38', '', '00:00:00', '', '-6.2020418,106.635417', '', 'fc82b6997efc4a1944d3b6d76dc3f533.jpg', '', '182.3.43.140', 'Handphone', 'Google Chrome'),
(493, '0031212', '2022-09-30', '08:43', '17:43', '00:00:00', '', '-6.2057415,106.7287634', '-6.205741,106.7287762', '900def73d307ca2265a1f63d154059fd.jpg', '864b3b1766be5e6ac16eb02eccd0a301.jpg', '114.124.240.6', 'Handphone', 'Google Chrome'),
(494, '0110221', '2022-09-30', '08:46', '18:07', '00:00:00', '', '-6.179119130877123,106.71230044250018', '-6.187125497519968,106.73966076256072', '81dd94c391542cc68ac40cfdb30a28df.jpg', 'af90d15e9f641d469fddf2d6992c4471.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(495, '0270822', '2022-09-30', '08:46', '18:01', '00:00:00', '', '-6.1791786,106.7124828', '-6.179169,106.7124909', 'c16d89cd21c98a1929103ae4abaa3499.jpg', '9207a5c898867ab37534c47d5e6d078a.jpg', '182.3.36.240', 'Handphone', 'Google Chrome'),
(496, '0200122', '2022-09-30', '08:49', '', '00:00:00', '', '-6.1792103,106.7124058', '', 'e5c59b5aaef8e9fb3f83d841f305f45c.jpg', '', '180.243.7.26', 'Handphone', 'Google Chrome'),
(497, '0230722', '2022-09-30', '08:53', '', '00:00:00', '', '-6.1791746,106.7123947', '', 'f47279c00413d56d1c56d6a68c9a7a3d.jpg', '', '180.243.7.26', 'Handphone', 'Google Chrome'),
(498, '0260822', '2022-09-30', '08:54', '', '00:00:00', '', '-6.1791759,106.7123904', '', '2d182f78cabe9b1c74af42f426b39e34.jpg', '', '180.243.7.26', 'Handphone', 'Google Chrome'),
(499, '0190320', '2022-09-30', '08:55', '18:08', '00:00:00', '', '-6.1791699,106.7124526', '-6.1873457,106.7394962', '696b6fd32b3d9d4d5d3cb2ff01f46573.jpg', 'ebdef89cb7fc0e5e568b55b2e2dfa973.jpg', '182.0.197.223', 'Handphone', 'Google Chrome'),
(500, '0280122', '2022-09-30', '08:57', '18:35', '00:00:00', '', '-6.2057404,106.7287688', '-6.1765249,106.7917999', '9af166e13a7c3c4c78915b6410258287.jpg', '7eabfcf8295ba9fce1605ecb60133169.jpg', '182.3.43.3', 'Handphone', 'Google Chrome'),
(501, '0180122', '2022-09-30', '08:59', '21:02', '00:00:00', '', '-6.1584452,106.716702', '-6.1894336,106.7428146', '56779858fca274b6b90d85185ec3a46c.jpg', '9ee5060284d11b94fbf23c38932e475c.jpg', '140.213.132.243', 'Handphone', 'Google Chrome'),
(502, '0130918', '2022-09-30', '08:59', '23:34', '00:00:00', '', '-6.1792049,106.7124297', '-6.1928212,106.8226118', '0260f023b38902db917f16eb84597706.jpg', '7250056037bfad1eca641c340253cc85.jpg', '140.213.140.145', 'Handphone', 'Google Chrome'),
(503, '0190222', '2022-09-30', '09:03', '18:01', '00:00:00', '', '-6.1791697,106.7123941', '-6.1791427,106.7128042', 'ec5b2359425879851e9134103f215be8.jpg', '259611942e5ec78f01398e8025c9cd49.jpg', '180.243.7.26', 'Handphone', 'Google Chrome'),
(504, '0100220', '2022-09-30', '09:09', '', '00:00:00', '15', '-6.1792023,106.7123921', '', '0f90bac3c97acf560197cee170914f09.jpg', '', '114.4.212.15', 'Handphone', 'Google Chrome'),
(505, '0320922', '2022-09-30', '08:57', '17:44', '00:00:00', '', '-6.2057128,106.7287725', '-6.2057984,106.7288348', 'abf6af3c5b6bab68e59d64b36505b53c.jpg', 'cd45d77a0d7ebed59a926eb6353a9aec.jpg', '36.77.239.253', 'Handphone', 'Google Chrome'),
(506, '0080521', '2022-09-30', '11:08', '18:09', '00:00:00', '', '-6.1791725,106.7123905', '-6.1873673,106.739488', 'd4a7389fda76f214bb6b4aa7e7aed266.jpg', '4a1e03e6c0474c773687c78bf1aa5498.jpg', '114.124.150.17', 'Handphone', 'Google Chrome'),
(507, '015021', '2022-10-01', '', '18:26', '00:00:00', '', '', '-6.2117901,106.8213119', '', '5271f48d6b0ed9578b0dd66f79a9b6e3.jpg', '140.213.5.250', 'Handphone', 'Google Chrome'),
(508, '0050714', '2022-10-03', '08:05', '18:13', '00:00:00', '', '-6.2057404,106.7287652', '-6.2057408,106.7287652', '7836341e270299f01e8f88de219c8c07.jpg', 'fd0f7b303cb1092f04cd67a69d06741f.jpg', '180.243.14.155', 'Handphone', 'Google Chrome'),
(509, '0060217', '2022-10-03', '08:17', '23:31', '00:00:00', '', '-6.2057386,106.728764', '-6.2057386,106.7287643', '170b96474af8416ace68c59090089739.jpg', 'd58c1cf5288cffaa629d71116f66dfce.jpg', '180.243.14.155', 'Handphone', 'Google Chrome'),
(510, '0290622', '2022-10-03', '08:20', '', '00:00:00', '', '-6.2057406,106.7287671', '', 'e518772898273cda37f39b806c63608f.jpg', '', '180.243.14.155', 'Handphone', 'Google Chrome'),
(511, '015021', '2022-10-03', '08:21', '22:54', '00:00:00', '', '-6.1792257,106.7123344', '-6.2117911,106.8213226', '2ffcd6cd8299dd3a03a045e60b258917.jpg', '447f45cae405c2f60b1f29057eb9f8ce.jpg', '182.2.133.254', 'Handphone', 'Google Chrome'),
(512, '0210322', '2022-10-03', '08:23', '20:26', '00:00:00', '', '-6.1792214,106.7124492', '-6.1791611,106.7124041', '4f8a8027a8c693ea90791f355b8cd0d5.jpg', 'a2ee4643fa950a559cce811c1511c987.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(513, '0300922', '2022-10-03', '08:39', '17:16', '00:00:00', '', '-6.2835086,106.75595641', '-6.1924803,106.7401522', '5e778d12277d86c95d9a1c41177d67c4.jpg', 'd3ca9a733f00c4f6095421b649277b2a.jpg', '118.136.172.138', 'Handphone', 'Google Chrome'),
(514, '0110221', '2022-10-03', '08:46', '', '00:00:00', '', '-6.184381250523165,106.70738155141338', '', 'b72cb802d7f757bf9f5ac71d3ce1900b.jpg', '', '172.225.181.66', 'Handphone', 'Lainnya'),
(515, '0200122', '2022-10-03', '08:46', '18:13', '00:00:00', '', '-6.1792095,106.7124044', '-6.179166,106.7123987', '24f2f495f07f11733d06bf779e978ea7.jpg', 'ce6befcb88374c576c2a67f2932dfc11.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(516, '0270822', '2022-10-03', '08:48', '18:00', '00:00:00', '', '-6.1791465,106.7123539', '-6.1791616,106.7123973', '970c5ab924a74748e7105e3ef39a99b3.jpg', '114bb33ed85331356b843010b3b616bb.jpg', '182.3.40.20', 'Handphone', 'Google Chrome'),
(517, '0230722', '2022-10-03', '08:48', '18:22', '00:00:00', '', '-6.1792087,106.7124124', '-6.1792111,106.7123997', '28111e646e39e8fcfd5919d800057f46.jpg', '679bf8570cbd33a1a1c7a0ebd1497984.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(518, '0031212', '2022-10-03', '08:53', '17:13', '00:00:00', '', '-6.2057389,106.7287647', '-6.1924824,106.7401547', '929d58037fdb1b7a990c55cddbc8ea0a.jpg', '40be8d118eedd3ebab9b045997c297d1.jpg', '182.3.43.171', 'Handphone', 'Google Chrome'),
(519, '0120820', '2022-10-03', '08:53', '18:20', '00:00:00', '', '-6.1843211,106.7047194', '-6.1791729,106.7123924', 'dfd77c14270e541401609e90cdd89b6c.jpg', 'cd32eb5d141a677a4780642f418072d5.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(520, '0260822', '2022-10-03', '08:54', '18:09', '00:00:00', '', '-6.1785172,106.7117138', '-6.1791743,106.7123947', '4a09971e3ea5bf63e2e8bd73278fb797.jpg', '083e0a6ed07f735253f2a8ae179b07c6.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(521, '0280122', '2022-10-03', '08:57', '', '00:00:00', '', '-6.1791922,106.7123884', '', '42cc556555a716858d6d1fdc772ba012.jpg', '', '182.3.46.2', 'Handphone', 'Google Chrome'),
(522, '0130918', '2022-10-03', '08:59', '00:14', '00:00:00', '', '-6.1791834,106.7124005', '-6.2423321,106.7979149', '271012391c748fb919eeacd7935e0dc3.jpg', '7d70c8049e32135f547616d678e73635.jpg', '140.213.130.236', 'Handphone', 'Google Chrome'),
(523, '0190320', '2022-10-03', '09:00', '18:04', '00:00:00', '', '-6.1792019,106.7124134', '-6.1790493,106.7122824', '52475e2d1f31036a6c245685df64ab72.jpg', '02d37e3e52781f10f97342877641f907.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(524, '0180122', '2022-10-03', '09:01', '20:08', '00:00:00', '', '-6.180557,106.7111171', '-6.179165,106.7125232', '4f8c3cf7d1d0457bda7bc70739641486.jpg', '8df21d43396cc02f3762290ae00b8ae9.jpg', '140.213.9.40', 'Handphone', 'Google Chrome'),
(525, '0190222', '2022-10-03', '09:09', '18:11', '00:00:00', '', '-6.1792061,106.7124041', '-6.1791643,106.7125006', '4e8d088c281907522179a916eb4ba18a.jpg', '97a552f3187bd1d1eb8b2e0743dc52a5.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(526, '0320922', '2022-10-03', '08:54', '', '00:00:00', '', '-6.2057393,106.7287648', '', 'c8126806e48a7cf12248ce4ea26e601f.jpg', '', '180.243.14.155', 'Handphone', 'Google Chrome'),
(527, '0071117', '2022-10-03', '', '', '00:00:00', '14', '', '', '', '', '', '', ''),
(528, '0100220', '2022-10-03', '', '', '00:00:00', '8', '', '', '', '', '', '', ''),
(529, '0080521', '2022-10-03', '21:05', '21:06', '00:00:00', '', '-6.1791663,106.7123847', '-6.1791653,106.7123869', 'cc2a88987b45e296c20078354d1dd93b.jpg', '19244cd4c8c82456a3ca3cdc45b3b432.jpg', '182.0.175.88', 'Handphone', 'Google Chrome'),
(530, '0050714', '2022-10-04', '08:13', '', '00:00:00', '', '-6.2057423,106.7287646', '', '10022e5497e6a2433e3aa722871c36b9.jpg', '', '180.243.14.155', 'Handphone', 'Google Chrome'),
(531, '0060217', '2022-10-04', '08:27', '22:28', '00:00:00', '', '-6.2057457,106.7287732', '-6.2057404,106.7287652', 'c2cecf154832f4f6cee52c67f0071b0f.jpg', '0081c93026dae35b425c36787348206d.jpg', '180.243.14.155', 'Handphone', 'Google Chrome'),
(532, '0300922', '2022-10-04', '08:30', '17:12', '00:00:00', '', '-6.1377534,106.7876516', '-6.2057385,106.7287643', '30a4729f9686e0480f59e5c4f2d51259.jpg', '56e22c149e7a2d0cb958ddab611900a9.jpg', '182.3.47.22', 'Handphone', 'Google Chrome'),
(533, '0290622', '2022-10-04', '08:37', '', '00:00:00', '', '-6.2057301,106.7287691', '', '8aa22a40cbbb1c2f29e5a19ce4014456.jpg', '', '180.243.14.155', 'Handphone', 'Google Chrome'),
(534, '0270822', '2022-10-04', '08:42', '18:01', '00:00:00', '', '-6.1792144,106.7123989', '-6.1791694,106.712397', '76445640cc0a98ce943636c273f34ba7.jpg', 'f883fe7174ac184b7cf8d1ef75d22d9c.jpg', '182.2.168.203', 'Handphone', 'Google Chrome'),
(535, '0210322', '2022-10-04', '08:43', '22:42', '00:00:00', '', '-6.1791993,106.712425', '-6.1791581,106.7124028', 'dd962d377dc6e168d98c7d532a4663f1.jpg', '8dbf3cd85354c672b9525b065b9a3104.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(536, '0280122', '2022-10-04', '08:46', '18:11', '00:00:00', '', '-6.2057256,106.728767', '-6.1766186,106.7919212', '24d05c2d83ba28b2981c7a060a3897e2.jpg', '6e57399e2bf86fe1800594e737fea546.jpg', '114.124.180.230', 'Handphone', 'Google Chrome'),
(537, '0230722', '2022-10-04', '08:49', '18:10', '00:00:00', '', '-6.1791609,106.7123978', '-6.1792201,106.7124836', '3eb0a6386fc8a92803dde16d40a6e3d6.jpg', '30fff19cc23e2332f50a30b124b62335.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(538, '015021', '2022-10-04', '08:49', '23:15', '00:00:00', '', '-6.1806014,106.7130643', '-6.1777033,106.711865', 'a90c87993a096786e92d63bf72822871.jpg', '448ec6281af7941bb906103e0250aba8.jpg', '114.124.140.187', 'Handphone', 'Google Chrome'),
(539, '0130918', '2022-10-04', '08:50', '23:55', '00:00:00', '', '-6.205736,106.7287598', '-6.1987666,106.7409691', '29571361c75fef61b9b63d7db406b803.jpg', 'e17a69cfe725e3af3e0f61d5bf24601b.jpg', '140.213.33.229', 'Handphone', 'Google Chrome'),
(540, '0031212', '2022-10-04', '08:53', '17:25', '00:00:00', '', '-6.2057426,106.7287641', '-6.1768754,106.7923965', 'ccb7e3dd394f75bd5d91942eab3fc4e2.jpg', '649fc4a7b95052acf65d186107a42002.jpg', '114.124.182.8', 'Handphone', 'Google Chrome'),
(541, '0260822', '2022-10-04', '08:54', '18:11', '00:00:00', '', '-6.1791739,106.7123905', '-6.1791705,106.7123925', '7ea309763acc4815e5f5ef1e97bb43b5.jpg', '4f53e37131641d18a832680ef2663cb8.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(542, '0120820', '2022-10-04', '08:56', '18:01', '00:00:00', '', '-6.189034,106.6974744', '-6.1792565,106.7115294', 'cf343df20a05970d3da7f0b099197add.jpg', '401c7b1bd774187481233ae5974e198c.jpg', '182.3.44.253', 'Handphone', 'Google Chrome'),
(543, '0190320', '2022-10-04', '08:59', '18:08', '00:00:00', '', '-6.1792089,106.712414', '-6.1791533,106.7122863', '885b23ff3132ebc096a6f3e3e5e8935e.jpg', '29a55407f5e8a7b7b0fc4ce7383d934a.jpg', '182.3.40.113', 'Handphone', 'Google Chrome'),
(544, '0320922', '2022-10-04', '09:08', '18:54', '00:00:00', '', '-6.2057426,106.7287641', '-6.20574,106.728765', 'd1c3263a892a94cea57d44bd30378c7b.jpg', '053af2a2c43826c1b6412db53a42d9bd.jpg', '180.243.14.155', 'Handphone', 'Google Chrome'),
(545, '0190222', '2022-10-04', '09:10', '18:23', '00:00:00', '', '-6.1791684,106.7123886', '-6.179157,106.7125034', '7a3502e5fb5bfea65ad760bc09508430.jpg', '9ffa4306f40e6b8f5b839e76718ad16f.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(546, '0100220', '2022-10-04', '09:30', '18:00', '00:00:00', '', '-6.1791391,106.7123553', '-6.1791693,106.7123883', '9a8a182b1546ffa271fccb4e2a098cfd.jpg', '5354b12348816f4bbb8f1fa331d37920.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(547, '0180122', '2022-10-04', '11:27', '18:26', '00:00:00', '', '-6.1791665,106.7123973', '-6.1792084,106.7123953', 'e229218972e9bd02450d5a67b7674ced.jpg', 'd84d91405181e781f86987f7d6cb4008.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(548, '0071117', '2022-10-04', '', '', '00:00:00', '14', '', '', '', '', '', '', ''),
(549, '0200122', '2022-10-04', '', '', '00:00:00', '14', '', '', '', '', '', '', ''),
(550, '0080521', '2022-10-04', '19:01', '23:07', '00:00:00', '', '-6.1791709,106.7124437', '-6.1791623,106.7123674', '773665c2b9f924bd837a0a654ef03571.jpg', 'ea7a4d248f0a4f7e9162aaafc5ae37d5.jpg', '182.0.145.185', 'Handphone', 'Google Chrome'),
(551, '0071117', '2022-10-05', '07:08', '18:04', '00:00:00', '', '-6.1791978,106.7123855', '-6.1792161,106.7124259', '9b1add1d358c15f5bc16b76ce7f32c50.jpg', 'e67d4a66f004e267203da92e53b3f541.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(552, '0050714', '2022-10-05', '08:06', '17:44', '00:00:00', '', '-6.2057426,106.728766', '-6.205739,106.7287648', '4ffabd46e1162a177fbaf7f2d5a24cab.jpg', 'ac917df399a3e74363c7591572d59394.jpg', '180.243.14.155', 'Handphone', 'Google Chrome'),
(553, '0060217', '2022-10-05', '08:21', '21:48', '00:00:00', '', '-6.2057386,106.7287645', '-6.205739,106.7287636', '6b6f370d633299ed8365bbcb0b5692a9.jpg', 'b7d19c1163b12e396cd14d6430f7d85a.jpg', '180.243.14.155', 'Handphone', 'Google Chrome'),
(554, '0320922', '2022-10-05', '08:30', '23:15', '00:00:00', '', '-6.2057385,106.7287641', '-6.2057393,106.7287648', '504c04ef2f4eb31b6ced2292538ebd54.jpg', '887195e81c1c481371fcefc6362b43ed.jpg', '114.4.213.234', 'Handphone', 'Google Chrome'),
(555, '0200122', '2022-10-05', '08:36', '18:06', '00:00:00', '', '-6.1792126,106.7124046', '-6.179171,106.7123932', '7b7b4b9fa622853598f277efe316f6db.jpg', '1f0ebbb7baf0fcabefc22ffde7dc658a.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(556, '0300922', '2022-10-05', '08:41', '17:14', '00:00:00', '', '-6.1362665,106.786069', '-6.2057385,106.7287643', '87d97ff1bfd5b43678b9bbfe0afac4d7.jpg', '2f2125cdc4792d18b14d136177bf37ff.jpg', '182.3.38.1', 'Handphone', 'Google Chrome'),
(557, '0031212', '2022-10-05', '08:48', '17:24', '00:00:00', '', '-6.2057426,106.7287666', '-6.2057157,106.7287823', '9640cb00bb880d6eb0d3a1813eb57bd0.jpg', '21bc0d6e3fc18af3c50220089be82851.jpg', '180.243.14.155', 'Handphone', 'Google Chrome'),
(558, '0190320', '2022-10-05', '08:49', '18:09', '00:00:00', '', '-6.179165,106.7123894', '-6.1791242,106.7122482', 'a701c8ef948d564d804b2dc35d01232f.jpg', '1724556c566dc96aa4ef3c01b53c2655.jpg', '182.0.142.253', 'Handphone', 'Google Chrome'),
(559, '015021', '2022-10-05', '08:50', '21:59', '00:00:00', '', '-6.1791719,106.7123895', '-6.2117889,106.8213114', 'f747d9e61df9c202e58492e3e6c6679b.jpg', 'a8dbfd06380f40b75f6233a2e0f9b6d8.jpg', '182.0.209.208', 'Handphone', 'Google Chrome'),
(560, '0270822', '2022-10-05', '08:50', '16:27', '16:30:00', '10', '-6.1792169,106.7124006', '-6.1791647,106.7123993', 'd7f236455b162743c4ff48c8369fe64c.jpg', '1f1901432c38983d293a3b26cfa5e2ba.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(561, '0260822', '2022-10-05', '08:51', '18:10', '00:00:00', '', '-6.1792099,106.7124098', '-6.179165,106.7123944', 'f09fa2485760a0f62726e21a3d2902ce.jpg', '3e8fbe1b92ba13954fb65110383130e0.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(562, '0120820', '2022-10-05', '08:55', '18:09', '00:00:00', '', '-6.1792188,106.7123998', '-6.1790862,106.7123807', 'e35239044019fd8ffa2cb2fd2e623782.jpg', '2b94d471c6f3c598e90f94e13f3d6f39.jpg', '182.0.210.16', 'Handphone', 'Google Chrome'),
(563, '0210322', '2022-10-05', '08:58', '20:47', '00:00:00', '', '-6.1791575,106.7124059', '-6.1791603,106.7123956', '9198d4a1b9e63234cd0396456580cc7a.jpg', '7ece91035eedc6261a10276dbbd62ae4.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(564, '0280122', '2022-10-05', '08:58', '22:47', '00:00:00', '', '-6.1792131,106.7124', '-6.1767866,106.791724', '95fe5256b6dc8bbf39f84485c3155bc9.jpg', 'e7ebe259c61b022699f4c9cd87331262.jpg', '182.3.36.74', 'Handphone', 'Google Chrome'),
(565, '0130918', '2022-10-05', '09:02', '21:43', '00:00:00', '', '-6.2057393,106.7287648', '-6.2180912,106.817162', '50d128380cb16c12063f8aa9dde32b61.jpg', 'f13750e344f0a5c0a5ebce539a81b33e.jpg', '140.213.140.107', 'Handphone', 'Google Chrome'),
(566, '0180122', '2022-10-05', '09:08', '18:41', '00:00:00', '', '-6.1791712,106.7123979', '-6.1791708,106.7123975', 'b2c671be4beb3cf86ad8029ab9a9d6aa.jpg', 'f52983f0d5920e45439ab2914beffc3a.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(567, '0190222', '2022-10-05', '09:08', '18:16', '00:00:00', '', '-6.1791729,106.7123941', '-6.179171,106.7123924', 'e50044a56248c56bd210e159d861c1af.jpg', '217b94d1f95a38b0c6e380c6372508c3.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(568, '0100220', '2022-10-05', '09:09', '', '00:00:00', '15', '-6.1950581,106.7014228', '', '0b9f59e19ec787c0755567910816713b.jpg', '', '114.10.30.62', 'Handphone', 'Google Chrome'),
(569, '0080521', '2022-10-05', '09:10', '21:33', '00:00:00', '', '-6.1792205,106.7124412', '-6.1792164,106.7123963', '0b5303e5e0f81462c29437a1b151b4c0.jpg', '7a6ed8751bf6d7ff8c05135c92c65344.jpg', '182.3.42.154', 'Handphone', 'Google Chrome'),
(570, '0230722', '2022-10-05', '10:19', '18:08', '10:05:00', '11', '-6.1791674,106.7123971', '-6.1791704,106.7123982', '4f27fc60adbbaf89df98a9054177889e.jpg', 'e7cf0c190935f4186c3a48f6e71b3bfe.jpg', '180.243.3.80', 'Handphone', 'Google Chrome'),
(571, '0060217', '2022-10-06', '08:13', '22:55', '00:00:00', '', '-6.2057422,106.7287739', '-6.2057449,106.7287643', '71f16c80d5869128df80ba0166d78684.jpg', 'ada41ac0b92ddd2b3eb98481803914ed.jpg', '110.136.52.26', 'Handphone', 'Google Chrome'),
(572, '0050714', '2022-10-06', '08:13', '', '00:00:00', '', '-6.2057404,106.7287652', '', 'd489bb32fcd74d4e678d7be5e08e0c0c.jpg', '', '110.136.52.26', 'Handphone', 'Google Chrome'),
(573, '0071117', '2022-10-06', '08:27', '18:07', '00:00:00', '', '-6.1792018,106.7124175', '-6.1791804,106.7124241', '6ffcd80ceed9167e28b61be2cf000577.jpg', '98dc3788b0272e591bada8459bb51d12.jpg', '180.243.13.119', 'Handphone', 'Google Chrome'),
(574, '0300922', '2022-10-06', '08:31', '17:17', '00:00:00', '', '-6.1363316,106.7866825', '-6.268042,106.7630611', '3a0e26b44da3ab3266f7c99eb6824ff4.jpg', '1238bbbf286d46b996fbe4fb5159a6ca.jpg', '182.2.135.154', 'Handphone', 'Google Chrome'),
(575, '015021', '2022-10-06', '08:40', '00:14', '00:00:00', '', '-6.1792113,106.7123939', '-6.2117785,106.8213129', '7487611c6299c4212af56371837760b7.jpg', '2fbbc9090128e4cc728ce1bdca7d30e1.jpg', '114.124.245.28', 'Handphone', 'Google Chrome'),
(576, '0200122', '2022-10-06', '08:43', '16:14', '00:00:00', '', '-6.179211,106.7124055', '-6.179178,106.7124158', '0c5147155468a04ce9d1277615bf2f50.jpg', 'dfa1cc50f6dbdd51a973c1a5ae450d68.jpg', '180.243.13.119', 'Handphone', 'Google Chrome'),
(577, '0210322', '2022-10-06', '08:44', '20:36', '00:00:00', '', '-6.1792083,106.7124289', '-6.179214,106.7124311', '90210e44458ad35173a43c6845812801.jpg', '9a927a9dd87af81639ee532520730af6.jpg', '140.213.128.178', 'Handphone', 'Google Chrome'),
(578, '0270822', '2022-10-06', '08:45', '18:01', '00:00:00', '', '-6.1791812,106.71237', '-6.1791568,106.712492', 'dd2e34f365b6385c05645baf27c014a8.jpg', '4ac13d6810fdfe7609aca522934ed6e1.jpg', '180.243.13.119', 'Handphone', 'Google Chrome'),
(579, '0031212', '2022-10-06', '08:48', '18:40', '00:00:00', '', '-6.2057416,106.7287666', '-6.2057485,106.7287674', 'c4e1f0b3f999369f32c304243cc925bb.jpg', '39d076b7808d69e98eaca0227ab6dadd.jpg', '110.136.52.26', 'Handphone', 'Google Chrome'),
(580, '0260822', '2022-10-06', '08:50', '21:13', '00:00:00', '', '-6.1791575,106.7124098', '-6.1791999,106.712442', '89f844e376772ef94cbb1bdece39ea9a.jpg', 'c32d53da178e7acef49e1764e7ce13cb.jpg', '180.243.13.119', 'Handphone', 'Google Chrome'),
(581, '0120820', '2022-10-06', '08:53', '', '00:00:00', '', '-6.1846668,106.7042899', '', 'acec6dd31214c238339ffbf5fe334e37.jpg', '', '114.124.214.82', 'Handphone', 'Google Chrome'),
(582, '0110221', '2022-10-06', '08:55', '18:01', '00:00:00', '', '-6.17911678657635,106.71230860018292', '-6.17911678657635,106.71230860018292', '43547509bce62718968e6ec78a30d740.jpg', 'c7c3af117b992dd10f4093e60fa00188.jpg', '104.28.121.71', 'Handphone', 'Lainnya'),
(583, '0130918', '2022-10-06', '08:58', '18:38', '00:00:00', '', '-6.1791109,106.7124109', '-6.2057401,106.7287699', '3701f06318e28a56394357cbab98faf6.jpg', '7edef30f2bda4ecb5d388d7907d3587c.jpg', '110.136.52.26', 'Handphone', 'Google Chrome'),
(584, '0280122', '2022-10-06', '09:01', '18:19', '00:00:00', '', '-6.2057406,106.7287648', '-6.1768,106.7922106', '7eb19e9a9fe56edfb5c81cd8b22aac43.jpg', 'b100545a3404f316502231d9b946e741.jpg', '182.3.37.179', 'Handphone', 'Google Chrome'),
(585, '0320922', '2022-10-06', '08:55', '19:25', '00:00:00', '', '-6.2057419,106.7287748', '-6.1986462,106.7383908', '86a1c2f210387a910d730fc14608acf6.jpg', 'c559fa836860a6e75294c4ea50078778.jpg', '120.188.37.101', 'Handphone', 'Google Chrome'),
(586, '0190222', '2022-10-06', '09:02', '18:07', '00:00:00', '', '-6.1791833,106.7123603', '-6.1791628,106.7125047', 'a1b2f00cc76d2f77c7ed7e476462ce48.jpg', '7aaf1f39fdbe9009196921fdca56b7ad.jpg', '180.243.13.119', 'Handphone', 'Google Chrome'),
(587, '0230722', '2022-10-06', '09:03', '18:05', '00:00:00', '', '-6.1791766,106.7123616', '-6.1791769,106.7123637', 'cef964fe9971e54b89f283c8bb4727c0.jpg', 'dd393fcac1acb167e1eb5db504554f13.jpg', '180.243.13.119', 'Handphone', 'Google Chrome'),
(588, '0190320', '2022-10-06', '09:16', '', '00:00:00', '', '-6.1791761,106.7123763', '', 'edb934253623d94b49c17ad0bd0add17.jpg', '', '180.243.13.119', 'Handphone', 'Google Chrome'),
(589, '0180122', '2022-10-06', '12:33', '19:25', '00:00:00', '', '-6.1779438,106.7129599', '-6.1791887,106.7123994', '6dd5a5dad78849aac869cab82b914c79.jpg', '78f9bafb49512788b79457f1f0952e76.jpg', '140.213.138.126', 'Handphone', 'Google Chrome'),
(590, '0100220', '2022-10-06', '', '', '11:00:00', '15', '', '', '', '', '', '', ''),
(591, '0080521', '2022-10-06', '21:15', '21:15', '00:00:00', '', '-6.1791186,106.7123633', '-6.1791249,106.7123646', '68f72a0fc2cd81a2071ce88a84d57025.jpg', '1add8fab821b6ffb59bd524503f238cb.jpg', '182.3.43.160', 'Handphone', 'Google Chrome'),
(592, '0050714', '2022-10-07', '08:08', '20:17', '00:00:00', '', '-6.2057448,106.7287646', '-6.2057416,106.7287635', '7626c257d29a53b4ff75aa8aac586a13.jpg', '4e430de15e752dcc8a6181ae9e34dcdb.jpg', '110.136.52.26', 'Handphone', 'Google Chrome'),
(593, '0210322', '2022-10-07', '08:16', '22:26', '00:00:00', '', '-6.179168,106.7124031', '-6.1792099,106.7124334', '530db604145cc36cd0dc90278e2f7cbe.jpg', 'eaecbb35c83c5761ec9b7b2c2d19bba3.jpg', '110.136.48.236', 'Handphone', 'Google Chrome'),
(594, '0300922', '2022-10-07', '08:19', '17:05', '00:00:00', '', '-6.2057602,106.7287965', '-6.2057444,106.7287629', 'e8ac168f6394d92bc15b3ae6d12b6257.jpg', '24c60c4efcfff0e21dc580467c230978.jpg', '110.136.52.26', 'Handphone', 'Google Chrome'),
(595, '0071117', '2022-10-07', '08:17', '23:01', '00:00:00', '', '-6.1791826,106.712425', '-6.1791776,106.712408', 'a23fdc5abbdf3e6e671c4d478879bbdc.jpg', '35bc2184ad168d054347f8e1ad858503.jpg', '110.136.48.236', 'Handphone', 'Google Chrome'),
(596, '0060217', '2022-10-07', '08:20', '21:34', '00:00:00', '', '-6.2057478,106.7287743', '-6.2057513,106.728782', '4c5d3e7cddaf9a59de9619bfc246e3df.jpg', '665fccf1ee890ab24f6b382f89fd7d36.jpg', '110.136.52.26', 'Handphone', 'Google Chrome'),
(597, '0230722', '2022-10-07', '08:49', '18:10', '00:00:00', '', '-6.1792023,106.7124183', '-6.1791778,106.7124156', '79bce546760bad298b4c5b85549b8ae7.jpg', '524711546c920dffc70f5fde579f0eeb.jpg', '110.136.48.236', 'Handphone', 'Google Chrome'),
(598, '0280122', '2022-10-07', '08:51', '17:55', '00:00:00', '', '-6.2057438,106.7287681', '-6.1769066,106.7917185', 'f4efbca863f7f25a9d4b9d8f289a8d14.jpg', '2c545aa41fa387a020f679a45273805a.jpg', '182.0.238.235', 'Handphone', 'Google Chrome'),
(599, '0120820', '2022-10-07', '08:51', '', '00:00:00', '', '-6.1946508,106.676283', '', '7010a193cd575ac1f913005857cfc1a7.jpg', '', '182.2.167.104', 'Handphone', 'Google Chrome'),
(600, '0031212', '2022-10-07', '08:51', '', '00:00:00', '', '-6.2057419,106.728768', '', '00168c983d06ec238dfabd877db57b35.jpg', '', '110.136.52.26', 'Handphone', 'Google Chrome'),
(601, '0270822', '2022-10-07', '08:52', '18:00', '00:00:00', '', '-6.1791817,106.7123835', '-6.1791742,106.7123618', '0e92aa1a44e3578b92235e473a859932.jpg', 'e40c7c626e649cbe84555d313a9ba9db.jpg', '182.2.133.37', 'Handphone', 'Google Chrome'),
(602, '0260822', '2022-10-07', '08:53', '18:06', '00:00:00', '', '-6.1791724,106.7124072', '-6.1791788,106.7123699', 'c0987e378aa9ca4564bb420653c995df.jpg', '22ae810a9fff9766f2a5eecef20b7a5d.jpg', '110.136.48.236', 'Handphone', 'Google Chrome'),
(603, '015021', '2022-10-07', '08:53', '22:00', '00:00:00', '', '-6.1791846,106.7124051', '-6.242422,106.7979461', 'c5cfa641fa7210233d35ad354ba6ff89.jpg', '1eb789563f91a9f1b40b79652b74234c.jpg', '182.3.38.107', 'Handphone', 'Google Chrome'),
(604, '0110221', '2022-10-07', '08:53', '18:05', '00:00:00', '', '-6.184594316108119,106.70840247818349', '-6.179113001289571,106.71232411099395', '88b6337803f6449e2875d5cc58706a04.jpg', '814c1d613e12bfce653cabe0277db599.jpg', '172.225.72.74', 'Handphone', 'Lainnya'),
(605, '0080521', '2022-10-07', '08:58', '23:01', '00:00:00', '', '-6.1791751,106.7123724', '-6.1791749,106.7123956', '36e4ba9c02aac6975b03016540529aad.jpg', 'c5a15478f8704f34979fbe6062e7cdc2.jpg', '110.136.48.236', 'Handphone', 'Google Chrome'),
(606, '0130918', '2022-10-07', '09:01', '00:36', '00:00:00', '', '-6.1927706,106.6947724', '-6.2118572,106.8212365', 'fb7da92af89342e882947c18977b4f1b.jpg', '42b03311c56d359ec3a01296c24f1c0a.jpg', '140.213.35.57', 'Handphone', 'Google Chrome'),
(607, '0180122', '2022-10-07', '09:01', '21:11', '00:00:00', '', '-6.179173,106.7123903', '-6.1791897,106.7124115', 'dbb831908327eedd3cbe8ea1a906314f.jpg', '0b213403fd9626d2e0b3d2ba2872340d.jpg', '140.213.134.123', 'Handphone', 'Google Chrome'),
(608, '0320922', '2022-10-07', '08:47', '', '00:00:00', '', '-6.2057448,106.7287646', '', '424d9b5e4ed03b88d376409cd4f3fc69.jpg', '', '110.136.52.26', 'Handphone', 'Google Chrome'),
(609, '0190222', '2022-10-07', '09:07', '18:10', '00:00:00', '', '-6.179147,106.7123987', '-6.1791647,106.7124787', '9307a3a302f30eaa16a92473d25c5b06.jpg', 'b97188fdca3fab49cdbee8182e880708.jpg', '110.136.48.236', 'Handphone', 'Google Chrome'),
(610, '0100220', '2022-10-07', '09:32', '18:06', '10:00:00', '11', '-6.1791831,106.7122893', '-6.1791521,106.7123776', 'cf3c1d765ce6134e7e68ad01e7a3cfad.jpg', '1f77c64aa9f2b32af626b15b60fffb1b.jpg', '110.136.48.236', 'Handphone', 'Google Chrome'),
(611, '0190320', '2022-10-07', '10:31', '', '00:00:00', '', '-6.1791703,106.7123709', '', '9084337acf1e8ceabbeb8112e76f6c37.jpg', '', '110.136.48.236', 'Handphone', 'Google Chrome'),
(612, '0270822', '2022-05-01', '', '', '16:30:00', '10', '', '', '', '', '', '', ''),
(613, '0040817', '2022-10-07', '', '', '11:00:00', '11', '', '', '', '', '', '', ''),
(614, '0060217', '2022-10-08', '08:34', '22:23', '00:00:00', '', '-6.2057382,106.7287773', '-6.2057479,106.7287652', '27337d4fa85c556f0f5462e3b0fcae2a.jpg', '0d975a9bc5abacfbd3bf09a81f251414.jpg', '110.136.52.26', 'Handphone', 'Google Chrome'),
(615, '015021', '2022-10-08', '08:59', '16:07', '00:00:00', '', '-6.179116930876476,106.71236895024776', '-6.2117578,106.8213009', '0045497d916511b17e18a4814231cdc4.jpg', '82573884e2cc59b919de2437054725b2.jpg', '182.3.40.121', 'Handphone', 'Google Chrome'),
(616, '0031212', '2022-10-08', '09:15', '17:51', '00:00:00', '', '-6.2057412,106.7287645', '-6.2057414,106.7287676', '779d6f6dc9af05309fbcac6dc5d1fbd2.jpg', '2019e7af8e4ebbc12aa6f169b62833c6.jpg', '110.136.52.26', 'Handphone', 'Google Chrome'),
(617, '0130918', '2022-10-08', '09:19', '14:32', '00:00:00', '', '-6.2057411,106.728764', '-6.2279922,106.8069762', 'af07a174b156bf8b8cc28040f0830734.jpg', '0a0e954dadb101b92c87e91955dfefa1.jpg', '140.213.35.55', 'Handphone', 'Google Chrome'),
(618, '0071117', '2022-10-10', '07:17', '18:07', '00:00:00', '', '-6.1792029,106.7124548', '-6.1791942,106.7124347', '1d9f06f0039f878a413e2d654c32af3b.jpg', 'b9d3fa38ccfafb02f9525c7775030447.jpg', '180.243.1.158', 'Handphone', 'Google Chrome'),
(619, '0050714', '2022-10-10', '08:08', '17:53', '00:00:00', '', '-6.2057424,106.7287649', '-6.205741,106.7287644', '7be0b99a6d1ef54d0fab7e7541d4049d.jpg', '791f70377ced038db32bf1593f69e743.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(620, '0060217', '2022-10-10', '08:16', '21:47', '00:00:00', '', '-6.2057334,106.7287669', '-6.2057412,106.7287639', 'f62f2550d6403cb2742a835e6d2179df.jpg', '54ae0cca3e338389db4867136d31a25d.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(621, '0290622', '2022-10-10', '08:27', '', '00:00:00', '', '-6.2057427,106.7287656', '', '0e2b0abe14809db763a763ced249cab0.jpg', '', '36.69.89.116', 'Handphone', 'Google Chrome'),
(622, '0300922', '2022-10-10', '08:33', '17:11', '00:00:00', '', '-6.1363572,106.7861517', '-6.2057382,106.7287595', 'd7cd62d2ece537d2e7417721a1d910b8.jpg', 'cd4371c4fc8ddd97010ec21598539793.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(623, '0130918', '2022-10-10', '08:33', '22:50', '00:00:00', '', '-6.2058459,106.7289202', '-6.2117715,106.8213074', '82b1ce750bd88592be794a89dd68bf86.jpg', '77b43e70c4901c3e9db261e748d0f849.jpg', '140.213.13.134', 'Handphone', 'Google Chrome'),
(624, '0210322', '2022-10-10', '08:35', '21:04', '00:00:00', '', '-6.1791662,106.7124042', '-6.1791603,106.7123967', '14d92bc992b8d85ed2e2fae7c3dc34af.jpg', '5c4fc8996d72451722c3ce258bb0a2b3.jpg', '140.213.134.134', 'Handphone', 'Google Chrome'),
(625, '0031212', '2022-10-10', '08:39', '17:23', '00:00:00', '', '-6.2057446,106.7287665', '-6.1028368,106.739596', '1036fee90b5c45af287254db3976d848.jpg', 'd968290c3f3277f232f3b85ddcbdf154.jpg', '182.0.214.157', 'Handphone', 'Google Chrome'),
(626, '0110221', '2022-10-10', '08:42', '18:07', '00:00:00', '', '-6.179238653178461,106.71254454261377', '-6.179113001289571,106.71232411099395', '64546204052bfa11a952e9358001cfda.jpg', 'b2b8e6937224d2b2405fb81b48ef4eb0.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(627, '0230722', '2022-10-10', '08:45', '19:09', '00:00:00', '', '-6.1791676,106.7123702', '-6.1791724,106.7123799', '67e0bb8a3c3c427e4b30edd1084e1354.jpg', '9106030bc10c970d3989d3c70b88a0c5.jpg', '180.243.1.158', 'Handphone', 'Google Chrome'),
(628, '015021', '2022-10-10', '08:52', '21:34', '00:00:00', '', '-6.1791744,106.7123656', '-6.2424974,106.7979549', '6a62ca6fc08cff0f84dcf92ca29ba463.jpg', 'eee0161e488940f804e2297da0703056.jpg', '112.215.235.120', 'Handphone', 'Google Chrome'),
(629, '0120820', '2022-10-10', '08:54', '18:08', '00:00:00', '', '-6.1994416,106.6929954', '-6.1791776,106.7123691', '1366cefc60e6c6525f54f9870c615d2c.jpg', '1f2a064cc1f44908c40c9a03b30a12f2.jpg', '180.243.1.158', 'Handphone', 'Google Chrome'),
(630, '0260822', '2022-10-10', '08:57', '21:03', '00:00:00', '', '-6.1813401,106.7181576', '-6.1791812,106.7124437', 'c393b927e72de66edc0898df7c533778.jpg', '14ce2b21c329b3197f122164a82f28bf.jpg', '180.243.1.158', 'Handphone', 'Google Chrome'),
(631, '0280122', '2022-10-10', '08:58', '17:23', '00:00:00', '', '-6.1791666,106.7123906', '-6.102922,106.7396273', 'aa3f402815ccd588753d1c07d2ad824f.jpg', 'c1869c02a7815b787fc1568c2a60b916.jpg', '182.2.165.171', 'Handphone', 'Google Chrome'),
(632, '0180122', '2022-10-10', '09:00', '18:29', '00:00:00', '', '-6.1791769,106.7123792', '-6.1791841,106.7123881', '71fad7ad3c48d3a044967249a4312232.jpg', 'bdecfd58783ef0bab9e9327428b352fd.jpg', '140.213.140.173', 'Handphone', 'Google Chrome'),
(633, '0270822', '2022-10-10', '09:01', '', '00:00:00', '', '-6.1791472,106.7124606', '', '484ae49c38bc8478c3026da4a43680cd.jpg', '', '180.243.1.158', 'Handphone', 'Google Chrome'),
(634, '0190222', '2022-10-10', '09:08', '18:15', '00:00:00', '', '-6.2100655,106.7899743', '-6.1791628,106.7124995', '2ff8143fff4281c62b67ed6583f5ab10.jpg', 'f15ad51c065aa22411f727ed9a58643c.jpg', '180.243.1.158', 'Handphone', 'Google Chrome'),
(635, '0190320', '2022-10-10', '09:11', '18:00', '00:00:00', '', '-6.1791684,106.7123673', '-6.1791744,106.7123665', '22966198aa9f48530357ac4d3a2de760.jpg', '7316a089d0d1c59f53dd25b9d6b0e390.jpg', '180.243.1.158', 'Handphone', 'Google Chrome'),
(636, '0320922', '2022-10-10', '08:54', '18:53', '00:00:00', '', '-6.2058492,106.7288352', '-6.2057387,106.7287629', '0c95a92348105729e1cd059ebd02a4c2.jpg', '34490cfe8ee7235394a65ae892a52002.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(637, '0100220', '2022-10-10', '09:21', '', '00:00:00', '15', '-6.1790735,106.7122834', '', '99d4aad603177977f3fc420822e127ea.jpg', '', '120.188.4.121', 'Handphone', 'Google Chrome'),
(638, '0080521', '2022-10-10', '18:08', '19:59', '00:00:00', '', '-6.1791691,106.7123628', '-6.1791629,106.7123901', '87eda9ea9d7e61f3dd10041c01fafa48.jpg', 'db37cc18f98835f5431a3af3d568ab02.jpg', '182.3.43.184', 'Handphone', 'Google Chrome'),
(639, '0040817', '2022-10-10', '', '19:02', '00:00:00', '', '', '-6.179112980022331,106.71233367323167', '', '70fdab7641eb37d89828378f52ac8ceb.jpg', '172.225.72.94', 'Handphone', 'Lainnya'),
(640, '0071117', '2022-10-11', '07:06', '22:13', '00:00:00', '', '-6.1791818,106.7124246', '-6.1791714,106.7124016', '6859dbcdd199511cc224d238f9fe7234.jpg', '6d3046ecd436bd11e494820728425da4.jpg', '180.243.4.117', 'Handphone', 'Google Chrome'),
(641, '0060217', '2022-10-11', '07:48', '19:44', '00:00:00', '', '-6.2057417,106.7287649', '-6.2057361,106.7287578', '9725c8700dc3161f81115a569f165bb9.jpg', '22e9babe5dc1cd6445cb1382a5accc0a.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(642, '0050714', '2022-10-11', '08:04', '18:50', '00:00:00', '', '-6.2057355,106.7287585', '-6.2056099,106.7286726', 'ad7a75420c64b030a905792e6d853c59.jpg', '0cc4b4175ac71fc125eec79b01df84e9.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(643, '0210322', '2022-10-11', '08:25', '20:56', '00:00:00', '', '-6.1791384,106.7124117', '-6.1791653,106.7124029', '0fc3be8ef197e6f659e68ee486da3141.jpg', '0e13bf8b82efc2132075a5e36614a21c.jpg', '180.243.4.117', 'Handphone', 'Google Chrome'),
(644, '0290622', '2022-10-11', '08:30', '', '00:00:00', '', '-6.2057344,106.7287577', '', '5568bc13bce971f61f3971f60b64cf47.jpg', '', '36.69.89.116', 'Handphone', 'Google Chrome'),
(645, '0110221', '2022-10-11', '08:38', '', '00:00:00', '', '-6.179104740978639,106.71248767992854', '', '96658b3867c4aef8c14cfbd0b9612c94.jpg', '', '146.75.160.29', 'Handphone', 'Lainnya'),
(646, '0300922', '2022-10-11', '08:48', '17:23', '00:00:00', '', '-6.1363275,106.7861447', '-6.2057351,106.7287486', '6ade1204b3214bf45dec221d3e8844b1.jpg', '30956a1796e36af0e23e2d488b94cc48.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(647, '0230722', '2022-10-11', '08:48', '18:07', '00:00:00', '', '-6.179175,106.7124617', '-6.1791332,106.712389', '0acb16bb6dd1b2de67ab0a4df4c19e3b.jpg', 'f1df20b0e4f9fd24c6787b8aebf7a547.jpg', '180.243.4.117', 'Handphone', 'Google Chrome'),
(648, '0270822', '2022-10-11', '08:50', '18:00', '00:00:00', '', '-6.1791632,106.712528', '-6.1791445,106.7124503', '5e2f2265191794962636c9e78867b795.jpg', '066c7bb60cd427a7315e71ad5b3c7fbb.jpg', '182.3.47.139', 'Handphone', 'Google Chrome'),
(649, '0280122', '2022-10-11', '08:52', '18:20', '00:00:00', '', '-6.2057271,106.7287502', '-6.1766276,106.7915863', 'bf0f20264e00463c429c03c54446b6df.jpg', 'df62c06fcb6c547bd2a25e00a6c255d6.jpg', '182.0.140.144', 'Handphone', 'Google Chrome'),
(650, '0260822', '2022-10-11', '08:53', '20:20', '00:00:00', '', '-6.180923,106.7195939', '-6.1791488,106.7124331', '93fd7d5092ee3b46666c4502643d421b.jpg', 'aa4c646369673a6bad97e87d626cbfeb.jpg', '180.243.4.117', 'Handphone', 'Google Chrome'),
(651, '015021', '2022-10-11', '08:55', '22:46', '00:00:00', '', '-6.1791357,106.7123926', '-6.2117931,106.8213406', '592c9766c139d6b19844c300c623abd9.jpg', '73c30470d30ac8c9cb93a62be59d18e8.jpg', '140.213.132.176', 'Handphone', 'Google Chrome'),
(652, '0130918', '2022-10-11', '08:56', '00:39', '00:00:00', '', '-6.1791366,106.7123897', '-6.2117446,106.8212981', '7eb63d7a0ebd26c2e367933addd75118.jpg', '67528a4abb3f4130d25a646217bab226.jpg', '140.213.0.116', 'Handphone', 'Google Chrome'),
(653, '0120820', '2022-10-11', '08:57', '18:29', '00:00:00', '', '-6.1791391,106.7124173', '-6.1808082,106.7106292', 'bf0769a236a5d4a9865cd4219c285564.jpg', '22b557775fcc10474459b462e8489473.jpg', '182.2.132.186', 'Handphone', 'Google Chrome'),
(654, '0180122', '2022-10-11', '08:57', '18:40', '00:00:00', '', '-6.1791491,106.7124168', '-6.1791516,106.7124207', '15eea5aab74d0cf3d8c0ebf2430eee4b.jpg', '31cd30b3ca4a52dbcbb31784b5fa2277.jpg', '140.213.132.184', 'Handphone', 'Google Chrome'),
(655, '0031212', '2022-10-11', '08:58', '18:36', '00:00:00', '', '-6.2057425,106.7287644', '-6.2057482,106.7287583', '83d6658e743e807198fcc5c80555d9b2.jpg', 'd3bd849fae70c0f3b54c06e7a29054ce.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(656, '0190320', '2022-10-11', '09:00', '18:24', '00:00:00', '', '-6.1791407,106.7123911', '-6.1791886,106.7123055', '17f631e5573b77a1e6710e5a2781c448.jpg', 'ffbe2557420feff62852acfdeb658222.jpg', '182.2.167.70', 'Handphone', 'Google Chrome'),
(657, '0190222', '2022-10-11', '09:04', '18:20', '00:00:00', '', '-6.1971751,106.7575761', '-6.1791356,106.7123876', '49afd625e8e33442aeb1e700b7f16255.jpg', '67a5977eed8f9a8adfc5b3a693afcae1.jpg', '180.243.4.117', 'Handphone', 'Google Chrome'),
(658, '0320922', '2022-10-11', '08:51', '18:21', '00:00:00', '', '-6.2057391,106.7287637', '-6.205746,106.7287495', '24e817ab752feaa9dba7c8cc93cd0a3f.jpg', '9dbc544a2e8770cca0704f71a12c8ade.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(659, '0100220', '2022-10-11', '09:23', '', '00:00:00', '15', '-6.1799277,106.7112923', '', '41e13d697036f0af62d42c22758e40d3.jpg', '', '120.188.4.121', 'Handphone', 'Google Chrome'),
(660, '0040817', '2022-10-11', '', '21:05', '00:00:00', '', '', '-6.179160010359133,106.71226165800314', '', 'eb0e0697de5c049cfa4a55a52971ba86.jpg', '172.225.72.69', 'Handphone', 'Lainnya'),
(661, '0080521', '2022-10-11', '22:13', '22:13', '00:00:00', '', '-6.1791385,106.7124092', '-6.1791443,106.7124056', '776edf25272e8a992f8a33dd72bd16e1.jpg', '56b5df3ff843c63939d5fefee83ba5f0.jpg', '182.3.44.22', 'Handphone', 'Google Chrome'),
(662, '0071117', '2022-10-12', '07:08', '22:05', '00:00:00', '', '-6.1791883,106.7124291', '-6.1791434,106.7124036', '2d0612a9760d6546cfa1af41d5b76d4f.jpg', 'd5df0e1d6a8d30bc5f1ebf8b356e670e.jpg', '36.70.138.177', 'Handphone', 'Google Chrome'),
(663, '0050714', '2022-10-12', '08:04', '18:38', '00:00:00', '', '-6.2057363,106.7287651', '-6.2057365,106.7287591', '19667041af69fe6dbbb2d046de96ef97.jpg', '86054c33537d706c61a2982aa8a02fbc.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(664, '0290622', '2022-10-12', '08:13', '', '00:00:00', '', '-6.2057371,106.7287584', '', 'f271c6543090baf29844ff4174a492c6.jpg', '', '36.69.89.116', 'Handphone', 'Google Chrome'),
(665, '0060217', '2022-10-12', '08:13', '20:35', '00:00:00', '', '-6.2057346,106.7287657', '-6.2057358,106.7287654', '210966db3904b729b5929f7050f924ba.jpg', 'f06d1cc3c48a74b3101f5683721b5935.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(666, '0210322', '2022-10-12', '08:23', '20:27', '00:00:00', '', '-6.1791444,106.712418', '-6.179142,106.7124136', 'bc0529f1cd77b83bee14bfd895028bd5.jpg', 'd5bb6a10322cd2508c3a97d83f26ee42.jpg', '140.213.128.87', 'Handphone', 'Google Chrome');
INSERT INTO `cassa_kehadiran` (`id`, `EmployeeID`, `tanggal`, `cek_in`, `cek_out`, `out`, `kategori_izin`, `lokasi`, `lokasi_cekout`, `foto`, `foto2`, `ip`, `perangkat`, `browser`) VALUES
(667, '0031212', '2022-10-12', '08:24', '', '00:00:00', '', '-6.2057374,106.7287635', '', '6c93e7b740d810cdede673970227de8a.jpg', '', '36.69.89.116', 'Handphone', 'Google Chrome'),
(668, '0110221', '2022-10-12', '08:42', '18:02', '00:00:00', '', '-6.179102032336273,106.7124802111294', '-6.179121872512667,106.71232386506894', '037c4b291942d59fa4ba90493e050c60.jpg', 'f370ca81be6c7ac54b0dbbe6d0ac57ae.jpg', '104.28.118.65', 'Handphone', 'Lainnya'),
(669, '0270822', '2022-10-12', '08:43', '18:01', '00:00:00', '', '-6.179156,106.7124439', '-6.1791379,106.7124729', '438ed6e947bdf1103e29f1d4c4154b70.jpg', '2ad46056d985850dbe4a76d9e0b59dcc.jpg', '182.2.167.118', 'Handphone', 'Google Chrome'),
(670, '0190320', '2022-10-12', '08:44', '18:15', '00:00:00', '', '-6.1791494,106.7123966', '-6.1791373,106.7123966', '38d488d0b9dd5ed07f7b4e009153fa31.jpg', '551d5834dbb737051ce28e3f0f2bb72d.jpg', '36.70.138.177', 'Handphone', 'Google Chrome'),
(671, '0300922', '2022-10-12', '08:48', '17:07', '00:00:00', '', '-6.2057365,106.728764', '-6.2057375,106.7287637', '1d4a3b8e5a5390cb28b7fd0470b137bf.jpg', '70e5c7b3ebaf0d641aa38107435aa706.jpg', '182.0.176.72', 'Handphone', 'Google Chrome'),
(672, '0260822', '2022-10-12', '08:53', '18:02', '00:00:00', '', '-6.1784799,106.7122835', '-6.1791324,106.7123912', 'b7b3211e9687e992f4d8fd136a3ae9ea.jpg', 'ac9c298c1dfedcdf59690078378a28d1.jpg', '36.70.138.177', 'Handphone', 'Google Chrome'),
(673, '0280122', '2022-10-12', '08:53', '17:33', '00:00:00', '', '-6.2057404,106.7287525', '-6.2057382,106.7287579', 'd6a5c9ff7045167aae8446d03e664e61.jpg', '6b206a405db9005fae3cdce3df4050b1.jpg', '182.0.212.6', 'Handphone', 'Google Chrome'),
(674, '0230722', '2022-10-12', '08:53', '18:08', '00:00:00', '', '-6.179141,106.7124136', '-6.1791402,106.7124172', '06210d0e702c6fdeb9daeb23d6c129cd.jpg', '7f4a2a2ee2001ea14d911486954ca97a.jpg', '36.70.138.177', 'Handphone', 'Google Chrome'),
(675, '0320922', '2022-10-12', '08:55', '18:24', '00:00:00', '', '-6.2055821,106.7289218', '-6.2057363,106.7287591', '9e32ee3fdfab2caf851e74b6507e20b1.jpg', '9493362c698f9b96e6dc284a4ba509e7.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(676, '015021', '2022-10-12', '08:56', '18:36', '00:00:00', '', '-6.1791439,106.7123858', '-6.1777067,106.7119706', '16b55a5a97fdd948466f9e0bcb939e06.jpg', '0dc696d7de2239fec79ca4d3eebbfb3d.jpg', '182.2.134.48', 'Handphone', 'Google Chrome'),
(677, '0180122', '2022-10-12', '09:01', '18:14', '00:00:00', '', '-6.1791482,106.712395', '-6.1791449,106.7124039', 'ab5e794b425a42e6a6392593ef65ceff.jpg', '0a85d8f8242d798d7ce968ef46096004.jpg', '36.70.138.177', 'Handphone', 'Google Chrome'),
(678, '0190222', '2022-10-12', '09:02', '18:05', '00:00:00', '', '-6.179131,106.712415', '-6.1791418,106.7124345', '22abf2a830a2c3db08f9d295a2313270.jpg', 'b098356e009270d11968a71d02a878d0.jpg', '36.70.138.177', 'Handphone', 'Google Chrome'),
(679, '0130918', '2022-10-12', '09:03', '22:55', '00:00:00', '', '-6.212183,106.7267036', '-6.2118409,106.8213411', 'cfe585d799e014c2d3bb2e60d28f6dd9.jpg', 'cdba99f579a356b1036c775d759359a7.jpg', '140.213.15.129', 'Handphone', 'Google Chrome'),
(680, '0120820', '2022-10-12', '09:04', '', '00:00:00', '', '-6.1791343,106.7123949', '', '9acf316174bf7cdbc569d063c72d7e43.jpg', '', '36.70.138.177', 'Handphone', 'Google Chrome'),
(681, '0080521', '2022-10-12', '09:35', '22:06', '00:00:00', '', '-6.1791533,106.7124417', '-6.1791438,106.7124003', '2402bcc92c247087416efeff28066dbe.jpg', '4173ee9527a2b6fb0da2903530bcedc2.jpg', '182.3.47.165', 'Handphone', 'Google Chrome'),
(682, '0100220', '2022-10-12', '', '', '00:00:00', '8', '', '', '', '', '', '', ''),
(683, '0040817', '2022-10-12', '', '18:16', '00:00:00', '', '', '-6.179144414511347,106.71217190283774', '', '3fafdd62c4831d3165266d529f4a1a6d.jpg', '172.225.74.119', 'Handphone', 'Lainnya'),
(684, '0071117', '2022-10-13', '07:03', '23:03', '00:00:00', '', '-6.1791423,106.7124266', '-6.1791477,106.7124028', '532e2fbde5f6237fa0738ab9312cdf03.jpg', 'a74df2bbe87fb861682fd565e0e3b30b.jpg', '110.136.50.43', 'Handphone', 'Google Chrome'),
(685, '0050714', '2022-10-13', '08:10', '18:38', '00:00:00', '', '-6.2057396,106.7287569', '-6.2057359,106.7287589', '205f068532bb845637db0d0dd78b594b.jpg', '1b42bf0203f3613d98096e788352e00d.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(686, '0180122', '2022-10-13', '08:12', '18:44', '00:00:00', '', '-6.1792367,106.7125883', '-6.1791567,106.7123567', '6a50f18e009dbd3fb1d1a3b0037918a4.jpg', '28f84da4e184ed6d6c67b9bd384fb052.jpg', '140.213.2.248', 'Handphone', 'Google Chrome'),
(687, '0290622', '2022-10-13', '08:13', '', '00:00:00', '', '-6.2057331,106.7287579', '', 'cf33366cbed8f0c377cda7e575c7cc21.jpg', '', '36.69.89.116', 'Handphone', 'Google Chrome'),
(688, '0300922', '2022-10-13', '08:34', '17:17', '00:00:00', '', '-6.2057334,106.7287675', '-6.2057379,106.7287643', 'b7723393fd6e5dedd47a7e903502289c.jpg', '45baaac32c8099cc4acff6b817d68d36.jpg', '114.124.238.14', 'Handphone', 'Google Chrome'),
(689, '0031212', '2022-10-13', '08:34', '17:05', '00:00:00', '', '-6.2057348,106.7287562', '-6.1927128,106.7402683', '85bfc109be8516149894eabf82614a6d.jpg', '69bfca1b9f3b74204bae60f65b3f311c.jpg', '114.124.210.224', 'Handphone', 'Google Chrome'),
(690, '0060217', '2022-10-13', '08:41', '19:51', '00:00:00', '', '-6.2057293,106.7287722', '-6.2057361,106.7287577', '9523d5e9fbb4a7ee4d4553e7360d1f0e.jpg', '80632d7215d07fdc87a081f89b51b3d6.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(691, '0270822', '2022-10-13', '08:43', '18:02', '00:00:00', '', '-6.1791494,106.7124553', '-6.1791492,106.7124215', '4d21cc8fc6516fb69dae1e0e872780ef.jpg', 'd11fe1d6d335451bef5a85bc134e2e01.jpg', '110.136.50.43', 'Handphone', 'Google Chrome'),
(692, '0230722', '2022-10-13', '08:44', '18:13', '00:00:00', '', '-6.179133,106.7123999', '-6.1791246,106.7123877', '03a50fe3b1aa7d783832e5489f96d20b.jpg', 'f0ecacc6398941b7f7a1009468472432.jpg', '110.136.50.43', 'Handphone', 'Google Chrome'),
(693, '0280122', '2022-10-13', '08:45', '', '00:00:00', '', '-6.205741,106.7287539', '', 'c525af92f31f6f0eb5812d31ceb06d84.jpg', '', '182.0.212.6', 'Handphone', 'Google Chrome'),
(694, '0320922', '2022-10-13', '08:49', '19:20', '00:00:00', '', '-6.2057726,106.7286106', '-6.2057539,106.7287874', 'e334c7201fd2a69753cccba906755edf.jpg', 'c939c144e8c3e7466557ecfab9c952a8.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(695, '0110221', '2022-10-13', '08:52', '18:03', '00:00:00', '', '-6.1791556328909625,106.71231426147136', '-6.179121872512667,106.71232386506894', 'f7524413b3c90df60cd0364e1cee3f28.jpg', '5f0439d6c3c94959b98e06d12f37f975.jpg', '172.225.72.68', 'Handphone', 'Lainnya'),
(696, '0260822', '2022-10-13', '08:53', '18:26', '00:00:00', '', '-6.1813187,106.7180697', '-6.1791827,106.7124497', '722b4d4ffcec37f53a46b3cec938fdbd.jpg', 'e305eca554492473609751decde8464c.jpg', '110.136.50.43', 'Handphone', 'Google Chrome'),
(697, '0120820', '2022-10-13', '08:53', '18:14', '00:00:00', '', '-6.1810754,106.7107756', '-6.1791308,106.7123588', '8193e5066505688f3ff71cdb8c57c992.jpg', '90df6fdeec567460e22fabeee839c73e.jpg', '110.136.50.43', 'Handphone', 'Google Chrome'),
(698, '015021', '2022-10-13', '08:55', '21:29', '00:00:00', '', '-6.1791368,106.7124033', '-6.2425418,106.7979468', '078020134cf1171f6593357d5f4d4f9c.jpg', 'c1e590afa3818b3d4584267331e14e22.jpg', '140.213.35.203', 'Handphone', 'Google Chrome'),
(699, '0040817', '2022-10-13', '08:56', '19:14', '00:00:00', '', '-6.125635151829415,106.72981029619329', '-6.17910765739788,106.71223613454825', '51795b374e9b1860c9453d6aca581680.jpg', '09b0111ff394b23c381fed13bf98f180.jpg', '172.225.72.78', 'Handphone', 'Lainnya'),
(700, '0190320', '2022-10-13', '08:58', '', '00:00:00', '', '-6.1791344,106.7123921', '', '4c8f198c02e5a57b3f0821a2f7d794aa.jpg', '', '110.136.50.43', 'Handphone', 'Google Chrome'),
(701, '0210322', '2022-10-13', '09:01', '20:30', '00:00:00', '', '-6.179163,106.712405', '-6.1791579,106.7124064', 'bc755a2fd8c186b94793be2c31b1c28a.jpg', '63bd43499fca7674a58efc77735528bb.jpg', '110.136.50.43', 'Handphone', 'Google Chrome'),
(702, '0130918', '2022-10-13', '09:03', '22:52', '00:00:00', '', '-6.1792981,106.7123192', '-6.205789,106.7287606', '758af1cf0d42040bfe0fc3c073db1fe3.jpg', 'e82ec4a17afc3782e2c75472d8baee87.jpg', '36.69.89.116', 'Handphone', 'Google Chrome'),
(703, '0190222', '2022-10-13', '09:11', '18:09', '00:00:00', '', '-6.1791532,106.7124679', '-6.1791334,106.7123949', 'abf4353ff138f9427a7d33def254151d.jpg', 'c845137cb3e11c49db53a6cb47abae9c.jpg', '110.136.50.43', 'Handphone', 'Google Chrome'),
(704, '0100220', '2022-10-13', '09:17', '', '00:00:00', '15', '-6.1841343,106.7048622', '', 'b7ab4b6ff64a78794e954242b5262888.jpg', '', '114.10.31.219', 'Handphone', 'Google Chrome'),
(705, '0110221', '2022-10-04', '', '', '00:00:00', '7', '', '', '', '', '', '', ''),
(706, '0080521', '2022-10-13', '23:02', '23:02', '00:00:00', '', '-6.1791416,106.7124154', '-6.1791462,106.7124047', '286f2c070af2d607bb9353195b6016f1.jpg', '6d1f939863fd80e113cbebb776afc3fe.jpg', '182.0.133.177', 'Handphone', 'Google Chrome'),
(707, '0071117', '2022-10-14', '07:05', '23:58', '00:00:00', '', '-6.1791484,106.7124073', '-6.1791216,106.7123866', '3683366583e078f6c0685d802e598bc8.jpg', 'd08a6c1f2449fd6f59dc69351af3b273.jpg', '180.243.11.234', 'Handphone', 'Google Chrome'),
(708, '0050714', '2022-10-14', '08:09', '18:25', '00:00:00', '', '-6.2057369,106.7287592', '-6.2057358,106.728758', '01267d91f8d8d29697cbdfce45bfd833.jpg', 'df77d4191edf7cfdd8e3d9c191b4b84b.jpg', '180.243.6.176', 'Handphone', 'Google Chrome'),
(709, '0290622', '2022-10-14', '08:17', '', '00:00:00', '', '-6.2057331,106.728774', '', '03e3e4e22218ff837e59de6864fb0fd9.jpg', '', '36.69.89.116', 'Handphone', 'Google Chrome'),
(710, '0060217', '2022-10-14', '08:22', '21:20', '00:00:00', '', '-6.2057382,106.7287711', '-6.205736,106.7287587', '7dc213243961f882e4414d08b0c12e5f.jpg', 'cfa0605935ba2006624053d65a421a28.jpg', '180.243.6.176', 'Handphone', 'Google Chrome'),
(711, '0210322', '2022-10-14', '08:25', '20:20', '00:00:00', '', '-6.1791349,106.7124046', '-6.179157,106.7124073', '06704a928730fe2b0d437f09d2c7335c.jpg', 'e4547d8d686eec07bdb234f878779645.jpg', '180.243.11.234', 'Handphone', 'Google Chrome'),
(712, '0300922', '2022-10-14', '08:32', '17:27', '00:00:00', '', '-6.2057356,106.728761', '-6.2057377,106.7287559', '110951b0c35c14d6b688719086e335c0.jpg', 'a0a407ae29d5553c1e8d1f2e1d7dbeb1.jpg', '180.243.6.176', 'Handphone', 'Google Chrome'),
(713, '0031212', '2022-10-14', '08:31', '17:43', '00:00:00', '', '-6.2057396,106.7287666', '-6.1926701,106.7401468', 'e12f7982712a02482cb2c5ddc412c461.jpg', 'b4d0c79a354f66a0e0f99115e1e69bd0.jpg', '182.3.45.229', 'Handphone', 'Google Chrome'),
(714, '0230722', '2022-10-14', '08:32', '18:02', '00:00:00', '', '-6.1791315,106.7123935', '-6.1791326,106.7123946', '34945d9b06a0eebda70d2c4ec5c44357.jpg', 'b72ce930347b594ad5c28ded7a280966.jpg', '180.243.11.234', 'Handphone', 'Google Chrome'),
(715, '0110221', '2022-10-14', '08:40', '18:00', '00:00:00', '', '-6.184792361715136,106.70827278732659', '-6.179127194171661,106.71232823193996', '1461e60fb9e5760e77517e02e3dabf74.jpg', 'c09d6b51444253de9f287ca14f745340.jpg', '146.75.160.28', 'Handphone', 'Lainnya'),
(716, '0270822', '2022-10-14', '08:44', '18:01', '00:00:00', '', '-6.1791336,106.712407', '-6.1791376,106.7123921', '85a2ece059b619802cfeffc50e97d7b5.jpg', 'b6a0bfd4ea0dc6f6c1f1c594e4c0a495.jpg', '182.2.165.252', 'Handphone', 'Google Chrome'),
(717, '0130918', '2022-10-14', '08:54', '00:03', '00:00:00', '', '-6.2057379,106.7287595', '-6.2118205,106.8213068', '972a7bfdcf5d143e6180e7a4f1c87250.jpg', '4303998ebb5560beea9f51967bd9bf4f.jpg', '140.213.128.149', 'Handphone', 'Google Chrome'),
(718, '0320922', '2022-10-14', '08:55', '18:06', '00:00:00', '', '-6.2057371,106.7287593', '-6.2057356,106.7287588', 'ee7fe7f942963b1c6fdfa5a903d8d4f8.jpg', 'e9067bf70bc47d8f469a176e63c35fc0.jpg', '180.243.6.176', 'Handphone', 'Google Chrome'),
(719, '0260822', '2022-10-14', '08:56', '18:04', '00:00:00', '', '-6.1791456,106.7124159', '-6.17914,106.7124119', 'cf75fd5ea6325c85a6c907b8870081f1.jpg', 'd04e8a572ed6af1c39f43328854e27f2.jpg', '180.243.11.234', 'Handphone', 'Google Chrome'),
(720, '015021', '2022-10-14', '08:57', '23:10', '00:00:00', '', '-6.1791413,106.7124028', '-6.1778049,106.7123011', 'bea828a45020e82eff51e06e46484b75.jpg', '95d6f670bd37e79c33a59ecaf6d3fd25.jpg', '140.213.11.120', 'Handphone', 'Google Chrome'),
(721, '0190320', '2022-10-14', '08:58', '18:00', '00:00:00', '', '-6.1791392,106.7123922', '-6.1791349,106.7123957', '79cec298e9eb44b136aa767126a5a011.jpg', 'f9723abb35b295950a9931fba907e683.jpg', '180.243.11.234', 'Handphone', 'Google Chrome'),
(722, '0120820', '2022-10-14', '08:59', '', '13:00:00', '10', '-6.1843439,106.6983409', '', '40491145cce9cdf55696b8519ebf01f4.jpg', '', '182.3.37.243', 'Handphone', 'Google Chrome'),
(723, '0280122', '2022-10-14', '09:03', '17:34', '00:00:00', '', '-6.179142,106.7123985', '-6.2057404,106.728771', '949e2a404d3589d247772714e934fe6d.jpg', 'f3b8705f30b430dc9e1ca31b7827295c.jpg', '182.3.41.61', 'Handphone', 'Google Chrome'),
(724, '0180122', '2022-10-14', '09:03', '', '00:00:00', '', '-6.1791478,106.7124013', '', 'c906518d11d1ed1fa1e86d3f8811a26b.jpg', '', '180.243.11.234', 'Handphone', 'Google Chrome'),
(725, '0190222', '2022-10-14', '09:10', '18:26', '00:00:00', '', '-6.179143,106.7123923', '-6.1791315,106.7124037', 'dc1fa2140dfe453374ac5071b6d581d3.jpg', 'e406ba17f6a8e8abfc13f662486d0e90.jpg', '180.243.11.234', 'Handphone', 'Google Chrome'),
(726, '0100220', '2022-10-14', '', '', '01:00:00', '15', '', '', '', '', '', '', ''),
(727, '0080521', '2022-10-14', '15:09', '23:53', '00:00:00', '', '-6.1791405,106.7124347', '-6.1791377,106.7123805', '8fb79b8a2e897b78d44fd2682a20ed58.jpg', 'fdf51d8c343d0ca3dfbc82f7ae0e7fc0.jpg', '182.0.230.41', 'Handphone', 'Google Chrome'),
(728, '0040817', '2022-10-14', '', '19:09', '00:00:00', '', '', '-6.179019944129988,106.71228048482082', '', '2f5a92c077ea8ceec1151d370f5f441c.jpg', '146.75.160.29', 'Handphone', 'Lainnya'),
(729, '0130918', '2022-10-15', '11:27', '20:44', '00:00:00', '', '-6.2141392,106.8217964', '-6.2118008,106.821302', 'ae09d4989c1807fce2bad9b09d84daca.jpg', '9ed82a2ca1ab592375c232c65f05f5c7.jpg', '140.213.15.188', 'Handphone', 'Google Chrome'),
(730, '0071117', '2022-10-15', '08:01', '12:00', '00:00:00', '', '-6.1791503,106.7124166', '-6.1791448,106.7124293', 'e4ace4d7c20ad874b066a019b324b19d.jpg', '5bf727bc02c30a0f169278fa9ba88eb8.jpg', '180.243.5.140', 'Handphone', 'Google Chrome'),
(731, '0060217', '2022-10-15', '08:06', '19:45', '00:00:00', '', '-6.2057368,106.7287637', '-6.2057361,106.7287577', '3883ec43f16d14311ec437a621eda4c7.jpg', '5b397c7b0d3ae99d95ed7bed38a40067.jpg', '180.243.11.245', 'Handphone', 'Google Chrome'),
(732, '0290622', '2022-10-15', '08:20', '', '00:00:00', '', '-6.2058319,106.7288913', '', 'e60610f6ad42675159a8a45131644ab9.jpg', '', '140.213.138.129', 'Handphone', 'Google Chrome'),
(733, '0050714', '2022-10-15', '08:28', '16:39', '00:00:00', '', '-6.205731,106.7287569', '-6.2057569,106.7288191', 'f2f476c5e81707ff4717519005dd16b2.jpg', '76be7dd89670cd51f4e7da774f517b7a.jpg', '180.243.6.176', 'Handphone', 'Google Chrome'),
(734, '0300922', '2022-10-15', '08:31', '12:12', '00:00:00', '', '-6.2057371,106.7287611', '-6.2058095,106.7288757', '3544d31129416fa0d862b9e6ed3ba33e.jpg', 'cd06d4fcf9d8973200f0171370648e0e.jpg', '182.0.209.45', 'Handphone', 'Google Chrome'),
(735, '0031212', '2022-10-15', '08:42', '16:57', '00:00:00', '', '-6.2057361,106.728759', '-6.2057407,106.7287525', '6bb406b3caa66c260b93a76783675886.jpg', 'd24b09809a042b5aa0008c3eabd98e2e.jpg', '180.243.6.176', 'Handphone', 'Google Chrome'),
(736, '015021', '2022-10-15', '08:50', '15:02', '00:00:00', '', '-6.242302184058534,106.79805949330331', '-6.242513,106.7979816', '0e8add2435fb162b0c8fb55d844f5d93.jpg', '50f489a7758488472db122a95c430140.jpg', '140.213.11.117', 'Handphone', 'Google Chrome'),
(737, '0320922', '2022-10-15', '08:50', '16:54', '00:00:00', '', '-6.2057384,106.7287594', '-6.2057352,106.728749', 'af668f61ec3dfc39a4846dc6158b8acf.jpg', '8de66c8d358399e70811dd864247cc59.jpg', '180.243.6.176', 'Handphone', 'Google Chrome'),
(738, '0280122', '2022-10-15', '08:54', '17:02', '00:00:00', '', '-6.2057332,106.7287604', '-6.1866322,106.7782837', '5673fe74e3cf5fd01ce0ac6eadc7a16f.jpg', '8e98dc75da3dbb60627620c08c39d5a9.jpg', '182.3.41.61', 'Handphone', 'Google Chrome'),
(739, '0071117', '2022-10-17', '07:00', '', '00:00:00', '', '-6.1791383,106.712426', '', '2f2f1304e16139e6c873df84faf95e0a.jpg', '', '110.136.102.22', 'Handphone', 'Google Chrome'),
(740, '0050714', '2022-10-17', '08:10', '', '00:00:00', '', '-6.2057396,106.7287583', '', 'd4f9b420a68d4b111b5626424093bf4e.jpg', '', '180.243.11.245', 'Handphone', 'Google Chrome'),
(741, '0060217', '2022-10-17', '08:19', '', '00:00:00', '', '-6.2057344,106.728758', '', '81d5254419767e4e873634b0ab1cb4cb.jpg', '', '180.243.11.245', 'Handphone', 'Google Chrome'),
(742, '0290622', '2022-10-17', '08:20', '', '00:00:00', '', '-6.205748,106.7287773', '', '93d4393ec5212daabdea22f11ea37af1.jpg', '', '180.243.11.245', 'Handphone', 'Google Chrome'),
(743, '0210322', '2022-10-17', '08:29', '', '00:00:00', '', '-6.1808762,106.7111171', '', 'be5c3d1f3be12551464e84f6bf89861d.jpg', '', '140.213.128.238', 'Handphone', 'Google Chrome'),
(744, '015021', '2022-10-17', '08:34', '', '00:00:00', '', '-6.1791372,106.7123908', '', '73dc1d62f54a1907aa971bd9bc04d900.jpg', '', '110.136.102.22', 'Handphone', 'Google Chrome'),
(745, '0031212', '2022-10-17', '08:40', '', '00:00:00', '', '-6.2057379,106.7287632', '', '0a2429b28e83c632221148c29028b182.jpg', '', '180.243.11.245', 'Handphone', 'Google Chrome'),
(746, '0190320', '2022-10-17', '08:48', '', '00:00:00', '', '-6.1791395,106.712421', '', '9a69425da26ddb73963ae989b64ba895.jpg', '', '110.136.102.22', 'Handphone', 'Google Chrome'),
(747, '0080521', '2022-10-17', '08:50', '', '00:00:00', '', '-6.1791633,106.7124461', '', '058fdfb3e60dbfc15678d2ca92ae1e6c.jpg', '', '182.0.144.248', 'Handphone', 'Google Chrome'),
(748, '0260822', '2022-10-17', '08:52', '', '00:00:00', '', '-6.1791239,106.7123739', '', '78af7b52de37d6981e55840732836b87.jpg', '', '110.136.102.22', 'Handphone', 'Google Chrome'),
(749, '0270822', '2022-10-17', '08:53', '', '00:00:00', '', '-6.1791498,106.7124042', '', 'e967b51a5b24d1a6cc7c2729a34677b6.jpg', '', '110.136.102.22', 'Handphone', 'Google Chrome'),
(750, '0320922', '2022-10-17', '08:55', '', '00:00:00', '', '-6.2057356,106.7287584', '', 'faf95c5e03297e737ee4bcc236d51385.jpg', '', '180.243.11.245', 'Handphone', 'Google Chrome'),
(751, '0120820', '2022-10-17', '08:58', '', '00:00:00', '', '-6.1791859,106.712364', '', '4b2923ff72cbfab5ee97c8f2aa4bb3e4.jpg', '', '114.124.177.119', 'Handphone', 'Google Chrome'),
(752, '0230722', '2022-10-17', '08:58', '', '00:00:00', '', '-6.1791694,106.7124673', '', '66f72e3e25fc13fe0275d96d4adaabfb.jpg', '', '110.136.102.22', 'Handphone', 'Google Chrome'),
(753, '0180122', '2022-10-17', '09:00', '', '00:00:00', '', '-6.1791335,106.7123871', '', '0b01e9b2bd455268f58257f035300497.jpg', '', '140.213.142.123', 'Handphone', 'Google Chrome'),
(754, '0130918', '2022-10-17', '09:00', '', '00:00:00', '', '-6.1790917,106.7124346', '', 'efb90635bda890b82d927832f383c3a6.jpg', '', '110.136.102.22', 'Handphone', 'Google Chrome'),
(755, '0190222', '2022-10-17', '09:02', '', '00:00:00', '', '-6.1974624,106.7805797', '', '0ea416421144a6f20db67b825c028c1c.jpg', '', '110.136.102.22', 'Handphone', 'Google Chrome'),
(756, '0280122', '2022-10-17', '09:04', '', '00:00:00', '', '-6.179153,106.7124099', '', '2df169f12b7d9931ce04325b4374db94.jpg', '', '182.3.36.246', 'Handphone', 'Google Chrome'),
(757, '0110221', '2022-10-17', '09:08', '', '00:00:00', '', '-6.179121904941017,106.71232867334005', '', '09dfa52d64bf509144d0e693c3cb7d05.jpg', '', '146.75.160.29', 'Handphone', 'Lainnya'),
(758, '0100220', '2022-10-17', '09:13', '', '00:00:00', '', '-6.1842966,106.709046', '', '4bd3f61e4d1597dbe43d73ddec020dfd.jpg', '', '114.10.69.21', 'Handphone', 'Google Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_log`
--

CREATE TABLE `cassa_log` (
  `id_log` int(50) NOT NULL,
  `waktu` datetime NOT NULL,
  `ket` text NOT NULL,
  `user` varchar(50) NOT NULL,
  `kode` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_log`
--

INSERT INTO `cassa_log` (`id_log`, `waktu`, `ket`, `user`, `kode`) VALUES
(1, '2022-11-01 13:56:10', 'Add Detail Task', 'IT CASSA', '65089'),
(2, '2022-11-01 14:53:10', 'Comment Detail Task', 'IT CASSA', 'TSKDT83657'),
(3, '2022-11-01 17:08:58', 'Add Detail Task', 'IT CASSA', '96472'),
(4, '2022-11-01 17:09:12', 'Comment Detail Task', 'IT CASSA', 'TSKDT67942');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_mom`
--

CREATE TABLE `cassa_mom` (
  `id` int(3) NOT NULL,
  `id_mom` varchar(50) NOT NULL,
  `id_lsp` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `partisipasi` varchar(100) NOT NULL,
  `agenda` text NOT NULL,
  `diskusi` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `entrytime` datetime NOT NULL,
  `updateby` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status_berjalan` varchar(50) NOT NULL DEFAULT '1',
  `berkas` varchar(150) NOT NULL,
  `kode_tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_mom`
--

INSERT INTO `cassa_mom` (`id`, `id_mom`, `id_lsp`, `tanggal`, `lokasi`, `partisipasi`, `agenda`, `diskusi`, `status`, `createdby`, `entrytime`, `updateby`, `updatetime`, `status_berjalan`, `berkas`, `kode_tag`) VALUES
(14, 'MOM1609220001', 'LDP2508220001', '2022-09-16', ' Tangerang', ' adad,adadad,adadad', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">KORIDOR :</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Tidak usah lapis partisi lagi yang menempel dengan tenant lain</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">area yang menghadap koridor polos&nbsp;</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">CEILING</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l2 level1 lfo2; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Ducting untuk saluran udara harus lapis Kain tidak boleh langsung cat,, yang plafon boleh langsung cat (<strong>VOC, waterbased ga bau</strong>)</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l2 level1 lfo2; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">pakai <strong>Transfer duct</strong> untuk ruangan partisi tertutup uk 60 x 40</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">SCREEDING</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l3 level1 lfo3; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">make sure screeding cover pipa conduit (opsi bisa pakai hebel cover semen, pakai material yang ringan dan tidak basah, minimalisir debu, <strong>cover plastik cor</strong>)</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l3 level1 lfo3; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Screeding boleh mentok parapet</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">RUANG SERVER&nbsp;</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l1 level1 lfo4; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Pakai Halotron 3 kg (Tidak boleh splinker)</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l1 level1 lfo4; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Ruang server request pakai switch ke sumber listrik 2 gedung jika ada maintainance tidak mati</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">PROTEKSI LIFT</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l5 level1 lfo5; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">pakai triplek 3mm cover seluruh lift service</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l5 level1 lfo5; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">koridor menggunakan karpet</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">TEKNIK KERJA</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">ijin kerja masuk barang h-1 (dari jam 19.00-24.00 <strong>ONTIME</strong>) jika lebih dari jam 24.00 buatkan ijin kerja untuk 2 hari</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Jam Kerja Weekdays 19.00-05.00, Sabtu (13.00-05.00) Minggu 24 Hour</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Start Kerja Pakai APD <strong>(Rompi, sepatu safety/Boots dan rompi)</strong></span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Minta APAR tambahan dan P3K</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Air ambil di B1, jika pakai lift umum <strong>proteksi dan bersih</strong></span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Listrik kerja pakai tarikan dan buat <strong>panel box temporer</strong></span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">ID Card Harga nya <strong>@ 5000 </strong>per pcs akan di tagih</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Furniture basis kayu lapis AF1 (fixed furniture dan yang nempel di wall), pada saat semprot AF1 di lapangan di <strong>video dan kirim BM</strong></span></p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: #3598db; mso-fareast-language: EN-ID;\">KIRIM GAMBAR REVISI dan CAD terbaru</span></strong></p>', '<p>adfeffwafafafcscscs</p>', '1', 'RISA UMAMI', '2022-09-16 16:32:16', '', '0000-00-00 00:00:00', '1', '', ''),
(15, 'MOM1609220001', 'LDP2508220001', '2022-09-16', ' afafaf', ' grgrgrg', ' afafaf', '<p>Perubahan Layout sbb :</p>\r\n<p>Lobby :</p>\r\n<ul>\r\n<li>Menambah luasan</li>\r\n<li>Meja Reception di tukar posisi nya agar tidak menghalangi backdrop</li>\r\n<li>di belakang partisi lobby di jadikan wall photo</li>\r\n<li>dibuatkan pintu kamuflase untuk nyambung ke musholla agar tamu jika butuh sholat tidak masuk ke ruangan staff</li>\r\n<li>menggunakan Keramik&nbsp;</li>\r\n</ul>\r\n<p>Musholla</p>\r\n<ul>\r\n<li>ruangan menjadi 2,5m x 2m</li>\r\n</ul>\r\n<p>Small Meeting Room</p>\r\n<ul>\r\n<li>Butuh Foto Presiden + Wapres dan Garuda</li>\r\n</ul>\r\n<p>Big Meeting Room</p>\r\n<ul>\r\n<li>Screen Proyektor</li>\r\n<li>Frame Glassboard</li>\r\n<li>Bendera Indonesia, K3, PT</li>\r\n</ul>\r\n<p>Ruang Comisaris</p>\r\n<ul>\r\n<li>di relayout untuk ruang FA (1 orang)</li>\r\n<li>di pindah dekat dengan ruang Manager&nbsp;</li>\r\n<li>ada tv di dalam ruangan</li>\r\n</ul>\r\n<p>Ruangan direktur dan Presiden Direktur</p>\r\n<ul>\r\n<li>mau ada kulkas di dalam ruangan, (tbc untuk predir mau di tanya dulu)</li>\r\n<li>ruang Presdir ada area sholat</li>\r\n<li>meja kursi di ruangan direktur di rubah posisi dan posisi meja di tengah</li>\r\n<li>Butuh Foto Presiden + Wapres dan Garuda</li>\r\n<li>Ruangan direktur ops di geser dikit lurus garis dengan sekat FA dan meeting room</li>\r\n</ul>\r\n<p>Ruangan filling dan Printer</p>\r\n<ul>\r\n<li>di relayout untuk jadi 3 ruangan (2 manager, 1 komisaris)</li>\r\n<li>di belakang ruangan komisaris menjadi tempat filling&nbsp;</li>\r\n<li>printer dan fotocopi pindah ke kolom area staff</li>\r\n</ul>\r\n<p>Area Staff\'</p>\r\n<ul>\r\n<li>meja kerja divider menggunakan glassboard</li>\r\n<li>mobile drawer</li>\r\n</ul>\r\n<p>Ruangan FA</p>\r\n<ul>\r\n<li>lemari data</li>\r\n<li>credenza</li>\r\n</ul>\r\n<p>Pantry&nbsp;</p>\r\n<ul>\r\n<li>relayout ulang&nbsp;</li>\r\n<li>tidak mau seperti kantin</li>\r\n</ul>\r\n<p>untuk area staff pakai vinyl</p>\r\n<p>untuk area ruangan2 pakai karpet</p>\r\n<p>jendela2 menggunakan vertikal blind</p>', '2', 'IT', '2022-09-20 11:33:07', '', '0000-00-00 00:00:00', '1', '', ''),
(16, 'MOM2309220001', 'LDP2508220001', '2022-09-23', ' sd', ' 1', '2', '<p>dadadad</p>', '1', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-23 13:50:28', '', '0000-00-00 00:00:00', '1', '', ''),
(17, 'MOM1210220001', 'LDP1309220002', '2022-10-12', ' adadada', ' weawrewe', 'fafafaf', '<p>afafaf</p>', '1', 'IT CASSA', '2022-10-12 13:48:37', '', '0000-00-00 00:00:00', '1', '', 'TAG1210220001'),
(18, 'MOM1210220002', 'LDP3008220001', '2022-10-12', ' tang', ' ry', 'adada', '<p>vdvd</p>', '1', 'IT CASSA', '2022-10-12 13:50:37', '', '0000-00-00 00:00:00', '1', '', 'TAG1210220018'),
(19, 'MOM2710220001', 'LDP1508220001', '2022-10-27', ' adadwdw', ' rtrrgrgr', 'afaaf', '<p>fefeagaga</p>', '1', 'AZAM ASHARI', '2022-10-27 10:33:51', '', '0000-00-00 00:00:00', '1', '', 'TAG2710220001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_mom_history`
--

CREATE TABLE `cassa_mom_history` (
  `id_history` int(3) NOT NULL,
  `id_mom` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_mom_history`
--

INSERT INTO `cassa_mom_history` (`id_history`, `id_mom`, `status`) VALUES
(1, 'MOM1508220002', ''),
(2, 'MOM1508220003', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_reimbursement`
--

CREATE TABLE `cassa_reimbursement` (
  `id_reimbus` int(11) NOT NULL,
  `kode_reimbus` varchar(50) NOT NULL,
  `user_reimbus` varchar(150) NOT NULL,
  `keterangan` text NOT NULL,
  `name_project` varchar(150) NOT NULL,
  `tanggal_reimbus` date NOT NULL,
  `createddate_reimbus` datetime NOT NULL,
  `status_reimbus` varchar(3) NOT NULL DEFAULT '1',
  `proses_apprv` varchar(150) NOT NULL,
  `time_apprv` datetime NOT NULL,
  `end_apprv` varchar(150) NOT NULL,
  `end_time_apprv` datetime NOT NULL,
  `bukti_bayar` varchar(150) NOT NULL,
  `user_bayar` varchar(50) NOT NULL,
  `tgl_bayar` datetime NOT NULL,
  `view` varchar(3) DEFAULT '1',
  `metode_pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_reimbursement`
--

INSERT INTO `cassa_reimbursement` (`id_reimbus`, `kode_reimbus`, `user_reimbus`, `keterangan`, `name_project`, `tanggal_reimbus`, `createddate_reimbus`, `status_reimbus`, `proses_apprv`, `time_apprv`, `end_apprv`, `end_time_apprv`, `bukti_bayar`, `user_bayar`, `tgl_bayar`, `view`, `metode_pembayaran`) VALUES
(12, '57461', 'IT', '', 'project 1', '2022-09-22', '2022-09-22 15:03:02', '3', 'TANIA DISSY SARASWATI', '2022-10-04 14:57:41', 'IT', '2022-09-22 15:07:15', '1cd911b868f4c644c3f2a24d239efe5a.png', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-13 15:35:14', '1', 'Petty Cash'),
(13, '67408', 'RYAN MUHAMMAD BAHRUDIN', '', 'Dll', '2022-09-22', '2022-09-22 17:41:10', '2', 'IT CASSA', '2022-10-14 16:44:12', 'TANIA DISSY SARASWATI', '2022-10-03 17:29:23', 'b372b5a64b49e29b7fffddb3236eaec1.png', 'IT CASSA', '2022-10-14 16:52:41', '1', 'Petty Cash'),
(14, '31275', 'IT', '', 'Dll', '2022-09-23', '2022-09-23 17:04:12', '3', 'IT CASSA', '2022-10-14 16:58:02', '', '0000-00-00 00:00:00', 'e071d1643dd96f2a780b0f12e68ddcd5.jpeg', 'IT CASSA', '2022-10-14 17:00:09', '1', 'Dll'),
(15, '14236', 'RYAN MUHAMMAD BAHRUDIN', '', 'Brunel', '2022-10-11', '2022-10-11 11:18:35', '3', 'IT CASSA', '2022-10-11 11:27:29', '', '0000-00-00 00:00:00', 'f5a5e44dcd15a99339bdc5a45635a148.png', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-13 15:33:55', '1', 'Dll');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_reimbursement_category`
--

CREATE TABLE `cassa_reimbursement_category` (
  `no` int(11) NOT NULL,
  `kategori_reimbus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_reimbursement_category`
--

INSERT INTO `cassa_reimbursement_category` (`no`, `kategori_reimbus`) VALUES
(1, 'PROYEK'),
(2, 'KESEHATAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_reimbursement_category_jenis`
--

CREATE TABLE `cassa_reimbursement_category_jenis` (
  `id_sub_category` int(11) NOT NULL,
  `kategori_reimbus` varchar(50) NOT NULL,
  `jenis_reimburs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_reimbursement_category_jenis`
--

INSERT INTO `cassa_reimbursement_category_jenis` (`id_sub_category`, `kategori_reimbus`, `jenis_reimburs`) VALUES
(3, 'PROYEK', 'PARKIR'),
(4, 'PROYEK', 'TOL'),
(5, 'PROYEK', 'ENTERTAIN'),
(6, 'PROYEK', 'LAIN-LAIN'),
(9, 'PROYEK', 'BENSIN (Kendaraan Pribadi)'),
(10, 'PROYEK', 'BENSIN (Kendaraan Kantor)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_reimbursement_sub`
--

CREATE TABLE `cassa_reimbursement_sub` (
  `id_sub` int(11) NOT NULL,
  `kode_reimbus` varchar(50) NOT NULL,
  `kategori_reimburs` varchar(50) DEFAULT NULL,
  `foto_reimburs` varchar(150) NOT NULL,
  `foto_km_after` varchar(150) NOT NULL,
  `total_km` varchar(50) DEFAULT NULL,
  `nominal` varchar(50) DEFAULT NULL,
  `nominal_tf` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  `status_cek` varchar(50) DEFAULT 'Pending',
  `status_pembayaran` varchar(50) NOT NULL,
  `user_cek` varchar(50) NOT NULL,
  `date_cek` datetime NOT NULL,
  `user_pay` varchar(50) NOT NULL,
  `time_pay` datetime NOT NULL,
  `tipe_berkas` varchar(150) NOT NULL,
  `ukuran_berkas` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_reimbursement_sub`
--

INSERT INTO `cassa_reimbursement_sub` (`id_sub`, `kode_reimbus`, `kategori_reimburs`, `foto_reimburs`, `foto_km_after`, `total_km`, `nominal`, `nominal_tf`, `catatan`, `status_cek`, `status_pembayaran`, `user_cek`, `date_cek`, `user_pay`, `time_pay`, `tipe_berkas`, `ukuran_berkas`) VALUES
(95, '57461', 'ENTERTAIN', '5302ea4fbe9b9d16172f160a3d012bac.jpg', '', '', '10,000', '1000000', '', 'OK', '', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-13 15:34:54', '', '0000-00-00 00:00:00', '.jpg', 24.79),
(96, '67408', 'BENSIN (Kendaraan Kantor)', '98a91ea4a6829037e28d04b47a52c08b.jpg', '', '', '46000', '100000', '', 'OK', '', 'IT CASSA', '2022-10-14 16:44:22', '', '0000-00-00 00:00:00', '.jpg', 24.79),
(97, '31275', 'BENSIN (Kendaraan Pribadi)', '574af326f501d56b6e4aed65c1a5352a.jpg', '67116ccedd6d4a658ec514f470e53dde.JPG', '80', '10,000,000', '100,000', '', 'OK', '', 'IT CASSA', '2022-10-11 11:53:49', '', '0000-00-00 00:00:00', '.jpg', 207.39),
(98, '31275', 'TOL', '3611599a278fa89434d670c7a823547e.JPG', 'c5e32c19f6a544ae1f5ae824bb0bc20d.JPG', NULL, '70,000', '800000', '', 'OK', '', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-13 17:42:17', '', '0000-00-00 00:00:00', '.JPG', 172.96),
(99, '31275', 'TOL', '0abda64c0267f057c8995b10abc84c3d.JPG', 'f5e884823b8414723fc1281c09947933.JPG', NULL, '90000', '90000', '', 'Pending', '', 'IT', '2022-09-23 17:05:05', '', '0000-00-00 00:00:00', '.JPG', 139.52),
(100, '08312', NULL, '', '', '', '', '', '', 'Pending', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', NULL),
(101, '14236', 'BENSIN (Kendaraan Pribadi)', '7e8b18f7dacb55060782316b53d35e93.png', '0832a6f1a86908baae1662a4134f4954.png', '60', '69500', '69500', '', 'OK', '', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-13 09:27:29', '', '0000-00-00 00:00:00', '.png', 49.88);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_status_mom`
--

CREATE TABLE `cassa_status_mom` (
  `id` int(3) NOT NULL,
  `id_status` varchar(20) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_status_mom`
--

INSERT INTO `cassa_status_mom` (`id`, `id_status`, `keterangan`) VALUES
(1, '1', 'M O M 1'),
(2, '2', 'M O M 2'),
(3, '3', 'M O M 3'),
(4, '4', 'M O M 4'),
(5, '5', 'M O M 5'),
(6, '6', 'TIDAK'),
(7, '7', 'GOAL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_status_project`
--

CREATE TABLE `cassa_status_project` (
  `id` int(20) NOT NULL,
  `id_status` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_status_project`
--

INSERT INTO `cassa_status_project` (`id`, `id_status`, `keterangan`) VALUES
(1, 'ID01', 'TENDER'),
(2, 'ID02', 'PENDING'),
(3, 'ID03', 'ON GOING'),
(4, 'ID04', 'FINISH'),
(5, 'ID05', 'LOOSE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_tag`
--

CREATE TABLE `cassa_tag` (
  `id` int(11) NOT NULL,
  `EmployeeID` varchar(50) NOT NULL,
  `kode_tag` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_tag`
--

INSERT INTO `cassa_tag` (`id`, `EmployeeID`, `kode_tag`) VALUES
(1, '0290622', 'TAG1210220001'),
(2, '0270822', 'TAG1210220018'),
(3, '0270822', 'TAG2710220001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cassa_transaksi_asset`
--

CREATE TABLE `cassa_transaksi_asset` (
  `id` int(5) NOT NULL,
  `EmployeeID` varchar(50) NOT NULL,
  `kode_asset` varchar(50) NOT NULL,
  `kd_transaksi` varchar(50) NOT NULL,
  `createdtime` datetime NOT NULL,
  `createdby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cassa_transaksi_asset`
--

INSERT INTO `cassa_transaksi_asset` (`id`, `EmployeeID`, `kode_asset`, `kd_transaksi`, `createdtime`, `createdby`) VALUES
(1, '0270822', 'ASSET2110220001', 'AST2110220001', '2022-10-21 10:02:35', 'IT CASSA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_login`
--

CREATE TABLE `employee_login` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `akses` varchar(50) NOT NULL,
  `updateby` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `reimbus` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_proyek`
--

CREATE TABLE `laporan_proyek` (
  `no` int(11) NOT NULL,
  `kode_lap` varchar(50) NOT NULL,
  `id_lsp` varchar(150) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `keterangan_proyek` text NOT NULL,
  `berkas` varchar(150) NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `createdtime` datetime NOT NULL,
  `updateby` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan_proyek`
--

INSERT INTO `laporan_proyek` (`no`, `kode_lap`, `id_lsp`, `tgl_laporan`, `keterangan_proyek`, `berkas`, `createdby`, `createdtime`, `updateby`, `updatetime`) VALUES
(7, 'LPK0509220001', 'LDP1508220001', '2022-09-05', '<p>risa</p>', '', 'risa', '2022-09-05 17:21:10', '', '0000-00-00 00:00:00'),
(8, 'LPK0509220002', 'LDP2508220001', '2022-09-05', '<p>2</p>', '', 'risa', '2022-09-05 17:23:29', '', '0000-00-00 00:00:00'),
(9, 'LPK0509220003', 'LDP2408220001', '2022-09-05', '<p>3</p>', '', 'RISA UMAMI', '2022-09-05 17:28:12', '', '0000-00-00 00:00:00'),
(10, 'LPK1309220001', 'LDP2408220001', '2022-09-13', '<p>tes</p>', '7aee3367e6d9af52ae083ab20cadc518.pdf', 'DIKA PRATAMA', '2022-09-13 15:48:45', '', '0000-00-00 00:00:00'),
(11, 'LPK1810220001', 'LDP2508220006', '2022-10-18', '<p>tes</p>', '48159c24d61d71b6366f6badc74f45cc.xls', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-18 17:03:28', '', '0000-00-00 00:00:00'),
(12, 'LPK1810220002', 'LDP2408220001', '2022-10-18', '', '9071400e69d5b47720c7a78dd1f56c06.pdf', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-18 17:04:09', '', '0000-00-00 00:00:00'),
(13, 'LPK1810220003', 'LDP0410220001', '2022-10-18', '<p>adadad</p>', '505de5ac49e574a82564fa87045036d2.doc', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-18 17:09:05', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `leads_project`
--

CREATE TABLE `leads_project` (
  `id` int(3) NOT NULL,
  `id_lsp` varchar(20) NOT NULL,
  `nama_pic` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `nama_project` varchar(50) NOT NULL,
  `alamat_project` text NOT NULL,
  `nama_kantor` varchar(50) NOT NULL,
  `tlp_kantor` varchar(50) NOT NULL,
  `alamat_kantor` text NOT NULL,
  `status_project` varchar(50) NOT NULL,
  `createdby` varchar(30) NOT NULL,
  `createdtime` datetime NOT NULL,
  `updateby` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `keterangan_loose` text NOT NULL,
  `tgl_start` date NOT NULL,
  `tgl_serah_terima` date NOT NULL,
  `project_manager` varchar(50) NOT NULL,
  `site_manager` varchar(50) NOT NULL,
  `spv_manager` varchar(50) DEFAULT NULL,
  `designerBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul_kerja`
--

CREATE TABLE `modul_kerja` (
  `id_modul` int(3) NOT NULL,
  `kode_modul` varchar(50) NOT NULL,
  `to` varchar(150) NOT NULL,
  `nama_proyek` varchar(150) NOT NULL,
  `tempo` date NOT NULL,
  `status_modul` varchar(50) NOT NULL DEFAULT '1',
  `createdby` varchar(150) NOT NULL,
  `createdtime` datetime NOT NULL,
  `updateby` varchar(150) NOT NULL,
  `updatetime` datetime NOT NULL,
  `tgl_proses` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `user` varchar(150) NOT NULL,
  `keterangan_modul` text NOT NULL,
  `berkas_task` varchar(150) NOT NULL,
  `kontribusi` varchar(150) NOT NULL,
  `tgl_end_task` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul_kerja`
--

INSERT INTO `modul_kerja` (`id_modul`, `kode_modul`, `to`, `nama_proyek`, `tempo`, `status_modul`, `createdby`, `createdtime`, `updateby`, `updatetime`, `tgl_proses`, `tgl_selesai`, `user`, `keterangan_modul`, `berkas_task`, `kontribusi`, `tgl_end_task`) VALUES
(17, 'MDL1309220004', 'netbeans978@gmail.com', 'project 1', '0000-00-00', '2', 'IT CASSA', '2022-09-13 10:30:45', '', '0000-00-00 00:00:00', '2022-09-13 10:31:36', '0000-00-00 00:00:00', '', '', '', '', '0000-00-00 00:00:00'),
(18, 'MDL1309220002', 'ryanmuhammadbahrudin@gmail.com', 'ter', '0000-00-00', '3', 'RISA UMAMI', '2022-09-13 13:47:38', '', '0000-00-00 00:00:00', '2022-09-13 13:47:58', '0000-00-00 00:00:00', '', '', '', '', '0000-00-00 00:00:00'),
(19, 'MDL1309220003', 'netbeans978@gmail.com', 'TES11', '2022-09-16', '3', 'RESI OKTAVIANI', '2022-09-13 16:54:00', '', '2022-09-27 16:08:19', '2022-09-14 09:57:49', '2022-09-27 16:08:19', 'IT', '', '0ede39e1b757d430e727adabe826f486.jpg', '', '0000-00-00 00:00:00'),
(20, 'MDL1409220001', 'netbeans978@gmail.com', 'ter', '2022-09-16', '2', 'IT CASSA', '2022-09-14 09:45:14', '', '0000-00-00 00:00:00', '2022-09-14 09:56:47', '0000-00-00 00:00:00', '', '', 'f2f65c50643c8b42844def6178c348c1.png', '', '0000-00-00 00:00:00'),
(22, '210902', 'netbeans978@gmail.com', 'project 1', '2022-09-23', '1', 'RYAN', '2022-09-21 10:12:21', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '0000-00-00 00:00:00'),
(23, '28475', 'netbeans978@gmail.com', 'project 1', '2022-09-24', '2', 'IT CASSA', '2022-09-21 10:32:55', '', '0000-00-00 00:00:00', '2022-09-21 10:33:35', '0000-00-00 00:00:00', '', '', '', '', '0000-00-00 00:00:00'),
(24, '65089', 'ryanmuhammadbahrudin@gmail.com', 'TES11', '2022-09-30', '2', 'IT CASSA', '2022-09-28 13:24:23', '', '0000-00-00 00:00:00', '2022-10-03 09:49:18', '0000-00-00 00:00:00', '', '', '', '', '2022-10-27 16:05:54'),
(25, '83519', 'ryanmuhammadbahrudin@gmail.com', 'project 1', '2022-10-07', '2', 'IT CASSA', '2022-10-05 15:42:46', '', '0000-00-00 00:00:00', '2022-10-05 15:43:04', '0000-00-00 00:00:00', '', '', '', '', '0000-00-00 00:00:00'),
(26, '59423', 'ryanmuhammadbahrudin@gmail.com', 'TES11', '2022-10-07', '2', 'IT CASSA', '2022-10-06 11:32:59', '', '0000-00-00 00:00:00', '2022-10-06 11:35:42', '0000-00-00 00:00:00', '', '', '', '', '0000-00-00 00:00:00'),
(27, '96472', 'ryanmuhammadbahrudin@gmail.com', 'OFFICE CASSA', '2022-10-14', '2', 'IT CASSA', '2022-10-13 09:25:00', '', '0000-00-00 00:00:00', '2022-10-14 15:59:28', '0000-00-00 00:00:00', '', '', '', '', '2022-10-27 14:21:40'),
(28, '89356', 'ryanmuhammadbahrudin@gmail.com', 'OFFICE CASSA', '2022-10-29', '2', 'AZAM ASHARI', '2022-10-28 15:26:17', '', '0000-00-00 00:00:00', '2022-10-28 15:55:40', '0000-00-00 00:00:00', '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul_kerja_chat`
--

CREATE TABLE `modul_kerja_chat` (
  `id_chat` int(11) NOT NULL,
  `kode_modul_chat` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `chat` text NOT NULL,
  `waktu_chat` datetime NOT NULL,
  `berkas` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul_kerja_chat`
--

INSERT INTO `modul_kerja_chat` (`id_chat`, `kode_modul_chat`, `username`, `firstname`, `jabatan`, `chat`, `waktu_chat`, `berkas`) VALUES
(366, '83519', 'IT Staff', '', '', '3', '2022-10-06 10:48:45', ''),
(367, '83519', 'IT Staff', '', '', 's', '2022-10-06 10:58:12', ''),
(368, '65089', 'IT Staff', '', '', 'fg', '2022-10-06 11:18:27', ''),
(369, '65089', 'IT Staff', '', '', 'c', '2022-10-06 11:20:29', ''),
(370, '83519', 'IT Staff', '', '', '3', '2022-10-06 11:21:37', ''),
(371, '65089', 'IT Staff', '', '', 'd', '2022-10-06 11:21:58', ''),
(372, '65089', 'IT Staff', '', '', 'v', '2022-10-06 11:23:27', ''),
(373, '83519', 'IT Staff', '', '', 'v', '2022-10-06 11:27:10', ''),
(374, '83519', 'IT Staff', '', '', 'Add Contributor DENI WS', '2022-10-06 11:27:18', ''),
(375, '83519', 'IT Staff', '', '', 'c', '2022-10-06 11:28:32', ''),
(376, '83519', 'IT Staff', '', '', 'f', '2022-10-06 11:28:49', ''),
(377, '65089', 'IT Staff', '', '', 'a', '2022-10-06 11:29:38', ''),
(378, '59423', 'IT Staff', '', '', 't', '2022-10-06 11:33:23', ''),
(379, '59423', 'IT Staff', '', '', 'Add Contributor RISA UMAMI', '2022-10-06 11:35:01', ''),
(380, '59423', 'IT Staff', '', '', 'b', '2022-10-06 11:35:08', ''),
(381, '59423', 'RYAN MUHAMMAD BAHRUDIN', '', '', 'Accept Task', '2022-10-06 11:35:42', ''),
(382, '59423', 'IT Staff', '', '', 'bv', '2022-10-06 11:46:13', ''),
(383, '59423', 'IT Staff', '', '', 'nb', '2022-10-06 11:46:17', ''),
(384, '65089', 'IT Staff', '', '', 'bn', '2022-10-06 11:54:54', ''),
(385, '65089', 'IT Staff', '', '', 'a', '2022-10-06 13:08:20', ''),
(386, '65089', 'RYAN IT', '', '', 'b', '2022-10-06 13:27:35', ''),
(387, '59423', 'RYAN IT', '', '', 'f', '2022-10-06 13:28:00', ''),
(388, '59423', 'RYAN IT', '', '', 'b', '2022-10-06 13:33:29', ''),
(389, '65089', 'IT Staff', '', '', 'v', '2022-10-06 14:09:25', ''),
(390, '96472', 'RYAN MUHAMMAD BAHRUDIN', '', '', 'Accept Task', '2022-10-14 15:59:28', ''),
(391, '96472', 'RYAN IT', '', '', 'tes', '2022-10-14 15:59:43', ''),
(392, '59423', 'IT Staff', '', '', 'ff', '2022-10-14 16:02:37', ''),
(393, '59423', 'RISA IT', '', '', 'dammm', '2022-10-14 16:03:06', ''),
(394, '83519', 'RYAN IT', '', '', 'Add Contributor RISA UMAMI', '2022-10-14 16:04:30', ''),
(395, '83519', 'RYAN IT', '', '', 'fafa', '2022-10-14 16:04:43', ''),
(396, '59423', 'IT Staff', '', '', 'dam', '2022-10-14 16:07:02', ''),
(397, '96472', 'IT Staff', '', '', 'dum', '2022-10-14 16:07:45', ''),
(398, '96472', 'IT Staff', '', '', 'Add Contributor RISA UMAMI', '2022-10-14 16:08:06', ''),
(399, '96472', 'IT Staff', '', '', 'dim', '2022-10-14 16:08:11', ''),
(400, '96472', 'RISA IT', '', '', 'da', '2022-10-14 16:10:42', ''),
(401, '96472', 'RISA IT', '', '', 'u', '2022-10-14 16:11:35', ''),
(402, '96472', 'RYAN IT', '', '', 'cacaca', '2022-10-14 16:12:32', ''),
(403, '96472', 'RYAN IT', '', '', '11', '2022-10-14 16:15:42', ''),
(404, '59423', 'RYAN IT', '', '', 'gg', '2022-10-14 16:15:51', ''),
(405, '96472', 'RYAN IT', '', '', 'ad', '2022-10-14 16:31:05', ''),
(406, '96472', 'RISA IT', '', '', 'dddd', '2022-10-14 16:32:07', ''),
(407, '96472', 'RISA IT', '', '', 'dddd', '2022-10-14 16:35:14', ''),
(408, '96472', 'RISA IT', '', '', 'ddd', '2022-10-14 16:36:30', ''),
(409, '28475', 'IT Direktur', '', '', 'Add Contributor CECILIA TANIA', '2022-10-26 17:23:03', ''),
(410, '28475', 'IT Direktur', '', '', 'Add Contributor CUT MUTIA SARI', '2022-10-26 17:26:39', ''),
(411, '28475', 'IT Direktur', '', '', 'Add Contributor DENI WS', '2022-10-26 17:41:30', ''),
(412, '65089', 'IT Direktur', '', '', 'sssss', '2022-10-27 09:54:22', ''),
(413, '65089', 'IT Direktur', '', '', '', '2022-10-27 09:55:02', 'a2323c76b12e8f26ea25780750d7d9cc.png'),
(414, '65089', 'AZAM Project', '', '', 'ddddd', '2022-10-27 15:58:00', ''),
(415, '65089', 'AZAM Project', '', '', 'H', '2022-10-28 14:26:57', ''),
(416, '65089', 'RYAN Qs', '', '', 'S', '2022-10-28 14:30:20', ''),
(417, '89356', 'AZAM Project', '', '', 'Add Contributor IT CASSA', '2022-10-28 15:26:35', ''),
(418, '89356', 'RYAN MUHAMMAD BAHRUDIN', '', '', 'Accept Task', '2022-10-28 15:27:18', ''),
(419, '89356', 'AZAM Project', '', '', '', '2022-10-28 15:47:54', '82ad42fc3e1aa0d4264445cac6595df2 (2).xls'),
(420, '89356', 'AZAM Project', '', '', '', '2022-10-28 15:48:32', '82ad42fc3e1aa0d4264445cac6595df2 (2).xls'),
(421, '89356', 'AZAM Project', '', '', '', '2022-10-28 15:50:02', '82ad42fc3e1aa0d4264445cac6595df2 (2).xls'),
(422, '65089', 'AZAM Project', '', '', '', '2022-10-28 15:51:24', 'd7f8a6a14429cb0e60351a82d95791f2.xls'),
(423, '89356', 'RYAN Qs', '', '', 'sssddd', '2022-10-28 15:52:17', ''),
(424, '96472', 'IT Direktur', '', '', 'efefaf', '2022-10-28 15:53:02', ''),
(425, '96472', 'RYAN Qs', '', '', 'ffefefeafa', '2022-10-28 15:53:26', ''),
(426, '89356', 'RYAN MUHAMMAD BAHRUDIN', '', '', 'Accept Task', '2022-10-28 15:55:40', ''),
(427, '89356', 'RYAN Qs', '', '', 'dwdwdw', '2022-10-28 15:55:58', ''),
(428, '89356', 'IT Direktur', '', '', 'Add Contributor ADMIN CASSA', '2022-10-28 16:38:02', ''),
(429, '89356', 'IT Direktur', '', '', 'efefef', '2022-10-28 16:39:37', ''),
(430, '89356', 'RYAN Qs', '', '', 'l', '2022-10-28 16:42:15', ''),
(431, '59423', 'RYAN Qs', '', '', 'daa', '2022-10-28 16:45:26', ''),
(432, '59423', 'IT Direktur', '', '', 'Add Contributor ADMIN CASSA', '2022-10-28 17:02:46', ''),
(433, '59423', 'IT Direktur', '', '', 'h', '2022-10-28 17:02:57', ''),
(434, '89356', 'IT Direktur', '', '', 'h', '2022-10-28 17:35:05', ''),
(435, '65089', 'IT Direktur', '', '', 'Add Contributor ADMIN CASSA', '2022-10-28 17:35:32', ''),
(436, '65089', 'IT Direktur', '', '', '.', '2022-10-28 17:36:00', ''),
(437, '65089', 'IT Direktur', '', '', '2', '2022-10-28 17:38:35', ''),
(438, '89356', 'RYAN Qs', '', '', 't', '2022-10-28 17:43:17', ''),
(439, '65089', 'RYAN Qs', '', '', 'g', '2022-10-28 19:59:39', ''),
(440, '65089', 'ADMIN Direktur', '', '', '', '2022-10-28 20:26:20', 'b140265f827cd217f1c426bc3862fbf2.pdf'),
(441, '89356', 'ADMIN Direktur', '', '', '', '2022-10-31 09:17:41', '3b2c10747fc6068b8ed165a0438cde8f.pdf'),
(442, '65089', 'AZAM Project', '', '', '', '2022-10-31 09:29:24', 'b833cf3e6adaf155b9b7ce922ad03dd7.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul_kerja_detail_sub`
--

CREATE TABLE `modul_kerja_detail_sub` (
  `id_dt_sub` int(11) NOT NULL,
  `kd_modul` varchar(100) NOT NULL,
  `id_sub` varchar(150) NOT NULL,
  `status_task_sub` text NOT NULL,
  `deskripsi_detail_sub` text NOT NULL,
  `tgl_created` date NOT NULL,
  `pembuat` varchar(150) NOT NULL,
  `file_detail_sub` varchar(100) NOT NULL,
  `kode_create` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `modul_kerja_detail_sub`
--

INSERT INTO `modul_kerja_detail_sub` (`id_dt_sub`, `kd_modul`, `id_sub`, `status_task_sub`, `deskripsi_detail_sub`, `tgl_created`, `pembuat`, `file_detail_sub`, `kode_create`) VALUES
(13, '65089', '', '1', ' 2   ', '2022-10-27', 'AZAM ASHARI', '252b4130dfcc7c4e35ae5541505e3169.pdf', 'TSKDT83657'),
(14, '65089', '', '3', ' 4 ', '2022-10-27', 'RYAN MUHAMMAD BAHRUDIN', '82ad42fc3e1aa0d4264445cac6595df2.xls', 'TSKDT10547'),
(27, '96472', '', 'judul', ' isi', '2022-11-01', 'IT CASSA', '', 'TSKDT67942');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul_kerja_detail_sub_chat`
--

CREATE TABLE `modul_kerja_detail_sub_chat` (
  `id_sub_chat` int(11) NOT NULL,
  `kode_created` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `chat` text NOT NULL,
  `waktu_chat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `modul_kerja_detail_sub_chat`
--

INSERT INTO `modul_kerja_detail_sub_chat` (`id_sub_chat`, `kode_created`, `username`, `chat`, `waktu_chat`) VALUES
(1, 'TSKDT10547', 'IT', 'fwdwdwdwdwd', '2022-10-27 12:17:37'),
(2, 'TSKDT10547', 'RYAN MUHAMMAD BAHRUDIN', 'hrhyhyhyh', '2022-10-27 12:18:05'),
(3, 'TSKDT10547', 'RYAN MUHAMMAD BAHRUDIN', 'hrhyhyhyh', '2022-10-28 12:18:05'),
(4, 'TSKDT10547', 'AZAM Project', 'Dam', '2022-10-28 10:26:40'),
(5, 'TSKDT10547', 'AZAM Project', 'v', '2022-10-28 10:29:17'),
(6, 'TSKDT10547', 'AZAM Project', 'd', '2022-10-28 10:30:24'),
(7, 'TSKDT10547', 'AZAM Project', 'c', '2022-10-28 10:31:37'),
(8, 'TSKDT10547', 'IT Direktur', 'v', '2022-10-28 10:37:16'),
(9, 'TSKDT10547', 'AZAM Project', 'b', '2022-10-28 10:41:00'),
(10, 'TSKDT83657', 'IT Direktur', 'n', '2022-10-28 10:52:07'),
(11, 'TSKDT40965', 'AZAM Project', 'v', '2022-10-28 13:48:14'),
(12, 'TSKDT83657', 'RYAN Qs', 'k', '2022-10-28 15:02:11'),
(13, 'TSKDT10547', 'AZAM Project', 'bbb', '2022-10-28 15:10:29'),
(14, 'TSKDT10547', 'AZAM Project', 'g', '2022-10-28 15:11:13'),
(15, 'TSKDT35268', 'IT Direktur', 'a', '2022-10-28 15:31:18'),
(16, 'TSKDT35268', 'AZAM Project', 'okay', '2022-10-28 16:15:02'),
(17, 'TSKDT35268', 'AZAM Project', 'th', '2022-10-28 16:17:55'),
(18, 'TSKDT30684', 'IT Direktur', 'gg', '2022-10-28 20:16:10'),
(19, 'TSKDT30684', 'IT Direktur', 'ff', '2022-10-28 20:17:52'),
(20, 'TSKDT39620', 'IT Direktur', 'dam', '2022-10-31 09:16:13'),
(21, 'TSKDT83657', 'IT Direktur', 'h', '2022-11-01 14:53:10'),
(22, 'TSKDT67942', 'IT Direktur', 'cac', '2022-11-01 17:09:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul_kerja_kontribusi`
--

CREATE TABLE `modul_kerja_kontribusi` (
  `id_kontribusi` int(11) NOT NULL,
  `kode_modul_kontribusi` varchar(150) NOT NULL,
  `penerima` varchar(150) NOT NULL,
  `createdby_kontribut` varchar(150) NOT NULL,
  `createdtime_kontribut` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul_kerja_kontribusi`
--

INSERT INTO `modul_kerja_kontribusi` (`id_kontribusi`, `kode_modul_kontribusi`, `penerima`, `createdby_kontribut`, `createdtime_kontribut`) VALUES
(47, '210902', 'AZAM ASHARI', 'IT', '2022-09-26 11:27:34'),
(48, '210902', 'CECILIA TANIA', 'IT', '2022-09-26 11:28:37'),
(49, '210902', 'DAYENNA WULANDA', 'IT', '2022-09-26 11:33:20'),
(50, '210902', 'DENI WS', 'IT', '2022-09-26 11:33:51'),
(51, '65089', 'CECILIA TANIA', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-28 14:25:57'),
(52, '65089', 'AZAM ASHARI', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-28 14:26:27'),
(53, '65089', 'DENI WS', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-28 14:28:27'),
(54, '65089', 'DAYENNA WULANDA', 'IT CASSA', '2022-09-28 14:28:58'),
(55, '83519', 'DENI WS', 'IT CASSA', '2022-10-06 11:27:18'),
(56, '59423', 'RISA UMAMI', 'IT CASSA', '2022-10-06 11:35:01'),
(58, '83519', 'RISA UMAMI', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-14 16:04:30'),
(59, '96472', 'RISA UMAMI', 'IT CASSA', '2022-10-14 16:08:06'),
(60, '28475', 'CECILIA TANIA', 'IT CASSA', '2022-10-26 17:23:03'),
(61, '28475', 'CUT MUTIA SARI', 'IT CASSA', '2022-10-26 17:26:39'),
(62, '28475', 'DENI WS', 'IT CASSA', '2022-10-26 17:41:30'),
(63, '89356', 'IT CASSA', 'AZAM ASHARI', '2022-10-28 15:26:35'),
(64, '89356', 'ADMIN CASSA', 'IT CASSA', '2022-10-28 16:38:02'),
(65, '59423', 'ADMIN CASSA', 'IT CASSA', '2022-10-28 17:02:46'),
(66, '65089', 'ADMIN CASSA', 'IT CASSA', '2022-10-28 17:35:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul_kerja_sub`
--

CREATE TABLE `modul_kerja_sub` (
  `id_sub` int(5) NOT NULL,
  `kode_modul` varchar(50) NOT NULL,
  `tugas` text NOT NULL,
  `status_tugas` varchar(50) NOT NULL DEFAULT '1',
  `berkas_file` varchar(150) NOT NULL,
  `tipe_berkas` varchar(150) NOT NULL,
  `ukuran_berkas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul_kerja_sub`
--

INSERT INTO `modul_kerja_sub` (`id_sub`, `kode_modul`, `tugas`, `status_tugas`, `berkas_file`, `tipe_berkas`, `ukuran_berkas`) VALUES
(231, 'MDL1309220003', 'adada afafafa frfrggrsgsg asfadadada sfsfsfsfs ukukuui qeq4eq434qr sgsdvfzzfzf httrhts', '3', '476c85013eb5fb3d29e43057b601705c.jpg', '', 0),
(232, 'MDL1309220003', 'buatkan kopi manis tanpa gula', '2', '476c85013eb5fb3d29e43057b601705c.jpg', '', 0),
(268, 'MDL1309220004', 'adada afafafa frfrggrsgsg asfadadada sfsfsfsfs ukukuui qeq4eq434qr sgsdvfzzfzf httrhts', '3', '', '', 0),
(269, 'RMBS2009220001', 'swsws', 'd', '', '', 0),
(270, 'RMBS2009220001', '232323', 'd', '', '', 0),
(273, '210902', '3', '1', '', '', 0),
(274, '28475', '1', '1', '', '', 0),
(275, '28475', '2', '1', '', '', 0),
(278, '83519', '1', '1', '', '', 0),
(279, '59423', 'ghj', '1', '', '', 0),
(281, '65089', 'TUGASSSS 3', '2', '', '', 0),
(282, '96472', '1', '2', '', '', 0),
(283, '89356', 'TUGAS 1 Sub task', '1', '', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `akses` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `kode`, `nama`, `username`, `password`, `akses`, `jabatan`) VALUES
(1, '0070822', 'IT CASSA', 'admin', '123', 'finance', 'Direktur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_dt`
--

CREATE TABLE `purchase_order_dt` (
  `id_dt` int(11) NOT NULL,
  `number_po` varchar(100) NOT NULL,
  `detailName` varchar(100) NOT NULL,
  `itemNo` varchar(100) NOT NULL DEFAULT '100001',
  `unitPrice` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `detailNotes` text NOT NULL,
  `itemDiscPercent` varchar(100) NOT NULL,
  `status_item` varchar(100) NOT NULL,
  `status_item_noted` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `uploadBy` varchar(100) NOT NULL,
  `uploadTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `purchase_order_dt`
--

INSERT INTO `purchase_order_dt` (`id_dt`, `number_po`, `detailName`, `itemNo`, `unitPrice`, `quantity`, `detailNotes`, `itemDiscPercent`, `status_item`, `status_item_noted`, `foto`, `uploadBy`, `uploadTime`) VALUES
(28, 'PO.2022.10.00001', '2', '100001', '2000000', '2', '', '', 'Sesuai', 'gegsgs', '06995f158ea036b71655d277e7797494.png', '', '0000-00-00 00:00:00'),
(30, 'PO.2022.10.00002', 'Ykk', '100001', '', '5', 'aadeefe', '', '', '', '', '', '0000-00-00 00:00:00'),
(31, 'PO.2022.10.00003', 'Pulpen Standard', '100001', '2000', '20', 'warna Hitam', '', '', '', '', '', '0000-00-00 00:00:00'),
(33, 'PO.2022.10.00001', 'GHHHHHHHH', '100001', '6000000', '10', '', '', 'Sesuai', 'gegsgs', '06995f158ea036b71655d277e7797494.png', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_hd`
--

CREATE TABLE `purchase_order_hd` (
  `id` int(11) NOT NULL,
  `number_` varchar(100) NOT NULL,
  `number_pr` varchar(50) NOT NULL,
  `transDate` date NOT NULL,
  `vendorNo` varchar(100) NOT NULL,
  `toAddress` text NOT NULL,
  `status_po` varchar(50) NOT NULL DEFAULT '1',
  `project` varchar(100) NOT NULL,
  `created_po` varchar(50) NOT NULL,
  `createdtime_po` datetime NOT NULL,
  `update_po_by` varchar(50) NOT NULL,
  `updateTime_po` datetime NOT NULL,
  `surat_jalan` varchar(50) NOT NULL,
  `tgl_return` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `purchase_order_hd`
--

INSERT INTO `purchase_order_hd` (`id`, `number_`, `number_pr`, `transDate`, `vendorNo`, `toAddress`, `status_po`, `project`, `created_po`, `createdtime_po`, `update_po_by`, `updateTime_po`, `surat_jalan`, `tgl_return`) VALUES
(12, 'PO.2022.10.00001', 'PR.2022.10.00001', '2022-10-25', 'V.00001', '-', '5', 'LDP1209220001', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-25 09:25:05', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-25 16:43:55', 'f6cb143836d80973d66b55d30e56c669.pdf', '2022-10-26'),
(13, 'PO.2022.10.00002', 'PR.2022.10.00002', '2022-10-25', 'V.00001', '-', '1', 'LDP2508220006', 'RESI OKTAVIANI', '2022-10-25 16:54:11', '', '0000-00-00 00:00:00', '', '0000-00-00'),
(14, 'PO.2022.10.00003', 'PR.2022.10.00003', '2022-10-26', 'V.00001', '-', '5', 'LDP1209220001', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-26 14:40:33', '', '0000-00-00 00:00:00', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_history`
--

CREATE TABLE `purchase_order_history` (
  `id_history` int(11) NOT NULL,
  `no_po` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `action_by` varchar(50) NOT NULL,
  `actiontime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_request_dt`
--

CREATE TABLE `purchase_request_dt` (
  `id_dt` int(11) NOT NULL,
  `number_po` varchar(100) NOT NULL,
  `detailName` varchar(100) NOT NULL,
  `itemNo` varchar(100) NOT NULL DEFAULT '100001',
  `unitPrice` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `detailNotes` text NOT NULL,
  `itemDiscPercent` varchar(100) NOT NULL,
  `status_item` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `uploadBy` varchar(100) NOT NULL,
  `uploadTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `purchase_request_dt`
--

INSERT INTO `purchase_request_dt` (`id_dt`, `number_po`, `detailName`, `itemNo`, `unitPrice`, `quantity`, `detailNotes`, `itemDiscPercent`, `status_item`, `foto`, `uploadBy`, `uploadTime`) VALUES
(2, 'PO.2022.10.00001', 'Buku tipis', '100001', '400000', '4', 'jangan tipis tipis ok', '', 'Sesuai', '50247b49630c40ab64bd86966bbf45f9.png', '', '0000-00-00 00:00:00'),
(6, 'PO.2022.10.00003', 'Set', '100001', '1000000', '1', '', '', '', '', '', '0000-00-00 00:00:00'),
(7, 'PO.2022.10.00003', 'sut', '100001', '', '3', 'sut sat 1', '', '', '', '', '0000-00-00 00:00:00'),
(13, 'PO.2022.10.00002', 'Kertas Lipet', '100001', '', '8', 'efefef h', '', '', '', '', '0000-00-00 00:00:00'),
(14, 'PO.2022.10.00002', 'gorengan ', '100001', '', '10', 'bakwan , tempe kering', '', '', '', '', '0000-00-00 00:00:00'),
(18, 'PO.2022.10.00004', 'Karpet Uk 12cm x 50 cm', '100001', '', '5', '', '', '', '', '', '0000-00-00 00:00:00'),
(19, 'PO.2022.10.00001', 'Buku tipis 2x2', '100001', '400000', '4', 'jangan tipis tipis ok', '', 'Sesuai', 'de1abe4e79bce13519f1b89c0f50284d.png', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_request_hd`
--

CREATE TABLE `purchase_request_hd` (
  `id` int(11) NOT NULL,
  `number_` varchar(100) NOT NULL,
  `number_pr` varchar(50) NOT NULL,
  `transDate` date NOT NULL,
  `vendorNo` varchar(100) NOT NULL,
  `toAddress` text NOT NULL,
  `status_pr` varchar(50) NOT NULL DEFAULT '1',
  `project` varchar(100) NOT NULL,
  `created_pr` varchar(50) NOT NULL,
  `createdtime_pr` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_kode` varchar(15) NOT NULL,
  `barang_nama` varchar(100) DEFAULT NULL,
  `barang_harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_kode`, `barang_nama`, `barang_harga`) VALUES
('8886057883665', 'Kratindaeng Botol', 5000),
('8992388133529', 'Oceana Sea Salt Lemonade', 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ceklist`
--

CREATE TABLE `tbl_ceklist` (
  `id_ceklist` int(11) NOT NULL,
  `kode_ceklist` varchar(50) NOT NULL,
  `id_lsp_ceklist` varchar(150) NOT NULL,
  `tgl_ceklist` datetime NOT NULL,
  `user_ceklist` varchar(50) NOT NULL,
  `lokasi_ceklist` varchar(100) NOT NULL,
  `duedate_ceklist` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_ceklist`
--

INSERT INTO `tbl_ceklist` (`id_ceklist`, `kode_ceklist`, `id_lsp_ceklist`, `tgl_ceklist`, `user_ceklist`, `lokasi_ceklist`, `duedate_ceklist`) VALUES
(4, 'C61038', 'LDP2508220001', '2022-09-30 15:26:55', 'IT CASSA', 'r tengah', '2022-10-05'),
(5, 'C53409', 'LDP2508220001', '2022-09-30 15:28:07', 'IT CASSA', 'r dalem', '2022-09-20'),
(6, 'C04362', 'LDP2508220001', '2022-09-30 16:57:23', 'RYAN MUHAMMAD BAHRUDIN', 'Lapangan', '2022-10-07'),
(7, 'C58960', 'LDP1209220001', '2022-10-12 15:52:55', 'IT CASSA', 'R Miting', '2022-10-13'),
(8, 'C17896', 'LDP1209220001', '2022-10-12 15:53:38', 'IT CASSA', 'R Tengah', '2022-10-13'),
(9, 'C21358', 'LDP1209220001', '2022-10-12 15:54:25', 'IT CASSA', 'R Dalam', '2022-10-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ceklist_sub`
--

CREATE TABLE `tbl_ceklist_sub` (
  `id_cek_sub` int(11) NOT NULL,
  `kode_ceklist` varchar(100) NOT NULL,
  `foto_sebelum` varchar(150) NOT NULL,
  `ket_ceklist` text NOT NULL,
  `foto_sesudah` varchar(150) NOT NULL,
  `ket_sesudah` text NOT NULL,
  `upload_time_s` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_ceklist_sub`
--

INSERT INTO `tbl_ceklist_sub` (`id_cek_sub`, `kode_ceklist`, `foto_sebelum`, `ket_ceklist`, `foto_sesudah`, `ket_sesudah`, `upload_time_s`) VALUES
(5, 'C61038', '50d170800ca76202be054a4c5d89f029.png', '1', '', 'y', '2022-09-30 16:31:42'),
(6, 'C61038', '949031f402ba3e6fe503327ae3a7ea22.png', '2', '', '', '0000-00-00 00:00:00'),
(7, 'C53409', 'd3a57661528fa66926c6a7714de6fd57.png', 'hanya1', 'bd859289e376796cb944ad071f815181.jpeg', 'Suda', '2022-09-30 17:34:51'),
(8, 'C04362', '8224d8439d1ab1c3662c9963eb174878.png', 'Rumput Kotor', '', 'Sudah di syapu', '2022-09-30 16:58:10'),
(9, 'C04362', 'ca33f0c2302bfcac1f6e1d1e0e523d57.png', 'Rumput Kurang Panjang', '', '', '0000-00-00 00:00:00'),
(10, 'C58960', 'c1.jpeg', 'tes', '', '', '0000-00-00 00:00:00'),
(11, 'C17896', 'ab4fb47867d70e5cb05ba46d8e52253e.png', 'gh', '', '', '0000-00-00 00:00:00'),
(12, 'C21358', 'BUKTI TRANSFER CECIL.jpeg', 'yjhjhj', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_id` int(5) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_department`
--

INSERT INTO `tbl_department` (`department_id`, `department_name`) VALUES
(1, 'IT'),
(2, 'MARKETING'),
(3, 'HRGA'),
(6, 'COSTING'),
(7, 'GUDANG'),
(8, 'FINANCE'),
(12, 'PURCHASING'),
(13, 'ACC&TAX'),
(14, 'AUDIT'),
(15, 'KACAB'),
(16, 'DIREKTUR'),
(17, 'PLAN MANAGER'),
(19, 'IND-RAK'),
(20, 'M PRODUKSI'),
(21, 'MANAGEMENT'),
(22, 'HELPER & MULTI'),
(23, 'PD'),
(25, 'DIV');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_designations`
--

CREATE TABLE `tbl_designations` (
  `designations_id` int(5) NOT NULL,
  `department_id` int(11) NOT NULL,
  `designations` varchar(100) NOT NULL,
  `dept` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_designations`
--

INSERT INTO `tbl_designations` (`designations_id`, `department_id`, `designations`, `dept`) VALUES
(8, 2, 'SALES', 'STAFF'),
(9, 2, 'MANAGER ', 'MANAGEMENT'),
(15, 3, 'STAFF ', 'STAFF'),
(16, 3, 'MANAGER', 'MANAGEMENT'),
(17, 6, 'STAFF', 'STAFF'),
(18, 7, 'KEPALA GUDANG', 'STAFF'),
(19, 8, 'STAFF', 'STAFF'),
(25, 2, 'DEPUTI MANAGER ', 'MANAGEMENT'),
(26, 8, 'MANAGER ', 'MANAGEMENT'),
(27, 12, 'MANAGER', 'MANAGEMENT'),
(28, 12, 'STAFF', 'STAFF'),
(29, 13, 'MANAGER', 'MANAGEMENT'),
(30, 13, 'SUPERVISOR ACC', 'STAFF'),
(31, 13, 'STAFF ACC', 'STAFF'),
(32, 13, 'SUPERVISOR  TAX', 'STAFF'),
(33, 13, 'STAFF TAX', 'STAFF'),
(34, 6, 'MANAGER', 'MANAGEMENT'),
(35, 14, 'INTERNAL AUDIT', 'STAFF'),
(36, 7, 'STAFF', 'STAFF'),
(37, 7, 'KARYAWAN', 'GUDANG'),
(38, 7, 'ADMIN', 'GUDANG'),
(39, 2, 'ADMIN ', 'STAFF'),
(41, 15, 'KEPALA CABANG', 'MANAGEMENT'),
(43, 13, 'MANAGER ACC&TAX; (IND)', 'MANAGEMENT'),
(45, 16, 'DIREKTUR DRAGON', 'MANAGEMENT'),
(46, 19, 'IND-RAK', ''),
(58, 17, 'PLAN MANAGER', 'MANAGEMENT'),
(137, 20, 'IND-RAK', ''),
(138, 21, 'DEPUTI MANAGER', 'MANAGEMENT'),
(139, 22, 'HELPER', 'STAFF'),
(140, 22, 'MULTI', 'STAFF'),
(141, 1, 'DESAIN GRAFIS', 'STAFF'),
(142, 1, 'PROGRAMMER', 'STAFF'),
(143, 1, 'SUPPORT', 'STAFF'),
(144, 2, 'SUPERVISOR', 'STAFF'),
(145, 3, 'SUPIR', 'SUPIR'),
(146, 3, 'KENEK', 'KENEK'),
(147, 3, 'MEKANIK', ''),
(148, 3, 'KEPALA OPERASIONAL', 'STAFF'),
(149, 3, 'GA', 'STAFF'),
(150, 23, 'SUPERVISOR', 'STAFF'),
(151, 23, 'STAFF', 'STAFF'),
(152, 3, 'OFFICE BOY', 'STAFF'),
(153, 8, 'KOLEKTOR', 'STAFF'),
(154, 25, 'JAB', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_issue`
--

CREATE TABLE `tbl_issue` (
  `id_issue` int(11) NOT NULL,
  `kode_issue` varchar(50) NOT NULL,
  `id_lsp_issue` varchar(50) NOT NULL,
  `judul_issue` varchar(150) NOT NULL,
  `ket_issu` text NOT NULL,
  `created_issue` varchar(50) NOT NULL,
  `created_time_issue` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_issue`
--

INSERT INTO `tbl_issue` (`id_issue`, `kode_issue`, `id_lsp_issue`, `judul_issue`, `ket_issu`, `created_issue`, `created_time_issue`) VALUES
(13, 'I29568', 'LDP2508220001', '', 'HD', 'IT CASSA', '2022-09-29 13:38:45'),
(14, 'I01256', 'LDP2508220001', ' Air Galon', 'RYAN MUHAMMAD BAHRUDIN RYAN MUHAMMAD BAHRUDIN RYAN MUHAMMAD BAHRUDINRYAN MUHAMMAD BAHRUDINRYAN MUHAMMAD BAHRUDIN', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-29 14:41:07'),
(15, 'I85274', 'LDP2508220001', ' 1', '2', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-29 16:36:31'),
(16, 'I51783', 'LDP2508220001', ' Judul 1', 'keterangan 1', 'IT CASSA', '2022-09-30 09:31:33'),
(17, 'I04789', 'LDP2508220001', ' R1', '', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-30 09:34:32'),
(18, 'I43195', 'LDP2508220001', ' ', '', 'IT CASSA', '2022-10-04 16:36:58'),
(19, 'I03894', 'LDP2508220001', ' ', '', 'TANIA DISSY SARASWATI', '2022-10-04 17:35:02'),
(20, 'I13092', 'LDP2508220001', ' ', '', 'IT CASSA', '2022-10-04 17:36:26'),
(21, 'I08935', 'LDP2508220001', ' ', '', 'TANIA DISSY SARASWATI', '2022-10-04 17:39:10'),
(22, 'I15326', 'LDP2508220001', ' ', '', 'TANIA DISSY SARASWATI', '2022-10-04 17:39:26'),
(23, 'I17346', 'LDP2508220001', 'a', '', 'TANIA DISSY SARASWATI', '2022-10-04 17:40:52'),
(24, 'I75183', 'LDP2508220001', 's', '', 'TANIA DISSY SARASWATI', '2022-10-04 17:41:30'),
(25, 'I48321', 'LDP2508220001', 's', '', 'TANIA DISSY SARASWATI', '2022-10-04 17:42:13'),
(26, 'I27104', 'LDP2508220001', 's', '', 'TANIA DISSY SARASWATI', '2022-10-04 17:43:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_issue_sub`
--

CREATE TABLE `tbl_issue_sub` (
  `id_sub_issue` int(11) NOT NULL,
  `kode_issue` varchar(50) NOT NULL,
  `issue` text NOT NULL,
  `proglem_solved` text NOT NULL,
  `created_issue_dt` varchar(50) NOT NULL,
  `createdtime_issue_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_issue_sub`
--

INSERT INTO `tbl_issue_sub` (`id_sub_issue`, `kode_issue`, `issue`, `proglem_solved`, `created_issue_dt`, `createdtime_issue_dt`) VALUES
(3, 'I29568', 'DT1', '', '', '0000-00-00 00:00:00'),
(4, 'I29568', 'DT2', '', '', '0000-00-00 00:00:00'),
(9, 'I01256', 'Beli Galon1', '<p>gm</p>', 'IT CASSA', '2022-09-30 09:26:20'),
(10, 'I01256', 'Beli 2', '<p>kyt</p>', 'IT CASSA', '2022-09-30 09:26:15'),
(11, 'I01256', 'Beli 3', '<p>ky</p>', 'IT CASSA', '2022-09-29 16:10:00'),
(12, 'I85274', '3', '<p>r</p>', 'IT CASSA', '2022-09-30 09:33:33'),
(13, 'I85274', '4', '<p>f</p>', 'IT CASSA', '2022-09-30 09:31:31'),
(14, 'I51783', 'issue 1', '', '', '0000-00-00 00:00:00'),
(15, 'I51783', 'issue2', '', '', '0000-00-00 00:00:00'),
(16, 'I51783', 'issue3', '', '', '0000-00-00 00:00:00'),
(17, 'I51783', 'issue4', '', '', '0000-00-00 00:00:00'),
(18, 'I04789', 'I1', '<p>d</p>', 'RYAN MUHAMMAD BAHRUDIN', '2022-09-30 16:52:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_notif`
--

CREATE TABLE `tbl_notif` (
  `id_notif` int(11) NOT NULL,
  `id_modul` varchar(50) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `status_baca` varchar(5) NOT NULL DEFAULT '1',
  `creat_at` datetime NOT NULL,
  `noted` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_notif`
--

INSERT INTO `tbl_notif` (`id_notif`, `id_modul`, `kepada`, `dari`, `status_baca`, `creat_at`, `noted`) VALUES
(680, '65089', 'IT CASSA', 'RYAN', '2', '2022-10-28 19:59:39', 'Comment,Task Id 65089'),
(681, '65089', 'CECILIA TANIA', 'RYAN MUHAMMAD BAHRUDIN', '1', '2022-10-28 19:59:05', 'Comment,Task Id 65089'),
(682, '65089', 'AZAM ASHARI', 'RYAN MUHAMMAD BAHRUDIN', '2', '2022-10-28 19:59:05', 'Comment,Task Id 65089'),
(683, '65089', 'DENI WS', 'RYAN MUHAMMAD BAHRUDIN', '1', '2022-10-28 19:59:05', 'Comment,Task Id 65089'),
(684, '65089', 'DAYENNA WULANDA', 'RYAN MUHAMMAD BAHRUDIN', '1', '2022-10-28 19:59:05', 'Comment,Task Id 65089'),
(685, '65089', 'ADMIN CASSA', 'RYAN MUHAMMAD BAHRUDIN', '2', '2022-10-28 19:59:05', 'Comment,Task Id 65089'),
(686, '65089', 'RYAN MUHAMMAD BAHRUDIN', 'IT', '2', '2022-10-28 20:16:10', 'Comment,Detail Task Id 65089'),
(687, '65089', 'CECILIA TANIA', 'IT CASSA', '1', '2022-10-28 20:16:05', 'Comment Detail,Task Id TSKDT30684'),
(688, '65089', 'AZAM ASHARI', 'IT CASSA', '2', '2022-10-28 20:16:05', 'Comment Detail,Task Id TSKDT30684'),
(689, '65089', 'DENI WS', 'IT CASSA', '1', '2022-10-28 20:16:05', 'Comment Detail,Task Id TSKDT30684'),
(690, '65089', 'DAYENNA WULANDA', 'IT CASSA', '1', '2022-10-28 20:16:05', 'Comment Detail,Task Id TSKDT30684'),
(691, '65089', 'ADMIN CASSA', 'IT CASSA', '2', '2022-10-28 20:16:05', 'Comment Detail,Task Id TSKDT30684'),
(692, '65089', 'RYAN MUHAMMAD BAHRUDIN', 'IT', '2', '2022-10-28 20:17:52', 'Comment,Detail Task Id 65089'),
(693, '65089', 'CECILIA TANIA', 'IT CASSA', '1', '2022-10-28 20:17:46', 'Comment Detail,Task Id TSKDT30684'),
(694, '65089', 'AZAM ASHARI', 'IT CASSA', '2', '2022-10-28 20:17:46', 'Comment Detail,Task Id TSKDT30684'),
(695, '65089', 'DENI WS', 'IT CASSA', '1', '2022-10-28 20:17:46', 'Comment Detail,Task Id TSKDT30684'),
(696, '65089', 'DAYENNA WULANDA', 'IT CASSA', '1', '2022-10-28 20:17:46', 'Comment Detail,Task Id TSKDT30684'),
(697, '65089', 'ADMIN CASSA', 'IT CASSA', '2', '2022-10-28 20:17:46', 'Comment Detail,Task Id TSKDT30684'),
(698, '65089', 'RYAN MUHAMMAD BAHRUDIN', 'ADMIN CASSA', '2', '2022-10-28 20:26:10', 'Add detail,Task Id 65089'),
(699, '65089', 'IT CASSA', 'ADMIN CASSA', '2', '2022-10-28 20:26:10', 'Add detail,Task Id 65089'),
(700, '65089', 'CECILIA TANIA', 'ADMIN CASSA', '1', '2022-10-28 20:26:04', 'Add detail,Task Id 65089'),
(701, '65089', 'AZAM ASHARI', 'ADMIN CASSA', '2', '2022-10-28 20:26:04', 'Add detail,Task Id 65089'),
(702, '65089', 'DENI WS', 'ADMIN CASSA', '1', '2022-10-28 20:26:04', 'Add detail,Task Id 65089'),
(703, '65089', 'DAYENNA WULANDA', 'ADMIN CASSA', '1', '2022-10-28 20:26:04', 'Add detail,Task Id 65089'),
(704, '65089', 'ADMIN CASSA', 'ADMIN CASSA', '2', '2022-10-28 20:26:04', 'Add detail,Task Id 65089'),
(705, '65089', 'RYAN MUHAMMAD BAHRUDIN', 'ADMIN', '2', '2022-10-28 20:26:20', 'Add File,Task Id 65089'),
(706, '65089', 'IT CASSA', 'ADMIN', '2', '2022-10-28 20:26:20', 'Add File,Task Id 65089'),
(707, '65089', 'CECILIA TANIA', 'ADMIN CASSA', '1', '2022-10-28 20:26:10', 'Add File,Task Id 65089'),
(708, '65089', 'AZAM ASHARI', 'ADMIN CASSA', '2', '2022-10-28 20:26:10', 'Add File,Task Id 65089'),
(709, '65089', 'DENI WS', 'ADMIN CASSA', '1', '2022-10-28 20:26:10', 'Add File,Task Id 65089'),
(710, '65089', 'DAYENNA WULANDA', 'ADMIN CASSA', '1', '2022-10-28 20:26:10', 'Add File,Task Id 65089'),
(711, '65089', 'ADMIN CASSA', 'ADMIN CASSA', '2', '2022-10-28 20:26:10', 'Add File,Task Id 65089'),
(712, '89356', 'RYAN MUHAMMAD BAHRUDIN', 'IT', '2', '2022-10-31 09:16:13', 'Comment,Detail Task Id 89356'),
(713, '89356', 'AZAM ASHARI', 'IT', '1', '2022-10-31 09:16:13', 'Comment,Detail Task Id 89356'),
(714, '89356', 'IT CASSA', 'IT CASSA', '2', '2022-10-31 09:16:05', 'Comment Detail,Task Id TSKDT39620'),
(715, '89356', 'ADMIN CASSA', 'IT CASSA', '2', '2022-10-31 09:16:05', 'Comment Detail,Task Id TSKDT39620'),
(716, '89356', 'RYAN MUHAMMAD BAHRUDIN', 'ADMIN', '2', '2022-10-31 09:17:41', 'Add File,Task Id 89356'),
(717, '89356', 'AZAM ASHARI', 'ADMIN', '1', '2022-10-31 09:17:41', 'Add File,Task Id 89356'),
(718, '89356', 'IT CASSA', 'ADMIN CASSA', '2', '2022-10-31 09:17:29', 'Add File,Task Id 89356'),
(719, '89356', 'ADMIN CASSA', 'ADMIN CASSA', '2', '2022-10-31 09:17:29', 'Add File,Task Id 89356'),
(720, '89356', 'RYAN MUHAMMAD BAHRUDIN', 'ADMIN CASSA', '2', '2022-10-31 09:28:11', 'Add detail,Task Id 89356'),
(721, '89356', 'AZAM ASHARI', 'ADMIN CASSA', '1', '2022-10-31 09:28:11', 'Add detail,Task Id 89356'),
(722, '89356', 'IT CASSA', 'ADMIN CASSA', '2', '2022-10-31 09:20:37', 'Add detail,Task Id 89356'),
(723, '89356', 'ADMIN CASSA', 'ADMIN CASSA', '2', '2022-10-31 09:20:37', 'Add detail,Task Id 89356'),
(724, '65089', 'RYAN MUHAMMAD BAHRUDIN', 'AZAM', '2', '2022-10-31 09:29:24', 'Add File,Task Id 65089'),
(725, '65089', 'CECILIA TANIA', 'AZAM ASHARI', '1', '2022-10-31 09:29:12', 'Add File,Task Id 65089'),
(726, '65089', 'AZAM ASHARI', 'AZAM ASHARI', '2', '2022-10-31 09:29:12', 'Add File,Task Id 65089'),
(727, '65089', 'DENI WS', 'AZAM ASHARI', '1', '2022-10-31 09:29:12', 'Add File,Task Id 65089'),
(728, '65089', 'DAYENNA WULANDA', 'AZAM ASHARI', '1', '2022-10-31 09:29:12', 'Add File,Task Id 65089'),
(729, '65089', 'ADMIN CASSA', 'AZAM ASHARI', '1', '2022-10-31 09:29:12', 'Add File,Task Id 65089'),
(730, '65089', '', 'IT CASSA', '1', '2022-11-01 13:56:10', 'Add detail,Task Id 65089'),
(731, '65089', 'IT CASSA', 'IT CASSA', '2', '2022-11-01 13:56:10', 'Add detail,Task Id 65089'),
(732, '65089', '', 'IT', '1', '2022-11-01 14:53:10', 'Comment,Detail Task Id 65089'),
(733, '96472', '', 'IT CASSA', '1', '2022-11-01 17:08:58', 'Add detail,Task Id 96472'),
(734, '96472', 'IT CASSA', 'IT CASSA', '2', '2022-11-01 17:08:58', 'Add detail,Task Id 96472'),
(735, '96472', '', 'IT', '1', '2022-11-01 17:09:12', 'Comment,Detail Task Id 96472');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_notif_detail_sub`
--

CREATE TABLE `tbl_notif_detail_sub` (
  `id_notif` int(11) NOT NULL,
  `id_modul` varchar(100) NOT NULL,
  `kepada` varchar(100) NOT NULL,
  `dari` varchar(100) NOT NULL,
  `status_baca` varchar(50) NOT NULL DEFAULT '1',
  `creat_at` datetime NOT NULL,
  `noted` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_notif_detail_sub`
--

INSERT INTO `tbl_notif_detail_sub` (`id_notif`, `id_modul`, `kepada`, `dari`, `status_baca`, `creat_at`, `noted`) VALUES
(106, 'TSKDT30684', 'RYAN MUHAMMAD BAHRUDIN', 'IT', '1', '2022-10-28 20:17:52', 'Comment,Detail Task Id TSKDT30684'),
(107, 'TSKDT30684', 'CECILIA TANIA', 'IT CASSA', '1', '2022-10-28 20:17:46', 'Comment Detail,Task Id TSKDT30684'),
(108, 'TSKDT30684', 'AZAM ASHARI', 'IT CASSA', '1', '2022-10-28 20:17:46', 'Comment Detail,Task Id TSKDT30684'),
(109, 'TSKDT30684', 'DENI WS', 'IT CASSA', '1', '2022-10-28 20:17:46', 'Comment Detail,Task Id TSKDT30684'),
(110, 'TSKDT30684', 'DAYENNA WULANDA', 'IT CASSA', '1', '2022-10-28 20:17:46', 'Comment Detail,Task Id TSKDT30684'),
(111, 'TSKDT30684', 'ADMIN CASSA', 'IT CASSA', '2', '2022-10-28 20:17:46', 'Comment Detail,Task Id TSKDT30684'),
(112, 'TSKDT39620', 'RYAN MUHAMMAD BAHRUDIN', 'IT', '2', '2022-10-31 09:16:13', 'Comment,Detail Task Id TSKDT39620'),
(113, 'TSKDT39620', 'AZAM ASHARI', 'IT', '1', '2022-10-31 09:16:13', 'Comment,Detail Task Id TSKDT39620'),
(114, 'TSKDT39620', 'IT CASSA', 'IT CASSA', '2', '2022-10-31 09:16:05', 'Comment Detail,Task Id TSKDT39620'),
(115, 'TSKDT39620', 'ADMIN CASSA', 'IT CASSA', '1', '2022-10-31 09:16:05', 'Comment Detail,Task Id TSKDT39620'),
(116, 'TSKDT83657', '', 'IT', '1', '2022-11-01 14:53:10', 'Comment,Detail Task Id TSKDT83657'),
(117, 'TSKDT67942', '', 'IT', '1', '2022-11-01 17:09:12', 'Comment,Detail Task Id TSKDT67942');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_notif_img`
--

CREATE TABLE `tbl_notif_img` (
  `id_notif` int(11) NOT NULL,
  `id_modul` varchar(50) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `status_baca` varchar(5) NOT NULL DEFAULT '1',
  `creat_at` datetime NOT NULL,
  `noted` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_notif_img`
--

INSERT INTO `tbl_notif_img` (`id_notif`, `id_modul`, `kepada`, `dari`, `status_baca`, `creat_at`, `noted`) VALUES
(260, '20899', 'IT', 'RISA UMAMI', '2', '2022-09-27 14:11:32', 'Upload Img Daily Report'),
(261, '20899', 'IT', 'RISA UMAMI', '2', '2022-09-27 14:11:32', 'Upload Img Daily Report'),
(262, '20899', 'IT', 'RISA UMAMI', '2', '2022-09-27 14:11:32', 'Upload Img Daily Report'),
(263, '20899', 'IT', 'RISA UMAMI', '2', '2022-09-27 14:13:16', 'Upload Img Daily Report'),
(264, '20899', 'IT', 'RISA UMAMI', '2', '2022-09-27 14:13:16', 'Upload Img Daily Report'),
(265, '20899', 'IT', 'RISA UMAMI', '2', '2022-09-27 14:13:16', 'Upload Img Daily Report'),
(266, '20899', 'IT', 'RISA UMAMI', '2', '2022-09-27 14:15:12', 'Upload Img Daily Report'),
(267, '20899', 'IT', 'RISA UMAMI', '2', '2022-09-27 14:15:12', 'Upload Img Daily Report'),
(268, '20899', 'IT', 'RISA UMAMI', '2', '2022-09-27 14:15:12', 'Upload Img Daily Report'),
(269, '20899', 'IT', 'RISA UMAMI', '2', '2022-09-27 14:15:12', 'Upload Img Daily Report'),
(270, '59341', 'IT', 'RYAN MUHAMMAD BAHRUDIN', '2', '2022-09-27 16:24:49', 'Upload Img ,TES11'),
(271, '59341', 'IT', 'RYAN MUHAMMAD BAHRUDIN', '2', '2022-09-27 16:24:49', 'Upload Img ,TES11'),
(272, '59341', 'IT', 'RYAN MUHAMMAD BAHRUDIN', '2', '2022-09-27 16:24:49', 'Upload Img ,TES11'),
(273, '90571', 'IT', 'RYAN MUHAMMAD BAHRUDIN', '1', '2022-09-28 09:14:24', 'Upload Img ,TES11'),
(274, '90571', 'IT', 'RYAN MUHAMMAD BAHRUDIN', '1', '2022-09-28 09:14:24', 'Upload Img ,TES11'),
(275, '75138', 'IT CASSA', 'RYAN MUHAMMAD BAHRUDIN', '2', '2022-10-25 15:08:20', 'Upload Img ,OFFICE CASSA'),
(276, '75138', 'IT CASSA', 'RYAN MUHAMMAD BAHRUDIN', '2', '2022-10-25 15:08:20', 'Upload Img ,OFFICE CASSA'),
(277, '75138', 'IT CASSA', 'RYAN MUHAMMAD BAHRUDIN', '2', '2022-10-25 15:08:20', 'Upload Img ,OFFICE CASSA'),
(278, '75138', 'IT CASSA', 'RYAN MUHAMMAD BAHRUDIN', '2', '2022-10-25 15:08:20', 'Upload Img ,OFFICE CASSA'),
(279, '75138', 'IT CASSA', 'RYAN MUHAMMAD BAHRUDIN', '2', '2022-10-25 15:08:20', 'Upload Img ,OFFICE CASSA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_notif_payment`
--

CREATE TABLE `tbl_notif_payment` (
  `id_notif` int(11) NOT NULL,
  `id_payment` varchar(50) NOT NULL,
  `status_baca` varchar(100) NOT NULL DEFAULT '1',
  `creat_at` datetime NOT NULL,
  `noted` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_notif_payment`
--

INSERT INTO `tbl_notif_payment` (`id_notif`, `id_payment`, `status_baca`, `creat_at`, `noted`) VALUES
(9, '25', '2', '2022-10-06 17:13:50', 'Payment approved'),
(10, '23', '2', '2022-10-06 17:13:51', 'Payment approved'),
(11, '24', '2', '2022-10-06 17:13:52', 'Payment approved'),
(12, '21', '2', '2022-10-06 17:13:53', 'Payment approved');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id_payment` int(11) NOT NULL,
  `header_payment` varchar(150) NOT NULL,
  `kod_payment` varchar(100) NOT NULL,
  `no_spk` varchar(100) NOT NULL,
  `tgl_payment` date NOT NULL,
  `project_payment` varchar(100) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `almount` varchar(50) NOT NULL,
  `total_pajak` varchar(50) NOT NULL,
  `total_payment` varchar(50) NOT NULL,
  `note_payment` text NOT NULL,
  `status_approval` varchar(150) NOT NULL DEFAULT '1',
  `approvalBy` varchar(150) NOT NULL,
  `approvalTime` datetime NOT NULL,
  `createdBy_payment` varchar(150) NOT NULL,
  `createdTime_payment` datetime NOT NULL,
  `update_payBy` varchar(150) NOT NULL,
  `timeupdate_pay` datetime NOT NULL,
  `status_klik` varchar(50) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_payment`
--

INSERT INTO `tbl_payment` (`id_payment`, `header_payment`, `kod_payment`, `no_spk`, `tgl_payment`, `project_payment`, `vendor`, `almount`, `total_pajak`, `total_payment`, `note_payment`, `status_approval`, `approvalBy`, `approvalTime`, `createdBy_payment`, `createdTime_payment`, `update_payBy`, `timeupdate_pay`, `status_klik`) VALUES
(44, 'CAHAYA SELARAS AGUNG,PT', '', '01', '2022-10-13', 'LDP1209220001', '151', '100000', '10000', '90000', '', '3', 'IT CASSA', '2022-10-14 13:28:54', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-13 11:37:55', '', '0000-00-00 00:00:00', '1'),
(45, 'CAHAYA SELARAS AGUNG,PT', '', '02', '2022-10-18', 'LDP1209220001', '151', '100000', '1000', '99000', '', '3', 'IT CASSA', '2022-10-18 15:47:49', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-18 15:41:16', '', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment_hd`
--

CREATE TABLE `tbl_payment_hd` (
  `id_payment` int(11) NOT NULL,
  `kod_payment` varchar(50) NOT NULL,
  `metod_payment` varchar(50) NOT NULL,
  `tgl_payment` date NOT NULL,
  `createdBy_payment` varchar(50) NOT NULL,
  `createdTime_payment` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment_supplier`
--

CREATE TABLE `tbl_payment_supplier` (
  `id_pay_supp` int(11) NOT NULL,
  `kategori_pay` varchar(50) NOT NULL,
  `kod_payment` varchar(100) NOT NULL,
  `pay_supplier_id` varchar(100) NOT NULL,
  `pay_supplier_almount` varchar(100) NOT NULL,
  `pay_supplier_status` varchar(100) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_payment_supplier`
--

INSERT INTO `tbl_payment_supplier` (`id_pay_supp`, `kategori_pay`, `kod_payment`, `pay_supplier_id`, `pay_supplier_almount`, `pay_supplier_status`) VALUES
(1, 'Supplier', 'P6497', '1', '4000000', '1'),
(2, 'Supplier', 'P0312', '1', '800000', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment_vendor`
--

CREATE TABLE `tbl_payment_vendor` (
  `id_pay_ven` int(11) NOT NULL,
  `kategori_pay` varchar(50) NOT NULL,
  `kod_payment` varchar(100) NOT NULL,
  `pay_vendor_id` varchar(100) NOT NULL,
  `pay_vendor_almount` varchar(100) NOT NULL,
  `pay_vendor_status` varchar(100) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_payment_vendor`
--

INSERT INTO `tbl_payment_vendor` (`id_pay_ven`, `kategori_pay`, `kod_payment`, `pay_vendor_id`, `pay_vendor_almount`, `pay_vendor_status`) VALUES
(1, 'Vendor', 'P7021', '8', '5000000', '1'),
(2, 'Vendor', 'P6257', '9', '1000000', '1'),
(3, 'Vendor', 'P6497', '9', '10000000', '1'),
(5, 'Vendor', 'P0312', '8', '900000', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `id_p` int(11) NOT NULL,
  `tanggal_p` date NOT NULL,
  `created_p` varchar(150) NOT NULL,
  `createdtime_p` datetime NOT NULL,
  `uraian` text NOT NULL,
  `status_p` varchar(50) NOT NULL DEFAULT '1',
  `updateby_p` varchar(50) NOT NULL,
  `updatetime_p` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`id_p`, `tanggal_p`, `created_p`, `createdtime_p`, `uraian`, `status_p`, `updateby_p`, `updatetime_p`) VALUES
(1, '2022-10-17', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-17 05:21:17', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">KORIDOR :</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Tidak usah lapis partisi lagi yang menempel dengan tenant lain</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">area yang menghadap koridor polos&nbsp;</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">CEILING</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l2 level1 lfo2; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Ducting untuk saluran udara harus lapis Kain tidak boleh langsung cat,, yang plafon boleh langsung cat (<strong>VOC, waterbased ga bau</strong>)</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l2 level1 lfo2; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">pakai <strong>Transfer duct</strong> untuk ruangan partisi tertutup uk 60 x 40</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">SCREEDING</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l3 level1 lfo3; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">make sure screeding cover pipa conduit (opsi bisa pakai hebel cover semen, pakai material yang ringan dan tidak basah, minimalisir debu, <strong>cover plastik cor</strong>)</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l3 level1 lfo3; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Screeding boleh mentok parapet</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">RUANG SERVER&nbsp;</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l1 level1 lfo4; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Pakai Halotron 3 kg (Tidak boleh splinker)</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l1 level1 lfo4; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Ruang server request pakai switch ke sumber listrik 2 gedung jika ada maintainance tidak mati</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">PROTEKSI LIFT</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l5 level1 lfo5; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">pakai triplek 3mm cover seluruh lift service</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l5 level1 lfo5; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">koridor menggunakan karpet</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">TEKNIK KERJA</span></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">ijin kerja masuk barang h-1 (dari jam 19.00-24.00 <strong>ONTIME</strong>) jika lebih dari jam 24.00 buatkan ijin kerja untuk 2 hari</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Jam Kerja Weekdays 19.00-05.00, Sabtu (13.00-05.00) Minggu 24 Hour</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Start Kerja Pakai APD <strong>(Rompi, sepatu safety/Boots dan rompi)</strong></span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Minta APAR tambahan dan P3K</span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Air ambil di B1, jika pakai lift umum <strong>proteksi dan bersih</strong></span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Listrik kerja pakai tarikan dan buat <strong>panel box temporer</strong></span></li>\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">ID Card Harga nya <strong>@ 5000 </strong>per pcs akan di tagih</span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: EN-ID;\">Furniture basis kayu lapis AF1 (fixed furniture dan yang nempel di wall), pada saat semprot AF1 di lapangan di <strong>video dan kirim BM</strong></span></p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: #3598db; mso-fareast-language: EN-ID;\">KIRIM GAMBAR REVISI dan CAD terbaru</span></strong></p>', '2', '', ''),
(11, '2022-10-18', 'IT CASSA', '2022-10-17 14:34:53', '<p>tes</p>\r\n<ul>\r\n<li>1</li>\r\n<li>2</li>\r\n<li>3</li>\r\n<li>4</li>\r\n</ul>\r\n<p>tes 2</p>', '1', 'IT CASSA', '2022-10-17 14:50:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_petty_cash`
--

CREATE TABLE `tbl_petty_cash` (
  `id_pty_csh` int(11) NOT NULL,
  `saldo` varchar(100) NOT NULL,
  `jenis` varchar(150) NOT NULL,
  `saldo_updateby` varchar(50) NOT NULL,
  `saldo_UpTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_petty_cash`
--

INSERT INTO `tbl_petty_cash` (`id_pty_csh`, `saldo`, `jenis`, `saldo_updateby`, `saldo_UpTime`) VALUES
(1, '1350000', 'Petty Cash', 'RYAN MUHAMMAD BAHRUDIN', '2022-10-26 10:07:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_petty_cash_in_out`
--

CREATE TABLE `tbl_petty_cash_in_out` (
  `id_log_petty` int(11) NOT NULL,
  `kode_topup` varchar(50) NOT NULL,
  `jenis_pety_cash` varchar(50) NOT NULL,
  `nominal_petty_cash` varchar(100) NOT NULL,
  `tgl_transaksi_petty` date NOT NULL,
  `tgl_log_petty_cash` datetime NOT NULL,
  `created_log_petty_cash` varchar(100) NOT NULL,
  `saldo_before` varchar(50) NOT NULL,
  `tgl_prosess` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_petty_cash_in_out`
--

INSERT INTO `tbl_petty_cash_in_out` (`id_log_petty`, `kode_topup`, `jenis_pety_cash`, `nominal_petty_cash`, `tgl_transaksi_petty`, `tgl_log_petty_cash`, `created_log_petty_cash`, `saldo_before`, `tgl_prosess`) VALUES
(1, 'TP49576', 'Isi Saldo', '1000000', '2022-10-26', '2022-10-26 09:52:09', 'RYAN MUHAMMAD BAHRUDIN', '0', '2022-10-26'),
(2, 'TRF93716', 'Saldo Keluar', '50000', '2022-10-26', '2022-10-26 09:56:25', 'RYAN MUHAMMAD BAHRUDIN', '1000000', '2022-10-26'),
(3, 'TRF95723', 'Saldo Keluar', '100000', '2022-10-26', '2022-10-26 10:06:26', 'RYAN MUHAMMAD BAHRUDIN', '950000', '2022-10-26'),
(4, 'TP58163', 'Isi Saldo', '500000', '2022-10-26', '2022-10-26 10:07:07', 'RYAN MUHAMMAD BAHRUDIN', '850000', '2022-10-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_petty_cash_list`
--

CREATE TABLE `tbl_petty_cash_list` (
  `id_list_pety` int(11) NOT NULL,
  `nominal_pembayaran` varchar(100) NOT NULL,
  `kode_pembayaran` varchar(150) NOT NULL,
  `noted_pety_cash` text NOT NULL,
  `date_petty_cash` datetime NOT NULL,
  `creat_by_pety_cash` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_petty_cash_list`
--

INSERT INTO `tbl_petty_cash_list` (`id_list_pety`, `nominal_pembayaran`, `kode_pembayaran`, `noted_pety_cash`, `date_petty_cash`, `creat_by_pety_cash`) VALUES
(1, '1000000', 'TP49576', 'Isi Saldo', '2022-10-26 09:52:09', 'RYAN MUHAMMAD BAHRUDIN'),
(2, '50000', 'TRF93716', 'TR!', '2022-10-26 09:56:25', 'RYAN MUHAMMAD BAHRUDIN'),
(3, '100000', 'TRF95723', 'up', '2022-10-26 10:06:26', 'RYAN MUHAMMAD BAHRUDIN'),
(4, '500000', 'TP58163', 'Isi Saldo', '2022-10-26 10:07:07', 'RYAN MUHAMMAD BAHRUDIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sop`
--

CREATE TABLE `tbl_sop` (
  `id_sop` int(11) NOT NULL,
  `isi_sop` text NOT NULL,
  `jenis_sop` varchar(50) NOT NULL,
  `status_sop` varchar(100) NOT NULL DEFAULT '1',
  `createdby_sop` varchar(100) NOT NULL,
  `createdtime_sop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_sop`
--

INSERT INTO `tbl_sop` (`id_sop`, `isi_sop`, `jenis_sop`, `status_sop`, `createdby_sop`, `createdtime_sop`) VALUES
(2, '<p>Fungsi Tombol Button &amp; Alur Petty Cash</p>\n<ul>\n<li><em><strong>Button Isi Ulang</strong></em> berfungsi untuk nenambah jumlah saldo petty cash.</li>\n<li><em><strong>Button Transaksi</strong></em> berfungsi untuk , menambahkan transaksi pengeluaran saldo petty cash ( saldo petty cash akan otomatis terpotong ).</li>\n</ul>\n<p>Lihat Laporan &amp; Cetak Laporan</p>\n<ul>\n<li>pilih menu <strong><em>semua riwayat&nbsp;&nbsp;</em></strong>pada header tabel transaksi</li>\n</ul>\n<p>&nbsp;</p>', 'SOP1', '1', '', ''),
(4, '<p>Filter Laporan keluar/masuk saldo petty cash.</p>\r\n<ul>\r\n<li>Laporan yang tampil sebelum di flter adalah keseluruhan riwayat keluar &amp; masuk saldo .</li>\r\n<li>Untuk Memfilter laporan isi field kedua tanggal tsb kemudian pilih jenis laporan yang ingin ditampilkan .</li>\r\n<li>Laporan di filter berdasarkan Tanggal <em><strong>diproses </strong></em>nya transaksi tsb.</li>\r\n<li>Setelah laporan berhasil di filter maka akan muncul Button cetak , kemudian export .</li>\r\n<li>jika ingin memunculkan data secara keseluruhan tanpa filter , maka biarkan saja kolom tanggal terisi kemudian hapus isi pada kolom pilih lalu tekan proses.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'SOP2', '1', 'IT CASSA', '2022-10-17 16:48:14'),
(5, '<p>1. CUTI</p>\r\n<ul>\r\n<li>cuti tahunan akan terbuka jika karyawan telah bekerja selama 1 tahun ( 365 ) hari .</li>\r\n<li>jika tombol proses terkunci dan karyawan merasa telah bekerja lebih dari 1 tahun dan masih terdapat sisa cuti tahunan maka cek tanggal bergabung pada profil karyawan bisa jadi disebabkan oleh salah input tanggal bergabung oleh admin.</li>\r\n</ul>\r\n<p>2. Semua Proses izin terintegrasi dengan email pribadi karyawan .</p>', 'SOP3', '1', 'IT CASSA', '2022-10-17 17:13:32'),
(6, '<p>1. Absen Pulang</p>\r\n<ul>\r\n<li>Jika karyawan pulang melebihi pukul 00:00 malam , maka diwajibkan untuk pilih tanggal ke tanggal sebelumnya ketika proses cek out / absen pulang , jika tidak di pilih maka absen pulang tersebut akan masuk pada tanggal tersebut bukan pada tanggal kemarin.</li>\r\n</ul>', 'SOP4', '1', 'IT CASSA', '2022-10-17 17:29:27'),
(7, '<p>1. Pengajuan Reimbursement</p>\r\n<ul>\r\n<li>Pilih tanggal,nama proyek dan jenis reimbursement .</li>\r\n<li>klik button tambah jika ingin menambah jenis reimbursement.</li>\r\n<li>Jika ingin mengajukan beberapa rembursement dengan tanggal berbeda , bisa dijelaskan pada kolom keterangan atau ajukan reimbursement tanggal pertanggal .</li>\r\n</ul>\r\n<p><strong>*Catatan</strong></p>\r\n<ul>\r\n<li>Untuk reimbursement kendaraan pribadi hanya bisa di ajukan pada jenis pertama kemudian anda bisa melanjutkan dengan jenis yang lainnya , pada button tambah tidak tersedia reimbursement kendaraan pribadi.</li>\r\n</ul>', 'SOP5', '1', 'IT CASSA', '2022-10-18 10:10:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_status_log_proyek`
--

CREATE TABLE `tbl_status_log_proyek` (
  `id_stts_log` int(11) NOT NULL,
  `id_lsp_proyek` varchar(50) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `tgl_create` datetime NOT NULL,
  `due_date_log` varchar(150) NOT NULL,
  `kegiatan` text NOT NULL,
  `file` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supp` int(11) NOT NULL,
  `supp_name` varchar(100) NOT NULL,
  `supp_rekname` varchar(100) NOT NULL,
  `supp_norek` varchar(100) NOT NULL,
  `createdBy_supp` varchar(150) NOT NULL,
  `createdTime_supp` datetime NOT NULL,
  `updateBy_supp` varchar(150) NOT NULL,
  `updateTime_supp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supp`, `supp_name`, `supp_rekname`, `supp_norek`, `createdBy_supp`, `createdTime_supp`, `updateBy_supp`, `updateTime_supp`) VALUES
(1, 'Djoni Cell', 'Ryan', '3344445', 'TANIA DISSY SARASWATI', '2022-10-04 10:20:45', 'TANIA DISSY SARASWATI', '2022-10-04 10:25:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `id_ven` int(11) NOT NULL,
  `nama_vendor` varchar(100) NOT NULL,
  `nama_bank_vendor` varchar(50) NOT NULL,
  `atas_nama_bank` varchar(100) NOT NULL,
  `norek_vendor` varchar(150) NOT NULL,
  `createdBy_vn` varchar(50) NOT NULL,
  `createdTime_vn` datetime NOT NULL,
  `updateBy_vn` varchar(150) NOT NULL,
  `updateTime_vn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berkas`
--

CREATE TABLE `tb_berkas` (
  `kd_berkas` int(11) NOT NULL,
  `kode_sub_berkas` varchar(150) NOT NULL,
  `nama_berkas` varchar(255) DEFAULT NULL,
  `keterangan_berkas` varchar(255) DEFAULT NULL,
  `tipe_berkas` varchar(100) DEFAULT NULL,
  `ukuran_berkas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berkas`
--

INSERT INTO `tb_berkas` (`kd_berkas`, `kode_sub_berkas`, `nama_berkas`, `keterangan_berkas`, `tipe_berkas`, `ukuran_berkas`) VALUES
(19, '', '46bab60b02899256bd546c248f13de15.jpg', '1', '.jpg', 207.39),
(20, '', '51b485e14a40a0c67e0c84a998191935.JPG', '2', '.JPG', 172.96);

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_foto`
--

CREATE TABLE `upload_foto` (
  `ukuran_berkas` varchar(50) NOT NULL,
  `nama_berkas` varchar(150) NOT NULL,
  `keterangan_berkas` varchar(50) NOT NULL,
  `tipe_berkas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload_foto`
--

INSERT INTO `upload_foto` (`ukuran_berkas`, `nama_berkas`, `keterangan_berkas`, `tipe_berkas`) VALUES
('1488.56', '3e40bce45c1d353ed9fc65f664b8dc39.png', 'swswsw', '.png'),
('663.82', '325fbfd842847a5eeb79888b7f3e57d0.png', 'adad', '.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cassa_asset`
--
ALTER TABLE `cassa_asset`
  ADD PRIMARY KEY (`id_asset`);

--
-- Indeks untuk tabel `cassa_audit_kehadiran`
--
ALTER TABLE `cassa_audit_kehadiran`
  ADD PRIMARY KEY (`id_audit`);

--
-- Indeks untuk tabel `cassa_codemom`
--
ALTER TABLE `cassa_codemom`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cassa_daily_report_img`
--
ALTER TABLE `cassa_daily_report_img`
  ADD PRIMARY KEY (`id_daily`);

--
-- Indeks untuk tabel `cassa_daily_report_img_sub`
--
ALTER TABLE `cassa_daily_report_img_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cassa_department`
--
ALTER TABLE `cassa_department`
  ADD PRIMARY KEY (`id_dept`);

--
-- Indeks untuk tabel `cassa_divisi`
--
ALTER TABLE `cassa_divisi`
  ADD PRIMARY KEY (`id_div`);

--
-- Indeks untuk tabel `cassa_doc`
--
ALTER TABLE `cassa_doc`
  ADD PRIMARY KEY (`id_doc`);

--
-- Indeks untuk tabel `cassa_history_mom_tidak`
--
ALTER TABLE `cassa_history_mom_tidak`
  ADD PRIMARY KEY (`id_history`);

--
-- Indeks untuk tabel `cassa_izin`
--
ALTER TABLE `cassa_izin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cassa_jmlcuti`
--
ALTER TABLE `cassa_jmlcuti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cassa_karyawan`
--
ALTER TABLE `cassa_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cassa_kategori_izin`
--
ALTER TABLE `cassa_kategori_izin`
  ADD PRIMARY KEY (`id_izin`);

--
-- Indeks untuk tabel `cassa_kehadiran`
--
ALTER TABLE `cassa_kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cassa_log`
--
ALTER TABLE `cassa_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `cassa_mom`
--
ALTER TABLE `cassa_mom`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cassa_mom_history`
--
ALTER TABLE `cassa_mom_history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indeks untuk tabel `cassa_reimbursement`
--
ALTER TABLE `cassa_reimbursement`
  ADD PRIMARY KEY (`id_reimbus`);

--
-- Indeks untuk tabel `cassa_reimbursement_category`
--
ALTER TABLE `cassa_reimbursement_category`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `cassa_reimbursement_category_jenis`
--
ALTER TABLE `cassa_reimbursement_category_jenis`
  ADD PRIMARY KEY (`id_sub_category`);

--
-- Indeks untuk tabel `cassa_reimbursement_sub`
--
ALTER TABLE `cassa_reimbursement_sub`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indeks untuk tabel `cassa_status_mom`
--
ALTER TABLE `cassa_status_mom`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cassa_status_project`
--
ALTER TABLE `cassa_status_project`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cassa_tag`
--
ALTER TABLE `cassa_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cassa_transaksi_asset`
--
ALTER TABLE `cassa_transaksi_asset`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_login`
--
ALTER TABLE `employee_login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan_proyek`
--
ALTER TABLE `laporan_proyek`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `leads_project`
--
ALTER TABLE `leads_project`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `modul_kerja`
--
ALTER TABLE `modul_kerja`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `modul_kerja_chat`
--
ALTER TABLE `modul_kerja_chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indeks untuk tabel `modul_kerja_detail_sub`
--
ALTER TABLE `modul_kerja_detail_sub`
  ADD PRIMARY KEY (`id_dt_sub`);

--
-- Indeks untuk tabel `modul_kerja_detail_sub_chat`
--
ALTER TABLE `modul_kerja_detail_sub_chat`
  ADD PRIMARY KEY (`id_sub_chat`);

--
-- Indeks untuk tabel `modul_kerja_kontribusi`
--
ALTER TABLE `modul_kerja_kontribusi`
  ADD PRIMARY KEY (`id_kontribusi`);

--
-- Indeks untuk tabel `modul_kerja_sub`
--
ALTER TABLE `modul_kerja_sub`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `purchase_order_dt`
--
ALTER TABLE `purchase_order_dt`
  ADD PRIMARY KEY (`id_dt`);

--
-- Indeks untuk tabel `purchase_order_hd`
--
ALTER TABLE `purchase_order_hd`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `purchase_order_history`
--
ALTER TABLE `purchase_order_history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indeks untuk tabel `purchase_request_dt`
--
ALTER TABLE `purchase_request_dt`
  ADD PRIMARY KEY (`id_dt`);

--
-- Indeks untuk tabel `purchase_request_hd`
--
ALTER TABLE `purchase_request_hd`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_kode`);

--
-- Indeks untuk tabel `tbl_ceklist`
--
ALTER TABLE `tbl_ceklist`
  ADD PRIMARY KEY (`id_ceklist`);

--
-- Indeks untuk tabel `tbl_ceklist_sub`
--
ALTER TABLE `tbl_ceklist_sub`
  ADD PRIMARY KEY (`id_cek_sub`);

--
-- Indeks untuk tabel `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indeks untuk tabel `tbl_designations`
--
ALTER TABLE `tbl_designations`
  ADD PRIMARY KEY (`designations_id`);

--
-- Indeks untuk tabel `tbl_issue`
--
ALTER TABLE `tbl_issue`
  ADD PRIMARY KEY (`id_issue`);

--
-- Indeks untuk tabel `tbl_issue_sub`
--
ALTER TABLE `tbl_issue_sub`
  ADD PRIMARY KEY (`id_sub_issue`);

--
-- Indeks untuk tabel `tbl_notif`
--
ALTER TABLE `tbl_notif`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indeks untuk tabel `tbl_notif_detail_sub`
--
ALTER TABLE `tbl_notif_detail_sub`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indeks untuk tabel `tbl_notif_img`
--
ALTER TABLE `tbl_notif_img`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indeks untuk tabel `tbl_notif_payment`
--
ALTER TABLE `tbl_notif_payment`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indeks untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indeks untuk tabel `tbl_payment_hd`
--
ALTER TABLE `tbl_payment_hd`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indeks untuk tabel `tbl_payment_supplier`
--
ALTER TABLE `tbl_payment_supplier`
  ADD PRIMARY KEY (`id_pay_supp`);

--
-- Indeks untuk tabel `tbl_payment_vendor`
--
ALTER TABLE `tbl_payment_vendor`
  ADD PRIMARY KEY (`id_pay_ven`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`id_p`);

--
-- Indeks untuk tabel `tbl_petty_cash`
--
ALTER TABLE `tbl_petty_cash`
  ADD PRIMARY KEY (`id_pty_csh`);

--
-- Indeks untuk tabel `tbl_petty_cash_in_out`
--
ALTER TABLE `tbl_petty_cash_in_out`
  ADD PRIMARY KEY (`id_log_petty`);

--
-- Indeks untuk tabel `tbl_petty_cash_list`
--
ALTER TABLE `tbl_petty_cash_list`
  ADD PRIMARY KEY (`id_list_pety`);

--
-- Indeks untuk tabel `tbl_sop`
--
ALTER TABLE `tbl_sop`
  ADD PRIMARY KEY (`id_sop`);

--
-- Indeks untuk tabel `tbl_status_log_proyek`
--
ALTER TABLE `tbl_status_log_proyek`
  ADD PRIMARY KEY (`id_stts_log`);

--
-- Indeks untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supp`);

--
-- Indeks untuk tabel `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`id_ven`);

--
-- Indeks untuk tabel `tb_berkas`
--
ALTER TABLE `tb_berkas`
  ADD PRIMARY KEY (`kd_berkas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cassa_asset`
--
ALTER TABLE `cassa_asset`
  MODIFY `id_asset` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cassa_audit_kehadiran`
--
ALTER TABLE `cassa_audit_kehadiran`
  MODIFY `id_audit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cassa_codemom`
--
ALTER TABLE `cassa_codemom`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cassa_daily_report_img`
--
ALTER TABLE `cassa_daily_report_img`
  MODIFY `id_daily` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `cassa_daily_report_img_sub`
--
ALTER TABLE `cassa_daily_report_img_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `cassa_department`
--
ALTER TABLE `cassa_department`
  MODIFY `id_dept` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `cassa_divisi`
--
ALTER TABLE `cassa_divisi`
  MODIFY `id_div` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `cassa_doc`
--
ALTER TABLE `cassa_doc`
  MODIFY `id_doc` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cassa_history_mom_tidak`
--
ALTER TABLE `cassa_history_mom_tidak`
  MODIFY `id_history` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cassa_izin`
--
ALTER TABLE `cassa_izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `cassa_jmlcuti`
--
ALTER TABLE `cassa_jmlcuti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cassa_karyawan`
--
ALTER TABLE `cassa_karyawan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `cassa_kategori_izin`
--
ALTER TABLE `cassa_kategori_izin`
  MODIFY `id_izin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `cassa_kehadiran`
--
ALTER TABLE `cassa_kehadiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=759;

--
-- AUTO_INCREMENT untuk tabel `cassa_log`
--
ALTER TABLE `cassa_log`
  MODIFY `id_log` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `cassa_mom`
--
ALTER TABLE `cassa_mom`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `cassa_mom_history`
--
ALTER TABLE `cassa_mom_history`
  MODIFY `id_history` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `cassa_reimbursement`
--
ALTER TABLE `cassa_reimbursement`
  MODIFY `id_reimbus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `cassa_reimbursement_category`
--
ALTER TABLE `cassa_reimbursement_category`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `cassa_reimbursement_category_jenis`
--
ALTER TABLE `cassa_reimbursement_category_jenis`
  MODIFY `id_sub_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `cassa_reimbursement_sub`
--
ALTER TABLE `cassa_reimbursement_sub`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `cassa_status_mom`
--
ALTER TABLE `cassa_status_mom`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `cassa_status_project`
--
ALTER TABLE `cassa_status_project`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `cassa_tag`
--
ALTER TABLE `cassa_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cassa_transaksi_asset`
--
ALTER TABLE `cassa_transaksi_asset`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `employee_login`
--
ALTER TABLE `employee_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporan_proyek`
--
ALTER TABLE `laporan_proyek`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `leads_project`
--
ALTER TABLE `leads_project`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `modul_kerja`
--
ALTER TABLE `modul_kerja`
  MODIFY `id_modul` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `modul_kerja_chat`
--
ALTER TABLE `modul_kerja_chat`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT untuk tabel `modul_kerja_detail_sub`
--
ALTER TABLE `modul_kerja_detail_sub`
  MODIFY `id_dt_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `modul_kerja_detail_sub_chat`
--
ALTER TABLE `modul_kerja_detail_sub_chat`
  MODIFY `id_sub_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `modul_kerja_kontribusi`
--
ALTER TABLE `modul_kerja_kontribusi`
  MODIFY `id_kontribusi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `modul_kerja_sub`
--
ALTER TABLE `modul_kerja_sub`
  MODIFY `id_sub` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `purchase_order_dt`
--
ALTER TABLE `purchase_order_dt`
  MODIFY `id_dt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `purchase_order_hd`
--
ALTER TABLE `purchase_order_hd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `purchase_order_history`
--
ALTER TABLE `purchase_order_history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `purchase_request_dt`
--
ALTER TABLE `purchase_request_dt`
  MODIFY `id_dt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `purchase_request_hd`
--
ALTER TABLE `purchase_request_hd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_ceklist`
--
ALTER TABLE `tbl_ceklist`
  MODIFY `id_ceklist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_ceklist_sub`
--
ALTER TABLE `tbl_ceklist_sub`
  MODIFY `id_cek_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tbl_designations`
--
ALTER TABLE `tbl_designations`
  MODIFY `designations_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `tbl_issue`
--
ALTER TABLE `tbl_issue`
  MODIFY `id_issue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tbl_issue_sub`
--
ALTER TABLE `tbl_issue_sub`
  MODIFY `id_sub_issue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_notif`
--
ALTER TABLE `tbl_notif`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;

--
-- AUTO_INCREMENT untuk tabel `tbl_notif_detail_sub`
--
ALTER TABLE `tbl_notif_detail_sub`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT untuk tabel `tbl_notif_img`
--
ALTER TABLE `tbl_notif_img`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT untuk tabel `tbl_notif_payment`
--
ALTER TABLE `tbl_notif_payment`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment_hd`
--
ALTER TABLE `tbl_payment_hd`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment_supplier`
--
ALTER TABLE `tbl_payment_supplier`
  MODIFY `id_pay_supp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment_vendor`
--
ALTER TABLE `tbl_payment_vendor`
  MODIFY `id_pay_ven` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_petty_cash`
--
ALTER TABLE `tbl_petty_cash`
  MODIFY `id_pty_csh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_petty_cash_in_out`
--
ALTER TABLE `tbl_petty_cash_in_out`
  MODIFY `id_log_petty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_petty_cash_list`
--
ALTER TABLE `tbl_petty_cash_list`
  MODIFY `id_list_pety` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_sop`
--
ALTER TABLE `tbl_sop`
  MODIFY `id_sop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_status_log_proyek`
--
ALTER TABLE `tbl_status_log_proyek`
  MODIFY `id_stts_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id_supp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  MODIFY `id_ven` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_berkas`
--
ALTER TABLE `tb_berkas`
  MODIFY `kd_berkas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
