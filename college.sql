-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 07:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `Reg_Number` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `GPA` double(3,2) DEFAULT NULL,
  `Group_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`Reg_Number`, `ID`, `GPA`, `Group_name`) VALUES
(2001025, 103, 3.50, 'Arch'),
(2031245, 104, 3.45, 'Phar'),
(2111026, 102, 3.31, 'CSE'),
(2111046, 101, 3.26, 'BBA');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `Name`, `Gender`) VALUES
(101, 'Tamim', 'Male'),
(102, 'Hasib', 'Male'),
(103, 'Jawad', 'Male'),
(104, 'Omar', 'Male'),
(106, 'Nisho', 'Female'),
(107, 'Monir', 'Male'),
(108, 'Aisha', 'Female'),
(109, 'shahin', 'Male'),
(110, 'Himel', 'Male'),
(111, 'Proma', 'Female'),
(112, 'Proma', 'Female'),
(1006, 'Pushpa', 'MAle');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `Roll` int(5) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Age` int(5) DEFAULT NULL,
  `GPA` double(3,2) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`Roll`, `Name`, `Gender`, `Age`, `GPA`, `city`) VALUES
(1001, 'Dhrubo', 'Male', 20, 3.31, 'Khulna'),
(1002, 'Adiba', 'Female', 20, 3.30, 'Comilla'),
(1003, 'Emu', 'Female', 21, 3.36, 'Dhaka'),
(1004, 'Mahin', 'Male', 21, 3.36, 'Dhaka'),
(1005, 'Zulkar', 'Male', 21, 3.45, 'Sylhet'),
(1006, 'Atkia', 'Female', 20, 3.30, 'Dhaka'),
(1007, 'Ayon', 'Male', 21, 3.45, 'Barishal'),
(1008, 'Tasnim', 'Female', 20, 3.36, 'Rajshahi'),
(1009, 'Dhrubo', 'Male', 21, 3.31, 'Khulna'),
(1010, 'Atkia', 'Female', 21, 3.30, 'Dhaka');

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_view`
-- (See below for the actual view)
--
CREATE TABLE `student_view` (
`ID` int(11)
,`Name` varchar(20)
,`Gender` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Salary` double(10,2) DEFAULT NULL,
  `Department` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `Name`, `Salary`, `Department`) VALUES
(1, 'Uday', 35000.00, 'Env'),
(2, 'Rahat', 30000.00, 'CSE'),
(4, 'apurbo', 15000.00, 'BBA'),
(5, 'Dhrubo', 7500.00, 'cse'),
(6, 'Taohid', 25400.00, 'BA'),
(7, 'Jisan', 65400.00, 'Civil'),
(8, 'Hamid', 35400.00, 'Arch'),
(9, 'Jibon', 24500.00, 'Phar');

-- --------------------------------------------------------

--
-- Structure for view `student_view`
--
DROP TABLE IF EXISTS `student_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_view`  AS SELECT `student`.`ID` AS `ID`, `student`.`Name` AS `Name`, `student`.`Gender` AS `Gender` FROM `student` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD PRIMARY KEY (`Reg_Number`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`Roll`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
