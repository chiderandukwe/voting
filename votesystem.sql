-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 05:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$g4m/PfziRBxoM9fvwqiS9OgxAV29w0y8..XHruyEplYPxYnhZJ6bC', 'Voters', 'Projects', 'avatar.png', '2018-04-01 23:00:00'),
(2, 'jump', '$2y$10$ZhCddJTMBdPzLt9e/BEUYOZh1DQP13Pe3f9IkIXrvBd51p76T9He6', 'Gabinus', 'Chinaemezu', 'avatar.png', '0000-00-00 00:00:00'),
(3, 'jump', '$2y$10$ZhCddJTMBdPzLt9e/BEUYOZh1DQP13Pe3f9IkIXrvBd51p76T9He6', 'Gab', 'Inus', 'avatar.png', '0000-00-00 00:00:00'),
(4, 'jump', '$2y$10$ZhCddJTMBdPzLt9e/BEUYOZh1DQP13Pe3f9IkIXrvBd51p76T9He6', 'China', 'Emezu', 'avatar.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 9, 'Uchenna', 'Obgonna', 'Opi51c74ead38850.jpg', 'Student'),
(20, 9, 'James', 'Taiwo', 'Opi51c74ead38850.jpg', 'Student'),
(21, 9, 'Kate', 'Micheal', 'Opi51c74ead38850.jpg', 'Student'),
(22, 9, 'Jane', 'Ajayi', 'Opi51c74ead38850.jpg', 'Student'),
(25, 8, 'Margret', 'Audu', 'Opi51c74ead38850.jpg', 'Student'),
(26, 8, 'Bernard', 'Achie', 'Opi51c74ead38850.jpg', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'Secetary', 1, 2),
(9, 'Welfare', 1, 1),
(10, 'President', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(5, 'pSMQYCjWk5dnmaD', '$2y$10$BhnhcZfQ40Bufse7yKqjoOu0/G4BuqZu2z8It5XpSUcKuTPhMcPxa', 'Harry', 'Den', 'dealer-logo.jpg'),
(6, 'Is92CPnGcvOy4ue', '$2y$10$2eF0UGUbOcH8L1ny0qXE0uw8pMJMNUUozoYSJw0ZXKGlZx8rYDuea', 'Tony', 'Jr', 'favicon.png'),
(7, 'gwvIniKqT5xsWJc', '$2y$10$wY1VSzxdR1X9RpSo3oKodumhkFihorsT2K1zausafYiNnnqYqscje', 'Danny', 'Hill', 'TROLLFACE-DEAL-WITH-IT.png'),
(8, 'IpqGblR7m6tQFhz', '$2y$10$3ov.kMMWqHBO8KBtjix6p.hw642C7Y5w/.r.OGU4VQRiG3qtvRji2', 'Tom', 'Lee', 'e360bc98dbb4441f73d253f90723d9a4.jpg'),
(9, 'fxdNBZ5hoi87rqI', '$2y$10$zrjd/OWccwoGfGA1Uh2moOSEfraxe7ozQt30thOGoYWupwmliVyDC', 'Logan', 'Paul', 'male2.png'),
(10, 'fpivPIEFjTL3qZ5', '$2y$10$SOTAHllEO.CrqSewCSHK4.g9w1xbmbOkiCsbulmrzXn/XlPSMjtlG', 'Angelina', 'Stone', 'female3.jpg'),
(11, 'KkMWRcTZPf7xNgU', '$2y$10$ZYpT8rgNn/ohBX1xx2DU6.QMCSjasqJNTRHpkJ/mFUPCGTk6wLOzW', 'James', 'Cooper', 'male.png'),
(12, 'syG6zQqTNDChdZ1', '$2y$10$iqhdKLw3VAopiEprzWM4letKheG23V.MYrAa330SmfdYE7bbuNFuO', 'Christine', 'Taylor', 'female4.jpg'),
(13, 'KPCDpH5TltFIkAB', '$2y$10$eMVtYY6tGlrhZuSQl7CYXebiS66gT8nuo6pLCk1DMKWI9M0iwABJm', 'Sophia', 'Turner', 'female.jpg'),
(14, 'pCPEeQjhu4KD6MO', '$2y$10$7kUrF.nydR2FZqxaTi1Qze.H.Ef7mSaWbJrH3VZ1FJoCqhKPEv7ZS', 'Martin', 'Gray', 'mask.jpg'),
(15, 'lAk28ZYIDhc1Knx', '$2y$10$jBJ7LbyEXa7E/bwW0lBmHu38Pa8o.bX2WyFxk3Zn3Gk5LbvSe1XMO', 'Thom', 'Yorke', 'profile.jpg'),
(16, 'lqyvXeC1ZIkbJHN', '$2y$10$fO.V4DyY7biwZYWUmHnN0.k1uZa40qdiosGeeOOjXAjdXkwzGNxFC', 'William', 'Carter', 'profile.jpg'),
(17, '8MGHvWJAI2CfeuU', '$2y$10$y1OqYFUHAbkCgWl/vTHoh.dcLyPInG0rXBiN3XXpT5fEBx215sf8.', 'Wilson', 'Cooper', 'profile.jpg'),
(18, 'WAIYnjtQ3bOrv1w', '$2y$10$kcVpX7c7h/yOrQeR2bBDl.OIMBuI3dOQ2SCxALIWwWyAvc9/qv2xC', 'Josh ', 'newvoter', 'Screenshot (9).png'),
(19, 'AymjBtxTqoz4Kpf', '$2y$10$BM6JOBEHCCGauFrbZjZZbOpemRUmCJPMcl2AN6hrXYC5oBjSDTBIO', 'Anabel', 'Jumbo', '8ae2732ebbfe.jpg'),
(20, 'Lv1dy485igeKOIn', '$2y$10$qFsoCHV8CfaGC.EdGlvNrusLwZcmzSOWaTt8J/PlF3uFjJrDWQTXW', 'hola', 'Balu', ''),
(21, 'CcGbiqHpjLRe4hd', '$2y$10$NKXyDX4gqc4i5Y.gJtupvOpDOz4JkUrvmx.0Ki9bP/QLmT21V9Hpq', 'Obinna', 'Ozor', 'crystal3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(81, 5, 26, 8),
(82, 5, 18, 9),
(83, 5, 19, 9),
(84, 5, 21, 9),
(85, 5, 24, 9),
(86, 6, 26, 8),
(87, 6, 18, 9),
(88, 6, 19, 9),
(89, 7, 26, 8),
(90, 7, 18, 9),
(91, 7, 19, 9),
(92, 7, 22, 9),
(93, 8, 25, 8),
(94, 8, 18, 9),
(95, 8, 19, 9),
(96, 9, 26, 8),
(97, 9, 18, 9),
(98, 9, 19, 9),
(99, 9, 23, 9),
(100, 10, 26, 8),
(101, 10, 18, 9),
(102, 10, 22, 9),
(103, 11, 26, 8),
(104, 11, 18, 9),
(105, 11, 22, 9),
(106, 12, 25, 8),
(107, 12, 26, 8),
(108, 12, 18, 9),
(109, 12, 21, 9),
(110, 12, 23, 9),
(111, 13, 25, 8),
(112, 13, 26, 8),
(113, 13, 18, 9),
(114, 13, 20, 9),
(115, 13, 22, 9),
(116, 14, 26, 8),
(117, 14, 18, 9),
(118, 14, 19, 9),
(119, 14, 24, 9),
(120, 15, 25, 8),
(121, 15, 18, 9),
(122, 16, 25, 8),
(123, 16, 18, 9),
(124, 17, 25, 8),
(125, 17, 18, 9),
(126, 18, 26, 8),
(127, 18, 18, 9),
(128, 18, 21, 9),
(129, 18, 22, 9),
(130, 18, 23, 9),
(131, 20, 25, 8),
(132, 20, 20, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
