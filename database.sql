-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2017 at 09:23 PM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database`
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
('q', 'q', 'q', 'q', 777, 'qqqq', 'qqqqq', 'qqqq', 'qqqq', 'qqqq'),
('ggg', 'gggg', 'gggg', 'gggg', 45678, 'eeee', 'rrrrr@oooo.com', 'gggggg', 'hhhhhh', 'jjjjj'),


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
('w', 'w', 12, 'w', 123),
('monthly', 'rashik', 123456, '11', 111),
('monthly', 'abcd', 123456, '1133', 1114444),


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(4, 'qwert', 'rrrrr@oooo.com', 'a384b6463fc216a5f8ecb6670f86456a', '2017-12-08 19:14:04'),
(5, 'qwert', 'rrrrr@oooo.com', 'a384b6463fc216a5f8ecb6670f86456a', '2017-12-08 19:16:20'),
(6, 'qwe', 'qwe@n.com', '76d80224611fc919a5d54f0ff9fba446', '2017-12-08 19:16:44'),
(7, 'qwe', 'qwe@n.com', '76d80224611fc919a5d54f0ff9fba446', '2017-12-08 19:20:57'),
(8, 'abcd', 'abcd@a.com', 'e2fc714c4727ee9395f324cd2e7f331f', '2017-12-08 19:23:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
