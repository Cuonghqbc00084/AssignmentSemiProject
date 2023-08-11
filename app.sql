-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 06:31 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--
  
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Hot'),
(2, 'Cold');

-- --------------------------------------------------------

--
-- Table structure for table `customer_regis`
--

CREATE TABLE `customer_regis` (
  `id` int(11) NOT NULL,
  `uesrname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_user`
--

CREATE TABLE `customer_user` (
  `id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230614095705', '2023-06-14 11:57:14', 61),
('DoctrineMigrations\\Version20230615055319', '2023-06-15 07:53:25', 70),
('DoctrineMigrations\\Version20230621095315', '2023-06-21 11:59:05', 83),
('DoctrineMigrations\\Version20230622060903', '2023-06-22 08:09:43', 184),
('DoctrineMigrations\\Version20230704082653', '2023-07-04 10:27:09', 74),
('DoctrineMigrations\\Version20230719044215', '2023-07-19 06:42:34', 364),
('DoctrineMigrations\\Version20230721083235', '2023-07-21 10:32:45', 175),
('DoctrineMigrations\\Version20230722134807', '2023-07-22 15:48:23', 77);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `fullname`, `email`, `title`, `message`) VALUES
(1, 'hghghgh', 'ghgh', 'hghg', 'hghg'),
(2, 'hghghgh', 'ghgh', 'hghg', 'hghg'),
(8, 'dsfdsf', 'dsfhdsui\'@gmail.com', 'dsafdsf', 'dsfdsf'),
(9, 'sdfdsf', 'saddfs@gmail.com', '321231', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--
  
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` double NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customer_name`, `customer_address`, `customer_phone`, `total_price`, `status`) VALUES
(1, 'dfdsf', 'sdf', '013223', 610024000, 0),
(2, 'sdfsdf', 'dsfsdfsdfdsf', '2123123123', 50000000, 0),
(3, 'sdfdsf', 'sdafdsf', '1231113', 50000000, 0),
(4, 'sdfdsf', 'sdafdsf', '1231113', 0, 0),
(5, 'tgtggf', 'ggfhh', 'bgfhfg', 50000000, 0),
(6, 'huynhcuong', 'Kien Giang', '12312323', 250012000, 0),
(7, 'efdsf', 'sdfsd', '4121313', 100000000, 0),
(8, 'dsfsd', 'adsdfsd', '1222323', 150000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `o_id`, `item_id`, `quantity`, `price`) VALUES
(1, 1, 7, 8, 50000000),
(2, 1, 8, 1, 200000000),
(3, 1, 9, 2, 12000),
(4, 1, 16, 1, 10000000),
(5, 2, 7, 1, 50000000),
(6, 3, 7, 1, 50000000),
(7, 5, 7, 1, 50000000),
(8, 6, 7, 1, 50000000),
(9, 6, 8, 1, 200000000),
(10, 6, 9, 1, 12000),
(11, 7, 7, 2, 50000000),
(12, 8, 7, 3, 50000000);

-- --------------------------------------------------------

--
-- Table structure for table `sp`
--

CREATE TABLE `sp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sp`
--

INSERT INTO `sp` (`id`, `name`, `price`, `photo`, `cate_id`) VALUES
(7, 'LV', 50000000, '1670560435595-64a7d02b67b67.png', 1),
(8, 'Dior', 200000000, '1634028313-1adba161ykk-h00n-e03-gh-a9df0dac725542d8bef2b393eeb7f14e-master-64a7d069b805d.webp', 2),
(9, 'Croissant', 12000, 'balo-dior-grey-64c5dcd8b8aee.jpg', 1),
(10, 'Macaroon', 3000, 'ab8a062da2c6da5b0d4922f26ab063de-6493ec1308732.png', 2),
(11, 'Tiramisu', 80000, '1200-1200x676-97-6493ec60bcfd2.jpg', 1),
(12, 'Banana pie', 12000, 'IMG-7179-e1625378432535-large-6492c6775dde6.jpg', 1),
(13, 'Choco pie', 5000, '8a240de0820c7796c587a7a0ea0f93b0-f08d7902ada54541b106d7911e09638c-6493ea3b0985a.webp', NULL),
(14, 'Orio BlackPink in your area', 100000, '4-1-6493eaf1724e0.webp', NULL),
(15, 'Toppo', 15000, 'banh-que-lotte-toppo-huong-vani-nhan-socola-hop-40g-202211181653394432-6493eb26b438b.jpg', NULL),
(16, 'Bánh share', 10000000, 'Banhbo-64b24a3bd21ae.jpg', NULL),
(17, 'fdsf', 22212, 'Banhbo-64b395d50edd0.jpg', NULL),
(18, 'Dior Grey', 100000000, 'balo-dior-grey-64c5db866e525.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `first_name`, `last_name`) VALUES
(1, 'Davo2505', '[]', '$2y$13$peS4nLqeKYhugXTmZuGIfOOPJJj59HiULF9bZ82W4KYFPAFdIuEvi', 'Da', 'Vo'),
(2, 'Davo', '[]', '$2y$13$TAL1MajWXTVDFNoIyVfPP.UIGPhdEgBR6mYYgR2Fo2DegFUCHbliy', 'Da', 'Vo'),
(3, 'Peter', '[]', '$2y$13$TaHHAjmzs2dk6LGDOiwVYewz5r5hQBisVj1Uf8KNEwRDA7BxQx/Da', 'Da', 'Vo'),
(4, 'Banana123', '[]', '$2y$13$pL021mxd6mVhFn1opd7iPumBDlT87tbBlpzbhbSp41H9wlYzBeOPu', 'Da', 'Vo'),
(5, 'Cucumber', '[]', '$2y$13$Ummsr7N6Qgdg/tCjZuLq1uQKOJRNt6BcvrZVB1DwHH4M.StnGQaUK', 'Baby', 'Baby'),
(6, 'Cucumber123', '[]', '$2y$13$z7eIdUhA5IUYhX.pW/cAfeV/32lYJKbIJAT47whcWSSPGXJDX9Isa', 'Baby', 'Baby'),
(7, 'Cucumber12345', '[]', '$2y$13$Oro/wK1N1gcEXuHFipcTMOPn443.nNJyvrC/cejmarDHTGoAHFxK2', 'Baby', 'Baby'),
(9, 'Draco', '[]', '$2y$13$hmj5lRN5xwGfJR4kIKVD5uDWGqFlzADeAQia6CW6mDFYK3UxVeHhS', 'Charlie', 'Harry');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_regis`
--
ALTER TABLE `customer_regis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_user`
--
ALTER TABLE `customer_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D902723EE7927C74` (`email`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_52EA1F09DB01246B` (`o_id`),
  ADD KEY `IDX_52EA1F09126F525E` (`item_id`);

--
-- Indexes for table `sp`
--
ALTER TABLE `sp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_15CE49F67D3008E5` (`cate_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_regis`
--
ALTER TABLE `customer_regis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_user`
--
ALTER TABLE `customer_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sp`
--
ALTER TABLE `sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK_2A0A990A126F525E` FOREIGN KEY (`item_id`) REFERENCES `sp` (`id`),
  ADD CONSTRAINT `FK_2A0A990ADB01246B` FOREIGN KEY (`o_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `sp`
--
ALTER TABLE `sp`
  ADD CONSTRAINT `FK_15CE49F67D3008E5` FOREIGN KEY (`cate_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
