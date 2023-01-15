-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2023 at 04:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admision`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE `admin_data` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`username`, `password`) VALUES
('admin', 'alvas@123');

-- --------------------------------------------------------

--
-- Table structure for table `past_promo_data`
--

CREATE TABLE `past_promo_data` (
  `promo_id` int(11) NOT NULL,
  `name_of_promo` varchar(1000) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `duration` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` varchar(20) DEFAULT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `cet_ran` int(11) DEFAULT NULL,
  `jee` int(11) DEFAULT NULL,
  `komedk` int(11) DEFAULT NULL,
  `sslc` int(11) DEFAULT NULL,
  `pu1` int(11) DEFAULT NULL,
  `pu2` int(11) DEFAULT NULL,
  `promotion` varchar(50) DEFAULT NULL,
  `relegion` char(20) DEFAULT NULL,
  `cast` char(20) DEFAULT NULL,
  `category` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `phone`, `first_name`, `last_name`, `country`, `state`, `district`, `address`, `cet_ran`, `jee`, `komedk`, `sslc`, `pu1`, `pu2`, `promotion`, `relegion`, `cast`, `category`) VALUES
('08088651724', 8088651724, 'vedanth', 'v', 'India', 'Karanataka', 'Dakshina Kannada', 'alvas institute of engineering, manglore', 23, 1234, 1234, 12345, 2345, 4567, 'college', 'Hindu', 'gsb', 'gm');

-- --------------------------------------------------------

--
-- Table structure for table `stu_auth`
--

CREATE TABLE `stu_auth` (
  `id` varchar(11) NOT NULL,
  `phone` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `st_di`
--

CREATE TABLE `st_di` (
  `state` varchar(50) DEFAULT NULL,
  `dist` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `st_di`
--

INSERT INTO `st_di` (`state`, `dist`) VALUES
('Karanataka', 'Dakshina Kannada'),
('Karanataka', 'Belagavi'),
('Maharastra', 'bendra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `past_promo_data`
--
ALTER TABLE `past_promo_data`
  ADD PRIMARY KEY (`promo_id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
