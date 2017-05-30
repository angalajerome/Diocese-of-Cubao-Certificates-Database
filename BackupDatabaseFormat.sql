-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2017 at 02:16 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cleaning`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesses`
--

CREATE TABLE `accesses` (
  `accessDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userCode` int(11) NOT NULL,
  `parishcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bapts`
--

CREATE TABLE `bapts` (
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

-- --------------------------------------------------------

--
-- Table structure for table `confs`
--

CREATE TABLE `confs` (
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

-- --------------------------------------------------------

--
-- Table structure for table `parishes`
--

CREATE TABLE `parishes` (
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

CREATE TABLE `users` (
  `userCode` int(11) NOT NULL,
  `userName` text NOT NULL,
  `password` text NOT NULL,
  `parishCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userCode`, `userName`, `password`, `parishCode`) VALUES
(0, 'CubaoAdmin', '9dc778ecf844759ae64b5c39ffe15c1a', 9999);

-- --------------------------------------------------------

--
-- Table structure for table `vicariates`
--

CREATE TABLE `vicariates` (
  `vicariateCode` binary(10) NOT NULL,
  `vicariateName` binary(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
