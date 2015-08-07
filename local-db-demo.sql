-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 07, 2015 at 03:38 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `invite`
--

CREATE TABLE `invite` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invite`
--

INSERT INTO `invite` (`id`, `email`, `created_at`) VALUES
(30, 'p@p.com', '2015-08-06 07:11:23'),
(31, '', '2015-08-06 07:11:30'),
(32, '', '2015-08-06 07:13:45'),
(33, 'test@test.com', '2015-08-06 07:16:04'),
(34, 'yo@yo.com', '2015-08-06 16:23:28'),
(35, 'yo@yo.com.com', '2015-08-06 16:23:48'),
(36, 'test2@test2.com', '2015-08-06 16:38:14'),
(37, 'yo@yo.com', '2015-08-06 16:39:51'),
(38, 'test@test.com', '2015-08-06 16:40:32'),
(39, 'yes@yes.com', '2015-08-06 16:40:54'),
(40, 'test@test.com', '2015-08-06 16:48:36'),
(41, 'yes@yes.com', '2015-08-07 01:02:32'),
(42, 'test@test.com', '2015-08-07 01:03:10'),
(43, 'test@test.com', '2015-08-07 01:04:06'),
(44, 'test@test.com', '2015-08-07 01:04:31'),
(45, 'hi@hi.com', '2015-08-07 01:05:30'),
(46, 'test@test.com', '2015-08-07 01:05:59'),
(47, 'test@test.com', '2015-08-07 01:07:40'),
(48, 'test@test.com', '2015-08-07 01:08:02'),
(49, 'mobile@mobile.com', '2015-08-07 01:08:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invite`
--
ALTER TABLE `invite`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invite`
--
ALTER TABLE `invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
