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
-- Table structure for table `track_locations`
--

CREATE TABLE `track_locations` (
  `id` int(11) NOT NULL,
  `habit_id` int(11) NOT NULL,
  `lat` decimal(9,6) NOT NULL,
  `lng` decimal(9,6) NOT NULL,
  `appalled_rating` int(11) NOT NULL,
  `description` text NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_locations`
--

INSERT INTO `track_locations` (`id`, `habit_id`, `lat`, `lng`, `appalled_rating`, `description`, `date_create`) VALUES
(1, 46, 37.753400, -122.453660, 1, 'Incididunt ut fugiat nulla officia et. Aute aute veniam excepteur duis. Magna ipsum sunt cupidatat in voluptate deserunt ipsum do ut.', '2020-07-23 10:43:19'),
(2, 47, 37.747790, -122.396150, 3, 'Sit occaecat ipsum aliquip consectetur ut irure dolore voluptate velit Lorem reprehenderit enim occaecat. Ipsum excepteur proident ipsum exercitation consequat enim veniam. Eu et excepteur aliquip non mollit cupidatat cupidatat cillum in culpa voluptate Lorem.', '2020-02-22 05:20:09'),
(3, 30, 37.730050, -122.509980, 2, 'Nostrud esse exercitation exercitation occaecat in est. Esse deserunt dolor incididunt dolor deserunt incididunt. Velit aliqua ea cillum duis do quis est dolor ut laborum consectetur est ad.', '2020-08-03 11:10:23'),
(4, 25, 37.766550, -122.360200, 4, 'Consectetur deserunt aliqua et exercitation ullamco amet labore consectetur veniam laborum laboris. Laborum qui est labore cillum do proident enim ullamco id sint. Velit proident cillum consequat culpa officia Lorem enim do amet cillum.', '2020-09-05 02:53:59'),
(5, 5, 37.775770, -122.371600, 4, 'Deserunt mollit consectetur dolor in consectetur Lorem reprehenderit officia eiusmod minim irure exercitation aliquip in. Consequat non id cillum est pariatur officia elit esse ipsum cillum ut duis reprehenderit ipsum. Sunt ad tempor adipisicing id sit minim.', '2020-09-05 05:32:23'),
(6, 21, 37.760760, -122.375130, 4, 'Sunt dolore est occaecat laboris qui officia esse sunt irure dolore. Commodo cillum in ex anim dolore id non mollit nulla fugiat. Aute do ex id minim eiusmod.', '2020-07-19 07:38:07'),
(7, 8, 37.745840, -122.496710, 4, 'Deserunt cillum ullamco dolor dolore ut. Est labore ullamco culpa culpa elit cillum id incididunt sunt. Sunt et laboris reprehenderit magna do ipsum fugiat minim quis nisi.', '2020-11-15 01:47:40'),
(8, 49, 37.730730, -122.384610, 3, 'Proident sint enim ea amet labore ipsum. Eu qui sint non deserunt amet enim pariatur nisi id aliquip tempor veniam cillum. Pariatur nulla enim amet id adipisicing elit sunt.', '2020-10-05 04:58:24'),
(9, 40, 37.715480, -122.441360, 2, 'Minim excepteur laborum veniam ex minim ea consequat. Eiusmod ullamco sit commodo commodo consectetur aliqua. Consequat exercitation magna cillum aliqua incididunt.', '2020-09-15 06:36:17'),
(10, 43, 37.777860, -122.394420, 2, 'Nostrud in labore duis in occaecat velit mollit quis officia sit. Irure eu minim ipsum elit qui elit duis. Ut proident fugiat culpa non ullamco sit dolor nisi reprehenderit enim velit excepteur pariatur.', '2020-08-11 12:45:34'),
(11, 4, 37.724310, -122.379610, 2, 'Id irure sit dolore cupidatat eu cillum adipisicing aute labore. Duis in officia deserunt est occaecat id ipsum reprehenderit proident. Est nisi in fugiat exercitation adipisicing tempor aliqua veniam non mollit.', '2020-01-03 05:10:51'),
(12, 49, 37.756880, -122.381220, 1, 'Aliqua dolore proident dolore irure fugiat excepteur culpa exercitation aute. Magna ut ut deserunt laboris velit nisi consequat ad tempor. Laborum esse cillum anim nisi nisi veniam.', '2020-07-30 05:15:24'),
(13, 40, 37.740700, -122.420430, 4, 'Elit duis amet velit enim consectetur voluptate id elit. Laborum sit anim amet in proident aliquip cupidatat nulla. Id veniam commodo fugiat ut sint.', '2020-09-03 07:18:16'),
(14, 15, 37.778370, -122.464910, 4, 'Anim ipsum laboris reprehenderit tempor sit adipisicing aliqua qui labore Lorem enim dolore consequat exercitation. Reprehenderit laboris nisi est magna sit ut aliquip esse et aliquip elit enim in. Culpa ad do velit sit id aliquip aute cupidatat aliqua et consectetur deserunt do mollit.', '2020-04-21 11:09:44'),
(15, 26, 37.716430, -122.407150, 5, 'Nulla excepteur ex est in enim sit occaecat aliqua laborum ea do. Eiusmod veniam reprehenderit sint veniam proident ex est amet sit non dolore cillum. Labore ex deserunt adipisicing qui non.', '2020-07-11 12:55:59'),
(16, 46, 37.751600, -122.430720, 3, 'Irure ex ex non mollit nisi ex aute excepteur fugiat. Ut est ad ipsum aute aliqua est tempor enim sint eu nostrud nostrud quis. Commodo dolore velit sit commodo elit voluptate dolore dolore qui tempor proident magna do labore.', '2020-01-21 11:57:31'),
(17, 15, 37.762980, -122.422810, 4, 'Esse sint consequat est et aute do duis magna cupidatat laborum adipisicing anim magna labore. Minim eiusmod et officia sunt Lorem voluptate nostrud excepteur amet aute. Dolore veniam proident elit veniam voluptate duis consequat culpa nisi duis.', '2020-08-29 04:30:58'),
(18, 38, 37.741920, -122.491560, 1, 'Eiusmod enim veniam adipisicing occaecat cupidatat eiusmod occaecat. Tempor aliqua enim aute esse sint. Culpa incididunt eu duis in qui sunt ex duis nisi amet aliquip.', '2020-01-17 02:37:00'),
(19, 44, 37.765870, -122.491300, 2, 'Laborum id voluptate pariatur consequat consequat. Eiusmod cillum consequat nulla sunt nisi ex duis incididunt et ullamco reprehenderit dolor. Cillum veniam ipsum dolore excepteur et.', '2020-09-21 05:09:51'),
(20, 18, 37.766430, -122.361560, 4, 'Nostrud officia veniam sint ea do tempor esse proident ut do deserunt ullamco amet. Cillum ea exercitation labore occaecat mollit. Velit velit do aliqua minim officia proident laboris occaecat eiusmod ullamco incididunt cupidatat elit.', '2020-02-29 07:56:00'),
(21, 36, 37.781610, -122.481080, 3, 'Duis ex pariatur fugiat enim sint anim quis et. Reprehenderit nulla in reprehenderit proident dolore sunt duis officia exercitation ad quis. Eiusmod laboris deserunt dolore cupidatat occaecat.', '2020-01-17 06:56:47'),
(22, 32, 37.768350, -122.382440, 4, 'Pariatur tempor ut duis Lorem do Lorem mollit minim quis ipsum tempor sit occaecat. Ad velit elit quis esse voluptate nulla fugiat minim ex fugiat. Quis amet qui laboris amet eiusmod culpa ut.', '2020-11-09 07:18:08'),
(23, 8, 37.732240, -122.467520, 4, 'Dolor fugiat laborum excepteur dolor non dolore. Velit in dolore Lorem laboris ad ut aliqua adipisicing anim voluptate reprehenderit deserunt nulla laborum. Ullamco magna elit aliqua exercitation velit adipisicing culpa veniam dolore adipisicing nostrud incididunt sit.', '2020-02-01 03:34:32'),
(24, 36, 37.730050, -122.481230, 4, 'Velit laboris laborum quis deserunt voluptate fugiat ullamco duis sit est. Consequat exercitation nisi amet labore eiusmod occaecat officia et minim occaecat labore. Anim excepteur ea officia deserunt dolore aute velit pariatur laborum velit amet culpa voluptate laborum.', '2020-01-26 10:53:56'),
(25, 5, 37.744870, -122.503640, 5, 'Non fugiat quis ad ad amet elit laborum commodo. Duis ullamco esse consectetur nulla consequat Lorem aute. Ea elit ut nulla tempor voluptate ex duis nulla qui ex.', '2020-11-22 04:59:32'),
(26, 10, 37.716530, -122.406170, 2, 'Non et consequat dolore irure mollit exercitation sint dolore exercitation irure. Laboris proident officia laborum voluptate ut labore aliqua non aliqua commodo esse incididunt. Ullamco consequat aliqua fugiat magna.', '2020-08-12 11:23:52'),
(27, 22, 37.754450, -122.374330, 2, 'Pariatur ullamco nulla voluptate ipsum elit amet dolor. Nulla est quis nostrud velit eu. Fugiat anim dolor elit consectetur.', '2020-09-08 09:19:14'),
(28, 21, 37.739010, -122.393830, 2, 'Do labore mollit mollit nulla. Mollit mollit ullamco ea culpa sint elit id tempor reprehenderit occaecat anim qui. Aliqua fugiat enim ullamco velit reprehenderit.', '2020-07-05 06:11:35'),
(29, 30, 37.719330, -122.496660, 4, 'Eu qui fugiat eiusmod elit voluptate minim ex tempor eiusmod dolor est nulla. Aute reprehenderit commodo consequat anim velit nisi in ex tempor quis est do mollit. Excepteur in ut adipisicing consequat velit tempor cupidatat culpa eu fugiat.', '2020-10-22 05:13:17'),
(30, 7, 37.765880, -122.361660, 1, 'Non nulla ut pariatur officia ipsum. Incididunt consequat amet veniam aliqua esse excepteur sunt eu. Laboris aute duis consequat ea nulla fugiat occaecat.', '2020-08-26 11:37:04'),
(31, 46, 37.744220, -122.411660, 1, 'Excepteur duis anim ipsum deserunt reprehenderit ex laboris nisi ex consequat exercitation pariatur aute sunt. Deserunt consectetur est ipsum deserunt elit elit ullamco. Lorem nulla consectetur consectetur esse.', '2020-10-29 01:43:40'),
(32, 27, 37.763890, -122.387280, 4, 'Incididunt occaecat aliquip adipisicing consequat cupidatat consectetur laboris do esse pariatur quis excepteur esse. Nisi dolore mollit magna eiusmod labore cupidatat. In commodo irure elit qui ex.', '2020-07-25 09:24:50'),
(33, 39, 37.770590, -122.472460, 2, 'Magna non enim duis nulla eu aliqua in eiusmod ullamco nisi officia officia officia. Incididunt cupidatat ullamco non pariatur elit in laborum amet exercitation incididunt sit laboris. Sit occaecat id ut esse voluptate cupidatat elit laborum exercitation consequat velit ullamco.', '2020-10-19 07:25:35'),
(34, 1, 37.753440, -122.360160, 1, 'Sint deserunt qui tempor est excepteur ullamco pariatur ut nulla. Anim duis ipsum ea velit culpa. Quis quis enim anim cillum nostrud mollit consequat ex.', '2020-04-09 03:56:20'),
(35, 7, 37.717650, -122.484540, 4, 'Sunt non anim cupidatat qui labore anim labore ad aliquip sunt est. Deserunt ad ut aliqua anim ullamco exercitation ex. Ipsum Lorem qui consectetur fugiat commodo consectetur cupidatat tempor quis pariatur enim ex.', '2020-01-21 06:47:37'),
(36, 35, 37.767670, -122.480180, 3, 'Lorem reprehenderit excepteur duis sint nisi pariatur sit ex ipsum. Veniam velit ea voluptate eu excepteur elit. Cupidatat ut ut ad enim adipisicing duis tempor dolor magna in exercitation occaecat reprehenderit.', '2020-09-27 04:39:20'),
(37, 4, 37.778730, -122.378610, 3, 'Ea est anim sit deserunt duis consequat quis sunt. Sunt mollit magna adipisicing deserunt et non reprehenderit ad elit elit cupidatat ea reprehenderit reprehenderit. Qui labore ad irure magna quis et.', '2020-03-24 05:28:50'),
(38, 46, 37.740660, -122.462860, 4, 'Consectetur anim consequat quis aute. Culpa consequat qui eu in. Dolor labore enim nulla sint tempor et laborum in.', '2020-01-25 09:20:04'),
(39, 19, 37.738030, -122.461570, 5, 'Ipsum irure minim quis nostrud quis. Consectetur amet proident dolore ullamco consectetur minim ea ex aute qui id laborum. Excepteur deserunt exercitation fugiat do mollit veniam.', '2020-10-01 01:50:49'),
(40, 36, 37.784770, -122.511530, 3, 'Veniam ipsum aliquip incididunt reprehenderit sint id incididunt aliquip labore adipisicing commodo velit dolore. Consectetur fugiat officia exercitation ad excepteur exercitation esse est nostrud culpa aliquip. In anim minim duis do cupidatat sint eu esse pariatur adipisicing exercitation pariatur pariatur nisi.', '2020-02-18 02:44:32'),
(41, 8, 37.719700, -122.419140, 3, 'Ipsum consectetur cillum esse labore nostrud eu esse ullamco ipsum consequat. Nostrud aliqua id culpa cupidatat nulla Lorem eu ex. Ipsum eu aliqua eu do et sint.', '2020-07-28 12:27:27'),
(42, 10, 37.748660, -122.503550, 1, 'Id exercitation id cupidatat sunt esse. Ex est cillum reprehenderit consectetur qui sunt nostrud tempor ad minim sint cillum eiusmod. Adipisicing commodo aliqua id Lorem.', '2020-09-05 03:57:37'),
(43, 11, 37.730390, -122.512750, 1, 'Excepteur anim exercitation aute magna officia nostrud ullamco. Ullamco voluptate nostrud magna officia eu velit laborum amet enim proident occaecat dolor anim. Occaecat nostrud eiusmod est officia esse dolor occaecat ut ullamco.', '2020-08-18 03:35:30'),
(44, 5, 37.779200, -122.371430, 4, 'Officia veniam consequat qui cillum non cupidatat mollit duis consequat commodo id occaecat ea aliqua. Occaecat consequat Lorem aliqua fugiat sint do irure officia. Cupidatat sunt commodo ullamco culpa esse duis.', '2020-02-13 06:17:27'),
(45, 39, 37.744650, -122.436140, 5, 'Laborum veniam excepteur laborum fugiat sit et tempor dolore nisi consequat reprehenderit ad. Et labore pariatur cillum ut. Anim non pariatur nostrud dolore sunt aute ad incididunt mollit exercitation.', '2020-02-15 10:51:29'),
(46, 11, 37.755930, -122.476510, 3, 'Labore eiusmod aliqua aute non reprehenderit ad quis aliquip veniam dolore nulla velit. Aute aliquip laboris fugiat nulla eiusmod deserunt ex ex mollit qui anim non qui deserunt. Lorem commodo ea nostrud est.', '2020-07-02 05:08:09'),
(47, 50, 37.744980, -122.359650, 3, 'Proident excepteur veniam est non eu. Nulla laboris officia fugiat sint. Adipisicing non proident ut ad dolore amet occaecat cupidatat nostrud tempor ullamco occaecat.', '2020-01-19 08:42:12'),
(48, 38, 37.767540, -122.499570, 2, 'Tempor ut et aliquip ea. Ea velit adipisicing quis sint. Labore magna pariatur Lorem consectetur nisi fugiat qui consectetur nisi.', '2020-01-01 11:04:14'),
(49, 15, 37.779850, -122.373810, 5, 'Tempor consequat occaecat pariatur aliqua sint. Et elit irure quis sit enim est et non ad deserunt. Minim esse fugiat excepteur ipsum dolore enim sit voluptate incididunt.', '2020-05-18 06:40:04'),
(50, 48, 37.754050, -122.415220, 4, 'Duis amet nisi reprehenderit aute amet pariatur excepteur sint mollit velit est aute. Nulla pariatur fugiat sunt eiusmod officia. Et reprehenderit sit aliqua do cillum minim cupidatat sunt consequat Lorem excepteur adipisicing.', '2020-09-07 08:12:38'),
(51, 40, 37.746270, -122.505570, 4, 'Reprehenderit velit Lorem sunt dolor ipsum duis aliquip pariatur quis consequat aute aliqua ut. Ipsum nostrud sint id dolore id. Sit et deserunt ad pariatur enim ad ipsum aliqua aliquip elit non.', '2020-09-13 12:57:31'),
(52, 38, 37.735700, -122.482590, 4, 'Ex cillum non est fugiat quis voluptate enim adipisicing Lorem aute occaecat et Lorem aliquip. Laborum cupidatat officia esse aliquip qui id amet. Magna exercitation deserunt elit excepteur eiusmod.', '2020-01-27 02:34:43'),
(53, 1, 37.721360, -122.487230, 5, 'Elit reprehenderit qui irure laboris sit consequat ad veniam deserunt aute adipisicing. Ipsum id laboris cillum ad veniam enim. Elit nulla enim eu qui magna velit eiusmod non eu sit laborum amet.', '2020-03-31 10:02:49'),
(54, 2, 37.713170, -122.412190, 5, 'Anim irure eiusmod anim deserunt do fugiat mollit proident. Minim eiusmod do anim velit. Lorem et anim aliquip nostrud deserunt voluptate non est ut nisi laborum.', '2020-05-18 05:32:26'),
(55, 13, 37.755920, -122.437830, 1, 'Non aliqua cillum anim esse excepteur excepteur minim proident. Id anim cupidatat ipsum proident consequat qui ullamco irure. Aliqua sit minim ea ad magna qui.', '2020-04-11 05:48:33'),
(56, 50, 37.761330, -122.454330, 3, 'In amet ex ipsum ullamco ipsum ex enim irure laborum esse. Pariatur veniam dolor deserunt nulla dolore incididunt nostrud culpa voluptate proident. Magna enim ea ea dolore.', '2020-10-09 10:03:33'),
(57, 37, 37.759540, -122.393830, 2, 'Ut culpa reprehenderit commodo in. Esse consectetur velit et excepteur tempor nostrud deserunt nulla. Id dolore sint velit magna nostrud consectetur incididunt.', '2020-10-14 05:44:06'),
(58, 6, 37.762850, -122.429180, 3, 'Ad exercitation eiusmod proident excepteur veniam ullamco culpa sunt ipsum est ex. Aute ad velit aliqua laborum ex ex Lorem non laborum ea pariatur. Magna laboris velit elit est duis ea ea ex magna laboris reprehenderit quis ea.', '2020-07-18 06:24:01'),
(59, 21, 37.783700, -122.361290, 5, 'Cupidatat amet laboris adipisicing cillum velit eu eu esse ipsum ex ullamco irure. Ipsum pariatur ut dolor non reprehenderit. Magna ipsum est aliquip nulla non ullamco adipisicing sunt dolor laborum ipsum ex ullamco.', '2020-02-17 07:26:14'),
(60, 38, 37.753700, -122.358340, 2, 'Voluptate reprehenderit eu consectetur quis occaecat occaecat consequat. Reprehenderit culpa exercitation velit est fugiat occaecat ipsum qui. In qui pariatur duis elit tempor et sint irure tempor ut mollit.', '2020-09-15 12:57:21'),
(61, 50, 37.743310, -122.409830, 1, 'Anim laborum cupidatat voluptate cillum. Ex aliqua sint incididunt aliqua reprehenderit fugiat tempor cupidatat anim proident aliqua sit aliquip. Sint consectetur ad mollit nostrud consequat duis quis veniam tempor proident ad ad veniam nulla.', '2020-01-05 06:15:30'),
(62, 22, 37.766560, -122.436260, 5, 'Occaecat laborum eu nulla adipisicing velit ipsum ex laborum qui et. Et minim tempor ex et est reprehenderit. Dolore deserunt non in labore anim ipsum ea fugiat pariatur.', '2020-03-23 06:03:33'),
(63, 27, 37.751760, -122.377000, 1, 'Elit id ut labore aliqua ex enim eu. Ipsum incididunt sunt deserunt in magna voluptate dolore commodo dolore aliqua tempor laborum ullamco irure. Anim exercitation et eu mollit nulla incididunt ex nulla.', '2020-03-28 04:59:57'),
(64, 30, 37.743270, -122.390380, 2, 'Eu incididunt ad labore non laborum sint commodo excepteur. Ut dolore nostrud dolor sunt consectetur consequat. Id ea magna anim cupidatat ipsum voluptate sint.', '2020-10-31 04:31:54'),
(65, 13, 37.731670, -122.381620, 1, 'Commodo officia dolore enim qui aliquip esse nisi adipisicing est deserunt elit commodo aute et. Mollit culpa magna velit in deserunt. Quis commodo tempor enim enim consequat Lorem velit ipsum deserunt sint reprehenderit sit nisi eiusmod.', '2020-08-15 03:34:34'),
(66, 3, 37.781200, -122.450800, 1, 'Amet non do consectetur officia sint cupidatat reprehenderit officia. Ea occaecat laboris aute id duis est voluptate. Ad quis labore Lorem sit aute tempor.', '2020-08-30 11:05:40'),
(67, 44, 37.710040, -122.373840, 2, 'Aliquip reprehenderit non irure aliqua nisi voluptate fugiat labore aute duis et nulla ipsum eu. Qui nulla duis ipsum cillum. Ipsum ullamco occaecat tempor eu do laboris incididunt dolor ad duis culpa.', '2020-02-10 12:52:22'),
(68, 7, 37.771330, -122.454070, 4, 'Laborum culpa elit nisi aliquip. Reprehenderit incididunt deserunt commodo aliqua laborum occaecat nostrud ut minim. Incididunt dolor dolore sint culpa aute est qui ut commodo ipsum eu eu nostrud non.', '2020-10-17 07:11:07'),
(69, 20, 37.748980, -122.438410, 1, 'Qui in occaecat dolore amet excepteur do velit incididunt esse officia excepteur fugiat nisi aliqua. Cupidatat ex eu tempor ut non exercitation fugiat ad eiusmod dolore consectetur. Minim anim ex cillum aliquip esse non pariatur.', '2020-02-11 06:47:52'),
(70, 9, 37.758770, -122.457200, 2, 'Irure sunt adipisicing duis deserunt. Excepteur ea aute officia culpa sint. Nostrud tempor deserunt amet in occaecat nisi ex aute incididunt exercitation.', '2020-04-16 03:14:30'),
(71, 28, 37.754940, -122.483340, 4, 'Exercitation id deserunt non tempor. Nulla dolore labore ad anim. Et amet culpa minim eu sunt.', '2020-02-16 03:48:59'),
(72, 43, 37.717470, -122.484010, 5, 'Mollit aliquip consectetur adipisicing duis cupidatat exercitation minim pariatur eu. Est esse anim ut cillum cillum ea do qui cillum occaecat do adipisicing irure. Ex dolor ipsum quis aliqua nisi esse proident sint.', '2020-01-07 07:42:28'),
(73, 25, 37.760980, -122.492680, 4, 'Irure dolore duis dolor consequat amet pariatur pariatur est mollit eu est. Ex pariatur culpa commodo labore eu cillum magna occaecat cillum anim. Aliquip culpa duis enim qui.', '2020-07-26 02:58:49'),
(74, 19, 37.739600, -122.373630, 4, 'Quis Lorem cupidatat do dolor non irure sunt minim sint. Aliqua qui dolor elit velit veniam anim exercitation. Esse eiusmod in nulla duis sit irure ipsum reprehenderit nisi culpa id.', '2020-04-12 08:26:45'),
(75, 10, 37.759180, -122.405470, 1, 'Sint anim officia incididunt Lorem duis veniam exercitation labore aliquip non irure irure velit nulla. Consectetur dolor in tempor aliqua laboris voluptate culpa sit voluptate minim eu. In Lorem anim occaecat incididunt veniam proident elit.', '2020-02-10 11:24:22'),
(76, 38, 37.743180, -122.458270, 2, 'Do mollit exercitation sunt dolor ad minim aute. Aute do laborum ea do veniam sunt tempor commodo quis ad culpa. Ipsum veniam tempor amet velit reprehenderit nisi nostrud in occaecat.', '2020-04-10 07:09:46'),
(77, 42, 37.729060, -122.509260, 5, 'Proident cupidatat pariatur laboris exercitation veniam et ullamco nulla incididunt. Sint culpa sit nisi sunt voluptate consectetur non nostrud in aliquip excepteur cillum proident. Fugiat consequat ea reprehenderit sunt irure elit excepteur adipisicing deserunt duis deserunt tempor velit amet.', '2020-10-29 10:33:32'),
(78, 5, 37.742590, -122.456220, 3, 'Cillum pariatur laborum et deserunt consectetur cillum officia eu officia excepteur anim. Commodo Lorem sunt tempor aliqua incididunt adipisicing Lorem adipisicing ut. Laborum reprehenderit adipisicing eiusmod cupidatat voluptate eiusmod nisi dolore duis.', '2020-04-16 11:08:19'),
(79, 26, 37.723910, -122.457020, 4, 'Occaecat nostrud velit esse minim eiusmod exercitation enim sit elit exercitation eu consectetur minim. Ad est velit enim aliquip anim non eiusmod amet eiusmod. Laboris reprehenderit enim sit adipisicing est quis sint nisi.', '2020-02-17 08:03:32'),
(80, 30, 37.774610, -122.366430, 1, 'Laboris do esse ad cillum ipsum amet Lorem ex enim. Ad pariatur eu exercitation elit laboris aliqua nostrud duis duis culpa. Nulla eiusmod laborum dolore voluptate tempor.', '2020-10-14 07:49:45'),
(81, 30, 37.783050, -122.452980, 3, 'Velit ea amet commodo minim ex irure. Laboris ipsum nulla ut commodo labore veniam commodo voluptate nisi voluptate amet. Ullamco do aliquip tempor incididunt laboris elit consectetur nisi nulla sint.', '2020-03-20 02:42:25'),
(82, 49, 37.761510, -122.501580, 4, 'Velit irure anim proident irure adipisicing dolor consequat ipsum exercitation ipsum elit est amet ipsum. Laborum aute adipisicing est irure aliqua aliquip ex irure. Ut dolore ullamco laborum incididunt adipisicing deserunt.', '2020-03-28 07:05:28'),
(83, 15, 37.710470, -122.434570, 3, 'Nulla reprehenderit quis et quis et anim exercitation. Dolor minim aliqua sit aliquip et sit proident tempor eiusmod anim nulla pariatur ut fugiat. Aliquip cupidatat proident tempor nisi fugiat do.', '2020-08-01 05:20:39'),
(84, 34, 37.769430, -122.361260, 2, 'Enim duis esse elit adipisicing commodo deserunt duis culpa amet ex ipsum nulla non. Eiusmod dolor do commodo incididunt nostrud deserunt sint in officia ex non adipisicing ex nostrud. Nisi est nulla velit deserunt in ex voluptate Lorem dolore ut nulla mollit veniam tempor.', '2020-03-22 10:16:20'),
(85, 45, 37.766190, -122.382510, 2, 'Et fugiat dolor irure aliqua mollit officia amet velit enim cupidatat laborum culpa. Excepteur aliqua in in minim. Voluptate elit excepteur et proident occaecat cillum aute deserunt deserunt.', '2020-05-17 05:33:23'),
(86, 10, 37.728810, -122.440460, 3, 'Nisi culpa qui labore veniam ad reprehenderit deserunt. Sunt dolor nisi reprehenderit ut culpa esse ullamco aliqua laboris cupidatat sunt esse. Do tempor qui exercitation tempor dolore cillum adipisicing occaecat velit.', '2020-10-24 12:27:00'),
(87, 36, 37.740040, -122.379260, 2, 'Consectetur ipsum in sunt tempor deserunt ex duis amet proident nostrud. Aliqua sit Lorem ipsum adipisicing. Duis sit aute esse irure nisi pariatur enim mollit veniam eu.', '2020-09-15 07:19:35'),
(88, 40, 37.721060, -122.466790, 4, 'Anim nulla magna occaecat amet laborum deserunt cupidatat dolor magna amet eiusmod. Nulla deserunt ad ullamco nostrud irure aliqua voluptate Lorem. Voluptate aliquip nulla occaecat mollit sunt commodo ipsum elit adipisicing et commodo adipisicing.', '2020-10-06 07:27:20'),
(89, 42, 37.766500, -122.437180, 1, 'Aliquip mollit magna eiusmod amet adipisicing commodo commodo. Dolor nisi dolore proident tempor exercitation quis qui voluptate ipsum. Consequat quis duis enim id minim duis aliquip qui et quis dolore.', '2020-09-15 10:43:13'),
(90, 26, 37.727820, -122.377610, 5, 'Fugiat nisi nisi cillum laborum aliqua culpa labore. Consequat mollit veniam nostrud anim id non esse consectetur sunt aliquip dolore non officia. Enim ut eiusmod eiusmod esse duis dolor excepteur anim consequat.', '2020-10-01 08:32:36'),
(91, 6, 37.741560, -122.486740, 1, 'Occaecat incididunt incididunt velit fugiat id cupidatat incididunt qui labore. Irure id amet deserunt sunt exercitation eiusmod proident et mollit aute aute do laborum proident. Aliqua amet culpa ullamco excepteur.', '2020-10-01 10:58:05'),
(92, 15, 37.740640, -122.492830, 3, 'Ex veniam id minim dolore do. Lorem minim sunt irure do eu voluptate incididunt in. Esse esse deserunt dolor adipisicing fugiat occaecat proident fugiat pariatur.', '2020-01-31 03:31:03'),
(93, 31, 37.717640, -122.463510, 1, 'Sint laboris excepteur nostrud do sit nisi ea cillum commodo elit do elit. Magna cillum cillum nisi duis consequat officia mollit veniam ex ea velit. Deserunt nisi Lorem magna nulla in velit esse dolor occaecat.', '2020-07-15 07:02:22'),
(94, 12, 37.740610, -122.513580, 3, 'Mollit ad do adipisicing ad consequat et veniam non officia aute est laborum sunt. Cupidatat do irure pariatur cupidatat occaecat commodo culpa cillum commodo anim. Est in deserunt irure do dolor.', '2020-04-25 02:14:34'),
(95, 4, 37.767350, -122.411590, 5, 'Consectetur eiusmod consectetur cupidatat quis pariatur aliqua consectetur ad nisi velit. Pariatur irure ea amet sit consequat elit qui. Adipisicing enim nulla velit mollit nostrud duis enim ipsum aute nulla.', '2020-06-14 06:36:06'),
(96, 4, 37.783180, -122.391560, 5, 'Aliqua duis ex adipisicing cillum cupidatat sit ut irure in aliqua sit. Magna laborum exercitation nulla minim ad consectetur voluptate aliquip duis ullamco elit consectetur nostrud. Sit labore ut elit velit amet velit in sit ipsum incididunt.', '2020-04-14 11:07:19'),
(97, 50, 37.739810, -122.386590, 2, 'Veniam est pariatur anim sint mollit voluptate mollit exercitation sit. Adipisicing nulla mollit laborum aliqua laboris ea elit aute. Quis officia ad do sint aliqua cupidatat est Lorem.', '2020-03-28 09:55:15'),
(98, 5, 37.771560, -122.441710, 2, 'Mollit Lorem do sit eu. Lorem Lorem id veniam non sunt ex voluptate. In sint labore officia sint veniam et nostrud dolor adipisicing culpa excepteur nostrud enim pariatur.', '2020-07-02 12:14:00'),
(99, 23, 37.773500, -122.467210, 2, 'Cupidatat eu consequat nisi ullamco. Proident irure eiusmod in eu adipisicing. Cillum anim fugiat eiusmod laborum et non ea ipsum dolore nulla tempor velit sit velit.', '2020-08-27 09:33:30'),
(100, 26, 37.735050, -122.416920, 5, 'Commodo mollit excepteur laboris elit dolor eiusmod qui quis sint sint sint cillum dolor elit. Sunt laboris eu labore sunt in dolor veniam sint in sit incididunt excepteur nisi. Minim consectetur Lorem tempor consequat culpa aliquip pariatur nostrud laborum reprehenderit reprehenderit dolore consequat.', '2020-08-18 05:15:37'),
(101, 43, 37.749590, -122.496870, 1, 'Laborum ut labore consectetur irure elit cupidatat nostrud aute est voluptate veniam. Ea ipsum quis proident deserunt fugiat. Ullamco consequat duis consequat non ut.', '2020-01-02 09:31:28'),
(102, 42, 37.772190, -122.382180, 3, 'Ex ex fugiat aliqua consectetur labore excepteur cillum pariatur Lorem quis. Nulla nostrud officia amet pariatur officia aliquip officia cupidatat voluptate duis eiusmod nisi. Anim occaecat do voluptate laboris.', '2020-02-19 07:52:31'),
(103, 48, 37.755210, -122.414970, 2, 'Cupidatat amet labore tempor ullamco ipsum ipsum id nostrud sint. Non duis sint et ut irure anim ad fugiat deserunt eu esse laboris. Ea ut deserunt esse labore cupidatat irure adipisicing.', '2020-02-19 12:20:25'),
(104, 10, 37.724430, -122.427680, 2, 'Fugiat anim adipisicing elit dolor officia ad consectetur laboris tempor elit ut commodo est quis. Ullamco non reprehenderit aliqua dolore eiusmod enim in laborum adipisicing quis et nostrud ex nostrud. Proident irure consequat veniam cupidatat ullamco cupidatat non exercitation nostrud tempor.', '2020-04-14 04:03:44'),
(105, 7, 37.783680, -122.423400, 4, 'In quis veniam eu laborum amet cupidatat nisi eiusmod. Eu velit veniam eiusmod enim magna fugiat consequat est elit adipisicing. Ut id laborum quis sit tempor nulla sunt nulla nulla minim ullamco dolore.', '2020-04-18 07:58:47'),
(106, 25, 37.719990, -122.487590, 3, 'Nisi laboris adipisicing mollit ut. Duis duis esse velit minim dolor veniam occaecat. Nisi et nulla tempor ullamco commodo id enim nostrud esse nisi.', '2020-04-07 02:43:37'),
(107, 37, 37.753790, -122.367010, 1, 'Consectetur ullamco qui Lorem velit. Magna incididunt duis in sunt dolor Lorem sit dolore pariatur proident in. Proident esse laboris occaecat non nisi do nostrud et.', '2020-02-12 01:57:43'),
(108, 43, 37.724740, -122.442070, 3, 'Duis pariatur culpa dolore quis eu anim aute consequat proident tempor ullamco. Commodo exercitation enim Lorem eiusmod et. Sit qui id reprehenderit pariatur esse elit anim anim.', '2020-11-16 07:25:40'),
(109, 17, 37.780260, -122.414630, 5, 'Et cupidatat qui excepteur do nulla id veniam laborum non Lorem sit laborum ex qui. Amet aute do culpa mollit non qui ullamco dolore duis. Occaecat tempor aliqua ad ullamco aliquip dolore eiusmod laborum.', '2020-04-17 07:35:25'),
(110, 42, 37.762270, -122.437560, 1, 'Laborum reprehenderit irure do fugiat aliqua voluptate enim ut Lorem. Mollit occaecat ullamco mollit enim sunt laboris pariatur ea sit fugiat laboris labore tempor enim. Nostrud quis ea aute non aute.', '2020-11-12 04:13:12'),
(111, 7, 37.773060, -122.434610, 1, 'Minim ut Lorem consequat laborum minim incididunt commodo anim ut aliqua id. Sit dolor commodo cillum officia occaecat nisi aute ipsum ad. Laboris commodo mollit amet voluptate ad aute eiusmod culpa.', '2020-01-18 03:35:33'),
(112, 20, 37.711050, -122.468880, 1, 'In pariatur cupidatat esse aliquip nostrud fugiat labore mollit anim reprehenderit velit veniam. Laboris dolore officia do velit elit labore aute voluptate esse. Id labore commodo aliquip labore ullamco laborum ex ea cillum irure mollit fugiat pariatur sit.', '2020-02-02 10:05:40'),
(113, 25, 37.741880, -122.458560, 4, 'Nostrud labore elit id elit amet officia aute aute officia exercitation. Duis do adipisicing ipsum id exercitation tempor velit. Eu cupidatat tempor ipsum laboris non deserunt in.', '2020-03-17 09:40:48'),
(114, 37, 37.776430, -122.514250, 2, 'Culpa nostrud eiusmod consectetur sit cillum mollit id amet cillum in. Veniam commodo veniam Lorem ipsum voluptate exercitation quis eiusmod cupidatat culpa sunt minim exercitation sunt. Elit ad magna tempor do sit reprehenderit mollit aliquip consectetur.', '2020-02-07 06:24:03'),
(115, 49, 37.786150, -122.455170, 5, 'Labore enim non id consectetur excepteur sint Lorem id cillum sint. Consectetur quis occaecat pariatur culpa deserunt. Tempor est eu ad officia.', '2020-01-10 10:10:00'),
(116, 42, 37.711890, -122.469440, 3, 'Officia anim laboris officia proident ad exercitation ullamco. Exercitation velit elit duis est in pariatur. Nisi labore laboris ex deserunt sint minim aliqua tempor consequat.', '2020-08-11 06:08:55'),
(117, 48, 37.714150, -122.402680, 3, 'Nisi in nulla aute deserunt labore in deserunt culpa ut fugiat dolore. Cupidatat sunt culpa aliqua veniam est anim nisi nulla pariatur. Reprehenderit proident sit cillum nostrud commodo aliquip adipisicing deserunt reprehenderit adipisicing in incididunt.', '2020-08-08 11:42:14'),
(118, 4, 37.777420, -122.487640, 5, 'Do dolore officia dolore in magna dolor nulla labore. Et occaecat do commodo ipsum laborum aute deserunt est esse. Aliquip consequat elit Lorem deserunt mollit cillum adipisicing.', '2020-09-25 11:05:51'),
(119, 8, 37.732720, -122.486130, 2, 'Adipisicing quis aliqua commodo culpa. Sunt ea veniam ullamco laboris amet minim sunt elit veniam aute officia dolore. Magna dolor nisi proident magna commodo adipisicing esse nostrud ea nostrud culpa exercitation.', '2020-01-06 03:52:07'),
(120, 4, 37.719740, -122.363280, 2, 'Culpa non tempor officia consectetur irure deserunt. Tempor consequat cillum do ad proident non labore minim proident. Incididunt eiusmod aliquip quis laborum cupidatat adipisicing incididunt voluptate officia adipisicing qui veniam est.', '2020-08-12 07:17:43'),
(121, 45, 37.782060, -122.392380, 2, 'Aliquip incididunt veniam ipsum culpa fugiat incididunt voluptate exercitation aliquip fugiat qui proident ex ut. Quis ad incididunt ullamco eu labore ipsum. Lorem occaecat deserunt veniam aute proident reprehenderit irure eu aliqua tempor nulla aute.', '2020-06-13 08:24:49'),
(122, 13, 37.741600, -122.369800, 3, 'Sint officia velit sunt velit Lorem cupidatat exercitation sint consectetur aliquip. Nisi nisi consectetur esse proident commodo aliqua. Qui laboris quis sunt elit nulla ex sint dolore.', '2020-11-04 10:57:35'),
(123, 16, 37.710570, -122.464430, 5, 'Magna amet magna nulla elit dolore sit do id commodo dolor occaecat fugiat non. Veniam aliquip dolor dolor Lorem eiusmod culpa laboris consectetur consectetur non. Culpa incididunt veniam exercitation tempor et aute dolore tempor aute.', '2020-11-13 07:51:52'),
(124, 38, 37.781300, -122.456770, 4, 'Commodo esse do tempor exercitation. Proident ea do dolor est. Anim id exercitation laborum deserunt culpa.', '2020-05-05 09:44:09'),
(125, 36, 37.743310, -122.488180, 5, 'Anim veniam labore ea exercitation nisi labore culpa ipsum anim ullamco pariatur dolore velit occaecat. Officia ad nostrud reprehenderit do irure reprehenderit aliquip ullamco dolore adipisicing. Ut commodo nostrud fugiat dolore incididunt ut eu sunt.', '2020-01-24 05:54:05'),
(126, 40, 37.745180, -122.472410, 5, 'Adipisicing amet nulla labore adipisicing elit nulla. Nisi aliquip ad enim elit culpa sunt veniam. Amet veniam ex adipisicing est sint aute non consequat.', '2020-11-05 12:17:27'),
(127, 35, 37.767610, -122.448150, 2, 'Occaecat Lorem irure amet aute. Ad aliqua amet veniam do dolore cillum. Ex sit aute excepteur culpa est anim.', '2020-07-10 02:34:34'),
(128, 27, 37.762330, -122.363880, 5, 'Aliqua labore ex dolore veniam commodo anim reprehenderit est duis in laboris laborum elit. Et pariatur deserunt ad sint incididunt dolor labore reprehenderit esse ut duis id consectetur. Aliqua cupidatat id officia eiusmod officia sint est consequat commodo.', '2020-06-12 12:34:31'),
(129, 18, 37.743070, -122.373560, 3, 'Officia dolor incididunt commodo aliqua esse velit voluptate culpa ea labore. Aute ut eu exercitation officia. Consequat Lorem mollit Lorem sint dolor qui sint incididunt cupidatat ullamco incididunt voluptate enim laboris.', '2020-02-09 12:21:06'),
(130, 23, 37.777430, -122.426380, 3, 'Commodo anim qui adipisicing nisi id veniam esse proident occaecat deserunt pariatur minim. Eiusmod nulla ipsum commodo elit qui ullamco pariatur irure cillum commodo ex irure esse. Culpa magna veniam nisi excepteur nostrud sit id laborum aliquip cupidatat magna sunt elit.', '2020-07-07 06:10:06'),
(131, 40, 37.723210, -122.416950, 3, 'Lorem pariatur amet anim est est labore nisi dolor amet. Sit irure in fugiat laboris ad et. Nostrud fugiat in culpa consectetur culpa duis commodo cillum dolor fugiat proident deserunt consectetur.', '2020-08-13 09:12:27'),
(132, 5, 37.741100, -122.407170, 2, 'Ut aliquip eiusmod quis dolor officia pariatur aliquip nostrud. Amet aliquip nulla dolore et ut nisi consectetur. Dolor minim veniam velit anim laboris non.', '2020-08-20 02:32:27'),
(133, 26, 37.762180, -122.380410, 1, 'Aliqua nisi in reprehenderit eiusmod non commodo cillum voluptate laboris voluptate sint reprehenderit ad. Eiusmod ea exercitation est id sint est nostrud quis mollit sit. Veniam eiusmod minim non sint Lorem id occaecat culpa aute.', '2020-08-07 02:57:36'),
(134, 20, 37.748300, -122.459710, 5, 'Mollit excepteur fugiat et voluptate nulla fugiat aliqua culpa velit eiusmod minim. Aute eu aliqua ullamco ex culpa eu ad. Aliquip consequat quis et tempor fugiat ullamco magna occaecat eiusmod aliquip qui irure fugiat.', '2020-08-06 12:24:39'),
(135, 23, 37.752560, -122.374940, 3, 'Aliquip sit sunt enim quis exercitation aute nisi ad nostrud. Sint excepteur ex veniam occaecat dolor ea esse. Eiusmod ipsum fugiat officia officia culpa deserunt exercitation non sunt eiusmod.', '2020-05-02 04:30:08'),
(136, 6, 37.740720, -122.392910, 1, 'Ad ea officia eu tempor tempor officia nostrud ipsum officia cupidatat ex pariatur id ut. Eiusmod do irure veniam nulla pariatur deserunt ipsum esse pariatur ipsum. Consequat excepteur ut reprehenderit sit anim laborum fugiat amet anim nulla est ullamco.', '2020-10-23 09:06:14'),
(137, 15, 37.727940, -122.433650, 2, 'Id consectetur commodo esse et cillum irure excepteur minim ipsum ullamco aliqua. Reprehenderit et pariatur non officia adipisicing dolore cupidatat laboris cupidatat. Eiusmod aliquip non non exercitation aliqua aute adipisicing.', '2020-01-18 01:27:32'),
(138, 12, 37.772600, -122.399720, 4, 'In nostrud deserunt enim aute do in proident nisi proident nisi qui. Excepteur reprehenderit deserunt in cupidatat laborum deserunt eiusmod aliqua. Qui nulla irure et consequat voluptate aliquip adipisicing culpa proident sunt eiusmod pariatur.', '2020-10-15 04:12:57'),
(139, 36, 37.729810, -122.474380, 3, 'Cillum nostrud magna ipsum qui elit velit amet proident esse magna consectetur commodo labore minim. Labore enim ex occaecat ipsum dolor consequat dolore. Proident excepteur et exercitation sint duis qui labore sit commodo et ut voluptate.', '2020-03-29 01:44:22'),
(140, 3, 37.757700, -122.468440, 5, 'Ut aute ut veniam cupidatat reprehenderit minim dolore veniam nostrud cupidatat do quis incididunt elit. Id nostrud do quis et duis adipisicing non labore Lorem incididunt mollit. Id est magna nisi ad irure incididunt deserunt ad fugiat.', '2020-02-23 12:32:41'),
(141, 3, 37.782180, -122.504830, 5, 'Excepteur voluptate enim tempor anim. Dolor aliquip aliqua ipsum ullamco sit culpa. Quis occaecat sunt in consequat ex ad do do tempor aliquip exercitation fugiat et sit.', '2020-03-16 10:17:27'),
(142, 3, 37.750730, -122.454650, 3, 'Laborum nostrud duis deserunt in velit occaecat ad aliqua exercitation culpa duis voluptate tempor nostrud. Sunt ullamco deserunt deserunt labore id. Esse culpa qui enim amet velit nisi ut id ex aliqua ex laborum cupidatat qui.', '2020-03-21 06:08:48'),
(143, 45, 37.763900, -122.418690, 5, 'Qui magna nulla in eu excepteur officia. Quis cupidatat Lorem ut irure reprehenderit. Laborum aliquip aute tempor laborum proident ut irure nostrud fugiat elit ut est magna qui.', '2020-01-27 10:13:58'),
(144, 24, 37.742930, -122.403930, 2, 'Nostrud officia velit ipsum cupidatat labore non adipisicing proident est. Ullamco commodo reprehenderit est Lorem nulla tempor dolore consectetur velit amet ad occaecat ut fugiat. Elit laboris non fugiat occaecat veniam amet ad aute adipisicing esse duis nulla ex dolor.', '2020-05-22 04:24:12'),
(145, 37, 37.767710, -122.444090, 1, 'Esse adipisicing et commodo reprehenderit enim qui elit irure enim eiusmod. Tempor exercitation nostrud magna ad officia. Magna ex consectetur culpa irure esse.', '2020-06-24 02:54:03'),
(146, 37, 37.726150, -122.500030, 2, 'Ullamco pariatur sit minim consectetur ex. Magna aute commodo ipsum id in eiusmod incididunt esse labore eu dolor incididunt. Et fugiat anim pariatur cupidatat excepteur voluptate non occaecat nostrud duis.', '2020-10-07 10:15:04'),
(147, 11, 37.733470, -122.437690, 2, 'Anim ut incididunt sunt incididunt. Elit aliqua sunt laboris labore ea minim cillum reprehenderit anim et est. Velit ad pariatur ad sit reprehenderit occaecat reprehenderit.', '2020-09-07 12:54:17'),
(148, 2, 37.761990, -122.360410, 5, 'Laboris in duis eu culpa quis laborum minim laborum et commodo et excepteur voluptate est. Id eiusmod consectetur ad irure mollit proident aliqua adipisicing enim elit reprehenderit et dolor consequat. Nisi magna laborum officia dolor aliqua aliqua qui enim labore Lorem.', '2020-02-24 05:27:35'),
(149, 29, 37.783680, -122.509400, 4, 'Cillum nulla labore id sint incididunt velit Lorem occaecat eu. Cillum et do esse labore excepteur exercitation id velit ut id. Voluptate occaecat reprehenderit elit consectetur magna dolore incididunt.', '2020-01-12 07:15:39'),
(150, 17, 37.779880, -122.398790, 2, 'Ea proident enim dolor incididunt voluptate reprehenderit nulla labore. Qui minim sint eu ea. Non ullamco in sit irure quis nulla Lorem officia eu dolore incididunt duis.', '2020-01-07 12:57:41'),
(151, 51, 37.800899, -122.423750, 1, 'A note fell out of a persons pocket', '2020-12-16 15:40:15'),
(152, 51, 37.800785, -122.415270, 5, 'Friends were chatting at a bench and before walking off, they placed their coffee cups on the ground and walked away!', '2020-12-16 15:44:10'),
(153, 52, 37.787993, -122.405040, 3, 'Walking home from school when this driver started honking at a parked car, save it.', '2020-12-16 15:45:34'),
(154, 53, 37.785032, -122.403177, 4, 'This guy started picking his nose while he was on the phone, talking very loud.', '2020-12-16 15:46:36'),
(155, 53, 37.793900, -122.445039, 5, 'I was crossing the street and the lady that had to stop for the red light could not stop digging.', '2020-12-16 15:47:41'),
(156, 54, 37.761763, -122.462848, 4, 'Saw these teenagers put up graffiti on the drive way', '2020-12-16 15:48:47'),
(157, 53, 37.802230, -122.429662, 2, 'Just a kid, but you know.. still.', '2020-12-16 15:51:27'),
(158, 28, 37.773530, -122.406717, 2, 'mmm', '2020-12-17 01:32:36'),
(159, 59, 37.797080, -122.416260, 5, 'Banana peel thrown out the window of a car', '2020-12-17 10:39:33'),
(160, 59, 37.805039, -122.401821, 5, 'Kids throwing their soda cans into the ocean', '2020-12-17 10:40:33'),
(161, 62, 37.792289, -122.419701, 2, 'Banana peel thrown out the window of a car', '2020-12-17 11:01:49'),
(162, 62, 37.805783, -122.401587, 4, 'Kids throwing soda bottles into the ocean', '2020-12-17 11:02:21'),
(163, 64, 37.797010, -122.415889, 2, 'Banana peel thrown out the window of a car', '2020-12-17 11:20:16'),
(164, 64, 37.805632, -122.401216, 4, 'Kids throwing soda bottles into the ocean', '2020-12-17 11:20:50'),
(165, 64, 37.805632, -122.401216, 4, 'Kids throwing soda bottles into the ocean', '2020-12-17 11:20:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_locations`
--
ALTER TABLE `track_locations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_locations`
--
ALTER TABLE `track_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
