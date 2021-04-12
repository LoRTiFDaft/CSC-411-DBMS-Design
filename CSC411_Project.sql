-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2021 at 05:36 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csc411_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `CompayOwned` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `Name`, `CompayOwned`) VALUES
(2, 'BMW', 10),
(3, 'Ford', 10),
(4, 'GMC', 10),
(5, 'Honda', 10),
(6, 'Tesla', 10),
(7, 'Toyota', 10),
(8, 'Nissan', 10);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Phone` text NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Id`, `Name`, `Email`, `Phone`, `Address`) VALUES
(1, 'Default', ' ', ' ', ' '),
(2, 'Wina Blaise', 'Wina.Blaise@yahoo.com', '516-897-6808', '4738  Cimmaron Road, Santa Ana, CA'),
(3, 'Ravinder Breisacher', 'Ravinder.Breisacher@gmail.com', '870-558-9525', '3286  Lynn Avenue, Mountain Park, OK'),
(4, 'Caesar Wolanski', 'Caesar.Wolanski@hotmail.com', '765-727-3314', '3866  Massachusetts Avenue, Washington, DC'),
(5, 'Osvaldo Kuroda', 'Osvaldo.Kuroda@aol.com', '716-378-2315', '4678  Freedom Lane, Stockton, CA'),
(6, 'Amos Sweeney', 'Amos.Sweeney@icloud.com', '949-226-7137', '4147  Ottis Street, Camarilo, CA'),
(7, 'Agrona Maier', 'Agrona.Maier@me.com', '414-301-7646', '1321  Perry Street, Southfield, MI'),
(8, 'Ramesh Robert', 'Ramesh.Robert@outlook.com', '269-459-5302', '80  Ottis Street, St Louis, OK');

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Phone` text NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`id`, `Name`, `Email`, `Phone`, `Address`) VALUES
(1, 'Default', 'info@email.com', '518-851-7683', '123ABC Sesame St. New York, NY'),
(2, 'Ursula Ford', 'info@UrsulaFord.com', '216-581-2792', '949  Woodland Drive, Sioux City, IA'),
(3, 'Gisila Honda', 'info@GisilaHonda.com', '484-332-3888', '295  Crummit Lane, Cranston, RI'),
(4, 'Rawya GMC', 'info@RawyaGMC.com', '313-429-5539', '1023  Hart Street, Boynton Beach, FL'),
(5, 'Varinius Toyota', 'info@VariniusToyota.com', '337-579-6521', '2920  Elliot Avenue, Seattle, WA');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `BrandId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `Name`, `BrandId`) VALUES
(2, '230', 2),
(3, '330', 2),
(4, '430', 2),
(5, 'M3', 2),
(6, 'M4', 2),
(7, 'M5', 2),
(8, 'X1', 2),
(9, 'X3', 2),
(10, 'X5', 2),
(11, 'Fusion', 3),
(12, 'Mustang', 3),
(13, 'Bronco', 3),
(14, 'Edge', 3),
(15, 'Escape', 3),
(16, 'Expedition', 3),
(17, 'Explorer', 3),
(18, 'F-150', 3),
(19, 'F-250', 3),
(20, 'F-350', 3),
(21, 'Acadia', 4),
(22, 'Terrain', 4),
(23, 'Yukon', 4),
(24, 'Yukon XL', 4),
(25, 'Canyon', 4),
(26, 'Sierra 1500', 4),
(27, 'Sierra 2500HD', 4),
(28, 'Sierra 3500HD', 4),
(29, 'Hummer EV SUV', 4),
(30, 'Hummer EV Truck', 4),
(31, 'Accord', 5),
(32, 'Civic', 5),
(33, 'Clarity', 5),
(34, 'Fit', 5),
(35, 'Insight', 5),
(36, 'CR-V', 5),
(37, 'HR-V', 5),
(38, 'Passport', 5),
(39, 'Pilot', 5),
(40, 'Ridgeline', 5),
(41, 'Model 3', 6),
(42, 'Model S', 6),
(43, 'Model X', 6),
(44, 'Model Y', 6),
(45, 'Roadster', 6),
(46, 'Avalon', 7),
(47, 'Camry', 7),
(48, 'Corolla', 7),
(49, 'Mirai', 7),
(50, 'Prius', 7),
(51, 'Supra', 7),
(52, 'Yaris', 7),
(53, '4Runner', 7),
(54, 'Highlander', 7),
(55, 'Land Cruiser', 7),
(56, 'RAV4', 7),
(57, 'Sequoia', 7),
(58, 'Venza', 7),
(59, 'Tacoma', 7),
(60, 'Tundra', 7),
(61, 'GTR Nismo', 8),
(62, 'i8', 2),
(63, 'Rogue', 8),
(64, 'Titan', 8),
(65, 'Altima', 8),
(66, 'Maxima', 8);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `VehicleId` int(11) NOT NULL,
  `Property` text NOT NULL,
  `Value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `VehicleId`, `Property`, `Value`) VALUES
(1, 2, 'Transmission', 'Manual'),
(2, 2, 'Color', 'Black'),
(3, 2, 'Body', 'Coupe'),
(4, 2, 'Capacity', '4'),
(5, 1, 'Transmission', 'Automatic'),
(6, 1, 'Color', 'Red'),
(7, 1, 'Body', 'Coupe'),
(8, 1, 'Capacity', '5'),
(9, 3, 'Transmission', 'Automatic'),
(10, 3, 'Color', 'Red'),
(11, 3, 'Body', 'Wagon'),
(12, 3, 'Capacity', '5'),
(14, 4, 'Transmission', 'Automatic'),
(15, 4, 'Color', 'Red'),
(16, 4, 'Body', 'Wagon'),
(17, 4, 'Capacity', '5'),
(18, 5, 'Transmission', 'Automatic'),
(19, 5, 'Color', 'Red'),
(20, 5, 'Body', 'Wagon'),
(21, 5, 'Capacity', '5'),
(22, 6, 'Transmission', 'Automatic'),
(23, 6, 'Color', 'Red'),
(24, 6, 'Body', 'Wagon'),
(25, 6, 'Capacity', '5'),
(26, 7, 'Transmission', 'Automatic'),
(27, 7, 'Color', 'Red'),
(28, 7, 'Body', 'Wagon'),
(29, 7, 'Capacity', '5'),
(30, 8, 'Transmission', 'Automatic'),
(31, 8, 'Color', 'Red'),
(32, 8, 'Body', 'Wagon'),
(33, 8, 'Capacity', '5'),
(34, 9, 'Transmission', 'Automatic'),
(35, 9, 'Color', 'Red'),
(36, 9, 'Body', 'Wagon'),
(38, 9, 'Capacity', '5'),
(39, 10, 'Transmission', 'Automatic'),
(40, 10, 'Color', 'Red'),
(41, 10, 'Body', 'Wagon'),
(42, 10, 'Capacity', '5'),
(43, 11, 'Transmission', 'Automatic'),
(44, 11, 'Color', 'Red'),
(45, 11, 'Body', 'Wagon'),
(46, 11, 'Capacity', '5'),
(47, 12, 'Transmission', 'Automatic'),
(48, 12, 'Color', 'Red'),
(49, 12, 'Body', 'Wagon'),
(50, 12, 'Capacity', '5'),
(51, 13, 'Transmission', 'Automatic'),
(52, 13, 'Color', 'Red'),
(53, 13, 'Body', 'Wagon'),
(54, 13, 'Capacity', '5'),
(55, 14, 'Transmission', 'Automatic'),
(56, 14, 'Color', 'Red'),
(57, 14, 'Body', 'Wagon'),
(58, 14, 'Capacity', '5'),
(59, 15, 'Transmission', 'Automatic'),
(60, 15, 'Color', 'Red'),
(61, 15, 'Body', 'Wagon'),
(62, 15, 'Capacity', '5'),
(63, 16, 'Transmission', 'Automatic'),
(64, 16, 'Color', 'Red'),
(65, 16, 'Body', 'Wagon'),
(66, 16, 'Capacity', '5'),
(67, 17, 'Transmission', 'Automatic'),
(68, 17, 'Color', 'Red'),
(69, 17, 'Body', 'Wagon'),
(70, 17, 'Capacity', '5'),
(71, 18, 'Transmission', 'Automatic'),
(72, 18, 'Color', 'Red'),
(73, 18, 'Body', 'Wagon'),
(74, 18, 'Capacity', '5'),
(75, 19, 'Transmission', 'Automatic'),
(76, 19, 'Color', 'Red'),
(77, 19, 'Body', 'Wagon'),
(78, 19, 'Capacity', '5'),
(79, 20, 'Transmission', 'Automatic'),
(80, 20, 'Color', 'Red'),
(81, 20, 'Body', 'Wagon'),
(82, 20, 'Capacity', '5'),
(83, 21, 'Transmission', 'Automatic'),
(84, 21, 'Color', 'Red'),
(85, 21, 'Body', 'Wagon'),
(86, 21, 'Capacity', '5'),
(87, 22, 'Transmission', 'Automatic'),
(88, 22, 'Color', 'Red'),
(89, 22, 'Body', 'Wagon'),
(90, 22, 'Capacity', '5'),
(91, 23, 'Transmission', 'Automatic'),
(92, 23, 'Color', 'Red'),
(93, 23, 'Body', 'Wagon'),
(94, 23, 'Capacity', '5'),
(95, 24, 'Transmission', 'Automatic'),
(96, 24, 'Color', 'Red'),
(97, 24, 'Body', 'Wagon'),
(98, 24, 'Capacity', '5'),
(99, 25, 'Transmission', 'Automatic'),
(100, 25, 'Color', 'Red'),
(101, 25, 'Body', 'Wagon'),
(102, 25, 'Capacity', '5'),
(103, 26, 'Transmission', 'Automatic'),
(104, 26, 'Color', 'Red'),
(105, 26, 'Body', 'Wagon'),
(106, 26, 'Capacity', '5'),
(107, 27, 'Transmission', 'Automatic'),
(108, 27, 'Color', 'Red'),
(109, 27, 'Body', 'Wagon'),
(110, 27, 'Capacity', '5'),
(111, 28, 'Transmission', 'Automatic'),
(112, 28, 'Color', 'Red'),
(113, 28, 'Body', 'Wagon'),
(114, 28, 'Capacity', '5'),
(115, 29, 'Transmission', 'Automatic'),
(116, 29, 'Color', 'Red'),
(117, 29, 'Body', 'Wagon'),
(118, 29, 'Capacity', '5'),
(119, 30, 'Transmission', 'Automatic'),
(120, 30, 'Color', 'Red'),
(121, 30, 'Body', 'Wagon'),
(122, 30, 'Capacity', '5'),
(123, 31, 'Transmission', 'Automatic'),
(124, 31, 'Color', 'Red'),
(125, 31, 'Body', 'Wagon'),
(126, 31, 'Capacity', '5'),
(127, 32, 'Transmission', 'Automatic'),
(128, 32, 'Color', 'Red'),
(129, 32, 'Body', 'Wagon'),
(130, 32, 'Capacity', '5'),
(131, 33, 'Transmission', 'Automatic'),
(132, 33, 'Color', 'Red'),
(133, 33, 'Body', 'Wagon'),
(134, 33, 'Capacity', '5'),
(135, 34, 'Transmission', 'Automatic'),
(136, 34, 'Color', 'Red'),
(137, 34, 'Body', 'Wagon'),
(138, 34, 'Capacity', '5'),
(139, 35, 'Transmission', 'Automatic'),
(140, 35, 'Color', 'Red'),
(141, 35, 'Body', 'Wagon'),
(142, 35, 'Capacity', '5'),
(143, 36, 'Transmission', 'Automatic'),
(144, 36, 'Color', 'Red'),
(145, 36, 'Body', 'Wagon'),
(146, 36, 'Capacity', '5'),
(147, 37, 'Transmission', 'Automatic'),
(148, 37, 'Color', 'Red'),
(149, 37, 'Body', 'Wagon'),
(150, 37, 'Capacity', '5'),
(151, 38, 'Transmission', 'Automatic'),
(152, 38, 'Color', 'Red'),
(153, 38, 'Body', 'Wagon'),
(154, 38, 'Capacity', '5'),
(155, 39, 'Transmission', 'Automatic'),
(156, 39, 'Color', 'Red'),
(157, 39, 'Body', 'Wagon'),
(158, 39, 'Capacity', '5'),
(159, 40, 'Transmission', 'Automatic'),
(160, 40, 'Color', 'Red'),
(161, 40, 'Body', 'Wagon'),
(162, 40, 'Capacity', '5'),
(163, 41, 'Transmission', 'Automatic'),
(164, 41, 'Color', 'Red'),
(165, 41, 'Body', 'Wagon'),
(166, 41, 'Capacity', '5'),
(167, 42, 'Transmission', 'Automatic'),
(168, 42, 'Color', 'Red'),
(169, 42, 'Body', 'Wagon'),
(170, 42, 'Capacity', '5'),
(171, 43, 'Transmission', 'Automatic'),
(172, 43, 'Color', 'Red'),
(173, 43, 'Body', 'Wagon'),
(174, 43, 'Capacity', '5'),
(175, 44, 'Transmission', 'Automatic'),
(176, 44, 'Color', 'Red'),
(177, 44, 'Body', 'Wagon'),
(178, 44, 'Capacity', '5'),
(179, 45, 'Transmission', 'Automatic'),
(180, 45, 'Color', 'Red'),
(181, 45, 'Body', 'Wagon'),
(182, 45, 'Capacity', '5'),
(183, 46, 'Transmission', 'Automatic'),
(184, 46, 'Color', 'Red'),
(185, 46, 'Body', 'Wagon'),
(186, 46, 'Capacity', '5'),
(220, 47, 'Transmission', 'Automatic'),
(187, 47, 'Color', 'Red'),
(188, 47, 'Body', 'Wagon'),
(189, 47, 'Capacity', '5'),
(221, 48, 'Transmission', 'Automatic'),
(190, 48, 'Color', 'Red'),
(191, 48, 'Body', 'Wagon'),
(192, 48, 'Capacity', '5'),
(222, 49, 'Transmission', 'Automatic'),
(193, 49, 'Color', 'Red'),
(194, 49, 'Body', 'Wagon'),
(195, 49, 'Capacity', '5'),
(223, 50, 'Transmission', 'Automatic'),
(196, 50, 'Color', 'Red'),
(197, 50, 'Body', 'Wagon'),
(198, 50, 'Capacity', '5'),
(224, 51, 'Transmission', 'Automatic'),
(199, 51, 'Color', 'Red'),
(200, 51, 'Body', 'Wagon'),
(201, 51, 'Capacity', '5'),
(225, 52, 'Transmission', 'Automatic'),
(202, 52, 'Color', 'Red'),
(203, 52, 'Body', 'Wagon'),
(204, 52, 'Capacity', '5'),
(226, 53, 'Transmission', 'Automatic'),
(205, 53, 'Color', 'Red'),
(206, 53, 'Body', 'Wagon'),
(207, 53, 'Capacity', '5'),
(227, 54, 'Transmission', 'Automatic'),
(208, 54, 'Color', 'Red'),
(209, 54, 'Body', 'Wagon'),
(210, 54, 'Capacity', '5'),
(228, 55, 'Transmission', 'Automatic'),
(211, 55, 'Color', 'Red'),
(212, 55, 'Body', 'Wagon'),
(213, 55, 'Capacity', '5'),
(229, 56, 'Transmission', 'Automatic'),
(214, 56, 'Color', 'Red'),
(215, 56, 'Body', 'Wagon'),
(216, 56, 'Capacity', '5'),
(230, 57, 'Transmission', 'Automatic'),
(217, 57, 'Color', 'Red'),
(218, 57, 'Body', 'Wagon'),
(219, 57, 'Capacity', '5'),
(231, 58, 'Transmission', 'Automatic'),
(232, 58, 'Color', 'Red'),
(233, 58, 'Body', 'Wagon'),
(234, 58, 'Capacity', '5'),
(235, 59, 'Transmission', 'Automatic'),
(236, 59, 'Color', 'Red'),
(237, 59, 'Body', 'Wagon'),
(238, 59, 'Capacity', '5'),
(239, 60, 'Transmission', 'Automatic'),
(240, 60, 'Color', 'Red'),
(241, 60, 'Body', 'Wagon'),
(242, 60, 'Capacity', '5'),
(243, 61, 'Transmission', 'Automatic'),
(244, 61, 'Color', 'Red'),
(245, 61, 'Body', 'Wagon'),
(246, 61, 'Capacity', '5'),
(247, 62, 'Transmission', 'Automatic'),
(248, 62, 'Color', 'Red'),
(249, 62, 'Body', 'Wagon'),
(250, 62, 'Capacity', '5'),
(251, 63, 'Transmission', 'Automatic'),
(252, 63, 'Color', 'Red'),
(253, 63, 'Body', 'Wagon'),
(254, 63, 'Capacity', '5'),
(255, 64, 'Transmission', 'Automatic'),
(256, 64, 'Color', 'Red'),
(257, 64, 'Body', 'Wagon'),
(258, 64, 'Capacity', '5'),
(259, 65, 'Transmission', 'Automatic'),
(260, 65, 'Color', 'Red'),
(261, 65, 'Body', 'Wagon'),
(262, 65, 'Capacity', '5'),
(263, 66, 'Transmission', 'Automatic'),
(264, 66, 'Color', 'Red'),
(265, 66, 'Body', 'Wagon'),
(266, 66, 'Capacity', '5'),
(267, 67, 'Transmission', 'Automatic'),
(268, 67, 'Color', 'Red'),
(269, 67, 'Body', 'Wagon'),
(270, 67, 'Capacity', '5'),
(271, 68, 'Transmission', 'Automatic'),
(272, 68, 'Color', 'Red'),
(273, 68, 'Body', 'Wagon'),
(274, 68, 'Capacity', '5');




-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Id` int(11) NOT NULL,
  `VehicleId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `SellingPrice` double NOT NULL,
  `DateSold` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Vin` text NOT NULL,
  `ModelId` int(11) NOT NULL,
  `DealerId` int(11) NOT NULL,
  `Sold` tinyint(1) NOT NULL DEFAULT 0,
  `BuyingPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `Name`, `Vin`, `ModelId`, `DealerId`, `Sold`, `BuyingPrice`) VALUES
(1, 'BMW','1111111111', 8, 1, 0, 3000),
(2, 'Nissan','2222222222', 61, 5, 0, 150000),
(3, 'Tesla','3333333333', 42, 1, 0, 75000),
(4, 'BMW','4444444444', 2, 4, 0, 7500),
(5, 'BMW','5555555555', 3, 3, 0, 50000),
(6, 'BMW','666666666', 4, 5, 0, 75000),
(7, 'BMW','7777777777', 5, 3, 0, 7500),
(8, 'BMW','8888888888', 6, 5, 0, 75000),
(9, 'BMW','9999999999', 7, 5, 0, 8500),
(10, 'BMW','1010101010', 62, 2, 0, 250000),
(11, 'BMW','0101010101', 9, 5, 0, 8885),
(12, 'BMW','1212121212', 10, 3, 0, 750000),
(13, 'Ford','2121212121', 11, 2, 0, 0),
(14, 'Ford','1313131313', 12, 2, 0, 0),
(15, 'Ford','3131313131', 13, 2, 0, 0),
(16, 'Ford','1414141414', 14, 2, 0, 0),
(17, 'Ford','4141414141', 15, 2, 0, 0),
(18, 'Ford','1515151515', 16, 2, 0, 0),
(19, 'Ford','5151515151', 17, 2, 0, 0),
(20, 'Ford','1616161616', 18, 2, 0, 0),
(21, 'Ford','6161616161', 19, 2, 0, 0),
(22, 'Ford','1717171717', 20, 2, 0, 0),
(23, 'GMC','7171717171', 21, 2, 0, 0),
(24, 'GMC','1818181818', 22, 2, 0, 0),
(25, 'GMC','8181818181', 23, 2, 0, 0),
(26, 'GMC','9191919191', 24, 2, 0, 0),
(27, 'GMC','1919191919', 25, 2, 0, 0),
(28, 'GMC','2020202020', 26, 2, 0, 0),
(29, 'GMC','2323232323', 27, 2, 0, 0),
(30, 'GMC','3232323232', 28, 2, 0, 0),
(31, 'GMC','2424242424', 29, 2, 0, 0),
(32, 'GMC','4242424242', 30, 3, 0, 0),
(33, 'Honda','4343434343', 31, 3, 0, 0),
(34, 'Honda','3434343434', 32, 3, 0, 0),
(35, 'Honda','4545454545', 33, 3, 0, 0),
(36, 'Honda','5454545454', 34, 3, 0, 0),
(37, 'Honda','4646464646', 35, 3, 0, 0),
(38, 'Honda','5757575757', 36, 3, 0, 0),
(39, 'Honda','7575757575', 37, 3, 0, 0),
(40, 'Honda','5959595959', 38, 3, 0, 0),
(41, 'Honda','9595959595', 39, 3, 0, 0),
(42, 'Honda','5858585858', 40, 4, 0, 0),
(43, 'Tesla','8585858585', 41, 4, 0, 0),
(44, 'Tesla','9595959595', 42, 4, 0, 0),
(45, 'Tesla','6767676767', 43, 4, 0, 0),
(46, 'Tesla','7676767676', 44, 4, 0, 0),
(47, 'Tesla','2626262626', 45, 4, 0, 0),
(49, 'Toyota','6262626262', 46, 4, 0, 0),
(50, 'Toyota','2525252525', 47, 4, 0, 0),
(51, 'Toyota','5252525252', 48, 4, 0, 0),
(52, 'Toyota','2727272727', 49, 4, 0, 0),
(53, 'Toyota','7272727272', 50, 4, 0, 0),
(54, 'Toyota','2828282828', 51, 4, 0, 0),
(55, 'Toyota','8282828282', 52, 4, 0, 0),
(56, 'Toyota','9393939393', 53, 4, 0, 0),
(57, 'Toyota','3939393939', 54, 4, 0, 0),
(58, 'Toyota','6868686868', 55, 4, 0, 0),
(59, 'Toyota','8686868686', 56, 4, 0, 0),
(60, 'Toyota','6464646464', 57, 4, 0, 0),
(61, 'Toyota','4646464646', 58, 4, 0, 0),
(62, 'Toyota','4747474747', 59, 4, 0, 0),
(63, 'Toyota','7474747474', 60, 4, 0, 0),
(64, 'Nissan','6969696969', 61, 4, 0, 0),
(65, 'Nissan','9696969696', 66, 4, 0, 0),
(66, 'Nissan','1111122222', 63, 4, 0, 0),
(67, 'Nissan','8686868686', 64, 4, 0, 0),
(68, 'Nissan','8822882288', 65, 4, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Brand_Id` (`BrandId`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Vehicle_Id` (`VehicleId`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `vehilce_id` (`VehicleId`),
  ADD KEY `customer_id` (`CustomerId`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Model` (`ModelId`),
  ADD KEY `Dealer` (`DealerId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `models_ibfk_1` FOREIGN KEY (`BrandId`) REFERENCES `brands` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`CustomerId`) REFERENCES `customers` (`Id`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`VehicleId`) REFERENCES `vehicles` (`id`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`ModelId`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`DealerId`) REFERENCES `dealers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
