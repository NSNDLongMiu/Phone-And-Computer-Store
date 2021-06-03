-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 10, 2020 lúc 07:38 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsanpham`
--

CREATE TABLE `anhsanpham` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sanpham_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tieude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doantrich` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danhmuc_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `tieude`, `doantrich`, `hinhanh`, `noidung`, `danhmuc_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'Laptop technical details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 'public/uploads/products/2017/06/blog5-2-580x366.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 1, 11, NULL, NULL),
(7, 'Dairy: A free Sketch UI kit for minimal apps', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 'public/uploads/products/2017/06/blog1-2-580x366.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 4, 11, NULL, NULL),
(8, 'Best care and support at Our Stores', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 'public/uploads/products/2017/03/blog4-2-580x366.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 4, 11, NULL, NULL),
(9, 'The best products at your fingertips', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sagittis semper tortor. Quisque non felis elementum augue ullamcorper laoreet. Nam porta leo ut felis suscipit, vel semper l', 'public/uploads/products/2017/06/blog6-2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sagittis semper tortor. Quisque non felis elementum augue ullamcorper laoreet. Nam porta leo ut felis suscipit, vel semper l', 4, 11, NULL, NULL),
(10, 'Free set of smartphone clay mockups', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 'public/uploads/products/2017/06/blog3-2-580x366.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nib', 4, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `sale` smallint(6) NOT NULL,
  `sanpham_id` bigint(20) UNSIGNED NOT NULL,
  `donhang_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `soluongmua`, `sale`, `sanpham_id`, `donhang_id`, `created_at`, `updated_at`) VALUES
