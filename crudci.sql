-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2013 at 08:24 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crudci`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_usergroup` int(11) NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_usergroup` (`id_usergroup`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `email`, `password`, `id_usergroup`) VALUES
(2, 'Andri', 'ant123', 'ant@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 1),
(8, 'thiqo', 'thicoq', 'thico@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 2),
(9, 'user1', 'user123', 'andre_4109006q@yahoo.com', 'c4ca4238a0b923820dcc509a6f75849b', 9);

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE IF NOT EXISTS `usergroup` (
  `id_usergroup` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL,
  PRIMARY KEY (`id_usergroup`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `usergroup`
--

INSERT INTO `usergroup` (`id_usergroup`, `usergroup`, `parent`) VALUES
(1, 'root', 1),
(2, 'administrator', 2),
(9, 'user', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_usergroup`) REFERENCES `usergroup` (`id_usergroup`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
