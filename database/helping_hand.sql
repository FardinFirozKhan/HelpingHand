-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 11:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helping_hand`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'fardin', '1234', '0000-00-00 00:00:00'),
(2, 'Shimul', '1234', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `password`, `profile_image`) VALUES
(1, 'fardin', 'fardinfirozkhan001@gmail.com', '01758269005', '1234', 'images/1685136035147.jpg'),
(2, 'Shimul', 'shimul.cse@green.edu.bd', '01758269007', '1234', 'images/1686696939271.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `helpers`
--

CREATE TABLE `helpers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `helpers`
--

INSERT INTO `helpers` (`id`, `name`, `email`, `phone`, `password`, `profile_image`, `salary`, `description`, `gender`) VALUES
(31, 'tumpa', 'Tumpa@gmail.com', '01758269005', '1234', 'female.jpg', 3000.00, 'q3rfwgrdhfg qewrefsgrdhtfjgyh rw3etgrdhtfjgh t3w4yrehtfyj', 'Female'),
(35, 'Kazi Sabbir ', 'kazi@gmail.com', '01758269008', '12345', 'kazi.jpg', 1500.00, 'Kazi Sabbir is an exceptional maid who brings professionalism, efficiency, and dedication to his work. With years of experience in domestic assistance, Kazi Sabbir has developed a reputation for providing top-notch service to his clients. He possesses excellent organizational skills and a keen eye for detail, ensuring that every task is completed to the highest standard. Kazi Sabbir is known for his friendly and approachable demeanor, making him easy to communicate and work with. Whether it\'s cleaning, cooking, or other household chores, Kazi Sabbir takes pride in delivering exceptional results. With his reliable work ethic and trustworthy nature, clients can rest assured that their home will be well-cared for under Kazi Sabbir\'s diligent care.', 'Male'),
(36, 'Sudiptya Chanda', 'chandasudiptya@gmail.com', '01758269006', '1234', 'sudi.jpg', 1000.00, 'Sudipta Chanda is a highly skilled and dedicated individual who brings a wealth of knowledge and expertise to the field. With a strong background in customer service and a passion for helping others, Sudipta Chanda excels in providing exceptional assistance to clients. With a friendly and approachable demeanor, Sudipta Chanda easily establishes rapport and builds trust with customers. Known for attention to detail and a commitment to excellence, Sudipta Chanda consistently delivers outstanding results in every task undertaken. Whether it\'s cleaning, organizing, or running errands, Sudipta Chanda goes above and beyond to ensure client satisfaction. With a strong work ethic, reliability, and a positive attitude, Sudipta Chanda is the perfect choice for those seeking a dependable and skilled helper.', 'Male'),
(37, 'Rumpa', 'sokhina@gmail.com', '01758269008', '1234', 'female.jpg', 2700.00, 'Rumpa is an exceptional maid who brings professionalism, efficiency, and dedication to her work. With years of experience in domestic assistance, Rumpa has developed a reputation for providing top-notch service to her clients. She possesses excellent organizational skills and a keen eye for detail, ensuring that every task is completed to the highest standard. Rumpa is known for her friendly and approachable demeanor, making her easy to communicate and work with. Whether it\'s cleaning, cooking, or other household chores, Rumpa takes pride in delivering exceptional results. With her reliable work ethic and trustworthy nature, clients can rest assured that their home will be well-cared for under Rumpa\'s diligent care.', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `hire`
--

CREATE TABLE `hire` (
  `customer_id` int(11) NOT NULL,
  `maid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hire`
--

INSERT INTO `hire` (`customer_id`, `maid_id`) VALUES
(1, 20),
(1, 19),
(2, 19),
(2, 20),
(1, 35),
(1, 36),
(2, 35),
(2, 36);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `helper_id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `helper_id`, `service_name`) VALUES
(8, 31, 'Home Cleaning'),
(9, 31, 'Office Cleaning'),
(10, 31, 'Laundry Service'),
(11, 31, 'Cooking'),
(12, 31, 'Green Cleaning'),
(26, 35, 'Home Cleaning'),
(27, 35, 'Office Cleaning'),
(28, 35, 'Laundry Service'),
(29, 35, 'Cooking'),
(30, 35, 'Green Cleaning'),
(34, 36, 'Home Cleaning'),
(35, 36, 'Office Cleaning'),
(36, 36, 'Laundry Service'),
(37, 36, 'Cooking'),
(38, 36, 'Green Cleaning'),
(39, 37, 'Home Cleaning'),
(40, 37, 'Office Cleaning'),
(41, 37, 'Laundry Service');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `helpers`
--
ALTER TABLE `helpers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hire`
--
ALTER TABLE `hire`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `maid_id` (`maid_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `helper_id` (`helper_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `helpers`
--
ALTER TABLE `helpers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hire`
--
ALTER TABLE `hire`
  ADD CONSTRAINT `hire_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `hire_ibfk_2` FOREIGN KEY (`maid_id`) REFERENCES `helpers` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`helper_id`) REFERENCES `helpers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
