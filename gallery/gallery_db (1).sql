-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Feb 2024 pada 16.02
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

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
-- Struktur dari tabel `album_list`
--

CREATE TABLE `album_list` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `delete_f` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album_list`
--

INSERT INTO `album_list` (`id`, `name`, `user_id`, `delete_f`, `date_created`, `date_updated`) VALUES
(1, 'Avatars', 1, 0, '2021-08-09 10:23:50', '2021-08-09 13:09:06'),
(2, 'Sample Images', 1, 0, '2021-08-09 11:13:16', '2021-08-09 14:12:19'),
(4, 'Album 104', 1, 0, '2021-08-09 11:16:33', NULL),
(5, 'Album 105', 1, 0, '2021-08-09 11:16:41', '2021-08-09 16:15:17'),
(8, 'Ca', 0, 1, '2024-02-01 21:32:06', '2024-02-04 17:13:32'),
(9, 'Girl', 10, 0, '2024-02-02 00:37:50', NULL),
(10, 'Jeno', 10, 0, '2024-02-02 00:38:09', '2024-02-02 00:38:22'),
(11, 'Renjun', 10, 1, '2024-02-02 00:38:47', '2024-02-04 12:02:44'),
(12, 'Editing', 10, 0, '2024-02-02 00:38:54', NULL),
(13, 'Jeno.2', 10, 0, '2024-02-04 12:36:52', '2024-02-04 12:41:59'),
(14, 'siapa aja dah', 10, 1, '2024-02-04 12:43:02', '2024-02-04 21:26:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `album_id`, `original_name`, `path_name`, `delete_f`, `user_id`, `date_created`, `date_updated`) VALUES
(1, 1, 'avatar101.jpg', 'uploads/user_1/album_1/1628486640.jpg', 0, 1, '2021-08-09 13:24:44', '2021-08-09 13:45:39'),
(2, 1, 'avatar.jpg', 'uploads/user_1/album_1/1628486640_1.jpg', 0, 1, '2021-08-09 13:24:44', NULL),
(3, 1, 'avatar102.png', 'uploads/user_1/album_1/1628486640.png', 0, 1, '2021-08-09 13:24:44', '2021-08-09 13:45:50'),
(4, 2, '1.jpg', 'uploads/user_1/album_2/1628489520.jpg', 0, 1, '2021-08-09 14:12:31', NULL),
(5, 2, 'test.jpg', 'uploads/user_1/album_2/1628489520_1.jpg', 0, 1, '2021-08-09 14:12:31', '2021-08-09 14:13:46'),
(6, 2, '1850646 - Copy.jpg', 'uploads/user_1/album_2/1628489520_2.jpg', 0, 1, '2021-08-09 14:12:31', NULL),
(16, 8, 'DESAIN.png', 'uploads/user_/album_8/1706797920.png', 1, 0, '2024-02-01 21:32:22', '2024-02-04 17:13:32'),
(17, 12, 'Jeno.jpeg', 'uploads/user_10/album_12/1706810640.jpeg', 0, 10, '2024-02-02 01:04:02', '2024-02-04 12:10:59'),
(18, 12, 'Jeno1.jpeg', 'uploads/user_10/album_12/1706810640_1.jpeg', 0, 10, '2024-02-02 01:04:02', '2024-02-04 12:11:51'),
(19, 12, 'Lovedit.jpeg', 'uploads/user_10/album_12/1706810640_2.jpeg', 0, 10, '2024-02-02 01:04:02', '2024-02-04 12:11:37'),
(20, 12, 'Chaewon1.jpeg', 'uploads/user_10/album_12/1706810640_3.jpeg', 0, 10, '2024-02-02 01:04:02', '2024-02-04 12:12:03'),
(21, 12, 'Chaewon.jpeg', 'uploads/user_10/album_12/1706810640_4.jpeg', 0, 10, '2024-02-02 01:04:33', '2024-02-04 12:10:16'),
(22, 12, 'Edit.jpeg', 'uploads/user_10/album_12/1706810640_5.jpeg', 0, 10, '2024-02-02 01:04:33', '2024-02-04 12:11:20'),
(23, 9, 'Hanni.jpeg', 'uploads/user_10/album_9/1706810700.jpeg', 0, 10, '2024-02-02 01:05:37', '2024-02-04 12:12:22'),
(24, 9, 'Hanni new jeans.jpeg', 'uploads/user_10/album_9/1706810700_1.jpeg', 0, 10, '2024-02-02 01:05:37', '2024-02-04 12:13:10'),
(25, 9, 'New Jeans.jpeg', 'uploads/user_10/album_9/1706810700_2.jpeg', 0, 10, '2024-02-02 01:05:37', '2024-02-04 12:12:51'),
(26, 9, 'WhatsApp Image 2024-02-02 at 1.01.51 AM.jpeg', 'uploads/user_10/album_9/1706810700_3.jpeg', 0, 10, '2024-02-02 01:05:37', NULL),
(27, 9, 'WhatsApp Image 2024-02-02 at 1.02.23 AM (1).jpeg', 'uploads/user_10/album_9/1706810700_4.jpeg', 0, 10, '2024-02-02 01:05:37', NULL),
(28, 9, 'WhatsApp Image 2024-02-02 at 1.02.23 AM.jpeg', 'uploads/user_10/album_9/1706810700_5.jpeg', 0, 10, '2024-02-02 01:05:37', NULL),
(29, 9, 'Eunsoo.jpeg', 'uploads/user_10/album_9/1706810700_6.jpeg', 0, 10, '2024-02-02 01:05:49', '2024-02-04 12:13:33'),
(30, 10, 'WhatsApp Image 2024-02-02 at 1.02.24 AM (2).jpeg', 'uploads/user_10/album_10/1706810760.jpeg', 0, 10, '2024-02-02 01:06:56', NULL),
(31, 10, 'WhatsApp Image 2024-02-02 at 1.02.24 AM (1).jpeg', 'uploads/user_10/album_10/1706810760_1.jpeg', 0, 10, '2024-02-02 01:06:56', NULL),
(32, 10, 'WhatsApp Image 2024-02-02 at 1.01.52 AM (1).jpeg', 'uploads/user_10/album_10/1706810760_2.jpeg', 0, 10, '2024-02-02 01:06:56', NULL),
(33, 10, 'WhatsApp Image 2024-02-02 at 1.01.52 AM.jpeg', 'uploads/user_10/album_10/1706810760_3.jpeg', 0, 10, '2024-02-02 01:06:56', NULL),
(34, 10, 'WhatsApp Image 2024-02-02 at 1.01.51 AM (2).jpeg', 'uploads/user_10/album_10/1706810760_4.jpeg', 0, 10, '2024-02-02 01:06:56', NULL),
(35, 10, 'WhatsApp Image 2024-02-02 at 1.01.50 AM (1).jpeg', 'uploads/user_10/album_10/1706810760_5.jpeg', 0, 10, '2024-02-02 01:06:56', NULL),
(36, 10, 'WhatsApp Image 2024-02-02 at 1.01.50 AM.jpeg', 'uploads/user_10/album_10/1706810760_6.jpeg', 0, 10, '2024-02-02 01:06:56', NULL),
(37, 10, 'WhatsApp Image 2024-02-02 at 1.01.49 AM (1).jpeg', 'uploads/user_10/album_10/1706810760_7.jpeg', 0, 10, '2024-02-02 01:06:56', NULL),
(38, 10, 'WhatsApp Image 2024-02-02 at 1.01.49 AM.jpeg', 'uploads/user_10/album_10/1706810760_8.jpeg', 0, 10, '2024-02-02 01:06:56', NULL),
(39, 11, 'Jeno.jpeg', 'uploads/user_10/album_11/1707022860.jpeg', 1, 10, '2024-02-04 12:01:39', '2024-02-04 12:02:44'),
(40, 13, 'WhatsApp Image 2024-02-02 at 1.02.24 AM (2).jpeg', 'uploads/user_10/album_13/1707025020.jpeg', 1, 10, '2024-02-04 12:37:08', '2024-02-04 12:40:43'),
(41, 13, 'WhatsApp Image 2024-02-02 at 1.01.49 AM (1).jpeg', 'uploads/user_10/album_13/1707025020_1.jpeg', 0, 10, '2024-02-04 12:37:34', NULL),
(42, 13, 'WhatsApp Image 2024-02-02 at 1.01.49 AM.jpeg', 'uploads/user_10/album_13/1707025080.jpeg', 0, 10, '2024-02-04 12:38:34', NULL),
(43, 13, 'WhatsApp Image 2024-02-02 at 12.46.45 AM.jpeg', 'uploads/user_10/album_13/1707025080_1.jpeg', 1, 10, '2024-02-04 12:38:57', '2024-02-04 12:39:05'),
(44, 13, 'WhatsApp Image 2024-02-02 at 1.01.51 AM (2).jpeg', 'uploads/user_10/album_13/1707025140.jpeg', 0, 10, '2024-02-04 12:39:13', NULL),
(45, 13, 'WhatsApp Image 2024-02-02 at 1.02.24 AM (2).jpeg', 'uploads/user_10/album_13/1707025200.jpeg', 1, 10, '2024-02-04 12:40:26', '2024-02-04 12:40:50'),
(46, 13, 'WhatsApp Image 2024-02-02 at 1.02.24 AM (1).jpeg', 'uploads/user_10/album_13/1707025200_1.jpeg', 0, 10, '2024-02-04 12:40:26', NULL),
(47, 13, 'WhatsApp Image 2024-02-02 at 1.01.52 AM (1).jpeg', 'uploads/user_10/album_13/1707025200_2.jpeg', 0, 10, '2024-02-04 12:40:26', NULL),
(48, 13, 'WhatsApp Image 2024-02-02 at 1.01.52 AM.jpeg', 'uploads/user_10/album_13/1707025200_3.jpeg', 1, 10, '2024-02-04 12:40:26', '2024-02-04 12:40:54'),
(49, 13, 'WhatsApp Image 2024-02-02 at 1.01.51 AM (2).jpeg', 'uploads/user_10/album_13/1707025200_4.jpeg', 1, 10, '2024-02-04 12:40:26', '2024-02-04 12:41:03'),
(50, 13, 'WhatsApp Image 2024-02-02 at 1.01.50 AM (1).jpeg', 'uploads/user_10/album_13/1707025200_5.jpeg', 0, 10, '2024-02-04 12:40:26', NULL),
(51, 13, 'WhatsApp Image 2024-02-02 at 1.01.50 AM.jpeg', 'uploads/user_10/album_13/1707025200_6.jpeg', 0, 10, '2024-02-04 12:40:26', NULL),
(52, 13, 'WhatsApp Image 2024-02-02 at 1.01.49 AM (1).jpeg', 'uploads/user_10/album_13/1707025260.jpeg', 1, 10, '2024-02-04 12:41:14', '2024-02-04 12:41:19'),
(53, 13, 'WhatsApp Image 2024-02-02 at 1.01.49 AM.jpeg', 'uploads/user_10/album_13/1707025260_1.jpeg', 1, 10, '2024-02-04 12:41:27', '2024-02-04 12:41:33'),
(54, 14, 'WhatsApp Image 2024-02-02 at 1.02.23 AM (1).jpeg', 'uploads/user_10/album_14/1707025380.jpeg', 1, 10, '2024-02-04 12:43:16', '2024-02-04 21:26:30'),
(55, 14, 'WhatsApp Image 2024-02-02 at 1.01.52 AM (1).jpeg', 'uploads/user_10/album_14/1707025380_1.jpeg', 1, 10, '2024-02-04 12:43:28', '2024-02-04 21:26:30'),
(56, 14, 'WhatsApp Image 2024-02-02 at 1.01.48 AM (1).jpeg', 'uploads/user_10/album_14/1707025380_2.jpeg', 1, 10, '2024-02-04 12:43:36', '2024-02-04 12:45:32'),
(57, 14, 'WhatsApp Image 2024-02-02 at 1.02.24 AM (2).jpeg', 'uploads/user_10/album_14/1707025380_3.jpeg', 1, 10, '2024-02-04 12:43:46', '2024-02-04 21:26:30'),
(58, 14, 'WhatsApp Image 2024-02-02 at 1.03.11 AM (1).jpeg', 'uploads/user_10/album_14/1707025380_4.jpeg', 1, 10, '2024-02-04 12:43:55', '2024-02-04 21:26:30'),
(59, 14, 'WhatsApp Image 2024-02-02 at 1.03.12 AM (1).jpeg', 'uploads/user_10/album_14/1707025500.jpeg', 1, 10, '2024-02-04 12:45:56', '2024-02-04 21:26:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Simple Image Gallery System'),
(6, 'short_name', 'Gallery'),
(11, 'logo', 'uploads/gallery.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(2, 'Carolina', 'Gisela', 'Carol', '12345', NULL, NULL, 0, '2024-02-01 21:29:40', NULL),
(10, 'Carolina', 'Gisela', 'Carol', '827ccb0eea8a706c4c34a16891f84e7b', 'uploads/1706797860_nct-dream-jaemin-hot-sauce-4k-wallpaper-3840x2160-uhdpaper.com-137.0_a.jpg', NULL, 0, '2024-02-01 21:31:02', '2024-02-04 21:17:38'),
(11, 'Carolina', 'Gisela', 'Carol', '827ccb0eea8a706c4c34a16891f84e7b', 'uploads/1706797860_nct-dream-jaemin-hot-sauce-4k-wallpaper-3840x2160-uhdpaper.com-137.0_a.jpg', NULL, 0, '2024-02-01 21:31:42', NULL),
(12, '', '', '', '', NULL, NULL, 0, '2024-02-01 23:17:03', NULL),
(13, 'Michiella', 'Kanaica', 'Michie', '827ccb0eea8a706c4c34a16891f84e7b', 'uploads/1707041580_WhatsApp Image 2024-02-02 at 1.01.48 AM (1).jpeg', NULL, 0, '2024-02-04 17:13:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album_list`
--
ALTER TABLE `album_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album_list`
--
ALTER TABLE `album_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
