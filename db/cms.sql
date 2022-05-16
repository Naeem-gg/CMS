-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2022 at 11:41 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '08-05-2020 07:23:45 PM'),
(2, 'newadmin', 'e6053eb8d35e02ae40beeeacef203c1a', '05-05-2022 10:27:35 PM'),
(17, 'naeem', 'dc06698f0e2e75751545455899adccc3', '05-05-2022 10:29:19 PM'),
(18, 'naeem', 'aaf560160e800b6399023459156d8153', '05-16-2022 11:30:29 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Staff', 'If you have any complaint with regards to any of college staff you can select this category.', '2022-04-28 11:14:43', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int NOT NULL,
  `complaintNumber` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(3, 4, 'in process', 'This is test process remark.', '2022-05-16 18:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Maharashtra', 'this is maharashtra state', '2022-04-28 11:17:44', ''),
(2, 'Delhi', 'This is delhi', '2022-04-28 11:54:39', ''),
(3, 'Andaman and Nicobar (UT)', '', '2022-04-28 12:00:11', ''),
(4, 'Andhra Pradesh', '', '2022-04-28 12:00:11', ''),
(5, 'Arunachal Pradesh', '', '2022-04-28 12:00:11', ''),
(6, 'Assam', '', '2022-04-28 12:00:11', ''),
(7, 'Bihar', '', '2022-04-28 12:00:11', ''),
(8, ' Chandigarh (UT) ', '', '2022-04-28 12:00:11', ''),
(9, 'Daman and Diu (UT)', '', '2022-04-28 12:00:11', ''),
(10, 'DadrDadra and Nagar Haveli (UT) ', '', '2022-04-28 12:00:11', ''),
(11, 'Chhattisgarh', '', '2022-04-28 12:00:11', ''),
(12, 'Himachal Pradesh ', '', '2022-04-28 12:00:11', ''),
(13, 'Haryana', '', '2022-04-28 12:00:11', ''),
(14, 'Gujarat', '', '2022-04-28 12:00:11', ''),
(15, 'Goa', '', '2022-04-28 12:00:11', ''),
(16, 'Kerala', '', '2022-04-28 12:00:11', ''),
(17, 'Karnataka', '', '2022-04-28 12:00:11', ''),
(18, 'Jharkhand', '', '2022-04-28 12:00:11', ''),
(19, 'Jammu and Kashmir', '', '2022-04-28 12:00:11', ''),
(20, 'Madhya Pradesh', '', '2022-04-28 12:00:11', ''),
(21, 'Lakshadweep (UT) ', '', '2022-04-28 12:00:11', ''),
(22, 'Ladakh', '', '2022-04-28 12:00:11', ''),
(23, 'Orissa', '', '2022-04-28 12:00:11', ''),
(24, 'Nagaland', '', '2022-04-28 12:00:11', ''),
(25, 'Mizoram', '', '2022-04-28 12:00:11', ''),
(26, 'Meghalaya', '', '2022-04-28 12:00:11', ''),
(27, 'Manipur', '', '2022-04-28 12:00:11', ''),
(28, 'Sikkim', '', '2022-04-28 12:00:11', ''),
(29, 'Rajasthan', '', '2022-04-28 12:00:11', ''),
(30, 'Punjab', '', '2022-04-28 12:00:11', ''),
(31, 'Puducherry (UT) ', '', '2022-04-28 12:00:11', ''),
(32, 'West Bengal', '', '2022-04-28 12:00:11', ''),
(33, 'Uttarakhand', '', '2022-04-28 12:00:11', ''),
(34, 'Uttar Pradesh', '', '2022-04-28 12:00:11', ''),
(35, 'Tripura', '', '2022-04-28 12:00:11', ''),
(36, 'Telangana', '', '2022-04-28 12:00:11', ''),
(37, 'Tamil Nadu', '', '2022-04-28 12:00:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int NOT NULL,
  `categoryid` int NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Science branch', '2022-05-05 17:35:08', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int NOT NULL,
  `userId` int NOT NULL,
  `category` int NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(3, 3, 1, '', 'General Query', 'Maharashtra', 'general', 'This is my first complaint', '', '2022-05-05 17:36:17', NULL, '0000-00-00 00:00:00'),
(4, 4, 1, 'Science branch', 'General Query', 'Delhi', 'test', 'This is test complaint', '', '2022-05-16 17:59:35', 'in process', '2022-05-16 18:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `uid` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:43', '', 0),
(2, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:50', '08-05-2020 07:44:51 PM', 1),
(3, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:16:30', '', 1),
(4, 0, 'bhavesh@gmail.com', 0x3132372e302e302e3100000000000000, '2022-04-28 11:09:34', '', 0),
(5, 0, 'bhavesh@gmail.com', 0x3132372e302e302e3100000000000000, '2022-04-28 11:09:40', '', 0),
(6, 2, 'bhaves@gmail.com', 0x3132372e302e302e3100000000000000, '2022-04-28 11:10:03', '28-04-2022 04:49:39 PM', 1),
(7, 2, 'bhaves@gmail.com', 0x3132372e302e302e3100000000000000, '2022-04-28 11:34:25', '28-04-2022 05:34:12 PM', 1),
(8, 2, 'bhaves@gmail.com', 0x3132372e302e302e3100000000000000, '2022-04-28 12:04:35', '28-04-2022 05:35:59 PM', 1),
(9, 2, 'bhaves@gmail.com', 0x3132372e302e302e3100000000000000, '2022-04-28 12:07:04', '', 1),
(10, 2, 'bhaves@gmail.com', 0x3132372e302e302e3100000000000000, '2022-04-28 12:35:47', '28-04-2022 06:07:56 PM', 1),
(11, 2, 'bhaves@gmail.com', 0x3132372e302e302e3100000000000000, '2022-04-28 12:41:51', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'bhavesh', 'bhaves@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 1234567890, NULL, NULL, NULL, NULL, NULL, '2022-04-28 11:09:23', '0000-00-00 00:00:00', 1),
(3, 'naeem', 'naeem@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 3259874165, NULL, NULL, NULL, NULL, NULL, '2022-05-05 17:34:01', '0000-00-00 00:00:00', 1),
(4, 'faisal', 'faisal@gmail.com', '13f554c58923290c4a509c16149739bb', 1234567890, 'test address', 'Maharashtra', 'India', 423203, NULL, '2022-05-16 17:48:07', '2022-05-16 18:07:03', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
