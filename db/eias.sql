-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 03:22 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eias`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_item`
--

CREATE TABLE `tbl_add_item` (
  `item_add_id` int(11) NOT NULL,
  `borrow_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_add_item`
--

INSERT INTO `tbl_add_item` (`item_add_id`, `borrow_quantity`, `user_id`, `item_id`, `status`, `update_date`, `timestamp`) VALUES
(39, 1, 9, 21, 2, '2021-07-29 02:08:49', '2021-07-29 02:06:33'),
(40, 1, 9, 23, 3, '2021-07-29 02:09:32', '2021-07-29 02:06:56'),
(42, 1, 9, 20, 5, '2021-07-29 02:11:01', '2021-07-29 02:11:01'),
(43, 1, 9, 21, 1, '2021-08-06 13:16:10', '2021-08-06 11:20:00'),
(44, 1, 9, 21, 0, '2021-08-06 13:16:22', '2021-08-06 13:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands`
--

CREATE TABLE `tbl_brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_desciption` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brands`
--

INSERT INTO `tbl_brands` (`brand_id`, `brand_name`, `brand_desciption`, `timestamp`) VALUES
(4, 'A4tech', 'test', '2021-06-24 08:55:16'),
(3, 'Dell', '', '2021-06-24 08:55:14'),
(5, 'Asus', '', '2021-06-24 08:55:18'),
(6, 'Apple', '', '2021-07-05 00:52:21'),
(7, 'A4technical', '', '2021-07-11 09:13:01'),
(8, 'Razer', '', '2021-07-29 01:51:45'),
(9, 'Fujitsu', '', '2021-07-29 01:51:48'),
(10, 'HP', '', '2021-07-29 01:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `timestamp`) VALUES
(4, 'Keyboard', '', '2021-06-24 08:54:51'),
(3, 'HDMI', '', '2021-06-24 08:54:49'),
(5, 'Mouse', '', '2021-06-24 08:54:53'),
(7, 'Switch', '', '2021-06-24 08:54:58'),
(54, 'Monitor', '', '2021-07-05 00:53:17'),
(56, 'AVR', '', '2021-07-28 20:41:16'),
(57, 'VGA', '', '2021-07-28 20:43:47'),
(58, 'Microphones', '', '2021-07-28 20:44:07'),
(59, 'Headphones', '', '2021-07-28 20:44:18'),
(60, 'Printer', '', '2021-07-28 20:44:23'),
(61, 'Projector', '', '2021-07-28 20:44:28'),
(62, 'Speaker', '', '2021-07-28 20:44:33'),
(63, 'Flash Drive', '', '2021-07-28 20:44:42'),
(64, 'HUB', '', '2021-07-28 20:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `item_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_status` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`item_id`, `supplier_id`, `brand_id`, `category_id`, `item_name`, `item_description`, `location_id`, `item_quantity`, `item_status`, `timestamp`) VALUES
(22, 4, 3, 57, 'A4tech007', 'n/a', 8, 5, 2, '2021-07-28 20:57:47'),
(20, 6, 4, 54, 'A4tech005', '', 1, 5, 1, '2021-07-28 20:53:20'),
(21, 5, 3, 54, 'A4tech006', '', 6, 2, 2, '2021-07-28 20:55:06'),
(19, 6, 4, 7, 'A4tech004', '', 1, 5, 1, '2021-07-28 20:53:01'),
(16, 6, 4, 5, 'A4tech003', '', 1, 5, 1, '2021-07-28 20:50:04'),
(15, 6, 4, 3, 'A4tech002', '', 1, 5, 1, '2021-07-28 20:49:39'),
(14, 6, 4, 4, 'A4tech001', '', 1, 5, 1, '2021-07-28 20:48:13'),
(23, 5, 5, 58, 'A4tech008', '', 5, 4, 1, '2021-07-28 20:58:25'),
(24, 4, 5, 59, 'A4tech009', '', 8, 5, 2, '2021-07-28 20:58:47'),
(25, 4, 5, 59, 'A4tech0010', '', 7, 5, 1, '2021-07-28 20:59:52'),
(26, 5, 3, 60, 'A4tech0011', '', 5, 1, 1, '2021-07-28 21:00:25'),
(27, 6, 5, 59, 'A4tech0012', '', 7, 5, 2, '2021-07-28 21:01:04'),
(28, 5, 4, 54, 'A4tech007', '', 1, 5, 1, '2021-07-28 21:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `location_description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`location_id`, `location_name`, `location_description`, `timestamp`) VALUES
(1, 'DOST Lab', 'DOST Laboratory', '2021-06-23 15:36:01'),
(2, 'Abotiz Labs', 'Computer Laboratory', '2021-06-24 08:55:48'),
(5, 'Multimedia Room', '', '2021-07-28 20:42:42'),
(6, 'Alumni Hall', '', '2021-07-28 20:42:51'),
(7, 'Faculty Office', '', '2021-07-28 20:43:04'),
(8, 'Directors Office', '', '2021-07-28 20:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `Activities` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`log_id`, `user_id`, `item_id`, `Activities`, `timestamp`) VALUES
(26, 1, 30, 'Approved Borrow Request', '2021-07-21 07:27:29'),
(27, 1, 30, 'Approved Borrow Request', '2021-07-21 07:29:25'),
(28, 1, 30, 'Approved Borrow Request', '2021-07-21 07:30:12'),
(29, 1, 30, 'Approved Borrow Request', '2021-07-21 08:36:17'),
(30, 1, 30, 'Denied Borrow Request', '2021-07-21 16:30:04'),
(31, 1, 30, 'Approved Borrow Request', '2021-07-21 16:30:55'),
(32, 1, 29, 'Approved Borrow Request', '2021-07-26 05:20:08'),
(33, 1, 31, 'Approved Borrow Request', '2021-07-26 05:22:43'),
(34, 1, 39, 'Approved Borrow Request', '2021-07-29 02:08:49'),
(35, 1, 40, 'Denied Borrow Request', '2021-07-29 02:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_returned_item`
--

CREATE TABLE `tbl_returned_item` (
  `return_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `return_quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `received_name` varchar(255) NOT NULL,
  `borrower_id` int(11) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_returned_item`
--

INSERT INTO `tbl_returned_item` (`return_id`, `item_id`, `return_quantity`, `status`, `received_name`, `borrower_id`, `remarks`, `timestamp`) VALUES
(1, 5, 2, 2, '1', 1, 'test', '2021-07-28 14:44:51'),
(2, 20, 1, 3, '1', 9, 'nasira wire nung item', '2021-07-29 02:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_name`, `timestamp`) VALUES
(1, 'Admin', '2021-06-22 15:48:58'),
(2, 'Student', '2021-06-22 15:48:58'),
(3, 'Teacher', '2021-06-22 15:49:35'),
(4, 'Visitor', '2021-06-22 15:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_address` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`supplier_id`, `supplier_name`, `supplier_address`, `timestamp`) VALUES
(5, 'PUPT-ALUMNI', '', '2021-07-05 00:52:31'),
(4, 'PUP-Main', '', '2021-06-24 08:55:38'),
(6, 'PUP-TAGUIG', '', '2021-07-11 09:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `age` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `firstname`, `lastname`, `age`, `email`, `username`, `password`, `role_id`, `timestamp`) VALUES
(1, 'Ronilo', 'Lim', '100', 'eiassystem2021@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '2021-06-22 08:11:14'),
(9, 'Erjohn', 'Espuerta', '22', 'erjohn13@gmail.com', 'erjohn', '26cb07db9ce109d9c53ebab945df02a9', 2, '2021-07-29 01:52:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_add_item`
--
ALTER TABLE `tbl_add_item`
  ADD PRIMARY KEY (`item_add_id`);

--
-- Indexes for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_returned_item`
--
ALTER TABLE `tbl_returned_item`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_add_item`
--
ALTER TABLE `tbl_add_item`
  MODIFY `item_add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_returned_item`
--
ALTER TABLE `tbl_returned_item`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
