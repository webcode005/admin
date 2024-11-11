-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2021 at 05:52 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webeiuut_indus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pwd`) VALUES
(1, 'kaleemwxi@gmail.com', '5b5132d59bbeaac171de30f951b56882');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `image`, `date_created`, `date_modified`) VALUES
(6, 'Micro', 'sample.pdf', '2021-06-07 12:27:31', '2021-06-14 12:11:44'),
(7, 'Qube ', 'WhatsApp Image 2021-04-19 at 13.23.03.jpeg', '2021-06-14 12:10:59', '2021-06-14 12:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `status`, `date_created`, `date_modified`) VALUES
(8, 'Rubber Hose', 1, '2021-06-07 12:15:21', '2021-07-11 07:48:58'),
(10, 'Belt', 1, '2021-07-11 07:48:37', '2021-07-11 07:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `image`, `date_created`, `date_modified`) VALUES
(4, 'image demo', 'pump-3.png', '2021-06-07 12:23:20', '2021-06-07 12:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `main_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fdescription` text COLLATE utf8_unicode_ci NOT NULL,
  `brochure` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8_unicode_ci NOT NULL,
  `url_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `sub_category_id`, `title`, `description`, `main_image`, `fdescription`, `brochure`, `seo_title`, `seo_keyword`, `seo_description`, `url_key`, `image1`, `image2`, `image3`, `image4`, `date_created`, `date_modified`) VALUES
