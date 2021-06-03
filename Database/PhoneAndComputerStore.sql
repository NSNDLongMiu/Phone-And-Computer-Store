-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2020 at 01:29 AM
-- Server version: 8.0.21-0ubuntu0.20.04.4
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PhoneAndComputerStore`
--

-- --------------------------------------------------------

--
-- Table structure for table `anhsanpham`
--

CREATE TABLE `anhsanpham` (
  `id` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sanpham_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `anhsanpham`
--

INSERT INTO `anhsanpham` (`id`, `url`, `sanpham_id`) VALUES
(184, 'public/uploads/products/2020/10/8711Screenshotfrom2020-10-0517-14-58.png', 80),
(185, 'public/uploads/products/2020/10/2259Screenshotfrom2020-10-0720-37-26.png', 80),
(186, 'public/uploads/products/2020/10/3627Screenshotfrom2020-10-0720-37-34.png', 80),
(187, 'public/uploads/products/2020/10/4139Screenshotfrom2020-10-0720-37-34.png', 80),
(188, 'public/uploads/products/2020/10/3639Screenshotfrom2020-10-0720-37-34.png', 80),
(192, 'public/uploads/products/2020/10/7633Screenshotfrom2020-10-0720-37-47.png', 81),
(193, 'public/uploads/products/2020/10/1529Screenshotfrom2020-10-0517-57-36.png', 81),
(194, 'public/uploads/products/2020/10/1398Screenshotfrom2020-10-0720-37-26.png', 81),
(195, 'public/uploads/products/2020/10/3261Screenshotfrom2020-10-0517-14-58.png', 81),
(196, 'public/uploads/products/2020/10/9072Screenshotfrom2020-10-0720-37-47.png', 81);

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `id` bigint UNSIGNED NOT NULL,
  `tieude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `doantrich` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `danhmuc_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baiviet`
--

