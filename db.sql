-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 22, 2015 at 12:41 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pt`
--

-- --------------------------------------------------------

--
-- Table structure for table `mine_data_requests`
--

CREATE TABLE IF NOT EXISTS `mine_data_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `done` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `mine_data_requests`
--

INSERT INTO `mine_data_requests` (`id`, `url`, `done`) VALUES
(1, 'http://busca.americanas.com.br/busca.php?q=geladeira', 1),
(2, 'http://busca.americanas.com.br/busca.php?q=geladeira', 1),
(3, 'http://busca.americanas.com.br/busca.php?q=geladeira', 1),
(4, 'http://busca.americanas.com.br/busca.php?q=geladeira', 1),
(5, 'http://busca.americanas.com.br/busca.php?q=geladeira', 1),
(6, 'http://busca.americanas.com.br/busca.php?q=geladeira', 1),
(7, 'http://busca.americanas.com.br/busca.php?q=geladeira', 1),
(8, 'http://busca.americanas.com.br/busca.php?q=geladeira\r\n', 1),
(9, 'http://busca.americanas.com.br/busca.php?q=geladeira', 1),
(10, 'http://busca.americanas.com.br/busca.php?q=computador', 1),
(11, 'http://busca.americanas.com.br/busca.php?q=cadeira', 1),
(12, 'http://busca.americanas.com.br/busca.php?q=mesa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE IF NOT EXISTS `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_id` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `track_id`, `price`, `when`) VALUES
(4, 1, 265.49, '2015-05-20 16:39:43'),
(13, 2, 1799.10, '2015-05-20 17:29:05'),
(14, 4, 2149.00, '2015-05-20 17:39:49'),
(15, 5, 2499.00, '2015-05-20 17:42:28'),
(16, 5, 2499.00, '2015-05-20 17:49:24'),
(17, 5, 2499.00, '2015-05-20 17:50:20'),
(18, 5, 2499.00, '2015-05-20 17:54:04'),
(19, 5, 2499.00, '2015-05-20 17:56:46'),
(20, 5, 2499.00, '2015-05-20 17:57:10'),
(21, 5, 2499.00, '2015-05-20 17:57:33'),
(22, 5, 2499.00, '2015-05-20 17:58:05'),
(23, 5, 2499.00, '2015-05-20 17:58:28'),
(24, 5, 2499.00, '2015-05-20 17:59:53'),
(25, 5, 2499.00, '2015-05-20 18:00:46'),
(26, 1, 265.49, '2015-05-20 18:02:29'),
(27, 1, 265.49, '2015-05-20 18:05:23'),
(28, 6, 2099.00, '2015-05-20 18:06:22'),
(29, 5, 2199.00, '2015-05-21 22:54:03'),
(30, 2, 1999.00, '2015-05-21 22:54:03'),
(31, 7, 1999.90, '2015-05-22 00:19:53'),
(32, 11, 1259.91, '2015-05-22 00:19:56'),
(33, 8, 2699.90, '2015-05-22 00:19:56'),
(34, 10, 1709.91, '2015-05-22 00:19:56'),
(35, 9, 999.90, '2015-05-22 00:19:56'),
(36, 12, 1899.90, '2015-05-22 00:19:58'),
(37, 17, 3099.90, '2015-05-22 00:20:00'),
(38, 15, 1899.90, '2015-05-22 00:20:01'),
(39, 14, 2141.91, '2015-05-22 00:20:01'),
(40, 13, 1979.91, '2015-05-22 00:20:01'),
(41, 19, 1619.91, '2015-05-22 00:20:03'),
(42, 16, 1529.91, '2015-05-22 00:33:09'),
(43, 18, 2339.91, '2015-05-22 00:34:56'),
(44, 20, 1889.91, '2015-05-22 00:35:02'),
(45, 21, 1709.91, '2015-05-22 00:35:06'),
(46, 22, 1799.91, '2015-05-22 00:35:10'),
(47, 23, 1889.91, '2015-05-22 00:35:13'),
(48, 24, 1439.91, '2015-05-22 00:35:18'),
(49, 25, 989.91, '2015-05-22 00:35:22'),
(50, 26, 2699.90, '2015-05-22 00:35:26'),
(51, 27, 2429.91, '2015-05-22 00:35:30'),
(52, 28, 2829.90, '2015-05-22 00:35:34'),
(53, 29, 999.90, '2015-05-22 00:35:38'),
(54, 30, 1124.91, '2015-05-22 00:35:42'),
(55, 31, 3149.91, '2015-05-22 00:35:46'),
(56, 32, 1776.67, '2015-05-22 00:35:50'),
(57, 33, 1979.91, '2015-05-22 00:35:54'),
(58, 34, 989.91, '2015-05-22 00:35:58'),
(59, 35, 2159.91, '2015-05-22 00:36:02'),
(60, 36, 4319.00, '2015-05-22 00:36:06'),
(61, 37, 1699.00, '2015-05-22 00:37:47'),
(62, 39, 729.00, '2015-05-22 00:37:52'),
(63, 41, 1599.00, '2015-05-22 00:37:56'),
(64, 42, 799.90, '2015-05-22 00:38:00'),
(65, 43, 679.90, '2015-05-22 00:38:04'),
(66, 44, 2099.00, '2015-05-22 00:38:08'),
(67, 45, 1449.00, '2015-05-22 00:38:12'),
(68, 46, 1149.00, '2015-05-22 00:38:16'),
(69, 47, 799.90, '2015-05-22 00:38:20'),
(70, 48, 1224.79, '2015-05-22 00:38:24'),
(71, 49, 759.90, '2015-05-22 00:38:28'),
(72, 50, 939.90, '2015-05-22 00:38:31'),
(73, 51, 669.99, '2015-05-22 00:38:35'),
(74, 52, 1506.07, '2015-05-22 00:38:39'),
(75, 53, 1404.23, '2015-05-22 00:38:43'),
(76, 54, 2699.00, '2015-05-22 00:38:47'),
(77, 55, 12900.00, '2015-05-22 00:38:51'),
(78, 56, 710.00, '2015-05-22 00:38:56'),
(79, 57, 3562.90, '2015-05-22 00:39:00'),
(80, 58, 4129.90, '2015-05-22 00:39:04'),
(81, 59, 2879.00, '2015-05-22 00:39:08'),
(82, 60, 1649.00, '2015-05-22 00:39:11'),
(83, 61, 4497.04, '2015-05-22 00:39:15'),
(84, 62, 1609.90, '2015-05-22 00:39:19'),
(85, 63, 7178.38, '2015-05-22 00:39:23'),
(86, 64, 6387.78, '2015-05-22 00:39:27'),
(87, 65, 1882.95, '2015-05-22 00:39:31'),
(88, 66, 1339.90, '2015-05-22 00:39:35'),
(89, 67, 219.90, '2015-05-22 00:40:05'),
(90, 68, 289.99, '2015-05-22 00:40:09'),
(91, 69, 161.91, '2015-05-22 00:40:13'),
(92, 70, 499.90, '2015-05-22 00:40:17'),
(93, 71, 305.10, '2015-05-22 00:40:21'),
(94, 72, 206.10, '2015-05-22 00:40:25'),
(95, 73, 269.10, '2015-05-22 00:40:29'),
(96, 74, 323.10, '2015-05-22 00:40:32'),
(97, 75, 359.10, '2015-05-22 00:40:36'),
(98, 76, 529.60, '2015-05-22 00:40:40'),
(99, 77, 260.10, '2015-05-22 00:40:45'),
(100, 78, 224.10, '2015-05-22 00:40:48'),
(101, 79, 287.10, '2015-05-22 00:40:52'),
(102, 80, 287.10, '2015-05-22 00:40:56'),
(103, 81, 161.91, '2015-05-22 00:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE IF NOT EXISTS `track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `when` datetime NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `title`, `price`, `when`, `url`) VALUES
(1, 'HD Externo Portátil Samsung 1TB M3 Portable Preto', 265.49, '2015-05-20 18:05:23', 'http://www.americanas.com.br/produto/111656791/hd-externo-portatil-samsung-1tb-m3-portable-preto?chave=HM_REC1_VT_3&WT.mc_id=HM_REC1_VT_3&DCSext.recom=Neemu_Home_mais-vendidos-1&nm_origem=rec_home_mais-vendidos-1&nm_ranking_rec=3'),
(2, 'TV LED 49" LG 49LB5500 Full HD 2 HDMI 1 USB', 1999.00, '2015-05-21 22:54:03', 'http://www.americanas.com.br/produto/120420632/tv-led-lg-49-49lb5500-full-hd-2-hdmi-1-usb'),
(4, 'Notebook Samsung ATIV Book 2 com Intel Core i5 8GB 1TB LED 15,6'''' Windows 8.1 - Branco', 2149.00, '2015-05-20 17:39:49', 'http://www.americanas.com.br/produto/122059289/notebook-samsung-ativ-book-2-com-intel-core-i5-8gb-1tb-led-15-6-windows-8.1-branco'),
(5, 'Notebook Ultrafino Asus X550LN-BRA-DM547H Intel Core i5 6GB 500GB Tela LED 15,6" Windows 8.1 - Preto', 2199.00, '2015-05-21 22:54:03', 'http://www.americanas.com.br/produto/121935996/notebook-ultrafino-asus-x550ln-bra-dm547h-intel-core-i5-6gb-500gb-tela-led-15-6-windows-8.1-preto'),
(6, 'Notebook Dell Inspiron i14-3442-A30 com Intel Core i5 4GB 1TB LED 14" Windows 8.1', 2099.00, '2015-05-20 18:06:22', 'http://www.americanas.com.br/produto/120175770/notebook-dell-inspiron-i14-3442-a30-com-intel-core-i5-4gb-1tb-led-14-windows-8.1'),
(7, 'Geladeira/ Refrigerador Brastemp Frost Free Clean BRM39 352 Litros - Inox', 1999.90, '2015-05-22 00:19:53', 'http://www.americanas.com.br/produto/7112345/geladeira-refrigerador-brastemp-frost-free-clean-brm39-352-litros-inox'),
(8, 'Geladeira / Refrigerador Brastemp Ative 2 Portas  BRM48 Frost Free 403L Inox', 2699.90, '2015-05-22 00:19:56', 'http://www.americanas.com.br/produto/7408490/geladeira-refrigerador-brastemp-ative-2-portas-brm48-frost-free-403l-inox'),
(9, 'Geladeira / Refrigerador 1 Porta Consul CRC28 - 239 Litros - Branca', 999.90, '2015-05-22 00:19:56', 'http://www.americanas.com.br/produto/7425012/geladeira-refrigerador-1-porta-consul-crc28-239-litros-branca'),
(10, 'Geladeira / Refrigerador Continental Duplex Frost Free  RFCT451 403 Litros - Branco', 1709.91, '2015-05-22 00:19:56', 'http://www.americanas.com.br/produto/110324153/geladeira-refrigerador-continental-duplex-frost-free-rfct451-403-litros-branco'),
(11, 'Geladeira / Refrigerador Consul Frost Free CRM33 Branco 263L', 1259.91, '2015-05-22 00:19:56', 'http://www.americanas.com.br/produto/108545150/geladeira-refrigerador-consul-frost-free-crm33-branco-263l'),
(12, 'Geladeira / Refrigerador Brastemp Frost Free Clean BRM39 352L Branco', 1899.90, '2015-05-22 00:19:58', 'http://www.americanas.com.br/produto/7112342/geladeira-refrigerador-brastemp-frost-free-clean-brm39-352l-branco'),
(13, 'Refrigerador Geladeira Electrolux Frost Free DW42X Inox 386L', 1979.91, '2015-05-22 00:20:01', 'http://www.americanas.com.br/produto/7521216/refrigerador-geladeira-electrolux-frost-free-dw42x-inox-386l'),
(14, 'Geladeira/Refrigerador Consul Frost Free Bem Estar Evox 405 Litros Platinum', 2141.91, '2015-05-22 00:20:01', 'http://www.americanas.com.br/produto/116107897/geladeira-refrigerador-consul-frost-free-bem-estar-evox-405-litros-platinum'),
(15, 'Refrigerador / Geladeira Electrolux Frost Free DF36X Inox 310L', 1899.90, '2015-05-22 00:20:01', 'http://www.americanas.com.br/produto/7521208/refrigerador-geladeira-electrolux-frost-free-df36x-inox-310l'),
(16, 'Geladeira / Refrigerador Consul Frost Free CRM33 Inox 263L', 1529.91, '2015-05-22 00:33:09', 'http://www.americanas.com.br/produto/108559033/geladeira-refrigerador-consul-frost-free-crm33-inox-263l'),
(17, 'Geladeira / Refrigerador Duplex Frost Free Brastemp Ative! BRM50 - 429 Litros - Inox', 3099.90, '2015-05-22 00:20:00', 'http://www.americanas.com.br/produto/7408496/geladeira-refrigerador-duplex-frost-free-brastemp-ative-brm50-429-litros-inox'),
(18, 'Geladeira / Refrigerador Brastemp Duplex Frost Free Ative! BRM48 403 Litros Branco', 2339.91, '2015-05-22 00:34:57', 'http://www.americanas.com.br/produto/7408487/geladeira-refrigerador-brastemp-duplex-frost-free-ative-brm48-403-litros-branco'),
(19, 'Refrigerador / Geladeira Electrolux Frost Free DF36A Branco 310L', 1619.91, '2015-05-22 00:20:03', 'http://www.americanas.com.br/produto/7521204/refrigerador-geladeira-electrolux-frost-free-df36a-branco-310l'),
(20, 'Geladeira/Refrigerador Consul Frost Free Bem Estar 405 Litros Branco', 1889.91, '2015-05-22 00:35:02', 'http://www.americanas.com.br/produto/116080401/geladeira-refrigerador-consul-frost-free-bem-estar-405-litros-branco'),
(21, 'Geladeira / Refrigerador Electrolux Frost Free DF42 Branco 382L', 1709.91, '2015-05-22 00:35:06', 'http://www.americanas.com.br/produto/7521212/geladeira-refrigerador-electrolux-frost-free-df42-branco-382l'),
(22, 'Geladeira / Refrigerador Continental Duplex 2 Portas Frost Free RFCT501 445 Litros - Branco', 1799.91, '2015-05-22 00:35:10', 'http://www.americanas.com.br/produto/121757974/geladeira-refrigerador-continental-duplex-2-portas-frost-free-rfct501-445-litros-branco'),
(23, 'Geladeira / Refrigerador Brastemp Clean Frost Free BRM42 378 Litros', 1889.91, '2015-05-22 00:35:13', 'http://www.americanas.com.br/produto/7112348/geladeira-refrigerador-brastemp-clean-frost-free-brm42-378-litros'),
(24, 'Geladeira / Refrigerador Consul Frost Free  CRM37 345 Litros - Branco', 1439.91, '2015-05-22 00:35:18', 'http://www.americanas.com.br/produto/7284474/geladeira-refrigerador-consul-frost-free-crm37-345-litros-branco'),
(25, 'Geladeira / Refrigerador Consul 1 Porta CRP28 239 Litros c/ Dispenser de Água - Branca', 989.91, '2015-05-22 00:35:22', 'http://www.americanas.com.br/produto/7428612/geladeira-refrigerador-consul-1-porta-crp28-239-litros-c-dispenser-de-agua-branca'),
(26, 'Geladeira/Refrigerador Electrolux Frost Free  Duplex DF52 - 459 Litros - Branco', 2699.90, '2015-05-22 00:35:26', 'http://www.americanas.com.br/produto/113260247/geladeira-refrigerador-electrolux-frost-free-duplex-df52-459-litros-branco'),
(27, 'Geladeira/Refrigerador Consul Frost Free Bem Estar Evox com Horta em Casa 437 Litros Platinum', 2429.91, '2015-05-22 00:35:30', 'http://www.americanas.com.br/produto/116108013/geladeira-refrigerador-consul-frost-free-bem-estar-evox-com-horta-em-casa-437-litros-platinum'),
(28, 'Geladeira / Refrigerador Brastemp Ative Frost Free Duplex BRM50 Branco 429L', 2829.90, '2015-05-22 00:35:34', 'http://www.americanas.com.br/produto/7408493/geladeira-refrigerador-brastemp-ative-frost-free-duplex-brm50-branco-429l'),
(29, 'Geladeira /  Refrigerador 1 Porta Electrolux RE31 - 214 Litros - Branco', 999.90, '2015-05-22 00:35:38', 'http://www.americanas.com.br/produto/111957489/geladeira-refrigerador-1-porta-electrolux-re31-214-litros-branco'),
(30, 'Geladeira /  Refrigerador Electrolux Defrost Cycle DC35A 2 Portas 207 Litros Branco', 1124.91, '2015-05-22 00:35:42', 'http://www.americanas.com.br/produto/111957454/geladeira-refrigerador-electrolux-defrost-cycle-dc35a-2-portas-207-litros-branco'),
(31, 'Geladeira / Refrigerador Brastemp Ative 2 Portas  BRK50 Frost Free 429L Inox', 3149.91, '2015-05-22 00:35:46', 'http://www.americanas.com.br/produto/7408505/geladeira-refrigerador-brastemp-ative-2-portas-brk50-frost-free-429l-inox'),
(32, 'Geladeira / Refrigerador Brastemp Frost Free BRM42 378L Platinum', 1776.67, '2015-05-22 00:35:50', 'http://www.americanas.com.br/produto/121139990/geladeira-refrigerador-brastemp-frost-free-brm42-378l-platinum'),
(33, 'Geladeira/Refrigerador Consul Frost Free Bem Estar com Horta em Casa 405 Litros  - Branco', 1979.91, '2015-05-22 00:35:54', 'http://www.americanas.com.br/produto/116107926/geladeira-refrigerador-consul-frost-free-bem-estar-com-horta-em-casa-405-litros-branco'),
(34, 'Geladeira / Refrigerador 1 Porta Electrolux Celebrate Blue Touch RDE33 Degelo Autolimpante - 236 Litros - Branco', 989.91, '2015-05-22 00:35:58', 'http://www.americanas.com.br/produto/111957518/geladeira-refrigerador-1-porta-electrolux-celebrate-blue-touch-rde33-degelo-autolimpante-236-litros-branco'),
(35, 'Geladeira/Refrigerador Consul Frost Free Bem Estar com Horta em Casa 437 Litros Branco', 2159.91, '2015-05-22 00:36:02', 'http://www.americanas.com.br/produto/116107985/geladeira-refrigerador-consul-frost-free-bem-estar-com-horta-em-casa-437-litros-branco'),
(36, 'Refrigerador Brastemp Domest 2 Portas 573 Litros Inox Frost Free 220v', 4319.00, '2015-05-22 00:36:06', 'http://www.americanas.com.br/produto/9289987/refrigerador-brastemp-domest-2-portas-573-litros-inox-frost-free-220v'),
(37, 'Computador Space BR Intel Dual Core 8GB 1TB Windows 8 + Monitor AOC LED 18,5 Widescreen E970SWNL', 1699.00, '2015-05-22 00:37:47', 'http://www.americanas.com.br/produto/122639030/computador-space-br-intel-dual-core-8gb-1tb-windows-8-monitor-aoc-led-18-5-widescreen-e970swnl'),
(38, 'empty', 0.00, '2015-05-22 00:37:23', 'http://www.americanas.com.br/produto/120393144/computador-space-br-linux-processador-intel-dual-core-4gb-1tb'),
(39, 'All in One AOC com Processador Dual Core 1GB 8GB LED 19,5" Branco Android 4.1', 729.00, '2015-05-22 00:37:52', 'http://www.americanas.com.br/produto/120109596/all-in-one-aoc-com-processador-dual-core-1gb-8gb-led-19-5-branco-android-4.1'),
(40, 'empty', 0.00, '2015-05-22 00:37:23', 'http://www.americanas.com.br/produto/120769156/computador-space-br-com-intel-dual-core-4gb-1tb-linux-monitor-aoc-led-21-5-widescreen-full-hd'),
(41, 'Computador AOC All in One 20A25U-W81SL com Intel Dual Core 2GB 500GB Tela LED 19,5" Windows 8', 1599.00, '2015-05-22 00:37:56', 'http://www.americanas.com.br/produto/119444135/computador-aoc-all-in-one-20a25u-w81sl-com-intel-dual-core-2gb-500gb-tela-led-19-5-windows-8'),
(42, 'Microcomputador Certo PC Estudo Atom 706 Atom D525 4GB 1TB Gravador de DVD e Linux', 799.90, '2015-05-22 00:38:00', 'http://www.americanas.com.br/produto/8083049/microcomputador-certo-pc-estudo-atom-706-atom-d525-4gb-1tb-gravador-de-dvd-e-linux'),
(43, 'Microcomputador Certo PC Estudo Atom 702 Atom D525 2GB HD500GB Gravador de DVD e Linux', 679.90, '2015-05-22 00:38:04', 'http://www.americanas.com.br/produto/8083048/microcomputador-certo-pc-estudo-atom-702-atom-d525-2gb-hd500gb-gravador-de-dvd-e-linux'),
(44, 'Computador Lenovo H50-30G-90AS0005BR com Intel Core i3 4GB 1TB Windows 8.1 + Monitor LED 21,5" Widescreen E2270SWN - AOC', 2099.00, '2015-05-22 00:38:08', 'http://www.americanas.com.br/produto/120107734/computador-lenovo-h50-30g-90as0005br-com-intel-core-i3-4gb-1tb-windows-8.1-monitor-led-21-5-widescreen-e2270swn-aoc'),
(45, 'Computador Space BR Intel Dual Core 4GB 320GB Windows 8 + Monitor AOC LED 18,5 Widescreen E970SWNL', 1449.00, '2015-05-22 00:38:12', 'http://www.americanas.com.br/produto/122639081/computador-space-br-intel-dual-core-4gb-320gb-windows-8-monitor-aoc-led-18-5-widescreen-e970swnl'),
(46, 'Computador Space BR Processador Intel Celeron Dual Core 8GB 1TB Windows 8 Single', 1149.00, '2015-05-22 00:38:16', 'http://www.americanas.com.br/produto/122180396/computador-space-br-processador-intel-celeron-dual-core-8gb-1tb-windows-8-single'),
(47, 'Microcomputador Certo Pc Estudo - Celeron Dual Core 121 D1800m, 4gb, Hd500gb', 799.90, '2015-05-22 00:38:20', 'http://www.americanas.com.br/produto/8277573/microcomputador-certo-pc-estudo-celeron-dual-core-121-d1800m-4gb-hd500gb'),
(48, 'Computador Neologic Intel I3-3240 3.4ghz, Hd 1tb, 4gb Ram, Linux  Mouse E Teclado Nli45036', 1224.79, '2015-05-22 00:38:24', 'http://www.americanas.com.br/produto/8335249/computador-neologic-intel-i3-3240-3.4ghz-hd-1tb-4gb-ram-linux-mouse-e-teclado-nli45036'),
(49, 'Microcomputador Certo PC Estudo Atom 705 Atom D525 4GB 500GB Gravador de DVD e Linux', 759.90, '2015-05-22 00:38:28', 'http://www.americanas.com.br/produto/8083051/microcomputador-certo-pc-estudo-atom-705-atom-d525-4gb-500gb-gravador-de-dvd-e-linux'),
(50, 'Microcomputador Certo Pc Casa - Dual Core 224 - G2030, 2gb, Hd500gb', 939.90, '2015-05-22 00:38:31', 'http://www.americanas.com.br/produto/8277571/microcomputador-certo-pc-casa-dual-core-224-g2030-2gb-hd500gb'),
(51, 'Microcomputador Certo Pc Estudo - Celeron Dual Core 120 D1800m, 2gb, Hd500gb', 669.99, '2015-05-22 00:38:35', 'http://www.americanas.com.br/produto/8277585/microcomputador-certo-pc-estudo-celeron-dual-core-120-d1800m-2gb-hd500gb'),
(52, 'Computador Neologic Intel I3-3250 3.5ghz, Hd 1tb, 4gb Ram, Windows 7 Mouse E Teclado Nli45839', 1506.07, '2015-05-22 00:38:39', 'http://www.americanas.com.br/produto/9291131/computador-neologic-intel-i3-3250-3.5ghz-hd-1tb-4gb-ram-windows-7-mouse-e-teclado-nli45839'),
(53, 'Computador Neologic Dual Core G2030 3.0ghz, Hd 500gb, 8gb Ram, Windows 7 Mouse E Teclado Nli45843', 1404.23, '2015-05-22 00:38:43', 'http://www.americanas.com.br/produto/9291105/computador-neologic-dual-core-g2030-3.0ghz-hd-500gb-8gb-ram-windows-7-mouse-e-teclado-nli45843'),
(54, 'Computador Gamer Space BR Processador Intel Core i7 3770 8GB 1TB 2GB Vídeo Windows 8 Single', 2699.00, '2015-05-22 00:38:47', 'http://www.americanas.com.br/produto/122180513/computador-gamer-space-br-processador-intel-core-i7-3770-8gb-1tb-2gb-video-windows-8-single'),
(55, 'Computador X5 Gamer Intel I7 5820k, 16gb, Hdssd 2tb, Dvd-Rw, Pv Quadro K4200 4gb, Windows 8.1', 12900.00, '2015-05-22 00:38:51', 'http://www.americanas.com.br/produto/8480292/computador-x5-gamer-intel-i7-5820k-16gb-hdssd-2tb-dvd-rw-pv-quadro-k4200-4gb-windows-8.1'),
(56, 'Computador Movva Desktop Basic Plus Intel Celeron Dual Core 2.41ghz Mem Ram 4gb Hd 320gb', 710.00, '2015-05-22 00:38:56', 'http://www.americanas.com.br/produto/8273715/computador-movva-desktop-basic-plus-intel-celeron-dual-core-2.41ghz-mem-ram-4gb-hd-320gb'),
(57, 'Computador Dinopc Gamer - Cobra - I5 4440 3.1ghz - 8gb 1600mhz - Hd 1tb - P. Vídeo Gtx750 Ti 2gb', 3562.90, '2015-05-22 00:39:00', 'http://www.americanas.com.br/produto/9439957/computador-dinopc-gamer-cobra-i5-4440-3.1ghz-8gb-1600mhz-hd-1tb-p.-video-gtx750-ti-2gb'),
(58, 'Computador Dinopc Gamer - Bizon - I5 4440 3.1ghz - 8gb 1600mhz - Hd 1tb - P. Vídeo Gtx960 2gb', 4129.90, '2015-05-22 00:39:04', 'http://www.americanas.com.br/produto/9439963/computador-dinopc-gamer-bizon-i5-4440-3.1ghz-8gb-1600mhz-hd-1tb-p.-video-gtx960-2gb'),
(59, 'Computador Dinopc Gamer - Warrior - Fx6300 3.5ghz - 8gb 1600mhz - Hd 500gb - P. Vídeo R7 260x 2g', 2879.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/9439953/computador-dinopc-gamer-warrior-fx6300-3.5ghz-8gb-1600mhz-hd-500gb-p.-video-r7-260x-2g'),
(60, 'Computador Lenovo H50-30G-90AS0005BR com Intel Core i3 4GB 1TB Windows 8.1', 1649.00, '2015-05-22 00:39:12', 'http://www.americanas.com.br/produto/120125131/computador-lenovo-h50-30g-90as0005br-com-intel-core-i3-4gb-1tb-windows-8.1'),
(61, 'Desktop Gamer Ares K1, Core I7 4790, Gtx960 2gb, 8gb, 1tb, 600w - Nli44278', 4497.04, '2015-05-22 00:39:15', 'http://www.americanas.com.br/produto/9310500/desktop-gamer-ares-k1-core-i7-4790-gtx960-2gb-8gb-1tb-600w-nli44278'),
(62, 'Microcomputador Certo PC Desempenho Core i5 505 i5-3330 4GB HD 1TB Gravador de DVD Linux e HDMI', 1609.90, '2015-05-22 00:39:19', 'http://www.americanas.com.br/produto/8083047/microcomputador-certo-pc-desempenho-core-i5-505-i5-3330-4gb-hd-1tb-gravador-de-dvd-linux-e-hdmi'),
(63, 'Desktop Gamer Odin, Core I7 4790, Gtx980 4gb, 16gb, 1tb, 750w Windows 7 - Nli45785', 7178.38, '2015-05-22 00:39:23', 'http://www.americanas.com.br/produto/9310541/desktop-gamer-odin-core-i7-4790-gtx980-4gb-16gb-1tb-750w-windows-7-nli45785'),
(64, 'Desktop Gamer Thor Z3, Core I5 4690, Gtx980 4gb, 16gb, 1tb, 750w - Nli44284', 6387.78, '2015-05-22 00:39:27', 'http://www.americanas.com.br/produto/9310554/desktop-gamer-thor-z3-core-i5-4690-gtx980-4gb-16gb-1tb-750w-nli44284'),
(65, 'Computador Web Design 2.0 Intel I5-3330 3.0ghz, Hd 1tb, 4gb, Gt630 1gb 128bits, Linux Nli43293', 1882.95, '2015-05-22 00:39:31', 'http://www.americanas.com.br/produto/8335095/computador-web-design-2.0-intel-i5-3330-3.0ghz-hd-1tb-4gb-gt630-1gb-128bits-linux-nli43293'),
(66, 'Microcomputador Certo Pc Desempenho - Core I3 425 - I3-3250, 4gb, Hd1tb', 1339.90, '2015-05-22 00:39:35', 'http://www.americanas.com.br/produto/8276880/microcomputador-certo-pc-desempenho-core-i3-425-i3-3250-4gb-hd1tb'),
(67, 'Cadeira Executiva NFX-251 Preta - Classic Home', 219.90, '2015-05-22 00:40:05', 'http://www.americanas.com.br/produto/6834189/cadeira-executiva-nfx-251-preta-classic-home'),
(68, 'Cadeira Giratória Presidente Preta Cld-8009 Pelegrin', 289.99, '2015-05-22 00:40:10', 'http://www.americanas.com.br/produto/8318081/cadeira-giratoria-presidente-preta-cld-8009-pelegrin'),
(69, 'Cadeira Sonsuelo Branco - By Haus', 161.91, '2015-05-22 00:40:13', 'http://www.americanas.com.br/produto/122319765/cadeira-sonsuelo-branco-by-haus'),
(70, 'Conjunto de Mesa de Jantar Suiça com 4 Cadeiras Tabaco/Floral Anis - Viero Móveis', 499.90, '2015-05-22 00:40:17', 'http://www.americanas.com.br/produto/121852656/conjunto-de-mesa-de-jantar-suica-com-4-cadeiras-tabaco-floral-anis-viero-moveis'),
(71, 'Cadeira Mari Cristal Transparente - By Haus', 305.10, '2015-05-22 00:40:21', 'http://www.americanas.com.br/produto/122320029/cadeira-mari-cristal-transparente-by-haus'),
(72, 'Cadeira Umix 331 Branca em ABS -  Universal Mix', 206.10, '2015-05-22 00:40:25', 'http://www.americanas.com.br/produto/120214599/cadeira-umix-331-branca-em-abs-universal-mix'),
(73, 'Cadeira Tiffany Cristal Transparente - By Haus', 269.10, '2015-05-22 00:40:29', 'http://www.americanas.com.br/produto/122319941/cadeira-tiffany-cristal-transparente-by-haus'),
(74, 'Cadeira Stella Medalhão Policarbonato Cristal - By Haus', 323.10, '2015-05-22 00:40:32', 'http://www.americanas.com.br/produto/122319642/cadeira-stella-medalhao-policarbonato-cristal-by-haus'),
(75, 'Cadeira Eames Round Polipropilneno Branco - By Haus', 359.10, '2015-05-22 00:40:36', 'http://www.americanas.com.br/produto/122309102/cadeira-eames-round-polipropilneno-branco-by-haus'),
(76, 'Cadeira Dkr Office Em Polipropileno Com Rodízios Mobitaly - Laranja', 529.60, '2015-05-22 00:40:40', 'http://www.americanas.com.br/produto/9103738/cadeira-dkr-office-em-polipropileno-com-rodizios-mobitaly-laranja'),
(77, 'Cadeira Eiffel Madeira e Polipropileno Laranja - Rivatti', 260.10, '2015-05-22 00:40:45', 'http://www.americanas.com.br/produto/115487787/cadeira-eiffel-madeira-e-polipropileno-laranja-rivatti'),
(78, 'Cadeira Eller Polipropileno Branco - By Haus', 224.10, '2015-05-22 00:40:48', 'http://www.americanas.com.br/produto/122319466/cadeira-eller-polipropileno-branco-by-haus'),
(79, 'Cadeira Armshell Base Cromada Amarelo - By Haus', 287.10, '2015-05-22 00:40:52', 'http://www.americanas.com.br/produto/122319167/cadeira-armshell-base-cromada-amarelo-by-haus'),
(80, 'Cadeira Armshell Base Madeira Branco - By Haus', 287.10, '2015-05-22 00:40:56', 'http://www.americanas.com.br/produto/122319301/cadeira-armshell-base-madeira-branco-by-haus'),
(81, 'Cadeira Sonsuelo Azul - By Haus', 161.91, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/122319685/cadeira-sonsuelo-azul-by-haus'),
(82, 'empty', 0.00, '2015-05-22 00:39:07', 'http://www.americanas.com.br/produto/111804790/cadeira-presidente-office-vigo-11-tela-mash-preto-rivatti'),
(83, 'empty', 0.00, '2015-05-22 00:39:07', 'http://www.americanas.com.br/produto/117716125/cadeira-8006-1-pinotage-matelasse-suede-marrom-daf'),
(84, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/120214610/cadeira-umix-331-preta-em-abs-universal-mix'),
(85, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/120382912/cadeira-secretaria-umix-71-giratoria-com-base-cromada-preta-universalmix'),
(86, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/9107169/cadeira-jacobsen-com-base-em-inox-mobitaly-branca'),
(87, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/122319722/cadeira-sonsuelo-vermelho-by-haus'),
(88, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/8467177/cadeira-em-policarbonato-transparente-com-assento-branco-tiffany-umix-600-mix-u'),
(89, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/117278241/cadeira-regna-polipropileno-laranja-betili'),
(90, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/117716168/cadeira-8018-tiffany-matelasse-branco-daf'),
(91, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/111803990/cadeira-eiffel-com-braco-base-madeira-e-assento-em-polipropileno-branco-rivatti'),
(92, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/8576831/cadeira-design-amarela-yscd-001w'),
(93, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/8576839/cadeira-design-branca-giratoria-yscd-034cpb'),
(94, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/9107303/cadeira-gruvyer-em-polipropileno-highgloop-mobitaly-branca'),
(95, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/8379519/cadeira-dar-patchwork'),
(96, 'empty', 0.00, '2015-05-22 00:39:08', 'http://www.americanas.com.br/produto/9107289/cadeira-jacobsen-com-base-em-inox-mobitaly-madeira-escura'),
(97, 'empty', 0.00, '2015-05-22 00:40:59', 'http://www.americanas.com.br/produto/121852621/conjunto-de-mesa-de-jantar-suica-com-4-cadeiras-avela-suede-canela-viero-moveis'),
(98, 'empty', 0.00, '2015-05-22 00:40:59', 'http://www.americanas.com.br/produto/114321304/mesa-de-jantar-bianca-griz-78x120x77-5cm-indekes'),
(99, 'empty', 0.00, '2015-05-22 00:40:59', 'http://www.americanas.com.br/produto/121346905/mesa-de-jantar-vega-mdp-mdf-branco-madesa'),
(100, 'empty', 0.00, '2015-05-22 00:40:59', 'http://www.americanas.com.br/produto/114321283/mesa-de-jantar-bianca-acacia-78x120x77-5cm-indekes'),
(101, 'empty', 0.00, '2015-05-22 00:40:59', 'http://www.americanas.com.br/produto/121841210/conjunto-de-mesa-de-jantar-egito-com-6-cadeiras-tabaco-suede-canela-viero-moveis'),
(102, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/121346921/mesa-de-jantar-vega-mdp-mdf-imbuia-madesa'),
(103, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/8373755/mesa-atena-amarela'),
(104, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/116610898/conjunto-mesa-de-jantar-adradecor-6-cadeiras-click-floral-tabaco-floral-cafe-classic-home'),
(105, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/122769504/mesa-de-jantar-versalhes-tabaco-madesa'),
(106, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/9146104/mesa-1527-preta-carraro'),
(107, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/8306576/mesa-dobravel-falten-media'),
(108, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/8306573/mesa-dobravel-falten-pequena'),
(109, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/8539869/mesa-de-jantar-lumina-preto-1-80-x-1-00-artesano'),
(110, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/9146119/mesa-1527-amarelo-ouro-carraro'),
(111, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/122677052/mesa-de-jantar-sofia-1525-cromada-tampo-bp-25mm-nogueira-90x90cm-carraro'),
(112, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/9146070/mesa-1527-turquesa-carraro'),
(113, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/9146073/mesa-1527-branca-carraro'),
(114, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/9102128/mesa-de-jantar-felice-cinza-maxima'),
(115, 'empty', 0.00, '2015-05-22 00:41:00', 'http://www.americanas.com.br/produto/9146066/mesa-1527-vermelho-real-carraro'),
(116, 'empty', 0.00, '2015-05-22 00:41:01', 'http://www.americanas.com.br/produto/8181291/mesa-florenca-base-tampo-vidro-1-8m-lopas-imbuia-touch'),
(117, 'empty', 0.00, '2015-05-22 00:41:01', 'http://www.americanas.com.br/produto/9146114/mesa-1527-azul-noturno-carraro'),
(118, 'empty', 0.00, '2015-05-22 00:41:01', 'http://www.americanas.com.br/produto/8166419/mesa-de-jantar-novita-cacau-branco-maxima'),
(119, 'empty', 0.00, '2015-05-22 00:41:01', 'http://www.americanas.com.br/produto/8181295/mesa-florenca-base-tampo-vidro-1-8m-lopas-carvalho-touch'),
(120, 'empty', 0.00, '2015-05-22 00:41:01', 'http://www.americanas.com.br/produto/9102164/mesa-de-jantar-felice-lilas-maxima'),
(121, 'empty', 0.00, '2015-05-22 00:41:01', 'http://www.americanas.com.br/produto/9102173/mesa-de-jantar-novita-cacau-verde-limao-maxima'),
(122, 'empty', 0.00, '2015-05-22 00:41:01', 'http://www.americanas.com.br/produto/8138604/mesa-para-8-cadeiras-mj2103-cor-madeira-noce'),
(123, 'empty', 0.00, '2015-05-22 00:41:01', 'http://www.americanas.com.br/produto/9102175/mesa-de-jantar-novita-cacau-verde-musgo-maxima'),
(124, 'empty', 0.00, '2015-05-22 00:41:01', 'http://www.americanas.com.br/produto/8181581/mesa-samara-new-1-60m-lopas-imbuia-touch'),
(125, 'empty', 0.00, '2015-05-22 00:41:01', 'http://www.americanas.com.br/produto/8181600/mesa-copacabana-base-tampo-vidro-1-8m-lopas-carvalho-tuch');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
