-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 22, 2017 at 11:17 PM
-- Server version: 10.0.27-MariaDB-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dioceseo_certs`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesses`
--

CREATE TABLE IF NOT EXISTS `accesses` (
  `accessDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userCode` int(11) NOT NULL,
  `parishcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accesses`
--

INSERT INTO `accesses` (`accessDate`, `userCode`, `parishcode`) VALUES
('2017-05-03 10:54:45', 1, 1001),
('2017-05-03 10:55:14', 0, 9999),
('2017-05-03 19:05:53', 0, 9999),
('2017-05-04 01:52:58', 0, 9999),
('2017-05-04 01:58:08', 0, 9999),
('2017-05-04 07:00:47', 0, 9999),
('2017-05-04 08:03:33', 0, 9999),
('2017-05-04 22:19:10', 0, 9999),
('2017-05-08 06:26:52', 0, 9999),
('2017-05-08 07:08:58', 0, 9999),
('2017-05-08 20:04:44', 0, 9999),
('2017-05-09 09:10:16', 0, 9999),
('2017-05-09 21:00:04', 0, 9999),
('2017-05-09 21:00:46', 0, 9999),
('2017-05-09 21:01:57', 0, 9999),
('2017-05-09 21:01:59', 0, 9999),
('2017-05-09 21:02:00', 0, 9999),
('2017-05-09 21:02:30', 0, 9999),
('2017-05-09 21:03:02', 0, 9999),
('2017-05-09 21:09:29', 0, 9999),
('2017-05-09 21:09:45', 1, 1001),
('2017-05-09 21:09:56', 1, 1001),
('2017-05-09 21:10:16', 1, 1001),
('2017-05-09 21:10:27', 1, 1001),
('2017-05-09 21:18:20', 1, 1001),
('2017-05-09 21:26:01', 0, 9999),
('2017-05-09 21:26:43', 0, 9999),
('2017-05-09 21:26:44', 0, 9999),
('2017-05-09 21:27:16', 0, 9999),
('2017-05-09 23:08:24', 0, 9999),
('2017-05-10 11:30:14', 0, 9999),
('2017-05-10 11:45:35', 0, 9999),
('2017-05-10 11:47:00', 0, 9999),
('2017-05-10 11:47:33', 0, 9999),
('2017-05-10 12:23:59', 0, 9999),
('2017-05-10 13:06:21', 0, 9999),
('2017-05-10 14:43:32', 0, 9999),
('2017-05-10 15:18:00', 0, 9999),
('2017-05-11 05:09:17', 0, 9999),
('2017-05-11 05:21:41', 0, 9999),
('2017-05-11 17:40:13', 0, 9999),
('2017-05-14 08:58:49', 0, 9999),
('2017-05-14 08:59:13', 1, 1001),
('2017-05-15 09:36:10', 0, 9999),
('2017-05-15 09:36:25', 1, 1001),
('2017-05-15 10:16:21', 0, 9999),
('2017-05-15 11:04:30', 0, 9999),
('2017-05-15 12:44:43', 0, 9999),
('2017-05-15 13:18:01', 0, 9999),
('2017-05-15 15:07:17', 0, 9999),
('2017-05-15 15:40:59', 0, 9999),
('2017-05-15 21:58:02', 0, 9999),
('2017-05-16 03:42:39', 0, 9999),
('2017-05-22 02:34:51', 0, 9999),
('2017-05-22 09:35:39', 0, 9999),
('2017-05-22 10:35:13', 0, 9999),
('2017-05-22 10:48:01', 0, 9999),
('2017-05-22 11:53:10', 0, 9999),
('2017-05-22 12:12:16', 0, 9999),
('2017-05-22 12:26:28', 0, 9999),
('2017-05-22 12:42:23', 0, 9999),
('2017-05-22 13:13:03', 0, 9999),
('2017-05-22 13:16:39', 0, 9999),
('2017-05-23 01:39:41', 0, 9999);

-- --------------------------------------------------------

--
-- Table structure for table `bapts`
--

CREATE TABLE IF NOT EXISTS `bapts` (
  `firstName` text NOT NULL,
  `middleName` text NOT NULL,
  `lastName` text NOT NULL,
  `suffix` text NOT NULL,
  `mother` text NOT NULL,
  `father` text NOT NULL,
  `bDay` int(11) NOT NULL,
  `bMonth` text NOT NULL,
  `bYear` int(11) NOT NULL,
  `bPlace` text NOT NULL,
  `bParishCode` int(11) NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registered` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `baptCode` int(11) NOT NULL,
  `bPriestName` text NOT NULL,
  `bSpA` text NOT NULL,
  `bSpB` text NOT NULL,
  `printingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `printingDetails` int(11) NOT NULL,
  `printingStaffCode` int(11) NOT NULL,
  `bBookNum` int(11) NOT NULL,
  `bPageNum` int(11) NOT NULL,
  `bLineNum` int(11) NOT NULL,
  `baptDay` int(11) NOT NULL,
  `baptMonth` text NOT NULL,
  `baptYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bapts`
--

INSERT INTO `bapts` (`firstName`, `middleName`, `lastName`, `suffix`, `mother`, `father`, `bDay`, `bMonth`, `bYear`, `bPlace`, `bParishCode`, `lastModified`, `registered`, `baptCode`, `bPriestName`, `bSpA`, `bSpB`, `printingDateTime`, `printingDetails`, `printingStaffCode`, `bBookNum`, `bPageNum`, `bLineNum`, `baptDay`, `baptMonth`, `baptYear`) VALUES
('Jera', 's', 'Angga', 's', 's', 's', 1, 'September', 1900, 's', 2001, '2017-05-15 21:58:20', '2017-05-01 02:17:26', 4, 's', 's', 's', '2017-05-15 21:58:20', 1, 0, 1, 1, 1, 1, 'January', 1900),
('Jerome', 'Francisco', 'Angala Joestar', '', 'Ime Anga', 'Rom Ang', 6, 'December', 1997, 'Pasay City', 3004, '2017-05-15 13:46:03', '2017-05-03 19:06:58', 5, 'Larru=y', 'Windows', 'Apple', '2017-05-15 13:46:03', 1, 0, 1, 2, 3, 1, 'January', 1900),
('Firstname', 'Middlename', 'Lastname', 'Suffix', 'She Is Your Mother', 'I Am Your Father', 1, 'January', 1900, 'Birthplace', 2001, '2017-05-15 11:12:16', '2017-05-04 22:23:10', 6, 'Father Priest', 'Sponsor2', 'Sponsor1', '2017-05-15 11:12:16', 1, 0, 7, 3, 4, 1, 'January', 1900),
('s', 's', 's', 's', 's', 's', 1, 'January', 1900, 's', 2001, '2017-05-15 13:45:47', '2015-05-08 09:23:34', 7, 's', 's', 's', '2017-05-15 13:45:47', 1, 0, 1, 1, 1, 1, 'January', 1900),
('Jerome', 'Francisco', 'Angala', 'IV', 'Ime Ime', 'Rome Rome', 1, 'November', 1997, 'Morioh Cho', 2001, '2017-05-15 13:44:17', '2017-05-10 14:46:14', 8, 'Father Kirei Crackers', 'Mc Jollibee', 'Andoks Lechon', '2017-05-15 13:44:17', 1, 0, 2, 33, 33, 11, 'July', 2010),
('f', 'f', 'f', 'f', 'f', 'f', 1, 'January', 1900, 'f', 1001, '2017-05-15 13:45:21', '2017-05-14 09:03:37', 9, 'f', 'f', 'f', '2017-05-15 13:45:21', 1, 0, 1, 1, 1, 1, 'January', 1900),
('vtvbrsszcd', 'htrhtr', 'gtrgtr', 'rr', 'efrere', 'rere', 1, 'January', 1900, 'fercgre htr nr', 4005, '2017-05-15 14:39:44', '2017-05-15 14:39:44', 10, 'hrvhtr', 'gtgt54', 't54t54', '0000-00-00 00:00:00', 0, 0, 2, 21, 43, 5, 'August', 1911),
('fvgdnxvvfds', 'fvfd', 'svdsvdsfv', 'rch', 'crsec', 'hcdseh', 4, 'May', 1904, 'deagha', 5004, '2017-05-15 14:40:13', '2017-05-15 14:40:13', 11, 'gfeasgdes', 'gadesgae', 'gfaegfae', '0000-00-00 00:00:00', 0, 0, 1, 12, 2, 7, 'May', 1927),
('dr43dr43', 'r43dr4', '43', 'd43', 'yt4rgt', 'd43', 1, 'October', 1900, '54gvtr', 2001, '2017-05-15 14:48:57', '2017-05-15 14:48:57', 12, 'g5t4wg', '5wdg53w', '4t54', '0000-00-00 00:00:00', 0, 0, 1, 1, 22, 1, 'January', 1900),
('32132', '21321', '321312', 'bdjb', 'vcxdvcxd', 'dxgxcd', 1, 'January', 1900, 'vfxsvx', 2001, '2017-05-15 14:49:27', '2017-05-15 14:49:27', 13, 'hvrsh', 'vrshvrs', 'hvrsrv', '0000-00-00 00:00:00', 0, 0, 3, 3, 33, 1, 'January', 1900),
('ytry', 'trytr', 'yrty', 'ryrtyr', 'ytr', 'ytr', 1, 'October', 1900, 'ytr', 1006, '2017-05-15 15:50:33', '2017-05-15 14:50:04', 14, 'ytr', 'ytr', 'ytr', '2017-05-15 15:50:33', 1, 0, 2, 2, 2, 1, 'January', 1900);

-- --------------------------------------------------------

--
-- Table structure for table `confs`
--

CREATE TABLE IF NOT EXISTS `confs` (
  `firstName` text NOT NULL,
  `middleName` text NOT NULL,
  `lastName` text NOT NULL,
  `suffix` text NOT NULL,
  `mother` text NOT NULL,
  `father` text NOT NULL,
  `bDay` int(11) NOT NULL,
  `bMonth` text NOT NULL,
  `bYear` int(11) NOT NULL,
  `cParishCode` int(11) NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registered` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `confCode` int(11) NOT NULL,
  `cBishopName` text NOT NULL,
  `cSpA` text NOT NULL,
  `cSpB` text NOT NULL,
  `printingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `printingDetails` int(11) NOT NULL,
  `printingStaffCode` int(11) NOT NULL,
  `cBookNum` int(11) NOT NULL,
  `cPageNum` int(11) NOT NULL,
  `cLineNum` int(11) NOT NULL,
  `confDay` int(11) NOT NULL,
  `confMonth` text NOT NULL,
  `confYear` int(11) NOT NULL,
  `confAdmin` text NOT NULL,
  `baptDay` int(11) NOT NULL,
  `baptMonth` text NOT NULL,
  `baptYear` int(11) NOT NULL,
  `baptParishCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `confs`
--

INSERT INTO `confs` (`firstName`, `middleName`, `lastName`, `suffix`, `mother`, `father`, `bDay`, `bMonth`, `bYear`, `cParishCode`, `lastModified`, `registered`, `confCode`, `cBishopName`, `cSpA`, `cSpB`, `printingDateTime`, `printingDetails`, `printingStaffCode`, `cBookNum`, `cPageNum`, `cLineNum`, `confDay`, `confMonth`, `confYear`, `confAdmin`, `baptDay`, `baptMonth`, `baptYear`, `baptParishCode`) VALUES
('s', 's', 's', 's', 's', 's', 1, 'January', 1900, 2001, '2017-05-15 15:42:51', '2017-05-04 02:20:55', 1, 's', 's', 's', '2017-05-15 15:42:51', 1, 0, 1, 1, 1, 1, 'January', 1900, 's', 1, 'January', 1900, 2001),
('Josuke', 'None', 'Higashikata', '', 'bla', 'Joseph Joestar', 1, 'January', 1900, 2001, '2017-05-04 13:01:21', '2017-05-04 07:01:21', 2, 's', 's', 'ss1', '0000-00-00 00:00:00', 0, 0, 1, 1, 1, 1, 'January', 1900, 's', 1, 'January', 1900, 2001),
('vdsvfdsfre', 'vdsvfdsfre', 'vdsvfdsfre', 'vdsvfdsfre', 'vdsvfdsfre', 'vdsvfdsfre', 1, 'January', 1900, 3002, '2017-05-15 14:56:58', '2017-05-15 14:56:58', 3, 'vdsvfdsfre', 'vdsvfdsfre', 'vdsvfdsfre', '0000-00-00 00:00:00', 0, 0, 2, 2, 2, 1, 'January', 1900, 'vdsvfdsfre', 1, 'January', 1900, 4005),
('vdsvfdsfrevdsvfdsfre', 'vdsvfdsfrevdsvfdsfre', 'vdsvfdsfre', 'vdsvfdsfrevdsvfdsfre', 'vdsvfdsfre', 'vdsvfdsfrevdsvfdsfrevdsvfdsfre', 1, 'July', 1900, 2001, '2017-05-15 14:57:21', '2017-05-15 14:57:21', 4, 'vdsvfdsfre', 'freggr', 'egre', '0000-00-00 00:00:00', 0, 0, 2, 2, 22, 8, 'September', 1900, 'fe', 1, 'August', 1900, 4008),
('feswfes', 'fes', 'fes', 'fes', 'fes', 'fes', 1, 'November', 1900, 3002, '2017-05-15 14:57:48', '2017-05-15 14:57:48', 5, 'ew', 'ew', 'we', '0000-00-00 00:00:00', 0, 0, 34, 34, 99, 25, 'December', 1914, 'w', 1, 'January', 1900, 2007),
('r', 'r', 'r', 'ryrtyr', 'r', 'rere', 6, 'January', 1900, 2007, '2017-05-15 14:58:16', '2017-05-15 14:58:16', 6, 'gtg', 'tg', 'tgt', '0000-00-00 00:00:00', 0, 0, 4, 4, 4, 1, 'June', 1900, 'gt', 19, 'September', 1900, 5001),
('fr', 'fr', 'fr', 'frfr', 'frd', 'dfrd', 15, 'November', 1900, 1006, '2017-05-15 14:58:40', '2017-05-15 14:58:40', 7, 'r', 'trevgrev', 'gregre', '0000-00-00 00:00:00', 0, 0, 55, 56, 57, 1, 'August', 1900, 'fev', 1, 'September', 1900, 1002),
('rer', 'ere', 'rere', 'rew', 'rew', 'rewrew', 6, 'January', 1900, 4001, '2017-05-15 14:59:05', '2017-05-15 14:59:05', 8, 'g5yey', 'try', 'ytr', '0000-00-00 00:00:00', 0, 0, 99, 99, 99, 1, 'January', 1900, 'r5yt', 1, 'April', 1900, 1006),
('3424', '324', '3242', '432', '432', '432', 1, 'January', 1900, 2003, '2017-05-15 14:59:35', '2017-05-15 14:59:35', 9, '432', '432', '43', '0000-00-00 00:00:00', 0, 0, 66, 66, 66, 1, 'October', 1900, '432', 1, 'January', 1900, 3003),
('65', '65765', '765', '765', '57657', '576', 1, 'January', 1900, 2007, '2017-05-15 15:00:36', '2017-05-15 15:00:36', 10, '765', '765', '76575', '0000-00-00 00:00:00', 0, 0, 23, 23, 23, 1, 'January', 1900, '7657', 1, 'January', 1900, 6008),
('htng', 'jhgjg', 'jhg', 'jhg', 'hg', 'hgj', 1, 'January', 1900, 4007, '2017-05-15 15:01:16', '2017-05-15 15:01:16', 11, 'jhg', 'jhg', 'jhg', '0000-00-00 00:00:00', 0, 0, 1, 1, 1, 1, 'January', 1900, 'jhg', 1, 'January', 1900, 3005);

-- --------------------------------------------------------

--
-- Table structure for table `parishes`
--

CREATE TABLE IF NOT EXISTS `parishes` (
  `parishCode` int(11) NOT NULL,
  `parishName` text NOT NULL,
  `parishPriestName` text NOT NULL,
  `vicariateCode` int(11) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parishes`
--

INSERT INTO `parishes` (`parishCode`, `parishName`, `parishPriestName`, `vicariateCode`, `address`) VALUES
(1001, 'Holy Family Parish (Roxas District)', 'Rev. Fr. Ronald M. Roberto', 1000, 'Madre Silva corner Lilac Sts., Roxas District, Quezon City'),
(1002, 'Most Holy Redeemer Parish (Araneta)', 'Rev. Fr. Michell Joe B. Zerrudo', 1000, 'Brixton Hills Extension, Araneta Avenue, Quezon City'),
(1003, 'National Shrine of Our Lady of Mt. Carmel Parish', 'Rev. Fr. Joey D. Mabborang', 1000, 'Broadway Avenue, New Manila, Quezon City'),
(1004, 'Our Lady of Fatima Parish', 'Rev. Fr. Herbel F. Torres', 1000, '37 Cordillera St., Quezon City'),
(1005, 'Sacred Heart of Jesus Parish', 'Rev. Fr. Jerome A. Marquez', 1000, '28 Scout Ybardolaza St., brgy. Sacred Heart, Quezon City'),
(1006, 'Saint Paul the Apostle Parish', 'Rev. Fr. Arthur T. Opiniano', 1000, '3 Scout Rallos corner Mother Ignacia St., Quezon City'),
(1007, 'Shrine of Jesus the Divine Word', 'Rev. Fr. Ramonito Rebucias', 1000, '101 E. Rodriguez Senior Avenue, Kristong Hari, Quezon City'),
(2001, 'Christ the King Parish (Greenmeadows)', 'Rev. Fr. Jose S. Tupino III', 2000, 'Greenmeadows Avenue, Quezon City'),
(2002, 'Nativity of Our Lord Parish', 'Rev. Fr. Ronaldo M. Macale', 2000, '151 Ermin Garcia Avenue, Quezon City'),
(2003, 'Our Lady of Miraculous Medal Parish', 'Rev. Fr. Honorato N. Nadua, Jr.', 2000, 'Legaspi St., corner Camerino St., Project 4, Quezon City'),
(2004, 'Our Lady of Perpetual Help Parish (13th Ave.)', 'Rev. Msgr. Alfonso A. Bogaoan', 2000, '124, 13th Avenue, Cubao, Quezon City'),
(2005, 'San Roque Parish', 'Rev. Fr. Luisito O. Caupayan', 2000, '33 San Roque St., Bagumbayan, Libis, Quezon City'),
(2006, 'Saint John Paul II Parish', '', 2000, 'Bagumbayan, Quezon City'),
(2007, 'Transfiguration of Our Lord Parish', 'Rev. Fr. Ronald L. Monis', 2000, '46, 18th Ave., Murphy, Quezon City'),
(3001, 'Holy Family Parish (GSIS)', 'Rev. Msgr. Domingo P. Erfe', 3000, 'Asset and Actuarial Sts., GSIS Village, Project 8, Quezon City'),
(3002, 'Immaculate Conception Parish (Project 8)', 'Rev. Fr. Alfredo A. Pascual, Jr.', 3000, '64 Premium St., GSIS Village, Quezon City'),
(3003, 'Our Lady of Hope Parish', 'Rev. Fr. Joselito M. Irlandes', 3000, '107 Road 3 Bagong Pag-asa, Quezon City'),
(3004, 'Our Lady of Mount Carmel Parish (Project 6)', 'Rev. Fr. Jose Fortunato J. Garces', 3000, 'Road 8, Project 6, Quezon City'),
(3005, 'Our Lady of Perpetual Help Parish – Project 8', 'Rev. Fr. Ben C. Arceño', 3000, 'Jersey Road, Project 8, Quezon City'),
(3006, 'Parish of Mary, the Immaculate Conception', 'Rev. Fr. Jose Glenn V. Orocio', 3000, '13 Wisdom St., Teresa Village, Project 6, Quezon City'),
(3007, 'San Nicolas de Tolentino Parish', 'Rev. Fr. Amadeo C. Lucero', 3000, '20 Neptune St., Congressional Subd., Project 6, Quezon City'),
(3008, 'Santo Niño Parish Shrine', 'Rev. Fr. Gilberto Fortunato II C. Dumlao', 3000, 'Bukidnon St., Bago Bantay, Quezon City'),
(4001, 'Immaculate Conception Parish (Damar)', 'Rev. Fr. Rey Victor T. Pascual', 4000, 'Damar Loop St., Damar Village, Quezon City'),
(4002, 'Most Holy Redeemer Parish', 'Rev. Fr. Michell Joe B. Zerrudo', 4000, 'Malac St., Masambong SFDM, Quezon City'),
(4003, 'National Shrine of Our Lady of Lourdes', 'Rev. Fr. William T. Bustamante', 4000, 'Kanlaon St., corner Amoranto Ave., Sta. Mesa Heights, Quezon City'),
(4004, 'Saint Joseph the Worker Parish (Balintawak)', 'Rev. Fr. Emmanuel E. Del Rosario', 4000, 'Cloverleaf, Balintawak, Quezon City'),
(4005, 'Santo Domingo Parish (La Naval de Manila Shrine)', 'Rev. Fr. Ramon T. Salibay', 4000, '537 Quezon Avenue, Quezon City'),
(4006, 'Santuario de San Pedro Bautista Parish', 'Rev. Fr. Edwin Peter R. Dionisio', 4000, '69 San Pedro Bautista St., San Francisco Del Monte, Quezon City'),
(4007, 'Sta. Perpetua Parish', 'Rev. Fr. Nicolas Salamanca', 4000, '280 D. Tuazon corner Mauban Sts., Quezon City'),
(4008, 'Sta. Teresita del Niño Jesus Parish', 'Rev. Fr. Wilfredo C. Atienza', 4000, '43 Kanlaon St., Brgy. Sta. Teresita, Quezon City'),
(5001, 'Christ the King Parish (Project 7)', 'Rev. Fr. Ronnie Santos', 5000, 'Calumpit corner Bansalangin Street, Veterans Village, Project 7, Quezon City'),
(5002, 'Parish of the Hearts of Jesus and Mary', 'Rev. Fr. Fredwick Edward Simon', 5000, 'Daily Mirror St., West Triangle, Quezon City'),
(5003, 'Resurrection of Our Lord Parish', 'Rev. Fr. Victor Angelo Parlan', 5000, '39 Basa St., Paltok, San Francisco Del Monte, Quezon City'),
(5004, 'San Antonio de Padua Parish', 'Rev. Fr. Romerico Prieto', 5000, '172 West Riverside corner Lincoln St., San Francisco Del Monte, Quezon City'),
(5005, 'Saint Jude Quasi-Parish', 'Rev. Fr. Ramon Bosch', 5000, 'Zamboanga St., Nayong Kanluran, West Avenue, Quezon City'),
(5006, 'Sta. Rita de Cascia Parish', 'Rev. Msgr. Daniel Sta. Maria', 5000, 'South Lawin Street, Philamlife Homes, Quezon City'),
(5007, 'Sto. Cristo de Bungad Parish', '', 5000, '144 M.H. Del Pilar St., SFDM, Quezon City'),
(6001, 'Diocesan Shrine of St. Joseph', 'Rev. Fr. Ramon N. Eloriaga', 6000, 'Aurora Blvd., Project 3, Quezon City'),
(6002, 'Holy Cross Parish', 'Rev. Fr. Marvin B. Pajarillaga', 6000, '18 Plaza Santa Ines, P. Francisco St., 1101 Krus na Ligas, Diliman, Quezon City'),
(6003, 'Holy Family Parish (Kamias)', 'Rev. Fr. Victor William C. Garcia', 6000, 'K-7th St., Kamias, Quezon City'),
(6004, 'Immaculate Heart of Mary Parish', 'Rev. Fr. Angelito S. Ancla', 6000, '2 Mahinhin, Diliman, Quezon City'),
(6005, 'Our Lady of Pentecost Parish', 'Rev. Fr. Dennis S. Soriano', 6000, 'Salvador St., Loyola Heights, Quezon City'),
(6006, 'Parish of the Holy Sacrifice', 'Rev. Fr. Henry E. Ferreras', 6000, 'Apacible St., Diliman, Quezon City'),
(6007, 'Parish of the Lord of Divine Mercy', 'Rev. Fr. Steven C. Zabala', 6000, 'Maamo corner Madasalin Sts., Sikatuna Village, Quezon City'),
(6008, 'San Isidro Labrador Quasi-Parish', 'Rev. Fr. Michael James I. Ty', 6000, '35 Malakas St., Quezon City'),
(6009, 'Santa Maria della Strada Parish', 'Rev. Fr. Nelson C. Orqueta', 6000, 'Pansol Avenue, Diliman, Quezon City'),
(9999, 'Diocese of Cubao', 'admin', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userCode` int(11) NOT NULL,
  `userName` text NOT NULL,
  `password` text NOT NULL,
  `parishCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userCode`, `userName`, `password`, `parishCode`) VALUES
(0, 'CubaoAdmin', '9dc778ecf844759ae64b5c39ffe15c1a', 9999),
(1, 'hfprd', '5f4dcc3b5aa765d61d8327deb882cf99', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `vicariates`
--

CREATE TABLE IF NOT EXISTS `vicariates` (
  `vicariateCode` binary(10) NOT NULL,
  `vicariateName` binary(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
