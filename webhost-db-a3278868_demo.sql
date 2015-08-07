
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2015 at 09:35 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a3278868_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `invite`
--
-- Creation: Aug 06, 2015 at 11:06 AM
-- Last update: Aug 06, 2015 at 09:30 PM
-- Last check: Aug 06, 2015 at 07:31 PM
--

CREATE TABLE `invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` text COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `invite`
--

INSERT INTO `invite` (`id`, `email`, `created_at`) VALUES
(1, 'test@test.com', '2015-08-06 11:24:06'),
(2, 'mobiletest@mobile.com', '2015-08-06 21:24:50'),
(3, 'tablet@test.com', '2015-08-06 21:28:12'),
(4, 'laptop@test.com', '2015-08-06 21:29:38'),
(5, 'desktop@test.com', '2015-08-06 21:30:17');
