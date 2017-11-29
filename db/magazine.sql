-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2017 at 08:54 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magazine`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(3) NOT NULL,
  `dbcname` varchar(30) NOT NULL,
  `userid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `dbcname`, `userid`) VALUES
(1, 'AutoMobiles', 10),
(2, 'Sports', 2),
(3, 'Fashion/Life Style', 9),
(4, 'Health/Medical', 13);

-- --------------------------------------------------------

--
-- Table structure for table `editors`
--

CREATE TABLE `editors` (
  `eid` int(3) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `magid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editors`
--

INSERT INTO `editors` (`eid`, `ename`, `magid`) VALUES
(1, 'Eddie Alterman', 1),
(2, 'Chris Harris', 2),
(3, 'Ari Henning Zack Courts', 3),
(4, 'Andrea Cordovani', 4),
(6, 'Jitesh Pillai', 5),
(7, 'Anuradha Choudhary', 6),
(8, 'Jitesh Pillaai', 7),
(9, 'Jithesh Pillai', 8),
(10, 'Robert W. Young', 9),
(11, 'Matt Christie', 10),
(13, 'Conti Editore', 12),
(14, 'Alison Overholt', 13),
(15, 'Richard Hughes', 14),
(16, 'Arthur Jones', 15),
(17, 'Celeste Jo Walls', 16),
(18, 'Dr Ravi Gupta', 17);

-- --------------------------------------------------------

--
-- Table structure for table `magz`
--

CREATE TABLE `magz` (
  `mid` int(3) NOT NULL,
  `dbmname` varchar(30) NOT NULL,
  `dbr_data` date NOT NULL,
  `dbno_pages` int(3) NOT NULL,
  `dblang` varchar(30) NOT NULL,
  `frequency` varchar(30) NOT NULL,
  `catid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `magz`
--

INSERT INTO `magz` (`mid`, `dbmname`, `dbr_data`, `dbno_pages`, `dblang`, `frequency`, `catid`) VALUES
(1, 'Cars and Driver', '2017-11-01', 120, 'English', 'Monthly', 1),
(2, 'Motorcycle Trader', '2017-11-09', 132, 'English', 'Monthly', 1),
(3, 'Motorcyclist', '2017-05-01', 112, 'English', 'Monthly', 1),
(4, 'Auto Sprint', '2017-11-07', 89, 'Italian', 'Weekly', 1),
(5, 'FilmFare', '2017-04-23', 90, 'English', 'Monthly', 3),
(6, 'Film Fare', '2017-05-08', 93, 'English', 'Monthly', 3),
(7, 'Film Fare', '2017-11-23', 100, 'English', 'Monthly', 3),
(8, 'Film Fare', '2017-07-23', 98, 'English', 'Monthly', 3),
(9, 'Black Belt', '2017-06-01', 84, 'English', 'Monthly', 2),
(10, 'Boxing News', '2017-05-17', 164, 'English', 'Weekly', 2),
(12, 'Cotto e Mangiato', '2017-11-11', 115, 'Italian', 'Monthly', 4),
(13, 'ESPN', '2017-05-29', 81, 'English', 'Forthnightly', 2),
(14, 'Match Of The Day', '2017-11-21', 68, 'English', 'Weekly', 2),
(15, 'Mens Health', '2017-11-01', 132, 'Enlgish', 'Monthly', 4),
(16, 'Central Florida Health News', '2017-12-01', 28, 'English', 'Monthly', 4),
(17, 'eHEALTH', '2017-10-11', 60, 'English', 'Weekly', 4);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `pid` int(3) NOT NULL,
  `dbpname` varchar(30) NOT NULL,
  `dbpfound` varchar(10) NOT NULL,
  `dbpaddress` varchar(30) NOT NULL,
  `magid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`pid`, `dbpname`, `dbpfound`, `dbpaddress`, `magid`) VALUES
(1, 'Hearst Magazines', '1903', 'New York', 1),
(4, 'Citrus Media', '2015', 'NSW,Austalia', 2),
(5, 'Bonnier', '2007', 'USA', 3),
(6, 'Conti Editore Spa', '1961', 'Italy', 4),
(7, 'WorldWide Media', '1952', 'India', 5),
(8, 'WorldWide Media', '1952', 'India', 6),
(9, 'WorldWide Media', '1952', 'India', 7),
(10, 'WorldWid Media', '1952', 'India', 8),
(11, 'Cheryl Angelheart', '1961', 'United States', 9),
(12, 'Newsquest', '1995', 'London', 10),
(13, 'OpenEyes Film', '1997', 'Italy', 12),
(14, 'ESPN Sports Network', '1998', 'United States', 13),
(15, 'BBC Sport', '1964', 'United Kingdom', 14),
(16, 'Pacific Magazines', '1976', 'Australia', 15),
(17, 'Nelson Kirkland', '1991', 'Florida', 16),
(18, 'Vinayak Print Media', '1985', 'India', 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `fname`, `lname`, `phone`, `email`, `pass`, `gender`) VALUES
(2, 'stabarak', 'syed', 'tabarak', '7022697127', 's@gmail.com', '12345', 'm'),
(4, 'sdas', 'snehil', 'das', '9066665342', 'snehil.das9@gmail.com', '23445', 'M'),
(9, 'srk', 'sanam', 'tab', '1234567890', 'tab@gmail.com', '9898', 'M'),
(10, 'rakesh', 'rakesh', 'm u', '9535191872', 'rakesh@gmail.com', '1234', 'M'),
(11, 'defepika', 'deepi', 'kumar', '1234567898', 'deepaka', '123456', 'f'),
(12, 'sinchana', 'sinch', 'kb', '8123951689', 'sinchanakb.bdvt@gmail.com', 'sinchkb', 'f'),
(13, 'avi', 'avinash', 'avi', '1234567898', 'avi@gmail.com', '1234', 'M'),
(14, 'shreyas', 'shre', 'yas', '1234567789', 'xgdfh', '1234', 'f'),
(15, 'sharuk', 'sharauk', 'skhan', '123456789', 'sharuk2gmail.com', '1234', 'M'),
(16, 'ozi10', 'owais', 'haseeb', '9900515166', 'owaishaseeb10@gmail.com', '1234', 'M'),
(18, 'arka', 'syed', 'arkham', '7022697127', 'syed@gmail.com', '1234', 'M');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `editors`
--
ALTER TABLE `editors`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `magid` (`magid`);

--
-- Indexes for table `magz`
--
ALTER TABLE `magz`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `magz_ibfk_1` (`catid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `publisher_ibfk_1` (`magid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `editors`
--
ALTER TABLE `editors`
  MODIFY `eid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `magz`
--
ALTER TABLE `magz`
  MODIFY `mid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `pid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `editors`
--
ALTER TABLE `editors`
  ADD CONSTRAINT `editors_ibfk_1` FOREIGN KEY (`magid`) REFERENCES `magz` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `magz`
--
ALTER TABLE `magz`
  ADD CONSTRAINT `magz_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `category` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`magid`) REFERENCES `magz` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
