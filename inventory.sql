-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2021 at 10:12 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(45) NOT NULL,
  `c_phone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`c_id`, `c_name`, `c_phone`) VALUES
(1, 'John', '1234567890'),
(2, 'Doe', '1234567899'),
(3, 'Alice', '9988776655'),
(4, 'Bob', '9543576655');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` int(11) NOT NULL,
  `p_id` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `p_id`, `quantity`, `product_name`, `price`) VALUES
(1, 'living_1', 2, 'sofa_two_seat', 40000),
(12, 'living_2', 2, 'sofa_L_shape', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` varchar(45) NOT NULL,
  `p_name` varchar(45) NOT NULL,
  `price_per_unit` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `price_per_unit`, `quantity`) VALUES
('bed_1', 'bed', 14000, 26),
('bed_2', 'wardrobe', 15000, 27),
('bed_3', 'dressing_table', 16000, 28),
('dining_1', 'dining_table', 12000, 24),
('dining_2', 'crockery_unit', 13000, 25),
('kitchen_1', 'kitchen_island', 17000, 29),
('living_1', 'sofa_two_seat', 5000, 18),
('living_2', 'sofa_L_shape', 7000, 19),
('living_3', 'center_table_glass', 9000, 22),
('living_4', 'center_table_wood', 10000, 23),
('other_1', 'shoe_cabinet', 22000, 26),
('other_2', 'ottoman', 23000, 25),
('other_3', 'chest_of_drawers', 24000, 24),
('study_1', 'study_table', 18000, 30),
('study_2', 'computer_table', 19000, 29),
('study_3', 'bookshelf', 20000, 28),
('study_4', 'laptop_table', 21000, 27);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `empid` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`empid`, `password`, `created_at`, `email`) VALUES
(2033692, 'sudheshna', '2021-11-25 14:33:03', 'gs@ims.com'),
(2033696, 'neha', '2021-11-25 14:41:47', 'vn@ims.com'),
(2033701, 'teja', '2021-11-25 14:41:47', 'ktr@ims.com'),
(2033929, 'olisha', '2021-11-25 14:41:47', 'ok@ims.com'),
(2033978, 'kautuk', '2021-11-22 22:58:07', 'ks@ims.com'),
(2033989, 'manoj', '2021-11-25 14:41:47', 'mkp@ims.com'),
(2033999, 'sandip', '2021-11-25 14:41:47', 'ss@ims.com'),
(2034024, 'harshini', '2021-11-25 14:41:47', 'ha@ims.com'),
(2034026, 'pavan', '2021-11-25 14:41:47', 'pkrc@ims.com'),
(2034035, 'karthika', '2021-11-25 14:41:47', 'km@ims.com'),
(2034051, 'sivakavi', '2021-11-25 14:41:47', 'sb@ims.com'),
(2034203, 'mrinal', '2021-11-25 14:41:47', 'mm@ims.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`empid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