INSERT INTO `baiviet` (`id`, `tieude`, `doantrich`, `hinhanh`, `noidung`, `danhmuc_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'Laptop technical details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 'public/uploads/products/2017/06/blog5-2-580x366.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 1, 11, NULL, NULL),
(7, 'Dairy: A free Sketch UI kit for minimal apps', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 'public/uploads/products/2017/06/blog1-2-580x366.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 4, 11, NULL, NULL),
(8, 'Best care and support at Our Stores', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 'public/uploads/products/2017/03/blog4-2-580x366.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 4, 11, NULL, NULL),
(9, 'The best products at your fingertips', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sagittis semper tortor. Quisque non felis elementum augue ullamcorper laoreet. Nam porta leo ut felis suscipit, vel semper l', 'public/uploads/products/2017/06/blog6-2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sagittis semper tortor. Quisque non felis elementum augue ullamcorper laoreet. Nam porta leo ut felis suscipit, vel semper l', 4, 11, NULL, NULL),
(10, 'Free set of smartphone clay mockups', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 'public/uploads/products/2017/06/blog3-2-580x366.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 4, 11, NULL, NULL),
(11, 'Title 1', 'Hiiii', '', 'Hiiiiiiiiiiiiiiiiiiiiii\r\nHiiiiiiiiiiiiiiiiiiiiii\r\nHiiiiiiiiiiiiiiiiiiiiii', 1, 11, '2020-10-07 18:00:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` bigint UNSIGNED NOT NULL,
  `soluongmua` int NOT NULL,
  `sale` smallint NOT NULL,
  `sanpham_id` bigint UNSIGNED NOT NULL,
  `donhang_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `soluongmua`, `sale`, `sanpham_id`, `donhang_id`, `created_at`, `updated_at`) VALUES
(10, 1, 30, 57, 19, NULL, NULL),
(11, 1, 0, 41, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danhgia_sanpham`
--

CREATE TABLE `danhgia_sanpham` (
  `id` bigint UNSIGNED NOT NULL,
  `noidung` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `danhgia` smallint NOT NULL,
  `sanpham_id` bigint UNSIGNED NOT NULL,
  `khachhang_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhgia_sanpham`
--

INSERT INTO `danhgia_sanpham` (`id`, `noidung`, `danhgia`, `sanpham_id`, `khachhang_id`, `created_at`, `updated_at`) VALUES
(1, 'product very good', 5, 50, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` bigint UNSIGNED NOT NULL,
  `tendanhmuc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `mota`, `created_at`, `updated_at`) VALUES
(8, 'Xiaomi', 'Xiaomi Phone', '2020-06-23 10:56:59', NULL),
(9, 'Cell Phones, OnePlus', 'Cell Phones, OnePlus ... desc', '2020-06-23 10:57:13', NULL),
(10, 'Computer Hardware, Daydream View', 'Computer Hardware, Daydream View ....', '2020-06-23 10:57:36', NULL),
(11, 'Acoustics, Computer Hardware', 'Acoustics, Computer Hardware ....', '2020-06-23 10:58:09', NULL),
(12, 'Apple, Smart Watches', 'Apple, Smart Watches ... desc', '2020-06-23 10:58:24', NULL),
(13, 'Computer Hardware, Keyboards', 'Computer Hardware, Keyboards ... desc', '2020-06-23 10:58:39', NULL),
(14, 'Smart Watches, Sony', 'Smart Watches, Sony ... desc', '2020-06-23 10:58:49', NULL),
(15, 'Cell Phones, Motorola', 'Cell Phones, Motorola... desc', '2020-06-23 10:59:07', NULL),
(16, 'Cell Phones, IPhone', 'Cell Phones, IPhone ...', '2020-06-23 10:59:28', NULL),
(17, 'Apple iPads Mini, Tablets', 'Apple iPads Mini, Tablets ...', '2020-06-23 10:59:39', NULL),
(18, 'Dell Laptop, Laptops', 'Dell Laptop, Laptops ...', '2020-06-23 10:59:47', NULL),
(19, 'Cell Phones, Meizu', 'Cell Phones, Meizu ...', '2020-06-23 10:59:56', NULL),
(20, 'Computer Hardware, Mice', 'Computer Hardware, Mice ...', '2020-06-23 11:00:06', NULL),
(21, 'Asus, Laptops', 'Asus, Laptops ...', '2020-06-23 11:00:14', NULL),
(22, 'Samsung, Smart Watches', 'Samsung, Smart Watches ...', '2020-06-23 11:00:23', NULL),
(23, 'IPhone', 'IPhone Phone', '2020-10-07 10:23:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc_blog`
--

CREATE TABLE `danhmuc_blog` (
  `id` bigint UNSIGNED NOT NULL,
  `tendanhmuc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinhanh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmuc_blog`
--

INSERT INTO `danhmuc_blog` (`id`, `tendanhmuc`, `mota`, `hinhanh`, `created_at`, `updated_at`) VALUES
(1, 'News', 'xxxxx', NULL, NULL, NULL),
(4, 'Business', 'Business ... ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` bigint UNSIGNED NOT NULL,
  `tongtien` int NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `khachhang_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `tongtien`, `trangthai`, `khachhang_id`) VALUES
(19, 1000000, 1, 9),
(20, 70000, 0, 10),
(21, 40000, 0, 17),
(22, 40000, 0, 18);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'employee-avatar.png',
  `hoten` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `diachi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `email`, `password`, `avatar`, `hoten`, `phone`, `diachi`, `note`) VALUES
(6, 'KhachHangSoMot@gmail.com', '', 'employee-avatar.png', 'Khach Hang So Mot', '0123456789', 'Ha Noi', ''),
(7, '', '', '9851-2054-car-1.jpg', 'Khach Hang So Hai', '0943243', '', ''),
(9, 'coayvatoi@gmail.com', '', 'employee-avatar.png', 'Khach Hang So ba', '09543543523', '4324324', ''),
(10, 'taihoaapxuong4@gmail.com', '', 'employee-avatar.png', 'khach hang xxx', '0943432', '4324324', ''),
(17, 'khachhang@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'employee-avatar.png', 'nguyenvana', '095432543', 'dia chi xxx', ''),
(18, 'nguyenvanc@gmail.com', '', 'employee-avatar.png', 'nguyen van c', '094234324', 'số 3 nhà A thành phố C', '');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int NOT NULL,
  `hoten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `chude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trangthai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id`, `hoten`, `email`, `phone`, `chude`, `noidung`, `created_at`, `trangthai`) VALUES
(6, 'xx', 'xxx', '09435433', 'xxx', 'xxxx', '2020-06-14 09:34:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` bigint UNSIGNED NOT NULL,
  `tensanpham` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int NOT NULL,
  `giaban` int NOT NULL,
  `danhgia` smallint NOT NULL,
  `sale` int NOT NULL,
  `danhmuc_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `luotmua` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `mota`, `hinhanh`, `soluong`, `giaban`, `danhgia`, `sale`, `danhmuc_id`, `user_id`, `created_at`, `updated_at`, `luotmua`) VALUES
(41, 'Polaroid Cube+', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tristique nibh ac ligula dapibus, quis ornare felis malesuada. Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem', 'public/uploads/products/2015/05/9-3.jpg', 120, 70000, 5, 0, 17, 1, '2020-06-23 11:27:33', NULL, 100),
(50, 'Nokia 6 Dual Sim Tempered Blue', ' Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem pharetra at. Integer elit nulla, aliquet eget nisi lobortis, varius accumsan dui. Quisque semper dolor nibh, ac aliquet quam ', 'public/uploads/products/2017/09/34-2.jpg', 120, 90000, 5, 10, 15, 1, '2020-06-23 11:29:06', NULL, 0),
(57, 'Asus Zenbook ux360ca', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  vel euismod sem pharetra at. Integer elit nulla, aliquet eget nisi lobortis, varius accumsan dui. Quisque semper dolor nibh, ac aliqu', 'public/uploads/products//2017/09/2-3.jpg', 40, 1000000, 5, 30, 21, 1, '2020-06-23 11:29:06', NULL, 0),
(80, 'Iphone X', 'New', 'public/uploads/products/2020/10/50Screenshotfrom2020-10-0720-37-26.png', 1000, 24000000, 5, 10, 10, 11, '2020-10-07 16:23:28', NULL, 0),
(81, 'Test Product', 'Description', 'public/uploads/products/2020/10/8696Screenshotfrom2020-10-0517-57-36.png', 10000, 10000000, 5, 10, 11, 11, '2020-10-08 05:30:40', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(11, 'admin', 'admin@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, 'avatar-default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_id` (`sanpham_id`);

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baiviet_danhmuc_id_foreign` (`danhmuc_id`),
  ADD KEY `baiviet_user_id_foreign` (`user_id`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietdonhang_sanpham_id_foreign` (`sanpham_id`),
  ADD KEY `chitietdonhang_donhang_id_foreign` (`donhang_id`);

--
-- Indexes for table `danhgia_sanpham`
--
ALTER TABLE `danhgia_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhgia_sanpham_sanpham_id_foreign` (`sanpham_id`),
  ADD KEY `danhgia_sanpham_khachhang_id_foreign` (`khachhang_id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc_blog`
--
ALTER TABLE `danhmuc_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_khachhang_id_foreign` (`khachhang_id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_danhmuc_id_foreign` (`danhmuc_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anhsanpham`
--
ALTER TABLE `anhsanpham`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `danhgia_sanpham`
--
ALTER TABLE `danhgia_sanpham`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `danhmuc_blog`
--
ALTER TABLE `danhmuc_blog`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD CONSTRAINT `anhsanpham_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc_blog` (`id`),
  ADD CONSTRAINT `baiviet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_donhang_id_foreign` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `chitietdonhang_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `danhgia_sanpham`
--
ALTER TABLE `danhgia_sanpham`
  ADD CONSTRAINT `danhgia_sanpham_khachhang_id_foreign` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `danhgia_sanpham_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_khachhang_id_foreign` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_danhmuc_id_foreign` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
