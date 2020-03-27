-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 03:55 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serpong_utara_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `glr_id` int(11) NOT NULL,
  `glr_imagesname` varchar(100) NOT NULL,
  `glr_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `glr_created_by` int(11) NOT NULL,
  `glr_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `glr_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`glr_id`, `glr_imagesname`, `glr_created_at`, `glr_created_by`, `glr_edited_at`, `glr_edited_by`) VALUES
(1, 'a1.jpeg', '2019-10-05 10:06:51', 2, '0000-00-00 00:00:00', 0),
(2, 'a11.jpeg', '2019-10-05 10:06:51', 2, '0000-00-00 00:00:00', 0),
(3, 'a12.jpeg', '2019-10-05 10:06:51', 2, '0000-00-00 00:00:00', 0),
(4, 'a13.jpeg', '2019-10-05 10:06:51', 2, '0000-00-00 00:00:00', 0),
(5, 'a14.jpeg', '2019-10-05 10:06:51', 2, '0000-00-00 00:00:00', 0),
(6, 'a15.jpeg', '2019-10-05 10:06:52', 2, '0000-00-00 00:00:00', 0),
(7, 'a16.jpeg', '2019-10-05 10:06:52', 2, '0000-00-00 00:00:00', 0),
(8, 'a17.jpeg', '2019-10-05 10:06:52', 2, '0000-00-00 00:00:00', 0),
(9, 'a18.jpeg', '2019-10-05 10:06:52', 2, '0000-00-00 00:00:00', 0),
(10, 'a19.jpeg', '2019-10-05 10:06:52', 2, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `internet_package`
--

CREATE TABLE `internet_package` (
  `inp_id` int(11) NOT NULL,
  `inp_name` varchar(100) NOT NULL,
  `inp_slug` varchar(100) NOT NULL,
  `inp_price` varchar(100) NOT NULL,
  `inp_description` text NOT NULL,
  `inp_images` varchar(255) NOT NULL,
  `inp_tags` varchar(100) NOT NULL,
  `inp_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inp_created_by` int(11) NOT NULL,
  `inp_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inp_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internet_package`
--

INSERT INTO `internet_package` (`inp_id`, `inp_name`, `inp_slug`, `inp_price`, `inp_description`, `inp_images`, `inp_tags`, `inp_created_at`, `inp_created_by`, `inp_edited_at`, `inp_edited_by`) VALUES
(1, 'Paket Premium + PPN', 'paket-premium-ppn', '478500', '<table border=\"1\" cellspacing=\"0\" style=\"height:140px; width:298,52pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center; vertical-align:middle; white-space:nowrap\"><strong>Speed</strong></td>\r\n			<td style=\"text-align:center; vertical-align:middle; white-space:nowrap\"><strong>Harga</strong></td>\r\n			<td style=\"text-align:center; vertical-align:middle; white-space:nowrap\"><strong>Ppn 10%</strong></td>\r\n			<td style=\"text-align:center; vertical-align:middle; white-space:nowrap\"><strong>Total</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">10 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 435,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 43,500.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 478,500.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">20 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 555,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 55,500.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 615,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">30 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 735,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 73,500.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 808,500.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">40 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 930,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 93,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 1,023,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">50 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">RP. 1,225,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 122,500.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 1,347,500.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">100 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 1,890,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 189,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 2,079,000.00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '04102019_110221paket_premium_+_ppn.png', 'paket premium,paket internet murah,paket premium murah,paket indihome murah', '2019-10-04 04:02:21', 1, '2019-10-04 04:02:21', 1),
(2, 'Paket Gamers + PPN', 'paket-gamers-ppn', '418000', '<table border=\"1\" cellspacing=\"0\" style=\"height:140px; width:298,52pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:51,75pt\"><strong>Speed</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:85,50pt\"><strong>Harga</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:75,75pt\"><strong>Ppn 10%</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:85,50pt\"><strong>Total</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">10 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 380,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 38,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 418,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">20 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 480,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 48,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 528,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">30 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 680,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 68,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 748,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">40 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 780,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 93,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 858,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">50 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 780,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 78,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 858,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">100 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 1,380,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 138,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 1,518,000.00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '04102019_111454paket_gamers_+_ppn.png', 'paket gamer,paket internet gamer murah,paket gaming,paket indihome gaming', '2019-10-04 04:14:54', 1, '2019-10-04 04:14:54', 1),
(3, 'Paket Netizen 1 + PPN', 'paket-netizen-1-ppn', '308000', '<table border=\"1\" cellspacing=\"0\" style=\"height:80px; width:298,52pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:51,75pt\"><strong>Speed</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:85,50pt\"><strong>Harga</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:75,75pt\"><strong>Ppn 10%</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:85,50pt\"><strong>Total</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">10 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 280,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 28,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 308,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">20 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 380,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 38,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 418,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">30 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 525,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 52,500.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 577,500.00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '04102019_111806paket_netizen_1_+_ppn.jpg', 'paket netizen,paket internet hemat,paket internet dan telepon,paket internet keluarga,paket youtube,', '2019-10-04 04:18:06', 1, '2019-10-04 04:18:06', 1),
(4, 'Paket Netizen 2 + PPN', 'paket-netizen-2-ppn', '352000', '<table border=\"1\" cellspacing=\"0\" style=\"height:80px; width:298,52pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:51,75pt\"><strong>Speed</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:85,50pt\"><strong>Harga</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:75,75pt\"><strong>Ppn 10%</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:85,50pt\"><strong>Total</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">10 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 320,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 32,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 352,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">20 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 420,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 42,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 462,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">30 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 565,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 56,500.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 621,500.00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '04102019_111817paket_netizen_2_+_ppn.jpg', 'paket netizen,paket internet hemat,paket internet dan telepon,paket internet keluarga,paket youtube,', '2019-10-04 04:18:17', 1, '2019-10-04 04:18:17', 1),
(5, 'Paket Semarak Kebahagiaan + PPN', 'paket-semarak-kebahagiaan-ppn', '396000', '<table border=\"1\" cellspacing=\"0\" style=\"height:80px; width:298,52pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:51,75pt\"><strong>Speed</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:85,50pt\"><strong>Harga</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:75,75pt\"><strong>Ppn 10%</strong></td>\r\n			<td style=\"height:15,00pt; text-align:center; vertical-align:middle; white-space:nowrap; width:85,50pt\"><strong>Total</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">10 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 360,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 36,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 396,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">20 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 445,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 44,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 489,500.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">30 Mbps</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 595,000.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 59,500.00</td>\r\n			<td style=\"height:15,00pt; vertical-align:middle; white-space:nowrap\">Rp. 654,500.00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '04102019_111704paket_semarak_kebahagiaan_+_ppn.png', 'paket semarak kebahagiaan,paket internet hemat,paket internet dan telepon,paket internet keluarga,pa', '2019-10-04 04:17:04', 1, '2019-10-04 04:17:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `internet_package_priority`
--

CREATE TABLE `internet_package_priority` (
  `ipp_id` int(11) NOT NULL,
  `ipp_name` varchar(255) NOT NULL,
  `ipp_slug` varchar(255) NOT NULL,
  `ipp_description` text NOT NULL,
  `ipp_images` varchar(255) NOT NULL,
  `ipp_tags` varchar(255) NOT NULL,
  `ipp_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ipp_created_by` int(11) NOT NULL,
  `ipp_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipp_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internet_package_priority`
--

INSERT INTO `internet_package_priority` (`ipp_id`, `ipp_name`, `ipp_slug`, `ipp_description`, `ipp_images`, `ipp_tags`, `ipp_created_at`, `ipp_created_by`, `ipp_edited_at`, `ipp_edited_by`) VALUES
(1, 'Paket Gamer', 'paket-gamer', '<ul>\r\n	<li>Paket UseeTV Entry untuk Paket Gamer 10-40 Mbps terdiri dari 93 channels TV interaktif IndiHome (84 channels SD dan 9 channels HD).</li>\r\n	<li>Biaya Pasang Baru (PSB) IndiHome Rp100.000 untuk area Jabodetabek dan Rp75.000 untuk area lain seluruh Indonesia akan ditagihkan pada bulan pertama saja dan tidak diperkenankan melakukan pembayaran secara tunai selain di Plasa Telkom.</li>\r\n	<li>Harga di atas berlaku selama pelanggan berlangganan IndiHome Paket Gamer.</li>\r\n	<li>Telkom menyediakan Hybrid Box IndiHome dan ONT selama berlangganan.</li>\r\n	<li>Untuk pelanggan yang ingin memasang Hybrid Box IndiHome Tambahan akan dikenakan biaya tambahan bulanan di mana Telkom menyediakan Hybrid Box yang dimaksud. Pelanggan baru bisa dikenakan biaya penarikan jaringan tambahan yang dibayarkan kepada mitra penarikan jaringan.</li>\r\n	<li>Harga belum termasuk PPN.</li>\r\n	<li>Syarat &amp; ketentuan berlaku.</li>\r\n</ul>\r\n', '03-10-2019_052227_paket_gamer.png', 'paket gamer,paket prioritas,paket live streaming,paket indihome,paket internet murah', '2019-10-03 03:22:27', 1, '0000-00-00 00:00:00', 0),
(2, 'Paket Premium', 'paket-premium', '<ul>\r\n	<li>Harga di atas untuk pembayaran setiap bulan.</li>\r\n	<li>Jumlah channel dapat berubah sewaktu-waktu.</li>\r\n	<li>Catchplay tidak berlaku untuk Single Rental. Iflix yang berlaku adalah Iflix VIP. Hooq yang berlaku adalah SVOD (Streaming Video On Demand)</li>\r\n	<li>Biaya Pasang Baru (PSB) IndiHome Rp100.000 untuk area Jabodetabek dan Rp75.000 untuk area lain seluruh Indonesia akan ditagihkan pada bulan pertama saja dan tidak diperkenankan melakukan pembayaran secara tunai selain di Plasa Telkom.</li>\r\n	<li>Telkom menyediakan Hybrid Box IndiHome dan ONT selama berlangganan.</li>\r\n	<li>Untuk pelanggan yang ingin memasang Hybrid Box IndiHome tambahan akan dikenakan biaya tambahan bulanan di mana Telkom menyediakan Hybrid Box yang dimaksud. Pelanggan bisa dikenakan biaya penarikan jaringan tambahan yang dibayarkan kepada mitra penarikan jaringan.</li>\r\n	<li>Harga belum termasuk PPN.</li>\r\n	<li>Syarat &amp; ketentuan berlaku.</li>\r\n</ul>\r\n', '03-10-2019_052313_paket_premium.png', 'paket premium,paket prioritas,paket live streaming,paket indihome,paket internet murah', '2019-10-03 03:23:13', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logo_brandlogo`
--

