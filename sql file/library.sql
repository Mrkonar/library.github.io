-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2018 at 07:45 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'priyanka dorugade', 'priya@gmail.com', 'priyanka', 'e10adc3949ba59abbe56e057f20f883e', '2018-10-06 05:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Don Norman', '2018-10-02 15:17:45', '2018-10-02 13:30:00'),
(2, 'E.Balguruswamy', '2018-10-02 15:18:10', '2018-10-02 13:30:00'),
(3, 'P.K Nag', '2018-10-02 15:18:40', '2018-10-02 14:30:00'),
(4, 'R.S. Khurmi', '2018-10-02 15:19:06', '2018-10-02 14:30:00'),
(5, 'Tata McGraw Hill', '2018-10-02 15:20:26', '2018-10-02 14:30:00'),
(6, ' Upadhyaya', '2018-10-02 15:20:54', '2018-10-02 14:30:00'),
(7, ' Satyaprakash', '2018-10-02 15:21:18', '2018-10-02 14:30:00'),
(8, '  RD Sharma', '2018-10-02 15:21:36', '2018-10-02 14:30:00'),
(9, 'DP Kothari', '2018-10-02 15:22:02', '2018-10-02 14:30:00'),
(10, ' N. D. Bhat', '2018-10-02 15:22:21', '2018-10-02 14:30:00'),
(11, 'Shaikh Riyaz', '2018-10-02 15:42:26', '2018-10-02 14:30:00'),
(12, 'Haruki Murakami', '2018-10-02 15:47:46', '2018-10-02 14:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'Engineering Physics', 101, 123, 221, 700, '2018-10-02 15:24:21', '2018-10-02 15:30:00'),
(2, 'Engineering Chemistry', 102, 124, 222, 700, '2018-10-02 15:24:55', '2018-10-02 15:30:00'),
(3, 'Advanced Engineering Mathematics', 103, 1, 125, 850, '2018-10-02 15:25:29', '2018-10-02 15:30:00'),
(4, 'Basic Electric Engineering', 105, 4, 126, 900, '2018-10-02 15:26:15', '2018-10-02 15:30:00'),
(5, 'Engineering Drawing', 106, 225, 7, 500, '2018-10-02 15:27:39', '2018-10-02 14:30:00'),
(6, 'Computer Concepts and Programming in C', 108, 235, 8, 650, '2018-10-02 15:28:25', '2018-10-02 14:30:00'),
(7, 'Engineering Physics', 1, 10, 101, 700, '2018-10-02 15:36:34', NULL),
(8, 'Engineering Chemistry', 1, 7, 102, 700, '2018-10-02 15:37:06', NULL),
(9, 'Advanced Engineering Mathematics', 1, 8, 125, 850, '2018-10-02 15:37:38', NULL),
(10, 'Basic Electric Engineering', 1, 5, 126, 900, '2018-10-02 15:37:59', NULL),
(11, 'Engineering Drawing', 1, 3, 7, 500, '2018-10-02 15:38:28', NULL),
(12, 'Computer Concepts and Programming in C', 1, 2, 8, 650, '2018-10-02 15:39:40', NULL),
(13, 'Book Keeping & Accountancy', 9, 11, 227, 240, '2018-10-02 15:43:22', NULL),
(14, 'A Wild Sheep Chase', 10, 12, 899, 1200, '2018-10-02 15:48:45', NULL),
(15, 'The Wind-Up Bird Chronicle', 10, 12, 892, 1300, '2018-10-02 15:49:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Engineering', 1, '2018-10-02 15:29:37', '2018-10-02 15:30:37'),
(2, 'Management', 1, '2018-10-02 15:30:12', '2018-10-02 15:30:53'),
(8, 'Arts', 1, '2018-10-02 15:31:11', '0000-00-00 00:00:00'),
(9, 'Commerce', 1, '2018-10-02 15:31:24', '0000-00-00 00:00:00'),
(10, 'Novels', 1, '2018-10-02 15:31:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(8, 15, 'SID013', '2018-10-02 15:54:54', NULL, NULL, NULL),
(9, 1, 'SID013', '2018-10-02 15:55:49', NULL, NULL, NULL),
(10, 3, 'SID014', '2018-10-02 15:56:20', '2018-10-02 15:56:43', 1, 0),
(11, 1, 'SID013', '2018-10-06 04:20:12', '2018-10-06 05:33:39', 1, 10),
(12, 2, 'SID015', '2018-10-06 05:40:04', '2018-10-06 05:40:26', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(12, 'SID014', 'priya', 'priya@gmail.com', '9920404040', '0301d68f246dc8d850bb0979e22b69d7', 1, '2018-10-02 15:50:17', NULL),
(13, 'SID015', 'priya', 'priyadorugade@gmail.com', '9876543210', '6d17f6c352f4f7a00f2616f26226b205', 1, '2018-10-06 05:38:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
