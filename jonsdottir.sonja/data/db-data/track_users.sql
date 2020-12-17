-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2020 at 11:35 AM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `pet_peeve` varchar(128) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `password`, `img`, `pet_peeve`, `date_create`) VALUES
(1, 'Beatriz Goff', 'user1', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/bbb/fff/?text=user1', 'Rude people', '2020-09-12 09:20:57'),
(2, 'Melinda Monroe', 'user2', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/bbb/fff/?text=user2', 'Rude people', '2020-04-02 02:32:07'),
(3, 'Victoria Fitzpatrick', 'user3', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608176926.2083_megan.jpg', 'Cursing!', '2020-10-23 02:08:15'),
(4, 'Joanna Reid', 'user4', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/bbb/fff/?text=user4', 'Rude people', '2020-02-21 01:36:36'),
(5, 'Rosales Schultz', 'user5', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/bbb/fff/?text=user5', 'Tardiness', '2020-04-30 08:32:17'),
(6, 'Hays Delacruz', 'user6', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/bbb/fff/?text=user6', 'Cursing!', '2020-11-09 03:14:14'),
(7, 'Gould Tate', 'user7', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/bbb/fff/?text=user7', 'Rude people', '2020-10-24 12:37:29'),
(8, 'Hampton Cruz', 'user8', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/bbb/fff/?text=user8', 'Littering', '2020-07-01 11:03:20'),
(9, 'Gena Norton', 'user9', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/bbb/fff/?text=user9', 'Littering', '2020-10-17 08:28:28'),
(10, 'Wilcox Barton', 'user10', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/bbb/fff/?text=user10', 'Littering', '2020-02-19 04:36:58'),
(11, 'David Pearson', 'user0', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608158172.3989_A706570E-08EF-49D0-9353-9945C9BA3AA5.jpeg', 'Chewing sounds', '2020-12-16 15:35:15'),
(12, '', 'egill', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608160904.1774_user.jpg', '', '2020-12-16 16:21:35'),
(13, 'lina', 'lina', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/bbb/fff/?text=lina', '12345', '2020-12-16 21:24:44'),
(14, '', '1233', '1a1dc91c907325c69271ddf0c944bc72', '', '', '2020-12-17 02:37:34'),
(15, 'Sonja Jonsdottir', 'test2', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608226103.7589_sonja.jpg', 'Slurping', '2020-12-17 10:27:37'),
(16, 'Sonja Jonsdottir', 'test1', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608227940.9394_sonja.jpg', 'Slurping', '2020-12-17 10:58:20'),
(17, 'Sonja Jonsdottir', 'test3', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608229045.8221_sonja.jpg', 'Slurping', '2020-12-17 11:17:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
