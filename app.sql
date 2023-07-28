-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 03:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

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
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Hot'),
(2, 'Cold');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
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
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `fullname`, `email`, `title`, `message`) VALUES
(1, 'hghghgh', 'ghgh', 'hghg', 'hghg'),
(2, 'hghghgh', 'ghgh', 'hghg', 'hghg'),
(7, 'hghghgh', 'ghgh', 'hghg', 'dsfdsf');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
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
  `message` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(12) NOT NULL,
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
(5, 'tgtggf', 'ggfhh', 'bgfhfg', 50000000, 0);

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
(7, 5, 7, 1, 50000000);

-- --------------------------------------------------------

--
-- Table structure for table `sp`
--

CREATE TABLE `sp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sp`
--

INSERT INTO `sp` (`id`, `name`, `price`, `photo`, `cate_id`) VALUES
(7, 'Packback 1', 100000, '6fc5fcb6849d0a2958f3cec459060843-64c2204195830.png', 1),
(8, 'packback 2', 200000, 'backpack-black-rv23P2E-600-64c22062590a0.jpg', 2),
(9, 'packback 3', 120000, 'backpack-y1Q1YND-600-64c22076cc3c5.jpg', 1),
(10, 'packback 4', 300000, 'cdf1eb1f9cc4bd3c75b1fd10f12fc5bf-jpg-720x720q80-64c220865a6da.jpg', 2),
(11, 'packback 5', 80000, 'eae6fb9ff7894aa85dc868aad444b50f-64c22094e9220.jpg', 1),
(12, 'packback 6', 120000, 'istockphoto-1258122517-612x612-64c220a3b221c.jpg', 1),
(13, 'packback 7', 500000, 'vn-11134207-7qukw-lgi3zi0qkrca27-tn-64c220b7a4ee9.jpg', NULL),
(14, 'packback 8', 100000, 'vn-11134207-7qukw-lglti4krhi7e4d-tn-64c220cbf0c2f.jpg', NULL),
(15, 'packback 9', 150000, '3707982965-1445275338-64c2211a0dcd4.webp', NULL),
(16, 'Packback 10', 100000, 'packback-8aa5-64c2212e5ffb1.jpg', NULL),
(17, 'Packback 11', 100000, 'packback-fdfa-64c2214168f8e.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `first_name`, `last_name`) VALUES
(1, 'Davo2505', '[]', '$2y$13$peS4nLqeKYhugXTmZuGIfOOPJJj59HiULF9bZ82W4KYFPAFdIuEvi', 'Da', 'Vo'),
(2, 'Davo', '[]', '$2y$13$TAL1MajWXTVDFNoIyVfPP.UIGPhdEgBR6mYYgR2Fo2DegFUCHbliy', 'Da', 'Vo'),
(3, 'Peter', '[\"ROLE_USER\"]', '$2y$13$TaHHAjmzs2dk6LGDOiwVYewz5r5hQBisVj1Uf8KNEwRDA7BxQx/Da', 'Da', 'Vo'),
(4, 'Banana123', '[\"ROLE_ADMIN\"]', '$2y$13$pL021mxd6mVhFn1opd7iPumBDlT87tbBlpzbhbSp41H9wlYzBeOPu', 'Da', 'Vo'),
(5, 'Cucumber', '[]', '$2y$13$Ummsr7N6Qgdg/tCjZuLq1uQKOJRNt6BcvrZVB1DwHH4M.StnGQaUK', 'Baby', 'Baby'),
(6, 'Cucumber123', '[]', '$2y$13$z7eIdUhA5IUYhX.pW/cAfeV/32lYJKbIJAT47whcWSSPGXJDX9Isa', 'Baby', 'Baby'),
(7, 'Cucumber12345', '[]', '$2y$13$Oro/wK1N1gcEXuHFipcTMOPn443.nNJyvrC/cejmarDHTGoAHFxK2', 'Baby', 'Baby'),
(9, 'Draco', '[]', '$2y$13$hmj5lRN5xwGfJR4kIKVD5uDWGqFlzADeAQia6CW6mDFYK3UxVeHhS', 'Charlie', 'Harry'),
(10, 'User1', '[\"ROLE_USER\"]', '$2y$13$K/hXo3RFZKN/JRGOkJReye4gOO0oOlCq2KYcyESOk258Y7E5r9IcG', 'User', '1'),
(11, 'User2', '[\"ROLE_USER\"]', '$2y$13$UiZ7XKCGa7mB4jDJruVvDeJcFGsoiLw8OUY8wjtBOx9L6AbPr2JIa', 'User', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sp`
--
ALTER TABLE `sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
