-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2019 at 10:44 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image`) VALUES
(19, 'uploads/2a4b587529.jpg'),
(20, 'uploads/0392d056c8.jpg'),
(21, 'uploads/c00b9a2320.jpg'),
(22, 'uploads/60da996f83.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `eamil` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_role` int(2) NOT NULL DEFAULT '0',
  `account_type` varchar(255) NOT NULL,
  `user_access` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `username`, `eamil`, `password`, `user_role`, `account_type`, `user_access`) VALUES
(2, 'admin', 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 0, 'admin', 0),
(3, '', 'azad1', 'azad@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, '', 0),
(4, 'Monitors', 'azad1', 'akazad914@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, '1', 0),
(5, 'sakil', 'sakil12', 'sakil@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, '2', 0),
(6, 'sakil', 'sakil', 'sakil@gmail.com', 'd6cbb48444bf8cf4e6460eebceaefce1', 1, '2', 0),
(7, 'sakil', 'admin', 'sakil@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '1', 0),
(8, 'sakil', 'a', 'sakil@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 0, '0', 0),
(9, 'sakil', 'sakil12', 'sas@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id`, `brand_name`, `status`) VALUES
(1, 'HP', NULL),
(2, 'Accer', 0),
(3, 'Dell', 1),
(4, 'Logitech', 0),
(5, 'TP-Link', 0),
(6, 'Samsung', 0),
(7, 'Lenovo', 0),
(8, 'Microlab', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sessionId` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float(10,3) NOT NULL,
  `qty` int(11) NOT NULL,
  `subTotal_price` float(10,3) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sessionId`, `product_id`, `product_name`, `price`, `qty`, `subTotal_price`, `image`) VALUES
(25, '209hdm43sek3imjr4030prpo2c', 'BI.9498', 'speaker', 220.000, 6, 0.000, 'uploads/48dd3c3fee.jpg'),
(26, '209hdm43sek3imjr4030prpo2c', 'BI.9995', 'Microlab M-105R 2.1 multimedia speaker', 120.000, 4, 0.000, 'uploads/92f67e7f8f.jpg'),
(27, '209hdm43sek3imjr4030prpo2c', 'BI.7529', 'Microlab M-105R 2.1 multimedia speaker', 148.000, 2, 0.000, 'uploads/5f15f4c2c5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `cat_name`, `status`) VALUES
(1, 'Ram', 0),
(2, 'Laptop', 1),
(9, 'Mouse', 1),
(10, 'Phone', 1),
(17, 'Acer', NULL),
(25, 'I-phone', NULL),
(26, 'Monitor', NULL),
(27, 'Headphone', NULL),
(28, 'Keyboard', NULL),
(29, 'Router', NULL),
(30, 'Ram', NULL),
(31, 'Speaker', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `cat` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `tages` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `available_status` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `cat`, `brandId`, `product_id`, `product_name`, `price`, `description`, `image`, `tages`, `status`, `available_status`) VALUES
(77, 31, 1, 'BI.9498', 'speaker', '220', '<p>DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription</p>\r\n', 'uploads/48dd3c3fee.jpg', 'd', 0, 0),
(78, 31, 8, 'BI.9995', 'Microlab M-105R 2.1 multimedia speaker', '120', 'description', 'uploads/92f67e7f8f.jpg', 'a', 0, 0),
(79, 29, 5, 'BI.2645', 'Tp-Link TL-WR820N 300Mbps', '140', 'desctip;tion', 'uploads/4d09940b6a.jpg', 'q', 0, 0),
(80, 31, 8, 'BI.7529', 'Microlab M-105R 2.1 multimedia speaker', '148', 'descripton', 'uploads/5f15f4c2c5.jpg', 'a', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product2`
--

CREATE TABLE `tbl_product2` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `sort_description` varchar(255) NOT NULL,
  `specifications` varchar(255) NOT NULL,
  `availability` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product2`
--

INSERT INTO `tbl_product2` (`id`, `product_id`, `image1`, `image2`, `image3`, `sort_description`, `specifications`, `availability`) VALUES
(21, 'BI.9498', 'images1/48dd3c3fee.jpg', 'images2/48dd3c3fee.jpg', 'images3/48dd3c3fee.png', '<p>22” class screen full LED TV22” class screen full LED TV22” class screen full LED TV22” class screen full LED TV</p>\r\n', '<p>f</p>\r\n', 0),
(22, 'BI.9995', 'images1/92f67e7f8f.jpg', 'images2/92f67e7f8f.jpg', 'images3/92f67e7f8f.jpg', '22” class screen full LED TV\r\n22? class screen full LED TV22? class screen full LED TV22? class screen full LED TV22? class screen full LED TV', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>jack</td>\r\n			<td>3.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Subwoofer</td>\r\n			<td>5Watt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Signal / noise ratio</td>\r\n			<td>&gt; 70dB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fr', 0),
(23, 'BI.2645', 'images1/4d09940b6a.jpg', 'images2/4d09940b6a.jpg', 'images3/4d09940b6a.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Price</td>\r\n			<td>1,100à§³</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Regular Price</td>\r\n			<td>1,100à§³</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Status</td>\r\n			<td>In Stock</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Code</td>\r\n			<td>10227</td>\r\n', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Data Rate</td>\r\n			<td>Up to 300Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Antenna</td>\r\n			<td>2 Fixed 5dBi Omni Directional Antennas</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Button</td>\r\n			<td>WPS/Reset Bu', 0),
(24, 'BI.7529', 'images1/5f15f4c2c5.jpg', 'images2/5f15f4c2c5.jpg', 'images3/5f15f4c2c5.jpg', '<p>Price1,700à§³</p>\r\n\r\n<p>Regular Price1,820à§³</p>\r\n\r\n<p>StatusIn StockProduct</p>\r\n\r\n<p>Code8068BrandMicrolab</p>\r\n', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>jack</td>\r\n			<td>3.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Subwoofer</td>\r\n			<td>5Watt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Signal / noise ratio</td>\r\n			<td>&gt; 70dB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fr', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `catIds` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `catIds`, `brandId`, `name`, `email`, `age`) VALUES
(1, 1, 1, 'azad', '', 0),
(2, 1, 1, 'samsung', '', 0),
(3, 25, 3, 'aa', '', 0),
(4, NULL, NULL, '', '', 0),
(5, NULL, NULL, '', '', 0),
(6, NULL, NULL, 'test', 'test@gmail.com', 25),
(7, NULL, NULL, 'sakil', 'sakil@gmail.com', 35),
(8, NULL, NULL, 'Md. Mehedi', 'mehedi@gmail.com', 36),
(9, NULL, NULL, 'aa', 'azad.cse914a@gmail.com', 0),
(10, NULL, NULL, 'hosen', 'hosen@gmail.com', 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brandId` (`brandId`),
  ADD KEY `cat` (`cat`);

--
-- Indexes for table `tbl_product2`
--
ALTER TABLE `tbl_product2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catIds` (`catIds`),
  ADD KEY `brandId` (`brandId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_product2`
--
ALTER TABLE `tbl_product2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `cat` FOREIGN KEY (`cat`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`cat`) REFERENCES `tbl_category` (`catId`),
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`id`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`catIds`) REFERENCES `tbl_category` (`catId`),
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
