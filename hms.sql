-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 29, 2019 at 01:19 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_details`
--

DROP TABLE IF EXISTS `emp_details`;
CREATE TABLE IF NOT EXISTS `emp_details` (
  `empid` int(5) NOT NULL,
  `empname` varchar(20) NOT NULL,
  `designation` varchar(15) NOT NULL,
  `salary` int(5) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_details`
--

INSERT INTO `emp_details` (`empid`, `empname`, `designation`, `salary`, `address`, `phone`) VALUES
(101, 'Raj', 'Worker', 30000, 'MarineLines,Mumbai', 989298868),
(102, 'Nitin', 'Worker', 30000, 'CharniRoad,Mumbai', 989298373),
(103, 'Suresh', 'Worker', 30000, 'GrantRoad,Mumbai', 989298277),
(104, 'Rajesh', 'Worker', 30000, 'Virar,Mumbai', 976967521),
(105, 'Bipin', 'Manager', 50000, 'Andheri,Mumbai', 976967523),
(106, 'Haresh', 'Manager', 50000, 'Sion,Mumbai', 976967512),
(107, 'Mukesh', 'Cook', 30000, 'Sion,Mumbai', 976967523),
(108, 'Vrijesh', 'Receptionist', 40000, 'Borivali,Mumbai', 976967344);

-- --------------------------------------------------------

--
-- Table structure for table `emp_login`
--

DROP TABLE IF EXISTS `emp_login`;
CREATE TABLE IF NOT EXISTS `emp_login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_login`
--

INSERT INTO `emp_login` (`username`, `password`) VALUES
('Bipin01', 'Bipin01'),
('Haresh02', 'Haresh02'),
('Vrijesh03', 'Vrijesh03');

-- --------------------------------------------------------

--
-- Table structure for table `room_details`
--

DROP TABLE IF EXISTS `room_details`;
CREATE TABLE IF NOT EXISTS `room_details` (
  `Roomno` int(5) NOT NULL,
  `NoOfBeds` int(4) NOT NULL,
  `RoomType` varchar(30) NOT NULL,
  `RoomRate` int(5) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  PRIMARY KEY (`Roomno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_details`
--

INSERT INTO `room_details` (`Roomno`, `NoOfBeds`, `RoomType`, `RoomRate`, `check_in`, `check_out`) VALUES
(101, 2, 'Non AC Room', 600, '2019-09-17', '2019-09-18'),
(102, 2, 'Non AC Room', 600, '2019-09-17', '2019-09-19'),
(103, 4, 'Non AC Room', 600, '2019-09-17', '2019-09-18'),
(104, 4, 'Non AC Room', 600, '2019-09-18', '2019-09-19'),
(201, 2, 'Non AC Deluxe Room', 800, '2019-09-18', '2019-09-20'),
(202, 4, 'Non AC Deluxe Room', 800, '2019-09-01', '2019-09-02'),
(301, 2, 'AC Room', 1200, '2019-09-24', '2019-09-26'),
(302, 2, 'AC Room', 1200, '2019-09-21', '2019-09-23'),
(303, 4, 'AC Room', 1200, '2019-09-01', '2019-09-02'),
(304, 4, 'AC Room', 1200, '2019-09-01', '2019-09-02'),
(401, 2, 'AC Deluxe Room', 1400, '2019-09-01', '2019-09-02'),
(402, 4, 'AC Deluxe Room', 1400, '2019-09-01', '2019-09-02'),
(501, 2, 'Special Suites', 1800, '2019-09-01', '2019-09-02'),
(502, 4, 'Special Suites', 1800, '2019-09-01', '2019-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `Checkindate` date NOT NULL,
  `Checkoutdate` date NOT NULL,
  `roomno` int(5) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `adhaar` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`firstname`, `lastname`, `city`, `state`, `Checkindate`, `Checkoutdate`, `roomno`, `email`, `mobile`, `adhaar`) VALUES
('Aditya', 'Nariampully', 'Mumbai City', 'Maharashtra	', '2019-09-17', '2019-09-18', 101, 'adityanariampully@gmail.com', '878798787', '1234567890'),
('Bhavin', 'Gohil', 'Mumbai City', 'Maharashtra	', '2019-09-17', '2019-09-19', 102, 'bhavingohil2017@gmail.com', '976967521', '1234567890'),
('Bhavin', 'Gohil', 'Mumbai City', 'Maharashtra	', '2019-09-17', '2019-09-19', 301, 'bhavingohil2017@gmail.com', '976967521', '1234567891'),
('kkj', 'jkjk', 'Ahmedabad', 'Assam	', '2019-09-17', '2019-09-19', 12, 'njsahjk', '50363737', '88503637'),
('kkj', 'jkjk', 'Ahmedabad', 'Assam	', '2019-09-17', '2019-09-19', 12, 'njsahjk', '50363737', '88503637'),
('kkj', 'jkjk', 'Ahmedabad', 'Assam	', '2019-09-17', '2019-09-19', 12, 'njsahjk', '50363737', '88503637'),
('hh', 'jhj', 'Agra', 'Andhra Pradesh	', '2019-09-17', '2019-09-18', 12, 'hihuih', '885036363', '885036363'),
('sdf', 'ads', 'Adilabad', 'Assam	', '2019-09-17', '2019-09-18', 103, 'dasasd', '850363737', '885036373'),
('Rigved', 'Khandekar', 'Mumbai City', 'Maharashtra	', '2019-09-18', '2019-09-19', 104, 'miscritsrk1@gmail.com', '9897865423', '123456789123'),
('Bhavin', 'Gohil', 'Mumbai City', 'Maharashtra	', '2019-09-24', '2019-09-26', 301, 'bhavingohil2018@gmail.com', '9892988687', '748273847562'),
('Shivang', 'Gohil', 'Mumbai City', 'Maharashtra	', '2019-09-18', '2019-09-20', 201, 'shivangraikar@gmail.com', '9738828281', '1727272727272'),
('Sachin', 'Kadam', 'Mumbai City', 'Maharashtra	', '2019-09-21', '2019-09-23', 302, 'sachin.kadam@marathamandir.com', '8169696', '123456789');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
