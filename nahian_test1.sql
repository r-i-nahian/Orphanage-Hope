-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2017 at 07:40 PM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nahian_test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE IF NOT EXISTS `adoption` (
  `fathers_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mothers_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fathers_nid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mothers_nid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` int(12) NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `orphanages_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `orphanages_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `manager_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `adoption`
--

INSERT INTO `adoption` (`fathers_name`, `mothers_name`, `fathers_nid`, `mothers_nid`, `mobile`, `address`, `email`, `orphanages_name`, `orphanages_id`, `manager_name`) VALUES
('qw', 'qqq', 'qqqq', '', 0, '', '', '', '', ''),
('w', 'w', 'w', 'ww', 0, '', '', '', '', ''),
('q', 'q', 'q', 'q', 777, 'qqqq', 'qqqqq', 'qqqq', 'qqqq', 'qqqq');

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE IF NOT EXISTS `donate` (
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ccname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ccno` int(50) NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cvv` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`type`, `ccname`, `ccno`, `date`, `cvv`) VALUES
('w', 'w', 12, 'w', 123);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
