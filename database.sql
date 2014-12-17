-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 14, 2014 at 11:23 PM
-- Server version: 5.5.40
-- PHP Version: 5.4.4-14+deb7u14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `Alerte`
--

CREATE TABLE IF NOT EXISTS `Alerte` (
  `alerte_id` int(11) NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Liste_Machine`
--

CREATE TABLE IF NOT EXISTS `Liste_Machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` text NOT NULL,
  `os` text NOT NULL,
  `nom_machine` text NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Liste_Machine`
--

INSERT INTO `Liste_Machine` (`id`, `ip`, `os`, `nom_machine`, `type`) VALUES
(1, '192.168.1.13', '', '', 0),
(2, '192.168.1.20', ' Apple iOS 4.X|5.X', '', 0),
(3, '192.168.1.39', '', '', 0),
(4, '192.168.1.79', ' Linux 2.6.X|3.X', '', 0),
(5, '192.168.1.88', ' Microsoft Windows 2008|7|Vista', '', 0),
(6, '192.168.1.254', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Resultat_Scan`
--

CREATE TABLE IF NOT EXISTS `Resultat_Scan` (
  `ip` varchar(15) NOT NULL,
  `port` mediumint(9) NOT NULL,
  `service` text NOT NULL,
  `version_service` text NOT NULL,
  `statut` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Resultat_Scan`
--

INSERT INTO `Resultat_Scan` (`ip`, `port`, `service`, `version_service`, `statut`) VALUES
('projet', 21, '  ftp', '?', 'open'),
('projet', 22, '  ssh', '?', 'open'),
('projet', 80, '  http', '?', 'open'),
('projet', 111, '  rpcbind', '?', 'open'),
('Host-001', 21, '  ftp', '?', 'open'),
('SRV-Projet', 21, '  ftp', '?', 'open'),
('SRV-Projet', 80, '  http', '?', 'open'),
('SRV-Projet', 135, '  msrpc', '?', 'open'),
('SRV-Projet', 445, '  microsoft-ds', '?', 'open'),
('SRV-Projet', 49154, '  unknown', '?', 'open'),
('bbox.lan', 53, '  domain', '?', 'open'),
('bbox.lan', 80, '  http', '?', 'open'),
('bbox.lan', 139, '  netbios-ssn', '?', 'open'),
('bbox.lan', 631, '  ipp', '?', 'open');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
