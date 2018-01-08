-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2018 at 05:08 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aml_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_password`
--

CREATE TABLE IF NOT EXISTS `admin_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_password`
--

INSERT INTO `admin_password` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'mostlikers@gmail.com', 'c21f969b5f03d33d43e04f8f136e7682');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_waiters`
--

CREATE TABLE IF NOT EXISTS `assigned_waiters` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `waiter` varchar(255) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `assigned_waiters`
--

INSERT INTO `assigned_waiters` (`d_id`, `waiter`, `time`, `date`) VALUES
(0, 'ayie', '00:28:10', '2018-01-07'),
(1, 'ayie', '00:28:10', '2018-01-07'),
(2, 'ayie', '00:28:10', '2018-01-07'),
(3, 'ayie', '00:28:10', '2018-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE IF NOT EXISTS `billing` (
  `bill_id` int(11) NOT NULL,
  `bill_time` time DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `table_no` varchar(65) NOT NULL,
  `no_sc` int(100) DEFAULT NULL,
  `no_pax` int(100) DEFAULT NULL,
  `total_discounts` decimal(65,2) NOT NULL,
  `cash_rcvd` decimal(65,2) NOT NULL,
  `transac_no` varchar(65) NOT NULL,
  `total_bill` decimal(65,2) NOT NULL,
  `new_bill` decimal(65,2) NOT NULL,
  `change` decimal(65,2) NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charge_db`
--

CREATE TABLE IF NOT EXISTS `charge_db` (
  `charged_id` int(11) NOT NULL,
  `charged_code` varchar(255) DEFAULT NULL,
  `charged_table` varchar(255) DEFAULT NULL,
  `charged_waiter` varchar(255) DEFAULT NULL,
  `charged_time` time DEFAULT NULL,
  `charged_date` date DEFAULT NULL,
  `charged_quantity` int(11) DEFAULT NULL,
  `charged_name` varchar(255) DEFAULT NULL,
  `charged_price` decimal(65,2) DEFAULT NULL,
  `charged_type` varchar(255) DEFAULT NULL,
  `charged_tprice` decimal(65,2) DEFAULT NULL,
  `charged_priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`charged_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charge_db`
--

INSERT INTO `charge_db` (`charged_id`, `charged_code`, `charged_table`, `charged_waiter`, `charged_time`, `charged_date`, `charged_quantity`, `charged_name`, `charged_price`, `charged_type`, `charged_tprice`, `charged_priority`) VALUES
(1, '215', 'A01', 'Cynlai', '15:21:24', '2017-12-02', 1, 'Sizzling Gambas', '215.00', 'Dine In', '215.00', '1'),
(2, '215', 'A01', 'sad', '15:21:34', '2017-12-02', 1, 'Sizzling Fried Shrimp with Garlic Sauce', '215.00', 'Dine In', '215.00', '1'),
(3, '215', 'A01', 'sad', '15:21:46', '2017-12-02', 2, 'Sizzling Pusit', '220.00', 'Dine In', '440.00', '1'),
(4, '216', 'A02', 'ayie', '15:21:56', '2017-12-02', 6, 'Shanghai Fried Rice', '95.00', 'Dine In', '570.00', '1'),
(201, '210', 'A04', 'Jay', '00:01:14', '2017-12-01', 1, 'Seafood Fried Rice', '105.00', 'Dine In', '105.00', '1'),
(202, '210', 'A04', 'ayie', '00:01:16', '2017-12-01', 1, 'Porkchop Rice', '130.00', 'Dine In', '130.00', '1'),
(203, '210', 'A04', 'ayie', '00:01:17', '2017-12-01', 1, 'Lechon Rice', '130.00', 'Dine In', '130.00', '1'),
(204, '211', 'A01', 'ayie', '00:01:18', '2017-12-01', 2, 'Smirnoff (Single Shot)', '85.00', 'Dine In', '170.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `charge_history`
--

CREATE TABLE IF NOT EXISTS `charge_history` (
  `chargedid_history` int(11) NOT NULL,
  `chargedcode_history` varchar(255) DEFAULT NULL,
  `chargedtable_history` varchar(255) DEFAULT NULL,
  `chargedwaiter_history` varchar(255) DEFAULT NULL,
  `chargedtime_history` time DEFAULT NULL,
  `chargeddate_history` date DEFAULT NULL,
  `chargedquantity_history` int(11) DEFAULT NULL,
  `chargedname_history` varchar(255) DEFAULT NULL,
  `chargedprice_history` decimal(65,2) DEFAULT NULL,
  `chargedtype_history` varchar(255) DEFAULT NULL,
  `chargedtprice_history` decimal(65,2) DEFAULT NULL,
  `chargedpriority_history` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`chargedid_history`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `config_time`
--

CREATE TABLE IF NOT EXISTS `config_time` (
  `time_id` int(11) NOT NULL AUTO_INCREMENT,
  `happyhour_from` time NOT NULL,
  `happyhour_to` time NOT NULL,
  `reghour_from` time NOT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `config_time`
--

INSERT INTO `config_time` (`time_id`, `happyhour_from`, `happyhour_to`, `reghour_from`) VALUES
(1, '08:00:00', '10:00:00', '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `Nname` varchar(255) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `Lname` varchar(255) DEFAULT NULL,
  `charge_amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `Nname`, `Position`, `Lname`, `charge_amount`) VALUES
(1, 'Jay', 'Server', 'De Guzman', '0'),
(2, 'Neil', 'Server', 'Gallego', '0'),
(3, 'Steven', 'Server', 'Bitmead', NULL),
(4, 'Leonard', 'Server', 'Tagarino', NULL),
(5, 'Cynlai', 'Server', 'Osorio', ''),
(6, 'Rrhyanna', 'Server', 'Bacwaden', NULL),
(7, 'Princes', 'Server', 'Criste', NULL),
(8, 'Mina', 'Cashier', 'Mina', ''),
(9, 'Lerma', 'Checker', 'Lerma', NULL),
(10, 'Jam', 'Checker', 'Jam', ''),
(11, 'Dexter', 'Bartender', 'Lizardo', NULL),
(12, 'Ramil', 'Bust Boy', 'Yap', NULL),
(13, 'Marwin', 'Janitor', 'Marwin', '');

-- --------------------------------------------------------

--
-- Table structure for table `item_histroy`
--

CREATE TABLE IF NOT EXISTS `item_histroy` (
  `itemH_id` int(65) NOT NULL AUTO_INCREMENT,
  `itemH_name` varchar(65) NOT NULL,
  `itemH_qty` int(65) NOT NULL,
  `itemH_date` date NOT NULL,
  PRIMARY KEY (`itemH_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=294 ;

--
-- Dumping data for table `item_histroy`
--

INSERT INTO `item_histroy` (`itemH_id`, `itemH_name`, `itemH_qty`, `itemH_date`) VALUES
(1, 'Pitcher', 4, '2017-11-27'),
(2, 'Mug', 2, '2017-11-27'),
(3, 'Barrel', 2, '2017-11-27'),
(4, 'Pitcher', 4, '2017-11-27'),
(5, 'Mug', 2, '2017-11-27'),
(6, 'Barrel', 2, '2017-11-27'),
(7, 'chicken adobo', 1, '2017-11-27'),
(8, 'Ham & Egg Sandwich', 1, '2017-11-27'),
(9, 'Sizzling Fried Shrimp with Garlic Sauce', 1, '2017-11-27'),
(10, 'San Miguel Light (Apple/Lemon)', 1, '2017-11-27'),
(11, 'Sizzling Fried Shrimp with Garlic Sauce', 1, '2017-11-27'),
(12, 'Pork Barbeque', 2, '2017-11-27'),
(13, 'Inihaw na Baboy', 2, '2017-11-27'),
(14, 'Chicken Barbeque', 1, '2017-11-27'),
(15, 'Coleslaw Salad', 2, '2017-11-27'),
(16, 'Bull Jagger', 1, '2017-11-30'),
(17, 'Weng Weng', 1, '2017-11-30'),
(18, 'Bull Jagger', 1, '2017-11-30'),
(19, 'Bull Jagger', 1, '2017-11-30'),
(20, 'Weng Weng', 1, '2017-11-30'),
(21, 'Toss Green Salad', 1, '2017-11-30'),
(22, 'Vegetable Sticks', 1, '2017-11-30'),
(23, 'Seafood Fried Rice', 3, '2017-11-30'),
(24, 'Mushroom Soup', 1, '2017-11-30'),
(25, 'Hottotay Soup', 3, '2017-11-30'),
(26, 'Pancit Canton', 1, '2017-11-30'),
(27, 'Absolute Blue (750ml)', 1, '2017-11-30'),
(28, '	\nAbsolute Citron (Single Shot)', 1, '2017-11-30'),
(29, 'Chicken Barbeque', 3, '2017-11-30'),
(30, 'Mushroom Soup', 2, '2017-11-30'),
(31, 'Lechon Rice', 2, '2017-11-30'),
(32, 'Beef Tapa', 1, '2017-11-30'),
(33, 'DSAASD', 1, '2017-11-30'),
(34, 'Lechon Rice', 1, '2017-11-30'),
(35, 'Seafood Fried Rice', 1, '2017-11-30'),
(36, 'Shanghai Fried Rice', 1, '2017-11-30'),
(37, 'Garlic Rice', 1, '2017-11-30'),
(38, 'Pork Barbeque', 1, '2017-11-30'),
(39, 'Chicken Barbeque', 3, '2017-11-30'),
(40, 'Chicken Sandwich', 2, '2017-11-30'),
(41, 'Ham & Chess Sandwich', 1, '2017-11-30'),
(42, 'Tangueray Gin (Single Shot)', 1, '2017-11-30'),
(43, 'Bacardi Gold (Single Shot)', 1, '2017-11-30'),
(44, 'Cuervo Gold (750ml)', 1, '2017-11-30'),
(45, 'Chicken Barbeque', 1, '2017-11-30'),
(46, 'Inihaw na Baboy', 1, '2017-11-30'),
(47, 'Chicken Sandwich', 2, '2017-11-30'),
(48, 'Clubhouse Sandwich', 2, '2017-11-30'),
(79, 'Bull Jagger', 1, '2017-11-30'),
(80, 'Weng Weng', 1, '2017-11-30'),
(81, 'Bull Jagger', 1, '2017-11-30'),
(82, 'Bull Jagger', 1, '2017-11-30'),
(83, 'Weng Weng', 1, '2017-11-30'),
(84, 'Toss Green Salad', 1, '2017-11-30'),
(85, 'Vegetable Sticks', 1, '2017-11-30'),
(86, 'Seafood Fried Rice', 3, '2017-11-30'),
(87, 'Mushroom Soup', 1, '2017-11-30'),
(88, 'Hottotay Soup', 3, '2017-11-30'),
(89, 'Pancit Canton', 1, '2017-11-30'),
(90, 'Absolute Blue (750ml)', 1, '2017-11-30'),
(91, '	\nAbsolute Citron (Single Shot)', 1, '2017-11-30'),
(92, 'Chicken Barbeque', 3, '2017-11-30'),
(93, 'Mushroom Soup', 2, '2017-11-30'),
(94, 'Lechon Rice', 2, '2017-11-30'),
(95, 'Beef Tapa', 1, '2017-11-30'),
(96, 'DSAASD', 1, '2017-11-30'),
(97, 'Lechon Rice', 1, '2017-11-30'),
(98, 'Seafood Fried Rice', 1, '2017-11-30'),
(99, 'Shanghai Fried Rice', 1, '2017-11-30'),
(100, 'Garlic Rice', 1, '2017-11-30'),
(101, 'Pork Barbeque', 1, '2017-11-30'),
(102, 'Chicken Barbeque', 3, '2017-11-30'),
(103, 'Chicken Sandwich', 2, '2017-11-30'),
(104, 'Ham & Chess Sandwich', 1, '2017-11-30'),
(105, 'Tangueray Gin (Single Shot)', 1, '2017-11-30'),
(106, 'Bacardi Gold (Single Shot)', 1, '2017-11-30'),
(107, 'Cuervo Gold (750ml)', 1, '2017-11-30'),
(108, 'Chicken Barbeque', 1, '2017-11-30'),
(109, 'Inihaw na Baboy', 1, '2017-11-30'),
(110, 'Chicken Sandwich', 2, '2017-11-30'),
(111, 'Clubhouse Sandwich', 2, '2017-11-30'),
(142, 'Bull Jagger', 1, '2017-11-30'),
(143, 'Weng Weng', 1, '2017-11-30'),
(144, 'Bull Jagger', 1, '2017-11-30'),
(145, 'Bull Jagger', 1, '2017-11-30'),
(146, 'Weng Weng', 1, '2017-11-30'),
(147, 'Toss Green Salad', 1, '2017-11-30'),
(148, 'Vegetable Sticks', 1, '2017-11-30'),
(149, 'Seafood Fried Rice', 3, '2017-11-30'),
(150, 'Mushroom Soup', 1, '2017-11-30'),
(151, 'Hottotay Soup', 3, '2017-11-30'),
(152, 'Pancit Canton', 1, '2017-11-30'),
(153, 'Absolute Blue (750ml)', 1, '2017-11-30'),
(154, '	\nAbsolute Citron (Single Shot)', 1, '2017-11-30'),
(155, 'Chicken Barbeque', 3, '2017-11-30'),
(156, 'Mushroom Soup', 2, '2017-11-30'),
(157, 'Lechon Rice', 2, '2017-11-30'),
(158, 'Beef Tapa', 1, '2017-11-30'),
(159, 'DSAASD', 1, '2017-11-30'),
(160, 'Lechon Rice', 1, '2017-11-30'),
(161, 'Seafood Fried Rice', 1, '2017-11-30'),
(162, 'Shanghai Fried Rice', 1, '2017-11-30'),
(163, 'Garlic Rice', 1, '2017-11-30'),
(164, 'Pork Barbeque', 1, '2017-11-30'),
(165, 'Chicken Barbeque', 3, '2017-11-30'),
(166, 'Chicken Sandwich', 2, '2017-11-30'),
(167, 'Ham & Chess Sandwich', 1, '2017-11-30'),
(168, 'Tangueray Gin (Single Shot)', 1, '2017-11-30'),
(169, 'Bacardi Gold (Single Shot)', 1, '2017-11-30'),
(170, 'Cuervo Gold (750ml)', 1, '2017-11-30'),
(171, 'Chicken Barbeque', 1, '2017-11-30'),
(172, 'Inihaw na Baboy', 1, '2017-11-30'),
(173, 'Chicken Sandwich', 2, '2017-11-30'),
(174, 'Clubhouse Sandwich', 2, '2017-11-30'),
(205, 'Bull Jagger', 1, '2017-11-30'),
(206, 'Weng Weng', 1, '2017-11-30'),
(207, 'Bull Jagger', 1, '2017-11-30'),
(208, 'Bull Jagger', 1, '2017-11-30'),
(209, 'Weng Weng', 1, '2017-11-30'),
(210, 'Toss Green Salad', 1, '2017-11-30'),
(211, 'Vegetable Sticks', 1, '2017-11-30'),
(212, 'Seafood Fried Rice', 3, '2017-11-30'),
(213, 'Mushroom Soup', 1, '2017-11-30'),
(214, 'Hottotay Soup', 3, '2017-11-30'),
(215, 'Pancit Canton', 1, '2017-11-30'),
(216, 'Absolute Blue (750ml)', 1, '2017-11-30'),
(217, '	\nAbsolute Citron (Single Shot)', 1, '2017-11-30'),
(218, 'Chicken Barbeque', 3, '2017-11-30'),
(219, 'Mushroom Soup', 2, '2017-11-30'),
(220, 'Lechon Rice', 2, '2017-11-30'),
(221, 'Beef Tapa', 1, '2017-11-30'),
(222, 'DSAASD', 1, '2017-11-30'),
(223, 'Lechon Rice', 1, '2017-11-30'),
(224, 'Seafood Fried Rice', 1, '2017-11-30'),
(225, 'Shanghai Fried Rice', 1, '2017-11-30'),
(226, 'Garlic Rice', 1, '2017-11-30'),
(227, 'Pork Barbeque', 1, '2017-11-30'),
(228, 'Chicken Barbeque', 3, '2017-11-30'),
(229, 'Chicken Sandwich', 2, '2017-11-30'),
(230, 'Ham & Chess Sandwich', 1, '2017-11-30'),
(231, 'Tangueray Gin (Single Shot)', 1, '2017-11-30'),
(232, 'Bacardi Gold (Single Shot)', 1, '2017-11-30'),
(233, 'Cuervo Gold (750ml)', 1, '2017-11-30'),
(234, 'Chicken Barbeque', 1, '2017-11-30'),
(235, 'Inihaw na Baboy', 1, '2017-11-30'),
(236, 'Chicken Sandwich', 2, '2017-11-30'),
(237, 'Clubhouse Sandwich', 2, '2017-11-30'),
(238, 'Sizzling Gambas', 1, '2017-12-16'),
(239, 'Sizzling Fried Shrimp with Garlic Sauce', 1, '2017-12-16'),
(240, 'Sizzling Pusit', 2, '2017-12-16'),
(241, 'Shanghai Fried Rice', 6, '2017-12-16'),
(242, 'Inihaw na Baboy', 1, '2017-12-16'),
(243, 'Red Horse', 1, '2017-12-16'),
(244, 'Seafood Fried Rice', 3, '2017-12-16'),
(245, 'Toss Green Salad', 1, '2017-12-16'),
(246, 'Clubhouse Sandwich', 2, '2017-12-16'),
(247, 'Chicken Barbeque', 1, '2017-12-16'),
(248, 'Coleslaw Salad', 1, '2017-12-16'),
(249, 'Slippery Nipple', 1, '2017-12-16'),
(250, 'Vegetable Sticks', 1, '2017-12-16'),
(251, 'Mixed Fruits', 1, '2017-12-16'),
(252, 'Toss Green Salad', 1, '2017-12-16'),
(253, 'Toss Green Salad', 1, '2017-12-16'),
(254, 'Seafood Fried Rice', 1, '2017-12-16'),
(255, 'Bull Jagger', 1, '2017-12-16'),
(256, 'Weng Weng', 1, '2017-12-16'),
(257, 'Bull Jagger', 1, '2017-12-16'),
(258, 'Bull Jagger', 1, '2017-12-16'),
(259, 'Weng Weng', 1, '2017-12-16'),
(260, 'Toss Green Salad', 1, '2017-12-16'),
(261, 'Vegetable Sticks', 1, '2017-12-16'),
(262, 'Seafood Fried Rice', 3, '2017-12-16'),
(263, 'Mushroom Soup', 1, '2017-12-16'),
(264, 'Hottotay Soup', 3, '2017-12-16'),
(265, 'Pancit Canton', 1, '2017-12-16'),
(266, 'Absolute Blue (750ml)', 1, '2017-12-16'),
(267, '	\nAbsolute Citron (Single Shot)', 1, '2017-12-16'),
(268, 'Chicken Barbeque', 3, '2017-12-16'),
(269, 'Mushroom Soup', 2, '2017-12-16'),
(270, 'Lechon Rice', 2, '2017-12-16'),
(271, 'Beef Tapa', 1, '2017-12-16'),
(272, 'DSAASD', 1, '2017-12-16'),
(273, 'Lechon Rice', 1, '2017-12-16'),
(274, 'Seafood Fried Rice', 1, '2017-12-16'),
(275, 'Shanghai Fried Rice', 1, '2017-12-16'),
(276, 'Garlic Rice', 1, '2017-12-16'),
(277, 'Pork Barbeque', 1, '2017-12-16'),
(278, 'Chicken Barbeque', 3, '2017-12-16'),
(279, 'Chicken Sandwich', 2, '2017-12-16'),
(280, 'Ham & Chess Sandwich', 1, '2017-12-16'),
(281, 'Tangueray Gin (Single Shot)', 1, '2017-12-16'),
(282, 'Bacardi Gold (Single Shot)', 1, '2017-12-16'),
(283, 'Cuervo Gold (750ml)', 1, '2017-12-16'),
(284, 'Chicken Barbeque', 1, '2017-12-16'),
(285, 'Inihaw na Baboy', 1, '2017-12-16'),
(286, 'Chicken Sandwich', 2, '2017-12-16'),
(287, 'Clubhouse Sandwich', 2, '2017-12-16'),
(288, 'Chicken Sandwich', 2, '2017-12-16'),
(289, 'Ham & Egg Sandwich', 1, '2017-12-16'),
(290, 'Ham & Chess Sandwich', 1, '2017-12-16'),
(291, 'Smirnoff (Single Shot)', 2, '2017-12-16'),
(292, 'Chicken Sandwich', 1, '2017-12-16'),
(293, 'Ham & Chess Sandwich', 1, '2017-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `menu_db`
--

CREATE TABLE IF NOT EXISTS `menu_db` (
  `menuitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_happyprice` double(65,2) DEFAULT NULL,
  `item_regularprice` double(65,2) DEFAULT NULL,
  `item_availability` enum('not available','available') DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `item_commission` double(65,2) DEFAULT NULL,
  `item_discount` double(65,2) DEFAULT NULL,
  PRIMARY KEY (`menuitem_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=198 ;

--
-- Dumping data for table `menu_db`
--

INSERT INTO `menu_db` (`menuitem_id`, `name`, `item_category`, `item_happyprice`, `item_regularprice`, `item_availability`, `code`, `item_commission`, `item_discount`) VALUES
(1, 'Cold Cuts', 'Appetizer', 320.00, 350.00, 'available', 'AP01', 6.00, 0.00),
(2, 'Crispy Pata', 'Appetizer', 420.00, 440.00, 'available', 'AP02', 6.00, 0.00),
(3, '1/2 Fried Chicken', 'Appetizer', 180.00, 200.00, 'available', 'AP03', 6.00, 0.00),
(4, '1/2 Fried Chicken Garlic Sauce', 'Appetizer', 200.00, 220.00, 'available', 'AP04', 6.00, 0.00),
(5, 'Buttered Chicken', 'Appetizer', 200.00, 220.00, 'available', 'AP05', 6.00, 0.00),
(6, 'Chicken Wings', 'Appetizer', 180.00, 190.00, 'available', 'AP06', 6.00, 0.00),
(7, 'Chicken Lollipop', 'Appetizer', 180.00, 190.00, 'available', 'AP07', 6.00, 0.00),
(8, 'Chicharon Bulaklak', 'Appetizer', 150.00, 160.00, 'available', 'AP08', 6.00, 0.00),
(9, 'Lechon Kawali', 'Appetizer', 130.00, 140.00, 'available', 'AP09', 6.00, 0.00),
(10, 'Nilasing na Hipon', 'Appetizer', 200.00, 220.00, 'available', 'AP10', 6.00, 0.00),
(11, 'Camaron Rebosado', 'Appetizer', 190.00, 200.00, 'available', 'AP11', 6.00, 0.00),
(12, 'Calamares', 'Appetizer', 210.00, 2200.00, 'available', 'AP12', 6.00, 0.00),
(13, 'Fried Onion Rings', 'Appetizer', 100.00, 120.00, 'available', 'AP13', 3.00, 0.00),
(14, 'Shanghai Lumpia', 'Appetizer', 120.00, 140.00, 'available', 'AP14', 6.00, 0.00),
(15, 'Beef Tapa', 'Appetizer', 150.00, 160.00, 'available', 'AP15', 6.00, 0.00),
(16, 'Tokwa''t Baboy', 'Appetizer', 100.00, 120.00, 'available', 'AP16', 3.00, 0.00),
(17, 'Kilawen Tanguigui', 'Appetizer', 225.00, 240.00, 'available', 'AP17', 6.00, 0.00),
(18, 'Hotdog with Onions', 'Appetizer', 100.00, 120.00, 'available', 'AP18', 3.00, 0.00),
(19, 'French Fried', 'Appetizer', 120.00, 140.00, 'available', 'AP19', 6.00, 0.00),
(20, 'Chicharon Baboy', 'Appetizer', 90.00, 100.00, 'available', 'AP20', 3.00, 0.00),
(21, 'Sliced Cucumber', 'Appetizer', 75.00, 85.00, 'available', 'AP21', 0.00, 0.00),
(22, 'Cheese Lumpia', 'Appetizer', 80.00, 90.00, 'available', 'AP22', 0.00, 0.00),
(23, 'Peanut', 'Appetizer', 75.00, 75.00, 'available', 'AP23', 0.00, 0.00),
(24, '1/2 Sizzling Chicken', 'Sizzling', 210.00, 220.00, 'available', 'SZ01', 6.00, 0.00),
(26, 'Sizzling Gambas', 'Sizzling', 215.00, 230.00, 'available', 'SZ02', 6.00, 0.00),
(27, 'Sizzling Fried Shrimp with Garlic Sauce', 'Sizzling', 215.00, 230.00, 'available', 'SZ03', 6.00, 0.00),
(28, 'Sizzling Mushroom w/G.Sauce', 'Appetizer', 180.00, 200.00, 'available', 'SZ04', 6.00, 0.00),
(29, 'Sizzling Pusit', 'Sizzling', 220.00, 240.00, 'available', 'SZ05', 6.00, 0.00),
(30, 'Sizzling Beef Tips', 'Sizzling', 200.00, 210.00, 'available', 'SZ06', 6.00, 0.00),
(31, 'Sizzling Tanguigui', 'Sizzling', 250.00, 280.00, 'available', 'SZ07', 6.00, 0.00),
(32, 'Sizzling Porkchop', 'Sizzling', 175.00, 190.00, 'available', 'SZ08', 6.00, 0.00),
(33, 'Sizzling Hotdog', 'Sizzling', 140.00, 150.00, 'available', 'SZ09', 6.00, 0.00),
(34, 'Alberto''s Special', 'Sandwiches', 150.00, 150.00, 'available', 'SW01', 0.00, 0.00),
(35, 'Clubhouse Sandwich', 'Sandwiches', 130.00, 130.00, 'available', 'SW02', 0.00, 0.00),
(36, 'Chicken Sandwich', 'Sandwiches', 60.00, 60.00, 'available', 'SW03', 0.00, 0.00),
(37, 'Ham & Egg Sandwich', 'Sandwiches', 60.00, 60.00, 'available', 'SW04', 0.00, 0.00),
(38, 'Ham & Chess Sandwich', 'Sandwiches', 60.00, 60.00, 'available', 'SW05', 0.00, 0.00),
(39, 'Inihaw na Pusit', 'Barbeques', 260.00, 275.00, 'available', 'BQ01', 6.00, 0.00),
(40, 'Inihaw na Baboy', 'Barbeques', 110.00, 120.00, 'available', 'BQ02', 6.00, 0.00),
(41, 'Chicken Barbeque', 'Barbeques', 100.00, 100.00, 'available', 'BQ03', 3.00, 0.00),
(42, 'Pork Barbeque', 'Barbeques', 70.00, 75.00, 'available', 'BQ04', 3.00, 0.00),
(43, 'Fried Chicken Rice', 'Rice Toppings', 130.00, 130.00, 'available', 'RT01', 0.00, 0.00),
(44, 'Porkchop Rice', 'Rice Toppings', 130.00, 130.00, 'available', 'RT02', 0.00, 0.00),
(45, 'Lechon Rice', 'Rice Toppings', 130.00, 130.00, 'available', 'RT03', 0.00, 0.00),
(46, 'Seafood Fried Rice', 'Rice Toppings', 105.00, 105.00, 'available', 'RT04', 0.00, 0.00),
(47, 'Shanghai Fried Rice', 'Rice Toppings', 95.00, 105.00, 'available', 'RT05', 0.00, 0.00),
(48, 'Garlic Rice', 'Rice Toppings', 35.00, 35.00, 'available', 'RT06', 0.00, 0.00),
(49, 'Plain Rice', 'Rice Toppings', 30.00, 30.00, 'available', 'RT07', 0.00, 0.00),
(50, 'Mixed Fruits', 'Salads', 350.00, 400.00, 'available', 'SD01', 6.00, 0.00),
(51, 'Chef''s Salad', 'Salads', 110.00, 120.00, 'available', 'SD02', 0.00, 0.00),
(52, 'Vegetable Sticks', 'Salads', 120.00, 130.00, 'available', 'SD03', 0.00, 0.00),
(53, 'Toss Green Salad', 'Salads', 100.00, 100.00, 'available', 'SD04', 0.00, 0.00),
(54, 'Coleslaw Salad', 'Salads', 90.00, 100.00, 'available', 'SD05', 0.00, 0.00),
(55, 'Pancit Bihon Guisado', 'Noodles/Soup', 120.00, 120.00, 'available', 'NS01', 0.00, 0.00),
(56, 'Sotangon Guisado', 'Noodles/Soup', 120.00, 120.00, 'available', 'NS02', 0.00, 0.00),
(57, 'Pancit Canton', 'Noodles/Soup', 130.00, 130.00, 'available', 'NS03', 0.00, 0.00),
(58, 'Hottotay Soup', 'Noodles/Soup', 120.00, 120.00, 'available', 'NS04', 0.00, 0.00),
(59, 'Mushroom Soup', 'Noodles/Soup', 120.00, 120.00, 'available', 'NS05', 0.00, 0.00),
(60, '	\nBeef Mami', 'Noodles/Soup', 75.00, 75.00, 'available', 'NS06', 0.00, 0.00),
(61, 'Chicken Mami', 'Noodles/Soup', 75.00, 75.00, 'available', 'NS07', 0.00, 0.00),
(62, 'Lomi', 'Noodles/Soup', 100.00, 100.00, 'available', 'NS08', 0.00, 0.00),
(63, 'Plain Margarita', 'Cocktails', 90.00, 100.00, 'available', 'CT1', 2.00, 0.00),
(64, 'Blue Margarita', 'Cocktails', 90.00, 100.00, 'available', 'CT2', 2.00, 0.00),
(65, 'Tequila Sunrise', 'Cocktails', 90.00, 95.00, 'available', 'CT3', 2.00, 0.00),
(66, 'Zombie', 'Cocktails', 90.00, 100.00, 'available', 'CT4', 2.00, 0.00),
(67, 'Mai Tai', 'Cocktails', 90.00, 95.00, 'available', 'CT5', 2.00, 0.00),
(68, '	\nPina Colada', 'Cocktails', 90.00, 100.00, 'available', 'CT6', 2.00, 0.00),
(69, 'Blue Hawaiian', 'Cocktails', 90.00, 95.00, 'available', 'CT7', 2.00, 0.00),
(70, 'Weng Weng', 'Cocktails', 110.00, 120.00, 'available', 'CT8', 2.00, 0.00),
(71, 'Sex on the Beach', 'Cocktails', 90.00, 100.00, 'available', 'CT9', 2.00, 0.00),
(72, 'Choco Mudslide', 'Cocktails', 90.00, 100.00, 'available', 'CT10', 2.00, 0.00),
(73, 'Caramel Mudslide', 'Cocktails', 90.00, 100.00, 'not available', 'CT11', 2.00, 0.00),
(74, 'Long Island Tea', 'Cocktails', 110.00, 120.00, 'not available', 'CT12', 2.00, 0.00),
(75, 'Kamikaze', 'Cocktails', 90.00, 95.00, 'not available', 'CT13', 2.00, 0.00),
(76, '	\nBlue Lagoon', 'Cocktails', 90.00, 95.00, 'not available', 'CT14', 2.00, 0.00),
(77, 'Black Russian', 'Cocktails', 90.00, 95.00, 'not available', 'CT15', 2.00, 0.00),
(78, 'White Russian', 'Cocktails', 90.00, 95.00, 'not available', 'CT16', 2.00, 0.00),
(79, 'Cosmopolitan', 'Cocktails', 90.00, 95.00, 'not available', 'CT17', 2.00, 0.00),
(80, 'Sweet Martini', 'Cocktails', 90.00, 95.00, 'not available', 'CT18', 2.00, 0.00),
(81, 'Dry Martini', 'Cocktails', 90.00, 95.00, 'not available', 'CT19', 2.00, 0.00),
(82, 'Bull Jagger', 'Cocktails', 110.00, 120.00, 'not available', 'CT20', 2.00, 0.00),
(85, 'Margarita', 'Pitcher Cocktails', 580.00, 600.00, 'not available', 'PC3', 2.00, 0.00),
(86, 'Blow Job', 'Shooters', 90.00, 100.00, 'not available', 'SH1', 2.00, 0.00),
(87, 'Slippery Nipple', 'Shooters', 90.00, 100.00, 'not available', 'SH2', 2.00, 0.00),
(88, 'Flaming Orgasm', 'Shooters', 90.00, 100.00, 'not available', 'SH3', 2.00, 0.00),
(89, 'Vodka Snipper', 'Shooters', 90.00, 100.00, 'not available', 'SH4', 2.00, 0.00),
(90, 'B-51', 'Shooters', 90.00, 100.00, 'not available', 'SH5', 2.00, 0.00),
(91, 'Absolute Blue(Single Shot)', 'Tequila/Gin/Rum/Vodka', 85.00, 100.00, 'not available', 'TG1', 2.00, 0.00),
(92, '	\nAbsolute Citron (Single Shot)', 'Tequila/Gin/Rum/Vodka', 95.00, 110.00, 'not available', 'TG2', 2.00, 0.00),
(93, 'Smirnoff (Single Shot)', 'Tequila/Gin/Rum/Vodka', 85.00, 100.00, 'not available', 'TG3', 2.00, 0.00),
(94, 'Cuervo Gold (Single Shot)', 'Tequila/Gin/Rum/Vodka', 95.00, 110.00, 'not available', 'TG4', 2.00, 0.00),
(95, 'Bacardi Gold (Single Shot)', 'Tequila/Gin/Rum/Vodka', 85.00, 90.00, 'not available', 'TG5', 2.00, 0.00),
(96, 'Tangueray Gin (Single Shot)', 'Tequila/Gin/Rum/Vodka', 85.00, 90.00, 'not available', 'TG6', 2.00, 0.00),
(97, 'Absolute Blue (750ml)', 'Tequila/Gin/Rum/Vodka', 1900.00, 2000.00, 'not available', 'TG7', 19.00, 0.00),
(98, 'Absolute Citron (750ml)', 'Tequila/Gin/Rum/Vodka', 2100.00, 2200.00, 'not available', 'TG8', 19.00, 0.00),
(99, 'Smirnoff (750ml)', 'Tequila/Gin/Rum/Vodka', 1400.00, 1500.00, 'not available', 'TG9', 19.00, 0.00),
(100, 'Cuervo Gold (750ml)', 'Tequila/Gin/Rum/Vodka', 2100.00, 2200.00, 'not available', 'TG10', 19.00, 0.00),
(101, 'Bacardi Gold (750ml)', 'Tequila/Gin/Rum/Vodka', 1400.00, 1500.00, 'not available', 'TG11', 19.00, 0.00),
(102, 'Henessy V.S.O.P (Single Shot)', 'Tequila/Gin/Rum/Vodka', 1700.00, 1500.00, 'not available', 'TG12', 19.00, 0.00),
(103, 'Johnny Walker Black (Single Shot)', 'Scotch/Cognac/Brandy', 115.00, 130.00, 'not available', 'SC1', 2.00, 0.00),
(104, 'Chivas Regal (Single Shot)', 'Scotch/Cognac/Brandy', 115.00, 130.00, 'available', 'SC2', 2.00, 0.00),
(105, 'J & B (Single Shot)', 'Scotch/Cognac/Brandy', 90.00, 95.00, 'available', 'SC3', 2.00, 0.00),
(106, 'Remy Martin (Single Shot)', 'Scotch/Cognac/Brandy', 170.00, 180.00, 'available', 'SC4', 2.00, 0.00),
(107, '	\nHenessy V.S.O.P (Single Shot)', 'Scotch/Cognac/Brandy', 175.00, 190.00, 'available', 'SC5', 2.00, 0.00),
(108, 'Carlos 1 (Single Shot)', 'Scotch/Cognac/Brandy', 130.00, 150.00, 'available', 'SC6', 2.00, 0.00),
(109, '	\nFundador (Single Shot)', 'Scotch/Cognac/Brandy', 90.00, 95.00, 'available', 'SC7', 2.00, 0.00),
(110, 'Jack Daniel (Single Shot)', 'Scotch/Cognac/Brandy', 115.00, 130.00, 'available', 'SC8', 2.00, 0.00),
(111, '	\nJim Beam (Single Shot)', 'Scotch/Cognac/Brandy', 100.00, 110.00, 'available', 'SC9', 2.00, 0.00),
(112, 'Johnny Walker Black (750ml)', 'Scotch/Cognac/Brandy', 2300.00, 2400.00, 'available', 'SC10', 19.00, 0.00),
(123, 'Chivas Regal (750ml)', 'Scotch/Cognac/Brandy', 2300.00, 2400.00, 'available', 'SC11', 19.00, 0.00),
(124, 'J & B (750ml)', 'Scotch/Cognac/Brandy', 1900.00, 1800.00, 'available', 'SC12', 19.00, 0.00),
(125, 'Remy Martin (750ml)', 'Scotch/Cognac/Brandy', 3500.00, 3600.00, 'available', 'SC13', 19.00, 0.00),
(126, 'Henessy V.S.O.P (750ml)', 'Scotch/Cognac/Brandy', 3700.00, 3800.00, 'available', 'SC14', 19.00, 0.00),
(127, 'Carlos 1 (750ml)', 'Scotch/Cognac/Brandy', 2300.00, 2400.00, 'available', 'SC15', 19.00, 0.00),
(128, 'Fundador (750ml)', 'Scotch/Cognac/Brandy', 1400.00, 1500.00, 'available', 'SC16', 19.00, 0.00),
(129, 'Jack Daniel (750ml)', 'Scotch/Cognac/Brandy', 2300.00, 2400.00, 'available', 'SC17', 19.00, 0.00),
(130, 'Jim Beam (750ml)', 'Scotch/Cognac/Brandy', 1700.00, 1800.00, 'available', 'SC18', 19.00, 0.00),
(131, 'Beer Tower', 'Smb Draft/ Bottled Beer', 600.00, 640.00, 'available', 'SB1', 10.00, 0.00),
(132, 'Barrel', 'Smb Draft/ Bottled Beer', 590.00, 560.00, 'available', 'SB2', 6.00, NULL),
(133, 'Pitcher', 'Smb Draft/ Bottled Beer', 200.00, 220.00, 'available', 'SB3', 2.00, 0.00),
(134, 'Mug', 'Smb Draft/ Bottled Beer', 50.00, 60.00, 'available', 'SB4', 0.00, 0.00),
(135, 'San Miguel Pale Pilsen', 'Smb Draft/ Bottled Beer', 50.00, 60.00, 'available', 'SB5', 0.50, 0.00),
(136, 'San Miguel Light', 'Smb Draft/ Bottled Beer', 55.00, 65.00, 'available', 'SB6', 0.50, 0.00),
(137, 'San Miguel Light (Apple/Lemon)', 'Smb Draft/ Bottled Beer', 55.00, 65.00, 'available', 'SB7', 0.50, 0.00),
(138, 'Red Horse', 'Smb Draft/ Bottled Beer', 50.00, 65.00, 'available', 'SB8', 0.50, 0.00),
(140, 'Cali', 'Smb Draft/ Bottled Beer', 50.00, 65.00, 'available', 'SB9', 0.50, 0.00),
(141, 'Gold Schalger (Singe Shot)', 'Liquers', 110.00, 120.00, 'available', 'LQ1', 2.00, 0.00),
(142, 'Baileys (Single Shot)', 'Liquers', 90.00, 100.00, 'available', 'LQ2', 2.00, NULL),
(143, 'Kahlua (Single Shot)', 'Liquers', 90.00, 95.00, 'available', 'LQ3', 2.00, 0.00),
(144, '	\nTequila Rose (Single Shot)', 'Liquers', 100.00, 110.00, 'available', 'LQ4', 2.00, 0.00),
(145, 'Jager Miester (Single Shot)', 'Liquers', 100.00, 110.00, 'available', 'LQ5', 2.00, 0.00),
(146, '	\nGold Schalger (750ml)', 'Liquers', 2300.00, 2400.00, 'available', 'LQ6', 19.00, NULL),
(147, '	\nBaileys (750ml)', 'Liquers', 1900.00, 2000.00, 'available', 'LQ7', 19.00, 0.00),
(148, 'Kahlua (750ml)', 'Liquers', 1700.00, 1800.00, 'available', 'LQ8', 19.00, 0.00),
(149, 'Tequila Rose (750ml)', 'Liquers', 1900.00, 2000.00, 'available', 'LQ9', 19.00, 0.00),
(150, 'Jager Miester (750ml)', 'Liquers', 1900.00, 2000.00, 'available', 'LQ10', 19.00, 0.00),
(151, 'Four Season', 'Mocktail Hot and Cold Beverages', 85.00, 85.00, 'available', 'MT1', 0.00, 0.00),
(152, 'Shirley Temple', 'Mocktail Hot and Cold Beverages', 75.00, 75.00, 'available', 'MT2', 0.00, 0.00),
(153, 'Iced Lemonde', 'Mocktail Hot and Cold Beverages', 70.00, 70.00, 'available', 'MT3', 0.00, 0.00),
(154, 'Cranberry Cocktail', 'Mocktail Hot and Cold Beverages', 80.00, 80.00, 'available', 'MT4', 0.00, 0.00),
(155, 'Cali Temple', 'Mocktail Hot and Cold Beverages', 85.00, 85.00, 'available', 'MT5', 0.00, 0.00),
(156, 'Orange Juice', 'Mocktail Hot and Cold Beverages', 60.00, 60.00, 'available', 'MT6', 0.00, 0.00),
(157, 'Pineapple Juice', 'Mocktail Hot and Cold Beverages', 60.00, 60.00, 'available', 'MT7', 0.00, 0.00),
(158, 'Mango Juice', 'Mocktail Hot and Cold Beverages', 60.00, 60.00, 'available', 'MT8', 0.00, 0.00),
(159, 'Iced Tea', 'Mocktail Hot and Cold Beverages', 60.00, 60.00, 'available', 'MT9', 0.00, 0.00),
(160, 'Iced Choco', 'Mocktail Hot and Cold Beverages', 70.00, 70.00, 'available', 'MT10', 0.00, 0.00),
(161, 'Iced Coffee', 'Mocktail Hot and Cold Beverages', 70.00, 70.00, 'available', 'MT11', 0.00, 0.00),
(162, 'Hot Calamansi', 'Mocktail Hot and Cold Beverages', 60.00, 60.00, 'available', 'MT12', 0.00, 0.00),
(163, 'Cold Calamansi', 'Mocktail Hot and Cold Beverages', 60.00, 60.00, 'available', 'MT13', 0.00, 0.00),
(164, 'Hot Choco', 'Mocktail Hot and Cold Beverages', 50.00, 50.00, 'available', 'MT14', 0.00, 0.00),
(165, 'Hot Coffee', 'Mocktail Hot and Cold Beverages', 45.00, 45.00, 'available', 'MT15', 0.00, 0.00),
(166, 'Coke', 'Mocktail Hot and Cold Beverages', 60.00, 60.00, 'available', 'MT16', 0.00, 0.00),
(167, 'Sprite', 'Mocktail Hot and Cold Beverages', 60.00, 60.00, 'available', 'MT17', 0.00, 0.00),
(168, 'Strawberry Shake', 'Fruit Shakes', 150.00, 160.00, 'available', 'FS1', 0.00, 0.00),
(169, 'Pineapple Shake', 'Fruit Shakes', 110.00, 120.00, 'available', 'FS2', 0.00, 0.00),
(170, 'Apple Shake', 'Fruit Shakes', 110.00, 120.00, 'available', 'FS3', 0.00, 0.00),
(171, 'Orange Shake', 'Fruit Shakes', 130.00, 140.00, 'available', 'FS4', 0.00, 0.00),
(172, 'Mango Shake', 'Fruit Shakes', 140.00, 150.00, 'available', 'FS5', 0.00, 0.00),
(173, 'Green Mango Shake', 'Fruit Shakes', 140.00, 150.00, 'available', 'FS6', 0.00, 0.00),
(194, 'cocktails', 'Mocktail Hot and Cold Beverages', 112.00, 123.00, NULL, 'MT1233', 123.00, 123.00),
(193, 'chicken adobo', 'Appetizer', 100.00, 230.00, NULL, 'AP25', 3.00, 123.00),
(195, 'Broken Glass', 'Appetizer', 30.00, 30.00, 'available', 'OTHERS', 0.00, 0.00),
(196, 'DSAASD', 'Appetizer', 1.00, 1.00, NULL, 'AP26', 1.00, 1.00),
(197, '    ', 'Appetizer', 90.00, 100.00, NULL, 'AP', 10.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_db`
--

CREATE TABLE IF NOT EXISTS `order_db` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_code` varchar(255) DEFAULT NULL,
  `order_table` varchar(255) DEFAULT NULL,
  `order_waiter` varchar(255) DEFAULT NULL,
  `order_time` time DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_quantity` int(11) DEFAULT NULL,
  `order_name` varchar(45) DEFAULT NULL,
  `order_price` double(65,2) DEFAULT NULL,
  `order_type` varchar(255) DEFAULT NULL,
  `order_tprice` decimal(65,2) DEFAULT NULL,
  `order_priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

-- --------------------------------------------------------

--
-- Table structure for table `paid_db`
--

CREATE TABLE IF NOT EXISTS `paid_db` (
  `paid_id` int(11) NOT NULL AUTO_INCREMENT,
  `paid_code` varchar(255) DEFAULT NULL,
  `paid_table` varchar(255) DEFAULT NULL,
  `paid_waiter` varchar(255) DEFAULT NULL,
  `paid_time` time DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `paid_quantity` int(11) DEFAULT NULL,
  `paid_name` varchar(45) DEFAULT NULL,
  `paid_price` decimal(65,2) DEFAULT NULL,
  `paid_type` varchar(255) DEFAULT NULL,
  `paid_tprice` decimal(65,2) DEFAULT NULL,
  PRIMARY KEY (`paid_id`),
  KEY `paid_id` (`paid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `paid_db`
--

INSERT INTO `paid_db` (`paid_id`, `paid_code`, `paid_table`, `paid_waiter`, `paid_time`, `paid_date`, `paid_quantity`, `paid_name`, `paid_price`, `paid_type`, `paid_tprice`) VALUES
(119, '297', 'A01', 'ayie', '23:41:23', '2018-01-07', 1, 'Ham & Egg Sandwich', '60.00', 'Dine In', '60.00'),
(121, '298', 'A03', 'ayie', '23:45:16', '2018-01-07', 1, 'Inihaw na Baboy', '110.00', 'Dine In', '110.00'),
(122, '299', 'A08', 'ayie', '00:06:11', '2018-01-07', 1, 'Ham & Egg Sandwich', '60.00', 'Dine In', '60.00'),
(124, '299', 'A08', 'ayie', '00:06:11', '2018-01-07', 1, 'Chicken Sandwich', '60.00', 'Dine In', '60.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_db`
--

CREATE TABLE IF NOT EXISTS `sales_db` (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `total_item_sale` double DEFAULT NULL,
  PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `served_db`
--

CREATE TABLE IF NOT EXISTS `served_db` (
  `served_id` int(11) NOT NULL,
  `served_code` varchar(255) DEFAULT NULL,
  `served_table` varchar(255) DEFAULT NULL,
  `served_waiter` varchar(255) DEFAULT NULL,
  `served_time` time DEFAULT NULL,
  `served_date` date DEFAULT NULL,
  `served_quantity` int(11) DEFAULT NULL,
  `served_name` varchar(255) DEFAULT NULL,
  `served_price` decimal(65,2) DEFAULT NULL,
  `served_type` varchar(255) DEFAULT NULL,
  `served_tprice` double(65,2) DEFAULT NULL,
  `served_priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`served_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_db`
--

CREATE TABLE IF NOT EXISTS `table_db` (
  `table_id` int(25) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(20) DEFAULT NULL,
  `table_column` varchar(45) DEFAULT NULL,
  `table_number` int(65) NOT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `table_db`
--

INSERT INTO `table_db` (`table_id`, `table_name`, `table_column`, `table_number`) VALUES
(1, 'A01', 'A', 0),
(2, 'A02', 'A', 0),
(3, 'A03', 'A', 0),
(4, 'A04', 'A', 0),
(5, 'A05', 'A', 0),
(6, 'A06', 'A', 0),
(7, 'A07', 'A', 0),
(8, 'B01', 'B', 0),
(9, 'B02', 'B', 0),
(10, 'B03', 'B', 0),
(11, 'B04', 'B', 0),
(12, 'B05', 'B', 0),
(13, 'B06', 'B', 0),
(14, 'B07', 'B', 0),
(15, 'B08', 'B', 0),
(16, 'B09', 'B', 0),
(17, 'B10', 'B', 0),
(18, 'B11', 'B', 0),
(19, 'B12', 'B', 0),
(20, 'B13', 'B', 0),
(21, 'B14', 'B', 0),
(22, 'B15', 'B', 0),
(23, 'B16', 'B', 0),
(24, 'B17', 'B', 0),
(25, 'B18', 'B', 0),
(26, 'B19', 'B', 0),
(27, 'B20', 'B', 0),
(28, 'B21', 'B', 0),
(29, 'B22', 'B', 0),
(30, 'B23', 'B', 0),
(31, 'B24', 'B', 0),
(32, 'B25', 'B', 0),
(33, 'B26', 'B', 0),
(34, 'B27', 'B', 0),
(35, 'B28', 'B', 0),
(36, 'B29', 'B', 0),
(37, 'B30', 'B', 0),
(38, 'B31', 'B', 0),
(39, 'B32', 'B', 0),
(40, 'B33', 'B', 0),
(41, 'C01', 'C', 0),
(42, 'C02', 'C', 0),
(43, 'C03', 'C', 0),
(44, 'C04', 'C', 0),
(45, 'C05', 'C', 0),
(46, 'C06', 'C', 0),
(47, 'C07', 'C', 0),
(48, 'C08', 'C', 0),
(49, 'C09', 'C', 0),
(50, 'C10', 'C', 0),
(51, 'C11', 'C', 0),
(52, 'C12', 'C', 0),
(53, 'C13', 'C', 0),
(54, 'C14', 'C', 0),
(55, 'C15', 'C', 0),
(56, 'C16', 'C', 0),
(57, 'C17', 'C', 0),
(58, 'C18', 'C', 0),
(59, 'C19', 'C', 0),
(60, 'C20', 'C', 0),
(61, 'C21', 'C', 0),
(62, 'C22', 'C', 0),
(63, 'C23', 'C', 0),
(64, 'C24', 'C', 0),
(65, 'C25', 'C', 0),
(66, 'D01', 'D', 0),
(67, 'D02', 'D', 0),
(68, 'D03', 'D', 0),
(69, 'D04', 'D', 0),
(70, 'D05', 'D', 0),
(71, 'D06', 'D', 0),
(72, 'D07', 'D', 0),
(73, 'D08', 'D', 0),
(74, 'D09', 'D', 0),
(75, 'D10', 'D', 0),
(76, 'D11', 'D', 0),
(77, 'D12', 'D', 0),
(78, 'D13', 'D', 0),
(80, 'D14', 'D', 0),
(82, 'S01', 'S', 0),
(83, 'S02', 'S', 0),
(84, 'S03', 'S', 0),
(85, 'S04', 'S', 0),
(86, 'S05', 'S', 0),
(87, 'S06', 'S', 0),
(88, 'S07', 'S', 0),
(89, 'S08', 'S', 0),
(90, 'S09', 'S', 0),
(91, 'S10', 'S', 0),
(92, 'S11', 'S', 0),
(93, 'S12', 'S', 0),
(94, 'S13', 'S', 13),
(95, 'A08', 'A', 8);

-- --------------------------------------------------------

--
-- Table structure for table `table_orders`
--

CREATE TABLE IF NOT EXISTS `table_orders` (
  `table_orders_id` int(255) NOT NULL AUTO_INCREMENT,
  `table_orders_serverid` int(255) NOT NULL,
  `table_orders_tableid` int(255) NOT NULL,
  `table_order_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`table_orders_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=300 ;

--
-- Dumping data for table `table_orders`
--

INSERT INTO `table_orders` (`table_orders_id`, `table_orders_serverid`, `table_orders_tableid`, `table_order_timestamp`) VALUES
(1, 0, 0, '2017-11-15 23:12:13'),
(2, 0, 0, '2017-11-15 23:12:53'),
(3, 0, 0, '2017-11-15 23:37:06'),
(4, 0, 0, '2017-11-15 23:40:29'),
(5, 0, 0, '2017-11-15 23:49:10'),
(6, 0, 0, '2017-11-16 00:04:44'),
(7, 0, 0, '2017-11-16 00:22:49'),
(8, 0, 0, '2017-11-16 00:32:28'),
(9, 0, 0, '2017-11-16 00:33:56'),
(10, 0, 0, '2017-11-16 00:35:32'),
(11, 0, 0, '2017-11-16 00:40:11'),
(12, 0, 0, '2017-11-16 00:41:06'),
(13, 0, 0, '2017-11-16 00:42:45'),
(14, 0, 0, '2017-11-16 00:48:21'),
(15, 0, 0, '2017-11-16 00:48:56'),
(16, 0, 0, '2017-11-16 10:25:18'),
(17, 0, 0, '2017-11-16 10:26:46'),
(18, 0, 0, '2017-11-16 10:36:50'),
(19, 0, 0, '2017-11-16 10:43:24'),
(20, 0, 0, '2017-11-16 10:44:15'),
(21, 0, 0, '2017-11-18 08:12:50'),
(22, 0, 0, '2017-11-18 08:13:04'),
(23, 0, 0, '2017-11-18 08:17:25'),
(24, 0, 0, '2017-11-18 09:06:55'),
(25, 0, 0, '2017-11-18 09:07:34'),
(26, 0, 0, '2017-11-18 09:07:48'),
(27, 0, 0, '2017-11-18 09:08:01'),
(28, 0, 0, '2017-11-18 09:08:11'),
(29, 0, 0, '2017-11-18 09:43:35'),
(30, 0, 0, '2017-11-18 14:03:59'),
(31, 0, 0, '2017-11-18 14:04:50'),
(32, 0, 0, '2017-11-18 18:53:12'),
(33, 0, 0, '2017-11-18 19:18:56'),
(34, 0, 0, '2017-11-18 19:19:05'),
(35, 0, 0, '2017-11-18 19:23:00'),
(36, 0, 0, '2017-11-18 19:23:09'),
(37, 0, 0, '2017-11-18 19:23:18'),
(38, 0, 0, '2017-11-18 19:23:28'),
(39, 0, 0, '2017-11-18 19:26:59'),
(40, 0, 0, '2017-11-18 19:35:59'),
(41, 0, 0, '2017-11-18 19:46:53'),
(42, 0, 0, '2017-11-18 19:58:52'),
(43, 0, 0, '2017-11-18 20:28:38'),
(44, 0, 0, '2017-11-18 20:30:59'),
(45, 0, 0, '2017-11-18 20:32:31'),
(46, 0, 0, '2017-11-18 20:36:49'),
(47, 0, 0, '2017-11-18 20:57:46'),
(48, 0, 0, '2017-11-18 21:45:59'),
(49, 0, 0, '2017-11-19 07:32:57'),
(50, 0, 0, '2017-11-19 07:33:13'),
(51, 0, 0, '2017-11-19 07:58:51'),
(52, 0, 0, '2017-11-19 08:01:18'),
(53, 0, 0, '2017-11-19 08:07:34'),
(54, 0, 0, '2017-11-19 08:20:03'),
(55, 0, 0, '2017-11-19 08:21:48'),
(56, 0, 0, '2017-11-19 08:24:55'),
(57, 0, 0, '2017-11-19 08:27:16'),
(58, 0, 0, '2017-11-19 08:33:52'),
(59, 0, 0, '2017-11-19 08:42:16'),
(60, 0, 0, '2017-11-19 08:42:47'),
(61, 0, 0, '2017-11-19 08:43:13'),
(62, 0, 0, '2017-11-19 08:43:31'),
(63, 0, 0, '2017-11-20 17:22:53'),
(64, 0, 0, '2017-11-20 17:23:54'),
(65, 0, 0, '2017-11-20 17:23:56'),
(66, 0, 0, '2017-11-20 17:24:07'),
(67, 0, 0, '2017-11-20 17:24:17'),
(68, 0, 0, '2017-11-20 17:28:25'),
(69, 0, 0, '2017-11-20 17:28:34'),
(70, 0, 0, '2017-11-20 17:59:48'),
(71, 0, 0, '2017-11-20 17:59:56'),
(72, 0, 0, '2017-11-20 18:40:06'),
(73, 0, 0, '2017-11-20 18:40:29'),
(74, 0, 0, '2017-11-20 18:49:49'),
(75, 0, 0, '2017-11-20 18:50:00'),
(76, 0, 0, '2017-11-20 18:50:14'),
(77, 0, 0, '2017-11-20 18:51:49'),
(78, 0, 0, '2017-11-20 21:47:45'),
(79, 0, 0, '2017-11-20 21:48:36'),
(80, 0, 0, '2017-11-20 21:48:52'),
(81, 0, 0, '2017-11-20 21:49:12'),
(82, 0, 0, '2017-11-21 00:07:24'),
(83, 0, 0, '2017-11-21 00:22:16'),
(84, 0, 0, '2017-11-21 00:24:08'),
(85, 0, 0, '2017-11-21 06:35:48'),
(86, 0, 0, '2017-11-21 06:36:21'),
(87, 0, 0, '2017-11-21 06:36:36'),
(88, 0, 0, '2017-11-21 06:36:56'),
(89, 0, 0, '2017-11-21 06:48:28'),
(90, 0, 0, '2017-11-21 06:48:43'),
(91, 0, 0, '2017-11-21 06:48:54'),
(92, 0, 0, '2017-11-21 06:49:12'),
(93, 0, 0, '2017-11-21 06:49:31'),
(94, 0, 0, '2017-11-21 06:49:46'),
(95, 0, 0, '2017-11-21 11:05:00'),
(96, 0, 0, '2017-11-21 11:05:58'),
(97, 0, 0, '2017-11-21 11:06:28'),
(98, 0, 0, '2017-11-21 11:55:48'),
(99, 0, 0, '2017-11-21 14:14:41'),
(100, 0, 0, '2017-11-21 14:27:21'),
(101, 0, 0, '2017-11-21 14:36:05'),
(102, 0, 0, '2017-11-21 14:49:28'),
(103, 0, 0, '2017-11-21 17:19:38'),
(104, 0, 0, '2017-11-21 17:54:00'),
(105, 0, 0, '2017-11-23 01:10:48'),
(106, 0, 0, '2017-11-23 01:14:57'),
(107, 0, 0, '2017-11-23 01:24:28'),
(108, 0, 0, '2017-11-23 01:30:46'),
(109, 0, 0, '2017-11-23 01:32:57'),
(110, 0, 0, '2017-11-23 01:35:22'),
(111, 0, 0, '2017-11-23 01:35:33'),
(112, 0, 0, '2017-11-23 04:48:42'),
(113, 0, 0, '2017-11-23 04:49:13'),
(114, 0, 0, '2017-11-23 04:51:23'),
(115, 0, 0, '2017-11-23 04:51:26'),
(116, 0, 0, '2017-11-23 04:51:42'),
(117, 0, 0, '2017-11-23 04:51:45'),
(118, 0, 0, '2017-11-23 05:26:29'),
(119, 0, 0, '2017-11-23 05:41:55'),
(120, 0, 0, '2017-11-27 06:00:52'),
(121, 0, 0, '2017-11-27 06:01:43'),
(122, 0, 0, '2017-11-27 06:02:30'),
(123, 0, 0, '2017-11-27 06:04:23'),
(124, 0, 0, '2017-11-28 13:12:11'),
(125, 0, 0, '2017-11-28 13:15:29'),
(126, 0, 0, '2017-11-28 13:18:22'),
(127, 0, 0, '2017-11-28 13:23:35'),
(128, 0, 0, '2017-11-28 13:49:26'),
(129, 0, 0, '2017-11-28 13:52:43'),
(130, 0, 0, '2017-11-30 13:13:58'),
(131, 0, 0, '2017-11-30 13:14:15'),
(132, 0, 0, '2017-11-30 13:30:43'),
(133, 0, 0, '2017-11-30 13:45:14'),
(134, 0, 0, '2017-11-30 13:45:31'),
(135, 0, 0, '2017-11-30 13:46:04'),
(136, 0, 0, '2017-11-30 13:51:37'),
(137, 0, 0, '2017-11-30 13:55:34'),
(138, 0, 0, '2017-11-30 14:43:05'),
(139, 0, 0, '2017-11-30 14:45:06'),
(140, 0, 0, '2017-11-30 14:47:15'),
(141, 0, 0, '2017-11-30 14:50:50'),
(142, 0, 0, '2017-11-30 14:51:21'),
(143, 0, 0, '2017-11-30 14:52:23'),
(144, 0, 0, '2017-11-30 14:59:21'),
(145, 0, 0, '2017-11-30 15:01:30'),
(146, 0, 0, '2017-11-30 15:03:14'),
(147, 0, 0, '2017-11-30 16:25:02'),
(148, 0, 0, '2017-11-30 16:25:10'),
(149, 0, 0, '2017-11-30 16:31:16'),
(150, 0, 0, '2017-11-30 16:32:13'),
(151, 0, 0, '2017-11-30 16:59:02'),
(152, 0, 0, '2017-11-30 16:59:11'),
(153, 0, 0, '2017-11-30 16:59:20'),
(154, 0, 0, '2017-11-30 16:59:36'),
(155, 0, 0, '2017-11-30 17:14:20'),
(156, 0, 0, '2017-11-30 17:20:26'),
(157, 0, 0, '2017-11-30 17:25:29'),
(158, 0, 0, '2017-11-30 17:26:55'),
(159, 0, 0, '2017-11-30 17:27:04'),
(160, 0, 0, '2017-11-30 22:03:20'),
(161, 0, 0, '2017-11-30 22:04:38'),
(162, 0, 0, '2017-11-30 22:04:54'),
(163, 0, 0, '2017-11-30 22:05:04'),
(164, 0, 0, '2017-11-30 22:10:15'),
(165, 0, 0, '2017-11-30 22:10:22'),
(166, 0, 0, '2017-11-30 22:10:29'),
(167, 0, 0, '2017-11-30 22:10:37'),
(168, 0, 0, '2017-11-30 22:12:13'),
(169, 0, 0, '2017-11-30 22:15:39'),
(170, 0, 0, '2017-11-30 22:19:15'),
(171, 0, 0, '2017-11-30 22:22:29'),
(172, 0, 0, '2017-11-30 22:22:40'),
(173, 0, 0, '2017-11-30 22:34:22'),
(174, 0, 0, '2017-11-30 22:37:54'),
(175, 0, 0, '2017-12-01 09:42:45'),
(176, 0, 0, '2017-12-01 09:42:52'),
(177, 0, 0, '2017-12-01 09:42:58'),
(178, 0, 0, '2017-12-01 09:43:04'),
(179, 0, 0, '2017-12-01 09:43:11'),
(180, 0, 0, '2017-12-01 09:47:14'),
(181, 0, 0, '2017-12-01 09:50:55'),
(182, 0, 0, '2017-12-01 10:04:29'),
(183, 0, 0, '2017-12-01 10:07:19'),
(184, 0, 0, '2017-12-01 10:12:54'),
(185, 0, 0, '2017-12-01 10:13:27'),
(186, 0, 0, '2017-12-01 10:14:25'),
(187, 0, 0, '2017-12-01 10:15:33'),
(188, 0, 0, '2017-12-01 10:17:15'),
(189, 0, 0, '2017-12-01 10:17:23'),
(190, 0, 0, '2017-12-01 10:19:10'),
(191, 0, 0, '2017-12-01 10:19:18'),
(192, 0, 0, '2017-12-01 10:20:34'),
(193, 0, 0, '2017-12-01 10:21:03'),
(194, 0, 0, '2017-12-01 13:46:14'),
(195, 0, 0, '2017-12-01 13:46:20'),
(196, 0, 0, '2017-12-01 14:03:26'),
(197, 0, 0, '2017-12-01 14:08:55'),
(198, 0, 0, '2017-12-01 14:15:57'),
(199, 0, 0, '2017-12-01 14:16:12'),
(200, 0, 0, '2017-12-01 14:16:20'),
(201, 0, 0, '2017-12-01 14:16:25'),
(202, 0, 0, '2017-12-01 14:19:15'),
(203, 0, 0, '2017-12-01 14:20:15'),
(204, 0, 0, '2017-12-01 14:24:29'),
(205, 0, 0, '2017-12-01 14:28:41'),
(206, 0, 0, '2017-12-01 14:31:15'),
(207, 0, 0, '2017-12-01 14:32:15'),
(208, 0, 0, '2017-12-01 14:33:10'),
(209, 0, 0, '2017-12-01 15:46:15'),
(210, 0, 0, '2017-12-01 15:55:12'),
(211, 0, 0, '2017-12-01 15:58:22'),
(212, 0, 0, '2017-12-01 16:07:53'),
(213, 0, 0, '2017-12-01 16:08:55'),
(214, 0, 0, '2017-12-01 16:11:57'),
(215, 0, 0, '2017-12-02 07:21:05'),
(216, 0, 0, '2017-12-02 07:21:17'),
(217, 0, 0, '2017-12-02 10:33:39'),
(218, 0, 0, '2017-12-02 11:57:15'),
(219, 0, 0, '2017-12-02 12:16:49'),
(220, 0, 0, '2017-12-10 13:50:15'),
(221, 0, 0, '2017-12-10 13:50:44'),
(222, 0, 0, '2017-12-10 14:07:29'),
(223, 0, 0, '2017-12-14 16:56:43'),
(224, 0, 0, '2017-12-14 16:56:49'),
(225, 0, 0, '2017-12-14 17:24:56'),
(226, 0, 0, '2017-12-14 17:43:53'),
(227, 0, 0, '2017-12-14 18:13:26'),
(228, 0, 0, '2017-12-14 18:19:59'),
(229, 0, 0, '2017-12-14 18:20:18'),
(230, 0, 0, '2017-12-14 18:20:40'),
(231, 0, 0, '2017-12-14 18:21:33'),
(232, 0, 0, '2017-12-17 14:36:27'),
(233, 0, 0, '2017-12-17 14:46:02'),
(234, 0, 0, '2017-12-17 14:50:43'),
(235, 0, 0, '2017-12-17 14:50:48'),
(236, 0, 0, '2017-12-17 14:50:55'),
(237, 0, 0, '2017-12-17 14:51:01'),
(238, 0, 0, '2017-12-17 14:51:07'),
(239, 0, 0, '2017-12-17 15:10:04'),
(240, 0, 0, '2017-12-17 15:10:12'),
(241, 0, 0, '2017-12-17 15:11:00'),
(242, 0, 0, '2017-12-17 15:15:44'),
(243, 0, 0, '2017-12-17 15:16:22'),
(244, 0, 0, '2017-12-17 15:18:14'),
(245, 0, 0, '2017-12-17 15:41:20'),
(246, 0, 0, '2017-12-17 15:41:58'),
(247, 0, 0, '2017-12-17 15:42:51'),
(248, 0, 0, '2017-12-17 16:00:48'),
(249, 0, 0, '2017-12-17 16:01:23'),
(250, 0, 0, '2017-12-17 16:02:10'),
(251, 0, 0, '2018-01-04 14:26:40'),
(252, 0, 0, '2018-01-04 14:26:46'),
(253, 0, 0, '2018-01-04 14:27:01'),
(254, 0, 0, '2018-01-04 14:28:05'),
(255, 0, 0, '2018-01-04 14:28:32'),
(256, 0, 0, '2018-01-05 17:38:32'),
(257, 0, 0, '2018-01-06 13:24:50'),
(258, 0, 0, '2018-01-06 13:33:38'),
(259, 0, 0, '2018-01-06 14:01:51'),
(260, 0, 0, '2018-01-06 14:14:08'),
(261, 0, 0, '2018-01-06 14:14:16'),
(262, 0, 0, '2018-01-06 14:14:27'),
(263, 0, 0, '2018-01-06 14:30:56'),
(264, 0, 0, '2018-01-06 15:09:26'),
(265, 0, 0, '2018-01-06 15:14:18'),
(266, 0, 0, '2018-01-06 15:49:09'),
(267, 0, 0, '2018-01-06 15:57:35'),
(268, 0, 0, '2018-01-06 16:28:18'),
(269, 0, 0, '2018-01-06 16:40:33'),
(270, 0, 0, '2018-01-06 16:41:13'),
(271, 0, 0, '2018-01-06 16:54:43'),
(272, 0, 0, '2018-01-06 16:57:02'),
(273, 0, 0, '2018-01-06 17:03:18'),
(274, 0, 0, '2018-01-06 17:03:55'),
(275, 0, 0, '2018-01-06 17:13:12'),
(276, 0, 0, '2018-01-06 17:29:26'),
(277, 0, 0, '2018-01-06 18:04:00'),
(278, 0, 0, '2018-01-06 18:05:56'),
(279, 0, 0, '2018-01-06 18:06:13'),
(280, 0, 0, '2018-01-06 18:06:21'),
(281, 0, 0, '2018-01-06 19:40:30'),
(282, 0, 0, '2018-01-07 06:31:24'),
(283, 0, 0, '2018-01-07 06:32:10'),
(284, 0, 0, '2018-01-07 06:32:42'),
(285, 0, 0, '2018-01-07 06:35:30'),
(286, 0, 0, '2018-01-07 06:46:19'),
(287, 0, 0, '2018-01-07 06:51:11'),
(288, 0, 0, '2018-01-07 06:53:15'),
(289, 0, 0, '2018-01-07 06:57:53'),
(290, 0, 0, '2018-01-07 07:03:28'),
(291, 0, 0, '2018-01-07 14:07:50'),
(292, 0, 0, '2018-01-07 14:11:45'),
(293, 0, 0, '2018-01-07 14:13:53'),
(294, 0, 0, '2018-01-07 14:14:54'),
(295, 0, 0, '2018-01-07 14:21:15'),
(296, 0, 0, '2018-01-07 14:22:59'),
(297, 0, 0, '2018-01-07 14:29:07'),
(298, 0, 0, '2018-01-07 14:29:12'),
(299, 0, 0, '2018-01-07 14:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `transac_id` int(11) NOT NULL AUTO_INCREMENT,
  `transac_time` time NOT NULL,
  `transac_date` date NOT NULL,
  `transac_table` varchar(65) DEFAULT NULL,
  `transac_sc` int(65) NOT NULL,
  `transac_pax` int(65) NOT NULL,
  `transac_discounts` decimal(65,2) NOT NULL,
  `transac_cash` decimal(65,2) NOT NULL,
  `transac_card` varchar(65) DEFAULT NULL,
  `transac_total` decimal(65,2) NOT NULL,
  `transac_newbill` decimal(65,2) NOT NULL,
  `transac_change` decimal(65,2) NOT NULL,
  PRIMARY KEY (`transac_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=166 ;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE IF NOT EXISTS `transaction_history` (
  `transacH_id` int(11) NOT NULL AUTO_INCREMENT,
  `transacH_time` time NOT NULL,
  `transacH_date` date NOT NULL,
  `transacH_table` varchar(65) DEFAULT NULL,
  `transacH_sc` int(65) NOT NULL,
  `transacH_pax` int(65) NOT NULL,
  `transacH_discounts` decimal(65,2) NOT NULL,
  `transacH_cash` decimal(65,2) NOT NULL,
  `transacH_card` varchar(65) NOT NULL,
  `transacH_total` decimal(65,2) NOT NULL,
  `transacH_newbill` decimal(65,2) NOT NULL,
  `transacH_change` decimal(65,2) NOT NULL,
  PRIMARY KEY (`transacH_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`transacH_id`, `transacH_time`, `transacH_date`, `transacH_table`, `transacH_sc`, `transacH_pax`, `transacH_discounts`, `transacH_cash`, `transacH_card`, `transacH_total`, `transacH_newbill`, `transacH_change`) VALUES
(1, '22:06:29', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(2, '22:06:33', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(3, '22:07:35', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(4, '22:07:37', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(5, '22:07:54', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(6, '22:08:06', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(7, '22:08:09', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(8, '22:10:22', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(9, '22:10:30', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(10, '22:10:44', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(11, '22:11:39', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(12, '22:11:48', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(13, '22:11:55', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(14, '22:13:06', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(15, '22:13:09', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(16, '22:13:58', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(17, '22:14:04', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(18, '22:15:04', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(19, '22:15:09', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(20, '22:15:20', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(21, '22:17:11', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(22, '22:17:19', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(23, '22:17:22', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(24, '22:18:09', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(25, '22:18:12', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(26, '22:18:15', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(27, '22:18:20', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(28, '22:18:23', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(29, '22:19:29', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(30, '22:19:44', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(31, '22:21:36', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(32, '22:22:12', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(33, '22:23:05', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(34, '22:23:29', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(35, '22:23:33', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(36, '22:24:34', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(37, '22:27:59', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(38, '22:28:03', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(39, '22:28:06', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(40, '22:29:34', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(41, '22:29:53', '2018-01-07', 'OnTheHouse', 0, 0, '0.00', '0.00', '', '0.00', '0.00', '0.00'),
(64, '23:41:25', '2018-01-07', 'A01', 0, 0, '0.00', '60.00', '', '60.00', '0.00', '0.00'),
(65, '23:45:18', '2018-01-07', 'A03', 0, 0, '0.00', '110.00', '', '110.00', '0.00', '0.00'),
(66, '00:06:12', '2018-01-08', 'A08', 0, 0, '0.00', '120.00', '', '120.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `password`, `email`, `position`, `status`) VALUES
(22, 'Rrhyy', 'Rrhy', 'Bacwaden', '12345', 'rrrhybacwaden@gmail.com', 'Admin', 'Active'),
(36, 'Princes', 'Princes', 'Criste', 'abc', 'princes@gmail.com', 'Checker', 'Active'),
(35, 'Steven', 'Steven', 'Bitmead', '12345', 'Steven@gmail.com', 'Admin', 'Active'),
(34, 'Niel', 'Niel', 'Gallego', '12345', 'niel@gmail.com', 'Cashier', 'Active'),
(33, 'Leonard', 'Leonard', 'Tagarino', '12345', 'leo@gmail.com', 'Cashier', 'Active'),
(31, 'Cynlai', 'Cynlai', 'Osorio', '12345', 'cynlaii@gmail.com', 'Checker', 'Active'),
(38, 'checker', 'Neil Kevin', 'Gallego', '12345', 'Neil@gmail.com', 'Checker', 'Active'),
(55, 'cashier', 'Cynlai', 'Osorio', '12345', 'cynlai@gmail.com', 'Cashier', 'Active'),
(56, 'admin', 'Steven', 'Bitmead', '12345', 'steven@gmail.com', 'Admin', 'Active'),
(57, '1234556673423423432432', 'rewrwr', 'dfsdfsdfdss', '12345678', '', 'Checker', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `waitercomm_history`
--

CREATE TABLE IF NOT EXISTS `waitercomm_history` (
  `commid_history` int(11) NOT NULL AUTO_INCREMENT,
  `itemcomm_history` decimal(65,2) DEFAULT NULL,
  `itemtype_history` enum('drinks','dish') DEFAULT NULL,
  `time_history` time NOT NULL,
  `date_history` date NOT NULL,
  `waitername_history` varchar(255) NOT NULL,
  `iname_history` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`commid_history`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `waitercomm_history`
--

INSERT INTO `waitercomm_history` (`commid_history`, `itemcomm_history`, `itemtype_history`, `time_history`, `date_history`, `waitername_history`, `iname_history`) VALUES
(1, '0.00', NULL, '22:07:50', '2018-01-07', 'ayie', 'Clubhouse Sandwich'),
(2, '0.00', NULL, '22:07:50', '2018-01-07', 'ayie', 'Chicken Sandwich'),
(3, '0.00', NULL, '22:11:45', '2018-01-07', 'ayie', 'Toss Green Salad'),
(4, '0.00', NULL, '22:11:45', '2018-01-07', 'ayie', 'Vegetable Sticks'),
(5, '2.00', NULL, '22:13:53', '2018-01-07', 'ayie', 'Slippery Nipple'),
(6, '6.00', NULL, '22:14:54', '2018-01-07', 'ayie', 'Sizzling Tanguigui'),
(7, '0.00', NULL, '22:14:54', '2018-01-07', 'ayie', 'Porkchop Rice'),
(8, '0.00', NULL, '22:14:54', '2018-01-07', 'ayie', 'Garlic Rice'),
(9, '6.00', NULL, '22:14:54', '2018-01-07', 'ayie', 'Crispy Pata'),
(10, '6.00', NULL, '22:14:54', '2018-01-07', 'ayie', 'Kilawen Tanguigui'),
(11, '3.00', NULL, '22:14:54', '2018-01-07', 'ayie', 'Hotdog with Onions'),
(12, '3.00', NULL, '22:21:15', '2018-01-07', 'ayie', 'Chicken Barbeque'),
(13, '3.00', NULL, '22:21:15', '2018-01-07', 'ayie', 'Pork Barbeque'),
(14, '6.00', NULL, '22:21:15', '2018-01-07', 'ayie', 'Inihaw na Baboy'),
(15, '6.00', NULL, '22:21:15', '2018-01-07', 'ayie', 'Inihaw na Pusit'),
(16, '0.00', NULL, '22:22:59', '2018-01-07', 'ayie', 'Seafood Fried Rice'),
(17, '0.00', NULL, '22:22:59', '2018-01-07', 'ayie', 'Porkchop Rice'),
(18, '0.00', NULL, '22:22:59', '2018-01-07', 'ayie', 'Shanghai Fried Rice'),
(19, '0.00', NULL, '22:22:59', '2018-01-07', 'ayie', 'Plain Rice'),
(20, '0.00', NULL, '22:29:07', '2018-01-07', 'ayie', 'Chicken Sandwich'),
(21, '0.00', NULL, '22:29:07', '2018-01-07', 'ayie', 'Ham & Egg Sandwich'),
(22, '3.00', NULL, '22:29:12', '2018-01-07', 'ayie', 'Chicken Barbeque'),
(23, '6.00', NULL, '22:29:12', '2018-01-07', 'ayie', 'Inihaw na Baboy'),
(24, '0.00', NULL, '22:29:22', '2018-01-07', 'ayie', 'Ham & Egg Sandwich'),
(25, '0.00', NULL, '22:29:22', '2018-01-07', 'ayie', 'Clubhouse Sandwich'),
(26, '0.00', NULL, '22:29:22', '2018-01-07', 'ayie', 'Chicken Sandwich');

-- --------------------------------------------------------

--
-- Table structure for table `waiter_commission`
--

CREATE TABLE IF NOT EXISTS `waiter_commission` (
  `comm_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_comm` decimal(65,2) DEFAULT NULL,
  `item_type` enum('drinks','dish') DEFAULT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `waiter_name` varchar(255) NOT NULL,
  `i_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

-- --------------------------------------------------------

--
-- Table structure for table `waiter_db`
--

CREATE TABLE IF NOT EXISTS `waiter_db` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `waiter_db`
--

INSERT INTO `waiter_db` (`id`, `firstname`, `lastname`, `position`) VALUES
(7, 'Princes', 'Criste', 'waiter'),
(6, 'Leonard', 'Tagarino', 'waiter'),
(5, 'Rrhyana', 'Bacwaden', 'waiter'),
(4, 'Cynlai ', 'Osorio', 'waiter'),
(3, 'Steven', 'Bitmead', 'waiter'),
(2, 'Neil ', 'Gallego', 'waiter'),
(1, 'Jay', 'De Guzman', 'waiter');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
