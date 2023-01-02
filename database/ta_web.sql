-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2019 at 11:08 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `nik_anggota` varchar(100) NOT NULL,
  `jenis_kelamin` enum('LAKI-LAKI','PEREMPUAN','','') NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `status_perkawinan` varchar(50) NOT NULL,
  `status_hubungan` varchar(100) NOT NULL,
  `kewarganegaraan` varchar(100) NOT NULL,
  `no_paspor` varchar(100) NOT NULL,
  `no_kitas` varchar(100) NOT NULL,
  `ayah` varchar(100) NOT NULL,
  `ibu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nik`, `nama`, `nik_anggota`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `pendidikan`, `pekerjaan`, `status_perkawinan`, `status_hubungan`, `kewarganegaraan`, `no_paspor`, `no_kitas`, `ayah`, `ibu`) VALUES
(1, '123454321', 'LIONEL MESSI', '123454321', 'LAKI-LAKI', 'TANGERANG', '1984-02-17', 'KRISTEN', 'SARJANA', 'DOSEN', 'KAWIN', 'KEPALA KELUARGA', 'WNI', '', '', 'LEO', 'YUNI'),
(2, '123454321', 'ANTONELLA ROCCUZZO', '543212345', 'PEREMPUAN', 'LAMONGAN', '1989-02-08', 'KRISTEN', 'SARJANA', 'IBU RUMAH TANGGA', 'KAWIN', 'ISTERI', 'WNI', '', '', 'ANTO', 'NELLA'),
(3, '123454321', 'LEO JUNIOR', '5678765', 'LAKI-LAKI', 'TRENGGALEK', '2001-06-16', 'ISLAM', 'SMA', 'PELAJAR/MAHASISWA', 'BELUM KAWIN', 'ANAK', 'WNI', '', '', 'LEONAL MESSI', 'ANTONELLA ROCCUZZO'),
(4, '123454321', 'LILIA LOLITA', '32111144', 'PEREMPUAN', 'MALANG', '2005-06-21', 'BUDHA', 'SMP', 'PELAJAR/MAHASISWA', 'BELUM KAWIN', 'ANAK', 'WNI', '', '', 'LEONAL MESSI', 'ANTONELLA ROCCUZZO'),
(5, '123454321', 'UCHIHA MADARA', '90087678', 'LAKI-LAKI', 'KONOHA', '2019-11-06', 'KHONGHUCU', 'BELUM SEKOLAH', 'BELUM SEKOLAH', 'BELUM KAWIN', 'ANAK', 'WNI', '', '', 'LEONAL MESSI', 'ANTONELLA ROCCUZZO');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(300) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `tanggal`, `judul`, `isi`, `gambar`) VALUES
(2, '2019-12-04', 'Mewarisi Nyawa Pendekar', '<p>Katanya, tidak ada yang abadi di dunia ini. Betul. Namun ada orang-orang yang mati beribu tahun lalu sedang nyawanya masih bersemayam di pikiran jutaan manusia sampai detik kini. Mereka menyimpan nyawanya dalam karya tulis mereka, itulah alasan membuat saya sampai pada kesimpulan: <b>Buku adalah nyawa kedua manusia.&nbsp;</b></p>', '5de7fc7fc35be.jpg'),
(3, '2019-12-05', 'GREEN AND CLEAN', '<p>Green and Clean merupakan kompetisi bersih desa antar rw di Desa Aing. kompetisi meliputi kebersihan lingkungan, keindahan lingkungan, dan kerukunan antar warga.&nbsp;</p>', '5de880c1cd5c0.jpg'),
(4, '2019-12-05', 'Kita Semua Juara', '<p>kita adalah <span style=\"background-color: rgb(255, 255, 0);\">juara yang</span> <b>terdepan</b></p>', '5de895792ba1d.png');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `judul`, `isi`) VALUES
(5, 'Info Pembuatan KK', '<p>Persyaratan:</p><ol><li>Memiliki KK lama</li><li>KTP</li><li>Foto Keluarga</li><li>Identitas Anggota Keluarga</li></ol><p>Tata Cara:</p><ol><li>Mengisi Form</li><li>Menyimpan Nomor Bukti</li><li>Datang Sesuai Tanggal pengambilan</li><li>Pengambilan menggunakan nomor bukti</li></ol>'),
(6, 'Info Pembuatan KTP', '<p>Persyaratan:</p><ol><li>17 Tahun</li><li>Foto 3x4</li><li>Akta Kelahiran</li><li>Surat RT</li></ol><p>Tata Cara:</p><ol><li>Mengisi Form</li><li>Menyimpan Nomor Bukti</li><li>Pengambilan sesuai tanggal pengambilan</li><li>Nomor Bukti digunakan untuk pengambilan</li><li>Membawa Berkas yang ditentukan</li></ol>'),
(7, 'Info  Pembuatan Keterangan Kelahiran', '<p>Peryaratan:</p><ol><li>Surat dari Dokter/Dukun (Berat bayi, panjang bayi, dll)</li><li>Bayinya Harus Lahir</li><li>Tata Cara:</li><li>Mengisi Form</li><li>Menyimpan nomor bukti</li><li>Pengambilan sesuai tanggal pengambilan</li><li>Nomor Bukti digunakan untuk pengambilan</li><li>Membawa persyaratan yang telah ditentukan</li></ol><p><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `tempat`) VALUES
(1, 'Lomba 17 Agustusan', 'Demi memeriahkan acara kemerdekaan RI pada tanggal 17 Agustus 2020, Desa Aing mengadakan berbagai macam lomba.', '5de87677d4c2b.jpg', '2020-08-17', 'Lapangan Merdeka');

-- --------------------------------------------------------

--
-- Table structure for table `kelahiran`
--

CREATE TABLE `kelahiran` (
  `id` int(11) NOT NULL,
  `nama_kpl` varchar(300) NOT NULL,
  `no_kk` varchar(100) NOT NULL,
  `nama_anak` varchar(300) NOT NULL,
  `jk` enum('L','P','','') NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `hari` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pukul` varchar(20) NOT NULL,
  `jenis_lahir` varchar(100) NOT NULL,
  `ke` varchar(5) NOT NULL,
  `penolong` varchar(100) NOT NULL,
  `berat` varchar(10) NOT NULL,
  `panjang` varchar(10) NOT NULL,
  `nik_ibu` varchar(100) NOT NULL,
  `nama_ibu` varchar(300) NOT NULL,
  `tgl_ibu` date NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `desa_ibu` varchar(100) NOT NULL,
  `kab_ibu` varchar(100) NOT NULL,
  `kec_ibu` varchar(100) NOT NULL,
  `prov_ibu` varchar(100) NOT NULL,
  `kewar_ibu` varchar(5) NOT NULL,
  `kebang_ibu` varchar(100) NOT NULL,
  `tgl_kawin` date NOT NULL,
  `nik_ayah` varchar(100) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `tgl_ayah` date NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `desa_ayah` varchar(100) NOT NULL,
  `kab_ayah` varchar(100) NOT NULL,
  `kec_ayah` varchar(100) NOT NULL,
  `prov_ayah` varchar(100) NOT NULL,
  `kewar_ayah` varchar(5) NOT NULL,
  `kebang_ayah` varchar(100) NOT NULL,
  `nik_lapor` varchar(100) NOT NULL,
  `nama_lapor` varchar(100) NOT NULL,
  `umur` varchar(5) NOT NULL,
  `jk_lapor` enum('L','P','','') NOT NULL,
  `pekerjaan_lapor` varchar(100) NOT NULL,
  `desa_lapor` varchar(100) NOT NULL,
  `kab_lapor` varchar(100) NOT NULL,
  `kec_lapor` varchar(100) NOT NULL,
  `prov_lapor` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelahiran`
--

INSERT INTO `kelahiran` (`id`, `nama_kpl`, `no_kk`, `nama_anak`, `jk`, `tempat_lahir`, `hari`, `tgl_lahir`, `pukul`, `jenis_lahir`, `ke`, `penolong`, `berat`, `panjang`, `nik_ibu`, `nama_ibu`, `tgl_ibu`, `pekerjaan_ibu`, `desa_ibu`, `kab_ibu`, `kec_ibu`, `prov_ibu`, `kewar_ibu`, `kebang_ibu`, `tgl_kawin`, `nik_ayah`, `nama_ayah`, `tgl_ayah`, `pekerjaan_ayah`, `desa_ayah`, `kab_ayah`, `kec_ayah`, `prov_ayah`, `kewar_ayah`, `kebang_ayah`, `nik_lapor`, `nama_lapor`, `umur`, `jk_lapor`, `pekerjaan_lapor`, `desa_lapor`, `kab_lapor`, `kec_lapor`, `prov_lapor`, `tgl_buat`, `tgl_ambil`) VALUES
(2, 'Dominic toretto', '911', 'Ali gonzales', 'L', 'Dubai', 'Kamis', '2001-02-07', '14 : 23', 'Tungal', '2', 'Dukun', '5', '45', '123', 'Hayati', '1974-06-03', 'Ibu rumah tangga', 'Penari', 'Banyumas', 'Banyuwangi', 'Jawa timur', 'Wni', 'Wni', '2000-07-20', '456', 'Dominic toretto', '1971-06-17', 'Pembalap', 'Kotamobagu', 'Gorontalo', 'Manado', 'Sulawesi selatan', 'Wni', 'Wni', '456', 'Dominic toretto', '1971-', 'L', 'Pembalap', 'Kotamobagu', 'Gorontalo', 'Manado', 'Sulawesi selatan', '2019-12-04', '2019-12-05'),
(3, 'Brian kun', '911', 'Upin', 'L', 'Pondok gede', 'Jumat', '2019-03-14', '15 : 37', 'Tungal', '3', 'Dukun', '5', '45', '4567', 'Hayati', '1986-06-17', 'Akuntan', 'Wilis', 'Malang', 'Klojen', 'Jawa timur', 'Wni', 'Wni', '2000-01-19', '9876', 'Brian kun', '1986-02-12', 'Karyawan', 'Goroa', 'Babakan', 'Pelabuhan ratu', 'Jawa barat', 'Wni', 'Wni', '9876', 'Brian kun', '35', 'L', 'Karyawan', 'Burayak', 'Goroa', 'Pakes', 'Sumatera barat', '2019-12-04', '2019-12-05'),
(4, 'Fff', '2222', 'Asdasd', 'L', 'Asdasd', 'Asas', '2019-12-17', '14 : 22', 'Tungal', '1', 'Dukun', '4', '45', '12345', 'Asdqwd', '2019-12-20', 'Qqqq', 'Qqwe', 'Qwqe', 'Ewe', 'Qwqwqw', 'Wni', 'Wni', '2019-12-15', '14311', 'Asdawe', '2019-08-01', 'Asdtty', 'Kjk', 'Rtytr', 'Jhghm', 'Axcas', 'Wni', 'Wni', '5432', 'Kskjf', '32', 'L', 'Oyoty', 'Rtrt', 'Rty', 'Wer', 'Uertg', '2019-12-05', '2019-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `kk`
--

CREATE TABLE `kk` (
  `id` int(11) NOT NULL,
  `nama_kepala` varchar(300) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kec` varchar(100) NOT NULL,
  `kab` varchar(100) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `kode_pos` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kk`
--

INSERT INTO `kk` (`id`, `nama_kepala`, `nik`, `alamat`, `rt`, `rw`, `desa`, `kec`, `kab`, `prov`, `kode_pos`, `telepon`, `jumlah`, `tgl_buat`, `tgl_ambil`) VALUES
(27, 'LIONAL MESSI', '123454321', 'DUSUN KRAJAN', '11', '09', 'AING', 'TRENGGALEK', 'MALANG', 'JAWA TIMUR', '89009', '082234563251', 5, '2019-11-29', '2019-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `kritik`
--

CREATE TABLE `kritik` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kritik`
--

INSERT INTO `kritik` (`id`, `nama`, `isi`, `tanggal`) VALUES
(4, 'Vishnu Adisaka', 'Anak Pak RT Cantik yang kuliah di UM', '2019-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `mampu`
--

CREATE TABLE `mampu` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P','','') NOT NULL,
  `agama` varchar(300) NOT NULL,
  `status_perkawinan` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `keperluan` varchar(300) NOT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mampu`
--

INSERT INTO `mampu` (`id`, `nama`, `nik`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `status_perkawinan`, `pekerjaan`, `rt`, `rw`, `desa`, `kecamatan`, `kabupaten`, `keperluan`, `tgl_buat`, `tgl_ambil`) VALUES
(6, 'Atta mahardika putra ulala', '9876578001', 'Jakarta', '2000-06-10', 'L', 'Islam', 'Kawin', 'Kuli bangunan', '21', '01', 'Aing', 'Trenggalek', 'Malang', 'Mendapat beasiswa dan pelatihan ternak ', '2019-11-29', '2019-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `mati`
--

CREATE TABLE `mati` (
  `id` int(11) NOT NULL,
  `nama_lapor` varchar(300) NOT NULL,
  `nik_lapor` varchar(100) NOT NULL,
  `umur_lapor` varchar(10) NOT NULL,
  `pekerjaan_lapor` varchar(100) NOT NULL,
  `rt_lapor` varchar(5) NOT NULL,
  `rw_lapor` varchar(5) NOT NULL,
  `desa_lapor` varchar(100) NOT NULL,
  `kec_lapor` varchar(100) NOT NULL,
  `kab_lapor` varchar(100) NOT NULL,
  `hub` varchar(100) NOT NULL,
  `nama_mati` varchar(300) NOT NULL,
  `nik_mati` varchar(100) NOT NULL,
  `jk_mati` enum('L','P','','') NOT NULL,
  `tgl_mati` date NOT NULL,
  `agama` varchar(100) NOT NULL,
  `rt_mati` varchar(5) NOT NULL,
  `rw_mati` varchar(5) NOT NULL,
  `desa_mati` varchar(100) NOT NULL,
  `kec_mati` varchar(100) NOT NULL,
  `kab_mati` varchar(100) NOT NULL,
  `hari` varchar(100) NOT NULL,
  `tgl_kematian` date NOT NULL,
  `pukul` varchar(10) NOT NULL,
  `bertempat` varchar(100) NOT NULL,
  `penyebab` varchar(100) NOT NULL,
  `bukti` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mati`
--

INSERT INTO `mati` (`id`, `nama_lapor`, `nik_lapor`, `umur_lapor`, `pekerjaan_lapor`, `rt_lapor`, `rw_lapor`, `desa_lapor`, `kec_lapor`, `kab_lapor`, `hub`, `nama_mati`, `nik_mati`, `jk_mati`, `tgl_mati`, `agama`, `rt_mati`, `rw_mati`, `desa_mati`, `kec_mati`, `kab_mati`, `hari`, `tgl_kematian`, `pukul`, `bertempat`, `penyebab`, `bukti`, `tgl_buat`, `tgl_ambil`) VALUES
(2, 'Michael owen', '12345', '17', 'Mahasiswa', '2', '3', 'KUNINGAN', 'Ciamis', 'Garut', 'Saudara', 'Dominic toretto', '54321', 'L', '2011-07-11', 'Kristen', '2', '3', 'KUNINGAN', 'Ciamis', 'Garut', 'Senin', '2019-12-17', '12', 'Sekolah', 'Keracunan', 'Foto', '2019-12-04', '2019-12-05'),
(3, 'Dhani', '2000696969', '200', 'Pengangguran', '001', '002', 'AING', 'Aing', 'Aing', 'Saya sendiri', 'Dhani', '2000696969', 'L', '2019-12-17', 'Islam', '001', '002', 'AING', 'Aing', 'Aing', 'Natal', '1975-12-25', '24', 'Rumah bapak di surga', '-', '-', '2019-12-05', '2019-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `nikah`
--

CREATE TABLE `nikah` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` enum('L','P','','') NOT NULL,
  `pekerjaan` varchar(300) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `kewarganegaraan` varchar(100) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `keperluan` varchar(300) NOT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nikah`
--

INSERT INTO `nikah` (`id`, `nama`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jk`, `pekerjaan`, `agama`, `kewarganegaraan`, `rt`, `rw`, `desa`, `kecamatan`, `kabupaten`, `keperluan`, `tgl_buat`, `tgl_ambil`) VALUES
(1, 'Justin bieber', '666666', 'Los angles', '1997-02-05', 'L', 'Musisi', 'Kristen', 'Amerika', '4', '8', 'Aing', 'Trenggalek', 'Malang', 'Untuk memenuhi persaratan menikah', '2019-12-05', '2019-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `offering` varchar(100) NOT NULL,
  `angkatan` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`id`, `nama`, `prodi`, `offering`, `angkatan`, `jabatan`, `gambar`) VALUES
(4, 'Rian Ari Sasono', 'S1 Teknik Informatika', 'Offering C', 'Angkatan 2018', 'Wakil Kepala Desa', '5de68254d92a7.jpeg'),
(5, 'Riza Maqfiratun Nafisah', 'S1 Teknik Informatika', 'Offering C', 'Angkatan 2018', 'Sekretaris', '5de682b5b6c85.jpeg'),
(6, 'Siti Fatimah', 'S1 Teknik Informatika', 'Offering C', 'Angkatan 2018', 'Bendahara', '5de682e612f2b.jpeg'),
(7, 'Vishnu Adisaka', 'S1 Teknik Informatika', 'Offering C', 'Angkatan 2018', 'Kepala Desa', '5de68306bf887.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `skck`
--

CREATE TABLE `skck` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P','','') NOT NULL,
  `agama` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `keperluan` varchar(300) NOT NULL,
  `keterangan` text NOT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skck`
--

INSERT INTO `skck` (`id`, `nama`, `jenis_kelamin`, `agama`, `status`, `nik`, `tempat_lahir`, `tgl_lahir`, `pekerjaan`, `rt`, `rw`, `desa`, `kecamatan`, `kabupaten`, `keperluan`, `keterangan`, `mulai`, `selesai`, `tgl_buat`, `tgl_ambil`) VALUES
(10, 'Budi setyawan', 'L', 'Islam', 'Belum kawin', '67653342231', 'Bali', '1995-07-13', 'Trader professional', '12', '06', 'Aing', 'Trenggalek', 'Malang', 'Untuk membuat skck di polsek klojen', 'Orang tersebut benar benar warga desa aing dan tidak pernah melakukan tindah pidana ', '2019-11-29', '2019-12-29', '2019-11-29', '2019-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `usaha`
--

CREATE TABLE `usaha` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P','','') NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `rt` varchar(8) NOT NULL,
  `rw` varchar(8) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `jenis_usaha` varchar(100) NOT NULL,
  `nama_usaha` varchar(300) NOT NULL,
  `keperluan` varchar(300) NOT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usaha`
--

INSERT INTO `usaha` (`id`, `nama`, `tempat_lahir`, `tgl_lahir`, `nik`, `jenis_kelamin`, `agama`, `pekerjaan`, `rt`, `rw`, `desa`, `kecamatan`, `kabupaten`, `jenis_usaha`, `nama_usaha`, `keperluan`, `tgl_buat`, `tgl_ambil`) VALUES
(3, 'Song jihyo ', 'Seoul', '2000-06-14', '6222312008', 'P', 'Budha', 'Penyanyi', '31', '05', 'Aing', 'Trenggalek', 'Malang', 'BUTIK BUSANA DAN PENYEWAAN BUSANA', 'Blackpink', 'Persyaratan mengajukan peminjaman uang 3 miliyar di bank krut', '2019-11-29', '2019-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'rianari', '1234'),
(2, 'coworasavanila', '1234'),
(3, 'sitifatimah', '1234'),
(4, 'riza', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `warga`
--

CREATE TABLE `warga` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `no_nik` varchar(100) NOT NULL,
  `tempat_lahir` varchar(300) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `jk` enum('L','P','','') NOT NULL,
  `agama` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(300) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `status_perkawinan` varchar(100) NOT NULL,
  `rt` varchar(10) NOT NULL,
  `rw` varchar(10) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_ambil` date NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warga`
--

INSERT INTO `warga` (`id`, `nama`, `no_nik`, `tempat_lahir`, `tanggal_lahir`, `jk`, `agama`, `kewarganegaraan`, `pekerjaan`, `status_perkawinan`, `rt`, `rw`, `desa`, `kecamatan`, `tgl_buat`, `tgl_ambil`, `keterangan`) VALUES
(40, 'Cristiano ronaldo', '1234567890', 'Trenggalek', '1995-06-07', 'L', 'Islam', 'WNI', 'Kepala sekolah', 'Kawin', '21', '09', 'Aing', 'Trenggalek', '2019-11-29', '2019-12-02', ''),
(41, 'Pevita pearce', '322', 'Dubai', '1999-05-22', 'P', 'Islam', 'WNI', 'Aktris', 'Belum kawin', '2', '3', 'Istanbul', 'Hazen', '2019-12-04', '2019-12-05', ''),
(42, 'Riza', '26745323232', 'Malang', '2001-01-31', 'P', 'Islam', 'WNI', 'Mahasiswa', 'Belum kawin', '02', '01', 'Gondanglegi', 'Gondanglegi', '2019-12-05', '2019-12-06', ''),
(43, 'Selena gomes', '123456', 'Trenggalek', '2002-03-14', 'L', 'Islam', 'WNI', 'Musisi', 'Belum kawin', '12', '31', 'Aing', 'Trenggalek', '2019-12-05', '2019-12-06', '');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `link` varchar(300) NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `nama`, `link`, `gambar`) VALUES
(2, 'Air Terjun Perasaan', 'https://goo.gl/maps/e5iJ46BihuACqvDd8', '5de77dafe45f1.jpg'),
(3, 'Sungai Kenangan', 'https://goo.gl/maps/C6NGcBjFd2urjEbe6', '5de77e88e91c6.jpg'),
(4, 'Gunung Cinta', 'https://goo.gl/maps/31aZb421VYVFqpn18', '5de77ea3ea324.jpg'),
(5, 'Sawah Penantian', 'https://goo.gl/maps/U74QLaviXKuD31iq7', '5de77ebd19ef5.jpg'),
(6, 'Kebun Teh Asmara', 'https://goo.gl/maps/QKAxYiMYK5iogkScA', '5de77edb199c6.jpg'),
(7, 'Camping Ground Doi', 'https://g.page/bedengan?share', '5de77eff5a2f4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelahiran`
--
ALTER TABLE `kelahiran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kk`
--
ALTER TABLE `kk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kritik`
--
ALTER TABLE `kritik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mampu`
--
ALTER TABLE `mampu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mati`
--
ALTER TABLE `mati`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nikah`
--
ALTER TABLE `nikah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skck`
--
ALTER TABLE `skck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usaha`
--
ALTER TABLE `usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kelahiran`
--
ALTER TABLE `kelahiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kk`
--
ALTER TABLE `kk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kritik`
--
ALTER TABLE `kritik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mampu`
--
ALTER TABLE `mampu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mati`
--
ALTER TABLE `mati`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nikah`
--
ALTER TABLE `nikah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `skck`
--
ALTER TABLE `skck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usaha`
--
ALTER TABLE `usaha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `warga`
--
ALTER TABLE `warga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
