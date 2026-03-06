-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2026 at 11:14 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novaretail_legacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_transactions`
--

CREATE TABLE `customer_transactions` (
  `transaction_id` int NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_email` varchar(150) DEFAULT NULL,
  `customer_age` int DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `purchase_amount` double DEFAULT NULL,
  `clearance_level` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer_transactions`
--

INSERT INTO `customer_transactions` (`transaction_id`, `customer_name`, `customer_email`, `customer_age`, `country`, `purchase_amount`, `clearance_level`) VALUES
(1, 'Alice Martin', 'alice.martin@gmail.com', 28, 'France', 120.5, 2),
(2, 'Juan Perez', 'juan.perez@yahoo.es', 34, 'Spain', 89.9, 3),
(3, 'Luca Rossi', 'luca.rossi@gmail.com', 41, 'Italy', 210, 4),
(4, 'Anna Schmidt', 'anna.schmidt@gmail.de', 30, 'Germany', 75.2, 2),
(5, 'Maria Lopez', 'maria.lopez@gmail.com', 27, NULL, 56.4, 1),
(6, 'John Smith', 'john.smith@gmail.com', 45, 'USA', 300.1, 5),
(7, 'Claire Dubois', 'claire.dubois@gmail.com', 33, 'France', 44.9, 2),
(8, 'Pedro Garcia', 'pedro.garcia@gmail.com', 29, 'Spain', 150, 3),
(9, 'Sofia Martinez', 'sofia.martinez@gmail.com', 38, NULL, 60, 1),
(10, 'Marco Bianchi', 'marco.bianchi@gmail.com', 36, 'Italy', 99.99, 2),
(11, 'Emma Brown', 'emma.brown@gmail.com', 31, 'UK', 134.5, 3),
(12, 'Paul Durand', 'paul.durand@gmail.com', 42, 'France', 199.99, 4),
(13, 'Carlos Sanchez', 'carlos.sanchez@gmail.com', 37, 'Spain', 80, 2),
(14, 'Laura Muller', 'laura.muller@gmail.com', 26, 'Germany', 55.75, 1),
(15, 'David Wilson', 'david.wilson@gmail.com', 40, 'USA', 175.2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_transactions`
--
ALTER TABLE `customer_transactions`
  ADD PRIMARY KEY (`transaction_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
