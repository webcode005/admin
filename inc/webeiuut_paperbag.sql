-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2021 at 06:59 PM
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
-- Database: `webeiuut_paperbag`
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
  `url_key` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_keyword` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `url_key`, `status`, `seo_title`, `seo_keyword`, `seo_description`, `date_created`, `date_modified`) VALUES
(9, 'Paper Bags', 'paper-bags', 1, 'asdds', 'asff', 'drgr', '2021-07-19 13:03:05', '2021-07-19 18:50:04'),
(10, 'Shopping Bags', 'shopping-bags', 1, '', '', '', '2021-07-19 13:04:16', '2021-07-19 13:04:16'),
(11, 'Kraft Paper Bags', 'kraft-paper-bags', 1, '', '', '', '2021-07-19 13:04:26', '2021-07-19 13:06:59'),
(12, 'Take Away Bags', 'take-away-bags', 1, '', '', '', '2021-07-19 13:04:38', '2021-07-19 13:04:38'),
(13, 'Sweets Shops Bags', 'sweets-shops-bags', 1, '', '', '', '2021-07-19 13:04:50', '2021-07-19 13:04:50'),
(14, 'sdfsd', 'sdfsd', 1, '1sdsdg', '3fhgfh', '2ddfgdf', '2021-07-19 18:34:26', '2021-07-19 18:45:08');

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
(7, 9, 0, 'Latest Paper Bags', '<table style=\"margin: 0px 0px 8px; padding: 0px; width: 453px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: arial;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding-bottom: 0px; padding-left: 0px;\"><td class=\"tdwdt\" style=\"margin: 0px; padding: 2px 5px; width: 171.203125px; color: rgb(132, 132, 132); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">Type&nbsp;</td><td class=\"tdwdt1 color6\" style=\"margin: 0px; padding: 2px 5px; color: rgb(0, 0, 0); width: 261.8125px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">Rope Handle&nbsp;</td></tr><tr style=\"margin: 0px; padding-bottom: 0px; padding-left: 0px;\"><td class=\"tdwdt\" style=\"margin: 0px; padding: 2px 5px; width: 171.203125px; color: rgb(132, 132, 132); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">Brand&nbsp;</td><td class=\"tdwdt1 color6\" style=\"margin: 0px; padding: 2px 5px; color: rgb(0, 0, 0); width: 261.8125px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">GUJARAT SHOPEE&nbsp;</td></tr><tr style=\"margin: 0px; padding-bottom: 0px; padding-left: 0px;\"><td class=\"tdwdt\" style=\"margin: 0px; padding: 2px 5px; width: 171.203125px; color: rgb(132, 132, 132); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">Material&nbsp;</td><td class=\"tdwdt1 color6\" style=\"margin: 0px; padding: 2px 5px; color: rgb(0, 0, 0); width: 261.8125px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">Paper&nbsp;</td></tr><tr style=\"margin: 0px; padding-bottom: 0px; padding-left: 0px;\"><td class=\"tdwdt\" style=\"margin: 0px; padding: 2px 5px; width: 171.203125px; color: rgb(132, 132, 132); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">Usage/Application&nbsp;</td><td class=\"tdwdt1 color6\" style=\"margin: 0px; padding: 2px 5px; color: rgb(0, 0, 0); width: 261.8125px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">Cosmetics Shop,Jewellery Shop,Event &amp; Party Supply etc.&nbsp;</td></tr><tr style=\"margin: 0px; padding-bottom: 0px; padding-left: 0px;\"><td class=\"tdwdt\" style=\"margin: 0px; padding: 2px 5px; width: 171.203125px; color: rgb(132, 132, 132); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">GSM&nbsp;</td><td class=\"tdwdt1 color6\" style=\"margin: 0px; padding: 2px 5px; color: rgb(0, 0, 0); width: 261.8125px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">200&nbsp;</td></tr><tr style=\"margin: 0px; padding-bottom: 0px; padding-left: 0px;\"><td class=\"tdwdt\" style=\"margin: 0px; padding: 2px 5px; width: 171.203125px; color: rgb(132, 132, 132); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">Handle&nbsp;</td><td class=\"tdwdt1 color6\" style=\"margin: 0px; padding: 2px 5px; color: rgb(0, 0, 0); width: 261.8125px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(234, 234, 234); font-size: 15px; vertical-align: top; word-break: break-word;\">Wedding Design With ROPP Handle</td></tr></tbody></table>', 'WhatsApp Image 2021-07-19 at 16.00.13.jpeg', '', '', 'Latest Paper Bags', 'Latest Paper Bags', 'Latest Paper Bags', 'latest-paper-bags', 'WhatsApp Image 2021-07-19 at 16.00.14 (1)1.jpeg', 'WhatsApp Image 2021-07-19 at 16.00.14 (2).jpeg', 'WhatsApp Image 2021-07-19 at 16.00.14.jpeg', '', '2021-07-19 13:10:02', '2021-07-19 16:40:05'),
(8, 10, 0, 'Latest Shopping Bags', '<p>Latest Shopping Bags<br></p>', 'WhatsApp Image 2021-07-19 at 16.01.10 (1).jpeg', '', '', 'Latest Shopping Bags', 'Latest Shopping Bags', 'Latest Shopping Bags', 'latest-shopping-bags', 'WhatsApp Image 2021-07-19 at 16.01.10 (2).jpeg', 'WhatsApp Image 2021-07-19 at 16.01.10 (3).jpeg', 'WhatsApp Image 2021-07-19 at 16.01.10.jpeg', '', '2021-07-19 16:19:20', '2021-07-19 16:19:20'),
(9, 11, 0, 'Latest Kraft Paper Bags', '<p>Latest Kraft Paper Bags<br></p>', 'WhatsApp Image 2021-07-19 at 16.01.56 (1).jpeg', '', '', 'Latest Kraft Paper Bags', 'Latest Kraft Paper Bags', 'Latest Kraft Paper Bags', 'latest-kraft-paper-bags', 'WhatsApp Image 2021-07-19 at 16.01.56 (2).jpeg', 'WhatsApp Image 2021-07-19 at 16.01.56 (3).jpeg', 'WhatsApp Image 2021-07-19 at 16.01.56.jpeg', '', '2021-07-19 16:23:15', '2021-07-19 16:23:15'),
(10, 12, 0, 'Latest Take Away Bags', '<p>Latest Take Away Bags<br></p>', 'WhatsApp Image 2021-07-19 at 16.03.21.jpeg', '', '', 'Latest Take Away Bags', 'Latest Take Away Bags', 'Latest Take Away Bags', 'latest-take-away-bags', 'WhatsApp Image 2021-07-19 at 16.03.22 (1).jpeg', 'WhatsApp Image 2021-07-19 at 16.03.22 (2).jpeg', '', '', '2021-07-19 16:25:57', '2021-07-19 16:25:57'),
(11, 12, 0, 'Latest Take Away Bags', '<p>Latest Take Away Bags<br></p>', 'WhatsApp Image 2021-07-19 at 16.03.22 (3).jpeg', '', '', 'Latest Take Away Bags', 'Latest Take Away Bags', 'Latest Take Away Bags', 'latest-take-away-bags', 'WhatsApp Image 2021-07-19 at 16.03.22 (4).jpeg', 'WhatsApp Image 2021-07-19 at 16.03.22.jpeg', '', '', '2021-07-19 16:26:57', '2021-07-19 16:26:57'),
(12, 13, 0, 'Latest Sweets Shops Bags', '<p>Latest Sweets Shops Bags    <br></p>', 'WhatsApp Image 2021-07-19 at 16.04.44-2.jpeg', '', '', 'Latest Sweets Shops Bags', 'Latest Sweets Shops Bags', 'Latest Sweets Shops Bags', 'latest-sweets-shops-bags', 'WhatsApp Image 2021-07-19 at 16.04.44-3.jpeg', 'WhatsApp Image 2021-07-19 at 16.04.44.jpeg', '', '', '2021-07-19 16:30:13', '2021-07-19 18:47:22');

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
(6, 7, 'pp1', 'pp1', '2021-07-15 05:15:15', '2021-07-15 05:15:15'),
(7, 7, 'pp2', 'pp2', '2021-07-15 05:15:23', '2021-07-15 05:15:23');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
