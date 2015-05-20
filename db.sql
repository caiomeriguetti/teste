-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2015 at 06:10 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `prices`
--

CREATE TABLE IF NOT EXISTS `prices` (
  `id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `when` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

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
(28, 6, 2099.00, '2015-05-20 18:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE IF NOT EXISTS `track` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `when` datetime NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `title`, `price`, `when`, `url`) VALUES
(1, 'HD Externo Portátil Samsung 1TB M3 Portable Preto', 265.49, '2015-05-20 18:05:23', 'http://www.americanas.com.br/produto/111656791/hd-externo-portatil-samsung-1tb-m3-portable-preto?chave=HM_REC1_VT_3&WT.mc_id=HM_REC1_VT_3&DCSext.recom=Neemu_Home_mais-vendidos-1&nm_origem=rec_home_mais-vendidos-1&nm_ranking_rec=3'),
(2, 'TV LED 49" LG 49LB5500 Full HD 2 HDMI 1 USB', 1799.10, '2015-05-20 17:29:05', 'http://www.americanas.com.br/produto/120420632/tv-led-lg-49-49lb5500-full-hd-2-hdmi-1-usb'),
(4, 'Notebook Samsung ATIV Book 2 com Intel Core i5 8GB 1TB LED 15,6'''' Windows 8.1 - Branco', 2149.00, '2015-05-20 17:39:49', 'http://www.americanas.com.br/produto/122059289/notebook-samsung-ativ-book-2-com-intel-core-i5-8gb-1tb-led-15-6-windows-8.1-branco'),
(5, 'Notebook Ultrafino Asus X550LN-BRA-DM547H Intel Core i5 6GB 500GB Tela LED 15,6" Windows 8.1 - Preto', 2499.00, '2015-05-20 18:00:46', 'http://www.americanas.com.br/produto/121935996/notebook-ultrafino-asus-x550ln-bra-dm547h-intel-core-i5-6gb-500gb-tela-led-15-6-windows-8.1-preto'),
(6, 'Notebook Dell Inspiron i14-3442-A30 com Intel Core i5 4GB 1TB LED 14" Windows 8.1', 2099.00, '2015-05-20 18:06:22', 'http://www.americanas.com.br/produto/120175770/notebook-dell-inspiron-i14-3442-a30-com-intel-core-i5-4gb-1tb-led-14-windows-8.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
