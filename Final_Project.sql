-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2023 at 06:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Final_Project`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `u_name` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `PlaceOfBirth` text NOT NULL,
  `Gender` enum('Prefer Not To Say','Man','Woman','') NOT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`user_id`, `f_name`, `l_name`, `u_name`, `pass`, `DateOfBirth`, `PlaceOfBirth`, `Gender`, `address`, `phone_number`) VALUES
(1, 'John', 'Doe', 'jdoe1234', 'S3cr3tpass1', '2023-05-01', 'United States of America', 'Man', '123 No St, No City, NS 00000', '123-456-7890'),
(2, 'Jane', 'Doe', 'janeD1234', 'password', '2023-05-02', 'United States', 'Prefer Not To Say', 'Temp Adddress', '000-000-0000');

-- --------------------------------------------------------

--
-- Table structure for table `clothing_support`
--

CREATE TABLE `clothing_support` (
  `clothing_id` int(11) NOT NULL,
  `business_name` varchar(25) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clothing_support`
--

INSERT INTO `clothing_support` (`clothing_id`, `business_name`, `phone_number`, `address`) VALUES
(1, 'Goodwill', '404-554-9560', '2075 S Hairston Rd, Decatur, GA 30035'),
(2, 'The Salvation Army', '404-486-2870', '3500 Sherrydale Ln, Decatur, GA 30032');

-- --------------------------------------------------------

--
-- Table structure for table `food_support`
--

CREATE TABLE `food_support` (
  `food_id` int(11) NOT NULL,
  `business_name` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_support`
--

INSERT INTO `food_support` (`food_id`, `business_name`, `address`, `phone_number`) VALUES
(1, 'ICNA Relief Food Pantry', '6200 Memorial Dr, Stone Mountain, GA 30083', '770-300-0067'),
(2, 'Peace On The Move', '4000 Covington Hwy, Decatur, GA 30032', '404-000-0000'),
(3, 'Sample Support', 'Sample Address', '111-111-1111'),
(4, 'Sample2', 'Sample Address', '222-222-2222'),
(10, 'Sample2', 'Sample Address', '222-222-2222'),
(11, 'Sample2', 'Sample Address', '222-222-2222'),
(12, 'Sample2', 'Sample Address', '222-222-2222'),
(13, 'Sample2', 'Sample Address', '222-222-2222'),
(14, 'Sample2', 'Sample Address', '222-222-2222'),
(15, 'Sample2', 'Sample Address', '222-222-2222'),
(16, 'Google', '3640 South Fulton Ave, 1548', '6147725116'),
(17, 'Google', '3640 South Fulton Ave, 1548', '6147725116'),
(18, 'Google', '3640 South Fulton Ave, 1548', '6147725116'),
(19, 'Sample Support Test', 'Sample Address', '111-111-1111');

-- --------------------------------------------------------

--
-- Table structure for table `housing_support`
--

CREATE TABLE `housing_support` (
  `housing_id` int(11) NOT NULL,
  `business_name` varchar(25) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `housing_support`
--

INSERT INTO `housing_support` (`housing_id`, `business_name`, `phone_number`, `address`) VALUES
(1, 'MM Hope House Inc', '404-298-4300', '4540 Memorial Dr STE D1, Decatur, GA 30032'),
(2, 'Cords of Life', '404-345-8877', '2724 Wesley Chapel Rd, Decatur, GA, 30034');

-- --------------------------------------------------------

--
-- Table structure for table `MH_Table`
--

CREATE TABLE `MH_Table` (
  `MH_ID` int(11) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `l_name` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MH_Table`
--

INSERT INTO `MH_Table` (`MH_ID`, `f_name`, `l_name`, `phone`, `address`) VALUES
(1, 'Bob', 'Smith', '111-222-3333', '1234 No St, No City, NS 12345'),
(2, 'Janet', 'Smith', '222-333-4444', '2345 No St, No City, NS 21312'),
(3, 'Bob', 'Doe', '111-222-3333', 'No Address'),
(4, 'John', 'Smith', '111-222-3333', 'Sample Address');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `login_credentials` (`u_name`);

--
-- Indexes for table `clothing_support`
--
ALTER TABLE `clothing_support`
  ADD PRIMARY KEY (`clothing_id`);

--
-- Indexes for table `food_support`
--
ALTER TABLE `food_support`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `housing_support`
--
ALTER TABLE `housing_support`
  ADD PRIMARY KEY (`housing_id`);

--
-- Indexes for table `MH_Table`
--
ALTER TABLE `MH_Table`
  ADD PRIMARY KEY (`MH_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clothing_support`
--
ALTER TABLE `clothing_support`
  MODIFY `clothing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food_support`
--
ALTER TABLE `food_support`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `housing_support`
--
ALTER TABLE `housing_support`
  MODIFY `housing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `MH_Table`
--
ALTER TABLE `MH_Table`
  MODIFY `MH_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
