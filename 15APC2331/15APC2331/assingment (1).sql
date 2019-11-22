-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2019 at 04:35 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assingment`
--

-- --------------------------------------------------------

--
-- Table structure for table `bud`
--

CREATE TABLE `bud` (
  `qid` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `ans_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bud`
--

INSERT INTO `bud` (`qid`, `question`, `ans_id`) VALUES
(1, 'Number that can divided by 2?', 2),
(2, 'Number that can divided by 3?', 7),
(3, 'Operating system?', 9),
(4, 'Web browser?', 13),
(5, 'Number that can divided by 4?', 18);

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `aid` int(11) NOT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `ans_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`aid`, `answer`, `ans_id`) VALUES
(1, '3', 1),
(2, '2', 0),
(3, '1', 1),
(4, '5', 1),
(5, '10', 2),
(6, '4', 2),
(7, '6', 2),
(8, '7', 2),
(9, 'Windows', 3),
(10, 'Microsoft', 3),
(11, 'Apple', 3),
(12, 'Adobe', 3),
(13, 'Opera', 4),
(14, 'Word', 4),
(15, 'Power point', 4),
(16, 'Excel', 4),
(17, '9', 5),
(18, '12', 5),
(19, '13', 5),
(20, '14', 5);

-- --------------------------------------------------------

--
-- Table structure for table `main.2`
--

CREATE TABLE `main.2` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `new_password` varchar(50) NOT NULL,
  `retype_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bud`
--
ALTER TABLE `bud`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `main.2`
--
ALTER TABLE `main.2`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
