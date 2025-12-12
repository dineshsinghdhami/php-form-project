-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2025 at 10:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `SN` int(3) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `desc` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`SN`, `Name`, `Age`, `Gender`, `Email`, `Phone`, `desc`, `date`) VALUES
(1, 'fs', 23, 'Male', 'dineshsinghdhamidsd@', '9866109958', 'csdfsdf', '2025-12-12 11:36:48'),
(2, 'dsad', 0, 'sada', 'fasf', 'fsasfa', 'adad', '2025-12-12 14:03:04'),
(3, 'Dinesh Singh Dhami', 21, '23', 'dineshdhamidn@gmail.', '55653', 'jhejkwee', '2025-12-12 14:08:33'),
(4, 'nabin', 21, 'male', 'sd', '788', 'jbsf', '2025-12-12 14:19:40'),
(5, 'nabin', 21, 'male', 'sd', '788', 'jbsf', '2025-12-12 14:26:04'),
(6, 'nabin', 21, 'male', 'sd', '788', 'jbsf', '2025-12-12 14:26:07'),
(7, 'gfg', 21, 'fsdf', '42323', 'gdfgdfgd', 'dsfsdf', '2025-12-12 14:29:09'),
(8, '', 0, '', '', '', '', '2025-12-12 14:33:12'),
(9, 'dd', -99, '23', 'dineshdhamiasddn', '55653', 'sadasd', '2025-12-12 14:37:06'),
(10, '', 0, '', '', '', '', '2025-12-12 14:49:09'),
(11, 'dfvd', 0, 'dfsf', 'fsdf', 'fsdfs', 'fsdfs', '2025-12-12 14:49:30'),
(12, 'asdasd', 0, 'Other', 'dasd', 'dassa', 'dasa', '2025-12-12 14:53:49'),
(13, 'dq', 0, 'Male', 'sdsd', 'sdsd', 'sdsdsd', '2025-12-12 14:56:55'),
(14, 'ww', 0, 'ww', 'ww@dd', 'ww', 'ww', '2025-12-12 15:01:58'),
(15, 'sd', 11, 'Other', 'dddd@df', '1233333333', 'dddddasd', '2025-12-12 15:03:25'),
(16, 'Dinesh Singh Dhami', 11, 'Male', 'dineshdhamidn@gmail.', '2121212121', 'sdsdsd', '2025-12-12 15:11:13'),
(17, 'Dinesh Singh Dhami', 21, 'Male', 'dineshdhamidn@gmail.', '2121212121', 'sasas', '2025-12-12 15:21:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`SN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `SN` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
