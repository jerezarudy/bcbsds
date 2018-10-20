-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2018 at 06:11 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangay`
--

CREATE TABLE `barangay` (
  `brgy_id` int(11) NOT NULL,
  `brgy_name` varchar(50) NOT NULL,
  `brgy_num` int(11) NOT NULL,
  `brgy_uname` varchar(50) NOT NULL,
  `brgy_pword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangay`
--

INSERT INTO `barangay` (`brgy_id`, `brgy_name`, `brgy_num`, `brgy_uname`, `brgy_pword`) VALUES
(1, 'barangay32', 32, 'barangay32', 'barangay32');

-- --------------------------------------------------------

--
-- Table structure for table `category_services`
--

CREATE TABLE `category_services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_services`
--

INSERT INTO `category_services` (`id`, `service_name`) VALUES
(1, 'Gardening'),
(2, 'Carpentry');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `account_log` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `brgy_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `userpass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`account_log`, `user_id`, `brgy_id`, `username`, `userpass`) VALUES
(1, 1, 1, 'myname', 'mypass');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `brgy_id` int(11) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `m_name` varchar(30) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `birthdate` varchar(30) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `brgy_id`, `l_name`, `f_name`, `m_name`, `phone_number`, `sex`, `user_address`, `birthdate`, `user_image`) VALUES
(1, 1, 'castillo', 'jehiel', 'banas', '+639486502348', 'male', 'my address', '1998-23-11', 'img/logo b.png'),
(2, 2, 'a', 'a', 'a', '09123456789', 'male', 'my another address', '2000-21-10', 'img/logo b.png'),
(3, 1, 'Jereza', 'Rudy', 'Juarez', '+639563148628', 'Male', 'brgy tiwala', '1993-11-08', './residentimages/team7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hiring_log`
--

CREATE TABLE `hiring_log` (
  `trans_id` int(11) NOT NULL,
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `service_provider` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `date_accepted` date NOT NULL DEFAULT '0000-00-00',
  `date_ended` date NOT NULL DEFAULT '0000-00-00',
  `trans_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hiring_log`
--

INSERT INTO `hiring_log` (`trans_id`, `trans_date`, `service_provider`, `customer`, `service_id`, `date_accepted`, `date_ended`, `trans_status`) VALUES
(23, '2018-02-20 03:37:56', 1, 3, 1, '2018-10-21', '2018-10-14', 'Canceled'),
(24, '2018-03-03 03:47:22', 1, 3, 1, '2018-04-10', '2018-04-12', 'Finished'),
(25, '2018-10-20 04:00:38', 1, 3, 1, '2018-10-22', '2018-10-24', 'Pending'),
(26, '2018-10-20 04:03:03', 1, 3, 1, '2018-10-25', '2018-10-27', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sender_brgy_id` int(11) NOT NULL,
  `msg_dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msg_content` text NOT NULL,
  `msg_type` varchar(30) NOT NULL,
  `msg_sender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `sender_id`, `sender_brgy_id`, `msg_dateTime`, `msg_content`, `msg_type`, `msg_sender`) VALUES
(9, 1, 1, '2018-10-19 12:20:30', 'ASDASD', 'sent', 'user'),
(10, 1, 1, '2018-10-19 12:20:39', 'message from server', 'recieved', 'sender'),
(11, 1, 1, '2018-10-19 12:20:42', 'this is new message', 'recieved', 'sender'),
(12, 1, 1, '2018-10-19 12:20:35', 'asd', 'sent', 'user'),
(13, 1, 1, '2018-10-19 12:21:49', 'asd', 'sent', 'user'),
(14, 1, 1, '2018-10-19 12:21:55', 'asddd', 'sent', 'user'),
(15, 1, 1, '2018-10-19 12:24:21', 'this is new mysasdasdasd', 'recieved', 'server');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rate_id` int(11) NOT NULL,
  `service_provider` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `service` varchar(100) NOT NULL,
  `rate` int(11) NOT NULL,
  `rating_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`rate_id`, `service_provider`, `customer`, `service`, `rate`, `rating_date`) VALUES
(1, 4, 0, '', 5, '2018-10-20 01:07:23.862506'),
(2, 4, 1, '', 5, '2018-10-20 01:07:50.713154'),
(3, 4, 1, '', 5, '2018-10-20 01:09:04.445642');

-- --------------------------------------------------------

--
-- Table structure for table `s_provider`
--

CREATE TABLE `s_provider` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `work_rate` float NOT NULL,
  `service` text NOT NULL,
  `gen_rate` float NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_provider`
--

INSERT INTO `s_provider` (`id`, `userid`, `work_rate`, `service`, `gen_rate`, `status`) VALUES
(1, 1, 1000, '1', 5, 'Available'),
(2, 2, 1000, '2', 4, 'Available'),
(3, 3, 500, '2', 0, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `verficationcode`
--

CREATE TABLE `verficationcode` (
  `id` int(11) NOT NULL,
  `code` int(4) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verficationcode`
--

INSERT INTO `verficationcode` (`id`, `code`, `customer_id`, `status`) VALUES
(4, 9812, 3, 'pending'),
(5, 7506, 3, 'pending'),
(6, 9054, 3, 'pending'),
(7, 8109, 3, 'pending'),
(9, 2001, 1, 'pending'),
(10, 3029, 1, 'pending'),
(11, 4723, 1, 'pending'),
(12, 9200, 1, 'pending'),
(14, 5829, 1, 'pending'),
(15, 3508, 1, 'pending'),
(16, 3261, 1, 'pending'),
(17, 3090, 1, 'pending'),
(18, 2452, 1, 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangay`
--
ALTER TABLE `barangay`
  ADD PRIMARY KEY (`brgy_id`);

--
-- Indexes for table `category_services`
--
ALTER TABLE `category_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`account_log`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hiring_log`
--
ALTER TABLE `hiring_log`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `s_provider`
--
ALTER TABLE `s_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verficationcode`
--
ALTER TABLE `verficationcode`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangay`
--
ALTER TABLE `barangay`
  MODIFY `brgy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_services`
--
ALTER TABLE `category_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `account_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hiring_log`
--
ALTER TABLE `hiring_log`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `s_provider`
--
ALTER TABLE `s_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `verficationcode`
--
ALTER TABLE `verficationcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
