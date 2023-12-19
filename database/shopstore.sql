-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 11:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'member',
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `username`, `password`, `type`, `customer_id`) VALUES
(1, 'ball', '123456', 'admin', 1),
(2, 'admin', '123456', 'admin', 2),
(4, 'member', '123456', 'member', 4),
(5, 'test', '123456', 'member', 5),
(6, 'mhee', '123456', 'admin', 6);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `email`, `firstname`, `lastname`, `phonenumber`, `address`) VALUES
(1, 'jaturongsarak.b@gmail.com', 'จาตุรงค์', 'สารักษ์', '0972979274', 'กรุงเทพมหานครfghdfhd'),
(2, 'admin@gmail.com', 'admin1', 'admin1', '0987654321', 'เชียงใหม่'),
(4, 'member@gmail.com', 'member1', 'member1', '0987654321', 'ตรัง'),
(5, 'test@gmail.com', 'test1', 'test1', '0123456789', 'นนทบุรี'),
(6, 'mhee@gmail.com', 'mhee', 'iu', '0929049256', 'ปทุมธานี');

-- --------------------------------------------------------

--
-- Table structure for table `logs_admin`
--

CREATE TABLE `logs_admin` (
  `log_admin_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `accounts_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_admin`
--

INSERT INTO `logs_admin` (`log_admin_id`, `time`, `accounts_id`) VALUES
(1, '2023-08-19 09:59:29', 1),
(2, '2023-08-19 10:04:31', 1),
(3, '2023-08-19 10:08:39', 1),
(4, '2023-08-19 10:18:31', 1),
(5, '2023-08-19 10:22:02', 1),
(6, '2023-08-19 10:34:29', 1),
(7, '2023-08-19 10:37:52', 1),
(8, '2023-08-19 10:37:58', 1),
(9, '2023-08-19 10:39:49', 1),
(10, '2023-08-19 10:50:15', 1),
(11, '2023-08-19 10:58:56', 1),
(12, '2023-08-19 11:34:26', 1),
(13, '2023-08-19 11:39:02', 1),
(14, '2023-08-19 11:50:51', 1),
(15, '2023-08-19 11:52:51', 1),
(16, '2023-08-19 11:57:10', 1),
(17, '2023-08-19 11:57:27', 1),
(18, '2023-08-19 11:57:30', 1),
(19, '2023-08-19 12:01:48', 1),
(20, '2023-08-19 12:09:32', 1),
(21, '2023-08-19 12:21:07', 1),
(22, '2023-08-19 12:21:47', 1),
(23, '2023-08-19 12:40:18', 1),
(24, '2023-08-19 13:31:46', 1),
(25, '2023-08-19 13:53:54', 1),
(26, '2023-08-19 14:11:07', 1),
(27, '2023-08-19 14:22:07', 1),
(28, '2023-08-19 14:26:15', 1),
(29, '2023-08-19 14:31:33', 1),
(30, '2023-08-19 14:42:01', 1),
(31, '2023-08-19 14:42:08', 1),
(32, '2023-08-19 14:47:23', 1),
(33, '2023-08-19 15:02:08', 1),
(34, '2023-08-19 15:03:53', 1),
(35, '2023-08-19 15:05:09', 1),
(36, '2023-08-19 15:05:31', 1),
(37, '2023-08-19 15:06:43', 1),
(38, '2023-08-19 15:07:48', 1),
(39, '2023-08-19 15:12:43', 1),
(40, '2023-08-19 15:14:05', 1),
(41, '2023-08-19 15:17:34', 1),
(42, '2023-08-19 15:19:31', 1),
(43, '2023-08-19 15:21:37', 1),
(44, '2023-08-19 15:26:40', 1),
(45, '2023-08-19 15:59:21', 1),
(46, '2023-08-19 15:59:41', 1),
(47, '2023-08-19 16:07:20', 1),
(48, '2023-08-19 16:12:05', 1),
(49, '2023-08-19 16:12:14', 1),
(50, '2023-08-19 16:13:44', 1),
(51, '2023-08-19 16:16:49', 1),
(52, '2023-08-19 16:20:34', 1),
(53, '2023-08-19 16:34:54', 1),
(54, '2023-08-19 16:38:52', 1),
(55, '2023-08-19 23:46:39', 1),
(56, '2023-08-19 23:50:56', 1),
(57, '2023-08-20 00:19:23', 1),
(58, '2023-08-20 00:37:09', 1),
(59, '2023-08-20 00:45:39', 1),
(60, '2023-08-20 00:51:32', 1),
(61, '2023-08-20 01:41:01', 1),
(62, '2023-08-20 01:42:05', 1),
(63, '2023-08-20 01:42:29', 1),
(64, '2023-08-20 01:46:00', 1),
(65, '2023-08-20 01:48:05', 1),
(66, '2023-08-20 01:50:42', 1),
(67, '2023-08-20 01:52:57', 1),
(68, '2023-08-20 01:53:17', 1),
(69, '2023-08-20 01:56:50', 1),
(70, '2023-08-20 01:57:11', 1),
(71, '2023-08-20 01:59:21', 1),
(72, '2023-08-20 02:02:28', 1),
(73, '2023-08-20 02:22:53', 1),
(74, '2023-08-20 02:44:53', 1),
(75, '2023-08-20 03:11:36', 1),
(76, '2023-08-20 03:16:51', 1),
(77, '2023-08-20 03:18:01', 1),
(78, '2023-08-20 03:20:02', 1),
(79, '2023-08-20 03:23:12', 1),
(80, '2023-08-20 03:26:26', 1),
(81, '2023-08-20 03:29:15', 1),
(82, '2023-08-20 03:31:01', 1),
(83, '2023-08-20 03:34:53', 1),
(84, '2023-08-20 04:30:22', 1),
(85, '2023-08-20 04:47:24', 1),
(86, '2023-08-20 04:50:07', 1),
(87, '2023-08-20 04:52:38', 1),
(88, '2023-08-20 05:03:42', 1),
(89, '2023-08-20 05:07:42', 1),
(90, '2023-08-20 05:08:53', 1),
(91, '2023-08-20 05:10:53', 1),
(92, '2023-08-20 05:13:25', 2),
(93, '2023-08-20 05:51:30', 1),
(94, '2023-08-20 06:01:27', 1),
(95, '2023-08-20 06:03:26', 2),
(96, '2023-08-20 07:44:33', 1),
(97, '2023-08-20 07:57:48', 1),
(98, '2023-08-20 08:01:15', 1),
(99, '2023-08-20 08:03:21', 1),
(100, '2023-08-20 08:14:29', 1),
(101, '2023-08-20 08:24:01', 1),
(102, '2023-08-20 08:25:56', 1),
(103, '2023-08-20 08:29:16', 1),
(104, '2023-08-20 08:31:01', 1),
(105, '2023-08-20 08:40:16', 2),
(106, '2023-08-21 09:24:35', 2),
(107, '2023-08-22 07:07:49', 1),
(108, '2023-08-23 00:20:12', 2),
(109, '2023-08-23 01:36:24', 2),
(110, '2023-08-23 03:46:26', 2),
(111, '2023-08-23 06:29:26', 2),
(112, '2023-08-23 06:32:05', 2),
(113, '2023-08-23 07:21:42', 2),
(114, '2023-08-23 08:08:55', 2),
(115, '2023-08-23 08:15:26', 2),
(116, '2023-08-23 08:16:04', 6),
(117, '2023-09-19 15:11:03', 2),
(118, '2023-09-26 12:48:00', 2),
(119, '2023-09-26 12:48:19', 2),
(120, '2023-10-18 02:44:40', 2),
(121, '2023-10-18 02:53:06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `products_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sub_total_price` double NOT NULL,
  `total_all` int(11) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`products_id`, `customer_id`, `quantity`, `sub_total_price`, `total_all`, `order_date`) VALUES
(1, 4, 1, 9990, 19180, '2023-10-18 09:47:12'),
(2, 4, 1, 7600, 19180, '2023-10-18 09:47:12'),
(8, 4, 1, 1590, 19180, '2023-10-18 09:47:12'),
(1, 4, 1, 9990, 27680, '2023-10-18 09:49:13'),
(12, 4, 1, 15900, 27680, '2023-10-18 09:49:13'),
(13, 4, 1, 1790, 27680, '2023-10-18 09:49:13'),
(1, 4, 2, 19980, 21950, '2023-10-18 09:50:50'),
(11, 4, 1, 790, 21950, '2023-10-18 09:50:50'),
(14, 4, 2, 1180, 21950, '2023-10-18 09:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `totalall` int(11) NOT NULL,
  `payname` varchar(50) NOT NULL,
  `slippayment` varchar(50) NOT NULL,
  `payaddress` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `paytel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `totalall`, `payname`, `slippayment`, `payaddress`, `customer_id`, `paytel`) VALUES
