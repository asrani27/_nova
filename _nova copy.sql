/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3306
 Source Schema         : _nova

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 17/05/2025 10:57:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` (`id`, `foto`) VALUES (1, '617f496656891.jpg');
INSERT INTO `banner` (`id`, `foto`) VALUES (2, '617f496c00f22.jpg');
INSERT INTO `banner` (`id`, `foto`) VALUES (3, '617f49713e571.jpg');
COMMIT;

-- ----------------------------
-- Table structure for detail_pemesanan
-- ----------------------------
DROP TABLE IF EXISTS `detail_pemesanan`;
CREATE TABLE `detail_pemesanan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pemesanan_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail_pemesanan
-- ----------------------------
BEGIN;
INSERT INTO `detail_pemesanan` (`id`, `pemesanan_id`, `produk_id`, `harga`, `jumlah`, `total`, `created_at`, `updated_at`) VALUES (1, 3, 20, 600000, 1, 600000, '2025-05-16 22:14:04', '2025-05-16 22:14:04');
INSERT INTO `detail_pemesanan` (`id`, `pemesanan_id`, `produk_id`, `harga`, `jumlah`, `total`, `created_at`, `updated_at`) VALUES (2, 3, 23, 375000, 1, 375000, '2025-05-16 22:14:04', '2025-05-16 22:14:04');
INSERT INTO `detail_pemesanan` (`id`, `pemesanan_id`, `produk_id`, `harga`, `jumlah`, `total`, `created_at`, `updated_at`) VALUES (3, 4, 20, 600000, 1, 600000, '2025-05-17 10:56:21', '2025-05-17 10:56:21');
INSERT INTO `detail_pemesanan` (`id`, `pemesanan_id`, `produk_id`, `harga`, `jumlah`, `total`, `created_at`, `updated_at`) VALUES (4, 5, 20, 600000, 1, 600000, '2025-05-17 10:56:32', '2025-05-17 10:56:32');
INSERT INTO `detail_pemesanan` (`id`, `pemesanan_id`, `produk_id`, `harga`, `jumlah`, `total`, `created_at`, `updated_at`) VALUES (5, 5, 27, 550000, 1, 550000, '2025-05-17 10:56:32', '2025-05-17 10:56:32');
INSERT INTO `detail_pemesanan` (`id`, `pemesanan_id`, `produk_id`, `harga`, `jumlah`, `total`, `created_at`, `updated_at`) VALUES (6, 5, 28, 700000, 1, 700000, '2025-05-17 10:56:32', '2025-05-17 10:56:32');
COMMIT;

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of kategori
-- ----------------------------
BEGIN;
INSERT INTO `kategori` (`id`, `nama`) VALUES (9, 'Sasirangan');
INSERT INTO `kategori` (`id`, `nama`) VALUES (10, 'Kuliner');
INSERT INTO `kategori` (`id`, `nama`) VALUES (11, 'Assesoris');
INSERT INTO `kategori` (`id`, `nama`) VALUES (12, 'Kerajinan');
INSERT INTO `kategori` (`id`, `nama`) VALUES (13, 'Fashion');
COMMIT;

-- ----------------------------
-- Table structure for keranjang
-- ----------------------------
DROP TABLE IF EXISTS `keranjang`;
CREATE TABLE `keranjang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `konsumen_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keranjang
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for konsumen
-- ----------------------------
DROP TABLE IF EXISTS `konsumen`;
CREATE TABLE `konsumen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alamat` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of konsumen
-- ----------------------------
BEGIN;
INSERT INTO `konsumen` (`id`, `alamat`, `nama`, `telp`, `created_at`, `updated_at`, `user_id`) VALUES (1, 'jl....', 'adi', '0987999', '2025-05-16 20:33:00', '2025-05-16 20:33:12', NULL);
INSERT INTO `konsumen` (`id`, `alamat`, `nama`, `telp`, `created_at`, `updated_at`, `user_id`) VALUES (2, 'jl', 'suci', '0987', '2025-05-17 10:48:43', '2025-05-17 10:48:43', 16);
INSERT INTO `konsumen` (`id`, `alamat`, `nama`, `telp`, `created_at`, `updated_at`, `user_id`) VALUES (3, '-', 'wanda', '-', '2025-05-17 10:49:45', '2025-05-17 10:49:45', 17);
COMMIT;

-- ----------------------------
-- Table structure for pemesanan
-- ----------------------------
DROP TABLE IF EXISTS `pemesanan`;
CREATE TABLE `pemesanan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `konsumen_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nomor` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pemesanan
-- ----------------------------
BEGIN;
INSERT INTO `pemesanan` (`id`, `konsumen_id`, `tanggal`, `created_at`, `updated_at`, `nomor`, `total`) VALUES (3, 1, '2025-05-16', '2025-05-16 22:14:04', '2025-05-16 22:14:04', NULL, NULL);
INSERT INTO `pemesanan` (`id`, `konsumen_id`, `tanggal`, `created_at`, `updated_at`, `nomor`, `total`) VALUES (4, 3, '2025-05-17', '2025-05-17 10:56:21', '2025-05-17 10:56:21', NULL, NULL);
INSERT INTO `pemesanan` (`id`, `konsumen_id`, `tanggal`, `created_at`, `updated_at`, `nomor`, `total`) VALUES (5, 3, '2025-05-17', '2025-05-17 10:56:32', '2025-05-17 10:56:32', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `toko_id` int(11) unsigned DEFAULT NULL,
  `kategori_id` int(11) unsigned DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `foto` text,
  `deskripsi` text,
  `harga` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `kategori_id_produk` (`kategori_id`) USING BTREE,
  KEY `toko_id_produk` (`toko_id`) USING BTREE,
  CONSTRAINT `kategori_id_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `toko_id_produk` FOREIGN KEY (`toko_id`) REFERENCES `toko` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of produk
