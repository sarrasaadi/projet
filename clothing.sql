-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 05:52 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clothing`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `Admin_id` int(200) NOT NULL AUTO_INCREMENT,
  `Admin_Name` varchar(200) NOT NULL,
  `Admin_Password` varchar(200) NOT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`Admin_id`, `Admin_Name`, `Admin_Password`) VALUES
(1, 'admin1', '1nimda');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `email` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`email`, `message`) VALUES
('pranith@gmail.com', 'hi hello'),
('hi@hello', 'hi hello gn dpfjweifc wef whdchnwfwec  wefcefuwfucwe cfwef ce dw 9w dal cwdwoefhw pc wecpdqc3 dew[-dmcloewjf ipw0fedc aoifp ');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `user_id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `total_items` int(200) NOT NULL,
  `total_amount` int(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`user_id`, `username`, `total_items`, `total_amount`) VALUES
(1, 'admin1', 2, 1498),
(2, 'admin1', 2, 1398),
(3, 'admin1', 1, 499),
(4, 'ab', 1, 549),
(5, 'admin1', 2, 1498);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `item_id` int(200) NOT NULL AUTO_INCREMENT,
  `category` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `cost` int(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`item_id`, `category`, `item`, `product_name`, `description`, `cost`, `image`) VALUES
(47, 'Men', 'Shirt', 'Navy blue T-shirt', 'Navy blue  T-shirt, Cotton, Machine-wash', 30, 'Uploaded_Images/Navy blue T-shirt.jpg'),
(48, 'Men', 'Shirt', 'Maroon casual shirt', 'Maroon casual shirt, Cotton, Machine-wash', 35, 'Uploaded_Images/Maroon casual shirt.jpg'),
(49, 'Men', 'Jeans', 'Men Blue Stretchable Jeans', 'Blue JEANS cotton, machine wash', 85, 'Uploaded_Images/Men Blue Stretchable Jeans.jpg'),
(50, 'Men', 'Trousers', 'Men Navy Blue Trousers', 'blue  chinos, cotton, washable', 90, 'Uploaded_Images/Men Navy Blue Trousers.jpg'),
(53, 'Women', 'Shirt', 'T-shirt', 'Purple T-shirt, cotton, machine wash', 40, 'Uploaded_Images/Ladies Round Neck T-shirt.jfif'),
(54, 'Women', 'Shirt', 'Women Black Printed Top', 'Black top, Rayon, machine wash', 45, 'Uploaded_Images/Women Black Printed Top.jfif'),
(55, 'Women', 'Shirt', 'Women Dark Blue SHIRT', 'Dark blue SHIRT ', 50, 'Uploaded_Images/Women Dark Blue Kurti.jfif'),
(56, 'Women', 'Jeans', 'Women Blue Jeans', 'Blue light jeans, cotton wash, machine wash', 85, 'Uploaded_Images/Women Blue Jeans.jfif'),
(57, 'Women', 'Leggings', 'Women Dark Blue Leggings', 'A pair of dark blue leggings, cotton, machine wash', 45, 'Uploaded_Images/Women Dark Blue Leggings.jfif'),
(59, 'Kids', 'Shirt', 'Boys Yellow T-shirt', 'Boys Yellow  T-shirt, cotton, machine wash', 45, 'Uploaded_Images/Boys Yellow T-shirt.jfif'),
(60, 'Kids', 'Shirt', 'Boys Casual Shirt', 'Boys Blue & White lines Casual Shirt, cotton, machine wash', 50, 'Uploaded_Images/Boys Casual Shirt.jfif'),
(61, 'Kids', 'Jeans', 'Boys Blue Jeans', 'Boys Blue Jeans, cotton, machine wash', 90, 'Uploaded_Images/Boys Blue Jeans.jfif'),
(62, 'Kids', 'Trousers', 'Boys Olive Green Cargos', 'green cargo, cotton, machine wash', 85, 'Uploaded_Images/Boys Olive Green Cargos.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(128) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `mailid` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `mailid`, `password`) VALUES
(1, 'ab', 'a@b.com', 'de99e4ada244c272d51a83f035d87e4d'),
(2, 'Pranith Rao', 'a@b.com', '0c8d55ac9624bdc1bc920a7cb6e71a9b');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
