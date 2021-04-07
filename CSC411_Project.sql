-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2021 at 11:43 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `willibrown_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `CompayOwned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `Name`, `CompayOwned`) VALUES
(1, 'Default', 0),
(2, 'BMW', 1),
(3, 'Ford', 1),
(4, 'GMC', 1),
(5, 'Honda', 1),
(6, 'Tesla', 1),
(7, 'Toyota', 1),
(8, 'Nissan', 1),
(9, 'Honda', 1);

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
(1, 'Default', 'info@email.com', '518-851-7683', ' '),
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
(1, 'Default', 1),
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
(66, 'Maxima', 8),
(67, 'CR-V', 9),
(68, 'Accord', 9),
(69, 'HR-V', 9),
(70, 'Civic', 9);



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
(104, 2, 'Transmission', 'Manual'),
(105, 2, 'Color', 'Red'),
(106, 2, 'Year', '2021'),
(107, 2, 'Body Type', 'Wagon'),
(108, 2, 'Chassis No', ''),
(109, 2, 'Capacity', '5'),
(110, 3, 'Transmission', 'Manual'),
(111, 3, 'Color', 'Red'),
(112, 3, 'Year', '2021'),
(113, 3, 'Body Type', 'Wagon'),
(114, 3, 'Chassis No', ''),
(115, 3, 'Capacity', '5'),
(116, 4, 'Transmission', 'Manual'),
(117, 4, 'Color', 'Red'),
(118, 4, 'Year', '2021'),
(119, 4, 'Body Type', 'Wagon'),
(120, 4, 'Chassis No', ''),
(121, 4, 'Capacity', '5');

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
  `Sold` tinyint(1) NOT NULL DEFAULT '0',
  `BuyingPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `Name`, `Vin`, `ModelId`, `DealerId`, `Sold`, `BuyingPrice`) VALUES
(1, 'Default', '44644655', 1, 1, 0, 3000),
(2, 'kkd', '65545445', 1, 1, 0, 0),
(3, 'cx5 0092', '65989555', 4, 1, 1, 0),
(4, 'cx3 oo41', '6545665', 3, 1, 0, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `models_ibfk_1` FOREIGN KEY (`BrandId`) REFERENCES `brands` (`Id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`CustomerId`) REFERENCES `customers` (`Id`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`VehicleId`) REFERENCES `vehicles` (`Id`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`ModelId`) REFERENCES `models` (`Id`),
  ADD CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`DealerId`) REFERENCES `dealers` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
