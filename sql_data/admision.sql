-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2023 at 07:28 AM
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
  `taluk` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `cet` int(11) DEFAULT NULL,
  `neet` int(11) DEFAULT NULL,
  `jee` int(11) DEFAULT NULL,
  `komedk` int(11) DEFAULT NULL,
  `sslc` int(11) DEFAULT NULL,
  `pu1` int(11) DEFAULT NULL,
  `pu2` int(11) DEFAULT NULL,
  `promotion` varchar(50) DEFAULT NULL,
  `flag` int(11) DEFAULT 0,
  `relegion` char(20) DEFAULT NULL,
  `cast` char(20) DEFAULT NULL,
  `category` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `phone`, `first_name`, `last_name`, `country`, `state`, `district`, `taluk`, `city`, `address`, `cet`, `neet`, `jee`, `komedk`, `sslc`, `pu1`, `pu2`, `promotion`, `flag`, `relegion`, `cast`, `category`) VALUES
('al001', 7760639478, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

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
