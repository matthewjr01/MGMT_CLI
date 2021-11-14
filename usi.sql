-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 14, 2021 at 09:27 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u433204257_ecrp`
--

-- --------------------------------------------------------

--
-- Table structure for table `usi`
--

CREATE TABLE `usi` (
  `SteamHex` text NOT NULL,
  `Name` text NOT NULL,
  `PermLevel` int(11) NOT NULL,
  `IsWhiteListed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usi`
--

INSERT INTO `usi` (`SteamHex`, `Name`, `PermLevel`, `IsWhiteListed`) VALUES
('steam:110000131d3a404', 'Allison C. 1A-1', 1, 1),
('steam:110000106ffe1ec', 'Matthew J. 1A-2', 1, 1),
('steam:110000134044a00', 'Amir P. Civ-08', 0, 1),
('steam:11000013a69a910', 'D Burch. 1B-12', 0, 1),
('steam:11000014289eee1', 'Robert F. 4M-1', 1, 1),
('steam:11000011d52787d', 'Jake N. 1V-3', 1, 1),
('steam:1100001432f7ce7', 'Jaw W. 1B-04', 1, 1),
('steam:1100001195a6e98', 'Shelby M. 1X-2', 1, 1),
('syeam:11000014358df59', 'Jack T. 4V-104', 0, 1),
('steam:11000013cc07a17', 'Nick J. F-100', 0, 1),
('steam:1100001144a89ca', 'Clark R. 1X-1', 1, 1),
('steam:11000013200c1d8', 'Sawyer P. 1S-06', 1, 1),
('steam:1100001360ef77d', 'Ethan Y. 1D-1', 0, 1),
('steam:110000141519c65', 'Stark W. 1B-1', 1, 1),
('steam:11000014358df59', 'Jack T. 4V-+04', 0, 1),
('steam:1100001146cdb2b', 'Rogue W. 1S-07', 1, 1),
('steam:11000014547ff1b', 'Tackcitis K. 2S-07', 0, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
