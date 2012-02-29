-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 29, 2012 at 08:58 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wadd0032`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `director` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movie_title`, `release_date`, `director`) VALUES
(1, 'Unforgiven ', '1992-08-07', 'Clint Eastwood'),
(2, 'Pale Rider', '1985-06-28', 'Clint Eastwood'),
(3, 'The Good, the Bad and the Ugly', '1967-12-29', 'Sergio Leone'),
(5, 'High Plains Drifter', '1973-08-22', 'Clint Eastwood'),
(8, 'Hang ''Em High', '1968-08-03', 'Ted Post'),
(10, 'Silverado', '1985-07-10', 'Lawrence Kasdan'),
(14, '3:10 to Yuma', '2007-09-07', 'James Mangold');
