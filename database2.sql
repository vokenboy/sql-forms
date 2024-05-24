-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 10:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `Price` decimal(10,2) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `Brand` int(11) DEFAULT NULL,
  `CompatibleWith` int(11) DEFAULT NULL,
  `id_Accessory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`Price`, `Type`, `Brand`, `CompatibleWith`, `id_Accessory`) VALUES
(20.00, 1, 1, 3, 1),
(15.00, 2, 1, 3, 2),
(30.00, 4, 3, 3, 3),
(10.00, 6, 2, 2, 4),
(25.00, 7, 1, 2, 5),
(18.00, 3, 4, 1, 6),
(22.00, 5, 3, 4, 7),
(12.00, 8, 1, 1, 8),
(28.00, 9, 5, 5, 9),
(16.00, 2, 6, 3, 10),
(30.00, 4, 3, 3, 11),
(10.00, 6, 2, 2, 12),
(25.00, 7, 1, 2, 13),
(18.00, 3, 4, 1, 14),
(22.00, 5, 3, 4, 15),
(12.00, 8, 1, 1, 16),
(28.00, 9, 5, 5, 17),
(16.00, 2, 6, 3, 18),
(30.00, 4, 3, 3, 19),
(10.00, 6, 2, 2, 20),
(25.00, 7, 1, 2, 21),
(18.00, 3, 4, 1, 22),
(22.00, 5, 3, 4, 23),
(12.00, 8, 1, 1, 24),
(28.00, 9, 5, 5, 25),
(16.00, 2, 6, 3, 26),
(30.00, 4, 3, 3, 27),
(10.00, 6, 2, 2, 28),
(25.00, 7, 1, 2, 29),
(18.00, 3, 4, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id_Brand` int(11) NOT NULL,
  `name` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id_Brand`, `name`) VALUES
(1, 'Fender'),
(2, 'Squier'),
(3, 'Gibson'),
(4, 'Epiphone'),
(5, 'Taylor'),
(6, 'Gretsh'),
(7, 'PRS'),
(8, 'Ibanez'),
(9, 'Yamaha'),
(10, 'Marti');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id_Currency` int(11) NOT NULL,
  `name` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id_Currency`, `name`) VALUES
(1, 'Euro'),
(2, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `guitars`
--

CREATE TABLE `guitars` (
  `Price` decimal(10,2) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Material` varchar(255) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `GuitarType` int(11) DEFAULT NULL,
  `Brand` int(11) DEFAULT NULL,
  `id_Guitar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `guitars`
--

INSERT INTO `guitars` (`Price`, `Model`, `Material`, `Year`, `GuitarType`, `Brand`, `id_Guitar`) VALUES
(1500.00, 'Precision', 'Mahogany', 2014, 2, 6, 2),
(1200.00, 'SG', 'Mahogany', 2018, 3, 3, 4),
(900.00, 'Jazzmaster', 'Alder', 2012, 3, 1, 5),
(900.00, 'Stratocaster', 'Ash', 2014, 2, 3, 6),
(1100.00, 'Firebird', 'Mahogany', 2014, 3, 3, 7),
(1300.00, 'Precision Bass', 'Maple', 2011, 1, 1, 8),
(1000.00, 'Jazz Bass', 'Alder', 2013, 1, 1, 9),
(800.00, 'Music Man StingRay', 'Ash', 2017, 1, 4, 10),
(1500.00, 'Rickenbacker 4003', 'Maple', 2019, 1, 5, 11),
(1200.00, 'Flying V', 'Mahogany', 2015, 3, 3, 12),
(950.00, 'PRS Custom 24', 'Maple', 2013, 3, 7, 13),
(1800.00, 'Gibson L-5', 'Maple', 2010, 4, 3, 14),
(2000.00, 'Gretsch White Falcon', 'Maple', 2018, 4, 2, 15),
(850.00, 'Fender Jaguar', 'aaa', 2016, 3, 1, 16),
(1600.00, 'Gibson ES-335', 'Maple', 2014, 4, 3, 17),
(700.00, 'Ibanez RG', 'Mahogany', 2019, 3, 8, 18),
(1400.00, 'PRS SE Custom 24', 'Maple', 2017, 3, 7, 19),
(1100.00, 'Gibson SG Standard', 'Mahogany', 2012, 3, 3, 20),
(900.00, 'Epiphone Les Paul Standard', 'Mahogany', 2015, 3, 4, 21),
(1300.00, 'Martin D-28', 'Rosewood', 2018, 2, 10, 22),
(1700.00, 'Taylor 814ce', 'Rosewood', 2016, 2, 5, 23),
(1900.00, 'Gibson Hummingbird', 'Mahogany', 2014, 2, 3, 24),
(1500.00, 'Gibson J-45', 'Mahogany', 2017, 2, 3, 25),
(1200.00, 'Fender Stratocaster American Professional', 'Maple', 2020, 3, 1, 26),
(850.00, 'Gibson Les Paul Studio', 'Mahogany', 2021, 3, 3, 27),
(1100.00, 'PRS SE Custom 22', 'Maple', 2019, 3, 7, 28),
(1000.00, 'Gibson ES-339', 'Maple', 2013, 4, 3, 29),
(900.00, 'Fender Precision Bass', 'Maple', 2015, 1, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `guitartypes`
--

CREATE TABLE `guitartypes` (
  `id_GuitarType` int(11) NOT NULL,
  `name` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `guitartypes`
--

INSERT INTO `guitartypes` (`id_GuitarType`, `name`) VALUES
(1, 'Bass'),
(2, 'Acoustic'),
(3, 'Electric'),
(4, 'Classical'),
(5, 'Resonator'),
(6, 'Ukulele'),
(7, 'Tenor'),
(8, 'Semi-Acoustic'),
(9, 'Baritone');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id_Item` int(11) NOT NULL,
  `ItemName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `fk_Accessoryid_Accessory` int(11) DEFAULT NULL,
  `fk_Watchlistid_Watchlist` int(11) DEFAULT NULL,
  `fk_Guitarid_Guitar` int(11) DEFAULT NULL,
  `fk_Reviewid_Review` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id_Item`, `ItemName`, `Description`, `fk_Accessoryid_Accessory`, `fk_Watchlistid_Watchlist`, `fk_Guitarid_Guitar`, `fk_Reviewid_Review`) VALUES