(10, 1, 30, 57, 19, NULL, NULL),
(11, 1, 0, 41, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia_sanpham`
--

CREATE TABLE `danhgia_sanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `noidung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danhgia` smallint(6) NOT NULL,
  `sanpham_id` bigint(20) UNSIGNED NOT NULL,
  `khachhang_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia_sanpham`
--

INSERT INTO `danhgia_sanpham` (`id`, `noidung`, `danhgia`, `sanpham_id`, `khachhang_id`, `created_at`, `updated_at`) VALUES
(1, 'product very good', 5, 50, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tendanhmuc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `mota`, `created_at`, `updated_at`) VALUES
(8, 'Cell Phones, Xiaomi', 'Cell Phones, Xiaomi ... desc', '2020-06-23 10:56:59', NULL),
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
(22, 'Samsung, Smart Watches', 'Samsung, Smart Watches ...', '2020-06-23 11:00:23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_blog`
--

CREATE TABLE `danhmuc_blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tendanhmuc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc_blog`
--

INSERT INTO `danhmuc_blog` (`id`, `tendanhmuc`, `mota`, `hinhanh`, `created_at`, `updated_at`) VALUES
(1, 'News', 'xxxxx', NULL, NULL, NULL),
(4, 'Business', 'Business ... ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tongtien` int(11) NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `khachhang_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tongtien`, `trangthai`, `khachhang_id`, `created_at`) VALUES
(19, 1000000, 0, 9, '2020-07-02 15:03:16'),
(20, 70000, 0, 10, '2020-07-02 15:24:51'),
(21, 40000, 0, 17, '2020-07-10 16:15:04'),
(22, 40000, 0, 18, '2020-07-10 16:16:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'employee-avatar.png',
  `hoten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `email`, `password`, `avatar`, `hoten`, `phone`, `diachi`, `note`, `created_at`) VALUES
(6, '', '', 'employee-avatar.png', 'khach hang x', '0943243', '', '', '2020-06-13 21:56:02'),
(7, '', '', '9851-2054-car-1.jpg', 'khach hang x', '0943243', '', '', '2020-06-13 21:56:38'),
(9, 'coayvatoi@gmail.com', '', 'employee-avatar.png', 'khach hang xx', '09543543523', '4324324', '', '2020-07-02 22:03:16'),
(10, 'taihoaapxuong4@gmail.com', '', 'employee-avatar.png', 'khach hang xxx', '0943432', '4324324', '', '2020-07-02 22:24:51'),
(17, 'khachhang@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'employee-avatar.png', 'nguyenvana', '095432543', 'dia chi xxx', '', '2020-07-10 23:15:04'),
(18, 'nguyenvanc@gmail.com', '', 'employee-avatar.png', 'nguyen van c', '094234324', 'số 3 nhà A thành phố C', '', '2020-07-10 23:16:18'),
(19, 'nguyenvand@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'employee-avatar.png', 'nguyenvand', '09432432', '', '', '2020-07-11 00:31:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(13) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `chude` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `trangthai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `hoten`, `email`, `phone`, `chude`, `noidung`, `created_at`, `trangthai`) VALUES
(6, 'xx', 'xxx', '09435433', 'xxx', 'xxxx', '2020-06-14 09:34:18', 1),
(7, 'khach hang x', 'admin@gmail.com', '0943243', 'xx', 'xx', '2020-07-03 15:33:31', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tensanpham` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `danhgia` smallint(6) NOT NULL,
  `sale` int(11) NOT NULL,
  `danhmuc_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `luotmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `mota`, `hinhanh`, `soluong`, `giaban`, `danhgia`, `sale`, `danhmuc_id`, `user_id`, `created_at`, `updated_at`, `luotmua`) VALUES
(30, 'Xiaomi Mi Mix 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tristique nibh ac ligula dapibus, quis ornare felis malesuada. Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem', 'public/uploads/products/6-540x540.jpg', 100, 550000, 5, 0, 8, 1, '2020-06-23 11:04:08', '0000-00-00 00:00:00', 0),
(31, 'OnePlus 5T', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tristique nibh ac ligula dapibus, quis ornare felis malesuada. Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem', 'public/uploads/products/5-540x540.jpg', 100, 120000, 5, 0, 8, 1, '2020-06-23 11:06:21', '0000-00-00 00:00:00', 0),
(33, 'Google Daydream VR', 'Maecenas iaculis mauris lacus, nec bibendum tellus maximus non. Proin eget dictum eros, sed viverra diam. Praesent eu rhoncus eros. In hac habitasse platea dictumst. Curabitur sagittis tristi', 'public/uploads/products/7-3.jpg', 100, 400000, 5, 0, 10, 1, '2020-06-23 11:08:37', '0000-00-00 00:00:00', 0),
(34, 'JBL Pulse 3', 'Suspendisse feugiat metus eget vestibulum aliquam. Vestibulum fringilla vitae orci at egestas. Phasellus molestie ex eget diam accumsan luctus. Sed dapibus metus at aliquam luctus. Mauris tur', 'public/uploads/products/15.jpg', 100, 40000, 5, 0, 11, 1, '2020-06-23 11:10:13', NULL, 0),
(35, 'JBL Pulse 3', 'Suspendisse feugiat metus eget vestibulum aliquam. Vestibulum fringilla vitae orci at egestas. Phasellus molestie ex eget diam accumsan luctus. Sed dapibus metus at aliquam luctus. Mauris tur', 'public/uploads/products/15.jpg', 100, 40000, 5, 0, 11, 1, '2020-06-23 11:10:25', NULL, 0),
(36, 'Misfit Shine 2', 'Vivamus sit amet mauris imperdiet, efficitur libero in, mollis magna. Quisque lacinia volutpat tortor, nec ultrices velit pulvinar sit amet. Nulla eleifend leo ut risus elementum scelerisque ', 'public/uploads/products/10.jpg', 100, 40000, 5, 0, 12, 1, '2020-06-23 11:12:16', NULL, 0),
(37, 'Misfit Shine 2', 'Vivamus sit amet mauris imperdiet, efficitur libero in, mollis magna. Quisque lacinia volutpat tortor, nec ultrices velit pulvinar sit amet. Nulla eleifend leo ut risus elementum scelerisque ', 'public/uploads/products/10.jpg', 100, 40000, 5, 0, 12, 1, '2020-06-23 11:12:32', NULL, 0),
(39, 'Sony Watch Series F', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tristique nibh ac ligula dapibus, quis ornare felis malesuada. Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem', 'public/uploads/products/2017/09/23-3.jpg', 100, 675000, 5, 20, 14, 1, '2020-06-23 11:27:33', NULL, 0),
(40, 'Nokia 6 Dual Sim Tempered Blue', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tristique nibh ac ligula dapibus, quis ornare felis malesuada. Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem', 'public/uploads/products/2017/09/34-2.jpg', 120, 90000, 5, 10, 15, 1, '2020-06-23 11:27:33', NULL, 0),
(41, 'Polaroid Cube+', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tristique nibh ac ligula dapibus, quis ornare felis malesuada. Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem', 'public/uploads/products/2015/05/9-3.jpg', 120, 70000, 5, 0, 17, 1, '2020-06-23 11:27:33', NULL, 100),
(42, 'Apple iPhone 5S 32GB GM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tristique nibh ac ligula dapibus, quis ornare felis malesuada. Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem', 'public/uploads/products/2017/09/11-2.jpg', 80, 700000, 5, 20, 16, 1, '2020-06-23 11:27:33', NULL, 0),
(44, 'Apple iPhone 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tristique nibh ac ligula dapibus, quis ornare felis malesuada. Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem', 'public/uploads/products/2017/09/20-3.jpg', 20, 400000, 2, 10, 16, 1, '2020-06-23 11:27:33', NULL, 100),
(48, '\r\nBluetooth Keyboard', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tristique nibh ac ligula dapibus, quis ornare felis malesuada. Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem', 'public/uploads/products/2017/09/34-2.jpg', 100, 40000, 5, 0, 11, 1, '2020-06-23 11:29:06', NULL, 0),
(49, 'Sony Watch Series F', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tristique nibh ac ligula dapibus, quis ornare felis malesuada.pharetra at. Integer elit nulla, aliquet eget nisi lobortis, vari', 'public/uploads/products/2017/09/23-3.jpg', 100, 675000, 5, 20, 14, 1, '2020-06-23 11:29:06', NULL, 0),
(50, 'Nokia 6 Dual Sim Tempered Blue', ' Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem pharetra at. Integer elit nulla, aliquet eget nisi lobortis, varius accumsan dui. Quisque semper dolor nibh, ac aliquet quam ', 'public/uploads/products/2017/09/34-2.jpg', 120, 90000, 5, 10, 15, 1, '2020-06-23 11:29:06', NULL, 0),
(52, 'Apple iPhone 5S 32GB GM', ' quis ornare felis malesuada. Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem pharetra at. Integer elit nulla, aliquet eget nisi lobortis, varius accumsan dui. Quisque semper', 'public/uploads/products/2017/09/11-2.jpg', 80, 700000, 5, 20, 16, 1, '2020-06-23 11:29:06', NULL, 0),
(55, 'Meizu M6 Note Blue', 'Lorem ipsum dolor sit amet,  vel euismod sem pharetra at. Integer elit nulla, aliquet eget nisi lobortis, varius accumsan dui. Quisque semper dolor nibh, ac aliquet quam vehicula a. Aenean id', 'public/uploads/products/2017/09/1-3.jpg', 25, 200000, 3, 40, 19, 1, '2020-06-23 11:29:06', NULL, 1),
(56, 'Apple Magic Mouse', 'Cras in feugiat diam. Donec euismod purus lorem, vel euismod sem pharetra at. Integer elit nulla, aliquet eget nisi lobortis, varius accumsan dui. Quisque semper dolor nibh, ac aliquet quam v', 'public/uploads/products/2017/09/35-2.jpg', 20, 200000, 5, 40, 13, 1, '2020-06-23 11:29:06', NULL, 1),
(57, 'Asus Zenbook ux360ca', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  vel euismod sem pharetra at. Integer elit nulla, aliquet eget nisi lobortis, varius accumsan dui. Quisque semper dolor nibh, ac aliqu', 'public/uploads/products//2017/09/2-3.jpg', 40, 1000000, 5, 30, 21, 1, '2020-06-23 11:29:06', NULL, 0),
(58, 'Samsung Gear Blue', 'Samsung Gear Blue Samsung Gear Blue Samsung Gear Blue', 'public/uploads/products/2017/05/4.jpg', 100, 40000, 5, 0, 22, 1, '2020-06-23 11:30:31', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(11, 'admin', 'admin@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, 'avatar-default.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_id` (`sanpham_id`);

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baiviet_danhmuc_id_foreign` (`danhmuc_id`),
  ADD KEY `baiviet_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietdonhang_sanpham_id_foreign` (`sanpham_id`),
  ADD KEY `chitietdonhang_donhang_id_foreign` (`donhang_id`);

--
-- Chỉ mục cho bảng `danhgia_sanpham`
--
ALTER TABLE `danhgia_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhgia_sanpham_sanpham_id_foreign` (`sanpham_id`),
  ADD KEY `danhgia_sanpham_khachhang_id_foreign` (`khachhang_id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc_blog`
--
ALTER TABLE `danhmuc_blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_khachhang_id_foreign` (`khachhang_id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_danhmuc_id_foreign` (`danhmuc_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `danhgia_sanpham`
--
ALTER TABLE `danhgia_sanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `danhmuc_blog`
--
ALTER TABLE `danhmuc_blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD CONSTRAINT `anhsanpham_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc_blog` (`id`),
  ADD CONSTRAINT `baiviet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_donhang_id_foreign` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `chitietdonhang_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `danhgia_sanpham`
--
ALTER TABLE `danhgia_sanpham`
  ADD CONSTRAINT `danhgia_sanpham_khachhang_id_foreign` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `danhgia_sanpham_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_khachhang_id_foreign` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_danhmuc_id_foreign` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
