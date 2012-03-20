-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2012 at 10:27 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dupe0012`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `director` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movie_title`, `release_date`, `director`) VALUES
(2, 'Beauty and the Beast', '1991-11-22', 'Kirk Wise'),
(4, 'Pretty in Pink', '1987-02-26', 'John Hughes'),
(5, 'The Corporation', '2004-06-04', 'Jennifer Abbott'),
(6, 'Ferris Bueller''s Day Off', '1987-06-19', 'John Hughes'),
(7, 'Harry Potter and the Philosopher''s Stone', '2001-11-16', 'Chris Columbus');