(1, 'Item 1', 'Description for Item 1', 1, NULL, 7, 1),
(2, 'Item 2', 'Description for Item 2', 2, NULL, 8, 1),
(3, 'Item 3', 'Description for Item 3', 3, NULL, 6, 2),
(4, 'Item 4', 'Description for Item 4', 4, NULL, 7, 4),
(5, 'Item 5', 'Description for Item 5', 5, NULL, 9, 2),
(6, 'Item 6', 'Description for Item 6', 6, 1, 2, 6),
(7, 'Item 7', 'Description for Item 7', 7, 2, 5, 2),
(8, 'Item 8', 'Description for Item 8', 8, 3, 6, 8),
(9, 'Item 9', 'Description for Item 9', 9, 4, 4, 2),
(10, 'Item 10', 'Description for Item 10', 10, 5, 16, 5),
(11, 'Item 11', 'Description for Item 11', 11, NULL, 7, 4),
(12, 'Item 12', 'Description for Item 12', 12, NULL, 2, 5),
(13, 'Item 13', 'Description for Item 13', 13, NULL, 9, 4),
(14, 'Item 14', 'Description for Item 14', 14, NULL, 4, 1),
(15, 'Item 15', 'Description for Item 15', 15, NULL, 7, 3),
(16, 'Item 16', 'Description for Item 16', 16, NULL, 7, 6),
(17, 'Item 17', 'Description for Item 17', 17, NULL, 2, 4),
(18, 'Item 18', 'Description for Item 18', 18, NULL, 16, 2),
(19, 'Item 19', 'Description for Item 19', 19, NULL, 6, 1),
(20, 'Item 20', 'Description for Item 20', 20, NULL, 9, 7);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `Quantity` int(11) DEFAULT NULL,
  `UnitPrice` decimal(10,2) DEFAULT NULL,
  `id_OrderItem` int(11) NOT NULL,
  `fk_Itemid_Item` int(11) DEFAULT NULL,
  `fk_Orderid_Order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`Quantity`, `UnitPrice`, `id_OrderItem`, `fk_Itemid_Item`, `fk_Orderid_Order`) VALUES
(1, 49.99, 1, 1, 1),
(2, 29.99, 2, 2, 1),
(1, 99.99, 3, 3, 2),
(3, 149.99, 4, 4, 2),
(2, 199.99, 5, 5, 3),
(1, 79.99, 6, 6, 3),
(1, 129.99, 7, 7, 4),
(2, 39.99, 8, 8, 4),
(3, 89.99, 9, 9, 5),
(1, 69.99, 10, 10, 5),
(2, 119.99, 11, 11, 6),
(3, 79.99, 12, 12, 6),
(1, 99.99, 13, 13, 7),
(2, 169.99, 14, 14, 7),
(1, 59.99, 15, 15, 8),
(3, 49.99, 16, 16, 8),
(2, 139.99, 17, 17, 9),
(1, 89.99, 18, 18, 9),
(2, 199.99, 19, 19, 10),
(3, 69.99, 20, 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `TotalPrice` decimal(10,2) DEFAULT NULL,
  `CreatedAt` date DEFAULT NULL,
  `OrderStatus` int(11) DEFAULT NULL,
  `id_Order` int(11) NOT NULL,
  `fk_Userid_User` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`TotalPrice`, `CreatedAt`, `OrderStatus`, `id_Order`, `fk_Userid_User`) VALUES
(100.00, '2024-03-01', 1, 1, 1),
(150.00, '2024-03-02', 2, 2, 2),
(200.00, '2024-03-03', 1, 3, 3),
(120.00, '2024-03-04', 3, 4, 4),
(180.00, '2024-03-05', 1, 5, 5),
(90.00, '2024-03-06', 2, 6, 6),
(130.00, '2024-03-07', 1, 7, 7),
(160.00, '2024-03-08', 3, 8, 8),
(110.00, '2024-03-09', 1, 9, 9),
(140.00, '2024-03-10', 2, 10, 10),
(170.00, '2024-03-11', 1, 11, 11),
(190.00, '2024-03-12', 3, 12, 12),
(105.00, '2024-03-13', 1, 13, 13),
(125.00, '2024-03-14', 2, 14, 14),
(145.00, '2024-03-15', 1, 15, 15),
(155.00, '2024-03-16', 3, 16, 16),
(165.00, '2024-03-17', 1, 17, 17),
(175.00, '2024-03-18', 2, 18, 18),
(185.00, '2024-03-19', 1, 19, 19),
(195.00, '2024-03-20', 3, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `orderstatus`
--

CREATE TABLE `orderstatus` (
  `id_OrderStatus` int(11) NOT NULL,
  `name` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orderstatus`
