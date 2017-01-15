-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2016 at 08:32 AM
-- Server version: 5.6.26-log
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iut`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `courseCode` varchar(50) NOT NULL,
  `courseName` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseCode`, `courseName`, `Department`, `Semester`) VALUES
('cse4606', 'Networking', 'cse', 'semester 6'),
('cse4601', 'Software Engineering', 'CSE', '6');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `details` varchar(255) NOT NULL,
  `eventDate` varchar(12) NOT NULL,
  `dateAdded` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `details`, `eventDate`, `dateAdded`) VALUES
(1, 'Year first day', 'This day is the first day of the year 2016', '09/01/2016', '2016-09-20'),
(4, 'Independance Day', 'In this day in 1975, The Comoros took became independent from France', '07/06/2016', '2016-09-20'),
(5, 'wakaa', 'wakaa\r\n', '09/14/2016', '2016-09-22'),
(6, 'Event', 'Event', '09/20/2016', '2016-09-22'),
(7, '', '', '09/20/2016', '2016-09-22'),
(8, 'aka', 'aha\r\n', '09/20/2016', '2016-09-22'),
(9, 'aa', 'aa\r\n', '09/30/2016', '2016-09-22'),
(10, '', '', '09/30/2016', '2016-09-22'),
(11, '', '', '09/30/2016', '2016-09-22'),
(12, '', '', '09/30/2016', '2016-09-22'),
(13, '', '', '09/30/2016', '2016-09-22'),
(14, '', '', '09/30/2016', '2016-09-22'),
(15, 'Elmi', 'Ali\r\n', '12/14/2016', '2016-09-23'),
(16, 'Elmi', 'Ali\r\n', '12/14/2016', '2016-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `StudentID` int(6) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Program` varchar(50) NOT NULL,
  `Class` int(50) NOT NULL,
  `Course` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `Name`, `Department`, `Program`, `Class`, `Course`) VALUES
(134304, 'Mohamed Elmi', 'CSE', 'HD', 0, 'cse4606');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseCode`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