CREATE TABLE `logo_brandlogo` (
  `lbl_id` int(11) NOT NULL,
  `lbl_name` varchar(50) NOT NULL,
  `lbl_images` varchar(255) NOT NULL,
  `lbl_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lbl_created_by` int(11) NOT NULL,
  `lbl_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lbl_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo_brandlogo`
--

INSERT INTO `logo_brandlogo` (`lbl_id`, `lbl_name`, `lbl_images`, `lbl_created_at`, `lbl_created_by`, `lbl_edited_at`, `lbl_edited_by`) VALUES
(1, 'WORLD', '88ee1b908b4cc6d8afaba7db5fd8ba0e.png', '2019-09-26 03:12:16', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logo_iconbar`
--

CREATE TABLE `logo_iconbar` (
  `lib_id` int(11) NOT NULL,
  `lib_images` varchar(255) NOT NULL,
  `lib_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lib_created_by` int(11) NOT NULL,
  `lib_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lib_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo_iconbar`
--

INSERT INTO `logo_iconbar` (`lib_id`, `lib_images`, `lib_created_at`, `lib_created_by`, `lib_edited_at`, `lib_edited_by`) VALUES
(1, '564e933c39ed17eabed34fa1898fa564.png', '2019-10-03 03:39:44', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logo_slidehomepage`
--

CREATE TABLE `logo_slidehomepage` (
  `lsh_id` int(11) NOT NULL,
  `lsh_name` varchar(255) NOT NULL,
  `lsh_slug` varchar(255) NOT NULL,
  `lsh_images` varchar(255) NOT NULL,
  `lsh_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lsh_created_by` int(11) NOT NULL,
  `lsh_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lsh_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo_slidehomepage`
--

INSERT INTO `logo_slidehomepage` (`lsh_id`, `lsh_name`, `lsh_slug`, `lsh_images`, `lsh_created_at`, `lsh_created_by`, `lsh_edited_at`, `lsh_edited_by`) VALUES
(1, 'IndiHome Paket Semarak Kebahagiaan', 'indihome-paket-semarak-kebahagiaan', '04102019_165418indihome_paket_semarak_kebahagiaan.jpg', '2019-10-04 09:54:18', 1, '0000-00-00 00:00:00', 0),
(8, 'IndiHome Paket Premium', 'indihome-paket-premium', '04102019_165439indihome_paket_premium.jpg', '2019-10-04 09:54:39', 1, '0000-00-00 00:00:00', 0),
(9, 'IdiHome Paket Gamer', 'idihome-paket-gamer', '04102019_165653idihome_paket_gamer.jpg', '2019-10-04 09:56:53', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `pgs_id` int(11) NOT NULL,
  `pgs_name` varchar(100) NOT NULL,
  `pgs_slug` varchar(100) NOT NULL,
  `pgs_images` varchar(50) NOT NULL,
  `pgs_body` text NOT NULL,
  `pgs_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pgs_created_by` int(11) NOT NULL,
  `pgs_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pgs_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pgs_id`, `pgs_name`, `pgs_slug`, `pgs_images`, `pgs_body`, `pgs_created_at`, `pgs_created_by`, `pgs_edited_at`, `pgs_edited_by`) VALUES
(1, 'Pemasangan', 'pemasangan', '04102019_163155pemasangan.png', '<p style=\"text-align:justify\"><strong>ABOUT US</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p style=\"text-align:justify\">Why do we use it?</p>\r\n\r\n<p style=\"text-align:justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Where does it come from?</p>\r\n\r\n<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p style=\"text-align:justify\">Where can I get some?</p>\r\n\r\n<p style=\"text-align:justify\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '2019-09-01 01:40:34', 2, '2019-10-04 09:31:55', 1),
(2, 'Paket', 'paket', '04102019_163144paket.png', '<p style=\"text-align:justify\">SERVICES - What is Lorem Ipsum?</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p style=\"text-align:justify\">Why do we use it?</p>\r\n\r\n<p style=\"text-align:justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Where does it come from?</p>\r\n\r\n<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p style=\"text-align:justify\">Where can I get some?</p>\r\n\r\n<p style=\"text-align:justify\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '2019-09-01 01:40:59', 2, '2019-10-04 09:31:44', 1),
(3, 'Blog', 'blog', '04102019_163134blog.png', '<p style=\"text-align:justify\">BLOG - What is Lorem Ipsum?</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p style=\"text-align:justify\">Why do we use it?</p>\r\n\r\n<p style=\"text-align:justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Where does it come from?</p>\r\n\r\n<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p style=\"text-align:justify\">Where can I get some?</p>\r\n\r\n<p style=\"text-align:justify\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '2019-09-01 01:42:08', 2, '2019-10-04 09:31:34', 1),
(4, 'Events', 'events', '04102019_163122events.png', '<p style=\"text-align:justify\">CONTACT - What is Lorem Ipsum?</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p style=\"text-align:justify\">Why do we use it?</p>\r\n\r\n<p style=\"text-align:justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Where does it come from?</p>\r\n\r\n<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p style=\"text-align:justify\">Where can I get some?</p>\r\n\r\n<p style=\"text-align:justify\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '2019-09-01 01:42:27', 2, '2019-10-04 09:31:22', 1),
(6, 'Kontak', 'kontak', '04102019_163059kontak.png', '<p>Untuk Info Paket, Promo dan Pemasangan IndiHome Fiber Silahkan Hubungi Marketing Kami Di Nomor Berikut :</p>\r\n', '2019-10-03 06:56:21', 1, '2019-10-04 09:30:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages_sub`
--

CREATE TABLE `pages_sub` (
  `sub_pgs_id` int(11) NOT NULL,
  `sub_pgs_pages_id` int(11) NOT NULL,
  `sub_pgs_name` varchar(100) NOT NULL,
  `sub_pgs_slug` varchar(100) NOT NULL,
  `sub_pgs_images` varchar(50) NOT NULL,
  `sub_pgs_body` text NOT NULL,
  `sub_pgs_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sub_pgs_created_by` int(11) NOT NULL,
  `sub_pgs_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sub_pgs_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `pst_id` int(11) NOT NULL,
  `pst_name` varchar(255) NOT NULL,
  `pst_slug` varchar(255) NOT NULL,
  `pst_categoriespost_id` int(100) NOT NULL,
  `pst_images` varchar(255) NOT NULL,
  `pst_body` text NOT NULL,
  `pst_tags` varchar(255) NOT NULL,
  `pst_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pst_created_by` int(11) NOT NULL,
  `pst_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pst_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pst_id`, `pst_name`, `pst_slug`, `pst_categoriespost_id`, `pst_images`, `pst_body`, `pst_tags`, `pst_created_at`, `pst_created_by`, `pst_edited_at`, `pst_edited_by`) VALUES
(1, 'Kuis Mudik Tak Terlewatkan bersama IndiHome', 'kuis-mudik-tak-terlewatkan-bersama-indihome', 1, '03-10-2019_140639_kuis_mudik_tak_terlewatkan_bersama_indihome.jpg', '<p>Mari sambut hari kemenangan di Hari Raya dengan berkumpul bersama keluarga di kampung halaman tercinta. Buat perjalanan mudik Anda menjadi lebih seru bersama IndiHome! Menangkan voucher sebesar Rp200.000 untuk masing-masing 5 orang setiap harinya selama periode kuis berlangsung mulai tanggal 29 Mei - 12 Juni 2019. Ayo, ikuti kuisnya dengan menjawab pertanyaan di akun Instagram para komikus berikut: @si_abi, @banggaber, @karyawanbaru, @jonbrayy, dan @fatkomik.</p>\r\n\r\n<p><strong>Syarat dan Ketentuan kuis Mudik Tak Terlewatkan bersama IndiHome:</strong></p>\r\n\r\n<ol>\r\n	<li>Periode kuis berlangsung mulai tanggal 29 Mei - 12 Juni 2019.</li>\r\n	<li>Tersedia voucher sebesar Rp200.000 untuk masing-masing 5 pemenang setiap hari selama periode kuis berlangsung.</li>\r\n	<li>Peserta wajib untuk follow akun Instagram @indihome.</li>\r\n	<li>Peserta wajib untuk menjawab pertanyaan dengan benar dan mention ke akun Instagram @indihome serta 3 orang teman menggunakan hashtag #WujudkanDariRumah dan #KuisMudikIndiHome.</li>\r\n	<li>Pengumuman pemenang akan dilakukan pada tanggal 15 Juni 2019.</li>\r\n	<li>Peserta hanya mendapatkan satu kali kesempatan untuk menjadi pemenang dalam 1 periode kuis.</li>\r\n	<li>Hadiah pemenang tidak dapat diuangkan.</li>\r\n	<li>Jika dalam 3x24 Jam pemenang tidak bisa dihubungi atau menghubungi pihak @indihome maka akan didiskualifikasi tanpa pemberitahuan terlebih dahulu.</li>\r\n	<li>PT Telekomunikasi Indonesia (Persero) Tbk dan atau IndiHome tidak memungut biaya apapun untuk program kuis ini.</li>\r\n	<li>Program tidak berlaku bagi karyawan Telkom, anak perusahaan, dan/atau afiliasi perusahaan.</li>\r\n	<li>PT Telekomunikasi Indonesia (Persero) Tbk dan/atau IndiHome tidak bertanggung jawab terhadap adanya penipuan yang mengatasnamakan program kuis.</li>\r\n	<li>Informasi pemenang dapat dilihat di akun Instagram @indihome.</li>\r\n	<li>Dengan berpartisipasi dalam kuis Mudik Tak Terlewatkan bersama IndiHome, maka peserta menyatakan sudah membaca, memahami serta menyetujui syarat dan ketentuan dari program ini.</li>\r\n	<li>Peserta membebaskan IndiHome dari segala tuntutan hukum apabila jawaban yang ditulis dalam kuis ini berisi ujaran kebencian, berita bohong (hoax), atau segala sesuatu yang melanggar hukum ataupun merugikan pihak lain.</li>\r\n	<li>Semua keputusan IndiHome terkait kuis Mudik Tak Terlewatkan termasuk penentuan pemenang bersifat mutlak dan tidak dapat diganggu gugat.</li>\r\n	<li>Syarat &amp; ketentuan ini sah dan berlaku selama periode kuis atau sampai diubah atau ditangguhkan oleh Penyelenggara.</li>\r\n</ol>\r\n', 'event indihome,acara indihome,kegiatan indihome,kuis mudik indihome,kuis mudik,voucher mudik gratis', '2019-10-03 07:06:39', 1, '0000-00-00 00:00:00', 0),
(2, 'Gebyar Undian IndiHome', 'gebyar-undian-indihome', 1, '03-10-2019_141555_gebyar_undian_indihome.jpg', '<p>Event Jakarta Fair Kemayoran kembali hadir! Dengan berlangganan IndiHome di Jakarta Fair Kemayoran, Anda berkesempatan memenangkan 1 paket Umroh, 1 unit motor Yamaha Lexi, 1 handphone Xiaomi Black Shark, dan hadiah menarik lainnya. Segera kunjungi booth IndiHome yang ada di selasar Hall D2 JIEXPO Kemayoran dari tanggal 22 Mei &ndash; 30 Juni 2019 dan ikuti undiannya.</p>\r\n\r\n<p>Ayo, segera berlangganan IndiHome di Jakarta Fair Kemayoran, siapa tahu Anda pemenangnya!</p>\r\n\r\n<p><strong>Syarat dan Ketentuan Gebyar Undian IndiHome:</strong></p>\r\n\r\n<ol>\r\n	<li>Berlaku untuk pelanggan yang melakukan pasang baru layanan IndiHome di Jakarta Fair Kemayoran dari tanggal 22 Mei &ndash; 30 Juni 2019.</li>\r\n	<li>Setiap transaksi registrasi pasang baru layanan IndiHome berhak mendapatkan satu kupon undian.</li>\r\n	<li>Peserta undian wajib memiliki akun myIndiHome.</li>\r\n	<li>Saat pengundian, berlaku hanya untuk pelanggan dengan status sudah aktif dan/atau dalam status tidak menunggak tagihan IndiHome.</li>\r\n	<li>Informasi pemenang dapat dilihat di website indihome.co.id dan mendapatkan informasi yang dikirimkan langsung oleh IndiHome ke alamat pemenang.</li>\r\n	<li>Pajak ditanggung oleh pemenang.</li>\r\n	<li>Khusus untuk hadiah motor terkait pajak dan surat-surat ditanggung oleh pemenang.</li>\r\n	<li>PT Telekomunikasi Indonesia (Persero) Tbk dan/atau IndiHome tidak memungut biaya apapun untuk program undian.</li>\r\n	<li>Program tidak berlaku bagi karyawan Telkom, anak perusahaan, dan/atau afiliasi perusahaan.</li>\r\n	<li>PT Telekomunikasi Indonesia (Persero) Tbk dan/atau IndiHome tidak bertanggung jawab terhadap adanya penipuan yang mengatasnamakan program undian.</li>\r\n	<li>Gebyar Undian IndiHome berbeda dengan Undian IndiHome Miliarder Paket Semarak Kebahagiaan, pelanggan yang mengikuti undian ini juga berhak untuk ikut serta dalam Undian IndiHome Miliarder Paket Semarak Kebahagiaan.</li>\r\n</ol>\r\n\r\n<p>F.A.Q:</p>\r\n\r\n<ol>\r\n	<li>Siapa yang berhak mengikuti Gebyar Undian IndiHome Jakarta Fair Kemayoran 2019?<br />\r\n	&rarr; Seluruh pelanggan yang melakukan registrasi pasang baru layanan IndiHome di Jakarta Fair Kemayoran 2019.</li>\r\n	<li>Apa hadiah Gebyar Undian IndiHome di Jakarta Fair Kemayoran 2019?<br />\r\n	&rarr; 1 paket umroh berlaku untuk 1 orang, 1 unit motor Yamaha Lexi, 1 handphone Xiaomi Black Shark, 10 headset Black Titan, 20 voucher Steam Wallet senilai Rp10.000 dengan pajak ditanggung oleh pemenang.</li>\r\n	<li>Jika saya melakukan registrasi IndiHome di luar booth Jakarta Fair Kemayoran 2019, namun berada di tanggal berlangsungnya acara ini, apakah saya berhak mengikuti Gebyar Undian IndiHome?<br />\r\n	&rarr; Undian ini hanya bisa diikuti oleh yang melakukan registrasi pasang baru di booth IndiHome Jakarta Fair Kemayoran 2019.</li>\r\n	<li>Apakah Gebyar Undian IndiHome Jakarta Fair Kemayoran 2019 ini sama dengan undian IndiHome Miliarder Paket Semarak Kebahagiaan? Apakah kita hanya bisa mengikuti kedua undian tersebut?<br />\r\n	&rarr; Gebyar Undian IndiHome di Jakarta Fair Kemayoran 2019 berbeda dengan undian IndiHome Miliarder Paket Semarak Kebahagiaan, sehingga pelanggan yang mengikuti Gebyar Undian IndiHome Jakarta Fair Kemayoran 2019 masih berhak untuk ikut serta dalam undian IndiHome Miliarder Paket Semarak Kebahagiaan.</li>\r\n	<li>Kebahagiaan, sehingga pelanggan yang mengikuti Gebyar Undian IndiHome Jakarta Fair Kemayoran 2019 masih berhak untuk ikut serta dalam undian IndiHome Miliarder Paket Semarak Kebahagiaan.<br />\r\n	Dimanakah lokasi booth IndiHome di Jakarta Fair Kemayoran 2019?<br />\r\n	&rarr; Booth utama IndiHome terletak di Hall D JIEXPO Kemayoran. Selain itu ada mini booth IndiHome di area booth Yamaha dan Best Denki.</li>\r\n	<li>Apakah terdapat hadiah lain bagi pelanggan yang sudah berlangganan IndiHome atau pengunjung booth IndiHome?<br />\r\n	&rarr; Booth IndiHome menyediakan hadiah menarik lainnya bagi pelanggan yang sudah berlangganan layanan IndiHome maupun pengunjung apabila memenuhi syarat dan ketentuan yang berlaku (Download dan registrasi myIndiHome, serta mengikuti aktivitas di booth).</li>\r\n	<li>Apa saja yang bisa dilakukan di booth IndiHome Jakarta Fair Kemayoran 2019?<br />\r\n	&rarr; Selain bisa melakukan registrasi pasang baru dan upgrade layanan IndiHome, pelanggan bisa mencoba secara langsung layanan dari IndiHome, seperti IndiHome Gamers, UseeTV, OTT, maupun layanan lainnya. Dengan mengikuti aktivitas di booth pengunjung juga bisa mendapatkan hadiah menarik lainnya.</li>\r\n</ol>\r\n', 'undian indihome,hadiah indihome,doorprize indihome,gebyar undian indihome', '2019-10-03 07:15:55', 1, '0000-00-00 00:00:00', 0),
(3, 'Kunjungi Stand IndiHome di Jakarta Fair Kemayoran dan saksikan pengundian 30 Paket Umroh IndiHome di bulan Ramadhan 2019!', 'kunjungi-stand-indihome-di-jakarta-fair-kemayoran-dan-saksikan-pengundian-30-paket-umroh-indihome-di-bulan-ramadhan-2019', 1, '03-10-2019_203354_kunjungi_stand_indihome_di_jakarta_fair_kemayoran_dan_saksikan_pengundian_30_paket_umroh_indihome_di_bulan_ramadhan_2019!.jpg', '<p>Ayo, segera datang ke Jakarta Fair Kemayoran tanggal 18 Juni 2019 Jam 16.00 WIB dan kunjungi Stand IndiHome di selasar Hall D2 JIEXPO Kemayoran untuk menyaksikan pengundian 30 Paket Umroh IndiHome di bulan Ramadhan 2019. Siapa tahu Anda pemenangnya!</p>\r\n\r\n<p><strong>Syarat dan Ketentuan Pengundian 30 Paket Umroh IndiHome di bulan Ramadhan 2019:</strong></p>\r\n\r\n<ol>\r\n	<li>Pengundian 30 Paket Umroh di bulan Ramadhan merupakan bagian dari Undian IndiHome Paket Semarak Kebahagiaan.</li>\r\n	<li>Program berlaku hanya bagi pelanggan yang berlangganan IndiHome Paket Semarak Kebahagiaan pada bulan Ramadhan 2019.</li>\r\n	<li>Hadiah program undian 30 Paket Umroh di bulan Ramadhan bersama IndiHome, berupa 30 paket perjalanan umroh masing-masing 1 paket untuk 1 orang.</li>\r\n	<li>Pajak ditanggung oleh pemenang.</li>\r\n	<li>Paket Umroh dapat diuangkan dan atau dipindah tangankan kepada orang lain dengan terlebih dahulu menandatangani surat pernyataan.</li>\r\n	<li>Pengurusan keberangkatan Umroh tidak termasuk biaya pembuatan passport, visa, vaksinasi, pajak progresif, dan pengeluaran pribadi.</li>\r\n	<li>Pemenang akan dihubungi oleh petugas IndiHome dengan membawa surat keterangan pemenang undian.</li>\r\n	<li>PT Telekomunikasi Indonesia (Persero) Tbk dan atau IndiHome tidak memungut biaya apapun untuk program undian.</li>\r\n	<li>Program tidak berlaku bagi karyawan Telkom, anak perusahaan, dan/atau afiliasi perusahaan.</li>\r\n	<li>PT Telekomunikasi Indonesia (Persero) Tbk dan/atau IndiHome tidak bertanggung jawab terhadap adanya penipuan yang mengatasnamakan program undian.</li>\r\n</ol>\r\n', 'umroh gratis indihome,umroh gratis dari indihome,stand indihome,indihome jakarta fair kemayoran,umroh bulan ramadhan,undian umroh dari indihome,30 paket umroh dari indihome', '2019-10-03 07:18:37', 1, '2019-10-03 13:33:54', 1),
(4, 'Ini Dia Daftar Pemenang Undian 30 Paket Umroh di Bulan Ramadhan Bersama IndiHome!', 'ini-dia-daftar-pemenang-undian-30-paket-umroh-di-bulan-ramadhan-bersama-indihome', 2, '03-10-2019_164307_ini_dia_daftar_pemenang_undian_30_paket_umroh_di_bulan_ramadhan_bersama_indihome!.png', '<p>Pemenang Undian 30 Paket Umroh bersama IndiHome di bulan Ramadhan telah ditentukan! Hadiah undian ini berupa 30 paket perjalanan umroh masing-masing 1 paket untuk 1 orang yang telah diundi pada hari Selasa, 18 Juni 2019 di booth IndiHome selasar Hall D2 Jakarta Fair Kemayoran 2019.</p>\r\n\r\n<p>Selamat kepada para pemenang yang beruntung! Anda akan didatangi oleh petugas IndiHome yang membawa surat keterangan pemenang undian.</p>\r\n\r\n<p>Untuk info lebih lanjut, silakan cek akun sosial media @indihome, layar UseeTV, dan aplikasi myIndiHome.</p>\r\n\r\n<p><strong>Syarat dan Ketentuan Pemenang Undian 30 Paket Umroh di Bulan Ramadhan Bersama IndiHome:</strong></p>\r\n\r\n<ol>\r\n	<li>Pemenang undian merupakan pelanggan yang berlangganan IndiHome Paket Semarak Kebahagiaan pada bulan Ramadhan 2019.</li>\r\n	<li>Pemenang akan didatangi oleh petugas IndiHome yang membawa surat keterangan pemenang undian.</li>\r\n	<li>Hadiah program undian 30 Paket Umroh di bulan Ramadhan bersama IndiHome, berupa 30 paket perjalanan umroh masing-masing 1 paket untuk 1 orang.</li>\r\n	<li>Pajak ditanggung oleh pemenang.</li>\r\n	<li>Hadiah paket umroh dapat diuangkan dan atau dipindah tangankan kepada orang lain dengan terlebih dahulu menandatangani surat pernyataan.</li>\r\n	<li>Pengurusan keberangkatan Umroh tidak termasuk biaya pembuatan passport, visa, vaksinasi, pajak progresif, dan pengeluaran pribadi.</li>\r\n	<li>PT Telekomunikasi Indonesia (Persero) Tbk dan/atau IndiHome tidak memungut biaya apapun untuk program undian.</li>\r\n	<li>Program tidak berlaku bagi karyawan Telkom, anak perusahaan, dan/atau afiliasi perusahaan.</li>\r\n	<li>PT Telekomunikasi Indonesia (Persero) Tbk dan/atau IndiHome tidak bertanggung jawab terhadap adanya penipuan yang mengatasnamakan program undian.</li>\r\n</ol>\r\n', 'pemenang undian umroh indihome,pemenang umroh indihome,pemenang umroh,pengumuman pemenang paket umroh indihome,30 paket umroh indihome', '2019-10-03 09:43:07', 1, '0000-00-00 00:00:00', 0),
(5, 'Pemenang Undian IndiHome Miliarder Paket Semarak Kebahagiaan Tahap 1', 'pemenang-undian-indihome-miliarder-paket-semarak-kebahagiaan-tahap-1', 2, '03-10-2019_164705_pemenang_undian_indihome_miliarder_paket_semarak_kebahagiaan_tahap_1.jpg', '<p>Sebagai bentuk apresiasi kepada pelanggan yang berlangganan IndiHome Paket Semarak Kebahagiaan periode bulan Mei &ndash; Juli 2019, IndiHome telah melakukan pengundian IndiHome Miliarder Paket Semarak Kebahagiaan tahap 1 yang berhadiah uang senilai Rp10.000.000 (Pajak ditanggung pemenang) untuk masing-masing 121 orang pemenang*. Hadiah tersebut akan langsung di top up ke dalam Dompet myIndiHome para pemenang undian.</p>\r\n\r\n<p>Hadiah dapat diuangkan melalui aplikasi T-Money. Caranya, download aplikasi T-Money di App Store atau Google Play, lalu log in menggunakan email dan password myIndiHome Anda.<br />\r\nJika Anda gagal log in, silakan klik opsi Lupa Password untuk mengaktifkan kembali akun Anda di T-Money.</p>\r\n\r\n<p><br />\r\n<strong>Berikut tutorial yang dapat membantu Anda:</strong><br />\r\nLupa password di T-Money:</p>\r\n\r\n<ol>\r\n	<li>Buka aplikasi T-Money</li>\r\n	<li>Klik Lupa Password</li>\r\n	<li>Masukan email akun T-Money Anda</li>\r\n	<li>Klik Kirim</li>\r\n	<li>Cek email yang didaftarkan, lalu buka email dengan subject &ldquo;T-MONEY - RESET PASSWORD&rdquo;</li>\r\n	<li>Klik Reset Password pada email tersebut</li>\r\n	<li>Masukkan password baru Anda</li>\r\n	<li>Klik Reset Password</li>\r\n</ol>\r\n\r\n<p>Fitur scan QR di aplikasi T-Money:</p>\r\n\r\n<ol>\r\n	<li>Log in akun T-Money</li>\r\n	<li>Klik fitur QRen</li>\r\n	<li>Masukan PIN Anda</li>\r\n	<li>Scan QR lalu klik Bayar</li>\r\n</ol>\r\n\r\n<p>Transfer ke bank di T-Money:</p>\r\n\r\n<ol>\r\n	<li>Log in akun T-Money</li>\r\n	<li>Klik fitur Transfer</li>\r\n	<li>Masukan Nama Bank, Nomor rekening tujuan, Nominal saldo yang akan di transfer</li>\r\n	<li>Klik Transfer</li>\r\n	<li>Cek kembali data yang sudah Anda isi, jika benar klik Transfer</li>\r\n</ol>\r\n\r\n<p>Selamat kepada para pemenang yang beruntung! Terima kasih telah setia menjadi pelanggan IndiHome.<br />\r\nUntuk info lebih lanjut pemenang undian, silakan hubungi 147.</p>\r\n\r\n<p><strong>Syarat dan Ketentuan Pemenang Undian IndiHome Miliarder Paket Semarak Kebahagiaan Tahap 1:</strong></p>\r\n\r\n<ol>\r\n	<li>Pemenang undian merupakan pelanggan yang berlangganan IndiHome Paket Semarak Kebahagiaan periode bulan Mei &ndash; Juli 2019.</li>\r\n	<li>Pajak ditanggung oleh pemenang.</li>\r\n	<li>PT Telekomunikasi Indonesia (Persero) Tbk dan/atau IndiHome tidak memungut biaya apapun untuk program undian.</li>\r\n	<li>Program tidak berlaku bagi karyawan Telkom, anak perusahaan, dan/atau afiliasi perusahaan.</li>\r\n	<li>PT Telekomunikasi Indonesia (Persero) Tbk dan/atau IndiHome tidak bertanggung jawab terhadap adanya penipuan yang mengatasnamakan program undian.</li>\r\n</ol>\r\n', 'Pemenang Undian IndiHome Miliarder Paket Semarak Kebahagiaan Tahap 1,pemenang indihome miliarder,pemenang paket semarak kebahagiaan', '2019-10-03 09:47:05', 1, '0000-00-00 00:00:00', 0),
(6, 'Kini, IndiHome Hadir di Pulau Rote!', 'kini-indihome-hadir-di-pulau-rote', 2, '03-10-2019_164908_kini,_indihome_hadir_di_pulau_rote!.jpg', '<p>Sebagai bentuk komitmen PT Telkom Indonesia (Persero) Tbk (Telkom) untuk selalu ada dan berkontribusi menghadirkan konektivitas di seluruh nusantara hingga ke pelosok wilayah Terpencil, Terdepan dan Terluar (3T) akan terus memperkuat layanan IndiHome Triple Play. Kini, IndiHome secara resmi hadir di Pulau Rote yang dikenal sebagai salah satu titik terluar di Indonesia yang ditandai dengan peluncuran layanannya di Kabupaten Rotendao, Nusa Tenggara Timur (19/09). Dalam waktu dekat, beberapa Kabupaten lain di wilayah 3T, seperti Kabupaten Buton Selatan, Kabupaten Halmahera Timur, Kabupaten Muna, Kabupaten Kolaka Utara, Kabupaten Ana Kalang, Kabupaten Lewoleba, Kabupaten Sumbawa dan Kabupaten Bima akan segera terlayani jaringan IndiHome.</p>\r\n\r\n<p>Direktur Consumer Service Telkom, Siti Choiriana mengatakan bahwa Telkom berkomitmen menghadirkan layanan internet di 514 Ibu Kota Kabupaten Kota (IKK) termasuk wilayah 3T. &ldquo;Hingga saat ini, IndiHome secara kontinu memperluas dan memperkuat jaringannya hingga pulau terluar. Selain untuk mendukung pemerataan konektivitas, ini juga merupakan upaya untuk mempertahankan posisi IndiHome sebagai market leader di bisnis fixed broadband,&rdquo; ujar Ana.</p>\r\n\r\n<p>Mengawali layanan IndiHome di Pulau Rote, Telkom menawarkan IndiHome Paket Semarak Kebahagiaan dengan kecepatan internet mulai dari 10Mbps hingga 30Mbps. Selain itu, pelanggan juga akan memperoleh bonus layanan telepon lokal-interlokal, menonton tayangan TV interaktif IndiHome, layanan Wifi.id dan Movin&rsquo; Phone serta paket bundling Over-The-Top (OTT) seperti Catchplay, Hooq dan Iflix. Pelanggan dapat mengetahui detail dan memilih paket tersebut melalui aplikasi myIndiHome.</p>\r\n\r\n<p>&ldquo;Fokus kami di tahun 2019 ini adalah mewujudkan &ldquo;Best in Class Customer Experience&rdquo;. Jadi jika ada calon pelanggan yang minta pasang baru, dalam satu hari layanan IndiHome sudah bisa dipasang, begitu pun untuk gangguan akan diselesaikan dalam tiga jam,&rdquo; jelas Ana.</p>\r\n\r\n<p>IndiHome merupakan layanan digital menggunakan teknologi fiber optik yang menawarkan layanan Triple Play yang terdiri dari internet rumah (fixed broadband internet), telepon rumah (fixed phone) dan TV interaktif. IndiHome juga menawarkan layanan Dual Play yang terdiri dari internet rumah dengan telepon rumah atau internet rumah dengan TV interaktif. Saat ini IndiHome melayani lebih dari 6 juta pelanggan di seluruh Indonesia. Diharapkan ke depannya, seluruh masyarakat dapat merasakan keseruan IndiHome melalui layanan dan konten yang semakin berkualitas.</p>\r\n\r\n<p>&ldquo;Dengan inovasi tiada henti, Telkom Indonesia menghadirkan IndiHome untuk menemani keluarga Indonesia, membawa suasana keluarga menjadi lebih harmonis, happy, kreatif, dan penuh gairah, sejalan dengan tagline IndiHome #WujudkanDariRumah,&rdquo; tutup Ana.</p>\r\n', 'Kini, IndiHome Hadir di Pulau Rote,indihome pulau rote,pulau rote sudah ada akses internet,fiber optic di pulau rote', '2019-10-03 09:49:08', 1, '0000-00-00 00:00:00', 0),
(7, 'test', 'test', 1, 'noimagesheader.jpg', '', 'test, test, test', '2019-10-12 08:28:26', 1, '0000-00-00 00:00:00', 0),
(8, 'aaa', 'aaa', 1, '12-10-2019_161851_aaa.jpg', '', 'aa', '2019-10-12 09:18:51', 1, '0000-00-00 00:00:00', 0),
(9, 'test', 'test', 1, '13-10-2019_103332_test.jpg', '<p>test</p>\r\n', 'test, test', '2019-10-13 03:33:32', 1, '0000-00-00 00:00:00', 0),
(10, 'post events', 'post-events', 1, '13-10-2019_105724_post_events.jpg', '<p>events post</p>\r\n', 'post, events', '2019-10-13 03:57:24', 1, '0000-00-00 00:00:00', 0),
(11, 'no file name', 'no-file-name', 1, '13-10-2019_111006_no_file_name.jpg', '<p>no file name</p>\r\n', 'no file name, saya', '2019-10-13 04:10:06', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_categories`
--

CREATE TABLE `posts_categories` (
  `cat_pst_id` int(11) NOT NULL,
  `cat_pst_name` varchar(50) NOT NULL,
  `cat_pst_slug` varchar(50) NOT NULL,
  `cat_pst_body` text NOT NULL,
  `cat_pst_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cat_pst_created_by` int(11) NOT NULL,
  `cat_pst_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cat_pst_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_categories`
--

INSERT INTO `posts_categories` (`cat_pst_id`, `cat_pst_name`, `cat_pst_slug`, `cat_pst_body`, `cat_pst_created_at`, `cat_pst_created_by`, `cat_pst_edited_at`, `cat_pst_edited_by`) VALUES
(1, 'Events', 'events', 'Kegiatan-kegiatan yang di adakan boleh IndiHome', '2019-10-03 06:59:12', 1, '0000-00-00 00:00:00', 0),
(2, 'Blog', 'blog', 'Ulasan seputar dunia internet dan infrastruktur', '2019-10-03 06:59:43', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usr_id` int(11) NOT NULL,
  `usr_group_id` int(11) NOT NULL,
  `usr_level_id` int(11) NOT NULL,
  `usr_email` varchar(50) NOT NULL,
  `usr_password` varchar(255) NOT NULL,
  `usr_fullname` varchar(50) NOT NULL,
  `usr_slug` varchar(50) NOT NULL,
  `usr_phone` varchar(20) NOT NULL,
  `usr_address` text NOT NULL,
  `usr_images` varchar(50) NOT NULL,
  `usr_status` int(11) NOT NULL,
  `usr_activity` varchar(100) NOT NULL,
  `usr_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_created_by` int(11) NOT NULL,
  `usr_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usr_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usr_id`, `usr_group_id`, `usr_level_id`, `usr_email`, `usr_password`, `usr_fullname`, `usr_slug`, `usr_phone`, `usr_address`, `usr_images`, `usr_status`, `usr_activity`, `usr_created_at`, `usr_created_by`, `usr_edited_at`, `usr_edited_by`) VALUES
(1, 1, 1, 'indihomeserpongutara@gmail.com', '$argon2id$v=19$m=1024,t=2,p=2$Sktpa1YyQlllVEJPbUlmWQ$thvwHQeglFAFmxVT2n+sgSzdCoGTOujL1PUZGB5bgkE', 'Admin Indihome Serpong Utara', 'admin-indihome-serpong-utara', '082217992355', 'Komplek Ciledug Indah I, Jl. Pelangi Raya Blok B-14 No.176, Kec. Karang Tengah, Kel. Pedurenan Kota Tangerang - Banten 15145', '415d8f19b43afca708f811fdc1c877a5.jpg', 0, '', '2019-08-31 03:18:42', 0, '2019-10-21 08:54:43', 1),
(2, 1, 2, 'staffindihomeserpongutara@gmail.com', '$argon2id$v=19$m=1024,t=2,p=2$TXYwV01ubGtoZVBRT3JGWA$6qvVTL6IQeuyYQoLroa1RlJMEbm9JYC3zZzxg30eGBw', 'Staff Serpong Utara', 'staff-serpong-utara', '082217992355', 'Ciledug Indah 1', '1510nophoto.png', 0, '', '2019-08-31 06:26:46', 0, '2019-10-03 06:10:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `grp_id` int(11) NOT NULL,
  `grp_name` varchar(20) NOT NULL,
  `grp_slug` varchar(20) NOT NULL,
  `grp_description` varchar(50) NOT NULL,
  `grp_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `grp_created_by` int(11) NOT NULL,
  `grp_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `grp_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`grp_id`, `grp_name`, `grp_slug`, `grp_description`, `grp_created_at`, `grp_created_by`, `grp_edited_at`, `grp_edited_by`) VALUES
(1, 'Group Admin', 'group-admin', 'Create, Read, Update and Delete', '2019-10-03 06:20:49', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_levels`
--

CREATE TABLE `users_levels` (
  `lvl_id` int(11) NOT NULL,
  `lvl_name` varchar(20) NOT NULL,
  `lvl_slug` varchar(20) NOT NULL,
  `lvl_description` varchar(50) NOT NULL,
  `lvl_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lvl_created_by` int(11) NOT NULL,
  `lvl_edited_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lvl_edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_levels`
--

INSERT INTO `users_levels` (`lvl_id`, `lvl_name`, `lvl_slug`, `lvl_description`, `lvl_created_at`, `lvl_created_by`, `lvl_edited_at`, `lvl_edited_by`) VALUES
(1, 'Level Admin', 'Level-Admin', 'Create, Read, Update and Delete', '2019-08-31 06:02:09', 0, '2019-08-31 06:02:09', 1),
(2, 'Level Staff', 'Level-Staff', 'Create, Read, and Update', '2019-08-31 06:02:23', 0, '2019-08-31 06:02:23', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`glr_id`);

--
-- Indexes for table `internet_package`
--
ALTER TABLE `internet_package`
  ADD PRIMARY KEY (`inp_id`);

--
-- Indexes for table `internet_package_priority`
--
ALTER TABLE `internet_package_priority`
  ADD PRIMARY KEY (`ipp_id`);

--
-- Indexes for table `logo_brandlogo`
--
ALTER TABLE `logo_brandlogo`
  ADD PRIMARY KEY (`lbl_id`);

--
-- Indexes for table `logo_iconbar`
--
ALTER TABLE `logo_iconbar`
  ADD PRIMARY KEY (`lib_id`);

--
-- Indexes for table `logo_slidehomepage`
--
ALTER TABLE `logo_slidehomepage`
  ADD PRIMARY KEY (`lsh_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pgs_id`);

--
-- Indexes for table `pages_sub`
--
ALTER TABLE `pages_sub`
  ADD PRIMARY KEY (`sub_pgs_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pst_id`);

--
-- Indexes for table `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD PRIMARY KEY (`cat_pst_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usr_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`grp_id`);

--
-- Indexes for table `users_levels`
--
ALTER TABLE `users_levels`
  ADD PRIMARY KEY (`lvl_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `glr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `internet_package`
--
ALTER TABLE `internet_package`
  MODIFY `inp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `internet_package_priority`
--
ALTER TABLE `internet_package_priority`
  MODIFY `ipp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logo_brandlogo`
--
ALTER TABLE `logo_brandlogo`
  MODIFY `lbl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logo_iconbar`
--
ALTER TABLE `logo_iconbar`
  MODIFY `lib_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logo_slidehomepage`
--
ALTER TABLE `logo_slidehomepage`
  MODIFY `lsh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pgs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages_sub`
--
ALTER TABLE `pages_sub`
  MODIFY `sub_pgs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `pst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts_categories`
--
ALTER TABLE `posts_categories`
  MODIFY `cat_pst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `grp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_levels`
--
ALTER TABLE `users_levels`
  MODIFY `lvl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
