-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 03:33 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `album_list`
--

CREATE TABLE `album_list` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `delete_f` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album_list`
--

INSERT INTO `album_list` (`id`, `name`, `user_id`, `delete_f`, `date_created`, `date_updated`) VALUES
(1, 'Avatars', 1, 0, '2021-08-09 10:23:50', '2021-08-09 13:09:06'),
(2, 'Sample Images', 1, 0, '2021-08-09 11:13:16', '2021-08-09 14:12:19'),
(4, 'Album 104', 1, 0, '2021-08-09 11:16:33', NULL),
(5, 'Album 105', 1, 0, '2021-08-09 11:16:41', '2021-08-09 16:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(30) NOT NULL,
  `album_id` int(30) NOT NULL,
  `original_name` text NOT NULL,
  `path_name` text NOT NULL,
  `delete_f` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `album_id`, `original_name`, `path_name`, `delete_f`, `user_id`, `date_created`, `date_updated`) VALUES
(1, 1, 'avatar101.jpg', 'uploads/user_1/album_1/1628486640.jpg', 0, 1, '2021-08-09 13:24:44', '2021-08-09 13:45:39'),
(2, 1, 'avatar.jpg', 'uploads/user_1/album_1/1628486640_1.jpg', 0, 1, '2021-08-09 13:24:44', NULL),
(3, 1, 'avatar102.png', 'uploads/user_1/album_1/1628486640.png', 0, 1, '2021-08-09 13:24:44', '2021-08-09 13:45:50'),
(4, 2, '1.jpg', 'uploads/user_1/album_2/1628489520.jpg', 0, 1, '2021-08-09 14:12:31', NULL),
(5, 2, 'test.jpg', 'uploads/user_1/album_2/1628489520_1.jpg', 0, 1, '2021-08-09 14:12:31', '2021-08-09 14:13:46'),
(6, 2, '1850646 - Copy.jpg', 'uploads/user_1/album_2/1628489520_2.jpg', 0, 1, '2021-08-09 14:12:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Simple Image Gallery System'),
(6, 'short_name', 'Gallery'),
(11, 'logo', 'uploads/gallery.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album_list`
--
ALTER TABLE `album_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album_list`
--
ALTER TABLE `album_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
