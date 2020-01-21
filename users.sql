-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2019 at 09:33 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ganu`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_id` int(11) NOT NULL,
  `USER_name` varchar(230) NOT NULL,
  `USER_uid` varchar(230) NOT NULL,
  `USER_email` varchar(100) NOT NULL,
  `USER_pwd` varchar(230) NOT NULL,
  `USER_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_id`, `USER_name`, `USER_uid`, `USER_email`, `USER_pwd`, `USER_num`) VALUES
(2, 'ganesh bhadra', 'ganesh', 'ganesh@gmail.com', '$2y$10$Z4VL61cRQeApQjsAnrucOOSPLeilZQksJX.Rj6tFDGpNQsQcr3ddu', 2147483647),
(3, 'mukku', 'mukku', 'mukku@gmail.com', '$2y$10$Ge7uSFX2.9ivhjncTE2Y3uzuSNchkRd85IsfMQU6OoDS0TpsFpW5C', 2147483647),
(4, 'gabwsw', 'ga', 'gandi@gmail.com', '$2y$10$hD5m94B87AV5JiGYB5zqIuS6KypCwnnB9dV/3/RBcTjLiM0ZbeUNy', 2147483647),
(5, 'mmedcv', 'ganeshrfv', 'rfvrr@ffrf.com', '$2y$10$6W14fUUloi0Al41Ul1lpDuVQ3ORuzQHq2N4biavnuMbiTuI3Y8bem', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USER_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
