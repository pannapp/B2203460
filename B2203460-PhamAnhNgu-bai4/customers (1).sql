-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2025 at 04:40 AM
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
-- Database: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(6) UNSIGNED NOT NULL,
  `fullname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(50) NOT NULL,
  `img_profile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullname`, `email`, `Birthday`, `reg_date`, `password`, `img_profile`) VALUES
(0, 'Pham Anh Ngu', 'ngub2203460@student.ctu.edu.vn', '2024-12-13', '2025-02-19 02:50:44', '827ccb0eea8a706c4c34a16891f84e7b', 'Capture.PNG'),
(1, 'Nguyen Van A', 'a1@student.ctu.edu.vn', '0000-00-00', '2025-02-19 03:20:47', '12345\r2', NULL),
(2, 'Tran Thi B', 'a2@student.ctu.edu.vn', '0000-00-00', '2025-02-19 03:31:20', '12345', NULL),
(3, 'Nguyen Van C', 'a3@student.ctu.edu.vn', '0000-00-00', '2025-02-19 03:31:20', '12345', NULL),
(4, 'Tran Thi D', 'a4@student.ctu.edu.vn', '0000-00-00', '2025-02-19 03:31:20', '12345', NULL),
(5, 'Nguyen Van E', 'a5@student.ctu.edu.vn', '0000-00-00', '2025-02-19 03:31:20', '12345', NULL),
(6, 'Tran Thi F', 'a6@student.ctu.edu.vn', '0000-00-00', '2025-02-19 03:31:20', '12345', NULL),
(7, 'Nguyen Van A', 'a7@student.ctu.edu.vn', '0000-00-00', '2025-02-19 03:31:20', '12345', NULL),
(8, 'Tran Thi B', 'a8@student.ctu.edu.vn', '0000-00-00', '2025-02-19 03:31:20', '12345', NULL),
(9, 'Nguyen Van A', 'a9@student.ctu.edu.vn', '0000-00-00', '2025-02-19 03:31:20', '12345', NULL),
(10, 'Tran Thi B', 'a10@student.ctu.edu.vn', '0000-00-00', '2025-02-19 03:31:20', '12345', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
