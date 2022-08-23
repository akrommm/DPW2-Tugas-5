-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 09:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dpw2-tugas-5`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` int(255) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `berat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(1, 'Microsoft - xbox Elite Wireless Controller', 8000000, 500, 'Ready stok\r\n\r\nPlay like a pro with the all-new Xbox Elite Wireless Controller Series 2\r\nTailor the controller with new interchangeable thumbstick and paddle shapes\r\nExperience limitless customization and exclusive configuration options with the Xbox Accessories app\r\nStay in the game for longer with up to 40 hours of rechargeable battery life\r\nUse Xbox Wireless, Bluetooth, or the included USB-C cable to play across your Xbox One and Windows 10 devices\r\n\r\nThe all-new Xbox Elite Wireless Controller Series 2 features over 30 new ways to play like a pro, including adjustable-tension thumbsticks, wrap-around rubberized grip, and shorter hair trigger locks. Experience limitless customization with new interchangeable components and exclusive button mapping options in the Xbox Accessories app. Save up to 3 custom profiles on the controller and switch between them on the fly. Swap thumbstick toppers, D-pads, and paddles to tailor your controller to your preferred gaming style. Stay in the game for longer with up to 40 hours of rechargeable battery life and re-engineered components that are built to last. Use Xbox Wireless, Bluetooth, or the included USB-C cable to play across Xbox One and Windows 10 devices. Designed to meet the needs of today’s competitive gamers, the Xbox Elite Wireless Controller Series 2 puts exceptional performance, customization, and durability where it matters most—in your hands.\r\n\r\n\r\nWhat\'s in the box\r\nXbox Elite Wireless Controller Series 2, Carrying case, Set of 6 thumbsticks: Standard (2), Classic (2), Tall (1), Wide Dome (1), Set of 4 paddles: Medium (2), Mini (2), Set of 2 D-pads: Standard, Faceted, Thumbstick-adjustment tool, Charging dock, USB-C cable.', 30, '2022-08-14 21:54:46', '2022-08-14 22:30:18'),
(5, 'Nintendo - Switch 32GB Console', 500000, 200, '12 Teraflops\nVariable Rate Shading\nHardware Accelerated DirectX Raytracing\nQuick Resume for Multiple Games\nSmart Delivery\nNative 4K, 8K Support, Up to 120 fps\nCustom AMD Zen 2 (8 Core)\nCustom AMD Radeon RNDA Navi\nNVMe SSD Drive\nSeries X Controller (Includes Share Button and hybrid D-Pad), Xbox One Controller Compatible\nInclude Auto Low Latency Mode (ALLM) and Dynamic Latency Input (DLI) that will make Xbox Series X the most responsive console ever\nNative 4K, 8K Support, Up to 120 fps\nCustom AMD Zen 2 (8 Core)\nCustom AMD Radeon RNDA Navi\nNVMe SSD Drive\nSeries X Controller (Includes Share Button and hybrid D-Pad), Xbox One Controller Compatible\nInclude Auto Low Latency Mode (ALLM) and Dynamic Latency Input (DLI) that will make Xbox Series X the most responsive console ever', 20, '2022-08-14 22:34:14', '2022-08-15 05:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'arfmhmmdakrm_', 'katente168@gmail.com', 'Arief Muhammad Akrom', '$2y$10$yCgS7TKZgO0EvZuH82aL5e5MgqHIKNzTwyOnpRz/vVnZ/TmlwlHDK', NULL, '2022-08-23 00:09:20', '2022-08-23 00:09:20'),
(2, 'akrommm', 'akrommm@gmail.com', 'Arief Muhammad', '$2y$10$sUwG11pkgLDfEmd.U/4Ck.sakf6.VhD8DI6DsiYgyOHNaUyL4Y7Ie', NULL, '2022-08-23 00:09:41', '2022-08-23 00:09:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
