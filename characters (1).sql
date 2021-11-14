-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 14, 2021 at 09:40 PM
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
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `steamid` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `twotter_name` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dept` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `discord`, `steamid`, `first_name`, `last_name`, `twotter_name`, `dob`, `gender`, `dept`) VALUES
(1, '787427727719661630', 'steam:110000131d3a404', 'Allison', 'C. 1A-1', 'SAHPAllie', '1999-01-01', 'Female', 'SAHP'),
(2, '662529839332327424', 'steam:110000106ffe1ec', 'Jackson', 'Smith', 'Mr Pickles', '1198-11-25', 'Male', 'Civilian'),
(24, '', 'steam:110000134044a00', 'Amir', 'P. Civ-08', NULL, '', NULL, 'Civilian'),
(38, '', 'steam:11000013a69a910', 'Burch', 'D. 1B-12', NULL, NULL, NULL, 'LSPD'),
(39, NULL, 'steam:11000014289eee1', 'Robert', 'Fox', 'RFLSPD', '1989-08-21', 'Male', 'LSPD'),
(40, NULL, 'steam:11000011d52787d', 'Jake', 'Naz', 'yuhhhhh_hpgod', '1977-05-02', 'Male', 'SAHP'),
(41, NULL, 'steam:1100001432f7ce7', 'Jaw', 'W. 1B-04', NULL, NULL, NULL, 'LSPD'),
(42, NULL, 'steam:1100001195a6e98', 'Shelby', 'M. 1X-2', NULL, NULL, NULL, 'LSPD'),
(43, NULL, 'steam:11000014506d7a8', 'Ronnie', 'Milton', 'undefined', '1984-02-23', 'Male', 'LSPD'),
(44, NULL, 'syeam:11000014358df59', 'Jack', 'T. 4V-104', NULL, NULL, NULL, 'LSPD'),
(45, NULL, 'steam:11000013cc07a17', 'Nick', 'J. F-100', NULL, NULL, NULL, 'LSFD'),
(46, NULL, 'steam:1100001144a89ca', 'Clark', 'R. 1X-1', NULL, NULL, NULL, 'LSPD'),
(47, NULL, 'steam:11000013200c1d8', 'Sawyer', 'P. 1S-06', NULL, NULL, NULL, 'BCSO'),
(48, NULL, 'steam:1100001360ef77d', 'Ethan', 'Y. 1D-1', NULL, NULL, NULL, 'LSPD'),
(49, NULL, 'steam:110000141519c65', 'Stark', 'W. 1B-1', NULL, NULL, NULL, 'LSPD'),
(50, NULL, 'steam:11000014358df59', 'Jack', 'T. 4V-04', NULL, NULL, NULL, 'LSPD'),
(51, '662529839332327424', 'steam:110000106ffe1ec', 'Matthew', 'J. 1A-2', '', '', '', 'LSPD'),
(52, '662529839332327424', 'steam:110000106ffe1ec', 'Matthew', 'Smith', 'Mr. Fingers', '1198-11-25', 'Male', 'Civilian'),
(53, '653916579435905024', 'steam:11000014289eee1', 'Robert', 'Fox', 'RFBCSO', '1989-08-21', 'Male', 'LSPD'),
(54, '653916579435905024', 'steam:11000014289eee1', 'Robert', 'Fox', 'RFSAHP', '1989-08-21', 'Male', 'SAHP'),
(55, '871828408009629767', 'steam:11000014358df59', 'Jack', 'Dom', 'Jack', '1985-12-13', 'Male', 'SAHP'),
(56, '871828408009629767', 'steam:11000014358df59', 'Jack', 'Tyler', 'Jack Tyler', '1975-12-13', 'Male', 'BCSO'),
(57, '331777372770533376', 'steam:11000011d52787d', 'Jake', 'Naz', 'jakethesnake', '1977-05-02', 'Male', 'Civilian'),
(58, '303593155163324416', 'steam:1100001144a89ca', 'CLARK', 'REED', 'reed', '1998-09-06', 'Male', 'BCSO'),
(59, '303593155163324416', 'steam:1100001144a89ca', 'Andrew', 'Mcgee', 'A.MCGEE', '1965-09-06', 'Male', 'Civilian'),
(60, NULL, 'steam:1100001146cdb2b', 'Rogue', 'W. 1S-07', '', NULL, NULL, 'BCSO'),
(61, NULL, 'steam:11000014547ff1b', 'Tackcitis', 'K. 2S-07', NULL, NULL, NULL, 'BCSO'),
(62, '543547245472251911', 'steam:11000013cc07a17', 'Nick', 'Jackson', 'Sgt.NickJ', '1999-01-07', 'Male', 'BCSO'),
(63, '871828408009629767', 'steam:11000014358df59', 'Jack', 'Tyler', 'Jack', '1985-12-13', 'Male', 'Civilian'),
(64, '697944777018310717', 'steam:11000014547ff1b', 'Tik', 'Tok', 'TikTokEastSide', '1995-03-19', 'Male', 'Civilian'),
(65, '690602479641165884', 'steam:11000014506d7a8', 'Darnell', 'Jackson', 'rfg', '1974-06-07', 'Male', 'Civilian');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
