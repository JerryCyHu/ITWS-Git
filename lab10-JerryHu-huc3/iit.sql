-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 03:10 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iit`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `actorid` int(10) UNSIGNED NOT NULL,
  `first_names` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `dob` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actorid`, `first_names`, `last_name`, `dob`) VALUES
(1, 'Tom', 'Holland', '1996-6-1'),
(2, 'Robert', 'Downey Jr', '1965-4-4'),
(3, 'Chris', 'Evans', '1981-6-13'),
(4, 'Chris', 'Hemsworth', '1983-8-11'),
(8, 'Jerry', 'Hu', '2000-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `year` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `title`, `year`) VALUES
(1, 'Elizabeth', '1998'),
(2, 'Elling', '2001'),
(3, 'Oh Brother Where Art Thou?', '2000'),
(4, 'The Lord of the Rings: The Fellowship of the Ring', '2001'),
(5, 'Up in the Air', '2009'),
(6, 'Her', '2015'),
(7, 'Spider-Man:Homecoming', '2017'),
(8, 'Iron Man', '2008'),
(9, 'Captain America', '2011');

-- --------------------------------------------------------

--
-- Table structure for table `relationship`
--

CREATE TABLE `relationship` (
  `relationid` int(10) UNSIGNED NOT NULL,
  `movieid` int(10) NOT NULL,
  `actorid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relationship`
--

INSERT INTO `relationship` (`relationid`, `movieid`, `actorid`) VALUES
(1, 7, 1),
(2, 8, 2),
(3, 9, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actorid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`);

--
-- Indexes for table `relationship`
--
ALTER TABLE `relationship`
  ADD PRIMARY KEY (`relationid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actorid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `relationship`
--
ALTER TABLE `relationship`
  MODIFY `relationid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
