-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2019 at 10:06 AM
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
  `username` varchar(255) DEFAULT NULL,
  `eamil` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `eamil`, `password`) VALUES
(2, 'admin', NULL, '21232f297a57a5a743894a0e4a801fc3');

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
(5, 'TP-Link', 0);

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
(1, 'Samsung', 0),
(2, 'Laptop', 1),
(9, 'Mouse', 1),
(10, 'Phone', 1),
(17, 'Acer', NULL),
(25, 'I-phone', NULL),
(26, 'Monitor', NULL),
(27, 'Headphone', NULL),
(28, 'Keyboard', NULL),
(29, 'Router', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `cat` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `tages` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `cat`, `brandId`, `product_name`, `price`, `description`, `image`, `tages`, `status`) VALUES
(47, 27, 4, 'Headphone-x414', '', '<p>yhrty</p>\r\n', 'uploads/6c7e5f4629.jpg', '', 0),
(48, 28, 4, 'Headphone-x414', NULL, NULL, 'uploads/797f7b1823.jpg', NULL, 0),
(49, 27, 3, 'router', NULL, NULL, 'uploads/de35073e62.jpg', NULL, 0),
(50, 28, 4, NULL, NULL, NULL, 'uploads/327118506b.png', NULL, 0),
(53, 27, 4, 'Headphone-y414', '', '', 'uploads/0488bca86c.jpeg', '', 0),
(54, 29, 5, 'TP-Link_514', '124', '<p>Learn with programming.Learn with programming.Learn with programming.Learn with programming.Learn with programming.Learn with programming.Learn with programming.</p>\r\n', 'uploads/8dae68be8e.jpg', '', 0),
(55, 2, 1, 'HP-elitebook 840', '150', '<p>HP-elitebook 840&nbsp;HP-elitebook 840&nbsp;HP-elitebook 840HP-elitebook 840HP-elitebook 840HP-elitebook 840HP-elitebook 840HP-elitebook 840HP-elitebook 840HP-elitebook 840</p>\r\n', 'uploads/f7ba0410ac.jpg', NULL, 0),
(56, 2, 3, 'Dell Inspiron 15-3573 Celeron Dual Core Laptop', '125', '<p>Dell Inspiron 15-3573 Celeron Dual Core LaptopDell Inspiron 15-3573 Celeron Dual Core LaptopDell Inspiron 15-3573 Celeron Dual Core LaptopDell Inspiron 15-3573 Celeron Dual Core LaptopDell Inspiron 15-3573 Celeron Dual Core Laptop</p>\r\n', 'uploads/629df483a3.jpg', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `catIds` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `catIds`, `brandId`, `name`) VALUES
(1, 1, 1, 'azad'),
(2, 1, 1, 'samsung'),
(3, 25, 3, 'aa');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
