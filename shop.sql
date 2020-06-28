-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 28, 2020 at 10:41 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(2, 'Samsung', 'San pham Han Quoc'),
(3, 'Xiao Mi', 'Trung Quoc'),
(5, 'HTC', 'HTC product'),
(6, 'Asus', 'Asus Company'),
(7, 'Nokia', 'San pham nokia'),
(8, 'Blackberry', 'Best security'),
(9, 'Huawei', 'Trung Quoc'),
(10, 'Dell', 'Con hang My'),
(11, 'LG', 'San pham HQ'),
(12, 'Oppo', 'Trung Quoc'),
(13, 'Acer', 'San pham China'),
(16, 'Cat 2', 'Test 5'),
(17, 'Apple', 'San pham cua Steve');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `categoryName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `quantity`, `price`, `categoryId`, `categoryName`) VALUES
(1, 'Iphone 12', 20, 800, 2, NULL),
(3, 'Oppo 5', 26, 700, 6, NULL),
(4, 'Iphone 4', 20, 200, 1, NULL),
(6, 'Iphone 13', 200, 1300, 3, NULL),
(8, 'Samsung T5', 20, 1000, 1, NULL),
(9, 'Samsung G3', 40, 5000, 3, NULL),
(10, 'Nokia 6789', 80, 400, 4, NULL),
(11, 'Edited Samsung J7', 666, 999, 9, NULL),
(16, 'Iphone Xmas', 100, 100000, 1, NULL),
(17, 'Thunderbird 2.0', 109, 969, 5, NULL),
(19, 'Iphone Xmas', 109, 1000, 17, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
