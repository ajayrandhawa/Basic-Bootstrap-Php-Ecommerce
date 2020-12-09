-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 08:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raman`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `productid` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `productid`, `user`, `created_at`) VALUES
(28, '10', '2', '2020-12-09 18:52:32'),
(29, '11', '2', '2020-12-09 18:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `oid` varchar(50) NOT NULL,
  `ptitle` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `oid`, `ptitle`, `price`) VALUES
(1, '1', 'Casual Style ', '500'),
(2, '2', 'Casual Style ', '500');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user`, `address`, `created_at`) VALUES
(1, '2', 'ttttrtrtret', '2020-12-09 18:40:05'),
(2, '2', 'ttttrtrtret', '2020-12-09 18:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `img`, `category`, `created_at`) VALUES
(1, 'kurta', '800', 'yellow.jpg', 'Women', '2020-12-09 01:40:06'),
(2, 'Western Women Tops', '450', 'top3.jpeg', 'Women', '2020-12-09 01:40:06'),
(3, 'Patiala Suit', '1500', 'w25.jpg', 'Women', '2020-12-09 02:29:46'),
(4, 'Saree Party Wear', '2250', 'w24.jpg', 'Women', '2020-12-09 02:46:10'),
(5, 'Long Anarkali Suit ', '3000', 'w20.jpg', 'Women', '2020-12-09 02:49:43'),
(6, 'Designer Kurtis', '750', 'w19.jpg', 'Women', '2020-12-09 02:49:43'),
(7, 'White Formal Suit', '1500', 'w22.jpg', 'Women', '2020-12-09 02:52:06'),
(8, 'Lehenga Choli Set', '5000', 'w23.jpg', 'Women', '2020-12-09 02:53:40'),
(9, 'Casual Style ', '500', 'm1.jpg', 'Mens', '2020-12-09 02:56:29'),
(10, '5 Smart Formal Outfit', '1000', 'm2.jpg', 'Mens', '2020-12-09 02:58:11'),
(11, 'Wedding Formal Wear Suit', '990', 'm3.jpg', 'Mens', '2020-12-09 03:00:21'),
(12, 'Plains Casual Shirt', '450', 'm8.jpg', 'Mens', '2020-12-09 03:01:29'),
(13, 'Plain Round Neck Casual', '430', 'm9.jpg', 'Mens', '2020-12-09 03:03:33'),
(14, 'Simple Kurta Rs.700', '700', 'm4.jpg', 'Mens', '2020-12-09 03:05:17'),
(15, 'Designer Kurta', '850', 'm5.jpg', 'Mens', '2020-12-09 03:07:05'),
(16, 'Party Wear Dhoti Sherwani', '999', 'm7.jpg', 'Mens', '2020-12-09 03:08:13'),
(17, 'Gown', '800', 'kid1.jpg', 'Kids', '2020-12-09 03:09:21'),
(18, 'Short Sleeve T-shirt', '600', 'kid2.jpg', 'Kids', '2020-12-09 03:10:27'),
(19, 'Wedding Dress(Blue)', '2000', 'kid3.jpg', 'Kids', '2020-12-09 03:11:33'),
(20, 'Track Suit', '700', 'kid5.jpg', 'Kids', '2020-12-09 03:13:02'),
(21, 'Flower Girl Dress', '850', 'kid7.jpg', 'Kids', '2020-12-09 03:14:09'),
(22, 'Girls Frock(Black) ', '900', 'kid%206.jpg', 'Kids', '2020-12-09 03:15:49'),
(23, 'Black & Marron Dhoti Kurta', '1200', 'kid8.jpg', 'Kids', '2020-12-09 03:21:24'),
(24, 'Angrakha Style Jacket', '2000', 'kid9.jpg', 'Kids', '2020-12-09 03:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `created_at`) VALUES
(2, 'Rman', 'raman@gmail.com', '7986568931', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-09 06:10:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