--

INSERT INTO `orderstatus` (`id_OrderStatus`, `name`) VALUES
(1, 'Pending'),
(2, 'Delivered'),
(3, 'Shipped'),
(4, 'Canceled');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `PaymentDate` date DEFAULT NULL,
  `CreatedAt` date DEFAULT NULL,
  `Currency` int(11) DEFAULT NULL,
  `id_Payment` int(11) NOT NULL,
  `fk_Orderid_Order` int(11) DEFAULT NULL,
  `fk_Userid_User` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`PaymentDate`, `CreatedAt`, `Currency`, `id_Payment`, `fk_Orderid_Order`, `fk_Userid_User`) VALUES
('2024-03-01', '2024-02-25', 1, 1, 1, 1),
('2024-03-02', '2024-02-26', 2, 2, 2, 2),
('2024-03-03', '2024-02-27', 1, 3, 3, 3),
('2024-03-04', '2024-02-28', 2, 4, 4, 4),
('2024-03-05', '2024-02-29', 1, 5, 5, 5),
('2024-03-06', '2024-03-01', 2, 6, 6, 6),
('2024-03-07', '2024-03-02', 1, 7, 7, 7),
('2024-03-08', '2024-03-03', 2, 8, 8, 8),
('2024-03-09', '2024-03-04', 1, 9, 9, 9),
('2024-03-10', '2024-03-05', 2, 10, 10, 10),
('2024-03-11', '2024-03-06', 1, 11, 11, 11),
('2024-03-12', '2024-03-07', 2, 12, 12, 12),
('2024-03-13', '2024-03-08', 1, 13, 13, 13),
('2024-03-14', '2024-03-09', 2, 14, 14, 14),
('2024-03-15', '2024-03-10', 1, 15, 15, 15),
('2024-03-16', '2024-03-11', 2, 16, 16, 16),
('2024-03-17', '2024-03-12', 1, 17, 17, 17),
('2024-03-18', '2024-03-13', 2, 18, 18, 18),
('2024-03-19', '2024-03-14', 1, 19, 19, 19),
('2024-03-20', '2024-03-15', 2, 20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `Rating` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `CreatedAt` date DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `id_Review` int(11) NOT NULL,
  `fk_Userid_User` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`Rating`, `Description`, `CreatedAt`, `Title`, `id_Review`, `fk_Userid_User`) VALUES
