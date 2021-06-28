-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2021 pada 21.20
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `viafdy_shop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu', 'Sepatu Merk Adidas', 'Pakaian Pria', 300000, 10, 'sepatu.jpg'),
(2, 'Kamera', 'Kamera Canon EOS 700D', 'Elektronik', 5900000, 9, 'kamera.jpg'),
(3, 'Samsung Galaxy A20', 'Samsung Galaxy A20', 'Elektronik', 3400000, 30, 'hp.jpg'),
(7, 'Laptop Asus', 'Laptop Asus ram 2 gb', 'Elektronik', 4750000, 10, 'laptop1.jpg'),
(8, 'HP Huawei', 'Hp second', 'Elektronik', 500000, 5, 'hp1.jpg'),
(9, 'Sepatu Compass', 'Sepatu Compass Ukuran 42', 'Pakaian Pria', 750000, 3, 'sepatu_compass.jpg'),
(10, 'Jaket Pria', 'Cocok untuk musim dingin', 'Pakaian Pria', 1000000, 7, 'jaket_pria.jpg'),
(11, 'Jaket Wanita', 'Bahan tebal dan nyaman', 'Pakaian Wanita', 785000, 19, 'jaket_wanita.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Ardy', 'Malang', '2021-06-29 00:27:54', '2021-06-30 00:27:54'),
(2, 'wawan', 'Keputih', '2021-06-29 00:30:37', '2021-06-30 00:30:37'),
(3, 'Esty', 'Lawang', '2021-06-29 01:12:59', '2021-06-30 01:12:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Sepatu', 1, 300000, ''),
(2, 1, 2, 'Kamera', 1, 5900000, ''),
(3, 1, 3, 'Samsung Galaxy A20', 1, 3400000, ''),
(4, 1, 7, 'Laptop Asus', 1, 4750000, ''),
(5, 1, 8, 'HP Huawei', 1, 500000, ''),
(6, 2, 9, 'Sepatu Compass', 1, 750000, ''),
(7, 2, 10, 'Jaket Pria', 1, 1000000, ''),
(8, 2, 11, 'Jaket Wanita', 1, 785000, ''),
(9, 3, 2, 'Kamera', 1, 5900000, ''),
(10, 3, 7, 'Laptop Asus', 1, 4750000, ''),
(11, 3, 9, 'Sepatu Compass', 1, 750000, ''),
(12, 3, 10, 'Jaket Pria', 1, 1000000, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
