-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 07, 2022 at 08:33 PM
-- Server version: 5.6.51
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tolaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `task9`
--

CREATE TABLE `task9` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bootstrap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banned` tinyint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task9`
--

INSERT INTO `task9` (`id`, `image`, `name`, `profession`, `position`, `twitter`, `bootstrap`, `banned`) VALUES
(1, 'sunny', 'Sunny A.', 'UI/UX Expert', 'Lead Author', 'myplaneticket', 'myorange', 0),
(2, 'josh', 'Jos K.', 'ASP.NET Developer', 'Partner &amp; Contributor', 'myplaneticket', 'Walapa', 0),
(3, 'jovanni', 'Jovanni L.', 'PHP Developer', 'Partner &amp; Contributor', 'lodev09', 'lodev09', 1),
(4, 'roberto', 'Roberto R.', 'Rails Developer', 'Partner &amp; Contributor', 'sildur', 'sildur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task10`
--

CREATE TABLE `task10` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task10`
--

INSERT INTO `task10` (`id`, `firstname`, `lastname`, `username`) VALUES
(1, 'Mark', 'Otto', 'mdo'),
(2, 'Jacob', 'Thornton', 'fat'),
(3, 'Larry', 'the Bird', 'twitter'),
(4, 'Larry the Bird', 'Bird', 'twitter');

-- --------------------------------------------------------

--
-- Table structure for table `task11`
--

CREATE TABLE `task11` (
  `id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task11`
--

INSERT INTO `task11` (`id`, `text`) VALUES
(1, '787897987'),
(2, 'fsdfdsfdsfsdfdsf'),
(3, '4234'),
(4, '123'),
(5, '123'),
(6, '123'),
(7, '123'),
(8, '123'),
(9, '123'),
(10, '123');

-- --------------------------------------------------------

--
-- Table structure for table `task13`
--

CREATE TABLE `task13` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task13`
--

INSERT INTO `task13` (`id`, `email`, `password`) VALUES
(1, '123@exemple.ru', '$2y$10$YUlehdJlYhZnqyaVJCmOWewhhswUNt0knVnpaM93cg2ogeMbR/sqi'),
(2, '1233@exemple.ru', '$2y$10$fvA5DIIYa2d/IWAyJe3cX.BByKZYr1/d2ZxsPJ4qpS9wzGm/pM9Su'),
(3, '1234@exemple.ru', '$2y$10$/ZqKJkBhDOWsODkdsg92tutC83riQR/W7NMDPcY8d0FOyYoTTvGc2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task9`
--
ALTER TABLE `task9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task10`
--
ALTER TABLE `task10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task11`
--
ALTER TABLE `task11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task13`
--
ALTER TABLE `task13`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task9`
--
ALTER TABLE `task9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `task10`
--
ALTER TABLE `task10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `task11`
--
ALTER TABLE `task11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `task13`
--
ALTER TABLE `task13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