(1, 9990, 'admin', 'ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg', 'bkk', 4, '0972979274'),
(2, 9190, 'asfas', 'profile.png', 'fasgf', 4, 'asgas'),
(4, 9190, 'asfasassf', 'profile.png', 'fasgf', 4, 'asgas'),
(6, 17590, 'df', 'profile.png', 'dhfh', 4, 'hdfh'),
(7, 19180, 'Jaturong', 'download.jpg', 'Sarak', 4, '0972979274'),
(8, 27680, 'dfgh', 'profile.png', 'dfh', 4, 'dhdf'),
(9, 21950, 'Jaturong', 'profile.png', 'Sarak', 4, '0972979274');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `image`, `name`, `detail`, `price`, `stock`) VALUES
(1, 'https://www.jib.co.th/img_master/product/original/2021070114335747470_1.jpg', 'GALAX GEFORCE RTX 3060 (1-CLICK OC) - 12GB GDDR6 (LHR)', 'GeForce RTX 3060\r\n• 12GB GDDR6\r\n• 3 x DP\r\n• 1 x HDMI', 9990, 11),
(2, 'https://www.jib.co.th/img_master/product/original/2023011114211557299_1.jpg', 'AMD RYZEN 5 7600 3.8 GHz (SOCKET AM5)', '• 6 Cores\n• 12 Threads\n• AMD Radeon Graphics\n• PCIe 5.0\n• Compatible with X670E, X670, B650E, B6', 7600, 0),
(8, 'https://www.jib.co.th/img_master/product/original/2021070209025247472_2.jpg', 'KINGSTON NV1 - PCIe 3/NVMe M.2 2280 (SNVS/500G)', '• 500 GB\r\n• Up to 2,100 MB/s Sequential Read Speed\r\n• Up to 1,700 MB/s Sequential Write Speed', 1590, 183),
(11, 'https://www.jib.co.th/img_master/product/original/2021082715462630959_1.jpg', 'RAZER DEATHADDER ESSENTIAL (BLACK)', '• DPI : 6,400\r\n• Button : 5\r\n• Lighting : Green Color\r\n• Connectivity : USB (Wired)', 790, 19),
(12, 'https://www.jib.co.th/img_master/product/original/20230519160934_31321_287_3.jpg', 'GAMING CHAIR (เก้าอี้เกมมิ่ง) ANDA SEAT KAISER SERIES', '(AD12XL-02-AB-PV/C) (MAROON-BLACK)', 15900, 1),
(13, 'https://www.jib.co.th/img_master/product/original/20180731095054_27624_24_3.png', 'POWER SUPPLY (อุปกรณ์จ่ายไฟ) AEROCOOL AE-650W - 650W 80 PLUS (BLACK) (ATX)', '• 650 Watt\r\n• 80 Plus\r\n• NON Modular\r\n• ATX', 1790, 11),
(14, 'https://www.jib.co.th/img_master/product/original/2019081509470534791_1.jpg', 'CPU AIR COOLER (พัดลมซีพียู) THERMALTAKE UX100 ARGB', '• Dimensions Height x Width x Depth (mm) : 122.3 x 122.3 x 66.1\r\n• TDP (W) : 65 w', 590, 38),
(15, 'https://www.jib.co.th/img_master/product/original/2022102513431055934_1.jpg', 'MAINBOARD (เมนบอร์ด) ASUS ROG STRIX Z790-F GAMING WIFI (SOCKET LGA 1700) (ATX)', '• Socket LGA1700 for 13th & 12th Gen Intel Processors\r\n• 4 x DIMM DDR5\r\n• 1 x DisplayPort / 1 x HDMI', 7000, 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `customer_id_fk` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `logs_admin`
--
ALTER TABLE `logs_admin`
  ADD PRIMARY KEY (`log_admin_id`),
  ADD KEY `accounts_id_fk` (`accounts_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_id_fk` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `logs_admin`
--
ALTER TABLE `logs_admin`
  MODIFY `log_admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `logs_admin`
--
ALTER TABLE `logs_admin`
  ADD CONSTRAINT `accounts_id_fk` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`account_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `products_id` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payment_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