-- ----------------------------
BEGIN;
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (20, 22, 9, 'Baju Sasirangan Wanita', '619c5324a6909.jpeg', '<p>-</p>', '600000', '2021-11-23 10:34:12', '2021-11-23 10:35:28');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (21, 22, 9, 'Baju Sasirangan Wanita 2', '619c53607ad7e.jpeg', '<p>-</p>', '0', '2021-11-23 10:35:12', '2021-11-23 10:35:12');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (22, 22, 9, 'Kain Sasirangan', '619c5391447f2.jpeg', '<p>-</p>', '0', '2021-11-23 10:36:01', '2021-11-23 10:36:01');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (23, 63, 9, 'Baju Sasirangan Wanita', '619c53dc68ef6.jpeg', '<p>qurta Pakistan Sasirangan Bahan Katun Satin Size L<br></p>', '375000', '2021-11-23 10:37:16', '2021-11-25 14:48:31');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (24, 63, 9, 'Baju  Sasirangan Pria', '619c53fa1e811.jpeg', '<p>-Qurta Pakistan Sasirangan bahan Katun Satin Size L<br></p>', '375000', '2021-11-23 10:37:46', '2021-11-24 15:55:53');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (25, 63, 9, 'Baju Sasirangan Panjang', '619c5418a2ecd.jpeg', '<p>-Bahan Katun Sutra produk limited edition produksi 2 lembar saja setiap motif warna ukuran 200x145 cm<br></p>', '900000', '2021-11-23 10:38:16', '2021-11-24 15:46:44');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (26, 63, 9, 'Baju Sasirangan Wanita', '619c5473b9484.jpeg', '<p>one set sasirangan comben bahan katun sutra dan camelia size L<br></p>', '700000', '2021-11-23 10:39:47', '2021-11-24 15:54:00');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (27, 63, 9, 'Baju Sasirangan Wanita Kuning', '619c548a7a498.jpeg', '<p>-Gamis Sasirangan bahan katun satin komben size L<br></p>', '550000', '2021-11-23 10:40:10', '2021-11-24 15:56:56');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (28, 63, 9, 'Baju Sasirangan Wanita Biru', '619c54ad13503.jpeg', '<p>-Bahan katun sutera produk limited edition produksi 2 lemar saja setiap motif warna ukuran 200 x 155 cm</p>', '700000', '2021-11-23 10:40:45', '2021-11-24 15:54:50');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (29, 9, 10, 'Kripik Jamur Tiram', '619c55409f3e2.jpeg', '<p>-</p>', '20000', '2021-11-23 10:43:12', '2021-11-23 10:43:12');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (30, 33, 10, 'Abon Telang', '619c557f7f7f2.jpeg', '<p>-</p>', '25000', '2021-11-23 10:44:15', '2021-11-23 10:44:32');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (31, 33, 10, 'Amplang Tenggiri', '619c55b23f881.jpeg', '<p>-</p>', '10000', '2021-11-23 10:45:06', '2021-11-23 10:45:06');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (32, 33, 10, 'Asam Manis Tenggiri', '619c55c99553b.jpeg', '<p>-</p>', '25000', '2021-11-23 10:45:29', '2021-11-23 10:45:29');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (33, 33, 10, 'Abon Ayam', '619c55e49cf50.jpeg', '<p>-</p>', '25000', '2021-11-23 10:45:56', '2021-11-23 10:45:56');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (34, 18, 10, 'Kulit Ikan', '619c565486063.jpeg', '<p>Berat 35Gram</p>', '13000', '2021-11-23 10:47:48', '2021-11-23 10:47:48');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (35, 18, 10, 'Abon Ikan Gabus', '619c567521345.jpeg', '<p>Berat 100Gram</p>', '43000', '2021-11-23 10:48:21', '2021-11-23 10:48:21');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (36, 27, 10, 'Peyek Krenyes', '619c56d1d676e.jpeg', '<p>-</p>', '50000', '2021-11-23 10:49:53', '2021-11-23 10:49:53');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (37, 27, 10, 'Bingka Berandam', '6827292466d65.png', '<p>-</p>', '20000', '2021-11-23 10:50:27', '2025-05-16 20:01:40');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (38, 27, 10, 'Bingka Bakar', '619c572088317.jpeg', '<p>-</p>', '35000', '2021-11-23 10:51:12', '2021-11-23 10:51:12');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (39, 32, 10, 'Kuker Sagu Susu', '619c5755a2e34.jpeg', '<p>Kue Kering<br></p>', '37000', '2021-11-23 10:52:05', '2021-11-23 10:52:05');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (40, 27, 10, 'Bolu Mawar', '619c577a087c0.jpeg', '<p>-</p>', '20000', '2021-11-23 10:52:42', '2021-11-23 10:52:42');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (41, 27, 10, 'Sarimuka Lakatan', '619c579322158.jpeg', '<p>-</p>', '20000', '2021-11-23 10:53:07', '2021-11-23 10:53:07');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (42, 27, 10, 'Amparan tatak Pisang', '619c57b6299cb.jpeg', '<p>-</p>', '20000', '2021-11-23 10:53:42', '2021-11-23 10:53:42');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (43, 74, 9, 'Baju Sasirangan Wanita', '619c589e5e33c.jpeg', '<p>-</p>', '200000', '2021-11-23 10:57:34', '2021-11-23 11:12:13');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (45, 74, 9, 'Baju Sasirangan Pasangan', '619c58d602aba.jpeg', '<p>-</p>', '100000', '2021-11-23 10:58:30', '2021-11-23 11:21:32');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (46, 74, 9, 'Baju Sasirangan Wanita Biru Malam', '619c58efcc0e5.jpeg', '<p>-</p>', '13000', '2021-11-23 10:58:55', '2021-11-23 11:11:51');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (47, 74, 9, 'Baju Sasirangan Warna Emas', '619c5905a4956.jpeg', '<p>-</p>', '100000', '2021-11-23 10:59:17', '2021-11-23 11:12:22');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (48, 76, 9, 'Kain Sasirangan Pewarna Alam', '619c5a713fecf.jpeg', '<p>Bahannya : Kain Polisima</p>', '150000', '2021-11-23 11:05:21', '2021-11-23 11:08:40');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (50, 76, 9, 'Kain Sasirangan Pewarna Alam', '619c5aab5db99.jpeg', '<p>Bahannya : Katun Sutra</p>', '250000', '2021-11-23 11:06:19', '2021-11-23 11:08:50');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (51, 76, 9, 'Kain Sasirangan Pewarna Alam', '619c5ace5097b.jpeg', '<p>Bahannya : Kain Polisima</p>', '150000', '2021-11-23 11:06:54', '2021-11-23 11:08:57');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (52, 76, 9, 'Kain Sasirangan Pewarna Alam', '619c5aed3932f.jpeg', '<p>Bahan : Katun Satin</p>', '200000', '2021-11-23 11:07:25', '2021-11-23 11:09:05');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (53, 76, 9, 'Kain Sasirangan Pewarna Alam', '619c5b17cea1a.jpeg', '<p>Bahannya : Polisima</p>', '150000', '2021-11-23 11:08:07', '2021-11-23 11:08:07');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (54, 11, 9, 'Sasirangan Warna Alam', '619c5fe8bad19.jpeg', '<p>Bahannya : Katun Sutra</p>', '300000', '2021-11-23 11:28:40', '2021-11-23 11:28:40');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (55, 11, 9, 'Sasirangan Warna Alam', '619c600bdb5c8.jpeg', '<p>Bahan Katun Sutra</p>', '300000', '2021-11-23 11:29:15', '2021-11-23 11:29:15');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (56, 73, 9, 'Kain Sasirangan', '619f3604063fe.jpg', '<p>bahan paris<br></p>', '200000', '2021-11-25 15:06:44', '2021-11-25 15:06:44');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (57, 73, 9, 'Baju Kain Sasirangan', '619f36ea021d5.jpg', '<p>Kardigan Renda<br></p>', '250000', '2021-11-25 15:10:34', '2021-11-25 15:10:34');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (58, 22, 9, 'Kain Sasirangan', '61a5b6e156567.jpg', '<p>Kain Sutra Super Panjang 2.5 meter<br></p>', '1250000', '2021-11-30 13:30:09', '2021-11-30 13:30:09');
INSERT INTO `produk` (`id`, `toko_id`, `kategori_id`, `nama`, `foto`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES (59, 22, 9, 'Kain Sasirangan', '68272c9999c32.png', '<p>kain sutra panjang 2 meter<br></p>', '600000', '2021-11-30 13:33:56', '2025-05-16 20:16:25');
COMMIT;

-- ----------------------------
-- Table structure for profil
-- ----------------------------
DROP TABLE IF EXISTS `profil`;
CREATE TABLE `profil` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` text,
  `singkatan` varchar(255) DEFAULT NULL,
  `alamat` text,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `ig` varchar(255) DEFAULT NULL,
  `jam_kerja` varchar(255) DEFAULT NULL,
  `tentang_kami` mediumtext,
  `telp` varchar(255) DEFAULT NULL,
  `wa` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of profil
-- ----------------------------
BEGIN;
INSERT INTO `profil` (`id`, `nama`, `singkatan`, `alamat`, `email`, `facebook`, `ig`, `jam_kerja`, `tentang_kami`, `telp`, `wa`, `lat`, `long`) VALUES (1, 'Dinas Koperasi Usaha Mikro Dan Tenaga Kerja Kota Banjarmasin', 'Koperasi', 'Jl Brigjen H. Hasan Basri Simpang Tangga Jalur 2 No 3 Banjarmasin', 'Koperasi@gmail.com', 'Koperasi', 'Koperasi', '08:00-17:00 WITA', '<h2><font face=\"Times New Roman\"><b>Tentang Dinas Koperasi</b></font></h2>', '-', '082391020080', '-3.285306577528402', '114.59050297606154');
COMMIT;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `role_users_user_id_role_id_unique` (`user_id`,`role_id`) USING BTREE,
  KEY `role_users_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_users
-- ----------------------------
BEGIN;
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (1, 1);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (4, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (5, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (6, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (7, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (8, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (9, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (10, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (11, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (12, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (13, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (14, 3);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (15, 3);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (16, 3);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (17, 3);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'superadmin', '2020-12-23 23:17:35', '2020-12-23 23:17:35');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'user', '2021-10-27 11:37:41', '2021-10-27 11:37:41');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'konsumen', '2025-05-17 10:31:40', '2025-05-17 10:31:40');
COMMIT;

-- ----------------------------
-- Table structure for toko
-- ----------------------------
DROP TABLE IF EXISTS `toko`;
CREATE TABLE `toko` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(255) DEFAULT NULL,
  `nama_pemilik` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `user_id` int(11) unsigned DEFAULT NULL,
  `foto` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `alamat_toko` text,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of toko
-- ----------------------------
BEGIN;
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (9, 'UMKM PONDOK JAMUR LILY', 'LILIYANTI OETAMA', 'Jl.  Veteran RT. 14 No. 62, Banjarmasin', '081348407268', 'Budidaya dan Pembibitan Jamur Tiram, Jamur Tiram Segar, Keripik Jamur Tiram, Enzim Buah - Buahan', 7, '619c550593dcb.jpeg', '2021-11-01 14:08:47', '2023-11-16 10:32:07', '-3.320363756863717', '114.6000705394259', 'Jl.  Veteran RT. 14 No. 62, Banjarmasin', 'pondokjamurlilyoe@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (10, 'Amayna Sasirangan', 'Hj. Siti Maimunah', 'Jl. Sebrang Mesjid RT. 05 No. 18', '082150355827 - 087846373164', 'Sasirangan', 8, NULL, '2021-11-02 08:02:18', '2021-11-17 10:35:26', '-3.320363756863717', '114.6000705394259', 'Jl. Sebrang Mesjid RT. 05 No. 18', '-');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (11, 'Lina Sasirangan', 'Rusmalina', 'Jl. Sebrang Mesjid RT. 05 Gg. 2 No. 8, Banjarmasin', '081348231197', 'Sasirangan Pewarna Alam, Sasirangan Pewarna Textil, Topi Sasirangan, Kaos Sasirangan', 9, NULL, '2021-11-02 08:04:52', '2023-11-16 10:40:30', '-3.320363756863717', '114.6000705394259', 'Jl. Sebrang Mesjid RT. 05, Banjarmasin', '-');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (12, 'Dztya Handmade', 'Nurhamdhani', 'Jl. A. Yani Km 7.5 A.1/18B Citra Garden A5/4, Banjarmasin', '081351412322', 'Aksesoris dari Batu Alam dengan menggunakan kawat tembaga dan lempengan tembaga dan Craft (Tas Purun Hias)', 10, NULL, '2021-11-02 08:07:07', '2023-11-17 09:52:03', '-3.320363756863717', '114.6000705394259', 'Jl. A. Yani Km 7.5 A.1/18B Citra Garden A5/4, Banjarmasin', 'dhanyakbar@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (13, 'Kayu Manis 87', 'Riva Fariah, ST', 'Jl. Pramuka Gg. Kayu Manis RT. 8 No. 87, Banjarmasin', '082153089090', 'Pembuatan Minuman Serbuk Jahe Merah, Temulawak, Kunyit Putih dan Kopi Bubuk', 11, NULL, '2021-11-02 08:10:16', '2021-11-17 10:35:39', '-3.320363756863717', '114.6000705394259', 'Jl. Pramuka Gg. Kayu Manis RT. 8 No. 87, Banjarmasin', 'masrukin685@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (14, 'Bu Sumi', 'Suminah', 'Jln. HKSN Komp. AMD Permai Blok A5 No. 193 RT. 25 RW. 02, Banjarmasin', '081351878455', 'Kripik Pisang Boo Sumi, Kacang tepung, Kacang hijau goreng, Emping Jagung', 12, NULL, '2021-11-02 08:13:33', '2023-11-16 10:41:43', '-3.320363756863717', '114.6000705394259', 'Jln. HKSN Komp. AMD Permai Blok A5 No. 193 RT. 25 RW. 02, Banjarmasin', 'boosuminah@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (16, 'Citra Sari', 'Nurul Hidayah', 'Jl. Kuin Utara RT. 05 Gang Palapa No. 44', '082148858174', 'Makanan Ringan Kerupuk Haruan dan Kerupuk Udang', 13, NULL, '2021-11-02 08:15:29', '2025-05-16 20:03:03', '-3.320363756863717', '114.6000705394259', 'Jl. Kuin Utara RT. 05 Gang Palapa No. 44', 'dayah.citrasari@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (17, 'GHADIEZ ANEKA CEMILAN KACANG', 'Elysa', 'Jl. Kuin Utara RT.05 rw. 001 Gg. Palapa, Kelurahan Kuin Utara Banjarmasin', '081223138224', 'Makanan Ringan - Aneka Kacang (Kacang Hijau, Kacang Putih, Kacang Betampik, Kacang Goreng, Kacang Gula)', NULL, NULL, '2021-11-02 08:17:39', '2023-11-16 11:07:53', '-3.320363756863717', '114.6000705394259', 'Jl. Kuin Utara RT.05 rw. 001 Gg. Palapa, Kelurahan Kuin Utara, Banjarmasin', 'elysaghadiez@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (18, 'QUWIN IKAN GABUS', 'Heny Ardi', 'Jl. Sultan Adam RT. 23 No. 002, Kelurahan Surgi Mufti, Banjarmasin', '085390454590', 'Makanan  Olahan Ikan Gabus (Abon, Kerupuk, Amplang, Kulit Ikan, Albumin, Fillet Ikan Gabus, Kacang Goreng)', NULL, NULL, '2021-11-02 08:20:57', '2023-11-16 11:04:58', '-3.320363756863717', '114.6000705394259', 'Jl. Sultan Adam RT. 23 No. 002, Kelurahan Surgi Mufti, Banjarmasin', 'queenbyheny@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (19, 'Kamila Galeri Sasirangan', 'Alma Saufia Misbah', 'Jl. Padat Karya Komp. Perdana Mandiri Blok G, Jalur 5 No. 91 RT. 20, Kelurahan Sungai Andai, Banjarmasin', '085100364366, 085103577300', 'Produksi dan Penjualan Kain Sasirangan, Baju, Kaos, Jilbab dan Craft', NULL, NULL, '2021-11-02 08:24:12', '2023-11-16 11:00:54', '-3.320363756863717', '114.6000705394259', 'Jl. Seberang Mesjid RT. 5,  Kampung Sasirangan, Kelurahan Seberang Mesjid, Banjarmasin', 'riduan.pratama@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (20, '3D Cake and Cookies', 'Khairunnisa', 'Jl. Sutoyo. S No. 17d RT. 19 Antasan Besar, Banjarmasin', '081351569374', 'Semprit, Nastar, Kastengel, Putri Salju, Cookies Coklat, Sagu Keju, Spikuba, Melinjo Jagung, Pai Susu, Pit Moven, Tar Kelapa, Pastel, Risol, Makaroni Scutel, ipau', NULL, NULL, '2021-11-02 08:27:03', '2023-11-16 10:46:53', '-3.320363756863717', '114.6000705394259', 'Jl. Sutoyo. S No. 17d RT. 19 Antasan Besar, Banjarmasin', 'khairun.nisa310371@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (21, 'UMANYA FOODS', 'Andriani', 'Jl. Sutoyo S Gang III Taruna RT. 18 No.  18, Banjarmasin', '082155337761, 085386786144', 'Oseng Ikan Asin Tenggiri dalam Kemasan', NULL, NULL, '2021-11-02 08:30:11', '2023-11-16 10:54:57', '-3.320363756863717', '114.6000705394259', 'Jl. Sutoyo S RT. 17 No.  16, Banjarmasin', 'umanyafoods@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (22, 'Aman Sasirangan', 'Abdurrahman', 'Jl. Padat Karya Blok Batu Virus RT. 46 No. 32 Sungai Andai Banjarmasin', '081912061977', 'Aneka Sasirangan Pewarna Alam dengan motif premium\r\nAneka Sasirangan Pewarna Sintetis', NULL, NULL, '2021-11-02 08:34:25', '2023-11-24 10:07:05', '-3.320363756863717', '114.6000705394259', 'Jl. Padat Karya Blok Batu Virus RT. 46 No. 32 Sungai Andai Banjarmasin', 'amansasirangan444@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (23, 'Azima Black Garlic', 'Isnawati', 'Jl. Karya Sabumi IV No. 99A RT. 17, Banjarmasin', '081254665296', 'Aneka Makanan Sehat (Bawang Hitam Madu, Bawang Hitam Original, Bajakah Madu, Bajakah Extra Madu, Pasak Bumi Madu)', NULL, NULL, '2021-11-02 08:36:29', '2023-11-16 11:50:21', '-3.320363756863717', '114.6000705394259', 'Jl. Karya Sabumi IV No. 99A RT. 17, Banjarmasin', 'isnafarids@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (25, 'LINS', 'Naufal Lisna Reisya', 'Komp. Andai Jaya Persada Blok D No. 9', '081352112415', 'Fashion Sasirangan', NULL, NULL, '2021-11-02 08:43:20', '2021-11-02 08:43:20', '-3.320363756863717', '114.6000705394259', 'Komp. Andai Jaya Persada Blok D No. 8', 'lisnareisya@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (26, 'Ruth Oedi', 'Ruth Marliani Oedi', 'Banua Anyar Jl. 9 Nopember No. 48, Kelurahan Banua Anyar, Banjarmasin', '081251745939', 'Kain Sasirangan, Baju Kaos Sasirangan, Kemeja Sasirangan, Jaket Sasirangan, Outer Sasirangan, Tas Sasirangan, Handcraft (Tempat Tisu, Tutup Gelas, Taplak Meja, Shopping Bag, Topi dll)', NULL, NULL, '2021-11-02 08:45:37', '2023-11-16 11:42:34', '-3.320363756863717', '114.6000705394259', 'Kampung Melayu Gg. Nusantara NO. 16 Kelurahan Seberang Mesjid, Banjarmasin', 'ruthoedi@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (27, 'Alifwansa Banjarmasin', 'Fauliya', 'Jl. HKSN Komp. AMD Blok D4 No. 106, Banjarmasin', '0895605527774', 'Kue Tradisional (Bingka Bakar, Amparan Tatak Pisang, Sari Moka Lakatan, Putri Selat, Bingka Barandam), Snack,  Kuliner, Catering', NULL, NULL, '2021-11-02 08:47:41', '2023-11-16 11:38:05', '-3.320363756863717', '114.6000705394259', 'Jl. HKSN Komp. AMD Blok D4 No. 106, Banjarmasin', 'alifwansa.bjm@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (28, 'KAMILA', 'Nurbaiti, SE', 'Jl. Alalak Utara Komp. Gemilang Raya II Blok E No. 46', '088258511832', 'Kuliner', NULL, NULL, '2021-11-02 08:49:31', '2021-11-02 08:49:31', '-3.320363756863717', '114.6000705394259', 'Jl. Alalak Utara Komp. Gemilang Raya II Blok E No. 46', 'baiti100773@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (29, 'BanjaRay', 'Sri Sufia Ningsih, SE', 'Jl. Ingub RT. 31 No. 89 ,  Gatot Subroto, Kelurahan Kuripan, Banjarmasin', '082199042556', 'Kripik Pisang, Kue Basah dan Kering, Aneka Kacang - Kacangan, Aneka Sirup, Jamu Sari Empon, Catering', NULL, NULL, '2021-11-02 08:51:23', '2023-11-16 11:12:07', '-3.320363756863717', '114.6000705394259', 'Jl. Ingub RT. 31 No. 89 ,  Gatot Subroto, Kelurahan Kuripan, Banjarmasin', 'srisufianingsih38@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (30, 'Dapoer D3', 'Jainah', 'Jl. Zafri Zam-zam Komp. LLASDP2 2/PLN No. 115 RT.42', '087841235272 - 081312599969', 'Kuliner', NULL, NULL, '2021-11-02 08:53:34', '2021-11-02 08:53:34', '-3.320363756863717', '114.6000705394259', 'Jl. Zafri Zam-zam Komp. LLASDP2 2/PLN No. 115 RT.42', '-');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (31, 'Duo Pemuda', 'Emma Sofian', 'Sultan Adam Komplek Perkasa Indah No. 1B RT. 21, Banjarmasin', '082351513500, 081346023060', 'Kacang Umpet, Kacang Skipy, Sapat Balado, Bawang Goreng, Sirup Bunga Telang, Bumbu Rendang, Bumbu Rawon, Bumbu Karih, Bumbu Samin, Catering Timur Tengah', NULL, NULL, '2021-11-02 08:55:33', '2023-11-16 11:27:41', '-3.320363756863717', '114.6000705394259', 'Sultan Adam Komplek Perkasa Indah No. 12B RT. 21, Banjarmasin', 'emmathalib96@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (32, 'Kukis Aisyah', 'Lailatul Aisyah', 'Jl. S. Parman 66 Gg. Nusa Indah RT. 04 No. 47', '081348138100', 'Kukisner (Kue Kering/Kue Basah)', NULL, NULL, '2021-11-02 09:00:34', '2021-11-02 09:00:34', '-3.320363756863717', '114.6000705394259', 'Jl. S. Parman 66 Gg. Nusa Indah RT. 04 No. 47', 'lailatul2511@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (33, 'Dapoer Samman', 'Sandra Novia', 'Teluk Tiram Jl. Ampera Gang Ampera III RT. 38, Banjarmasin', '081258850170', 'Telang Asam Manis, Amplang Tenggiri, Aneka Ikan Asin', NULL, NULL, '2021-11-02 09:02:32', '2023-11-16 10:57:43', '-3.320363756863717', '114.6000705394259', 'Teluk Tiram Jl. Ampera Gang Ampera III RT. 38, Banjarmasin', 'sandranovia1989@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (34, 'Dapoer Ghi\'sya', 'Ema Apriani', 'Jln. HKSN Komp. Amd Permai Blok C7 No.174 RT.16/01 Alalak Tengah, Banjarmasin Utara', '082255303392', 'Aneka Kue Bolu, Aneka Kue Basah', NULL, NULL, '2021-11-22 13:02:31', '2023-11-16 11:23:16', '-3.320363756863717', '114.6000705394259', 'Jln. HKSN Komp. Amd Permai Blok C7 No.174 RT.16/01 Alalak Tengah, Banjarmasin Utara', 'ema.darani78@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (35, 'Nesyandra', 'Iin Noorhasanah', 'Jl. Padat karya Komplek Purnama Permai 3 Jalur 14 RT.38 No.442, Sungai Andai, Banjarmasin', '087847032244', 'Kuliner (Aneka Kue Kering Pie, Aneka Bubur Banjar dan Aneka Gorengan)', NULL, NULL, '2021-11-22 13:05:16', '2023-11-16 12:00:01', '-3.320363756863717', '114.6000705394259', 'Jl. Padat karya Komplek Purnama Permai 3 Jalur 8 B RT.38 No.442, (Paling Ujung) Sungai Andai, Banjarmasin', 'hanasah007@gmail.com dan nesyaandra648@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (36, 'Dapoer  Adam', 'Yessy Irawati Saputri', 'Jl. Mantuil Komplek Era Bangun No.44 RT.01 RW. 01, Kelurahan Mantuil, Banjarmasin', '081944938708', 'Jamu, Tahu Bakso, Pempek Pempek, Serbuk Jahe', NULL, NULL, '2021-11-22 13:07:10', '2023-11-16 11:20:16', '-3.320363756863717', '114.6000705394259', 'Jl. Mantuil Komplek Era Bangun No.44 RT.01 RW. 01, Kelurahan Mantuil, Banjarmasin', 'eccibocci@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (37, 'Eristy Cookies', 'Hotleris. T Damanik', 'Jl. Belitung Darat No. 116 RT. 16  Gg.Barak 2, Kelurahan Kuin Cerucuk, Banjarmasin', '082110720158', 'Nastar, Sagu Keju, Kue Kacang, Semprit', NULL, NULL, '2021-11-22 13:09:15', '2023-11-16 11:16:42', '-3.320363756863717', '114.6000705394259', 'Jl. Belitung Darat No. 116 RT. 16  Gg.Barak 2, Kelurahan Kuin Cerucuk, Banjarmasin', 'tiomaslihotleris@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (38, 'Ella Butik', 'Laila Rahman S.Ag', 'Jl. HKSN Komplek Herlina Blok A RT.12', '081348354363', 'Fashion', NULL, NULL, '2021-11-22 13:11:16', '2021-11-22 13:11:16', '-3.320363756863717', '114.6000705394259', 'Jl. HKSN Komplek Herlina Blok A RT.12 RW.02', 'lailarahmah17@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (39, 'Bumbu Dapur \"UMCHA\"', 'Yenny Emy Murty', 'Jl. Sungai Baru No.71 RT.02, Kelurahan Sungai Baru, Banjarmasin', '085387250001', 'Bumbu Dapur Kering, Keripik Pisang, Kacang Betampik, Kerupuk Ikan, Sumpia,', NULL, NULL, '2021-11-22 13:12:50', '2023-11-16 11:33:35', '-3.320363756863717', '114.6000705394259', 'Jl. Sungai Baru No.71 RT.02, Kelurahan Sungai Baru, Banjarmasin', 'yennyemymurty20@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (40, 'S2S Fashion By Mynica', 'Mona Yoan Nica', 'Jl. Tembus Perumnas Komplek Herlina No.47', '089678472325', 'Fashion dan Handmade', NULL, NULL, '2021-11-22 13:16:17', '2021-11-22 13:16:17', '-3.320363756863717', '114.6000705394259', 'Komplek Graha 4 Graha Mandiri No.56', 'monayoannica@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (41, 'Sumber Usaha 2N', 'Zuraida', 'Jl. Saka Permai Gg.Sederhana RT.06 No.51 Banjarmasin', '083196322921', 'Kuliner', NULL, NULL, '2021-11-22 13:18:06', '2021-11-22 13:18:06', '-3.320363756863717', '114.6000705394259', 'Jl. Saka Permai Gg.Sederhana RT.06 No.51 Banjarmasin', 'raudhatulnazifa6@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (42, 'ALSAHID Sasirangan', 'Risma Widiyanti', 'Jl. A. Yani Km.3,5 Gg.Binjai RT.08 No.73 Banjarmasin', '08875410436', 'Kain dan Kaos Sasirangan, Tas, Asesoris, Kemeja Cowo dan Cewe, Dress, Jilbab, Mukena, Shal, Gamis, Celana Kulot, Jaket Hijab', NULL, NULL, '2021-11-22 13:20:08', '2023-11-17 10:00:42', '-3.320363756863717', '114.6000705394259', 'Jl. A. Yani Km.3,5 Gg.Binjai RT.08 No.73 Banjarmasin', 'alsahidsasirangan@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (43, 'Evvy Cake', 'Evvy Herlina', 'Jl. Padat Karya Komplek Perdana Mandiri Blok D/1, No.32 RT.14, Banjarmasin', '085248798989', 'Kue Bolu, Bolu Zebra, Balu gula Merah, Pie Isi Nanas, Pie Isi Kacang, Kraker Kentang, Risol Mayo, Risol Isi Sayur, Zero Cookies Milo, Kue Sus, Kue Penganten, Kue Ulang Tahun, Snak Box, Nasi Uduk', NULL, NULL, '2021-11-22 13:22:29', '2023-11-17 09:56:53', '-3.320363756863717', '114.6000705394259', 'Jl. Padat Karya Komplek Perdana Mandiri Blok D/1, No.32 RT.14, Banjarmasin', 'evvycake@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (44, 'Mie Ayam Ijo 99', 'Nurhayati', 'Jl. Veteran Simpang SMP7 RT.30 No.90 Jalur 7, Banjarmasin', '085249048866', 'Mie Ayam Ijo (mie frozen terbuat dari pewarna alami yaitu sayur sawi), Aneka Kue Basah, Rujak Serut, Makaroni Spiral', NULL, NULL, '2021-11-22 13:24:03', '2023-11-17 10:21:05', '-3.320363756863717', '114.6000705394259', 'Jl. Veteran Simpang SMP7 RT.30 No.90 Jalur 7, Banjarmasin', 'miayamijo99@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (45, 'Putra Tunggal', 'Hj. Mahrita Imbran', 'Jl. Sultan Adam Komplek Sultan Adam Permai No.12', '08125003452', 'Kacang Bawang', NULL, NULL, '2021-11-22 13:25:37', '2021-11-22 13:25:37', '-3.320363756863717', '114.6000705394259', 'Jl. Sultan Adam Komplek Sultan Adam Permai No.12', 'mahritamahrita665@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (46, 'UKM Mama Utha', 'Hamdani', 'Jl. Pekapuran A RT.30 No.40', '082152252876', 'Kuliner (Manisan Agar-agar Kering)', NULL, NULL, '2021-11-22 13:27:56', '2021-11-22 13:27:56', '-3.320363756863717', '114.6000705394259', 'Jl. Pekapuran A RT.30 No.40', 'wahyuwahya5878@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (47, 'Firayuri', 'Endah Sulistiorini', 'Jl. Padat karya Komplek Purnama Permai 3 Jalur 8B No.395 RT.38/01 Sungai Andai, Banjarmasin', '081332427262, 088247249815', 'Keripik Daun Anggur, Keripik Nangka, Keripik Nanas, Keripik Pisang, Keripik Labu, Keripik Pare, Keripik Bayam, Selai Anggur+Nanas, Kue Tamrin, Minuman Rempah Tradisional (Kunyit Asem, Kunyit Asem Sirih, Kunyit Asem Sirih Pinang Anum, Kunyit Jahe, Jahe Serai, Wedang Jahe, Sari Rempah Curcumin, Tahu Bakso, Mie Kuning, Kue Basah, Kue Kering, Keripih Rambutan, Keripik Pepaya, Keripik Salak, Buah Anggur', NULL, NULL, '2021-11-22 13:30:01', '2023-11-17 10:17:31', '-3.320363756863717', '114.6000705394259', 'Jl. Padat karya Komplek Purnama Permai 3 Jalur 8B No.395 RT.38/01 Sungai Andai, Banjarmasin', 'sulistioriniendah741@gmail.com dan firayurirakha@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (48, 'Dapur Adira', 'Dewi Septianingsih', 'Jl. P. Karya Komplek Perdana Mandiri Blok.6 Jalur 1 No.20 Sungai Andai, Banjarmasin Utara', '082352376411', 'Roti Manis, Kue Sus, Bolu Gulung Mini, Pie Brownis, Lemper, Aneka Bolu, Keripik Tempe', NULL, NULL, '2021-11-22 13:31:54', '2023-11-17 11:16:19', '-3.320363756863717', '114.6000705394259', 'Jl. P. Karya Komplek Perdana Mandiri Blok.6 Jalur 1 No.20 Sungai Andai, Banjarmasin Utara', 'sheptia.dewi12@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (49, 'We Urban Barber\'s (WUB)', 'Muhammad Yudhi Saputra', 'Jl. Sei Andai Komplek Tanjang No.12 RT.13', '082351188521', 'Barbermen (Jasa Cukur Rambut)', NULL, NULL, '2021-11-22 13:34:02', '2021-11-22 13:34:02', '-3.320363756863717', '114.6000705394259', 'Jl. Sei Andai Komplek Tanjang No.12 RT.13', 'weurbanbarbers@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (50, 'DeArta', 'Esti Desiana Prasetyowati', 'Jl. Jeruk Purut XI(sebelas) No.04 RT.071 / RW.0o2 Sungai Andai, Banjarmasin', '082353106599', 'Fashion dan Sasirangan', NULL, NULL, '2021-11-22 13:37:12', '2023-11-17 10:07:44', '-3.320363756863717', '114.6000705394259', 'Jl. Jeruk Purut XI(sebelas) No.04 RT.071 / RW.0o2 Sungai Andai, Banjarmasin', 'desianaprasetyowati_dp06@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (51, 'Sartika Supyanti', 'Ashfiya Collection', 'Jl. Pawa Sari Raya Seberang Masjid Mujahidin', '08565497427', 'Tata Busana', NULL, NULL, '2021-11-22 13:38:47', '2021-11-22 13:38:47', '-3.320363756863717', '114.6000705394259', 'Jl. Pawa Sari Raya Seberang Masjid Mujahidin', 'sartikasupyanti123@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (63, 'D\'SUJING SASIRANGAN LIMITED', 'Muhammad Rafi', 'Jl. Sungai Jingah RT.17 RW.01 No.93, Kampung Sasirangan Sungai Jingah, Banjarmasin Utara, Kalimantan Selatan', '085251111578', 'D\'Sujing Sasirangan Limited Produksi Kain Sasirangan Khas Kalimantan Selatan Produk Limeted Produksi Setiap Motif Warna Masing - Masing Ada 2 Lembar dan 1 Lembar Saja, Bagi Anda Yang Memilik Produk D\'Sujing Sasirangan Limited otomatis pemakainya Anda Sendiri Di Banjarmasin Bahkan Di Indonesia Maupun Dunia', NULL, NULL, '2021-11-22 14:05:50', '2023-11-24 10:03:19', '-3.320363756863717', '114.6000705394259', 'Jl. Sungai Jingah RT.17 RW.01 No.93, Kampung Sasirangan Sungai Jingah, Banjarmasin Utara, Kalimantan Selatan', 'rafisjing@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (73, 'Sasirangan Kayu Baimbai', 'Hj. Eva', 'Jl. Pahlawan No.67 RT.07', '081251040540', 'Kain Sasirangan & Aksesoris', NULL, NULL, '2021-11-22 14:23:44', '2021-11-22 14:23:44', '-3.320363756863717', '114.6000705394259', '-', 'lulula@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (74, 'Keluarga Sasirangan', 'Nurul Zainah', 'Jl. Sungai Jingah RT.06 No.65 Banjarmasin', '087814150236', 'Kain Sasirangan, Kaos Sasirangan, Kemeja Cewe dan Cowo Sasirangan, Sendal, Tas, Rok Sasirangan, Jaket Sasirangan, Laung, Shal, Dompet, Topi Pantai, Kopiah, Switer, Aneka Jenis Celana', NULL, NULL, '2021-11-22 14:25:23', '2023-11-17 09:33:32', '-3.320363756863717', '114.6000705394259', 'Jl. Sungai Jingah RT.06 No.65 Banjarmasin', 'nurulzainah024@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (75, 'Zakaria Sasirangan', 'Suharni', 'Jl. Sungai Jingah RT.17 No.56', '083143729988', 'Sasirangan Banjar', NULL, NULL, '2021-11-22 14:26:56', '2021-11-22 14:26:56', '-3.320363756863717', '114.6000705394259', 'Jl. Sungai Jingah RT.17 No.56', 'suharzakaria@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (76, 'Warlam Sasirangan', 'Elfi Hep Dina', 'Jl. Sungai Jingah RT.17 No.259 Banjarmasin', '0887435963872', 'Kain dan Kaos Sasirangan', NULL, NULL, '2021-11-22 14:29:04', '2023-11-17 09:40:20', '-3.320363756863717', '114.6000705394259', 'Jl. Sungai Jingah RT.17 No.91 Gg. H Purnama, Banjarmasin', 'elfihepdina@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (77, 'H7 Purnama Sasirangan', 'Sri Hartaty', 'Jl. Sungai Jingah RT.17 No.89, Banjarmasin', '082350331279', 'Kain dan Kaos Sasirangan, Jilbab, Mukena, Kemeja Cewe dan Cowo, Jaket, Celana, Tas, Rok', NULL, NULL, '2021-11-22 14:30:54', '2023-11-17 09:44:17', '-3.320363756863717', '114.6000705394259', 'Jl. Sungai Jingah RT.17 No.44, Banjarmasin', 'pt.hjpurnamasasirangan@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (78, 'Ipan Berkah Sasirangan', 'Mariyani', 'Jl. Sungai Jingah RT.17 RW.01, Banjarmasin', '085332904337, 083852268675', 'Kain dan Kaos Sasirangan Banjar, Jilbab, Kemeja, Rok, Kulot', NULL, NULL, '2021-11-22 14:32:39', '2023-11-17 09:37:28', '-3.320363756863717', '114.6000705394259', 'Jl. Sungai Jingah RT.17 RW.01, Banjarmasin', 'abdillahmuhammad@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (80, 'AMIE CAKE', 'Nurul Huda', 'Jl. Teluk Kelayan No. 12 RT. 03 RW, Banjarmasin', '0895375890107', 'Kue Kering yang berbahan dasar kacang dengan beberapa varian ada belinjo dan kelapa, Nastar, Putri Salju, Kastangel dan Aneka  Kue Bolu', NULL, NULL, '2023-11-22 09:33:48', '2023-11-22 10:32:40', '-3.320363756863717', '114.6000705394259', 'Jl. Teluk Kelayan No. 12 RT. 03 RW, Banjarmasin', 'huda1108@mail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (81, 'BY MOMMY AYRA', 'EKA PUTRI MAHDENNY', 'Jl. Nakula V No 64 RT 26 Komp. BPP Banjarmasin', '083153317000', 'Cake Pisang Kenari,Klappetart', NULL, NULL, '2023-11-22 09:35:03', '2023-11-22 09:35:03', '-3.320363756863717', '114.6000705394259', 'Jl. Nakula V No 64 RT 26 Komp. BPP Banjarmasin', 'bymommyayra@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (82, 'Dapur Ve', 'VERA NOVIANTI', 'Jl. Tatah Bangkal Luar Komp. Suaka Permata Indah Blok B No.24 Banjarmasin', '082151406333', 'Aneka Cireng,   Empe Empe, Churros, Cimol', NULL, NULL, '2023-11-22 09:38:28', '2023-11-22 09:45:56', '-3.320363756863717', '114.6000705394259', 'Jl. Tatah Bangkal Luar Komp. Suaka Permata Indah Blok B No.24 Banjarmasin', 'veyvey.novianti@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (83, 'NAJMY KHALISA', 'Sahidah', 'Jl. Laksana Intan RT. 12 No. 10, Kelurahan Kelayan Selatan, Banjarmasin', '081348637761', 'Keripik Pisang, Kerupuk Bumbu, Kacang Kribo, Aneka Kue Bolu (Putri Keraton, Bolu Pisang, Bolu Caramel, Bingka dll), Aneka Kue Kering', NULL, NULL, '2023-11-22 09:39:35', '2023-11-22 09:39:35', '-3.320363756863717', '114.6000705394259', 'Jl. Laksana Intan RT. 12 No. 10, Kelurahan Kelayan Selatan, Banjarmasin', 'sahidah447@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (84, 'HAURA CAKE', 'ALIA', 'Komplek Beruntung Jaya Jl. Samudara II No.29 RT 45 Banjarmasin', '085751417172', 'Aneka Kue Basah Khas Banjar, Aneka Cemilan, Aneka Bolu, Aneka Roti', NULL, NULL, '2023-11-22 09:43:09', '2023-11-22 09:43:09', '-3.320363756863717', '114.6000705394259', 'Komplek Beruntung Jaya Jl. Samudara II No.29 RT 45 Banjarmasin', 'hauranaziha123@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (85, 'RASTI CAKE & COOKIES', 'Rasti Martanti', 'Jl. Japri Zam Zam Komplek Grawiratama No. 40 RT. 39, Kelurahan Belitung Selatan, Banjarmasin', '085822317576', 'Aneka Kue Kering, Aneka Kue Bolu, Roti, Kue Ulang Tahun, Kue Pengantin, Kue Tampah, Snack Box', NULL, NULL, '2023-11-22 09:44:01', '2023-11-22 09:44:01', '-3.320363756863717', '114.6000705394259', 'Jl. Japri Zam Zam Komplek Grawiratama No. 40 RT. 39, Kelurahan Belitung Selatan, Banjarmasin', 'martantirasti@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (86, 'GANDUT\'S CORNER', 'Wahyu Astuti Ningsih', 'Jl. SMK NU 2 Komplek Green Sunny Estate No. 2, Kelurahan Kelayan Timur, Banjarmasin', '082348350808', 'Aneka Cemilan, Bento Daging BlackPaper, Ayam Cincang Teriyaki, Ayam Tepung Cabe Garam dan Nasi Hainan', NULL, NULL, '2023-11-22 09:48:50', '2023-11-22 09:48:50', '-3.320363756863717', '114.6000705394259', 'Jl. SMK NU 2 Komplek Green Sunny Estate No. 2, Kelurahan Kelayan Timur, Banjarmasin', 'gandutscorner@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (87, 'CIKY KITCHEN', 'Arbayani', 'Jl. Kelayan B Gg. Cempaka RT. 13 No. 94 A, Kelurahan Kelayan Tengah, Banjarmasin', '087825244432', 'Aneka Kue Basah, Risol, Pastel, Kripik Bawang', NULL, NULL, '2023-11-22 09:52:36', '2023-11-22 09:52:36', '-3.320363756863717', '114.6000705394259', 'Jl. Kelayan B Gg. Cempaka RT. 13 No. 94 A, Kelurahan Kelayan Tengah, Banjarmasin', 'yaniiaja1983@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (88, 'DAPUR MAMA NIA', 'SULISTIANI', 'Jl. Keramat Raya Gg.Nyiur RT.4 No. 30 Banjarmasin', '087815890322', 'Kacang Bawang, Kue Nona manis', NULL, NULL, '2023-11-22 09:53:47', '2023-11-22 09:53:47', '-3.320363756863717', '114.6000705394259', 'Jl. Keramat Raya Gg.Nyiur RT.4 No. 30 Banjarmasin', 'niaaprilai84@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (89, 'OLAHAN MAKANAN AMANAH', 'Siti Chotimah', 'Jl. AMD Besar Gg. Amanah RT. 35 RW. 02 No. 33, Kelurahan Pekapuran Raya, Banjarmasin Timur', '081345204403', 'Jamu siap seduh (Jahe Merah, Kunyit Putih, Temulawak Kunyit Asam, Kunyit Sirih), Ting Ting Jahe, Kripik Pisang, Kripik Singkong', NULL, NULL, '2023-11-22 09:56:19', '2023-11-22 09:56:19', '-3.320363756863717', '114.6000705394259', 'Jl. AMD Besar Gg. Amanah RT. 35 RW. 02 No. 33, Kelurahan Pekapuran Raya, Banjarmasin Timur', 'sitichotimah2472@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (90, 'D\'SAN SNACK & CATERING', 'Beta Al Chasana', 'Jl. Cempaka Putih Gg. 8 No. 75 RT. 16, Kelurahan Kuripan, Banjarmasin Timur', '0811510499', 'Sambel Pecel Madiun, Kentang Mustofa, Abon Haruan', NULL, NULL, '2023-11-22 09:59:09', '2023-11-22 09:59:09', '-3.320363756863717', '114.6000705394259', 'Jl. Cempaka Putih Gg. 8 No. 75 RT. 16, Kelurahan Kuripan, Banjarmasin Timur', 'alhasana@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (91, 'Ittiba Rasa', 'UTAMI ASMARANI', 'Jl. Teluk Kelayan Gg. Kura Kura RT.1 RW.1 No.63 Banjarmasin', '089519036194', 'Aneka Kue Basah ( Kue Resoles,Bronis,Bolu,Martabak Mini )', NULL, NULL, '2023-11-22 10:00:33', '2023-11-22 10:00:33', '-3.320363756863717', '114.6000705394259', 'Jl. Teluk Kelayan Gg. Kura Kura RT.1 RW.1 No.63 Banjarmasin', 'tamidinda92@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (92, 'DAPOER AS_SYIFA', 'Maria Ulfah', 'Jl. Sungai Andai Komplek Kayu Bulan Ndo. 29 RT. 62, Banjarmasin', '083867092040', 'Rempeye, Akar Pinang, Kripik Bayam, Kue Rokok, Kue Jintan Manis/Asin, Keripik Tahu, Tahu Kremes, Kue Kacang, Aneka Tumpeng, Snack Box, Catering', NULL, NULL, '2023-11-22 10:04:18', '2023-11-22 10:04:18', '-3.320363756863717', '114.6000705394259', 'Jl. Sungai Andai Komplek Kayu Bulan Ndo. 29 RT. 62, Banjarmasin', 'mariaulfah2019@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (93, 'IDA IKHSHA', 'NUR  ASNI YURAIDA', 'Jl Pangeran Muhammad Noor Gg.1007 No.21 Rt.46 RW.03 Pelambuan Banjarmasin', '085393768646', 'Aneka Kue Basah ( Pie, Resoles, Kue Kukus, Kue Bolu, Apam Barenda,Lumpur Surga,Bolu Gulung Mini )\r\nAneka Kue Kering ( Akar Pinang dan Kue Kacang )', NULL, NULL, '2023-11-22 10:06:12', '2023-11-22 10:42:21', '-3.320363756863717', '114.6000705394259', 'Jl Pangeran Muhammad Noor Gg.1007 No.21 Rt.46 RW.03 Pelambuan Banjarmasin', 'idaikhsha123@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (94, 'J2SNACK', 'Mirna Yunia', 'Jl. Bumi Mas Raya Komplek Bumi Pertiwi 2 No. 13, RT 32, Kelurahan Pemurus Baru, Banjarmasin Selatan', '088704654124', 'Kue Untir-untir/Tambang/Colok', NULL, NULL, '2023-11-22 10:07:36', '2023-11-22 10:07:36', '-3.320363756863717', '114.6000705394259', 'Jl. Bumi Mas Raya Komplek Bumi Pertiwi 2 No. 13, RT 32, Kelurahan Pemurus Baru, Banjarmasin Selatan', 'punyajam2@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (95, 'sarah.bakehouse', 'Raisa Noorhairiyati', 'Jl. Sadewa 2 No. 5 RT. 24 RW. 03, Kelurahan Pemurus Dalam , Banjarmasin Selatan', '081250426669', 'Cake n Pastry (Brownis Kukus dan Bakar, Banana Strudel)', NULL, NULL, '2023-11-22 10:15:16', '2023-11-22 10:39:47', '-3.320363756863717', '114.6000705394259', 'Jl. Sadewa 2 No. 5 RT. 24 RW. 03, Kelurahan Pemurus Dalam , Banjarmasin Selatan', 'dapur.sarah1977@gamil.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (96, 'EAT Snack', 'EMMA YULIATI', 'Jl. Bawang Putih .Ing-ub RT.31 No.95 RW.02 Gatot Subroto Banjarmasin', '085248078763 / 085754943853', 'Aneka Minuman Rempah Bubuk ( Jahe, Kunyit, Kunyit Putih, Temulawak )\r\nAneka Makanan Ringan  ( Keripik Pisang, Akar Pinang )\r\nAneka Kue Basah ( Puding, Bronis, Roti Kukus )\r\nAneka Kue Kering ( Kue Nastar,Kue Lidah Kucing, Kue Sumprit,Kue Kastengel )', NULL, NULL, '2023-11-22 10:16:35', '2023-11-22 10:23:35', '-3.320363756863717', '114.6000705394259', 'Jl. Bawang Putih .Ing-ub RT.31 No.95 RW.02 Gatot Subroto Banjarmasin', 'ibuemma65@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (97, 'AJRIYA MERCHANDISE', 'Masfarina', 'Jl. Karya Mufakat Km. 5,7 Komplek Karya Sejati RT. 31 No. 32, Kelurahan Pemurus Luar, Banjarmasin', '085945643584', 'Amplang Sutra, Kuwaci Bigi Waluh, Kain Sasirangan', NULL, NULL, '2023-11-22 10:19:16', '2023-11-22 10:19:16', '-3.320363756863717', '114.6000705394259', 'Loby Kecamatan Banjarmasin Timur', 'masfarina79@gmail. com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (98, 'BOSY  SAMBAL', 'MUHAMMAD TAUFIK', 'Jl. Kelayan B Gg. Bersama RT.19 No32 Banjarmasin', '081253530060', 'Aneka Sambal ( Sambal Bawang , Sambal Kemiri )', NULL, NULL, '2023-11-22 10:21:09', '2023-11-22 10:21:09', '-3.320363756863717', '114.6000705394259', 'Jl. Kelayan B Gg. Bersama RT.19 No32 Banjarmasin', 'mutamt07@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (99, 'SYAMSIAH', 'Syamsiah', 'Jl. Sultan Adam Komplek Kelapa Gading RT. 23 No. 33, Kelurahan Antasan Kecil Timur, Banjarmasin Utara', '081223131195', 'Keripik Pisang, Rempeye, Kunyit Bubuk, Jahe Bubuk, Temulawak Bubuk, Kunyit Putih Bubuk', NULL, NULL, '2023-11-22 10:24:17', '2023-11-22 10:24:17', '-3.320363756863717', '114.6000705394259', 'Jl. Sultan Adam Komplek Kelapa Gading RT. 23 No. 33, Kelurahan Antasan Kecil Timur, Banjarmasin Utara', 'syamsiahsyamsiah16@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (100, 'AS NAYLAH', 'Jumiatul Hasanah', 'Jl. Belitung Darat Gg. Teuku UmarRT. 13 No. 47, Kelurahan Belitung Utara, Banjarmasin Barat', '087810429602', 'Aneka Kue Basah (Bingka Barandam) dan Aneka Kue Bolu', NULL, NULL, '2023-11-24 09:25:39', '2023-11-24 09:25:39', '-3.320363756863717', '114.6000705394259', 'Jl. Belitung Darat Gg. Teuku UmarRT. 13 No. 47, Kelurahan Belitung Utara, Banjarmasin Barat', 'jumiatul86@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (101, 'WEEKCAKE.ID', 'GUS SUSANTI', 'Jl. Barito Hulu RT.53 RW.004 No.16 Banjarmasin', '083149219100', 'Aneka Kue Basah ( Bronis, Pie, Donat,Sus,Resoles dan lain - alin )', NULL, NULL, '2023-11-24 09:26:04', '2023-11-24 09:26:04', '-3.320363756863717', '114.6000705394259', 'Jl. Barito Hulu RT.53 RW.004 No.16 Banjarmasin', 'gussusanti@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (102, 'EVA NASTAR', 'Yonifa Tri Andini Putri Mulawardhani', 'Jl. Keramaian RT. 001 RW. 001 N0. 42, Kelurahan Antasan Besar, Kecamatan Banjarmasin Terngah', '082153928905', 'Aneka Kue Kering (Nastar, Putri Salju, Semprit, Kastangel) dan Aneka Kue Bolu', NULL, NULL, '2023-11-24 09:29:33', '2023-11-24 09:29:33', '-3.320363756863717', '114.6000705394259', 'Jl. Keramaian RT. 001 RW. 001 N0. 42, Kelurahan Antasan Besar, Kecamatan Banjarmasin Terngah', 'evayonifa@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (103, 'KUKER FITRIA', 'FITRIANA', 'Jl. HKSN Komplek AMD Permai Blok A21 No.436 Banjarmasin', '082250009856', 'Aneka Kue Kering ( Nastar, Sagu Keju)\r\nAneka Kue Basah ( Bolu Kelemben dan Bolu Pisang Ambon )\r\nAneka Handmade ( Bros Rajutan, Tempelan Kulkas, Boneka Rajutn )', NULL, NULL, '2023-11-24 09:32:12', '2023-11-24 09:32:12', '-3.320363756863717', '114.6000705394259', 'Jl. HKSN Komplek AMD Permai Blok A21 No.436 Banjarmasin', 'fitrianaaluwie75@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (104, 'DAPUR CIL YANTI', 'BETTY WAHYU SUGIYANTI', 'Jl. Pembangunan II Komp.Sugiono I No.25 RT.40 Banjarmasin', '083159880888', 'Aneka Kue Basah ( Resoles,Arem-Arem ,Lemper, Patel, Pie Buah )\r\nAneka Kue Kering ( Kue Gabus Keju, Nastar, Puteri Salju,Katengel )', NULL, NULL, '2023-11-24 09:39:34', '2023-11-24 09:39:34', '-3.320363756863717', '114.6000705394259', 'Jl. Belitung Darat Gang Samadi Ilham No.46 RT 17 Kelurahan Belitung Utara Banajarmasin', 'dapurcilyanti22@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (105, 'LIAN CAKE\'S', 'Lily Halim', 'Jl. HKSN Komplek Surya Gemilang Blok. O No. 68 RT. 22, Kelurahan Kuin Utara, Kecamatan Banjarmasin Utara', '085219968303', 'Aneka Kue Kering (Nastar, Palm Sugar, Putri Salju, Fantasi, Kue Bawang, Coco Chips), Aneka Kue Basah (Roti Gambul, Panada, Roti Siput, Casava, Risoles Mayo, Salad Buah, Pangsit Goreng), Sasirangan', NULL, NULL, '2023-11-24 09:44:05', '2023-11-24 09:44:05', '-3.320363756863717', '114.6000705394259', 'Jl. HKSN Komplek Surya Gemilang Blok. O No. 68 RT. 22, Kelurahan Kuin Utara, Kecamatan Banjarmasin Utara', 'halimlily280@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (106, 'COOKLAND.ID', 'MAHRITA', 'Jl. Benua Anyar Komp. Banua Anyar Permai No.52 Banjarmasin', '08115161970', 'Aneka Kue Basah ( Bingka Barandam, Lakkerholan, Bronis,Bolu )\r\nAneka Kue Kering ( Lidah Kucing, Naster, Putri Salju ,Kue Sumprit,', NULL, NULL, '2023-11-24 09:50:29', '2023-11-24 10:32:07', '-3.320363756863717', '114.6000705394259', 'Jl. Benua Anyar Komp. Banua Anyar Permai No.52 Banjarmasin', 'mahritaast72@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (107, 'SOSIS SOLO SAUFA', 'Alfishatul Musfirah', 'Jl. Ramin 4 No. 124, Banjar Indah Permai, Kelurah Pemurus Dalam, Kecamatan Banjarmasin Selatan', '081334776313', 'Sosis Solo, Risoles, Aneka Kue Bolu', NULL, NULL, '2023-11-24 09:51:31', '2023-11-24 09:51:31', '-3.320363756863717', '114.6000705394259', 'Jl. Ramin 4 No. 124, Banjar Indah Permai, Kelurah Pemurus Dalam, Kecamatan Banjarmasin Selatan', 'alfisahrinmusfirah@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (108, 'KN', 'Rosse Rosita', 'Jl. Simpang Limau PDAM, KM, 6, Kelurahan Sungai Lulut, Kecamatan Banjarmasin Timur', '085248898054', 'Aneka Kue Keringa (Kue Ciput, Pastel Kering, Kue Kacang), Telur Asin', NULL, NULL, '2023-11-24 09:54:47', '2023-11-24 09:54:47', '-3.320363756863717', '114.6000705394259', 'Jl. Simpang Limau PDAM, KM, 6, Kelurahan Sungai Lulut, Kecamatan Banjarmasin Timur', 'rosserosita39@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (109, 'HALAL FEAST', 'MUHAMMAD ISMAIL', 'Jl. Jahri Saleh Komp. Pandan Arum Blok D Jalur I No.2 Banjarmasin', '0895385318958', 'Nasi Arab Instan ( Nasi Mandi,Nasi Briyani,Nasi Kebuli,Nasi Kabsah,Nasi Bukhori )', NULL, NULL, '2023-11-24 09:57:03', '2023-11-24 09:57:03', '-3.320363756863717', '114.6000705394259', 'Jl. Jahri Saleh Komp. Pandan Arum Blok D Jalur I No.2 Banjarmasin', 'halalfeastid@gmail .Com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (110, 'DAPOER SALZA', 'Heidy Lestari Agustina, SE', 'Jl. Padat karya Komplek Purnama Permai 3 Jalur 4B RT.38 No.155, Sungai Andai, Banjarmasin', '082250376874', 'Aneka Kue Basah Tradisional, Aneka Kue Kering, Aneka Bolu, Aneka Roti, Pizza dan Aneka Cemilan', NULL, NULL, '2023-11-24 09:57:53', '2023-11-24 09:57:53', '-3.320363756863717', '114.6000705394259', 'Jl. Padat karya Komplek Purnama Permai 3 Jalur 4B RT.38 No.155, Sungai Andai, Banjarmasin', 'salzadapoer@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (111, 'BANUA DEKOR', 'WIDYA HERLIANI', 'Jl. Saka Permai Gang Amilin RT.11 RW.1 Banjarmasin', '08997400194', 'Aneka Jasa Dekor\r\nAneka Olahan Steropom\r\nAneka Jasa Sablon', NULL, NULL, '2023-11-24 10:02:58', '2023-11-24 10:02:58', '-3.320363756863717', '114.6000705394259', 'Jl. Saka Permai Gang Amilin RT.11 RW.1 Banjarmasin', 'herliani895@gmail .com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (112, 'EASY EATS BDJ', 'NAIMAH', 'JL. Sungai Andai Komplek Pesona Persada Blok E No. 3 RT. 7 Banjarmasin', '085750600062', 'Aneka Kue Kering ( Kue Semprong, Kue Nastar,Kue Kacang,Putri Salju)\r\nAneka Kue Basah Bolu', NULL, NULL, '2023-11-24 10:12:12', '2023-11-24 10:12:12', '-3.320363756863717', '114.6000705394259', 'JL. Sungai Andai Komplek Pesona Persada Blok E No. 3 RT. 7 Banjarmasin', 'naimahnai85@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (113, 'MOMMITA', 'Lisnani', 'Jl. Sultan Adam Gg. Nusa Indah No. 15 RT. 36 RW. 02, Kelurahan Surgi Mufti, Kecamatan Banjarmasin Utara', '085249009260', 'Aneka Cemilan (Akar Pinang), Aneka Kue Kering (Putri Salju, Semprit Mawar, Kue Keranjang)', NULL, NULL, '2023-11-24 10:12:29', '2023-11-24 10:12:29', '-3.320363756863717', '114.6000705394259', 'Jl. Sultan Adam Gg. Nusa Indah No. 15 RT. 36 RW. 02, Kelurahan Surgi Mufti, Kecamatan Banjarmasin Utara', 'llisnani450@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (114, 'MAMA ZAHRA', 'Miyati', 'JL. Sulatan Adam Gg. H.Ismail RT. 23 No. 26, Kelurahan Surgi Mufti, Kecamatan Banjarmasin Utara', '087814098782', 'Rempeye', NULL, NULL, '2023-11-24 10:15:34', '2023-11-24 10:15:34', '-3.320363756863717', '114.6000705394259', 'JL. Sulatan Adam Gg. H.Ismail RT. 23 No. 26, Kelurahan Surgi Mufti, Kecamatan Banjarmasin Utara', 'riskysubagyo3@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (115, 'KUKER AISYAH', 'DEWI AYU', 'Jl. Sungai Andai Komplek Purnama Permai III Jalur IIIB No.123 RT.38 Banjarmasin', '082158552197', 'Kue Kering Semprong', NULL, NULL, '2023-11-24 10:16:09', '2023-11-24 10:16:09', '-3.320363756863717', '114.6000705394259', 'Jl. Sungai Andai Komplek Purnama Permai III Jalur IIIB No.123 RT.38 Banjarmasin', 'ayu785541@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (116, 'KUE LAM SITI NOR AISYAH', 'Rusdiana', 'Jl. HKSN Komplek AMD Permai Blok G RT. 23 No. 35, Kelurahan Alalak Selatan, Kecamatan Banjarmasin Utara', '085350508554', 'Kue Lam Kering, Kue Lam Basah, Bingka Kentang, Lapis Legit, Spikuk', NULL, NULL, '2023-11-24 10:19:05', '2023-11-24 10:19:05', '-3.320363756863717', '114.6000705394259', 'Jl. HKSN Komplek AMD Permai Blok G RT. 23 No. 35, Kelurahan Alalak Selatan, Kecamatan Banjarmasin Utara', 'nrusdiana78@gmail.com');
INSERT INTO `toko` (`id`, `nama_toko`, `nama_pemilik`, `alamat`, `telp`, `deskripsi`, `user_id`, `foto`, `created_at`, `updated_at`, `lat`, `long`, `alamat_toko`, `email`) VALUES (117, 'TERAS AYI', 'Nadya Dwitarina', 'Jl. Meratus Komplek Griya Amalia No. 23 RT. 13, Kelurahan Antasan Besar, Banjarmasin Tengah', '081908222272', 'Aneka Kue Kering, Aneka Kue Bolu, Donat', NULL, NULL, '2023-11-24 10:33:58', '2023-11-24 10:33:58', '-3.320363756863717', '114.6000705394259', 'Jl. Meratus Komplek Griya Amalia No. 23 RT. 13, Kelurahan Antasan Besar, Banjarmasin Tengah', 'nadyatarina22@gmail.com');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin_layanan` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (1, 'superadmin', NULL, 'superadmin', '2025-05-17 10:31:18', '$2y$10$P4gUyBMc1HlYqHCspurbS.NLYM4GV.bG9ifsHntseApHjVD0QcY1S', 'Cv2HZvYE3xJxa8W5gT5waoGTwW70OkZoMMbm8pZXKzqaD4VeUvAYmQp8mke0', '2025-05-17 10:31:18', '2025-05-17 10:31:18', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (4, 'Toko 3 Bersaudara', NULL, 'pu3', '2021-10-30 23:35:48', '$2y$10$JXx9Y6BOXK/FtjJtW/NFoe0i59kNYzTLiCYQM7VZaRG4WjiSoX25W', NULL, '2021-10-30 23:35:48', '2021-10-30 23:35:48', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (5, 'Toko Mama Rasyid', NULL, 'pu2', '2021-10-31 00:47:15', '$2y$10$ElCV5BXU2wEFHhTl6/fx3.OZG8ErrPHJUU8XhZLOlpWFLp8w/DK52', 'l1eRCzaYsCuBqKP60sbf9igmStzQmHfJvML3LybS50eRra2p6V8nMVZtyxB0', '2021-10-31 00:47:15', '2021-10-31 00:47:15', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (6, 'kj', NULL, 'pu8', '2021-11-01 13:20:45', '$2y$10$rTW1lkTWioAJ/FeKVkCTb.qws1YYflvKHpucduAWhenbJf799EgZm', 'IDMA8FXlLFcj3ieFx9KL81AAbvUq8H5Ey1H6bSB8RUvNABU1tSST9ZyWIsUf', '2021-11-01 13:20:45', '2021-11-01 13:20:45', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (7, 'UMKM PONDOK JAMUR LILY', NULL, 'pu9', '2025-05-17 10:42:54', '$2y$10$dGcVT0rAYl1VCEfZ9OPoeOkqi2OqrSjsllC1qWyl6/WPasFxA8kzm', '01jLVATGCQFQRsnPL5XflACiE2i8ra2IOcd8anX351vJ6KUO1H1dkKp3X98u', '2025-05-17 10:42:54', '2025-05-17 10:42:54', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (8, 'Amayna Sasirangan', NULL, 'pu10', '2021-11-17 10:35:26', '$2y$10$21r35/T6fMFcqHeG.Qa7yuMU6vWXnCEul0U87e5KN5HEUZxtYucS6', NULL, '2021-11-17 10:35:26', '2021-11-17 10:35:26', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (9, 'Lina Sasirangan', NULL, 'pu11', '2021-11-17 10:35:36', '$2y$10$m9pFGnspgSX6Qui2KRQCuuOvu5bioZi.FhOX6FJR1b.koxdvdruV.', NULL, '2021-11-17 10:35:36', '2021-11-17 10:35:36', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (10, 'Dztya Handmade', NULL, 'pu12', '2021-11-17 10:35:38', '$2y$10$L4xh4zHssEuK.vyTBo90VONnfMbhOzpGCUTmjDIFMvaYmaNfnVVlq', NULL, '2021-11-17 10:35:38', '2021-11-17 10:35:38', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (11, 'Kayu Manis 87', NULL, 'pu13', '2021-11-17 10:35:39', '$2y$10$2tGiv8BJOxCVG6SH0.WCFuxVpWGyer3WqqdmvFnGKoQlZjZriIu2.', NULL, '2021-11-17 10:35:39', '2021-11-17 10:35:39', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (12, 'Bu Sumi', NULL, 'pu14', '2021-11-17 10:35:40', '$2y$10$c3ceT8g1Kh/rXgZaj7RroefwFEDffwIzznpLVNQjo9hXM7WC8OkiC', NULL, '2021-11-17 10:35:40', '2021-11-17 10:35:40', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (13, 'Citra Sari', NULL, 'pu16', '2025-05-16 20:03:19', '$2y$10$E0VXpnUMitabgeskJUC1ce0wzLr3mrACksC/pZUj3664OzXbznQw6', '4cVBWThn22AIu6x9zHp7HoUIfOhPIHkZwt4xhADDucM9NaoIsBa8HVqbc2tH', '2025-05-16 20:03:19', '2025-05-16 20:03:19', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (14, 'ande', NULL, '123', '2025-05-17 10:34:58', '$2y$10$.6TjNeGbwXt1NCsWlhfMqeG1pUdvInqIpval7Ph2Nq3QNqNpYYwuS', NULL, '2025-05-17 10:34:58', '2025-05-17 10:34:58', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (15, 'budi', NULL, 'budi', '2025-05-17 10:48:34', '$2y$10$jq.FJDDHgepMwtjM38BQNeuLKv.KKRxfH1JARyrUlKLqpTvfI66qW', 'PiaKuWFefr3mpLFo4okTS7qnWB5KGsLpl0PV4PJzEvcmT1n9DNcjI27CeSIQ', '2025-05-17 10:48:34', '2025-05-17 10:48:34', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (16, 'suci', NULL, 'suci', '2025-05-17 10:48:43', '$2y$10$WZL8k.ib1SP5xgbc/qLk1.Joj1.nEQg6NQSMaWk/qAaVsFgJPzZ3u', NULL, '2025-05-17 10:48:43', '2025-05-17 10:48:43', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_layanan`) VALUES (17, 'wanda', NULL, 'wanda', '2025-05-17 10:49:45', '$2y$10$HDL31iklBornthWOkzVlpu20J30mQ.K/21nHGNe4bLogqusC1CkH.', NULL, '2025-05-17 10:49:45', '2025-05-17 10:49:45', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
