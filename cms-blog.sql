-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 11, 2018 at 09:36 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms-blog`
--

-- --------------------------------------------------------
--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'Laptops'),
(2, 'Computers'),
(3, 'mobiles'),
(4, 'windows'),
(5, 'mac os');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `author_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `post_data` text NOT NULL,
  `views` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `date`, `title`, `author`, `author_image`, `image`, `categories`, `tags`, `post_data`, `views`, `status`) VALUES
(1, 1012456788, 'How to buy Laptop online in New Zealand?', 'admin', 'unknown-picture.png', 'laptop.jpg', 'Laptops', 'laptop,', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Here at PB, we are proud to offer the biggest and best range of laptops in NZ. From the biggest brands such as HP, ASUS, and Apple to the brands not found in mainstream retailers, PB will have the laptop to suit your needs at a competitive price.&nbsp;&nbsp;Here at PB, we are proud to offer the biggest and best range of laptops in NZ. From the biggest brands such as HP, ASUS, and Apple to the brands not found in mainstream retailers, PB will have the laptop to suit your needs at a competitive price.&nbsp;&nbsp;Here at PB, we are proud to offer the biggest and best range of laptops in NZ. From the biggest brands such as HP, ASUS, and Apple to the brands not found in mainstream retailers, PB will have the laptop to suit your needs at a competitive price.&nbsp;</p>\r\n</body>\r\n</html>', 16, 'publish'),
(2, 1510230121, 'What is macOS ?', 'admin', 'unknown-picture.png', 'mac-osx.jpg', 'mac os', 'operating system, osx, mac', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>macOS is the current series of Unix-based graphical operating systems developed and marketed by Apple Inc. designed to run on Apple\'s Macintosh computers. It has been preinstalled on all Macs since 2002.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', 0, 'publish'),
(3, 1510230747, 'What is Laptop Computer?', 'admin', 'unknown-picture.png', 'laptop.jpg', 'mac os', 'laptop', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>A laptop, often called a notebook or \"notebook computer\", is a small, portable personal computer with a \"clamshell\" form factor, an alphanumeric keyboard on the lower part of the \"clamshell\" and a thin LCD or LED computer screen on the upper part, which is opened up to use the computer.</p>\r\n</body>\r\n</html>', 0, 'publish'),
(4, 1510230946, 'What is iPad?', 'admin', 'unknown-picture.png', 'ipad.jpg', 'Laptops', 'ipad', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>iPad is a line of tablet computers designed, developed and marketed by Apple Inc., which run the iOS mobile operating system. The first iPad was released on April 3, 2010; the most recent iPad models are the iPad (2017), released on March 24, 2017, and the 10.5-inch (270 mm) and 12.9 -inch (330 mm) 2G iPad Pro released on June 13, 2017.</p>\r\n</body>\r\n</html>', 0, 'publish'),
(7, 1510231886, 'What is MacBook Pro ?', 'admin', 'unknown-picture.png', 'macbookpro.jpg', 'Laptops', 'macbook pro, laptop, computer', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>The MacBook Pro is a line of Macintosh portable computers introduced in January 2006 by Apple Inc. Replacing the PowerBook G4, the MacBook Pro was the second model to be announced during the Apple&ndash;Intel transition, after the iMac.</p>\r\n<p>The MacBook Pro is a line of Macintosh portable computers introduced in January 2006 by Apple Inc. Replacing the PowerBook G4, the MacBook Pro was the second model to be announced during the Apple&ndash;Intel transition, after the iMac.</p>\r\n</body>\r\n</html>', 0, 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `salt` varchar(255) NOT NULL DEFAULT '$2y$10$quickbrownfoxjumpsover'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `first_name`, `last_name`, `username`, `email`, `image`, `password`, `role`, `details`, `salt`) VALUES
(1, 1508109631, 'Author', 'Author', 'author', 'admin@admin2.com', 'unknown-picture.png', '$2y$10$quickbrownfoxjumpsoveeBQvfaibOXKa5Z4P6ZhUnZKCmB6toBj6', 'author', 'This is author. He is good boy.!!', '$2y$10$quickbrownfoxjumpsover'),
(2, 1508216548, 'Admin', 'Admin', 'admin', 'admin@admin.com', 'unknown-picture.png', '$2y$10$quickbrownfoxjumpsoveeXVPmquRTwbivokiRsQihg7QZ8QoMU4W', 'admin', 'Graduated from Waikato Institute of Technology in Information Technology.', '$2y$10$quickbrownfoxjumpsover');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
