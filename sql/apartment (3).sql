-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 09:40 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apartment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'ssameer.md@gmail.com', '1234'),
(2, 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `apartmentNum` int(4) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`id`, `bid`, `apartmentNum`, `description`) VALUES
(14, 8, 123, '2BHK apartment'),
(16, 7, 101, '1bhk Apartment'),
(17, 10, 111, '2BHK apartment'),
(18, 10, 123, '1bhk'),
(19, 11, 125, '2BHK apartment'),
(20, 12, 1, '3BH WITH SQ'),
(21, 12, 2, '3BH WITH SQ'),
(22, 13, 33, '2BH'),
(23, 13, 34, '1BH'),
(24, 14, 22, '1BH'),
(25, 14, 25, '2BH WITH EXTENSION'),
(26, 14, 26, 'BEDSITTER'),
(27, 16, 137, 'BEDSITTER'),
(28, 16, 132, 'BEDSITTER'),
(29, 17, 23, 'BEDSITTER'),
(30, 17, 24, 'BEDSITTER'),
(31, 18, 30, '1BH'),
(32, 18, 31, 'STUDIO');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Developer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`id`, `Name`, `Address`, `Developer`) VALUES
(12, 'orchid', 'kamulu', 'omari'),
(13, 'laravel', 'utawala', 'Samuel'),
(14, 'Mlandizi', '001 nakuru', 'ndirangu'),
(17, 'Manyatta', 'kasarani', 'Ian'),
(18, 'ruby', 'roysambu', 'Shah');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `owned` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `name`, `email`, `password`, `mobile`, `owned`) VALUES
(6, 'sameer', 'ssameer.md@gmail.com', '1234', '9876543214', '14'),
(10, 'Edwin', 'edwin7@gmail.com', 'edwin22', '0789552671', '20'),
(11, 'Samuel', 'sam7@gmail.com', 'sam321', '017494494547', '22'),
(14, 'Ian', 'i@gmail.com', '1234', '51615116161', '29'),
(15, 'Ian', 'i@gmail.com', '1234', '46466116161', '30'),
(16, 'Shah', 'sh@gmail.com', '1234', '6561165151', '31'),
(17, 'Shah', 'sh@gmail.com', '1234', '16556646464', '32');

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `building` varchar(50) NOT NULL,
  `apartment` varchar(10) NOT NULL,
  `rent` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `oid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`id`, `name`, `email`, `password`, `mobile`, `building`, `apartment`, `rent`, `date`, `oid`) VALUES
(12, 'eric', 'eric1@gmail.com', 'eric1234', '018114944494', '13', '22', '8000', '2023-01-27', '11'),
(13, 'Risper', 'ris@gmailicom', 'ris221', '5465454566', '12', '20', '30000', '2023-01-27', '10'),
(14, 'mark', 'm@gmail.com', '1235', '66464646165', '17', '29', '4500', '2023-01-27', '14'),
(15, 'moh', 'mo@gmail.com', '1254', '65465448484', '18', '31', '4848', '2023-01-27', '16'),
(16, 'kimani', 'k@gmail.com', '1234', '65644646846', '18', '32', '8000', '2023-01-27', '16');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `tid` int(4) NOT NULL,
  `date` date NOT NULL,
  `amount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `tid`, `date`, `amount`) VALUES
(9, 6, '2018-11-23', '5000'),
(10, 6, '2018-11-24', '5000'),
(11, 7, '2018-11-24', '4900'),
(12, 10, '2018-11-26', '4500'),
(13, 11, '2018-11-27', '5000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