(5, 'Very nice, I will use it!', '2024-05-01', 'Good product!', 1, 1),
(3, 'Good stuff!', '2024-05-01', '', 2, 10),
(4, 'Nice product', '2024-05-01', 'Good!', 3, 30),
(1, 'Never will use it!', '2024-05-01', 'Bad', 4, 6),
(3, 'Not what I expected', '2024-05-01', 'Not usefull', 5, 15),
(5, 'Excellent quality, highly recommend!', '2024-05-15', 'Fantastic!', 6, 2),
(4, 'Pretty good, met my expectations.', '2024-05-16', 'Good Product', 7, 4),
(3, 'Average quality, could be better.', '2024-05-17', 'Okay', 8, 6),
(2, 'Not what I expected, quite disappointed.', '2024-05-18', 'Disappointed', 9, 8),
(1, 'Terrible product, do not buy!', '2024-05-19', 'Awful', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `ShippingMethod` varchar(50) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `DeliveryTime` varchar(20) DEFAULT NULL,
  `DeliveryStatus` int(11) DEFAULT NULL,
  `id_Shipping` int(11) NOT NULL,
  `fk_Orderid_Order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`ShippingMethod`, `Cost`, `DeliveryTime`, `DeliveryStatus`, `id_Shipping`, `fk_Orderid_Order`) VALUES
('Express', 15.99, '2-3 days', 2, 1, 1),
('Standard', 9.99, '5-7 days', 1, 2, 2),
('Express', 18.99, '2-3 days', 2, 3, 3),
('Standard', 12.99, '5-7 days', 1, 4, 4),
('Express', 14.99, '2-3 days', 2, 5, 5),
('Standard', 11.99, '5-7 days', 1, 6, 6),
('Express', 16.99, '2-3 days', 2, 7, 7),
('Standard', 10.99, '5-7 days', 1, 8, 8),
('Express', 17.99, '2-3 days', 2, 9, 9),
('Standard', 13.99, '5-7 days', 1, 10, 10),
('Express', 19.99, '2-3 days', 2, 11, 11),
('Standard', 14.99, '5-7 days', 1, 12, 12),
('Express', 20.99, '2-3 days', 2, 13, 13),
('Standard', 15.99, '5-7 days', 1, 14, 14),
('Express', 21.99, '2-3 days', 2, 15, 15),
('Standard', 16.99, '5-7 days', 1, 16, 16),
('Express', 22.99, '2-3 days', 2, 17, 17),
('Standard', 17.99, '5-7 days', 1, 18, 18),
('Express', 23.99, '2-3 days', 2, 19, 19),
('Standard', 18.99, '5-7 days', 1, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcartitems`
--

CREATE TABLE `shoppingcartitems` (
  `Quantity` int(11) DEFAULT NULL,
  `ItemPrice` decimal(10,2) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL,
  `id_ShoppingCartItem` int(11) NOT NULL,
  `fk_ShoppingCartId_ShoppingCart` int(11) DEFAULT NULL,
  `fk_ItemId_Item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shoppingcartitems`
--

INSERT INTO `shoppingcartitems` (`Quantity`, `ItemPrice`, `DateAdded`, `id_ShoppingCartItem`, `fk_ShoppingCartId_ShoppingCart`, `fk_ItemId_Item`) VALUES
(2, 1000.00, '2024-03-01', 1, 1, 1),
(1, 1500.00, '2024-03-02', 2, 2, 2),
(3, 800.00, '2024-03-03', 3, 3, 3),
(2, 1200.00, '2024-03-04', 4, 4, 4),
(1, 900.00, '2024-03-05', 5, 5, 5),
(2, 20.00, '2024-03-06', 6, 6, 6),
(1, 15.00, '2024-03-07', 7, 7, 7),
(3, 30.00, '2024-03-08', 8, 8, 8),
(2, 10.00, '2024-03-09', 9, 9, 9),
(1, 25.00, '2024-03-10', 10, 10, 10),
(2, 0.00, '2024-03-11', 11, 11, 11),
(3, 0.00, '2024-03-12', 12, 12, 12),
(1, 0.00, '2024-03-13', 13, 13, 13),
(2, 0.00, '2024-03-14', 14, 14, 14),
(1, 0.00, '2024-03-15', 15, 15, 15),
(3, 0.00, '2024-03-16', 16, 16, 16),
(2, 0.00, '2024-03-17', 17, 17, 17),
(1, 0.00, '2024-03-18', 18, 18, 18),
(2, 0.00, '2024-03-19', 19, 19, 19),
(3, 0.00, '2024-03-20', 20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcarts`
--

CREATE TABLE `shoppingcarts` (
  `CreatedAt` date NOT NULL,
  `TotalPrice` float NOT NULL,
  `id_ShoppingCart` int(11) NOT NULL,
  `fk_Userid_User` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shoppingcarts`
--

INSERT INTO `shoppingcarts` (`CreatedAt`, `TotalPrice`, `id_ShoppingCart`, `fk_Userid_User`) VALUES
('2024-03-06', 0, 1, 1),
('2024-03-06', 0, 2, 2),
('2024-03-06', 0, 3, 3),
('2024-03-06', 0, 4, 4),
('2024-03-06', 0, 5, 5),
('2024-03-06', 0, 6, 6),
('2024-03-06', 0, 7, 7),
('2024-03-06', 0, 8, 8),
('2024-03-06', 0, 9, 9),
('2024-03-06', 0, 10, 10),
('2024-03-06', 0, 11, 11),
('2024-03-06', 0, 12, 12),
('2024-03-06', 0, 13, 13),
('2024-03-06', 0, 14, 14),
('2024-03-06', 0, 15, 15),
('2024-03-06', 0, 16, 16),
('2024-03-06', 0, 17, 17),
('2024-03-06', 0, 18, 18),
('2024-03-06', 0, 19, 19),
('2024-03-06', 0, 20, 20),
('2024-03-06', 0, 21, 21),
('2024-03-06', 0, 22, 22),
('2024-03-06', 0, 23, 23),
('2024-03-06', 0, 24, 24),
('2024-03-06', 0, 25, 25),
('2024-03-06', 0, 26, 26),
('2024-03-06', 0, 27, 27),
('2024-03-06', 0, 28, 28),
('2024-03-06', 0, 29, 29),
('2024-03-06', 0, 30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id_Type` int(11) NOT NULL,
  `name` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id_Type`, `name`) VALUES
(1, 'Strings'),
(2, 'Pick'),
(3, 'Strap'),
(4, 'Case'),
(5, 'Tuner'),
(6, 'Capo'),
(7, 'Cable'),
(8, 'Stand'),
(9, 'CleaningKit');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `PhoneNumber` bigint(20) DEFAULT NULL,
  `id_User` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`, `Name`, `LastName`, `Address`, `City`, `Zip`, `PhoneNumber`, `id_User`) VALUES
('user1', 'password1', 'John', 'Doe', '123 Main St', 'NoTown', 12345, 1234567890, 1),
('user2', 'password2', 'Jane', 'Smith', '456 Elm St', 'Othertown', 54321, 2147483647, 2),
('user3', 'password3', 'Michaelas', 'Johnson', '789 Oak', 'Sometown', 67890, 2147483647, 3),
('user4', 'password4', 'Emily', 'Williams', '101 Pine St', 'Newtown', 13579, 2147483647, 4),
('user5', 'password5', 'David', 'Brown', '222 Cedar St', 'Smalltown', 24680, 2147462415, 5),
('user6', 'password6', 'Sarah', 'Jones', '333 Birch St', 'Largetown', 97531, 2147483647, 6),
('user7', 'password7', 'Christopher', 'Davis', '444 Walnut St', 'Hometown', 86420, 1472583690, 7),
('user8', 'password8', 'Jessica', 'Miller', '555 Maple St', 'Midtown', 36958, 2147483647, 8),
('user9', 'password9', 'Matthew', 'Wilson', '666 Pineapple St', 'Uptown', 78965, 2147483647, 9),
('user10', 'password10', 'Amanda', 'Martinez', '777 Orange St', 'Downtown', 14785, 2147483647, 10),
('user11', 'password11', 'James', 'Rodriguez', '888 Banana St', 'Westtown', 36914, 2147483647, 11),
('user12', 'password12', 'Jennifer', 'Hernandez', '999 Grape St', 'Easttown', 85273, 1592637480, 12),
('user13', 'password13', 'Daniel', 'Lopez', '111 Lemon St', 'Southtown', 75369, 2147483647, 13),
('user14', 'password14', 'Ashley', 'Garcia', '222 Strawberry St', 'Northtown', 14785, 2147483647, 14),
('user15', 'password15', 'Robert', 'Gonzalez', '333 Cherry St', 'Upstate', 36914, 2147483647, 15),
('user16', 'password16', 'Brittany', 'Smith', '444 Blueberry St', 'Downtown', 85273, 1592637480, 16),
('user17', 'password17', 'Christopher', 'Johnson', '555 Raspberry St', 'Uptown', 75369, 2147483647, 17),
('user18', 'password18', 'Lauren', 'Jones', '666 Blackberry St', 'Midtown', 14785, 2147483647, 18),
('user19', 'password19', 'Ryan', 'Brown', '777 Grapefruit St', 'Largetown', 36914, 2147483647, 19),
('user20', 'password20', 'Stephanie', 'Williams', '888 Kiwi St', 'Hometown', 85273, 1592637480, 20),
('user21', 'password21', 'Justin', 'Jackson', '999 Apple St', 'Sometown', 75369, 2147483647, 21),
('user22', 'password22', 'Laura', 'Taylor', '111 Mango St', 'Newtown', 14785, 2147483647, 22),
('user23', 'password23', 'Brandon', 'Anderson', '222 Peach St', 'Anytown', 36914, 2147483647, 23),
('user24', 'password24', 'Megan', 'Harris', '333 Watermelon St', 'Othertown', 85273, 1592637480, 24),
('user25', 'password25', 'Andrew', 'Thomas', '444 Grape St', 'Midtown', 75369, 2147483647, 25),
('user26', 'password26', 'Emily', 'Walker', '555 Plum St', 'Downtown', 14785, 2147483647, 26),
('user27', 'password27', 'Jacob', 'White', '666 Lime St', 'Largetown', 36914, 2147483647, 27),
('user28', 'password28', 'Rachel', 'Clark', '777 Coconut St', 'Hometown', 85273, 1592637480, 28),
('user29', 'password29', 'Tyler', 'Lewis', '888 Avocado St', 'Uptown', 75369, 2147483647, 29),
('user30', 'password30', 'Nicole', 'Young', '999 Mango St', 'Sometown', 14785, 2147483647, 30),
('user', 'labas', 'Lukas', 'Kazkoks', '123 New St', 'Naujasmiestas', 12345, 1234567890, 31),
('Username', 'pass555', 'Vilius', 'T', 'Vilnius', 'Kaunas', 58313, 868524745, 32),
('vokenboy', 'ghdffd', 'dfggfd', 'dfg', 'dfg', 'gdfg', 36244, 3625411, 33);

-- --------------------------------------------------------

--
-- Table structure for table `watchlists`
--

CREATE TABLE `watchlists` (
  `CreatedAt` date DEFAULT NULL,
  `id_Watchlist` int(11) NOT NULL,
  `fk_Userid_User` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `watchlists`
--

INSERT INTO `watchlists` (`CreatedAt`, `id_Watchlist`, `fk_Userid_User`) VALUES
('2024-03-06', 1, 1),
('2024-03-06', 2, 2),
('2024-03-06', 3, 3),
('2024-03-06', 4, 4),
('2024-03-06', 5, 5),
('2024-03-06', 6, 6),
('2024-03-06', 7, 7),
('2024-03-06', 8, 8),
('2024-03-06', 9, 9),
('2024-03-06', 10, 10),
('2024-03-06', 11, 11),
('2024-03-06', 12, 12),
('2024-03-06', 13, 13),
('2024-03-06', 14, 14),
('2024-03-06', 15, 15),
('2024-03-06', 16, 16),
('2024-03-06', 17, 17),
('2024-03-06', 18, 18),
('2024-03-06', 19, 19),
('2024-03-06', 20, 20),
('2024-03-06', 21, 21),
('2024-03-06', 22, 22),
('2024-03-06', 23, 23),
('2024-03-06', 24, 24),
('2024-03-06', 25, 25),
('2024-03-06', 26, 26),
('2024-03-06', 27, 27),
('2024-03-06', 28, 28),
('2024-03-06', 29, 29),
('2024-03-06', 30, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id_Accessory`),
  ADD KEY `Type` (`Type`),
  ADD KEY `Brand` (`Brand`),
  ADD KEY `CompatibleWith` (`CompatibleWith`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id_Brand`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id_Currency`);

--
-- Indexes for table `guitars`
--
ALTER TABLE `guitars`
  ADD PRIMARY KEY (`id_Guitar`),
  ADD KEY `GuitarType` (`GuitarType`),
  ADD KEY `Brand` (`Brand`);

--
-- Indexes for table `guitartypes`
--
ALTER TABLE `guitartypes`
  ADD PRIMARY KEY (`id_GuitarType`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_Item`),
  ADD KEY `Reviews` (`fk_Reviewid_Review`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id_OrderItem`),
  ADD KEY `CorrespondsTo` (`fk_Itemid_Item`),
  ADD KEY `HasItems` (`fk_Orderid_Order`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_Order`),
  ADD UNIQUE KEY `fk_Userid_User` (`fk_Userid_User`),
  ADD KEY `OrderStatus` (`OrderStatus`);

--
-- Indexes for table `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`id_OrderStatus`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_Payment`),
  ADD UNIQUE KEY `fk_Userid_User` (`fk_Userid_User`),
  ADD KEY `Currency` (`Currency`),
  ADD KEY `PaidThrough` (`fk_Orderid_Order`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id_Review`),
  ADD KEY `Writes` (`fk_Userid_User`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id_Shipping`),
  ADD KEY `DeliveryStatus` (`DeliveryStatus`),
  ADD KEY `IsShippedVia` (`fk_Orderid_Order`);

--
-- Indexes for table `shoppingcartitems`
--
ALTER TABLE `shoppingcartitems`
  ADD PRIMARY KEY (`id_ShoppingCartItem`),
  ADD KEY `Includes` (`fk_ShoppingCartId_ShoppingCart`),
  ADD KEY `RefersTo` (`fk_ItemId_Item`);

--
-- Indexes for table `shoppingcarts`
--
ALTER TABLE `shoppingcarts`
  ADD PRIMARY KEY (`id_ShoppingCart`),
  ADD UNIQUE KEY `fk_Userid_User` (`fk_Userid_User`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id_Type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_User`);

--
-- Indexes for table `watchlists`
--
ALTER TABLE `watchlists`
  ADD PRIMARY KEY (`id_Watchlist`),
  ADD UNIQUE KEY `fk_Userid_User` (`fk_Userid_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id_Accessory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `guitars`
--
ALTER TABLE `guitars`
  MODIFY `id_Guitar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id_OrderItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_Order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id_Payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id_Review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id_Shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shoppingcartitems`
--
ALTER TABLE `shoppingcartitems`
  MODIFY `id_ShoppingCartItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shoppingcarts`
--
ALTER TABLE `shoppingcarts`
  MODIFY `id_ShoppingCart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessories`
--
ALTER TABLE `accessories`
  ADD CONSTRAINT `accessories_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `types` (`id_Type`),
  ADD CONSTRAINT `accessories_ibfk_2` FOREIGN KEY (`Brand`) REFERENCES `brands` (`id_Brand`),
  ADD CONSTRAINT `accessories_ibfk_3` FOREIGN KEY (`CompatibleWith`) REFERENCES `guitartypes` (`id_GuitarType`);

--
-- Constraints for table `guitars`
--
ALTER TABLE `guitars`
  ADD CONSTRAINT `guitars_ibfk_1` FOREIGN KEY (`GuitarType`) REFERENCES `guitartypes` (`id_GuitarType`),
  ADD CONSTRAINT `guitars_ibfk_2` FOREIGN KEY (`Brand`) REFERENCES `brands` (`id_Brand`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `Reviews` FOREIGN KEY (`fk_Reviewid_Review`) REFERENCES `reviews` (`id_Review`) ON DELETE SET NULL;

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `CorrespondsTo` FOREIGN KEY (`fk_Itemid_Item`) REFERENCES `items` (`id_Item`),
  ADD CONSTRAINT `HasItems` FOREIGN KEY (`fk_Orderid_Order`) REFERENCES `orders` (`id_Order`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `Orders` FOREIGN KEY (`fk_Userid_User`) REFERENCES `users` (`id_User`),
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`OrderStatus`) REFERENCES `orderstatus` (`id_OrderStatus`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `PaidThrough` FOREIGN KEY (`fk_Orderid_Order`) REFERENCES `orders` (`id_Order`),
  ADD CONSTRAINT `Pays` FOREIGN KEY (`fk_Userid_User`) REFERENCES `users` (`id_User`),
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`Currency`) REFERENCES `currencies` (`id_Currency`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `Writes` FOREIGN KEY (`fk_Userid_User`) REFERENCES `users` (`id_User`);

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `IsShippedVia` FOREIGN KEY (`fk_Orderid_Order`) REFERENCES `orders` (`id_Order`),
  ADD CONSTRAINT `shippings_ibfk_1` FOREIGN KEY (`DeliveryStatus`) REFERENCES `orderstatus` (`id_OrderStatus`);

--
-- Constraints for table `shoppingcartitems`
--
ALTER TABLE `shoppingcartitems`
  ADD CONSTRAINT `Includes` FOREIGN KEY (`fk_ShoppingCartid_ShoppingCart`) REFERENCES `shoppingcarts` (`id_ShoppingCart`),
  ADD CONSTRAINT `RefersTo` FOREIGN KEY (`fk_Itemid_Item`) REFERENCES `items` (`id_Item`);

--
-- Constraints for table `shoppingcarts`
--
ALTER TABLE `shoppingcarts`
  ADD CONSTRAINT `Owns` FOREIGN KEY (`fk_Userid_User`) REFERENCES `users` (`id_User`);

--
-- Constraints for table `watchlists`
--
ALTER TABLE `watchlists`
  ADD CONSTRAINT `Creates` FOREIGN KEY (`fk_Userid_User`) REFERENCES `users` (`id_User`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
