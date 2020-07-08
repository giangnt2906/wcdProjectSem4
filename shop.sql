-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 08, 2020 at 05:34 AM
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
(17, 'Iphone ', 'Trung Quoc');

-- --------------------------------------------------------

--
-- Table structure for table `gender_table`
--

CREATE TABLE `gender_table` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gender_table`
--

INSERT INTO `gender_table` (`id`, `name`) VALUES
(1, 'MALE'),
(2, 'FEMALE');

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
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `quantity`, `price`, `categoryId`, `image_url`) VALUES
(25, 'Iphone Xmas', 10, 1000, 3, ',https://res.cloudinary.com/debutwyfp/image/upload/v1594185253/thumb_11-ProMAX_2-1_gddpqc.jpg,https://res.cloudinary.com/debutwyfp/image/upload/v1594185253/iphone-xr-64gb-quoc-te-moi-95-99_nwqts2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles_table`
--

CREATE TABLE `roles_table` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_table`
--

INSERT INTO `roles_table` (`id`, `name`) VALUES
(1, 'MANAGER'),
(2, 'EMPLOYEE');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `gender` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `username`, `gender`, `password`, `roles`) VALUES
(1, 'employee1', 'MALE', '123', 'EMPLOYEE'),
(2, 'manager2', 'FEMALE', '1234', 'MANAGER'),
(5, 'giangnt@gmail', 'MALE', 'abcd', 'MANAGER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender_table`
--
ALTER TABLE `gender_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_table`
--
ALTER TABLE `roles_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `gender_table`
--
ALTER TABLE `gender_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `roles_table`
--
ALTER TABLE `roles_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