(43, 10, 25, 'Vulco Power II - Classical V Belt', '<table class=\"table\" style=\"outline: 0px; width: 635px; color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><tbody style=\"outline: 0px;\"><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Tube</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Black, Synthetic Oil Resistant Rubber</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Reinforcement</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">One High Tensile Steel Wire Braid</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Cover</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Black, Weather &amp; Oil Resistant Synthetic Rubber</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">TEMP RANGE</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-40°C Approx to +100°C Approx ( +120°C Intermittent )</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Applications</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Medium Pressure Hydraulic Lines</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">MARKING ON THE HOSE</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Size...R1 Indo-1AT-IM6 HI Impulse DIN EN 853 1SN ID...WP...Bar/PSI (Exceeds SAE 100 R1 AT) Flame Resistant</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Applicable standards</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">SAE 100 R1 AT (DIN EN 853 1SN)</td></tr></tbody></table>', 'vulco-power-II-classical-v-belt.jpg', '', '', 'dss', 'dfgfd', 'dssd', 'vulco-power-ii-classical-v-belt', 'vulco-power-II-classical-v-belt.jpg', 'vulco-power-II-classical-v-belt2.jpg', 'vulco-power-II-classical-v-belt3.jpg', 'vulco-power-II-classical-v-belt4.jpg', '2021-07-11 08:03:17', '2021-07-11 08:03:17'),
(44, 10, 25, 'Quard Power III EPDM Belts', '<table class=\"table\" style=\"outline: 0px; width: 635px; color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><tbody style=\"outline: 0px;\"><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Tube</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Black, Synthetic Oil Resistant Rubber</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Reinforcement</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">One High Tensile Steel Wire Braid</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Cover</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Black, Weather &amp; Oil Resistant Synthetic Rubber</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">TEMP RANGE</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-40°C Approx to +100°C Approx ( +120°C Intermittent )</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Applications</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Medium Pressure Hydraulic Lines</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">MARKING ON THE HOSE</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Size...R1 Indo-1AT-IM6 HI Impulse DIN EN 853 1SN ID...WP...Bar/PSI (Exceeds SAE 100 R1 AT) Flame Resistant</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Applicable standards</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">SAE 100 R1 AT (DIN EN 853 1SN)</td></tr></tbody></table>', 'quad-power-III-epdm-belts.jpg', '<table class=\"table\" style=\"outline: 0px; width: 1110px; color: rgb(33, 37, 41); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><tbody style=\"outline: 0px;\"><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Item Code</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">ID</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">OD</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Wall Thickness</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Working Pressure</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Working Pressure</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Bursting Pressure</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Bursting Pressure</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Bending Radius</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Weight</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Standard Length</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Vacuum Pressure</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Ex-Stock</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">MOQ</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\"></td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">MM</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">MM</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">MM</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Bar</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">PSI</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Bar</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">PSI</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">MM</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Kg/Mtr</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Mtr.</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Bar</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">--</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Mtr.</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1R104</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">6.40</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">13.50</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">3.55</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">225</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">3263</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">900</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">13050</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">100.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">0.25</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Yes</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1R105</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">7.90</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">15.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">3.55</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">215</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">3118</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">860</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">12470</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">115.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">0.27</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">Yes</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1R106</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">9.50</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">17.50</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">4.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">180</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">2611</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">720</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">10440</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">127.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">0.34</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">yes</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1R108</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">12.70</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">20.60</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">3.95</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">160</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">2321</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">640</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">9280</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">178.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">0.46</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">yes</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1R110</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">15.90</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">23.70</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">3.90</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">130</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1885</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">520</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">7540</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">200.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">0.55</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">yes</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1R112</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">19.10</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">27.70</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">4.30</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">105</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1523</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">420</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">6090</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">241.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">0.68</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">yes</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1R116</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">25.40</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">35.60</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5.10</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">88</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1276</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">352</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5104</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">300.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1.030</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">yes</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1R120</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">31.80</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">43.50</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5.85</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">63</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">914</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">252</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">3654</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">420.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1.25</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">yes</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1R124</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">38.10</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">50.60</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">6.25</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">50</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">725</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">200</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">2900</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">500.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1.45</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">yes</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5</td></tr><tr style=\"outline: 0px;\"><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">1R124</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">50.80</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">64.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">6.60</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">40</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">580</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">160</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">2320</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">635.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">2.00</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">-</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">yes</td><td style=\"outline: 0px; border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: 1px solid rgb(221, 221, 221); border-top-color: rgb(221, 221, 221); border-image: initial;\">5</td></tr></tbody></table>', 'AADESH RESUME.pdf', 'Quard Power III EPDM Belts', 'zxsdv', 'dsgdf', 'quard-power-iii-epdm-belts', 'quad-power-III-epdm-belts.jpg', 'quad-power-III-epdm-belts10.jpg', 'quad-power-III-epdm-belts11.jpg', 'quad-power-III-epdm-belts12.jpg', '2021-07-11 08:23:36', '2021-07-12 17:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image4` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, 4, 'Screenshot (36).png', 'Screenshot (35).png', '', ''),
(2, 5, 'fees.png', 'Screenshot (56).png', 'Screenshot (37).png', ''),
(3, 7, 'Screenshot (48).png', 'Screenshot (35)1.png', 'Screenshot (64).png', 'Screenshot (69).png'),
(4, 8, 'Screenshot (39).png', 'Screenshot (39).png', 'Screenshot (40).png', 'Screenshot (43)1.png'),
(5, 8, 'Screenshot (39).png', 'Screenshot (39).png', 'Screenshot (40).png', 'Screenshot (43)1.png');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `sub_category_name`, `url_key`, `date_created`, `date_modified`) VALUES
(24, 8, 'Hydro', 'hydro', '2021-07-06 07:45:48', '2021-07-11 07:49:54'),
(25, 10, 'V Belt', 'v-belt', '2021-07-07 11:00:47', '2021-07-11 07:50:09'),
(26, 10, 'Supreme', 'supreme', '2021-07-11 07:50:32', '2021-07-11 07:50:32'),
(27, 8, 'Industrial', 'industrial', '2021-07-11 07:51:01', '2021-07-11 07:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `image`, `message`, `date_created`, `date_modified`) VALUES
(3, 'qwert', 'WhatsApp Image 2021-04-19 at 13.23.03.jpeg', 'fhnerslhgsrjgdggkhjdghkjdghg', '2021-06-07 12:25:40', '2021-06-14 12:15:17'),
(4, 'aaaaaaaaaa', 'WhatsApp Image 2021-04-19 at 13.23.03.jpeg', 'acscaffdfad', '2021-06-14 12:16:18', '2021-06-14 12:16:18'),
(5, 'bbbbbbbbbb', 'WhatsApp Image 2021-04-19 at 13.23.03.jpeg', 'dsn.dmsdasldasa', '2021-06-14 12:17:22', '2021-06-14 12:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `name`, `link`, `date_created`, `date_modified`) VALUES
(3, 'demo video', 'https://www.youtube.com/embed/dx4Teh-nv3A', '2021-06-07 12:24:29', '2021-06-07 12:24:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
