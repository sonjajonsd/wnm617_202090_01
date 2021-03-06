-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2020 at 11:34 AM
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
-- Table structure for table `track_habits`
--

CREATE TABLE `track_habits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `color` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_habits`
--

INSERT INTO `track_habits` (`id`, `user_id`, `name`, `color`, `description`, `img`, `date_create`) VALUES
(1, 10, 'Uncorp', 'green', 'Ea laboris Lorem fugiat aliqua ullamco proident reprehenderit nostrud cillum.', '', '2020-02-03 06:59:33'),
(2, 4, 'Gaptec', 'blue', 'Velit excepteur minim eiusmod dolore proident anim ullamco tempor id ullamco elit deserunt.', '', '2020-11-30 07:19:10'),
(3, 6, 'Miraclis', 'green', 'Officia occaecat officia mollit id ipsum consectetur fugiat cillum et pariatur excepteur sit magna.', '', '2020-08-19 02:26:10'),
(4, 3, 'Assistix', 'blue', 'Commodo proident reprehenderit duis officia culpa.', '', '2020-12-07 06:59:17'),
(5, 10, 'Extragene', 'green', 'Ipsum ipsum consectetur id fugiat est non magna.', '', '2020-06-28 04:17:53'),
(6, 5, 'Matrixity', 'red', 'Fugiat pariatur ea minim eu occaecat ut magna sint.', '', '2020-09-20 07:02:57'),
(7, 7, 'Manufact', 'red', 'Ex adipisicing nulla ad minim.', '', '2020-03-07 08:43:19'),
(8, 5, 'Deminimum', 'yellow', 'Enim adipisicing laboris amet velit et labore ut cupidatat eu consectetur quis nulla sunt.', '', '2020-12-12 10:25:56'),
(9, 3, 'Aquamate', 'green', 'Adipisicing aute nisi sunt elit qui ipsum ex fugiat ipsum officia.', '', '2020-02-15 06:30:25'),
(10, 4, 'Combogene', 'green', 'Culpa enim in proident eu quis ex.', '', '2020-08-17 10:38:30'),
(11, 9, 'Typhonica', 'yellow', 'Sint duis qui irure excepteur.', '', '2020-07-19 09:59:14'),
(12, 10, 'Pholio', 'yellow', 'Dolore sunt nostrud ut fugiat cupidatat elit Lorem ea.', '', '2020-02-08 05:49:31'),
(13, 5, 'Zenthall', 'green', 'Officia laborum officia culpa ut.', '', '2020-06-27 04:39:44'),
(14, 5, 'Digique', 'blue', 'Eu laborum et nulla ut do.', '', '2020-04-09 09:20:05'),
(15, 9, 'Cosmetex', 'red', 'Nulla non aute incididunt non minim pariatur adipisicing veniam.', '', '2020-12-02 06:25:06'),
(16, 1, 'Comtour', 'green', 'Ad labore esse nostrud duis tempor duis tempor aliquip ullamco occaecat culpa.', '', '2020-01-31 02:49:21'),
(17, 8, 'Tetratrex', 'red', 'Laborum ex excepteur minim est ut proident ea proident anim irure.', '', '2020-11-10 01:07:47'),
(18, 6, 'Multron', 'blue', 'Magna proident labore nostrud nostrud ad.', '', '2020-09-26 06:46:24'),
(19, 6, 'Artiq', 'blue', 'Laboris tempor officia pariatur ullamco amet duis consequat irure proident esse.', '', '2020-10-03 03:46:43'),
(20, 7, 'Spherix', 'red', 'Eiusmod culpa elit duis sint Lorem labore incididunt quis.', '', '2020-06-24 12:15:56'),
(21, 5, 'Rocklogic', 'green', 'Consequat dolor reprehenderit labore eu sunt officia incididunt aliquip non culpa consequat consectetur voluptate.', '', '2020-03-05 11:53:43'),
(22, 8, 'Terrago', 'green', 'Ipsum ex tempor officia ullamco ullamco esse duis quis duis adipisicing dolore voluptate ad.', '', '2020-11-17 03:46:39'),
(23, 9, 'Intrawear', 'blue', 'Consectetur aliquip cillum pariatur magna.', '', '2020-07-25 07:42:24'),
(24, 10, 'Aeora', 'green', 'Ea commodo nostrud incididunt minim labore labore ad dolor voluptate adipisicing.', '', '2020-07-05 10:12:13'),
(25, 7, 'Konnect', 'blue', 'Id anim occaecat aliqua fugiat laborum.', '', '2020-04-21 02:40:28'),
(26, 6, 'Enquility', 'yellow', 'Id laboris ut cupidatat reprehenderit aliquip sit qui consectetur exercitation consequat do nisi.', '', '2020-07-19 08:51:55'),
(27, 10, 'Radiantix', 'green', 'Mollit exercitation enim aliqua dolore.', '', '2020-12-08 02:46:15'),
(28, 2, 'Vantage', 'red', 'Incididunt ad aliqua ipsum nulla eiusmod proident voluptate velit minim laborum.', '', '2020-03-20 02:37:13'),
(29, 10, 'Animalia', 'blue', 'Aute consectetur reprehenderit dolore aute quis minim qui est veniam occaecat Lorem enim quis.', '', '2020-06-19 01:19:44'),
(30, 2, 'Bluegrain', 'blue', 'Sint aliquip non ea tempor irure.      eu mollit exercitation et sunt exercitation id incididunt.', '', '2020-02-10 03:38:50'),
(31, 1, 'Snowpoke', 'red', 'Elit reprehenderit excepteur nostrud nulla tempor commodo consectetur.', '', '2020-06-27 02:42:25'),
(32, 1, 'Exiand', 'yellow', 'Aliqua occaecat ex commodo non sint proident consectetur incididunt veniam nisi eiusmod elit ex.', '', '2020-01-04 01:46:17'),
(33, 7, 'Biolive', 'green', 'Aliqua voluptate deserunt ullamco culpa et qui veniam eu aliqua officia adipisicing aliquip.', '', '2020-03-11 04:03:28'),
(34, 10, 'Centuria', 'green', 'Non sint enim deserunt commodo minim ut esse incididunt qui consectetur non.', '', '2020-04-21 12:28:52'),
(35, 10, 'Grok', 'blue', 'Esse ex duis Lorem ad consectetur dolore laborum esse.', '', '2020-03-15 06:27:02'),
(36, 9, 'Acrodance', 'red', 'Minim ut amet aliquip ad reprehenderit aute.', '', '2020-10-04 11:17:18'),
(37, 7, 'Xplor', 'green', 'Incididunt commodo pariatur sit adipisicing.', '', '2020-10-15 06:13:33'),
(38, 3, 'Orbalix', 'red', 'Incididunt officia adipisicing ullamco amet sit veniam minim ad.', '', '2020-07-13 04:31:37'),
(39, 8, 'Zilla', 'green', 'Tempor dolor eu aliquip magna reprehenderit quis dolore amet.', '', '2020-04-05 04:39:07'),
(40, 9, 'Cipromox', 'green', 'Laboris culpa do enim nulla ad magna duis.', '', '2020-05-31 11:00:28'),
(41, 5, 'Uxmox', 'red', 'Magna do veniam eiusmod officia consectetur.', '', '2020-10-29 06:56:33'),
(42, 9, 'Apexia', 'green', 'Commodo veniam id cillum mollit in aute excepteur magna culpa cupidatat ullamco.', '', '2020-09-26 10:34:13'),
(43, 2, 'Zaggles', 'blue', 'Laborum consectetur qui adipisicing enim enim sunt sint mollit.', '', '2020-05-31 08:56:12'),
(44, 6, 'Exoswitch', 'green', 'Lorem ipsum elit veniam cupidatat qui et quis.', '', '2020-02-04 05:00:52'),
(45, 9, 'Cowtown', 'blue', 'Excepteur consequat amet excepteur eiusmod labore qui exercitation.', '', '2020-02-28 04:35:01'),
(46, 10, 'Grupoli', 'yellow', 'Culpa consequat ipsum sit ea.', '', '2020-09-06 04:08:12'),
(47, 10, 'Orbiflex', 'yellow', 'Nostrud in ad fugiat fugiat do aute cillum sint.', '', '2020-03-16 12:54:57'),
(48, 6, 'Kenegy', 'blue', 'Non ut nisi Lorem velit.', '', '2020-07-17 01:28:05'),
(49, 8, 'Grainspot', 'blue', 'Ipsum voluptate culpa cillum commodo dolor.', '', '2020-04-09 05:32:42'),
(50, 4, 'Webiotic', 'green', 'Ullamco laborum nisi commodo sunt ea sint eu reprehenderit mollit in velit.', '', '2020-10-12 01:43:02'),
(51, 11, 'Littering', 'green', 'Bad for the environment', 'uploads/1608158201.6338_7987C4F1-4255-4A43-813E-3EE2825E8ACF.jpeg', '2020-12-16 15:36:57'),
(52, 11, 'Road rage', 'red', 'Nobody needs that kind of energy ', 'uploads/1608158229.8554_9F9653BE-B027-44FA-9515-211E1510F072.jpeg', '2020-12-16 15:37:34'),
(53, 11, 'Nose picking', 'yellow', 'It is gross, please don\'t. ', 'uploads/1608158312.1694_F6E3DAA9-D04D-47EB-94AA-CE9AEBE953FE.jpeg', '2020-12-16 15:38:35'),
(54, 11, 'Rule breaking ', 'blue', 'They are not made to be broken. ', 'uploads/1608158327.4644_FF92F33D-C894-4A08-95B0-97AF1395CF63.jpeg', '2020-12-16 15:39:20'),
(56, 13, 'eat too much', 'red', 'getting fat', '', '2020-12-16 21:25:35'),
(57, 14, '', 'red', '', '', '2020-12-17 04:53:45'),
(62, 16, 'Littering', 'green', 'Bad for the environment', 'uploads/1608228179.3879_littering.jpg', '2020-12-17 11:00:23'),
(63, 16, 'Road Rage ', 'blue', 'Nobody needs that kind of energy', 'uploads/1608228048.13_roadrage.jpg', '2020-12-17 11:00:52'),
(64, 17, 'Littering', 'green', 'Bad for the environment', 'uploads/1608229142.3349_littering.jpg', '2020-12-17 11:19:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_habits`
--
ALTER TABLE `track_habits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_habits`
--
ALTER TABLE `track_habits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
